uint64_t sub_214126054@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B38, &qword_2146F46A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142EEEB8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v10 = v6;
  v57 = a2;
  LOBYTE(v65) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v14 = v11;
  LOBYTE(v65) = 1;
  v15 = sub_2146DA168();
  v56 = v16;
  v77 = 2;
  v17 = sub_2146DA168();
  v43 = v15;
  *&v47 = v17;
  *(&v47 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v52 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214059900;
  *(v21 + 24) = 0;
  *(inited + 32) = v21;
  sub_214042B80(inited, &v65);
  v55 = v65;
  v44 = v66;
  v53 = v67;
  v54 = v68;
  v22 = swift_initStackObject();
  *(v22 + 16) = v52;
  v23 = swift_allocObject();
  v48 = v14;
  v24 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = 0xD000000000000017;
  *(v25 + 24) = 0x800000021478DEC0;
  *(v24 + 16) = sub_21438F520;
  *(v24 + 24) = v25;
  *(v22 + 32) = v24;
  sub_214042B80(v22, &v58);
  v49 = v58;
  v51 = *(&v59 + 1);
  v45 = v59;
  *&v52 = *(&v58 + 1);
  v50 = v60;
  *&v58 = v48;
  *(&v58 + 1) = v13;
  LOBYTE(v64[0]) = v54;
  *&v65 = 0xD000000000000016;
  *(&v65 + 1) = 0x800000021478DEE0;
  v66 = 0xD00000000000001CLL;
  v67 = 0x800000021478A360;

  v26 = (v55)(&v58, v64, &v65);
  v46 = v5;
  v27 = v53;
  if (v26)
  {
    v44 = 0;

    v64[0] = v43;
    v64[1] = v56;
    LOBYTE(v58) = v50;
    *&v65 = 0xD000000000000016;
    *(&v65 + 1) = 0x800000021478DF00;
    v66 = 0xD00000000000001CLL;
    v67 = 0x800000021478A360;

    v28 = v44;
    v29 = v49(v64, &v58, &v65);
    if (v28)
    {
    }

    else
    {
      if (v29)
      {

        (*(v10 + 8))(v8, v5);

        v33 = v52;

        v34 = v55;
        v58 = v55;
        v35 = v48;
        *&v59 = v48;
        *(&v59 + 1) = v13;
        v36 = v54;
        LOBYTE(v60) = v54;
        *(&v60 + 1) = v49;
        *&v61 = v33;
        v37 = v56;
        *(&v61 + 1) = v43;
        *&v62 = v56;
        BYTE8(v62) = v50;
        v63 = v47;
        v38 = v61;
        v39 = v57;
        v57[2] = v60;
        v39[3] = v38;
        v40 = v63;
        v39[4] = v62;
        v39[5] = v40;
        v41 = v59;
        *v39 = v58;
        v39[1] = v41;
        sub_2142EEF0C(&v58, &v65);
        __swift_destroy_boxed_opaque_existential_1(v80);
        v65 = v34;
        v66 = v35;
        v67 = v13;
        v68 = v36;
        *v69 = v79[0];
        *&v69[3] = *(v79 + 3);
        v70 = v49;
        v71 = v33;
        v72 = v43;
        v73 = v37;
        goto LABEL_9;
      }

      sub_214031C4C();
      swift_allocError();
      *v42 = 0xD000000000000016;
      v42[1] = 0x800000021478DF00;
      v42[2] = 0xD00000000000001CLL;
      v42[3] = 0x800000021478A360;
      swift_willThrow();
    }

    v32 = v48;
    v31 = *(&v55 + 1);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000016;
    v30[1] = 0x800000021478DEE0;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    v13 = v27;
    v31 = *(&v55 + 1);
    v32 = v44;
  }

  (*(v10 + 8))(v8, v46);

  __swift_destroy_boxed_opaque_existential_1(v80);
  *&v65 = v55;
  *(&v65 + 1) = v31;
  v66 = v32;
  v67 = v13;
  v68 = v54;
  *v69 = v79[0];
  *&v69[3] = *(v79 + 3);
  v70 = v49;
  v71 = v52;
  v72 = v45;
  v73 = v51;
LABEL_9:
  v74 = v50;
  *v75 = *v78;
  *&v75[3] = *&v78[3];
  v76 = v47;
  return sub_2142EEE64(&v65);
}

uint64_t sub_214126748(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B48, &qword_2146F46B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[3];
  v8 = v1[8];
  v12[3] = v1[7];
  v13 = v8;
  v9 = v1[10];
  v12[1] = v1[11];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEEB8();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_6;
  }

  v17 = 0;

  v10 = v14;
  sub_2146DA328();
  if (v10)
  {
    (*(v4 + 8))(v6, v3);
  }

  if (v13)
  {
    v16 = 1;

    sub_2146DA328();

    v15 = 2;
    sub_2146DA328();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141269DC@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, char *a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, unint64_t a7@<X6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, unint64_t a13)
{
  v59 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214059900;
  *(v19 + 24) = 0;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v74);
  v20 = v75;
  v51 = v76;
  v72 = v77;
  v73 = v74;
  v21 = v78;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2146E9BF0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214059900;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, &v107);
  v67 = v107;
  v71 = v108;
  v52 = v109;
  v69 = v110;
  v70 = v111;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2146E9BF0;
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  strcpy((v26 + 16), "fenceTrigger");
  *(v26 + 29) = 0;
  *(v26 + 30) = -5120;
  *(v25 + 16) = sub_21438F520;
  *(v25 + 24) = v26;
  *(v24 + 32) = v25;
  sub_214042B80(v24, v105);
  v62 = v105[0];
  v68 = v105[1];
  v53 = v105[2];
  v66 = v105[3];
  v56 = v106;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146E9BF0;
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = 49;
  *(v29 + 24) = 0xE100000000000000;
  *(v28 + 16) = sub_21438F520;
  *(v28 + 24) = v29;
  *(v27 + 32) = v28;
  sub_214042B80(v27, v103);
  v60 = v103[0];
  v54 = v103[2];
  v63 = v103[3];
  v64 = v103[1];
  v61 = v104;
  v107 = a1;
  v108 = a2;
  v57 = v21;
  LOBYTE(v105[0]) = v21;
  v74 = 0xD000000000000017;
  v75 = 0x800000021478DF20;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v30 = v73(&v107, v105, &v74);
  if (v55)
  {

    v31 = v67;
    v32 = v56;
LABEL_7:
    a2 = v72;

    v37 = v51;
    v38 = v52;
    v34 = v62;
    v39 = v66;
    v40 = v53;
    v33 = v69;
LABEL_8:
    v74 = v73;
    v75 = v20;
    v76 = v37;
    v77 = a2;
    v78 = v57;
    *v79 = v116[0];
    *&v79[3] = *(v116 + 3);
    v80 = v31;
    v81 = v71;
    v82 = v38;
    v83 = v33;
    v84 = v70;
    *v85 = v115[0];
    *&v85[3] = *(v115 + 3);
    v86 = a10;
    v87 = v59;
    *&v88[3] = *(v114 + 3);
    *v88 = v114[0];
    v89 = v34;
    v90 = v68;
    v91 = v40;
    v92 = v39;
    v93 = v32;
    *&v94[3] = *&v113[3];
    *v94 = *v113;
    v95 = v60;
    v96 = v64;
    v97 = v54;
    v98 = v63;
    v99 = v61;
    *&v100[3] = *(v112 + 3);
    *v100 = v112[0];
    v101 = a11;
    v102 = a12;
    return sub_2142EEF68(&v74);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000017;
    v36[1] = 0x800000021478DF20;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    v31 = v67;
    v32 = v56;
    goto LABEL_7;
  }

  v33 = a4;
  v107 = a3;
  v108 = a4;
  LOBYTE(v105[0]) = v70;
  v74 = 0xD000000000000019;
  v75 = 0x800000021478DF40;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v31 = v67;
  if ((v67(&v107, v105, &v74) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000019;
    v42[1] = 0x800000021478DF40;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    v33 = v69;

    v37 = a1;
    v32 = v56;
    v34 = v62;
    v39 = v66;
    v38 = v52;
    v40 = v53;
    goto LABEL_8;
  }

  v107 = a6;
  v108 = a7;
  v32 = v56;
  LOBYTE(v105[0]) = v56;
  v74 = 0xD000000000000017;
  v75 = 0x800000021478DF60;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v34 = v62;
  v35 = v62(&v107, v105, &v74);
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000017;
    v44[1] = 0x800000021478DF60;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    v39 = v66;
    v31 = v67;

    v38 = a3;
    v37 = a1;
    v40 = v53;
    goto LABEL_8;
  }

  v107 = a8;
  v108 = a13;
  LOBYTE(v105[0]) = v61;
  v74 = 0xD000000000000017;
  v75 = 0x800000021478DF80;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v43 = v60(&v107, v105, &v74);
  v31 = v67;
  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000017;
    v46[1] = 0x800000021478DF80;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();

    v40 = a6;
    v38 = a3;
    v39 = a7;
    v37 = a1;
    v34 = v62;
    goto LABEL_8;
  }

  result = swift_bridgeObjectRelease_n();
  *a9 = v73;
  *(a9 + 8) = v20;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v57;
  *(a9 + 33) = v116[0];
  *(a9 + 36) = *(v116 + 3);
  *(a9 + 40) = v67;
  *(a9 + 48) = v71;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v70;
  *(a9 + 73) = v115[0];
  *(a9 + 76) = *(v115 + 3);
  *(a9 + 80) = a10;
  *(a9 + 88) = v59;
  *(a9 + 92) = *(v114 + 3);
  *(a9 + 89) = v114[0];
  *(a9 + 96) = v62;
  *(a9 + 104) = v68;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7;
  *(a9 + 128) = v56;
  *(a9 + 132) = *&v113[3];
  *(a9 + 129) = *v113;
  *(a9 + 136) = v60;
  *(a9 + 144) = v64;
  *(a9 + 152) = a8;
  *(a9 + 160) = a13;
  *(a9 + 168) = v61;
  v45 = v112[0];
  *(a9 + 172) = *(v112 + 3);
  *(a9 + 169) = v45;
  *(a9 + 176) = a11;
  *(a9 + 184) = a12;
  return result;
}

uint64_t sub_2141273A8()
{
  v1 = *v0;
  v2 = 0x444965636E6566;
  v3 = 0x647574697474616CLL;
  if (v1 != 6)
  {
    v3 = 0x64757469676E6F6CLL;
  }

  v4 = 0x65636976726573;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 2)
  {
    v5 = 0x5372656767697274;
  }

  if (*v0)
  {
    v2 = 0x4972656767697274;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2141274B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436538C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141274D8(uint64_t a1)
{
  v2 = sub_2142EEFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214127514(uint64_t a1)
{
  v2 = sub_2142EEFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214127550@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B50, &qword_2146F46B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - v7;
  v9 = a1[3];
  v94 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142EEFBC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  v10 = v6;
  LOBYTE(v107) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v93 = v11;
  LOBYTE(v107) = 1;
  v14 = sub_2146DA168();
  v16 = v15;
  v92 = v14;
  LOBYTE(v107) = 2;
  sub_2146DA188();
  v18 = v17;
  LOBYTE(v95) = 3;
  sub_2142EF010();
  sub_2146DA1C8();
  v19 = v107;
  LOBYTE(v107) = 4;
  *&v91 = sub_2146DA168();
  *(&v91 + 1) = v21;
  LOBYTE(v107) = 5;
  v89 = sub_2146DA168();
  v90 = v22;
  LOBYTE(v107) = 6;
  sub_2146DA188();
  v87 = v19;
  v24 = v23;
  v142 = 7;
  sub_2146DA188();
  v68 = v8;
  v69 = v25;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v26 = swift_allocObject();
  v88 = xmmword_2146E9BF0;
  *(v26 + 16) = xmmword_2146E9BF0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_214059900;
  *(v27 + 24) = 0;
  *(v26 + 32) = v27;
  sub_214042B80(v26, &v107);
  v86 = v108;
  v65 = v109;
  v83 = v110;
  v84 = v107;
  v85 = v111;
  v28 = swift_allocObject();
  *(v28 + 16) = v88;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_214059900;
  *(v29 + 24) = 0;
  *(v28 + 32) = v29;
  sub_214042B80(v28, &v95);
  v80 = *(&v95 + 1);
  v77 = *(&v96 + 1);
  v72 = v96;
  v78 = v95;
  v79 = v97;
  v76 = swift_allocObject();
  *(v76 + 16) = v88;
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  strcpy((v31 + 16), "fenceTrigger");
  *(v31 + 29) = 0;
  *(v31 + 30) = -5120;
  *(v30 + 16) = sub_21438F520;
  *(v30 + 24) = v31;
  v32 = v76;
  *(v76 + 32) = v30;
  sub_214042B80(v32, &v137);
  v73 = v137;
  v66 = v139;
  v75 = v138;
  v76 = v140;
  v74 = v141;
  v33 = swift_allocObject();
  *(v33 + 16) = v88;
  v34 = swift_allocObject();
  v35 = swift_allocObject();
  *(v35 + 16) = 49;
  *(v35 + 24) = 0xE100000000000000;
  *(v34 + 16) = sub_21438F520;
  *(v34 + 24) = v35;
  *(v33 + 32) = v34;
  sub_214042B80(v33, v135);
  v71 = v135[0];
  v67 = v135[2];
  v81 = v135[3];
  v82 = v135[1];
  v70 = v136;
  *&v95 = v93;
  *(&v95 + 1) = v13;
  LOBYTE(v137) = v85;
  v64 = 0xD000000000000017;
  v107 = 0xD000000000000017;
  v108 = 0x800000021478DF20;
  v109 = 0xD00000000000001CLL;
  v110 = 0x800000021478A360;
  *&v88 = 0x800000021478A360;

  v36 = v84(&v95, &v137, &v107);
  v62 = v5;
  v63 = v16;
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = v64;
    v38[1] = 0x800000021478DF20;
    v39 = v88;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = v39;
    swift_willThrow();

    v40 = v62;

    v41 = v83;
    v42 = v86;
    v90 = v86;
    v43 = v66;
    v93 = v65;
    v44 = v77;
    goto LABEL_7;
  }

  v37 = v88;

  *&v95 = v92;
  *(&v95 + 1) = v63;
  LOBYTE(v137) = v79;
  v107 = 0xD000000000000019;
  v108 = 0x800000021478DF40;
  v109 = 0xD00000000000001CLL;
  v110 = v37;

  if ((v78(&v95, &v137, &v107) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000019;
    v46[1] = 0x800000021478DF40;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = v88;
    swift_willThrow();

    v44 = v77;
    v90 = v80;
    v41 = v13;
LABEL_12:
    v42 = v86;
    v40 = v62;
    v43 = v66;
    goto LABEL_7;
  }

  v45 = v88;

  v95 = v91;
  LOBYTE(v137) = v74;
  v107 = v64;
  v108 = 0x800000021478DF60;
  v109 = 0xD00000000000001CLL;
  v110 = v45;

  if ((v73(&v95, &v137, &v107) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = v64;
    v48[1] = 0x800000021478DF60;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = v88;
    swift_willThrow();

    v90 = v75;
    v41 = v13;
    v72 = v92;
    v44 = v63;
    goto LABEL_12;
  }

  v47 = v88;

  v137 = v89;
  v138 = v90;
  LOBYTE(v95) = v70;
  v107 = v64;
  v108 = 0x800000021478DF80;
  v109 = 0xD00000000000001CLL;
  v110 = v47;

  if (v71(&v137, &v95, &v107))
  {

    (*(v10 + 8))(v68, v62);

    v49 = v82;

    *&v95 = v84;
    *(&v95 + 1) = v86;
    v50 = v93;
    *&v96 = v93;
    *(&v96 + 1) = v13;
    LOBYTE(v97) = v85;
    *(&v97 + 1) = v147[0];
    DWORD1(v97) = *(v147 + 3);
    *(&v97 + 1) = v78;
    *&v98 = v80;
    v51 = v63;
    *(&v98 + 1) = v92;
    *&v99 = v63;
    BYTE8(v99) = v79;
    *(&v99 + 9) = *v146;
    HIDWORD(v99) = *&v146[3];
    *&v100 = v18;
    v52 = v87;
    BYTE8(v100) = v87;
    *(&v100 + 9) = *v145;
    HIDWORD(v100) = *&v145[3];
    *&v101 = v73;
    *(&v101 + 1) = v75;
    v102 = v91;
    LOBYTE(v103) = v74;
    *(&v103 + 1) = *v144;
    DWORD1(v103) = *&v144[3];
    *(&v103 + 1) = v71;
    *&v104 = v49;
    *(&v104 + 1) = v89;
    *&v105 = v90;
    LOBYTE(v49) = v70;
    BYTE8(v105) = v70;
    HIDWORD(v105) = *&v143[3];
    *(&v105 + 9) = *v143;
    v53 = v69;
    *&v106 = v24;
    *(&v106 + 1) = v69;
    v54 = v98;
    a2[2] = v97;
    a2[3] = v54;
    v55 = v96;
    *a2 = v95;
    a2[1] = v55;
    v56 = v102;
    a2[6] = v101;
    a2[7] = v56;
    v57 = v100;
    a2[4] = v99;
    a2[5] = v57;
    v58 = v103;
    v59 = v104;
    v60 = v106;
    a2[10] = v105;
    a2[11] = v60;
    a2[8] = v58;
    a2[9] = v59;
    sub_2142EF064(&v95, &v107);
    __swift_destroy_boxed_opaque_existential_1(v94);
    v107 = v84;
    v108 = v86;
    v109 = v50;
    v110 = v13;
    v111 = v85;
    *v112 = v147[0];
    *&v112[3] = *(v147 + 3);
    v113 = v78;
    v114 = v80;
    v115 = v92;
    v116 = v51;
    v117 = v79;
    *v118 = *v146;
    *&v118[3] = *&v146[3];
    v119 = v18;
    v120 = v52;
    *v121 = *v145;
    *&v121[3] = *&v145[3];
    v122 = v73;
    v123 = v75;
    v124 = v91;
    v125 = v74;
    *v126 = *v144;
    *&v126[3] = *&v144[3];
    v127 = v71;
    v128 = v82;
    v129 = v89;
    v130 = v90;
    v131 = v49;
    *&v132[3] = *&v143[3];
    *v132 = *v143;
    v133 = v24;
    v134 = v53;
    return sub_2142EEF68(&v107);
  }

  sub_214031C4C();
  swift_allocError();
  *v61 = v64;
  v61[1] = 0x800000021478DF80;
  v61[2] = 0xD00000000000001CLL;
  v61[3] = v88;
  swift_willThrow();

  v90 = v82;
  v41 = v13;
  v72 = v92;
  v40 = v62;
  v44 = v63;
  v76 = *(&v91 + 1);
  v43 = v91;
  v42 = v86;
LABEL_7:
  (*(v10 + 8))(v68, v40);

  __swift_destroy_boxed_opaque_existential_1(v94);
  v107 = v84;
  v108 = v42;
  v109 = v93;
  v110 = v41;
  v111 = v85;
  *v112 = v147[0];
  *&v112[3] = *(v147 + 3);
  v113 = v78;
  v114 = v80;
  v115 = v72;
  v116 = v44;
  v117 = v79;
  *v118 = *v146;
  *&v118[3] = *&v146[3];
  v119 = v18;
  v120 = v87;
  *&v121[3] = *&v145[3];
  *v121 = *v145;
  v122 = v73;
  v123 = v75;
  *&v124 = v43;
  *(&v124 + 1) = v76;
  v125 = v74;
  *&v126[3] = *&v144[3];
  *v126 = *v144;
  v127 = v71;
  v128 = v82;
  v129 = v67;
  v130 = v81;
  v131 = v70;
  *&v132[3] = *&v143[3];
  *v132 = *v143;
  v133 = v24;
  v134 = v69;
  return sub_2142EEF68(&v107);
}

uint64_t sub_214128374(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B68, &qword_2146F46C0);
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v14 - v4;
  v6 = *(v1 + 24);
  v7 = *(v1 + 64);
  v18 = *(v1 + 56);
  v17 = *(v1 + 88);
  v8 = *(v1 + 120);
  v14[1] = *(v1 + 112);
  v15 = v8;
  v9 = *(v1 + 160);
  v14[0] = *(v1 + 152);
  v16 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEFBC();
  sub_2146DAA28();
  if (!v6)
  {
    goto LABEL_8;
  }

  v29 = 0;

  v10 = v19;
  sub_2146DA328();
  v11 = v3;
  if (v10)
  {
    (*(v20 + 8))(v5, v3);
  }

  if (v7 && (v28 = 1, , sub_2146DA328(), , v27 = 2, sub_2146DA348(), v26 = v17, v25 = 3, sub_2142EF0C0(), sub_2146DA388(), v15) && (v24 = 4, , sub_2146DA328(), v13 = v16, , v13))
  {
    v23 = 5;

    sub_2146DA328();

    v22 = 6;
    sub_2146DA348();
    v21 = 7;
    sub_2146DA348();
    return (*(v20 + 8))(v5, v11);
  }

  else
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214128784@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  strcpy((v10 + 16), "mappingPacket");
  *(v10 + 30) = -4864;
  *(v9 + 16) = sub_21438F520;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v37);
  v11 = v37;
  v12 = v38;
  v13 = v40;
  v27 = v39;
  v14 = v41;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 49;
  *(v17 + 24) = 0xE100000000000000;
  *(v16 + 16) = sub_21438F520;
  *(v16 + 24) = v17;
  *(v15 + 32) = v16;
  sub_214042B80(v15, &v51);
  v34 = v51;
  v36 = v52;
  v26 = v53;
  v57 = v54;
  v35 = v55;
  v51 = a3;
  v52 = a4;
  v30 = v14;
  v50 = v14;
  v37 = 0xD00000000000001FLL;
  v38 = 0x800000021478DFA0;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  v18 = v11(&v51, &v50, &v37);
  if (v31)
  {

    v19 = v27;
  }

  else
  {
    v19 = v27;
    if (v18)
    {

      v51 = a5;
      v52 = a6;
      v50 = v35;
      v37 = 0xD000000000000018;
      v38 = 0x800000021478DFC0;
      v39 = 0xD00000000000001CLL;
      v40 = 0x800000021478A360;

      v20 = v34(&v51, &v50, &v37);
      if (v20)
      {

        result = swift_bridgeObjectRelease_n();
        *a7 = a1;
        *(a7 + 8) = a2;
        *(a7 + 16) = v11;
        *(a7 + 24) = v12;
        *(a7 + 32) = a3;
        *(a7 + 40) = a4;
        *(a7 + 48) = v30;
        *(a7 + 56) = v34;
        *(a7 + 64) = v36;
        *(a7 + 72) = a5;
        *(a7 + 80) = a6;
        *(a7 + 88) = v35;
        return result;
      }

      sub_214031C4C();
      swift_allocError();
      *v23 = 0xD000000000000018;
      v23[1] = 0x800000021478DFC0;
      v23[2] = 0xD00000000000001CLL;
      v23[3] = 0x800000021478A360;
      swift_willThrow();

      v13 = a4;
      v19 = a3;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v21 = 0xD00000000000001FLL;
      v21[1] = 0x800000021478DFA0;
      v21[2] = 0xD00000000000001CLL;
      v21[3] = 0x800000021478A360;
      swift_willThrow();
    }
  }

  v37 = a1;
  v38 = a2;
  v39 = v11;
  v40 = v12;
  v41 = v19;
  v42 = v13;
  v43 = v30;
  *v44 = v56[0];
  *&v44[3] = *(v56 + 3);
  v45 = v34;
  v46 = v36;
  v47 = v26;
  v48 = v57;
  v49 = v35;
  return sub_2142EF114(&v37);
}

uint64_t sub_214128C34()
{
  v1 = 0x5065636976726573;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50676E697070616DLL;
  }
}

