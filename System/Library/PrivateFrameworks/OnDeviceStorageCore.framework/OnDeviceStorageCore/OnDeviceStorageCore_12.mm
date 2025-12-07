void *sub_1DB28FEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v92);
  v7 = v92[20];

  sub_1DB17181C(v92);
  v8 = *(v7 + 16);

  if (!v8)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  (v6)(v87, a1, a2);
  v90[8] = v87[8];
  v90[9] = v87[9];
  v90[10] = v88;
  v91 = v89;
  v90[4] = v87[4];
  v90[5] = v87[5];
  v90[6] = v87[6];
  v90[7] = v87[7];
  v90[0] = v87[0];
  v90[1] = v87[1];
  v90[2] = v87[2];
  v90[3] = v87[3];
  v10 = v88;

  sub_1DB17181C(v90);
  v11 = *(v10 + 16);
  if (!v11)
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_39:
    sub_1DB2B9A70(v14, a3);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v86 = MEMORY[0x1E69E7CC0];
  sub_1DB1384B0(0, v11, 0);
  v65[1] = v10;
  v66 = a3;
  v13 = v10 + 32;
  v14 = v86;
  while (1)
  {
    v69 = v14;
    v70 = v13;
    sub_1DB175650(v13, v77);
    if (v77[0])
    {
      v15 = 0x4C41204E4F494E55;
    }

    else
    {
      v15 = 0x4E4F494E55;
    }

    if (v77[0])
    {
      v16 = 0xE90000000000004CLL;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v72 = v68;
    v17 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    v71[0] = v15;
    v71[1] = v16;
    v67 = v17;
    v73 = v17;
    v71[2] = v12;
    v18 = v79;
    v19 = v80;
    v20 = __swift_project_boxed_opaque_existential_1(v78, v79);
    v75 = v18;
    v76 = *(v19 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v74);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v20, v18);
    v22 = v72;
    v23 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v23 + 24))(&v81, v22, v23);
    v25 = v81;
    v24 = v82;
    v26 = v83;

    v27 = sub_1DB1572F0(0, 1, 1, v12);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1DB1572F0((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[16 * v29];
    *(v30 + 4) = v25;
    *(v30 + 5) = v24;
    v31 = v26[2];

    result = sub_1DB157420(0, v31, 1, v12);
    v32 = result;
    if (!v26[2])
    {
      break;
    }

    if ((result[3] >> 1) - result[2] < v31)
    {
      goto LABEL_43;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    swift_arrayInitWithCopy();

    if (v31)
    {
      v33 = v32[2];
      v34 = __OFADD__(v33, v31);
      v35 = v33 + v31;
      if (v34)
      {
        goto LABEL_45;
      }

      v32[2] = v35;
    }

LABEL_18:
    v36 = v11;

    v37 = v75;
    v38 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    (*(v38 + 24))(&v81, v37, v38);
    v40 = v81;
    v39 = v82;
    v41 = v83;
    v42 = *(v27 + 2);
    v43 = *(v27 + 3);

    if (v42 >= v43 >> 1)
    {
      result = sub_1DB1572F0((v43 > 1), v42 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 2) = v42 + 1;
    v44 = &v27[16 * v42];
    *(v44 + 4) = v40;
    *(v44 + 5) = v39;
    v45 = v41[2];
    v46 = v32[2];
    v47 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      goto LABEL_41;
    }

    v48 = v32[3] >> 1;

    if (v48 < v47)
    {
      if (v46 <= v47)
      {
        v64 = v46 + v45;
      }

      else
      {
        v64 = v46;
      }

      result = sub_1DB157420(1, v64, 1, v32);
      v32 = result;
      v46 = result[2];
      v49 = v41[2];
      v48 = result[3] >> 1;
    }

    else
    {
      v49 = v45;
    }

    v50 = v36;
    v12 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      if ((v48 - v46) < v45)
      {
        goto LABEL_44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
      swift_arrayInitWithCopy();

      a3 = v66;
      if (v45)
      {
        v51 = v32[2];
        v34 = __OFADD__(v51, v45);
        v52 = v51 + v45;
        if (v34)
        {
          goto LABEL_46;
        }

        v32[2] = v52;
      }
    }

    else
    {

      a3 = v66;
      if (v45)
      {
        goto LABEL_42;
      }
    }

    v81 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
    v53 = sub_1DB2BAD24();
    v55 = v54;

    v84 = v68;
    v85 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    v81 = v53;
    v82 = v55;
    v83 = v32;
    sub_1DB1756AC(v77);
    v86 = v69;
    v57 = *(v69 + 16);
    v56 = *(v69 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1DB1384B0((v56 > 1), v57 + 1, 1);
    }

    v58 = v84;
    v59 = v85;
    v60 = __swift_mutable_project_boxed_opaque_existential_1(&v81, v84);
    MEMORY[0x1EEE9AC00](v60);
    v62 = v65 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v63 + 16))(v62);
    sub_1DB16412C(v57, v62, &v86, v58, v59);
    __swift_destroy_boxed_opaque_existential_1(&v81);
    v14 = v86;
    v13 = v70 + 48;
    v11 = v50 - 1;
    if (!v11)
    {

      goto LABEL_39;
    }
  }

  if (!v31)
  {
    goto LABEL_18;
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
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t QueryType.alias(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  v9 = *(a4 + 16);
  v9(v20, a3, a4);
  v10 = v20[3];
  v17 = v20[2];

  sub_1DB17181C(v20);

  v9(v21, a3, a4);
  v11 = v21[6];
  v12 = v21[7];

  sub_1DB17181C(v21);

  v13 = *(a4 + 32);

  v14 = v13(v19, a3, a4);
  v15[2] = v17;
  v15[3] = v10;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v11;
  v15[7] = v12;

  return v14(v19, 0);
}

double QueryType.insert(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB2BCC40;
  v9 = v8;
  v23 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA0, &qword_1DB2CEF20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  sub_1DB164AE0(a1, v10 + 32);
  v26[0] = v10;

  sub_1DB141A38(v11);
  *(v9 + 32) = v10;
  v12 = *(a4 + 16);
  v12(v25, a3, a4);
  v13 = v25[3];
  v14 = v25[5];
  v21 = v25[4];
  v22 = v25[2];
  v15 = v25[7];
  v20 = v25[6];

  sub_1DB17181C(v25);
  v12(v26, a3, a4);
  v16 = v27;
  v17 = v28;
  v18 = v29;
  sub_1DB1757B0(v27, v28, v29);
  sub_1DB17181C(v26);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v22;
  *(a5 + 8) = v13;
  *(a5 + 16) = v21;
  *(a5 + 24) = v14;
  *(a5 + 32) = v20;
  *(a5 + 40) = v15;
  *(a5 + 48) = 5;
  *(a5 + 56) = 0;
  *(a5 + 64) = v23;
  *(a5 + 72) = v16;
  *(a5 + 80) = v17;
  *(a5 + 88) = v18;
  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double sub_1DB2909DC@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  *(v9 + 32) = a2;
  v10 = *(a4 + 16);

  v10(v22, a3, a4);
  v11 = v22[3];
  v12 = v22[5];
  v19 = v22[4];
  v20 = v22[2];
  v13 = v22[7];
  v18 = v22[6];

  sub_1DB17181C(v22);
  v10(v23, a3, a4);
  v14 = v24;
  v15 = v25;
  v16 = v26;
  sub_1DB1757B0(v24, v25, v26);
  sub_1DB17181C(v23);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v20;
  *(a5 + 8) = v11;
  *(a5 + 16) = v19;
  *(a5 + 24) = v12;
  *(a5 + 32) = v18;
  *(a5 + 40) = v13;
  *(a5 + 48) = v21;
  *(a5 + 56) = 0;
  *(a5 + 64) = v9;
  *(a5 + 72) = v14;
  *(a5 + 80) = v15;
  *(a5 + 88) = v16;
  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double sub_1DB290B70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v8(v19, a2, a3);
  v9 = v19[3];
  v10 = v19[5];
  v17 = v19[4];
  v18 = v19[2];
  v11 = v19[7];
  v16 = v19[6];

  sub_1DB17181C(v19);
  v8(v20, a2, a3);
  v12 = v21;
  v13 = v22;
  v14 = v23;
  sub_1DB1757B0(v21, v22, v23);
  sub_1DB17181C(v20);
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v17;
  *(a4 + 24) = v10;
  *(a4 + 32) = v16;
  *(a4 + 40) = v11;
  *(a4 + 48) = 5;
  *(a4 + 56) = 0;
  *(a4 + 64) = a1;
  *(a4 + 72) = v12;
  *(a4 + 80) = v13;
  *(a4 + 88) = v14;

  sub_1DB1445E0(a4 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 1;
  return result;
}

double sub_1DB290CC8@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = *a1;
  v9 = *(a4 + 16);
  v9(v21, a3, a4);
  v10 = v21[3];
  v11 = v21[5];
  v18 = v21[4];
  v19 = v21[2];
  v12 = v21[7];
  v17 = v21[6];

  sub_1DB17181C(v21);
  v9(v22, a3, a4);
  v13 = v23;
  v14 = v24;
  v15 = v25;
  sub_1DB1757B0(v23, v24, v25);
  sub_1DB17181C(v22);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v19;
  *(a5 + 8) = v10;
  *(a5 + 16) = v18;
  *(a5 + 24) = v11;
  *(a5 + 32) = v17;
  *(a5 + 40) = v12;
  *(a5 + 48) = v20;
  *(a5 + 56) = 0;
  *(a5 + 64) = a2;
  *(a5 + 72) = v13;
  *(a5 + 80) = v14;
  *(a5 + 88) = v15;

  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double QueryType.insert()@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v11);
  v4 = v11[2];
  v3 = v11[3];
  v6 = v11[4];
  v5 = v11[5];
  v8 = v11[6];
  v7 = v11[7];

  sub_1DB17181C(v11);
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  v9 = MEMORY[0x1E69E7CC0];
  *(a2 + 48) = 5;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  sub_1DB1445E0(a2 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  return result;
}

double sub_1DB291220@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DB2BCC40;
  *(v24 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a2, v12 + 32);
  *(v12 + 72) = a3;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = 0;
  v13 = *(a5 + 16);

  v13(v25, a4, a5);
  v14 = v25[3];
  v15 = v25[5];
  v22 = v25[4];
  v23 = v25[2];
  v16 = v25[7];
  v21 = v25[6];

  sub_1DB17181C(v25);
  v13(v26, a4, a5);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  sub_1DB1757B0(v27, v28, v29);
  sub_1DB17181C(v26);
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 96) = 0u;
  *a6 = v23;
  *(a6 + 8) = v14;
  *(a6 + 16) = v22;
  *(a6 + 24) = v15;
  *(a6 + 32) = v21;
  *(a6 + 40) = v16;
  *(a6 + 48) = 5;
  *(a6 + 56) = v12;
  *(a6 + 64) = v24;
  *(a6 + 72) = v17;
  *(a6 + 80) = v18;
  *(a6 + 88) = v19;
  sub_1DB1445E0(a6 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 136) = 1;
  return result;
}

double sub_1DB291404@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  v31 = v10;
  *(v10 + 32) = a1;
  v11 = *(a2 + 16);
  if (v11)
  {
    v32[0] = MEMORY[0x1E69E7CC0];

    sub_1DB138810(0, v11, 0);
    v12 = v32[0];
    v13 = a2 + 32;
    do
    {
      sub_1DB164980(v13, v33);
      memset(&v34[8], 0, 32);
      v32[0] = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DB138810((v14 > 1), v15 + 1, 1);
        v12 = v32[0];
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 72 * v15;
      *(v16 + 32) = v33[0];
      v17 = v33[1];
      v18 = *v34;
      v19 = *&v34[16];
      *(v16 + 96) = *&v34[32];
      *(v16 + 64) = v18;
      *(v16 + 80) = v19;
      *(v16 + 48) = v17;
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(a4 + 16);
  v20(v32, a3, a4);
  v21 = v32[3];
  v22 = v32[5];
  v29 = v32[4];
  v30 = v32[2];
  v23 = v32[7];
  v28 = v32[6];

  sub_1DB17181C(v32);
  v20(v33, a3, a4);
  v24 = v35;
  v25 = v36;
  v26 = v37;
  sub_1DB1757B0(v35, v36, v37);
  sub_1DB17181C(v33);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v30;
  *(a5 + 8) = v21;
  *(a5 + 16) = v29;
  *(a5 + 24) = v22;
  *(a5 + 32) = v28;
  *(a5 + 40) = v23;
  *(a5 + 48) = 5;
  *(a5 + 56) = v12;
  *(a5 + 64) = v31;
  *(a5 + 72) = v24;
  *(a5 + 80) = v25;
  *(a5 + 88) = v26;
  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double QueryType.upsert(_:onConflict:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB2BCC40;
  *(v11 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB2BCC40;
  sub_1DB201088(a2, v12 + 32);
  v27[0] = v12;

  sub_1DB141760(v13);
  v25 = v12;
  v14 = *(a5 + 16);
  v14(v26, a4, a5);
  v15 = v26[3];
  v16 = v26[5];
  v23 = v26[4];
  v24 = v26[2];
  v17 = v26[7];
  v22 = v26[6];

  sub_1DB17181C(v26);
  v14(v27, a4, a5);
  v18 = v28;
  v19 = v29;
  v20 = v30;
  sub_1DB1757B0(v28, v29, v30);
  sub_1DB17181C(v27);
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 96) = 0u;
  *a6 = v24;
  *(a6 + 8) = v15;
  *(a6 + 16) = v23;
  *(a6 + 24) = v16;
  *(a6 + 32) = v22;
  *(a6 + 40) = v17;
  *(a6 + 48) = 5;
  *(a6 + 56) = v25;
  *(a6 + 64) = v11;
  *(a6 + 72) = v18;
  *(a6 + 80) = v19;
  *(a6 + 88) = v20;
  sub_1DB1445E0(a6 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 136) = 1;
  return result;
}

double sub_1DB291864@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v9 = swift_allocObject();
  v9[1] = xmmword_1DB2BCC40;
  sub_1DB164980(a2, (v9 + 2));
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  v10 = *(a4 + 16);
  v10(v22, a3, a4);
  v11 = v22[3];
  v12 = v22[5];
  v19 = v22[4];
  v20 = v22[2];
  v13 = v22[7];
  v18 = v22[6];

  sub_1DB17181C(v22);
  v10(v23, a3, a4);
  v14 = v24;
  v15 = v25;
  v16 = v26;
  sub_1DB1757B0(v24, v25, v26);
  sub_1DB17181C(v23);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v20;
  *(a5 + 8) = v11;
  *(a5 + 16) = v19;
  *(a5 + 24) = v12;
  *(a5 + 32) = v18;
  *(a5 + 40) = v13;
  *(a5 + 48) = 5;
  *(a5 + 56) = v9;
  *(a5 + 64) = a1;
  *(a5 + 72) = v14;
  *(a5 + 80) = v15;
  *(a5 + 88) = v16;

  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double sub_1DB291A08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a2, v11 + 32);
  *(v11 + 72) = a3;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  v12 = *(a5 + 16);

  v12(v24, a4, a5);
  v13 = v24[3];
  v14 = v24[5];
  v21 = v24[4];
  v22 = v24[2];
  v15 = v24[7];
  v20 = v24[6];

  sub_1DB17181C(v24);
  v12(v25, a4, a5);
  v16 = v26;
  v17 = v27;
  v18 = v28;
  sub_1DB1757B0(v26, v27, v28);
  sub_1DB17181C(v25);
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 96) = 0u;
  *a6 = v22;
  *(a6 + 8) = v13;
  *(a6 + 16) = v21;
  *(a6 + 24) = v14;
  *(a6 + 32) = v20;
  *(a6 + 40) = v15;
  *(a6 + 48) = 5;
  *(a6 + 56) = v11;
  *(a6 + 64) = a1;
  *(a6 + 72) = v16;
  *(a6 + 80) = v17;
  *(a6 + 88) = v18;

  sub_1DB1445E0(a6 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 136) = 1;
  return result;
}

