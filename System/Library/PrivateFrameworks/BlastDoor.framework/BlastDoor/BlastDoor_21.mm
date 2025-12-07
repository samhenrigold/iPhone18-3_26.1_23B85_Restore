unint64_t sub_2141E8DE8()
{
  v1 = *v0;
  v2 = 0xD00000000000001BLL;
  v3 = 0xD00000000000001ALL;
  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2141E8E74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214375618(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141E8E9C(uint64_t a1)
{
  v2 = sub_214306EE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E8ED8(uint64_t a1)
{
  v2 = sub_214306EE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E8F14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097E0, &qword_2146F57F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306EE0();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097F0, &qword_2146F5800);
    v41 = 0;
    sub_214306F34();
    sub_2146DA1C8();
    v35 = *&v37[5];
    v36 = *&v37[7];
    *v37 = *v38;
    *(&v37[1] + 2) = *&v38[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909808, &qword_2146F5808);
    LOBYTE(v34) = 1;
    sub_21430700C();
    sub_2146DA1C8();
    v9 = *(&v31 + 1);
    v29 = v31;
    v10 = *(&v32 + 1);
    v30 = v32;
    v39 = v33[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909820, &qword_2146F5810);
    LOBYTE(v34) = 2;
    sub_2143070E4();
    sub_2146DA1C8();
    v27 = v9;
    v28 = v10;
    v11 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909838, &qword_2146F5818);
    LOBYTE(v34) = 3;
    sub_2143071BC();
    sub_2146DA1C8();
    v26 = v11;
    v23 = v31;
    v24 = v32;
    v25 = v33[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909850, &qword_2146F5820);
    v40 = 4;
    sub_2143072D8();
    sub_2146DA1C8();
    v12 = v28;
    v13 = v30;
    v14 = v27;
    (*(v6 + 8))(v8, v5);
    v16 = v34;
    v17 = v36;
    *v33 = *v37;
    *&v33[10] = *(&v37[1] + 2);
    v31 = v35;
    v32 = v36;
    *a2 = v35;
    *(a2 + 16) = v17;
    v18 = *&v33[16];
    *(a2 + 32) = *v33;
    *(a2 + 48) = v18;
    *(a2 + 64) = v29;
    *(a2 + 72) = v14;
    *(a2 + 80) = v13;
    *(a2 + 88) = v12;
    *(a2 + 96) = v39;
    v19 = *(&v26 + 1);
    *(a2 + 104) = v26;
    *(a2 + 112) = v19;
    v20 = *(&v23 + 1);
    *(a2 + 120) = v23;
    *(a2 + 128) = v20;
    v21 = *(&v24 + 1);
    *(a2 + 136) = v24;
    *(a2 + 144) = v21;
    *(a2 + 152) = v25;
    *(a2 + 160) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E9508(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909878, &qword_2146F5830);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = v1[1];
  v45 = *v1;
  v46 = v7;
  *v47 = v1[2];
  *&v47[10] = *(v1 + 42);
  v8 = *(v1 + 9);
  v31 = *(v1 + 8);
  v30 = v8;
  v9 = *(v1 + 11);
  v29 = *(v1 + 10);
  v28 = v9;
  v27 = *(v1 + 96);
  v10 = *(v1 + 14);
  v26 = *(v1 + 13);
  v25 = v10;
  v11 = *(v1 + 16);
  v20 = *(v1 + 15);
  v21 = v11;
  v12 = *(v1 + 18);
  v24 = *(v1 + 17);
  v23 = v12;
  v22 = *(v1 + 152);
  v19 = *(v1 + 20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v45, &v42, &qword_27C9097F0, &qword_2146F5800);
  sub_214306EE0();
  v13 = v3;
  sub_2146DAA28();
  v42 = v45;
  v43 = v46;
  *v44 = *v47;
  *&v44[10] = *&v47[10];
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097F0, &qword_2146F5800);
  sub_214307410();
  v14 = v48;
  sub_2146DA388();
  if (v14)
  {
    v38 = v42;
    v39 = v43;
    *v40 = *v44;
    *&v40[10] = *&v44[10];
    sub_213FB2DF4(&v38, &qword_27C9097F0, &qword_2146F5800);
  }

  else
  {
    v15 = v25;
    v16 = v26;
    v38 = v42;
    v39 = v43;
    *v40 = *v44;
    *&v40[10] = *&v44[10];
    sub_213FB2DF4(&v38, &qword_27C9097F0, &qword_2146F5800);
    v33 = v31;
    v34 = v30;
    v35 = v29;
    v36 = v28;
    v37 = v27;
    v32 = 1;
    sub_21431C5DC(v31, v30, v29, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909808, &qword_2146F5808);
    sub_2143074E8();
    sub_2146DA388();
    sub_21431E10C(v33, v34, v35, v36);
    v33 = v16;
    v34 = v15;
    v32 = 2;
    sub_2143075C0(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909820, &qword_2146F5810);
    sub_214307600();
    sub_2146DA388();
    sub_214307294(v33, v34);
    v33 = v20;
    v34 = v21;
    v35 = v24;
    v36 = v23;
    v37 = v22;
    v32 = 3;
    sub_21431C5DC(v20, v21, v24, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909838, &qword_2146F5818);
    sub_2143076D8();
    sub_2146DA388();
    sub_21431E10C(v33, v34, v35, v36);
    v33 = v19;
    v32 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909850, &qword_2146F5820);
    sub_2143077B0();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v13);
}

uint64_t sub_2141E9AC4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_21448CC80(&v40);
  v8 = v40;
  v9 = v41;
  v10 = v42;
  v11 = v43;
  v12 = v44;
  sub_21448CE58(&v52);
  v33 = v53;
  v34 = v52;
  v39 = v54;
  v38 = v55;
  v32 = v56;
  v52 = a2;
  v53 = a3;
  v35 = v12;
  v57 = v12;
  v40 = 0xD000000000000022;
  v41 = 0x80000002147907E0;
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000021478A360;

  v31 = v10;
  v13 = v10;
  v14 = v11;
  sub_213FDC9D0(v13, v11);
  v15 = v8(&v52, &v57, &v40);
  v16 = v8;
  if (v30)
  {

LABEL_6:

    v18 = v33;
    v22 = v31;
    v23 = v9;

    sub_213FDC6D0(v31, v11);
    v17 = v32;
    v19 = v34;
LABEL_7:
    v40 = a1;
    v41 = v16;
    v42 = v23;
    v43 = v22;
    v44 = v14;
    v45 = v35;
    *v46 = *v58;
    *&v46[3] = *&v58[3];
    v47 = v19;
    v48 = v18;
    v49 = v39;
    v50 = v38;
    v51 = v17;
    return sub_2143078E8(&v40);
  }

  v27 = a3;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000022;
    v21[1] = 0x80000002147907E0;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v26 = v8;
  sub_213FDC6D0(v31, v11);

  sub_213FDC6D0(v31, v11);
  v52 = a4;
  v53 = a5;
  v17 = v32;
  v57 = v32;
  v40 = 0xD000000000000022;
  v41 = 0x8000000214790810;
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000021478A360;
  v18 = v33;

  sub_213FDC9D0(v39, v38);
  v19 = v34;
  v20 = v34(&v52, &v57, &v40);
  v16 = v26;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000022;
    v25[1] = 0x8000000214790810;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = a2;

    sub_213FDC6D0(v39, v38);
    v14 = v27;
    v23 = v9;
    goto LABEL_7;
  }

  sub_213FDC6D0(v39, v38);

  result = sub_213FDC6D0(v39, v38);
  *a6 = a1;
  *(a6 + 8) = v26;
  *(a6 + 16) = v9;
  *(a6 + 24) = a2;
  *(a6 + 32) = v27;
  *(a6 + 40) = v35;
  *(a6 + 48) = v34;
  *(a6 + 56) = v33;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  *(a6 + 80) = v32;
  return result;
}

uint64_t sub_2141E9E88()
{
  v1 = 0x65636E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6469706176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73646F6874656DLL;
  }
}

uint64_t sub_2141E9EDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143757C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141E9F04(uint64_t a1)
{
  v2 = sub_21430793C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E9F40(uint64_t a1)
{
  v2 = sub_21430793C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E9F7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9098D8, &qword_2146F5838);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430793C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9098E8, &qword_2146F5840);
  LOBYTE(v59) = 0;
  sub_214307990();
  sub_2146DA1C8();
  v83 = a2;
  v9 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v59) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v58 = v9;
  v10 = v67;
  v57 = v66;
  v78 = 2;
  sub_2146DA1C8();
  v44 = v79;
  v52 = v80;
  sub_21448CC80(&v66);
  v12 = v67;
  v56 = v66;
  v13 = v68;
  v45 = v69;
  v14 = v70;
  sub_21448CE58(&v59);
  v54 = *(&v59 + 1);
  v50 = v59;
  v53 = *(&v60 + 1);
  v55 = v60;
  v49 = v61;
  *&v59 = v57;
  v47 = v10;
  *(&v59 + 1) = v10;
  v48 = v14;
  LOBYTE(v65[0]) = v14;
  v66 = 0xD000000000000022;
  v67 = 0x80000002147907E0;
  v68 = 0xD00000000000001CLL;
  v69 = 0x800000021478A360;

  v46 = v13;
  v15 = v13;
  v16 = v45;
  sub_213FDC9D0(v15, v45);
  v51 = v12;
  v17 = v56(&v59, v65, &v66);
  v42 = 0x80000002147907E0;
  v43 = 0x800000021478A360;
  if (v17)
  {
    v18 = v46;
    sub_213FDC6D0(v46, v16);
    v19 = v43;

    sub_213FDC6D0(v18, v16);
    v65[0] = v44;
    v65[1] = v52;
    v20 = v49;
    LOBYTE(v59) = v49;
    v66 = 0xD000000000000022;
    v67 = 0x8000000214790810;
    v68 = 0xD00000000000001CLL;
    v69 = v19;

    sub_213FDC9D0(v55, v53);
    v21 = v50(v65, &v59, &v66);
    v29 = v47;
    if (v21)
    {
      v30 = v53;
      sub_213FDC6D0(v55, v53);

      (*(v6 + 8))(v8, v5);
      v31 = v54;

      sub_213FDC6D0(v55, v30);
      *&v59 = v58;
      v32 = v56;
      *(&v59 + 1) = v56;
      v33 = v51;
      *&v60 = v51;
      *(&v60 + 1) = v57;
      *&v61 = v29;
      v34 = v48;
      BYTE8(v61) = v48;
      v35 = v50;
      *&v62 = v50;
      *(&v62 + 1) = v31;
      *&v63 = v44;
      *(&v63 + 1) = v52;
      v64 = v20;
      v36 = v83;
      *(v83 + 80) = v20;
      v37 = v62;
      v36[2] = v61;
      v36[3] = v37;
      v36[4] = v63;
      v38 = v60;
      *v36 = v59;
      v36[1] = v38;
      sub_214307A68(&v59, &v66);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v66 = v58;
      v67 = v32;
      v68 = v33;
      v69 = v57;
      v70 = v29;
      v71 = v34;
      v73 = v35;
      v74 = v31;
      v75 = v44;
      v28 = &v80;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000022;
    v39[1] = 0x8000000214790810;
    v40 = v43;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = v40;
    swift_willThrow();

    v41 = v57;
    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v55, v53);
    v26 = v41;
    v16 = v29;
    v27 = v58;
    v25 = v51;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v42;
    *v23 = 0xD000000000000022;
    v23[1] = v22;
    v24 = v43;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = v24;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);
    v25 = v51;

    v26 = v46;
    sub_213FDC6D0(v46, v16);
    v27 = v58;
    v20 = v49;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v66 = v27;
  v67 = v56;
  v68 = v25;
  v69 = v26;
  v70 = v16;
  v71 = v48;
  *v72 = *v82;
  *&v72[3] = *&v82[3];
  v73 = v50;
  v74 = v54;
  v75 = v55;
  v28 = &v81;
LABEL_8:
  v76 = *(v28 - 32);
  v77 = v20;
  return sub_2143078E8(&v66);
}

