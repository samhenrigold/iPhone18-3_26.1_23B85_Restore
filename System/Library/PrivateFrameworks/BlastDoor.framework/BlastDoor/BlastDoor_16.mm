uint64_t sub_21415D0D8()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x6E6F73616572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_21415D124@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214369774(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21415D14C(uint64_t a1)
{
  v2 = sub_2142F6348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415D188(uint64_t a1)
{
  v2 = sub_2142F6348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415D1C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v3);
  v5 = &v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078A0, &qword_2146F4BC0);
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - v7;
  v9 = type metadata accessor for IDSSampleInvitation(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F6348();
  v13 = v75;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v14 = v9;
  v75 = v5;
  v72 = v11;
  LOBYTE(v79) = 0;
  v15 = sub_2146DA168();
  v16 = v6;
  v18 = v17;
  v71 = v15;
  LOBYTE(v79) = 1;
  sub_2142EC0C4();
  v19 = v75;
  sub_2146DA1C8();
  v20 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v77[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v68 = v8;
  v69 = *(&v79 + 1);
  v63 = v79;
  v22 = *(v14 + 20);
  v70 = v18;
  v23 = v72;
  sub_213FB2E54(v19, &v72[v22], &qword_27C913090, &unk_2146E9DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2140676DC;
  *(v25 + 24) = 0;
  *(inited + 32) = v25;
  sub_214042B80(inited, &v79);
  v27 = v80;
  v26 = v81;
  LOBYTE(v19) = v82;
  sub_2144A2974(v77);
  v28 = v78;
  *v23 = v79;
  *(v23 + 2) = v27;
  *(v23 + 3) = v26;
  v23[32] = v19;
  v29 = &v23[*(v14 + 24)];
  v30 = v77[1];
  *v29 = v77[0];
  *(v29 + 1) = v30;
  v29[32] = v28;
  v32 = *v23;
  v31 = *(v23 + 1);
  v33 = *(v23 + 3);
  v64 = *(v23 + 2);
  v34 = v23[32];
  *&v77[0] = v71;
  *(&v77[0] + 1) = v70;
  v83 = v34;
  v84 = v34;
  *&v79 = 0xD000000000000019;
  *(&v79 + 1) = 0x800000021478EB50;
  v65 = 0x800000021478EB50;
  v80 = 0xD00000000000001CLL;
  v81 = 0x800000021478A360;
  v66 = v33;

  v67 = v32;
  v35 = v32(v77, &v84, &v79);
  v36 = v64;
  v61 = 0xD000000000000019;
  v37 = v65;
  v62 = v29;
  if (v35)
  {
    v64 = v16;

    v38 = v72;

    *v38 = v67;
    *(v38 + 1) = v31;
    v39 = v70;
    *(v38 + 2) = v71;
    *(v38 + 3) = v39;
    v38[32] = v83;
    v41 = *v62;
    v40 = *(v62 + 1);
    v42 = *(v62 + 2);
    v43 = *(v62 + 3);
    v44 = v62[32];
    *&v77[0] = v63;
    *(&v77[0] + 1) = v69;
    LODWORD(v70) = v44;
    v84 = v44;
    *&v79 = 0xD00000000000001ALL;
    *(&v79 + 1) = 0x800000021478EB70;
    v80 = 0xD00000000000001CLL;
    v81 = 0x800000021478A360;

    sub_213FDC9D0(v42, v43);
    v71 = v41;
    v45 = v41(v77, &v84, &v79);
    v49 = v64;
    if (v45)
    {
      sub_213FDC6D0(v42, v43);

      sub_213FB2DF4(v75, &qword_27C913090, &unk_2146E9DB0);
      (*(v74 + 8))(v68, v49);
      v50 = v62;
      v51 = *(v62 + 2);
      v52 = *(v62 + 3);

      sub_213FDC6D0(v51, v52);
      v53 = v72;
      *v50 = v71;
      *(v50 + 1) = v40;
      v54 = v69;
      *(v50 + 2) = v63;
      *(v50 + 3) = v54;
      v50[32] = v70;
      sub_214328704(v53, v73, type metadata accessor for IDSSampleInvitation);
      return __swift_destroy_boxed_opaque_existential_1(v76);
    }

    v55 = v42;
    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD00000000000001ALL;
    v56[1] = 0x800000021478EB70;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();

    v57 = v74;
    v58 = v62;
    sub_213FB2DF4(v75, &qword_27C913090, &unk_2146E9DB0);
    (*(v57 + 8))(v68, v49);
    v59 = *(v58 + 2);
    v60 = *(v58 + 3);

    sub_213FDC6D0(v59, v60);
    v47 = v72;
    *v58 = v71;
    *(v58 + 1) = v40;
    *(v58 + 2) = v55;
    *(v58 + 3) = v43;
    v58[32] = v70;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = v61;
    v46[1] = v37;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v75, &qword_27C913090, &unk_2146E9DB0);
    (*(v20 + 8))(v68, v16);
    v47 = v72;

    *v47 = v67;
    *(v47 + 8) = v31;
    v48 = v66;
    *(v47 + 16) = v36;
    *(v47 + 24) = v48;
    *(v47 + 32) = v83;
  }

  __swift_destroy_boxed_opaque_existential_1(v76);
  return sub_21432887C(v47, type metadata accessor for IDSSampleInvitation);
}

uint64_t sub_21415DA28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078B0, &qword_2146F4BC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6348();
  sub_2146DAA28();
  if (!*(v3 + 24))
  {
    goto LABEL_6;
  }

  LOBYTE(v14) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  v10 = type metadata accessor for IDSSampleInvitation(0);
  LOBYTE(v14) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  sub_2142EC30C();
  sub_2146DA388();
  v11 = v3 + *(v10 + 24);
  v12 = *(v11 + 24);
  if (v12 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = *(v11 + 16);
    v15 = v12;
    v13[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_21415DCE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v10 = type metadata accessor for IDSSampleMessage(0);
  v63 = a5;
  sub_213FB2E54(a5, a8 + *(v10 + 24), &qword_27C913090, &unk_2146E9DB0);
  sub_2144707D4(&v76);
  v11 = v77;
  v12 = v78;
  v13 = v79;
  v14 = v80;
  sub_214470918(&v72);
  v15 = v73;
  v16 = v74;
  v17 = v75;
  sub_214470A38(&v67);
  v18 = v68;
  v19 = v69;
  v20 = v70;
  v21 = v71;
  *a8 = v76;
  *(a8 + 16) = v11;
  *(a8 + 24) = v12;
  *(a8 + 25) = v13;
  *(a8 + 26) = v14;
  *(a8 + 32) = v72;
  *(a8 + 48) = v15;
  *(a8 + 56) = v16;
  *(a8 + 64) = v17;
  v22 = a8 + *(v10 + 28);
  *v22 = v67;
  *(v22 + 16) = v18;
  *(v22 + 24) = v19;
  *(v22 + 25) = v20;
  *(v22 + 26) = v21;
  v24 = *a8;
  v23 = *(a8 + 8);
  v58 = *(a8 + 16);
  v56 = *(a8 + 25);
  v57 = *(a8 + 24);
  v25 = *(a8 + 26);
  *&v76 = a1;
  BYTE8(v76) = a2 & 1;
  v61 = v25;
  LOBYTE(v67) = v25;
  *&v72 = 0xD000000000000018;
  *(&v72 + 1) = 0x800000021478EB90;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  v26 = v81;
  v27 = v24(&v76, &v67, &v72);
  v81 = v26;
  if (v26)
  {

    sub_213FB2DF4(v63, &qword_27C913090, &unk_2146E9DB0);

LABEL_7:

    *a8 = v24;
    *(a8 + 8) = v23;
    *(a8 + 16) = v58;
    *(a8 + 24) = v57;
    *(a8 + 25) = v56;
    *(a8 + 26) = v61;
    return sub_21432887C(a8, type metadata accessor for IDSSampleMessage);
  }

  if ((v27 & 1) == 0)
  {

    sub_214031C4C();
    v35 = swift_allocError();
    *v36 = 0xD000000000000018;
    v36[1] = 0x800000021478EB90;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    v81 = v35;
    swift_willThrow();
    sub_213FB2DF4(v63, &qword_27C913090, &unk_2146E9DB0);
    goto LABEL_7;
  }

  *a8 = v24;
  *(a8 + 8) = v23;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2 & 1;
  *(a8 + 25) = 0;
  *(a8 + 26) = v61;
  v29 = *(a8 + 32);
  v28 = *(a8 + 40);
  v31 = *(a8 + 48);
  v30 = *(a8 + 56);
  v32 = *(a8 + 64);
  *&v76 = a3;
  *(&v76 + 1) = a4;
  v62 = v32;
  LOBYTE(v67) = v32;
  *&v72 = 0xD00000000000001BLL;
  *(&v72 + 1) = 0x800000021478EBB0;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  v60 = v30;
  sub_213FDC9D0(v31, v30);
  v33 = v81;
  v34 = v29(&v76, &v67, &v72);
  v81 = v33;
  if (v33)
  {

LABEL_14:

    sub_213FB2DF4(v63, &qword_27C913090, &unk_2146E9DB0);
    v49 = *(a8 + 48);
    v50 = *(a8 + 56);

    sub_213FDC6D0(v49, v50);
    *(a8 + 32) = v29;
    *(a8 + 40) = v28;
    *(a8 + 48) = v31;
    *(a8 + 56) = v60;
    *(a8 + 64) = v62;
    return sub_21432887C(a8, type metadata accessor for IDSSampleMessage);
  }

  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    v47 = swift_allocError();
    *v48 = 0xD00000000000001BLL;
    v48[1] = 0x800000021478EBB0;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    v81 = v47;
    swift_willThrow();
    goto LABEL_14;
  }

  sub_213FDC6D0(v31, v60);

  v38 = *(a8 + 48);
  v39 = *(a8 + 56);

  sub_213FDC6D0(v38, v39);
  *(a8 + 32) = v29;
  *(a8 + 40) = v28;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = v62;
  v41 = *v22;
  v40 = *(v22 + 8);
  v42 = *(v22 + 16);
  v43 = *(v22 + 24);
  v66 = *(v22 + 25);
  v44 = *(v22 + 26);
  *&v76 = a6;
  BYTE8(v76) = a7 & 1;
  LOBYTE(v67) = v44;
  *&v72 = 0xD000000000000018;
  *(&v72 + 1) = 0x800000021478EBD0;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  v45 = v81;
  v46 = v41(&v76, &v67, &v72);
  v81 = v45;
  if (v45)
  {
    sub_213FB2DF4(v63, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    if (v46)
    {

      sub_213FB2DF4(v63, &qword_27C913090, &unk_2146E9DB0);

      *v22 = v41;
      *(v22 + 8) = v40;
      *(v22 + 16) = a6;
      *(v22 + 24) = a7 & 1;
      *(v22 + 25) = 0;
      *(v22 + 26) = v44;
      return result;
    }

    sub_214031C4C();
    v51 = swift_allocError();
    *v52 = 0xD000000000000018;
    v52[1] = 0x800000021478EBD0;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    v81 = v51;
    swift_willThrow();
    sub_213FB2DF4(v63, &qword_27C913090, &unk_2146E9DB0);
  }

  *v22 = v41;
  *(v22 + 8) = v40;
  *(v22 + 16) = v42;
  *(v22 + 24) = v43;
  *(v22 + 25) = v66;
  *(v22 + 26) = v44;
  return sub_21432887C(a8, type metadata accessor for IDSSampleMessage);
}

uint64_t sub_21415E2A8()
{
  v1 = 0x646E616D6D6F63;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x614E746E65696C63;
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

uint64_t sub_21415E320@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214369884(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21415E348(uint64_t a1)
{
  v2 = sub_2142F639C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415E384(uint64_t a1)
{
  v2 = sub_2142F639C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415E3C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v79);
  v4 = &v65 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078B8, &qword_2146F4BD0);
  v80 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v65 - v6;
  v8 = type metadata accessor for IDSSampleMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F639C();
  v11 = v95;
  sub_2146DAA08();
  if (v11)
  {
    v12 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v75 = v8;
  v76 = v10;
  v77 = v4;
  v95 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v90) = 0;
  sub_2142E11FC();
  sub_2146DA1C8();
  v13 = v5;
  v14 = v86;
  v15 = BYTE8(v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v90) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  LODWORD(v73) = v15;
  v74 = v14;
  v17 = v86;
  LOBYTE(v86) = 2;
  sub_2142EC0C4();
  v18 = v77;
  sub_2146DA1C8();
  LOBYTE(v90) = 3;
  sub_2146DA1C8();
  v79 = *(&v17 + 1);
  v69 = v17;
  v67 = v86;
  v68 = BYTE8(v86);
  v19 = v75;
  v20 = v76;
  sub_213FB2E54(v18, &v76[v75[6]], &qword_27C913090, &unk_2146E9DB0);
  sub_2144707D4(&v90);
  v72 = v91;
  LODWORD(v71) = v92;
  LODWORD(v70) = v93;
  LOBYTE(v18) = v94;
  sub_214470918(&v86);
  v21 = v87;
  v22 = v88;
  v23 = v89;
  sub_214470A38(&v81);
  v24 = v82;
  v25 = v83;
  v26 = v84;
  v27 = v85;
  *v20 = v90;
  *(v20 + 16) = v72;
  *(v20 + 24) = v71;
  *(v20 + 25) = v70;
  *(v20 + 26) = v18;
  *(v20 + 32) = v86;
  *(v20 + 48) = v21;
  *(v20 + 56) = v22;
  *(v20 + 64) = v23;
  v28 = v20 + v19[7];
  *v28 = v81;
  *(v28 + 16) = v24;
  *(v28 + 24) = v25;
  *(v28 + 25) = v26;
  *(v28 + 26) = v27;
  v30 = *v20;
  v29 = *(v20 + 8);
  v72 = *(v20 + 16);
  LODWORD(v71) = *(v20 + 24);
  LODWORD(v70) = *(v20 + 25);
  v31 = *(v20 + 26);
  *&v90 = v74;
  BYTE8(v90) = v73;
  LODWORD(v75) = v31;
  LOBYTE(v81) = v31;
  *&v86 = 0xD000000000000018;
  *(&v86 + 1) = 0x800000021478EB90;
  v87 = 0xD00000000000001CLL;
  v88 = 0x800000021478A360;

  v32 = v30(&v90, &v81, &v86);
  v65 = 0xD000000000000018;
  v66 = 0x800000021478A360;
  if (v32)
  {
    v33 = v66;

    v34 = v76;

    *v34 = v30;
    *(v34 + 8) = v29;
    *(v34 + 16) = v74;
    *(v34 + 24) = v73;
    *(v34 + 25) = 0;
    *(v34 + 26) = v75;
    v36 = *(v34 + 32);
    v35 = *(v34 + 40);
    v37 = *(v34 + 48);
    v38 = *(v34 + 56);
    v39 = *(v34 + 64);
    v40 = v79;
    *&v90 = v69;
    *(&v90 + 1) = v79;
    LODWORD(v74) = v39;
    LOBYTE(v81) = v39;
    v70 = 0xD00000000000001BLL;
    *&v86 = 0xD00000000000001BLL;
    *(&v86 + 1) = 0x800000021478EBB0;
    v71 = 0x800000021478EBB0;
    v87 = 0xD00000000000001CLL;
    v88 = v33;

    v73 = v37;
    v72 = v38;
    sub_213FDC9D0(v37, v38);
    v41 = v35;
    v75 = v36;
    v42 = (v36)(&v90, &v81, &v86);
    v45 = v70;
    v46 = v71;
    v47 = v40;
    if (v42)
    {
      sub_213FDC6D0(v73, v72);
      v48 = v66;

      v49 = v76;
      v73 = *(v76 + 6);
      v50 = *(v76 + 7);

      sub_213FDC6D0(v73, v50);
      *(v49 + 32) = v75;
      *(v49 + 40) = v41;
      *(v49 + 48) = v69;
      *(v49 + 56) = v47;
      *(v49 + 64) = v74;
      v51 = *v28;
      v52 = *(v28 + 8);
      v73 = *(v28 + 16);
      LODWORD(v75) = *(v28 + 24);
      LODWORD(v74) = *(v28 + 25);
      v53 = *(v28 + 26);
      v54 = v67;
      *&v90 = v67;
      BYTE8(v90) = v68;
      LODWORD(v79) = v53;
      LOBYTE(v81) = v53;
      *&v86 = v65;
      *(&v86 + 1) = 0x800000021478EBD0;
      v87 = 0xD00000000000001CLL;
      v88 = v48;
      v55 = v51;

      v56 = v55(&v90, &v81, &v86);
      if (v56)
      {

        sub_213FB2DF4(v77, &qword_27C913090, &unk_2146E9DB0);
        (*(v80 + 8))(v7, v13);

        *v28 = v55;
        *(v28 + 8) = v52;
        *(v28 + 16) = v54;
        *(v28 + 24) = v68;
        *(v28 + 25) = 0;
        *(v28 + 26) = v79;
        sub_214328704(v76, v78, type metadata accessor for IDSSampleMessage);
        v12 = v95;
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }

      sub_214031C4C();
      swift_allocError();
      *v64 = v65;
      v64[1] = 0x800000021478EBD0;
      v64[2] = 0xD00000000000001CLL;
      v64[3] = v66;
      swift_willThrow();
      sub_213FB2DF4(v77, &qword_27C913090, &unk_2146E9DB0);
      (*(v80 + 8))(v7, v13);

      *v28 = v55;
      *(v28 + 8) = v52;
      *(v28 + 16) = v73;
      *(v28 + 24) = v75;
      *(v28 + 25) = v74;
      *(v28 + 26) = v79;
      v44 = v76;
    }

    else
    {
      v57 = v7;
      sub_214031C4C();
      swift_allocError();
      *v58 = v45;
      v58[1] = v46;
      v59 = v66;
      v58[2] = 0xD00000000000001CLL;
      v58[3] = v59;
      swift_willThrow();

      v60 = v80;
      sub_213FB2DF4(v77, &qword_27C913090, &unk_2146E9DB0);
      (*(v60 + 8))(v57, v13);
      v44 = v76;
      v61 = *(v76 + 6);
      v62 = *(v76 + 7);

      sub_213FDC6D0(v61, v62);
      *(v44 + 32) = v75;
      *(v44 + 40) = v41;
      v63 = v72;
      *(v44 + 48) = v73;
      *(v44 + 56) = v63;
      *(v44 + 64) = v74;
    }
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v43 = v65;
    v43[1] = 0x800000021478EB90;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = v66;
    swift_willThrow();
    sub_213FB2DF4(v77, &qword_27C913090, &unk_2146E9DB0);
    (*(v80 + 8))(v7, v13);
    v44 = v76;

    *v44 = v30;
    *(v44 + 8) = v29;
    *(v44 + 16) = v72;
    *(v44 + 24) = v71;
    *(v44 + 25) = v70;
    *(v44 + 26) = v75;
  }

  __swift_destroy_boxed_opaque_existential_1(v95);
  return sub_21432887C(v44, type metadata accessor for IDSSampleMessage);
}

uint64_t sub_21415EEC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078C8, &qword_2146F4BD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F639C();
  sub_2146DAA28();
  if ((*(v3 + 25) & 1) == 0)
  {
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

    v10 = *(v3 + 56);
    if (v10 != 1)
    {
      v16 = *(v3 + 48);
      v17 = v10;
      v18 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v15 = type metadata accessor for IDSSampleMessage(0);
      LOBYTE(v16) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
      sub_2142EC30C();
      sub_2146DA388();
      v11 = v3 + *(v15 + 28);
      if ((*(v11 + 25) & 1) == 0)
      {
        v12 = *(v11 + 24);
        v16 = *(v11 + 16);
        LOBYTE(v17) = v12 & 1;
        v18 = 3;
        sub_2146DA388();
        return (*(v6 + 8))(v8, v5);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21415F22C(uint64_t a1)
{
  v2 = sub_2142F63F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415F268(uint64_t a1)
{
  v2 = sub_2142F63F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415F2A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for IDSSampleMessageType(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078D0, &qword_2146F4BE0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F63F0();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v14;
    sub_214328930(&qword_27C9078E0, type metadata accessor for IDSSampleMessageType, aYu);
    v11 = v15;
    sub_2146DA1C8();
    (*(v7 + 8))(v9, v6);
    sub_214328704(v11, v10, type metadata accessor for IDSSampleMessageType);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21415F4B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078E8, &qword_2146F4BE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F63F0();
  sub_2146DAA28();
  type metadata accessor for IDSSampleMessageType(0);
  sub_214328930(&qword_27C9078F0, type metadata accessor for IDSSampleMessageType, aQ_23);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21415F640(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9078E8, &qword_2146F4BE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F63F0();
  sub_2146DAA28();
  type metadata accessor for IDSSampleMessageType(0);
  sub_214328930(&qword_27C9078F0, type metadata accessor for IDSSampleMessageType, aQ_23);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21415F7C8(uint64_t a1)
{
  v2 = sub_2142F6444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415F804(uint64_t a1)
{
  v2 = sub_2142F6444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415F8F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

unint64_t sub_21415F90C()
{
  v1 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21415F980@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143699F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21415F9A8(uint64_t a1)
{
  v2 = sub_2142F6498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415F9E4(uint64_t a1)
{
  v2 = sub_2142F6498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415FA20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907910, &qword_2146F4C00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6498();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v22 = 0;
    sub_2142E1278();
    sub_2146DA1C8();
    v19 = *(&v21 + 1);
    v9 = v21;
    v22 = 1;
    sub_2146DA1C8();
    v18 = v9;
    v17 = *(&v21 + 1);
    v10 = v21;
    v22 = 2;
    sub_2146DA1C8();
    v11 = v10;
    v12 = v21;
    v22 = 3;
    sub_21406116C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v14 = v19;
    v15 = v20;
    *v20 = v18;
    v15[1] = v14;
    v16 = v17;
    v15[2] = v11;
    v15[3] = v16;
    *(v15 + 2) = v12;
    *(v15 + 3) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21415FD20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907920, &qword_2146F4C08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v21 = v1[3];
  v22 = v9;
  v10 = v1[4];
  v19 = v1[5];
  v20 = v10;
  v11 = v1[7];
  v17 = v1[6];
  v18 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FDCA18(v7, v8);
  sub_2142F6498();
  sub_2146DAA28();
  v24 = v7;
  v25 = v8;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  v12 = v23;
  sub_2146DA388();
  if (v12)
  {
    sub_213FDC6BC(v24, v25);
  }

  else
  {
    v13 = v19;
    v14 = v20;
    sub_213FDC6BC(v24, v25);
    v24 = v22;
    v25 = v21;
    v26 = 1;
    sub_213FDCA18(v22, v21);
    sub_2146DA388();
    sub_213FDC6BC(v24, v25);
    v24 = v14;
    v25 = v13;
    v26 = 2;
    sub_213FDCA18(v14, v13);
    sub_2146DA388();
    sub_213FDC6BC(v24, v25);
    v24 = v17;
    v25 = v18;
    v26 = 3;
    sub_21402D9F8(v17, v18);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v24, v25);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RedWoodInvite.init(with:resourcepath:isprod:aaToken:timeout:appleName:shareType:isESM:)@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t (*a12)(void, void, void), uint64_t a13, uint64_t (*a14)(void, void, void), uint64_t a15, char a16)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  LOBYTE(v75) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 128;
  *(v20 + 24) = v75;
  *(v19 + 16) = sub_2142F64EC;
  *(v19 + 24) = v20;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v75);
  v22 = v75;
  v21 = v76;
  v23 = v78;
  v49 = v77;
  v24 = v79;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2140676DC;
  *(v26 + 24) = 0;
  *(v25 + 32) = v26;
  sub_214042B80(v25, &v116);
  v72 = v116;
  v127 = v117;
  v50 = v118;
  v74 = v119;
  v73 = v120;
  sub_2145DF858(v114);
  v67 = v114[0];
  v71 = v114[2];
  v69 = v114[1];
  v70 = v114[3];
  v62 = v115;
  sub_2145DF978(v112);
  v51 = v112[0];
  v66 = v112[2];
  v64 = v112[1];
  v65 = v112[3];
  v57 = v113;
  sub_2145DFB8C(v110);
  v53 = v110[0];
  v59 = v110[2];
  v60 = v110[3];
  v61 = v110[1];
  v58 = v111;
  v121 = a11 & 1;
  v116 = a1;
  v117 = a2;
  v54 = v24;
  LOBYTE(v114[0]) = v24;
  v75 = 0xD00000000000001ALL;
  v76 = 0x800000021478EBF0;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  v27 = v22(&v116, v114, &v75);
  if (v52)
  {

    v28 = v53;
    v29 = v21;
LABEL_6:

    a1 = v49;
    v32 = v50;
    v33 = v57;
    v34 = v51;
LABEL_7:
    v35 = v62;
LABEL_8:
    *&v94[3] = *(v124 + 3);
    *v94 = v124[0];
    *&v97[3] = *(v123 + 3);
    *v97 = v123[0];
    *&v103[3] = *&v122[3];
    *v103 = *v122;
    v75 = v22;
    v76 = v29;
    v77 = a1;
    v78 = v23;
    v79 = v54;
    *v80 = v126[0];
    *&v80[3] = *(v126 + 3);
    v81 = a3;
    v82 = a4;
    v83 = v72;
    v84 = v127;
    v85 = v32;
    v86 = v74;
    v87 = v73;
    *&v88[3] = *&v125[3];
    *v88 = *v125;
    v89 = v67;
    v90 = v69;
    v91 = v71;
    v92 = v70;
    v93 = v35;
    v95 = a10;
    v96 = a11 & 1;
    v98 = v34;
    v99 = v64;
    v100 = v66;
    v101 = v65;
    v102 = v33;
    v104 = v28;
    v105 = v61;
    v106 = v59;
    v107 = v60;
    v108 = v58;
    v109 = a16;
    return sub_2142F6504(&v75);
  }

  v45 = a2;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001ALL;
    v31[1] = 0x800000021478EBF0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v53;
    v29 = v21;
    goto LABEL_6;
  }

  v29 = v21;

  v116 = a5;
  v117 = a6;
  LOBYTE(v114[0]) = v73;
  v75 = 0xD000000000000014;
  v76 = 0x800000021478EC10;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  v30 = v72(&v116, v114, &v75);
  v33 = v57;
  v34 = v51;
  v35 = v62;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000014;
    v38[1] = 0x800000021478EC10;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v53;

    v23 = v45;
    v32 = v50;
    goto LABEL_8;
  }

  v116 = a7;
  v117 = a8;
  LOBYTE(v114[0]) = v62;
  v75 = 0xD000000000000015;
  v76 = 0x800000021478EC30;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  sub_213FDC9D0(v71, v70);
  v37 = v67(&v116, v114, &v75);
  if ((v37 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000015;
    v40[1] = 0x800000021478EC30;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v53;

    sub_213FDC6D0(v71, v70);
    v23 = v45;
    v32 = a5;
    v74 = a6;
    goto LABEL_8;
  }

  sub_213FDC6D0(v71, v70);

  sub_213FDC6D0(v71, v70);
  v116 = a12;
  v117 = a13;
  LOBYTE(v114[0]) = v57;
  v75 = 0xD000000000000017;
  v76 = 0x800000021478EC50;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  sub_213FDC9D0(v66, v65);
  v39 = v51(&v116, v114, &v75);
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000017;
    v42[1] = 0x800000021478EC50;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v53;

    sub_213FDC6D0(v66, v65);
    v23 = v45;
    v74 = a6;
    v32 = a5;
    v70 = a8;
    v71 = a7;
    goto LABEL_7;
  }

  sub_213FDC6D0(v66, v65);

  sub_213FDC6D0(v66, v65);
  v116 = a14;
  v117 = a15;
  LOBYTE(v114[0]) = v58;
  v75 = 0xD000000000000017;
  v76 = 0x800000021478EC70;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  sub_213FDC9D0(v59, v60);
  v41 = v53(&v116, v114, &v75);
  v28 = v53;
  if ((v41 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000017;
    v44[1] = 0x800000021478EC70;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    v33 = v57;

    sub_213FDC6D0(v59, v60);
    v23 = v45;
    v74 = a6;
    v32 = a5;
    v70 = a8;
    v71 = a7;
    v65 = a13;
    v66 = a12;
    goto LABEL_7;
  }

  sub_213FDC6D0(v59, v60);

  result = sub_213FDC6D0(v59, v60);
  *a9 = v22;
  *(a9 + 8) = v21;
  *(a9 + 16) = a1;
  *(a9 + 24) = v45;
  *(a9 + 32) = v54;
  *(a9 + 33) = v126[0];
  *(a9 + 36) = *(v126 + 3);
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  v43 = v127;
  *(a9 + 56) = v72;
  *(a9 + 64) = v43;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v73;
  *(a9 + 89) = *v125;
  *(a9 + 92) = *&v125[3];
  *(a9 + 96) = v67;
  *(a9 + 104) = v69;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 128) = v62;
  *(a9 + 132) = *(v124 + 3);
  *(a9 + 129) = v124[0];
  *(a9 + 136) = a10;
  *(a9 + 144) = a11 & 1;
  *(a9 + 148) = *(v123 + 3);
  *(a9 + 145) = v123[0];
  *(a9 + 152) = v51;
  *(a9 + 160) = v64;
  *(a9 + 168) = a12;
  *(a9 + 176) = a13;
  *(a9 + 184) = v57;
  LODWORD(v43) = *v122;
  *(a9 + 188) = *&v122[3];
  *(a9 + 185) = v43;
  *(a9 + 192) = v53;
  *(a9 + 200) = v61;
  *(a9 + 208) = a14;
  *(a9 + 216) = a15;
  *(a9 + 224) = v58;
  *(a9 + 225) = a16;
  return result;
}

uint64_t sub_214160B34()
{
  v1 = *v0;
  v2 = 0x546E6F6973736573;
  v3 = 0x7079546572616873;
  if (v1 != 6)
  {
    v3 = 0x4D53457369;
  }

  v4 = 0x74756F656D6974;
  if (v1 != 4)
  {
    v4 = 0x6D614E656C707061;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646F72707369;
  if (v1 != 2)
  {
    v5 = 0x6E656B6F546161;
  }

  if (*v0)
  {
    v2 = 0x656372756F736572;
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

uint64_t sub_214160C40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214369B58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214160C68(uint64_t a1)
{
  v2 = sub_2142F6558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214160CA4(uint64_t a1)
{
  v2 = sub_2142F6558();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RedWoodInvite.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907928, &qword_2146F4C10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v71 - v7;
  v9 = a1[3];
  v179 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F6558();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v179);
  }

  v10 = v6;
  v113 = a2;
  LOBYTE(v129) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v112 = v11;
  LOBYTE(v129) = 1;
  v15 = v5;
  v14 = sub_2146DA168();
  v17 = v16;
  v111 = v14;
  LOBYTE(v129) = 2;
  v108 = sub_2146DA168();
  v109 = v17;
  v110 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v114) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v107 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v114) = 4;
  sub_2142E11FC();
  sub_2146DA1C8();
  v106 = v129;
  v20 = BYTE8(v129);
  LOBYTE(v114) = 5;
  sub_2146DA1C8();
  v104 = v20;
  v105 = *(&v129 + 1);
  v21 = v129;
  LOBYTE(v114) = 6;
  sub_2146DA1C8();
  v22 = *(&v129 + 1);
  v100 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v172 = 7;
  sub_2142E1378();
  sub_2146DA1C8();
  v73 = v21;
  v75 = v15;
  v77 = v22;
  v76 = v173;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v23 = swift_allocObject();
  v99 = xmmword_2146E9BF0;
  *(v23 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v24 = swift_allocObject();
  LOBYTE(v129) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 128;
  *(v25 + 24) = v129;
  *(v24 + 16) = sub_21438F674;
  *(v24 + 24) = v25;
  *(v23 + 32) = v24;
  sub_214042B80(v23, &v129);
  v26 = *(&v129 + 1);
  v74 = v130;
  v101 = v131;
  v102 = v129;
  v103 = v132;
  v27 = swift_allocObject();
  *(v27 + 16) = v99;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2140676DC;
  *(v28 + 24) = 0;
  *(v27 + 32) = v28;
  sub_214042B80(v27, &v114);
  v95 = v114;
  v87 = v115;
  v97 = *(&v114 + 1);
  v98 = *(&v115 + 1);
  v96 = v116;
  sub_2145DF858(&v166);
  v88 = v166;
  v92 = v168;
  v90 = v167;
  v91 = v169;
  v89 = v170;
  sub_2145DF978(v164);
  v82 = v164[0];
  v84 = v164[1];
  v85 = v164[2];
  v86 = v164[3];
  v83 = v165;
  sub_2145DFB8C(v162);
  v78 = v162[0];
  v29 = v162[2];
  v80 = v162[3];
  v81 = v162[1];
  v79 = v163;
  v171 = v104;
  *&v114 = v112;
  *(&v114 + 1) = v13;
  LOBYTE(v166) = v103;
  *&v129 = 0xD00000000000001ALL;
  v93 = 0x800000021478EBF0;
  *(&v129 + 1) = 0x800000021478EBF0;
  v130 = 0xD00000000000001CLL;
  *&v99 = 0x800000021478A360;
  v131 = 0x800000021478A360;

  v94 = v26;
  v30 = v102(&v114, &v166, &v129);
  v72 = v29;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD00000000000001ALL;
    v34[1] = v93;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = v99;
    swift_willThrow();

    v35 = v72;

    (*(v10 + 8))(v8, v75);
    v13 = v101;

    v36 = v94;

    v112 = v74;
    v37 = v109;
    v38 = v106;
    goto LABEL_8;
  }

  v31 = v99;

  *&v114 = v108;
  *(&v114 + 1) = v110;
  LOBYTE(v166) = v96;
  *&v129 = 0xD000000000000014;
  *(&v129 + 1) = 0x800000021478EC10;
  v130 = 0xD00000000000001CLL;
  v131 = v31;

  if ((v95(&v114, &v166, &v129) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000014;
    v40[1] = 0x800000021478EC10;
    v41 = v99;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = v41;
    swift_willThrow();

    (*(v10 + 8))(v8, v75);

LABEL_11:
    v37 = v109;
    v38 = v106;
    v36 = v94;
    v35 = v72;
    goto LABEL_8;
  }

  v32 = v99;

  v114 = v107;
  LOBYTE(v166) = v89;
  *&v129 = 0xD000000000000015;
  *(&v129 + 1) = 0x800000021478EC30;
  v130 = 0xD00000000000001CLL;
  v131 = v32;

  sub_213FDC9D0(v92, v91);
  v33 = v88(&v114, &v166, &v129);
  if ((v33 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000015;
    v46[1] = 0x800000021478EC30;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = v99;
    swift_willThrow();

    (*(v10 + 8))(v8, v75);

    sub_213FDC6D0(v92, v91);
    v87 = v108;
    v98 = v110;
    goto LABEL_11;
  }

  v43 = v91;
  v42 = v92;
  sub_213FDC6D0(v92, v91);
  v44 = v99;

  sub_213FDC6D0(v42, v43);
  *&v114 = v73;
  *(&v114 + 1) = v105;
  LOBYTE(v166) = v83;
  *&v129 = 0xD000000000000017;
  *(&v129 + 1) = 0x800000021478EC50;
  v130 = 0xD00000000000001CLL;
  v131 = v44;

  sub_213FDC9D0(v85, v86);
  v45 = v82(&v114, &v166, &v129);
  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000017;
    v50[1] = 0x800000021478EC50;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = v99;
    swift_willThrow();

    (*(v10 + 8))(v8, v75);

    sub_213FDC6D0(v85, v86);
    v87 = v108;
    v98 = v110;
    v91 = *(&v107 + 1);
    v92 = v107;
    goto LABEL_11;
  }

  v47 = v85;
  sub_213FDC6D0(v85, v86);
  v48 = v99;

  sub_213FDC6D0(v47, v86);
  v166 = v100;
  v167 = v77;
  LOBYTE(v114) = v79;
  *&v129 = 0xD000000000000017;
  *(&v129 + 1) = 0x800000021478EC70;
  v130 = 0xD00000000000001CLL;
  v131 = v48;

  sub_213FDC9D0(v72, v80);
  v49 = v78(&v166, &v114, &v129);
  if (v49)
  {
    v51 = v72;
    v52 = v80;
    sub_213FDC6D0(v72, v80);

    (*(v10 + 8))(v8, v75);

    sub_213FDC6D0(v51, v52);
    *(&v122 + 1) = *v176;
    *(&v123 + 1) = *v175;
    HIDWORD(v125) = *&v174[3];
    *(&v125 + 9) = *v174;
    *(&v116 + 1) = v178[0];
    DWORD1(v116) = *(v178 + 3);
    *(&v119 + 9) = *v177;
    HIDWORD(v119) = *&v177[3];
    DWORD1(v122) = *&v176[3];
    DWORD1(v123) = *&v175[3];
    LOBYTE(v128) = v79;
    HIBYTE(v128) = v76;
    v54 = v112;
    v53 = v113;
    *(v113 + 224) = v128;
    v55 = v102;
    v56 = v94;
    *&v114 = v102;
    *(&v114 + 1) = v94;
    *&v115 = v54;
    *(&v115 + 1) = v13;
    v57 = v13;
    v58 = v103;
    LOBYTE(v116) = v103;
    *(&v116 + 1) = v111;
    *&v117 = v109;
    *(&v117 + 1) = v95;
    *&v118 = v97;
    *(&v118 + 1) = v108;
    *&v119 = v110;
    BYTE8(v119) = v96;
    *&v120 = v88;
    *(&v120 + 1) = v90;
    v121 = v107;
    LOBYTE(v122) = v89;
    *(&v122 + 1) = v106;
    LOBYTE(v123) = v104;
    *(&v123 + 1) = v82;
    *&v124 = v84;
    v59 = v73;
    *(&v124 + 1) = v73;
    *&v125 = v105;
    BYTE8(v125) = v83;
    *&v126 = v78;
    *(&v126 + 1) = v81;
    *&v127 = v100;
    *(&v127 + 1) = v77;
    v60 = v115;
    *v53 = v114;
    v53[1] = v60;
    v61 = v116;
    v62 = v117;
    v63 = v119;
    v53[4] = v118;
    v53[5] = v63;
    v53[2] = v61;
    v53[3] = v62;
    v64 = v120;
    v65 = v121;
    v66 = v123;
    v53[8] = v122;
    v53[9] = v66;
    v53[6] = v64;
    v53[7] = v65;
    v67 = v124;
    v68 = v125;
    v69 = v127;
    v53[12] = v126;
    v53[13] = v69;
    v53[10] = v67;
    v53[11] = v68;
    sub_21404F098(&v114, &v129);
    __swift_destroy_boxed_opaque_existential_1(v179);
    *&v129 = v55;
    *(&v129 + 1) = v56;
    v130 = v54;
    v131 = v57;
    v132 = v58;
    *v133 = v178[0];
    *&v133[3] = *(v178 + 3);
    v134 = v111;
    v135 = v109;
    v136 = v95;
    v137 = v97;
    v138 = v108;
    v139 = v110;
    v140 = v96;
    *v141 = *v177;
    *&v141[3] = *&v177[3];
    v142 = v88;
    v143 = v90;
    v144 = v107;
    v145 = v89;
    *v146 = *v176;
    *&v146[3] = *&v176[3];
    v147 = v106;
    v148 = v104;
    *v149 = *v175;
    *&v149[3] = *&v175[3];
    v150 = v82;
    v151 = v84;
    v152 = v59;
    v153 = v105;
    v154 = v83;
    *&v155[3] = *&v174[3];
    *v155 = *v174;
    v156 = v78;
    v157 = v81;
    v158 = v100;
    v39 = v77;
    goto LABEL_9;
  }

  sub_214031C4C();
  swift_allocError();
  *v70 = 0xD000000000000017;
  v70[1] = 0x800000021478EC70;
  v70[2] = 0xD00000000000001CLL;
  v70[3] = v99;
  swift_willThrow();

  (*(v10 + 8))(v8, v75);

  v35 = v72;
  sub_213FDC6D0(v72, v80);
  v37 = v109;
  v98 = v110;
  v91 = *(&v107 + 1);
  v92 = v107;
  v85 = v73;
  v38 = v106;
  v86 = v105;
  v87 = v108;
  v36 = v94;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v179);
  *&v129 = v102;
  *(&v129 + 1) = v36;
  v130 = v112;
  v131 = v13;
  v132 = v103;
  *v133 = v178[0];
  *&v133[3] = *(v178 + 3);
  v134 = v111;
  v135 = v37;
  v136 = v95;
  v137 = v97;
  v138 = v87;
  v139 = v98;
  v140 = v96;
  *v141 = *v177;
  *&v141[3] = *&v177[3];
  v142 = v88;
  v143 = v90;
  *&v144 = v92;
  *(&v144 + 1) = v91;
  v145 = v89;
  *&v146[3] = *&v176[3];
  *v146 = *v176;
  v147 = v38;
  v148 = v104;
  *&v149[3] = *&v175[3];
  *v149 = *v175;
  v150 = v82;
  v151 = v84;
  v152 = v85;
  v153 = v86;
  v154 = v83;
  *&v155[3] = *&v174[3];
  *v155 = *v174;
  v156 = v78;
  v39 = v80;
  v157 = v81;
  v158 = v35;
LABEL_9:
  v159 = v39;
  v160 = v79;
  v161 = v76;
  return sub_2142F6504(&v129);
}

uint64_t RedWoodInvite.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907938, &qword_2146F4C18);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  v26 = *(v1 + 48);
  v27 = v8;
  v9 = *(v1 + 80);
  v24 = *(v1 + 72);
  v25 = v9;
  v10 = *(v1 + 112);
  v22 = *(v1 + 120);
  v23 = v10;
  v11 = *(v1 + 136);
  v31 = *(v1 + 144);
  v12 = *(v1 + 176);
  v20 = *(v1 + 168);
  v21 = v11;
  v13 = *(v1 + 216);
  v18 = *(v1 + 208);
  v19 = v12;
  v17 = v13;
  v16 = *(v1 + 225);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6558();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_9;
  }

  LOBYTE(v29) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v28 + 8))(v6, v4);
  }

  LOBYTE(v29) = 1;
  sub_2146DA328();
  if (!v25 || (LOBYTE(v29) = 2, , sub_2146DA328(), , v22 == 1) || (v29 = v23, v30 = v22, v32 = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v29 = v21, LOBYTE(v30) = v31, v32 = 4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0), sub_2142E1C30(), sub_2146DA388(), v19 == 1) || (v29 = v20, v30 = v19, v32 = 5, sub_2146DA388(), v17 == 1))
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v29 = v18;
    v30 = v17;
    v32 = 6;
    sub_2146DA388();
    LOBYTE(v29) = v16;
    v32 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    return (*(v28 + 8))(v6, v4);
  }

  return result;
}

void *sub_214162300@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v17 = a1[1];
  __src[0] = *a1;
  __src[1] = v17;
  v18 = a1[3];
  __src[2] = a1[2];
  __src[3] = v18;
  v19 = *(a2 + 208);
  __src[16] = *(a2 + 192);
  __src[17] = v19;
  LOWORD(__src[18]) = *(a2 + 224);
  v20 = *(a2 + 144);
  __src[12] = *(a2 + 128);
  __src[13] = v20;
  v21 = *(a2 + 176);
  __src[14] = *(a2 + 160);
  __src[15] = v21;
  v22 = *(a2 + 80);
  __src[8] = *(a2 + 64);
  __src[9] = v22;
  v23 = *(a2 + 112);
  __src[10] = *(a2 + 96);
  __src[11] = v23;
  v24 = *(a2 + 16);
  __src[4] = *a2;
  __src[5] = v24;
  v25 = *(a2 + 48);
  __src[6] = *(a2 + 32);
  __src[7] = v25;
  result = memcpy(a9, __src, 0x122uLL);
  *(a9 + 290) = a3;
  *(a9 + 296) = a4;
  *(a9 + 304) = a5;
  *(a9 + 312) = a6;
  *(a9 + 320) = a7;
  *(a9 + 328) = a8;
  *(a9 + 336) = a10 & 1;
  return result;
}

uint64_t sub_2141623EC()
{
  v1 = *v0;
  v2 = 0x7265666E6F637661;
  v3 = 6581603;
  v4 = 0x496E6F6973736573;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x49646F6F77646572;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_2141624BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214369DFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141624E4(uint64_t a1)
{
  v2 = sub_2142F65AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214162520(uint64_t a1)
{
  v2 = sub_2142F65AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416255C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907940, &unk_2146F4C20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F65AC();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v6;
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904250, qword_214766C00);
    v64 = 0;
    sub_2142F6600();
    v11 = v5;
    sub_2146DA1C8();
    v60 = v65[0];
    v61 = v65[1];
    v62 = v65[2];
    v63 = v65[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904248, &qword_2146F4C30);
    v44 = 1;
    sub_2142F66D8();
    sub_2146DA1C8();
    v41 = v57;
    v42 = v58;
    v43 = v59;
    v37 = v53;
    v38 = v54;
    v39 = v55;
    v40 = v56;
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v36 = v52;
    v29 = v45;
    v30 = v46;
    v31 = v47;
    v32 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v28 = 2;
    sub_2142E1378();
    sub_2146DA1C8();
    v22 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v28 = 3;
    sub_2142E12FC();
    sub_2146DA1C8();
    v20 = v26;
    v21 = v27;
    v28 = 4;
    sub_2146DA1C8();
    v13 = v21;
    v14 = v27;
    v19 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v28 = 5;
    sub_2142E11FC();
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v11);
    v15 = v26;
    v16 = v27;
    *v25 = v60;
    *&v25[16] = v61;
    *&v25[32] = v62;
    *&v25[48] = v63;
    *&v25[256] = v41;
    *&v25[272] = v42;
    *&v25[288] = v43;
    *&v25[192] = v37;
    *&v25[208] = v38;
    *&v25[224] = v39;
    *&v25[240] = v40;
    *&v25[128] = v33;
    *&v25[144] = v34;
    *&v25[160] = v35;
    *&v25[176] = v36;
    *&v25[64] = v29;
    *&v25[80] = v30;
    *&v25[96] = v31;
    *&v25[112] = v32;
    v24 = v27;
    v17 = v23;
    memcpy(v23, v25, 0x122uLL);
    v17[290] = v22;
    v18 = v19;
    *(v17 + 37) = v20;
    *(v17 + 38) = v13;
    *(v17 + 39) = v18;
    *(v17 + 40) = v14;
    *(v17 + 41) = v15;
    v17[336] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_214162B08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907970, &qword_2146F4C38);
  v78 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = v1[1];
  v59 = *v1;
  v60 = v6;
  v7 = v1[3];
  v61 = v1[2];
  v62 = v7;
  v8 = v1[17];
  v75 = v1[16];
  v76 = v8;
  v77 = *(v1 + 144);
  v9 = v1[13];
  v71 = v1[12];
  v72 = v9;
  v10 = v1[15];
  v73 = v1[14];
  v74 = v10;
  v11 = v1[9];
  v67 = v1[8];
  v68 = v11;
  v12 = v1[11];
  v69 = v1[10];
  v70 = v12;
  v13 = v1[5];
  v63 = v1[4];
  v64 = v13;
  v14 = v1[7];
  v65 = v1[6];
  v66 = v14;
  v30 = *(v1 + 290);
  v15 = *(v1 + 38);
  v28 = *(v1 + 37);
  v29 = v15;
  v16 = *(v1 + 40);
  v26 = *(v1 + 39);
  v27 = v16;
  v24 = *(v1 + 41);
  v25 = *(v1 + 336);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v59, &v38, &qword_27C904250, qword_214766C00);
  sub_2142F65AC();
  v17 = v5;
  v18 = v3;
  sub_2146DAA28();
  v55 = v59;
  v56 = v60;
  v57 = v61;
  v58 = v62;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904250, qword_214766C00);
  sub_2142F67B0();
  v19 = v31;
  sub_2146DA388();
  if (v19)
  {
    v38 = v55;
    v39 = v56;
    v40 = v57;
    v41 = v58;
    sub_213FB2DF4(&v38, &qword_27C904250, qword_214766C00);
    return (*(v78 + 8))(v5, v3);
  }

  else
  {
    v21 = v30;
    v22 = v78;
    v53[0] = v55;
    v53[1] = v56;
    v53[2] = v57;
    v53[3] = v58;
    sub_213FB2DF4(v53, &qword_27C904250, qword_214766C00);
    v50 = v75;
    v51 = v76;
    v52 = v77;
    v46 = v71;
    v47 = v72;
    v48 = v73;
    v49 = v74;
    v42 = v67;
    v43 = v68;
    v44 = v69;
    v45 = v70;
    v38 = v63;
    v39 = v64;
    v40 = v65;
    v41 = v66;
    v37 = 1;
    sub_213FB2E54(&v63, v35, &qword_27C904248, &qword_2146F4C30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904248, &qword_2146F4C30);
    sub_2142F6888();
    sub_2146DA388();
    v35[11] = v49;
    v35[12] = v50;
    v35[13] = v51;
    v35[7] = v45;
    v35[8] = v46;
    v36 = v52;
    v35[9] = v47;
    v35[10] = v48;
    v35[4] = v42;
    v35[5] = v43;
    v35[6] = v44;
    v35[0] = v38;
    v35[1] = v39;
    v35[2] = v40;
    v35[3] = v41;
    sub_213FB2DF4(v35, &qword_27C904248, &qword_2146F4C30);
    LOBYTE(v32) = v21;
    v34 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    v32 = v28;
    v33 = v29;
    v34 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v32 = v26;
    v33 = v27;
    v34 = 4;
    sub_2146DA388();
    v32 = v24;
    LOBYTE(v33) = v25;
    v34 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    return (*(v22 + 8))(v17, v18);
  }
}