double QueryType.upsertMany(_:onConflict:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  sub_1DB201088(a2, v10 + 32);
  v26[0] = v10;

  sub_1DB141760(v11);
  v23 = v10;
  v12 = *(a5 + 16);
  v12(v25, a4, a5);
  v13 = v25[3];
  v14 = v25[5];
  v21 = v25[4];
  v22 = v25[2];
  v15 = v25[7];
  v20 = v25[6];

  sub_1DB17181C(v25);
  v12(v26, a4, a5);
  v16 = v27;
  v17 = v28;
  v18 = v29;
  sub_1DB1757B0(v27, v28, v29);
  sub_1DB17181C(v26);
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 96) = 0u;
  *a6 = v22;
  *(a6 + 8) = v13;
  *(a6 + 16) = v21;
  *(a6 + 24) = v14;
  *(a6 + 32) = v20;
  *(a6 + 40) = v15;
  *(a6 + 48) = 5;
  *(a6 + 56) = v23;
  *(a6 + 64) = a1;
  *(a6 + 72) = v16;
  *(a6 + 80) = v17;
  *(a6 + 88) = v18;

  sub_1DB1445E0(a6 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 136) = 1;
  return result;
}

uint64_t QueryType.update(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA0, &qword_1DB2CEF20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  sub_1DB164AE0(a1, v9 + 32);

  sub_1DB141A38(v10);
  QueryType.update(_:)(v9, a3, a4, a5);
}

uint64_t QueryType.delete()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v5 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v34 = 0x46204554454C4544;
  v35 = 0xEB000000004D4F52;
  v6 = MEMORY[0x1E69E7CC0];
  v38 = v5;
  v36 = MEMORY[0x1E69E7CC0];
  sub_1DB288D3C(0, a1, a2, v39);
  sub_1DB28E9C0(a2, &v40);
  sub_1DB28F290(a2, &v41);
  sub_1DB28F63C(a2, &v42);
  for (i = 32; i != 232; i += 40)
  {
    sub_1DB1446A4(&v33[i], &v30, &qword_1ECC27898, &unk_1DB2CCD00);
    v23[0] = v30;
    v23[1] = v31;
    v24 = v32;
    if (*(&v31 + 1))
    {
      sub_1DB1355D0(v23, &v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1DB1573FC(0, v6[2] + 1, 1, v6);
        v29 = v6;
      }

      v10 = v6[2];
      v9 = v6[3];
      if (v10 >= v9 >> 1)
      {
        v6 = sub_1DB1573FC((v9 > 1), v10 + 1, 1, v6);
        v29 = v6;
      }

      v11 = v27;
      v12 = v28;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v27);
      MEMORY[0x1EEE9AC00](v13);
      v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_1DB200A54(v10, v15, &v29, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v25);
    }

    else
    {
      sub_1DB1445E0(v23, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v6, &v30);

  v17 = *(&v31 + 1);
  v18 = v32;
  __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
  (*(v18 + 24))(&v25, v17, v18);
  v19 = v22;
  *v22 = v25;
  *(v19 + 1) = v26;
  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

uint64_t QueryType.exists.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v7;
  v8 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  strcpy((inited + 32), "SELECT EXISTS");
  *(inited + 64) = v8;
  v9 = MEMORY[0x1E69E7CC0];
  *(inited + 46) = -4864;
  *(inited + 48) = v9;
  v10 = *(*(a2 + 8) + 24);
  v17 = v7;
  v18 = v8;
  v10(v16, a1);
  *(inited + 96) = v7;
  *(inited + 104) = v8;
  sub_1DB203564();
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_1DB2B9A70(inited, v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v11 = v17;
  v12 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v12 + 24))(&v14, v11, v12);
  *a3 = v14;
  *(a3 + 8) = v15;
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1DB292510@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(a3 + 16))(v34, a2, a3);
  v6 = v34[2];
  v7 = v34[3];
  v9 = v34[4];
  v8 = v34[5];
  v11 = v34[6];
  v10 = v34[7];

  sub_1DB17181C(v34);
  if ((a1 & 1) == 0)
  {
    v22 = v8;
    if (!v8)
    {

      v9 = v6;
      v22 = v7;
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v33 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);

    v23 = sub_1DB2B995C(34, 0xE100000000000000, v9, v22);
    v25 = v24;

    *&v30 = v23;
    *(&v30 + 1) = v25;
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v12 = v8;
  if (!v8)
  {

    v9 = v6;
    v12 = v7;
  }

  v13 = sub_1DB2B995C(34, 0xE100000000000000, v9, v12);
  v15 = v14;

  if (!v10)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v27 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    *&v30 = v13;
    *(&v30 + 1) = v15;
    v26 = MEMORY[0x1E69E7CC0];
    v33 = v27;
LABEL_10:
    v31 = v26;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v29 = v15;
  v17 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v18;
  v19 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(inited + 64) = v19;
  *(inited + 32) = sub_1DB2B995C(34, 0xE100000000000000, v11, v10);
  v20 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = v21;
  *(inited + 48) = v20;
  *(inited + 96) = v18;
  *(inited + 104) = v19;
  a4 = v17;
  *(inited + 72) = v13;
  *(inited + 80) = v29;
  *(inited + 88) = v20;
  sub_1DB2B9A70(inited, &v30);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
LABEL_11:
  sub_1DB1355D0(&v30, a4);
}

uint64_t QueryType.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  return QueryType.namespace<A>(_:)(&v5, a2, a3, a4);
}

{
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = sub_1DB2BB364();
  return QueryType.namespace<A>(_:)(&v8, a2, v6, a4);
}

uint64_t QueryType.subscript.getter(void (*a1)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  a1(v11, &v8, v7);
  v8 = v11[0];
  v9 = v11[1];
  v10 = v11[2];
  QueryType.namespace<A>(_:)(&v8, a3, MEMORY[0x1E69E7CA8] + 8, a4);
}

uint64_t sub_1DB292984@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  sub_1DB292F2C(&v28);
  sub_1DB28DC8C(a1, v29);
  sub_1DB28E034(&v30);
  sub_1DB28E824(&v31);
  sub_1DB28EB8C(&v32);
  sub_1DB28F8AC(&v33);
  sub_1DB28F144(&v34);
  sub_1DB28F3FC(&v35);
  v3 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 352; i += 40)
  {
    sub_1DB1446A4(&v27[i], &v24, &qword_1ECC27898, &unk_1DB2CCD00);
    v18[0] = v24;
    v18[1] = v25;
    v19 = v26;
    if (*(&v25 + 1))
    {
      sub_1DB1355D0(v18, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_1DB1573FC(0, v3[2] + 1, 1, v3);
        v23 = v3;
      }

      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        v3 = sub_1DB1573FC((v6 > 1), v7 + 1, 1, v3);
        v23 = v3;
      }

      v8 = v21;
      v9 = v22;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x1EEE9AC00](v10);
      v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v12);
      sub_1DB200A54(v7, v12, &v23, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      sub_1DB1445E0(v18, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v3, &v24);

  v14 = *(&v25 + 1);
  v15 = v26;
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  (*(v15 + 24))(v14, v15);
  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

uint64_t QueryType.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  sub_1DB2A3060(a1, a2, &v30);
  sub_1DB28DE2C(a1, a2, v31);
  sub_1DB28E394(a1, a2, &v32);
  sub_1DB28E9C0(a2, &v33);
  sub_1DB28EE38(a2, &v34);
  sub_1DB28FEF8(a1, a2, &v35);
  sub_1DB28F290(a2, &v36);
  sub_1DB28F63C(a2, &v37);
  v5 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 352; i += 40)
  {
    sub_1DB1446A4(&v29[i], &v26, &qword_1ECC27898, &unk_1DB2CCD00);
    v20[0] = v26;
    v20[1] = v27;
    v21 = v28;
    if (*(&v27 + 1))
    {
      sub_1DB1355D0(v20, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_1DB1573FC(0, v5[2] + 1, 1, v5);
        v25 = v5;
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_1DB1573FC((v8 > 1), v9 + 1, 1, v5);
        v25 = v5;
      }

      v10 = v23;
      v11 = v24;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v12);
      v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v14);
      sub_1DB200A54(v9, v14, &v25, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      sub_1DB1445E0(v20, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v5, &v26);

  v16 = *(&v27 + 1);
  v17 = v28;
  __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
  (*(v17 + 24))(v16, v17);
  return __swift_destroy_boxed_opaque_existential_1(&v26);
}

double sub_1DB292F2C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 176);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + 168);
    v22 = MEMORY[0x1E69E7CC0];
    sub_1DB1384B0(0, v4, 0);
    v6 = v22;
    v7 = (v3 + 32);
    do
    {
      sub_1DB2A3700(v7, v23);
      v22 = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DB1384B0((v8 > 1), v9 + 1, 1);
      }

      v10 = v24;
      v11 = v25;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      MEMORY[0x1EEE9AC00](v12);
      v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v15 + 16))(v14);
      sub_1DB16412C(v9, v14, &v22, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v6 = v22;
      v7 += 15;
      --v4;
    }

    while (v4);
    sub_1DB2B9A70(v22, v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    v17 = inited;
    *(inited + 16) = xmmword_1DB2BD5A0;
    if (v5)
    {
      v18 = 0x4345522048544957;
    }

    else
    {
      v18 = 1213483351;
    }

    if (v5)
    {
      v19 = 0xEE00455649535255;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v17[8] = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    v17[4] = v18;
    v17[5] = v19;
    v17[6] = MEMORY[0x1E69E7CC0];
    sub_1DB164980(v23, (v17 + 9));
    sub_1DB2B9A70(v17, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v23);
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

__n128 Table.clauses.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB1759B0(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

__n128 Table.init(clauses:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = *(a1 + 176);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1DB29332C(uint64_t a1)
{
  v2 = sub_1DB2A0428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB293368(uint64_t a1)
{
  v2 = sub_1DB2A0428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DB293470(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB1759B0(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

__n128 View.clauses.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB175900(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

double _s19OnDeviceStorageCore12VirtualTableV_8databaseACSS_SSSgtcfC_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v10 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 32) = 42;
  *(v10 + 40) = 0xE100000000000000;
  *(v10 + 48) = v11;
  *a5 = 0;
  *(a5 + 8) = v10;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = v11;
  result = 0.0;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0;
  *(a5 + 153) = 1;
  *(a5 + 160) = v11;
  *(a5 + 168) = 0;
  *(a5 + 176) = v11;
  return result;
}

uint64_t sub_1DB2937A4(uint64_t a1)
{
  v2 = sub_1DB2A0524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2937E0(uint64_t a1)
{
  v2 = sub_1DB2A0524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DB2938E4(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB175900(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

uint64_t VirtualTable.clauses.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 22);
  *(a1 + 176) = *(v1 + 22);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_1DB1754EC(v18, v17);
}

__n128 VirtualTable.clauses.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB175850(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

uint64_t sub_1DB293B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73657375616C63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB2BB924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB293B98(uint64_t a1)
{
  v2 = sub_1DB2A0578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB293BD4(uint64_t a1)
{
  v2 = sub_1DB2A0578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB293C54(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = v5[9];
  v43 = v5[8];
  v44 = v11;
  v45 = v5[10];
  v46 = *(v5 + 22);
  v12 = v5[5];
  v39 = v5[4];
  v40 = v12;
  v13 = v5[7];
  v41 = v5[6];
  v42 = v13;
  v14 = v5[1];
  v35 = *v5;
  v36 = v14;
  v15 = v5[3];
  v37 = v5[2];
  v38 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1DB1754EC(&v35, &v23);
  a4(v16);
  sub_1DB2BBA94();
  v31 = v43;
  v32 = v44;
  v33 = v45;
  v34 = v46;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  sub_1DB2A047C();
  sub_1DB2BB8A4();
  v17 = (v20 + 8);
  v21[8] = v31;
  v21[9] = v32;
  v21[10] = v33;
  v22 = v34;
  v21[4] = v27;
  v21[5] = v28;
  v21[6] = v29;
  v21[7] = v30;
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;
  sub_1DB17181C(v21);
  return (*v17)(v10, v8);
}

uint64_t sub_1DB293EA8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB2BBA84();
  if (!v6)
  {
    v12 = v20;
    sub_1DB2A04D0();
    sub_1DB2BB7B4();
    (*(v33 + 8))(v11, v9);
    v13 = v30;
    *(v12 + 128) = v29;
    *(v12 + 144) = v13;
    *(v12 + 160) = v31;
    *(v12 + 176) = v32;
    v14 = v26;
    *(v12 + 64) = v25;
    *(v12 + 80) = v14;
    v15 = v28;
    *(v12 + 96) = v27;
    *(v12 + 112) = v15;
    v16 = v22;
    *v12 = v21;
    *(v12 + 16) = v16;
    v17 = v24;
    *(v12 + 32) = v23;
    *(v12 + 48) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_1DB2940B4(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB175850(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

uint64_t ScalarQuery.clauses.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 22);
  *(a1 + 176) = *(v1 + 22);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_1DB1754EC(v18, v17);
}

__n128 ScalarQuery.clauses.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 144);
  v15[8] = *(v2 + 128);
  v15[9] = v4;
  v15[10] = *(v2 + 160);
  v16 = *(v2 + 176);
  v5 = *(v2 + 80);
  v15[4] = *(v2 + 64);
  v15[5] = v5;
  v6 = *(v2 + 112);
  v15[6] = *(v2 + 96);
  v15[7] = v6;
  v7 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v7;
  v8 = *(v2 + 48);
  v15[2] = *(v2 + 32);
  v15[3] = v8;
  (*(*(a2 - 8) + 8))(v15);
  v9 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v9;
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = *(a1 + 176);
  v10 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v10;
  v11 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v11;
  v12 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v12;
  result = *(a1 + 32);
  v14 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v14;
  return result;
}

double ScalarQuery.init(_:database:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v10 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 32) = 42;
  *(v10 + 40) = 0xE100000000000000;
  *(v10 + 48) = v11;
  *a5 = 0;
  *(a5 + 8) = v10;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = v11;
  result = 0.0;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0;
  *(a5 + 153) = 1;
  *(a5 + 160) = v11;
  *(a5 + 168) = 0;
  *(a5 + 176) = v11;
  return result;
}

uint64_t ScalarQuery.init(query:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 16))(v12, v4, v5);
  v6 = v12[9];
  *(a2 + 128) = v12[8];
  *(a2 + 144) = v6;
  *(a2 + 160) = v12[10];
  *(a2 + 176) = v13;
  v7 = v12[5];
  *(a2 + 64) = v12[4];
  *(a2 + 80) = v7;
  v8 = v12[7];
  *(a2 + 96) = v12[6];
  *(a2 + 112) = v8;
  v9 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v9;
  v10 = v12[3];
  *(a2 + 32) = v12[2];
  *(a2 + 48) = v10;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB2944D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73657375616C63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DB2BB924();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DB29454C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB2944D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DB29457C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB136F1C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DB2945AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB294600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ScalarQuery.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ScalarQuery.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v6 = sub_1DB2BB8C4();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  v9 = v4[9];
  v38 = v4[8];
  v39 = v9;
  v40 = v4[10];
  v41 = *(v4 + 22);
  v10 = v4[5];
  v34 = v4[4];
  v35 = v10;
  v11 = v4[7];
  v36 = v4[6];
  v37 = v11;
  v12 = v4[1];
  v30 = *v4;
  v31 = v12;
  v13 = v4[3];
  v32 = v4[2];
  v33 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB1754EC(&v30, &v18);
  sub_1DB2BBA94();
  v26 = v38;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  sub_1DB2A047C();
  sub_1DB2BB8A4();
  v16[8] = v26;
  v16[9] = v27;
  v16[10] = v28;
  v17 = v29;
  v16[4] = v22;
  v16[5] = v23;
  v16[6] = v24;
  v16[7] = v25;
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v16[3] = v21;
  sub_1DB17181C(v16);
  return (*(v42 + 8))(v8, v6);
}

uint64_t ScalarQuery.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v20 = a3;
  type metadata accessor for ScalarQuery.CodingKeys(255, a2, a4, a5);
  swift_getWitnessTable();
  v7 = sub_1DB2BB7E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA84();
  if (!v5)
  {
    v11 = v20;
    sub_1DB2A04D0();
    sub_1DB2BB7B4();
    (*(v8 + 8))(v10, v7);
    v12 = v18[9];
    *(v11 + 128) = v18[8];
    *(v11 + 144) = v12;
    *(v11 + 160) = v18[10];
    *(v11 + 176) = v19;
    v13 = v18[5];
    *(v11 + 64) = v18[4];
    *(v11 + 80) = v13;
    v14 = v18[7];
    *(v11 + 96) = v18[6];
    *(v11 + 112) = v14;
    v15 = v18[1];
    *v11 = v18[0];
    *(v11 + 16) = v15;
    v16 = v18[3];
    *(v11 + 32) = v18[2];
    *(v11 + 48) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DB294A78(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ScalarQuery.clauses.modify();
  return sub_1DB294AE8;
}

void sub_1DB294AE8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1DB294B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return QueryType.expression.getter(a1, WitnessTable, a2);
}

uint64_t Select.template.getter()
{
  v0 = sub_1DB288124();

  return v0;
}

uint64_t Select.template.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Select.bindings.getter()
{
  sub_1DB243A08();
}

uint64_t Select.bindings.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Select.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1DB294CE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.description.getter(a1, WitnessTable);
}

uint64_t sub_1DB294D44(uint64_t a1)
{
  v2 = sub_1DB2A05E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB294D80(uint64_t a1)
{
  v2 = sub_1DB2A05E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Insert.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292A8, &qword_1DB2CEF58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A05E4();
  sub_1DB2BBA94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CC8, &unk_1DB2C3860);
  sub_1DB1688F0(&qword_1EE13F488, &qword_1ECC27CC8, &unk_1DB2C3860, &unk_1DB2C46D8);
  sub_1DB2BB8A4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Insert.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292B0, &qword_1DB2CEF60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A05E4();
  sub_1DB2BBA84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CC8, &unk_1DB2C3860);
    sub_1DB1688F0(&qword_1EE13EA28, &qword_1ECC27CC8, &unk_1DB2C3860, &unk_1DB2C46B0);
    sub_1DB2BB7B4();
    (*(v5 + 8))(v7, v4);
    *(v31 + 9) = *(v23 + 9);
    v30 = v22;
    v31[0] = v23[0];
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v8 = v17;
    v24 = v16;
    v25 = v17;
    v9 = v21;
    v10 = v23[0];
    v11 = v32;
    v32[6] = v22;
    v11[7] = v10;
    *(v11 + 121) = *(v31 + 9);
    v12 = v27;
    v13 = v28;
    v14 = v24;
    v11[2] = v26;
    v11[3] = v12;
    v11[4] = v13;
    v11[5] = v9;
    *v11 = v14;
    v11[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB295144()
{
  sub_1DB1446A4(v0, v5, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v7)
  {
    v3[6] = v5[6];
    v3[7] = v5[7];
    v4 = v6;
    v3[2] = v5[2];
    v3[3] = v5[3];
    v3[4] = v5[4];
    v3[5] = v5[5];
    v3[0] = v5[0];
    v3[1] = v5[1];
    v1 = sub_1DB1F4E58();
    sub_1DB1F7130(v3);
  }

  else
  {
    v1 = *&v5[0];
  }

  return v1;
}

uint64_t sub_1DB2951EC()
{
  sub_1DB1446A4(v0, v3, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v4)
  {
    sub_1DB1445E0(v3, &qword_1ECC27CC8, &unk_1DB2C3860);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v1 = v3[2];
  }

  return v1;
}

uint64_t sub_1DB295264@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 136) = 0;
  return result;
}

uint64_t sub_1DB29528C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292A8, &qword_1DB2CEF58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A05E4();
  sub_1DB2BBA94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CC8, &unk_1DB2C3860);
  sub_1DB1688F0(&qword_1EE13F488, &qword_1ECC27CC8, &unk_1DB2C3860, &unk_1DB2C46D8);
  sub_1DB2BB8A4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Update.template.getter()
{
  if (*(v0 + 106))
  {
    return sub_1DB1F43B8();
  }

  v2 = *v0;

  return v2;
}

uint64_t Update.bindings.getter()
{
  if (*(v0 + 106))
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }
}

uint64_t Update.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 106) = 0;
  return result;
}

uint64_t sub_1DB2954D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937012071 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB2BB924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB295558(uint64_t a1)
{
  v2 = sub_1DB2A0638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB295594(uint64_t a1)
{
  v2 = sub_1DB2A0638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Update.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292B8, &qword_1DB2CEF68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[5];
  v23 = v1[4];
  v24[0] = v7;
  *(v24 + 11) = *(v1 + 91);
  v8 = v1[1];
  v19 = *v1;
  v20 = v8;
  v9 = v1[3];
  v21 = v1[2];
  v22 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB1446A4(&v19, &v13, &qword_1ECC28398, &qword_1DB2CEF70);
  sub_1DB2A0638();
  sub_1DB2BBA94();
  v17 = v23;
  v18[0] = v24[0];
  *(v18 + 11) = *(v24 + 11);
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28398, &qword_1DB2CEF70);
  sub_1DB1688F0(&qword_1ECC292C8, &qword_1ECC28398, &qword_1DB2CEF70, &unk_1DB2C46D8);
  sub_1DB2BB8A4();
  v11[4] = v17;
  v12[0] = v18[0];
  *(v12 + 11) = *(v18 + 11);
  v11[0] = v13;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  sub_1DB1445E0(v11, &qword_1ECC28398, &qword_1DB2CEF70);
  return (*(v4 + 8))(v6, v3);
}

uint64_t Update.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292D0, &qword_1DB2CEF78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A0638();
  sub_1DB2BBA84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28398, &qword_1DB2CEF70);
    sub_1DB1688F0(&qword_1ECC292D8, &qword_1ECC28398, &qword_1DB2CEF70, &unk_1DB2C46B0);
    sub_1DB2BB7B4();
    (*(v6 + 8))(v8, v5);
    v9 = v14[0];
    a2[4] = v13[4];
    a2[5] = v9;
    *(a2 + 91) = *(v14 + 11);
    v10 = v13[1];
    *a2 = v13[0];
    a2[1] = v10;
    v11 = v13[3];
    a2[2] = v13[2];
    a2[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB2959BC()
{
  if (*(v0 + 106))
  {
    return sub_1DB1F43B8();
  }

  v2 = *v0;

  return v2;
}

uint64_t sub_1DB295A2C()
{
  if (*(v0 + 106))
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }
}

uint64_t sub_1DB295A60@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 106) = 0;
  return result;
}

