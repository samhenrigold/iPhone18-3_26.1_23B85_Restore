uint64_t sub_1B1D3E7AC(uint64_t (*a1)(void *))
{
  sub_1B1D7C5CC();
  a1(v3);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3E860@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a6)(_OWORD *, uint64_t *)@<X5>, uint64_t (*a7)(uint64_t *)@<X6>, void *a8@<X8>)
{
  v51 = a7;
  v43 = a6;
  v44 = a8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v29 - v12;
  v14 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  a4();
  *&v46 = v13;
  sub_1B1D7C62C();
  if (v8)
  {
    v49 = v8;
    v60 = 0;
    v61 = 0;
    v56 = 0;
    v57 = 0uLL;
    v54 = 0;
    v53 = 0uLL;
    v62 = 0;
    v63 = 0uLL;
    v58 = 0;
    v55 = 0;
    memset(v64, 0, sizeof(v64));
    v59 = 0;
    v66 = 0uLL;
    v65 = 0;
    v48 = 0uLL;
    v47 = 0;
    v52 = 0u;
    v46 = 0u;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v75 = v47;
    *v76 = v48;
    *&v76[16] = 0;
    v77 = 0;
    v78 = 0uLL;
    v79 = 0;
    v80 = 0uLL;
    v81 = 0;
    v82 = v65;
    v83 = v66;
    v84 = v59;
    v85 = v61;
    v86 = v63;
    v87 = *v64;
    v88 = *&v64[8];
    v89 = v55;
    v90 = v57;
    v91 = v58;
    v92 = v62;
    v94 = v46;
    v93 = v52;
    v95 = v53;
    v96 = v54;
    v97 = v56;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
    v98 = v60;
    v102 = 0;
  }

  else
  {
    LOBYTE(v67[0]) = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v16 = v75;
    v17 = *v76;
    v40 = *&v76[16];
    v41 = v77;
    v42 = *(&v78 + 1);
    v39 = v78;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v67[0]) = 1;
    sub_1B1D7C3FC();
    v48 = v17;
    v47 = v16;
    v36 = v75;
    v37 = *v76;
    v38 = *&v76[16];
    v65 = v77;
    v66 = v78;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v67[0]) = 2;
    sub_1B1D7C3FC();
    v59 = v75;
    v63 = *&v76[8];
    v61 = *v76;
    *v64 = v77;
    *&v64[8] = v78;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v67[0]) = 3;
    sub_1B1D7C3FC();
    v18 = v16;
    v55 = v75;
    v57 = *v76;
    v58 = *&v76[16];
    v62 = v77;
    v52 = v78;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v67[0]) = 4;
    sub_1B1D7C3FC();
    v35 = v75;
    v53 = *&v76[8];
    v19 = *v76;
    v54 = v77;
    v60 = *(&v78 + 1);
    v56 = v78;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v103 = 5;
    sub_1B1D7C3FC();
    v49 = 0;
    (*(v11 + 8))(v46, v45);
    v20 = v68;
    v21 = v70;
    v45 = v70;
    *&v46 = v68;
    v31 = v71;
    v32 = v69;
    v22 = v72;
    v33 = v72;
    v30 = v73;
    v23 = v74;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    *&v67[0] = v18;
    *(v67 + 8) = v17;
    *(&v67[1] + 1) = v40;
    v24 = v19;
    v34 = v19;
    v25 = v39;
    *&v67[2] = v41;
    *(&v67[2] + 1) = v39;
    *&v67[3] = v42;
    *(&v67[3] + 1) = v36;
    v67[4] = v37;
    *&v67[5] = v38;
    *(&v67[5] + 1) = v65;
    v67[6] = v66;
    *&v67[7] = v59;
    *(&v67[7] + 1) = v61;
    v67[8] = v63;
    v67[9] = *v64;
    *&v67[10] = *&v64[16];
    *(&v67[10] + 1) = v55;
    v67[11] = v57;
    *&v67[12] = v58;
    *(&v67[12] + 1) = v62;
    v67[13] = v52;
    *&v67[14] = v35;
    *(&v67[14] + 1) = v24;
    v67[15] = v53;
    *&v67[16] = v54;
    *(&v67[16] + 1) = v56;
    *&v67[17] = v60;
    *(&v67[17] + 1) = v20;
    v26 = v32;
    *&v67[18] = v32;
    *(&v67[18] + 1) = v21;
    v27 = v31;
    *&v67[19] = v31;
    *(&v67[19] + 1) = v22;
    v28 = v30;
    *&v67[20] = v30;
    *(&v67[20] + 1) = v23;
    memcpy(v44, v67, 0x150uLL);
    v43(v67, &v75);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v75 = v18;
    *v76 = v17;
    *&v76[16] = v40;
    v77 = v41;
    *&v78 = v25;
    *(&v78 + 1) = v42;
    v79 = v36;
    v80 = v37;
    v81 = v38;
    v82 = v65;
    v83 = v66;
    v84 = v59;
    v85 = v61;
    v86 = v63;
    v87 = *v64;
    v88 = *&v64[8];
    v89 = v55;
    v90 = v57;
    v91 = v58;
    v92 = v62;
    v93 = v52;
    *&v94 = v35;
    *(&v94 + 1) = v34;
    v95 = v53;
    v96 = v54;
    v97 = v56;
    v98 = v60;
    *&v99 = v46;
    *(&v99 + 1) = v26;
    *&v100 = v45;
    *(&v100 + 1) = v27;
    *&v101 = v33;
    *(&v101 + 1) = v28;
    v102 = v23;
  }

  return v51(&v75);
}

uint64_t sub_1B1D3F218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1B1D7C5CC();
  a3(v5);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3F278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1B1D7C5CC();
  a4(v6);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.BasicAuthentication.userName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.BasicAuthentication.userName.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = v6;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  return result;
}

uint64_t ASImportableCredential.BasicAuthentication.password.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.BasicAuthentication.password.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  v4 = *a1;
  *(v1 + 72) = a1[1];
  *(v1 + 56) = v4;
  result = v6;
  *(v1 + 88) = v6;
  *(v1 + 104) = v3;
  return result;
}

uint64_t sub_1B1D3F410(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x64726F7773736170;
  }

  else
  {
    v2 = 0x656D616E72657375;
  }

  if (*a2)
  {
    v3 = 0x64726F7773736170;
  }

  else
  {
    v3 = 0x656D616E72657375;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B1D7C50C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B1D3F498()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3F510(uint64_t a1)
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D3F56C(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3F5EC@<X0>(char *a3@<X8>)
{
  v4 = sub_1B1D7C3AC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1B1D3F648(uint64_t *a1@<X8>)
{
  v2 = 0x656D616E72657375;
  if (*v1)
  {
    v2 = 0x64726F7773736170;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_1B1D3F680()
{
  if (*v0)
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 0x656D616E72657375;
  }
}

uint64_t sub_1B1D3F6C0@<X0>(char *a4@<X8>)
{
  v5 = sub_1B1D7C3AC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1B1D3F720(uint64_t a1)
{
  v2 = sub_1B1D66594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3F75C(uint64_t a1)
{
  v2 = sub_1B1D66594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.BasicAuthentication.encode(to:)(void *a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7759F0, &qword_1B1D88E70);
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v22 - v3;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v9 = v1[4];
  v8 = v1[5];
  v29 = v1[3];
  v30 = v8;
  v11 = v1[6];
  v10 = v1[7];
  v12 = v1[9];
  v27 = v1[8];
  v28 = v10;
  v13 = v1[11];
  v25 = v1[10];
  v26 = v12;
  v14 = v1[13];
  v23 = v1[12];
  v24 = v13;
  v22 = v14;
  v15 = a1[4];
  v31 = a1[3];
  v32 = v15;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v16 = v29;
  v17 = v8;
  v18 = v11;
  sub_1B1D66328(v5, v6, v7, v29, v9, v17, v11);
  sub_1B1D66594();
  v19 = v33;
  sub_1B1D7C63C();
  v36 = v5;
  v37 = v6;
  v38 = v7;
  v39 = v16;
  v40 = v9;
  v41 = v30;
  v42 = v18;
  v43 = 0;
  sub_1B1D663C8();
  v20 = v34;
  sub_1B1D7C48C();
  sub_1B1D0D630(v36, v37, v38, v39, v40, v41, v42);
  if (!v20)
  {
    v36 = v28;
    v37 = v27;
    v38 = v26;
    v39 = v25;
    v40 = v24;
    v41 = v23;
    v42 = v22;
    v43 = 1;
    sub_1B1D66328(v28, v27, v26, v25, v24, v23, v22);
    sub_1B1D7C48C();
    sub_1B1D0D630(v36, v37, v38, v39, v40, v41, v42);
  }

  return (*(v35 + 8))(v4, v19);
}

uint64_t ASImportableCredential.BasicAuthentication.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v5 = v1[7];
  v4 = v1[8];
  v7 = v1[9];
  v6 = v1[10];
  v9 = v1[11];
  v8 = v1[12];
  v10 = v1[13];
  if (v3)
  {
    v32 = v1[13];
    v33 = v1[7];
    v34 = v1[8];
    v35 = v1[9];
    v36 = v1[10];
    v37 = v1[12];
    v11 = *v1;
    v12 = v1[1];
    v13 = v1[2];
    v14 = v1[3];
    v16 = v1[5];
    v15 = v1[6];
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v11, v12);

    if (v12 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888(a1, v13);
    sub_1B1D7BE7C();
    sub_1B1D7C5EC();
    if (v15)
    {
      sub_1B1D7BE7C();
      v18 = v11;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      v22 = v3;
      v23 = v16;
      v24 = v15;
    }

    else
    {
      v18 = v11;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      v22 = v3;
      v23 = v16;
      v24 = 0;
    }

    sub_1B1D0D630(v18, v19, v20, v21, v22, v23, v24);
    v6 = v36;
    v8 = v37;
    v4 = v34;
    v7 = v35;
    v10 = v32;
    v5 = v33;
    if (v9)
    {
      goto LABEL_11;
    }

    return sub_1B1D7C5EC();
  }

  sub_1B1D7C5EC();
  if (!v9)
  {
    return sub_1B1D7C5EC();
  }

LABEL_11:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v5, v4);

  if (v4 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v7);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v10)
  {
    sub_1B1D7BE7C();
    v25 = v5;
    v26 = v4;
    v27 = v7;
    v28 = v6;
    v29 = v9;
    v30 = v8;
    v31 = v10;
  }

  else
  {
    v25 = v5;
    v26 = v4;
    v27 = v7;
    v28 = v6;
    v29 = v9;
    v30 = v8;
    v31 = 0;
  }

  return sub_1B1D0D630(v25, v26, v27, v28, v29, v30, v31);
}

uint64_t ASImportableCredential.BasicAuthentication.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.BasicAuthentication.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.BasicAuthentication.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A00, &qword_1B1D88E78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66594();
  sub_1B1D7C62C();
  if (v2)
  {
    v37 = 0;
    v64 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v53 = 0;
    v54 = 0;
    v55 = v64;
    v56 = v37;
    v57 = 0;
    v58 = 0;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0;
    v63 = 0;
  }

  else
  {
    v35 = v5;
    v8 = v36;
    LOBYTE(v38) = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v11 = v53;
    v10 = v54;
    v64 = v55;
    v37 = v56;
    v33 = v58;
    v34 = v57;
    v32 = v59;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v45 = 1;
    sub_1B1D7C3FC();
    (*(v35 + 8))(v7, v4);
    v12 = v46;
    v13 = v47;
    v35 = v46;
    v14 = v48;
    v28 = v48;
    v29 = v47;
    v26 = v50;
    v27 = v49;
    v24 = v52;
    v25 = v51;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v30 = v11;
    v31 = v10;
    *&v38 = v11;
    *(&v38 + 1) = v10;
    v15 = v37;
    *&v39 = v64;
    *(&v39 + 1) = v37;
    *&v40 = v34;
    *(&v40 + 1) = v33;
    *&v41 = v32;
    *(&v41 + 1) = v12;
    *&v42 = v13;
    *(&v42 + 1) = v14;
    v16 = v26;
    v17 = v27;
    *&v43 = v27;
    *(&v43 + 1) = v26;
    v19 = v24;
    v18 = v25;
    *&v44 = v25;
    *(&v44 + 1) = v24;
    v20 = v43;
    v8[4] = v42;
    v8[5] = v20;
    v8[6] = v44;
    v21 = v39;
    *v8 = v38;
    v8[1] = v21;
    v22 = v41;
    v8[2] = v40;
    v8[3] = v22;
    sub_1B1D66618(&v38, &v53);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v53 = v30;
    v54 = v31;
    v55 = v64;
    v56 = v15;
    v57 = v34;
    v58 = v33;
    v59 = v32;
    *&v60 = v35;
    *(&v60 + 1) = v29;
    *&v61 = v28;
    *(&v61 + 1) = v17;
    *&v62 = v16;
    *(&v62 + 1) = v18;
    v63 = v19;
  }

  return sub_1B1D665E8(&v53);
}

uint64_t sub_1B1D400B0()
{
  sub_1B1D7C5CC();
  ASImportableCredential.BasicAuthentication.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D400F4(uint64_t a1)
{
  sub_1B1D7C5CC();
  ASImportableCredential.BasicAuthentication.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.CreditCard.number.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.CreditCard.number.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = v6;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.fullName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.CreditCard.fullName.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  v4 = *a1;
  *(v1 + 72) = a1[1];
  *(v1 + 56) = v4;
  result = v6;
  *(v1 + 88) = v6;
  *(v1 + 104) = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.cardType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.CreditCard.cardType.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160));
  v4 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v4;
  result = v6;
  *(v1 + 144) = v6;
  *(v1 + 160) = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.verificationNumber.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.CreditCard.verificationNumber.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216));
  v4 = *a1;
  *(v1 + 184) = a1[1];
  *(v1 + 168) = v4;
  result = v6;
  *(v1 + 200) = v6;
  *(v1 + 216) = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.pin.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.CreditCard.pin.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 224), *(v1 + 232), *(v1 + 240), *(v1 + 248), *(v1 + 256), *(v1 + 264), *(v1 + 272));
  v4 = *(a1 + 16);
  *(v1 + 224) = *a1;
  *(v1 + 240) = v4;
  result = v6;
  *(v1 + 256) = v6;
  *(v1 + 272) = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.expiryDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  v7 = v1[40];
  v8 = v1[41];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.CreditCard.expiryDate.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 280), *(v1 + 288), *(v1 + 296), *(v1 + 304), *(v1 + 312), *(v1 + 320), *(v1 + 328));
  v4 = *(a1 + 16);
  *(v1 + 280) = *a1;
  *(v1 + 296) = v4;
  result = v6;
  *(v1 + 312) = v6;
  *(v1 + 328) = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.validFrom.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[42];
  v3 = v1[43];
  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.CreditCard.validFrom.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 336), *(v1 + 344), *(v1 + 352), *(v1 + 360), *(v1 + 368), *(v1 + 376), *(v1 + 384));
  v4 = *(a1 + 16);
  *(v1 + 336) = *a1;
  *(v1 + 352) = v4;
  result = v6;
  *(v1 + 368) = v6;
  *(v1 + 384) = v3;
  return result;
}

__n128 ASImportableCredential.CreditCard.init(number:fullName:cardType:verificationNumber:pin:expiryDate:validFrom:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v26 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *a2;
  v27 = a2[6];
  v28 = a2[5];
  v29 = *a3;
  v30 = a3[6];
  v31 = a3[5];
  v32 = *a4;
  v33 = a4[6];
  v34 = a4[5];
  v35 = *a5;
  v36 = a5[6];
  v37 = a5[5];
  v38 = *a6;
  v39 = a6[6];
  v40 = a6[5];
  v44 = a7[5];
  v42 = *a7;
  v43 = a7[6];
  v41 = a8 + 344;
  *(a8 + 384) = 0;
  *(a8 + 352) = 0u;
  *(a8 + 368) = 0u;
  *(a8 + 320) = 0u;
  *(a8 + 336) = 0u;
  *(a8 + 288) = 0u;
  *(a8 + 304) = 0u;
  *(a8 + 256) = 0u;
  *(a8 + 272) = 0u;
  *(a8 + 224) = 0u;
  *(a8 + 240) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *a8 = 0u;
  *(a8 + 16) = 0u;
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  v18 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v18;
  *(a8 + 32) = v26;
  *(a8 + 48) = v16;
  sub_1B1D0D630(*(a8 + 56), *(a8 + 64), *(a8 + 72), *(a8 + 80), *(a8 + 88), *(a8 + 96), *(a8 + 104));
  *(a8 + 56) = v17;
  v19 = *(a2 + 3);
  *(a8 + 64) = *(a2 + 1);
  *(a8 + 80) = v19;
  *(a8 + 96) = v28;
  *(a8 + 104) = v27;
  sub_1B1D0D630(*(a8 + 112), *(a8 + 120), *(a8 + 128), *(a8 + 136), *(a8 + 144), *(a8 + 152), *(a8 + 160));
  *(a8 + 112) = v29;
  v20 = *(a3 + 1);
  *(a8 + 136) = *(a3 + 3);
  *(a8 + 120) = v20;
  *(a8 + 152) = v31;
  *(a8 + 160) = v30;
  sub_1B1D0D630(*(a8 + 168), *(a8 + 176), *(a8 + 184), *(a8 + 192), *(a8 + 200), *(a8 + 208), *(a8 + 216));
  *(a8 + 168) = v32;
  v21 = *(a4 + 3);
  *(a8 + 176) = *(a4 + 1);
  *(a8 + 192) = v21;
  *(a8 + 208) = v34;
  *(a8 + 216) = v33;
  sub_1B1D0D630(*(a8 + 224), *(a8 + 232), *(a8 + 240), *(a8 + 248), *(a8 + 256), *(a8 + 264), *(a8 + 272));
  *(a8 + 224) = v35;
  v22 = *(a5 + 1);
  *(a8 + 248) = *(a5 + 3);
  *(a8 + 232) = v22;
  *(a8 + 264) = v37;
  *(a8 + 272) = v36;
  sub_1B1D0D630(*(a8 + 280), *(a8 + 288), *(a8 + 296), *(a8 + 304), *(a8 + 312), *(a8 + 320), *(a8 + 328));
  *(a8 + 280) = v38;
  v23 = *(a6 + 3);
  *(a8 + 288) = *(a6 + 1);
  *(a8 + 304) = v23;
  *(a8 + 320) = v40;
  *(a8 + 328) = v39;
  sub_1B1D0D630(*(a8 + 336), *(a8 + 344), *(a8 + 352), *(a8 + 360), *(a8 + 368), *(a8 + 376), *(a8 + 384));
  *(a8 + 336) = v42;
  result = *(a7 + 1);
  v25 = *(a7 + 3);
  *v41 = result;
  *(v41 + 16) = v25;
  *(a8 + 376) = v44;
  *(a8 + 384) = v43;
  return result;
}

