unint64_t sub_21B2A14AC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_21B2A1544(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_21B2A15B8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_21B2A1544(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_21B2E1AD0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21B2A15B8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_21B34B6F4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

void *sub_21B2A16DC(uint64_t a1)
{
  v43 = sub_21B34A764();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21B34AD44();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v39[1] = v1;
  v54 = MEMORY[0x277D84F90];
  sub_21B233014(0, v7, 0);
  v8 = v54;
  v9 = a1 + 56;
  result = sub_21B34B574();
  v11 = result;
  v12 = 0;
  v46 = a1;
  v47 = (v5 + 8);
  v40 = a1 + 64;
  v41 = (v3 + 8);
  v44 = v7;
  v45 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v16 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_36;
    }

    v53 = v8;
    v51 = *(a1 + 36);

    v17 = v48;
    sub_21B34AD34();
    v18 = sub_21B34AC94();
    v20 = v19;
    result = (*v47)(v17, v49);
    if (v20 >> 60 == 15)
    {
      goto LABEL_43;
    }

    v21 = v20 >> 62;
    v50 = v12;
    v52 = 1 << v11;
    if ((v20 >> 62) > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_20;
      }

      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      v22 = v23 - v24;
      if (__OFSUB__(v23, v24))
      {
        goto LABEL_42;
      }

      if (!v22)
      {
        goto LABEL_20;
      }
    }

    else if (v21)
    {
      v27 = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_41;
      }

      v22 = v27;
      if (!v27)
      {
LABEL_20:
        sub_21B260C58(v18, v20);
        v25 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }
    }

    else
    {
      v22 = BYTE6(v20);
      if (!BYTE6(v20))
      {
        goto LABEL_20;
      }
    }

    if (v22 < 1)
    {
      v25 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3F8, &qword_21B351CF8);
      v25 = swift_allocObject();
      v26 = _swift_stdlib_malloc_size(v25);
      v25[2] = v22;
      v25[3] = 2 * v26 - 64;
    }

    v28 = v42;
    v29 = sub_21B34A6F4();
    sub_21B260C58(v18, v20);
    result = (*v41)(v28, v43);
    if (v29 != v22)
    {
      goto LABEL_40;
    }