double sub_214163080@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, char a11, char a12, char a13, uint64_t a14, unint64_t a15, char a16, uint64_t a17, unint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, char a23)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_214059900;
  *(v29 + 24) = 0;
  *(v28 + 32) = v29;
  v73 = a2;
  sub_213FDCA18(a2, a3);
  v74 = a8;
  sub_213FDCA18(a8, a10);
  sub_214042B80(v28, &v90);
  v30 = v90;
  v31 = v92;
  v67 = v91;
  v32 = v93;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2146E9BF0;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_214059900;
  *(v34 + 24) = 0;
  *(v33 + 32) = v34;
  sub_214042B80(v33, &v136);
  v151 = v136;
  v68 = v138;
  v87 = v139;
  v89 = v137;
  v35 = v140;
  sub_2146A6158(v134);
  v82 = v134[0];
  v85 = v134[2];
  v83 = v134[1];
  v84 = v134[3];
  v80 = v135;
  sub_2146A62C0(&v130);
  v79 = v130;
  v75 = v131;
  v76 = v132;
  v78 = v133;
  v71 = v32;
  v142 = a20 & 1;
  v141 = a22 & 1;
  v136 = a4;
  v137 = a5;
  LOBYTE(v134[0]) = v32;
  *&v90 = 0xD00000000000001ALL;
  *(&v90 + 1) = 0x800000021478EC90;
  v91 = 0xD00000000000001CLL;
  v92 = 0x800000021478A360;

  v36 = (v30)(&v136, v134, &v90);
  v70 = v35;
  if (v86)
  {
    sub_213FDC6BC(a17, a18);
    sub_213FDC6BC(a14, a15);

    v37 = a8;
    v38 = v31;
LABEL_6:
    v41 = a10;
    sub_213FDC6BC(v37, a10);
    v42 = v73;
    v43 = a3;
    sub_213FDC6BC(v73, a3);

    v45 = v67;
    v44 = v68;
    v47 = v75;
    v46 = v76;
    v48 = v82;
    v49 = v80;
    v51 = v84;
    v50 = v85;
    v52 = v83;
    v53 = *(&v30 + 1);
    v54 = v87;
LABEL_7:
    *&v90 = a1;
    *(&v90 + 1) = v42;
    v91 = v43;
    v92 = v30;
    v93 = v53;
    v94 = v45;
    v95 = v38;
    v96 = v71;
    *v97 = v150[0];
    *&v97[3] = *(v150 + 3);
    v98 = v151;
    v99 = v89;
    v100 = v44;
    v101 = v54;
    v102 = v70;
    *&v103[3] = *(v149 + 3);
    *v103 = v149[0];
    v104 = v37;
    v105 = v41;
    v106 = a11;
    v107 = a12;
    v108 = a13;
    v110 = v148;
    v109 = v147;
    v111 = v48;
    v112 = v52;
    v113 = v50;
    v114 = v51;
    v115 = v49;
    v116 = a16;
    v118 = v146;
    v117 = v145;
    v119 = v79;
    v120 = v47;
    v121 = v46;
    v122 = v78;
    *&v123[3] = *(v144 + 3);
    *v123 = v144[0];
    v124 = a19;
    v125 = a20 & 1;
    *&v126[3] = *(v143 + 3);
    *v126 = v143[0];
    v127 = a21;
    v128 = a22 & 1;
    v129 = a23;
    sub_2142F6960(&v90);
    return result;
  }

  v63 = a4;
  v64 = a5;
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD00000000000001ALL;
    v40[1] = 0x800000021478EC90;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a17, a18);
    sub_213FDC6BC(a14, a15);

    v37 = a8;
    v38 = v31;
    goto LABEL_6;
  }

  v136 = a6;
  v137 = a7;
  LOBYTE(v134[0]) = v35;
  *&v90 = 0xD00000000000001ELL;
  *(&v90 + 1) = 0x800000021478ECB0;
  v91 = 0xD00000000000001CLL;
  v92 = 0x800000021478A360;

  v39 = v151(&v136, v134, &v90);
  v41 = a10;
  v43 = a3;
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD00000000000001ELL;
    v56[1] = 0x800000021478ECB0;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a17, a18);
    sub_213FDC6BC(a14, a15);

    v37 = a8;
    v42 = v73;
    sub_213FDC6BC(a8, a10);
    sub_213FDC6BC(v73, a3);
    v54 = v87;

    v38 = v64;
    v45 = a4;
    v47 = v75;
    v46 = v76;
    v48 = v82;
    v49 = v80;
    v51 = v84;
    v50 = v85;
    v52 = v83;
    v44 = v68;
    v53 = *(&v30 + 1);
    goto LABEL_7;
  }

  *&v90 = v82;
  *(&v90 + 1) = v83;
  v91 = v85;
  v92 = v84;
  LOBYTE(v93) = v80;

  sub_21404F7E0(v85, v84);
  sub_214032118(a14, a15, 2, 0xD000000000000029, 0x800000021478ECD0, 0xD00000000000001CLL, 0x800000021478A360);

  v57 = v90;
  v69 = v91;
  v88 = v92;
  v81 = v93;

  sub_214032564(v85, v84);
  v90 = v79;
  v91 = v75;
  v92 = v76;
  LOBYTE(v93) = v78;

  sub_21404F7E0(v75, v76);
  sub_214032118(a17, a18, 2, 0xD000000000000026, 0x800000021478ED00, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FDC6BC(a17, a18);
  sub_213FDC6BC(a14, a15);
  sub_213FDC6BC(a8, a10);
  sub_213FDC6BC(v73, a3);

  v59 = v91;
  v58 = v92;
  v60 = v93;

  sub_214032564(v75, v76);
  *a9 = a1;
  *(a9 + 8) = v73;
  *(a9 + 16) = a3;
  *(a9 + 24) = v30;
  *(a9 + 40) = v63;
  *(a9 + 48) = v64;
  *(a9 + 56) = v32;
  *(a9 + 57) = v150[0];
  *(a9 + 60) = *(v150 + 3);
  *(a9 + 64) = v151;
  *(a9 + 72) = v89;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = v70;
  v61 = v149[0];
  *(a9 + 100) = *(v149 + 3);
  *(a9 + 97) = v61;
  *(a9 + 104) = v74;
  *(a9 + 112) = a10;
  *(a9 + 120) = a11;
  *(a9 + 121) = a12;
  *(a9 + 122) = a13;
  *(a9 + 123) = v147;
  *(a9 + 127) = v148;
  *(a9 + 128) = v57;
  *(a9 + 144) = v69;
  *(a9 + 152) = v88;
  *(a9 + 160) = v81;
  *(a9 + 161) = a16;
  v62 = v145;
  *(a9 + 166) = v146;
  *(a9 + 162) = v62;
  result = *&v90;
  *(a9 + 168) = v90;
  *(a9 + 184) = v59;
  *(a9 + 192) = v58;
  *(a9 + 200) = v60;
  *(a9 + 204) = *(v144 + 3);
  *(a9 + 201) = v144[0];
  *(a9 + 208) = a19;
  *(a9 + 216) = a20 & 1;
  *(a9 + 220) = *(v143 + 3);
  *(a9 + 217) = v143[0];
  *(a9 + 224) = a21;
  *(a9 + 232) = a22 & 1;
  *(a9 + 233) = a23;
  return result;
}

