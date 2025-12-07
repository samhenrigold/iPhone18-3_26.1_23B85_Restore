uint64_t sub_214108D40(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906318, &qword_2146F42D8);
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = v1[3];
  v8 = v1[8];
  v17 = v1[7];
  v18 = v8;
  v9 = v1[12];
  v19 = v1[13];
  v10 = v1[18];
  v15 = v1[17];
  v16 = v9;
  v13 = v1[20];
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EAEF8();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_9;
  }

  LOBYTE(v21) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v20 + 8))(v6, v4);
  }

  if (v18 && (LOBYTE(v21) = 1, , sub_2146DA328(), v11 = v19, (, v11) && (LOBYTE(v21) = 2, , sub_2146DA328(), , v14 != 1)))
  {
    v21 = v15;
    v22 = v14;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    LOBYTE(v21) = 4;
    sub_2146DA368();
    return (*(v20 + 8))(v6, v4);
  }

  else
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 sub_214109090@<Q0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[2] = sub_214059908;
  v9[3] = 0;
  v9[4] = 0x100000;
  v9[5] = sub_21403C354;
  v9[6] = 0;
  *(v8 + 16) = sub_2142EAFA8;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_214042CD0(inited, &v18);
  v10 = v19;
  v11 = v20;

  sub_213FDCA18(v10, v11);
  v12 = v22;
  sub_214032024(a2, a3, 2, 0xD000000000000017, 0x800000021478DB00, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(a2, a3);

  v13 = v19;
  v14 = v20;
  if (v12)
  {

    sub_213FDC6BC(v10, v11);

    sub_213FDC6BC(v13, v14);
  }

  else
  {
    v16 = v21;

    sub_213FDC6BC(v10, v11);
    result = v18;
    *a4 = a1;
    *(a4 + 8) = result;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
    *(a4 + 40) = v16;
  }

  return result;
}

uint64_t sub_2141092A8()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2141092D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_2141093B0(uint64_t a1)
{
  v2 = sub_2142EAFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141093EC(uint64_t a1)
{
  v2 = sub_2142EAFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214109428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906320, &qword_2146F42E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EAFAC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v27) = 0;
  v32 = sub_2146DA218();
  v33 = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v26 = v27;
  v22 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  v11[2] = sub_214059908;
  v11[3] = 0;
  v11[4] = 0x100000;
  v11[5] = sub_21403C354;
  v11[6] = 0;
  *(v10 + 16) = sub_21438F670;
  *(v10 + 24) = v11;
  *(inited + 32) = v10;
  sub_214042CD0(inited, &v27);
  v13 = v29;
  v12 = v30;
  v21[1] = "BlastDoor/Untrusted.swift";
  v21[2] = ".anonymousCKUserID";
  v23 = v28;

  v24 = v12;
  v25 = v13;
  sub_213FDCA18(v13, v12);
  v14 = v26;
  v15 = v22;
  sub_214032024(v26, v22, 2, 0xD000000000000017, 0x800000021478DB00, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FB54FC(v14, v15);
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  v16 = v28;
  v18 = v29;
  v19 = v30;
  LOBYTE(v15) = v31;

  sub_213FDC6BC(v25, v24);
  *a2 = v32;
  *(a2 + 8) = v17;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v15;

  sub_213FDCA18(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FDC6BC(v18, v19);
}

uint64_t sub_2141097E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906330, &qword_2146F42F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 32);
  v10[0] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EAFAC();
  sub_2146DAA28();
  LOBYTE(v11) = 0;
  v8 = v10[1];
  sub_2146DA3D8();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v7 >> 60 != 15)
  {
    v11 = v10[0];
    v12 = v7;
    v13 = 1;
    sub_21402D9F8(v10[0], v7);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v11, v12);
    return (*(v4 + 8))(v6, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

double sub_214109A04@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  v11[2] = sub_214059908;
  v11[3] = 0;
  v11[4] = 0x100000;
  v11[5] = sub_21403C354;
  v11[6] = 0;
  *(v10 + 16) = sub_21438F670;
  *(v10 + 24) = v11;
  *(inited + 32) = v10;
  sub_214042CD0(inited, &v21);
  v12 = v22;
  v28 = a2;
  v25 = v21;
  v26 = v22;
  v27 = v23;

  sub_213FDCA18(v12, *(&v12 + 1));
  sub_214032024(a3, a4, 2, 0xD000000000000019, 0x800000021478DB20, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(a3, a4);

  if (v19)
  {
    v13 = v26;
    v14 = v27;

    sub_213FDC6BC(v12, *(&v12 + 1));
    *&v21 = __PAIR64__(v28, a1);
    BYTE8(v21) = BYTE4(a2) & 1;
    v22 = v25;
    v23 = v13;
    v24 = v14;
    sub_2142EB000(&v21);
  }

  else
  {
    v16 = v26;
    v17 = v27;

    sub_213FDC6BC(v12, *(&v12 + 1));
    v18 = v28;
    *a5 = a1;
    *(a5 + 4) = v18;
    *(a5 + 8) = BYTE4(a2) & 1;
    result = *&v25;
    *(a5 + 16) = v25;
    *(a5 + 32) = v16;
    *(a5 + 48) = v17;
  }

  return result;
}

uint64_t sub_214109C6C()
{
  v1 = 0x54676E6972616873;
  if (*v0 != 1)
  {
    v1 = 0x6174614479656BLL;
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

uint64_t sub_214109CC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214362AF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214109CF0(uint64_t a1)
{
  v2 = sub_2142EB054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214109D2C(uint64_t a1)
{
  v2 = sub_2142EB054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214109D68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906338, &qword_2146F42F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB054();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34) = 0;
  v29 = sub_2146DA218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v30) = 1;
  sub_2142E6128();
  sub_2146DA1C8();
  v9 = v34;
  v10 = BYTE4(v34);
  v44 = 2;
  sub_21406116C();
  sub_2146DA1C8();
  v25 = v9;
  v26 = v10;
  v28 = v42;
  v27 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  v13[2] = sub_214059908;
  v13[3] = 0;
  v13[4] = 0x100000;
  v13[5] = sub_21403C354;
  v13[6] = 0;
  *(v12 + 16) = sub_21438F670;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_214042CD0(inited, &v34);
  v14 = v35;
  v39 = v34;
  v40 = v35;
  v41 = v36;
  v22[1] = *(&v34 + 1);

  v23 = v14 >> 64;
  v24 = v14;
  sub_213FDCA18(v14, *(&v14 + 1));
  sub_214032024(v28, v27, 2, 0xD000000000000019, 0x800000021478DB20, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FB54FC(v28, v27);
  (*(v6 + 8))(v8, v5);
  v15 = v39;
  v28 = v39;
  v27 = *(&v40 + 1);
  v16 = v40;
  LOBYTE(v9) = v41;

  sub_213FDC6BC(v24, v23);
  v17 = v29;
  *&v30 = __PAIR64__(v25, v29);
  v18 = v25;
  BYTE8(v30) = v26;
  v31 = v15;
  *&v32 = v16;
  v19 = v27;
  *(&v32 + 1) = v27;
  v33 = v9;
  *(a2 + 48) = v9;
  v20 = v31;
  *a2 = v30;
  *(a2 + 16) = v20;
  *(a2 + 32) = v32;
  sub_2142EB0A8(&v30, &v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v34 = __PAIR64__(v18, v17);
  BYTE8(v34) = v26;
  *&v35 = v28;
  *(&v35 + 1) = *(&v15 + 1);
  v36 = v16;
  v37 = v19;
  v38 = v9;
  return sub_2142EB000(&v34);
}

uint64_t sub_21410A2B4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906348, &qword_2146F4300);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v18 = *(v1 + 4);
  v15 = *(v1 + 8);
  v8 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB054();
  sub_2146DAA28();
  LOBYTE(v16) = 0;
  sub_2146DA3D8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9 = v13;
  v10 = v14;
  LODWORD(v16) = v18;
  BYTE4(v16) = v15;
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  sub_2146DA388();
  if (v9 >> 60 != 15)
  {
    v16 = v10;
    v17 = v9;
    v19 = 2;
    sub_21402D9F8(v10, v9);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v16, v17);
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

double sub_21410A53C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[1];
  v33 = *a1;
  v34 = v9;
  v35 = a1[2];
  LOBYTE(v36) = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = sub_214059908;
  v12[3] = 0;
  v12[4] = 0x100000;
  v12[5] = sub_21403C354;
  v12[6] = 0;
  *(v11 + 16) = sub_21438F670;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214042CD0(inited, &v21);
  v13 = v22;
  v37 = a4;
  v30 = v21;
  v31 = v22;
  v32 = v23;

  sub_213FDCA18(v13, *(&v13 + 1));
  sub_214032024(a2, a3, 2, 0xD000000000000024, 0x800000021478DB40, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(a2, a3);

  if (v20)
  {
    v14 = v31;
    v15 = v32;

    sub_213FDC6BC(v13, *(&v13 + 1));
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v30;
    v26 = v14;
    v27 = v15;
    v28 = v37;
    v29 = BYTE4(a4) & 1;
    sub_2142EB104(&v21);
  }

  else
  {
    v17 = v31;
    v18 = v32;

    sub_213FDC6BC(v13, *(&v13 + 1));
    v19 = v34;
    *a5 = v33;
    *(a5 + 16) = v19;
    *(a5 + 32) = v35;
    *(a5 + 48) = v36;
    result = *&v30;
    *(a5 + 56) = v30;
    *(a5 + 72) = v17;
    *(a5 + 88) = v18;
    *(a5 + 92) = v37;
    *(a5 + 96) = BYTE4(a4) & 1;
  }

  return result;
}

uint64_t sub_21410A7E0()
{
  v1 = 0x4D64657070617277;
  if (*v0 != 1)
  {
    v1 = 0x7367616C66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_21410A83C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214362C10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21410A864(uint64_t a1)
{
  v2 = sub_2142EB158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410A8A0(uint64_t a1)
{
  v2 = sub_2142EB158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410A8DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906350, &qword_2146F4308);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142EB158();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v61 = 0;
  sub_2142EB1AC();
  sub_2146DA1C8();
  v57 = v62[0];
  v58 = v62[1];
  v59 = v62[2];
  v60 = v63;
  LOBYTE(v37[0]) = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v10 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  v54 = 2;
  sub_2142E6128();
  sub_2146DA1C8();
  v36 = *(&v10 + 1);
  v34 = v56;
  v35 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v12 = swift_allocObject();
  v29 = v6;
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = sub_214059908;
  v14[3] = 0;
  v14[4] = 0x100000;
  v14[5] = sub_21403C354;
  v14[6] = 0;
  *(v13 + 16) = sub_21438F670;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_2142EB0A8(&v57, &v42);
  sub_214042CD0(inited, &v42);
  v15 = v43;
  v64 = v57;
  v65 = v58;
  v66 = v59;
  LOBYTE(v67) = v60;
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v30 = *(&v42 + 1);

  v31 = *(&v15 + 1);
  v32 = v15;
  sub_213FDCA18(v15, *(&v15 + 1));
  v33 = v10;
  sub_214032024(v10, v36, 2, 0xD000000000000024, 0x800000021478DB40, 0xD00000000000001CLL, 0x800000021478A360);
  v16 = (v29 + 8);

  sub_213FB54FC(v33, v36);
  sub_2142EB000(&v57);
  (*v16)(v8, v5);
  v17 = v51;
  v18 = v52;
  v19 = v53;
  LODWORD(v36) = v53;

  sub_213FDC6BC(v32, v31);
  v21 = v65;
  v20 = v66;
  v37[1] = v65;
  v37[2] = v66;
  v37[0] = v64;
  *&v38 = v67;
  *(&v38 + 1) = v17;
  v39 = *(&v17 + 8);
  *&v40 = *(&v18 + 1);
  BYTE8(v40) = v19;
  v22 = v34;
  v23 = v35;
  HIDWORD(v40) = v35;
  v41 = v34;
  *a2 = v64;
  *(a2 + 16) = v21;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  *(a2 + 96) = v22;
  *(a2 + 64) = v25;
  *(a2 + 80) = v26;
  *(a2 + 32) = v20;
  *(a2 + 48) = v24;
  sub_2142EB200(v37, &v42);
  __swift_destroy_boxed_opaque_existential_1(v68);
  v42 = v64;
  v43 = v65;
  v44 = v66;
  v45 = v67;
  v46 = v17;
  v47 = v18;
  v48 = v36;
  v49 = v23;
  v50 = v22;
  return sub_2142EB104(&v42);
}

uint64_t sub_21410AE60(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906368, &qword_2146F4310);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = v1[1];
  v30 = *v1;
  v31 = v7;
  v32 = v1[2];
  v33 = *(v1 + 48);
  v8 = *(v1 + 10);
  v17 = *(v1 + 9);
  v16 = *(v1 + 23);
  v15 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB158();
  sub_2146DAA28();
  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v25 = 0;
  sub_2142EB0A8(&v30, &v21);
  sub_2142EB25C();
  v9 = v34;
  sub_2146DA388();
  if (v9)
  {
    v21 = v26;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    sub_2142EB000(&v21);
    return (*(v4 + 8))(v6, v3);
  }

  v10 = v17;
  v11 = v15;
  v12 = v16;
  v21 = v26;
  v22 = v27;
  v23 = v28;
  v24 = v29;
  sub_2142EB000(&v21);
  if (v8 >> 60 != 15)
  {
    v19 = v10;
    v20 = v8;
    v18 = 1;
    sub_21402D9F8(v10, v8);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v19, v20);
    LODWORD(v19) = v12;
    BYTE4(v19) = v11;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21410B1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
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

uint64_t sub_21410B26C(uint64_t a1)
{
  v2 = sub_2142EB2B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410B2A8(uint64_t a1)
{
  v2 = sub_2142EB2B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410B2E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906378, &qword_2146F4318);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB2B0();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906388, &qword_2146F4320);
    sub_2142EB304();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21410B464(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063A0, &qword_2146F4328);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB2B0();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906388, &qword_2146F4320);
  sub_2142EB3DC();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21410B608@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_21410B618()
{
  v1 = 0x73694C6572616873;
  if (*v0 != 1)
  {
    v1 = 0x7475626972747461;
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

uint64_t sub_21410B67C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214362D2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21410B6A4(uint64_t a1)
{
  v2 = sub_2142EB4B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410B6E0(uint64_t a1)
{
  v2 = sub_2142EB4B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410B71C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063B8, &qword_2146F4330);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB4B4();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    v9 = sub_2146DA218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063C8, &qword_2146F4338);
    v14 = 1;
    sub_2142EB508();
    sub_2146DA1C8();
    v11 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063E0, &qword_2146F4340);
    v14 = 2;
    sub_2142EB5E0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21410B950(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063F8, &qword_2146F4348);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB4B4();
  sub_2146DAA28();
  LOBYTE(v15) = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v9 = v12;
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063C8, &qword_2146F4338);
    sub_2142EB6B8();
    sub_2146DA388();
    v15 = v9;
    v14 = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063E0, &qword_2146F4340);
    sub_2142EB790();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

__n128 sub_21410BB80@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_214059908;
  v8[3] = 0;
  v8[4] = 0x100000;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F670;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v40);
  v9 = v40;
  v10 = v41;
  v11 = v42;
  v12 = v43;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[2] = sub_214059908;
  v15[3] = 0;
  v15[4] = 0x100000;
  v15[5] = sub_21403C354;
  v15[6] = 0;
  *(v14 + 16) = sub_21438F670;
  *(v14 + 24) = v15;
  *(v13 + 32) = v14;
  sub_214042CD0(v13, v52);
  v27 = v52[0];
  v34 = v52[1];
  v35 = v52[2];
  v36 = v52[3];
  v26 = v53;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v12;

  sub_213FDCA18(v10, v11);
  sub_214032024(a1, a2, 2, 0xD00000000000001BLL, 0x800000021478DB70, 0xD00000000000001CLL, 0x800000021478A360);
  if (v31)
  {
    sub_213FB54FC(a4, a5);
    sub_213FB54FC(a1, a2);

    v32 = v40;
    v16 = v41;
    v17 = v42;
    v28 = v43;

    sub_213FDC6BC(v10, v11);
    v40 = v32;
    v41 = v16;
    v42 = v17;
    v43 = v28;
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v47 = v27;
    v48 = v34;
    v49 = v35;
    v50 = v36;
    v51 = v26;
    sub_2142EB868(&v40);
  }

  else
  {

    v33 = v40;
    v23 = v41;
    v24 = v42;
    v29 = v43;

    sub_213FDC6BC(v10, v11);
    v40.n128_u64[0] = v27;
    v40.n128_u64[1] = v34;
    v41 = v35;
    v42 = v36;
    v43 = v26;

    sub_213FDCA18(v35, v36);
    sub_214032024(a4, a5, 2, 0xD00000000000001FLL, 0x800000021478DB90, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FB54FC(a4, a5);
    sub_213FB54FC(a1, a2);

    v18 = v40;
    v20 = v41;
    v19 = v42;
    v21 = v43;

    sub_213FDC6BC(v35, v36);
    result = v33;
    *a6 = v33;
    *(a6 + 16) = v23;
    *(a6 + 24) = v24;
    *(a6 + 32) = v29;
    *(a6 + 36) = v56;
    *(a6 + 40) = v18;
    *(a6 + 56) = v20;
    *(a6 + 64) = v19;
    *(a6 + 72) = v21;
  }

  return result;
}

uint64_t sub_21410BFAC()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x727574616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646979656BLL;
  }
}