uint64_t sub_1B1D40844()
{
  v1 = *v0;
  v2 = 0x7265626D756ELL;
  v3 = 0x6144797269707865;
  if (v1 != 5)
  {
    v3 = 0x6F724664696C6176;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 7235952;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D614E6C6C7566;
  if (v1 != 1)
  {
    v5 = 0x6570795464726163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B1D40920@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1D6C064(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B1D40948(uint64_t a1)
{
  v2 = sub_1B1D66650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D40984(uint64_t a1)
{
  v2 = sub_1B1D66650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.CreditCard.encode(to:)(void *a1)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A08, &qword_1B1D88E80);
  v92 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v43 - v3;
  v4 = v1[1];
  v88 = *v1;
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v85 = v1[7];
  v86 = v9;
  v10 = v1[8];
  v83 = v1[9];
  v84 = v10;
  v11 = v1[10];
  v81 = v1[11];
  v82 = v11;
  v12 = v1[12];
  v79 = v1[13];
  v80 = v12;
  v13 = v1[15];
  v78 = v1[14];
  v77 = v13;
  v14 = v1[17];
  v76 = v1[16];
  v75 = v14;
  v15 = v1[19];
  v74 = v1[18];
  v73 = v15;
  v16 = v1[21];
  v72 = v1[20];
  v65 = v16;
  v17 = v1[23];
  v66 = v1[22];
  v67 = v17;
  v18 = v1[25];
  v68 = v1[24];
  v71 = v18;
  v19 = v1[27];
  v70 = v1[26];
  v69 = v19;
  v20 = v1[29];
  v58 = v1[28];
  v59 = v20;
  v21 = v1[31];
  v60 = v1[30];
  v64 = v21;
  v22 = v1[33];
  v63 = v1[32];
  v62 = v22;
  v23 = v1[35];
  v61 = v1[34];
  v51 = v23;
  v24 = v1[37];
  v52 = v1[36];
  v53 = v24;
  v25 = v1[39];
  v57 = v1[38];
  v56 = v25;
  v26 = v1[41];
  v55 = v1[40];
  v54 = v26;
  v27 = v1[43];
  v44 = v1[42];
  v45 = v27;
  v28 = v1[45];
  v46 = v1[44];
  v47 = v28;
  v29 = v1[47];
  v48 = v1[46];
  v50 = v29;
  v49 = v1[48];
  v30 = a1[3];
  v87 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v31 = v88;
  sub_1B1D66328(v88, v4, v5, v6, v8, v7, v9);
  sub_1B1D66650();
  v32 = v89;
  v33 = v90;
  sub_1B1D7C63C();
  v93 = v31;
  v94 = v4;
  v95 = v5;
  v96 = v6;
  v34 = v32;
  v97 = v8;
  v98 = v7;
  v99 = v86;
  v100 = 0;
  v35 = sub_1B1D663C8();
  v36 = v91;
  sub_1B1D7C48C();
  if (v36)
  {
    sub_1B1D0D630(v93, v94, v95, v96, v97, v98, v99);
    return (*(v92 + 8))(v32, v33);
  }

  else
  {
    v38 = v75;
    v39 = v76;
    v40 = v77;
    v41 = v78;
    v42 = v92;
    sub_1B1D0D630(v93, v94, v95, v96, v97, v98, v99);
    v93 = v85;
    v94 = v84;
    v95 = v83;
    v96 = v82;
    v97 = v81;
    v98 = v80;
    v99 = v79;
    v100 = 1;
    sub_1B1D66328(v85, v84, v83, v82, v81, v80, v79);
    v91 = v35;
    sub_1B1D7C48C();
    sub_1B1D0D630(v93, v94, v95, v96, v97, v98, v99);
    v93 = v41;
    v94 = v40;
    v95 = v39;
    v96 = v38;
    v97 = v74;
    v98 = v73;
    v99 = v72;
    v100 = 2;
    sub_1B1D66328(v41, v40, v39, v38, v74, v73, v72);
    sub_1B1D7C48C();
    sub_1B1D0D630(v93, v94, v95, v96, v97, v98, v99);
    v93 = v65;
    v94 = v66;
    v95 = v67;
    v96 = v68;
    v97 = v71;
    v98 = v70;
    v99 = v69;
    v100 = 3;
    sub_1B1D66328(v65, v66, v67, v68, v71, v70, v69);
    sub_1B1D7C48C();
    sub_1B1D0D630(v93, v94, v95, v96, v97, v98, v99);
    v93 = v58;
    v94 = v59;
    v95 = v60;
    v96 = v64;
    v97 = v63;
    v98 = v62;
    v99 = v61;
    v100 = 4;
    sub_1B1D66328(v58, v59, v60, v64, v63, v62, v61);
    sub_1B1D7C48C();
    sub_1B1D0D630(v93, v94, v95, v96, v97, v98, v99);
    v93 = v51;
    v94 = v52;
    v95 = v53;
    v96 = v57;
    v97 = v56;
    v98 = v55;
    v99 = v54;
    v100 = 5;
    sub_1B1D66328(v51, v52, v53, v57, v56, v55, v54);
    sub_1B1D7C48C();
    sub_1B1D0D630(v93, v94, v95, v96, v97, v98, v99);
    v93 = v44;
    v94 = v45;
    v95 = v46;
    v96 = v47;
    v97 = v48;
    v98 = v50;
    v99 = v49;
    v100 = 6;
    sub_1B1D66328(v44, v45, v46, v47, v48, v50, v49);
    sub_1B1D7C48C();
    sub_1B1D0D630(v93, v94, v95, v96, v97, v98, v99);
    return (*(v42 + 8))(v34, v33);
  }
}

uint64_t ASImportableCredential.CreditCard.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[4];
  v5 = v2[7];
  v6 = v2[8];
  v8 = v2[9];
  v7 = v2[10];
  v9 = v2[11];
  v76 = v2[12];
  v10 = v2[13];
  v96 = v2[14];
  v79 = v2[16];
  v80 = v2[17];
  v105 = v2[18];
  v77 = v2[20];
  v97 = v2[22];
  v106 = v2[25];
  v104 = v2[27];
  v11 = v2[29];
  v12 = v2[31];
  v109 = v2[32];
  v86 = v2[33];
  v84 = v2[34];
  v100 = v2[35];
  v107 = v2[36];
  v95 = v2[39];
  v89 = v2[38];
  v90 = v2[40];
  v87 = v2[41];
  v102 = v2[44];
  v103 = v2[45];
  v110 = v2[46];
  v92 = v2[47];
  v108 = v2[48];
  v91 = v2[43];
  v101 = v2[42];
  v88 = v2[37];
  v85 = v2[30];
  v98 = v2[28];
  v99 = v11;
  v82 = v2[23];
  v83 = v2[26];
  v93 = v2[21];
  v94 = v2[24];
  v81 = v2[19];
  v78 = v2[15];
  if (!v4)
  {
    sub_1B1D7C5EC();
    if (v9)
    {
      goto LABEL_16;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v19 = v109;
    if (v105)
    {
      goto LABEL_22;
    }

LABEL_6:
    sub_1B1D7C5EC();
    v20 = v107;
    v21 = v104;
    v23 = v93;
    v22 = v94;
    if (v106)
    {
      goto LABEL_29;
    }

LABEL_7:
    sub_1B1D7C5EC();
    if (v19)
    {
      goto LABEL_35;
    }

LABEL_8:
    sub_1B1D7C5EC();
    v24 = v95;
    if (v95)
    {
      goto LABEL_41;
    }

    goto LABEL_9;
  }

  v71 = v2[13];
  v72 = v2[7];
  v73 = v2[9];
  v74 = v2[10];
  v75 = v2[31];
  v14 = *v2;
  v13 = v2[1];
  v15 = v2[2];
  v16 = v2[3];
  v17 = v2[5];
  v18 = v2[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v14, v13);

  if (v13 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v15);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v18)
  {
    sub_1B1D7BE7C();
    v26 = v14;
    v27 = v13;
    v28 = v15;
    v29 = v16;
    v30 = v4;
    v31 = v17;
    v32 = v18;
  }

  else
  {
    v26 = v14;
    v27 = v13;
    v28 = v15;
    v29 = v16;
    v30 = v4;
    v31 = v17;
    v32 = 0;
  }

  sub_1B1D0D630(v26, v27, v28, v29, v30, v31, v32);
  v7 = v74;
  v12 = v75;
  v11 = v99;
  v5 = v72;
  v8 = v73;
  v10 = v71;
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_16:
  sub_1B1D7C5EC();
  v19 = v109;
  sub_1B1D7C5EC();
  sub_1B1C91B94(v5, v6);

  if (v6 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v8);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v10)
  {
    sub_1B1D7BE7C();
    v33 = v5;
    v34 = v6;
    v35 = v8;
    v36 = v7;
    v37 = v9;
    v19 = v109;
    v38 = v76;
    v39 = v10;
  }

  else
  {
    v33 = v5;
    v34 = v6;
    v35 = v8;
    v36 = v7;
    v37 = v9;
    v38 = v76;
    v39 = 0;
  }

  sub_1B1D0D630(v33, v34, v35, v36, v37, v38, v39);
  if (!v105)
  {
    goto LABEL_6;
  }

LABEL_22:
  sub_1B1D7C5EC();
  v20 = v107;
  v21 = v104;
  sub_1B1D7C5EC();
  if (v78 >> 60 == 15)
  {
    v40 = v78;
    sub_1B1C91B94(v96, v78);
    v41 = v77;

    v42 = v105;
  }

  else
  {
    sub_1B1C91B94(v96, v78);
    v41 = v77;

    v42 = v105;

    v40 = v78;
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v79);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v41)
  {
    sub_1B1D7BE7C();
    v43 = v96;
    v44 = v40;
    v45 = v79;
    v46 = v80;
    v47 = v42;
    v48 = v81;
    v49 = v41;
  }

  else
  {
    v43 = v96;
    v44 = v40;
    v45 = v79;
    v46 = v80;
    v47 = v42;
    v48 = v81;
    v49 = 0;
  }

  sub_1B1D0D630(v43, v44, v45, v46, v47, v48, v49);
  v19 = v109;
  v11 = v99;
  v23 = v93;
  v22 = v94;
  if (!v106)
  {
    goto LABEL_7;
  }

LABEL_29:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v23, v97);

  if (v97 >> 60 != 15)
  {
    v21 = v104;
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v82);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v21)
  {
    sub_1B1D7BE7C();
    v50 = v23;
    v51 = v97;
    v52 = v82;
    v53 = v22;
    v54 = v106;
    v55 = v83;
    v56 = v21;
  }

  else
  {
    v50 = v23;
    v51 = v97;
    v52 = v82;
    v53 = v22;
    v54 = v106;
    v55 = v83;
    v56 = 0;
  }

  sub_1B1D0D630(v50, v51, v52, v53, v54, v55, v56);
  v20 = v107;
  if (!v19)
  {
    goto LABEL_8;
  }

LABEL_35:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v98, v11);

  if (v11 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v85);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v84)
  {
    sub_1B1D7BE7C();
    v57 = v98;
    v58 = v11;
    v59 = v85;
    v60 = v12;
    v61 = v19;
    v62 = v86;
    v63 = v84;
  }

  else
  {
    v57 = v98;
    v58 = v11;
    v59 = v85;
    v60 = v12;
    v61 = v19;
    v62 = v86;
    v63 = 0;
  }

  sub_1B1D0D630(v57, v58, v59, v60, v61, v62, v63);
  v24 = v95;
  if (v95)
  {
LABEL_41:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v100, v20);

    if (v20 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888(a1, v88);
    sub_1B1D7BE7C();
    if (v87)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v100, v20, v88, v89, v24, v90, v87);
      if (v110)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v100, v20, v88, v89, v24, v90, 0);
      if (v110)
      {
        goto LABEL_45;
      }
    }

    return sub_1B1D7C5EC();
  }

LABEL_9:
  sub_1B1D7C5EC();
  if (!v110)
  {
    return sub_1B1D7C5EC();
  }

LABEL_45:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v101, v91);

  if (v91 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v102);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v108)
  {
    sub_1B1D7BE7C();
    v64 = v101;
    v65 = v102;
    v66 = v91;
    v67 = v103;
    v68 = v110;
    v69 = v92;
    v70 = v108;
  }

  else
  {
    v64 = v101;
    v65 = v102;
    v66 = v91;
    v67 = v103;
    v68 = v110;
    v69 = v92;
    v70 = 0;
  }

  return sub_1B1D0D630(v64, v66, v65, v67, v68, v69, v70);
}

uint64_t ASImportableCredential.CreditCard.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.CreditCard.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.CreditCard.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A18, &qword_1B1D88E88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B1D66650();
  sub_1B1D7C62C();
  if (v2)
  {
    v39 = v2;
    v52 = 0;
    v53 = 0;
    v49 = 0;
    v50 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v54 = 0;
    v55 = 0;
    v47 = 0;
    v48 = 0;
    v60 = 0;
    v61 = 0;
    v57 = 0;
    v58 = 0;
    v51 = 0;
    v46 = 0;
    v63 = 0uLL;
    v62 = 0;
    v59 = 0;
    v56 = 0;
    v38 = 0;
    v36 = 0;
    v115 = 0;
    v64 = 0;
    v65 = 0;
    v35 = 0;
    v40 = 0u;
    v34 = 0u;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    *&v75 = 0;
    *(&v75 + 1) = v35;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = v64;
    v82 = v65;
    v83 = v115;
    v84 = v36;
    v85 = v38;
    v86 = v56;
    v87 = v58;
    v88 = v59;
    v89 = v61;
    v90 = v62;
    v91 = v63;
    v92 = v46;
    v93 = v48;
    v94 = v51;
    v95 = v53;
    v96 = v54;
    v97 = v57;
    v98 = v60;
    v99 = v42;
    v100 = v44;
    v101 = v47;
    v102 = v50;
    v104 = v40;
    v105 = v34;
    v103 = v55;
    v106 = v41;
    v107 = v43;
    v108 = v45;
    v109 = v49;
    v110 = v52;
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
  }

  else
  {
    LOBYTE(v66[0]) = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v11 = *(&v75 + 1);
    v29 = v75;
    v30 = v76;
    v31 = v77;
    v32 = v78;
    v33 = v79;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v66[0]) = 1;
    sub_1B1D7C3FC();
    v35 = v11;
    *&v34 = a2;
    v28 = v75;
    v64 = v76;
    v65 = v77;
    v115 = v78;
    v38 = *(&v79 + 1);
    v12 = v79;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v66[0]) = 2;
    sub_1B1D7C3FC();
    v36 = v12;
    v58 = *(&v75 + 1);
    v56 = v75;
    v59 = v76;
    v61 = v77;
    v62 = v78;
    v63 = v79;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v66[0]) = 3;
    sub_1B1D7C3FC();
    v48 = *(&v75 + 1);
    v46 = v75;
    v51 = v76;
    v53 = v77;
    v54 = v78;
    v60 = *(&v79 + 1);
    v57 = v79;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v66[0]) = 4;
    sub_1B1D7C3FC();
    v44 = *(&v75 + 1);
    v42 = v75;
    v47 = v76;
    v50 = v77;
    v55 = v78;
    v40 = v79;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v66[0]) = 5;
    sub_1B1D7C3FC();
    v27 = v75;
    v41 = v76;
    v43 = v77;
    v45 = v78;
    v52 = *(&v79 + 1);
    v49 = v79;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v67 = 6;
    sub_1B1D7C3FC();
    v39 = 0;
    (*(v6 + 8))(v8, v5);
    v25 = v69;
    v26 = v68;
    v23 = v71;
    v24 = v70;
    v21 = v73;
    v22 = v72;
    v20 = v74;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    *&v66[33] = v40;
    v13 = v29;
    v14 = v30;
    v66[0] = v29;
    v66[1] = v11;
    v16 = v31;
    v15 = v32;
    v66[2] = v30;
    v66[3] = v31;
    v17 = v33;
    v66[4] = v32;
    *&v66[5] = v33;
    *&v66[7] = v28;
    v66[9] = v64;
    v66[10] = v65;
    v66[11] = v115;
    v66[12] = v12;
    v18 = v38;
    v66[13] = v38;
    v66[14] = v56;
    v66[15] = v58;
    v66[16] = v59;
    v66[17] = v61;
    v66[18] = v62;
    *&v66[19] = v63;
    v66[21] = v46;
    v66[22] = v48;
    v66[23] = v51;
    v66[24] = v53;
    v66[25] = v54;
    v66[26] = v57;
    v66[27] = v60;
    v66[28] = v42;
    v66[29] = v44;
    v66[30] = v47;
    v66[31] = v50;
    v66[32] = v55;
    *&v66[35] = v27;
    v66[37] = v41;
    v66[38] = v43;
    v66[39] = v45;
    v66[40] = v49;
    v66[41] = v52;
    v66[42] = v26;
    v66[43] = v25;
    v66[44] = v24;
    v66[45] = v23;
    v66[46] = v22;
    v66[47] = v21;
    v66[48] = v20;
    memcpy(v34, v66, 0x188uLL);
    sub_1B1D666D4(v66, &v75);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    *&v75 = v13;
    *(&v75 + 1) = v11;
    v76 = v14;
    v77 = v16;
    v78 = v15;
    v79 = v17;
    v80 = v28;
    v81 = v64;
    v82 = v65;
    v83 = v115;
    v84 = v36;
    v85 = v18;
    v86 = v56;
    v87 = v58;
    v88 = v59;
    v89 = v61;
    v90 = v62;
    v91 = v63;
    v92 = v46;
    v93 = v48;
    v94 = v51;
    v95 = v53;
    v96 = v54;
    v97 = v57;
    v98 = v60;
    v99 = v42;
    v100 = v44;
    v101 = v47;
    v102 = v50;
    v104 = v40;
    v103 = v55;
    v105 = v27;
    v106 = v41;
    v107 = v43;
    v108 = v45;
    v109 = v49;
    v110 = v52;
    *&v111 = v26;
    *(&v111 + 1) = v25;
    *&v112 = v24;
    *(&v112 + 1) = v23;
    *&v113 = v22;
    *(&v113 + 1) = v21;
    v114 = v20;
  }

  return sub_1B1D666A4(&v75);
}

uint64_t sub_1B1D425C0()
{
  sub_1B1D7C5CC();
  ASImportableCredential.CreditCard.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D42604(uint64_t a1)
{
  sub_1B1D7C5CC();
  ASImportableCredential.CreditCard.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.CustomFields.id.getter()
{
  v1 = *v0;
  sub_1B1C91B94(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableCredential.CustomFields.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1C91AE4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableCredential.CustomFields.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ASImportableCredential.CustomFields.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASImportableCredential.CustomFields.fields.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1B1D427AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v4 = 0x73646C656966;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (*a2 != 1)
  {
    v8 = 0x73646C656966;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B1D7C50C();
  }

  return v11 & 1;
}

uint64_t sub_1B1D42898()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D42928(uint64_t a1)
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D429A4(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

unint64_t sub_1B1D42A30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6C2C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1D42A60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v5 = 0x73646C656966;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B1D42AAC()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 0x73646C656966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_1B1D42AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6C2C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D42B1C(uint64_t a1)
{
  v2 = sub_1B1D6670C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D42B58(uint64_t a1)
{
  v2 = sub_1B1D6670C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.CustomFields.init(id:label:fields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_1B1C91AE4(0, 0xF000000000000000);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ASImportableCredential.CustomFields.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A20, &qword_1B1D88E90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6670C();
  sub_1B1D7C62C();
  if (!v2)
  {
    v27 = 0;
    sub_1B1D7C3DC();
    if (v9)
    {
      v10 = sub_1B1D7B4AC();
      if (v11 >> 60 == 15)
      {
        v12 = sub_1B1D7C2BC();
        swift_allocError();
        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
        *v14 = MEMORY[0x1E6969080];
        sub_1B1D7C3CC();
        sub_1B1D7C2AC();
        (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6AF8], v12);
        swift_willThrow();
        (*(v6 + 8))(v8, v5);
        return __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v15 = v10;
      v16 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 0xF000000000000000;
    }

    v26 = 1;
    v22 = sub_1B1D7C3DC();
    v23 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A30, &qword_1B1D88E98);
    v25 = 2;
    sub_1B1D66760();
    sub_1B1D7C43C();
    (*(v6 + 8))(v8, v5);
    v19 = v24;
    sub_1B1C91AE4(0, 0xF000000000000000);
    *a2 = v15;
    a2[1] = v16;
    v20 = v23;
    a2[2] = v22;
    a2[3] = v20;
    a2[4] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableCredential.CustomFields.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A40, &qword_1B1D88EA0);
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v8 = v1[1];
  v7 = v1[2];
  v9 = v1[4];
  v14 = v1[3];
  v15 = v7;
  v13 = v9;
  if (v8 >> 60 != 15)
  {
    v10 = *v1;
    sub_1B1CE111C(v10, v8);
    sub_1B1D7B4BC();
    sub_1B1C91AE4(v10, v8);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6670C();
  sub_1B1D7C63C();
  v20 = 0;
  sub_1B1D7C47C();
  if (v2)
  {
    (*(v16 + 8))(v6, v4);
  }

  else
  {

    v19 = 1;
    sub_1B1D7C47C();
    v17 = v13;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A30, &qword_1B1D88E98);
    sub_1B1D667E4();
    sub_1B1D7C4CC();
    return (*(v16 + 8))(v6, v4);
  }
}

uint64_t ASImportableCredential.CustomFields.hash(into:)(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  if (v1[1] >> 60 == 15)
  {
    sub_1B1D7C5EC();
    if (v4)
    {
LABEL_3:
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B1D7C5EC();
    sub_1B1D7B4FC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1B1D7C5EC();
LABEL_6:

  return sub_1B1D58148(a1, v3);
}

uint64_t ASImportableCredential.CustomFields.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[4];
  sub_1B1D7C5CC();
  if (v1 >> 60 != 15)
  {
    sub_1B1D7C5EC();
    sub_1B1D7B4FC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B1D7C5EC();
    goto LABEL_6;
  }

  sub_1B1D7C5EC();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
LABEL_6:
  sub_1B1D58148(v5, v3);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D4332C(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  if (v1[1] >> 60 == 15)
  {
    sub_1B1D7C5EC();
    if (v4)
    {
LABEL_3:
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B1D7C5EC();
    sub_1B1D7B4FC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1B1D7C5EC();
LABEL_6:

  return sub_1B1D58148(a1, v3);
}

uint64_t sub_1B1D433F0(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[3];
  v4 = v1[4];
  sub_1B1D7C5CC();
  if (v2 >> 60 != 15)
  {
    sub_1B1D7C5EC();
    sub_1B1D7B4FC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B1D7C5EC();
    goto LABEL_6;
  }

  sub_1B1D7C5EC();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
LABEL_6:
  sub_1B1D58148(v6, v4);
  return sub_1B1D7C61C();
}

unint64_t sub_1B1D435D4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656D614E6C6C7566;
    v6 = 0x7461446575737369;
    if (a1 != 2)
    {
      v6 = 0x6144797269707865;
    }

    if (a1)
    {
      v5 = 0x7461446874726962;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7972746E756F63;
    v2 = 0x4E65736E6563696CLL;
    if (a1 != 7)
    {
      v2 = 0x4365736E6563696CLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x726F746972726574;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B1D43724@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1D6C30C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B1D4374C(uint64_t a1)
{
  v2 = sub_1B1D66868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D43788(uint64_t a1)
{
  v2 = sub_1B1D66868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.GeneratedPassword.password.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ASImportableCredential.GeneratedPassword.password.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ASImportableCredential.GeneratedPassword.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B1D7C50C();
  }
}

uint64_t sub_1B1D439C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1D7C50C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1D43A4C(uint64_t a1)
{
  v2 = sub_1B1D66924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D43A88(uint64_t a1)
{
  v2 = sub_1B1D66924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.GeneratedPassword.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A68, &qword_1B1D88EB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66924();
  sub_1B1D7C63C();
  sub_1B1D7C49C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ASImportableCredential.GeneratedPassword.hashValue.getter()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.GeneratedPassword.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A78, &qword_1B1D88EC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66924();
  sub_1B1D7C62C();
  if (!v2)
  {
    v9 = sub_1B1D7C40C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B1D43DE0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A68, &qword_1B1D88EB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66924();
  sub_1B1D7C63C();
  sub_1B1D7C49C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B1D43F1C()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D43F70(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D43FB8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B1D7C50C();
  }
}

uint64_t ASImportableCredential.IdentityDocument.issuingCountry.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.issuingCountry.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = v6;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.documentNumber.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.documentNumber.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  v4 = *a1;
  *(v1 + 72) = a1[1];
  *(v1 + 56) = v4;
  result = v6;
  *(v1 + 88) = v6;
  *(v1 + 104) = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.identificationNumber.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.identificationNumber.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160));
  v4 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v4;
  result = v6;
  *(v1 + 144) = v6;
  *(v1 + 160) = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.nationality.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.nationality.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216));
  v4 = *a1;
  *(v1 + 184) = a1[1];
  *(v1 + 168) = v4;
  result = v6;
  *(v1 + 200) = v6;
  *(v1 + 216) = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.fullName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.fullName.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 224), *(v1 + 232), *(v1 + 240), *(v1 + 248), *(v1 + 256), *(v1 + 264), *(v1 + 272));
  v4 = *(a1 + 16);
  *(v1 + 224) = *a1;
  *(v1 + 240) = v4;
  result = v6;
  *(v1 + 256) = v6;
  *(v1 + 272) = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.birthDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  v7 = v1[40];
  v8 = v1[41];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.birthDate.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 280), *(v1 + 288), *(v1 + 296), *(v1 + 304), *(v1 + 312), *(v1 + 320), *(v1 + 328));
  v4 = *(a1 + 16);
  *(v1 + 280) = *a1;
  *(v1 + 296) = v4;
  result = v6;
  *(v1 + 312) = v6;
  *(v1 + 328) = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.birthPlace.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[42];
  v3 = v1[43];
  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.birthPlace.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 336), *(v1 + 344), *(v1 + 352), *(v1 + 360), *(v1 + 368), *(v1 + 376), *(v1 + 384));
  v4 = *(a1 + 16);
  *(v1 + 336) = *a1;
  *(v1 + 352) = v4;
  result = v6;
  *(v1 + 368) = v6;
  *(v1 + 384) = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.sex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[49];
  v3 = v1[50];
  v4 = v1[51];
  v5 = v1[52];
  v6 = v1[53];
  v7 = v1[54];
  v8 = v1[55];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.sex.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 392), *(v1 + 400), *(v1 + 408), *(v1 + 416), *(v1 + 424), *(v1 + 432), *(v1 + 440));
  v4 = *(a1 + 16);
  *(v1 + 392) = *a1;
  *(v1 + 408) = v4;
  result = v6;
  *(v1 + 424) = v6;
  *(v1 + 440) = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.issueDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[56];
  v3 = v1[57];
  v4 = v1[58];
  v5 = v1[59];
  v6 = v1[60];
  v7 = v1[61];
  v8 = v1[62];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.issueDate.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 448), *(v1 + 456), *(v1 + 464), *(v1 + 472), *(v1 + 480), *(v1 + 488), *(v1 + 496));
  v4 = *(a1 + 16);
  *(v1 + 448) = *a1;
  *(v1 + 464) = v4;
  result = v6;
  *(v1 + 480) = v6;
  *(v1 + 496) = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.expiryDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[63];
  v3 = v1[64];
  v4 = v1[65];
  v5 = v1[66];
  v6 = v1[67];
  v7 = v1[68];
  v8 = v1[69];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.expiryDate.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 504), *(v1 + 512), *(v1 + 520), *(v1 + 528), *(v1 + 536), *(v1 + 544), *(v1 + 552));
  v4 = *(a1 + 16);
  *(v1 + 504) = *a1;
  *(v1 + 520) = v4;
  result = v6;
  *(v1 + 536) = v6;
  *(v1 + 552) = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.issuingAuthority.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[70];
  v3 = v1[71];
  v4 = v1[72];
  v5 = v1[73];
  v6 = v1[74];
  v7 = v1[75];
  v8 = v1[76];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.IdentityDocument.issuingAuthority.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 560), *(v1 + 568), *(v1 + 576), *(v1 + 584), *(v1 + 592), *(v1 + 600), *(v1 + 608));
  v4 = *(a1 + 16);
  *(v1 + 560) = *a1;
  *(v1 + 576) = v4;
  result = v6;
  *(v1 + 592) = v6;
  *(v1 + 608) = v3;
  return result;
}