uint64_t Delete.template.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Delete.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1DB295B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E696B636162 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB2BB924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB295BDC(uint64_t a1)
{
  v2 = sub_1DB2A068C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB295C18(uint64_t a1)
{
  v2 = sub_1DB2A068C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Delete.encode(to:)(void *a1)
{
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292E0, &qword_1DB2CEF80);
  v3 = *(v11[0] - 8);
  MEMORY[0x1EEE9AC00](v11[0]);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A068C();

  sub_1DB2BBA94();
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  sub_1DB1688F0(&qword_1ECC27F40, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v9 = v11[0];
  sub_1DB2BB8A4();

  return (*(v3 + 8))(v5, v9);
}

uint64_t Delete.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292F0, &qword_1DB2CEF88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A068C();
  sub_1DB2BBA84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    sub_1DB1688F0(&qword_1EE13EF40, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    sub_1DB2BB7B4();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11[1];
    *(a2 + 8) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB295FD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

OnDeviceStorageCore::Row_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RowIterator.failableNext()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  v4 = Statement.step()();
  if (!v7)
  {
    if (v4)
    {
      Statement.row.getter(v10);
      sub_1DB255C80(v10[0], v10[1]);
      v9 = v8;

      *v2 = v3;
      v2[1] = v9;
    }

    else
    {
      *v2 = 0;
      v2[1] = 0;
    }
  }

  result.value.values._rawValue = v5;
  result.value.columns._rawValue = v4;
  result.is_nil = v6;
  return result;
}

unint64_t sub_1DB2960C0@<X0>(void *a1@<X8>)
{
  result = RowIterator.failableNext()();
  if (v3)
  {
    sub_1DB15B294(v3);
    result = MEMORY[0x1E1284A10](v3);
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_1DB29611C(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  v126 = swift_allocObject();
  v127 = v4;
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v118 = (v4 + 16);
  *(v126 + 16) = 0;
  v5 = a1[3];
  v6 = a1[4];
  v125 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 16))(v164, v5, v6);
  v7 = v164[1];

  sub_1DB17181C(v164);
  v8 = *(v7 + 16);
  v117 = (v126 + 16);
  swift_beginAccess();
  v119 = v8;
  if (!v8)
  {
    goto LABEL_90;
  }

  v9 = 0;
  v121 = v7 + 32;
  v10 = MEMORY[0x1E69E7CC0];
  v120 = v7;
  while (2)
  {
    if (v9 >= *(v7 + 16))
    {
      goto LABEL_99;
    }

    v123 = v9;
    sub_1DB164980(v121 + 40 * v9, v161);
    v11 = v162;
    v12 = v163;
    __swift_project_boxed_opaque_existential_1(v161, v162);
    (*(v12 + 24))(v159, v11, v12);
    v13 = v159[0];

    v14 = HIBYTE(*(&v13 + 1)) & 0xFLL;
    if ((*(&v13 + 1) & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

      v16 = v10;
      v32 = *(v10 + 16);
      if (v32)
      {
        goto LABEL_34;
      }

LABEL_25:

      v33 = v10;
      if (*(v10 + 16))
      {
        goto LABEL_40;
      }

      goto LABEL_100;
    }

    v15 = 0;
    v16 = v10;
    v17 = 4 * v14;
    v18 = 15;
    do
    {
      while (1)
      {
        v20 = sub_1DB2BAFD4();
        v11 = v21;
        if (v20 == 46 && v21 == 0xE100000000000000)
        {

          goto LABEL_16;
        }

        v22 = sub_1DB2BB924();

        if ((v22 & 1) == 0)
        {
          break;
        }

LABEL_16:
        if (v18 >> 14 != v15)
        {
          if (v15 < v18 >> 14)
          {
            goto LABEL_102;
          }

          v165 = sub_1DB2BB004();
          v24 = v23;
          v26 = v25;
          v11 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1DB157568(0, *(v16 + 2) + 1, 1, v16);
          }

          v28 = v16;
          v29 = *(v16 + 2);
          v30 = v28;
          v31 = *(v28 + 3);
          if (v29 >= v31 >> 1)
          {
            v30 = sub_1DB157568((v31 > 1), v29 + 1, 1, v30);
          }

          *(v30 + 2) = v29 + 1;
          v19 = &v30[32 * v29];
          v16 = v30;
          *(v19 + 4) = v165;
          *(v19 + 5) = v24;
          *(v19 + 6) = v26;
          *(v19 + 7) = v11;
        }

        v18 = sub_1DB2BAEA4();
        v15 = v18 >> 14;
        if (v18 >> 14 == v17)
        {
          goto LABEL_22;
        }
      }

      v15 = sub_1DB2BAEA4() >> 14;
    }

    while (v15 != v17);
    v15 = v18 >> 14;
LABEL_22:
    if (v15 == v17)
    {

      goto LABEL_33;
    }

    if (v17 < v15)
    {
      goto LABEL_103;
    }

    v11 = sub_1DB2BB004();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1DB157568(0, *(v16 + 2) + 1, 1, v16);
    }

    v41 = *(v16 + 2);
    v40 = *(v16 + 3);
    if (v41 >= v40 >> 1)
    {
      v16 = sub_1DB157568((v40 > 1), v41 + 1, 1, v16);
    }

    *(v16 + 2) = v41 + 1;
    v42 = &v16[32 * v41];
    *(v42 + 4) = v11;
    *(v42 + 5) = v35;
    *(v42 + 6) = v37;
    *(v42 + 7) = v39;
LABEL_33:
    v10 = MEMORY[0x1E69E7CC0];
    v32 = *(v16 + 2);
    if (!v32)
    {
      goto LABEL_25;
    }

LABEL_34:
    v128 = v2;
    *&v159[0] = v10;
    sub_1DB138470(0, v32, 0);
    v43 = 0;
    v33 = *&v159[0];
    v44 = (v16 + 56);
    do
    {
      if (v43 >= *(v16 + 2))
      {
        __break(1u);
LABEL_96:

        __swift_destroy_boxed_opaque_existential_1(&v144);
        goto LABEL_93;
      }

      v45 = v16;
      v47 = *(v44 - 3);
      v46 = *(v44 - 2);
      v48 = v33;
      v49 = *(v44 - 1);
      v50 = *v44;

      v51 = v49;
      v33 = v48;
      v11 = MEMORY[0x1E12833E0](v47, v46, v51, v50);
      v53 = v52;

      *&v159[0] = v33;
      v55 = *(v33 + 2);
      v54 = *(v33 + 3);
      if (v55 >= v54 >> 1)
      {
        sub_1DB138470((v54 > 1), v55 + 1, 1);
        v33 = *&v159[0];
      }

      ++v43;
      *(v33 + 2) = v55 + 1;
      v56 = &v33[16 * v55];
      *(v56 + 4) = v11;
      *(v56 + 5) = v53;
      v44 += 4;
      v16 = v45;
    }

    while (v32 != v43);

    v2 = v128;
    v10 = MEMORY[0x1E69E7CC0];
    if (!*(v33 + 2))
    {
      goto LABEL_100;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1DB235700(v33);
      v57 = *(v33 + 2);
      if (v57)
      {
        goto LABEL_42;
      }

      goto LABEL_101;
    }

    v57 = *(v33 + 2);
    if (!v57)
    {
      goto LABEL_101;
    }

LABEL_42:
    v58 = v57 - 1;
    v59 = &v33[16 * v58];
    v61 = *(v59 + 4);
    v60 = *(v59 + 5);
    *(v33 + 2) = v58;
    *&v159[0] = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
    v62 = sub_1DB2BAD24();
    v165 = v63;

    if (v61 == 42 && v60 == 0xE100000000000000)
    {

      goto LABEL_46;
    }

    v64 = sub_1DB2BB924();

    if ((v64 & 1) == 0)
    {

      v96 = v162;
      v97 = v163;
      __swift_project_boxed_opaque_existential_1(v161, v162);
      (*(v97 + 24))(v159, v96, v97);
      v98 = v159[0];

      v99 = *v117;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v130 = *v118;
      v101 = v130;
      v102 = sub_1DB141B30(v98, *(&v98 + 1));
      v104 = *(v101 + 16);
      v105 = (v103 & 1) == 0;
      v106 = __OFADD__(v104, v105);
      v107 = v104 + v105;
      if (!v106)
      {
        v108 = v103;
        if (*(v101 + 24) < v107)
        {
          sub_1DB29D6F0(v107, isUniquelyReferenced_nonNull_native);
          v102 = sub_1DB141B30(v98, *(&v98 + 1));
          if ((v108 & 1) == (v109 & 1))
          {
            v7 = v120;
            if ((v108 & 1) == 0)
            {
              goto LABEL_74;
            }

LABEL_81:
            v113 = v102;

            v110 = v130;
            *(*(v130 + 56) + 8 * v113) = v99;
LABEL_82:
            *v118 = v110;
            swift_endAccess();
            if (!__OFADD__(v99, 1))
            {
              *v117 = v99 + 1;
              __swift_destroy_boxed_opaque_existential_1(v161);
              goto LABEL_84;
            }

LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
          }

          result = sub_1DB2BB984();
          __break(1u);
          return result;
        }

        v7 = v120;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v103)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v114 = v102;
          sub_1DB29E9DC();
          v7 = v120;
          v102 = v114;
          if (v108)
          {
            goto LABEL_81;
          }
        }

LABEL_74:
        v110 = v130;
        *(v130 + 8 * (v102 >> 6) + 64) |= 1 << v102;
        *(v110[6] + 16 * v102) = v98;
        *(v110[7] + 8 * v102) = v99;
        v111 = v110[2];
        v106 = __OFADD__(v111, 1);
        v112 = v111 + 1;
        if (!v106)
        {
          v110[2] = v112;
          goto LABEL_82;
        }

        goto LABEL_106;
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_46:
    sub_1DB164980(v125, v156);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1DB2BCC40;
    *(v65 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(v65 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    *(v65 + 32) = 42;
    *(v65 + 40) = 0xE100000000000000;
    *(v65 + 48) = v10;
    v66 = v157;
    v67 = v158;
    __swift_mutable_project_boxed_opaque_existential_1(v156, v157);
    v68 = (*(v67 + 32))(&v144, v66, v67);
    *v69 = 0;
    *(v69 + 8) = v65;

    v68(&v144, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC0, &unk_1DB2BFDA0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1DB2BCC40;
    v122 = v70;
    sub_1DB164980(v156, v70 + 32);
    v11 = v125[3];
    v71 = v125[4];
    __swift_project_boxed_opaque_existential_1(v125, v11);
    (*(v71 + 16))(&v144, v11, v71);
    v159[8] = v152;
    v159[9] = v153;
    v159[10] = v154;
    v160 = v155;
    v159[4] = v148;
    v159[5] = v149;
    v159[6] = v150;
    v159[7] = v151;
    v159[0] = v144;
    v159[1] = v145;
    v159[2] = v146;
    v159[3] = v147;
    v72 = v148;

    sub_1DB17181C(v159);
    v73 = *(v72 + 16);
    if (v73)
    {
      v129 = v2;
      v143 = v10;
      sub_1DB1385C0(0, v73, 0);
      v10 = v143;
      v11 = v72 + 32;
      do
      {
        sub_1DB175548(v11, &v130);
        sub_1DB164980(&v130 + 8, &v142);
        sub_1DB1755A4(&v130);
        v143 = v10;
        v75 = *(v10 + 16);
        v74 = *(v10 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_1DB1385C0((v74 > 1), v75 + 1, 1);
          v10 = v143;
        }

        *(v10 + 16) = v75 + 1;
        sub_1DB1355D0(&v142, v10 + 40 * v75 + 32);
        v11 += 88;
        --v73;
      }

      while (v73);

      v2 = v129;
    }

    else
    {
    }

    *&v144 = v122;
    sub_1DB141618(v10);
    v76 = v144;
    v77 = v165;
    v78 = HIBYTE(v165) & 0xF;
    if ((v165 & 0x2000000000000000) == 0)
    {
      v78 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (!v78)
    {

      v90 = *(v76 + 16);
      if (!v90)
      {
LABEL_69:

        goto LABEL_78;
      }

      v91 = 0;
      v92 = v76 + 32;
      while (v91 < *(v76 + 16))
      {
        sub_1DB164980(v92, &v142);
        v93 = v125[3];
        v94 = v125[4];
        __swift_project_boxed_opaque_existential_1(v125, v93);
        (*(v94 + 16))(&v130, v93, v94);
        v152 = v138;
        v153 = v139;
        v154 = v140;
        v155 = v141;
        v148 = v134;
        v149 = v135;
        v150 = v136;
        v151 = v137;
        v144 = v130;
        v145 = v131;
        v146 = v132;
        v147 = v133;
        v11 = v134;

        sub_1DB17181C(&v144);
        v95 = *(v11 + 16);

        sub_1DB297AB4(&v142, v124, v95 != 0, v127, v126);
        if (v2)
        {
          __swift_destroy_boxed_opaque_existential_1(&v142);

          goto LABEL_93;
        }

        ++v91;
        __swift_destroy_boxed_opaque_existential_1(&v142);
        v92 += 40;
        if (v90 == v91)
        {
          goto LABEL_69;
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v79 = *(v144 + 16);
    if (v79)
    {
      v80 = 0;
      v81 = v144 + 32;
      while (1)
      {
        if (v80 >= *(v76 + 16))
        {
          __break(1u);
          goto LABEL_98;
        }

        sub_1DB164980(v81, &v144);
        v82 = *(&v145 + 1);
        v83 = v146;
        __swift_project_boxed_opaque_existential_1(&v144, *(&v145 + 1));
        sub_1DB288D3C(0, v82, v83, &v130);
        v84 = *(&v131 + 1);
        v85 = v132;
        __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
        v86 = *(v85 + 24);
        v87 = v85;
        v77 = v165;
        v86(&v142, v84, v87);
        v11 = *(&v142 + 1);
        v88 = v142;

        if (__PAIR128__(v11, v88) == __PAIR128__(v77, v62))
        {
          break;
        }

        v89 = sub_1DB2BB924();

        __swift_destroy_boxed_opaque_existential_1(&v130);
        if (v89)
        {
          goto LABEL_76;
        }

        ++v80;
        __swift_destroy_boxed_opaque_existential_1(&v144);
        v81 += 40;
        if (v79 == v80)
        {
          goto LABEL_91;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v130);
LABEL_76:

      sub_1DB297AB4(&v144, v124, 1, v127, v126);
      if (v2)
      {
        goto LABEL_96;
      }

      __swift_destroy_boxed_opaque_existential_1(&v144);
LABEL_78:
      __swift_destroy_boxed_opaque_existential_1(v156);
      __swift_destroy_boxed_opaque_existential_1(v161);
      v7 = v120;
LABEL_84:
      v9 = v123 + 1;
      v10 = MEMORY[0x1E69E7CC0];
      if (v123 + 1 == v119)
      {
LABEL_90:

        swift_beginAccess();
        v11 = *(v127 + 16);

        return v11;
      }

      continue;
    }

    break;
  }

LABEL_91:

  sub_1DB1F88FC();
  swift_allocError();
  *v115 = v62;
  *(v115 + 8) = v77;
  *(v115 + 16) = 0;
  *(v115 + 24) = 0;
  swift_willThrow();
LABEL_93:
  __swift_destroy_boxed_opaque_existential_1(v156);
  __swift_destroy_boxed_opaque_existential_1(v161);

  return v11;
}

uint64_t sub_1DB296F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28FF0, &qword_1DB2CE1F0);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DB26F4BC;
  *(v7 + 24) = v6;
  *a3 = v7;
}

uint64_t sub_1DB296FF8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = Statement.step()();
  if (v5)
  {
    sub_1DB15B294(v5);
    result = MEMORY[0x1E1284A10](v5);
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  Statement.row.getter(v8);
  sub_1DB255C80(v8[0], v8[1]);
  v7 = v6;

  *a2 = a1;
  a2[1] = v7;
}

uint64_t Connection.prepareRowIterator(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(*(v5 + 8) + 24))(v13, v6);
  v7 = v13[0];
  v8 = v13[1];
  v9 = v13[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v10, v7, v8);
  if (v2)
  {
  }

  else
  {
    v12 = sub_1DB255E8C(v9);

    result = sub_1DB29611C(a1);
    *a2 = v12;
    a2[1] = result;
  }

  return result;
}

void sub_1DB2972D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v9, a1, a2);
  if (!v4)
  {
    v10 = sub_1DB255E8C(a3);

    sub_1DB254F54();
    *a4 = v10;
    a4[1] = v11;
  }
}

char *sub_1DB297384@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 1);
  v117 = *result;
  v4 = *(v3 + 16);
  if (v4)
  {
    v51 = a2;
    result = (v3 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v53 = v5;
      v54 = v4;
      v52 = result;
      sub_1DB175700(result, v113);
      sub_1DB164980(&v116, v88);
      __swift_project_boxed_opaque_existential_1(v88, v89);
      DynamicType = swift_getDynamicType();
      v7 = v90;
      v8 = v89;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      (*(v7 + 16))(&v70, v8, v7);
      v91[8] = v78;
      v91[9] = v79;
      v91[10] = v80;
      v92 = v81;
      v91[4] = v74;
      v91[5] = v75;
      v91[6] = v76;
      v91[7] = v77;
      v91[0] = v70;
      v91[1] = v71;
      v91[2] = v72;
      v91[3] = v73;
      v9 = v71;

      sub_1DB17181C(v91);

      v10 = v89;
      v11 = v90;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      (*(v11 + 16))(&v55, v10, v11);
      v93[8] = v63;
      v93[9] = v64;
      v93[10] = v65;
      v94 = v66;
      v93[4] = v59;
      v93[5] = v60;
      v93[6] = v61;
      v93[7] = v62;
      v93[0] = v55;
      v93[1] = v56;
      v93[2] = v57;
      v93[3] = v58;
      v12 = v58;

      sub_1DB17181C(v93);

      v13 = *(v7 + 40);
      v86 = DynamicType;
      v87 = v7;
      __swift_allocate_boxed_opaque_existential_0(v85);
      v13(v9, *(&v9 + 1), v12, *(&v12 + 1), DynamicType, v7);
      v14 = v89;
      v15 = v90;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      (*(v15 + 16))(&v70, v14, v15);
      v95[8] = v78;
      v95[9] = v79;
      v95[10] = v80;
      v96 = v81;
      v95[4] = v74;
      v95[5] = v75;
      v95[6] = v76;
      v95[7] = v77;
      v95[0] = v70;
      v95[1] = v71;
      v95[2] = v72;
      v95[3] = v73;
      LOBYTE(v13) = v70;
      v16 = *(&v70 + 1);

      sub_1DB17181C(v95);
      v17 = v86;
      v18 = v87;
      __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
      v19 = (*(v18 + 32))(&v55, v17, v18);
      *v20 = v13;
      *(v20 + 8) = v16;

      v19(&v55, 0);
      v21 = v89;
      v22 = v90;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      (*(v22 + 16))(&v70, v21, v22);
      v97[8] = v78;
      v97[9] = v79;
      v97[10] = v80;
      v98 = v81;
      v97[4] = v74;
      v97[5] = v75;
      v97[6] = v76;
      v97[7] = v77;
      v97[0] = v70;
      v97[1] = v71;
      v97[2] = v72;
      v97[3] = v73;
      v23 = v74;

      sub_1DB17181C(v97);
      v24 = v86;
      v25 = v87;
      __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
      v26 = (*(v25 + 32))(&v55, v24, v25);
      *(v27 + 64) = v23;

      v26(&v55, 0);
      v28 = v89;
      v29 = v90;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      (*(v29 + 16))(&v70, v28, v29);
      v99[8] = v78;
      v99[9] = v79;
      v99[10] = v80;
      v100 = v81;
      v99[4] = v74;
      v99[5] = v75;
      v99[6] = v76;
      v99[7] = v77;
      v99[0] = v70;
      v99[1] = v71;
      v99[2] = v72;
      v99[3] = v73;
      LOBYTE(v26) = BYTE8(v80);
      v30 = v81;

      sub_1DB17181C(v99);
      LOBYTE(v101) = v26;
      *(&v101 + 1) = v30;
      sub_1DB297384(&v101, &v55);

      LOBYTE(v13) = v55;
      v31 = *(&v55 + 1);
      v32 = v86;
      v33 = v87;
      __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
      v34 = (*(v33 + 32))(&v70, v32, v33);
      *(v35 + 168) = v13;
      v5 = v53;
      *(v35 + 176) = v31;

      v34(&v70, 0);
      v109 = v113[8];
      v110 = v113[9];
      v111 = v113[10];
      v112 = v114;
      v105 = v113[4];
      v106 = v113[5];
      v107 = v113[6];
      v108 = v113[7];
      v101 = v113[0];
      v102 = v113[1];
      v103 = v113[2];
      v104 = v113[3];
      sub_1DB164980(v85, &v84);
      v78 = v109;
      v79 = v110;
      v80 = v111;
      v81 = v112;
      v74 = v105;
      v75 = v106;
      v76 = v107;
      v77 = v108;
      v70 = v101;
      v71 = v102;
      v72 = v103;
      v73 = v104;
      v83 = 2;
      v36 = v115;
      sub_1DB175954(&v101, &v55);

      sub_1DB17575C(v113);
      v82 = v36;
      sub_1DB175700(&v70, &v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1DB158778(0, *(v53 + 2) + 1, 1, v53);
      }

      v38 = *(v5 + 2);
      v37 = *(v5 + 3);
      if (v38 >= v37 >> 1)
      {
        v5 = sub_1DB158778((v37 > 1), v38 + 1, 1, v5);
      }

      *(v5 + 2) = v38 + 1;
      v39 = &v5[240 * v38];
      v40 = v55;
      v41 = v57;
      *(v39 + 3) = v56;
      *(v39 + 4) = v41;
      *(v39 + 2) = v40;
      v42 = v58;
      v43 = v59;
      v44 = v61;
      *(v39 + 7) = v60;
      *(v39 + 8) = v44;
      *(v39 + 5) = v42;
      *(v39 + 6) = v43;
      v45 = v62;
      v46 = v63;
      v47 = v65;
      *(v39 + 11) = v64;
      *(v39 + 12) = v47;
      *(v39 + 9) = v45;
      *(v39 + 10) = v46;
      v48 = v66;
      v49 = v67;
      v50 = v69;
      *(v39 + 15) = v68;
      *(v39 + 16) = v50;
      *(v39 + 13) = v48;
      *(v39 + 14) = v49;
      sub_1DB17575C(&v70);
      __swift_destroy_boxed_opaque_existential_1(v85);
      __swift_destroy_boxed_opaque_existential_1(v88);
      result = (v52 + 240);
      v4 = v54 - 1;
    }

    while (v54 != 1);
    v2 = v117;
    a2 = v51;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1DB297AB4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v88 = a5;
  v89 = a4;
  v82 = a3;
  v86 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(v98, v6, v7);
  v83 = v98[3];
  v84 = v98[2];

  sub_1DB17181C(v98);

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 16))(v99, v8, v9);
  v10 = v99[6];
  v11 = v99[7];

  sub_1DB17181C(v99);

  v12 = *(v7 + 40);
  v96 = DynamicType;
  v97 = v7;
  __swift_allocate_boxed_opaque_existential_0(v95);
  v12(v84, v83, v10, v11, DynamicType, v7);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 16))(v100, v13, v14);
  v15 = v100[0];
  v16 = v100[1];

  sub_1DB17181C(v100);
  v17 = v96;
  v18 = v97;
  __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
  v19 = (*(v18 + 32))(&v92, v17, v18);
  *v20 = v15;
  *(v20 + 8) = v16;

  v19(&v92, 0);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v22 + 16))(v101, v21, v22);
  v23 = v102;
  v24 = v103;

  sub_1DB17181C(v101);
  LOBYTE(v92) = v23;
  v93 = v24;
  sub_1DB297384(&v92, v90);

  LOBYTE(v12) = v90[0];
  v25 = v91;
  v26 = v96;
  v27 = v97;
  __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
  v28 = (*(v27 + 32))(&v92, v26, v27);
  *(v29 + 168) = v12;
  *(v29 + 176) = v25;

  v28(&v92, 0);
  v31 = v96;
  v30 = v97;
  __swift_project_boxed_opaque_existential_1(v95, v96);
  (*(*(v30 + 8) + 24))(&v92, v31);
  v32 = v92;
  v33 = v93;
  v34 = v94;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v35, v32, v33);
  if (v87)
  {

    return __swift_destroy_boxed_opaque_existential_1(v95);
  }

  DynamicType = 0;
  v37 = a1;
  sub_1DB255E8C(v34);

  Statement.columnNames.getter();
  v39 = v38;

  v40 = *(v39 + 16);
  if (v40)
  {
    v92 = MEMORY[0x1E69E7CC0];
    sub_1DB138470(0, v40, 0);
    v41 = v92;
    v87 = v39;
    v42 = (v39 + 40);
    v43 = v37;
    do
    {
      v45 = *(v42 - 1);
      v44 = *v42;

      v46 = sub_1DB2B995C(34, 0xE100000000000000, v45, v44);
      v48 = v47;

      v92 = v41;
      v50 = *(v41 + 16);
      v49 = *(v41 + 24);
      v51 = v41;
      if (v50 >= v49 >> 1)
      {
        sub_1DB138470((v49 > 1), v50 + 1, 1);
        v51 = v92;
      }

      *(v51 + 16) = v50 + 1;
      v52 = v51 + 16 * v50;
      *(v52 + 32) = v46;
      *(v52 + 40) = v48;
      v42 += 2;
      --v40;
      v41 = v51;
    }

    while (v40);

    if ((v82 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v41 = MEMORY[0x1E69E7CC0];
    v43 = v37;
    if ((v82 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  MEMORY[0x1EEE9AC00](v53);
  v81[2] = v43;
  v54 = DynamicType;
  v55 = sub_1DB2037FC(sub_1DB2A2F2C, v81, v41);
  DynamicType = v54;

  v41 = v55;
LABEL_10:
  v56 = v89;
  v87 = *(v41 + 16);
  if (!v87)
  {
LABEL_25:

    return __swift_destroy_boxed_opaque_existential_1(v95);
  }

  v57 = v88;
  swift_beginAccess();
  swift_beginAccess();
  v58 = 0;
  v59 = (v41 + 40);
  v86 = v41;
  while (v58 < *(v41 + 16))
  {
    v61 = *(v59 - 1);
    v60 = *v59;
    v62 = *(v57 + 16);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(v56 + 16);
    v64 = v104;
    *(v56 + 16) = 0x8000000000000000;
    v65 = sub_1DB141B30(v61, v60);
    v67 = v64[2];
    v68 = (v66 & 1) == 0;
    v69 = __OFADD__(v67, v68);
    v70 = v67 + v68;
    if (v69)
    {
      goto LABEL_29;
    }

    v71 = v66;
    if (v64[3] < v70)
    {
      sub_1DB29D6F0(v70, isUniquelyReferenced_nonNull_native);
      v65 = sub_1DB141B30(v61, v60);
      if ((v71 & 1) != (v72 & 1))
      {
        goto LABEL_32;
      }

LABEL_18:
      if (v71)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v75 = v65;
    sub_1DB29E9DC();
    v65 = v75;
    if (v71)
    {
LABEL_19:
      v73 = v65;

      v74 = v104;
      *(v104[7] + 8 * v73) = v62;
      goto LABEL_23;
    }

LABEL_21:
    v74 = v104;
    v104[(v65 >> 6) + 8] |= 1 << v65;
    v76 = (v74[6] + 16 * v65);
    *v76 = v61;
    v76[1] = v60;
    *(v74[7] + 8 * v65) = v62;
    v77 = v74[2];
    v69 = __OFADD__(v77, 1);
    v78 = v77 + 1;
    if (v69)
    {
      goto LABEL_31;
    }

    v74[2] = v78;
LABEL_23:
    v56 = v89;
    *(v89 + 16) = v74;
    swift_endAccess();
    v57 = v88;
    v79 = *(v88 + 16);
    v69 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    v41 = v86;
    if (v69)
    {
      goto LABEL_30;
    }

    ++v58;
    *(v88 + 16) = v80;
    v59 += 2;
    if (v87 == v58)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1DB2BB984();
  __break(1u);
  return result;
}

uint64_t sub_1DB2981E4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  sub_1DB288D3C(0, v6, v7, v15);
  v8 = v16;
  v9 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v9 + 24))(v14, v8, v9);
  v10 = v14[0];
  v11 = v14[1];

  v18 = v10;
  v19 = v11;
  __swift_destroy_boxed_opaque_existential_1(v15);
  MEMORY[0x1E1283490](46, 0xE100000000000000);
  result = MEMORY[0x1E1283490](v4, v5);
  v13 = v19;
  *a3 = v18;
  a3[1] = v13;
  return result;
}

uint64_t Connection.scalar<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 128);
  v10 = *(a1 + 160);
  v23[9] = *(a1 + 144);
  v23[10] = v10;
  v11 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v11;
  v12 = *(a1 + 112);
  v23[6] = *(a1 + 96);
  v24 = *(a1 + 176);
  v23[7] = v12;
  v23[8] = v9;
  v13 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v13;
  v14 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v14;
  v15 = type metadata accessor for ScalarQuery(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  QueryType.expression.getter(v15, WitnessTable, v22);
  v17 = v22[0];
  v18 = v22[1];
  v19 = v22[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v20, v17, v18);
  if (v5)
  {
  }

  else
  {
    sub_1DB255E8C(v19);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], v23);

    sub_1DB2BA144(v23, a2, a3, a5);
    return sub_1DB1445E0(v23, &qword_1ECC26E28, &unk_1DB2C2D70);
  }
}