unint64_t sub_214163B70(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 1651469410;
      break;
    case 2:
      result = 0x496E6F6973736573;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000024;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x535365746F6D6572;
      break;
    case 12:
      result = 0x655365746F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214163D20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436A014(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214163D48(uint64_t a1)
{
  v2 = sub_2142F69B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214163D84(uint64_t a1)
{
  v2 = sub_2142F69B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214163DC0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907998, &qword_2146F4C40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  v9 = a1[3];
  v164 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F69B4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v164);
  }

  v96 = v6;
  v109[0] = 0;
  v10 = sub_2146DA1B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v97) = 1;
  sub_2142E1278();
  sub_2146DA1C8();
  v95 = v10;
  v12 = *v109;
  v109[0] = 2;
  *&v93 = sub_2146DA168();
  *(&v93 + 1) = v13;
  v94 = v12;
  v109[0] = 3;
  v14 = sub_2146DA168();
  v16 = v15;
  v92 = v14;
  LOBYTE(v97) = 4;
  sub_2146DA1C8();
  v90 = v16;
  v91 = *v109;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v97) = 5;
  *&v89 = sub_2142E1378();
  sub_2146DA1C8();
  v18 = v109[0];
  LOBYTE(v97) = 6;
  sub_2146DA1C8();
  v87 = v109[0];
  LOBYTE(v97) = 7;
  v88 = v17;
  sub_2146DA1C8();
  v86 = v18;
  v85 = v109[0];
  LOBYTE(v97) = 8;
  sub_2146DA1C8();
  v83 = *v109;
  LOBYTE(v97) = 9;
  v84 = v5;
  sub_2146DA1C8();
  v82 = v109[0];
  LOBYTE(v97) = 10;
  sub_2146DA1C8();
  v81 = *v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v97) = 11;
  sub_2142E11FC();
  sub_2146DA1C8();
  v79 = *v109;
  v80 = v109[8];
  LOBYTE(v97) = 12;
  sub_2146DA1C8();
  v77 = *v109;
  v78 = v109[8];
  v154 = 13;
  sub_2146DA1C8();
  v61 = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  v89 = xmmword_2146E9BF0;
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_214059900;
  *(v20 + 24) = 0;
  *(v19 + 32) = v20;
  sub_213FDCA18(v94, *(&v94 + 1));
  sub_213FDCA18(v91, *(&v91 + 1));
  sub_214042B80(v19, v109);
  v21 = *&v109[8];
  v76 = *v109;
  v22 = *&v109[24];
  *(&v59 + 1) = *&v109[16];
  v23 = v110;
  v24 = swift_allocObject();
  *(v24 + 16) = v89;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214059900;
  *(v25 + 24) = 0;
  *(v24 + 32) = v25;
  sub_214042B80(v24, &v97);
  v71 = v97;
  v64 = v98;
  v74 = *(&v97 + 1);
  v75 = *(&v98 + 1);
  v72 = v99[0];
  sub_2146A6158(&v148);
  v68 = v148;
  v69 = v150;
  v70 = v149;
  v67 = v151;
  sub_2146A62C0(&v144);
  v63 = v144;
  v65 = v145;
  v66 = v146;
  v62 = v147;
  v153 = v80;
  v152 = v78;
  v97 = v93;
  v60 = v23;
  LOBYTE(v148) = v23;
  *v109 = 0xD00000000000001ALL;
  *&v109[8] = 0x800000021478EC90;
  *&v109[16] = 0xD00000000000001CLL;
  v73 = 0x800000021478A360;
  *&v109[24] = 0x800000021478A360;
  *&v89 = v22;

  v88 = v21;
  v26 = v76(&v97, &v148, v109);
  if (v26)
  {
    v27 = v73;

    *&v97 = v92;
    *(&v97 + 1) = v90;
    LOBYTE(v148) = v72;
    *v109 = 0xD00000000000001ELL;
    *&v109[8] = 0x800000021478ECB0;
    *&v109[16] = 0xD00000000000001CLL;
    *&v109[24] = v27;

    if (v71(&v97, &v148, v109))
    {
      v30 = v73;

      *v109 = v68;
      v31 = v69;
      v32 = v70;
      *&v109[16] = v70;
      *&v109[24] = v69;
      LOBYTE(v110) = v67;

      sub_21404F7E0(v32, v31);
      sub_214032118(v83, *(&v83 + 1), 2, 0xD000000000000029, 0x800000021478ECD0, 0xD00000000000001CLL, v30);
      v35 = v73;

      v58 = *&v109[8];
      *&v68 = *v109;
      v59 = *&v109[16];
      v67 = v110;

      sub_214032564(v70, v69);
      v148 = v63;
      v36 = v65;
      v37 = v66;
      v149 = v65;
      v150 = v66;
      v151 = v62;

      sub_21404F7E0(v36, v37);
      sub_214032118(v81, *(&v81 + 1), 2, 0xD000000000000026, 0x800000021478ED00, 0xD00000000000001CLL, v35);

      sub_213FDC6BC(v83, *(&v83 + 1));
      sub_213FDC6BC(v81, *(&v81 + 1));
      sub_213FDC6BC(v91, *(&v91 + 1));
      v38 = *(&v94 + 1);
      v39 = v94;
      sub_213FDC6BC(v94, *(&v94 + 1));
      (*(v96 + 8))(v8, v84);
      v96 = *(&v148 + 1);
      v40 = v148;
      *&v89 = v148;
      v41 = v150;
      *(&v83 + 1) = v149;
      v84 = v150;
      LODWORD(v83) = v151;

      sub_214032564(v65, v66);
      *&v99[25] = v163[0];
      *&v99[28] = *(v163 + 3);
      *&v102[4] = *&v162[3];
      *&v102[1] = *v162;
      *&v102[27] = v160;
      v102[31] = v161;
      WORD3(v105) = v159;
      *(&v105 + 2) = v158;
      HIDWORD(v107) = *&v157[3];
      *(&v107 + 9) = *v157;
      *(v108 + 9) = *v156;
      HIDWORD(v108[0]) = *&v156[3];
      *(&v97 + 1) = v39;
      *&v98 = v38;
      v42 = v76;
      *(&v98 + 1) = v76;
      *v99 = v88;
      v43 = *(&v93 + 1);
      *&v99[8] = v93;
      v99[24] = v60;
      *&v100 = v71;
      *(&v100 + 1) = v74;
      *&v101 = v92;
      *(&v101 + 1) = v90;
      v102[0] = v72;
      *&v102[8] = v91;
      v102[24] = v86;
      v102[25] = v87;
      v102[26] = v85;
      *&v103 = v68;
      *(&v103 + 1) = v58;
      v104 = v59;
      LOBYTE(v105) = v67;
      BYTE1(v105) = v82;
      *(&v105 + 1) = v40;
      *&v106 = v96;
      v44 = v95;
      v45 = *(&v83 + 1);
      *(&v106 + 1) = *(&v83 + 1);
      *&v107 = v41;
      LOBYTE(v41) = v83;
      BYTE8(v107) = v83;
      *&v108[0] = v79;
      BYTE8(v108[0]) = v80;
      *&v108[1] = v77;
      BYTE8(v108[1]) = v78;
      BYTE9(v108[1]) = v61;
      v46 = *(v108 + 10);
      *&v97 = v95;
      v47 = v98;
      *a2 = v97;
      a2[1] = v47;
      v48 = *v99;
      v49 = *&v99[16];
      v50 = v101;
      a2[4] = v100;
      a2[5] = v50;
      a2[2] = v48;
      a2[3] = v49;
      v51 = *v102;
      v52 = *&v102[16];
      v53 = v104;
      a2[8] = v103;
      a2[9] = v53;
      a2[6] = v51;
      a2[7] = v52;
      v54 = v105;
      v55 = v106;
      *(a2 + 218) = v46;
      v56 = v108[0];
      a2[12] = v107;
      a2[13] = v56;
      a2[10] = v54;
      a2[11] = v55;
      sub_2142F6A08(&v97, v109);
      __swift_destroy_boxed_opaque_existential_1(v164);
      *v109 = v44;
      *&v109[8] = v94;
      *&v109[24] = v42;
      v110 = v88;
      v111 = v93;
      v112 = v43;
      v113 = v60;
      *v114 = v163[0];
      *&v114[3] = *(v163 + 3);
      v115 = v71;
      v116 = v74;
      v117 = v92;
      v118 = v90;
      v119 = v72;
      *&v120[3] = *&v162[3];
      *v120 = *v162;
      v121 = v91;
      v122 = v86;
      v123 = v87;
      v124 = v85;
      v125 = v160;
      v126 = v161;
      *&v127 = v68;
      *(&v127 + 1) = v58;
      v128 = v59;
      v129 = v67;
      v130 = v82;
      v132 = v159;
      v131 = v158;
      *&v133 = v89;
      *(&v133 + 1) = v96;
      v134 = v45;
      v135 = v84;
      v136 = v41;
      *&v137[3] = *&v157[3];
      *v137 = *v157;
      v138 = v79;
      v139 = v80;
      *&v140[3] = *&v156[3];
      v29 = *v156;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001ELL;
    v33[1] = 0x800000021478ECB0;
    v34 = v73;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = v34;
    swift_willThrow();

    sub_213FDC6BC(v83, *(&v83 + 1));
    sub_213FDC6BC(v81, *(&v81 + 1));
    sub_213FDC6BC(v91, *(&v91 + 1));
    sub_213FDC6BC(v94, *(&v94 + 1));
    (*(v96 + 8))(v8, v84);

    *&v89 = *(&v93 + 1);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001ALL;
    v28[1] = 0x800000021478EC90;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v73;
    swift_willThrow();

    sub_213FDC6BC(v83, *(&v83 + 1));
    sub_213FDC6BC(v81, *(&v81 + 1));
    sub_213FDC6BC(v91, *(&v91 + 1));
    sub_213FDC6BC(v94, *(&v94 + 1));
    (*(v96 + 8))(v8, v84);

    *&v93 = *(&v59 + 1);
  }

  __swift_destroy_boxed_opaque_existential_1(v164);
  *v109 = v95;
  *&v109[8] = v94;
  *&v109[24] = v76;
  v110 = v88;
  v111 = v93;
  v112 = v89;
  v113 = v60;
  *v114 = v163[0];
  *&v114[3] = *(v163 + 3);
  v115 = v71;
  v116 = v74;
  v117 = v64;
  v118 = v75;
  v119 = v72;
  *&v120[3] = *&v162[3];
  *v120 = *v162;
  v121 = v91;
  v122 = v86;
  v123 = v87;
  v124 = v85;
  v126 = v161;
  v125 = v160;
  v127 = v68;
  *&v128 = v70;
  *(&v128 + 1) = v69;
  v129 = v67;
  v130 = v82;
  v132 = v159;
  v131 = v158;
  v133 = v63;
  v134 = v65;
  v135 = v66;
  v136 = v62;
  *&v137[3] = *&v157[3];
  *v137 = *v157;
  v138 = v79;
  v139 = v80;
  v29 = *v156;
  *&v140[3] = *&v156[3];
LABEL_8:
  *v140 = v29;
  v141 = v77;
  v142 = v78;
  v143 = v61;
  return sub_2142F6960(v109);
}

uint64_t sub_214164F44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079A8, &qword_2146F4C48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = *(v1 + 8);
  v37 = *(v1 + 16);
  v38 = v7;
  v8 = *(v1 + 48);
  v35 = *(v1 + 40);
  v36 = v8;
  v9 = *(v1 + 88);
  v33 = *(v1 + 80);
  v34 = v9;
  v10 = *(v1 + 104);
  v31 = *(v1 + 112);
  v32 = v10;
  LODWORD(v10) = *(v1 + 120);
  v29 = *(v1 + 121);
  v30 = v10;
  v42 = *(v1 + 122);
  v11 = *(v1 + 152);
  v27 = *(v1 + 144);
  v28 = v11;
  v26 = *(v1 + 161);
  v12 = *(v1 + 192);
  v24 = *(v1 + 184);
  v25 = v12;
  v22 = *(v1 + 208);
  v23 = *(v1 + 216);
  v20 = *(v1 + 224);
  v21 = *(v1 + 232);
  v13 = *(v1 + 233);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F69B4();
  sub_2146DAA28();
  LOBYTE(v40) = 0;
  v14 = v39;
  sub_2146DA378();
  if (v14)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = v36;
  v40 = v38;
  v41 = v37;
  v43 = 1;
  sub_213FDCA18(v38, v37);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v17 = sub_2142E1CAC();
  sub_2146DA388();
  v38 = v17;
  v39 = v16;
  sub_213FDC6BC(v40, v41);
  if (!v15 || (LOBYTE(v40) = 2, , sub_2146DA328(), , !v34) || (LOBYTE(v40) = 3, , sub_2146DA328(), v19 = v42, , v40 = v32, v41 = v31, v43 = 4, sub_213FDCA18(v32, v31), sub_2146DA388(), sub_213FDC6BC(v40, v41), LOBYTE(v40) = v30, v43 = 5, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0), v37 = sub_2142E1D30(), sub_2146DA388(), LOBYTE(v40) = v29, v43 = 6, sub_2146DA388(), LOBYTE(v40) = v19, v43 = 7, sub_2146DA388(), v28 >> 60 == 11) || (v40 = v27, v41 = v28, v43 = 8, sub_213FDCA18(v27, v28), sub_2146DA388(), sub_213FDC6BC(v40, v41), LOBYTE(v40) = v26, v43 = 9, sub_2146DA388(), v25 >> 60 == 11))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v40 = v24;
    v41 = v25;
    v43 = 10;
    sub_213FDCA18(v24, v25);
    sub_2146DA388();
    sub_213FDC6BC(v40, v41);
    v40 = v22;
    LOBYTE(v41) = v23;
    v43 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    v40 = v20;
    LOBYTE(v41) = v21;
    v43 = 12;
    sub_2146DA388();
    LOBYTE(v40) = v13;
    v43 = 13;
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_214165568@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a3;
  v42 = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_214059900;
  *(v13 + 24) = 0;
  *(inited + 32) = v13;
  v36 = a8;
  sub_213FDCA18(a7, a8);
  sub_214042B80(inited, &v45);
  v15 = v45;
  v14 = v46;
  v16 = v48;
  v33 = v47;
  v17 = v49;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214059900;
  *(v19 + 24) = 0;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v63);
  v37 = v63;
  v34 = v65;
  v43 = v66;
  v44 = v64;
  v38 = v67;
  v63 = a2;
  v64 = v71;
  v62 = v17;
  v45 = 0xD00000000000001ALL;
  v46 = 0x800000021478ED30;
  v47 = 0xD00000000000001CLL;
  v48 = 0x800000021478A360;

  v20 = v39;
  v40 = v15;
  v21 = v15(&v63, &v62, &v45);
  if (v20)
  {

    v22 = v36;
    sub_213FDC6BC(a7, v36);
LABEL_6:

    v23 = v14;
    v24 = v38;

    v28 = v33;
    v25 = v37;
LABEL_7:
    v45 = a1;
    v46 = v40;
    v47 = v23;
    v48 = v28;
    v49 = v16;
    v50 = v17;
    *v51 = v70[0];
    *&v51[3] = *(v70 + 3);
    v52 = v25;
    v53 = v44;
    v54 = v34;
    v55 = v43;
    v56 = v24;
    v57 = v42;
    v59 = v69;
    v58 = v68;
    v60 = a7;
    v61 = v22;
    return sub_2142F6A64(&v45);
  }

  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000001ALL;
    v27[1] = 0x800000021478ED30;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v36;
    sub_213FDC6BC(a7, v36);
    goto LABEL_6;
  }

  v23 = v14;

  v63 = a4;
  v64 = a5;
  v24 = v38;
  v62 = v38;
  v45 = 0xD00000000000001ELL;
  v46 = 0x800000021478ED50;
  v47 = 0xD00000000000001CLL;
  v48 = 0x800000021478A360;

  v25 = v37;
  v26 = v37(&v63, &v62, &v45);
  v22 = v36;
  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001ELL;
    v30[1] = 0x800000021478ED50;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a7, v36);

    v16 = v71;

    v28 = a2;
    goto LABEL_7;
  }

  sub_213FDC6BC(a7, v36);

  *a9 = a1;
  *(a9 + 8) = v40;
  *(a9 + 16) = v14;
  *(a9 + 24) = a2;
  *(a9 + 32) = v71;
  *(a9 + 40) = v17;
  *(a9 + 48) = v37;
  *(a9 + 56) = v44;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = v38;
  *(a9 + 81) = v42;
  *(a9 + 88) = a7;
  *(a9 + 96) = v36;
  return result;
}

uint64_t sub_214165A70()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x7069636974726170;
  v4 = 0x6E4565746F6D6572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x496E6F6973736573;
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