__n128 ASImportableCredential.IdentityDocument.init(issuingCountry:documentNumber:identificationNumber:nationality:fullName:birthDate:birthPlace:sex:issueDate:expiryDate:issuingAuthority:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v34 = *(a1 + 32);
  v20 = *(a1 + 48);
  v21 = (a9 + 344);
  v35 = *a2;
  v37 = a2[5];
  v36 = a2[6];
  v38 = *a3;
  v40 = a3[5];
  v39 = a3[6];
  v41 = *a4;
  v43 = a4[5];
  v42 = a4[6];
  v44 = *a5;
  v46 = a5[5];
  v45 = a5[6];
  v47 = *a6;
  v49 = a6[5];
  v48 = a6[6];
  v50 = *a7;
  v52 = a7[5];
  v51 = a7[6];
  v54 = *a8;
  v56 = a8[5];
  v55 = a8[6];
  v57 = *a10;
  v59 = a10[5];
  v58 = a10[6];
  v62 = a11[5];
  v60 = *a11;
  v61 = a11[6];
  v65 = a12[5];
  v63 = *a12;
  v64 = a12[6];
  bzero(a9, 0x268uLL);
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  v22 = *(a1 + 16);
  *a9 = *a1;
  a9[1] = v22;
  a9[2] = v34;
  *(a9 + 6) = v20;
  sub_1B1D0D630(*(a9 + 7), *(a9 + 8), *(a9 + 9), *(a9 + 10), *(a9 + 11), *(a9 + 12), *(a9 + 13));
  *(a9 + 7) = v35;
  v23 = *(a2 + 3);
  a9[4] = *(a2 + 1);
  a9[5] = v23;
  *(a9 + 12) = v37;
  *(a9 + 13) = v36;
  sub_1B1D0D630(*(a9 + 14), *(a9 + 15), *(a9 + 16), *(a9 + 17), *(a9 + 18), *(a9 + 19), *(a9 + 20));
  *(a9 + 14) = v38;
  v24 = *(a3 + 1);
  *(a9 + 136) = *(a3 + 3);
  *(a9 + 120) = v24;
  *(a9 + 19) = v40;
  *(a9 + 20) = v39;
  sub_1B1D0D630(*(a9 + 21), *(a9 + 22), *(a9 + 23), *(a9 + 24), *(a9 + 25), *(a9 + 26), *(a9 + 27));
  *(a9 + 21) = v41;
  v25 = *(a4 + 3);
  a9[11] = *(a4 + 1);
  a9[12] = v25;
  *(a9 + 26) = v43;
  *(a9 + 27) = v42;
  sub_1B1D0D630(*(a9 + 28), *(a9 + 29), *(a9 + 30), *(a9 + 31), *(a9 + 32), *(a9 + 33), *(a9 + 34));
  *(a9 + 28) = v44;
  v26 = *(a5 + 1);
  *(a9 + 248) = *(a5 + 3);
  *(a9 + 232) = v26;
  *(a9 + 33) = v46;
  *(a9 + 34) = v45;
  sub_1B1D0D630(*(a9 + 35), *(a9 + 36), *(a9 + 37), *(a9 + 38), *(a9 + 39), *(a9 + 40), *(a9 + 41));
  *(a9 + 35) = v47;
  v27 = *(a6 + 3);
  a9[18] = *(a6 + 1);
  a9[19] = v27;
  *(a9 + 40) = v49;
  *(a9 + 41) = v48;
  sub_1B1D0D630(*(a9 + 42), *(a9 + 43), *(a9 + 44), *(a9 + 45), *(a9 + 46), *(a9 + 47), *(a9 + 48));
  *(a9 + 42) = v50;
  v28 = *(a7 + 3);
  *v21 = *(a7 + 1);
  *(a9 + 360) = v28;
  *(a9 + 47) = v52;
  *(a9 + 48) = v51;
  sub_1B1D0D630(*(a9 + 49), *(a9 + 50), *(a9 + 51), *(a9 + 52), *(a9 + 53), *(a9 + 54), *(a9 + 55));
  *(a9 + 49) = v54;
  v29 = *(a8 + 3);
  a9[25] = *(a8 + 1);
  a9[26] = v29;
  *(a9 + 54) = v56;
  *(a9 + 55) = v55;
  sub_1B1D0D630(*(a9 + 56), *(a9 + 57), *(a9 + 58), *(a9 + 59), *(a9 + 60), *(a9 + 61), *(a9 + 62));
  *(a9 + 56) = v57;
  v30 = *(a10 + 3);
  *(a9 + 456) = *(a10 + 1);
  *(a9 + 472) = v30;
  *(a9 + 61) = v59;
  *(a9 + 62) = v58;
  sub_1B1D0D630(*(a9 + 63), *(a9 + 64), *(a9 + 65), *(a9 + 66), *(a9 + 67), *(a9 + 68), *(a9 + 69));
  *(a9 + 63) = v60;
  v31 = *(a11 + 3);
  a9[32] = *(a11 + 1);
  a9[33] = v31;
  *(a9 + 68) = v62;
  *(a9 + 69) = v61;
  sub_1B1D0D630(*(a9 + 70), *(a9 + 71), *(a9 + 72), *(a9 + 73), *(a9 + 74), *(a9 + 75), *(a9 + 76));
  *(a9 + 70) = v63;
  result = *(a12 + 1);
  v33 = *(a12 + 3);
  *(a9 + 568) = result;
  *(a9 + 584) = v33;
  *(a9 + 75) = v65;
  *(a9 + 76) = v64;
  return result;
}

unint64_t sub_1B1D44B2C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x43676E6975737369;
    v7 = 0xD000000000000014;
    v8 = 0x6C616E6F6974616ELL;
    if (a1 != 3)
    {
      v8 = 0x656D614E6C6C7566;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x746E656D75636F64;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7461446575737369;
    v2 = 0x6144797269707865;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7461446874726962;
    v4 = 0x616C506874726962;
    if (a1 != 6)
    {
      v4 = 7890291;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B1D44CC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1D6C614(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B1D44CFC(uint64_t a1)
{
  v2 = sub_1B1D66978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D44D38(uint64_t a1)
{
  v2 = sub_1B1D66978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.IdentityDocument.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A80, &qword_1B1D88EC8);
  v129 = *(v3 - 8);
  v130 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v127 = &v53 - v4;
  v5 = v1[1];
  v126 = *v1;
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v123 = v1[7];
  v124 = v10;
  v11 = v1[8];
  v121 = v1[9];
  v122 = v11;
  v12 = v1[10];
  v119 = v1[11];
  v120 = v12;
  v13 = v1[12];
  v117 = v1[13];
  v118 = v13;
  v14 = v1[15];
  v116 = v1[14];
  v115 = v14;
  v15 = v1[17];
  v114 = v1[16];
  v113 = v15;
  v16 = v1[19];
  v112 = v1[18];
  v111 = v16;
  v17 = v1[21];
  v110 = v1[20];
  v103 = v17;
  v18 = v1[23];
  v104 = v1[22];
  v105 = v18;
  v19 = v1[25];
  v106 = v1[24];
  v109 = v19;
  v20 = v1[27];
  v108 = v1[26];
  v107 = v20;
  v21 = v1[29];
  v96 = v1[28];
  v97 = v21;
  v22 = v1[31];
  v98 = v1[30];
  v99 = v22;
  v23 = v1[33];
  v102 = v1[32];
  v101 = v23;
  v24 = v1[35];
  v100 = v1[34];
  v89 = v24;
  v25 = v1[37];
  v90 = v1[36];
  v91 = v25;
  v26 = v1[39];
  v92 = v1[38];
  v95 = v26;
  v27 = v1[41];
  v94 = v1[40];
  v93 = v27;
  v28 = v1[43];
  v82 = v1[42];
  v83 = v28;
  v29 = v1[45];
  v84 = v1[44];
  v85 = v29;
  v30 = v1[47];
  v88 = v1[46];
  v87 = v30;
  v31 = v1[49];
  v86 = v1[48];
  v75 = v31;
  v32 = v1[51];
  v76 = v1[50];
  v77 = v32;
  v33 = v1[53];
  v81 = v1[52];
  v80 = v33;
  v34 = v1[55];
  v79 = v1[54];
  v78 = v34;
  v35 = v1[57];
  v68 = v1[56];
  v69 = v35;
  v36 = v1[59];
  v70 = v1[58];
  v74 = v36;
  v37 = v1[61];
  v73 = v1[60];
  v72 = v37;
  v38 = v1[63];
  v71 = v1[62];
  v61 = v38;
  v62 = v1[64];
  v63 = v1[65];
  v67 = v1[66];
  v66 = v1[67];
  v65 = v1[68];
  v64 = v1[69];
  v54 = v1[70];
  v55 = v1[71];
  v56 = v1[72];
  v57 = v1[73];
  v58 = v1[74];
  v60 = v1[75];
  v59 = v1[76];
  v39 = a1[3];
  v125 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  v40 = v126;
  sub_1B1D66328(v126, v5, v6, v7, v9, v8, v10);
  sub_1B1D66978();
  v41 = v127;
  sub_1B1D7C63C();
  v131 = v40;
  v132 = v5;
  v133 = v6;
  v134 = v7;
  v42 = v41;
  v135 = v9;
  v136 = v8;
  v137 = v124;
  v138 = 0;
  v43 = sub_1B1D663C8();
  v44 = v128;
  sub_1B1D7C48C();
  if (v44)
  {
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    return (*(v129 + 8))(v41, v130);
  }

  else
  {
    v46 = v112;
    v47 = v113;
    v48 = v114;
    v49 = v115;
    v50 = v116;
    v51 = v129;
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    v131 = v123;
    v132 = v122;
    v133 = v121;
    v134 = v120;
    v135 = v119;
    v136 = v118;
    v137 = v117;
    v138 = 1;
    sub_1B1D66328(v123, v122, v121, v120, v119, v118, v117);
    v128 = v43;
    sub_1B1D7C48C();
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    v131 = v50;
    v132 = v49;
    v133 = v48;
    v134 = v47;
    v135 = v46;
    v136 = v111;
    v137 = v110;
    v138 = 2;
    sub_1B1D66328(v50, v49, v48, v47, v46, v111, v110);
    sub_1B1D7C48C();
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    v131 = v103;
    v132 = v104;
    v133 = v105;
    v134 = v106;
    v135 = v109;
    v136 = v108;
    v137 = v107;
    v138 = 3;
    sub_1B1D66328(v103, v104, v105, v106, v109, v108, v107);
    sub_1B1D7C48C();
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    v131 = v96;
    v132 = v97;
    v133 = v98;
    v134 = v99;
    v135 = v102;
    v136 = v101;
    v137 = v100;
    v138 = 4;
    sub_1B1D66328(v96, v97, v98, v99, v102, v101, v100);
    sub_1B1D7C48C();
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    v131 = v89;
    v132 = v90;
    v133 = v91;
    v134 = v92;
    v135 = v95;
    v136 = v94;
    v137 = v93;
    v138 = 5;
    sub_1B1D66328(v89, v90, v91, v92, v95, v94, v93);
    sub_1B1D7C48C();
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    v131 = v82;
    v132 = v83;
    v133 = v84;
    v134 = v85;
    v135 = v88;
    v136 = v87;
    v137 = v86;
    v138 = 6;
    sub_1B1D66328(v82, v83, v84, v85, v88, v87, v86);
    sub_1B1D7C48C();
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    v131 = v75;
    v132 = v76;
    v133 = v77;
    v134 = v81;
    v135 = v80;
    v136 = v79;
    v137 = v78;
    v138 = 7;
    sub_1B1D66328(v75, v76, v77, v81, v80, v79, v78);
    sub_1B1D7C48C();
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    v131 = v68;
    v132 = v69;
    v133 = v70;
    v134 = v74;
    v135 = v73;
    v136 = v72;
    v137 = v71;
    v138 = 8;
    sub_1B1D66328(v68, v69, v70, v74, v73, v72, v71);
    sub_1B1D7C48C();
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    v131 = v61;
    v132 = v62;
    v133 = v63;
    v134 = v67;
    v135 = v66;
    v136 = v65;
    v137 = v64;
    v138 = 9;
    sub_1B1D66328(v61, v62, v63, v67, v66, v65, v64);
    sub_1B1D7C48C();
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    v131 = v54;
    v132 = v55;
    v133 = v56;
    v134 = v57;
    v135 = v58;
    v136 = v60;
    v137 = v59;
    v138 = 10;
    sub_1B1D66328(v54, v55, v56, v57, v58, v60, v59);
    v52 = v130;
    sub_1B1D7C48C();
    sub_1B1D0D630(v131, v132, v133, v134, v135, v136, v137);
    return (*(v51 + 8))(v42, v52);
  }
}

uint64_t ASImportableCredential.IdentityDocument.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[4];
  v5 = v2[7];
  v71 = v2[8];
  v72 = v2[9];
  v73 = v2[10];
  v6 = v2[11];
  v74 = v2[12];
  v8 = v2[13];
  v7 = v2[14];
  v10 = v2[15];
  v9 = v2[16];
  v106 = v2[17];
  v127 = v2[18];
  v76 = v2[19];
  v129 = v2[22];
  v115 = v2[23];
  v116 = v2[24];
  v105 = v2[25];
  v78 = v2[26];
  v117 = v2[28];
  v130 = v2[29];
  v80 = v2[30];
  v118 = v2[31];
  v107 = v2[32];
  v81 = v2[33];
  v79 = v2[34];
  v119 = v2[35];
  v131 = v2[36];
  v83 = v2[37];
  v84 = v2[38];
  v134 = v2[39];
  v85 = v2[40];
  v82 = v2[41];
  v120 = v2[42];
  v121 = v2[43];
  v88 = v2[45];
  v128 = v2[46];
  v86 = v2[48];
  v122 = v2[49];
  v132 = v2[50];
  v91 = v2[51];
  v92 = v2[52];
  v108 = v2[53];
  v90 = v2[55];
  v123 = v2[56];
  v96 = v2[58];
  v97 = v2[59];
  v109 = v2[60];
  v94 = v2[62];
  v100 = v2[64];
  v112 = v2[65];
  v124 = v2[66];
  v110 = v2[67];
  v101 = v2[68];
  v99 = v2[69];
  v133 = v2[71];
  v126 = v2[72];
  v135 = v2[74];
  v103 = v2[73];
  v104 = v2[75];
  v102 = v2[76];
  v125 = v2[70];
  v111 = v2[63];
  v98 = v2[61];
  v95 = v2[57];
  v93 = v2[54];
  v89 = v2[47];
  v87 = v2[44];
  v113 = v9;
  v114 = v2[21];
  v77 = v2[27];
  v75 = v2[20];
  if (!v4)
  {
    sub_1B1D7C5EC();
    v17 = v127;
    v18 = v6;
    v19 = v9;
    v20 = v7;
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v21 = v106;
    if (v17)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v67 = v2[13];
  v68 = v2[7];
  v69 = v2[11];
  v70 = v2[15];
  v12 = *v2;
  v11 = v2[1];
  v14 = v2[2];
  v13 = v2[3];
  v16 = v2[5];
  v15 = v2[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v12, v11);

  if (v11 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  v17 = v127;
  sub_1B1D2E888(a1, v14);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v15)
  {
    sub_1B1D7BE7C();
    v22 = v12;
    v23 = v11;
    v24 = v14;
    v25 = v13;
    v26 = v4;
    v27 = v16;
    v28 = v15;
  }

  else
  {
    v22 = v12;
    v23 = v11;
    v24 = v14;
    v25 = v13;
    v26 = v4;
    v27 = v16;
    v28 = 0;
  }

  sub_1B1D0D630(v22, v23, v24, v25, v26, v27, v28);
  v19 = v113;
  v20 = v7;
  v10 = v70;
  v5 = v68;
  v18 = v69;
  v8 = v67;
  if (!v69)
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v5, v71);

  if (v71 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v72);
  sub_1B1D7BE7C();
  if (v8)
  {
    sub_1B1D7C5EC();
    sub_1B1D7BE7C();
    v19 = v113;
    v17 = v127;
    sub_1B1D0D630(v5, v71, v72, v73, v18, v74, v8);
    v21 = v106;
    if (v127)
    {
      goto LABEL_16;
    }

LABEL_21:
    sub_1B1D7C5EC();
    v36 = v107;
    v37 = v105;
    if (v105)
    {
      goto LABEL_32;
    }

LABEL_22:
    sub_1B1D7C5EC();
    if (!v36)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

  sub_1B1D7C5EC();
  sub_1B1D0D630(v5, v71, v72, v73, v18, v74, 0);
  v19 = v113;
  v21 = v106;
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_16:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v20, v10);

  if (v10 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v19);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v75)
  {
    sub_1B1D7BE7C();
    v29 = v20;
    v30 = v10;
    v31 = v19;
    v32 = v21;
    v33 = v17;
    v34 = v76;
    v35 = v75;
  }

  else
  {
    v29 = v20;
    v30 = v10;
    v31 = v19;
    v32 = v21;
    v33 = v17;
    v34 = v76;
    v35 = 0;
  }

  sub_1B1D0D630(v29, v30, v31, v32, v33, v34, v35);
  v37 = v105;
  v36 = v107;
  if (!v105)
  {
    goto LABEL_22;
  }

LABEL_32:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v114, v129);

  if (v129 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v115);
  sub_1B1D7BE7C();
  if (!v77)
  {
    sub_1B1D7C5EC();
    sub_1B1D0D630(v114, v129, v115, v116, v37, v78, 0);
    if (!v36)
    {
      goto LABEL_23;
    }

LABEL_38:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v117, v130);

    if (v130 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888(a1, v80);
    sub_1B1D7BE7C();
    if (v79)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v117, v130, v80, v118, v36, v81, v79);
      if (v134)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v117, v130, v80, v118, v36, v81, 0);
      if (v134)
      {
        goto LABEL_42;
      }
    }

LABEL_24:
    sub_1B1D7C5EC();
    if (!v128)
    {
      goto LABEL_25;
    }

LABEL_46:
    sub_1B1D7C5EC();
    v38 = v108;
    sub_1B1D7C5EC();
    sub_1B1C91B94(v120, v121);

    if (v121 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888(a1, v87);
    sub_1B1D7BE7C();
    if (v86)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v120, v121, v87, v88, v128, v89, v86);
      if (v108)
      {
        goto LABEL_56;
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v120, v121, v87, v88, v128, v89, 0);
      if (v108)
      {
        goto LABEL_56;
      }
    }

LABEL_26:
    sub_1B1D7C5EC();
    v39 = v109;
    if (!v109)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
  sub_1B1D0D630(v114, v129, v115, v116, v37, v78, v77);
  if (v36)
  {
    goto LABEL_38;
  }

LABEL_23:
  sub_1B1D7C5EC();
  if (!v134)
  {
    goto LABEL_24;
  }

LABEL_42:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v119, v131);

  if (v131 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v83);
  sub_1B1D7BE7C();
  if (v82)
  {
    sub_1B1D7C5EC();
    sub_1B1D7BE7C();
    sub_1B1D0D630(v119, v131, v83, v84, v134, v85, v82);
    if (v128)
    {
      goto LABEL_46;
    }
  }

  else
  {
    sub_1B1D7C5EC();
    sub_1B1D0D630(v119, v131, v83, v84, v134, v85, 0);
    if (v128)
    {
      goto LABEL_46;
    }
  }