uint64_t sub_214128CA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214365634(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214128CD0(uint64_t a1)
{
  v2 = sub_2142EF168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214128D0C(uint64_t a1)
{
  v2 = sub_2142EF168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214128D48@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B78, &qword_2146F46C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v9 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142EF168();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  v10 = v6;
  LOBYTE(v74) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v67 = v11;
  LOBYTE(v74) = 1;
  v14 = sub_2146DA168();
  v16 = v15;
  v66 = v14;
  v86 = 2;
  v52 = sub_2146DA168();
  v58 = v5;
  v59 = v18;
  v57 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v63 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  v64 = v16;
  v21 = v20;
  v22 = swift_allocObject();
  strcpy((v22 + 16), "mappingPacket");
  *(v22 + 30) = -4864;
  *(v21 + 16) = sub_21438F520;
  *(v21 + 24) = v22;
  *(inited + 32) = v21;
  sub_214042B80(inited, &v74);
  v65 = v74;
  v53 = v75;
  v55 = v76;
  v23 = v77;
  v24 = swift_initStackObject();
  *(v24 + 16) = v63;
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = 49;
  *(v26 + 24) = 0xE100000000000000;
  *(v25 + 16) = sub_21438F520;
  *(v25 + 24) = v26;
  *(v24 + 32) = v25;
  sub_214042B80(v24, &v68);
  v60 = v68;
  v62 = *(&v69 + 1);
  v54 = v69;
  *&v63 = *(&v68 + 1);
  v61 = v70;
  *&v68 = v66;
  *(&v68 + 1) = v64;
  v56 = v23;
  LOBYTE(v73[0]) = v23;
  v27 = v55;
  *&v74 = 0xD00000000000001FLL;
  *(&v74 + 1) = 0x800000021478DFA0;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  v28 = (v65)(&v68, v73, &v74);
  v51 = 0x800000021478A360;
  v29 = v27;
  v30 = v59;
  if (v28)
  {
    v31 = v51;
    v53 = 0;

    v73[0] = v52;
    v73[1] = v30;
    LOBYTE(v68) = v61;
    *&v74 = 0xD000000000000018;
    *(&v74 + 1) = 0x800000021478DFC0;
    v75 = 0xD00000000000001CLL;
    v76 = v31;

    v32 = v53;
    v33 = v60(v73, &v68, &v74);
    if (v32)
    {
    }

    else
    {
      if (v33)
      {

        (*(v10 + 8))(v57, v58);

        v40 = v63;

        v42 = v66;
        v41 = v67;
        *&v68 = v67;
        *(&v68 + 1) = v13;
        v43 = v30;
        v44 = *(&v65 + 1);
        v69 = v65;
        v62 = v13;
        v45 = v64;
        *&v70 = v66;
        *(&v70 + 1) = v64;
        v46 = v56;
        LOBYTE(v71) = v56;
        *(&v71 + 1) = v60;
        *&v72[0] = v40;
        *(&v72[0] + 1) = v52;
        *&v72[1] = v43;
        BYTE8(v72[1]) = v61;
        v47 = v71;
        a2[2] = v70;
        a2[3] = v47;
        a2[4] = v72[0];
        *(a2 + 73) = *(v72 + 9);
        v48 = v69;
        *a2 = v68;
        a2[1] = v48;
        sub_2142EF1BC(&v68, &v74);
        __swift_destroy_boxed_opaque_existential_1(v88);
        *&v74 = v41;
        *(&v74 + 1) = v62;
        v75 = v65;
        v76 = v44;
        v77 = v42;
        v78 = v45;
        v79 = v46;
        *v80 = v87[0];
        *&v80[3] = *(v87 + 3);
        v81 = v60;
        v82 = v40;
        v83 = v52;
        v39 = v59;
        goto LABEL_9;
      }

      sub_214031C4C();
      swift_allocError();
      *v49 = 0xD000000000000018;
      v49[1] = 0x800000021478DFC0;
      v50 = v51;
      v49[2] = 0xD00000000000001CLL;
      v49[3] = v50;
      swift_willThrow();
    }

    v36 = v64;
    v37 = *(&v65 + 1);
    v38 = v66;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD00000000000001FLL;
    v34[1] = 0x800000021478DFA0;
    v35 = v51;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = v35;
    swift_willThrow();

    v36 = v29;
    v37 = *(&v65 + 1);
    v38 = v53;
  }

  (*(v10 + 8))(v57, v58);

  __swift_destroy_boxed_opaque_existential_1(v88);
  *&v74 = v67;
  *(&v74 + 1) = v13;
  v75 = v65;
  v76 = v37;
  v77 = v38;
  v78 = v36;
  v79 = v56;
  *v80 = v87[0];
  *&v80[3] = *(v87 + 3);
  v81 = v60;
  v82 = v63;
  v83 = v54;
  v39 = v62;
LABEL_9:
  v84 = v39;
  v85 = v61;
  return sub_2142EF114(&v74);
}

uint64_t sub_214129470(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B88, &qword_2146F46D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = v1[5];
  v15 = v1[4];
  v16 = v7;
  v8 = v1[9];
  v13 = v1[10];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF168();
  sub_2146DAA28();
  v20 = 0;
  v9 = v17;
  sub_2146DA328();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = v13;
  if (v16 && (v19 = 1, , sub_2146DA328(), , v11))
  {
    v18 = 2;

    sub_2146DA328();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214129710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v94 = a8;
  v85 = a7;
  v95 = a6;
  v86 = a5;
  v96 = a4;
  v87 = a3;
  v97 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v90);
  v12 = (&v84 - v11);
  v93 = a1;
  sub_2143287C0(a1, a9, type metadata accessor for CloudKitSharingToken);
  v13 = type metadata accessor for FMFShareInvitation(0);
  v109 = v13[5];
  sub_21463A71C((a9 + v109));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v98 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000024;
  *(v16 + 24) = 0x800000021478AAF0;
  *(v15 + 16) = sub_21438F520;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v105);
  v92 = v106;
  v89 = v107;
  LODWORD(v88) = v108;
  v17 = swift_initStackObject();
  *(v17 + 16) = v98;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = 49;
  *(v19 + 24) = 0xE100000000000000;
  *(v18 + 16) = sub_21438F520;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  sub_214042B80(v17, &v101);
  v21 = v102;
  v20 = v103;
  LOBYTE(a1) = v104;
  v22 = swift_initStackObject();
  *(v22 + 16) = v98;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214059900;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, v99);
  v24 = v100;
  v25 = a9 + v13[6];
  *v25 = v105;
  v26 = v89;
  *(v25 + 16) = v92;
  *(v25 + 24) = v26;
  *(v25 + 32) = v88;
  v27 = a9 + v13[7];
  *v27 = v101;
  *(v27 + 16) = v21;
  *(v27 + 24) = v20;
  v28 = a9;
  v29 = v97;
  *(v27 + 32) = a1;
  v30 = v28 + v13[8];
  v31 = v99[1];
  *v30 = v99[0];
  *(v30 + 16) = v31;
  *(v30 + 32) = v24;
  *&v98 = v28;
  sub_213FB2E54(v28 + v109, v12, &unk_27C9131D0, &qword_2146EAA70);
  v32 = *v12;
  v33 = v90;
  v34 = *(v90 + 32);
  v92 = v12;
  LOBYTE(v101) = *(v12 + v34);
  *&v105 = 0xD000000000000016;
  *(&v105 + 1) = 0x800000021478DFE0;
  v106 = 0xD00000000000001CLL;
  v107 = 0x800000021478A360;
  v35 = v91;
  v36 = v32(v29, &v101, &v105);
  if (v35)
  {

    v37 = sub_2146D8958();
    (*(*(v37 - 8) + 8))(v29, v37);
    sub_21432887C(v93, type metadata accessor for CloudKitSharingToken);

LABEL_6:
    v45 = v98;
    sub_21402EDB8(v92, v98 + v109, &unk_27C9131D0, &qword_2146EAA70);
    return sub_21432887C(v45, type metadata accessor for FMFShareInvitation);
  }

  v89 = v27;
  v88 = v30;
  v91 = 0x800000021478A360;
  if ((v36 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD000000000000016;
    v53[1] = 0x800000021478DFE0;
    v54 = v91;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = v54;
    swift_willThrow();
    v55 = sub_2146D8958();
    (*(*(v55 - 8) + 8))(v97, v55);
    sub_21432887C(v93, type metadata accessor for CloudKitSharingToken);
    goto LABEL_6;
  }

  v38 = v33;
  v39 = v91;

  v40 = *(v38 + 28);
  v41 = v92;
  sub_213FB2DF4(v92 + v40, &unk_27C9131A0, &unk_2146E9D10);
  v42 = sub_2146D8958();
  v43 = *(v42 - 8);
  (*(v43 + 16))(v41 + v40, v97, v42);
  v84 = v43;
  v44 = *(v43 + 56);
  v90 = v42;
  v44(v41 + v40, 0, 1, v42);
  v45 = v98;
  sub_21402EDB8(v41, v98 + v109, &unk_27C9131D0, &qword_2146EAA70);
  v46 = *v25;
  v47 = *(v25 + 8);
  v48 = *(v25 + 24);
  v92 = *(v25 + 16);
  v49 = *(v25 + 32);
  v50 = v87;
  *&v101 = v87;
  *(&v101 + 1) = v96;
  LOBYTE(v99[0]) = v49;
  *&v105 = 0xD000000000000021;
  *(&v105 + 1) = 0x800000021478E000;
  v106 = 0xD00000000000001CLL;
  v107 = v39;
  v51 = v46;

  v52 = v51(&v101, v99, &v105);
  v109 = 0;
  if ((v52 & 1) == 0)
  {
    sub_214031C4C();
    v66 = swift_allocError();
    *v67 = 0xD000000000000021;
    v67[1] = 0x800000021478E000;
    v68 = v91;
    v67[2] = 0xD00000000000001CLL;
    v67[3] = v68;
    v109 = v66;
    swift_willThrow();

    (*(v84 + 8))(v97, v90);
    sub_21432887C(v93, type metadata accessor for CloudKitSharingToken);

    *v25 = v51;
    *(v25 + 8) = v47;
    *(v25 + 16) = v92;
    *(v25 + 24) = v48;
    *(v25 + 32) = v49;
    return sub_21432887C(v45, type metadata accessor for FMFShareInvitation);
  }

  v57 = v91;

  *v25 = v51;
  *(v25 + 8) = v47;
  v58 = v96;
  *(v25 + 16) = v50;
  *(v25 + 24) = v58;
  *(v25 + 32) = v49;
  v59 = v89;
  v61 = *v89;
  v60 = *(v89 + 8);
  v62 = *(v89 + 24);
  v92 = *(v89 + 16);
  v63 = *(v89 + 32);
  *&v101 = v86;
  *(&v101 + 1) = v95;
  LODWORD(v96) = v63;
  LOBYTE(v99[0]) = v63;
  *&v105 = 0xD00000000000001ALL;
  *(&v105 + 1) = 0x800000021478E030;
  v106 = 0xD00000000000001CLL;
  v107 = v57;

  v64 = v109;
  v65 = v61(&v101, v99, &v105);
  v109 = v64;
  if (v64)
  {

LABEL_16:

    (*(v84 + 8))(v97, v90);
    sub_21432887C(v93, type metadata accessor for CloudKitSharingToken);

    *v59 = v61;
    *(v59 + 8) = v60;
    *(v59 + 16) = v92;
    *(v59 + 24) = v62;
    *(v59 + 32) = v96;
    v45 = v98;
    return sub_21432887C(v45, type metadata accessor for FMFShareInvitation);
  }

  if ((v65 & 1) == 0)
  {
    sub_214031C4C();
    v79 = swift_allocError();
    *v80 = 0xD00000000000001ALL;
    v80[1] = 0x800000021478E030;
    v80[2] = 0xD00000000000001CLL;
    v80[3] = v91;
    v109 = v79;
    swift_willThrow();

    goto LABEL_16;
  }

  v69 = v91;

  *v59 = v61;
  *(v59 + 8) = v60;
  v70 = v95;
  *(v59 + 16) = v86;
  *(v59 + 24) = v70;
  *(v59 + 32) = v96;
  v71 = v88;
  v73 = *v88;
  v72 = *(v88 + 8);
  v74 = *(v88 + 24);
  v96 = *(v88 + 16);
  v75 = *(v88 + 32);
  *&v101 = v85;
  *(&v101 + 1) = v94;
  LOBYTE(v99[0]) = v75;
  *&v105 = 0xD00000000000001FLL;
  *(&v105 + 1) = 0x800000021478E050;
  v106 = 0xD00000000000001CLL;
  v107 = v69;

  v76 = v109;
  v77 = v73(&v101, v99, &v105);
  if (v76)
  {

    v45 = v98;
    v78 = v93;
LABEL_20:
    (*(v84 + 8))(v97, v90);
    sub_21432887C(v78, type metadata accessor for CloudKitSharingToken);

    *v71 = v73;
    *(v71 + 8) = v72;
    *(v71 + 16) = v96;
    *(v71 + 24) = v74;
    *(v71 + 32) = v75;
    return sub_21432887C(v45, type metadata accessor for FMFShareInvitation);
  }

  v45 = v98;
  v78 = v93;
  if ((v77 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v82 = 0xD00000000000001FLL;
    v82[1] = 0x800000021478E050;
    v83 = v91;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = v83;
    swift_willThrow();

    goto LABEL_20;
  }

  (*(v84 + 8))(v97, v90);
  sub_21432887C(v78, type metadata accessor for CloudKitSharingToken);

  *v71 = v73;
  *(v71 + 8) = v72;
  v81 = v94;
  *(v71 + 16) = v85;
  *(v71 + 24) = v81;
  *(v71 + 32) = v75;
  return result;
}

uint64_t sub_21412A3A0()
{
  v1 = *v0;
  v2 = 0x6E656B6F74;
  v3 = 0x5065636976726573;
  v4 = 0x6E6F6973726576;
  if (v1 != 3)
  {
    v4 = 0x64726F6365526B63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7107189;
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

uint64_t sub_21412A444@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436575C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21412A46C(uint64_t a1)
{
  v2 = sub_2142EF218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412A4A8(uint64_t a1)
{
  v2 = sub_2142EF218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412A4E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v106);
  v107 = &v91 - v3;
  v109 = sub_2146D8958();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for CloudKitSharingToken(0);
  MEMORY[0x28223BE20](v110);
  v112 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B90, &qword_2146F46D8);
  v111 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v91 - v8;
  v10 = type metadata accessor for FMFShareInvitation(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF218();
  v13 = v123;
  sub_2146DAA08();
  if (v13)
  {
    v14 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  v104 = v5;
  v103 = v12;
  v123 = a1;
  LOBYTE(v119) = 0;
  sub_214328930(&qword_27C9057A0, type metadata accessor for CloudKitSharingToken, a9_29);
  v15 = v112;
  sub_2146DA1C8();
  LOBYTE(v119) = 1;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_2146DA1C8();
  LOBYTE(v119) = 2;
  v102 = sub_2146DA168();
  v110 = v16;
  LOBYTE(v119) = 3;
  v98 = sub_2146DA168();
  v101 = v17;
  LOBYTE(v119) = 4;
  v91 = sub_2146DA168();
  v96 = v19;
  v97 = v7;
  v20 = v103;
  sub_2143287C0(v15, v103, type metadata accessor for CloudKitSharingToken);
  v95 = v10;
  v100 = *(v10 + 20);
  sub_21463A71C(&v100[v20]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v99 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = 0xD000000000000024;
  *(v23 + 24) = 0x800000021478AAF0;
  *(v22 + 16) = sub_21438F520;
  *(v22 + 24) = v23;
  *(inited + 32) = v22;
  sub_214042B80(inited, &v119);
  v24 = v120;
  v94 = v121;
  LODWORD(v93) = v122;
  v25 = swift_initStackObject();
  *(v25 + 16) = v99;
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = 49;
  *(v27 + 24) = 0xE100000000000000;
  *(v26 + 16) = sub_21438F520;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_214042B80(v25, &v115);
  v29 = v116;
  v28 = v117;
  v92 = v118;
  v30 = swift_initStackObject();
  *(v30 + 16) = v99;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_214059900;
  *(v31 + 24) = 0;
  *(v30 + 32) = v31;
  sub_214042B80(v30, v113);
  v32 = v114;
  v33 = v95;
  v34 = v103;
  v35 = v103 + *(v95 + 24);
  *v35 = v119;
  v36 = v94;
  *(v35 + 16) = v24;
  *(v35 + 24) = v36;
  *(v35 + 32) = v93;
  v37 = v34 + *(v33 + 28);
  *v37 = v115;
  *(v37 + 16) = v29;
  *(v37 + 24) = v28;
  *(v37 + 32) = v92;
  v38 = v34 + *(v33 + 32);
  v39 = v113[1];
  *v38 = v113[0];
  *(v38 + 16) = v39;
  *(v38 + 32) = v32;
  *&v99 = 0x800000021478A360;
  v40 = v107;
  sub_213FB2E54(&v100[v34], v107, &unk_27C9131D0, &qword_2146EAA70);
  v41 = *v40;
  LOBYTE(v115) = v40[*(v106 + 32)];
  *&v119 = 0xD000000000000016;
  *(&v119 + 1) = 0x800000021478DFE0;
  v95 = 0x800000021478DFE0;
  v120 = 0xD00000000000001CLL;
  v121 = v99;
  v42 = v41(v104, &v115, &v119);
  v43 = v95;
  v94 = v37;
  v93 = v38;
  v44 = v97;
  if (v42)
  {
    v45 = v99;

    v46 = *(v106 + 28);
    v47 = v107;
    sub_213FB2DF4(&v107[v46], &unk_27C9131A0, &unk_2146E9D10);
    v48 = v108;
    v49 = v109;
    (*(v108 + 16))(v47 + v46, v104, v109);
    (*(v48 + 56))(v47 + v46, 0, 1, v49);
    sub_21402EDB8(v47, &v100[v103], &unk_27C9131D0, &qword_2146EAA70);
    v50 = *v35;
    v51 = *(v35 + 8);
    v52 = *(v35 + 24);
    v100 = *(v35 + 16);
    v107 = v35;
    v53 = *(v35 + 32);
    *&v115 = v102;
    *(&v115 + 1) = v110;
    LODWORD(v106) = v53;
    LOBYTE(v113[0]) = v53;
    *&v119 = 0xD000000000000021;
    *(&v119 + 1) = 0x800000021478E000;
    v120 = 0xD00000000000001CLL;
    v121 = v45;
    v54 = v50;

    v55 = v54(&v115, v113, &v119);
    if (v55)
    {
      v100 = v9;
      v60 = v99;

      v61 = v107;

      *v61 = v54;
      *(v61 + 8) = v51;
      v62 = v110;
      *(v61 + 16) = v102;
      *(v61 + 24) = v62;
      *(v61 + 32) = v106;
      v64 = *v94;
      v63 = *(v94 + 8);
      v65 = *(v94 + 24);
      v107 = *(v94 + 16);
      v66 = *(v94 + 32);
      *&v115 = v98;
      *(&v115 + 1) = v101;
      LODWORD(v110) = v66;
      LOBYTE(v113[0]) = v66;
      *&v119 = 0xD00000000000001ALL;
      *(&v119 + 1) = 0x800000021478E030;
      v120 = 0xD00000000000001CLL;
      v121 = v60;

      v67 = v64(&v115, v113, &v119);
      if (v67)
      {
        v75 = v99;

        v76 = v94;

        *v76 = v64;
        *(v76 + 8) = v63;
        v77 = v101;
        *(v76 + 16) = v98;
        *(v76 + 24) = v77;
        *(v76 + 32) = v110;
        v79 = *v93;
        v78 = *(v93 + 8);
        v81 = *(v93 + 16);
        v80 = *(v93 + 24);
        v82 = *(v93 + 32);
        *&v115 = v91;
        *(&v115 + 1) = v96;
        LOBYTE(v113[0]) = v82;
        *&v119 = 0xD00000000000001FLL;
        *(&v119 + 1) = 0x800000021478E050;
        v120 = 0xD00000000000001CLL;
        v121 = v75;

        v83 = v79(&v115, v113, &v119);
        if (v83)
        {

          (*(v108 + 8))(v104, v109);
          sub_21432887C(v112, type metadata accessor for CloudKitSharingToken);
          (*(v111 + 8))(v100, v97);
          v86 = v93;

          *v86 = v79;
          *(v86 + 8) = v78;
          v87 = v96;
          *(v86 + 16) = v91;
          *(v86 + 24) = v87;
          *(v86 + 32) = v82;
          sub_214328704(v103, v105, type metadata accessor for FMFShareInvitation);
          v14 = v123;
          return __swift_destroy_boxed_opaque_existential_1(v14);
        }

        sub_214031C4C();
        swift_allocError();
        *v88 = 0xD00000000000001FLL;
        v88[1] = 0x800000021478E050;
        v89 = v99;
        v88[2] = 0xD00000000000001CLL;
        v88[3] = v89;
        swift_willThrow();

        (*(v108 + 8))(v104, v109);
        sub_21432887C(v112, type metadata accessor for CloudKitSharingToken);
        (*(v111 + 8))(v100, v97);
        v90 = v93;

        *v90 = v79;
        *(v90 + 8) = v78;
        *(v90 + 16) = v81;
        *(v90 + 24) = v80;
        *(v90 + 32) = v82;
        goto LABEL_13;
      }

      sub_214031C4C();
      swift_allocError();
      *v84 = 0xD00000000000001ALL;
      v84[1] = 0x800000021478E030;
      v85 = v99;
      v84[2] = 0xD00000000000001CLL;
      v84[3] = v85;
      swift_willThrow();

      (*(v108 + 8))(v104, v109);
      sub_21432887C(v112, type metadata accessor for CloudKitSharingToken);
      (*(v111 + 8))(v100, v97);
      v73 = v94;

      *v73 = v64;
      *(v73 + 8) = v63;
      *(v73 + 16) = v107;
      *(v73 + 24) = v65;
      v74 = &v122;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v68 = 0xD000000000000021;
      v68[1] = 0x800000021478E000;
      v69 = v54;
      v70 = v99;
      v68[2] = 0xD00000000000001CLL;
      v68[3] = v70;
      swift_willThrow();

      v71 = v69;

      v72 = v111;

      (*(v48 + 8))(v104, v109);
      sub_21432887C(v112, type metadata accessor for CloudKitSharingToken);
      (*(v72 + 8))(v9, v97);
      v73 = v107;

      *v73 = v71;
      *(v73 + 8) = v51;
      *(v73 + 16) = v100;
      *(v73 + 24) = v52;
      v74 = &v119;
    }

    *(v73 + 32) = *(v74 - 64);
LABEL_13:
    v58 = v123;
    v59 = v103;
    goto LABEL_8;
  }

  sub_214031C4C();
  swift_allocError();
  *v56 = 0xD000000000000016;
  v56[1] = v43;
  v57 = v99;
  v56[2] = 0xD00000000000001CLL;
  v56[3] = v57;
  swift_willThrow();
  (*(v108 + 8))(v104, v109);
  sub_21432887C(v112, type metadata accessor for CloudKitSharingToken);
  (*(v111 + 8))(v9, v44);
  v58 = v123;
  v59 = v103;
  sub_21402EDB8(v107, &v100[v103], &unk_27C9131D0, &qword_2146EAA70);
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v58);
  return sub_21432887C(v59, type metadata accessor for FMFShareInvitation);
}

uint64_t sub_21412B6B4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = &v24 - v5;
  v27 = sub_2146D8958();
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BA0, &qword_2146F46E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF218();
  sub_2146DAA28();
  v34 = 0;
  type metadata accessor for CloudKitSharingToken(0);
  sub_214328930(&qword_27C9057C0, type metadata accessor for CloudKitSharingToken, byte_2146F88F8);
  v12 = v2;
  v13 = v28;
  sub_2146DA388();
  if (v13)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v15 = v7;
  v28 = v9;
  v24 = type metadata accessor for FMFShareInvitation(0);
  v25 = v12;
  v16 = v12 + *(v24 + 20);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v18 = v26;
  sub_213FB2E54(v16 + *(v17 + 28), v26, &unk_27C9131A0, &unk_2146E9D10);
  v19 = v27;
  if ((*(v29 + 48))(v18, 1, v27) == 1)
  {
    sub_213FB2DF4(v18, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    (*(v29 + 32))(v15, v18, v19);
    v33 = 1;
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    v20 = v8;
    sub_2146DA388();
    (*(v29 + 8))(v15, v19);
    v21 = v24;
    v22 = v25;
    if (*(v25 + *(v24 + 24) + 24))
    {
      v32 = 2;

      sub_2146DA328();
      v23 = v28;

      if (*(v22 + *(v21 + 28) + 24))
      {
        v31 = 3;

        sub_2146DA328();

        if (*(v22 + *(v21 + 32) + 24))
        {
          v30 = 4;

          sub_2146DA328();
          (*(v23 + 8))(v11, v20);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412BC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2146D8B08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v33 = a1;
  v10(a4, a1, v8);
  v11 = type metadata accessor for Alignment(0);
  v32 = a2;
  v10(a4 + *(v11 + 20), a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146ED240;
  *(v13 + 16) = sub_21438F468;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_21404328C(inited, &v34);
  v16 = v34;
  v15 = v35;
  v17 = v36;
  v18 = v37;
  v19 = BYTE1(v37);
  v20 = a4 + *(v11 + 24);
  *v20 = v34;
  *(v20 + 8) = v15;
  v29 = v17;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 25) = v19;
  v39 = v18;
  v37 = 0x800000021478A360;
  v38 = a3;
  v31 = v19;
  v40 = v19;
  v34 = 0xD00000000000001BLL;
  v35 = 0x800000021478E070;
  v36 = 0xD00000000000001CLL;

  v21 = v16(&v38, &v40, &v34);
  if (v30)
  {
    v28 = a4;
    v22 = *(v9 + 8);
    v22(v32, v8);
    v22(v33, v8);
  }

  else
  {
    if (v21)
    {

      v23 = *(v9 + 8);
      v23(v32, v8);
      v23(v33, v8);

      *v20 = v16;
      *(v20 + 8) = v15;
      *(v20 + 16) = a3;
      *(v20 + 24) = 0;
      *(v20 + 25) = v31;
      return result;
    }

    v28 = a4;
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD00000000000001BLL;
    v25[1] = 0x800000021478E070;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();
    v26 = *(v9 + 8);
    v26(v32, v8);
    v26(v33, v8);
  }

  v27 = v39;

  *v20 = v16;
  *(v20 + 8) = v15;
  *(v20 + 16) = v29;
  *(v20 + 24) = v27;
  *(v20 + 25) = v31;
  return sub_21432887C(v28, type metadata accessor for Alignment);
}

unint64_t sub_21412BFB0()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574614465736162;
  }
}

uint64_t sub_21412C010@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214365914(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21412C038(uint64_t a1)
{
  v2 = sub_2142EF26C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412C074(uint64_t a1)
{
  v2 = sub_2142EF26C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412C0B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_2146D8B08();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BA8, &qword_2146F46E8);
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = type metadata accessor for Alignment(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142EF26C();
  v16 = v63;
  sub_2146DAA08();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v57 = v14;
  v58 = v6;
  LOBYTE(v65) = 0;
  sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v17 = v61;
  sub_2146DA1C8();
  v18 = v11;
  LOBYTE(v65) = 1;
  v19 = v58;
  sub_2146DA1C8();
  v63 = v8;
  LOBYTE(v65) = 2;
  v21 = sub_2146DA1A8();
  v22 = v60;
  v56 = 0;
  v23 = *(v60 + 16);
  v24 = v57;
  v53 = v21;
  v23(v57, v63, v17);
  v23(&v24[*(v12 + 20)], v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146ED240;
  *(v26 + 16) = sub_21438F468;
  *(v26 + 24) = v27;
  *(inited + 32) = v26;
  sub_21404328C(inited, &v65);
  v29 = v65;
  v28 = v66;
  v30 = v67;
  v31 = v68;
  v32 = BYTE1(v68);
  v33 = *(v12 + 24);
  v34 = v53;
  v35 = &v57[v33];
  *v35 = v65;
  *(v35 + 1) = v28;
  v51 = v30;
  *(v35 + 2) = v30;
  v35[24] = v31;
  v35[25] = v32;
  v70 = v31;
  v68 = 0x800000021478A360;
  v69 = v34;
  v55 = v32;
  v71 = v32;
  v65 = 0xD00000000000001BLL;
  v66 = 0x800000021478E070;
  v52 = 0x800000021478E070;
  v67 = 0xD00000000000001CLL;

  v54 = v28;
  v36 = v56;
  v56 = v29;
  v37 = v29(&v69, &v71, &v65);
  if (!v36)
  {
    v41 = v52;
    if ((v37 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v45 = 0xD00000000000001BLL;
      v45[1] = v41;
      v45[2] = 0xD00000000000001CLL;
      v45[3] = 0x800000021478A360;
      swift_willThrow();
      v46 = *(v60 + 8);
      v46(v58, v17);
      v46(v63, v17);
      (*(v62 + 8))(v18, v9);
      goto LABEL_9;
    }

    v42 = *(v60 + 8);
    v42(v58, v17);
    v42(v63, v17);
    (*(v62 + 8))(v18, v9);

    v43 = v57;
    v44 = v54;
    *v35 = v56;
    *(v35 + 1) = v44;
    *(v35 + 2) = v34;
    v35[24] = 0;
    v35[25] = v55;
    sub_214328704(v43, v59, type metadata accessor for Alignment);
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v38 = v9;
  v39 = v62;
  v40 = *(v22 + 8);
  v40(v58, v17);
  v40(v63, v17);
  (*(v39 + 8))(v18, v38);

LABEL_9:
  v47 = v57;
  v48 = v70;

  v49 = v54;
  *v35 = v56;
  *(v35 + 1) = v49;
  *(v35 + 2) = v51;
  v35[24] = v48;
  v35[25] = v55;
  __swift_destroy_boxed_opaque_existential_1(v64);
  return sub_21432887C(v47, type metadata accessor for Alignment);
}

uint64_t sub_21412C7A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BB8, &qword_2146F46F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF26C();
  sub_2146DAA28();
  v14 = 0;
  sub_2146D8B08();
  sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for Alignment(0);
  v13 = 1;
  sub_2146DA388();
  if ((*(v3 + *(v9 + 24) + 24) & 1) == 0)
  {
    v12 = 2;
    sub_2146DA368();
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412CA20@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001DLL;
  v19 = 0x800000021478E090;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001DLL;
    v15[1] = 0x800000021478E090;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21412CC24(uint64_t a1)
{
  v2 = sub_2142EF2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412CC60(uint64_t a1)
{
  v2 = sub_2142EF2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412CC9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BC0, &qword_2146F46F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF2C0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BD0, &qword_2146F4700);
  LOBYTE(v34) = 0;
  sub_2142EF314();
  sub_2146DA1C8();
  v9 = v29;
  LOBYTE(v34) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v10 = v29;
  LOBYTE(v29) = 2;
  v11 = sub_2146DA1A8();
  v26 = v9;
  v25 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[1] = vdupq_n_s64(1uLL);
  *(v14 + 16) = sub_21438F468;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_21404328C(inited, &v29);
  v17 = v29;
  v16 = v30;
  v34 = v28;
  v24 = BYTE1(v32);
  v33 = BYTE1(v32);
  v29 = 0xD00000000000001DLL;
  v30 = 0x800000021478E090;
  v27 = 0x800000021478E090;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v23 = v17;
  v18 = v17(&v34, &v33, &v29);
  v19 = v26;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v19;
    *(a2 + 8) = v25;
    *(a2 + 16) = v23;
    *(a2 + 24) = v16;
    *(a2 + 32) = v28;
    *(a2 + 40) = 0;
    *(a2 + 41) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v27;
    *v21 = 0xD00000000000001DLL;
    v21[1] = v20;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412D0E8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BF0, &qword_2146F4708);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v14 = *(v1 + 8);
  v13 = v1[4];
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF2C0();
  sub_2146DAA28();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BD0, &qword_2146F4700);
  sub_2142EF41C();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9 = v12;
  v17 = v14;
  v16 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v9 & 1) == 0)
  {
    v15 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412D378(uint64_t a1)
{
  v2 = sub_2142EF524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412D3B4(uint64_t a1)
{
  v2 = sub_2142EF524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412D434(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C20, &qword_2146F4718);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF524();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21412D5C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C20, &qword_2146F4718);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF524();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21412D73C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001ALL;
  v19 = 0x800000021478E0B0;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ALL;
    v15[1] = 0x800000021478E0B0;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21412D940(uint64_t a1)
{
  v2 = sub_2142EF578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412D97C(uint64_t a1)
{
  v2 = sub_2142EF578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412D9B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C28, &unk_2146F4720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF578();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C38, &qword_21476B570);
  LOBYTE(v34) = 0;
  sub_2142EF5CC();
  sub_2146DA1C8();
  v9 = v29;
  LOBYTE(v34) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v10 = v29;
  LOBYTE(v29) = 2;
  v11 = sub_2146DA1A8();
  v26 = v9;
  v25 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[1] = vdupq_n_s64(1uLL);
  *(v14 + 16) = sub_21438F468;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_21404328C(inited, &v29);
  v17 = v29;
  v16 = v30;
  v34 = v28;
  v24 = BYTE1(v32);
  v33 = BYTE1(v32);
  v29 = 0xD00000000000001ALL;
  v30 = 0x800000021478E0B0;
  v27 = 0x800000021478E0B0;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v23 = v17;
  v18 = v17(&v34, &v33, &v29);
  v19 = v26;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v19;
    *(a2 + 8) = v25;
    *(a2 + 16) = v23;
    *(a2 + 24) = v16;
    *(a2 + 32) = v28;
    *(a2 + 40) = 0;
    *(a2 + 41) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v27;
    *v21 = 0xD00000000000001ALL;
    v21[1] = v20;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412DE04(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C50, &qword_2146F4730);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v14 = *(v1 + 8);
  v13 = v1[4];
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF578();
  sub_2146DAA28();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C38, &qword_21476B570);
  sub_2142EF680();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9 = v12;
  v17 = v14;
  v16 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v9 & 1) == 0)
  {
    v15 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412E070(uint64_t a1)
{
  v2 = sub_2142EF734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412E0AC(uint64_t a1)
{
  v2 = sub_2142EF734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412E12C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v21 = a6;
  v24 = sub_2146D8B88();
  v20 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v22 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v16 = v20;
    v15 = v21;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v17 = v23;
    v18 = v24;
    sub_2146DA1C8();
    (*(v22 + 8))(v14, v12);
    (*(v16 + 32))(v15, v17, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412E370(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C78, &qword_2146F4740);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF734();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21412E500(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C78, &qword_2146F4740);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF734();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21412E678@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001ELL;
  v19 = 0x800000021478E0D0;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ELL;
    v15[1] = 0x800000021478E0D0;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21412E87C(uint64_t a1)
{
  v2 = sub_2142EF788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412E8B8(uint64_t a1)
{
  v2 = sub_2142EF788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412E8F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C80, &qword_2146F4748);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF788();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C90, &qword_2146F4750);
  LOBYTE(v34) = 0;
  sub_2142EF7DC();
  sub_2146DA1C8();
  v9 = v29;
  LOBYTE(v34) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v10 = v29;
  LOBYTE(v29) = 2;
  v11 = sub_2146DA1A8();
  v26 = v9;
  v25 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[1] = vdupq_n_s64(1uLL);
  *(v14 + 16) = sub_21438F468;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_21404328C(inited, &v29);
  v17 = v29;
  v16 = v30;
  v34 = v28;
  v24 = BYTE1(v32);
  v33 = BYTE1(v32);
  v29 = 0xD00000000000001ELL;
  v30 = 0x800000021478E0D0;
  v27 = 0x800000021478E0D0;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v23 = v17;
  v18 = v17(&v34, &v33, &v29);
  v19 = v26;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v19;
    *(a2 + 8) = v25;
    *(a2 + 16) = v23;
    *(a2 + 24) = v16;
    *(a2 + 32) = v28;
    *(a2 + 40) = 0;
    *(a2 + 41) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v27;
    *v21 = 0xD00000000000001ELL;
    v21[1] = v20;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412ED40(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CA8, &qword_2146F4758);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v14 = *(v1 + 8);
  v13 = v1[4];
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF788();
  sub_2146DAA28();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C90, &qword_2146F4750);
  sub_2142EF890();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9 = v12;
  v17 = v14;
  v16 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v9 & 1) == 0)
  {
    v15 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412EFAC(uint64_t a1)
{
  v2 = sub_2142EF944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412EFE8(uint64_t a1)
{
  v2 = sub_2142EF944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412F068(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CD0, &qword_2146F4768);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF944();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21412F1F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CD0, &qword_2146F4768);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF944();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21412F370@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD000000000000017;
  v19 = 0x800000021478E0F0;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD000000000000017;
    v15[1] = 0x800000021478E0F0;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21412F574(uint64_t a1)
{
  v2 = sub_2142EF998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412F5B0(uint64_t a1)
{
  v2 = sub_2142EF998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21412F5EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CD8, &unk_2146F4770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF998();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CE8, &unk_21476B7A0);
  LOBYTE(v34) = 0;
  sub_2142EF9EC();
  sub_2146DA1C8();
  v9 = v29;
  LOBYTE(v34) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v10 = v29;
  LOBYTE(v29) = 2;
  v11 = sub_2146DA1A8();
  v26 = v9;
  v25 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[1] = vdupq_n_s64(1uLL);
  *(v14 + 16) = sub_21438F468;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_21404328C(inited, &v29);
  v17 = v29;
  v16 = v30;
  v34 = v28;
  v24 = BYTE1(v32);
  v33 = BYTE1(v32);
  v29 = 0xD000000000000017;
  v30 = 0x800000021478E0F0;
  v27 = 0x800000021478E0F0;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v23 = v17;
  v18 = v17(&v34, &v33, &v29);
  v19 = v26;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v19;
    *(a2 + 8) = v25;
    *(a2 + 16) = v23;
    *(a2 + 24) = v16;
    *(a2 + 32) = v28;
    *(a2 + 40) = 0;
    *(a2 + 41) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v27;
    *v21 = 0xD000000000000017;
    v21[1] = v20;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412FA38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D00, &unk_2146F4780);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v14 = *(v1 + 8);
  v13 = v1[4];
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EF998();
  sub_2146DAA28();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CE8, &unk_21476B7A0);
  sub_2142EFAA0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9 = v12;
  v17 = v14;
  v16 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v9 & 1) == 0)
  {
    v15 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21412FCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, int a11, __int128 a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, char *a17)
{
  *&v104 = a5;
  *(&v104 + 1) = a6;
  v127 = a4;
  v89 = *a17;
  v21 = sub_2146D8B88();
  v101 = *(v21 - 8);
  v22 = *(v101 + 16);
  v103 = a1;
  v22(a9, a1, v21);
  v23 = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  v100 = a2;
  sub_213FB2E54(a2, a9 + v23[5], &unk_27C904F30, &unk_2146EFA20);
  v99 = a3;
  v102 = v21;
  v22(a9 + v23[6], a3, v21);
  sub_213FB2E54(v127, a9 + v23[7], &unk_27C904F30, &unk_2146EFA20);
  sub_214607DEC(&v123);
  v24 = v124;
  v84 = v125;
  v83 = v126;
  sub_214607E20(&v119);
  v81 = v121;
  v82 = v120;
  LOBYTE(a2) = v122;
  sub_214607F44(&v115);
  v86 = v117;
  v87 = v116;
  v85 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146F3C60;
  *(v26 + 16) = sub_21438F468;
  *(v26 + 24) = v27;
  *(inited + 32) = v26;
  sub_21404328C(inited, &v111);
  v28 = v112;
  v29 = v113;
  v80 = v114;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v31 = swift_allocObject();
  v32 = swift_allocObject();
  *(v32 + 16) = 1;
  *(v31 + 16) = sub_21438F758;
  *(v31 + 24) = v32;
  *(v30 + 32) = v31;
  sub_214042B80(v30, v109);
  v33 = v110;
  v34 = a9 + v23[8];
  *v34 = v123;
  *(v34 + 16) = v24;
  *(v34 + 24) = v84;
  *(v34 + 32) = v83;
  v35 = a9 + v23[9];
  *v35 = v119;
  *(v35 + 16) = v82;
  *(v35 + 24) = v81;
  *(v35 + 32) = a2;
  *(a9 + v23[10]) = a10;
  *(a9 + v23[11]) = a11;
  v36 = a9 + v23[12];
  *v36 = v115;
  *(v36 + 16) = v87;
  *(v36 + 24) = v86;
  *(v36 + 32) = v85;
  v37 = a9 + v23[13];
  *v37 = v111;
  *(v37 + 16) = v28;
  *(v37 + 24) = v29;
  *(v37 + 25) = v80;
  v38 = a9 + v23[14];
  v39 = v109[1];
  *v38 = v109[0];
  *(v38 + 16) = v39;
  *(v38 + 32) = v33;
  *(a9 + v23[15]) = a15;
  *(a9 + v23[16]) = a16;
  *(a9 + v23[17]) = v89;
  v41 = *v34;
  v40 = *(v34 + 8);
  v90 = *(v34 + 16);
  v92 = *(v34 + 24);
  v42 = *(v34 + 32);
  v119 = v104;
  v93 = v42;
  LOBYTE(v115) = v42;
  *&v123 = 0xD000000000000022;
  *(&v123 + 1) = 0x800000021478E110;
  v124 = 0xD00000000000001CLL;
  v125 = 0x800000021478A360;

  v43 = v41(&v119, &v115, &v123);
  if (v94)
  {

LABEL_6:

    sub_213FB2DF4(v127, &unk_27C904F30, &unk_2146EFA20);
    v50 = *(v101 + 8);
    v50(v99, v102);
    sub_213FB2DF4(v100, &unk_27C904F30, &unk_2146EFA20);
    v50(v103, v102);

    *v34 = v41;
    *(v34 + 8) = v40;
    *(v34 + 16) = v90;
    *(v34 + 24) = v92;
    *(v34 + 32) = v93;
    return sub_21432887C(a9, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  v88 = v37;
  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD000000000000022;
    v49[1] = 0x800000021478E110;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v91 = v38;

  *v34 = v41;
  *(v34 + 8) = v40;
  *(v34 + 16) = v104;
  *(v34 + 32) = v93;
  v45 = *v35;
  v44 = *(v35 + 8);
  v46 = *(v35 + 24);
  v95 = *(v35 + 16);
  v47 = *(v35 + 32);
  *&v119 = a7;
  *(&v119 + 1) = a8;
  v105 = v47;
  LOBYTE(v115) = v47;
  *&v123 = 0xD00000000000002ALL;
  *(&v123 + 1) = 0x800000021478E140;
  v124 = 0xD00000000000001CLL;
  v125 = 0x800000021478A360;

  v48 = v45(&v119, &v115, &v123);
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD00000000000002ALL;
    v58[1] = 0x800000021478E140;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v127, &unk_27C904F30, &unk_2146EFA20);
    v59 = *(v101 + 8);
    v59(v99, v102);
    sub_213FB2DF4(v100, &unk_27C904F30, &unk_2146EFA20);
    v59(v103, v102);

    *v35 = v45;
    *(v35 + 8) = v44;
    *(v35 + 16) = v95;
    *(v35 + 24) = v46;
    *(v35 + 32) = v105;
    return sub_21432887C(a9, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  *v35 = v45;
  *(v35 + 8) = v44;
  *(v35 + 16) = a7;
  *(v35 + 24) = a8;
  *(v35 + 32) = v105;
  v53 = *v36;
  v52 = *(v36 + 8);
  v55 = *(v36 + 16);
  v54 = *(v36 + 24);
  v56 = *(v36 + 32);
  v119 = a12;
  v106 = v56;
  LOBYTE(v115) = v56;
  *&v123 = 0xD000000000000027;
  *(&v123 + 1) = 0x800000021478E170;
  v124 = 0xD00000000000001CLL;
  v125 = 0x800000021478A360;
  v96 = v54;

  v98 = v53;
  v57 = v53(&v119, &v115, &v123);
  if ((v57 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v65 = 0xD000000000000027;
    v65[1] = 0x800000021478E170;
    v65[2] = 0xD00000000000001CLL;
    v65[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v127, &unk_27C904F30, &unk_2146EFA20);
    v66 = *(v101 + 8);
    v66(v99, v102);
    sub_213FB2DF4(v100, &unk_27C904F30, &unk_2146EFA20);
    v66(v103, v102);

    *v36 = v98;
    *(v36 + 8) = v52;
    *(v36 + 16) = v55;
    *(v36 + 24) = v96;
    *(v36 + 32) = v106;
    return sub_21432887C(a9, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  *v36 = v53;
  *(v36 + 8) = v52;
  *(v36 + 16) = a12;
  *(v36 + 32) = v106;
  v60 = *v37;
  v61 = *(v88 + 8);
  v62 = *(v88 + 16);
  v63 = *(v88 + 25);
  LOBYTE(v115) = *(v88 + 24);
  *&v119 = a13;
  LOBYTE(v109[0]) = v63;
  *&v123 = 0xD000000000000021;
  *(&v123 + 1) = 0x800000021478E1A0;
  v124 = 0xD00000000000001CLL;
  v125 = 0x800000021478A360;

  v64 = v60(&v119, v109, &v123);
  if ((v64 & 1) == 0)
  {
    v108 = v62;

    sub_214031C4C();
    swift_allocError();
    *v73 = 0xD000000000000021;
    v73[1] = 0x800000021478E1A0;
    v73[2] = 0xD00000000000001CLL;
    v73[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v127, &unk_27C904F30, &unk_2146EFA20);
    v74 = *(v101 + 8);
    v74(v99, v102);
    sub_213FB2DF4(v100, &unk_27C904F30, &unk_2146EFA20);
    v74(v103, v102);
    v75 = v115;

    *v88 = v60;
    *(v88 + 8) = v61;
    *(v88 + 16) = v108;
    *(v88 + 24) = v75;
    *(v88 + 25) = v63;
    return sub_21432887C(a9, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  *v88 = v60;
  *(v88 + 8) = v61;
  *(v88 + 16) = a13;
  *(v88 + 24) = 0;
  *(v88 + 25) = v63;
  v68 = *v91;
  v67 = *(v91 + 8);
  v70 = *(v91 + 16);
  v69 = *(v91 + 24);
  v71 = *(v91 + 32);
  v119 = a14;
  v107 = v71;
  LOBYTE(v115) = v71;
  *&v123 = 0xD000000000000022;
  *(&v123 + 1) = 0x800000021478E1D0;
  v124 = 0xD00000000000001CLL;
  v125 = 0x800000021478A360;

  v72 = v68(&v119, &v115, &v123);
  if (v72)
  {

    sub_213FB2DF4(v127, &unk_27C904F30, &unk_2146EFA20);
    v76 = *(v101 + 8);
    v76(v99, v102);
    sub_213FB2DF4(v100, &unk_27C904F30, &unk_2146EFA20);
    v76(v103, v102);

    *v91 = v68;
    *(v91 + 8) = v67;
    *(v91 + 16) = a14;
    *(v91 + 32) = v107;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v77 = 0xD000000000000022;
    v77[1] = 0x800000021478E1D0;
    v77[2] = 0xD00000000000001CLL;
    v77[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v127, &unk_27C904F30, &unk_2146EFA20);
    v78 = *(v101 + 8);
    v78(v99, v102);
    sub_213FB2DF4(v100, &unk_27C904F30, &unk_2146EFA20);
    v78(v103, v102);

    *v91 = v68;
    *(v91 + 8) = v67;
    *(v91 + 16) = v70;
    *(v91 + 24) = v69;
    *(v91 + 32) = v107;
    return sub_21432887C(a9, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  return result;
}

unint64_t sub_214130A5C(char a1)
{
  result = 0x6564496572616873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6C65646F6DLL;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x6449726F646E6576;
      break;
    case 7:
      result = 0x49746375646F7270;
      break;
    case 8:
      result = 0x614E6E6F63616562;
      break;
    case 9:
      result = 1701605234;
      break;
    case 10:
      result = 0x696A6F6D65;
      break;
    case 11:
      result = 0x616B63615079656BLL;
      break;
    case 12:
      result = 0x5064657473757274;
      break;
    case 13:
      result = 0x7079546572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214130C18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214365A38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214130C40(uint64_t a1)
{
  v2 = sub_2142EFB54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214130C7C(uint64_t a1)
{
  v2 = sub_2142EFB54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214130CB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v3 = MEMORY[0x28223BE20](v157);
  v155 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v158 = &v128 - v5;
  v159 = sub_2146D8B88();
  v156 = *(v159 - 8);
  v6 = MEMORY[0x28223BE20](v159);
  v8 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v160 = &v128 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D18, &qword_2146F4790);
  v161 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v128 - v11;
  v13 = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v162 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2142EFB54();
  v17 = v181;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v162);
  }

  v152 = v13;
  v153 = v15;
  v181 = v8;
  LOBYTE(v177) = 0;
  sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v18 = v159;
  v19 = v12;
  sub_2146DA1C8();
  LOBYTE(v177) = 1;
  sub_2142EFBA8();
  sub_2146DA1C8();
  LOBYTE(v177) = 2;
  sub_2146DA1C8();
  LOBYTE(v177) = 3;
  sub_2146DA1C8();
  LOBYTE(v177) = 4;
  v151 = sub_2146DA168();
  v157 = v21;
  LOBYTE(v177) = 5;
  v22 = sub_2146DA168();
  v24 = v23;
  v150 = v22;
  LOBYTE(v177) = 6;
  LODWORD(v149) = sub_2146DA218();
  LOBYTE(v177) = 7;
  v25 = sub_2146DA218();
  LOBYTE(v177) = 8;
  v148 = sub_2146DA168();
  v27 = v26;
  LOBYTE(v177) = 9;
  v147 = v10;
  v28 = v19;
  v146 = sub_2146DA1A8();
  LOBYTE(v177) = 10;
  *&v145 = sub_2146DA168();
  *(&v145 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D28, &qword_2146F4798);
  LOBYTE(v173) = 11;
  sub_2142EFC5C();
  sub_2146DA1C8();
  v144 = v177;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D40, &qword_2146F47A0);
  LOBYTE(v173) = 12;
  sub_2142EFD10();
  sub_2146DA1C8();
  v142 = v177;
  LOBYTE(v173) = 13;
  sub_2142EFDC4();
  sub_2146DA1C8();
  v143 = 0;
  LODWORD(v141) = v177;
  v140 = *(v156 + 16);
  v30 = v153;
  v140(v153, v160, v18);
  v31 = v152;
  sub_213FB2E54(v158, v30 + *(v152 + 20), &unk_27C904F30, &unk_2146EFA20);
  v140((v30 + *(v31 + 24)), v181, v159);
  sub_213FB2E54(v155, v30 + *(v31 + 28), &unk_27C904F30, &unk_2146EFA20);
  sub_214607DEC(&v177);
  v136 = v179;
  v137 = v178;
  v135 = v180;
  sub_214607E20(&v173);
  v133 = v175;
  v134 = v174;
  v132 = v176;
  sub_214607F44(&v169);
  v139 = v171;
  v140 = v170;
  LODWORD(v138) = v172;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v128 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v33 = swift_allocObject();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2146F3C60;
  *(v33 + 16) = sub_21438F468;
  *(v33 + 24) = v34;
  *(inited + 32) = v33;
  sub_21404328C(inited, &v165);
  v131 = v166;
  v129 = v168;
  v130 = v167;
  v35 = swift_initStackObject();
  *(v35 + 16) = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v36 = swift_allocObject();
  v37 = swift_allocObject();
  *(v37 + 16) = 1;
  *(v36 + 16) = sub_21438F758;
  *(v36 + 24) = v37;
  *(v35 + 32) = v36;
  sub_214042B80(v35, v163);
  v38 = v164;
  v39 = v152;
  v40 = v153;
  v41 = &v153[*(v152 + 32)];
  *v41 = v177;
  *(v41 + 2) = v137;
  *(v41 + 3) = v136;
  v41[32] = v135;
  v42 = v40 + v39[9];
  *v42 = v173;
  *(v42 + 16) = v134;
  *(v42 + 24) = v133;
  v137 = v42;
  *(v42 + 32) = v132;
  *(v40 + v39[10]) = v149;
  *(v40 + v39[11]) = v25;
  v43 = v40 + v39[12];
  *v43 = v169;
  *(v43 + 16) = v140;
  *(v43 + 24) = v139;
  v139 = v43;
  *(v43 + 32) = v138;
  v44 = v40 + v39[13];
  *v44 = v165;
  *(v44 + 16) = v131;
  *(v44 + 24) = v130;
  v138 = v44;
  *(v44 + 25) = v129;
  v45 = v40 + v39[14];
  v46 = v163[1];
  *v45 = v163[0];
  *(v45 + 16) = v46;
  v136 = v45;
  *(v45 + 32) = v38;
  *(v40 + v39[15]) = v144;
  *(v40 + v39[16]) = v142;
  *(v40 + v39[17]) = v141;
  v48 = *v41;
  v47 = *(v41 + 1);
  v49 = *(v41 + 3);
  v140 = *(v41 + 2);
  v141 = v49;
  v50 = v41[32];
  *&v173 = v151;
  *(&v173 + 1) = v157;
  LODWORD(v149) = v50;
  LOBYTE(v169) = v50;
  *&v177 = 0xD000000000000022;
  *(&v177 + 1) = 0x800000021478E110;
  v178 = 0xD00000000000001CLL;
  v179 = 0x800000021478A360;
  v152 = 0x800000021478A360;

  v142 = v47;
  v51 = v143;
  v144 = v48;
  v52 = v48(&v173, &v169, &v177);
  v143 = v51;
  if (v51)
  {

LABEL_10:

    sub_213FB2DF4(v155, &unk_27C904F30, &unk_2146EFA20);
    v64 = *(v156 + 8);
    v64(v181, v18);
    sub_213FB2DF4(v158, &unk_27C904F30, &unk_2146EFA20);
    v64(v160, v18);
    (*(v161 + 8))(v28, v147);

    v65 = v142;
    *v41 = v144;
    *(v41 + 1) = v65;
    v66 = v141;
    *(v41 + 2) = v140;
    *(v41 + 3) = v66;
    v41[32] = v149;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v162);
    return sub_21432887C(v153, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  if ((v52 & 1) == 0)
  {
    sub_214031C4C();
    v61 = swift_allocError();
    *v62 = 0xD000000000000022;
    v62[1] = 0x800000021478E110;
    v63 = v152;
    v62[2] = 0xD00000000000001CLL;
    v62[3] = v63;
    v143 = v61;
    swift_willThrow();

    goto LABEL_10;
  }

  v53 = v142;
  *v41 = v144;
  *(v41 + 1) = v53;
  v54 = v157;
  *(v41 + 2) = v151;
  *(v41 + 3) = v54;
  v41[32] = v149;
  v56 = *v137;
  v55 = *(v137 + 8);
  v57 = *(v137 + 24);
  v144 = *(v137 + 16);
  v58 = *(v137 + 32);
  *&v173 = v150;
  *(&v173 + 1) = v24;
  LOBYTE(v169) = v58;
  *&v177 = 0xD00000000000002ALL;
  *(&v177 + 1) = 0x800000021478E140;
  v178 = 0xD00000000000001CLL;
  v179 = v152;
  v149 = v57;

  v151 = v55;
  v59 = v143;
  v157 = v56;
  v60 = v56(&v173, &v169, &v177);
  v143 = v59;
  if (v59)
  {

LABEL_16:

    sub_213FB2DF4(v155, &unk_27C904F30, &unk_2146EFA20);
    v80 = *(v156 + 8);
    v80(v181, v18);
    sub_213FB2DF4(v158, &unk_27C904F30, &unk_2146EFA20);
    v80(v160, v18);
    (*(v161 + 8))(v28, v147);
    v81 = v137;

    v82 = v151;
    *v81 = v157;
    *(v81 + 8) = v82;
    v83 = v149;
    *(v81 + 16) = v144;
    *(v81 + 24) = v83;
    *(v81 + 32) = v58;
    goto LABEL_11;
  }

  if ((v60 & 1) == 0)
  {
    sub_214031C4C();
    v77 = swift_allocError();
    *v78 = 0xD00000000000002ALL;
    v78[1] = 0x800000021478E140;
    v79 = v152;
    v78[2] = 0xD00000000000001CLL;
    v78[3] = v79;
    v143 = v77;
    swift_willThrow();

    goto LABEL_16;
  }

  v67 = v152;

  v68 = v137;

  v69 = v150;
  v70 = v151;
  *v68 = v157;
  *(v68 + 8) = v70;
  *(v68 + 16) = v69;
  *(v68 + 24) = v24;
  *(v68 + 32) = v58;
  v72 = *v139;
  v71 = *(v139 + 8);
  v73 = *(v139 + 24);
  v144 = *(v139 + 16);
  v74 = *(v139 + 32);
  *&v173 = v148;
  *(&v173 + 1) = v27;
  LODWORD(v157) = v74;
  LOBYTE(v169) = v74;
  *&v177 = 0xD000000000000027;
  *(&v177 + 1) = 0x800000021478E170;
  v178 = 0xD00000000000001CLL;
  v179 = v67;
  v149 = v73;

  v150 = v71;
  v151 = v72;
  v75 = v143;
  v76 = v72(&v173, &v169, &v177);
  v143 = v75;
  if (v75)
  {

LABEL_21:

    sub_213FB2DF4(v155, &unk_27C904F30, &unk_2146EFA20);
    v96 = *(v156 + 8);
    v96(v181, v18);
    sub_213FB2DF4(v158, &unk_27C904F30, &unk_2146EFA20);
    v96(v160, v18);
    (*(v161 + 8))(v28, v147);
    v97 = v139;

    v98 = v150;
    *v97 = v151;
    *(v97 + 8) = v98;
    v99 = v149;
    *(v97 + 16) = v144;
    *(v97 + 24) = v99;
    *(v97 + 32) = v157;
    goto LABEL_11;
  }

  if ((v76 & 1) == 0)
  {
    sub_214031C4C();
    v93 = swift_allocError();
    *v94 = 0xD000000000000027;
    v94[1] = 0x800000021478E170;
    v95 = v152;
    v94[2] = 0xD00000000000001CLL;
    v94[3] = v95;
    v143 = v93;
    swift_willThrow();

    goto LABEL_21;
  }

  v84 = v152;

  v85 = v139;

  v86 = v150;
  *v85 = v151;
  *(v85 + 8) = v86;
  *(v85 + 16) = v148;
  *(v85 + 24) = v27;
  *(v85 + 32) = v157;
  v88 = *v138;
  v87 = *(v138 + 8);
  v148 = *(v138 + 16);
  v149 = 0x800000021478E1A0;
  v89 = *(v138 + 25);
  LOBYTE(v169) = *(v138 + 24);
  *&v173 = v146;
  LODWORD(v157) = v89;
  LOBYTE(v163[0]) = v89;
  *&v177 = 0xD000000000000021;
  *(&v177 + 1) = 0x800000021478E1A0;
  v178 = 0xD00000000000001CLL;
  v179 = v84;

  v150 = v87;
  v151 = v88;
  v90 = v143;
  v91 = v88(&v173, v163, &v177);
  v143 = v90;
  if (v90)
  {

    sub_213FB2DF4(v155, &unk_27C904F30, &unk_2146EFA20);
    v92 = *(v156 + 8);
    v92(v181, v18);
    sub_213FB2DF4(v158, &unk_27C904F30, &unk_2146EFA20);
    v92(v160, v18);
    (*(v161 + 8))(v28, v147);

LABEL_26:
    v114 = v169;
    v115 = v138;

    v116 = v150;
    *v115 = v151;
    *(v115 + 8) = v116;
    *(v115 + 16) = v148;
    *(v115 + 24) = v114;
    *(v115 + 25) = v157;
    goto LABEL_11;
  }

  if ((v91 & 1) == 0)
  {

    sub_214031C4C();
    v109 = swift_allocError();
    v110 = v149;
    *v111 = 0xD000000000000021;
    v111[1] = v110;
    v112 = v152;
    v111[2] = 0xD00000000000001CLL;
    v111[3] = v112;
    v143 = v109;
    swift_willThrow();
    sub_213FB2DF4(v155, &unk_27C904F30, &unk_2146EFA20);
    v113 = *(v156 + 8);
    v113(v181, v18);
    sub_213FB2DF4(v158, &unk_27C904F30, &unk_2146EFA20);
    v113(v160, v18);
    (*(v161 + 8))(v28, v147);
    goto LABEL_26;
  }

  v100 = v152;

  v101 = v138;

  v102 = v150;
  *v101 = v151;
  *(v101 + 8) = v102;
  *(v101 + 16) = v146;
  *(v101 + 24) = 0;
  *(v101 + 25) = v157;
  v104 = *v136;
  v103 = *(v136 + 8);
  v105 = *(v136 + 24);
  v149 = *(v136 + 16);
  v150 = v105;
  v106 = *(v136 + 32);
  v173 = v145;
  LOBYTE(v169) = v106;
  *&v177 = 0xD000000000000022;
  *(&v177 + 1) = 0x800000021478E1D0;
  v178 = 0xD00000000000001CLL;
  v179 = v100;

  v151 = v103;
  v107 = v143;
  v157 = v104;
  v108 = v104(&v173, &v169, &v177);
  v143 = v107;
  if (v107)
  {

LABEL_30:

    sub_213FB2DF4(v155, &unk_27C904F30, &unk_2146EFA20);
    v124 = *(v156 + 8);
    v124(v181, v18);
    sub_213FB2DF4(v158, &unk_27C904F30, &unk_2146EFA20);
    v124(v160, v18);
    (*(v161 + 8))(v28, v147);
    v125 = v136;

    v126 = v151;
    *v125 = v157;
    *(v125 + 8) = v126;
    v127 = v150;
    *(v125 + 16) = v149;
    *(v125 + 24) = v127;
    *(v125 + 32) = v106;
    goto LABEL_11;
  }

  if ((v108 & 1) == 0)
  {
    sub_214031C4C();
    v121 = swift_allocError();
    *v122 = 0xD000000000000022;
    v122[1] = 0x800000021478E1D0;
    v123 = v152;
    v122[2] = 0xD00000000000001CLL;
    v122[3] = v123;
    v143 = v121;
    swift_willThrow();
    goto LABEL_30;
  }

  sub_213FB2DF4(v155, &unk_27C904F30, &unk_2146EFA20);
  v117 = *(v156 + 8);
  v117(v181, v18);
  sub_213FB2DF4(v158, &unk_27C904F30, &unk_2146EFA20);
  v117(v160, v18);
  (*(v161 + 8))(v28, v147);
  v118 = v136;

  v119 = v151;
  *v118 = v157;
  *(v118 + 8) = v119;
  v120 = *(&v145 + 1);
  *(v118 + 16) = v145;
  *(v118 + 24) = v120;
  *(v118 + 32) = v106;
  sub_214328704(v153, v154, type metadata accessor for CircleTrustEnvelopeV1Payload);
  return __swift_destroy_boxed_opaque_existential_1(v162);
}

uint64_t sub_214132408(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D60, &qword_2146F47A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EFB54();
  sub_2146DAA28();
  LOBYTE(v16) = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = v6;
  v13 = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  LOBYTE(v16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  sub_2142EFE18();
  sub_2146DA388();
  v10 = v13;
  LOBYTE(v16) = 2;
  sub_2146DA388();
  LOBYTE(v16) = 3;
  sub_2146DA388();
  v12 = v5;
  if (*(v3 + v10[8] + 24) && (LOBYTE(v16) = 4, , sub_2146DA328(), , *(v3 + v10[9] + 24)) && (LOBYTE(v16) = 5, , sub_2146DA328(), , LOBYTE(v16) = 6, sub_2146DA3D8(), LOBYTE(v16) = 7, sub_2146DA3D8(), *(v10[12] + 0x18)) && (LOBYTE(v16) = 8, , sub_2146DA328(), , (*(v3 + v10[13] + 24) & 1) == 0) && (LOBYTE(v16) = 9, sub_2146DA368(), *(v3 + v10[14] + 24)))
  {
    LOBYTE(v16) = 10;

    sub_2146DA328();

    v16 = *(v3 + v10[15]);
    v15 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D28, &qword_2146F4798);
    sub_2142EFECC();
    sub_2146DA388();
    v16 = *(v3 + v10[16]);
    v15 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D40, &qword_2146F47A0);
    sub_2142EFF80();
    sub_2146DA388();
    LOBYTE(v16) = *(v3 + MEMORY[0x44]);
    v15 = 13;
    sub_2142F0034();
    v11 = v12;
    sub_2146DA388();
    return (*(v14 + 8))(v8, v11);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214132A80@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001ELL;
  v19 = 0x800000021478E200;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ELL;
    v15[1] = 0x800000021478E200;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214132C84(uint64_t a1)
{
  v2 = sub_2142F0088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214132CC0(uint64_t a1)
{
  v2 = sub_2142F0088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214132CFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D90, &unk_2146F47B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0088();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DA0, qword_21476BCB0);
  LOBYTE(v34) = 0;
  sub_2142F00DC();
  sub_2146DA1C8();
  v9 = v29;
  LOBYTE(v34) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v10 = v29;
  LOBYTE(v29) = 2;
  v11 = sub_2146DA1A8();
  v26 = v9;
  v25 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[1] = vdupq_n_s64(1uLL);
  *(v14 + 16) = sub_21438F468;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_21404328C(inited, &v29);
  v17 = v29;
  v16 = v30;
  v34 = v28;
  v24 = BYTE1(v32);
  v33 = BYTE1(v32);
  v29 = 0xD00000000000001ELL;
  v30 = 0x800000021478E200;
  v27 = 0x800000021478E200;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v23 = v17;
  v18 = v17(&v34, &v33, &v29);
  v19 = v26;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v19;
    *(a2 + 8) = v25;
    *(a2 + 16) = v23;
    *(a2 + 24) = v16;
    *(a2 + 32) = v28;
    *(a2 + 40) = 0;
    *(a2 + 41) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v27;
    *v21 = 0xD00000000000001ELL;
    v21[1] = v20;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214133148(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DB8, &qword_2146F47C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v14 = *(v1 + 8);
  v13 = v1[4];
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0088();
  sub_2146DAA28();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DA0, qword_21476BCB0);
  sub_2142F01B4();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9 = v12;
  v17 = v14;
  v16 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v9 & 1) == 0)
  {
    v15 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141333B4(uint64_t a1)
{
  v2 = sub_2142F028C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141333F0(uint64_t a1)
{
  v2 = sub_2142F028C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413342C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DD0, &qword_2146F47C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F028C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
    sub_2142F02E0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141335AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DF0, &qword_2146F47D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F028C();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
  sub_2142F0394();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214133750@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001ALL;
  v19 = 0x800000021478E220;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ALL;
    v15[1] = 0x800000021478E220;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214133954(uint64_t a1)
{
  v2 = sub_2142F0448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214133990(uint64_t a1)
{
  v2 = sub_2142F0448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141339CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E00, &unk_2146F47E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0448();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E10, qword_21476B1F0);
  LOBYTE(v34) = 0;
  sub_2142F049C();
  sub_2146DA1C8();
  v9 = v29;
  LOBYTE(v34) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v10 = v29;
  LOBYTE(v29) = 2;
  v11 = sub_2146DA1A8();
  v26 = v9;
  v25 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[1] = vdupq_n_s64(1uLL);
  *(v14 + 16) = sub_21438F468;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_21404328C(inited, &v29);
  v17 = v29;
  v16 = v30;
  v34 = v28;
  v24 = BYTE1(v32);
  v33 = BYTE1(v32);
  v29 = 0xD00000000000001ALL;
  v30 = 0x800000021478E220;
  v27 = 0x800000021478E220;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v23 = v17;
  v18 = v17(&v34, &v33, &v29);
  v19 = v26;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v19;
    *(a2 + 8) = v25;
    *(a2 + 16) = v23;
    *(a2 + 24) = v16;
    *(a2 + 32) = v28;
    *(a2 + 40) = 0;
    *(a2 + 41) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v27;
    *v21 = 0xD00000000000001ALL;
    v21[1] = v20;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214133E18(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E28, &qword_2146F47F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v14 = *(v1 + 8);
  v13 = v1[4];
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0448();
  sub_2146DAA28();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E10, qword_21476B1F0);
  sub_2142F0574();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9 = v12;
  v17 = v14;
  v16 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v9 & 1) == 0)
  {
    v15 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214134084(uint64_t a1)
{
  v2 = sub_2142F064C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141340C0(uint64_t a1)
{
  v2 = sub_2142F064C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141340FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E40, &qword_2146F47F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F064C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
    sub_2142F02E0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413427C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E50, &qword_2146F4800);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F064C();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
  sub_2142F0394();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214134420@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001ALL;
  v19 = 0x800000021478E240;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ALL;
    v15[1] = 0x800000021478E240;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214134624(uint64_t a1)
{
  v2 = sub_2142F06A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214134660(uint64_t a1)
{
  v2 = sub_2142F06A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413469C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E58, &qword_2146F4808);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F06A0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E68, &qword_2146F4810);
  LOBYTE(v34) = 0;
  sub_2142F06F4();
  sub_2146DA1C8();
  v9 = v29;
  LOBYTE(v34) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v10 = v29;
  LOBYTE(v29) = 2;
  v11 = sub_2146DA1A8();
  v26 = v9;
  v25 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[1] = vdupq_n_s64(1uLL);
  *(v14 + 16) = sub_21438F468;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_21404328C(inited, &v29);
  v17 = v29;
  v16 = v30;
  v34 = v28;
  v24 = BYTE1(v32);
  v33 = BYTE1(v32);
  v29 = 0xD00000000000001ALL;
  v30 = 0x800000021478E240;
  v27 = 0x800000021478E240;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v23 = v17;
  v18 = v17(&v34, &v33, &v29);
  v19 = v26;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v19;
    *(a2 + 8) = v25;
    *(a2 + 16) = v23;
    *(a2 + 24) = v16;
    *(a2 + 32) = v28;
    *(a2 + 40) = 0;
    *(a2 + 41) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v27;
    *v21 = 0xD00000000000001ALL;
    v21[1] = v20;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214134AE8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E80, &qword_2146F4818);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v14 = *(v1 + 8);
  v13 = v1[4];
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F06A0();
  sub_2146DAA28();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E68, &qword_2146F4810);
  sub_2142F07CC();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9 = v12;
  v17 = v14;
  v16 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v9 & 1) == 0)
  {
    v15 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214134D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000214794960 == a2)
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

uint64_t sub_214134DE8(uint64_t a1)
{
  v2 = sub_2142F08A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214134E24(uint64_t a1)
{
  v2 = sub_2142F08A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214134E60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E98, &qword_2146F4820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F08A4();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
    sub_2142F02E0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214134FE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EA8, &qword_2146F4828);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F08A4();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
  sub_2142F0394();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214135184@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD000000000000024;
  v19 = 0x800000021478E260;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD000000000000024;
    v15[1] = 0x800000021478E260;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214135388(uint64_t a1)
{
  v2 = sub_2142F08F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141353C4(uint64_t a1)
{
  v2 = sub_2142F08F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214135400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EB0, &unk_2146F4830);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F08F8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EC0, &qword_21476BDF0);
  LOBYTE(v34) = 0;
  sub_2142F094C();
  sub_2146DA1C8();
  v9 = v29;
  LOBYTE(v34) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v10 = v29;
  LOBYTE(v29) = 2;
  v11 = sub_2146DA1A8();
  v26 = v9;
  v25 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[1] = vdupq_n_s64(1uLL);
  *(v14 + 16) = sub_21438F468;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_21404328C(inited, &v29);
  v17 = v29;
  v16 = v30;
  v34 = v28;
  v24 = BYTE1(v32);
  v33 = BYTE1(v32);
  v29 = 0xD000000000000024;
  v30 = 0x800000021478E260;
  v27 = 0x800000021478E260;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v23 = v17;
  v18 = v17(&v34, &v33, &v29);
  v19 = v26;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v19;
    *(a2 + 8) = v25;
    *(a2 + 16) = v23;
    *(a2 + 24) = v16;
    *(a2 + 32) = v28;
    *(a2 + 40) = 0;
    *(a2 + 41) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v27;
    *v21 = 0xD000000000000024;
    v21[1] = v20;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413584C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906ED8, &qword_2146F4840);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v14 = *(v1 + 8);
  v13 = v1[4];
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F08F8();
  sub_2146DAA28();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EC0, &qword_21476BDF0);
  sub_2142F0A00();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9 = v12;
  v17 = v14;
  v16 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v9 & 1) == 0)
  {
    v15 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214135AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6564496572616873 && a2 == 0xEF7265696669746ELL)
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

uint64_t sub_214135B48(uint64_t a1)
{
  v2 = sub_2142F0AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214135B84(uint64_t a1)
{
  v2 = sub_2142F0AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214135C04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F00, &qword_2146F4850);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0AB4();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214135D94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F00, &qword_2146F4850);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0AB4();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214135F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000)
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

uint64_t sub_214135FB4(uint64_t a1)
{
  v2 = sub_2142F0B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214135FF0(uint64_t a1)
{
  v2 = sub_2142F0B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413602C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F08, &qword_2146F4858);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0B08();
  sub_2146DAA08();
  if (!v2)
  {
    v9 = sub_2146DA1A8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214136180(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F18, &qword_2146F4860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0B08();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2141362D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F18, &qword_2146F4860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0B08();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v3 + 8))(v5, v2);
}

uint64_t FindMyMessage.init(with:V:peerTrustAck:circleTrust:circleTrustAck:circleTrustAccept:circleTrustDecline:circlesUpdated:circleTrustStopped:circleTrustRequest:delegatedReunited:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v26 = *a1;
  v27 = *a3;
  v28 = a3[1];
  v29 = a3[2];
  v30 = a3[3];
  v31 = a3[4];
  v32 = *(a3 + 20);
  v33 = *a4;
  v34 = a4[1];
  v35 = a4[2];
  v36 = a4[3];
  v37 = a4[4];
  v38 = *(a4 + 20);
  v39 = *a5;
  v40 = a5[1];
  v41 = a5[2];
  v42 = a5[3];
  v43 = a5[4];
  v44 = *(a5 + 20);
  v45 = *a6;
  v46 = a6[1];
  v47 = a6[2];
  v48 = a6[3];
  v49 = a6[4];
  v50 = *(a6 + 20);
  v51 = *a7;
  v52 = a7[1];
  v53 = a7[2];
  v54 = a7[3];
  v55 = a7[4];
  v56 = *(a7 + 20);
  v57 = *a8;
  v58 = a8[1];
  v59 = a8[2];
  v60 = a8[3];
  v61 = a8[4];
  v62 = *(a8 + 20);
  v63 = *a10;
  v64 = a10[1];
  v65 = a10[2];
  v66 = a10[3];
  v67 = a10[4];
  v68 = *(a10 + 20);
  v69 = *a11;
  v70 = a11[1];
  v71 = a11[2];
  v72 = a11[3];
  v73 = a11[4];
  v180 = *(a11 + 20);
  v74 = *a12;
  v75 = a12[1];
  v76 = a12[2];
  v77 = a12[3];
  v78 = a12[4];
  v181 = *(a12 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  v16[1] = vdupq_n_s64(1uLL);
  *(v15 + 16) = sub_21438F468;
  *(v15 + 24) = v16;
  *(v14 + 32) = v15;
  sub_21404328C(v14, &v79);
  v18 = v79;
  v17 = v80;
  v19 = v81;
  v20 = v82;
  v21 = BYTE1(v82);
  v178 = v82;
  v159 = v82;
  v158 = a2;
  v157 = BYTE1(v82);
  v79 = 0x654D794D646E6946;
  v80 = 0xEF562E6567617373;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;

  v22 = v18(&v158, &v157, &v79);
  if (v25)
  {
  }

  else
  {
    if (v22)
    {

      *a9 = v26;
      *(a9 + 8) = v18;
      *(a9 + 16) = v17;
      *(a9 + 24) = a2;
      *(a9 + 33) = v21;
      *(a9 + 40) = v27;
      *(a9 + 48) = v28;
      *(a9 + 56) = v29;
      *(a9 + 64) = v30;
      *(a9 + 72) = v31;
      *(a9 + 80) = v32;
      *(a9 + 88) = v33;
      *(a9 + 96) = v34;
      *(a9 + 104) = v35;
      *(a9 + 112) = v36;
      *(a9 + 120) = v37;
      *(a9 + 128) = v38;
      *(a9 + 136) = v39;
      *(a9 + 144) = v40;
      *(a9 + 152) = v41;
      *(a9 + 160) = v42;
      *(a9 + 168) = v43;
      *(a9 + 176) = v44;
      *(a9 + 184) = v45;
      *(a9 + 192) = v46;
      *(a9 + 200) = v47;
      *(a9 + 208) = v48;
      *(a9 + 216) = v49;
      *(a9 + 224) = v50;
      v178 = 0;
      *(a9 + 32) = 0;
      *(a9 + 232) = v51;
      *(a9 + 240) = v52;
      *(a9 + 248) = v53;
      *(a9 + 256) = v54;
      *(a9 + 264) = v55;
      *(a9 + 272) = v56;
      *(a9 + 280) = v57;
      *(a9 + 288) = v58;
      *(a9 + 296) = v59;
      *(a9 + 304) = v60;
      *(a9 + 312) = v61;
      *(a9 + 320) = v62;
      *(a9 + 328) = v63;
      *(a9 + 336) = v64;
      *(a9 + 344) = v65;
      *(a9 + 352) = v66;
      *(a9 + 360) = v67;
      *(a9 + 368) = v68;
      *(a9 + 376) = v69;
      *(a9 + 384) = v70;
      *(a9 + 392) = v71;
      *(a9 + 400) = v72;
      *(a9 + 408) = v73;
      *(a9 + 416) = v180;
      *(a9 + 424) = v74;
      *(a9 + 432) = v75;
      *(a9 + 440) = v76;
      *(a9 + 448) = v77;
      *(a9 + 456) = v78;
      *(a9 + 464) = v181;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0x654D794D646E6946;
    v24[1] = 0xEF562E6567617373;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
    v20 = v159;
  }

  LOBYTE(v79) = v26;
  v80 = v18;
  v81 = v17;
  v82 = v19;
  v84 = v21;
  v87 = v27;
  v88 = v28;
  v89 = v29;
  v90 = v30;
  v91 = v31;
  v92 = v32;
  v95 = v33;
  v96 = v34;
  v97 = v35;
  v98 = v36;
  v99 = v37;
  v100 = v38;
  v103 = v39;
  v104 = v40;
  v105 = v41;
  v106 = v42;
  v107 = v43;
  v108 = v44;
  v111 = v45;
  v112 = v46;
  v113 = v47;
  v114 = v48;
  v115 = v49;
  v116 = v50;
  v119 = v51;
  v120 = v52;
  *(&v79 + 1) = v179[0];
  HIDWORD(v79) = *(v179 + 3);
  v178 = v20;
  v83 = v20;
  v85 = v176;
  v86 = v177;
  v93 = v174;
  v94 = v175;
  v101 = v172;
  v102 = v173;
  v110 = v171;
  v109 = v170;
  v118 = v169;
  v117 = v168;
  v121 = v53;
  v122 = v54;
  v123 = v55;
  v124 = v56;
  v125 = v166;
  v126 = v167;
  v127 = v57;
  v128 = v58;
  v129 = v59;
  v130 = v60;
  v131 = v61;
  v132 = v62;
  v133 = v164;
  v134 = v165;
  v135 = v63;
  v136 = v64;
  v137 = v65;
  v138 = v66;
  v139 = v67;
  v140 = v68;
  v141 = v162;
  v142 = v163;
  v143 = v69;
  v144 = v70;
  v145 = v71;
  v146 = v72;
  v147 = v73;
  v148 = v180;
  v149 = v160;
  v150 = v161;
  v151 = v74;
  v152 = v75;
  v153 = v76;
  v154 = v77;
  v155 = v78;
  v156 = v181;
  return sub_2142F0B5C(&v79);
}

unint64_t sub_214136ADC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 84;
    v6 = 0x7375725472656570;
    if (a1 != 2)
    {
      v6 = 0x7254656C63726963;
    }

    if (a1)
    {
      v5 = 86;
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
    v1 = 0xD000000000000012;
    v2 = 0xD000000000000012;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 6)
    {
      v3 = 0x5573656C63726963;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_214136C58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214365EC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214136C80(uint64_t a1)
{
  v2 = sub_2142F0BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214136CBC(uint64_t a1)
{
  v2 = sub_2142F0BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FindMyMessage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F20, &qword_2146F4868);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = a1[3];
  v211 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F0BB0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v211);
  }

  v104 = a2;
  v105 = v6;
  LOBYTE(v106[0]) = 0;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v10 = v107;
  LOBYTE(v107) = 1;
  v11 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F30, &qword_2146F4870);
  LOBYTE(v106[0]) = 2;
  sub_2142F0C04();
  sub_2146DA1C8();
  v99 = v10;
  v101 = v107;
  v102 = v108;
  v13 = v109;
  v100 = v110;
  v14 = v111;
  v103 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F48, &qword_2146F4878);
  LOBYTE(v106[0]) = 3;
  sub_2142F0CDC();
  sub_2146DA1C8();
  v93 = v13;
  v94 = v14;
  v15 = v107;
  v16 = v109;
  v95 = v108;
  v96 = v110;
  v97 = v111;
  v98 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F60, &qword_2146F4880);
  LOBYTE(v106[0]) = 4;
  sub_2142F0DB4();
  sub_2146DA1C8();
  v87 = v15;
  v17 = v107;
  v88 = v108;
  v89 = v16;
  v90 = v109;
  v92 = v110;
  v18 = v111;
  v91 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F78, &qword_2146F4888);
  LOBYTE(v106[0]) = 5;
  sub_2142F0E8C();
  sub_2146DA1C8();
  v81 = v17;
  v85 = v18;
  v19 = v107;
  v20 = v108;
  v82 = v109;
  v83 = v110;
  v84 = v111;
  v86 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F90, &qword_2146F4890);
  LOBYTE(v106[0]) = 6;
  sub_2142F0F64();
  sub_2146DA1C8();
  v75 = v19;
  v76 = v20;
  v21 = v107;
  v22 = v108;
  v77 = v109;
  v78 = v110;
  v79 = v111;
  v80 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FA8, &qword_2146F4898);
  LOBYTE(v106[0]) = 7;
  sub_2142F103C();
  sub_2146DA1C8();
  v69 = v22;
  v70 = v21;
  v71 = v107;
  v72 = v108;
  v23 = v110;
  v73 = v109;
  v74 = v111;
  LODWORD(v22) = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FC0, &qword_2146F48A0);
  LOBYTE(v106[0]) = 8;
  sub_2142F1114();
  sub_2146DA1C8();
  v24 = v23;
  v25 = v69;
  v67 = v24;
  v68 = v22;
  v26 = v107;
  v61 = v11;
  v62 = v108;
  v63 = v109;
  v64 = v110;
  v65 = v111;
  v66 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FD8, &qword_2146F48A8);
  LOBYTE(v106[0]) = 9;
  sub_2142F11EC();
  v27 = v5;
  sub_2146DA1C8();
  v55 = v107;
  v56 = v108;
  v57 = v109;
  v58 = v110;
  v59 = v111;
  v60 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FF0, &qword_2146F48B0);
  v184 = 10;
  sub_2142F12C4();
  sub_2146DA1C8();
  v28 = v185;
  v53 = v187;
  v54 = v186;
  v51 = v189;
  v52 = v188;
  v50 = v190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  v31[1] = vdupq_n_s64(1uLL);
  *(v30 + 16) = sub_21438F468;
  *(v30 + 24) = v31;
  *(v29 + 32) = v30;
  sub_2142F139C(v101, v102, v93, v100);
  sub_2142F139C(v87, v95, v89, v96);
  sub_2142F139C(v81, v88, v90, v92);
  sub_2142F139C(v75, v76, v82, v83);
  sub_2142F139C(v70, v25, v77, v78);
  sub_2142F139C(v71, v72, v73, v67);
  sub_2142F139C(v26, v62, v63, v64);
  sub_2142F139C(v55, v56, v57, v58);
  v49 = v28;
  sub_2142F139C(v28, v54, v53, v52);
  sub_21404328C(v29, &v107);
  v32 = v107;
  v33 = v108;
  v44 = v109;
  v209 = v110;
  v45 = v110;
  v183 = v110;
  v182 = v61;
  v47 = BYTE1(v110);
  LOBYTE(v106[0]) = BYTE1(v110);
  v107 = 0x654D794D646E6946;
  v108 = 0xEF562E6567617373;
  v109 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;
  v110 = 0x800000021478A360;

  v48 = v32;
  v34 = v32(&v182, v106, &v107);
  if (v34)
  {

    v35 = v100;
    sub_2142F13DC(v101, v102, v93, v100);
    sub_2142F13DC(v87, v95, v89, v96);
    sub_2142F13DC(v81, v88, v90, v92);
    sub_2142F13DC(v75, v76, v82, v83);
    sub_2142F13DC(v70, v25, v77, v78);
    sub_2142F13DC(v71, v72, v73, v67);
    v43 = v26;
    sub_2142F13DC(v26, v62, v63, v64);
    sub_2142F13DC(v55, v56, v57, v58);
    sub_2142F13DC(v49, v54, v53, v52);
    (*(v105 + 8))(v8, v27);
    v183 = 0;

    *(&v106[16] + 2) = v203;
    *(&v106[22] + 2) = v201;
    *(&v106[28] + 2) = v199;
    *(&v106[34] + 2) = v197;
    *(&v106[40] + 2) = v195;
    *(&v106[46] + 2) = v193;
    *(&v106[52] + 2) = v191;
    *(v106 + 1) = v210[0];
    HIDWORD(v106[0]) = *(v210 + 3);
    *(&v106[4] + 2) = v207;
    HIWORD(v106[4]) = v208;
    *(&v106[10] + 2) = v205;
    HIWORD(v106[10]) = v206;
    HIWORD(v106[16]) = v204;
    HIWORD(v106[22]) = v202;
    HIWORD(v106[28]) = v200;
    HIWORD(v106[34]) = v198;
    HIWORD(v106[40]) = v196;
    HIWORD(v106[46]) = v194;
    HIWORD(v106[52]) = v192;
    v209 = 0;
    v36 = v99;
    LOBYTE(v106[0]) = v99;
    v37 = v48;
    v106[1] = v48;
    v106[2] = v33;
    v38 = v61;
    v106[3] = v61;
    LOBYTE(v106[4]) = 0;
    v39 = v47;
    BYTE1(v106[4]) = v47;
    v106[5] = v101;
    v106[6] = v102;
    v40 = v93;
    v106[7] = v93;
    v106[8] = v35;
    v41 = v94;
    v106[9] = v94;
    LOWORD(v106[10]) = v103;
    v106[11] = v87;
    v106[12] = v95;
    v106[13] = v89;
    v106[14] = v96;
    v106[15] = v97;
    LOWORD(v106[16]) = v98;
    v106[17] = v81;
    v106[18] = v88;
    v106[19] = v90;
    v106[20] = v92;
    v106[21] = v85;
    LOWORD(v106[22]) = v91;
    v106[23] = v75;
    v106[24] = v76;
    v106[25] = v82;
    v106[26] = v83;
    v106[27] = v84;
    LOWORD(v106[28]) = v86;
    v106[29] = v70;
    v106[30] = v69;
    v106[31] = v77;
    v106[32] = v78;
    v106[33] = v79;
    LOWORD(v106[34]) = v80;
    v106[35] = v71;
    v106[36] = v72;
    v106[37] = v73;
    v106[38] = v67;
    v106[39] = v74;
    LOWORD(v106[40]) = v68;
    v106[41] = v43;
    v106[42] = v62;
    v106[43] = v63;
    v106[44] = v64;
    v106[45] = v65;
    LOWORD(v106[46]) = v66;
    v106[47] = v55;
    v106[48] = v56;
    v106[49] = v57;
    v106[50] = v58;
    v106[51] = v59;
    LOWORD(v106[52]) = v60;
    v106[53] = v49;
    v106[54] = v54;
    v106[55] = v53;
    v106[56] = v52;
    v106[57] = v51;
    LOWORD(v106[58]) = v50;
    memcpy(v104, v106, 0x1D2uLL);
    sub_2142F141C(v106, &v107);
    __swift_destroy_boxed_opaque_existential_1(v211);
    LOBYTE(v107) = v36;
    v108 = v37;
    v109 = v33;
    v110 = v38;
    BYTE1(v111) = v39;
    v112 = v101;
    v113 = v102;
    v114 = v40;
    v115 = v100;
    v116 = v41;
    v117 = v103;
    v120 = v87;
    v121 = v95;
    v122 = v89;
    v123 = v96;
    v124 = v97;
    v125 = v98;
    v128 = v81;
    v129 = v88;
    v130 = v90;
    v131 = v92;
    v132 = v85;
    v133 = v91;
    v136 = v75;
    v137 = v76;
    v138 = v82;
    v139 = v83;
    v140 = v84;
    v141 = v86;
    v144 = v70;
    v145 = v69;
    *(&v107 + 1) = v210[0];
    *(&v111 + 2) = v207;
    v118 = v205;
    v126 = v203;
    v134 = v201;
    v142 = v199;
    HIDWORD(v107) = *(v210 + 3);
    LOBYTE(v111) = 0;
    HIWORD(v111) = v208;
    v119 = v206;
    v127 = v204;
    v135 = v202;
    v143 = v200;
    v146 = v77;
    v147 = v78;
    v148 = v79;
    v149 = v80;
    v150 = v197;
    v151 = v198;
    v152 = v71;
    v153 = v72;
    v154 = v73;
    v155 = v67;
    v156 = v74;
    v157 = v68;
    v158 = v195;
    v159 = v196;
    v160 = v43;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0x654D794D646E6946;
    v42[1] = 0xEF562E6567617373;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = v46;
    swift_willThrow();
    sub_2142F13DC(v101, v102, v93, v100);
    sub_2142F13DC(v87, v95, v89, v96);
    sub_2142F13DC(v81, v88, v90, v92);
    sub_2142F13DC(v75, v76, v82, v83);
    sub_2142F13DC(v70, v25, v77, v78);
    sub_2142F13DC(v71, v72, v73, v67);
    sub_2142F13DC(v26, v62, v63, v64);
    sub_2142F13DC(v55, v56, v57, v58);
    sub_2142F13DC(v49, v54, v53, v52);
    (*(v105 + 8))(v8, v27);
    v45 = v183;

    v209 = v45;
    __swift_destroy_boxed_opaque_existential_1(v211);
    LOBYTE(v107) = v99;
    v108 = v48;
    v109 = v33;
    v110 = v44;
    BYTE1(v111) = v47;
    v112 = v101;
    v113 = v102;
    v114 = v93;
    v115 = v100;
    v116 = v94;
    v117 = v103;
    v120 = v87;
    v121 = v95;
    v122 = v89;
    v123 = v96;
    v124 = v97;
    v125 = v98;
    v128 = v81;
    v129 = v88;
    v130 = v90;
    v131 = v92;
    v132 = v85;
    v133 = v91;
    v136 = v75;
    v137 = v76;
    v138 = v82;
    v139 = v83;
    v140 = v84;
    v141 = v86;
    v144 = v70;
    v145 = v25;
    *(&v107 + 1) = v210[0];
    HIDWORD(v107) = *(v210 + 3);
    LOBYTE(v111) = v209;
    *(&v111 + 2) = v207;
    HIWORD(v111) = v208;
    v118 = v205;
    v119 = v206;
    v126 = v203;
    v127 = v204;
    v135 = v202;
    v134 = v201;
    v143 = v200;
    v142 = v199;
    v146 = v77;
    v147 = v78;
    v148 = v79;
    v149 = v80;
    v150 = v197;
    v151 = v198;
    v152 = v71;
    v153 = v72;
    v154 = v73;
    v155 = v67;
    v156 = v74;
    v157 = v68;
    v158 = v195;
    v159 = v196;
    v160 = v26;
  }

  v161 = v62;
  v162 = v63;
  v163 = v64;
  v164 = v65;
  v165 = v66;
  v166 = v193;
  v167 = v194;
  v168 = v55;
  v169 = v56;
  v170 = v57;
  v171 = v58;
  v172 = v59;
  v173 = v60;
  v174 = v191;
  v175 = v192;
  v176 = v49;
  v177 = v54;
  v178 = v53;
  v179 = v52;
  v180 = v51;
  v181 = v50;
  return sub_2142F0B5C(&v107);
}

uint64_t FindMyMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907008, &qword_2146F48B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v7 = *v1;
  v8 = *(v1 + 3);
  v101 = v1[32];
  v9 = *(v1 + 6);
  v90 = *(v1 + 5);
  v91 = v8;
  v10 = *(v1 + 8);
  v88 = *(v1 + 7);
  v89 = v9;
  v86 = *(v1 + 9);
  v87 = v10;
  v84 = *(v1 + 40);
  v11 = *(v1 + 12);
  v78 = *(v1 + 11);
  v79 = v11;
  v12 = *(v1 + 13);
  v82 = *(v1 + 14);
  v83 = v12;
  v81 = *(v1 + 15);
  v80 = *(v1 + 64);
  v13 = *(v1 + 18);
  v72 = *(v1 + 17);
  v73 = v13;
  v14 = *(v1 + 20);
  v77 = *(v1 + 19);
  v76 = v14;
  v75 = *(v1 + 21);
  v74 = *(v1 + 88);
  v15 = *(v1 + 24);
  v66 = *(v1 + 23);
  v67 = v15;
  v16 = *(v1 + 26);
  v71 = *(v1 + 25);
  v70 = v16;
  v69 = *(v1 + 27);
  v68 = *(v1 + 112);
  v17 = *(v1 + 30);
  v60 = *(v1 + 29);
  v61 = v17;
  v18 = *(v1 + 32);
  v65 = *(v1 + 31);
  v64 = v18;
  v63 = *(v1 + 33);
  v62 = *(v1 + 136);
  v19 = *(v1 + 36);
  v54 = *(v1 + 35);
  v55 = v19;
  v20 = *(v1 + 38);
  v59 = *(v1 + 37);
  v58 = v20;
  v57 = *(v1 + 39);
  v56 = *(v1 + 160);
  v21 = *(v1 + 42);
  v48 = *(v1 + 41);
  v49 = v21;
  v22 = *(v1 + 44);
  v53 = *(v1 + 43);
  v52 = v22;
  v51 = *(v1 + 45);
  v50 = *(v1 + 184);
  v23 = *(v1 + 48);
  v85 = *(v1 + 47);
  v43 = v23;
  v24 = *(v1 + 50);
  v47 = *(v1 + 49);
  v46 = v24;
  v45 = *(v1 + 51);
  v44 = *(v1 + 208);
  v25 = *(v1 + 54);
  v38 = *(v1 + 53);
  v42 = v25;
  v26 = *(v1 + 56);
  v41 = *(v1 + 55);
  v40 = v26;
  v39 = *(v1 + 57);
  v27 = *(v1 + 232);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0BB0();
  sub_2146DAA28();
  LOBYTE(v95) = v7;
  v102 = 0;
  sub_2142EF4D0();
  v93 = v6;
  v94 = v3;
  v28 = v92;
  sub_2146DA388();
  if (v28)
  {
    return (*(v4 + 8))(v93, v94);
  }

  v29 = v90;
  v31 = v86;
  v30 = v87;
  v33 = v88;
  v32 = v89;
  v34 = v85;
  LODWORD(v92) = v27;
  if (v101)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    LOBYTE(v95) = 1;
    sub_2146DA368();
    v95 = v29;
    v96 = v32;
    v97 = v33;
    v98 = v30;
    v99 = v31;
    v100 = v84;
    v102 = 2;
    sub_2142F139C(v29, v32, v33, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F30, &qword_2146F4870);
    sub_2142F1478();
    sub_2146DA388();
    sub_2142F13DC(v95, v96, v97, v98);
    v95 = v78;
    v96 = v79;
    v97 = v83;
    v98 = v82;
    v99 = v81;
    v100 = v80;
    v102 = 3;
    sub_2142F139C(v78, v79, v83, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F48, &qword_2146F4878);
    sub_2142F1550();
    sub_2146DA388();
    sub_2142F13DC(v95, v96, v97, v98);
    v95 = v72;
    v96 = v73;
    v97 = v77;
    v98 = v76;
    v99 = v75;
    v100 = v74;
    v102 = 4;
    sub_2142F139C(v72, v73, v77, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F60, &qword_2146F4880);
    sub_2142F1628();
    sub_2146DA388();
    sub_2142F13DC(v95, v96, v97, v98);
    v95 = v66;
    v96 = v67;
    v97 = v71;
    v98 = v70;
    v99 = v69;
    v100 = v68;
    v102 = 5;
    sub_2142F139C(v66, v67, v71, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F78, &qword_2146F4888);
    sub_2142F1700();
    sub_2146DA388();
    sub_2142F13DC(v95, v96, v97, v98);
    v95 = v60;
    v96 = v61;
    v97 = v65;
    v98 = v64;
    v99 = v63;
    v100 = v62;
    v102 = 6;
    sub_2142F139C(v60, v61, v65, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F90, &qword_2146F4890);
    sub_2142F17D8();
    sub_2146DA388();
    sub_2142F13DC(v95, v96, v97, v98);
    v95 = v54;
    v96 = v55;
    v97 = v59;
    v98 = v58;
    v99 = v57;
    v100 = v56;
    v102 = 7;
    sub_2142F139C(v54, v55, v59, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FA8, &qword_2146F4898);
    sub_2142F18B0();
    sub_2146DA388();
    sub_2142F13DC(v95, v96, v97, v98);
    v95 = v48;
    v96 = v49;
    v97 = v53;
    v98 = v52;
    v99 = v51;
    v100 = v50;
    v102 = 8;
    sub_2142F139C(v48, v49, v53, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FC0, &qword_2146F48A0);
    sub_2142F1988();
    sub_2146DA388();
    sub_2142F13DC(v95, v96, v97, v98);
    v95 = v34;
    v96 = v43;
    v97 = v47;
    v98 = v46;
    v99 = v45;
    v100 = v44;
    v102 = 9;
    sub_2142F139C(v34, v43, v47, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FD8, &qword_2146F48A8);
    sub_2142F1A60();
    sub_2146DA388();
    sub_2142F13DC(v95, v96, v97, v98);
    v95 = v38;
    v96 = v42;
    v97 = v41;
    v98 = v40;
    v99 = v39;
    v100 = v92;
    v102 = 10;
    sub_2142F139C(v38, v42, v41, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FF0, &qword_2146F48B0);
    sub_2142F1B38();
    v35 = v94;
    v36 = v93;
    sub_2146DA388();
    sub_2142F13DC(v95, v96, v97, v98);
    return (*(v4 + 8))(v36, v35);
  }

  return result;
}

uint64_t DecodedKey.init(with:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_214612754(v13);
  v6 = v13[0];
  v5 = v13[1];
  v7 = v14;
  v16 = a2;
  v15 = v14;
  strcpy(v13, "DecodedKey.key");
  HIBYTE(v13[1]) = -18;
  v13[2] = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  v8 = v6(&v16, &v15, v13);
  if (v3)
  {
  }

  else
  {
    if (v8)
    {

      *a3 = a1;
      *(a3 + 8) = v6;
      *(a3 + 16) = v5;
      *(a3 + 24) = a2;
      *(a3 + 32) = v7;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    strcpy(v10, "DecodedKey.key");
    v10[15] = -18;
    *(v10 + 2) = 0xD00000000000001CLL;
    *(v10 + 3) = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214138F24()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_214138F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
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

uint64_t sub_21413902C(uint64_t a1)
{
  v2 = sub_2142F1C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214139068(uint64_t a1)
{
  v2 = sub_2142F1C10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DecodedKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070A0, &qword_2146F48C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1C10();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25[0]) = 0;
  v24 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
  LOBYTE(v29) = 1;
  sub_2142E554C();
  sub_2146DA1C8();
  v10 = v25[0];
  sub_214612754(v25);
  v12 = v25[0];
  v11 = v25[1];
  v22 = v26;
  v23 = v10;
  v29 = v10;
  v20 = v27;
  v28 = v27;
  strcpy(v25, "DecodedKey.key");
  HIBYTE(v25[1]) = -18;
  v26 = 0xD00000000000001CLL;
  v27 = 0x800000021478A360;

  v21 = v11;
  v13 = v12(&v29, &v28, v25);
  v19 = v12;
  if (v13)
  {

    (*(v6 + 8))(v8, v5);

    v14 = v21;

    v15 = v23;
    v16 = v19;
    *a2 = v24;
    *(a2 + 8) = v16;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v20;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    strcpy(v17, "DecodedKey.key");
    v17[15] = -18;
    *(v17 + 2) = 0xD00000000000001CLL;
    *(v17 + 3) = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DecodedKey.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070B0, &qword_2146F48C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1C10();
  sub_2146DAA28();
  v11 = 0;
  sub_2146DA368();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    sub_2142E562C();
    sub_2146DA388();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t KeyPackage.init(with:keys:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_214328704(a1, a5, type metadata accessor for Alignment);
  result = type metadata accessor for KeyPackage(0);
  *(a5 + *(result + 20)) = a2;
  v10 = (a5 + *(result + 24));
  *v10 = a3;
  v10[1] = a4;
  return result;
}

uint64_t sub_2141396E0()
{
  v1 = 1937335659;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656D6E67696C61;
  }
}

uint64_t sub_214139730@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214366244(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214139758(uint64_t a1)
{
  v2 = sub_2142F1C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214139794(uint64_t a1)
{
  v2 = sub_2142F1C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyPackage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Alignment(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070B8, &qword_2146F48D0);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1C64();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v21;
    v26 = 0;
    sub_214328930(&qword_27C9070C8, type metadata accessor for Alignment, asc_2146F96E0);
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070D0, &qword_2146F48D8);
    v25 = 1;
    sub_2142F1CB8();
    sub_2146DA1C8();
    v12 = v23;
    v24 = 2;
    v13 = sub_2146DA168();
    v14 = (v7 + 8);
    v16 = v15;
    v17 = v13;
    (*v14)(v9, v22);
    sub_214328704(v6, v10, type metadata accessor for Alignment);
    v18 = type metadata accessor for KeyPackage(0);
    *(v10 + *(v18 + 20)) = v12;
    v19 = (v10 + *(v18 + 24));
    *v19 = v17;
    v19[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t KeyPackage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070E8, &qword_2146F48E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1C64();
  sub_2146DAA28();
  v12 = 0;
  type metadata accessor for Alignment(0);
  sub_214328930(&qword_27C9070F0, type metadata accessor for Alignment, byte_2146F9708);
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for KeyPackage(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070D0, &qword_2146F48D8);
    sub_2142F1D90();
    sub_2146DA388();
    v10[14] = 2;
    sub_2146DA328();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214139D44@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD000000000000018;
  v19 = 0x800000021478E290;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD000000000000018;
    v15[1] = 0x800000021478E290;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214139F48(uint64_t a1)
{
  v2 = sub_2142F1E68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214139F84(uint64_t a1)
{
  v2 = sub_2142F1E68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214139FC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907108, &qword_2146F48E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1E68();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907118, &qword_2146F48F0);
  LOBYTE(v34) = 0;
  sub_2142F1EBC();
  sub_2146DA1C8();
  v9 = v29;
  LOBYTE(v34) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v10 = v29;
  LOBYTE(v29) = 2;
  v11 = sub_2146DA1A8();
  v26 = v9;
  v25 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[1] = vdupq_n_s64(1uLL);
  *(v14 + 16) = sub_21438F468;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_21404328C(inited, &v29);
  v17 = v29;
  v16 = v30;
  v34 = v28;
  v24 = BYTE1(v32);
  v33 = BYTE1(v32);
  v29 = 0xD000000000000018;
  v30 = 0x800000021478E290;
  v27 = 0x800000021478E290;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v23 = v17;
  v18 = v17(&v34, &v33, &v29);
  v19 = v26;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v19;
    *(a2 + 8) = v25;
    *(a2 + 16) = v23;
    *(a2 + 24) = v16;
    *(a2 + 32) = v28;
    *(a2 + 40) = 0;
    *(a2 + 41) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v27;
    *v21 = 0xD000000000000018;
    v21[1] = v20;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413A40C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907130, &qword_2146F48F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v14 = *(v1 + 8);
  v13 = v1[4];
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1E68();
  sub_2146DAA28();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907118, &qword_2146F48F0);
  sub_2142F1F70();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9 = v12;
  v17 = v14;
  v16 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v9 & 1) == 0)
  {
    v15 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21413A6C0(uint64_t a1)
{
  v2 = sub_2142F2024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413A6FC(uint64_t a1)
{
  v2 = sub_2142F2024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413A77C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907158, &qword_2146F4908);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2024();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21413A90C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907158, &qword_2146F4908);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2024();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21413AA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 + 2);
  v10 = *(a4 + 3);
  v11 = *(a4 + 32);
  v12 = sub_2146D8B88();
  v27 = *(v12 - 8);
  v29 = *a4;
  v31 = v12;
  v32 = a1;
  (*(v27 + 16))(a5, a1);
  sub_214615990(&v34);
  v13 = v35;
  v14 = v36;
  v15 = v37;
  v16 = type metadata accessor for PeerTrustEnvelopeV1(0);
  v17 = a5 + *(v16 + 20);
  *v17 = v34;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = v15;
  v18 = a5 + *(v16 + 24);
  *v18 = v29;
  *(v18 + 16) = v9;
  *(v18 + 24) = v10;
  *(v18 + 32) = v11;
  v20 = *v17;
  v19 = *(v17 + 8);
  v21 = *(v17 + 24);
  v25 = *(v17 + 16);
  LOBYTE(v18) = *(v17 + 32);
  v33[0] = a2;
  v33[1] = a3;
  v30 = v18;
  v38 = v18;
  *&v34 = 0xD000000000000025;
  *(&v34 + 1) = 0x800000021478E2B0;
  v35 = 0xD00000000000001CLL;
  v36 = 0x800000021478A360;

  v22 = v20(v33, &v38, &v34);
  if (v28)
  {
  }

  else
  {
    if (v22)
    {

      (*(v27 + 8))(v32, v31);

      *v17 = v20;
      *(v17 + 8) = v19;
      *(v17 + 16) = a2;
      *(v17 + 24) = a3;
      *(v17 + 32) = v30;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000025;
    v24[1] = 0x800000021478E2B0;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
  }

  (*(v27 + 8))(v32, v31);

  *v17 = v20;
  *(v17 + 8) = v19;
  *(v17 + 16) = v25;
  *(v17 + 24) = v21;
  *(v17 + 32) = v30;
  return sub_21432887C(a5, type metadata accessor for PeerTrustEnvelopeV1);
}

unint64_t sub_21413AD3C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6553646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_21413ADA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436645C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21413ADD0(uint64_t a1)
{
  v2 = sub_2142F2078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413AE0C(uint64_t a1)
{
  v2 = sub_2142F2078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413AE48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_2146D8B88();
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907160, &qword_2146F4910);
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for PeerTrustEnvelopeV1(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F2078();
  v13 = v54;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v54 = v11;
  v14 = v52;
  LOBYTE(v57) = 0;
  sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v15 = v8;
  sub_2146DA1C8();
  LOBYTE(v57) = 1;
  v16 = sub_2146DA168();
  v18 = v17;
  v50 = v16;
  LOBYTE(v56[0]) = 2;
  sub_2142F20CC();
  sub_2146DA1C8();
  v48 = v15;
  v43 = v6;
  v20 = v58;
  v21 = v3;
  v22 = v59;
  v46 = v57;
  v23 = v14;
  v24 = *(v14 + 16);
  v25 = v54;
  v47 = v5;
  v49 = v21;
  v24(v54, v5);
  sub_214615990(&v57);
  v26 = v59;
  v27 = v25 + *(v9 + 20);
  v28 = v58;
  *v27 = v57;
  *(v27 + 16) = v28;
  *(v27 + 32) = v26;
  v29 = v25 + *(v9 + 24);
  *v29 = v46;
  *(v29 + 16) = v20;
  *(v29 + 32) = v22;
  v31 = *v27;
  v30 = *(v27 + 8);
  v32 = *(v27 + 24);
  v42 = *(v27 + 16);
  v33 = *(v27 + 32);
  v56[0] = v50;
  v56[1] = v18;
  LODWORD(v46) = v33;
  v60 = v33;
  *&v57 = 0xD000000000000025;
  *(&v57 + 1) = 0x800000021478E2B0;
  *&v58 = 0xD00000000000001CLL;
  *(&v58 + 1) = 0x800000021478A360;
  v44 = v32;

  v45 = v31;
  v34 = v31(v56, &v60, &v57);
  v41 = v18;
  v35 = v43;
  if (v34)
  {

    (*(v23 + 8))(v47, v49);
    (*(v53 + 8))(*(&v20 + 1), v35);

    *v27 = v45;
    *(v27 + 8) = v30;
    v36 = v51;
    v37 = v41;
    *(v27 + 16) = v50;
    *(v27 + 24) = v37;
    *(v27 + 32) = v46;
    sub_214328704(v25, v36, type metadata accessor for PeerTrustEnvelopeV1);
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  sub_214031C4C();
  swift_allocError();
  *v38 = 0xD000000000000025;
  v38[1] = 0x800000021478E2B0;
  v38[2] = 0xD00000000000001CLL;
  v38[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v23 + 8))(v47, v49);
  (*(v53 + 8))(*(&v20 + 1), v35);

  *v27 = v45;
  *(v27 + 8) = v30;
  v39 = v44;
  *(v27 + 16) = v42;
  *(v27 + 24) = v39;
  *(v27 + 32) = v46;
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_21432887C(v54, type metadata accessor for PeerTrustEnvelopeV1);
}

uint64_t sub_21413B42C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907178, &qword_2146F4918);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2078();
  sub_2146DAA28();
  LOBYTE(v20) = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10 = type metadata accessor for PeerTrustEnvelopeV1(0);
  if (*(v3 + *(v10 + 20) + 24))
  {
    v11 = v10;
    LOBYTE(v20) = 1;

    sub_2146DA328();

    v12 = (v3 + *(v11 + 24));
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    LOBYTE(v12) = *(v12 + 32);
    v20 = v14;
    v21 = v13;
    v22 = v16;
    v23 = v15;
    v24 = v12;
    v19[7] = 2;

    sub_213FDCA18(v16, v15);
    sub_2142F2120();
    sub_2146DA388();
    v17 = v22;
    v18 = v23;

    sub_213FDC6BC(v17, v18);
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_21413B728@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_21413B74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
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

uint64_t sub_21413B7D4(uint64_t a1)
{
  v2 = sub_2142F2174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413B810(uint64_t a1)
{
  v2 = sub_2142F2174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413B84C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907188, &qword_2146F4920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2174();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142F21C8();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413B9C4(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071A0, &qword_2146F4928);
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v13 - v4;
  v6 = v1[1];
  v14 = *v1;
  v7 = v1[2];
  v8 = v1[3];
  HIDWORD(v13) = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_213FDCA18(v7, v8);
  sub_2142F2174();
  sub_2146DAA28();
  v16 = v14;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = BYTE4(v13);
  sub_2142F221C();
  v9 = v15;
  sub_2146DA388();
  v10 = v18;
  v11 = v19;

  sub_213FDC6BC(v10, v11);
  return (*(v3 + 8))(v5, v9);
}

__n128 sub_21413BB94@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_213FB7988;
  v8[3] = 0;
  v8[4] = 32;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F670;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v14);
  v9 = v15;

  sub_213FDCA18(v9.n128_i64[0], v9.n128_u64[1]);
  sub_214032024(a1, a2, 2, 0xD00000000000001DLL, 0x800000021478E2E0, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FDC6BC(v9.n128_i64[0], v9.n128_u64[1]);
  sub_213FB54FC(a1, a2);

  if (v3)
  {
    v10 = v15;

    sub_213FDC6BC(v10.n128_i64[0], v10.n128_u64[1]);
  }

  else
  {
    v12 = v16;
    result = v15;
    v13 = v17;
    *v17 = v14;
    v13[1] = result;
    v13[2].n128_u8[0] = v12;
  }

  return result;
}

uint64_t sub_21413BD94(uint64_t a1)
{
  v2 = sub_2142F2270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413BDD0(uint64_t a1)
{
  v2 = sub_2142F2270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413BE0C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071B0, &qword_2146F4930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2270();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406116C();
    sub_2146DA1C8();
    v20 = a2;
    v25 = *(&v26 + 1);
    v29 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
    v11 = swift_allocObject();
    v12 = swift_allocObject();
    v12[2] = sub_213FB7988;
    v12[3] = 0;
    v12[4] = 32;
    v12[5] = sub_21403C354;
    v12[6] = 0;
    *(v11 + 16) = sub_21438F670;
    *(v11 + 24) = v12;
    *(inited + 32) = v11;
    sub_214042CD0(inited, &v26);
    v13 = v27;
    v23 = *(&v27 + 1);
    v24 = v27;
    v21 = "eV1.displayIdentifier";
    v22 = *(&v26 + 1);

    sub_213FDCA18(v13, *(&v13 + 1));
    v14 = v29;
    v15 = v25;
    sub_214032024(v29, v25, 2, 0xD00000000000001DLL, 0x800000021478E2E0, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v14, v15);
    (*(v6 + 8))(v8, v5);

    sub_213FDC6BC(v24, v23);
    v16 = v28;
    v17 = v27;
    v18 = v20;
    *v20 = v26;
    v18[1] = v17;
    *(v18 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t GroupContext.init(with:participantDestinationIdentifiers:groupID:currentGroupName:groupParticipantVersion:groupProtocolVersion:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, char *x0_0@<X0>, uint64_t a9, char a10)
{
  v27 = *x0_0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0AD0();
  sub_2140433DC(inited, &v57);
  v66 = v57;
  v33 = v59;
  v34 = v58;
  v31 = v60;
  sub_2146830BC(&v40);
  v16 = v40;
  v15 = v41;
  v17 = v42;
  v18 = v43;
  v35 = v44;
  v36 = a7 & 1;
  v61 = a10 & 1;
  v57 = a2;
  v58 = a3;
  v62[0] = v44;
  v40 = 0xD000000000000014;
  v41 = 0x800000021478E300;
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000021478A360;

  sub_213FDC9D0(v17, v18);
  v30 = v15;
  v19 = v16(&v57, v62, &v40);
  if (v28)
  {
  }

  else
  {
    v29 = a3;
    if (v19)
    {
      sub_213FDC6D0(v17, v18);

      sub_213FDC6D0(v17, v18);
      v40 = v66;
      v41 = v34;
      v42 = v33;
      LOBYTE(v43) = v31;

      sub_2140325F8(a1, v27, 0xD00000000000002ELL, 0x800000021478E320, 0xD00000000000001CLL, 0x800000021478A360);

      v21 = v40;
      v20 = v41;
      v22 = v42;
      v23 = v43;

      *a8 = v21;
      *(a8 + 8) = v20;
      *(a8 + 16) = v22;
      *(a8 + 24) = v23;
      *(a8 + 32) = v16;
      *(a8 + 40) = v30;
      *(a8 + 48) = a2;
      *(a8 + 56) = v29;
      *(a8 + 64) = v35;
      *(a8 + 72) = a4;
      *(a8 + 80) = a5;
      *(a8 + 88) = a6;
      *(a8 + 96) = v36;
      *(a8 + 104) = a9;
      *(a8 + 112) = a10 & 1;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000014;
    v25[1] = 0x800000021478E300;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v17, v18);
  v40 = v66;
  v41 = v34;
  v42 = v33;
  LOBYTE(v43) = v31;
  *(&v43 + 1) = v65[0];
  HIDWORD(v43) = *(v65 + 3);
  v44 = v16;
  v45 = v15;
  v46 = v17;
  v47 = v18;
  v48 = v35;
  *v49 = v64[0];
  *&v49[3] = *(v64 + 3);
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a7 & 1;
  *&v54[3] = *(v63 + 3);
  *v54 = v63[0];
  v55 = a9;
  v56 = a10 & 1;
  return sub_2142F22C4(&v40);
}

unint64_t sub_21413C5A0()
{
  v1 = *v0;
  v2 = 0x444970756F7267;
  v3 = 0xD000000000000017;
  if (v1 != 4)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = v3;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000032;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_21413C664@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214366588(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21413C68C(uint64_t a1)
{
  v2 = sub_2142F2318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413C6C8(uint64_t a1)
{
  v2 = sub_2142F2318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071C8, &qword_2146F4940);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2318();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v69 = a1;
  v70 = v5;
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
      sub_2140537E4(*(v8 + 56) + 32 * v12, &v82);

      if (swift_dynamicCast())
      {
        v15 = v71;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v71) = 0;
  sub_2142E15CC();
  sub_2146DA1C8();
  v16 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v71) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  LODWORD(v67) = v15;
  v68 = v16;
  v17 = v82;
  LOBYTE(v71) = 3;
  sub_2146DA1C8();
  v66 = v17;
  v18 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v71) = 4;
  sub_2142E3570();
  sub_2146DA1C8();
  v65 = *(&v18 + 1);
  v63 = v18;
  v20 = v82;
  v64 = BYTE8(v82);
  v99 = 5;
  sub_2146DA1C8();
  v58 = v20;
  v56 = v100;
  v21 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2146E9BF0;
  *(v22 + 32) = sub_2142E0AD0();
  sub_2140433DC(v22, &v71);
  v61 = v71;
  v54 = v72;
  v59 = BYTE8(v72);
  sub_2146830BC(&v82);
  v23 = *(&v82 + 1);
  v62 = v82;
  v24 = v83;
  v25 = v84;
  v57 = v21;
  v98 = v21;
  v71 = v66;
  v55 = v85;
  LOBYTE(v79) = v85;
  *&v82 = 0xD000000000000014;
  *(&v82 + 1) = 0x800000021478E300;
  v83 = 0xD00000000000001CLL;
  v84 = 0x800000021478A360;

  v52 = v25;
  v53 = v24;
  sub_213FDC9D0(v24, v25);
  v60 = v23;
  if (v62(&v71, &v79, &v82))
  {
    v27 = v52;
    v26 = v53;
    sub_213FDC6D0(v53, v52);

    sub_213FDC6D0(v26, v27);
    v79 = v61;
    v80 = v54;
    v81 = v59;

    v53 = *(&v61 + 1);

    sub_2140325F8(v68, v67, 0xD00000000000002ELL, 0x800000021478E320, 0xD00000000000001CLL, 0x800000021478A360);

    (*(v70 + 8))(v13, v11);
    v36 = v79;
    v67 = *(&v79 + 1);
    v68 = v79;
    v37 = v80;
    *&v61 = v80;
    v38 = v81;
    LODWORD(v70) = v81;

    v71 = v36;
    *&v72 = v37;
    BYTE8(v72) = v38;
    *(&v72 + 9) = v104[0];
    HIDWORD(v72) = *(v104 + 3);
    *&v73 = v62;
    *(&v73 + 1) = v60;
    v39 = *(&v66 + 1);
    v74 = v66;
    LOBYTE(v27) = v55;
    LOBYTE(v75) = v55;
    *(&v75 + 1) = *v103;
    DWORD1(v75) = *&v103[3];
    v40 = v65;
    *(&v75 + 1) = v63;
    *&v76 = v65;
    v41 = v58;
    *(&v76 + 1) = v58;
    LOBYTE(v77) = v64;
    DWORD1(v77) = *&v102[3];
    *(&v77 + 1) = *v102;
    v42 = v56;
    *(&v77 + 1) = v56;
    v43 = v57;
    v78 = v57;
    v45 = v75;
    v44 = v76;
    v46 = v77;
    v47 = v105;
    *(v105 + 112) = v57;
    v47[5] = v44;
    v47[6] = v46;
    v48 = v71;
    v49 = v72;
    v50 = v73;
    v47[3] = v74;
    v47[4] = v45;
    v47[1] = v49;
    v47[2] = v50;
    *v47 = v48;
    sub_2142F236C(&v71, &v82);
    __swift_destroy_boxed_opaque_existential_1(v69);
    *&v82 = v68;
    *(&v82 + 1) = v67;
    v83 = v61;
    LOBYTE(v84) = v70;
    *(&v84 + 1) = v104[0];
    HIDWORD(v84) = *(v104 + 3);
    v85 = v62;
    v86 = v60;
    v87 = v66;
    v88 = v39;
    v89 = v27;
    *v90 = *v103;
    *&v90[3] = *&v103[3];
    v91 = v63;
    v92 = v40;
    v93 = v41;
    v94 = v64;
    *v95 = *v102;
    *&v95[3] = *&v102[3];
    v96 = v42;
    v97 = v43;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000014;
    v28[1] = 0x800000021478E300;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    v29 = v69;
    v30 = v60;
    (*(v70 + 8))(v13, v11);

    v31 = v52;
    v32 = v53;
    sub_213FDC6D0(v53, v52);
    v33 = v63;
    v34 = v65;
    v35 = v54;
    __swift_destroy_boxed_opaque_existential_1(v29);
    v82 = v61;
    v83 = v35;
    LOBYTE(v84) = v59;
    *(&v84 + 1) = v104[0];
    HIDWORD(v84) = *(v104 + 3);
    v85 = v62;
    v86 = v30;
    v87 = v32;
    v88 = v31;
    v89 = v55;
    *v90 = *v103;
    *&v90[3] = *&v103[3];
    v91 = v33;
    v92 = v34;
    v93 = v58;
    v94 = v64;
    *&v95[3] = *&v102[3];
    *v95 = *v102;
    v96 = v56;
    v97 = v57;
  }

  return sub_2142F22C4(&v82);
}

uint64_t GroupContext.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071D8, &qword_2146F4948);
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 80);
  v17 = *(v1 + 72);
  v18 = v8;
  v15 = *(v1 + 88);
  v16 = v10;
  v22 = *(v1 + 96);
  v14 = *(v1 + 104);
  v13 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2318();
  sub_2146DAA28();
  if (v7)
  {
    v20 = v7;
    v23 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    if (v2)
    {
      return (*(v19 + 8))(v6, v4);
    }

    if (v9 != 1)
    {
      v20 = v18;
      v21 = v9;
      v23 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v20 = v17;
      v21 = v16;
      v23 = 3;
      sub_2146DA388();
      v20 = v15;
      LOBYTE(v21) = v22;
      v23 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
      sub_2142E3778();
      sub_2146DA388();
      v20 = v14;
      LOBYTE(v21) = v13;
      v23 = 5;
      sub_2146DA388();
      return (*(v19 + 8))(v6, v4);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21413D3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 1024;
  *(v7 + 16) = sub_21438F758;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478E350;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v12 = v10(v16, &v22, &v17);
  if (v3)
  {
  }

  else
  {
    if (v12)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v10;
      *(a3 + 8) = v9;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v11;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD00000000000001CLL;
    v14[1] = 0x800000021478E350;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21413D618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
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

uint64_t sub_21413D6A4(uint64_t a1)
{
  v2 = sub_2142F23C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413D6E0(uint64_t a1)
{
  v2 = sub_2142F23C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413D71C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071E0, &qword_2146F4950);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F23C8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v24 = a2;
  v27 = v9;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 1024;
  *(v13 + 16) = sub_21438F758;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_214042B80(inited, &v30);
  v16 = v30;
  v15 = v31;
  v17 = v33;
  v29[0] = v27;
  v29[1] = v28;
  v35 = v34;
  v36 = v34;
  v30 = 0xD00000000000001CLL;
  v31 = 0x800000021478E350;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;
  v26 = v17;

  v25 = v16;
  v18 = v16(v29, &v36, &v30);
  v19 = v25;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    v20 = v24;
    *v24 = v19;
    v20[1] = v15;
    v21 = v28;
    v20[2] = v27;
    v20[3] = v21;
    *(v20 + 32) = v35;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v22 = 0xD00000000000001CLL;
  v22[1] = 0x800000021478E350;
  v22[2] = 0xD00000000000001CLL;
  v22[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413DB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_214698BE4(&v14);
  v7 = v14;
  v6 = v15;
  v8 = v18;
  v13[0] = a1;
  v13[1] = a2;
  v19 = v18;
  v14 = 0x2E444970756F7247;
  v15 = 0xEA00000000006469;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  v9 = v7(v13, &v19, &v14);
  if (v3)
  {
  }

  else
  {
    if (v9)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v7;
      *(a3 + 8) = v6;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v11 = 0x2E444970756F7247;
    v11[1] = 0xEA00000000006469;
    v11[2] = 0xD00000000000001CLL;
    v11[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21413DCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_21413DD48(uint64_t a1)
{
  v2 = sub_2142F241C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413DD84(uint64_t a1)
{
  v2 = sub_2142F241C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413DDC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071F8, &qword_2146F4960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F241C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v24 = a2;
  v12 = v11;
  v13 = v9;
  sub_214698BE4(&v30);
  v15 = v30;
  v14 = v31;
  v25 = v13;
  v29[0] = v13;
  v29[1] = v12;
  v27 = v12;
  v28 = v33;
  v16 = v34;
  v36 = v34;
  v30 = 0x2E444970756F7247;
  v31 = 0xEA00000000006469;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v26 = v14;
  v17 = v15(v29, &v36, &v30);
  v35 = v16;
  v23 = v15;
  if (v17)
  {

    (*(v6 + 8))(v8, v5);

    v18 = v26;

    v19 = v24;
    *v24 = v23;
    v19[1] = v18;
    v20 = v27;
    v19[2] = v25;
    v19[3] = v20;
    *(v19 + 32) = v35;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v21 = 0x2E444970756F7247;
  v21[1] = 0xEA00000000006469;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413E164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  sub_213FDCA18(a3, a4);
  v30 = a5;
  v31 = a6;
  sub_213FDCA18(a5, a6);
  sub_213FDCA18(a7, a8);
  sub_213FDCA18(a10, a11);
  sub_2144B95DC(&v32);
  v18 = v32;
  v19 = v33;
  v20 = v34;
  v21 = v35;
  v46[0] = a1;
  v46[1] = a2;
  v27 = v36;
  v48 = v36;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478E370;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  sub_213FDC9D0(v20, v21);
  v22 = v18(v46, &v48, &v32);
  if (v28)
  {

    sub_213FDC6BC(a10, a11);
    sub_213FDC6BC(a7, a8);
    v25 = a11;
  }

  else
  {
    if (v22)
    {
      sub_213FDC6D0(v20, v21);
      sub_213FDC6BC(a10, a11);
      sub_213FDC6BC(a7, a8);
      sub_213FDC6BC(v30, v31);
      sub_213FDC6BC(a3, a4);

      result = sub_213FDC6D0(v20, v21);
      *a9 = v18;
      *(a9 + 8) = v19;
      *(a9 + 16) = a1;
      *(a9 + 24) = a2;
      *(a9 + 32) = v27;
      *(a9 + 40) = a3;
      *(a9 + 48) = a4;
      *(a9 + 56) = v30;
      *(a9 + 64) = v31;
      *(a9 + 72) = a7;
      *(a9 + 80) = a8;
      *(a9 + 88) = a10;
      *(a9 + 96) = a11;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000001CLL;
    v24[1] = 0x800000021478E370;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = a11;
    sub_213FDC6BC(a10, a11);
    sub_213FDC6BC(a7, a8);
  }

  sub_213FDC6BC(v30, v31);
  sub_213FDC6BC(a3, a4);

  sub_213FDC6D0(v20, v21);
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v27;
  *v37 = *v47;
  *&v37[3] = *&v47[3];
  v38 = a3;
  v39 = a4;
  v40 = v30;
  v41 = v31;
  v42 = a7;
  v43 = a8;
  v44 = a10;
  v45 = v25;
  return sub_2142F2470(&v32);
}

uint64_t sub_21413E4A4()
{
  v1 = *v0;
  v2 = 1145656661;
  v3 = 0x6F666E496C6C6163;
  v4 = 7221858;
  if (v1 != 3)
  {
    v4 = 7811682;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F6C42616964656DLL;
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

uint64_t sub_21413E538@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214366784(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21413E560(uint64_t a1)
{
  v2 = sub_2142F24C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413E59C(uint64_t a1)
{
  v2 = sub_2142F24C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413E5D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907210, &qword_2146F4970);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F24C4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v95);
  }

  v67 = a2;
  v68 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v69) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v11 = v76;
  v10 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v69) = 1;
  v12 = sub_2142E1278();
  sub_2146DA1C8();
  v66 = v10;
  v13 = v12;
  v15 = v76;
  v14 = v77;
  LOBYTE(v69) = 2;
  v65 = v13;
  sub_2146DA1C8();
  v63 = v15;
  v64 = v14;
  v17 = v76;
  v16 = v77;
  LOBYTE(v69) = 3;
  sub_2146DA1C8();
  v60 = v11;
  v61 = v16;
  v62 = v17;
  v19 = v76;
  v18 = v77;
  v91 = 4;
  sub_2146DA1C8();
  v21 = v18;
  v22 = v92;
  v23 = v93;
  sub_213FDCA18(v63, v64);
  sub_213FDCA18(v62, v61);
  v59 = v19;
  v56 = v21;
  sub_213FDCA18(v19, v21);
  v65 = v22;
  v58 = v23;
  sub_213FDCA18(v22, v23);
  sub_2144B95DC(&v76);
  v25 = v76;
  v24 = v77;
  v26 = v78;
  v27 = v79;
  v90[0] = v60;
  v90[1] = v66;
  v55 = v80;
  LOBYTE(v69) = v80;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478E370;
  v78 = 0xD00000000000001CLL;
  v79 = 0x800000021478A360;

  v53 = v27;
  v54 = v26;
  sub_213FDC9D0(v26, v27);
  v52 = v24;
  v57 = v25;
  v28 = v25(v90, &v69, &v76);
  v29 = v58;
  v30 = v65;
  if (v28)
  {
    sub_213FDC6D0(v54, v53);

    sub_213FDC6BC(v30, v29);
    v31 = v59;
    v32 = v56;
    sub_213FDC6BC(v59, v56);
    v33 = v62;
    sub_213FDC6BC(v62, v61);
    v34 = v63;
    sub_213FDC6BC(v63, v64);
    (*(v68 + 8))(v8, v5);
    v35 = v52;

    sub_213FDC6D0(v54, v53);
    *&v69 = v57;
    *(&v69 + 1) = v35;
    v36 = v61;
    *&v70 = v60;
    *(&v70 + 1) = v66;
    LOBYTE(v71) = v55;
    v37 = v64;
    *(&v71 + 1) = v34;
    *&v72 = v64;
    *(&v72 + 1) = v33;
    *&v73 = v61;
    *(&v73 + 1) = v31;
    *&v74 = v32;
    v38 = v58;
    *(&v74 + 1) = v65;
    v75 = v58;
    v39 = v67;
    *(v67 + 96) = v58;
    v40 = v74;
    v39[4] = v73;
    v39[5] = v40;
    v41 = v70;
    *v39 = v69;
    v39[1] = v41;
    v42 = v72;
    v39[2] = v71;
    v39[3] = v42;
    sub_2142F2518(&v69, &v76);
    __swift_destroy_boxed_opaque_existential_1(v95);
    v76 = v57;
    v77 = v35;
    v78 = v60;
    v79 = v66;
    v80 = v55;
    v82 = v34;
    v83 = v37;
    v84 = v33;
    v85 = v36;
    v86 = v59;
    v87 = v56;
    v88 = v65;
    v89 = v38;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000001CLL;
    v43[1] = 0x800000021478E370;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v30, v29);
    v44 = v62;
    v45 = v56;
    sub_213FDC6BC(v59, v56);
    v46 = v61;
    sub_213FDC6BC(v44, v61);
    v47 = v63;
    v48 = v64;
    sub_213FDC6BC(v63, v64);
    (*(v68 + 8))(v8, v5);
    v49 = v52;

    v51 = v53;
    v50 = v54;
    sub_213FDC6D0(v54, v53);
    __swift_destroy_boxed_opaque_existential_1(v95);
    v76 = v57;
    v77 = v49;
    v78 = v50;
    v79 = v51;
    v80 = v55;
    *v81 = v94[0];
    *&v81[3] = *(v94 + 3);
    v82 = v47;
    v83 = v48;
    v84 = v62;
    v85 = v46;
    v86 = v59;
    v87 = v45;
    v88 = v65;
    v89 = v58;
  }

  return sub_2142F2470(&v76);
}

uint64_t sub_21413EC7C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907220, &qword_2146F4978);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[8];
  v21 = v1[7];
  v22 = v8;
  v11 = v1[10];
  v19 = v1[9];
  v20 = v10;
  v12 = v1[12];
  v17 = v1[11];
  v18 = v11;
  v16 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F24C4();
  sub_2146DAA28();
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v25 = v7;
    v26 = v6;
    v27 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v13 = v23;
    sub_2146DA388();
    if (!v13)
    {
      v25 = v22;
      v26 = v9;
      v27 = 1;
      sub_213FDCA18(v22, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v25, v26);
      v25 = v21;
      v26 = v20;
      v27 = 2;
      sub_213FDCA18(v21, v20);
      sub_2146DA388();
      sub_213FDC6BC(v25, v26);
      v25 = v19;
      v26 = v18;
      v27 = 3;
      sub_213FDCA18(v19, v18);
      sub_2146DA388();
      sub_213FDC6BC(v25, v26);
      v25 = v17;
      v26 = v16;
      v27 = 4;
      sub_213FDCA18(v17, v16);
      sub_2146DA388();
      sub_213FDC6BC(v25, v26);
    }

    return (*(v24 + 8))(v5, v3);
  }

  return result;
}

void *sub_21413EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, void *, _BYTE *), char a10, uint64_t a11, __int128 *a12, uint64_t (*a13)(void, void *, _BYTE *), const void *a14, uint64_t a15, unint64_t a16, uint64_t (*a17)(void, void *, _BYTE *), char a18)
{
  v19 = MEMORY[0x28223BE20](a1);
  v82 = v20;
  v106 = v21;
  v83 = v22;
  v71 = v24;
  v72 = v23;
  v100 = v25;
  v27 = v26;
  v29 = v28;
  v30 = a12[2];
  v152 = a12[3];
  v31 = a12[5];
  v153 = a12[4];
  v154 = v31;
  v32 = a12[1];
  v149 = *a12;
  v150 = v32;
  v81 = *v19;
  v155 = *(a12 + 12);
  v151 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_214059900;
  *(v34 + 24) = 0;
  *(v33 + 32) = v34;
  sub_214042B80(v33, &v140);
  v35 = v140;
  v36 = v141;
  v73 = v142;
  v37 = v143;
  v38 = v144;
  sub_2144B983C(v138);
  v108 = v138[0];
  v110 = v138[1];
  v165 = v138[2];
  v109 = v139;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2146E9BF0;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_214059900;
  *(v40 + 24) = 0;
  *(v39 + 32) = v40;
  sub_214042B80(v39, v136);
  v102 = v136[0];
  v74 = v136[2];
  v104 = v136[1];
  v105 = v136[3];
  v103 = v137;
  sub_2144B99A8(v132);
  v98 = v132[0];
  v101 = v132[1];
  v75 = v132[2];
  v96 = v133;
  v41 = v134;
  v99 = v135;
  sub_2144B99E4(v130);
  v89 = v130[0];
  v97 = v130[1];
  v94 = v130[2];
  v84 = v131;
  sub_2144B9B54(v128);
  v91 = v128[0];
  v92 = v128[1];
  v88 = v128[2];
  v93 = v128[3];
  v90 = v129;
  sub_2144B9D2C(v124);
  v85 = v124[0];
  v87 = v124[1];
  v78 = v124[2];
  v77 = v125;
  v86 = v127;
  v79 = v106 & 1;
  v146 = v41;
  memcpy(&__src[7], a14, 0xB81uLL);
  v145 = v126;
  memcpy(v164, __src, 0xB88uLL);
  v42 = v126;
  v158 = v41;
  v147 = v126;
  v140 = v29;
  v141 = v27;
  v80 = v38;
  LOBYTE(v136[0]) = v38;
  *__src = 0xD00000000000001ELL;
  *&__src[8] = 0x800000021478E390;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  v107 = v36;
  v43 = v35(&v140, v136, __src);
  if (v18)
  {
    v44 = a15;
LABEL_6:
    sub_213FDC6BC(v44, a16);

    v47 = v89;

    v48 = v107;

    v49 = v73;
    v50 = v84;
LABEL_7:
    v51 = v88;
    v52 = v94;
    v54 = v74;
    v53 = v75;
LABEL_8:
    __src[0] = v81;
    *&__src[1] = *v163;
    *&__src[4] = *&v163[3];
    *&__src[8] = v35;
    *&__src[16] = v48;
    *&__src[24] = v49;
    *&__src[32] = v37;
    __src[40] = v80;
    *&__src[41] = *v162;
    *&__src[44] = *&v162[3];
    *&__src[48] = v108;
    *&__src[56] = v110;
    *&__src[64] = v165;
    __src[72] = v109;
    *&__src[73] = *v161;
    *&__src[76] = *&v161[3];
    *&__src[80] = v102;
    *&__src[88] = v104;
    *&__src[96] = v54;
    *&__src[104] = v105;
    __src[112] = v103;
    __src[113] = v79;
    __src[114] = v82;
    *&__src[115] = v159;
    __src[119] = v160;
    *&__src[120] = v98;
    *&__src[128] = v101;
    *&__src[136] = v53;
    __src[144] = v96;
    __src[145] = v158;
    __src[146] = v99;
    __src[151] = v157;
    *&__src[147] = v156;
    *&__src[152] = a11;
    *&__src[240] = v154;
    *&__src[224] = v153;
    *&__src[208] = v152;
    *&__src[192] = v151;
    *&__src[176] = v150;
    *&__src[160] = v149;
    *&__src[256] = v155;
    *&__src[264] = v47;
    *&__src[272] = v97;
    *&__src[280] = v52;
    __src[288] = v50;
    memcpy(&__src[289], v164, 0xB8FuLL);
    v112 = v91;
    v113 = v92;
    v114 = v51;
    v115 = v93;
    v116 = v90;
    *v117 = *v148;
    *&v117[3] = *&v148[3];
    v118 = v85;
    v119 = v87;
    v120 = v78;
    v121 = v77;
    v122 = v147;
    v123 = v86;
    return sub_2142F2574(__src);
  }

  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD00000000000001ELL;
    v46[1] = 0x800000021478E390;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();

    v44 = a15;
    goto LABEL_6;
  }

  v140 = v100;
  LOBYTE(v136[0]) = v109;
  *__src = 0xD000000000000023;
  *&__src[8] = 0x800000021478E3B0;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  v45 = v108(&v140, v136, __src);
  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD000000000000023;
    v58[1] = 0x800000021478E3B0;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a15, a16);

    v47 = v89;

    v37 = v27;
LABEL_13:
    v50 = v84;
    v49 = v29;
    v48 = v107;
    goto LABEL_7;
  }

  v140 = v72;
  v141 = v83;
  LOBYTE(v136[0]) = v103;
  *__src = 0xD00000000000001ALL;
  *&__src[8] = 0x800000021478E3E0;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  if ((v102(&v140, v136, __src) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD00000000000001ALL;
    v59[1] = 0x800000021478E3E0;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a15, a16);

    v47 = v89;

    v37 = v27;
    v165 = v100;
    goto LABEL_13;
  }

  v165 = 0xD00000000000001ALL;

  v140 = a9;
  v56 = v165;
  LOBYTE(v141) = a10 & 1;
  LOBYTE(v136[0]) = v99;
  *__src = v165;
  *&__src[8] = 0x800000021478E400;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  v57 = v98(&v140, v136, __src);
  if ((v57 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v61 = v56;
    v61[1] = 0x800000021478E400;
    v61[2] = 0xD00000000000001CLL;
    v61[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a15, a16);
    v47 = v89;

    v158 = v41 & 1;
    v37 = v27;
    v165 = v100;
    v54 = v72;
    v105 = v83;
    v50 = v84;
    v49 = v29;
    v48 = v107;
    v51 = v88;
    v52 = v94;
    v53 = v75;
    goto LABEL_8;
  }

  v96 = a10 & 1;

  v158 = 0;
  v140 = a13;
  v50 = v84;
  LOBYTE(v136[0]) = v84;
  *__src = 0xD000000000000023;
  *&__src[8] = 0x800000021478E420;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  sub_213FBE134(v94);
  v60 = v89(&v140, v136, __src);
  v47 = v89;
  if ((v60 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v62 = 0xD000000000000023;
    v62[1] = 0x800000021478E420;
    v62[2] = 0xD00000000000001CLL;
    v62[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a15, a16);

    v52 = v94;
    sub_213FB7170(v94);
    v37 = v27;
    v165 = v100;
    v54 = v72;
    v105 = v83;
    v53 = a9;
    v49 = v29;
    v48 = v107;
    v51 = v88;
    goto LABEL_8;
  }

  sub_213FB7170(v94);

  sub_213FB7170(v94);
  *__src = v91;
  *&__src[8] = v92;
  *&__src[16] = v88;
  *&__src[24] = v93;
  __src[32] = v90;

  sub_21404F7E0(v88, v93);
  sub_214032118(a15, a16, 2, v56, 0x800000021478E450, 0xD00000000000001CLL, 0x800000021478A360);

  v91 = *__src;
  v70 = *&__src[8];
  v76 = *&__src[16];
  v95 = *&__src[24];
  v90 = __src[32];

  sub_214032564(v88, v93);
  v140 = a17;
  LOBYTE(v141) = a18 & 1;
  LOBYTE(v136[0]) = v86;
  *__src = 0xD000000000000019;
  *&__src[8] = 0x800000021478E470;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  v63 = v85(&v140, v136, __src);
  if ((v63 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v69 = 0xD000000000000019;
    v69[1] = 0x800000021478E470;
    v69[2] = 0xD00000000000001CLL;
    v69[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a15, a16);

    v37 = v27;
    v147 = v42 & 1;
    v165 = v100;
    v54 = v72;
    v105 = v83;
    v53 = a9;
    v51 = v76;
    v52 = a13;
    v92 = v70;
    v93 = v95;
    v50 = v84;
    v47 = v89;
    v49 = v29;
    v48 = v107;
    goto LABEL_8;
  }

  sub_213FDC6BC(a15, a16);

  v147 = 0;
  v64 = v158;
  *v71 = v81;
  *(v71 + 1) = *v163;
  *(v71 + 4) = *&v163[3];
  *(v71 + 8) = v35;
  *(v71 + 16) = v107;
  *(v71 + 24) = v29;
  *(v71 + 32) = v27;
  *(v71 + 40) = v38;
  *(v71 + 41) = *v162;
  *(v71 + 44) = *&v162[3];
  *(v71 + 48) = v108;
  *(v71 + 56) = v110;
  *(v71 + 64) = v100;
  *(v71 + 72) = v109;
  *(v71 + 73) = *v161;
  *(v71 + 76) = *&v161[3];
  *(v71 + 80) = v102;
  *(v71 + 88) = v104;
  *(v71 + 96) = v72;
  *(v71 + 104) = v83;
  *(v71 + 112) = v103;
  *(v71 + 113) = v79;
  *(v71 + 114) = v82;
  *(v71 + 115) = v159;
  *(v71 + 119) = v160;
  *(v71 + 120) = v98;
  *(v71 + 128) = v101;
  *(v71 + 136) = a9;
  *(v71 + 144) = v96;
  *(v71 + 145) = v64;
  *(v71 + 146) = v99;
  *(v71 + 151) = v157;
  *(v71 + 147) = v156;
  *(v71 + 152) = a11;
  v65 = v155;
  v66 = v154;
  *(v71 + 224) = v153;
  *(v71 + 240) = v66;
  v67 = v152;
  *(v71 + 192) = v151;
  *(v71 + 208) = v67;
  v68 = v150;
  *(v71 + 160) = v149;
  *(v71 + 176) = v68;
  *(v71 + 256) = v65;
  *(v71 + 264) = v89;
  *(v71 + 272) = v97;
  *(v71 + 280) = a13;
  *(v71 + 288) = v84;
  result = memcpy((v71 + 289), v164, 0xB8FuLL);
  *(v71 + 3248) = v91;
  *(v71 + 3256) = v70;
  *(v71 + 3264) = v76;
  *(v71 + 3272) = v95;
  *(v71 + 3280) = v90;
  *(v71 + 3281) = *v148;
  *(v71 + 3284) = *&v148[3];
  *(v71 + 3288) = v85;
  *(v71 + 3296) = v87;
  *(v71 + 3304) = a17;
  *(v71 + 3312) = a18 & 1;
  *(v71 + 3313) = 0;
  *(v71 + 3314) = v86;
  return result;
}

unint64_t sub_214140008(char a1)
{
  result = 0x724774756F6E6166;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x496E6F6973736573;
      break;
    case 4:
      result = 0x616974696E497369;
      break;
    case 5:
      result = 0x4F73756C50557369;
      break;
    case 6:
      result = 0x6D617473656D6974;
      break;
    case 7:
    case 8:
      result = 0x7069636974726170;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6F43746E65696C63;
      break;
    case 11:
      result = 0x654B63696C627570;
      break;
    case 12:
      result = 0x65646F4D70617277;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2141401B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436693C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141401D8(uint64_t a1)
{
  v2 = sub_2142F25C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214140214(uint64_t a1)
{
  v2 = sub_2142F25C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214140250(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v217 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907228, &qword_2146F4980);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - v6;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2142F25C8();
  sub_2146DAA08();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  v104 = v2;
  v8 = v5;
  v105[0] = 0;
  sub_2142F261C();
  sub_2146DA1C8();
  v9 = v7;
  v10 = v106;
  LOBYTE(v106) = 1;
  v11 = sub_2146DA168();
  v13 = v12;
  v103 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  v105[0] = 2;
  sub_2142E15CC();
  sub_2146DA1C8();
  v102 = v10;
  v14 = v106;
  LOBYTE(v106) = 3;
  v99 = sub_2146DA168();
  v100 = v15;
  v101 = v14;
  LOBYTE(v106) = 4;
  LODWORD(v98) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v105[0] = 5;
  sub_2142E1378();
  sub_2146DA1C8();
  v97 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  v105[0] = 6;
  sub_2142E35EC();
  sub_2146DA1C8();
  v96 = v106;
  v17 = v107;
  LOBYTE(v106) = 7;
  v95 = sub_2146DA228();
  v191 = 8;
  sub_2142F2670();
  sub_2146DA1C8();
  v94 = v13;
  v188 = v196;
  v189 = v197;
  v190 = v198;
  v184 = v192;
  v185 = v193;
  v186 = v194;
  v187 = v195;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907248, &qword_2146F4988);
  v105[0] = 9;
  sub_2142F26C4();
  v18 = v4;
  v19 = v9;
  sub_2146DA1C8();
  v93 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907278, &qword_2146F49A0);
  v182[2951] = 10;
  sub_2142F2850();
  sub_2146DA1C8();
  memcpy(v182, v183, 0xB81uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v105[0] = 11;
  sub_2142E1278();
  sub_2146DA1C8();
  v91 = v106;
  v92 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  v179[2959] = 12;
  sub_2142E11FC();
  sub_2146DA1C8();
  v54 = v180;
  v55 = v181;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v20 = swift_allocObject();
  v83 = xmmword_2146E9BF0;
  *(v20 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214059900;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_2142F2518(&v184, &v106);
  sub_213FB2E54(v182, &v106, &qword_27C907278, &qword_2146F49A0);
  sub_214042B80(v20, &v106);
  v88 = v106;
  v90 = v107;
  v57 = v108;
  v60 = v109;
  v89 = v110;
  sub_2144B983C(v176);
  v84 = v176[0];
  v86 = v176[1];
  v87 = v176[2];
  v85 = v177;
  v22 = swift_allocObject();
  *(v22 + 16) = v83;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214059900;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, v105);
  v80 = *v105;
  v76 = *&v105[16];
  v82 = *&v105[8];
  *&v83 = *&v105[24];
  v81 = v105[32];
  sub_2144B99A8(v172);
  v77 = v172[0];
  v79 = v172[1];
  v71 = v172[2];
  v70 = v173;
  LOBYTE(v22) = v174;
  v78 = v175;
  sub_2144B99E4(v170);
  v72 = v170[0];
  v74 = v170[1];
  v75 = v170[2];
  v73 = v171;
  sub_2144B9B54(&v165);
  v65 = v165;
  v67 = v166;
  v68 = v167;
  v69 = v168;
  v66 = v169;
  sub_2144B9D2C(v161);
  v62 = v161[0];
  v64 = v161[1];
  v59 = v161[2];
  v58 = v162;
  v63 = v164;
  v61 = v98 & 1;
  v179[2958] = v22;
  v206 = v188;
  v207 = v189;
  v208 = v190;
  v202 = v184;
  v203 = v185;
  v204 = v186;
  v205 = v187;
  memcpy(&v179[7], v182, 0xB81uLL);
  v178 = v163;
  LODWORD(v56) = v22;
  v211 = v22;
  v53 = v163;
  v199 = v163;
  *v105 = v103;
  *&v105[8] = v94;
  LOBYTE(v165) = v89;
  v106 = 0xD00000000000001ELL;
  v107 = 0x800000021478E390;
  v108 = 0xD00000000000001CLL;
  v98 = 0x800000021478A360;
  v109 = 0x800000021478A360;
  v24 = v60;

  if (v88(v105, &v165, &v106))
  {
    v25 = v98;

    *v105 = v101;
    LOBYTE(v165) = v85;
    v106 = 0xD000000000000023;
    v107 = 0x800000021478E3B0;
    v108 = 0xD00000000000001CLL;
    v109 = v25;

    v26 = v84(v105, &v165, &v106);
    if (v26)
    {
      v29 = v98;

      *v105 = v99;
      *&v105[8] = v100;
      LOBYTE(v165) = v81;
      v106 = 0xD00000000000001ALL;
      v107 = 0x800000021478E3E0;
      v108 = 0xD00000000000001CLL;
      v109 = v29;

      v30 = v80(v105, &v165, &v106);
      if (v30)
      {
        v33 = v98;

        *v105 = v96;
        v105[8] = v17;
        LOBYTE(v165) = v78;
        v106 = 0xD00000000000001ALL;
        v107 = 0x800000021478E400;
        v108 = 0xD00000000000001CLL;
        v109 = v33;

        v34 = v77(v105, &v165, &v106);
        if (v34)
        {
          v36 = v98;

          v211 = 0;
          *v105 = v93;
          LOBYTE(v165) = v73;
          v106 = 0xD000000000000023;
          v107 = 0x800000021478E420;
          v108 = 0xD00000000000001CLL;
          v109 = v36;

          sub_213FBE134(v75);
          v37 = v72(v105, &v165, &v106);
          if (v37)
          {
            v39 = v75;
            sub_213FB7170(v75);

            sub_213FB7170(v39);
            v106 = v65;
            v40 = v68;
            v107 = v67;
            v108 = v68;
            v41 = v69;
            v109 = v69;
            LOBYTE(v110) = v66;

            sub_21404F7E0(v40, v41);
            sub_214032118(v91, v92, 2, 0xD00000000000001ALL, 0x800000021478E450, 0xD00000000000001CLL, v98);
            v44 = v98;

            v65 = v106;
            v56 = v107;
            v57 = v108;
            v60 = v109;
            v66 = v110;

            sub_214032564(v68, v69);
            v165 = v54;
            LOBYTE(v166) = v55;
            v105[0] = v63;
            v106 = 0xD000000000000019;
            v107 = 0x800000021478E470;
            v108 = 0xD00000000000001CLL;
            v109 = v44;

            v45 = v62(&v165, v105, &v106);
            if (v45)
            {
              sub_213FDC6BC(v91, v92);

              sub_2142F2470(&v184);
              sub_213FB2DF4(v182, &qword_27C907278, &qword_2146F49A0);
              (*(v8 + 8))(v19, v4);
              v46 = v64;

              v199 = 0;
              v105[0] = v102;
              *&v105[1] = v216[0];
              *&v105[4] = *(v216 + 3);
              *&v105[8] = v88;
              *&v105[16] = v90;
              *&v105[24] = v103;
              *&v105[32] = v94;
              v105[40] = v89;
              *&v105[41] = *v215;
              *&v105[44] = *&v215[3];
              *&v105[48] = v84;
              *&v105[56] = v86;
              *&v105[64] = v101;
              v105[72] = v85;
              *&v105[73] = *v214;
              *&v105[76] = *&v214[3];
              *&v105[80] = v80;
              *&v105[88] = v82;
              *&v105[96] = v99;
              *&v105[104] = v100;
              v105[112] = v81;
              v105[113] = v61;
              v105[114] = v97;
              *&v105[115] = v212;
              v105[119] = v213;
              *&v105[120] = v77;
              *&v105[128] = v79;
              *&v105[136] = v96;
              v52 = v17;
              v105[144] = v17;
              LODWORD(v98) = v211;
              v105[145] = v211;
              v105[146] = v78;
              v105[151] = v210;
              *&v105[147] = v209;
              *&v105[152] = v95;
              *&v105[240] = v207;
              *&v105[224] = v206;
              *&v105[208] = v205;
              *&v105[192] = v204;
              *&v105[176] = v203;
              *&v105[160] = v202;
              *&v105[256] = v208;
              *&v105[264] = v72;
              *&v105[272] = v74;
              *&v105[280] = v93;
              v105[288] = v73;
              memcpy(&v105[289], v179, 0xB88uLL);
              *&v105[3241] = *v201;
              *&v105[3244] = *&v201[3];
              v47 = v65;
              *&v105[3248] = v65;
              *&v105[3256] = v56;
              *&v105[3264] = v57;
              *&v105[3272] = v60;
              v105[3280] = v66;
              *&v105[3281] = *v200;
              *&v105[3284] = *&v200[3];
              v48 = v62;
              *&v105[3288] = v62;
              *&v105[3296] = v46;
              v49 = v54;
              *&v105[3304] = v54;
              v105[3312] = v55;
              LODWORD(v92) = 0;
              v105[3313] = 0;
              v50 = v63;
              v105[3314] = v63;
              memcpy(v217, v105, 0xCF3uLL);
              sub_2142F2928(v105, &v106);
              __swift_destroy_boxed_opaque_existential_1(v104);
              LOBYTE(v106) = v102;
              *(&v106 + 1) = v216[0];
              HIDWORD(v106) = *(v216 + 3);
              v107 = v88;
              v108 = v90;
              v109 = v103;
              v110 = v94;
              v111 = v89;
              *v112 = *v215;
              *&v112[3] = *&v215[3];
              v113 = v84;
              v114 = v86;
              v115 = v101;
              v116 = v85;
              *v117 = *v214;
              *&v117[3] = *&v214[3];
              v118 = v80;
              v119 = v82;
              v120 = v99;
              v121 = v100;
              v122 = v81;
              v123 = v61;
              v124 = v97;
              v125 = v212;
              v126 = v213;
              v127 = v77;
              v128 = v79;
              v129 = v96;
              v130 = v52;
              v131 = v98;
              v132 = v78;
              v134 = v210;
              v133 = v209;
              v135 = v95;
              v142 = v208;
              v140 = v206;
              v141 = v207;
              v138 = v204;
              v139 = v205;
              v136 = v202;
              v137 = v203;
              v143 = v72;
              v144 = v74;
              v145 = v93;
              v146 = v73;
              memcpy(v147, v179, sizeof(v147));
              *v148 = *v201;
              *&v148[3] = *&v201[3];
              v149 = v47;
              v150 = v56;
              v151 = v57;
              v152 = v60;
              v153 = v66;
              *v154 = *v200;
              *&v154[3] = *&v200[3];
              v155 = v48;
              v156 = v64;
              v157 = v49;
              v158 = v55;
              v159 = v92;
              v160 = v50;
              return sub_2142F2574(&v106);
            }

            sub_214031C4C();
            swift_allocError();
            *v51 = 0xD000000000000019;
            v51[1] = 0x800000021478E470;
            v51[2] = 0xD00000000000001CLL;
            v51[3] = v98;
            swift_willThrow();
            sub_213FDC6BC(v91, v92);
            sub_2142F2470(&v184);
            sub_213FB2DF4(v182, &qword_27C907278, &qword_2146F49A0);
            (*(v8 + 8))(v19, v4);

            v87 = v101;
            v199 = v53;
            *&v83 = v100;
            v71 = v96;
            v70 = v17;
            v24 = v94;
            v75 = v93;
            v76 = v99;
            v67 = v56;
            v68 = v57;
            v69 = v60;
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v42 = 0xD000000000000023;
            v42[1] = 0x800000021478E420;
            v43 = v98;
            v42[2] = 0xD00000000000001CLL;
            v42[3] = v43;
            swift_willThrow();

            sub_213FDC6BC(v91, v92);

            sub_2142F2470(&v184);
            sub_213FB2DF4(v182, &qword_27C907278, &qword_2146F49A0);
            (*(v8 + 8))(v19, v18);

            sub_213FB7170(v75);
            v24 = v94;
            v87 = v101;
            v76 = v99;
            *&v83 = v100;
            v71 = v96;
            v70 = v17;
          }
        }

        else
        {

          sub_214031C4C();
          swift_allocError();
          *v38 = 0xD00000000000001ALL;
          v38[1] = 0x800000021478E400;
          v38[2] = 0xD00000000000001CLL;
          v38[3] = v98;
          swift_willThrow();
          sub_213FDC6BC(v91, v92);
          sub_2142F2470(&v184);
          sub_213FB2DF4(v182, &qword_27C907278, &qword_2146F49A0);
          (*(v8 + 8))(v19, v4);

          v211 = v56 & 1;
          v24 = v94;
          v87 = v101;
          v76 = v99;
          *&v83 = v100;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v35 = 0xD00000000000001ALL;
        v35[1] = 0x800000021478E3E0;
        v35[2] = 0xD00000000000001CLL;
        v35[3] = v98;
        swift_willThrow();

        sub_213FDC6BC(v91, v92);
        sub_2142F2470(&v184);
        sub_213FB2DF4(v182, &qword_27C907278, &qword_2146F49A0);
        (*(v8 + 8))(v19, v4);

        v24 = v94;
        v87 = v101;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v31 = 0xD000000000000023;
      v31[1] = 0x800000021478E3B0;
      v32 = v98;
      v31[2] = 0xD00000000000001CLL;
      v31[3] = v32;
      swift_willThrow();

      sub_213FDC6BC(v91, v92);
      sub_2142F2470(&v184);
      sub_213FB2DF4(v182, &qword_27C907278, &qword_2146F49A0);
      (*(v8 + 8))(v19, v4);

      v24 = v94;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000001ELL;
    v27[1] = 0x800000021478E390;
    v28 = v98;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = v28;
    swift_willThrow();

    sub_213FDC6BC(v91, v92);
    sub_2142F2470(&v184);
    sub_213FB2DF4(v182, &qword_27C907278, &qword_2146F49A0);
    (*(v8 + 8))(v19, v4);

    v103 = v57;
  }

  __swift_destroy_boxed_opaque_existential_1(v104);
  LOBYTE(v106) = v102;
  *(&v106 + 1) = v216[0];
  HIDWORD(v106) = *(v216 + 3);
  v107 = v88;
  v108 = v90;
  v109 = v103;
  v110 = v24;
  v111 = v89;
  *v112 = *v215;
  *&v112[3] = *&v215[3];
  v113 = v84;
  v114 = v86;
  v115 = v87;
  v116 = v85;
  *v117 = *v214;
  *&v117[3] = *&v214[3];
  v118 = v80;
  v119 = v82;
  v120 = v76;
  v121 = v83;
  v122 = v81;
  v123 = v61;
  v124 = v97;
  v125 = v212;
  v126 = v213;
  v127 = v77;
  v128 = v79;
  v129 = v71;
  v130 = v70;
  v131 = v211;
  v132 = v78;
  v134 = v210;
  v133 = v209;
  v135 = v95;
  v142 = v208;
  v140 = v206;
  v141 = v207;
  v138 = v204;
  v139 = v205;
  v136 = v202;
  v137 = v203;
  v143 = v72;
  v144 = v74;
  v145 = v75;
  v146 = v73;
  memcpy(v147, v179, sizeof(v147));
  *v148 = *v201;
  *&v148[3] = *&v201[3];
  v149 = v65;
  v150 = v67;
  v151 = v68;
  v152 = v69;
  v153 = v66;
  *v154 = *v200;
  *&v154[3] = *&v200[3];
  v155 = v62;
  v156 = v64;
  v157 = v59;
  v158 = v58;
  v159 = v199;
  v160 = v63;
  return sub_2142F2574(&v106);
}

uint64_t sub_214141E54(uint64_t a1)
{
  v39 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907290, &qword_2146F49A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *(v1 + 12);
  v58 = *(v1 + 13);
  v9 = *(v1 + 15);
  v59 = *(v1 + 14);
  v60 = v9;
  v10 = *(v1 + 11);
  v55 = *(v1 + 10);
  v56 = v10;
  v11 = *v1;
  v12 = *(v1 + 4);
  v38 = *(v1 + 3);
  v63 = v12;
  v13 = *(v1 + 8);
  v14 = *(v1 + 13);
  v33 = *(v1 + 12);
  v36 = v14;
  v37 = v13;
  v34 = v1[113];
  LODWORD(v13) = v1[114];
  v30 = *(v1 + 17);
  v31 = v1[144];
  v32 = v13;
  v29 = v1[145];
  v35 = *(v1 + 19);
  v61 = *(v1 + 32);
  v57 = v8;
  v28 = *(v1 + 35);
  memcpy(v62, v1 + 296, 0xB81uLL);
  v15 = *(v1 + 409);
  v26 = *(v1 + 408);
  v27 = v15;
  v24 = *(v1 + 413);
  v25 = v1[3312];
  v23 = v1[3313];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2142F25C8();
  v16 = v7;
  sub_2146DAA28();
  LOBYTE(v44[0]) = v11;
  v43[0] = 0;
  sub_2142F2984();
  v17 = v39;
  sub_2146DA388();
  if (v17)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v19 = v37;
  v20 = v36;
  v22 = v5;
  if (!v63 || (LOBYTE(v44[0]) = 1, , sub_2146DA328(), , !v19) || (v44[0] = v19, v43[0] = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0), sub_2142E1F00(), sub_2146DA388(), !v20) || (LOBYTE(v44[0]) = 3, , sub_2146DA328(), , LOBYTE(v44[0]) = 4, sub_2146DA338(), LOBYTE(v44[0]) = v32, v43[0] = 5, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0), sub_2142E1D30(), sub_2146DA388(), (v29 & 1) != 0) || (v44[0] = v30, LOBYTE(v44[1]) = v31 & 1, v43[0] = 6, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0), sub_2142E37F4(), sub_2146DA388(), LOBYTE(v44[0]) = 7, sub_2146DA3E8(), v51 = v58, v52 = v59, v53 = v60, v54 = v61, v48 = v55, v49 = v56, v50 = v57, v47 = 8, sub_2142F2518(&v55, v44), sub_2142F29D8(), sub_2146DA388(), v45[3] = v51, v45[4] = v52, v45[5] = v53, v46 = v54, v45[0] = v48, v45[1] = v49, v45[2] = v50, sub_2142F2470(v45), v28 == 1) || (v44[0] = v28, v43[0] = 9, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907248, &qword_2146F4988), sub_2142F2A2C(), sub_2146DA388(), memcpy(v44, v62, 0xB81uLL), v43[2951] = 10, sub_213FB2E54(v62, v43, &qword_27C907278, &qword_2146F49A0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907278, &qword_2146F49A0), sub_2142F2BB8(), sub_2146DA388(), memcpy(v43, v44, 0xB81uLL), sub_213FB2DF4(v43, &qword_27C907278, &qword_2146F49A0), v27 >> 60 == 11) || (v41 = v26, v42 = v27, v40 = 11, sub_213FDCA18(v26, v27), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0), sub_2142E1CAC(), sub_2146DA388(), sub_213FDC6BC(v41, v42), (v23 & 1) != 0))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v41 = v24;
    LOBYTE(v42) = v25 & 1;
    v40 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    return (*(v22 + 8))(v16, v4);
  }

  return result;
}