uint64_t sub_214165B2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436A48C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214165B54(uint64_t a1)
{
  v2 = sub_2142F6AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214165B90(uint64_t a1)
{
  v2 = sub_2142F6AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214165BCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079B0, &qword_2146F4C50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = a1[3];
  v94 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F6AB8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  v10 = v6;
  LOBYTE(v71) = 0;
  v62 = sub_2146DA1B8();
  LOBYTE(v71) = 1;
  v11 = sub_2146DA168();
  v14 = v13;
  v61 = v11;
  LOBYTE(v71) = 2;
  v15 = sub_2146DA168();
  v17 = v16;
  v60 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079C0, &qword_2146F4C58);
  LOBYTE(v63) = 3;
  sub_2142F6B0C();
  sub_2146DA1C8();
  v58 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v88 = 4;
  sub_2142E1278();
  sub_2146DA1C8();
  v59 = v89;
  v57 = v90;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v51 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214059900;
  *(v19 + 24) = 0;
  *(inited + 32) = v19;
  sub_213FDCA18(v59, v57);
  sub_214042B80(inited, &v71);
  v56 = v72;
  v45 = v73;
  v53 = v74;
  v54 = v71;
  v55 = v75;
  v20 = swift_initStackObject();
  *(v20 + 16) = v51;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214059900;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_214042B80(v20, &v63);
  v52 = *(&v63 + 1);
  v49 = v63;
  *&v51 = *(&v64 + 1);
  v46 = v64;
  LODWORD(v50) = v65;
  *&v63 = v61;
  *(&v63 + 1) = v14;
  LOBYTE(v70[0]) = v55;
  v44 = 0xD00000000000001ALL;
  v71 = 0xD00000000000001ALL;
  v72 = 0x800000021478ED30;
  v47 = 0x800000021478ED30;
  v48 = 0x800000021478A360;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  v22 = v54(&v63, v70, &v71);
  v23 = v44;
  v24 = v47;
  if (v22)
  {
    v25 = v48;
    v45 = 0;

    v70[0] = v60;
    v70[1] = v17;
    LOBYTE(v63) = v50;
    v71 = 0xD00000000000001ELL;
    v72 = 0x800000021478ED50;
    v53 = 0x800000021478ED50;
    v73 = 0xD00000000000001CLL;
    v74 = v25;

    v26 = v45;
    v27 = v49(v70, &v63, &v71);
    if (v26)
    {
    }

    else
    {
      v32 = v53;
      if (v27)
      {

        sub_213FDC6BC(v59, v57);
        (*(v10 + 8))(v8, v5);

        v33 = v52;

        v34 = v61;
        v35 = v62;
        *&v63 = v62;
        *(&v63 + 1) = v54;
        *&v64 = v56;
        *(&v64 + 1) = v61;
        *&v65 = v14;
        BYTE8(v65) = v55;
        HIDWORD(v65) = *(v93 + 3);
        *(&v65 + 9) = v93[0];
        *&v66 = v49;
        *(&v66 + 1) = v33;
        *&v67 = v60;
        *(&v67 + 1) = v17;
        LOBYTE(v68) = v50;
        BYTE1(v68) = v58;
        WORD3(v68) = v92;
        *(&v68 + 2) = v91;
        *(&v68 + 1) = v59;
        v69 = v57;
        v36 = v67;
        v37 = v68;
        *(a2 + 96) = v57;
        *(a2 + 64) = v36;
        *(a2 + 80) = v37;
        v38 = v63;
        v39 = v64;
        v40 = v66;
        *(a2 + 32) = v65;
        *(a2 + 48) = v40;
        *a2 = v38;
        *(a2 + 16) = v39;
        sub_2142F6BE4(&v63, &v71);
        __swift_destroy_boxed_opaque_existential_1(v94);
        v71 = v35;
        v72 = v54;
        v73 = v56;
        v74 = v34;
        v75 = v14;
        v76 = v55;
        *v77 = v93[0];
        *&v77[3] = *(v93 + 3);
        v78 = v49;
        v79 = v33;
        v80 = v60;
        v81 = v17;
        v82 = v50;
        v83 = v58;
        v84 = v91;
        v85 = v92;
        v86 = v59;
        v87 = v57;
        return sub_2142F6A64(&v71);
      }

      sub_214031C4C();
      swift_allocError();
      *v41 = 0xD00000000000001ELL;
      v41[1] = v32;
      v42 = v48;
      v41[2] = 0xD00000000000001CLL;
      v41[3] = v42;
      swift_willThrow();
    }

    sub_213FDC6BC(v59, v57);
    v60 = v52;
    v30 = v14;
    v31 = v56;
    v29 = v57;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = v23;
    v28[1] = v24;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v48;
    swift_willThrow();

    v29 = v57;
    sub_213FDC6BC(v59, v57);
    v30 = v53;
    v31 = v56;
    v60 = v56;
    v61 = v45;
  }

  (*(v10 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(v94);
  v71 = v62;
  v72 = v54;
  v73 = v31;
  v74 = v61;
  v75 = v30;
  v76 = v55;
  *v77 = v93[0];
  *&v77[3] = *(v93 + 3);
  v78 = v49;
  v79 = v52;
  v80 = v46;
  v81 = v51;
  v82 = v50;
  v83 = v58;
  v84 = v91;
  v85 = v92;
  v86 = v59;
  v87 = v29;
  return sub_2142F6A64(&v71);
}

uint64_t sub_2141663F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079D8, &qword_2146F4C60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 72);
  v23 = *(v1 + 64);
  v24 = v7;
  v28 = *(v1 + 81);
  v10 = *(v1 + 96);
  v21 = *(v1 + 88);
  v22 = v9;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_2142F6AB8();
  sub_2146DAA28();
  LOBYTE(v26) = 0;
  v15 = v25;
  sub_2146DA378();
  if (v15)
  {
    return (*(v4 + 8))(v6, v14);
  }

  v25 = v10;
  v17 = v21;
  v18 = v22;
  if (v8)
  {
    LOBYTE(v26) = 1;

    sub_2146DA328();

    if (v18)
    {
      LOBYTE(v26) = 2;

      sub_2146DA328();
      v19 = v25;

      LOBYTE(v26) = v28;
      v29 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079C0, &qword_2146F4C58);
      sub_2142F6C40();
      sub_2146DA388();
      v26 = v17;
      v27 = v19;
      v29 = 4;
      sub_213FDCA18(v17, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v26, v27);
      return (*(v4 + 8))(v6, v14);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214166778@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v66 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_214059900;
  *(v12 + 24) = 0;
  *(inited + 32) = v12;
  v35 = a7;
  sub_213FDCA18(a6, a7);
  sub_214042B80(inited, &v43);
  v14 = v43;
  v13 = v44;
  v15 = v46;
  v32 = v45;
  v16 = v47;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_214059900;
  *(v18 + 24) = 0;
  *(v17 + 32) = v18;
  sub_214042B80(v17, &v59);
  v36 = v59;
  v33 = v61;
  v41 = v62;
  v42 = v60;
  v37 = v63;
  v59 = a2;
  v60 = v66;
  v58 = v16;
  v43 = 0xD00000000000001BLL;
  v44 = 0x800000021478ED70;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  v19 = v38;
  v39 = v14;
  v20 = v14(&v59, &v58, &v43);
  if (v19)
  {

    v21 = v35;
    sub_213FDC6BC(a6, v35);
LABEL_6:

    v22 = v13;
    v23 = v37;

    v27 = v32;
    v24 = v36;
LABEL_7:
    v43 = a1;
    v44 = v39;
    v45 = v22;
    v46 = v27;
    v47 = v15;
    v48 = v16;
    *v49 = v65[0];
    *&v49[3] = *(v65 + 3);
    v50 = v24;
    v51 = v42;
    v52 = v33;
    v53 = v41;
    v54 = v23;
    *v55 = v64[0];
    *&v55[3] = *(v64 + 3);
    v56 = a6;
    v57 = v21;
    return sub_2142F6D18(&v43);
  }

  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000001BLL;
    v26[1] = 0x800000021478ED70;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v35;
    sub_213FDC6BC(a6, v35);
    goto LABEL_6;
  }

  v22 = v13;

  v59 = a4;
  v60 = a5;
  v23 = v37;
  v58 = v37;
  v43 = 0xD00000000000001FLL;
  v44 = 0x800000021478ED90;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  v24 = v36;
  v25 = v36(&v59, &v58, &v43);
  v21 = v35;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD00000000000001FLL;
    v29[1] = 0x800000021478ED90;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a6, v35);

    v15 = v66;

    v27 = a2;
    goto LABEL_7;
  }

  sub_213FDC6BC(a6, v35);

  *a8 = a1;
  *(a8 + 8) = v39;
  *(a8 + 16) = v13;
  *(a8 + 24) = a2;
  *(a8 + 32) = v66;
  *(a8 + 40) = v16;
  *(a8 + 48) = v36;
  *(a8 + 56) = v42;
  *(a8 + 64) = a4;
  *(a8 + 72) = a5;
  *(a8 + 80) = v37;
  *(a8 + 88) = a6;
  *(a8 + 96) = v35;
  return result;
}

unint64_t sub_214166C68()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x7069636974726170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973736573;
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