LABEL_25:
  sub_1B1D7C5EC();
  v38 = v108;
  if (!v108)
  {
    goto LABEL_26;
  }

LABEL_56:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v122, v132);

  if (v132 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v91);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v90)
  {
    sub_1B1D7BE7C();
    v44 = v122;
    v45 = v132;
    v46 = v91;
    v47 = v92;
    v48 = v38;
    v49 = v93;
    v50 = v90;
  }

  else
  {
    v44 = v122;
    v45 = v132;
    v46 = v91;
    v47 = v92;
    v48 = v38;
    v49 = v93;
    v50 = 0;
  }

  sub_1B1D0D630(v44, v45, v46, v47, v48, v49, v50);
  v39 = v109;
  if (!v109)
  {
LABEL_27:
    sub_1B1D7C5EC();
    v40 = v110;
    v41 = v111;
    v42 = v112;
    if (!v110)
    {
      goto LABEL_28;
    }

LABEL_69:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v41, v100);

    if (v100 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888(a1, v42);
    sub_1B1D7BE7C();
    if (v99)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v41, v100, v42, v124, v40, v101, v99);
      if (!v135)
      {
        return sub_1B1D7C5EC();
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v41, v100, v42, v124, v40, v101, 0);
      if (!v135)
      {
        return sub_1B1D7C5EC();
      }
    }

    goto LABEL_73;
  }

LABEL_62:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  if (v95 >> 60 == 15)
  {
    v51 = v95;
    sub_1B1C91B94(v123, v95);
    v52 = v94;
  }

  else
  {
    sub_1B1C91B94(v123, v95);

    v51 = v95;
    v52 = v94;
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v96);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v52)
  {
    sub_1B1D7BE7C();
    v53 = v123;
    v54 = v51;
    v55 = v96;
    v56 = v97;
    v57 = v39;
    v58 = v98;
    v59 = v52;
  }

  else
  {
    v53 = v123;
    v54 = v51;
    v55 = v96;
    v56 = v97;
    v57 = v39;
    v58 = v98;
    v59 = 0;
  }

  sub_1B1D0D630(v53, v54, v55, v56, v57, v58, v59);
  v41 = v111;
  v42 = v112;
  v40 = v110;
  if (v110)
  {
    goto LABEL_69;
  }

LABEL_28:
  sub_1B1D7C5EC();
  if (!v135)
  {
    return sub_1B1D7C5EC();
  }

LABEL_73:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v125, v133);

  if (v133 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v126);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v102)
  {
    sub_1B1D7BE7C();
    v60 = v125;
    v61 = v126;
    v62 = v133;
    v63 = v103;
    v64 = v135;
    v65 = v104;
    v66 = v102;
  }

  else
  {
    v60 = v125;
    v61 = v126;
    v62 = v133;
    v63 = v103;
    v64 = v135;
    v65 = v104;
    v66 = 0;
  }

  return sub_1B1D0D630(v60, v62, v61, v63, v64, v65, v66);
}

uint64_t ASImportableCredential.IdentityDocument.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.IdentityDocument.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.IdentityDocument.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A90, &qword_1B1D88ED0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B1D66978();
  sub_1B1D7C62C();
  if (v2)
  {
    v179 = v2;
    v87 = 0;
    v84 = 0;
    v77 = 0;
    v78 = 0;
    v72 = 0;
    v73 = 0;
    v63 = 0;
    v64 = 0;
    v58 = 0;
    v59 = 0;
    v52 = 0;
    v53 = 0;
    v76 = 0;
    v67 = 0;
    v68 = 0;
    v61 = 0;
    v62 = 0;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v80 = 0;
    v81 = 0;
    v69 = 0;
    v70 = 0;
    v65 = 0;
    v66 = 0;
    v60 = 0;
    v51 = 0;
    v82 = 0;
    v83 = 0;
    v74 = 0;
    v75 = 0;
    v57 = 0;
    v89 = 0;
    v90 = 0;
    v85 = 0;
    v86 = 0;
    v79 = 0;
    v71 = 0;
    v94 = 0uLL;
    v93 = 0;
    v91 = 0;
    v92 = 0;
    v88 = 0;
    v99 = 0uLL;
    v98 = 0;
    v97 = 0;
    v96 = 0;
    v95 = 0uLL;
    v48 = 0;
    v103 = 0;
    v102 = 0;
    v101 = 0;
    v100 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v46 = 0;
    v17 = 0;
    v49 = 0u;
    v50 = 0u;
  }

  else
  {
    v104[0] = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v19 = *(&v113 + 1);
    v41 = v114;
    v42 = v115;
    v43 = v113;
    v44 = v116;
    v45 = v117;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v104[0] = 1;
    sub_1B1D7C3FC();
    v46 = v19;
    v39 = a2;
    v40 = v113;
    v100 = v114;
    v101 = v115;
    v20 = v116;
    v48 = *(&v117 + 1);
    v103 = v117;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v104[0] = 2;
    sub_1B1D7C3FC();
    v102 = v20;
    v95 = v113;
    v96 = v114;
    v97 = v115;
    v98 = v116;
    v99 = v117;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v104[0] = 3;
    sub_1B1D7C3FC();
    v90 = *(&v113 + 1);
    v88 = v113;
    v91 = v114;
    v92 = v115;
    v93 = v116;
    v94 = v117;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v104[0] = 4;
    sub_1B1D7C3FC();
    v75 = *(&v113 + 1);
    v71 = v113;
    v79 = v114;
    v82 = v115;
    v85 = v116;
    v89 = *(&v117 + 1);
    v86 = v117;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v104[0] = 5;
    sub_1B1D7C3FC();
    v61 = *(&v113 + 1);
    v57 = v113;
    v66 = v114;
    v69 = v115;
    v74 = v116;
    v83 = *(&v117 + 1);
    v80 = v117;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v104[0] = 6;
    sub_1B1D7C3FC();
    v55 = *(&v113 + 1);
    v51 = v113;
    v60 = v114;
    v65 = v115;
    v70 = v116;
    v81 = *(&v117 + 1);
    v77 = v117;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v104[0] = 7;
    sub_1B1D7C3FC();
    v58 = *(&v113 + 1);
    v53 = v113;
    v63 = v114;
    v68 = v115;
    v73 = v116;
    v50 = v117;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v104[0] = 8;
    sub_1B1D7C3FC();
    v179 = 0;
    v49 = v113;
    v54 = v114;
    v56 = v115;
    v62 = v116;
    v76 = *(&v117 + 1);
    v67 = v117;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v104[0] = 9;
    v21 = v179;
    sub_1B1D7C3FC();
    v179 = v21;
    if (v21)
    {
      (*(v6 + 8))(v8, v5);
      v87 = 0;
      v84 = 0;
      v78 = 0;
      v72 = 0;
      v64 = 0;
      v59 = 0;
      v52 = 0;
    }

    else
    {
      v59 = *(&v113 + 1);
      v52 = v113;
      v64 = v114;
      v72 = v115;
      v78 = v116;
      v87 = *(&v117 + 1);
      v84 = v117;
      sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
      v105 = 10;
      v22 = v179;
      sub_1B1D7C3FC();
      v179 = v22;
      if (!v22)
      {
        (*(v6 + 8))(v8, v5);
        v23 = v106;
        v24 = v108;
        v37 = v108;
        v38 = v106;
        v34 = v109;
        v35 = v107;
        v25 = v110;
        v36 = v110;
        v33 = v111;
        v26 = v112;
        sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
        v27 = v42;
        *v104 = v43;
        *&v104[8] = v19;
        v28 = v41;
        *&v104[16] = v41;
        *&v104[24] = v42;
        *&v104[32] = v44;
        *&v104[40] = v45;
        *&v104[56] = v40;
        *&v104[72] = v100;
        *&v104[80] = v101;
        *&v104[88] = v102;
        *&v104[96] = v103;
        v29 = v48;
        *&v104[104] = v48;
        *&v104[112] = v95;
        *&v104[128] = v96;
        *&v104[136] = v97;
        *&v104[144] = v98;
        *&v104[152] = v99;
        *&v104[168] = v88;
        *&v104[176] = v90;
        *&v104[184] = v91;
        *&v104[192] = v92;
        *&v104[200] = v93;
        *&v104[208] = v94;
        *&v104[224] = v71;
        *&v104[232] = v75;
        *&v104[240] = v79;
        *&v104[248] = v82;
        *&v104[256] = v85;
        *&v104[264] = v86;
        *&v104[272] = v89;
        *&v104[280] = v57;
        *&v104[288] = v61;
        *&v104[296] = v66;
        *&v104[304] = v69;
        *&v104[312] = v74;
        *&v104[320] = v80;
        *&v104[328] = v83;
        *&v104[336] = v51;
        *&v104[344] = v55;
        *&v104[352] = v60;
        *&v104[360] = v65;
        *&v104[368] = v70;
        *&v104[376] = v77;
        *&v104[384] = v81;
        *&v104[392] = v53;
        *&v104[400] = v58;
        *&v104[408] = v63;
        *&v104[416] = v68;
        *&v104[424] = v73;
        *&v104[432] = v50;
        *&v104[448] = v49;
        *&v104[464] = v54;
        *&v104[472] = v56;
        *&v104[480] = v62;
        *&v104[488] = v67;
        *&v104[496] = v76;
        *&v104[504] = v52;
        *&v104[512] = v59;
        *&v104[520] = v64;
        *&v104[528] = v72;
        *&v104[536] = v78;
        *&v104[544] = v84;
        *&v104[552] = v87;
        *&v104[560] = v23;
        v30 = v35;
        *&v104[568] = v35;
        *&v104[576] = v24;
        v31 = v34;
        *&v104[584] = v34;
        *&v104[592] = v25;
        v32 = v33;
        *&v104[600] = v33;
        *&v104[608] = v26;
        memcpy(v39, v104, 0x268uLL);
        sub_1B1D669FC(v104, &v113);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        *&v113 = v43;
        *(&v113 + 1) = v19;
        v114 = v28;
        v115 = v27;
        v116 = v44;
        v117 = v45;
        v118 = v40;
        v119 = v100;
        v120 = v101;
        v121 = v102;
        v122 = v103;
        v123 = v29;
        v124 = v95;
        v125 = v96;
        v126 = v97;
        v127 = v98;
        v128 = v99;
        v129 = v88;
        v130 = v90;
        v131 = v91;
        v132 = v92;
        v133 = v93;
        v134 = v94;
        v135 = v71;
        v136 = v75;
        v137 = v79;
        v138 = v82;
        v139 = v85;
        v140 = v86;
        v141 = v89;
        v142 = v57;
        v143 = v61;
        v144 = v66;
        v145 = v69;
        v146 = v74;
        v147 = v80;
        v148 = v83;
        v149 = v51;
        v150 = v55;
        v151 = v60;
        v152 = v65;
        v153 = v70;
        v154 = v77;
        v155 = v81;
        v156 = v53;
        v157 = v58;
        v158 = v63;
        v159 = v68;
        v160 = v73;
        v161 = v50;
        v162 = v49;
        v163 = v54;
        v164 = v56;
        v165 = v62;
        v166 = v67;
        v167 = v76;
        v168 = v52;
        v169 = v59;
        v170 = v64;
        v171 = v72;
        v172 = v78;
        v173 = v84;
        v174 = v87;
        *&v175 = v38;
        *(&v175 + 1) = v30;
        *&v176 = v37;
        *(&v176 + 1) = v31;
        *&v177 = v36;
        *(&v177 + 1) = v32;
        v178 = v26;
        return sub_1B1D669CC(&v113);
      }

      (*(v6 + 8))(v8, v5);
    }

    v12 = *(&v45 + 1);
    v13 = v45;
    v17 = v43;
    v14 = v44;
    v16 = v41;
    v15 = v42;
    v10 = *(&v40 + 1);
    v11 = v40;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  *&v113 = v17;
  *(&v113 + 1) = v46;
  v114 = v16;
  v115 = v15;
  v116 = v14;
  *&v117 = v13;
  *(&v117 + 1) = v12;
  *&v118 = v11;
  *(&v118 + 1) = v10;
  v119 = v100;
  v120 = v101;
  v121 = v102;
  v122 = v103;
  v123 = v48;
  v124 = v95;
  v125 = v96;
  v126 = v97;
  v127 = v98;
  v128 = v99;
  v129 = v88;
  v130 = v90;
  v131 = v91;
  v132 = v92;
  v133 = v93;
  v134 = v94;
  v135 = v71;
  v136 = v75;
  v137 = v79;
  v138 = v82;
  v139 = v85;
  v140 = v86;
  v141 = v89;
  v142 = v57;
  v143 = v61;
  v144 = v66;
  v145 = v69;
  v146 = v74;
  v147 = v80;
  v148 = v83;
  v149 = v51;
  v150 = v55;
  v151 = v60;
  v152 = v65;
  v153 = v70;
  v154 = v77;
  v155 = v81;
  v156 = v53;
  v157 = v58;
  v158 = v63;
  v159 = v68;
  v160 = v73;
  v161 = v50;
  v162 = v49;
  v163 = v54;
  v164 = v56;
  v165 = v62;
  v166 = v67;
  v167 = v76;
  v168 = v52;
  v169 = v59;
  v170 = v64;
  v171 = v72;
  v172 = v78;
  v173 = v84;
  v174 = v87;
  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v175 = 0u;
  return sub_1B1D669CC(&v113);
}

uint64_t sub_1B1D47A74()
{
  sub_1B1D7C5CC();
  ASImportableCredential.IdentityDocument.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D47AB8(uint64_t a1)
{
  sub_1B1D7C5CC();
  ASImportableCredential.IdentityDocument.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.Note.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  sub_1B1C91B94(v2, v3);
}

__n128 ASImportableCredential.Note.content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v8 = *(a1 + 3);
  v5 = a1[5];
  v6 = a1[6];
  sub_1B1C91AE4(*v1, *(v1 + 8));

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  result = v8;
  *(v1 + 24) = v8;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  return result;
}

uint64_t static ASImportableCredential.Note.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_1B1C91B94(v23, v2);

  sub_1B1C91B94(v8, v9);

  LOBYTE(v5) = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_1B1C91AE4(v16, v17);

  sub_1B1C91AE4(v23, v24);

  return v5 & 1;
}

uint64_t sub_1B1D47D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1D7C50C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1D47D98(uint64_t a1)
{
  v2 = sub_1B1D66A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D47DD4(uint64_t a1)
{
  v2 = sub_1B1D66A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.Note.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A98, &qword_1B1D88ED8);
  v23 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v12 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v14 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 48);
  v12 = *(v1 + 40);
  v13 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1C91B94(v5, v6);
  sub_1B1D66A34();

  sub_1B1D7C63C();
  v16 = v5;
  v17 = v6;
  v18 = v14;
  v19 = v13;
  v20 = v8;
  v21 = v12;
  v22 = v9;
  sub_1B1D663C8();
  v10 = v15;
  sub_1B1D7C4CC();
  sub_1B1C91AE4(v16, v17);

  return (*(v23 + 8))(v4, v10);
}

uint64_t sub_1B1D47FD0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 48);
  if (*(v1 + 8) >> 60 == 15)
  {
    sub_1B1D7C5EC();
  }

  else
  {
    sub_1B1D7C5EC();
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v3);
  sub_1B1D7BE7C();
  if (!v4)
  {
    return sub_1B1D7C5EC();
  }

  sub_1B1D7C5EC();

  return sub_1B1D7BE7C();
}

uint64_t sub_1B1D480D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  sub_1B1D7C5CC();
  sub_1B1D7C5EC();
  if (v1 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(v5, v2);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v3)
  {
    sub_1B1D7BE7C();
  }

  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.Note.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AA8, &qword_1B1D88EE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66A34();
  sub_1B1D7C62C();
  if (!v2)
  {
    sub_1B1D6644C();
    sub_1B1D7C43C();
    (*(v6 + 8))(v8, v5);
    v9 = v15;
    v10 = v16;
    v11 = v17;
    v12 = v18;
    *a2 = v14;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B1D48364()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = *(v0 + 40);
  sub_1B1D7C5CC();
  ASImportableCredential.Note.hash(into:)(v5);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D483C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = *(v1 + 40);
  sub_1B1D7C5CC();
  ASImportableCredential.Note.hash(into:)(v6);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D48428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_1B1C91B94(v23, v2);

  sub_1B1C91B94(v8, v9);

  LOBYTE(v5) = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_1B1C91AE4(v16, v17);

  sub_1B1C91AE4(v23, v24);

  return v5 & 1;
}

void ASImportableCredential.ItemReference.reference.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1B1CE111C(v2, v3);

  sub_1B1C91B94(v4, v5);
}

__n128 ASImportableCredential.ItemReference.reference.setter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  sub_1B1CDEFDC(*v1, v1[1]);
  sub_1B1C91AE4(v3, v4);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v6;
  return result;
}

__n128 ASImportableCredential.ItemReference.init(reference:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t static ASImportableCredential.ItemReference.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v18 = *a1;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  sub_1B1CE111C(v18, v2);
  sub_1B1C91B94(v3, v4);
  sub_1B1CE111C(v5, v6);
  sub_1B1C91B94(v7, v8);
  LOBYTE(v3) = _s22AuthenticationServices22ASImportableLinkedItemV2eeoiySbAC_ACtFZ_0(&v18, &v14);
  v9 = v16;
  v10 = v17;
  sub_1B1CDEFDC(v14, v15);
  sub_1B1C91AE4(v9, v10);
  v11 = v20;
  v12 = v21;
  sub_1B1CDEFDC(v18, v19);
  sub_1B1C91AE4(v11, v12);
  return v3 & 1;
}

uint64_t sub_1B1D486C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1D7C50C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1D48758(uint64_t a1)
{
  v2 = sub_1B1D66A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D48794(uint64_t a1)
{
  v2 = sub_1B1D66A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.ItemReference.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AB0, &qword_1B1D88EE8);
  v18 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v4 = &v13 - v3;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1CE111C(v5, v6);
  sub_1B1C91B94(v7, v8);
  sub_1B1D66A88();
  sub_1B1D7C63C();
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  sub_1B1D65048();
  v9 = v13;
  sub_1B1D7C4CC();
  v10 = v16;
  v11 = v17;
  sub_1B1CDEFDC(v14, v15);
  sub_1B1C91AE4(v10, v11);
  return (*(v18 + 8))(v4, v9);
}

uint64_t sub_1B1D48960(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1B1D7B4FC();
  if (v2 >> 60 == 15)
  {
    return sub_1B1D7C5EC();
  }

  sub_1B1D7C5EC();

  return sub_1B1D7B4FC();
}