uint64_t Connection.scalar<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v38 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = sub_1DB2BB364();
  v37 = *(v36 - 8);
  v8 = MEMORY[0x1EEE9AC00](v36);
  v10 = &v35 - v9;
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = *(a1 + 128);
  v14 = *(a1 + 160);
  v41[9] = *(a1 + 144);
  v41[10] = v14;
  v15 = *(a1 + 80);
  v41[4] = *(a1 + 64);
  v41[5] = v15;
  v16 = *(a1 + 112);
  v41[6] = *(a1 + 96);
  v42 = *(a1 + 176);
  v41[7] = v16;
  v41[8] = v13;
  v17 = *(a1 + 16);
  v41[0] = *a1;
  v41[1] = v17;
  v18 = *(a1 + 48);
  v41[2] = *(a1 + 32);
  v41[3] = v18;
  v19 = sub_1DB2BB364();
  v22 = type metadata accessor for ScalarQuery(0, v19, v20, v21);
  WitnessTable = swift_getWitnessTable();
  QueryType.expression.getter(v22, WitnessTable, v40);
  v24 = v40[0];
  v25 = v40[1];
  v26 = v40[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v27, v24, v25);
  if (v4)
  {
  }

  else
  {
    v35 = a2;
    v29 = v43;
    sub_1DB255E8C(v26);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], v41);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    v30 = swift_dynamicCast();
    v31 = *(v29 + 56);
    if (v30)
    {
      v31(v10, 0, 1, AssociatedTypeWitness);
      (*(v29 + 32))(v12, v10, AssociatedTypeWitness);
      v32 = v39;
      (*(v38 + 48))(v12, v35, v38);
      (*(v29 + 8))(v12, AssociatedTypeWitness);
      v33 = swift_getAssociatedTypeWitness();
      v34 = 0;
    }

    else
    {
      v34 = 1;
      v31(v10, 1, 1, AssociatedTypeWitness);
      (*(v37 + 8))(v10, v36);
      v33 = swift_getAssociatedTypeWitness();
      v32 = v39;
    }

    return (*(*(v33 - 8) + 56))(v32, v34, 1);
  }
}