uint64_t sub_21410C000@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214362E54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21410C028(uint64_t a1)
{
  v2 = sub_2142EB8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410C064(uint64_t a1)
{
  v2 = sub_2142EB8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410C0A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906420, &qword_2146F4350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142EB8BC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  v10 = v6;
  v53 = a2;
  LOBYTE(v54) = 0;
  sub_21406116C();
  sub_2146DA1C8();
  v11 = v5;
  v12 = v61;
  LOBYTE(v61) = 1;
  v13 = sub_2146DA218();
  v51 = *(&v12 + 1);
  v52 = v12;
  v50 = v13;
  v73 = 2;
  sub_2146DA1C8();
  v43 = v74;
  v44 = v75;
  *&v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *&v47[8] = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  *v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  v16[2] = sub_214059908;
  v16[3] = 0;
  v42 = sub_21403C354;
  v16[4] = 0x100000;
  v16[5] = sub_21403C354;
  v16[6] = 0;
  *(v15 + 16) = sub_21438F670;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042CD0(inited, &v61);
  v17 = *(&v61 + 1);
  v46 = v61;
  v18 = v63;
  v49 = v62;
  LODWORD(v45) = v64;
  v19 = swift_initStackObject();
  *(v19 + 16) = *&v47[8];
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  v21[2] = sub_214059908;
  v21[3] = 0;
  v21[4] = 0x100000;
  v21[5] = v42;
  v21[6] = 0;
  *(v20 + 16) = sub_21438F670;
  *(v20 + 24) = v21;
  *(v19 + 32) = v20;
  sub_214042CD0(v19, &v54);
  v48 = v54;
  *v47 = v55;
  v40 = v56[0];
  *&v61 = v46;
  *(&v61 + 1) = v17;
  v22 = v49;
  v62 = v49;
  v63 = v18;
  v64 = v45;
  v41 = v17;

  v42 = v18;
  sub_213FDCA18(v22, v18);
  v46 = "BlastDoor/Untrusted.swift";
  sub_214032024(v52, v51, 2, 0xD00000000000001BLL, 0x800000021478DB70, 0xD00000000000001CLL, 0x800000021478A360);
  v23 = v46;

  v45 = v61;
  v37 = v62;
  v39 = v63;
  v38 = v64;

  sub_213FDC6BC(v49, v42);
  v57 = v48;
  v24 = *v47;
  v25 = *&v47[8];
  v58 = *v47;
  v59 = *&v47[8];
  v60 = v40;
  v49 = *(&v48 + 1);

  sub_213FDCA18(v24, v25);
  v26 = v23 | 0x8000000000000000;
  v28 = v43;
  v27 = v44;
  sub_214032024(v43, v44, 2, 0xD00000000000001FLL, 0x800000021478DB90, 0xD00000000000001CLL, v26);

  sub_213FB54FC(v52, v51);
  sub_213FB54FC(v28, v27);
  (*(v10 + 8))(v8, v11);
  v30 = v57;
  v52 = v57;
  v31 = v58;
  v32 = v59;
  LOBYTE(v24) = v60;

  sub_213FDC6BC(*v47, *&v47[8]);
  v54 = v45;
  v33 = v37;
  *&v55 = v37;
  *(&v55 + 1) = v39;
  LOBYTE(v27) = v38;
  v56[0] = v38;
  *&v56[4] = v50;
  *&v56[8] = v30;
  *&v56[24] = v31;
  *&v56[32] = v32;
  v56[40] = v24;
  v34 = *&v56[16];
  v35 = v53;
  v53[2] = *v56;
  v35[3] = v34;
  *(v35 + 57) = *&v56[25];
  v36 = v55;
  *v35 = v54;
  v35[1] = v36;
  sub_2142EB910(&v54, &v61);
  __swift_destroy_boxed_opaque_existential_1(v78);
  v61 = v45;
  v62 = v33;
  v63 = v39;
  v64 = v27;
  v65 = v76;
  v66 = v77;
  v67 = v50;
  v68 = v52;
  v69 = *(&v30 + 1);
  v70 = v31;
  v71 = v32;
  v72 = v24;
  return sub_2142EB868(&v61);
}

uint64_t sub_21410C7E0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906430, &qword_2146F4358);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v17 = *(v1 + 36);
  v9 = *(v1 + 56);
  v12 = *(v1 + 64);
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB8BC();
  sub_2146DAA28();
  if (v7 >> 60 != 15)
  {
    v15 = v8;
    v16 = v7;
    v18 = 0;
    sub_21402D9F8(v8, v7);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v15, v16);
    if (v2)
    {
      return (*(v14 + 8))(v6, v4);
    }

    LOBYTE(v15) = 1;
    sub_2146DA3D8();
    if (v12 >> 60 != 15)
    {
      v15 = v13;
      v16 = v12;
      v18 = 2;
      sub_21402D9F8(v13, v12);
      sub_2146DA388();
      sub_213FB54FC(v15, v16);
      return (*(v14 + 8))(v6, v4);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

double sub_21410CA64@<D0>(int *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t *a11)
{
  v49 = *a1;
  v50 = *(a1 + 1);
  v51 = *(a1 + 2);
  v52 = *a4;
  v53 = a4[1];
  v54 = a4[2];
  v55 = *(a4 + 48);
  v56 = *a11;
  sub_21439F4F4(v89);
  v12 = v89[0];
  v13 = v89[1];
  v15 = v89[2];
  v14 = v89[3];
  v16 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  v19[2] = sub_214059908;
  v19[3] = 0;
  v19[4] = 0x100000;
  v19[5] = sub_21403C354;
  v19[6] = 0;
  *(v18 + 16) = sub_21438F670;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  sub_214042CD0(v17, v87);
  v60 = v87[0];
  v62 = v87[1];
  v40 = v87[2];
  v99 = v87[3];
  v61 = v88;
  sub_21439F65C(v85);
  v59 = v85[0];
  v47 = v85[2];
  v45 = v85[1];
  v46 = v85[3];
  v48 = v86;
  *&v63[64] = *(a10 + 57);
  v20 = a10[2];
  *&v63[55] = a10[3];
  *&v63[39] = v20;
  v21 = *a10;
  *&v63[23] = a10[1];
  *&v63[7] = v21;
  v97 = *&v63[48];
  v98[0] = *&v63[64];
  v95 = *&v63[16];
  v96 = *&v63[32];
  v94 = *v63;
  *v63 = v12;
  *&v63[8] = v13;
  *&v63[16] = v15;
  *&v63[24] = v14;
  v63[32] = v16;

  sub_21404F7E0(v15, v14);
  sub_214032118(a2, a3, 2, 0xD000000000000029, 0x800000021478DBB0, 0xD00000000000001CLL, 0x800000021478A360);
  if (v41)
  {
    sub_213FDC6BC(a7, a8);
    sub_213FB54FC(a5, a6);
    sub_213FDC6BC(a2, a3);

    sub_214032564(v15, v14);
    v22 = *v63;
    v23 = v63[32];
    v24 = *&v63[24];
    v25 = *&v63[16];
    *v63 = v49;
    *&v63[8] = v50;
    *&v63[16] = v51;
    *&v63[24] = v22;
    *&v63[40] = v25;
    *&v63[48] = v24;
    v63[56] = v23;
    *&v63[57] = v93[0];
    *&v63[60] = *(v93 + 3);
    *&v63[64] = v52;
    v64 = v53;
    v65 = v54;
    v66 = v55;
    *&v67[3] = *(v92 + 3);
    *v67 = v92[0];
    v68 = v60;
    v69 = v62;
    v70 = v40;
    v71 = v99;
    v72 = v61;
    *&v73[3] = *&v91[3];
    *v73 = *v91;
    v74 = v59;
    v75 = v45;
    v76 = v47;
    v77 = v46;
    v78 = v48;
    *v83 = v98[0];
    v80 = v95;
    v79 = v94;
    v82 = v97;
    v81 = v96;
    *&v83[15] = *(v98 + 15);
    v84 = v56;
    sub_2142EB96C(v63);
  }

  else
  {

    v42 = *v63;
    v36 = *&v63[24];
    v37 = *&v63[16];
    v35 = v63[32];

    sub_214032564(v15, v14);
    *v63 = v60;
    *&v63[8] = v62;
    v26 = v99;
    *&v63[16] = v40;
    *&v63[24] = v99;

    sub_213FDCA18(v40, v26);
    sub_214032024(a5, a6, 2, 0xD000000000000025, 0x800000021478DBE0, 0xD00000000000001CLL, 0x800000021478A360);

    v27 = *v63;
    v34 = *&v63[16];

    sub_213FDC6BC(v40, v99);
    v99 = "eProtection.signature";
    *v63 = v59;
    *&v63[8] = v45;
    *&v63[16] = v47;
    *&v63[24] = v46;

    sub_21404F7E0(v47, v46);
    sub_214032118(a7, a8, 2, 0xD000000000000027, 0x800000021478DC10, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FDC6BC(a7, a8);
    sub_213FB54FC(a5, a6);
    sub_213FDC6BC(a2, a3);

    v28 = *v63;
    v29 = *&v63[16];

    sub_214032564(v47, v46);
    *(a9 + 24) = v42;
    *(a9 + 272) = *(v98 + 15);
    v31 = v97;
    *(a9 + 257) = v98[0];
    v32 = v96;
    *(a9 + 241) = v31;
    *(a9 + 225) = v32;
    v33 = v94;
    result = *&v95;
    *(a9 + 209) = v95;
    *a9 = v49;
    *(a9 + 8) = v50;
    *(a9 + 16) = v51;
    *(a9 + 40) = v37;
    *(a9 + 48) = v36;
    *(a9 + 56) = v35;
    *(a9 + 64) = v52;
    *(a9 + 80) = v53;
    *(a9 + 96) = v54;
    *(a9 + 112) = v55;
    *(a9 + 120) = v27;
    *(a9 + 136) = v34;
    *(a9 + 152) = v61;
    *(a9 + 160) = v28;
    *(a9 + 176) = v29;
    *(a9 + 192) = v48;
    *(a9 + 193) = v33;
    *(a9 + 280) = v56;
  }

  return result;
}

unint64_t sub_21410D14C()
{
  v1 = *v0;
  v2 = 7561844;
  v3 = 0x6953726F68747561;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x727574616E676973;
  if (v1 != 3)
  {
    v4 = 0x654B72657473616DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574707972636E65;
  if (v1 != 1)
  {
    v5 = 0x6E676953666C6573;
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

uint64_t sub_21410D248@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214362F70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21410D270(uint64_t a1)
{
  v2 = sub_2142EB9C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410D2AC(uint64_t a1)
{
  v2 = sub_2142EB9C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410D2E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906438, &qword_2146F4360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = a1[3];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142EB9C0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v127);
  }

  v76 = a2;
  LOBYTE(v77[0]) = 0;
  sub_2142EBA14();
  sub_2146DA1C8();
  v10 = v5;
  v75 = v6;
  v74 = *v78;
  v11 = *&v78[8];
  v12 = *&v78[16];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v77[0]) = 1;
  v14 = sub_2142E1278();
  sub_2146DA1C8();
  v70 = v14;
  v71 = v13;
  v72 = v12;
  v73 = v11;
  v15 = *v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906450, &qword_2146F4368);
  LOBYTE(v77[0]) = 2;
  sub_2142EBA68();
  v16 = v10;
  sub_2146DA1C8();
  v66 = v15;
  v17 = *v78;
  v18 = *&v78[16];
  v19 = *(&v79 + 1);
  v67 = v79;
  v68 = v80;
  v69 = *&v78[8];
  LODWORD(v13) = v81;
  LOBYTE(v77[0]) = 3;
  sub_21406116C();
  sub_2146DA1C8();
  v64 = v13;
  v63 = v18;
  v65 = v19;
  v20 = *v78;
  LOBYTE(v77[0]) = 4;
  sub_2146DA1C8();
  v70 = *(&v20 + 1);
  v71 = v17;
  v21 = *&v78[8];
  v62 = *v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906460, &qword_2146F4370);
  v120 = 5;
  sub_2142EBAEC();
  sub_2146DA1C8();
  v60 = v21;
  v61 = v20;
  v118 = v121[2];
  v119[0] = *v122;
  *(v119 + 9) = *&v122[9];
  v117 = v121[1];
  v116 = v121[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063E0, &qword_2146F4340);
  v114 = 6;
  sub_2142EB5E0();
  sub_2146DA1C8();
  v46 = v16;
  v48 = v115;
  sub_2142F44D4(v71, v69, v63, v67, v65, v68, v64, sub_213FDCA18);
  sub_213FB2E54(&v116, v78, &qword_27C906460, &qword_2146F4370);
  sub_21439F4F4(v78);
  v22 = *&v78[8];
  *&v49 = *v78;
  v56 = *&v78[16];
  v23 = v79;
  DWORD2(v47) = BYTE8(v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  v26[2] = sub_214059908;
  v26[3] = 0;
  v26[4] = 0x100000;
  v26[5] = sub_21403C354;
  v26[6] = 0;
  *(v25 + 16) = sub_21438F670;
  *(v25 + 24) = v26;
  *(v24 + 32) = v25;
  sub_214042CD0(v24, v77);
  v55 = *&v77[0];
  v59 = *&v77[1];
  v57 = *(&v77[0] + 1);
  v58 = *(&v77[1] + 1);
  v52 = LOBYTE(v77[2]);
  sub_21439F65C(&v109);
  *(&v113[1] + 7) = v117;
  *(&v113[2] + 7) = v118;
  *(&v113[3] + 7) = v119[0];
  v113[4] = *(v119 + 9);
  v51 = v109;
  v53 = v110;
  v54 = v111;
  v50 = v112;
  *(v113 + 7) = v116;
  *v78 = v49;
  *&v78[8] = v22;
  v27 = v56;
  *&v78[16] = v56;
  *&v79 = v23;
  BYTE8(v79) = BYTE8(v47);
  *&v47 = v22;

  *(&v47 + 1) = v23;
  sub_21404F7E0(v27, v23);
  sub_214032118(v66, *(&v66 + 1), 2, 0xD000000000000029, 0x800000021478DBB0, 0xD00000000000001CLL, 0x800000021478A360);

  v49 = *v78;
  v44 = v79;
  v45 = *&v78[16];
  v43 = BYTE8(v79);

  sub_214032564(v56, *(&v47 + 1));
  *v78 = v55;
  v28 = v58;
  *&v78[8] = v57;
  v29 = v59;
  *&v78[16] = v59;
  *&v79 = v58;
  BYTE8(v79) = v52;

  sub_213FDCA18(v29, v28);
  sub_214032024(v61, v70, 2, 0xD000000000000025, 0x800000021478DBE0, 0xD00000000000001CLL, 0x800000021478A360);
  v30 = v64;

  v47 = *&v78[8];
  v55 = *v78;
  v56 = v79;
  v52 = BYTE8(v79);

  sub_213FDC6BC(v59, v58);
  v109 = v51;
  v31 = v53;
  v32 = v54;
  v110 = v53;
  v111 = v54;
  v112 = v50;
  v59 = *(&v51 + 1);

  sub_21404F7E0(v31, v32);
  sub_214032118(v62, v60, 2, 0xD000000000000027, 0x800000021478DC10, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FB54FC(v61, v70);
  sub_213FDC6BC(v66, *(&v66 + 1));
  sub_213FDC6BC(v62, v60);
  v34 = v67;
  sub_2142F460C(v71, v69, v63, v67, v65, v68, v30, sub_213FDC6BC);
  sub_213FB2DF4(&v116, &qword_27C906460, &qword_2146F4370);
  (*(v75 + 8))(v8, v46);
  v37 = v109;
  v35 = v37 >> 64;
  v36 = v37;
  v75 = v109;
  *(&v66 + 1) = v110;
  v38 = v111;
  v70 = v111;
  LODWORD(v66) = v112;

  sub_214032564(v53, v54);
  *(&v77[16] + 1) = v113[4];
  *(&v77[12] + 1) = v113[0];
  *(&v77[15] + 1) = v113[3];
  *(&v77[14] + 1) = v113[2];
  LODWORD(v77[0]) = v74;
  *(&v77[0] + 1) = v73;
  *&v77[1] = v72;
  *(&v77[1] + 8) = v49;
  *(&v77[2] + 1) = v45;
  *&v77[3] = v44;
  BYTE8(v77[3]) = v43;
  *(&v77[3] + 9) = v126[0];
  HIDWORD(v77[3]) = *(v126 + 3);
  *&v77[4] = v71;
  *(&v77[4] + 1) = v69;
  *&v77[5] = v63;
  *(&v77[5] + 1) = v34;
  *&v77[6] = v65;
  *(&v77[6] + 1) = v68;
  LOBYTE(v77[7]) = v30;
  *(&v77[7] + 1) = *v125;
  DWORD1(v77[7]) = *&v125[3];
  v39 = v55;
  *(&v77[7] + 1) = v55;
  v77[8] = v47;
  *&v77[9] = v56;
  LOBYTE(v34) = v52;
  BYTE8(v77[9]) = v52;
  *(&v77[9] + 9) = *v124;
  HIDWORD(v77[9]) = *&v124[3];
  v77[10] = __PAIR128__(v35, v36);
  v40 = *(&v66 + 1);
  *&v77[11] = *(&v66 + 1);
  *(&v77[11] + 1) = v38;
  LOBYTE(v38) = v66;
  LOBYTE(v77[12]) = v66;
  *(&v77[13] + 1) = v113[1];
  *(&v77[17] + 1) = *v123;
  DWORD1(v77[17]) = *&v123[3];
  v41 = v48;
  *(&v77[17] + 1) = v48;
  memcpy(v76, v77, 0x120uLL);
  sub_2142EBBC4(v77, v78);
  __swift_destroy_boxed_opaque_existential_1(v127);
  v106 = v113[4];
  v79 = v49;
  v102 = v113[0];
  v105 = v113[3];
  v104 = v113[2];
  *v78 = v74;
  *&v78[8] = v73;
  *&v78[16] = v72;
  v80 = v45;
  v81 = v44;
  v82 = v43;
  *v83 = v126[0];
  *&v83[3] = *(v126 + 3);
  v84 = v71;
  v85 = v69;
  v86 = v63;
  v87 = v67;
  v88 = v65;
  v89 = v68;
  v90 = v64;
  *v91 = *v125;
  *&v91[3] = *&v125[3];
  v92 = v39;
  v93 = v47;
  v94 = v56;
  v95 = v34;
  *v96 = *v124;
  *&v96[3] = *&v124[3];
  v97 = v75;
  v98 = v35;
  v99 = v40;
  v100 = v70;
  v101 = v38;
  v103 = v113[1];
  *v107 = *v123;
  *&v107[3] = *&v123[3];
  v108 = v41;
  return sub_2142EB96C(v78);
}

uint64_t sub_21410E374(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906478, &unk_2146F4378);
  v56 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = *v1;
  v8 = *(v1 + 1);
  v7 = *(v1 + 2);
  v9 = *(v1 + 6);
  v40 = *(v1 + 5);
  v41 = v9;
  v10 = *(v1 + 9);
  v39 = *(v1 + 8);
  v38 = v10;
  v11 = *(v1 + 11);
  v37 = *(v1 + 10);
  v36 = v11;
  v12 = *(v1 + 13);
  v35 = *(v1 + 12);
  v34 = v12;
  v33 = *(v1 + 112);
  v13 = *(v1 + 18);
  v31 = *(v1 + 17);
  v30 = v13;
  v14 = *(v1 + 23);
  v32 = *(v1 + 22);
  v29 = v14;
  v15 = *(v1 + 50);
  v16 = *(v1 + 54);
  v17 = *(v1 + 58);
  *&v55[9] = *(v1 + 257);
  v18 = *(v1 + 62);
  v54 = v17;
  *v55 = v18;
  v52 = v15;
  v53 = v16;
  v28 = *(v1 + 35);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB9C0();
  sub_2146DAA28();
  LODWORD(v48) = v6;
  *(&v48 + 1) = v8;
  *&v49 = v7;
  LOBYTE(v45[0]) = 0;
  sub_2142EBC20();

  v19 = v5;

  v20 = v42;
  sub_2146DA388();
  if (v20)
  {

    return (*(v56 + 8))(v5, v3);
  }

  else
  {
    v22 = v40;
    v23 = v38;
    v24 = v39;

    if (v41 >> 60 == 11 || (*&v48 = v22, *(&v48 + 1) = v41, LOBYTE(v45[0]) = 1, sub_213FDCA18(v22, v41), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0), sub_2142E1CAC(), sub_2146DA388(), sub_213FDC6BC(v48, *(&v48 + 1)), *&v48 = v24, *(&v48 + 1) = v23, *&v49 = v37, *(&v49 + 1) = v36, *&v50 = v35, *(&v50 + 1) = v34, v51[0] = v33, LOBYTE(v45[0]) = 2, sub_2142F44D4(v24, v23, v37, v36, v35, v34, v33, sub_213FDCA18), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906450, &qword_2146F4368), sub_2142EBC74(), sub_2146DA388(), v25 = v56, sub_2142F460C(v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51[0], sub_213FDC6BC), v30 >> 60 == 15) || (*&v48 = v31, *(&v48 + 1) = v30, LOBYTE(v45[0]) = 3, sub_21402D9F8(v31, v30), sub_214061684(), sub_2146DA388(), v26 = v32, sub_213FB54FC(v48, *(&v48 + 1)), v29 >> 60 == 11))
    {
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      *&v48 = v26;
      *(&v48 + 1) = v29;
      LOBYTE(v45[0]) = 4;
      sub_213FDCA18(v26, v29);
      sub_2146DA388();
      sub_213FDC6BC(v48, *(&v48 + 1));
      *v51 = *v55;
      *&v51[9] = *&v55[9];
      v49 = v53;
      v50 = v54;
      v48 = v52;
      v47 = 5;
      sub_213FB2E54(&v52, v45, &qword_27C906460, &qword_2146F4370);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906460, &qword_2146F4370);
      sub_2142EBCF8();
      sub_2146DA388();
      v45[2] = v50;
      *v46 = *v51;
      *&v46[9] = *&v51[9];
      v45[1] = v49;
      v45[0] = v48;
      sub_213FB2DF4(v45, &qword_27C906460, &qword_2146F4370);
      v44 = v28;
      v43 = 6;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063E0, &qword_2146F4340);
      sub_2142EB790();
      sub_2146DA388();

      return (*(v25 + 8))(v19, 0);
    }
  }

  return result;
}