uint64_t sub_1B1D489E8()
{
  v1 = *(v0 + 24);
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7C5EC();
  if (v1 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.ItemReference.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AC0, &qword_1B1D88EF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66A88();
  sub_1B1D7C62C();
  if (!v2)
  {
    sub_1B1D64F70();
    sub_1B1D7C43C();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B1D48C1C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7C5EC();
  if (v2 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D48CAC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v18 = *a1;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  sub_1B1CE111C(v18, v2);
  sub_1B1C91B94(v3, v4);
  sub_1B1CE111C(v5, v6);
  sub_1B1C91B94(v7, v8);
  LOBYTE(v3) = _s22AuthenticationServices22ASImportableLinkedItemV2eeoiySbAC_ACtFZ_0(&v18, &v14);
  v9 = v16;
  v10 = v17;
  sub_1B1CDEFDC(v14, v15);
  sub_1B1C91AE4(v9, v10);
  v11 = v20;
  v12 = v21;
  sub_1B1CDEFDC(v18, v19);
  sub_1B1C91AE4(v11, v12);
  return v3 & 1;
}

uint64_t ASImportableCredential.Passkey.credentialID.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableCredential.Passkey.credentialID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableCredential.Passkey.relyingPartyIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ASImportableCredential.Passkey.relyingPartyIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASImportableCredential.Passkey.userName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ASImportableCredential.Passkey.userName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ASImportableCredential.Passkey.userDisplayName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ASImportableCredential.Passkey.userDisplayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ASImportableCredential.Passkey.userHandle.getter()
{
  v1 = *(v0 + 64);
  sub_1B1CE111C(v1, *(v0 + 72));
  return v1;
}

uint64_t ASImportableCredential.Passkey.userHandle.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ASImportableCredential.Passkey.key.getter()
{
  v1 = *(v0 + 80);
  sub_1B1CE111C(v1, *(v0 + 88));
  return v1;
}

uint64_t ASImportableCredential.Passkey.key.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1B1D490C4(uint64_t a1)
{
  sub_1B1D7BE7C();
}

unint64_t sub_1B1D491C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6C9C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1D491F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064496C61;
  v4 = 0x69746E6564657263;
  v5 = 0xEF656D614E79616CLL;
  v6 = 0x7073694472657375;
  v7 = 0xEA0000000000656CLL;
  v8 = 0x646E614872657375;
  if (v2 != 4)
  {
    v8 = 7955819;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1682534514;
  if (v2 != 1)
  {
    v10 = 0x656D616E72657375;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1B1D492BC()
{
  v1 = *v0;
  v2 = 0x69746E6564657263;
  v3 = 0x7073694472657375;
  v4 = 0x646E614872657375;
  if (v1 != 4)
  {
    v4 = 7955819;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1682534514;
  if (v1 != 1)
  {
    v5 = 0x656D616E72657375;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B1D49380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6C9C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D493A8(uint64_t a1)
{
  v2 = sub_1B1D66ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D493E4(uint64_t a1)
{
  v2 = sub_1B1D66ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.Passkey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AC8, &qword_1B1D88EF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66ADC();
  sub_1B1D7C62C();
  if (!v2)
  {
    v54 = 0;
    sub_1B1D7C40C();
    v9 = sub_1B1D7B4AC();
    if (v10 >> 60 == 15)
    {
      v11 = sub_1B1D7C2BC();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
      *v13 = MEMORY[0x1E6969080];
      sub_1B1D7C3CC();
      sub_1B1D7C2AC();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
    }

    else
    {
      v15 = v9;
      v48 = v10;
      v53 = 1;
      v16 = sub_1B1D7C40C();
      v47 = v17;
      v52 = 2;
      v18 = sub_1B1D7C40C();
      v46 = v19;
      v51 = 3;
      v43 = sub_1B1D7C40C();
      v44 = v18;
      v45 = v20;
      v50 = 4;
      sub_1B1D7C40C();
      v21 = sub_1B1D7B4AC();
      if (v22 >> 60 == 15)
      {

        v23 = sub_1B1D7C2BC();
        v47 = swift_allocError();
        v25 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
        *v25 = MEMORY[0x1E6969080];
        sub_1B1D7C3CC();
        sub_1B1D7C2AC();
        (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
        swift_willThrow();
        v26 = v15;
        v27 = v48;
      }

      else
      {
        v41 = v21;
        v42 = v22;
        v49 = 5;
        sub_1B1D7C40C();
        v28 = sub_1B1D7B4AC();
        if (v29 >> 60 != 15)
        {
          v33 = v28;
          v34 = v8;
          v35 = v29;
          (*(v6 + 8))(v34, v5);
          v36 = v47;
          v37 = v48;
          *a2 = v15;
          a2[1] = v37;
          a2[2] = v16;
          a2[3] = v36;
          v38 = v46;
          a2[4] = v44;
          a2[5] = v38;
          v39 = v45;
          a2[6] = v43;
          a2[7] = v39;
          v40 = v42;
          a2[8] = v41;
          a2[9] = v40;
          a2[10] = v33;
          a2[11] = v35;
          return __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        v30 = sub_1B1D7C2BC();
        v47 = swift_allocError();
        v32 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
        *v32 = MEMORY[0x1E6969080];
        sub_1B1D7C3CC();
        sub_1B1D7C2AC();
        (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
        swift_willThrow();
        sub_1B1C91AE4(v15, v48);
        v26 = v41;
        v27 = v42;
      }

      sub_1B1C91AE4(v26, v27);
    }

    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableCredential.Passkey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AD8, &qword_1B1D88F00);
  v14 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v13 - v4;
  v6 = v1[2];
  v13[7] = v1[3];
  v13[8] = v6;
  v7 = v1[4];
  v13[5] = v1[5];
  v13[6] = v7;
  v8 = v1[6];
  v13[3] = v1[7];
  v13[4] = v8;
  sub_1B1D7B4BC();
  v13[2] = sub_1B1D7B4BC();
  v13[9] = v9;
  v13[1] = sub_1B1D7B4BC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66ADC();
  sub_1B1D7C63C();
  v21 = 0;
  v10 = v15;
  sub_1B1D7C49C();
  if (v10)
  {
    (*(v14 + 8))(v5, v3);
  }

  else
  {
    v11 = v14;

    v20 = 1;
    sub_1B1D7C49C();
    v19 = 2;
    sub_1B1D7C49C();
    v18 = 3;
    sub_1B1D7C49C();
    v17 = 4;
    sub_1B1D7C49C();

    v16 = 5;
    sub_1B1D7C49C();
    (*(v11 + 8))(v5, 0);
  }
}

uint64_t ASImportableCredential.Passkey.hash(into:)(uint64_t a1)
{
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();

  return sub_1B1D7B4FC();
}

uint64_t ASImportableCredential.Passkey.hashValue.getter()
{
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();
  sub_1B1D7B4FC();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D49F3C()
{
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();
  sub_1B1D7B4FC();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D4A010(uint64_t a1)
{
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();

  return sub_1B1D7B4FC();
}

uint64_t sub_1B1D4A0D4(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();
  sub_1B1D7B4FC();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.Passport.issuingCountry.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.issuingCountry.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = v6;
  *(v1 + 32) = v6;
  *(v1 + 48) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.passportType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.passportType.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  v4 = *a1;
  *(v1 + 72) = a1[1];
  *(v1 + 56) = v4;
  result = v6;
  *(v1 + 88) = v6;
  *(v1 + 104) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.passportNumber.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.passportNumber.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160));
  v4 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v4;
  result = v6;
  *(v1 + 144) = v6;
  *(v1 + 160) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.nationalIdentificationNumber.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.nationalIdentificationNumber.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216));
  v4 = *a1;
  *(v1 + 184) = a1[1];
  *(v1 + 168) = v4;
  result = v6;
  *(v1 + 200) = v6;
  *(v1 + 216) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.nationality.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.nationality.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 224), *(v1 + 232), *(v1 + 240), *(v1 + 248), *(v1 + 256), *(v1 + 264), *(v1 + 272));
  v4 = *(a1 + 16);
  *(v1 + 224) = *a1;
  *(v1 + 240) = v4;
  result = v6;
  *(v1 + 256) = v6;
  *(v1 + 272) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.fullName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  v7 = v1[40];
  v8 = v1[41];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.fullName.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 280), *(v1 + 288), *(v1 + 296), *(v1 + 304), *(v1 + 312), *(v1 + 320), *(v1 + 328));
  v4 = *(a1 + 16);
  *(v1 + 280) = *a1;
  *(v1 + 296) = v4;
  result = v6;
  *(v1 + 312) = v6;
  *(v1 + 328) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.birthDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[42];
  v3 = v1[43];
  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.birthDate.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 336), *(v1 + 344), *(v1 + 352), *(v1 + 360), *(v1 + 368), *(v1 + 376), *(v1 + 384));
  v4 = *(a1 + 16);
  *(v1 + 336) = *a1;
  *(v1 + 352) = v4;
  result = v6;
  *(v1 + 368) = v6;
  *(v1 + 384) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.birthPlace.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[49];
  v3 = v1[50];
  v4 = v1[51];
  v5 = v1[52];
  v6 = v1[53];
  v7 = v1[54];
  v8 = v1[55];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.birthPlace.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 392), *(v1 + 400), *(v1 + 408), *(v1 + 416), *(v1 + 424), *(v1 + 432), *(v1 + 440));
  v4 = *(a1 + 16);
  *(v1 + 392) = *a1;
  *(v1 + 408) = v4;
  result = v6;
  *(v1 + 424) = v6;
  *(v1 + 440) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.sex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[56];
  v3 = v1[57];
  v4 = v1[58];
  v5 = v1[59];
  v6 = v1[60];
  v7 = v1[61];
  v8 = v1[62];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.sex.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 448), *(v1 + 456), *(v1 + 464), *(v1 + 472), *(v1 + 480), *(v1 + 488), *(v1 + 496));
  v4 = *(a1 + 16);
  *(v1 + 448) = *a1;
  *(v1 + 464) = v4;
  result = v6;
  *(v1 + 480) = v6;
  *(v1 + 496) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.issueDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[63];
  v3 = v1[64];
  v4 = v1[65];
  v5 = v1[66];
  v6 = v1[67];
  v7 = v1[68];
  v8 = v1[69];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.issueDate.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 504), *(v1 + 512), *(v1 + 520), *(v1 + 528), *(v1 + 536), *(v1 + 544), *(v1 + 552));
  v4 = *(a1 + 16);
  *(v1 + 504) = *a1;
  *(v1 + 520) = v4;
  result = v6;
  *(v1 + 536) = v6;
  *(v1 + 552) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.expiryDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[70];
  v3 = v1[71];
  v4 = v1[72];
  v5 = v1[73];
  v6 = v1[74];
  v7 = v1[75];
  v8 = v1[76];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.expiryDate.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 560), *(v1 + 568), *(v1 + 576), *(v1 + 584), *(v1 + 592), *(v1 + 600), *(v1 + 608));
  v4 = *(a1 + 16);
  *(v1 + 560) = *a1;
  *(v1 + 576) = v4;
  result = v6;
  *(v1 + 592) = v6;
  *(v1 + 608) = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.issuingAuthority.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[77];
  v3 = v1[78];
  v4 = v1[79];
  v5 = v1[80];
  v6 = v1[81];
  v7 = v1[82];
  v8 = v1[83];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.Passport.issuingAuthority.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 616), *(v1 + 624), *(v1 + 632), *(v1 + 640), *(v1 + 648), *(v1 + 656), *(v1 + 664));
  v4 = *(a1 + 16);
  *(v1 + 616) = *a1;
  *(v1 + 632) = v4;
  result = v6;
  *(v1 + 648) = v6;
  *(v1 + 664) = v3;
  return result;
}

__n128 ASImportableCredential.Passport.init(issuingCountry:passportType:passportNumber:nationalIdentificationNumber:nationality:fullName:birthDate:birthPlace:sex:issueDate:expiryDate:issuingAuthority:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v36 = *(a1 + 32);
  v21 = (a9 + 344);
  v22 = *(a1 + 48);
  v37 = *a2;
  v38 = a2[6];
  v39 = a2[5];
  v40 = *a3;
  v41 = a3[6];
  v42 = a3[5];
  v43 = *a4;
  v44 = a4[6];
  v45 = a4[5];
  v46 = *a5;
  v47 = a5[6];
  v48 = a5[5];
  v49 = *a6;
  v50 = a6[6];
  v51 = a6[5];
  v52 = *a7;
  v53 = a7[6];
  v54 = a7[5];
  v56 = *a8;
  v57 = a8[6];
  v58 = a8[5];
  v59 = *a10;
  v60 = a10[6];
  v61 = a10[5];
  v62 = *a11;
  v64 = a11[5];
  v63 = a11[6];
  v67 = a12[5];
  v65 = *a12;
  v66 = a12[6];
  v70 = a13[5];
  v68 = *a13;
  v69 = a13[6];
  bzero(a9, 0x2A0uLL);
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  v23 = *(a1 + 16);
  *a9 = *a1;
  a9[1] = v23;
  a9[2] = v36;
  *(a9 + 6) = v22;
  sub_1B1D0D630(*(a9 + 7), *(a9 + 8), *(a9 + 9), *(a9 + 10), *(a9 + 11), *(a9 + 12), *(a9 + 13));
  *(a9 + 7) = v37;
  v24 = *(a2 + 3);
  a9[4] = *(a2 + 1);
  a9[5] = v24;
  *(a9 + 12) = v39;
  *(a9 + 13) = v38;
  sub_1B1D0D630(*(a9 + 14), *(a9 + 15), *(a9 + 16), *(a9 + 17), *(a9 + 18), *(a9 + 19), *(a9 + 20));
  *(a9 + 14) = v40;
  v25 = *(a3 + 1);
  *(a9 + 136) = *(a3 + 3);
  *(a9 + 120) = v25;
  *(a9 + 19) = v42;
  *(a9 + 20) = v41;
  sub_1B1D0D630(*(a9 + 21), *(a9 + 22), *(a9 + 23), *(a9 + 24), *(a9 + 25), *(a9 + 26), *(a9 + 27));
  *(a9 + 21) = v43;
  v26 = *(a4 + 3);
  a9[11] = *(a4 + 1);
  a9[12] = v26;
  *(a9 + 26) = v45;
  *(a9 + 27) = v44;
  sub_1B1D0D630(*(a9 + 28), *(a9 + 29), *(a9 + 30), *(a9 + 31), *(a9 + 32), *(a9 + 33), *(a9 + 34));
  *(a9 + 28) = v46;
  v27 = *(a5 + 1);
  *(a9 + 248) = *(a5 + 3);
  *(a9 + 232) = v27;
  *(a9 + 33) = v48;
  *(a9 + 34) = v47;
  sub_1B1D0D630(*(a9 + 35), *(a9 + 36), *(a9 + 37), *(a9 + 38), *(a9 + 39), *(a9 + 40), *(a9 + 41));
  *(a9 + 35) = v49;
  v28 = *(a6 + 3);
  a9[18] = *(a6 + 1);
  a9[19] = v28;
  *(a9 + 40) = v51;
  *(a9 + 41) = v50;
  sub_1B1D0D630(*(a9 + 42), *(a9 + 43), *(a9 + 44), *(a9 + 45), *(a9 + 46), *(a9 + 47), *(a9 + 48));
  *(a9 + 42) = v52;
  v29 = *(a7 + 3);
  *v21 = *(a7 + 1);
  *(a9 + 360) = v29;
  *(a9 + 47) = v54;
  *(a9 + 48) = v53;
  sub_1B1D0D630(*(a9 + 49), *(a9 + 50), *(a9 + 51), *(a9 + 52), *(a9 + 53), *(a9 + 54), *(a9 + 55));
  *(a9 + 49) = v56;
  v30 = *(a8 + 3);
  a9[25] = *(a8 + 1);
  a9[26] = v30;
  *(a9 + 54) = v58;
  *(a9 + 55) = v57;
  sub_1B1D0D630(*(a9 + 56), *(a9 + 57), *(a9 + 58), *(a9 + 59), *(a9 + 60), *(a9 + 61), *(a9 + 62));
  *(a9 + 56) = v59;
  v31 = *(a10 + 3);
  *(a9 + 456) = *(a10 + 1);
  *(a9 + 472) = v31;
  *(a9 + 61) = v61;
  *(a9 + 62) = v60;
  sub_1B1D0D630(*(a9 + 63), *(a9 + 64), *(a9 + 65), *(a9 + 66), *(a9 + 67), *(a9 + 68), *(a9 + 69));
  *(a9 + 63) = v62;
  v32 = *(a11 + 3);
  a9[32] = *(a11 + 1);
  a9[33] = v32;
  *(a9 + 68) = v64;
  *(a9 + 69) = v63;
  sub_1B1D0D630(*(a9 + 70), *(a9 + 71), *(a9 + 72), *(a9 + 73), *(a9 + 74), *(a9 + 75), *(a9 + 76));
  *(a9 + 70) = v65;
  v33 = *(a12 + 3);
  *(a9 + 568) = *(a12 + 1);
  *(a9 + 584) = v33;
  *(a9 + 75) = v67;
  *(a9 + 76) = v66;
  sub_1B1D0D630(*(a9 + 77), *(a9 + 78), *(a9 + 79), *(a9 + 80), *(a9 + 81), *(a9 + 82), *(a9 + 83));
  *(a9 + 77) = v68;
  result = *(a13 + 1);
  v35 = *(a13 + 3);
  a9[39] = result;
  a9[40] = v35;
  *(a9 + 82) = v70;
  *(a9 + 83) = v69;
  return result;
}

unint64_t sub_1B1D4ADC8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x7461446575737369;
    v6 = 0x6144797269707865;
    if (a1 != 10)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x7461446874726962;
    v8 = 0x616C506874726962;
    if (a1 != 7)
    {
      v8 = 7890291;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x43676E6975737369;
    v2 = 0xD00000000000001CLL;
    v3 = 0x6C616E6F6974616ELL;
    if (a1 != 4)
    {
      v3 = 0x656D614E6C6C7566;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74726F7073736170;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B1D4AF8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1D6CA10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B1D4AFC0(uint64_t a1)
{
  v2 = sub_1B1D66B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D4AFFC(uint64_t a1)
{
  v2 = sub_1B1D66B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.Passport.encode(to:)(void *a1)
{
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AE0, &qword_1B1D88F08);
  v134 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v51 - v3;
  v4 = v1[1];
  v130 = *v1;
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v127 = v1[7];
  v128 = v9;
  v10 = v1[8];
  v125 = v1[9];
  v126 = v10;
  v11 = v1[10];
  v123 = v1[11];
  v124 = v11;
  v12 = v1[12];
  v121 = v1[13];
  v122 = v12;
  v13 = v1[15];
  v120 = v1[14];
  v119 = v13;
  v14 = v1[17];
  v118 = v1[16];
  v117 = v14;
  v15 = v1[19];
  v115 = v1[18];
  v116 = v15;
  v16 = v1[21];
  v114 = v1[20];
  v107 = v16;
  v17 = v1[23];
  v108 = v1[22];
  v109 = v17;
  v18 = v1[25];
  v110 = v1[24];
  v111 = v18;
  v19 = v1[27];
  v113 = v1[26];
  v112 = v19;
  v20 = v1[29];
  v100 = v1[28];
  v101 = v20;
  v21 = v1[31];
  v102 = v1[30];
  v103 = v21;
  v22 = v1[33];
  v104 = v1[32];
  v106 = v22;
  v23 = v1[35];
  v105 = v1[34];
  v93 = v23;
  v24 = v1[37];
  v94 = v1[36];
  v95 = v24;
  v25 = v1[39];
  v96 = v1[38];
  v97 = v25;
  v26 = v1[41];
  v99 = v1[40];
  v98 = v26;
  v27 = v1[43];
  v86 = v1[42];
  v87 = v27;
  v28 = v1[45];
  v88 = v1[44];
  v89 = v28;
  v29 = v1[47];
  v90 = v1[46];
  v92 = v29;
  v30 = v1[49];
  v91 = v1[48];
  v79 = v30;
  v31 = v1[51];
  v80 = v1[50];
  v81 = v31;
  v32 = v1[53];
  v82 = v1[52];
  v85 = v32;
  v33 = v1[55];
  v84 = v1[54];
  v83 = v33;
  v34 = v1[57];
  v72 = v1[56];
  v73 = v34;
  v35 = v1[59];
  v74 = v1[58];
  v75 = v35;
  v36 = v1[61];
  v78 = v1[60];
  v77 = v36;
  v37 = v1[63];
  v76 = v1[62];
  v65 = v37;
  v66 = v1[64];
  v67 = v1[65];
  v68 = v1[66];
  v71 = v1[67];
  v70 = v1[68];
  v69 = v1[69];
  v58 = v1[70];
  v59 = v1[71];
  v60 = v1[72];
  v61 = v1[73];
  v64 = v1[74];
  v63 = v1[75];
  v62 = v1[76];
  v51 = v1[77];
  v52 = v1[78];
  v53 = v1[79];
  v54 = v1[80];
  v57 = v1[81];
  v56 = v1[82];
  v55 = v1[83];
  v38 = a1[3];
  v129 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v39 = v130;
  sub_1B1D66328(v130, v4, v5, v6, v8, v7, v9);
  sub_1B1D66B30();
  v40 = v131;
  sub_1B1D7C63C();
  v135 = v39;
  v136 = v4;
  v137 = v5;
  v138 = v6;
  v41 = v132;
  v42 = v40;
  v139 = v8;
  v140 = v7;
  v141 = v128;
  v142 = 0;
  v43 = sub_1B1D663C8();
  v44 = v133;
  sub_1B1D7C48C();
  if (v44)
  {
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    return (*(v134 + 8))(v40, v41);
  }

  else
  {
    v46 = v41;
    v47 = v117;
    v48 = v118;
    v49 = v119;
    v50 = v120;
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v127;
    v136 = v126;
    v137 = v125;
    v138 = v124;
    v139 = v123;
    v140 = v122;
    v141 = v121;
    v142 = 1;
    sub_1B1D66328(v127, v126, v125, v124, v123, v122, v121);
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v50;
    v136 = v49;
    v137 = v48;
    v138 = v47;
    v139 = v115;
    v140 = v116;
    v141 = v114;
    v142 = 2;
    sub_1B1D66328(v50, v49, v48, v47, v115, v116, v114);
    v133 = v43;
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v107;
    v136 = v108;
    v137 = v109;
    v138 = v110;
    v139 = v111;
    v140 = v113;
    v141 = v112;
    v142 = 3;
    sub_1B1D66328(v107, v108, v109, v110, v111, v113, v112);
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v100;
    v136 = v101;
    v137 = v102;
    v138 = v103;
    v139 = v104;
    v140 = v106;
    v141 = v105;
    v142 = 4;
    sub_1B1D66328(v100, v101, v102, v103, v104, v106, v105);
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v93;
    v136 = v94;
    v137 = v95;
    v138 = v96;
    v139 = v97;
    v140 = v99;
    v141 = v98;
    v142 = 5;
    sub_1B1D66328(v93, v94, v95, v96, v97, v99, v98);
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v86;
    v136 = v87;
    v137 = v88;
    v138 = v89;
    v139 = v90;
    v140 = v92;
    v141 = v91;
    v142 = 6;
    sub_1B1D66328(v86, v87, v88, v89, v90, v92, v91);
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v79;
    v136 = v80;
    v137 = v81;
    v138 = v82;
    v139 = v85;
    v140 = v84;
    v141 = v83;
    v142 = 7;
    sub_1B1D66328(v79, v80, v81, v82, v85, v84, v83);
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v72;
    v136 = v73;
    v137 = v74;
    v138 = v75;
    v139 = v78;
    v140 = v77;
    v141 = v76;
    v142 = 8;
    sub_1B1D66328(v72, v73, v74, v75, v78, v77, v76);
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v65;
    v136 = v66;
    v137 = v67;
    v138 = v68;
    v139 = v71;
    v140 = v70;
    v141 = v69;
    v142 = 9;
    sub_1B1D66328(v65, v66, v67, v68, v71, v70, v69);
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v58;
    v136 = v59;
    v137 = v60;
    v138 = v61;
    v139 = v64;
    v140 = v63;
    v141 = v62;
    v142 = 10;
    sub_1B1D66328(v58, v59, v60, v61, v64, v63, v62);
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    v135 = v51;
    v136 = v52;
    v137 = v53;
    v138 = v54;
    v139 = v57;
    v140 = v56;
    v141 = v55;
    v142 = 11;
    sub_1B1D66328(v51, v52, v53, v54, v57, v56, v55);
    sub_1B1D7C48C();
    sub_1B1D0D630(v135, v136, v137, v138, v139, v140, v141);
    return (*(v134 + 8))(v42, v46);
  }
}

uint64_t ASImportableCredential.Passport.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[4];
  v137 = v2[8];
  v147 = v2[10];
  v148 = v2[7];
  v5 = v2[11];
  v108 = v2[9];
  v109 = v2[12];
  v6 = v2[14];
  v107 = v2[13];
  v7 = v2[15];
  v139 = v2[17];
  v140 = v2[18];
  v110 = v2[16];
  v111 = v2[19];
  v138 = v2[20];
  v115 = v2[24];
  v141 = v2[25];
  v116 = v2[26];
  v112 = v2[27];
  v113 = v2[22];
  v149 = v2[21];
  v150 = v2[28];
  v172 = v2[29];
  v151 = v2[31];
  v178 = v2[32];
  v117 = v2[34];
  v118 = v2[33];
  v152 = v2[35];
  v173 = v2[36];
  v119 = v2[38];
  v179 = v2[39];
  v120 = v2[40];
  v169 = v2[41];
  v154 = v2[42];
  v155 = v2[43];
  v167 = v2[46];
  v121 = v2[48];
  v174 = v2[50];
  v144 = v2[53];
  v125 = v2[55];
  v126 = v2[54];
  v157 = v2[52];
  v158 = v2[56];
  v175 = v2[57];
  v127 = v2[59];
  v168 = v2[60];
  v128 = v2[61];
  v176 = v2[64];
  v161 = v2[65];
  v145 = v2[67];
  v129 = v2[66];
  v130 = v2[68];
  v171 = v2[69];
  v177 = v2[71];
  v162 = v2[70];
  v163 = v2[72];
  v146 = v2[74];
  v133 = v2[73];
  v134 = v2[75];
  v132 = v2[76];
  v165 = v2[79];
  v166 = v2[80];
  v180 = v2[81];
  v135 = v2[78];
  v136 = v2[82];
  v131 = v2[83];
  v164 = v2[77];
  v160 = v2[63];
  v159 = v2[58];
  v170 = v2[62];
  v142 = v2[30];
  v143 = v2[51];
  v156 = v2[49];
  v123 = v2[45];
  v124 = v2[47];
  v122 = v2[44];
  v153 = v2[37];
  v114 = v2[23];
  if (!v4)
  {
    sub_1B1D7C5EC();
    v14 = v5;
    v15 = v137;
    if (v5)
    {
      goto LABEL_21;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v16 = v139;
    v17 = v140;
    v18 = v138;
    if (v140)
    {
      goto LABEL_27;
    }

LABEL_6:
    sub_1B1D7C5EC();
    v19 = v141;
    if (v141)
    {
      goto LABEL_33;
    }

LABEL_7:
    sub_1B1D7C5EC();
    v20 = v142;
    if (v178)
    {
      goto LABEL_39;
    }

LABEL_8:
    sub_1B1D7C5EC();
    if (v179)
    {
      goto LABEL_45;
    }

LABEL_9:
    sub_1B1D7C5EC();
    if (v167)
    {
      goto LABEL_51;
    }

LABEL_10:
    sub_1B1D7C5EC();
    v22 = v143;
    v21 = v144;
    v23 = v168;
    if (v144)
    {
      goto LABEL_57;
    }

LABEL_11:
    sub_1B1D7C5EC();
    if (v23)
    {
      goto LABEL_63;
    }

LABEL_12:
    sub_1B1D7C5EC();
    v24 = v145;
    if (v145)
    {
      goto LABEL_69;
    }

LABEL_13:
    sub_1B1D7C5EC();
    v25 = v146;
    if (v146)
    {
      goto LABEL_75;
    }

    goto LABEL_14;
  }

  v104 = v2[11];
  v105 = v2[14];
  v106 = v2[15];
  v8 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v13 = v2[5];
  v12 = v2[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v8, v9);

  if (v9 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  v15 = v137;
  sub_1B1D2E888(a1, v11);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v12)
  {
    sub_1B1D7BE7C();
    v27 = v8;
    v28 = v9;
    v29 = v11;
    v30 = v10;
    v31 = v4;
    v32 = v13;
    v33 = v12;
  }

  else
  {
    v27 = v8;
    v28 = v9;
    v29 = v11;
    v30 = v10;
    v31 = v4;
    v32 = v13;
    v33 = 0;
  }

  sub_1B1D0D630(v27, v28, v29, v30, v31, v32, v33);
  v6 = v105;
  v7 = v106;
  v14 = v104;
  if (!v104)
  {
    goto LABEL_5;
  }

LABEL_21:
  sub_1B1D7C5EC();
  v16 = v139;
  v17 = v140;
  sub_1B1D7C5EC();
  sub_1B1C91B94(v148, v15);

  if (v15 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v108);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v107)
  {
    sub_1B1D7BE7C();
    v35 = v147;
    v34 = v148;
    v36 = v15;
    v37 = v108;
    v38 = v14;
    v39 = v109;
    v40 = v107;
  }

  else
  {
    v34 = v148;
    v36 = v15;
    v37 = v108;
    v35 = v147;
    v38 = v14;
    v39 = v109;
    v40 = 0;
  }

  sub_1B1D0D630(v34, v36, v37, v35, v38, v39, v40);
  v18 = v138;
  if (!v140)
  {
    goto LABEL_6;
  }

LABEL_27:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v6, v7);

  if (v7 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v110);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v18)
  {
    sub_1B1D7BE7C();
    v41 = v6;
    v42 = v7;
    v43 = v110;
    v44 = v16;
    v45 = v17;
    v46 = v111;
    v47 = v18;
  }

  else
  {
    v41 = v6;
    v42 = v7;
    v43 = v110;
    v44 = v16;
    v45 = v17;
    v46 = v111;
    v47 = 0;
  }

  sub_1B1D0D630(v41, v42, v43, v44, v45, v46, v47);
  v19 = v141;
  if (!v141)
  {
    goto LABEL_7;
  }

LABEL_33:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v149, v113);

  if (v113 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v114);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v112)
  {
    sub_1B1D7BE7C();
    v48 = v149;
    v49 = v113;
    v50 = v114;
    v51 = v115;
    v52 = v19;
    v53 = v116;
    v54 = v112;
  }

  else
  {
    v48 = v149;
    v49 = v113;
    v50 = v114;
    v51 = v115;
    v52 = v19;
    v53 = v116;
    v54 = 0;
  }

  sub_1B1D0D630(v48, v49, v50, v51, v52, v53, v54);
  v20 = v142;
  if (!v178)
  {
    goto LABEL_8;
  }