uint64_t Connection.scalar<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *a1;
  v17 = *(a1 + 1);
  v9 = type metadata accessor for Select(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  ExpressionType.expression.getter(v9, WitnessTable, v18);
  v11 = v18[0];
  v12 = v18[1];
  v13 = v18[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v14, v11, v12);
  if (v5)
  {
  }

  else
  {
    sub_1DB255E8C(v13);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], &v16);

    sub_1DB2BA144(&v16, a2, a3, a5);
    return sub_1DB1445E0(&v16, &qword_1ECC26E28, &unk_1DB2C2D70);
  }
}

uint64_t Connection.scalar<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v34 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_1DB2BB364();
  v33 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v10 = &v31 - v9;
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v37 = *a1;
  v38 = *(a1 + 1);
  v13 = sub_1DB2BB364();
  v16 = type metadata accessor for Select(0, v13, v14, v15);
  WitnessTable = swift_getWitnessTable();
  ExpressionType.expression.getter(v16, WitnessTable, v39);
  v18 = v39[0];
  v19 = v39[1];
  v20 = v39[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v21, v18, v19);
  if (v4)
  {
  }

  else
  {
    v31 = v12;
    v32 = a2;
    v23 = v40;
    v24 = v36;
    sub_1DB255E8C(v20);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], &v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    v25 = swift_dynamicCast();
    v26 = *(v24 + 56);
    if (v25)
    {
      v26(v10, 0, 1, AssociatedTypeWitness);
      v27 = v31;
      (*(v24 + 32))(v31, v10, AssociatedTypeWitness);
      v28 = v35;
      (*(v34 + 48))(v27, v32, v34);
      (*(v24 + 8))(v27, AssociatedTypeWitness);
      v29 = swift_getAssociatedTypeWitness();
      v30 = 0;
    }

    else
    {
      v30 = 1;
      v26(v10, 1, 1, AssociatedTypeWitness);
      (*(v33 + 8))(v10, v23);
      v29 = swift_getAssociatedTypeWitness();
      v28 = v35;
    }

    return (*(*(v29 - 8) + 56))(v28, v30, 1);
  }
}

uint64_t Connection.pluck(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(v24, v7, v8);
  sub_1DB17181C(v24);
  if (v26)
  {
    v9 = 0;
  }

  else
  {
    v9 = v24[18];
  }

  v10 = v26 | v25;
  v23[3] = v5;
  v23[4] = v6;
  __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v5 - 8) + 16))();
  v11 = (*(v6 + 32))(&v27, v5, v6);
  *(v12 + 136) = 1;
  *(v12 + 144) = v9;
  *(v12 + 152) = v10 & 1;
  *(v12 + 153) = 0;
  v11(&v27, 0);
  (*(*(v6 + 8) + 24))(&v27, v5);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_1DB253534(v16, v13, v14);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_1DB255E8C(v15);

    v18 = sub_1DB29611C(v23);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v19 = Statement.step()();
    if (v20)
    {
    }

    else
    {
      if (v19)
      {
        Statement.row.getter(&v27);
        sub_1DB255C80(v27, v28);
        v22 = v21;
      }

      else
      {

        v18 = 0;
        v22 = 0;
      }

      *a2 = v18;
      a2[1] = v22;
    }
  }

  return result;
}

uint64_t Connection.pluck(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for Statement();
  swift_initStackObject();

  result = sub_1DB253534(v9, a1, a2);
  if (!v4)
  {
    sub_1DB255E8C(a3);

    sub_1DB254F54();
    v12 = v11;
    v13 = Statement.step()();
    if (v14)
    {
    }

    else
    {
      if (v13)
      {
        Statement.row.getter(v17);
        sub_1DB255C80(v17[0], v17[1]);
        v16 = v15;
      }

      else
      {

        v12 = 0;
        v16 = 0;
      }

      *a4 = v12;
      a4[1] = v16;
    }
  }

  return result;
}

sqlite3_int64 Connection.run(_:)(uint64_t a1)
{
  sub_1DB1446A4(a1, &v15, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v24)
  {
    v13[6] = v21;
    v13[7] = v22;
    v14 = v23;
    v13[2] = v17;
    v13[3] = v18;
    v13[4] = v19;
    v13[5] = v20;
    v13[0] = v15;
    v13[1] = v16;
    v4 = sub_1DB1F4E58();
    v6 = v5;
    sub_1DB1F7130(v13);
  }

  else
  {
    v6 = *(&v15 + 1);
    v4 = v15;
  }

  sub_1DB1446A4(a1, &v15, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v24)
  {
    v7 = sub_1DB1445E0(&v15, &qword_1ECC27CC8, &unk_1DB2C3860);
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = v16;
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1DB143044();
  if (qword_1EE13F098 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((BYTE8(v15) & 1) == 0 && v15 == v1)
  {
    type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v9, v4, v6);
    if (!v2)
    {
      sub_1DB255E8C(v8);

      Statement.run(_:)(MEMORY[0x1E69E7CC0]);

      v10 = *(v1 + 16);
      os_unfair_lock_lock((v10 + 24));
      insert_rowid = sqlite3_last_insert_rowid(*(v10 + 16));
      os_unfair_lock_unlock((v10 + 24));

      return insert_rowid;
    }

    goto LABEL_14;
  }

  sub_1DB2BB2C4(v13);
  if (v2)
  {
LABEL_14:
  }

  return *&v13[0];
}

void sub_1DB2995A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, sqlite3_int64 *a5@<X8>)
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v11, a2, a3);
  if (!v5)
  {
    sub_1DB255E8C(a4);

    Statement.run(_:)(MEMORY[0x1E69E7CC0]);

    v12 = *(a1 + 16);
    os_unfair_lock_lock((v12 + 24));
    insert_rowid = sqlite3_last_insert_rowid(*(v12 + 16));
    os_unfair_lock_unlock((v12 + 24));
    *a5 = insert_rowid;
  }
}

uint64_t Connection.run(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (*(a1 + 106))
  {
    v18 = *(a1 + 56);
    v19 = *(a1 + 72);
    v20 = *(a1 + 88);
    v21 = *(a1 + 104);
    v16 = *(a1 + 24);
    v17 = *(a1 + 40);
    v15[1] = v5;
    v15[2] = v4;
    v15[3] = v6;
    v7 = sub_1DB1F43B8();
    v5 = v7;
    v4 = v8;
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1DB143044();
  if (qword_1EE13F098 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((v14 & 1) != 0 || v13 != v1)
  {
    v9 = *(v1 + 120);
    sub_1DB2BB2C4(v15);
    if (!v2)
    {

      return v15[0];
    }

    goto LABEL_11;
  }

  type metadata accessor for Statement();
  v9 = swift_allocObject();

  sub_1DB253534(v10, v5, v4);
  if (v2)
  {
LABEL_11:

    return v9;
  }

  sub_1DB255E8C(v6);

  Statement.run(_:)(MEMORY[0x1E69E7CC0]);

  v12 = *(v3 + 16);
  os_unfair_lock_lock((v12 + 24));
  v9 = sqlite3_changes(*(v12 + 16));
  os_unfair_lock_unlock((v12 + 24));

  return v9;
}

uint64_t Connection.run(_:)(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  sub_1DB143044();
  v8 = qword_1EE13F098;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((v14 & 1) != 0 || v13 != v1)
  {
    sub_1DB2BB2C4(&v15);
    v9 = v3;

    if (!v3)
    {
      return v15;
    }
  }

  else
  {
    type metadata accessor for Statement();
    v9 = swift_allocObject();

    sub_1DB253534(v10, v6, v5);
    if (!v3)
    {
      sub_1DB255E8C(v7);

      Statement.run(_:)(MEMORY[0x1E69E7CC0]);

      v12 = *(v4 + 16);
      os_unfair_lock_lock((v12 + 24));
      v9 = sqlite3_changes(*(v12 + 16));
      os_unfair_lock_unlock((v12 + 24));
    }
  }

  return v9;
}

void sub_1DB299B48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v11, a2, a3);
  if (!v5)
  {
    sub_1DB255E8C(a4);

    Statement.run(_:)(MEMORY[0x1E69E7CC0]);

    v12 = *(a1 + 16);
    os_unfair_lock_lock((v12 + 24));
    v13 = sqlite3_changes(*(v12 + 16));
    os_unfair_lock_unlock((v12 + 24));
    *a5 = v13;
  }
}

uint64_t Row.columnNames.getter()
{
  v1 = *v0;

  v2 = sub_1DB2A0124(v1);

  return v2;
}

uint64_t sub_1DB299CB4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v26 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1DB2BB364();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v26 - v18;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v28 = result;
  sub_1DB1446A4(a2 + 40 * a1 + 32, v31, &qword_1ECC26E28, &unk_1DB2C2D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v15, 0, 1, v10);
    (*(v16 + 32))(v19, v15, v10);
    v22 = v32;
    (*(a4 + 48))(v19, a3, a4);
    if (v22)
    {
      return (*(v16 + 8))(v19, v10);
    }

    else
    {
      (*(v16 + 8))(v19, v10);
      v23 = v30;
      if (swift_dynamicCast())
      {
        v24 = v23;
        v25 = 0;
      }

      else
      {
        v24 = v23;
        v25 = 1;
      }

      return (*(*(a3 - 8) + 56))(v24, v25, 1, a3);
    }
  }

  else
  {
    v21(v15, 1, 1, v10);
    (*(v12 + 8))(v15, v28);
    return (*(*(a3 - 8) + 56))(v30, 1, 1, a3);
  }
}

uint64_t sub_1DB29A06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1E1283490](a3, a4);
  v4 = sub_1DB2BAF94();

  return v4 & 1;
}

