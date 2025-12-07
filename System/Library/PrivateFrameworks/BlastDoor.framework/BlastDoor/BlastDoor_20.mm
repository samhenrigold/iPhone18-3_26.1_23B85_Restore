uint64_t sub_2141CE5EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908FE8, &qword_2146F5530);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214302BDC();
  sub_2146DAA28();
  if (*(v3 + 24))
  {
    v17 = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {

      v10 = type metadata accessor for IMDispositionNotification(0);
      v16 = 1;
      sub_2146D8B08();
      sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
      sub_2146DA388();
      v15 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      sub_2142E2910();
      sub_2146DA388();
      v14 = 3;
      sub_2146DA388();
      v13 = *(v3 + *(v10 + 32));
      v12 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908FD0, &qword_2146F5528);
      sub_214302D08();
      sub_2146DA388();
      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141CE944@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2140676DC;
  *(v11 + 24) = 0;
  *(v10 + 32) = v11;
  sub_214042B80(v10, &v55);
  v12 = v55;
  v13 = v56;
  v14 = v58;
  v39 = v57;
  v15 = v59;
  sub_21453594C(&v76);
  v51 = v76;
  v83 = v77;
  v40 = v78;
  v53 = v79;
  v54 = v80;
  sub_214535C88(v74);
  v46 = v74[1];
  v47 = v74[0];
  v41 = v74[2];
  v42 = v74[3];
  v50 = v75;
  v76 = a1;
  v77 = a2;
  v45 = v15;
  LOBYTE(v74[0]) = v15;
  v55 = 0xD000000000000012;
  v56 = 0x80000002147900D0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  v16 = v43;
  v44 = v12;
  v17 = v12(&v76, v74, &v55);
  if (v16)
  {

    v18 = v50;
    v19 = v51;
    v20 = v13;
LABEL_6:

    v24 = v39;
    v25 = v40;
    v26 = v46;
    v22 = v47;
    v27 = v42;
    v28 = v53;
LABEL_7:
    v55 = v44;
    v56 = v20;
    v57 = v24;
    v58 = v14;
    v59 = v45;
    v60 = v48;
    v61 = *&v81[7];
    v62 = v82;
    v63 = v19;
    v64 = v83;
    v65 = v25;
    v66 = v28;
    v67 = v54;
    *v68 = *v81;
    *&v68[3] = *&v81[3];
    v69 = v22;
    v70 = v26;
    v71 = v41;
    v72 = v27;
    v73 = v18;
    return sub_214302DE0(&v55);
  }

  v35 = a1;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000012;
    v23[1] = 0x80000002147900D0;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v50;
    v19 = v51;
    v20 = v13;
    goto LABEL_6;
  }

  v20 = v13;

  v76 = a4;
  v77 = a5;
  LOBYTE(v74[0]) = v54;
  v55 = 0xD000000000000016;
  v56 = 0x80000002147900F0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  v21 = v51(&v76, v74, &v55);
  v19 = v51;
  v22 = v47;
  v26 = v46;
  v27 = v42;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000016;
    v31[1] = 0x80000002147900F0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v14 = a2;
    v18 = v50;
    v28 = v53;

    v24 = v35;
    v25 = v40;
    goto LABEL_7;
  }

  v76 = a6;
  v77 = a7;
  LOBYTE(v74[0]) = v50;
  v55 = 0xD000000000000014;
  v56 = 0x8000000214790110;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  v30 = v47(&v76, v74, &v55);
  v32 = a2;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000014;
    v34[1] = 0x8000000214790110;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v50;

    v14 = v32;
    v25 = a4;
    v19 = v51;
    v28 = a5;
    v24 = v35;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a8 = v44;
  *(a8 + 8) = v13;
  *(a8 + 16) = v35;
  *(a8 + 24) = a2;
  *(a8 + 32) = v45;
  *(a8 + 33) = v48;
  v33 = v83;
  *(a8 + 40) = v51;
  *(a8 + 48) = v33;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = v54;
  *(a8 + 80) = v47;
  *(a8 + 88) = v46;
  *(a8 + 96) = a6;
  *(a8 + 104) = a7;
  *(a8 + 112) = v50;
  return result;
}

uint64_t sub_2141CEF5C()
{
  v1 = 0x496567617373656DLL;
  v2 = 0x534952556D6F7266;
  if (*v0 != 2)
  {
    v2 = 0x7274534952556F74;
  }

  if (*v0)
  {
    v1 = 0x746C75736572;
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

uint64_t sub_2141CEFEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437345C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141CF014(uint64_t a1)
{
  v2 = sub_214302E34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CF050(uint64_t a1)
{
  v2 = sub_214302E34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CF08C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909000, &qword_2146F5538);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214302E34();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  v10 = v6;
  LOBYTE(v75) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v66 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909010, &qword_2146F5540);
  LOBYTE(v67) = 1;
  sub_214302E88();
  sub_2146DA1C8();
  v14 = v75;
  LOBYTE(v75) = 2;
  v16 = sub_2146DA168();
  v65 = v17;
  v64 = v14;
  v98 = 3;
  v45 = sub_2146DA168();
  v47 = v16;
  v59 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2140676DC;
  *(v20 + 24) = 0;
  *(v19 + 32) = v20;
  sub_214042B80(v19, &v75);
  v63 = v75;
  v48 = v76;
  v62 = v77;
  LODWORD(v19) = v78;
  sub_21453594C(&v67);
  v57 = v67;
  v49 = v68;
  v60 = *(&v67 + 1);
  v61 = *(&v68 + 1);
  v58 = v69;
  sub_214535C88(&v93);
  v56 = v94;
  v50 = v95;
  v54 = v93;
  v55 = v96;
  v52 = v19;
  v53 = v97;
  *&v67 = v66;
  *(&v67 + 1) = v13;
  LOBYTE(v93) = v19;
  v46 = 0xD000000000000012;
  *&v75 = 0xD000000000000012;
  *(&v75 + 1) = 0x80000002147900D0;
  v51 = 0x80000002147900D0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v21 = (v63)(&v67, &v93, &v75);
  v22 = v51;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = v46;
    v25[1] = v22;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    v26 = v62;
    v27 = *(&v63 + 1);
    v59 = *(&v63 + 1);
    v66 = v48;
LABEL_8:
    v28 = v49;
    goto LABEL_9;
  }

  v48 = 0;

  *&v67 = v47;
  *(&v67 + 1) = v65;
  LOBYTE(v93) = v58;
  *&v75 = 0xD000000000000016;
  *(&v75 + 1) = 0x80000002147900F0;
  v62 = 0x80000002147900F0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v23 = v48;
  v24 = v57(&v67, &v93, &v75);
  if (v23)
  {

LABEL_14:

    v59 = v60;
    v26 = v13;
    v27 = *(&v63 + 1);
    goto LABEL_8;
  }

  if ((v24 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    v30 = v62;
    *v31 = 0xD000000000000016;
    v31[1] = v30;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_14;
  }

  v93 = v45;
  v94 = v59;
  LOBYTE(v67) = v53;
  v61 = 0xD000000000000014;
  v62 = 0x800000021478A360;
  *&v75 = 0xD000000000000014;
  *(&v75 + 1) = 0x8000000214790110;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v29 = v54(&v93, &v67, &v75);
  v32 = v62;
  if (v29)
  {

    (*(v10 + 8))(v8, v5);

    v33 = v56;

    v67 = v63;
    v34 = v66;
    *&v68 = v66;
    *(&v68 + 1) = v13;
    LOBYTE(v69) = v52;
    BYTE1(v69) = v64;
    *(&v69 + 2) = v100;
    WORD3(v69) = v101;
    *(&v69 + 1) = v57;
    *&v70 = v60;
    v35 = v47;
    *(&v70 + 1) = v47;
    *&v71 = v65;
    BYTE8(v71) = v58;
    *(&v71 + 9) = *v99;
    HIDWORD(v71) = *&v99[3];
    *&v72 = v54;
    *(&v72 + 1) = v33;
    *&v73 = v45;
    *(&v73 + 1) = v59;
    v36 = v53;
    v74 = v53;
    v37 = v71;
    v38 = v72;
    v39 = v73;
    *(a2 + 112) = v53;
    *(a2 + 80) = v38;
    *(a2 + 96) = v39;
    v40 = v67;
    v41 = v68;
    v42 = v69;
    *(a2 + 48) = v70;
    *(a2 + 64) = v37;
    *(a2 + 16) = v41;
    *(a2 + 32) = v42;
    *a2 = v40;
    sub_214302F60(&v67, &v75);
    __swift_destroy_boxed_opaque_existential_1(v102);
    v75 = v63;
    v76 = v34;
    v77 = v13;
    v78 = v52;
    v79 = v64;
    v80 = v100;
    v81 = v101;
    v82 = v57;
    v83 = v60;
    v84 = v35;
    v85 = v65;
    v86 = v58;
    *v87 = *v99;
    *&v87[3] = *&v99[3];
    v88 = v54;
    v89 = v33;
    v90 = v45;
    v91 = v59;
    v92 = v36;
    return sub_214302DE0(&v75);
  }

  sub_214031C4C();
  swift_allocError();
  *v43 = v61;
  v43[1] = 0x8000000214790110;
  v43[2] = 0xD00000000000001CLL;
  v43[3] = v32;
  swift_willThrow();

  v59 = v56;
  v26 = v13;
  v28 = v47;
  v61 = v65;
  v27 = *(&v63 + 1);
LABEL_9:
  (*(v10 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(v102);
  *&v75 = v63;
  *(&v75 + 1) = v27;
  v76 = v66;
  v77 = v26;
  v78 = v52;
  v79 = v64;
  v80 = v100;
  v81 = v101;
  v82 = v57;
  v83 = v60;
  v84 = v28;
  v85 = v61;
  v86 = v58;
  *v87 = *v99;
  *&v87[3] = *&v99[3];
  v88 = v54;
  v89 = v56;
  v90 = v50;
  v91 = v55;
  v92 = v53;
  return sub_214302DE0(&v75);
}

uint64_t sub_2141CF974(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909028, &qword_2146F5548);
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *(v1 + 24);
  v15 = *(v1 + 33);
  v8 = *(v1 + 64);
  v13 = *(v1 + 56);
  v14 = v8;
  v9 = *(v1 + 104);
  v11 = *(v1 + 96);
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214302E34();
  sub_2146DAA28();
  if (v7)
  {
    v21 = 0;

    sub_2146DA328();
    if (v2)
    {
LABEL_3:
      (*(v16 + 8))(v6, v4);
    }

    v20 = v15;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909010, &qword_2146F5540);
    sub_214302FBC();
    sub_2146DA388();
    if (v14)
    {
      v18 = 2;

      sub_2146DA328();

      if (v12)
      {
        v17 = 3;

        sub_2146DA328();
        goto LABEL_3;
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_2141CFC80@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_213FDC8D0;
  v8[3] = 0;
  v8[4] = 1;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F670;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v14);
  v9 = v15;

  sub_213FDCA18(v9.n128_i64[0], v9.n128_u64[1]);
  sub_214032024(a1, a2, 2, 0xD00000000000001DLL, 0x8000000214790130, 0xD00000000000001CLL, 0x800000021478A360);

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

uint64_t sub_2141CFE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F666E49656C6966 && a2 == 0xED00006F746F7250)
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

uint64_t sub_2141CFF24(uint64_t a1)
{
  v2 = sub_214303094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CFF60(uint64_t a1)
{
  v2 = sub_214303094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CFF9C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909040, &qword_2146F5550);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303094();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406116C();
    sub_2146DA1C8();
    v19[0] = a2;
    v10 = *(&v22 + 1);
    v25 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
    v12 = swift_allocObject();
    v13 = swift_allocObject();
    v13[2] = sub_213FDC8D0;
    v13[3] = 0;
    v13[4] = 1;
    v13[5] = sub_21403C354;
    v13[6] = 0;
    *(v12 + 16) = sub_21438F670;
    *(v12 + 24) = v13;
    *(inited + 32) = v12;
    sub_214042CD0(inited, &v22);
    v14 = v23;
    v20 = *(&v23 + 1);
    v21 = v23;
    v19[1] = "IMRevoke.toURIString";
    v19[2] = *(&v22 + 1);

    sub_213FDCA18(v14, *(&v14 + 1));
    v15 = v25;
    sub_214032024(v25, v10, 2, 0xD00000000000001DLL, 0x8000000214790130, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v15, v10);
    (*(v6 + 8))(v8, v5);

    sub_213FDC6BC(v21, v20);
    v16 = v24;
    v17 = v23;
    v18 = v19[0];
    *v19[0] = v22;
    *(v18 + 16) = v17;
    *(v18 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_2141D034C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

uint64_t sub_2141D0388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
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

uint64_t sub_2141D0414(uint64_t a1)
{
  v2 = sub_2143030E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D0450(uint64_t a1)
{
  v2 = sub_2143030E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D048C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909058, &qword_2146F5560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143030E8();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21430313C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    a2[2] = v12[0];
    *(a2 + 42) = *(v12 + 10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D060C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909070, &qword_2146F5568);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = v1[1];
  v14 = *v1;
  v15 = v7;
  v16[0] = v1[2];
  *(v16 + 10) = *(v1 + 42);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303190(&v14, &v11);
  sub_2143030E8();
  sub_2146DAA28();
  v11 = v14;
  v12 = v15;
  v13[0] = v16[0];
  *(v13 + 10) = *(v16 + 10);
  sub_2143031EC();
  sub_2146DA388();
  v9[0] = v11;
  v9[1] = v12;
  v10[0] = v13[0];
  *(v10 + 10) = *(v13 + 10);
  sub_214303240(v9);
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_2141D07F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

uint64_t sub_2141D0828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x766972506F6567 && a2 == 0xE700000000000000)
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

uint64_t sub_2141D08B0(uint64_t a1)
{
  v2 = sub_214303294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D08EC(uint64_t a1)
{
  v2 = sub_214303294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D0928@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909080, &qword_2146F5570);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303294();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2143032E8();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    a2[2] = v12[0];
    *(a2 + 42) = *(v12 + 10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D0AA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909098, &qword_2146F5578);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = v1[1];
  v14 = *v1;
  v15 = v7;
  v16[0] = v1[2];
  *(v16 + 10) = *(v1 + 42);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430333C(&v14, &v11);
  sub_214303294();
  sub_2146DAA28();
  v11 = v14;
  v12 = v15;
  v13[0] = v16[0];
  *(v13 + 10) = *(v16 + 10);
  sub_214303398();
  sub_2146DA388();
  v9[0] = v11;
  v9[1] = v12;
  v10[0] = v13[0];
  *(v10 + 10) = *(v13 + 10);
  sub_2143033EC(v9);
  return (*(v4 + 8))(v6, v3);
}

__n128 RCSEnvelope.init(with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

uint64_t sub_2141D0CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61636F4C68737570 && a2 == 0xEC0000006E6F6974)
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

uint64_t sub_2141D0D58(uint64_t a1)
{
  v2 = sub_214303440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D0D94(uint64_t a1)
{
  v2 = sub_214303440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RCSEnvelope.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090A8, &qword_2146F5580);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303440();
  sub_2146DAA08();
  if (!v2)
  {
    sub_214303494();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    a2[2] = v12[0];
    *(a2 + 42) = *(v12 + 10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RCSEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090C0, &qword_2146F5588);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = v1[1];
  v14 = *v1;
  v15 = v7;
  v16[0] = v1[2];
  *(v16 + 10) = *(v1 + 42);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143034E8(&v14, &v11);
  sub_214303440();
  sub_2146DAA28();
  v11 = v14;
  v12 = v15;
  v13[0] = v16[0];
  *(v13 + 10) = *(v16 + 10);
  sub_214303544();
  sub_2146DA388();
  v9[0] = v11;
  v9[1] = v12;
  v10[0] = v13[0];
  *(v10 + 10) = *(v13 + 10);
  sub_214303598(v9);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141D1138@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  sub_21408AC04(a1, a4, &qword_27C9090D0, &qword_2146F5590);
  result = type metadata accessor for SIPConferenceInfo(0);
  v9 = (a4 + *(result + 20));
  *v9 = v5;
  v9[1] = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t sub_2141D11AC()
{
  v1 = 0x7372657375;
  if (*v0 != 1)
  {
    v1 = 0x6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_2141D1208@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143735D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141D1230(uint64_t a1)
{
  v2 = sub_2143035EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D126C(uint64_t a1)
{
  v2 = sub_2143035EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D12A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090D0, &qword_2146F5590);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090D8, &qword_2146F5598);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143035EC();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v19;
    LOBYTE(v21) = 0;
    sub_214303640();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090F8, &qword_2146F55A0);
    v23 = 1;
    sub_2143036F4();
    sub_2146DA1C8();
    v13 = v22;
    v18 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909110, &qword_2146F55A8);
    v23 = 2;
    sub_2143037CC();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v20);
    v14 = v21;
    sub_21408AC04(v6, v11, &qword_27C9090D0, &qword_2146F5590);
    v15 = type metadata accessor for SIPConferenceInfo(0);
    v16 = (v11 + *(v15 + 20));
    *v16 = v18;
    v16[1] = v13;
    *(v11 + *(v15 + 24)) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D15C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909128, &qword_2146F55B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143035EC();
  sub_2146DAA28();
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090D0, &qword_2146F5590);
  sub_2143038A4();
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for SIPConferenceInfo(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090F8, &qword_2146F55A0);
    sub_214303958();
    sub_2146DA388();

    LOBYTE(v15) = *(v3 + *(v9 + 24));
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909110, &qword_2146F55A8);
    sub_214303A30();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2141D1830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737473696CLL && a2 == 0xE500000000000000)
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

uint64_t sub_2141D18B4(uint64_t a1)
{
  v2 = sub_214303B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D18F0(uint64_t a1)
{
  v2 = sub_214303B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D192C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909160, &qword_2146F55B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303B08();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909170, &qword_2146F55C0);
    sub_214303B5C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D1AAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909188, &qword_2146F55C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303B08();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909170, &qword_2146F55C0);
  sub_214303C34();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_2141D1C50@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_213FDC8D0;
  v8[3] = 0;
  v8[4] = 1;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F670;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v14);
  v9 = v15;

  sub_213FDCA18(v9.n128_i64[0], v9.n128_u64[1]);
  sub_214032024(a1, a2, 2, 0xD000000000000018, 0x8000000214790150, 0xD00000000000001CLL, 0x800000021478A360);

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

uint64_t sub_2141D1E40(uint64_t a1)
{
  v2 = sub_214303D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D1E7C(uint64_t a1)
{
  v2 = sub_214303D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D1EB8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9091A0, &qword_2146F55D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303D0C();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406116C();
    sub_2146DA1C8();
    v19[0] = a2;
    v10 = *(&v22 + 1);
    v25 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
    v12 = swift_allocObject();
    v13 = swift_allocObject();
    v13[2] = sub_213FDC8D0;
    v13[3] = 0;
    v13[4] = 1;
    v13[5] = sub_21403C354;
    v13[6] = 0;
    *(v12 + 16) = sub_21438F670;
    *(v12 + 24) = v13;
    *(inited + 32) = v12;
    sub_214042CD0(inited, &v22);
    v14 = v23;
    v20 = *(&v23 + 1);
    v21 = v23;
    v19[1] = "MLSFileTransfer.fileInfoProto";
    v19[2] = *(&v22 + 1);

    sub_213FDCA18(v14, *(&v14 + 1));
    v15 = v25;
    sub_214032024(v25, v10, 2, 0xD000000000000018, 0x8000000214790150, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v15, v10);
    (*(v6 + 8))(v8, v5);

    sub_213FDC6BC(v21, v20);
    v16 = v24;
    v17 = v23;
    v18 = v19[0];
    *v19[0] = v22;
    *(v18 + 16) = v17;
    *(v18 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_2141D2268@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2141D22A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214795B80 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000214795BA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
  return result;
}

uint64_t sub_2141D238C(uint64_t a1)
{
  v2 = sub_214303DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D23C8(uint64_t a1)
{
  v2 = sub_214303DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D2404@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9091B8, &qword_2146F55E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303DA8();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = 0;
    sub_214303DFC();
    sub_2146DA1C8();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9091D0, &qword_2146F55E8);
    v13 = 1;
    sub_214303E50();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D25F8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9091E8, &qword_2146F55F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303DA8();

  sub_2146DAA28();
  v12 = v8;
  v11 = 0;
  sub_214303F04();
  sub_2146DA388();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9091D0, &qword_2146F55E8);
    sub_214303F58();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2141D2848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214795BC0 == a2)
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

uint64_t sub_2141D28DC(uint64_t a1)
{
  v2 = sub_21430400C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D2918(uint64_t a1)
{
  v2 = sub_21430400C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D2954@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for IMS3GPPCharacteristic(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909208, &qword_2146F55F8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430400C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v14;
    sub_214328930(&qword_27C909218, type metadata accessor for IMS3GPPCharacteristic, aGm_0);
    v11 = v15;
    sub_2146DA1C8();
    (*(v7 + 8))(v9, v6);
    sub_214328704(v11, v10, type metadata accessor for IMS3GPPCharacteristic);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D2B60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909220, &unk_2146F5600);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430400C();
  sub_2146DAA28();
  type metadata accessor for IMS3GPPCharacteristic(0);
  sub_214328930(&qword_27C909228, type metadata accessor for IMS3GPPCharacteristic, byte_2146FCE08);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2141D2CF0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909220, &unk_2146F5600);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430400C();
  sub_2146DAA28();
  type metadata accessor for IMS3GPPCharacteristic(0);
  sub_214328930(&qword_27C909228, type metadata accessor for IMS3GPPCharacteristic, byte_2146FCE08);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

__n128 sub_2141D2E68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = *a3;
  *(a6 + 32) = v9;
  *(a6 + 40) = v10;
  v11 = type metadata accessor for GSMARCSApplicationCharacteristic(0);
  sub_21408AC04(a4, a6 + *(v11 + 24), &qword_27C909230, &unk_214747860);
  v12 = a6 + *(v11 + 28);
  v13 = *(a5 + 112);
  *(v12 + 96) = *(a5 + 96);
  *(v12 + 112) = v13;
  *(v12 + 128) = *(a5 + 128);
  v14 = *(a5 + 48);
  *(v12 + 32) = *(a5 + 32);
  *(v12 + 48) = v14;
  v15 = *(a5 + 80);
  *(v12 + 64) = *(a5 + 64);
  *(v12 + 80) = v15;
  result = *(a5 + 16);
  *v12 = *a5;
  *(v12 + 16) = result;
  return result;
}

unint64_t sub_2141D2F20()
{
  v1 = 0x6665527070416F74;
  v2 = 0xD00000000000001ALL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_2141D2FA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143736E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141D2FD0(uint64_t a1)
{
  v2 = sub_214304060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D300C(uint64_t a1)
{
  v2 = sub_214304060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D3048@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909230, &unk_214747860);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909238, &qword_2146F5610);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304060();
  v54 = v8;
  sub_2146DAA08();
  if (v2)
  {
    v25 = a1;
  }

  else
  {
    v31 = a1;
    v9 = v32;
    v10 = v33;
    LOBYTE(v45) = 0;
    v11 = v34;
    v29 = sub_2146DA168();
    v30 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909248, &qword_2146F5618);
    LOBYTE(v35) = 1;
    sub_2143040B4();
    sub_2146DA1C8();
    v13 = v9;
    v27 = v45;
    v14 = v46;
    v28 = WORD4(v46);
    LOBYTE(v45) = 2;
    sub_21430418C();
    sub_2146DA1C8();
    v15 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909270, &qword_2146F5620);
    v44 = 3;
    sub_214304240();
    sub_2146DA1C8();
    (*(v13 + 8))(v54, v11);
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v37 = v47;
    v38 = v48;
    v39 = v49;
    v40 = v50;
    v35 = v45;
    v36 = v46;
    v17 = type metadata accessor for GSMARCSApplicationCharacteristic(0);
    sub_21408AC04(v6, v10 + *(v17 + 24), &qword_27C909230, &unk_214747860);
    v18 = v30;
    *v10 = v29;
    *(v10 + 8) = v18;
    v19 = *(&v27 + 1);
    *(v10 + 16) = v15;
    *(v10 + 24) = v19;
    *(v10 + 32) = v14;
    *(v10 + 40) = v28;
    v20 = v10 + *(v17 + 28);
    v21 = v42;
    *(v20 + 96) = v41;
    *(v20 + 112) = v21;
    *(v20 + 128) = v43;
    v22 = v38;
    *(v20 + 32) = v37;
    *(v20 + 48) = v22;
    v23 = v40;
    *(v20 + 64) = v39;
    *(v20 + 80) = v23;
    v24 = v36;
    *v20 = v35;
    *(v20 + 16) = v24;
    v25 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_2141D346C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909288, &qword_2146F5628);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304060();
  sub_2146DAA28();
  LOBYTE(v34) = 0;
  sub_2146DA328();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    v11 = *(v3 + 40);
    *&v34 = *(v3 + 16);
    *(&v34 + 1) = v9;
    *&v35 = v10;
    WORD4(v35) = v11;
    LOBYTE(v25) = 1;
    sub_213FDC9D0(v34, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909248, &qword_2146F5618);
    sub_214304318();
    sub_2146DA388();
    sub_213FDC6D0(v34, *(&v34 + 1));
    v12 = type metadata accessor for GSMARCSApplicationCharacteristic(0);
    v44 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909230, &unk_214747860);
    sub_2143043F0();
    sub_2146DA388();
    v13 = (v3 + *(v12 + 28));
    v14 = v13[5];
    v15 = v13[7];
    v40 = v13[6];
    v41 = v15;
    v16 = v13[1];
    v17 = v13[3];
    v36 = v13[2];
    v37 = v17;
    v18 = v13[3];
    v19 = v13[5];
    v38 = v13[4];
    v39 = v19;
    v20 = v13[1];
    v34 = *v13;
    v35 = v20;
    v21 = v13[7];
    v31 = v40;
    v32 = v21;
    v27 = v36;
    v28 = v18;
    v29 = v38;
    v30 = v14;
    v42 = *(v13 + 32);
    v33 = *(v13 + 32);
    v25 = v34;
    v26 = v16;
    v43 = 3;
    sub_213FB2E54(&v34, v23, &qword_27C909270, &qword_2146F5620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909270, &qword_2146F5620);
    sub_2143044A4();
    sub_2146DA388();
    v23[6] = v31;
    v23[7] = v32;
    v24 = v33;
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_213FB2DF4(v23, &qword_27C909270, &qword_2146F5620);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2141D37F0@<X0>(char a1@<W0>, uint64_t (*a2)(void, void, void)@<X1>, char a3@<W2>, uint64_t (*a4)(void, void, void)@<X3>, char a5@<W4>, uint64_t (*a6)(void, void, void)@<X5>, char a7@<W6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, char a10, char *a11)
{
  v65 = *a11;
  sub_21461FC88(&v74);
  v14 = v74;
  v13 = v75;
  v52 = v76;
  v71 = v77;
  v15 = BYTE1(v77);
  v16 = BYTE2(v77);
  sub_21461FCC4(&v114);
  v72 = v114;
  v133 = v115;
  v53 = v116;
  v58 = v117;
  v17 = v118;
  v73 = v119;
  sub_21461FD00(v110);
  v67 = v110[0];
  v70 = v110[1];
  v54 = v110[2];
  v66 = v111;
  v18 = v112;
  v68 = v113;
  sub_21461FD3C(v106);
  v63 = v106[0];
  v69 = v106[1];
  v57 = v106[2];
  v64 = v109;
  v123 = v15;
  v122 = v17;
  v121 = v18;
  v120 = v108;
  v127 = v18;
  v55 = v108;
  v56 = v107;
  v124 = v108;
  v114 = a2;
  LOBYTE(v115) = a3 & 1;
  v61 = v16;
  LOBYTE(v110[0]) = v16;
  v74 = 0xD000000000000028;
  v75 = 0x8000000214790170;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v19 = v13;
  v20 = v59;
  v60 = v14;
  v21 = v14(&v114, v110, &v74);
  if (v20)
  {

LABEL_6:
    v24 = v63;
    v25 = v68;
    v26 = v66;

    v27 = v52;
    v28 = v53;
    v29 = v64;
    v30 = v67;
    v31 = v58;
    v32 = v55;
    v33 = v54;
LABEL_7:
    LOBYTE(v74) = a1;
    *(&v74 + 1) = v132[0];
    HIDWORD(v74) = *(v132 + 3);
    v75 = v60;
    v76 = v19;
    v77 = v27;
    v78 = v71;
    v79 = v123;
    v80 = v61;
    v81 = v130;
    v82 = v131;
    v83 = v72;
    v84 = v133;
    v85 = v28;
    v86 = v31;
    v87 = v122;
    v88 = v73;
    v89 = v128;
    v90 = v129;
    v91 = v30;
    v92 = v70;
    v93 = v33;
    v94 = v26;
    v95 = v127;
    v96 = v25;
    v97 = v125;
    v98 = v126;
    v99 = v24;
    v100 = v69;
    v101 = v57;
    v102 = v56;
    v103 = v32;
    v104 = v29;
    v105 = v65;
    return sub_21430457C(&v74);
  }

  v44 = v18;
  v45 = a2;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000028;
    v23[1] = 0x8000000214790170;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v71 = a3 & 1;

  v123 = 0;
  v114 = a4;
  LOBYTE(v115) = a5 & 1;
  LOBYTE(v110[0]) = v73;
  v74 = 0xD00000000000002BLL;
  v75 = 0x80000002147901A0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v22 = v72(&v114, v110, &v74);
  v25 = v68;
  v30 = v67;
  v31 = v58;
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000002BLL;
    v36[1] = 0x80000002147901A0;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();
    v24 = v63;

    v29 = v64;
    v27 = v45;
    v32 = v55;
    v28 = v53;
    v33 = v54;
    v26 = v66;
    goto LABEL_7;
  }

  v31 = a5 & 1;

  v122 = 0;
  v114 = a6;
  LOBYTE(v115) = a7 & 1;
  LOBYTE(v110[0]) = v68;
  v74 = 0xD000000000000038;
  v75 = 0x80000002147901D0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v35 = v67(&v114, v110, &v74);
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000038;
    v38[1] = 0x80000002147901D0;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();
    v24 = v63;

    v127 = v44;
    v28 = a4;
    v29 = v64;
    v27 = v45;
    v32 = v55;
    v33 = v54;
LABEL_14:
    v26 = v66;
    goto LABEL_7;
  }

  v66 = a7 & 1;

  v127 = 0;
  v114 = a8;
  LOBYTE(v115) = a10 & 1;
  v29 = v64;
  LOBYTE(v110[0]) = v64;
  v74 = 0xD00000000000002ELL;
  v75 = 0x8000000214790210;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v37 = v63(&v114, v110, &v74);
  v24 = v63;
  v30 = v67;
  if ((v37 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000002ELL;
    v43[1] = 0x8000000214790210;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();
    v25 = v68;
    v33 = a6;

    v32 = v55;
    v124 = v55;
    v28 = a4;
    v27 = v45;
    goto LABEL_14;
  }

  v124 = 0;
  v39 = v123;
  v40 = v122;
  v41 = v127;
  *a9 = a1;
  *(a9 + 1) = v132[0];
  *(a9 + 4) = *(v132 + 3);
  *(a9 + 8) = v60;
  *(a9 + 16) = v19;
  *(a9 + 24) = v45;
  *(a9 + 32) = v71;
  *(a9 + 33) = v39;
  *(a9 + 34) = v61;
  v42 = v130;
  *(a9 + 39) = v131;
  *(a9 + 35) = v42;
  *(a9 + 40) = v72;
  *(a9 + 48) = v133;
  *(a9 + 56) = a4;
  *(a9 + 64) = v31;
  *(a9 + 65) = v40;
  *(a9 + 66) = v73;
  *(a9 + 71) = v129;
  *(a9 + 67) = v128;
  *(a9 + 72) = v67;
  *(a9 + 80) = v70;
  *(a9 + 88) = a6;
  *(a9 + 96) = v66;
  *(a9 + 97) = v41;
  *(a9 + 98) = v68;
  *(a9 + 99) = v125;
  *(a9 + 103) = v126;
  *(a9 + 104) = v63;
  *(a9 + 112) = v69;
  *(a9 + 120) = a8;
  *(a9 + 128) = a10 & 1;
  *(a9 + 129) = 0;
  *(a9 + 130) = v64;
  *(a9 + 131) = v65;
  return result;
}

unint64_t sub_2141D3FAC()
{
  v1 = *v0;
  v2 = 0x456F666E49706163;
  v3 = 0xD00000000000001DLL;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001DLL;
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

uint64_t sub_2141D408C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214373850(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141D40B4(uint64_t a1)
{
  v2 = sub_2143045D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D40F0(uint64_t a1)
{
  v2 = sub_2143045D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D412C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9092C0, &qword_2146F5630);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143045D0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v91 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v92) = 0;
  sub_2142E1378();
  sub_2146DA1C8();
  v8 = v7;
  v90 = v5;
  v9 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v92) = 1;
  sub_2142E11FC();
  v10 = v4;
  sub_2146DA1C8();
  v89 = v9;
  v11 = v101;
  v12 = v102;
  LOBYTE(v92) = 2;
  sub_2146DA1C8();
  v88 = v12;
  v87 = v11;
  v14 = v101;
  v15 = v102;
  LOBYTE(v92) = 3;
  sub_2146DA1C8();
  v86 = v15;
  v85 = v14;
  v16 = v101;
  v17 = v102;
  LOBYTE(v92) = 4;
  sub_2146DA1C8();
  v83 = v17;
  v84 = v16;
  v18 = v101;
  v19 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9092D0, &qword_2146F5638);
  v147 = 5;
  sub_214304624();
  sub_2146DA1C8();
  v59 = v19;
  v58 = v18;
  v64 = v10;
  LOBYTE(v17) = v88;
  v77 = v148;
  sub_21461FC88(&v101);
  v20 = v102;
  v65 = v101;
  v61 = v103;
  v60 = v104;
  LOBYTE(v10) = BYTE1(v104);
  v21 = BYTE2(v104);
  sub_21461FCC4(&v92);
  v82 = *(&v92 + 1);
  v80 = v92;
  v74 = v93;
  v73 = BYTE8(v93);
  v22 = BYTE9(v93);
  v79 = BYTE10(v93);
  sub_21461FD00(&v137);
  v76 = v137;
  v78 = v138;
  v68 = v139;
  v67 = v140;
  LODWORD(v18) = v141;
  v75 = v142;
  sub_21461FD3C(v133);
  v70 = v133[0];
  v72 = v133[1];
  v63 = v133[2];
  v62 = v134;
  v71 = v136;
  v146 = v10;
  v145 = v22;
  v144 = v18;
  v143 = v135;
  v152 = v18;
  v69 = v135;
  v149 = v135;
  *&v92 = v87;
  BYTE8(v92) = v17;
  v66 = v21;
  LOBYTE(v137) = v21;
  v23 = v65;
  v101 = 0xD000000000000028;
  v102 = 0x8000000214790170;
  v103 = 0xD00000000000001CLL;
  v104 = 0x800000021478A360;

  v81 = v20;
  v24 = v23(&v92, &v137, &v101);
  HIDWORD(v56) = v18;
  v57 = 0x800000021478A360;
  if (v24)
  {
    v25 = v57;

    v146 = 0;
    *&v92 = v85;
    BYTE8(v92) = v86;
    LOBYTE(v137) = v79;
    v101 = 0xD00000000000002BLL;
    v102 = 0x80000002147901A0;
    v103 = 0xD00000000000001CLL;
    v104 = v25;

    v26 = v80(&v92, &v137, &v101);
    v34 = v77;
    if (v26)
    {
      v35 = v57;

      v145 = 0;
      *&v92 = v84;
      BYTE8(v92) = v83;
      LOBYTE(v137) = v75;
      v101 = 0xD000000000000038;
      v102 = 0x80000002147901D0;
      v103 = 0xD00000000000001CLL;
      v104 = v35;

      if (v76(&v92, &v137, &v101))
      {
        v38 = v57;

        v152 = 0;
        v137 = v58;
        LOBYTE(v138) = v59;
        LOBYTE(v92) = v71;
        v101 = 0xD00000000000002ELL;
        v102 = 0x8000000214790210;
        v103 = 0xD00000000000001CLL;
        v104 = v38;

        if (v70(&v137, &v92, &v101))
        {

          (*(v90 + 8))(v8, v64);
          v41 = v72;

          v149 = 0;
          LOBYTE(v92) = v89;
          *(&v92 + 1) = v157[0];
          DWORD1(v92) = *(v157 + 3);
          *(&v92 + 1) = v23;
          *&v93 = v81;
          *(&v93 + 1) = v87;
          LOBYTE(v94) = v88;
          LODWORD(v90) = v146;
          BYTE1(v94) = v146;
          BYTE2(v94) = v66;
          *(&v94 + 3) = v155;
          BYTE7(v94) = v156;
          *(&v94 + 1) = v80;
          *&v95 = v82;
          *(&v95 + 1) = v85;
          LOBYTE(v96) = v86;
          LODWORD(v74) = v145;
          BYTE1(v96) = v145;
          BYTE2(v96) = v79;
          *(&v96 + 3) = v153;
          BYTE7(v96) = v154;
          *(&v96 + 1) = v76;
          *&v97 = v78;
          *(&v97 + 1) = v84;
          LOBYTE(v98) = v83;
          v69 = v152;
          BYTE1(v98) = v152;
          v42 = v75;
          BYTE2(v98) = v75;
          *(&v98 + 3) = v150;
          BYTE7(v98) = v151;
          v43 = v70;
          *(&v98 + 1) = v70;
          *&v99 = v41;
          v44 = v58;
          *(&v99 + 1) = v58;
          LOWORD(v100) = v59;
          v73 = 0;
          v45 = v71;
          BYTE2(v100) = v71;
          HIBYTE(v100) = v34;
          v46 = v92;
          v47 = v93;
          v48 = v95;
          v49 = v158;
          *(v158 + 32) = v94;
          *(v49 + 48) = v48;
          *v49 = v46;
          *(v49 + 16) = v47;
          v50 = v96;
          v51 = v97;
          v52 = v98;
          v53 = v99;
          *(v49 + 128) = v100;
          *(v49 + 96) = v52;
          *(v49 + 112) = v53;
          *(v49 + 64) = v50;
          *(v49 + 80) = v51;
          sub_2143046FC(&v92, &v101);
          __swift_destroy_boxed_opaque_existential_1(v91);
          LOBYTE(v101) = v89;
          *(&v101 + 1) = v157[0];
          HIDWORD(v101) = *(v157 + 3);
          v102 = v65;
          v103 = v81;
          v104 = v87;
          v105 = v88;
          v106 = v90;
          v107 = v66;
          v108 = v155;
          v109 = v156;
          v110 = v80;
          v111 = v82;
          v112 = v85;
          v113 = v86;
          v114 = v74;
          v115 = v79;
          v116 = v153;
          v117 = v154;
          v118 = v76;
          v119 = v78;
          v120 = v84;
          v121 = v83;
          v122 = v69;
          v123 = v42;
          v124 = v150;
          v125 = v151;
          v126 = v43;
          v127 = v72;
          v128 = v44;
          v129 = v59;
          v130 = v73;
          v131 = v45;
          v132 = v34;
          return sub_21430457C(&v101);
        }

        sub_214031C4C();
        swift_allocError();
        *v54 = 0xD00000000000002ELL;
        v54[1] = 0x8000000214790210;
        v55 = v57;
        v54[2] = 0xD00000000000001CLL;
        v54[3] = v55;
        swift_willThrow();
        (*(v90 + 8))(v8, v64);

        v149 = v69;
        v74 = v85;
        v73 = v86;
        v68 = v84;
        v67 = v83;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v39 = 0xD000000000000038;
        v39[1] = 0x80000002147901D0;
        v40 = v57;
        v39[2] = 0xD00000000000001CLL;
        v39[3] = v40;
        swift_willThrow();
        (*(v90 + 8))(v8, v64);

        v152 = BYTE4(v56);
        v74 = v85;
        v73 = v86;
      }

      v32 = v88;
      v33 = v89;
      v31 = v87;
      v29 = v79;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v36 = 0xD00000000000002BLL;
      v36[1] = 0x80000002147901A0;
      v37 = v57;
      v36[2] = 0xD00000000000001CLL;
      v36[3] = v37;
      swift_willThrow();
      (*(v90 + 8))(v8, v64);
      v29 = v79;

      v32 = v88;
      v33 = v89;
      v31 = v87;
    }

    v30 = v81;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD000000000000028;
    v27[1] = 0x8000000214790170;
    v28 = v57;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = v28;
    swift_willThrow();
    (*(v90 + 8))(v8, v64);
    v29 = v79;
    v30 = v81;

    v31 = v61;
    v32 = v60;
    v33 = v89;
  }

  __swift_destroy_boxed_opaque_existential_1(v91);
  LOBYTE(v101) = v33;
  *(&v101 + 1) = v157[0];
  HIDWORD(v101) = *(v157 + 3);
  v102 = v23;
  v103 = v30;
  v104 = v31;
  v105 = v32;
  v106 = v146;
  v107 = v66;
  v108 = v155;
  v109 = v156;
  v110 = v80;
  v111 = v82;
  v112 = v74;
  v113 = v73;
  v114 = v145;
  v115 = v29;
  v116 = v153;
  v117 = v154;
  v118 = v76;
  v119 = v78;
  v120 = v68;
  v121 = v67;
  v122 = v152;
  v123 = v75;
  v124 = v150;
  v125 = v151;
  v126 = v70;
  v127 = v72;
  v128 = v63;
  v129 = v62;
  v130 = v69;
  v131 = v71;
  v132 = v77;
  return sub_21430457C(&v101);
}

