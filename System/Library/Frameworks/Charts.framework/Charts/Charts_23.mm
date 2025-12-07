double sub_1AAE62928(double (*a1)(double), double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a11;
  v17 = a9;
  v19 = a1(a2);
  v21 = v20;
  v23 = sub_1AAF424D8(a8, v17, v19, a3, a4);
  sub_1AAF424D8(a10, v13, v21, a5, a6);
  return v23;
}

uint64_t VectorizedLinePlotContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Vectorizer(0, *(a1 + 16), *(a1 + 24), a4);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v5 + 8))(v7, v4);
}

void _s6Charts23FunctionLinePlotContentV012_layoutChartE0yyAC_AA01_gE12LayoutInputsVtFZ_0(_OWORD *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (!*(v3 + 16))
  {
    v8 = 0;
    goto LABEL_10;
  }

  v5 = sub_1AACB6398(0);
  if (v6)
  {
    v7 = *(*(v3 + 56) + 72 * v5 + 40);
    if (v7 >> 8 <= 0xFE)
    {
      v8 = (v7 & 0xFF00) != 768;
      if (*(v3 + 16))
      {
        goto LABEL_8;
      }

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  v8 = 0;
  if (!*(v3 + 16))
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = sub_1AACB6398(1u);
  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = *(*(v3 + 56) + 72 * v9 + 40);
  if (v11 >> 8 > 0xFE)
  {
    goto LABEL_10;
  }

  v12 = (v11 & 0xFF00) != 768;
LABEL_11:
  v13 = a1[5];
  v104[4] = a1[4];
  v104[5] = v13;
  v14 = a1[7];
  v104[6] = a1[6];
  v104[7] = v14;
  v15 = a1[1];
  v104[0] = *a1;
  v104[1] = v15;
  v16 = a1[3];
  v104[2] = a1[2];
  v104[3] = v16;
  v17 = sub_1AAE632DC(v104);
  if (!v17)
  {
    v48 = sub_1AAD35738(v104);
    v88 = *(v48 + 8);
    v90 = *v48;
    v86 = *(v48 + 16);
    v82 = *(v48 + 40);
    v83 = *(v48 + 32);
    v94 = v12;
    v81 = *(v48 + 48);
    v91 = *(v48 + 64);
    v49 = *(v48 + 72);
    v50 = *(v48 + 80);
    v80 = *(v48 + 88);
    v92 = *(v48 + 96);
    v51 = a1[3];
    v98 = a1[2];
    v99 = v51;
    v52 = a1[7];
    v102 = a1[6];
    v103 = v52;
    v53 = a1[5];
    v100 = a1[4];
    v101 = v53;
    v54 = a1[1];
    v96 = *a1;
    v97 = v54;
    v55 = sub_1AAD35738(&v96);
    v56 = *(v55 + 32);
    v57 = v8;
    v58 = *(v55 + 40);
    v59 = *(v55 + 48);
    sub_1AACD7304(*v55, *(v55 + 8), *(v55 + 16));

    sub_1AACD7304(v56, v58, v59);

    sub_1AAD04750(v83, v82, v81);

    sub_1AAD04750(v90, v88, v86);

    if (((v57 | v50) & 1) == 0)
    {
      swift_beginAccess();
      if ((~*&v91 & 0x7FF0000000000000) != 0)
      {
        v60 = v91;
        if (*(v4 + 40))
        {
          v61 = v91;
        }

        else
        {
          v61 = *(v4 + 24);
          if (v61 >= v91)
          {
            v61 = v91;
          }

          if (*(v4 + 32) >= v91)
          {
            v60 = *(v4 + 32);
          }
        }

        *(v4 + 24) = v61;
        *(v4 + 32) = v60;
        *(v4 + 40) = 0;
      }

      if ((~*&v49 & 0x7FF0000000000000) != 0)
      {
        v62 = v49;
        if (*(v4 + 40))
        {
          v63 = v49;
        }

        else
        {
          v63 = *(v4 + 24);
          if (v63 >= v49)
          {
            v63 = v49;
          }

          if (*(v4 + 32) >= v49)
          {
            v62 = *(v4 + 32);
          }
        }

        *(v4 + 24) = v63;
        *(v4 + 32) = v62;
        *(v4 + 40) = 0;
      }
    }

    if (!v94)
    {
      if (v50)
      {
        v64 = swift_allocObject();
        *(v64 + 16) = v80;
        *(v64 + 24) = v92;
        v65 = swift_allocObject();
        *(v65 + 16) = v80;
        *(v65 + 24) = v92;
        swift_beginAccess();
        v66 = *(v4 + 240);
        swift_retain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 240) = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = sub_1AAD691C4(0, *(v66 + 2) + 1, 1, v66);
          *(v4 + 240) = v66;
        }

        v69 = *(v66 + 2);
        v68 = *(v66 + 3);
        if (v69 >= v68 >> 1)
        {
          v66 = sub_1AAD691C4((v68 > 1), v69 + 1, 1, v66);
        }

        *(v66 + 2) = v69 + 1;
        v70 = &v66[32 * v69];
        *(v70 + 4) = sub_1AAE52A04;
        *(v70 + 5) = v64;
        *(v70 + 6) = sub_1AAE52A1C;
        *(v70 + 7) = v65;
        *(v4 + 240) = v66;
        swift_endAccess();
      }

      else
      {
        sub_1AAF7F860(0, 0, 0, 1, v80, v91, v49);
        v72 = v71;
        v74 = v73;
        v75 = v71;
        swift_beginAccess();
        if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v76 = v72;
          if ((*(v4 + 112) & 1) == 0)
          {
            v77 = *(v4 + 96);
            v76 = *(v4 + 104);
            if (v77 >= v72)
            {
              v77 = v72;
            }

            if (v72 > v76)
            {
              v76 = v72;
            }

            v72 = v77;
          }

          *(v4 + 96) = v72;
          *(v4 + 104) = v76;
          *(v4 + 112) = 0;
        }

        if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v78 = v74;
          if ((*(v4 + 112) & 1) == 0)
          {
            v79 = *(v4 + 96);
            v78 = *(v4 + 104);
            if (v79 >= v74)
            {
              v79 = v74;
            }

            if (v74 > v78)
            {
              v78 = v74;
            }

            v74 = v79;
          }

          *(v4 + 96) = v74;
          *(v4 + 104) = v78;
          *(v4 + 112) = 0;
        }
      }
    }

LABEL_67:

    return;
  }

  if (v17 != 1)
  {
    sub_1AAD35738(v104);
    return;
  }

  v93 = v12;
  v18 = sub_1AAD35738(v104);
  v85 = *(v18 + 8);
  v87 = *v18;
  v84 = *(v18 + 16);
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);
  v21 = *(v18 + 48);
  v22 = *(v18 + 64);
  v89 = v8;
  v23 = *(v18 + 72);
  v24 = *(v18 + 80);
  v25 = a1[7];
  v102 = a1[6];
  v103 = v25;
  v26 = a1[5];
  v100 = a1[4];
  v101 = v26;
  v27 = a1[3];
  v98 = a1[2];
  v99 = v27;
  v28 = a1[1];
  v96 = *a1;
  v97 = v28;
  v29 = sub_1AAD35738(&v96);
  sub_1AAE634E8(v29, v95, sub_1AAE632E8);
  sub_1AAD04750(v22, v23, v24);

  sub_1AAD04750(v19, v20, v21);

  sub_1AAD04750(v87, v85, v84);

  if (!v89)
  {

    sub_1AAF870B0();
    v31 = v30;
    v33 = v32;
    v34 = v30;

    swift_beginAccess();
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v35 = v31;
      if ((*(v4 + 40) & 1) == 0)
      {
        v36 = *(v4 + 24);
        v35 = *(v4 + 32);
        if (v36 >= v31)
        {
          v36 = v31;
        }

        if (v31 > v35)
        {
          v35 = v31;
        }

        v31 = v36;
      }

      *(v4 + 24) = v31;
      *(v4 + 32) = v35;
      *(v4 + 40) = 0;
    }

    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v37 = v33;
      if ((*(v4 + 40) & 1) == 0)
      {
        v38 = *(v4 + 24);
        v37 = *(v4 + 32);
        if (v38 >= v33)
        {
          v38 = v33;
        }

        if (v33 > v37)
        {
          v37 = v33;
        }

        v33 = v38;
      }

      *(v4 + 24) = v33;
      *(v4 + 32) = v37;
      *(v4 + 40) = 0;
    }
  }

  if (v93)
  {
    goto LABEL_67;
  }

  sub_1AAF870B4();
  v40 = v39;
  v42 = v41;
  v43 = v39;

  swift_beginAccess();
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v44 = v40;
    if ((*(v4 + 112) & 1) == 0)
    {
      v45 = *(v4 + 96);
      v44 = *(v4 + 104);
      if (v45 >= v40)
      {
        v45 = v40;
      }

      if (v40 > v44)
      {
        v44 = v40;
      }

      v40 = v45;
    }

    *(v4 + 96) = v40;
    *(v4 + 104) = v44;
    *(v4 + 112) = 0;
  }

  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v46 = v42;
    if ((*(v4 + 112) & 1) == 0)
    {
      v47 = *(v4 + 96);
      v46 = *(v4 + 104);
      if (v47 >= v42)
      {
        v47 = v42;
      }

      if (v42 > v46)
      {
        v46 = v42;
      }

      v42 = v47;
    }

    *(v4 + 96) = v42;
    *(v4 + 104) = v46;
    *(v4 + 112) = 0;
  }
}

void sub_1AAE63220(uint64_t a1)
{
  if (!qword_1EB425A88[0])
  {
    sub_1AAD26778(255, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();
    v1 = sub_1AAF8EFE4();
    if (!v2)
    {
      atomic_store(v1, qword_1EB425A88);
    }
  }
}

void sub_1AAE632E8(uint64_t a1)
{
  if (!qword_1EB425BA8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1AAD26778(255, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1AACFDCAC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB425BA8);
    }
  }
}

uint64_t sub_1AAE63428()
{

  sub_1AAD04750(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  sub_1AAD04750(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AAE634E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE635AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAE63674(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE636C8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE6377C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
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

double sub_1AAE637CC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
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
      *(a1 + 128) = 1;
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
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE63850(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80) & 1 | (a2 << 62);
  *(result + 48) &= 1uLL;
  *(result + 80) = v2;
  return result;
}

BOOL sub_1AAE63890(_OWORD *a1, _OWORD *a2)
{
  v3 = a1[7];
  v27[6] = a1[6];
  v27[7] = v3;
  v27[8] = a1[8];
  v4 = a1[3];
  v27[2] = a1[2];
  v27[3] = v4;
  v5 = a1[5];
  v27[4] = a1[4];
  v27[5] = v5;
  v6 = a1[1];
  v27[0] = *a1;
  v27[1] = v6;
  v7 = sub_1AACDB99C(v27);
  v8 = sub_1AACD2C84(v27);
  v9 = 3;
  if (((1 << v7) & 0x2D) != 0)
  {
    v9 = *(v8 + 48);
    if (*(v8 + 48) < 0)
    {
      v9 &= 1u;
    }

    else
    {
      v12 = v8 + 32;
      v10 = *(v8 + 32);
      v11 = *(v12 + 8);
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_9;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      sub_1AAD0E818(v10, v11, v13);
    }
  }

LABEL_9:
  v14 = a2[7];
  v26[6] = a2[6];
  v26[7] = v14;
  v26[8] = a2[8];
  v15 = a2[3];
  v26[2] = a2[2];
  v26[3] = v15;
  v16 = a2[5];
  v26[4] = a2[4];
  v26[5] = v16;
  v17 = a2[1];
  v26[0] = *a2;
  v26[1] = v17;
  v18 = sub_1AACDB99C(v26);
  v19 = sub_1AACD2C84(v26);
  v20 = 3;
  if (((1 << v18) & 0x2D) != 0)
  {
    v20 = *(v19 + 48);
    if (*(v19 + 48) < 0)
    {
      v20 &= 1u;
    }

    else
    {
      v23 = v19 + 32;
      v21 = *(v19 + 32);
      v22 = *(v23 + 8);
      if (!v20)
      {
        v24 = 0;
LABEL_20:
        sub_1AAD0E818(v21, v22, v24);
        if (v9 != 3)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      if (v20 == 1)
      {
        v24 = 1;
        goto LABEL_20;
      }
    }
  }

  if (v9 != 3)
  {
LABEL_21:
    if (v9 == v20)
    {
      return 1;
    }

    if (v9)
    {
      if (!v20 || v9 == 1)
      {
        return 1;
      }

      return v20 != 1;
    }

    return 0;
  }

LABEL_16:
  result = 1;
  if (v20 != 3 && v20)
  {
    return v20 != 1;
  }

  return result;
}

uint64_t sub_1AAE63A24()
{
  if (qword_1ED9B0BD0 != -1)
  {
    swift_once();
  }

  return sub_1AAD9B194(&qword_1ED9C3450, &unk_1ED9C33F0);
}

BOOL sub_1AAE63A88(_OWORD *a1, __int128 *a2)
{
  v4 = a2[6];
  v5 = a2[7];
  v6 = a2[4];
  v100 = a2[5];
  v101 = v4;
  v102[0] = v5;
  *(v102 + 9) = *(a2 + 121);
  v7 = a2[3];
  v97 = a2[2];
  v98 = v7;
  v99 = v6;
  v8 = a2[1];
  v95 = *a2;
  v96 = v8;
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[4];
  v93[5] = a1[5];
  v93[6] = v9;
  v94[0] = v10;
  *(v94 + 9) = *(a1 + 121);
  v12 = a1[3];
  v93[2] = a1[2];
  v93[3] = v12;
  v93[4] = v11;
  v13 = a1[1];
  v93[0] = *a1;
  v93[1] = v13;
  v14 = sub_1AAE63EF0(v93);
  if (v14 > 2)
  {
    if (v14 == 4)
    {
      goto LABEL_6;
    }

    v32 = sub_1AAD357A8(v93);
    v85 = *v32;
    v33 = v32[4];
    v35 = v32[1];
    v34 = v32[2];
    v88 = v32[3];
    v89 = v33;
    v86 = v35;
    v87 = v34;
    v37 = v32[6];
    v36 = v32[7];
    v38 = v32[5];
    *(v92 + 9) = *(v32 + 121);
    v91 = v37;
    v92[0] = v36;
    v90 = v38;
    v21 = *(&v88 + 1);
    v29 = v88;
    v22 = v33;
    v17 = v86;
    v75 = *(&v85 + 1);
    v23 = BYTE8(v86);
    v18 = *(&v87 + 1);
    v19 = v87;
    v16 = v85;
    v39 = &v85;
LABEL_9:
    sub_1AAE63EFC(v39, &v77);
    goto LABEL_10;
  }

  if (!v14)
  {
    v40 = sub_1AAD357A8(v93);
    v16 = *v40;
    v17 = *(v40 + 16);
    v75 = *(v40 + 8);
    v19 = *(v40 + 32);
    v18 = *(v40 + 40);
    v41 = *(v40 + 48);
    v21 = *(v40 + 56);
    v22 = *(v40 + 64);
    v23 = *(v40 + 24);
    v42 = a1[1];
    v85 = *a1;
    v86 = v42;
    v43 = a1[3];
    v87 = a1[2];
    v44 = a1[6];
    v45 = a1[7];
    v46 = a1[4];
    v90 = a1[5];
    v91 = v44;
    v92[0] = v45;
    v47 = *(a1 + 121);
    v29 = v41;
    *(v92 + 9) = v47;
    v88 = v43;
    v89 = v46;
    v39 = sub_1AAD357A8(&v85);
    goto LABEL_9;
  }

  if (v14 == 1)
  {
LABEL_6:
    sub_1AAD357A8(v93);
    v31 = 3;
    goto LABEL_14;
  }

  v15 = sub_1AAD357A8(v93);
  v16 = *v15;
  v17 = *(v15 + 16);
  v75 = *(v15 + 8);
  v19 = *(v15 + 32);
  v18 = *(v15 + 40);
  v20 = *(v15 + 48);
  v21 = *(v15 + 56);
  v22 = *(v15 + 64);
  v23 = *(v15 + 24);
  v24 = a1[1];
  v85 = *a1;
  v86 = v24;
  v25 = a1[7];
  v91 = a1[6];
  v92[0] = v25;
  *(v92 + 9) = *(a1 + 121);
  v26 = a1[5];
  v89 = a1[4];
  v90 = v26;
  v27 = a1[2];
  v28 = a1[3];
  v29 = v20;
  v87 = v27;
  v88 = v28;
  v30 = sub_1AAD357A8(&v85);
  sub_1AAE63FAC(v30, &v77);
LABEL_10:
  *&v85 = v16;
  *(&v85 + 1) = v75;
  *&v86 = v17;
  BYTE8(v86) = v23 & 1;
  *&v87 = v19;
  *(&v87 + 1) = v18;
  *&v88 = v29;
  *(&v88 + 1) = v21;
  if ((v22 & 0x80u) == 0)
  {
    v31 = v22;
  }

  else
  {
    v31 = v21;
  }

  LOBYTE(v89) = v22;
  sub_1AAE63F58(&v85);
LABEL_14:
  v48 = a2[7];
  v91 = a2[6];
  v92[0] = v48;
  *(v92 + 9) = *(a2 + 121);
  v49 = a2[3];
  v87 = a2[2];
  v88 = v49;
  v50 = a2[5];
  v89 = a2[4];
  v90 = v50;
  v51 = a2[1];
  v85 = *a2;
  v86 = v51;
  v52 = sub_1AAE63EF0(&v85);
  if (v52 > 2)
  {
    if (v52 == 4)
    {
      goto LABEL_19;
    }

    v66 = sub_1AAD357A8(&v85);
    v77 = *v66;
    v67 = v66[4];
    v69 = v66[1];
    v68 = v66[2];
    v80 = v66[3];
    v81 = v67;
    v78 = v69;
    v79 = v68;
    v71 = v66[6];
    v70 = v66[7];
    v72 = v66[5];
    *(v84 + 9) = *(v66 + 121);
    v83 = v71;
    v84[0] = v70;
    v82 = v72;
    v60 = *(&v80 + 1);
    v59 = v80;
    v61 = v67;
    v55 = *(&v77 + 1);
    v56 = v78;
    v62 = BYTE8(v78);
    v57 = *(&v79 + 1);
    v58 = v79;
    v54 = v77;
    v73 = &v77;
  }

  else
  {
    if (v52)
    {
      if (v52 != 1)
      {
        v53 = sub_1AAD357A8(&v85);
        v54 = *v53;
        v55 = *(v53 + 8);
        v56 = *(v53 + 16);
        v58 = *(v53 + 32);
        v57 = *(v53 + 40);
        v59 = *(v53 + 48);
        v60 = *(v53 + 56);
        v61 = *(v53 + 64);
        v62 = *(v53 + 24);
        v77 = v95;
        v78 = v96;
        v79 = v97;
        v82 = v100;
        v83 = v101;
        v84[0] = v102[0];
        *(v84 + 9) = *(v102 + 9);
        v80 = v98;
        v81 = v99;
        v63 = sub_1AAD357A8(&v77);
        sub_1AAE63FAC(v63, v76);
        goto LABEL_30;
      }

LABEL_19:
      sub_1AAD357A8(&v85);
      v64 = 3;
      if (v31 == 3)
      {
        goto LABEL_34;
      }

LABEL_20:
      if (v64 == 3 || v31 != v64)
      {
        if (!v31)
        {
          return 0;
        }

        if (v64 && v31 != 1)
        {
          return v64 != 1;
        }
      }

      return 1;
    }

    v74 = sub_1AAD357A8(&v85);
    v54 = *v74;
    v55 = *(v74 + 8);
    v56 = *(v74 + 16);
    v58 = *(v74 + 32);
    v57 = *(v74 + 40);
    v59 = *(v74 + 48);
    v60 = *(v74 + 56);
    v61 = *(v74 + 64);
    v62 = *(v74 + 24);
    v77 = v95;
    v78 = v96;
    v79 = v97;
    v82 = v100;
    v83 = v101;
    v84[0] = v102[0];
    *(v84 + 9) = *(v102 + 9);
    v80 = v98;
    v81 = v99;
    v73 = sub_1AAD357A8(&v77);
  }

  sub_1AAE63EFC(v73, v76);
LABEL_30:
  *&v77 = v54;
  *(&v77 + 1) = v55;
  *&v78 = v56;
  BYTE8(v78) = v62 & 1;
  *&v79 = v58;
  *(&v79 + 1) = v57;
  *&v80 = v59;
  *(&v80 + 1) = v60;
  if ((v61 & 0x80u) == 0)
  {
    v64 = v61;
  }

  else
  {
    v64 = v60;
  }

  LOBYTE(v81) = v61;
  sub_1AAE63F58(&v77);
  if (v31 != 3)
  {
    goto LABEL_20;
  }

LABEL_34:
  result = 1;
  if (v64 != 3 && v64)
  {
    return v64 != 1;
  }

  return result;
}

uint64_t sub_1AAE63FAC(uint64_t a1, uint64_t a2)
{
  sub_1AAE64010();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAE64010()
{
  if (!qword_1EB425BB0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB425BB0);
    }
  }
}

void static MarkDimensions.automatic.getter(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = -1;
  sub_1AAF31468();
  *(a1 + 104) = v2;
  *(a1 + 112) = v3 & 1;
}

uint64_t MarkStackingMethod.Storage.hashValue.getter(unsigned __int8 a1)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a1);
  return sub_1AAF906F4();
}

uint64_t MarkStackingMethod.description.getter(unsigned __int8 a1)
{
  v1 = 0x647261646E617473;
  v2 = 0x7265746E6563;
  if (a1 != 2)
  {
    v2 = 0x656B636174736E75;
  }

  if (a1)
  {
    v1 = 0x7A696C616D726F6ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AAE64210()
{
  v1 = 0x647261646E617473;
  v2 = 0x7265746E6563;
  if (*v0 != 2)
  {
    v2 = 0x656B636174736E75;
  }

  if (*v0)
  {
    v1 = 0x7A696C616D726F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double sub_1AAE642C8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

double sub_1AAE642DC@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF31468();
  __asm { FMOV            V0.2D, #0.5 }

  *a1 = _Q0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = -0.5;
  *(a1 + 32) = xmmword_1AAFAB8F0;
  *(a1 + 48) = 0x3FE0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FE0000000000000;
  *(a1 + 80) = v9;
  *(a1 + 88) = v2 & 1;
  return result;
}

double sub_1AAE6433C@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF31468();
  __asm { FMOV            V0.2D, #0.5 }

  *a1 = _Q0;
  *(a1 + 16) = xmmword_1AAFA2D60;
  *(a1 + 32) = xmmword_1AAFAB900;
  *(a1 + 48) = xmmword_1AAFA2D60;
  result = 0.5;
  *(a1 + 64) = xmmword_1AAFAB910;
  *(a1 + 80) = v9;
  *(a1 + 88) = v2 & 1;
  return result;
}

double sub_1AAE643A8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = sub_1AAF31474(a1, *(v4 + 80), *(v4 + 88));
  return v11 * v12 + v10 * (v12 * a4) + v7 * a3 + v8 * a4 + v9 * (v12 * a3);
}

double static MarkDimensions.ratio(_:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1AAF31468();
  *a1 = 1;
  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = xmmword_1AAFA2D60;
  *(a1 + 40) = xmmword_1AAFAB900;
  *(a1 + 56) = xmmword_1AAFA2D60;
  *(a1 + 72) = xmmword_1AAFAB910;
  *(a1 + 88) = v3;
  v10 = v9 & 1;
  *(a1 + 96) = v10;
  *(a1 + 104) = v3;
  *(a1 + 112) = v10;

  return sub_1AAE64F50(v3, v10);
}

double static MarkDimensions.inset(_:)@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF31468();
  *a1 = 2;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_1AAFAB920;
  *(a1 + 56) = 0x3FF0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xBFF0000000000000;
  *(a1 + 88) = v3;
  v5 = v4 & 1;
  *(a1 + 96) = v5;
  *(a1 + 104) = v3;
  *(a1 + 112) = v5;

  return sub_1AAE64F50(v3, v5);
}

double static MarkDimensions.fixed(_:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1AAF31468();
  *a1 = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_1AAFAB8F0;
  *(a1 + 56) = 0x3FE0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x3FE0000000000000;
  *(a1 + 88) = v3;
  v10 = v9 & 1;
  *(a1 + 96) = v10;
  *(a1 + 104) = v3;
  *(a1 + 112) = v10;

  return sub_1AAE64F50(v3, v10);
}

double static MarkDimensions.ratio(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AAF314D8();
  *a2 = 1;
  __asm { FMOV            V0.2D, #0.5 }

  *(a2 + 8) = _Q0;
  *(a2 + 24) = xmmword_1AAFA2D60;
  *(a2 + 40) = xmmword_1AAFAB900;
  *(a2 + 56) = xmmword_1AAFA2D60;
  *(a2 + 72) = xmmword_1AAFAB910;
  *(a2 + 88) = v8;
  v9 &= 1u;
  *(a2 + 96) = v9;
  *(a2 + 104) = v8;
  *(a2 + 112) = v9;
  sub_1AAE64F50(v8, v9);

  return result;
}

double static MarkDimensions.inset(_:)@<D0>(uint64_t a2@<X8>)
{
  sub_1AAF314D8();
  *a2 = 2;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = xmmword_1AAFAB920;
  *(a2 + 56) = 0x3FF0000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xBFF0000000000000;
  *(a2 + 88) = v3;
  v4 &= 1u;
  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  *(a2 + 112) = v4;
  sub_1AAE64F50(v3, v4);

  return result;
}

double static MarkDimensions.fixed(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AAF314D8();
  *a2 = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(a2 + 8) = _Q0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = xmmword_1AAFAB8F0;
  *(a2 + 56) = 0x3FE0000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x3FE0000000000000;
  *(a2 + 88) = v8;
  v9 &= 1u;
  *(a2 + 96) = v9;
  *(a2 + 104) = v8;
  *(a2 + 112) = v9;
  sub_1AAE64F50(v8, v9);

  return result;
}

uint64_t MarkDimension.description.getter(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0x286F69746172;
    }

    else
    {
      v2 = 0x286465786966;
    }

    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v2 = 0x287465736E69;
LABEL_7:
    v5 = v2;
    v3 = sub_1AAF8F9F4();
    MEMORY[0x1AC5982F0](v3);

    MEMORY[0x1AC5982F0](41, 0xE100000000000000);
    return v5;
  }

  return 0x6974616D6F747561;
}

unint64_t InterpolationMethod.description.getter(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (*&a1 == 0.5)
      {
        return 0x526C6C756D746163;
      }
    }

    else if (*&a1 == 0.0)
    {
      return 0x6C616E6964726163;
    }

    sub_1AAF900D4();

    v3 = 0xD000000000000012;
    goto LABEL_17;
  }

  if (a2 == 2)
  {
    if (*&a1 == 1.0)
    {
      return 0x646E4570657473;
    }

    if (*&a1 == 0.5)
    {
      return 0x746E654370657473;
    }

    if (*&a1 != 0.0)
    {
      sub_1AAF900D4();

      v3 = 0xD000000000000011;
LABEL_17:
      v5 = v3;
      v4 = sub_1AAF8F9F4();
      MEMORY[0x1AC5982F0](v4);

      MEMORY[0x1AC5982F0](41, 0xE100000000000000);
      return v5;
    }

    return 0x7261745370657473;
  }

  else if (*&a1 == 0.0)
  {
    return 0x7261656E696CLL;
  }

  else
  {
    return 0x656E6F746F6E6F6DLL;
  }
}

unint64_t sub_1AAE64AE4()
{
  result = qword_1EB425BB8[0];
  if (!qword_1EB425BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB425BB8);
  }

  return result;
}

uint64_t sub_1AAE64B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAE64BE4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1AAE64BF8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1AAE64C24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
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

uint64_t sub_1AAE64C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartialSpecScaleMapping(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialSpecScaleMapping(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAE64D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1AAE64DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1AAE64DF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 88);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAE64E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = ~a2;
    }
  }

  return result;
}

double sub_1AAE64E90(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 88) = -a2;
  }

  return result;
}

unint64_t sub_1AAE64EFC()
{
  result = qword_1EB425CC0[0];
  if (!qword_1EB425CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB425CC0);
  }

  return result;
}