uint64_t sub_1DB29A0E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  result = sub_1DB2BB464();
  v7 = 1 << *(a3 + 32);
  if (result == v7)
  {
    return 0;
  }

  else
  {
    v9 = a3;
    v8 = result;
    v28 = a3;
    while ((v8 & 0x8000000000000000) == 0 && v8 < v7)
    {
      v11 = v8 >> 6;
      if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      v12 = v5;
      v13 = *(v9 + 36);
      v14 = (*(v9 + 48) + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v9 + 56) + 8 * v8);
      v27[0] = v15;
      v27[1] = v16;
      v27[2] = v17;

      v18 = a1(v27);

      if (v3 || (v18 & 1) != 0)
      {
        return v8;
      }

      v9 = v28;
      v10 = 1 << *(v28 + 32);
      if (v8 >= v10)
      {
        goto LABEL_26;
      }

      v19 = *(v12 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_27;
      }

      if (v13 != *(v28 + 36))
      {
        goto LABEL_28;
      }

      v5 = v12;
      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (a3 + 72 + 8 * v11);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1DB25CF78(v8, v13, 0);
            v9 = v28;
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_5;
          }
        }

        result = sub_1DB25CF78(v8, v13, 0);
        v9 = v28;
      }

LABEL_5:
      v7 = 1 << *(v9 + 32);
      v8 = v10;
      v3 = 0;
      if (v10 == v7)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB29A320(uint64_t (*a1)(void *))
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v28 = *v1;
  result = sub_1DB27C01C(*v1, v3, v4);
  if (v4 & 1) != 0 || (v7)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  if (v3 != v6)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = v28;
  v25 = v5;
  v26 = v6;
  while (v9 != v5)
  {
    if (v9 < v28)
    {
      goto LABEL_28;
    }

    if (v9 >= v5)
    {
      goto LABEL_29;
    }

    if (v9 < 0)
    {
      goto LABEL_30;
    }

    v11 = *(v1 + 48);
    if (v9 >= 1 << *(v11 + 32))
    {
      goto LABEL_30;
    }

    v30 = v3;
    v12 = v9 >> 6;
    if ((*(v11 + 64 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_31;
    }

    if (*(v11 + 36) != v6)
    {
      goto LABEL_32;
    }

    v13 = (*(v11 + 48) + 16 * v9);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v11 + 56) + 8 * v9);
    v29[0] = v14;
    v29[1] = v15;
    v29[2] = v16;

    v17 = a1(v29);

    if (v2 || (v17 & 1) != 0)
    {
      return v9;
    }

    v10 = 1 << *(v11 + 32);
    if (v9 >= v10)
    {
      goto LABEL_33;
    }

    v18 = *(v11 + 64 + 8 * v12);
    if ((v18 & (1 << v9)) == 0)
    {
      goto LABEL_34;
    }

    LODWORD(v6) = v26;
    if (*(v11 + 36) != v26)
    {
      goto LABEL_35;
    }

    v19 = v18 & (-2 << (v9 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (v11 + 8 * v12 + 72);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1DB25CF78(v9, v30, 0);
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_6;
        }
      }

      result = sub_1DB25CF78(v9, v30, 0);
    }

LABEL_6:
    v3 = *(v11 + 36);
    v9 = v10;
    v5 = v25;
    if (v3 != v26)
    {
      goto LABEL_27;
    }
  }

  return 0;
}

void *sub_1DB29A590(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t Row.json.getter()
{
  v2 = *v0;
  v1 = v0[1];

  sub_1DB2A0E64(v2, v2, v1);
  v4 = v3;

  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29300, &qword_1DB2CEFA0);
    v5 = sub_1DB2BB6C4();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v7 = v5;
  sub_1DB29FD44(v4, 1, &v7);
  return v7;
}

uint64_t *sub_1DB29A6F0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= *(a2 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = *result;
  v5 = result[1];
  sub_1DB1446A4(a2 + 40 * v4 + 32, &v22, &qword_1ECC26E28, &unk_1DB2C2D70);
  if (v24)
  {
    sub_1DB1355D0(&v22, v28);
    sub_1DB164980(v28, &v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
    if (swift_dynamicCast())
    {
      v7 = v26;
      *&v22 = v6;
      *(&v22 + 1) = v5;
      v26 = 34;
      v27 = 0xE100000000000000;
      sub_1DB143508();
      v8 = MEMORY[0x1E69E6158];
      v9 = sub_1DB2BB3D4();
      v11 = v10;
      *&v22 = v7;
      v12 = Blob.toHex()();
      countAndFlagsBits = v12._countAndFlagsBits;

      *&v14 = v12._object;
      v21 = v14;
    }

    else
    {
      v26 = v6;
      v27 = v5;
      sub_1DB143508();
      v9 = sub_1DB2BB3D4();
      v11 = v17;
      v18 = v29;
      v19 = __swift_project_boxed_opaque_existential_1(v28, v29);
      v25 = v18;
      v20 = __swift_allocate_boxed_opaque_existential_0(&v23);
      (*(*(v18 - 8) + 16))(v20, v19, v18);
      countAndFlagsBits = v23;
      v21 = v24;
      v8 = v25;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v28);
    v16 = v21;
  }

  else
  {
    sub_1DB1445E0(&v22, &qword_1ECC26E28, &unk_1DB2C2D70);
    *&v22 = v6;
    *(&v22 + 1) = v5;
    v28[0] = 34;
    v28[1] = 0xE100000000000000;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1DB143508();
    result = sub_1DB2BB3D4();
    v9 = result;
    v11 = v15;
    countAndFlagsBits = 0;
    v8 = 0;
    v16 = 0uLL;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = countAndFlagsBits;
  *(a3 + 24) = v16;
  *(a3 + 40) = v8;
  return result;
}

uint64_t sub_1DB29A9B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7365756C6176;
  }

  else
  {
    v3 = 0x736E6D756C6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7365756C6176;
  }

  else
  {
    v5 = 0x736E6D756C6F63;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();
  }

  return v8 & 1;
}

uint64_t sub_1DB29AA5C()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

double sub_1DB29AADC(uint64_t a1)
{
  sub_1DB2BAE84();

  return result;
}

uint64_t sub_1DB29AB48(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB29ABC4(char *a2@<X8>)
{
  v3 = sub_1DB2BB6F4();

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

void sub_1DB29AC24(uint64_t *a1@<X8>)
{
  v2 = 0x736E6D756C6F63;
  if (*v1)
  {
    v2 = 0x7365756C6176;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB29AC60()
{
  if (*v0)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 0x736E6D756C6F63;
  }
}

void sub_1DB29AC98(char *a3@<X8>)
{
  v4 = sub_1DB2BB6F4();

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

uint64_t sub_1DB29ACFC(uint64_t a1)
{
  v2 = sub_1DB2A1110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB29AD38(uint64_t a1)
{
  v2 = sub_1DB2A1110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Row.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29308, &qword_1DB2CEFA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v23 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A1110();

  sub_1DB2BBA94();
  *&v24[0] = v8;
  LOBYTE(v26) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29128, &unk_1DB2CE770);
  sub_1DB2A1164(&qword_1EE13E6E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
  sub_1DB2BB8A4();

  if (!v2)
  {
    v9 = v23;
    v10 = *(v23 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v19 = 0;
      v20 = v7;
      v21 = v5;
      v22 = v4;
      v26 = MEMORY[0x1E69E7CC0];
      sub_1DB138580(0, v10, 0);
      v11 = v26;
      v12 = v9 + 32;
      do
      {
        sub_1DB1446A4(v12, v24, &qword_1ECC26E28, &unk_1DB2C2D70);
        v26 = v11;
        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1DB138580((v13 > 1), v14 + 1, 1);
          v11 = v26;
        }

        *(v11 + 16) = v14 + 1;
        v15 = v11 + 40 * v14;
        v16 = v24[0];
        v17 = v24[1];
        *(v15 + 64) = v25;
        *(v15 + 32) = v16;
        *(v15 + 48) = v17;
        v12 += 40;
        --v10;
      }

      while (v10);
      v5 = v21;
      v4 = v22;
      v7 = v20;
    }

    *&v24[0] = v11;
    LOBYTE(v26) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E10, &qword_1DB2CEFB0);
    sub_1DB2A11D4(&qword_1EE13F6B8, sub_1DB200E94, MEMORY[0x1E69E6300]);
    sub_1DB2BB8A4();
  }

  return (*(v5 + 8))(v7, v4);
}

void Row.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29310, &qword_1DB2CEFB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A1110();
  sub_1DB2BBA84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29128, &unk_1DB2CE770);
    v23[0] = 0;
    sub_1DB2A1164(&qword_1EE13E6D8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1DB2BB7B4();
    v9 = *&v24[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E10, &qword_1DB2CEFB0);
    LOBYTE(v24[0]) = 1;
    sub_1DB2A11D4(&qword_1EE13F2B0, sub_1DB200F6C, MEMORY[0x1E69E6330]);
    sub_1DB2BB7B4();
    v22 = v6;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v11)
    {
      v20 = v9;
      v21 = a2;
      v26 = MEMORY[0x1E69E7CC0];
      sub_1DB138530(0, v11, 0);
      v12 = v26;
      v19[1] = v10;
      v13 = v10 + 32;
      do
      {
        sub_1DB200FC0(v13, v23);
        sub_1DB1446A4(v23, v24, &qword_1ECC26E28, &unk_1DB2C2D70);
        sub_1DB20101C(v23);
        v26 = v12;
        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1DB138530((v14 > 1), v15 + 1, 1);
          v12 = v26;
        }

        *(v12 + 16) = v15 + 1;
        v16 = v12 + 40 * v15;
        v17 = v24[0];
        v18 = v24[1];
        *(v16 + 64) = v25;
        *(v16 + 32) = v17;
        *(v16 + 48) = v18;
        v13 += 40;
        --v11;
      }

      while (v11);
      (*(v22 + 8))(v8, v5);

      v9 = v20;
      a2 = v21;
    }

    else
    {

      (*(v22 + 8))(v8, v5);
      v12 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v9;
    a2[1] = v12;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void Row.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB2BBA64();
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1DB2BAE84();
      }

      while (v5);
      continue;
    }
  }

  v9 = *(v2 + 16);
  if (v9)
  {
    v10 = v2 + 32;
    do
    {
      sub_1DB1446A4(v10, v21, &qword_1ECC26E28, &unk_1DB2C2D70);
      sub_1DB1446A4(v21, v14, &qword_1ECC26E28, &unk_1DB2C2D70);
      if (v15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29320, &qword_1DB2CEFD0);
        if (swift_dynamicCast())
        {
          if (*(&v12 + 1))
          {
            sub_1DB1355D0(&v11, v14);
            __swift_project_boxed_opaque_existential_1(v14, v15);
            sub_1DB2BACF4();
            sub_1DB1445E0(v21, &qword_1ECC26E28, &unk_1DB2C2D70);
            __swift_destroy_boxed_opaque_existential_1(v14);
            goto LABEL_15;
          }
        }

        else
        {
          v13 = 0;
          v11 = 0u;
          v12 = 0u;
        }

        sub_1DB1445E0(v21, &qword_1ECC26E28, &unk_1DB2C2D70);
      }

      else
      {
        sub_1DB1445E0(v21, &qword_1ECC26E28, &unk_1DB2C2D70);
        sub_1DB1445E0(v14, &qword_1ECC26E28, &unk_1DB2C2D70);
        v11 = 0u;
        v12 = 0u;
        v13 = 0;
      }

      sub_1DB1445E0(&v11, &qword_1ECC29318, &unk_1DB2CEFC0);
LABEL_15:
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  v21[2] = v18;
  v21[3] = v19;
  v22 = v20;
  v21[0] = v16;
  v21[1] = v17;
  sub_1DB2BBA44();
}

uint64_t Row.description.getter()
{
  v1 = v0[1];
  v2 = *v0;

  v3 = 0;
  v25 = sub_1DB2884B0(v2, v2, v1);

  sub_1DB29EFE4(&v25);

  v4 = *(v25 + 2);
  if (v4)
  {
    v5 = &v25[16 * v4 + 16];
    v20 = *v5;
    v21 = v5[1];
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v18 = v2;
    sub_1DB138470(0, v6, 0);
    v7 = 0;
    v8 = v28;
    v9 = v1 + 32;
    v19 = *(v1 + 16);
    while (v19 != v7)
    {
      if (v7 >= *(v1 + 16))
      {
        goto LABEL_15;
      }

      sub_1DB1446A4(v9, v26, &qword_1ECC26E28, &unk_1DB2C2D70);
      v22 = v7;
      v23[0] = v26[0];
      v23[1] = v26[1];
      v24 = v27;
      v3 = v1;
      v10 = sub_1DB29B9B4(v7, v23, v2, v1, v20, v21);
      v12 = v11;
      sub_1DB1445E0(&v22, &qword_1ECC29328, &unk_1DB2CEFD8);
      v28 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DB138470((v13 > 1), v14 + 1, 1);
        v2 = v18;
        v8 = v28;
      }

      ++v7;
      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v9 += 40;
      v1 = v3;
      if (v6 == v7)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    MEMORY[0x1E1284A10](v3);

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v25 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
    v16 = sub_1DB2BAD24();

    return v16;
  }

  return result;
}