uint64_t sub_214166CF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436A65C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214166D20(uint64_t a1)
{
  v2 = sub_2142F6D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214166D5C(uint64_t a1)
{
  v2 = sub_2142F6D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214166D98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079F0, &qword_2146F4C68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F6D6C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v90);
  }

  v10 = v6;
  LOBYTE(v70) = 0;
  v61 = sub_2146DA1B8();
  LOBYTE(v70) = 1;
  v11 = sub_2146DA168();
  v14 = v13;
  v60 = v11;
  LOBYTE(v70) = 2;
  v15 = sub_2146DA168();
  v59 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v85 = 3;
  sub_2142E1278();
  sub_2146DA1C8();
  v44 = v15;
  v17 = v86;
  v58 = v87;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v53 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214059900;
  *(v19 + 24) = 0;
  *(inited + 32) = v19;
  v52 = v17;
  sub_213FDCA18(v17, v58);
  sub_214042B80(inited, &v70);
  v56 = v70;
  v57 = v71;
  v45 = v72;
  v55 = v73;
  LODWORD(v17) = v74;
  v20 = swift_initStackObject();
  *(v20 + 16) = v53;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214059900;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_214042B80(v20, &v62);
  v54 = *(&v62 + 1);
  v50 = v62;
  *&v53 = *(&v63 + 1);
  v46 = v63;
  LODWORD(v51) = v64;
  *&v62 = v60;
  *(&v62 + 1) = v14;
  v49 = v17;
  LOBYTE(v69[0]) = v17;
  v70 = 0xD00000000000001BLL;
  v71 = 0x800000021478ED70;
  v47 = 0x800000021478A360;
  v48 = 0x800000021478ED70;
  v72 = 0xD00000000000001CLL;
  v73 = 0x800000021478A360;

  v22 = v56(&v62, v69, &v70);
  v23 = v47;
  v24 = v48;
  if (v22)
  {
    v45 = 0;

    v69[0] = v44;
    v69[1] = v59;
    LOBYTE(v62) = v51;
    v70 = 0xD00000000000001FLL;
    v71 = 0x800000021478ED90;
    v72 = 0xD00000000000001CLL;
    v73 = v23;

    v25 = v45;
    v26 = v50(v69, &v62, &v70);
    if (v25)
    {

      v27 = v52;
      v28 = v58;
    }

    else
    {
      v33 = v58;
      if (v26)
      {

        v34 = v58;
        sub_213FDC6BC(v52, v58);
        (*(v10 + 8))(v8, v5);

        v35 = v54;

        v36 = v61;
        *&v62 = v61;
        *(&v62 + 1) = v56;
        *&v63 = v57;
        *(&v63 + 1) = v60;
        *&v64 = v14;
        BYTE8(v64) = v49;
        *&v65 = v50;
        *(&v65 + 1) = v35;
        *&v66 = v44;
        *(&v66 + 1) = v59;
        LOBYTE(v67) = v51;
        *(&v67 + 1) = *v88;
        DWORD1(v67) = *&v88[3];
        *(&v67 + 1) = v52;
        v68 = v34;
        v37 = v63;
        *a2 = v62;
        *(a2 + 16) = v37;
        v38 = v64;
        v39 = v65;
        v40 = v66;
        v41 = v67;
        *(a2 + 96) = v34;
        *(a2 + 64) = v40;
        *(a2 + 80) = v41;
        *(a2 + 32) = v38;
        *(a2 + 48) = v39;
        sub_2142F6DC0(&v62, &v70);
        __swift_destroy_boxed_opaque_existential_1(v90);
        v70 = v36;
        v71 = v56;
        v72 = v57;
        v73 = v60;
        v74 = v14;
        v75 = v49;
        *v76 = v89[0];
        *&v76[3] = *(v89 + 3);
        v77 = v50;
        v78 = v35;
        v79 = v44;
        v80 = v59;
        v81 = v51;
        *v82 = *v88;
        *&v82[3] = *&v88[3];
        v83 = v52;
        v84 = v34;
        return sub_2142F6D18(&v70);
      }

      sub_214031C4C();
      swift_allocError();
      *v42 = 0xD00000000000001FLL;
      v42[1] = 0x800000021478ED90;
      v42[2] = 0xD00000000000001CLL;
      v42[3] = v23;
      swift_willThrow();

      v27 = v52;
      v28 = v33;
    }

    sub_213FDC6BC(v27, v28);
    v59 = v54;
    v31 = v14;
    v30 = v52;
    v32 = v57;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD00000000000001BLL;
    v29[1] = v24;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = v23;
    swift_willThrow();

    v30 = v52;
    sub_213FDC6BC(v52, v58);
    v31 = v55;
    v32 = v57;
    v59 = v57;
    v60 = v45;
  }

  (*(v10 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(v90);
  v70 = v61;
  v71 = v56;
  v72 = v32;
  v73 = v60;
  v74 = v31;
  v75 = v49;
  *v76 = v89[0];
  *&v76[3] = *(v89 + 3);
  v77 = v50;
  v78 = v54;
  v79 = v46;
  v80 = v53;
  v81 = v51;
  *v82 = *v88;
  *&v82[3] = *&v88[3];
  v83 = v30;
  v84 = v58;
  return sub_2142F6D18(&v70);
}

uint64_t sub_214167544(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A00, &qword_2146F4C70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[9];
  v20 = v1[8];
  v21 = v7;
  v10 = v1[12];
  v18 = v1[11];
  v19 = v9;
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6D6C();
  sub_2146DAA28();
  LOBYTE(v23) = 0;
  v11 = v22;
  sub_2146DA378();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = v18;
  v13 = v19;
  if (v8 && (LOBYTE(v23) = 1, , sub_2146DA328(), , v13))
  {
    LOBYTE(v23) = 2;

    sub_2146DA328();
    v15 = v14;
    v16 = v17;

    v23 = v15;
    v24 = v16;
    v25 = 3;
    sub_213FDCA18(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v23, v24);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 sub_214167870@<Q0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, char a12, uint64_t a13, unint64_t a14, char a15, uint64_t a16, unint64_t a17, char a18, uint64_t (*a19)(void, void, void), uint64_t a20, char a21, uint64_t (*a22)(void, void, void), uint64_t a23, char a24, char a25)
{
  v66 = *a1;
  sub_213FDCA18(a10, a11);
  sub_213FDCA18(a16, a17);
  sub_2143BB2C8(&v80);
  v25 = v80;
  v27 = v81;
  v26 = v82;
  v28 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_214059900;
  *(v30 + 24) = 0;
  *(v29 + 32) = v30;
  sub_214042B80(v29, &v115);
  v130 = v115;
  v74 = v116;
  v31 = v118;
  v57 = v117;
  v78 = v119;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2146E9BF0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_214059900;
  *(v33 + 24) = 0;
  *(v32 + 32) = v33;
  sub_214042B80(v32, v113);
  v77 = v113[1];
  v59 = v113[2];
  v75 = v113[0];
  v76 = v113[3];
  v73 = v114;
  v120 = a4 & 1;
  v80 = v25;
  v81 = v27;
  v82 = v26;
  LOBYTE(v83) = v28;

  v60 = v26;
  v61 = v27;
  sub_21404F7E0(v27, v26);
  sub_214032118(a13, a14, 2, 0xD00000000000002DLL, 0x800000021478EDB0, 0xD00000000000001CLL, 0x800000021478A360);
  if (v62)
  {
    sub_213FDC6BC(a13, a14);
    v34 = a16;
    v35 = a17;
    sub_213FDC6BC(a16, a17);
    v36 = a10;
    v79 = v31;
    sub_213FDC6BC(a10, a11);

    v63 = v80;
    v37 = v81;
    v38 = v82;
    v39 = v83;

    sub_214032564(v61, v60);
    v40 = v63;
    v41 = a11;
    v42 = v78;
    v43 = v130;
    v44 = v74;
    v45 = v73;
    v46 = v57;
    v47 = v79;
LABEL_6:
    v80.n128_u8[0] = v66;
    *(v80.n128_u32 + 1) = v129[0];
    v80.n128_u32[1] = *(v129 + 3);
    v80.n128_u64[1] = a2;
    v81 = a3;
    LOBYTE(v82) = a4 & 1;
    BYTE1(v82) = a5;
    BYTE2(v82) = a6;
    BYTE3(v82) = a7;
    BYTE4(v82) = a8;
    *(&v82 + 5) = v127;
    HIBYTE(v82) = v128;
    v83 = v36;
    v84 = v41;
    v85 = a12;
    *&v86[3] = *&v126[3];
    *v86 = *v126;
    v87 = v40;
    v88 = v37;
    v89 = v38;
    v90 = v39;
    v91 = a15;
    v93 = v125;
    v92 = v124;
    v94 = v34;
    v95 = v35;
    v96 = a18;
    *&v97[3] = *(v123 + 3);
    *v97 = v123[0];
    v98 = v43;
    v99 = v44;
    v100 = v46;
    v101 = v47;
    v102 = v42;
    v103 = a21 & 1;
    v105 = v122;
    v104 = v121;
    v106 = v75;
    v107 = v77;
    v108 = v59;
    v109 = v76;
    v110 = v45;
    v111 = a24;
    v112 = a25;
    sub_2142F6E1C(&v80);
    return result;
  }

  v64 = v80;
  v55 = v82;
  v56 = v81;
  v54 = v83;

  sub_214032564(v27, v26);
  v115 = a19;
  v116 = a20;
  LOBYTE(v113[0]) = v78;
  v80.n128_u64[0] = 0xD000000000000022;
  v80.n128_u64[1] = 0x800000021478EDE0;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;

  v44 = v74;
  v48 = v31;
  if ((v130(&v115, v113, &v80) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000022;
    v50[1] = 0x800000021478EDE0;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a13, a14);
    v34 = a16;
    v35 = a17;
    sub_213FDC6BC(a16, a17);
    v36 = a10;
    v43 = v130;
    sub_213FDC6BC(a10, a11);

    v47 = v48;
    v41 = a11;
    v45 = v73;
    v38 = v55;
    v37 = v56;
    v40 = v64;
    v39 = v54;
    v42 = v78;
    v46 = v57;
    goto LABEL_6;
  }

  v115 = a22;
  v116 = a23;
  v45 = v73;
  LOBYTE(v113[0]) = v73;
  v80.n128_u64[0] = 0xD00000000000001ELL;
  v80.n128_u64[1] = 0x800000021478EE10;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;

  v49 = v75(&v115, v113, &v80);
  v36 = a10;
  v35 = a17;
  if ((v49 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD00000000000001ELL;
    v53[1] = 0x800000021478EE10;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a13, a14);
    v34 = a16;
    sub_213FDC6BC(a16, a17);
    sub_213FDC6BC(a10, a11);

    v41 = a11;
    v46 = a19;
    v44 = v74;
    v47 = a20;
    v43 = v130;
    v38 = v55;
    v37 = v56;
    v40 = v64;
    v39 = v54;
    v42 = v78;
    goto LABEL_6;
  }

  sub_213FDC6BC(a13, a14);
  sub_213FDC6BC(a16, a17);
  sub_213FDC6BC(a10, a11);

  *a9 = v66;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 1) = v129[0];
  *(a9 + 4) = *(v129 + 3);
  *(a9 + 24) = a4 & 1;
  *(a9 + 25) = a5;
  *(a9 + 26) = a6;
  *(a9 + 27) = a7;
  *(a9 + 28) = a8;
  *(a9 + 29) = v127;
  *(a9 + 31) = v128;
  *(a9 + 32) = a10;
  *(a9 + 40) = a11;
  *(a9 + 48) = a12;
  *(a9 + 52) = *&v126[3];
  *(a9 + 49) = *v126;
  result = v64;
  *(a9 + 56) = v64;
  *(a9 + 72) = v56;
  *(a9 + 80) = v55;
  *(a9 + 88) = v54;
  *(a9 + 89) = a15;
  *(a9 + 94) = v125;
  *(a9 + 90) = v124;
  *(a9 + 96) = a16;
  *(a9 + 104) = a17;
  *(a9 + 112) = a18;
  v52 = v123[0];
  *(a9 + 116) = *(v123 + 3);
  *(a9 + 113) = v52;
  *(a9 + 120) = v130;
  *(a9 + 128) = v74;
  *(a9 + 136) = a19;
  *(a9 + 144) = a20;
  *(a9 + 152) = v78;
  *(a9 + 153) = a21 & 1;
  *(a9 + 160) = v75;
  *(a9 + 168) = v77;
  *(a9 + 176) = a22;
  *(a9 + 184) = a23;
  *(a9 + 192) = v73;
  *(a9 + 193) = a24;
  *(a9 + 194) = a25;
  return result;
}

unint64_t sub_2141681A4(char a1)
{
  result = 0x726F70736E617274;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 1651469410;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 14:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0x7069636974726170;
      break;
    case 15:
      result = 0x496E6F6973736573;
      break;
    case 16:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141683B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436A7D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141683E4(uint64_t a1)
{
  v2 = sub_2142F6E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214168420(uint64_t a1)
{
  v2 = sub_2142F6E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416845C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A08, &qword_2146F4C78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - v7;
  v9 = a1[3];
  v152 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F6E70();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v152);
  }

  v89 = a2;
  v90 = v6;
  LOBYTE(v91) = 0;
  sub_2142F6EC4();
  sub_2146DA1C8();
  v10 = v102;
  LOBYTE(v102) = 1;
  v88 = sub_2146DA1B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v91) = 2;
  sub_2142E3570();
  sub_2146DA1C8();
  v87 = v10;
  v12 = v102;
  v13 = v5;
  v14 = BYTE8(v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v91) = 3;
  v15 = sub_2142E1378();
  sub_2146DA1C8();
  v85 = v12;
  v86 = v14;
  LODWORD(v12) = v102;
  LOBYTE(v91) = 4;
  sub_2146DA1C8();
  v16 = v102;
  LOBYTE(v91) = 5;
  sub_2146DA1C8();
  v84 = v16;
  v17 = v102;
  LOBYTE(v91) = 6;
  sub_2146DA1C8();
  v83 = v15;
  v81 = v17;
  v18 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v91) = 7;
  v82 = sub_2142E1278();
  sub_2146DA1C8();
  v79 = v18;
  v80 = v12;
  v19 = v102;
  LOBYTE(v91) = 8;
  sub_2146DA1C8();
  v78 = *(&v19 + 1);
  v77 = v102;
  LOBYTE(v91) = 9;
  v20 = v13;
  sub_2146DA1C8();
  v76 = v102;
  LOBYTE(v91) = 10;
  sub_2146DA1C8();
  v21 = v102;
  LOBYTE(v91) = 11;
  sub_2146DA1C8();
  v75 = *(&v102 + 1);
  v82 = v102;
  LOBYTE(v91) = 12;
  sub_2146DA1C8();
  v73 = v102;
  LOBYTE(v102) = 13;
  v72 = sub_2146DA168();
  v74 = v22;
  LOBYTE(v102) = 14;
  LODWORD(v71) = sub_2146DA178();
  LOBYTE(v102) = 15;
  v69 = sub_2146DA168();
  v70 = v23;
  LOBYTE(v91) = 16;
  sub_2146DA1C8();
  v68 = v102;
  v141 = 17;
  sub_2146DA1C8();
  v51 = v142;
  sub_213FDCA18(v19, v78);
  sub_213FDCA18(v82, v75);
  sub_2143BB2C8(&v102);
  v55 = v102;
  v83 = v103;
  v66 = *(&v102 + 1);
  v67 = v104;
  LODWORD(v54) = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v24 = swift_allocObject();
  v61 = xmmword_2146E9BF0;
  *(v24 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214059900;
  *(v25 + 24) = 0;
  *(v24 + 32) = v25;
  sub_214042B80(v24, &v91);
  v62 = v91;
  v57 = v92;
  v64 = *(&v91 + 1);
  v65 = *(&v92 + 1);
  v63 = v93;
  v26 = swift_allocObject();
  *(v26 + 16) = v61;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_214059900;
  *(v27 + 24) = 0;
  *(v26 + 32) = v27;
  sub_214042B80(v26, &v135);
  v58 = v135;
  v50 = v137;
  v60 = v138;
  *&v61 = v136;
  v59 = v139;
  v140 = v86;
  v56 = v71 & 1;
  *&v102 = v55;
  v28 = v67;
  *(&v102 + 1) = v66;
  v29 = v83;
  v103 = v83;
  v104 = v67;
  LOBYTE(v105) = v54;

  sub_21404F7E0(v29, v28);
  v55 = "IDSSessionDecline.participantID";
  v71 = 0x800000021478A360;
  sub_214032118(v76, *(&v76 + 1), 2, 0xD00000000000002DLL, 0x800000021478EDB0, 0xD00000000000001CLL, 0x800000021478A360);
  v30 = v71;

  v54 = v102;
  v55 = v103;
  v53 = v104;
  v52 = v105;

  sub_214032564(v83, v67);
  *&v91 = v72;
  *(&v91 + 1) = v74;
  LOBYTE(v135) = v63;
  *&v102 = 0xD000000000000022;
  *(&v102 + 1) = 0x800000021478EDE0;
  v103 = 0xD00000000000001CLL;
  v104 = v30;

  if (v62(&v91, &v135, &v102))
  {
    v31 = v71;

    v135 = v69;
    v136 = v70;
    LOBYTE(v91) = v59;
    *&v102 = 0xD00000000000001ELL;
    *(&v102 + 1) = 0x800000021478EE10;
    v103 = 0xD00000000000001CLL;
    v104 = v31;

    if (v58(&v135, &v91, &v102))
    {

      sub_213FDC6BC(v76, *(&v76 + 1));

      v34 = v75;
      sub_213FDC6BC(v82, v75);
      v49 = v19;
      v35 = v78;
      sub_213FDC6BC(v19, v78);
      (*(v90 + 8))(v8, v20);

      v36 = v61;

      *(&v91 + 1) = v151[0];
      DWORD1(v91) = *(v151 + 3);
      *(&v91 + 1) = v88;
      *&v92 = v85;
      BYTE8(v92) = v86;
      BYTE9(v92) = v80;
      BYTE10(v92) = v84;
      BYTE11(v92) = v81;
      BYTE12(v92) = v79;
      *(&v92 + 13) = v149;
      HIBYTE(v92) = v150;
      *&v93 = v19;
      *(&v93 + 1) = v35;
      LOBYTE(v94[0]) = v77;
      *(v94 + 1) = *v148;
      DWORD1(v94[0]) = *&v148[3];
      *(v94 + 8) = v54;
      *(&v94[1] + 1) = v55;
      *&v95 = v53;
      BYTE8(v95) = v52;
      BYTE9(v95) = v21;
      *(&v95 + 10) = v146;
      HIWORD(v95) = v147;
      *&v96 = v82;
      *(&v96 + 1) = v34;
      LOBYTE(v97) = v73;
      DWORD1(v97) = *&v145[3];
      *(&v97 + 1) = *v145;
      *(&v97 + 1) = v62;
      *&v98 = v64;
      *(&v98 + 1) = v72;
      *&v99 = v74;
      BYTE8(v99) = v63;
      BYTE9(v99) = v56;
      HIWORD(v99) = v144;
      *(&v99 + 10) = v143;
      *&v100 = v58;
      *(&v100 + 1) = v36;
      *v101 = v69;
      *&v101[8] = v70;
      v101[16] = v59;
      v101[17] = v68;
      LOBYTE(v35) = v51;
      v101[18] = v51;
      v37 = v89;
      *(v89 + 191) = *&v101[15];
      LOBYTE(v36) = v87;
      LOBYTE(v91) = v87;
      v38 = v91;
      v39 = v92;
      v40 = v94[0];
      v37[2] = v93;
      v37[3] = v40;
      *v37 = v38;
      v37[1] = v39;
      v41 = v94[1];
      v42 = v95;
      v43 = v97;
      v37[6] = v96;
      v37[7] = v43;
      v37[4] = v41;
      v37[5] = v42;
      v44 = v98;
      v45 = v99;
      v46 = *v101;
      v37[10] = v100;
      v37[11] = v46;
      v37[8] = v44;
      v37[9] = v45;
      sub_2142F6F18(&v91, &v102);
      __swift_destroy_boxed_opaque_existential_1(v152);
      LOBYTE(v102) = v36;
      *(&v102 + 1) = v88;
      v103 = v85;
      *(&v102 + 1) = v151[0];
      DWORD1(v102) = *(v151 + 3);
      LOBYTE(v104) = v86;
      BYTE1(v104) = v80;
      BYTE2(v104) = v84;
      BYTE3(v104) = v81;
      BYTE4(v104) = v79;
      *(&v104 + 5) = v149;
      HIBYTE(v104) = v150;
      v105 = v49;
      v106 = v78;
      v107 = v77;
      *v108 = *v148;
      *&v108[3] = *&v148[3];
      v109 = v54;
      v110 = v55;
      v111 = v53;
      v112 = v52;
      v113 = v21;
      v114 = v146;
      v115 = v147;
      v116 = v82;
      v117 = v75;
      v118 = v73;
      *&v119[3] = *&v145[3];
      *v119 = *v145;
      v120 = v62;
      v121 = v64;
      v122 = v72;
      v123 = v74;
      v124 = v63;
      v125 = v56;
      v127 = v144;
      v126 = v143;
      v128 = v58;
      v129 = v61;
      v130 = v69;
      v131 = v70;
      v132 = v59;
      v133 = v68;
      v134 = v35;
      return sub_2142F6E1C(&v102);
    }

    sub_214031C4C();
    swift_allocError();
    *v47 = 0xD00000000000001ELL;
    v47[1] = 0x800000021478EE10;
    v48 = v71;
    v47[2] = 0xD00000000000001CLL;
    v47[3] = v48;
    swift_willThrow();
    sub_213FDC6BC(v76, *(&v76 + 1));

    sub_213FDC6BC(v82, v75);
    sub_213FDC6BC(v19, v78);
    (*(v90 + 8))(v8, v20);

    v57 = v72;
    v65 = v74;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000022;
    v32[1] = 0x800000021478EDE0;
    v33 = v71;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = v33;
    swift_willThrow();

    sub_213FDC6BC(v76, *(&v76 + 1));

    sub_213FDC6BC(v82, v75);
    sub_213FDC6BC(v19, v78);
    (*(v90 + 8))(v8, v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v152);
  LOBYTE(v102) = v87;
  *(&v102 + 1) = v88;
  v103 = v85;
  *(&v102 + 1) = v151[0];
  DWORD1(v102) = *(v151 + 3);
  LOBYTE(v104) = v86;
  BYTE1(v104) = v80;
  BYTE2(v104) = v84;
  BYTE3(v104) = v81;
  BYTE4(v104) = v79;
  *(&v104 + 5) = v149;
  HIBYTE(v104) = v150;
  v105 = v19;
  v106 = v78;
  v107 = v77;
  *&v108[3] = *&v148[3];
  *v108 = *v148;
  v109 = v54;
  v110 = v55;
  v111 = v53;
  v112 = v52;
  v113 = v21;
  v115 = v147;
  v114 = v146;
  v116 = v82;
  v117 = v75;
  v118 = v73;
  *&v119[3] = *&v145[3];
  *v119 = *v145;
  v120 = v62;
  v121 = v64;
  v122 = v57;
  v123 = v65;
  v124 = v63;
  v125 = v56;
  v127 = v144;
  v126 = v143;
  v128 = v58;
  v129 = v61;
  v130 = v50;
  v131 = v60;
  v132 = v59;
  v133 = v68;
  v134 = v51;
  return sub_2142F6E1C(&v102);
}

uint64_t sub_21416964C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A20, &qword_2146F4C80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = *v1;
  v6 = *(v1 + 1);
  v46 = *(v1 + 2);
  v47 = v6;
  v51 = v1[24];
  LODWORD(v6) = v1[25];
  v44 = v1[26];
  v45 = v6;
  LODWORD(v6) = v1[27];
  v42 = v1[28];
  v43 = v6;
  v7 = *(v1 + 5);
  v40 = *(v1 + 4);
  v41 = v7;
  v39 = v1[48];
  v8 = *(v1 + 9);
  v37 = *(v1 + 10);
  v38 = v8;
  v36 = v1[89];
  v9 = *(v1 + 13);
  v34 = *(v1 + 12);
  v35 = v9;
  v32 = v1[112];
  v10 = *(v1 + 17);
  v33 = *(v1 + 18);
  v29 = v1[153];
  v11 = *(v1 + 23);
  v28 = *(v1 + 22);
  v30 = v11;
  v31 = v10;
  v12 = v1[193];
  v13 = v1[194];
  v14 = a1[3];
  v15 = a1;
  v17 = &v26 - v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_2142F6E70();
  v18 = v3;
  sub_2146DAA28();
  LOBYTE(v49) = v5;
  v52 = 0;
  sub_2142F6F74();
  v19 = v48;
  sub_2146DA388();
  if (v19)
  {
    return (*(v4 + 8))(v17, v3);
  }

  v21 = v51;
  v22 = v46;
  v23 = v45;
  LODWORD(v48) = v12;
  HIDWORD(v26) = v13;
  v27 = v4;
  LOBYTE(v49) = 1;
  sub_2146DA378();
  v49 = v22;
  LOBYTE(v50) = v21;
  v52 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  sub_2146DA388();
  LOBYTE(v49) = v23;
  v52 = 3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v25 = sub_2142E1D30();
  sub_2146DA388();
  LOBYTE(v49) = v44;
  v52 = 4;
  sub_2146DA388();
  LOBYTE(v49) = v43;
  v52 = 5;
  sub_2146DA388();
  LOBYTE(v49) = v42;
  v52 = 6;
  sub_2146DA388();
  v46 = v25;
  v47 = v24;
  v49 = v40;
  v50 = v41;
  v52 = 7;
  sub_213FDCA18(v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  sub_2146DA388();
  sub_213FDC6BC(v49, v50);
  LOBYTE(v49) = v39;
  v52 = 8;
  sub_2146DA388();
  if (v37 >> 60 != 11 && (v49 = v38, v50 = v37, v52 = 9, sub_213FDCA18(v38, v37), sub_2146DA388(), sub_213FDC6BC(v49, v50), LOBYTE(v49) = v36, v52 = 10, sub_2146DA388(), v49 = v34, v50 = v35, v52 = 11, sub_213FDCA18(v34, v35), sub_2146DA388(), sub_213FDC6BC(v49, v50), LOBYTE(v49) = v32, v52 = 12, sub_2146DA388(), v33) && (LOBYTE(v49) = 13, , sub_2146DA328(), , LOBYTE(v49) = 14, sub_2146DA338(), v30))
  {
    LOBYTE(v49) = 15;

    sub_2146DA328();

    LOBYTE(v49) = v48;
    v52 = 16;
    sub_2146DA388();
    LOBYTE(v49) = BYTE4(v26);
    v52 = 17;
    sub_2146DA388();
    return (*(v27 + 8))(v17, v18);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214169DEC@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v33 = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2140676DC;
  *(v10 + 24) = 0;
  *(inited + 32) = v10;
  sub_214042B80(inited, &v36);
  v11 = v36;
  v12 = v37;
  v13 = v39;
  v27 = v38;
  v14 = v40;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2140676DC;
  *(v16 + 24) = 0;
  *(v15 + 32) = v16;
  sub_214042B80(v15, &v50);
  v34 = v50;
  v35 = v51;
  v26 = v52;
  v56 = v53;
  v29 = v54;
  v30 = v14;
  v50 = a2;
  v51 = a3;
  v49 = v14;
  v36 = 0xD00000000000001ELL;
  v37 = 0x800000021478EE30;
  v38 = 0xD00000000000001CLL;
  v39 = 0x800000021478A360;

  v17 = v11(&v50, &v49, &v36);
  if (v31)
  {

    v18 = v27;
    v19 = v29;
  }

  else
  {
    v18 = v27;
    if (v17)
    {

      v50 = a4;
      v51 = a5;
      v19 = v29;
      v49 = v29;
      v36 = 0xD000000000000022;
      v37 = 0x800000021478EE50;
      v38 = 0xD00000000000001CLL;
      v39 = 0x800000021478A360;

      v20 = v34(&v50, &v49, &v36);
      if (v20)
      {

        result = swift_bridgeObjectRelease_n();
        *a7 = a1;
        *(a7 + 8) = v11;
        *(a7 + 16) = v12;
        *(a7 + 24) = a2;
        *(a7 + 32) = a3;
        *(a7 + 40) = v30;
        *(a7 + 48) = v34;
        *(a7 + 56) = v35;
        *(a7 + 64) = a4;
        *(a7 + 72) = a5;
        *(a7 + 80) = v29;
        *(a7 + 81) = v33;
        return result;
      }

      sub_214031C4C();
      swift_allocError();
      *v23 = 0xD000000000000022;
      v23[1] = 0x800000021478EE50;
      v23[2] = 0xD00000000000001CLL;
      v23[3] = 0x800000021478A360;
      swift_willThrow();

      v13 = a3;
      v18 = a2;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v21 = 0xD00000000000001ELL;
      v21[1] = 0x800000021478EE30;
      v21[2] = 0xD00000000000001CLL;
      v21[3] = 0x800000021478A360;
      swift_willThrow();

      v19 = v29;
    }
  }

  v36 = a1;
  v37 = v11;
  v38 = v12;
  v39 = v18;
  v40 = v13;
  v41 = v30;
  *v42 = v55[0];
  *&v42[3] = *(v55 + 3);
  v43 = v34;
  v44 = v35;
  v45 = v26;
  v46 = v56;
  v47 = v19;
  v48 = v33;
  return sub_2142F6FC8(&v36);
}

unint64_t sub_21416A238()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x7069636974726170;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973736573;
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

uint64_t sub_21416A2C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436AD78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21416A2F0(uint64_t a1)
{
  v2 = sub_2142F701C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416A32C(uint64_t a1)
{
  v2 = sub_2142F701C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416A368@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A30, &qword_2146F4C88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F701C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v10 = v6;
  LOBYTE(v65) = 0;
  v57 = sub_2146DA1B8();
  LOBYTE(v65) = 1;
  v11 = sub_2146DA168();
  v14 = v13;
  *(&v56 + 1) = v11;
  LOBYTE(v65) = 2;
  v15 = sub_2146DA168();
  v17 = v16;
  v52 = v15;
  v78 = 3;
  sub_21406AF94();
  sub_2146DA1C8();
  v49 = v17;
  v46 = v79;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v50 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2140676DC;
  *(v19 + 24) = 0;
  *(inited + 32) = v19;
  sub_214042B80(inited, &v65);
  v55 = v65;
  *&v56 = v66;
  v43 = v67;
  v53 = v68;
  v54 = v69;
  v20 = swift_initStackObject();
  *(v20 + 16) = v50;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2140676DC;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_214042B80(v20, &v58);
  v51 = *(&v58 + 1);
  v47 = v58;
  *&v50 = *(&v59 + 1);
  v44 = v59;
  v48 = v60;
  *&v58 = *(&v56 + 1);
  *(&v58 + 1) = v14;
  LOBYTE(v64[0]) = v54;
  v65 = 0xD00000000000001ELL;
  v66 = 0x800000021478EE30;
  v45 = 0x800000021478EE30;
  v67 = 0xD00000000000001CLL;
  v68 = 0x800000021478A360;

  v22 = v55(&v58, v64, &v65);
  v23 = v45;
  v42 = 0x800000021478A360;
  v24 = v53;
  if (v22)
  {
    v25 = v42;
    v43 = 0;

    v64[0] = v52;
    v64[1] = v49;
    LOBYTE(v58) = v48;
    v65 = 0xD000000000000022;
    v66 = 0x800000021478EE50;
    v67 = 0xD00000000000001CLL;
    v68 = v25;

    v26 = v43;
    v27 = v47(v64, &v58, &v65);
    if (v26)
    {
    }

    else
    {
      if (v27)
      {

        (*(v10 + 8))(v8, v5);

        v33 = v51;

        v34 = *(&v56 + 1);
        v36 = v55;
        v35 = v56;
        *&v58 = v57;
        *(&v58 + 1) = v55;
        v59 = v56;
        *&v60 = v14;
        v37 = v54;
        BYTE8(v60) = v54;
        *&v61 = v47;
        *(&v61 + 1) = v33;
        *&v62 = v52;
        *(&v62 + 1) = v49;
        LOBYTE(v63) = v48;
        HIBYTE(v63) = v46;
        v38 = v61;
        *(a2 + 32) = v60;
        *(a2 + 48) = v38;
        *(a2 + 64) = v62;
        *(a2 + 80) = v63;
        v39 = v59;
        *a2 = v58;
        *(a2 + 16) = v39;
        sub_2142F7070(&v58, &v65);
        __swift_destroy_boxed_opaque_existential_1(v81);
        v65 = v57;
        v66 = v36;
        v67 = v35;
        v68 = v34;
        v69 = v14;
        v70 = v37;
        *v71 = *v80;
        *&v71[3] = *&v80[3];
        v72 = v47;
        v73 = v33;
        v74 = v52;
        v32 = v49;
        goto LABEL_9;
      }

      sub_214031C4C();
      swift_allocError();
      *v40 = 0xD000000000000022;
      v40[1] = 0x800000021478EE50;
      v41 = v42;
      v40[2] = 0xD00000000000001CLL;
      v40[3] = v41;
      swift_willThrow();
    }

    v30 = v14;
    v31 = v56;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001ELL;
    v28[1] = v23;
    v29 = v42;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v29;
    swift_willThrow();

    v30 = v24;
    v31 = v56;
    *(&v56 + 1) = v43;
  }

  (*(v10 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(v81);
  v65 = v57;
  v66 = v55;
  v67 = v31;
  v68 = *(&v56 + 1);
  v69 = v30;
  v70 = v54;
  *v71 = *v80;
  *&v71[3] = *&v80[3];
  v72 = v47;
  v73 = v51;
  v74 = v44;
  v32 = v50;
LABEL_9:
  v75 = v32;
  v76 = v48;
  v77 = v46;
  return sub_2142F6FC8(&v65);
}

uint64_t sub_21416AA94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A40, &qword_2146F4C90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 72);
  v17 = *(v1 + 64);
  v18 = v7;
  v16 = v9;
  v15 = *(v1 + 81);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F701C();
  sub_2146DAA28();
  v24 = 0;
  v10 = v19;
  sub_2146DA378();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v15;
  v13 = v16;
  if (v8 && (v23 = 1, , sub_2146DA328(), , v13))
  {
    v22 = 2;

    sub_2146DA328();

    v21 = v12;
    v20 = 3;
    sub_21406AFE8();
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

uint64_t sub_21416ADA4(uint64_t a1)
{
  v2 = sub_2142F70CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416ADE0(uint64_t a1)
{
  v2 = sub_2142F70CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416AE1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A48, &qword_2146F4C98);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F70CC();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v14;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
    v11 = v15;
    sub_2146DA1C8();
    (*(v7 + 8))(v9, v6);
    sub_214328704(v11, v10, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21416B028(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A58, &qword_2146F4CA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F70CC();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21416B1B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A58, &qword_2146F4CA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F70CC();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

__n128 sub_21416B330@<Q0>(void *__src@<X3>, uint64_t a2@<X0>, char a3@<W1>, char a4@<W2>, const void *a5@<X4>, const void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = (a8 + 1624);
  v15 = *(a7 + 32);
  v22 = a3 & 1;
  memcpy(&__srca[6], __src, 0x201uLL);
  memcpy(&v20[7], a5, 0x231uLL);
  memcpy(&v19[7], a6, 0x201uLL);
  v16 = v22;
  *a8 = a2;
  *(a8 + 8) = v16;
  *(a8 + 9) = a4;
  memcpy((a8 + 10), __srca, 0x207uLL);
  memcpy((a8 + 529), v20, 0x238uLL);
  memcpy((a8 + 1097), v19, 0x208uLL);
  result = *a7;
  v18 = *(a7 + 16);
  *v14 = *a7;
  v14[1] = v18;
  *(a8 + 1656) = v15;
  return result;
}

uint64_t sub_21416B42C()
{
  v1 = *v0;
  v2 = 0x726F70736E617274;
  v3 = 0x6552657469766E69;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F707365527369;
  if (v1 != 1)
  {
    v5 = 0x6552657469766E69;
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

uint64_t sub_21416B514@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436AEF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21416B53C(uint64_t a1)
{
  v2 = sub_2142F7120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416B578(uint64_t a1)
{
  v2 = sub_2142F7120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416B5B4(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A60, &qword_2146F4CA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = v2[3];
  v21 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v9);
  sub_2142F7120();
  sub_2146DAA08();
  if (!v1)
  {
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v30[0] = 0;
    sub_2142E11FC();
    v11 = v5;
    sub_2146DA1C8();
    v12 = v31[0];
    v13 = v31[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v30[0] = 1;
    sub_2142E1378();
    sub_2146DA1C8();
    v20 = v12;
    LODWORD(v12) = LOBYTE(v31[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A70, &qword_2146F4CB0);
    v33[543] = 2;
    sub_2142F7174();
    sub_2146DA1C8();
    HIDWORD(v19) = v12;
    memcpy(v32, v33, sizeof(v32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A88, &qword_2146F4CB8);
    v33[542] = 3;
    sub_2142F724C();
    sub_2146DA1C8();
    memcpy(v30, v31, sizeof(v30));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907AA0, &qword_2146F4CC0);
    v33[541] = 4;
    sub_2142F7324();
    sub_2146DA1C8();
    memcpy(v28, v29, sizeof(v28));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907AB8, &qword_2146F4CC8);
    v33[540] = 5;
    sub_2142F73FC();
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v11);
    v15 = v4;
    v16 = (v4 + 1624);
    v17 = v27;
    v33[536] = v13;
    memcpy(&v24[6], v32, 0x201uLL);
    memcpy(&v23[7], v30, 0x231uLL);
    memcpy(&v22[7], v28, 0x201uLL);
    *v15 = v20;
    *(v15 + 8) = v13;
    *(v15 + 9) = BYTE4(v19);
    memcpy((v15 + 10), v24, 0x207uLL);
    memcpy((v15 + 529), v23, 0x238uLL);
    memcpy((v15 + 1097), v22, 0x208uLL);
    v18 = v26;
    *v16 = v25;
    v16[1] = v18;
    *(v15 + 1656) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_21416BAC0(uint64_t a1)
{
  v21 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907AD0, &unk_2146F4CD0);
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v36 = *(v1 + 9);
  memcpy(v33, v1 + 2, 0x201uLL);
  memcpy(v34, v1 + 67, 0x231uLL);
  memcpy(v35, v1 + 138, 0x201uLL);
  v9 = v1[203];
  v18 = v1[204];
  v19 = v9;
  v10 = v1[205];
  v16 = v1[206];
  v17 = v10;
  HIDWORD(v15) = *(v1 + 1656);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2142F7120();
  sub_2146DAA28();
  v30[0] = v7;
  LOBYTE(v30[1]) = v8;
  v29[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  v11 = v21;
  sub_2146DA388();
  if (v11)
  {
    return (*(v20 + 8))(v6, v4);
  }

  v14 = v19;
  v13 = v20;
  LOBYTE(v30[0]) = v36;
  v29[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  memcpy(v32, v33, sizeof(v32));
  v40 = 2;
  sub_213FB2E54(v33, v30, &qword_27C907A70, &qword_2146F4CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A70, &qword_2146F4CB0);
  sub_2142F74D4();
  sub_2146DA388();
  memcpy(v31, v32, 0x201uLL);
  sub_213FB2DF4(v31, &qword_27C907A70, &qword_2146F4CB0);
  memcpy(v30, v34, 0x231uLL);
  v39 = 3;
  sub_213FB2E54(v34, v29, &qword_27C907A88, &qword_2146F4CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A88, &qword_2146F4CB8);
  sub_2142F75AC();
  sub_2146DA388();
  memcpy(v29, v30, 0x231uLL);
  sub_213FB2DF4(v29, &qword_27C907A88, &qword_2146F4CB8);
  memcpy(v28, v35, sizeof(v28));
  v38 = 4;
  sub_213FB2E54(v35, v27, &qword_27C907AA0, &qword_2146F4CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907AA0, &qword_2146F4CC0);
  sub_2142F7684();
  sub_2146DA388();
  memcpy(v27, v28, 0x201uLL);
  sub_213FB2DF4(v27, &qword_27C907AA0, &qword_2146F4CC0);
  v22 = v14;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = BYTE4(v15);
  v37 = 5;
  sub_21431326C(v14, v18, v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907AB8, &qword_2146F4CC8);
  sub_2142F775C();
  sub_2146DA388();
  sub_214313220(v22, v23, v24, v25);
  return (*(v13 + 8))(v6, v4);
}

uint64_t sub_21416C03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for LiteRelayTextMessage(0);
  result = sub_21408AC04(a3, a6 + *(v10 + 20), &qword_27C904DD0, &unk_214741A90);
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t sub_21416C0BC()
{
  v1 = 0x6B636162706174;
  if (*v0 != 1)
  {
    v1 = 0x6E65644974616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865546E69616C70;
  }
}

uint64_t sub_21416C130@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436B114(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21416C158(uint64_t a1)
{
  v2 = sub_2142F7834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416C194(uint64_t a1)
{
  v2 = sub_2142F7834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416C1D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B18, &qword_2146F4CE0);
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7834();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = v6;
    v22 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v27 = 0;
    sub_2142E12FC();
    v10 = v24;
    sub_2146DA1C8();
    v11 = v26;
    v20 = v25;
    LOBYTE(v25) = 1;
    sub_2142F7888();
    sub_2146DA1C8();
    v12 = v11;
    v27 = 2;
    sub_2146DA1C8();
    (*(v22 + 8))(v9, v10);
    v13 = v25;
    v14 = v26;
    v15 = type metadata accessor for LiteRelayTextMessage(0);
    v16 = v23;
    sub_21408AC04(v21, v23 + *(v15 + 20), &qword_27C904DD0, &unk_214741A90);
    *v16 = v20;
    v16[1] = v12;
    v17 = (v16 + *(v15 + 24));
    *v17 = v13;
    v17[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21416C4FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B30, &qword_2146F4CE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7834();
  sub_2146DAA28();
  v12 = *v3;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for LiteRelayTextMessage(0);
    LOBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
    sub_2142F793C();
    sub_2146DA388();
    v12 = *(v3 + *(v11 + 24));
    v13 = 2;
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21416C73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for LiteTextMessage(0);
  sub_21408AC04(a4, a6 + *(v10 + 24), &unk_27C904F30, &unk_2146EFA20);
  return sub_21408AC04(a5, a6 + *(v10 + 28), &qword_27C904DD0, &unk_214741A90);
}

unint64_t sub_21416C7D4()
{
  v1 = 0x7865546E69616C70;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x6B636162706174;
  }

  if (*v0)
  {
    v1 = 0x746365666665;
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

uint64_t sub_21416C85C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436B23C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21416C884(uint64_t a1)
{
  v2 = sub_2142F79F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416C8C0(uint64_t a1)
{
  v2 = sub_2142F79F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416C8FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B40, &qword_2146F4CF0);
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = &v25 - v10;
  v12 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F79F0();
  v13 = v31;
  sub_2146DAA08();
  if (!v13)
  {
    v28 = v3;
    v31 = v8;
    v14 = v9;
    v15 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v35 = 0;
    sub_2142E12FC();
    v16 = v30;
    sub_2146DA1C8();
    v17 = v33;
    v18 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B50, &qword_2146F4CF8);
    v35 = 1;
    sub_2142F7A44();
    sub_2146DA1C8();
    v26 = v17;
    v27 = v18;
    LOBYTE(v18) = v33;
    LOBYTE(v33) = 2;
    sub_2142EFBA8();
    sub_2146DA1C8();
    LOBYTE(v33) = 3;
    sub_2142F7888();
    v20 = v15;
    sub_2146DA1C8();
    v21 = v27;
    (*(v14 + 8))(v11, v16);
    v22 = type metadata accessor for LiteTextMessage(0);
    v23 = v18;
    v24 = v29;
    sub_21408AC04(v31, v29 + *(v22 + 24), &unk_27C904F30, &unk_2146EFA20);
    sub_21408AC04(v20, v24 + *(v22 + 28), &qword_27C904DD0, &unk_214741A90);
    *v24 = v26;
    *(v24 + 8) = v21;
    *(v24 + 16) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_21416CCF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B60, &qword_2146F4D00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F79F0();
  sub_2146DAA28();
  v12 = *v3;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 16);
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B50, &qword_2146F4CF8);
    sub_2142F7AC8();
    sub_2146DA388();
    type metadata accessor for LiteTextMessage(0);
    LOBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    sub_2142EFE18();
    sub_2146DA388();
    LOBYTE(v12) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
    sub_2142F793C();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LiteTapback.init(with:associatedMessageType:associatedMessageEmoji:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_2146D8B88();
  v26 = *(v10 - 8);
  v29 = a1;
  v27 = v10;
  (*(v26 + 16))(a5, a1);
  sub_214084004(&v31);
  v12 = v31;
  v11 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = type metadata accessor for LiteTapback(0);
  *(a5 + *(v16 + 20)) = v9;
  v25 = a5;
  v17 = a5 + *(v16 + 24);
  *v17 = v12;
  *(v17 + 8) = v11;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = v15;
  v30[0] = a3;
  v30[1] = a4;
  v36 = v15;
  v37 = v15;
  v31 = 0xD000000000000022;
  v32 = 0x800000021478EE80;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  sub_213FDC9D0(v13, v14);
  v18 = v12(v30, &v37, &v31);
  if (v28)
  {
  }

  else
  {
    if (v18)
    {
      sub_213FDC6D0(v13, v14);

      (*(v26 + 8))(v29, v27);
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);

      result = sub_213FDC6D0(v19, v20);
      *v17 = v12;
      *(v17 + 8) = v11;
      *(v17 + 16) = a3;
      *(v17 + 24) = a4;
      *(v17 + 32) = v36;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000022;
    v22[1] = 0x800000021478EE80;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
  }

  (*(v26 + 8))(v29, v27);
  v23 = *(v17 + 16);
  v24 = *(v17 + 24);

  sub_213FDC6D0(v23, v24);
  *v17 = v12;
  *(v17 + 8) = v11;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = v36;
  return sub_21432887C(v25, type metadata accessor for LiteTapback);
}

unint64_t sub_21416D24C()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_21416D29C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436B3AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21416D2C4(uint64_t a1)
{
  v2 = sub_2142F7B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416D300(uint64_t a1)
{
  v2 = sub_2142F7B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiteTapback.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_2146D8B88();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B70, &qword_2146F4D08);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for LiteTapback(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F7B4C();
  v13 = v48;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v48 = v9;
  v14 = v11;
  v15 = v47;
  LOBYTE(v51) = 0;
  sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_2146DA1C8();
  v16 = v8;
  v44 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B80, &qword_2146F4D10);
  LOBYTE(v50[0]) = 1;
  sub_2142F7BA0();
  sub_2146DA1C8();
  v17 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v50[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v41 = v51;
  v42 = v52;
  (*(v46 + 16))(v14, v44, v3);
  sub_214084004(&v51);
  v19 = v51;
  v20 = v52;
  v43 = v51;
  v21 = v17;
  v23 = v53;
  v22 = v54;
  v24 = v48;
  *(v14 + *(v48 + 20)) = v21;
  v25 = v55;
  v26 = *(v24 + 24);
  v48 = v14;
  v27 = v14 + v26;
  *v27 = v19;
  *(v27 + 8) = v20;
  *(v27 + 16) = v23;
  *(v27 + 24) = v22;
  *(v27 + 32) = v25;
  v50[0] = v41;
  v50[1] = v42;
  v56 = v25;
  v57 = v25;
  v51 = 0xD000000000000022;
  v52 = 0x800000021478EE80;
  v38 = 0x800000021478EE80;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v39 = v22;
  v40 = v23;
  sub_213FDC9D0(v23, v22);
  v28 = v20;
  v29 = v43(v50, &v57, &v51);
  v30 = v38;
  if (v29)
  {
    sub_213FDC6D0(v40, v39);

    (*(v46 + 8))(v44, v3);
    (*(v15 + 8))(v16, v6);
    v31 = *(v27 + 16);
    v32 = *(v27 + 24);

    sub_213FDC6D0(v31, v32);
    *v27 = v43;
    *(v27 + 8) = v28;
    v33 = v42;
    *(v27 + 16) = v41;
    *(v27 + 24) = v33;
    *(v27 + 32) = v56;
    sub_214328704(v48, v45, type metadata accessor for LiteTapback);
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  sub_214031C4C();
  swift_allocError();
  *v34 = 0xD000000000000022;
  v34[1] = v30;
  v34[2] = 0xD00000000000001CLL;
  v34[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v46 + 8))(v44, v3);
  (*(v15 + 8))(v16, v6);
  v35 = *(v27 + 16);
  v36 = *(v27 + 24);

  sub_213FDC6D0(v35, v36);
  *v27 = v43;
  *(v27 + 8) = v28;
  v37 = v39;
  *(v27 + 16) = v40;
  *(v27 + 24) = v37;
  *(v27 + 32) = v56;
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_21432887C(v48, type metadata accessor for LiteTapback);
}

uint64_t LiteTapback.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B90, &qword_2146F4D18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7B4C();
  sub_2146DAA28();
  LOBYTE(v14) = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for LiteTapback(0);
  LOBYTE(v14) = *(v3 + *(v9 + 20));
  v16 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B80, &qword_2146F4D10);
  sub_2142F7C24();
  sub_2146DA388();
  v10 = v3 + *(v9 + 24);
  v11 = *(v10 + 24);
  if (v11 != 1)
  {
    v14 = *(v10 + 16);
    v15 = v11;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21416DBDC(uint64_t a1)
{
  v2 = sub_2142F7CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416DC18(uint64_t a1)
{
  v2 = sub_2142F7CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416DD0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143287C0(a1, a3, type metadata accessor for Metadata);
  sub_214493FFC(&v15);
  v6 = v15;
  v5 = v16;
  v7 = v17;
  v8 = v18;
  v9 = a3 + *(type metadata accessor for MarkAsReviewedCommand(0) + 20);
  *v9 = v6;
  *(v9 + 8) = v5;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v20 = a2;
  v19 = v8;
  v15 = 0xD000000000000027;
  v16 = 0x800000021478EEB0;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  v10 = v6(&v20, &v19, &v15);
  if (v13)
  {
  }

  else
  {
    if (v10)
    {

      sub_21432887C(a1, type metadata accessor for Metadata);

      *v9 = v6;
      *(v9 + 8) = v5;
      *(v9 + 16) = a2;
      *(v9 + 24) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000027;
    v12[1] = 0x800000021478EEB0;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(a1, type metadata accessor for Metadata);

  *v9 = v6;
  *(v9 + 8) = v5;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  return sub_21432887C(a3, type metadata accessor for MarkAsReviewedCommand);
}

uint64_t sub_21416DF30()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_21416DF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002147950E0 == a2)
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

uint64_t sub_21416E054(uint64_t a1)
{
  v2 = sub_2142F7CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416E090(uint64_t a1)
{
  v2 = sub_2142F7CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416E0CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BB8, &qword_2146F4D30);
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for MarkAsReviewedCommand(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F7CFC();
  v13 = v32;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  LOBYTE(v34) = 0;
  sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v39) = 1;
  sub_2142E15CC();
  sub_2146DA1C8();
  v15 = v34;
  v32 = v5;
  sub_2143287C0(v5, v11, type metadata accessor for Metadata);
  sub_214493FFC(&v34);
  v16 = v34;
  v17 = v35;
  v18 = v36;
  v19 = v37;
  v20 = *(v9 + 20);
  v28 = v11;
  v21 = &v11[v20];
  *v21 = v34;
  *(v21 + 1) = v17;
  *(v21 + 2) = v18;
  v21[24] = v19;
  v39 = v15;
  v27 = v19;
  v38 = v19;
  v34 = 0xD000000000000027;
  v35 = 0x800000021478EEB0;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;
  v26 = v18;

  v29 = v16;
  v22 = v16(&v39, &v38, &v34);
  if (v22)
  {

    sub_21432887C(v32, type metadata accessor for Metadata);
    (*(v31 + 8))(v8, v6);

    v23 = v28;
    *v21 = v29;
    *(v21 + 1) = v17;
    *(v21 + 2) = v15;
    v21[24] = v27;
    sub_214328704(v23, v30, type metadata accessor for MarkAsReviewedCommand);
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  sub_214031C4C();
  swift_allocError();
  *v24 = 0xD000000000000027;
  v24[1] = 0x800000021478EEB0;
  v24[2] = 0xD00000000000001CLL;
  v24[3] = 0x800000021478A360;
  swift_willThrow();

  sub_21432887C(v32, type metadata accessor for Metadata);
  (*(v31 + 8))(v8, v6);

  *v21 = v29;
  *(v21 + 1) = v17;
  *(v21 + 2) = v26;
  v21[24] = v27;
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_21432887C(v28, type metadata accessor for MarkAsReviewedCommand);
}

uint64_t sub_21416E5EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BC8, &qword_2146F4D38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7CFC();
  sub_2146DAA28();
  v13 = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = *(v3 + *(type metadata accessor for MarkAsReviewedCommand(0) + 20) + 16);
  if (v9)
  {
    v12 = v9;
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21416E84C(uint64_t a1)
{
  v2 = sub_2142F7D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416E888(uint64_t a1)
{
  v2 = sub_2142F7D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416E8C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BD0, &qword_2146F4D40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7D50();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v14;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
    v11 = v15;
    sub_2146DA1C8();
    (*(v7 + 8))(v9, v6);
    sub_214328704(v11, v10, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21416EAD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BE0, &qword_2146F4D48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7D50();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21416EC60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BE0, &qword_2146F4D48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7D50();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

__n128 sub_21416EDD8@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a5[1].n128_u64[0];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  result = *a5;
  a6[2] = *a5;
  a6[3].n128_u64[0] = v6;
  return result;
}

unint64_t sub_21416EDF4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865546E69616C70;
  }
}

uint64_t sub_21416EE60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436B4D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21416EE88(uint64_t a1)
{
  v2 = sub_2142F7DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416EEC4(uint64_t a1)
{
  v2 = sub_2142F7DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416EF00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BE8, &qword_2146F4D50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7DA4();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v20 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v9 = *(&v18 + 1);
    v16 = v18;
    v20 = 1;
    sub_2146DA1C8();
    v10 = v9;
    v11 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    v20 = 2;
    sub_2142E4F74();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v13 = v19;
    v14 = v18;
    v15 = v17;
    *v17 = v16;
    v15[1] = v10;
    *(v15 + 1) = v11;
    *(v15 + 2) = v14;
    v15[6] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21416F190(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BF8, &qword_2146F4D58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v19 = v1[3];
  v20 = v9;
  v10 = v1[4];
  v17 = v1[5];
  v18 = v10;
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7DA4();

  sub_2146DAA28();
  v22 = v7;
  v23 = v8;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v11 = v21;
  sub_2146DA388();

  if (!v11)
  {
    v13 = v17;
    v12 = v18;
    v22 = v20;
    v23 = v19;
    v25 = 1;
    sub_2146DA388();
    v22 = v12;
    v23 = v13;
    v24 = v16;
    v25 = 2;
    sub_214031CA0(v12, v13, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    sub_2142E5278();
    sub_2146DA388();
    sub_214031CE0(v22, v23, v24);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BIAPayload.init(with:icon:hero:title:subtitle:userInteractionParadigm:id:displayContent:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  v103 = a2;
  sub_213FB2E54(a3, a9 + 40, &qword_27C907C00, &unk_2146F4D60);
  v83 = a4;
  sub_213FB2E54(a4, a9 + 480, &qword_27C907C00, &unk_2146F4D60);
  v14 = type metadata accessor for BIAPayload(0);
  sub_213FB2E54(a10, a9 + v14[9], &qword_27C907C08, &qword_21473BF00);
  sub_214409FCC(&v99);
  v81 = v100;
  v77 = v101;
  v76 = v102;
  sub_21440A3C0(&v95);
  v15 = v96;
  v16 = v97;
  v17 = v98;
  sub_21440A7B4(&v91);
  v18 = v92;
  v19 = v93;
  v20 = v94;
  sub_21440ABA8(v89);
  v21 = v90;
  *a9 = v99;
  *(a9 + 16) = v81;
  *(a9 + 24) = v77;
  *(a9 + 32) = v76;
  *(a9 + 920) = v95;
  *(a9 + 936) = v15;
  *(a9 + 944) = v16;
  *(a9 + 952) = v17;
  *(a9 + 960) = v91;
  *(a9 + 976) = v18;
  *(a9 + 984) = v19;
  *(a9 + 992) = v20;
  v22 = a9 + v14[10];
  v23 = v89[1];
  *v22 = v89[0];
  *(v22 + 16) = v23;
  *(v22 + 32) = v21;
  v24 = a9 + v14[11];
  v25 = *(a12 + 48);
  *(v24 + 32) = *(a12 + 32);
  *(v24 + 48) = v25;
  *(v24 + 64) = *(a12 + 64);
  *(v24 + 80) = *(a12 + 80);
  v26 = *(a12 + 16);
  *v24 = *a12;
  *(v24 + 16) = v26;
  v28 = *a9;
  v27 = *(a9 + 8);
  v29 = *(a9 + 16);
  v30 = *(a9 + 24);
  LOBYTE(v24) = *(a9 + 32);
  *&v95 = a1;
  *(&v95 + 1) = v103;
  v82 = v24;
  LOBYTE(v91) = v24;
  *&v99 = 0xD000000000000016;
  *(&v99 + 1) = 0x800000021478EEE0;
  v100 = 0xD00000000000001CLL;
  v101 = 0x800000021478A360;

  v78 = v29;
  sub_213FDC9D0(v29, v30);
  v31 = v79;
  v80 = v28;
  v32 = v28(&v95, &v91, &v99);
  if (v31)
  {

LABEL_6:

    sub_213FB2DF4(a10, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v83, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(a3, &qword_27C907C00, &unk_2146F4D60);
    v43 = *(a9 + 16);
    v44 = *(a9 + 24);

    sub_213FDC6D0(v43, v44);
    *a9 = v28;
    *(a9 + 8) = v27;
    *(a9 + 16) = v78;
    *(a9 + 24) = v30;
    *(a9 + 32) = v82;
    return sub_21432887C(a9, type metadata accessor for BIAPayload);
  }

  v73 = v22;
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000016;
    v42[1] = 0x800000021478EEE0;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v78, v30);

  v33 = *(a9 + 16);
  v34 = *(a9 + 24);

  sub_213FDC6D0(v33, v34);
  *a9 = v80;
  *(a9 + 8) = v27;
  v35 = v103;
  *(a9 + 16) = a1;
  *(a9 + 24) = v35;
  *(a9 + 32) = v82;
  v36 = *(a9 + 920);
  v37 = *(a9 + 928);
  v38 = *(a9 + 936);
  v39 = *(a9 + 944);
  v40 = *(a9 + 952);
  *&v95 = a5;
  *(&v95 + 1) = a6;
  LOBYTE(v91) = v40;
  *&v99 = 0xD000000000000010;
  *(&v99 + 1) = 0x800000021478EF00;
  v100 = 0xD00000000000001CLL;
  v101 = 0x800000021478A360;

  sub_213FDC9D0(v38, v39);
  v103 = v36;
  v41 = v36(&v95, &v91, &v99);
  if ((v41 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v54 = 0xD000000000000010;
    v54[1] = 0x800000021478EF00;
    v54[2] = 0xD00000000000001CLL;
    v54[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v83, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(a3, &qword_27C907C00, &unk_2146F4D60);
    v55 = *(a9 + 936);
    v56 = *(a9 + 944);

    sub_213FDC6D0(v55, v56);
    *(a9 + 920) = v103;
    *(a9 + 928) = v37;
    *(a9 + 936) = v38;
    *(a9 + 944) = v39;
    *(a9 + 952) = v40;
    return sub_21432887C(a9, type metadata accessor for BIAPayload);
  }

  sub_213FDC6D0(v38, v39);

  v46 = *(a9 + 936);
  v47 = *(a9 + 944);

  sub_213FDC6D0(v46, v47);
  *(a9 + 920) = v103;
  *(a9 + 928) = v37;
  *(a9 + 936) = a5;
  *(a9 + 944) = a6;
  *(a9 + 952) = v40;
  v48 = *(a9 + 960);
  v49 = *(a9 + 968);
  v50 = *(a9 + 976);
  v51 = *(a9 + 984);
  v52 = *(a9 + 992);
  *&v95 = a7;
  *(&v95 + 1) = a8;
  v88 = v52;
  LOBYTE(v91) = v52;
  *&v99 = 0xD000000000000013;
  *(&v99 + 1) = 0x800000021478EF20;
  v100 = 0xD00000000000001CLL;
  v101 = 0x800000021478A360;

  sub_213FDC9D0(v50, v51);
  v103 = v48;
  v53 = v48(&v95, &v91, &v99);
  if ((v53 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v65 = 0xD000000000000013;
    v65[1] = 0x800000021478EF20;
    v65[2] = 0xD00000000000001CLL;
    v65[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v83, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(a3, &qword_27C907C00, &unk_2146F4D60);
    v66 = *(a9 + 976);
    v67 = *(a9 + 984);

    sub_213FDC6D0(v66, v67);
    *(a9 + 960) = v103;
    *(a9 + 968) = v49;
    *(a9 + 976) = v50;
    *(a9 + 984) = v51;
    *(a9 + 992) = v88;
    return sub_21432887C(a9, type metadata accessor for BIAPayload);
  }

  sub_213FDC6D0(v50, v51);

  v57 = *(a9 + 976);
  v58 = *(a9 + 984);

  sub_213FDC6D0(v57, v58);
  *(a9 + 960) = v103;
  *(a9 + 968) = v49;
  *(a9 + 976) = a7;
  *(a9 + 984) = a8;
  *(a9 + 992) = v88;
  v60 = *v73;
  v59 = *(v73 + 8);
  v61 = *(v73 + 16);
  v62 = *(v73 + 24);
  v63 = *(v73 + 32);
  v95 = a11;
  LODWORD(v103) = v63;
  LOBYTE(v91) = v63;
  strcpy(&v99, "BIAPayload.id");
  HIWORD(v99) = -4864;
  v100 = 0xD00000000000001CLL;
  v101 = 0x800000021478A360;

  sub_213FDC9D0(v61, v62);
  v64 = v60(&v95, &v91, &v99);
  if ((v64 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    strcpy(v70, "BIAPayload.id");
    *(v70 + 7) = -4864;
    *(v70 + 2) = 0xD00000000000001CLL;
    *(v70 + 3) = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v83, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(a3, &qword_27C907C00, &unk_2146F4D60);
    v71 = *(v73 + 16);
    v72 = *(v73 + 24);

    sub_213FDC6D0(v71, v72);
    *v73 = v60;
    *(v73 + 8) = v59;
    *(v73 + 16) = v61;
    *(v73 + 24) = v62;
    *(v73 + 32) = v103;
    return sub_21432887C(a9, type metadata accessor for BIAPayload);
  }

  sub_213FDC6D0(v61, v62);

  sub_213FB2DF4(a10, &qword_27C907C08, &qword_21473BF00);
  sub_213FB2DF4(v83, &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2DF4(a3, &qword_27C907C00, &unk_2146F4D60);
  v68 = *(v73 + 16);
  v69 = *(v73 + 24);

  result = sub_213FDC6D0(v68, v69);
  *v73 = v60;
  *(v73 + 8) = v59;
  *(v73 + 16) = a11;
  *(v73 + 32) = v103;
  return result;
}

uint64_t sub_21416FD98()
{
  v1 = *v0;
  v2 = 0x636E657265666572;
  v3 = 25705;
  if (v1 != 6)
  {
    v3 = 0x4379616C70736964;
  }

  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1869768040;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 1852793705;
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

uint64_t sub_21416FE8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436B5FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21416FEB4(uint64_t a1)
{
  v2 = sub_2142F7DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416FEF0(uint64_t a1)
{
  v2 = sub_2142F7DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BIAPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
  MEMORY[0x28223BE20](v123);
  v4 = &v107 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C10, &qword_2146F4D70);
  v124 = *(v5 - 8);
  v125 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v107 - v6;
  v8 = type metadata accessor for BIAPayload(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7DF8();
  v11 = v155;
  sub_2146DAA08();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v120 = v8;
  v155 = v4;
  v121 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v153[0] = 0;
  v12 = sub_2142E12FC();
  sub_2146DA1C8();
  v118 = v12;
  v119 = a1;
  v117 = v154[0];
  v13 = v154[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C00, &unk_2146F4D60);
  v153[0] = 1;
  sub_2142F7E4C();
  v14 = v7;
  sub_2146DA1C8();
  v116 = v13;
  LOBYTE(v147) = 2;
  sub_2146DA1C8();
  LOBYTE(v140) = 3;
  sub_2146DA1C8();
  v16 = v147;
  LOBYTE(v140) = 4;
  sub_2146DA1C8();
  v115 = v16;
  v17 = v147;
  LOBYTE(v147) = 5;
  sub_2142F7F24();
  v18 = v155;
  sub_2146DA1C8();
  LOBYTE(v140) = 6;
  sub_2146DA1C8();
  v118 = v17;
  v19 = *(&v147 + 1);
  v114 = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C40, &qword_2146F4D78);
  v146 = 7;
  sub_2142F7FD8();
  sub_2146DA1C8();
  v123 = 0;
  v112 = v19;
  v113 = *(&v17 + 1);
  v111 = v14;
  v142 = v149;
  v143 = v150;
  v144 = v151;
  v145 = v152;
  v140 = v147;
  v141 = v148;
  v20 = v121;
  sub_213FB2E54(v154, (v121 + 5), &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2E54(v153, (v20 + 60), &qword_27C907C00, &unk_2146F4D60);
  v21 = v120;
  sub_213FB2E54(v18, v20 + v120[9], &qword_27C907C08, &qword_21473BF00);
  sub_214409FCC(&v136);
  v22 = v137;
  v110 = v138;
  LODWORD(v109) = v139;
  sub_21440A3C0(&v132);
  v23 = v133;
  v24 = v134;
  LODWORD(v108) = v135;
  sub_21440A7B4(&v128);
  v25 = v129;
  v26 = v130;
  v27 = v131;
  sub_21440ABA8(v126);
  v28 = v127;
  *v20 = v136;
  v29 = v110;
  v20[2] = v22;
  v20[3] = v29;
  *(v20 + 32) = v109;
  *(v20 + 115) = v132;
  v20[117] = v23;
  v20[118] = v24;
  *(v20 + 952) = v108;
  *(v20 + 60) = v128;
  v20[122] = v25;
  v20[123] = v26;
  *(v20 + 992) = v27;
  v30 = v20 + v21[10];
  v31 = v126[1];
  *v30 = v126[0];
  *(v30 + 1) = v31;
  v109 = v30;
  v30[32] = v28;
  v32 = v20 + v21[11];
  v33 = v143;
  *(v32 + 2) = v142;
  *(v32 + 3) = v33;
  *(v32 + 4) = v144;
  v32[80] = v145;
  v34 = v141;
  *v32 = v140;
  *(v32 + 1) = v34;
  v36 = *v20;
  v35 = v20[1];
  v37 = v20[2];
  v38 = v20[3];
  LODWORD(v30) = *(v20 + 32);
  *&v132 = v117;
  *(&v132 + 1) = v116;
  LODWORD(v120) = v30;
  LOBYTE(v128) = v30;
  *&v136 = 0xD000000000000016;
  *(&v136 + 1) = 0x800000021478EEE0;
  v137 = 0xD00000000000001CLL;
  v138 = 0x800000021478A360;

  v39 = v37;
  sub_213FDC9D0(v37, v38);
  v40 = v123;
  v110 = v36;
  v41 = v36(&v132, &v128, &v136);
  v123 = v40;
  if (v40)
  {

LABEL_10:

    sub_213FB2DF4(v155, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v153, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v154, &qword_27C907C00, &unk_2146F4D60);
    (*(v124 + 8))(v111, v125);
    v58 = v121;
    v59 = v121[2];
    v60 = v121[3];

    sub_213FDC6D0(v59, v60);
    *v58 = v110;
    v58[1] = v35;
    v61 = v58;
    v58[2] = v39;
    v58[3] = v38;
    *(v58 + 32) = v120;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v119);
    return sub_21432887C(v61, type metadata accessor for BIAPayload);
  }

  v108 = 0x800000021478A360;
  if ((v41 & 1) == 0)
  {
    sub_214031C4C();
    v56 = swift_allocError();
    *v57 = 0xD000000000000016;
    v57[1] = 0x800000021478EEE0;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = v108;
    v123 = v56;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FDC6D0(v39, v38);
  v42 = v108;

  v43 = v121;
  v44 = v121[2];
  v45 = v121[3];

  sub_213FDC6D0(v44, v45);
  *v43 = v110;
  v43[1] = v35;
  v46 = v116;
  v43[2] = v117;
  v43[3] = v46;
  *(v43 + 32) = v120;
  v47 = v43[115];
  v48 = v43[116];
  v49 = v43[117];
  v50 = v43[118];
  v51 = *(v43 + 952);
  v132 = v115;
  v52 = v51;
  LOBYTE(v128) = v51;
  *&v136 = 0xD000000000000010;
  *(&v136 + 1) = 0x800000021478EF00;
  v137 = 0xD00000000000001CLL;
  v138 = v42;

  v53 = v50;
  sub_213FDC9D0(v49, v50);
  v54 = v123;
  v55 = v47(&v132, &v128, &v136);
  v123 = v54;
  if (v54)
  {

LABEL_16:

    sub_213FB2DF4(v155, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v153, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v154, &qword_27C907C00, &unk_2146F4D60);
    (*(v124 + 8))(v111, v125);
    v78 = v121;
    v79 = v121[117];
    v80 = v121[118];

    sub_213FDC6D0(v79, v80);
    v78[115] = v47;
    v78[116] = v48;
    v61 = v78;
    v78[117] = v49;
    v78[118] = v53;
    *(v78 + 952) = v52;
    goto LABEL_11;
  }

  if ((v55 & 1) == 0)
  {
    sub_214031C4C();
    v75 = swift_allocError();
    *v76 = 0xD000000000000010;
    v76[1] = 0x800000021478EF00;
    v77 = v108;
    v76[2] = 0xD00000000000001CLL;
    v76[3] = v77;
    v123 = v75;
    swift_willThrow();
    goto LABEL_16;
  }

  sub_213FDC6D0(v49, v53);
  v62 = v108;

  v63 = v121;
  v64 = v121[117];
  v65 = v121[118];

  sub_213FDC6D0(v64, v65);
  v63[115] = v47;
  v63[116] = v48;
  v66 = *(&v115 + 1);
  v63[117] = v115;
  v63[118] = v66;
  *(v63 + 952) = v52;
  v67 = v63[120];
  v68 = v63[121];
  v69 = v63[122];
  v70 = v63[123];
  v71 = *(v63 + 992);
  *&v132 = v118;
  *(&v132 + 1) = v113;
  LODWORD(v120) = v71;
  LOBYTE(v128) = v71;
  *&v136 = 0xD000000000000013;
  *(&v136 + 1) = 0x800000021478EF20;
  v137 = 0xD00000000000001CLL;
  v138 = v62;

  v72 = v70;
  sub_213FDC9D0(v69, v70);
  v73 = v123;
  v74 = v67(&v132, &v128, &v136);
  v123 = v73;
  if (v73)
  {

LABEL_21:

    sub_213FB2DF4(v155, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v153, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v154, &qword_27C907C00, &unk_2146F4D60);
    (*(v124 + 8))(v111, v125);
    v94 = v121;
    v95 = v121[122];
    v96 = v121[123];

    sub_213FDC6D0(v95, v96);
    v94[120] = v67;
    v94[121] = v68;
    v61 = v94;
    v94[122] = v69;
    v94[123] = v72;
    *(v94 + 992) = v120;
    goto LABEL_11;
  }

  if ((v74 & 1) == 0)
  {
    sub_214031C4C();
    v92 = swift_allocError();
    *v93 = 0xD000000000000013;
    v93[1] = 0x800000021478EF20;
    v93[2] = 0xD00000000000001CLL;
    v93[3] = v108;
    v123 = v92;
    swift_willThrow();
    goto LABEL_21;
  }

  sub_213FDC6D0(v69, v72);
  v81 = v108;

  v82 = v121;
  v83 = v121[122];
  v84 = v121[123];

  sub_213FDC6D0(v83, v84);
  v82[120] = v67;
  v82[121] = v68;
  v82[122] = v118;
  v82[123] = v113;
  *(v82 + 992) = v120;
  v86 = *v109;
  v85 = *(v109 + 1);
  v87 = *(v109 + 2);
  v88 = *(v109 + 3);
  v89 = v109[32];
  *&v132 = v114;
  *(&v132 + 1) = v112;
  LODWORD(v118) = v89;
  LOBYTE(v128) = v89;
  strcpy(&v136, "BIAPayload.id");
  HIWORD(v136) = -4864;
  v137 = 0xD00000000000001CLL;
  v138 = v81;

  sub_213FDC9D0(v87, v88);
  v90 = v123;
  v120 = v86;
  v91 = (v86)(&v132, &v128, &v136);
  v123 = v90;
  if (v90)
  {

LABEL_25:

    sub_213FB2DF4(v155, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v153, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v154, &qword_27C907C00, &unk_2146F4D60);
    (*(v124 + 8))(v111, v125);
    v104 = v109;
    v105 = *(v109 + 2);
    v106 = *(v109 + 3);

    sub_213FDC6D0(v105, v106);
    *v104 = v120;
    *(v104 + 1) = v85;
    *(v104 + 2) = v87;
    *(v104 + 3) = v88;
    v104[32] = v118;
    v61 = v121;
    goto LABEL_11;
  }

  if ((v91 & 1) == 0)
  {
    sub_214031C4C();
    v102 = swift_allocError();
    strcpy(v103, "BIAPayload.id");
    *(v103 + 7) = -4864;
    *(v103 + 2) = 0xD00000000000001CLL;
    *(v103 + 3) = v108;
    v123 = v102;
    swift_willThrow();
    goto LABEL_25;
  }

  sub_213FDC6D0(v87, v88);

  sub_213FB2DF4(v155, &qword_27C907C08, &qword_21473BF00);
  sub_213FB2DF4(v153, &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2DF4(v154, &qword_27C907C00, &unk_2146F4D60);
  (*(v124 + 8))(v111, v125);
  v97 = v109;
  v98 = *(v109 + 2);
  v99 = *(v109 + 3);

  sub_213FDC6D0(v98, v99);
  v100 = v121;
  *v97 = v120;
  *(v97 + 1) = v85;
  v101 = v112;
  *(v97 + 2) = v114;
  *(v97 + 3) = v101;
  v97[32] = v118;
  sub_214328704(v100, v122, type metadata accessor for BIAPayload);
  return __swift_destroy_boxed_opaque_existential_1(v119);
}

uint64_t BIAPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C58, &unk_2146F4D80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7DF8();
  sub_2146DAA28();
  v9 = v3[3];
  if (v9 == 1)
  {
    goto LABEL_8;
  }

  *&v33[0] = v3[2];
  *(&v33[0] + 1) = v9;
  LOBYTE(v27) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v23 = v10;
  v24 = v6;
  LOBYTE(v33[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C00, &unk_2146F4D60);
  sub_2142F80B0();
  sub_2146DA388();
  LOBYTE(v33[0]) = 2;
  sub_2146DA388();
  v12 = v3[118];
  if (v12 == 1 || (*&v33[0] = v3[117], *(&v33[0] + 1) = v12, LOBYTE(v27) = 3, sub_2146DA388(), v13 = v3[123], v13 == 1) || (*&v33[0] = v3[122], *(&v33[0] + 1) = v13, LOBYTE(v27) = 4, sub_2146DA388(), v14 = type metadata accessor for BIAPayload(0), LOBYTE(v33[0]) = 5, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00), sub_2142F8188(), sub_2146DA388(), v15 = v3 + *(v14 + 40), v16 = *(v15 + 3), v16 == 1))
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v38 = *(v15 + 2);
    v39 = v16;
    v41 = 6;
    sub_2146DA388();
    v17 = v3 + *(v14 + 44);
    v18 = *(v17 + 3);
    v19 = *(v17 + 1);
    v34 = *(v17 + 2);
    v35 = v18;
    v20 = *(v17 + 3);
    v36 = *(v17 + 4);
    v21 = *(v17 + 1);
    v33[0] = *v17;
    v33[1] = v21;
    v29 = v34;
    v30 = v20;
    v31 = *(v17 + 4);
    v37 = v17[80];
    v32 = v17[80];
    v27 = v33[0];
    v28 = v19;
    v40 = 7;
    sub_213FB2E54(v33, v25, &qword_27C907C40, &qword_2146F4D78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C40, &qword_2146F4D78);
    sub_2142F823C();
    sub_2146DA388();
    v22 = (v24 + 8);
    v25[2] = v29;
    v25[3] = v30;
    v25[4] = v31;
    v26 = v32;
    v25[0] = v27;
    v25[1] = v28;
    sub_213FB2DF4(v25, &qword_27C907C40, &qword_2146F4D78);
    return (*v22)(v8, v5);
  }

  return result;
}

uint64_t sub_21417140C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v4);
  v6 = (&v22[-1] - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v8 = sub_214069764(&unk_282654B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_21409A858;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042F80(inited, a2);
  sub_213FB2E54(a2, v6, &unk_27C9131D0, &qword_2146EAA70);
  v11 = *v6;
  v23 = *(v6 + *(v4 + 32));
  v22[0] = 0x752E4C5255414942;
  v22[1] = 0xEA00000000006C72;
  v22[2] = 0xD00000000000001CLL;
  v22[3] = 0x800000021478A360;
  v12 = v21;
  v13 = v11(a1, &v23, v22);
  if (v12)
  {
    v14 = sub_2146D8958();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  else
  {
    if (v13)
    {

      v15 = *(v4 + 28);
      sub_213FB2DF4(v6 + v15, &unk_27C9131A0, &unk_2146E9D10);
      v16 = sub_2146D8958();
      v17 = *(v16 - 8);
      (*(v17 + 32))(v6 + v15, a1, v16);
      (*(v17 + 56))(v6 + v15, 0, 1, v16);
      return sub_21402EDB8(v6, a2, &unk_27C9131D0, &qword_2146EAA70);
    }

    sub_214031C4C();
    swift_allocError();
    *v19 = 0x752E4C5255414942;
    v19[1] = 0xEA00000000006C72;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();
    v20 = sub_2146D8958();
    (*(*(v20 - 8) + 8))(a1, v20);
  }

  sub_21402EDB8(v6, a2, &unk_27C9131D0, &qword_2146EAA70);
  return sub_21432887C(a2, type metadata accessor for BIAURL);
}

uint64_t sub_214171790(uint64_t a1)
{
  v2 = sub_2142F8314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141717CC(uint64_t a1)
{
  v2 = sub_2142F8314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214171808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v38);
  v4 = &v32 - v3;
  v5 = sub_2146D8958();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C90, &qword_2146F4D90);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for BIAURL(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2142F8314();
  v15 = v41;
  sub_2146DAA08();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v36 = v13;
  v41 = v4;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_2146DA1C8();
  v16 = v8;
  v34 = v5;
  v35 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v19 = sub_214069764(&unk_282654448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v20 + 16) = sub_21438F524;
  *(v20 + 24) = v21;
  *(inited + 32) = v20;
  v22 = v36;
  sub_214042F80(inited, v36);
  v23 = v41;
  sub_213FB2E54(v22, v41, &unk_27C9131D0, &qword_2146EAA70);
  v24 = v38;
  v25 = *v23;
  v44 = *(v23 + *(v38 + 32));
  v43[0] = 0x752E4C5255414942;
  v43[1] = 0xEA00000000006C72;
  v43[2] = 0xD00000000000001CLL;
  v43[3] = 0x800000021478A360;
  v26 = v25(v7, &v44, v43);
  v33 = 0x800000021478A360;
  v27 = v39;
  v28 = v40;
  if (v26)
  {

    (*(v28 + 8))(v35, v16);
    v29 = *(v24 + 28);
    sub_213FB2DF4(v23 + v29, &unk_27C9131A0, &unk_2146E9D10);
    v30 = v34;
    (*(v27 + 32))(v23 + v29, v7, v34);
    (*(v27 + 56))(v23 + v29, 0, 1, v30);
    sub_21402EDB8(v23, v22, &unk_27C9131D0, &qword_2146EAA70);
    sub_214328704(v22, v37, type metadata accessor for BIAURL);
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  sub_214031C4C();
  swift_allocError();
  *v31 = 0x752E4C5255414942;
  v31[1] = 0xEA00000000006C72;
  v31[2] = 0xD00000000000001CLL;
  v31[3] = v33;
  swift_willThrow();
  (*(v27 + 8))(v7, v34);
  (*(v28 + 8))(v35, v16);
  sub_21402EDB8(v23, v22, &unk_27C9131D0, &qword_2146EAA70);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_21432887C(v22, type metadata accessor for BIAURL);
}

uint64_t sub_214171DE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_2146D8958();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CA0, &qword_2146F4D98);
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8314();
  sub_2146DAA28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v15 + *(v12 + 28), v4, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_213FB2DF4(v4, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    v13 = v16;
    sub_2146DA388();
    (*(v6 + 8))(v8, v5);
    return (*(v9 + 8))(v11, v13);
  }

  return result;
}

uint64_t sub_21417214C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = *a3;
  sub_21440B6F8(&v52);
  v11 = v52;
  v10 = v53;
  v12 = v55;
  v36 = v54;
  v13 = v56;
  sub_21440BA6C(&v73);
  v48 = v73;
  v80 = v74;
  v37 = v75;
  v51 = v76;
  v39 = v77;
  sub_21440BDE0(v71);
  v44 = v71[0];
  v38 = v71[2];
  v49 = v71[3];
  v50 = v71[1];
  v42 = v13;
  v43 = v72;
  v73 = a1;
  v74 = a2;
  LOBYTE(v71[0]) = v13;
  v52 = 0xD000000000000019;
  v53 = 0x800000021478EF40;
  v54 = 0xD00000000000001CLL;
  v55 = 0x800000021478A360;

  v14 = v40;
  v41 = v11;
  v15 = v11(&v73, v71, &v52);
  if (v14)
  {

    v16 = v44;
    v17 = v10;
LABEL_6:

    v24 = v36;
    v23 = v37;
    v21 = v43;
    v18 = v39;
    v19 = v48;
    v25 = v51;
LABEL_7:
    v52 = v41;
    v53 = v17;
    v54 = v24;
    v55 = v12;
    v56 = v42;
    v57 = v45;
    v58 = *&v78[7];
    v59 = v79;
    v60 = v19;
    v61 = v80;
    v62 = v23;
    v63 = v25;
    v64 = v18;
    *v65 = *v78;
    *&v65[3] = *&v78[3];
    v66 = v16;
    v67 = v50;
    v68 = v38;
    v69 = v49;
    v70 = v21;
    return sub_2142F8368(&v52);
  }

  v31 = a1;
  v32 = a2;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x800000021478EF40;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    v16 = v44;
    v17 = v10;
    goto LABEL_6;
  }

  v17 = v10;

  v73 = a4;
  v74 = a5;
  v18 = v39;
  LOBYTE(v71[0]) = v39;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478EF60;
  v54 = 0xD00000000000001CLL;
  v55 = 0x800000021478A360;

  v19 = v48;
  v20 = v48(&v73, v71, &v52);
  v21 = v43;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001CLL;
    v28[1] = 0x800000021478EF60;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    v16 = v44;
    v12 = v32;
    v25 = v51;

    v24 = v31;
    v23 = v37;
    goto LABEL_7;
  }

  v73 = a6;
  v74 = a7;
  LOBYTE(v71[0]) = v43;
  v52 = 0xD00000000000001FLL;
  v53 = 0x800000021478EF80;
  v54 = 0xD00000000000001CLL;
  v55 = 0x800000021478A360;

  v27 = v44(&v73, v71, &v52);
  v16 = v44;
  v19 = v48;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001FLL;
    v30[1] = 0x800000021478EF80;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    v23 = a4;
    v25 = a5;
    v24 = v31;
    v12 = v32;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a8 = v41;
  *(a8 + 8) = v10;
  *(a8 + 16) = v31;
  *(a8 + 24) = v32;
  *(a8 + 32) = v42;
  *(a8 + 33) = v45;
  v29 = v80;
  *(a8 + 40) = v48;
  *(a8 + 48) = v29;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = v39;
  *(a8 + 80) = v44;
  *(a8 + 88) = v50;
  *(a8 + 96) = a6;
  *(a8 + 104) = a7;
  *(a8 + 112) = v43;
  return result;
}

uint64_t sub_2141726D4()
{
  v1 = 25705;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_214172738@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436B898(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214172760(uint64_t a1)
{
  v2 = sub_2142F83BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417279C(uint64_t a1)
{
  v2 = sub_2142F83BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141727D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CA8, &qword_2146F4DA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v9 = a1[3];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F83BC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v111);
  }

  v10 = v6;
  LOBYTE(v83) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v74 = v11;
  LOBYTE(v75) = 1;
  sub_2142F8410();
  sub_2146DA1C8();
  v14 = v83;
  LOBYTE(v83) = 2;
  v15 = sub_2146DA168();
  v18 = v17;
  *(&v70 + 1) = v15;
  v73 = v14;
  v107 = 3;
  v52 = sub_2146DA168();
  v57 = v8;
  v61 = v19;
  v59 = v18;
  sub_21440B6F8(&v83);
  v20 = v84;
  v53 = v85;
  v71 = v86;
  v72 = v83;
  v21 = v87;
  sub_21440BA6C(&v75);
  *&v70 = *(&v75 + 1);
  v67 = v75;
  v65 = *(&v76 + 1);
  v54 = v76;
  v68 = v77;
  sub_21440BDE0(&v102);
  v64 = v103;
  v55 = v104;
  v62 = v102;
  v63 = v105;
  v60 = v106;
  *&v75 = v74;
  *(&v75 + 1) = v13;
  v58 = v21;
  LOBYTE(v102) = v21;
  v83 = 0xD000000000000019;
  v84 = 0x800000021478EF40;
  v56 = 0x800000021478EF40;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;
  v69 = 0x800000021478A360;

  v66 = v20;
  v22 = v72(&v75, &v102, &v83);
  v23 = v56;
  v24 = v59;
  if (v22)
  {
    v25 = v69;

    *&v75 = *(&v70 + 1);
    *(&v75 + 1) = v24;
    LOBYTE(v102) = v68;
    v83 = 0xD00000000000001CLL;
    v84 = 0x800000021478EF60;
    v85 = 0xD00000000000001CLL;
    v86 = v25;

    v26 = v67(&v75, &v102, &v83);
    if ((v26 & 1) == 0)
    {
      v27 = v5;
      sub_214031C4C();
      swift_allocError();
      *v36 = 0xD00000000000001CLL;
      v36[1] = 0x800000021478EF60;
      v36[2] = 0xD00000000000001CLL;
      v36[3] = v69;
      swift_willThrow();

      v31 = v65;
      v30 = v66;
      v69 = v70;
      v33 = v57;
      v32 = v54;
      goto LABEL_8;
    }

    v34 = v69;

    v102 = v52;
    v103 = v61;
    LOBYTE(v75) = v60;
    v83 = 0xD00000000000001FLL;
    v84 = 0x800000021478EF80;
    v71 = 0x800000021478EF80;
    v85 = 0xD00000000000001CLL;
    v86 = v34;

    v35 = v62(&v102, &v75, &v83);
    v37 = v71;
    if (v35)
    {

      (*(v10 + 8))(v57, v5);

      v38 = v64;

      *&v75 = v72;
      *(&v75 + 1) = v66;
      v39 = v74;
      *&v76 = v74;
      *(&v76 + 1) = v13;
      LOBYTE(v77) = v58;
      BYTE1(v77) = v73;
      *(&v77 + 2) = v109;
      WORD3(v77) = v110;
      v40 = *(&v70 + 1);
      *(&v77 + 1) = v67;
      v78 = v70;
      *&v79 = v59;
      BYTE8(v79) = v68;
      *(&v79 + 9) = *v108;
      HIDWORD(v79) = *&v108[3];
      *&v80 = v62;
      *(&v80 + 1) = v38;
      v41 = v52;
      *&v81 = v52;
      *(&v81 + 1) = v61;
      v71 = v13;
      v42 = v60;
      v82 = v60;
      v43 = v79;
      v44 = v80;
      v45 = v81;
      *(a2 + 112) = v60;
      *(a2 + 80) = v44;
      *(a2 + 96) = v45;
      v46 = v75;
      v47 = v76;
      v48 = v77;
      *(a2 + 48) = v78;
      *(a2 + 64) = v43;
      *(a2 + 16) = v47;
      *(a2 + 32) = v48;
      *a2 = v46;
      sub_2142F8464(&v75, &v83);
      __swift_destroy_boxed_opaque_existential_1(v111);
      v83 = v72;
      v84 = v66;
      v85 = v39;
      v86 = v71;
      v87 = v58;
      v88 = v73;
      v89 = v109;
      v90 = v110;
      v91 = v67;
      v92 = v70;
      v93 = v40;
      v94 = v59;
      v95 = v68;
      *v96 = *v108;
      *&v96[3] = *&v108[3];
      v97 = v62;
      v98 = v38;
      v99 = v41;
      v100 = v61;
      v101 = v42;
      return sub_2142F8368(&v83);
    }

    v27 = v5;
    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000001FLL;
    v49[1] = v37;
    v50 = v69;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = v50;
    swift_willThrow();

    v31 = v59;
    v69 = v64;
    v32 = *(&v70 + 1);
    v30 = v66;
  }

  else
  {
    v27 = v5;
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000019;
    v28[1] = v23;
    v29 = v69;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v29;
    swift_willThrow();

    v13 = v71;
    v31 = v65;
    v30 = v66;
    v69 = v66;
    v32 = v54;
    v74 = v53;
  }

  v33 = v57;
LABEL_8:
  (*(v10 + 8))(v33, v27);

  __swift_destroy_boxed_opaque_existential_1(v111);
  v83 = v72;
  v84 = v30;
  v85 = v74;
  v86 = v13;
  v87 = v58;
  v88 = v73;
  v89 = v109;
  v90 = v110;
  v91 = v67;
  v92 = v70;
  v93 = v32;
  v94 = v31;
  v95 = v68;
  *v96 = *v108;
  *&v96[3] = *&v108[3];
  v97 = v62;
  v98 = v64;
  v99 = v55;
  v100 = v63;
  v101 = v60;
  return sub_2142F8368(&v83);
}

uint64_t sub_214173070(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CC0, &qword_2146F4DA8);
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
  sub_2142F83BC();
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
    sub_2142F84C0();
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

uint64_t sub_214173368@<X0>(char *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = *a1;
  sub_21440C4C0(&v29);
  v9 = v29;
  v10 = v30;
  v11 = v32;
  v22 = v31;
  v12 = v33;
  sub_21440C834(&v42);
  v23 = v42;
  v21 = v44;
  v27 = v45;
  v28 = v43;
  v49 = v12;
  v50 = v46;
  v42 = a2;
  v43 = a3;
  v41 = v12;
  v29 = 0xD000000000000021;
  v30 = 0x800000021478EFA0;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v25 = v9;
  v13 = v9(&v42, &v41, &v29);
  if (v6)
  {

    a2 = v22;
    v14 = v23;
  }

  else if (v13)
  {

    v42 = a4;
    v43 = a5;
    v41 = v50;
    v29 = 0xD000000000000024;
    v30 = 0x800000021478EFD0;
    v31 = 0xD00000000000001CLL;
    v32 = 0x800000021478A360;

    v14 = v23;
    v15 = v23(&v42, &v41, &v29);
    if (v15)
    {

      result = swift_bridgeObjectRelease_n();
      *a6 = v24;
      *(a6 + 8) = v25;
      *(a6 + 16) = v10;
      *(a6 + 24) = a2;
      *(a6 + 32) = a3;
      *(a6 + 40) = v49;
      *(a6 + 48) = v23;
      *(a6 + 56) = v28;
      *(a6 + 64) = a4;
      *(a6 + 72) = a5;
      *(a6 + 80) = v50;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000024;
    v18[1] = 0x800000021478EFD0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    v11 = a3;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000021;
    v16[1] = 0x800000021478EFA0;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    a2 = v22;
    v14 = v23;
  }

  LOBYTE(v29) = v24;
  *(&v29 + 1) = v48[0];
  HIDWORD(v29) = *(v48 + 3);
  v30 = v25;
  v31 = v10;
  v32 = a2;
  v33 = v11;
  v34 = v49;
  *v35 = *v47;
  *&v35[3] = *&v47[3];
  v36 = v14;
  v37 = v28;
  v38 = v21;
  v39 = v27;
  v40 = v50;
  return sub_2142F8514(&v29);
}

uint64_t sub_21417371C()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_21417376C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436B9F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214173794(uint64_t a1)
{
  v2 = sub_2142F8568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141737D0(uint64_t a1)
{
  v2 = sub_2142F8568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417380C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CD0, &qword_2146F4DB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8568();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v48) = 0;
  sub_2142F8410();
  sub_2146DA1C8();
  v9 = v55;
  LOBYTE(v55) = 1;
  v10 = sub_2146DA168();
  v70 = v12;
  v13 = v10;
  v67 = 2;
  v34 = sub_2146DA168();
  v42 = v14;
  v38 = v9;
  sub_21440C4C0(&v55);
  v15 = v56;
  v46 = v55;
  v35 = v57;
  v47 = v58;
  v16 = v59;
  sub_21440C834(&v48);
  v44 = *(&v48 + 1);
  v40 = v48;
  v43 = *(&v49 + 1);
  v36 = v49;
  v41 = v50;
  v45 = v13;
  *&v48 = v13;
  *(&v48 + 1) = v70;
  v37 = v16;
  LOBYTE(v54[0]) = v16;
  v55 = 0xD000000000000021;
  v56 = 0x800000021478EFA0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;
  v39 = 0x800000021478A360;

  v17 = v46(&v48, v54, &v55);
  v33 = v15;
  if (v17)
  {
    v18 = v39;

    v54[0] = v34;
    v54[1] = v42;
    LOBYTE(v48) = v41;
    v55 = 0xD000000000000024;
    v56 = 0x800000021478EFD0;
    v57 = 0xD00000000000001CLL;
    v58 = v18;

    v19 = v40(v54, &v48, &v55);
    if (v19)
    {

      (*(v6 + 8))(v8, v5);

      v23 = v44;

      LOBYTE(v48) = v38;
      v24 = v46;
      *(&v48 + 1) = v46;
      *&v49 = v33;
      v25 = v45;
      *(&v49 + 1) = v45;
      *&v50 = v70;
      v26 = v37;
      BYTE8(v50) = v37;
      v27 = v40;
      *&v51 = v40;
      *(&v51 + 1) = v23;
      *&v52 = v34;
      *(&v52 + 1) = v42;
      v28 = v41;
      v53 = v41;
      *(a2 + 80) = v41;
      v29 = v51;
      *(a2 + 32) = v50;
      *(a2 + 48) = v29;
      *(a2 + 64) = v52;
      v30 = v49;
      *a2 = v48;
      *(a2 + 16) = v30;
      sub_2142F85BC(&v48, &v55);
      __swift_destroy_boxed_opaque_existential_1(a1);
      LOBYTE(v55) = v38;
      v56 = v24;
      v57 = v33;
      v58 = v25;
      v59 = v70;
      v60 = v26;
      v62 = v27;
      v63 = v23;
      v64 = v34;
      v65 = v42;
      v66 = v28;
      return sub_2142F8514(&v55);
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000024;
    v31[1] = 0x800000021478EFD0;
    v32 = v39;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = v32;
    swift_willThrow();

    v47 = v70;
    v22 = v33;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000021;
    v20[1] = 0x800000021478EFA0;
    v21 = v39;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = v21;
    swift_willThrow();

    v22 = v33;
    v45 = v35;
  }

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v55) = v38;
  *(&v55 + 1) = v69[0];
  HIDWORD(v55) = *(v69 + 3);
  v56 = v46;
  v57 = v22;
  v58 = v45;
  v59 = v47;
  v60 = v37;
  *v61 = *v68;
  *&v61[3] = *&v68[3];
  v62 = v40;
  v63 = v44;
  v64 = v36;
  v65 = v43;
  v66 = v41;
  return sub_2142F8514(&v55);
}

uint64_t sub_214173F78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CE0, &qword_2146F4DB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 3);
  v9 = *(v1 + 4);
  v10 = *(v1 + 9);
  v14[1] = *(v1 + 8);
  v14[2] = v8;
  v14[0] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8568();
  sub_2146DAA28();
  v18 = v7;
  v17 = 0;
  sub_2142F84C0();
  v11 = v14[3];
  sub_2146DA388();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = v14[0];
  if (v9 && (v16 = 1, , sub_2146DA328(), , v13))
  {
    v15 = 2;

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

uint64_t sub_214174224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for BIALabeledUserAction(0);
  v31 = a5;
  sub_2143287C0(a5, a6 + *(v9 + 24), type metadata accessor for BIAUserAction);
  sub_21440CDF0(&v34);
  v11 = v34;
  v10 = v35;
  v12 = v36;
  v13 = v37;
  v14 = v38;
  sub_21440D164(v32);
  v15 = v32[1];
  *(a6 + 40) = v32[0];
  v16 = v33;
  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = v12;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 56) = v15;
  *(a6 + 72) = v16;
  *&v32[0] = a1;
  *(&v32[0] + 1) = a2;
  v39 = v14;
  v34 = 0xD00000000000001ALL;
  v35 = 0x800000021478F000;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v17 = v11(v32, &v39, &v34);
  if (v29)
  {

LABEL_6:
    sub_21432887C(v31, type metadata accessor for BIAUserAction);

    *a6 = v11;
    *(a6 + 8) = v10;
    *(a6 + 16) = v12;
    *(a6 + 24) = v13;
    *(a6 + 32) = v14;
    return sub_21432887C(a6, type metadata accessor for BIALabeledUserAction);
  }

  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD00000000000001ALL;
    v23[1] = 0x800000021478F000;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = v14;
  v19 = *(a6 + 40);
  v18 = *(a6 + 48);
  v20 = *(a6 + 64);
  v28 = *(a6 + 56);
  v21 = *(a6 + 72);
  *&v32[0] = a3;
  *(&v32[0] + 1) = a4;
  v39 = v21;
  v34 = 0xD00000000000001ELL;
  v35 = 0x800000021478F020;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v22 = v19(v32, &v39, &v34);
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD00000000000001ELL;
    v25[1] = 0x800000021478F020;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    sub_21432887C(v31, type metadata accessor for BIAUserAction);

    *(a6 + 40) = v19;
    *(a6 + 48) = v18;
    *(a6 + 56) = v28;
    *(a6 + 64) = v20;
    *(a6 + 72) = v21;
    return sub_21432887C(a6, type metadata accessor for BIALabeledUserAction);
  }

  sub_21432887C(v31, type metadata accessor for BIAUserAction);

  *(a6 + 40) = v19;
  *(a6 + 48) = v18;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = v21;
  return result;
}

uint64_t sub_2141745F4()
{
  v1 = 0x6D614E6567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_21417464C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436BB04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214174674(uint64_t a1)
{
  v2 = sub_2142F8618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141746B0(uint64_t a1)
{
  v2 = sub_2142F8618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141746EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for BIAUserAction(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CE8, &qword_2146F4DC0);
  v71 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - v7;
  v9 = type metadata accessor for BIALabeledUserAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F8618();
  v13 = v72;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v69 = v5;
  v72 = v11;
  LOBYTE(v76) = 0;
  v15 = v6;
  v14 = sub_2146DA168();
  v17 = v16;
  v18 = v14;
  LOBYTE(v76) = 1;
  v19 = sub_2146DA168();
  v21 = v20;
  v67 = v19;
  v68 = v18;
  LOBYTE(v76) = 2;
  sub_214328930(&qword_27C907CF8, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
  v22 = v69;
  sub_2146DA1C8();
  v66 = v21;
  v24 = v72;
  sub_2143287C0(v22, &v72[*(v9 + 24)], type metadata accessor for BIAUserAction);
  sub_21440CDF0(&v76);
  v60 = v17;
  v25 = v76;
  v26 = v77;
  v61 = v76;
  v28 = v78;
  v27 = v79;
  v29 = v80;
  sub_21440D164(v74);
  v30 = v74[1];
  *(v24 + 40) = v74[0];
  v31 = v75;
  *v24 = v25;
  *(v24 + 1) = v26;
  v59 = v28;
  *(v24 + 2) = v28;
  *(v24 + 3) = v27;
  v32 = v60;
  v24[32] = v29;
  *(v24 + 56) = v30;
  v24[72] = v31;
  *&v74[0] = v68;
  *(&v74[0] + 1) = v32;
  LODWORD(v65) = v29;
  v81 = v29;
  v76 = 0xD00000000000001ALL;
  v77 = 0x800000021478F000;
  v62 = 0x800000021478F000;
  v78 = 0xD00000000000001CLL;
  v79 = 0x800000021478A360;
  v63 = v27;

  v64 = v26;
  v33 = v61;
  v34 = v61(v74, &v81, &v76);
  v35 = v33;
  v36 = v62;
  v58 = 0x800000021478A360;
  v37 = v32;
  if (v34)
  {
    v59 = v15;
    v38 = v58;

    v39 = v72;

    v40 = v64;
    *v39 = v35;
    *(v39 + 1) = v40;
    *(v39 + 2) = v68;
    *(v39 + 3) = v37;
    v39[32] = v65;
    v41 = *(v39 + 5);
    v42 = *(v39 + 6);
    v43 = *(v39 + 8);
    v63 = *(v39 + 7);
    v44 = v39[72];
    v45 = v66;
    *&v74[0] = v67;
    *(&v74[0] + 1) = v66;
    LODWORD(v68) = v44;
    v81 = v44;
    v76 = 0xD00000000000001ELL;
    v77 = 0x800000021478F020;
    v78 = 0xD00000000000001CLL;
    v79 = v38;
    v64 = v43;

    v65 = v41;
    v46 = v41(v74, &v81, &v76);
    v52 = v59;
    v53 = v71;
    if (v46)
    {

      sub_21432887C(v69, type metadata accessor for BIAUserAction);
      (*(v53 + 8))(v8, v52);
      v54 = v72;

      *(v54 + 40) = v65;
      *(v54 + 48) = v42;
      *(v54 + 56) = v67;
      *(v54 + 64) = v45;
      *(v54 + 72) = v68;
      sub_214328704(v54, v70, type metadata accessor for BIALabeledUserAction);
      return __swift_destroy_boxed_opaque_existential_1(v73);
    }

    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD00000000000001ELL;
    v55[1] = 0x800000021478F020;
    v56 = v58;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = v56;
    swift_willThrow();

    sub_21432887C(v69, type metadata accessor for BIAUserAction);
    (*(v53 + 8))(v8, v52);
    v49 = v72;

    *(v49 + 40) = v65;
    *(v49 + 48) = v42;
    v57 = v64;
    *(v49 + 56) = v63;
    *(v49 + 64) = v57;
    *(v49 + 72) = v68;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v47 = 0xD00000000000001ALL;
    v47[1] = v36;
    v48 = v58;
    v47[2] = 0xD00000000000001CLL;
    v47[3] = v48;
    swift_willThrow();

    sub_21432887C(v69, type metadata accessor for BIAUserAction);
    (*(v71 + 8))(v8, v15);
    v49 = v72;

    v50 = v64;
    *v49 = v35;
    *(v49 + 8) = v50;
    v51 = v63;
    *(v49 + 16) = v59;
    *(v49 + 24) = v51;
    *(v49 + 32) = v65;
  }

  __swift_destroy_boxed_opaque_existential_1(v73);
  return sub_21432887C(v49, type metadata accessor for BIALabeledUserAction);
}

uint64_t sub_214174E9C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D00, &qword_2146F4DC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8618();
  sub_2146DAA28();
  if (*(v3 + 24))
  {
    v10[15] = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    if (*(v3 + 64))
    {
      v10[14] = 1;

      sub_2146DA328();

      type metadata accessor for BIALabeledUserAction(0);
      v10[13] = 2;
      type metadata accessor for BIAUserAction(0);
      sub_214328930(&qword_27C907D08, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
      sub_2146DA388();
      return (*(v6 + 8))(v8, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214175154@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a3;
  v11 = type metadata accessor for BIABinaryChoiceButton(0);
  v21 = a4;
  sub_2143287C0(a4, a5 + *(v11 + 24), type metadata accessor for BIAUserAction);
  sub_21440D608(&v23);
  v13 = v23;
  v12 = v24;
  v14 = v25;
  v15 = v26;
  v16 = v27;
  *a5 = v23;
  *(a5 + 8) = v12;
  v20 = v14;
  *(a5 + 16) = v14;
  *(a5 + 24) = v15;
  *(a5 + 32) = v16;
  *(a5 + 33) = v10;
  v22[0] = a1;
  v22[1] = a2;
  v28 = v16;
  v29 = v16;
  v23 = 0xD00000000000001BLL;
  v24 = 0x800000021478F040;
  v25 = 0xD00000000000001CLL;
  v26 = 0x800000021478A360;

  v17 = v13(v22, &v29, &v23);
  if (v5)
  {
  }

  else
  {
    if (v17)
    {

      sub_21432887C(v21, type metadata accessor for BIAUserAction);

      *a5 = v13;
      *(a5 + 8) = v12;
      *(a5 + 16) = a1;
      *(a5 + 24) = a2;
      *(a5 + 32) = v28;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD00000000000001BLL;
    v19[1] = 0x800000021478F040;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(v21, type metadata accessor for BIAUserAction);

  *a5 = v13;
  *(a5 + 8) = v12;
  *(a5 + 16) = v20;
  *(a5 + 24) = v15;
  *(a5 + 32) = v28;
  return sub_21432887C(a5, type metadata accessor for BIABinaryChoiceButton);
}

uint64_t sub_214175398()
{
  v1 = 1701605234;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_2141753E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436BC1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21417540C(uint64_t a1)
{
  v2 = sub_2142F866C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214175448(uint64_t a1)
{
  v2 = sub_2142F866C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214175484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for BIAUserAction(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D10, &unk_2146F4DD0);
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for BIABinaryChoiceButton(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F866C();
  v13 = v38;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v38 = v5;
  v35 = v11;
  LOBYTE(v41) = 0;
  v14 = sub_2146DA168();
  v16 = v15;
  v17 = v14;
  LOBYTE(v40[0]) = 1;
  sub_2142F86C0();
  sub_2146DA1C8();
  v34 = v17;
  v46 = v41;
  LOBYTE(v41) = 2;
  sub_214328930(&qword_27C907CF8, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
  v18 = v38;
  sub_2146DA1C8();
  v32 = v6;
  v20 = v35;
  sub_2143287C0(v18, &v35[*(v9 + 24)], type metadata accessor for BIAUserAction);
  sub_21440D608(&v41);
  v22 = v41;
  v21 = v42;
  v23 = v43;
  v24 = v44;
  v25 = v45;
  *v20 = v41;
  *(v20 + 8) = v21;
  v31 = v23;
  *(v20 + 16) = v23;
  *(v20 + 24) = v24;
  *(v20 + 32) = v25;
  *(v20 + 33) = v46;
  v40[0] = v34;
  v40[1] = v16;
  v46 = v25;
  v47 = v25;
  v41 = 0xD00000000000001BLL;
  v42 = 0x800000021478F040;
  v43 = 0xD00000000000001CLL;
  v44 = 0x800000021478A360;

  v33 = v22;
  v26 = v22(v40, &v47, &v41);
  v27 = v32;
  if (v26)
  {

    sub_21432887C(v38, type metadata accessor for BIAUserAction);
    (*(v37 + 8))(v8, v27);

    v28 = v34;
    *v20 = v33;
    *(v20 + 8) = v21;
    *(v20 + 16) = v28;
    *(v20 + 24) = v16;
    *(v20 + 32) = v46;
    sub_214328704(v20, v36, type metadata accessor for BIABinaryChoiceButton);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v36 = v24;
  sub_214031C4C();
  swift_allocError();
  *v29 = 0xD00000000000001BLL;
  v29[1] = 0x800000021478F040;
  v29[2] = 0xD00000000000001CLL;
  v29[3] = 0x800000021478A360;
  swift_willThrow();

  sub_21432887C(v38, type metadata accessor for BIAUserAction);
  (*(v37 + 8))(v8, v27);

  *v20 = v33;
  *(v20 + 8) = v21;
  v30 = v36;
  *(v20 + 16) = v31;
  *(v20 + 24) = v30;
  *(v20 + 32) = v46;
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_21432887C(v20, type metadata accessor for BIABinaryChoiceButton);
}

uint64_t sub_2141759E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D28, &qword_21477C7A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F866C();
  sub_2146DAA28();
  if (*(v3 + 24))
  {
    v10[15] = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {

      v10[14] = *(v3 + 33);
      v10[13] = 1;
      sub_2142F8714();
      sub_2146DA388();
      type metadata accessor for BIABinaryChoiceButton(0);
      v10[12] = 2;
      type metadata accessor for BIAUserAction(0);
      sub_214328930(&qword_27C907D08, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
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

uint64_t sub_214175C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21440D97C(&v17);
  v7 = v17;
  v8 = v18;
  v9 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD000000000000014;
  v18 = 0x800000021478F060;
  v10 = v7;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v11 = v10(v16, &v22, &v17);
  if (v4)
  {
  }

  else
  {
    if (v11)
    {

      *a4 = v10;
      *(a4 + 8) = v8;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v9;
      *(a4 + 40) = a3;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000014;
    v13[1] = 0x800000021478F060;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214175E30()
{
  if (*v0)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_214175E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
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

uint64_t sub_214175F40(uint64_t a1)
{
  v2 = sub_2142F8768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214175F7C(uint64_t a1)
{
  v2 = sub_2142F8768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214175FB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D38, &unk_2146F4DE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8768();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  v9 = sub_2146DA168();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D48, &qword_21477C7C0);
  LOBYTE(v27[0]) = 1;
  sub_2142F87BC();
  sub_2146DA1C8();
  v25 = v28;
  sub_21440D97C(&v28);
  v13 = v29;
  v26 = v28;
  v27[0] = v9;
  v27[1] = v11;
  v28 = 0xD000000000000014;
  v33 = v32;
  v34 = v32;
  v23 = 0x800000021478F060;
  v24 = v31;
  v29 = 0x800000021478F060;
  v30 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;
  v31 = 0x800000021478A360;

  v22 = v13;
  v14 = v26(v27, &v34, &v28);
  v15 = v21;
  if (v14)
  {

    (*(v6 + 8))(v8, v5);

    v16 = v22;

    v17 = v25;
    *a2 = v26;
    *(a2 + 8) = v16;
    *(a2 + 16) = v9;
    *(a2 + 24) = v11;
    *(a2 + 32) = v33;
    *(a2 + 40) = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v18 = v23;
    *v19 = 0xD000000000000014;
    v19[1] = v18;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = v15;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_214176384(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D70, &qword_2146F4DF8);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  v7 = *(v1 + 24);
  v10 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8768();
  sub_2146DAA28();
  if (v7)
  {
    v14 = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v11 + 8))(v6, v4);
    }

    else
    {

      v12 = v10;
      v13 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D48, &qword_21477C7C0);
      sub_2142F88F4();
      sub_2146DA388();
      return (*(v11 + 8))(v6, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141765DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for BusinessMessage(0);
  v39 = a5;
  sub_213FB2E54(a5, a6 + *(v9 + 24), &qword_27C907D90, &qword_2146F4E00);
  sub_214406CE8(&v43);
  v11 = v43;
  v10 = v44;
  v12 = v45;
  v13 = v46;
  v14 = v47;
  sub_2144070DC(v41);
  v15 = v41[1];
  *(a6 + 40) = v41[0];
  v16 = v42;
  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = v12;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 56) = v15;
  *(a6 + 72) = v16;
  *&v41[0] = a1;
  *(&v41[0] + 1) = a2;
  v48 = v14;
  v49 = v14;
  v17 = v13;
  v43 = 0xD000000000000021;
  v44 = 0x800000021478F080;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  sub_213FDC9D0(v12, v13);
  v18 = v11(v41, &v49, &v43);
  if (v38)
  {

LABEL_6:
    sub_213FB2DF4(v39, &qword_27C907D90, &qword_2146F4E00);
    v28 = *(a6 + 16);
    v29 = *(a6 + 24);

    sub_213FDC6D0(v28, v29);
    *a6 = v11;
    *(a6 + 8) = v10;
    *(a6 + 16) = v12;
    *(a6 + 24) = v17;
    *(a6 + 32) = v48;
    return sub_21432887C(a6, type metadata accessor for BusinessMessage);
  }

  if ((v18 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD000000000000021;
    v27[1] = 0x800000021478F080;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v13;
    goto LABEL_6;
  }

  sub_213FDC6D0(v12, v13);

  v19 = *(a6 + 16);
  v20 = *(a6 + 24);

  sub_213FDC6D0(v19, v20);
  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = v48;
  v22 = *(a6 + 40);
  v21 = *(a6 + 48);
  v24 = *(a6 + 56);
  v23 = *(a6 + 64);
  v25 = *(a6 + 72);
  *&v41[0] = a3;
  *(&v41[0] + 1) = a4;
  v48 = v25;
  v49 = v25;
  v43 = 0xD000000000000017;
  v44 = 0x800000021478F0B0;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  sub_213FDC9D0(v24, v23);
  v26 = v22(v41, &v49, &v43);
  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000017;
    v33[1] = 0x800000021478F0B0;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v39, &qword_27C907D90, &qword_2146F4E00);
    v34 = *(a6 + 56);
    v35 = *(a6 + 64);

    sub_213FDC6D0(v34, v35);
    *(a6 + 40) = v22;
    *(a6 + 48) = v21;
    *(a6 + 56) = v24;
    *(a6 + 64) = v23;
    *(a6 + 72) = v48;
    return sub_21432887C(a6, type metadata accessor for BusinessMessage);
  }

  sub_213FDC6D0(v24, v23);

  sub_213FB2DF4(v39, &qword_27C907D90, &qword_2146F4E00);
  v31 = *(a6 + 56);
  v32 = *(a6 + 64);

  result = sub_213FDC6D0(v31, v32);
  *(a6 + 40) = v22;
  *(a6 + 48) = v21;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = v48;
  return result;
}

uint64_t sub_2141769E8()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x656A624F746F6F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_214176A4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436BD2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214176A74(uint64_t a1)
{
  v2 = sub_2142F8A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214176AB0(uint64_t a1)
{
  v2 = sub_2142F8A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214176AEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
  MEMORY[0x28223BE20](v3);
  v5 = &v62 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D98, &qword_2146F4E08);
  v73 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  v9 = type metadata accessor for BusinessMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F8A2C();
  v13 = v74;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  v71 = v5;
  v74 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v76[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v14 = v6;
  v15 = v78;
  v16 = v79;
  LOBYTE(v76[0]) = 1;
  sub_2146DA1C8();
  v17 = v79;
  v70 = v78;
  LOBYTE(v78) = 2;
  sub_2142F8A80();
  v18 = v71;
  sub_2146DA1C8();
  v69 = v17;
  v20 = v74;
  sub_213FB2E54(v18, v74 + *(v9 + 24), &qword_27C907D90, &qword_2146F4E00);
  sub_214406CE8(&v78);
  v21 = v15;
  v22 = v78;
  v65 = v79;
  v66 = 0;
  v24 = v80;
  v23 = v81;
  v25 = v82;
  sub_2144070DC(v76);
  v26 = v76[1];
  *(v20 + 5) = v76[0];
  v27 = v77;
  v28 = v65;
  *v20 = v22;
  v20[1] = v28;
  v20[2] = v24;
  v20[3] = v23;
  *(v20 + 32) = v25;
  *(v20 + 7) = v26;
  *(v20 + 72) = v27;
  v64 = v21;
  *&v76[0] = v21;
  *(&v76[0] + 1) = v16;
  v83 = v25;
  v84 = v25;
  v29 = v22;
  v78 = 0xD000000000000021;
  v79 = 0x800000021478F080;
  v80 = 0xD00000000000001CLL;
  v81 = 0x800000021478A360;
  v30 = v28;

  v67 = v24;
  v68 = v23;
  v31 = v24;
  v32 = v30;
  sub_213FDC9D0(v31, v23);
  v33 = v66;
  v34 = v22(v76, &v84, &v78);
  if (v33)
  {

LABEL_9:

    sub_213FB2DF4(v71, &qword_27C907D90, &qword_2146F4E00);
    (*(v73 + 8))(v8, v14);
    v49 = v74;
    v50 = v74[2];
    v51 = v74[3];

    sub_213FDC6D0(v50, v51);
    *v49 = v29;
    *(v49 + 8) = v32;
    v52 = v68;
    *(v49 + 16) = v67;
    *(v49 + 24) = v52;
    *(v49 + 32) = v83;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v75);
    return sub_21432887C(v49, type metadata accessor for BusinessMessage);
  }

  v66 = 0x800000021478A360;
  v35 = v64;
  v63 = v16;
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v47 = 0xD000000000000021;
    v47[1] = 0x800000021478F080;
    v48 = v66;
    v47[2] = 0xD00000000000001CLL;
    v47[3] = v48;
    swift_willThrow();
    goto LABEL_9;
  }

  v62 = v14;
  sub_213FDC6D0(v67, v68);
  v36 = v66;

  v37 = v74;
  v38 = v74[2];
  v39 = v74[3];

  sub_213FDC6D0(v38, v39);
  *v37 = v29;
  v37[1] = v32;
  v40 = v63;
  v37[2] = v35;
  v37[3] = v40;
  *(v37 + 32) = v83;
  v42 = v37[5];
  v41 = v37[6];
  v43 = v37[7];
  v44 = v37[8];
  v45 = *(v37 + 72);
  *&v76[0] = v70;
  *(&v76[0] + 1) = v69;
  v83 = v45;
  v84 = v45;
  v78 = 0xD000000000000017;
  v79 = 0x800000021478F0B0;
  v80 = 0xD00000000000001CLL;
  v81 = v36;

  v68 = v43;
  sub_213FDC9D0(v43, v44);
  v46 = v42(v76, &v84, &v78);
  v53 = v62;
  v54 = v73;
  if ((v46 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD000000000000017;
    v59[1] = 0x800000021478F0B0;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = v66;
    swift_willThrow();

    sub_213FB2DF4(v71, &qword_27C907D90, &qword_2146F4E00);
    (*(v54 + 8))(v8, v53);
    v49 = v74;
    v60 = v74[7];
    v61 = v74[8];

    sub_213FDC6D0(v60, v61);
    *(v49 + 40) = v42;
    *(v49 + 48) = v41;
    *(v49 + 56) = v68;
    *(v49 + 64) = v44;
    *(v49 + 72) = v83;
    goto LABEL_10;
  }

  sub_213FDC6D0(v68, v44);

  sub_213FB2DF4(v71, &qword_27C907D90, &qword_2146F4E00);
  (*(v54 + 8))(v8, v53);
  v55 = v74;
  v56 = v74[7];
  v57 = v74[8];

  sub_213FDC6D0(v56, v57);
  *(v55 + 40) = v42;
  *(v55 + 48) = v41;
  v58 = v69;
  *(v55 + 56) = v70;
  *(v55 + 64) = v58;
  *(v55 + 72) = v83;
  sub_214328704(v55, v72, type metadata accessor for BusinessMessage);
  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_214177274(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907DB8, &qword_2146F4E10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8A2C();
  sub_2146DAA28();
  v9 = v3[3];
  if (v9 == 1)
  {
    goto LABEL_6;
  }

  v14 = v3[2];
  v15 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v3[8];
  if (v11 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = v3[7];
    v15 = v11;
    v13 = 1;
    sub_2146DA388();
    type metadata accessor for BusinessMessage(0);
    LOBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
    sub_2142F8B34();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

__n128 sub_214177538@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOWORD(v21[0]) = 0;
  sub_2140615D0(v21);
  v4 = v21[8];
  v5 = v21[10];
  v6 = v21[11];
  *(a2 + 392) = v21[9];
  *(a2 + 408) = v5;
  *(a2 + 424) = v6;
  v7 = v21[4];
  v8 = v21[6];
  v9 = v21[7];
  *(a2 + 328) = v21[5];
  *(a2 + 344) = v8;
  *(a2 + 360) = v9;
  *(a2 + 376) = v4;
  v10 = v21[1];
  *(a2 + 248) = v21[0];
  v11 = v21[2];
  v12 = v21[3];
  *(a2 + 264) = v10;
  *(a2 + 280) = v11;
  *(a2 + 296) = v12;
  *(a2 + 312) = v7;
  *(a2 + 240) = 0;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v13 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v13;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  v14 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v14;
  v15 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v15;
  v16 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v16;
  v17 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v17;
  v18 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v18;
  result = *(a1 + 32);
  v20 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v20;
  return result;
}