double sub_1AAE64F50(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1AAE64F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAE64F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
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

uint64_t sub_1AAE64FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAE65054(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAE65074(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

__n128 PointMark.init<A, B>(x:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1AAE83B9C(a1, a3, a5, a4, v31);
  v14 = v31[7];
  *(a7 + 96) = v31[6];
  *(a7 + 112) = v14;
  *(a7 + 128) = v31[8];
  v15 = v31[3];
  *(a7 + 32) = v31[2];
  *(a7 + 48) = v15;
  v16 = v31[5];
  *(a7 + 64) = v31[4];
  *(a7 + 80) = v16;
  v17 = v31[1];
  *a7 = v31[0];
  *(a7 + 16) = v17;
  sub_1AAE83B9C(a2, a4, a6, v18, v32);
  v20 = type metadata accessor for PlottableValue(0, a4, a6, v19);
  (*(*(v20 - 8) + 8))(a2, v20);
  v22 = type metadata accessor for PlottableValue(0, a3, a5, v21);
  (*(*(v22 - 8) + 8))(a1, v22);
  v23 = v32[7];
  *(a7 + 240) = v32[6];
  *(a7 + 256) = v23;
  *(a7 + 272) = v32[8];
  v24 = v32[3];
  *(a7 + 176) = v32[2];
  *(a7 + 192) = v24;
  v25 = v32[5];
  *(a7 + 208) = v32[4];
  *(a7 + 224) = v25;
  v26 = v32[1];
  *(a7 + 144) = v32[0];
  *(a7 + 160) = v26;
  *&v33[0] = 0;
  BYTE8(v33[0]) = 1;
  sub_1AAD59F90(v33);
  v27 = v33[7];
  *(a7 + 384) = v33[6];
  *(a7 + 400) = v27;
  *(a7 + 416) = v33[8];
  v28 = v33[3];
  *(a7 + 320) = v33[2];
  *(a7 + 336) = v28;
  v29 = v33[5];
  *(a7 + 352) = v33[4];
  *(a7 + 368) = v29;
  result = v33[1];
  *(a7 + 288) = v33[0];
  *(a7 + 304) = result;
  return result;
}

__n128 PointMark.init<A>(x:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1AAE83B9C(a1, a4, a5, a4, v26);
  v13 = type metadata accessor for PlottableValue(0, a4, a5, v12);
  (*(*(v13 - 8) + 8))(a1, v13);
  v14 = v26[7];
  *(a6 + 96) = v26[6];
  *(a6 + 112) = v14;
  *(a6 + 128) = v26[8];
  v15 = v26[3];
  *(a6 + 32) = v26[2];
  *(a6 + 48) = v15;
  v16 = v26[5];
  *(a6 + 64) = v26[4];
  *(a6 + 80) = v16;
  v17 = v26[1];
  *a6 = v26[0];
  *(a6 + 16) = v17;
  *&v27[0] = a2;
  BYTE8(v27[0]) = a3 & 1;
  sub_1AAD59F90(v27);
  v18 = v27[7];
  *(a6 + 240) = v27[6];
  *(a6 + 256) = v18;
  *(a6 + 272) = v27[8];
  v19 = v27[3];
  *(a6 + 176) = v27[2];
  *(a6 + 192) = v19;
  v20 = v27[5];
  *(a6 + 208) = v27[4];
  *(a6 + 224) = v20;
  v21 = v27[1];
  *(a6 + 144) = v27[0];
  *(a6 + 160) = v21;
  *&v28[0] = 0;
  BYTE8(v28[0]) = 1;
  sub_1AAD59F90(v28);
  v22 = v28[7];
  *(a6 + 384) = v28[6];
  *(a6 + 400) = v22;
  *(a6 + 416) = v28[8];
  v23 = v28[3];
  *(a6 + 320) = v28[2];
  *(a6 + 336) = v23;
  v24 = v28[5];
  *(a6 + 352) = v28[4];
  *(a6 + 368) = v24;
  result = v28[1];
  *(a6 + 288) = v28[0];
  *(a6 + 304) = result;
  return result;
}

__n128 PointMark.init<A>(x:y:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v26[0] = a1;
  BYTE8(v26[0]) = a2 & 1;
  sub_1AAD59F90(v26);
  v10 = v26[7];
  *(a6 + 96) = v26[6];
  *(a6 + 112) = v10;
  *(a6 + 128) = v26[8];
  v11 = v26[3];
  *(a6 + 32) = v26[2];
  *(a6 + 48) = v11;
  v12 = v26[5];
  *(a6 + 64) = v26[4];
  *(a6 + 80) = v12;
  v13 = v26[1];
  *a6 = v26[0];
  *(a6 + 16) = v13;
  sub_1AAE83B9C(a3, a4, a5, v14, v25);
  v16 = type metadata accessor for PlottableValue(0, a4, a5, v15);
  (*(*(v16 - 8) + 8))(a3, v16);
  v17 = v25[7];
  *(a6 + 240) = v25[6];
  *(a6 + 256) = v17;
  *(a6 + 272) = v25[8];
  v18 = v25[3];
  *(a6 + 176) = v25[2];
  *(a6 + 192) = v18;
  v19 = v25[5];
  *(a6 + 208) = v25[4];
  *(a6 + 224) = v19;
  v20 = v25[1];
  *(a6 + 144) = v25[0];
  *(a6 + 160) = v20;
  *&v27[0] = 0;
  BYTE8(v27[0]) = 1;
  sub_1AAD59F90(v27);
  v21 = v27[7];
  *(a6 + 384) = v27[6];
  *(a6 + 400) = v21;
  *(a6 + 416) = v27[8];
  v22 = v27[3];
  *(a6 + 320) = v27[2];
  *(a6 + 336) = v22;
  v23 = v27[5];
  *(a6 + 352) = v27[4];
  *(a6 + 368) = v23;
  result = v27[1];
  *(a6 + 288) = v27[0];
  *(a6 + 304) = result;
  return result;
}

uint64_t static PointMark._layoutChartContent(_:_:)(_OWORD *a1)
{
  v1 = a1[7];
  v13[6] = a1[6];
  v13[7] = v1;
  v2 = a1[9];
  v13[8] = a1[8];
  v3 = a1[3];
  v13[2] = a1[2];
  v13[3] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[14];
  v7 = a1[16];
  v8 = a1[17];
  v14[6] = a1[15];
  v14[7] = v7;
  v14[8] = v8;
  v9 = a1[10];
  v10 = a1[12];
  v11 = a1[13];
  v14[2] = a1[11];
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v6;
  v14[0] = v2;
  v14[1] = v9;
  return sub_1AACD2B20(v13, v14);
}

uint64_t static PointMark._renderChartContent(_:_:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a3;
  v5 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[5];
  v11 = a1[7];
  v82 = a1[6];
  v83 = v11;
  v12 = a1[7];
  v84 = a1[8];
  v13 = a1[1];
  v14 = a1[3];
  v78 = a1[2];
  v79 = v14;
  v15 = a1[3];
  v16 = a1[5];
  v80 = a1[4];
  v81 = v16;
  v17 = a1[1];
  v77[0] = *a1;
  v77[1] = v17;
  v18 = a1[14];
  v19 = a1[16];
  v20 = a1[17];
  v91 = a1[15];
  v92 = v19;
  v93 = v20;
  v21 = a1[10];
  v22 = a1[12];
  v23 = a1[13];
  v87 = a1[11];
  v88 = v22;
  v89 = v23;
  v90 = v18;
  v24 = a1[8];
  v85 = a1[9];
  v86 = v21;
  v95[6] = v82;
  v95[7] = v12;
  v95[8] = v24;
  v95[2] = v78;
  v95[3] = v15;
  v95[4] = v80;
  v95[5] = v10;
  v25 = *a2;
  v26 = *(a2 + 1);
  v95[0] = v77[0];
  v95[1] = v13;
  v27 = sub_1AACDB99C(v95);
  v28 = sub_1AACD2C84(v95);
  if ((v27 - 2) >= 4)
  {
    if (v27)
    {
      if (*(v28 + 8))
      {
        v38 = (*(v26 + 24) + *(v26 + 32)) * 0.5;
      }

      else
      {
        v38 = *v28;
      }

      v39 = v26 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      swift_beginAccess();
      v29 = v38 + *(v39 + *(v5 + 84));
    }

    else
    {
      v67 = v5;
      v30 = *(v28 + 24);
      v31 = *(v28 + 32);
      v32 = *(v28 + 40);
      v33 = *(v28 + 16);
      v69 = *v28;
      v70 = v33;
      v96 = v30;
      v34 = *(v28 + 48);

      v35 = MEMORY[0x1E69E62F8];
      sub_1AAE67EB8(&v96, v94, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AADFA6FC(&v69, v94);
      sub_1AACD7C50(v31, v32, v34);
      v65 = sub_1AAE0B2C8(0, v26, v31, v32, v34);
      v37 = v36;
      sub_1AAD6E0DC(&v69);
      sub_1AAE67F28(&v96, &qword_1ED9B1E40, MEMORY[0x1E69810C8], v35);
      sub_1AAD0E818(v31, v32, v34);

      if (v37)
      {
        v29 = NAN;
      }

      else
      {
        v29 = *&v65;
      }

      v5 = v67;
    }
  }

  else
  {
    v29 = NAN;
  }

  v94[6] = v91;
  v94[7] = v92;
  v94[8] = v93;
  v94[2] = v87;
  v94[3] = v88;
  v94[4] = v89;
  v94[5] = v90;
  v94[0] = v85;
  v94[1] = v86;
  v40 = sub_1AACDB99C(v94);
  v41 = sub_1AACD2C84(v94);
  if ((v40 - 2) >= 4)
  {
    if (v40)
    {
      if (*(v41 + 8))
      {
        v51 = (*(v26 + 40) + *(v26 + 48)) * 0.5;
      }

      else
      {
        v51 = *v41;
      }

      v64 = v26 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      swift_beginAccess();
      v42 = v51 + *(v64 + *(v5 + 88));
      if (v25)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v67 = v5;
      v43 = *(v41 + 24);
      v44 = *(v41 + 32);
      v45 = *(v41 + 40);
      v46 = *(v41 + 16);
      v71 = *v41;
      v72 = v46;
      v97[0] = v43;
      v47 = *(v41 + 48);

      v48 = MEMORY[0x1E69E62F8];
      sub_1AAE67EB8(v97, &v75, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AADFA6FC(&v71, &v75);
      sub_1AACD7C50(v44, v45, v47);
      v65 = sub_1AAE0B2C8(1, v26, v44, v45, v47);
      v50 = v49;
      sub_1AAD6E0DC(&v71);
      sub_1AAE67F28(v97, &qword_1ED9B1E40, MEMORY[0x1E69810C8], v48);
      sub_1AAD0E818(v44, v45, v47);

      if (v50)
      {
        v42 = NAN;
      }

      else
      {
        v42 = *&v65;
      }

      v5 = v67;
      if (v25)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v42 = NAN;
    if (v25)
    {
LABEL_37:
      result = sub_1AAE66870(v77, &v85, v26);
      goto LABEL_38;
    }
  }

  v67 = v5;
  v52 = *(*(v26 + 16) + 24);
  v53 = v26 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v54 = *(v53 + 152);
  if (v54 == 255)
  {
    v55 = 0x404921FB54442D18;
  }

  else
  {
    v55 = *(v53 + 136);
  }

  if (v54 == 255)
  {
    v56 = 0;
  }

  else
  {
    v56 = *(v53 + 144);
  }

  v57 = (v54 != 255) & v54;
  sub_1AAE67EB8(v53 + 88, &v73, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  if (BYTE8(v74[1]) == 255)
  {
    if (qword_1ED9B0450 != -1)
    {
      swift_once();
    }

    sub_1AAD9B194(&unk_1ED9C33F0, &v75);
    BYTE8(v76[1]) = 0;
    if (BYTE8(v74[1]) != 255)
    {
      sub_1AAE67F28(&v73, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    v75 = v73;
    v76[0] = v74[0];
    *(v76 + 9) = *(v74 + 9);
  }

  v58 = v66;
  sub_1AAE68064(v53, v66, type metadata accessor for ChartContentRenderContext.Environment);
  sub_1AAD0F2A4(v58, &v9[*(v7 + 36)]);
  v59 = *(v53 + *(v67 + 64));
  *v9 = v52;
  *(v9 + 1) = v29;
  *(v9 + 2) = v42;
  *(v9 + 3) = v55;
  *(v9 + 4) = v56;
  v9[40] = v57;
  v60 = v76[0];
  *(v9 + 3) = v75;
  *(v9 + 4) = v60;
  *(v9 + 73) = *(v76 + 9);
  *&v9[*(v7 + 40)] = v59;
  v61 = swift_allocBox();
  sub_1AAE68128(v9, v62, type metadata accessor for SgPoint);
  result = v61 | 0x3000000000000000;
LABEL_38:
  *v68 = result;
  return result;
}

uint64_t static PointMark._collectChartContent(content:inputs:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v95 = a3;
  v5 = type metadata accessor for ChartContainerValues(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CollectedChartContent(0);
  v9 = *(v8 - 8);
  v92 = v8;
  v93 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v79 - v12;
  v13 = a1[7];
  v210[6] = a1[6];
  v210[7] = v13;
  v14 = a1[9];
  v210[8] = a1[8];
  v15 = a1[3];
  v210[2] = a1[2];
  v210[3] = v15;
  v16 = a1[5];
  v210[4] = a1[4];
  v210[5] = v16;
  v17 = a1[1];
  v210[0] = *a1;
  v210[1] = v17;
  v18 = a1[14];
  v19 = a1[16];
  v20 = a1[17];
  v209[6] = a1[15];
  v209[7] = v19;
  v209[8] = v20;
  v21 = a1[10];
  v22 = a1[12];
  v23 = a1[13];
  v209[2] = a1[11];
  v209[3] = v22;
  v209[5] = v18;
  v209[4] = v23;
  v209[1] = v21;
  v209[0] = v14;
  v24 = type metadata accessor for _ChartContentCollectInputs(0);
  sub_1AAF09418(v210, v190);
  sub_1AAF09418(v209, v192);
  v25 = a2 + *(v24 + 28);
  sub_1AAEF1A60(v25, v189);
  sub_1AAEF1C70(v25, &v194);
  sub_1AAEF1ED8(v25, v188);
  v26 = *(a2 + *(v24 + 20));
  sub_1AAE67F84(v189, &v97, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
  if (*(&v98[0] + 1) == 2)
  {

    sub_1AAE681E4(&v97, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v187 = -256;
  }

  else
  {
    sub_1AAE67EB8(&v99, &v183, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);

    sub_1AAE67F28(&v97, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
  }

  LODWORD(v90) = *(v25 + 81);
  v27 = *(v25 + 312);
  v88 = *(v25 + 320);
  sub_1AAE67F84(v188, &v97, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
  if (*(&v98[0] + 1) == 2)
  {

    sub_1AAE681E4(&v97, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol, type metadata accessor for ResolvedModifier);
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v182 = -256;
  }

  else
  {
    sub_1AAE67EB8(&v99, &v178, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);

    sub_1AAE67F28(&v97, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol, type metadata accessor for ResolvedModifier);
  }

  v91 = v26;
  v89 = v27;
  if (*(&v201 + 1) >> 1 != 4294967294 || (v204 & 0x7C) != 0)
  {
    v98[1] = v202;
    v99 = v203;
    v97 = v200;
    v98[0] = v201;
    v100[0] = v204;
    sub_1AAE67EB8(&v97, v176, qword_1ED9B22C0, &type metadata for ResolvedSymbolSize, MEMORY[0x1E69E6720]);
    v85 = v97;
    v86 = v98[0];
    v83 = v98[1];
    v84 = v99;
    LODWORD(v87) = v100[0];
  }

  else
  {
    LODWORD(v87) = 0;
    v85 = 0u;
    v86 = xmmword_1AAFABEE0;
    v83 = 0u;
    v84 = 0u;
  }

  v28 = *(v25 + 328);
  v82 = type metadata accessor for CollectedChartContent.Primitive(0);
  v29 = *(v82 + 72);
  v30 = sub_1AAF8E244();
  v31 = v96;
  (*(*(v30 - 8) + 56))(v96 + v29, 1, 1, v30);
  sub_1AAE68064(v25, v7, type metadata accessor for ChartContainerValues);
  v32 = *(v5 + 68);
  v33 = &v7[*(v5 + 64)];
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  v79 = v33[3];
  v80 = v36;
  v37 = &v7[v32];
  v39 = *&v7[v32];
  v38 = *&v7[v32 + 8];
  v40 = v5;
  v42 = *(v37 + 2);
  v41 = *(v37 + 3);
  v43 = &v7[*(v40 + 72)];
  v44 = *(v43 + 1);
  v81 = *v43;
  sub_1AADA61DC(v34, v35, v36, v79);
  sub_1AADA61DC(v39, v38, v42, v41);

  sub_1AAE68240(v7, type metadata accessor for ChartContainerValues);
  *&v170 = v34;
  *(&v170 + 1) = v35;
  *&v171 = v80;
  *(&v171 + 1) = v79;
  *&v172 = v39;
  *(&v172 + 1) = v38;
  *&v173 = v42;
  *(&v173 + 1) = v41;
  *&v174 = v81;
  *(&v174 + 1) = v44;
  v175 = 0;
  v176[0] = v34;
  v176[1] = v35;
  v176[2] = v80;
  v176[3] = v79;
  v176[4] = v39;
  v176[5] = v38;
  v176[6] = v42;
  v176[7] = v41;
  v176[8] = v81;
  v176[9] = v44;
  v177 = 0;
  sub_1AAE0F994(&v170, &v97);
  sub_1AAE0F9F0(v176);
  *v31 = v91;
  *(v31 + 8) = 0;
  v45 = v191[0];
  *(v31 + 112) = v190[6];
  *(v31 + 128) = v45;
  *(v31 + 137) = *(v191 + 9);
  v46 = v190[3];
  *(v31 + 48) = v190[2];
  *(v31 + 64) = v46;
  v47 = v190[5];
  *(v31 + 80) = v190[4];
  *(v31 + 96) = v47;
  v48 = v190[1];
  *(v31 + 16) = v190[0];
  *(v31 + 32) = v48;
  v49 = v192[5];
  v50 = v193[0];
  *(v31 + 256) = v192[6];
  *(v31 + 272) = v50;
  *(v31 + 281) = *(v193 + 9);
  v51 = v192[3];
  *(v31 + 192) = v192[2];
  *(v31 + 208) = v51;
  *(v31 + 224) = v192[4];
  *(v31 + 240) = v49;
  v52 = v192[1];
  *(v31 + 160) = v192[0];
  *(v31 + 176) = v52;
  *(v31 + 304) = 0;
  *(v31 + 312) = 0;
  *(v31 + 320) = 1;
  *(v31 + 328) = 0;
  v53 = v186;
  *(v31 + 368) = v185;
  *(v31 + 384) = v53;
  *(v31 + 400) = v187;
  v54 = v184;
  *(v31 + 336) = v183;
  *(v31 + 352) = v54;
  *(v31 + 402) = v90;
  *(v31 + 408) = v89;
  *(v31 + 416) = v88;
  v55 = v181;
  *(v31 + 456) = v180;
  *(v31 + 472) = v55;
  *(v31 + 488) = v182;
  v56 = v179;
  *(v31 + 424) = v178;
  *(v31 + 440) = v56;
  v57 = v86;
  *(v31 + 496) = v85;
  *(v31 + 512) = v57;
  v58 = v84;
  *(v31 + 528) = v83;
  *(v31 + 544) = v58;
  *(v31 + 560) = v87;
  *(v31 + 568) = 0u;
  *(v31 + 584) = 0u;
  *(v31 + 600) = 0u;
  *(v31 + 616) = 0u;
  *(v31 + 632) = 124;
  *(v31 + 640) = v28;
  *(v31 + 648) = 0;
  *(v31 + 656) = 1;
  *(v31 + 664) = 0u;
  *(v31 + 680) = 0u;
  *(v31 + 696) = 1;
  v59 = v82;
  v60 = v31 + *(v82 + 76);
  *v60 = 0;
  *(v60 + 8) = 3;
  *(v31 + *(v59 + 80)) = 2;
  v61 = v31 + *(v59 + 84);
  v62 = v173;
  *(v61 + 32) = v172;
  *(v61 + 48) = v62;
  *(v61 + 64) = v174;
  *(v61 + 80) = v175;
  v63 = v171;
  *v61 = v170;
  *(v61 + 16) = v63;
  swift_storeEnumTagMultiPayload();
  sub_1AAE680CC(v190, &v97);
  sub_1AAE680CC(v190, &v97);
  sub_1AAE680CC(v192, &v97);
  sub_1AAEF2E48(v190, &v205);
  sub_1AAE680CC(v192, &v97);
  sub_1AAEF2E48(v192, &v207);
  sub_1AAE67F84(v189, &v97, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
  v64 = *(&v98[0] + 1);
  if (*(&v98[0] + 1) == 2)
  {
    sub_1AAE681E4(&v97, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v88 = 0;
    v64 = 1;
  }

  else
  {
    v91 = *(&v97 + 1);
    v92 = v97;
    v89 = *&v98[1];
    v90 = *&v98[0];
    v88 = BYTE8(v98[1]);
    sub_1AAE682A0(v97, *(&v97 + 1), *&v98[0], *(&v98[0] + 1), *&v98[1]);
    sub_1AAE67F28(&v97, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
  }

  sub_1AAE67F84(v188, &v97, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
  v65 = *(&v98[0] + 1);
  if (*(&v98[0] + 1) == 2)
  {
    sub_1AAE681E4(&v97, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol, type metadata accessor for ResolvedModifier);
    v87 = 0;
    *&v86 = 0;
    *&v85 = 0;
    *&v84 = 0;
    LODWORD(v83) = 0;
    v65 = 1;
  }

  else
  {
    *&v86 = *(&v97 + 1);
    v87 = v97;
    *&v85 = *&v98[0];
    *&v84 = *&v98[1];
    LODWORD(v83) = BYTE8(v98[1]);
    sub_1AAE682A0(v97, *(&v97 + 1), *&v98[0], *(&v98[0] + 1), *&v98[1]);
    sub_1AAE67F28(&v97, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol, type metadata accessor for ResolvedModifier);
  }

  if (*(&v201 + 1) >> 1 != 4294967294 || (v204 & 0x7C) != 0)
  {
    v70 = v199;
    v69 = v198;
    v71 = v197;
    v68 = v196;
    v67 = v195;
    v66 = v194;
    sub_1AAE682A0(v194, v195, v196, v197, v198);
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 1;
  }

  v148 = 0;
  v149 = 0;
  v150 = 1;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v97 = v205;
  v98[0] = v206[0];
  *(v98 + 9) = *(v206 + 9);
  v99 = v207;
  *v100 = v208[0];
  *&v100[9] = *(v208 + 9);
  v102 = 0;
  v103 = 0;
  v101 = 0;
  v104 = xmmword_1AAF92AC0;
  v105 = 0;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v109 = xmmword_1AAF92AC0;
  v110 = 0;
  v112 = 0;
  v113 = 0;
  v111 = 0;
  v114 = xmmword_1AAF92AC0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 1;
  v120 = 0;
  v121 = 0;
  v122 = v92;
  v123 = v91;
  v124 = v90;
  v125 = v64;
  v126 = v89;
  v127 = v88;
  v128 = v87;
  v129 = v86;
  v130 = v85;
  v131 = v65;
  v132 = v84;
  v133 = v83;
  v134 = v66;
  v135 = v67;
  v136 = v68;
  v137 = v71;
  v138 = v69;
  v139 = v70;
  v141 = 0;
  v140 = 0;
  v142 = 0;
  v143 = 1;
  v144 = 0;
  v145 = 0;
  v147 = 0;
  v146 = 0;
  v168 = 0;
  v169 = 0;
  v72 = v96;
  v73 = v94;
  sub_1AAE68064(v96, v94, type metadata accessor for CollectedChartContent);
  v74 = v95;
  sub_1AADFA56C(&v97, (v95 + 1));
  sub_1AAE0FAB0(0, v75);
  v76 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1AAF92AB0;
  sub_1AAE68128(v73, v77 + v76, type metadata accessor for CollectedChartContent);
  sub_1AAE68190(v190);
  sub_1AAE68190(v192);
  sub_1AAE681E4(&v194, &qword_1ED9AE8C8, &qword_1ED9AE8D0, &type metadata for ResolvedSymbolSize, type metadata accessor for ResolvedModifier);
  sub_1AAD58120(&v97);
  sub_1AAE68240(v72, type metadata accessor for CollectedChartContent);
  sub_1AAE681E4(v188, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol, type metadata accessor for ResolvedModifier);
  result = sub_1AAE681E4(v189, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
  *v74 = v77;
  return result;
}

unint64_t sub_1AAE66870(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = sub_1AAE63890(a1, a2);
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  v10 = v9[7];
  if (v6)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  v260 = v9[6];
  v261 = v10;
  v12 = v9[8];
  v13 = v9[3];
  v256 = v9[2];
  v257 = v13;
  v14 = v9[4];
  v259 = v9[5];
  v258 = v14;
  v15 = *v9;
  v255 = v9[1];
  v254 = v15;
  v16 = v11[6];
  v17 = v11[7];
  v18 = v11[4];
  v268 = v11[5];
  v269 = v16;
  v19 = v11[8];
  v270 = v17;
  v271 = v19;
  v20 = v11[2];
  v21 = v11[3];
  v22 = *v11;
  v264 = v11[1];
  v265 = v20;
  v266 = v21;
  v267 = v18;
  v262 = v12;
  v263 = v22;
  v299 = v260;
  v300 = v261;
  v301 = v12;
  v295 = v256;
  v296 = v257;
  v298 = v259;
  v297 = v258;
  v294 = v255;
  v293 = v254;
  v316[6] = v269;
  v316[7] = v270;
  v316[8] = v271;
  v316[2] = v20;
  v316[3] = v21;
  v316[5] = v268;
  v316[4] = v18;
  v316[1] = v264;
  v316[0] = v22;
  sub_1AAD6D0FC(0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AAFA9FE0;
  sub_1AAD5835C(a2, __dst);
  sub_1AAD5835C(a1, __dst);
  sub_1AAD5835C(v316, __dst);
  sub_1AAF72B20(v8, v316, v272);
  v24 = v272[7];
  *(v23 + 128) = v272[6];
  *(v23 + 144) = v24;
  *(v23 + 160) = v272[8];
  *(v23 + 176) = v273;
  v25 = v272[3];
  *(v23 + 64) = v272[2];
  *(v23 + 80) = v25;
  v26 = v272[5];
  *(v23 + 96) = v272[4];
  *(v23 + 112) = v26;
  v27 = v272[1];
  v28 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  *(v23 + 32) = v272[0];
  *(v23 + 48) = v27;
  swift_beginAccess();
  v29 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v30 = (v28 + v29[17]);
  v253 = *(v30 + 8);
  v31 = v30[3];
  v251 = v30[2];
  v252 = v31;
  v32 = *v30;
  v250 = v30[1];
  v249 = v32;
  if (*(&v250 + 1))
  {
    *&v199[7] = *v30;
    v33 = v30[3];
    *&v179[8] = v30[2];
    *&v199[23] = *(v30 + 2);
    *&v179[24] = v33;
    *&v179[40] = *(v30 + 8);
    v178[0] = 5;
    *&v178[1] = *v199;
    *&v178[16] = *&v199[15];
    *v179 = *(&v250 + 1);
    v180[0] = 3;
    sub_1AAE0C0B0(v178);
    *&__dst[96] = *&v180[16];
    *&__dst[112] = v181;
    *&__dst[128] = v182;
    *&__dst[144] = v183;
    *&__dst[32] = *v179;
    *&__dst[48] = *&v179[16];
    *&__dst[64] = *&v179[32];
    *&__dst[80] = *v180;
    *__dst = *v178;
    *&__dst[16] = *&v178[16];
    nullsub_1();
    v245 = *&__dst[96];
    v246 = *&__dst[112];
    v247 = *&__dst[128];
    v248 = *&__dst[144];
    v241 = *&__dst[32];
    v242 = *&__dst[48];
    v243 = *&__dst[64];
    v244 = *&__dst[80];
    v239 = *__dst;
    v240 = *&__dst[16];
  }

  else
  {
    sub_1AAE2D7EC(&v239);
  }

  v34 = v244;
  *(v23 + 248) = v243;
  v35 = v241;
  *(v23 + 232) = v242;
  *(v23 + 216) = v35;
  v36 = v247;
  v37 = v245;
  *(v23 + 296) = v246;
  *(v23 + 312) = v36;
  *(v23 + 328) = v248;
  *(v23 + 264) = v34;
  *(v23 + 280) = v37;
  v38 = v240;
  *(v23 + 184) = v239;
  *(v23 + 200) = v38;
  v39 = (v28 + v29[18]);
  v40 = v39[3];
  v236 = v39[2];
  v237 = v40;
  v238 = *(v39 + 8);
  v41 = *v39;
  v235 = v39[1];
  v234 = v41;
  if (*(&v235 + 1))
  {
    *&v199[7] = *v39;
    v42 = v39[3];
    *&v179[8] = v39[2];
    *&v199[23] = *(v39 + 2);
    *&v179[24] = v42;
    *&v179[40] = *(v39 + 8);
    v178[0] = 6;
    *&v178[1] = *v199;
    *&v178[16] = *&v199[15];
    *v179 = *(&v235 + 1);
    v180[0] = 3;
    sub_1AAE0C0B0(v178);
    *&__dst[96] = *&v180[16];
    *&__dst[112] = v181;
    *&__dst[128] = v182;
    *&__dst[144] = v183;
    *&__dst[32] = *v179;
    *&__dst[48] = *&v179[16];
    *&__dst[64] = *&v179[32];
    *&__dst[80] = *v180;
    *__dst = *v178;
    *&__dst[16] = *&v178[16];
    nullsub_1();
    v230 = *&__dst[96];
    v231 = *&__dst[112];
    v232 = *&__dst[128];
    v233 = *&__dst[144];
    v226 = *&__dst[32];
    v227 = *&__dst[48];
    v228 = *&__dst[64];
    v229 = *&__dst[80];
    v224 = *__dst;
    v225 = *&__dst[16];
  }

  else
  {
    sub_1AAE2D7EC(&v224);
  }

  v43 = v229;
  *(v23 + 400) = v228;
  *(v23 + 416) = v43;
  v44 = v227;
  *(v23 + 368) = v226;
  *(v23 + 384) = v44;
  *(v23 + 480) = v233;
  v45 = v232;
  v46 = v230;
  *(v23 + 448) = v231;
  *(v23 + 464) = v45;
  *(v23 + 432) = v46;
  v47 = v225;
  *(v23 + 336) = v224;
  *(v23 + 352) = v47;
  v48 = (v28 + v29[19]);
  v49 = v48[3];
  v221 = v48[2];
  v222 = v49;
  v223 = *(v48 + 8);
  v50 = *v48;
  v220 = v48[1];
  v219 = v50;
  if (*(&v220 + 1))
  {
    *&v199[7] = *v48;
    v51 = v48[3];
    *&v179[8] = v48[2];
    *&v199[23] = *(v48 + 2);
    *&v179[24] = v51;
    *&v179[40] = *(v48 + 8);
    v178[0] = 7;
    *&v178[1] = *v199;
    *&v178[16] = *&v199[15];
    *v179 = *(&v220 + 1);
    v180[0] = 3;
    sub_1AAE0C0B0(v178);
    *&__dst[96] = *&v180[16];
    *&__dst[112] = v181;
    *&__dst[128] = v182;
    *&__dst[144] = v183;
    *&__dst[32] = *v179;
    *&__dst[48] = *&v179[16];
    *&__dst[64] = *&v179[32];
    *&__dst[80] = *v180;
    *__dst = *v178;
    *&__dst[16] = *&v178[16];
    nullsub_1();
    v215 = *&__dst[96];
    v216 = *&__dst[112];
    v217 = *&__dst[128];
    v218 = *&__dst[144];
    v211 = *&__dst[32];
    v212 = *&__dst[48];
    v213 = *&__dst[64];
    v214 = *&__dst[80];
    v209 = *__dst;
    v210 = *&__dst[16];
  }

  else
  {
    sub_1AAE2D7EC(&v209);
  }

  *(v23 + 632) = v218;
  v52 = v216;
  *(v23 + 584) = v215;
  *(v23 + 600) = v52;
  *(v23 + 616) = v217;
  v53 = v212;
  *(v23 + 520) = v211;
  *(v23 + 536) = v53;
  v54 = v214;
  *(v23 + 552) = v213;
  *(v23 + 568) = v54;
  v55 = v210;
  *(v23 + 488) = v209;
  *(v23 + 504) = v55;
  v56 = MEMORY[0x1E69E6720];
  sub_1AAE67EB8(&v249, __dst, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  sub_1AAE67EB8(&v234, __dst, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v56);
  sub_1AAE67EB8(&v219, __dst, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v56);
  v57 = sub_1AAF70438(v23);
  v59 = v58;
  swift_setDeallocating();
  sub_1AAE68434(0, qword_1ED9B2098, &type metadata for AccessibilityDataField, v56);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v317[6] = v299;
  v317[7] = v300;
  v317[8] = v301;
  v317[2] = v295;
  v317[3] = v296;
  v317[5] = v298;
  v317[4] = v297;
  v317[1] = v294;
  v317[0] = v293;
  if (sub_1AACDB99C(v317))
  {
    goto LABEL_45;
  }

  v60 = sub_1AACD2C84(v317);
  v320 = *v60;
  v61 = *(v60 + 24);
  v321 = *(v60 + 16);
  v322 = v61;
  v318 = *(v60 + 32);
  v319 = *(v60 + 48);
  v302 = v320;
  v303 = v321;
  v304 = v61;
  v305 = v318;
  v306 = v319;
  *&v307[15] = *(v60 + 64);
  *v307 = *(v60 + 49);
  v323 = v320;
  v324 = v321;
  v326 = v319;
  v325 = v318;
  v177 = v7;
  v175 = v57;
  v176 = v59;
  if (!v7)
  {
    swift_beginAccess();
    memcpy(__dst, (a3 + 80), sizeof(__dst));
    if (*&__dst[112])
    {
      v71 = *(a3 + 216);
      v190 = *(a3 + 200);
      v191 = v71;
      v192 = *(a3 + 232);
      v193[0] = *(a3 + 248);
      v72 = *(a3 + 184);
      v188 = *(a3 + 168);
      v189 = v72;
      sub_1AAE14D50(&v325, v178);
      sub_1AAD5835C(&v293, v178);

      sub_1AADFA6FC(&v323, v178);
      sub_1AAE67EB8(&v322, v178, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      v279 = v190;
      v280 = v191;
      v281 = v192;
      LOBYTE(v282) = v193[0];
      v277 = v188;
      v278 = v189;
LABEL_23:
      v73 = *(&v281 + 1);
      v74 = v279;
      v75 = v280;
      v76 = v282;
      sub_1AAE67EB8(&__dst[88], v178, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v277, v178);
      sub_1AAE0A738(v74, *(&v74 + 1), v75, v73, v76, 4, &v274);
      v170 = v275;
      v173 = v274;
      v77 = v276;
      sub_1AAE0C014(&v277);
      sub_1AAD04750(v277, *(&v277 + 1), v278);

      sub_1AAD0E818(v74, *(&v74 + 1), v75);
      v79 = v170;
      v78 = v173;
LABEL_39:
      v85 = (v28 + v29[22]);
      v86 = *(v85 + 2);
      v310 = *v85;
      v311 = v86;
      v312 = v78;
      v313 = v79;
      v314 = v77;
      v315 = *(a3 + 368);
      v84 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale;
      goto LABEL_40;
    }

    if (__dst[257] == 2)
    {
      sub_1AAE14D50(&v325, v178);
      sub_1AAD5835C(&v293, v178);

      sub_1AADFA6FC(&v323, v178);
      sub_1AAE67EB8(&v322, v178, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    }

    else
    {
      sub_1AAE14D50(&v325, v178);
      sub_1AAD5835C(&v293, v178);

      sub_1AADFA6FC(&v323, v178);
      sub_1AAE67EB8(&v322, v178, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AACBB21C(__dst, v178);
      v81 = sub_1AAF8E7A4();
      if (v81 == sub_1AAF8E7A4())
      {
        sub_1AAE67EB8(&__dst[176], v178, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*&__dst[200])
        {
          v277 = *&__dst[176];
          v278 = *&__dst[192];
          v279 = *&__dst[208];
          v280 = *&__dst[224];
          v281 = *&__dst[240];
          LOBYTE(v282) = __dst[256];
          goto LABEL_23;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v78 = 0uLL;
    v77 = 2;
    v79 = 0uLL;
    goto LABEL_39;
  }

  swift_beginAccess();
  memcpy(__dst, (a3 + 80), sizeof(__dst));
  if (!*&__dst[24])
  {
    if (__dst[257] == 2)
    {
      sub_1AAE14D50(&v325, v178);
      sub_1AAD5835C(&v293, v178);

      sub_1AADFA6FC(&v323, v178);
      sub_1AAE67EB8(&v322, v178, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    }

    else
    {
      sub_1AAE14D50(&v325, v178);
      sub_1AAD5835C(&v293, v178);

      sub_1AADFA6FC(&v323, v178);
      sub_1AAE67EB8(&v322, v178, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AACBB21C(__dst, v178);
      v80 = sub_1AAF8E7A4();
      if (v80 == sub_1AAF8E7A4())
      {
        sub_1AAE67EB8(&__dst[176], v178, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*&__dst[200])
        {
          v277 = *&__dst[176];
          v278 = *&__dst[192];
          v279 = *&__dst[208];
          v280 = *&__dst[224];
          v281 = *&__dst[240];
          LOBYTE(v282) = __dst[256];
          goto LABEL_20;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v69 = 0uLL;
    v68 = 2;
    v70 = 0uLL;
    goto LABEL_36;
  }

  v62 = *(a3 + 128);
  v190 = *(a3 + 112);
  v191 = v62;
  v192 = *(a3 + 144);
  v193[0] = *(a3 + 160);
  v63 = *(a3 + 96);
  v188 = *(a3 + 80);
  v189 = v63;
  sub_1AAE14D50(&v325, v178);
  sub_1AAD5835C(&v293, v178);

  sub_1AADFA6FC(&v323, v178);
  sub_1AAE67EB8(&v322, v178, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  v279 = v190;
  v280 = v191;
  v281 = v192;
  LOBYTE(v282) = v193[0];
  v277 = v188;
  v278 = v189;
LABEL_20:
  v64 = *(&v281 + 1);
  v65 = v279;
  v66 = v280;
  v67 = v282;
  sub_1AAE67EB8(__dst, v178, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
  sub_1AAE0BFDC(&v277, v178);
  sub_1AAE0A738(v65, *(&v65 + 1), v66, v64, v67, 3, &v274);
  v169 = v275;
  v172 = v274;
  v68 = v276;
  sub_1AAE0C014(&v277);
  sub_1AAD04750(v277, *(&v277 + 1), v278);

  sub_1AAD0E818(v65, *(&v65 + 1), v66);
  v70 = v169;
  v69 = v172;
LABEL_36:
  v82 = (v28 + v29[21]);
  v83 = *(v82 + 2);
  v310 = *v82;
  v311 = v83;
  v312 = v69;
  v313 = v70;
  v314 = v68;
  v315 = *(a3 + 352);
  v84 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale;
LABEL_40:
  v87 = (a3 + *v84);
  v88 = v87[5];
  v192 = v87[4];
  *v193 = v88;
  *&v193[9] = *(v87 + 89);
  v89 = v87[1];
  v188 = *v87;
  v189 = v89;
  v90 = v87[3];
  v190 = v87[2];
  v191 = v90;
  if (v193[24] == 255)
  {

    sub_1AAD6E0DC(&v323);
    sub_1AAE67F28(&v322, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD6E18C(&v325);
    sub_1AAE49270(v178);
    v206 = v182;
    v207 = v183;
    v208 = v184;
    v202 = *&v179[32];
    v203 = *v180;
    v205 = v181;
    v204 = *&v180[16];
    *v199 = *v178;
    *&v199[16] = *&v178[16];
    v200 = *v179;
    v201 = *&v179[16];
  }

  else
  {
    v91 = v87[5];
    *&v179[32] = v87[4];
    *v180 = v91;
    *&v180[9] = *(v87 + 89);
    v92 = v87[1];
    *v178 = *v87;
    *&v178[16] = v92;
    v93 = v87[3];
    *v179 = v87[2];
    *&v179[16] = v93;
    v308[0] = *v178;
    v308[1] = v92;
    v308[2] = *v179;
    v308[3] = v93;
    v308[4] = *&v179[32];
    v309[0] = v91;
    *(v309 + 9) = *&v180[9];
    v94 = MEMORY[0x1E69E7DE0];
    sub_1AAE67EB8(v178, v286, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    sub_1AAE08D1C(v308, a3, !v177, &v302, v199);
    sub_1AAE681E4(&v188, &qword_1ED9B3E30, &qword_1ED9B3E38, v94, type metadata accessor for AnyConcreteScale);
    nullsub_1();

    sub_1AAD6E0DC(&v323);
    sub_1AAE67F28(&v322, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD6E18C(&v325);
  }

  *&__dst[128] = v206;
  *&__dst[144] = v207;
  *&__dst[160] = v208;
  *&__dst[64] = v202;
  *&__dst[80] = v203;
  *&__dst[96] = v204;
  *&__dst[112] = v205;
  *__dst = *v199;
  *&__dst[16] = *&v199[16];
  *&__dst[32] = v200;
  *&__dst[48] = v201;
  if (sub_1AAE492A8(__dst) == 1)
  {
    sub_1AAD6E0DC(&v323);
    sub_1AAE67F28(&v322, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD6E18C(&v325);
LABEL_45:

    sub_1AADC7F60(v316);
    sub_1AADC7F60(&v293);
    return 0xE000000000000000;
  }

  v96 = a1[7];
  v286[6] = a1[6];
  v286[7] = v96;
  v286[8] = a1[8];
  v97 = a1[3];
  v286[2] = a1[2];
  v286[3] = v97;
  v98 = a1[4];
  v286[5] = a1[5];
  v286[4] = v98;
  v99 = *a1;
  v286[1] = a1[1];
  v286[0] = v99;
  v100 = sub_1AACDB99C(v286);
  v101 = sub_1AACD2C84(v286);
  if ((v100 - 2) < 4)
  {
    goto LABEL_47;
  }

  if (v100)
  {
    v103 = v177;
    if (*(v101 + 8))
    {
      v130 = (*(a3 + 24) + *(a3 + 32)) * 0.5;
    }

    else
    {
      v130 = *v101;
    }

    v102 = v130 + *(v28 + v29[21]);
    goto LABEL_49;
  }

  v111 = *(v101 + 24);
  v112 = *(v101 + 32);
  v113 = *(v101 + 40);
  v114 = *(v101 + 16);
  v288 = *v101;
  v289 = v114;
  v287 = v111;
  v115 = *(v101 + 48);

  v116 = MEMORY[0x1E69E62F8];
  sub_1AAE67EB8(&v287, v178, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  sub_1AADFA6FC(&v288, v178);
  sub_1AACD7C50(v112, v113, v115);
  *&v117 = COERCE_DOUBLE(sub_1AAE0B2C8(0, a3, v112, v113, v115));
  v119 = v118;
  sub_1AAD6E0DC(&v288);
  sub_1AAE67F28(&v287, &qword_1ED9B1E40, MEMORY[0x1E69810C8], v116);
  sub_1AAD0E818(v112, v113, v115);

  if (v119)
  {
LABEL_47:
    v102 = NAN;
  }

  else
  {
    v102 = *&v117;
  }

  v103 = v177;
LABEL_49:
  v104 = a2[7];
  v283 = a2[6];
  v284 = v104;
  v285 = a2[8];
  v105 = a2[3];
  v279 = a2[2];
  v280 = v105;
  v106 = a2[4];
  v282 = a2[5];
  v281 = v106;
  v107 = *a2;
  v278 = a2[1];
  v277 = v107;
  v108 = sub_1AACDB99C(&v277);
  v109 = sub_1AACD2C84(&v277);
  if ((v108 - 2) >= 4)
  {
    if (v108)
    {
      if (*(v109 + 8))
      {
        v131 = (*(a3 + 40) + *(a3 + 48)) * 0.5;
      }

      else
      {
        v131 = *v109;
      }

      v110 = v131 + *(v28 + v29[22]);
    }

    else
    {
      v120 = *(v109 + 24);
      v121 = *(v109 + 32);
      v122 = *(v109 + 40);
      v123 = *(v109 + 16);
      v291 = *v109;
      v292 = v123;
      v290 = v120;
      v124 = *(v109 + 48);

      v125 = MEMORY[0x1E69810C8];
      v126 = MEMORY[0x1E69E62F8];
      sub_1AAE67EB8(&v290, v178, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AADFA6FC(&v291, v178);
      sub_1AACD7C50(v121, v122, v124);
      *&v127 = COERCE_DOUBLE(sub_1AAE0B2C8(1, a3, v121, v122, v124));
      v129 = v128;
      sub_1AAD6E0DC(&v291);
      sub_1AAE67F28(&v290, &qword_1ED9B1E40, v125, v126);
      sub_1AAD0E818(v121, v122, v124);

      if (v129)
      {
        v110 = NAN;
      }

      else
      {
        v110 = *&v127;
      }

      v103 = v177;
    }
  }

  else
  {
    v110 = NAN;
  }

  v132 = *(v28 + 152);
  if (v132 == 255)
  {
    v133 = 50.2654825;
    goto LABEL_71;
  }

  v133 = *(v28 + 136);
  if ((v132 & 1) == 0)
  {
LABEL_71:
    v134 = sqrt(v133);
    v133 = v134;
    goto LABEL_72;
  }

  v134 = *(v28 + 144);
LABEL_72:
  if (*(v28 + v29[26]) == 1)
  {
    v135 = v102 - v133 * 0.5;
    v136 = v110 - v134 * 0.5;
  }

  else if (v103)
  {
    if (*&__dst[8] >= *__dst)
    {
      v135 = *__dst;
    }

    else
    {
      v135 = *&__dst[8];
    }

    v137 = *(a3 + 40);
    v138 = *(a3 + 48);
    if (v138 >= v137)
    {
      v136 = *(a3 + 40);
    }

    else
    {
      v136 = *(a3 + 48);
    }

    v133 = vabdd_f64(*&__dst[8], *__dst);
    v134 = vabdd_f64(v138, v137);
  }

  else
  {
    v139 = *(a3 + 24);
    v140 = *(a3 + 32);
    if (v140 >= v139)
    {
      v135 = *(a3 + 24);
    }

    else
    {
      v135 = *(a3 + 32);
    }

    if (*&__dst[8] >= *__dst)
    {
      v136 = *__dst;
    }

    else
    {
      v136 = *&__dst[8];
    }

    v133 = vabdd_f64(v140, v139);
    v134 = vabdd_f64(*&__dst[8], *__dst);
  }

  v174 = *(*(a3 + 16) + 24);
  v141 = (v28 + v29[25]);
  v142 = v141[1];
  v143 = (v28 + v29[23]);
  v144 = *v143;
  v145 = v143[1];
  v147 = v143[2];
  v146 = v143[3];
  v148 = (v28 + v29[24]);
  v150 = *v148;
  v149 = v148[1];
  v151 = v148[2];
  v152 = v148[3];
  v171 = *v141;

  sub_1AADA61DC(v144, v145, v147, v146);
  sub_1AADA61DC(v150, v149, v151, v152);

  sub_1AAF72B20(!v177, &v293, v186);
  sub_1AADC7F60(v316);
  sub_1AAD6E0DC(&v323);
  sub_1AAE67F28(&v322, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  sub_1AAD6E18C(&v325);

  *&v193[16] = *&__dst[112];
  v194 = *&__dst[128];
  v195 = *&__dst[144];
  v196 = *&__dst[160];
  v190 = *&__dst[48];
  v191 = *&__dst[64];
  v192 = *&__dst[80];
  *v193 = *&__dst[96];
  v188 = *&__dst[16];
  v189 = *&__dst[32];
  nullsub_1();
  sub_1AAE2D7EC(v178);
  v153 = swift_allocObject();
  *(v153 + 16) = v174;
  *(v153 + 24) = v135;
  *(v153 + 32) = v136;
  *&v154 = v171;
  *(&v154 + 1) = v142;
  *&v155 = v144;
  *(&v155 + 1) = v145;
  *(v153 + 40) = v133;
  *(v153 + 48) = v134;
  *(v153 + 72) = v155;
  *(v153 + 56) = v154;
  *&v155 = v147;
  *(&v155 + 1) = v146;
  *&v154 = v150;
  *(&v154 + 1) = v149;
  *(v153 + 104) = v154;
  *(v153 + 88) = v155;
  *(v153 + 120) = v151;
  *(v153 + 128) = v152;
  *(v153 + 136) = v175;
  v156 = v186[7];
  *(v153 + 240) = v186[6];
  *(v153 + 256) = v156;
  *(v153 + 272) = v186[8];
  v157 = v187;
  v158 = v186[3];
  *(v153 + 176) = v186[2];
  *(v153 + 192) = v158;
  v159 = v186[5];
  *(v153 + 208) = v186[4];
  *(v153 + 224) = v159;
  v160 = v186[1];
  *(v153 + 144) = v186[0];
  *(v153 + 160) = v160;
  *(v153 + 288) = v157;
  *(v153 + 296) = v176;
  v161 = v194;
  *(v153 + 400) = *&v193[16];
  *(v153 + 416) = v161;
  *(v153 + 432) = v195;
  *(v153 + 448) = v196;
  v162 = v191;
  *(v153 + 336) = v190;
  *(v153 + 352) = v162;
  v163 = *v193;
  *(v153 + 368) = v192;
  *(v153 + 384) = v163;
  v164 = v189;
  *(v153 + 304) = v188;
  *(v153 + 320) = v164;
  v165 = v181;
  *(v153 + 552) = *&v180[16];
  *(v153 + 568) = v165;
  *(v153 + 584) = v182;
  *(v153 + 600) = v183;
  v166 = *&v179[16];
  *(v153 + 488) = *v179;
  *(v153 + 504) = v166;
  v167 = *v180;
  *(v153 + 520) = *&v179[32];
  *(v153 + 536) = v167;
  v168 = *&v178[16];
  *(v153 + 456) = *v178;
  *(v153 + 472) = v168;
  *(v153 + 608) = 0;
  *(v153 + 610) = v197;
  *(v153 + 614) = v198;
  *(v153 + 616) = 0;
  return v153 | 0xC000000000000000;
}

uint64_t sub_1AAE67EB8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAE68434(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAE67F28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAE68434(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAE67F84(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1AAE68008(0, a3, a4, a5, type metadata accessor for ResolvedModifier);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AAE68008(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1AAE68434(255, a3, a4, a5);
    v6 = sub_1AAF8FE74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAE68064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE68128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE681E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAE68008(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AAE68240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1AAE682A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_1AAE682F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
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

double sub_1AAE68344(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 424) = 0;
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
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 432) = 1;
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

    *(a1 + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AAE68434(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t PointPlot<A>.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1AAE6856C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a8;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v15 = type metadata accessor for XYRenderer(0, v24);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  (*(v16 + 16))(&v22 - v18, a1, v15, v17);
  v20 = sub_1AAE686B0(v19, a2, a3, a4, a5, a6, a7, v23);
  return (*(v16 + 8))(a1, v15, v20);
}

double sub_1AAE686B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v10 = type metadata accessor for XYRenderer(0, v18);
  *(a8 + 24) = v10;
  *(a8 + 32) = &off_1F1FE53F0;
  v11 = sub_1AACB2508(a8);
  (*(*(v10 - 8) + 32))(v11, a1, v10);
  v12 = type metadata accessor for PointsRenderer(0);
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  v13 = v12[8];
  v14 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v14 - 8) + 56))(a8 + v13, 1, 1, v14);
  v15 = a8 + v12[9];
  *(v15 + 32) = 0;
  result = 0.0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 40) = -1;
  v17 = a8 + v12[10];
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = -1;
  return result;
}

uint64_t PointPlot.init<A, B, C>(_:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v59 = a3;
  v60 = a9;
  v61 = a1;
  v62 = a2;
  v55 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a6, a10);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v48 - v16;
  v17 = a5;
  v18 = a5;
  v19 = a8;
  v54 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, v17, a8);
  MEMORY[0x1EEE9AC00](v54);
  v21 = &v48 - v20;
  v56 = *(a4 - 8);
  v22 = v56;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v25;
  v52 = a4;
  v63[0] = a4;
  v63[1] = v18;
  v63[2] = a6;
  v63[3] = a7;
  v63[4] = v19;
  v63[5] = a10;
  v26 = v19;
  v50 = v19;
  v27 = type metadata accessor for XYRenderer(0, v63);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v48 - v29;
  (*(v22 + 16))(v25, v61, a4, v28);
  v31 = v18;
  v53 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v18, v26);
  v32 = *(v53 - 8);
  (*(v32 + 16))(v21, v62, v53);
  swift_storeEnumTagMultiPayload();
  v33 = a6;
  v49 = a10;
  v34 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a10);
  v35 = *(v34 - 8);
  v36 = v57;
  v37 = v59;
  (*(v35 + 16))(v57, v59, v34);
  swift_storeEnumTagMultiPayload();
  v38 = v30;
  v39 = v30;
  v40 = v21;
  v41 = v36;
  v42 = v52;
  v43 = v31;
  v44 = v31;
  v45 = v55;
  v46 = v50;
  sub_1AAF314E0(v51, v40, v41, v52, v44, v33, v55, v50, v39, a10);
  sub_1AAE6856C(v38, v42, v43, v33, v45, v46, v49, v60);
  (*(v35 + 8))(v37, v34);
  (*(v32 + 8))(v62, v53);
  return (*(v56 + 8))(v61, v42);
}

uint64_t PointPlot.init<A, B>(_:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v46 = a4;
  v44 = a2;
  v45 = a3;
  v47 = a9;
  v48 = a1;
  v41 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v43);
  v15 = &v39 - v14;
  v42 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a6, a8);
  MEMORY[0x1EEE9AC00](v42);
  v17 = &v39 - v16;
  v40 = *(a5 - 8);
  v18 = v40;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = a5;
  v49[1] = a6;
  v49[2] = MEMORY[0x1E69E63B0];
  v49[3] = a7;
  v22 = a8;
  v39 = a8;
  v49[4] = a8;
  v49[5] = &protocol witness table for Double;
  v23 = type metadata accessor for XYRenderer(0, v49);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v39 - v25;
  v27 = *(v18 + 16);
  v28 = a5;
  v27(v21, v48, a5, v24);
  v29 = a6;
  v30 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, v22);
  v31 = *(v30 - 8);
  v32 = v44;
  (*(v31 + 16))(v17, v44, v30);
  swift_storeEnumTagMultiPayload();
  *v15 = v45;
  v15[8] = v46 & 1;
  swift_storeEnumTagMultiPayload();
  v33 = v21;
  v34 = v15;
  v35 = MEMORY[0x1E69E63B0];
  v36 = v41;
  v37 = v39;
  sub_1AAF314E0(v33, v17, v34, v28, v29, MEMORY[0x1E69E63B0], v41, v39, v26, &protocol witness table for Double);
  sub_1AAE6856C(v26, v28, v29, v35, v36, v37, &protocol witness table for Double, v47);
  (*(v31 + 8))(v32, v30);
  return (*(v40 + 8))(v48, v28);
}

uint64_t PointPlot.init<A, B>(_:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a6;
  v39 = a2;
  v40 = a3;
  v41 = a8;
  v42 = a1;
  v12 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v38 = type metadata accessor for BoundingSectionSpecification(0, v12, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v38);
  v14 = (&v35 - v13);
  v37 = type metadata accessor for BoundingSectionSpecification(0, v12, a5, a7);
  MEMORY[0x1EEE9AC00](v37);
  v16 = &v35 - v15;
  v35 = *(a4 - 8);
  v17 = v35;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = a4;
  v43[1] = a5;
  v21 = a4;
  v43[2] = MEMORY[0x1E69E63B0];
  v43[3] = a6;
  v43[4] = a7;
  v43[5] = &protocol witness table for Double;
  v22 = type metadata accessor for XYRenderer(0, v43);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v35 - v24;
  (*(v17 + 16))(v20, v42, a4, v23);
  v26 = a7;
  v27 = type metadata accessor for PlottableProjection(0, v12, a5, a7);
  v28 = *(v27 - 8);
  v29 = v39;
  (*(v28 + 16))(v16, v39, v27);
  swift_storeEnumTagMultiPayload();
  *v14 = v40;
  swift_storeEnumTagMultiPayload();
  v30 = v20;
  v31 = v16;
  v32 = MEMORY[0x1E69E63B0];
  v33 = v36;
  sub_1AAF314E0(v30, v31, v14, v21, a5, MEMORY[0x1E69E63B0], v36, v26, v25, &protocol witness table for Double);
  sub_1AAE6856C(v25, v21, a5, v32, v33, v26, &protocol witness table for Double, v41);
  (*(v28 + 8))(v29, v27);
  return (*(v35 + 8))(v42, v21);
}

uint64_t PointPlot.init<A, B>(_:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a4;
  v41 = a9;
  v38 = a3;
  v36 = a7;
  v37 = a2;
  v42 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a6, a8);
  MEMORY[0x1EEE9AC00](v39);
  v15 = &v35 - v14;
  v16 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v35 = *(a5 - 8);
  v19 = v35;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = a5;
  v43[1] = MEMORY[0x1E69E63B0];
  v43[2] = a6;
  v43[3] = a7;
  v43[4] = &protocol witness table for Double;
  v43[5] = a8;
  v23 = type metadata accessor for XYRenderer(0, v43);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v35 - v25;
  (*(v19 + 16))(v22, v42, a5, v24);
  *v18 = v37;
  v18[8] = v38 & 1;
  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a8);
  v28 = *(v27 - 8);
  v29 = v40;
  (*(v28 + 16))(v15, v40, v27);
  swift_storeEnumTagMultiPayload();
  v30 = v22;
  v31 = v18;
  v32 = MEMORY[0x1E69E63B0];
  v33 = v36;
  sub_1AAF314E0(v30, v31, v15, a5, MEMORY[0x1E69E63B0], a6, v36, &protocol witness table for Double, v26, a8);
  sub_1AAE6856C(v26, a5, v32, a6, v33, &protocol witness table for Double, a8, v41);
  (*(v28 + 8))(v29, v27);
  return (*(v35 + 8))(v42, a5);
}

uint64_t PointPlot.init<A, B>(_:x:y:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a6;
  v37 = a2;
  v39 = a3;
  v40 = a8;
  v41 = a1;
  v12 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v38 = type metadata accessor for BoundingSectionSpecification(0, v12, a5, a7);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BoundingSectionSpecification(0, v12, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - v16);
  v35 = *(a4 - 8);
  v18 = v35;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = a4;
  v42[1] = MEMORY[0x1E69E63B0];
  v42[2] = a5;
  v42[3] = a6;
  v42[4] = &protocol witness table for Double;
  v42[5] = a7;
  v22 = type metadata accessor for XYRenderer(0, v42);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v34 - v24;
  (*(v18 + 16))(v21, v41, a4, v23);
  *v17 = v37;
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for PlottableProjection(0, v12, a5, a7);
  v27 = *(v26 - 8);
  v28 = v39;
  (*(v27 + 16))(v14, v39, v26);
  swift_storeEnumTagMultiPayload();
  v29 = v21;
  v30 = v14;
  v31 = MEMORY[0x1E69E63B0];
  v32 = v36;
  sub_1AAF314E0(v29, v17, v30, a4, MEMORY[0x1E69E63B0], a5, v36, &protocol witness table for Double, v25, a7);
  sub_1AAE6856C(v25, a4, v31, a5, v32, &protocol witness table for Double, a7, v40);
  (*(v27 + 8))(v28, v26);
  return (*(v35 + 8))(v41, a4);
}

uint64_t static VectorizedPointPlotContent._layoutChartContent(_:_:)(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1AACBB42C(a1, v3);
  v6 = *a2;
  return (*(v4 + 8))(&v6, v3, v4);
}

uint64_t static VectorizedPointPlotContent._renderChartContent(_:_:)@<X0>(void *a1@<X0>, char *a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1AACE4ACC(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(a2 + 1);
  sub_1AAE69C70(a1, v11);
  v32[0] = v12;
  v33 = v13;
  sub_1AAF52A00(v32);
  if (v12)
  {
    v14 = type metadata accessor for SgGroup(0);
    v31 = a3;
    v15 = v14;
    v16 = swift_allocBox();
    v18 = v17;
    v30 = *(*(v13 + 16) + 24);
    v20 = a1[3];
    v19 = a1[4];
    sub_1AACBB42C(a1, v20);
    v21 = (*(v19 + 32))(&type metadata for PointMark, v13, &type metadata for PointMark, &off_1F1FDA4E0, v20, v19);
    v22 = type metadata accessor for SgClipRect(0);
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = v13 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v24 = *(v23 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 64));
    sub_1AAE69CD4(v11);
    *v18 = v30;
    v18[1] = v21;
    result = sub_1AAE69D30(v8, v18 + v15[6], sub_1AACE4ACC);
    *(v18 + v15[7]) = 0x3FF0000000000000;
    *(v18 + v15[8]) = v24;
    *(v18 + v15[9]) = MEMORY[0x1E69E7CC0];
    v26 = v15[10];
    a3 = v31;
    *(v18 + v26) = 0;
  }

  else
  {
    type metadata accessor for AnyVectorizedRenderer(0);
    v27 = swift_allocBox();
    sub_1AAE69D30(v11, v28, type metadata accessor for PointsRenderer);
    type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
    result = swift_storeEnumTagMultiPayload();
    v16 = v27 | 0xD000000000000000;
  }

  *a3 = v16;
  return result;
}

uint64_t sub_1AAE69C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PointsRenderer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE69CD4(uint64_t a1)
{
  v2 = type metadata accessor for PointsRenderer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE69D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE69DE0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE69E54(uint64_t a1)
{
  result = type metadata accessor for PointsRenderer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 RectangleMark.init<A, B>(x:y:width:height:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = a4;
  *&v38[0] = 0;
  BYTE8(v38[0]) = 1;
  sub_1AAD59F90(v38);
  v19 = v38[7];
  *(a9 + 384) = v38[6];
  *(a9 + 400) = v19;
  *(a9 + 416) = v38[8];
  v20 = v38[3];
  *(a9 + 320) = v38[2];
  *(a9 + 336) = v20;
  v21 = v38[5];
  *(a9 + 352) = v38[4];
  *(a9 + 368) = v21;
  v22 = v38[1];
  *(a9 + 288) = v38[0];
  *(a9 + 304) = v22;
  sub_1AAE83EF8(a1, a3, v14, a7, a10, v36);
  v23 = v36[7];
  *(a9 + 96) = v36[6];
  *(a9 + 112) = v23;
  *(a9 + 128) = v36[8];
  v24 = v36[3];
  *(a9 + 32) = v36[2];
  *(a9 + 48) = v24;
  v25 = v36[5];
  *(a9 + 64) = v36[4];
  *(a9 + 80) = v25;
  v26 = v36[1];
  *a9 = v36[0];
  *(a9 + 16) = v26;
  sub_1AAE83EF8(a2, a5, a6, a8, a11, v37);
  v28 = type metadata accessor for PlottableValue(0, a8, a11, v27);
  (*(*(v28 - 8) + 8))(a2, v28);
  v30 = type metadata accessor for PlottableValue(0, a7, a10, v29);
  (*(*(v30 - 8) + 8))(a1, v30);
  v31 = v37[7];
  *(a9 + 240) = v37[6];
  *(a9 + 256) = v31;
  *(a9 + 272) = v37[8];
  v32 = v37[3];
  *(a9 + 176) = v37[2];
  *(a9 + 192) = v32;
  v33 = v37[5];
  *(a9 + 208) = v37[4];
  *(a9 + 224) = v33;
  result = v37[1];
  *(a9 + 144) = v37[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A>(x:yStart:yEnd:width:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = a7;
  *&v34[0] = 0;
  BYTE8(v34[0]) = 1;
  sub_1AAD59F90(v34);
  v19 = v34[7];
  *(a9 + 384) = v34[6];
  *(a9 + 400) = v19;
  *(a9 + 416) = v34[8];
  v20 = v34[3];
  *(a9 + 320) = v34[2];
  *(a9 + 336) = v20;
  v21 = v34[5];
  *(a9 + 352) = v34[4];
  *(a9 + 368) = v21;
  v22 = v34[1];
  *(a9 + 288) = v34[0];
  *(a9 + 304) = v22;
  sub_1AAE83EF8(a1, a6, v11, a8, a10, v33);
  v24 = type metadata accessor for PlottableValue(0, a8, a10, v23);
  (*(*(v24 - 8) + 8))(a1, v24);
  v25 = v33[7];
  *(a9 + 96) = v33[6];
  *(a9 + 112) = v25;
  *(a9 + 128) = v33[8];
  v26 = v33[3];
  *(a9 + 32) = v33[2];
  *(a9 + 48) = v26;
  v27 = v33[5];
  *(a9 + 64) = v33[4];
  *(a9 + 80) = v27;
  v28 = v33[1];
  *a9 = v33[0];
  *(a9 + 16) = v28;
  *&v35 = a2;
  BYTE8(v35) = a3 & 1;
  v36.n128_u64[0] = a4;
  v36.n128_u8[8] = a5 & 1;
  sub_1AAE52D28(&v35);
  v29 = v42;
  *(a9 + 240) = v41;
  *(a9 + 256) = v29;
  *(a9 + 272) = v43;
  v30 = v38;
  *(a9 + 176) = v37;
  *(a9 + 192) = v30;
  v31 = v40;
  *(a9 + 208) = v39;
  *(a9 + 224) = v31;
  result = v36;
  *(a9 + 144) = v35;
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A>(xStart:xEnd:y:height:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = a7;
  *&v34[0] = 0;
  BYTE8(v34[0]) = 1;
  sub_1AAD59F90(v34);
  v19 = v34[7];
  *(a9 + 384) = v34[6];
  *(a9 + 400) = v19;
  *(a9 + 416) = v34[8];
  v20 = v34[3];
  *(a9 + 320) = v34[2];
  *(a9 + 336) = v20;
  v21 = v34[5];
  *(a9 + 352) = v34[4];
  *(a9 + 368) = v21;
  v22 = v34[1];
  *(a9 + 288) = v34[0];
  *(a9 + 304) = v22;
  *&v35 = a1;
  BYTE8(v35) = a2 & 1;
  *&v36 = a3;
  BYTE8(v36) = a4 & 1;
  sub_1AAE52D28(&v35);
  v23 = v42;
  *(a9 + 96) = v41;
  *(a9 + 112) = v23;
  *(a9 + 128) = v43;
  v24 = v38;
  *(a9 + 32) = v37;
  *(a9 + 48) = v24;
  v25 = v40;
  *(a9 + 64) = v39;
  *(a9 + 80) = v25;
  v26 = v36;
  *a9 = v35;
  *(a9 + 16) = v26;
  sub_1AAE83EF8(a5, a6, v11, a8, a10, v33);
  v28 = type metadata accessor for PlottableValue(0, a8, a10, v27);
  (*(*(v28 - 8) + 8))(a5, v28);
  v29 = v33[7];
  *(a9 + 240) = v33[6];
  *(a9 + 256) = v29;
  *(a9 + 272) = v33[8];
  v30 = v33[3];
  *(a9 + 176) = v33[2];
  *(a9 + 192) = v30;
  v31 = v33[5];
  *(a9 + 208) = v33[4];
  *(a9 + 224) = v31;
  result = v33[1];
  *(a9 + 144) = v33[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A, B>(xStart:xEnd:y:height:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a5;
  *&v38[0] = 0;
  BYTE8(v38[0]) = 1;
  sub_1AAD59F90(v38);
  v19 = v38[7];
  *(a9 + 384) = v38[6];
  *(a9 + 400) = v19;
  *(a9 + 416) = v38[8];
  v20 = v38[3];
  *(a9 + 320) = v38[2];
  *(a9 + 336) = v20;
  v21 = v38[5];
  *(a9 + 352) = v38[4];
  *(a9 + 368) = v21;
  v22 = v38[1];
  *(a9 + 288) = v38[0];
  *(a9 + 304) = v22;
  sub_1AAE83D50(a1, a2, a6, a8, v36);
  v23 = v36[7];
  *(a9 + 96) = v36[6];
  *(a9 + 112) = v23;
  *(a9 + 128) = v36[8];
  v24 = v36[3];
  *(a9 + 32) = v36[2];
  *(a9 + 48) = v24;
  v25 = v36[5];
  *(a9 + 64) = v36[4];
  *(a9 + 80) = v25;
  v26 = v36[1];
  *a9 = v36[0];
  *(a9 + 16) = v26;
  sub_1AAE83EF8(a3, a4, v13, a7, a10, v37);
  v28 = type metadata accessor for PlottableValue(0, a7, a10, v27);
  (*(*(v28 - 8) + 8))(a3, v28);
  v30 = type metadata accessor for PlottableValue(0, a6, a8, v29);
  v31 = *(*(v30 - 8) + 8);
  v31(a2, v30);
  v31(a1, v30);
  v32 = v37[7];
  *(a9 + 240) = v37[6];
  *(a9 + 256) = v32;
  *(a9 + 272) = v37[8];
  v33 = v37[3];
  *(a9 + 176) = v37[2];
  *(a9 + 192) = v33;
  v34 = v37[5];
  *(a9 + 208) = v37[4];
  *(a9 + 224) = v34;
  result = v37[1];
  *(a9 + 144) = v37[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A>(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v34[0] = 0;
  BYTE8(v34[0]) = 1;
  sub_1AAD59F90(v34);
  v18 = v34[7];
  *(a9 + 384) = v34[6];
  *(a9 + 400) = v18;
  *(a9 + 416) = v34[8];
  v19 = v34[3];
  *(a9 + 320) = v34[2];
  *(a9 + 336) = v19;
  v20 = v34[5];
  *(a9 + 352) = v34[4];
  *(a9 + 368) = v20;
  v21 = v34[1];
  *(a9 + 288) = v34[0];
  *(a9 + 304) = v21;
  sub_1AAE83D50(a1, a2, a7, a8, v33);
  v23 = type metadata accessor for PlottableValue(0, a7, a8, v22);
  v24 = *(*(v23 - 8) + 8);
  v24(a2, v23);
  v24(a1, v23);
  v25 = v33[7];
  *(a9 + 96) = v33[6];
  *(a9 + 112) = v25;
  *(a9 + 128) = v33[8];
  v26 = v33[3];
  *(a9 + 32) = v33[2];
  *(a9 + 48) = v26;
  v27 = v33[5];
  *(a9 + 64) = v33[4];
  *(a9 + 80) = v27;
  v28 = v33[1];
  *a9 = v33[0];
  *(a9 + 16) = v28;
  *&v35 = a3;
  BYTE8(v35) = a4 & 1;
  v36.n128_u64[0] = a5;
  v36.n128_u8[8] = a6 & 1;
  sub_1AAE52D28(&v35);
  v29 = v42;
  *(a9 + 240) = v41;
  *(a9 + 256) = v29;
  *(a9 + 272) = v43;
  v30 = v38;
  *(a9 + 176) = v37;
  *(a9 + 192) = v30;
  v31 = v40;
  *(a9 + 208) = v39;
  *(a9 + 224) = v31;
  result = v36;
  *(a9 + 144) = v35;
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A, B>(x:yStart:yEnd:width:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a5;
  *&v38[0] = 0;
  BYTE8(v38[0]) = 1;
  sub_1AAD59F90(v38);
  v19 = v38[7];
  *(a9 + 384) = v38[6];
  *(a9 + 400) = v19;
  *(a9 + 416) = v38[8];
  v20 = v38[3];
  *(a9 + 320) = v38[2];
  *(a9 + 336) = v20;
  v21 = v38[5];
  *(a9 + 352) = v38[4];
  *(a9 + 368) = v21;
  v22 = v38[1];
  *(a9 + 288) = v38[0];
  *(a9 + 304) = v22;
  sub_1AAE83EF8(a1, a4, v13, a6, a8, v36);
  v23 = v36[7];
  *(a9 + 96) = v36[6];
  *(a9 + 112) = v23;
  *(a9 + 128) = v36[8];
  v24 = v36[3];
  *(a9 + 32) = v36[2];
  *(a9 + 48) = v24;
  v25 = v36[5];
  *(a9 + 64) = v36[4];
  *(a9 + 80) = v25;
  v26 = v36[1];
  *a9 = v36[0];
  *(a9 + 16) = v26;
  sub_1AAE83D50(a2, a3, a7, a10, v37);
  v28 = type metadata accessor for PlottableValue(0, a7, a10, v27);
  v29 = *(*(v28 - 8) + 8);
  v29(a3, v28);
  v29(a2, v28);
  v31 = type metadata accessor for PlottableValue(0, a6, a8, v30);
  (*(*(v31 - 8) + 8))(a1, v31);
  v32 = v37[7];
  *(a9 + 240) = v37[6];
  *(a9 + 256) = v32;
  *(a9 + 272) = v37[8];
  v33 = v37[3];
  *(a9 + 176) = v37[2];
  *(a9 + 192) = v33;
  v34 = v37[5];
  *(a9 + 208) = v37[4];
  *(a9 + 224) = v34;
  result = v37[1];
  *(a9 + 144) = v37[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A>(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v34[0] = 0;
  BYTE8(v34[0]) = 1;
  sub_1AAD59F90(v34);
  v18 = v34[7];
  *(a9 + 384) = v34[6];
  *(a9 + 400) = v18;
  *(a9 + 416) = v34[8];
  v19 = v34[3];
  *(a9 + 320) = v34[2];
  *(a9 + 336) = v19;
  v20 = v34[5];
  *(a9 + 352) = v34[4];
  *(a9 + 368) = v20;
  v21 = v34[1];
  *(a9 + 288) = v34[0];
  *(a9 + 304) = v21;
  *&v35 = a1;
  BYTE8(v35) = a2 & 1;
  *&v36 = a3;
  BYTE8(v36) = a4 & 1;
  sub_1AAE52D28(&v35);
  v22 = v42;
  *(a9 + 96) = v41;
  *(a9 + 112) = v22;
  *(a9 + 128) = v43;
  v23 = v38;
  *(a9 + 32) = v37;
  *(a9 + 48) = v23;
  v24 = v40;
  *(a9 + 64) = v39;
  *(a9 + 80) = v24;
  v25 = v36;
  *a9 = v35;
  *(a9 + 16) = v25;
  sub_1AAE83D50(a5, a6, a7, a8, v33);
  v27 = type metadata accessor for PlottableValue(0, a7, a8, v26);
  v28 = *(*(v27 - 8) + 8);
  v28(a6, v27);
  v28(a5, v27);
  v29 = v33[7];
  *(a9 + 240) = v33[6];
  *(a9 + 256) = v29;
  *(a9 + 272) = v33[8];
  v30 = v33[3];
  *(a9 + 176) = v33[2];
  *(a9 + 192) = v30;
  v31 = v33[5];
  *(a9 + 208) = v33[4];
  *(a9 + 224) = v31;
  result = v33[1];
  *(a9 + 144) = v33[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v38[0] = 0;
  BYTE8(v38[0]) = 1;
  sub_1AAD59F90(v38);
  v18 = v38[7];
  *(a9 + 384) = v38[6];
  *(a9 + 400) = v18;
  *(a9 + 416) = v38[8];
  v19 = v38[3];
  *(a9 + 320) = v38[2];
  *(a9 + 336) = v19;
  v20 = v38[5];
  *(a9 + 352) = v38[4];
  *(a9 + 368) = v20;
  v21 = v38[1];
  *(a9 + 288) = v38[0];
  *(a9 + 304) = v21;
  sub_1AAE83D50(a1, a2, a5, a7, v36);
  v22 = v36[7];
  *(a9 + 96) = v36[6];
  *(a9 + 112) = v22;
  *(a9 + 128) = v36[8];
  v23 = v36[3];
  *(a9 + 32) = v36[2];
  *(a9 + 48) = v23;
  v24 = v36[5];
  *(a9 + 64) = v36[4];
  *(a9 + 80) = v24;
  v25 = v36[1];
  *a9 = v36[0];
  *(a9 + 16) = v25;
  sub_1AAE83D50(a3, a4, a6, a8, v37);
  v27 = type metadata accessor for PlottableValue(0, a6, a8, v26);
  v28 = *(*(v27 - 8) + 8);
  v28(a4, v27);
  v28(a3, v27);
  v30 = type metadata accessor for PlottableValue(0, a5, a7, v29);
  v31 = *(*(v30 - 8) + 8);
  v31(a2, v30);
  v31(a1, v30);
  v32 = v37[7];
  *(a9 + 240) = v37[6];
  *(a9 + 256) = v32;
  *(a9 + 272) = v37[8];
  v33 = v37[3];
  *(a9 + 176) = v37[2];
  *(a9 + 192) = v33;
  v34 = v37[5];
  *(a9 + 208) = v37[4];
  *(a9 + 224) = v34;
  result = v37[1];
  *(a9 + 144) = v37[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *&v30[0] = 0;
  BYTE8(v30[0]) = 1;
  sub_1AAD59F90(v30);
  v18 = v30[7];
  *(a9 + 384) = v30[6];
  *(a9 + 400) = v18;
  *(a9 + 416) = v30[8];
  v19 = v30[3];
  *(a9 + 320) = v30[2];
  *(a9 + 336) = v19;
  v20 = v30[5];
  *(a9 + 352) = v30[4];
  *(a9 + 368) = v20;
  v21 = v30[1];
  *(a9 + 288) = v30[0];
  *(a9 + 304) = v21;
  *&v31 = a1;
  BYTE8(v31) = a2 & 1;
  *&v32 = a3;
  BYTE8(v32) = a4 & 1;
  sub_1AAE52D28(&v31);
  v22 = v38;
  *(a9 + 96) = v37;
  *(a9 + 112) = v22;
  *(a9 + 128) = v39;
  v23 = v34;
  *(a9 + 32) = v33;
  *(a9 + 48) = v23;
  v24 = v36;
  *(a9 + 64) = v35;
  *(a9 + 80) = v24;
  v25 = v32;
  *a9 = v31;
  *(a9 + 16) = v25;
  *&v40 = a5;
  BYTE8(v40) = a6 & 1;
  v41.n128_u64[0] = a7;
  v41.n128_u8[8] = a8 & 1;
  sub_1AAE52D28(&v40);
  v26 = v47;
  *(a9 + 240) = v46;
  *(a9 + 256) = v26;
  *(a9 + 272) = v48;
  v27 = v43;
  *(a9 + 176) = v42;
  *(a9 + 192) = v27;
  v28 = v45;
  *(a9 + 208) = v44;
  *(a9 + 224) = v28;
  result = v41;
  *(a9 + 144) = v40;
  *(a9 + 160) = result;
  return result;
}

uint64_t static RectangleMark._layoutChartContent(_:_:)(_OWORD *a1)
{
  v1 = a1[7];
  v13[6] = a1[6];
  v13[7] = v1;
  v2 = a1[9];
  v13[8] = a1[8];
  v3 = a1[3];
  v13[2] = a1[2];
  v13[3] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[14];
  v7 = a1[16];
  v8 = a1[17];
  v14[6] = a1[15];
  v14[7] = v7;
  v14[8] = v8;
  v9 = a1[10];
  v10 = a1[12];
  v11 = a1[13];
  v14[2] = a1[11];
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v6;
  v14[0] = v2;
  v14[1] = v9;
  return sub_1AACD2B20(v13, v14);
}

uint64_t static RectangleMark._renderChartContent(_:_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v56 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v56);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE6B3E4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AAF8E244();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[7];
  v62[6] = a1[6];
  v62[7] = v18;
  v19 = a1[9];
  v62[8] = a1[8];
  v20 = a1[3];
  v62[2] = a1[2];
  v62[3] = v20;
  v21 = a1[5];
  v62[4] = a1[4];
  v62[5] = v21;
  v22 = a1[1];
  v62[0] = *a1;
  v62[1] = v22;
  v23 = a1[15];
  v61[5] = a1[14];
  v61[6] = v23;
  v24 = a1[17];
  v61[7] = a1[16];
  v61[8] = v24;
  v25 = a1[11];
  v61[1] = a1[10];
  v61[2] = v25;
  v26 = a1[13];
  v61[3] = a1[12];
  v61[4] = v26;
  v61[0] = v19;
  LOBYTE(v16) = *a2;
  v27 = *(a2 + 8);
  if (v16)
  {
    result = sub_1AAE6B43C(v62, v61, v27);
  }

  else
  {
    v55 = v15;
    sub_1AAD036DC(v62, 0, v58);
    v29 = v58[0];
    v30 = v58[1];
    sub_1AAD036DC(v61, 1, &v59);
    v31 = v59;
    v32 = v60;
    if (v30 >= v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = v30;
    }

    if (v60 >= v59)
    {
      v34 = v59;
    }

    else
    {
      v34 = v60;
    }

    v53 = v34;
    v54 = v33;
    v35 = v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    if (*(v35 + 208))
    {
      sub_1AAF8E444();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
    }

    else
    {
      v41 = *(v35 + 192);
      v43 = *(v35 + 200);
      v37 = *(v35 + 176);
      v39 = *(v35 + 184);
    }

    v44 = vabdd_f64(v30, v29);
    v45 = vabdd_f64(v32, v31);
    sub_1AAE6CD44(v35 + *(v56 + 44), v9, sub_1AAE6B3E4);
    v46 = *(v11 + 48);
    if (v46(v9, 1, v10) == 1)
    {
      if (qword_1ED9B1D88 != -1)
      {
        swift_once();
      }

      v47 = sub_1AAD0F5D8(v10, qword_1ED9C3498);
      (*(v11 + 16))(v13, v47, v10);
      if (v46(v9, 1, v10) != 1)
      {
        sub_1AACAC3FC(v9, sub_1AAE6B3E4);
      }
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
    }

    sub_1AAE6CD44(v35, v6, type metadata accessor for ChartContentRenderContext.Environment);
    v48 = v55;
    sub_1AAD0F2A4(v6, v17 + *(v55 + 44));
    v49 = *(v35 + *(v56 + 64));
    *v17 = 0.0;
    v50 = v53;
    v17[1] = v54;
    v17[2] = v50;
    v17[3] = v44;
    v17[4] = v45;
    *(v17 + 5) = v37;
    *(v17 + 6) = v39;
    *(v17 + 7) = v41;
    *(v17 + 8) = v43;
    (*(v11 + 32))(v17 + *(v48 + 40), v13, v10);
    *(v17 + *(v48 + 48)) = v49;
    v51 = swift_allocBox();
    sub_1AAE6CDAC(v17, v52);
    result = v51 | 0x4000000000000000;
  }

  *v57 = result;
  return result;
}

void sub_1AAE6B3E4(uint64_t a1)
{
  if (!qword_1ED9B5558)
  {
    sub_1AAF8E244();
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B5558);
    }
  }
}

unint64_t sub_1AAE6B43C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  sub_1AAD036DC(a1, 0, v266);
  v6 = v266[0];
  v7 = v266[1];
  sub_1AAD036DC(a2, 1, v267);
  v8 = v267[0];
  v9 = v267[1];
  v10 = sub_1AAE63890(a1, a2);
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    v13 = a1;
  }

  else
  {
    v13 = a2;
  }

  v14 = v13[7];
  if (v10)
  {
    v15 = a2;
  }

  else
  {
    v15 = a1;
  }

  v254 = v13[6];
  v255 = v14;
  v16 = v13[8];
  v17 = v13[3];
  v250 = v13[2];
  v251 = v17;
  v18 = v13[5];
  v252 = v13[4];
  v253 = v18;
  v19 = v13[1];
  v248 = *v13;
  v249 = v19;
  v20 = v15[6];
  v21 = v15[7];
  v22 = v15[4];
  v262 = v15[5];
  v263 = v20;
  v23 = v15[8];
  v264 = v21;
  v265 = v23;
  v24 = v15[2];
  v25 = v15[3];
  v26 = *v15;
  v258 = v15[1];
  v259 = v24;
  v260 = v25;
  v261 = v22;
  v256 = v16;
  v257 = v26;
  v280[6] = v254;
  v280[7] = v255;
  v280[2] = v250;
  v280[3] = v251;
  v280[4] = v252;
  v280[5] = v253;
  v280[0] = v248;
  v280[1] = v249;
  v281[5] = v262;
  v281[6] = v263;
  v281[7] = v264;
  v281[8] = v265;
  v281[1] = v258;
  v281[2] = v24;
  v281[3] = v25;
  v281[4] = v22;
  v280[8] = v16;
  v281[0] = v26;
  v300[6] = v254;
  v300[7] = v255;
  v300[8] = v16;
  v300[2] = v250;
  v300[3] = v251;
  v300[4] = v252;
  v300[5] = v253;
  v300[0] = v248;
  v300[1] = v249;
  v27 = sub_1AACDB99C(v300);
  v182 = v11;
  v180 = v12;
  if (v27 != 2)
  {
    if (v27)
    {
      sub_1AAE49270(__dst);
      sub_1AAD6D0FC(0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1AAF99670;
      v53 = v52 + 32;
      sub_1AAD5835C(a2, &v183);
      sub_1AAD5835C(a1, &v183);
      v238 = __dst[8];
      v239 = __dst[9];
      v240 = *&__dst[10];
      v234 = __dst[4];
      v235 = __dst[5];
      v236 = __dst[6];
      v237 = __dst[7];
      v230 = __dst[0];
      v231 = __dst[1];
      v232 = __dst[2];
      v233 = __dst[3];
LABEL_66:
      sub_1AAD5835C(v280, &v183);
      sub_1AAF72B20(!v11, v280, &v241);
      goto LABEL_68;
    }

    v28 = sub_1AACD2C84(v300);
    v303 = *v28;
    v29 = *(v28 + 24);
    v304 = *(v28 + 16);
    v305 = v29;
    v301 = *(v28 + 32);
    v302 = *(v28 + 48);
    v282 = v303;
    v283 = v304;
    v284 = v29;
    v285 = v301;
    v286 = v302;
    *&v287[15] = *(v28 + 64);
    *v287 = *(v28 + 49);
    v306 = v303;
    v307 = v304;
    v309 = v302;
    v308 = v301;
    if (v11)
    {
      swift_beginAccess();
      memcpy(__dst, (a3 + 80), 0x102uLL);
      if (*(&__dst[1] + 1))
      {
        v30 = *(a3 + 128);
        v273 = *(a3 + 112);
        v274 = v30;
        v275 = *(a3 + 144);
        v276[0] = *(a3 + 160);
        v31 = *(a3 + 96);
        v271 = *(a3 + 80);
        v272 = v31;
        sub_1AAE14D50(&v308, &v183);
        sub_1AAD5835C(a2, &v183);
        sub_1AAD5835C(a1, &v183);

        sub_1AADFA6FC(&v306, &v183);
        sub_1AAE6CE20(&v305, &v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        v217 = v273;
        v218 = v274;
        v219 = v275;
        LOBYTE(v220) = v276[0];
        v215 = v271;
        v216 = v272;
LABEL_12:
        v32 = *(&v219 + 1);
        v33 = v217;
        v34 = v218;
        v35 = v220;
        sub_1AAE6CE20(__dst, &v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AAE0BFDC(&v215, &v183);
        sub_1AAE0A738(v33, *(&v33 + 1), v34, v32, v35, 3, &v268);
        v172 = v269;
        v176 = v268;
        v36 = v270;
        sub_1AAE0C014(&v215);
        sub_1AAD04750(v215, *(&v215 + 1), v216);

        sub_1AAD0E818(v33, *(&v33 + 1), v34);
        goto LABEL_46;
      }

      if (BYTE1(__dst[16]) == 2)
      {
        sub_1AAE14D50(&v308, &v183);
        sub_1AAD5835C(a2, &v183);
        sub_1AAD5835C(a1, &v183);

        sub_1AADFA6FC(&v306, &v183);
        sub_1AAE6CE20(&v305, &v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      }

      else
      {
        sub_1AAE14D50(&v308, &v183);
        sub_1AAD5835C(a2, &v183);
        sub_1AAD5835C(a1, &v183);

        sub_1AADFA6FC(&v306, &v183);
        sub_1AAE6CE20(&v305, &v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AACBB21C(__dst, &v183);
        v68 = sub_1AAF8E7A4();
        if (v68 == sub_1AAF8E7A4())
        {
          sub_1AAE6CE20(&__dst[11], &v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
          sub_1AACBB254(__dst);
          if (*(&__dst[12] + 1))
          {
            v215 = __dst[11];
            v216 = __dst[12];
            v217 = __dst[13];
            v218 = __dst[14];
            v219 = __dst[15];
            LOBYTE(v220) = __dst[16];
            goto LABEL_12;
          }
        }

        else
        {
          sub_1AACBB254(__dst);
        }
      }

      v172 = 0u;
      v176 = 0u;
      v36 = 2;
LABEL_46:
      v72 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      swift_beginAccess();
      v73 = (v72 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 84));
      v74 = *(v73 + 2);
      v294 = *v73;
      v295 = v74;
      v297 = v172;
      v296 = v176;
      v298 = v36;
      v299 = *(a3 + 352);
      v75 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
      *&v276[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
      v76 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
      v275 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
      *v276 = v76;
      v77 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
      v271 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
      v272 = v77;
      v78 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
      v273 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
      v274 = v78;
      if (v276[24] != 255)
      {
        v79 = v75[4];
        v80 = v75[5];
        v81 = v75[2];
        v244 = v75[3];
        v245 = v79;
        v246[0] = v80;
        *(v246 + 9) = *(v75 + 89);
        v82 = v75[1];
        v241 = *v75;
        v242 = v82;
        v243 = v81;
        v288 = v241;
        v289 = v82;
        v290 = v81;
        v291 = v244;
        v292 = v79;
        v293[0] = v80;
        *(v293 + 9) = *(v246 + 9);
LABEL_52:
        sub_1AAE6CE20(&v241, &v183, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
        v11 = v182;
        sub_1AAE08D1C(&v288, a3, !v182, &v282, &v183);
        sub_1AACAC3FC(&v271, sub_1AACCF364);
        nullsub_1();

        sub_1AAD6E0DC(&v306);
        sub_1AAE491F0(&v305);
        sub_1AAD6E18C(&v308);
        goto LABEL_64;
      }

LABEL_53:

      sub_1AAD6E0DC(&v306);
      sub_1AAE491F0(&v305);
      sub_1AAD6E18C(&v308);
      goto LABEL_63;
    }

    swift_beginAccess();
    memcpy(__dst, (a3 + 80), 0x102uLL);
    if (*&__dst[7])
    {
      v54 = *(a3 + 216);
      v273 = *(a3 + 200);
      v274 = v54;
      v275 = *(a3 + 232);
      v276[0] = *(a3 + 248);
      v55 = *(a3 + 184);
      v271 = *(a3 + 168);
      v272 = v55;
      sub_1AAE14D50(&v308, &v183);
      sub_1AAD5835C(a2, &v183);
      sub_1AAD5835C(a1, &v183);

      sub_1AADFA6FC(&v306, &v183);
      sub_1AAE6CE20(&v305, &v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      v217 = v273;
      v218 = v274;
      v219 = v275;
      LOBYTE(v220) = v276[0];
      v215 = v271;
      v216 = v272;
LABEL_20:
      v56 = *(&v219 + 1);
      v57 = v217;
      v58 = v218;
      v59 = v220;
      sub_1AAE6CE20(&__dst[5] + 8, &v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v215, &v183);
      sub_1AAE0A738(v57, *(&v57 + 1), v58, v56, v59, 4, &v268);
      v174 = v269;
      v178 = v268;
      v60 = v270;
      sub_1AAE0C014(&v215);
      sub_1AAD04750(v215, *(&v215 + 1), v216);

      sub_1AAD0E818(v57, *(&v57 + 1), v58);
      goto LABEL_50;
    }

    if (BYTE1(__dst[16]) == 2)
    {
      sub_1AAE14D50(&v308, &v183);
      sub_1AAD5835C(a2, &v183);
      sub_1AAD5835C(a1, &v183);

      sub_1AADFA6FC(&v306, &v183);
      sub_1AAE6CE20(&v305, &v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    }

    else
    {
      sub_1AAE14D50(&v308, &v183);
      sub_1AAD5835C(a2, &v183);
      sub_1AAD5835C(a1, &v183);

      sub_1AADFA6FC(&v306, &v183);
      sub_1AAE6CE20(&v305, &v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AACBB21C(__dst, &v183);
      v69 = sub_1AAF8E7A4();
      if (v69 == sub_1AAF8E7A4())
      {
        sub_1AAE6CE20(&__dst[11], &v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*(&__dst[12] + 1))
        {
          v215 = __dst[11];
          v216 = __dst[12];
          v217 = __dst[13];
          v218 = __dst[14];
          v219 = __dst[15];
          LOBYTE(v220) = __dst[16];
          goto LABEL_20;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v174 = 0u;
    v178 = 0u;
    v60 = 2;
LABEL_50:
    v83 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v84 = (v83 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 88));
    v85 = *(v84 + 2);
    v294 = *v84;
    v295 = v85;
    v297 = v174;
    v296 = v178;
    v298 = v60;
    v299 = *(a3 + 368);
    v86 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    *&v276[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v87 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    v275 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    *v276 = v87;
    v88 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    v271 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v272 = v88;
    v89 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    v273 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v274 = v89;
    if (v276[24] != 255)
    {
      v90 = v86[5];
      v245 = v86[4];
      v246[0] = v90;
      *(v246 + 9) = *(v86 + 89);
      v91 = v86[1];
      v241 = *v86;
      v242 = v91;
      v92 = v86[3];
      v243 = v86[2];
      v244 = v92;
      v288 = v241;
      v289 = v91;
      v290 = v243;
      v291 = v92;
      v292 = v245;
      v293[0] = v90;
      *(v293 + 9) = *(v246 + 9);
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v37 = sub_1AACD2C84(v300);
  v39 = *v37;
  v38 = *(v37 + 8);
  v40 = *(v37 + 16);
  *(&v283 + 1) = *(v37 + 17);
  HIDWORD(v283) = *(v37 + 20);
  v42 = *(v37 + 24);
  v41 = *(v37 + 32);
  v43 = *(v37 + 40);
  v44 = *(v37 + 48);
  v169 = v39;
  v170 = v38;
  *&v282 = v39;
  *(&v282 + 1) = v38;
  v168 = v40;
  LOBYTE(v283) = v40;
  v173 = v41;
  v284 = v42;
  *&v285 = v41;
  v177 = v43;
  *(&v285 + 1) = v43;
  v286 = v44;
  *v287 = *(v37 + 49);
  *&v287[15] = *(v37 + 64);
  v167 = v44;
  if (!v11)
  {
    swift_beginAccess();
    memcpy(__dst, (a3 + 80), 0x102uLL);
    if (*&__dst[7])
    {
      v61 = *(a3 + 216);
      v273 = *(a3 + 200);
      v274 = v61;
      v275 = *(a3 + 232);
      v276[0] = *(a3 + 248);
      v62 = *(a3 + 184);
      v271 = *(a3 + 168);
      v272 = v62;
      sub_1AAD5835C(a2, &v183);
      sub_1AAD5835C(a1, &v183);

      sub_1AACD7C50(v173, v177, v44);
      sub_1AACD7304(v169, v170, v168 & 1);
      v217 = v273;
      v218 = v274;
      v219 = v275;
      LOBYTE(v220) = v276[0];
      v215 = v271;
      v216 = v272;

LABEL_23:
      v63 = *(&v219 + 1);
      v64 = v217;
      v65 = v218;
      v66 = v220;
      sub_1AAE6CE20(&__dst[5] + 8, &v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v215, &v183);
      sub_1AAE0A738(v64, *(&v64 + 1), v65, v63, v66, 4, &v268);
      v164 = v269;
      v166 = v268;
      v67 = v270;
      sub_1AAE0C014(&v215);
      sub_1AAD04750(v215, *(&v215 + 1), v216);

      sub_1AAD0E818(v64, *(&v64 + 1), v65);
LABEL_59:
      v97 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      swift_beginAccess();
      v98 = (v97 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 88));
      v99 = *(v98 + 2);
      v294 = *v98;
      v295 = v99;
      v297 = v164;
      v296 = v166;
      v298 = v67;
      v299 = *(a3 + 368);
      v96 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale;
      goto LABEL_60;
    }

    if (BYTE1(__dst[16]) == 2)
    {
      sub_1AAD5835C(a2, &v183);
      sub_1AAD5835C(a1, &v183);

      sub_1AACD7C50(v173, v177, v44);
      sub_1AACD7304(v169, v170, v168 & 1);
    }

    else
    {
      sub_1AAD5835C(a2, &v183);
      sub_1AAD5835C(a1, &v183);

      sub_1AACD7C50(v173, v177, v44);
      sub_1AACD7304(v169, v170, v168 & 1);

      sub_1AACBB21C(__dst, &v183);
      v71 = sub_1AAF8E7A4();
      if (v71 == sub_1AAF8E7A4())
      {
        sub_1AAE6CE20(&__dst[11], &v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*(&__dst[12] + 1))
        {
          v215 = __dst[11];
          v216 = __dst[12];
          v217 = __dst[13];
          v218 = __dst[14];
          v219 = __dst[15];
          LOBYTE(v220) = __dst[16];
          goto LABEL_23;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v164 = 0u;
    v166 = 0u;
    v67 = 2;
    goto LABEL_59;
  }

  swift_beginAccess();
  memcpy(__dst, (a3 + 80), 0x102uLL);
  if (!*(&__dst[1] + 1))
  {
    if (BYTE1(__dst[16]) == 2)
    {
      sub_1AAD5835C(a2, &v183);
      sub_1AAD5835C(a1, &v183);

      sub_1AACD7C50(v173, v177, v44);
      sub_1AACD7304(v169, v170, v168 & 1);
    }

    else
    {
      sub_1AAD5835C(a2, &v183);
      sub_1AAD5835C(a1, &v183);

      sub_1AACD7C50(v173, v177, v44);
      sub_1AACD7304(v169, v170, v168 & 1);

      sub_1AACBB21C(__dst, &v183);
      v70 = sub_1AAF8E7A4();
      if (v70 == sub_1AAF8E7A4())
      {
        sub_1AAE6CE20(&__dst[11], &v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*(&__dst[12] + 1))
        {
          v215 = __dst[11];
          v216 = __dst[12];
          v217 = __dst[13];
          v218 = __dst[14];
          v219 = __dst[15];
          LOBYTE(v220) = __dst[16];
          goto LABEL_16;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v163 = 0u;
    v165 = 0u;
    v51 = 2;
    goto LABEL_56;
  }

  v45 = *(a3 + 128);
  v273 = *(a3 + 112);
  v274 = v45;
  v275 = *(a3 + 144);
  v276[0] = *(a3 + 160);
  v46 = *(a3 + 96);
  v271 = *(a3 + 80);
  v272 = v46;
  sub_1AAD5835C(a2, &v183);
  sub_1AAD5835C(a1, &v183);

  sub_1AACD7C50(v173, v177, v44);
  sub_1AACD7304(v169, v170, v168 & 1);
  v217 = v273;
  v218 = v274;
  v219 = v275;
  LOBYTE(v220) = v276[0];
  v215 = v271;
  v216 = v272;

LABEL_16:
  v47 = *(&v219 + 1);
  v48 = v217;
  v49 = v218;
  v50 = v220;
  sub_1AAE6CE20(__dst, &v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
  sub_1AAE0BFDC(&v215, &v183);
  sub_1AAE0A738(v48, *(&v48 + 1), v49, v47, v50, 3, &v268);
  v163 = v269;
  v165 = v268;
  v51 = v270;
  sub_1AAE0C014(&v215);
  sub_1AAD04750(v215, *(&v215 + 1), v216);

  sub_1AAD0E818(v48, *(&v48 + 1), v49);
LABEL_56:
  v93 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v94 = (v93 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 84));
  v95 = *(v94 + 2);
  v294 = *v94;
  v295 = v95;
  v297 = v163;
  v296 = v165;
  v298 = v51;
  v299 = *(a3 + 352);
  v96 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale;
LABEL_60:
  v100 = (a3 + *v96);
  *&v276[9] = *(v100 + 89);
  v101 = v100[5];
  v275 = v100[4];
  *v276 = v101;
  v102 = v100[1];
  v271 = *v100;
  v272 = v102;
  v103 = v100[3];
  v273 = v100[2];
  v274 = v103;
  if (v276[24] != 255)
  {
    v104 = v100[5];
    v245 = v100[4];
    v246[0] = v104;
    *(v246 + 9) = *(v100 + 89);
    v105 = v100[1];
    v241 = *v100;
    v242 = v105;
    v106 = v100[3];
    v243 = v100[2];
    v244 = v106;
    v288 = v241;
    v289 = v105;
    v290 = v243;
    v291 = v106;
    v292 = v245;
    v293[0] = v104;
    *(v293 + 9) = *(v246 + 9);
    sub_1AAE6CE20(&v241, &v183, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    v11 = v182;
    sub_1AAE08D1C(&v288, a3, !v182, &v282, &v183);
    sub_1AACAC3FC(&v271, sub_1AACCF364);
    nullsub_1();

    sub_1AAD04750(v169, v170, v168 & 1);

    sub_1AAD0E818(v173, v177, v167);
    goto LABEL_64;
  }

  sub_1AAD04750(v169, v170, v168 & 1);

  sub_1AAD0E818(v173, v177, v167);
LABEL_63:
  sub_1AAE49270(&v183);
  v11 = v182;
LABEL_64:
  __dst[8] = v191;
  __dst[9] = v192;
  *&__dst[10] = v193;
  __dst[4] = v187;
  __dst[5] = v188;
  __dst[6] = v189;
  __dst[7] = v190;
  __dst[0] = v183;
  __dst[1] = v184;
  __dst[2] = v185;
  __dst[3] = v186;
  sub_1AAD6D0FC(0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1AAF99670;
  v53 = v52 + 32;
  v190 = __dst[7];
  v191 = __dst[8];
  v192 = __dst[9];
  v193 = *&__dst[10];
  v187 = __dst[4];
  v188 = __dst[5];
  v189 = __dst[6];
  v183 = __dst[0];
  v184 = __dst[1];
  v185 = __dst[2];
  v186 = __dst[3];
  if (sub_1AAE492A8(&v183) == 1)
  {
    v238 = __dst[8];
    v239 = __dst[9];
    v240 = *&__dst[10];
    v234 = __dst[4];
    v235 = __dst[5];
    v236 = __dst[6];
    v237 = __dst[7];
    v230 = __dst[0];
    v231 = __dst[1];
    v232 = __dst[2];
    v233 = __dst[3];
    goto LABEL_66;
  }

  sub_1AAE2D7EC(&v241);
  v238 = __dst[8];
  v239 = __dst[9];
  v240 = *&__dst[10];
  v234 = __dst[4];
  v235 = __dst[5];
  v236 = __dst[6];
  v237 = __dst[7];
  v230 = __dst[0];
  v231 = __dst[1];
  v232 = __dst[2];
  v233 = __dst[3];
LABEL_68:
  v107 = v242;
  *v53 = v241;
  *(v53 + 16) = v107;
  v108 = v243;
  v109 = v244;
  v110 = v246[0];
  *(v53 + 64) = v245;
  *(v53 + 80) = v110;
  *(v53 + 32) = v108;
  *(v53 + 48) = v109;
  v111 = v246[1];
  v112 = v246[2];
  v113 = v246[3];
  *(v53 + 144) = v247;
  *(v53 + 112) = v112;
  *(v53 + 128) = v113;
  *(v53 + 96) = v111;
  sub_1AAD5835C(v281, &v183);
  sub_1AAF72B20(v180, v281, &v271);
  v114 = v277;
  *(v53 + 248) = *&v276[16];
  v115 = v278;
  *(v53 + 264) = v114;
  *(v53 + 280) = v115;
  v116 = v274;
  *(v53 + 184) = v273;
  *(v53 + 200) = v116;
  v117 = *v276;
  *(v53 + 216) = v275;
  *(v53 + 232) = v117;
  v118 = v272;
  *(v53 + 152) = v271;
  *(v53 + 296) = v279;
  v119 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  *(v53 + 168) = v118;
  swift_beginAccess();
  v120 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v121 = (v119 + v120[17]);
  v229 = *(v121 + 8);
  v122 = v121[3];
  v227 = v121[2];
  v228 = v122;
  v123 = v121[1];
  v225 = *v121;
  v226 = v123;
  if (*(&v123 + 1))
  {
    *(v195 + 7) = *v121;
    v124 = v121[3];
    *&v197[8] = v121[2];
    *(&v195[1] + 7) = *(v121 + 2);
    *&v197[24] = v124;
    v125 = *(v121 + 8);
    LOBYTE(v196[0]) = 5;
    *(v196 + 1) = v195[0];
    v196[1] = *(v195 + 15);
    *&v197[40] = v125;
    *v197 = *(&v226 + 1);
    LOBYTE(v198) = 3;
    sub_1AAE0C0B0(v196);
    v190 = v200;
    v191 = v201;
    *&v192 = v202;
    v185 = *v197;
    v186 = *&v197[16];
    v187 = *&v197[32];
    v188 = v198;
    v189 = v199;
    v183 = v196[0];
    v184 = v196[1];
    nullsub_1();
    v221 = v189;
    v222 = v190;
    v223 = v191;
    v224 = v192;
    v217 = v185;
    v218 = v186;
    v219 = v187;
    v220 = v188;
    v215 = v183;
    v216 = v184;
  }

  else
  {
    sub_1AAE2D7EC(&v215);
  }

  v126 = v222;
  *(v53 + 400) = v221;
  *(v53 + 416) = v126;
  *(v53 + 432) = v223;
  *(v53 + 448) = v224;
  v127 = v218;
  *(v53 + 336) = v217;
  *(v53 + 352) = v127;
  v128 = v220;
  *(v53 + 368) = v219;
  *(v53 + 384) = v128;
  v129 = v216;
  *(v53 + 304) = v215;
  *(v53 + 320) = v129;
  sub_1AAE6CE20(&v225, &v183, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  v130 = sub_1AAF70438(v52);
  v181 = v131;

  v171 = *(*(a3 + 16) + 24);
  v132 = (v119 + v120[25]);
  v133 = v132[1];
  v175 = *v132;
  v134 = (v119 + v120[23]);
  v136 = *v134;
  v135 = v134[1];
  v138 = v134[2];
  v137 = v134[3];
  v139 = (v119 + v120[24]);
  v140 = *v139;
  v141 = v139[1];
  v143 = v139[2];
  v142 = v139[3];
  v179 = v133;

  sub_1AADA61DC(v136, v135, v138, v137);
  sub_1AADA61DC(v140, v141, v143, v142);
  sub_1AAF72B20(!v182, v280, v213);
  sub_1AADC7F60(v281);

  v190 = v237;
  v191 = v238;
  v192 = v239;
  v193 = v240;
  v187 = v234;
  v188 = v235;
  v189 = v236;
  v183 = v230;
  v184 = v231;
  v185 = v232;
  v186 = v233;
  if (sub_1AAE492A8(&v183) == 1)
  {
    sub_1AAE2D7EC(&v203);
  }

  else
  {
    v199 = v190;
    v200 = v191;
    v201 = v192;
    v202 = v193;
    *v197 = v186;
    *&v197[16] = v187;
    *&v197[32] = v188;
    v198 = v189;
    v196[0] = v184;
    v196[1] = v185;
    nullsub_1();
    v209 = v199;
    v210 = v200;
    v211 = v201;
    v212 = v202;
    v205 = *v197;
    v206 = *&v197[16];
    v207 = *&v197[32];
    v208 = v198;
    v203 = v196[0];
    v204 = v196[1];
  }

  v144 = vabdd_f64(v9, v8);
  v145 = vabdd_f64(v7, v6);
  if (v9 < v8)
  {
    v8 = v9;
  }

  if (v7 < v6)
  {
    v6 = v7;
  }

  sub_1AAE2D7EC(v196);
  v146 = swift_allocObject();
  *(v146 + 16) = v171;
  *(v146 + 24) = v6;
  *(v146 + 32) = v8;
  *(v146 + 40) = v145;
  *(v146 + 48) = v144;
  *&v147 = v175;
  *(&v147 + 1) = v179;
  *&v148 = v136;
  *(&v148 + 1) = v135;
  *(v146 + 72) = v148;
  *(v146 + 56) = v147;
  *&v147 = v138;
  *(&v147 + 1) = v137;
  *&v148 = v140;
  *(&v148 + 1) = v141;
  *(v146 + 104) = v148;
  *(v146 + 88) = v147;
  *(v146 + 120) = v143;
  *(v146 + 128) = v142;
  *(v146 + 136) = v130;
  v149 = v213[7];
  *(v146 + 240) = v213[6];
  *(v146 + 256) = v149;
  *(v146 + 272) = v213[8];
  v150 = v214;
  v151 = v213[3];
  *(v146 + 176) = v213[2];
  *(v146 + 192) = v151;
  v152 = v213[5];
  *(v146 + 208) = v213[4];
  *(v146 + 224) = v152;
  v153 = v213[1];
  *(v146 + 144) = v213[0];
  *(v146 + 160) = v153;
  *(v146 + 288) = v150;
  *(v146 + 296) = v181;
  v154 = v210;
  *(v146 + 400) = v209;
  *(v146 + 416) = v154;
  *(v146 + 432) = v211;
  *(v146 + 448) = v212;
  v155 = v206;
  *(v146 + 336) = v205;
  *(v146 + 352) = v155;
  v156 = v208;
  *(v146 + 368) = v207;
  *(v146 + 384) = v156;
  v157 = v204;
  *(v146 + 304) = v203;
  *(v146 + 320) = v157;
  v158 = v200;
  *(v146 + 552) = v199;
  *(v146 + 568) = v158;
  *(v146 + 584) = v201;
  *(v146 + 600) = v202;
  v159 = *&v197[16];
  *(v146 + 488) = *v197;
  *(v146 + 504) = v159;
  v160 = v198;
  *(v146 + 520) = *&v197[32];
  *(v146 + 536) = v160;
  v161 = v196[1];
  *(v146 + 456) = v196[0];
  *(v146 + 472) = v161;
  *(v146 + 608) = 0;
  result = v146 | 0xC000000000000000;
  *(v146 + 616) = 0;
  return result;
}

uint64_t sub_1AAE6CD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE6CDAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgRectangle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE6CE20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAE6CE90(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AAE6CE90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t RectanglePlot<A>.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1AAE6CFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a8;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v15 = type metadata accessor for XYRenderer(0, v23);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  (*(v16 + 16))(&v21 - v18, a1, v15, v17);
  sub_1AAE6D10C(v19, a2, a3, a4, a5, a6, a7, v22);
  return (*(v16 + 8))(a1, v15);
}

uint64_t sub_1AAE6D10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v10 = type metadata accessor for XYRenderer(0, v20);
  *(a8 + 24) = v10;
  *(a8 + 32) = &off_1F1FE53F0;
  v11 = sub_1AACB2508(a8);
  (*(*(v10 - 8) + 32))(v11, a1, v10);
  v12 = type metadata accessor for RectanglesRenderer(0);
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  v13 = v12[8];
  v14 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v14 - 8) + 56))(a8 + v13, 1, 1, v14);
  v15 = a8 + v12[9];
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 1;
  v16 = v12[10];
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1AAF8E244();
  return (*(*(v18 - 8) + 104))(a8 + v16, v17, v18);
}

uint64_t RectanglePlot.init<A, B, C>(_:x:y:width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v84 = a9;
  v85 = a3;
  v87 = a1;
  v88 = a2;
  v69 = a12;
  v86 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = a8;
  v83 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a8, a12);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v69 - v17;
  v70 = a7;
  v79 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a7, a11);
  MEMORY[0x1EEE9AC00](v79);
  v72 = &v69 - v18;
  v81 = *(a6 - 8);
  v19 = v81;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v22;
  v77 = a6;
  *&v97 = a6;
  *(&v97 + 1) = a7;
  *&v98 = a8;
  *(&v98 + 1) = v86;
  v75 = a11;
  v23 = v69;
  *&v99 = a11;
  *(&v99 + 1) = v69;
  v24 = type metadata accessor for XYRenderer(0, &v97);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v80 = &v69 - v25;
  v26 = a4[5];
  v93 = a4[4];
  v94 = v26;
  v95 = a4[6];
  v96 = *(a4 + 112);
  v27 = a4[1];
  v89 = *a4;
  v90 = v27;
  v28 = a4[3];
  v91 = a4[2];
  v92 = v28;
  v29 = *a5;
  v30 = a5[1];
  v31 = a5[3];
  v99 = a5[2];
  v100 = v31;
  v97 = v29;
  v98 = v30;
  v32 = a5[4];
  v33 = a5[5];
  v34 = a5[6];
  v104 = *(a5 + 112);
  v102 = v33;
  v103 = v34;
  v101 = v32;
  (*(v19 + 16))(v22, v87, a6);
  v36 = v70;
  v35 = AssociatedTypeWitness;
  v37 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, v70, a11);
  type metadata accessor for MarkDimensions(255, v35, v38, v39);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = v72;
  v42 = &v72[*(TupleTypeMetadata2 + 48)];
  v43 = *(v37 - 8);
  v73 = v37;
  v74 = v43;
  (*(v43 + 16))(v72, v88, v37);
  v44 = v94;
  *(v42 + 4) = v93;
  *(v42 + 5) = v44;
  *(v42 + 6) = v95;
  v42[112] = v96;
  v45 = v90;
  *v42 = v89;
  *(v42 + 1) = v45;
  v46 = v92;
  *(v42 + 2) = v91;
  *(v42 + 3) = v46;
  swift_storeEnumTagMultiPayload();
  v47 = v78;
  v48 = type metadata accessor for PlottableProjection(255, v35, v78, v23);
  v49 = swift_getTupleTypeMetadata2();
  v50 = v82;
  v51 = &v82[*(v49 + 48)];
  v52 = *(v48 - 8);
  (*(v52 + 16))(v82, v85, v48);
  v53 = v102;
  *(v51 + 4) = v101;
  *(v51 + 5) = v53;
  *(v51 + 6) = v103;
  v51[112] = v104;
  v54 = v98;
  *v51 = v97;
  *(v51 + 1) = v54;
  v55 = v100;
  *(v51 + 2) = v99;
  *(v51 + 3) = v55;
  swift_storeEnumTagMultiPayload();
  v56 = v23;
  v68 = v23;
  v57 = v80;
  v58 = v41;
  v59 = v50;
  v60 = v77;
  v61 = v36;
  v62 = v36;
  v63 = v47;
  v64 = v47;
  v65 = v86;
  v66 = v75;
  sub_1AAF314E0(v76, v58, v59, v77, v62, v64, v86, v75, v80, v68);
  sub_1AAE6CFC8(v57, v60, v61, v63, v65, v66, v56, v84);
  (*(v52 + 8))(v85, v48);
  (*(v74 + 8))(v88, v73);
  return (*(v81 + 8))(v87, v60);
}

uint64_t RectanglePlot.init<A, B, C>(_:xStart:xEnd:y:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v56 = a6;
  v70 = a4;
  v71 = a1;
  v72 = a3;
  v73 = a2;
  v69 = a9;
  v67 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(&a11 + 1);
  v68 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a8, *(&a11 + 1));
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v56 - v15;
  v63 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a7, a11);
  MEMORY[0x1EEE9AC00](v63);
  v58 = &v56 - v16;
  v17 = v56;
  v65 = *(v56 - 8);
  v18 = v65;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v21;
  *&v74 = v17;
  *(&v74 + 1) = a7;
  v59 = a7;
  *&v75 = a8;
  *(&v75 + 1) = a10;
  v76 = a11;
  v60 = a11;
  v22 = type metadata accessor for XYRenderer(0, &v74);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v64 = &v56 - v23;
  v24 = a5[5];
  v78 = a5[4];
  v79 = v24;
  v80 = a5[6];
  v81 = *(a5 + 112);
  v25 = a5[1];
  v74 = *a5;
  v75 = v25;
  v26 = a5[3];
  v76 = a5[2];
  v77 = v26;
  v27 = v21;
  v28 = v17;
  (*(v18 + 16))(v27, v71, v17);
  v29 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a7, a11);
  v30 = *(swift_getTupleTypeMetadata2() + 48);
  v61 = *(v29 - 8);
  v31 = *(v61 + 16);
  v32 = v58;
  v31(v58, v73, v29);
  v31(&v32[v30], v72, v29);
  swift_storeEnumTagMultiPayload();
  v33 = v57;
  v34 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a8, v57);
  type metadata accessor for MarkDimensions(255, AssociatedTypeWitness, v35, v36);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = v66;
  v39 = &v66[*(TupleTypeMetadata2 + 48)];
  v40 = *(v34 - 8);
  (*(v40 + 16))(v66, v70, v34);
  v41 = v79;
  *(v39 + 4) = v78;
  *(v39 + 5) = v41;
  *(v39 + 6) = v80;
  v39[112] = v81;
  v42 = v75;
  *v39 = v74;
  *(v39 + 1) = v42;
  v43 = v77;
  *(v39 + 2) = v76;
  *(v39 + 3) = v43;
  swift_storeEnumTagMultiPayload();
  v44 = v64;
  v45 = v32;
  v46 = v38;
  v47 = v28;
  v48 = v28;
  v49 = v59;
  v50 = a8;
  v51 = a8;
  v52 = v67;
  v53 = v60;
  sub_1AAF314E0(v62, v45, v46, v48, v59, v51, v67, v60, v64, v33);
  sub_1AAE6CFC8(v44, v47, v49, v50, v52, v53, v33, v69);
  (*(v40 + 8))(v70, v34);
  v54 = *(v61 + 8);
  v54(v72, v29);
  v54(v73, v29);
  return (*(v65 + 8))(v71, v47);
}

uint64_t RectanglePlot.init<A, B, C>(_:x:yStart:yEnd:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a4;
  v70 = a9;
  v72 = a2;
  v73 = a3;
  v71 = a1;
  v66 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = a7;
  v68 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a7, a11);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v54 - v17;
  v18 = a8;
  v64 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a8, a12);
  MEMORY[0x1EEE9AC00](v64);
  v55 = &v54 - v19;
  v65 = *(a6 - 8);
  v20 = v65;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v23;
  *&v74 = a6;
  *(&v74 + 1) = v18;
  v62 = a6;
  v57 = v18;
  *&v75 = a7;
  *(&v75 + 1) = a10;
  v59 = a12;
  *&v76 = a12;
  *(&v76 + 1) = a11;
  v24 = type metadata accessor for XYRenderer(0, &v74);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v63 = &v54 - v25;
  v26 = a5[5];
  v78 = a5[4];
  v79 = v26;
  v80 = a5[6];
  v81 = *(a5 + 112);
  v27 = a5[1];
  v74 = *a5;
  v75 = v27;
  v28 = a5[3];
  v76 = a5[2];
  v77 = v28;
  (*(v20 + 16))(v23, v71, a6);
  v29 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, v18, a12);
  type metadata accessor for MarkDimensions(255, AssociatedTypeWitness, v30, v31);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = v55;
  v34 = &v55[*(TupleTypeMetadata2 + 48)];
  v56 = v29;
  v58 = *(v29 - 8);
  (*(v58 + 16))(v55, v72, v29);
  v35 = v79;
  *(v34 + 4) = v78;
  *(v34 + 5) = v35;
  *(v34 + 6) = v80;
  v34[112] = v81;
  v36 = v75;
  *v34 = v74;
  *(v34 + 1) = v36;
  v37 = v77;
  *(v34 + 2) = v76;
  *(v34 + 3) = v37;
  swift_storeEnumTagMultiPayload();
  v38 = v61;
  v39 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, v61, a11);
  v40 = *(swift_getTupleTypeMetadata2() + 48);
  v41 = *(v39 - 8);
  v42 = *(v41 + 16);
  v43 = v67;
  v42(v67, v73, v39);
  v44 = (v43 + v40);
  v45 = v69;
  v42(v44, v69, v39);
  swift_storeEnumTagMultiPayload();
  v46 = v63;
  v47 = v33;
  v48 = v62;
  v49 = v57;
  v50 = v66;
  v51 = v59;
  sub_1AAF314E0(v60, v47, v43, v62, v57, v38, v66, v59, v63, a11);
  sub_1AAE6CFC8(v46, v48, v49, v38, v50, v51, a11, v70);
  v52 = *(v41 + 8);
  v52(v45, v39);
  v52(v73, v39);
  (*(v58 + 8))(v72, v56);
  return (*(v65 + 8))(v71, v48);
}

uint64_t RectanglePlot.init<A, B, C>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a5;
  v70 = a9;
  v73 = a4;
  v74 = a3;
  v75 = a2;
  v71 = a12;
  v72 = a1;
  v65 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = a8;
  v68 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a8, a12);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v57 - v17;
  v18 = a7;
  v64 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a7, a11);
  MEMORY[0x1EEE9AC00](v64);
  v20 = &v57 - v19;
  v66 = *(a6 - 8);
  v21 = v66;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v24;
  v62 = a6;
  v76[0] = a6;
  v76[1] = v18;
  v59 = v18;
  v76[2] = v16;
  v76[3] = a10;
  v25 = v16;
  v58 = v16;
  v60 = a11;
  v26 = v71;
  v76[4] = a11;
  v76[5] = v71;
  v27 = type metadata accessor for XYRenderer(0, v76);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v57 - v29;
  (*(v21 + 16))(v24, v72, a6, v28);
  v31 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, v18, a11);
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  v63 = *(v31 - 8);
  v33 = *(v63 + 16);
  v33(v20, v75, v31);
  v33(&v20[v32], v74, v31);
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, v25, v26);
  v35 = *(swift_getTupleTypeMetadata2() + 48);
  v36 = *(v34 - 8);
  v37 = *(v36 + 16);
  v38 = v67;
  v37(v67, v73, v34);
  v39 = &v38[v35];
  v40 = v38;
  v41 = v69;
  v37(v39, v69, v34);
  swift_storeEnumTagMultiPayload();
  v56 = v26;
  v42 = v30;
  v43 = v30;
  v44 = v62;
  v45 = v20;
  v46 = v40;
  v47 = v59;
  v48 = v58;
  v49 = v65;
  v50 = v60;
  sub_1AAF314E0(v61, v45, v46, v62, v59, v58, v65, v60, v43, v56);
  v51 = v42;
  v52 = v44;
  sub_1AAE6CFC8(v51, v44, v47, v48, v49, v50, v71, v70);
  v53 = *(v36 + 8);
  v53(v41, v34);
  v53(v73, v34);
  v54 = *(v63 + 8);
  v54(v74, v31);
  v54(v75, v31);
  return (*(v66 + 8))(v72, v52);
}

uint64_t RectanglePlot.init<A, B>(_:x:yStart:yEnd:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v55 = a6;
  v54 = a5;
  v53 = a4;
  v52 = a3;
  v50 = a2;
  v56 = a9;
  v57 = a1;
  v48 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v51);
  v16 = &v44 - v15;
  v49 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a10, a12);
  MEMORY[0x1EEE9AC00](v49);
  v18 = &v44 - v17;
  v47 = *(a8 - 8);
  v19 = v47;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v22;
  *&v58 = a8;
  *(&v58 + 1) = a10;
  *&v59 = MEMORY[0x1E69E63B0];
  *(&v59 + 1) = a11;
  *&v60 = a12;
  v44 = a12;
  *(&v60 + 1) = &protocol witness table for Double;
  v23 = type metadata accessor for XYRenderer(0, &v58);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v44 - v24;
  v25 = a7[5];
  v62 = a7[4];
  v63 = v25;
  v64 = a7[6];
  v65 = *(a7 + 112);
  v26 = a7[1];
  v58 = *a7;
  v59 = v26;
  v27 = a7[3];
  v60 = a7[2];
  v61 = v27;
  (*(v19 + 16))(v22, v57, a8);
  v28 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a10, a12);
  type metadata accessor for MarkDimensions(255, AssociatedTypeWitness, v29, v30);
  v31 = &v18[*(swift_getTupleTypeMetadata2() + 48)];
  v32 = *(v28 - 8);
  v33 = v50;
  (*(v32 + 16))(v18, v50, v28);
  v34 = v63;
  *(v31 + 4) = v62;
  *(v31 + 5) = v34;
  *(v31 + 6) = v64;
  v31[112] = v65;
  v35 = v59;
  *v31 = v58;
  *(v31 + 1) = v35;
  v36 = v61;
  *(v31 + 2) = v60;
  *(v31 + 3) = v36;
  swift_storeEnumTagMultiPayload();
  *v16 = v52;
  v16[8] = v53 & 1;
  *(v16 + 2) = v54;
  v16[24] = v55 & 1;
  swift_storeEnumTagMultiPayload();
  v37 = v46;
  v38 = v18;
  v39 = v16;
  v40 = MEMORY[0x1E69E63B0];
  v41 = v48;
  v42 = v44;
  sub_1AAF314E0(v45, v38, v39, a8, a10, MEMORY[0x1E69E63B0], v48, v44, v46, &protocol witness table for Double);
  sub_1AAE6CFC8(v37, a8, a10, v40, v41, v42, &protocol witness table for Double, v56);
  (*(v32 + 8))(v33, v28);
  return (*(v47 + 8))(v57, a8);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:y:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v59 = a6;
  v57 = a5;
  v56 = a4;
  v55 = a3;
  v54 = a2;
  v60 = a9;
  v61 = a1;
  v49 = a11;
  v53 = *(&a10 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a10, a11);
  MEMORY[0x1EEE9AC00](v58);
  v15 = &v48 - v14;
  v16 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v52 = *(a8 - 8);
  v19 = v52;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v62 = a8;
  *(&v62 + 1) = MEMORY[0x1E69E63B0];
  v63 = a10;
  v50 = a10;
  v23 = v49;
  *&v64 = &protocol witness table for Double;
  *(&v64 + 1) = v49;
  v24 = type metadata accessor for XYRenderer(0, &v62);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v51 = &v48 - v25;
  v26 = a7[5];
  v66 = a7[4];
  v67 = v26;
  v68 = a7[6];
  v69 = *(a7 + 112);
  v27 = a7[1];
  v62 = *a7;
  v63 = v27;
  v28 = a7[3];
  v64 = a7[2];
  v65 = v28;
  (*(v19 + 16))(v22, v61, a8);
  *v18 = v54;
  v18[8] = v55 & 1;
  *(v18 + 2) = v56;
  v18[24] = v57 & 1;
  swift_storeEnumTagMultiPayload();
  v29 = v23;
  v30 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a10, v23);
  type metadata accessor for MarkDimensions(255, AssociatedTypeWitness, v31, v32);
  v33 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
  v34 = *(v30 - 8);
  v35 = v59;
  (*(v34 + 16))(v15, v59, v30);
  v36 = v67;
  *(v33 + 4) = v66;
  *(v33 + 5) = v36;
  *(v33 + 6) = v68;
  v33[112] = v69;
  v37 = v63;
  *v33 = v62;
  *(v33 + 1) = v37;
  v38 = v65;
  *(v33 + 2) = v64;
  *(v33 + 3) = v38;
  swift_storeEnumTagMultiPayload();
  v39 = v29;
  v47 = v29;
  v40 = v51;
  v41 = v22;
  v42 = v18;
  v43 = MEMORY[0x1E69E63B0];
  v44 = v50;
  v45 = v53;
  sub_1AAF314E0(v41, v42, v15, a8, MEMORY[0x1E69E63B0], v50, v53, &protocol witness table for Double, v51, v47);
  sub_1AAE6CFC8(v40, a8, v43, v44, v45, &protocol witness table for Double, v39, v60);
  (*(v34 + 8))(v35, v30);
  return (*(v52 + 8))(v61, a8);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v51 = a7;
  v50 = a6;
  v49 = a5;
  v47 = a3;
  v48 = a4;
  v53 = a1;
  v54 = a2;
  v52 = a9;
  v43 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v46);
  v15 = &v40 - v14;
  v45 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a10, a12);
  MEMORY[0x1EEE9AC00](v45);
  v17 = &v40 - v16;
  v44 = *(a8 - 8);
  v18 = v44;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[0] = a8;
  v55[1] = a10;
  v42 = a8;
  v55[2] = MEMORY[0x1E69E63B0];
  v55[3] = a11;
  v41 = a12;
  v55[4] = a12;
  v55[5] = &protocol witness table for Double;
  v22 = type metadata accessor for XYRenderer(0, v55);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v40 - v24;
  (*(v18 + 16))(v21, v53, a8, v23);
  v26 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a10, a12);
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v29(v17, v54, v26);
  v30 = &v17[v27];
  v31 = v47;
  v29(v30, v47, v26);
  swift_storeEnumTagMultiPayload();
  *v15 = v48;
  v15[8] = v49 & 1;
  *(v15 + 2) = v50;
  v15[24] = v51 & 1;
  swift_storeEnumTagMultiPayload();
  v32 = v21;
  v33 = v17;
  v34 = v42;
  v35 = v43;
  v36 = MEMORY[0x1E69E63B0];
  v37 = v41;
  sub_1AAF314E0(v32, v33, v15, v42, a10, MEMORY[0x1E69E63B0], v43, v41, v25, &protocol witness table for Double);
  sub_1AAE6CFC8(v25, v34, a10, v36, v35, v37, &protocol witness table for Double, v52);
  v38 = *(v28 + 8);
  v38(v31, v26);
  v38(v54, v26);
  return (*(v44 + 8))(v53, v34);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a6;
  v57 = a7;
  v52 = a5;
  v51 = a4;
  v50 = a3;
  v49 = a2;
  v54 = a9;
  v55 = a1;
  v45 = a12;
  v47 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a10, a12);
  MEMORY[0x1EEE9AC00](v53);
  v15 = &v43 - v14;
  v16 = MEMORY[0x1E69E63B0];
  v17 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v48 = *(a8 - 8);
  v20 = v48;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[0] = a8;
  v58[1] = v16;
  v44 = a10;
  v58[2] = a10;
  v58[3] = a11;
  v24 = v45;
  v58[4] = &protocol witness table for Double;
  v58[5] = v45;
  v25 = type metadata accessor for XYRenderer(0, v58);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v46 = &v43 - v27;
  v28 = a8;
  (*(v20 + 16))(v23, v55, a8, v26);
  *v19 = v49;
  v19[8] = v50 & 1;
  *(v19 + 2) = v51;
  v19[24] = v52 & 1;
  swift_storeEnumTagMultiPayload();
  v29 = v24;
  v30 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a10, v24);
  v31 = *(swift_getTupleTypeMetadata2() + 48);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v33(v15, v56, v30);
  v33(&v15[v31], v57, v30);
  swift_storeEnumTagMultiPayload();
  v34 = v29;
  v42 = v29;
  v35 = v46;
  v36 = v23;
  v37 = MEMORY[0x1E69E63B0];
  v38 = v44;
  v39 = v47;
  sub_1AAF314E0(v36, v19, v15, v28, MEMORY[0x1E69E63B0], v44, v47, &protocol witness table for Double, v46, v42);
  sub_1AAE6CFC8(v35, v28, v37, v38, v39, &protocol witness table for Double, v34, v54);
  v40 = *(v32 + 8);
  v40(v57, v30);
  v40(v56, v30);
  return (*(v48 + 8))(v55, v28);
}

uint64_t RectanglePlot.init<A, B>(_:x:yStart:yEnd:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v57 = a8;
  v55 = a4;
  v52 = a2;
  v58 = a1;
  v54 = a3;
  v56 = a9;
  v13 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v53 = type metadata accessor for BoundingSectionSpecification(0, v13, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v53);
  v15 = (&v47 - v14);
  v51 = type metadata accessor for BoundingSectionSpecification(0, v13, a7, a10);
  MEMORY[0x1EEE9AC00](v51);
  v17 = &v47 - v16;
  v50 = *(a6 - 8);
  v18 = v50;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v21;
  *&v59 = a6;
  *(&v59 + 1) = a7;
  v47 = a7;
  *&v60 = MEMORY[0x1E69E63B0];
  *(&v60 + 1) = v57;
  *&v61 = a10;
  v48 = a10;
  *(&v61 + 1) = &protocol witness table for Double;
  v22 = type metadata accessor for XYRenderer(0, &v59);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v47 - v23;
  v25 = a5[5];
  v63 = a5[4];
  v64 = v25;
  v65 = a5[6];
  v66 = *(a5 + 112);
  v26 = a5[1];
  v59 = *a5;
  v60 = v26;
  v27 = a5[3];
  v61 = a5[2];
  v62 = v27;
  v28 = v21;
  v29 = a6;
  (*(v18 + 16))(v28, v58, a6);
  v30 = type metadata accessor for PlottableProjection(255, v13, a7, a10);
  type metadata accessor for MarkDimensions(255, v13, v31, v32);
  v33 = &v17[*(swift_getTupleTypeMetadata2() + 48)];
  v34 = *(v30 - 8);
  v35 = v52;
  (*(v34 + 16))(v17, v52, v30);
  v36 = v64;
  *(v33 + 4) = v63;
  *(v33 + 5) = v36;
  *(v33 + 6) = v65;
  v33[112] = v66;
  v37 = v60;
  *v33 = v59;
  *(v33 + 1) = v37;
  v38 = v62;
  *(v33 + 2) = v61;
  *(v33 + 3) = v38;
  swift_storeEnumTagMultiPayload();
  v39 = v55;
  *v15 = v54;
  v15[1] = v39;
  swift_storeEnumTagMultiPayload();
  v40 = v17;
  v41 = v15;
  v42 = v47;
  v43 = MEMORY[0x1E69E63B0];
  v44 = v57;
  v45 = v48;
  sub_1AAF314E0(v49, v40, v41, v29, v47, MEMORY[0x1E69E63B0], v57, v48, v24, &protocol witness table for Double);
  sub_1AAE6CFC8(v24, v29, v42, v43, v44, v45, &protocol witness table for Double, v56);
  (*(v34 + 8))(v35, v30);
  return (*(v50 + 8))(v58, v29);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:y:height:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v53 = a8;
  v58 = a7;
  v59 = a1;
  v56 = a4;
  v54 = a3;
  v52 = a2;
  v57 = a9;
  v13 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v55 = type metadata accessor for BoundingSectionSpecification(0, v13, a7, a10);
  MEMORY[0x1EEE9AC00](v55);
  v15 = &v48 - v14;
  v16 = MEMORY[0x1E69E63B0];
  v50 = type metadata accessor for BoundingSectionSpecification(0, v13, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v50);
  v18 = (&v48 - v17);
  v51 = *(a6 - 8);
  v19 = v51;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v60 = a6;
  *(&v60 + 1) = v16;
  v49 = a6;
  v23 = v58;
  *&v61 = v58;
  *(&v61 + 1) = a8;
  *&v62 = &protocol witness table for Double;
  *(&v62 + 1) = a10;
  v24 = type metadata accessor for XYRenderer(0, &v60);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v48 - v25;
  v27 = a5[5];
  v64 = a5[4];
  v65 = v27;
  v66 = a5[6];
  v67 = *(a5 + 112);
  v28 = a5[1];
  v60 = *a5;
  v61 = v28;
  v29 = a5[3];
  v62 = a5[2];
  v63 = v29;
  (*(v19 + 16))(v22, v59, a6);
  v30 = v54;
  *v18 = v52;
  v18[1] = v30;
  swift_storeEnumTagMultiPayload();
  v31 = type metadata accessor for PlottableProjection(255, v13, v23, a10);
  type metadata accessor for MarkDimensions(255, v13, v32, v33);
  v34 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
  v35 = *(v31 - 8);
  v36 = v56;
  (*(v35 + 16))(v15, v56, v31);
  v37 = v65;
  *(v34 + 4) = v64;
  *(v34 + 5) = v37;
  *(v34 + 6) = v66;
  v34[112] = v67;
  v38 = v61;
  *v34 = v60;
  *(v34 + 1) = v38;
  v39 = v63;
  *(v34 + 2) = v62;
  *(v34 + 3) = v39;
  swift_storeEnumTagMultiPayload();
  v40 = v22;
  v41 = v18;
  v42 = v15;
  v43 = v49;
  v44 = MEMORY[0x1E69E63B0];
  v45 = v58;
  v46 = v53;
  sub_1AAF314E0(v40, v41, v42, v49, MEMORY[0x1E69E63B0], v58, v53, &protocol witness table for Double, v26, a10);
  sub_1AAE6CFC8(v26, v43, v44, v45, v46, &protocol witness table for Double, a10, v57);
  (*(v35 + 8))(v36, v31);
  return (*(v51 + 8))(v59, v43);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v47 = a8;
  v48 = a1;
  v54 = a4;
  v55 = a5;
  v52 = a2;
  v53 = a3;
  v56 = a9;
  v14 = *(*a4 + *MEMORY[0x1E69E77B0]);
  v51 = type metadata accessor for BoundingSectionSpecification(0, v14, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v51);
  v16 = (&v44 - v15);
  v50 = type metadata accessor for BoundingSectionSpecification(0, v14, a7, a10);
  MEMORY[0x1EEE9AC00](v50);
  v18 = &v44 - v17;
  v49 = *(a6 - 8);
  v19 = v49;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v22;
  v57[0] = a6;
  v57[1] = a7;
  v57[2] = MEMORY[0x1E69E63B0];
  v57[3] = a8;
  v57[4] = a10;
  v44 = a10;
  v57[5] = &protocol witness table for Double;
  v23 = type metadata accessor for XYRenderer(0, v57);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v44 - v25;
  (*(v19 + 16))(v22, a1, a6, v24);
  v26 = type metadata accessor for PlottableProjection(255, v14, a7, a10);
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v30 = v52;
  v29(v18, v52, v26);
  v31 = &v18[v27];
  v32 = v53;
  v29(v31, v53, v26);
  swift_storeEnumTagMultiPayload();
  v33 = v55;
  *v16 = v54;
  v16[1] = v33;
  swift_storeEnumTagMultiPayload();
  v34 = v46;
  v35 = v18;
  v36 = v16;
  v37 = a7;
  v38 = a7;
  v39 = MEMORY[0x1E69E63B0];
  v40 = v47;
  v41 = v44;
  sub_1AAF314E0(v45, v35, v36, a6, v38, MEMORY[0x1E69E63B0], v47, v44, v46, &protocol witness table for Double);
  sub_1AAE6CFC8(v34, a6, v37, v39, v40, v41, &protocol witness table for Double, v56);
  v42 = *(v28 + 8);
  v42(v32, v26);
  v42(v30, v26);
  return (*(v49 + 8))(v48, a6);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v48 = a8;
  v54 = a7;
  v55 = a1;
  v52 = a5;
  v53 = a9;
  v56 = a4;
  v50 = a3;
  v45 = a10;
  v13 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v51 = type metadata accessor for BoundingSectionSpecification(0, v13, a7, a10);
  MEMORY[0x1EEE9AC00](v51);
  v15 = &v45 - v14;
  v16 = type metadata accessor for BoundingSectionSpecification(0, v13, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v45 - v17);
  v49 = *(a6 - 8);
  v19 = v49;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v22;
  v57[0] = a6;
  v23 = a6;
  v24 = v54;
  v57[1] = MEMORY[0x1E69E63B0];
  v57[2] = v54;
  v57[3] = a8;
  v25 = v45;
  v57[4] = &protocol witness table for Double;
  v57[5] = v45;
  v26 = type metadata accessor for XYRenderer(0, v57);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v47 = &v45 - v28;
  (*(v19 + 16))(v22, v55, v23, v27);
  v29 = v50;
  *v18 = a2;
  v18[1] = v29;
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for PlottableProjection(255, v13, v24, v25);
  v31 = *(swift_getTupleTypeMetadata2() + 48);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v33(v15, v56, v30);
  v34 = &v15[v31];
  v35 = v52;
  v33(v34, v52, v30);
  swift_storeEnumTagMultiPayload();
  v36 = v47;
  v37 = v18;
  v38 = v23;
  v39 = v23;
  v40 = MEMORY[0x1E69E63B0];
  v41 = v54;
  v42 = v48;
  sub_1AAF314E0(v46, v37, v15, v39, MEMORY[0x1E69E63B0], v54, v48, &protocol witness table for Double, v47, v25);
  sub_1AAE6CFC8(v36, v38, v40, v41, v42, &protocol witness table for Double, v25, v53);
  v43 = *(v32 + 8);
  v43(v35, v30);
  v43(v56, v30);
  return (*(v49 + 8))(v55, v38);
}

uint64_t RectanglePlot.init<A>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a7;
  v32 = a1;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v36 = a8;
  v11 = MEMORY[0x1E69E63B0];
  v12 = type metadata accessor for BoundingSectionSpecification(0, *(*a2 + *MEMORY[0x1E69E77B0]), MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v31 - v16);
  v18 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = a6;
  v37[1] = v11;
  v37[2] = v11;
  v37[3] = a7;
  v37[4] = &protocol witness table for Double;
  v37[5] = &protocol witness table for Double;
  v22 = type metadata accessor for XYRenderer(0, v37);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v31 - v24;
  v26 = v32;
  (*(v18 + 16))(v21, v32, a6, v23);
  v27 = v33;
  *v17 = a2;
  v17[1] = v27;
  swift_storeEnumTagMultiPayload();
  v28 = v35;
  *v14 = v34;
  v14[1] = v28;
  swift_storeEnumTagMultiPayload();
  v29 = v31;
  sub_1AAF314E0(v21, v17, v14, a6, v11, v11, v31, &protocol witness table for Double, v25, &protocol witness table for Double);
  sub_1AAE6CFC8(v25, a6, v11, v11, v29, &protocol witness table for Double, &protocol witness table for Double, v36);
  return (*(v18 + 8))(v26, a6);
}

uint64_t static VectorizedRectanglePlotContent._layoutChartContent(_:_:)(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1AACBB42C(a1, v3);
  v6 = *a2;
  return (*(v4 + 8))(&v6, v3, v4);
}

uint64_t static VectorizedRectanglePlotContent._renderChartContent(_:_:)@<X0>(void *a1@<X0>, char *a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1AACE4ACC(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(a2 + 1);
  sub_1AAE70C68(a1, v11);
  v32[0] = v12;
  v33 = v13;
  sub_1AAF52D70(v32);
  if (v12)
  {
    v14 = type metadata accessor for SgGroup(0);
    v31 = a3;
    v15 = v14;
    v16 = swift_allocBox();
    v18 = v17;
    v30 = *(*(v13 + 16) + 24);
    v20 = a1[3];
    v19 = a1[4];
    sub_1AACBB42C(a1, v20);
    v21 = (*(v19 + 32))(&type metadata for RectangleMark, v13, &type metadata for RectangleMark, &off_1F1FDA690, v20, v19);
    v22 = type metadata accessor for SgClipRect(0);
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = v13 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v24 = *(v23 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 64));
    sub_1AAE70CCC(v11);
    *v18 = v30;
    v18[1] = v21;
    result = sub_1AAE70D28(v8, v18 + v15[6], sub_1AACE4ACC);
    *(v18 + v15[7]) = 0x3FF0000000000000;
    *(v18 + v15[8]) = v24;
    *(v18 + v15[9]) = MEMORY[0x1E69E7CC0];
    v26 = v15[10];
    a3 = v31;
    *(v18 + v26) = 0;
  }

  else
  {
    type metadata accessor for AnyVectorizedRenderer(0);
    v27 = swift_allocBox();
    sub_1AAE70D28(v11, v28, type metadata accessor for RectanglesRenderer);
    type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
    result = swift_storeEnumTagMultiPayload();
    v16 = v27 | 0xD000000000000000;
  }

  *a3 = v16;
  return result;
}

uint64_t sub_1AAE70C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectanglesRenderer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE70CCC(uint64_t a1)
{
  v2 = type metadata accessor for RectanglesRenderer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE70D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE70DD8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE70E4C(uint64_t a1)
{
  result = type metadata accessor for RectanglesRenderer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 RuleMark.init<A>(xStart:xEnd:y:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v32[0] = 0;
  BYTE8(v32[0]) = 1;
  sub_1AAD59F90(v32);
  v16 = v32[7];
  *(a8 + 384) = v32[6];
  *(a8 + 400) = v16;
  *(a8 + 416) = v32[8];
  v17 = v32[3];
  *(a8 + 320) = v32[2];
  *(a8 + 336) = v17;
  v18 = v32[5];
  *(a8 + 352) = v32[4];
  *(a8 + 368) = v18;
  v19 = v32[1];
  *(a8 + 288) = v32[0];
  *(a8 + 304) = v19;
  *&v33 = a1;
  BYTE8(v33) = a2 & 1;
  *&v34 = a3;
  BYTE8(v34) = a4 & 1;
  sub_1AAE52D28(&v33);
  v20 = v40;
  *(a8 + 96) = v39;
  *(a8 + 112) = v20;
  *(a8 + 128) = v41;
  v21 = v36;
  *(a8 + 32) = v35;
  *(a8 + 48) = v21;
  v22 = v38;
  *(a8 + 64) = v37;
  *(a8 + 80) = v22;
  v23 = v34;
  *a8 = v33;
  *(a8 + 16) = v23;
  sub_1AAE83B9C(a5, a6, a7, v24, v31);
  v26 = type metadata accessor for PlottableValue(0, a6, a7, v25);
  (*(*(v26 - 8) + 8))(a5, v26);
  v27 = v31[7];
  *(a8 + 240) = v31[6];
  *(a8 + 256) = v27;
  *(a8 + 272) = v31[8];
  v28 = v31[3];
  *(a8 + 176) = v31[2];
  *(a8 + 192) = v28;
  v29 = v31[5];
  *(a8 + 208) = v31[4];
  *(a8 + 224) = v29;
  result = v31[1];
  *(a8 + 144) = v31[0];
  *(a8 + 160) = result;
  return result;
}

__n128 RuleMark.init<A, B>(xStart:xEnd:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v36[0] = 0;
  BYTE8(v36[0]) = 1;
  sub_1AAD59F90(v36);
  v16 = v36[7];
  *(a8 + 384) = v36[6];
  *(a8 + 400) = v16;
  *(a8 + 416) = v36[8];
  v17 = v36[3];
  *(a8 + 320) = v36[2];
  *(a8 + 336) = v17;
  v18 = v36[5];
  *(a8 + 352) = v36[4];
  *(a8 + 368) = v18;
  v19 = v36[1];
  *(a8 + 288) = v36[0];
  *(a8 + 304) = v19;
  sub_1AAE83D50(a1, a2, a4, a6, v34);
  v20 = v34[7];
  *(a8 + 96) = v34[6];
  *(a8 + 112) = v20;
  *(a8 + 128) = v34[8];
  v21 = v34[3];
  *(a8 + 32) = v34[2];
  *(a8 + 48) = v21;
  v22 = v34[5];
  *(a8 + 64) = v34[4];
  *(a8 + 80) = v22;
  v23 = v34[1];
  *a8 = v34[0];
  *(a8 + 16) = v23;
  sub_1AAE83B9C(a3, a5, a7, v24, v35);
  v26 = type metadata accessor for PlottableValue(0, a5, a7, v25);
  (*(*(v26 - 8) + 8))(a3, v26);
  v28 = type metadata accessor for PlottableValue(0, a4, a6, v27);
  v29 = *(*(v28 - 8) + 8);
  v29(a2, v28);
  v29(a1, v28);
  v30 = v35[7];
  *(a8 + 240) = v35[6];
  *(a8 + 256) = v30;
  *(a8 + 272) = v35[8];
  v31 = v35[3];
  *(a8 + 176) = v35[2];
  *(a8 + 192) = v31;
  v32 = v35[5];
  *(a8 + 208) = v35[4];
  *(a8 + 224) = v32;
  result = v35[1];
  *(a8 + 144) = v35[0];
  *(a8 + 160) = result;
  return result;
}

__n128 RuleMark.init<A>(xStart:xEnd:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v30[0] = 0;
  BYTE8(v30[0]) = 1;
  sub_1AAD59F90(v30);
  v14 = v30[7];
  *(a7 + 384) = v30[6];
  *(a7 + 400) = v14;
  *(a7 + 416) = v30[8];
  v15 = v30[3];
  *(a7 + 320) = v30[2];
  *(a7 + 336) = v15;
  v16 = v30[5];
  *(a7 + 352) = v30[4];
  *(a7 + 368) = v16;
  v17 = v30[1];
  *(a7 + 288) = v30[0];
  *(a7 + 304) = v17;
  sub_1AAE83D50(a1, a2, a5, a6, v29);
  v19 = type metadata accessor for PlottableValue(0, a5, a6, v18);
  v20 = *(*(v19 - 8) + 8);
  v20(a2, v19);
  v20(a1, v19);
  v21 = v29[7];
  *(a7 + 96) = v29[6];
  *(a7 + 112) = v21;
  *(a7 + 128) = v29[8];
  v22 = v29[3];
  *(a7 + 32) = v29[2];
  *(a7 + 48) = v22;
  v23 = v29[5];
  *(a7 + 64) = v29[4];
  *(a7 + 80) = v23;
  v24 = v29[1];
  *a7 = v29[0];
  *(a7 + 16) = v24;
  *&v31[0] = a3;
  BYTE8(v31[0]) = a4 & 1;
  sub_1AAD59F90(v31);
  v25 = v31[7];
  *(a7 + 240) = v31[6];
  *(a7 + 256) = v25;
  *(a7 + 272) = v31[8];
  v26 = v31[3];
  *(a7 + 176) = v31[2];
  *(a7 + 192) = v26;
  v27 = v31[5];
  *(a7 + 208) = v31[4];
  *(a7 + 224) = v27;
  result = v31[1];
  *(a7 + 144) = v31[0];
  *(a7 + 160) = result;
  return result;
}

__n128 RuleMark.init<A>(x:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v32[0] = 0;
  BYTE8(v32[0]) = 1;
  sub_1AAD59F90(v32);
  v16 = v32[7];
  *(a8 + 384) = v32[6];
  *(a8 + 400) = v16;
  *(a8 + 416) = v32[8];
  v17 = v32[3];
  *(a8 + 320) = v32[2];
  *(a8 + 336) = v17;
  v18 = v32[5];
  *(a8 + 352) = v32[4];
  *(a8 + 368) = v18;
  v19 = v32[1];
  *(a8 + 288) = v32[0];
  *(a8 + 304) = v19;
  sub_1AAE83B9C(a1, a6, a7, v20, v31);
  v22 = type metadata accessor for PlottableValue(0, a6, a7, v21);
  (*(*(v22 - 8) + 8))(a1, v22);
  v23 = v31[7];
  *(a8 + 96) = v31[6];
  *(a8 + 112) = v23;
  *(a8 + 128) = v31[8];
  v24 = v31[3];
  *(a8 + 32) = v31[2];
  *(a8 + 48) = v24;
  v25 = v31[5];
  *(a8 + 64) = v31[4];
  *(a8 + 80) = v25;
  v26 = v31[1];
  *a8 = v31[0];
  *(a8 + 16) = v26;
  *&v33 = a2;
  BYTE8(v33) = a3 & 1;
  v34.n128_u64[0] = a4;
  v34.n128_u8[8] = a5 & 1;
  sub_1AAE52D28(&v33);
  v27 = v40;
  *(a8 + 240) = v39;
  *(a8 + 256) = v27;
  *(a8 + 272) = v41;
  v28 = v36;
  *(a8 + 176) = v35;
  *(a8 + 192) = v28;
  v29 = v38;
  *(a8 + 208) = v37;
  *(a8 + 224) = v29;
  result = v34;
  *(a8 + 144) = v33;
  *(a8 + 160) = result;
  return result;
}

__n128 RuleMark.init<A, B>(x:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v36[0] = 0;
  BYTE8(v36[0]) = 1;
  sub_1AAD59F90(v36);
  v16 = v36[7];
  *(a8 + 384) = v36[6];
  *(a8 + 400) = v16;
  *(a8 + 416) = v36[8];
  v17 = v36[3];
  *(a8 + 320) = v36[2];
  *(a8 + 336) = v17;
  v18 = v36[5];
  *(a8 + 352) = v36[4];
  *(a8 + 368) = v18;
  v19 = v36[1];
  *(a8 + 288) = v36[0];
  *(a8 + 304) = v19;
  sub_1AAE83B9C(a1, a4, a6, v20, v34);
  v21 = v34[7];
  *(a8 + 96) = v34[6];
  *(a8 + 112) = v21;
  *(a8 + 128) = v34[8];
  v22 = v34[3];
  *(a8 + 32) = v34[2];
  *(a8 + 48) = v22;
  v23 = v34[5];
  *(a8 + 64) = v34[4];
  *(a8 + 80) = v23;
  v24 = v34[1];
  *a8 = v34[0];
  *(a8 + 16) = v24;
  sub_1AAE83D50(a2, a3, a5, a7, v35);
  v26 = type metadata accessor for PlottableValue(0, a5, a7, v25);
  v27 = *(*(v26 - 8) + 8);
  v27(a3, v26);
  v27(a2, v26);
  v29 = type metadata accessor for PlottableValue(0, a4, a6, v28);
  (*(*(v29 - 8) + 8))(a1, v29);
  v30 = v35[7];
  *(a8 + 240) = v35[6];
  *(a8 + 256) = v30;
  *(a8 + 272) = v35[8];
  v31 = v35[3];
  *(a8 + 176) = v35[2];
  *(a8 + 192) = v31;
  v32 = v35[5];
  *(a8 + 208) = v35[4];
  *(a8 + 224) = v32;
  result = v35[1];
  *(a8 + 144) = v35[0];
  *(a8 + 160) = result;
  return result;
}

__n128 RuleMark.init<A>(x:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v30[0] = 0;
  BYTE8(v30[0]) = 1;
  sub_1AAD59F90(v30);
  v14 = v30[7];
  *(a7 + 384) = v30[6];
  *(a7 + 400) = v14;
  *(a7 + 416) = v30[8];
  v15 = v30[3];
  *(a7 + 320) = v30[2];
  *(a7 + 336) = v15;
  v16 = v30[5];
  *(a7 + 352) = v30[4];
  *(a7 + 368) = v16;
  v17 = v30[1];
  *(a7 + 288) = v30[0];
  *(a7 + 304) = v17;
  *&v31[0] = a1;
  BYTE8(v31[0]) = a2 & 1;
  sub_1AAD59F90(v31);
  v18 = v31[7];
  *(a7 + 96) = v31[6];
  *(a7 + 112) = v18;
  *(a7 + 128) = v31[8];
  v19 = v31[3];
  *(a7 + 32) = v31[2];
  *(a7 + 48) = v19;
  v20 = v31[5];
  *(a7 + 64) = v31[4];
  *(a7 + 80) = v20;
  v21 = v31[1];
  *a7 = v31[0];
  *(a7 + 16) = v21;
  sub_1AAE83D50(a3, a4, a5, a6, v29);
  v23 = type metadata accessor for PlottableValue(0, a5, a6, v22);
  v24 = *(*(v23 - 8) + 8);
  v24(a4, v23);
  v24(a3, v23);
  v25 = v29[7];
  *(a7 + 240) = v29[6];
  *(a7 + 256) = v25;
  *(a7 + 272) = v29[8];
  v26 = v29[3];
  *(a7 + 176) = v29[2];
  *(a7 + 192) = v26;
  v27 = v29[5];
  *(a7 + 208) = v29[4];
  *(a7 + 224) = v27;
  result = v29[1];
  *(a7 + 144) = v29[0];
  *(a7 + 160) = result;
  return result;
}

uint64_t static RuleMark._layoutChartContent(_:_:)(_OWORD *a1)
{
  v1 = a1[7];
  v13[6] = a1[6];
  v13[7] = v1;
  v2 = a1[9];
  v13[8] = a1[8];
  v3 = a1[3];
  v13[2] = a1[2];
  v13[3] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[14];
  v7 = a1[16];
  v8 = a1[17];
  v14[6] = a1[15];
  v14[7] = v7;
  v14[8] = v8;
  v9 = a1[10];
  v10 = a1[12];
  v11 = a1[13];
  v14[2] = a1[11];
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v6;
  v14[0] = v2;
  v14[1] = v9;
  return sub_1AACD2B20(v13, v14);
}

uint64_t static RuleMark._renderChartContent(_:_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[7];
  v36[6] = a1[6];
  v36[7] = v13;
  v14 = a1[9];
  v36[8] = a1[8];
  v15 = a1[3];
  v36[2] = a1[2];
  v36[3] = v15;
  v16 = a1[5];
  v36[4] = a1[4];
  v36[5] = v16;
  v17 = a1[1];
  v36[0] = *a1;
  v36[1] = v17;
  v18 = a1[15];
  v35[5] = a1[14];
  v35[6] = v18;
  v19 = a1[17];
  v35[7] = a1[16];
  v35[8] = v19;
  v20 = a1[11];
  v35[1] = a1[10];
  v35[2] = v20;
  v21 = a1[13];
  v35[3] = a1[12];
  v35[4] = v21;
  v35[0] = v14;
  LOBYTE(v11) = *a2;
  v22 = *(a2 + 8);
  if (v11)
  {
    result = sub_1AAE71AC4(v36, v35, v22);
  }

  else
  {
    v24 = v10;
    sub_1AAD036DC(v36, 0, v33[0].f64);
    v32[0].val[0] = v33[0];
    v32[0].val[1] = v25;
    sub_1AAD036DC(v35, 1, v34[0].f64);
    v26 = *(*(v22 + 16) + 24);
    v27 = v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    v32[0].val[1] = v34[0];
    swift_beginAccess();
    sub_1AAE4911C(v27, v8);
    sub_1AAD0F2A4(v8, v12 + *(v24 + 36));
    v28 = *(v27 + *(v6 + 64));
    v29 = (v12 + 1);
    v37 = v32[0];
    vst2q_f64(v29, v37);
    *v12 = v26;
    *(v12 + *(v24 + 40)) = v28;
    v30 = swift_allocBox();
    sub_1AAE71FB0(v12, v31);
    result = v30 | 0x6000000000000000;
  }

  *a3 = result;
  return result;
}

unint64_t sub_1AAE71AC4(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  sub_1AAD036DC(a1, 0, v104);
  v6 = v104[0];
  v7 = v104[1];
  sub_1AAD036DC(a2, 1, v105);
  v8 = v105[0];
  v9 = v105[1];
  sub_1AAD6D0FC(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AAF99670;
  sub_1AAD5835C(a1, v108);
  sub_1AAF72B20(0, a1, v106);
  v11 = v106[7];
  *(v10 + 128) = v106[6];
  *(v10 + 144) = v11;
  *(v10 + 160) = v106[8];
  *(v10 + 176) = v107;
  v12 = v106[3];
  *(v10 + 64) = v106[2];
  *(v10 + 80) = v12;
  v13 = v106[5];
  *(v10 + 96) = v106[4];
  *(v10 + 112) = v13;
  v14 = v106[1];
  *(v10 + 32) = v106[0];
  *(v10 + 48) = v14;
  sub_1AAD5835C(a2, v108);
  sub_1AAF72B20(1, a2, v108);
  v15 = v108[6];
  v16 = v108[8];
  *(v10 + 296) = v108[7];
  *(v10 + 312) = v16;
  v17 = v108[3];
  *(v10 + 216) = v108[2];
  *(v10 + 232) = v17;
  v18 = v108[5];
  *(v10 + 248) = v108[4];
  *(v10 + 264) = v18;
  *(v10 + 280) = v15;
  v19 = v108[1];
  *(v10 + 184) = v108[0];
  *(v10 + 328) = v109;
  v20 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  *(v10 + 200) = v19;
  swift_beginAccess();
  v21 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v22 = (v20 + v21[17]);
  v103 = *(v22 + 8);
  v23 = v22[3];
  v101 = v22[2];
  v102 = v23;
  v24 = v22[1];
  v99 = *v22;
  v100 = v24;
  if (*(&v24 + 1))
  {
    *&v71[7] = *v22;
    v25 = v22[3];
    *&v73[8] = v22[2];
    *&v73[24] = v25;
    *&v71[23] = *(v22 + 2);
    *&v73[40] = *(v22 + 8);
    v72[0] = 5;
    *&v72[1] = *v71;
    *&v72[16] = *&v71[15];
    *v73 = *(&v100 + 1);
    LOBYTE(v74) = 3;
    sub_1AAE0C0B0(v72);
    v85 = v75;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v81 = *v73;
    v82 = *&v73[16];
    v83 = *&v73[32];
    v84 = v74;
    v79 = *v72;
    v80 = *&v72[16];
    nullsub_1();
    v95 = v85;
    v96 = v86;
    v97 = v87;
    v98 = v88;
    v91 = v81;
    v92 = v82;
    v93 = v83;
    v94 = v84;
    v89 = v79;
    v90 = v80;
  }

  else
  {
    sub_1AAE2D7EC(&v89);
  }

  v26 = vabdd_f64(v9, v8);
  v27 = vabdd_f64(v7, v6);
  if (v9 < v8)
  {
    v8 = v9;
  }

  if (v7 < v6)
  {
    v6 = v7;
  }

  v28 = v96;
  *(v10 + 432) = v95;
  *(v10 + 448) = v28;
  *(v10 + 464) = v97;
  *(v10 + 480) = v98;
  v29 = v92;
  *(v10 + 368) = v91;
  *(v10 + 384) = v29;
  v30 = v94;
  *(v10 + 400) = v93;
  *(v10 + 416) = v30;
  v31 = v90;
  *(v10 + 336) = v89;
  *(v10 + 352) = v31;
  sub_1AADC8554(&v99, &v79);
  v69 = sub_1AAF70438(v10);
  v70 = v32;
  swift_setDeallocating();
  sub_1AACB1BC0(0, qword_1ED9B2098, &type metadata for AccessibilityDataField);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = *(*(a3 + 16) + 24);
  v34 = (v20 + v21[25]);
  v35 = v34[1];
  v36 = (v20 + v21[23]);
  v37 = *v36;
  v38 = v36[1];
  v40 = v36[2];
  v39 = v36[3];
  v41 = (v20 + v21[24]);
  v42 = *v41;
  v43 = v41[1];
  v44 = v41[2];
  v67 = v41[3];
  v68 = v33;
  v66 = *v34;
  sub_1AAE2D7EC(&v79);
  v45 = swift_allocObject();
  *(v45 + 24) = v6;
  *(v45 + 32) = v8;
  *&v46 = v66;
  *(&v46 + 1) = v35;
  *&v47 = v37;
  *(&v47 + 1) = v38;
  *(v45 + 40) = v27;
  *(v45 + 48) = v26;
  *(v45 + 72) = v47;
  *(v45 + 56) = v46;
  *&v47 = v40;
  *(&v47 + 1) = v39;
  *&v46 = v42;
  *(&v46 + 1) = v43;
  *(v45 + 104) = v46;
  *(v45 + 88) = v47;
  v49 = v85;
  v48 = v86;
  v50 = v84;
  *(v45 + 240) = v85;
  *(v45 + 256) = v48;
  v51 = v86;
  *(v45 + 272) = v87;
  v53 = v81;
  v52 = v82;
  v54 = v80;
  *(v45 + 176) = v81;
  *(v45 + 192) = v52;
  v55 = v82;
  v57 = v83;
  v56 = v84;
  *(v45 + 208) = v83;
  *(v45 + 224) = v56;
  v58 = v80;
  *(v45 + 144) = v79;
  *(v45 + 160) = v58;
  v59 = v86;
  *(v45 + 400) = v85;
  *(v45 + 416) = v59;
  *(v45 + 432) = v87;
  v60 = v82;
  *(v45 + 336) = v81;
  *(v45 + 352) = v60;
  v61 = v84;
  *(v45 + 368) = v83;
  *(v45 + 384) = v61;
  v63 = v79;
  v62 = v80;
  *(v45 + 304) = v79;
  *(v45 + 320) = v62;
  *(v45 + 552) = v49;
  *(v45 + 568) = v51;
  *(v45 + 584) = v87;
  *(v45 + 16) = v68;
  *(v45 + 120) = v44;
  *(v45 + 128) = v67;
  *(v45 + 136) = v69;
  v64 = v88;
  *(v45 + 288) = v88;
  *(v45 + 296) = v70;
  *(v45 + 448) = v64;
  *(v45 + 600) = v88;
  *(v45 + 488) = v53;
  *(v45 + 504) = v55;
  *(v45 + 520) = v57;
  *(v45 + 536) = v50;
  *(v45 + 456) = v63;
  *(v45 + 472) = v54;
  *(v45 + 608) = 0;
  *(v45 + 610) = *v72;
  *(v45 + 614) = *&v72[4];
  *(v45 + 616) = 0;

  sub_1AADA61DC(v37, v38, v40, v39);
  sub_1AADA61DC(v42, v43, v44, v67);
  return v45 | 0xC000000000000000;
}

uint64_t sub_1AAE71FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgRule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RulePlot<A>.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1AAE720FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a8;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v15 = type metadata accessor for XYRenderer(0, v23);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  (*(v16 + 16))(&v21 - v18, a1, v15, v17);
  sub_1AAE72240(v19, a2, a3, a4, a5, a6, a7, v22);
  return (*(v16 + 8))(a1, v15);
}

uint64_t sub_1AAE72240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v10 = type metadata accessor for XYRenderer(0, v16);
  *(a8 + 24) = v10;
  *(a8 + 32) = &off_1F1FE53F0;
  v11 = sub_1AACB2508(a8);
  (*(*(v10 - 8) + 32))(v11, a1, v10);
  v12 = type metadata accessor for RulesRenderer(0);
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  v13 = *(v12 + 32);
  v14 = type metadata accessor for ChartContentRenderContext.Environment(0);
  return (*(*(v14 - 8) + 56))(a8 + v13, 1, 1, v14);
}

uint64_t RulePlot.init<A, B, C>(_:xStart:xEnd:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v63 = a8;
  v64 = a1;
  v65 = a4;
  v66 = a3;
  v67 = a2;
  v62 = a9;
  v50 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = a7;
  v52 = a7;
  v61 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a7, a11);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v49 - v16;
  v58 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a6, a10);
  MEMORY[0x1EEE9AC00](v58);
  v18 = &v49 - v17;
  v60 = *(a5 - 8);
  v19 = v60;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v22;
  v57 = a5;
  v68[0] = a5;
  v68[1] = a6;
  v53 = a6;
  v54 = a10;
  v68[2] = v15;
  v68[3] = v63;
  v23 = v50;
  v68[4] = a10;
  v68[5] = v50;
  v24 = type metadata accessor for XYRenderer(0, v68);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v51 = &v49 - v26;
  (*(v19 + 16))(v22, v64, a5, v25);
  v27 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a6, a10);
  v28 = *(swift_getTupleTypeMetadata2() + 48);
  v55 = *(v27 - 8);
  v29 = *(v55 + 16);
  v30 = v18;
  v29(v18, v67, v27);
  v29(&v18[v28], v66, v27);
  swift_storeEnumTagMultiPayload();
  v31 = v52;
  v32 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, v52, v23);
  type metadata accessor for MarkDimensions(255, AssociatedTypeWitness, v33, v34);
  v35 = *(swift_getTupleTypeMetadata2() + 48);
  v36 = *(v32 - 8);
  v37 = v59;
  (*(v36 + 16))(v59, v65, v32);
  MarkDimensions.init(integerLiteral:)(0, &v37[v35]);
  swift_storeEnumTagMultiPayload();
  v38 = v51;
  v39 = v30;
  v40 = v37;
  v41 = v57;
  v42 = v53;
  v43 = v31;
  v44 = v31;
  v45 = v63;
  v46 = v54;
  sub_1AAF314E0(v56, v39, v40, v57, v53, v44, v63, v54, v51, v23);
  sub_1AAE720FC(v38, v41, v42, v43, v45, v46, v23, v62);
  (*(v36 + 8))(v65, v32);
  v47 = *(v55 + 8);
  v47(v66, v27);
  v47(v67, v27);
  return (*(v60 + 8))(v64, v41);
}

uint64_t RulePlot.init<A, B, C>(_:x:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v60 = a8;
  v61 = a1;
  v58 = a4;
  v59 = a9;
  v62 = a2;
  v63 = a3;
  v47 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a6, a10);
  MEMORY[0x1EEE9AC00](v57);
  v16 = &v47 - v15;
  v17 = a7;
  v53 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a7, a11);
  MEMORY[0x1EEE9AC00](v53);
  v19 = &v47 - v18;
  v56 = *(a5 - 8);
  v20 = v56;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v23;
  v51 = a5;
  v64[0] = a5;
  v64[1] = a7;
  v48 = a7;
  v64[2] = a6;
  v64[3] = v60;
  v64[4] = a11;
  v49 = a11;
  v24 = v47;
  v64[5] = v47;
  v25 = type metadata accessor for XYRenderer(0, v64);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v52 = &v47 - v27;
  (*(v20 + 16))(v23, v61, a5, v26);
  v28 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v17, a11);
  v29 = *(v28 - 8);
  v54 = v28;
  v55 = v29;
  (*(v29 + 16))(v19, v62, v28);
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a6, v24);
  v31 = *(swift_getTupleTypeMetadata2() + 48);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v33(v16, v63, v30);
  v34 = &v16[v31];
  v35 = v58;
  v33(v34, v58, v30);
  swift_storeEnumTagMultiPayload();
  v36 = v51;
  v37 = v52;
  v38 = v19;
  v39 = v16;
  v40 = v48;
  v41 = a6;
  v42 = a6;
  v43 = v60;
  v44 = v49;
  sub_1AAF314E0(v50, v38, v39, v51, v48, v42, v60, v49, v52, v24);
  sub_1AAE720FC(v37, v36, v40, v41, v43, v44, v24, v59);
  v45 = *(v32 + 8);
  v45(v35, v30);
  v45(v63, v30);
  (*(v55 + 8))(v62, v54);
  return (*(v56 + 8))(v61, v36);
}

uint64_t RulePlot.init<A, B>(_:xStart:xEnd:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v57 = a6;
  v58 = a9;
  v55 = a5;
  v54 = a4;
  v53 = a3;
  v59 = a1;
  v47 = a11;
  v51 = a10;
  v52 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a8, a11);
  MEMORY[0x1EEE9AC00](v56);
  v15 = &v45 - v14;
  v16 = MEMORY[0x1E69E63B0];
  v17 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v50 = *(a7 - 8);
  v20 = v50;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60[0] = a7;
  v60[1] = v16;
  v48 = a7;
  v60[2] = a8;
  v60[3] = a10;
  v46 = a8;
  v24 = v47;
  v60[4] = &protocol witness table for Double;
  v60[5] = v47;
  v25 = type metadata accessor for XYRenderer(0, v60);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v49 = &v45 - v27;
  (*(v20 + 16))(v23, v59, a7, v26);
  *v19 = v52;
  v19[8] = v53 & 1;
  *(v19 + 2) = v54;
  v19[24] = v55 & 1;
  swift_storeEnumTagMultiPayload();
  v28 = v24;
  v29 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a8, v24);
  type metadata accessor for MarkDimensions(255, AssociatedTypeWitness, v30, v31);
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  v33 = *(v29 - 8);
  v34 = v57;
  (*(v33 + 16))(v15, v57, v29);
  MarkDimensions.init(integerLiteral:)(0, &v15[v32]);
  swift_storeEnumTagMultiPayload();
  v35 = v28;
  v44 = v28;
  v37 = v48;
  v36 = v49;
  v38 = v19;
  v39 = v15;
  v40 = MEMORY[0x1E69E63B0];
  v41 = v46;
  v42 = v51;
  sub_1AAF314E0(v23, v38, v39, v48, MEMORY[0x1E69E63B0], v46, v51, &protocol witness table for Double, v49, v44);
  sub_1AAE720FC(v36, v37, v40, v41, v42, &protocol witness table for Double, v35, v58);
  (*(v33 + 8))(v34, v29);
  return (*(v50 + 8))(v59, v37);
}

uint64_t RulePlot.init<A, B>(_:xStart:xEnd:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v52 = a5;
  v50 = a3;
  v51 = a4;
  v54 = a1;
  v55 = a2;
  v53 = a9;
  v46 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1E69E63B0];
  v49 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v49);
  v16 = &v44 - v15;
  v48 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a7, a10);
  MEMORY[0x1EEE9AC00](v48);
  v18 = &v44 - v17;
  v47 = *(a6 - 8);
  v19 = v47;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[0] = a6;
  v56[1] = a7;
  v44 = a10;
  v45 = a6;
  v56[2] = v14;
  v56[3] = a8;
  v56[4] = a10;
  v56[5] = &protocol witness table for Double;
  v23 = type metadata accessor for XYRenderer(0, v56);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v44 - v25;
  (*(v19 + 16))(v22, v54, a6, v24);
  v27 = a7;
  v28 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a7, a10);
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v31(v18, v55, v28);
  v32 = &v18[v29];
  v33 = v50;
  v31(v32, v50, v28);
  swift_storeEnumTagMultiPayload();
  *v16 = v51;
  v16[8] = v52 & 1;
  swift_storeEnumTagMultiPayload();
  v34 = v22;
  v35 = v16;
  v36 = v45;
  v37 = v46;
  v38 = v27;
  v39 = v27;
  v40 = MEMORY[0x1E69E63B0];
  v41 = v44;
  sub_1AAF314E0(v34, v18, v35, v45, v39, MEMORY[0x1E69E63B0], v46, v44, v26, &protocol witness table for Double);
  sub_1AAE720FC(v26, v36, v38, v40, v37, v41, &protocol witness table for Double, v53);
  v42 = *(v30 + 8);
  v42(v33, v28);
  v42(v55, v28);
  return (*(v47 + 8))(v54, v36);
}

uint64_t RulePlot.init<A, B>(_:x:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v49 = a6;
  v48 = a5;
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v50 = a9;
  v51 = a1;
  v42 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1E69E63B0];
  v44 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v44);
  v16 = &v39 - v15;
  v43 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a8, a11);
  MEMORY[0x1EEE9AC00](v43);
  v18 = &v39 - v17;
  v41 = *(a7 - 8);
  v19 = v41;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a11;
  v40 = v22;
  v52[0] = a7;
  v52[1] = a8;
  v52[2] = v14;
  v52[3] = a10;
  v52[4] = a11;
  v52[5] = &protocol witness table for Double;
  v23 = type metadata accessor for XYRenderer(0, v52);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v39 - v25;
  (*(v19 + 16))(v22, v51, a7, v24);
  v27 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, a8, a11);
  type metadata accessor for MarkDimensions(255, AssociatedTypeWitness, v28, v29);
  v30 = *(swift_getTupleTypeMetadata2() + 48);
  v31 = *(v27 - 8);
  v32 = v45;
  (*(v31 + 16))(v18, v45, v27);
  MarkDimensions.init(integerLiteral:)(0, &v18[v30]);
  swift_storeEnumTagMultiPayload();
  *v16 = v46;
  v16[8] = v47 & 1;
  *(v16 + 2) = v48;
  v16[24] = v49 & 1;
  swift_storeEnumTagMultiPayload();
  v33 = v39;
  v34 = v18;
  v35 = v16;
  v36 = MEMORY[0x1E69E63B0];
  v37 = v42;
  sub_1AAF314E0(v40, v34, v35, a7, a8, MEMORY[0x1E69E63B0], v42, v39, v26, &protocol witness table for Double);
  sub_1AAE720FC(v26, a7, a8, v36, v37, v33, &protocol witness table for Double, v50);
  (*(v31 + 8))(v32, v27);
  return (*(v41 + 8))(v51, a7);
}

uint64_t RulePlot.init<A, B>(_:x:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v56 = a7;
  v57 = a1;
  v54 = a5;
  v55 = a9;
  v58 = a4;
  v52 = a3;
  v51 = a2;
  v46 = a10;
  v49 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, a7, a10);
  MEMORY[0x1EEE9AC00](v53);
  v15 = &v46 - v14;
  v16 = MEMORY[0x1E69E63B0];
  v17 = type metadata accessor for BoundingSectionSpecification(0, AssociatedTypeWitness, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v50 = *(a6 - 8);
  v20 = v50;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v23;
  v59[0] = a6;
  v59[1] = v16;
  v24 = v56;
  v59[2] = v56;
  v59[3] = a8;
  v25 = v46;
  v59[4] = &protocol witness table for Double;
  v59[5] = v46;
  v26 = type metadata accessor for XYRenderer(0, v59);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v48 = &v46 - v28;
  (*(v20 + 16))(v23, v57, a6, v27);
  *v19 = v51;
  v19[8] = v52 & 1;
  swift_storeEnumTagMultiPayload();
  v29 = v24;
  v30 = v25;
  v31 = type metadata accessor for PlottableProjection(255, AssociatedTypeWitness, v29, v25);
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v34(v15, v58, v31);
  v35 = &v15[v32];
  v36 = v54;
  v34(v35, v54, v31);
  swift_storeEnumTagMultiPayload();
  v37 = v30;
  v45 = v30;
  v38 = v48;
  v39 = v19;
  v40 = MEMORY[0x1E69E63B0];
  v41 = v56;
  v42 = v49;
  sub_1AAF314E0(v47, v39, v15, a6, MEMORY[0x1E69E63B0], v56, v49, &protocol witness table for Double, v48, v45);
  sub_1AAE720FC(v38, a6, v40, v41, v42, &protocol witness table for Double, v37, v55);
  v43 = *(v33 + 8);
  v43(v36, v31);
  v43(v58, v31);
  return (*(v50 + 8))(v57, a6);
}

uint64_t RulePlot.init<A, B>(_:xStart:xEnd:y:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a8;
  v51 = a7;
  v52 = a3;
  v54 = a4;
  v55 = a9;
  v56 = a1;
  v13 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v53 = type metadata accessor for BoundingSectionSpecification(0, v13, a6, a8);
  MEMORY[0x1EEE9AC00](v53);
  v15 = &v45 - v14;
  v16 = type metadata accessor for BoundingSectionSpecification(0, v13, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v45 - v17);
  v50 = *(a5 - 8);
  v19 = v50;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[0] = a5;
  v48 = a5;
  v57[1] = MEMORY[0x1E69E63B0];
  v57[2] = a6;
  v46 = a6;
  v57[3] = a7;
  v23 = v47;
  v57[4] = &protocol witness table for Double;
  v57[5] = v47;
  v24 = type metadata accessor for XYRenderer(0, v57);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v49 = &v45 - v26;
  (*(v19 + 16))(v22, v56, a5, v25);
  v27 = v52;
  *v18 = a2;
  v18[1] = v27;
  swift_storeEnumTagMultiPayload();
  v28 = v23;
  v29 = type metadata accessor for PlottableProjection(255, v13, a6, v23);
  type metadata accessor for MarkDimensions(255, v13, v30, v31);
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  v33 = *(v29 - 8);
  v34 = v54;
  (*(v33 + 16))(v15, v54, v29);
  MarkDimensions.init(integerLiteral:)(0, &v15[v32]);
  swift_storeEnumTagMultiPayload();
  v35 = v28;
  v44 = v28;
  v37 = v48;
  v36 = v49;
  v38 = v18;
  v39 = v15;
  v40 = MEMORY[0x1E69E63B0];
  v41 = v46;
  v42 = v51;
  sub_1AAF314E0(v22, v38, v39, v48, MEMORY[0x1E69E63B0], v46, v51, &protocol witness table for Double, v49, v44);
  sub_1AAE720FC(v36, v37, v40, v41, v42, &protocol witness table for Double, v35, v55);
  (*(v33 + 8))(v34, v29);
  return (*(v50 + 8))(v56, v37);
}

uint64_t RulePlot.init<A, B>(_:xStart:xEnd:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a7;
  v45 = a1;
  v50 = a4;
  v51 = a3;
  v52 = a9;
  v53 = a2;
  v14 = *(*a4 + *MEMORY[0x1E69E77B0]);
  v15 = MEMORY[0x1E69E63B0];
  v49 = type metadata accessor for BoundingSectionSpecification(0, v14, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v49);
  v48 = (&v42 - v16);
  v17 = a8;
  v47 = type metadata accessor for BoundingSectionSpecification(0, v14, a6, a8);
  MEMORY[0x1EEE9AC00](v47);
  v19 = &v42 - v18;
  v46 = *(a5 - 8);
  v20 = v46;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = a5;
  v54[1] = a6;
  v54[2] = v15;
  v54[3] = a7;
  v54[4] = v17;
  v42 = v17;
  v54[5] = &protocol witness table for Double;
  v24 = type metadata accessor for XYRenderer(0, v54);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v43 = &v42 - v26;
  (*(v20 + 16))(v23, a1, a5, v25);
  v27 = type metadata accessor for PlottableProjection(255, v14, a6, v17);
  v28 = *(swift_getTupleTypeMetadata2() + 48);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v30(v19, v53, v27);
  v31 = &v19[v28];
  v32 = v51;
  v30(v31, v51, v27);
  swift_storeEnumTagMultiPayload();
  v33 = v48;
  *v48 = v50;
  swift_storeEnumTagMultiPayload();
  v35 = v42;
  v34 = v43;
  v36 = v23;
  v37 = v33;
  v38 = MEMORY[0x1E69E63B0];
  v39 = v44;
  sub_1AAF314E0(v36, v19, v37, a5, a6, MEMORY[0x1E69E63B0], v44, v42, v43, &protocol witness table for Double);
  sub_1AAE720FC(v34, a5, a6, v38, v39, v35, &protocol witness table for Double, v52);
  v40 = *(v29 + 8);
  v40(v32, v27);
  v40(v53, v27);
  return (*(v46 + 8))(v45, a5);
}

uint64_t RulePlot.init<A, B>(_:x:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v45 = a7;
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v43 = a1;
  v51 = a9;
  v14 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v47 = type metadata accessor for BoundingSectionSpecification(0, v14, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v47);
  v16 = (&v40 - v15);
  v46 = type metadata accessor for BoundingSectionSpecification(0, v14, a6, a8);
  MEMORY[0x1EEE9AC00](v46);
  v18 = &v40 - v17;
  v44 = *(a5 - 8);
  v19 = v44;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v22;
  v52[0] = a5;
  v52[1] = a6;
  v52[2] = MEMORY[0x1E69E63B0];
  v52[3] = a7;
  v41 = a8;
  v52[4] = a8;
  v52[5] = &protocol witness table for Double;
  v23 = type metadata accessor for XYRenderer(0, v52);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v40 - v25;
  (*(v19 + 16))(v22, a1, a5, v24);
  v27 = type metadata accessor for PlottableProjection(255, v14, a6, a8);
  type metadata accessor for MarkDimensions(255, v14, v28, v29);
  v30 = *(swift_getTupleTypeMetadata2() + 48);
  v31 = *(v27 - 8);
  v32 = v48;
  (*(v31 + 16))(v18, v48, v27);
  MarkDimensions.init(integerLiteral:)(0, &v18[v30]);
  swift_storeEnumTagMultiPayload();
  v33 = v50;
  *v16 = v49;
  v16[1] = v33;
  swift_storeEnumTagMultiPayload();
  v34 = v18;
  v35 = v16;
  v36 = MEMORY[0x1E69E63B0];
  v37 = v45;
  v38 = v41;
  sub_1AAF314E0(v42, v34, v35, a5, a6, MEMORY[0x1E69E63B0], v45, v41, v26, &protocol witness table for Double);
  sub_1AAE720FC(v26, a5, a6, v36, v37, v38, &protocol witness table for Double, v51);
  (*(v31 + 8))(v32, v27);
  return (*(v44 + 8))(v43, a5);
}

uint64_t RulePlot.init<A, B>(_:x:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v46 = a8;
  v47 = a2;
  v48 = a7;
  v51 = a4;
  v52 = a9;
  v53 = a1;
  v54 = a3;
  v11 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v50 = type metadata accessor for BoundingSectionSpecification(0, v11, a6, a8);
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v43 - v13;
  v15 = MEMORY[0x1E69E63B0];
  v16 = type metadata accessor for BoundingSectionSpecification(0, v11, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v43 - v17);
  v49 = *(a5 - 8);
  v19 = v49;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v22;
  v45 = a5;
  v55[0] = a5;
  v55[1] = v15;
  v23 = a6;
  v55[2] = a6;
  v55[3] = a7;
  v24 = v46;
  v55[4] = &protocol witness table for Double;
  v55[5] = v46;
  v25 = type metadata accessor for XYRenderer(0, v55);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v43 - v27;
  (*(v19 + 16))(v22, v53, a5, v26);
  *v18 = v47;
  swift_storeEnumTagMultiPayload();
  v29 = v24;
  v30 = type metadata accessor for PlottableProjection(255, v11, v23, v24);
  v31 = *(swift_getTupleTypeMetadata2() + 48);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v33(v14, v54, v30);
  v34 = &v14[v31];
  v35 = v51;
  v33(v34, v51, v30);
  swift_storeEnumTagMultiPayload();
  v36 = v18;
  v37 = v14;
  v38 = v45;
  v39 = MEMORY[0x1E69E63B0];
  v40 = v48;
  sub_1AAF314E0(v44, v36, v37, v45, MEMORY[0x1E69E63B0], v23, v48, &protocol witness table for Double, v28, v29);
  sub_1AAE720FC(v28, v38, v39, v23, v40, &protocol witness table for Double, v29, v52);
  v41 = *(v32 + 8);
  v41(v35, v30);
  v41(v54, v30);
  return (*(v49 + 8))(v53, v38);
}

uint64_t static VectorizedRulePlotContent._layoutChartContent(_:_:)(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1AACBB42C(a1, v3);
  v6 = *a2;
  return (*(v4 + 8))(&v6, v3, v4);
}

uint64_t static VectorizedRulePlotContent._renderChartContent(_:_:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1AAD04AC0(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for RulesRenderer(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a2 + 1);
  sub_1AAE74DE0(a1, v12, type metadata accessor for RulesRenderer);
  *(v12 + 5) = v13;
  *(v12 + 6) = v14;

  v15 = *(v10 + 40);
  sub_1AAE74D68(&v12[v15]);
  v16 = v14 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  sub_1AAE74DE0(v16, &v12[v15], type metadata accessor for ChartContentRenderContext.Environment);
  v17 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v17 - 8) + 56))(&v12[v15], 0, 1, v17);
  if (v13)
  {
    v18 = type metadata accessor for SgGroup(0);
    v35 = a3;
    v19 = v18;
    v20 = swift_allocBox();
    v33 = v8;
    v22 = v21;
    v34 = *(*(v14 + 16) + 24);
    v23 = a1[3];
    v24 = a1[4];
    sub_1AACBB42C(a1, v23);
    v25 = (*(v24 + 32))(&type metadata for RuleMark, v14, &type metadata for RuleMark, &off_1F1FDA840, v23, v24);
    v26 = type metadata accessor for SgClipRect(0);
    v27 = v33;
    (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
    v28 = *(v16 + *(v17 + 64));
    sub_1AAE74E48(v12);
    *v22 = v34;
    v22[1] = v25;
    result = sub_1AAD0F670(v27, v22 + v19[6]);
    *(v22 + v19[7]) = 0x3FF0000000000000;
    *(v22 + v19[8]) = v28;
    *(v22 + v19[9]) = MEMORY[0x1E69E7CC0];
    v30 = v19[10];
    a3 = v35;
    *(v22 + v30) = 0;
  }

  else
  {
    type metadata accessor for AnyVectorizedRenderer(0);
    v31 = swift_allocBox();
    sub_1AAE74EA4(v12, v32);
    type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
    result = swift_storeEnumTagMultiPayload();
    v20 = v31 | 0xD000000000000000;
  }

  *a3 = v20;
  return result;
}

uint64_t sub_1AAE74D68(uint64_t a1)
{
  sub_1AAD04AC0(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE74DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE74E48(uint64_t a1)
{
  v2 = type metadata accessor for RulesRenderer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE74EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RulesRenderer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE74F50(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE74FC4(uint64_t a1)
{
  result = type metadata accessor for RulesRenderer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1AAE75070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>)
{
  v58 = a6;
  v63 = a5;
  v61 = a9;
  v62 = a4;
  v60 = a3;
  v59 = a2;
  v14 = type metadata accessor for PlottableValue(0, a7, a8, a4);
  v56 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v51 - v17);
  v55 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  v25 = type metadata accessor for PlottableValue.Storage(0, a7, a8, v24);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v51 - v28;
  v57 = v14;
  v30 = *(v14 + 36);
  v31 = *(v26 + 16);
  v64 = a1;
  v31(v29, a1 + v30, v25, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *(swift_getTupleTypeMetadata2() + 48);
    v33 = *(v55 + 32);
    v52 = v23;
    v33(v23, v29, a7);
    v34 = v53;
    v33(v53, &v29[v32], a7);
    v35 = *v64;
    v36 = v64[1];
    v37 = *(v64 + 16);
    v38 = v64[3];
    static PlottableValue.value(_:_:)(*v64, v36, v37, v38, a7, a8, v18);
    v39 = v54;
    v40 = v35;
    v41 = v34;
    static PlottableValue.value(_:_:)(v40, v36, v37, v38, a7, a8, v54);
    v42 = sub_1AAE83D50(v18, v39, a7, a8, &v75);
    v44 = v56;
    v43 = v57;
    v45 = *(v56 + 8);
    v45(v39, v57, v42);
    (v45)(v18, v43);
    v46 = *(v55 + 8);
    v46(v41, a7);
    v46(v52, a7);
    v74[6] = v81;
    v74[7] = v82;
    v74[8] = v83;
    v74[2] = v77;
    v74[3] = v78;
    v74[4] = v79;
    v74[5] = v80;
    v74[0] = v75;
    v74[1] = v76;
  }

  else
  {
    v44 = v56;
    v43 = v57;
    (*(v56 + 16))(v18, v64, v57);
    sub_1AACD6F84(v18, a7, a8, &v75);
    WORD4(v79) = 0;
    BYTE10(v79) = 0;
    v80 = 0uLL;
    LOBYTE(v81) = 0;
    *(&v81 + 1) = 0;
    *&v82 = 0;
    BYTE8(v82) = -4;
    sub_1AACD7C5C(&v75);
    v74[6] = v81;
    v74[7] = v82;
    v74[8] = v83;
    v74[2] = v77;
    v74[3] = v78;
    v74[4] = v79;
    v74[5] = v80;
    v74[0] = v75;
    v74[1] = v76;
    (*(v26 + 8))(v29, v25);
  }

  *&v65 = 0;
  BYTE8(v65) = 1;
  *&v66 = 0;
  BYTE8(v66) = 1;
  v47 = sub_1AAE52D28(&v65);
  (*(v44 + 8))(v64, v43, v47);
  v74[15] = v71;
  v74[16] = v72;
  v74[17] = v73;
  v74[11] = v67;
  v74[12] = v68;
  v74[13] = v69;
  v74[14] = v70;
  v48 = v58 & 1;
  v74[9] = v65;
  v74[10] = v66;
  v49 = v61;
  result = memcpy(v61, v74, 0x120uLL);
  v49[36] = v59;
  *(v49 + 296) = v60;
  v49[38] = v62;
  *(v49 + 312) = v63;
  *(v49 + 40) = a10;
  *(v49 + 328) = v48;
  return result;
}

void *SectorMark.init<A>(angle:innerRadius:outerRadius:angularInset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v25 = a5;
  v24 = a4;
  v23 = a3;
  v26 = a9;
  v15 = type metadata accessor for PlottableValue(0, a8, a10, a4);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22[-v18];
  (*(v16 + 16))(&v22[-v18], a1, v15, v17);
  v20 = a6;
  if (a7)
  {
    v20 = 0.0;
  }

  sub_1AAE75070(v19, a2, v23, v24, v25, 0, a8, a10, v27, v20);
  (*(v16 + 8))(a1, v15);
  return memcpy(v26, v27, 0x149uLL);
}

uint64_t static SectorMark._layoutChartContent(_:_:)(_OWORD *a1, uint64_t a2)
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

uint64_t static SectorMark._renderChartContent(_:_:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t *a3@<X8>)
{
  v255 = a3;
  v259 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v259);
  *&v254 = &v244 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE6B3E4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v244 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AAF8E244();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v253 = &v244 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v12);
  v257 = &v244 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 112);
  v380[6] = *(a1 + 96);
  v380[7] = v14;
  v15 = *(a1 + 48);
  v380[2] = *(a1 + 32);
  v380[3] = v15;
  v16 = *(a1 + 80);
  v380[4] = *(a1 + 64);
  v380[5] = v16;
  v17 = *(a1 + 16);
  v380[0] = *a1;
  v380[1] = v17;
  v18 = *(a1 + 240);
  v381[5] = *(a1 + 224);
  v381[6] = v18;
  v19 = *(a1 + 272);
  v381[7] = *(a1 + 256);
  v381[8] = v19;
  v20 = *(a1 + 176);
  v381[1] = *(a1 + 160);
  v381[2] = v20;
  v21 = *(a1 + 208);
  v381[3] = *(a1 + 192);
  v381[4] = v21;
  v22 = *(a1 + 144);
  v380[8] = *(a1 + 128);
  v381[0] = v22;
  *(&v249 + 1) = *(a1 + 288);
  v23 = *(a1 + 296);
  v24 = *(a1 + 304);
  v25 = *(a1 + 312);
  v256 = *(a1 + 320);
  v26 = *(a1 + 328);
  LODWORD(v252) = *a2;
  v27 = *(a2 + 1);
  v28 = *(v27 + 344);
  *(v27 + 344) = 0;
  sub_1AAD5835C(v380, &v330);
  sub_1AAD5835C(v380, &v330);
  sub_1AAD036DC(v380, 0, v348);
  v29 = v348[0];
  v30 = v348[1];
  *(v27 + 344) = v28;
  v31 = *(v27 + 24);
  v32 = *(v27 + 32);
  v33 = vabdd_f64(v32, v31);
  v34 = *(v27 + 40);
  v35 = *(v27 + 48);
  v258 = v27;
  v250 = v30;
  *&v251 = v34;
  v36 = vabdd_f64(v35, v34);
  if (v36 >= v33)
  {
    v36 = v33;
  }

  v37 = v36 * 0.5;
  if (v25 > 1)
  {
    v38 = v37;
    if (v25 == 2)
    {
      v38 = v37 - v24;
    }
  }

  else
  {
    v38 = v37 * v24;
    if (!v25)
    {
      v38 = v24;
    }
  }

  v39 = 0.0;
  if (v38 <= 0.0)
  {
    v38 = 0.0;
  }

  if (v37 < v38)
  {
    v38 = v37;
  }

  v40 = v259;
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v39 = v38 - *(&v249 + 1);
    }
  }

  else if (v23)
  {
    v39 = v38 * *(&v249 + 1);
  }

  else
  {
    v39 = *(&v249 + 1);
  }

  v41 = 0;
  if (v39 > 0.0)
  {
    v42 = v39;
  }

  else
  {
    v42 = 0.0;
  }

  v43 = v38;
  if (v38 >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = v38;
  }

  v45 = v258 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  if (!*(v45 + 168))
  {
    v41 = *(v45 + 160);
  }

  sub_1AAE6CD44(v45 + v40[11], v8, sub_1AAE6B3E4);
  v46 = *(v10 + 48);
  v47 = v46(v8, 1, v9);
  *(&v249 + 1) = v41;
  if (v47 == 1)
  {
    if (qword_1ED9B1D88 != -1)
    {
      swift_once();
    }

    v48 = sub_1AAD0F5D8(v9, qword_1ED9C3498);
    v49 = v253;
    (*(v10 + 16))(v253, v48, v9);
    if (v46(v8, 1, v9) != 1)
    {
      sub_1AACAC45C(v8, sub_1AAE6B3E4);
    }
  }

  else
  {
    v49 = v253;
    (*(v10 + 32))(v253, v8, v9);
  }

  v50 = v29 * 360.0 / v33;
  v51 = v250 * 360.0 / v33;
  v52 = *&v254;
  sub_1AAE6CD44(v45, *&v254, type metadata accessor for ChartContentRenderContext.Environment);
  v53 = v257;
  sub_1AAD0F2A4(v52, v257 + v12[12]);
  v54 = (v31 + v32) * 0.5;
  v55 = (*&v251 + v35) * 0.5;
  v56 = *(v45 + v259[16]);
  *v53 = 0;
  *(v53 + 8) = v50;
  *(v53 + 16) = v51;
  *(v53 + 24) = v44;
  *(v53 + 32) = v43;
  v57 = *(&v249 + 1);
  *(v53 + 40) = v256;
  *(v53 + 48) = v57;
  v58 = v12[11];
  (*(v10 + 32))(v53 + v58, v49, v9);
  v59 = (v53 + v12[13]);
  v254 = v54;
  *v59 = v54;
  v59[1] = v55;
  *(v53 + v12[14]) = v26;
  *(v53 + v12[15]) = v56;
  if ((v252 & 1) == 0)
  {
    sub_1AADC7F60(v380);
    sub_1AADC7F60(v380);
    v107 = swift_allocBox();
    result = sub_1AAE777C8(v53, v108);
    v110 = v107 | 0x5000000000000000;
    goto LABEL_111;
  }

  v253 = v45;
  sub_1AAF8E444();
  v61.n128_u64[0] = v60;
  v63.n128_u64[0] = v62;
  v65.f64[0] = v64;
  sub_1AAF4344C(v53 + v58, v26, v349, v44, v43, (v50 + 270.0) * 3.14159265 / 180.0, (v51 + 270.0) * 3.14159265 / 180.0, v256, v61, v63, v65, v66, v254, v55);
  sub_1AAF8E874();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  sub_1AAD12C10(v349);
  LODWORD(v75) = sub_1AAE63890(v380, v381);
  LODWORD(v254) = sub_1AAE63890(v380, v381);
  v76 = sub_1AAE63890(v380, v381);
  sub_1AADC7F60(v380);
  if (v76)
  {
    v77 = v380;
  }

  else
  {
    v77 = v381;
  }

  if (v76)
  {
    v78 = v381;
  }

  else
  {
    v78 = v380;
  }

  v79 = v77[7];
  v336 = v77[6];
  v337 = v79;
  v80 = v77[8];
  v81 = v77[3];
  v332 = v77[2];
  v333 = v81;
  v82 = v77[5];
  v334 = v77[4];
  v335 = v82;
  v83 = v77[1];
  v330 = *v77;
  v331 = v83;
  v84 = v78[6];
  v85 = v78[7];
  v86 = v78[4];
  v344 = v78[5];
  v345 = v84;
  v87 = v78[8];
  v346 = v85;
  v347 = v87;
  v88 = v78[2];
  v89 = v78[3];
  v90 = *v78;
  v340 = v78[1];
  v341 = v88;
  v342 = v89;
  v343 = v86;
  v338 = v80;
  v339 = v90;
  v360[6] = v336;
  v360[7] = v337;
  v360[2] = v332;
  v360[3] = v333;
  v360[4] = v334;
  v360[5] = v335;
  v360[0] = v330;
  v360[1] = v331;
  v361[5] = v344;
  v361[6] = v345;
  v361[7] = v346;
  v361[8] = v347;
  v361[1] = v340;
  v361[2] = v88;
  v361[3] = v89;
  v361[4] = v86;
  v360[8] = v80;
  v361[0] = v90;
  v382[6] = v336;
  v382[7] = v337;
  v382[8] = v80;
  v382[2] = v332;
  v382[3] = v333;
  v382[4] = v334;
  v382[5] = v335;
  v382[0] = v330;
  v382[1] = v331;
  v91 = sub_1AACDB99C(v382);
  LODWORD(v256) = v75;
  if (v91 == 2)
  {
    v111 = sub_1AACD2C84(v382);
    v113 = *v111;
    v112 = *(v111 + 8);
    v114 = *(v111 + 16);
    *(&v363 + 1) = *(v111 + 17);
    HIDWORD(v363) = *(v111 + 20);
    v115 = *(v111 + 24);
    v116 = *(v111 + 32);
    v117 = *(v111 + 40);
    v118 = *(v111 + 48);
    *&v249 = v113;
    *(&v249 + 1) = v112;
    *&v362 = v113;
    *(&v362 + 1) = v112;
    v248 = v114;
    LOBYTE(v363) = v114;
    v250 = v115;
    v364 = v115;
    *&v365 = v116;
    *&v252 = v117;
    *(&v365 + 1) = v117;
    LODWORD(v251) = v118;
    v366 = v118;
    *v367 = *(v111 + 49);
    *&v367[15] = *(v111 + 64);
    v119 = v258;
    v93 = v259;
    v247 = v116;
    if (v75)
    {
      swift_beginAccess();
      memcpy(v271, (v119 + 80), 0x102uLL);
      if (*(&v271[1] + 1))
      {
        v120 = *(v119 + 128);
        v355 = *(v119 + 112);
        v356 = v120;
        v357 = *(v119 + 144);
        LOBYTE(v358[0]) = *(v119 + 160);
        v121 = *(v119 + 96);
        v353 = *(v119 + 80);
        v354 = v121;

        sub_1AAD5835C(v381, &v260);
        sub_1AACD7304(v249, *(&v249 + 1), v248 & 1);

        sub_1AACD7C50(v116, v252, v251);
        v294 = v355;
        v295 = v356;
        v296 = v357;
        LOBYTE(v297) = v358[0];
        v292 = v353;
        v293 = v354;
LABEL_50:
        *&v246 = *(&v296 + 1);
        v122 = *(&v294 + 1);
        *&v245 = *(&v294 + 1);
        v75 = v294;
        v123 = v295;
        v124 = v297;
        sub_1AAE6CE20(v271, &v260, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AAE0BFDC(&v292, &v260);
        v125 = v122;
        v126 = v123;
        LOBYTE(v122) = v123;
        v127 = v258;
        sub_1AAE0A738(v75, v125, v126, *&v246, v124, 3, &v350);
        v246 = v350;
        v244 = v351;
        LOBYTE(v128) = v352;
        sub_1AAE0C014(&v292);
        sub_1AAD04750(v292, *(&v292 + 1), v293);

        sub_1AAD0E818(v75, v245, v122);
        v129 = v244;
        v130 = v246;
        v119 = v127;
        LOBYTE(v75) = LOBYTE(v256);
LABEL_92:
        v178 = &v253[v93[21]];
        v179 = *(v178 + 2);
        v374 = *v178;
        v375 = v179;
        v376 = v130;
        v377 = v129;
        v378 = v128;
        v379 = *(v119 + 352);
        v180 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale;
LABEL_96:
        v183 = (v119 + *v180);
        v185 = v183[1];
        v184 = v183[2];
        v353 = *v183;
        v354 = v185;
        v355 = v184;
        v187 = v183[4];
        v186 = v183[5];
        v188 = v183[3];
        *(v358 + 9) = *(v183 + 89);
        v357 = v187;
        v358[0] = v186;
        v356 = v188;
        v133 = LOBYTE(v254);
        if (BYTE8(v358[1]) == 255)
        {

          sub_1AAD04750(v249, *(&v249 + 1), v248 & 1);

          sub_1AAE49270(&v260);
        }

        else
        {
          v327 = v357;
          v328[0] = v358[0];
          *(v328 + 9) = *(v358 + 9);
          v323 = v353;
          v324 = v354;
          v325 = v355;
          v326 = v356;
          v368 = v353;
          v369 = v354;
          *(v373 + 9) = *(v358 + 9);
          v370 = v355;
          v371 = v356;
          v372 = v357;
          v373[0] = v358[0];
          sub_1AAE6CE20(&v323, &v260, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
          sub_1AAE08D1C(&v368, v119, (v75 & 1) == 0, &v362, &v260);
          sub_1AACAC45C(&v353, sub_1AACCF364);
          nullsub_1();

          sub_1AAD04750(v249, *(&v249 + 1), v248 & 1);
        }

        sub_1AAD0E818(v247, v252, v251);
        goto LABEL_100;
      }

      v128 = BYTE1(v271[16]);

      if (v128 == 2)
      {
        sub_1AAD5835C(v381, &v260);
        sub_1AACD7304(v249, *(&v249 + 1), v248 & 1);

        sub_1AACD7C50(v247, v252, v251);
        v130 = 0uLL;
      }

      else
      {
        sub_1AAD5835C(v381, &v260);
        sub_1AACD7304(v249, *(&v249 + 1), v248 & 1);

        sub_1AACD7C50(v247, v252, v251);
        sub_1AACBB21C(v271, &v260);
        v162 = sub_1AAF8E7A4();
        if (v162 == sub_1AAF8E7A4())
        {
          sub_1AAE6CE20(&v271[11], &v260, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
          sub_1AACBB254(v271);
          if (*(&v271[12] + 1))
          {
            v292 = v271[11];
            v293 = v271[12];
            v294 = v271[13];
            v295 = v271[14];
            v296 = v271[15];
            LOBYTE(v297) = v271[16];
            goto LABEL_50;
          }
        }

        else
        {
          sub_1AACBB254(v271);
        }

        v130 = 0uLL;
        LOBYTE(v128) = 2;
      }

      v129 = 0uLL;
      goto LABEL_92;
    }

    swift_beginAccess();
    memcpy(v271, (v119 + 80), 0x102uLL);
    if (*&v271[7])
    {
      v147 = *(v119 + 216);
      v355 = *(v119 + 200);
      v356 = v147;
      v357 = *(v119 + 232);
      LOBYTE(v358[0]) = *(v119 + 248);
      v148 = *(v119 + 184);
      v353 = *(v119 + 168);
      v354 = v148;

      sub_1AAD5835C(v381, &v260);
      sub_1AACD7304(v249, *(&v249 + 1), v248 & 1);

      sub_1AACD7C50(v116, v252, v251);
      v294 = v355;
      v295 = v356;
      v296 = v357;
      LOBYTE(v297) = v358[0];
      v292 = v353;
      v293 = v354;
      v149 = v119;
LABEL_57:
      v150 = *(&v296 + 1);
      v151 = v294;
      v75 = v295;
      v152 = v297;
      sub_1AAE6CE20(&v271[5] + 8, &v260, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v292, &v260);
      sub_1AAE0A738(v151, *(&v151 + 1), v75, v150, v152, 4, &v350);
      v245 = v351;
      v246 = v350;
      LOBYTE(v153) = v352;
      sub_1AAE0C014(&v292);
      sub_1AAD04750(v292, *(&v292 + 1), v293);

      sub_1AAD0E818(v151, *(&v151 + 1), v75);
      v155 = v245;
      v154 = v246;
      v119 = v149;
      LOBYTE(v75) = LOBYTE(v256);
LABEL_95:
      v93 = v259;
      v181 = &v253[v259[22]];
      v182 = *(v181 + 2);
      v374 = *v181;
      v375 = v182;
      v376 = v154;
      v377 = v155;
      v378 = v153;
      v379 = *(v119 + 368);
      v180 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale;
      goto LABEL_96;
    }

    v153 = BYTE1(v271[16]);

    if (v153 == 2)
    {
      sub_1AAD5835C(v381, &v260);
      sub_1AACD7304(v249, *(&v249 + 1), v248 & 1);

      sub_1AACD7C50(v247, v252, v251);
      v154 = 0uLL;
      v155 = 0uLL;
      goto LABEL_95;
    }

    v149 = v119;
    sub_1AAD5835C(v381, &v260);
    sub_1AACD7304(v249, *(&v249 + 1), v248 & 1);

    sub_1AACD7C50(v247, v252, v251);
    sub_1AACBB21C(v271, &v260);
    v163 = sub_1AAF8E7A4();
    if (v163 == sub_1AAF8E7A4())
    {
      sub_1AAE6CE20(&v271[11], &v260, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(v271);
      if (*(&v271[12] + 1))
      {
        v292 = v271[11];
        v293 = v271[12];
        v294 = v271[13];
        v295 = v271[14];
        v296 = v271[15];
        LOBYTE(v297) = v271[16];
        goto LABEL_57;
      }
    }

    else
    {
      sub_1AACBB254(v271);
    }

    v154 = 0uLL;
    LOBYTE(v153) = 2;
    v155 = 0uLL;
    goto LABEL_95;
  }

  v92 = v258;
  v93 = v259;
  if (v91)
  {
    sub_1AAE49270(v271);
    sub_1AAD6D0FC(0);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_1AAF99670;
    v132 = v131 + 32;
    sub_1AAD5835C(v381, &v260);
    v320 = v271[8];
    v321 = v271[9];
    v322 = *&v271[10];
    v316 = v271[4];
    v317 = v271[5];
    v318 = v271[6];
    v319 = v271[7];
    v312 = v271[0];
    v313 = v271[1];
    v314 = v271[2];
    v315 = v271[3];
    v133 = LOBYTE(v254);
    goto LABEL_102;
  }

  v94 = sub_1AACD2C84(v382);
  v385 = *v94;
  v95 = *(v94 + 24);
  v386 = *(v94 + 16);
  v387 = v95;
  v383 = *(v94 + 32);
  v384 = *(v94 + 48);
  v362 = v385;
  v363 = v386;
  v364 = v95;
  v365 = v383;
  v366 = v384;
  *&v367[15] = *(v94 + 64);
  *v367 = *(v94 + 49);
  v388 = v385;
  v389 = v386;
  v391 = v384;
  v390 = v383;
  if ((v75 & 1) == 0)
  {
    swift_beginAccess();
    memcpy(v271, (v92 + 80), 0x102uLL);
    if (*&v271[7])
    {
      v134 = *(v92 + 216);
      v355 = *(v92 + 200);
      v356 = v134;
      v357 = *(v92 + 232);
      LOBYTE(v358[0]) = *(v92 + 248);
      v135 = *(v92 + 184);
      v353 = *(v92 + 168);
      v354 = v135;

      sub_1AADFA6FC(&v388, &v260);
      sub_1AAE6CE20(&v387, &v260, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v390, &v260);
      sub_1AAD5835C(v381, &v260);
      v294 = v355;
      v295 = v356;
      v296 = v357;
      LOBYTE(v297) = v358[0];
      v292 = v353;
      v293 = v354;
      v136 = v92;
LABEL_54:
      v137 = *(&v296 + 1);
      v139 = *(&v294 + 1);
      v138 = v294;
      v140 = v295;
      v141 = v297;
      sub_1AAE6CE20(&v271[5] + 8, &v260, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v292, &v260);
      v142 = v137;
      v143 = v136;
      sub_1AAE0A738(v138, v139, v140, v142, v141, 4, &v350);
      v251 = v351;
      v252 = v350;
      v144 = v352;
      sub_1AAE0C014(&v292);
      sub_1AAD04750(v292, *(&v292 + 1), v293);

      sub_1AAD0E818(v138, v139, v140);
      v146 = v251;
      v145 = v252;
      v106 = v143;
      LOBYTE(v75) = LOBYTE(v256);
      goto LABEL_84;
    }

    v158 = v92;
    v159 = BYTE1(v271[16]);
    v106 = v158;

    if (v159 == 2)
    {
      sub_1AADFA6FC(&v388, &v260);
      sub_1AAE6CE20(&v387, &v260, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v390, &v260);
      sub_1AAD5835C(v381, &v260);
    }

    else
    {
      sub_1AADFA6FC(&v388, &v260);
      sub_1AAE6CE20(&v387, &v260, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v390, &v260);
      sub_1AAD5835C(v381, &v260);
      sub_1AACBB21C(v271, &v260);
      v161 = sub_1AAF8E7A4();
      if (v161 == sub_1AAF8E7A4())
      {
        sub_1AAE6CE20(&v271[11], &v260, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(v271);
        if (*(&v271[12] + 1))
        {
          v292 = v271[11];
          v293 = v271[12];
          v294 = v271[13];
          v295 = v271[14];
          v296 = v271[15];
          LOBYTE(v297) = v271[16];
          v136 = v106;
          goto LABEL_54;
        }
      }

      else
      {
        sub_1AACBB254(v271);
      }
    }

    v145 = 0uLL;
    v144 = 2;
    v146 = 0uLL;
LABEL_84:
    v171 = &v253[v259[22]];
    v172 = *(v171 + 2);
    v374 = *v171;
    v375 = v172;
    v376 = v145;
    v377 = v146;
    v378 = v144;
    v379 = *(v106 + 368);
    v174 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    v173 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v353 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v354 = v174;
    v355 = v173;
    v176 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    v175 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    v177 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    *(v358 + 9) = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v357 = v176;
    v358[0] = v175;
    v356 = v177;
    v133 = LOBYTE(v254);
    if (BYTE8(v358[1]) != 255)
    {
      v327 = v357;
      v328[0] = v358[0];
      *(v328 + 9) = *(v358 + 9);
      v323 = v353;
      v324 = v354;
      v325 = v355;
      v326 = v356;
      v368 = v353;
      v369 = v354;
      *(v373 + 9) = *(v358 + 9);
      v370 = v355;
      v371 = v356;
      v372 = v357;
      v373[0] = v358[0];
      goto LABEL_86;
    }

LABEL_87:

    sub_1AAD6E0DC(&v388);
    sub_1AAE491F0(&v387);
    sub_1AAE49270(&v260);
    goto LABEL_88;
  }

  swift_beginAccess();
  memcpy(v271, (v92 + 80), 0x102uLL);
  if (*(&v271[1] + 1))
  {
    v96 = *(v92 + 128);
    v355 = *(v92 + 112);
    v356 = v96;
    v357 = *(v92 + 144);
    LOBYTE(v358[0]) = *(v92 + 160);
    v97 = *(v92 + 96);
    v353 = *(v92 + 80);
    v354 = v97;

    sub_1AADFA6FC(&v388, &v260);
    sub_1AAE6CE20(&v387, &v260, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAE14D50(&v390, &v260);
    sub_1AAD5835C(v381, &v260);
    v294 = v355;
    v295 = v356;
    v296 = v357;
    LOBYTE(v297) = v358[0];
    v292 = v353;
    v293 = v354;
LABEL_45:
    v98 = *(&v296 + 1);
    v100 = *(&v294 + 1);
    v99 = v294;
    v101 = v295;
    v102 = v297;
    sub_1AAE6CE20(v271, &v260, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AAE0BFDC(&v292, &v260);
    sub_1AAE0A738(v99, v100, v101, v98, v102, 3, &v350);
    v251 = v351;
    v252 = v350;
    v103 = v352;
    sub_1AAE0C014(&v292);
    sub_1AAD04750(v292, *(&v292 + 1), v293);

    sub_1AAD0E818(v99, v100, v101);
    v105 = v251;
    v104 = v252;
    v106 = v92;
    LOBYTE(v75) = LOBYTE(v256);
    goto LABEL_80;
  }

  v156 = v92;
  v157 = BYTE1(v271[16]);
  v106 = v156;

  if (v157 == 2)
  {
    sub_1AADFA6FC(&v388, &v260);
    sub_1AAE6CE20(&v387, &v260, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAE14D50(&v390, &v260);
    sub_1AAD5835C(v381, &v260);
  }

  else
  {
    sub_1AADFA6FC(&v388, &v260);
    sub_1AAE6CE20(&v387, &v260, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAE14D50(&v390, &v260);
    sub_1AAD5835C(v381, &v260);
    sub_1AACBB21C(v271, &v260);
    v160 = sub_1AAF8E7A4();
    if (v160 == sub_1AAF8E7A4())
    {
      sub_1AAE6CE20(&v271[11], &v260, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(v271);
      if (*(&v271[12] + 1))
      {
        v292 = v271[11];
        v293 = v271[12];
        v294 = v271[13];
        v295 = v271[14];
        v296 = v271[15];
        LOBYTE(v297) = v271[16];
        v92 = v106;
        goto LABEL_45;
      }
    }

    else
    {
      sub_1AACBB254(v271);
    }
  }

  v104 = 0uLL;
  v103 = 2;
  v105 = 0uLL;
LABEL_80:
  v164 = &v253[v259[21]];
  v165 = *(v164 + 2);
  v374 = *v164;
  v375 = v165;
  v376 = v104;
  v377 = v105;
  v378 = v103;
  v379 = *(v106 + 352);
  v167 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
  v166 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
  v353 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  v354 = v167;
  v355 = v166;
  v169 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
  v168 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
  v170 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
  v356 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
  *(v358 + 9) = v170;
  v357 = v169;
  v358[0] = v168;
  v133 = LOBYTE(v254);
  if (HIBYTE(v170) == 255)
  {
    goto LABEL_87;
  }

  v326 = v356;
  v327 = v357;
  v328[0] = v358[0];
  *(v328 + 9) = *(v358 + 9);
  v323 = v353;
  v324 = v354;
  v325 = v355;
  v368 = v353;
  v369 = v354;
  *(v373 + 9) = *(v358 + 9);
  v370 = v355;
  v371 = v356;
  v372 = v357;
  v373[0] = v358[0];
LABEL_86:
  sub_1AAE6CE20(&v323, &v260, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  sub_1AAE08D1C(&v368, v106, (v75 & 1) == 0, &v362, &v260);
  sub_1AACAC45C(&v353, sub_1AACCF364);
  nullsub_1();

  sub_1AAD6E0DC(&v388);
  sub_1AAE491F0(&v387);
LABEL_88:
  v93 = v259;
  sub_1AAD6E18C(&v390);
LABEL_100:
  v271[8] = v268;
  v271[9] = v269;
  *&v271[10] = v270;
  v271[4] = v264;
  v271[5] = v265;
  v271[6] = v266;
  v271[7] = v267;
  v271[0] = v260;
  v271[1] = v261;
  v271[2] = v262;
  v271[3] = v263;
  sub_1AAD6D0FC(0);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1AAF99670;
  v132 = v131 + 32;
  v267 = v271[7];
  v268 = v271[8];
  v269 = v271[9];
  v270 = *&v271[10];
  v264 = v271[4];
  v265 = v271[5];
  v266 = v271[6];
  v260 = v271[0];
  v261 = v271[1];
  v262 = v271[2];
  v263 = v271[3];
  if (sub_1AAE492A8(&v260) != 1)
  {
    sub_1AAE2D7EC(&v323);
    v320 = v271[8];
    v321 = v271[9];
    v322 = *&v271[10];
    v316 = v271[4];
    v317 = v271[5];
    v318 = v271[6];
    v319 = v271[7];
    v312 = v271[0];
    v313 = v271[1];
    v314 = v271[2];
    v315 = v271[3];
    goto LABEL_104;
  }

  v320 = v271[8];
  v321 = v271[9];
  v322 = *&v271[10];
  v316 = v271[4];
  v317 = v271[5];
  v318 = v271[6];
  v319 = v271[7];
  v312 = v271[0];
  v313 = v271[1];
  v314 = v271[2];
  v315 = v271[3];
LABEL_102:
  sub_1AAD5835C(v360, &v260);
  sub_1AAF72B20((v75 & 1) == 0, v360, &v323);
LABEL_104:
  v189 = v324;
  *v132 = v323;
  *(v132 + 16) = v189;
  v190 = v325;
  v191 = v326;
  v192 = v328[0];
  *(v132 + 64) = v327;
  *(v132 + 80) = v192;
  *(v132 + 32) = v190;
  *(v132 + 48) = v191;
  v193 = v328[1];
  v194 = v328[2];
  v195 = v328[3];
  *(v132 + 144) = v329;
  *(v132 + 112) = v194;
  *(v132 + 128) = v195;
  *(v132 + 96) = v193;
  sub_1AAD5835C(v361, &v260);
  sub_1AAF72B20(v133 & 1, v361, &v353);
  v196 = v357;
  *(v132 + 232) = v358[0];
  *(v132 + 216) = v196;
  v197 = v355;
  *(v132 + 200) = v356;
  *(v132 + 184) = v197;
  *(v132 + 296) = v359;
  v198 = v358[3];
  v199 = v358[1];
  *(v132 + 264) = v358[2];
  *(v132 + 280) = v198;
  *(v132 + 248) = v199;
  v200 = v354;
  *(v132 + 152) = v353;
  *(v132 + 168) = v200;
  v201 = v253;
  v202 = &v253[v93[17]];
  v203 = *(v202 + 8);
  v205 = *(v202 + 2);
  v204 = *(v202 + 3);
  v303 = *(v202 + 1);
  v302 = *v202;
  v304 = v205;
  v305 = v204;
  v306 = v203;
  v310 = *v202;
  v311 = *(v202 + 2);
  v206 = *(v202 + 2);
  v207 = *(v202 + 3);
  v309 = *(v202 + 8);
  v307 = v206;
  v308 = v207;
  if (*(&v303 + 1))
  {
    *(v272 + 7) = v310;
    *(v274 + 8) = v307;
    *(&v272[1] + 7) = v311;
    *(&v274[1] + 8) = v308;
    LOBYTE(v273[0]) = 5;
    *(v273 + 1) = v272[0];
    v273[1] = *(v272 + 15);
    *(&v274[2] + 1) = v309;
    *&v274[0] = *(&v303 + 1);
    LOBYTE(v275) = 3;
    sub_1AAE0C0B0(v273);
    v267 = v277;
    v268 = v278;
    *&v269 = v279;
    v262 = v274[0];
    v263 = v274[1];
    v264 = v274[2];
    v265 = v275;
    v266 = v276;
    v260 = v273[0];
    v261 = v273[1];
    nullsub_1();
    v298 = v266;
    v299 = v267;
    v300 = v268;
    v301 = v269;
    v294 = v262;
    v295 = v263;
    v296 = v264;
    v297 = v265;
    v292 = v260;
    v293 = v261;
  }

  else
  {
    sub_1AAE2D7EC(&v292);
  }

  v208 = v299;
  *(v132 + 400) = v298;
  *(v132 + 416) = v208;
  *(v132 + 432) = v300;
  *(v132 + 448) = v301;
  v209 = v295;
  *(v132 + 336) = v294;
  *(v132 + 352) = v209;
  v210 = v297;
  *(v132 + 368) = v296;
  *(v132 + 384) = v210;
  v211 = v293;
  *(v132 + 304) = v292;
  *(v132 + 320) = v211;
  sub_1AAE6CE20(&v302, &v260, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  v212 = sub_1AAF70438(v131);
  v254 = v213;

  *&v251 = *(*(v258 + 16) + 24);
  v214 = &v201[v93[25]];
  v215 = *(v214 + 1);
  *&v252 = *v214;
  v216 = v93[24];
  v217 = &v201[v93[23]];
  v218 = *v217;
  v219 = v217[1];
  v221 = *(v217 + 2);
  v220 = v217[3];
  v222 = &v201[v216];
  v223 = *&v201[v216];
  v224 = *&v201[v216 + 8];
  v225 = *&v201[v216 + 16];
  v226 = *(v222 + 3);
  v259 = v215;

  *&v249 = v218;
  *(&v249 + 1) = v219;
  v250 = v221;
  v253 = v220;
  sub_1AADA61DC(v218, v219, SLOBYTE(v221), v220);
  v258 = v225;
  sub_1AADA61DC(v223, v224, v225, v226);
  sub_1AAF72B20((LOBYTE(v256) & 1) == 0, v360, v290);
  sub_1AADC7F60(v361);
  sub_1AACAC45C(v257, type metadata accessor for SgSector);

  v267 = v319;
  v268 = v320;
  v269 = v321;
  v270 = v322;
  v264 = v316;
  v265 = v317;
  v266 = v318;
  v260 = v312;
  v261 = v313;
  v262 = v314;
  v263 = v315;
  if (sub_1AAE492A8(&v260) == 1)
  {
    sub_1AAE2D7EC(&v280);
  }

  else
  {
    v276 = v267;
    v277 = v268;
    v278 = v269;
    v279 = v270;
    v274[0] = v263;
    v274[1] = v264;
    v274[2] = v265;
    v275 = v266;
    v273[0] = v261;
    v273[1] = v262;
    nullsub_1();
    v286 = v276;
    v287 = v277;
    v288 = v278;
    v289 = v279;
    v282 = v274[0];
    v283 = v274[1];
    v284 = v274[2];
    v285 = v275;
    v280 = v273[0];
    v281 = v273[1];
  }

  sub_1AAE2D7EC(v273);
  result = swift_allocObject();
  *(result + 16) = v251;
  *(result + 24) = v68;
  *(result + 32) = v70;
  *(result + 40) = v72;
  *(result + 48) = v74;
  *&v227 = v252;
  *(&v227 + 1) = v259;
  *(result + 72) = v249;
  *&v228 = v250;
  *(&v228 + 1) = v253;
  *&v229 = v223;
  *(&v229 + 1) = v224;
  *(result + 56) = v227;
  *(result + 104) = v229;
  *(result + 88) = v228;
  *(result + 120) = v258;
  *(result + 128) = v226;
  *(result + 136) = v212;
  v230 = v290[7];
  *(result + 240) = v290[6];
  *(result + 256) = v230;
  *(result + 272) = v290[8];
  v231 = v291;
  v232 = v290[3];
  *(result + 176) = v290[2];
  *(result + 192) = v232;
  v233 = v290[5];
  *(result + 208) = v290[4];
  *(result + 224) = v233;
  v234 = v290[1];
  *(result + 144) = v290[0];
  *(result + 160) = v234;
  v235 = v254;
  *(result + 288) = v231;
  *(result + 296) = v235;
  v236 = v287;
  *(result + 400) = v286;
  *(result + 416) = v236;
  *(result + 432) = v288;
  *(result + 448) = v289;
  v237 = v283;
  *(result + 336) = v282;
  *(result + 352) = v237;
  v238 = v285;
  *(result + 368) = v284;
  *(result + 384) = v238;
  v239 = v281;
  *(result + 304) = v280;
  *(result + 320) = v239;
  v240 = v277;
  *(result + 552) = v276;
  *(result + 568) = v240;
  *(result + 584) = v278;
  *(result + 600) = v279;
  v241 = v274[1];
  *(result + 488) = v274[0];
  *(result + 504) = v241;
  v242 = v275;
  *(result + 520) = v274[2];
  *(result + 536) = v242;
  v243 = v273[1];
  *(result + 456) = v273[0];
  *(result + 472) = v243;
  *(result + 608) = 0;
  *(result + 616) = 0;
  v110 = result | 0xC000000000000000;
LABEL_111:
  *v255 = v110;
  return result;
}