uint64_t sub_21410EA88@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v78 = a4;
  v79 = a6;
  v73 = a5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v75);
  v74 = (&v66 - v11);
  sub_21439FB9C(&v82);
  v12 = v83;
  v13 = v84;
  v14 = v85;
  v15 = type metadata accessor for CloudKitSharingToken(0);
  v76 = *(v15 + 24);
  sub_21439FD04(&v76[a7]);
  sub_21439FE30(v80);
  v16 = v81;
  memcpy(a7, a1, 0x120uLL);
  *(a7 + 288) = v82;
  *(a7 + 304) = v12;
  *(a7 + 312) = v13;
  *(a7 + 320) = v14;
  v17 = a7 + *(v15 + 28);
  v18 = v80[1];
  *v17 = v80[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v16;
  v19 = *(a7 + 296);
  v21 = *(a7 + 304);
  v20 = *(a7 + 312);
  v22 = *(a7 + 320);
  *&v82 = *(a7 + 288);
  *(&v82 + 1) = v19;
  v83 = v21;
  v84 = v20;
  v85 = v22;

  sub_21404F7E0(v21, v20);
  v23 = v77;
  sub_214032118(a2, a3, 2, 0xD000000000000028, 0x800000021478DC40, 0xD00000000000001CLL, 0x800000021478A360);
  if (v23)
  {

    sub_213FDC6BC(a2, a3);
    v24 = sub_2146D8958();
    (*(*(v24 - 8) + 8))(v78, v24);
    v25 = v83;
    v26 = v84;
    v27 = v85;
    v28 = *(a7 + 304);
    v29 = *(a7 + 312);

    sub_214032564(v28, v29);
    *(a7 + 288) = v82;
    *(a7 + 304) = v25;
    *(a7 + 312) = v26;
    *(a7 + 320) = v27;
    return sub_21432887C(a7, type metadata accessor for CloudKitSharingToken);
  }

  v71 = a2;
  v77 = a3;

  v72 = 0x800000021478A360;
  v31 = v83;
  v32 = v84;
  v33 = v85;
  v34 = *(a7 + 304);
  v35 = *(a7 + 312);

  sub_214032564(v34, v35);
  *(a7 + 288) = v82;
  *(a7 + 304) = v31;
  *(a7 + 312) = v32;
  v36 = v72;
  *(a7 + 320) = v33;
  v37 = v74;
  sub_213FB2E54(&v76[a7], v74, &unk_27C9131D0, &qword_2146EAA70);
  v38 = *v37;
  LOBYTE(v80[0]) = *(v37 + *(v75 + 32));
  *&v82 = 0xD00000000000001DLL;
  *(&v82 + 1) = 0x800000021478DC70;
  v83 = 0xD00000000000001CLL;
  v84 = v36;
  v39 = v78;
  v40 = v38(v78, v80, &v82);
  v41 = v75;
  v42 = v79;
  if ((v40 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v54 = 0xD00000000000001DLL;
    v54[1] = 0x800000021478DC70;
    v54[2] = 0xD00000000000001CLL;
    v54[3] = v36;
    swift_willThrow();
    sub_213FDC6BC(v71, v77);
    v55 = sub_2146D8958();
    (*(*(v55 - 8) + 8))(v39, v55);
    sub_21402EDB8(v37, &v76[a7], &unk_27C9131D0, &qword_2146EAA70);
    return sub_21432887C(a7, type metadata accessor for CloudKitSharingToken);
  }

  v70 = 0;

  v43 = *(v41 + 28);
  sub_213FB2DF4(v37 + v43, &unk_27C9131A0, &unk_2146E9D10);
  v44 = sub_2146D8958();
  v45 = *(v44 - 8);
  (*(v45 + 16))(v37 + v43, v39, v44);
  v66 = v45;
  v46 = *(v45 + 56);
  v75 = v44;
  v46(v37 + v43, 0, 1, v44);
  sub_21402EDB8(v37, &v76[a7], &unk_27C9131D0, &qword_2146EAA70);
  v48 = *v17;
  v47 = *(v17 + 8);
  v50 = *(v17 + 16);
  v49 = *(v17 + 24);
  v51 = *(v17 + 32);
  *&v80[0] = v73;
  *(&v80[0] + 1) = v42;
  LODWORD(v74) = v51;
  v86 = v51;
  *&v82 = 0xD000000000000022;
  *(&v82 + 1) = 0x800000021478DC90;
  v83 = 0xD00000000000001CLL;
  v84 = v36;

  v69 = v50;
  v68 = v49;
  sub_213FDC9D0(v50, v49);
  v67 = v47;
  v52 = v70;
  v76 = v48;
  v53 = (v48)(v80, &v86, &v82);
  if (v52)
  {
    v70 = v52;
  }

  else
  {
    if (v53)
    {
      sub_213FDC6D0(v69, v68);

      sub_213FDC6BC(v71, v77);
      (*(v66 + 8))(v39, v75);
      v56 = *(v17 + 16);
      v57 = *(v17 + 24);

      result = sub_213FDC6D0(v56, v57);
      v58 = v67;
      *v17 = v76;
      *(v17 + 8) = v58;
      *(v17 + 16) = v73;
      *(v17 + 24) = v42;
      *(v17 + 32) = v74;
      return result;
    }

    sub_214031C4C();
    v59 = swift_allocError();
    *v60 = 0xD000000000000022;
    v60[1] = 0x800000021478DC90;
    v61 = v72;
    v60[2] = 0xD00000000000001CLL;
    v60[3] = v61;
    v70 = v59;
    swift_willThrow();
  }

  sub_213FDC6BC(v71, v77);
  (*(v66 + 8))(v39, v75);
  v62 = *(v17 + 16);
  v63 = *(v17 + 24);

  sub_213FDC6D0(v62, v63);
  v64 = v67;
  *v17 = v76;
  *(v17 + 8) = v64;
  v65 = v68;
  *(v17 + 16) = v69;
  *(v17 + 24) = v65;
  *(v17 + 32) = v74;
  return sub_21432887C(a7, type metadata accessor for CloudKitSharingToken);
}

unint64_t sub_21410F1D0()
{
  v1 = 0x6F72506572616873;
  v2 = 0x4C52556572616873;
  if (*v0 != 2)
  {
    v2 = 0x7069636974726170;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_21410F268@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143631DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21410F290(uint64_t a1)
{
  v2 = sub_2142EBDD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410F2CC(uint64_t a1)
{
  v2 = sub_2142EBDD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410F308@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v72);
  v73 = &v61 - v3;
  v4 = sub_2146D8958();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064A0, &qword_2146F4388);
  v76 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - v8;
  v10 = type metadata accessor for CloudKitSharingToken(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2142EBDD0();
  v14 = v77;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  v77 = v6;
  v70 = v12;
  v87[1] = 0;
  sub_2142EBE24();
  sub_2146DA1C8();
  memcpy(v85, v86, sizeof(v85));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v79[0]) = 1;
  sub_2142E1278();
  sub_2146DA1C8();
  v15 = *(&v81 + 1);
  v69 = v81;
  LOBYTE(v81) = 2;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_2146DA1C8();
  v68 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v79[0]) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v66 = *(&v81 + 1);
  v62 = v81;
  v67 = v7;
  sub_21439FB9C(&v81);
  v18 = v82;
  v17 = v83;
  LODWORD(v65) = v84;
  v19 = v70;
  v63 = *(v10 + 24);
  sub_21439FD04(&v70[v63]);
  sub_21439FE30(v79);
  v20 = v80;
  memcpy(v19, v85, 0x120uLL);
  *(v19 + 288) = v81;
  *(v19 + 304) = v18;
  *(v19 + 312) = v17;
  *(v19 + 320) = v65;
  v21 = v19 + *(v10 + 28);
  v22 = v79[1];
  *v21 = v79[0];
  *(v21 + 16) = v22;
  *(v21 + 32) = v20;
  v23 = *(v19 + 296);
  v25 = *(v19 + 304);
  v24 = *(v19 + 312);
  v26 = *(v19 + 320);
  *&v81 = *(v19 + 288);
  *(&v81 + 1) = v23;
  v82 = v25;
  v83 = v24;
  v84 = v26;

  sub_21404F7E0(v25, v24);
  v64 = "eProtection.masterKeyID";
  v65 = 0x800000021478A360;
  sub_214032118(v69, v68, 2, 0xD000000000000028, 0x800000021478DC40, 0xD00000000000001CLL, 0x800000021478A360);
  v61 = v21;
  v27 = v65;

  v28 = v82;
  v29 = v83;
  LODWORD(v64) = v84;
  v30 = *(v19 + 304);
  v31 = *(v19 + 312);

  sub_214032564(v30, v31);
  *(v19 + 288) = v81;
  *(v19 + 304) = v28;
  *(v19 + 312) = v29;
  *(v19 + 320) = v64;
  v32 = v73;
  sub_213FB2E54(v19 + v63, v73, &unk_27C9131D0, &qword_2146EAA70);
  v33 = *v32;
  v34 = v72;
  LOBYTE(v79[0]) = v32[*(v72 + 32)];
  *&v81 = 0xD00000000000001DLL;
  *(&v81 + 1) = 0x800000021478DC70;
  v82 = 0xD00000000000001CLL;
  v83 = v27;
  v35 = v33(v77, v79, &v81);
  v36 = v27;
  v37 = v67;
  v38 = v75;
  if (v35)
  {

    v39 = *(v34 + 28);
    v40 = v73;
    sub_213FB2DF4(&v73[v39], &unk_27C9131A0, &unk_2146E9D10);
    v41 = v74;
    (*(v74 + 16))(v40 + v39, v77, v38);
    (*(v41 + 56))(v40 + v39, 0, 1, v38);
    sub_21402EDB8(v40, &v70[v63], &unk_27C9131D0, &qword_2146EAA70);
    v43 = *v61;
    v42 = *(v61 + 8);
    v45 = *(v61 + 16);
    v44 = *(v61 + 24);
    v46 = *(v61 + 32);
    v47 = v66;
    *&v79[0] = v62;
    *(&v79[0] + 1) = v66;
    LODWORD(v72) = v46;
    v87[0] = v46;
    *&v81 = 0xD000000000000022;
    *(&v81 + 1) = 0x800000021478DC90;
    v82 = 0xD00000000000001CLL;
    v83 = v36;

    v64 = v44;
    sub_213FDC9D0(v45, v44);
    v73 = v43;
    v48 = (v43)(v79, v87, &v81);
    v51 = v69;
    if (v48)
    {
      sub_213FDC6D0(v45, v64);
      sub_213FDC6BC(v51, v68);

      (*(v74 + 8))(v77, v75);
      (*(v76 + 8))(v9, v67);
      v52 = v61;
      v53 = v47;
      v54 = *(v61 + 16);
      v55 = *(v61 + 24);

      sub_213FDC6D0(v54, v55);
      *v52 = v73;
      *(v52 + 8) = v42;
      *(v52 + 16) = v62;
      *(v52 + 24) = v53;
      *(v52 + 32) = v72;
      sub_214328704(v70, v71, type metadata accessor for CloudKitSharingToken);
      return __swift_destroy_boxed_opaque_existential_1(v78);
    }

    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD000000000000022;
    v56[1] = 0x800000021478DC90;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = v36;
    swift_willThrow();

    sub_213FDC6BC(v51, v68);

    (*(v74 + 8))(v77, v75);
    (*(v76 + 8))(v9, v67);
    v57 = v61;
    v58 = *(v61 + 16);
    v59 = *(v61 + 24);

    sub_213FDC6D0(v58, v59);
    *v57 = v73;
    *(v57 + 8) = v42;
    v60 = v64;
    *(v57 + 16) = v45;
    *(v57 + 24) = v60;
    *(v57 + 32) = v72;
    v50 = v70;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000001DLL;
    v49[1] = 0x800000021478DC70;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = v36;
    swift_willThrow();
    sub_213FDC6BC(v69, v68);
    (*(v74 + 8))(v77, v38);
    (*(v76 + 8))(v9, v37);
    v50 = v70;
    sub_21402EDB8(v73, &v70[v63], &unk_27C9131D0, &qword_2146EAA70);
  }

  __swift_destroy_boxed_opaque_existential_1(v78);
  return sub_21432887C(v50, type metadata accessor for CloudKitSharingToken);
}

uint64_t sub_21410FDD8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v29 - v5;
  v6 = sub_2146D8958();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064B8, &qword_2146F4390);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBDD0();
  sub_2146DAA28();
  memcpy(v40, v2, 0x120uLL);
  memcpy(v39, v2, sizeof(v39));
  v42 = 0;
  sub_2142EBBC4(v40, v38);
  sub_2142EBE78();
  v13 = v35;
  sub_2146DA388();
  if (v13)
  {
    memcpy(v38, v39, sizeof(v38));
    sub_2142EB96C(v38);
    return (*(v10 + 8))(v12, v9);
  }

  v35 = v8;
  v15 = v10;
  v16 = v34;
  memcpy(v38, v39, sizeof(v38));
  sub_2142EB96C(v38);
  v17 = v2[39];
  if (v17 >> 60 != 11)
  {
    v18 = v2;
    v36 = v2[38];
    v37 = v17;
    v41 = 1;
    sub_213FDCA18(v36, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    v19 = v9;
    v20 = v12;
    sub_2146DA388();
    v21 = v16;
    sub_213FDC6BC(v36, v37);
    v30 = type metadata accessor for CloudKitSharingToken(0);
    v31 = v18;
    v22 = v18 + *(v30 + 24);
    v23 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) + 28)];
    v24 = v32;
    sub_213FB2E54(v23, v32, &unk_27C9131A0, &unk_2146E9D10);
    v25 = v33;
    if ((*(v33 + 48))(v24, 1, v21) == 1)
    {
      sub_213FB2DF4(v24, &unk_27C9131A0, &unk_2146E9D10);
    }

    else
    {
      v26 = v35;
      (*(v25 + 32))(v35, v24, v21);
      LOBYTE(v36) = 2;
      sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
      sub_2146DA388();
      (*(v25 + 8))(v26, v21);
      v27 = v31 + *(v30 + 28);
      v28 = *(v27 + 24);
      if (v28 != 1)
      {
        v36 = *(v27 + 16);
        v37 = v28;
        v41 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        sub_214045AC0();
        sub_2146DA388();
        return (*(v15 + 8))(v20, v19);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214110324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v11 = type metadata accessor for CollaborationClearNotice(0);
  v12 = *(v11 + 24);
  v13 = sub_2146D8B08();
  result = (*(*(v13 - 8) + 32))(&a7[v12], a4, v13);
  v15 = &a7[*(v11 + 28)];
  *v15 = a5;
  *(v15 + 1) = a6;
  return result;
}

uint64_t sub_2141103D0()
{
  v1 = 0x6E6F6973726576;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x726F62616C6C6F63;
  }

  if (*v0)
  {
    v1 = 0x6972745364697567;
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

uint64_t sub_214110454@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214363358(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21411047C(uint64_t a1)
{
  v2 = sub_2142EBECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141104B8(uint64_t a1)
{
  v2 = sub_2142EBECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141104F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v4 = sub_2146D8B08();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064C8, &qword_2146F4398);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBECC();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v32 = 0;
    v11 = v28;
    v25 = sub_2146DA1A8();
    v31 = 1;
    v23 = sub_2146DA168();
    v24 = v13;
    v30 = 2;
    sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_2146DA1C8();
    v29 = 3;
    v14 = sub_2146DA168();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = type metadata accessor for CollaborationClearNotice(0);
    v18 = v6;
    v19 = v26;
    (*(v27 + 32))(v26 + *(v17 + 24), v18, v4);
    v21 = v23;
    v20 = v24;
    *v19 = v25;
    v19[1] = v21;
    v19[2] = v20;
    v22 = (v19 + *(v17 + 28));
    *v22 = v14;
    v22[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214110844(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064D8, &qword_2146F43A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBECC();
  sub_2146DAA28();
  v8[15] = 0;
  sub_2146DA368();
  if (!v1)
  {
    v8[14] = 1;
    sub_2146DA328();
    type metadata accessor for CollaborationClearNotice(0);
    v8[13] = 2;
    sub_2146D8B08();
    sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2146DA388();
    v8[12] = 3;
    sub_2146DA328();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214110ABC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_214110ACC()
{
  v1 = 0x654B63696C627570;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x68736148746F6F72;
  }
}

uint64_t sub_214110B30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143634CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214110B58(uint64_t a1)
{
  v2 = sub_2142EBF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214110B94(uint64_t a1)
{
  v2 = sub_2142EBF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214110BD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064E0, &qword_2146F43A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBF20();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = 0;
    sub_21406116C();
    sub_2146DA1C8();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    v15 = 1;
    sub_2142E554C();
    sub_2146DA1C8();
    v13 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v15 = 2;
    sub_2142E1278();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    *(a2 + 16) = v13;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214110E5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064F0, &qword_2146F43B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v15 = v1[3];
  v16 = v9;
  v14 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21402D9F8(v7, v8);
  sub_2142EBF20();
  sub_2146DAA28();
  v18 = v7;
  v19 = v8;
  v20 = 0;
  sub_214061684();
  v10 = v17;
  sub_2146DA388();
  sub_213FB54FC(v18, v19);
  if (!v10)
  {
    v12 = v14;
    v11 = v15;
    v18 = v16;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    sub_2142E562C();
    sub_2146DA388();
    v18 = v11;
    v19 = v12;
    v20 = 2;
    sub_213FDCA18(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v18, v19);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141110C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2141110D4()
{
  if (*v0)
  {
    return 0x6D6E6F7269766E65;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_21411111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65)
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

uint64_t sub_214111204(uint64_t a1)
{
  v2 = sub_2142EBF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214111240(uint64_t a1)
{
  v2 = sub_2142EBF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411127C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064F8, &qword_2146F43B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBF74();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v12 = v9;
    v16 = 1;
    v13 = sub_2146DA1A8();
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214111448(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906508, &qword_2146F43C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBF74();
  sub_2146DAA28();
  v11 = 0;
  v7 = v9[1];
  sub_2146DA328();
  if (!v7)
  {
    v10 = 1;
    sub_2146DA368();
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_21411160C@<Q0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11, unsigned __int8 a13)
{
  result = a10;
  a9->n128_u8[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5] = a11;
  a9[6].n128_u8[0] = a13;
  return result;
}

unint64_t sub_21411163C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000029;
    if (v1 != 6)
    {
      v5 = 0xD000000000000024;
    }

    v6 = 0xD000000000000039;
    if (v1 == 4)
    {
      v6 = 0xD000000000000038;
    }

    if (*v0 <= 5u)
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
    v2 = 0x57656E6F5A657375;
    v3 = 0xD000000000000015;
    if (v1 != 2)
    {
      v3 = 0xD000000000000035;
    }

    if (*v0)
    {
      v2 = 0xD000000000000015;
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
}

uint64_t sub_214111754@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143635F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21411177C(uint64_t a1)
{
  v2 = sub_2142EBFC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141117B8(uint64_t a1)
{
  v2 = sub_2142EBFC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141117F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906510, &qword_2146F43C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBFC8();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v34) = 0;
    v36 = sub_2146DA178();
    LOBYTE(v34) = 1;
    v33 = sub_2146DA1B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v37 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    v10 = v35;
    v32 = v34;
    v37 = 3;
    sub_2146DA1C8();
    v31 = v10;
    v11 = v34;
    v30 = v35;
    v37 = 4;
    sub_2146DA1C8();
    v28 = v34;
    v29 = v11;
    v12 = v35;
    v37 = 5;
    sub_2146DA1C8();
    v27 = v12;
    v13 = v34;
    v26 = v35;
    v37 = 6;
    sub_2146DA1C8();
    v14 = v26;
    v23 = v34;
    v24 = v13;
    v25 = v35;
    LOBYTE(v34) = 7;
    v15 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    *a2 = v36 & 1;
    v16 = v32;
    *(a2 + 8) = v33;
    *(a2 + 16) = v16;
    v18 = v29;
    v17 = v30;
    *(a2 + 24) = v31;
    *(a2 + 32) = v18;
    *(a2 + 40) = v17;
    v19 = v27;
    *(a2 + 48) = v28;
    *(a2 + 56) = v19;
    v20 = v23;
    *(a2 + 64) = v24;
    *(a2 + 72) = v14;
    v21 = v25;
    *(a2 + 80) = v20;
    *(a2 + 88) = v21;
    *(a2 + 96) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214111C30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906520, &qword_2146F43D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = *(v1 + 8);
  v29 = *(v1 + 16);
  v30 = v7;
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  v27 = *(v1 + 40);
  v28 = v8;
  v24 = v10;
  v11 = *(v1 + 64);
  v25 = *(v1 + 56);
  v26 = v9;
  v12 = *(v1 + 72);
  v13 = *(v1 + 80);
  v22 = v11;
  v23 = v12;
  v14 = *(v1 + 88);
  v20 = v13;
  v21 = v14;
  v15 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBFC8();
  sub_2146DAA28();
  LOBYTE(v32) = 0;
  v16 = v31;
  sub_2146DA338();
  if (v16)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v18 = v28;
  v19 = v29;
  LODWORD(v31) = v15;
  LOBYTE(v32) = 1;
  sub_2146DA378();
  v32 = v19;
  v33 = v18;
  v34 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v32 = v26;
  v33 = v27;
  v34 = 3;
  sub_2146DA388();
  v32 = v24;
  v33 = v25;
  v34 = 4;
  sub_2146DA388();
  v32 = v22;
  v33 = v23;
  v34 = 5;
  sub_2146DA388();
  v32 = v20;
  v33 = v21;
  v34 = 6;
  sub_2146DA388();
  LOBYTE(v32) = 7;
  sub_2146DA338();
  return (*(v4 + 8))(0, v3);
}

__n128 sub_214111F78@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11) = *(a1 + 96);
  result = a1[4];
  v10 = a1[5];
  v4 = *a1;
  v8 = a1[1];
  v5 = a1[2];
  v9 = a1[3];
  v6 = *a2;
  v7 = *(a2 + 2);
  *(a3 + 64) = result;
  *(a3 + 80) = v10;
  *a3 = v4;
  *(a3 + 16) = v8;
  *(a3 + 32) = v5;
  *(a3 + 48) = v9;
  *(a3 + 96) = v11;
  *(a3 + 104) = v6;
  *(a3 + 120) = v7;
  return result;
}

unint64_t sub_214111FC8()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_214112004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000018 && 0x80000002147946A0 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002147946C0 == a2)
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

uint64_t sub_2141120E4(uint64_t a1)
{
  v2 = sub_2142EC01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214112120(uint64_t a1)
{
  v2 = sub_2142EC01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411215C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906528, &qword_2146F43D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC01C();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v5;
    v9 = v33;
    v30 = 0;
    sub_214092BC8();
    sub_2146DA1C8();
    v27 = v31[4];
    v28 = v31[5];
    v29 = v32;
    v23 = v31[0];
    v24 = v31[1];
    v25 = v31[2];
    v26 = v31[3];
    v20 = 1;
    sub_214092AF4();
    sub_2146DA1C8();
    (*(v8 + 8))(v7, v4);
    v10 = v21;
    v11 = v22;
    LOBYTE(v19) = v29;
    v13 = v23;
    v12 = v24;
    v18[0] = v23;
    v18[1] = v24;
    v14 = v28;
    v18[4] = v27;
    v18[5] = v28;
    v16 = v25;
    v15 = v26;
    v18[2] = v25;
    v18[3] = v26;
    *(v9 + 64) = v27;
    *(v9 + 80) = v14;
    *(v9 + 32) = v16;
    *(v9 + 48) = v15;
    *v9 = v13;
    *(v9 + 16) = v12;
    *(v9 + 96) = v19;
    *(v9 + 104) = v10;
    *(v9 + 120) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141123BC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906538, &unk_2146F43E0);
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = v1[5];
  v34 = v1[4];
  v35 = v7;
  v36 = *(v1 + 96);
  v8 = v1[1];
  v30 = *v1;
  v31 = v8;
  v9 = v1[3];
  v32 = v1[2];
  v33 = v9;
  v10 = *(v1 + 14);
  v14 = *(v1 + 13);
  v15 = v10;
  v13 = *(v1 + 15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214092198(&v30, &v23);
  sub_2142EC01C();
  sub_2146DAA28();
  v27 = v34;
  v28 = v35;
  v29 = v36;
  v23 = v30;
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v22 = 0;
  sub_214092C1C();
  sub_2146DA388();
  v20[4] = v27;
  v20[5] = v28;
  v21 = v29;
  v20[0] = v23;
  v20[1] = v24;
  v20[2] = v25;
  v20[3] = v26;
  sub_214092240(v20);
  if (!v2)
  {
    v17 = v14;
    v18 = v15;
    v19 = v13;
    v16 = 1;
    sub_214092B48();

    sub_2146DA388();
  }

  return (*(v37 + 8))(v6, v4);
}

__n128 sub_214112654@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v16 = type metadata accessor for CollaborationMetadata(0);
  sub_21408AC04(a5, a9 + v16[6], &qword_27C913090, &unk_2146E9DB0);
  v17 = (a9 + v16[7]);
  *v17 = a6;
  v17[1] = a7;
  *(a9 + v16[8]) = a8;
  *(a9 + v16[9]) = a10;
  v18 = a9 + v16[10];
  v19 = *(a11 + 80);
  *(v18 + 4) = *(a11 + 64);
  *(v18 + 5) = v19;
  v20 = *(a11 + 112);
  *(v18 + 6) = *(a11 + 96);
  *(v18 + 7) = v20;
  v21 = *(a11 + 16);
  *v18 = *a11;
  *(v18 + 1) = v21;
  result = *(a11 + 32);
  v23 = *(a11 + 48);
  *(v18 + 2) = result;
  *(v18 + 3) = v23;
  return result;
}

uint64_t sub_214112728()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x656C746974;
    if (v1 != 1)
    {
      v5 = 0x6E6F697461657263;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000014;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_214112818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436388C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214112840(uint64_t a1)
{
  v2 = sub_2142EC070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411287C(uint64_t a1)
{
  v2 = sub_2142EC070();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141128B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906540, &qword_2146F43F0);
  v8 = *(v7 - 8);
  v44 = v7;
  v45 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2142EC070();
  v12 = v10;
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v6;
    LOBYTE(v55) = 0;
    v14 = v44;
    v15 = v12;
    v16 = sub_2146DA168();
    v18 = v17;
    v42 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v47) = 1;
    v19 = sub_2142E12FC();
    sub_2146DA1C8();
    v40 = v55;
    v41 = v19;
    v20 = *(&v55 + 1);
    LOBYTE(v55) = 2;
    sub_2142EC0C4();
    sub_2146DA1C8();
    v38 = v20;
    v39 = v18;
    LOBYTE(v47) = 3;
    sub_2146DA1C8();
    v21 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906550, &qword_2146F43F8);
    LOBYTE(v47) = 4;
    sub_2142EC178();
    sub_2146DA1C8();
    v41 = v21;
    v22 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    LOBYTE(v47) = 5;
    sub_2142E1548();
    sub_2146DA1C8();
    v24 = v22;
    v25 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905020, ")\r");
    v63 = 6;
    sub_2142EC288();
    sub_2146DA1C8();
    (*(v45 + 8))(v15, v14);
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v26 = type metadata accessor for CollaborationMetadata(0);
    v27 = v43;
    sub_21408AC04(v13, v43 + v26[6], &qword_27C913090, &unk_2146E9DB0);
    v28 = v41;
    v30 = v39;
    v29 = v40;
    *v27 = v42;
    v27[1] = v30;
    v27[2] = v29;
    v27[3] = v38;
    v31 = (v27 + v26[7]);
    *v31 = v28;
    v31[1] = *(&v21 + 1);
    *(v27 + v26[8]) = v24;
    *(v27 + v26[9]) = v25;
    v32 = (v27 + v26[10]);
    v33 = v52;
    v32[4] = v51;
    v32[5] = v33;
    v34 = v54;
    v32[6] = v53;
    v32[7] = v34;
    v35 = v48;
    *v32 = v47;
    v32[1] = v35;
    v36 = v50;
    v32[2] = v49;
    v32[3] = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_214112E64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906570, &qword_2146F4410);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC070();
  sub_2146DAA28();
  LOBYTE(v33[0]) = 0;
  sub_2146DA328();
  if (!v2)
  {
    v33[0] = *(v3 + 16);
    LOBYTE(v25) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v9 = type metadata accessor for CollaborationMetadata(0);
    v10 = *(v9 + 24);
    v22[0] = v9;
    v22[1] = v10;
    LOBYTE(v33[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    sub_2142EC30C();
    sub_2146DA388();
    v33[0] = *(v3 + *(v22[0] + 28));
    LOBYTE(v25) = 3;
    sub_2146DA388();
    *&v33[0] = *(v3 + *(v22[0] + 32));
    LOBYTE(v25) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906550, &qword_2146F43F8);
    sub_2142EC3C0();
    sub_2146DA388();
    v41 = *(v3 + *(v22[0] + 36));
    v40[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    v11 = (v3 + *(v22[0] + 40));
    v12 = v11[5];
    v13 = v11[3];
    v36 = v11[4];
    v37 = v12;
    v14 = v11[5];
    v15 = v11[7];
    v38 = v11[6];
    v39 = v15;
    v16 = v11[1];
    v33[0] = *v11;
    v33[1] = v16;
    v17 = v11[3];
    v19 = *v11;
    v18 = v11[1];
    v34 = v11[2];
    v35 = v17;
    v29 = v36;
    v30 = v14;
    v20 = v11[7];
    v31 = v38;
    v32 = v20;
    v25 = v19;
    v26 = v18;
    v27 = v34;
    v28 = v13;
    v24 = 6;
    sub_213FB2E54(v33, v23, &qword_27C905020, ")\r");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905020, ")\r");
    sub_2142EC4D0();
    sub_2146DA388();
    v23[4] = v29;
    v23[5] = v30;
    v23[6] = v31;
    v23[7] = v32;
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    v23[3] = v28;
    sub_213FB2DF4(v23, &qword_27C905020, ")\r");
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2141132C8(uint64_t a1)
{
  v2 = sub_2142EC554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214113304(uint64_t a1)
{
  v2 = sub_2142EC554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChangeEvent.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = a2;
  v4 = sub_2146D8958();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906590, &qword_2146F4418);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC554();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v4;
    v12 = v18;
    v22 = 0;
    sub_2142EC5A8();
    v13 = v19;
    sub_2146DA1C8();
    v20 = v23;
    v21 = 1;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v14 = type metadata accessor for ChangeEvent(0);
    (*(v17 + 32))(&v12[*(v14 + 20)], v6, v11);
    *v12 = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ChangeEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065A8, &qword_2146F4420);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC554();
  sub_2146DAA28();
  v10[15] = *v3;
  v10[14] = 0;
  sub_2142EC5FC();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for ChangeEvent(0);
    v10[13] = 1;
    sub_2146D8958();
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MentionEvent.init(with:mentionedPersonIdentity:highlightURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a3 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  v8 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v8;
  *(a5 + 48) = v7;
  v9 = *(type metadata accessor for MentionEvent(0) + 24);
  v10 = sub_2146D8958();
  return (*(*(v10 - 8) + 32))(a5 + v9, a4, v10);
}

unint64_t sub_214113888()
{
  v1 = 0x6867696C68676968;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2141138F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214363AD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214113918(uint64_t a1)
{
  v2 = sub_2142EC650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214113954(uint64_t a1)
{
  v2 = sub_2142EC650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MentionEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v4 = sub_2146D8958();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065B8, &qword_2146F4428);
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC650();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v6;
    v12 = v29;
    v13 = v30;
    LOBYTE(v31) = 0;
    v26 = sub_2146DA168();
    v27 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065C8, &qword_2146F4430);
    v36 = 1;
    sub_2142EC6A4();
    sub_2146DA1C8();
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    LOBYTE(v31) = 2;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v20 = v11;
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v16 = type metadata accessor for MentionEvent(0);
    (*(v28 + 32))(v12 + *(v16 + 24), v20, v4);
    v17 = v27;
    *v12 = v26;
    v12[1] = v17;
    v18 = v22;
    v12[2] = v21;
    v12[3] = v18;
    v19 = v24;
    v12[4] = v23;
    v12[5] = v19;
    v12[6] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MentionEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065D8, &qword_2146F4438);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC650();
  sub_2146DAA28();
  LOBYTE(v15) = 0;
  sub_2146DA328();
  if (!v2)
  {
    v9 = v3[3];
    v10 = v3[4];
    v11 = v3[5];
    v12 = v3[6];
    v15 = v3[2];
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v14[7] = 1;
    sub_2142EC784(v15, v9, v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065C8, &qword_2146F4430);
    sub_2142EC7E0();
    sub_2146DA388();
    sub_2142EC728(v15, v16, v17, v18, v19);
    type metadata accessor for MentionEvent(0);
    LOBYTE(v15) = 2;
    sub_2146D8958();
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214113F88(uint64_t a1)
{
  v2 = sub_2142EC864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214113FC4(uint64_t a1)
{
  v2 = sub_2142EC864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214114000@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = a2;
  v4 = sub_2146D8958();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065E8, &qword_2146F4440);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC864();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v4;
    v12 = v18;
    v22 = 0;
    sub_2142EC8B8();
    v13 = v19;
    sub_2146DA1C8();
    v20 = v23;
    v21 = 1;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v14 = type metadata accessor for MembershipEvent(0);
    (*(v17 + 32))(&v12[*(v14 + 20)], v6, v11);
    *v12 = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141142B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906600, &qword_2146F4448);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC864();
  sub_2146DAA28();
  v10[15] = *v3;
  v10[14] = 0;
  sub_2142EC90C();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for MembershipEvent(0);
    v10[13] = 1;
    sub_2146D8958();
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2141144E4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v6 = *(a3(0) + 20);
  v7 = sub_2146D8958();
  return (*(*(v7 - 8) + 32))(&a4[v6], a2, v7);
}

uint64_t sub_21411456C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xEC0000004C525574)
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

uint64_t sub_21411464C(uint64_t a1)
{
  v2 = sub_2142EC960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214114688(uint64_t a1)
{
  v2 = sub_2142EC960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141146C4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = a2;
  v4 = sub_2146D8958();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906610, &qword_2146F4450);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC960();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v4;
    v12 = v18;
    v22 = 0;
    sub_2142EC9B4();
    v13 = v19;
    sub_2146DA1C8();
    v20 = v23;
    v21 = 1;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v14 = type metadata accessor for PersistenceEvent(0);
    (*(v17 + 32))(&v12[*(v14 + 20)], v6, v11);
    *v12 = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21411497C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906628, &qword_2146F4458);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC960();
  sub_2146DAA28();
  v10[15] = *v3;
  v10[14] = 0;
  sub_2142ECA08();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for PersistenceEvent(0);
    v10[13] = 1;
    sub_2146D8958();
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214114B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  v9 = type metadata accessor for CollaborationNotice(0);
  sub_214328704(a4, &a6[*(v9 + 24)], type metadata accessor for CollaborationHighlightEvent);
  v10 = *(v9 + 28);
  v11 = sub_2146D8B08();
  return (*(*(v11 - 8) + 32))(&a6[v10], a5, v11);
}

uint64_t sub_214114C34()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x6867696C68676968;
  if (*v0 != 2)
  {
    v2 = 0x6144656369746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6972745364697567;
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

uint64_t sub_214114CC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214363C04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214114CE8(uint64_t a1)
{
  v2 = sub_2142ECA5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214114D24(uint64_t a1)
{
  v2 = sub_2142ECA5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214114D60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v26 = sub_2146D8B08();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CollaborationHighlightEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906638, &qword_2146F4460);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECA5C();
  v10 = v28;
  sub_2146DAA08();
  if (v10)
  {
    v20 = a1;
  }

  else
  {
    v28 = a1;
    v11 = v25;
    v12 = v26;
    v32 = 0;
    v13 = sub_2146DA1A8();
    v31 = 1;
    v21 = sub_2146DA168();
    v22 = v15;
    v30 = 2;
    sub_214328930(&qword_27C906648, type metadata accessor for CollaborationHighlightEvent, aYw);
    sub_2146DA1C8();
    v29 = 3;
    sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_2146DA1C8();
    (*(v11 + 8))(v9, v27);
    v16 = type metadata accessor for CollaborationNotice(0);
    v17 = v23;
    sub_214328704(v7, v23 + *(v16 + 24), type metadata accessor for CollaborationHighlightEvent);
    (*(v24 + 32))(v17 + *(v16 + 28), v4, v12);
    v19 = v21;
    v18 = v22;
    *v17 = v13;
    v17[1] = v19;
    v17[2] = v18;
    v20 = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_214115160(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906650, &qword_2146F4468);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECA5C();
  sub_2146DAA28();
  v8[15] = 0;
  sub_2146DA368();
  if (!v1)
  {
    v8[14] = 1;
    sub_2146DA328();
    type metadata accessor for CollaborationNotice(0);
    v8[13] = 2;
    type metadata accessor for CollaborationHighlightEvent(0);
    sub_214328930(&qword_27C906658, type metadata accessor for CollaborationHighlightEvent, byte_214702AD8);
    sub_2146DA388();
    v8[12] = 3;
    sub_2146D8B08();
    sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

_BYTE *sub_214115424@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_214115434()
{
  if (*v0)
  {
    return 0x6972745364697567;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_214115470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6972745364697567 && a2 == 0xEB0000000073676ELL)
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

uint64_t sub_214115550(uint64_t a1)
{
  v2 = sub_2142ECAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411558C(uint64_t a1)
{
  v2 = sub_2142ECAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141155C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906660, &qword_2146F4470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECAB0();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = 0;
    sub_2142ECB04();
    sub_2146DA1C8();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    v13 = 1;
    sub_2142E15CC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141157B4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906678, &qword_2146F4478);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECAB0();
  sub_2146DAA28();
  v13 = v8;
  v12 = 0;
  sub_2142ECB58();
  sub_2146DA388();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_214115998(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_2141159A4()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_214115A04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214363D7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214115A2C(uint64_t a1)
{
  v2 = sub_2142ECBAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214115A68(uint64_t a1)
{
  v2 = sub_2142ECBAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214115AA4@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906688, &qword_2146F4480);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECBAC();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = 0;
    sub_2146DA188();
    v10 = v9;
    v21 = 1;
    sub_2146DA188();
    v12 = v11;
    v20 = 2;
    sub_2146DA188();
    v15 = v14;
    v19 = 3;
    sub_2146DA188();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214115C98(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906698, &qword_2146F4488);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECBAC();
  sub_2146DAA28();
  v8[15] = 0;
  sub_2146DA348();
  if (!v1)
  {
    v8[14] = 1;
    sub_2146DA348();
    v8[13] = 2;
    sub_2146DA348();
    v8[12] = 3;
    sub_2146DA348();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214115E9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  v5 = type metadata accessor for CombinedPluginAttachment(0);
  return sub_214328704(a2, a3 + *(v5 + 20), type metadata accessor for BalloonPlugin.Payload);
}

uint64_t sub_214115F04()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x656D686361747461;
  }
}

uint64_t sub_214115F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
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

uint64_t sub_214116028(uint64_t a1)
{
  v2 = sub_2142ECC00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214116064(uint64_t a1)
{
  v2 = sub_2142ECC00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141160A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066A0, &qword_2146F4490);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECC00();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v19 = 0;
    sub_2142E514C();
    v11 = v17;
    sub_2146DA1C8();
    v15 = v20;
    v18 = 1;
    sub_214328930(&qword_27C904778, type metadata accessor for BalloonPlugin.Payload, protocol conformance descriptor for BalloonPlugin.Payload);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v11);
    v12 = type metadata accessor for CombinedPluginAttachment(0);
    v13 = v16;
    sub_214328704(v6, v16 + *(v12 + 20), type metadata accessor for BalloonPlugin.Payload);
    *v13 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214116334(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066B0, &qword_2146F4498);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECC00();
  sub_2146DAA28();
  v11 = *v3;
  v10[7] = 0;
  sub_2142E5450();

  sub_2146DA388();

  if (!v2)
  {
    type metadata accessor for CombinedPluginAttachment(0);
    v10[6] = 1;
    type metadata accessor for BalloonPlugin.Payload(0);
    sub_214328930(&qword_27C904780, type metadata accessor for BalloonPlugin.Payload, protocol conformance descriptor for BalloonPlugin.Payload);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214116548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void, void)@<X7>, char *a9@<X8>)
{
  v52 = a8;
  v50 = a6;
  v51 = a7;
  v54 = a5;
  v49 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v13);
  v15 = (&v46 - v14);
  sub_21469CFCC(a9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2140676DC;
  *(v17 + 24) = 0;
  *(inited + 32) = v17;
  sub_214042B80(inited, &v56);
  v18 = v57;
  v19 = v58;
  v20 = v59;
  v21 = type metadata accessor for CombinedPluginAttachmentInfo(0);
  v22 = &a9[v21[5]];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &a9[v21[6]];
  *v23 = v56;
  *(v23 + 2) = v18;
  *(v23 + 3) = v19;
  v23[32] = v20;
  v24 = v51;
  *&a9[v21[7]] = v50;
  v25 = &a9[v21[8]];
  v26 = v52;
  *v25 = v24;
  *(v25 + 1) = v26;
  sub_213FB2E54(a9, v15, &unk_27C9131D0, &qword_2146EAA70);
  v27 = *v15;
  LOBYTE(v55[0]) = *(v15 + *(v13 + 32));
  *&v56 = 0xD00000000000002ALL;
  *(&v56 + 1) = 0x800000021478DCC0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;
  v28 = v53;
  v29 = v27(a1, v55, &v56);
  if (v28)
  {

    v30 = sub_2146D8958();
    (*(*(v30 - 8) + 8))(a1, v30);

LABEL_6:
    sub_21402EDB8(v15, a9, &unk_27C9131D0, &qword_2146EAA70);
    return sub_21432887C(a9, type metadata accessor for CombinedPluginAttachmentInfo);
  }

  if ((v29 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD00000000000002ALL;
    v40[1] = 0x800000021478DCC0;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();
    v41 = sub_2146D8958();
    (*(*(v41 - 8) + 8))(a1, v41);
    goto LABEL_6;
  }

  v31 = *(v13 + 28);
  sub_213FB2DF4(v15 + v31, &unk_27C9131A0, &unk_2146E9D10);
  v32 = sub_2146D8958();
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v53 = a1;
  v34(v15 + v31, a1, v32);
  v35 = *(v33 + 56);
  v51 = v32;
  v35(v15 + v31, 0, 1, v32);
  sub_21402EDB8(v15, a9, &unk_27C9131D0, &qword_2146EAA70);
  v37 = *v23;
  v36 = *(v23 + 1);
  v38 = *(v23 + 3);
  v47 = *(v23 + 2);
  v48 = v38;
  v39 = v23[32];
  v55[0] = v49;
  v55[1] = v54;
  LODWORD(v50) = v39;
  v60 = v39;
  *&v56 = 0xD000000000000024;
  *(&v56 + 1) = 0x800000021478DCF0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  v52 = v37;
  if ((v37(v55, &v60, &v56) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000024;
    v44[1] = 0x800000021478DCF0;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v33 + 8))(v53, v51);

    *v23 = v52;
    *(v23 + 1) = v36;
    v45 = v48;
    *(v23 + 2) = v47;
    *(v23 + 3) = v45;
    v23[32] = v50;
    return sub_21432887C(a9, type metadata accessor for CombinedPluginAttachmentInfo);
  }

  (*(v33 + 8))(v53, v51);

  *v23 = v52;
  *(v23 + 1) = v36;
  v43 = v54;
  *(v23 + 2) = v49;
  *(v23 + 3) = v43;
  v23[32] = v50;
  return result;
}

uint64_t sub_214116AA4(uint64_t a1)
{
  v2 = sub_2142ECC54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214116AE0(uint64_t a1)
{
  v2 = sub_2142ECC54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214116B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v65);
  v66 = &v55 - v3;
  v4 = sub_2146D8958();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066B8, &qword_2146F44A0);
  v68 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  v10 = type metadata accessor for CombinedPluginAttachmentInfo(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2142ECC54();
  v14 = v69;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v69 = v10;
  v63 = v12;
  v15 = v68;
  LOBYTE(v72) = 0;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_2146DA1C8();
  v16 = v9;
  LOBYTE(v71[0]) = 1;
  v17 = sub_21406116C();
  sub_2146DA1C8();
  v61 = v17;
  v62 = v6;
  v18 = v72;
  LOBYTE(v72) = 2;
  v19 = sub_2146DA168();
  v59 = v18;
  v58 = v19;
  v60 = v21;
  LOBYTE(v72) = 3;
  v22 = sub_2146DA1B8();
  LOBYTE(v71[0]) = 4;
  sub_2146DA1C8();
  v23 = v59;
  v61 = v4;
  v56 = *(&v72 + 1);
  v57 = v72;
  v24 = v63;
  sub_21469CFCC(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2140676DC;
  *(v26 + 24) = 0;
  *(inited + 32) = v26;
  sub_214042B80(inited, &v72);
  v27 = v74;
  v28 = v69;
  v29 = &v24[*(v69 + 20)];
  v30 = *(&v59 + 1);
  *v29 = v23;
  *(v29 + 1) = v30;
  v31 = &v24[v28[6]];
  v32 = v73;
  *v31 = v72;
  *(v31 + 1) = v32;
  v31[32] = v27;
  *&v24[v28[7]] = v22;
  v33 = &v24[v28[8]];
  v34 = v56;
  *v33 = v57;
  *(v33 + 1) = v34;
  v35 = v24;
  v36 = v66;
  sub_213FB2E54(v35, v66, &unk_27C9131D0, &qword_2146EAA70);
  v37 = *v36;
  LOBYTE(v71[0]) = v36[*(v65 + 32)];
  *&v72 = 0xD00000000000002ALL;
  *(&v72 + 1) = 0x800000021478DCC0;
  *&v73 = 0xD00000000000001CLL;
  *(&v73 + 1) = 0x800000021478A360;
  v38 = v37(v62, v71, &v72);
  v69 = v31;
  if (v38)
  {

    v39 = v66;
    v40 = *(v65 + 28);
    sub_213FB2DF4(&v66[v40], &unk_27C9131A0, &unk_2146E9D10);
    v41 = v67;
    v42 = v61;
    (*(v67 + 16))(v39 + v40, v62, v61);
    (*(v41 + 56))(v39 + v40, 0, 1, v42);
    v43 = v63;
    sub_21402EDB8(v39, v63, &unk_27C9131D0, &qword_2146EAA70);
    v45 = *v69;
    v44 = *(v69 + 8);
    v46 = *(v69 + 24);
    *&v59 = *(v69 + 16);
    v47 = *(v69 + 32);
    v71[0] = v58;
    v71[1] = v60;
    LODWORD(v65) = v47;
    v75 = v47;
    *&v72 = 0xD000000000000024;
    *(&v72 + 1) = 0x800000021478DCF0;
    *&v73 = 0xD00000000000001CLL;
    *(&v73 + 1) = 0x800000021478A360;
    *(&v59 + 1) = v46;

    v66 = v45;
    v48 = (v45)(v71, &v75, &v72);
    if (v48)
    {

      (*(v67 + 8))(v62, v61);
      (*(v68 + 8))(v16, v7);
      v50 = v69;

      *v50 = v66;
      *(v50 + 8) = v44;
      v51 = v60;
      *(v50 + 16) = v58;
      *(v50 + 24) = v51;
      *(v50 + 32) = v65;
      sub_214328704(v43, v64, type metadata accessor for CombinedPluginAttachmentInfo);
      return __swift_destroy_boxed_opaque_existential_1(v70);
    }

    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000024;
    v52[1] = 0x800000021478DCF0;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v67 + 8))(v62, v61);
    (*(v68 + 8))(v16, v7);
    v53 = v69;

    *v53 = v66;
    *(v53 + 8) = v44;
    v54 = *(&v59 + 1);
    *(v53 + 16) = v59;
    *(v53 + 24) = v54;
    *(v53 + 32) = v65;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000002ALL;
    v49[1] = 0x800000021478DCC0;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v67 + 8))(v62, v61);
    (*(v15 + 8))(v16, v7);
    v43 = v63;
    sub_21402EDB8(v66, v63, &unk_27C9131D0, &qword_2146EAA70);
  }

  __swift_destroy_boxed_opaque_existential_1(v70);
  return sub_21432887C(v43, type metadata accessor for CombinedPluginAttachmentInfo);
}

uint64_t sub_214117504(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_2146D8958();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066C8, &qword_2146F44A8);
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECC54();
  sub_2146DAA28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v13 = v22;
  sub_213FB2E54(v22 + *(v12 + 28), v4, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_213FB2DF4(v4, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    LOBYTE(v25) = 0;
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    v14 = v23;
    sub_2146DA388();
    if (v14)
    {
      (*(v6 + 8))(v8, v5);
      return (*(v24 + 8))(v11, v9);
    }

    (*(v6 + 8))(v8, v5);
    v16 = type metadata accessor for CombinedPluginAttachmentInfo(0);
    v17 = (v13 + v16[5]);
    v18 = v17[1];
    v25 = *v17;
    v26 = v18;
    v27 = 1;
    sub_21402D9F8(v25, v18);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v25, v26);
    if (*(v13 + v16[6] + 24))
    {
      LOBYTE(v25) = 2;

      sub_2146DA328();

      LOBYTE(v25) = 3;
      sub_2146DA378();
      v19 = (v13 + v16[8]);
      v20 = v19[1];
      v25 = *v19;
      v26 = v20;
      v27 = 4;
      sub_21402D9F8(v25, v20);
      sub_2146DA388();
      sub_213FB54FC(v25, v26);
      return (*(v24 + 8))(v11, v9);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214117A0C(uint64_t a1)
{
  v2 = sub_2142ECCA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214117A48(uint64_t a1)
{
  v2 = sub_2142ECCA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214117A84@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066D0, &qword_2146F44B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECCA8();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21407D890();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214117BF0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066E0, &qword_2146F44B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECCA8();
  sub_2146DAA28();
  v10 = v7;
  sub_21407D8E4();
  sub_2146DA388();
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_214117D6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_214117DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746361746E6F63 && a2 == 0xEB000000006F666ELL)
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

uint64_t sub_214117E3C(uint64_t a1)
{
  v2 = sub_2142ECCFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214117E78(uint64_t a1)
{
  v2 = sub_2142ECCFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214117EB4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9066E8, &qword_2146F44C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECCFC();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142ECD50();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v13[5];
    a2[4] = v13[4];
    a2[5] = v9;
    a2[6] = v13[6];
    v10 = v13[1];
    *a2 = v13[0];
    a2[1] = v10;
    v11 = v13[3];
    a2[2] = v13[2];
    a2[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21411803C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906700, &qword_2146F44C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[5];
  v23 = v1[4];
  v24 = v7;
  v25 = v1[6];
  v8 = v1[1];
  v19 = *v1;
  v20 = v8;
  v9 = v1[3];
  v21 = v1[2];
  v22 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECDA4(&v19, &v12);
  sub_2142ECCFC();
  sub_2146DAA28();
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  sub_2142ECE00();
  sub_2146DA388();
  v11[4] = v16;
  v11[5] = v17;
  v11[6] = v18;
  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  sub_2142ECE54(v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214118230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_214328704(a1, a3, type metadata accessor for Metadata);
  v5 = *(type metadata accessor for CrossServiceAssociationMessage(0) + 20);
  v6 = sub_2146D8B88();
  return (*(*(v6 - 8) + 32))(a3 + v5, a2, v6);
}

uint64_t sub_2141182C8()
{
  if (*v0)
  {
    return 0x6D6563616C706572;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_214118310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEF44495547746E65)
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

uint64_t sub_2141183F4(uint64_t a1)
{
  v2 = sub_2142ECEA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214118430(uint64_t a1)
{
  v2 = sub_2142ECEA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411846C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = sub_2146D8B88();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906710, &qword_2146F44D0);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECEA8();
  sub_2146DAA08();
  if (v2)
  {
    v16 = a1;
  }

  else
  {
    v17 = a1;
    v11 = v20;
    v12 = v21;
    v24 = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
    sub_2146DA1C8();
    v23 = 1;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_2146DA1C8();
    (*(v11 + 8))(v10, v22);
    v14 = v18;
    sub_214328704(v8, v18, type metadata accessor for Metadata);
    v15 = type metadata accessor for CrossServiceAssociationMessage(0);
    (*(v19 + 32))(v14 + *(v15 + 20), v5, v12);
    v16 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_2141187D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906720, &qword_2146F44D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECEA8();
  sub_2146DAA28();
  v8[15] = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (!v1)
  {
    type metadata accessor for CrossServiceAssociationMessage(0);
    v8[14] = 1;
    sub_2146D8B88();
    sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214118A00@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15)
{
  v18 = *a1;
  v32 = *a15;
  v33 = *(a15 + 2);
  v19 = type metadata accessor for CustomAcknowledgement(0);
  sub_2143287C0(a13, a9 + v19[11], type metadata accessor for BalloonPlugin.Payload);
  sub_2146D6DB4(&v40);
  *(a9 + 56) = v40;
  v20 = *a10;
  *(a9 + 104) = a10[1];
  v21 = a10[3];
  *(a9 + 120) = a10[2];
  *(a9 + 136) = v21;
  *(a9 + 152) = a10[4];
  v22 = v41;
  v23 = v42;
  *a9 = v18;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 72) = v22;
  *(a9 + 80) = v23;
  *(a9 + 88) = v20;
  *(a9 + 168) = a11;
  *(a9 + 176) = a12;
  *(a9 + v19[12]) = a14;
  v24 = a9 + v19[13];
  *v24 = v32;
  *(v24 + 16) = v33;
  v26 = *(a9 + 56);
  v25 = *(a9 + 64);
  v27 = *(a9 + 72);
  v28 = *(a9 + 80);
  v44 = a8;
  v43[0] = v28;
  *&v40 = 0xD000000000000037;
  *(&v40 + 1) = 0x800000021478DD20;
  v41 = 0xD00000000000001CLL;
  v42 = 0x800000021478A360;

  v29 = v26(&v44, v43, &v40);
  if (v39)
  {
  }

  else
  {
    if (v29)
    {

      sub_21432887C(a13, type metadata accessor for BalloonPlugin.Payload);

      *(a9 + 56) = v26;
      *(a9 + 64) = v25;
      *(a9 + 72) = a8;
      *(a9 + 80) = v28;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000037;
    v31[1] = 0x800000021478DD20;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(a13, type metadata accessor for BalloonPlugin.Payload);

  *(a9 + 56) = v26;
  *(a9 + 64) = v25;
  *(a9 + 72) = v27;
  *(a9 + 80) = v28;
  return sub_21432887C(a9, type metadata accessor for CustomAcknowledgement);
}

uint64_t sub_214118CBC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0x7865546E69616C70;
    v4 = 0x64616F6C796170;
    v5 = 0x7475626972747461;
    if (a1 != 8)
    {
      v5 = 0x746E65746E6F63;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 6u)
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
    if (a1 == 3)
    {
      v1 = 0xD000000000000016;
    }

    else
    {
      v1 = 0xD000000000000021;
    }

    if (a1 == 2)
    {
      v1 = 0xD00000000000001DLL;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_214118E2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214363ED8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214118E54(uint64_t a1)
{
  v2 = sub_2142ECEFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214118E90(uint64_t a1)
{
  v2 = sub_2142ECEFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214118ECC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906728, &unk_2146F44E0);
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = type metadata accessor for CustomAcknowledgement(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142ECEFC();
  v13 = v59;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v56 = v9;
  v59 = v11;
  v14 = v58;
  LOBYTE(v65) = 0;
  sub_2142ECF50();
  sub_2146DA1C8();
  v15 = v8;
  v16 = v70;
  LOBYTE(v70) = 1;
  v54 = sub_2146DA168();
  v55 = v17;
  v75 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v65) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v18 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v65) = 3;
  sub_2142E50D0();
  sub_2146DA1C8();
  v53 = v18;
  v20 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v65) = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v51 = *(&v20 + 1);
  v52 = v20;
  v21 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  v76[1] = 5;
  sub_2142ECFA4();
  sub_2146DA1C8();
  v67 = v72;
  v68 = v73;
  v69 = v74;
  v65 = v70;
  v66 = v71;
  LOBYTE(v61) = 6;
  v22 = sub_2146DA168();
  v24 = v23;
  v49 = v22;
  v50 = v21;
  LOBYTE(v61) = 7;
  sub_214328930(&qword_27C904778, type metadata accessor for BalloonPlugin.Payload, protocol conformance descriptor for BalloonPlugin.Payload);
  sub_2146DA1C8();
  v25 = v24;
  v26 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905928, &qword_2146F3EC0);
  LOBYTE(v64) = 8;
  sub_2142E4E9C();
  sub_2146DA1C8();
  v46 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  LOBYTE(v64) = 9;
  sub_2142E4F74();
  v48 = v6;
  v47 = v15;
  sub_2146DA1C8();
  v45 = v61;
  v27 = v62;
  v28 = v56;
  v29 = v59;
  sub_2143287C0(v5, &v59[*(v56 + 44)], type metadata accessor for BalloonPlugin.Payload);
  sub_2146D6DB4(&v61);
  *(v29 + 56) = v61;
  v30 = v65;
  *(v29 + 104) = v66;
  v31 = v68;
  *(v29 + 120) = v67;
  *(v29 + 136) = v31;
  *(v29 + 152) = v69;
  v32 = v62;
  v33 = v63;
  *v29 = v75;
  v34 = v55;
  *(v29 + 1) = v54;
  *(v29 + 2) = v34;
  v35 = *(&v53 + 1);
  *(v29 + 3) = v26;
  *(v29 + 4) = v35;
  v36 = v51;
  *(v29 + 5) = v52;
  *(v29 + 6) = v36;
  *(v29 + 9) = v32;
  v29[80] = v33;
  *(v29 + 88) = v30;
  *(v29 + 21) = v49;
  *(v29 + 22) = v25;
  *&v29[*(v28 + 48)] = v46;
  v37 = &v29[*(v28 + 52)];
  *v37 = v45;
  *(v37 + 2) = v27;
  v39 = *(v29 + 7);
  v38 = *(v29 + 8);
  v40 = *(v29 + 9);
  v41 = v29[80];
  v64 = v50;
  v76[0] = v41;
  *&v61 = 0xD000000000000037;
  *(&v61 + 1) = 0x800000021478DD20;
  v62 = 0xD00000000000001CLL;
  v63 = 0x800000021478A360;
  v56 = v40;

  if (v39(&v64, v76, &v61))
  {

    sub_21432887C(v5, type metadata accessor for BalloonPlugin.Payload);
    (*(v14 + 8))(v47, v48);
    v42 = v59;

    *(v42 + 56) = v39;
    *(v42 + 64) = v38;
    *(v42 + 72) = v50;
    *(v42 + 80) = v41;
    sub_214328704(v42, v57, type metadata accessor for CustomAcknowledgement);
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  sub_214031C4C();
  swift_allocError();
  *v43 = 0xD000000000000037;
  v43[1] = 0x800000021478DD20;
  v43[2] = 0xD00000000000001CLL;
  v43[3] = 0x800000021478A360;
  swift_willThrow();

  sub_21432887C(v5, type metadata accessor for BalloonPlugin.Payload);
  (*(v14 + 8))(v47, v48);
  v44 = v59;

  *(v44 + 56) = v39;
  *(v44 + 64) = v38;
  *(v44 + 72) = v56;
  *(v44 + 80) = v41;
  __swift_destroy_boxed_opaque_existential_1(v60);
  return sub_21432887C(v44, type metadata accessor for CustomAcknowledgement);
}

uint64_t sub_2141199C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906750, &qword_2146F44F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ECEFC();
  sub_2146DAA28();
  LOBYTE(v29[0]) = *v3;
  LOBYTE(v24) = 0;
  sub_2142ED07C();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v29[0]) = 1;
  sub_2146DA328();
  v29[0] = *(v3 + 24);
  LOBYTE(v24) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v29[0] = *(v3 + 40);
  LOBYTE(v24) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (*(v3 + 72))
  {
    v31 = *(v3 + 72);
    v30[0] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v9 = *(v3 + 104);
    v10 = *(v3 + 136);
    v29[2] = *(v3 + 120);
    v29[3] = v10;
    v29[4] = *(v3 + 152);
    v29[0] = *(v3 + 88);
    v29[1] = v9;
    v11 = *(v3 + 104);
    v12 = *(v3 + 136);
    v26 = *(v3 + 120);
    v27 = v12;
    v28 = *(v3 + 152);
    v24 = *(v3 + 88);
    v25 = v11;
    v23 = 5;
    sub_213FB2E54(v29, v22, &qword_27C904FD8, &qword_2146F0C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
    sub_2142ED0D0();
    sub_2146DA388();
    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v22[0] = v24;
    v22[1] = v25;
    sub_213FB2DF4(v22, &qword_27C904FD8, &qword_2146F0C50);
    LOBYTE(v18) = 6;
    sub_2146DA328();
    v13 = type metadata accessor for CustomAcknowledgement(0);
    LOBYTE(v18) = 7;
    type metadata accessor for BalloonPlugin.Payload(0);
    sub_214328930(&qword_27C904780, type metadata accessor for BalloonPlugin.Payload, protocol conformance descriptor for BalloonPlugin.Payload);
    sub_2146DA388();
    v18 = *(v3 + *(v13 + 48));
    v21 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905928, &qword_2146F3EC0);
    sub_2142E51A0();
    sub_2146DA388();
    v14 = (v3 + *(v13 + 52));
    v15 = v14[1];
    v16 = v14[2];
    v18 = *v14;
    v19 = v15;
    v20 = v16;
    v21 = 9;
    sub_214031CA0(v18, v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    sub_2142E5278();
    sub_2146DA388();
    sub_214031CE0(v18, v19, v20);
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214119F44(uint64_t a1)
{
  v2 = sub_2142ED1A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214119F80(uint64_t a1)
{
  v2 = sub_2142ED1A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214119FBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906770, &qword_2146F44F8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1A8();
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

uint64_t sub_21411A1C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906780, &qword_2146F4500);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1A8();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21411A358(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906780, &qword_2146F4500);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1A8();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21411A4D0(uint64_t a1)
{
  v2 = sub_2142ED1FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411A50C(uint64_t a1)
{
  v2 = sub_2142ED1FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411A548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906788, &qword_2146F4508);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1FC();
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

uint64_t sub_21411A754(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906790, &qword_2146F4510);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1FC();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21411A8E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906790, &qword_2146F4510);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED1FC();
  sub_2146DAA28();
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21411AAB0(uint64_t a1)
{
  v2 = sub_2142ED250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411AAEC(uint64_t a1)
{
  v2 = sub_2142ED250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411AB28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for DigitalTouchMessage(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DigitalTouchHeader(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906798, &qword_2146F4518);
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED250();
  v12 = v20;
  sub_2146DAA08();
  if (!v12)
  {
    v13 = v18;
    v22 = 0;
    sub_214328930(&qword_27C9067A8, type metadata accessor for DigitalTouchHeader, asc_2146F9000);
    sub_2146DA1C8();
    v21 = 1;
    sub_214328930(&qword_27C9067B0, type metadata accessor for DigitalTouchMessage, aW_8);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v19);
    v15 = v17;
    sub_214328704(v8, v17, type metadata accessor for DigitalTouchHeader);
    v16 = type metadata accessor for DigitalTouchBalloon(0);
    sub_214328704(v5, v15 + *(v16 + 20), type metadata accessor for DigitalTouchMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21411AE50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067B8, &qword_2146F4520);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED250();
  sub_2146DAA28();
  v8[15] = 0;
  type metadata accessor for DigitalTouchHeader(0);
  sub_214328930(&qword_27C9067C0, type metadata accessor for DigitalTouchHeader, byte_2146F9028);
  sub_2146DA388();
  if (!v1)
  {
    type metadata accessor for DigitalTouchBalloon(0);
    v8[14] = 1;
    type metadata accessor for DigitalTouchMessage(0);
    sub_214328930(&qword_27C9067C8, type metadata accessor for DigitalTouchMessage, byte_214702B28);
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

int *sub_21411B080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_2146D8B88();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = type metadata accessor for DigitalTouchHeader(0);
  v14 = a5 + result[5];
  *v14 = a2;
  *(v14 + 4) = BYTE4(a2) & 1;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a6;
  *(a5 + result[8]) = a4;
  return result;
}

uint64_t sub_21411B144()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65746144646E6573;
  v4 = 0x6C65447472617473;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F6C6F4365736162;
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

uint64_t sub_21411B1EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214364218(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21411B214(uint64_t a1)
{
  v2 = sub_2142ED2A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411B250(uint64_t a1)
{
  v2 = sub_2142ED2A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411B28C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_2146D8B88();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067D0, &qword_2146F4528);
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED2A4();
  sub_2146DAA08();
  if (v2)
  {
    v24 = a1;
  }

  else
  {
    v30 = a1;
    v10 = v32;
    v11 = v7;
    v40 = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v12 = v33;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v37 = 1;
    sub_2142E6128();
    sub_2146DA1C8();
    v29 = v6;
    v14 = v38;
    v15 = v39;
    v36 = 2;
    v16 = sub_2146DA1E8();
    v26 = v15;
    v27 = v14;
    v28 = v16;
    v35 = 3;
    sub_2146DA188();
    v18 = v17;
    v34 = 4;
    v19 = sub_2146DA178();
    (*(v11 + 8))(v9, v12);
    v20 = v31;
    (*(v10 + 32))(v31, v29, v4);
    v21 = type metadata accessor for DigitalTouchHeader(0);
    v22 = v20 + v21[5];
    v23 = v26;
    *v22 = v27;
    *(v22 + 4) = v23;
    *(v20 + v21[6]) = v28;
    *(v20 + v21[7]) = v18;
    *(v20 + v21[8]) = v19 & 1;
    v24 = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_21411B664(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067E0, &qword_2146F4530);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED2A4();
  sub_2146DAA28();
  v15 = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for DigitalTouchHeader(0) + 20));
    v10 = *v9;
    LOBYTE(v9) = *(v9 + 4);
    v13 = v10;
    v14 = v9;
    v12[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    v12[6] = 2;
    sub_2146DA3A8();
    v12[5] = 3;
    sub_2146DA348();
    v12[4] = 4;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TapMessage.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2143C50F4(&v11);
  v5 = v11;
  v4 = v12;
  v6 = v14;
  v16 = a1;
  v15 = v14;
  v11 = 0x617373654D706154;
  v12 = 0xEF737061742E6567;
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
    *v9 = 0x617373654D706154;
    v9[1] = 0xEF737061742E6567;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21411BAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1936744820 && a2 == 0xE400000000000000)
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

uint64_t sub_21411BB4C(uint64_t a1)
{
  v2 = sub_2142ED2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411BB88(uint64_t a1)
{
  v2 = sub_2142ED2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TapMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t *, char *, uint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067E8, &qword_2146F4538);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED2F8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067F8, &qword_2146F4540);
  sub_2142ED34C();
  sub_2146DA1C8();
  v20 = a2;
  v10 = v24;
  sub_2143C50F4(&v24);
  v12 = v24;
  v11 = v25;
  v13 = v26;
  v29 = v10;
  v21 = v27;
  v28 = v27;
  v24 = 0x617373654D706154;
  v25 = 0xEF737061742E6567;
  v26 = 0xD00000000000001CLL;
  v27 = 0x800000021478A360;
  v23 = v13;

  v22 = v11;
  v14 = v12(&v29, &v28, &v24);
  v19 = v10;
  if (v14)
  {

    (*(v6 + 8))(v8, v5);

    v15 = v22;

    v16 = v19;
    v17 = v20;
    *v20 = v12;
    v17[1] = v15;
    v17[2] = v16;
    *(v17 + 24) = v21;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v18 = 0x617373654D706154;
  v18[1] = 0xEF737061742E6567;
  v18[2] = 0xD00000000000001CLL;
  v18[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TapMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906810, &qword_2146F4548);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED2F8();
  sub_2146DAA28();
  if (v7)
  {
    v9[1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9067F8, &qword_2146F4540);
    sub_2142ED424();
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

uint64_t sub_21411C100@<X0>(int a1@<W0>, __int16 a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904168, &qword_2146F4550);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 720896000;
  *(v9 + 16) = sub_2142ED650;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214045404(inited, v18);
  v12 = v18[0];
  v11 = v18[1];
  v13 = BYTE3(v19);
  v23 = a2;
  v22 = BYTE3(v19);
  strcpy(v18, "SingleTap.time");
  HIBYTE(v18[1]) = -18;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v14 = v12(&v23, &v22, v18);
  if (v4)
  {
  }

  else
  {
    v15 = v21;
    if (v14)
    {

      *a4 = a1;
      *(a4 + 8) = v12;
      *(a4 + 16) = v11;
      *(a4 + 24) = a2;
      *(a4 + 26) = 0;
      *(a4 + 27) = v13;
      *(a4 + 28) = v15;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    strcpy(v17, "SingleTap.time");
    v17[15] = -18;
    *(v17 + 2) = 0xD00000000000001CLL;
    *(v17 + 3) = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21411C328()
{
  v1 = 1701669236;
  if (*v0 != 1)
  {
    v1 = 0x726F6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E696F70;
  }
}

uint64_t sub_21411C374@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143643E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21411C39C(uint64_t a1)
{
  v2 = sub_2142ED674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411C3D8(uint64_t a1)
{
  v2 = sub_2142ED674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411C414@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906828, &qword_2146F4558);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED674();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22[0]) = 0;
  v25 = sub_2146DA218();
  LOBYTE(v22[0]) = 1;
  v21 = sub_2146DA208();
  LOBYTE(v22[0]) = 2;
  v19 = sub_2146DA218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904168, &qword_2146F4550);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 720896000;
  *(v11 + 16) = sub_21438F46C;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214045404(inited, v22);
  v13 = v22[1];
  v20 = v22[0];
  v14 = BYTE3(v23);
  v27 = v21;
  v26 = BYTE3(v23);
  strcpy(v22, "SingleTap.time");
  HIBYTE(v22[1]) = -18;
  v23 = 0xD00000000000001CLL;
  v24 = 0x800000021478A360;

  v15 = v20(&v27, &v26, v22);
  v18 = v14;
  if (v15)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v25;
    *(a2 + 8) = v20;
    *(a2 + 16) = v13;
    *(a2 + 24) = v21;
    *(a2 + 26) = 0;
    v16 = v19;
    *(a2 + 27) = v18;
    *(a2 + 28) = v16;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    strcpy(v17, "SingleTap.time");
    v17[15] = -18;
    *(v17 + 2) = 0xD00000000000001CLL;
    *(v17 + 3) = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21411C80C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906838, &qword_2146F4560);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v12 = *(v1 + 24);
  v8 = *(v1 + 26);
  v10[2] = *(v1 + 28);
  v11 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED674();
  sub_2146DAA28();
  v15 = 0;
  sub_2146DA3D8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  if (v11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = 1;
    sub_2146DA3C8();
    v13 = 2;
    sub_2146DA3D8();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t DoodleMessage.init(with:hasDeltas:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2143C5338(&v13);
  v6 = v13;
  v5 = v14;
  v7 = v16;
  v18 = a1;
  v17 = v16;
  v13 = 0xD000000000000015;
  v14 = 0x800000021478DD60;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  v8 = v6(&v18, &v17, &v13);
  if (v3)
  {
  }

  else
  {
    if (v8)
    {

      *a3 = v6;
      *(a3 + 8) = v5;
      *(a3 + 16) = a1;
      *(a3 + 24) = v7;
      *(a3 + 25) = a2 & 1;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v10 = 0xD000000000000015;
    v10[1] = 0x800000021478DD60;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21411CBE0()
{
  if (*v0)
  {
    return 0x61746C6544736168;
  }

  else
  {
    return 0x73656B6F727473;
  }
}

uint64_t sub_21411CC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656B6F727473 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746C6544736168 && a2 == 0xE900000000000073)
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

uint64_t sub_21411CD04(uint64_t a1)
{
  v2 = sub_2142ED6C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411CD40(uint64_t a1)
{
  v2 = sub_2142ED6C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DoodleMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906840, &qword_2146F4568);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED6C8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906850, &qword_2146F4570);
  LOBYTE(v31) = 0;
  sub_2142ED71C();
  sub_2146DA1C8();
  v9 = v26;
  LOBYTE(v26) = 1;
  v20 = sub_2146DA178();
  sub_2143C5338(&v26);
  v12 = v26;
  v11 = v27;
  v24 = v9;
  v25 = v28;
  v31 = v9;
  v21 = v29;
  v30 = v29;
  v26 = 0xD000000000000015;
  v27 = 0x800000021478DD60;
  v22 = 0x800000021478DD60;
  v28 = 0xD00000000000001CLL;
  v29 = 0x800000021478A360;

  v23 = v11;
  v13 = v12(&v31, &v30, &v26);
  v19 = v12;
  v14 = v22;
  if (v13)
  {
    v20 &= 1u;

    (*(v6 + 8))(v8, v5);

    v15 = v23;

    *a2 = v19;
    *(a2 + 8) = v15;
    *(a2 + 16) = v24;
    v16 = v20;
    *(a2 + 24) = v21;
    *(a2 + 25) = v16;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD000000000000015;
    v17[1] = v14;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DoodleMessage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906868, &qword_2146F4578);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 16);
  v10[2] = *(v1 + 25);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED6C8();
  sub_2146DAA28();
  if (v8)
  {
    v13 = v8;
    v12 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906850, &qword_2146F4570);
    sub_2142ED7F4();
    sub_2146DA388();
    if (!v2)
    {
      v11 = 1;
      sub_2146DA338();
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t SingleStroke.init(with:color:delta:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904158, &qword_2146F4580);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_2143C945C;
  v8[3] = 0;
  v8[4] = 1;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F51C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214043D88(inited, &v18);
  v10 = v18;
  v9 = v19;
  v11 = v21;
  v23 = a1;
  v22 = v21;
  v18 = 0xD000000000000013;
  v19 = 0x800000021478DD80;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v12 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v12)
    {

      *a4 = v10;
      *(a4 + 8) = v9;
      *(a4 + 16) = a1;
      *(a4 + 24) = v11;
      *(a4 + 28) = a2;
      *(a4 + 32) = a3;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000013;
    v14[1] = 0x800000021478DD80;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21411D598()
{
  v1 = 0x726F6C6F63;
  if (*v0 != 1)
  {
    v1 = 0x61746C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656B6F727473;
  }
}

uint64_t sub_21411D5E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143644F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21411D610(uint64_t a1)
{
  v2 = sub_2142ED8CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411D64C(uint64_t a1)
{
  v2 = sub_2142ED8CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SingleStroke.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906880, &qword_2146F4588);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED8CC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906890, &qword_2146F4590);
  LOBYTE(v34) = 0;
  sub_2142ED920();
  sub_2146DA1C8();
  v9 = v29;
  LOBYTE(v29) = 1;
  v28 = sub_2146DA218();
  LOBYTE(v29) = 2;
  v24 = sub_2146DA208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904158, &qword_2146F4580);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  v13[2] = sub_2143C945C;
  v13[3] = 0;
  v13[4] = 1;
  v13[5] = sub_21403C354;
  v13[6] = 0;
  *(v12 + 16) = sub_21438F51C;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_214043D88(inited, &v29);
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v34 = v9;
  v22 = v32;
  v33 = v32;
  v29 = 0xD000000000000013;
  v30 = 0x800000021478DD80;
  v25 = 0x800000021478A360;
  v26 = 0x800000021478DD80;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;
  v27 = v16;

  v23 = v15;
  v17 = v15(&v34, &v33, &v29);
  v18 = v25;
  if (v17)
  {

    (*(v6 + 8))(v8, v5);

    *a2 = v23;
    *(a2 + 8) = v14;
    *(a2 + 16) = v9;
    *(a2 + 24) = v22;
    *(a2 + 28) = v28;
    *(a2 + 32) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v19 = v26;
    *v20 = 0xD000000000000013;
    v20[1] = v19;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = v18;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SingleStroke.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068A8, &qword_2146F4598);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 28);
  v11[1] = *(v1 + 32);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142ED8CC();
  sub_2146DAA28();
  if (v8)
  {
    v15 = v8;
    v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906890, &qword_2146F4590);
    sub_2142ED9F8();
    sub_2146DA388();
    if (v2)
    {
      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      v13 = 1;
      sub_2146DA3D8();
      v12 = 2;
      sub_2146DA3C8();
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t StrokePoint.init(with:delta:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = a2;
  return result;
}

uint64_t sub_21411DD58()
{
  if (*v0)
  {
    return 0x61746C6564;
  }

  else
  {
    return 0x6E6F697469736F70;
  }
}

uint64_t sub_21411DD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746C6564 && a2 == 0xE500000000000000)
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

uint64_t sub_21411DE68(uint64_t a1)
{
  v2 = sub_2142EDAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411DEA4(uint64_t a1)
{
  v2 = sub_2142EDAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411DF98@<X0>(int a1@<W0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>, float a7@<S4>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = 0x4396000000000000;
  *(v14 + 16) = sub_2142EDB24;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_214043AE0(inited, &v51);
  v17 = v51;
  v16 = v52;
  v18 = *&v53;
  v19 = BYTE4(v53);
  v20 = BYTE5(v53);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904148, qword_21476AE20);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = 0xB00000000;
  *(v22 + 16) = sub_2142EDB3C;
  *(v22 + 24) = v23;
  *(v21 + 32) = v22;
  sub_2140446C8(v21, v71);
  v47 = v71[0];
  v49 = v71[1];
  v42 = v72;
  v24 = v73;
  v48 = v74;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = 0x4121999A00000000;
  *(v26 + 16) = sub_21438F540;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_214043AE0(v25, v67);
  v45 = v67[0];
  v50 = v67[1];
  v43 = v68;
  v28 = v69;
  v46 = v70;
  v77 = v19;
  v76 = v24;
  v75 = v69;
  v79 = v24;
  v78 = v69;
  *v71 = a3;
  LOBYTE(v67[0]) = v20;
  v51 = 0xD00000000000001FLL;
  v52 = 0x800000021478DDA0;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v44 = v17;
  v29 = v17(v71, v67, &v51);
  if (v7)
  {

LABEL_6:
    v32 = v47;

LABEL_7:
    v30 = v42;
LABEL_8:
    v51 = v44;
    v52 = v16;
    *&v53 = v18;
    BYTE4(v53) = v77;
    BYTE5(v53) = v20;
    v54 = v32;
    v55 = v49;
    v56 = v30;
    v57 = v24;
    v58 = v48;
    v59 = a4;
    v60 = a5;
    v61 = a6;
    v62 = v45;
    v63 = v50;
    v64 = v43;
    v65 = v28;
    v66 = v46;
    return sub_2142EDB54(&v51);
  }

  v30 = a1;
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001FLL;
    v33[1] = 0x800000021478DDA0;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v77 = 0;
  LODWORD(v71[0]) = a1;
  LOBYTE(v67[0]) = v48;
  v51 = 0xD000000000000019;
  v52 = 0x800000021478DDC0;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v31 = v47(v71, v67, &v51);
  v32 = v47;
  if ((v31 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000019;
    v36[1] = 0x800000021478DDC0;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = a3;
    goto LABEL_7;
  }

  v79 = 0;
  *v71 = a7;
  LOBYTE(v67[0]) = v46;
  v51 = 0xD00000000000001FLL;
  v52 = 0x800000021478DDE0;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v35 = v45(v71, v67, &v51);
  v32 = v47;
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD00000000000001FLL;
    v39[1] = 0x800000021478DDE0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    v24 = v79;
    v18 = a3;
    goto LABEL_8;
  }

  v78 = 0;
  v37 = v77;
  v38 = v79;
  *a2 = v44;
  *(a2 + 8) = v16;
  *(a2 + 16) = a3;
  *(a2 + 20) = v37;
  *(a2 + 21) = v20;
  *(a2 + 24) = v47;
  *(a2 + 32) = v49;
  *(a2 + 40) = a1;
  *(a2 + 44) = v38;
  *(a2 + 45) = v48;
  *(a2 + 48) = a4;
  *(a2 + 52) = a5;
  *(a2 + 56) = a6;
  *(a2 + 64) = v45;
  *(a2 + 72) = v50;
  *(a2 + 80) = a7;
  *(a2 + 84) = 0;
  *(a2 + 85) = v46;
  return result;
}

unint64_t sub_21411E58C()
{
  v1 = *v0;
  v2 = 0x7265507374616562;
  v3 = 0xD000000000000011;
  v4 = 0x6E6F697461746F72;
  if (v1 != 4)
  {
    v4 = 0x6572627472616568;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461727564;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_21411E668@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214364600(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21411E690(uint64_t a1)
{
  v2 = sub_2142EDBA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411E6CC(uint64_t a1)
{
  v2 = sub_2142EDBA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411E708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068D8, &qword_2146F45B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EDBA8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v72 = a1;
  v8 = v5;
  v9 = v73;
  LOBYTE(v78) = 0;
  sub_2146DA198();
  v11 = v10;
  LOBYTE(v78) = 1;
  v71 = sub_2146DA218();
  LOBYTE(v78) = 2;
  sub_2146DA198();
  v13 = v12;
  LOBYTE(v78) = 3;
  sub_2146DA198();
  v15 = v14;
  LOBYTE(v78) = 4;
  sub_2146DA198();
  v18 = v17;
  v102 = 5;
  sub_2146DA198();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v67 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4396000000000000;
  *(v22 + 16) = sub_21438F540;
  *(v22 + 24) = v23;
  *(inited + 32) = v22;
  sub_214043AE0(inited, &v78);
  v68 = v78;
  v70 = v79;
  v24 = v80;
  v62 = BYTE4(v80);
  v69 = BYTE5(v80);
  v25 = swift_initStackObject();
  *(v25 + 16) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904148, qword_21476AE20);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = 0xB00000000;
  *(v26 + 16) = sub_21438F470;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_2140446C8(v25, &v74);
  v66 = v74;
  v59 = *v75;
  LODWORD(v25) = v75[4];
  v65 = v75[5];
  v28 = swift_initStackObject();
  *(v28 + 16) = v67;
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = 0x4121999A00000000;
  *(v29 + 16) = sub_21438F540;
  *(v29 + 24) = v30;
  *(v28 + 32) = v29;
  sub_214043AE0(v28, v93);
  v63 = v93[0];
  *&v67 = v93[1];
  v60 = v25;
  v61 = v94;
  LODWORD(v64) = v96;
  v99 = v62;
  v98 = v25;
  v97 = v95;
  v101 = v25;
  v62 = v95;
  v100 = v95;
  LODWORD(v74) = v11;
  LOBYTE(v93[0]) = v69;
  v78 = 0xD00000000000001FLL;
  v79 = 0x800000021478DDA0;
  v80 = 0xD00000000000001CLL;
  *&v81 = 0x800000021478A360;

  v31 = v68(&v74, v93, &v78);
  v58 = 0x800000021478A360;
  if (v31)
  {
    v32 = v58;

    v99 = 0;
    LODWORD(v74) = v71;
    LOBYTE(v93[0]) = v65;
    v57 = 0xD000000000000019;
    v78 = 0xD000000000000019;
    v79 = 0x800000021478DDC0;
    v80 = 0xD00000000000001CLL;
    *&v81 = v32;

    v33 = (v66)(&v74, v93, &v78);
    v40 = v68;
    if (v33)
    {
      v41 = v58;

      v101 = 0;
      LODWORD(v93[0]) = v20;
      LOBYTE(v74) = v64;
      v78 = 0xD00000000000001FLL;
      v79 = 0x800000021478DDE0;
      v80 = 0xD00000000000001CLL;
      *&v81 = v41;

      v42 = v63(v93, &v74, &v78);
      if (v42)
      {

        (*(v8 + 8))(v7, v4);
        v44 = v67;

        v100 = 0;
        *&v74 = v40;
        *(&v74 + 1) = v70;
        *v75 = v11;
        v62 = v99;
        v75[4] = v99;
        v75[5] = v69;
        v45 = *(&v66 + 1);
        *&v75[8] = v66;
        v46 = v71;
        *&v75[24] = v71;
        v61 = v101;
        v75[28] = v101;
        v47 = v65;
        v75[29] = v65;
        *&v76 = __PAIR64__(v15, v13);
        DWORD2(v76) = v18;
        v48 = v63;
        *v77 = v63;
        *&v77[8] = v44;
        *&v77[16] = v20;
        v77[20] = 0;
        v49 = v64;
        v77[21] = v64;
        v50 = *v75;
        *v9 = v74;
        *(v9 + 16) = v50;
        v51 = *&v75[16];
        v52 = v76;
        v53 = *v77;
        *(v9 + 78) = *&v77[14];
        *(v9 + 48) = v52;
        *(v9 + 64) = v53;
        *(v9 + 32) = v51;
        sub_2142EDBFC(&v74, &v78);
        __swift_destroy_boxed_opaque_existential_1(v72);
        v78 = v68;
        v79 = v70;
        LODWORD(v80) = v11;
        BYTE4(v80) = v62;
        BYTE5(v80) = v69;
        *&v81 = v66;
        *(&v81 + 1) = v45;
        v82 = v46;
        v83 = v61;
        v84 = v47;
        v85 = v13;
        v86 = v15;
        v87 = v18;
        v88 = v48;
        v89 = v44;
        v90 = v20;
        v91 = 0;
        v92 = v49;
        return sub_2142EDB54(&v78);
      }

      sub_214031C4C();
      swift_allocError();
      *v54 = 0xD00000000000001FLL;
      v54[1] = 0x800000021478DDE0;
      v55 = v58;
      v54[2] = 0xD00000000000001CLL;
      v54[3] = v55;
      swift_willThrow();
      (*(v8 + 8))(v7, v4);

      v38 = v101;
      v24 = v11;
      v39 = v71;
      v36 = v72;
      v37 = v70;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v43 = v57;
      v43[1] = 0x800000021478DDC0;
      v43[2] = 0xD00000000000001CLL;
      v43[3] = v58;
      swift_willThrow();
      (*(v8 + 8))(v7, v4);
      v36 = v72;

      v24 = v11;
      v37 = v70;
      v39 = v59;
      v38 = v60;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD00000000000001FLL;
    v34[1] = 0x800000021478DDA0;
    v35 = v58;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = v35;
    swift_willThrow();
    (*(v8 + 8))(v7, v4);
    v36 = v72;
    v37 = v70;

    v39 = v59;
    v38 = v60;
    v40 = v68;
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  v78 = v40;
  v79 = v37;
  LODWORD(v80) = v24;
  BYTE4(v80) = v99;
  BYTE5(v80) = v69;
  v81 = v66;
  v82 = v39;
  v83 = v38;
  v84 = v65;
  v85 = v13;
  v86 = v15;
  v87 = v18;
  v88 = v63;
  v89 = v67;
  v90 = v61;
  v91 = v62;
  v92 = v64;
  return sub_2142EDB54(&v78);
}

uint64_t sub_21411F084(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068E8, &qword_2146F45B8);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *(v1 + 20);
  v8 = *(v1 + 40);
  v9 = *(v1 + 44);
  v12 = *(v1 + 84);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EDBA8();
  sub_2146DAA28();
  if (v7)
  {
    goto LABEL_8;
  }

  v20 = 0;
  sub_2146DA358();
  if (v2)
  {
    return (*(v14 + 8))(v6, v4);
  }

  if (v9 & 1) != 0 || (v19 = 1, sub_2146DA3D8(), v18 = 2, sub_2146DA358(), v17 = 3, sub_2146DA358(), v16 = 4, sub_2146DA358(), (v12))
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15 = 5;
    sub_2146DA358();
    return (*(v14 + 8))(v6, v4);
  }

  return result;
}

uint64_t VideoMessage.init(with:intro:playingMessages:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = *a1;
  v9 = type metadata accessor for VideoMessage(0);
  v21 = a2;
  sub_213FB2E54(a2, &a4[*(v9 + 20)], &qword_27C9068F0, &unk_2146F45C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904140, &unk_2146EAAA0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = sub_214059908;
  v12[3] = 0;
  v12[4] = 75;
  v12[5] = sub_21403C354;
  v12[6] = 0;
  *(v11 + 16) = sub_21438F51C;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214043ED8(inited, &v22);
  v14 = v22;
  v13 = v23;
  v15 = v24;
  v16 = v25;
  *a4 = v8;
  v17 = &a4[*(v9 + 24)];
  *v17 = v14;
  *(v17 + 1) = v13;
  *(v17 + 2) = v15;
  v17[24] = v16;
  v27 = a3;
  v26 = v16;
  v22 = 0xD00000000000001CLL;
  v23 = 0x800000021478DE00;
  v24 = 0xD00000000000001CLL;
  v25 = 0x800000021478A360;

  v18 = v14(&v27, &v26, &v22);
  if (v4)
  {
  }

  else
  {
    if (v18)
    {

      sub_213FB2DF4(v21, &qword_27C9068F0, &unk_2146F45C0);

      *v17 = v14;
      *(v17 + 1) = v13;
      *(v17 + 2) = a3;
      v17[24] = v16;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD00000000000001CLL;
    v20[1] = 0x800000021478DE00;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v21, &qword_27C9068F0, &unk_2146F45C0);

  *v17 = v14;
  *(v17 + 1) = v13;
  *(v17 + 2) = v15;
  v17[24] = v16;
  return sub_21432887C(a4, type metadata accessor for VideoMessage);
}

uint64_t sub_21411F620()
{
  v1 = 0x6F72746E69;
  if (*v0 != 1)
  {
    v1 = 0x4D676E6979616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954616964656DLL;
  }
}

uint64_t sub_21411F688@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436481C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21411F6B0(uint64_t a1)
{
  v2 = sub_2142EDC58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411F6EC(uint64_t a1)
{
  v2 = sub_2142EDC58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F8, &unk_2146F45D0);
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for VideoMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142EDC58();
  v13 = v38;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v38 = v11;
  v14 = v37;
  LOBYTE(v45) = 0;
  sub_2142EDCAC();
  sub_2146DA1C8();
  v15 = v8;
  v16 = v40;
  LOBYTE(v40) = 1;
  sub_2142EDD00();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906920, &qword_214738410);
  LOBYTE(v45) = 2;
  sub_2142EDDB4();
  sub_2146DA1C8();
  v34 = v15;
  v35 = v40;
  v18 = *(v9 + 20);
  LODWORD(v33) = v16;
  v19 = v38;
  sub_213FB2E54(v5, &v38[v18], &qword_27C9068F0, &unk_2146F45C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904140, &unk_2146EAAA0);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  v22[2] = sub_214059908;
  v22[3] = 0;
  v22[4] = 75;
  v22[5] = sub_21403C354;
  v22[6] = 0;
  *(v21 + 16) = sub_21438F51C;
  *(v21 + 24) = v22;
  *(inited + 32) = v21;
  sub_214043ED8(inited, &v40);
  v24 = v40;
  v23 = v41;
  v25 = v42;
  v26 = v43;
  *v19 = v33;
  v27 = &v19[*(v9 + 24)];
  *v27 = v24;
  *(v27 + 1) = v23;
  *(v27 + 2) = v25;
  v27[24] = v26;
  v45 = v35;
  v32 = v26;
  v44 = v26;
  v40 = 0xD00000000000001CLL;
  v41 = 0x800000021478DE00;
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000021478A360;
  v31 = v25;

  v33 = v24;
  if (v24(&v45, &v44, &v40))
  {

    sub_213FB2DF4(v5, &qword_27C9068F0, &unk_2146F45C0);
    (*(v14 + 8))(v34, v6);

    *v27 = v33;
    *(v27 + 1) = v23;
    v28 = v36;
    *(v27 + 2) = v35;
    v27[24] = v32;
    sub_214328704(v38, v28, type metadata accessor for VideoMessage);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  sub_214031C4C();
  swift_allocError();
  *v29 = 0xD00000000000001CLL;
  v29[1] = 0x800000021478DE00;
  v29[2] = 0xD00000000000001CLL;
  v29[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v5, &qword_27C9068F0, &unk_2146F45C0);
  (*(v14 + 8))(v34, v6);

  *v27 = v33;
  *(v27 + 1) = v23;
  *(v27 + 2) = v31;
  v27[24] = v32;
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_21432887C(v38, type metadata accessor for VideoMessage);
}

uint64_t VideoMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906938, &qword_2146F45E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EDC58();
  sub_2146DAA28();
  v15 = *v3;
  v14 = 0;
  sub_2142EDE68();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for VideoMessage(0);
  v13 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  sub_2142EDEBC();
  sub_2146DA388();
  if (*&v3[*(v9 + 24) + 16])
  {
    v12 = *&v3[*(v9 + 24) + 16];
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906920, &qword_214738410);
    sub_2142EDF70();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 IntroBalloon.init(with:content:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1].n128_u64[0];
  v6 = a2[1].n128_u8[8];
  v7 = a2[1].n128_u8[9];
  sub_214328704(a1, a3, type metadata accessor for DigitalTouchHeader);
  v8 = (a3 + *(type metadata accessor for IntroBalloon(0) + 20));
  result = *a2;
  *v8 = *a2;
  v8[1].n128_u64[0] = v5;
  v8[1].n128_u8[8] = v6;
  v8[1].n128_u8[9] = v7;
  return result;
}

uint64_t sub_21411FFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
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

uint64_t sub_2141200C4(uint64_t a1)
{
  v2 = sub_2142EE024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214120100(uint64_t a1)
{
  v2 = sub_2142EE024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntroBalloon.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for DigitalTouchHeader(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906968, &qword_2146F45E8);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE024();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v18;
    LOBYTE(v20) = 0;
    sub_214328930(&qword_27C9067A8, type metadata accessor for DigitalTouchHeader, asc_2146F9000);
    sub_2146DA1C8();
    v12 = v6;
    v24 = 1;
    sub_2142EE078();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v19);
    v14 = v21;
    LOBYTE(v10) = v22;
    v15 = v23;
    v19 = v20;
    sub_214328704(v12, v11, type metadata accessor for DigitalTouchHeader);
    v16 = v11 + *(type metadata accessor for IntroBalloon(0) + 20);
    *v16 = v19;
    *(v16 + 16) = v14;
    *(v16 + 24) = v10;
    *(v16 + 25) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t IntroBalloon.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906980, &qword_2146F45F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE024();
  sub_2146DAA28();
  LOBYTE(v16) = 0;
  type metadata accessor for DigitalTouchHeader(0);
  sub_214328930(&qword_27C9067C0, type metadata accessor for DigitalTouchHeader, byte_2146F9028);
  sub_2146DA388();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for IntroBalloon(0) + 20));
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = *(v9 + 24);
    LOBYTE(v9) = *(v9 + 25);
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v9;
    v15[15] = 1;
    sub_2142EE0CC();

    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t KissMessage.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2143C5AC0(&v11);
  v5 = v11;
  v4 = v12;
  v6 = v14;
  v16 = a1;
  v15 = v14;
  v11 = 0xD000000000000012;
  v12 = 0x800000021478DE20;
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
    *v9 = 0xD000000000000012;
    v9[1] = 0x800000021478DE20;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2141207E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73657373696BLL && a2 == 0xE600000000000000)
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

uint64_t sub_214120864(uint64_t a1)
{
  v2 = sub_2142EE120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141208A0(uint64_t a1)
{
  v2 = sub_2142EE120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KissMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t (**a2)(unint64_t *, char *, unint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906990, &qword_2146F45F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE120();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069A0, &qword_2146F4600);
  sub_2142EE174();
  sub_2146DA1C8();
  v19 = a2;
  v10 = v24;
  sub_2143C5AC0(&v24);
  v12 = v24;
  v11 = v25;
  v22 = v10;
  v23 = v26;
  v29 = v10;
  v20 = v27;
  v28 = v27;
  v24 = 0xD000000000000012;
  v25 = 0x800000021478DE20;
  v26 = 0xD00000000000001CLL;
  v27 = 0x800000021478A360;

  v21 = v11;
  v13 = v12(&v29, &v28, &v24);
  v18 = v12;
  if (v13)
  {

    (*(v6 + 8))(v8, v5);

    v14 = v21;

    v15 = v19;
    *v19 = v18;
    v15[1] = v14;
    v15[2] = v22;
    *(v15 + 24) = v20;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v16 = 0xD000000000000012;
  v16[1] = 0x800000021478DE20;
  v16[2] = 0xD00000000000001CLL;
  v16[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t KissMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069B8, &qword_2146F4608);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE120();
  sub_2146DAA28();
  if (v7)
  {
    v9[1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069A0, &qword_2146F4600);
    sub_2142EE24C();
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

uint64_t SingleKiss.init(with:angle:delay:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 6) = a3;
  return result;
}

uint64_t sub_214120E00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214364940(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214120E28(uint64_t a1)
{
  v2 = sub_2142EE324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214120E64(uint64_t a1)
{
  v2 = sub_2142EE324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SingleKiss.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069D0, &qword_2146F4610);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE324();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_2146DA218();
    v15 = 1;
    v13 = sub_2146DA208();
    v14 = 2;
    v11 = sub_2146DA208();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 4) = v13;
    *(a2 + 6) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SingleKiss.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069E0, &qword_2146F4618);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 4);
  v9[3] = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE324();
  sub_2146DAA28();
  v12 = 0;
  sub_2146DA3D8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_2146DA3C8();
  v10 = 2;
  sub_2146DA3C8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t AngerMessage.init(with:normalizedCenterX:normalizedCenterY:movements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, unsigned int a4@<S1>, unsigned int a5@<S2>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 0x4130000000000000;
  *(v11 + 16) = sub_21438F540;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214043AE0(inited, &v22);
  v14 = v22;
  v13 = v23;
  v15 = v24;
  v16 = BYTE4(v24);
  v17 = BYTE5(v24);
  v28 = a3;
  v27 = BYTE5(v24);
  v22 = 0xD000000000000015;
  v23 = 0x800000021478DE40;
  v24 = 0xD00000000000001CLL;
  v25 = 0x800000021478A360;

  v18 = v14(&v28, &v27, &v22);
  if (v5)
  {
  }

  else
  {
    if (v18)
    {

      v29 = 0;
      *a2 = v14;
      *(a2 + 8) = v13;
      *(a2 + 16) = a3;
      *(a2 + 20) = 0;
      *(a2 + 21) = v17;
      *(a2 + 24) = a4;
      *(a2 + 28) = a5;
      *(a2 + 32) = a1;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000015;
    v20[1] = 0x800000021478DE40;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v22 = v14;
  v23 = v13;
  LODWORD(v24) = v15;
  BYTE4(v24) = v16;
  BYTE5(v24) = v17;
  v25 = __PAIR64__(a5, a4);
  v26 = a1;
  return sub_2142EE378(&v22);
}

unint64_t sub_21412148C()
{
  v1 = 0x6E6F697461727564;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x746E656D65766F6DLL;
  }

  if (*v0)
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

uint64_t sub_214121514@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214364A4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21412153C(uint64_t a1)
{
  v2 = sub_2142EE3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214121578(uint64_t a1)
{
  v2 = sub_2142EE3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AngerMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069E8, &qword_2146F4620);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE3CC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38) = 0;
  sub_2146DA198();
  v10 = v9;
  LOBYTE(v38) = 1;
  sub_2146DA198();
  v13 = v12;
  LOBYTE(v38) = 2;
  sub_2146DA198();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069F8, &qword_2146F4628);
  v44 = 3;
  sub_2142EE420();
  sub_2146DA1C8();
  v34 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = 0x4130000000000000;
  *(v17 + 16) = sub_21438F540;
  *(v17 + 24) = v18;
  *(inited + 32) = v17;
  sub_214043AE0(inited, &v38);
  v20 = v38;
  v19 = v39;
  v30 = v40;
  v29 = BYTE4(v40);
  v43 = v10;
  v33 = BYTE5(v40);
  LOBYTE(v35) = BYTE5(v40);
  v38 = 0xD000000000000015;
  v39 = 0x800000021478DE40;
  v31 = 0x800000021478DE40;
  v40 = 0xD00000000000001CLL;
  v41 = 0x800000021478A360;

  v32 = v20;
  v21 = v20(&v43, &v35, &v38);
  v22 = v31;
  if (v21)
  {

    (*(v6 + 8))(v8, v5);

    v46 = 0;
    v23 = v32;
    *&v35 = v32;
    *(&v35 + 1) = v19;
    LODWORD(v36) = v10;
    BYTE4(v36) = 0;
    v24 = v33;
    BYTE5(v36) = v33;
    *(&v36 + 1) = __PAIR64__(v15, v13);
    v25 = v34;
    v37 = v34;
    *(a2 + 32) = v34;
    v26 = v36;
    *a2 = v35;
    *(a2 + 16) = v26;
    sub_2142EE4F8(&v35, &v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = v23;
    v39 = v19;
    LODWORD(v40) = v10;
    BYTE4(v40) = 0;
    BYTE5(v40) = v24;
    v41 = __PAIR64__(v15, v13);
    v42 = v25;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD000000000000015;
    v27[1] = v22;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);

    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = v32;
    v39 = v19;
    LODWORD(v40) = v30;
    BYTE4(v40) = v29;
    BYTE5(v40) = v33;
    v41 = __PAIR64__(v15, v13);
    v42 = v34;
  }

  return sub_2142EE378(&v38);
}

uint64_t AngerMessage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A10, &qword_2146F4630);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v1 + 20);
  v10 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE3CC();
  sub_2146DAA28();
  if (v8)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15 = 0;
    sub_2146DA358();
    if (!v2)
    {
      v14 = 1;
      sub_2146DA358();
      v13 = 2;
      sub_2146DA358();
      v12 = v10;
      v11 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9069F8, &qword_2146F4628);
      sub_2142EE554();
      sub_2146DA388();
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_214121D38()
{
  if (*v0)
  {
    return 0x79616C6564;
  }

  else
  {
    return 0x746E696F70;
  }
}

uint64_t sub_214121D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E696F70 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000)
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

uint64_t sub_214121E38(uint64_t a1)
{
  v2 = sub_2142EE62C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214121E74(uint64_t a1)
{
  v2 = sub_2142EE62C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214121EF4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v18 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v13 = v17;
    v12 = v18;
    v20 = 0;
    v14 = sub_2146DA218();
    v19 = 1;
    v15 = sub_2146DA208();
    (*(v13 + 8))(v11, v9);
    *v12 = v14;
    *(v12 + 4) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141220E4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v14 = *(v5 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v13[0])();
  sub_2146DAA28();
  v16 = 0;
  v11 = v13[1];
  sub_2146DA3D8();
  if (!v11)
  {
    v15 = 1;
    sub_2146DA3C8();
  }

  return (*(v8 + 8))(v10, v7);
}

__n128 sub_2141222A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a4;
  v28 = *(a7 + 32);
  v17 = *(a7 + 48);
  v31 = *(a10 + 32);
  v30 = *(a10 + 48);
  v33 = *(a11 + 32);
  v32 = *(a11 + 48);
  sub_214328704(a1, a9, type metadata accessor for Metadata);
  v18 = type metadata accessor for EditMessageCommand(0);
  v19 = (a9 + v18[5]);
  *v19 = a2;
  v19[1] = a3;
  *(a9 + v18[6]) = v16;
  v20 = a9 + v18[7];
  *v20 = a5;
  *(v20 + 8) = a6 & 1;
  v21 = a9 + v18[8];
  v22 = *(a7 + 16);
  *v21 = *a7;
  *(v21 + 16) = v22;
  *(v21 + 32) = v28;
  *(v21 + 48) = v17;
  *(a9 + v18[9]) = a8;
  v23 = a9 + v18[10];
  v24 = *(a10 + 16);
  *v23 = *a10;
  *(v23 + 16) = v24;
  *(v23 + 32) = v31;
  *(v23 + 48) = v30;
  v25 = a9 + v18[11];
  v26 = *(a11 + 16);
  *v25 = *a11;
  *(v25 + 16) = v26;
  result = v33;
  *(v25 + 32) = v33;
  *(v25 + 48) = v32;
  return result;
}

unint64_t sub_2141223F8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001CLL;
    if (v1 != 6)
    {
      v5 = 0x436567617373656DLL;
    }

    v6 = 0xD000000000000014;
    if (v1 == 4)
    {
      v6 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
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
    v2 = 0x617461646174656DLL;
    v3 = 0x6570795474696465;
    if (v1 != 2)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0)
    {
      v2 = 0xD000000000000011;
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
}

uint64_t sub_214122514@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214364BC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21412253C(uint64_t a1)
{
  v2 = sub_2142EE680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214122578(uint64_t a1)
{
  v2 = sub_2142EE680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141225B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A40, &qword_2146F4648);
  v7 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v9 = &v39 - v8;
  v10 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142EE680();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = v7;
    LOBYTE(v57) = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
    v12 = v55;
    v13 = v9;
    sub_2146DA1C8();
    LOBYTE(v57) = 1;
    v14 = sub_2146DA168();
    v16 = v15;
    v53 = v14;
    v62 = 2;
    sub_2142EE6D4();
    sub_2146DA1C8();
    v17 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v62 = 3;
    sub_2142E11FC();
    sub_2146DA1C8();
    v61 = v17;
    v52 = v57;
    v19 = BYTE8(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A58, &qword_2146F4650);
    v62 = 4;
    v20 = sub_2142EE728();
    sub_2146DA1C8();
    v47 = v20;
    v46 = v19;
    v50 = v57;
    v21 = v58;
    v51 = v59;
    v48 = *(&v58 + 1);
    v49 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v62 = 5;
    sub_2142E1378();
    sub_2146DA1C8();
    v22 = v48;
    v45 = v21;
    LODWORD(v21) = v57;
    v62 = 6;
    sub_2146DA1C8();
    v41 = v21;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    v47 = v60;
    v62 = 7;
    sub_21405E3AC();
    sub_2146DA1C8();
    v23 = v49;
    v24 = v22;
    (*(v11 + 8))(v13, v12);
    v55 = v59;
    v25 = v60;
    v40 = v57;
    v39 = v58;
    v26 = v54;
    sub_214328704(v6, v54, type metadata accessor for Metadata);
    v27 = type metadata accessor for EditMessageCommand(0);
    v28 = (v26 + v27[5]);
    *v28 = v53;
    v28[1] = v16;
    *(v26 + v27[6]) = v61;
    v29 = v26 + v27[7];
    *v29 = v52;
    *(v29 + 8) = v46;
    v30 = (v26 + v27[8]);
    v31 = *(&v50 + 1);
    *v30 = v50;
    v30[1] = v31;
    v30[2] = v45;
    v30[3] = v24;
    v32 = *(&v51 + 1);
    v30[4] = v51;
    v30[5] = v32;
    v30[6] = v23;
    *(v26 + v27[9]) = v41;
    v33 = (v26 + v27[10]);
    v34 = *(&v42 + 1);
    *v33 = v42;
    v33[1] = v34;
    v35 = *(&v43 + 1);
    v33[2] = v43;
    v33[3] = v35;
    v36 = *(&v44 + 1);
    v33[4] = v44;
    v33[5] = v36;
    v33[6] = v47;
    v37 = v26 + v27[11];
    v38 = v39;
    *v37 = v40;
    *(v37 + 16) = v38;
    *(v37 + 32) = v55;
    *(v37 + 48) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_214122C50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A68, &qword_2146F4658);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE680();
  sub_2146DAA28();
  LOBYTE(v36) = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for EditMessageCommand(0);
    LOBYTE(v36) = 1;
    sub_2146DA328();
    LOBYTE(v36) = *(v3 + v9[6]);
    v42 = 2;
    sub_2142EE818();
    sub_2146DA388();
    v10 = v3 + v9[7];
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v36 = v11;
    LOBYTE(v37) = v10;
    v42 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    v12 = (v3 + v9[8]);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[6];
    v36 = *v12;
    *&v37 = v13;
    *(&v37 + 1) = v14;
    v38 = v15;
    v39 = v16;
    v40 = v17;
    v41 = v18;
    v42 = 4;
    sub_2142EE86C(v36, v13, v14, v15, v16, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A58, &qword_2146F4650);
    sub_2142EE8D8();
    sub_2146DA388();
    sub_2142EE7AC(v36, v37, *(&v37 + 1), v38, v39, v40, v41);
    LOBYTE(v36) = *(v3 + v9[9]);
    v42 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    v19 = (v3 + v9[10]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v24 = v19[5];
    v25 = v19[6];
    v36 = *v19;
    *&v37 = v20;
    *(&v37 + 1) = v21;
    v38 = v22;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v42 = 6;
    sub_2142EE86C(v36, v20, v21, v22, v23, v24, v25);
    sub_2146DA388();
    sub_2142EE7AC(v36, v37, *(&v37 + 1), v38, v39, v40, v41);
    v26 = v3 + v9[11];
    v27 = *(v26 + 24);
    v28 = *(v26 + 32);
    v29 = *(v26 + 40);
    v30 = *(v26 + 48);
    v36 = *v26;
    v37 = *(v26 + 8);
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = 7;

    sub_214031CA0(v28, v29, v30);
    sub_21405E400();
    sub_2146DA388();
    v31 = v39;
    v32 = v40;
    v33 = v41;

    sub_214031CE0(v31, v32, v33);
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 EmojiTapBack.init(with:associatedMessageType:associatedMessageGUID:associatedMessageFallbackHash:associatedMessageRange:associatedMessageEmoji:participantDestinationIdentifiers:messageSummaryInfo:plainTextBody:)@<Q0>(char *a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char *x0_0@<X0>, unint64_t a9, unint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14)
{
  v86 = a10;
  v38 = *x0_0;
  v47 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 1;
  *(v16 + 16) = sub_21438F758;
  *(v16 + 24) = v17;
  *(v15 + 32) = v16;
  sub_214042B80(v15, &v54);
  v18 = v54;
  v19 = v55;
  v20 = v57;
  v39 = v56;
  v21 = v58;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2146E9BF0;
  *(v22 + 32) = sub_2142E0AD0();
  sub_2140433DC(v22, &v79);
  v23 = *a12;
  *&v83[23] = a12[1];
  v24 = a12[3];
  *&v83[39] = a12[2];
  *&v83[55] = v24;
  *&v83[71] = a12[4];
  v42 = v79;
  v44 = v81;
  v45 = v80;
  v43 = v82;
  *&v83[7] = v23;
  v79 = a9;
  v80 = v86;
  v46 = v21;
  v78 = v21;
  v54 = 0xD000000000000023;
  v55 = 0x800000021478DE60;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;

  v25 = v18(&v79, &v78, &v54);
  if (v41)
  {

    v26 = v42;
  }

  else
  {
    if (v25)
    {
      v40 = v18;

      v54 = v42;
      v55 = v45;
      v56 = v44;
      LOBYTE(v57) = v43;

      sub_2140325F8(a11, v38, 0xD00000000000002ELL, 0x800000021478DE90, 0xD00000000000001CLL, 0x800000021478A360);

      v28 = v54;
      v27 = v55;
      v29 = v56;
      v30 = v57;

      *a8 = v47;
      *(a8 + 8) = a2;
      *(a8 + 16) = a3;
      *(a8 + 24) = a4;
      *(a8 + 32) = a5;
      *(a8 + 40) = a6;
      *(a8 + 48) = a7;
      *(a8 + 56) = v40;
      *(a8 + 64) = v19;
      v32 = v86;
      *(a8 + 72) = a9;
      *(a8 + 80) = v32;
      *(a8 + 88) = v46;
      *(a8 + 96) = v28;
      *(a8 + 104) = v27;
      *(a8 + 112) = v29;
      *(a8 + 120) = v30;
      v33 = *v83;
      *(a8 + 137) = *&v83[16];
      *(a8 + 121) = v33;
      result = *&v83[32];
      v35 = *&v83[48];
      v36 = *&v83[64];
      *(a8 + 200) = *&v83[79];
      *(a8 + 185) = v36;
      *(a8 + 169) = v35;
      *(a8 + 153) = result;
      *(a8 + 208) = a13;
      *(a8 + 216) = a14;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000023;
    v31[1] = 0x800000021478DE60;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v26 = v42;
  }

  *&v75[15] = *&v83[79];
  v72 = *&v83[16];
  v71 = *v83;
  *v75 = *&v83[64];
  v74 = *&v83[48];
  LOBYTE(v54) = v47;
  *(&v54 + 1) = v85[0];
  HIDWORD(v54) = *(v85 + 3);
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v61 = v18;
  v62 = v19;
  v63 = v39;
  v64 = v20;
  v65 = v21;
  *&v66[3] = *&v84[3];
  *v66 = *v84;
  v67 = v26;
  v68 = v45;
  v69 = v44;
  v70 = v43;
  v73 = *&v83[32];
  v76 = a13;
  v77 = a14;
  sub_2142EE95C(&v54);
  return result;
}

unint64_t sub_2141235E8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v4 = 0xD00000000000001DLL;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x7865546E69616C70;
    if (a1 == 7)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000032;
    }

    if (a1 == 4)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD000000000000021;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_214123728@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214364E64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214123750(uint64_t a1)
{
  v2 = sub_2142EE9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21412378C(uint64_t a1)
{
  v2 = sub_2142EE9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmojiTapBack.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v127 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A80, &qword_2146F4660);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EE9B0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v77 = v7;
  v78 = v4;
  v79 = v5;
  v8 = v127;
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
    sub_2140537E4(*(v9 + 56) + 32 * v12, &v91);

    if (swift_dynamicCast())
    {
      v14 = v80;
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

  LOBYTE(v80) = 0;
  sub_2142EEA04();
  sub_2146DA1C8();
  v76 = v14;
  v15 = v91;
  LOBYTE(v91) = 1;
  v16 = sub_2146DA168();
  v18 = v17;
  v74 = v15;
  v75 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v80) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v73 = v18;
  v20 = v91;
  v19 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v80) = 3;
  sub_2142E50D0();
  sub_2146DA1C8();
  v71 = v20;
  v72 = v19;
  v23 = v91;
  v22 = v92;
  LOBYTE(v91) = 4;
  *&v70 = sub_2146DA168();
  *(&v70 + 1) = v24;
  v68 = v23;
  v69 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v80) = 5;
  sub_2142E15CC();
  sub_2146DA1C8();
  v25 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  v119 = 7;
  sub_2142ECFA4();
  sub_2146DA1C8();
  v116 = v122;
  v117 = v123;
  v118 = v124;
  v114 = v120;
  v115 = v121;
  v113 = 8;
  v26 = sub_2146DA168();
  *(&v59 + 1) = v27;
  v60 = v25;
  *&v59 = v26;
  *&v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v28 = swift_allocObject();
  v63 = xmmword_2146E9BF0;
  *(v28 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = 1;
  *(v29 + 16) = sub_21438F758;
  *(v29 + 24) = v30;
  *(v28 + 32) = v29;
  sub_213FB2E54(&v114, &v91, &qword_27C904FD8, &qword_2146F0C50);
  sub_214042B80(v28, &v91);
  v67 = v92;
  v57 = v93;
  v64 = v94;
  v65 = v91;
  v66 = v95;
  v31 = swift_allocObject();
  *(v31 + 16) = v63;
  *(v31 + 32) = sub_2142E0AD0();
  sub_2140433DC(v31, &v80);
  *&v112[23] = v115;
  *&v112[39] = v116;
  *&v112[55] = v117;
  *&v112[71] = v118;
  v62 = v80;
  *&v63 = v81;
  v61 = BYTE8(v81);
  *&v112[7] = v114;
  v80 = v70;
  LOBYTE(v88) = v66;
  v91 = 0xD000000000000023;
  v92 = 0x800000021478DE60;
  v58 = 0x800000021478DE60;
  v93 = 0xD00000000000001CLL;
  v94 = 0x800000021478A360;

  v32 = v65(&v80, &v88, &v91);
  v33 = v58;
  v56 = a1;
  if (v32)
  {

    v88 = v62;
    v89 = v63;
    v90 = v61;

    sub_2140325F8(v60, v76, 0xD00000000000002ELL, 0x800000021478DE90, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB2DF4(&v114, &qword_27C904FD8, &qword_2146F0C50);
    (*(v79 + 8))(v77, v78);
    v44 = v88;
    v78 = *(&v88 + 1);
    v79 = v88;
    v45 = v89;
    v77 = v89;
    v46 = v90;

    LOBYTE(v80) = v74;
    *(&v80 + 1) = v126[0];
    DWORD1(v80) = *(v126 + 3);
    *(&v80 + 1) = v75;
    *&v81 = v73;
    *(&v81 + 1) = v71;
    *&v82 = v72;
    *(&v82 + 1) = v68;
    *&v83 = v69;
    *(&v83 + 1) = v65;
    *v84 = v67;
    *&v84[8] = v70;
    v84[24] = v66;
    *&v84[28] = *&v125[3];
    *&v84[25] = *v125;
    v85 = v44;
    *&v86[0] = v45;
    BYTE8(v86[0]) = v46;
    *(&v86[2] + 9) = *&v112[32];
    *(&v86[3] + 9) = *&v112[48];
    *(&v86[4] + 9) = *&v112[64];
    *(v86 + 9) = *v112;
    *(&v86[1] + 9) = *&v112[16];
    v47 = v59;
    *(&v86[5] + 1) = *&v112[79];
    v87 = v59;
    v48 = v86[2];
    v8[8] = v86[1];
    v8[9] = v48;
    v49 = v81;
    *v8 = v80;
    v8[1] = v49;
    v50 = *&v84[16];
    v8[4] = *v84;
    v8[5] = v50;
    v51 = v83;
    v8[2] = v82;
    v8[3] = v51;
    v52 = v86[4];
    v8[10] = v86[3];
    v8[11] = v52;
    v53 = v86[0];
    v8[6] = v85;
    v8[7] = v53;
    v54 = v87;
    v8[12] = v86[5];
    v8[13] = v54;
    sub_2142EEA58(&v80, &v91);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v108 = *&v112[32];
    v109 = *&v112[48];
    *v110 = *&v112[64];
    v106 = *v112;
    LOBYTE(v91) = v74;
    *(&v91 + 1) = v126[0];
    HIDWORD(v91) = *(v126 + 3);
    v92 = v75;
    v93 = v73;
    v94 = v71;
    v95 = v72;
    v96 = v68;
    v97 = v69;
    v98 = v65;
    v99 = v67;
    v100 = v70;
    v101 = v66;
    *&v102[3] = *&v125[3];
    *v102 = *v125;
    *&v103 = v79;
    *(&v103 + 1) = v78;
    v104 = v77;
    v105 = v46;
    v107 = *&v112[16];
    *&v110[15] = *&v112[79];
    v111 = v47;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000023;
    v34[1] = v33;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    v35 = v73;
    v37 = v77;
    v36 = v78;
    v38 = v56;
    sub_213FB2DF4(&v114, &qword_27C904FD8, &qword_2146F0C50);
    (*(v79 + 8))(v37, v36);
    v39 = v64;

    v40 = v67;

    v41 = v57;
    v42 = v72;
    v43 = v74;
    __swift_destroy_boxed_opaque_existential_1(v38);
    *&v110[15] = *&v112[79];
    v103 = v62;
    v107 = *&v112[16];
    v106 = *v112;
    *v110 = *&v112[64];
    v109 = *&v112[48];
    LOBYTE(v91) = v43;
    *(&v91 + 1) = v126[0];
    HIDWORD(v91) = *(v126 + 3);
    v92 = v75;
    v93 = v35;
    v94 = v71;
    v95 = v42;
    v96 = v68;
    v97 = v69;
    v98 = v65;
    v99 = v40;
    *&v100 = v41;
    *(&v100 + 1) = v39;
    v101 = v66;
    *&v102[3] = *&v125[3];
    *v102 = *v125;
    v104 = v63;
    v105 = v61;
    v108 = *&v112[32];
    v111 = v59;
  }

  return sub_2142EE95C(&v91);
}

uint64_t EmojiTapBack.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906A98, &qword_2146F4668);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v31 = *(v1 + 2);
  v32 = v8;
  v9 = *(v1 + 3);
  v29 = *(v1 + 4);
  v30 = v9;
  v10 = *(v1 + 6);
  *&v27 = *(v1 + 5);
  *(&v27 + 1) = v10;
  v11 = *(v1 + 9);
  v25 = *(v1 + 10);
  v26 = v11;
  v24 = *(v1 + 14);
  v12 = *(v1 + 11);
  v43 = *(v1 + 10);
  v44 = v12;
  v45 = *(v1 + 12);
  v13 = *(v1 + 9);
  v41 = *(v1 + 8);
  v42 = v13;
  v14 = *(v1 + 27);
  v28 = *(v1 + 26);
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_2142EE9B0();
  sub_2146DAA28();
  LOBYTE(v36) = v7;
  LOBYTE(v34[0]) = 0;
  sub_2142EEAB4();
  v19 = v46;
  sub_2146DA388();
  if (v19)
  {
    return (*(v4 + 8))(v6, v18);
  }

  v21 = v29;
  v20 = v30;
  v46 = v14;
  LOBYTE(v36) = 1;
  sub_2146DA328();
  *&v36 = v20;
  *(&v36 + 1) = v21;
  LOBYTE(v34[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v36 = v27;
  LOBYTE(v34[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (v25 && (LOBYTE(v36) = 4, , sub_2146DA328(), , v24))
  {
    *&v36 = v24;
    LOBYTE(v34[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v38 = v43;
    v39 = v44;
    v40 = v45;
    v36 = v41;
    v37 = v42;
    v35 = 7;
    sub_213FB2E54(&v41, v34, &qword_27C904FD8, &qword_2146F0C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
    sub_2142ED0D0();
    sub_2146DA388();
    v34[2] = v38;
    v34[3] = v39;
    v34[4] = v40;
    v34[0] = v36;
    v34[1] = v37;
    sub_213FB2DF4(v34, &qword_27C904FD8, &qword_2146F0C50);
    v33 = 8;
    sub_2146DA328();
    return (*(v4 + 8))(v6, v18);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21412490C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_214328704(a1, a4, type metadata accessor for EncodedAppData.EncodedContent);
  result = type metadata accessor for EncodedAppData(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_214124974()
{
  if (*v0)
  {
    return 0x6F69736E65747865;
  }

  else
  {
    return 0x6D65686353707061;
  }
}

uint64_t sub_2141249BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D65686353707061 && a2 == 0xE900000000000061;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEB0000000064496ELL)
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

uint64_t sub_214124AA4(uint64_t a1)
{
  v2 = sub_2142EEB08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214124AE0(uint64_t a1)
{
  v2 = sub_2142EEB08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214124B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for EncodedAppData.EncodedContent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AA8, &qword_2146F4670);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEB08();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v18;
    v21 = 0;
    sub_214328930(&qword_27C906AB8, type metadata accessor for EncodedAppData.EncodedContent, aIq_0);
    v12 = v19;
    sub_2146DA1C8();
    v20 = 1;
    v14 = sub_2146DA168();
    v16 = v15;
    (*(v10 + 8))(v9, v12);
    sub_214328704(v6, v11, type metadata accessor for EncodedAppData.EncodedContent);
    v17 = (v11 + *(type metadata accessor for EncodedAppData(0) + 20));
    *v17 = v14;
    v17[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214124DA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AC0, &qword_2146F4678);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEB08();
  sub_2146DAA28();
  v8[15] = 0;
  type metadata accessor for EncodedAppData.EncodedContent(0);
  sub_214328930(&qword_27C906AC8, type metadata accessor for EncodedAppData.EncodedContent, byte_2147030C8);
  sub_2146DA388();
  if (!v1)
  {
    type metadata accessor for EncodedAppData(0);
    v8[14] = 1;
    sub_2146DA328();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214124FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
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

uint64_t sub_214125034(uint64_t a1)
{
  v2 = sub_2142EEB5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214125070(uint64_t a1)
{
  v2 = sub_2142EEB5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141250AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AD0, &qword_2146F4680);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEB5C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AE0, &qword_2146F4688);
    sub_2142EEBB0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21412522C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AF8, &qword_2146F4690);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EEB5C();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906AE0, &qword_2146F4688);
  sub_2142EEC88();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ErrorMessage.init(with:type:additionalInfo:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  sub_214328704(a1, a5, type metadata accessor for Metadata);
  result = type metadata accessor for ErrorMessage(0);
  *(a5 + *(result + 20)) = v8;
  v10 = (a5 + *(result + 24));
  *v10 = a3;
  v10[1] = a4;
  return result;
}

uint64_t sub_21412544C()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697469646461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_2141254AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436514C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141254D4(uint64_t a1)
{
  v2 = sub_2142EED60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214125510(uint64_t a1)
{
  v2 = sub_2142EED60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ErrorMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B10, &qword_2146F4698);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EED60();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v19;
    LOBYTE(v21) = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
    sub_2146DA1C8();
    v12 = v6;
    v23 = 1;
    sub_2142EEDB4();
    sub_2146DA1C8();
    v13 = v10;
    LOBYTE(v10) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v23 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v13 + 8))(v9, v20);
    v15 = v21;
    v16 = v22;
    sub_214328704(v12, v11, type metadata accessor for Metadata);
    v17 = type metadata accessor for ErrorMessage(0);
    *(v11 + *(v17 + 20)) = v10;
    v18 = (v11 + *(v17 + 24));
    *v18 = v15;
    v18[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ErrorMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906B28, &qword_2146F46A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EED60();
  sub_2146DAA28();
  LOBYTE(v11) = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for ErrorMessage(0);
    LOBYTE(v11) = *(v3 + *(v9 + 20));
    v12 = 1;
    sub_2142EEE08();
    sub_2146DA388();
    v11 = *(v3 + *(v9 + 24));
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_214125AC4@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214059900;
  *(v9 + 24) = 0;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v38);
  v11 = v38;
  v10 = v39;
  v12 = v41;
  v28 = v40;
  v13 = v42;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000017;
  *(v16 + 24) = 0x800000021478DEC0;
  *(v15 + 16) = sub_2142EEE5C;
  *(v15 + 24) = v16;
  *(v14 + 32) = v15;
  sub_214042B80(v14, &v53);
  v36 = v53;
  v37 = v54;
  v27 = v55;
  v60 = v56;
  v31 = v57;
  v32 = v13;
  v53 = a1;
  v54 = a2;
  v52 = v13;
  v38 = 0xD000000000000016;
  v39 = 0x800000021478DEE0;
  v40 = 0xD00000000000001CLL;
  v41 = 0x800000021478A360;

  v17 = v11(&v53, &v52, &v38);
  if (v33)
  {

    v18 = v28;
    v19 = v31;
    v20 = v10;
  }

  else if (v17)
  {

    v53 = a3;
    v54 = a4;
    v19 = v31;
    v52 = v31;
    v38 = 0xD000000000000016;
    v39 = 0x800000021478DF00;
    v40 = 0xD00000000000001CLL;
    v41 = 0x800000021478A360;

    v21 = v36(&v53, &v52, &v38);
    if (v21)
    {

      result = swift_bridgeObjectRelease_n();
      *a7 = v11;
      *(a7 + 8) = v10;
      *(a7 + 16) = a1;
      *(a7 + 24) = a2;
      *(a7 + 32) = v13;
      *(a7 + 40) = v36;
      *(a7 + 48) = v37;
      *(a7 + 56) = a3;
      *(a7 + 64) = a4;
      *(a7 + 72) = v31;
      *(a7 + 80) = a5;
      *(a7 + 88) = a6;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000016;
    v24[1] = 0x800000021478DF00;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    v12 = a2;
    v18 = a1;
    v20 = v10;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000016;
    v22[1] = 0x800000021478DEE0;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    v20 = v10;
    v18 = v28;
    v19 = v31;
  }

  v38 = v11;
  v39 = v20;
  v40 = v18;
  v41 = v12;
  v42 = v32;
  *v43 = v59[0];
  *&v43[3] = *(v59 + 3);
  v44 = v36;
  v45 = v37;
  v46 = v27;
  v47 = v60;
  v48 = v19;
  *v49 = v58[0];
  *&v49[3] = *(v58 + 3);
  v50 = a5;
  v51 = a6;
  return sub_2142EEE64(&v38);
}

uint64_t sub_214125F54()
{
  v1 = 0x64616F6C796170;
  if (*v0 != 1)
  {
    v1 = 0x614E64726F636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965636E6566;
  }
}

uint64_t sub_214125FB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436526C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214125FDC(uint64_t a1)
{
  v2 = sub_2142EEEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214126018(uint64_t a1)
{
  v2 = sub_2142EEEB8();

  return MEMORY[0x2821FE720](a1, v2);
}