LABEL_39:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v150, v172);

  if (v172 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v20);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v117)
  {
    sub_1B1D7BE7C();
    v55 = v150;
    v56 = v151;
    v57 = v172;
    v58 = v20;
    v59 = v178;
    v60 = v118;
    v61 = v117;
  }

  else
  {
    v55 = v150;
    v56 = v151;
    v57 = v172;
    v58 = v20;
    v59 = v178;
    v60 = v118;
    v61 = 0;
  }

  sub_1B1D0D630(v55, v57, v58, v56, v59, v60, v61);
  if (!v179)
  {
    goto LABEL_9;
  }

LABEL_45:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v152, v173);

  if (v173 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v153);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v169)
  {
    sub_1B1D7BE7C();
    v62 = v152;
    v63 = v173;
    v64 = v153;
    v65 = v119;
    v66 = v179;
    v67 = v120;
    v68 = v169;
  }

  else
  {
    v62 = v152;
    v64 = v153;
    v63 = v173;
    v65 = v119;
    v66 = v179;
    v67 = v120;
    v68 = 0;
  }

  sub_1B1D0D630(v62, v63, v64, v65, v66, v67, v68);
  if (!v167)
  {
    goto LABEL_10;
  }

LABEL_51:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v154, v155);

  if (v155 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v122);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v121)
  {
    sub_1B1D7BE7C();
    v69 = v154;
    v70 = v155;
    v71 = v122;
    v72 = v123;
    v73 = v167;
    v74 = v124;
    v75 = v121;
  }

  else
  {
    v69 = v154;
    v70 = v155;
    v71 = v122;
    v72 = v123;
    v73 = v167;
    v74 = v124;
    v75 = 0;
  }

  sub_1B1D0D630(v69, v70, v71, v72, v73, v74, v75);
  v22 = v143;
  v23 = v168;
  v21 = v144;
  if (!v144)
  {
    goto LABEL_11;
  }

LABEL_57:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v156, v174);

  if (v174 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v22);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v125)
  {
    sub_1B1D7BE7C();
    v76 = v156;
    v77 = v157;
    v78 = v174;
    v79 = v22;
    v80 = v21;
    v81 = v126;
    v82 = v125;
  }

  else
  {
    v76 = v156;
    v77 = v157;
    v78 = v174;
    v79 = v22;
    v80 = v21;
    v81 = v126;
    v82 = 0;
  }

  sub_1B1D0D630(v76, v78, v79, v77, v80, v81, v82);
  v23 = v168;
  if (!v168)
  {
    goto LABEL_12;
  }

LABEL_63:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v158, v175);

  if (v175 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v159);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v170)
  {
    sub_1B1D7BE7C();
    v83 = v158;
    v84 = v159;
    v85 = v175;
    v86 = v127;
    v87 = v23;
    v88 = v128;
    v89 = v170;
  }

  else
  {
    v83 = v158;
    v84 = v159;
    v85 = v175;
    v86 = v127;
    v87 = v23;
    v88 = v128;
    v89 = 0;
  }

  sub_1B1D0D630(v83, v85, v84, v86, v87, v88, v89);
  v24 = v145;
  if (!v145)
  {
    goto LABEL_13;
  }

LABEL_69:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v160, v176);

  if (v176 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v161);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v171)
  {
    sub_1B1D7BE7C();
    v90 = v160;
    v91 = v161;
    v92 = v176;
    v93 = v129;
    v94 = v24;
    v95 = v130;
    v96 = v171;
  }

  else
  {
    v90 = v160;
    v91 = v161;
    v92 = v176;
    v93 = v129;
    v94 = v24;
    v95 = v130;
    v96 = 0;
  }

  sub_1B1D0D630(v90, v92, v91, v93, v94, v95, v96);
  v25 = v146;
  if (v146)
  {
LABEL_75:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v162, v177);

    if (v177 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888(a1, v163);
    sub_1B1D7BE7C();
    if (v132)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v162, v177, v163, v133, v25, v134, v132);
      if (v180)
      {
        goto LABEL_79;
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v162, v177, v163, v133, v25, v134, 0);
      if (v180)
      {
        goto LABEL_79;
      }
    }

    return sub_1B1D7C5EC();
  }

LABEL_14:
  sub_1B1D7C5EC();
  if (!v180)
  {
    return sub_1B1D7C5EC();
  }

LABEL_79:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v164, v135);

  if (v135 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v165);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v131)
  {
    sub_1B1D7BE7C();
    v97 = v164;
    v98 = v165;
    v99 = v135;
    v100 = v166;
    v101 = v180;
    v102 = v136;
    v103 = v131;
  }

  else
  {
    v97 = v164;
    v98 = v165;
    v99 = v135;
    v100 = v166;
    v101 = v180;
    v102 = v136;
    v103 = 0;
  }

  return sub_1B1D0D630(v97, v99, v98, v100, v101, v102, v103);
}

uint64_t ASImportableCredential.Passport.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.Passport.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.Passport.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AF0, &qword_1B1D88F10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B1D66B30();
  sub_1B1D7C62C();
  if (v2)
  {
    v102 = v2;
    v93 = 0;
    v90 = 0;
    v88 = 0;
    v82 = 0;
    v83 = 0;
    v74 = 0;
    v75 = 0;
    v64 = 0;
    v65 = 0;
    v59 = 0;
    v60 = 0;
    v84 = 0;
    v69 = 0;
    v70 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v51 = 0;
    v52 = 0;
    v78 = 0;
    v79 = 0;
    v72 = 0;
    v73 = 0;
    v67 = 0;
    v68 = 0;
    v61 = 0;
    v62 = 0;
    v49 = 0;
    v50 = 0;
    v63 = 0;
    v53 = 0;
    v86 = 0;
    v87 = 0;
    v80 = 0;
    v81 = 0;
    v76 = 0;
    v77 = 0;
    v71 = 0;
    v66 = 0;
    v58 = 0;
    v91 = 0;
    v89 = 0uLL;
    v85 = 0;
    v95 = 0uLL;
    memset(v94, 0, sizeof(v94));
    v92 = 0;
    v99 = 0uLL;
    v98 = 0;
    v97 = 0uLL;
    v96 = 0uLL;
    v46 = 0;
    v101 = 0;
    memset(v100, 0, sizeof(v100));
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v44 = 0;
    v17 = 0;
    v47 = 0u;
    v48 = 0u;
  }

  else
  {
    LOBYTE(v103[0]) = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v19 = *(&v111 + 1);
    v40 = v111;
    v41 = v112;
    v42 = *v113;
    v43 = *&v113[8];
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v103[0]) = 1;
    sub_1B1D7C3FC();
    v44 = v19;
    v38 = a2;
    v39 = v111;
    *v100 = v112;
    *&v100[16] = *v113;
    v46 = *&v113[16];
    v20 = *&v113[8];
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v103[0]) = 2;
    sub_1B1D7C3FC();
    v101 = v20;
    v96 = v111;
    v97 = v112;
    v98 = *v113;
    v99 = *&v113[8];
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v103[0]) = 3;
    sub_1B1D7C3FC();
    *&v94[0] = *(&v111 + 1);
    v92 = v111;
    *(v94 + 8) = v112;
    *(&v94[1] + 1) = *v113;
    v95 = *&v113[8];
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v103[0]) = 4;
    sub_1B1D7C3FC();
    v80 = *(&v111 + 1);
    v77 = v111;
    v87 = *(&v112 + 1);
    v85 = v112;
    v89 = *v113;
    v91 = *&v113[16];
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v103[0]) = 5;
    sub_1B1D7C3FC();
    v62 = *(&v111 + 1);
    v58 = v111;
    v71 = *(&v112 + 1);
    v66 = v112;
    v76 = *v113;
    v86 = *&v113[16];
    v81 = *&v113[8];
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v103[0]) = 6;
    sub_1B1D7C3FC();
    v53 = *(&v111 + 1);
    v49 = v111;
    v63 = *(&v112 + 1);
    v57 = v112;
    v68 = *v113;
    v78 = *&v113[16];
    v72 = *&v113[8];
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v103[0]) = 7;
    sub_1B1D7C3FC();
    v52 = *(&v111 + 1);
    v50 = v111;
    v61 = *(&v112 + 1);
    v55 = v112;
    v67 = *v113;
    v79 = *&v113[16];
    v73 = *&v113[8];
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v103[0]) = 8;
    sub_1B1D7C3FC();
    v102 = 0;
    v56 = *(&v111 + 1);
    v51 = v111;
    v70 = *(&v112 + 1);
    v64 = v112;
    v83 = *v113;
    v48 = *&v113[8];
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    LOBYTE(v103[0]) = 9;
    v21 = v102;
    sub_1B1D7C3FC();
    v102 = v21;
    if (v21)
    {
      (*(v6 + 8))(v8, v5);
      v93 = 0;
      v90 = 0;
      v88 = 0;
      v82 = 0;
      v74 = 0;
      v75 = 0;
      v65 = 0;
      v59 = 0;
      v60 = 0;
      v84 = 0;
      v69 = 0;
      v54 = 0;
      v47 = 0u;
    }

    else
    {
      v47 = v111;
      v60 = *(&v112 + 1);
      v54 = v112;
      v69 = *v113;
      v84 = *&v113[16];
      v75 = *&v113[8];
      sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
      LOBYTE(v103[0]) = 10;
      v22 = v102;
      sub_1B1D7C3FC();
      v102 = v22;
      if (v22)
      {
        (*(v6 + 8))(v8, v5);
        v93 = 0;
        v90 = 0;
        v88 = 0;
        v82 = 0;
        v74 = 0;
        v65 = 0;
        v59 = 0;
      }

      else
      {
        v65 = *(&v111 + 1);
        v59 = v111;
        v82 = *(&v112 + 1);
        v74 = v112;
        v88 = *v113;
        v93 = *&v113[16];
        v90 = *&v113[8];
        sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
        v177 = 11;
        v23 = v102;
        sub_1B1D7C3FC();
        v102 = v23;
        if (!v23)
        {
          (*(v6 + 8))(v8, v5);
          v36 = v105;
          v37 = v104;
          v34 = v107;
          v35 = v106;
          v32 = v109;
          v33 = v108;
          v31 = v110;
          sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
          *(&v103[30] + 8) = v48;
          *(&v103[31] + 8) = v47;
          v25 = v40;
          v24 = v41;
          *&v103[0] = v40;
          *(&v103[0] + 1) = v19;
          v103[1] = v41;
          v27 = *(&v41 + 1);
          v26 = v42;
          *&v103[2] = v42;
          v28 = v43;
          *(&v103[2] + 8) = v43;
          *(&v103[3] + 8) = v39;
          *(&v103[4] + 1) = *v100;
          v103[5] = *&v100[8];
          *&v103[6] = v101;
          v29 = v46;
          *(&v103[6] + 1) = v46;
          v103[7] = v96;
          v103[8] = v97;
          *&v103[9] = v98;
          *(&v103[9] + 8) = v99;
          *(&v103[10] + 1) = v92;
          v103[11] = v94[0];
          v103[12] = v94[1];
          v103[13] = v95;
          *&v103[14] = v77;
          *(&v103[14] + 1) = v80;
          *&v103[15] = v85;
          *(&v103[15] + 1) = v87;
          v103[16] = v89;
          *&v103[17] = v91;
          *(&v103[17] + 1) = v58;
          *&v103[18] = v62;
          *(&v103[18] + 1) = v66;
          *&v103[19] = v71;
          *(&v103[19] + 1) = v76;
          *&v103[20] = v81;
          *(&v103[20] + 1) = v86;
          *&v103[21] = v49;
          *(&v103[21] + 1) = v53;
          *&v103[22] = v57;
          *(&v103[22] + 1) = v63;
          *&v103[23] = v68;
          *(&v103[23] + 1) = v72;
          *&v103[24] = v78;
          *(&v103[24] + 1) = v50;
          *&v103[25] = v52;
          *(&v103[25] + 1) = v55;
          *&v103[26] = v61;
          *(&v103[26] + 1) = v67;
          *&v103[27] = v73;
          *(&v103[27] + 1) = v79;
          *&v103[28] = v51;
          *(&v103[28] + 1) = v56;
          *&v103[29] = v64;
          *(&v103[29] + 1) = v70;
          *&v103[30] = v83;
          *(&v103[32] + 1) = v54;
          *&v103[33] = v60;
          *(&v103[33] + 1) = v69;
          *&v103[34] = v75;
          *(&v103[34] + 1) = v84;
          *&v103[35] = v59;
          *(&v103[35] + 1) = v65;
          *&v103[36] = v74;
          *(&v103[36] + 1) = v82;
          *&v103[37] = v88;
          *(&v103[37] + 1) = v90;
          *&v103[38] = v93;
          *(&v103[38] + 1) = v37;
          *&v103[39] = v36;
          *(&v103[39] + 1) = v35;
          *&v103[40] = v34;
          *(&v103[40] + 1) = v33;
          *&v103[41] = v32;
          *(&v103[41] + 1) = v31;
          memcpy(v38, v103, 0x2A0uLL);
          sub_1B1D66BB4(v103, &v111);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          *&v111 = v25;
          *(&v111 + 1) = v19;
          *&v112 = v24;
          *(&v112 + 1) = v27;
          *v113 = v26;
          *&v113[8] = v28;
          v114 = v39;
          v115 = *v100;
          v116 = *&v100[8];
          v117 = v101;
          v118 = v29;
          v119 = v96;
          v120 = v97;
          v121 = v98;
          v122 = v99;
          v123 = v92;
          v124 = v94[0];
          v125 = v94[1];
          v126 = v95;
          v127 = v77;
          v128 = v80;
          v129 = v85;
          v130 = v87;
          v131 = v89;
          v132 = v91;
          v133 = v58;
          v134 = v62;
          v135 = v66;
          v136 = v71;
          v137 = v76;
          v138 = v81;
          v139 = v86;
          v140 = v49;
          v141 = v53;
          v142 = v57;
          v143 = v63;
          v144 = v68;
          v145 = v72;
          v146 = v78;
          v147 = v50;
          v148 = v52;
          v149 = v55;
          v150 = v61;
          v151 = v67;
          v152 = v73;
          v153 = v79;
          v154 = v51;
          v155 = v56;
          v156 = v64;
          v157 = v70;
          v159 = v48;
          v160 = v47;
          v158 = v83;
          v161 = v54;
          v162 = v60;
          v163 = v69;
          v164 = v75;
          v165 = v84;
          v166 = v59;
          v167 = v65;
          v168 = v74;
          v169 = v82;
          v170 = v88;
          v171 = v90;
          v172 = v93;
          *&v173 = v37;
          *(&v173 + 1) = v36;
          *&v174 = v35;
          *(&v174 + 1) = v34;
          *&v175 = v33;
          *(&v175 + 1) = v32;
          v176 = v31;
          return sub_1B1D66B84(&v111);
        }

        (*(v6 + 8))(v8, v5);
      }
    }

    v12 = *(&v43 + 1);
    v13 = v43;
    v15 = *(&v41 + 1);
    v14 = v42;
    v17 = v40;
    v16 = v41;
    v10 = *(&v39 + 1);
    v11 = v39;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  *&v111 = v17;
  *(&v111 + 1) = v44;
  *&v112 = v16;
  *(&v112 + 1) = v15;
  *v113 = v14;
  *&v113[8] = v13;
  *&v113[16] = v12;
  *&v114 = v11;
  *(&v114 + 1) = v10;
  v115 = *v100;
  v116 = *&v100[8];
  v117 = v101;
  v118 = v46;
  v119 = v96;
  v120 = v97;
  v121 = v98;
  v122 = v99;
  v123 = v92;
  v124 = v94[0];
  v125 = v94[1];
  v126 = v95;
  v127 = v77;
  v128 = v80;
  v129 = v85;
  v130 = v87;
  v131 = v89;
  v132 = v91;
  v133 = v58;
  v134 = v62;
  v135 = v66;
  v136 = v71;
  v137 = v76;
  v138 = v81;
  v139 = v86;
  v140 = v49;
  v141 = v53;
  v142 = v57;
  v143 = v63;
  v144 = v68;
  v145 = v72;
  v146 = v78;
  v147 = v50;
  v148 = v52;
  v149 = v55;
  v150 = v61;
  v151 = v67;
  v152 = v73;
  v153 = v79;
  v154 = v51;
  v155 = v56;
  v156 = v64;
  v157 = v70;
  v159 = v48;
  v160 = v47;
  v158 = v83;
  v161 = v54;
  v162 = v60;
  v163 = v69;
  v164 = v75;
  v165 = v84;
  v166 = v59;
  v167 = v65;
  v168 = v74;
  v169 = v82;
  v170 = v88;
  v171 = v90;
  v172 = v93;
  v174 = 0u;
  v175 = 0u;
  v173 = 0u;
  v176 = 0;
  return sub_1B1D66B84(&v111);
}