uint64_t sub_1DB29B9B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = 0x3E726F7272653CLL;
  do
  {
    if (!v10)
    {
      while (1)
      {
        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v13 >= v11)
        {
          v17 = 0xE700000000000000;
          goto LABEL_13;
        }

        v10 = *(a3 + 64 + 8 * v13);
        ++v7;
        if (v10)
        {
          v7 = v13;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v13 = v7;
LABEL_10:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
  }

  while (*(*(a3 + 56) + 8 * v15) != result);
  v16 = (*(a3 + 48) + 16 * v15);
  v12 = *v16;
  v17 = v16[1];

LABEL_13:
  sub_1DB1446A4(a2, &v32, &qword_1ECC26E28, &unk_1DB2C2D70);
  if (v33)
  {
    sub_1DB1355D0(&v32, &v34);
    v18 = __swift_project_boxed_opaque_existential_1(&v34, v36);
    MEMORY[0x1EEE9AC00](v18);
    (*(v20 + 16))(v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = sub_1DB2BADF4();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {
    sub_1DB1445E0(&v32, &qword_1ECC26E28, &unk_1DB2C2D70);
    v23 = 0xE400000000000000;
    v21 = 1280070990;
  }

  v34 = v12;
  v35 = v17;
  *&v32 = 34;
  *(&v32 + 1) = 0xE100000000000000;
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1DB143508();
  v24 = sub_1DB2BB3D4();
  v26 = v25;

  v27 = sub_1DB2BAE94();
  result = sub_1DB2BAE94();
  if (!__OFSUB__(v27, result))
  {
    v28 = sub_1DB2BAFB4();
    v30 = v29;
    v34 = v24;
    v35 = v26;
    MEMORY[0x1E1283490](8250, 0xE200000000000000);
    MEMORY[0x1E1283490](v28, v30);

    MEMORY[0x1E1283490](v21, v23);

    return v34;
  }

LABEL_19:
  __break(1u);
  return result;
}

OnDeviceStorageCore::JoinType_optional __swiftcall JoinType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB29BD70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x52454E4E49;
  if (v2 != 1)
  {
    v5 = 0x54554F205446454CLL;
    v4 = 0xEA00000000005245;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x53534F5243;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x52454E4E49;
  if (*a2 != 1)
  {
    v8 = 0x54554F205446454CLL;
    v3 = 0xEA00000000005245;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x53534F5243;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB2BB924();
  }

  return v11 & 1;
}

uint64_t sub_1DB29BE6C()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

double sub_1DB29BF0C(uint64_t a1)
{
  sub_1DB2BAE84();

  return result;
}

uint64_t sub_1DB29BF98(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB29C040(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x52454E4E49;
  if (v2 != 1)
  {
    v5 = 0x54554F205446454CLL;
    v4 = 0xEA00000000005245;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x53534F5243;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

OnDeviceStorageCore::OnConflict_optional __swiftcall OnConflict.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB29C1C4()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

double sub_1DB29C298(uint64_t a1)
{
  sub_1DB2BAE84();

  return result;
}

uint64_t sub_1DB29C358(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB29C434(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x4543414C504552;
  v5 = 0xE500000000000000;
  v6 = 0x54524F4241;
  v7 = 0xE400000000000000;
  v8 = 1279869254;
  if (v2 != 3)
  {
    v8 = 0x45524F4E4749;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4B4341424C4C4F52;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DB29C574()
{
  v1 = 0x7361696C61;
  if (*v0 != 1)
  {
    v1 = 0x6573616261746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DB29C5C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB2A2D28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB29C5EC(uint64_t a1)
{
  v2 = sub_1DB2A124C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB29C628(uint64_t a1)
{
  v2 = sub_1DB2A124C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.FromClause.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29330, &qword_1DB2CEFE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A124C();
  sub_1DB2BBA94();
  v14 = 0;
  v9 = v11[5];
  sub_1DB2BB864();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1DB2BB824();
  v12 = 2;
  sub_1DB2BB824();
  return (*(v4 + 8))(v6, v3);
}

void QueryClauses.FromClause.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29338, &qword_1DB2CEFF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A124C();
  sub_1DB2BBA84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    v9 = sub_1DB2BB774();
    v11 = v10;
    v21 = v9;
    v23 = 1;
    v19 = sub_1DB2BB734();
    v20 = v12;
    v22 = 2;
    v13 = sub_1DB2BB734();
    v15 = v14;
    v16 = v13;
    (*(v6 + 8))(v8, v5);
    v17 = v20;
    *a2 = v21;
    a2[1] = v11;
    a2[2] = v19;
    a2[3] = v17;
    a2[4] = v16;
    a2[5] = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1DB29CAD0()
{
  if (*v0)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 0x6874676E656CLL;
  }
}

void sub_1DB29CAFC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1DB2BB924() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1DB29CBD0(uint64_t a1)
{
  v2 = sub_1DB2A12A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB29CC0C(uint64_t a1)
{
  v2 = sub_1DB2A12A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.LimitClause.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29340, &qword_1DB2CEFF8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A12A0();
  sub_1DB2BBA94();
  v12 = 0;
  sub_1DB2BB894();
  if (!v2)
  {
    v11 = 1;
    sub_1DB2BB844();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t QueryClauses.LimitClause.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29350, &qword_1DB2CF000);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A12A0();
  sub_1DB2BBA84();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_1DB2BB7A4();
    v15 = 1;
    v11 = sub_1DB2BB754();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 QueryClauses.init(select:from:join:filters:group:order:limit:union:with:)@<Q0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __n128 *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v23 = *a1;
  v22 = *(a1 + 1);
  v12 = *a2;
  v13 = a2[1];
  v32 = *a4;
  v31 = *(a4 + 2);
  v30 = *a5;
  v28 = a5[1].n128_u64[1];
  v29 = a5[1].n128_u64[0];
  v26 = *a7;
  v27 = *a6;
  v25 = a7[1];
  v24 = *(a7 + 16);
  v14 = *(a7 + 17);
  v16 = *a10;
  v15 = a10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB2BCC40;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v17 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v17 + 32) = 42;
  *(v17 + 40) = 0xE100000000000000;
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 48) = MEMORY[0x1E69E7CC0];

  sub_1DB1718E4(0, 0, 0);
  sub_1DB1755F8(0, 0, 0, 0);

  v35 = v14;
  v19 = v15 != 0;
  if (!v15)
  {
    v15 = v18;
  }

  *a9 = v23;
  *(a9 + 8) = v22;
  *(a9 + 16) = v12;
  *(a9 + 24) = v13;
  v20 = *(a2 + 2);
  *(a9 + 32) = *(a2 + 1);
  *(a9 + 48) = v20;
  *(a9 + 64) = a3;
  *(a9 + 72) = v32;
  *(a9 + 88) = v31;
  result = v30;
  *(a9 + 96) = v30;
  *(a9 + 112) = v29;
  *(a9 + 120) = v28;
  *(a9 + 128) = v27;
  *(a9 + 136) = v26;
  *(a9 + 144) = v25;
  *(a9 + 152) = v24;
  *(a9 + 153) = v35;
  *(a9 + 160) = a8;
  *(a9 + 168) = v19 & v16;
  *(a9 + 176) = v15;
  return result;
}

uint64_t sub_1DB29D1BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F38, &qword_1DB2BD530);
  result = sub_1DB2BB6B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1DB144640(v21, v31);
      }

      else
      {
        sub_1DB1444CC(v21, v31);
      }

      result = sub_1DB2BB9F4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1DB144640(v31, (*(v7 + 56) + 32 * v15));
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
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1DB29D448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F50, &qword_1DB2BD548);
  v34 = v4;
  result = sub_1DB2BB6B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        _Block_copy(v24);
      }

      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DB29D6F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC294F8, &qword_1DB2D0A30);
  v34 = v4;
  result = sub_1DB2BB6B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DB29D9A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_1DB2BB6B4();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1DB29DC44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC294F0, &qword_1DB2D0A28);
  v34 = v4;
  result = sub_1DB2BB6B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DB29DEE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F20, &unk_1DB2D0A40);
  v38 = v4;
  result = sub_1DB2BB6B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v40 = v22[2];
      v26 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1DB2BBA04();
      sub_1DB2BAE84();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v12 = v39;
      v16[2] = v40;
      v16[3] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v37;
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
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DB29E1BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29300, &qword_1DB2CEFA0);
  v36 = v4;
  result = sub_1DB2BB6B4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v36)
      {
        v27 = v26[1];
        v37 = *v26;
        v38 = v27;
      }

      else
      {
        sub_1DB1446A4(v26, &v37, &qword_1ECC26F30, &unk_1DB2BFA90);
      }

      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v38;
      *v17 = v37;
      v17[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_1DB29E484(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1DB144640(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1DB29E4EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1DB29E534(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

void *sub_1DB29E580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F38, &qword_1DB2BD530);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1DB1444CC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1DB144640(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

  return result;
}

void *sub_1DB29E6FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F58, &unk_1DB2BD550);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

  return result;
}

void *sub_1DB29E86C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F50, &qword_1DB2BD548);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = _Block_copy(v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

  return result;
}

void *sub_1DB29E9DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC294F8, &qword_1DB2D0A30);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

  return result;
}

void *sub_1DB29EB44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC294F0, &qword_1DB2D0A28);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

  return result;
}

id sub_1DB29ECAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F20, &unk_1DB2D0A40);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

        result = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

  return result;
}

void *sub_1DB29EE30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29300, &qword_1DB2CEFA0);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_1DB1446A4(*(v2 + 56) + 32 * v17, v27, &qword_1ECC26F30, &unk_1DB2BFA90);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_1DB29EFE4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DB25C134(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1DB29F050(v4);
  *a1 = v2;
}

void sub_1DB29F050(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DB2BB8E4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1DB2BB104();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DB29F254(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1DB29F148(0, v2, 1, a1);
  }
}

void sub_1DB29F148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = a1 - a3;
LABEL_5:
    v14 = v7;
    v15 = v6;
    while (1)
    {

      v8 = sub_1DB2BAE94();
      v9 = sub_1DB2BAE94();

      if (v8 >= v9)
      {
LABEL_4:
        ++v4;
        v6 = v15 + 2;
        v7 = v14 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v10 = *v6;
      v11 = v6[1];
      *v6 = *(v6 - 1);
      *(v6 - 1) = v11;
      *(v6 - 2) = v10;
      v6 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1DB29F254(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_1DB25C120(v8);
    }

    v79 = *(v8 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = v8;
        v8 = (v79 - 1);
        v81 = *&v80[16 * v79];
        v82 = *&v80[16 * v79 + 24];
        sub_1DB29F904((*a3 + 16 * v81), (*a3 + 16 * *&v80[16 * v79 + 16]), (*a3 + 16 * v82), v7);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v82 < v81)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1DB25C120(v80);
        }

        if (v79 - 2 >= *(v80 + 2))
        {
          goto LABEL_115;
        }

        v83 = &v80[16 * v79];
        *v83 = v81;
        *(v83 + 1) = v82;
        sub_1DB25C094(v79 - 1);
        v8 = v80;
        v79 = *(v80 + 2);
        if (v79 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v87 = v5;
      v90 = 16 * v7;
      v10 = *a3 + 16 * v7 + 40;

      v94 = sub_1DB2BAE94();
      v92 = sub_1DB2BAE94();

      v85 = v7;
      v11 = v7 + 2;
      while (v6 != v11)
      {

        v7 = sub_1DB2BAE94();
        v12 = sub_1DB2BAE94();

        ++v11;
        v10 += 16;
        if (v94 < v92 == v7 >= v12)
        {
          v6 = v11 - 1;
          break;
        }
      }

      v9 = v85;
      v5 = v87;
      v13 = v90;
      if (v94 < v92)
      {
        if (v6 < v85)
        {
          goto LABEL_118;
        }

        if (v85 < v6)
        {
          v14 = 0;
          v15 = 16 * v6;
          v16 = v85;
          do
          {
            if (v16 != v6 + v14 - 1)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v17 = (v21 + v13);
              v18 = v21 + v15;
              v19 = *v17;
              v20 = v17[1];
              *v17 = *(v18 - 16);
              *(v18 - 16) = v19;
              *(v18 - 8) = v20;
            }

            ++v16;
            --v14;
            v15 -= 16;
            v13 += 16;
          }

          while (v16 < v6 + v14);
        }
      }
    }

    v22 = a3[1];
    if (v6 < v22)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_117;
      }

      if (v6 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v22)
        {
          v7 = a3[1];
        }

        else
        {
          v7 = v9 + a4;
        }

        if (v7 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v6 != v7)
        {
          break;
        }
      }
    }

    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1DB1571EC(0, *(v8 + 2) + 1, 1, v8);
    }

    v24 = *(v8 + 2);
    v23 = *(v8 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v8 = sub_1DB1571EC((v23 > 1), v24 + 1, 1, v8);
    }

    *(v8 + 2) = v25;
    v26 = &v8[16 * v24];
    *(v26 + 4) = v9;
    *(v26 + 5) = v7;
    v27 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if (v24)
    {
      while (1)
      {
        v28 = v25 - 1;
        if (v25 >= 4)
        {
          break;
        }

        if (v25 == 3)
        {
          v29 = *(v8 + 4);
          v30 = *(v8 + 5);
          v39 = __OFSUB__(v30, v29);
          v31 = v30 - v29;
          v32 = v39;
LABEL_48:
          if (v32)
          {
            goto LABEL_105;
          }

          v45 = &v8[16 * v25];
          v47 = *v45;
          v46 = *(v45 + 1);
          v48 = __OFSUB__(v46, v47);
          v49 = v46 - v47;
          v50 = v48;
          if (v48)
          {
            goto LABEL_108;
          }

          v51 = &v8[16 * v28 + 32];
          v53 = *v51;
          v52 = *(v51 + 1);
          v39 = __OFSUB__(v52, v53);
          v54 = v52 - v53;
          if (v39)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v49, v54))
          {
            goto LABEL_112;
          }

          if (v49 + v54 >= v31)
          {
            if (v31 < v54)
            {
              v28 = v25 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v55 = &v8[16 * v25];
        v57 = *v55;
        v56 = *(v55 + 1);
        v39 = __OFSUB__(v56, v57);
        v49 = v56 - v57;
        v50 = v39;
LABEL_62:
        if (v50)
        {
          goto LABEL_107;
        }

        v58 = &v8[16 * v28];
        v60 = *(v58 + 4);
        v59 = *(v58 + 5);
        v39 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v39)
        {
          goto LABEL_110;
        }

        if (v61 < v49)
        {
          goto LABEL_3;
        }

LABEL_69:
        v66 = v28 - 1;
        if (v28 - 1 >= v25)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v67 = *&v8[16 * v66 + 32];
        v68 = *&v8[16 * v28 + 40];
        sub_1DB29F904((*a3 + 16 * v67), (*a3 + 16 * *&v8[16 * v28 + 32]), (*a3 + 16 * v68), v27);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v68 < v67)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB25C120(v8);
        }

        if (v66 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v69 = &v8[16 * v66];
        *(v69 + 4) = v67;
        *(v69 + 5) = v68;
        sub_1DB25C094(v28);
        v25 = *(v8 + 2);
        if (v25 <= 1)
        {
          goto LABEL_3;
        }
      }

      v33 = &v8[16 * v25 + 32];
      v34 = *(v33 - 64);
      v35 = *(v33 - 56);
      v39 = __OFSUB__(v35, v34);
      v36 = v35 - v34;
      if (v39)
      {
        goto LABEL_103;
      }

      v38 = *(v33 - 48);
      v37 = *(v33 - 40);
      v39 = __OFSUB__(v37, v38);
      v31 = v37 - v38;
      v32 = v39;
      if (v39)
      {
        goto LABEL_104;
      }

      v40 = &v8[16 * v25];
      v42 = *v40;
      v41 = *(v40 + 1);
      v39 = __OFSUB__(v41, v42);
      v43 = v41 - v42;
      if (v39)
      {
        goto LABEL_106;
      }

      v39 = __OFADD__(v31, v43);
      v44 = v31 + v43;
      if (v39)
      {
        goto LABEL_109;
      }

      if (v44 >= v36)
      {
        v62 = &v8[16 * v28 + 32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v39 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v39)
        {
          goto LABEL_113;
        }

        if (v31 < v65)
        {
          v28 = v25 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_89;
    }
  }

  v86 = v9;
  v88 = v5;
  v70 = *a3;
  v71 = (*a3 + 16 * v6);
  v72 = v9 - v6;
  v91 = v7;