uint64_t sub_2141EA7B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909900, &qword_2146F5848);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[9];
  v15 = v1[8];
  v16 = v8;
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430793C();
  sub_2146DAA28();
  v18 = v7;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9098E8, &qword_2146F5840);
  sub_214307AC4();
  v11 = v17;
  sub_2146DA388();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v15;
  if (v9 != 1)
  {
    v18 = v16;
    v19 = v9;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v14 != 1)
    {
      v18 = v12;
      v19 = v14;
      v20 = 2;
      sub_2146DA388();
      return (*(v4 + 8))(v6, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141EAA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656E697375427369 && a2 == 0xEA00000000007373)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2141EAAF4(uint64_t a1)
{
  v2 = sub_214307B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141EAB30(uint64_t a1)
{
  v2 = sub_214307B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141EABB0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _BYTE *a6@<X8>)
{
  v16 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v12 = v16;
    v13 = sub_2146DA178();
    (*(v17 + 8))(v11, v9);
    *v12 = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141EAD58(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12();
  sub_2146DAA28();
  sub_2146DA338();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2141EAEF4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v14 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_2146DAA28();
  sub_2146DA338();
  return (*(v9 + 8))(v11, v8);
}

__n128 sub_2141EB034@<Q0>(unint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, __n128 *a8@<X8>, char *a9@<X0>)
{
  v59 = a7;
  v41.n128_u64[0] = a1;
  v41.n128_u64[1] = a2;
  v28 = *a9;
  v9 = *a5;
  v30 = a5[1];
  v10 = a5[2];
  sub_2146679F4(&v44);
  v11 = v44;
  v13 = v45;
  v12 = v46;
  v14 = v47.n128_u64[0];
  v15 = v47.n128_i8[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0AD0();
  sub_2140433DC(inited, v57);
  v34 = v57[0];
  v38 = v57[2];
  v39 = v57[1];
  v33 = v58;
  v44 = v11;
  v45 = v13;
  v46 = v12;
  v47.n128_u64[0] = v14;
  v47.n128_u8[8] = v15;

  v29 = v14;
  sub_2142E5A68(v13, v12, v14);
  sub_21403220C(v9, v30, v10, 2, 0x2E6567617373654DLL, 0xEF746E65746E6F63, 0xD00000000000001CLL, 0x800000021478A360);
  sub_214031CE0(v9, v30, v10);

  if (v35)
  {

    v36 = v44;
    v17 = v45;
    v18 = v46;
    v31 = v47.n128_u64[0];
    v19 = v47.n128_i8[8];

    sub_214032578(v13, v12, v29);
    v44 = v41;
    v45 = a3;
    v46 = a4;
    v47 = v36;
    v48 = v17;
    v49 = v18;
    v50 = v31;
    v51 = v19;
    v52 = v34;
    v53 = v39;
    v54 = v38;
    v55 = v33;
    v56 = v59;
    sub_214091594(&v44);
  }

  else
  {
    v37 = v44;
    v25 = v45;
    v26 = v46;
    v32 = v47.n128_u64[0];
    v20 = v47.n128_u8[8];

    sub_214032578(v13, v12, v29);
    v44.n128_u64[0] = v34;
    v44.n128_u64[1] = v39;
    v45 = v38;
    LOBYTE(v46) = v33;

    sub_2140325F8(a6, v28, 0xD000000000000029, 0x8000000214790840, 0xD00000000000001CLL, 0x800000021478A360);

    v21 = v44;
    v22 = v45;
    v23 = v46;

    *a8 = v41;
    a8[1].n128_u64[0] = a3;
    a8[1].n128_u64[1] = a4;
    result = v37;
    a8[2] = v37;
    a8[3].n128_u64[0] = v25;
    a8[3].n128_u64[1] = v26;
    a8[4].n128_u64[0] = v32;
    a8[4].n128_u8[8] = v20;
    a8[5] = v21;
    a8[6].n128_u64[0] = v22;
    a8[6].n128_u8[8] = v23;
    a8[7].n128_u64[0] = v59;
  }

  return result;
}

unint64_t sub_2141EB394()
{
  v1 = *v0;
  v2 = 0x7865546E69616C70;
  v3 = 0xD000000000000032;
  if (v1 != 4)
  {
    v3 = 0x7475626972747461;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_2141EB478@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143758D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141EB4A0(uint64_t a1)
{
  v2 = sub_214307BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141EB4DC(uint64_t a1)
{
  v2 = sub_214307BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141EB518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909930, &qword_2146F5860);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307BF0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v62 = a1;
  v63 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v9 = sub_2146DA008();
  v10 = __swift_project_value_buffer(v9, qword_27CA19EC8);
  v11 = v4;
  if (*(v8 + 16))
  {
    v12 = sub_21408C508(v10);
    v13 = v7;
    if (v14)
    {
      sub_2140537E4(*(v8 + 56) + 32 * v12, &v75);

      if (swift_dynamicCast())
      {
        v15 = v64;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {

      v15 = 2;
    }
  }

  else
  {

    v15 = 2;
    v13 = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v64) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v61 = v15;
  v16 = v75;
  LOBYTE(v64) = 1;
  sub_2146DA1C8();
  v60 = v16;
  v17 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  LOBYTE(v64) = 2;
  sub_2142E4F74();
  sub_2146DA1C8();
  v59 = *(&v17 + 1);
  v19 = *(&v75 + 1);
  v57 = v17;
  *&v58 = v75;
  v20 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v64) = 3;
  sub_2142E15CC();
  sub_2146DA1C8();
  v55 = v19;
  v56 = v20;
  v21 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905928, &qword_2146F3EC0);
  v90 = 5;
  sub_2142E4E9C();
  sub_2146DA1C8();
  v48 = v21;
  v49 = v91;
  sub_2146679F4(&v75);
  v22 = *(&v75 + 1);
  v50 = v75;
  v23 = v77;
  v54 = v76;
  v24 = v78;
  LODWORD(v47) = BYTE8(v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  *(v25 + 32) = sub_2142E0AD0();
  sub_2140433DC(v25, &v64);
  v53 = v64;
  v51 = v65;
  v52 = BYTE8(v65);
  *&v75 = v50;
  *(&v75 + 1) = v22;
  v26 = v54;
  v76 = v54;
  v77 = v23;
  *&v78 = v24;
  BYTE8(v78) = v47;
  v45 = v22;

  v46 = v24;
  v47 = v23;
  sub_2142E5A68(v26, v23, v24);
  v50 = "BlastDoor/Untrusted.swift";
  v27 = v58;
  v28 = v55;
  v29 = v56;
  sub_21403220C(v58, v55, v56, 2, 0x2E6567617373654DLL, 0xEF746E65746E6F63, 0xD00000000000001CLL, 0x800000021478A360);
  sub_214031CE0(v27, v28, v29);
  v30 = v50;

  v58 = v75;
  v56 = v76;
  v43 = v77;
  v44 = v78;
  LODWORD(v55) = BYTE8(v78);

  sub_214032578(v54, v47, v46);
  v72 = v53;
  v73 = v51;
  v74 = v52;

  v54 = *(&v53 + 1);

  sub_2140325F8(v48, v61, 0xD000000000000029, 0x8000000214790840, 0xD00000000000001CLL, v30 | 0x8000000000000000);
  v31 = v63;
  v32 = v57;

  (*(v31 + 8))(v13, v11);
  v33 = v72;
  v63 = v72;
  v34 = v73;
  LOBYTE(v31) = v74;

  *&v64 = v60;
  *(&v64 + 1) = *(&v16 + 1);
  *&v65 = v32;
  v35 = v59;
  *(&v65 + 1) = v59;
  v66 = v58;
  *&v67 = v56;
  *(&v67 + 1) = v43;
  *&v68 = v44;
  LOBYTE(v28) = v55;
  BYTE8(v68) = v55;
  HIDWORD(v68) = *(v93 + 3);
  *(&v68 + 9) = v93[0];
  v69 = v33;
  *&v70 = v34;
  BYTE8(v70) = v31;
  HIDWORD(v70) = *&v92[3];
  *(&v70 + 9) = *v92;
  v36 = v49;
  v71 = v49;
  v37 = v68;
  v38 = v70;
  v39 = v94;
  *(v94 + 112) = v49;
  v39[5] = v33;
  v39[6] = v38;
  v40 = v64;
  v41 = v65;
  v42 = v66;
  v39[3] = v67;
  v39[4] = v37;
  v39[1] = v41;
  v39[2] = v42;
  *v39 = v40;
  sub_214091538(&v64, &v75);
  __swift_destroy_boxed_opaque_existential_1(v62);
  *&v75 = v60;
  *(&v75 + 1) = *(&v16 + 1);
  v76 = v57;
  v77 = v35;
  v78 = v58;
  v79 = v56;
  v80 = v43;
  v81 = v44;
  v82 = v28;
  *v83 = v93[0];
  *&v83[3] = *(v93 + 3);
  v84 = v63;
  v85 = *(&v33 + 1);
  v86 = v34;
  v87 = v31;
  *&v88[3] = *&v92[3];
  *v88 = *v92;
  v89 = v36;
  return sub_214091594(&v75);
}

uint64_t sub_2141EBEA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909938, &qword_2146F5868);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  v10 = v1[6];
  v21 = v1[7];
  v22 = v10;
  v11 = v1[8];
  v18 = v1[12];
  v19 = v11;
  v20 = v1[14];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307BF0();
  sub_2146DAA28();
  v26 = v7;
  v27 = v8;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v12 = v25;
  sub_2146DA388();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = v21;
  v13 = v22;
  v26 = v24;
  v27 = v23;
  v29 = 1;
  sub_2146DA388();
  if (v13 != 1)
  {
    v26 = v13;
    v27 = v14;
    v28 = v19;
    v29 = 2;
    sub_214031CA0(v13, v14, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    sub_2142E5278();
    sub_2146DA388();
    sub_214031CE0(v26, v27, v28);
    v15 = v20;
    if (v18)
    {
      v26 = v18;
      v29 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
      sub_2142E1F00();
      sub_2146DA388();
      v26 = v15;
      v29 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905928, &qword_2146F3EC0);
      sub_2142E51A0();
      sub_2146DA388();
      return (*(v4 + 8))(v6, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141EC210@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_213FB2E54(a2, a6 + 8, &qword_27C909940, &qword_2146F5870);
  sub_214667EE4(&v29);
  v12 = v29;
  v11 = v30;
  v13 = v31;
  v14 = v32;
  v15 = v33;
  *a6 = a1;
  *(a6 + 488) = v12;
  *(a6 + 496) = v11;
  *(a6 + 504) = v13;
  *(a6 + 512) = v14;
  *(a6 + 520) = v15;
  *(a6 + 528) = a5;
  v28[0] = a3;
  v28[1] = a4;
  v34 = v15;
  v35 = v15;
  v29 = 0xD000000000000025;
  v30 = 0x8000000214790870;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  sub_213FDC9D0(v13, v14);
  v16 = v26;
  v27 = v12;
  v17 = v12(v28, &v35, &v29);
  if (v16)
  {
  }

  else
  {
    v24 = a4;
    if (v17)
    {
      sub_213FDC6D0(v13, v14);

      sub_213FB2DF4(v25, &qword_27C909940, &qword_2146F5870);
      v18 = *(a6 + 504);
      v19 = *(a6 + 512);

      result = sub_213FDC6D0(v18, v19);
      *(a6 + 488) = v12;
      *(a6 + 496) = v11;
      *(a6 + 504) = a3;
      *(a6 + 512) = v24;
      *(a6 + 520) = v34;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000025;
    v21[1] = 0x8000000214790870;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v25, &qword_27C909940, &qword_2146F5870);
  v22 = *(a6 + 504);
  v23 = *(a6 + 512);

  sub_213FDC6D0(v22, v23);
  *(a6 + 488) = v27;
  *(a6 + 496) = v11;
  *(a6 + 504) = v13;
  *(a6 + 512) = v14;
  *(a6 + 520) = v34;
  return sub_214307C44(a6);
}

unint64_t sub_2141EC450()
{
  v1 = 0x6873696E69467369;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 1852793705;
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

uint64_t sub_2141EC4CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214375AEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141EC4F4(uint64_t a1)
{
  v2 = sub_214307C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141EC530(uint64_t a1)
{
  v2 = sub_214307C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141EC56C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909948, &qword_2146F5878);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214307C98();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v10 = v6;
  v37 = a2;
  v45[0] = 0;
  v11 = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909940, &qword_2146F5870);
  LOBYTE(v40) = 1;
  sub_214307CEC();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v39[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v12 = v41;
  v36 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v39[0]) = 3;
  sub_2142E1548();
  sub_2146DA1C8();
  v34 = v5;
  v35 = v12;
  v33 = v40;
  sub_213FB2E54(v45, &v46[1], &qword_27C909940, &qword_2146F5870);
  sub_214667EE4(&v40);
  v15 = v40;
  v14 = v41;
  v16 = v42;
  v17 = v43;
  LOBYTE(v46[0]) = v11 & 1;
  v46[61] = v40;
  v46[62] = v41;
  v46[63] = v42;
  v46[64] = v43;
  LOBYTE(v46[65]) = v44;
  v46[66] = v33;
  v18 = v36;
  v39[0] = v36;
  v39[1] = v35;
  v32 = v44;
  v38 = v44;
  v40 = 0xD000000000000025;
  v41 = 0x8000000214790870;
  v29 = 0x8000000214790870;
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000021478A360;

  v30 = v17;
  v31 = v16;
  sub_213FDC9D0(v16, v17);
  v33 = v15;
  v19 = v15(v39, &v38, &v40);
  v20 = v18;
  v21 = v29;
  v22 = v34;
  if (v19)
  {
    sub_213FDC6D0(v31, v30);

    sub_213FB2DF4(v45, &qword_27C909940, &qword_2146F5870);
    (*(v10 + 8))(v8, v22);
    v23 = v46[63];
    v24 = v46[64];

    sub_213FDC6D0(v23, v24);
    v46[61] = v33;
    v46[62] = v14;
    v46[63] = v20;
    v46[64] = v35;
    LOBYTE(v46[65]) = v32;
    memcpy(v37, v46, 0x218uLL);
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  sub_214031C4C();
  swift_allocError();
  *v25 = 0xD000000000000025;
  v25[1] = v21;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v45, &qword_27C909940, &qword_2146F5870);
  (*(v10 + 8))(v8, v22);
  v26 = v46[63];
  v27 = v46[64];

  sub_213FDC6D0(v26, v27);
  v46[61] = v33;
  v46[62] = v14;
  v46[63] = v31;
  v46[64] = v30;
  LOBYTE(v46[65]) = v32;
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_214307C44(v46);
}

uint64_t sub_2141ECA78(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909950, &qword_2146F5880);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307C98();
  sub_2146DAA28();
  LOBYTE(v13) = 0;
  sub_2146DA338();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909940, &qword_2146F5870);
  sub_214307DC4();
  sub_2146DA388();
  v9 = v3[64];
  if (v9 != 1)
  {
    v13 = v3[63];
    v14 = v9;
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v13 = v3[66];
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

double sub_2141ECD28@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char *x0_0@<X0>, __int128 *a9, uint64_t a10)
{
  v51 = a7;
  *(&v27 + 1) = a2;
  *&v27 = a1;
  v13 = *x0_0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  *(v14 + 32) = sub_2142E0AD0();
  sub_2140433DC(v14, &v31);
  v48 = v31;
  v49 = v32;
  v50 = v33;

  sub_2140325F8(a10, v13, 0xD000000000000029, 0x80000002147908A0, 0xD00000000000001CLL, 0x800000021478A360);

  v15 = v49;
  if (v26)
  {
    v16 = v50;

    v17 = a9[5];
    v41 = a9[4];
    v42 = v17;
    v43 = a9[6];
    v18 = a9[1];
    v37 = *a9;
    v38 = v18;
    v19 = a9[3];
    v39 = a9[2];
    v31 = v27;
    v32 = a3;
    v33 = a4;
    v34 = a5 & 1;
    v35 = a6;
    v36 = v51;
    v44 = *(a9 + 14);
    v40 = v19;
    v45 = v48;
    v46 = v15;
    v47 = v16;
    sub_214307E9C(&v31);
  }

  else
  {
    v21 = v50;

    v22 = a9[5];
    *(a8 + 120) = a9[4];
    *(a8 + 136) = v22;
    *(a8 + 152) = a9[6];
    v23 = a9[1];
    *(a8 + 56) = *a9;
    *(a8 + 72) = v23;
    v24 = a9[3];
    *(a8 + 88) = a9[2];
    *a8 = v27;
    *(a8 + 16) = a3;
    *(a8 + 24) = a4;
    *(a8 + 32) = a5 & 1;
    v25 = v51;
    *(a8 + 40) = a6;
    *(a8 + 48) = v25;
    *(a8 + 168) = *(a9 + 14);
    *(a8 + 104) = v24;
    result = *&v48;
    *(a8 + 176) = v48;
    *(a8 + 192) = v15;
    *(a8 + 200) = v21;
  }

  return result;
}

unint64_t sub_2141ECF98()
{
  v1 = *v0;
  v2 = 0x436567617373656DLL;
  v3 = 0xD000000000000032;
  if (v1 == 4)
  {
    v3 = 0xD000000000000021;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  v5 = 0xD00000000000001DLL;
  if (v1 == 1)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2141ED068@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214375C64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141ED090(uint64_t a1)
{
  v2 = sub_214307EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141ED0CC(uint64_t a1)
{
  v2 = sub_214307EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141ED108@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v103 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909958, &qword_2146F5888);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307EF0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v9 = sub_2146DA008();
  v10 = __swift_project_value_buffer(v9, qword_27CA19EC8);
  v11 = v4;
  if (*(v8 + 16))
  {
    v12 = sub_21408C508(v10);
    v13 = v7;
    if (v14)
    {
      sub_2140537E4(*(v8 + 56) + 32 * v12, &v53);

      v15 = swift_dynamicCast();
      v16 = v48;
      if (!v15)
      {
        v16 = 2;
      }
    }

    else
    {

      v16 = 2;
    }

    LODWORD(v46) = v16;
  }

  else
  {

    LODWORD(v46) = 2;
    v13 = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v48) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v45 = a1;
  v17 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905938, &unk_2146F3ED0);
  LOBYTE(v48) = 1;
  sub_2142E504C();
  sub_2146DA1C8();
  v44 = v17;
  v18 = *(&v53 + 1);
  v43 = v53;
  v19 = v54;
  LOBYTE(v48) = 2;
  sub_2146DA1C8();
  v41 = v19;
  v42 = v18;
  v20 = v53;
  v85 = 3;
  sub_214301BF0();
  sub_2146DA1C8();
  v21 = v47;
  v81 = v90;
  v82 = v91;
  v83 = v92;
  v84 = v93;
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  v75 = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v39[0] = *(&v20 + 1);
  v40 = v20;
  v22 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  sub_214091538(&v77, &v53);
  *(v23 + 32) = sub_2142E0AD0();
  sub_2140433DC(v23, &v53);
  v24 = *(&v53 + 1);
  LOBYTE(v48) = v41;
  v98 = v81;
  v99 = v82;
  v100 = v83;
  v101 = v84;
  v94 = v77;
  v95 = v78;
  v96 = v79;
  v97 = v80;
  v41 = v41;
  v72 = v53;
  v73 = v54;
  v74 = v55;
  v39[1] = v54;

  v39[2] = v24;

  sub_2140325F8(v22, v46, 0xD000000000000029, 0x80000002147908A0, 0xD00000000000001CLL, 0x800000021478A360);

  sub_214091594(&v77);
  (*(v21 + 8))(v13, v11);
  v25 = v72;
  v46 = *(&v72 + 1);
  v47 = v72;
  v26 = v73;
  v27 = v74;

  v28 = *(&v44 + 1);
  v48 = v44;
  *&v49 = v43;
  *(&v49 + 1) = v42;
  LOBYTE(v50) = v41;
  *(&v50 + 1) = v102[0];
  DWORD1(v50) = *(v102 + 3);
  v29 = v40;
  v30 = v39[0];
  *(&v50 + 1) = v40;
  *&v51[0] = v39[0];
  *(&v51[4] + 8) = v98;
  *(&v51[5] + 8) = v99;
  *(&v51[6] + 8) = v100;
  *(v51 + 8) = v94;
  *(&v51[1] + 8) = v95;
  *(&v51[2] + 8) = v96;
  *(&v51[3] + 8) = v97;
  *(&v51[7] + 1) = v101;
  v52[0] = v25;
  *&v52[1] = v26;
  BYTE8(v52[1]) = v27;
  v31 = v51[4];
  v32 = v103;
  v103[6] = v51[3];
  v32[7] = v31;
  v33 = v51[6];
  v32[8] = v51[5];
  v32[9] = v33;
  v34 = v51[0];
  v32[2] = v50;
  v32[3] = v34;
  v35 = v51[2];
  v32[4] = v51[1];
  v32[5] = v35;
  v36 = v49;
  *v32 = v48;
  v32[1] = v36;
  v37 = v52[0];
  v32[10] = v51[7];
  v32[11] = v37;
  *(v32 + 185) = *(v52 + 9);
  sub_214307F44(&v48, &v53);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v64 = v98;
  v65 = v99;
  v66 = v100;
  v60 = v94;
  v61 = v95;
  v62 = v96;
  *&v53 = v44;
  *(&v53 + 1) = v28;
  v54 = v43;
  v55 = v42;
  v56 = v41;
  *v57 = v102[0];
  *&v57[3] = *(v102 + 3);
  v58 = v29;
  v59 = v30;
  v63 = v97;
  v67 = v101;
  v68 = v47;
  v69 = v46;
  v70 = v26;
  v71 = v27;
  return sub_214307E9C(&v53);
}

uint64_t sub_2141ED938(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909968, &qword_2146F5890);
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v21 = v1[3];
  v22 = v8;
  v20 = *(v1 + 32);
  v9 = v1[5];
  v18 = v1[6];
  v19 = v9;
  v10 = *(v1 + 17);
  v41 = *(v1 + 15);
  v42 = v10;
  v43 = *(v1 + 19);
  v44 = v1[21];
  v11 = *(v1 + 9);
  v37 = *(v1 + 7);
  v38 = v11;
  v12 = *(v1 + 13);
  v39 = *(v1 + 11);
  v40 = v12;
  v17 = v1[24];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307EF0();
  sub_2146DAA28();
  *&v29 = v7;
  *(&v29 + 1) = v6;
  LOBYTE(v26[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v13 = v45;
  sub_2146DA388();
  if (v13)
  {
    return (*(v23 + 8))(v5, v3);
  }

  v15 = v23;
  *&v29 = v22;
  *(&v29 + 1) = v21;
  LOBYTE(v30) = v20;
  LOBYTE(v26[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905938, &unk_2146F3ED0);
  sub_2142E5350();
  sub_2146DA388();
  *&v29 = v19;
  *(&v29 + 1) = v18;
  LOBYTE(v26[0]) = 2;
  sub_2146DA388();
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v29 = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v28 = 3;
  sub_214091538(&v37, v26);
  sub_214301CA0();
  sub_2146DA388();
  v26[4] = v33;
  v26[5] = v34;
  v26[6] = v35;
  v27 = v36;
  v26[0] = v29;
  v26[1] = v30;
  v26[2] = v31;
  v26[3] = v32;
  sub_214091594(v26);
  if (v17)
  {
    v25 = v17;
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    return (*(v15 + 8))(v5, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double AudioMessage.init(with:content:participantDestinationIdentifiers:inlineAudioMessages:)@<D0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, char *a5@<X0>)
{
  v25 = a3;
  v14 = *a1;
  v15 = *(a1 + 2);
  v8 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0AD0();
  sub_2140433DC(inited, &v16);
  v22 = v16;
  v23 = v17;
  v24 = v18;

  sub_2140325F8(a2, v8, 0xD00000000000002ELL, 0x80000002147908D0, 0xD00000000000001CLL, 0x800000021478A360);

  v10 = v23;
  if (v5)
  {
    v11 = v24;

    v16 = v14;
    v17 = v15;
    v18 = v22;
    v19 = v10;
    v20 = v11;
    v21 = v25;
    sub_214307FA0(&v16);
  }

  else
  {
    v13 = v24;

    *a4 = v14;
    *(a4 + 16) = v15;
    result = *&v22;
    *(a4 + 24) = v22;
    *(a4 + 40) = v10;
    *(a4 + 48) = v13;
    *(a4 + 56) = v25;
  }

  return result;
}

unint64_t sub_2141EDF60()
{
  v1 = 0x746E65746E6F63;
  v2 = 0xD000000000000032;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000021;
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

uint64_t sub_2141EDFE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214375E6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141EE010(uint64_t a1)
{
  v2 = sub_214307FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141EE04C(uint64_t a1)
{
  v2 = sub_214307FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioMessage.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909970, &qword_2146F5898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307FF4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v10 = sub_2146DA008();
  v11 = __swift_project_value_buffer(v10, qword_27CA19EC8);
  if (*(v9 + 16) && (v12 = sub_21408C508(v11), (v13 & 1) != 0))
  {
    sub_2140537E4(*(v9 + 56) + 32 * v12, &v42);

    if (swift_dynamicCast())
    {
      v14 = v39;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {

    v14 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  LOBYTE(v39) = 0;
  sub_2142E4F74();
  sub_2146DA1C8();
  LODWORD(v56) = v14;
  v38 = a2;
  v15 = v42;
  v16 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v39) = 1;
  sub_2142E15CC();
  sub_2146DA1C8();
  v37 = *(&v15 + 1);
  v35 = v15;
  v36 = v16;
  v17 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
  v53 = 3;
  sub_2142E554C();
  sub_2146DA1C8();
  v34 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0AD0();
  sub_2140433DC(inited, &v42);
  v19 = *(&v42 + 1);
  v50 = v42;
  v51 = v43;
  v52 = v44;
  v33[1] = v43;

  v33[2] = v19;

  v33[0] = "antDestinationIdentifiers";
  sub_2140325F8(v17, v56, 0xD00000000000002ELL, 0x80000002147908D0, 0xD00000000000001CLL, 0x800000021478A360);
  v20 = (v6 + 8);
  v21 = v37;
  v22 = v35;

  (*v20)(v8, v5);
  v23 = v50;
  v56 = v50;
  v24 = v51;
  v25 = v22;
  v26 = v52;

  *&v39 = v22;
  *(&v39 + 1) = v21;
  v27 = v36;
  *v40 = v36;
  *&v40[8] = v23;
  *&v40[24] = v24;
  LOBYTE(v41) = v26;
  *(&v41 + 1) = *v55;
  DWORD1(v41) = *&v55[3];
  v28 = v34;
  *(&v41 + 1) = v34;
  v29 = *v40;
  v30 = v38;
  *v38 = v39;
  v30[1] = v29;
  v31 = v41;
  v30[2] = *&v40[16];
  v30[3] = v31;
  sub_214308048(&v39, &v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v42 = v25;
  *(&v42 + 1) = v37;
  v43 = v27;
  v44 = v56;
  v45 = *(&v23 + 1);
  v46 = v24;
  v47 = v26;
  *v48 = *v55;
  *&v48[3] = *&v55[3];
  v49 = v28;
  return sub_214307FA0(&v42);
}

uint64_t AudioMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909980, &qword_2146F58A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[5];
  v18 = v1[7];
  v19 = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_214307FF4();
  sub_2146DAA28();
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v24 = 0;
  sub_214031CA0(v7, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  sub_2142E5278();
  v15 = v20;
  sub_2146DA388();
  sub_214031CE0(v21, v22, v23);
  if (v15)
  {
    return (*(v4 + 8))(v6, v14);
  }

  v16 = v18;
  if (v19)
  {
    v21 = v19;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v21 = v16;
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    sub_2142E562C();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v14);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t TextMessage.init(with:messageSubType:replyToGUID:threadIdentifierGUID:threadOriginatorFallbackHash:expressiveSendStyleIdentifier:groupID:currentGroupName:groupParticipantVersion:groupProtocolVersion:groupPhotoCreationTime:transcriptBackgroundVersion:messageSummaryInfo:isAutoReply:availabilityVerificationRecipientChannelIDPrefix:availabilityVerificationRecipientEncryptionValidationToken:availabilityOffGridRecipientSubscriptionValidationToken:availabilityOffGridRecipientEncryptionValidationToken:seenAsOffGrid:lastPublisherOfOffGridStatus:nicknameInformation:truncatedNicknameRecordKey:isExpirable:isSOS:isCritical:replicationSourceID:scheduleType:scheduledDate:replicatedFallbackGUIDs:isBIAMessage:biaReferenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, __int128 *a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, __int128 a33, const void *a34, uint64_t a35, uint64_t a36, char a37, char a38, char a39, uint64_t a40, char a41, char *a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47)
{
  v177 = a5;
  v146 = *a42;
  sub_2143287C0(a1, a9, type metadata accessor for Metadata);
  v50 = type metadata accessor for TextMessage(0);
  v153 = a2;
  sub_2143287C0(a2, a9 + v50[5], type metadata accessor for TextMessage.MessageType);
  v152 = a3;
  sub_213FB2E54(a3, a9 + v50[6], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(a43, a9 + v50[31], &qword_27C913090, &unk_2146E9DB0);
  sub_214668284(&v173);
  v52 = v174;
  v51 = v175;
  LOBYTE(a3) = v176;
  sub_2146682B8(&v169);
  v54 = v170;
  v53 = v171;
  v143 = v172;
  sub_2146682EC(&v165);
  v139 = v167;
  v140 = v166;
  v144 = v168;
  sub_214668320(&v161);
  v141 = v163;
  v142 = v162;
  v145 = v164;
  sub_214668354(v159);
  v55 = a9 + v50[7];
  *(v55 + 16) = v52;
  *(v55 + 24) = v51;
  *(v55 + 32) = a3;
  *v55 = v173;
  v56 = a9 + v50[8];
  *(v56 + 16) = v54;
  *(v56 + 24) = v53;
  *v56 = v169;
  v138 = v56;
  *(v56 + 32) = v143;
  v57 = a9 + v50[9];
  *(v57 + 16) = v140;
  *(v57 + 24) = v139;
  *v57 = v165;
  *(v57 + 32) = v144;
  v58 = a9 + v50[10];
  *(v58 + 16) = v142;
  *(v58 + 24) = v141;
  *v58 = v161;
  *(v58 + 32) = v145;
  v59 = (a9 + v50[11]);
  *v59 = a12;
  v59[1] = a13;
  v60 = a9 + v50[12];
  *v60 = a14;
  *(v60 + 8) = a15 & 1;
  v61 = a9 + v50[13];
  *v61 = a16;
  *(v61 + 8) = a17 & 1;
  v62 = a9 + v50[14];
  *v62 = a18;
  *(v62 + 8) = a19 & 1;
  v63 = a9 + v50[15];
  *v63 = a20;
  *(v63 + 8) = a21 & 1;
  v64 = a22[3];
  v65 = a22[4];
  v66 = *(a22 + 73);
  v67 = *a22;
  v68 = a22[1];
  v69 = (a9 + v50[16]);
  v69[2] = a22[2];
  v69[3] = v64;
  v69[4] = v65;
  *(v69 + 73) = v66;
  *v69 = v67;
  v69[1] = v68;
  *(a9 + v50[17]) = a23;
  v70 = (a9 + v50[18]);
  *v70 = a24;
  v70[1] = a25;
  v71 = (a9 + v50[19]);
  *v71 = a26;
  v71[1] = a27;
  v72 = (a9 + v50[20]);
  *v72 = a28;
  v72[1] = a29;
  v73 = (a9 + v50[21]);
  *v73 = a30;
  v73[1] = a31;
  *(a9 + v50[22]) = a32;
  LOBYTE(v73) = v160;
  v74 = a9 + v50[23];
  v75 = v159[1];
  *v74 = v159[0];
  *(v74 + 16) = v75;
  *(v74 + 32) = v73;
  memcpy((a9 + v50[24]), a34, 0x109uLL);
  v76 = (a9 + v50[25]);
  *v76 = a35;
  v76[1] = a36;
  *(a9 + v50[26]) = a37;
  *(a9 + v50[27]) = a38;
  *(a9 + v50[28]) = a39;
  v77 = a9 + v50[29];
  *v77 = a40;
  *(v77 + 8) = a41 & 1;
  *(a9 + v50[30]) = v146;
  *(a9 + v50[32]) = a44;
  *(a9 + v50[33]) = a45;
  v150 = a9;
  v78 = (a9 + v50[34]);
  *v78 = a46;
  v78[1] = a47;
  v79 = *v55;
  v80 = *(v55 + 8);
  v81 = *(v55 + 16);
  v82 = *(v55 + 24);
  v83 = *(v55 + 32);
  *&v169 = a4;
  *(&v169 + 1) = v177;
  v151 = v83;
  LOBYTE(v165) = v83;
  *&v173 = 0xD000000000000020;
  *(&v173 + 1) = 0x8000000214790900;
  v174 = 0xD00000000000001CLL;
  v175 = 0x800000021478A360;

  sub_213FDC9D0(v81, v82);
  v84 = v79(&v169, &v165, &v173);
  if (v158)
  {

LABEL_6:

    sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v152, &unk_27C904F30, &unk_2146EFA20);
    sub_21432887C(v153, type metadata accessor for TextMessage.MessageType);
    sub_21432887C(a1, type metadata accessor for Metadata);
    v95 = *(v55 + 16);
    v96 = *(v55 + 24);

    sub_213FDC6D0(v95, v96);
    *v55 = v79;
    *(v55 + 8) = v80;
    *(v55 + 16) = v81;
    *(v55 + 24) = v82;
    *(v55 + 32) = v151;
    return sub_21432887C(v150, type metadata accessor for TextMessage);
  }

  v149 = v57;
  v147 = v74;
  v148 = v58;
  if ((v84 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v94 = 0xD000000000000020;
    v94[1] = 0x8000000214790900;
    v94[2] = 0xD00000000000001CLL;
    v94[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v81, v82);

  v85 = *(v55 + 16);
  v86 = *(v55 + 24);

  sub_213FDC6D0(v85, v86);
  *v55 = v79;
  *(v55 + 8) = v80;
  v87 = v177;
  *(v55 + 16) = a4;
  *(v55 + 24) = v87;
  *(v55 + 32) = v151;
  v89 = *v138;
  v88 = *(v138 + 8);
  v90 = *(v138 + 16);
  v91 = *(v138 + 24);
  v92 = *(v138 + 32);
  *&v169 = a6;
  *(&v169 + 1) = a7;
  LOBYTE(v165) = v92;
  *&v173 = 0xD000000000000028;
  *(&v173 + 1) = 0x8000000214790930;
  v174 = 0xD00000000000001CLL;
  v175 = 0x800000021478A360;

  sub_213FDC9D0(v90, v91);
  v93 = v89(&v169, &v165, &v173);
  if ((v93 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v106 = 0xD000000000000028;
    v106[1] = 0x8000000214790930;
    v106[2] = 0xD00000000000001CLL;
    v106[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v152, &unk_27C904F30, &unk_2146EFA20);
    sub_21432887C(v153, type metadata accessor for TextMessage.MessageType);
    sub_21432887C(a1, type metadata accessor for Metadata);
    v107 = *(v138 + 16);
    v108 = *(v138 + 24);

    sub_213FDC6D0(v107, v108);
    *v138 = v89;
    *(v138 + 8) = v88;
    *(v138 + 16) = v90;
    *(v138 + 24) = v91;
    *(v138 + 32) = v92;
    return sub_21432887C(v150, type metadata accessor for TextMessage);
  }

  sub_213FDC6D0(v90, v91);

  v98 = *(v138 + 16);
  v99 = *(v138 + 24);

  sub_213FDC6D0(v98, v99);
  *v138 = v89;
  *(v138 + 8) = v88;
  *(v138 + 16) = a6;
  *(v138 + 24) = a7;
  *(v138 + 32) = v92;
  v101 = *v57;
  v100 = *(v149 + 8);
  v103 = *(v149 + 16);
  v102 = *(v149 + 24);
  v104 = *(v149 + 32);
  *&v169 = a8;
  *(&v169 + 1) = a10;
  LOBYTE(v165) = v104;
  *&v173 = 0xD000000000000029;
  *(&v173 + 1) = 0x8000000214790960;
  v174 = 0xD00000000000001CLL;
  v175 = 0x800000021478A360;

  sub_213FDC9D0(v103, v102);
  v105 = v101(&v169, &v165, &v173);
  if ((v105 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v117 = 0xD000000000000029;
    v117[1] = 0x8000000214790960;
    v117[2] = 0xD00000000000001CLL;
    v117[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v152, &unk_27C904F30, &unk_2146EFA20);
    sub_21432887C(v153, type metadata accessor for TextMessage.MessageType);
    sub_21432887C(a1, type metadata accessor for Metadata);
    v118 = *(v149 + 16);
    v119 = *(v149 + 24);

    sub_213FDC6D0(v118, v119);
    *v149 = v101;
    *(v149 + 8) = v100;
    *(v149 + 16) = v103;
    *(v149 + 24) = v102;
    *(v149 + 32) = v104;
    return sub_21432887C(v150, type metadata accessor for TextMessage);
  }

  sub_213FDC6D0(v103, v102);

  v109 = *(v149 + 16);
  v110 = *(v149 + 24);

  sub_213FDC6D0(v109, v110);
  *v149 = v101;
  *(v149 + 8) = v100;
  *(v149 + 16) = a8;
  *(v149 + 24) = a10;
  *(v149 + 32) = v104;
  v112 = *v148;
  v111 = *(v148 + 8);
  v113 = *(v148 + 16);
  v114 = *(v148 + 24);
  v115 = *(v148 + 32);
  v169 = a11;
  v157 = v115;
  LOBYTE(v165) = v115;
  *&v173 = 0xD000000000000013;
  *(&v173 + 1) = 0x8000000214790990;
  v174 = 0xD00000000000001CLL;
  v175 = 0x800000021478A360;

  sub_213FDC9D0(v113, v114);
  v177 = v112;
  v116 = v112(&v169, &v165, &v173);
  if ((v116 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v128 = 0xD000000000000013;
    v128[1] = 0x8000000214790990;
    v128[2] = 0xD00000000000001CLL;
    v128[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v152, &unk_27C904F30, &unk_2146EFA20);
    sub_21432887C(v153, type metadata accessor for TextMessage.MessageType);
    sub_21432887C(a1, type metadata accessor for Metadata);
    v129 = *(v148 + 16);
    v130 = *(v148 + 24);

    sub_213FDC6D0(v129, v130);
    *v148 = v177;
    *(v148 + 8) = v111;
    *(v148 + 16) = v113;
    *(v148 + 24) = v114;
    *(v148 + 32) = v157;
    return sub_21432887C(v150, type metadata accessor for TextMessage);
  }

  sub_213FDC6D0(v113, v114);

  v120 = *(v148 + 16);
  v121 = *(v148 + 24);

  sub_213FDC6D0(v120, v121);
  *v148 = v177;
  *(v148 + 8) = v111;
  *(v148 + 16) = a11;
  *(v148 + 32) = v157;
  v123 = *v147;
  v122 = *(v147 + 8);
  v124 = *(v147 + 16);
  v125 = *(v147 + 24);
  v126 = *(v147 + 32);
  v169 = a33;
  LODWORD(v177) = v126;
  LOBYTE(v165) = v126;
  *&v173 = 0xD000000000000028;
  *(&v173 + 1) = 0x80000002147909B0;
  v174 = 0xD00000000000001CLL;
  v175 = 0x800000021478A360;

  sub_213FDC9D0(v124, v125);
  v127 = v123(&v169, &v165, &v173);
  if ((v127 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v133 = 0xD000000000000028;
    v133[1] = 0x80000002147909B0;
    v133[2] = 0xD00000000000001CLL;
    v133[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v152, &unk_27C904F30, &unk_2146EFA20);
    sub_21432887C(v153, type metadata accessor for TextMessage.MessageType);
    sub_21432887C(a1, type metadata accessor for Metadata);
    v134 = *(v147 + 16);
    v135 = *(v147 + 24);

    sub_213FDC6D0(v134, v135);
    *v147 = v123;
    *(v147 + 8) = v122;
    *(v147 + 16) = v124;
    *(v147 + 24) = v125;
    *(v147 + 32) = v177;
    return sub_21432887C(v150, type metadata accessor for TextMessage);
  }

  sub_213FDC6D0(v124, v125);

  sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v152, &unk_27C904F30, &unk_2146EFA20);
  sub_21432887C(v153, type metadata accessor for TextMessage.MessageType);
  sub_21432887C(a1, type metadata accessor for Metadata);
  v131 = *(v147 + 16);
  v132 = *(v147 + 24);

  result = sub_213FDC6D0(v131, v132);
  *v147 = v123;
  *(v147 + 8) = v122;
  *(v147 + 16) = a33;
  *(v147 + 32) = v177;
  return result;
}

unint64_t sub_2141EF878(char a1)
{
  result = 0x617461646174656DLL;
  switch(a1)
  {
    case 1:
      result = 0x536567617373656DLL;
      break;
    case 2:
      result = 0x476F54796C706572;
      break;
    case 3:
    case 9:
      result = 0xD000000000000014;
      break;
    case 4:
    case 19:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0x444970756F7267;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
    case 28:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x65526F7475417369;
      break;
    case 14:
      result = 0xD000000000000030;
      break;
    case 15:
      result = 0xD00000000000003ALL;
      break;
    case 16:
      result = 0xD000000000000037;
      break;
    case 17:
      result = 0xD000000000000035;
      break;
    case 18:
      result = 0x664F73416E656573;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0xD00000000000001ALL;
      break;
    case 22:
      result = 0x6172697078457369;
      break;
    case 23:
      result = 0x534F537369;
      break;
    case 24:
      result = 0x6369746972437369;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 26:
    case 27:
      result = 0x656C756465686373;
      break;
    case 29:
      result = 0x73654D4149427369;
      break;
    case 30:
      result = 0x7265666552616962;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141EFC1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214375FD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141EFC50(uint64_t a1)
{
  v2 = sub_2143080A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141EFC8C(uint64_t a1)
{
  v2 = sub_2143080A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a2;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v182);
  v184 = &v135 - v3;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v185);
  v186 = &v135 - v4;
  v187 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v187);
  v6 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v188);
  v190 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909988, &qword_2146F58A8);
  v189 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v135 - v9;
  v11 = type metadata accessor for TextMessage(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v223 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2143080A4();
  v15 = v191;
  sub_2146DAA08();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v223);
  }

  v180 = v11;
  v181 = v13;
  v191 = v6;
  v211[0] = 0;
  sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
  v16 = v10;
  sub_2146DA1C8();
  v211[0] = 1;
  sub_214328930(&qword_280B2FA98, type metadata accessor for TextMessage.MessageType, protocol conformance descriptor for TextMessage.MessageType);
  sub_2146DA1C8();
  v211[0] = 2;
  sub_2142EFBA8();
  sub_2146DA1C8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v210[0] = 3;
  v188 = sub_2142E12FC();
  sub_2146DA1C8();
  v187 = *v211;
  v18 = *&v211[8];
  v210[0] = 4;
  sub_2146DA1C8();
  v185 = v18;
  v20 = *v211;
  v21 = *&v211[8];
  v210[0] = 5;
  sub_2146DA1C8();
  *&v179 = v20;
  *(&v179 + 1) = v21;
  v22 = *v211;
  v23 = *&v211[8];
  v210[0] = 6;
  sub_2146DA1C8();
  v177 = v17;
  v178 = v23;
  v176 = *v211;
  v24 = *&v211[8];
  v210[0] = 7;
  sub_2146DA1C8();
  v174 = *v211;
  v175 = v24;
  v25 = *&v211[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  v210[0] = 8;
  sub_2142E3570();
  sub_2146DA1C8();
  v172 = *v211;
  v173 = v8;
  v171 = v211[8];
  v210[0] = 9;
  v26 = v16;
  sub_2146DA1C8();
  v170 = *v211;
  v169 = v211[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  v210[0] = 10;
  sub_2142E18D0();
  sub_2146DA1C8();
  v168 = *v211;
  v167 = v211[8];
  v210[0] = 11;
  sub_2146DA1C8();
  v27 = *v211;
  v28 = v211[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909990, &qword_2146F58B0);
  v217 = 12;
  sub_2143080F8();
  sub_2146DA1C8();
  v214 = v220;
  v215 = v221;
  *v216 = v222[0];
  *&v216[9] = *(v222 + 9);
  v212 = v218;
  v213 = v219;
  v211[0] = 13;
  v166 = sub_2146DA178();
  v210[0] = 14;
  sub_2146DA1C8();
  v164 = *v211;
  v165 = *&v211[8];
  v210[0] = 15;
  sub_2146DA1C8();
  v162 = *v211;
  v163 = *&v211[8];
  v210[0] = 16;
  sub_2146DA1C8();
  v160 = *v211;
  v161 = *&v211[8];
  v210[0] = 17;
  sub_2146DA1C8();
  v156 = *v211;
  v159 = *&v211[8];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v210[0] = 18;
  v157 = sub_2142E1378();
  v158 = v29;
  sub_2146DA1C8();
  v155 = v211[0];
  v210[0] = 19;
  sub_2146DA1C8();
  v154 = *v211;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909998, &qword_2146F58B8);
  v210[271] = 20;
  sub_2143081D0();
  sub_2146DA1C8();
  memcpy(v210, v211, 0x109uLL);
  LOBYTE(v202) = 21;
  sub_2146DA1C8();
  v153 = v206;
  LOBYTE(v206) = 22;
  v152 = sub_2146DA178();
  LOBYTE(v206) = 23;
  v151 = sub_2146DA178();
  LOBYTE(v206) = 24;
  v150 = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v202) = 25;
  sub_2142E11FC();
  sub_2146DA1C8();
  v149 = v206;
  v148 = BYTE8(v206);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099A0, &qword_2146F58C0);
  LOBYTE(v202) = 26;
  sub_214308254();
  sub_2146DA1C8();
  v147 = v206;
  LOBYTE(v206) = 27;
  sub_2142EC0C4();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v202) = 28;
  sub_2142E1548();
  sub_2146DA1C8();
  v182 = v206;
  LOBYTE(v202) = 29;
  sub_2146DA1C8();
  LODWORD(v158) = v206;
  LOBYTE(v202) = 30;
  sub_2146DA1C8();
  v188 = 0;
  v157 = *(&v206 + 1);
  v177 = v206;
  v30 = v181;
  sub_2143287C0(v190, v181, type metadata accessor for Metadata);
  v31 = v180;
  sub_2143287C0(v191, v30 + v180[5], type metadata accessor for TextMessage.MessageType);
  sub_213FB2E54(v186, v30 + v31[6], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v184, v30 + v31[31], &qword_27C913090, &unk_2146E9DB0);
  sub_214668284(&v206);
  v135 = v208;
  v136 = v207;
  v141 = v209;
  sub_2146682B8(&v202);
  v137 = v203;
  v146 = v204;
  LODWORD(v145) = v205;
  sub_2146682EC(&v198);
  v143 = v200;
  v144 = v199;
  v142 = v201;
  sub_214668320(&v194);
  v139 = v196;
  v140 = v195;
  v138 = v197;
  sub_214668354(v192);
  v32 = *&v216[9];
  v33 = v30 + v31[7];
  v34 = v135;
  *(v33 + 16) = v136;
  *(v33 + 24) = v34;
  *v33 = v206;
  *(v33 + 32) = v141;
  v35 = v30 + v31[8];
  v36 = v137;
  LOBYTE(v34) = v193;
  *v35 = v202;
  v37 = v146;
  *(v35 + 16) = v36;
  *(v35 + 24) = v37;
  v146 = v35;
  *(v35 + 32) = v145;
  v38 = v30 + v31[9];
  *v38 = v198;
  v39 = v143;
  *(v38 + 16) = v144;
  *(v38 + 24) = v39;
  v145 = v38;
  *(v38 + 32) = v142;
  v40 = v30 + v31[10];
  *v40 = v194;
  v41 = v139;
  *(v40 + 16) = v140;
  *(v40 + 24) = v41;
  v144 = v40;
  *(v40 + 32) = v138;
  v42 = (v30 + v31[11]);
  *v42 = v174;
  v42[1] = v25;
  v43 = v30 + v31[12];
  *v43 = v172;
  *(v43 + 8) = v171;
  v44 = v30 + v31[13];
  *v44 = v170;
  *(v44 + 8) = v169;
  v45 = v30 + v31[14];
  *v45 = v168;
  LOBYTE(v41) = v166;
  *(v45 + 8) = v167;
  v46 = v30 + v31[15];
  *v46 = v27;
  *(v46 + 8) = v28;
  v47 = (v30 + v31[16]);
  v48 = v215;
  v47[2] = v214;
  v47[3] = v48;
  v47[4] = *v216;
  *(v47 + 73) = v32;
  v49 = v213;
  *v47 = v212;
  v47[1] = v49;
  *(v30 + v31[17]) = v41 & 1;
  v50 = (v30 + v31[18]);
  v51 = v165;
  *v50 = v164;
  v50[1] = v51;
  v52 = (v30 + v31[19]);
  v53 = v163;
  *v52 = v162;
  v52[1] = v53;
  v54 = (v30 + v31[20]);
  v55 = v161;
  *v54 = v160;
  v54[1] = v55;
  v56 = (v30 + v31[21]);
  v57 = v159;
  *v56 = v156;
  v56[1] = v57;
  *(v30 + v31[22]) = v155;
  v58 = v30 + v31[23];
  v59 = v192[1];
  *v58 = v192[0];
  *(v58 + 16) = v59;
  v172 = v58;
  *(v58 + 32) = v34;
  memcpy((v30 + v31[24]), v210, 0x109uLL);
  v60 = (v30 + v31[25]);
  v61 = *(&v153 + 1);
  *v60 = v153;
  v60[1] = v61;
  *(v30 + v31[26]) = v152 & 1;
  *(v30 + v31[27]) = v151 & 1;
  *(v30 + v31[28]) = v150 & 1;
  v62 = v30 + v31[29];
  *v62 = v149;
  LOBYTE(v61) = v147;
  *(v62 + 8) = v148;
  *(v30 + v31[30]) = v61;
  *(v30 + v31[32]) = v182;
  *(v30 + v31[33]) = v158;
  v63 = (v30 + v31[34]);
  v64 = v157;
  *v63 = v177;
  v63[1] = v64;
  v66 = *v33;
  v65 = *(v33 + 8);
  v67 = *(v33 + 16);
  v68 = *(v33 + 24);
  v69 = v33;
  v70 = *(v33 + 32);
  *&v202 = v187;
  *(&v202 + 1) = v185;
  LODWORD(v180) = v70;
  LOBYTE(v198) = v70;
  *&v206 = 0xD000000000000020;
  *(&v206 + 1) = 0x8000000214790900;
  v207 = 0xD00000000000001CLL;
  v182 = 0x800000021478A360;
  v208 = 0x800000021478A360;

  v177 = v67;
  v174 = v68;
  sub_213FDC9D0(v67, v68);
  v71 = v188;
  v72 = v66(&v202, &v198, &v206);
  if (!v71)
  {
    if ((v72 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v81 = 0xD000000000000020;
      v81[1] = 0x8000000214790900;
      v82 = v182;
      v81[2] = 0xD00000000000001CLL;
      v81[3] = v82;
      swift_willThrow();
      goto LABEL_9;
    }

    sub_213FDC6D0(v177, v174);
    v73 = v182;

    v188 = *(v33 + 16);
    v74 = *(v33 + 24);

    sub_213FDC6D0(v188, v74);
    *v33 = v66;
    *(v33 + 8) = v65;
    v75 = v185;
    *(v33 + 16) = v187;
    *(v33 + 24) = v75;
    *(v33 + 32) = v180;
    v77 = *v146;
    v76 = *(v146 + 8);
    v78 = *(v146 + 16);
    v79 = *(v146 + 24);
    v80 = *(v146 + 32);
    v202 = v179;
    LODWORD(v187) = v80;
    LOBYTE(v198) = v80;
    *&v206 = 0xD000000000000028;
    *(&v206 + 1) = 0x8000000214790930;
    v207 = 0xD00000000000001CLL;
    v208 = v73;

    v185 = v78;
    sub_213FDC9D0(v78, v79);
    v188 = v77;
    if (v77(&v202, &v198, &v206))
    {
      sub_213FDC6D0(v185, v79);
      v87 = v182;

      v88 = v146;
      v89 = *(v146 + 16);
      v90 = *(v146 + 24);

      sub_213FDC6D0(v89, v90);
      *v88 = v188;
      *(v88 + 8) = v76;
      v91 = *(&v179 + 1);
      *(v88 + 16) = v179;
      *(v88 + 24) = v91;
      *(v88 + 32) = v187;
      v92 = *v145;
      v76 = *(v145 + 8);
      v93 = *(v145 + 16);
      v79 = *(v145 + 24);
      v94 = *(v145 + 32);
      *&v202 = v22;
      *(&v202 + 1) = v178;
      LODWORD(v187) = v94;
      LOBYTE(v198) = v94;
      *&v206 = 0xD000000000000029;
      *(&v206 + 1) = 0x8000000214790960;
      v207 = 0xD00000000000001CLL;
      v208 = v87;

      v185 = v93;
      sub_213FDC9D0(v93, v79);
      v188 = v92;
      if (v92(&v202, &v198, &v206))
      {
        sub_213FDC6D0(v185, v79);
        v99 = v182;

        v100 = v145;
        v101 = *(v145 + 16);
        v102 = *(v145 + 24);

        sub_213FDC6D0(v101, v102);
        *v100 = v188;
        *(v100 + 8) = v76;
        v103 = v178;
        *(v100 + 16) = v22;
        *(v100 + 24) = v103;
        *(v100 + 32) = v187;
        v105 = *v144;
        v104 = *(v144 + 8);
        v106 = *(v144 + 16);
        v107 = *(v144 + 24);
        v108 = *(v144 + 32);
        *&v202 = v176;
        *(&v202 + 1) = v175;
        LODWORD(v188) = v108;
        LOBYTE(v198) = v108;
        *&v206 = 0xD000000000000013;
        *(&v206 + 1) = 0x8000000214790990;
        v207 = 0xD00000000000001CLL;
        v208 = v99;

        v187 = v106;
        sub_213FDC9D0(v106, v107);
        v109 = v105;
        if ((v105(&v202, &v198, &v206) & 1) == 0)
        {
          sub_214031C4C();
          swift_allocError();
          *v122 = 0xD000000000000013;
          v122[1] = 0x8000000214790990;
          v122[2] = 0xD00000000000001CLL;
          v122[3] = v182;
          swift_willThrow();

          sub_213FB2DF4(v184, &qword_27C913090, &unk_2146E9DB0);
          sub_213FB2DF4(v186, &unk_27C904F30, &unk_2146EFA20);
          sub_21432887C(v191, type metadata accessor for TextMessage.MessageType);
          sub_21432887C(v190, type metadata accessor for Metadata);
          (*(v189 + 8))(v26, v173);
          v123 = v144;
          v124 = *(v144 + 16);
          v125 = *(v144 + 24);

          sub_213FDC6D0(v124, v125);
          *v123 = v109;
          *(v123 + 8) = v104;
          *(v123 + 16) = v187;
          *(v123 + 24) = v107;
          *(v123 + 32) = v188;
          goto LABEL_11;
        }

        sub_213FDC6D0(v187, v107);
        v112 = v182;

        v113 = v144;
        v114 = *(v144 + 16);
        v115 = *(v144 + 24);

        sub_213FDC6D0(v114, v115);
        *v113 = v109;
        *(v113 + 8) = v104;
        v116 = v175;
        *(v113 + 16) = v176;
        *(v113 + 24) = v116;
        *(v113 + 32) = v188;
        v118 = *v172;
        v117 = *(v172 + 8);
        v119 = *(v172 + 16);
        v120 = *(v172 + 24);
        v121 = *(v172 + 32);
        v202 = v154;
        LODWORD(v187) = v121;
        LOBYTE(v198) = v121;
        *&v206 = 0xD000000000000028;
        *(&v206 + 1) = 0x80000002147909B0;
        v207 = 0xD00000000000001CLL;
        v208 = v112;

        sub_213FDC9D0(v119, v120);
        v188 = v118;
        if ((v118(&v202, &v198, &v206) & 1) == 0)
        {
          sub_214031C4C();
          swift_allocError();
          *v130 = 0xD000000000000028;
          v130[1] = 0x80000002147909B0;
          v131 = v182;
          v130[2] = 0xD00000000000001CLL;
          v130[3] = v131;
          swift_willThrow();

          sub_213FB2DF4(v184, &qword_27C913090, &unk_2146E9DB0);
          sub_213FB2DF4(v186, &unk_27C904F30, &unk_2146EFA20);
          sub_21432887C(v191, type metadata accessor for TextMessage.MessageType);
          sub_21432887C(v190, type metadata accessor for Metadata);
          (*(v189 + 8))(v26, v173);
          v132 = v172;
          v133 = *(v172 + 16);
          v134 = *(v172 + 24);

          sub_213FDC6D0(v133, v134);
          *v132 = v188;
          *(v132 + 8) = v117;
          *(v132 + 16) = v119;
          *(v132 + 24) = v120;
          *(v132 + 32) = v187;
          goto LABEL_11;
        }

        sub_213FDC6D0(v119, v120);

        sub_213FB2DF4(v184, &qword_27C913090, &unk_2146E9DB0);
        sub_213FB2DF4(v186, &unk_27C904F30, &unk_2146EFA20);
        sub_21432887C(v191, type metadata accessor for TextMessage.MessageType);
        sub_21432887C(v190, type metadata accessor for Metadata);
        (*(v189 + 8))(v26, v173);
        v126 = v172;
        v127 = *(v172 + 16);
        v128 = *(v172 + 24);

        sub_213FDC6D0(v127, v128);
        *v126 = v188;
        *(v126 + 8) = v117;
        v129 = *(&v154 + 1);
        *(v126 + 16) = v154;
        *(v126 + 24) = v129;
        *(v126 + 32) = v187;
        sub_214328704(v181, v183, type metadata accessor for TextMessage);
        return __swift_destroy_boxed_opaque_existential_1(v223);
      }

      sub_214031C4C();
      swift_allocError();
      *v110 = 0xD000000000000029;
      v110[1] = 0x8000000214790960;
      v111 = v182;
      v110[2] = 0xD00000000000001CLL;
      v110[3] = v111;
      swift_willThrow();

      sub_213FB2DF4(v184, &qword_27C913090, &unk_2146E9DB0);
      sub_213FB2DF4(v186, &unk_27C904F30, &unk_2146EFA20);
      sub_21432887C(v191, type metadata accessor for TextMessage.MessageType);
      sub_21432887C(v190, type metadata accessor for Metadata);
      (*(v189 + 8))(v26, v173);
      v69 = v145;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v95 = 0xD000000000000028;
      v95[1] = 0x8000000214790930;
      v96 = v182;
      v95[2] = 0xD00000000000001CLL;
      v95[3] = v96;
      swift_willThrow();

      sub_213FB2DF4(v184, &qword_27C913090, &unk_2146E9DB0);
      sub_213FB2DF4(v186, &unk_27C904F30, &unk_2146EFA20);
      sub_21432887C(v191, type metadata accessor for TextMessage.MessageType);
      sub_21432887C(v190, type metadata accessor for Metadata);
      (*(v189 + 8))(v26, v173);
      v69 = v146;
    }

    v97 = *(v69 + 16);
    v98 = *(v69 + 24);

    sub_213FDC6D0(v97, v98);
    *v69 = v188;
    *(v69 + 8) = v76;
    *(v69 + 16) = v185;
    *(v69 + 24) = v79;
    v86 = v187;
    goto LABEL_10;
  }

LABEL_9:

  sub_213FB2DF4(v184, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v186, &unk_27C904F30, &unk_2146EFA20);
  sub_21432887C(v191, type metadata accessor for TextMessage.MessageType);
  sub_21432887C(v190, type metadata accessor for Metadata);
  (*(v189 + 8))(v26, v173);
  v83 = *(v33 + 16);
  v84 = *(v33 + 24);

  sub_213FDC6D0(v83, v84);
  *v33 = v66;
  *(v33 + 8) = v65;
  v85 = v174;
  *(v33 + 16) = v177;
  *(v33 + 24) = v85;
  v86 = v180;
LABEL_10:
  *(v69 + 32) = v86;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v223);
  return sub_21432887C(v181, type metadata accessor for TextMessage);
}

uint64_t TextMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099A8, &qword_2146F58C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v40 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143080A4();
  sub_2146DAA28();
  v48[0] = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for TextMessage(0);
  v48[0] = 1;
  type metadata accessor for TextMessage.MessageType(0);
  sub_214328930(&qword_280B2FAA0, type metadata accessor for TextMessage.MessageType, protocol conformance descriptor for TextMessage.MessageType);
  sub_2146DA388();
  v48[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  sub_2142EFE18();
  sub_2146DA388();
  v67 = v9;
  v10 = v3 + *(v9 + 28);
  v11 = *(v10 + 24);
  if (v11 != 1)
  {
    *v48 = *(v10 + 16);
    *&v48[8] = v11;
    v47[0] = 3;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v13 = sub_214045AC0();
    sub_2146DA388();
    v42 = v13;
    v43 = v12;
    v14 = v67;
    v15 = v3 + v67[8];
    v16 = *(v15 + 24);
    if (v16 != 1)
    {
      *v48 = *(v15 + 16);
      *&v48[8] = v16;
      v47[0] = 4;
      sub_2146DA388();
      v17 = v3 + v14[9];
      v18 = *(v17 + 24);
      if (v18 != 1)
      {
        *v48 = *(v17 + 16);
        *&v48[8] = v18;
        v47[0] = 5;
        sub_2146DA388();
        v19 = v3 + v14[10];
        v20 = *(v19 + 24);
        if (v20 != 1)
        {
          *v48 = *(v19 + 16);
          *&v48[8] = v20;
          v47[0] = 6;
          sub_2146DA388();
          *v48 = *(v3 + v14[11]);
          v47[0] = 7;
          sub_2146DA388();
          v21 = (v3 + v14[12]);
          v22 = *v21;
          LOBYTE(v21) = *(v21 + 8);
          *v48 = v22;
          v48[8] = v21;
          v47[0] = 8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
          v41 = sub_2142E3778();
          sub_2146DA388();
          v23 = (v3 + v14[13]);
          v24 = *v23;
          LOBYTE(v23) = *(v23 + 8);
          *v48 = v24;
          v48[8] = v23;
          v47[0] = 9;
          sub_2146DA388();
          v25 = (v3 + v14[14]);
          v26 = *v25;
          LOBYTE(v25) = *(v25 + 8);
          *v48 = v26;
          v48[8] = v25;
          v47[0] = 10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
          sub_2142E2204();
          sub_2146DA388();
          v27 = (v3 + v67[15]);
          v28 = *v27;
          LOBYTE(v27) = *(v27 + 8);
          v65 = v28;
          v66 = v27;
          v64 = 11;
          sub_2146DA388();
          v29 = (v3 + v67[16]);
          v30 = v29[3];
          v31 = v29[1];
          v61 = v29[2];
          v62 = v30;
          v32 = v29[3];
          *v63 = v29[4];
          *&v63[9] = *(v29 + 73);
          v33 = v29[1];
          v60[0] = *v29;
          v60[1] = v33;
          v57 = v61;
          v58 = v32;
          v59[0] = v29[4];
          *(v59 + 9) = *(v29 + 73);
          v55 = v60[0];
          v56 = v31;
          v54 = 12;
          sub_213FB2E54(v60, v48, &qword_27C909990, &qword_2146F58B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909990, &qword_2146F58B0);
          sub_21430832C();
          sub_2146DA388();
          v52[2] = v57;
          v52[3] = v58;
          *v53 = v59[0];
          *&v53[9] = *(v59 + 9);
          v52[0] = v55;
          v52[1] = v56;
          sub_213FB2DF4(v52, &qword_27C909990, &qword_2146F58B0);
          v48[0] = 13;
          sub_2146DA338();
          *v48 = *(v3 + v67[18]);
          v47[0] = 14;
          sub_2146DA388();
          *v48 = *(v3 + v67[19]);
          v47[0] = 15;
          sub_2146DA388();
          *v48 = *(v3 + v67[20]);
          v47[0] = 16;
          sub_2146DA388();
          *v48 = *(v3 + v67[21]);
          v47[0] = 17;
          sub_2146DA388();
          v48[0] = *(v3 + v67[22]);
          v47[0] = 18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
          v41 = sub_2142E1D30();
          sub_2146DA388();
          v34 = v3 + v67[23];
          v35 = *(v34 + 24);
          if (v35 != 1)
          {
            v50 = *(v34 + 16);
            v51 = v35;
            v49 = 19;
            sub_2146DA388();
            v36 = v67[24];
            memcpy(v48, (v3 + v36), sizeof(v48));
            memcpy(v47, (v3 + v36), sizeof(v47));
            v46[271] = 20;
            sub_213FB2E54(v48, v46, &qword_27C909998, &qword_2146F58B8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909998, &qword_2146F58B8);
            sub_214308404();
            sub_2146DA388();
            memcpy(v46, v47, 0x109uLL);
            sub_213FB2DF4(v46, &qword_27C909998, &qword_2146F58B8);
            v45 = *(v3 + v67[25]);
            v44 = 21;
            sub_2146DA388();
            LOBYTE(v45) = 22;
            sub_2146DA338();
            LOBYTE(v45) = 23;
            sub_2146DA338();
            LOBYTE(v45) = 24;
            sub_2146DA338();
            v37 = (v3 + v67[29]);
            v38 = *v37;
            LOBYTE(v37) = *(v37 + 8);
            *&v45 = v38;
            BYTE8(v45) = v37;
            v44 = 25;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
            sub_2142E1C30();
            sub_2146DA388();
            LOBYTE(v45) = *(v3 + v67[30]);
            v44 = 26;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099A0, &qword_2146F58C0);
            sub_214308488();
            sub_2146DA388();
            v40[1] = v67[31];
            LOBYTE(v45) = 27;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
            sub_2142EC30C();
            sub_2146DA388();
            *&v45 = *(v3 + v67[32]);
            v44 = 28;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
            sub_2140459AC();
            sub_2146DA388();
            LOBYTE(v45) = *(v3 + v67[33]);
            v44 = 29;
            sub_2146DA388();
            v45 = *(v3 + v67[34]);
            v44 = 30;
            sub_2146DA388();
            return (*(v6 + 8))(v8, v5);
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void *sub_2141F2990@<X0>(void *__src@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x122uLL);
  result = memcpy(a4, __dst, 0x128uLL);
  *(a4 + 296) = a2;
  *(a4 + 304) = a3 & 1;
  return result;
}

uint64_t sub_2141F2A08()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2141F2A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000214794090 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2141F2B24(uint64_t a1)
{
  v2 = sub_214308560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F2B60(uint64_t a1)
{
  v2 = sub_214308560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F2B9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099B0, &qword_2146F58D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308560();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v13;
    v18[319] = 0;
    sub_2143085B4();
    sub_2146DA1C8();
    memcpy(v17, v18, sizeof(v17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v18[318] = 1;
    sub_2142E11FC();
    sub_2146DA1C8();
    (*(v5 + 8))(v7, v4);
    v9 = v15;
    v10 = v16;
    memcpy(v14, v17, 0x122uLL);
    v18[312] = v16;
    memcpy(v8, v14, 0x128uLL);
    *(v8 + 296) = v9;
    *(v8 + 304) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141F2DE8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099C8, &qword_2146F58D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  memcpy(v15, v1, 0x122uLL);
  v10 = *(v1 + 296);
  v16 = *(v1 + 304);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430865C(v15, v14);
  sub_214308560();
  sub_2146DAA28();
  memcpy(v14, v15, 0x122uLL);
  v18 = 0;
  sub_2143086B8();
  sub_2146DA388();
  memcpy(v13, v14, 0x122uLL);
  sub_214308608(v13);
  if (!v2)
  {
    v11 = v10;
    v12 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2141F302C@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(void, void, void), uint64_t a12, uint64_t (*a13)(void, void, void), unsigned __int8 a14, uint64_t a15, char a16, uint64_t (*a17)(void, void, void), uint64_t a18, char a19)
{
  sub_21449B840(&v94);
  v21 = v94;
  v20 = v95;
  v23 = v96;
  v22 = v97;
  v24 = v98;
  sub_21449B874(&v154);
  v69 = v154;
  v92 = v155;
  v170 = v156;
  v93 = v157;
  v91 = v158;
  sub_21449B8A8(v152);
  v84 = v152[0];
  v89 = v152[2];
  v87 = v152[1];
  v88 = v152[3];
  v85 = v153;
  sub_21449B8E4(v150);
  v80 = v150[0];
  v81 = v150[1];
  v82 = v150[3];
  v83 = v150[2];
  v74 = v151;
  sub_21449BA90(v148);
  v75 = v148[0];
  v73 = v148[2];
  v77 = v148[1];
  v78 = v148[3];
  v76 = v149;
  sub_21449BACC(v144);
  v70 = v144[0];
  v72 = v144[1];
  v58 = v144[2];
  v63 = v145;
  v25 = v146;
  v71 = v147;
  sub_21449BC10(v142);
  v64 = v142[0];
  v66 = v142[2];
  v67 = v142[3];
  v68 = v142[1];
  v65 = v143;
  v160 = v25;
  v159 = a16 & 1;
  v164 = v25;
  v154 = a2;
  v155 = a3;
  v59 = v24;
  LOBYTE(v152[0]) = v24;
  v94 = 0xD00000000000001FLL;
  v95 = 0x80000002147909E0;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  v26 = v23;
  sub_213FDC9D0(v23, v22);
  v62 = v20;
  v27 = v21(&v154, v152, &v94);
  if (v60)
  {

    v29 = v69;
    v28 = v70;
    v30 = v62;
LABEL_6:
    v33 = v26;

    v34 = v22;
    sub_213FDC6D0(v26, v22);
    v35 = v74;
    v36 = v58;
    v37 = v73;
    v38 = v59;
LABEL_7:
    v94 = a1;
    v95 = v21;
    v96 = v30;
    v97 = v33;
    v98 = v34;
    v99 = v38;
    v101 = v29;
    v102 = v92;
    v103 = v170;
    v104 = v93;
    *v100 = v169[0];
    *&v100[3] = *(v169 + 3);
    v105 = v91;
    *v106 = *v168;
    *&v106[3] = *&v168[3];
    v107 = v84;
    v108 = v87;
    v109 = v89;
    v110 = v88;
    v111 = v85;
    *v112 = *v167;
    *&v112[3] = *&v167[3];
    v113 = v80;
    v114 = v81;
    v115 = v83;
    v116 = v82;
    v117 = v35;
    *&v118[3] = *&v166[3];
    *v118 = *v166;
    v119 = v75;
    v120 = v77;
    v121 = v37;
    v122 = v78;
    v123 = v76;
    *&v124[3] = *&v165[3];
    *v124 = *v165;
    v125 = v28;
    v126 = v72;
    v127 = v36;
    v128 = v63;
    v129 = v164;
    v130 = v71;
    v132 = v163;
    v131 = v162;
    v133 = a15;
    v134 = a16 & 1;
    *&v135[3] = *(v161 + 3);
    *v135 = v161[0];
    v136 = v64;
    v137 = v68;
    v138 = v66;
    v139 = v67;
    v140 = v65;
    v141 = a19 & 1;
    return sub_21430870C(&v94);
  }

  v53 = a2;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000001FLL;
    v32[1] = 0x80000002147909E0;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    v29 = v69;
    v28 = v70;
    v30 = v62;
    goto LABEL_6;
  }

  sub_213FDC6D0(v23, v22);

  v30 = v20;

  sub_213FDC6D0(v23, v22);
  v154 = a4;
  v155 = a5;
  LOBYTE(v152[0]) = v91;
  v94 = 0xD00000000000001CLL;
  v95 = 0x8000000214790A00;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v170, v93);
  v29 = v69;
  v31 = v69(&v154, v152, &v94);
  v35 = v74;
  v38 = v59;
  if ((v31 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD00000000000001CLL;
    v42[1] = 0x8000000214790A00;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v70;

    sub_213FDC6D0(v170, v93);
    v33 = a2;
    v34 = a3;
LABEL_13:
    v36 = v58;
    v37 = v73;
    goto LABEL_7;
  }

  v40 = v170;
  sub_213FDC6D0(v170, v93);

  sub_213FDC6D0(v40, v93);
  v154 = a6;
  v155 = a7;
  LOBYTE(v152[0]) = v85;
  v94 = 0xD00000000000001ELL;
  v95 = 0x8000000214790A20;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v89, v88);
  if ((v84(&v154, v152, &v94) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000001ELL;
    v43[1] = 0x8000000214790A20;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v70;

    sub_213FDC6D0(v89, v88);
    v33 = a2;
    v34 = a3;
    v170 = a4;
    v93 = a5;
    goto LABEL_13;
  }

  sub_213FDC6D0(v89, v88);

  sub_213FDC6D0(v89, v88);
  v154 = a8;
  v155 = a10;
  LOBYTE(v152[0]) = v74;
  v94 = 0xD00000000000001FLL;
  v95 = 0x8000000214790A40;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v83, v82);
  if ((v80(&v154, v152, &v94) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD00000000000001FLL;
    v44[1] = 0x8000000214790A40;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v70;

    sub_213FDC6D0(v83, v82);
    v33 = a2;
    v34 = a3;
    v170 = a4;
    v93 = a5;
    v88 = a7;
    v89 = a6;
    goto LABEL_13;
  }

  sub_213FDC6D0(v83, v82);

  sub_213FDC6D0(v83, v82);
  v154 = a11;
  v155 = a12;
  LOBYTE(v152[0]) = v76;
  v94 = 0xD000000000000022;
  v95 = 0x8000000214790A60;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v73, v78);
  v41 = v75(&v154, v152, &v94);
  if ((v41 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v47 = 0xD000000000000022;
    v47[1] = 0x8000000214790A60;
    v47[2] = 0xD00000000000001CLL;
    v47[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v70;
    v33 = a2;

    v37 = v73;
    sub_213FDC6D0(v73, v78);
    v34 = a3;
    v170 = a4;
    v93 = a5;
    v88 = a7;
    v89 = a6;
    v82 = a10;
    v83 = a8;
LABEL_19:
    v35 = v74;
    v36 = v58;
    goto LABEL_7;
  }

  LODWORD(v170) = a14;
  sub_213FDC6D0(v73, v78);

  sub_213FDC6D0(v73, v78);
  v154 = a13;
  v45 = v170;
  LOBYTE(v155) = v170 & 1;
  LOBYTE(v152[0]) = v71;
  v94 = 0xD00000000000001DLL;
  v95 = 0x8000000214790A90;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  v46 = v70(&v154, v152, &v94);
  if ((v46 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000001DLL;
    v49[1] = 0x8000000214790A90;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();
    v29 = v69;
    v28 = v70;
    v37 = a11;

    v34 = a3;
    v164 = v25;
    v33 = v53;
    v170 = a4;
    v93 = a5;
    v88 = a7;
    v89 = a6;
    v82 = a10;
    v83 = a8;
    v78 = a12;
    goto LABEL_19;
  }

  v63 = v45 & 1;

  v164 = 0;
  v154 = a17;
  v155 = a18;
  LOBYTE(v152[0]) = v65;
  v94 = 0xD00000000000001BLL;
  v95 = 0x8000000214790AB0;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v66, v67);
  v48 = v64(&v154, v152, &v94);
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD00000000000001BLL;
    v52[1] = 0x8000000214790AB0;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v66, v67);
    v33 = a2;
    v34 = a3;
    v170 = a4;
    v93 = a5;
    v88 = a7;
    v89 = a6;
    v36 = a13;
    v82 = a10;
    v83 = a8;
    v37 = a11;
    v28 = v70;
    v78 = a12;
    v35 = v74;
    v30 = v62;
    v29 = v69;
    goto LABEL_7;
  }

  sub_213FDC6D0(v66, v67);

  result = sub_213FDC6D0(v66, v67);
  *a9 = a1;
  *(a9 + 8) = v21;
  *(a9 + 16) = v62;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = v59;
  *(a9 + 48) = v69;
  *(a9 + 56) = v92;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 41) = v169[0];
  *(a9 + 44) = *(v169 + 3);
  *(a9 + 80) = v91;
  *(a9 + 81) = *v168;
  *(a9 + 84) = *&v168[3];
  v50 = v164;
  *(a9 + 88) = v84;
  *(a9 + 96) = v87;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = v85;
  *(a9 + 121) = *v167;
  *(a9 + 124) = *&v167[3];
  *(a9 + 128) = v80;
  *(a9 + 136) = v81;
  *(a9 + 144) = a8;
  *(a9 + 152) = a10;
  *(a9 + 160) = v74;
  *(a9 + 164) = *&v166[3];
  *(a9 + 161) = *v166;
  *(a9 + 168) = v75;
  *(a9 + 176) = v77;
  *(a9 + 184) = a11;
  *(a9 + 192) = a12;
  *(a9 + 200) = v76;
  *(a9 + 204) = *&v165[3];
  *(a9 + 201) = *v165;
  *(a9 + 208) = v70;
  *(a9 + 216) = v72;
  *(a9 + 224) = a13;
  *(a9 + 232) = v63;
  *(a9 + 233) = v50;
  *(a9 + 234) = v71;
  *(a9 + 239) = v163;
  *(a9 + 235) = v162;
  *(a9 + 240) = a15;
  *(a9 + 248) = a16 & 1;
  v51 = v161[0];
  *(a9 + 252) = *(v161 + 3);
  *(a9 + 249) = v51;
  *(a9 + 256) = v64;
  *(a9 + 264) = v68;
  *(a9 + 272) = a17;
  *(a9 + 280) = a18;
  *(a9 + 288) = v65;
  *(a9 + 289) = a19 & 1;
  return result;
}

unint64_t sub_2141F3F60(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x644974616863;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6974707972636E65;
    if (a1 != 5)
    {
      v7 = 0x657A6953656C6966;
    }

    if (a1 <= 6u)
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
    v1 = 0x726566736E617274;
    v2 = 0x644972656E776FLL;
    v3 = 0x727574616E676973;
    if (a1 != 3)
    {
      v3 = 0x5574736575716572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
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
}

uint64_t sub_2141F40C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214376954(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141F40E8(uint64_t a1)
{
  v2 = sub_214308760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F4124(uint64_t a1)
{
  v2 = sub_214308760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F4160@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099D8, &qword_2146F58E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - v7;
  v9 = a1[3];
  v196 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214308760();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v196);
  }

  v119 = a2;
  LOBYTE(v121) = 0;
  v118 = sub_2146DA228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v120[0]) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v117 = v6;
  v11 = v121;
  v12 = v122;
  LOBYTE(v120[0]) = 2;
  sub_2146DA1C8();
  v116 = v11;
  v13 = v121;
  v14 = v122;
  LOBYTE(v120[0]) = 3;
  sub_2146DA1C8();
  v113 = v13;
  v114 = v14;
  v115 = v12;
  v15 = v121;
  v16 = v122;
  LOBYTE(v120[0]) = 4;
  sub_2146DA1C8();
  v111 = v15;
  v112 = v16;
  v110 = v121;
  v17 = v122;
  LOBYTE(v120[0]) = 5;
  sub_2146DA1C8();
  v106 = v121;
  v108 = v122;
  v109 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v120[0]) = 6;
  v107 = sub_2142E3570();
  sub_2146DA1C8();
  v18 = v121;
  v105 = v122;
  LOBYTE(v120[0]) = 7;
  sub_2146DA1C8();
  v103 = v18;
  v104 = v121;
  LODWORD(v107) = v122;
  LOBYTE(v120[0]) = 8;
  sub_2146DA1C8();
  v97 = v121;
  v101 = v5;
  v102 = v122;
  v186 = 9;
  v19 = sub_2146DA178();
  sub_21449B840(&v121);
  v99 = v121;
  v20 = v122;
  v21 = v123;
  v22 = v124;
  v23 = v125;
  sub_21449B874(v120);
  v91 = v120[0];
  v95 = v120[2];
  v93 = v120[1];
  v94 = v120[3];
  v92 = LOBYTE(v120[4]);
  sub_21449B8A8(&v179);
  v86 = v179;
  v90 = v181;
  v88 = v180;
  v89 = v182;
  v87 = v183;
  sub_21449B8E4(v177);
  v81 = v177[0];
  v85 = v177[2];
  v83 = v177[1];
  v84 = v177[3];
  v82 = v178;
  sub_21449BA90(v175);
  v76 = v175[0];
  v80 = v175[2];
  v78 = v175[1];
  v79 = v175[3];
  v77 = v176;
  sub_21449BACC(v171);
  v73 = v171[0];
  v75 = v171[1];
  v67 = v171[2];
  v66 = v172;
  LODWORD(v17) = v173;
  v74 = v174;
  sub_21449BC10(v169);
  v68 = v169[0];
  v70 = v169[2];
  v71 = v169[3];
  v72 = v169[1];
  v69 = v170;
  v185 = v17;
  v184 = v107;
  v64 = v23;
  v65 = v19 & 1;
  v63 = v17;
  v190 = v17;
  v120[0] = v116;
  v120[1] = v115;
  LOBYTE(v179) = v23;
  v121 = 0xD00000000000001FLL;
  v122 = 0x80000002147909E0;
  v123 = 0xD00000000000001CLL;
  v96 = 0x800000021478A360;
  v124 = 0x800000021478A360;

  v100 = v21;
  v24 = v22;
  sub_213FDC9D0(v21, v22);
  v98 = v20;
  if (v99(v120, &v179, &v121))
  {
    v25 = v100;
    sub_213FDC6D0(v100, v22);
    v26 = v96;

    sub_213FDC6D0(v25, v22);
    v120[0] = v113;
    v120[1] = v114;
    LOBYTE(v179) = v92;
    v121 = 0xD00000000000001CLL;
    v122 = 0x8000000214790A00;
    v123 = 0xD00000000000001CLL;
    v124 = v26;

    sub_213FDC9D0(v95, v94);
    if (v91(v120, &v179, &v121))
    {
      v27 = v94;
      v28 = v95;
      sub_213FDC6D0(v95, v94);
      v29 = v96;

      sub_213FDC6D0(v28, v27);
      v120[0] = v111;
      v120[1] = v112;
      LOBYTE(v179) = v87;
      v121 = 0xD00000000000001ELL;
      v122 = 0x8000000214790A20;
      v123 = 0xD00000000000001CLL;
      v124 = v29;

      sub_213FDC9D0(v90, v89);
      if (v86(v120, &v179, &v121))
      {
        v30 = v89;
        v31 = v90;
        sub_213FDC6D0(v90, v89);
        v32 = v96;

        sub_213FDC6D0(v31, v30);
        v120[0] = v110;
        v120[1] = v109;
        LOBYTE(v179) = v82;
        v121 = 0xD00000000000001FLL;
        v122 = 0x8000000214790A40;
        v123 = 0xD00000000000001CLL;
        v124 = v32;

        sub_213FDC9D0(v85, v84);
        if (v81(v120, &v179, &v121))
        {
          v41 = v84;
          v40 = v85;
          sub_213FDC6D0(v85, v84);
          v42 = v96;

          sub_213FDC6D0(v40, v41);
          v120[0] = v106;
          v120[1] = v108;
          LOBYTE(v179) = v77;
          v121 = 0xD000000000000022;
          v122 = 0x8000000214790A60;
          v123 = 0xD00000000000001CLL;
          v124 = v42;

          sub_213FDC9D0(v80, v79);
          if (v76(v120, &v179, &v121))
          {
            v46 = v79;
            v45 = v80;
            sub_213FDC6D0(v80, v79);
            v47 = v96;

            sub_213FDC6D0(v45, v46);
            v120[0] = v103;
            LOBYTE(v120[1]) = v105;
            LOBYTE(v179) = v74;
            v121 = 0xD00000000000001DLL;
            v122 = 0x8000000214790A90;
            v123 = 0xD00000000000001CLL;
            v124 = v47;

            if (v73(v120, &v179, &v121))
            {
              v50 = v96;

              v190 = 0;
              v179 = v97;
              v180 = v102;
              LOBYTE(v120[0]) = v69;
              v121 = 0xD00000000000001BLL;
              v122 = 0x8000000214790AB0;
              v123 = 0xD00000000000001CLL;
              v124 = v50;

              sub_213FDC9D0(v70, v71);
              if (v68(&v179, v120, &v121))
              {
                v53 = v70;
                v54 = v71;
                sub_213FDC6D0(v70, v71);

                (*(v117 + 8))(v8, v101);
                v55 = v72;

                sub_213FDC6D0(v53, v54);
                HIDWORD(v120[20]) = *&v192[3];
                *(&v120[20] + 1) = *v192;
                HIDWORD(v120[25]) = *&v191[3];
                *(&v120[25] + 1) = *v191;
                *(&v120[29] + 3) = v188;
                HIDWORD(v120[31]) = *&v187[3];
                *(&v120[31] + 1) = *v187;
                v120[0] = v118;
                v120[1] = v99;
                v120[2] = v98;
                v120[3] = v116;
                v120[4] = v115;
                LOBYTE(v120[5]) = v64;
                *(&v120[5] + 1) = v195[0];
                HIDWORD(v120[5]) = *(v195 + 3);
                v56 = v91;
                v120[6] = v91;
                v120[7] = v93;
                v58 = v113;
                v57 = v114;
                v120[8] = v113;
                v120[9] = v114;
                LOBYTE(v53) = v92;
                LOBYTE(v120[10]) = v92;
                *(&v120[10] + 1) = *v194;
                HIDWORD(v120[10]) = *&v194[3];
                v120[11] = v86;
                v120[12] = v88;
                v120[13] = v111;
                v120[14] = v112;
                LOBYTE(v120[15]) = v87;
                *(&v120[15] + 1) = *v193;
                HIDWORD(v120[15]) = *&v193[3];
                v120[16] = v81;
                v120[17] = v83;
                v120[18] = v110;
                v120[19] = v109;
                LOBYTE(v120[20]) = v82;
                v120[21] = v76;
                v120[22] = v78;
                v120[23] = v106;
                v120[24] = v108;
                LOBYTE(v120[25]) = v77;
                v120[26] = v73;
                v120[27] = v75;
                v59 = v103;
                v120[28] = v103;
                LOBYTE(v120[29]) = v105;
                HIBYTE(v120[29]) = v189;
                LODWORD(v117) = v190;
                BYTE1(v120[29]) = v190;
                BYTE2(v120[29]) = v74;
                v120[30] = v104;
                LOBYTE(v120[31]) = v107;
                v120[32] = v68;
                v120[33] = v55;
                v60 = v97;
                v120[34] = v97;
                v120[35] = v102;
                LOBYTE(v120[36]) = v69;
                BYTE1(v120[36]) = v65;
                memcpy(v119, v120, 0x122uLL);
                sub_2143087B4(v120, &v121);
                __swift_destroy_boxed_opaque_existential_1(v196);
                v121 = v118;
                v122 = v99;
                v123 = v98;
                v124 = v116;
                v125 = v115;
                v126 = v64;
                v128 = v56;
                v129 = v93;
                v130 = v58;
                v131 = v57;
                v132 = v53;
                *v127 = v195[0];
                *&v127[3] = *(v195 + 3);
                *v133 = *v194;
                *&v133[3] = *&v194[3];
                v134 = v86;
                v135 = v88;
                v136 = v111;
                v137 = v112;
                v138 = v87;
                *v139 = *v193;
                *&v139[3] = *&v193[3];
                v140 = v81;
                v141 = v83;
                v142 = v110;
                v143 = v109;
                v144 = v82;
                *&v145[3] = *&v192[3];
                *v145 = *v192;
                v146 = v76;
                v147 = v78;
                v148 = v106;
                v149 = v108;
                v150 = v77;
                *&v151[3] = *&v191[3];
                *v151 = *v191;
                v152 = v73;
                v153 = v75;
                v154 = v59;
                v155 = v105;
                v156 = v117;
                v157 = v74;
                v159 = v189;
                v158 = v188;
                v160 = v104;
                v161 = v107;
                *&v162[3] = *&v187[3];
                *v162 = *v187;
                v163 = v68;
                v164 = v72;
                v165 = v60;
                v35 = v102;
                goto LABEL_10;
              }

              sub_214031C4C();
              swift_allocError();
              *v61 = 0xD00000000000001BLL;
              v61[1] = 0x8000000214790AB0;
              v61[2] = 0xD00000000000001CLL;
              v61[3] = v96;
              swift_willThrow();

              (*(v117 + 8))(v8, v101);

              sub_213FDC6D0(v70, v71);
              v24 = v115;
              v100 = v116;
              v94 = v114;
              v95 = v113;
              v89 = v112;
              v90 = v111;
              v84 = v109;
              v85 = v110;
              v79 = v108;
              v80 = v106;
              v67 = v103;
              v66 = v105;
            }

            else
            {

              sub_214031C4C();
              swift_allocError();
              *v51 = 0xD00000000000001DLL;
              v51[1] = 0x8000000214790A90;
              v52 = v96;
              v51[2] = 0xD00000000000001CLL;
              v51[3] = v52;
              swift_willThrow();
              (*(v117 + 8))(v8, v101);

              v24 = v115;
              v100 = v116;
              v190 = v63;
              v94 = v114;
              v95 = v113;
              v89 = v112;
              v90 = v111;
              v84 = v109;
              v85 = v110;
              v79 = v108;
              v80 = v106;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v48 = 0xD000000000000022;
            v48[1] = 0x8000000214790A60;
            v49 = v96;
            v48[2] = 0xD00000000000001CLL;
            v48[3] = v49;
            swift_willThrow();

            (*(v117 + 8))(v8, v101);

            sub_213FDC6D0(v80, v79);
            v24 = v115;
            v100 = v116;
            v94 = v114;
            v95 = v113;
            v89 = v112;
            v90 = v111;
            v84 = v109;
            v85 = v110;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v43 = 0xD00000000000001FLL;
          v43[1] = 0x8000000214790A40;
          v44 = v96;
          v43[2] = 0xD00000000000001CLL;
          v43[3] = v44;
          swift_willThrow();

          (*(v117 + 8))(v8, v101);

          sub_213FDC6D0(v85, v84);
          v24 = v115;
          v100 = v116;
          v94 = v114;
          v95 = v113;
          v89 = v112;
          v90 = v111;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v38 = 0xD00000000000001ELL;
        v38[1] = 0x8000000214790A20;
        v39 = v96;
        v38[2] = 0xD00000000000001CLL;
        v38[3] = v39;
        swift_willThrow();

        (*(v117 + 8))(v8, v101);

        sub_213FDC6D0(v90, v89);
        v24 = v115;
        v100 = v116;
        v94 = v114;
        v95 = v113;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v36 = 0xD00000000000001CLL;
      v36[1] = 0x8000000214790A00;
      v37 = v96;
      v36[2] = 0xD00000000000001CLL;
      v36[3] = v37;
      swift_willThrow();

      (*(v117 + 8))(v8, v101);

      sub_213FDC6D0(v95, v94);
      v24 = v115;
      v100 = v116;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001FLL;
    v33[1] = 0x80000002147909E0;
    v34 = v96;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = v34;
    swift_willThrow();

    (*(v117 + 8))(v8, v101);

    sub_213FDC6D0(v100, v22);
  }

  __swift_destroy_boxed_opaque_existential_1(v196);
  v121 = v118;
  v122 = v99;
  v123 = v98;
  v124 = v100;
  v125 = v24;
  v126 = v64;
  v128 = v91;
  v129 = v93;
  v130 = v95;
  v131 = v94;
  *v127 = v195[0];
  *&v127[3] = *(v195 + 3);
  v132 = v92;
  *v133 = *v194;
  *&v133[3] = *&v194[3];
  v134 = v86;
  v135 = v88;
  v136 = v90;
  v137 = v89;
  v138 = v87;
  *v139 = *v193;
  *&v139[3] = *&v193[3];
  v140 = v81;
  v141 = v83;
  v142 = v85;
  v143 = v84;
  v144 = v82;
  *&v145[3] = *&v192[3];
  *v145 = *v192;
  v146 = v76;
  v147 = v78;
  v148 = v80;
  v149 = v79;
  v150 = v77;
  *&v151[3] = *&v191[3];
  *v151 = *v191;
  v152 = v73;
  v153 = v75;
  v154 = v67;
  v155 = v66;
  v156 = v190;
  v157 = v74;
  v159 = v189;
  v158 = v188;
  v160 = v104;
  v161 = v107;
  *&v162[3] = *&v187[3];
  *v162 = *v187;
  v163 = v68;
  v164 = v72;
  v35 = v71;
  v165 = v70;
LABEL_10:
  v166 = v35;
  v167 = v69;
  v168 = v65;
  return sub_21430870C(&v121);
}

uint64_t sub_2141F56E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099E8, &qword_2146F58E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = *(v1 + 32);
  v36 = *(v1 + 24);
  v37 = v7;
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 112);
  v31 = *(v1 + 104);
  v32 = v8;
  v30 = v10;
  v11 = *(v1 + 144);
  v28 = *(v1 + 152);
  v29 = v11;
  v12 = *(v1 + 192);
  v34 = *(v1 + 184);
  v35 = v9;
  v27 = v12;
  v33 = *(v1 + 224);
  v41 = *(v1 + 232);
  v26 = *(v1 + 233);
  v25 = *(v1 + 240);
  v24 = *(v1 + 248);
  v13 = *(v1 + 272);
  v22 = *(v1 + 280);
  v23 = v13;
  v14 = *(v1 + 289);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308760();
  v15 = v3;
  sub_2146DAA28();
  LOBYTE(v39) = 0;
  v16 = v38;
  sub_2146DA3E8();
  if (v16)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = v35;
  v18 = v34;
  LODWORD(v38) = v14;
  if (v37 == 1 || (v39 = v36, v40 = v37, v42 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v17 == 1) || (v39 = v32, v40 = v17, v42 = 2, sub_2146DA388(), v19 = v33, v30 == 1) || (v39 = v31, v40 = v30, v42 = 3, sub_2146DA388(), v28 == 1) || (v39 = v29, v40 = v28, v42 = 4, sub_2146DA388(), v27 == 1) || (v39 = v18, v40 = v27, v42 = 5, sub_2146DA388(), (v26 & 1) != 0 || (v39 = v19, LOBYTE(v40) = v41 & 1, v42 = 6, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40), sub_2142E3778(), sub_2146DA388(), v39 = v25, LOBYTE(v40) = v24, v42 = 7, sub_2146DA388(), v22 == 1)))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v39 = v23;
    v40 = v22;
    v42 = 8;
    sub_2146DA388();
    LOBYTE(v39) = 9;
    sub_2146DA338();
    return (*(v4 + 8))(v6, v15);
  }

  return result;
}

uint64_t sub_2141F5BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21449BC44(&v17);
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000001CLL;
  v18 = 0x8000000214790AD0;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;
  v10 = v5;

  sub_213FDC9D0(v7, v8);
  v11 = v10(v16, &v22, &v17);
  if (v15)
  {

    sub_213FDC6D0(v7, v8);
  }

  else
  {
    if (v11)
    {
      sub_213FDC6D0(v7, v8);

      sub_213FDC6D0(v7, v8);

      *a3 = v10;
      *(a3 + 8) = v6;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD00000000000001CLL;
    v13[1] = 0x8000000214790AD0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v7, v8);
  }

  return sub_213FDC6D0(v7, v8);
}

uint64_t sub_2141F5DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x644974616863 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2141F5E28(uint64_t a1)
{
  v2 = sub_214308810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F5E64(uint64_t a1)
{
  v2 = sub_214308810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F5EA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099F0, &qword_2146F58F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308810();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_2142E12FC();
  sub_2146DA1C8();
  v23 = a2;
  v10 = v30;
  v11 = v31;
  sub_21449BC44(&v30);
  v12 = v31;
  v27 = v30;
  v13 = v32;
  v14 = v33;
  v24 = v10;
  v25 = v11;
  v29[0] = v10;
  v29[1] = v11;
  v35 = v34;
  v36 = v34;
  v30 = 0xD00000000000001CLL;
  v31 = 0x8000000214790AD0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v28 = v13;
  v26 = v14;
  sub_213FDC9D0(v13, v14);
  v15 = v27(v29, &v36, &v30);
  if (v15)
  {
    v16 = v26;
    sub_213FDC6D0(v28, v26);

    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v28, v16);
    v17 = v23;
    *v23 = v27;
    v17[1] = v12;
    v18 = v25;
    v17[2] = v24;
    v17[3] = v18;
    *(v17 + 32) = v35;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v19 = 0xD00000000000001CLL;
  v19[1] = 0x8000000214790AD0;
  v19[2] = 0xD00000000000001CLL;
  v19[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  v20 = v28;
  v21 = v26;
  sub_213FDC6D0(v28, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FDC6D0(v20, v21);
}

uint64_t sub_2141F6268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2141F62F0(uint64_t a1)
{
  v2 = sub_214308864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F632C(uint64_t a1)
{
  v2 = sub_214308864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F6368@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A08, &qword_2146F5900);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308864();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v11;
    sub_2143088B8();
    sub_2146DA1C8();
    (*(v5 + 8))(v7, v4);
    memcpy(v8, v10, 0x131uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141F64E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A20, &qword_2146F5908);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  memcpy(v10, v1, 0x131uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430890C(v10, v9);
  sub_214308864();
  sub_2146DAA28();
  memcpy(v9, v10, 0x131uLL);
  sub_214308968();
  sub_2146DA388();
  memcpy(v8, v9, 0x131uLL);
  sub_2143089BC(v8);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141F66AC@<X0>(uint64_t (*a1)(void, void, void)@<X0>, char a2@<W1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v41 = *a7;
  v42 = a7[1];
  v43 = a7[2];
  sub_21403188C(v77);
  v11 = v77[0];
  v12 = v77[1];
  v34 = v77[2];
  v35 = v78;
  v13 = v79;
  v14 = v80;
  sub_2140319D0(&v53);
  v51 = v53;
  v52 = v54;
  v49 = v55;
  v84 = v56;
  v46 = v57;
  sub_214031A04(&v72);
  v38 = v73;
  v39 = v72;
  v47 = v74;
  v48 = v75;
  v36 = v76;
  v81 = v13;
  v72 = a1;
  LOBYTE(v73) = a2 & 1;
  v40 = v14;
  LOBYTE(v77[0]) = v14;
  v53 = 0xD000000000000026;
  v54 = 0x8000000214790AF0;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;

  v50 = v12;
  v37 = v11;
  v15 = v11(&v72, v77, &v53);
  if (v8)
  {

LABEL_6:
    v20 = v39;
    v22 = v49;
    v21 = v50;

    a1 = v34;
    v16 = v35;
    v23 = v36;
    v17 = v46;
    v24 = v38;
LABEL_7:
    v53 = v37;
    v54 = v21;
    v55 = a1;
    LOBYTE(v56) = v16;
    BYTE1(v56) = v81;
    BYTE2(v56) = v40;
    *(&v56 + 3) = *&v83[7];
    HIBYTE(v56) = v83[11];
    v57 = v51;
    v58 = v52;
    v59 = v22;
    v60 = v84;
    v61 = v17;
    *&v62[3] = *&v83[3];
    *v62 = *v83;
    v63 = v20;
    v64 = v24;
    v65 = v47;
    v66 = v48;
    v67 = v23;
    *v68 = v82[0];
    *&v68[3] = *(v82 + 3);
    v69 = v41;
    v70 = v42;
    v71 = v43;
    return sub_214308A10(&v53);
  }

  if ((v15 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000026;
    v19[1] = 0x8000000214790AF0;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v16 = a2 & 1;

  v81 = 0;
  v72 = a3;
  v73 = a4;
  v17 = v46;
  LOBYTE(v77[0]) = v46;
  v53 = 0xD000000000000024;
  v54 = 0x8000000214790B20;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;

  sub_213FDC9D0(v49, v84);
  v18 = v51(&v72, v77, &v53);
  v23 = v36;
  if ((v18 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000024;
    v28[1] = 0x8000000214790B20;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    v24 = v38;
    v20 = v39;

    v22 = v49;
    sub_213FDC6D0(v49, v84);
LABEL_11:
    v21 = v50;
    goto LABEL_7;
  }

  v26 = v84;
  sub_213FDC6D0(v49, v84);

  sub_213FDC6D0(v49, v26);
  v72 = a5;
  v73 = a6;
  LOBYTE(v77[0]) = v36;
  v53 = 0xD000000000000029;
  v54 = 0x8000000214790B50;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;
  v24 = v38;

  sub_213FDC9D0(v47, v48);
  v20 = v39;
  v27 = v39(&v72, v77, &v53);
  v17 = v46;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000029;
    v30[1] = 0x8000000214790B50;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v47, v48);
    v22 = a3;
    v84 = a4;
    goto LABEL_11;
  }

  sub_213FDC6D0(v47, v48);

  result = sub_213FDC6D0(v47, v48);
  v29 = v81;
  *a8 = v37;
  *(a8 + 8) = v50;
  *(a8 + 16) = a1;
  *(a8 + 24) = v16;
  *(a8 + 25) = v29;
  *(a8 + 26) = v40;
  *(a8 + 32) = v51;
  *(a8 + 40) = v52;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = v46;
  *(a8 + 72) = v39;
  *(a8 + 80) = v38;
  *(a8 + 88) = a5;
  *(a8 + 96) = a6;
  *(a8 + 104) = v36;
  *(a8 + 112) = v41;
  *(a8 + 120) = v42;
  *(a8 + 128) = v43;
  return result;
}

unint64_t sub_2141F6C2C()
{
  v1 = 0x614C656372756F73;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x74616C736E617274;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2141F6CCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214376CAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141F6CF4(uint64_t a1)
{
  v2 = sub_214308A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F6D30(uint64_t a1)
{
  v2 = sub_214308A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F6D6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A30, &qword_2146F5910);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308A64();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v67 = v5;
  v8 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v68) = 0;
  sub_2142E11FC();
  sub_2146DA1C8();
  v65 = v77;
  v66 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v68) = 1;
  sub_2142E12FC();
  v9 = v7;
  sub_2146DA1C8();
  v10 = a1;
  v11 = v77;
  *(&v64 + 1) = v78;
  LOBYTE(v68) = 2;
  sub_2146DA1C8();
  *&v64 = v11;
  v13 = v77;
  v12 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  v101 = 3;
  sub_2142E4F74();
  sub_2146DA1C8();
  v44 = v13;
  v52 = v102;
  v53 = v12;
  v47 = v9;
  v48 = v103;
  v49 = v104;
  sub_21403188C(&v94);
  v16 = v94;
  v15 = v95;
  v46 = v96;
  v45 = v97;
  LOBYTE(v13) = v98;
  LODWORD(v12) = v99;
  sub_2140319D0(&v77);
  v60 = v77;
  v58 = v79;
  v62 = v80;
  v63 = v78;
  v61 = v81;
  sub_214031A04(&v68);
  v54 = v68;
  v56 = v69;
  v57 = *(&v68 + 1);
  v55 = v70;
  v100 = v13;
  *&v68 = v65;
  BYTE8(v68) = v66;
  v51 = v12;
  LOBYTE(v94) = v12;
  v77 = 0xD000000000000026;
  v78 = 0x8000000214790AF0;
  v79 = 0xD00000000000001CLL;
  v80 = 0x800000021478A360;

  v59 = v15;
  v50 = v16;
  v17 = v16(&v68, &v94, &v77);
  v18 = *(&v64 + 1);
  if (v17)
  {

    v100 = 0;
    *&v68 = v64;
    *(&v68 + 1) = v18;
    LOBYTE(v94) = v61;
    v77 = 0xD000000000000024;
    v78 = 0x8000000214790B20;
    v79 = 0xD00000000000001CLL;
    v80 = 0x800000021478A360;

    sub_213FDC9D0(v58, v62);
    v19 = v60(&v68, &v94, &v77);
    v43 = 0x800000021478A360;
    if (v19)
    {
      v26 = v58;
      sub_213FDC6D0(v58, v62);
      v27 = v43;

      sub_213FDC6D0(v26, v62);
      v94 = v44;
      v95 = v53;
      LOBYTE(v68) = v55;
      v77 = 0xD000000000000029;
      v78 = 0x8000000214790B50;
      v79 = 0xD00000000000001CLL;
      v80 = v27;

      sub_213FDC9D0(v56, *(&v56 + 1));
      v28 = v54(&v94, &v68, &v77);
      if (v28)
      {
        v31 = v56;
        sub_213FDC6D0(v56, *(&v56 + 1));

        (*(v67 + 8))(v47, v4);
        v32 = v57;

        sub_213FDC6D0(v31, *(&v31 + 1));
        *&v68 = v50;
        *(&v68 + 1) = v59;
        *&v69 = v65;
        BYTE8(v69) = v66;
        LODWORD(v67) = v100;
        BYTE9(v69) = v100;
        BYTE10(v69) = v51;
        *(&v69 + 11) = v107;
        HIBYTE(v69) = v108;
        *&v70 = v60;
        *(&v70 + 1) = v63;
        v71 = v64;
        LOBYTE(v72) = v61;
        *(&v72 + 1) = *v106;
        DWORD1(v72) = *&v106[3];
        v33 = v54;
        *(&v72 + 1) = v54;
        *&v73 = v32;
        *(&v73 + 1) = v44;
        *&v74 = v53;
        BYTE8(v74) = v55;
        *(&v74 + 9) = *v105;
        HIDWORD(v74) = *&v105[3];
        v35 = v48;
        v34 = v49;
        *&v75 = v52;
        *(&v75 + 1) = v48;
        v76 = v49;
        *(v8 + 128) = v49;
        v36 = v71;
        *(v8 + 32) = v70;
        *(v8 + 48) = v36;
        v37 = v69;
        *v8 = v68;
        *(v8 + 16) = v37;
        v38 = v73;
        *(v8 + 64) = v72;
        *(v8 + 80) = v38;
        v39 = v75;
        *(v8 + 96) = v74;
        *(v8 + 112) = v39;
        sub_214308AB8(&v68, &v77);
        __swift_destroy_boxed_opaque_existential_1(v10);
        v77 = v50;
        v78 = v59;
        v79 = v65;
        LOBYTE(v80) = v66;
        BYTE1(v80) = v67;
        BYTE2(v80) = v51;
        *(&v80 + 3) = v107;
        HIBYTE(v80) = v108;
        v81 = v60;
        v82 = v63;
        v83 = v64;
        v84 = v61;
        *v85 = *v106;
        *&v85[3] = *&v106[3];
        v86 = v33;
        v87 = v32;
        *&v88 = v44;
        *(&v88 + 1) = v53;
        v89 = v55;
        *&v90[3] = *&v105[3];
        *v90 = *v105;
        v91 = v52;
        v92 = v35;
        v93 = v34;
        return sub_214308A10(&v77);
      }

      sub_214031C4C();
      swift_allocError();
      *v40 = 0xD000000000000029;
      v40[1] = 0x8000000214790B50;
      v41 = v43;
      v40[2] = 0xD00000000000001CLL;
      v40[3] = v41;
      swift_willThrow();

      v42 = *(&v64 + 1);
      (*(v67 + 8))(v47, v4);

      sub_213FDC6D0(v56, *(&v56 + 1));
      v24 = v64;
      v25 = v42;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v29 = 0xD000000000000024;
      v29[1] = 0x8000000214790B20;
      v30 = v43;
      v29[2] = 0xD00000000000001CLL;
      v29[3] = v30;
      swift_willThrow();

      (*(v67 + 8))(v47, v4);

      v24 = v58;
      v25 = v62;
      sub_213FDC6D0(v58, v62);
    }

    v23 = v66;
    v22 = v65;
    v21 = v59;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000026;
    v20[1] = 0x8000000214790AF0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v67 + 8))(v47, v4);
    v21 = v59;

    v22 = v46;
    v23 = v45;
    v24 = v58;
    v25 = v62;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  v77 = v50;
  v78 = v21;
  v79 = v22;
  LOBYTE(v80) = v23;
  BYTE1(v80) = v100;
  BYTE2(v80) = v51;
  *(&v80 + 3) = v107;
  HIBYTE(v80) = v108;
  v81 = v60;
  v82 = v63;
  *&v83 = v24;
  *(&v83 + 1) = v25;
  v84 = v61;
  *v85 = *v106;
  *&v85[3] = *&v106[3];
  v86 = v54;
  v87 = v57;
  v88 = v56;
  v89 = v55;
  *v90 = *v105;
  *&v90[3] = *&v105[3];
  v91 = v52;
  v92 = v48;
  v93 = v49;
  return sub_214308A10(&v77);
}

uint64_t sub_2141F7788(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A40, &qword_2146F5918);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v9 = *(v1 + 48);
  v19 = *(v1 + 56);
  v20 = v9;
  v10 = *(v1 + 88);
  v17 = *(v1 + 96);
  v18 = v10;
  v11 = *(v1 + 112);
  v15 = *(v1 + 120);
  v16 = v11;
  v14 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308A64();
  sub_2146DAA28();
  if ((v8 & 1) == 0)
  {
    v23 = v6;
    LOBYTE(v24) = v7 & 1;
    v26 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    v12 = v21;
    sub_2146DA388();
    if (v12)
    {
      return (*(v22 + 8))(v5, v3);
    }

    if (v19 != 1)
    {
      v23 = v20;
      v24 = v19;
      v26 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      if (v17 != 1)
      {
        v23 = v18;
        v24 = v17;
        v26 = 2;
        sub_2146DA388();
        v23 = v16;
        v24 = v15;
        v25 = v14;
        v26 = 3;
        sub_214031CA0(v16, v15, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
        sub_2142E5278();
        sub_2146DA388();
        sub_214031CE0(v23, v24, v25);
        return (*(v22 + 8))(v5, v3);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141F7AB4(uint64_t a1)
{
  v2 = sub_214308B14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F7AF0(uint64_t a1)
{
  v2 = sub_214308B14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F7BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21408E674(&v11);
  v5 = v11;
  v4 = v12;
  v6 = v14;
  v16 = a1;
  v15 = v14;
  v11 = 0xD000000000000034;
  v12 = 0x8000000214790B80;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  v7 = v5(&v16, &v15, &v11);
  if (v2)
  {
  }

  else
  {
    if (v7)
    {

      result = swift_bridgeObjectRelease_n();
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = a1;
      *(a2 + 24) = v6;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v9 = 0xD000000000000034;
    v9[1] = 0x8000000214790B80;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2141F7D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000021 && 0x8000000214793E80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2141F7E24(uint64_t a1)
{
  v2 = sub_214308B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F7E60(uint64_t a1)
{
  v2 = sub_214308B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F7E9C@<X0>(void *a1@<X0>, uint64_t (**a2)(unint64_t *, char *, unint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A60, &qword_2146F5930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308B68();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2142E15CC();
  sub_2146DA1C8();
  v16 = a2;
  v10 = v21;
  sub_21408E674(&v21);
  v12 = v21;
  v11 = v22;
  v19 = v10;
  v20 = v23;
  v26 = v10;
  v17 = v24;
  v25 = v24;
  v21 = 0xD000000000000034;
  v22 = 0x8000000214790B80;
  v23 = 0xD00000000000001CLL;
  v24 = 0x800000021478A360;

  v18 = v11;
  if (v12(&v26, &v25, &v21))
  {

    (*(v6 + 8))(v8, v5);

    v13 = v18;

    v14 = v16;
    *v16 = v12;
    v14[1] = v13;
    v14[2] = v19;
    *(v14 + 24) = v17;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v15 = 0xD000000000000034;
  v15[1] = 0x8000000214790B80;
  v15[2] = 0xD00000000000001CLL;
  v15[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141F81C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A70, &qword_2146F5938);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308B68();
  sub_2146DAA28();
  if (v7)
  {
    v9[1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

int *sub_2141F839C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = sub_2146D8B88();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  result = type metadata accessor for VideoMessageMetadata(0);
  *(a6 + result[5]) = v11;
  *(a6 + result[6]) = v12;
  *(a6 + result[7]) = v13;
  *(a6 + result[8]) = a5;
  *(a6 + result[9]) = a7;
  return result;
}

uint64_t sub_2141F8468()
{
  v1 = *v0;
  v2 = 0x444955556C6C6163;
  v3 = 0x516567617373656DLL;
  v4 = 0x617461646174656DLL;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461727564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x707954616964656DLL;
  if (v1 != 1)
  {
    v5 = 0x72656469766F7270;
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

uint64_t sub_2141F853C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214376E30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141F8564(uint64_t a1)
{
  v2 = sub_214308BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F85A0(uint64_t a1)
{
  v2 = sub_214308BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F85DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_2146D8B88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A78, &qword_2146F5940);
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v23[-v9];
  v11 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_214308BBC();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v5;
    v39 = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v13 = v29;
    sub_2146DA1C8();
    v37 = 1;
    sub_21405B360();
    sub_2146DA1C8();
    v27 = v38;
    v35 = 2;
    sub_21405B48C();
    sub_2146DA1C8();
    v15 = v36;
    v33 = 3;
    sub_21405B1F8();
    sub_2146DA1C8();
    v26 = v15;
    v16 = v34;
    v32 = 4;
    v17 = sub_2146DA1B8();
    v24 = v16;
    v25 = v17;
    v31 = 5;
    sub_2146DA188();
    v19 = v18;
    (*(v8 + 8))(v10, v13);
    v20 = v28;
    (*(v12 + 32))(v28, v7, v4);
    v21 = type metadata accessor for VideoMessageMetadata(0);
    v22 = v26;
    *(v20 + v21[5]) = v27;
    *(v20 + v21[6]) = v22;
    *(v20 + v21[7]) = v24;
    *(v20 + v21[8]) = v25;
    *(v20 + v21[9]) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_2141F89EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A88, &qword_2146F5948);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308BBC();
  sub_2146DAA28();
  v11[15] = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for VideoMessageMetadata(0);
    v11[14] = *(v3 + v9[5]);
    v11[13] = 1;
    sub_21405B3B4();
    sub_2146DA388();
    v11[12] = *(v3 + v9[6]);
    v11[11] = 2;
    sub_21405B4E0();
    sub_2146DA388();
    v11[10] = *(v3 + v9[7]);
    v11[9] = 3;
    sub_21405B24C();
    sub_2146DA388();
    v11[8] = 4;
    sub_2146DA378();
    v11[7] = 5;
    sub_2146DA348();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2141F8CD0(uint64_t a1)
{
  v2 = sub_214308C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F8D0C(uint64_t a1)
{
  v2 = sub_214308C10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F8D48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A90, &qword_2146F5950);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308C10();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    sub_214308C64();
    sub_2146DA1C8();
    v9 = v15;
    v18 = v16;
    v14 = BYTE1(v16);
    v19 = 1;
    sub_214308CB8();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v17;
    *a2 = v9;
    *(a2 + 16) = v18;
    *(a2 + 17) = v14;
    v11 = v16;
    *(a2 + 24) = v15;
    *(a2 + 40) = v11;
    *(a2 + 56) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141F8F58(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909AB0, &qword_2146F5958);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 8);
  v9 = v1[4];
  v15 = v1[3];
  v16 = v9;
  v10 = v1[6];
  v14 = v1[5];
  v17 = v10;
  v25 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308C10();

  sub_2146DAA28();
  v20 = v6;
  v21 = v7;
  LOWORD(v22) = v8;
  v26 = 0;
  sub_214308D0C();
  v11 = v18;
  sub_2146DA388();

  if (!v11)
  {
    v20 = v15;
    v21 = v16;
    v22 = v14;
    v23 = v17;
    v24 = v25;
    v26 = 1;
    sub_214308D60();

    sub_2146DA388();
  }

  return (*(v19 + 8))(v5, v3);
}

uint64_t sub_2141F9198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a1;
  v14 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload(0, a5, a6, a4);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v38 = v17;
  v18 = *(v17 + 16);
  v40 = v19;
  v41 = a4;
  v18(&v34 - v15, a4);
  sub_214424A00(&v46);
  v43 = v46;
  v44 = v47;
  v45 = v48;
  sub_214424ACC(v12, &v43, v16, a5, a6, a7);
  v21 = type metadata accessor for WalletPassSharingSpecializedMessage(0, a5, a6, v20);
  v39 = a7;
  sub_214424B84(&v46);
  v35 = a2;
  v42[0] = a2;
  v42[1] = a3;
  v22 = v48;
  v49 = v48;
  v43.n128_u64[0] = 0xD000000000000035;
  v43.n128_u64[1] = 0x8000000214790BC0;
  *&v44 = 0xD00000000000001CLL;
  *(&v44 + 1) = 0x800000021478A360;
  v23 = v46.n128_u64[0];
  v36 = v46;
  v24 = v46.n128_u64[1];
  v25 = v37;
  v26 = (v46.n128_u64[0])(v42, &v49, &v43);
  if (v25)
  {

    v27 = v36;
  }

  else
  {
    if (v26)
    {

      *&v47 = v35;
      *(&v47 + 1) = a3;
      v43.n128_u64[0] = v23;
      v43.n128_u64[1] = v24;
      *&v44 = v35;
      *(&v44 + 1) = a3;
      v45 = v22;
      v28 = sub_214424BD0(&v43);
      return (*(v38 + 8))(v41, v40, v28);
    }

    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000035;
    v30[1] = 0x8000000214790BC0;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    v27 = v46;
    v22 = v48;
  }

  v43 = v27;
  v44 = v47;
  v45 = v22;
  v31 = v39;
  v32 = sub_214424BD0(&v43);
  (*(v38 + 8))(v41, v40, v32);
  return (*(*(v21 - 8) + 8))(v31, v21, v33);
}

uint64_t sub_2141F94A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021478BCE0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2141F95C8(char a1)
{
  if (!a1)
  {
    return 0x6E6F6973726576;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x64616F6C796170;
}

uint64_t sub_2141F9640(uint64_t a1)
{
  sub_2146DA958();
  sub_213FDC894(v3, *v1);
  return sub_2146DA9B8();
}

uint64_t sub_2141F9688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2141F94A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141F96B0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_214377044();
  *a2 = result;
  return result;
}

uint64_t sub_2141F96DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_21472B174, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2141F9730(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_21472B174, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2141F9784@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v43 = a4;
  v48 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload(0, a2, a3, a5);
  v46 = *(v48 - 8);
  v8 = MEMORY[0x28223BE20](v48);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v40 - v10;
  v12 = _s10CodingKeysOMa_315(255, a2, a3, v11);
  swift_getWitnessTable(byte_21472B174, v12);
  v51 = sub_2146DA258();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v14 = &v40 - v13;
  v44 = a3;
  v16 = type metadata accessor for WalletPassSharingSpecializedMessage(0, a2, a3, v15);
  v45 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v52;
  sub_2146DAA08();
  if (!v19)
  {
    v20 = v50;
    v42 = a2;
    v52 = v18;
    v21 = v49;
    v57.n128_u8[0] = 0;
    v22 = v14;
    v23 = sub_2146DA218();
    v57.n128_u8[0] = 1;
    v24 = sub_2146DA168();
    v60 = v23;
    *&v41 = v24;
    *(&v41 + 1) = v25;
    v57.n128_u8[0] = 2;
    v26 = v48;
    swift_getWitnessTable(asc_214700530, v48);
    v27 = v47;
    sub_2146DA1C8();
    v40 = v22;
    (*(v46 + 16))(v20, v27, v26);
    v29 = v42;
    v30 = v44;
    sub_214424A00(&v57);
    v54 = v57;
    v55 = v58;
    v56 = v59;
    sub_214424ACC(v60, &v54, v20, v29, v30, v52);
    sub_214424B84(&v57);
    v53 = v41;
    v31 = v57;
    v32 = v59;
    v61 = v59;
    v54.n128_u64[0] = 0xD000000000000035;
    v54.n128_u64[1] = 0x8000000214790BC0;
    v50 = 0x8000000214790BC0;
    *&v55 = 0xD00000000000001CLL;
    *(&v55 + 1) = 0x800000021478A360;
    v33 = (v57.n128_u64[0])(&v53, &v61, &v54);
    v34 = v50;
    if (v33)
    {
      v44 = *(&v58 + 1);

      v58 = v41;
      v54 = v31;
      v55 = v41;
      v56 = v32;
      v35 = v52;
      v36 = sub_214424BD0(&v54);
      (*(v46 + 8))(v47, v48, v36);
      (*(v21 + 8))(v40, v51);
      (*(v45 + 32))(v43, v35, v16);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v37 = 0xD000000000000035;
      v37[1] = v34;
      v37[2] = 0xD00000000000001CLL;
      v37[3] = 0x800000021478A360;
      swift_willThrow();

      v54 = v57;
      v55 = v58;
      v56 = v59;
      v38 = v52;
      v39 = sub_214424BD0(&v54);
      (*(v46 + 8))(v47, v48, v39);
      (*(v21 + 8))(v40, v51);
      (*(v45 + 8))(v38, v16);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141F9DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v5 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = v5;
  v6 = _s10CodingKeysOMa_315(255, v5, v16, a4);
  swift_getWitnessTable(byte_21472B174, v6);
  v7 = sub_2146DA3F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA28();
  v22 = 0;
  v11 = v19;
  sub_2146DA3D8();
  if (!v11)
  {
    v13 = v17;
    sub_214426140();
    v21 = 1;

    sub_2146DA328();

    v20 = 2;
    v15 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload(0, v13, v16, v14);
    swift_getWitnessTable(byte_214700558, v15);
    sub_2146DA388();
  }

  return (*(v8 + 8))(v10, v7);
}

__n128 sub_2141FA06C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 24) = *a2;
  v5 = *(a2 + 32);
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 40) = v4;
  *(a3 + 56) = v5;
  return result;
}

uint64_t sub_2141FA094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44636972656E6567 && a2 == 0xEB00000000617461;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C707061 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2141FA170(uint64_t a1)
{
  v2 = sub_214308DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FA1AC(uint64_t a1)
{
  v2 = sub_214308DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FA1E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909AC8, &qword_2146F5960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308DCC();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    sub_214308E20();
    sub_2146DA1C8();
    v9 = v15;
    v18 = v16;
    v14 = BYTE1(v16);
    v19 = 1;
    sub_214308E74();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v17;
    *a2 = v9;
    *(a2 + 16) = v18;
    *(a2 + 17) = v14;
    v11 = v16;
    *(a2 + 24) = v15;
    *(a2 + 40) = v11;
    *(a2 + 56) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141FA3F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909AE8, &qword_2146F5968);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 8);
  v9 = v1[4];
  v15 = v1[3];
  v16 = v9;
  v10 = v1[6];
  v14 = v1[5];
  v17 = v10;
  v25 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308DCC();

  sub_2146DAA28();
  v20 = v6;
  v21 = v7;
  LOWORD(v22) = v8;
  v26 = 0;
  sub_214308EC8();
  v11 = v18;
  sub_2146DA388();

  if (!v11)
  {
    v20 = v15;
    v21 = v16;
    v22 = v14;
    v23 = v17;
    v24 = v25;
    v26 = 1;
    sub_214308F1C();

    sub_2146DA388();
  }

  return (*(v19 + 8))(v5, v3);
}

uint64_t sub_2141FA638@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char *a10, unsigned __int8 a11)
{
  v71 = a4;
  v74 = a8;
  v75 = a6;
  v68 = a7;
  v69 = a5;
  v70 = a3;
  v77 = a2;
  LODWORD(v76) = a11;
  v73 = a10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - v14);
  v16 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  v17 = v16[5];
  sub_2144DC944(&v17[a9]);
  sub_2144DCAF0(&v80);
  v18 = v81;
  v19 = v82;
  v20 = v83;
  sub_2144DCC4C(v78);
  v21 = v79;
  *a9 = a1;
  v22 = &a9[v16[6]];
  v23 = v71;
  *v22 = v70;
  v22[1] = v23;
  v24 = &a9[v16[7]];
  *v24 = v80;
  *(v24 + 2) = v18;
  *(v24 + 3) = v19;
  v24[32] = v20;
  v25 = v77;
  v26 = &a9[v16[8]];
  v27 = v78[1];
  *v26 = v78[0];
  *(v26 + 1) = v27;
  v26[32] = v21;
  v28 = &a9[v16[9]];
  *v28 = v73;
  v28[8] = v76 & 1;
  v73 = v17;
  v76 = a9;
  sub_213FB2E54(&v17[a9], v15, &qword_27C903F38, &unk_2146E9D40);
  v29 = *v15;
  LOBYTE(v78[0]) = *(v15 + *(v13 + 32));
  *&v80 = 0xD00000000000002ELL;
  *(&v80 + 1) = 0x8000000214790C00;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;
  v30 = v72;
  v31 = v29(v25, v78, &v80);
  if (v30)
  {

    sub_213FB2DF4(v25, &unk_27C9131A0, &unk_2146E9D10);

LABEL_6:
    v42 = v76;
    sub_21402EDB8(v15, &v73[v76], &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(v42, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
  }

  v71 = v26;
  v72 = v24;
  if ((v31 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD00000000000002ELL;
    v41[1] = 0x8000000214790C00;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v77, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_6;
  }

  v32 = *(v13 + 28);
  sub_213FB2DF4(v15 + v32, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v77, v15 + v32, &unk_27C9131A0, &unk_2146E9D10);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v33 - 8) + 56))(v15 + v32, 0, 1, v33);
  sub_21402EDB8(v15, &v73[v76], &qword_27C903F38, &unk_2146E9D40);
  v34 = v72;
  v36 = *v72;
  v35 = *(v72 + 1);
  v38 = *(v72 + 2);
  v37 = *(v72 + 3);
  v39 = v72[32];
  *&v78[0] = v69;
  *(&v78[0] + 1) = v75;
  LODWORD(v70) = v39;
  v84 = v39;
  *&v80 = 0xD000000000000039;
  *(&v80 + 1) = 0x8000000214790C30;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;

  v67 = v37;
  sub_213FDC9D0(v38, v37);
  v73 = v36;
  v40 = (v36)(v78, &v84, &v80);
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD000000000000039;
    v55[1] = 0x8000000214790C30;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v77, &unk_27C9131A0, &unk_2146E9D10);
    v56 = *(v34 + 2);
    v57 = *(v34 + 3);

    sub_213FDC6D0(v56, v57);
    *v34 = v73;
    *(v34 + 1) = v35;
    v58 = v67;
    *(v34 + 2) = v38;
    *(v34 + 3) = v58;
    v59 = v70;
LABEL_12:
    v34[32] = v59;
    v42 = v76;
    return sub_21432887C(v42, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
  }

  v66 = 0;
  sub_213FDC6D0(v38, v67);

  v44 = *(v34 + 2);
  v45 = *(v34 + 3);

  sub_213FDC6D0(v44, v45);
  *v34 = v73;
  *(v34 + 1) = v35;
  v47 = v74;
  v46 = v75;
  *(v34 + 2) = v69;
  *(v34 + 3) = v46;
  v34[32] = v70;
  v34 = v71;
  v49 = *v71;
  v48 = *(v71 + 1);
  v50 = *(v71 + 2);
  v51 = *(v71 + 3);
  v52 = v71[32];
  *&v78[0] = v68;
  *(&v78[0] + 1) = v47;
  LODWORD(v73) = v52;
  v84 = v52;
  *&v80 = 0xD00000000000002ELL;
  *(&v80 + 1) = 0x8000000214790C70;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;

  sub_213FDC9D0(v50, v51);
  v53 = v66;
  v75 = v49;
  v54 = v49(v78, &v84, &v80);
  if (v53)
  {

LABEL_16:

    sub_213FB2DF4(v77, &unk_27C9131A0, &unk_2146E9D10);
    v64 = *(v34 + 2);
    v65 = *(v34 + 3);

    sub_213FDC6D0(v64, v65);
    *v34 = v75;
    *(v34 + 1) = v48;
    *(v34 + 2) = v50;
    *(v34 + 3) = v51;
    v59 = v73;
    goto LABEL_12;
  }

  if ((v54 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v63 = 0xD00000000000002ELL;
    v63[1] = 0x8000000214790C70;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_16;
  }

  sub_213FDC6D0(v50, v51);

  sub_213FB2DF4(v77, &unk_27C9131A0, &unk_2146E9D10);
  v60 = *(v34 + 2);
  v61 = v47;
  v62 = *(v34 + 3);

  result = sub_213FDC6D0(v60, v62);
  *v34 = v75;
  *(v34 + 1) = v48;
  *(v34 + 2) = v68;
  *(v34 + 3) = v61;
  v34[32] = v73;
  return result;
}

unint64_t sub_2141FAD14()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x656D614E656E6F7ALL;
  if (v1 != 4)
  {
    v3 = 0x6165724365746164;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 1)
  {
    v4 = 0x4C52556572616873;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_2141FADD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437704C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141FAE00(uint64_t a1)
{
  v2 = sub_214308F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FAE3C(uint64_t a1)
{
  v2 = sub_214308F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FAE78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  MEMORY[0x28223BE20](v87);
  v88 = &v74[-v3];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v86 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v5 = &v74[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B00, &qword_2146F5970);
  v90 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v74[-v7];
  v9 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308F70();
  v12 = v91;
  sub_2146DAA08();
  if (v12)
  {
    v13 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v83 = v11;
  v84 = v5;
  v91 = a1;
  v14 = v89;
  v15 = v90;
  LOBYTE(v94) = 0;
  LODWORD(v82) = sub_2146DA218();
  LOBYTE(v94) = 1;
  sub_2142E27A8();
  v16 = v84;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v92[0]) = 2;
  sub_2142E1278();
  sub_2146DA1C8();
  v81 = v94;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v92[0]) = 3;
  v18 = sub_2142E12FC();
  *(&v80 + 1) = v17;
  *&v80 = v18;
  sub_2146DA1C8();
  v79 = v94;
  LOBYTE(v92[0]) = 4;
  sub_2146DA1C8();
  v80 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v92[0]) = 5;
  sub_2142E35EC();
  sub_2146DA1C8();
  v78 = v6;
  v20 = v94;
  v98 = BYTE8(v94);
  v21 = v9;
  v22 = *(v9 + 20);
  v23 = v83;
  sub_2144DC944(v83 + v22);
  sub_2144DCAF0(&v94);
  v77 = v95;
  v76 = v96;
  v75 = v97;
  sub_2144DCC4C(v92);
  v24 = v93;
  *v23 = v82;
  v25 = (v23 + v21[6]);
  v26 = *(&v81 + 1);
  *v25 = v81;
  v25[1] = v26;
  v27 = v23 + v21[7];
  *v27 = v94;
  v28 = v76;
  *(v27 + 2) = v77;
  *(v27 + 3) = v28;
  v77 = v27;
  v27[32] = v75;
  v29 = v23 + v21[8];
  v30 = v92[1];
  *v29 = v92[0];
  *(v29 + 1) = v30;
  v76 = v29;
  v29[32] = v24;
  v31 = v23 + v21[9];
  *v31 = v20;
  v31[8] = v98;
  *(&v81 + 1) = v22;
  v32 = v23 + v22;
  v33 = v88;
  sub_213FB2E54(v32, v88, &qword_27C903F38, &unk_2146E9D40);
  v34 = *v33;
  LOBYTE(v92[0]) = v33[*(v87 + 32)];
  *&v94 = 0xD00000000000002ELL;
  *(&v94 + 1) = 0x8000000214790C00;
  *&v81 = 0x8000000214790C00;
  v95 = 0xD00000000000001CLL;
  v96 = 0x800000021478A360;
  v82 = 0x800000021478A360;
  v35 = v34(v16, v92, &v94);
  v36 = v81;
  v37 = v78;
  if (v35)
  {
    v38 = v82;

    v39 = v88;
    v40 = *(v87 + 28);
    sub_213FB2DF4(&v88[v40], &qword_27C903F40, &unk_2146F1C50);
    sub_213FB2E54(v16, &v39[v40], &unk_27C9131A0, &unk_2146E9D10);
    (*(v86 + 56))(&v39[v40], 0, 1, v14);
    sub_21402EDB8(v39, v83 + *(&v81 + 1), &qword_27C903F38, &unk_2146E9D40);
    v42 = *v77;
    v41 = *(v77 + 8);
    v43 = *(v77 + 16);
    v44 = *(v77 + 24);
    v45 = *(v77 + 32);
    v92[0] = v79;
    LODWORD(v88) = v45;
    v99 = v45;
    *&v94 = 0xD000000000000039;
    *(&v94 + 1) = 0x8000000214790C30;
    v95 = 0xD00000000000001CLL;
    v96 = v38;
    v46 = v43;

    v87 = v44;
    sub_213FDC9D0(v46, v44);
    v89 = v42;
    if (v42(v92, &v99, &v94))
    {
      sub_213FDC6D0(v46, v87);
      v50 = v82;

      v51 = v77;
      v52 = *(v77 + 16);
      v53 = *(v77 + 24);

      sub_213FDC6D0(v52, v53);
      *v51 = v89;
      *(v51 + 8) = v41;
      v54 = *(&v79 + 1);
      *(v51 + 16) = v79;
      *(v51 + 24) = v54;
      *(v51 + 32) = v88;
      v56 = *v76;
      v55 = *(v76 + 8);
      v58 = *(v76 + 16);
      v57 = *(v76 + 24);
      v59 = *(v76 + 32);
      v92[0] = v80;
      LODWORD(v88) = v59;
      v99 = v59;
      *&v94 = 0xD00000000000002ELL;
      *(&v94 + 1) = 0x8000000214790C70;
      v95 = 0xD00000000000001CLL;
      v96 = v50;

      sub_213FDC9D0(v58, v57);
      v89 = v56;
      if (v56(v92, &v99, &v94))
      {
        sub_213FDC6D0(v58, v57);

        sub_213FB2DF4(v84, &unk_27C9131A0, &unk_2146E9D10);
        (*(v15 + 8))(v8, v78);
        v66 = v76;
        v67 = *(v76 + 16);
        v68 = *(v76 + 24);

        sub_213FDC6D0(v67, v68);
        *v66 = v89;
        *(v66 + 8) = v55;
        v69 = *(&v80 + 1);
        *(v66 + 16) = v80;
        *(v66 + 24) = v69;
        *(v66 + 32) = v88;
        sub_214328704(v83, v85, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
        v13 = v91;
        return __swift_destroy_boxed_opaque_existential_1(v13);
      }

      sub_214031C4C();
      swift_allocError();
      *v70 = 0xD00000000000002ELL;
      v70[1] = 0x8000000214790C70;
      v71 = v82;
      v70[2] = 0xD00000000000001CLL;
      v70[3] = v71;
      swift_willThrow();

      sub_213FB2DF4(v84, &unk_27C9131A0, &unk_2146E9D10);
      (*(v15 + 8))(v8, v78);
      v62 = v76;
      v72 = *(v76 + 16);
      v73 = *(v76 + 24);

      sub_213FDC6D0(v72, v73);
      *v62 = v89;
      *(v62 + 8) = v55;
      *(v62 + 16) = v58;
      *(v62 + 24) = v57;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v60 = 0xD000000000000039;
      v60[1] = 0x8000000214790C30;
      v61 = v82;
      v60[2] = 0xD00000000000001CLL;
      v60[3] = v61;
      swift_willThrow();

      sub_213FB2DF4(v84, &unk_27C9131A0, &unk_2146E9D10);
      (*(v15 + 8))(v8, v78);
      v62 = v77;
      v63 = *(v77 + 16);
      v64 = *(v77 + 24);

      sub_213FDC6D0(v63, v64);
      *v62 = v89;
      *(v62 + 8) = v41;
      v65 = v87;
      *(v62 + 16) = v46;
      *(v62 + 24) = v65;
    }

    *(v62 + 32) = v88;
    v49 = v91;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v47 = 0xD00000000000002ELL;
    v47[1] = v36;
    v48 = v82;
    v47[2] = 0xD00000000000001CLL;
    v47[3] = v48;
    swift_willThrow();
    sub_213FB2DF4(v16, &unk_27C9131A0, &unk_2146E9D10);
    (*(v15 + 8))(v8, v37);
    v49 = v91;
    sub_21402EDB8(v88, v83 + *(&v81 + 1), &qword_27C903F38, &unk_2146E9D40);
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_21432887C(v83, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
}

uint64_t sub_2141FBAB8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B10, &qword_2146F5978);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308F70();
  sub_2146DAA28();
  LOBYTE(v33) = 0;
  v14 = v32;
  sub_2146DA3D8();
  if (v14)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v29 = type metadata accessor for WalletCloudStoreZoneInvitationMessage(0);
  v15 = *(v29 + 20);
  v32 = v2;
  v16 = v2 + v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v16 + *(v17 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v30 + 48))(v6, 1, v31) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
  }

  else
  {
    sub_21408AC04(v6, v9, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v33) = 1;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v9, &unk_27C9131A0, &unk_2146E9D10);
    v18 = v29;
    v19 = v32;
    v20 = (v32 + *(v29 + 24));
    v21 = v20[1];
    v33 = *v20;
    v34 = v21;
    v35 = 2;
    sub_213FDCA18(v33, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v33, v34);
    v22 = v19 + v18[7];
    v23 = *(v22 + 24);
    if (v23 != 1)
    {
      v33 = *(v22 + 16);
      v34 = v23;
      v35 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v24 = v19 + v18[8];
      v25 = *(v24 + 24);
      if (v25 != 1)
      {
        v33 = *(v24 + 16);
        v34 = v25;
        v35 = 4;
        sub_2146DA388();
        v26 = v19 + v18[9];
        v27 = *v26;
        LOBYTE(v26) = *(v26 + 8);
        v33 = v27;
        LOBYTE(v34) = v26;
        v35 = 5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
        sub_2142E37F4();
        sub_2146DA388();
        return (*(v11 + 8))(v13, v10);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141FBFCC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  v13 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
  v52 = a2;
  sub_213FB2E54(a2, a8 + v13[5], &qword_27C904EC8, "</\r");
  sub_214601E1C(&v56);
  v14 = v57;
  v15 = v58;
  v16 = v59;
  sub_2146020FC(v54);
  v17 = v55;
  *a8 = a1;
  v18 = a8 + v13[6];
  *v18 = a3;
  v18[4] = BYTE4(a3) & 1;
  v19 = a8 + v13[7];
  *v19 = v56;
  *(v19 + 2) = v14;
  *(v19 + 3) = v15;
  v19[32] = v16;
  v49 = a8;
  v20 = a8 + v13[8];
  v21 = v54[1];
  *v20 = v54[0];
  *(v20 + 1) = v21;
  v20[32] = v17;
  v22 = *v19;
  v23 = *(v19 + 1);
  v25 = *(v19 + 2);
  v24 = *(v19 + 3);
  v26 = v19[32];
  v27 = a4;
  *&v54[0] = a4;
  v28 = v22;
  *(&v54[0] + 1) = a5;
  v60 = v26;
  v61 = v26;
  *&v56 = 0xD000000000000038;
  *(&v56 + 1) = 0x8000000214790CA0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  sub_213FDC9D0(v25, v24);
  v29 = v28(v54, &v61, &v56);
  if (v51)
  {

LABEL_6:
    sub_213FB2DF4(v52, &qword_27C904EC8, "</\r");
    v39 = *(v19 + 2);
    v40 = *(v19 + 3);

    sub_213FDC6D0(v39, v40);
    *v19 = v28;
    *(v19 + 1) = v23;
    *(v19 + 2) = v25;
    *(v19 + 3) = v24;
    v19[32] = v60;
    return sub_21432887C(v49, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
  }

  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000038;
    v38[1] = 0x8000000214790CA0;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v25, v24);

  v30 = *(v19 + 2);
  v31 = *(v19 + 3);

  sub_213FDC6D0(v30, v31);
  *v19 = v28;
  *(v19 + 1) = v23;
  *(v19 + 2) = v27;
  *(v19 + 3) = a5;
  v19[32] = v60;
  v32 = *v20;
  v33 = *(v20 + 1);
  v34 = *(v20 + 2);
  v35 = *(v20 + 3);
  v36 = v20[32];
  *&v54[0] = a6;
  *(&v54[0] + 1) = a7;
  v60 = v36;
  v61 = v36;
  *&v56 = 0xD00000000000003DLL;
  *(&v56 + 1) = 0x8000000214790CE0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  sub_213FDC9D0(v34, v35);
  v37 = v32(v54, &v61, &v56);
  if ((v37 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v45 = 0xD00000000000003DLL;
    v45[1] = 0x8000000214790CE0;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v52, &qword_27C904EC8, "</\r");
    v46 = *(v20 + 2);
    v47 = *(v20 + 3);

    sub_213FDC6D0(v46, v47);
    *v20 = v32;
    *(v20 + 1) = v33;
    *(v20 + 2) = v34;
    *(v20 + 3) = v35;
    v20[32] = v60;
    return sub_21432887C(v49, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
  }

  sub_213FDC6D0(v34, v35);

  sub_213FB2DF4(v52, &qword_27C904EC8, "</\r");
  v42 = v32;
  v43 = *(v20 + 2);
  v44 = *(v20 + 3);

  result = sub_213FDC6D0(v43, v44);
  *v20 = v42;
  *(v20 + 1) = v33;
  *(v20 + 2) = a6;
  *(v20 + 3) = a7;
  v20[32] = v60;
  return result;
}

uint64_t sub_2141FC420()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x646F43726F727265;
  v4 = 0x6D6F44726F727265;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6974617469766E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2141FC4D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214377258(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141FC4F8(uint64_t a1)
{
  v2 = sub_214308FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FC534(uint64_t a1)
{
  v2 = sub_214308FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FC570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  MEMORY[0x28223BE20](v3);
  v5 = &v62 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B18, &qword_2146F5980);
  v76 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  v9 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214308FC4();
  v13 = v77;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  v77 = v5;
  v74 = v11;
  v14 = v76;
  LOBYTE(v81) = 0;
  v15 = v8;
  LODWORD(v73) = sub_2146DA218();
  LOBYTE(v81) = 1;
  sub_214309018();
  v16 = v77;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v79[0]) = 2;
  sub_2142E6128();
  sub_2146DA1C8();
  LODWORD(v72) = v81;
  LODWORD(v71) = BYTE4(v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v79[0]) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v70 = v81;
  LOBYTE(v79[0]) = 4;
  sub_2146DA1C8();
  v69 = v6;
  v68 = *(&v81 + 1);
  v65 = v81;
  v18 = v74;
  sub_213FB2E54(v16, v74 + v9[5], &qword_27C904EC8, "</\r");
  sub_214601E1C(&v81);
  v19 = v82;
  v20 = v83;
  LODWORD(v67) = v84;
  sub_2146020FC(v79);
  v21 = v80;
  *v18 = v73;
  v22 = v18 + v9[6];
  *v22 = v72;
  v22[4] = v71;
  v23 = v18 + v9[7];
  *v23 = v81;
  *(v23 + 2) = v19;
  *(v23 + 3) = v20;
  v23[32] = v67;
  v24 = v18 + v9[8];
  v25 = v79[1];
  *v24 = v79[0];
  *(v24 + 1) = v25;
  v24[32] = v21;
  v27 = *v23;
  v26 = *(v23 + 1);
  v28 = *(v23 + 2);
  v29 = *(v23 + 3);
  v30 = v23[32];
  v79[0] = v70;
  LODWORD(v72) = v30;
  v85 = v30;
  *&v81 = 0xD000000000000038;
  *(&v81 + 1) = 0x8000000214790CA0;
  v66 = 0x8000000214790CA0;
  v82 = 0xD00000000000001CLL;
  v83 = 0x800000021478A360;

  v71 = v28;
  v67 = v29;
  sub_213FDC9D0(v28, v29);
  v31 = v26;
  v73 = v27;
  v32 = v27(v79, &v85, &v81);
  v33 = v66;
  v63 = v24;
  v64 = 0x800000021478A360;
  v34 = *(&v70 + 1);
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000038;
    v46[1] = v33;
    v47 = v64;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = v47;
    swift_willThrow();

    sub_213FB2DF4(v77, &qword_27C904EC8, "</\r");
    (*(v14 + 8))(v15, v69);
    v48 = *(v23 + 2);
    v49 = *(v23 + 3);

    sub_213FDC6D0(v48, v49);
    v50 = v74;
    *v23 = v73;
    *(v23 + 1) = v31;
    v51 = v67;
    *(v23 + 2) = v71;
    *(v23 + 3) = v51;
    v23[32] = v72;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v78);
    return sub_21432887C(v50, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
  }

  sub_213FDC6D0(v71, v67);
  v35 = v64;

  v36 = *(v23 + 2);
  v37 = *(v23 + 3);

  sub_213FDC6D0(v36, v37);
  *v23 = v73;
  *(v23 + 1) = v31;
  *(v23 + 2) = v70;
  *(v23 + 3) = v34;
  v23[32] = v72;
  v38 = v63;
  v40 = *v63;
  v39 = *(v63 + 1);
  v42 = *(v63 + 2);
  v41 = *(v63 + 3);
  v43 = v63[32];
  v44 = v68;
  *&v79[0] = v65;
  *(&v79[0] + 1) = v68;
  LODWORD(v71) = v43;
  v85 = v43;
  *&v81 = 0xD00000000000003DLL;
  *(&v81 + 1) = 0x8000000214790CE0;
  *&v70 = 0x8000000214790CE0;
  v82 = 0xD00000000000001CLL;
  v83 = v35;

  *(&v70 + 1) = v41;
  sub_213FDC9D0(v42, v41);
  v72 = v40;
  v45 = v40(v79, &v85, &v81);
  v73 = 0;
  v52 = v70;
  if ((v45 & 1) == 0)
  {
    v55 = v42;
    sub_214031C4C();
    v56 = swift_allocError();
    *v57 = 0xD00000000000003DLL;
    v57[1] = v52;
    v58 = v64;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = v58;
    v73 = v56;
    swift_willThrow();

    sub_213FB2DF4(v77, &qword_27C904EC8, "</\r");
    (*(v14 + 8))(v15, v69);
    v59 = *(v38 + 2);
    v60 = *(v38 + 3);

    sub_213FDC6D0(v59, v60);
    *v38 = v72;
    *(v38 + 1) = v39;
    v61 = *(&v70 + 1);
    *(v38 + 2) = v55;
    *(v38 + 3) = v61;
    v38[32] = v71;
    v50 = v74;
    goto LABEL_7;
  }

  sub_213FDC6D0(v42, *(&v70 + 1));

  sub_213FB2DF4(v77, &qword_27C904EC8, "</\r");
  (*(v14 + 8))(v15, v69);
  v53 = *(v38 + 2);
  v54 = *(v38 + 3);

  sub_213FDC6D0(v53, v54);
  *v38 = v72;
  *(v38 + 1) = v39;
  *(v38 + 2) = v65;
  *(v38 + 3) = v44;
  v38[32] = v71;
  sub_214328704(v74, v75, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_2141FCE58(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B38, &qword_2146F5988);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308FC4();
  sub_2146DAA28();
  LOBYTE(v17) = 0;
  sub_2146DA3D8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
  LOBYTE(v17) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  sub_2143090CC();
  sub_2146DA388();
  v10 = (v3 + v9[6]);
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 4);
  LODWORD(v17) = v11;
  BYTE4(v17) = v10;
  v19 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  sub_2146DA388();
  v12 = v3 + v9[7];
  v13 = *(v12 + 24);
  if (v13 != 1)
  {
    v17 = *(v12 + 16);
    v18 = v13;
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v14 = v3 + v9[8];
    v15 = *(v14 + 24);
    if (v15 != 1)
    {
      v17 = *(v14 + 16);
      v18 = v15;
      v19 = 4;
      sub_2146DA388();
      return (*(v6 + 8))(v8, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141FD188()
{
  v1 = 0x6974617469766E69;
  if (*v0 != 1)
  {
    v1 = 0x737574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_2141FD1E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214377424(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141FD20C(uint64_t a1)
{
  v2 = sub_214309180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FD248(uint64_t a1)
{
  v2 = sub_214309180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FD284@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B50, &qword_2146F5990);
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v18[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309180();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v6;
    v12 = v20;
    v13 = v21;
    v26 = 0;
    v19 = sub_2146DA218();
    v25 = 1;
    sub_214309018();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v24 = 2;
    sub_2142E6128();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    LODWORD(v13) = v22;
    v15 = v23;
    v16 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0);
    sub_21408AC04(v11, v12 + *(v16 + 20), &qword_27C904EC8, "</\r");
    *v12 = v19;
    v17 = v12 + *(v16 + 24);
    *v17 = v13;
    v17[4] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141FD548(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B60, &qword_2146F5998);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309180();
  sub_2146DAA28();
  v17 = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v9 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0);
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
    sub_2143090CC();
    sub_2146DA388();
    v10 = (v3 + *(v9 + 24));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 4);
    v14 = v11;
    v15 = v10;
    v13[7] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2141FD774@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  sub_213FDCA18(a10, a11);
  sub_21467180C(&v50);
  v15 = v50;
  v14 = v51;
  v16 = v52;
  v17 = v53;
  v18 = v54;
  sub_2146719C4(&v69);
  v48 = v69;
  v80 = v70;
  v49 = v71;
  v38 = v72;
  v42 = v73;
  v43 = a1;
  v37 = BYTE4(a1) & 1;
  v69 = a2;
  v70 = a3;
  v39 = v18;
  v74[0] = v18;
  v50 = 0xD00000000000002DLL;
  v51 = 0x8000000214790D20;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;

  v36 = v16;
  v19 = v16;
  v20 = v17;
  sub_213FDC9D0(v19, v17);
  v21 = v40;
  v41 = v15;
  v22 = v15(&v69, v74, &v50);
  if (v21)
  {

    v23 = a11;
    sub_213FDC6BC(a10, a11);

    v24 = v14;
LABEL_6:

    v29 = v36;
    sub_213FDC6D0(v36, v17);
    v25 = v42;
    v30 = a10;
    v26 = v38;
LABEL_7:
    LODWORD(v50) = v43;
    BYTE4(v50) = v37;
    *(&v50 + 5) = v78;
    HIBYTE(v50) = v79;
    v51 = v41;
    v52 = v24;
    v53 = v29;
    v54 = v20;
    v55 = v39;
    *v56 = v77[0];
    *&v56[3] = *(v77 + 3);
    v57 = a4;
    v58 = a5;
    v59 = v48;
    v60 = v80;
    v61 = v49;
    v62 = v26;
    v63 = v25;
    v64 = a8;
    v66 = v76;
    v65 = v75;
    v67 = v30;
    v68 = v23;
    return sub_21404B8A0(&v50);
  }

  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000002DLL;
    v28[1] = 0x8000000214790D20;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    v23 = a11;
    sub_213FDC6BC(a10, a11);

    v24 = v14;
    goto LABEL_6;
  }

  sub_213FDC6D0(v36, v17);

  v24 = v14;

  sub_213FDC6D0(v36, v17);
  v69 = a6;
  v70 = a7;
  v25 = v42;
  v74[0] = v42;
  v50 = 0xD000000000000033;
  v51 = 0x8000000214790D50;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;

  v26 = v38;
  sub_213FDC9D0(v49, v38);
  v27 = v48(&v69, v74, &v50);
  v23 = a11;
  v30 = a10;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000033;
    v33[1] = 0x8000000214790D50;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a10, a11);

    v20 = a3;

    sub_213FDC6D0(v49, v38);
    v29 = a2;
    goto LABEL_7;
  }

  sub_213FDC6D0(v49, v38);
  sub_213FDC6BC(a10, a11);
  v32 = v80;

  result = sub_213FDC6D0(v49, v38);
  *a9 = v43;
  *(a9 + 4) = v37;
  *(a9 + 8) = v41;
  *(a9 + 16) = v14;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = v39;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = v48;
  *(a9 + 72) = v32;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = v42;
  *(a9 + 97) = a8;
  *(a9 + 104) = a10;
  *(a9 + 112) = a11;
  return result;
}

uint64_t sub_2141FDC6C()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x6552656369766564;
  v4 = 0x7374726F70707573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C646E6168;
  if (v1 != 1)
  {
    v5 = 0x44495344746C61;
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

uint64_t sub_2141FDD3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214377540(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141FDD64(uint64_t a1)
{
  v2 = sub_2143091D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FDDA0(uint64_t a1)
{
  v2 = sub_2143091D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FDDDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B68, &qword_2146F59A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = a1[3];
  v108 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2143091D4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v108);
  }

  v73 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v74) = 0;
  sub_2142E6128();
  sub_2146DA1C8();
  v10 = v83;
  v72 = BYTE4(v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v74) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v70 = v10;
  v71 = *(&v83 + 1);
  v12 = v83;
  LOBYTE(v74) = 2;
  sub_2146DA1C8();
  v69 = v83;
  LOBYTE(v74) = 3;
  sub_2146DA1C8();
  v68 = v12;
  v13 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v74) = 4;
  sub_2142E1378();
  sub_2146DA1C8();
  v14 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v100 = 5;
  sub_2142E1278();
  sub_2146DA1C8();
  v63 = *(&v13 + 1);
  v54 = v13;
  v58 = v14;
  v57 = v101;
  v59 = v102;
  sub_213FDCA18(v101, v102);
  sub_21467180C(&v83);
  v15 = *(&v83 + 1);
  v16 = v84;
  v66 = v85;
  v67 = v83;
  v17 = v86;
  sub_2146719C4(&v74);
  v61 = v74;
  v64 = v75;
  v65 = *(&v74 + 1);
  v62 = v76;
  *&v74 = v68;
  *(&v74 + 1) = v71;
  v56 = v17;
  LOBYTE(v82[0]) = v17;
  *&v83 = 0xD00000000000002DLL;
  *(&v83 + 1) = 0x8000000214790D20;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;

  v55 = v16;
  v18 = v16;
  v19 = v66;
  sub_213FDC9D0(v18, v66);
  v60 = v15;
  v20 = v67(&v74, v82, &v83);
  v52 = 0x8000000214790D20;
  v53 = 0x800000021478A360;
  if (v20)
  {
    v21 = v55;
    sub_213FDC6D0(v55, v19);
    v22 = v53;

    sub_213FDC6D0(v21, v19);
    v82[0] = v54;
    v82[1] = v63;
    LOBYTE(v74) = v62;
    *&v83 = 0xD000000000000033;
    *(&v83 + 1) = 0x8000000214790D50;
    v84 = 0xD00000000000001CLL;
    v85 = v22;

    sub_213FDC9D0(v64, *(&v64 + 1));
    v23 = v61(v82, &v74, &v83);
    v24 = v73;
    if (v23)
    {
      v37 = v64;
      sub_213FDC6D0(v64, *(&v64 + 1));

      v38 = v57;
      sub_213FDC6BC(v57, v59);
      (*(v24 + 8))(v8, v5);
      v39 = v65;

      sub_213FDC6D0(v37, *(&v37 + 1));
      LODWORD(v74) = v70;
      BYTE4(v74) = v72;
      *(&v74 + 5) = v106;
      BYTE7(v74) = v107;
      *(&v74 + 1) = v67;
      *&v75 = v60;
      v40 = v69;
      v41 = v71;
      *(&v75 + 1) = v68;
      *&v76 = v71;
      BYTE8(v76) = v56;
      HIDWORD(v76) = *&v105[3];
      *(&v76 + 9) = *v105;
      v42 = *(&v69 + 1);
      v77 = v69;
      *&v78 = v61;
      *(&v78 + 1) = v39;
      *&v79 = v54;
      *(&v79 + 1) = v63;
      LOBYTE(v80) = v62;
      BYTE1(v80) = v58;
      WORD3(v80) = v104;
      *(&v80 + 2) = v103;
      *(&v80 + 1) = v38;
      v43 = v59;
      v81 = v59;
      v45 = v78;
      v44 = v79;
      v46 = v80;
      *(a2 + 112) = v59;
      *(a2 + 80) = v44;
      *(a2 + 96) = v46;
      v47 = v74;
      v48 = v75;
      v49 = v76;
      *(a2 + 48) = v77;
      *(a2 + 64) = v45;
      *(a2 + 16) = v48;
      *(a2 + 32) = v49;
      *a2 = v47;
      sub_214309228(&v74, &v83);
      __swift_destroy_boxed_opaque_existential_1(v108);
      LODWORD(v83) = v70;
      BYTE4(v83) = v72;
      *(&v83 + 5) = v106;
      BYTE7(v83) = v107;
      *(&v83 + 1) = v67;
      v84 = v60;
      v85 = v68;
      v86 = v41;
      v87 = v56;
      *v88 = *v105;
      *&v88[3] = *&v105[3];
      v89 = v40;
      v90 = v42;
      v91 = v61;
      v92 = v39;
      *&v93 = v54;
      *(&v93 + 1) = v63;
      v94 = v62;
      v95 = v58;
      v97 = v104;
      v96 = v103;
      v98 = v57;
      v99 = v43;
      return sub_21404B8A0(&v83);
    }

    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000033;
    v50[1] = 0x8000000214790D50;
    v51 = v53;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = v51;
    swift_willThrow();

    v30 = v57;
    sub_213FDC6BC(v57, v59);
    (*(v24 + 8))(v8, v5);

    sub_213FDC6D0(v64, *(&v64 + 1));
    v33 = v68;
    v36 = v69;
    v34 = v71;
    v35 = v70;
    v31 = v59;
    v32 = v60;
  }

  else
  {
    v25 = v5;
    sub_214031C4C();
    swift_allocError();
    v27 = v52;
    v26 = v53;
    *v28 = 0xD00000000000002DLL;
    v28[1] = v27;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v26;
    swift_willThrow();

    v29 = v73;
    v30 = v57;
    v31 = v59;
    sub_213FDC6BC(v57, v59);
    (*(v29 + 8))(v8, v25);
    v32 = v60;

    v33 = v55;
    v34 = v66;
    sub_213FDC6D0(v55, v66);
    v35 = v70;
    v36 = v69;
  }

  __swift_destroy_boxed_opaque_existential_1(v108);
  LODWORD(v83) = v35;
  BYTE4(v83) = v72;
  *(&v83 + 5) = v106;
  BYTE7(v83) = v107;
  *(&v83 + 1) = v67;
  v84 = v32;
  v85 = v33;
  v86 = v34;
  v87 = v56;
  *v88 = *v105;
  *&v88[3] = *&v105[3];
  v89 = v36;
  v90 = *(&v69 + 1);
  v91 = v61;
  v92 = v65;
  v93 = v64;
  v94 = v62;
  v95 = v58;
  v97 = v104;
  v96 = v103;
  v98 = v30;
  v99 = v31;
  return sub_21404B8A0(&v83);
}

uint64_t sub_2141FE6FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B78, &unk_2146F59A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = *v1;
  v8 = *(v1 + 4);
  v9 = *(v1 + 4);
  v26 = *(v1 + 3);
  v27 = v9;
  v10 = *(v1 + 6);
  v11 = *(v1 + 7);
  v12 = *(v1 + 10);
  v20 = *(v1 + 11);
  v21 = v12;
  v31 = *(v1 + 97);
  v13 = *(v1 + 14);
  v24 = *(v1 + 13);
  v25 = v10;
  v22 = v13;
  v23 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143091D4();
  sub_2146DAA28();
  LODWORD(v29) = v7;
  BYTE4(v29) = v8;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  v14 = v28;
  sub_2146DA388();
  if (v14)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = v25;
  v16 = v24;
  if (v27 != 1)
  {
    v29 = v26;
    v30 = v27;
    v32 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v29 = v15;
    v30 = v23;
    v32 = 2;
    sub_2146DA388();
    if (v20 != 1)
    {
      v29 = v21;
      v30 = v20;
      v32 = 3;
      sub_2146DA388();
      v17 = v22;
      LOBYTE(v29) = v31;
      v32 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
      sub_2142E1D30();
      sub_2146DA388();
      v29 = v16;
      v30 = v17;
      v32 = 5;
      sub_213FDCA18(v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v29, v30);
      return (*(v4 + 8))(v6, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141FEAAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F0, &qword_2146EAA40);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  v18[2] = sub_213FB7994;
  v18[3] = 0;
  v18[4] = 10;
  v18[5] = sub_21403C354;
  v18[6] = 0;
  *(v17 + 16) = sub_214309284;
  *(v17 + 24) = v18;
  *(inited + 32) = v17;
  v27 = a1;
  sub_21402D9F8(a1, a2);
  sub_21402D9F8(a3, a4);
  sub_21402D9F8(a5, a6);
  sub_214044818(inited, &v30);
  v20 = v30;
  v19 = v31;
  v21 = v32;
  v42 = a8;
  v26 = v33;
  v41 = v33;
  v30 = 0xD000000000000023;
  v31 = 0x8000000214790D90;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v22 = v20(&v42, &v41, &v30);
  if (!v28)
  {
    if (v22)
    {

      sub_213FB54FC(a5, a6);
      sub_213FB54FC(a3, a4);
      sub_213FB54FC(v27, a2);

      *a9 = v27;
      *(a9 + 8) = a2;
      *(a9 + 16) = a3;
      *(a9 + 24) = a4;
      *(a9 + 32) = a5;
      *(a9 + 40) = a6;
      *(a9 + 48) = a7;
      *(a9 + 56) = v20;
      *(a9 + 64) = v19;
      *(a9 + 72) = a8;
      *(a9 + 80) = v26;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000023;
    v24[1] = 0x8000000214790D90;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB54FC(a5, a6);
  sub_213FB54FC(a3, a4);
  sub_213FB54FC(v27, a2);

  v30 = v27;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = v20;
  v38 = v19;
  v39 = v21;
  v40 = v26;
  return sub_2143092A4(&v30);
}

uint64_t sub_2141FEDE8()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x727574616E676973;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74736566696E616DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2141FEEA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437774C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141FEED0(uint64_t a1)
{
  v2 = sub_2143092F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FEF0C(uint64_t a1)
{
  v2 = sub_2143092F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FEF48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B80, &qword_2146F59B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143092F8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v60 = a2;
  LOBYTE(v61) = 0;
  sub_21406116C();
  sub_2146DA1C8();
  v10 = v67;
  v9 = v68;
  LOBYTE(v61) = 1;
  sub_2146DA1C8();
  v58 = v10;
  v59 = v9;
  v12 = v67;
  v11 = v68;
  LOBYTE(v61) = 2;
  sub_2146DA1C8();
  v56 = v12;
  v57 = v11;
  v14 = v67;
  v15 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
  LOBYTE(v61) = 3;
  sub_2142FFE4C(&qword_27C908A50, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_2146DA1C8();
  v55 = v14;
  v54 = v15;
  v16 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B90, &qword_2146F59C0);
  v79 = 4;
  sub_21430934C();
  sub_2146DA1C8();
  v17 = v57;
  v18 = v58;
  v51 = v16;
  v53 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = v18;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F0, &qword_2146EAA40);
  v21 = v17;
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  v23[2] = sub_213FB7994;
  v23[3] = 0;
  v23[4] = 10;
  v23[5] = sub_21403C354;
  v23[6] = 0;
  *(v22 + 16) = sub_21438F51C;
  *(v22 + 24) = v23;
  *(inited + 32) = v22;
  sub_21402D9F8(v19, v59);
  sub_21402D9F8(v56, v21);
  sub_21402D9F8(v55, v54);
  sub_214044818(inited, &v67);
  v25 = v67;
  v24 = v68;
  v26 = v69;
  v78 = v53;
  v48 = v70;
  LOBYTE(v61) = v70;
  v67 = 0xD000000000000023;
  v68 = 0x8000000214790D90;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;
  v52 = v26;

  v49 = v24;
  v50 = v25;
  v27 = v25(&v78, &v61, &v67);
  v28 = v54;
  if (v27)
  {

    sub_213FB54FC(v55, v28);
    v29 = v56;
    sub_213FB54FC(v56, v57);
    v30 = v58;
    v31 = v59;
    sub_213FB54FC(v58, v59);
    (*(v6 + 8))(v8, v5);

    v32 = v49;

    *&v61 = v30;
    *(&v61 + 1) = v31;
    v62 = __PAIR128__(v57, v29);
    v33 = v57;
    *&v63 = v55;
    *(&v63 + 1) = v28;
    v34 = v51;
    *&v64 = v51;
    v35 = v50;
    *(&v64 + 1) = v50;
    v36 = v53;
    *&v65 = v32;
    *(&v65 + 1) = v53;
    LOBYTE(v30) = v48;
    v66 = v48;
    v37 = v60;
    *(v60 + 80) = v48;
    v38 = v64;
    v37[2] = v63;
    v37[3] = v38;
    v37[4] = v65;
    v39 = v62;
    *v37 = v61;
    v37[1] = v39;
    sub_21430942C(&v61, &v67);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v67 = v58;
    v68 = v59;
    v69 = v56;
    v70 = v33;
    v71 = v55;
    v72 = v28;
    v73 = v34;
    v74 = v35;
    v75 = v32;
    v76 = v36;
    v77 = v30;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000023;
    v40[1] = 0x8000000214790D90;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(v55, v28);
    v41 = v58;
    v42 = v56;
    v43 = v57;
    sub_213FB54FC(v56, v57);
    v44 = v59;
    sub_213FB54FC(v41, v59);
    (*(v6 + 8))(v8, v5);
    v45 = v52;

    v46 = v49;

    __swift_destroy_boxed_opaque_existential_1(a1);
    v67 = v41;
    v68 = v44;
    v69 = v42;
    v70 = v43;
    v71 = v55;
    v72 = v54;
    v73 = v51;
    v74 = v50;
    v75 = v46;
    v76 = v45;
    v77 = v48;
  }

  return sub_2143092A4(&v67);
}

uint64_t sub_2141FF7F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BA8, &qword_2146F59C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v24 = v1[3];
  v25 = v9;
  v10 = v1[4];
  v22 = v1[5];
  v23 = v10;
  v11 = v1[6];
  v20 = v1[9];
  v21 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143092F8();
  sub_2146DAA28();
  v27 = v7;
  v28 = v8;
  v29 = 0;
  v12 = v7;
  v13 = v3;
  sub_21402D9F8(v12, v8);
  sub_214061684();
  v14 = v26;
  sub_2146DA388();
  if (v14)
  {
    sub_213FB54FC(v27, v28);
    return (*(v4 + 8))(v6, v13);
  }

  v16 = v22;
  v15 = v23;
  v17 = v21;
  sub_213FB54FC(v27, v28);
  v27 = v25;
  v28 = v24;
  v29 = 1;
  sub_21402D9F8(v25, v24);
  sub_2146DA388();
  sub_213FB54FC(v27, v28);
  v27 = v15;
  v28 = v16;
  v29 = 2;
  sub_21402D9F8(v15, v16);
  sub_2146DA388();
  sub_213FB54FC(v27, v28);
  v27 = v17;
  v29 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
  sub_2142FFE4C(&qword_27C908A60, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_2146DA388();
  if (v20)
  {
    v27 = v20;
    v29 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B90, &qword_2146F59C0);
    sub_214309488();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v13);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141FFB68@<X0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  LOBYTE(v36) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 256;
  *(v10 + 24) = v36;
  *(v9 + 16) = sub_214309568;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v36);
  v12 = v36;
  v11 = v37;
  v13 = v39;
  v26 = v38;
  v14 = v40;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = sub_21438F460;
  *(v16 + 24) = v17;
  *(v15 + 32) = v16;
  sub_214042CD0(v15, &v49);
  v29 = v50;
  v33 = v51;
  v34 = v49;
  v32 = v52;
  v56 = v53;
  v49 = a2;
  v50 = a3;
  v48 = v14;
  v36 = 0xD000000000000030;
  v37 = 0x8000000214790DC0;
  v38 = 0xD00000000000001CLL;
  v39 = 0x800000021478A360;

  v18 = v12(&v49, &v48, &v36);
  if (v27)
  {
    sub_213FB54FC(a4, a5);
  }

  else
  {
    v28 = a3;
    if (v18)
    {

      v36 = v34;
      v37 = v29;
      v38 = v33;
      v39 = v32;
      LOBYTE(v40) = v56;

      sub_213FDCA18(v33, v32);
      sub_214032024(a4, a5, 2, 0xD000000000000034, 0x8000000214790E00, 0xD00000000000001CLL, 0x800000021478A360);
      sub_213FB54FC(a4, a5);

      v19 = v37;
      v35 = v36;
      v20 = v38;
      v21 = v39;
      v22 = v40;

      result = sub_213FDC6BC(v33, v32);
      *a6 = v55;
      *(a6 + 8) = v12;
      *(a6 + 16) = v11;
      *(a6 + 24) = a2;
      *(a6 + 32) = v28;
      *(a6 + 40) = v14;
      *(a6 + 48) = v35;
      *(a6 + 56) = v19;
      *(a6 + 64) = v20;
      *(a6 + 72) = v21;
      *(a6 + 80) = v22;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000030;
    v24[1] = 0x8000000214790DC0;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(a4, a5);
  }

  LODWORD(v36) = v55;
  v37 = v12;
  v38 = v11;
  v39 = v26;
  v40 = v13;
  v41 = v14;
  *v42 = v54[0];
  *&v42[3] = *(v54 + 3);
  v43 = v34;
  v44 = v29;
  v45 = v33;
  v46 = v32;
  v47 = v56;
  return sub_21404B84C(&v36);
}

unint64_t sub_2141FFFA8()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_214200008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214377920(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214200030(uint64_t a1)
{
  v2 = sub_214309580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420006C(uint64_t a1)
{
  v2 = sub_214309580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142000A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BC0, &qword_2146F59D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214309580();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v10 = v6;
  LOBYTE(v67) = 0;
  v57 = sub_2146DA218();
  LOBYTE(v67) = 1;
  v11 = sub_2146DA168();
  v14 = v13;
  v56 = v11;
  v77 = 2;
  sub_21406116C();
  sub_2146DA1C8();
  v47 = v78;
  v49 = v79;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v51 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  v55 = v14;
  v17 = v16;
  LOBYTE(v67) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 256;
  *(v18 + 24) = v67;
  *(v17 + 16) = sub_21438F688;
  *(v17 + 24) = v18;
  *(inited + 32) = v17;
  sub_214042B80(inited, &v67);
  v19 = v68;
  v50 = v67;
  v44 = v69;
  v53 = v70;
  v54 = v71;
  v20 = swift_initStackObject();
  *(v20 + 16) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v21 + 16) = sub_21438F460;
  *(v21 + 24) = v22;
  *(v20 + 32) = v21;
  sub_214042CD0(v20, &v58);
  v51 = v58;
  v48 = v59;
  v46 = v60;
  *&v58 = v56;
  *(&v58 + 1) = v55;
  LOBYTE(v64) = v54;
  v67 = 0xD000000000000030;
  v68 = 0x8000000214790DC0;
  v45 = 0x8000000214790DC0;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;

  v52 = v19;
  v23 = v50;
  v24 = v50(&v58, &v64, &v67);
  v25 = v23;
  v26 = v45;
  v27 = v47;
  if (v24)
  {
    v44 = 0;

    v64 = v51;
    v28 = v48;
    v65 = v48;
    v66 = v46;
    v53 = *(&v51 + 1);

    sub_213FDCA18(v28, *(&v28 + 1));
    *&v51 = "essionIdentifier";
    v29 = v44;
    sub_214032024(v27, v49, 2, 0xD000000000000034, 0x8000000214790E00, 0xD00000000000001CLL, 0x800000021478A360);
    if (!v29)
    {

      sub_213FB54FC(v47, v49);
      (*(v10 + 8))(v8, v5);
      v37 = v64;
      *&v51 = v64;
      v38 = v65;
      LODWORD(v49) = v66;

      sub_213FDC6BC(v48, *(&v48 + 1));
      v39 = v57;
      LODWORD(v58) = v57;
      v40 = v50;
      *(&v58 + 1) = v50;
      *&v59 = v52;
      *(&v59 + 1) = v56;
      *&v60 = v55;
      BYTE8(v60) = v54;
      v61 = v37;
      v62 = v38;
      v41 = v49;
      v63 = v49;
      *(a2 + 80) = v49;
      v42 = v61;
      *(a2 + 32) = v60;
      *(a2 + 48) = v42;
      *(a2 + 64) = v62;
      v43 = v59;
      *a2 = v58;
      *(a2 + 16) = v43;
      sub_2143095F0(&v58, &v67);
      __swift_destroy_boxed_opaque_existential_1(v81);
      LODWORD(v67) = v39;
      v68 = v40;
      v69 = v52;
      v70 = v56;
      v71 = v55;
      v72 = v54;
      *v73 = v80[0];
      *&v73[3] = *(v80 + 3);
      *&v74 = v51;
      *(&v74 + 1) = *(&v37 + 1);
      v75 = v38;
      v76 = v41;
      return sub_21404B84C(&v67);
    }

    sub_213FB54FC(v47, v49);
    (*(v10 + 8))(v8, v5);
    v51 = v64;
    v30 = *(&v65 + 1);
    v31 = v65;
    v32 = v66;

    sub_213FDC6BC(v48, *(&v48 + 1));
    v34 = v55;
    v33 = v56;
    v25 = v50;
    v35 = v52;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000030;
    v36[1] = v26;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(v27, v49);
    (*(v10 + 8))(v8, v5);
    v34 = v53;

    v35 = v52;

    v33 = v44;
    v30 = *(&v48 + 1);
    v31 = v48;
    v32 = v46;
  }

  __swift_destroy_boxed_opaque_existential_1(v81);
  LODWORD(v67) = v57;
  v68 = v25;
  v69 = v35;
  v70 = v33;
  v71 = v34;
  v72 = v54;
  *v73 = v80[0];
  *&v73[3] = *(v80 + 3);
  v74 = v51;
  *&v75 = v31;
  *(&v75 + 1) = v30;
  v76 = v32;
  return sub_21404B84C(&v67);
}

uint64_t sub_2142007A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BD0, &qword_2146F59D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[9];
  v15 = v1[8];
  v16 = v7;
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309580();
  sub_2146DAA28();
  LOBYTE(v18) = 0;
  v10 = v17;
  sub_2146DA3D8();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v15;
  v13 = v14;
  if (!v8 || (LOBYTE(v18) = 1, , sub_2146DA328(), , v13 >> 60 == 15))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = v12;
    v19 = v13;
    v20 = 2;
    sub_21402D9F8(v12, v13);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v18, v19);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_214200A54@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 5) = a3;
  return result;
}

unint64_t sub_214200A64()
{
  v1 = 0x7265747369676572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_214200AD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214377A44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214200AF8(uint64_t a1)
{
  v2 = sub_21430964C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214200B34(uint64_t a1)
{
  v2 = sub_21430964C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214200B70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BD8, &qword_2146F59E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430964C();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    v14 = sub_2146DA218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v17 = 1;
    sub_2142E1378();
    sub_2146DA1C8();
    v13 = v18;
    v15 = 2;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v16;
    v11 = v13;
    *a2 = v14;
    *(a2 + 4) = v11;
    *(a2 + 5) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214200D8C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BE8, &qword_2146F59E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 4);
  v12 = *(v1 + 5);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430964C();
  sub_2146DAA28();
  v18 = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v9 = v12;
    v17 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    v15 = v9;
    v14 = 2;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_214200F98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = a2;
  *(a3 + 8) = BYTE4(a2) & 1;
  return result;
}

uint64_t sub_214200FA8()
{
  if (*v0)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_214200FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2142010B8(uint64_t a1)
{
  v2 = sub_2143096A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142010F4(uint64_t a1)
{
  v2 = sub_2143096A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214201130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BF0, &qword_2146F59F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143096A0();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_2146DA218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v16 = 1;
    sub_2142E6128();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    v11 = v15;
    *a2 = v9;
    *(a2 + 4) = v10;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214201304(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C00, &qword_2146F59F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v1 + 4);
  v11 = *(v1 + 8);
  v12 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143096A0();
  sub_2146DAA28();
  v16 = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v13 = v12;
    v14 = v11;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142014D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v36 = a8;
  v35 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v16);
  v18 = (&v34 - v17);
  sub_2144731C4(a9);
  v19 = type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
  v20 = &a9[v19[5]];
  *v20 = a2;
  *(v20 + 1) = a3;
  v21 = &a9[v19[6]];
  *v21 = a4;
  *(v21 + 1) = a5;
  *&a9[v19[7]] = a6;
  v22 = &a9[v19[8]];
  v23 = v36;
  *v22 = v35;
  v22[1] = v23;
  sub_213FB2E54(a9, v18, &unk_27C9131D0, &qword_2146EAA70);
  v24 = *v18;
  v39 = *(v18 + *(v16 + 32));
  v38[0] = 0xD000000000000032;
  v38[1] = 0x8000000214790E40;
  v38[2] = 0xD00000000000001CLL;
  v38[3] = 0x800000021478A360;
  v25 = v37;
  v26 = v24(a1, &v39, v38);
  if (v25)
  {
    v27 = sub_2146D8958();
    (*(*(v27 - 8) + 8))(a1, v27);
  }

  else
  {
    if (v26)
    {

      v28 = *(v16 + 28);
      sub_213FB2DF4(v18 + v28, &unk_27C9131A0, &unk_2146E9D10);
      v29 = sub_2146D8958();
      v30 = *(v29 - 8);
      (*(v30 + 32))(v18 + v28, a1, v29);
      (*(v30 + 56))(v18 + v28, 0, 1, v29);
      return sub_21402EDB8(v18, a9, &unk_27C9131D0, &qword_2146EAA70);
    }

    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000032;
    v32[1] = 0x8000000214790E40;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();
    v33 = sub_2146D8958();
    (*(*(v33 - 8) + 8))(a1, v33);
  }

  sub_21402EDB8(v18, a9, &unk_27C9131D0, &qword_2146EAA70);
  return sub_21432887C(a9, type metadata accessor for FileTransferAttribute.AttachmentInfo);
}

uint64_t sub_21420180C(uint64_t a1)
{
  v2 = sub_2143096F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214201848(uint64_t a1)
{
  v2 = sub_2143096F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214201884@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v51);
  v50 = (&v42 - v3);
  v4 = sub_2146D8958();
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C08, &qword_2146F5A00);
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2143096F4();
  v14 = v54;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v48 = v10;
  v54 = v12;
  v16 = v52;
  v15 = v53;
  LOBYTE(v56[0]) = 0;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_2146DA1C8();
  v17 = v6;
  LOBYTE(v56[0]) = 1;
  v18 = sub_2146DA168();
  v20 = v19;
  v46 = v18;
  v47 = v17;
  LOBYTE(v56[0]) = 2;
  v21 = v15;
  v45 = sub_2146DA168();
  v23 = v22;
  LOBYTE(v56[0]) = 3;
  v44 = sub_2146DA1B8();
  LOBYTE(v56[0]) = 4;
  v25 = sub_2146DA168();
  v42 = v7;
  v43 = v4;
  v26 = v54;
  v28 = v27;
  sub_2144731C4(v54);
  v29 = v48;
  v30 = &v26[v48[5]];
  v31 = v45;
  *v30 = v46;
  *(v30 + 1) = v20;
  v32 = &v26[v29[6]];
  *v32 = v31;
  *(v32 + 1) = v23;
  *&v26[v29[7]] = v44;
  v33 = &v26[v29[8]];
  *v33 = v25;
  v33[1] = v28;
  v34 = v50;
  sub_213FB2E54(v26, v50, &unk_27C9131D0, &qword_2146EAA70);
  v35 = *v34;
  v57 = *(v34 + *(v51 + 32));
  v56[0] = 0xD000000000000032;
  v56[1] = 0x8000000214790E40;
  v56[2] = 0xD00000000000001CLL;
  v56[3] = 0x800000021478A360;
  v36 = v35(v47, &v57, v56);
  if (v36)
  {

    (*(v16 + 8))(v9, v42);
    v37 = *(v51 + 28);
    sub_213FB2DF4(v34 + v37, &unk_27C9131A0, &unk_2146E9D10);
    v38 = v43;
    (*(v21 + 32))(v34 + v37, v47, v43);
    (*(v21 + 56))(v34 + v37, 0, 1, v38);
    v39 = v54;
    sub_21402EDB8(v34, v54, &unk_27C9131D0, &qword_2146EAA70);
    sub_214328704(v39, v49, type metadata accessor for FileTransferAttribute.AttachmentInfo);
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  sub_214031C4C();
  swift_allocError();
  *v40 = 0xD000000000000032;
  v40[1] = 0x8000000214790E40;
  v40[2] = 0xD00000000000001CLL;
  v40[3] = 0x800000021478A360;
  swift_willThrow();
  (*(v21 + 8))(v47, v43);
  (*(v16 + 8))(v9, v42);
  v41 = v54;
  sub_21402EDB8(v34, v54, &unk_27C9131D0, &qword_2146EAA70);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_21432887C(v41, type metadata accessor for FileTransferAttribute.AttachmentInfo);
}

uint64_t sub_214201EE8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C10, &qword_2146F5A08);
  v19 = *(v11 - 8);
  v20 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143096F4();
  sub_2146DAA28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v2 + *(v14 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_213FB2DF4(v6, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v25 = 0;
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    v15 = v20;
    v16 = v18[1];
    sub_2146DA388();
    if (v16)
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
      v24 = 1;
      sub_2146DA328();
      v23 = 2;
      sub_2146DA328();
      v22 = 3;
      sub_2146DA378();
      v21 = 4;
      sub_2146DA328();
    }

    return (*(v19 + 8))(v13, v15);
  }

  return result;
}

uint64_t sub_214202350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2142023D8(uint64_t a1)
{
  v2 = sub_214309748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214202414(uint64_t a1)
{
  v2 = sub_214309748();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214202450@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C18, &qword_2146F5A10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309748();
  sub_2146DAA08();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    sub_214328930(&qword_280B30B88, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142025F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C28, &qword_2146F5A18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309748();
  sub_2146DAA28();
  v10[0] = v7;
  v10[1] = v8;
  type metadata accessor for CGSize(0);
  sub_214328930(&qword_280B2E368, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
  sub_2146DA388();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2142027B0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  return result;
}

unint64_t sub_214202804()
{
  v1 = *v0;
  v2 = 0x6C6578695078616DLL;
  v3 = 0x656C616373;
  if (v1 != 3)
  {
    v3 = 0x656B636974537369;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2142028AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214377D3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142028D4(uint64_t a1)
{
  v2 = sub_21430979C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214202910(uint64_t a1)
{
  v2 = sub_21430979C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420294C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C30, &qword_2146F5A20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430979C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    v27 = 0;
    sub_2142E35EC();
    sub_2146DA1C8();
    v21 = v25;
    v28 = v26;
    v27 = 1;
    sub_2146DA1C8();
    v20 = v25;
    v19 = v26;
    v27 = 2;
    sub_2146DA1C8();
    v17 = v25;
    v18 = v26;
    v27 = 3;
    sub_2146DA1C8();
    v10 = v18;
    v16 = v25;
    v11 = v26;
    LOBYTE(v25) = 4;
    v12 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    v13 = v28;
    v27 = v28;
    v14 = v19;
    v24 = v19;
    v23 = v10;
    v22 = v11;
    *a2 = v21;
    *(a2 + 8) = v13;
    *(a2 + 16) = v20;
    *(a2 + 24) = v14;
    v15 = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v10;
    *(a2 + 48) = v15;
    *(a2 + 56) = v11;
    *(a2 + 57) = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214202C40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C38, &qword_2146F5A28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = v1[2];
  v24 = *(v1 + 24);
  v19 = v1[4];
  v20 = v9;
  v18 = *(v1 + 40);
  v17 = v1[6];
  LODWORD(v9) = *(v1 + 56);
  v15 = *(v1 + 57);
  v16 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430979C();
  sub_2146DAA28();
  v22 = v7;
  v23 = v8;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  v10 = v21;
  sub_2146DA388();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = v18;
  v12 = v19;
  v13 = v17;
  v22 = v20;
  v23 = v24;
  v25 = 1;
  sub_2146DA388();
  v22 = v12;
  v23 = v11;
  v25 = 2;
  sub_2146DA388();
  v22 = v13;
  v23 = v16;
  v25 = 3;
  sub_2146DA388();
  LOBYTE(v22) = 4;
  sub_2146DA338();
  return (*(v4 + 8))(v6, v3);
}

BlastDoor::BasicTapBack::MessageSummaryInfo __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BasicTapBack.MessageSummaryInfo.init(with:summary:)(BlastDoor::BasicTapBack::MessageSummaryInfo::AssociatedMessageMessageSummaryInfoTypeContentType with, Swift::String_optional summary)
{
  *v2 = *with;
  *(v2 + 8) = summary;
  result.summary = summary;
  result.contentType = with;
  return result;
}

uint64_t sub_214202F10()
{
  if (*v0)
  {
    return 0x7972616D6D7573;
  }

  else
  {
    return 0x54746E65746E6F63;
  }
}

uint64_t sub_214202F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_214203034(uint64_t a1)
{
  v2 = sub_2143097F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214203070(uint64_t a1)
{
  v2 = sub_2143097F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BasicTapBack.MessageSummaryInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C40, &qword_2146F5A30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143097F0();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = 0;
    sub_214309844();
    sub_2146DA1C8();
    v9 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v13 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BasicTapBack.MessageSummaryInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C58, &qword_2146F5A38);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11 = *(v1 + 2);
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143097F0();
  sub_2146DAA28();
  LOBYTE(v13) = v8;
  v15 = 0;
  sub_214309898();
  sub_2146DA388();
  if (!v2)
  {
    v13 = v12;
    v14 = v11;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21420347C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2140676DC;
  *(v7 + 24) = 0;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v16);
  v9 = v16;
  v8 = v17;
  v10 = v20;
  v15[0] = a1;
  v15[1] = a2;
  v21 = v20;
  v16 = 0xD00000000000003BLL;
  v17 = 0x8000000214790E80;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  v11 = v9(v15, &v21, &v16);
  if (v3)
  {
  }

  else
  {
    if (v11)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v8;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD00000000000003BLL;
    v13[1] = 0x8000000214790E80;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214203678(uint64_t a1)
{
  v2 = sub_2143098EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142036B4(uint64_t a1)
{
  v2 = sub_2143098EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142036F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C68, &qword_2146F5A40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143098EC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v25 = a2;
  v29 = v9;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2140676DC;
  *(v14 + 24) = 0;
  *(inited + 32) = v14;
  sub_214042B80(inited, &v31);
  v16 = v31;
  v15 = v32;
  v30[0] = v29;
  v30[1] = v12;
  v27 = v34;
  v28 = v12;
  v36 = v35;
  v37 = v35;
  v31 = 0xD00000000000003BLL;
  v32 = 0x8000000214790E80;
  v26 = 0x8000000214790E80;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v17 = v16;
  v18 = v16(v30, &v37, &v31);
  v19 = v36;
  v24 = v17;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    v20 = v25;
    *v25 = v24;
    v20[1] = v15;
    v21 = v28;
    v20[2] = v29;
    v20[3] = v21;
    *(v20 + 32) = v19;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  v22 = v26;
  *v23 = 0xD00000000000003BLL;
  v23[1] = v22;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}