uint64_t sub_1B1D4E190()
{
  sub_1B1D7C5CC();
  ASImportableCredential.Passport.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D4E1D4(uint64_t a1)
{
  sub_1B1D7C5CC();
  ASImportableCredential.Passport.hash(into:)(v2);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D4E308@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[42];
  v3 = v1[43];
  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 sub_1B1D4E330(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 336), *(v1 + 344), *(v1 + 352), *(v1 + 360), *(v1 + 368), *(v1 + 376), *(v1 + 384));
  v4 = *(a1 + 16);
  *(v1 + 336) = *a1;
  *(v1 + 352) = v4;
  result = v6;
  *(v1 + 368) = v6;
  *(v1 + 384) = v3;
  return result;
}

uint64_t sub_1B1D4E3B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[49];
  v3 = v1[50];
  v4 = v1[51];
  v5 = v1[52];
  v6 = v1[53];
  v7 = v1[54];
  v8 = v1[55];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 sub_1B1D4E3E0(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 392), *(v1 + 400), *(v1 + 408), *(v1 + 416), *(v1 + 424), *(v1 + 432), *(v1 + 440));
  v4 = *(a1 + 16);
  *(v1 + 392) = *a1;
  *(v1 + 408) = v4;
  result = v6;
  *(v1 + 424) = v6;
  *(v1 + 440) = v3;
  return result;
}

uint64_t sub_1B1D4E478@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[56];
  v3 = v1[57];
  v4 = v1[58];
  v5 = v1[59];
  v6 = v1[60];
  v7 = v1[61];
  v8 = v1[62];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 sub_1B1D4E4A0(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 448), *(v1 + 456), *(v1 + 464), *(v1 + 472), *(v1 + 480), *(v1 + 488), *(v1 + 496));
  v4 = *(a1 + 16);
  *(v1 + 448) = *a1;
  *(v1 + 464) = v4;
  result = v6;
  *(v1 + 480) = v6;
  *(v1 + 496) = v3;
  return result;
}

__n128 sub_1B1D4E530@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v31 = *(a1 + 32);
  v30 = *(a1 + 48);
  v19 = (a9 + 344);
  v32 = *a2;
  v33 = a2[6];
  v34 = a2[5];
  v35 = *a3;
  v36 = a3[6];
  v37 = a3[5];
  v38 = *a4;
  v39 = a4[6];
  v40 = a4[5];
  v41 = *a5;
  v42 = a5[6];
  v43 = a5[5];
  v46 = a6[5];
  v44 = *a6;
  v45 = a6[6];
  v49 = *a7;
  v51 = a7[6];
  v52 = a7[5];
  v55 = *a8;
  *(a9 + 496) = 0;
  *(a9 + 464) = 0u;
  *(a9 + 480) = 0u;
  *(a9 + 432) = 0u;
  *(a9 + 448) = 0u;
  *(a9 + 400) = 0u;
  *(a9 + 416) = 0u;
  *(a9 + 368) = 0u;
  *(a9 + 384) = 0u;
  *(a9 + 336) = 0u;
  *(a9 + 352) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
  v47 = a8[6];
  v48 = a8[5];
  v50 = *a10;
  v53 = a10[6];
  v54 = a10[5];
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  v20 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v20;
  *(a9 + 32) = v31;
  *(a9 + 48) = v30;
  sub_1B1D0D630(*(a9 + 56), *(a9 + 64), *(a9 + 72), *(a9 + 80), *(a9 + 88), *(a9 + 96), *(a9 + 104));
  *(a9 + 56) = v32;
  v21 = *(a2 + 3);
  *(a9 + 64) = *(a2 + 1);
  *(a9 + 80) = v21;
  *(a9 + 96) = v34;
  *(a9 + 104) = v33;
  sub_1B1D0D630(*(a9 + 112), *(a9 + 120), *(a9 + 128), *(a9 + 136), *(a9 + 144), *(a9 + 152), *(a9 + 160));
  *(a9 + 112) = v35;
  v22 = *(a3 + 1);
  *(a9 + 136) = *(a3 + 3);
  *(a9 + 120) = v22;
  *(a9 + 152) = v37;
  *(a9 + 160) = v36;
  sub_1B1D0D630(*(a9 + 168), *(a9 + 176), *(a9 + 184), *(a9 + 192), *(a9 + 200), *(a9 + 208), *(a9 + 216));
  *(a9 + 168) = v38;
  v23 = *(a4 + 3);
  *(a9 + 176) = *(a4 + 1);
  *(a9 + 192) = v23;
  *(a9 + 208) = v40;
  *(a9 + 216) = v39;
  sub_1B1D0D630(*(a9 + 224), *(a9 + 232), *(a9 + 240), *(a9 + 248), *(a9 + 256), *(a9 + 264), *(a9 + 272));
  *(a9 + 224) = v41;
  v24 = *(a5 + 1);
  *(a9 + 248) = *(a5 + 3);
  *(a9 + 232) = v24;
  *(a9 + 264) = v43;
  *(a9 + 272) = v42;
  sub_1B1D0D630(*(a9 + 280), *(a9 + 288), *(a9 + 296), *(a9 + 304), *(a9 + 312), *(a9 + 320), *(a9 + 328));
  *(a9 + 280) = v44;
  v25 = *(a6 + 3);
  *(a9 + 288) = *(a6 + 1);
  *(a9 + 304) = v25;
  *(a9 + 320) = v46;
  *(a9 + 328) = v45;
  sub_1B1D0D630(*(a9 + 336), *(a9 + 344), *(a9 + 352), *(a9 + 360), *(a9 + 368), *(a9 + 376), *(a9 + 384));
  *(a9 + 336) = v49;
  v26 = *(a7 + 3);
  *v19 = *(a7 + 1);
  *(a9 + 360) = v26;
  *(a9 + 376) = v52;
  *(a9 + 384) = v51;
  sub_1B1D0D630(*(a9 + 392), *(a9 + 400), *(a9 + 408), *(a9 + 416), *(a9 + 424), *(a9 + 432), *(a9 + 440));
  *(a9 + 392) = v55;
  v27 = *(a8 + 3);
  *(a9 + 400) = *(a8 + 1);
  *(a9 + 416) = v27;
  *(a9 + 432) = v48;
  *(a9 + 440) = v47;
  sub_1B1D0D630(*(a9 + 448), *(a9 + 456), *(a9 + 464), *(a9 + 472), *(a9 + 480), *(a9 + 488), *(a9 + 496));
  *(a9 + 448) = v50;
  result = *(a10 + 1);
  v29 = *(a10 + 3);
  *(a9 + 456) = result;
  *(a9 + 472) = v29;
  *(a9 + 488) = v54;
  *(a9 + 496) = v53;
  return result;
}

uint64_t sub_1B1D4E850(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C746974;
    v6 = 0x666E496E65766967;
    if (a1 != 2)
    {
      v6 = 0x326E65766967;
    }

    if (a1)
    {
      v5 = 0x6E65766967;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x32656D616E727573;
    v2 = 0x69746E6564657263;
    if (a1 != 7)
    {
      v2 = 0x69746172656E6567;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x50656D616E727573;
    if (a1 != 4)
    {
      v3 = 0x656D616E727573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B1D4E98C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B1D6CE10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B1D4E9B4(uint64_t a1)
{
  v2 = sub_1B1D66BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D4E9F0(uint64_t a1)
{
  v2 = sub_1B1D66BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D4EA70(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v116 = a4;
  v117 = a5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v119 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v54 - v7;
  v8 = v5[1];
  v113 = *v5;
  v9 = v5[2];
  v10 = v5[3];
  v11 = v5[4];
  v12 = v5[5];
  v13 = v5[6];
  v110 = v5[7];
  v111 = v13;
  v14 = v5[8];
  v108 = v5[9];
  v109 = v14;
  v15 = v5[10];
  v106 = v5[11];
  v107 = v15;
  v16 = v5[13];
  v105 = v5[12];
  v104 = v16;
  v17 = v5[15];
  v103 = v5[14];
  v102 = v17;
  v18 = v5[17];
  v101 = v5[16];
  v100 = v18;
  v19 = v5[19];
  v99 = v5[18];
  v98 = v19;
  v20 = v5[21];
  v97 = v5[20];
  v90 = v20;
  v21 = v5[23];
  v91 = v5[22];
  v92 = v21;
  v22 = v5[25];
  v93 = v5[24];
  v96 = v22;
  v23 = v5[27];
  v95 = v5[26];
  v94 = v23;
  v24 = v5[29];
  v83 = v5[28];
  v84 = v24;
  v25 = v5[31];
  v85 = v5[30];
  v86 = v25;
  v26 = v5[33];
  v89 = v5[32];
  v88 = v26;
  v27 = v5[35];
  v87 = v5[34];
  v76 = v27;
  v28 = v5[37];
  v77 = v5[36];
  v78 = v28;
  v29 = v5[39];
  v82 = v5[38];
  v81 = v29;
  v30 = v5[41];
  v80 = v5[40];
  v79 = v30;
  v31 = v5[43];
  v69 = v5[42];
  v70 = v31;
  v32 = v5[45];
  v71 = v5[44];
  v75 = v32;
  v33 = v5[47];
  v74 = v5[46];
  v73 = v33;
  v34 = v5[49];
  v72 = v5[48];
  v62 = v34;
  v35 = v5[51];
  v63 = v5[50];
  v64 = v35;
  v36 = v5[53];
  v68 = v5[52];
  v67 = v36;
  v37 = v5[55];
  v66 = v5[54];
  v65 = v37;
  v38 = v5[57];
  v55 = v5[56];
  v56 = v38;
  v39 = v5[59];
  v57 = v5[58];
  v58 = v39;
  v40 = v5[61];
  v59 = v5[60];
  v61 = v40;
  v60 = v5[62];
  v41 = a1[3];
  v112 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  v42 = v113;
  v43 = sub_1B1D66328(v113, v8, v9, v10, v11, v12, v13);
  v116(v43);
  v44 = v114;
  v45 = v115;
  sub_1B1D7C63C();
  v120 = v42;
  v121 = v8;
  v122 = v9;
  v123 = v10;
  v124 = v11;
  v125 = v12;
  v126 = v111;
  v127 = 0;
  v46 = sub_1B1D663C8();
  v47 = v118;
  sub_1B1D7C48C();
  if (v47)
  {
    sub_1B1D0D630(v120, v121, v122, v123, v124, v125, v126);
    return (*(v119 + 8))(v44, v45);
  }

  else
  {
    v49 = v100;
    v50 = v101;
    v51 = v102;
    v52 = v103;
    v53 = v119;
    sub_1B1D0D630(v120, v121, v122, v123, v124, v125, v126);
    v120 = v110;
    v121 = v109;
    v122 = v108;
    v123 = v107;
    v124 = v106;
    v125 = v105;
    v126 = v104;
    v127 = 1;
    sub_1B1D66328(v110, v109, v108, v107, v106, v105, v104);
    v118 = v46;
    sub_1B1D7C48C();
    sub_1B1D0D630(v120, v121, v122, v123, v124, v125, v126);
    v120 = v52;
    v121 = v51;
    v122 = v50;
    v123 = v49;
    v124 = v99;
    v125 = v98;
    v126 = v97;
    v127 = 2;
    sub_1B1D66328(v52, v51, v50, v49, v99, v98, v97);
    sub_1B1D7C48C();
    sub_1B1D0D630(v120, v121, v122, v123, v124, v125, v126);
    v120 = v90;
    v121 = v91;
    v122 = v92;
    v123 = v93;
    v124 = v96;
    v125 = v95;
    v126 = v94;
    v127 = 3;
    sub_1B1D66328(v90, v91, v92, v93, v96, v95, v94);
    sub_1B1D7C48C();
    sub_1B1D0D630(v120, v121, v122, v123, v124, v125, v126);
    v120 = v83;
    v121 = v84;
    v122 = v85;
    v123 = v86;
    v124 = v89;
    v125 = v88;
    v126 = v87;
    v127 = 4;
    sub_1B1D66328(v83, v84, v85, v86, v89, v88, v87);
    sub_1B1D7C48C();
    sub_1B1D0D630(v120, v121, v122, v123, v124, v125, v126);
    v120 = v76;
    v121 = v77;
    v122 = v78;
    v123 = v82;
    v124 = v81;
    v125 = v80;
    v126 = v79;
    v127 = 5;
    sub_1B1D66328(v76, v77, v78, v82, v81, v80, v79);
    sub_1B1D7C48C();
    sub_1B1D0D630(v120, v121, v122, v123, v124, v125, v126);
    v120 = v69;
    v121 = v70;
    v122 = v71;
    v123 = v75;
    v124 = v74;
    v125 = v73;
    v126 = v72;
    v127 = 6;
    sub_1B1D66328(v69, v70, v71, v75, v74, v73, v72);
    sub_1B1D7C48C();
    sub_1B1D0D630(v120, v121, v122, v123, v124, v125, v126);
    v120 = v62;
    v121 = v63;
    v122 = v64;
    v123 = v68;
    v124 = v67;
    v125 = v66;
    v126 = v65;
    v127 = 7;
    sub_1B1D66328(v62, v63, v64, v68, v67, v66, v65);
    sub_1B1D7C48C();
    sub_1B1D0D630(v120, v121, v122, v123, v124, v125, v126);
    v120 = v55;
    v121 = v56;
    v122 = v57;
    v123 = v58;
    v124 = v59;
    v125 = v61;
    v126 = v60;
    v127 = 8;
    sub_1B1D66328(v55, v56, v57, v58, v59, v61, v60);
    sub_1B1D7C48C();
    sub_1B1D0D630(v120, v121, v122, v123, v124, v125, v126);
    return (*(v53 + 8))(v44, v45);
  }
}

uint64_t sub_1B1D4F2FC(uint64_t a1)
{
  v2 = v1;
  v4 = v2[4];
  v5 = v2[7];
  v6 = v2[8];
  v78 = v2[9];
  v79 = v2[10];
  v7 = v2[11];
  v8 = v2[13];
  v9 = v2[18];
  v85 = v2[19];
  v80 = v2[12];
  v81 = v2[20];
  v122 = v2[22];
  v10 = v2[23];
  v102 = v2[24];
  v103 = v2[25];
  v87 = v2[26];
  v123 = v2[29];
  v112 = v2[30];
  v104 = v2[31];
  v105 = v2[32];
  v89 = v2[33];
  v113 = v2[35];
  v124 = v2[36];
  v90 = v2[37];
  v106 = v2[39];
  v92 = v2[40];
  v120 = v2[41];
  v114 = v2[42];
  v125 = v2[43];
  v93 = v2[44];
  v94 = v2[45];
  v107 = v2[46];
  v95 = v2[47];
  v121 = v2[48];
  v126 = v2[50];
  v115 = v2[49];
  v116 = v2[51];
  v98 = v2[52];
  v108 = v2[53];
  v99 = v2[54];
  v97 = v2[55];
  v118 = v2[58];
  v119 = v2[59];
  v127 = v2[60];
  v100 = v2[57];
  v101 = v2[61];
  v96 = v2[62];
  v117 = v2[56];
  v91 = v2[38];
  v111 = v2[28];
  v88 = v2[34];
  v110 = v2[21];
  v86 = v2[27];
  v83 = v2[16];
  v84 = v2[17];
  v82 = v2[15];
  v109 = v2[14];
  if (!v4)
  {
    sub_1B1D7C5EC();
    if (v7)
    {
      goto LABEL_18;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v17 = v103;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v74 = v2[13];
  v75 = v2[7];
  v76 = v2[8];
  v77 = v2[18];
  v11 = *v2;
  v12 = v2[1];
  v13 = v2[2];
  v14 = v2[3];
  v15 = v2[5];
  v16 = v2[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v11, v12);

  if (v12 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v13);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v16)
  {
    sub_1B1D7BE7C();
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v28 = v14;
    v29 = v4;
    v30 = v15;
    v31 = v16;
  }

  else
  {
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v28 = v14;
    v29 = v4;
    v30 = v15;
    v31 = 0;
  }

  sub_1B1D0D630(v25, v26, v27, v28, v29, v30, v31);
  v9 = v77;
  v5 = v75;
  v6 = v76;
  v8 = v74;
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_18:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v5, v6);

  if (v6 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  v17 = v103;
  sub_1B1D2E888(a1, v78);
  sub_1B1D7BE7C();
  if (v8)
  {
    sub_1B1D7C5EC();
    sub_1B1D7BE7C();
    sub_1B1D0D630(v5, v6, v78, v79, v7, v80, v8);
    if (!v9)
    {
LABEL_6:
      sub_1B1D7C5EC();
      v18 = v104;
      v19 = v102;
      if (!v17)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }
  }

  else
  {
    sub_1B1D7C5EC();
    sub_1B1D0D630(v5, v6, v78, v79, v7, v80, 0);
    if (!v9)
    {
      goto LABEL_6;
    }
  }

LABEL_24:
  sub_1B1D7C5EC();
  v19 = v102;
  sub_1B1D7C5EC();
  sub_1B1C91B94(v109, v82);

  if (v82 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v83);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v81)
  {
    sub_1B1D7BE7C();
    v32 = v109;
    v33 = v82;
    v34 = v83;
    v35 = v84;
    v36 = v9;
    v37 = v85;
    v38 = v81;
  }

  else
  {
    v32 = v109;
    v33 = v82;
    v34 = v83;
    v35 = v84;
    v36 = v9;
    v37 = v85;
    v38 = 0;
  }

  sub_1B1D0D630(v32, v33, v34, v35, v36, v37, v38);
  v18 = v104;
  if (!v17)
  {
LABEL_7:
    sub_1B1D7C5EC();
    v20 = v105;
    if (!v105)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_30:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v110, v122);

  if (v122 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v10);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v86)
  {
    sub_1B1D7BE7C();
    v39 = v110;
    v40 = v122;
    v41 = v10;
    v42 = v19;
    v43 = v17;
    v44 = v87;
    v45 = v86;
  }

  else
  {
    v39 = v110;
    v40 = v122;
    v41 = v10;
    v42 = v19;
    v43 = v17;
    v44 = v87;
    v45 = 0;
  }

  sub_1B1D0D630(v39, v40, v41, v42, v43, v44, v45);
  v20 = v105;
  if (!v105)
  {
LABEL_8:
    sub_1B1D7C5EC();
    v21 = v106;
    if (!v106)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_36:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v111, v123);

  if (v123 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v112);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v88)
  {
    sub_1B1D7BE7C();
    v46 = v111;
    v47 = v112;
    v48 = v123;
    v49 = v18;
    v50 = v20;
    v51 = v89;
    v52 = v88;
  }

  else
  {
    v46 = v111;
    v47 = v112;
    v48 = v123;
    v49 = v18;
    v50 = v20;
    v51 = v89;
    v52 = 0;
  }

  sub_1B1D0D630(v46, v48, v47, v49, v50, v51, v52);
  v21 = v106;
  if (!v106)
  {
LABEL_9:
    sub_1B1D7C5EC();
    v22 = v107;
    if (!v107)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_42:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v113, v124);

  if (v124 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v90);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v120)
  {
    sub_1B1D7BE7C();
    v53 = v113;
    v54 = v124;
    v55 = v90;
    v56 = v91;
    v57 = v21;
    v58 = v92;
    v59 = v120;
  }

  else
  {
    v53 = v113;
    v54 = v124;
    v55 = v90;
    v56 = v91;
    v57 = v21;
    v58 = v92;
    v59 = 0;
  }

  sub_1B1D0D630(v53, v54, v55, v56, v57, v58, v59);
  v22 = v107;
  if (!v107)
  {
LABEL_10:
    sub_1B1D7C5EC();
    v23 = v108;
    if (!v108)
    {
      goto LABEL_11;
    }

LABEL_54:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v115, v126);

    if (v126 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888(a1, v116);
    sub_1B1D7BE7C();
    if (v97)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v115, v126, v116, v98, v23, v99, v97);
      if (!v127)
      {
        return sub_1B1D7C5EC();
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v115, v126, v116, v98, v23, v99, 0);
      if (!v127)
      {
        return sub_1B1D7C5EC();
      }
    }

    goto LABEL_58;
  }

LABEL_48:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v114, v125);

  if (v125 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v93);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v121)
  {
    sub_1B1D7BE7C();
    v60 = v114;
    v61 = v125;
    v62 = v93;
    v63 = v94;
    v64 = v22;
    v65 = v95;
    v66 = v121;
  }

  else
  {
    v60 = v114;
    v61 = v125;
    v62 = v93;
    v63 = v94;
    v64 = v22;
    v65 = v95;
    v66 = 0;
  }

  sub_1B1D0D630(v60, v61, v62, v63, v64, v65, v66);
  v23 = v108;
  if (v108)
  {
    goto LABEL_54;
  }

LABEL_11:
  sub_1B1D7C5EC();
  if (!v127)
  {
    return sub_1B1D7C5EC();
  }

LABEL_58:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v117, v100);

  if (v100 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v118);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v96)
  {
    sub_1B1D7BE7C();
    v67 = v117;
    v68 = v118;
    v69 = v100;
    v70 = v119;
    v71 = v127;
    v72 = v101;
    v73 = v96;
  }

  else
  {
    v67 = v117;
    v68 = v118;
    v69 = v100;
    v70 = v119;
    v71 = v127;
    v72 = v101;
    v73 = 0;
  }

  return sub_1B1D0D630(v67, v69, v68, v70, v71, v72, v73);
}