LABEL_23:

    v8 = v53;
    v54 = v53;
    v31 = *(v53 + 16);
    v30 = *(v53 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_21B233014((v30 > 1), v31 + 1, 1);
      v8 = v54;
    }

    *(v8 + 16) = v31 + 1;
    *(v8 + 8 * v31 + 32) = v25;
    a1 = v46;
    v13 = 1 << *(v46 + 32);
    if (v11 >= v13)
    {
      goto LABEL_37;
    }

    v9 = v45;
    v32 = *(v45 + 8 * v16);
    if ((v32 & v52) == 0)
    {
      goto LABEL_38;
    }

    if (v51 != *(v46 + 36))
    {
      goto LABEL_39;
    }

    v33 = v32 & (-2 << (v11 & 0x3F));
    if (v33)
    {
      v13 = __clz(__rbit64(v33)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v14 = v44;
      v15 = v50;
    }

    else
    {
      v34 = v16 << 6;
      v35 = v16 + 1;
      v36 = (v40 + 8 * v16);
      v14 = v44;
      v15 = v50;
      while (v35 < (v13 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_21B2A2B24(v11, v51, 0);
          v13 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_21B2A2B24(v11, v51, 0);
    }

LABEL_4:
    v12 = v15 + 1;
    v11 = v13;
    if (v12 == v14)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17 = *(a7 + 16);
  v76 = *a7;
  v77 = v17;
  v78[0] = *(a7 + 32);
  *(v78 + 13) = *(a7 + 45);
  v18 = sub_21B34A6E4();
  if (v8)
  {
    v20 = sub_21B34A6D4();
    (*(*(v20 - 8) + 8))(a1, v20);
    sub_21B233788(&v76);
  }

  else
  {
    v47 = a2;
    v79 = a6;
    v43 = a5;
    v46 = a1;
    v22 = *(a7 + 16);
    v67[0] = *a7;
    v67[1] = v22;
    *v68 = *(a7 + 32);
    *&v68[13] = *(a7 + 45);
    v23 = v18;
    v24 = v19;
    sub_21B260DC0(v18, v19);
    sub_21B232090(&v76, &v60);
    sub_21B2320EC(v23, v24, v67, &v69);
    v45 = a4;
    v64 = v73;
    v65 = v74;
    v66 = v75;
    v60 = v69;
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v57 = v73;
    v58 = v74;
    v59 = v75;
    v53 = v69;
    v54 = v70;
    v55 = v71;
    v56 = v72;
    v25 = sub_21B233444(&v53, v76);
    v26 = v79;
    v27 = sub_21B231C40(v25, v47);

    v48 = *(v27 + 2);
    if (v48)
    {
      v28 = v27;
      v42 = v24;
      v29 = 0;
      v30 = 0;
      v31 = a8;
      while (v30 < *(v28 + 2))
      {
        v27 = v28;
        v34 = *&v28[v29 + 32];
        v33 = *&v28[v29 + 40];
        v79 = *&v28[v29 + 48];
        v35 = *(v26 + 16);

        if (v35)
        {
          v36 = sub_21B24B534(v34, v33);
          if (v37)
          {
            v44 = *(*(v26 + 56) + v36);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_21B23A36C(v27);
              v27 = result;
            }

            if (v30 >= *(v27 + 2))
            {
              goto LABEL_17;
            }

            v38 = &v27[v29];
            *(v38 + 4) = v34;
            *(v38 + 5) = v33;
            *(v38 + 6) = v79;
            v38[56] = v44;
          }
        }

        ++v30;

        v29 += 32;
        v32 = v45;
        v28 = v27;
        if (v48 == v30)
        {
          v39 = a3;

          v24 = v42;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    else
    {

      v31 = a8;
      v32 = v45;
      v39 = a3;
LABEL_15:
      v57 = v64;
      v58 = v65;
      v59 = v66;
      v53 = v60;
      v54 = v61;
      v55 = v62;
      v56 = v63;
      v49[0] = v76;
      v49[1] = v77;
      v50[0] = v78[0];
      *(v50 + 13) = *(v78 + 13);
      sub_21B22F2CC(&v53, v39, v32, v43 & 1, v27, v49, &v51);
      v40 = sub_21B34A6D4();
      (*(*(v40 - 8) + 8))(v46, v40);
      sub_21B234324(v23, v24);
      sub_21B233788(&v76);
      sub_21B299E64(&v60);

      v41 = v52;
      *v31 = v51;
      *(v31 + 16) = v41;
    }
  }

  return result;
}

uint64_t DataFrame.init<each A>(contentsOfCSVFile:columns:rows:options:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v10 = a7;
  v49 = a5;
  v51 = a4;
  v50 = a3;
  v12 = a2;
  v13 = a1;
  v48 = a9;
  v52 = a8;
  if (a7 == 1)
  {
    TupleTypeMetadata = type metadata accessor for ColumnID(0, *(a8 & 0xFFFFFFFFFFFFFFFELL), a3, a4);
    v15 = TupleTypeMetadata;
  }

  else
  {
    v60 = a2;
    MEMORY[0x28223BE20](a1);
    if (v10)
    {
      v20 = (v52 & 0xFFFFFFFFFFFFFFFELL);
      v21 = (v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = v10;
      do
      {
        v23 = *v20++;
        *v21++ = type metadata accessor for ColumnID(255, v23, v17, v18);
        --v22;
      }

      while (v22);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v15 = TupleTypeMetadata;
    v13 = a1;
    v12 = v60;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a6[1];
  v57 = *a6;
  v58 = v26;
  v59[0] = a6[2];
  *(v59 + 13) = *(a6 + 45);
  v27 = sub_21B34A6E4();
  if (v9)
  {
    v29 = sub_21B34A6D4();
    (*(*(v29 - 8) + 8))(v13, v29);
    for (result = sub_21B233788(&v57); v10; --v10)
    {
    }
  }

  else
  {
    v31 = v27;
    v32 = v28;
    v46[1] = v46;
    v47 = v13;
    v60 = v12;
    v46[0] = v46;
    MEMORY[0x28223BE20](v27);
    v34 = (v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v10)
    {
      v35 = (v15 + 32);
      v36 = v60;
      v37 = (v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      v38 = v10;
      do
      {
        if (v10 == 1)
        {
          v39 = 0;
        }

        else
        {
          v39 = *v35;
        }

        v40 = &v25[v39];
        v41 = *v36++;
        v42 = v41[1];
        *v40 = *v41;
        *(v40 + 1) = v42;
        *v37++ = v40;

        v35 += 4;
        --v38;
      }

      while (v38);
    }

    v53[0] = v57;
    v53[1] = v58;
    v54[0] = v59[0];
    *(v54 + 13) = *(v59 + 13);
    DataFrame.init<each A>(csvData:columns:rows:options:)(v31, v32, v34, v50, v51, v49 & 1, v53, v10, &v55);
    v43 = sub_21B34A6D4();
    result = (*(*(v43 - 8) + 8))(v47, v43);
    v44 = v56;
    v45 = v48;
    *v48 = v55;
    for (*(v45 + 2) = v44; v10; --v10)
    {
    }
  }

  return result;
}

uint64_t DataFrame.init<each A>(csvData:columns:rows:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v80 = a3;
  v17 = *(a7 + 16);
  v77 = *a7;
  v78 = v17;
  v19 = *a7;
  v18 = *(a7 + 16);
  v79[0] = *(a7 + 32);
  *(v79 + 13) = *(a7 + 45);
  v68[0] = v19;
  v68[1] = v18;
  *v69 = *(a7 + 32);
  *&v69[13] = *(a7 + 45);
  sub_21B260DC0(a1, a2);
  sub_21B232090(&v77, &v61);
  sub_21B2320EC(a1, a2, v68, &v70);
  if (v9)
  {
    sub_21B234324(a1, a2);
    result = sub_21B233788(&v77);
    if (!a8)
    {
      return result;
    }

    goto LABEL_34;
  }

  v50 = a6;
  v65 = v74;
  v66 = v75;
  v67 = v76;
  v61 = v70;
  v62 = v71;
  v63 = v72;
  v64 = v73;
  v58 = v74;
  v59 = v75;
  v60 = v76;
  v54 = v70;
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v48 = a2;
  v49 = sub_21B233444(&v54, v77);
  v46 = a5;
  v47 = a1;
  v44 = a9;
  v45 = a4;
  v21 = MEMORY[0x277D84F90];
  if (a8)
  {
    v22 = v80;
    v23 = a8;
    do
    {
      v24 = **v22;
      v25 = (*v22)[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_21B231F84(0, *(v21 + 2) + 1, 1, v21);
      }

      v27 = *(v21 + 2);
      v26 = *(v21 + 3);
      if (v27 >= v26 >> 1)
      {
        v21 = sub_21B231F84((v26 > 1), v27 + 1, 1, v21);
      }

      *(v21 + 2) = v27 + 1;
      v28 = &v21[16 * v27];
      *(v28 + 4) = v24;
      *(v28 + 5) = v25;
      ++v22;
      --v23;
    }

    while (v23);
  }

  v29 = sub_21B231C40(v49, v21);

  if (a8)
  {
    v30 = 0;
    v31 = (v21 + 40);
    v32 = 56;
    while (1)
    {
      nullsub_14();
      v34 = v33;
      if (swift_dynamicCastMetatype())
      {
        v34 = 0;
      }

      else if (swift_dynamicCastMetatype())
      {
        v34 = 1;
      }

      else if (swift_dynamicCastMetatype())
      {
        v34 = 2;
      }

      else if (swift_dynamicCastMetatype())
      {
        v34 = 3;
      }

      else
      {
        sub_21B34A834();
        if (swift_dynamicCastMetatype())
        {
          v34 = 4;
        }

        else if (swift_dynamicCastMetatype())
        {
          v34 = 5;
        }

        else
        {
          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_41;
          }

          v34 = 6;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_21B23A36C(v29);
      }

      v35 = v50;
      if (v30 >= *(v29 + 2))
      {
        break;
      }

      v29[v32] = v34;
      ++v30;
      v31 += 2;
      v32 += 32;
      if (a8 == v30)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_41:

    sub_21B299E64(&v61);
    sub_21B233788(&v77);

    if (v30 >= *(v21 + 2))
    {
      __break(1u);
      return result;
    }

    v38 = *(v31 - 1);
    v39 = *v31;

    *&v54 = v34;
    swift_getMetatypeMetadata();
    v40 = sub_21B34AD54();
    v42 = v41;
    sub_21B27A934();
    swift_allocError();
    *v43 = v30;
    *(v43 + 8) = v38;
    *(v43 + 16) = v39;
    *(v43 + 24) = v40;
    *(v43 + 32) = v42;
    *(v43 + 40) = 7;
    swift_willThrow();
    sub_21B234324(v47, v48);

    do
    {
LABEL_34:

      --a8;
    }

    while (a8);
    return result;
  }

  v35 = v50;
LABEL_33:
  v58 = v65;
  v59 = v66;
  v60 = v67;
  v54 = v61;
  v55 = v62;
  v56 = v63;
  v57 = v64;
  v51[0] = v77;
  v51[1] = v78;
  *v52 = v79[0];
  *&v52[13] = *(v79 + 13);
  sub_21B22F2CC(&v54, v45, v46, v35 & 1, v29, v51, v53);

  sub_21B234324(v47, v48);
  sub_21B233788(&v77);
  sub_21B299E64(&v61);

  v36 = v53[1];
  v37 = v53[2];
  *v44 = v53[0];
  v44[1] = v36;
  v44[2] = v37;
  if (a8)
  {

    do
    {

      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 248, 7);
}

uint64_t sub_21B2A2B24(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21B2A2B44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21B2A2B8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_21B2A2C18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21B2A2C48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21B2A2C74@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21B2A2D4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21B2A2D7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21B2A327C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21B2A2DBC()
{
  sub_21B34BBC4();
  sub_21B34BBF4();
  return sub_21B34BC24();
}

uint64_t sub_21B2A2E30(uint64_t a1)
{
  sub_21B34BBC4();
  sub_21B34BBF4();
  return sub_21B34BC24();
}

uint64_t sub_21B2A2E74@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B2A2EAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B2A2EAC(uint64_t result)
{
  if (result >= 0xAu)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

uint64_t sub_21B2A2EC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 41))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 0xA;
  v5 = v3 - 10;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21B2A2F04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 9;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlockInfo.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BlockInfo.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B2A30C8()
{
  result = qword_27CD7EBE8;
  if (!qword_27CD7EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EBE8);
  }

  return result;
}

unint64_t sub_21B2A3120()
{
  result = qword_27CD7EBF0;
  if (!qword_27CD7EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EBF0);
  }

  return result;
}

unint64_t sub_21B2A3178()
{
  result = qword_27CD7EBF8;
  if (!qword_27CD7EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EBF8);
  }

  return result;
}

unint64_t sub_21B2A31D0()
{
  result = qword_27CD7EC00;
  if (!qword_27CD7EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EC00);
  }

  return result;
}

unint64_t sub_21B2A3228()
{
  result = qword_27CD7EC08;
  if (!qword_27CD7EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EC08);
  }

  return result;
}

uint64_t sub_21B2A327C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_21B2A32B8()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  sub_21B233A74(*v0 + 32, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(*(v2 + 8) + 48))(v1);
  result = sub_21B233960(v5);
  if ((v3 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t DataFrame.base.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

double sub_21B2A33AC@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  if (a1 == a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * (a1 == a2);
  v25 = *v3;
  v26 = *(v3 + 2);
  v23 = *(v3 + 24);
  v24 = *(v3 + 40);
  v8 = v24;
  v9 = v23;
  sub_21B2A62E0(&v25, &v20);
  sub_21B2A62E0(&v25, &v20);
  sub_21B2A633C(&v23, &v20);
  sub_21B2A62E0(&v25, &v20);
  sub_21B2A633C(&v23, &v20);
  sub_21B254074(v9, *(&v9 + 1), v8);

  sub_21B23A9F4(v9, *(&v9 + 1), v8);
  v20 = v5;
  v21 = v6;
  v22 = v7;
  sub_21B2A55EC(v9, *(&v9 + 1), v8);
  sub_21B23A9F4(v9, *(&v9 + 1), v8);
  v10 = v22;
  if (v22 != 1)
  {
    goto LABEL_10;
  }

  v11 = *(v20 + 2);
  sub_21B23A9F4(v20, v21, 1);
  if (v11)
  {
    do
    {
      sub_21B34B824();
      __break(1u);
LABEL_10:
      ;
    }

    while (v10 != 2);
  }

  v12 = v23;
  v13 = v24;
  sub_21B254074(v23, *(&v23 + 1), v24);

  sub_21B23A9F4(v12, *(&v12 + 1), v13);
  v14 = sub_21B248CCC(v5, v6, v7, v12, *(&v12 + 1), v13);
  v16 = v15;
  v18 = v17;
  sub_21B23A9F4(v5, v6, v7);
  result = *&v25;
  *a3 = v25;
  *(a3 + 16) = v26;
  *(a3 + 24) = v14;
  *(a3 + 32) = v16;
  *(a3 + 40) = v18;
  return result;
}

uint64_t sub_21B2A35DC@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a1 == a2;
  if (a1 == a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  if (a1 == a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  v35 = v11;
  v36 = v12;
  v34 = *(a3 + 16);
  if (!v34)
  {

LABEL_12:
    v17 = 0;
    v19 = 2;
    goto LABEL_13;
  }

  sub_21B233A74(a3 + 32, &v37);
  v13 = v40;
  v14 = v41;
  __swift_project_boxed_opaque_existential_1(&v37, v40);
  v15 = *(v14 + 8);
  v16 = *(v15 + 48);

  v17 = v16(v13, v15);
  result = sub_21B233960(&v37);
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = v35;
  if (!v17)
  {
    goto LABEL_12;
  }

  v19 = 0;
LABEL_13:
  v20 = 2 * v10;
  sub_21B254074(0, v17, v19);

  sub_21B23A9F4(0, v17, v19);
  v37 = v11;
  v38 = v36;
  v39 = 2 * v10;
  sub_21B2A55EC(0, v17, v19);
  sub_21B23A9F4(0, v17, v19);
  v21 = v39;
  if (v39 != 1)
  {
    goto LABEL_16;
  }

  v22 = *(v37 + 2);
  sub_21B23A9F4(v37, v38, 1);
  if (v22)
  {
    do
    {
      sub_21B34B824();
      __break(1u);
LABEL_16:
      ;
    }

    while (v21 != 2);
  }

  if (!v34)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    goto LABEL_22;
  }

  sub_21B233A74(a3 + 32, &v37);
  v24 = v40;
  v23 = v41;
  __swift_project_boxed_opaque_existential_1(&v37, v40);
  v25 = *(v23 + 8);
  v26 = *(v25 + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v27 = v26(v24, v25);
  result = sub_21B233960(&v37);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v11 = v35;
    if (v27)
    {
      v28 = 0;
LABEL_23:
      sub_21B254074(0, v27, v28);

      sub_21B23A9F4(0, v27, v28);
      v29 = sub_21B248CCC(v11, v36, v20, 0, v27, v28);
      v31 = v30;
      v33 = v32;
      result = sub_21B23A9F4(v11, v36, v20);
      *a6 = a3;
      *(a6 + 8) = a4;
      *(a6 + 16) = a5;
      *(a6 + 24) = v29;
      *(a6 + 32) = v31;
      *(a6 + 40) = v33;
      return result;
    }

LABEL_22:
    v27 = 0;
    v28 = 2;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

double DataFrameProtocol.subscript.getter@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 == a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (a1 == a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = 2 * (a1 == a2);
  v25 = *(a4 + 32);
  v25(&v30, a3, a4);
  v9 = v31;
  v10 = v32;
  v11 = v33;
  sub_21B254074(v31, v32, v33);
  v12 = v6;

  sub_21B23A9F4(v9, v10, v11);
  *&v28 = v6;
  *(&v28 + 1) = v7;
  LOBYTE(v29) = v8;
  sub_21B2A55EC(v9, v10, v11);
  sub_21B23A9F4(v9, v10, v11);
  v13 = v8;
  if (v8 != 1)
  {
    goto LABEL_10;
  }

  v14 = *(v28 + 16);
  sub_21B23A9F4(v28, *(&v28 + 1), 1);
  if (v14)
  {
    do
    {
      sub_21B34B824();
      __break(1u);
LABEL_10:
      ;
    }

    while (v13 != 2);
  }

  (*(a4 + 24))(&v28, a3, a4);
  v15 = v29;
  v25(&v30, a3, a4);
  v16 = v31;
  v17 = v32;
  v18 = v33;
  sub_21B254074(v31, v32, v33);

  sub_21B23A9F4(v16, v17, v18);
  v19 = sub_21B248CCC(v12, v7, v8, v16, v17, v18);
  v21 = v20;
  v23 = v22;
  sub_21B23A9F4(v12, v7, v8);
  result = *&v28;
  *a5 = v28;
  *(a5 + 16) = v15;
  *(a5 + 24) = v19;
  *(a5 + 32) = v21;
  *(a5 + 40) = v23;
  return result;
}

uint64_t sub_21B2A3B5C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return sub_21B2A3B90(&v5, a2, a3);
}

uint64_t sub_21B2A3B90(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 == a3;
  v63 = a2;
  if (a2 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (a2 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (*(*v3 + 16))
  {
    v59 = a2 == a3;
    sub_21B233A74(*v3 + 32, &v65);
    v8 = v68;
    v7 = v69;
    __swift_project_boxed_opaque_existential_1(&v65, v68);
    v9 = *(v7 + 8);
    v10 = *(v9 + 48);

    v11 = v10(v8, v9);
    sub_21B233960(&v65);
    if (v11 < 0)
    {
      goto LABEL_51;
    }

    v4 = v59;
    if (v11)
    {
      v12 = 0;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = 0;
  v12 = 2;
LABEL_13:
  sub_21B254074(0, v11, v12);

  sub_21B23A9F4(0, v11, v12);
  v65 = v5;
  v66 = v6;
  LOBYTE(v67) = 2 * v4;
  sub_21B2A55EC(0, v11, v12);
  sub_21B23A9F4(0, v11, v12);
  v13 = v66;
  v60 = v65;
  v14 = v67;
  if (v67 == 1)
  {
    if (*(v65 + 16))
    {
      goto LABEL_54;
    }
  }

  else if (v67 != 2)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(a3, v63))
  {
    goto LABEL_52;
  }

  v73 = *a1;
  v74 = *(a1 + 2);
  v71 = *(a1 + 24);
  v15 = *(a1 + 40);
  v72 = v15;
  v16 = v71;
  v17 = sub_21B2FB1D4(v71, *(&v71 + 1), v15);
  sub_21B2A62E0(&v73, &v65);
  sub_21B2A633C(&v71, &v65);

  sub_21B23A9F4(v16, *(&v16 + 1), v15);
  if (a3 - v63 == v17)
  {
    sub_21B23A9F4(v60, v13, v14);
    v18 = v71;
    v19 = v72;
    v54 = *(&v71 + 1);
    v22 = v71;
    v20 = v22 >> 64;
    v21 = v22;
    if (v72)
    {
      if (v72 == 1 && (v23 = *(v71 + 16)) != 0)
      {
        v21 = *(v71 + 32);
        v20 = *(v71 + 16 + 16 * v23 + 8);
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }
    }

    v52 = *(&v73 + 1);
    v53 = v73;
    v51 = v74;
    sub_21B2A62E0(&v73, &v65);
    sub_21B2A633C(&v71, &v65);
    if (v63 == a3)
    {
LABEL_25:
      sub_21B2A63AC(a1);

      return sub_21B23A9F4(v18, v54, v19);
    }

    if (a3 < v63)
    {
      goto LABEL_53;
    }

    v47 = v18;
    v48 = v20;
    v55 = v19;
    while (1)
    {
      if (v63 == a3)
      {
        goto LABEL_48;
      }

      if (v21 == v20)
      {
        goto LABEL_25;
      }

      v65 = v53;
      v66 = v52;
      v67 = v51;
      v68 = v18;
      v69 = v54;
      v70 = v19;
      v25 = DataFrame.Rows.index(after:)(v21);
      v26 = v73;
      v58 = v25;
      v27 = v71;
      v28 = v72;
      sub_21B2A62E0(&v73, &v65);
      sub_21B2A633C(&v71, &v65);
      sub_21B23A9F4(v27, *(&v27 + 1), v28);
      v30 = *v61;
      v29 = v61[1];
      v57 = v61[2];
      if (*(*v61 + 2))
      {
        sub_21B233A74((v30 + 32), &v65);
        v32 = v68;
        v31 = v69;
        __swift_project_boxed_opaque_existential_1(&v65, v68);
        v33 = *(v31 + 8);
        v34 = *(v33 + 48);

        v35 = v34(v32, v33);
        sub_21B233960(&v65);
        if (v35 < 0)
        {
          goto LABEL_49;
        }

        v19 = v55;
        if (v35)
        {
          v36 = 0;
          goto LABEL_38;
        }
      }

      else
      {
      }

      v35 = 0;
      v36 = 2;
LABEL_38:
      v37 = *(v26 + 16);
      if (v37 != *(v30 + 2))
      {
        break;
      }

      v56 = v36;
      if (v37)
      {
        v50 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_21B23A2F4(v30);
        }

        if (v37 <= *(v26 + 16))
        {
          v49 = v29;
          v38 = 0;
          v39 = 0;
          while (1)
          {
            sub_21B233A74(v26 + v38 + 32, &v65);
            if (v39 >= *(v30 + 2))
            {
              break;
            }

            ++v39;
            v40 = v68;
            v41 = v69;
            v42 = __swift_project_boxed_opaque_existential_1(&v65, v68);
            v64[3] = v40;
            v64[4] = *(v41 + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
            (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v42, v40);
            v44 = *&v30[v38 + 56];
            v45 = *&v30[v38 + 64];
            __swift_mutable_project_boxed_opaque_existential_1(&v30[v38 + 32], v44);
            (*(v45 + 72))(v63, v21, v64, v44, v45);
            __swift_destroy_boxed_opaque_existential_1Tm(v64);
            sub_21B233960(&v65);
            v38 += 40;
            if (v37 == v39)
            {

              v18 = v47;
              v19 = v55;
              v29 = v49;
              v35 = v50;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        break;
      }

LABEL_29:

      sub_21B23A9F4(0, v35, v56);
      *v61 = v30;
      v61[1] = v29;
      v21 = v58;
      v61[2] = v57;
      ++v63;
      v20 = v48;
      if (v63 == a3)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_54:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2A4284(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v59 = v5;
  v61 = a2;
  if (a2 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  v7 = 2 * (a2 == a3);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);

  sub_21B254074(v8, v9, v10);
  sub_21B254074(v8, v9, v10);

  sub_21B23A9F4(v8, v9, v10);
  v63 = v59;
  v64 = v6;
  LOBYTE(v65) = v7;
  sub_21B2A55EC(v8, v9, v10);
  v44 = v9;
  v45 = v8;
  v60 = v10;
  sub_21B23A9F4(v8, v9, v10);
  v11 = v63;
  v58 = v6;
  if (v7 == 1)
  {
    if (*(v63 + 16))
    {
      goto LABEL_40;
    }
  }

  else if (v7 != 2)
  {
    goto LABEL_40;
  }

  if (__OFSUB__(a3, v61))
  {
    goto LABEL_38;
  }

  v71 = *a1;
  v72 = *(a1 + 2);
  v69 = *(a1 + 24);
  v43 = a1;
  v12 = *(a1 + 40);
  v70 = v12;
  v13 = v69;
  v14 = sub_21B2FB1D4(v69, *(&v69 + 1), v12);
  sub_21B2A62E0(&v71, &v63);
  sub_21B2A633C(&v69, &v63);

  sub_21B23A9F4(v13, *(&v13 + 1), v12);
  if (a3 - v61 == v14)
  {
    sub_21B23A9F4(v11, v58, v7);
    v15 = v69;
    v16 = v70;
    v56 = *(&v69 + 1);
    v19 = v69;
    v17 = v19 >> 64;
    v18 = v19;
    v20 = v46;
    v21 = a3;
    v23 = v9;
    v22 = v45;
    if (v70)
    {
      if (v70 == 1 && (v24 = *(v69 + 16)) != 0)
      {
        v18 = *(v69 + 32);
        v17 = *(v69 + 16 + 16 * v24 + 8);
      }

      else
      {
        v18 = 0;
        v17 = 0;
      }
    }

    v54 = *(&v71 + 1);
    v55 = v71;
    v53 = v72;
    sub_21B2A62E0(&v71, &v63);
    sub_21B2A633C(&v69, &v63);
    if (v61 == a3)
    {
LABEL_19:
      sub_21B2A63AC(v43);

      return sub_21B23A9F4(v15, v56, v16);
    }

    if (a3 < v61)
    {
      goto LABEL_39;
    }

    v50 = v15;
    v49 = v16;
    v48 = v17;
    while (1)
    {
      if (v61 == v21)
      {
        goto LABEL_36;
      }

      if (v18 == v17)
      {
        goto LABEL_19;
      }

      v63 = v55;
      v64 = v54;
      v65 = v53;
      v66 = v15;
      v67 = v56;
      v68 = v16;
      v26 = DataFrame.Rows.index(after:)(v18);
      v27 = v71;
      v57 = v26;
      v29 = *(&v69 + 1);
      v28 = v69;
      v30 = v70;
      sub_21B2A62E0(&v71, &v63);
      sub_21B2A633C(&v69, &v63);
      sub_21B23A9F4(v28, v29, v30);
      v31 = *v20;
      v32 = *(v27 + 16);
      if (v32 != *(*v20 + 2))
      {
        goto LABEL_40;
      }

      v33 = v20[1];
      v34 = v20[2];
      sub_21B254074(v22, v23, v60);

      if (v32)
      {
        break;
      }

LABEL_23:
      v63 = v31;
      v64 = v33;
      v65 = v34;
      v66 = v22;
      v67 = v23;
      v68 = v60;
      DataFrame.Slice.rows.setter(&v63);
      v18 = v57;
      ++v61;
      v15 = v50;
      v16 = v49;
      v17 = v48;
      if (v61 == v21)
      {
        goto LABEL_19;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_21B23A2F4(v31);
    }

    if (v32 <= *(v27 + 16))
    {
      v51 = v34;
      v52 = v33;
      v35 = 0;
      v36 = 0;
      while (1)
      {
        sub_21B233A74(v27 + v35 + 32, &v63);
        if (v36 >= *(v31 + 2))
        {
          break;
        }

        ++v36;
        v37 = v66;
        v38 = v67;
        v39 = __swift_project_boxed_opaque_existential_1(&v63, v66);
        v62[3] = v37;
        v62[4] = *(v38 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
        (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v39, v37);
        v41 = *&v31[v35 + 56];
        v42 = *&v31[v35 + 64];
        __swift_mutable_project_boxed_opaque_existential_1(&v31[v35 + 32], v41);
        (*(v42 + 72))(v61, v18, v62, v41, v42);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        sub_21B233960(&v63);
        v35 += 40;
        if (v32 == v36)
        {

          v20 = v46;
          v21 = a3;
          v23 = v44;
          v22 = v45;
          v34 = v51;
          v33 = v52;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

LABEL_40:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrameProtocol.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v24 = a1[1];
  v25 = *a1;
  v7 = a1[3];
  v23 = a1[2];
  v8 = a1[4];
  v26 = *(a1 + 40);
  if (a2 == a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  if (a2 == a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v27 = 2 * (a2 == a3);
  (*(a5 + 32))(&v32, a4, a5);
  v11 = v35;
  v12 = v36;
  v13 = v37;
  sub_21B254074(v35, v36, v37);

  sub_21B23A9F4(v11, v12, v13);
  v29 = v9;
  v30 = v10;
  v31 = v27;
  sub_21B2A55EC(v11, v12, v13);
  sub_21B23A9F4(v11, v12, v13);
  if (v27 == 1)
  {
    if (*(v29 + 16))
    {
      goto LABEL_28;
    }
  }

  else if (v27 != 2)
  {
    goto LABEL_28;
  }

  if (__OFSUB__(a3, v6))
  {
    goto LABEL_26;
  }

  v14 = sub_21B2FB1D4(v7, v8, v26);

  sub_21B254074(v7, v8, v26);

  sub_21B23A9F4(v7, v8, v26);
  if (a3 - v6 == v14)
  {
    sub_21B23A9F4(v29, v30, v27);
    v15 = v7;
    v16 = v8;
    if (v26)
    {
      if (v26 == 1 && (v17 = *(v7 + 16)) != 0)
      {
        v15 = *(v7 + 32);
        v16 = *(v7 + 16 + 16 * v17 + 8);
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }
    }

    sub_21B254074(v7, v8, v26);
    if (v6 == a3)
    {
LABEL_24:

      sub_21B23A9F4(v7, v8, v26);

      return sub_21B23A9F4(v7, v8, v26);
    }

    if (a3 < v6)
    {
      goto LABEL_27;
    }

    v20 = v16;
    while (a3 != v6)
    {
      if (v15 != v16)
      {
        v32 = v25;
        v33 = v24;
        v34 = v23;
        v35 = v7;
        v36 = v8;
        v37 = v26;
        v28 = DataFrame.Rows.index(after:)(v15);

        sub_21B254074(v7, v8, v26);
        sub_21B23A9F4(v7, v8, v26);
        v32 = v25;
        v33 = v24;
        v34 = v23;
        v35 = v15;
        v18 = (*(a5 + 48))(&v29, a4);
        DataFrame.Rows.subscript.setter(&v32, v6);
        v16 = v20;
        v18(&v29, 0);
        ++v6;
        v15 = v28;
        if (a3 != v6)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

LABEL_28:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

void (*sub_21B2A4CB8(void *a1, char *a2, char *a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xD8uLL);
  }

  *a1 = v7;
  v7[25] = a3;
  v7[26] = v3;
  v7[24] = a2;
  sub_21B2A35DC(a2, a3, *v3, v3[1], v3[2], (v7 + 12));
  return sub_21B2A4D54;
}

void sub_21B2A4D54(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 200);
    v4 = *(v2 + 192);
    v5 = *(v2 + 112);
    *v2 = *(v2 + 96);
    *(v2 + 16) = v5;
    *(v2 + 25) = *(v2 + 121);
    sub_21B2A6284(v2, v2 + 144);
    sub_21B2A3B90(v2, v4, v3);
    v6 = *(v2 + 120);
    v7 = *(v2 + 128);
    v8 = *(v2 + 136);

    sub_21B23A9F4(v6, v7, v8);
  }

  else
  {
    v9 = *(v2 + 200);
    v10 = *(v2 + 192);
    v11 = *(v2 + 112);
    *(v2 + 48) = *(v2 + 96);
    *(v2 + 64) = v11;
    *(v2 + 73) = *(v2 + 121);
    sub_21B2A3B90((v2 + 48), v10, v9);
  }

  free(v2);
}

void (*DataFrameProtocol.subscript.modify(void *a1, char *a2, char *a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x58uLL);
  }

  *a1 = v11;
  v11[9] = a5;
  v11[10] = v5;
  v11[7] = a3;
  v11[8] = a4;
  v11[6] = a2;
  DataFrameProtocol.subscript.getter(a2, a3, a4, a5, v11);
  return sub_21B2A4ED8;
}

void sub_21B2A4ED8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = *(*a1 + 40);
  v8 = (*a1)[9];
  v10 = (*a1)[7];
  v9 = (*a1)[8];
  v11 = (*a1)[6];
  v16[0] = **a1;
  v16[1] = v3;
  v16[2] = v5;
  v16[3] = v4;
  v16[4] = v6;
  v17 = v7;
  if (a2)
  {
    v12 = v8;

    sub_21B254074(v4, v6, v7);
    DataFrameProtocol.subscript.setter(v16, v11, v10, v9, v12);
    v13 = v2[3];
    v14 = v2[4];
    v15 = *(v2 + 40);

    sub_21B23A9F4(v13, v14, v15);
  }

  else
  {
    DataFrameProtocol.subscript.setter(v16, v11, v10, v9, v8);
  }

  free(v2);
}

uint64_t sub_21B2A5044(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return sub_21B2A4284(&v5, a2, a3);
}

void (*sub_21B2A5078(uint64_t *a1, char *a2, char *a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x108uLL);
  }

  *a1 = v7;
  *(v7 + 248) = a3;
  *(v7 + 256) = v3;
  *(v7 + 240) = a2;
  v8 = *v3;
  v9 = v3[1];
  *(v7 + 25) = *(v3 + 25);
  *v7 = v8;
  *(v7 + 16) = v9;
  sub_21B2A33AC(a2, a3, v7 + 144);
  return sub_21B2A5120;
}

void sub_21B2A5120(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 248);
    v4 = *(v2 + 240);
    v5 = *(v2 + 160);
    *(v2 + 48) = *(v2 + 144);
    *(v2 + 64) = v5;
    *(v2 + 73) = *(v2 + 169);
    sub_21B2A6284(v2 + 48, v2 + 192);
    sub_21B2A4284((v2 + 48), v4, v3);
    v6 = *(v2 + 168);
    v7 = *(v2 + 176);
    v8 = *(v2 + 184);

    sub_21B23A9F4(v6, v7, v8);
  }

  else
  {
    v9 = *(v2 + 248);
    v10 = *(v2 + 240);
    v11 = *(v2 + 160);
    *(v2 + 96) = *(v2 + 144);
    *(v2 + 112) = v11;
    *(v2 + 121) = *(v2 + 169);
    sub_21B2A4284((v2 + 96), v10, v9);
  }

  free(v2);
}

unint64_t sub_21B2A51F4(unint64_t result, uint64_t a2)
{
  if (*(v2 + 16))
  {
    if (*(v2 + 16) != 1)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v4 = *(*v2 + 16);
      if (v4 >= a2)
      {
        if (!__OFSUB__(a2, result))
        {
          v5 = result - a2;
          if (!__OFSUB__(0, a2 - result))
          {
            v6 = v4 + v5;
            if (!__OFADD__(v4, v5))
            {
              v7 = result;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (isUniquelyReferenced_nonNull_native && v6 <= *(v3 + 3) >> 1)
              {
                v10 = v2;
              }

              else
              {
                v10 = v2;
                if (v4 <= v6)
                {
                  v11 = v6;
                }

                else
                {
                  v11 = v4;
                }

                v3 = sub_21B2356AC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
              }

              result = sub_21B25DB84(v7, a2, 0);
              *v10 = v3;
              *(v10 + 8) = 0;
              *(v10 + 16) = 1;
              return result;
            }

LABEL_23:
            __break(1u);
            return result;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (result != a2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 2;
  }

  return result;
}

uint64_t sub_21B2A5304(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1 && (v5 = *(result + 16), v3 = result + 16, (v4 = v5) != 0))
    {
      return *(v3 + 16 * v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int64_t sub_21B2A5344(int64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (*(v2 + 16))
  {
    if (v5 != 1)
    {
      return result;
    }

    v6 = *(v3 + 16);
    if (!v6 || *(v3 + 16 + 16 * v6 + 8) <= result)
    {
      return result;
    }
  }

  else
  {
    if (v4 <= result)
    {
      return result;
    }

    if (!*(v2 + 16))
    {
      v7 = 1;
      if (v3 > a2)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_58;
  }

  v7 = 0;
  if (*(v3 + 32) > a2)
  {
    return result;
  }

LABEL_13:
  v8 = result;
  result = sub_21B28E16C(result, a2, *v2, *(v2 + 8), v5);
  if (result == v10)
  {
    return result;
  }

  if (!v7)
  {
    goto LABEL_23;
  }

  if (result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (__OFSUB__(v10, 1))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v10 != 1)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v3 >= v8)
  {
    if (v4 > a2)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if (v4 <= a2)
  {
    goto LABEL_44;
  }

  if (v3 <= v8)
  {
LABEL_53:
    if (v4 >= a2)
    {

      return sub_21B28E49C(result, v10, v3, v8, a2, v4);
    }

    goto LABEL_67;
  }

  __break(1u);
LABEL_23:
  if (result < 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v11 = *(v3 + 16);
  if (result >= v11)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v12 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_58;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v12 >= v11)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v13 = *(v3 + 32 + 16 * v12 + 8);
  if (*(v3 + 32 + 16 * result) < v8)
  {
    if (v13 > a2)
    {
      v16 = *(v3 + 16);
      if (result >= v16)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v17 = v3 + 32;
      v3 = *(v3 + 32 + 16 * result);
      if (v3 > v8)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if (v12 >= v16)
      {
LABEL_72:
        __break(1u);
        return result;
      }

      v4 = *(v17 + 16 * v12 + 8);
      goto LABEL_53;
    }

    if (result >= *(v3 + 16))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v3 = *(v3 + 16 * result + 32);
LABEL_44:
    if (v3 <= v8)
    {
      v14 = v3;
      v15 = v8;
      goto LABEL_46;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v13 > a2)
  {
    if (v12 >= *(v3 + 16))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v4 = *(v3 + 16 * v12 + 40);
LABEL_36:
    if (v4 >= a2)
    {
      v14 = a2;
      v15 = v4;
LABEL_46:

      return sub_21B28E6D0(result, v10, v14, v15);
    }

    goto LABEL_65;
  }

LABEL_38:

  return sub_21B2A51F4(result, v10);
}

void *sub_21B2A55EC(void *result, uint64_t a2, char a3)
{
  v3 = result;
  if (a3)
  {
    if (a3 == 1)
    {
      if (result[2])
      {
        result = sub_21B2A5344(result[4], result[5]);
        if (v3[2] != 1)
        {
          v4 = v3 + 7;
          v5 = 1;
          while (v5 < v3[2])
          {
            ++v5;
            result = sub_21B2A5344(*(v4 - 1), *v4);
            v4 += 2;
            if (v5 == v3[2])
            {
              return result;
            }
          }

          __break(1u);
        }
      }
    }
  }

  else
  {

    return sub_21B2A5344(result, a2);
  }

  return result;
}

void (*sub_21B2A56A0(void *a1, char *a2, char *a3, uint64_t a4, uint64_t a5))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = DataFrameProtocol.subscript.modify(v10, a2, a3, a4, a5);
  return sub_21B2444C0;
}

BOOL DataFrameProtocol.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v17);
  v4 = v17;

  v5 = *(v4 + 16);

  if (!v5)
  {
    return 1;
  }

  (*(a2 + 32))(&v13, a1, a2);
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v14;
  v10 = v15;
  if (v16)
  {
    if (v16 == 1 && (v11 = *(v14 + 16)) != 0)
    {
      v9 = *(v14 + 32);
      v10 = *(v14 + 16 + 16 * v11 + 8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  sub_21B23A9F4(v6, v7, v8);
  return v9 == v10;
}

double sub_21B2A585C@<D0>(char **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  DataFrameProtocol.subscript.getter(*a1, a1[1], *(a1 + a2 - 16), *(a1 + a2 - 8), &v7);
  v4 = v8;
  v5 = v10;
  *a3 = v7;
  *(a3 + 16) = v4;
  result = *&v9;
  *(a3 + 24) = v9;
  *(a3 + 40) = v5;
  return result;
}

uint64_t sub_21B2A58BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14[0] = *a1;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v15 = v12;

  sub_21B254074(v10, v11, v12);
  return DataFrameProtocol.subscript.setter(v14, v6, v7, v4, v5);
}

uint64_t DataFrameProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a4 + 32))(&v18, a2, a4);
  v7 = *(&v19 + 1);
  v8 = v20;
  v9 = v21;
  v14 = v18;
  v15 = v19;
  *&v16 = v20;
  BYTE8(v16) = v21;
  if (v21)
  {
    if (v21 == 1 && (v10 = *(*(&v19 + 1) + 16)) != 0)
    {
      *&v17 = *(*(&v19 + 1) + 32);
      v11 = *(*(&v19 + 1) + 16 + 16 * v10 + 8);
    }

    else
    {
      v11 = 0;
      *&v17 = 0;
    }
  }

  else
  {
    *&v17 = *(&v19 + 1);
    v11 = v20;
  }

  *(&v17 + 1) = v11;

  sub_21B254074(v7, v8, v9);

  sub_21B23A9F4(v7, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  sub_21B2A5F44();
  sub_21B34AF64();
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  sub_21B2803D4(v13);
  return (*(a4 + 72))(v22, v23, a2, a4);
}

double sub_21B2A5B20@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  DataFrameProtocol.subscript.getter(a1, *(a1 + a2 - 32), *(a1 + a2 - 24), *(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = v5;
  *(a3 + 16) = v6;
  result = *&v7;
  *(a3 + 24) = v7;
  *(a3 + 40) = v8;
  return result;
}

uint64_t sub_21B2A5B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15[0] = *a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v16 = v13;

  sub_21B254074(v11, v12, v13);
  return sub_21B2A5FA8(v15, a3, v5, v6, v7, v8);
}

uint64_t DataFrameProtocol.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_21B2A5FA8(a1, a2, a3, a4, a5, a6);
  v8 = *(*(a4 - 8) + 8);

  return v8(a2, a4);
}

uint64_t (*DataFrameProtocol.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v13 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x68uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[9] = a6;
  v14[10] = v6;
  v14[7] = a4;
  v14[8] = a5;
  v14[6] = a3;
  v16 = *(a4 - 8);
  v17 = v16;
  v14[11] = v16;
  if (v13)
  {
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v18 = malloc(*(v16 + 64));
  }

  v15[12] = v18;
  (*(v17 + 16))();
  DataFrameProtocol.subscript.getter(a2, a3, a4, a5, a6);
  return sub_21B2A5DE8;
}

void sub_21B2A5DE8(void *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v8 = *(*a1 + 48);
  if (a2)
  {
    v9 = *(v2 + 1);
    v10 = *(v2 + 2);
    v11 = *(v2 + 3);
    v12 = *(v2 + 4);
    v18[0] = *v2;
    v18[1] = v9;
    v18[2] = v10;
    v18[3] = v11;
    v18[4] = v12;
    v17 = v5;
    v19 = *(v2 + 40);
    v16 = v6;

    sub_21B254074(v11, v12, v19);
    sub_21B2A5FA8(v18, v3, v8, v7, v16, v17);
    (*(v4 + 8))(v3, v7);
    v13 = *(v2 + 3);
    v14 = *(v2 + 4);
    v15 = *(v2 + 40);

    sub_21B23A9F4(v13, v14, v15);
  }

  else
  {
    sub_21B2A5FA8(*a1, v3, v8, v7, v6, v5);
    (*(v4 + 8))(v3, v7);
  }

  free(v3);

  free(v2);
}

unint64_t sub_21B2A5F44()
{
  result = qword_27CD7EC10;
  if (!qword_27CD7EC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E510, &unk_21B351F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EC10);
  }

  return result;
}

uint64_t sub_21B2A5FA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a5 + 32))(&v30, a3, a5);
  v9 = *(&v31 + 1);
  v10 = v32;
  v11 = v33;
  v26 = v30;
  v27 = v31;
  *&v28 = v32;
  BYTE8(v28) = v33;
  if (v33)
  {
    if (v33 == 1 && (v12 = *(*(&v31 + 1) + 16)) != 0)
    {
      *&v29 = *(*(&v31 + 1) + 32);
      v13 = *(*(&v31 + 1) + 16 + 16 * v12 + 8);
    }

    else
    {
      v13 = 0;
      *&v29 = 0;
    }
  }

  else
  {
    *&v29 = *(&v31 + 1);
    v13 = v32;
  }

  *(&v29 + 1) = v13;

  sub_21B254074(v9, v10, v11);

  sub_21B23A9F4(v9, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  sub_21B2A5F44();
  sub_21B34AF64();
  v25[0] = v26;
  v25[1] = v27;
  v25[2] = v28;
  v25[3] = v29;
  sub_21B2803D4(v25);
  v14 = v34;
  v22 = v35;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v18 = a1[4];
  v23[0] = *a1;
  v23[1] = v15;
  v23[2] = v16;
  v23[3] = v17;
  v23[4] = v18;
  v19 = *(a1 + 40);
  v24 = v19;
  v20 = *(a5 + 80);

  sub_21B254074(v17, v18, v19);
  v20(v23, v14, v22, a3, a5);

  return sub_21B23A9F4(v17, v18, v19);
}

uint64_t sub_21B2A633C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EAC0, &unk_21B3547A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AnyCategoricalSummary.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = sub_21B34B7B4();

  *(a3 + 24) = v6;
  *(a3 + 32) = a2;
  return result;
}

uint64_t AnyCategoricalSummary.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v5 = sub_21B2A65E4(v4);

  v7 = MEMORY[0x277D84030];
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t AnyCategoricalSummary.totalCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t AnyCategoricalSummary.mode.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_21B2A65E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_21B260E68(v4, &v8);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v9, (v2 + 32 * v6 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A66E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_21B260DC0(*v4, *(v4 + 8));
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A67EC(uint64_t a1)
{
  v2 = sub_21B34A834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21B254228(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B254228((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      sub_21B261720(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_21B2A6984(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v8, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6B80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6C7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v8, (v2 + 32 * v6 + 32));
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v8, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21B254228(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21B254228((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21B261720(&v8, (v2 + 32 * v6 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A6F6C(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D0, &qword_21B351BE8);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC48, &qword_21B354890);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21B2543C8(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_21B2615FC(v11, v4, &qword_27CD7E2D0, &qword_21B351BE8);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B2543C8((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_21B2A7C38(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_21B2A7194(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21B254408(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_21B260DAC(*(v4 - 4), *(v4 - 3));
      sub_21B254074(v5, v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2B8, &qword_21B351BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC40, &unk_21B354880);
      swift_dynamicCast();
      v8 = v14;
      v9 = v15;
      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B254408((v10 > 1), v11 + 1, 1);
        v9 = v15;
        v8 = v14;
      }

      v4 += 40;
      *(v17 + 16) = v11 + 1;
      v12 = v17 + 40 * v11;
      *(v12 + 32) = v8;
      *(v12 + 48) = v9;
      *(v12 + 64) = v16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A72F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_21B254448(0, v1, 0);
    v4 = (a1 + 56);
    v2 = v13;
    do
    {
      sub_21B254074(*(v4 - 2), *(v4 - 1), *v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2A0, &qword_21B351BB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC38, &unk_21B354870);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21B254448((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 32 * v7;
      *(v8 + 32) = v10;
      v4 += 32;
      *(v8 + 40) = v5;
      *(v8 + 56) = v12;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A7448(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_21B254488(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 64);
    do
    {
      sub_21B254074(*(v4 - 2), *(v4 - 1), *v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E288, &qword_21B351BA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC30, &unk_21B354860);
      swift_dynamicCast();
      v5 = v12;
      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21B254488((v6 > 1), v7 + 1, 1);
        v5 = v12;
      }

      *(v14 + 16) = v7 + 1;
      v8 = v14 + 40 * v7;
      *(v8 + 32) = v10;
      v4 += 40;
      *(v8 + 40) = v11;
      *(v8 + 48) = v5;
      *(v8 + 64) = v13;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A75A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_21B2544C8(0, v1, 0);
    v4 = (a1 + 56);
    v2 = v14;
    do
    {
      sub_21B254074(*(v4 - 2), *(v4 - 1), *v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E270, &qword_21B351B88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC28, &unk_21B354850);
      swift_dynamicCast();
      v5 = v12;
      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21B2544C8((v6 > 1), v7 + 1, 1);
        v5 = v12;
      }

      *(v14 + 16) = v7 + 1;
      v8 = v14 + 32 * v7;
      *(v8 + 32) = v10;
      v4 += 32;
      *(v8 + 36) = v11;
      *(v8 + 40) = v5;
      *(v8 + 56) = v13;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A7708(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21B254508(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;

      sub_21B254074(v5, v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E258, &qword_21B351B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC20, &unk_21B354840);
      swift_dynamicCast();
      v8 = v14;
      v9 = v15;
      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B254508((v10 > 1), v11 + 1, 1);
        v9 = v15;
        v8 = v14;
      }

      v4 += 40;
      *(v17 + 16) = v11 + 1;
      v12 = v17 + 40 * v11;
      *(v12 + 32) = v8;
      *(v12 + 48) = v9;
      *(v12 + 64) = v16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B2A7868(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_21B254548(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 64);
    do
    {
      sub_21B254074(*(v4 - 2), *(v4 - 1), *v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E240, &qword_21B351B58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC18, &unk_21B354830);
      swift_dynamicCast();
      v5 = v12;
      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21B254548((v6 > 1), v7 + 1, 1);
        v5 = v12;
      }

      *(v14 + 16) = v7 + 1;
      v8 = v14 + 40 * v7;
      *(v8 + 32) = v10;
      v4 += 40;
      *(v8 + 40) = v11;
      *(v8 + 48) = v5;
      *(v8 + 64) = v13;
      --v1;
    }

    while (v1);
  }

  return v2;
}

BOOL _s11TabularData21AnyCategoricalSummaryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a1[4];
  v24 = a1[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC50, &qword_21B354898);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
  }

  v21 = v7;

  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  sub_21B2615FC(v22, v14, &qword_27CD7E200, &unk_21B352050);
  sub_21B2615FC(v19, &v16, &qword_27CD7E200, &unk_21B352050);
  if (v15)
  {
    sub_21B2615FC(v14, v13, &qword_27CD7E200, &unk_21B352050);
    if (*(&v17 + 1))
    {
      v11[0] = v16;
      v11[1] = v17;
      v12 = v18;
      v10 = MEMORY[0x21CEEDD80](v13, v11);
      sub_21B260E14(v11);
      sub_21B260E14(v13);
      sub_21B261664(v14, &qword_27CD7E200, &unk_21B352050);
      sub_21B261664(v19, &qword_27CD7E200, &unk_21B352050);
      sub_21B261664(v22, &qword_27CD7E200, &unk_21B352050);
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      return v9 == v8;
    }

    sub_21B260E14(v13);
  }

  else if (!*(&v17 + 1))
  {
    sub_21B261664(v14, &qword_27CD7E200, &unk_21B352050);
    sub_21B261664(v19, &qword_27CD7E200, &unk_21B352050);
    sub_21B261664(v22, &qword_27CD7E200, &unk_21B352050);
    return v9 == v8;
  }

  sub_21B261664(v14, &qword_27CD7E208, &qword_21B351B20);
  sub_21B261664(v19, &qword_27CD7E200, &unk_21B352050);
  sub_21B261664(v22, &qword_27CD7E200, &unk_21B352050);
  return 0;
}

uint64_t sub_21B2A7C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC48, &qword_21B354890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Column.decoded<A, B>(_:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v88 = a5;
  v89 = a6;
  v86 = a1;
  v87 = a4;
  v72 = a7;
  v71 = sub_21B34B6B4();
  v69 = *(v71 - 8);
  v10 = MEMORY[0x28223BE20](v71);
  v67 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v66 - v13;
  MEMORY[0x28223BE20](v12);
  v70 = &v66 - v14;
  v85 = sub_21B34B474();
  v91 = *(v85 - 8);
  v15 = MEMORY[0x28223BE20](v85);
  v84 = &v66 - v16;
  v80 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  v19 = sub_21B34B474();
  v81 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v94 = &v66 - v21;
  v95 = v18;
  v79 = *(v18 - 8);
  MEMORY[0x28223BE20](v20);
  v90 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = sub_21B34B474();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v66 - v24;
  v27 = v7[1];
  v28 = v7[2];
  *&v111 = *v7;
  v26 = v111;
  *(&v111 + 1) = v27;
  *&v112 = v28;
  v29 = Column.count.getter();
  swift_bridgeObjectRetain_n();
  Column.init(name:capacity:)(v26, v27, v29, a3, &v114);
  *&v106 = v26;
  *(&v106 + 1) = v27;
  v107 = v28;
  swift_getWitnessTable();
  sub_21B34B194();
  v109 = v110;
  v66 = v26;
  v102 = v26;
  v103 = v27;
  v74 = v27;
  v104 = v28;
  v30 = v19;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v32 = sub_21B2A85CC();
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v106 = v100;
  v107 = *&v101[0];
  v108 = *(v101 + 8);
  v102 = v31;
  v103 = a2;
  v98 = v32;
  v99 = a2;
  v34 = TupleTypeMetadata2;
  v104 = v32;
  v105 = WitnessTable;
  v97 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v96 = v34 - 8;
  v92 = (v79 + 6);
  v93 = (v81 + 4);
  v82 = (v79 + 4);
  v76 = (v80 + 1);
  v77 = v31;
  ++v81;
  v80 += 7;
  v78 = (v79 + 1);
  v79 = (v91 + 8);
  while (1)
  {
    while (1)
    {
      *&v100 = v31;
      *(&v100 + 1) = v99;
      *&v101[0] = v98;
      *(&v101[0] + 1) = v97;
      v41 = sub_21B34B664();
      sub_21B34B654();
      if ((*(*(v34 - 8) + 48))(v25, 1, v34) == 1)
      {

        v100 = v111;
        v101[0] = v112;
        v101[1] = v113[0];
        *(&v101[1] + 9) = *(v113 + 9);
        result = (*(*(v41 - 8) + 8))(&v100, v41);
        v55 = v72;
        *v72 = v114;
        *(v55 + 1) = v115;
        return result;
      }

      v42 = a3;
      v91 = *v25;
      v43 = v94;
      (*v93)(v94, &v25[*(v34 + 48)], v30);
      v44 = v95;
      if ((*v92)(v43, 1, v95) != 1)
      {
        break;
      }

      (*v81)(v43, v30);
      v35 = v84;
      a3 = v42;
      (*v80)(v84, 1, 1, v42);
      v38 = type metadata accessor for Column(0, v42, v36, v37);
      Column.append(_:)(v35, v38, v39, v40);
      (*v79)(v35, v85);
    }

    v75 = v41;
    v45 = v25;
    v46 = v34;
    v47 = v30;
    v48 = v90;
    (*v82)(v90, v43, v44);
    v49 = v83;
    v50 = v116;
    sub_21B34A954();
    v116 = v50;
    if (v50)
    {
      break;
    }

    v53 = type metadata accessor for Column(0, v42, v51, v52);
    Column.append(_:)(v49, v53);
    (*v76)(v49, v42);
    (*v78)(v48, v44);
    a3 = v42;
    v30 = v47;
    v34 = v46;
    v25 = v45;
    v31 = v77;
  }

  v56 = v116;
  *&v106 = v116;
  MEMORY[0x21CEEE850](v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  v57 = v70;
  v58 = v71;
  if (swift_dynamicCast())
  {
    MEMORY[0x21CEEE840](v56);
    v59 = v68;
    v60 = v69;
    v61 = *(v69 + 32);
    v61(v68, v57, v58);
    v62 = v67;
    (*(v60 + 16))(v67, v59, v58);
    v63 = type metadata accessor for ColumnDecodingError(0);
    sub_21B2A86A4();
    swift_allocError();
    v64 = v74;
    *v65 = v66;
    v65[1] = v64;
    v65[2] = v91;
    v61(v65 + *(v63 + 24), v62, v58);
    swift_willThrow();
    (*(v60 + 8))(v59, v58);
  }

  else
  {
  }

  (*v78)(v90, v95);
  v100 = v111;
  v101[0] = v112;
  v101[1] = v113[0];
  *(&v101[1] + 9) = *(v113 + 9);
  (*(*(v75 - 8) + 8))(&v100);

  return MEMORY[0x21CEEE840](v106);
}

unint64_t sub_21B2A85CC()
{
  result = qword_27CD7E980;
  if (!qword_27CD7E980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E978, &qword_21B353910);
    sub_21B25DE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E980);
  }

  return result;
}

uint64_t type metadata accessor for ColumnDecodingError(uint64_t a1)
{
  result = qword_27CD7EC70;
  if (!qword_27CD7EC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B2A86A4()
{
  result = qword_27CD7EC58;
  if (!qword_27CD7EC58)
  {
    type metadata accessor for ColumnDecodingError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EC58);
  }

  return result;
}

uint64_t ColumnDecodingError.init(columnName:rowIndex:decodingError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for ColumnDecodingError(0) + 24);
  v8 = sub_21B34B6B4();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t AnyColumn.decoded<A, B>(_:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = v6;
  v35 = a6;
  v15 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v8, v15);
  v16 = (*(*(v14 + 8) + 80))(v15);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v16 == AssociatedTypeWitness)
  {
    sub_21B233A10(v8, &v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    v20 = type metadata accessor for Column(0, AssociatedTypeWitness, v18, v19);
    swift_dynamicCast();
    Column.decoded<A, B>(_:using:)(a1, v20, a2, a3, a4, a5, &v33);

    if (!v7)
    {
      v31 = v33;
      v32 = v34;
      v24 = type metadata accessor for Column(0, a2, v22, v23);
      Column.eraseToAnyColumn()(v24, v25, v26, v35);
    }
  }

  else
  {
    v31 = 0;
    *&v32 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34CD60);
    v28 = v8[3];
    v27 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v28);
    (*(*(v27 + 8) + 80))(v28);
    v29 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v29);

    MEMORY[0x21CEED5E0](0xD00000000000001ALL, 0x800000021B34CD80);
    v30 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v30);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t AnyColumn.decode<A, B>(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v15 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v8, v15);
  v16 = (*(*(v14 + 8) + 80))(v15);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v16 == AssociatedTypeWitness)
  {
    sub_21B233A10(v8, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    v20 = type metadata accessor for Column(0, AssociatedTypeWitness, v18, v19);
    swift_dynamicCast();
    v30 = type metadata accessor for Column(0, a3, v21, v22);
    v31 = &off_282CAA128;
    Column.decoded<A, B>(_:using:)(a2, v20, a3, a4, a5, a6, &v29);

    if (v7)
    {
      return __swift_deallocate_boxed_opaque_existential_1(&v29);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      return sub_21B234878(&v29, v8);
    }
  }

  else
  {
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34CD60);
    v25 = v8[3];
    v24 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v25);
    (*(*(v24 + 8) + 80))(v25);
    v26 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v26);

    MEMORY[0x21CEED5E0](0xD00000000000001ALL, 0x800000021B34CD80);
    v27 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v27);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t DataFrame.decode<A, B>(_:inColumn:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *v8;

  v17 = sub_21B23AC94(a2, a3);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_21B23A2F4(v16);
  v16 = result;
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v17 < *(v16 + 16))
  {
    result = AnyColumn.decode<A, B>(_:using:)(result, a4, a5, a6, a7, a8);
    *v9 = v16;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t DataFrame.decode<A, B>(_:inColumn:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = *a2;
  v14 = a2[1];
  v15 = *v7;

  v16 = sub_21B23AC94(v13, v14);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_21B23A2F4(v15);
  v15 = result;
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v16 < *(v15 + 16))
  {
    result = AnyColumn.decode<A, B>(_:using:)(result, a3, a4, a5, a6, a7);
    *v8 = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t ColumnDecodingError.columnName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ColumnDecodingError.columnName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ColumnDecodingError.decodingError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ColumnDecodingError(0) + 24);
  v4 = sub_21B34B6B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ColumnDecodingError.decodingError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ColumnDecodingError(0) + 24);
  v4 = sub_21B34B6B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ColumnDecodingError.debugDescription.getter()
{
  v1 = sub_21B34B6B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B34B6A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColumnDecodingError(0);
  (*(v2 + 16))(v4, &v0[*(v9 + 24)], v1);
  v10 = (*(v2 + 88))(v4, v1);
  if (v10 == *MEMORY[0x277D84160] || v10 == *MEMORY[0x277D84170])
  {
    (*(v2 + 96))(v4, v1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC60, &qword_21B3548A8);
    (*(v6 + 32))(v8, &v4[*(v11 + 48)], v5);
  }

  else if (v10 == *MEMORY[0x277D84158])
  {
    (*(v2 + 96))(v4, v1);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC68, &qword_21B3548B0);
    (*(v6 + 32))(v8, &v4[*(v17 + 48)], v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    if (v10 != *MEMORY[0x277D84168])
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0x6D756C6F63206E49, 0xEB0000000027206ELL);
      MEMORY[0x21CEED5E0](*v0, *(v0 + 1));
      MEMORY[0x21CEED5E0](0x776F722074612027, 0xE900000000000020);
      v21 = *(v0 + 2);
      v18 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v18);

      MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
      sub_21B34B7C4();
      v19 = v22;
      (*(v2 + 8))(v4, v1);
      return v19;
    }

    (*(v2 + 96))(v4, v1);
    (*(v6 + 32))(v8, v4, v5);
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_21B34B634();

  v22 = 0x6D756C6F63206E49;
  v23 = 0xEB0000000027206ELL;
  MEMORY[0x21CEED5E0](*v0, *(v0 + 1));
  MEMORY[0x21CEED5E0](0x776F722074612027, 0xE900000000000020);
  v21 = *(v0 + 2);
  v12 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v12);

  MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
  v13 = sub_21B34B694();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x21CEED5E0](v13, v15);

  return v22;
}

uint64_t sub_21B2A95B0(uint64_t a1)
{
  result = sub_21B34B6B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B2A965C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B2A9698(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B2A96E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21B2A97CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  *&v15 = a3;
  *(&v15 + 1) = a4;
  v16 = a5;
  v17 = DataFrame.indexOfColumn(_:)(*&a1);
  if (!v17.is_nil)
  {
    if (v17.value < 0)
    {
      __break(1u);
    }

    else if (v17.value < *(a3 + 16))
    {
      sub_21B233A74(a3 + 40 * v17.value + 32, &v15);
      sub_21B234878(&v15, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      return swift_dynamicCast();
    }

    __break(1u);
  }

  sub_21B34B634();

  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2A994C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_70;
  }

  v7 = *(v6 + 8);
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v9 = *(v8 + 8);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    goto LABEL_65;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v13 = *(v12 + 16);
    if (v13)
    {
      if (*v13 < v10)
      {
        sub_21B2B36B8(v10, 1, sub_21B235334);
      }

LABEL_15:

      swift_beginAccess();
      v17 = *(a3 + 16);
      if (!v17)
      {
        goto LABEL_67;
      }

      v18 = 0;
      while (1)
      {
        v21 = v17[1];
        if (v18 == v21)
        {
        }

        if (v18 >= v21)
        {
          goto LABEL_74;
        }

        v22 = *(v17 + (v18 >> 3) + 64) & (1 << (v18 & 7));
        if (v22)
        {
          v23 = *v17 + 7;
          if (__OFADD__(*v17, 7))
          {
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if (v23 < 0)
          {
            v23 = *v17 + 14;
          }

          v24 = v23 >> 3;
          v26 = v24 - 1;
          v25 = v24 < 1;
          v27 = v24 + 62;
          if (!v25)
          {
            v27 = v26;
          }

          v28 = *(&v17[v18 + 16] + (v27 & 0xFFFFFFFFFFFFFFC0));
          v29 = *(v12 + 16);
          if (!v29)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v28 = 0;
          v29 = *(v12 + 16);
          if (!v29)
          {
            goto LABEL_68;
          }
        }

        v30 = *v29;
        v31 = v29[1];
        if (v31 >= *v29)
        {
          v42 = __OFADD__(v31, 1);
          v44 = v31 + 1;
          if (v42)
          {
            goto LABEL_59;
          }

          if (v30 < v44)
          {
            if (v30 + 0x4000000000000000 < 0)
            {
              goto LABEL_63;
            }

            if (2 * v30 <= v44)
            {
              v30 = v44;
            }

            else
            {
              v30 *= 2;
            }
          }

          sub_21B235334(v29, v30, v49);
          v45 = *(v12 + 16);
          if (!v45)
          {
            goto LABEL_69;
          }

          if ((*(v45 + 8) & 0x8000000000000000) != 0)
          {
            goto LABEL_61;
          }

          MEMORY[0x21CEEEA30]();
          v19 = v49[0];
          v20 = v49[1];
          *(v12 + 16) = v49[0];
          *(v12 + 24) = v20;
          sub_21B2357B0(v28, v22 == 0, v19);
        }

        else
        {
          if (v22)
          {
            v32 = v30 + 7;
            if (__OFADD__(v30, 7))
            {
              goto LABEL_62;
            }

            v33 = v29 + 8;
            if (v32 < 0)
            {
              v32 = v30 + 14;
            }

            v34 = v32 >> 3;
            v35 = v34 - 1;
            v25 = v34 < 1;
            v36 = v34 + 62;
            if (!v25)
            {
              v36 = v35;
            }

            *(&v33[v31 + 8] + (v36 & 0xFFFFFFFFFFFFFFC0)) = v28;
            v37 = v29[1];
            v38 = v37 + 7;
            if (v37 >= 0)
            {
              v38 = v29[1];
            }

            v39 = v37 - (v38 & 0xFFFFFFFFFFFFFFF8);
            if (v39 >= 0)
            {
              v40 = 1 << v39;
            }

            else
            {
              v40 = 0;
            }

            *(v33 + (v38 >> 3)) |= v40;
            v41 = v29[1];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v46 = v29[2];
            v42 = __OFADD__(v46, 1);
            v47 = v46 + 1;
            if (v42)
            {
              goto LABEL_64;
            }

            v29[2] = v47;
            v42 = __OFADD__(v31, 1);
            v43 = v31 + 1;
            if (v42)
            {
              goto LABEL_60;
            }
          }

          v29[1] = v43;
        }

        v17 = *(a3 + 16);
        ++v18;
        if (!v17)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_72;
  }

  swift_beginAccess();
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *v14;
    if (*v14 < v10)
    {
      if (v15 + 0x4000000000000000 < 0)
      {
        goto LABEL_66;
      }

      if (2 * v15 <= v10)
      {
        v15 = v10;
      }

      else
      {
        v15 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
    v16 = swift_allocObject();
    sub_21B2AECDC(v14, v15, &v50);
    *(v16 + 16) = v50;

    *v3 = v16;
    v12 = v16;
    goto LABEL_15;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2A9D40(int64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v5 = *(v4 + 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v6 < 0)
  {
    goto LABEL_70;
  }

  v10 = *(v9 + 8);
  if (v10 < v6)
  {
    goto LABEL_70;
  }

  if (v7 < 0 || v10 < v7)
  {
    goto LABEL_71;
  }

  v11 = __OFADD__(v5, v7 - v6);
  v12 = v5 + v7 - v6;
  if (v11)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v16 = *(v14 + 16);
    if (!v16)
    {
      goto LABEL_80;
    }

    v17 = *v16;
    if (*v16 < v12)
    {
      if (v17 + 0x4000000000000000 < 0)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if (2 * v17 <= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
    v18 = swift_allocObject();
    sub_21B2AECDC(v16, v17, v49);
    *(v18 + 16) = *v49;

    *v1 = v18;
    v14 = v18;
    goto LABEL_19;
  }

  swift_beginAccess();
  v15 = *(v14 + 16);
  if (v15)
  {
    if (*v15 < v12)
    {
      sub_21B2B36B8(v12, 1, sub_21B235334);
    }

LABEL_19:
    sub_21B2615FC(a1, v49, &qword_27CD7E720, &qword_21B352340);
    swift_beginAccess();
    if (v7 == v6)
    {
LABEL_20:
    }

    while (v6 < v7)
    {
      v20 = *(v8 + 16);
      if (!v20)
      {
        goto LABEL_74;
      }

      if (v6 >= v20[1])
      {
        goto LABEL_81;
      }

      v21 = *(v20 + (v6 >> 3) + 64) & (1 << (v6 & 7));
      if (v21)
      {
        v22 = *v20 + 7;
        if (__OFADD__(*v20, 7))
        {
          goto LABEL_63;
        }

        if (v22 < 0)
        {
          v22 = *v20 + 14;
        }

        v23 = v22 >> 3;
        v25 = v23 - 1;
        v24 = v23 < 1;
        v26 = v23 + 62;
        if (!v24)
        {
          v26 = v25;
        }

        v27 = *(&v20[v6 + 16] + (v26 & 0xFFFFFFFFFFFFFFC0));
        v28 = *(v14 + 16);
        if (!v28)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v27 = 0;
        v28 = *(v14 + 16);
        if (!v28)
        {
          goto LABEL_75;
        }
      }

      v29 = *v28;
      v30 = v28[1];
      if (v30 >= *v28)
      {
        v11 = __OFADD__(v30, 1);
        v42 = v30 + 1;
        if (v11)
        {
          goto LABEL_64;
        }

        if (v29 < v42)
        {
          if (v29 + 0x4000000000000000 < 0)
          {
            goto LABEL_68;
          }

          if (2 * v29 <= v42)
          {
            v29 = v42;
          }

          else
          {
            v29 *= 2;
          }
        }

        sub_21B235334(v28, v29, v48);
        v43 = *(v14 + 16);
        if (!v43)
        {
          goto LABEL_76;
        }

        if ((*(v43 + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        MEMORY[0x21CEEEA30]();
        v44 = v48[0];
        v45 = v48[1];
        *(v14 + 16) = v48[0];
        *(v14 + 24) = v45;
        sub_21B2357B0(v27, v21 == 0, v44);
      }

      else
      {
        if (v21)
        {
          v31 = v29 + 7;
          if (__OFADD__(v29, 7))
          {
            goto LABEL_67;
          }

          v32 = v28 + 8;
          if (v31 < 0)
          {
            v31 = v29 + 14;
          }

          v33 = v31 >> 3;
          v34 = v33 - 1;
          v24 = v33 < 1;
          v35 = v33 + 62;
          if (!v24)
          {
            v35 = v34;
          }

          *(&v32[v30 + 8] + (v35 & 0xFFFFFFFFFFFFFFC0)) = v27;
          v36 = v28[1];
          v37 = v36 + 7;
          if (v36 >= 0)
          {
            v37 = v28[1];
          }

          v38 = v36 - (v37 & 0xFFFFFFFFFFFFFFF8);
          if (v38 >= 0)
          {
            v39 = 1 << v38;
          }

          else
          {
            v39 = 0;
          }

          *(v32 + (v37 >> 3)) |= v39;
          v40 = v28[1];
          v11 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v11)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v46 = v28[2];
          v11 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v11)
          {
            goto LABEL_69;
          }

          v28[2] = v47;
          v11 = __OFADD__(v30, 1);
          v41 = v30 + 1;
          if (v11)
          {
            goto LABEL_65;
          }
        }

        v28[1] = v41;
      }

      if (v7 == ++v6)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AA180(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_97;
  }

  v5 = *(a1 + 24);
  v70 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v64 = a1;
  v66 = *(v4 + 8);
  if (*(a1 + 40))
  {
    if (v7 != 1 || (v8 = v5 + 2, !v5[2]))
    {
      v12 = 0;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = v5[4];
    v11 = v5[5];
  }

  else
  {
    v8 = v5 + 2;
    v9 = 1;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
  }

  swift_beginAccess();
  v13 = *(v70 + 16);
  if (!v13)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v10 < 0 || (v14 = *(v13 + 8), v14 < v10))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v11 < 0 || v14 < v11)
  {
    goto LABEL_87;
  }

  v12 = v11 - v10;
  if ((v9 & 1) == 0 && *v8 != 1)
  {
    v15 = v5 + 7;
    v16 = 1;
    while (v16 < *v8)
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      swift_beginAccess();
      v19 = *(v70 + 16);
      if (!v19)
      {
        goto LABEL_96;
      }

      if (v18 < 0)
      {
        goto LABEL_86;
      }

      v20 = *(v19 + 8);
      if (v20 < v18)
      {
        goto LABEL_86;
      }

      if (v17 < 0 || v20 < v17)
      {
        goto LABEL_87;
      }

      v21 = __OFADD__(v12, v17 - v18);
      v12 += v17 - v18;
      if (v21)
      {
        goto LABEL_89;
      }

      ++v16;
      v15 += 2;
      if (v16 == *v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_88;
  }

LABEL_24:
  v22 = v66 + v12;
  if (__OFADD__(v66, v12))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v68;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v25 = *(v24 + 16);
    v26 = v64;
    if (!v25)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (*v25 < v22)
    {
      sub_21B2B36B8(v22, 1, sub_21B235334);
    }
  }

  else
  {
    swift_beginAccess();
    v27 = *(v24 + 16);
    if (!v27)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v28 = *v27;
    if (*v27 < v22)
    {
      if (v28 + 0x4000000000000000 < 0)
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (2 * v28 <= v22)
      {
        v28 = v22;
      }

      else
      {
        v28 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
    v29 = swift_allocObject();
    sub_21B2AECDC(v27, v28, &v73);
    *(v29 + 16) = v73;

    *v68 = v29;
    v24 = v29;
    v26 = v64;
  }

  v65 = *v26;
  v30 = *(v26 + 16);
  v67 = *(v26 + 32);
  v69 = *(v26 + 24);
  v31 = v5;
  v32 = *(v26 + 40);
  if (v7)
  {
    if (v7 == 1 && v5[2])
    {
      v33 = v5 + 4;
    }

    else
    {
      swift_beginAccess();
      v34 = *(v70 + 16);
      if (!v34)
      {
LABEL_100:
        __break(1u);
        goto LABEL_103;
      }

      v33 = (v34 + 8);
    }

    v31 = *v33;
  }

  sub_21B2615FC(v26, &v73, &qword_27CD7E710, &qword_21B352330);
  swift_beginAccess();
  swift_beginAccess();
  v35 = *(v70 + 16);
  if (!v35)
  {
    goto LABEL_92;
  }

  v36 = v70;
  while (1)
  {
    if (v31 == *(v35 + 8))
    {

      return sub_21B23A9F4(v69, v67, v32);
    }

    if ((sub_21B2D3BE8(v31, v5, v6, v7) & 1) == 0)
    {
      break;
    }

    if (v31 < 0)
    {
      goto LABEL_103;
    }

    swift_beginAccess();
    v39 = *(v36 + 16);
    if (!v39)
    {
      goto LABEL_93;
    }

    v40 = v39[1];
    if (v31 >= v40)
    {
      goto LABEL_103;
    }

    v41 = sub_21B2B1790(v31, v39, v40);
    v43 = v42;
    v73 = v65;
    v74 = v30;
    v75 = v69;
    v76 = v67;
    v77 = v32;
    v31 = sub_21B2B336C(v31);
    v44 = *(v24 + 16);
    if (!v44)
    {
      goto LABEL_94;
    }

    v36 = v74;
    v5 = v75;
    v6 = v76;
    LOBYTE(v7) = v77;
    v45 = *v44;
    v46 = v44[1];
    if (v46 >= *v44)
    {
      v21 = __OFADD__(v46, 1);
      v49 = v46 + 1;
      if (v21)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (v45 < v49)
      {
        if (v45 + 0x4000000000000000 < 0)
        {
          goto LABEL_85;
        }

        if (2 * v45 <= v49)
        {
          v45 = v49;
        }

        else
        {
          v45 *= 2;
        }
      }

      sub_21B235334(v44, v45, &v71);
      v50 = *(v24 + 16);
      if (!v50)
      {
        goto LABEL_95;
      }

      if ((*(v50 + 8) & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }

      MEMORY[0x21CEEEA30]();
      v37 = v71;
      v38 = v72;
      *(v24 + 16) = v71;
      *(v24 + 24) = v38;
      sub_21B2357B0(v41, v43 & 1, v37);
    }

    else
    {
      if (v43)
      {
        v47 = v44[2];
        v21 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v21)
        {
          goto LABEL_83;
        }

        v44[2] = v48;
      }

      else
      {
        v51 = v45 + 7;
        if (__OFADD__(v45, 7))
        {
          goto LABEL_84;
        }

        v52 = v44 + 8;
        if (v51 < 0)
        {
          v51 = v45 + 14;
        }

        v53 = v51 >> 3;
        v55 = v53 - 1;
        v54 = v53 < 1;
        v56 = v53 + 62;
        if (!v54)
        {
          v56 = v55;
        }

        *(&v52[v46 + 8] + (v56 & 0xFFFFFFFFFFFFFFC0)) = v41;
        v57 = v44[1];
        v58 = v57 + 7;
        if (v57 >= 0)
        {
          v58 = v44[1];
        }

        v59 = v57 - (v58 & 0xFFFFFFFFFFFFFFF8);
        if (v59 >= 0)
        {
          v60 = 1 << v59;
        }

        else
        {
          v60 = 0;
        }

        *(v52 + (v58 >> 3)) |= v60;
        v46 = v44[1];
      }

      v21 = __OFADD__(v46, 1);
      v61 = v46 + 1;
      if (v21)
      {
        goto LABEL_81;
      }

      v44[1] = v61;
    }

    v35 = *(v70 + 16);
    if (!v35)
    {
      goto LABEL_92;
    }
  }

  v71 = 0;
  v72 = 0xE000000000000000;
  sub_21B34B634();

  v71 = 0x6E6F697469736F70;
  v72 = 0xE900000000000020;
  v63 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v63);

  MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
LABEL_103:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AA800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_64;
  }

  v7 = *(v6 + 8);
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v9 = *(v8 + 8);
  v10 = __OFADD__(v7, v9);
  v11 = v7 + v9;
  if (v10)
  {
    goto LABEL_60;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v14 = *(v13 + 16);
    if (v14)
    {
      if (*v14 < v11)
      {
        sub_21B2B37BC(v11, 1, &qword_27CD7EC50, &qword_21B354898);
      }

LABEL_15:

      swift_beginAccess();
      v18 = *(a3 + 16);
      if (!v18)
      {
        goto LABEL_62;
      }

      v19 = 0;
      while (1)
      {
        v23 = v18[1];
        if (v19 == v23)
        {
        }

        if (v19 >= v23)
        {
          goto LABEL_68;
        }

        if ((*(v18 + (v19 >> 3) + 64) >> (v19 & 7)))
        {
          v24 = *v18 + 7;
          if (__OFADD__(*v18, 7))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          if (v24 < 0)
          {
            v24 = *v18 + 14;
          }

          v25 = v24 >> 3;
          v27 = v25 - 1;
          v26 = v25 < 1;
          v28 = v25 + 62;
          if (!v26)
          {
            v28 = v27;
          }

          v29 = *(&v18[v19 + 16] + (v28 & 0xFFFFFFFFFFFFFFC0));

          v30 = *(v13 + 16);
          if (!v30)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v29 = 0;
          v30 = *(v13 + 16);
          if (!v30)
          {
            goto LABEL_63;
          }
        }

        v20 = *v30;
        v31 = v30[1];
        if (v31 >= *v30)
        {
          v10 = __OFADD__(v31, 1);
          v42 = v31 + 1;
          if (v10)
          {
            goto LABEL_55;
          }

          if (v20 < v42)
          {
            if (v20 + 0x4000000000000000 < 0)
            {
              goto LABEL_58;
            }

            if (2 * v20 <= v42)
            {
              v20 = v42;
            }

            else
            {
              v20 *= 2;
            }
          }

          sub_21B235334(v30, v20, v46);
          sub_21B2B0C20(*(v13 + 16), *(v13 + 24), &qword_27CD7EC50, &qword_21B354898);
          v21 = v46[0];
          v22 = v46[1];
          *(v13 + 16) = v46[0];
          *(v13 + 24) = v22;
          sub_21B2B1578(v29, v21);
        }

        else
        {
          if (v29)
          {
            v32 = v20 + 7;
            if (__OFADD__(v20, 7))
            {
              goto LABEL_57;
            }

            v33 = v30 + 8;
            if (v32 < 0)
            {
              v32 = v20 + 14;
            }

            v34 = v32 >> 3;
            v35 = v34 - 1;
            v26 = v34 < 1;
            v36 = v34 + 62;
            if (!v26)
            {
              v36 = v35;
            }

            *(&v33[v31 + 8] + (v36 & 0xFFFFFFFFFFFFFFC0)) = v29;
            v37 = v31 / 8;
            v38 = v31 - (v36 & 0xFFFFFFFFFFFFFFF8);
            if (v38 >= 0)
            {
              v39 = 1 << v38;
            }

            else
            {
              v39 = 0;
            }

            *(v33 + v37) |= v39;
            v40 = v30[1];
            v10 = __OFADD__(v40, 1);
            v41 = v40 + 1;
            if (v10)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v43 = v30[2];
            v10 = __OFADD__(v43, 1);
            v44 = v43 + 1;
            if (v10)
            {
              goto LABEL_59;
            }

            v30[2] = v44;
            v10 = __OFADD__(v31, 1);
            v41 = v31 + 1;
            if (v10)
            {
              goto LABEL_56;
            }
          }

          v30[1] = v41;
        }

        v18 = *(a3 + 16);
        ++v19;
        if (!v18)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_66;
  }

  swift_beginAccess();
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = *v15;
    if (*v15 < v11)
    {
      if (v16 + 0x4000000000000000 < 0)
      {
        goto LABEL_61;
      }

      if (2 * v16 <= v11)
      {
        v16 = v11;
      }

      else
      {
        v16 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
    v17 = swift_allocObject();
    sub_21B2AF6C4(v15, v16, &v47);
    *(v17 + 16) = v47;

    *v3 = v17;
    v13 = v17;
    goto LABEL_15;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AABF0(int64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v5 = *(v4 + 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v6 < 0)
  {
    goto LABEL_66;
  }

  v10 = *(v9 + 8);
  if (v10 < v6)
  {
    goto LABEL_66;
  }

  if (v7 < 0 || v10 < v7)
  {
    goto LABEL_67;
  }

  v11 = __OFADD__(v5, v7 - v6);
  v12 = v5 + v7 - v6;
  if (v11)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v16 = *(v14 + 16);
    if (!v16)
    {
      goto LABEL_75;
    }

    v17 = *v16;
    if (*v16 < v12)
    {
      if (v17 + 0x4000000000000000 < 0)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if (2 * v17 <= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
    v18 = swift_allocObject();
    sub_21B2AF6C4(v16, v17, v46);
    *(v18 + 16) = *v46;

    *v1 = v18;
    v14 = v18;
    goto LABEL_19;
  }

  swift_beginAccess();
  v15 = *(v14 + 16);
  if (v15)
  {
    if (*v15 < v12)
    {
      sub_21B2B37BC(v12, 1, &qword_27CD7EC50, &qword_21B354898);
    }

LABEL_19:
    sub_21B2615FC(a1, v46, &qword_27CD7ED00, &qword_21B354A58);
    swift_beginAccess();
    if (v7 == v6)
    {
LABEL_20:
    }

    while (v6 < v7)
    {
      v23 = *(v8 + 16);
      if (!v23)
      {
        goto LABEL_70;
      }

      if (v6 >= v23[1])
      {
        goto LABEL_76;
      }

      if ((*(v23 + (v6 >> 3) + 64) >> (v6 & 7)))
      {
        v24 = *v23 + 7;
        if (__OFADD__(*v23, 7))
        {
          goto LABEL_60;
        }

        if (v24 < 0)
        {
          v24 = *v23 + 14;
        }

        v25 = v24 >> 3;
        v27 = v25 - 1;
        v26 = v25 < 1;
        v28 = v25 + 62;
        if (!v26)
        {
          v28 = v27;
        }

        v29 = *(&v23[v6 + 16] + (v28 & 0xFFFFFFFFFFFFFFC0));

        v30 = *(v14 + 16);
        if (!v30)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v29 = 0;
        v30 = *(v14 + 16);
        if (!v30)
        {
          goto LABEL_71;
        }
      }

      v20 = *v30;
      v31 = v30[1];
      if (v31 >= *v30)
      {
        v11 = __OFADD__(v31, 1);
        v42 = v31 + 1;
        if (v11)
        {
          goto LABEL_61;
        }

        if (v20 < v42)
        {
          if (v20 + 0x4000000000000000 < 0)
          {
            goto LABEL_64;
          }

          if (2 * v20 <= v42)
          {
            v20 = v42;
          }

          else
          {
            v20 *= 2;
          }
        }

        sub_21B235334(v30, v20, v45);
        sub_21B2B0C20(*(v14 + 16), *(v14 + 24), &qword_27CD7EC50, &qword_21B354898);
        v21 = v45[0];
        v22 = v45[1];
        *(v14 + 16) = v45[0];
        *(v14 + 24) = v22;
        sub_21B2B1578(v29, v21);
      }

      else
      {
        if (v29)
        {
          v32 = v20 + 7;
          if (__OFADD__(v20, 7))
          {
            goto LABEL_63;
          }

          v33 = v30 + 8;
          if (v32 < 0)
          {
            v32 = v20 + 14;
          }

          v34 = v32 >> 3;
          v35 = v34 - 1;
          v26 = v34 < 1;
          v36 = v34 + 62;
          if (!v26)
          {
            v36 = v35;
          }

          *(&v33[v31 + 8] + (v36 & 0xFFFFFFFFFFFFFFC0)) = v29;
          v37 = v31 / 8;
          v38 = v31 - (v36 & 0xFFFFFFFFFFFFFFF8);
          if (v38 >= 0)
          {
            v39 = 1 << v38;
          }

          else
          {
            v39 = 0;
          }

          *(v33 + v37) |= v39;
          v40 = v30[1];
          v11 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v11)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v43 = v30[2];
          v11 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v11)
          {
            goto LABEL_65;
          }

          v30[2] = v44;
          v11 = __OFADD__(v31, 1);
          v41 = v31 + 1;
          if (v11)
          {
            goto LABEL_62;
          }
        }

        v30[1] = v41;
      }

      if (v7 == ++v6)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AB028(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_92;
  }

  v64 = *(v4 + 8);
  v5 = *(a1 + 24);
  v68 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v62 = a1;
  if (*(a1 + 40))
  {
    if (v7 != 1 || (v8 = v5 + 2, !v5[2]))
    {
      v12 = 0;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = v5[4];
    v11 = v5[5];
  }

  else
  {
    v8 = v5 + 2;
    v9 = 1;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
  }

  swift_beginAccess();
  v13 = *(v68 + 16);
  if (!v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v10 < 0 || (v14 = *(v13 + 8), v14 < v10))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v11 < 0 || v14 < v11)
  {
    goto LABEL_83;
  }

  v12 = v11 - v10;
  if ((v9 & 1) == 0 && *v8 != 1)
  {
    v15 = v5 + 7;
    v16 = 1;
    while (v16 < *v8)
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      swift_beginAccess();
      v19 = *(v68 + 16);
      if (!v19)
      {
        goto LABEL_91;
      }

      if (v18 < 0)
      {
        goto LABEL_82;
      }

      v20 = *(v19 + 8);
      if (v20 < v18)
      {
        goto LABEL_82;
      }

      if (v17 < 0 || v20 < v17)
      {
        goto LABEL_83;
      }

      v21 = __OFADD__(v12, v17 - v18);
      v12 += v17 - v18;
      if (v21)
      {
        goto LABEL_85;
      }

      ++v16;
      v15 += 2;
      if (v16 == *v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_84;
  }

LABEL_24:
  v22 = v64 + v12;
  if (__OFADD__(v64, v12))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v66;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v25 = *(v24 + 16);
    v26 = v62;
    if (!v25)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (*v25 < v22)
    {
      sub_21B2B37BC(v22, 1, &qword_27CD7EC50, &qword_21B354898);
    }
  }

  else
  {
    swift_beginAccess();
    v27 = *(v24 + 16);
    if (!v27)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v28 = *v27;
    if (*v27 < v22)
    {
      if (v28 + 0x4000000000000000 < 0)
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (2 * v28 <= v22)
      {
        v28 = v22;
      }

      else
      {
        v28 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
    v29 = swift_allocObject();
    sub_21B2AF6C4(v27, v28, &v71);
    *(v29 + 16) = v71;

    *v66 = v29;
    v24 = v29;
    v26 = v62;
  }

  v30 = *(v26 + 8);
  v31 = *(v26 + 16);
  v67 = *(v26 + 24);
  v63 = *v26;
  v65 = *(v26 + 32);
  v32 = v5;
  v33 = *(v26 + 40);
  if (v7)
  {
    if (v7 == 1 && v5[2])
    {
      v34 = v5 + 4;
    }

    else
    {
      swift_beginAccess();
      v35 = *(v68 + 16);
      if (!v35)
      {
LABEL_95:
        __break(1u);
        goto LABEL_98;
      }

      v34 = (v35 + 8);
    }

    v32 = *v34;
  }

  sub_21B2615FC(v26, &v71, &qword_27CD7ED08, &qword_21B354A60);
  swift_beginAccess();
  swift_beginAccess();
  v36 = *(v68 + 16);
  if (!v36)
  {
    goto LABEL_88;
  }

  v37 = v68;
  while (1)
  {
    if (v32 == *(v36 + 8))
    {

      return sub_21B23A9F4(v67, v65, v33);
    }

    if ((sub_21B2D3BE8(v32, v5, v6, v7) & 1) == 0)
    {
      break;
    }

    if (v32 < 0)
    {
      goto LABEL_98;
    }

    swift_beginAccess();
    v41 = *(v37 + 16);
    if (!v41)
    {
      goto LABEL_89;
    }

    v42 = v41[1];
    if (v32 >= v42)
    {
      goto LABEL_98;
    }

    v43 = sub_21B2B1824(v32, v41, v42);
    *&v71 = v63;
    *(&v71 + 1) = v30;
    v72 = v31;
    v73 = v67;
    v74 = v65;
    v75 = v33;
    v32 = sub_21B2B336C(v32);
    v44 = *(v24 + 16);
    if (!v44)
    {
      goto LABEL_90;
    }

    v37 = v72;
    v5 = v73;
    v6 = v74;
    LOBYTE(v7) = v75;
    v38 = *v44;
    v45 = v44[1];
    if (v45 >= *v44)
    {
      v21 = __OFADD__(v45, 1);
      v57 = v45 + 1;
      if (v21)
      {
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

      if (v38 < v57)
      {
        if (v38 + 0x4000000000000000 < 0)
        {
          goto LABEL_80;
        }

        if (2 * v38 <= v57)
        {
          v38 = v57;
        }

        else
        {
          v38 *= 2;
        }
      }

      sub_21B235334(v44, v38, &v69);
      sub_21B2B0C20(*(v24 + 16), *(v24 + 24), &qword_27CD7EC50, &qword_21B354898);
      v39 = v69;
      v40 = v70;
      *(v24 + 16) = v69;
      *(v24 + 24) = v40;
      sub_21B2B1578(v43, v39);
    }

    else
    {
      if (v43)
      {
        v46 = v38 + 7;
        if (__OFADD__(v38, 7))
        {
          goto LABEL_79;
        }

        v47 = v44 + 8;
        if (v46 < 0)
        {
          v46 = v38 + 14;
        }

        v48 = v46 >> 3;
        v50 = v48 - 1;
        v49 = v48 < 1;
        v51 = v48 + 62;
        if (!v49)
        {
          v51 = v50;
        }

        *(&v47[v45 + 8] + (v51 & 0xFFFFFFFFFFFFFFC0)) = v43;
        v52 = v45 / 8;
        v53 = v45 - (v51 & 0xFFFFFFFFFFFFFFF8);
        if (v53 >= 0)
        {
          v54 = 1 << v53;
        }

        else
        {
          v54 = 0;
        }

        *(v47 + v52) |= v54;
        v55 = v44[1];
        v21 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v21)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v58 = v44[2];
        v21 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v21)
        {
          goto LABEL_81;
        }

        v44[2] = v59;
        v21 = __OFADD__(v45, 1);
        v56 = v45 + 1;
        if (v21)
        {
          goto LABEL_78;
        }
      }

      v44[1] = v56;
    }

    v36 = *(v68 + 16);
    if (!v36)
    {
      goto LABEL_88;
    }
  }

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_21B34B634();

  v69 = 0x6E6F697469736F70;
  v70 = 0xE900000000000020;
  v61 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v61);

  MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
LABEL_98:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AB69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_68;
  }

  v7 = *(v6 + 8);
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v9 = *(v8 + 8);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    goto LABEL_63;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v13 = *(v12 + 16);
    if (v13)
    {
      if (*v13 < v10)
      {
        sub_21B2B36B8(v10, 1, sub_21B235334);
      }

LABEL_15:

      swift_beginAccess();
      v17 = *(a3 + 16);
      if (!v17)
      {
        goto LABEL_65;
      }

      v18 = 0;
      while (1)
      {
        v21 = v17[1];
        if (v18 == v21)
        {
        }

        if (v18 >= v21)
        {
          goto LABEL_72;
        }

        v22 = *(v17 + (v18 >> 3) + 64) & (1 << (v18 & 7));
        if (v22)
        {
          v23 = *v17 + 7;
          if (__OFADD__(*v17, 7))
          {
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          if (v23 < 0)
          {
            v23 = *v17 + 14;
          }

          v24 = v23 >> 3;
          v26 = v24 - 1;
          v25 = v24 < 1;
          v27 = v24 + 62;
          if (!v25)
          {
            v27 = v26;
          }

          v28 = *(&v17[v18 + 16] + (v27 & 0xFFFFFFFFFFFFFFC0));
          v29 = *(v12 + 16);
          if (!v29)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v28 = 0;
          v29 = *(v12 + 16);
          if (!v29)
          {
            goto LABEL_66;
          }
        }

        v30 = *v29;
        v31 = v29[1];
        if (v31 >= *v29)
        {
          v41 = __OFADD__(v31, 1);
          v43 = v31 + 1;
          if (v41)
          {
            goto LABEL_57;
          }

          if (v30 < v43)
          {
            if (v30 + 0x4000000000000000 < 0)
            {
              goto LABEL_61;
            }

            if (2 * v30 <= v43)
            {
              v30 = v43;
            }

            else
            {
              v30 *= 2;
            }
          }

          sub_21B235334(v29, v30, v48);
          v44 = *(v12 + 16);
          if (!v44)
          {
            goto LABEL_67;
          }

          if ((*(v44 + 8) & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          MEMORY[0x21CEEEA30]();
          v19 = v48[0];
          v20 = v48[1];
          *(v12 + 16) = v48[0];
          *(v12 + 24) = v20;
          sub_21B2B0F30(v28, v22 == 0, v19);
        }

        else
        {
          if (v22)
          {
            v32 = v30 + 7;
            if (__OFADD__(v30, 7))
            {
              goto LABEL_60;
            }

            v33 = v29 + 8;
            if (v32 < 0)
            {
              v32 = v30 + 14;
            }

            v34 = v32 >> 3;
            v35 = v34 - 1;
            v25 = v34 < 1;
            v36 = v34 + 62;
            if (!v25)
            {
              v36 = v35;
            }

            *(&v33[v31 + 8] + (v36 & 0xFFFFFFFFFFFFFFC0)) = v28;
            v37 = v31 / 8;
            v38 = v31 - (v36 & 0xFFFFFFFFFFFFFFF8);
            if (v38 >= 0)
            {
              v39 = 1 << v38;
            }

            else
            {
              v39 = 0;
            }

            *(v33 + v37) |= v39;
            v40 = v29[1];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v45 = v29[2];
            v41 = __OFADD__(v45, 1);
            v46 = v45 + 1;
            if (v41)
            {
              goto LABEL_62;
            }

            v29[2] = v46;
            v41 = __OFADD__(v31, 1);
            v42 = v31 + 1;
            if (v41)
            {
              goto LABEL_58;
            }
          }

          v29[1] = v42;
        }

        v17 = *(a3 + 16);
        ++v18;
        if (!v17)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_70;
  }

  swift_beginAccess();
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *v14;
    if (*v14 < v10)
    {
      if (v15 + 0x4000000000000000 < 0)
      {
        goto LABEL_64;
      }

      if (2 * v15 <= v10)
      {
        v15 = v10;
      }

      else
      {
        v15 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
    v16 = swift_allocObject();
    sub_21B2AEE64(v14, v15, &v49);
    *(v16 + 16) = v49;

    *v3 = v16;
    v12 = v16;
    goto LABEL_15;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2ABA8C(int64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v5 = *(v4 + 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v6 < 0)
  {
    goto LABEL_68;
  }

  v10 = *(v9 + 8);
  if (v10 < v6)
  {
    goto LABEL_68;
  }

  if (v7 < 0 || v10 < v7)
  {
    goto LABEL_69;
  }

  v11 = __OFADD__(v5, v7 - v6);
  v12 = v5 + v7 - v6;
  if (v11)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v16 = *(v14 + 16);
    if (!v16)
    {
      goto LABEL_78;
    }

    v17 = *v16;
    if (*v16 < v12)
    {
      if (v17 + 0x4000000000000000 < 0)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (2 * v17 <= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
    v18 = swift_allocObject();
    sub_21B2AEE64(v16, v17, v48);
    *(v18 + 16) = *v48;

    *v1 = v18;
    v14 = v18;
    goto LABEL_19;
  }

  swift_beginAccess();
  v15 = *(v14 + 16);
  if (v15)
  {
    if (*v15 < v12)
    {
      sub_21B2B36B8(v12, 1, sub_21B235334);
    }

LABEL_19:
    sub_21B2615FC(a1, v48, &qword_27CD7E738, &qword_21B352358);
    swift_beginAccess();
    if (v7 == v6)
    {
LABEL_20:
    }

    while (v6 < v7)
    {
      v20 = *(v8 + 16);
      if (!v20)
      {
        goto LABEL_72;
      }

      if (v6 >= v20[1])
      {
        goto LABEL_79;
      }

      v21 = *(v20 + (v6 >> 3) + 64) & (1 << (v6 & 7));
      if (v21)
      {
        v22 = *v20 + 7;
        if (__OFADD__(*v20, 7))
        {
          goto LABEL_61;
        }

        if (v22 < 0)
        {
          v22 = *v20 + 14;
        }

        v23 = v22 >> 3;
        v25 = v23 - 1;
        v24 = v23 < 1;
        v26 = v23 + 62;
        if (!v24)
        {
          v26 = v25;
        }

        v27 = *(&v20[v6 + 16] + (v26 & 0xFFFFFFFFFFFFFFC0));
        v28 = *(v14 + 16);
        if (!v28)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v27 = 0;
        v28 = *(v14 + 16);
        if (!v28)
        {
          goto LABEL_73;
        }
      }

      v29 = *v28;
      v30 = v28[1];
      if (v30 >= *v28)
      {
        v11 = __OFADD__(v30, 1);
        v41 = v30 + 1;
        if (v11)
        {
          goto LABEL_62;
        }

        if (v29 < v41)
        {
          if (v29 + 0x4000000000000000 < 0)
          {
            goto LABEL_66;
          }

          if (2 * v29 <= v41)
          {
            v29 = v41;
          }

          else
          {
            v29 *= 2;
          }
        }

        sub_21B235334(v28, v29, v47);
        v42 = *(v14 + 16);
        if (!v42)
        {
          goto LABEL_74;
        }

        if ((*(v42 + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        MEMORY[0x21CEEEA30]();
        v43 = v47[0];
        v44 = v47[1];
        *(v14 + 16) = v47[0];
        *(v14 + 24) = v44;
        sub_21B2B0F30(v27, v21 == 0, v43);
      }

      else
      {
        if (v21)
        {
          v31 = v29 + 7;
          if (__OFADD__(v29, 7))
          {
            goto LABEL_65;
          }

          v32 = v28 + 8;
          if (v31 < 0)
          {
            v31 = v29 + 14;
          }

          v33 = v31 >> 3;
          v34 = v33 - 1;
          v24 = v33 < 1;
          v35 = v33 + 62;
          if (!v24)
          {
            v35 = v34;
          }

          *(&v32[v30 + 8] + (v35 & 0xFFFFFFFFFFFFFFC0)) = v27;
          v36 = v30 / 8;
          v37 = v30 - (v35 & 0xFFFFFFFFFFFFFFF8);
          if (v37 >= 0)
          {
            v38 = 1 << v37;
          }

          else
          {
            v38 = 0;
          }

          *(v32 + v36) |= v38;
          v39 = v28[1];
          v11 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v11)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v45 = v28[2];
          v11 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v11)
          {
            goto LABEL_67;
          }

          v28[2] = v46;
          v11 = __OFADD__(v30, 1);
          v40 = v30 + 1;
          if (v11)
          {
            goto LABEL_63;
          }
        }

        v28[1] = v40;
      }

      if (v7 == ++v6)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2ABEC8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_95;
  }

  v5 = *(a1 + 24);
  v69 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v63 = a1;
  v65 = *(v4 + 8);
  if (*(a1 + 40))
  {
    if (v7 != 1 || (v8 = v5 + 2, !v5[2]))
    {
      v12 = 0;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = v5[4];
    v11 = v5[5];
  }

  else
  {
    v8 = v5 + 2;
    v9 = 1;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
  }

  swift_beginAccess();
  v13 = *(v69 + 16);
  if (!v13)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v10 < 0 || (v14 = *(v13 + 8), v14 < v10))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v11 < 0 || v14 < v11)
  {
    goto LABEL_85;
  }

  v12 = v11 - v10;
  if ((v9 & 1) == 0 && *v8 != 1)
  {
    v15 = v5 + 7;
    v16 = 1;
    while (v16 < *v8)
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      swift_beginAccess();
      v19 = *(v69 + 16);
      if (!v19)
      {
        goto LABEL_94;
      }

      if (v18 < 0)
      {
        goto LABEL_84;
      }

      v20 = *(v19 + 8);
      if (v20 < v18)
      {
        goto LABEL_84;
      }

      if (v17 < 0 || v20 < v17)
      {
        goto LABEL_85;
      }

      v21 = __OFADD__(v12, v17 - v18);
      v12 += v17 - v18;
      if (v21)
      {
        goto LABEL_87;
      }

      ++v16;
      v15 += 2;
      if (v16 == *v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_86;
  }

LABEL_24:
  v22 = v65 + v12;
  if (__OFADD__(v65, v12))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v67;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v25 = *(v24 + 16);
    v26 = v63;
    if (!v25)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (*v25 < v22)
    {
      sub_21B2B36B8(v22, 1, sub_21B235334);
    }
  }

  else
  {
    swift_beginAccess();
    v27 = *(v24 + 16);
    if (!v27)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v28 = *v27;
    if (*v27 < v22)
    {
      if (v28 + 0x4000000000000000 < 0)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      if (2 * v28 <= v22)
      {
        v28 = v22;
      }

      else
      {
        v28 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
    v29 = swift_allocObject();
    sub_21B2AEE64(v27, v28, &v72);
    *(v29 + 16) = v72;

    *v67 = v29;
    v24 = v29;
    v26 = v63;
  }

  v64 = *v26;
  v30 = *(v26 + 16);
  v66 = *(v26 + 32);
  v68 = *(v26 + 24);
  v31 = v5;
  v32 = *(v26 + 40);
  if (v7)
  {
    if (v7 == 1 && v5[2])
    {
      v33 = v5 + 4;
    }

    else
    {
      swift_beginAccess();
      v34 = *(v69 + 16);
      if (!v34)
      {
LABEL_98:
        __break(1u);
        goto LABEL_101;
      }

      v33 = (v34 + 8);
    }

    v31 = *v33;
  }

  sub_21B2615FC(v26, &v72, &qword_27CD7E6F8, &qword_21B352318);
  swift_beginAccess();
  swift_beginAccess();
  v35 = *(v69 + 16);
  if (!v35)
  {
    goto LABEL_90;
  }

  v36 = v69;
  while (1)
  {
    if (v31 == *(v35 + 8))
    {

      return sub_21B23A9F4(v68, v66, v32);
    }

    if ((sub_21B2D3BE8(v31, v5, v6, v7) & 1) == 0)
    {
      break;
    }

    if (v31 < 0)
    {
      goto LABEL_101;
    }

    swift_beginAccess();
    v39 = *(v36 + 16);
    if (!v39)
    {
      goto LABEL_91;
    }

    v40 = v39[1];
    if (v31 >= v40)
    {
      goto LABEL_101;
    }

    v41 = sub_21B2B1790(v31, v39, v40);
    v43 = v42;
    v72 = v64;
    v73 = v30;
    v74 = v68;
    v75 = v66;
    v76 = v32;
    v31 = sub_21B2B336C(v31);
    v44 = *(v24 + 16);
    if (!v44)
    {
      goto LABEL_92;
    }

    v36 = v73;
    v5 = v74;
    v6 = v75;
    LOBYTE(v7) = v76;
    v45 = *v44;
    v46 = v44[1];
    if (v46 >= *v44)
    {
      v21 = __OFADD__(v46, 1);
      v49 = v46 + 1;
      if (v21)
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v45 < v49)
      {
        if (v45 + 0x4000000000000000 < 0)
        {
          goto LABEL_83;
        }

        if (2 * v45 <= v49)
        {
          v45 = v49;
        }

        else
        {
          v45 *= 2;
        }
      }

      sub_21B235334(v44, v45, &v70);
      v50 = *(v24 + 16);
      if (!v50)
      {
        goto LABEL_93;
      }

      if ((*(v50 + 8) & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

      MEMORY[0x21CEEEA30]();
      v37 = v70;
      v38 = v71;
      *(v24 + 16) = v70;
      *(v24 + 24) = v38;
      sub_21B2B0F30(v41, v43 & 1, v37);
    }

    else
    {
      if (v43)
      {
        v47 = v44[2];
        v21 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v21)
        {
          goto LABEL_81;
        }

        v44[2] = v48;
      }

      else
      {
        v51 = v45 + 7;
        if (__OFADD__(v45, 7))
        {
          goto LABEL_82;
        }

        v52 = v44 + 8;
        if (v51 < 0)
        {
          v51 = v45 + 14;
        }

        v53 = v51 >> 3;
        v55 = v53 - 1;
        v54 = v53 < 1;
        v56 = v53 + 62;
        if (!v54)
        {
          v56 = v55;
        }

        *(&v52[v46 + 8] + (v56 & 0xFFFFFFFFFFFFFFC0)) = v41;
        v57 = v46 / 8;
        v58 = v46 - (v56 & 0xFFFFFFFFFFFFFFF8);
        if (v58 >= 0)
        {
          v59 = 1 << v58;
        }

        else
        {
          v59 = 0;
        }

        *(v52 + v57) |= v59;
        v46 = v44[1];
      }

      v21 = __OFADD__(v46, 1);
      v60 = v46 + 1;
      if (v21)
      {
        goto LABEL_79;
      }

      v44[1] = v60;
    }

    v35 = *(v69 + 16);
    if (!v35)
    {
      goto LABEL_90;
    }
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  sub_21B34B634();

  v70 = 0x6E6F697469736F70;
  v71 = 0xE900000000000020;
  v62 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v62);

  MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
LABEL_101:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AC544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_66;
  }

  v7 = *(v6 + 8);
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v9 = *(v8 + 8);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    goto LABEL_62;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v13 = *(v12 + 16);
    if (v13)
    {
      if (*v13 < v10)
      {
        sub_21B2B3560(v10, 1, sub_21B2AFD1C, sub_21B2B0954);
      }

LABEL_15:

      swift_beginAccess();
      v17 = *(a3 + 16);
      if (!v17)
      {
        goto LABEL_64;
      }

      v18 = 0;
      v19 = 0;
      while (1)
      {
        v23 = v17[1];
        if (v19 == v23)
        {
        }

        if (v19 >= v23)
        {
          goto LABEL_70;
        }

        if ((*(v17 + (v19 >> 3) + 64) >> (v19 & 7)))
        {
          v24 = *v17 + 7;
          if (__OFADD__(*v17, 7))
          {
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          if (v24 < 0)
          {
            v24 = *v17 + 14;
          }

          v25 = v24 >> 3;
          v27 = v25 - 1;
          v26 = v25 < 1;
          v28 = v25 + 62;
          if (!v26)
          {
            v28 = v27;
          }

          v29 = &v17[v18] + (v28 & 0xFFFFFFFFFFFFFFC0);
          v31 = *(v29 + 128);
          v30 = *(v29 + 136);

          v32 = *(v12 + 16);
          if (!v32)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v31 = 0;
          v30 = 0;
          v32 = *(v12 + 16);
          if (!v32)
          {
            goto LABEL_65;
          }
        }

        v20 = *v32;
        v33 = v32[1];
        if (v33 >= *v32)
        {
          v45 = __OFADD__(v33, 1);
          v47 = v33 + 1;
          if (v45)
          {
            goto LABEL_57;
          }

          if (v20 < v47)
          {
            if (v20 + 0x4000000000000000 < 0)
            {
              goto LABEL_60;
            }

            if (2 * v20 <= v47)
            {
              v20 = v47;
            }

            else
            {
              v20 *= 2;
            }
          }

          sub_21B2AFD1C(v32, v20, v51);
          sub_21B2B0954(*(v12 + 16));
          v21 = v51[0];
          v22 = v51[1];
          *(v12 + 16) = v51[0];
          *(v12 + 24) = v22;
          sub_21B22EEB8(v31, v30, v21);
        }

        else
        {
          if (v30)
          {
            v34 = v20 + 7;
            if (__OFADD__(v20, 7))
            {
              goto LABEL_59;
            }

            v35 = v32 + 8;
            if (v34 < 0)
            {
              v34 = v20 + 14;
            }

            v36 = v34 >> 3;
            v37 = v36 - 1;
            v26 = v36 < 1;
            v38 = v36 + 62;
            if (!v26)
            {
              v38 = v37;
            }

            v39 = &v35[2 * v33] + (v38 & 0xFFFFFFFFFFFFFFC0);
            *(v39 + 64) = v31;
            *(v39 + 72) = v30;
            v40 = v32[1];
            v41 = v40 + 7;
            if (v40 >= 0)
            {
              v41 = v32[1];
            }

            v42 = v40 - (v41 & 0xFFFFFFFFFFFFFFF8);
            if (v42 >= 0)
            {
              v43 = 1 << v42;
            }

            else
            {
              v43 = 0;
            }

            *(v35 + (v41 >> 3)) |= v43;
            v44 = v32[1];
            v45 = __OFADD__(v44, 1);
            v46 = v44 + 1;
            if (v45)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v48 = v32[2];
            v45 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v45)
            {
              goto LABEL_61;
            }

            v32[2] = v49;
            v45 = __OFADD__(v33, 1);
            v46 = v33 + 1;
            if (v45)
            {
              goto LABEL_58;
            }
          }

          v32[1] = v46;
        }

        v17 = *(a3 + 16);
        v18 += 2;
        ++v19;
        if (!v17)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_68;
  }

  swift_beginAccess();
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *v14;
    if (*v14 < v10)
    {
      if (v15 + 0x4000000000000000 < 0)
      {
        goto LABEL_63;
      }

      if (2 * v15 <= v10)
      {
        v15 = v10;
      }

      else
      {
        v15 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
    v16 = swift_allocObject();
    sub_21B2AEFEC(v14, v15, &v52);
    *(v16 + 16) = v52;

    *v3 = v16;
    v12 = v16;
    goto LABEL_15;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AC948(int64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v5 = *(v4 + 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v6 < 0)
  {
    goto LABEL_68;
  }

  v10 = *(v9 + 8);
  if (v10 < v6)
  {
    goto LABEL_68;
  }

  if (v7 < 0 || v10 < v7)
  {
    goto LABEL_69;
  }

  v11 = __OFADD__(v5, v7 - v6);
  v12 = v5 + v7 - v6;
  if (v11)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v16 = *(v14 + 16);
    if (!v16)
    {
      goto LABEL_77;
    }

    v17 = *v16;
    if (*v16 < v12)
    {
      if (v17 + 0x4000000000000000 < 0)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      if (2 * v17 <= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
    v18 = swift_allocObject();
    sub_21B2AEFEC(v16, v17, v51);
    *(v18 + 16) = *v51;

    *v1 = v18;
    v14 = v18;
    goto LABEL_19;
  }

  swift_beginAccess();
  v15 = *(v14 + 16);
  if (v15)
  {
    if (*v15 < v12)
    {
      sub_21B2B3560(v12, 1, sub_21B2AFD1C, sub_21B2B0954);
    }

LABEL_19:
    sub_21B2615FC(a1, v51, &qword_27CD7E748, &qword_21B352368);
    swift_beginAccess();
    if (v7 == v6)
    {
LABEL_20:
    }

    v20 = 2 * v6;
    while (v6 < v7)
    {
      v24 = *(v8 + 16);
      if (!v24)
      {
        goto LABEL_72;
      }

      if (v6 >= v24[1])
      {
        goto LABEL_78;
      }

      if ((*(v24 + (v6 >> 3) + 64) >> (v6 & 7)))
      {
        v25 = *v24 + 7;
        if (__OFADD__(*v24, 7))
        {
          goto LABEL_62;
        }

        if (v25 < 0)
        {
          v25 = *v24 + 14;
        }

        v26 = v25 >> 3;
        v28 = v26 - 1;
        v27 = v26 < 1;
        v29 = v26 + 62;
        if (!v27)
        {
          v29 = v28;
        }

        v30 = &v24[v20] + (v29 & 0xFFFFFFFFFFFFFFC0);
        v32 = *(v30 + 128);
        v31 = *(v30 + 136);

        v33 = *(v14 + 16);
        if (!v33)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v32 = 0;
        v31 = 0;
        v33 = *(v14 + 16);
        if (!v33)
        {
          goto LABEL_73;
        }
      }

      v21 = *v33;
      v34 = v33[1];
      if (v34 >= *v33)
      {
        v11 = __OFADD__(v34, 1);
        v47 = v34 + 1;
        if (v11)
        {
          goto LABEL_63;
        }

        if (v21 < v47)
        {
          if (v21 + 0x4000000000000000 < 0)
          {
            goto LABEL_66;
          }

          if (2 * v21 <= v47)
          {
            v21 = v47;
          }

          else
          {
            v21 *= 2;
          }
        }

        sub_21B2AFD1C(v33, v21, v50);
        sub_21B2B0954(*(v14 + 16));
        v22 = v50[0];
        v23 = v50[1];
        *(v14 + 16) = v50[0];
        *(v14 + 24) = v23;
        sub_21B22EEB8(v32, v31, v22);
      }

      else
      {
        if (v31)
        {
          v35 = v21 + 7;
          if (__OFADD__(v21, 7))
          {
            goto LABEL_65;
          }

          v36 = v33 + 8;
          if (v35 < 0)
          {
            v35 = v21 + 14;
          }

          v37 = v35 >> 3;
          v38 = v37 - 1;
          v27 = v37 < 1;
          v39 = v37 + 62;
          if (!v27)
          {
            v39 = v38;
          }

          v40 = &v36[2 * v34] + (v39 & 0xFFFFFFFFFFFFFFC0);
          *(v40 + 64) = v32;
          *(v40 + 72) = v31;
          v41 = v33[1];
          v42 = v41 + 7;
          if (v41 >= 0)
          {
            v42 = v33[1];
          }

          v43 = v41 - (v42 & 0xFFFFFFFFFFFFFFF8);
          if (v43 >= 0)
          {
            v44 = 1 << v43;
          }

          else
          {
            v44 = 0;
          }

          *(v36 + (v42 >> 3)) |= v44;
          v45 = v33[1];
          v11 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v11)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v48 = v33[2];
          v11 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v11)
          {
            goto LABEL_67;
          }

          v33[2] = v49;
          v11 = __OFADD__(v34, 1);
          v46 = v34 + 1;
          if (v11)
          {
            goto LABEL_64;
          }
        }

        v33[1] = v46;
      }

      ++v6;
      v20 += 2;
      if (v7 == v6)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2ACD94(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_94;
  }

  v67 = *(v4 + 8);
  v5 = *(a1 + 24);
  v71 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v65 = a1;
  if (*(a1 + 40))
  {
    if (v7 != 1 || (v8 = v5 + 2, !v5[2]))
    {
      v12 = 0;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = v5[4];
    v11 = v5[5];
  }

  else
  {
    v8 = v5 + 2;
    v9 = 1;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
  }

  swift_beginAccess();
  v13 = *(v71 + 16);
  if (!v13)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v10 < 0 || (v14 = *(v13 + 8), v14 < v10))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v11 < 0 || v14 < v11)
  {
    goto LABEL_85;
  }

  v12 = v11 - v10;
  if ((v9 & 1) == 0 && *v8 != 1)
  {
    v15 = v5 + 7;
    v16 = 1;
    while (v16 < *v8)
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      swift_beginAccess();
      v19 = *(v71 + 16);
      if (!v19)
      {
        goto LABEL_93;
      }

      if (v18 < 0)
      {
        goto LABEL_84;
      }

      v20 = *(v19 + 8);
      if (v20 < v18)
      {
        goto LABEL_84;
      }

      if (v17 < 0 || v20 < v17)
      {
        goto LABEL_85;
      }

      v21 = __OFADD__(v12, v17 - v18);
      v12 += v17 - v18;
      if (v21)
      {
        goto LABEL_87;
      }

      ++v16;
      v15 += 2;
      if (v16 == *v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_86;
  }

LABEL_24:
  v22 = v67 + v12;
  if (__OFADD__(v67, v12))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v69;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v25 = *(v24 + 16);
    v26 = v65;
    if (!v25)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (*v25 < v22)
    {
      sub_21B2B3560(v22, 1, sub_21B2AFD1C, sub_21B2B0954);
    }
  }

  else
  {
    swift_beginAccess();
    v27 = *(v24 + 16);
    if (!v27)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v28 = *v27;
    if (*v27 < v22)
    {
      if (v28 + 0x4000000000000000 < 0)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (2 * v28 <= v22)
      {
        v28 = v22;
      }

      else
      {
        v28 *= 2;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
    v29 = swift_allocObject();
    sub_21B2AEFEC(v27, v28, &v74);
    *(v29 + 16) = v74;

    *v69 = v29;
    v24 = v29;
    v26 = v65;
  }

  v66 = *v26;
  v30 = *(v26 + 16);
  v68 = *(v26 + 32);
  v70 = *(v26 + 24);
  v31 = v5;
  v32 = *(v26 + 40);
  if (v7)
  {
    if (v7 == 1 && v5[2])
    {
      v33 = v5 + 4;
    }

    else
    {
      swift_beginAccess();
      v34 = *(v71 + 16);
      if (!v34)
      {
LABEL_97:
        __break(1u);
        goto LABEL_100;
      }

      v33 = (v34 + 8);
    }

    v31 = *v33;
  }

  sub_21B2615FC(v26, &v74, &qword_27CD7E6E8, &qword_21B352308);
  swift_beginAccess();
  swift_beginAccess();
  v35 = *(v71 + 16);
  if (!v35)
  {
    goto LABEL_90;
  }

  v36 = v71;
  while (1)
  {
    if (v31 == *(v35 + 8))
    {

      return sub_21B23A9F4(v70, v68, v32);
    }

    if ((sub_21B2D3BE8(v31, v5, v6, v7) & 1) == 0)
    {
      break;
    }

    if (v31 < 0)
    {
      goto LABEL_100;
    }

    swift_beginAccess();
    v40 = *(v36 + 16);
    if (!v40)
    {
      goto LABEL_91;
    }

    v41 = v40[1];
    if (v31 >= v41)
    {
      goto LABEL_100;
    }

    v42 = sub_21B232880(v31, v40, v41);
    v44 = v43;
    v74 = v66;
    v75 = v30;
    v76 = v70;
    v77 = v68;
    v78 = v32;
    v31 = sub_21B2B336C(v31);
    v45 = *(v24 + 16);
    if (!v45)
    {
      goto LABEL_92;
    }

    v36 = v75;
    v5 = v76;
    v6 = v77;
    LOBYTE(v7) = v78;
    v37 = *v45;
    v46 = v45[1];
    if (v46 >= *v45)
    {
      v21 = __OFADD__(v46, 1);
      v60 = v46 + 1;
      if (v21)
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v37 < v60)
      {
        if (v37 + 0x4000000000000000 < 0)
        {
          goto LABEL_82;
        }

        if (2 * v37 <= v60)
        {
          v37 = v60;
        }

        else
        {
          v37 *= 2;
        }
      }

      sub_21B2AFD1C(v45, v37, &v72);
      sub_21B2B0954(*(v24 + 16));
      v38 = v72;
      v39 = v73;
      *(v24 + 16) = v72;
      *(v24 + 24) = v39;
      sub_21B22EEB8(v42, v44, v38);
    }

    else
    {
      if (v44)
      {
        v47 = v37 + 7;
        if (__OFADD__(v37, 7))
        {
          goto LABEL_81;
        }

        v48 = v45 + 8;
        if (v47 < 0)
        {
          v47 = v37 + 14;
        }

        v49 = v47 >> 3;
        v51 = v49 - 1;
        v50 = v49 < 1;
        v52 = v49 + 62;
        if (!v50)
        {
          v52 = v51;
        }

        v53 = &v48[2 * v46] + (v52 & 0xFFFFFFFFFFFFFFC0);
        *(v53 + 64) = v42;
        *(v53 + 72) = v44;
        v54 = v45[1];
        v55 = v54 + 7;
        if (v54 >= 0)
        {
          v55 = v45[1];
        }

        v56 = v54 - (v55 & 0xFFFFFFFFFFFFFFF8);
        if (v56 >= 0)
        {
          v57 = 1 << v56;
        }

        else
        {
          v57 = 0;
        }

        *(v48 + (v55 >> 3)) |= v57;
        v58 = v45[1];
        v21 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v21)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v61 = v45[2];
        v21 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v21)
        {
          goto LABEL_83;
        }

        v45[2] = v62;
        v21 = __OFADD__(v46, 1);
        v59 = v46 + 1;
        if (v21)
        {
          goto LABEL_80;
        }
      }

      v45[1] = v59;
    }

    v35 = *(v71 + 16);
    if (!v35)
    {
      goto LABEL_90;
    }
  }

  v72 = 0;
  v73 = 0xE000000000000000;
  sub_21B34B634();

  v72 = 0x6E6F697469736F70;
  v73 = 0xE900000000000020;
  v64 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v64);

  MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
LABEL_100:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t *sub_21B2AD41C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v6 = *(v5 + 8);
  v7 = *(a1 + 16);
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v12 = *(v10 + 16);
    if (!v12)
    {
LABEL_57:
      __break(1u);
      return result;
    }

    v13 = *v12;
    if (*v12 >= v8)
    {
      goto LABEL_13;
    }

    if (v13 + 0x4000000000000000 >= 0)
    {
      if (2 * v13 <= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 *= 2;
      }

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
      v14 = swift_allocObject();
      sub_21B2AECDC(v12, v13, &v38);
      *(v14 + 16) = v38;

      *v1 = v14;
      v10 = v14;
      goto LABEL_14;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = swift_beginAccess();
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (*v11 < v8)
  {
    sub_21B2B36B8(v8, 1, sub_21B235334);
  }

LABEL_14:
  result = swift_beginAccess();
  if (v7)
  {
    for (i = (a1 + 40); ; i += 16)
    {
      result = *(v10 + 16);
      if (!result)
      {
        break;
      }

      v16 = *(i - 1);
      v17 = *i;
      v18 = *result;
      v19 = result[1];
      if (v19 >= *result)
      {
        v21 = __OFADD__(v19, 1);
        v23 = v19 + 1;
        if (v21)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v18 < v23)
        {
          if (v18 + 0x4000000000000000 < 0)
          {
            goto LABEL_50;
          }

          if (2 * v18 <= v23)
          {
            v18 = v23;
          }

          else
          {
            v18 *= 2;
          }
        }

        sub_21B235334(result, v18, v37);
        result = *(v10 + 16);
        if (!result)
        {
          goto LABEL_54;
        }

        if (result[1] < 0)
        {
          goto LABEL_47;
        }

        MEMORY[0x21CEEEA30]();
        v24 = v37[0];
        v25 = v37[1];
        *(v10 + 16) = v37[0];
        *(v10 + 24) = v25;
        result = sub_21B2357B0(v16, v17, v24);
      }

      else
      {
        if (*i)
        {
          v20 = result[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_48;
          }

          result[2] = v22;
        }

        else
        {
          v26 = v18 + 7;
          if (__OFADD__(v18, 7))
          {
            goto LABEL_49;
          }

          v27 = result + 8;
          if (v26 < 0)
          {
            v26 = v18 + 14;
          }

          v28 = v26 >> 3;
          v30 = v28 - 1;
          v29 = v28 < 1;
          v31 = v28 + 62;
          if (!v29)
          {
            v31 = v30;
          }

          *(&v27[v19 + 8] + (v31 & 0xFFFFFFFFFFFFFFC0)) = v16;
          v32 = result[1];
          v33 = v32 + 7;
          if (v32 >= 0)
          {
            v33 = result[1];
          }

          v34 = v32 - (v33 & 0xFFFFFFFFFFFFFFF8);
          if (v34 >= 0)
          {
            v35 = 1 << v34;
          }

          else
          {
            v35 = 0;
          }

          *(v27 + (v33 >> 3)) |= v35;
          v19 = result[1];
        }

        v21 = __OFADD__(v19, 1);
        v36 = v19 + 1;
        if (v21)
        {
          goto LABEL_46;
        }

        result[1] = v36;
      }

      if (!--v7)
      {
        return result;
      }
    }

    goto LABEL_53;
  }

  return result;
}

uint64_t *sub_21B2AD6FC(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v6 = *(v5 + 8);
  v7 = *(a1 + 16);
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v12 = *(v10 + 16);
    if (!v12)
    {
LABEL_55:
      __break(1u);
      return result;
    }

    v13 = *v12;
    if (*v12 >= v8)
    {
      goto LABEL_13;
    }

    if (v13 + 0x4000000000000000 >= 0)
    {
      if (2 * v13 <= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 *= 2;
      }

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
      v14 = swift_allocObject();
      sub_21B2AEE64(v12, v13, &v37);
      *(v14 + 16) = v37;

      *v1 = v14;
      v10 = v14;
      goto LABEL_14;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  result = swift_beginAccess();
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (*v11 < v8)
  {
    sub_21B2B36B8(v8, 1, sub_21B235334);
  }

LABEL_14:
  result = swift_beginAccess();
  if (v7)
  {
    for (i = (a1 + 40); ; i += 16)
    {
      result = *(v10 + 16);
      if (!result)
      {
        break;
      }

      v16 = *(i - 1);
      v17 = *i;
      v18 = *result;
      v19 = result[1];
      if (v19 >= *result)
      {
        v21 = __OFADD__(v19, 1);
        v23 = v19 + 1;
        if (v21)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v18 < v23)
        {
          if (v18 + 0x4000000000000000 < 0)
          {
            goto LABEL_48;
          }

          if (2 * v18 <= v23)
          {
            v18 = v23;
          }

          else
          {
            v18 *= 2;
          }
        }

        sub_21B235334(result, v18, v36);
        result = *(v10 + 16);
        if (!result)
        {
          goto LABEL_52;
        }

        if (result[1] < 0)
        {
          goto LABEL_45;
        }

        MEMORY[0x21CEEEA30]();
        v24 = v36[0];
        v25 = v36[1];
        *(v10 + 16) = v36[0];
        *(v10 + 24) = v25;
        result = sub_21B2B0F30(v16, v17, v24);
      }

      else
      {
        if (*i)
        {
          v20 = result[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_46;
          }

          result[2] = v22;
        }

        else
        {
          v26 = v18 + 7;
          if (__OFADD__(v18, 7))
          {
            goto LABEL_47;
          }

          v27 = result + 8;
          if (v26 < 0)
          {
            v26 = v18 + 14;
          }

          v28 = v26 >> 3;
          v30 = v28 - 1;
          v29 = v28 < 1;
          v31 = v28 + 62;
          if (!v29)
          {
            v31 = v30;
          }

          *(&v27[v19 + 8] + (v31 & 0xFFFFFFFFFFFFFFC0)) = v16;
          v32 = v19 / 8;
          v33 = v19 - (v31 & 0xFFFFFFFFFFFFFFF8);
          if (v33 >= 0)
          {
            v34 = 1 << v33;
          }

          else
          {
            v34 = 0;
          }

          *(v27 + v32) |= v34;
          v19 = result[1];
        }

        v21 = __OFADD__(v19, 1);
        v35 = v19 + 1;
        if (v21)
        {
          goto LABEL_44;
        }

        result[1] = v35;
      }

      if (!--v7)
      {
        return result;
      }
    }

    goto LABEL_51;
  }

  return result;
}

uint64_t sub_21B2AD9D8(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = *(v5 + 8);
  v7 = *(a1 + 16);
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v12 = *(v10 + 16);
    if (!v12)
    {
LABEL_54:
      __break(1u);
      return result;
    }

    v13 = *v12;
    if (*v12 >= v8)
    {
      goto LABEL_13;
    }

    if (v13 + 0x4000000000000000 >= 0)
    {
      if (2 * v13 <= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 *= 2;
      }

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
      v14 = swift_allocObject();
      sub_21B2AEFEC(v12, v13, &v41);
      *(v14 + 16) = v41;

      *v1 = v14;
      v10 = v14;
      goto LABEL_14;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  result = swift_beginAccess();
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (*v11 < v8)
  {
    sub_21B2B3560(v8, 1, sub_21B2AFD1C, sub_21B2B0954);
  }

LABEL_14:
  result = swift_beginAccess();
  if (v7)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v18 = *(v10 + 16);
      if (!v18)
      {
        break;
      }

      v19 = *(i - 1);
      v20 = *i;
      v22 = *v18;
      v21 = v18[1];
      if (v21 >= *v18)
      {
        v35 = __OFADD__(v21, 1);
        v37 = v21 + 1;
        if (v35)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v22 < v37)
        {
          if (v22 + 0x4000000000000000 < 0)
          {
            goto LABEL_47;
          }

          if (2 * v22 <= v37)
          {
            v22 = v37;
          }

          else
          {
            v22 *= 2;
          }
        }

        sub_21B2AFD1C(v18, v22, v40);
        sub_21B2B0954(*(v10 + 16));
        v16 = v40[0];
        v17 = v40[1];
        *(v10 + 16) = v40[0];
        *(v10 + 24) = v17;
        sub_21B22EEB8(v19, v20, v16);
      }

      else
      {
        if (v20)
        {
          v23 = v22 + 7;
          if (__OFADD__(v22, 7))
          {
            goto LABEL_46;
          }

          v24 = v18 + 8;
          if (v23 < 0)
          {
            v23 = v22 + 14;
          }

          v25 = v23 >> 3;
          v27 = v25 - 1;
          v26 = v25 < 1;
          v28 = v25 + 62;
          if (!v26)
          {
            v28 = v27;
          }

          v29 = &v24[2 * v21] + (v28 & 0xFFFFFFFFFFFFFFC0);
          *(v29 + 64) = v19;
          *(v29 + 72) = v20;
          v30 = v18[1];
          v31 = v30 + 7;
          if (v30 >= 0)
          {
            v31 = v18[1];
          }

          v32 = v30 - (v31 & 0xFFFFFFFFFFFFFFF8);
          if (v32 >= 0)
          {
            v33 = 1 << v32;
          }

          else
          {
            v33 = 0;
          }

          *(v24 + (v31 >> 3)) |= v33;
          v34 = v18[1];
          v35 = __OFADD__(v34, 1);
          v36 = v34 + 1;
          if (v35)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v38 = v18[2];
          v35 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v35)
          {
            goto LABEL_48;
          }

          v18[2] = v39;
          v35 = __OFADD__(v21, 1);
          v36 = v21 + 1;
          if (v35)
          {
            goto LABEL_45;
          }
        }

        v18[1] = v36;
      }

      if (!--v7)
      {
        return result;
      }
    }

    goto LABEL_51;
  }

  return result;
}

uint64_t sub_21B2ADD04(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = *(v5 + 8);
  v7 = *(a1 + 16);
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v12 = *(v10 + 16);
    if (!v12)
    {
LABEL_52:
      __break(1u);
      return result;
    }

    v13 = *v12;
    if (*v12 >= v8)
    {
      goto LABEL_13;
    }

    if (v13 + 0x4000000000000000 >= 0)
    {
      if (2 * v13 <= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 *= 2;
      }

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E338, &qword_21B351C50);
      v14 = swift_allocObject();
      sub_21B2AF50C(v12, v13, &v41);
      *(v14 + 16) = v41;

      *v1 = v14;
      v10 = v14;
      goto LABEL_14;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = swift_beginAccess();
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (*v11 < v8)
  {
    sub_21B2B3560(v8, 1, sub_21B2B0554, sub_21B2B0D4C);
  }

LABEL_14:
  result = swift_beginAccess();
  if (v7)
  {
    for (i = (a1 + 48); ; i += 3)
    {
      v18 = *(v10 + 16);
      if (!v18)
      {
        break;
      }

      v19 = *(i - 2);
      v20 = *(i - 1);
      v21 = *i;
      v23 = *v18;
      v22 = v18[1];
      if (v22 >= *v18)
      {
        v35 = __OFADD__(v22, 1);
        v37 = v22 + 1;
        if (v35)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (v23 < v37)
        {
          if (v23 + 0x4000000000000000 < 0)
          {
            goto LABEL_45;
          }

          if (2 * v23 <= v37)
          {
            v23 = v37;
          }

          else
          {
            v23 *= 2;
          }
        }

        sub_21B260EC4(*(i - 2), *(i - 1), *i);
        sub_21B2B0554(v18, v23, v40);
        sub_21B2B0D4C(*(v10 + 16));
        v16 = v40[0];
        v17 = v40[1];
        *(v10 + 16) = v40[0];
        *(v10 + 24) = v17;
        sub_21B2B14B8(v19, v20, v21, v16);
        result = sub_21B260F10(v19, v20, v21);
      }

      else
      {
        if (v19)
        {
          v24 = v23 + 7;
          if (__OFADD__(v23, 7))
          {
            goto LABEL_44;
          }

          v25 = v18 + 8;
          if (v24 < 0)
          {
            v24 = v23 + 14;
          }

          v26 = v24 >> 3;
          v28 = v26 - 1;
          v27 = v26 < 1;
          v29 = v26 + 62;
          if (!v27)
          {
            v29 = v28;
          }

          v30 = &v25[3 * v22] + (v29 & 0xFFFFFFFFFFFFFFC0);
          *(v30 + 64) = v19;
          *(v30 + 72) = v20;
          *(v30 + 80) = v21;
          v31 = v22 / 8;
          v32 = v22 - (v30 & 0xFFFFFFFFFFFFFFF8);
          if (v32 >= 0)
          {
            v33 = 1 << v32;
          }

          else
          {
            v33 = 0;
          }

          *(v25 + v31) |= v33;
          v34 = v18[1];
          v35 = __OFADD__(v34, 1);
          v36 = v34 + 1;
          if (v35)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v38 = v18[2];
          v35 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v35)
          {
            goto LABEL_46;
          }

          v18[2] = v39;
          v35 = __OFADD__(v22, 1);
          v36 = v22 + 1;
          if (v35)
          {
            goto LABEL_43;
          }
        }

        v18[1] = v36;
        result = sub_21B260EC4(v19, v20, v21);
      }

      if (!--v7)
      {
        return result;
      }
    }

    goto LABEL_49;
  }

  return result;
}