LABEL_80:
  v93 = v71;
  v95 = v6;
  v73 = v72;
  while (1)
  {

    v74 = sub_1DB2BAE94();
    v75 = sub_1DB2BAE94();

    if (v74 >= v75)
    {
LABEL_79:
      v6 = v95 + 1;
      v71 = v93 + 2;
      --v72;
      v7 = v91;
      if (v95 + 1 != v91)
      {
        goto LABEL_80;
      }

      v9 = v86;
      v5 = v88;
      if (v91 < v86)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v70)
    {
      break;
    }

    v76 = *v71;
    v77 = v71[1];
    *v71 = *(v71 - 1);
    *(v71 - 1) = v77;
    *(v71 - 2) = v76;
    v71 -= 2;
    if (__CFADD__(v73++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1DB29F904(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = __dst;
    if (__dst != __src || &__src[16 * v9] <= __dst)
    {
      memmove(__dst, __src, 16 * v9);
    }

    if (v7 < 16 || v5 >= v4)
    {
      v5 = v6;
      v14 = &v13[16 * v9];
      goto LABEL_39;
    }

    v14 = &v13[16 * v9];
    while (1)
    {

      v15 = sub_1DB2BAE94();
      v16 = sub_1DB2BAE94();

      if (v15 >= v16)
      {
        break;
      }

      v17 = v5;
      v18 = v6 == v5;
      v5 += 16;
      if (!v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      v6 += 16;
      if (v13 >= v14 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_39;
      }
    }

    v17 = v13;
    v18 = v6 == v13;
    v13 += 16;
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v6 = *v17;
    goto LABEL_18;
  }

  if (__dst != a2 || &a2[16 * v12] <= __dst)
  {
    v19 = __dst;
    memmove(__dst, a2, 16 * v12);
    __dst = v19;
  }

  v27 = __dst;
  v14 = &__dst[16 * v12];
  if (v10 < 16)
  {
    v13 = __dst;
    goto LABEL_39;
  }

  v13 = __dst;
  if (v5 > v6)
  {
    do
    {
      v26 = v5;
      v25 = v5 - 16;
      v4 -= 16;
      v20 = v14;
      while (1)
      {
        v21 = v4 + 16;
        v14 -= 16;

        v22 = sub_1DB2BAE94();
        v23 = sub_1DB2BAE94();

        if (v22 < v23)
        {
          break;
        }

        if (v21 != v20)
        {
          *v4 = *v14;
        }

        v4 -= 16;
        v20 = v14;
        v13 = v27;
        if (v14 <= v27)
        {
          v5 = v26;
          goto LABEL_39;
        }
      }

      if (v21 != v26)
      {
        *v4 = *v25;
      }

      v13 = v27;
      v14 = v20;
      if (v20 <= v27)
      {
        break;
      }

      v5 = v25;
    }

    while (v25 > v6);
    v5 = v25;
  }

LABEL_39:
  if (v5 != v13 || v5 >= &v13[(v14 - v13 + (v14 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v13, 16 * ((v14 - v13) / 16));
  }

  return 1;
}

uint64_t sub_1DB29FBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1DB2BB464();
  v7 = 1 << *(a2 + 32);
  if (v7 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_1DB29FCC4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1DB2BB484();
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1DB29FD44(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_1DB1446A4(a1 + 32, &v49, &qword_1ECC26D80, &qword_1DB2D0A20);
  v8 = v49;
  v7 = v50;
  v47 = v49;
  v48 = v50;
  v45 = v51;
  v46 = v52;
  v9 = *a3;
  v10 = sub_1DB141B30(v49, v50);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1DB29E1BC(v15, a2 & 1);
    v10 = sub_1DB141B30(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1DB2BB984();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1DB29EE30();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v53 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1DB1445E0(&v45, &qword_1ECC26F30, &unk_1DB2BFA90);

      MEMORY[0x1E1284A10](v53);
      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  v23 = (v21[7] + 32 * v10);
  v24 = v46;
  *v23 = v45;
  v23[1] = v24;
  v25 = v21[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v14)
  {
    v21[2] = v26;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v27 = a1 + 80;
    v28 = 1;
    while (v28 < *(a1 + 16))
    {
      sub_1DB1446A4(v27, &v49, &qword_1ECC26D80, &qword_1DB2D0A20);
      v30 = v49;
      v29 = v50;
      v47 = v49;
      v48 = v50;
      v45 = v51;
      v46 = v52;
      v31 = *a3;
      v32 = sub_1DB141B30(v49, v50);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v14 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v14)
      {
        goto LABEL_23;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_1DB29E1BC(v36, 1);
        v32 = sub_1DB141B30(v30, v29);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v30;
      v40[1] = v29;
      v41 = (v39[7] + 32 * v32);
      v42 = v46;
      *v41 = v45;
      v41[1] = v42;
      v43 = v39[2];
      v14 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v28;
      v39[2] = v44;
      v27 += 48;
      if (v4 == v28)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD00000000000001BLL, 0x80000001DB2D7710);
  sub_1DB2BB674();
  MEMORY[0x1E1283490](39, 0xE100000000000000);
  sub_1DB2BB684();
  __break(1u);
}

uint64_t sub_1DB2A0124(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DB138470(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  result = sub_1DB2BB464();
  v6 = result;
  v7 = 0;
  v24 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = *(a1 + 36);
    sub_1DB143508();
    result = sub_1DB2BB3D4();
    v27 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      v23 = result;
      v22 = v11;
      sub_1DB138470((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
      v2 = v27;
    }

    *(v2 + 16) = v13 + 1;
    v14 = v2 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v10);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v24;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v9 = v24;
      v19 = (a1 + 72 + 8 * v10);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1DB25CF78(v6, v25, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1DB25CF78(v6, v25, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
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
  return result;
}

unint64_t sub_1DB2A0428()
{
  result = qword_1EE13F318;
  if (!qword_1EE13F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F318);
  }

  return result;
}

unint64_t sub_1DB2A047C()
{
  result = qword_1EE13EBD0;
  if (!qword_1EE13EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBD0);
  }

  return result;
}

unint64_t sub_1DB2A04D0()
{
  result = qword_1EE13EBC8;
  if (!qword_1EE13EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBC8);
  }

  return result;
}

unint64_t sub_1DB2A0524()
{
  result = qword_1ECC29280;
  if (!qword_1ECC29280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29280);
  }

  return result;
}

unint64_t sub_1DB2A0578()
{
  result = qword_1ECC29298;
  if (!qword_1ECC29298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29298);
  }

  return result;
}

unint64_t sub_1DB2A05E4()
{
  result = qword_1EE13F720;
  if (!qword_1EE13F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F720);
  }

  return result;
}

unint64_t sub_1DB2A0638()
{
  result = qword_1ECC292C0;
  if (!qword_1ECC292C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC292C0);
  }

  return result;
}

unint64_t sub_1DB2A068C()
{
  result = qword_1ECC292E8;
  if (!qword_1ECC292E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC292E8);
  }

  return result;
}

uint64_t sub_1DB2A06E0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void sub_1DB2A0774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  sub_1DB143044();
  v11 = MEMORY[0x1E69E7CC0];
  v62 = *(a1 + 24);
  v60 = a2;
  v57 = a1;
  while (1)
  {
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((BYTE8(v76[0]) & 1) == 0 && *&v76[0] == v62)
    {
      break;
    }

    sub_1DB2BB2C4(&v67);
    if (v8)
    {

      return;
    }

    if ((v67 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_11:
    v63 = v11;
    Statement.row.getter(v76);
    v14 = v76[0];
    swift_retain_n();
    if (*(&v14 + 1) >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = (MEMORY[0x1E69E7CC0] + 32);
      v18 = MEMORY[0x1E69E7CC0];
      v19 = v7;
      while (1)
      {
        os_unfair_lock_lock((v14 + 24));
        if (v15 == 0x80000000)
        {
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v20 = sqlite3_column_type(*(v14 + 16), v15);
        os_unfair_lock_unlock((v14 + 24));
        if (v20 > 2)
        {
          break;
        }

        if (v20 == 1)
        {
          os_unfair_lock_lock((v14 + 24));
          v27 = COERCE_DOUBLE(sqlite3_column_int64(*(v14 + 16), v15));
          os_unfair_lock_unlock((v14 + 24));
          v30 = MEMORY[0x1E69E7360];
          v31 = &protocol witness table for Int64;
          if (v16)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v20 != 2)
          {
            goto LABEL_31;
          }

          os_unfair_lock_lock((v14 + 24));
          v29 = sqlite3_column_double(*(v14 + 16), v15);
          os_unfair_lock_unlock((v14 + 24));
          v27 = v29;
          v30 = MEMORY[0x1E69E63B0];
          v31 = &protocol witness table for Double;
          if (v16)
          {
            goto LABEL_48;
          }
        }

LABEL_38:
        v34 = *(v18 + 24);
        if (((v34 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_66;
        }

        v66 = v31;
        v64 = v19;
        v35 = v34 & 0xFFFFFFFFFFFFFFFELL;
        if (v35 <= 1)
        {
          v36 = 1;
        }

        else
        {
          v36 = v35;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v37 = swift_allocObject();
        v38 = (_swift_stdlib_malloc_size(v37) - 32) / 40;
        v37[2] = v36;
        v37[3] = 2 * v38;
        v39 = v18;
        v40 = (v37 + 4);
        v41 = v39[3] >> 1;
        if (v39[2])
        {
          v42 = v39 + 4;
          v43 = v39;
          if (v37 != v39 || v40 >= v42 + 40 * v41)
          {
            memmove(v37 + 4, v42, 40 * v41);
          }

          v43[2] = 0;
        }

        v17 = (v40 + 40 * v41);
        v16 = (v38 & 0x7FFFFFFFFFFFFFFFLL) - v41;

        v18 = v37;
        v19 = v64;
        v31 = v66;
LABEL_48:
        v44 = __OFSUB__(v16--, 1);
        if (v44)
        {
          goto LABEL_62;
        }

        ++v15;
        *v17 = v27;
        *(v17 + 1) = v19;
        v17[2] = 0.0;
        *(v17 + 3) = v30;
        *(v17 + 4) = v31;
        v17 += 5;
        if (*(&v14 + 1) == v15)
        {
          goto LABEL_52;
        }
      }

      if (v20 == 3)
      {
        os_unfair_lock_lock((v14 + 24));
        if (!sqlite3_column_text(*(v14 + 16), v15))
        {
          goto LABEL_67;
        }

        v27 = COERCE_DOUBLE(sub_1DB2BAF14());
        v19 = v32;
        os_unfair_lock_unlock((v14 + 24));
        v30 = MEMORY[0x1E69E6158];
        v31 = &protocol witness table for String;
        if (v16)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }

      if (v20 != 5)
      {
        if (v20 == 4)
        {
          v21 = v18;
          v65 = sub_1DB138CA8();
          os_unfair_lock_lock((v14 + 24));
          v22 = *(v14 + 16);
          v23 = sqlite3_column_blob(v22, v15);
          if (v23 && (v24 = v23, (v25 = sqlite3_column_bytes(v22, v15)) != 0))
          {
            v26 = v25;
            if (v25 <= 0)
            {
              v27 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v27 = COERCE_DOUBLE(swift_allocObject());
              v28 = _swift_stdlib_malloc_size(*&v27);
              *(*&v27 + 16) = v26;
              *(*&v27 + 24) = 2 * v28 - 64;
            }

            memcpy((*&v27 + 32), v24, v26);
          }

          else
          {
            v27 = MEMORY[0x1E69E7CC0];
          }

          v18 = v21;
          os_unfair_lock_unlock((v14 + 24));
          v30 = &type metadata for Blob;
          v31 = v65;
          if (v16)
          {
            goto LABEL_48;
          }

          goto LABEL_38;
        }

LABEL_31:
        *&v67 = 0;
        *(&v67 + 1) = 0xE000000000000000;
        sub_1DB2BB4F4();

        *&v67 = 0xD000000000000019;
        *(&v67 + 1) = 0x80000001DB2D1D60;
        LODWORD(v75[0]) = v20;
        v33 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v33);

        sub_1DB15B09C(v67, *(&v67 + 1));
      }

      v27 = 0.0;
      v19 = 0;
      v30 = 0;
      v31 = 0;
      if (v16)
      {
        goto LABEL_48;
      }

      goto LABEL_38;
    }

    v16 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = v7;
LABEL_52:

    v45 = *(v18 + 24);
    if (v45 >= 2)
    {
      v46 = v45 >> 1;
      v44 = __OFSUB__(v46, v16);
      v47 = v46 - v16;
      if (v44)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

      *(v18 + 16) = v47;
    }

    v75[0] = v60;
    v75[1] = v18;

    sub_1DB26B6F8(v75, a4, a5, a6, v76);
    v8 = 0;

    v71 = v76[4];
    v72 = v76[5];
    v73 = v76[6];
    v74 = v76[7];
    v67 = v76[0];
    v68 = v76[1];
    v69 = v76[2];
    v70 = v76[3];
    v11 = v63;
    v7 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DB157B2C(0, *(v63 + 2) + 1, 1, v63);
    }

    a1 = v57;
    v49 = *(v11 + 2);
    v48 = *(v11 + 3);
    if (v49 >= v48 >> 1)
    {
      v11 = sub_1DB157B2C((v48 > 1), v49 + 1, 1, v11);
    }

    *(v11 + 2) = v49 + 1;
    v50 = &v11[128 * v49];
    v51 = v67;
    v52 = v68;
    v53 = v70;
    *(v50 + 4) = v69;
    *(v50 + 5) = v53;
    *(v50 + 2) = v51;
    *(v50 + 3) = v52;
    v54 = v71;
    v55 = v72;
    v56 = v74;
    *(v50 + 8) = v73;
    *(v50 + 9) = v56;
    *(v50 + 6) = v54;
    *(v50 + 7) = v55;
  }

  v12 = *(a1 + 16);
  os_unfair_lock_lock((v12 + 24));
  sub_1DB256240((v12 + 16), v76);
  v13 = (v12 + 24);
  if (!v8)
  {
    os_unfair_lock_unlock(v13);
    if (LOBYTE(v76[0]) != 1)
    {
      goto LABEL_64;
    }

    goto LABEL_11;
  }

LABEL_63:
  os_unfair_lock_unlock(v13);

LABEL_64:
}

void sub_1DB2A0E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1DB138830(0, v4, 0);
    v5 = v37;
    v6 = a1 + 64;
    v7 = sub_1DB2BB464();
    v8 = a1;
    v9 = 0;
    v10 = *(a1 + 36);
    v31 = v4;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v8 + 32))
    {
      v12 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v10 != *(v8 + 36))
      {
        goto LABEL_25;
      }

      v34 = v9;
      v13 = v6;
      v14 = *(v8 + 56);
      v15 = (*(v8 + 48) + 16 * v7);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v14 + 8 * v7);
      v35[0] = v16;
      v35[1] = v17;
      v35[2] = v18;

      sub_1DB29A6F0(v35, a3, v36);
      if (v3)
      {
        goto LABEL_29;
      }

      v37 = v5;
      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1DB138830((v19 > 1), v20 + 1, 1);
        v5 = v37;
      }

      *(v5 + 16) = v20 + 1;
      v21 = (v5 + 48 * v20);
      v22 = v36[0];
      v23 = v36[2];
      v21[3] = v36[1];
      v21[4] = v23;
      v21[2] = v22;
      v8 = a1;
      v11 = 1 << *(a1 + 32);
      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v24 = *(v13 + 8 * v12);
      if ((v24 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v6 = v13;
      v25 = v24 & (-2 << (v7 & 0x3F));
      if (v25)
      {
        v11 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v12 << 6;
        v27 = v12 + 1;
        v28 = (a1 + 72 + 8 * v12);
        while (v27 < (v11 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1DB25CF78(v7, v10, 0);
            v8 = a1;
            v3 = 0;
            v11 = __clz(__rbit64(v29)) + v26;
            goto LABEL_5;
          }
        }

        sub_1DB25CF78(v7, v10, 0);
        v8 = a1;
      }

      v3 = 0;
LABEL_5:
      v9 = v34 + 1;
      v7 = v11;
      if (v34 + 1 == v31)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    __break(1u);
  }
}

unint64_t sub_1DB2A1110()
{
  result = qword_1EE13F330;
  if (!qword_1EE13F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F330);
  }

  return result;
}

uint64_t sub_1DB2A1164(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC29128, &unk_1DB2CE770);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB2A11D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27E10, &qword_1DB2CEFB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB2A124C()
{
  result = qword_1EE1400A8;
  if (!qword_1EE1400A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1400A8);
  }

  return result;
}

unint64_t sub_1DB2A12A0()
{
  result = qword_1ECC29348;
  if (!qword_1ECC29348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29348);
  }

  return result;
}

unint64_t sub_1DB2A12F4(uint64_t a1)
{
  result = sub_1DB26F468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB2A131C(uint64_t a1)
{
  result = sub_1DB2A1344();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB2A1344()
{
  result = qword_1EE13F738;
  if (!qword_1EE13F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F738);
  }

  return result;
}

unint64_t sub_1DB2A13C4(uint64_t a1)
{
  result = sub_1DB2A13EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB2A13EC()
{
  result = qword_1ECC29358;
  if (!qword_1ECC29358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29358);
  }

  return result;
}

unint64_t sub_1DB2A1440(uint64_t a1)
{
  result = sub_1DB2A1468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB2A1468()
{
  result = qword_1ECC29360;
  if (!qword_1ECC29360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29360);
  }

  return result;
}

unint64_t sub_1DB2A14E8()
{
  result = qword_1ECC29368;
  if (!qword_1ECC29368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29368);
  }

  return result;
}

unint64_t sub_1DB2A153C(uint64_t a1)
{
  result = sub_1DB25CB30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB2A1564(uint64_t a1)
{
  result = sub_1DB2A158C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB2A158C()
{
  result = qword_1ECC29370;
  if (!qword_1ECC29370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29370);
  }

  return result;
}

unint64_t sub_1DB2A160C()
{
  result = qword_1ECC29378;
  if (!qword_1ECC29378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29378);
  }

  return result;
}

uint64_t sub_1DB2A1660(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB2A174C()
{
  result = qword_1EE13F2F8;
  if (!qword_1EE13F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F2F8);
  }

  return result;
}

unint64_t sub_1DB2A17CC()
{
  result = qword_1EE13F708;
  if (!qword_1EE13F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F708);
  }

  return result;
}

unint64_t sub_1DB2A184C()
{
  result = qword_1ECC29380;
  if (!qword_1ECC29380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29380);
  }

  return result;
}

unint64_t sub_1DB2A18CC()
{
  result = qword_1ECC29388;
  if (!qword_1ECC29388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29388);
  }

  return result;
}

unint64_t sub_1DB2A194C()
{
  result = qword_1ECC29390;
  if (!qword_1ECC29390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29390);
  }

  return result;
}

uint64_t sub_1DB2A19CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DB2A1A08()
{
  result = qword_1ECC29398;
  if (!qword_1ECC29398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29398);
  }

  return result;
}

unint64_t sub_1DB2A1A5C(uint64_t a1)
{
  result = sub_1DB2A1A84();
  *(a1 + 8) = result;
  return result;
}