uint64_t sub_2141D4E58(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9092E8, &qword_2146F5640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v29 = *(v1 + 3);
  v33 = v1[32];
  v28 = v1[33];
  v8 = *(v1 + 7);
  v9 = v1[64];
  v24 = v1[65];
  v25 = v9;
  v23 = *(v1 + 11);
  v10 = v1[96];
  v21 = v1[97];
  v22 = v10;
  v11 = *(v1 + 15);
  v26 = v8;
  v27 = v11;
  LODWORD(v8) = v1[128];
  v19 = v1[129];
  v20 = v8;
  v12 = v1[131];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143045D0();
  sub_2146DAA28();
  LOBYTE(v31) = v7;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  v13 = v30;
  sub_2146DA388();
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v28 & 1) != 0 || (v31 = v29, v32 = v33 & 1, v34 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0), sub_2142E1C30(), sub_2146DA388(), v15 = v4, (v24 & 1) != 0 || (v16 = v12, v31 = v26, v32 = v25 & 1, v34 = 2, sub_2146DA388(), v17 = v27, (v21 & 1) != 0 || (v31 = v23, v32 = v22 & 1, v34 = 3, sub_2146DA388(), (v19))))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v31 = v17;
    v32 = v20 & 1;
    v34 = 4;
    sub_2146DA388();
    LOBYTE(v31) = v16;
    v34 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9092D0, &qword_2146F5638);
    sub_214304758();
    sub_2146DA388();
    return (*(v15 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_2141D527C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E656449707061 && a2 == 0xEE00737265696669)
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

uint64_t sub_2141D530C(uint64_t a1)
{
  v2 = sub_214304830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D5348(uint64_t a1)
{
  v2 = sub_214304830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D5384@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909300, &qword_2146F5648);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304830();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909310, &qword_2146F5650);
    sub_214304884();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D5504(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909338, &unk_2146F5660);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304830();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909310, &qword_2146F5650);
  sub_2143049E0();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141D56A8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t (*a12)(__int128 *, __int128 *, unint64_t *), unint64_t a13, uint64_t *a14, unsigned __int8 a15, unint64_t a16, unsigned __int8 a17, unint64_t a18, unsigned __int8 a19, uint64_t a20)
{
  v162 = a3;
  v134 = a8;
  v135 = a7;
  v136 = a6;
  v137 = a5;
  v159 = a4;
  v167 = a2;
  LODWORD(v165) = a15;
  v22 = type metadata accessor for SwiftRegexValidator(0);
  v154 = *(v22 - 8);
  v23 = *(v154 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v160 = *a11;
  v26 = *(a11 + 2);
  v27 = *(a11 + 24);
  v155 = v25;
  v156 = v27;
  v28 = *a14;
  v157 = v26;
  v158 = v28;
  v29 = a9 + *(type metadata accessor for IMS3GPPCharacteristic(0) + 68);
  v164 = a20;
  sub_213FB2E54(a20, v29, &qword_27C909358, qword_214773860);
  sub_21464DFC0(&v203);
  v171 = v203;
  v208 = v204;
  v169 = v205;
  v170 = v206;
  v161 = v207;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v30 = swift_allocObject();
  v172 = xmmword_2146E9BF0;
  *(v30 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v31 = swift_allocObject();
  v32 = swift_allocObject();
  v168 = xmmword_2146ED240;
  *(v32 + 16) = xmmword_2146ED240;
  *(v31 + 16) = sub_21438F468;
  *(v31 + 24) = v32;
  *(v30 + 32) = v31;
  sub_21404328C(v30, &v199);
  v153 = v199;
  v151 = v200;
  v149 = v202;
  v150 = v201;
  v33 = swift_allocObject();
  *(v33 + 16) = v172;
  v34 = swift_allocObject();
  v35 = swift_allocObject();
  *(v35 + 16) = v168;
  *(v34 + 16) = sub_21438F468;
  *(v34 + 24) = v35;
  *(v33 + 32) = v34;
  sub_21404328C(v33, &v195);
  v152 = v195;
  v147 = v196;
  v145 = v198;
  v146 = v197;
  v36 = swift_allocObject();
  *(v36 + 16) = v172;
  v37 = swift_allocObject();
  v38 = swift_allocObject();
  *(v38 + 16) = v168;
  *(v37 + 16) = sub_21438F468;
  *(v37 + 24) = v38;
  *(v36 + 32) = v37;
  sub_21404328C(v36, &v191);
  v148 = v191;
  v143 = v192;
  v141 = v194;
  v142 = v193;
  v39 = swift_allocObject();
  *(v39 + 16) = v172;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_2140676DC;
  *(v40 + 24) = 0;
  *(v39 + 32) = v40;
  sub_214042B80(v39, &v187);
  v144 = v187;
  v139 = v189;
  v140 = v188;
  v138 = v190;
  v41 = swift_allocObject();
  *(v41 + 16) = v172;
  if (qword_27C903148 != -1)
  {
    swift_once();
  }

  v166 = a13;
  *&v168 = a10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v43 = __swift_project_value_buffer(v42, qword_27CA19DA8);
  (*(*(v42 - 8) + 16))(&v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v42);
  v44 = swift_allocObject();
  v45 = (*(v154 + 80) + 16) & ~*(v154 + 80);
  v46 = swift_allocObject();
  sub_214328704(v24, v46 + v45, type metadata accessor for SwiftRegexValidator);
  *(v44 + 16) = sub_21438F684;
  *(v44 + 24) = v46;
  *(v41 + 32) = v44;
  sub_214042B80(v41, &v183);
  v47 = v184;
  v48 = v185;
  LOBYTE(v44) = v186;
  sub_21464E0E0(&v178);
  v49 = v179;
  LOBYTE(v45) = v180;
  v50 = v181;
  v51 = v182;
  sub_21464E11C(&v173);
  *a9 = v155;
  *(a9 + 41) = v159 & 1;
  *(a9 + 64) = v151;
  v52 = v149;
  *(a9 + 72) = v150;
  *(a9 + 73) = v52;
  *(a9 + 96) = v147;
  v53 = v145;
  *(a9 + 104) = v146;
  *(a9 + 105) = v53;
  *(a9 + 128) = v143;
  v54 = v141;
  *(a9 + 136) = v142;
  *(a9 + 137) = v54;
  v55 = v139;
  *(a9 + 160) = v140;
  *(a9 + 168) = v55;
  *(a9 + 176) = v138;
  *(a9 + 200) = v157;
  *(a9 + 208) = v156;
  *(a9 + 232) = v47;
  *(a9 + 240) = v48;
  *(a9 + 248) = v44;
  *(a9 + 256) = v158;
  *(a9 + 264) = v165 & 1;
  *(a9 + 288) = v49;
  *(a9 + 296) = v45;
  v56 = v174;
  *(a9 + 297) = v50;
  v57 = v175;
  *(a9 + 298) = v51;
  v58 = v176;
  *(a9 + 320) = v56;
  LOBYTE(v56) = v177;
  v59 = v170;
  v60 = v171;
  v61 = v208;
  *(a9 + 8) = v171;
  *(a9 + 16) = v61;
  v62 = v169;
  *(a9 + 24) = v169;
  *(a9 + 32) = v59;
  v63 = v161;
  *(a9 + 40) = v161;
  v64 = v152;
  *(a9 + 48) = v153;
  *(a9 + 80) = v64;
  *(a9 + 112) = v148;
  *(a9 + 144) = v144;
  *(a9 + 184) = v160;
  *(a9 + 216) = v183;
  *(a9 + 272) = v178;
  *(a9 + 304) = v173;
  *(a9 + 328) = v57;
  *(a9 + 329) = v58;
  v165 = a9;
  *(a9 + 330) = v56;
  v65 = v162;
  *&v187 = v167;
  *(&v187 + 1) = v162;
  LOBYTE(v183) = v63;
  v203 = 0xD00000000000001ALL;
  v204 = 0x8000000214790240;
  v205 = 0xD00000000000001CLL;
  v206 = 0x800000021478A360;

  sub_213FDC9D0(v62, v59);
  v66 = v163;
  v67 = v60(&v187, &v183, &v203);
  *&v172 = v66;
  if (v66)
  {

LABEL_9:

    sub_213FB2DF4(v164, &qword_27C909358, qword_214773860);
    v83 = v165;
    v84 = *(v165 + 24);
    v85 = *(v165 + 32);

    sub_213FDC6D0(v84, v85);
    v86 = v208;
    *(v83 + 8) = v171;
    *(v83 + 16) = v86;
    v87 = v170;
    *(v83 + 24) = v169;
    *(v83 + 32) = v87;
    *(v83 + 40) = v63;
    return sub_21432887C(v83, type metadata accessor for IMS3GPPCharacteristic);
  }

  v163 = 0x800000021478A360;
  if ((v67 & 1) == 0)
  {
    sub_214031C4C();
    v80 = swift_allocError();
    *v81 = 0xD00000000000001ALL;
    v81[1] = 0x8000000214790240;
    v82 = v163;
    v81[2] = 0xD00000000000001CLL;
    v81[3] = v82;
    *&v172 = v80;
    swift_willThrow();

    goto LABEL_9;
  }

  sub_213FDC6D0(v169, v170);
  v68 = v163;

  v69 = v165;
  v70 = *(v165 + 24);
  v71 = *(v165 + 32);

  sub_213FDC6D0(v70, v71);
  v72 = v208;
  *(v69 + 8) = v171;
  *(v69 + 16) = v72;
  *(v69 + 24) = v167;
  *(v69 + 32) = v65;
  *(v69 + 40) = v63;
  v74 = *(v69 + 48);
  v73 = *(v69 + 56);
  v75 = *(v69 + 64);
  v76 = *(v69 + 72);
  v77 = *(v69 + 73);
  LOBYTE(v183) = v76;
  *&v187 = v137;
  LOBYTE(v178) = v77;
  v203 = 0xD00000000000001DLL;
  v204 = 0x8000000214790260;
  v205 = 0xD00000000000001CLL;
  v206 = v68;

  v78 = v172;
  v79 = v74(&v187, &v178, &v203);
  if (v78)
  {
    *&v172 = v75;

    sub_213FB2DF4(v164, &qword_27C909358, qword_214773860);

LABEL_13:

    *(v69 + 48) = v74;
    *(v69 + 56) = v73;
    *(v69 + 64) = v172;
    *(v69 + 72) = v76;
    *(v69 + 73) = v77;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  if ((v79 & 1) == 0)
  {
    *&v172 = v75;

    sub_214031C4C();
    swift_allocError();
    *v93 = 0xD00000000000001DLL;
    v93[1] = 0x8000000214790260;
    v93[2] = 0xD00000000000001CLL;
    v93[3] = v68;
    swift_willThrow();
    sub_213FB2DF4(v164, &qword_27C909358, qword_214773860);
    v76 = v183;
    goto LABEL_13;
  }

  *(v69 + 48) = v74;
  *(v69 + 56) = v73;
  *(v69 + 64) = v137;
  *(v69 + 72) = 0;
  *(v69 + 73) = v77;
  v90 = *(v69 + 80);
  v89 = *(v69 + 88);
  *&v172 = *(v69 + 96);
  v91 = *(v69 + 105);
  LOBYTE(v183) = *(v69 + 104);
  *&v187 = v136;
  LOBYTE(v178) = v91;
  v203 = 0xD00000000000001DLL;
  v204 = 0x8000000214790280;
  v205 = 0xD00000000000001CLL;
  v206 = v68;

  v92 = v90(&v187, &v178, &v203);
  if ((v92 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v98 = 0xD00000000000001DLL;
    v98[1] = 0x8000000214790280;
    v98[2] = 0xD00000000000001CLL;
    v98[3] = v68;
    swift_willThrow();
    sub_213FB2DF4(v164, &qword_27C909358, qword_214773860);
    v99 = v183;

    *(v69 + 80) = v90;
    *(v69 + 88) = v89;
    *(v69 + 96) = v172;
    *(v69 + 104) = v99;
    *(v69 + 105) = v91;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  *(v69 + 80) = v90;
  *(v69 + 88) = v89;
  *(v69 + 96) = v136;
  *(v69 + 104) = 0;
  *(v69 + 105) = v91;
  v95 = *(v69 + 112);
  v94 = *(v69 + 120);
  *&v172 = *(v69 + 128);
  v96 = *(v69 + 137);
  LOBYTE(v183) = *(v69 + 136);
  *&v187 = v135;
  LOBYTE(v178) = v96;
  v203 = 0xD00000000000001DLL;
  v204 = 0x80000002147902A0;
  v205 = 0xD00000000000001CLL;
  v206 = v68;

  v97 = v95(&v187, &v178, &v203);
  if ((v97 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v105 = 0xD00000000000001DLL;
    v105[1] = 0x80000002147902A0;
    v105[2] = 0xD00000000000001CLL;
    v105[3] = v68;
    swift_willThrow();
    sub_213FB2DF4(v164, &qword_27C909358, qword_214773860);
    v106 = v183;

    *(v69 + 112) = v95;
    *(v69 + 120) = v94;
    *(v69 + 128) = v172;
    *(v69 + 136) = v106;
    *(v69 + 137) = v96;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  *(v69 + 112) = v95;
  *(v69 + 120) = v94;
  *(v69 + 128) = v135;
  *(v69 + 136) = 0;
  *(v69 + 137) = v96;
  v101 = *(v69 + 144);
  v100 = *(v69 + 152);
  v102 = *(v69 + 168);
  v171 = *(v69 + 160);
  v103 = *(v69 + 176);
  *&v187 = v134;
  *(&v187 + 1) = v168;
  LODWORD(v172) = v103;
  LOBYTE(v183) = v103;
  v203 = 0xD000000000000029;
  v204 = 0x80000002147902C0;
  v205 = 0xD00000000000001CLL;
  v206 = v68;

  v208 = v101;
  v104 = v101(&v187, &v183, &v203);
  if ((v104 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v113 = 0xD000000000000029;
    v113[1] = 0x80000002147902C0;
    v113[2] = 0xD00000000000001CLL;
    v113[3] = v68;
    swift_willThrow();

    sub_213FB2DF4(v164, &qword_27C909358, qword_214773860);

    *(v69 + 144) = v208;
    *(v69 + 152) = v100;
    *(v69 + 160) = v171;
    *(v69 + 168) = v102;
    *(v69 + 176) = v172;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  v107 = v68;

  *(v69 + 144) = v208;
  *(v69 + 152) = v100;
  v108 = v168;
  *(v69 + 160) = v134;
  *(v69 + 168) = v108;
  *(v69 + 176) = v172;
  v110 = *(v69 + 216);
  v109 = *(v69 + 224);
  v111 = *(v69 + 240);
  v208 = *(v69 + 232);
  LODWORD(v108) = *(v69 + 248);
  v171 = a12;
  *&v187 = a12;
  *(&v187 + 1) = v166;
  LODWORD(v172) = v108;
  LOBYTE(v183) = v108;
  v203 = 0xD00000000000002BLL;
  v204 = 0x80000002147902F0;
  v205 = 0xD00000000000001CLL;
  v206 = v68;

  v112 = v110(&v187, &v183, &v203);
  if ((v112 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v121 = 0xD00000000000002BLL;
    v121[1] = 0x80000002147902F0;
    v121[2] = 0xD00000000000001CLL;
    v121[3] = v68;
    swift_willThrow();

    sub_213FB2DF4(v164, &qword_27C909358, qword_214773860);

    *(v69 + 216) = v110;
    *(v69 + 224) = v109;
    *(v69 + 232) = v208;
    *(v69 + 240) = v111;
    *(v69 + 248) = v172;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  LODWORD(v208) = a17;

  *(v69 + 216) = v110;
  *(v69 + 224) = v109;
  v114 = v166;
  *(v69 + 232) = v171;
  *(v69 + 240) = v114;
  *(v69 + 248) = v172;
  v116 = *(v69 + 272);
  v115 = *(v69 + 280);
  v117 = *(v69 + 288);
  v169 = a16;
  v170 = v117;
  LODWORD(v172) = *(v69 + 296);
  LODWORD(v171) = *(v69 + 297);
  v118 = *(v69 + 298);
  *&v187 = a16;
  v119 = v208;
  BYTE8(v187) = v208 & 1;
  LOBYTE(v183) = v118;
  v203 = 0xD000000000000026;
  v204 = 0x8000000214790320;
  v205 = 0xD00000000000001CLL;
  v206 = v107;

  v120 = v116(&v187, &v183, &v203);
  if ((v120 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v128 = 0xD000000000000026;
    v128[1] = 0x8000000214790320;
    v129 = v163;
    v128[2] = 0xD00000000000001CLL;
    v128[3] = v129;
    swift_willThrow();
    sub_213FB2DF4(v164, &qword_27C909358, qword_214773860);
    v69 = v165;

    *(v69 + 272) = v116;
    *(v69 + 280) = v115;
    *(v69 + 288) = v170;
    *(v69 + 296) = v172;
    *(v69 + 297) = v171;
    *(v69 + 298) = v118;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  LODWORD(v172) = a19;

  v122 = v165;

  *(v122 + 272) = v116;
  *(v122 + 280) = v115;
  *(v122 + 288) = v169;
  *(v122 + 296) = v119 & 1;
  *(v122 + 297) = 0;
  *(v122 + 298) = v118;
  v124 = *(v122 + 304);
  v123 = *(v122 + 312);
  v208 = *(v122 + 320);
  LODWORD(v171) = *(v122 + 328);
  LODWORD(v170) = *(v122 + 329);
  v125 = *(v122 + 330);
  v169 = a18;
  *&v187 = a18;
  v126 = v172;
  BYTE8(v187) = v172 & 1;
  LOBYTE(v183) = v125;
  v203 = 0xD000000000000025;
  v204 = 0x8000000214790350;
  v205 = 0xD00000000000001CLL;
  v206 = v163;

  v127 = v124(&v187, &v183, &v203);
  if ((v127 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v131 = 0xD000000000000025;
    v131[1] = 0x8000000214790350;
    v132 = v163;
    v131[2] = 0xD00000000000001CLL;
    v131[3] = v132;
    swift_willThrow();
    sub_213FB2DF4(v164, &qword_27C909358, qword_214773860);
    v69 = v165;

    *(v69 + 304) = v124;
    *(v69 + 312) = v123;
    *(v69 + 320) = v208;
    *(v69 + 328) = v171;
    *(v69 + 329) = v170;
    *(v69 + 330) = v125;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  sub_213FB2DF4(v164, &qword_27C909358, qword_214773860);
  v130 = v165;

  *(v130 + 304) = v124;
  *(v130 + 312) = v123;
  *(v130 + 320) = v169;
  *(v130 + 328) = v126 & 1;
  *(v130 + 329) = 0;
  *(v130 + 330) = v125;
  return result;
}

unint64_t sub_2141D6910(char a1)
{
  result = 0x4449707061;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x315472656D6974;
      break;
    case 4:
      result = 0x325472656D6974;
      break;
    case 5:
      result = 0x345472656D6974;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000024;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x46435343506F626CLL;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x7972746552676572;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141D6AC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214373A64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141D6AEC(uint64_t a1)
{
  v2 = sub_214304B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D6B28(uint64_t a1)
{
  v2 = sub_214304B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D6B64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v213 = a2;
  v3 = type metadata accessor for SwiftRegexValidator(0);
  v215 = *(v3 - 8);
  v4 = *(v215 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v214 = &v170[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909358, qword_214773860);
  MEMORY[0x28223BE20](v217);
  v216 = &v170[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909360, &qword_2146F5670);
  v218 = *(v6 - 8);
  v219 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v170[-v7];
  v9 = type metadata accessor for IMS3GPPCharacteristic(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v170[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304B3C();
  v12 = v255;
  sub_2146DAA08();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *&v210 = v9;
  v211 = v4;
  v212 = v11;
  v255 = a1;
  LOBYTE(v234) = 0;
  sub_21430498C();
  sub_2146DA1C8();
  v14 = v250;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v234) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v209 = v14;
  v16 = v250;
  v15 = v251;
  LOBYTE(v250) = 2;
  v207 = sub_2146DA178();
  *&v208 = v16;
  *(&v208 + 1) = v15;
  LOBYTE(v250) = 3;
  v17 = sub_2146DA1A8();
  LOBYTE(v250) = 4;
  v18 = sub_2146DA1A8();
  v206 = v17;
  v19 = v18;
  LOBYTE(v250) = 5;
  v20 = sub_2146DA1A8();
  v205 = v19;
  v21 = v20;
  LOBYTE(v250) = 6;
  v22 = sub_2146DA168();
  v203 = v21;
  v204 = v23;
  v24 = v22;
  LOBYTE(v234) = 7;
  sub_214304B90();
  sub_2146DA1C8();
  v199 = v24;
  v25 = v251;
  v201 = v250;
  v26 = v252;
  v200 = v253;
  LOBYTE(v250) = 8;
  v27 = sub_2146DA168();
  v202 = v28;
  v29 = v25;
  v197 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909378, &qword_2146F5678);
  LOBYTE(v234) = 9;
  sub_214304BE4();
  v198 = v8;
  sub_2146DA1C8();
  v30 = v250;
  LOBYTE(v250) = 10;
  v196 = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v234) = 11;
  sub_2142E11FC();
  sub_2146DA1C8();
  v195 = v250;
  v194 = v251;
  LOBYTE(v234) = 12;
  sub_2146DA1C8();
  v187 = v250;
  v186 = v251;
  LOBYTE(v250) = 13;
  sub_214304CBC();
  sub_2146DA1C8();
  v217 = 0;
  sub_213FB2E54(v216, &v212[*(v210 + 68)], &qword_27C909358, qword_214773860);
  sub_21464DFC0(&v250);
  v191 = v251;
  v192 = v250;
  v189 = v252;
  v190 = v253;
  v193 = v254;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v31 = swift_allocObject();
  v210 = xmmword_2146E9BF0;
  *(v31 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v32 = swift_allocObject();
  v33 = swift_allocObject();
  v188 = xmmword_2146ED240;
  *(v33 + 16) = xmmword_2146ED240;
  *(v32 + 16) = sub_21438F468;
  *(v32 + 24) = v33;
  *(v31 + 32) = v32;
  sub_21404328C(v31, &v246);
  v185 = v246;
  v183 = v247;
  v181 = v249;
  v182 = v248;
  v34 = swift_allocObject();
  *(v34 + 16) = v210;
  v35 = swift_allocObject();
  v36 = swift_allocObject();
  *(v36 + 16) = v188;
  *(v35 + 16) = sub_21438F468;
  *(v35 + 24) = v36;
  *(v34 + 32) = v35;
  sub_21404328C(v34, &v242);
  v184 = v242;
  v180 = v243;
  v178 = v245;
  v179 = v244;
  v37 = swift_allocObject();
  *(v37 + 16) = v210;
  v38 = swift_allocObject();
  v39 = swift_allocObject();
  *(v39 + 16) = v188;
  *(v38 + 16) = sub_21438F468;
  *(v38 + 24) = v39;
  *(v37 + 32) = v38;
  sub_21404328C(v37, &v238);
  v188 = v238;
  v176 = v239;
  v174 = v241;
  v175 = v240;
  v40 = swift_allocObject();
  *(v40 + 16) = v210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_2140676DC;
  *(v41 + 24) = 0;
  *(v40 + 32) = v41;
  sub_214042B80(v40, &v234);
  v177 = v234;
  v172 = v236;
  v173 = v235;
  v171 = v237;
  v42 = swift_allocObject();
  *(v42 + 16) = v210;
  if (qword_27C903148 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v44 = __swift_project_value_buffer(v43, qword_27CA19DA8);
  v45 = v214;
  (*(*(v43 - 8) + 16))(v214, v44, v43);
  v46 = swift_allocObject();
  v47 = (*(v215 + 80) + 16) & ~*(v215 + 80);
  v48 = swift_allocObject();
  sub_214328704(v45, v48 + v47, type metadata accessor for SwiftRegexValidator);
  *(v46 + 16) = sub_21438F684;
  *(v46 + 24) = v48;
  *(v42 + 32) = v46;
  sub_214042B80(v42, &v230);
  v49 = v231;
  v215 = v232;
  LOBYTE(v48) = v233;
  sub_21464E0E0(&v225);
  v50 = v226;
  LODWORD(v214) = v227;
  LOBYTE(v45) = v228;
  v51 = v229;
  sub_21464E11C(&v220);
  v52 = v212;
  *v212 = v209;
  *(v52 + 41) = v207 & 1;
  *(v52 + 64) = v183;
  v53 = v181;
  *(v52 + 72) = v182;
  *(v52 + 73) = v53;
  *(v52 + 96) = v180;
  v54 = v178;
  *(v52 + 104) = v179;
  *(v52 + 105) = v54;
  *(v52 + 128) = v176;
  v55 = v174;
  *(v52 + 136) = v175;
  *(v52 + 137) = v55;
  v56 = v172;
  *(v52 + 160) = v173;
  *(v52 + 168) = v56;
  *(v52 + 176) = v171;
  *(v52 + 184) = v201;
  *(v52 + 192) = v29;
  *(v52 + 200) = v26;
  *(v52 + 208) = v200;
  v57 = v215;
  *(v52 + 232) = v49;
  *(v52 + 240) = v57;
  *(v52 + 248) = v48;
  *(v52 + 256) = v30;
  *(v52 + 264) = v196 & 1;
  *(v52 + 288) = v50;
  *(v52 + 296) = v214;
  v58 = v221;
  *(v52 + 297) = v45;
  v59 = v222;
  *(v52 + 298) = v51;
  v60 = v223;
  *(v52 + 320) = v58;
  LOBYTE(v58) = v224;
  v61 = v191;
  v62 = v192;
  *(v52 + 8) = v192;
  *(v52 + 16) = v61;
  v64 = v189;
  v63 = v190;
  *(v52 + 24) = v189;
  *(v52 + 32) = v63;
  v65 = v193;
  *(v52 + 40) = v193;
  v66 = v184;
  *(v52 + 48) = v185;
  *(v52 + 80) = v66;
  *(v52 + 112) = v188;
  *(v52 + 144) = v177;
  *(v52 + 216) = v230;
  *(v52 + 272) = v225;
  *(v52 + 304) = v220;
  *(v52 + 328) = v59;
  *(v52 + 329) = v60;
  *(v52 + 330) = v58;
  v234 = v208;
  LOBYTE(v230) = v65;
  v250 = 0xD00000000000001ALL;
  v251 = 0x8000000214790240;
  v252 = 0xD00000000000001CLL;
  v253 = 0x800000021478A360;
  v215 = 0x800000021478A360;

  sub_213FDC9D0(v64, v63);
  v67 = v217;
  v68 = v62(&v234, &v230, &v250);
  v217 = v67;
  if (v67)
  {

LABEL_11:

    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);
    v83 = v212;
    v84 = *(v212 + 3);
    v85 = *(v212 + 4);

    sub_213FDC6D0(v84, v85);
    v86 = v191;
    *(v83 + 8) = v192;
    *(v83 + 16) = v86;
    v87 = v190;
    *(v83 + 24) = v189;
    *(v83 + 32) = v87;
    *(v83 + 40) = v193;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v255);
    return sub_21432887C(v212, type metadata accessor for IMS3GPPCharacteristic);
  }

  if ((v68 & 1) == 0)
  {
    sub_214031C4C();
    v80 = swift_allocError();
    *v81 = 0xD00000000000001ALL;
    v81[1] = 0x8000000214790240;
    v82 = v215;
    v81[2] = 0xD00000000000001CLL;
    v81[3] = v82;
    v217 = v80;
    swift_willThrow();
    goto LABEL_11;
  }

  sub_213FDC6D0(v189, v190);
  v69 = v215;

  v70 = v212;
  v71 = *(v212 + 3);
  v72 = *(v212 + 4);

  sub_213FDC6D0(v71, v72);
  v73 = v191;
  *(v70 + 8) = v192;
  *(v70 + 16) = v73;
  v74 = *(&v208 + 1);
  *(v70 + 24) = v208;
  *(v70 + 32) = v74;
  *(v70 + 40) = v193;
  v76 = *(v70 + 48);
  v75 = *(v70 + 56);
  v214 = *(v70 + 64);
  v77 = *(v70 + 73);
  LOBYTE(v230) = *(v70 + 72);
  *&v234 = v206;
  LOBYTE(v225) = v77;
  v250 = 0xD00000000000001DLL;
  v251 = 0x8000000214790260;
  v252 = 0xD00000000000001CLL;
  v253 = v69;

  v78 = v217;
  v79 = v76(&v234, &v225, &v250);
  v217 = v78;
  if (v78)
  {

    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);

LABEL_17:
    v98 = v230;
    v99 = v212;

    *(v99 + 48) = v76;
    *(v99 + 56) = v75;
    *(v99 + 64) = v214;
    *(v99 + 72) = v98;
    *(v99 + 73) = v77;
    goto LABEL_12;
  }

  if ((v79 & 1) == 0)
  {

    sub_214031C4C();
    v95 = swift_allocError();
    *v96 = 0xD00000000000001DLL;
    v96[1] = 0x8000000214790260;
    v97 = v215;
    v96[2] = 0xD00000000000001CLL;
    v96[3] = v97;
    v217 = v95;
    swift_willThrow();
    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);
    goto LABEL_17;
  }

  v88 = v215;

  v89 = v212;

  *(v89 + 48) = v76;
  *(v89 + 56) = v75;
  *(v89 + 64) = v206;
  *(v89 + 72) = 0;
  *(v89 + 73) = v77;
  v91 = *(v89 + 80);
  v90 = *(v89 + 88);
  v214 = *(v89 + 96);
  v92 = *(v89 + 105);
  LOBYTE(v230) = *(v89 + 104);
  *&v234 = v205;
  LOBYTE(v225) = v92;
  v250 = 0xD00000000000001DLL;
  v251 = 0x8000000214790280;
  v252 = 0xD00000000000001CLL;
  v253 = v88;

  v93 = v217;
  v94 = v91(&v234, &v225, &v250);
  v217 = v93;
  if (v93)
  {

    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);

LABEL_22:
    v110 = v230;
    v111 = v212;

    *(v111 + 80) = v91;
    *(v111 + 88) = v90;
    *(v111 + 96) = v214;
    *(v111 + 104) = v110;
    *(v111 + 105) = v92;
    goto LABEL_12;
  }

  if ((v94 & 1) == 0)
  {

    sub_214031C4C();
    v107 = swift_allocError();
    *v108 = 0xD00000000000001DLL;
    v108[1] = 0x8000000214790280;
    v109 = v215;
    v108[2] = 0xD00000000000001CLL;
    v108[3] = v109;
    v217 = v107;
    swift_willThrow();
    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);
    goto LABEL_22;
  }

  v100 = v215;

  v101 = v212;

  *(v101 + 80) = v91;
  *(v101 + 88) = v90;
  *(v101 + 96) = v205;
  *(v101 + 104) = 0;
  *(v101 + 105) = v92;
  v103 = *(v101 + 112);
  v102 = *(v101 + 120);
  v214 = *(v101 + 128);
  v104 = *(v101 + 137);
  LOBYTE(v230) = *(v101 + 136);
  *&v234 = v203;
  LOBYTE(v225) = v104;
  v250 = 0xD00000000000001DLL;
  v251 = 0x80000002147902A0;
  v252 = 0xD00000000000001CLL;
  v253 = v100;

  v105 = v217;
  v106 = v103(&v234, &v225, &v250);
  v217 = v105;
  if (v105)
  {

    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);

LABEL_27:
    v123 = v230;
    v124 = v212;

    *(v124 + 112) = v103;
    *(v124 + 120) = v102;
    *(v124 + 128) = v214;
    *(v124 + 136) = v123;
    *(v124 + 137) = v104;
    goto LABEL_12;
  }

  if ((v106 & 1) == 0)
  {

    sub_214031C4C();
    v120 = swift_allocError();
    *v121 = 0xD00000000000001DLL;
    v121[1] = 0x80000002147902A0;
    v122 = v215;
    v121[2] = 0xD00000000000001CLL;
    v121[3] = v122;
    v217 = v120;
    swift_willThrow();
    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);
    goto LABEL_27;
  }

  v112 = v215;

  v113 = v212;

  *(v113 + 112) = v103;
  *(v113 + 120) = v102;
  *(v113 + 128) = v203;
  *(v113 + 136) = 0;
  *(v113 + 137) = v104;
  v115 = *(v113 + 144);
  v114 = *(v113 + 152);
  v116 = *(v113 + 168);
  v214 = *(v113 + 160);
  v117 = *(v113 + 176);
  *&v234 = v199;
  *(&v234 + 1) = v204;
  LOBYTE(v230) = v117;
  v250 = 0xD000000000000029;
  v251 = 0x80000002147902C0;
  v252 = 0xD00000000000001CLL;
  v253 = v112;

  v118 = v217;
  v119 = v115(&v234, &v230, &v250);
  v217 = v118;
  if (v118)
  {

LABEL_32:

    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);
    v137 = v212;

    *(v137 + 144) = v115;
    *(v137 + 152) = v114;
    *(v137 + 160) = v214;
    *(v137 + 168) = v116;
    *(v137 + 176) = v117;
    goto LABEL_12;
  }

  if ((v119 & 1) == 0)
  {
    sub_214031C4C();
    v134 = swift_allocError();
    *v135 = 0xD000000000000029;
    v135[1] = 0x80000002147902C0;
    v136 = v215;
    v135[2] = 0xD00000000000001CLL;
    v135[3] = v136;
    v217 = v134;
    swift_willThrow();

    goto LABEL_32;
  }

  v125 = v215;

  v126 = v212;

  *(v126 + 144) = v115;
  *(v126 + 152) = v114;
  v127 = v204;
  *(v126 + 160) = v199;
  *(v126 + 168) = v127;
  *(v126 + 176) = v117;
  v129 = *(v126 + 216);
  v128 = *(v126 + 224);
  v130 = *(v126 + 240);
  v214 = *(v126 + 232);
  v131 = *(v126 + 248);
  *&v234 = v197;
  *(&v234 + 1) = v202;
  LOBYTE(v230) = v131;
  v250 = 0xD00000000000002BLL;
  v251 = 0x80000002147902F0;
  v252 = 0xD00000000000001CLL;
  v253 = v125;

  v132 = v217;
  v133 = v129(&v234, &v230, &v250);
  v217 = v132;
  if (v132)
  {

LABEL_37:

    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);
    v151 = v212;

    *(v151 + 216) = v129;
    *(v151 + 224) = v128;
    *(v151 + 232) = v214;
    *(v151 + 240) = v130;
    *(v151 + 248) = v131;
    goto LABEL_12;
  }

  if ((v133 & 1) == 0)
  {
    sub_214031C4C();
    v148 = swift_allocError();
    *v149 = 0xD00000000000002BLL;
    v149[1] = 0x80000002147902F0;
    v150 = v215;
    v149[2] = 0xD00000000000001CLL;
    v149[3] = v150;
    v217 = v148;
    swift_willThrow();
    goto LABEL_37;
  }

  v138 = v215;

  v139 = v212;

  *(v139 + 216) = v129;
  *(v139 + 224) = v128;
  v140 = v202;
  *(v139 + 232) = v197;
  *(v139 + 240) = v140;
  *(v139 + 248) = v131;
  v142 = *(v139 + 272);
  v141 = *(v139 + 280);
  v143 = *(v139 + 288);
  v144 = *(v139 + 296);
  LODWORD(v214) = *(v139 + 297);
  v145 = *(v139 + 298);
  *&v234 = v195;
  BYTE8(v234) = v194;
  LOBYTE(v230) = v145;
  v250 = 0xD000000000000026;
  v251 = 0x8000000214790320;
  v252 = 0xD00000000000001CLL;
  v253 = v138;

  v146 = v217;
  v147 = v142(&v234, &v230, &v250);
  v217 = v146;
  if (v146)
  {
    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);

LABEL_42:
    v164 = v212;

    *(v164 + 272) = v142;
    *(v164 + 280) = v141;
    *(v164 + 288) = v143;
    *(v164 + 296) = v144;
    *(v164 + 297) = v214;
    *(v164 + 298) = v145;
    goto LABEL_12;
  }

  if ((v147 & 1) == 0)
  {
    sub_214031C4C();
    v161 = swift_allocError();
    *v162 = 0xD000000000000026;
    v162[1] = 0x8000000214790320;
    v163 = v215;
    v162[2] = 0xD00000000000001CLL;
    v162[3] = v163;
    v217 = v161;
    swift_willThrow();
    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);
    goto LABEL_42;
  }

  v152 = v215;

  v153 = v212;

  *(v153 + 272) = v142;
  *(v153 + 280) = v141;
  *(v153 + 288) = v195;
  *(v153 + 296) = v194;
  *(v153 + 297) = 0;
  *(v153 + 298) = v145;
  v155 = *(v153 + 304);
  v154 = *(v153 + 312);
  v156 = *(v153 + 320);
  LODWORD(v214) = *(v153 + 328);
  v157 = *(v153 + 329);
  v158 = *(v153 + 330);
  *&v234 = v187;
  BYTE8(v234) = v186;
  LOBYTE(v230) = v158;
  v250 = 0xD000000000000025;
  v251 = 0x8000000214790350;
  v252 = 0xD00000000000001CLL;
  v253 = v152;

  v159 = v217;
  v160 = v155(&v234, &v230, &v250);
  v217 = v159;
  if (v159)
  {
    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);

LABEL_46:
    v169 = v212;

    *(v169 + 304) = v155;
    *(v169 + 312) = v154;
    *(v169 + 320) = v156;
    *(v169 + 328) = v214;
    *(v169 + 329) = v157;
    *(v169 + 330) = v158;
    goto LABEL_12;
  }

  if ((v160 & 1) == 0)
  {
    sub_214031C4C();
    v166 = swift_allocError();
    *v167 = 0xD000000000000025;
    v167[1] = 0x8000000214790350;
    v168 = v215;
    v167[2] = 0xD00000000000001CLL;
    v167[3] = v168;
    v217 = v166;
    swift_willThrow();
    sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
    (*(v218 + 8))(v198, v219);
    goto LABEL_46;
  }

  sub_213FB2DF4(v216, &qword_27C909358, qword_214773860);
  (*(v218 + 8))(v198, v219);
  v165 = v212;

  *(v165 + 304) = v155;
  *(v165 + 312) = v154;
  *(v165 + 320) = v187;
  *(v165 + 328) = v186;
  *(v165 + 330) = v158;
  sub_214328704(v165, v213, type metadata accessor for IMS3GPPCharacteristic);
  return __swift_destroy_boxed_opaque_existential_1(v255);
}

uint64_t sub_2141D8510(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9093A0, &qword_2146F5680);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304B3C();
  sub_2146DAA28();
  LOBYTE(v16) = *v3;
  v20 = 0;
  sub_214304AE8();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = *(v3 + 32);
  if (v9 != 1)
  {
    v16 = *(v3 + 24);
    v17 = v9;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    LOBYTE(v16) = 2;
    sub_2146DA338();
    if ((*(v3 + 72) & 1) == 0)
    {
      LOBYTE(v16) = 3;
      sub_2146DA368();
      if ((*(v3 + 104) & 1) == 0)
      {
        LOBYTE(v16) = 4;
        sub_2146DA368();
        if ((*(v3 + 136) & 1) == 0)
        {
          LOBYTE(v16) = 5;
          sub_2146DA368();
          if (*(v3 + 168))
          {
            LOBYTE(v16) = 6;

            sub_2146DA328();

            v11 = *(v3 + 192);
            v12 = *(v3 + 200);
            v13 = *(v3 + 208);
            v16 = *(v3 + 184);
            v17 = v11;
            v18 = v12;
            v19 = v13;
            v20 = 7;
            sub_214304D70();

            sub_2146DA388();

            if (*(v3 + 240))
            {
              LOBYTE(v16) = 8;

              sub_2146DA328();

              v16 = *(v3 + 256);
              v20 = 9;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909378, &qword_2146F5678);
              sub_214304DC4();
              sub_2146DA388();

              LOBYTE(v16) = 10;
              sub_2146DA338();
              if ((*(v3 + 297) & 1) == 0)
              {
                v14 = *(v3 + 296);
                v16 = *(v3 + 288);
                LOBYTE(v17) = v14 & 1;
                v20 = 11;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
                sub_2142E1C30();
                sub_2146DA388();
                if ((*(v3 + 329) & 1) == 0)
                {
                  v15 = *(v3 + 328);
                  v16 = *(v3 + 320);
                  LOBYTE(v17) = v15 & 1;
                  v20 = 12;
                  sub_2146DA388();
                  type metadata accessor for IMS3GPPCharacteristic(0);
                  LOBYTE(v16) = 13;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909358, qword_214773860);
                  sub_214304E9C();
                  sub_2146DA388();
                  return (*(v6 + 8))(v8, v5);
                }
              }
            }
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141D8B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000214795DD0 == a2)
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

uint64_t sub_2141D8BC4(uint64_t a1)
{
  v2 = sub_214304F50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D8C00(uint64_t a1)
{
  v2 = sub_214304F50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D8C3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for IMSGSMACharacteristic(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9093D0, &qword_2146F5688);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304F50();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v14;
    sub_214328930(&qword_27C9093E0, type metadata accessor for IMSGSMACharacteristic, a9um);
    v11 = v15;
    sub_2146DA1C8();
    (*(v7 + 8))(v9, v6);
    sub_214328704(v11, v10, type metadata accessor for IMSGSMACharacteristic);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D8E48(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9093E8, &qword_2146F5690);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304F50();
  sub_2146DAA28();
  type metadata accessor for IMSGSMACharacteristic(0);
  sub_214328930(&qword_27C9093F0, type metadata accessor for IMSGSMACharacteristic, byte_2146FCEF8);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2141D8FD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9093E8, &qword_2146F5690);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304F50();
  sub_2146DAA28();
  type metadata accessor for IMSGSMACharacteristic(0);
  sub_214328930(&qword_27C9093F0, type metadata accessor for IMSGSMACharacteristic, byte_2146FCEF8);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

_BYTE *sub_2141D9150@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, _BYTE *a9@<X8>, char *a10)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a8;
  v17 = *a10;
  *a9 = *result;
  a9[1] = v10;
  a9[2] = v11;
  a9[3] = v12;
  a9[4] = v13;
  a9[5] = v14;
  a9[6] = v15;
  a9[7] = v16;
  a9[8] = v17;
  return result;
}

unint64_t sub_2141D91A0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C616E6769537370;
    v6 = 0x6964654D54527370;
    if (a1 != 2)
    {
      v6 = 0xD000000000000013;
    }

    if (a1)
    {
      v5 = 0x616964654D7370;
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
    v1 = 0x6E67695369666977;
    v2 = 0x6964654D69666977;
    if (a1 != 7)
    {
      v2 = 0x654D545269666977;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x52616964654D7370;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
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

uint64_t sub_2141D9300@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214373ECC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141D9328(uint64_t a1)
{
  v2 = sub_214304FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D9364(uint64_t a1)
{
  v2 = sub_214304FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D93A0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9093F8, &qword_2146F5698);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304FA4();
  sub_2146DAA08();
  if (!v2)
  {
    v26 = 0;
    sub_214304FF8();
    sub_2146DA1C8();
    v24 = a2;
    v9 = v27;
    v26 = 1;
    v10 = sub_21430504C();
    sub_2146DA1C8();
    v23 = v10;
    v25 = v9;
    v11 = v27;
    v26 = 2;
    sub_2143050A0();
    sub_2146DA1C8();
    v22 = v11;
    LOBYTE(v11) = v27;
    v26 = 3;
    sub_2146DA1C8();
    v12 = v11;
    v13 = v27;
    v26 = 4;
    sub_2146DA1C8();
    LODWORD(v23) = v13;
    v14 = v27;
    v26 = 5;
    sub_2146DA1C8();
    v21 = v14;
    LOBYTE(v14) = v27;
    v26 = 6;
    sub_2143050F4();
    sub_2146DA1C8();
    LOBYTE(v10) = v27;
    v26 = 7;
    sub_214305148();
    sub_2146DA1C8();
    HIDWORD(v20) = v27;
    v26 = 8;
    sub_21430519C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v16 = v27;
    v17 = v24;
    *v24 = v25;
    v18 = v23;
    v17[1] = v22;
    v17[2] = v12;
    v17[3] = v18;
    v19 = BYTE4(v20);
    v17[4] = v21;
    v17[5] = v14;
    v17[6] = v10;
    v17[7] = v19;
    v17[8] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D9784(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909438, &qword_2146F56A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v21 = v1[1];
  v9 = v1[2];
  v19 = v1[3];
  v20 = v9;
  v10 = v1[4];
  v17 = v1[5];
  v18 = v10;
  v11 = v1[6];
  v15 = v1[7];
  v16 = v11;
  HIDWORD(v14) = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304FA4();
  sub_2146DAA28();
  v23 = v8;
  v22 = 0;
  sub_2143051F0();
  sub_2146DA388();
  if (!v2)
  {
    v12 = v20;
    v23 = v21;
    v22 = 1;
    sub_214305244();
    sub_2146DA388();
    v23 = v12;
    v22 = 2;
    sub_214305298();
    sub_2146DA388();
    v23 = v19;
    v22 = 3;
    sub_2146DA388();
    v23 = v18;
    v22 = 4;
    sub_2146DA388();
    v23 = v17;
    v22 = 5;
    sub_2146DA388();
    v23 = v16;
    v22 = 6;
    sub_2143052EC();
    sub_2146DA388();
    v23 = v15;
    v22 = 7;
    sub_214305340();
    sub_2146DA388();
    v23 = BYTE4(v14);
    v22 = 8;
    sub_214305394();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2141D9B88@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v80 = a2;
  v13 = *a3;
  v14 = type metadata accessor for IMSGSMACharacteristic(0);
  v64 = a4;
  sub_213FB2E54(a4, a9 + v14[6], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(a11, a9 + v14[10], &unk_27C904F30, &unk_2146EFA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2140676DC;
  *(v16 + 24) = 0;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v76);
  v17 = v77;
  v18 = v78;
  v19 = v79;
  sub_2144A3110(&v72);
  v21 = v73;
  v20 = v74;
  v22 = v75;
  sub_2144A3144(v70);
  v23 = v71;
  *a9 = v76;
  *(a9 + 16) = v17;
  *(a9 + 24) = v18;
  *(a9 + 32) = v19;
  *(a9 + 33) = v13;
  v24 = a9 + v14[7];
  *v24 = v72;
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  v25 = a9 + v14[8];
  v26 = v70[1];
  *v25 = v70[0];
  *(v25 + 16) = v26;
  *(v25 + 32) = v23;
  v27 = a9 + v14[9];
  *(v27 + 8) = *(a10 + 8);
  *v27 = *a10;
  v29 = *a9;
  v28 = *(a9 + 8);
  v31 = *(a9 + 16);
  v30 = *(a9 + 24);
  LOBYTE(v27) = *(a9 + 32);
  *&v72 = a1;
  *(&v72 + 1) = v80;
  v62 = v27;
  LOBYTE(v70[0]) = v27;
  *&v76 = 0xD00000000000001CLL;
  *(&v76 + 1) = 0x8000000214790380;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  v32 = v29(&v72, v70, &v76);
  if (v69)
  {

LABEL_6:

    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v64, &unk_27C9131A0, &unk_2146E9D10);

    *a9 = v29;
    *(a9 + 8) = v28;
    *(a9 + 16) = v31;
    *(a9 + 24) = v30;
    *(a9 + 32) = v62;
    return sub_21432887C(a9, type metadata accessor for IMSGSMACharacteristic);
  }

  v59 = v25;
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD00000000000001CLL;
    v41[1] = 0x8000000214790380;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  *a9 = v29;
  *(a9 + 8) = v28;
  v33 = v80;
  *(a9 + 16) = a1;
  *(a9 + 24) = v33;
  *(a9 + 32) = v62;
  v35 = *v24;
  v34 = *(v24 + 8);
  v36 = *(v24 + 16);
  v37 = *(v24 + 24);
  v38 = *(v24 + 32);
  *&v72 = a5;
  *(&v72 + 1) = a6;
  LODWORD(v80) = v38;
  LOBYTE(v70[0]) = v38;
  *&v76 = 0xD00000000000001ELL;
  *(&v76 + 1) = 0x80000002147903A0;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;
  v39 = v36;

  sub_213FDC9D0(v39, v37);
  v67 = v35;
  v40 = v35(&v72, v70, &v76);
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD00000000000001ELL;
    v51[1] = 0x80000002147903A0;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v64, &unk_27C9131A0, &unk_2146E9D10);
    v52 = *(v24 + 16);
    v53 = *(v24 + 24);

    sub_213FDC6D0(v52, v53);
    *v24 = v67;
    *(v24 + 8) = v34;
    *(v24 + 16) = v39;
    *(v24 + 24) = v37;
    *(v24 + 32) = v80;
    return sub_21432887C(a9, type metadata accessor for IMSGSMACharacteristic);
  }

  sub_213FDC6D0(v39, v37);

  v43 = *(v24 + 16);
  v44 = *(v24 + 24);

  sub_213FDC6D0(v43, v44);
  *v24 = v35;
  *(v24 + 8) = v34;
  *(v24 + 16) = a5;
  *(v24 + 24) = a6;
  *(v24 + 32) = v80;
  v46 = *v25;
  v45 = *(v25 + 8);
  v47 = *(v25 + 16);
  v48 = *(v25 + 24);
  v49 = *(v25 + 32);
  *&v72 = a7;
  *(&v72 + 1) = a8;
  v68 = v49;
  LOBYTE(v70[0]) = v49;
  *&v76 = 0xD000000000000022;
  *(&v76 + 1) = 0x80000002147903C0;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  sub_213FDC9D0(v47, v48);
  v80 = v46;
  v50 = v46(&v72, v70, &v76);
  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD000000000000022;
    v56[1] = 0x80000002147903C0;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v64, &unk_27C9131A0, &unk_2146E9D10);
    v57 = *(v25 + 16);
    v58 = *(v25 + 24);

    sub_213FDC6D0(v57, v58);
    *v59 = v80;
    *(v59 + 8) = v45;
    *(v59 + 16) = v47;
    *(v59 + 24) = v48;
    *(v59 + 32) = v68;
    return sub_21432887C(a9, type metadata accessor for IMSGSMACharacteristic);
  }

  sub_213FDC6D0(v47, v48);

  sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2DF4(v64, &unk_27C9131A0, &unk_2146E9D10);
  v54 = *(v25 + 16);
  v55 = *(v25 + 24);

  result = sub_213FDC6D0(v54, v55);
  *v25 = v80;
  *(v25 + 8) = v45;
  *(v25 + 16) = a7;
  *(v25 + 24) = a8;
  *(v25 + 32) = v68;
  return result;
}

uint64_t sub_2141DA274()
{
  v1 = *v0;
  v2 = 0x666552707061;
  v3 = 0x726F70736E617274;
  if (v1 != 5)
  {
    v3 = 0x756C615664697575;
  }

  v4 = 0x656D614E72657375;
  if (v1 != 3)
  {
    v4 = 0x7373615072657375;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6570795468747561;
  if (v1 != 1)
  {
    v5 = 0x6D6C616572;
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

uint64_t sub_2141DA360@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143741DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141DA388(uint64_t a1)
{
  v2 = sub_2143053E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141DA3C4(uint64_t a1)
{
  v2 = sub_2143053E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141DA400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v84);
  v83 = &v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4);
  v6 = &v71 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909470, &qword_2146F56A8);
  v85 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v71 - v8;
  v10 = type metadata accessor for IMSGSMACharacteristic(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2143053E8();
  v14 = v86;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v80 = v10;
  v81 = v6;
  v86 = v12;
  LOBYTE(v94) = 0;
  v15 = sub_2146DA168();
  v17 = v16;
  v18 = v15;
  LOBYTE(v90) = 1;
  sub_21430543C();
  sub_2146DA1C8();
  LODWORD(v79) = v94;
  LOBYTE(v94) = 2;
  sub_2142E27A8();
  sub_2146DA1C8();
  v78 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v90) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v77 = v17;
  v20 = v94;
  LOBYTE(v90) = 4;
  sub_2146DA1C8();
  v21 = v81;
  v76 = v20;
  v22 = v94;
  v102 = 5;
  sub_214305490();
  sub_2146DA1C8();
  v75 = *(&v22 + 1);
  v98 = v100;
  v99 = v101;
  LOBYTE(v94) = 6;
  sub_2142EFBA8();
  v23 = v83;
  sub_2146DA1C8();
  v72 = v22;
  v24 = v80;
  v25 = v21;
  v26 = v86;
  sub_213FB2E54(v25, &v86[v80[6]], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v23, v26 + v24[10], &unk_27C904F30, &unk_2146EFA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2140676DC;
  *(v28 + 24) = 0;
  *(inited + 32) = v28;
  sub_214042B80(inited, &v94);
  v29 = v95;
  v30 = v96;
  LOBYTE(v23) = v97;
  sub_2144A3110(&v90);
  v31 = v91;
  v84 = v92;
  LODWORD(v74) = v93;
  sub_2144A3144(v88);
  v32 = v89;
  *v26 = v94;
  *(v26 + 16) = v29;
  *(v26 + 24) = v30;
  *(v26 + 32) = v23;
  *(v26 + 33) = v79;
  v33 = v26 + v24[7];
  *v33 = v90;
  v34 = v84;
  *(v33 + 16) = v31;
  *(v33 + 24) = v34;
  v73 = v33;
  *(v33 + 32) = v74;
  v35 = v26 + v24[8];
  v36 = v88[1];
  *v35 = v88[0];
  *(v35 + 16) = v36;
  v74 = v35;
  *(v35 + 32) = v32;
  v37 = v26 + v24[9];
  *(v37 + 8) = v99;
  *v37 = v98;
  v39 = *v26;
  v38 = *(v26 + 8);
  v40 = *(v26 + 24);
  v79 = *(v26 + 16);
  v41 = *(v26 + 32);
  *&v90 = v78;
  *(&v90 + 1) = v77;
  LOBYTE(v88[0]) = v41;
  *&v94 = 0xD00000000000001CLL;
  *(&v94 + 1) = 0x8000000214790380;
  v95 = 0xD00000000000001CLL;
  v96 = 0x800000021478A360;
  v80 = v40;

  v84 = v39;
  v42 = v39(&v90, v88, &v94);
  if (v42)
  {
    v79 = v9;
    v71 = v7;

    v43 = v86;

    *v43 = v84;
    *(v43 + 8) = v38;
    v44 = v77;
    *(v43 + 16) = v78;
    *(v43 + 24) = v44;
    *(v43 + 32) = v41;
    v45 = *v73;
    v46 = *(v73 + 8);
    v47 = *(v73 + 16);
    v48 = *(v73 + 24);
    v49 = *(v73 + 32);
    v90 = v76;
    LOBYTE(v88[0]) = v49;
    *&v94 = 0xD00000000000001ELL;
    *(&v94 + 1) = 0x80000002147903A0;
    v95 = 0xD00000000000001CLL;
    v96 = 0x800000021478A360;

    v50 = v47;
    sub_213FDC9D0(v47, v48);
    v51 = v45(&v90, v88, &v94);
    if (v51)
    {
      sub_213FDC6D0(v47, v48);

      v55 = v73;
      v56 = *(v73 + 16);
      v57 = *(v73 + 24);

      sub_213FDC6D0(v56, v57);
      *v55 = v45;
      *(v55 + 8) = v46;
      v58 = *(&v76 + 1);
      *(v55 + 16) = v76;
      *(v55 + 24) = v58;
      *(v55 + 32) = v49;
      v45 = *v74;
      v46 = *(v74 + 8);
      v59 = *(v74 + 16);
      v48 = *(v74 + 24);
      v49 = *(v74 + 32);
      *&v90 = v72;
      *(&v90 + 1) = v75;
      LOBYTE(v88[0]) = v49;
      *&v94 = 0xD000000000000022;
      *(&v94 + 1) = 0x80000002147903C0;
      v95 = 0xD00000000000001CLL;
      v96 = 0x800000021478A360;

      v50 = v59;
      sub_213FDC9D0(v59, v48);
      v60 = v45(&v90, v88, &v94);
      if (v60)
      {
        sub_213FDC6D0(v59, v48);

        sub_213FB2DF4(v83, &unk_27C904F30, &unk_2146EFA20);
        sub_213FB2DF4(v81, &unk_27C9131A0, &unk_2146E9D10);
        (*(v85 + 8))(v79, v71);
        v66 = v74;
        v67 = *(v74 + 16);
        v68 = *(v74 + 24);

        sub_213FDC6D0(v67, v68);
        *v66 = v45;
        *(v66 + 8) = v46;
        v69 = v75;
        *(v66 + 16) = v72;
        *(v66 + 24) = v69;
        *(v66 + 32) = v49;
        sub_214328704(v86, v82, type metadata accessor for IMSGSMACharacteristic);
        return __swift_destroy_boxed_opaque_existential_1(v87);
      }

      sub_214031C4C();
      swift_allocError();
      *v70 = 0xD000000000000022;
      v70[1] = 0x80000002147903C0;
      v70[2] = 0xD00000000000001CLL;
      v70[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(v83, &unk_27C904F30, &unk_2146EFA20);
      sub_213FB2DF4(v81, &unk_27C9131A0, &unk_2146E9D10);
      (*(v85 + 8))(v79, v71);
      v62 = &v94 + 8;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v61 = 0xD00000000000001ELL;
      v61[1] = 0x80000002147903A0;
      v61[2] = 0xD00000000000001CLL;
      v61[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(v83, &unk_27C904F30, &unk_2146EFA20);
      sub_213FB2DF4(v81, &unk_27C9131A0, &unk_2146E9D10);
      (*(v85 + 8))(v79, v71);
      v62 = &v94;
    }

    v63 = *(v62 - 32);
    v64 = *(v63 + 16);
    v65 = *(v63 + 24);

    sub_213FDC6D0(v64, v65);
    *v63 = v45;
    *(v63 + 8) = v46;
    *(v63 + 16) = v50;
    *(v63 + 24) = v48;
    *(v63 + 32) = v49;
    v53 = v86;
  }

  else
  {
    LODWORD(v82) = v41;
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD00000000000001CLL;
    v52[1] = 0x8000000214790380;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v83, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v81, &unk_27C9131A0, &unk_2146E9D10);
    (*(v85 + 8))(v9, v7);
    v53 = v86;

    *v53 = v84;
    *(v53 + 8) = v38;
    v54 = v80;
    *(v53 + 16) = v79;
    *(v53 + 24) = v54;
    *(v53 + 32) = v82;
  }

  __swift_destroy_boxed_opaque_existential_1(v87);
  return sub_21432887C(v53, type metadata accessor for IMSGSMACharacteristic);
}

uint64_t sub_2141DB17C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909490, &qword_2146F56B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143053E8();
  sub_2146DAA28();
  if (!*(v3 + 24))
  {
    goto LABEL_7;
  }

  LOBYTE(v18) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v18) = *(v3 + 33);
  LOBYTE(v16) = 1;
  sub_2143054E4();
  sub_2146DA388();
  v10 = type metadata accessor for IMSGSMACharacteristic(0);
  LOBYTE(v18) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  sub_2142E2910();
  sub_2146DA388();
  v11 = v3 + v10[7];
  v12 = *(v11 + 24);
  if (v12 == 1 || (v18 = *(v11 + 16), v19 = v12, LOBYTE(v16) = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v13 = v3 + v10[8], v14 = *(v13 + 24), v14 == 1))
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = *(v13 + 16);
    v19 = v14;
    v21 = 4;
    sub_2146DA388();
    v15 = (v3 + v10[9]);
    v16 = *v15;
    v17 = *(v15 + 8);
    v20 = 5;
    sub_214305538();
    sub_2146DA388();
    LOBYTE(v16) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    sub_2142EFE18();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_2141DB56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v25[0] = a4;
  v7 = type metadata accessor for SwiftRegexValidator(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903220 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v13 = __swift_project_value_buffer(v12, qword_27CA19E98);
  (*(*(v12 - 8) + 16))(v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v14 = swift_allocObject();
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_214328704(v10, v16 + v15, type metadata accessor for SwiftRegexValidator);
  *(v14 + 16) = sub_21438F684;
  *(v14 + 24) = v16;
  *(inited + 32) = v14;
  sub_214042B80(inited, &v27);
  v18 = v27;
  v17 = v28;
  v19 = v31;
  v26[0] = a1;
  v26[1] = a2;
  v33 = v31;
  v27 = 0xD000000000000017;
  v28 = 0x80000002147903F0;
  v29 = 0xD00000000000001CLL;
  v30 = 0x800000021478A360;

  v20 = v25[1];
  v21 = v18(v26, &v33, &v27);
  if (v20)
  {
  }

  else
  {
    if (v21)
    {

      v23 = v25[0];
      *v25[0] = v18;
      *(v23 + 8) = v17;
      *(v23 + 16) = a1;
      *(v23 + 24) = a2;
      *(v23 + 32) = v19;
      *(v23 + 33) = v32;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000017;
    v24[1] = 0x80000002147903F0;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_2141DB8AC()
{
  if (*v0)
  {
    return 0x5473736572646461;
  }

  else
  {
    return 0x73736572646461;
  }
}

uint64_t sub_2141DB8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5473736572646461 && a2 == 0xEB00000000657079)
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

uint64_t sub_2141DB9D0(uint64_t a1)
{
  v2 = sub_21430558C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141DBA0C(uint64_t a1)
{
  v2 = sub_21430558C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141DBA48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for SwiftRegexValidator(0);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094A8, &qword_2146F56B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v10 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430558C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v32 = v7;
  LOBYTE(v37) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v31 = v11;
  LOBYTE(v36[0]) = 1;
  sub_2143055E0();
  sub_2146DA1C8();
  v30 = v13;
  v42 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v16 = inited;
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903220 != -1)
  {
    swift_once();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v18 = __swift_project_value_buffer(v17, qword_27CA19E98);
  (*(*(v17 - 8) + 16))(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  v20 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_214328704(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SwiftRegexValidator);
  *(v19 + 16) = sub_21438F684;
  *(v19 + 24) = v21;
  *(v16 + 32) = v19;
  sub_214042B80(v16, &v37);
  v22 = v37;
  v23 = v38;
  v24 = v40;
  v25 = v41;
  v36[0] = v31;
  v36[1] = v30;
  v43 = v41;
  v37 = 0xD000000000000017;
  v38 = 0x80000002147903F0;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;
  v34 = v24;

  if (v22(v36, &v43, &v37))
  {
    v26 = v22;

    (*(v32 + 8))(v9, v6);

    v27 = v33;
    *v33 = v26;
    v27[1] = v23;
    v28 = v30;
    v27[2] = v31;
    v27[3] = v28;
    *(v27 + 32) = v25;
    *(v27 + 33) = v42;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000017;
    v29[1] = 0x80000002147903F0;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v32 + 8))(v9, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_2141DBF90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094C0, &qword_2146F56C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 24);
  v11 = *(v1 + 33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430558C();
  sub_2146DAA28();
  if (v7)
  {
    v14 = 0;

    v8 = v10[1];
    sub_2146DA328();
    if (v8)
    {
      (*(v4 + 8))(v6, v3);
    }

    else
    {

      v13 = v11;
      v12 = 1;
      sub_214305634();
      sub_2146DA388();
      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141DC1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6573736572646461 && a2 == 0xE900000000000073)
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

uint64_t sub_2141DC278(uint64_t a1)
{
  v2 = sub_214305688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141DC2B4(uint64_t a1)
{
  v2 = sub_214305688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141DC2F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094D0, &qword_2146F56C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305688();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094E0, &qword_2146F56D0);
    sub_2143056DC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141DC470(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094F8, &qword_2146F56D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305688();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094E0, &qword_2146F56D0);
  sub_2143057B4();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141DC614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v81 = a12;
  v57 = *a4;
  sub_213FB2E54(a1, a9, &qword_27C909510, &qword_2146F56E0);
  v15 = type metadata accessor for MessagingCharacteristic(0);
  v65 = a2;
  sub_213FB2E54(a2, a9 + v15[5], &qword_27C909518, &qword_2146F56E8);
  v66 = a8;
  sub_213FB2E54(a8, a9 + v15[10], &qword_27C909520, &qword_2146F56F0);
  sub_213FB2E54(a10, a9 + v15[11], &qword_27C909528, &qword_2146F56F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146ED240;
  *(v17 + 16) = sub_21438F468;
  *(v17 + 24) = v18;
  *(inited + 32) = v17;
  sub_21404328C(inited, &v77);
  v19 = v78;
  LOBYTE(v17) = v79;
  v20 = v80;
  sub_2145154D0(&v72);
  v21 = v73;
  LOBYTE(a8) = v74;
  LOBYTE(a2) = v75;
  v54 = v76;
  sub_21451550C(&v69);
  v22 = v71;
  v23 = a9 + v15[6];
  *v23 = v77;
  *(v23 + 16) = v19;
  *(v23 + 24) = v17;
  *(v23 + 25) = v20;
  *(a9 + v15[7]) = v57;
  *(a9 + v15[8]) = a5;
  v24 = a9 + v15[9];
  *v24 = v72;
  *(v24 + 16) = v21;
  *(v24 + 24) = a8;
  *(v24 + 25) = a2;
  *(v24 + 26) = v54;
  v25 = a9 + v15[12];
  v26 = v70;
  *v25 = v69;
  *(v25 + 16) = v26;
  *(v25 + 32) = v22;
  v28 = *v23;
  v27 = *(v23 + 8);
  v55 = *(v23 + 16);
  v29 = *(v23 + 24);
  v30 = *(v23 + 25);
  LOBYTE(v77) = v29;
  *&v72 = a3;
  v59 = v30;
  v68 = v30;
  *&v69 = 0xD00000000000002ELL;
  *(&v69 + 1) = 0x8000000214790410;
  *&v70 = 0xD00000000000001CLL;
  *(&v70 + 1) = 0x800000021478A360;

  v31 = v28(&v72, &v68, &v69);
  if (v64)
  {

    sub_213FB2DF4(a10, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v66, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v65, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(a1, &qword_27C909510, &qword_2146F56E0);

LABEL_6:

    *v23 = v28;
    *(v23 + 8) = v27;
    *(v23 + 16) = v55;
    *(v23 + 24) = v29;
    *(v23 + 25) = v59;
    return sub_21432887C(a9, type metadata accessor for MessagingCharacteristic);
  }

  v51 = v25;
  if ((v31 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000002ELL;
    v36[1] = 0x8000000214790410;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a10, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v66, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v65, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(a1, &qword_27C909510, &qword_2146F56E0);
    v29 = v77;
    goto LABEL_6;
  }

  *v23 = v28;
  *(v23 + 8) = v27;
  *(v23 + 16) = a3;
  *(v23 + 24) = 0;
  *(v23 + 25) = v59;
  v33 = *v24;
  v32 = *(v24 + 8);
  v62 = *(v24 + 16);
  v60 = *(v24 + 24);
  v56 = *(v24 + 25);
  v34 = *(v24 + 26);
  *&v72 = a6;
  BYTE8(v72) = a7 & 1;
  LOBYTE(v77) = v34;
  *&v69 = 0xD00000000000002BLL;
  *(&v69 + 1) = 0x8000000214790440;
  *&v70 = 0xD00000000000001CLL;
  *(&v70 + 1) = 0x800000021478A360;

  v35 = v33(&v72, &v77, &v69);
  if ((v35 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD00000000000002BLL;
    v44[1] = 0x8000000214790440;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a10, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v66, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v65, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(a1, &qword_27C909510, &qword_2146F56E0);

    *v24 = v33;
    *(v24 + 8) = v32;
    *(v24 + 16) = v62;
    *(v24 + 24) = v60;
    *(v24 + 25) = v56;
    *(v24 + 26) = v34;
    return sub_21432887C(a9, type metadata accessor for MessagingCharacteristic);
  }

  *v24 = v33;
  *(v24 + 8) = v32;
  *(v24 + 16) = a6;
  *(v24 + 24) = a7 & 1;
  *(v24 + 25) = 0;
  *(v24 + 26) = v34;
  v39 = *v25;
  v38 = *(v25 + 8);
  v40 = *(v25 + 16);
  v41 = *(v51 + 24);
  v42 = *(v51 + 32);
  *&v72 = a11;
  *(&v72 + 1) = v81;
  v63 = v42;
  LOBYTE(v77) = v42;
  *&v69 = 0xD000000000000035;
  *(&v69 + 1) = 0x8000000214790470;
  *&v70 = 0xD00000000000001CLL;
  *(&v70 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v40, v41);
  v43 = v39(&v72, &v77, &v69);
  if (v43)
  {
    sub_213FDC6D0(v40, v41);

    sub_213FB2DF4(a10, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v66, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v65, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(a1, &qword_27C909510, &qword_2146F56E0);
    v45 = *(v51 + 16);
    v46 = *(v51 + 24);

    result = sub_213FDC6D0(v45, v46);
    *v51 = v39;
    *(v51 + 8) = v38;
    v47 = v81;
    *(v51 + 16) = a11;
    *(v51 + 24) = v47;
    *(v51 + 32) = v63;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000035;
    v48[1] = 0x8000000214790470;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v66, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v65, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(a1, &qword_27C909510, &qword_2146F56E0);
    v49 = *(v51 + 16);
    v50 = *(v51 + 24);

    sub_213FDC6D0(v49, v50);
    *v51 = v39;
    *(v51 + 8) = v38;
    *(v51 + 16) = v40;
    *(v51 + 24) = v41;
    *(v51 + 32) = v63;
    return sub_21432887C(a9, type metadata accessor for MessagingCharacteristic);
  }

  return result;
}

unint64_t sub_2141DCEFC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0xD000000000000012;
    if (!a1)
    {
      v6 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001ALL;
    v2 = 0xD00000000000001DLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD000000000000019;
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

uint64_t sub_2141DD000@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214374430(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141DD028(uint64_t a1)
{
  v2 = sub_21430588C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141DD064(uint64_t a1)
{
  v2 = sub_21430588C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141DD0A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909528, &qword_2146F56F8);
  MEMORY[0x28223BE20](v69);
  v70 = &v57 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909520, &qword_2146F56F0);
  MEMORY[0x28223BE20](v71);
  v72 = &v57 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909518, &qword_2146F56E8);
  MEMORY[0x28223BE20](v75);
  v73 = &v57 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909510, &qword_2146F56E0);
  MEMORY[0x28223BE20](v74);
  v7 = &v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909530, &qword_2146F5700);
  v76 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for MessagingCharacteristic(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430588C();
  v14 = v90;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v67 = v11;
  v90 = v13;
  LOBYTE(v78) = 0;
  sub_2143058E0();
  sub_2146DA1C8();
  v15 = v7;
  LOBYTE(v78) = 1;
  sub_214305994();
  sub_2146DA1C8();
  LOBYTE(v78) = 2;
  v75 = sub_2146DA1A8();
  LOBYTE(v81) = 3;
  sub_214305A48();
  sub_2146DA1C8();
  v17 = v78;
  LOBYTE(v78) = 4;
  LODWORD(v74) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v81) = 5;
  sub_2142E11FC();
  sub_2146DA1C8();
  v66 = v15;
  v18 = v78;
  LODWORD(v15) = BYTE8(v78);
  LOBYTE(v78) = 6;
  sub_214305A9C();
  sub_2146DA1C8();
  v65 = v15;
  v71 = v18;
  LOBYTE(v78) = 7;
  sub_214305B50();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v81) = 8;
  sub_2142E12FC();
  sub_2146DA1C8();
  v63 = v10;
  v64 = v8;
  v69 = *(&v78 + 1);
  v57 = v78;
  v19 = v90;
  sub_213FB2E54(v66, v90, &qword_27C909510, &qword_2146F56E0);
  v20 = v67;
  sub_213FB2E54(v73, v19 + v67[5], &qword_27C909518, &qword_2146F56E8);
  sub_213FB2E54(v72, v19 + v20[10], &qword_27C909520, &qword_2146F56F0);
  sub_213FB2E54(v70, v19 + v20[11], &qword_27C909528, &qword_2146F56F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146ED240;
  *(v22 + 16) = sub_21438F468;
  *(v22 + 24) = v23;
  *(inited + 32) = v22;
  sub_21404328C(inited, &v86);
  v24 = v87;
  v25 = v88;
  v58 = v89;
  sub_2145154D0(&v81);
  v62 = v82;
  LODWORD(v61) = v83;
  v60 = v84;
  v59 = v85;
  sub_21451550C(&v78);
  v26 = v80;
  v27 = v19 + v20[6];
  *v27 = v86;
  *(v27 + 16) = v24;
  *(v27 + 24) = v25;
  *(v27 + 25) = v58;
  *(v19 + v20[7]) = v17;
  *(v19 + v20[8]) = v74 & 1;
  v28 = v19 + v20[9];
  *v28 = v81;
  *(v28 + 16) = v62;
  *(v28 + 24) = v61;
  *(v28 + 25) = v60;
  *(v28 + 26) = v59;
  v29 = v19 + v20[12];
  v30 = v79;
  *v29 = v78;
  *(v29 + 16) = v30;
  *(v29 + 32) = v26;
  v31 = *v27;
  v32 = *(v27 + 8);
  v61 = *(v27 + 16);
  v33 = *(v27 + 25);
  LOBYTE(v86) = *(v27 + 24);
  *&v81 = v75;
  LODWORD(v67) = v33;
  v77 = v33;
  *&v78 = 0xD00000000000002ELL;
  *(&v78 + 1) = 0x8000000214790410;
  *&v79 = 0xD00000000000001CLL;
  *(&v79 + 1) = 0x800000021478A360;
  v74 = 0x800000021478A360;

  v62 = v31;
  if (v31(&v81, &v77, &v78))
  {
    v34 = v74;

    *v27 = v62;
    *(v27 + 8) = v32;
    *(v27 + 16) = v75;
    *(v27 + 24) = 0;
    *(v27 + 25) = v67;
    v36 = *v28;
    v35 = *(v28 + 8);
    v75 = *(v28 + 16);
    LODWORD(v67) = *(v28 + 24);
    LODWORD(v62) = *(v28 + 25);
    v37 = *(v28 + 26);
    *&v81 = v71;
    BYTE8(v81) = v65;
    LOBYTE(v86) = v37;
    *&v78 = 0xD00000000000002BLL;
    *(&v78 + 1) = 0x8000000214790440;
    *&v79 = 0xD00000000000001CLL;
    *(&v79 + 1) = v34;

    if (v36(&v81, &v86, &v78))
    {
      v41 = v74;

      *v28 = v36;
      *(v28 + 8) = v35;
      *(v28 + 16) = v71;
      *(v28 + 24) = v65;
      *(v28 + 25) = 0;
      *(v28 + 26) = v37;
      v43 = *v29;
      v42 = *(v29 + 8);
      v45 = *(v29 + 16);
      v44 = *(v29 + 24);
      v46 = *(v29 + 32);
      *&v81 = v57;
      *(&v81 + 1) = v69;
      LODWORD(v71) = v46;
      LOBYTE(v86) = v46;
      *&v78 = 0xD000000000000035;
      *(&v78 + 1) = 0x8000000214790470;
      *&v79 = 0xD00000000000001CLL;
      *(&v79 + 1) = v41;

      v67 = v44;
      sub_213FDC9D0(v45, v44);
      v75 = v43;
      if (v43(&v81, &v86, &v78))
      {
        sub_213FDC6D0(v45, v67);

        sub_213FB2DF4(v70, &qword_27C909528, &qword_2146F56F8);
        sub_213FB2DF4(v72, &qword_27C909520, &qword_2146F56F0);
        sub_213FB2DF4(v73, &qword_27C909518, &qword_2146F56E8);
        sub_213FB2DF4(v66, &qword_27C909510, &qword_2146F56E0);
        (*(v76 + 8))(v63, v64);
        v49 = *(v29 + 16);
        v50 = *(v29 + 24);

        sub_213FDC6D0(v49, v50);
        *v29 = v75;
        *(v29 + 8) = v42;
        v51 = v69;
        *(v29 + 16) = v57;
        *(v29 + 24) = v51;
        *(v29 + 32) = v71;
        sub_214328704(v90, v68, type metadata accessor for MessagingCharacteristic);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      sub_214031C4C();
      swift_allocError();
      *v52 = 0xD000000000000035;
      v52[1] = 0x8000000214790470;
      v53 = v74;
      v52[2] = 0xD00000000000001CLL;
      v52[3] = v53;
      swift_willThrow();

      sub_213FB2DF4(v70, &qword_27C909528, &qword_2146F56F8);
      sub_213FB2DF4(v72, &qword_27C909520, &qword_2146F56F0);
      sub_213FB2DF4(v73, &qword_27C909518, &qword_2146F56E8);
      sub_213FB2DF4(v66, &qword_27C909510, &qword_2146F56E0);
      (*(v76 + 8))(v63, v64);
      v54 = *(v29 + 16);
      v55 = *(v29 + 24);

      sub_213FDC6D0(v54, v55);
      *v29 = v75;
      *(v29 + 8) = v42;
      v56 = v67;
      *(v29 + 16) = v45;
      *(v29 + 24) = v56;
      *(v29 + 32) = v71;
    }

    else
    {

      sub_214031C4C();
      swift_allocError();
      *v47 = 0xD00000000000002BLL;
      v47[1] = 0x8000000214790440;
      v48 = v74;
      v47[2] = 0xD00000000000001CLL;
      v47[3] = v48;
      swift_willThrow();
      sub_213FB2DF4(v70, &qword_27C909528, &qword_2146F56F8);
      sub_213FB2DF4(v72, &qword_27C909520, &qword_2146F56F0);
      sub_213FB2DF4(v73, &qword_27C909518, &qword_2146F56E8);
      sub_213FB2DF4(v66, &qword_27C909510, &qword_2146F56E0);
      (*(v76 + 8))(v63, v64);

      *v28 = v36;
      *(v28 + 8) = v35;
      *(v28 + 16) = v75;
      *(v28 + 24) = v67;
      *(v28 + 25) = v62;
      *(v28 + 26) = v37;
    }
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD00000000000002ELL;
    v38[1] = 0x8000000214790410;
    v39 = v74;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = v39;
    swift_willThrow();
    sub_213FB2DF4(v70, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v72, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v73, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(v66, &qword_27C909510, &qword_2146F56E0);
    (*(v76 + 8))(v63, v64);
    v40 = v86;

    *v27 = v62;
    *(v27 + 8) = v32;
    *(v27 + 16) = v61;
    *(v27 + 24) = v40;
    *(v27 + 25) = v67;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21432887C(v90, type metadata accessor for MessagingCharacteristic);
}

uint64_t sub_2141DE248(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909588, &qword_2146F5708);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430588C();
  sub_2146DAA28();
  LOBYTE(v16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909510, &qword_2146F56E0);
  sub_214305C04();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for MessagingCharacteristic(0);
  LOBYTE(v16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909518, &qword_2146F56E8);
  sub_214305CB8();
  sub_2146DA388();
  if ((*(v3 + v9[6] + 24) & 1) == 0)
  {
    LOBYTE(v16) = 2;
    sub_2146DA368();
    LOBYTE(v16) = *(v3 + v9[7]);
    v18 = 3;
    sub_214305D6C();
    sub_2146DA388();
    LOBYTE(v16) = 4;
    sub_2146DA338();
    v10 = v3 + v9[9];
    if ((*(v10 + 25) & 1) == 0)
    {
      v11 = *(v10 + 24);
      v16 = *(v10 + 16);
      LOBYTE(v17) = v11 & 1;
      v18 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
      sub_2142E1C30();
      sub_2146DA388();
      LOBYTE(v16) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909520, &qword_2146F56F0);
      sub_214305DC0();
      sub_2146DA388();
      LOBYTE(v16) = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909528, &qword_2146F56F8);
      sub_214305E74();
      sub_2146DA388();
      v12 = v3 + v9[12];
      v13 = *(v12 + 24);
      if (v13 != 1)
      {
        v16 = *(v12 + 16);
        v17 = v13;
        v18 = 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        sub_214045AC0();
        sub_2146DA388();
        return (*(v6 + 8))(v8, v5);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141DE698@<X0>(uint64_t (*a1)(void, char *, __int128 *)@<X0>, uint64_t (*a2)(void, char *, __int128 *)@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(type metadata accessor for StandaloneMsgCharacteristic(0) + 24);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v37 = a4;
  (*(v9 + 16))(a5 + v7, a4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2146ED240;
  *(v11 + 16) = sub_21438F468;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_21404328C(inited, &v43);
  v14 = v43;
  v13 = v44;
  v15 = v45;
  v16 = v46;
  v17 = v47;
  sub_214515A80(&v40);
  v18 = v41;
  v19 = v42;
  v20 = BYTE1(v42);
  v21 = BYTE2(v42);
  *a5 = v14;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15;
  *(a5 + 24) = v16;
  *(a5 + 25) = v17;
  *(a5 + 32) = v40;
  *(a5 + 48) = v18;
  *(a5 + 56) = v19;
  *(a5 + 57) = v20;
  *(a5 + 58) = v21;
  v48 = v16;
  v43 = a1;
  v49 = v17;
  *&v40 = 0xD000000000000023;
  *(&v40 + 1) = 0x80000002147904B0;
  v41 = 0xD00000000000001CLL;
  v42 = 0x800000021478A360;

  v22 = v14(&v43, &v49, &v40);
  if (v36)
  {
    (*(v9 + 8))(v37, v8);

LABEL_6:
    v29 = v48;

    *a5 = v14;
    *(a5 + 8) = v13;
    *(a5 + 16) = v15;
    *(a5 + 24) = v29;
    *(a5 + 25) = v17;
    return sub_21432887C(a5, type metadata accessor for StandaloneMsgCharacteristic);
  }

  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000023;
    v28[1] = 0x80000002147904B0;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v9 + 8))(v37, v8);
    goto LABEL_6;
  }

  *a5 = v14;
  *(a5 + 8) = v13;
  *(a5 + 16) = a1;
  *(a5 + 24) = 0;
  *(a5 + 25) = v17;
  v24 = *(a5 + 32);
  v23 = *(a5 + 40);
  v25 = *(a5 + 48);
  v35 = *(a5 + 56);
  v26 = *(a5 + 58);
  v48 = *(a5 + 57);
  v43 = a2;
  LOBYTE(v44) = a3 & 1;
  v49 = v26;
  v39 = v25;
  *&v40 = 0xD00000000000002ALL;
  *(&v40 + 1) = 0x80000002147904E0;
  v41 = 0xD00000000000001CLL;
  v42 = 0x800000021478A360;

  v27 = v24(&v43, &v49, &v40);
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000002ALL;
    v31[1] = 0x80000002147904E0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v9 + 8))(v37, v8);
    v32 = v48;

    *(a5 + 32) = v24;
    *(a5 + 40) = v23;
    *(a5 + 48) = v39;
    *(a5 + 56) = v35;
    *(a5 + 57) = v32;
    *(a5 + 58) = v26;
    return sub_21432887C(a5, type metadata accessor for StandaloneMsgCharacteristic);
  }

  (*(v9 + 8))(v37, v8);

  *(a5 + 32) = v24;
  *(a5 + 40) = v23;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3 & 1;
  *(a5 + 57) = 0;
  *(a5 + 58) = v26;
  return result;
}

uint64_t sub_2141DEB3C()
{
  v1 = 0x766F686374697773;
  if (*v0 != 1)
  {
    v1 = 0x7265646F6C707865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657A695378616DLL;
  }
}

uint64_t sub_2141DEBAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214374704(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141DEBD4(uint64_t a1)
{
  v2 = sub_214305F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141DEC10(uint64_t a1)
{
  v2 = sub_214305F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141DEC4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_2146D8958();
  v62 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9095D8, &qword_2146F5710);
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = type metadata accessor for StandaloneMsgCharacteristic(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214305F28();
  v13 = v64;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v14 = v9;
  v60 = v5;
  v64 = v11;
  LOBYTE(v66) = 0;
  v15 = v8;
  v16 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v69) = 1;
  sub_2142E11FC();
  sub_2146DA1C8();
  v17 = v63;
  v58 = v66;
  v59 = v16;
  LODWORD(v16) = BYTE8(v66);
  LOBYTE(v66) = 2;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v18 = v60;
  sub_2146DA1C8();
  v53 = v16;
  v57 = v15;
  v20 = v18;
  v21 = v64;
  (*(v62 + 16))(&v64[*(v14 + 24)], v20, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2146ED240;
  *(v23 + 16) = sub_21438F468;
  *(v23 + 24) = v24;
  *(inited + 32) = v23;
  sub_21404328C(inited, &v69);
  v54 = v3;
  v26 = v69;
  v25 = v70;
  v27 = v71;
  LOBYTE(v15) = v72;
  LODWORD(v23) = v73;
  sub_214515A80(&v66);
  v28 = v67;
  v29 = v68;
  v30 = BYTE1(v68);
  v31 = BYTE2(v68);
  *v21 = v26;
  *(v21 + 1) = v25;
  *(v21 + 2) = v27;
  v21[24] = v15;
  v21[25] = v23;
  *(v21 + 2) = v66;
  *(v21 + 6) = v28;
  v21[56] = v29;
  v21[57] = v30;
  v21[58] = v31;
  v74 = v15;
  v69 = v59;
  LODWORD(v56) = v23;
  v75 = v23;
  v32 = v26;
  *&v66 = 0xD000000000000023;
  *(&v66 + 1) = 0x80000002147904B0;
  v67 = 0xD00000000000001CLL;
  v68 = 0x800000021478A360;

  v55 = v25;
  v33 = v26(&v69, &v75, &v66);
  v34 = v54;
  if (v33)
  {

    v35 = v64;

    v36 = v55;
    *v35 = v32;
    *(v35 + 1) = v36;
    *(v35 + 2) = v59;
    v35[24] = 0;
    v35[25] = v56;
    v38 = *(v35 + 4);
    v37 = *(v35 + 5);
    v56 = *(v35 + 6);
    LODWORD(v55) = v35[56];
    v39 = v35[58];
    v74 = v35[57];
    v40 = v58;
    v69 = v58;
    LOBYTE(v70) = v53;
    LODWORD(v59) = v39;
    v75 = v39;
    *&v66 = 0xD00000000000002ALL;
    *(&v66 + 1) = 0x80000002147904E0;
    v67 = 0xD00000000000001CLL;
    v68 = 0x800000021478A360;

    v41 = v38(&v69, &v75, &v66);
    v52 = 0x800000021478A360;
    v46 = v62;
    v47 = v63;
    if (v41)
    {

      (*(v46 + 8))(v60, v34);
      (*(v47 + 8))(v57, v6);
      v48 = v64;

      *(v48 + 32) = v38;
      *(v48 + 40) = v37;
      *(v48 + 48) = v40;
      *(v48 + 56) = v53;
      *(v48 + 57) = 0;
      *(v48 + 58) = v59;
      sub_214328704(v48, v61, type metadata accessor for StandaloneMsgCharacteristic);
      return __swift_destroy_boxed_opaque_existential_1(v65);
    }

    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000002ALL;
    v49[1] = 0x80000002147904E0;
    v50 = v52;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = v50;
    swift_willThrow();
    (*(v46 + 8))(v60, v34);
    (*(v47 + 8))(v57, v6);
    v51 = v74;
    v44 = v64;

    *(v44 + 32) = v38;
    *(v44 + 40) = v37;
    *(v44 + 48) = v56;
    *(v44 + 56) = v55;
    *(v44 + 57) = v51;
    *(v44 + 58) = v59;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000023;
    v42[1] = 0x80000002147904B0;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v62 + 8))(v60, v34);
    (*(v17 + 8))(v57, v6);
    v43 = v74;
    v44 = v64;

    v45 = v55;
    *v44 = v32;
    *(v44 + 8) = v45;
    *(v44 + 16) = v27;
    *(v44 + 24) = v43;
    *(v44 + 25) = v56;
  }

  __swift_destroy_boxed_opaque_existential_1(v65);
  return sub_21432887C(v44, type metadata accessor for StandaloneMsgCharacteristic);
}

uint64_t sub_2141DF4B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9095E8, &qword_2146F5718);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305F28();
  sub_2146DAA28();
  if ((*(v3 + 24) & 1) == 0)
  {
    v14 = 0;
    sub_2146DA368();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    if ((*(v3 + 57) & 1) == 0)
    {
      v9 = *(v3 + 56);
      v12 = *(v3 + 48);
      v13 = v9 & 1;
      v11[15] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
      sub_2142E1C30();
      sub_2146DA388();
      type metadata accessor for StandaloneMsgCharacteristic(0);
      v11[14] = 2;
      sub_2146D8958();
      sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
      sub_2146DA388();
      return (*(v6 + 8))(v8, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141DF754@<X0>(uint64_t (*a1)(void, void, void)@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, unsigned __int8 a12, char a13, __int128 a14)
{
  v138 = a1;
  v16 = type metadata accessor for ChatCharacteristic(0);
  v106 = a3;
  sub_213FB2E54(a3, a9 + v16[5], &unk_27C9131A0, &unk_2146E9D10);
  sub_214515C94(&v133);
  v17 = v134;
  v97 = v136;
  v99 = v135;
  v95 = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146ED240;
  *(v19 + 16) = sub_21438F468;
  *(v19 + 24) = v20;
  *(inited + 32) = v19;
  sub_21404328C(inited, &v129);
  v94 = v130;
  v93 = v131;
  v91 = v132;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146ED240;
  *(v22 + 16) = sub_21438F468;
  *(v22 + 24) = v23;
  *(v21 + 32) = v22;
  sub_21404328C(v21, &v125);
  v90 = v126;
  v88 = v127;
  v86 = v128;
  sub_214515CD0(&v120);
  v85 = v121;
  LOBYTE(inited) = v123;
  v83 = v124;
  v84 = v122;
  sub_214515D0C(&v115);
  v24 = v116;
  LOBYTE(v19) = v117;
  v82 = v118;
  v25 = v119;
  sub_214515D48(&v112);
  v26 = v114;
  *a9 = v133;
  *(a9 + 16) = v17;
  *(a9 + 24) = v99;
  *(a9 + 25) = v97;
  *(a9 + 26) = v95;
  *(a9 + v16[6]) = a4;
  *(a9 + v16[7]) = a5;
  v27 = a9 + v16[8];
  *v27 = v129;
  *(v27 + 16) = v94;
  *(v27 + 24) = v93;
  *(v27 + 25) = v91;
  v28 = a9 + v16[9];
  *v28 = v125;
  *(v28 + 16) = v90;
  *(v28 + 24) = v88;
  *(v28 + 25) = v86;
  v29 = a9 + v16[10];
  *v29 = v120;
  *(v29 + 16) = v85;
  *(v29 + 24) = v84;
  *(v29 + 25) = inited;
  *(v29 + 26) = v83;
  v30 = a9 + v16[11];
  *v30 = v115;
  *(v30 + 16) = v24;
  *(v30 + 24) = v19;
  *(v30 + 25) = v82;
  *(v30 + 26) = v25;
  *(a9 + v16[12]) = a13;
  v31 = a9 + v16[13];
  v32 = v113;
  *v31 = v112;
  *(v31 + 16) = v32;
  *(v31 + 32) = v26;
  v34 = *a9;
  v33 = *(a9 + 8);
  v100 = *(a9 + 16);
  v96 = *(a9 + 25);
  v98 = *(a9 + 24);
  v107 = a9;
  v35 = *(a9 + 26);
  *&v133 = v138;
  BYTE8(v133) = a2 & 1;
  v103 = v35;
  LOBYTE(v120) = v35;
  *&v112 = 0xD000000000000024;
  *(&v112 + 1) = 0x8000000214790510;
  *&v113 = 0xD00000000000001CLL;
  *(&v113 + 1) = 0x800000021478A360;

  v36 = v34(&v133, &v120, &v112);
  if (v104)
  {

    sub_213FB2DF4(v106, &unk_27C9131A0, &unk_2146E9D10);

LABEL_6:

    *a9 = v34;
    *(a9 + 8) = v33;
    *(a9 + 16) = v100;
    *(a9 + 24) = v98;
    *(a9 + 25) = v96;
    *(a9 + 26) = v103;
    v42 = a9;
    return sub_21432887C(v42, type metadata accessor for ChatCharacteristic);
  }

  v92 = v28;
  v87 = v31;
  v89 = v30;
  if ((v36 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000024;
    v41[1] = 0x8000000214790510;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v106, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_6;
  }

  *a9 = v34;
  *(a9 + 8) = v33;
  *(a9 + 16) = v138;
  *(a9 + 24) = a2 & 1;
  *(a9 + 25) = 0;
  *(a9 + 26) = v103;
  v38 = *v27;
  v37 = *(v27 + 8);
  v109 = *(v27 + 16);
  v39 = *(v27 + 25);
  LOBYTE(v120) = *(v27 + 24);
  *&v133 = a6;
  LODWORD(v138) = v39;
  LOBYTE(v115) = v39;
  *&v112 = 0xD00000000000001ELL;
  *(&v112 + 1) = 0x8000000214790540;
  *&v113 = 0xD00000000000001CLL;
  *(&v113 + 1) = 0x800000021478A360;

  v40 = v38(&v133, &v115, &v112);
  if ((v40 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD00000000000001ELL;
    v48[1] = 0x8000000214790540;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v106, &unk_27C9131A0, &unk_2146E9D10);
    v49 = v120;

    *v27 = v38;
    *(v27 + 8) = v37;
    *(v27 + 16) = v109;
    *(v27 + 24) = v49;
    *(v27 + 25) = v138;
    v42 = a9;
    return sub_21432887C(v42, type metadata accessor for ChatCharacteristic);
  }

  *v27 = v38;
  *(v27 + 8) = v37;
  *(v27 + 16) = a6;
  *(v27 + 24) = 0;
  *(v27 + 25) = v138;
  v45 = *v28;
  v44 = *(v28 + 8);
  v138 = *(v28 + 16);
  v46 = *(v28 + 25);
  LOBYTE(v120) = *(v28 + 24);
  *&v133 = a7;
  LOBYTE(v115) = v46;
  *&v112 = 0xD00000000000001ALL;
  *(&v112 + 1) = 0x8000000214790560;
  *&v113 = 0xD00000000000001CLL;
  *(&v113 + 1) = 0x800000021478A360;

  v47 = v45(&v133, &v115, &v112);
  if ((v47 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD00000000000001ALL;
    v55[1] = 0x8000000214790560;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v106, &unk_27C9131A0, &unk_2146E9D10);
    v56 = v120;

    *v92 = v45;
    *(v92 + 8) = v44;
    *(v92 + 16) = v138;
    *(v92 + 24) = v56;
    *(v92 + 25) = v46;
LABEL_14:
    v42 = a9;
    return sub_21432887C(v42, type metadata accessor for ChatCharacteristic);
  }

  *v28 = v45;
  *(v28 + 8) = v44;
  *(v28 + 16) = a7;
  *(v28 + 24) = 0;
  *(v28 + 25) = v46;
  v51 = *v29;
  v50 = *(v29 + 8);
  v138 = *(v29 + 16);
  v110 = *(v29 + 24);
  v52 = *(v29 + 25);
  v53 = *(v29 + 26);
  *&v133 = a8;
  BYTE8(v133) = a10 & 1;
  LOBYTE(v120) = v53;
  *&v112 = 0xD000000000000024;
  *(&v112 + 1) = 0x8000000214790580;
  *&v113 = 0xD00000000000001CLL;
  *(&v113 + 1) = 0x800000021478A360;

  v54 = v51(&v133, &v120, &v112);
  if ((v54 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v64 = 0xD000000000000024;
    v64[1] = 0x8000000214790580;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v106, &unk_27C9131A0, &unk_2146E9D10);

    *v29 = v51;
    *(v29 + 8) = v50;
    *(v29 + 16) = v138;
    *(v29 + 24) = v110;
    *(v29 + 25) = v52;
    *(v29 + 26) = v53;
    goto LABEL_14;
  }

  LODWORD(v138) = a12;

  *v29 = v51;
  *(v29 + 8) = v50;
  *(v29 + 16) = a8;
  *(v29 + 24) = a10 & 1;
  *(v29 + 25) = 0;
  *(v29 + 26) = v53;
  v57 = *v89;
  v58 = *(v89 + 8);
  v59 = *(v89 + 16);
  v60 = *(v89 + 24);
  v111 = *(v89 + 25);
  v61 = *(v89 + 26);
  *&v133 = a11;
  v62 = v57;
  BYTE8(v133) = v138 & 1;
  LOBYTE(v120) = v61;
  *&v112 = 0xD000000000000028;
  *(&v112 + 1) = 0x80000002147905B0;
  *&v113 = 0xD00000000000001CLL;
  *(&v113 + 1) = 0x800000021478A360;

  v63 = v62(&v133, &v120, &v112);
  v65 = v60;
  v66 = v138;
  if ((v63 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v73 = 0xD000000000000028;
    v73[1] = 0x80000002147905B0;
    v73[2] = 0xD00000000000001CLL;
    v73[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v106, &unk_27C9131A0, &unk_2146E9D10);

    *v89 = v62;
    *(v89 + 8) = v58;
    *(v89 + 16) = v59;
    *(v89 + 24) = v65;
    *(v89 + 25) = v111;
    *(v89 + 26) = v61;
LABEL_21:
    v42 = v107;
    return sub_21432887C(v42, type metadata accessor for ChatCharacteristic);
  }

  *v89 = v62;
  *(v89 + 8) = v58;
  *(v89 + 16) = a11;
  *(v89 + 24) = v66 & 1;
  *(v89 + 25) = 0;
  *(v89 + 26) = v61;
  v68 = *v87;
  v67 = *(v87 + 8);
  v69 = *(v87 + 16);
  v70 = *(v87 + 24);
  v71 = *(v87 + 32);
  v133 = a14;
  v105 = v71;
  LOBYTE(v120) = v71;
  *&v112 = 0xD000000000000025;
  *(&v112 + 1) = 0x80000002147905E0;
  *&v113 = 0xD00000000000001CLL;
  *(&v113 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v69, v70);
  v138 = v68;
  v72 = v68(&v133, &v120, &v112);
  if ((v72 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v76 = 0xD000000000000025;
    v76[1] = 0x80000002147905E0;
    v76[2] = 0xD00000000000001CLL;
    v76[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v106, &unk_27C9131A0, &unk_2146E9D10);
    v77 = *(v87 + 16);
    v78 = *(v87 + 24);

    sub_213FDC6D0(v77, v78);
    *v87 = v138;
    *(v87 + 8) = v67;
    *(v87 + 16) = v69;
    *(v87 + 24) = v70;
    *(v87 + 32) = v105;
    goto LABEL_21;
  }

  sub_213FDC6D0(v69, v70);

  sub_213FB2DF4(v106, &unk_27C9131A0, &unk_2146E9D10);
  v74 = *(v87 + 16);
  v75 = *(v87 + 24);

  result = sub_213FDC6D0(v74, v75);
  *v87 = v138;
  *(v87 + 8) = v67;
  *(v87 + 16) = a14;
  *(v87 + 32) = v105;
  return result;
}

uint64_t sub_2141E0478(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 == 8)
    {
      v5 = 0x6767697254736663;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0x657A695378616DLL;
    if (a1 != 5)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656363416F747561;
    v2 = 0xD000000000000013;
    if (a1 != 3)
    {
      v2 = 0x656D6954656C6469;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2141E05DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214374828(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141E0604(uint64_t a1)
{
  v2 = sub_214305F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E0640(uint64_t a1)
{
  v2 = sub_214305F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E067C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v121);
  v4 = &v90 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9095F0, &qword_2146F5720);
  v6 = *(v5 - 8);
  v122 = v5;
  v123 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v90 - v7;
  v9 = type metadata accessor for ChatCharacteristic(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305F7C();
  v12 = v150;
  sub_2146DAA08();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v117 = v9;
  v150 = v4;
  v118 = v11;
  v119 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v145) = 0;
  sub_2142E11FC();
  sub_2146DA1C8();
  v13 = v8;
  v14 = v124;
  v15 = BYTE8(v124);
  LOBYTE(v124) = 1;
  sub_2142E27A8();
  sub_2146DA1C8();
  v116 = v15;
  v121 = v14;
  LOBYTE(v124) = 2;
  v17 = sub_2146DA178();
  LOBYTE(v124) = 3;
  v115 = sub_2146DA178();
  LOBYTE(v124) = 4;
  v18 = sub_2146DA1A8();
  v114 = v17;
  v19 = v18;
  LOBYTE(v124) = 5;
  v113 = sub_2146DA1A8();
  LOBYTE(v145) = 6;
  sub_2146DA1C8();
  v20 = v124;
  v112 = BYTE8(v124);
  LOBYTE(v145) = 7;
  sub_2146DA1C8();
  v111 = v20;
  v21 = v124;
  v22 = BYTE8(v124);
  LOBYTE(v124) = 8;
  LODWORD(v109) = sub_2146DA178();
  v107 = v22;
  v108 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v145) = 9;
  sub_2142E12FC();
  v110 = v13;
  sub_2146DA1C8();
  v106 = *(&v124 + 1);
  v91 = v124;
  v24 = v117;
  v23 = v118;
  sub_213FB2E54(v150, &v118[v117[5]], &unk_27C9131A0, &unk_2146E9D10);
  sub_214515C94(&v145);
  v105 = v146;
  LODWORD(v104) = v147;
  LODWORD(v103) = v148;
  LODWORD(v102) = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v98 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  v97 = xmmword_2146ED240;
  *(v27 + 16) = xmmword_2146ED240;
  *(v26 + 16) = sub_21438F468;
  *(v26 + 24) = v27;
  *(inited + 32) = v26;
  sub_21404328C(inited, &v141);
  v101 = v142;
  v99 = v144;
  v100 = v143;
  v28 = swift_initStackObject();
  *(v28 + 16) = v98;
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = v97;
  *(v29 + 16) = sub_21438F468;
  *(v29 + 24) = v30;
  *(v28 + 32) = v29;
  sub_21404328C(v28, &v137);
  *&v98 = v138;
  v96 = v140;
  LODWORD(v97) = v139;
  sub_214515CD0(&v132);
  v95 = v133;
  v93 = v135;
  v94 = v134;
  v92 = v136;
  sub_214515D0C(&v127);
  v31 = v128;
  LOBYTE(v29) = v129;
  v32 = v130;
  LOBYTE(v26) = v131;
  sub_214515D48(&v124);
  *v23 = v145;
  *(v23 + 16) = v105;
  *(v23 + 24) = v104;
  *(v23 + 25) = v103;
  *(v23 + 26) = v102;
  *(v23 + v24[6]) = v114 & 1;
  *(v23 + v24[7]) = v115 & 1;
  v33 = v23 + v24[8];
  *v33 = v141;
  *(v33 + 16) = v101;
  v34 = v99;
  *(v33 + 24) = v100;
  v105 = v33;
  *(v33 + 25) = v34;
  v35 = v23 + v24[9];
  *v35 = v137;
  *(v35 + 16) = v98;
  v36 = v96;
  *(v35 + 24) = v97;
  v104 = v35;
  *(v35 + 25) = v36;
  v37 = v23 + v24[10];
  *v37 = v132;
  *(v37 + 16) = v95;
  v38 = v93;
  *(v37 + 24) = v94;
  *(v37 + 25) = v38;
  v103 = v37;
  *(v37 + 26) = v92;
  v39 = v23 + v24[11];
  *v39 = v127;
  *(v39 + 16) = v31;
  *(v39 + 24) = v29;
  *(v39 + 25) = v32;
  v102 = v39;
  *(v39 + 26) = v26;
  *(v23 + v24[12]) = v109 & 1;
  LOBYTE(v39) = v126;
  v40 = v23 + v24[13];
  v41 = v125;
  *v40 = v124;
  *(v40 + 16) = v41;
  v109 = v40;
  *(v40 + 32) = v39;
  v43 = *v23;
  v42 = *(v23 + 8);
  v117 = *(v23 + 16);
  LODWORD(v40) = *(v23 + 24);
  v114 = *(v23 + 25);
  v115 = v40;
  v44 = *(v23 + 26);
  *&v145 = v121;
  BYTE8(v145) = v116;
  LOBYTE(v132) = v44;
  *&v124 = 0xD000000000000024;
  *(&v124 + 1) = 0x8000000214790510;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  if ((v43(&v145, &v132, &v124) & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000024;
    v50[1] = 0x8000000214790510;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v150, &unk_27C9131A0, &unk_2146E9D10);
    (*(v123 + 8))(v110, v122);
    v51 = v118;

    *v51 = v43;
    *(v51 + 8) = v42;
    *(v51 + 16) = v117;
    v52 = v114;
    *(v51 + 24) = v115;
    *(v51 + 25) = v52;
    *(v51 + 26) = v44;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v119);
    return sub_21432887C(v118, type metadata accessor for ChatCharacteristic);
  }

  v45 = v118;

  *v45 = v43;
  *(v45 + 8) = v42;
  *(v45 + 16) = v121;
  *(v45 + 24) = v116;
  *(v45 + 25) = 0;
  *(v45 + 26) = v44;
  v47 = *v105;
  v46 = *(v105 + 8);
  v121 = *(v105 + 16);
  v48 = *(v105 + 25);
  LOBYTE(v132) = *(v105 + 24);
  *&v145 = v19;
  LOBYTE(v127) = v48;
  *&v124 = 0xD00000000000001ELL;
  *(&v124 + 1) = 0x8000000214790540;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  v49 = v47(&v145, &v127, &v124);
  if ((v49 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD00000000000001ELL;
    v58[1] = 0x8000000214790540;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v150, &unk_27C9131A0, &unk_2146E9D10);
    (*(v123 + 8))(v110, v122);
    v59 = v132;
    v60 = v105;

    *v60 = v47;
    *(v60 + 8) = v46;
    *(v60 + 16) = v121;
    *(v60 + 24) = v59;
    *(v60 + 25) = v48;
    goto LABEL_6;
  }

  v53 = v105;

  *v53 = v47;
  *(v53 + 8) = v46;
  *(v53 + 16) = v19;
  *(v53 + 24) = 0;
  *(v53 + 25) = v48;
  v55 = *v104;
  v54 = *(v104 + 8);
  v117 = *(v104 + 16);
  v56 = *(v104 + 25);
  LOBYTE(v132) = *(v104 + 24);
  *&v145 = v113;
  LODWORD(v121) = v56;
  LOBYTE(v127) = v56;
  *&v124 = 0xD00000000000001ALL;
  *(&v124 + 1) = 0x8000000214790560;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  v57 = v55(&v145, &v127, &v124);
  if ((v57 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v67 = 0xD00000000000001ALL;
    v67[1] = 0x8000000214790560;
    v67[2] = 0xD00000000000001CLL;
    v67[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v150, &unk_27C9131A0, &unk_2146E9D10);
    (*(v123 + 8))(v110, v122);
    v68 = v132;
    v69 = v104;

    *v69 = v55;
    *(v69 + 8) = v54;
    *(v69 + 16) = v117;
    *(v69 + 24) = v68;
    *(v69 + 25) = v121;
    goto LABEL_6;
  }

  v61 = v104;

  *v61 = v55;
  *(v61 + 8) = v54;
  *(v61 + 16) = v113;
  *(v61 + 24) = 0;
  *(v61 + 25) = v121;
  v63 = *v103;
  v62 = *(v103 + 8);
  v64 = *(v103 + 16);
  LODWORD(v121) = *(v103 + 24);
  LODWORD(v117) = *(v103 + 25);
  v65 = *(v103 + 26);
  *&v145 = v111;
  BYTE8(v145) = v112;
  LOBYTE(v132) = v65;
  *&v124 = 0xD000000000000024;
  *(&v124 + 1) = 0x8000000214790580;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  v66 = v63(&v145, &v132, &v124);
  if ((v66 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v72 = 0xD000000000000024;
    v72[1] = 0x8000000214790580;
    v72[2] = 0xD00000000000001CLL;
    v72[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v150, &unk_27C9131A0, &unk_2146E9D10);
    (*(v123 + 8))(v110, v122);
    v73 = v103;
LABEL_16:

    *v73 = v63;
    *(v73 + 8) = v62;
    *(v73 + 16) = v64;
    *(v73 + 24) = v121;
    *(v73 + 25) = v117;
    *(v73 + 26) = v65;
    goto LABEL_6;
  }

  v70 = v103;

  *v70 = v63;
  *(v70 + 8) = v62;
  *(v70 + 16) = v111;
  *(v70 + 24) = v112;
  *(v70 + 25) = 0;
  *(v70 + 26) = v65;
  v63 = *v102;
  v62 = *(v102 + 8);
  v64 = *(v102 + 16);
  LODWORD(v121) = *(v102 + 24);
  LODWORD(v117) = *(v102 + 25);
  v65 = *(v102 + 26);
  *&v145 = v108;
  BYTE8(v145) = v107;
  LOBYTE(v132) = v65;
  *&v124 = 0xD000000000000028;
  *(&v124 + 1) = 0x80000002147905B0;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  v71 = v63(&v145, &v132, &v124);
  if ((v71 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v81 = 0xD000000000000028;
    v81[1] = 0x80000002147905B0;
    v81[2] = 0xD00000000000001CLL;
    v81[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v150, &unk_27C9131A0, &unk_2146E9D10);
    (*(v123 + 8))(v110, v122);
    v73 = v102;
    goto LABEL_16;
  }

  v74 = v102;

  *v74 = v63;
  *(v74 + 8) = v62;
  *(v74 + 16) = v108;
  *(v74 + 24) = v107;
  *(v74 + 25) = 0;
  *(v74 + 26) = v65;
  v76 = *v109;
  v75 = *(v109 + 8);
  v77 = *(v109 + 16);
  v78 = *(v109 + 24);
  v79 = *(v109 + 32);
  *&v145 = v91;
  *(&v145 + 1) = v106;
  LODWORD(v121) = v79;
  LOBYTE(v132) = v79;
  *&v124 = 0xD000000000000025;
  *(&v124 + 1) = 0x80000002147905E0;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v77, v78);
  v80 = v76(&v145, &v132, &v124);
  if ((v80 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v86 = 0xD000000000000025;
    v86[1] = 0x80000002147905E0;
    v86[2] = 0xD00000000000001CLL;
    v86[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v150, &unk_27C9131A0, &unk_2146E9D10);
    (*(v123 + 8))(v110, v122);
    v87 = v109;
    v88 = *(v109 + 16);
    v89 = *(v109 + 24);

    sub_213FDC6D0(v88, v89);
    *v87 = v76;
    *(v87 + 8) = v75;
    *(v87 + 16) = v77;
    *(v87 + 24) = v78;
    *(v87 + 32) = v121;
    goto LABEL_6;
  }

  sub_213FDC6D0(v77, v78);

  sub_213FB2DF4(v150, &unk_27C9131A0, &unk_2146E9D10);
  (*(v123 + 8))(v110, v122);
  v82 = v109;
  v83 = *(v109 + 16);
  v84 = *(v109 + 24);

  sub_213FDC6D0(v83, v84);
  *v82 = v76;
  *(v82 + 8) = v75;
  v85 = v106;
  *(v82 + 16) = v91;
  *(v82 + 24) = v85;
  *(v82 + 32) = v121;
  sub_214328704(v118, v120, type metadata accessor for ChatCharacteristic);
  return __swift_destroy_boxed_opaque_existential_1(v119);
}

uint64_t sub_2141E1858(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909600, &qword_2146F5728);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305F7C();
  sub_2146DAA28();
  if ((*(v3 + 25) & 1) == 0)
  {
    v9 = *(v3 + 24);
    v20 = *(v3 + 16);
    LOBYTE(v21) = v9 & 1;
    v22 = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    v19[1] = v10;
    v11 = type metadata accessor for ChatCharacteristic(0);
    LOBYTE(v20) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    LOBYTE(v20) = 2;
    sub_2146DA338();
    LOBYTE(v20) = 3;
    sub_2146DA338();
    if ((*(v3 + v11[8] + 24) & 1) == 0)
    {
      LOBYTE(v20) = 4;
      sub_2146DA368();
      if ((*(v3 + v11[9] + 24) & 1) == 0)
      {
        LOBYTE(v20) = 5;
        sub_2146DA368();
        v12 = v3 + v11[10];
        if ((*(v12 + 25) & 1) == 0)
        {
          v13 = *(v12 + 24);
          v20 = *(v12 + 16);
          LOBYTE(v21) = v13 & 1;
          v22 = 6;
          sub_2146DA388();
          v14 = v3 + v11[11];
          if ((*(v14 + 25) & 1) == 0)
          {
            v15 = *(v14 + 24);
            v20 = *(v14 + 16);
            LOBYTE(v21) = v15 & 1;
            v22 = 7;
            sub_2146DA388();
            LOBYTE(v20) = 8;
            sub_2146DA338();
            v16 = v3 + v11[13];
            v17 = *(v16 + 24);
            if (v17 != 1)
            {
              v20 = *(v16 + 16);
              v21 = v17;
              v22 = 9;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
              sub_214045AC0();
              sub_2146DA388();
              return (*(v6 + 8))(v8, v5);
            }
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141E1CB8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  LOBYTE(v97) = a2;
  v125 = a1;
  *(&v97 + 1) = a11;
  v16 = type metadata accessor for FileTransferCharacteristic(0);
  v100 = a5;
  sub_213FB2E54(a5, a9 + v16[7], &unk_27C9131A0, &unk_2146E9D10);
  v99 = a6;
  sub_213FB2E54(a6, a9 + v16[8], &unk_27C9131A0, &unk_2146E9D10);
  sub_214516664(&v120);
  v93 = v121;
  v89 = v123;
  v91 = v122;
  v88 = v124;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146ED240;
  *(v18 + 16) = sub_21438F468;
  *(v18 + 24) = v19;
  *(inited + 32) = v18;
  sub_21404328C(inited, &v116);
  v20 = v117;
  v85 = v118;
  v83 = v119;
  sub_2145167DC(&v112);
  v81 = v114;
  v82 = v113;
  v80 = v115;
  sub_214516810(&v108);
  v21 = v109;
  v22 = v110;
  LOBYTE(inited) = v111;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146ED240;
  *(v24 + 16) = sub_21438F468;
  *(v24 + 24) = v25;
  *(v23 + 32) = v24;
  sub_21404328C(v23, &v104);
  v26 = v105;
  v27 = v106;
  v28 = v107;
  *a9 = v120;
  *(a9 + 16) = v93;
  *(a9 + 24) = v91;
  *(a9 + 25) = v89;
  *(a9 + 26) = v88;
  *(a9 + 32) = v116;
  *(a9 + 48) = v20;
  *(a9 + 56) = v85;
  *(a9 + 57) = v83;
  *(a9 + 58) = a4;
  v29 = a9 + v16[9];
  *v29 = v112;
  *(v29 + 16) = v82;
  *(v29 + 24) = v81;
  *(v29 + 32) = v80;
  v30 = a9 + v16[10];
  *v30 = v108;
  *(v30 + 16) = v21;
  *(v30 + 24) = v22;
  *(v30 + 32) = inited;
  *(a9 + v16[11]) = a12;
  v31 = a9 + v16[12];
  *v31 = v104;
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  *(v31 + 25) = v28;
  v33 = *a9;
  v32 = *(a9 + 8);
  v94 = *(a9 + 16);
  v90 = *(a9 + 25);
  v92 = *(a9 + 24);
  v34 = *(a9 + 26);
  *&v108 = v125;
  BYTE8(v108) = v97 & 1;
  v96 = v34;
  LOBYTE(v120) = v34;
  *&v112 = 0xD000000000000023;
  *(&v112 + 1) = 0x8000000214790610;
  v113 = 0xD00000000000001CLL;
  v114 = 0x800000021478A360;

  v35 = v33(&v108, &v120, &v112);
  if (v103)
  {

    sub_213FB2DF4(v99, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v100, &unk_27C9131A0, &unk_2146E9D10);

LABEL_6:

    *a9 = v33;
    *(a9 + 8) = v32;
    *(a9 + 16) = v94;
    *(a9 + 24) = v92;
    *(a9 + 25) = v90;
    *(a9 + 26) = v96;
    return sub_21432887C(a9, type metadata accessor for FileTransferCharacteristic);
  }

  v86 = v30;
  v87 = v29;
  v84 = v31;
  v36 = v125;
  if ((v35 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000023;
    v42[1] = 0x8000000214790610;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v99, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v100, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_6;
  }

  *a9 = v33;
  *(a9 + 8) = v32;
  *(a9 + 16) = v36;
  *(a9 + 24) = v97 & 1;
  *(a9 + 25) = 0;
  *(a9 + 26) = v96;
  v38 = *(a9 + 32);
  v37 = *(a9 + 40);
  v39 = *(a9 + 48);
  v40 = *(a9 + 57);
  LOBYTE(v120) = *(a9 + 56);
  *&v108 = a3;
  LODWORD(v125) = v40;
  LOBYTE(v116) = v40;
  *&v112 = 0xD000000000000026;
  *(&v112 + 1) = 0x8000000214790640;
  v113 = 0xD00000000000001CLL;
  v114 = 0x800000021478A360;

  v41 = v38(&v108, &v116, &v112);
  if ((v41 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000026;
    v51[1] = 0x8000000214790640;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v99, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v100, &unk_27C9131A0, &unk_2146E9D10);
    v52 = v120;

    *(a9 + 32) = v38;
    *(a9 + 40) = v37;
    *(a9 + 48) = v39;
    *(a9 + 56) = v52;
    *(a9 + 57) = v125;
    return sub_21432887C(a9, type metadata accessor for FileTransferCharacteristic);
  }

  *(a9 + 32) = v38;
  *(a9 + 40) = v37;
  *(a9 + 48) = a3;
  *(a9 + 56) = 0;
  *(a9 + 57) = v125;
  v44 = v29;
  v46 = *v29;
  v45 = *(v29 + 8);
  v48 = *(v29 + 16);
  v47 = *(v29 + 24);
  v49 = *(v29 + 32);
  *&v108 = a7;
  *(&v108 + 1) = a8;
  LOBYTE(v120) = v49;
  *&v112 = 0xD000000000000030;
  *(&v112 + 1) = 0x8000000214790670;
  v113 = 0xD00000000000001CLL;
  v114 = 0x800000021478A360;

  v125 = v47;
  sub_213FDC9D0(v48, v47);
  v50 = v46(&v108, &v120, &v112);
  if ((v50 & 1) == 0)
  {
    v98 = v49;
    sub_214031C4C();
    swift_allocError();
    *v61 = 0xD000000000000030;
    v61[1] = 0x8000000214790670;
    v61[2] = 0xD00000000000001CLL;
    v61[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v99, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v100, &unk_27C9131A0, &unk_2146E9D10);
    v62 = *(v29 + 16);
    v63 = *(v29 + 24);

    sub_213FDC6D0(v62, v63);
    *v29 = v46;
    *(v29 + 8) = v45;
    v64 = v125;
    *(v29 + 16) = v48;
    *(v29 + 24) = v64;
    v65 = v98;
LABEL_14:
    *(v44 + 32) = v65;
    return sub_21432887C(a9, type metadata accessor for FileTransferCharacteristic);
  }

  *&v97 = a10;
  sub_213FDC6D0(v48, v125);

  v53 = *(v29 + 16);
  v54 = *(v29 + 24);

  sub_213FDC6D0(v53, v54);
  *v87 = v46;
  *(v87 + 8) = v45;
  *(v87 + 16) = a7;
  *(v87 + 24) = a8;
  *(v87 + 32) = v49;
  v44 = v86;
  v56 = *v86;
  v55 = *(v86 + 8);
  v57 = *(v86 + 16);
  v58 = *(v86 + 24);
  v59 = *(v86 + 32);
  v108 = v97;
  LODWORD(v125) = v59;
  LOBYTE(v120) = v59;
  *&v112 = 0xD000000000000034;
  *(&v112 + 1) = 0x80000002147906B0;
  v113 = 0xD00000000000001CLL;
  v114 = 0x800000021478A360;

  sub_213FDC9D0(v57, v58);
  v102 = v56;
  v60 = v56(&v108, &v120, &v112);
  if ((v60 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v73 = 0xD000000000000034;
    v73[1] = 0x80000002147906B0;
    v73[2] = 0xD00000000000001CLL;
    v73[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v99, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v100, &unk_27C9131A0, &unk_2146E9D10);
    v74 = *(v86 + 16);
    v75 = *(v86 + 24);

    sub_213FDC6D0(v74, v75);
    *v86 = v56;
    *(v86 + 8) = v55;
    *(v86 + 16) = v57;
    *(v86 + 24) = v58;
    v65 = v125;
    goto LABEL_14;
  }

  sub_213FDC6D0(v57, v58);

  v66 = *(v86 + 16);
  v67 = *(v86 + 24);

  sub_213FDC6D0(v66, v67);
  *v86 = v102;
  *(v86 + 8) = v55;
  *(v86 + 16) = a10;
  *(v86 + 24) = a11;
  *(v86 + 32) = v125;
  v68 = *v84;
  v69 = *(v84 + 8);
  v125 = *(v84 + 16);
  v70 = *(v84 + 25);
  LOBYTE(v120) = *(v84 + 24);
  *&v108 = a13;
  LOBYTE(v116) = v70;
  *&v112 = 0xD000000000000031;
  *(&v112 + 1) = 0x80000002147906F0;
  v113 = 0xD00000000000001CLL;
  v114 = 0x800000021478A360;
  v71 = v68;

  v72 = v71(&v108, &v116, &v112);
  if ((v72 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v76 = 0xD000000000000031;
    v76[1] = 0x80000002147906F0;
    v76[2] = 0xD00000000000001CLL;
    v76[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v99, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v100, &unk_27C9131A0, &unk_2146E9D10);
    v77 = v120;

    *v84 = v71;
    *(v84 + 8) = v69;
    *(v84 + 16) = v125;
    *(v84 + 24) = v77;
    *(v84 + 25) = v70;
    return sub_21432887C(a9, type metadata accessor for FileTransferCharacteristic);
  }

  sub_213FB2DF4(v99, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v100, &unk_27C9131A0, &unk_2146E9D10);

  *v84 = v71;
  *(v84 + 8) = v69;
  *(v84 + 16) = a13;
  *(v84 + 24) = 0;
  *(v84 + 25) = v70;
  return result;
}

uint64_t sub_2141E2884(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v3 = 0x657A69536E726177;
    v4 = 0x656363416F747561;
    if (a1 != 2)
    {
      v4 = 0xD000000000000014;
    }

    if (a1)
    {
      v3 = 0x53656C694678616DLL;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 == 7)
    {
      v1 = 0x6C6C614670747468;
    }

    else
    {
      v1 = 0xD000000000000016;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2141E29D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214374B60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141E29F8(uint64_t a1)
{
  v2 = sub_214305FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E2A34(uint64_t a1)
{
  v2 = sub_214305FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E2A70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v143);
  v142 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v114 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909608, &qword_2146F5730);
  v144 = *(v7 - 8);
  v145 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v114 - v8;
  v10 = type metadata accessor for FileTransferCharacteristic(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305FD0();
  v13 = v167;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v138 = v10;
  v139 = v12;
  v140 = v6;
  v167 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v150) = 0;
  sub_2142E11FC();
  sub_2146DA1C8();
  v15 = v154;
  v16 = BYTE8(v154);
  LOBYTE(v154) = 1;
  v17 = sub_2146DA1A8();
  v137 = v15;
  v18 = v17;
  LOBYTE(v154) = 2;
  v19 = sub_2146DA178();
  v136 = v16;
  LODWORD(v135) = v19;
  v134 = v18;
  LOBYTE(v154) = 3;
  sub_2142E27A8();
  sub_2146DA1C8();
  LOBYTE(v154) = 4;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v150) = 5;
  sub_2142E12FC();
  sub_2146DA1C8();
  v20 = *(&v154 + 1);
  v133 = v154;
  LOBYTE(v150) = 6;
  sub_2146DA1C8();
  v21 = *(&v154 + 1);
  v131 = v154;
  v132 = v20;
  LOBYTE(v154) = 7;
  v22 = sub_2146DA178();
  v143 = 0;
  v130 = v21;
  v129 = v22;
  LOBYTE(v154) = 8;
  v128 = sub_2146DA1A8();
  v143 = 0;
  v127 = v9;
  v24 = v138;
  v23 = v139;
  sub_213FB2E54(v140, &v139[*(v138 + 28)], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v142, v23 + v24[8], &unk_27C9131A0, &unk_2146E9D10);
  sub_214516664(&v162);
  v25 = v163;
  v26 = v164;
  v126 = v165;
  LODWORD(v125) = v166;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v124 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  v114 = xmmword_2146ED240;
  *(v29 + 16) = xmmword_2146ED240;
  *(v28 + 16) = sub_21438F468;
  *(v28 + 24) = v29;
  *(inited + 32) = v28;
  sub_21404328C(inited, &v158);
  v120 = v159;
  v118 = v161;
  v119 = v160;
  sub_2145167DC(&v154);
  v122 = v156;
  v123 = v155;
  v121 = v157;
  sub_214516810(&v150);
  v116 = v152;
  v117 = v151;
  v115 = v153;
  v30 = swift_initStackObject();
  *(v30 + 16) = v124;
  v31 = swift_allocObject();
  v32 = swift_allocObject();
  *(v32 + 16) = v114;
  *(v31 + 16) = sub_21438F468;
  *(v31 + 24) = v32;
  *(v30 + 32) = v31;
  sub_21404328C(v30, &v146);
  v33 = v147;
  v34 = v148;
  *v23 = v162;
  *(v23 + 16) = v25;
  *(v23 + 24) = v26;
  *(v23 + 25) = v126;
  *(v23 + 26) = v125;
  *(v23 + 32) = v158;
  *(v23 + 48) = v120;
  v35 = v118;
  *(v23 + 56) = v119;
  *(v23 + 57) = v35;
  *(v23 + 58) = v135 & 1;
  v36 = v23 + v24[9];
  *v36 = v154;
  v37 = v122;
  *(v36 + 16) = v123;
  *(v36 + 24) = v37;
  *(v36 + 32) = v121;
  v38 = v23 + v24[10];
  *v38 = v150;
  *(v38 + 16) = v117;
  *(v38 + 24) = v116;
  v125 = v38;
  *(v38 + 32) = v115;
  *(v23 + v24[11]) = v129 & 1;
  LOBYTE(v38) = v149;
  v39 = v23 + v24[12];
  *v39 = v146;
  *(v39 + 16) = v33;
  *(v39 + 24) = v34;
  *&v124 = v39;
  *(v39 + 25) = v38;
  v41 = *v23;
  v40 = *(v23 + 8);
  v135 = *(v23 + 16);
  v129 = *(v23 + 24);
  v126 = *(v23 + 25);
  v42 = *(v23 + 26);
  *&v150 = v137;
  BYTE8(v150) = v136;
  v43 = v42;
  LOBYTE(v162) = v42;
  *&v154 = 0xD000000000000023;
  *(&v154 + 1) = 0x8000000214790610;
  v155 = 0xD00000000000001CLL;
  v156 = 0x800000021478A360;
  v138 = 0x800000021478A360;

  v44 = v143;
  v45 = v41(&v150, &v162, &v154);
  v143 = v44;
  if (v44)
  {

    sub_213FB2DF4(v142, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v140, &unk_27C9131A0, &unk_2146E9D10);
    (*(v144 + 8))(v127, v145);

LABEL_9:
    v58 = v139;

    *v58 = v41;
    *(v58 + 8) = v40;
    *(v58 + 16) = v135;
    *(v58 + 24) = v129;
    *(v58 + 25) = v126;
    *(v58 + 26) = v43;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v167);
    return sub_21432887C(v139, type metadata accessor for FileTransferCharacteristic);
  }

  if ((v45 & 1) == 0)
  {

    sub_214031C4C();
    v55 = swift_allocError();
    *v56 = 0xD000000000000023;
    v56[1] = 0x8000000214790610;
    v57 = v138;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = v57;
    v143 = v55;
    swift_willThrow();
    sub_213FB2DF4(v142, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v140, &unk_27C9131A0, &unk_2146E9D10);
    (*(v144 + 8))(v127, v145);
    goto LABEL_9;
  }

  v46 = v138;

  v47 = v139;

  *v47 = v41;
  *(v47 + 8) = v40;
  *(v47 + 16) = v137;
  *(v47 + 24) = v136;
  *(v47 + 25) = 0;
  *(v47 + 26) = v43;
  v49 = *(v47 + 32);
  v48 = *(v47 + 40);
  v50 = *(v47 + 48);
  v51 = *(v47 + 56);
  v52 = *(v47 + 57);
  LOBYTE(v162) = v51;
  *&v150 = v134;
  LODWORD(v137) = v52;
  LOBYTE(v158) = v52;
  *&v154 = 0xD000000000000026;
  *(&v154 + 1) = 0x8000000214790640;
  v155 = 0xD00000000000001CLL;
  v156 = v46;

  v53 = v143;
  v54 = v49(&v150, &v158, &v154);
  v143 = v53;
  if (v53)
  {

    sub_213FB2DF4(v142, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v140, &unk_27C9131A0, &unk_2146E9D10);
    (*(v144 + 8))(v127, v145);

LABEL_15:
    v72 = v139;

    *(v72 + 32) = v49;
    *(v72 + 40) = v48;
    *(v72 + 48) = v50;
    *(v72 + 56) = v51;
    *(v72 + 57) = v137;
    goto LABEL_10;
  }

  if ((v54 & 1) == 0)
  {

    sub_214031C4C();
    v69 = swift_allocError();
    *v70 = 0xD000000000000026;
    v70[1] = 0x8000000214790640;
    v71 = v138;
    v70[2] = 0xD00000000000001CLL;
    v70[3] = v71;
    v143 = v69;
    swift_willThrow();
    sub_213FB2DF4(v142, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v140, &unk_27C9131A0, &unk_2146E9D10);
    (*(v144 + 8))(v127, v145);
    v51 = v162;
    goto LABEL_15;
  }

  v59 = v138;

  v60 = v139;

  *(v60 + 32) = v49;
  *(v60 + 40) = v48;
  *(v60 + 48) = v134;
  *(v60 + 56) = 0;
  *(v60 + 57) = v137;
  v62 = *v36;
  v61 = *(v36 + 8);
  v64 = *(v36 + 16);
  v63 = *(v36 + 24);
  v65 = *(v36 + 32);
  *&v150 = v133;
  *(&v150 + 1) = v132;
  LODWORD(v137) = v65;
  LOBYTE(v162) = v65;
  *&v154 = 0xD000000000000030;
  *(&v154 + 1) = 0x8000000214790670;
  v155 = 0xD00000000000001CLL;
  v156 = v59;

  v66 = v63;
  sub_213FDC9D0(v64, v63);
  v67 = v143;
  v68 = v62(&v150, &v162, &v154);
  v143 = v67;
  if (v67)
  {

LABEL_20:

    sub_213FB2DF4(v142, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v140, &unk_27C9131A0, &unk_2146E9D10);
    (*(v144 + 8))(v127, v145);
    v87 = *(v36 + 16);
    v88 = *(v36 + 24);

    sub_213FDC6D0(v87, v88);
    *v36 = v62;
    *(v36 + 8) = v61;
    *(v36 + 16) = v64;
    *(v36 + 24) = v66;
    *(v36 + 32) = v137;
    goto LABEL_10;
  }

  if ((v68 & 1) == 0)
  {
    sub_214031C4C();
    v84 = swift_allocError();
    *v85 = 0xD000000000000030;
    v85[1] = 0x8000000214790670;
    v86 = v138;
    v85[2] = 0xD00000000000001CLL;
    v85[3] = v86;
    v143 = v84;
    swift_willThrow();

    goto LABEL_20;
  }

  sub_213FDC6D0(v64, v66);
  v73 = v138;

  v74 = *(v36 + 16);
  v75 = *(v36 + 24);

  sub_213FDC6D0(v74, v75);
  *v36 = v62;
  *(v36 + 8) = v61;
  v76 = v132;
  *(v36 + 16) = v133;
  *(v36 + 24) = v76;
  *(v36 + 32) = v137;
  v78 = *v125;
  v77 = *(v125 + 8);
  v79 = *(v125 + 16);
  v80 = *(v125 + 24);
  v81 = *(v125 + 32);
  *&v150 = v131;
  *(&v150 + 1) = v130;
  LODWORD(v137) = v81;
  LOBYTE(v162) = v81;
  *&v154 = 0xD000000000000034;
  *(&v154 + 1) = 0x80000002147906B0;
  v155 = 0xD00000000000001CLL;
  v156 = v73;

  sub_213FDC9D0(v79, v80);
  v82 = v143;
  v83 = v78(&v150, &v162, &v154);
  v143 = v82;
  if (v82)
  {

LABEL_25:

    sub_213FB2DF4(v142, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v140, &unk_27C9131A0, &unk_2146E9D10);
    (*(v144 + 8))(v127, v145);
    v104 = v125;
    v105 = *(v125 + 16);
    v106 = *(v125 + 24);

    sub_213FDC6D0(v105, v106);
    *v104 = v78;
    *(v104 + 8) = v77;
    *(v104 + 16) = v79;
    *(v104 + 24) = v80;
    *(v104 + 32) = v137;
    goto LABEL_10;
  }

  if ((v83 & 1) == 0)
  {
    sub_214031C4C();
    v101 = swift_allocError();
    *v102 = 0xD000000000000034;
    v102[1] = 0x80000002147906B0;
    v103 = v138;
    v102[2] = 0xD00000000000001CLL;
    v102[3] = v103;
    v143 = v101;
    swift_willThrow();
    goto LABEL_25;
  }

  sub_213FDC6D0(v79, v80);
  v89 = v138;

  v90 = v125;
  v91 = *(v125 + 16);
  v92 = *(v125 + 24);

  sub_213FDC6D0(v91, v92);
  *v90 = v78;
  *(v90 + 8) = v77;
  v93 = v130;
  *(v90 + 16) = v131;
  *(v90 + 24) = v93;
  *(v90 + 32) = v137;
  v95 = *v124;
  v94 = *(v124 + 8);
  v96 = *(v124 + 16);
  v97 = *(v124 + 24);
  v98 = *(v124 + 25);
  LOBYTE(v162) = v97;
  *&v150 = v128;
  LOBYTE(v158) = v98;
  *&v154 = 0xD000000000000031;
  *(&v154 + 1) = 0x80000002147906F0;
  v155 = 0xD00000000000001CLL;
  v156 = v89;

  v137 = v94;
  v99 = v143;
  v100 = v95(&v150, &v158, &v154);
  v143 = v99;
  if (v99)
  {
    sub_213FB2DF4(v142, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v140, &unk_27C9131A0, &unk_2146E9D10);
    (*(v144 + 8))(v127, v145);

LABEL_29:
    v112 = v124;

    v113 = v137;
    *v112 = v95;
    *(v112 + 8) = v113;
    *(v112 + 16) = v96;
    *(v112 + 24) = v97;
    *(v112 + 25) = v98;
    goto LABEL_10;
  }

  if ((v100 & 1) == 0)
  {
    sub_214031C4C();
    v109 = swift_allocError();
    *v110 = 0xD000000000000031;
    v110[1] = 0x80000002147906F0;
    v111 = v138;
    v110[2] = 0xD00000000000001CLL;
    v110[3] = v111;
    v143 = v109;
    swift_willThrow();
    sub_213FB2DF4(v142, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v140, &unk_27C9131A0, &unk_2146E9D10);
    (*(v144 + 8))(v127, v145);
    v97 = v162;
    goto LABEL_29;
  }

  sub_213FB2DF4(v142, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v140, &unk_27C9131A0, &unk_2146E9D10);
  (*(v144 + 8))(v127, v145);
  v107 = v124;

  v108 = v137;
  *v107 = v95;
  *(v107 + 8) = v108;
  *(v107 + 16) = v128;
  *(v107 + 24) = 0;
  *(v107 + 25) = v98;
  sub_214328704(v139, v141, type metadata accessor for FileTransferCharacteristic);
  return __swift_destroy_boxed_opaque_existential_1(v167);
}

uint64_t sub_2141E3BBC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909618, &qword_2146F5738);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305FD0();
  sub_2146DAA28();
  if (*(v3 + 25))
  {
    goto LABEL_10;
  }

  v9 = *(v3 + 24);
  v16 = *(v3 + 16);
  LOBYTE(v17) = v9 & 1;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  if (*(v3 + 56) & 1) != 0 || (LOBYTE(v16) = 1, sub_2146DA368(), LOBYTE(v16) = 2, sub_2146DA338(), v11 = type metadata accessor for FileTransferCharacteristic(0), LOBYTE(v16) = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10), sub_2142E2910(), sub_2146DA388(), LOBYTE(v16) = 4, sub_2146DA388(), (v12 = v3 + v11[9], v13 = *(v12 + 24), v13 == 1) || (v16 = *(v12 + 16), v17 = v13, v18 = 5, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v14 = v3 + v11[10], v15 = *(v14 + 24), v15 == 1) || (v16 = *(v14 + 16), v17 = v15, v18 = 6, sub_2146DA388(), LOBYTE(v16) = 7, sub_2146DA338(), (*(v3 + v11[12] + 24))))
  {
LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    LOBYTE(v16) = 8;
    sub_2146DA368();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_2141E3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a6;
  sub_21408AC04(a1, a7, &unk_27C9131A0, &unk_2146E9D10);
  v13 = type metadata accessor for ChatbotCharacteristic(0);
  sub_21408AC04(a2, a7 + v13[5], &unk_27C9131A0, &unk_2146E9D10);
  result = sub_21408AC04(a3, a7 + v13[6], &unk_27C9131A0, &unk_2146E9D10);
  *(a7 + v13[7]) = a4;
  *(a7 + v13[8]) = a5;
  *(a7 + v13[9]) = v12;
  return result;
}

unint64_t sub_2141E40A0()
{
  v1 = *v0;
  v2 = 0x466F666E49746F62;
  v3 = 0xD000000000000018;
  v4 = 0x4479636176697270;
  if (v1 != 4)
  {
    v4 = 0x4D746F6274616863;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2141E418C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214374E54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141E41B4(uint64_t a1)
{
  v2 = sub_214306024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E41F0(uint64_t a1)
{
  v2 = sub_214306024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E422C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v27);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909620, &qword_2146F5740);
  v11 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v25 - v12;
  v14 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_214306024();
  v15 = v29;
  sub_2146DAA08();
  if (!v15)
  {
    v29 = v8;
    v16 = v11;
    v37 = 0;
    sub_2142E27A8();
    v17 = v28;
    sub_2146DA1C8();
    v36 = 1;
    sub_2146DA1C8();
    v35 = 2;
    v18 = v5;
    sub_2146DA1C8();
    v34 = 3;
    v20 = v16;
    v21 = sub_2146DA178();
    v33 = 4;
    LOBYTE(v16) = sub_2146DA178();
    v31 = 5;
    sub_214306078();
    sub_2146DA1C8();
    (*(v20 + 8))(v13, v17);
    v22 = v32;
    v23 = v26;
    sub_21408AC04(v10, v26, &unk_27C9131A0, &unk_2146E9D10);
    v24 = type metadata accessor for ChatbotCharacteristic(0);
    sub_21408AC04(v29, v23 + v24[5], &unk_27C9131A0, &unk_2146E9D10);
    sub_21408AC04(v18, v23 + v24[6], &unk_27C9131A0, &unk_2146E9D10);
    *(v23 + v24[7]) = v21 & 1;
    *(v23 + v24[8]) = v16 & 1;
    *(v23 + v24[9]) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_2141E4678(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909638, &qword_2146F5748);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306024();
  sub_2146DAA28();
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  sub_2142E2910();
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for ChatbotCharacteristic(0);
    v17 = 1;
    sub_2146DA388();
    v16 = 2;
    sub_2146DA388();
    v15 = 3;
    sub_2146DA338();
    v14 = 4;
    sub_2146DA338();
    v13 = *(v3 + *(v9 + 36));
    v12 = 5;
    sub_2143060CC();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2141E4920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21468BE34(&v11);
  v5 = v11;
  v4 = v12;
  v6 = v14;
  v16 = a1;
  v15 = v14;
  v11 = 0xD00000000000002FLL;
  v12 = 0x8000000214790730;
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
    *v9 = 0xD00000000000002FLL;
    v9[1] = 0x8000000214790730;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2141E4ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697469746E656469 && a2 == 0xEA00000000007365)
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

uint64_t sub_2141E4B5C(uint64_t a1)
{
  v2 = sub_214306120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E4B98(uint64_t a1)
{
  v2 = sub_214306120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E4BD4@<X0>(void *a1@<X0>, uint64_t (**a2)(unint64_t *, char *, unint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909648, &qword_2146F5750);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306120();
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
  sub_21468BE34(&v21);
  v12 = v21;
  v11 = v22;
  v19 = v10;
  v20 = v23;
  v26 = v10;
  v17 = v24;
  v25 = v24;
  v21 = 0xD00000000000002FLL;
  v22 = 0x8000000214790730;
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
  *v15 = 0xD00000000000002FLL;
  v15[1] = 0x8000000214790730;
  v15[2] = 0xD00000000000001CLL;
  v15[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E4EFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909658, &qword_2146F5758);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306120();
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

uint64_t sub_2141E50D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_2146D8958();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ServerCharacteristic(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_2141E516C()
{
  v1 = 0x746E656449707061;
  if (*v0 != 1)
  {
    v1 = 0x6469766F72506469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852076390;
  }
}

uint64_t sub_2141E51D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214375074(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141E51F8(uint64_t a1)
{
  v2 = sub_214306174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E5234(uint64_t a1)
{
  v2 = sub_214306174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E5270@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_2146D8958();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909660, &qword_2146F5760);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306174();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v21;
    v26 = 0;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v12 = v22;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909328, &qword_2146F5658);
    v25 = 1;
    sub_214304908();
    sub_2146DA1C8();
    v19 = v23;
    v24 = 2;
    v14 = sub_2146DA178();
    (*(v10 + 8))(v9, v12);
    v15 = *(v11 + 32);
    v16 = v20;
    v15(v20, v6, v4);
    v17 = type metadata accessor for ServerCharacteristic(0);
    *(v16 + *(v17 + 20)) = v19;
    *(v16 + *(v17 + 24)) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E55CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909670, &qword_2146F5768);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306174();
  sub_2146DAA28();
  v12 = 0;
  sub_2146D8958();
  sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ServerCharacteristic(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909328, &qword_2146F5658);
    sub_214304A64();
    sub_2146DA388();
    v10[14] = 2;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v8, v5);
}

_BYTE *sub_2141E5810@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, _BYTE *a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *a5 = *result;
  a5[1] = v5;
  a5[2] = v6;
  a5[3] = v7;
  return result;
}

uint64_t sub_2141E5834()
{
  v1 = 0x4F61746144736D6DLL;
  if (*v0 != 2)
  {
    v1 = 0x61746144636E7973;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000013;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2141E58C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437519C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141E58EC(uint64_t a1)
{
  v2 = sub_2143061C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E5928(uint64_t a1)
{
  v2 = sub_2143061C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E5964@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909678, &qword_2146F5770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143061C8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909688, &qword_2146F5778);
    v21 = 0;
    sub_21430621C();
    sub_2146DA1C8();
    v14 = v22;
    v19 = 1;
    sub_2146DA1C8();
    v13 = v20;
    v17 = 2;
    sub_2146DA1C8();
    HIDWORD(v12) = v18;
    v15 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v16;
    v11 = v13;
    *a2 = v14;
    a2[1] = v11;
    a2[2] = BYTE4(v12);
    a2[3] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E5BD8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096A0, &qword_2146F5780);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = v1[2];
  v15 = v9;
  HIDWORD(v13) = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143061C8();
  sub_2146DAA28();
  v23 = v8;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909688, &qword_2146F5778);
  sub_2143062F4();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = BYTE4(v13);
  v11 = v14;
  v21 = v15;
  v20 = 1;
  sub_2146DA388();
  v19 = v11;
  v18 = 2;
  sub_2146DA388();
  v17 = v10;
  v16 = 3;
  sub_2146DA388();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2141E5E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214796130 == a2)
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

uint64_t sub_2141E5EF8(uint64_t a1)
{
  v2 = sub_2143063CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E5F34(uint64_t a1)
{
  v2 = sub_2143063CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E5F70@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096B8, &qword_2146F5788);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143063CC();
  sub_2146DAA08();
  if (!v2)
  {
    sub_214306420();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E60DC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096D0, &qword_2146F5790);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143063CC();
  sub_2146DAA28();
  v9[3] = *v2;
  sub_214306474();
  sub_2146DA388();
  return (*(v5 + 8))(v7, v4);
}

_BYTE *sub_2141E6258@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, int *a10)
{
  v10 = *a6;
  v11 = *a10;
  *a9 = *result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 18) = a5;
  *(a9 + 19) = v10;
  *(a9 + 20) = a7;
  *(a9 + 21) = a8;
  *(a9 + 22) = v11;
  return result;
}

unint64_t sub_2141E6290(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6874754174616863;
    if (a1 != 2)
    {
      v5 = 0x61684370756F7267;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v6 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7550636F6C6F6567;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x687475417466;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_2141E63D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214375320(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141E63F8(uint64_t a1)
{
  v2 = sub_2143064C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E6434(uint64_t a1)
{
  v2 = sub_2143064C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E6470@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096E0, &qword_2146F5798);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143064C8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096F0, &qword_2146F57A0);
    v24 = 0;
    sub_21430651C();
    sub_2146DA1C8();
    v9 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909708, &qword_2146F57A8);
    v24 = 1;
    sub_2143065F4();
    sub_2146DA1C8();
    v23 = v9;
    v21 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v24 = 2;
    v11 = sub_2142E1378();
    sub_2146DA1C8();
    v20 = v22;
    v24 = 3;
    sub_2146DA1C8();
    v19 = v22;
    v24 = 4;
    sub_2146DA1C8();
    v18 = v11;
    LODWORD(v11) = v22;
    v24 = 5;
    sub_214306750();
    sub_2146DA1C8();
    v16 = v22;
    v17 = v11;
    v24 = 6;
    sub_2146DA1C8();
    HIDWORD(v15) = v22;
    v24 = 7;
    sub_2146DA1C8();
    LOBYTE(v11) = v20;
    LOBYTE(v9) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909738, &qword_2146F57B8);
    v24 = 8;
    sub_2143067A4();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v21;
    v13 = v22;
    *a2 = v23;
    *(a2 + 8) = v12;
    *(a2 + 16) = v11;
    *(a2 + 17) = v19;
    v14 = v16;
    *(a2 + 18) = v17;
    *(a2 + 19) = v14;
    *(a2 + 20) = BYTE4(v15);
    *(a2 + 21) = v9;
    *(a2 + 22) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E68B4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909750, &qword_2146F57C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = *v1;
  v24 = *(v1 + 1);
  v26 = v1[16];
  v9 = v1[17];
  v22 = v1[18];
  v23 = v9;
  v10 = v1[19];
  v20 = v1[20];
  v21 = v10;
  v11 = v1[21];
  v18 = *(v1 + 22);
  v19 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143064C8();
  sub_2146DAA28();
  LOBYTE(v25) = v8;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096F0, &qword_2146F57A0);
  sub_21430687C();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v26;
  v14 = v22;
  v13 = v23;
  v25 = v24;
  v27 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909708, &qword_2146F57A8);
  sub_214306954();
  sub_2146DA388();
  LOBYTE(v25) = v12;
  v27 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  v24 = v7;
  sub_2146DA388();
  LOBYTE(v25) = v13;
  v27 = 3;
  sub_2146DA388();
  LOBYTE(v25) = v14;
  v27 = 4;
  sub_2146DA388();
  LOBYTE(v25) = v21;
  v27 = 5;
  sub_214306AB0();
  sub_2146DA388();
  LOBYTE(v25) = v20;
  v27 = 6;
  sub_2146DA388();
  LOBYTE(v25) = v19;
  v27 = 7;
  sub_2146DA388();
  LODWORD(v25) = v18;
  v27 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909738, &qword_2146F57B8);
  sub_214306B04();
  v15 = v24;
  sub_2146DA388();
  return (*(v5 + 8))(v15, v4);
}

uint64_t sub_2141E6CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[0] = a3;
  v5 = type metadata accessor for SwiftRegexValidator(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903228 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v11 = __swift_project_value_buffer(v10, qword_27CA19EB0);
  (*(*(v10 - 8) + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_214328704(v8, v14 + v13, type metadata accessor for SwiftRegexValidator);
  *(v12 + 16) = sub_21438F684;
  *(v12 + 24) = v14;
  *(inited + 32) = v12;
  sub_214042B80(inited, &v25);
  v16 = v25;
  v15 = v26;
  v17 = v29;
  v24[0] = a1;
  v24[1] = a2;
  v30 = v29;
  v25 = 0xD000000000000019;
  v26 = 0x8000000214790760;
  v27 = 0xD00000000000001CLL;
  v28 = 0x800000021478A360;

  v18 = v23[1];
  v19 = v16(v24, &v30, &v25);
  if (v18)
  {
  }

  else
  {
    if (v19)
    {

      result = swift_bridgeObjectRelease_n();
      v21 = v23[0];
      *v23[0] = v16;
      *(v21 + 8) = v15;
      *(v21 + 16) = a1;
      *(v21 + 24) = a2;
      *(v21 + 32) = v17;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x8000000214790760;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2141E701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_2141E70A0(uint64_t a1)
{
  v2 = sub_214306BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E70DC(uint64_t a1)
{
  v2 = sub_214306BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E7118@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for SwiftRegexValidator(0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909798, &qword_2146F57C8);
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306BDC();
  sub_2146DAA08();
  if (v2)
  {
    v10 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v9 = sub_2146DA168();
  v27 = v6;
  v28 = v8;
  v29 = v9;
  v30 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v14 = inited;
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903228 != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v16 = __swift_project_value_buffer(v15, qword_27CA19EB0);
  (*(*(v15 - 8) + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  v18 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v19 = swift_allocObject();
  sub_214328704(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for SwiftRegexValidator);
  *(v17 + 16) = sub_21438F684;
  *(v17 + 24) = v19;
  *(v14 + 32) = v17;
  sub_214042B80(v14, &v35);
  v21 = v35;
  v20 = v36;
  v22 = v39;
  v34[0] = v29;
  v34[1] = v30;
  v40 = v39;
  v35 = 0xD000000000000019;
  v36 = 0x8000000214790760;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  if (v21(v34, &v40, &v35))
  {

    (*(v33 + 8))(v28, v27);

    v10 = a1;
    v23 = v31;
    *v31 = v21;
    v23[1] = v20;
    v24 = v30;
    v23[2] = v29;
    v23[3] = v24;
    *(v23 + 32) = v22;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  sub_214031C4C();
  swift_allocError();
  *v25 = 0xD000000000000019;
  v25[1] = 0x8000000214790760;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v33 + 8))(v28, v27);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E7620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for SwiftRegexValidator(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  sub_2146D8D98();
  (*(v10 + 32))(v8, v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v14 = swift_allocObject();
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_214328704(v8, v16 + v15, type metadata accessor for SwiftRegexValidator);
  *(v14 + 16) = sub_21438F684;
  *(v14 + 24) = v16;
  *(inited + 32) = v14;
  sub_214042B80(inited, &v29);
  v18 = v29;
  v17 = v30;
  v19 = v33;
  v28[0] = a1;
  v28[1] = a2;
  v34 = v33;
  v29 = 0xD000000000000019;
  v30 = 0x8000000214790780;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v20 = v27;
  v21 = v18(v28, &v34, &v29);
  if (v20)
  {
  }

  else
  {
    v27 = a2;
    v22 = v26;
    if (v21)
    {

      result = swift_bridgeObjectRelease_n();
      *v22 = v18;
      *(v22 + 8) = v17;
      v24 = v27;
      *(v22 + 16) = a1;
      *(v22 + 24) = v24;
      *(v22 + 32) = v19;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000019;
    v25[1] = 0x8000000214790780;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2141E79C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E647369736DLL && a2 == 0xE600000000000000)
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

uint64_t sub_2141E7A4C(uint64_t a1)
{
  v2 = sub_214306C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E7A88(uint64_t a1)
{
  v2 = sub_214306C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E7AC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for SwiftRegexValidator(0);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097B0, &qword_2146F57D8);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306C30();
  v11 = v39;
  sub_2146DAA08();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v5;
  v12 = v36;
  v13 = v37;
  v14 = sub_2146DA168();
  v30 = v10;
  v31 = v8;
  v32 = v14;
  v33 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  sub_2146D8D98();
  v18 = v13;
  (*(v12 + 32))(v13, v7, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  v20 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v21 = swift_allocObject();
  sub_214328704(v18, v21 + v20, type metadata accessor for SwiftRegexValidator);
  *(v19 + 16) = sub_21438F684;
  *(v19 + 24) = v21;
  *(inited + 32) = v19;
  sub_214042B80(inited, &v41);
  v23 = v41;
  v22 = v42;
  v24 = v45;
  v40[0] = v32;
  v40[1] = v33;
  v46 = v45;
  v41 = 0xD000000000000019;
  v42 = 0x8000000214790780;
  v43 = 0xD00000000000001CLL;
  v44 = 0x800000021478A360;

  v25 = v23(v40, &v46, &v41);
  if (v25)
  {

    (*(v38 + 8))(v30, v31);

    v26 = v34;
    *v34 = v23;
    v26[1] = v22;
    v27 = v33;
    v26[2] = v32;
    v26[3] = v27;
    *(v26 + 32) = v24;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v28 = 0xD000000000000019;
  v28[1] = 0x8000000214790780;
  v28[2] = 0xD00000000000001CLL;
  v28[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v38 + 8))(v30, v31);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E8034@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21469BB98(&v30);
  v6 = v30;
  v5 = v31;
  v7 = v33;
  v40 = *(&v33 + 2);
  v41 = HIWORD(v33);
  v26 = v35;
  v27 = v34;
  v21 = v32;
  v22 = v36;
  v8 = v37;
  v23 = v38;
  v42 = v33;
  v39 = v37;
  v29 = v33 & 1;
  v28 = a1;
  v25 = BYTE1(v33);
  v43 = BYTE1(v33);
  v30 = 0xD00000000000001DLL;
  v31 = 0x80000002147907A0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v24 = v6;
  v9 = v6(&v28, &v43, &v30);
  if (v3)
  {

LABEL_6:
    v13 = v27;

    v42 = v7 & 1;
    a1 = v21;
    v10 = v23;
    v11 = v26;
LABEL_7:
    v30 = v24;
    v31 = v5;
    v32 = a1;
    LOBYTE(v33) = v42;
    BYTE1(v33) = v25;
    *(&v33 + 2) = v40;
    HIWORD(v33) = v41;
    v34 = v13;
    v35 = v11;
    v36 = v22;
    v37 = v39;
    v38 = v10;
    return sub_214306DDC(&v30);
  }

  if ((v9 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD00000000000001DLL;
    v14[1] = 0x80000002147907A0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
    v7 = v29;
    goto LABEL_6;
  }

  v42 = 0;
  v29 = v8 & 1;
  v28 = a2;
  v10 = v23;
  v43 = v23;
  v30 = 0xD00000000000001ELL;
  v31 = 0x80000002147907C0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;
  v11 = v26;

  v12 = v27(&v28, &v43, &v30);
  v13 = v27;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD00000000000001ELL;
    v17[1] = 0x80000002147907C0;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();
    v18 = v29;

    v39 = v18 & 1;
    goto LABEL_7;
  }

  v39 = 0;
  v16 = v42;
  *a3 = v24;
  *(a3 + 8) = v5;
  *(a3 + 16) = a1;
  *(a3 + 24) = v16;
  *(a3 + 25) = v25;
  *(a3 + 26) = v40;
  *(a3 + 30) = v41;
  *(a3 + 32) = v27;
  *(a3 + 40) = v26;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0;
  *(a3 + 57) = v23;
  return result;
}

uint64_t sub_2141E8370()
{
  if (*v0)
  {
    return 0x79746964696C6176;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_2141E83AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79746964696C6176 && a2 == 0xE800000000000000)
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

uint64_t sub_2141E8488(uint64_t a1)
{
  v2 = sub_214306E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E84C4(uint64_t a1)
{
  v2 = sub_214306E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E8500@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097C8, &qword_2146F57E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306E30();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v55) = 0;
  v9 = sub_2146DA1A8();
  v69 = 1;
  v39 = sub_2146DA1A8();
  sub_21469BB98(&v55);
  v11 = v56;
  v49 = v55;
  v42 = v57;
  v65 = *(&v58 + 2);
  v66 = HIWORD(v58);
  v46 = v59;
  v48 = v60;
  v43 = v61;
  v47 = v63;
  v68 = v58;
  v40 = v62;
  v64 = v62;
  v41 = v58;
  LOBYTE(v53) = v58 & 1;
  v38 = v9;
  *&v50 = v9;
  v44 = BYTE1(v58);
  v54[0] = BYTE1(v58);
  v55 = 0xD00000000000001DLL;
  v56 = 0x80000002147907A0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  v45 = v11;
  v12 = v49(&v50, v54, &v55);
  v37 = 0x800000021478A360;
  if (v12)
  {
    v13 = v37;

    v14 = v45;

    v68 = 0;
    v54[0] = v40 & 1;
    v53 = v39;
    LOBYTE(v50) = v47;
    v55 = 0xD00000000000001ELL;
    v56 = 0x80000002147907C0;
    v57 = 0xD00000000000001CLL;
    v58 = v13;

    v15 = v46;
    v16 = v46(&v53, &v50, &v55);
    v17 = v15;
    if (v16)
    {

      (*(v6 + 8))(v8, v5);
      v23 = v48;

      v64 = 0;
      v24 = v14;
      v25 = v49;
      *&v50 = v49;
      *(&v50 + 1) = v24;
      v26 = v38;
      *&v51 = v38;
      LODWORD(v43) = v68;
      BYTE8(v51) = v68;
      v27 = v44;
      BYTE9(v51) = v44;
      *(&v51 + 10) = v65;
      HIWORD(v51) = v66;
      *v52 = v15;
      *&v52[8] = v23;
      v28 = v39;
      *&v52[16] = v39;
      v52[24] = 0;
      v29 = v47;
      v52[25] = v47;
      v30 = v50;
      v31 = v51;
      v32 = *v52;
      *(a2 + 42) = *&v52[10];
      a2[1] = v31;
      a2[2] = v32;
      *a2 = v30;
      sub_214306E84(&v50, &v55);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v55 = v25;
      v56 = v45;
      v57 = v26;
      LOBYTE(v58) = v43;
      BYTE1(v58) = v27;
      *(&v58 + 2) = v65;
      HIWORD(v58) = v66;
      v59 = v46;
      v60 = v23;
      v61 = v28;
      v62 = 0;
      v63 = v29;
      return sub_214306DDC(&v55);
    }

    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001ELL;
    v33[1] = 0x80000002147907C0;
    v34 = v37;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = v34;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    v35 = v54[0];

    v64 = v35 & 1;
    v21 = &v67;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000001DLL;
    v18[1] = 0x80000002147907A0;
    v19 = v37;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = v19;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    v20 = v53;
    v17 = v46;
    v14 = v45;

    v68 = v20 & 1;
    v21 = &v70;
  }

  v22 = *(v21 - 32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v55 = v49;
  v56 = v14;
  v57 = v22;
  LOBYTE(v58) = v68;
  BYTE1(v58) = v44;
  *(&v58 + 2) = v65;
  HIWORD(v58) = v66;
  v59 = v17;
  v60 = v48;
  v61 = v43;
  v62 = v64;
  v63 = v47;
  return sub_214306DDC(&v55);
}

uint64_t sub_2141E8B6C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097D8, &qword_2146F57F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 24);
  v10[0] = *(v1 + 48);
  v11 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306E30();
  sub_2146DAA28();
  if (v7)
  {
    goto LABEL_7;
  }

  v13 = 0;
  v8 = v10[1];
  sub_2146DA368();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v11)
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v12 = 1;
    sub_2146DA368();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

__n128 sub_2141E8D88@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a1[1];
  *v12 = a1[2];
  *&v12[10] = *(a1 + 42);
  v7 = *(a2 + 32);
  v8 = *(a4 + 32);
  *a6 = *a1;
  *(a6 + 16) = v6;
  *(a6 + 32) = *v12;
  *(a6 + 48) = *&v12[16];
  v9 = *(a2 + 16);
  *(a6 + 64) = *a2;
  *(a6 + 80) = v9;
  *(a6 + 96) = v7;
  *(a6 + 104) = *a3;
  result = *a4;
  v11 = *(a4 + 16);
  *(a6 + 120) = *a4;
  *(a6 + 136) = v11;
  *(a6 + 152) = v8;
  *(a6 + 160) = a5;
  return result;
}