uint64_t sub_1B1D4FEE0(uint64_t (*a1)(void *))
{
  sub_1B1D7C5CC();
  a1(v3);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D4FF94@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a6)(_BYTE *, unsigned __int128 *)@<X5>, uint64_t (*a7)(unsigned __int128 *)@<X6>, void *a8@<X8>)
{
  v45 = a7;
  v37 = a6;
  v38 = a8;
  *&v39 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v27 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  a4();
  *(&v39 + 1) = v13;
  sub_1B1D7C62C();
  if (v8)
  {
    v42 = v8;
    v141 = 0;
    v82 = 0;
    v81 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0uLL;
    v57 = 0;
    v58 = 0;
    v54 = 0;
    v55 = 0;
    v51 = 0;
    v52 = 0;
    v48 = 0;
    v49 = 0;
    v60 = 0;
    v61 = 0;
    v50 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v59 = 0;
    v56 = 0;
    v53 = 0;
    v70 = 0uLL;
    v69 = 0;
    v62 = 0;
    v75 = 0uLL;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v71 = 0uLL;
    v77 = 0uLL;
    v76 = 0;
    v40 = 0;
    v41 = 0;
    v43 = 0;
    v46 = 0u;
    v47 = 0u;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    *&v91 = v43;
    *(&v91 + 1) = v40;
    v92 = v41;
    v93 = 0;
    v94 = 0;
    v95 = 0uLL;
    v96 = 0uLL;
    v97 = 0;
    v98 = 0;
    v99 = v76;
    v100 = v77;
    v101 = v71;
    v102 = v72;
    v103 = v73;
    v104 = v74;
    v105 = v75;
    v106 = v62;
    v107 = v64;
    v108 = v66;
    v109 = v68;
    v110 = v69;
    v111 = v70;
    v112 = v53;
    v113 = v56;
    v114 = v59;
    v115 = v61;
    v116 = v63;
    v117 = v65;
    v118 = v67;
    v119 = v50;
    v120 = v52;
    v121 = v55;
    v122 = v58;
    v123 = v60;
    v124 = v47;
    v125 = v46;
    v126 = v48;
    v127 = v49;
    v128 = v51;
    v129 = v54;
    v130 = v57;
    v131 = v78;
    v132 = v79;
    v133 = v80;
    v134 = v81;
    v135 = v82;
    v136 = v141;
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
  }

  else
  {
    v83[0] = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v16 = v91;
    v17 = v92;
    v34 = v93;
    v35 = v94;
    v36 = v95;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v83[0] = 1;
    sub_1B1D7C3FC();
    v40 = v16 >> 64;
    v43 = v16;
    v41 = v17;
    v31 = v91;
    v32 = v92;
    v33 = v93;
    v76 = v94;
    v77 = v95;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v83[0] = 2;
    sub_1B1D7C3FC();
    v71 = v91;
    v72 = v92;
    v73 = v93;
    v74 = v94;
    v75 = v95;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v83[0] = 3;
    sub_1B1D7C3FC();
    v64 = *(&v91 + 1);
    v62 = v91;
    v66 = v92;
    v68 = v93;
    v69 = v94;
    v70 = v95;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v83[0] = 4;
    sub_1B1D7C3FC();
    v56 = *(&v91 + 1);
    v53 = v91;
    v59 = v92;
    v61 = v93;
    v63 = v94;
    v67 = *(&v95 + 1);
    v65 = v95;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v83[0] = 5;
    sub_1B1D7C3FC();
    v52 = *(&v91 + 1);
    v50 = v91;
    v55 = v92;
    v58 = v93;
    v60 = v94;
    v47 = v95;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v83[0] = 6;
    sub_1B1D7C3FC();
    v46 = v91;
    v48 = v92;
    v49 = v93;
    v51 = v94;
    v18 = *(&v95 + 1);
    v54 = v95;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v83[0] = 7;
    sub_1B1D7C3FC();
    v57 = v18;
    v78 = v91;
    v79 = v92;
    v80 = v93;
    v81 = v94;
    v141 = *(&v95 + 1);
    v82 = v95;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v84 = 8;
    sub_1B1D7C3FC();
    v42 = 0;
    (*(v11 + 8))(*(&v39 + 1), v39);
    v19 = v85;
    v39 = v85;
    v20 = v88;
    v29 = v86;
    v30 = v88;
    v27 = v87;
    v28 = v89;
    v21 = v90;
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v22 = v43;
    *v83 = v43;
    *&v83[8] = *(&v16 + 1);
    *&v83[16] = v17;
    v23 = v34;
    *&v83[24] = v34;
    *&v83[32] = v35;
    *&v83[40] = v36;
    *&v83[56] = v31;
    *&v83[72] = v32;
    *&v83[80] = v33;
    *&v83[88] = v76;
    *&v83[96] = v77;
    *&v83[112] = v71;
    *&v83[128] = v72;
    *&v83[136] = v73;
    *&v83[144] = v74;
    *&v83[152] = v75;
    *&v83[168] = v62;
    *&v83[176] = v64;
    *&v83[184] = v66;
    *&v83[192] = v68;
    *&v83[200] = v69;
    *&v83[208] = v70;
    *&v83[224] = v53;
    *&v83[232] = v56;
    *&v83[240] = v59;
    *&v83[248] = v61;
    *&v83[256] = v63;
    *&v83[264] = v65;
    *&v83[272] = v67;
    *&v83[280] = v50;
    *&v83[288] = v52;
    *&v83[296] = v55;
    *&v83[304] = v58;
    *&v83[312] = v60;
    *&v83[320] = v47;
    *&v83[336] = v46;
    *&v83[352] = v48;
    *&v83[360] = v49;
    *&v83[368] = v51;
    *&v83[376] = v54;
    *&v83[384] = v57;
    *&v83[392] = v78;
    *&v83[408] = v79;
    *&v83[416] = v80;
    *&v83[424] = v81;
    *&v83[432] = v82;
    *&v83[440] = v141;
    *&v83[448] = v19;
    v24 = v29;
    *&v83[464] = v29;
    v25 = v27;
    *&v83[472] = v27;
    *&v83[480] = v20;
    v26 = v28;
    *&v83[488] = v28;
    *&v83[496] = v21;
    memcpy(v38, v83, 0x1F8uLL);
    v37(v83, &v91);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    *&v91 = v22;
    *(&v91 + 1) = *(&v16 + 1);
    v92 = v17;
    v93 = v23;
    v94 = v35;
    v95 = v36;
    v96 = v31;
    v97 = v32;
    v98 = v33;
    v99 = v76;
    v100 = v77;
    v101 = v71;
    v102 = v72;
    v103 = v73;
    v104 = v74;
    v105 = v75;
    v106 = v62;
    v107 = v64;
    v108 = v66;
    v109 = v68;
    v110 = v69;
    v111 = v70;
    v112 = v53;
    v113 = v56;
    v114 = v59;
    v115 = v61;
    v116 = v63;
    v117 = v65;
    v118 = v67;
    v119 = v50;
    v120 = v52;
    v121 = v55;
    v122 = v58;
    v123 = v60;
    v124 = v47;
    v125 = v46;
    v126 = v48;
    v127 = v49;
    v128 = v51;
    v129 = v54;
    v130 = v57;
    v131 = v78;
    v132 = v79;
    v133 = v80;
    v134 = v81;
    v135 = v82;
    v136 = v141;
    v137 = v39;
    *&v138 = v24;
    *(&v138 + 1) = v25;
    *&v139 = v30;
    *(&v139 + 1) = v26;
    v140 = v21;
  }

  return v45(&v91);
}

uint64_t sub_1B1D50E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1B1D7C5CC();
  a3(v5);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D50EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1B1D7C5CC();
  a4(v6);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.SSHKey.keyType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ASImportableCredential.SSHKey.keyType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ASImportableCredential.SSHKey.privateKey.getter()
{
  v1 = *(v0 + 16);
  sub_1B1CE111C(v1, *(v0 + 24));
  return v1;
}

uint64_t ASImportableCredential.SSHKey.privateKey.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASImportableCredential.SSHKey.keyComment.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ASImportableCredential.SSHKey.keyComment.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ASImportableCredential.SSHKey.creationDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.SSHKey.creationDate.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  result = v6;
  *(v1 + 80) = v6;
  *(v1 + 96) = v3;
  return result;
}

uint64_t ASImportableCredential.SSHKey.expiryDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  v8 = v1[19];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.SSHKey.expiryDate.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B1D0D630(*(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152));
  v4 = *a1;
  *(v1 + 120) = a1[1];
  *(v1 + 104) = v4;
  result = v6;
  *(v1 + 136) = v6;
  *(v1 + 152) = v3;
  return result;
}

uint64_t ASImportableCredential.SSHKey.keyGenerationSource.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  v5 = v1[23];
  v6 = v1[24];
  v7 = v1[25];
  v8 = v1[26];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ASImportableCredential.SSHKey.keyGenerationSource.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B1D0D630(*(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208));
  v4 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v4;
  result = v6;
  *(v1 + 192) = v6;
  *(v1 + 208) = v3;
  return result;
}

__n128 ASImportableCredential.SSHKey.init(keyType:privateKey:keyComment:creationDate:expiryDate:keyGenerationSource:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10)
{
  v12 = *(a7 + 48);
  v19 = a8[1];
  v20 = *a8;
  v17 = *(a7 + 32);
  v18 = a8[2];
  v13 = *(a8 + 6);
  v23 = *a10;
  v21 = a10[2];
  v22 = a10[1];
  v14 = *(a10 + 6);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  v15 = *(a7 + 16);
  *(a9 + 48) = *a7;
  *(a9 + 64) = v15;
  *(a9 + 80) = v17;
  *(a9 + 96) = v12;
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  *(a9 + 104) = v20;
  *(a9 + 120) = v19;
  *(a9 + 136) = v18;
  *(a9 + 152) = v13;
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  result = v21;
  *(a9 + 160) = v23;
  *(a9 + 176) = v22;
  *(a9 + 192) = v21;
  *(a9 + 208) = v14;
  return result;
}

uint64_t ASImportableCredential.SSHKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775B10, &qword_1B1D88F28);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66CA8();
  sub_1B1D7C62C();
  if (v2)
  {
    v71 = v2;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
LABEL_4:
    v73 = 0uLL;
    v69 = 0;
    v70 = 0;
    v74 = 0;
    v72 = 0;

    sub_1B1D0D630(v73, *(&v73 + 1), v70, v74, 0, 0, 0);
    sub_1B1D0D630(v69, v72, 0, 0, 0, 0, 0);
    return sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  }

  v8 = v5;
  LOBYTE(v89) = 0;
  v10 = sub_1B1D7C40C();
  v12 = v11;
  LOBYTE(v89) = 1;
  sub_1B1D7C40C();
  v13 = v7;
  v14 = sub_1B1D7B4AC();
  v16 = a1;
  v67 = v12;
  if (v15 >> 60 == 15)
  {
    v17 = sub_1B1D7C2BC();
    v18 = swift_allocError();
    v74 = v16;
    v19 = v18;
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0);
    *v21 = MEMORY[0x1E6969080];
    sub_1B1D7C3CC();
    sub_1B1D7C2AC();
    (*(*(v17 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v17);
    v22 = v74;
    v71 = v19;
    swift_willThrow();
    (*(v8 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    goto LABEL_4;
  }

  *&v66 = v14;
  *(&v66 + 1) = v15;
  LOBYTE(v89) = 2;
  v23 = sub_1B1D7C3DC();
  v63 = v24;
  LOBYTE(v75) = 3;
  v71 = sub_1B1D6644C();
  sub_1B1D7C3FC();
  v73 = v89;
  v74 = *(&v90 + 1);
  v70 = v90;
  v62 = v91;
  v65 = v92;
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  LOBYTE(v75) = 4;
  sub_1B1D7C3FC();
  v59 = v8;
  v72 = *(&v89 + 1);
  v25 = v89;
  v58 = v90;
  v64 = v91;
  v60 = *(&v90 + 1);
  v61 = *(&v91 + 1);
  v26 = v92;
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  v118 = 5;
  sub_1B1D7C3FC();
  v71 = 0;
  v69 = v25;
  (*(v59 + 8))(v13, v4);
  v27 = v111;
  v28 = v113;
  v55 = v113;
  v56 = v111;
  v50 = v114;
  v51 = v112;
  v29 = v115;
  v54 = v115;
  v49 = v116;
  v59 = v117;
  sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
  *&v75 = v10;
  *(&v75 + 1) = v67;
  v76 = v66;
  *&v77 = v23;
  v57 = v23;
  v30 = v63;
  *(&v77 + 1) = v63;
  v78 = v73;
  v53 = v10;
  v31 = v70;
  *&v79 = v70;
  *(&v79 + 1) = v74;
  v80 = v62;
  *&v81 = v65;
  *(&v81 + 1) = v25;
  *&v82 = v72;
  v32 = v58;
  *(&v82 + 1) = v58;
  *&v83 = v60;
  *(&v83 + 1) = v64;
  *&v84 = v61;
  *(&v84 + 1) = v26;
  *&v85 = v27;
  v33 = v51;
  *(&v85 + 1) = v51;
  *&v86 = v28;
  v34 = v50;
  *(&v86 + 1) = v50;
  *&v87 = v29;
  v35 = v49;
  v36 = v59;
  *(&v87 + 1) = v49;
  v88 = v59;
  v37 = v81;
  v38 = v82;
  v39 = v84;
  v52 = v26;
  v40 = v68;
  *(v68 + 128) = v83;
  *(v40 + 144) = v39;
  *(v40 + 96) = v37;
  *(v40 + 112) = v38;
  v41 = v85;
  v42 = v86;
  v43 = v87;
  *(v40 + 208) = v36;
  *(v40 + 176) = v42;
  *(v40 + 192) = v43;
  *(v40 + 160) = v41;
  v44 = v76;
  *v40 = v75;
  *(v40 + 16) = v44;
  v45 = v77;
  v46 = v78;
  v47 = v80;
  *(v40 + 64) = v79;
  *(v40 + 80) = v47;
  *(v40 + 32) = v45;
  *(v40 + 48) = v46;
  sub_1B1D66CFC(&v75, &v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  *&v89 = v53;
  *(&v89 + 1) = v67;
  v90 = v66;
  *&v91 = v57;
  *(&v91 + 1) = v30;
  v92 = v73;
  v93 = v31;
  v94 = v74;
  v95 = v62;
  v96 = v65;
  v97 = v69;
  v98 = v72;
  v99 = v32;
  v100 = v60;
  v101 = v64;
  v102 = v61;
  v103 = v52;
  v104 = v56;
  v105 = v33;
  v106 = v55;
  v107 = v34;
  v108 = v54;
  v109 = v35;
  v110 = v59;
  return sub_1B1D66D34(&v89);
}

uint64_t ASImportableCredential.SSHKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775B20, &qword_1B1D88F30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = v1[2];
  v46 = v1[3];
  v47 = v7;
  v8 = v1[4];
  v44 = v1[5];
  v45 = v8;
  v9 = v1[6];
  v11 = v1[8];
  v10 = v1[9];
  v37 = v1[7];
  v38 = v11;
  v42 = v10;
  v43 = v9;
  v12 = v1[10];
  v40 = v1[11];
  v41 = v12;
  v13 = v1[13];
  v39 = v1[12];
  v30 = v13;
  v14 = v1[15];
  v31 = v1[14];
  v32 = v14;
  v15 = v1[16];
  v35 = v1[17];
  v36 = v15;
  v16 = v1[19];
  v34 = v1[18];
  v33 = v16;
  v17 = v1[21];
  v23 = v1[20];
  v24 = v17;
  v18 = v1[23];
  v25 = v1[22];
  v29 = v18;
  v19 = v1[25];
  v28 = v1[24];
  v27 = v19;
  v26 = v1[26];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66CA8();
  sub_1B1D7C63C();
  LOBYTE(v49) = 0;
  v20 = v48;
  sub_1B1D7C49C();
  if (!v20)
  {
    v21 = v43;
    sub_1B1D7B4BC();
    LOBYTE(v49) = 1;
    sub_1B1D7C49C();

    LOBYTE(v49) = 2;
    sub_1B1D7C47C();
    v49 = v21;
    v50 = v37;
    v51 = v38;
    v52 = v42;
    v53 = v41;
    v54 = v40;
    v55 = v39;
    v56 = 3;
    sub_1B1D66328(v21, v37, v38, v42, v41, v40, v39);
    sub_1B1D663C8();
    sub_1B1D7C48C();
    sub_1B1D0D630(v49, v50, v51, v52, v53, v54, v55);
    v49 = v30;
    v50 = v31;
    v51 = v32;
    v52 = v36;
    v53 = v35;
    v54 = v34;
    v55 = v33;
    v56 = 4;
    sub_1B1D66328(v30, v31, v32, v36, v35, v34, v33);
    sub_1B1D7C48C();
    sub_1B1D0D630(v49, v50, v51, v52, v53, v54, v55);
    v49 = v23;
    v50 = v24;
    v51 = v25;
    v52 = v29;
    v53 = v28;
    v54 = v27;
    v55 = v26;
    v56 = 5;
    sub_1B1D66328(v23, v24, v25, v29, v28, v27, v26);
    sub_1B1D7C48C();
    sub_1B1D0D630(v49, v50, v51, v52, v53, v54, v55);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B1D51F8C(uint64_t a1)
{
  sub_1B1D7BE7C();
}

unint64_t sub_1B1D52098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1D6D100(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1D520C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6570795479656BLL;
  v5 = 0xEC00000065746144;
  v6 = 0x6E6F697461657263;
  v7 = 0x6144797269707865;
  v8 = 0x80000001B1D9A5B0;
  if (v2 == 4)
  {
    v8 = 0xEA00000000006574;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEA00000000007965;
  v10 = 0x4B65746176697270;
  if (v2 != 1)
  {
    v10 = 0x656D6D6F4379656BLL;
    v9 = 0xEA0000000000746ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1B1D5219C()
{
  v1 = *v0;
  v2 = 0x6570795479656BLL;
  v3 = 0x6E6F697461657263;
  v4 = 0x6144797269707865;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4B65746176697270;
  if (v1 != 1)
  {
    v5 = 0x656D6D6F4379656BLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B1D5226C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6D100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D52294(uint64_t a1)
{
  v2 = sub_1B1D66CA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D522D0(uint64_t a1)
{
  v2 = sub_1B1D66CA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.SSHKey.hash(into:)(uint64_t a1)
{
  v3 = v1[5];
  v51 = v1[6];
  v52 = v1[7];
  v41 = v1[8];
  v42 = v1[9];
  v4 = v1[10];
  v43 = v1[11];
  v40 = v1[12];
  v53 = v1[13];
  v54 = v1[14];
  v5 = v1[17];
  v48 = v1[16];
  v45 = v1[15];
  v46 = v1[18];
  v44 = v1[19];
  v6 = v1[20];
  v55 = v1[21];
  v8 = v1[22];
  v7 = v1[23];
  v47 = v1[25];
  v49 = v1[26];
  v50 = v1[24];
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();
  sub_1B1D7C5EC();
  if (v3)
  {
    sub_1B1D7BE7C();
  }

  v9 = v8;
  v10 = v6;
  v11 = v5;
  if (v4)
  {
    sub_1B1D7C5EC();
    v12 = v55;
    sub_1B1D7C5EC();
    sub_1B1C91B94(v51, v52);
    if (v52 >> 60 == 15)
    {
      v13 = v40;
    }

    else
    {

      v13 = v40;
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888(a1, v41);
    sub_1B1D7BE7C();
    sub_1B1D7C5EC();
    if (v13)
    {
      sub_1B1D7BE7C();
      v18 = v51;
      v19 = v52;
      v20 = v41;
      v21 = v42;
      v22 = v4;
      v23 = v43;
      v24 = v13;
    }

    else
    {
      v18 = v51;
      v19 = v52;
      v20 = v41;
      v21 = v42;
      v22 = v4;
      v23 = v43;
      v24 = 0;
    }

    sub_1B1D0D630(v18, v19, v20, v21, v22, v23, v24);
    v14 = v48;
    v15 = v49;
    if (v11)
    {
LABEL_14:
      sub_1B1D7C5EC();
      v16 = v50;
      sub_1B1D7C5EC();
      sub_1B1C91B94(v53, v54);
      if (v54 >> 60 == 15)
      {
        v25 = v44;
      }

      else
      {

        v25 = v44;
        sub_1B1D7B4FC();
      }

      sub_1B1D2E888(a1, v45);
      sub_1B1D7BE7C();
      sub_1B1D7C5EC();
      if (v25)
      {
        sub_1B1D7BE7C();
        v26 = v53;
        v27 = v54;
        v28 = v45;
        v29 = v14;
        v30 = v11;
        v31 = v46;
        v32 = v25;
      }

      else
      {
        v26 = v53;
        v27 = v54;
        v28 = v45;
        v29 = v14;
        v30 = v11;
        v31 = v46;
        v32 = 0;
      }

      sub_1B1D0D630(v26, v27, v28, v29, v30, v31, v32);
      v12 = v55;
      if (v50)
      {
        goto LABEL_21;
      }

      return sub_1B1D7C5EC();
    }
  }

  else
  {
    sub_1B1D7C5EC();
    v12 = v55;
    v14 = v48;
    v15 = v49;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  sub_1B1D7C5EC();
  v16 = v50;
  if (!v50)
  {
    return sub_1B1D7C5EC();
  }

LABEL_21:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v10, v12);

  if (v12 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888(a1, v9);
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v15)
  {
    sub_1B1D7BE7C();
    v33 = v10;
    v34 = v12;
    v35 = v9;
    v36 = v7;
    v37 = v16;
    v38 = v47;
    v39 = v15;
  }

  else
  {
    v33 = v10;
    v34 = v12;
    v35 = v9;
    v36 = v7;
    v37 = v16;
    v38 = v47;
    v39 = 0;
  }

  return sub_1B1D0D630(v33, v34, v35, v36, v37, v38, v39);
}

uint64_t ASImportableCredential.SSHKey.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.SSHKey.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D52878()
{
  sub_1B1D7C5CC();
  ASImportableCredential.SSHKey.hash(into:)(v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D528BC(uint64_t a1)
{
  sub_1B1D7C5CC();
  ASImportableCredential.SSHKey.hash(into:)(v2);
  return sub_1B1D7C61C();
}

AuthenticationServices::ASImportableCredential::TOTP::Algorithm_optional __swiftcall ASImportableCredential.TOTP.Algorithm.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B1D7C3AC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ASImportableCredential.TOTP.Algorithm.rawValue.getter()
{
  v1 = 0x363532616873;
  if (*v0 != 1)
  {
    v1 = 0x323135616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 828467315;
  }
}

uint64_t sub_1B1D529A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x363532616873;
  if (v2 != 1)
  {
    v3 = 0x323135616873;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 828467315;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x363532616873;
  if (*a2 != 1)
  {
    v6 = 0x323135616873;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 828467315;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B1D7C50C();
  }

  return v9 & 1;
}