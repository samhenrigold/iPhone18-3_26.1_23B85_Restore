uint64_t sub_214177640(uint64_t a1)
{
  v2 = sub_2142F8BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417767C(uint64_t a1)
{
  v2 = sub_2142F8BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141776FC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, char *a6@<X8>)
{
  v26 = a6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v25 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v12 = v25;
    v11 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0, aI_83);
    v13 = v30;
    sub_2146DA1C8();
    (*(v12 + 8))(v10, v13);
    LOWORD(v28[0]) = 0;
    sub_2140615D0(v28);
    v14 = v28[8];
    v15 = v28[10];
    v16 = v28[11];
    *(v11 + 392) = v28[9];
    *(v11 + 408) = v15;
    *(v11 + 424) = v16;
    v17 = v28[4];
    v18 = v28[6];
    v19 = v28[7];
    *(v11 + 328) = v28[5];
    *(v11 + 344) = v18;
    *(v11 + 360) = v19;
    *(v11 + 376) = v14;
    v20 = v28[1];
    *(v11 + 248) = v28[0];
    v21 = v28[2];
    v22 = v28[3];
    *(v11 + 264) = v20;
    *(v11 + 280) = v21;
    *(v11 + 296) = v22;
    *(v11 + 312) = v17;
    *(v11 + 30) = 0;
    *(v11 + 13) = 0u;
    *(v11 + 14) = 0u;
    *(v11 + 11) = 0u;
    *(v11 + 12) = 0u;
    *(v11 + 9) = 0u;
    *(v11 + 10) = 0u;
    *(v11 + 7) = 0u;
    *(v11 + 8) = 0u;
    *(v11 + 5) = 0u;
    *(v11 + 6) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 4) = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *v11 = 0u;
    memcpy(v27, v29, sizeof(v27));
    sub_213FB2DF4(v11, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v11, v27, 0x1B8uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141779B8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0, byte_214738EE8);
  sub_2146DA388();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_214177B9C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0, byte_214738EE8);
  sub_2146DA388();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_214177D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v68 = a10;
  v57 = a16[1];
  v58 = *a16;
  v27 = type metadata accessor for MessagesAppBalloon(0);
  v63 = a3;
  sub_213FB2E54(a3, a9 + v27[5], &unk_27C904F30, &unk_2146EFA20);
  v62 = a6;
  sub_213FB2E54(a6, a9 + v27[7], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(a13, a9 + v27[11], &qword_27C904850, &unk_2146EDB40);
  sub_213FB2E54(a21, a9 + v27[16], &qword_27C904848, &unk_2146F4E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = 0xD000000000000017;
  *(v30 + 24) = 0x800000021478F0D0;
  *(v29 + 16) = sub_21409A7EC;
  *(v29 + 24) = v30;
  *(inited + 32) = v29;
  sub_214042A28(inited, &v65);
  v31 = v67;
  *a9 = a1;
  a9[1] = a2;
  v32 = (a9 + v27[6]);
  *v32 = a4;
  v32[1] = a5;
  v33 = (a9 + v27[8]);
  v34 = a7[5];
  v33[4] = a7[4];
  v33[5] = v34;
  *(v33 + 89) = *(a7 + 89);
  v35 = a7[1];
  *v33 = *a7;
  v33[1] = v35;
  v36 = a7[3];
  v33[2] = a7[2];
  v33[3] = v36;
  v37 = a9 + v27[9];
  *v37 = a8;
  v37[8] = v68 & 1;
  v38 = (a9 + v27[10]);
  *v38 = a11;
  v38[1] = a12;
  v39 = a9 + v27[12];
  v40 = v66;
  *v39 = v65;
  *(v39 + 1) = v40;
  v39[32] = v31;
  v41 = (a9 + v27[13]);
  *v41 = v58;
  v41[1] = v57;
  v42 = (a9 + v27[14]);
  *v42 = a17;
  v42[1] = a18;
  v43 = (a9 + v27[15]);
  *v43 = a19;
  v43[1] = a20;
  v45 = *v39;
  v44 = *(v39 + 1);
  v46 = *(v39 + 2);
  v47 = *(v39 + 3);
  LOBYTE(v38) = v39[32];
  v64[0] = a14;
  v64[1] = a15;
  v60 = v38;
  v69 = v38;
  *&v65 = 0xD00000000000001ELL;
  *(&v65 + 1) = 0x800000021478F0F0;
  *&v66 = 0xD00000000000001CLL;
  *(&v66 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v46, v47);
  v48 = v45(v64, &v69, &v65);
  if (v61)
  {
  }

  else
  {
    if (v48)
    {
      sub_213FDC6D0(v46, v47);

      sub_213FB2DF4(a21, &qword_27C904848, &unk_2146F4E30);
      sub_213FB2DF4(a13, &qword_27C904850, &unk_2146EDB40);
      sub_213FB2DF4(v62, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v63, &unk_27C904F30, &unk_2146EFA20);
      v49 = *(v39 + 2);
      v50 = *(v39 + 3);

      result = sub_213FDC6D0(v49, v50);
      *v39 = v45;
      *(v39 + 1) = v44;
      *(v39 + 2) = a14;
      *(v39 + 3) = a15;
      v39[32] = v60;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD00000000000001ELL;
    v52[1] = 0x800000021478F0F0;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(a21, &qword_27C904848, &unk_2146F4E30);
  sub_213FB2DF4(a13, &qword_27C904850, &unk_2146EDB40);
  sub_213FB2DF4(v62, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v63, &unk_27C904F30, &unk_2146EFA20);
  v53 = *(v39 + 2);
  v54 = *(v39 + 3);

  sub_213FDC6D0(v53, v54);
  *v39 = v45;
  *(v39 + 1) = v44;
  *(v39 + 2) = v46;
  *(v39 + 3) = v47;
  v39[32] = v60;
  return sub_21432887C(a9, type metadata accessor for MessagesAppBalloon);
}

unint64_t sub_214178224(char a1)
{
  result = 0x74786574646CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x74756F79616CLL;
      break;
    case 5:
      result = 0x6449707061;
      break;
    case 6:
      result = 0x656D614E707061;
      break;
    case 7:
      result = 0x6E6F6349707061;
      break;
    case 8:
      result = 0x6C4374756F79616CLL;
      break;
    case 9:
      result = 0x6F79614C6576696CLL;
      break;
    case 10:
      result = 1635017060;
      break;
    case 11:
      result = 0x6F69736E65747865;
      break;
    case 12:
      result = 0x61746144707061;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_214178388@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436BE58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141783B0(uint64_t a1)
{
  v2 = sub_2142F8C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141783EC(uint64_t a1)
{
  v2 = sub_2142F8C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214178428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904848, &unk_2146F4E30);
  MEMORY[0x28223BE20](v80);
  v81 = &v65 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v82);
  v83 = &v65 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v84);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907DE8, &unk_2146F4E40);
  v85 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  v10 = type metadata accessor for MessagesAppBalloon(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2142F8C3C();
  v14 = v86;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v103);
  }

  v77 = v10;
  v78 = v12;
  v86 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v101[0]) = 0;
  v15 = sub_2142E12FC();
  sub_2146DA1C8();
  v16 = v7;
  v76 = v15;
  v17 = v92;
  v18 = v93;
  LOBYTE(v92) = 1;
  sub_2142EFBA8();
  sub_2146DA1C8();
  v84 = v17;
  LOBYTE(v101[0]) = 2;
  sub_2146DA1C8();
  v21 = v92;
  v20 = v93;
  LOBYTE(v92) = 3;
  sub_2142E27A8();
  sub_2146DA1C8();
  v75 = v20;
  v82 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907DF8, &qword_214755E10);
  v100 = 4;
  sub_2142F8C90();
  sub_2146DA1C8();
  v98 = v101[4];
  *v99 = v102[0];
  *&v99[9] = *(v102 + 9);
  v94 = v101[0];
  v95 = v101[1];
  v96 = v101[2];
  v97 = v101[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v89) = 5;
  sub_2142E11FC();
  sub_2146DA1C8();
  v22 = v92;
  v74 = v93;
  LOBYTE(v89) = 6;
  sub_2146DA1C8();
  v72 = v92;
  v73 = v22;
  v23 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904850, &unk_2146EDB40);
  LOBYTE(v89) = 7;
  sub_2142F8D68();
  sub_2146DA1C8();
  v71 = v23;
  LOBYTE(v88[0]) = 8;
  sub_2146DA1C8();
  v76 = *(&v89 + 1);
  v70 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907E20, &qword_2146F4E50);
  LOBYTE(v88[0]) = 9;
  sub_2142F8E40();
  v24 = v16;
  v25 = v9;
  sub_2146DA1C8();
  v69 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v88[0]) = 10;
  sub_2142E1278();
  sub_2146DA1C8();
  v68 = v89;
  LOBYTE(v89) = 11;
  v66 = sub_2146DA168();
  v67 = v26;
  LOBYTE(v89) = 12;
  sub_2142F8F18();
  sub_2146DA1C8();
  v80 = 0;
  v28 = v77;
  v27 = v78;
  sub_213FB2E54(v86, v78 + v77[5], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v83, v27 + v28[7], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(&v92, v27 + v28[11], &qword_27C904850, &unk_2146EDB40);
  sub_213FB2E54(v81, v27 + v28[16], &qword_27C904848, &unk_2146F4E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v65 = 0x800000021478F0D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  v32 = v65;
  *(v31 + 16) = 0xD000000000000017;
  *(v31 + 24) = v32;
  *(v30 + 16) = sub_21409A874;
  *(v30 + 24) = v31;
  *(inited + 32) = v30;
  sub_214042A28(inited, &v89);
  v33 = v91;
  v34 = v82;
  *v27 = v84;
  v27[1] = v34;
  v35 = (v27 + v28[6]);
  v36 = v75;
  *v35 = v21;
  v35[1] = v36;
  v37 = (v27 + v28[8]);
  v38 = *v99;
  v37[4] = v98;
  v37[5] = v38;
  *(v37 + 89) = *&v99[9];
  v39 = v95;
  *v37 = v94;
  v37[1] = v39;
  v40 = v97;
  v37[2] = v96;
  v37[3] = v40;
  v41 = v27 + v28[9];
  *v41 = v73;
  v41[8] = v74;
  v42 = (v27 + v28[10]);
  v43 = v71;
  *v42 = v72;
  v42[1] = v43;
  v44 = v27 + v28[12];
  v45 = v90;
  *v44 = v89;
  *(v44 + 1) = v45;
  v44[32] = v33;
  v46 = (v27 + v28[13]);
  v47 = *(&v69 + 1);
  *v46 = v69;
  v46[1] = v47;
  v48 = (v27 + v28[14]);
  v49 = *(&v68 + 1);
  *v48 = v68;
  v48[1] = v49;
  v50 = (v27 + v28[15]);
  v51 = v67;
  *v50 = v66;
  v50[1] = v51;
  v53 = *v44;
  v52 = *(v44 + 1);
  v54 = *(v44 + 2);
  v55 = *(v44 + 3);
  LODWORD(v51) = v44[32];
  v88[0] = v70;
  v88[1] = v76;
  LODWORD(v82) = v51;
  v87 = v51;
  *&v89 = 0xD00000000000001ELL;
  *(&v89 + 1) = 0x800000021478F0F0;
  *&v90 = 0xD00000000000001CLL;
  *(&v90 + 1) = 0x800000021478A360;

  v77 = v54;
  v75 = v55;
  sub_213FDC9D0(v54, v55);
  v56 = v80;
  v84 = v53;
  v57 = v53(v88, &v87, &v89);
  if (v56)
  {
  }

  else
  {
    if (v57)
    {
      sub_213FDC6D0(v77, v75);

      sub_213FB2DF4(v81, &qword_27C904848, &unk_2146F4E30);
      sub_213FB2DF4(&v92, &qword_27C904850, &unk_2146EDB40);
      sub_213FB2DF4(v83, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v86, &unk_27C904F30, &unk_2146EFA20);
      (*(v85 + 8))(v25, v24);
      v58 = *(v44 + 2);
      v59 = *(v44 + 3);

      sub_213FDC6D0(v58, v59);
      *v44 = v84;
      *(v44 + 1) = v52;
      v60 = v76;
      *(v44 + 2) = v70;
      *(v44 + 3) = v60;
      v44[32] = v82;
      sub_214328704(v78, v79, type metadata accessor for MessagesAppBalloon);
      return __swift_destroy_boxed_opaque_existential_1(v103);
    }

    sub_214031C4C();
    swift_allocError();
    *v61 = 0xD00000000000001ELL;
    v61[1] = 0x800000021478F0F0;
    v61[2] = 0xD00000000000001CLL;
    v61[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v81, &qword_27C904848, &unk_2146F4E30);
  sub_213FB2DF4(&v92, &qword_27C904850, &unk_2146EDB40);
  sub_213FB2DF4(v83, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v86, &unk_27C904F30, &unk_2146EFA20);
  (*(v85 + 8))(v25, v24);
  v62 = *(v44 + 2);
  v63 = *(v44 + 3);

  sub_213FDC6D0(v62, v63);
  *v44 = v84;
  *(v44 + 1) = v52;
  v64 = v75;
  *(v44 + 2) = v77;
  *(v44 + 3) = v64;
  v44[32] = v82;
  __swift_destroy_boxed_opaque_existential_1(v103);
  return sub_21432887C(v78, type metadata accessor for MessagesAppBalloon);
}

uint64_t sub_2141792D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907E48, &qword_2146F4E58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8C3C();
  sub_2146DAA28();
  v45[0] = *v3;
  LOBYTE(v39) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for MessagesAppBalloon(0);
  v51 = v3;
  v33 = v9;
  LOBYTE(v45[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  sub_2142EFE18();
  v10 = v51;
  sub_2146DA388();
  v45[0] = *(v10 + v33[6]);
  LOBYTE(v39) = 2;
  sub_2146DA388();
  v50[0] = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  sub_2142E2910();
  v11 = v51;
  sub_2146DA388();
  v12 = (v11 + v33[8]);
  v13 = v12[3];
  v14 = v12[5];
  v48 = v12[4];
  *v49 = v14;
  *&v49[9] = *(v12 + 89);
  v15 = v12[1];
  v45[0] = *v12;
  v45[1] = v15;
  v16 = v12[3];
  v18 = *v12;
  v17 = v12[1];
  v46 = v12[2];
  v47 = v16;
  v19 = v12[5];
  v43 = v48;
  v44[0] = v19;
  *(v44 + 9) = *(v12 + 89);
  v39 = v18;
  v40 = v17;
  v41 = v46;
  v42 = v13;
  v38 = 4;
  sub_213FB2E54(v45, v36, &qword_27C907DF8, &qword_214755E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907DF8, &qword_214755E10);
  sub_2142F8FCC();
  sub_2146DA388();
  v36[4] = v43;
  *v37 = v44[0];
  *&v37[9] = *(v44 + 9);
  v36[0] = v39;
  v36[1] = v40;
  v36[2] = v41;
  v36[3] = v42;
  sub_213FB2DF4(v36, &qword_27C907DF8, &qword_214755E10);
  v20 = v51;
  v21 = v51 + v33[9];
  v22 = *v21;
  LOBYTE(v21) = v21[8];
  *&v34 = v22;
  BYTE8(v34) = v21;
  v35 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  v34 = *(v20 + v33[10]);
  v35 = 6;
  sub_2146DA388();
  LOBYTE(v34) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904850, &unk_2146EDB40);
  sub_2142F90A4();
  v23 = v51;
  sub_2146DA388();
  v24 = v23 + v33[12];
  v25 = *(v24 + 24);
  if (v25 != 1)
  {
    *&v34 = *(v24 + 16);
    *(&v34 + 1) = v25;
    v35 = 8;
    sub_2146DA388();
    v26 = v33;
    v27 = (v23 + v33[13]);
    v28 = v27[1];
    *&v34 = *v27;
    *(&v34 + 1) = v28;
    v35 = 9;
    sub_213FDC9D0(v34, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907E20, &qword_2146F4E50);
    sub_2142F917C();
    sub_2146DA388();
    sub_213FDC6D0(v34, *(&v34 + 1));
    v29 = (v23 + v26[14]);
    v30 = v29[1];
    *&v34 = *v29;
    *(&v34 + 1) = v30;
    v35 = 10;
    sub_213FDCA18(v34, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v34, *(&v34 + 1));
    LOBYTE(v34) = 11;
    sub_2146DA328();
    LOBYTE(v34) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904848, &unk_2146F4E30);
    sub_2142F9254();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141799D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  v17 = type metadata accessor for MessagesAppCustomAcknowledgement(0);
  sub_21408AC04(a3, a9 + v17[5], &unk_27C904F30, &unk_2146EFA20);
  v18 = (a9 + v17[6]);
  *v18 = a4;
  v18[1] = a5;
  result = sub_21408AC04(a6, a9 + v17[7], &unk_27C9131A0, &unk_2146E9D10);
  v20 = a9 + v17[8];
  *v20 = a7;
  v20[8] = a8 & 1;
  v21 = (a9 + v17[9]);
  *v21 = a10;
  v21[1] = a11;
  return result;
}

unint64_t sub_214179AB4()
{
  v1 = *v0;
  v2 = 0x74786574646CLL;
  v3 = 7107189;
  v4 = 0x6449707061;
  if (v1 != 4)
  {
    v4 = 0x656D614E707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_214179B68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436C278(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214179B90(uint64_t a1)
{
  v2 = sub_2142F9308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214179BCC(uint64_t a1)
{
  v2 = sub_2142F9308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214179C08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907E90, &qword_2146F4E60);
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = &v33 - v10;
  v12 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F9308();
  v39 = v11;
  v13 = v41;
  sub_2146DAA08();
  if (!v13)
  {
    v36 = v5;
    v37 = v8;
    v41 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v45 = 0;
    v14 = sub_2142E12FC();
    v15 = v39;
    v16 = v40;
    sub_2146DA1C8();
    v35 = v14;
    v18 = v43;
    v17 = v44;
    LOBYTE(v43) = 1;
    sub_2142EFBA8();
    sub_2146DA1C8();
    v34 = v18;
    v45 = 2;
    sub_2146DA1C8();
    v21 = v43;
    v20 = v44;
    LOBYTE(v43) = 3;
    sub_2142E27A8();
    sub_2146DA1C8();
    v33 = v21;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v45 = 4;
    sub_2142E11FC();
    sub_2146DA1C8();
    v23 = v43;
    v24 = v44;
    v45 = 5;
    sub_2146DA1C8();
    LODWORD(v35) = v24;
    (*(v41 + 8))(v15, v16);
    v25 = v43;
    v26 = v44;
    v27 = type metadata accessor for MessagesAppCustomAcknowledgement(0);
    v28 = v38;
    sub_21408AC04(v37, v38 + v27[5], &unk_27C904F30, &unk_2146EFA20);
    sub_21408AC04(v36, v28 + v27[7], &unk_27C9131A0, &unk_2146E9D10);
    v29 = v33;
    *v28 = v34;
    v28[1] = v22;
    v30 = (v28 + v27[6]);
    *v30 = v29;
    v30[1] = v20;
    v31 = v28 + v27[8];
    *v31 = v23;
    v31[8] = v35;
    v32 = (v28 + v27[9]);
    *v32 = v25;
    v32[1] = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_21417A11C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EA0, &qword_2146F4E68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9308();
  sub_2146DAA28();
  v15 = *v3;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v14 = type metadata accessor for MessagesAppCustomAcknowledgement(0);
    LOBYTE(v15) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    sub_2142EFE18();
    sub_2146DA388();
    v15 = *(v3 + *(v14 + 24));
    v16 = 2;
    sub_2146DA388();
    LOBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    v9 = v14;
    v10 = v3 + *(v14 + 32);
    v11 = *v10;
    LOBYTE(v10) = v10[8];
    *&v15 = v11;
    BYTE8(v15) = v10;
    v16 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    v15 = *(v3 + *(v9 + 36));
    v16 = 5;
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

int *sub_21417A450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  v14 = a6[1];
  v15 = sub_2146D8B88();
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  result = type metadata accessor for Metadata(0);
  v17 = a7 + result[5];
  *v17 = a2;
  *(v17 + 8) = a3 & 1;
  *(a7 + result[6]) = a4;
  *(a7 + result[7]) = a5;
  v18 = (a7 + result[8]);
  *v18 = v13;
  v18[1] = v14;
  return result;
}

unint64_t sub_21417A52C()
{
  v1 = *v0;
  v2 = 0x476567617373656DLL;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x43656761726F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D617473656D6974;
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

uint64_t sub_21417A5EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436C478(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21417A614(uint64_t a1)
{
  v2 = sub_2142F935C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417A650(uint64_t a1)
{
  v2 = sub_2142F935C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417A68C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_2146D8B88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EA8, &qword_2146F4E70);
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v22 - v9;
  v11 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2142F935C();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v5;
    LOBYTE(v29) = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v13 = v27;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    v32 = 1;
    sub_2142E18D0();
    sub_2146DA1C8();
    v25 = v29;
    v14 = v30;
    LOBYTE(v29) = 2;
    v15 = sub_2146DA178();
    v24 = v14;
    v31 = v15;
    LOBYTE(v29) = 3;
    v23 = sub_2146DA178();
    v32 = 4;
    sub_2142F93B0();
    sub_2146DA1C8();
    (*(v8 + 8))(v10, v13);
    v17 = v29;
    LOBYTE(v13) = BYTE1(v29);
    v18 = v26;
    (*(v12 + 32))(v26, v7, v4);
    v19 = type metadata accessor for Metadata(0);
    v20 = v18 + v19[5];
    *v20 = v25;
    *(v20 + 8) = v24;
    *(v18 + v19[6]) = v31 & 1;
    *(v18 + v19[7]) = v23 & 1;
    v21 = (v18 + v19[8]);
    *v21 = v17;
    v21[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_21417AA44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EB0, &qword_2146F4E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F935C();
  sub_2146DAA28();
  LOBYTE(v17) = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for Metadata(0);
    v10 = (v3 + *(v9 + 20));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v17 = v11;
    v18 = v10;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    sub_2142E2204();
    sub_2146DA388();
    LOBYTE(v17) = 2;
    sub_2146DA338();
    LOBYTE(v17) = 3;
    sub_2146DA338();
    v12 = (v3 + *(v9 + 32));
    v13 = *v12;
    LOBYTE(v12) = v12[1];
    LOBYTE(v17) = v13;
    BYTE1(v17) = v12;
    v16 = 4;
    sub_2142F9404();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21417AD10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_21417AD2C()
{
  v1 = *v0;
  v2 = 0x467463656A627573;
  v3 = 0x6973736573736F70;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x766978656C666572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F467463656A626FLL;
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

uint64_t sub_21417ADF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436C648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21417AE18(uint64_t a1)
{
  v2 = sub_2142F9458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417AE54(uint64_t a1)
{
  v2 = sub_2142F9458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417AE90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EB8, &qword_2146F4E80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9458();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v26 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v9 = *(&v25 + 1);
    v23 = v25;
    v26 = 1;
    sub_2146DA1C8();
    v22 = v9;
    v21 = *(&v25 + 1);
    v10 = v25;
    v26 = 2;
    sub_2146DA1C8();
    v20 = __PAIR128__(*(&v25 + 1), v10);
    v11 = v25;
    v26 = 3;
    sub_2146DA1C8();
    v19 = v25;
    v26 = 4;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v13 = v11;
    v14 = v24;
    v15 = v22;
    *v24 = v23;
    v14[1] = v15;
    v16 = *(&v20 + 1);
    v17 = v21;
    v14[2] = v20;
    v14[3] = v17;
    v14[4] = v13;
    v14[5] = v16;
    v18 = *(&v19 + 1);
    v14[6] = v19;
    v14[7] = v18;
    *(v14 + 4) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21417B1FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EC8, &qword_2146F4E88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  v10 = v1[4];
  v21 = v1[5];
  v22 = v10;
  v11 = v1[7];
  v19 = v1[6];
  v20 = v11;
  v12 = v1[9];
  v17 = v1[8];
  v18 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9458();

  sub_2146DAA28();
  v26 = v8;
  v27 = v7;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v13 = v25;
  sub_2146DA388();
  if (v13)
  {
  }

  else
  {
    v14 = v22;

    v26 = v24;
    v27 = v23;
    v28 = 1;
    sub_2146DA388();
    v26 = v14;
    v27 = v21;
    v28 = 2;
    sub_2146DA388();
    v26 = v19;
    v27 = v20;
    v28 = 3;
    sub_2146DA388();
    v26 = v17;
    v27 = v18;
    v28 = 4;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_21417B4C4@<Q0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *&v4[7] = *a2;
  *&v4[23] = a2[1];
  *&v4[39] = a2[2];
  *&v4[55] = a2[3];
  *&v4[71] = a2[4];
  *a3 = *a1;
  *(a3 + 1) = *v4;
  *(a3 + 17) = *&v4[16];
  result = *&v4[32];
  *(a3 + 80) = *&v4[79];
  *(a3 + 65) = *&v4[64];
  *(a3 + 49) = *&v4[48];
  *(a3 + 33) = *&v4[32];
  return result;
}

uint64_t sub_21417B528()
{
  if (*v0)
  {
    return 0x6E756F6E6F7270;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_21417B564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E756F6E6F7270 && a2 == 0xE700000000000000)
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

uint64_t sub_21417B640(uint64_t a1)
{
  v2 = sub_2142F94AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417B67C(uint64_t a1)
{
  v2 = sub_2142F94AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417B6B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907ED0, &qword_2146F4E90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F94AC();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = 0;
    sub_2142F9500();
    sub_2146DA1C8();
    v9 = v15;
    v20 = 1;
    sub_2142F9554();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *&v14[39] = v17;
    *&v14[23] = v16;
    *&v14[55] = v18;
    *&v14[71] = v19;
    *&v14[7] = v15;
    v10 = *&v14[48];
    *(a2 + 33) = *&v14[32];
    *(a2 + 49) = v10;
    *(a2 + 65) = *&v14[64];
    v11 = *&v14[16];
    *(a2 + 1) = *v14;
    *a2 = v9;
    *(a2 + 80) = *&v14[79];
    *(a2 + 17) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21417B8E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EF0, &qword_2146F4E98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  v21 = *(v1 + 40);
  v22 = v9;
  v23 = *(v1 + 72);
  v19 = *(v1 + 8);
  v20 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F94AC();
  sub_2146DAA28();
  LOBYTE(v14) = v7;
  LOBYTE(v13[0]) = 0;
  sub_2142F95A8();
  v10 = v12[1];
  sub_2146DA388();
  if (!v10)
  {
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v14 = v19;
    v15 = v20;
    v24 = 1;
    sub_2142F95FC(&v19, v13);
    sub_2142F9658();
    sub_2146DA388();
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v18;
    v13[0] = v14;
    v13[1] = v15;
    sub_2142F96AC(v13);
  }

  return (*(v4 + 8))(v6, v3);
}

BlastDoor::Morphology __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Morphology.init(with:partOfSpeech:number:customPronouns:)(BlastDoor::GrammaticalGender with, BlastDoor::PartOfSpeech partOfSpeech, BlastDoor::GrammaticalNumber number, Swift::OpaquePointer customPronouns)
{
  v5 = *partOfSpeech;
  v6 = *number;
  *v4 = *with;
  *(v4 + 1) = v5;
  *(v4 + 2) = v6;
  *(v4 + 8) = customPronouns;
  LOBYTE(result.customPronouns._rawValue) = partOfSpeech;
  result.grammaticalGender = with;
  return result;
}

unint64_t sub_21417BB4C()
{
  v1 = 0x7053664F74726170;
  v2 = 0x7265626D756ELL;
  if (*v0 != 2)
  {
    v2 = 0x72506D6F74737563;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_21417BBDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436C81C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21417BC04(uint64_t a1)
{
  v2 = sub_2142F9700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417BC40(uint64_t a1)
{
  v2 = sub_2142F9700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Morphology.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F08, &qword_2146F4EA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9700();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = 0;
    sub_2142F9754();
    sub_2146DA1C8();
    v9 = v21;
    v18 = 1;
    sub_2142F97A8();
    sub_2146DA1C8();
    v10 = v19;
    v16 = 2;
    sub_2142F97FC();
    sub_2146DA1C8();
    HIDWORD(v13) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F30, &qword_2146F4EA8);
    v15 = 3;
    sub_2142F9850();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    *(a2 + 1) = v10;
    *(a2 + 2) = BYTE4(v13);
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Morphology.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F48, &qword_2146F4EB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v15 = v1[2];
  v16 = v9;
  v14 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9700();
  sub_2146DAA28();
  v24 = v8;
  v23 = 0;
  sub_2142F9928();
  sub_2146DA388();
  if (!v2)
  {
    v10 = v15;
    v11 = v14;
    v22 = v16;
    v21 = 1;
    sub_2142F997C();
    sub_2146DA388();
    v20 = v10;
    v19 = 2;
    sub_2142F99D0();
    sub_2146DA388();
    v17 = v11;
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F30, &qword_2146F4EA8);
    sub_2142F9A24();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21417C174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_21417C1FC(uint64_t a1)
{
  v2 = sub_2142F9AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417C238(uint64_t a1)
{
  v2 = sub_2142F9AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NameAndPhoto.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F78, &qword_2146F4EB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9AFC();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v11;
    sub_2142F9B50();
    sub_2146DA1C8();
    (*(v5 + 8))(v7, v4);
    memcpy(v8, v10, 0x261uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NameAndPhoto.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F90, &qword_2146F4EC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  memcpy(v10, v1, 0x261uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9BA4(v10, v9);
  sub_2142F9AFC();
  sub_2146DAA28();
  memcpy(v9, v10, 0x261uLL);
  sub_2142F9C00();
  sub_2146DA388();
  memcpy(v8, v9, 0x261uLL);
  sub_2142F9C54(v8);
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_21417C5B8@<Q0>(char a1@<W0>, _DWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10)
{
  v10 = *a4;
  v11 = a4[4];
  v12 = *(a4 + 40);
  v13 = *a6;
  v14 = a6[4];
  v15 = *(a6 + 40);
  v16 = *a7;
  v17 = a7[4];
  v18 = *(a7 + 40);
  v19 = *a8;
  v20 = a8[4];
  v21 = *(a8 + 40);
  *&v30[35] = a3[2];
  *&v30[19] = a3[1];
  *&v30[3] = *a3;
  *&v30[99] = a3[6];
  *&v30[83] = a3[5];
  *&v30[67] = a3[4];
  *&v30[51] = a3[3];
  *&v30[163] = a3[10];
  *&v30[147] = a3[9];
  *&v30[131] = a3[8];
  *&v30[115] = a3[7];
  *&v30[220] = *(a3 + 217);
  *&v30[211] = a3[13];
  *&v30[195] = a3[12];
  *&v30[179] = a3[11];
  v29 = *(a4 + 8);
  *&v28[23] = a5[1];
  *&v28[39] = a5[2];
  *&v28[55] = a5[3];
  *&v28[64] = *(a5 + 57);
  *&v28[7] = *a5;
  v27 = *(a6 + 8);
  v26 = *(a7 + 8);
  v25 = *(a8 + 8);
  *&v24[7] = *a10;
  *&v24[23] = a10[1];
  *&v24[80] = *(a10 + 73);
  *&v24[71] = a10[4];
  *&v24[55] = a10[3];
  *&v24[39] = a10[2];
  *a9 = a1;
  *(a9 + 1) = *a2;
  *(a9 + 37) = *&v30[32];
  *(a9 + 21) = *&v30[16];
  *(a9 + 5) = *v30;
  *(a9 + 101) = *&v30[96];
  *(a9 + 85) = *&v30[80];
  *(a9 + 69) = *&v30[64];
  *(a9 + 53) = *&v30[48];
  *(a9 + 165) = *&v30[160];
  *(a9 + 149) = *&v30[144];
  *(a9 + 133) = *&v30[128];
  *(a9 + 117) = *&v30[112];
  *(a9 + 225) = *&v30[220];
  *(a9 + 213) = *&v30[208];
  *(a9 + 197) = *&v30[192];
  *(a9 + 181) = *&v30[176];
  *(a9 + 248) = v10;
  *(a9 + 256) = v29;
  *(a9 + 264) = *(a4 + 1);
  *(a9 + 280) = v11;
  *(a9 + 288) = v12;
  *(a9 + 321) = *&v28[32];
  *(a9 + 337) = *&v28[48];
  *(a9 + 353) = *&v28[64];
  *(a9 + 289) = *v28;
  *(a9 + 305) = *&v28[16];
  *(a9 + 376) = v13;
  *(a9 + 384) = v27;
  *(a9 + 392) = *(a6 + 1);
  *(a9 + 408) = v14;
  *(a9 + 416) = v15;
  *(a9 + 424) = v16;
  *(a9 + 432) = v26;
  *(a9 + 440) = *(a7 + 1);
  *(a9 + 456) = v17;
  *(a9 + 464) = v18;
  *(a9 + 472) = v19;
  *(a9 + 480) = v25;
  *(a9 + 488) = *(a8 + 1);
  *(a9 + 504) = v20;
  *(a9 + 512) = v21;
  v22 = (a9 + 513);
  *v22 = *v24;
  v22[1] = *&v24[16];
  result = *&v24[32];
  v22[4] = *&v24[64];
  v22[5] = *&v24[80];
  v22[2] = *&v24[32];
  v22[3] = *&v24[48];
  return result;
}

uint64_t sub_21417C800(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000014;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000014;
    if (!a1)
    {
      v6 = 0xD00000000000001CLL;
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
    v1 = 0x6F6C6C41796E6564;
    v2 = 0x694C657669746361;
    v3 = 0x4C6465726F6E6769;
    if (a1 != 7)
    {
      v3 = 0x644964726F636572;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21417C958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436C994(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21417C980(uint64_t a1)
{
  v2 = sub_2142F9CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417C9BC(uint64_t a1)
{
  v2 = sub_2142F9CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417C9F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907FA0, &qword_2146F4EC8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v47.i8[-v8];
  v10 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F9CA8();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    LOBYTE(v95) = 0;
    sub_2142E1378();
    sub_2146DA1C8();
    v12 = v110;
    LOBYTE(v95) = 1;
    sub_2142F9CFC();
    sub_2146DA1C8();
    v3.i32[0] = v110;
    v109 = 2;
    sub_2142F9D50();
    sub_2146DA1C8();
    v107 = v122;
    *v108 = v123[0];
    *&v108[9] = *(v123 + 9);
    v103 = v118;
    v104 = v119;
    v106 = v121;
    v105 = v120;
    v99 = v114;
    v100 = v115;
    v101 = v116;
    v102 = v117;
    v95 = v110;
    v96 = v111;
    v97 = v112;
    v98 = v113;
    LOBYTE(v91) = 3;
    sub_2142F9DA4();
    sub_2146DA1C8();
    v71 = v12;
    v69 = v81;
    v70 = v80;
    v14 = *(&v81 + 1);
    v15 = v82;
    v67 = BYTE8(v80);
    v68 = BYTE8(v82);
    v90 = 4;
    sub_2142F9E4C();
    sub_2146DA1C8();
    v65 = v14;
    v66 = v15;
    v88 = v93;
    *v89 = v94[0];
    *&v89[9] = *(v94 + 9);
    v86 = v91;
    v87 = v92;
    v85 = 5;
    sub_2142F9EA0();
    sub_2146DA1C8();
    v61 = BYTE8(v80);
    v64 = *(&v81 + 1);
    v16 = v81;
    v62 = v80;
    v63 = v82;
    LODWORD(v15) = BYTE8(v82);
    v85 = 6;
    sub_2142F9F48();
    sub_2146DA1C8();
    v59 = v15;
    v60 = v16;
    v58 = v80;
    v57 = BYTE8(v80);
    v17 = *(&v81 + 1);
    v56 = v81;
    v18 = v82;
    v55 = BYTE8(v82);
    v85 = 7;
    sub_2142F9F9C();
    sub_2146DA1C8();
    v53 = v17;
    v54 = v18;
    LOBYTE(v17) = BYTE8(v80);
    v49 = v81;
    v50 = v80;
    v51 = v82;
    v52 = *(&v81 + 1);
    v48 = BYTE8(v82);
    v85 = 8;
    sub_2142F9FF0();
    sub_2146DA1C8();
    v19 = v63;
    v47 = vmovl_u8(v3);
    (*(v11 + 8))(v9, v6);
    *(&v79[11] + 3) = v106;
    *(&v79[12] + 3) = v107;
    *(&v79[13] + 3) = *v108;
    *(&v79[13] + 12) = *&v108[9];
    *(&v79[7] + 3) = v102;
    *(&v79[8] + 3) = v103;
    *(&v79[9] + 3) = v104;
    *(&v79[10] + 3) = v105;
    *(&v79[3] + 3) = v98;
    *(&v79[4] + 3) = v99;
    *(&v79[5] + 3) = v100;
    *(&v79[6] + 3) = v101;
    *(v79 + 3) = v95;
    *(&v79[1] + 3) = v96;
    *(&v79[2] + 3) = v97;
    v78 = v67;
    *(&v77[1] + 7) = v87;
    *(&v77[2] + 7) = v88;
    *(&v77[3] + 7) = *v89;
    v77[4] = *&v89[9];
    *(v77 + 7) = v86;
    v20 = v61;
    v76 = v61;
    v21 = v57;
    v75 = v57;
    v74 = v17;
    *(v73 + 7) = v80;
    *(&v73[1] + 7) = v81;
    v73[5] = *&v84[9];
    *(&v73[4] + 7) = *v84;
    *(&v73[3] + 7) = v83;
    *(&v73[2] + 7) = v82;
    v22 = v67;
    *a2 = v71;
    *(a2 + 1) = vuzp1_s8(*v47.i8, *v47.i8).u32[0];
    v23 = v79[0];
    v24 = v79[1];
    v25 = v79[3];
    *(a2 + 37) = v79[2];
    *(a2 + 21) = v24;
    *(a2 + 5) = v23;
    v26 = v79[4];
    v27 = v79[5];
    v28 = v79[7];
    *(a2 + 101) = v79[6];
    *(a2 + 85) = v27;
    *(a2 + 69) = v26;
    *(a2 + 53) = v25;
    v29 = v79[8];
    v30 = v79[9];
    v31 = v79[11];
    *(a2 + 165) = v79[10];
    *(a2 + 149) = v30;
    *(a2 + 133) = v29;
    *(a2 + 117) = v28;
    v32 = v79[12];
    v33 = v79[13];
    *(a2 + 225) = *(&v79[13] + 12);
    *(a2 + 213) = v33;
    *(a2 + 197) = v32;
    *(a2 + 181) = v31;
    *(a2 + 248) = v70;
    *(a2 + 256) = v22;
    v34 = v65;
    *(a2 + 264) = v69;
    *(a2 + 272) = v34;
    *(a2 + 280) = v66;
    *(a2 + 288) = v68;
    v35 = v77[1];
    v36 = v77[3];
    v37 = v77[4];
    *(a2 + 321) = v77[2];
    *(a2 + 337) = v36;
    *(a2 + 353) = v37;
    *(a2 + 289) = v77[0];
    *(a2 + 305) = v35;
    *(a2 + 376) = v62;
    *(a2 + 384) = v20;
    v38 = v64;
    *(a2 + 392) = v60;
    *(a2 + 400) = v38;
    *(a2 + 408) = v19;
    *(a2 + 416) = v59;
    *(a2 + 424) = v58;
    *(a2 + 432) = v21;
    v40 = v53;
    v39 = v54;
    *(a2 + 440) = v56;
    *(a2 + 448) = v40;
    *(a2 + 456) = v39;
    *(a2 + 464) = v55;
    v41 = v49;
    *(a2 + 472) = v50;
    *(a2 + 480) = v17;
    v42 = v51;
    v43 = v52;
    *(a2 + 488) = v41;
    *(a2 + 496) = v43;
    *(a2 + 504) = v42;
    *(a2 + 512) = v48;
    v44 = v73[3];
    *(a2 + 545) = v73[2];
    *(a2 + 561) = v44;
    v45 = v73[5];
    *(a2 + 577) = v73[4];
    *(a2 + 593) = v45;
    v46 = v73[1];
    *(a2 + 513) = v73[0];
    *(a2 + 529) = v46;
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_21417D2BC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907FF0, &qword_2146F4ED0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - v6;
  v66 = *v1;
  v2.i32[0] = *(v1 + 1);
  v8 = *(v1 + 184);
  v9 = *(v1 + 216);
  v112 = *(v1 + 200);
  v113[0] = v9;
  *(v113 + 9) = *(v1 + 225);
  v10 = *(v1 + 120);
  v11 = *(v1 + 152);
  v108 = *(v1 + 136);
  v109 = v11;
  v12 = *(v1 + 168);
  v111 = v8;
  v110 = v12;
  v13 = *(v1 + 56);
  v14 = *(v1 + 88);
  v104 = *(v1 + 72);
  v105 = v14;
  v15 = *(v1 + 104);
  v107 = v10;
  v106 = v15;
  v16 = *(v1 + 24);
  v100 = *(v1 + 8);
  v101 = v16;
  v17 = *(v1 + 40);
  v103 = v13;
  v102 = v17;
  v18 = *(v1 + 31);
  v19 = v1[256];
  v20 = *(v1 + 34);
  *&v63 = *(v1 + 33);
  *(&v63 + 1) = v20;
  v64 = *(v1 + 35);
  v65 = v18;
  LODWORD(v20) = v1[288];
  v61 = v19;
  v62 = v20;
  v21 = *(v1 + 344);
  v116 = *(v1 + 328);
  v117[0] = v21;
  *(v117 + 9) = *(v1 + 353);
  v22 = *(v1 + 296);
  v115 = *(v1 + 312);
  v114 = v22;
  v23 = *(v1 + 47);
  v57 = v1[384];
  v24 = *(v1 + 50);
  v56 = *(v1 + 49);
  v58 = v23;
  v59 = v24;
  v60 = *(v1 + 51);
  v55 = v1[416];
  v25 = *(v1 + 53);
  v51 = v1[432];
  v26 = *(v1 + 56);
  v50 = *(v1 + 55);
  v52 = v25;
  v53 = v26;
  v54 = *(v1 + 57);
  v49 = v1[464];
  v27 = *(v1 + 59);
  v45 = v1[480];
  v28 = *(v1 + 62);
  v44 = *(v1 + 61);
  v46 = v27;
  v47 = v28;
  v48 = *(v1 + 63);
  v29 = v1[512];
  v30 = *(v1 + 568);
  v120 = *(v1 + 552);
  v121 = v30;
  v122[0] = *(v1 + 584);
  *(v122 + 9) = *(v1 + 593);
  v31 = *(v1 + 536);
  v118 = *(v1 + 520);
  v119 = v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9CA8();
  sub_2146DAA28();
  LOBYTE(v86) = v66;
  LOBYTE(v83[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  v32 = v67;
  sub_2146DA388();
  if (!v32)
  {
    v33 = v65;
    LODWORD(v67) = v29;
    v34 = vmovl_u8(v2).u64[0];
    LODWORD(v86) = vuzp1_s8(v34, v34).u32[0];
    LOBYTE(v83[0]) = 1;
    sub_2142FA044();
    sub_2146DA388();
    v98 = v112;
    v99[0] = v113[0];
    *(v99 + 9) = *(v113 + 9);
    v94 = v108;
    v95 = v109;
    v96 = v110;
    v97 = v111;
    v90 = v104;
    v91 = v105;
    v92 = v106;
    v93 = v107;
    v86 = v100;
    v87 = v101;
    v88 = v102;
    v89 = v103;
    v85 = 2;
    sub_2142FA098(&v100, v83);
    sub_2142FA0F4();
    sub_2146DA388();
    v83[12] = v98;
    *v84 = v99[0];
    *&v84[9] = *(v99 + 9);
    v83[8] = v94;
    v83[9] = v95;
    v83[10] = v96;
    v83[11] = v97;
    v83[4] = v90;
    v83[5] = v91;
    v83[6] = v92;
    v83[7] = v93;
    v83[0] = v86;
    v83[1] = v87;
    v83[2] = v88;
    v83[3] = v89;
    sub_2142F9DF8(v83);
    *&v71 = v33;
    BYTE8(v71) = v61;
    v72 = v63;
    v35 = v64;
    *&v73 = v64;
    BYTE8(v73) = v62;
    LOBYTE(v68[0]) = 3;

    sub_213FBE134(v35);
    sub_2142FA148();
    sub_2146DA388();
    v36 = v73;

    sub_213FB7170(v36);
    v81 = v116;
    v82[0] = v117[0];
    *(v82 + 9) = *(v117 + 9);
    v79 = v114;
    v80 = v115;
    v78 = 4;
    sub_2142FA19C(&v114, &v71);
    sub_2142FA1F8();
    sub_2146DA388();
    v76[2] = v81;
    *v77 = v82[0];
    *&v77[9] = *(v82 + 9);
    v76[0] = v79;
    v76[1] = v80;
    sub_2142F9EF4(v76);
    *&v71 = v58;
    BYTE8(v71) = v57;
    *&v72 = v56;
    *(&v72 + 1) = v59;
    v37 = v60;
    *&v73 = v60;
    BYTE8(v73) = v55;
    LOBYTE(v68[0]) = 5;

    sub_213FBE134(v37);
    sub_2142FA24C();
    sub_2146DA388();
    v38 = v73;

    sub_213FB7170(v38);
    *&v71 = v52;
    BYTE8(v71) = v51;
    *&v72 = v50;
    *(&v72 + 1) = v53;
    v39 = v54;
    *&v73 = v54;
    BYTE8(v73) = v49;
    LOBYTE(v68[0]) = 6;

    sub_213FBE134(v39);
    sub_2142FA2A0();
    sub_2146DA388();
    v40 = v73;

    sub_213FB7170(v40);
    *&v71 = v46;
    BYTE8(v71) = v45;
    *&v72 = v44;
    *(&v72 + 1) = v47;
    v41 = v48;
    *&v73 = v48;
    BYTE8(v73) = v67;
    LOBYTE(v68[0]) = 7;

    sub_213FBE134(v41);
    sub_2142FA2F4();
    sub_2146DA388();
    v42 = v73;

    sub_213FB7170(v42);
    v73 = v120;
    v74 = v121;
    v75[0] = v122[0];
    *(v75 + 9) = *(v122 + 9);
    v71 = v118;
    v72 = v119;
    v70 = 8;
    sub_2142FA348(&v118, v68);
    sub_2142FA3A4();
    sub_2146DA388();
    v68[2] = v73;
    v68[3] = v74;
    *v69 = v75[0];
    *&v69[9] = *(v75 + 9);
    v68[0] = v71;
    v68[1] = v72;
    sub_2142FA3F8(v68);
  }

  return (*(v5 + 8))(v7, v4);
}

double sub_21417DAB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, unint64_t a16)
{
  v142 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  v18[2] = sub_214059904;
  v18[3] = 0;
  v18[4] = 16;
  *(v17 + 16) = sub_2142FA44C;
  *(v17 + 24) = v18;
  *(v16 + 32) = v17;
  sub_214042B80(v16, &v81);
  v19 = v81;
  v20 = v83;
  v37 = v82;
  v21 = v84;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  v24[2] = sub_214059904;
  v24[3] = 0;
  v24[4] = 16;
  v24[5] = sub_21403C354;
  v24[6] = 0;
  *(v23 + 16) = sub_21438F670;
  *(v23 + 24) = v24;
  *(v22 + 32) = v23;
  sub_214042CD0(v22, &v129);
  v75 = v129;
  v40 = v130;
  v42 = v131;
  v80 = v132;
  v73 = v133;
  sub_2146AAE04(v127);
  v78 = v127[0];
  v44 = v127[1];
  v45 = v127[2];
  v66 = v127[3];
  v76 = v128;
  sub_2146AAF74(v125);
  v65 = v125[0];
  v47 = v125[1];
  v70 = v125[2];
  v59 = v125[3];
  v63 = v126;
  sub_2146AB0E4(v123);
  v55 = v123[0];
  v58 = v123[2];
  v49 = v123[1];
  v50 = v123[3];
  v56 = v124;
  sub_2146AB254(&v119);
  v53 = v119;
  v51 = v120;
  v54 = v121;
  v52 = v122;
  v134 = a14 & 1;
  v129 = a1;
  v130 = v142;
  LOBYTE(v127[0]) = v21;
  *&v81 = 0xD00000000000002BLL;
  *(&v81 + 1) = 0x800000021478F110;
  v82 = 0xD00000000000001CLL;
  v83 = 0x800000021478A360;

  v25 = (v19)(&v129, v127, &v81);
  if (!v39)
  {
    if (v25)
    {

      *&v81 = v75;
      *(&v81 + 1) = v40;
      v82 = v42;
      v83 = v80;
      v84 = v73;

      sub_213FDCA18(v42, v80);
      sub_214032024(a3, a4, 2, 0xD000000000000032, 0x800000021478F140, 0xD00000000000001CLL, 0x800000021478A360);

      v27 = v81;
      v35 = v82;
      v38 = v83;
      v74 = v84;

      sub_213FDC6BC(v42, v80);
      *&v81 = v78;
      *(&v81 + 1) = v44;
      v82 = v45;
      v83 = v66;
      v84 = v76;

      sub_21404F7E0(v45, v66);
      sub_214032118(a5, a6, 2, 0xD000000000000025, 0x800000021478F180, 0xD00000000000001CLL, 0x800000021478A360);

      v28 = v81;
      v41 = v82;
      v43 = v83;
      v77 = v84;

      sub_214032564(v45, v66);
      *&v81 = v65;
      *(&v81 + 1) = v47;
      v82 = v70;
      v83 = v59;
      v84 = v63;

      sub_21404F7E0(v70, v59);
      sub_214032118(a7, a8, 2, 0xD00000000000002BLL, 0x800000021478F1B0, 0xD00000000000001CLL, 0x800000021478A360);

      v29 = v81;
      v46 = v82;
      v67 = v83;
      v64 = v84;

      sub_214032564(v70, v59);
      *&v81 = v55;
      *(&v81 + 1) = v49;
      v82 = v58;
      v83 = v50;
      v84 = v56;

      sub_21404F7E0(v58, v50);
      sub_214032118(a10, a11, 2, 0xD000000000000029, 0x800000021478F1E0, 0xD00000000000001CLL, 0x800000021478A360);

      v30 = v81;
      v48 = v82;
      v60 = v83;
      v57 = v84;

      sub_214032564(v58, v50);
      v81 = v53;
      v82 = v51;
      v83 = v54;
      v84 = v52;

      sub_21404F7E0(v51, v54);
      sub_214032118(a15, a16, 2, 0xD000000000000028, 0x800000021478F210, 0xD00000000000001CLL, 0x800000021478A360);
      sub_213FDC6BC(a15, a16);
      sub_213FDC6BC(a10, a11);
      sub_213FDC6BC(a7, a8);
      sub_213FDC6BC(a5, a6);
      sub_213FB54FC(a3, a4);

      v31 = v82;
      v32 = v83;
      v33 = v84;

      sub_214032564(v51, v54);
      *a9 = v19;
      *(a9 + 16) = a1;
      *(a9 + 24) = v142;
      *(a9 + 32) = v21;
      *(a9 + 33) = v141[0];
      *(a9 + 36) = *(v141 + 3);
      *(a9 + 40) = v27;
      *(a9 + 56) = v35;
      *(a9 + 64) = v38;
      *(a9 + 72) = v74;
      *(a9 + 73) = *v140;
      *(a9 + 76) = *&v140[3];
      *(a9 + 80) = v28;
      *(a9 + 96) = v41;
      *(a9 + 104) = v43;
      *(a9 + 112) = v77;
      *(a9 + 113) = *v139;
      *(a9 + 116) = *&v139[3];
      *(a9 + 120) = v29;
      *(a9 + 136) = v46;
      *(a9 + 144) = v67;
      *(a9 + 152) = v64;
      *(a9 + 153) = *v138;
      *(a9 + 156) = *&v138[3];
      *(a9 + 160) = v30;
      *(a9 + 176) = v48;
      *(a9 + 184) = v60;
      *(a9 + 192) = v57;
      *(a9 + 193) = a12 & 1;
      *(a9 + 198) = v137;
      *(a9 + 194) = v136;
      *(a9 + 200) = a13;
      *(a9 + 208) = a14 & 1;
      *(a9 + 212) = *(v135 + 3);
      *(a9 + 209) = v135[0];
      result = *&v81;
      *(a9 + 216) = v81;
      *(a9 + 232) = v31;
      *(a9 + 240) = v32;
      *(a9 + 248) = v33;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000002BLL;
    v26[1] = 0x800000021478F110;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6BC(a15, a16);
  sub_213FDC6BC(a10, a11);
  sub_213FDC6BC(a7, a8);
  sub_213FDC6BC(a5, a6);
  sub_213FB54FC(a3, a4);

  v81 = v19;
  v82 = v37;
  v83 = v20;
  v84 = v21;
  *v85 = v141[0];
  *&v85[3] = *(v141 + 3);
  v86 = v75;
  v87 = v40;
  v88 = v42;
  v89 = v80;
  v90 = v73;
  *v91 = *v140;
  *&v91[3] = *&v140[3];
  v92 = v78;
  v93 = v44;
  v94 = v45;
  v95 = v66;
  v96 = v76;
  *&v97[3] = *&v139[3];
  *v97 = *v139;
  v98 = v65;
  v99 = v47;
  v100 = v70;
  v101 = v59;
  v102 = v63;
  *v103 = *v138;
  *&v103[3] = *&v138[3];
  v104 = v55;
  v105 = v49;
  v106 = v58;
  v107 = v50;
  v108 = v56;
  v109 = a12 & 1;
  v111 = v137;
  v110 = v136;
  v112 = a13;
  v113 = a14 & 1;
  *&v114[3] = *(v135 + 3);
  *v114 = v135[0];
  v115 = v53;
  v116 = v51;
  v117 = v54;
  v118 = v52;
  sub_2142FA450(&v81);
  return result;
}

unint64_t sub_21417E8A0()
{
  v1 = *v0;
  if (v1 == 6)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000014;
  if (v1 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (v1 != 2)
  {
    v4 = 0xD000000000000016;
  }

  v5 = 0xD00000000000001DLL;
  if (!*v0)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21417E97C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436CC9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21417E9A4(uint64_t a1)
{
  v2 = sub_2142FA4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417E9E0(uint64_t a1)
{
  v2 = sub_2142FA4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417EA1C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908038, &qword_2146F4ED8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v71 - v7;
  v9 = a1[3];
  v195 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142FA4A4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v195);
  }

  v122 = a2;
  v123 = v6;
  v139[0] = 0;
  v10 = sub_2146DA168();
  v12 = v11;
  v121 = v10;
  LOBYTE(v124) = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v120 = v12;
  v13 = *v139;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v124) = 2;
  v15 = sub_2142E1278();
  sub_2146DA1C8();
  v118 = *(&v13 + 1);
  v119 = v13;
  v16 = *v139;
  v17 = v14;
  v18 = *&v139[8];
  LOBYTE(v124) = 3;
  sub_2146DA1C8();
  v116 = v18;
  v117 = v16;
  v19 = *v139;
  LOBYTE(v124) = 4;
  sub_2146DA1C8();
  v112 = v15;
  v113 = v17;
  v114 = *(&v19 + 1);
  v115 = v19;
  v21 = *v139;
  v139[0] = 5;
  v110 = sub_2146DA178();
  v111 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  LOBYTE(v124) = 6;
  sub_2142E14CC();
  sub_2146DA1C8();
  v108 = *v139;
  v109 = v139[8];
  v185 = 7;
  sub_2146DA1C8();
  v89 = *(&v21 + 1);
  v81 = v8;
  v82 = v5;
  v84 = v186;
  v85 = v187;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v22 = swift_allocObject();
  v107 = xmmword_2146E9BF0;
  *(v22 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  v24[2] = sub_214059904;
  v24[3] = 0;
  v24[4] = 16;
  *(v23 + 16) = sub_21438F678;
  *(v23 + 24) = v24;
  *(v22 + 32) = v23;
  sub_214042B80(v22, v139);
  v112 = *&v139[8];
  v113 = *v139;
  v25 = *&v139[24];
  v78 = *&v139[16];
  LODWORD(v23) = v140;
  v26 = swift_allocObject();
  *(v26 + 16) = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  v28[2] = sub_214059904;
  v28[3] = 0;
  v28[4] = 16;
  v28[5] = sub_21403C354;
  v28[6] = 0;
  *(v27 + 16) = sub_21438F670;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  sub_214042CD0(v26, &v124);
  v106 = *(&v124 + 1);
  v100 = v124;
  v105 = *(&v125 + 1);
  *&v107 = v125;
  v104 = v126;
  sub_2146AAE04(&v180);
  v102 = v180;
  v96 = v181;
  v103 = v182;
  v101 = v183;
  sub_2146AAF74(v178);
  v95 = v178[0];
  v99 = v178[2];
  v97 = v178[1];
  v98 = v178[3];
  v94 = v179;
  sub_2146AB0E4(&v174);
  v92 = v174;
  v90 = v175;
  v93 = v176;
  v91 = v177;
  sub_2146AB254(&v170);
  v86 = v170;
  v87 = v171;
  v88 = v172;
  v80 = v173;
  v83 = v110 & 1;
  v184 = v109;
  *&v124 = v121;
  *(&v124 + 1) = v120;
  v110 = v23;
  LOBYTE(v180) = v23;
  *v139 = 0xD00000000000002BLL;
  *&v139[8] = 0x800000021478F110;
  *&v139[16] = 0xD00000000000001CLL;
  *&v139[24] = 0x800000021478A360;
  v79 = v25;

  v29 = v113(&v124, &v180, v139);
  v30 = v113;
  if (v29)
  {

    *v139 = v100;
    v31 = v107;
    *&v139[8] = v106;
    *&v139[16] = v107;
    v32 = v105;
    *&v139[24] = v105;
    v140 = v104;

    sub_213FDCA18(v31, v32);
    sub_214032024(v119, v118, 2, 0xD000000000000032, 0x800000021478F140, 0xD00000000000001CLL, 0x800000021478A360);

    v41 = *&v139[8];
    v100 = *v139;
    v78 = *&v139[24];
    v79 = *&v139[16];
    v104 = v140;

    sub_213FDC6BC(v107, v105);
    *v139 = v102;
    v42 = v96;
    *&v139[16] = v96;
    v43 = v103;
    *&v139[24] = v103;
    v140 = v101;

    sub_21404F7E0(v42, v43);
    sub_214032118(v117, v116, 2, 0xD000000000000025, 0x800000021478F180, 0xD00000000000001CLL, 0x800000021478A360);

    v76 = *&v139[8];
    *&v102 = *v139;
    v77 = *&v139[16];
    v101 = v140;

    sub_214032564(v96, v103);
    *v139 = v95;
    v44 = v98;
    *&v139[8] = v97;
    v45 = v99;
    *&v139[16] = v99;
    *&v139[24] = v98;
    v140 = v94;

    sub_21404F7E0(v45, v44);
    sub_214032118(v115, v114, 2, 0xD00000000000002BLL, 0x800000021478F1B0, 0xD00000000000001CLL, 0x800000021478A360);

    v75 = *&v139[8];
    v95 = *v139;
    v96 = *&v139[24];
    v94 = v140;

    sub_214032564(v99, v98);
    *v139 = v92;
    v46 = v90;
    *&v139[16] = v90;
    v47 = v93;
    *&v139[24] = v93;
    v140 = v91;

    sub_21404F7E0(v46, v47);
    sub_214032118(v111, v89, 2, 0xD000000000000029, 0x800000021478F1E0, 0xD00000000000001CLL, 0x800000021478A360);

    v73 = *&v139[8];
    *&v92 = *v139;
    v74 = *&v139[16];
    v91 = v140;

    sub_214032564(v90, v93);
    v180 = v86;
    v48 = v87;
    v49 = v88;
    v181 = v87;
    v182 = v88;
    v183 = v80;

    sub_21404F7E0(v48, v49);
    sub_214032118(v84, v85, 2, 0xD000000000000028, 0x800000021478F210, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v111, v89);
    sub_213FDC6BC(v115, v114);
    sub_213FDC6BC(v117, v116);
    sub_213FB54FC(v119, v118);
    sub_213FDC6BC(v84, v85);
    (*(v123 + 8))(v81, v82);
    v118 = *(&v180 + 1);
    v50 = v180;
    v119 = v180;
    v51 = v181;
    v123 = v181;
    v117 = v182;
    v52 = v183;

    sub_214032564(v87, v88);
    *(&v126 + 1) = v194[0];
    DWORD1(v126) = *(v194 + 3);
    *(&v128 + 9) = *v193;
    HIDWORD(v128) = *&v193[3];
    *(&v131 + 1) = *v192;
    DWORD1(v131) = *&v192[3];
    *(&v133 + 9) = *v191;
    HIDWORD(v133) = *&v191[3];
    WORD3(v136) = v190;
    *(&v136 + 2) = v189;
    DWORD1(v137) = *&v188[3];
    *(&v137 + 1) = *v188;
    *(&v124 + 1) = v112;
    *&v125 = v121;
    *(&v125 + 1) = v120;
    LOBYTE(v126) = v110;
    *(&v126 + 1) = v100;
    v72 = v41;
    *&v127 = v41;
    v53 = v78;
    *(&v127 + 1) = v79;
    *&v128 = v78;
    BYTE8(v128) = v104;
    *&v129 = v102;
    *(&v129 + 1) = v76;
    v130 = v77;
    LOBYTE(v131) = v101;
    *(&v131 + 1) = v95;
    v132 = v75;
    *&v133 = v96;
    BYTE8(v133) = v94;
    *&v134 = v92;
    *(&v134 + 1) = v73;
    v135 = v74;
    LOBYTE(v136) = v91;
    BYTE1(v136) = v83;
    *(&v136 + 1) = v108;
    v54 = v109;
    LOBYTE(v137) = v109;
    *(&v137 + 1) = v50;
    v55 = v118;
    *&v138[0] = v118;
    *(&v138[0] + 1) = v51;
    v56 = v117;
    *&v138[1] = v117;
    BYTE8(v138[1]) = v52;
    v57 = *(v138 + 9);
    *&v124 = v30;
    v58 = v124;
    v59 = v125;
    v60 = v127;
    v61 = v122;
    v122[2] = v126;
    v61[3] = v60;
    *v61 = v58;
    v61[1] = v59;
    v62 = v128;
    v63 = v129;
    v64 = v131;
    v61[6] = v130;
    v61[7] = v64;
    v61[4] = v62;
    v61[5] = v63;
    v65 = v132;
    v66 = v133;
    v67 = v135;
    v61[10] = v134;
    v61[11] = v67;
    v61[8] = v65;
    v61[9] = v66;
    v68 = v136;
    v69 = v137;
    v70 = v138[0];
    *(v61 + 233) = v57;
    v61[13] = v69;
    v61[14] = v70;
    v61[12] = v68;
    sub_2142FA4F8(&v124, v139);
    __swift_destroy_boxed_opaque_existential_1(v195);
    *v139 = v30;
    *&v139[8] = v112;
    *&v139[16] = v121;
    *&v139[24] = v120;
    v140 = v110;
    *v141 = v194[0];
    *&v141[3] = *(v194 + 3);
    v142 = v100;
    v143 = v72;
    v144 = v79;
    v145 = v53;
    v146 = v104;
    *v147 = *v193;
    *&v147[3] = *&v193[3];
    *&v148 = v102;
    *(&v148 + 1) = v76;
    v149 = v77;
    v150 = v101;
    *v151 = *v192;
    *&v151[3] = *&v192[3];
    v152 = v95;
    v153 = v75;
    v154 = v96;
    v155 = v94;
    *v156 = *v191;
    *&v156[3] = *&v191[3];
    *&v157 = v92;
    *(&v157 + 1) = v73;
    v158 = v74;
    v159 = v91;
    v160 = v83;
    v162 = v190;
    v161 = v189;
    v163 = v108;
    v164 = v54;
    *&v165[3] = *&v188[3];
    *v165 = *v188;
    *&v166 = v119;
    *(&v166 + 1) = v55;
    v167 = v123;
    v168 = v56;
    v169 = v52;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000002BLL;
    v33[1] = 0x800000021478F110;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v111, v89);
    v34 = v109;
    v35 = v112;
    sub_213FDC6BC(v115, v114);
    sub_213FDC6BC(v117, v116);
    sub_213FB54FC(v119, v118);
    sub_213FDC6BC(v84, v85);
    (*(v123 + 8))(v81, v82);
    v36 = v79;

    v121 = v78;
    v37 = v100;
    v38 = v80;
    v39 = v90;
    v40 = v96;
    __swift_destroy_boxed_opaque_existential_1(v195);
    *v139 = v113;
    *&v139[8] = v35;
    *&v139[16] = v121;
    *&v139[24] = v36;
    v140 = v110;
    *v141 = v194[0];
    *&v141[3] = *(v194 + 3);
    v142 = v37;
    v143 = v106;
    v144 = v107;
    v145 = v105;
    v146 = v104;
    *v147 = *v193;
    *&v147[3] = *&v193[3];
    v148 = v102;
    *&v149 = v40;
    *(&v149 + 1) = v103;
    v150 = v101;
    *&v151[3] = *&v192[3];
    *v151 = *v192;
    v152 = v95;
    *&v153 = v97;
    *(&v153 + 1) = v99;
    v154 = v98;
    v155 = v94;
    *&v156[3] = *&v191[3];
    *v156 = *v191;
    v157 = v92;
    *&v158 = v39;
    *(&v158 + 1) = v93;
    v159 = v91;
    v160 = v83;
    v162 = v190;
    v161 = v189;
    v163 = v108;
    v164 = v34;
    *&v165[3] = *&v188[3];
    *v165 = *v188;
    v166 = v86;
    v167 = v87;
    v168 = v88;
    v169 = v38;
  }

  return sub_2142FA450(v139);
}

uint64_t sub_21417FE38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908048, &qword_2146F4EE0);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 104);
  v26 = *(v1 + 96);
  v27 = v6;
  v25 = v8;
  v9 = *(v1 + 136);
  v23 = *(v1 + 144);
  v24 = v9;
  v10 = *(v1 + 176);
  v21 = *(v1 + 184);
  v22 = v10;
  v31 = *(v1 + 193);
  v20 = *(v1 + 200);
  v19 = *(v1 + 208);
  v11 = *(v1 + 232);
  v17 = *(v1 + 240);
  v18 = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = &v17 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_2142FA4A4();
  sub_2146DAA28();
  if (!v5)
  {
    goto LABEL_10;
  }

  LOBYTE(v29) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v28 + 8))(v15, v4);
  }

  if (v7 >> 60 == 15 || (v29 = v27, v30 = v7, v32 = 1, sub_21402D9F8(v27, v7), sub_214061684(), sub_2146DA388(), sub_213FB54FC(v29, v30), v25 >> 60 == 11) || (v29 = v26, v30 = v25, v32 = 2, sub_213FDCA18(v26, v25), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0), sub_2142E1CAC(), sub_2146DA388(), sub_213FDC6BC(v29, v30), v23 >> 60 == 11) || (v29 = v24, v30 = v23, v32 = 3, sub_213FDCA18(v24, v23), sub_2146DA388(), sub_213FDC6BC(v29, v30), v21 >> 60 == 11) || (v29 = v22, v30 = v21, v32 = 4, sub_213FDCA18(v22, v21), sub_2146DA388(), sub_213FDC6BC(v29, v30), LOBYTE(v29) = 5, sub_2146DA338(), v29 = v20, LOBYTE(v30) = v19, v32 = 6, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00), sub_2142E1E84(), sub_2146DA388(), v17 >> 60 == 11))
  {
LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v29 = v18;
    v30 = v17;
    v32 = 7;
    sub_213FDCA18(v18, v17);
    sub_2146DA388();
    sub_213FDC6BC(v29, v30);
    return (*(v28 + 8))(v15, v4);
  }

  return result;
}

uint64_t NameAndPhotoNameOnlyUpdate.init(with:lastName:updateInfoIncluded:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

unint64_t sub_2141802F0()
{
  v1 = 0x656D614E7473616CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E7473726966;
  }
}

uint64_t sub_214180354@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436CF2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21418037C(uint64_t a1)
{
  v2 = sub_2142FA554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141803B8(uint64_t a1)
{
  v2 = sub_2142FA554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NameAndPhotoNameOnlyUpdate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908050, &qword_2146F4EE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FA554();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v22 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v9 = v21;
    v18 = v20;
    v22 = 1;
    sub_2146DA1C8();
    v10 = v9;
    v11 = v20;
    v12 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    v22 = 2;
    sub_2142E14CC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v14 = v21;
    v15 = v11;
    v17 = v19;
    v16 = v20;
    *v19 = v18;
    v17[1] = v10;
    v17[2] = v15;
    v17[3] = v12;
    v17[4] = v16;
    *(v17 + 40) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NameAndPhotoNameOnlyUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908060, &unk_2146F4EF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v15 = v1[3];
  v16 = v9;
  v14 = v1[4];
  v20 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FA554();

  sub_2146DAA28();
  v18 = v7;
  v19 = v8;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v10 = v17;
  sub_2146DA388();

  if (!v10)
  {
    v11 = v20;
    v12 = v14;
    v18 = v16;
    v19 = v15;
    v21 = 1;
    sub_2146DA388();
    v18 = v12;
    LOBYTE(v19) = v11;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    sub_2142E1E84();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141808E4@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  v9 = a2[7];
  *(a7 + 104) = a2[6];
  *(a7 + 120) = v9;
  *(a7 + 136) = a2[8];
  *(a7 + 145) = *(a2 + 137);
  v10 = a2[3];
  *(a7 + 40) = a2[2];
  *(a7 + 56) = v10;
  v11 = a2[5];
  *(a7 + 72) = a2[4];
  *(a7 + 88) = v11;
  v12 = a2[1];
  *(a7 + 8) = *a2;
  *(a7 + 24) = v12;
  v13 = a3[3];
  *(a7 + 200) = a3[2];
  *(a7 + 216) = v13;
  v14 = a3[5];
  *(a7 + 232) = a3[4];
  *(a7 + 248) = v14;
  v15 = a3[1];
  *(a7 + 168) = *a3;
  *(a7 + 184) = v15;
  v16 = (a7 + 264);
  v17 = *(a4 + 80);
  v16[4] = *(a4 + 64);
  v16[5] = v17;
  v16[6] = *(a4 + 96);
  *(a7 + 376) = *(a4 + 112);
  v18 = *(a4 + 16);
  *v16 = *a4;
  v16[1] = v18;
  v19 = *(a4 + 48);
  v16[2] = *(a4 + 32);
  v16[3] = v19;
  v20 = a5[4];
  *(a7 + 432) = a5[3];
  *(a7 + 448) = v20;
  v21 = a5[2];
  *(a7 + 400) = a5[1];
  *(a7 + 416) = v21;
  *(a7 + 384) = *a5;
  v22 = type metadata accessor for IDSNearbySessionMessage(0);
  return sub_21408AC04(a6, a7 + *(v22 + 36), &qword_27C908068, &qword_21476EEC0);
}

uint64_t sub_2141809F0()
{
  v1 = *v0;
  v2 = 0x726F70736E617274;
  v3 = 0x757165526E696F6ALL;
  v4 = 0x707365526E696F6ALL;
  if (v1 != 4)
  {
    v4 = 0x73654D70756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_214180AD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436D054(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214180AF8(uint64_t a1)
{
  v2 = sub_2142FA5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214180B34(uint64_t a1)
{
  v2 = sub_2142FA5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214180B70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908068, &qword_21476EEC0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28[-v5];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908070, &unk_2146F4F00);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v28[-v7];
  v9 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142FA5A8();
  sub_2146DAA08();
  if (!v2)
  {
    v30 = v6;
    v10 = v31;
    v11 = v32;
    LOBYTE(v76) = 0;
    sub_2142FA5FC();
    v12 = v33;
    sub_2146DA1C8();
    v13 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908088, &unk_21476EEA0);
    v85 = 1;
    sub_2142FA650();
    sub_2146DA1C8();
    v29 = v13;
    v82 = v92;
    v83 = v93;
    *v84 = v94[0];
    *&v84[9] = *(v94 + 9);
    v78 = v88;
    v79 = v89;
    v80 = v90;
    v81 = v91;
    v76 = v86;
    v77 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080A0, &unk_2146F4F10);
    v69 = 2;
    sub_2142FA728();
    sub_2146DA1C8();
    v65 = v72;
    v66 = v73;
    v67 = v74;
    v68 = v75;
    v63 = v70;
    v64 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080B8, &unk_21476EEB0);
    v54 = 3;
    sub_2142FA800();
    sub_2146DA1C8();
    v50 = v59;
    v51 = v60;
    v52 = v61;
    v53 = v62;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v49 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080D0, &qword_2146F4F20);
    v40 = 4;
    sub_2142FA8D8();
    sub_2146DA1C8();
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v35 = v41;
    v36 = v42;
    v34 = 5;
    sub_2142FA9B0();
    v14 = v30;
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v12);
    v16 = type metadata accessor for IDSNearbySessionMessage(0);
    sub_21408AC04(v14, v11 + *(v16 + 36), &qword_27C908068, &qword_21476EEC0);
    *v11 = v29;
    v17 = v83;
    *(v11 + 104) = v82;
    *(v11 + 120) = v17;
    *(v11 + 136) = *v84;
    *(v11 + 145) = *&v84[9];
    v18 = v79;
    *(v11 + 40) = v78;
    *(v11 + 56) = v18;
    v19 = v81;
    *(v11 + 72) = v80;
    *(v11 + 88) = v19;
    v20 = v77;
    *(v11 + 8) = v76;
    *(v11 + 24) = v20;
    *(v11 + 200) = v65;
    *(v11 + 216) = v66;
    *(v11 + 232) = v67;
    *(v11 + 248) = v68;
    *(v11 + 168) = v63;
    *(v11 + 184) = v64;
    *(v11 + 376) = v53;
    v21 = v52;
    *(v11 + 344) = v51;
    *(v11 + 360) = v21;
    v22 = v50;
    *(v11 + 312) = v49;
    *(v11 + 328) = v22;
    v23 = v48;
    *(v11 + 280) = v47;
    *(v11 + 296) = v23;
    *(v11 + 264) = v46;
    v24 = v35;
    v25 = v36;
    v26 = v39;
    *(v11 + 432) = v38;
    *(v11 + 448) = v26;
    v27 = v37;
    *(v11 + 400) = v25;
    *(v11 + 416) = v27;
    *(v11 + 384) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v95);
}

uint64_t sub_2141811E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080F8, &qword_2146F4F28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FA5A8();
  sub_2146DAA28();
  v93[0] = *v3;
  v92 = 0;
  sub_2142FAA64();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v94 = v6;
  v10 = *(v3 + 120);
  v90[6] = *(v3 + 104);
  v90[7] = v10;
  *v91 = *(v3 + 136);
  *&v91[9] = *(v3 + 145);
  v11 = *(v3 + 56);
  v90[2] = *(v3 + 40);
  v90[3] = v11;
  v12 = *(v3 + 88);
  v90[4] = *(v3 + 72);
  v90[5] = v12;
  v13 = *(v3 + 24);
  v90[0] = *(v3 + 8);
  v90[1] = v13;
  v14 = *(v3 + 120);
  v87 = *(v3 + 104);
  v88 = v14;
  v89[0] = *(v3 + 136);
  *(v89 + 9) = *(v3 + 145);
  v15 = *(v3 + 56);
  v83 = *(v3 + 40);
  v84 = v15;
  v16 = *(v3 + 88);
  v85 = *(v3 + 72);
  v86 = v16;
  v17 = *(v3 + 24);
  v81 = *(v3 + 8);
  v82 = v17;
  v80 = 1;
  sub_213FB2E54(v90, v78, &qword_27C908088, &unk_21476EEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908088, &unk_21476EEA0);
  sub_2142FAAB8();
  v37 = v5;
  sub_2146DA388();
  v78[6] = v87;
  v78[7] = v88;
  *v79 = v89[0];
  *&v79[9] = *(v89 + 9);
  v78[2] = v83;
  v78[3] = v84;
  v78[4] = v85;
  v78[5] = v86;
  v78[0] = v81;
  v78[1] = v82;
  sub_213FB2DF4(v78, &qword_27C908088, &unk_21476EEA0);
  v18 = *(v3 + 216);
  v77[2] = *(v3 + 200);
  v77[3] = v18;
  v19 = *(v3 + 248);
  v77[4] = *(v3 + 232);
  v77[5] = v19;
  v20 = *(v3 + 184);
  v77[0] = *(v3 + 168);
  v77[1] = v20;
  v21 = *(v3 + 216);
  v73 = *(v3 + 200);
  v74 = v21;
  v22 = *(v3 + 248);
  v75 = *(v3 + 232);
  v76 = v22;
  v23 = *(v3 + 184);
  v71 = *(v3 + 168);
  v72 = v23;
  v70 = 2;
  sub_213FB2E54(v77, v63, &qword_27C9080A0, &unk_2146F4F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080A0, &unk_2146F4F10);
  sub_2142FAB90();
  v24 = v37;
  sub_2146DA388();
  v62[2] = v73;
  v62[3] = v74;
  v62[4] = v75;
  v62[5] = v76;
  v62[0] = v71;
  v62[1] = v72;
  sub_213FB2DF4(v62, &qword_27C9080A0, &unk_2146F4F10);
  v25 = *(v3 + 344);
  v26 = *(v3 + 312);
  v66 = *(v3 + 328);
  v67 = v25;
  v27 = *(v3 + 344);
  v68 = *(v3 + 360);
  v28 = *(v3 + 280);
  v63[0] = *(v3 + 264);
  v63[1] = v28;
  v29 = *(v3 + 312);
  v31 = *(v3 + 264);
  v30 = *(v3 + 280);
  v64 = *(v3 + 296);
  v65 = v29;
  v58 = v66;
  v59 = v27;
  v60 = *(v3 + 360);
  v54 = v31;
  v55 = v30;
  v69 = *(v3 + 376);
  v61 = *(v3 + 376);
  v56 = v64;
  v57 = v26;
  v53 = 3;
  sub_213FB2E54(v63, v51, &qword_27C9080B8, &unk_21476EEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080B8, &unk_21476EEB0);
  sub_2142FAC68();
  sub_2146DA388();
  v51[4] = v58;
  v51[5] = v59;
  v51[6] = v60;
  v52 = v61;
  v51[0] = v54;
  v51[1] = v55;
  v51[2] = v56;
  v51[3] = v57;
  sub_213FB2DF4(v51, &qword_27C9080B8, &unk_21476EEB0);
  v32 = *(v3 + 416);
  v33 = *(v3 + 384);
  v47 = *(v3 + 400);
  v48 = v32;
  v34 = *(v3 + 416);
  v35 = *(v3 + 448);
  v49 = *(v3 + 432);
  v50 = v35;
  v36 = *(v3 + 384);
  v43 = v34;
  v44 = v49;
  v45 = *(v3 + 448);
  v46 = v36;
  v41 = v33;
  v42 = v47;
  v40 = 4;
  sub_213FB2E54(&v46, v39, &qword_27C9080D0, &qword_2146F4F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080D0, &qword_2146F4F20);
  sub_2142FAD40();
  sub_2146DA388();
  v39[2] = v43;
  v39[3] = v44;
  v39[4] = v45;
  v39[0] = v41;
  v39[1] = v42;
  sub_213FB2DF4(v39, &qword_27C9080D0, &qword_2146F4F20);
  type metadata accessor for IDSNearbySessionMessage(0);
  v38 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908068, &qword_21476EEC0);
  sub_2142FAE18();
  sub_2146DA388();
  return (*(v94 + 8))(v8, v24);
}

uint64_t AvatarImage.init(with:image:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  strcpy((v9 + 16), "NickNameImage");
  *(v9 + 30) = -4864;
  *(v8 + 16) = sub_21438F520;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_214042B80(inited, a4);
  LOWORD(v36[0]) = 0;
  sub_2140615D0(v36);
  v10 = v36[9];
  *(a4 + 416) = v36[8];
  *(a4 + 432) = v10;
  v11 = v36[11];
  *(a4 + 448) = v36[10];
  *(a4 + 464) = v11;
  v12 = v36[5];
  *(a4 + 352) = v36[4];
  *(a4 + 368) = v12;
  v13 = v36[7];
  *(a4 + 384) = v36[6];
  *(a4 + 400) = v13;
  v14 = v36[1];
  *(a4 + 288) = v36[0];
  *(a4 + 304) = v14;
  v15 = v36[3];
  *(a4 + 320) = v36[2];
  *(a4 + 336) = v15;
  *(a4 + 40) = 0u;
  *(a4 + 280) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 264) = 0u;
  v17 = *a4;
  v16 = *(a4 + 8);
  v18 = *(a4 + 24);
  v30 = *(a4 + 16);
  v19 = *(a4 + 32);
  v35[0] = a1;
  v35[1] = a2;
  v37 = v19;
  v38 = v19;
  v34[0] = 0xD000000000000015;
  v34[1] = 0x800000021478F240;
  v34[2] = 0xD00000000000001CLL;
  v34[3] = 0x800000021478A360;
  v31 = v18;

  v20 = v17(v35, &v38, v34);
  if (v32)
  {
  }

  else
  {
    if (v20)
    {

      *a4 = v17;
      *(a4 + 8) = v16;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v37;
      result = sub_213FB2DF4(a4 + 40, &qword_27C904858, &qword_214736F00);
      v22 = *(a3 + 208);
      *(a4 + 232) = *(a3 + 192);
      *(a4 + 248) = v22;
      *(a4 + 264) = *(a3 + 224);
      *(a4 + 280) = *(a3 + 240);
      v23 = *(a3 + 144);
      *(a4 + 168) = *(a3 + 128);
      *(a4 + 184) = v23;
      v24 = *(a3 + 176);
      *(a4 + 200) = *(a3 + 160);
      *(a4 + 216) = v24;
      v25 = *(a3 + 80);
      *(a4 + 104) = *(a3 + 64);
      *(a4 + 120) = v25;
      v26 = *(a3 + 112);
      *(a4 + 136) = *(a3 + 96);
      *(a4 + 152) = v26;
      v27 = *(a3 + 16);
      *(a4 + 40) = *a3;
      *(a4 + 56) = v27;
      v28 = *(a3 + 48);
      *(a4 + 72) = *(a3 + 32);
      *(a4 + 88) = v28;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000015;
    v29[1] = 0x800000021478F240;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21406D2CC(a3);

  *a4 = v17;
  *(a4 + 8) = v16;
  *(a4 + 16) = v30;
  *(a4 + 24) = v31;
  *(a4 + 32) = v37;
  return sub_2142FAECC(a4);
}

uint64_t sub_214181C6C()
{
  if (*v0)
  {
    return 0x6567616D69;
  }

  else
  {
    return 0x6D614E6567616D69;
  }
}

uint64_t sub_214181CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
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

uint64_t sub_214181D88(uint64_t a1)
{
  v2 = sub_2142FAF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214181DC4(uint64_t a1)
{
  v2 = sub_2142FAF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvatarImage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908158, &qword_2146F4F30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142FAF20();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v10 = v6;
  v30 = a2;
  v36[0] = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v29 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  v35 = 1;
  sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0, aI_83);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  strcpy((v17 + 16), "NickNameImage");
  *(v17 + 30) = -4864;
  *(v16 + 16) = sub_21438F520;
  *(v16 + 24) = v17;
  *(v15 + 32) = v16;
  sub_214042B80(v15, v37);
  LOWORD(v34[0]) = 0;
  sub_2140615D0(v34);
  v37[26] = v34[8];
  v37[27] = v34[9];
  v37[28] = v34[10];
  v37[29] = v34[11];
  v37[22] = v34[4];
  v37[23] = v34[5];
  v37[24] = v34[6];
  v37[25] = v34[7];
  v37[18] = v34[0];
  v37[19] = v34[1];
  v37[20] = v34[2];
  v37[21] = v34[3];
  v23 = &v37[2] + 8;
  *(&v37[16] + 8) = 0u;
  *(&v37[17] + 1) = 0;
  *(&v37[15] + 8) = 0u;
  *(&v37[14] + 8) = 0u;
  *(&v37[13] + 8) = 0u;
  *(&v37[12] + 8) = 0u;
  *(&v37[11] + 8) = 0u;
  *(&v37[10] + 8) = 0u;
  *(&v37[9] + 8) = 0u;
  *(&v37[8] + 8) = 0u;
  *(&v37[7] + 8) = 0u;
  *(&v37[6] + 8) = 0u;
  *(&v37[5] + 8) = 0u;
  *(&v37[4] + 8) = 0u;
  *(&v37[3] + 8) = 0u;
  *(&v37[2] + 8) = 0u;
  v18 = v37[0];
  v24 = *&v37[1];
  v33[0] = v29;
  v33[1] = v13;
  v28 = LOBYTE(v37[2]);
  v32 = v37[2];
  v31[0] = 0xD000000000000015;
  v31[1] = 0x800000021478F240;
  v26 = 0x800000021478F240;
  v27 = *(&v37[1] + 1);
  v31[2] = 0xD00000000000001CLL;
  v31[3] = 0x800000021478A360;

  v25 = v18;
  if ((v18)(v33, &v32, v31))
  {

    (*(v10 + 8))(v8, v5);

    *&v37[0] = v25;
    *(&v37[0] + 1) = *(&v18 + 1);
    *&v37[1] = v29;
    *(&v37[1] + 1) = v13;
    LOBYTE(v37[2]) = v28;
    memcpy(v31, v36, sizeof(v31));
    v19 = v23;
    sub_213FB2DF4(v23, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v19, v31, 0x1B8uLL);
    memcpy(v30, v37, 0x1E0uLL);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  sub_214031C4C();
  swift_allocError();
  v20 = v26;
  *v21 = 0xD000000000000015;
  v21[1] = v20;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v36, &qword_27C905500, &qword_2146F2BE0);
  (*(v10 + 8))(v8, v5);

  *&v37[0] = v25;
  *(&v37[0] + 1) = *(&v18 + 1);
  *&v37[1] = v24;
  *(&v37[1] + 1) = v27;
  LOBYTE(v37[2]) = v28;
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_2142FAECC(v37);
}

__n128 AvatarRecipe.init(with:recipe:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 40) = *a2;
  v6 = *(a2 + 32);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 56) = v5;
  *(a3 + 72) = v6;
  return result;
}

uint64_t sub_2141824B0()
{
  if (*v0)
  {
    return 0x657069636572;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_2141824EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000214795380 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x657069636572 && a2 == 0xE600000000000000)
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

uint64_t sub_2141825D0(uint64_t a1)
{
  v2 = sub_2142FAF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418260C(uint64_t a1)
{
  v2 = sub_2142FAF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvatarRecipe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908170, &qword_2146F4F40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FAF74();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = 0;
    sub_2142FAFC8();
    sub_2146DA1C8();
    v18 = *(&v20 + 1);
    v9 = v20;
    v19 = v21;
    v10 = v22;
    v24 = 1;
    sub_2142FB01C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v11 = v22;
    v23 = v10;
    v12 = v18;
    v13 = v19;
    *a2 = v9;
    *(a2 + 8) = v12;
    v14 = *(&v19 + 1);
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    v15 = v21;
    *(a2 + 40) = v20;
    *(a2 + 56) = v15;
    *(a2 + 72) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AvatarRecipe.encode(to:)(void *a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908190, &qword_2146F4F48);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v16 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v19 = *(v1 + 48);
  v20 = v10;
  v11 = *(v1 + 56);
  v17 = *(v1 + 64);
  v18 = v11;
  v31 = *(v1 + 72);
  HIDWORD(v16) = *(v1 + 73);
  v12 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142FB07C(v5, v6, v7, v8, v9);
  sub_2142FAF74();
  v13 = v22;
  sub_2146DAA28();
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v32 = 0;
  sub_2142FB088();
  v14 = v23;
  sub_2146DA388();
  sub_2142FB070(v25, v26, v27, v28, v29);
  if (!v14)
  {
    v25 = v20;
    v26 = v19;
    v27 = v18;
    v28 = v17;
    v29 = v31;
    v30 = BYTE4(v16);
    v32 = 1;
    sub_2142FB0DC(v20, v19, v18, v17, v31, SBYTE4(v16));
    sub_2142FB13C();
    sub_2146DA388();
    sub_2142FB190(v25, v26, v27, v28, v29, v30);
  }

  return (*(v24 + 8))(v4, v13);
}

uint64_t sub_214182AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10)
{
  *&v57 = a2;
  *(&v57 + 1) = a3;
  sub_213FB2E54(a1, a9, &qword_27C9055E0, &unk_2146F4F50);
  v14 = type metadata accessor for Wallpaper(0);
  v54 = a4;
  sub_213FB2E54(a4, a9 + v14[6], &qword_27C9081A8, &unk_21474BF20);
  v53 = a7;
  sub_213FB2E54(a7, a9 + v14[8], &qword_27C9081A8, &unk_21474BF20);
  sub_21448455C(&v62);
  v15 = v63;
  v16 = v64;
  LOBYTE(a4) = v65;
  sub_214484590(v60);
  v17 = v61;
  v18 = a9 + v14[5];
  *v18 = v62;
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  *(v18 + 32) = a4;
  v19 = a9 + v14[7];
  v20 = v60[1];
  *v19 = v60[0];
  *(v19 + 16) = v20;
  *(v19 + 32) = v17;
  *(a9 + v14[9]) = a8;
  v50 = a9;
  v21 = (a9 + v14[10]);
  v22 = a10[1];
  *v21 = *a10;
  v21[1] = v22;
  v23 = a10[5];
  v21[4] = a10[4];
  v21[5] = v23;
  v24 = a10[3];
  v21[2] = a10[2];
  v21[3] = v24;
  *(v21 + 137) = *(a10 + 137);
  v25 = a10[8];
  v21[7] = a10[7];
  v21[8] = v25;
  v21[6] = a10[6];
  v27 = *v18;
  v26 = *(v18 + 8);
  v28 = *(v18 + 16);
  v29 = *(v18 + 24);
  LODWORD(v21) = *(v18 + 32);
  v60[0] = v57;
  v66 = v21;
  v67 = v21;
  *&v62 = 0xD000000000000019;
  *(&v62 + 1) = 0x800000021478F260;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v51 = v29;
  sub_213FDC9D0(v28, v29);
  v30 = v27(v60, &v67, &v62);
  if (v52)
  {

LABEL_6:

    sub_213FB2DF4(v53, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v54, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(a1, &qword_27C9055E0, &unk_2146F4F50);
    v41 = *(v18 + 16);
    v42 = *(v18 + 24);

    sub_213FDC6D0(v41, v42);
    *v18 = v27;
    *(v18 + 8) = v26;
    *(v18 + 16) = v28;
    *(v18 + 24) = v51;
    *(v18 + 32) = v66;
    return sub_21432887C(v50, type metadata accessor for Wallpaper);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000019;
    v40[1] = 0x800000021478F260;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v28, v29);

  v31 = *(v18 + 16);
  v32 = *(v18 + 24);

  sub_213FDC6D0(v31, v32);
  *v18 = v27;
  *(v18 + 8) = v26;
  *(v18 + 16) = v57;
  *(v18 + 32) = v66;
  v33 = v19;
  v35 = *v19;
  v34 = *(v19 + 8);
  v36 = *(v19 + 16);
  v37 = *(v19 + 24);
  v38 = *(v33 + 32);
  *&v60[0] = a5;
  *(&v60[0] + 1) = a6;
  v58 = v38;
  v67 = v38;
  *&v62 = 0xD000000000000018;
  *(&v62 + 1) = 0x800000021478F280;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  sub_213FDC9D0(v36, v37);
  v59 = v35;
  v39 = v35(v60, &v67, &v62);
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000018;
    v46[1] = 0x800000021478F280;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v53, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v54, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(a1, &qword_27C9055E0, &unk_2146F4F50);
    v47 = *(v33 + 16);
    v48 = *(v33 + 24);

    sub_213FDC6D0(v47, v48);
    *v33 = v35;
    *(v33 + 8) = v34;
    *(v33 + 16) = v36;
    *(v33 + 24) = v37;
    *(v33 + 32) = v58;
    return sub_21432887C(v50, type metadata accessor for Wallpaper);
  }

  sub_213FDC6D0(v36, v37);

  sub_213FB2DF4(v53, &qword_27C9081A8, &unk_21474BF20);
  sub_213FB2DF4(v54, &qword_27C9081A8, &unk_21474BF20);
  sub_213FB2DF4(a1, &qword_27C9055E0, &unk_2146F4F50);
  v44 = *(v33 + 16);
  v45 = *(v33 + 24);

  result = sub_213FDC6D0(v44, v45);
  *v33 = v59;
  *(v33 + 8) = v34;
  *(v33 + 16) = a5;
  *(v33 + 24) = a6;
  *(v33 + 32) = v58;
  return result;
}

uint64_t sub_214182FFC()
{
  v1 = *v0;
  v2 = 0x7241726574736F70;
  v3 = 0x6E6F6973726576;
  if (v1 != 5)
  {
    v3 = 0x617461646174656DLL;
  }

  v4 = 0x6946736552776F6CLL;
  if (v1 != 3)
  {
    v4 = 0x6D49736552776F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4673655268676968;
  if (v1 != 1)
  {
    v5 = 0x4973655268676968;
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

uint64_t sub_21418310C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436D270(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214183134(uint64_t a1)
{
  v2 = sub_2142FB1E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214183170(uint64_t a1)
{
  v2 = sub_2142FB1E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141831AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  MEMORY[0x28223BE20](v82);
  v4 = &v68 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081B0, &qword_2146F4F60);
  v83 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v68 - v6;
  v8 = type metadata accessor for Wallpaper(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2142FB1E0();
  v12 = v113;
  sub_2146DAA08();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v80 = v8;
  v113 = v10;
  LOBYTE(v112[0]) = 0;
  sub_2142FB234();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v111[0]) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v82 = v4;
  v79 = v112[0];
  v14 = v112[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081A8, &unk_21474BF20);
  LOBYTE(v111[0]) = 2;
  v15 = v7;
  v16 = sub_2142FB2E8();
  sub_2146DA1C8();
  v77 = v16;
  v78 = v14;
  LOBYTE(v102) = 3;
  sub_2146DA1C8();
  v17 = v15;
  v18 = v111[0];
  v19 = v111[1];
  LOBYTE(v102) = 4;
  sub_2146DA1C8();
  LOBYTE(v102) = 5;
  v20 = sub_2146DA1A8();
  v21 = v82;
  v77 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081D8, &qword_2146F4F68);
  v101 = 6;
  sub_2142FB3C0();
  sub_2146DA1C8();
  v75 = v5;
  v76 = v19;
  v98 = v108;
  v99 = v109;
  *v100 = v110[0];
  *&v100[9] = *(v110 + 9);
  v94 = v104;
  v95 = v105;
  v96 = v106;
  v97 = v107;
  v92 = v102;
  v93 = v103;
  v22 = v21;
  v23 = v113;
  sub_213FB2E54(v22, v113, &qword_27C9055E0, &unk_2146F4F50);
  v24 = v80;
  sub_213FB2E54(v112, v23 + *(v80 + 24), &qword_27C9081A8, &unk_21474BF20);
  sub_213FB2E54(v111, v23 + v24[8], &qword_27C9081A8, &unk_21474BF20);
  sub_21448455C(&v88);
  v25 = v89;
  v74 = v90;
  LODWORD(v73) = v91;
  sub_214484590(v86);
  v26 = v87;
  v27 = v23 + v24[5];
  *v27 = v88;
  v28 = v74;
  *(v27 + 16) = v25;
  *(v27 + 24) = v28;
  *(v27 + 32) = v73;
  v29 = v23 + v24[7];
  v30 = v86[1];
  *v29 = v86[0];
  *(v29 + 16) = v30;
  v69 = v29;
  *(v29 + 32) = v26;
  *(v23 + v24[9]) = v77;
  v31 = (v23 + v24[10]);
  v32 = v93;
  *v31 = v92;
  v31[1] = v32;
  v33 = v97;
  v31[4] = v96;
  v31[5] = v33;
  v34 = v95;
  v31[2] = v94;
  v31[3] = v34;
  *(v31 + 137) = *&v100[9];
  v35 = *v100;
  v31[7] = v99;
  v31[8] = v35;
  v31[6] = v98;
  v37 = *v27;
  v36 = *(v27 + 8);
  v38 = *(v27 + 16);
  v39 = *(v27 + 24);
  LODWORD(v29) = *(v27 + 32);
  v40 = v78;
  *&v86[0] = v79;
  *(&v86[0] + 1) = v78;
  LODWORD(v74) = v29;
  v85 = v29;
  v68 = 0xD000000000000019;
  *&v88 = 0xD000000000000019;
  *(&v88 + 1) = 0x800000021478F260;
  v70 = 0x800000021478F260;
  v89 = 0xD00000000000001CLL;
  v90 = 0x800000021478A360;
  v80 = 0x800000021478A360;

  v72 = v39;
  v73 = v38;
  sub_213FDC9D0(v38, v39);
  v71 = v36;
  v77 = v37;
  v41 = v37(v86, &v85, &v88);
  v42 = v70;
  v43 = v40;
  if (v41)
  {
    v68 = v17;
    sub_213FDC6D0(v73, v72);
    v44 = v80;

    v45 = *(v27 + 16);
    v46 = *(v27 + 24);

    sub_213FDC6D0(v45, v46);
    v47 = v71;
    *v27 = v77;
    *(v27 + 8) = v47;
    *(v27 + 16) = v79;
    *(v27 + 24) = v43;
    *(v27 + 32) = v74;
    v49 = *v69;
    v48 = *(v69 + 8);
    v51 = *(v69 + 16);
    v50 = *(v69 + 24);
    v52 = *(v69 + 32);
    v74 = v18;
    *&v86[0] = v18;
    *(&v86[0] + 1) = v76;
    LODWORD(v78) = v52;
    v85 = v52;
    *&v88 = 0xD000000000000018;
    *(&v88 + 1) = 0x800000021478F280;
    v89 = 0xD00000000000001CLL;
    v90 = v44;

    v77 = v50;
    sub_213FDC9D0(v51, v50);
    v79 = v49;
    if (v49(v86, &v85, &v88))
    {
      sub_213FDC6D0(v51, v77);

      sub_213FB2DF4(v111, &qword_27C9081A8, &unk_21474BF20);
      sub_213FB2DF4(v112, &qword_27C9081A8, &unk_21474BF20);
      sub_213FB2DF4(v82, &qword_27C9055E0, &unk_2146F4F50);
      (*(v83 + 8))(v68, v75);
      v58 = v69;
      v59 = *(v69 + 16);
      v60 = *(v69 + 24);

      sub_213FDC6D0(v59, v60);
      *v58 = v79;
      *(v58 + 8) = v48;
      v61 = v76;
      *(v58 + 16) = v74;
      *(v58 + 24) = v61;
      *(v58 + 32) = v78;
      sub_214328704(v113, v81, type metadata accessor for Wallpaper);
      return __swift_destroy_boxed_opaque_existential_1(v84);
    }

    sub_214031C4C();
    swift_allocError();
    *v62 = 0xD000000000000018;
    v62[1] = 0x800000021478F280;
    v63 = v80;
    v62[2] = 0xD00000000000001CLL;
    v62[3] = v63;
    swift_willThrow();

    sub_213FB2DF4(v111, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v112, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v82, &qword_27C9055E0, &unk_2146F4F50);
    (*(v83 + 8))(v68, v75);
    v64 = v69;
    v65 = *(v69 + 16);
    v66 = *(v69 + 24);

    sub_213FDC6D0(v65, v66);
    *v64 = v79;
    *(v64 + 8) = v48;
    v67 = v77;
    *(v64 + 16) = v51;
    *(v64 + 24) = v67;
    *(v64 + 32) = v78;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v53 = v68;
    v53[1] = v42;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = v80;
    swift_willThrow();

    sub_213FB2DF4(v111, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v112, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v82, &qword_27C9055E0, &unk_2146F4F50);
    (*(v83 + 8))(v17, v75);
    v54 = *(v27 + 16);
    v55 = *(v27 + 24);

    sub_213FDC6D0(v54, v55);
    v56 = v71;
    *v27 = v77;
    *(v27 + 8) = v56;
    v57 = v72;
    *(v27 + 16) = v73;
    *(v27 + 24) = v57;
    *(v27 + 32) = v74;
  }

  __swift_destroy_boxed_opaque_existential_1(v84);
  return sub_21432887C(v113, type metadata accessor for Wallpaper);
}

uint64_t sub_214183C70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081F0, &qword_2146F4F70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB1E0();
  sub_2146DAA28();
  LOBYTE(v41[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  sub_2142FB498();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v50 = type metadata accessor for Wallpaper(0);
  v9 = v3 + v50[5];
  v10 = *(v9 + 24);
  if (v10 == 1 || (*&v41[0] = *(v9 + 16), *(&v41[0] + 1) = v10, LOBYTE(v32) = 1, v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v27[2] = v11, v28 = v50[6], LOBYTE(v41[0]) = 2, v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081A8, &unk_21474BF20), v13 = sub_2142FB54C(), v28 = v12, sub_2146DA388(), v27[1] = v13, v14 = v3 + v50[7], v15 = *(v14 + 24), v15 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *&v41[0] = *(v14 + 16);
    *(&v41[0] + 1) = v15;
    LOBYTE(v32) = 3;
    sub_2146DA388();
    v16 = v50;
    LOBYTE(v41[0]) = 4;
    sub_2146DA388();
    v49[0] = 5;
    sub_2146DA368();
    v17 = (v3 + v16[10]);
    v18 = v17[7];
    v19 = v17[5];
    v46 = v17[6];
    v47 = v18;
    v20 = v17[7];
    *v48 = v17[8];
    *&v48[9] = *(v17 + 137);
    v21 = v17[3];
    v22 = v17[1];
    v42 = v17[2];
    v43 = v21;
    v23 = v17[3];
    v24 = v17[5];
    v44 = v17[4];
    v45 = v24;
    v25 = v17[1];
    v41[0] = *v17;
    v41[1] = v25;
    v38 = v46;
    v39 = v20;
    v40[0] = v17[8];
    *(v40 + 9) = *(v17 + 137);
    v34 = v42;
    v35 = v23;
    v36 = v44;
    v37 = v19;
    v32 = v41[0];
    v33 = v22;
    v31 = 6;
    sub_213FB2E54(v41, v29, &qword_27C9081D8, &qword_2146F4F68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081D8, &qword_2146F4F68);
    sub_2142FB624();
    sub_2146DA388();
    v29[6] = v38;
    v29[7] = v39;
    *v30 = v40[0];
    *&v30[9] = *(v40 + 9);
    v29[2] = v34;
    v29[3] = v35;
    v29[4] = v36;
    v29[5] = v37;
    v29[0] = v32;
    v29[1] = v33;
    sub_213FB2DF4(v29, &qword_27C9081D8, &qword_2146F4F68);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

double sub_214184128@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18)
{
  v147 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  v22[2] = sub_214059904;
  v22[3] = 0;
  v22[4] = 16;
  *(v21 + 16) = sub_21438F678;
  *(v21 + 24) = v22;
  *(v20 + 32) = v21;
  sub_214042B80(v20, &v84);
  v23 = v84;
  v24 = v86;
  v45 = v85;
  v25 = v87;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  v28[2] = sub_214059904;
  v28[3] = 0;
  v28[4] = 16;
  v28[5] = sub_21403C354;
  v28[6] = 0;
  *(v27 + 16) = sub_21438F670;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  sub_214042CD0(v26, &v134);
  v83 = v134;
  v47 = v135;
  v29 = v136;
  v80 = v137;
  v81 = v138;
  sub_2145E5EF4(v132);
  v79 = v132[0];
  v52 = v132[2];
  v49 = v132[1];
  v50 = v132[3];
  v77 = v133;
  sub_2145E6064(v130);
  v74 = v130[0];
  v71 = v130[2];
  v54 = v130[1];
  v56 = v130[3];
  v72 = v131;
  sub_2145E61D4(v128);
  v67 = v128[0];
  v68 = v128[2];
  v58 = v128[1];
  v59 = v128[3];
  v69 = v129;
  sub_2145E6344(&v124);
  v66 = v124;
  v60 = v125;
  v61 = v126;
  v65 = v127;
  v139 = a7 & 1;
  v134 = a1;
  v135 = v147;
  LOBYTE(v132[0]) = v25;
  *&v84 = 0xD00000000000001DLL;
  *(&v84 + 1) = 0x800000021478F2A0;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v30 = (v23)(&v134, v132, &v84);
  if (!v46)
  {
    if (v30)
    {

      *&v84 = v83;
      *(&v84 + 1) = v47;
      v85 = v29;
      v86 = v80;
      v87 = v81;

      sub_213FDCA18(v29, v80);
      sub_214032024(a3, a4, 2, 0xD000000000000021, 0x800000021478F2C0, 0xD00000000000001CLL, 0x800000021478A360);

      v32 = v84;
      v42 = v85;
      v43 = v86;
      v82 = v87;

      sub_213FDC6BC(v29, v80);
      *&v84 = v79;
      *(&v84 + 1) = v49;
      v85 = v52;
      v86 = v50;
      v87 = v77;

      sub_21404F7E0(v52, v50);
      sub_214032118(a11, a12, 2, 0xD000000000000020, 0x800000021478F2F0, 0xD00000000000001CLL, 0x800000021478A360);

      v33 = v84;
      v41 = v85;
      v48 = v86;
      v78 = v87;

      sub_214032564(v52, v50);
      *&v84 = v74;
      *(&v84 + 1) = v54;
      v85 = v71;
      v86 = v56;
      v87 = v72;

      sub_21404F7E0(v71, v56);
      sub_214032118(a13, a14, 2, 0xD000000000000026, 0x800000021478F320, 0xD00000000000001CLL, 0x800000021478A360);

      v34 = v84;
      v51 = v85;
      v53 = v86;
      v73 = v87;

      sub_214032564(v71, v56);
      *&v84 = v67;
      *(&v84 + 1) = v58;
      v85 = v68;
      v86 = v59;
      v87 = v69;

      sub_21404F7E0(v68, v59);
      sub_214032118(a15, a16, 2, 0xD000000000000028, 0x800000021478F350, 0xD00000000000001CLL, 0x800000021478A360);

      v35 = v84;
      v55 = v85;
      v57 = v86;
      v70 = v87;

      sub_214032564(v68, v59);
      v84 = v66;
      v85 = v60;
      v86 = v61;
      v87 = v65;

      sub_21404F7E0(v60, v61);
      sub_214032118(a17, a18, 2, 0xD000000000000027, 0x800000021478F380, 0xD00000000000001CLL, 0x800000021478A360);
      sub_213FDC6BC(a17, a18);
      sub_213FDC6BC(a15, a16);
      sub_213FDC6BC(a13, a14);
      sub_213FDC6BC(a11, a12);
      sub_213FB54FC(a3, a4);

      v36 = v85;
      v37 = v86;
      v38 = v87;

      sub_214032564(v60, v61);
      *a9 = v23;
      v39 = v147;
      *(a9 + 16) = a1;
      *(a9 + 24) = v39;
      *(a9 + 32) = v25;
      *(a9 + 33) = v146[0];
      *(a9 + 36) = *(v146 + 3);
      *(a9 + 40) = v32;
      *(a9 + 56) = v42;
      *(a9 + 64) = v43;
      *(a9 + 72) = v82;
      *(a9 + 73) = a5 & 1;
      *(a9 + 74) = v144;
      *(a9 + 78) = v145;
      *(a9 + 80) = a6;
      *(a9 + 88) = a7 & 1;
      *(a9 + 89) = v143[0];
      *(a9 + 92) = *(v143 + 3);
      *(a9 + 96) = a8;
      *(a9 + 104) = a10;
      *(a9 + 112) = v33;
      *(a9 + 128) = v41;
      *(a9 + 136) = v48;
      *(a9 + 144) = v78;
      *(a9 + 145) = *v142;
      *(a9 + 148) = *&v142[3];
      *(a9 + 152) = v34;
      *(a9 + 168) = v51;
      *(a9 + 176) = v53;
      *(a9 + 184) = v73;
      *(a9 + 188) = *&v141[3];
      *(a9 + 185) = *v141;
      *(a9 + 192) = v35;
      *(a9 + 208) = v55;
      *(a9 + 216) = v57;
      *(a9 + 224) = v70;
      *(a9 + 228) = *&v140[3];
      *(a9 + 225) = *v140;
      result = *&v84;
      *(a9 + 232) = v84;
      *(a9 + 248) = v36;
      *(a9 + 256) = v37;
      *(a9 + 264) = v38;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001DLL;
    v31[1] = 0x800000021478F2A0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6BC(a17, a18);
  sub_213FDC6BC(a15, a16);
  sub_213FDC6BC(a13, a14);
  sub_213FDC6BC(a11, a12);
  sub_213FB54FC(a3, a4);

  v84 = v23;
  v85 = v45;
  v86 = v24;
  v87 = v25;
  *v88 = v146[0];
  *&v88[3] = *(v146 + 3);
  v89 = v83;
  v90 = v47;
  v91 = v29;
  v92 = v80;
  v93 = v81;
  v94 = a5 & 1;
  v95 = v144;
  v96 = v145;
  v97 = a6;
  v98 = a7 & 1;
  *&v99[3] = *(v143 + 3);
  *v99 = v143[0];
  v100 = a8;
  v101 = a10;
  v102 = v79;
  v103 = v49;
  v104 = v52;
  v105 = v50;
  v106 = v77;
  *v107 = *v142;
  *&v107[3] = *&v142[3];
  v108 = v74;
  v109 = v54;
  v110 = v71;
  v111 = v56;
  v112 = v72;
  *&v113[3] = *&v141[3];
  *v113 = *v141;
  v114 = v67;
  v115 = v58;
  v116 = v68;
  v117 = v59;
  v118 = v69;
  *&v119[3] = *&v140[3];
  *v119 = *v140;
  v120 = v66;
  v121 = v60;
  v122 = v61;
  v123 = v65;
  sub_2142FB6FC(&v84);
  return result;
}

unint64_t sub_214184FA4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x654B64726F636572;
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0x6974707972636564;
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
    v2 = 0xD000000000000014;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x546567617373656DLL;
    if (a1 != 4)
    {
      v3 = 0x657061706C6C6177;
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

uint64_t sub_2141850F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436D4D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214185120(uint64_t a1)
{
  v2 = sub_2142FB750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418515C(uint64_t a1)
{
  v2 = sub_2142FB750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214185198@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908220, &qword_2146F4F78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = a1[3];
  v168 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142FB750();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v168);
  }

  v101 = a2;
  v102 = v6;
  LOBYTE(v104) = 0;
  v10 = sub_2146DA168();
  v12 = v11;
  v100 = v10;
  LOBYTE(v103[0]) = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v13 = v104;
  LOBYTE(v104) = 2;
  v14 = sub_2146DA178();
  v98 = *(&v13 + 1);
  v99 = v13;
  LODWORD(v97) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v103[0]) = 3;
  sub_2142E11FC();
  sub_2146DA1C8();
  v15 = v104;
  v96 = BYTE8(v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v103[0]) = 4;
  sub_2142E12FC();
  sub_2146DA1C8();
  v92 = v104;
  v93 = v15;
  v95 = *(&v104 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v103[0]) = 5;
  v94 = sub_2142E1278();
  sub_2146DA1C8();
  v17 = *(&v104 + 1);
  v91 = v104;
  LOBYTE(v103[0]) = 6;
  sub_2146DA1C8();
  v90 = v17;
  v89 = *(&v104 + 1);
  v18 = v104;
  LOBYTE(v103[0]) = 7;
  sub_2146DA1C8();
  v87 = v104;
  v88 = v18;
  v158 = 8;
  sub_2146DA1C8();
  v61 = v8;
  v62 = v5;
  v64 = v159;
  v65 = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  v86 = xmmword_2146E9BF0;
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  v21[2] = sub_214059904;
  v21[3] = 0;
  v21[4] = 16;
  *(v20 + 16) = sub_21438F678;
  *(v20 + 24) = v21;
  *(v19 + 32) = v20;
  sub_214042B80(v19, &v104);
  v22 = *(&v104 + 1);
  v94 = v104;
  v58 = v105;
  v23 = v106;
  v24 = v107;
  v25 = swift_allocObject();
  *(v25 + 16) = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  v27[2] = sub_214059904;
  v27[3] = 0;
  v27[4] = 16;
  v27[5] = sub_21403C354;
  v27[6] = 0;
  *(v26 + 16) = sub_21438F670;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_214042CD0(v25, v103);
  v82 = v103[0];
  v85 = v103[1];
  *&v86 = v103[2];
  v84 = v103[3];
  v83 = LOBYTE(v103[4]);
  sub_2145E5EF4(&v153);
  v79 = v153;
  v80 = v155;
  v81 = v154;
  v78 = v156;
  sub_2145E6064(&v149);
  v75 = v149;
  v76 = v151;
  v77 = v150;
  v74 = v152;
  sub_2145E61D4(&v145);
  v71 = v145;
  v72 = v147;
  v73 = v146;
  v70 = v148;
  sub_2145E6344(&v141);
  v67 = v141;
  v68 = v142;
  v69 = v143;
  v66 = v144;
  v63 = v97 & 1;
  v157 = v96;
  v103[0] = v100;
  v59 = v12;
  v103[1] = v12;
  v60 = v24;
  LOBYTE(v153) = v24;
  *&v104 = 0xD00000000000001DLL;
  *(&v104 + 1) = 0x800000021478F2A0;
  v105 = 0xD00000000000001CLL;
  v106 = 0x800000021478A360;

  v97 = v22;
  if (v94(v103, &v153, &v104))
  {

    *&v104 = v82;
    v28 = v86;
    *(&v104 + 1) = v85;
    v105 = v86;
    v29 = v84;
    v106 = v84;
    v107 = v83;

    sub_213FDCA18(v28, v29);
    sub_214032024(v99, v98, 2, 0xD000000000000021, 0x800000021478F2C0, 0xD00000000000001CLL, 0x800000021478A360);

    v31 = *(&v104 + 1);
    v82 = v104;
    v57 = v105;
    v58 = v106;
    v83 = v107;

    sub_213FDC6BC(v86, v84);
    v104 = v79;
    v32 = v80;
    v33 = v81;
    v105 = v81;
    v106 = v80;
    v107 = v78;

    sub_21404F7E0(v33, v32);
    sub_214032118(v91, v90, 2, 0xD000000000000020, 0x800000021478F2F0, 0xD00000000000001CLL, 0x800000021478A360);

    v54 = *(&v104 + 1);
    *&v79 = v104;
    v55 = v105;
    v56 = v106;
    v78 = v107;

    sub_214032564(v81, v80);
    v104 = v75;
    v34 = v76;
    v35 = v77;
    v105 = v77;
    v106 = v76;
    v107 = v74;

    sub_21404F7E0(v35, v34);
    sub_214032118(v88, v89, 2, 0xD000000000000026, 0x800000021478F320, 0xD00000000000001CLL, 0x800000021478A360);

    v51 = *(&v104 + 1);
    *&v75 = v104;
    v52 = v105;
    v53 = v106;
    v74 = v107;

    sub_214032564(v77, v76);
    v104 = v71;
    v36 = v72;
    v37 = v73;
    v105 = v73;
    v106 = v72;
    v107 = v70;

    sub_21404F7E0(v37, v36);
    sub_214032118(v87, *(&v87 + 1), 2, 0xD000000000000028, 0x800000021478F350, 0xD00000000000001CLL, 0x800000021478A360);

    v48 = *(&v104 + 1);
    *&v71 = v104;
    v49 = v105;
    v50 = v106;
    v70 = v107;

    sub_214032564(v73, v72);
    v153 = v67;
    v38 = v68;
    v39 = v69;
    v154 = v68;
    v155 = v69;
    v156 = v66;

    sub_21404F7E0(v38, v39);
    sub_214032118(v64, v65, 2, 0xD000000000000027, 0x800000021478F380, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v87, *(&v87 + 1));
    sub_213FDC6BC(v88, v89);
    sub_213FDC6BC(v91, v90);
    sub_213FB54FC(v99, v98);
    sub_213FDC6BC(v64, v65);
    (*(v102 + 8))(v61, v62);
    v102 = *(&v153 + 1);
    v90 = v153;
    v98 = v155;
    v99 = v154;
    LODWORD(v91) = v156;

    sub_214032564(v68, v69);
    *(&v103[18] + 1) = *v163;
    HIDWORD(v103[23]) = *&v162[3];
    *(&v103[23] + 1) = *v162;
    HIDWORD(v103[28]) = *&v161[3];
    *(&v103[28] + 1) = *v161;
    *(&v103[4] + 1) = v167[0];
    HIDWORD(v103[4]) = *(v167 + 3);
    *(&v103[9] + 2) = v165;
    HIWORD(v103[9]) = v166;
    *(&v103[11] + 1) = *v164;
    HIDWORD(v103[11]) = *&v164[3];
    HIDWORD(v103[18]) = *&v163[3];
    v103[0] = v94;
    v103[1] = v97;
    v40 = v100;
    v103[2] = v100;
    v41 = v59;
    v103[3] = v59;
    v42 = v60;
    LOBYTE(v103[4]) = v60;
    v103[5] = v82;
    v43 = v31;
    v103[6] = v31;
    v44 = v57;
    v103[7] = v57;
    v103[8] = v58;
    LOBYTE(v103[9]) = v83;
    BYTE1(v103[9]) = v63;
    v103[10] = v93;
    LOBYTE(v103[11]) = v96;
    v103[12] = v92;
    v103[13] = v95;
    v103[14] = v79;
    v103[15] = v54;
    v103[16] = v55;
    v103[17] = v56;
    LOBYTE(v103[18]) = v78;
    v103[19] = v75;
    v103[20] = v51;
    v103[21] = v52;
    v103[22] = v53;
    LOBYTE(v103[23]) = v74;
    v103[24] = v71;
    v103[25] = v48;
    v103[26] = v49;
    v103[27] = v50;
    LOBYTE(v103[28]) = v70;
    v45 = v90;
    v103[29] = v90;
    v103[30] = v102;
    v103[31] = v99;
    v103[32] = v98;
    LOBYTE(v103[33]) = v91;
    memcpy(v101, v103, 0x109uLL);
    sub_2142FB7A4(v103, &v104);
    __swift_destroy_boxed_opaque_existential_1(v168);
    *&v104 = v94;
    *(&v104 + 1) = v97;
    v105 = v40;
    v106 = v41;
    v107 = v42;
    v109 = v82;
    v110 = v43;
    *v108 = v167[0];
    *&v108[3] = *(v167 + 3);
    v111 = v44;
    v112 = v58;
    v113 = v83;
    v114 = v63;
    v115 = v165;
    v116 = v166;
    v117 = v93;
    v118 = v96;
    *v119 = *v164;
    *&v119[3] = *&v164[3];
    v120 = v92;
    v121 = v95;
    *&v122 = v79;
    *(&v122 + 1) = v54;
    v123 = v55;
    v124 = v56;
    v125 = v78;
    *v126 = *v163;
    *&v126[3] = *&v163[3];
    *&v127 = v75;
    *(&v127 + 1) = v51;
    v128 = v52;
    v129 = v53;
    v130 = v74;
    *&v131[3] = *&v162[3];
    *v131 = *v162;
    *&v132 = v71;
    *(&v132 + 1) = v48;
    v133 = v49;
    v134 = v50;
    v135 = v70;
    *&v136[3] = *&v161[3];
    *v136 = *v161;
    *&v137 = v45;
    *(&v137 + 1) = v102;
    v138 = v99;
    v139 = v98;
    v46 = v91;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001DLL;
    v30[1] = 0x800000021478F2A0;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v87, *(&v87 + 1));
    sub_213FDC6BC(v88, v89);
    sub_213FDC6BC(v91, v90);
    sub_213FB54FC(v99, v98);
    sub_213FDC6BC(v64, v65);
    (*(v102 + 8))(v61, v62);

    v100 = v58;
    __swift_destroy_boxed_opaque_existential_1(v168);
    *&v104 = v94;
    *(&v104 + 1) = v97;
    v105 = v100;
    v106 = v23;
    v107 = v60;
    *v108 = v167[0];
    *&v108[3] = *(v167 + 3);
    v109 = v82;
    v110 = v85;
    v111 = v86;
    v112 = v84;
    v113 = v83;
    v114 = v63;
    v115 = v165;
    v116 = v166;
    v117 = v93;
    v118 = v96;
    *&v119[3] = *&v164[3];
    *v119 = *v164;
    v120 = v92;
    v121 = v95;
    v122 = v79;
    v123 = v81;
    v124 = v80;
    v125 = v78;
    *v126 = *v163;
    *&v126[3] = *&v163[3];
    v127 = v75;
    v128 = v77;
    v129 = v76;
    v130 = v74;
    *&v131[3] = *&v162[3];
    *v131 = *v162;
    v132 = v71;
    v133 = v73;
    v134 = v72;
    v135 = v70;
    *&v136[3] = *&v161[3];
    *v136 = *v161;
    v137 = v67;
    v138 = v68;
    v139 = v69;
    v46 = v66;
  }

  v140 = v46;
  return sub_2142FB6FC(&v104);
}

uint64_t sub_2141865B8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908230, &qword_2146F4F80);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v34 = *(v1 + 73);
  v29 = *(v1 + 80);
  v30 = v6;
  v28 = *(v1 + 88);
  v8 = *(v1 + 96);
  v26 = *(v1 + 104);
  v27 = v8;
  v9 = *(v1 + 128);
  v24 = *(v1 + 136);
  v25 = v9;
  v10 = *(v1 + 168);
  v22 = *(v1 + 176);
  v23 = v10;
  v11 = *(v1 + 208);
  v20 = *(v1 + 216);
  v21 = v11;
  v12 = *(v1 + 248);
  v18 = *(v1 + 256);
  v19 = v12;
  v13 = a1[3];
  v14 = a1;
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_2142FB750();
  sub_2146DAA28();
  if (!v5)
  {
    goto LABEL_10;
  }

  LOBYTE(v32) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v31 + 8))(v16, v4);
  }

  if (v7 >> 60 == 15 || (v32 = v30, v33 = v7, v35 = 1, sub_21402D9F8(v30, v7), sub_214061684(), sub_2146DA388(), sub_213FB54FC(v32, v33), LOBYTE(v32) = 2, sub_2146DA338(), v32 = v29, LOBYTE(v33) = v28, v35 = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0), sub_2142E1C30(), sub_2146DA388(), v32 = v27, v33 = v26, v35 = 4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v24 >> 60 == 11) || (v32 = v25, v33 = v24, v35 = 5, sub_213FDCA18(v25, v24), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0), sub_2142E1CAC(), sub_2146DA388(), sub_213FDC6BC(v32, v33), v22 >> 60 == 11) || (v32 = v23, v33 = v22, v35 = 6, sub_213FDCA18(v23, v22), sub_2146DA388(), sub_213FDC6BC(v32, v33), v20 >> 60 == 11) || (v32 = v21, v33 = v20, v35 = 7, sub_213FDCA18(v21, v20), sub_2146DA388(), sub_213FDC6BC(v32, v33), v18 >> 60 == 11))
  {
LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v32 = v19;
    v33 = v18;
    v35 = 8;
    sub_213FDCA18(v19, v18);
    sub_2146DA388();
    sub_213FDC6BC(v32, v33);
    return (*(v31 + 8))(v16, v4);
  }

  return result;
}

uint64_t sub_214186AB4@<X0>(void *__src@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  memcpy(a3, __src, 0x109uLL);
  v5 = type metadata accessor for NicknameInformationMessage(0);
  return sub_214328704(a2, &a3[*(v5 + 20)], type metadata accessor for Metadata);
}

uint64_t sub_214186B24()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_214186B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000002147953E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_214186C4C(uint64_t a1)
{
  v2 = sub_2142FB800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214186C88(uint64_t a1)
{
  v2 = sub_2142FB800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214186CC4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908238, &qword_2146F4F88);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB800();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v17;
    v11 = v6;
    v20[295] = 0;
    sub_2142FB854();
    v12 = v18;
    sub_2146DA1C8();
    memcpy(v19, v20, sizeof(v19));
    v20[294] = 1;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v12);
    v13 = type metadata accessor for NicknameInformationMessage(0);
    v14 = v16;
    sub_214328704(v11, &v16[*(v13 + 20)], type metadata accessor for Metadata);
    memcpy(v14, v19, 0x109uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214186F6C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908248, &qword_2146F4F90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB800();
  sub_2146DAA28();
  memcpy(v13, v3, 0x109uLL);
  memcpy(v12, v3, sizeof(v12));
  v13[295] = 0;
  sub_2142FB7A4(v13, v11);
  sub_2142FB8A8();
  sub_2146DA388();
  memcpy(v11, v12, 0x109uLL);
  sub_2142FB6FC(v11);
  if (!v2)
  {
    type metadata accessor for NicknameInformationMessage(0);
    v13[294] = 1;
    type metadata accessor for Metadata(0);
    sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2141871C4(uint64_t a1)
{
  v2 = sub_2142FB8FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214187200(uint64_t a1)
{
  v2 = sub_2142FB8FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21418723C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908250, &qword_2146F4F98);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB8FC();
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

uint64_t sub_214187448(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908260, &qword_2146F4FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB8FC();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2141875D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908260, &qword_2146F4FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB8FC();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

__n128 sub_214187750@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_21418776C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1970169197 && a2 == 0xE400000000000000)
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

uint64_t sub_2141877F4(uint64_t a1)
{
  v2 = sub_2142FB950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214187830(uint64_t a1)
{
  v2 = sub_2142FB950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21418786C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908268, &unk_2146F4FA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB950();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905110, &qword_2146F14D0);
    sub_2142FB9A4();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v12[3];
    a2[2] = v12[2];
    a2[3] = v9;
    a2[4] = v12[4];
    v10 = v12[1];
    *a2 = v12[0];
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214187A00(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908288, &qword_2146F4FB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[3];
  v18 = v1[2];
  v19 = v7;
  v20 = v1[4];
  v8 = v1[1];
  v16 = *v1;
  v17 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v16, &v11, &qword_27C905110, &qword_2146F14D0);
  sub_2142FB950();
  sub_2146DAA28();
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v11 = v16;
  v12 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905110, &qword_2146F14D0);
  sub_2142FBA7C();
  sub_2146DA388();
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  v10[1] = v12;
  v10[0] = v11;
  sub_213FB2DF4(v10, &qword_27C905110, &qword_2146F14D0);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214187C28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436D7D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214187C50(uint64_t a1)
{
  v2 = sub_2142FBB54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214187C8C(uint64_t a1)
{
  v2 = sub_2142FBB54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214187CC8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082A0, &unk_2146F4FC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142FBB54();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  v10 = v6;
  LOBYTE(v59[0]) = 0;
  v52 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v53) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v13 = v59[0];
  v12 = v59[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905138, &qword_2146F14E0);
  v69[48] = 2;
  sub_2142FBBA8();
  sub_2146DA1C8();
  v39 = v13;
  v46 = v12;
  v43 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146F3C40;
  *(v15 + 16) = sub_21438F468;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_21404328C(inited, &v53);
  v17 = *(&v53 + 1);
  v51 = v53;
  v40 = v54;
  LOBYTE(v15) = BYTE8(v54);
  LODWORD(inited) = BYTE9(v54);
  sub_21464CD1C(v59);
  v42 = v59[0];
  v49 = v59[1];
  v50 = v60;
  v48 = v61;
  v47 = v62;
  v74 = v15;
  LOBYTE(v58[0]) = v15;
  *&v53 = v52;
  v41 = inited;
  v69[0] = inited;
  strcpy(v59, "MBDMenu.level");
  HIWORD(v59[1]) = -4864;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;
  v44 = 0x800000021478A360;

  v45 = v17;
  v18 = v51(&v53, v69, v59);
  v19 = v46;
  if (v18)
  {
    v20 = v44;

    v74 = 0;
    v58[0] = v39;
    v58[1] = v19;
    LOBYTE(v53) = v47;
    v59[0] = 0xD000000000000013;
    v59[1] = 0x800000021478C7C0;
    v40 = 0x800000021478C7C0;
    v60 = 0xD00000000000001CLL;
    v61 = v20;

    sub_213FDC9D0(v50, v48);
    v21 = v42;
    v22 = v42(v58, &v53, v59);
    v23 = v21;
    v28 = v40;
    if (v22)
    {
      v29 = v48;
      sub_213FDC6D0(v50, v48);

      (*(v10 + 8))(v8, v5);
      v30 = v49;

      sub_213FDC6D0(v50, v29);
      v31 = v51;
      v32 = v52;
      v33 = v45;
      *&v53 = v51;
      *(&v53 + 1) = v45;
      *&v54 = v52;
      v34 = v74;
      BYTE8(v54) = v74;
      v35 = v41;
      BYTE9(v54) = v41;
      *&v55 = v21;
      *(&v55 + 1) = v30;
      *&v56 = v39;
      *(&v56 + 1) = v46;
      LOBYTE(v57) = v47;
      *(&v57 + 1) = v43;
      v36 = v56;
      a2[2] = v55;
      a2[3] = v36;
      a2[4] = v57;
      v37 = v54;
      *a2 = v53;
      a2[1] = v37;
      sub_2142FBC5C(&v53, v59);
      __swift_destroy_boxed_opaque_existential_1(v75);
      v59[0] = v31;
      v59[1] = v33;
      v60 = v32;
      LOBYTE(v61) = v34;
      BYTE1(v61) = v35;
      *(&v61 + 2) = v72;
      HIWORD(v61) = v73;
      v62 = v42;
      v63 = v30;
      v64 = v39;
      v27 = v46;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000013;
    v38[1] = v28;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = v44;
    swift_willThrow();

    (*(v10 + 8))(v8, v5);

    sub_213FDC6D0(v50, v48);
    v26 = v45;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    strcpy(v24, "MBDMenu.level");
    *(v24 + 7) = -4864;
    *(v24 + 2) = 0xD00000000000001CLL;
    *(v24 + 3) = v44;
    swift_willThrow();
    (*(v10 + 8))(v8, v5);
    v25 = v58[0];
    v23 = v42;
    v26 = v45;

    v74 = v25;
    v52 = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(v75);
  v59[0] = v51;
  v59[1] = v26;
  v60 = v52;
  LOBYTE(v61) = v74;
  BYTE1(v61) = v41;
  *(&v61 + 2) = v72;
  HIWORD(v61) = v73;
  v62 = v23;
  v63 = v49;
  v64 = v50;
  v27 = v48;
LABEL_8:
  v65 = v27;
  v66 = v47;
  *v67 = *v71;
  *&v67[3] = *&v71[3];
  v68 = v43;
  return sub_2142E1100(v59);
}

uint64_t sub_214188400(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082C0, &unk_2146F4FD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = v8;
  v11 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FBB54();
  sub_2146DAA28();
  if ((v7 & 1) == 0)
  {
    LOBYTE(v15) = 0;
    v9 = v14;
    sub_2146DA368();
    if (v9)
    {
      return (*(v4 + 8))(v6, v3);
    }

    if (v12 != 1)
    {
      v15 = v13;
      v16 = v12;
      v17 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v15 = v11;
      v17 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905138, &qword_2146F14E0);
      sub_2142FBCB8();
      sub_2146DA388();
      return (*(v4 + 8))(v6, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141886C0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  v10 = a3(0);
  return sub_21408AC04(a2, &a6[*(v10 + 20)], a4, a5);
}

uint64_t sub_214188730()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_214188764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_214188840(uint64_t a1)
{
  v2 = sub_2142FBD6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418887C(uint64_t a1)
{
  v2 = sub_2142FBD6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141888B8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082E0, &qword_2146F4FE0);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FBD6C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v6;
    v12 = v16;
    v20 = 0;
    sub_2142FBDC0();
    v13 = v17;
    sub_2146DA1C8();
    v18 = v21;
    v19 = 1;
    sub_2142FBE14();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v14 = type metadata accessor for MBDPersistentMenuItem(0);
    sub_21408AC04(v11, &v12[*(v14 + 20)], &qword_27C9082D8, &unk_21476AE70);
    *v12 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214188B18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908308, &qword_2146F4FE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FBD6C();
  sub_2146DAA28();
  v10[15] = *v3;
  v10[14] = 0;
  sub_2142FBEC8();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for MBDPersistentMenuItem(0);
    v10[13] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
    sub_2142FBF1C();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214188D34@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v8 = a3(0);
  return sub_214328704(a2, &a5[*(v8 + 20)], a4);
}

uint64_t sub_214188D94()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x546567617373656DLL;
  }
}

uint64_t sub_214188DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214795400 == a2)
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

uint64_t sub_214188EC4(uint64_t a1)
{
  v2 = sub_2142FBFD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214188F00(uint64_t a1)
{
  v2 = sub_2142FBFD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214188F3C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908328, &qword_2146F4FF0);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FBFD0();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v6;
    v12 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908338, &qword_2146F4FF8);
    v20 = 0;
    sub_2142FC024();
    v13 = v17;
    sub_2146DA1C8();
    v18 = v21;
    v19 = 1;
    sub_214328930(&qword_27C908350, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum, byte_2146FF180);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v14 = type metadata accessor for PhotosSharedAlbumMessage(0);
    sub_214328704(v11, &v12[*(v14 + 20)], type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
    *v12 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141891DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908358, &qword_2146F5000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FBFD0();
  sub_2146DAA28();
  v10[15] = *v3;
  v10[14] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908338, &qword_2146F4FF8);
  sub_2142FC0FC();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for PhotosSharedAlbumMessage(0);
    v10[13] = 1;
    type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
    sub_214328930(&qword_27C908370, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum, a1_35);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214189430(uint64_t a1)
{
  v2 = sub_2142FC1D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418946C(uint64_t a1)
{
  v2 = sub_2142FC1D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayedReceipt.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908378, &qword_2146F5008);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FC1D4();
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

uint64_t PlayedReceipt.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908388, &qword_2146F5010);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FC1D4();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214189844(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908388, &qword_2146F5010);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FC1D4();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

void *PhotosPoster.init(with:identifier:media:layerStack:layoutConfiguration:representsDeviceOwner:assetIdentifier:isForPlayground:faceRects:petRects:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, const void *a5@<X4>, __int128 *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  v52 = a1[1];
  v53 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2140676DC;
  *(v17 + 24) = 0;
  *(v16 + 32) = v17;
  sub_214042B80(v16, v75);
  v55 = v75[0];
  v18 = v75[1];
  v46 = v75[2];
  v19 = v75[3];
  v20 = v76;
  sub_2144495C4(v73);
  v50 = v73[0];
  v85 = v73[1];
  v56 = v73[2];
  v57 = v73[3];
  v51 = v74;
  v21 = a4[3];
  *&v77[39] = a4[2];
  *&v77[55] = v21;
  v22 = a4[5];
  *&v77[71] = a4[4];
  *&v77[87] = v22;
  v23 = a4[1];
  *&v77[7] = *a4;
  *&v77[23] = v23;
  v24 = *a6;
  *&v59[22] = a6[1];
  *&v59[6] = v24;
  v25 = a6[4];
  *&v59[86] = a6[5];
  *&v59[70] = v25;
  v26 = a6[2];
  *&v59[54] = a6[3];
  *&v59[38] = v26;
  v27 = a6[8];
  *&v59[150] = a6[9];
  *&v59[134] = v27;
  v28 = a6[6];
  *&v59[118] = a6[7];
  *&v59[102] = v28;
  *&v59[214] = *(a6 + 104);
  v29 = a6[11];
  *&v59[198] = a6[12];
  v30 = a6[10];
  *&v59[182] = v29;
  *&v59[166] = v30;
  v84[4] = *&v77[64];
  v84[5] = *&v77[80];
  *(&v84[5] + 15) = *&v77[95];
  v84[0] = *v77;
  v84[1] = *&v77[16];
  v84[2] = *&v77[32];
  v84[3] = *&v77[48];
  memcpy(&v84[6] + 7, a5, 0x132uLL);
  *(&v84[35] + 9) = *&v59[160];
  *(&v84[36] + 9) = *&v59[176];
  *(&v84[37] + 9) = *&v59[192];
  *(&v84[38] + 9) = *&v59[208];
  *(&v84[31] + 9) = *&v59[96];
  *(&v84[32] + 9) = *&v59[112];
  *(&v84[33] + 9) = *&v59[128];
  *(&v84[34] + 9) = *&v59[144];
  *(&v84[27] + 9) = *&v59[32];
  *(&v84[28] + 9) = *&v59[48];
  *(&v84[29] + 9) = *&v59[64];
  *(&v84[30] + 9) = *&v59[80];
  *(&v84[25] + 9) = *v59;
  *(&v84[26] + 9) = *&v59[16];
  v31 = a2;
  *v77 = a2;
  *&v77[8] = a3;
  __src = v20;
  LOBYTE(v75[0]) = v20;
  *v59 = 0xD000000000000017;
  *&v59[8] = 0x800000021478F3B0;
  *&v59[16] = 0xD00000000000001CLL;
  *&v59[24] = 0x800000021478A360;

  v32 = v18;
  v33 = v55(v77, v75, v59);
  v34 = v55;
  if (v47)
  {

LABEL_6:

    v35 = v32;
    v40 = v19;

    v41 = v46;
    v36 = v51;
    v37 = v50;
LABEL_7:
    v59[0] = v53;
    v59[1] = v52;
    *&v59[2] = v82;
    *&v59[6] = v83;
    *&v59[8] = v34;
    *&v59[16] = v35;
    *&v59[24] = v41;
    *&v59[32] = v40;
    v59[40] = __src;
    memcpy(&v59[41], v84, 0x271uLL);
    v60 = a7;
    v61 = v80;
    v62 = v81;
    v63 = v37;
    v64 = v85;
    v65 = v56;
    v66 = v57;
    v67 = v36;
    v68 = a11;
    v69 = v78;
    v70 = v79;
    v71 = a12;
    v72 = a13;
    return sub_2142FC228(v59);
  }

  if ((v33 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000017;
    v39[1] = 0x800000021478F3B0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v35 = v32;

  *v77 = a8;
  *&v77[8] = a10;
  v36 = v51;
  LOBYTE(v75[0]) = v51;
  *v59 = 0xD00000000000001CLL;
  *&v59[8] = 0x800000021478F3D0;
  *&v59[16] = 0xD00000000000001CLL;
  *&v59[24] = 0x800000021478A360;

  sub_213FDC9D0(v56, v57);
  v37 = v50;
  v38 = v50(v77, v75, v59);
  v40 = a3;
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000001CLL;
    v43[1] = 0x800000021478F3D0;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    v34 = v55;

    sub_213FDC6D0(v56, v57);
    v41 = v31;
    goto LABEL_7;
  }

  sub_213FDC6D0(v56, v57);

  sub_213FDC6D0(v56, v57);
  *a9 = v53;
  *(a9 + 1) = v52;
  *(a9 + 8) = v55;
  *(a9 + 16) = v35;
  *(a9 + 24) = v31;
  *(a9 + 32) = a3;
  *(a9 + 40) = __src;
  result = memcpy((a9 + 41), v84, 0x271uLL);
  *(a9 + 666) = a7;
  *(a9 + 672) = v50;
  *(a9 + 680) = v85;
  *(a9 + 688) = a8;
  *(a9 + 696) = a10;
  *(a9 + 704) = v51;
  *(a9 + 705) = a11;
  *(a9 + 712) = a12;
  *(a9 + 720) = a13;
  return result;
}

unint64_t sub_214189FD4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x616C50726F467369;
    v6 = 0x7463655265636166;
    if (a1 != 8)
    {
      v6 = 0x7374636552746570;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000015;
    if (a1 != 5)
    {
      v7 = 0x6564497465737361;
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
    v1 = 0x736E6F6974706FLL;
    v2 = 0x616964656DLL;
    v3 = 0x617453726579616CLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x696669746E656469;
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

uint64_t sub_21418A140@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436D8E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21418A168(uint64_t a1)
{
  v2 = sub_2142FC27C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418A1A4(uint64_t a1)
{
  v2 = sub_2142FC27C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908390, &qword_2146F5018);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = a1[3];
  v154 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142FC27C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v154);
  }

  v56 = v6;
  LOBYTE(v57[0]) = 0;
  sub_2142FC2D0();
  sub_2146DA1C8();
  v10 = v59;
  v11 = BYTE1(v59);
  LOBYTE(v59) = 1;
  v54 = sub_2146DA168();
  v55 = v13;
  v52 = v10;
  v53 = v11;
  v140 = 2;
  sub_2142FC324();
  sub_2146DA1C8();
  v136 = v143;
  v137 = v144;
  v138 = v145;
  v139 = v146;
  v134 = v141;
  v135 = v142;
  v132[311] = 3;
  sub_2142FC378();
  sub_2146DA1C8();
  memcpy(v132, v133, 0x132uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9083B8, &qword_2146F5020);
  v117 = 4;
  sub_2142FC420();
  sub_2146DA1C8();
  v113 = v128;
  v114 = v129;
  v115 = v130;
  v116 = v131;
  v109 = v124;
  v110 = v125;
  v111 = v126;
  v112 = v127;
  v105 = v120;
  v106 = v121;
  v107 = v122;
  v108 = v123;
  v103 = v118;
  v104 = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v57[0]) = 5;
  v14 = sub_2142E1378();
  sub_2146DA1C8();
  v51 = v14;
  v15 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v57[0]) = 6;
  sub_2142E12FC();
  sub_2146DA1C8();
  v50 = v15;
  v16 = v59;
  v17 = v60;
  LOBYTE(v57[0]) = 7;
  sub_2146DA1C8();
  v51 = v17;
  v47 = a2;
  v48 = v16;
  v49 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9083D0, &qword_2146F5028);
  LOBYTE(v57[0]) = 8;
  sub_2142FC54C();
  sub_2146DA1C8();
  v44 = v5;
  v45 = v59;
  v101 = 9;
  v46 = v8;
  sub_2146DA1C8();
  v35 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2140676DC;
  *(v19 + 24) = 0;
  *(v18 + 32) = v19;
  sub_2142FC684(&v134, &v59);
  sub_214042B80(v18, &v59);
  v20 = v59;
  v21 = v60;
  v34 = v61;
  v22 = v62;
  v23 = v63;
  sub_2144495C4(v57);
  v38 = v57[0];
  v40 = v57[2];
  v41 = v57[3];
  v42 = v57[1];
  v39 = LOBYTE(v57[4]);
  *&v100[39] = v136;
  *&v100[55] = v137;
  *&v100[71] = v138;
  *&v100[87] = v139;
  *&v100[7] = v134;
  *&v100[23] = v135;
  memcpy(v151, v132, sizeof(v151));
  *&v99[166] = v113;
  *&v99[182] = v114;
  *&v99[198] = v115;
  *&v99[102] = v109;
  *&v99[118] = v110;
  *&v99[134] = v111;
  *&v99[150] = v112;
  *&v99[38] = v105;
  *&v99[54] = v106;
  *&v99[70] = v107;
  *&v99[86] = v108;
  *&v99[6] = v103;
  *&v99[214] = v116;
  *&v99[22] = v104;
  v57[0] = v54;
  v57[1] = v55;
  v37 = v23;
  LOBYTE(v58[0]) = v23;
  v59 = 0xD000000000000017;
  v60 = 0x800000021478F3B0;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  v43 = v21;
  v36 = v20;
  if (v20(v57, v58, &v59))
  {

    v58[0] = v48;
    v58[1] = v51;
    LOBYTE(v57[0]) = v39;
    v59 = 0xD00000000000001CLL;
    v60 = 0x800000021478F3D0;
    v61 = 0xD00000000000001CLL;
    v62 = 0x800000021478A360;

    sub_213FDC9D0(v40, v41);
    if (v38(v58, v57, &v59))
    {
      v26 = v40;
      v25 = v41;
      sub_213FDC6D0(v40, v41);

      sub_2142FC3CC(&v134);
      (*(v56 + 8))(v46, v44);
      v27 = v42;

      sub_213FDC6D0(v26, v25);
      *(&v57[11] + 1) = *&v100[48];
      *(&v57[13] + 1) = *&v100[64];
      *(&v57[15] + 1) = *&v100[80];
      *(&v57[5] + 1) = *v100;
      *(&v57[7] + 1) = *&v100[16];
      LOBYTE(v57[0]) = v52;
      BYTE1(v57[0]) = v53;
      *(v57 + 2) = v152;
      HIWORD(v57[0]) = v153;
      v57[1] = v36;
      v57[2] = v43;
      v57[3] = v54;
      v57[4] = v55;
      LOBYTE(v57[5]) = v37;
      v57[17] = *&v100[95];
      *(&v57[9] + 1) = *&v100[32];
      memcpy(&v57[18], v151, 0x132uLL);
      *(&v57[76] + 2) = *&v99[160];
      *(&v57[78] + 2) = *&v99[176];
      *(&v57[80] + 2) = *&v99[192];
      *(&v57[82] + 2) = *&v99[208];
      *(&v57[68] + 2) = *&v99[96];
      *(&v57[70] + 2) = *&v99[112];
      *(&v57[72] + 2) = *&v99[128];
      *(&v57[74] + 2) = *&v99[144];
      *(&v57[60] + 2) = *&v99[32];
      *(&v57[62] + 2) = *&v99[48];
      *(&v57[64] + 2) = *&v99[64];
      *(&v57[66] + 2) = *&v99[80];
      *(&v57[56] + 2) = *v99;
      *(&v57[58] + 2) = *&v99[16];
      v28 = v49;
      BYTE2(v57[83]) = v50;
      *(&v57[83] + 3) = v149;
      HIBYTE(v57[83]) = v150;
      v57[84] = v38;
      v57[85] = v27;
      v29 = v48;
      v57[86] = v48;
      v30 = v51;
      v57[87] = v51;
      LOBYTE(v57[88]) = v39;
      BYTE1(v57[88]) = v49;
      *(&v57[88] + 2) = v147;
      HIWORD(v57[88]) = v148;
      v31 = v45;
      v57[89] = v45;
      v32 = v35;
      v57[90] = v35;
      memcpy(v47, v57, 0x2D8uLL);
      sub_2142FC6E0(v57, &v59);
      __swift_destroy_boxed_opaque_existential_1(v154);
      v68 = *&v100[48];
      v69 = *&v100[64];
      *v70 = *&v100[80];
      v65 = *v100;
      v66 = *&v100[16];
      LOBYTE(v59) = v52;
      BYTE1(v59) = v53;
      *(&v59 + 2) = v152;
      HIWORD(v59) = v153;
      v60 = v36;
      v61 = v43;
      v62 = v54;
      v63 = v55;
      v64 = v37;
      *&v70[15] = *&v100[95];
      v67 = *&v100[32];
      memcpy(v71, v151, sizeof(v71));
      v82 = *&v99[160];
      v83 = *&v99[176];
      v84 = *&v99[192];
      v85 = *&v99[208];
      v78 = *&v99[96];
      v79 = *&v99[112];
      v80 = *&v99[128];
      v81 = *&v99[144];
      v74 = *&v99[32];
      v75 = *&v99[48];
      v76 = *&v99[64];
      v77 = *&v99[80];
      v72 = *v99;
      v73 = *&v99[16];
      v86 = v50;
      v87 = v149;
      v88 = v150;
      v89 = v38;
      v90 = v27;
      v91 = v29;
      v92 = v30;
      v93 = v39;
      v94 = v28;
      v95 = v147;
      v96 = v148;
      v97 = v31;
      v98 = v32;
      return sub_2142FC228(&v59);
    }

    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001CLL;
    v33[1] = 0x800000021478F3D0;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    sub_2142FC3CC(&v134);
    (*(v56 + 8))(v46, v44);

    sub_213FDC6D0(v40, v41);
    v22 = v55;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000017;
    v24[1] = 0x800000021478F3B0;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    sub_2142FC3CC(&v134);
    (*(v56 + 8))(v46, v44);

    v54 = v34;
  }

  __swift_destroy_boxed_opaque_existential_1(v154);
  v68 = *&v100[48];
  v69 = *&v100[64];
  *v70 = *&v100[80];
  v65 = *v100;
  v66 = *&v100[16];
  LOBYTE(v59) = v52;
  BYTE1(v59) = v53;
  *(&v59 + 2) = v152;
  HIWORD(v59) = v153;
  v60 = v36;
  v61 = v43;
  v62 = v54;
  v63 = v22;
  v64 = v37;
  *&v70[15] = *&v100[95];
  v67 = *&v100[32];
  memcpy(v71, v151, sizeof(v71));
  v82 = *&v99[160];
  v83 = *&v99[176];
  v84 = *&v99[192];
  v85 = *&v99[208];
  v78 = *&v99[96];
  v79 = *&v99[112];
  v80 = *&v99[128];
  v81 = *&v99[144];
  v74 = *&v99[32];
  v75 = *&v99[48];
  v76 = *&v99[64];
  v77 = *&v99[80];
  v72 = *v99;
  v73 = *&v99[16];
  v86 = v50;
  v87 = v149;
  v88 = v150;
  v89 = v38;
  v90 = v42;
  v91 = v40;
  v92 = v41;
  v93 = v39;
  v94 = v49;
  v95 = v147;
  v96 = v148;
  v97 = v45;
  v98 = v35;
  return sub_2142FC228(&v59);
}

uint64_t PhotosPoster.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9083F8, &qword_2146F5038);
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = *(v2 + 6);
  v63 = *(v2 + 5);
  v64 = v7;
  v8 = *(v2 + 8);
  v65 = *(v2 + 7);
  v66 = v8;
  v9 = *(v2 + 4);
  v61 = *(v2 + 3);
  v10 = *v2;
  v11 = v2[1];
  v12 = *(v2 + 4);
  v33 = *(v2 + 3);
  v34 = v12;
  v62 = v9;
  memcpy(v67, v2 + 144, 0x132uLL);
  v31 = v2[666];
  v13 = *(v2 + 86);
  v29 = *(v2 + 87);
  v30 = v13;
  v28 = v2[705];
  v27 = *(v2 + 89);
  v32 = *(v2 + 90);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FC27C();
  v14 = v6;
  sub_2146DAA28();
  v52[0] = v10;
  v15 = v4;
  v52[1] = v11;
  v51[0] = 0;
  sub_2142FC73C();
  v16 = v68;
  sub_2146DA388();
  if (v16)
  {
    return (*(v35 + 8))(v6, v4);
  }

  v18 = v32;
  v19 = v35;
  if (!v34 || (v52[0] = 1, , sub_2146DA328(), , v57 = v63, v58 = v64, v59 = v65, v60 = v66, v55 = v61, v56 = v62, v54 = 2, sub_2142FC684(&v61, v52), sub_2142FC790(), sub_2146DA388(), v53[2] = v57, v53[3] = v58, v53[4] = v59, v53[5] = v60, v53[0] = v55, v53[1] = v56, sub_2142FC3CC(v53), memcpy(v52, v67, 0x132uLL), v51[311] = 3, sub_2142FC7E4(v67, v51), sub_2142FC840(), sub_2146DA388(), memcpy(v51, v52, 0x132uLL), sub_2142FC4F8(v51), v20 = *(v2 + 632), v47 = *(v2 + 616), v48 = v20, v49 = *(v2 + 648), v50 = *(v2 + 332), v21 = *(v2 + 568), v43 = *(v2 + 552), v44 = v21, v22 = *(v2 + 600), v45 = *(v2 + 584), v46 = v22, v23 = *(v2 + 504), v39 = *(v2 + 488), v40 = v23, v24 = *(v2 + 536), v41 = *(v2 + 520), v42 = v24, v25 = *(v2 + 472), v37 = *(v2 + 456), v38 = v25, v36 = 4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9083B8, &qword_2146F5020), sub_2142FC894(), sub_2146DA388(), LOBYTE(v37) = v31, v36 = 5, v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0), sub_2142E1D30(), sub_2146DA388(), v68 = v26, v29 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *&v37 = v30;
    *(&v37 + 1) = v29;
    v36 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    LOBYTE(v37) = v28;
    v36 = 7;
    sub_2146DA388();
    *&v37 = v27;
    v36 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9083D0, &qword_2146F5028);
    sub_2142FC96C();
    sub_2146DA388();
    *&v37 = v18;
    v36 = 9;
    sub_2146DA388();
    return (*(v19 + 8))(v14, v15);
  }

  return result;
}

uint64_t sub_21418B720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  LOBYTE(v17) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 256;
  *(v8 + 24) = v17;
  *(v7 + 16) = sub_2142FCAA4;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD000000000000016;
  v18 = 0x800000021478F3F0;
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
    *v14 = 0xD000000000000016;
    v14[1] = 0x800000021478F3F0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21418B948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_21418B9D0(uint64_t a1)
{
  v2 = sub_2142FCABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418BA0C(uint64_t a1)
{
  v2 = sub_2142FCABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21418BA48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908440, &qword_2146F5040);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FCABC();
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
  LOBYTE(v30) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 256;
  *(v14 + 24) = v30;
  *(v13 + 16) = sub_21438F67C;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_214042B80(inited, &v30);
  v16 = v30;
  v15 = v31;
  v29[0] = v27;
  v29[1] = v28;
  v35 = v34;
  v36 = v34;
  v30 = 0xD000000000000016;
  v31 = 0x800000021478F3F0;
  v25 = 0x800000021478F3F0;
  v26 = v33;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v17 = v16(v29, &v36, &v30);
  v23 = 0x800000021478A360;
  v18 = v25;
  if (v17)
  {

    (*(v6 + 8))(v8, v5);

    v19 = v24;
    *v24 = v16;
    v19[1] = v15;
    v20 = v28;
    v19[2] = v27;
    v19[3] = v20;
    *(v19 + 32) = v35;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v21 = 0xD000000000000016;
  v21[1] = v18;
  v22 = v23;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = v22;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_21418BE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, __int128 *a10, __int128 *a11, __int128 *a12, __int128 *a13, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21, __int128 *a22, __int128 *a23, __int128 *a24, __int128 *a25, __int128 *a26, __int128 *a27, __int128 *a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32, __int128 *a33, __int128 *a34, __int128 *a35, __int128 *a36, _OWORD *a37, __int128 *a38, __int128 *a39, __int128 *a40)
{
  v40 = MEMORY[0x28223BE20](a1);
  v652 = a37;
  v41 = v40[12];
  v42 = v40[13];
  v43 = v40[14];
  v44 = *(v40 + 234);
  v45 = v40[8];
  v46 = v40[9];
  v47 = v40[10];
  v48 = v40[11];
  v49 = v40[4];
  v50 = v40[5];
  v51 = v40[6];
  v52 = v40[7];
  v53 = *v40;
  v54 = v40[1];
  v55 = v40[2];
  v56 = v40[3];
  *(&__src[30] + 10) = *(v57 + 234);
  __src[12] = v41;
  __src[13] = v42;
  v58 = *v57;
  v59 = v57[1];
  __src[14] = v43;
  *(&__src[14] + 10) = v44;
  __src[8] = v45;
  __src[9] = v46;
  __src[10] = v47;
  __src[11] = v48;
  __src[4] = v49;
  __src[5] = v50;
  __src[6] = v51;
  __src[7] = v52;
  __src[0] = v53;
  __src[1] = v54;
  v60 = v57[12];
  v61 = v57[13];
  v62 = v57[14];
  v63 = v57[8];
  v64 = v57[9];
  v65 = v57[10];
  v66 = v57[11];
  v67 = v57[4];
  v68 = v57[5];
  v69 = v57[6];
  v70 = v57[7];
  v71 = v57[2];
  v72 = v57[3];
  *(&__src[46] + 10) = *(v73 + 234);
  v74 = v73[12];
  v75 = v73[13];
  v76 = v73[14];
  v77 = v73[8];
  v78 = v73[9];
  v80 = v73[10];
  v79 = v73[11];
  v81 = v73[4];
  v82 = v73[5];
  v83 = v73[6];
  v84 = v73[7];
  v85 = *v73;
  v86 = v73[1];
  *(&__src[62] + 10) = *(v87 + 234);
  v89 = v73[2];
  v88 = v73[3];
  __src[2] = v55;
  __src[3] = v56;
  __src[29] = v61;
  __src[30] = v62;
  __src[25] = v64;
  __src[26] = v65;
  __src[27] = v66;
  __src[28] = v60;
  __src[21] = v68;
  __src[22] = v69;
  __src[23] = v70;
  __src[24] = v63;
  __src[16] = v58;
  __src[17] = v59;
  __src[18] = v71;
  __src[19] = v72;
  __src[20] = v67;
  __src[44] = v74;
  __src[45] = v75;
  __src[40] = v77;
  __src[41] = v78;
  __src[42] = v80;
  __src[43] = v79;
  __src[36] = v81;
  __src[37] = v82;
  __src[38] = v83;
  __src[39] = v84;
  __src[32] = v85;
  __src[33] = v86;
  __src[34] = v89;
  v90 = v87[12];
  v91 = v87[13];
  v92 = v87[14];
  v93 = v87[8];
  v94 = v87[9];
  v95 = v87[10];
  v96 = v87[11];
  v97 = v87[4];
  v98 = v87[5];
  v99 = v87[6];
  v100 = v87[7];
  v101 = *v87;
  v102 = v87[1];
  v103 = v87[2];
  v104 = v87[3];
  *(&__src[78] + 10) = *(v105 + 234);
  v106 = v105[12];
  v107 = v105[13];
  v108 = v105[14];
  v109 = v105[8];
  v110 = v105[9];
  v111 = v105[10];
  v112 = v105[11];
  v113 = v105[4];
  v114 = v105[5];
  v115 = v105[6];
  v116 = v105[7];
  v117 = *v105;
  v118 = v105[1];
  *(&__src[94] + 10) = *(v119 + 234);
  v120 = v105[2];
  v121 = v105[3];
  __src[35] = v88;
  __src[61] = v91;
  __src[62] = v92;
  __src[57] = v94;
  __src[58] = v95;
  __src[59] = v96;
  __src[60] = v90;
  __src[53] = v98;
  __src[54] = v99;
  __src[55] = v100;
  __src[56] = v93;
  __src[46] = v76;
  __src[48] = v101;
  __src[49] = v102;
  __src[50] = v103;
  __src[51] = v104;
  __src[52] = v97;
  __src[76] = v106;
  __src[77] = v107;
  __src[78] = v108;
  __src[72] = v109;
  __src[73] = v110;
  __src[74] = v111;
  __src[75] = v112;
  __src[68] = v113;
  __src[69] = v114;
  __src[70] = v115;
  __src[71] = v116;
  __src[64] = v117;
  __src[65] = v118;
  v122 = v119[12];
  v123 = v119[13];
  v124 = v119[14];
  v125 = v119[8];
  v126 = v119[9];
  v127 = v119[10];
  v128 = v119[11];
  v129 = v119[4];
  v130 = v119[5];
  v131 = v119[6];
  v132 = v119[7];
  v133 = *v119;
  v134 = v119[1];
  v135 = v119[2];
  v136 = v119[3];
  *(&__src[110] + 10) = *(v137 + 234);
  v138 = v137[12];
  v139 = v137[13];
  v140 = v137[14];
  v141 = v137[8];
  v142 = v137[9];
  v143 = v137[10];
  v144 = v137[11];
  v145 = v137[4];
  v146 = v137[5];
  v147 = v137[6];
  v148 = v137[7];
  v149 = *v137;
  v150 = v137[1];
  *(&__src[126] + 10) = *(v151 + 234);
  v152 = v137[2];
  v153 = v137[3];
  __src[66] = v120;
  __src[67] = v121;
  __src[92] = v122;
  __src[93] = v123;
  __src[94] = v124;
  __src[88] = v125;
  __src[89] = v126;
  __src[90] = v127;
  __src[91] = v128;
  __src[84] = v129;
  __src[85] = v130;
  __src[86] = v131;
  __src[87] = v132;
  __src[80] = v133;
  __src[81] = v134;
  __src[82] = v135;
  __src[83] = v136;
  __src[108] = v138;
  __src[109] = v139;
  __src[110] = v140;
  __src[104] = v141;
  __src[105] = v142;
  __src[106] = v143;
  __src[107] = v144;
  __src[100] = v145;
  __src[101] = v146;
  __src[102] = v147;
  __src[103] = v148;
  __src[96] = v149;
  __src[97] = v150;
  v154 = v151[12];
  v155 = v151[13];
  v156 = v151[14];
  v157 = v151[8];
  v158 = v151[9];
  v159 = v151[10];
  v160 = v151[11];
  v161 = v151[4];
  v162 = v151[5];
  v163 = v151[6];
  v164 = v151[7];
  v165 = *v151;
  v166 = v151[1];
  v167 = v151[2];
  v168 = v151[3];
  *(&__src[142] + 10) = *(a9 + 234);
  v169 = a9[12];
  v170 = a9[13];
  v171 = a9[14];
  v172 = a9[8];
  v173 = a9[9];
  v174 = a9[10];
  v175 = a9[11];
  v176 = a9[4];
  v177 = a9[5];
  v178 = a9[6];
  v179 = a9[7];
  v180 = *a9;
  v181 = a9[1];
  *(&__src[158] + 10) = *(a10 + 234);
  v183 = a9[2];
  v182 = a9[3];
  __src[98] = v152;
  __src[99] = v153;
  __src[124] = v154;
  __src[125] = v155;
  __src[126] = v156;
  __src[120] = v157;
  __src[121] = v158;
  __src[122] = v159;
  __src[123] = v160;
  __src[116] = v161;
  __src[117] = v162;
  __src[118] = v163;
  __src[119] = v164;
  __src[112] = v165;
  __src[113] = v166;
  __src[114] = v167;
  __src[115] = v168;
  __src[140] = v169;
  __src[141] = v170;
  __src[142] = v171;
  __src[136] = v172;
  __src[137] = v173;
  __src[138] = v174;
  __src[139] = v175;
  __src[132] = v176;
  __src[133] = v177;
  __src[134] = v178;
  __src[135] = v179;
  v184 = a10[12];
  v185 = a10[13];
  v186 = a10[14];
  v187 = a10[8];
  v188 = a10[9];
  v189 = a10[10];
  v190 = a10[11];
  v191 = a10[4];
  v192 = a10[5];
  v193 = a10[6];
  v194 = a10[7];
  v195 = *a10;
  v196 = a10[1];
  v198 = a10[2];
  v197 = a10[3];
  *(&__src[174] + 10) = *(a11 + 234);
  *(&__src[190] + 10) = *(a12 + 234);
  *(&__src[206] + 10) = *(a13 + 234);
  *(&__src[222] + 10) = *(a14 + 234);
  *(&__src[238] + 10) = *(a15 + 234);
  *(&__src[254] + 10) = *(a16 + 234);
  *(&__src[270] + 10) = *(a17 + 234);
  *(&__src[286] + 10) = *(a18 + 234);
  *(&__src[302] + 10) = *(a19 + 234);
  *(&__src[318] + 10) = *(a20 + 234);
  *(&__src[334] + 10) = *(a21 + 234);
  *(&__src[350] + 10) = *(a22 + 234);
  *(&__src[366] + 10) = *(a23 + 234);
  *(&__src[382] + 10) = *(a24 + 234);
  *(&__src[398] + 10) = *(a25 + 234);
  v199 = a25[10];
  *(&__src[414] + 10) = *(a26 + 234);
  *(&__src[430] + 10) = *(a27 + 234);
  *(&__src[446] + 10) = *(a28 + 234);
  *(&__src[462] + 10) = *(a29 + 234);
  *(&__src[478] + 10) = *(a30 + 234);
  *(&__src[494] + 10) = *(a31 + 234);
  *(&__src[510] + 10) = *(a32 + 234);
  *(&__src[526] + 10) = *(a33 + 234);
  *(&__src[542] + 10) = *(a34 + 234);
  *(&__src[558] + 10) = *(a35 + 234);
  *(&__src[574] + 10) = *(a36 + 234);
  *(&__src[590] + 10) = *(a37 + 234);
  *(&__src[606] + 10) = *(a38 + 234);
  *(&__src[622] + 10) = *(a39 + 234);
  *(&__src[638] + 10) = *(a40 + 234);
  __src[128] = v180;
  __src[129] = v181;
  __src[130] = v183;
  v200 = a11[12];
  v201 = a11[13];
  v202 = a11[14];
  v203 = a11[8];
  v204 = a11[9];
  v205 = a11[10];
  v206 = a11[11];
  v207 = a11[4];
  v208 = a11[5];
  v209 = a11[6];
  v210 = a11[7];
  v211 = *a11;
  v212 = a11[1];
  v213 = a11[2];
  v214 = a11[3];
  __src[131] = v182;
  __src[156] = v184;
  __src[157] = v185;
  __src[158] = v186;
  __src[152] = v187;
  __src[153] = v188;
  __src[154] = v189;
  __src[155] = v190;
  __src[148] = v191;
  __src[149] = v192;
  __src[150] = v193;
  __src[151] = v194;
  __src[144] = v195;
  __src[145] = v196;
  __src[146] = v198;
  v215 = a12[12];
  v216 = a12[13];
  v217 = a12[14];
  v218 = a12[8];
  v219 = a12[9];
  v220 = a12[10];
  v221 = a12[11];
  v222 = a12[4];
  v223 = a12[5];
  v224 = a12[6];
  v225 = a12[7];
  v226 = *a12;
  v227 = a12[1];
  v228 = a12[2];
  v229 = a12[3];
  __src[147] = v197;
  __src[172] = v200;
  __src[173] = v201;
  __src[174] = v202;
  __src[168] = v203;
  __src[169] = v204;
  __src[170] = v205;
  __src[171] = v206;
  __src[164] = v207;
  __src[165] = v208;
  __src[166] = v209;
  __src[167] = v210;
  __src[160] = v211;
  __src[161] = v212;
  __src[162] = v213;
  v230 = a13[12];
  v231 = a13[13];
  v232 = a13[14];
  v233 = a13[8];
  v234 = a13[9];
  v235 = a13[10];
  v236 = a13[11];
  v238 = a13[4];
  v237 = a13[5];
  v239 = a13[6];
  v240 = a13[7];
  v241 = *a13;
  v242 = a13[1];
  v243 = a13[2];
  v244 = a13[3];
  __src[163] = v214;
  __src[188] = v215;
  __src[189] = v216;
  __src[190] = v217;
  __src[184] = v218;
  __src[185] = v219;
  __src[186] = v220;
  __src[187] = v221;
  __src[180] = v222;
  __src[181] = v223;
  __src[182] = v224;
  __src[183] = v225;
  __src[176] = v226;
  __src[177] = v227;
  __src[178] = v228;
  v245 = a14[12];
  v246 = a14[13];
  v247 = a14[14];
  v248 = a14[8];
  v249 = a14[9];
  v250 = a14[10];
  v251 = a14[11];
  v252 = a14[4];
  v253 = a14[5];
  v254 = a14[6];
  v255 = a14[7];
  v256 = *a14;
  v257 = a14[1];
  v259 = a14[2];
  v258 = a14[3];
  __src[179] = v229;
  __src[204] = v230;
  __src[205] = v231;
  __src[206] = v232;
  __src[200] = v233;
  __src[201] = v234;
  __src[202] = v235;
  __src[203] = v236;
  __src[196] = v238;
  __src[197] = v237;
  __src[198] = v239;
  __src[199] = v240;
  __src[192] = v241;
  __src[193] = v242;
  __src[194] = v243;
  v260 = a15[12];
  v261 = a15[13];
  v262 = a15[14];
  v263 = a15[8];
  v264 = a15[9];
  v265 = a15[10];
  v266 = a15[11];
  v267 = a15[4];
  v268 = a15[5];
  v269 = a15[6];
  v270 = a15[7];
  v271 = *a15;
  v272 = a15[1];
  v273 = a15[2];
  v274 = a15[3];
  __src[195] = v244;
  __src[220] = v245;
  __src[221] = v246;
  __src[222] = v247;
  __src[216] = v248;
  __src[217] = v249;
  __src[218] = v250;
  __src[219] = v251;
  __src[212] = v252;
  __src[213] = v253;
  __src[214] = v254;
  __src[215] = v255;
  __src[208] = v256;
  __src[209] = v257;
  __src[210] = v259;
  v275 = a16[12];
  v276 = a16[13];
  v277 = a16[14];
  v278 = a16[8];
  v279 = a16[9];
  v280 = a16[10];
  v281 = a16[11];
  v282 = a16[4];
  v283 = a16[5];
  v284 = a16[6];
  v285 = a16[7];
  v286 = *a16;
  v287 = a16[1];
  v289 = a16[2];
  v288 = a16[3];
  __src[211] = v258;
  __src[236] = v260;
  __src[237] = v261;
  __src[238] = v262;
  __src[232] = v263;
  __src[233] = v264;
  __src[234] = v265;
  __src[235] = v266;
  __src[228] = v267;
  __src[229] = v268;
  __src[230] = v269;
  __src[231] = v270;
  __src[224] = v271;
  __src[225] = v272;
  __src[226] = v273;
  v290 = a17[12];
  v291 = a17[13];
  v292 = a17[14];
  v293 = a17[8];
  v294 = a17[9];
  v295 = a17[10];
  v296 = a17[11];
  v297 = a17[4];
  v298 = a17[5];
  v299 = a17[6];
  v300 = a17[7];
  v301 = *a17;
  v302 = a17[1];
  v303 = a17[2];
  v304 = a17[3];
  __src[227] = v274;
  __src[252] = v275;
  __src[253] = v276;
  __src[254] = v277;
  __src[248] = v278;
  __src[249] = v279;
  __src[250] = v280;
  __src[251] = v281;
  __src[244] = v282;
  __src[245] = v283;
  __src[246] = v284;
  __src[247] = v285;
  __src[240] = v286;
  __src[241] = v287;
  __src[242] = v289;
  v305 = a18[12];
  v306 = a18[13];
  v307 = a18[14];
  v308 = a18[8];
  v309 = a18[9];
  v310 = a18[10];
  v311 = a18[11];
  v312 = a18[4];
  v313 = a18[5];
  v314 = a18[6];
  v315 = a18[7];
  v316 = *a18;
  v317 = a18[1];
  v319 = a18[2];
  v318 = a18[3];
  __src[243] = v288;
  __src[268] = v290;
  __src[269] = v291;
  __src[270] = v292;
  __src[264] = v293;
  __src[265] = v294;
  __src[266] = v295;
  __src[267] = v296;
  __src[260] = v297;
  __src[261] = v298;
  __src[262] = v299;
  __src[263] = v300;
  __src[256] = v301;
  __src[257] = v302;
  __src[258] = v303;
  v320 = a19[12];
  v321 = a19[13];
  v322 = a19[14];
  v323 = a19[8];
  v324 = a19[9];
  v325 = a19[10];
  v326 = a19[11];
  v327 = a19[4];
  v328 = a19[5];
  v329 = a19[6];
  v330 = a19[7];
  v331 = *a19;
  v332 = a19[1];
  v333 = a19[2];
  v334 = a19[3];
  __src[259] = v304;
  __src[284] = v305;
  __src[285] = v306;
  __src[286] = v307;
  __src[280] = v308;
  __src[281] = v309;
  __src[282] = v310;
  __src[283] = v311;
  __src[276] = v312;
  __src[277] = v313;
  __src[278] = v314;
  __src[279] = v315;
  __src[272] = v316;
  __src[273] = v317;
  __src[274] = v319;
  v335 = a20[12];
  v336 = a20[13];
  v337 = a20[14];
  v338 = a20[8];
  v339 = a20[9];
  v340 = a20[10];
  v341 = a20[11];
  v342 = a20[4];
  v343 = a20[5];
  v344 = a20[6];
  v345 = a20[7];
  v346 = *a20;
  v347 = a20[1];
  v349 = a20[2];
  v348 = a20[3];
  __src[275] = v318;
  __src[300] = v320;
  __src[301] = v321;
  __src[302] = v322;
  __src[296] = v323;
  __src[297] = v324;
  __src[298] = v325;
  __src[299] = v326;
  __src[292] = v327;
  __src[293] = v328;
  __src[294] = v329;
  __src[295] = v330;
  __src[288] = v331;
  __src[289] = v332;
  __src[290] = v333;
  v350 = a21[12];
  v351 = a21[13];
  v352 = a21[14];
  v353 = a21[8];
  v354 = a21[9];
  v355 = a21[10];
  v356 = a21[11];
  v357 = a21[4];
  v358 = a21[5];
  v359 = a21[6];
  v360 = a21[7];
  v361 = *a21;
  v362 = a21[1];
  v363 = a21[2];
  v364 = a21[3];
  __src[291] = v334;
  __src[316] = v335;
  __src[317] = v336;
  __src[318] = v337;
  __src[312] = v338;
  __src[313] = v339;
  __src[314] = v340;
  __src[315] = v341;
  __src[308] = v342;
  __src[309] = v343;
  __src[310] = v344;
  __src[311] = v345;
  __src[304] = v346;
  __src[305] = v347;
  __src[306] = v349;
  v365 = a22[12];
  v366 = a22[13];
  v367 = a22[14];
  v368 = a22[8];
  v369 = a22[9];
  v370 = a22[10];
  v371 = a22[11];
  v372 = a22[4];
  v373 = a22[5];
  v374 = a22[6];
  v375 = a22[7];
  v376 = *a22;
  v377 = a22[1];
  v379 = a22[2];
  v378 = a22[3];
  __src[307] = v348;
  __src[332] = v350;
  __src[333] = v351;
  __src[334] = v352;
  __src[328] = v353;
  __src[329] = v354;
  __src[330] = v355;
  __src[331] = v356;
  __src[324] = v357;
  __src[325] = v358;
  __src[326] = v359;
  __src[327] = v360;
  __src[320] = v361;
  __src[321] = v362;
  __src[322] = v363;
  v380 = a23[12];
  v381 = a23[13];
  v382 = a23[14];
  v383 = a23[8];
  v384 = a23[9];
  v385 = a23[10];
  v386 = a23[11];
  v387 = a23[4];
  v388 = a23[5];
  v389 = a23[6];
  v390 = a23[7];
  v391 = *a23;
  v392 = a23[1];
  v393 = a23[2];
  v394 = a23[3];
  __src[323] = v364;
  __src[348] = v365;
  __src[349] = v366;
  __src[350] = v367;
  __src[344] = v368;
  __src[345] = v369;
  __src[346] = v370;
  __src[347] = v371;
  __src[340] = v372;
  __src[341] = v373;
  __src[342] = v374;
  __src[343] = v375;
  __src[336] = v376;
  __src[337] = v377;
  __src[338] = v379;
  v395 = a24[12];
  v396 = a24[13];
  v397 = a24[14];
  v398 = a24[8];
  v399 = a24[9];
  v400 = a24[10];
  v401 = a24[11];
  v402 = a24[4];
  v403 = a24[5];
  v404 = a24[6];
  v405 = a24[7];
  v406 = *a24;
  v407 = a24[1];
  v409 = a24[2];
  v408 = a24[3];
  __src[339] = v378;
  __src[364] = v380;
  __src[365] = v381;
  __src[366] = v382;
  __src[360] = v383;
  __src[361] = v384;
  __src[362] = v385;
  __src[363] = v386;
  __src[356] = v387;
  __src[357] = v388;
  __src[358] = v389;
  __src[359] = v390;
  __src[352] = v391;
  __src[353] = v392;
  v410 = a25[13];
  v411 = a25[14];
  v412 = a25[8];
  v413 = a25[9];
  v415 = a25[11];
  v414 = a25[12];
  v416 = a25[4];
  v417 = a25[5];
  v419 = a25[6];
  v418 = a25[7];
  v420 = *a25;
  v421 = a25[1];
  v422 = a25[2];
  v423 = a25[3];
  __src[354] = v393;
  __src[355] = v394;
  __src[380] = v395;
  __src[381] = v396;
  __src[382] = v397;
  __src[376] = v398;
  __src[377] = v399;
  __src[378] = v400;
  __src[379] = v401;
  __src[372] = v402;
  __src[373] = v403;
  __src[374] = v404;
  __src[375] = v405;
  __src[368] = v406;
  __src[369] = v407;
  v424 = a26[12];
  v425 = a26[13];
  v426 = a26[14];
  v427 = a26[8];
  v428 = a26[9];
  v429 = a26[10];
  v430 = a26[11];
  v431 = a26[4];
  v432 = a26[5];
  v433 = a26[6];
  v434 = a26[7];
  v435 = *a26;
  v436 = a26[1];
  v437 = a26[2];
  v438 = a26[3];
  __src[370] = v409;
  __src[371] = v408;
  __src[396] = v414;
  __src[397] = v410;
  __src[398] = v411;
  __src[392] = v412;
  __src[393] = v413;
  __src[394] = v199;
  __src[395] = v415;
  __src[388] = v416;
  __src[389] = v417;
  __src[390] = v419;
  __src[391] = v418;
  __src[384] = v420;
  __src[385] = v421;
  v439 = a27[12];
  v440 = a27[13];
  v441 = a27[14];
  v442 = a27[8];
  v443 = a27[9];
  v444 = a27[10];
  v445 = a27[11];
  v446 = a27[4];
  v447 = a27[5];
  v448 = a27[6];
  v449 = a27[7];
  v450 = *a27;
  v451 = a27[1];
  v452 = a27[2];
  v453 = a27[3];
  __src[386] = v422;
  __src[387] = v423;
  __src[412] = v424;
  __src[413] = v425;
  __src[414] = v426;
  __src[408] = v427;
  __src[409] = v428;
  __src[410] = v429;
  __src[411] = v430;
  __src[404] = v431;
  __src[405] = v432;
  __src[406] = v433;
  __src[407] = v434;
  __src[400] = v435;
  __src[401] = v436;
  v454 = a28[12];
  v455 = a28[13];
  v456 = a28[14];
  v457 = a28[8];
  v458 = a28[9];
  v459 = a28[10];
  v460 = a28[11];
  v461 = a28[4];
  v462 = a28[5];
  v463 = a28[6];
  v464 = a28[7];
  v465 = *a28;
  v466 = a28[1];
  v467 = a28[2];
  v468 = a28[3];
  __src[402] = v437;
  __src[403] = v438;
  __src[428] = v439;
  __src[429] = v440;
  __src[430] = v441;
  __src[424] = v442;
  __src[425] = v443;
  __src[426] = v444;
  __src[427] = v445;
  __src[420] = v446;
  __src[421] = v447;
  __src[422] = v448;
  __src[423] = v449;
  __src[416] = v450;
  __src[417] = v451;
  v469 = a29[12];
  v470 = a29[13];
  v471 = a29[14];
  v472 = a29[8];
  v473 = a29[9];
  v474 = a29[10];
  v475 = a29[11];
  v476 = a29[4];
  v477 = a29[5];
  v478 = a29[6];
  v479 = a29[7];
  v480 = *a29;
  v481 = a29[1];
  v482 = a29[2];
  v483 = a29[3];
  __src[418] = v452;
  __src[419] = v453;
  __src[444] = v454;
  __src[445] = v455;
  __src[446] = v456;
  __src[440] = v457;
  __src[441] = v458;
  __src[442] = v459;
  __src[443] = v460;
  __src[436] = v461;
  __src[437] = v462;
  __src[438] = v463;
  __src[439] = v464;
  __src[432] = v465;
  __src[433] = v466;
  v484 = a30[12];
  v485 = a30[13];
  v486 = a30[14];
  v487 = a30[8];
  v488 = a30[9];
  v489 = a30[10];
  v490 = a30[11];
  v491 = a30[4];
  v492 = a30[5];
  v493 = a30[6];
  v494 = a30[7];
  v495 = *a30;
  v496 = a30[1];
  v497 = a30[2];
  v498 = a30[3];
  __src[434] = v467;
  __src[435] = v468;
  __src[460] = v469;
  __src[461] = v470;
  __src[462] = v471;
  __src[456] = v472;
  __src[457] = v473;
  __src[458] = v474;
  __src[459] = v475;
  __src[452] = v476;
  __src[453] = v477;
  __src[454] = v478;
  __src[455] = v479;
  __src[448] = v480;
  __src[449] = v481;
  v499 = a31[12];
  v500 = a31[13];
  v501 = a31[14];
  v502 = a31[8];
  v503 = a31[9];
  v504 = a31[10];
  v505 = a31[11];
  v506 = a31[4];
  v507 = a31[5];
  v508 = a31[6];
  v509 = a31[7];
  v510 = *a31;
  v511 = a31[1];
  v512 = a31[2];
  v513 = a31[3];
  __src[450] = v482;
  __src[451] = v483;
  __src[476] = v484;
  __src[477] = v485;
  __src[478] = v486;
  __src[472] = v487;
  __src[473] = v488;
  __src[474] = v489;
  __src[475] = v490;
  __src[468] = v491;
  __src[469] = v492;
  __src[470] = v493;
  __src[471] = v494;
  __src[464] = v495;
  __src[465] = v496;
  v514 = a32[12];
  v515 = a32[13];
  v516 = a32[14];
  v517 = a32[8];
  v518 = a32[9];
  v519 = a32[10];
  v520 = a32[11];
  v521 = a32[4];
  v522 = a32[5];
  v523 = a32[6];
  v524 = a32[7];
  v525 = *a32;
  v526 = a32[1];
  v527 = a32[2];
  v528 = a32[3];
  __src[466] = v497;
  __src[467] = v498;
  __src[492] = v499;
  __src[493] = v500;
  __src[494] = v501;
  __src[488] = v502;
  __src[489] = v503;
  __src[490] = v504;
  __src[491] = v505;
  __src[484] = v506;
  __src[485] = v507;
  __src[486] = v508;
  __src[487] = v509;
  __src[480] = v510;
  __src[481] = v511;
  v529 = a33[12];
  v530 = a33[13];
  v531 = a33[14];
  v532 = a33[8];
  v533 = a33[9];
  v534 = a33[10];
  v535 = a33[11];
  v536 = a33[4];
  v537 = a33[5];
  v538 = a33[6];
  v539 = a33[7];
  v540 = *a33;
  v541 = a33[1];
  v542 = a33[2];
  v543 = a33[3];
  __src[482] = v512;
  __src[483] = v513;
  __src[508] = v514;
  __src[509] = v515;
  __src[510] = v516;
  __src[504] = v517;
  __src[505] = v518;
  __src[506] = v519;
  __src[507] = v520;
  __src[500] = v521;
  __src[501] = v522;
  __src[502] = v523;
  __src[503] = v524;
  __src[496] = v525;
  __src[497] = v526;
  v544 = a34[12];
  v545 = a34[13];
  v546 = a34[14];
  v547 = a34[8];
  v548 = a34[9];
  v549 = a34[10];
  v550 = a34[11];
  v551 = a34[4];
  v552 = a34[5];
  v553 = a34[6];
  v554 = a34[7];
  v555 = *a34;
  v556 = a34[1];
  v557 = a34[2];
  v558 = a34[3];
  __src[498] = v527;
  __src[499] = v528;
  __src[524] = v529;
  __src[525] = v530;
  __src[526] = v531;
  __src[520] = v532;
  __src[521] = v533;
  __src[522] = v534;
  __src[523] = v535;
  __src[516] = v536;
  __src[517] = v537;
  __src[518] = v538;
  __src[519] = v539;
  __src[512] = v540;
  __src[513] = v541;
  v559 = a35[12];
  v560 = a35[13];
  v561 = a35[14];
  v562 = a35[8];
  v563 = a35[9];
  v564 = a35[10];
  v565 = a35[11];
  v566 = a35[4];
  v567 = a35[5];
  v568 = a35[6];
  v569 = a35[7];
  v570 = *a35;
  v571 = a35[1];
  v572 = a35[2];
  v573 = a35[3];
  __src[514] = v542;
  __src[515] = v543;
  __src[540] = v544;
  __src[541] = v545;
  __src[542] = v546;
  __src[536] = v547;
  __src[537] = v548;
  __src[538] = v549;
  __src[539] = v550;
  __src[532] = v551;
  __src[533] = v552;
  __src[534] = v553;
  __src[535] = v554;
  __src[528] = v555;
  __src[529] = v556;
  v574 = a36[12];
  v575 = a36[13];
  v576 = a36[14];
  v577 = a36[8];
  v578 = a36[9];
  v579 = a36[10];
  v580 = a36[11];
  v581 = a36[4];
  v582 = a36[5];
  v583 = a36[6];
  v584 = a36[7];
  v585 = *a36;
  v586 = a36[1];
  v587 = a36[2];
  v588 = a36[3];
  __src[530] = v557;
  __src[531] = v558;
  __src[556] = v559;
  __src[557] = v560;
  __src[558] = v561;
  __src[552] = v562;
  __src[553] = v563;
  __src[554] = v564;
  __src[555] = v565;
  __src[548] = v566;
  __src[549] = v567;
  __src[550] = v568;
  __src[551] = v569;
  __src[544] = v570;
  __src[545] = v571;
  v589 = a37[12];
  v590 = a37[13];
  v591 = a37[14];
  v592 = a37[8];
  v593 = a37[9];
  v594 = a37[10];
  v595 = a37[11];
  v596 = a37[4];
  v597 = a37[5];
  v599 = a37[6];
  v598 = a37[7];
  v600 = *a37;
  v601 = a37[1];
  v603 = a37[2];
  v602 = a37[3];
  __src[546] = v572;
  __src[547] = v573;
  __src[572] = v574;
  __src[573] = v575;
  __src[574] = v576;
  __src[568] = v577;
  __src[569] = v578;
  __src[570] = v579;
  __src[571] = v580;
  __src[564] = v581;
  __src[565] = v582;
  __src[566] = v583;
  __src[567] = v584;
  __src[560] = v585;
  __src[561] = v586;
  v604 = a38[12];
  v605 = a38[13];
  v606 = a38[14];
  v607 = a38[8];
  v608 = a38[9];
  v609 = a38[10];
  v610 = a38[11];
  v611 = a38[4];
  v612 = a38[5];
  v613 = a38[6];
  v614 = a38[7];
  v615 = *a38;
  v616 = a38[1];
  v617 = a38[2];
  v618 = a38[3];
  __src[562] = v587;
  __src[563] = v588;
  __src[588] = v589;
  __src[589] = v590;
  __src[590] = v591;
  __src[584] = v592;
  __src[585] = v593;
  __src[586] = v594;
  __src[587] = v595;
  __src[580] = v596;
  __src[581] = v597;
  __src[582] = v599;
  __src[583] = v598;
  __src[576] = v600;
  __src[577] = v601;
  v619 = a39[12];
  v620 = a39[13];
  v621 = a39[14];
  v622 = a39[8];
  v623 = a39[9];
  v624 = a39[10];
  v625 = a39[11];
  v626 = a39[4];
  v627 = a39[5];
  v629 = a39[6];
  v628 = a39[7];
  v630 = *a39;
  v631 = a39[1];
  v632 = a39[2];
  v633 = a39[3];
  __src[578] = v603;
  __src[579] = v602;
  __src[604] = v604;
  __src[605] = v605;
  __src[606] = v606;
  __src[600] = v607;
  __src[601] = v608;
  __src[602] = v609;
  __src[603] = v610;
  __src[596] = v611;
  __src[597] = v612;
  __src[598] = v613;
  __src[599] = v614;
  __src[592] = v615;
  __src[593] = v616;
  v634 = a40[12];
  v635 = a40[13];
  v636 = a40[14];
  v637 = a40[8];
  v638 = a40[9];
  v639 = a40[10];
  v640 = a40[11];
  v641 = a40[4];
  v642 = a40[5];
  v643 = a40[6];
  v644 = a40[7];
  v646 = *a40;
  v645 = a40[1];
  v647 = a40[2];
  v648 = a40[3];
  __src[594] = v617;
  __src[595] = v618;
  __src[620] = v619;
  __src[621] = v620;
  __src[622] = v621;
  __src[616] = v622;
  __src[617] = v623;
  __src[618] = v624;
  __src[619] = v625;
  __src[612] = v626;
  __src[613] = v627;
  __src[614] = v629;
  __src[615] = v628;
  __src[608] = v630;
  __src[609] = v631;
  __src[610] = v632;
  __src[611] = v633;
  __src[636] = v634;
  __src[637] = v635;
  __src[638] = v636;
  __src[632] = v637;
  __src[633] = v638;
  __src[634] = v639;
  __src[635] = v640;
  __src[628] = v641;
  __src[629] = v642;
  __src[630] = v643;
  __src[631] = v644;
  __src[624] = v646;
  __src[625] = v645;
  __src[626] = v647;
  __src[627] = v648;
  return memcpy(v649, __src, 0x27FAuLL);
}

uint64_t sub_21418CF74(char a1)
{
  result = 6645601;
  switch(a1)
  {
    case 1:
      return 0x6B636968546D7261;
    case 2:
      return 0x66654C6F69647561;
    case 3:
      return 0x6769526F69647561;
    case 4:
      return 0x616D797475616562;
    case 5:
      return 0x6873756C62;
    case 6:
      return 0x7061685379646F62;
    case 7:
      v4 = 0x7073776F7262;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6569000000000000;
    case 8:
      return 0x7473656863;
    case 9:
      return 0x4C676E6972726165;
    case 10:
      return 0x52676E6972726165;
    case 11:
      return 1936875877;
    case 12:
      return 0x73776F7262657965;
    case 13:
      return 0x656873616C657965;
    case 14:
      return 0x72656E696C657965;
    case 15:
      return 0x6863746170657965;
    case 16:
      return 1936030053;
    case 17:
      return 0x6F64616873657965;
    case 18:
      return 0x72616577657965;
    case 19:
      return 0x6E69615065636166;
    case 20:
      v3 = 1701011814;
      goto LABEL_24;
    case 21:
      return 0x61686C6169636166;
    case 22:
      return 0xD000000000000014;
    case 23:
      return 0x6461656865726F66;
    case 24:
      return 0x73656C6B63657266;
    case 25:
      return 1919508840;
    case 26:
      return 1684104552;
    case 27:
      v3 = 1684104552;
      goto LABEL_24;
    case 28:
      return 0x6867696C68676968;
    case 29:
      return 1936746860;
    case 30:
      v4 = 0x706874756F6DLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6569000000000000;
    case 31:
      return 1702063982;
    case 32:
      return 0x7265697065736F6ELL;
    case 33:
      v3 = 1702063982;
LABEL_24:
      result = v3 | 0x7261657700000000;
      break;
    case 34:
      result = 0x74696674756FLL;
      break;
    case 35:
      result = 0x7265646C756F6873;
      break;
    case 36:
      result = 0x6E72756265646973;
      break;
    case 37:
      result = 0x6874656574;
      break;
    case 38:
      result = 0x69706575676E6F74;
      break;
    case 39:
      result = 0x7473696177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21418D38C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436DC38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21418D3B4(uint64_t a1)
{
  v2 = sub_2142FCB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418D3F0(uint64_t a1)
{
  v2 = sub_2142FCB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21418D42C(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908458, &qword_2146F5050);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = v2[3];
  v1239 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v9);
  sub_2142FCB10();
  sub_2146DAA08();
  if (!v1)
  {
    v12 = v4;
    v1223 = 0;
    sub_2142FCB64();
    sub_2146DA1C8();
    v1220 = v1236;
    v1221 = v1237;
    *v1222 = *v1238;
    *&v1222[10] = *&v1238[10];
    v1216 = v1232;
    v1217 = v1233;
    v1218 = v1234;
    v1219 = v1235;
    v1212 = v1228;
    v1213 = v1229;
    v1214 = v1230;
    v1215 = v1231;
    v1208 = v1224;
    v1209 = v1225;
    v1210 = v1226;
    v1211 = v1227;
    v1192 = 1;
    sub_2146DA1C8();
    v1189 = v1205;
    v1190 = v1206;
    *v1191 = *v1207;
    *&v1191[10] = *&v1207[10];
    v1185 = v1201;
    v1186 = v1202;
    v1187 = v1203;
    v1188 = v1204;
    v1181 = v1197;
    v1182 = v1198;
    v1183 = v1199;
    v1184 = v1200;
    v1177 = v1193;
    v1178 = v1194;
    v1179 = v1195;
    v1180 = v1196;
    v1161 = 2;
    sub_2146DA1C8();
    v1158 = v1174;
    v1159 = v1175;
    *v1160 = *v1176;
    *&v1160[10] = *&v1176[10];
    v1154 = v1170;
    v1155 = v1171;
    v1156 = v1172;
    v1157 = v1173;
    v1150 = v1166;
    v1151 = v1167;
    v1152 = v1168;
    v1153 = v1169;
    v1146 = v1162;
    v1147 = v1163;
    v1148 = v1164;
    v1149 = v1165;
    v1130 = 3;
    sub_2146DA1C8();
    v1127 = v1143;
    v1128 = v1144;
    *v1129 = *v1145;
    *&v1129[10] = *&v1145[10];
    v1123 = v1139;
    v1124 = v1140;
    v1125 = v1141;
    v1126 = v1142;
    v1119 = v1135;
    v1120 = v1136;
    v1121 = v1137;
    v1122 = v1138;
    v1115 = v1131;
    v1116 = v1132;
    v1117 = v1133;
    v1118 = v1134;
    v1099 = 4;
    sub_2146DA1C8();
    v1096 = v1112;
    v1097 = v1113;
    *v1098 = *v1114;
    *&v1098[10] = *&v1114[10];
    v1092 = v1108;
    v1093 = v1109;
    v1094 = v1110;
    v1095 = v1111;
    v1088 = v1104;
    v1089 = v1105;
    v1090 = v1106;
    v1091 = v1107;
    v1084 = v1100;
    v1085 = v1101;
    v1086 = v1102;
    v1087 = v1103;
    v1068 = 5;
    sub_2146DA1C8();
    v1065 = v1081;
    v1066 = v1082;
    *v1067 = *v1083;
    *&v1067[10] = *&v1083[10];
    v1061 = v1077;
    v1062 = v1078;
    v1063 = v1079;
    v1064 = v1080;
    v1057 = v1073;
    v1058 = v1074;
    v1059 = v1075;
    v1060 = v1076;
    v1053 = v1069;
    v1054 = v1070;
    v1055 = v1071;
    v1056 = v1072;
    v1037 = 6;
    sub_2146DA1C8();
    v1034 = v1050;
    v1035 = v1051;
    *v1036 = *v1052;
    *&v1036[10] = *&v1052[10];
    v1030 = v1046;
    v1031 = v1047;
    v1032 = v1048;
    v1033 = v1049;
    v1026 = v1042;
    v1027 = v1043;
    v1028 = v1044;
    v1029 = v1045;
    v1022 = v1038;
    v1023 = v1039;
    v1024 = v1040;
    v1025 = v1041;
    v1006 = 7;
    sub_2146DA1C8();
    v1003 = v1019;
    v1004 = v1020;
    *v1005 = *v1021;
    *&v1005[10] = *&v1021[10];
    v999 = v1015;
    v1000 = v1016;
    v1001 = v1017;
    v1002 = v1018;
    v995 = v1011;
    v996 = v1012;
    v997 = v1013;
    v998 = v1014;
    v991 = v1007;
    v992 = v1008;
    v993 = v1009;
    v994 = v1010;
    v975 = 8;
    sub_2146DA1C8();
    v972 = v988;
    v973 = v989;
    *v974 = *v990;
    *&v974[10] = *&v990[10];
    v968 = v984;
    v969 = v985;
    v970 = v986;
    v971 = v987;
    v964 = v980;
    v965 = v981;
    v966 = v982;
    v967 = v983;
    v960 = v976;
    v961 = v977;
    v962 = v978;
    v963 = v979;
    v944 = 9;
    sub_2146DA1C8();
    v941 = v957;
    v942 = v958;
    *v943 = *v959;
    *&v943[10] = *&v959[10];
    v937 = v953;
    v938 = v954;
    v939 = v955;
    v940 = v956;
    v933 = v949;
    v934 = v950;
    v935 = v951;
    v936 = v952;
    v929 = v945;
    v930 = v946;
    v931 = v947;
    v932 = v948;
    v913 = 10;
    sub_2146DA1C8();
    v910 = v926;
    v911 = v927;
    *v912 = *v928;
    *&v912[10] = *&v928[10];
    v906 = v922;
    v907 = v923;
    v908 = v924;
    v909 = v925;
    v902 = v918;
    v903 = v919;
    v904 = v920;
    v905 = v921;
    v898 = v914;
    v899 = v915;
    v900 = v916;
    v901 = v917;
    v882 = 11;
    sub_2146DA1C8();
    v879 = v895;
    v880 = v896;
    *v881 = *v897;
    *&v881[10] = *&v897[10];
    v875 = v891;
    v876 = v892;
    v877 = v893;
    v878 = v894;
    v871 = v887;
    v872 = v888;
    v873 = v889;
    v874 = v890;
    v867 = v883;
    v868 = v884;
    v869 = v885;
    v870 = v886;
    v851 = 12;
    sub_2146DA1C8();
    v848 = v864;
    v849 = v865;
    *v850 = *v866;
    *&v850[10] = *&v866[10];
    v844 = v860;
    v845 = v861;
    v846 = v862;
    v847 = v863;
    v840 = v856;
    v841 = v857;
    v842 = v858;
    v843 = v859;
    v836 = v852;
    v837 = v853;
    v838 = v854;
    v839 = v855;
    v820 = 13;
    sub_2146DA1C8();
    v817 = v833;
    v818 = v834;
    *v819 = *v835;
    *&v819[10] = *&v835[10];
    v813 = v829;
    v814 = v830;
    v815 = v831;
    v816 = v832;
    v809 = v825;
    v810 = v826;
    v811 = v827;
    v812 = v828;
    v805 = v821;
    v806 = v822;
    v807 = v823;
    v808 = v824;
    v789 = 14;
    sub_2146DA1C8();
    v786 = v802;
    v787 = v803;
    *v788 = *v804;
    *&v788[10] = *&v804[10];
    v782 = v798;
    v783 = v799;
    v784 = v800;
    v785 = v801;
    v778 = v794;
    v779 = v795;
    v780 = v796;
    v781 = v797;
    v774 = v790;
    v775 = v791;
    v776 = v792;
    v777 = v793;
    v758 = 15;
    sub_2146DA1C8();
    v755 = v771;
    v756 = v772;
    *v757 = *v773;
    *&v757[10] = *&v773[10];
    v751 = v767;
    v752 = v768;
    v753 = v769;
    v754 = v770;
    v747 = v763;
    v748 = v764;
    v749 = v765;
    v750 = v766;
    v743 = v759;
    v744 = v760;
    v745 = v761;
    v746 = v762;
    v727 = 16;
    sub_2146DA1C8();
    v724 = v740;
    v725 = v741;
    *v726 = *v742;
    *&v726[10] = *&v742[10];
    v720 = v736;
    v721 = v737;
    v722 = v738;
    v723 = v739;
    v716 = v732;
    v717 = v733;
    v718 = v734;
    v719 = v735;
    v712 = v728;
    v713 = v729;
    v714 = v730;
    v715 = v731;
    v696 = 17;
    sub_2146DA1C8();
    v693 = v709;
    v694 = v710;
    *v695 = *v711;
    *&v695[10] = *&v711[10];
    v689 = v705;
    v690 = v706;
    v691 = v707;
    v692 = v708;
    v685 = v701;
    v686 = v702;
    v687 = v703;
    v688 = v704;
    v681 = v697;
    v682 = v698;
    v683 = v699;
    v684 = v700;
    v665 = 18;
    sub_2146DA1C8();
    v662 = v678;
    v663 = v679;
    *v664 = *v680;
    *&v664[10] = *&v680[10];
    v658 = v674;
    v659 = v675;
    v660 = v676;
    v661 = v677;
    v654 = v670;
    v655 = v671;
    v656 = v672;
    v657 = v673;
    v650 = v666;
    v651 = v667;
    v652 = v668;
    v653 = v669;
    v634 = 19;
    sub_2146DA1C8();
    v631 = v647;
    v632 = v648;
    *v633 = *v649;
    *&v633[10] = *&v649[10];
    v627 = v643;
    v628 = v644;
    v629 = v645;
    v630 = v646;
    v623 = v639;
    v624 = v640;
    v625 = v641;
    v626 = v642;
    v619 = v635;
    v620 = v636;
    v621 = v637;
    v622 = v638;
    v603 = 20;
    sub_2146DA1C8();
    v600 = v616;
    v601 = v617;
    *v602 = *v618;
    *&v602[10] = *&v618[10];
    v596 = v612;
    v597 = v613;
    v598 = v614;
    v599 = v615;
    v592 = v608;
    v593 = v609;
    v594 = v610;
    v595 = v611;
    v588 = v604;
    v589 = v605;
    v590 = v606;
    v591 = v607;
    v572 = 21;
    sub_2146DA1C8();
    v569 = v585;
    v570 = v586;
    *v571 = *v587;
    *&v571[10] = *&v587[10];
    v565 = v581;
    v566 = v582;
    v567 = v583;
    v568 = v584;
    v561 = v577;
    v562 = v578;
    v563 = v579;
    v564 = v580;
    v557 = v573;
    v558 = v574;
    v559 = v575;
    v560 = v576;
    v541 = 22;
    sub_2146DA1C8();
    v538 = v554;
    v539 = v555;
    *v540 = *v556;
    *&v540[10] = *&v556[10];
    v534 = v550;
    v535 = v551;
    v536 = v552;
    v537 = v553;
    v530 = v546;
    v531 = v547;
    v532 = v548;
    v533 = v549;
    v526 = v542;
    v527 = v543;
    v528 = v544;
    v529 = v545;
    v510 = 23;
    sub_2146DA1C8();
    v507 = v523;
    v508 = v524;
    *v509 = *v525;
    *&v509[10] = *&v525[10];
    v503 = v519;
    v504 = v520;
    v505 = v521;
    v506 = v522;
    v499 = v515;
    v500 = v516;
    v501 = v517;
    v502 = v518;
    v495 = v511;
    v496 = v512;
    v497 = v513;
    v498 = v514;
    v479 = 24;
    sub_2146DA1C8();
    v476 = v492;
    v477 = v493;
    *v478 = *v494;
    *&v478[10] = *&v494[10];
    v472 = v488;
    v473 = v489;
    v474 = v490;
    v475 = v491;
    v468 = v484;
    v469 = v485;
    v470 = v486;
    v471 = v487;
    v464 = v480;
    v465 = v481;
    v466 = v482;
    v467 = v483;
    v448 = 25;
    sub_2146DA1C8();
    v445 = v461;
    v446 = v462;
    *v447 = *v463;
    *&v447[10] = *&v463[10];
    v441 = v457;
    v442 = v458;
    v443 = v459;
    v444 = v460;
    v437 = v453;
    v438 = v454;
    v439 = v455;
    v440 = v456;
    v433 = v449;
    v434 = v450;
    v435 = v451;
    v436 = v452;
    v417 = 26;
    sub_2146DA1C8();
    v414 = v430;
    v415 = v431;
    *v416 = *v432;
    *&v416[10] = *&v432[10];
    v410 = v426;
    v411 = v427;
    v412 = v428;
    v413 = v429;
    v406 = v422;
    v407 = v423;
    v408 = v424;
    v409 = v425;
    v402 = v418;
    v403 = v419;
    v404 = v420;
    v405 = v421;
    v386 = 27;
    sub_2146DA1C8();
    v383 = v399;
    v384 = v400;
    *v385 = *v401;
    *&v385[10] = *&v401[10];
    v379 = v395;
    v380 = v396;
    v381 = v397;
    v382 = v398;
    v375 = v391;
    v376 = v392;
    v377 = v393;
    v378 = v394;
    v371 = v387;
    v372 = v388;
    v373 = v389;
    v374 = v390;
    v355 = 28;
    sub_2146DA1C8();
    v352 = v368;
    v353 = v369;
    *v354 = *v370;
    *&v354[10] = *&v370[10];
    v348 = v364;
    v349 = v365;
    v350 = v366;
    v351 = v367;
    v344 = v360;
    v345 = v361;
    v346 = v362;
    v347 = v363;
    v340 = v356;
    v341 = v357;
    v342 = v358;
    v343 = v359;
    v324 = 29;
    sub_2146DA1C8();
    v321 = v337;
    v322 = v338;
    *v323 = *v339;
    *&v323[10] = *&v339[10];
    v317 = v333;
    v318 = v334;
    v319 = v335;
    v320 = v336;
    v313 = v329;
    v314 = v330;
    v315 = v331;
    v316 = v332;
    v309 = v325;
    v310 = v326;
    v311 = v327;
    v312 = v328;
    v293 = 30;
    sub_2146DA1C8();
    v290 = v306;
    v291 = v307;
    *v292 = *v308;
    *&v292[10] = *&v308[10];
    v286 = v302;
    v287 = v303;
    v288 = v304;
    v289 = v305;
    v282 = v298;
    v283 = v299;
    v284 = v300;
    v285 = v301;
    v278 = v294;
    v279 = v295;
    v280 = v296;
    v281 = v297;
    v262 = 31;
    sub_2146DA1C8();
    v259 = v275;
    v260 = v276;
    *v261 = *v277;
    *&v261[10] = *&v277[10];
    v255 = v271;
    v256 = v272;
    v257 = v273;
    v258 = v274;
    v251 = v267;
    v252 = v268;
    v253 = v269;
    v254 = v270;
    v247 = v263;
    v248 = v264;
    v249 = v265;
    v250 = v266;
    v231 = 32;
    sub_2146DA1C8();
    v228 = v244;
    v229 = v245;
    *v230 = *v246;
    *&v230[10] = *&v246[10];
    v224 = v240;
    v225 = v241;
    v226 = v242;
    v227 = v243;
    v220 = v236;
    v221 = v237;
    v222 = v238;
    v223 = v239;
    v216 = v232;
    v217 = v233;
    v218 = v234;
    v219 = v235;
    v200 = 33;
    sub_2146DA1C8();
    v197 = v213;
    v198 = v214;
    *v199 = *v215;
    *&v199[10] = *&v215[10];
    v193 = v209;
    v194 = v210;
    v195 = v211;
    v196 = v212;
    v189 = v205;
    v190 = v206;
    v191 = v207;
    v192 = v208;
    v185 = v201;
    v186 = v202;
    v187 = v203;
    v188 = v204;
    v169 = 34;
    sub_2146DA1C8();
    v166 = v182;
    v167 = v183;
    *v168 = *v184;
    *&v168[10] = *&v184[10];
    v162 = v178;
    v163 = v179;
    v164 = v180;
    v165 = v181;
    v158 = v174;
    v159 = v175;
    v160 = v176;
    v161 = v177;
    v154 = v170;
    v155 = v171;
    v156 = v172;
    v157 = v173;
    v138 = 35;
    sub_2146DA1C8();
    v135 = v151;
    v136 = v152;
    *v137 = *v153;
    *&v137[10] = *&v153[10];
    v131 = v147;
    v132 = v148;
    v133 = v149;
    v134 = v150;
    v127 = v143;
    v128 = v144;
    v129 = v145;
    v130 = v146;
    v123 = v139;
    v124 = v140;
    v125 = v141;
    v126 = v142;
    v107 = 36;
    sub_2146DA1C8();
    v104 = v120;
    v105 = v121;
    *v106 = *v122;
    *&v106[10] = *&v122[10];
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v103 = v119;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v99 = v115;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v95 = v111;
    v76 = 37;
    sub_2146DA1C8();
    v73 = v89;
    v74 = v90;
    *v75 = *v91;
    *&v75[10] = *&v91[10];
    v69 = v85;
    v70 = v86;
    v71 = v87;
    v72 = v88;
    v65 = v81;
    v66 = v82;
    v67 = v83;
    v68 = v84;
    v61 = v77;
    v62 = v78;
    v63 = v79;
    v64 = v80;
    v45 = 38;
    sub_2146DA1C8();
    v42 = v58;
    v43 = v59;
    *v44 = *v60;
    *&v44[10] = *&v60[10];
    v38 = v54;
    v39 = v55;
    v40 = v56;
    v41 = v57;
    v34 = v50;
    v35 = v51;
    v36 = v52;
    v37 = v53;
    v30 = v46;
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v14 = 39;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *&v13[10218] = *&v29[10];
    *&v13[490] = *&v1191[10];
    *&v13[746] = *&v1160[10];
    *&v13[1002] = *&v1129[10];
    *&v13[1258] = *&v1098[10];
    *&v13[1514] = *&v1067[10];
    *&v13[1770] = *&v1036[10];
    *&v13[2026] = *&v1005[10];
    *&v13[2282] = *&v974[10];
    *&v13[10176] = v27;
    *&v13[10192] = v28;
    *&v13[10208] = *v29;
    *&v13[10112] = v23;
    *&v13[10128] = v24;
    *&v13[10144] = v25;
    *&v13[10160] = v26;
    *&v13[10048] = v19;
    *&v13[10064] = v20;
    *&v13[10080] = v21;
    *&v13[10096] = v22;
    *&v13[9984] = v15;
    *&v13[10000] = v16;
    *&v13[10016] = v17;
    *&v13[10032] = v18;
    *&v13[192] = v1220;
    *&v13[208] = v1221;
    *&v13[224] = *v1222;
    *&v13[234] = *&v1222[10];
    *&v13[128] = v1216;
    *&v13[144] = v1217;
    *&v13[160] = v1218;
    *&v13[176] = v1219;
    *&v13[64] = v1212;
    *&v13[80] = v1213;
    *&v13[96] = v1214;
    *&v13[112] = v1215;
    *v13 = v1208;
    *&v13[16] = v1209;
    *&v13[32] = v1210;
    *&v13[48] = v1211;
    *&v13[464] = v1190;
    *&v13[480] = *v1191;
    *&v13[400] = v1186;
    *&v13[416] = v1187;
    *&v13[432] = v1188;
    *&v13[448] = v1189;
    *&v13[336] = v1182;
    *&v13[352] = v1183;
    *&v13[368] = v1184;
    *&v13[384] = v1185;
    *&v13[256] = v1177;
    *&v13[272] = v1178;
    *&v13[288] = v1179;
    *&v13[304] = v1180;
    *&v13[320] = v1181;
    *&v13[704] = v1158;
    *&v13[720] = v1159;
    *&v13[640] = v1154;
    *&v13[656] = v1155;
    *&v13[672] = v1156;
    *&v13[688] = v1157;
    *&v13[576] = v1150;
    *&v13[592] = v1151;
    *&v13[608] = v1152;
    *&v13[624] = v1153;
    *&v13[512] = v1146;
    *&v13[528] = v1147;
    *&v13[544] = v1148;
    *&v13[560] = v1149;
    *&v13[976] = v1128;
    *&v13[992] = *v1129;
    *&v13[912] = v1124;
    *&v13[928] = v1125;
    *&v13[944] = v1126;
    *&v13[960] = v1127;
    *&v13[848] = v1120;
    *&v13[864] = v1121;
    *&v13[880] = v1122;
    *&v13[896] = v1123;
    *&v13[736] = *v1160;
    *&v13[768] = v1115;
    *&v13[784] = v1116;
    *&v13[800] = v1117;
    *&v13[816] = v1118;
    *&v13[832] = v1119;
    *&v13[1216] = v1096;
    *&v13[1232] = v1097;
    *&v13[1248] = *v1098;
    *&v13[1152] = v1092;
    *&v13[1168] = v1093;
    *&v13[1184] = v1094;
    *&v13[1200] = v1095;
    *&v13[1088] = v1088;
    *&v13[1104] = v1089;
    *&v13[1120] = v1090;
    *&v13[1136] = v1091;
    *&v13[1024] = v1084;
    *&v13[1040] = v1085;
    *&v13[1056] = v1086;
    *&v13[1072] = v1087;
    *&v13[1472] = v1065;
    *&v13[1488] = v1066;
    *&v13[1504] = *v1067;
    *&v13[1408] = v1061;
    *&v13[1424] = v1062;
    *&v13[1440] = v1063;
    *&v13[1456] = v1064;
    *&v13[1344] = v1057;
    *&v13[1360] = v1058;
    *&v13[1376] = v1059;
    *&v13[1392] = v1060;
    *&v13[1280] = v1053;
    *&v13[1296] = v1054;
    *&v13[1312] = v1055;
    *&v13[1328] = v1056;
    *&v13[1728] = v1034;
    *&v13[1744] = v1035;
    *&v13[1760] = *v1036;
    *&v13[1664] = v1030;
    *&v13[1680] = v1031;
    *&v13[1696] = v1032;
    *&v13[1712] = v1033;
    *&v13[1600] = v1026;
    *&v13[1616] = v1027;
    *&v13[1632] = v1028;
    *&v13[1648] = v1029;
    *&v13[1536] = v1022;
    *&v13[1552] = v1023;
    *&v13[1568] = v1024;
    *&v13[1584] = v1025;
    *&v13[1984] = v1003;
    *&v13[2000] = v1004;
    *&v13[2016] = *v1005;
    *&v13[1920] = v999;
    *&v13[1936] = v1000;
    *&v13[1952] = v1001;
    *&v13[1968] = v1002;
    *&v13[1856] = v995;
    *&v13[1872] = v996;
    *&v13[1888] = v997;
    *&v13[1904] = v998;
    *&v13[1792] = v991;
    *&v13[1808] = v992;
    *&v13[1824] = v993;
    *&v13[1840] = v994;
    *&v13[2240] = v972;
    *&v13[2256] = v973;
    *&v13[2272] = *v974;
    *&v13[2176] = v968;
    *&v13[2192] = v969;
    *&v13[2208] = v970;
    *&v13[2224] = v971;
    *&v13[2112] = v964;
    *&v13[2128] = v965;
    *&v13[2144] = v966;
    *&v13[2160] = v967;
    *&v13[2048] = v960;
    *&v13[2064] = v961;
    *&v13[2080] = v962;
    *&v13[2096] = v963;
    *&v13[2538] = *&v943[10];
    *&v13[2496] = v941;
    *&v13[2512] = v942;
    *&v13[2528] = *v943;
    *&v13[2432] = v937;
    *&v13[2448] = v938;
    *&v13[2464] = v939;
    *&v13[2480] = v940;
    *&v13[2368] = v933;
    *&v13[2384] = v934;
    *&v13[2400] = v935;
    *&v13[2416] = v936;
    *&v13[2304] = v929;
    *&v13[2320] = v930;
    *&v13[2336] = v931;
    *&v13[2352] = v932;
    *&v13[2794] = *&v912[10];
    *&v13[2752] = v910;
    *&v13[2768] = v911;
    *&v13[2784] = *v912;
    *&v13[2688] = v906;
    *&v13[2704] = v907;
    *&v13[2720] = v908;
    *&v13[2736] = v909;
    *&v13[2624] = v902;
    *&v13[2640] = v903;
    *&v13[2656] = v904;
    *&v13[2672] = v905;
    *&v13[2560] = v898;
    *&v13[2576] = v899;
    *&v13[2592] = v900;
    *&v13[2608] = v901;
    *&v13[3050] = *&v881[10];
    *&v13[3008] = v879;
    *&v13[3024] = v880;
    *&v13[3040] = *v881;
    *&v13[2944] = v875;
    *&v13[2960] = v876;
    *&v13[2976] = v877;
    *&v13[2992] = v878;
    *&v13[2880] = v871;
    *&v13[2896] = v872;
    *&v13[2912] = v873;
    *&v13[2928] = v874;
    *&v13[2816] = v867;
    *&v13[2832] = v868;
    *&v13[2848] = v869;
    *&v13[2864] = v870;
    *&v13[3306] = *&v850[10];
    *&v13[3264] = v848;
    *&v13[3280] = v849;
    *&v13[3296] = *v850;
    *&v13[3200] = v844;
    *&v13[3216] = v845;
    *&v13[3232] = v846;
    *&v13[3248] = v847;
    *&v13[3136] = v840;
    *&v13[3152] = v841;
    *&v13[3168] = v842;
    *&v13[3184] = v843;
    *&v13[3072] = v836;
    *&v13[3088] = v837;
    *&v13[3104] = v838;
    *&v13[3120] = v839;
    *&v13[3562] = *&v819[10];
    *&v13[3520] = v817;
    *&v13[3536] = v818;
    *&v13[3552] = *v819;
    *&v13[3456] = v813;
    *&v13[3472] = v814;
    *&v13[3488] = v815;
    *&v13[3504] = v816;
    *&v13[3392] = v809;
    *&v13[3408] = v810;
    *&v13[3424] = v811;
    *&v13[3440] = v812;
    *&v13[3328] = v805;
    *&v13[3344] = v806;
    *&v13[3360] = v807;
    *&v13[3376] = v808;
    *&v13[3818] = *&v788[10];
    *&v13[3776] = v786;
    *&v13[3792] = v787;
    *&v13[3808] = *v788;
    *&v13[3712] = v782;
    *&v13[3728] = v783;
    *&v13[3744] = v784;
    *&v13[3760] = v785;
    *&v13[3648] = v778;
    *&v13[3664] = v779;
    *&v13[3680] = v780;
    *&v13[3696] = v781;
    *&v13[3584] = v774;
    *&v13[3600] = v775;
    *&v13[3616] = v776;
    *&v13[3632] = v777;
    *&v13[4074] = *&v757[10];
    *&v13[4032] = v755;
    *&v13[4048] = v756;
    *&v13[4064] = *v757;
    *&v13[3968] = v751;
    *&v13[3984] = v752;
    *&v13[4000] = v753;
    *&v13[4016] = v754;
    *&v13[3904] = v747;
    *&v13[3920] = v748;
    *&v13[3936] = v749;
    *&v13[3952] = v750;
    *&v13[3840] = v743;
    *&v13[3856] = v744;
    *&v13[3872] = v745;
    *&v13[3888] = v746;
    *&v13[4330] = *&v726[10];
    *&v13[4288] = v724;
    *&v13[4304] = v725;
    *&v13[4320] = *v726;
    *&v13[4224] = v720;
    *&v13[4240] = v721;
    *&v13[4256] = v722;
    *&v13[4272] = v723;
    *&v13[4160] = v716;
    *&v13[4176] = v717;
    *&v13[4192] = v718;
    *&v13[4208] = v719;
    *&v13[4096] = v712;
    *&v13[4112] = v713;
    *&v13[4128] = v714;
    *&v13[4144] = v715;
    *&v13[4586] = *&v695[10];
    *&v13[4544] = v693;
    *&v13[4560] = v694;
    *&v13[4576] = *v695;
    *&v13[4480] = v689;
    *&v13[4496] = v690;
    *&v13[4512] = v691;
    *&v13[4528] = v692;
    *&v13[4416] = v685;
    *&v13[4432] = v686;
    *&v13[4448] = v687;
    *&v13[4464] = v688;
    *&v13[4352] = v681;
    *&v13[4368] = v682;
    *&v13[4384] = v683;
    *&v13[4400] = v684;
    *&v13[4842] = *&v664[10];
    *&v13[4800] = v662;
    *&v13[4816] = v663;
    *&v13[4832] = *v664;
    *&v13[4736] = v658;
    *&v13[4752] = v659;
    *&v13[4768] = v660;
    *&v13[4784] = v661;
    *&v13[4672] = v654;
    *&v13[4688] = v655;
    *&v13[4704] = v656;
    *&v13[4720] = v657;
    *&v13[4608] = v650;
    *&v13[4624] = v651;
    *&v13[4640] = v652;
    *&v13[4656] = v653;
    *&v13[5098] = *&v633[10];
    *&v13[5056] = v631;
    *&v13[5072] = v632;
    *&v13[5088] = *v633;
    *&v13[4992] = v627;
    *&v13[5008] = v628;
    *&v13[5024] = v629;
    *&v13[5040] = v630;
    *&v13[4928] = v623;
    *&v13[4944] = v624;
    *&v13[4960] = v625;
    *&v13[4976] = v626;
    *&v13[4864] = v619;
    *&v13[4880] = v620;
    *&v13[4896] = v621;
    *&v13[4912] = v622;
    *&v13[5354] = *&v602[10];
    *&v13[5312] = v600;
    *&v13[5328] = v601;
    *&v13[5344] = *v602;
    *&v13[5248] = v596;
    *&v13[5264] = v597;
    *&v13[5280] = v598;
    *&v13[5296] = v599;
    *&v13[5184] = v592;
    *&v13[5200] = v593;
    *&v13[5216] = v594;
    *&v13[5232] = v595;
    *&v13[5120] = v588;
    *&v13[5136] = v589;
    *&v13[5152] = v590;
    *&v13[5168] = v591;
    *&v13[5610] = *&v571[10];
    *&v13[5568] = v569;
    *&v13[5584] = v570;
    *&v13[5600] = *v571;
    *&v13[5504] = v565;
    *&v13[5520] = v566;
    *&v13[5536] = v567;
    *&v13[5552] = v568;
    *&v13[5440] = v561;
    *&v13[5456] = v562;
    *&v13[5472] = v563;
    *&v13[5488] = v564;
    *&v13[5376] = v557;
    *&v13[5392] = v558;
    *&v13[5408] = v559;
    *&v13[5424] = v560;
    *&v13[5866] = *&v540[10];
    *&v13[5824] = v538;
    *&v13[5840] = v539;
    *&v13[5856] = *v540;
    *&v13[5760] = v534;
    *&v13[5776] = v535;
    *&v13[5792] = v536;
    *&v13[5808] = v537;
    *&v13[5696] = v530;
    *&v13[5712] = v531;
    *&v13[5728] = v532;
    *&v13[5744] = v533;
    *&v13[5632] = v526;
    *&v13[5648] = v527;
    *&v13[5664] = v528;
    *&v13[5680] = v529;
    *&v13[6122] = *&v509[10];
    *&v13[6080] = v507;
    *&v13[6096] = v508;
    *&v13[6112] = *v509;
    *&v13[6016] = v503;
    *&v13[6032] = v504;
    *&v13[6048] = v505;
    *&v13[6064] = v506;
    *&v13[5952] = v499;
    *&v13[5968] = v500;
    *&v13[5984] = v501;
    *&v13[6000] = v502;
    *&v13[5888] = v495;
    *&v13[5904] = v496;
    *&v13[5920] = v497;
    *&v13[5936] = v498;
    *&v13[6378] = *&v478[10];
    *&v13[6336] = v476;
    *&v13[6352] = v477;
    *&v13[6368] = *v478;
    *&v13[6272] = v472;
    *&v13[6288] = v473;
    *&v13[6304] = v474;
    *&v13[6320] = v475;
    *&v13[6208] = v468;
    *&v13[6224] = v469;
    *&v13[6240] = v470;
    *&v13[6256] = v471;
    *&v13[6144] = v464;
    *&v13[6160] = v465;
    *&v13[6176] = v466;
    *&v13[6192] = v467;
    *&v13[6634] = *&v447[10];
    *&v13[6592] = v445;
    *&v13[6608] = v446;
    *&v13[6624] = *v447;
    *&v13[6528] = v441;
    *&v13[6544] = v442;
    *&v13[6560] = v443;
    *&v13[6576] = v444;
    *&v13[6464] = v437;
    *&v13[6480] = v438;
    *&v13[6496] = v439;
    *&v13[6512] = v440;
    *&v13[6400] = v433;
    *&v13[6416] = v434;
    *&v13[6432] = v435;
    *&v13[6448] = v436;
    *&v13[6890] = *&v416[10];
    *&v13[6848] = v414;
    *&v13[6864] = v415;
    *&v13[6880] = *v416;
    *&v13[6784] = v410;
    *&v13[6800] = v411;
    *&v13[6816] = v412;
    *&v13[6832] = v413;
    *&v13[6720] = v406;
    *&v13[6736] = v407;
    *&v13[6752] = v408;
    *&v13[6768] = v409;
    *&v13[6656] = v402;
    *&v13[6672] = v403;
    *&v13[6688] = v404;
    *&v13[6704] = v405;
    *&v13[7146] = *&v385[10];
    *&v13[7104] = v383;
    *&v13[7120] = v384;
    *&v13[7136] = *v385;
    *&v13[7040] = v379;
    *&v13[7056] = v380;
    *&v13[7072] = v381;
    *&v13[7088] = v382;
    *&v13[6976] = v375;
    *&v13[6992] = v376;
    *&v13[7008] = v377;
    *&v13[7024] = v378;
    *&v13[6912] = v371;
    *&v13[6928] = v372;
    *&v13[6944] = v373;
    *&v13[6960] = v374;
    *&v13[7402] = *&v354[10];
    *&v13[7360] = v352;
    *&v13[7376] = v353;
    *&v13[7392] = *v354;
    *&v13[7296] = v348;
    *&v13[7312] = v349;
    *&v13[7328] = v350;
    *&v13[7344] = v351;
    *&v13[7232] = v344;
    *&v13[7248] = v345;
    *&v13[7264] = v346;
    *&v13[7280] = v347;
    *&v13[7168] = v340;
    *&v13[7184] = v341;
    *&v13[7200] = v342;
    *&v13[7216] = v343;
    *&v13[7658] = *&v323[10];
    *&v13[7616] = v321;
    *&v13[7632] = v322;
    *&v13[7648] = *v323;
    *&v13[7552] = v317;
    *&v13[7568] = v318;
    *&v13[7584] = v319;
    *&v13[7600] = v320;
    *&v13[7488] = v313;
    *&v13[7504] = v314;
    *&v13[7520] = v315;
    *&v13[7536] = v316;
    *&v13[7424] = v309;
    *&v13[7440] = v310;
    *&v13[7456] = v311;
    *&v13[7472] = v312;
    *&v13[7914] = *&v292[10];
    *&v13[7872] = v290;
    *&v13[7888] = v291;
    *&v13[7904] = *v292;
    *&v13[7808] = v286;
    *&v13[7824] = v287;
    *&v13[7840] = v288;
    *&v13[7856] = v289;
    *&v13[7744] = v282;
    *&v13[7760] = v283;
    *&v13[7776] = v284;
    *&v13[7792] = v285;
    *&v13[7680] = v278;
    *&v13[7696] = v279;
    *&v13[7712] = v280;
    *&v13[7728] = v281;
    *&v13[8170] = *&v261[10];
    *&v13[8128] = v259;
    *&v13[8144] = v260;
    *&v13[8160] = *v261;
    *&v13[8064] = v255;
    *&v13[8080] = v256;
    *&v13[8096] = v257;
    *&v13[8112] = v258;
    *&v13[8000] = v251;
    *&v13[8016] = v252;
    *&v13[8032] = v253;
    *&v13[8048] = v254;
    *&v13[7936] = v247;
    *&v13[7952] = v248;
    *&v13[7968] = v249;
    *&v13[7984] = v250;
    *&v13[8426] = *&v230[10];
    *&v13[8384] = v228;
    *&v13[8400] = v229;
    *&v13[8416] = *v230;
    *&v13[8320] = v224;
    *&v13[8336] = v225;
    *&v13[8352] = v226;
    *&v13[8368] = v227;
    *&v13[8256] = v220;
    *&v13[8272] = v221;
    *&v13[8288] = v222;
    *&v13[8304] = v223;
    *&v13[0x2000] = v216;
    *&v13[8208] = v217;
    *&v13[8224] = v218;
    *&v13[8240] = v219;
    *&v13[8682] = *&v199[10];
    *&v13[8640] = v197;
    *&v13[8656] = v198;
    *&v13[8672] = *v199;
    *&v13[8576] = v193;
    *&v13[8592] = v194;
    *&v13[8608] = v195;
    *&v13[8624] = v196;
    *&v13[8512] = v189;
    *&v13[8528] = v190;
    *&v13[8544] = v191;
    *&v13[8560] = v192;
    *&v13[8448] = v185;
    *&v13[8464] = v186;
    *&v13[8480] = v187;
    *&v13[8496] = v188;
    *&v13[8938] = *&v168[10];
    *&v13[8896] = v166;
    *&v13[8912] = v167;
    *&v13[8928] = *v168;
    *&v13[8832] = v162;
    *&v13[8848] = v163;
    *&v13[8864] = v164;
    *&v13[8880] = v165;
    *&v13[8768] = v158;
    *&v13[8784] = v159;
    *&v13[8800] = v160;
    *&v13[8816] = v161;
    *&v13[8704] = v154;
    *&v13[8720] = v155;
    *&v13[8736] = v156;
    *&v13[8752] = v157;
    *&v13[9194] = *&v137[10];
    *&v13[9152] = v135;
    *&v13[9168] = v136;
    *&v13[9184] = *v137;
    *&v13[9088] = v131;
    *&v13[9104] = v132;
    *&v13[9120] = v133;
    *&v13[9136] = v134;
    *&v13[9024] = v127;
    *&v13[9040] = v128;
    *&v13[9056] = v129;
    *&v13[9072] = v130;
    *&v13[8960] = v123;
    *&v13[8976] = v124;
    *&v13[8992] = v125;
    *&v13[9008] = v126;
    *&v13[9450] = *&v106[10];
    *&v13[9408] = v104;
    *&v13[9424] = v105;
    *&v13[9440] = *v106;
    *&v13[9344] = v100;
    *&v13[9360] = v101;
    *&v13[9376] = v102;
    *&v13[9392] = v103;
    *&v13[9280] = v96;
    *&v13[9296] = v97;
    *&v13[9312] = v98;
    *&v13[9328] = v99;
    *&v13[9216] = v92;
    *&v13[9232] = v93;
    *&v13[9248] = v94;
    *&v13[9264] = v95;
    *&v13[9706] = *&v75[10];
    *&v13[9664] = v73;
    *&v13[9680] = v74;
    *&v13[9696] = *v75;
    *&v13[9600] = v69;
    *&v13[9616] = v70;
    *&v13[9632] = v71;
    *&v13[9648] = v72;
    *&v13[9536] = v65;
    *&v13[9552] = v66;
    *&v13[9568] = v67;
    *&v13[9584] = v68;
    *&v13[9472] = v61;
    *&v13[9488] = v62;
    *&v13[9504] = v63;
    *&v13[9520] = v64;
    *&v13[9962] = *&v44[10];
    *&v13[9920] = v42;
    *&v13[9936] = v43;
    *&v13[9952] = *v44;
    *&v13[9856] = v38;
    *&v13[9872] = v39;
    *&v13[9888] = v40;
    *&v13[9904] = v41;
    *&v13[9792] = v34;
    *&v13[9808] = v35;
    *&v13[9824] = v36;
    *&v13[9840] = v37;
    *&v13[9728] = v30;
    *&v13[9744] = v31;
    *&v13[9760] = v32;
    *&v13[9776] = v33;
    memcpy(v12, v13, 0x27FAuLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v1239);
}

uint64_t sub_214193478(uint64_t a1)
{
  v309 = MEMORY[0x28223BE20](a1);
  v310 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908470, &qword_2146F5058);
  v311 = *(v3 - 8);
  v312 = v3;
  MEMORY[0x28223BE20](v3);
  v1633 = &v309 - v4;
  v5 = v1[13];
  v1045 = v1[12];
  v1046 = v5;
  v1047[0] = v1[14];
  *(v1047 + 10) = *(v1 + 234);
  v6 = v1[9];
  v1041 = v1[8];
  v1042 = v6;
  v7 = v1[11];
  v1043 = v1[10];
  v1044 = v7;
  v8 = v1[5];
  v1037 = v1[4];
  v1038 = v8;
  v9 = v1[7];
  v1039 = v1[6];
  v1040 = v9;
  v10 = v1[1];
  v1033 = *v1;
  v1034 = v10;
  v11 = v1[3];
  v1035 = v1[2];
  v1036 = v11;
  v12 = v1[29];
  v1060 = v1[28];
  v1061 = v12;
  v1062[0] = v1[30];
  *(v1062 + 10) = *(v1 + 490);
  v13 = v1[25];
  v1056 = v1[24];
  v1057 = v13;
  v14 = v1[27];
  v1058 = v1[26];
  v1059 = v14;
  v15 = v1[21];
  v1052 = v1[20];
  v1053 = v15;
  v16 = v1[23];
  v1054 = v1[22];
  v1055 = v16;
  v17 = v1[17];
  v1048 = v1[16];
  v1049 = v17;
  v18 = v1[19];
  v1050 = v1[18];
  v1051 = v18;
  v19 = v1[45];
  v1075 = v1[44];
  v1076 = v19;
  v1077[0] = v1[46];
  *(v1077 + 10) = *(v1 + 746);
  v20 = v1[41];
  v1071 = v1[40];
  v1072 = v20;
  v21 = v1[43];
  v1073 = v1[42];
  v1074 = v21;
  v22 = v1[37];
  v1067 = v1[36];
  v1068 = v22;
  v23 = v1[39];
  v1069 = v1[38];
  v1070 = v23;
  v24 = v1[33];
  v1063 = v1[32];
  v1064 = v24;
  v25 = v1[35];
  v1065 = v1[34];
  v1066 = v25;
  v26 = v1[61];
  v1090 = v1[60];
  v1091 = v26;
  v1092[0] = v1[62];
  *(v1092 + 10) = *(v1 + 1002);
  v27 = v1[57];
  v1086 = v1[56];
  v1087 = v27;
  v28 = v1[59];
  v1088 = v1[58];
  v1089 = v28;
  v29 = v1[53];
  v1082 = v1[52];
  v1083 = v29;
  v30 = v1[55];
  v1084 = v1[54];
  v1085 = v30;
  v31 = v1[49];
  v1078 = v1[48];
  v1079 = v31;
  v32 = v1[51];
  v1080 = v1[50];
  v1081 = v32;
  v33 = v1[77];
  v1105 = v1[76];
  v1106 = v33;
  v1107[0] = v1[78];
  *(v1107 + 10) = *(v1 + 1258);
  v34 = v1[73];
  v1101 = v1[72];
  v1102 = v34;
  v35 = v1[75];
  v1103 = v1[74];
  v1104 = v35;
  v36 = v1[69];
  v1097 = v1[68];
  v1098 = v36;
  v37 = v1[71];
  v1099 = v1[70];
  v1100 = v37;
  v38 = v1[65];
  v1093 = v1[64];
  v1094 = v38;
  v39 = v1[67];
  v1095 = v1[66];
  v1096 = v39;
  v40 = v1[93];
  v1120 = v1[92];
  v1121 = v40;
  v1122[0] = v1[94];
  *(v1122 + 10) = *(v1 + 1514);
  v41 = v1[89];
  v1116 = v1[88];
  v1117 = v41;
  v42 = v1[91];
  v1118 = v1[90];
  v1119 = v42;
  v43 = v1[85];
  v1112 = v1[84];
  v1113 = v43;
  v44 = v1[87];
  v1114 = v1[86];
  v1115 = v44;
  v45 = v1[81];
  v1108 = v1[80];
  v1109 = v45;
  v46 = v1[83];
  v1110 = v1[82];
  v1111 = v46;
  v47 = v1[109];
  v1135 = v1[108];
  v1136 = v47;
  v1137[0] = v1[110];
  *(v1137 + 10) = *(v1 + 1770);
  v48 = v1[105];
  v1131 = v1[104];
  v1132 = v48;
  v49 = v1[107];
  v1133 = v1[106];
  v1134 = v49;
  v50 = v1[101];
  v1127 = v1[100];
  v1128 = v50;
  v51 = v1[103];
  v1129 = v1[102];
  v1130 = v51;
  v52 = v1[97];
  v1123 = v1[96];
  v1124 = v52;
  v53 = v1[99];
  v1125 = v1[98];
  v1126 = v53;
  v54 = v1[125];
  v1150 = v1[124];
  v1151 = v54;
  v1152[0] = v1[126];
  *(v1152 + 10) = *(v1 + 2026);
  v55 = v1[121];
  v1146 = v1[120];
  v1147 = v55;
  v56 = v1[123];
  v1148 = v1[122];
  v1149 = v56;
  v57 = v1[117];
  v1142 = v1[116];
  v1143 = v57;
  v58 = v1[119];
  v1144 = v1[118];
  v1145 = v58;
  v59 = v1[113];
  v1138 = v1[112];
  v1139 = v59;
  v60 = v1[115];
  v1140 = v1[114];
  v1141 = v60;
  v61 = v1[141];
  v1165 = v1[140];
  v1166 = v61;
  v1167[0] = v1[142];
  *(v1167 + 10) = *(v1 + 2282);
  v62 = v1[137];
  v1161 = v1[136];
  v1162 = v62;
  v63 = v1[139];
  v1163 = v1[138];
  v1164 = v63;
  v64 = v1[133];
  v1157 = v1[132];
  v1158 = v64;
  v65 = v1[135];
  v1159 = v1[134];
  v1160 = v65;
  v66 = v1[129];
  v1153 = v1[128];
  v1154 = v66;
  v67 = v1[131];
  v1155 = v1[130];
  v1156 = v67;
  v68 = v1[157];
  v1180 = v1[156];
  v1181 = v68;
  v1182[0] = v1[158];
  *(v1182 + 10) = *(v1 + 2538);
  v69 = v1[153];
  v1176 = v1[152];
  v1177 = v69;
  v70 = v1[155];
  v1178 = v1[154];
  v1179 = v70;
  v71 = v1[149];
  v1172 = v1[148];
  v1173 = v71;
  v72 = v1[151];
  v1174 = v1[150];
  v1175 = v72;
  v73 = v1[145];
  v1168 = v1[144];
  v1169 = v73;
  v74 = v1[147];
  v1170 = v1[146];
  v1171 = v74;
  v75 = v1[173];
  v1195 = v1[172];
  v1196 = v75;
  v1197[0] = v1[174];
  *(v1197 + 10) = *(v1 + 2794);
  v76 = v1[169];
  v1191 = v1[168];
  v1192 = v76;
  v77 = v1[171];
  v1193 = v1[170];
  v1194 = v77;
  v78 = v1[165];
  v1187 = v1[164];
  v1188 = v78;
  v79 = v1[167];
  v1189 = v1[166];
  v1190 = v79;
  v80 = v1[161];
  v1183 = v1[160];
  v1184 = v80;
  v81 = v1[163];
  v1185 = v1[162];
  v1186 = v81;
  v82 = v1[189];
  v1210 = v1[188];
  v1211 = v82;
  v1212[0] = v1[190];
  *(v1212 + 10) = *(v1 + 3050);
  v83 = v1[185];
  v1206 = v1[184];
  v1207 = v83;
  v84 = v1[187];
  v1208 = v1[186];
  v1209 = v84;
  v85 = v1[181];
  v1202 = v1[180];
  v1203 = v85;
  v86 = v1[183];
  v1204 = v1[182];
  v1205 = v86;
  v87 = v1[177];
  v1198 = v1[176];
  v1199 = v87;
  v88 = v1[179];
  v1200 = v1[178];
  v1201 = v88;
  v89 = v1[205];
  v1225 = v1[204];
  v1226 = v89;
  v1227[0] = v1[206];
  *(v1227 + 10) = *(v1 + 3306);
  v90 = v1[201];
  v1221 = v1[200];
  v1222 = v90;
  v91 = v1[203];
  v1223 = v1[202];
  v1224 = v91;
  v92 = v1[197];
  v1217 = v1[196];
  v1218 = v92;
  v93 = v1[199];
  v1219 = v1[198];
  v1220 = v93;
  v94 = v1[193];
  v1213 = v1[192];
  v1214 = v94;
  v95 = v1[195];
  v1215 = v1[194];
  v1216 = v95;
  v96 = v1[221];
  v1240 = v1[220];
  v1241 = v96;
  v1242[0] = v1[222];
  *(v1242 + 10) = *(v1 + 3562);
  v97 = v1[217];
  v1236 = v1[216];
  v1237 = v97;
  v98 = v1[219];
  v1238 = v1[218];
  v1239 = v98;
  v99 = v1[213];
  v1232 = v1[212];
  v1233 = v99;
  v100 = v1[215];
  v1234 = v1[214];
  v1235 = v100;
  v101 = v1[209];
  v1228 = v1[208];
  v1229 = v101;
  v102 = v1[211];
  v1230 = v1[210];
  v1231 = v102;
  v103 = v1[237];
  v1255 = v1[236];
  v1256 = v103;
  v1257[0] = v1[238];
  *(v1257 + 10) = *(v1 + 3818);
  v104 = v1[233];
  v1251 = v1[232];
  v1252 = v104;
  v105 = v1[235];
  v1253 = v1[234];
  v1254 = v105;
  v106 = v1[229];
  v1247 = v1[228];
  v1248 = v106;
  v107 = v1[231];
  v1249 = v1[230];
  v1250 = v107;
  v108 = v1[225];
  v1243 = v1[224];
  v1244 = v108;
  v109 = v1[227];
  v1245 = v1[226];
  v1246 = v109;
  v110 = v1[253];
  v1270 = v1[252];
  v1271 = v110;
  v1272[0] = v1[254];
  *(v1272 + 10) = *(v1 + 4074);
  v111 = v1[249];
  v1266 = v1[248];
  v1267 = v111;
  v112 = v1[251];
  v1268 = v1[250];
  v1269 = v112;
  v113 = v1[245];
  v1262 = v1[244];
  v1263 = v113;
  v114 = v1[247];
  v1264 = v1[246];
  v1265 = v114;
  v115 = v1[241];
  v1258 = v1[240];
  v1259 = v115;
  v116 = v1[243];
  v1260 = v1[242];
  v1261 = v116;
  v117 = v1[269];
  v1285 = v1[268];
  v1286 = v117;
  v1287[0] = v1[270];
  *(v1287 + 10) = *(v1 + 4330);
  v118 = v1[265];
  v1281 = v1[264];
  v1282 = v118;
  v119 = v1[267];
  v1283 = v1[266];
  v1284 = v119;
  v120 = v1[261];
  v1277 = v1[260];
  v1278 = v120;
  v121 = v1[263];
  v1279 = v1[262];
  v1280 = v121;
  v122 = v1[257];
  v1273 = v1[256];
  v1274 = v122;
  v123 = v1[259];
  v1275 = v1[258];
  v1276 = v123;
  v124 = v1[285];
  v1300 = v1[284];
  v1301 = v124;
  v1302[0] = v1[286];
  *(v1302 + 10) = *(v1 + 4586);
  v125 = v1[281];
  v1296 = v1[280];
  v1297 = v125;
  v126 = v1[277];
  v127 = v1[283];
  v1298 = v1[282];
  v1299 = v127;
  v1292 = v1[276];
  v1293 = v126;
  v128 = v1[279];
  v1294 = v1[278];
  v1295 = v128;
  v129 = v1[273];
  v1288 = v1[272];
  v1289 = v129;
  v130 = v1[275];
  v131 = v1[301];
  v1290 = v1[274];
  v1291 = v130;
  v1315 = v1[300];
  v1316 = v131;
  v1317[0] = v1[302];
  *(v1317 + 10) = *(v1 + 4842);
  v132 = v1[299];
  v133 = v1[297];
  v1311 = v1[296];
  v1312 = v133;
  v1313 = v1[298];
  v1314 = v132;
  v134 = v1[293];
  v1307 = v1[292];
  v1308 = v134;
  v135 = v1[289];
  v136 = v1[295];
  v1309 = v1[294];
  v1310 = v136;
  v1303 = v1[288];
  v1304 = v135;
  v137 = v1[291];
  v1305 = v1[290];
  v1306 = v137;
  v138 = v1[313];
  v139 = v1[317];
  v1330 = v1[316];
  v1331 = v139;
  v1332[0] = v1[318];
  *(v1332 + 10) = *(v1 + 5098);
  v1326 = v1[312];
  v1327 = v138;
  v140 = v1[315];
  v1328 = v1[314];
  v1329 = v140;
  v141 = v1[311];
  v142 = v1[309];
  v1322 = v1[308];
  v1323 = v142;
  v1324 = v1[310];
  v1325 = v141;
  v143 = v1[305];
  v1318 = v1[304];
  v1319 = v143;
  v144 = v1[307];
  v1320 = v1[306];
  v1321 = v144;
  v145 = v1[333];
  v1345 = v1[332];
  v1346 = v145;
  v1347[0] = v1[334];
  *(v1347 + 10) = *(v1 + 5354);
  v146 = v1[329];
  v1341 = v1[328];
  v1342 = v146;
  v147 = v1[325];
  v148 = v1[331];
  v1343 = v1[330];
  v1344 = v148;
  v1337 = v1[324];
  v1338 = v147;
  v149 = v1[327];
  v1339 = v1[326];
  v1340 = v149;
  v150 = v1[321];
  v1333 = v1[320];
  v1334 = v150;
  v151 = v1[323];
  v152 = v1[349];
  v1335 = v1[322];
  v1336 = v151;
  v1360 = v1[348];
  v1361 = v152;
  v1362[0] = v1[350];
  *(v1362 + 10) = *(v1 + 5610);
  v153 = v1[347];
  v154 = v1[345];
  v1356 = v1[344];
  v1357 = v154;
  v1358 = v1[346];
  v1359 = v153;
  v155 = v1[341];
  v1352 = v1[340];
  v1353 = v155;
  v156 = v1[337];
  v157 = v1[343];
  v1354 = v1[342];
  v1355 = v157;
  v1348 = v1[336];
  v1349 = v156;
  v158 = v1[339];
  v1350 = v1[338];
  v1351 = v158;
  v159 = v1[361];
  v160 = v1[365];
  v1375 = v1[364];
  v1376 = v160;
  v1377[0] = v1[366];
  *(v1377 + 10) = *(v1 + 5866);
  v1371 = v1[360];
  v1372 = v159;
  v161 = v1[363];
  v1373 = v1[362];
  v1374 = v161;
  v162 = v1[359];
  v163 = v1[357];
  v1367 = v1[356];
  v1368 = v163;
  v1369 = v1[358];
  v1370 = v162;
  v164 = v1[353];
  v1363 = v1[352];
  v1364 = v164;
  v165 = v1[355];
  v1365 = v1[354];
  v1366 = v165;
  v166 = v1[381];
  v1390 = v1[380];
  v1391 = v166;
  v1392[0] = v1[382];
  *(v1392 + 10) = *(v1 + 6122);
  v167 = v1[377];
  v1386 = v1[376];
  v1387 = v167;
  v168 = v1[373];
  v169 = v1[379];
  v1388 = v1[378];
  v1389 = v169;
  v1382 = v1[372];
  v1383 = v168;
  v170 = v1[375];
  v1384 = v1[374];
  v1385 = v170;
  v171 = v1[369];
  v1378 = v1[368];
  v1379 = v171;
  v172 = v1[371];
  v173 = v1[397];
  v1380 = v1[370];
  v1381 = v172;
  v1405 = v1[396];
  v1406 = v173;
  v1407[0] = v1[398];
  *(v1407 + 10) = *(v1 + 6378);
  v174 = v1[393];
  v1401 = v1[392];
  v1402 = v174;
  v175 = v1[395];
  v1403 = v1[394];
  v1404 = v175;
  v176 = v1[389];
  v1397 = v1[388];
  v1398 = v176;
  v177 = v1[391];
  v1399 = v1[390];
  v1400 = v177;
  v178 = v1[385];
  v1393 = v1[384];
  v1394 = v178;
  v179 = v1[387];
  v1395 = v1[386];
  v1396 = v179;
  v180 = v1[413];
  v1420 = v1[412];
  v1421 = v180;
  v1422[0] = v1[414];
  *(v1422 + 10) = *(v1 + 6634);
  v181 = v1[409];
  v1416 = v1[408];
  v1417 = v181;
  v182 = v1[411];
  v1418 = v1[410];
  v1419 = v182;
  v183 = v1[405];
  v1412 = v1[404];
  v1413 = v183;
  v184 = v1[407];
  v1414 = v1[406];
  v1415 = v184;
  v185 = v1[401];
  v1408 = v1[400];
  v1409 = v185;
  v186 = v1[403];
  v1410 = v1[402];
  v1411 = v186;
  v187 = v1[429];
  v1435 = v1[428];
  v1436 = v187;
  v1437[0] = v1[430];
  *(v1437 + 10) = *(v1 + 6890);
  v188 = v1[425];
  v1431 = v1[424];
  v1432 = v188;
  v189 = v1[421];
  v190 = v1[427];
  v1433 = v1[426];
  v1434 = v190;
  v1427 = v1[420];
  v1428 = v189;
  v191 = v1[423];
  v1429 = v1[422];
  v1430 = v191;
  v192 = v1[417];
  v1423 = v1[416];
  v1424 = v192;
  v193 = v1[419];
  v194 = v1[445];
  v1425 = v1[418];
  v1426 = v193;
  v1450 = v1[444];
  v1451 = v194;
  v1452[0] = v1[446];
  *(v1452 + 10) = *(v1 + 7146);
  v195 = v1[443];
  v196 = v1[441];
  v1446 = v1[440];
  v1447 = v196;
  v1448 = v1[442];
  v1449 = v195;
  v197 = v1[437];
  v1442 = v1[436];
  v1443 = v197;
  v198 = v1[433];
  v199 = v1[439];
  v1444 = v1[438];
  v1445 = v199;
  v1438 = v1[432];
  v1439 = v198;
  v200 = v1[435];
  v1440 = v1[434];
  v1441 = v200;
  v201 = v1[457];
  v202 = v1[461];
  v1465 = v1[460];
  v1466 = v202;
  v1467[0] = v1[462];
  *(v1467 + 10) = *(v1 + 7402);
  v1461 = v1[456];
  v1462 = v201;
  v203 = v1[459];
  v1463 = v1[458];
  v1464 = v203;
  v204 = v1[455];
  v205 = v1[453];
  v1457 = v1[452];
  v1458 = v205;
  v1459 = v1[454];
  v1460 = v204;
  v206 = v1[449];
  v1453 = v1[448];
  v1454 = v206;
  v207 = v1[451];
  v1455 = v1[450];
  v1456 = v207;
  v208 = v1[477];
  v1480 = v1[476];
  v1481 = v208;
  v1482[0] = v1[478];
  *(v1482 + 10) = *(v1 + 7658);
  v209 = v1[473];
  v1476 = v1[472];
  v1477 = v209;
  v210 = v1[469];
  v211 = v1[475];
  v1478 = v1[474];
  v1479 = v211;
  v1472 = v1[468];
  v1473 = v210;
  v212 = v1[471];
  v1474 = v1[470];
  v1475 = v212;
  v213 = v1[465];
  v1468 = v1[464];
  v1469 = v213;
  v214 = v1[467];
  v215 = v1[493];
  v1470 = v1[466];
  v1471 = v214;
  v1495 = v1[492];
  v1496 = v215;
  v1497[0] = v1[494];
  *(v1497 + 10) = *(v1 + 7914);
  v216 = v1[491];
  v217 = v1[489];
  v1491 = v1[488];
  v1492 = v217;
  v1493 = v1[490];
  v1494 = v216;
  v218 = v1[485];
  v1487 = v1[484];
  v1488 = v218;
  v219 = v1[481];
  v220 = v1[487];
  v1489 = v1[486];
  v1490 = v220;
  v1483 = v1[480];
  v1484 = v219;
  v221 = v1[483];
  v1485 = v1[482];
  v1486 = v221;
  v222 = v1[505];
  v223 = v1[509];
  v1510 = v1[508];
  v1511 = v223;
  v1512[0] = v1[510];
  *(v1512 + 10) = *(v1 + 8170);
  v1506 = v1[504];
  v1507 = v222;
  v224 = v1[507];
  v1508 = v1[506];
  v1509 = v224;
  v225 = v1[503];
  v226 = v1[501];
  v1502 = v1[500];
  v1503 = v226;
  v1504 = v1[502];
  v1505 = v225;
  v227 = v1[497];
  v1498 = v1[496];
  v1499 = v227;
  v228 = v1[499];
  v1500 = v1[498];
  v1501 = v228;
  v1527[0] = v1[526];
  v229 = v1[525];
  v1525 = v1[524];
  v1526 = v229;
  *(v1527 + 10) = *(v1 + 8426);
  v230 = v1[521];
  v1521 = v1[520];
  v1522 = v230;
  v231 = v1[523];
  v1523 = v1[522];
  v1524 = v231;
  v232 = v1[517];
  v1517 = v1[516];
  v1518 = v232;
  v233 = v1[519];
  v1519 = v1[518];
  v1520 = v233;
  v234 = v1[513];
  v1513 = v1[512];
  v1514 = v234;
  v235 = v1[515];
  v1515 = v1[514];
  v1516 = v235;
  v236 = v1[541];
  v1540 = v1[540];
  v1541 = v236;
  v1542[0] = v1[542];
  *(v1542 + 10) = *(v1 + 8682);
  v237 = v1[537];
  v1536 = v1[536];
  v1537 = v237;
  v238 = v1[539];
  v1538 = v1[538];
  v1539 = v238;
  v239 = v1[533];
  v1532 = v1[532];
  v1533 = v239;
  v240 = v1[535];
  v1534 = v1[534];
  v1535 = v240;
  v241 = v1[529];
  v1528 = v1[528];
  v1529 = v241;
  v242 = v1[531];
  v1530 = v1[530];
  v1531 = v242;
  v243 = v1[557];
  v1555 = v1[556];
  v1556 = v243;
  v1557[0] = v1[558];
  *(v1557 + 10) = *(v1 + 8938);
  v244 = v1[553];
  v1551 = v1[552];
  v1552 = v244;
  v245 = v1[555];
  v1553 = v1[554];
  v1554 = v245;
  v246 = v1[549];
  v1547 = v1[548];
  v1548 = v246;
  v247 = v1[551];
  v1549 = v1[550];
  v1550 = v247;
  v248 = v1[545];
  v1543 = v1[544];
  v1544 = v248;
  v249 = v1[547];
  v1545 = v1[546];
  v1546 = v249;
  v1572[0] = v1[574];
  v250 = v1[573];
  v1570 = v1[572];
  v1571 = v250;
  *(v1572 + 10) = *(v1 + 9194);
  v251 = v1[569];
  v1566 = v1[568];
  v1567 = v251;
  v252 = v1[571];
  v1568 = v1[570];
  v1569 = v252;
  v253 = v1[565];
  v1562 = v1[564];
  v1563 = v253;
  v254 = v1[567];
  v1564 = v1[566];
  v1565 = v254;
  v255 = v1[561];
  v1558 = v1[560];
  v1559 = v255;
  v256 = v1[563];
  v1560 = v1[562];
  v1561 = v256;
  v257 = v1[589];
  v1585 = v1[588];
  v1586 = v257;
  v1587[0] = v1[590];
  *(v1587 + 10) = *(v1 + 9450);
  v258 = v1[585];
  v1581 = v1[584];
  v1582 = v258;
  v259 = v1[587];
  v1583 = v1[586];
  v1584 = v259;
  v260 = v1[581];
  v1577 = v1[580];
  v1578 = v260;
  v261 = v1[583];
  v1579 = v1[582];
  v1580 = v261;
  v262 = v1[577];
  v1573 = v1[576];
  v1574 = v262;
  v263 = v1[579];
  v1575 = v1[578];
  v1576 = v263;
  v264 = v1[605];
  v1600 = v1[604];
  v1601 = v264;
  v1602[0] = v1[606];
  *(v1602 + 10) = *(v1 + 9706);
  v265 = v1[601];
  v1596 = v1[600];
  v1597 = v265;
  v266 = v1[603];
  v1598 = v1[602];
  v1599 = v266;
  v267 = v1[597];
  v1592 = v1[596];
  v1593 = v267;
  v268 = v1[599];
  v1594 = v1[598];
  v1595 = v268;
  v269 = v1[593];
  v1588 = v1[592];
  v1589 = v269;
  v270 = v1[594];
  v271 = v1[595];
  v272 = v1[620];
  v273 = v1[621];
  v1617[0] = v1[622];
  v274 = *(v1 + 9962);
  v275 = v1[616];
  v276 = v1[617];
  v277 = v1[618];
  v278 = v1[619];
  v279 = v1[612];
  v280 = v1[613];
  v281 = v1[614];
  v282 = v1[615];
  v283 = v1[608];
  v284 = v1[609];
  v285 = v1[610];
  v286 = v1[611];
  v287 = v1[636];
  v288 = v1[637];
  v289 = v1[638];
  v290 = *(v1 + 10218);
  v291 = v1[632];
  v292 = v1[633];
  v293 = v1[634];
  v294 = v309[3];
  v295 = v1[635];
  v296 = v1[628];
  v297 = v1[629];
  v298 = v1[630];
  v299 = v1[631];
  v300 = v1[624];
  v301 = v1[625];
  v302 = v1[626];
  v1590 = v270;
  v303 = v1[627];
  v1591 = v271;
  v1615 = v272;
  v1616 = v273;
  *(v1617 + 10) = v274;
  v1611 = v275;
  v1612 = v276;
  v1632[0] = v289;
  v1613 = v277;
  v1614 = v278;
  v1607 = v279;
  v1608 = v280;
  v1609 = v281;
  v1610 = v282;
  v1603 = v283;
  v1604 = v284;
  v1605 = v285;
  v1606 = v286;
  v1630 = v287;
  v1631 = v288;
  *(v1632 + 10) = v290;
  v1626 = v291;
  v1627 = v292;
  v1628 = v293;
  v1629 = v295;
  v1622 = v296;
  v1623 = v297;
  v1624 = v298;
  v1625 = v299;
  v1618 = v300;
  v1619 = v301;
  v1620 = v302;
  v1621 = v303;
  __swift_project_boxed_opaque_existential_1(v309, v294);
  sub_2142FCC0C(&v1033, &v1018);
  sub_2142FCB10();
  v304 = v1633;
  v305 = v312;
  sub_2146DAA28();
  v1030 = v1045;
  v1031 = v1046;
  v1032[0] = v1047[0];
  *(v1032 + 10) = *(v1047 + 10);
  v1026 = v1041;
  v1027 = v1042;
  v1028 = v1043;
  v1029 = v1044;
  v1022 = v1037;
  v1023 = v1038;
  v1024 = v1039;
  v1025 = v1040;
  v1018 = v1033;
  v1019 = v1034;
  v1020 = v1035;
  v1021 = v1036;
  v1017 = 0;
  v306 = sub_2142FCC68();
  v307 = v310;
  sub_2146DA388();
  v1015[12] = v1030;
  v1015[13] = v1031;
  *v1016 = v1032[0];
  *&v1016[10] = *(v1032 + 10);
  v1015[8] = v1026;
  v1015[9] = v1027;
  v1015[10] = v1028;
  v1015[11] = v1029;
  v1015[4] = v1022;
  v1015[5] = v1023;
  v1015[6] = v1024;
  v1015[7] = v1025;
  v1015[0] = v1018;
  v1015[1] = v1019;
  v1015[2] = v1020;
  v1015[3] = v1021;
  sub_2142FCBB8(v1015);
  if (v307)
  {
    return (*(v311 + 8))(v304, v305);
  }

  v1012 = v1060;
  v1013 = v1061;
  v1014[0] = v1062[0];
  *(v1014 + 10) = *(v1062 + 10);
  v1008 = v1056;
  v1009 = v1057;
  v1010 = v1058;
  v1011 = v1059;
  v1004 = v1052;
  v1005 = v1053;
  v1006 = v1054;
  v1007 = v1055;
  v1000 = v1048;
  v1001 = v1049;
  v1002 = v1050;
  v1003 = v1051;
  v999 = 1;
  sub_2142FCC0C(&v1048, v997);
  sub_2146DA388();
  v997[12] = v1012;
  v997[13] = v1013;
  *v998 = v1014[0];
  *&v998[10] = *(v1014 + 10);
  v997[8] = v1008;
  v997[9] = v1009;
  v997[10] = v1010;
  v997[11] = v1011;
  v997[4] = v1004;
  v997[5] = v1005;
  v997[6] = v1006;
  v997[7] = v1007;
  v997[0] = v1000;
  v997[1] = v1001;
  v997[2] = v1002;
  v997[3] = v1003;
  sub_2142FCBB8(v997);
  v994 = v1075;
  v995 = v1076;
  v996[0] = v1077[0];
  *(v996 + 10) = *(v1077 + 10);
  v990 = v1071;
  v991 = v1072;
  v992 = v1073;
  v993 = v1074;
  v986 = v1067;
  v987 = v1068;
  v988 = v1069;
  v989 = v1070;
  v982 = v1063;
  v983 = v1064;
  v984 = v1065;
  v985 = v1066;
  v981 = 2;
  sub_2142FCC0C(&v1063, v979);
  v310 = v306;
  sub_2146DA388();
  v979[12] = v994;
  v979[13] = v995;
  *v980 = v996[0];
  *&v980[10] = *(v996 + 10);
  v979[8] = v990;
  v979[9] = v991;
  v979[10] = v992;
  v979[11] = v993;
  v979[4] = v986;
  v979[5] = v987;
  v979[6] = v988;
  v979[7] = v989;
  v979[0] = v982;
  v979[1] = v983;
  v979[2] = v984;
  v979[3] = v985;
  sub_2142FCBB8(v979);
  v976 = v1090;
  v977 = v1091;
  v978[0] = v1092[0];
  *(v978 + 10) = *(v1092 + 10);
  v972 = v1086;
  v973 = v1087;
  v974 = v1088;
  v975 = v1089;
  v968 = v1082;
  v969 = v1083;
  v970 = v1084;
  v971 = v1085;
  v964 = v1078;
  v965 = v1079;
  v966 = v1080;
  v967 = v1081;
  v963 = 3;
  sub_2142FCC0C(&v1078, v961);
  sub_2146DA388();
  v961[12] = v976;
  v961[13] = v977;
  *v962 = v978[0];
  *&v962[10] = *(v978 + 10);
  v961[8] = v972;
  v961[9] = v973;
  v961[10] = v974;
  v961[11] = v975;
  v961[4] = v968;
  v961[5] = v969;
  v961[6] = v970;
  v961[7] = v971;
  v961[0] = v964;
  v961[1] = v965;
  v961[2] = v966;
  v961[3] = v967;
  sub_2142FCBB8(v961);
  v958 = v1105;
  v959 = v1106;
  v960[0] = v1107[0];
  *(v960 + 10) = *(v1107 + 10);
  v954 = v1101;
  v955 = v1102;
  v956 = v1103;
  v957 = v1104;
  v950 = v1097;
  v951 = v1098;
  v952 = v1099;
  v953 = v1100;
  v946 = v1093;
  v947 = v1094;
  v948 = v1095;
  v949 = v1096;
  v945 = 4;
  sub_2142FCC0C(&v1093, v943);
  sub_2146DA388();
  v943[12] = v958;
  v943[13] = v959;
  *v944 = v960[0];
  *&v944[10] = *(v960 + 10);
  v943[8] = v954;
  v943[9] = v955;
  v943[10] = v956;
  v943[11] = v957;
  v943[4] = v950;
  v943[5] = v951;
  v943[6] = v952;
  v943[7] = v953;
  v943[0] = v946;
  v943[1] = v947;
  v943[2] = v948;
  v943[3] = v949;
  sub_2142FCBB8(v943);
  v940 = v1120;
  v941 = v1121;
  v942[0] = v1122[0];
  *(v942 + 10) = *(v1122 + 10);
  v936 = v1116;
  v937 = v1117;
  v938 = v1118;
  v939 = v1119;
  v932 = v1112;
  v933 = v1113;
  v934 = v1114;
  v935 = v1115;
  v928 = v1108;
  v929 = v1109;
  v930 = v1110;
  v931 = v1111;
  v927 = 5;
  sub_2142FCC0C(&v1108, v925);
  sub_2146DA388();
  v925[12] = v940;
  v925[13] = v941;
  *v926 = v942[0];
  *&v926[10] = *(v942 + 10);
  v925[8] = v936;
  v925[9] = v937;
  v925[10] = v938;
  v925[11] = v939;
  v925[4] = v932;
  v925[5] = v933;
  v925[6] = v934;
  v925[7] = v935;
  v925[0] = v928;
  v925[1] = v929;
  v925[2] = v930;
  v925[3] = v931;
  sub_2142FCBB8(v925);
  v922 = v1135;
  v923 = v1136;
  v924[0] = v1137[0];
  *(v924 + 10) = *(v1137 + 10);
  v918 = v1131;
  v919 = v1132;
  v920 = v1133;
  v921 = v1134;
  v914 = v1127;
  v915 = v1128;
  v916 = v1129;
  v917 = v1130;
  v910 = v1123;
  v911 = v1124;
  v912 = v1125;
  v913 = v1126;
  v909 = 6;
  sub_2142FCC0C(&v1123, v907);
  sub_2146DA388();
  v907[12] = v922;
  v907[13] = v923;
  *v908 = v924[0];
  *&v908[10] = *(v924 + 10);
  v907[8] = v918;
  v907[9] = v919;
  v907[10] = v920;
  v907[11] = v921;
  v907[4] = v914;
  v907[5] = v915;
  v907[6] = v916;
  v907[7] = v917;
  v907[0] = v910;
  v907[1] = v911;
  v907[2] = v912;
  v907[3] = v913;
  sub_2142FCBB8(v907);
  v904 = v1150;
  v905 = v1151;
  v906[0] = v1152[0];
  *(v906 + 10) = *(v1152 + 10);
  v900 = v1146;
  v901 = v1147;
  v902 = v1148;
  v903 = v1149;
  v896 = v1142;
  v897 = v1143;
  v898 = v1144;
  v899 = v1145;
  v892 = v1138;
  v893 = v1139;
  v894 = v1140;
  v895 = v1141;
  v891 = 7;
  sub_2142FCC0C(&v1138, v889);
  sub_2146DA388();
  v889[12] = v904;
  v889[13] = v905;
  *v890 = v906[0];
  *&v890[10] = *(v906 + 10);
  v889[8] = v900;
  v889[9] = v901;
  v889[10] = v902;
  v889[11] = v903;
  v889[4] = v896;
  v889[5] = v897;
  v889[6] = v898;
  v889[7] = v899;
  v889[0] = v892;
  v889[1] = v893;
  v889[2] = v894;
  v889[3] = v895;
  sub_2142FCBB8(v889);
  v886 = v1165;
  v887 = v1166;
  v888[0] = v1167[0];
  *(v888 + 10) = *(v1167 + 10);
  v882 = v1161;
  v883 = v1162;
  v884 = v1163;
  v885 = v1164;
  v878 = v1157;
  v879 = v1158;
  v880 = v1159;
  v881 = v1160;
  v874 = v1153;
  v875 = v1154;
  v876 = v1155;
  v877 = v1156;
  v873 = 8;
  sub_2142FCC0C(&v1153, v871);
  sub_2146DA388();
  v871[12] = v886;
  v871[13] = v887;
  *v872 = v888[0];
  *&v872[10] = *(v888 + 10);
  v871[8] = v882;
  v871[9] = v883;
  v871[10] = v884;
  v871[11] = v885;
  v871[4] = v878;
  v871[5] = v879;
  v871[6] = v880;
  v871[7] = v881;
  v871[0] = v874;
  v871[1] = v875;
  v871[2] = v876;
  v871[3] = v877;
  sub_2142FCBB8(v871);
  v868 = v1180;
  v869 = v1181;
  v870[0] = v1182[0];
  *(v870 + 10) = *(v1182 + 10);
  v864 = v1176;
  v865 = v1177;
  v866 = v1178;
  v867 = v1179;
  v860 = v1172;
  v861 = v1173;
  v862 = v1174;
  v863 = v1175;
  v856 = v1168;
  v857 = v1169;
  v858 = v1170;
  v859 = v1171;
  v855 = 9;
  sub_2142FCC0C(&v1168, v853);
  sub_2146DA388();
  v853[12] = v868;
  v853[13] = v869;
  *v854 = v870[0];
  *&v854[10] = *(v870 + 10);
  v853[8] = v864;
  v853[9] = v865;
  v853[10] = v866;
  v853[11] = v867;
  v853[4] = v860;
  v853[5] = v861;
  v853[6] = v862;
  v853[7] = v863;
  v853[0] = v856;
  v853[1] = v857;
  v853[2] = v858;
  v853[3] = v859;
  sub_2142FCBB8(v853);
  v850 = v1195;
  v851 = v1196;
  v852[0] = v1197[0];
  *(v852 + 10) = *(v1197 + 10);
  v846 = v1191;
  v847 = v1192;
  v848 = v1193;
  v849 = v1194;
  v842 = v1187;
  v843 = v1188;
  v844 = v1189;
  v845 = v1190;
  v838 = v1183;
  v839 = v1184;
  v840 = v1185;
  v841 = v1186;
  v837 = 10;
  sub_2142FCC0C(&v1183, v835);
  sub_2146DA388();
  v835[12] = v850;
  v835[13] = v851;
  *v836 = v852[0];
  *&v836[10] = *(v852 + 10);
  v835[8] = v846;
  v835[9] = v847;
  v835[10] = v848;
  v835[11] = v849;
  v835[4] = v842;
  v835[5] = v843;
  v835[6] = v844;
  v835[7] = v845;
  v835[0] = v838;
  v835[1] = v839;
  v835[2] = v840;
  v835[3] = v841;
  sub_2142FCBB8(v835);
  v832 = v1210;
  v833 = v1211;
  v834[0] = v1212[0];
  *(v834 + 10) = *(v1212 + 10);
  v828 = v1206;
  v829 = v1207;
  v830 = v1208;
  v831 = v1209;
  v824 = v1202;
  v825 = v1203;
  v826 = v1204;
  v827 = v1205;
  v820 = v1198;
  v821 = v1199;
  v822 = v1200;
  v823 = v1201;
  v819 = 11;
  sub_2142FCC0C(&v1198, v817);
  sub_2146DA388();
  v817[12] = v832;
  v817[13] = v833;
  *v818 = v834[0];
  *&v818[10] = *(v834 + 10);
  v817[8] = v828;
  v817[9] = v829;
  v817[10] = v830;
  v817[11] = v831;
  v817[4] = v824;
  v817[5] = v825;
  v817[6] = v826;
  v817[7] = v827;
  v817[0] = v820;
  v817[1] = v821;
  v817[2] = v822;
  v817[3] = v823;
  sub_2142FCBB8(v817);
  v814 = v1225;
  v815 = v1226;
  v816[0] = v1227[0];
  *(v816 + 10) = *(v1227 + 10);
  v810 = v1221;
  v811 = v1222;
  v812 = v1223;
  v813 = v1224;
  v806 = v1217;
  v807 = v1218;
  v808 = v1219;
  v809 = v1220;
  v802 = v1213;
  v803 = v1214;
  v804 = v1215;
  v805 = v1216;
  v801 = 12;
  sub_2142FCC0C(&v1213, v799);
  sub_2146DA388();
  v799[12] = v814;
  v799[13] = v815;
  *v800 = v816[0];
  *&v800[10] = *(v816 + 10);
  v799[8] = v810;
  v799[9] = v811;
  v799[10] = v812;
  v799[11] = v813;
  v799[4] = v806;
  v799[5] = v807;
  v799[6] = v808;
  v799[7] = v809;
  v799[0] = v802;
  v799[1] = v803;
  v799[2] = v804;
  v799[3] = v805;
  sub_2142FCBB8(v799);
  v796 = v1240;
  v797 = v1241;
  v798[0] = v1242[0];
  *(v798 + 10) = *(v1242 + 10);
  v792 = v1236;
  v793 = v1237;
  v794 = v1238;
  v795 = v1239;
  v788 = v1232;
  v789 = v1233;
  v790 = v1234;
  v791 = v1235;
  v784 = v1228;
  v785 = v1229;
  v786 = v1230;
  v787 = v1231;
  v783 = 13;
  sub_2142FCC0C(&v1228, v781);
  sub_2146DA388();
  v781[12] = v796;
  v781[13] = v797;
  *v782 = v798[0];
  *&v782[10] = *(v798 + 10);
  v781[8] = v792;
  v781[9] = v793;
  v781[10] = v794;
  v781[11] = v795;
  v781[4] = v788;
  v781[5] = v789;
  v781[6] = v790;
  v781[7] = v791;
  v781[0] = v784;
  v781[1] = v785;
  v781[2] = v786;
  v781[3] = v787;
  sub_2142FCBB8(v781);
  v778 = v1255;
  v779 = v1256;
  v780[0] = v1257[0];
  *(v780 + 10) = *(v1257 + 10);
  v774 = v1251;
  v775 = v1252;
  v776 = v1253;
  v777 = v1254;
  v770 = v1247;
  v771 = v1248;
  v772 = v1249;
  v773 = v1250;
  v766 = v1243;
  v767 = v1244;
  v768 = v1245;
  v769 = v1246;
  v765 = 14;
  sub_2142FCC0C(&v1243, v763);
  sub_2146DA388();
  v763[12] = v778;
  v763[13] = v779;
  *v764 = v780[0];
  *&v764[10] = *(v780 + 10);
  v763[8] = v774;
  v763[9] = v775;
  v763[10] = v776;
  v763[11] = v777;
  v763[4] = v770;
  v763[5] = v771;
  v763[6] = v772;
  v763[7] = v773;
  v763[0] = v766;
  v763[1] = v767;
  v763[2] = v768;
  v763[3] = v769;
  sub_2142FCBB8(v763);
  v760 = v1270;
  v761 = v1271;
  v762[0] = v1272[0];
  *(v762 + 10) = *(v1272 + 10);
  v756 = v1266;
  v757 = v1267;
  v758 = v1268;
  v759 = v1269;
  v752 = v1262;
  v753 = v1263;
  v754 = v1264;
  v755 = v1265;
  v748 = v1258;
  v749 = v1259;
  v750 = v1260;
  v751 = v1261;
  v747 = 15;
  sub_2142FCC0C(&v1258, v745);
  sub_2146DA388();
  v745[12] = v760;
  v745[13] = v761;
  *v746 = v762[0];
  *&v746[10] = *(v762 + 10);
  v745[8] = v756;
  v745[9] = v757;
  v745[10] = v758;
  v745[11] = v759;
  v745[4] = v752;
  v745[5] = v753;
  v745[6] = v754;
  v745[7] = v755;
  v745[0] = v748;
  v745[1] = v749;
  v745[2] = v750;
  v745[3] = v751;
  sub_2142FCBB8(v745);
  v742 = v1285;
  v743 = v1286;
  v744[0] = v1287[0];
  *(v744 + 10) = *(v1287 + 10);
  v738 = v1281;
  v739 = v1282;
  v740 = v1283;
  v741 = v1284;
  v734 = v1277;
  v735 = v1278;
  v736 = v1279;
  v737 = v1280;
  v730 = v1273;
  v731 = v1274;
  v732 = v1275;
  v733 = v1276;
  v729 = 16;
  sub_2142FCC0C(&v1273, v727);
  sub_2146DA388();
  v727[12] = v742;
  v727[13] = v743;
  *v728 = v744[0];
  *&v728[10] = *(v744 + 10);
  v727[8] = v738;
  v727[9] = v739;
  v727[10] = v740;
  v727[11] = v741;
  v727[4] = v734;
  v727[5] = v735;
  v727[6] = v736;
  v727[7] = v737;
  v727[0] = v730;
  v727[1] = v731;
  v727[2] = v732;
  v727[3] = v733;
  sub_2142FCBB8(v727);
  v724 = v1300;
  v725 = v1301;
  v726[0] = v1302[0];
  *(v726 + 10) = *(v1302 + 10);
  v720 = v1296;
  v721 = v1297;
  v722 = v1298;
  v723 = v1299;
  v716 = v1292;
  v717 = v1293;
  v718 = v1294;
  v719 = v1295;
  v712 = v1288;
  v713 = v1289;
  v714 = v1290;
  v715 = v1291;
  v711 = 17;
  sub_2142FCC0C(&v1288, v709);
  sub_2146DA388();
  v709[12] = v724;
  v709[13] = v725;
  *v710 = v726[0];
  *&v710[10] = *(v726 + 10);
  v709[8] = v720;
  v709[9] = v721;
  v709[10] = v722;
  v709[11] = v723;
  v709[4] = v716;
  v709[5] = v717;
  v709[6] = v718;
  v709[7] = v719;
  v709[0] = v712;
  v709[1] = v713;
  v709[2] = v714;
  v709[3] = v715;
  sub_2142FCBB8(v709);
  v706 = v1315;
  v707 = v1316;
  v708[0] = v1317[0];
  *(v708 + 10) = *(v1317 + 10);
  v702 = v1311;
  v703 = v1312;
  v704 = v1313;
  v705 = v1314;
  v698 = v1307;
  v699 = v1308;
  v700 = v1309;
  v701 = v1310;
  v694 = v1303;
  v695 = v1304;
  v696 = v1305;
  v697 = v1306;
  v693 = 18;
  sub_2142FCC0C(&v1303, v691);
  sub_2146DA388();
  v691[12] = v706;
  v691[13] = v707;
  *v692 = v708[0];
  *&v692[10] = *(v708 + 10);
  v691[8] = v702;
  v691[9] = v703;
  v691[10] = v704;
  v691[11] = v705;
  v691[4] = v698;
  v691[5] = v699;
  v691[6] = v700;
  v691[7] = v701;
  v691[0] = v694;
  v691[1] = v695;
  v691[2] = v696;
  v691[3] = v697;
  sub_2142FCBB8(v691);
  v688 = v1330;
  v689 = v1331;
  v690[0] = v1332[0];
  *(v690 + 10) = *(v1332 + 10);
  v684 = v1326;
  v685 = v1327;
  v686 = v1328;
  v687 = v1329;
  v680 = v1322;
  v681 = v1323;
  v682 = v1324;
  v683 = v1325;
  v676 = v1318;
  v677 = v1319;
  v678 = v1320;
  v679 = v1321;
  v675 = 19;
  sub_2142FCC0C(&v1318, v673);
  sub_2146DA388();
  v673[12] = v688;
  v673[13] = v689;
  *v674 = v690[0];
  *&v674[10] = *(v690 + 10);
  v673[8] = v684;
  v673[9] = v685;
  v673[10] = v686;
  v673[11] = v687;
  v673[4] = v680;
  v673[5] = v681;
  v673[6] = v682;
  v673[7] = v683;
  v673[0] = v676;
  v673[1] = v677;
  v673[2] = v678;
  v673[3] = v679;
  sub_2142FCBB8(v673);
  v670 = v1345;
  v671 = v1346;
  v672[0] = v1347[0];
  *(v672 + 10) = *(v1347 + 10);
  v666 = v1341;
  v667 = v1342;
  v668 = v1343;
  v669 = v1344;
  v662 = v1337;
  v663 = v1338;
  v664 = v1339;
  v665 = v1340;
  v658 = v1333;
  v659 = v1334;
  v660 = v1335;
  v661 = v1336;
  v657 = 20;
  sub_2142FCC0C(&v1333, v655);
  sub_2146DA388();
  v655[12] = v670;
  v655[13] = v671;
  *v656 = v672[0];
  *&v656[10] = *(v672 + 10);
  v655[8] = v666;
  v655[9] = v667;
  v655[10] = v668;
  v655[11] = v669;
  v655[4] = v662;
  v655[5] = v663;
  v655[6] = v664;
  v655[7] = v665;
  v655[0] = v658;
  v655[1] = v659;
  v655[2] = v660;
  v655[3] = v661;
  sub_2142FCBB8(v655);
  v652 = v1360;
  v653 = v1361;
  v654[0] = v1362[0];
  *(v654 + 10) = *(v1362 + 10);
  v648 = v1356;
  v649 = v1357;
  v650 = v1358;
  v651 = v1359;
  v644 = v1352;
  v645 = v1353;
  v646 = v1354;
  v647 = v1355;
  v640 = v1348;
  v641 = v1349;
  v642 = v1350;
  v643 = v1351;
  v639 = 21;
  sub_2142FCC0C(&v1348, v637);
  sub_2146DA388();
  v637[12] = v652;
  v637[13] = v653;
  *v638 = v654[0];
  *&v638[10] = *(v654 + 10);
  v637[8] = v648;
  v637[9] = v649;
  v637[10] = v650;
  v637[11] = v651;
  v637[4] = v644;
  v637[5] = v645;
  v637[6] = v646;
  v637[7] = v647;
  v637[0] = v640;
  v637[1] = v641;
  v637[2] = v642;
  v637[3] = v643;
  sub_2142FCBB8(v637);
  v634 = v1375;
  v635 = v1376;
  v636[0] = v1377[0];
  *(v636 + 10) = *(v1377 + 10);
  v630 = v1371;
  v631 = v1372;
  v632 = v1373;
  v633 = v1374;
  v626 = v1367;
  v627 = v1368;
  v628 = v1369;
  v629 = v1370;
  v622 = v1363;
  v623 = v1364;
  v624 = v1365;
  v625 = v1366;
  v621 = 22;
  sub_2142FCC0C(&v1363, v619);
  sub_2146DA388();
  v619[12] = v634;
  v619[13] = v635;
  *v620 = v636[0];
  *&v620[10] = *(v636 + 10);
  v619[8] = v630;
  v619[9] = v631;
  v619[10] = v632;
  v619[11] = v633;
  v619[4] = v626;
  v619[5] = v627;
  v619[6] = v628;
  v619[7] = v629;
  v619[0] = v622;
  v619[1] = v623;
  v619[2] = v624;
  v619[3] = v625;
  sub_2142FCBB8(v619);
  v616 = v1390;
  v617 = v1391;
  v618[0] = v1392[0];
  *(v618 + 10) = *(v1392 + 10);
  v612 = v1386;
  v613 = v1387;
  v614 = v1388;
  v615 = v1389;
  v608 = v1382;
  v609 = v1383;
  v610 = v1384;
  v611 = v1385;
  v604 = v1378;
  v605 = v1379;
  v606 = v1380;
  v607 = v1381;
  v603 = 23;
  sub_2142FCC0C(&v1378, v601);
  sub_2146DA388();
  v601[12] = v616;
  v601[13] = v617;
  *v602 = v618[0];
  *&v602[10] = *(v618 + 10);
  v601[8] = v612;
  v601[9] = v613;
  v601[10] = v614;
  v601[11] = v615;
  v601[4] = v608;
  v601[5] = v609;
  v601[6] = v610;
  v601[7] = v611;
  v601[0] = v604;
  v601[1] = v605;
  v601[2] = v606;
  v601[3] = v607;
  sub_2142FCBB8(v601);
  v598 = v1405;
  v599 = v1406;
  v600[0] = v1407[0];
  *(v600 + 10) = *(v1407 + 10);
  v594 = v1401;
  v595 = v1402;
  v596 = v1403;
  v597 = v1404;
  v590 = v1397;
  v591 = v1398;
  v592 = v1399;
  v593 = v1400;
  v586 = v1393;
  v587 = v1394;
  v588 = v1395;
  v589 = v1396;
  v585 = 24;
  sub_2142FCC0C(&v1393, v583);
  sub_2146DA388();
  v583[12] = v598;
  v583[13] = v599;
  *v584 = v600[0];
  *&v584[10] = *(v600 + 10);
  v583[8] = v594;
  v583[9] = v595;
  v583[10] = v596;
  v583[11] = v597;
  v583[4] = v590;
  v583[5] = v591;
  v583[6] = v592;
  v583[7] = v593;
  v583[0] = v586;
  v583[1] = v587;
  v583[2] = v588;
  v583[3] = v589;
  sub_2142FCBB8(v583);
  v580 = v1420;
  v581 = v1421;
  v582[0] = v1422[0];
  *(v582 + 10) = *(v1422 + 10);
  v576 = v1416;
  v577 = v1417;
  v578 = v1418;
  v579 = v1419;
  v572 = v1412;
  v573 = v1413;
  v574 = v1414;
  v575 = v1415;
  v568 = v1408;
  v569 = v1409;
  v570 = v1410;
  v571 = v1411;
  v567 = 25;
  sub_2142FCC0C(&v1408, v565);
  sub_2146DA388();
  v565[12] = v580;
  v565[13] = v581;
  *v566 = v582[0];
  *&v566[10] = *(v582 + 10);
  v565[8] = v576;
  v565[9] = v577;
  v565[10] = v578;
  v565[11] = v579;
  v565[4] = v572;
  v565[5] = v573;
  v565[6] = v574;
  v565[7] = v575;
  v565[0] = v568;
  v565[1] = v569;
  v565[2] = v570;
  v565[3] = v571;
  sub_2142FCBB8(v565);
  v562 = v1435;
  v563 = v1436;
  v564[0] = v1437[0];
  *(v564 + 10) = *(v1437 + 10);
  v558 = v1431;
  v559 = v1432;
  v560 = v1433;
  v561 = v1434;
  v554 = v1427;
  v555 = v1428;
  v556 = v1429;
  v557 = v1430;
  v550 = v1423;
  v551 = v1424;
  v552 = v1425;
  v553 = v1426;
  v549 = 26;
  sub_2142FCC0C(&v1423, v547);
  sub_2146DA388();
  v547[12] = v562;
  v547[13] = v563;
  *v548 = v564[0];
  *&v548[10] = *(v564 + 10);
  v547[8] = v558;
  v547[9] = v559;
  v547[10] = v560;
  v547[11] = v561;
  v547[4] = v554;
  v547[5] = v555;
  v547[6] = v556;
  v547[7] = v557;
  v547[0] = v550;
  v547[1] = v551;
  v547[2] = v552;
  v547[3] = v553;
  sub_2142FCBB8(v547);
  v544 = v1450;
  v545 = v1451;
  v546[0] = v1452[0];
  *(v546 + 10) = *(v1452 + 10);
  v540 = v1446;
  v541 = v1447;
  v542 = v1448;
  v543 = v1449;
  v536 = v1442;
  v537 = v1443;
  v538 = v1444;
  v539 = v1445;
  v532 = v1438;
  v533 = v1439;
  v534 = v1440;
  v535 = v1441;
  v531 = 27;
  sub_2142FCC0C(&v1438, v529);
  sub_2146DA388();
  v529[12] = v544;
  v529[13] = v545;
  *v530 = v546[0];
  *&v530[10] = *(v546 + 10);
  v529[8] = v540;
  v529[9] = v541;
  v529[10] = v542;
  v529[11] = v543;
  v529[4] = v536;
  v529[5] = v537;
  v529[6] = v538;
  v529[7] = v539;
  v529[0] = v532;
  v529[1] = v533;
  v529[2] = v534;
  v529[3] = v535;
  sub_2142FCBB8(v529);
  v526 = v1465;
  v527 = v1466;
  v528[0] = v1467[0];
  *(v528 + 10) = *(v1467 + 10);
  v522 = v1461;
  v523 = v1462;
  v524 = v1463;
  v525 = v1464;
  v518 = v1457;
  v519 = v1458;
  v520 = v1459;
  v521 = v1460;
  v514 = v1453;
  v515 = v1454;
  v516 = v1455;
  v517 = v1456;
  v513 = 28;
  sub_2142FCC0C(&v1453, v511);
  sub_2146DA388();
  v511[12] = v526;
  v511[13] = v527;
  *v512 = v528[0];
  *&v512[10] = *(v528 + 10);
  v511[8] = v522;
  v511[9] = v523;
  v511[10] = v524;
  v511[11] = v525;
  v511[4] = v518;
  v511[5] = v519;
  v511[6] = v520;
  v511[7] = v521;
  v511[0] = v514;
  v511[1] = v515;
  v511[2] = v516;
  v511[3] = v517;
  sub_2142FCBB8(v511);
  v508 = v1480;
  v509 = v1481;
  v510[0] = v1482[0];
  *(v510 + 10) = *(v1482 + 10);
  v504 = v1476;
  v505 = v1477;
  v506 = v1478;
  v507 = v1479;
  v500 = v1472;
  v501 = v1473;
  v502 = v1474;
  v503 = v1475;
  v496 = v1468;
  v497 = v1469;
  v498 = v1470;
  v499 = v1471;
  v495 = 29;
  sub_2142FCC0C(&v1468, v493);
  sub_2146DA388();
  v493[12] = v508;
  v493[13] = v509;
  *v494 = v510[0];
  *&v494[10] = *(v510 + 10);
  v493[8] = v504;
  v493[9] = v505;
  v493[10] = v506;
  v493[11] = v507;
  v493[4] = v500;
  v493[5] = v501;
  v493[6] = v502;
  v493[7] = v503;
  v493[0] = v496;
  v493[1] = v497;
  v493[2] = v498;
  v493[3] = v499;
  sub_2142FCBB8(v493);
  v490 = v1495;
  v491 = v1496;
  v492[0] = v1497[0];
  *(v492 + 10) = *(v1497 + 10);
  v486 = v1491;
  v487 = v1492;
  v488 = v1493;
  v489 = v1494;
  v482 = v1487;
  v483 = v1488;
  v484 = v1489;
  v485 = v1490;
  v478 = v1483;
  v479 = v1484;
  v480 = v1485;
  v481 = v1486;
  v477 = 30;
  sub_2142FCC0C(&v1483, v475);
  sub_2146DA388();
  v475[12] = v490;
  v475[13] = v491;
  *v476 = v492[0];
  *&v476[10] = *(v492 + 10);
  v475[8] = v486;
  v475[9] = v487;
  v475[10] = v488;
  v475[11] = v489;
  v475[4] = v482;
  v475[5] = v483;
  v475[6] = v484;
  v475[7] = v485;
  v475[0] = v478;
  v475[1] = v479;
  v475[2] = v480;
  v475[3] = v481;
  sub_2142FCBB8(v475);
  v472 = v1510;
  v473 = v1511;
  v474[0] = v1512[0];
  *(v474 + 10) = *(v1512 + 10);
  v468 = v1506;
  v469 = v1507;
  v470 = v1508;
  v471 = v1509;
  v464 = v1502;
  v465 = v1503;
  v466 = v1504;
  v467 = v1505;
  v460 = v1498;
  v461 = v1499;
  v462 = v1500;
  v463 = v1501;
  v459 = 31;
  sub_2142FCC0C(&v1498, v457);
  sub_2146DA388();
  v457[12] = v472;
  v457[13] = v473;
  *v458 = v474[0];
  *&v458[10] = *(v474 + 10);
  v457[8] = v468;
  v457[9] = v469;
  v457[10] = v470;
  v457[11] = v471;
  v457[4] = v464;
  v457[5] = v465;
  v457[6] = v466;
  v457[7] = v467;
  v457[0] = v460;
  v457[1] = v461;
  v457[2] = v462;
  v457[3] = v463;
  sub_2142FCBB8(v457);
  v454 = v1525;
  v455 = v1526;
  v456[0] = v1527[0];
  *(v456 + 10) = *(v1527 + 10);
  v450 = v1521;
  v451 = v1522;
  v452 = v1523;
  v453 = v1524;
  v446 = v1517;
  v447 = v1518;
  v448 = v1519;
  v449 = v1520;
  v442 = v1513;
  v443 = v1514;
  v444 = v1515;
  v445 = v1516;
  v441 = 32;
  sub_2142FCC0C(&v1513, v439);
  sub_2146DA388();
  v439[12] = v454;
  v439[13] = v455;
  *v440 = v456[0];
  *&v440[10] = *(v456 + 10);
  v439[8] = v450;
  v439[9] = v451;
  v439[10] = v452;
  v439[11] = v453;
  v439[4] = v446;
  v439[5] = v447;
  v439[6] = v448;
  v439[7] = v449;
  v439[0] = v442;
  v439[1] = v443;
  v439[2] = v444;
  v439[3] = v445;
  sub_2142FCBB8(v439);
  v436 = v1540;
  v437 = v1541;
  v438[0] = v1542[0];
  *(v438 + 10) = *(v1542 + 10);
  v432 = v1536;
  v433 = v1537;
  v434 = v1538;
  v435 = v1539;
  v428 = v1532;
  v429 = v1533;
  v430 = v1534;
  v431 = v1535;
  v424 = v1528;
  v425 = v1529;
  v426 = v1530;
  v427 = v1531;
  v423 = 33;
  sub_2142FCC0C(&v1528, v421);
  sub_2146DA388();
  v421[12] = v436;
  v421[13] = v437;
  *v422 = v438[0];
  *&v422[10] = *(v438 + 10);
  v421[8] = v432;
  v421[9] = v433;
  v421[10] = v434;
  v421[11] = v435;
  v421[4] = v428;
  v421[5] = v429;
  v421[6] = v430;
  v421[7] = v431;
  v421[0] = v424;
  v421[1] = v425;
  v421[2] = v426;
  v421[3] = v427;
  sub_2142FCBB8(v421);
  v418 = v1555;
  v419 = v1556;
  v420[0] = v1557[0];
  *(v420 + 10) = *(v1557 + 10);
  v414 = v1551;
  v415 = v1552;
  v416 = v1553;
  v417 = v1554;
  v410 = v1547;
  v411 = v1548;
  v412 = v1549;
  v413 = v1550;
  v406 = v1543;
  v407 = v1544;
  v408 = v1545;
  v409 = v1546;
  v405 = 34;
  sub_2142FCC0C(&v1543, v403);
  sub_2146DA388();
  v403[12] = v418;
  v403[13] = v419;
  *v404 = v420[0];
  *&v404[10] = *(v420 + 10);
  v403[8] = v414;
  v403[9] = v415;
  v403[10] = v416;
  v403[11] = v417;
  v403[4] = v410;
  v403[5] = v411;
  v403[6] = v412;
  v403[7] = v413;
  v403[0] = v406;
  v403[1] = v407;
  v403[2] = v408;
  v403[3] = v409;
  sub_2142FCBB8(v403);
  v400 = v1570;
  v401 = v1571;
  v402[0] = v1572[0];
  *(v402 + 10) = *(v1572 + 10);
  v396 = v1566;
  v397 = v1567;
  v398 = v1568;
  v399 = v1569;
  v392 = v1562;
  v393 = v1563;
  v394 = v1564;
  v395 = v1565;
  v388 = v1558;
  v389 = v1559;
  v390 = v1560;
  v391 = v1561;
  v387 = 35;
  sub_2142FCC0C(&v1558, v385);
  sub_2146DA388();
  v385[12] = v400;
  v385[13] = v401;
  *v386 = v402[0];
  *&v386[10] = *(v402 + 10);
  v385[8] = v396;
  v385[9] = v397;
  v385[10] = v398;
  v385[11] = v399;
  v385[4] = v392;
  v385[5] = v393;
  v385[6] = v394;
  v385[7] = v395;
  v385[0] = v388;
  v385[1] = v389;
  v385[2] = v390;
  v385[3] = v391;
  sub_2142FCBB8(v385);
  v382 = v1585;
  v383 = v1586;
  v384[0] = v1587[0];
  *(v384 + 10) = *(v1587 + 10);
  v378 = v1581;
  v379 = v1582;
  v380 = v1583;
  v381 = v1584;
  v374 = v1577;
  v375 = v1578;
  v376 = v1579;
  v377 = v1580;
  v370 = v1573;
  v371 = v1574;
  v372 = v1575;
  v373 = v1576;
  v369 = 36;
  sub_2142FCC0C(&v1573, v367);
  sub_2146DA388();
  v367[12] = v382;
  v367[13] = v383;
  *v368 = v384[0];
  *&v368[10] = *(v384 + 10);
  v367[8] = v378;
  v367[9] = v379;
  v367[10] = v380;
  v367[11] = v381;
  v367[4] = v374;
  v367[5] = v375;
  v367[6] = v376;
  v367[7] = v377;
  v367[0] = v370;
  v367[1] = v371;
  v367[2] = v372;
  v367[3] = v373;
  sub_2142FCBB8(v367);
  v364 = v1600;
  v365 = v1601;
  v366[0] = v1602[0];
  *(v366 + 10) = *(v1602 + 10);
  v360 = v1596;
  v361 = v1597;
  v362 = v1598;
  v363 = v1599;
  v356 = v1592;
  v357 = v1593;
  v358 = v1594;
  v359 = v1595;
  v352 = v1588;
  v353 = v1589;
  v354 = v1590;
  v355 = v1591;
  v351 = 37;
  sub_2142FCC0C(&v1588, v349);
  sub_2146DA388();
  v349[12] = v364;
  v349[13] = v365;
  *v350 = v366[0];
  *&v350[10] = *(v366 + 10);
  v349[8] = v360;
  v349[9] = v361;
  v349[10] = v362;
  v349[11] = v363;
  v349[4] = v356;
  v349[5] = v357;
  v349[6] = v358;
  v349[7] = v359;
  v349[0] = v352;
  v349[1] = v353;
  v349[2] = v354;
  v349[3] = v355;
  sub_2142FCBB8(v349);
  v346 = v1615;
  v347 = v1616;
  v348[0] = v1617[0];
  *(v348 + 10) = *(v1617 + 10);
  v342 = v1611;
  v343 = v1612;
  v344 = v1613;
  v345 = v1614;
  v338 = v1607;
  v339 = v1608;
  v340 = v1609;
  v341 = v1610;
  v334 = v1603;
  v335 = v1604;
  v336 = v1605;
  v337 = v1606;
  v333 = 38;
  sub_2142FCC0C(&v1603, v331);
  sub_2146DA388();
  v331[12] = v346;
  v331[13] = v347;
  *v332 = v348[0];
  *&v332[10] = *(v348 + 10);
  v331[8] = v342;
  v331[9] = v343;
  v331[10] = v344;
  v331[11] = v345;
  v331[4] = v338;
  v331[5] = v339;
  v331[6] = v340;
  v331[7] = v341;
  v331[0] = v334;
  v331[1] = v335;
  v331[2] = v336;
  v331[3] = v337;
  sub_2142FCBB8(v331);
  v328 = v1630;
  v329 = v1631;
  v330[0] = v1632[0];
  *(v330 + 10) = *(v1632 + 10);
  v324 = v1626;
  v325 = v1627;
  v326 = v1628;
  v327 = v1629;
  v320 = v1622;
  v321 = v1623;
  v322 = v1624;
  v323 = v1625;
  v316 = v1618;
  v317 = v1619;
  v318 = v1620;
  v319 = v1621;
  v315 = 39;
  sub_2142FCC0C(&v1618, v313);
  sub_2146DA388();
  v313[12] = v328;
  v313[13] = v329;
  *v314 = v330[0];
  *&v314[10] = *(v330 + 10);
  v313[8] = v324;
  v313[9] = v325;
  v313[10] = v326;
  v313[11] = v327;
  v313[4] = v320;
  v313[5] = v321;
  v313[6] = v322;
  v313[7] = v323;
  v313[0] = v316;
  v313[1] = v317;
  v313[2] = v318;
  v313[3] = v319;
  sub_2142FCBB8(v313);
  return (*(v311 + 8))(v1633, v312);
}