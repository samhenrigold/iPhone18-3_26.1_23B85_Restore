unint64_t sub_1E680DEA0()
{
  result = qword_1ED098CB0;
  if (!qword_1ED098CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098CB0);
  }

  return result;
}

uint64_t sub_1E680DF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DynamicBrickView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v17 - v11;
  (*(v8 + 16))(&v17 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v8 + 32))(v14 + v13, v12, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8, &unk_1E68BF090);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v17 = sub_1E68B1D60();
  v18 = v15;
  sub_1E68B1D70();
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();

  v17 = v19;
  v18 = v20;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
}

uint64_t sub_1E680E164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v19[0] = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v19 - v13;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v15 = sub_1E68B2140();
  v21[0] = 0;
  sub_1E680E43C(v7, a3, a4, v27);
  memcpy(v24, v27, 0x142uLL);
  memcpy(v25, v27, 0x142uLL);
  sub_1E67612FC(v24, v26, &qword_1ED098CD0, &qword_1E68BF338);
  sub_1E6744A10(v25, &qword_1ED098CD0, &qword_1E68BF338);
  memcpy(&v23[7], v24, 0x142uLL);
  v16 = v21[0];
  LOBYTE(v7) = sub_1E68B2500();
  v27[0] = 0;
  v26[0] = v15;
  LOBYTE(v26[1]) = v16;
  memcpy(&v26[1] + 1, v23, 0x149uLL);
  LOBYTE(v26[22]) = v7;
  *(&v26[22] + 1) = 0x4028000000000000;
  v26[23] = xmmword_1E68BF070;
  *&v26[24] = 0x4030000000000000;
  BYTE8(v26[24]) = 0;
  (*(v8 + 16))(v10, v14, a3);
  v22[0] = v10;
  memcpy(v21, v26, 0x189uLL);
  v22[1] = v21;
  sub_1E67612FC(v26, v27, &qword_1ED098CA8, &unk_1E68BF090);
  v20[0] = a3;
  v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098CA8, &unk_1E68BF090);
  v19[1] = a4;
  v19[2] = sub_1E6811550();
  sub_1E6848F14(v22, 2uLL, v20);
  sub_1E6744A10(v26, &qword_1ED098CA8, &unk_1E68BF090);
  v17 = *(v8 + 8);
  v17(v14, a3);
  memcpy(v27, v21, 0x189uLL);
  sub_1E6744A10(v27, &qword_1ED098CA8, &unk_1E68BF090);
  return (v17)(v10, a3);
}

void *sub_1E680E43C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(a1 + *(type metadata accessor for DynamicBrickView(0, a3, a4, a4) + 40));
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v18 = sub_1E68B21D0();
      v41 = 0;
      sub_1E6810204(a1, a3, a4, __dst);
      v48 = __dst[3];
      v49 = __dst[4];
      v50[0] = __dst[5];
      *(v50 + 9) = *(&__dst[5] + 9);
      v45 = __dst[0];
      v46 = __dst[1];
      v47 = __dst[2];
      v26[0] = __dst[0];
      v26[1] = __dst[1];
      v26[2] = __dst[2];
      v26[3] = __dst[3];
      v26[4] = __dst[4];
      v26[5] = __dst[5];
      *(&v26[5] + 9) = *(&__dst[5] + 9);
      sub_1E67612FC(&v45, v44, &qword_1ED098D98, &qword_1E68BF3A0);
      sub_1E6744A10(v26, &qword_1ED098D98, &qword_1E68BF3A0);
      *(&v40[3] + 7) = v48;
      *(&v40[4] + 7) = v49;
      *(&v40[5] + 7) = v50[0];
      v40[6] = *(v50 + 9);
      *(v40 + 7) = v45;
      *(&v40[1] + 7) = v46;
      *(&v40[2] + 7) = v47;
      v13 = v41;
      sub_1E68B1C60();
      sub_1E68B2E80();
      sub_1E68B1F30();
      *(&v38[3] + 7) = v30;
      *(&v38[4] + 7) = v31;
      *(&v38[5] + 7) = v32;
      *(&v38[6] + 7) = v33[0];
      *(v38 + 7) = v27;
      *(&v38[1] + 7) = v28;
      *(&v38[2] + 7) = v29;
      v23[0] = v18;
      LOBYTE(v23[1]) = v13;
      *(&v23[4] + 1) = v40[3];
      *(&v23[5] + 1) = v40[4];
      *(&v23[6] + 1) = v40[5];
      *(&v23[7] + 1) = v40[6];
      *(&v23[1] + 1) = v40[0];
      *(&v23[2] + 1) = v40[1];
      *(&v23[3] + 1) = v40[2];
      *(&v23[11] + 1) = v38[3];
      *(&v23[10] + 1) = v38[2];
      *(&v23[9] + 1) = v38[1];
      *(&v23[8] + 1) = v38[0];
      *&v23[15] = *(&v33[0] + 1);
      *(&v23[14] + 1) = v38[6];
      *(&v23[13] + 1) = v38[5];
      *(&v23[12] + 1) = v38[4];
      __src[2] = v23[2];
      __src[3] = v23[3];
      __src[0] = v18;
      __src[1] = v23[1];
      __src[6] = v23[6];
      __src[7] = v23[7];
      __src[4] = v23[4];
      __src[5] = v23[5];
      __src[10] = v23[10];
      __src[11] = v23[11];
      __src[8] = v23[8];
      __src[9] = v23[9];
      *&__src[15] = *&v23[15];
      __src[13] = v23[13];
      __src[14] = v23[14];
      __src[12] = v23[12];
      sub_1E6744B38(__src);
      __dst[12] = __src[12];
      __dst[13] = __src[13];
      __dst[14] = __src[14];
      *(&__dst[14] + 9) = *(&__src[14] + 9);
      __dst[8] = __src[8];
      __dst[9] = __src[9];
      __dst[10] = __src[10];
      __dst[11] = __src[11];
      __dst[4] = __src[4];
      __dst[5] = __src[5];
      __dst[6] = __src[6];
      __dst[7] = __src[7];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      __dst[3] = __src[3];
      v11 = &qword_1ED098D00;
      v12 = &qword_1E68BF358;
      sub_1E67612FC(v23, v44, &qword_1ED098D00, &qword_1E68BF358);
    }

    else
    {
      v15 = sub_1E68B21C0();
      v42[0] = 1;
      sub_1E6810470(a1, a3, a4, __dst);
      v31 = __dst[4];
      v32 = __dst[5];
      v33[0] = __dst[6];
      *(v33 + 9) = *(&__dst[6] + 9);
      v27 = __dst[0];
      v28 = __dst[1];
      v29 = __dst[2];
      v30 = __dst[3];
      v38[0] = __dst[0];
      v38[1] = __dst[1];
      v38[2] = __dst[2];
      v38[3] = __dst[3];
      v38[4] = __dst[4];
      v38[5] = __dst[5];
      v38[6] = __dst[6];
      *(&v38[6] + 9) = *(&__dst[6] + 9);
      sub_1E67612FC(&v27, v44, &qword_1ED098CF0, &qword_1E68BF348);
      sub_1E6744A10(v38, &qword_1ED098CF0, &qword_1E68BF348);
      *(&v43[4] + 7) = v31;
      *(&v43[5] + 7) = v32;
      *(&v43[6] + 7) = v33[0];
      v43[7] = *(v33 + 9);
      *(v43 + 7) = v27;
      *(&v43[1] + 7) = v28;
      *(&v43[2] + 7) = v29;
      *(&v43[3] + 7) = v30;
      v16 = v42[0];
      sub_1E68B1C60();
      sub_1E68B2E80();
      sub_1E68B1C50();
      *(__dst + 7) = v26[0];
      *(&__dst[1] + 7) = v26[1];
      *(&__dst[2] + 7) = v26[2];
      v23[0] = v15;
      LOBYTE(v23[1]) = v16;
      *(&v23[5] + 1) = v43[4];
      *(&v23[6] + 1) = v43[5];
      *(&v23[7] + 1) = v43[6];
      *(&v23[8] + 1) = v43[7];
      *(&v23[1] + 1) = v43[0];
      *(&v23[2] + 1) = v43[1];
      *(&v23[3] + 1) = v43[2];
      *(&v23[4] + 1) = v43[3];
      *&v23[12] = *(&v26[2] + 1);
      *(&v23[11] + 1) = __dst[2];
      *(&v23[10] + 1) = __dst[1];
      *(&v23[9] + 1) = __dst[0];
      __src[6] = v23[6];
      __src[7] = v23[7];
      __src[2] = v23[2];
      __src[3] = v23[3];
      __src[4] = v23[4];
      __src[5] = v23[5];
      __src[0] = v15;
      __src[1] = v23[1];
      __src[8] = v23[8];
      __src[9] = v23[9];
      __src[10] = v23[10];
      __src[11] = v23[11];
      *&__src[12] = *&v23[12];
      sub_1E6744AF8(__src);
      __dst[12] = __src[12];
      __dst[13] = __src[13];
      __dst[14] = __src[14];
      *(&__dst[14] + 9) = *(&__src[14] + 9);
      __dst[8] = __src[8];
      __dst[9] = __src[9];
      __dst[10] = __src[10];
      __dst[11] = __src[11];
      __dst[4] = __src[4];
      __dst[5] = __src[5];
      __dst[6] = __src[6];
      __dst[7] = __src[7];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      __dst[3] = __src[3];
      v11 = &qword_1ED098CF8;
      v12 = &qword_1E68BF350;
      sub_1E67612FC(v23, v44, &qword_1ED098CF8, &qword_1E68BF350);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098D00, &qword_1E68BF358);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098CF8, &qword_1E68BF350);
    sub_1E6811608();
    sub_1E68116C0();
    sub_1E68B2210();
    v44[12] = *&v22[192];
    v44[13] = *&v22[208];
    v44[14] = *&v22[224];
    *(&v44[14] + 9) = *&v22[233];
    v44[8] = *&v22[128];
    v44[9] = *&v22[144];
    v44[10] = *&v22[160];
    v44[11] = *&v22[176];
    v44[4] = *&v22[64];
    v44[5] = *&v22[80];
    v44[6] = *&v22[96];
    v44[7] = *&v22[112];
    v44[0] = *v22;
    v44[1] = *&v22[16];
    v44[2] = *&v22[32];
    v44[3] = *&v22[48];
    sub_1E6811778(v44);
  }

  else
  {
    if (v8)
    {
      v19 = sub_1E68B21C0();
      v41 = 0;
      sub_1E680F350(a1, a3, a4, __dst);
      v34 = __dst[8];
      v35 = __dst[9];
      v36 = __dst[10];
      v31 = __dst[4];
      v32 = __dst[5];
      v33[0] = __dst[6];
      v33[1] = __dst[7];
      v27 = __dst[0];
      v28 = __dst[1];
      v29 = __dst[2];
      v30 = __dst[3];
      v38[8] = __dst[8];
      v38[9] = __dst[9];
      v38[10] = __dst[10];
      v38[4] = __dst[4];
      v38[5] = __dst[5];
      v38[6] = __dst[6];
      v38[7] = __dst[7];
      v38[0] = __dst[0];
      v38[1] = __dst[1];
      v37 = __dst[11];
      v39 = __dst[11];
      v38[2] = __dst[2];
      v38[3] = __dst[3];
      sub_1E67612FC(&v27, v44, &qword_1ED098DA0, &qword_1E68BF3A8);
      sub_1E6744A10(v38, &qword_1ED098DA0, &qword_1E68BF3A8);
      *(&v25[8] + 7) = v34;
      *(&v25[9] + 7) = v35;
      *(&v25[10] + 7) = v36;
      *(&v25[4] + 7) = v31;
      *(&v25[5] + 7) = v32;
      *(&v25[6] + 7) = v33[0];
      *(&v25[7] + 7) = v33[1];
      *(v25 + 7) = v27;
      *(&v25[1] + 7) = v28;
      *(&v25[2] + 7) = v29;
      *(&v25[11] + 7) = v37;
      *(&v25[3] + 7) = v30;
      v14 = v41;
      sub_1E68B2E80();
      sub_1E68B1F30();
      *(&v26[3] + 6) = v48;
      *(&v26[4] + 6) = v49;
      *(&v26[5] + 6) = v50[0];
      *(&v26[6] + 6) = v50[1];
      *(v26 + 6) = v45;
      *(&v26[1] + 6) = v46;
      *(&v26[2] + 6) = v47;
      *(&v23[9] + 1) = v25[8];
      *(&v23[10] + 1) = v25[9];
      *(&v23[11] + 1) = v25[10];
      *(&v23[11] + 10) = *(&v25[10] + 9);
      *(&v23[5] + 1) = v25[4];
      *(&v23[6] + 1) = v25[5];
      *(&v23[7] + 1) = v25[6];
      *(&v23[8] + 1) = v25[7];
      *(&v23[1] + 1) = v25[0];
      *(&v23[2] + 1) = v25[1];
      *(&v23[3] + 1) = v25[2];
      *(&v23[4] + 1) = v25[3];
      *(&v23[16] + 10) = v26[4];
      *(&v23[17] + 10) = v26[5];
      *(&v23[18] + 10) = v26[6];
      *(&v23[12] + 10) = v26[0];
      *(&v23[13] + 10) = v26[1];
      *(&v23[14] + 10) = v26[2];
      v23[0] = v19;
      LOBYTE(v23[1]) = v14;
      *(&v23[19] + 1) = *(&v50[1] + 1);
      *(&v23[15] + 10) = v26[3];
      memcpy(__src, v23, 0x140uLL);
      sub_1E6811A0C(__src);
      memcpy(__dst, __src, 0x141uLL);
      v11 = &qword_1ED098D78;
      v12 = &qword_1E68BF390;
      sub_1E67612FC(v23, v44, &qword_1ED098D78, &qword_1E68BF390);
    }

    else
    {
      v9 = sub_1E68B21C0();
      v42[0] = 1;
      sub_1E680F13C(a1, a3, a4, __dst);
      v31 = __dst[4];
      v32 = __dst[5];
      v33[0] = __dst[6];
      *(v33 + 9) = *(&__dst[6] + 9);
      v27 = __dst[0];
      v28 = __dst[1];
      v29 = __dst[2];
      v30 = __dst[3];
      v38[0] = __dst[0];
      v38[1] = __dst[1];
      v38[2] = __dst[2];
      v38[3] = __dst[3];
      v38[4] = __dst[4];
      v38[5] = __dst[5];
      v38[6] = __dst[6];
      *(&v38[6] + 9) = *(&__dst[6] + 9);
      sub_1E67612FC(&v27, v44, &qword_1ED098DA8, &qword_1E68BF3B0);
      sub_1E6744A10(v38, &qword_1ED098DA8, &qword_1E68BF3B0);
      *&v21[71] = v31;
      *&v21[87] = v32;
      *&v21[103] = v33[0];
      *&v21[112] = *(v33 + 9);
      *&v21[7] = v27;
      *&v21[23] = v28;
      *&v21[39] = v29;
      *&v21[55] = v30;
      v10 = v42[0];
      sub_1E68B1C60();
      sub_1E68B2E80();
      sub_1E68B1C50();
      *(__dst + 7) = v26[0];
      *(&__dst[1] + 7) = v26[1];
      *(&__dst[2] + 7) = v26[2];
      v23[0] = v9;
      LOBYTE(v23[1]) = v10;
      *(&v23[5] + 1) = *&v21[64];
      *(&v23[6] + 1) = *&v21[80];
      *(&v23[7] + 1) = *&v21[96];
      *(&v23[8] + 1) = *&v21[112];
      *(&v23[1] + 1) = *v21;
      *(&v23[2] + 1) = *&v21[16];
      *(&v23[3] + 1) = *&v21[32];
      *(&v23[4] + 1) = *&v21[48];
      *&v23[12] = *(&v26[2] + 1);
      *(&v23[11] + 1) = __dst[2];
      *(&v23[10] + 1) = __dst[1];
      *(&v23[9] + 1) = __dst[0];
      __src[6] = v23[6];
      __src[7] = v23[7];
      __src[2] = v23[2];
      __src[3] = v23[3];
      __src[4] = v23[4];
      __src[5] = v23[5];
      __src[0] = v9;
      __src[1] = v23[1];
      __src[8] = v23[8];
      __src[9] = v23[9];
      __src[10] = v23[10];
      __src[11] = v23[11];
      *&__src[12] = *&v23[12];
      sub_1E6811A20(__src);
      memcpy(__dst, __src, 0x141uLL);
      v11 = &qword_1ED098D58;
      v12 = &qword_1E68BF380;
      sub_1E67612FC(v23, v44, &qword_1ED098D58, &qword_1E68BF380);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098D58, &qword_1E68BF380);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098D78, &qword_1E68BF390);
    sub_1E6811810();
    sub_1E68118C8();
    sub_1E68B2210();
    memcpy(v44, v22, 0x141uLL);
    sub_1E6811A18(v44);
  }

  memcpy(__dst, v44, 0x142uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098D38, &qword_1E68BF370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098D40, &qword_1E68BF378);
  sub_1E6811784();
  sub_1E6811980();
  sub_1E68B2210();
  sub_1E6744A10(v23, v11, v12);
  memcpy(__dst, v42, 0x142uLL);
  return memcpy(a5, __dst, 0x142uLL);
}

uint64_t sub_1E680F13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E68B2140();
  v18[0] = 0;
  sub_1E6810338(a1, a2, a3, v9, &v32);
  v24 = *&v33[16];
  v25 = *&v33[32];
  v26 = *&v33[48];
  v27 = v33[64];
  v22 = v32;
  v23 = *v33;
  v29 = v33[64];
  v28[2] = *&v33[16];
  v28[3] = *&v33[32];
  v28[4] = *&v33[48];
  v28[0] = v32;
  v28[1] = *v33;
  sub_1E67612FC(&v22, &v30, &qword_1ED098DB0, &qword_1E68BF3B8);
  sub_1E6744A10(v28, &qword_1ED098DB0, &qword_1E68BF3B8);
  *&v21[39] = v24;
  *&v21[55] = v25;
  *&v21[71] = v26;
  v21[87] = v27;
  *&v21[7] = v22;
  *&v21[23] = v23;
  v20 = 0;
  v10 = *&v21[80];
  *&v31[81] = *&v21[80];
  *(a4 + 8) = 0;
  v11 = v18[0];
  v30 = v8;
  v31[0] = v18[0];
  *&v31[1] = *v21;
  *&v31[17] = *&v21[16];
  *&v31[65] = *&v21[64];
  *&v31[49] = *&v21[48];
  *&v31[33] = *&v21[32];
  *&v19[39] = *&v31[16];
  *&v19[23] = *v31;
  *&v19[7] = v8;
  *&v19[96] = *&v31[73];
  *&v19[87] = *&v31[64];
  *&v19[71] = *&v31[48];
  *&v19[55] = *&v31[32];
  *a4 = 0;
  v12 = *v19;
  v13 = *&v19[16];
  v14 = *&v19[48];
  *(a4 + 41) = *&v19[32];
  *(a4 + 25) = v13;
  *(a4 + 9) = v12;
  v15 = *&v19[64];
  v16 = *&v19[80];
  *(a4 + 105) = *&v19[96];
  *(a4 + 89) = v16;
  *(a4 + 73) = v15;
  *(a4 + 57) = v14;
  v32 = v8;
  v33[0] = v11;
  *&v33[17] = *&v21[16];
  *&v33[1] = *v21;
  v35 = v10;
  v34 = *&v21[64];
  *&v33[49] = *&v21[48];
  *&v33[33] = *&v21[32];
  sub_1E67612FC(&v30, v18, &qword_1ED098D98, &qword_1E68BF3A0);
  return sub_1E6744A10(&v32, &qword_1ED098D98, &qword_1E68BF3A0);
}

double sub_1E680F350@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for DynamicBrickView(0, a3, a4, a4);
  v9 = (a1 + *(v8 + 52));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  if (v13)
  {
    v14 = (a1 + *(v8 + 36));
    if (v14[3])
    {
      v15 = v12;
      v48 = a1;
      v16 = v14[1];
      v17 = v14[2];
      v18 = *v14;
      v49 = v10;
      v19 = v14[3];
      v20 = v10;
      sub_1E673F228(v10, v11, v15, v13);
      sub_1E673F228(v18, v16, v17, v19);
      v21 = sub_1E68B21C0();
      v22 = v11;
      v50 = v11;
      v23 = v21;
      LOBYTE(v115) = 0;
      sub_1E680FFBC(v20, v22, v15 & 1, v13, v48, a3, a4, v143);
      v73 = *&v143[32];
      v74 = *&v143[48];
      v75 = *&v143[64];
      v76 = *&v143[80];
      v71 = *v143;
      v72 = *&v143[16];
      v82 = *&v143[80];
      v79 = *&v143[32];
      v80 = *&v143[48];
      v81 = *&v143[64];
      v77 = *v143;
      v78 = *&v143[16];
      sub_1E67612FC(&v71, &v132, &qword_1ED098DF0, &qword_1E68BF450);
      sub_1E6744A10(&v77, &qword_1ED098DF0, &qword_1E68BF450);
      *&v143[87] = v76;
      *&v143[71] = v75;
      *&v143[55] = v74;
      *&v143[39] = v73;
      *&v143[23] = v72;
      *&v143[7] = v71;
      *&v83[49] = *&v143[32];
      *&v83[65] = *&v143[48];
      *&v83[81] = *&v143[64];
      *&v83[96] = *&v143[79];
      *&v83[17] = *v143;
      *v83 = v23;
      v83[16] = v115;
      *&v83[33] = *&v143[16];
      KeyPath = swift_getKeyPath();
      v25 = swift_getKeyPath();
      v143[0] = v17 & 1;
      *&v84 = v18;
      *(&v84 + 1) = v16;
      LOBYTE(v85) = v17 & 1;
      *(&v85 + 1) = v19;
      *&v86 = KeyPath;
      *(&v86 + 1) = 2;
      LOBYTE(v87) = 0;
      *(&v87 + 1) = v25;
      v68 = *&v83[64];
      v69 = *&v83[80];
      v70 = *&v83[96];
      v64 = *v83;
      v65 = *&v83[16];
      v66 = *&v83[32];
      v67 = *&v83[48];
      v105[3] = v87;
      v105[2] = v86;
      v105[0] = v84;
      v105[1] = v85;
      v89 = *v83;
      v90 = *&v83[16];
      v95 = *&v83[96];
      v93 = *&v83[64];
      v94 = *&v83[80];
      v91 = *&v83[32];
      v92 = *&v83[48];
      LOBYTE(v132) = 0;
      v88 = 1;
      v106 = 1;
      v53 = *v83;
      v54 = *&v83[16];
      v57 = *&v83[64];
      v58 = *&v83[80];
      v55 = *&v83[32];
      v56 = *&v83[48];
      v97 = 1;
      v96[2] = v86;
      v96[3] = v87;
      v96[0] = v84;
      v96[1] = v85;
      v59 = *&v83[96];
      v60 = v84;
      v62 = v86;
      v63 = v87;
      v61 = v85;
      *&v98[32] = *&v83[32];
      *&v98[48] = *&v83[48];
      *v98 = *v83;
      *&v98[16] = *&v83[16];
      v100 = v84;
      v99 = *&v83[96];
      *&v98[80] = *&v83[80];
      *&v98[64] = *&v83[64];
      v104 = 1;
      v103 = v87;
      v102 = v86;
      v101 = v85;
      sub_1E673F26C(v18, v16, v17 & 1);

      sub_1E67612FC(v83, v143, &qword_1ED098DF8, &qword_1E68BF458);
      sub_1E67612FC(&v84, v143, &qword_1ED098DE8, &qword_1E68BF448);
      sub_1E67612FC(&v89, v143, &qword_1ED098DF8, &qword_1E68BF458);
      sub_1E67612FC(v96, v143, &qword_1ED098DE8, &qword_1E68BF448);
      sub_1E6744A10(v105, &qword_1ED098DE8, &qword_1E68BF448);
      v111 = v68;
      v112 = v69;
      v113 = v70;
      v107 = v64;
      v108 = v65;
      v110 = v67;
      v109 = v66;
      sub_1E6744A10(&v107, &qword_1ED098DF8, &qword_1E68BF458);
      *v140 = v61;
      *&v140[16] = v62;
      v141 = v63;
      LOBYTE(v142) = 1;
      v136 = v57;
      v137 = v58;
      v138 = v59;
      v139 = v60;
      v132 = v53;
      v133 = v54;
      v134 = v55;
      v135 = v56;
      sub_1E6811A34(&v132);
      v146 = *v140;
      v147 = *&v140[16];
      v148 = v141;
      v149 = v142;
      *&v143[64] = v136;
      *&v143[80] = v137;
      v144 = v138;
      v145 = v139;
      *v143 = v132;
      *&v143[16] = v133;
      *&v143[32] = v134;
      *&v143[48] = v135;
      sub_1E67612FC(v98, &v115, &qword_1ED098E00, &unk_1E68BF460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098DC8, &qword_1E68BF438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098DD0, &qword_1E68BF440);
      v26 = MEMORY[0x1E6981F48];
      sub_1E673F530(&qword_1ED098DD8, &qword_1ED098DC8, &qword_1E68BF438, MEMORY[0x1E6981F48]);
      sub_1E673F530(&qword_1ED098DE0, &qword_1ED098DD0, &qword_1E68BF440, v26);
      sub_1E68B2210();
      sub_1E673F0D4(v49, v50, v15 & 1);

      sub_1E6744A10(v98, &qword_1ED098E00, &unk_1E68BF460);
      sub_1E673F0D4(v18, v16, v17 & 1);

      sub_1E6744A10(&v84, &qword_1ED098DE8, &qword_1E68BF448);
      sub_1E6744A10(v83, &qword_1ED098DF8, &qword_1E68BF458);
      v146 = v123;
      v147 = v124;
      v148 = v125;
      v149 = v126;
      *&v143[64] = v119;
      *&v143[80] = v120;
      v144 = v121;
      v145 = v122;
      *v143 = v115;
      *&v143[16] = v116;
      v27 = v117;
      v28 = v118;
      goto LABEL_10;
    }

    v29 = v8;
    v30 = v10;
    sub_1E673F26C(v10, v11, v12 & 1);

    sub_1E673F0D4(v30, v11, v12 & 1);

    v31 = swift_getKeyPath();
    v32 = swift_getKeyPath();
    v10 = v30;
    v33 = v32;
    v8 = v29;
    v143[0] = v12 & 1;
    LOBYTE(v132) = 0;
    *v83 = v30;
    *&v83[8] = v11;
    v83[16] = v12 & 1;
    *&v83[24] = v13;
    *&v83[32] = v31;
    *&v83[40] = 2;
    v83[48] = 0;
    *&v83[56] = v33;
    v83[64] = 1;
  }

  else
  {
    memset(v83, 0, 65);
  }

  v34 = (a1 + *(v8 + 36));
  v35 = v34[3];
  if (v35)
  {
    v51 = v11;
    v37 = v34[1];
    v36 = v34[2];
    v38 = v12;
    v39 = *v34;
    v40 = v10;
    LOBYTE(v107) = 0;
    *&v132 = v39;
    *(&v132 + 1) = v37;
    LOBYTE(v133) = v36 & 1;
    *(&v133 + 1) = v35;
    *&v134 = swift_getKeyPath();
    *(&v134 + 1) = 2;
    LOBYTE(v135) = 0;
    *(&v135 + 1) = swift_getKeyPath();
    LOBYTE(v136) = 1;
    *&v114[7] = v132;
    v114[71] = 1;
    *&v114[55] = v135;
    *&v114[39] = v134;
    *&v114[23] = v133;
    *v143 = v39;
    *&v143[8] = v37;
    v143[16] = v36 & 1;
    *&v143[24] = v35;
    *&v143[32] = v134;
    *&v143[40] = 2;
    v143[48] = 0;
    *&v143[56] = *(&v135 + 1);
    v143[64] = 1;
    sub_1E673F228(v40, v51, v38, v13);
    sub_1E673F228(v39, v37, v36, v35);
    sub_1E67612FC(&v132, &v115, &qword_1ED098DE8, &qword_1E68BF448);
    sub_1E6744A10(v143, &qword_1ED098DE8, &qword_1E68BF448);
    *v98 = 0;
    v98[8] = 0;
    *&v98[25] = *&v114[16];
    *&v98[41] = *&v114[32];
    *&v98[57] = *&v114[48];
    *&v98[73] = *&v114[64];
    *&v98[9] = *v114;
  }

  else
  {
    sub_1E673F228(v10, v11, v12, v13);
    memset(v98, 0, 81);
  }

  v73 = *&v83[32];
  v74 = *&v83[48];
  v71 = *v83;
  v72 = *&v83[16];
  v111 = *&v98[64];
  v110 = *&v98[48];
  v109 = *&v98[32];
  v107 = *v98;
  v108 = *&v98[16];
  v79 = *&v83[32];
  v80 = *&v83[48];
  v130 = *&v83[48];
  v129 = *&v83[32];
  v77 = *v83;
  v78 = *&v83[16];
  v127 = *v83;
  v128 = *&v83[16];
  v89 = *v98;
  v90 = *&v98[16];
  v92 = *&v98[48];
  v93 = *&v98[64];
  v91 = *&v98[32];
  LOBYTE(v75) = v83[64];
  LOBYTE(v112) = v98[80];
  LOBYTE(v81) = v83[64];
  v131[0] = v83[64];
  LOBYTE(v94) = v98[80];
  *&v131[24] = *&v98[16];
  *&v131[8] = *v98;
  v131[88] = v98[80];
  *&v131[72] = *&v98[64];
  *&v131[56] = *&v98[48];
  *&v131[40] = *&v98[32];
  sub_1E67612FC(v83, v143, &qword_1ED098DB8, &qword_1E68BF428);
  sub_1E67612FC(v98, v143, &qword_1ED098DC0, &qword_1E68BF430);
  sub_1E67612FC(&v77, v143, &qword_1ED098DB8, &qword_1E68BF428);
  sub_1E67612FC(&v89, v143, &qword_1ED098DC0, &qword_1E68BF430);
  sub_1E6744A10(&v107, &qword_1ED098DC0, &qword_1E68BF430);
  v66 = v73;
  v67 = v74;
  LOBYTE(v68) = v75;
  v64 = v71;
  v65 = v72;
  sub_1E6744A10(&v64, &qword_1ED098DB8, &qword_1E68BF428);
  v138 = *&v131[32];
  v139 = *&v131[48];
  *v140 = *&v131[64];
  *&v140[9] = *&v131[73];
  v134 = v129;
  v135 = v130;
  v136 = *v131;
  v137 = *&v131[16];
  v132 = v127;
  v133 = v128;
  sub_1E6811A28(&v132);
  v146 = *v140;
  v147 = *&v140[16];
  v148 = v141;
  v149 = v142;
  *&v143[64] = v136;
  *&v143[80] = v137;
  v144 = v138;
  v145 = v139;
  *v143 = v132;
  *&v143[16] = v133;
  *&v143[32] = v134;
  *&v143[48] = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098DC8, &qword_1E68BF438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098DD0, &qword_1E68BF440);
  v41 = MEMORY[0x1E6981F48];
  sub_1E673F530(&qword_1ED098DD8, &qword_1ED098DC8, &qword_1E68BF438, MEMORY[0x1E6981F48]);
  sub_1E673F530(&qword_1ED098DE0, &qword_1ED098DD0, &qword_1E68BF440, v41);
  sub_1E68B2210();
  sub_1E6744A10(v98, &qword_1ED098DC0, &qword_1E68BF430);
  sub_1E6744A10(v83, &qword_1ED098DB8, &qword_1E68BF428);
  v146 = v123;
  v147 = v124;
  v148 = v125;
  v149 = v126;
  *&v143[64] = v119;
  *&v143[80] = v120;
  v144 = v121;
  v145 = v122;
  *v143 = v115;
  *&v143[16] = v116;
  v27 = v117;
  v28 = v118;
LABEL_10:
  *&v143[32] = v27;
  *&v143[48] = v28;
  v42 = v147;
  *(a5 + 128) = v146;
  *(a5 + 144) = v42;
  *(a5 + 160) = v148;
  *(a5 + 176) = v149;
  v43 = *&v143[80];
  *(a5 + 64) = *&v143[64];
  *(a5 + 80) = v43;
  v44 = v145;
  *(a5 + 96) = v144;
  *(a5 + 112) = v44;
  v45 = *&v143[16];
  *a5 = *v143;
  *(a5 + 16) = v45;
  result = *&v143[32];
  v47 = *&v143[48];
  *(a5 + 32) = *&v143[32];
  *(a5 + 48) = v47;
  return result;
}

CGFloat sub_1E680FFBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v46 = a6;
  v47 = a7;
  v50 = a5;
  v44 = a4;
  v45 = a2;
  v12 = sub_1E68B2230();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v48 = swift_getKeyPath();
  a3 &= 1u;
  v52 = a3;
  v51 = 0;
  sub_1E673F26C(a1, a2, a3);

  sub_1E68B2360();
  sub_1E68B1C70();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = *(v13 + 8);
  v25(v16, v12);
  v53.origin.x = v18;
  v53.origin.y = v20;
  v53.size.width = v22;
  v53.size.height = v24;
  MidX = CGRectGetMidX(v53);
  v28 = type metadata accessor for DynamicBrickView(0, v46, v47, v27);
  v29 = (v50 + *(v28 + 44));
  v30 = MidX - *v29;
  sub_1E68B2360();
  sub_1E68B1C70();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v25(v16, v12);
  v54.origin.x = v32;
  v54.origin.y = v34;
  v54.size.width = v36;
  v54.size.height = v38;
  result = CGRectGetMidY(v54) - v29[1];
  v41 = v44;
  v40 = v45;
  *a8 = a1;
  *(a8 + 8) = v40;
  *(a8 + 16) = a3;
  v42 = KeyPath;
  *(a8 + 24) = v41;
  *(a8 + 32) = v42;
  *(a8 + 40) = 2;
  *(a8 + 48) = 0;
  *(a8 + 56) = v48;
  *(a8 + 64) = 1;
  *(a8 + 72) = v30;
  *(a8 + 80) = result;
  return result;
}

double sub_1E6810204@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E68B2140();
  v22 = 0;
  sub_1E6810338(a1, a2, a3, v9, &v15);
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v28 = v20;
  v23 = v15;
  v24 = v16;
  v30 = v20;
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v29[0] = v15;
  v29[1] = v16;
  sub_1E67612FC(&v23, &v14, &qword_1ED098DB0, &qword_1E68BF3B8);
  sub_1E6744A10(v29, &qword_1ED098DB0, &qword_1E68BF3B8);
  *&v21[39] = v25;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[7] = v23;
  *&v21[23] = v24;
  v10 = *&v21[48];
  *(a4 + 49) = *&v21[32];
  *(a4 + 65) = v10;
  *(a4 + 81) = *&v21[64];
  v12 = *v21;
  result = *&v21[16];
  *(a4 + 33) = *&v21[16];
  v21[87] = v28;
  v13 = v22;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v13;
  *(a4 + 97) = *&v21[80];
  *(a4 + 17) = v12;
  return result;
}

uint64_t sub_1E6810338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = (a1 + *(type metadata accessor for DynamicBrickView(0, a2, a3, a4) + 52));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  *&v19 = v7;
  *(&v19 + 1) = v8;
  *&v20 = v9;
  *(&v20 + 1) = v10;
  *&v21 = KeyPath;
  *(&v21 + 1) = 2;
  LOBYTE(v22) = 0;
  *(&v22 + 1) = v12;
  v23 = 0;
  LOBYTE(v28) = 0;
  v26 = v21;
  v27 = v22;
  v24 = v19;
  v25 = v20;
  v18[72] = 0;
  v13 = v19;
  v14 = v20;
  v15 = v22;
  v16 = v28;
  *(a5 + 32) = v21;
  *(a5 + 48) = v15;
  *a5 = v13;
  *(a5 + 16) = v14;
  *(a5 + 64) = v16;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  v29[0] = v7;
  v29[1] = v8;
  v29[2] = v9;
  v29[3] = v10;
  v29[4] = KeyPath;
  v29[5] = 2;
  v30 = 0;
  v31 = v12;
  v32 = 0;
  sub_1E673F228(v7, v8, v9, v10);
  sub_1E67612FC(&v19, v18, &qword_1ED0981C8, &unk_1E68BB6D0);
  return sub_1E6744A10(v29, &qword_1ED0981C8, &unk_1E68BB6D0);
}

uint64_t sub_1E6810470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E68B2140();
  LOBYTE(v30) = 0;
  sub_1E6810338(a1, a2, a3, v9, &v32);
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37[0];
  v22 = v32;
  v23 = v33;
  v29 = v37[0];
  v28[2] = v34;
  v28[3] = v35;
  v28[4] = v36;
  v28[0] = v32;
  v28[1] = v33;
  sub_1E67612FC(&v22, v38, &qword_1ED098DB0, &qword_1E68BF3B8);
  sub_1E6744A10(v28, &qword_1ED098DB0, &qword_1E68BF3B8);
  *&v21[39] = v24;
  *&v21[55] = v25;
  *&v21[71] = v26;
  v21[87] = v27;
  *&v21[7] = v22;
  *&v21[23] = v23;
  v10 = *&v21[80];
  *&v31[81] = *&v21[80];
  v11 = v30;
  v30 = v8;
  v31[0] = v11;
  v12 = *&v21[32];
  v13 = *v21;
  *&v31[1] = *v21;
  *&v31[17] = *&v21[16];
  v14 = *&v21[48];
  *&v31[65] = *&v21[64];
  *&v31[49] = *&v21[48];
  v15 = *&v21[16];
  *&v31[33] = *&v21[32];
  v32 = v8;
  v33 = *v31;
  *&v37[9] = *&v31[73];
  v36 = *&v31[48];
  *v37 = *&v31[64];
  v34 = *&v31[16];
  v35 = *&v31[32];
  v16 = *v31;
  *a4 = v8;
  *(a4 + 16) = v16;
  v17 = *&v37[16];
  *(a4 + 80) = *v37;
  *(a4 + 96) = v17;
  v18 = v36;
  *(a4 + 48) = v35;
  *(a4 + 64) = v18;
  *(a4 + 32) = v34;
  v20[112] = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  v38[0] = v8;
  v38[1] = 0;
  v39 = v11;
  v41 = v15;
  v40 = v13;
  v45 = v10;
  v44 = *&v21[64];
  v43 = v14;
  v42 = v12;
  sub_1E67612FC(&v30, v20, &qword_1ED098D98, &qword_1E68BF3A0);
  return sub_1E6744A10(v38, &qword_1ED098D98, &qword_1E68BF3A0);
}

uint64_t sub_1E6810664@<X0>(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  v30[1] = a3;
  v4 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8, &unk_1E68BF090);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v8 = sub_1E68B1E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v30 - v15;
  v17 = *(a1 + 4);
  v18 = *(a1 + 40);
  v19 = *(a1 + 41);
  v20 = a1[1];
  v31 = *a1;
  v32 = v20;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  sub_1E68B1A40();
  v22 = v21;
  v23 = *(v4 + 20);
  v24 = *MEMORY[0x1E697F468];
  v25 = sub_1E68B2160();
  (*(*(v25 - 8) + 104))(&v7[v23], v24, v25);
  *v7 = v22;
  *(v7 + 1) = v22;
  v30[4] = swift_getWitnessTable();
  v30[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA660, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v7);
  v27 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v30[2] = WitnessTable;
  v30[3] = v27;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v28 = *(v9 + 8);
  v28(v12, v8);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v28)(v16, v8);
}

uint64_t sub_1E6810A34@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33[1] = a3;
  v4 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8, &unk_1E68BF090);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v8 = sub_1E68B1E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v33 - v15;
  v17 = *(a1 + 4);
  v18 = *(a1 + 40);
  v19 = *(a1 + 41);
  v20 = a1[1];
  v34 = *a1;
  v35 = v20;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v21 = *(v4 + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1E68B2160();
  (*(*(v23 - 8) + 104))(&v7[v21], v22, v23);
  __asm { FMOV            V0.2D, #8.0 }

  *v7 = _Q0;
  v33[4] = swift_getWitnessTable();
  v33[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA660, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v7);
  v30 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v33[2] = WitnessTable;
  v33[3] = v30;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v31 = *(v9 + 8);
  v31(v12, v8);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v31)(v16, v8);
}

void sub_1E6810E0C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E673ED38();
    if (v2 <= 0x3F)
    {
      sub_1E673ED88(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E6810EC8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1E681101C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_1E681120C()
{
  result = qword_1ED098CB8;
  if (!qword_1ED098CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098CB8);
  }

  return result;
}

unint64_t sub_1E6811264()
{
  result = qword_1ED098CC0;
  if (!qword_1ED098CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098CC0);
  }

  return result;
}

unint64_t sub_1E68112BC()
{
  result = qword_1ED098CC8;
  if (!qword_1ED098CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098CC8);
  }

  return result;
}

uint64_t sub_1E681132C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for DynamicBrickView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  (*(*(v5 - 8) + 8))(v7, v5);
  v8 = v7 + *(v6 + 36);
  if (*(v8 + 24))
  {
    sub_1E673F0D4(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = v7 + *(v6 + 52);
  if (*(v9 + 24))
  {
    sub_1E673F0D4(*v9, *(v9 + 8), *(v9 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E68114B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for DynamicBrickView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E680E164(a1, v9, v6, v7, a3);
}

unint64_t sub_1E6811550()
{
  result = qword_1ED098CD8;
  if (!qword_1ED098CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8, &unk_1E68BF090);
    sub_1E673F530(&qword_1ED098CE0, &qword_1ED098CE8, &qword_1E68BF340, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098CD8);
  }

  return result;
}

unint64_t sub_1E6811608()
{
  result = qword_1ED098D08;
  if (!qword_1ED098D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098D00, &qword_1E68BF358);
    sub_1E673F530(&qword_1ED098D10, &qword_1ED098D18, &qword_1E68BF360, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D08);
  }

  return result;
}

unint64_t sub_1E68116C0()
{
  result = qword_1ED098D20;
  if (!qword_1ED098D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CF8, &qword_1E68BF350);
    sub_1E673F530(&qword_1ED098D28, &qword_1ED098D30, &qword_1E68BF368, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D20);
  }

  return result;
}

unint64_t sub_1E6811784()
{
  result = qword_1ED098D48;
  if (!qword_1ED098D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098D38, &qword_1E68BF370);
    sub_1E6811810();
    sub_1E68118C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D48);
  }

  return result;
}

unint64_t sub_1E6811810()
{
  result = qword_1ED098D50;
  if (!qword_1ED098D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098D58, &qword_1E68BF380);
    sub_1E673F530(&qword_1ED098D60, &qword_1ED098D68, &qword_1E68BF388, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D50);
  }

  return result;
}

unint64_t sub_1E68118C8()
{
  result = qword_1ED098D70;
  if (!qword_1ED098D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098D78, &qword_1E68BF390);
    sub_1E673F530(&qword_1ED098D80, &qword_1ED098D88, &qword_1E68BF398, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D70);
  }

  return result;
}

unint64_t sub_1E6811980()
{
  result = qword_1ED098D90;
  if (!qword_1ED098D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098D40, &qword_1E68BF378);
    sub_1E6811608();
    sub_1E68116C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098D90);
  }

  return result;
}

uint64_t sub_1E6811A50()
{
  v1 = *v0;
  v2 = 0x616D536172747865;
  v3 = 0x6D756964656DLL;
  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x72614C6172747865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D73;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
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

uint64_t sub_1E6811B04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6813804(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6811B2C(uint64_t a1)
{
  v2 = sub_1E681262C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811B68(uint64_t a1)
{
  v2 = sub_1E681262C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811BA4(uint64_t a1)
{
  v2 = sub_1E6812680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811BE0(uint64_t a1)
{
  v2 = sub_1E6812680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811C1C(uint64_t a1)
{
  v2 = sub_1E6812824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811C58(uint64_t a1)
{
  v2 = sub_1E6812824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811C94(uint64_t a1)
{
  v2 = sub_1E68126D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811CD0(uint64_t a1)
{
  v2 = sub_1E68126D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811D0C(uint64_t a1)
{
  v2 = sub_1E6812728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811D48(uint64_t a1)
{
  v2 = sub_1E6812728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811D84(uint64_t a1)
{
  v2 = sub_1E681277C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811DC0(uint64_t a1)
{
  v2 = sub_1E681277C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6811DFC(uint64_t a1)
{
  v2 = sub_1E68127D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6811E38(uint64_t a1)
{
  v2 = sub_1E68127D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Bool __swiftcall DynamicSizeClass.shouldOffsetForCarousel(containerSize:)(CGSize containerSize)
{
  v2 = *v1;
  v3 = v2 - 3;
  v4 = v2 >= 2 && containerSize.width > containerSize.height;
  if (v3 >= 3)
  {
    return v4;
  }

  else
  {
    return containerSize.width > containerSize.height;
  }
}

uint64_t DynamicSizeClass.init(canvasWidth:)@<X0>(_BYTE *a1@<X8>, double a2@<D0>)
{
  if (a2 <= 374.0)
  {
    *a1 = 0;
  }

  else if (a2 < 374.0 || a2 > 460.0)
  {
    if (a2 < 461.0 || a2 > 726.0)
    {
      if (a2 < 727.0 || a2 > 981.0)
      {
        if (a2 < 982.0 || a2 > 1194.0)
        {
          if (a2 < 1195.0)
          {
            result = sub_1E68B3910("Fatal error", 11, 2, 0xD000000000000012, 0x80000001E68E2850, "FitnessCanvasUI/DynamicSizeClassTransform.swift", 47, 2, 36, 0);
            __break(1u);
          }

          else
          {
            *a1 = 5;
          }
        }

        else
        {
          *a1 = 4;
        }
      }

      else
      {
        *a1 = 3;
      }
    }

    else
    {
      *a1 = 2;
    }
  }

  else
  {
    *a1 = 1;
  }

  return result;
}

BOOL sub_1E6812024(double a1, double a2)
{
  v3 = *v2;
  v4 = v3 - 3;
  v5 = v3 >= 2 && a1 > a2;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return a1 > a2;
  }
}

uint64_t DynamicSizeClass.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E08, &qword_1E68BF470);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v46 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E10, &qword_1E68BF478);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v43 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E18, &qword_1E68BF480);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v40 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E20, &qword_1E68BF488);
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v37 = &v33 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E28, &qword_1E68BF490);
  v35 = *(v15 - 8);
  v36 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v34 = &v33 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E30, &qword_1E68BF498);
  v33 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E38, &qword_1E68BF4A0);
  v22 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v23);
  v25 = &v33 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E681262C();
  sub_1E68B3BD0();
  v27 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v53 = 3;
      sub_1E6812728();
      v28 = v40;
      v29 = v49;
      sub_1E68B3A30();
      v31 = v41;
      v30 = v42;
    }

    else if (v26 == 4)
    {
      v54 = 4;
      sub_1E68126D4();
      v28 = v43;
      v29 = v49;
      sub_1E68B3A30();
      v31 = v44;
      v30 = v45;
    }

    else
    {
      v55 = 5;
      sub_1E6812680();
      v28 = v46;
      v29 = v49;
      sub_1E68B3A30();
      v31 = v47;
      v30 = v48;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v51 = 1;
      sub_1E68127D0();
      v28 = v34;
      v29 = v49;
      sub_1E68B3A30();
      v31 = v35;
      v30 = v36;
    }

    else
    {
      v52 = 2;
      sub_1E681277C();
      v28 = v37;
      v29 = v49;
      sub_1E68B3A30();
      v31 = v38;
      v30 = v39;
    }

LABEL_12:
    (*(v31 + 8))(v28, v30);
    return (*v27)(v25, v29);
  }

  v50 = 0;
  sub_1E6812824();
  v29 = v49;
  sub_1E68B3A30();
  (*(v33 + 8))(v21, v18);
  return (*v27)(v25, v29);
}

unint64_t sub_1E681262C()
{
  result = qword_1ED098E40;
  if (!qword_1ED098E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E40);
  }

  return result;
}

unint64_t sub_1E6812680()
{
  result = qword_1ED098E48;
  if (!qword_1ED098E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E48);
  }

  return result;
}

unint64_t sub_1E68126D4()
{
  result = qword_1ED098E50;
  if (!qword_1ED098E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E50);
  }

  return result;
}

unint64_t sub_1E6812728()
{
  result = qword_1ED098E58;
  if (!qword_1ED098E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E58);
  }

  return result;
}

unint64_t sub_1E681277C()
{
  result = qword_1ED098E60;
  if (!qword_1ED098E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E60);
  }

  return result;
}

unint64_t sub_1E68127D0()
{
  result = qword_1ED098E68;
  if (!qword_1ED098E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E68);
  }

  return result;
}

unint64_t sub_1E6812824()
{
  result = qword_1ED098E70;
  if (!qword_1ED098E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098E70);
  }

  return result;
}

uint64_t DynamicSizeClass.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E78, &qword_1E68BF4A8);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v62 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E80, &qword_1E68BF4B0);
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v61 = &v46 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E88, &qword_1E68BF4B8);
  v53 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v10);
  v60 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E90, &qword_1E68BF4C0);
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v58 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098E98, &qword_1E68BF4C8);
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098EA0, &qword_1E68BF4D0);
  v47 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098EA8, &unk_1E68BF4D8);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v46 - v26;
  v28 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1E681262C();
  v29 = v63;
  sub_1E68B3BC0();
  if (!v29)
  {
    v30 = v22;
    v46 = v19;
    v63 = v18;
    v32 = v60;
    v31 = v61;
    v33 = v62;
    v34 = sub_1E68B3A10();
    v35 = (2 * *(v34 + 16)) | 1;
    v65 = v34;
    v66 = v34 + 32;
    v67 = 0;
    v68 = v35;
    v36 = sub_1E676F5CC();
    v37 = v27;
    if (v36 == 6 || v67 != v68 >> 1)
    {
      v41 = sub_1E68B3870();
      swift_allocError();
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v43 = &type metadata for DynamicSizeClass;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
      (*(v24 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v69 = v36;
      if (v36 > 2u)
      {
        v45 = v59;
        if (v36 == 3)
        {
          v70 = 3;
          sub_1E6812728();
          sub_1E68B3970();
          (*(v53 + 8))(v32, v48);
        }

        else if (v36 == 4)
        {
          v70 = 4;
          sub_1E68126D4();
          sub_1E68B3970();
          (*(v55 + 8))(v31, v54);
        }

        else
        {
          v70 = 5;
          sub_1E6812680();
          sub_1E68B3970();
          (*(v56 + 8))(v33, v57);
        }

        (*(v24 + 8))(v37, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v36)
        {
          if (v36 == 1)
          {
            v70 = 1;
            sub_1E68127D0();
            v38 = v63;
            sub_1E68B3970();
            v40 = v49;
            v39 = v50;
          }

          else
          {
            v70 = 2;
            sub_1E681277C();
            v38 = v58;
            sub_1E68B3970();
            v40 = v51;
            v39 = v52;
          }

          (*(v40 + 8))(v38, v39);
        }

        else
        {
          v70 = 0;
          sub_1E6812824();
          sub_1E68B3970();
          (*(v47 + 8))(v30, v46);
        }

        (*(v24 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v45 = v59;
      }

      *v45 = v69;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t DynamicSizeClass.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E68130D0(void *a1)
{
  a1[1] = sub_1E6813108();
  a1[2] = sub_1E681315C();
  result = sub_1E68131B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1E6813108()
{
  result = qword_1ED098EB0;
  if (!qword_1ED098EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EB0);
  }

  return result;
}

unint64_t sub_1E681315C()
{
  result = qword_1ED098EB8;
  if (!qword_1ED098EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EB8);
  }

  return result;
}

unint64_t sub_1E68131B0()
{
  result = qword_1ED098EC0;
  if (!qword_1ED098EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EC0);
  }

  return result;
}

unint64_t sub_1E6813208()
{
  result = qword_1ED098EC8;
  if (!qword_1ED098EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EC8);
  }

  return result;
}

unint64_t sub_1E68132E0()
{
  result = qword_1ED098ED0;
  if (!qword_1ED098ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098ED0);
  }

  return result;
}

unint64_t sub_1E6813338()
{
  result = qword_1ED098ED8;
  if (!qword_1ED098ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098ED8);
  }

  return result;
}

unint64_t sub_1E6813390()
{
  result = qword_1ED098EE0;
  if (!qword_1ED098EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EE0);
  }

  return result;
}

unint64_t sub_1E68133E8()
{
  result = qword_1ED098EE8;
  if (!qword_1ED098EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EE8);
  }

  return result;
}

unint64_t sub_1E6813440()
{
  result = qword_1ED098EF0;
  if (!qword_1ED098EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EF0);
  }

  return result;
}

unint64_t sub_1E6813498()
{
  result = qword_1ED098EF8;
  if (!qword_1ED098EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098EF8);
  }

  return result;
}

unint64_t sub_1E68134F0()
{
  result = qword_1ED098F00;
  if (!qword_1ED098F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F00);
  }

  return result;
}

unint64_t sub_1E6813548()
{
  result = qword_1ED098F08;
  if (!qword_1ED098F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F08);
  }

  return result;
}

unint64_t sub_1E68135A0()
{
  result = qword_1ED098F10;
  if (!qword_1ED098F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F10);
  }

  return result;
}

unint64_t sub_1E68135F8()
{
  result = qword_1ED098F18;
  if (!qword_1ED098F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F18);
  }

  return result;
}

unint64_t sub_1E6813650()
{
  result = qword_1ED098F20;
  if (!qword_1ED098F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F20);
  }

  return result;
}

unint64_t sub_1E68136A8()
{
  result = qword_1ED098F28;
  if (!qword_1ED098F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F28);
  }

  return result;
}

unint64_t sub_1E6813700()
{
  result = qword_1ED098F30;
  if (!qword_1ED098F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F30);
  }

  return result;
}

unint64_t sub_1E6813758()
{
  result = qword_1ED098F38;
  if (!qword_1ED098F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F38);
  }

  return result;
}

unint64_t sub_1E68137B0()
{
  result = qword_1ED098F40;
  if (!qword_1ED098F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F40);
  }

  return result;
}

uint64_t sub_1E6813804(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E68B3B00();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t LazyCanvasItemDescriptor.transformed(with:missingPlaceholders:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v65 = a2;
  v76 = a1;
  v5 = *(a3 + 48);
  v6 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v73 = &v62 - v8;
  v9 = *(a3 + 32);
  v10 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v72 = &v62 - v12;
  v13 = *(a3 + 120);
  v14 = *(a3 + 56);
  v81 = *(a3 + 16);
  v82 = v14;
  v83[0] = v81;
  v83[1] = v14;
  *&v84[0] = *(a3 + 72);
  v15 = *&v84[0];
  *(&v84[0] + 1) = v13;
  v16 = type metadata accessor for CanvasItemContent(0, v83);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v69 = &v62 - v18;
  v19 = *(a3 + 40);
  v64 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v77 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 80);
  v25 = *(a3 + 104);
  v24 = *(a3 + 112);
  v83[0] = v81;
  v74 = v9;
  v75 = v5;
  *&v83[1] = v9;
  *(&v83[1] + 1) = v19;
  *&v84[0] = v5;
  *(v84 + 8) = v82;
  v70 = v15;
  v71 = v13;
  *&v26 = v15;
  v68 = v23;
  *(&v26 + 1) = v23;
  *(&v84[3] + 1) = v25;
  *&v85 = v24;
  v66 = v24;
  *(&v85 + 1) = v13;
  v80 = *(a3 + 88);
  *(&v84[1] + 8) = v26;
  *(&v84[2] + 8) = v80;
  v27 = type metadata accessor for CanvasItemDescriptor(255, v83);
  v28 = sub_1E68B3750();
  v63 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v62 - v30;
  *&v83[0] = v19;
  *(v83 + 8) = v80;
  v67 = v25;
  *(&v83[1] + 1) = v25;
  v32 = type metadata accessor for CanvasItemPlaceholder(0, v83);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v62 - v35;
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v41 = &v62 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41, v78, a3, v39);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v27 - 8) + 32))(v79, v41, v27);
  }

  (*(v33 + 32))(v36, v41, v32);
  swift_getWitnessTable();
  sub_1E68B3110();
  v43 = *(v27 - 8);
  if ((*(v43 + 48))(v31, 1, v27) == 1)
  {
    (*(v63 + 8))(v31, v28);
    if (sub_1E68B35E0())
    {
      v44 = &unk_1F5FD7548;
    }

    else
    {
      v44 = &unk_1F5FD7570;
    }

    v78 = sub_1E68140E0(v44);
    (*(v64 + 16))(v77, v36, v19);
    v45 = &v36[*(v32 + 52)];
    v46 = *(v45 + 13);
    v91 = *(v45 + 12);
    v92 = v46;
    v93[0] = *(v45 + 14);
    *(v93 + 9) = *(v45 + 233);
    v47 = *(v45 + 9);
    v87 = *(v45 + 8);
    v88 = v47;
    v48 = *(v45 + 11);
    v89 = *(v45 + 10);
    v90 = v48;
    v49 = *(v45 + 5);
    v84[2] = *(v45 + 4);
    v84[3] = v49;
    v50 = *(v45 + 7);
    v85 = *(v45 + 6);
    v86 = v50;
    v51 = *(v45 + 1);
    v83[0] = *v45;
    v83[1] = v51;
    v52 = *(v45 + 3);
    v84[0] = *(v45 + 2);
    v84[1] = v52;
    v76 = v81;
    *&v81 = *(&v81 + 1);
    v54 = v69;
    v53 = v70;
    v55 = v71;
    LazyCanvasItemContent.transformed<A, B, C>()(v76, *(&v81 + 1), v82, *(&v82 + 1), v70, v71, v69);
    (*(v33 + 8))(v36, v32);
    v56 = v74;
    v57 = v72;
    (*(*(v74 - 8) + 56))(v72, 1, 1, v74);
    v58 = v75;
    v59 = v73;
    (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
    *&v61[24] = v67;
    *&v61[8] = v80;
    *v61 = v68;
    return CanvasItemDescriptor.init(identifier:content:contextMenu:metrics:redactionReasons:)(v77, v54, v57, v59, v78, v76, v81, v56, v79, v19, v58, v82, *(&v82 + 1), v53, *v61, *&v61[16], v66, v55);
  }

  else
  {
    (*(v33 + 8))(v36, v32);
    return (*(v43 + 32))(v79, v31, v27);
  }
}

uint64_t sub_1E68140E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F48, &unk_1E68BFB60);
    v3 = sub_1E68B37F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1E68B3B70();
      MEMORY[0x1E69523D0](v10);
      result = sub_1E68B3BB0();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E681421C()
{
  v0 = sub_1E68B1AE0();
  __swift_allocate_value_buffer(v0, qword_1EE2F8440);
  __swift_project_value_buffer(v0, qword_1EE2F8440);
  return sub_1E68B1AD0();
}

uint64_t sub_1E6814294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v105 = a3;
  v101 = a2;
  v124 = a5;
  v118 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v117 = (&v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v116 = &v95 - v16;
  v17 = sub_1E68B3000();
  v112 = *(v17 - 8);
  v113 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v111 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E68B2F90();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v108 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a7;
  v23 = sub_1E68B3750();
  v98 = *(v23 - 8);
  v99 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v100 = &v95 - v25;
  v26 = sub_1E68B2FB0();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v103 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F50, &qword_1E68BFB90);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v106 = &v95 - v31;
  v127 = a4;
  v128 = a10;
  v123 = a10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v110 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v33);
  v109 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v104 = &v95 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v107 = &v95 - v40;
  v41 = sub_1E68B3750();
  v114 = *(v41 - 8);
  v115 = v41;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v95 - v43;
  v45 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v95 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = OpaqueTypeMetadata2;
  v119 = a4;
  v50 = sub_1E68B2220();
  v121 = *(v50 - 8);
  v52 = MEMORY[0x1EEE9AC00](v50, v51);
  v120 = &v95 - v53;
  (*(a12 + 176))(a9, v52);
  if (v45[6](v44, 1, a6) == 1)
  {
    (*(v114 + 8))(v44, v115);
LABEL_5:
    v55 = v123;
    v56 = v119;
    v57 = v120;
    v58 = v116;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v59 = v117;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v127 = v56;
    v128 = v55;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E6744DB8(v59, v122, v56, OpaqueTypeConformance2, v55);
    v61 = *(v118 + 8);
    v61(v59, v56);
    v61(v58, v56);
    goto LABEL_6;
  }

  v45[4](v49, v44, a6);
  v54 = *((*(a12 + 184))(a9, a12) + 16);

  if (v54)
  {
    (v45[1])(v49, a6);
    goto LABEL_5;
  }

  v117 = v45;
  v118 = v50;
  v64 = v98;
  v63 = v99;
  v65 = v100;
  (*(v98 + 16))(v100, v101, v99);
  v66 = v102;
  v67 = *(v102 - 8);
  if ((*(v67 + 48))(v65, 1, v102) == 1)
  {
    (*(v64 + 8))(v65, v63);
  }

  else
  {
    (*(a11 + 32))(v66);
    (*(v67 + 8))(v65, v66);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = *(AssociatedConformanceWitness + 32);
  v97 = v49;
  v69(a6, AssociatedConformanceWitness);
  v70 = v105;
  sub_1E68B2FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F58, &qword_1E68BFB98);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_1E68BFB70;
  *(inited + 40) = 0xE400000000000000;
  v72 = (*(AssociatedConformanceWitness + 56))(a6, AssociatedConformanceWitness);
  v74 = v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F68, &qword_1E68BFBA8);
  *(inited + 48) = v72;
  *(inited + 56) = v74;
  *(inited + 72) = v75;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  v76 = (*(AssociatedConformanceWitness + 48))(a6, AssociatedConformanceWitness);
  v77 = MEMORY[0x1E69E6158];
  *(inited + 96) = v76;
  *(inited + 104) = v78;
  *(inited + 120) = v77;
  *(inited + 128) = 0x6973736572706D69;
  v79 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v70;
  *(inited + 168) = v79;
  *(inited + 176) = 0x657079546469;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = (*(AssociatedConformanceWitness + 40))(a6, AssociatedConformanceWitness);
  *(inited + 200) = v80;
  *(inited + 216) = v77;
  *(inited + 224) = 0x54746E65746E6F63;
  *(inited + 232) = 0xEB00000000657079;
  v81 = *(AssociatedConformanceWitness + 64);
  v96 = a6;
  *(inited + 240) = v81(a6, AssociatedConformanceWitness);
  *(inited + 248) = v82;
  *(inited + 264) = v77;
  *(inited + 272) = 0xD000000000000013;
  *(inited + 280) = 0x80000001E68E2C60;
  v83 = (*(AssociatedConformanceWitness + 72))(a6, AssociatedConformanceWitness);
  *(inited + 312) = v77;
  *(inited + 288) = v83;
  *(inited + 296) = v84;
  sub_1E67FA778(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098928, &qword_1E68BDBA0);
  swift_arrayDestroy();
  sub_1E68B2F80();
  v85 = MEMORY[0x1E69E7CC0];
  sub_1E67FA778(MEMORY[0x1E69E7CC0]);
  sub_1E67FA778(v85);
  v86 = v106;
  sub_1E68B2FC0();
  v87 = sub_1E68B2FD0();
  (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  v88 = v111;
  sub_1E68B2FE0();
  v89 = v104;
  v56 = v119;
  v55 = v123;
  sub_1E68B2710();
  (*(v112 + 8))(v88, v113);
  sub_1E6744A10(v86, &qword_1ED098F50, &qword_1E68BFB90);
  v127 = v56;
  v128 = v55;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v107;
  v92 = v122;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v93 = *(v110 + 8);
  v93(v89, v92);
  v94 = v109;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v57 = v120;
  sub_1E6744CC0(v94, v92, v56, v90, v55);
  v93(v94, v92);
  v93(v91, v92);
  v117[1](v97, v96);
  v50 = v118;
LABEL_6:
  v127 = v56;
  v128 = v55;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = v55;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v121 + 8))(v57, v50);
}

uint64_t sub_1E6814ED8@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v102 = a2;
  v100 = a1;
  v106 = a4;
  v107 = a9;
  v89 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v88 = (&v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v87 = &v85 - v15;
  v16 = sub_1E68B3000();
  v98 = *(v16 - 8);
  v99 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v94 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E68B2F90();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v92 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E68B2FB0();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v90 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F50, &qword_1E68BFB90);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v91 = &v85 - v27;
  v110 = v11;
  v111 = a10;
  v105 = a10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v97 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v29);
  v96 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v93 = &v85 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v95 = &v85 - v36;
  v37 = sub_1E68B3750();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v85 - v40;
  v42 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v101 = &v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E68B2220();
  v103 = *(v46 - 8);
  v104 = v46;
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v85 - v49;
  v51 = *(a11 + 192);
  v100 = a11;
  v51(v107, v48);
  if ((v42[6])(v41, 1, a5) == 1)
  {
    (*(v38 + 8))(v41, v37);
    v52 = v87;
    v53 = v105;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v54 = v88;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v110 = v11;
    v111 = v53;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E6744DB8(v54, OpaqueTypeMetadata2, v11, OpaqueTypeConformance2, v53);
    v56 = *(v89 + 8);
    v56(v54, v11);
    v56(v52, v11);
  }

  else
  {
    v86 = v11;
    v87 = v50;
    v88 = v42;
    v89 = OpaqueTypeMetadata2;
    (v42[4])(v101, v41, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F58, &qword_1E68BFB98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E68BFB80;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v59 = (*(AssociatedConformanceWitness + 64))(a5, AssociatedConformanceWitness);
    v60 = MEMORY[0x1E69E6158];
    *(inited + 48) = v59;
    *(inited + 56) = v61;
    *(inited + 72) = v60;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    v62 = *(AssociatedConformanceWitness + 48);
    v85 = AssociatedConformanceWitness + 48;
    v100 = v62;
    *(inited + 96) = v62(a5, AssociatedConformanceWitness);
    *(inited + 104) = v63;
    *(inited + 120) = v60;
    *(inited + 128) = 0x6973736572706D69;
    v64 = MEMORY[0x1E69E6530];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = v102;
    *(inited + 168) = v64;
    *(inited + 176) = 0x657079546469;
    *(inited + 184) = 0xE600000000000000;
    v65 = (*(AssociatedConformanceWitness + 40))(a5, AssociatedConformanceWitness);
    *(inited + 216) = v60;
    *(inited + 192) = v65;
    *(inited + 200) = v66;
    v67 = sub_1E67FA778(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098928, &qword_1E68BDBA0);
    swift_arrayDestroy();
    v68 = (*(AssociatedConformanceWitness + 56))(a5, AssociatedConformanceWitness);
    v69 = sub_1E68159A8(v68);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v67;
    sub_1E6815DAC(v69, sub_1E6815C00, 0, isUniquelyReferenced_nonNull_native, &v110);

    (*(AssociatedConformanceWitness + 32))(a5, AssociatedConformanceWitness);
    sub_1E68B2FA0();
    sub_1E68B2F80();
    v71 = MEMORY[0x1E69E7CC0];
    sub_1E67FA778(MEMORY[0x1E69E7CC0]);
    sub_1E67FA778(v71);
    v72 = v91;
    sub_1E68B2FC0();
    v73 = sub_1E68B2FD0();
    (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    v74 = v94;
    sub_1E68B2FF0();
    v107 = a5;
    v76 = v74;
    if (v100(a5, AssociatedConformanceWitness) == 0x666C656873 && v75 == 0xE500000000000000)
    {
    }

    else
    {
      sub_1E68B3B00();
    }

    v53 = v105;
    v77 = v89;
    v78 = v93;
    v11 = v86;
    sub_1E68B2710();
    (*(v98 + 8))(v76, v99);
    sub_1E6744A10(v72, &qword_1ED098F50, &qword_1E68BFB90);
    v110 = v11;
    v111 = v53;
    v79 = swift_getOpaqueTypeConformance2();
    v80 = v95;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v81 = *(v97 + 8);
    v81(v78, v77);
    v82 = v96;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v50 = v87;
    sub_1E6744CC0(v82, v77, v11, v79, v53);
    v81(v82, v77);
    v81(v80, v77);
    v88[1](v101, v107);
  }

  v110 = v11;
  v111 = v53;
  v108 = swift_getOpaqueTypeConformance2();
  v109 = v53;
  v83 = v104;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v103 + 8))(v50, v83);
}

unint64_t sub_1E68159A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098920, &qword_1E68BDB98);
    v2 = sub_1E68B3940();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1E67FCA14(&v22, v24);
        sub_1E67FCA14(v24, v25);
        sub_1E67FCA14(v25, &v23);
        result = sub_1E680B790(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1E67FCA14(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1E67FCA14(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E6815C00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1E680B940((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1E6815C4C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E680B940(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1E67FCA14(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1E6744A10(v21, &qword_1ED098F60, &qword_1E68BFBA0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1E6815DAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1E6815C4C(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1E67FCA14(v44, v42);
  v14 = *a5;
  result = sub_1E680B790(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1E680BF10(v20, a4 & 1);
    result = sub_1E680B790(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E68B3B20();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1E680C730();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1E67FCA14(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1E67FCA14(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1E6815C4C(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1E67FCA14(v44, v42);
        v32 = *a5;
        result = sub_1E680B790(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1E680BF10(v36, 1);
          result = sub_1E680B790(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_1E67FCA14(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1E67FCA14(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1E6815C4C(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1E68160BC(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

void CanvasColor.init(red:green:blue:alpha:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a5;
  a1[1] = a4;
  a1[2] = a3;
  a1[3] = a2;
}

uint64_t sub_1E6816100()
{
  v1 = 0x6168706C61;
  v2 = 0x6E65657267;
  if (*v0 != 2)
  {
    v2 = 6579570;
  }

  if (*v0)
  {
    v1 = 1702194274;
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

uint64_t sub_1E6816164@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E68169E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E681618C(uint64_t a1)
{
  v2 = sub_1E6816814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68161C8(uint64_t a1)
{
  v2 = sub_1E6816814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasColor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F70, &qword_1E68BFBE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6816814();
  sub_1E68B3BD0();
  v15 = v10;
  HIBYTE(v14) = 0;
  sub_1E67621E8();
  sub_1E68B3AB0();
  if (!v2)
  {
    v15 = v9;
    HIBYTE(v14) = 1;
    sub_1E68B3AB0();
    v15 = v12;
    HIBYTE(v14) = 2;
    sub_1E68B3AB0();
    v15 = v11;
    HIBYTE(v14) = 3;
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CanvasColor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098F80, &qword_1E68BFBE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6816814();
  sub_1E68B3BC0();
  if (!v2)
  {
    HIBYTE(v15) = 0;
    sub_1E6762A60();
    sub_1E68B3A00();
    v10 = v16;
    HIBYTE(v15) = 1;
    sub_1E68B3A00();
    v11 = v16;
    HIBYTE(v15) = 2;
    sub_1E68B3A00();
    v13 = v16;
    HIBYTE(v15) = 3;
    sub_1E68B3A00();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CanvasColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E69523F0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E69523F0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1E69523F0](*&v7);
}

uint64_t CanvasColor.hashValue.getter()
{
  sub_1E68B3B70();
  CanvasColor.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E681677C()
{
  sub_1E68B3B70();
  CanvasColor.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E68167CC(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasColor.hash(into:)();
  return sub_1E68B3BB0();
}

unint64_t sub_1E6816814()
{
  result = qword_1ED098F78;
  if (!qword_1ED098F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F78);
  }

  return result;
}

unint64_t sub_1E681686C()
{
  result = qword_1ED098F88;
  if (!qword_1ED098F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F88);
  }

  return result;
}

unint64_t sub_1E68168E4()
{
  result = qword_1ED098F90;
  if (!qword_1ED098F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F90);
  }

  return result;
}

unint64_t sub_1E681693C()
{
  result = qword_1ED098F98;
  if (!qword_1ED098F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098F98);
  }

  return result;
}

unint64_t sub_1E6816994()
{
  result = qword_1ED098FA0[0];
  if (!qword_1ED098FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED098FA0);
  }

  return result;
}

uint64_t sub_1E68169E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6168706C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6579570 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t OrthogonalView.init(header:items:footer:metrics:contentMargins:densityFactor:dynamicTypeSize:sizeClass:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:actionButtonViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36, uint64_t a38, __int128 a39, __int128 a41, uint64_t a43, __int128 a44, __int128 a46, __int128 a48, __int128 a50, __int128 a52, __int128 a54, uint64_t a56, uint64_t a57)
{
  v87 = *a3;
  v96 = *a6;
  v50 = a6[1];
  v95 = a6[2];
  v102 = a31;
  v103 = a32;
  v104 = a33;
  v105 = a34;
  v106 = a35;
  v107 = a36;
  v108 = a38;
  v109 = a39;
  v110 = a41;
  v111 = a43;
  v112 = a44;
  v113 = a46;
  v114 = a48;
  v115 = a50;
  v116 = a52;
  v117 = a54;
  v118 = a56;
  v119 = a57;
  v51 = type metadata accessor for OrthogonalView(0, &v102);
  v97 = (a9 + v51[77]);
  swift_getFunctionTypeMetadata1();
  v52 = sub_1E68B3750();
  v120 = 0;
  v121 = 0;
  v85 = a5[1];
  v86 = *a5;
  sub_1E672890C(&v120, v52, &v102);
  v93 = *(&v102 + 1);
  v94 = v102;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v102 = a31;
  *(&v102 + 1) = a41;
  v103 = AssociatedConformanceWitness;
  v104 = *(&a52 + 1);
  type metadata accessor for CanvasSectionHeader(255, &v102);
  v91 = sub_1E68B3750();
  v92 = *(v91 - 8);
  (*(v92 + 16))(a9, a1, v91);
  *(a9 + v51[61]) = a2;
  *(a9 + v51[62]) = v87;
  v54 = v51[63];
  v88 = sub_1E68B3750();
  v90 = *(v88 - 8);
  (*(v90 + 16))(a9 + v54, a4, v88);
  v55 = v51[68];
  v120 = a10;
  v121 = a11;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v120, FunctionTypeMetadata1, &v102);
  *(a9 + v55) = v102;
  v57 = v51[69];
  v120 = a12;
  v121 = a13;
  v58 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v120, v58, &v102);
  *(a9 + v57) = v102;
  v59 = v51[70];
  v120 = a14;
  v121 = a15;
  v60 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v120, v60, &v102);
  *(a9 + v59) = v102;
  v83 = (a9 + v51[74]);

  *v83 = sub_1E6817680(a20, a21, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *(&a36 + 1), a38, a39, a41, a43, a44, *(&a44 + 1), a46, a48, a50, a52, a54, a56, a57);
  v83[1] = v61;
  v84 = (a9 + v51[71]);

  *&v82[40] = a43;
  *&v82[24] = a41;
  *v82 = a38;
  *&v82[8] = a39;
  *v84 = sub_1E6817468(a16, a17, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *v82, *&v82[16], *&v82[32], a44, a46, a48, a50, a52, a54, a56, a57);
  v84[1] = v62;
  v63 = (a9 + v51[64]);
  *v63 = v86;
  v63[1] = v85;
  v64 = v51[72];
  v120 = a18;
  v121 = a19;
  v65 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v120, v65, &v102);
  *(a9 + v64) = v102;
  v66 = v51[73];
  v120 = a22;
  v121 = a23;
  v67 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v120, v67, &v102);
  *(a9 + v66) = v102;
  v68 = (a9 + v51[65]);
  *v68 = v96;
  v68[1] = v50;
  v68[2] = v95;
  *(a9 + v51[66]) = a7;
  v69 = *(a44 - 8);
  (*(v69 + 16))(a9 + v51[67], a8, a44);
  v70 = sub_1E681799C(a28, a29, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *(&a36 + 1), a38, a39, *(&a39 + 1), a41, *(&a41 + 1), a43, a44, *(&a44 + 1), a46, *(&a46 + 1), a48, *(&a48 + 1), a50, *(&a50 + 1), a52, *(&a52 + 1), a54, *(&a54 + 1), a56, a57);
  v72 = v71;

  (*(v69 + 8))(a8, a44);
  (*(v90 + 8))(a4, v88);
  (*(v92 + 8))(a1, v91);
  sub_1E672E440(v94, v93);
  *v97 = v70;
  v97[1] = v72;
  if (a24)
  {
    v73 = swift_allocObject();
    *(v73 + 16) = a24;
    *(v73 + 24) = a25;
    v74 = sub_1E67E403C;
  }

  else
  {
    v74 = 0;
    v73 = 0;
  }

  v75 = (a9 + v51[75]);
  *v75 = v74;
  v75[1] = v73;
  if (a26)
  {
    v76 = swift_allocObject();
    *(v76 + 16) = a26;
    *(v76 + 24) = a27;
    v77 = sub_1E67E3FAC;
  }

  else
  {
    v77 = 0;
    v76 = 0;
  }

  v78 = (a9 + v51[76]);
  *v78 = v77;
  v78[1] = v76;
  v79 = v51[78];
  v80 = sub_1E68B1950();
  return (*(*(v80 - 8) + 32))(a9 + v79, a30, v80);
}

uint64_t sub_1E6817468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  *(v28 + 32) = a5;
  *(v28 + 40) = a6;
  *(v28 + 48) = a7;
  *(v28 + 56) = a8;
  *(v28 + 64) = a9;
  *(v28 + 80) = a10;
  *(v28 + 96) = a11;
  *(v28 + 112) = a12;
  *(v28 + 128) = a13;
  *(v28 + 144) = a14;
  *(v28 + 160) = a15;
  *(v28 + 176) = a16;
  *(v28 + 192) = a17;
  *(v28 + 208) = a18;
  *(v28 + 224) = a19;
  *(v28 + 232) = a20;
  *(v28 + 240) = a1;
  *(v28 + 248) = a2;
  v31[0] = sub_1E68246BC;
  v31[1] = v28;
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208, &qword_1E68BB878);
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v31, FunctionTypeMetadata2, &v32);
  return v32;
}

uint64_t (*sub_1E68175D4(uint64_t a1))(uint64_t a1, uint64_t a2, char a3)
{
  v3 = (v1 + *(a1 + 284));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E67D41E8;
}

uint64_t sub_1E6817680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23)
{
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  *(v27 + 48) = a7;
  *(v27 + 56) = a8;
  *(v27 + 64) = a9;
  *(v27 + 72) = a10;
  *(v27 + 80) = a11;
  *(v27 + 88) = a12;
  *(v27 + 104) = a13;
  *(v27 + 120) = a14;
  *(v27 + 128) = a15;
  *(v27 + 136) = a16;
  *(v27 + 144) = a17;
  *(v27 + 160) = a18;
  *(v27 + 176) = a19;
  *(v27 + 192) = a20;
  *(v27 + 208) = a21;
  *(v27 + 224) = a22;
  *(v27 + 232) = a23;
  *(v27 + 240) = a1;
  *(v27 + 248) = a2;
  v34[0] = sub_1E68246F0;
  v34[1] = v27;
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v34, FunctionTypeMetadata2, &v35);
  return v35;
}

uint64_t (*sub_1E68177E8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = (v1 + *(a1 + 296));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E67D5458;
}

uint64_t (*sub_1E6817894(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 300));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E67D5680;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3, v4);
  return v6;
}

uint64_t (*sub_1E6817918(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 304));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E67D5450;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3, v4);
  return v6;
}

uint64_t sub_1E681799C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a1)
  {
    v30 = a1;
    a1 = swift_allocObject();
    a1[2] = a3;
    a1[3] = a4;
    a1[4] = a5;
    a1[5] = a6;
    a1[6] = a7;
    a1[7] = a8;
    a1[8] = a9;
    a1[9] = a10;
    a1[10] = a11;
    a1[11] = a12;
    a1[12] = a13;
    a1[13] = a14;
    a1[14] = a15;
    a1[15] = a16;
    a1[16] = a17;
    a1[17] = a18;
    a1[18] = a19;
    a1[19] = a20;
    a1[20] = a21;
    a1[21] = a22;
    a1[22] = a23;
    a1[23] = a24;
    a1[24] = a25;
    a1[25] = a26;
    a1[26] = a27;
    a1[27] = a28;
    a1[28] = a29;
    a1[29] = a30;
    a1[30] = v30;
    a1[31] = a2;
    v37 = sub_1E682471C;
  }

  else
  {
    v37 = 0;
  }

  v41[0] = v37;
  v41[1] = a1;
  swift_getFunctionTypeMetadata1();
  v38 = sub_1E68B3750();
  sub_1E672890C(v41, v38, &v42);
  return v42;
}

uint64_t (*sub_1E6817B74(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 308));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v6 = swift_allocObject();
    v7 = *(a1 + 32);
    *(v6 + 16) = *(a1 + 16);
    *(v6 + 32) = v7;
    v8 = *(a1 + 64);
    *(v6 + 48) = *(a1 + 48);
    *(v6 + 64) = v8;
    v9 = *(a1 + 96);
    *(v6 + 80) = *(a1 + 80);
    *(v6 + 96) = v9;
    v10 = *(a1 + 128);
    *(v6 + 112) = *(a1 + 112);
    *(v6 + 128) = v10;
    v11 = *(a1 + 160);
    *(v6 + 144) = *(a1 + 144);
    *(v6 + 160) = v11;
    v12 = *(a1 + 192);
    *(v6 + 176) = *(a1 + 176);
    *(v6 + 192) = v12;
    v13 = *(a1 + 224);
    *(v6 + 208) = *(a1 + 208);
    *(v6 + 224) = v13;
    *(v6 + 240) = v3;
    *(v6 + 248) = v4;
    v14 = sub_1E67D54BC;
  }

  else
  {
    v14 = 0;
  }

  sub_1E6739D68(v3, v4);
  return v14;
}

uint64_t sub_1E6817C34(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 232);
  v7 = *(a1 + 136);
  v6 = *(a1 + 144);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v94 = v3;
  v95 = v4;
  v97 = v3;
  v98 = v4;
  v92 = swift_getAssociatedConformanceWitness();
  v93 = v7;
  v99 = v7;
  v100 = AssociatedConformanceWitness;
  v101 = v92;
  v102 = swift_getAssociatedConformanceWitness();
  v96 = type metadata accessor for CanvasItemContent(0, &v97);
  MEMORY[0x1EEE9AC00](v96, v9);
  v11 = &v92 - v10;
  v12 = sub_1E68B3750();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v92 - v15;
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v1 + *(a1 + 244));
  sub_1E68B33B0();
  swift_getWitnessTable();
  sub_1E68B36C0();
  if ((*(v17 + 48))(v16, 1, v6) != 1)
  {
    (*(v17 + 32))(v21, v16, v6);
    (*(v5 + 160))(v6, v5);
    (*(v17 + 8))(v21, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26 = v11;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v31 = type metadata accessor for FullWidthItemDescriptor(0, v95, v92, v25);
        goto LABEL_19;
      case 2:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
        v54 = v95;
        v97 = &type metadata for FullWidthStageViewLayout;
        v98 = v95;
        v99 = &type metadata for FullWidthStageViewStyle;
        v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v101 = v100;
        v102 = v100;
        v103 = sub_1E68B3750();
        v104 = v103;
        v105 = sub_1E68B3750();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v96 = TupleTypeMetadata[12];
        v56 = TupleTypeMetadata[20];
        v57 = TupleTypeMetadata[24];
        v58 = TupleTypeMetadata[28];
        v59 = TupleTypeMetadata[32];
        v60 = TupleTypeMetadata[36];
        v61 = TupleTypeMetadata[40];
        v62 = sub_1E68B3750();
        (*(*(v62 - 8) + 8))(&v26[v61], v62);
        v63 = sub_1E68B3750();
        v64 = *(*(v63 - 8) + 8);
        v64(&v26[v60], v63);
        v64(&v26[v59], v63);
        sub_1E6744A10(&v26[v58], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v26[v57], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v26[v56], &qword_1ED096E68, &qword_1E68B4840);
        (*(*(v54 - 8) + 8))(&v26[v96], v54);
        return 0;
      case 3:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 48, "layout title description actionButton ");
        v97 = &type metadata for InfoActionCardViewLayout;
        v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v99 = v98;
        v100 = sub_1E68B3750();
        v68 = swift_getTupleTypeMetadata();
        v69 = v68[12];
        v70 = v68[16];
        v71 = v68[20];
        v72 = sub_1E68B3750();
        (*(*(v72 - 8) + 8))(&v11[v71], v72);
        sub_1E6744A10(&v11[v70], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v11[v69], &qword_1ED096E68, &qword_1E68B4840);
        return 0;
      case 4:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 48, "artwork footnote subtitle title ");
        v27 = v95;
        v97 = v95;
        v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v99 = v98;
        v100 = v98;
        v38 = swift_getTupleTypeMetadata();
        v29 = v38[12];
        v39 = v38[16];
        sub_1E6744A10(&v11[v38[20]], &qword_1ED096E68, &qword_1E68B4840);
        v30 = &v11[v39];
        goto LABEL_10;
      case 5:
      case 7:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 48, "artwork caption displayStyle layout title ");
        v27 = v95;
        v97 = v95;
        v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v99 = &type metadata for DynamicBrickDisplayStyle;
        v100 = &type metadata for DynamicBrickViewLayout;
        v101 = v98;
        v28 = swift_getTupleTypeMetadata();
        v29 = *(v28 + 48);
        v30 = &v11[*(v28 + 96)];
LABEL_10:
        sub_1E6744A10(v30, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v11[v29], &qword_1ED096E68, &qword_1E68B4840);
        (*(*(v27 - 8) + 8))(v11, v27);
        return 0;
      case 6:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 48, "layout artwork title subtitle ");
        v40 = v95;
        v97 = &type metadata for MonogramVerticalStackViewLayout;
        v98 = v95;
        v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v100 = v99;
        v80 = swift_getTupleTypeMetadata();
        v42 = v80[12];
        v81 = v80[16];
        sub_1E6744A10(&v11[v80[20]], &qword_1ED096E68, &qword_1E68B4840);
        v43 = &v11[v81];
        goto LABEL_22;
      case 8:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 48, "layout artwork title subtitle caption ");
        v79 = &type metadata for StandardCardViewLayout;
        goto LABEL_26;
      case 9:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
        v44 = v95;
        v97 = &type metadata for StandardHorizontalStackViewLayout;
        v98 = v95;
        v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v100 = v99;
        v101 = v99;
        v102 = v99;
        v103 = sub_1E68B3750();
        v45 = swift_getTupleTypeMetadata();
        v46 = v45[12];
        v47 = v45[16];
        v48 = v45[20];
        v49 = v45[24];
        v50 = v45[28];
        v51 = v45[32];
        v52 = sub_1E68B3750();
        (*(*(v52 - 8) + 8))(&v26[v51], v52);
        sub_1E6744A10(&v26[v50], &qword_1ED096E68, &qword_1E68B4840);
        v53 = &v26[v49];
        goto LABEL_17;
      case 10:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 48, "layout artwork title subtitle caption ");
        v82 = v95;
        v97 = &type metadata for StandardVerticalStackViewLayout;
        v98 = v95;
        v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v100 = v99;
        v101 = v99;
        v83 = swift_getTupleTypeMetadata();
        v84 = v83[12];
        v85 = v83[16];
        v86 = v83[20];
        sub_1E6744A10(&v11[v83[24]], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v11[v86], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v11[v85], &qword_1ED096E68, &qword_1E68B4840);
        (*(*(v82 - 8) + 8))(&v11[v84], v82);
        return 1;
      case 11:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
        v32 = v95;
        v97 = &type metadata for SummaryCardViewLayout;
        v98 = v95;
        v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v100 = v99;
        v101 = v99;
        v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88, &qword_1E68B9CF0);
        v33 = swift_getTupleTypeMetadata();
        v34 = v33[12];
        v35 = v33[16];
        v36 = v33[20];
        v37 = v33[24];
        sub_1E6744A10(&v26[v33[28]], &qword_1ED096E88, &qword_1E68B9CF0);
        sub_1E6744A10(&v26[v37], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v26[v36], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v26[v35], &qword_1ED096E68, &qword_1E68B4840);
        (*(*(v32 - 8) + 8))(&v26[v34], v32);
        return 1;
      case 12:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 48, "layout artwork title overlay ");
        v40 = v95;
        v97 = &type metadata for TallCardViewLayout;
        v98 = v95;
        v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v100 = &type metadata for Overlay;
        v41 = swift_getTupleTypeMetadata();
        v42 = *(v41 + 48);
        v43 = &v11[*(v41 + 64)];
LABEL_22:
        sub_1E6744A10(v43, &qword_1ED096E68, &qword_1E68B4840);
        (*(*(v40 - 8) + 8))(&v11[v42], v40);
        return 1;
      case 13:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 48, "layout artwork title subtitle caption ");
        v79 = &type metadata for VerticalStackCardLayout;
LABEL_26:
        v87 = v95;
        v97 = v79;
        v98 = v95;
        v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v100 = v99;
        v101 = v99;
        v88 = swift_getTupleTypeMetadata();
        v89 = v88[12];
        v90 = v88[16];
        v91 = v88[20];
        sub_1E6744A10(&v11[v88[24]], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v11[v91], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v11[v90], &qword_1ED096E68, &qword_1E68B4840);
        (*(*(v87 - 8) + 8))(&v11[v89], v87);
        return 0;
      case 14:
        v31 = v93;
LABEL_19:
        (*(*(v31 - 8) + 8))(v11);
        return 0;
      case 15:
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v65 = v95;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v67 = *(TupleTypeMetadata3 + 48);
        sub_1E6744A10(&v11[*(TupleTypeMetadata3 + 64)], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v11[v67], &qword_1ED096E68, &qword_1E68B4840);
        (*(*(v65 - 8) + 8))(v11, v65);
        return 0;
      default:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v24);
        strcpy(&v92 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
        v44 = v95;
        v97 = &type metadata for ActionCardViewLayout;
        v98 = v95;
        v99 = &type metadata for ActionCardViewStyle;
        v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        v101 = v100;
        v73 = v94;
        v102 = v100;
        v103 = v94;
        v104 = sub_1E68B3750();
        v74 = swift_getTupleTypeMetadata();
        v46 = v74[12];
        v47 = v74[20];
        v48 = v74[24];
        v75 = v74[28];
        v76 = v74[32];
        v77 = v74[36];
        v78 = sub_1E68B3750();
        (*(*(v78 - 8) + 8))(&v26[v77], v78);
        (*(*(v73 - 8) + 8))(&v26[v76], v73);
        v53 = &v26[v75];
LABEL_17:
        sub_1E6744A10(v53, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v26[v48], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v26[v47], &qword_1ED096E68, &qword_1E68B4840);
        (*(*(v44 - 8) + 8))(&v26[v46], v44);
        return 0;
    }
  }

  (*(v13 + 8))(v16, v12);
  return 0;
}

uint64_t OrthogonalView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v206 = a2;
  v205 = sub_1E68B2300();
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205, v3);
  v203 = v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v191 = &v295;
  v5 = a1[3];
  v200 = a1[14];
  v294 = v5;
  *&v295 = v200;
  v6 = a1[19];
  v201 = a1[26];
  v7 = a1;
  *(&v295 + 1) = v6;
  v296 = v201;
  v197 = type metadata accessor for CanvasSectionHeaderView(255, &v294);
  sub_1E68B2390();
  v198 = sub_1E68B1E40();
  v199 = sub_1E68B2220();
  v195 = sub_1E68B3750();
  v212 = a1[18];
  swift_getTupleTypeMetadata2();
  v8 = sub_1E68B33B0();
  v215 = a1[29];
  v189 = *(v215 + 32);
  v190 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a1[20];
  v294 = a1[5];
  *&v295 = v5;
  v210 = v294;
  *(&v295 + 1) = v5;
  v296 = v9;
  v10 = v9;
  v211 = v9;
  *&v297 = v6;
  *(&v297 + 1) = v6;
  v11 = type metadata accessor for ActionCardView(255, &v294);
  v186 = v11;
  WitnessTable = swift_getWitnessTable();
  v294 = v11;
  *&v295 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v184 = sub_1E68B2440();
  sub_1E68B1E40();
  v12 = sub_1E68B1E40();
  *&v207 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v306 = v10;
  v307 = v207;
  v13 = MEMORY[0x1E697E858];
  v14 = swift_getWitnessTable();
  v304 = v14;
  v305 = MEMORY[0x1E697F568];
  v216 = v13;
  v182 = v12;
  v181 = swift_getWitnessTable();
  v294 = v12;
  *&v295 = v181;
  v169 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v15 = sub_1E68B1E40();
  v174 = v15;
  v302 = v14;
  v303 = MEMORY[0x1E697E040];
  v173 = swift_getWitnessTable();
  v294 = v15;
  *&v295 = v173;
  swift_getOpaqueTypeMetadata2();
  v175 = sub_1E68B2220();
  v177 = sub_1E68B2B90();
  v176 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v180 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v183 = sub_1E68B2220();
  v164 = sub_1E68B2220();
  v209 = v7[10];
  v194 = v7[16];
  v196 = v7[28];
  v16 = v210;
  v294 = v210;
  *&v295 = v5;
  *(&v295 + 1) = v5;
  v296 = v209;
  v17 = v211;
  *&v297 = v194;
  *(&v297 + 1) = v211;
  v298 = v6;
  v299 = v6;
  v213 = v6;
  OpaqueTypeMetadata2 = v7[24];
  v300 = OpaqueTypeMetadata2;
  v301 = v196;
  v18 = type metadata accessor for FullWidthStageView(255, &v294);
  v179 = v18;
  v178 = swift_getWitnessTable();
  v294 = v18;
  *&v295 = v178;
  swift_getOpaqueTypeMetadata2();
  v187 = v5;
  v20 = type metadata accessor for InfoActionCardView(255, v5, v6, v19);
  v172 = v20;
  v171 = swift_getWitnessTable();
  v294 = v20;
  *&v295 = v171;
  swift_getOpaqueTypeMetadata2();
  v170 = sub_1E68B2220();
  v144 = sub_1E68B2220();
  v208 = v7;
  v193 = *(v7 + 21);
  v294 = v16;
  v296 = v17;
  v297 = v193;
  v192 = *(v7 + 3);
  v295 = v192;
  v21 = type metadata accessor for LargeBrickView(255, &v294);
  v168 = v21;
  v167 = swift_getWitnessTable();
  v294 = v21;
  *&v295 = v167;
  swift_getOpaqueTypeMetadata2();
  v23 = type metadata accessor for DynamicBrickView(255, v16, v17, v22);
  v166 = v23;
  v165 = swift_getWitnessTable();
  v294 = v23;
  *&v295 = v165;
  swift_getOpaqueTypeMetadata2();
  v157 = sub_1E68B2220();
  v25 = type metadata accessor for MonogramVerticalStackView(255, v16, v17, v24);
  v162 = v25;
  v161 = swift_getWitnessTable();
  v294 = v25;
  *&v295 = v161;
  swift_getOpaqueTypeMetadata2();
  v158 = sub_1E68B2220();
  v163 = sub_1E68B2220();
  v138[1] = sub_1E68B2220();
  v27 = type metadata accessor for StandardCardView(255, v16, v17, v26);
  v160 = v27;
  v159 = swift_getWitnessTable();
  v294 = v27;
  *&v295 = v159;
  swift_getOpaqueTypeMetadata2();
  v294 = v16;
  *&v295 = v5;
  *(&v295 + 1) = v17;
  v296 = v213;
  v28 = type metadata accessor for StandardHorizontalStackView(255, &v294);
  v156 = v28;
  v155 = swift_getWitnessTable();
  v294 = v28;
  *&v295 = v155;
  swift_getOpaqueTypeMetadata2();
  v141 = sub_1E68B2220();
  v30 = type metadata accessor for StandardVerticalStackView(255, v16, v17, v29);
  v154 = v30;
  v153 = swift_getWitnessTable();
  v294 = v30;
  *&v295 = v153;
  swift_getOpaqueTypeMetadata2();
  v31 = v16;
  v149 = type metadata accessor for SummaryCardView(255, v16, v17, v32);
  v152 = sub_1E68B2220();
  v138[2] = sub_1E68B2220();
  v34 = type metadata accessor for TallCardView(255, v16, v17, v33);
  v150 = swift_getWitnessTable();
  v294 = v34;
  *&v295 = v150;
  swift_getOpaqueTypeMetadata2();
  v36 = type metadata accessor for VerticalStackCardView(255, v16, v17, v35);
  v145 = swift_getWitnessTable();
  v294 = v36;
  *&v295 = v145;
  swift_getOpaqueTypeMetadata2();
  v138[3] = sub_1E68B2220();
  v38 = type metadata accessor for WideBrickView(255, v31, v17, v37);
  v139 = swift_getWitnessTable();
  v294 = v38;
  *&v295 = v139;
  swift_getOpaqueTypeMetadata2();
  v138[4] = sub_1E68B2220();
  v140 = sub_1E68B2220();
  v142 = sub_1E68B2220();
  v143 = sub_1E68B2220();
  v146 = sub_1E68B2B90();
  v147 = sub_1E68B1E40();
  v148 = sub_1E68B2220();
  v151 = sub_1E68B1E40();
  v184 = sub_1E68B1E40();
  v294 = v186;
  *&v295 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v294 = v182;
  *&v295 = v181;
  v40 = swift_getOpaqueTypeConformance2();
  v294 = v174;
  *&v295 = v173;
  v41 = swift_getOpaqueTypeConformance2();
  v292 = v40;
  v293 = v41;
  v291 = swift_getWitnessTable();
  v289 = swift_getWitnessTable();
  v290 = MEMORY[0x1E697E5D8];
  v42 = swift_getWitnessTable();
  v43 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v287 = v42;
  v288 = v43;
  v44 = swift_getWitnessTable();
  v186 = MEMORY[0x1E6981870];
  v45 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v285 = v44;
  v286 = v45;
  v46 = swift_getWitnessTable();
  v283 = OpaqueTypeConformance2;
  v284 = v46;
  v47 = swift_getWitnessTable();
  v294 = v179;
  *&v295 = v178;
  v48 = swift_getOpaqueTypeConformance2();
  v294 = v172;
  *&v295 = v171;
  v49 = swift_getOpaqueTypeConformance2();
  v281 = v48;
  v282 = v49;
  v50 = swift_getWitnessTable();
  v279 = v47;
  v280 = v50;
  v51 = swift_getWitnessTable();
  v294 = v168;
  *&v295 = v167;
  v52 = swift_getOpaqueTypeConformance2();
  v294 = v166;
  *&v295 = v165;
  v53 = swift_getOpaqueTypeConformance2();
  v277 = v52;
  v278 = v53;
  v54 = swift_getWitnessTable();
  v294 = v162;
  *&v295 = v161;
  v275 = swift_getOpaqueTypeConformance2();
  v276 = v53;
  v55 = swift_getWitnessTable();
  v273 = v54;
  v274 = v55;
  v56 = swift_getWitnessTable();
  v271 = v51;
  v272 = v56;
  v57 = swift_getWitnessTable();
  v294 = v160;
  *&v295 = v159;
  v58 = swift_getOpaqueTypeConformance2();
  v294 = v156;
  *&v295 = v155;
  v59 = swift_getOpaqueTypeConformance2();
  v269 = v58;
  v270 = v59;
  v60 = swift_getWitnessTable();
  v294 = v154;
  *&v295 = v153;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = swift_getWitnessTable();
  v267 = v61;
  v268 = v62;
  v63 = swift_getWitnessTable();
  v265 = v60;
  v266 = v63;
  v64 = swift_getWitnessTable();
  v294 = v34;
  *&v295 = v150;
  v65 = swift_getOpaqueTypeConformance2();
  v294 = v36;
  *&v295 = v145;
  v66 = swift_getOpaqueTypeConformance2();
  v263 = v65;
  v264 = v66;
  v67 = swift_getWitnessTable();
  v294 = v38;
  *&v295 = v139;
  v68 = swift_getOpaqueTypeConformance2();
  v261 = OpaqueTypeMetadata2;
  v262 = v68;
  v69 = swift_getWitnessTable();
  v259 = v67;
  v260 = v69;
  v70 = swift_getWitnessTable();
  v257 = v64;
  v258 = v70;
  v71 = swift_getWitnessTable();
  v255 = v57;
  v256 = v71;
  v254 = swift_getWitnessTable();
  v252 = swift_getWitnessTable();
  v253 = v207;
  v72 = swift_getWitnessTable();
  v250 = MEMORY[0x1E6981E60];
  v251 = v72;
  v73 = swift_getWitnessTable();
  v74 = MEMORY[0x1E69805D0];
  v248 = v73;
  v249 = MEMORY[0x1E69805D0];
  v246 = swift_getWitnessTable();
  v247 = v74;
  v75 = v184;
  v76 = swift_getWitnessTable();
  v294 = v75;
  *&v295 = v76;
  v77 = v75;
  v78 = swift_getOpaqueTypeMetadata2();
  v294 = v77;
  *&v295 = v76;
  v79 = swift_getOpaqueTypeConformance2();
  v294 = v78;
  *&v295 = v79;
  v184 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v80 = v208;
  v207 = *(v208 + 4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = v80[23];
  v82 = WitnessTable;
  v294 = v207;
  *v191 = *(&v207 + 1);
  *(&v295 + 1) = AssociatedConformanceWitness;
  v296 = v82;
  type metadata accessor for CanvasContextMenu(255, &v294);
  v83 = sub_1E68B1E40();
  v84 = v190;
  v85 = swift_getWitnessTable();
  v86 = AssociatedTypeWitness;
  v87 = swift_getAssociatedConformanceWitness();
  v294 = v84;
  *&v295 = v86;
  *(&v295 + 1) = v83;
  v296 = v85;
  *&v297 = v87;
  sub_1E68B2D40();
  v294 = v78;
  *&v295 = v79;
  v244 = swift_getOpaqueTypeConformance2();
  v245 = v79;
  v88 = swift_getWitnessTable();
  v89 = swift_getWitnessTable();
  v242 = v88;
  v243 = v89;
  v241 = swift_getWitnessTable();
  swift_getWitnessTable();
  v90 = sub_1E68B1B50();
  v91 = swift_getWitnessTable();
  v294 = v90;
  *&v295 = v91;
  v92 = swift_getOpaqueTypeMetadata2();
  v294 = v90;
  *&v295 = v91;
  v93 = swift_getOpaqueTypeConformance2();
  v294 = v92;
  *&v295 = v93;
  swift_getOpaqueTypeMetadata2();
  v294 = v92;
  *&v295 = v93;
  swift_getOpaqueTypeConformance2();
  v94 = sub_1E68B1B80();
  v95 = sub_1E68B2480();
  v96 = swift_getWitnessTable();
  v294 = v94;
  *&v295 = v95;
  *(&v295 + 1) = v96;
  v296 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200, &qword_1E68BB7D8);
  v97 = sub_1E68B2D80();
  v98 = sub_1E673F2EC();
  v99 = swift_getWitnessTable();
  v100 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v239 = v99;
  v240 = v100;
  v101 = swift_getWitnessTable();
  v237 = v98;
  v238 = v101;
  v236 = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  v294 = v94;
  *&v295 = v95;
  *(&v295 + 1) = v96;
  v296 = MEMORY[0x1E697CC08];
  v103 = swift_getOpaqueTypeConformance2();
  v104 = sub_1E67D2CA8();
  v233 = v102;
  v234 = v103;
  v235 = v104;
  v191 = v97;
  v198 = swift_getWitnessTable();
  v105 = sub_1E68B2CC0();
  v199 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v106);
  v108 = v138 - v107;
  v109 = swift_getWitnessTable();
  v294 = v105;
  *&v295 = v109;
  v110 = v109;
  v189 = v109;
  v111 = swift_getOpaqueTypeMetadata2();
  v216 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v112);
  v114 = v138 - v113;
  v294 = v105;
  *&v295 = v110;
  v190 = swift_getOpaqueTypeConformance2();
  v294 = v111;
  *&v295 = v190;
  v195 = MEMORY[0x1E697CF18];
  v115 = swift_getOpaqueTypeMetadata2();
  v197 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v116);
  v118 = v138 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v119, v120);
  v122 = v138 - v121;
  sub_1E68B21D0();
  v123 = v208;
  *&v124 = v208[2];
  *(&v124 + 1) = v187;
  *&v125 = v208[4];
  *(&v125 + 1) = v210;
  v217 = v124;
  v218 = v125;
  v219 = v192;
  v220 = v207;
  v221 = v209;
  v222 = *(v208 + 11);
  *&v124 = v208[13];
  *(&v124 + 1) = v200;
  *&v125 = v208[15];
  *(&v125 + 1) = v194;
  v224 = v125;
  *&v125 = v208[17];
  *(&v125 + 1) = v212;
  *&v126 = v213;
  *(&v126 + 1) = v211;
  v223 = v124;
  v226 = v126;
  v225 = v125;
  *&v124 = WitnessTable;
  *(&v124 + 1) = OpaqueTypeMetadata2;
  v228 = v124;
  v227 = v193;
  *&v124 = v208[25];
  *(&v124 + 1) = v201;
  *&v125 = v208[27];
  *(&v125 + 1) = v196;
  v230 = v125;
  v229 = v124;
  v231 = v215;
  v127 = v202;
  v232 = v202;
  sub_1E68B2CB0();
  sub_1E68B28E0();
  (*(v199 + 8))(v108, v105);
  v128 = sub_1E68B24F0();
  v129 = (v127 + *(v123 + 64));
  v130 = *v129;
  v131 = v129[1];
  v132 = v129[2];
  v133 = v129[3];
  v134 = v203;
  sub_1E68B22F0();
  v135 = v190;
  MEMORY[0x1E69510A0](v128, v134, v111, v190, v132, v131, v130, v133);
  (*(v204 + 8))(v134, v205);
  (*(v216 + 8))(v114, v111);
  v294 = v111;
  *&v295 = v135;
  swift_getOpaqueTypeConformance2();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v136 = *(v197 + 8);
  v136(v118, v115);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v136)(v122, v115);
}

uint64_t sub_1E681A830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v169 = a8;
  v182 = a7;
  v177 = a6;
  v160 = a4;
  v158 = a2;
  v162 = a1;
  v166 = a9;
  v159 = a13;
  v157 = a12;
  v176 = a23;
  v174 = a22;
  v161 = a28;
  v175 = a29;
  v173 = a24;
  v181 = a25;
  v155 = a16;
  v172 = a17;
  v171 = a10;
  v179 = a11;
  v170 = a30;
  v154 = a18;
  v156 = a26;
  v152 = a27;
  v153 = a14;
  v151 = a15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v203 = a3;
  v204 = a15;
  v205 = a20;
  v206 = a27;
  v163 = type metadata accessor for CanvasSectionHeaderView(255, &v203);
  sub_1E68B2390();
  v164 = sub_1E68B1E40();
  v165 = sub_1E68B2220();
  v178 = sub_1E68B3750();
  v180 = a19;
  swift_getTupleTypeMetadata2();
  v32 = sub_1E68B33B0();
  v149 = *(a30 + 32);
  v150 = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v203 = a5;
  v204 = a3;
  v205 = a3;
  v206 = a21;
  v168 = a21;
  v207 = a20;
  v208 = a20;
  v167 = type metadata accessor for ActionCardView(255, &v203);
  WitnessTable = swift_getWitnessTable();
  v203 = v167;
  v204 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  v33 = sub_1E68B1E40();
  v145 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v217 = a21;
  v218 = v145;
  v34 = MEMORY[0x1E697E858];
  v35 = swift_getWitnessTable();
  v215 = v35;
  v216 = MEMORY[0x1E697F568];
  v183 = v34;
  v140 = v33;
  v139 = swift_getWitnessTable();
  v203 = v33;
  v204 = v139;
  v127 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v132 = sub_1E68B1E40();
  v213 = v35;
  v214 = MEMORY[0x1E697E040];
  v130 = swift_getWitnessTable();
  v203 = v132;
  v204 = v130;
  swift_getOpaqueTypeMetadata2();
  v133 = sub_1E68B2220();
  v135 = sub_1E68B2B90();
  v134 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v136 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  sub_1E68B2220();
  v122 = sub_1E68B2220();
  v203 = a5;
  v204 = a3;
  v205 = a3;
  v206 = a11;
  v207 = a17;
  v208 = a21;
  v209 = a20;
  v210 = a20;
  v211 = a25;
  v212 = a29;
  v138 = type metadata accessor for FullWidthStageView(255, &v203);
  v137 = swift_getWitnessTable();
  v203 = v138;
  v204 = v137;
  swift_getOpaqueTypeMetadata2();
  v146 = a3;
  v147 = a20;
  v131 = type metadata accessor for InfoActionCardView(255, a3, a20, v36);
  v129 = swift_getWitnessTable();
  v203 = v131;
  v204 = v129;
  swift_getOpaqueTypeMetadata2();
  v128 = sub_1E68B2220();
  v102 = sub_1E68B2220();
  v203 = a5;
  v204 = v177;
  v205 = v182;
  v206 = a21;
  v207 = a22;
  v208 = a23;
  v126 = type metadata accessor for LargeBrickView(255, &v203);
  v125 = swift_getWitnessTable();
  v203 = v126;
  v204 = v125;
  swift_getOpaqueTypeMetadata2();
  v124 = type metadata accessor for DynamicBrickView(255, a5, a21, v37);
  v123 = swift_getWitnessTable();
  v203 = v124;
  v204 = v123;
  swift_getOpaqueTypeMetadata2();
  v115 = sub_1E68B2220();
  v120 = type metadata accessor for MonogramVerticalStackView(255, a5, a21, v38);
  v119 = swift_getWitnessTable();
  v203 = v120;
  v204 = v119;
  swift_getOpaqueTypeMetadata2();
  v116 = sub_1E68B2220();
  v121 = sub_1E68B2220();
  sub_1E68B2220();
  v118 = type metadata accessor for StandardCardView(255, a5, a21, v39);
  v117 = swift_getWitnessTable();
  v203 = v118;
  v204 = v117;
  swift_getOpaqueTypeMetadata2();
  v203 = a5;
  v204 = a3;
  v205 = a21;
  v206 = a20;
  v114 = type metadata accessor for StandardHorizontalStackView(255, &v203);
  v113 = swift_getWitnessTable();
  v203 = v114;
  v204 = v113;
  swift_getOpaqueTypeMetadata2();
  v99 = sub_1E68B2220();
  v104 = type metadata accessor for StandardVerticalStackView(255, a5, a21, v40);
  v112 = swift_getWitnessTable();
  v203 = v104;
  v204 = v112;
  swift_getOpaqueTypeMetadata2();
  v108 = type metadata accessor for SummaryCardView(255, a5, a21, v41);
  v111 = sub_1E68B2220();
  v96[0] = sub_1E68B2220();
  v43 = type metadata accessor for TallCardView(255, a5, a21, v42);
  v109 = swift_getWitnessTable();
  v203 = v43;
  v204 = v109;
  swift_getOpaqueTypeMetadata2();
  v144 = a5;
  v45 = type metadata accessor for VerticalStackCardView(255, a5, a21, v44);
  v103 = swift_getWitnessTable();
  v203 = v45;
  v204 = v103;
  swift_getOpaqueTypeMetadata2();
  v96[1] = sub_1E68B2220();
  v47 = type metadata accessor for WideBrickView(255, a5, a21, v46);
  v97 = swift_getWitnessTable();
  v203 = v47;
  v204 = v97;
  swift_getOpaqueTypeMetadata2();
  v96[2] = sub_1E68B2220();
  v98 = sub_1E68B2220();
  v100 = sub_1E68B2220();
  v101 = sub_1E68B2220();
  v105 = sub_1E68B2B90();
  v106 = sub_1E68B1E40();
  v107 = sub_1E68B2220();
  v110 = sub_1E68B1E40();
  v142 = sub_1E68B1E40();
  v203 = v167;
  v204 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v203 = v140;
  v204 = v139;
  v49 = swift_getOpaqueTypeConformance2();
  v203 = v132;
  v204 = v130;
  v201 = v49;
  v202 = swift_getOpaqueTypeConformance2();
  v50 = MEMORY[0x1E697F968];
  v200 = swift_getWitnessTable();
  v198 = swift_getWitnessTable();
  v199 = MEMORY[0x1E697E5D8];
  v196 = swift_getWitnessTable();
  v197 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v194 = swift_getWitnessTable();
  v195 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v192 = OpaqueTypeConformance2;
  v193 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v203 = v138;
  v204 = v137;
  v52 = swift_getOpaqueTypeConformance2();
  v203 = v131;
  v204 = v129;
  v190 = v52;
  v191 = swift_getOpaqueTypeConformance2();
  v188 = v51;
  v189 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v203 = v126;
  v204 = v125;
  v54 = swift_getOpaqueTypeConformance2();
  v203 = v124;
  v204 = v123;
  v186[76] = v54;
  v187 = swift_getOpaqueTypeConformance2();
  v55 = swift_getWitnessTable();
  v203 = v120;
  v204 = v119;
  v186[74] = swift_getOpaqueTypeConformance2();
  v186[75] = v187;
  v186[72] = v55;
  v186[73] = swift_getWitnessTable();
  v186[70] = v53;
  v186[71] = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v203 = v118;
  v204 = v117;
  v57 = swift_getOpaqueTypeConformance2();
  v203 = v114;
  v204 = v113;
  v186[68] = v57;
  v186[69] = swift_getOpaqueTypeConformance2();
  v58 = swift_getWitnessTable();
  v203 = v104;
  v204 = v112;
  v186[66] = swift_getOpaqueTypeConformance2();
  v186[67] = swift_getWitnessTable();
  v186[64] = v58;
  v186[65] = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v203 = v43;
  v204 = v109;
  v60 = swift_getOpaqueTypeConformance2();
  v203 = v45;
  v204 = v103;
  v186[62] = v60;
  v186[63] = swift_getOpaqueTypeConformance2();
  v61 = swift_getWitnessTable();
  v203 = v47;
  v204 = v97;
  v186[60] = a25;
  v186[61] = swift_getOpaqueTypeConformance2();
  v186[58] = v61;
  v186[59] = swift_getWitnessTable();
  v186[56] = v59;
  v186[57] = swift_getWitnessTable();
  v186[54] = v56;
  v186[55] = swift_getWitnessTable();
  v167 = v50;
  v186[53] = swift_getWitnessTable();
  v186[51] = swift_getWitnessTable();
  v186[52] = v145;
  v62 = swift_getWitnessTable();
  v186[49] = MEMORY[0x1E6981E60];
  v186[50] = v62;
  v63 = swift_getWitnessTable();
  v64 = MEMORY[0x1E69805D0];
  v186[47] = v63;
  v186[48] = MEMORY[0x1E69805D0];
  v186[45] = swift_getWitnessTable();
  v186[46] = v64;
  v65 = swift_getWitnessTable();
  v203 = v142;
  v204 = v65;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v203 = v142;
  v204 = v65;
  v67 = swift_getOpaqueTypeConformance2();
  v203 = OpaqueTypeMetadata2;
  v204 = v67;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v203 = v169;
  v204 = a10;
  v205 = AssociatedConformanceWitness;
  v206 = a24;
  type metadata accessor for CanvasContextMenu(255, &v203);
  v69 = sub_1E68B1E40();
  v70 = swift_getWitnessTable();
  v71 = swift_getAssociatedConformanceWitness();
  v203 = v150;
  v204 = AssociatedTypeWitness;
  v205 = v69;
  v206 = v70;
  v207 = v71;
  sub_1E68B2D40();
  v203 = OpaqueTypeMetadata2;
  v204 = v67;
  v186[43] = swift_getOpaqueTypeConformance2();
  v186[44] = v67;
  v186[41] = swift_getWitnessTable();
  v186[42] = swift_getWitnessTable();
  v186[40] = swift_getWitnessTable();
  swift_getWitnessTable();
  v72 = sub_1E68B1B50();
  v73 = swift_getWitnessTable();
  v203 = v72;
  v204 = v73;
  v74 = swift_getOpaqueTypeMetadata2();
  v203 = v72;
  v204 = v73;
  v75 = swift_getOpaqueTypeConformance2();
  v203 = v74;
  v204 = v75;
  swift_getOpaqueTypeMetadata2();
  v203 = v74;
  v204 = v75;
  swift_getOpaqueTypeConformance2();
  WitnessTable = sub_1E68B1B80();
  v142 = sub_1E68B2480();
  v141 = swift_getWitnessTable();
  v203 = WitnessTable;
  v204 = v142;
  v205 = v141;
  v206 = MEMORY[0x1E697CC08];
  v140 = MEMORY[0x1E697D2A8];
  AssociatedTypeWitness = swift_getOpaqueTypeMetadata2();
  v138 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200, &qword_1E68BB7D8);
  v76 = sub_1E68B2D80();
  v77 = *(v76 - 8);
  v149 = v76;
  v150 = v77;
  MEMORY[0x1EEE9AC00](v76, v78);
  v139 = v96 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80, v81);
  v145 = v96 - v82;
  v186[2] = v158;
  v186[3] = v146;
  v186[4] = v160;
  v186[5] = v144;
  v186[6] = v177;
  v186[7] = v182;
  v186[8] = v169;
  v186[9] = v171;
  v186[10] = v179;
  v186[11] = v157;
  v186[12] = v159;
  v186[13] = v153;
  v186[14] = v151;
  v186[15] = v155;
  v186[16] = v172;
  v186[17] = v154;
  v186[18] = v180;
  v186[19] = v147;
  v186[20] = v168;
  v186[21] = v174;
  v186[22] = v176;
  v186[23] = v173;
  v186[24] = v181;
  v186[25] = v156;
  v186[26] = v152;
  v186[27] = v161;
  v186[28] = v175;
  v186[29] = v170;
  v186[30] = v162;
  v185[2] = v158;
  v185[3] = v146;
  v185[4] = v160;
  v185[5] = v144;
  v185[6] = v177;
  v185[7] = v182;
  v185[8] = v169;
  v185[9] = v171;
  v185[10] = v179;
  v185[11] = v157;
  v185[12] = v159;
  v185[13] = v153;
  v185[14] = v151;
  v185[15] = v155;
  v185[16] = v172;
  v185[17] = v154;
  v185[18] = v180;
  v185[19] = v147;
  v185[20] = v168;
  v185[21] = v174;
  v185[22] = v176;
  v185[23] = v173;
  v185[24] = v181;
  v185[25] = v156;
  v185[26] = v152;
  v185[27] = v161;
  v185[28] = v175;
  v185[29] = v170;
  v185[30] = v162;
  v184[2] = v158;
  v184[3] = v146;
  v184[4] = v160;
  v184[5] = v144;
  v184[6] = v177;
  v184[7] = v182;
  v184[8] = v169;
  v184[9] = v171;
  v184[10] = v179;
  v184[11] = v157;
  v184[12] = v159;
  v184[13] = v153;
  v184[14] = v151;
  v184[15] = v155;
  v184[16] = v172;
  v184[17] = v154;
  v184[18] = v180;
  v184[19] = v147;
  v184[20] = v168;
  v184[21] = v174;
  v184[22] = v176;
  v184[23] = v173;
  v184[24] = v181;
  v184[25] = v156;
  v184[26] = v152;
  v184[27] = v161;
  v184[28] = v175;
  v184[29] = v170;
  v184[30] = v162;
  v83 = sub_1E673F2EC();
  v84 = swift_getWitnessTable();
  v85 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v186[38] = v84;
  v186[39] = v85;
  v86 = swift_getWitnessTable();
  v186[36] = v83;
  v186[37] = v86;
  v186[35] = swift_getWitnessTable();
  v87 = v178;
  v88 = swift_getWitnessTable();
  v203 = WitnessTable;
  v204 = v142;
  v205 = v141;
  v206 = MEMORY[0x1E697CC08];
  v89 = swift_getOpaqueTypeConformance2();
  v90 = sub_1E67D2CA8();
  v91 = v139;
  sub_1E68615E8(sub_1E682330C, v186, sub_1E6823324, v185, sub_1E682333C, v184, v87, AssociatedTypeWitness, v138, v88, v89, v90);
  v186[32] = v88;
  v186[33] = v89;
  v186[34] = v90;
  v92 = v149;
  swift_getWitnessTable();
  v93 = v145;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v94 = *(v150 + 8);
  v94(v91, v92);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v94)(v93, v92);
}

uint64_t sub_1E681BE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v210 = a8;
  v219 = a7;
  v218 = a6;
  v201 = a4;
  v197 = a2;
  v206 = a1;
  v207 = a9;
  v205 = a27;
  v204 = a26;
  v200 = a15;
  v199 = a14;
  v196 = a13;
  v195 = a12;
  v215 = a23;
  v217 = a22;
  v202 = a28;
  v213 = a29;
  v216 = a24;
  v222 = a25;
  v194 = a16;
  v214 = a17;
  v212 = a10;
  v220 = a11;
  v211 = a30;
  v193 = a18;
  v209 = a19;
  v32 = sub_1E68B2460();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v198 = v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_1E68B2480();
  v203 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v35);
  v192 = v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v37 = sub_1E68B33B0();
  v189 = *(a30 + 32);
  v190 = v37;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v305 = a5;
  v306 = a3;
  v208 = a3;
  v307 = a3;
  v308 = a21;
  v309 = a20;
  v310 = a20;
  v38 = type metadata accessor for ActionCardView(255, &v305);
  v183 = v38;
  WitnessTable = swift_getWitnessTable();
  v305 = v38;
  v306 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v181 = sub_1E68B2440();
  sub_1E68B1E40();
  v39 = sub_1E68B1E40();
  v186 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v319 = a21;
  v320 = v186;
  v40 = MEMORY[0x1E697E858];
  v41 = swift_getWitnessTable();
  v317 = v41;
  v318 = MEMORY[0x1E697F568];
  v221 = v40;
  v179 = v39;
  v178 = swift_getWitnessTable();
  v305 = v39;
  v306 = v178;
  v166 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v42 = sub_1E68B1E40();
  v171 = v42;
  v315 = v41;
  v316 = MEMORY[0x1E697E040];
  v169 = swift_getWitnessTable();
  v305 = v42;
  v306 = v169;
  swift_getOpaqueTypeMetadata2();
  v172 = sub_1E68B2220();
  v174 = sub_1E68B2B90();
  v173 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v175 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v180 = sub_1E68B2220();
  v161 = sub_1E68B2220();
  v43 = v208;
  v305 = a5;
  v306 = v208;
  v307 = v208;
  v308 = v220;
  v309 = v214;
  v310 = a21;
  v311 = a20;
  v312 = a20;
  v313 = v222;
  v314 = v213;
  v44 = type metadata accessor for FullWidthStageView(255, &v305);
  OpaqueTypeMetadata2 = v44;
  v176 = swift_getWitnessTable();
  v305 = v44;
  v306 = v176;
  swift_getOpaqueTypeMetadata2();
  v45 = v43;
  v187 = a20;
  v47 = type metadata accessor for InfoActionCardView(255, v43, a20, v46);
  v170 = v47;
  v168 = swift_getWitnessTable();
  v305 = v47;
  v306 = v168;
  swift_getOpaqueTypeMetadata2();
  v167 = sub_1E68B2220();
  v142 = sub_1E68B2220();
  v305 = a5;
  v306 = v218;
  v307 = v219;
  v308 = a21;
  v309 = v217;
  v310 = v215;
  v48 = type metadata accessor for LargeBrickView(255, &v305);
  v165 = v48;
  v164 = swift_getWitnessTable();
  v305 = v48;
  v306 = v164;
  swift_getOpaqueTypeMetadata2();
  v50 = type metadata accessor for DynamicBrickView(255, a5, a21, v49);
  v163 = v50;
  v162 = swift_getWitnessTable();
  v305 = v50;
  v306 = v162;
  swift_getOpaqueTypeMetadata2();
  v154 = sub_1E68B2220();
  v52 = type metadata accessor for MonogramVerticalStackView(255, a5, a21, v51);
  v159 = v52;
  v158 = swift_getWitnessTable();
  v305 = v52;
  v306 = v158;
  swift_getOpaqueTypeMetadata2();
  v155 = sub_1E68B2220();
  v160 = sub_1E68B2220();
  v136[0] = sub_1E68B2220();
  v54 = type metadata accessor for StandardCardView(255, a5, a21, v53);
  v157 = v54;
  v156 = swift_getWitnessTable();
  v305 = v54;
  v306 = v156;
  swift_getOpaqueTypeMetadata2();
  v305 = a5;
  v306 = v45;
  v307 = a21;
  v308 = a20;
  v55 = type metadata accessor for StandardHorizontalStackView(255, &v305);
  v153 = v55;
  v152 = swift_getWitnessTable();
  v305 = v55;
  v306 = v152;
  swift_getOpaqueTypeMetadata2();
  v139 = sub_1E68B2220();
  v57 = type metadata accessor for StandardVerticalStackView(255, a5, a21, v56);
  v151 = swift_getWitnessTable();
  v305 = v57;
  v306 = v151;
  swift_getOpaqueTypeMetadata2();
  v147 = type metadata accessor for SummaryCardView(255, a5, a21, v58);
  v150 = sub_1E68B2220();
  v136[1] = sub_1E68B2220();
  v60 = type metadata accessor for TallCardView(255, a5, a21, v59);
  v148 = swift_getWitnessTable();
  v305 = v60;
  v306 = v148;
  swift_getOpaqueTypeMetadata2();
  v184 = a5;
  v185 = a21;
  v62 = type metadata accessor for VerticalStackCardView(255, a5, a21, v61);
  v143 = swift_getWitnessTable();
  v305 = v62;
  v306 = v143;
  swift_getOpaqueTypeMetadata2();
  v136[2] = sub_1E68B2220();
  v64 = type metadata accessor for WideBrickView(255, a5, a21, v63);
  v137 = swift_getWitnessTable();
  v305 = v64;
  v306 = v137;
  swift_getOpaqueTypeMetadata2();
  v136[3] = sub_1E68B2220();
  v138 = sub_1E68B2220();
  v140 = sub_1E68B2220();
  v141 = sub_1E68B2220();
  v144 = sub_1E68B2B90();
  v145 = sub_1E68B1E40();
  v146 = sub_1E68B2220();
  v149 = sub_1E68B1E40();
  v181 = sub_1E68B1E40();
  v305 = v183;
  v306 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v305 = v179;
  v306 = v178;
  v66 = swift_getOpaqueTypeConformance2();
  v305 = v171;
  v306 = v169;
  v67 = swift_getOpaqueTypeConformance2();
  v303 = v66;
  v304 = v67;
  v302 = swift_getWitnessTable();
  v183 = MEMORY[0x1E6981600];
  v300 = swift_getWitnessTable();
  v301 = MEMORY[0x1E697E5D8];
  v68 = swift_getWitnessTable();
  v69 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v298 = v68;
  v299 = v69;
  v70 = swift_getWitnessTable();
  v71 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v296 = v70;
  v297 = v71;
  v72 = swift_getWitnessTable();
  v294 = OpaqueTypeConformance2;
  v295 = v72;
  v73 = swift_getWitnessTable();
  v305 = OpaqueTypeMetadata2;
  v306 = v176;
  v74 = swift_getOpaqueTypeConformance2();
  v305 = v170;
  v306 = v168;
  v75 = swift_getOpaqueTypeConformance2();
  v292 = v74;
  v293 = v75;
  v76 = swift_getWitnessTable();
  v290 = v73;
  v291 = v76;
  v77 = swift_getWitnessTable();
  v305 = v165;
  v306 = v164;
  v78 = swift_getOpaqueTypeConformance2();
  v305 = v163;
  v306 = v162;
  v79 = swift_getOpaqueTypeConformance2();
  v288 = v78;
  v289 = v79;
  v80 = swift_getWitnessTable();
  v305 = v159;
  v306 = v158;
  v286 = swift_getOpaqueTypeConformance2();
  v287 = v79;
  v81 = swift_getWitnessTable();
  v284 = v80;
  v285 = v81;
  v82 = swift_getWitnessTable();
  v282 = v77;
  v283 = v82;
  v83 = swift_getWitnessTable();
  v305 = v157;
  v306 = v156;
  v84 = swift_getOpaqueTypeConformance2();
  v305 = v153;
  v306 = v152;
  v85 = swift_getOpaqueTypeConformance2();
  v280 = v84;
  v281 = v85;
  v86 = swift_getWitnessTable();
  v305 = v57;
  v306 = v151;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = swift_getWitnessTable();
  v278 = v87;
  v279 = v88;
  v89 = swift_getWitnessTable();
  v276 = v86;
  v277 = v89;
  v90 = swift_getWitnessTable();
  v305 = v60;
  v306 = v148;
  v91 = swift_getOpaqueTypeConformance2();
  v305 = v62;
  v306 = v143;
  v92 = swift_getOpaqueTypeConformance2();
  v274 = v91;
  v275 = v92;
  v93 = swift_getWitnessTable();
  v305 = v64;
  v306 = v137;
  v94 = swift_getOpaqueTypeConformance2();
  v272 = v222;
  v273 = v94;
  v95 = swift_getWitnessTable();
  v270 = v93;
  v271 = v95;
  v96 = swift_getWitnessTable();
  v268 = v90;
  v269 = v96;
  v97 = swift_getWitnessTable();
  v266 = v83;
  v267 = v97;
  v265 = swift_getWitnessTable();
  v263 = swift_getWitnessTable();
  v264 = v186;
  v98 = swift_getWitnessTable();
  v261 = MEMORY[0x1E6981E60];
  v262 = v98;
  v99 = swift_getWitnessTable();
  v100 = MEMORY[0x1E69805D0];
  v259 = v99;
  v260 = MEMORY[0x1E69805D0];
  v257 = swift_getWitnessTable();
  v258 = v100;
  v101 = v181;
  v102 = swift_getWitnessTable();
  v305 = v101;
  v306 = v102;
  v103 = v101;
  v104 = swift_getOpaqueTypeMetadata2();
  v305 = v103;
  v306 = v102;
  v105 = swift_getOpaqueTypeConformance2();
  v305 = v104;
  v306 = v105;
  v186 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v106 = v210;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v305 = v106;
  v306 = v212;
  v307 = AssociatedConformanceWitness;
  v308 = v216;
  type metadata accessor for CanvasContextMenu(255, &v305);
  v108 = sub_1E68B1E40();
  v109 = v190;
  v110 = swift_getWitnessTable();
  v111 = AssociatedTypeWitness;
  v112 = swift_getAssociatedConformanceWitness();
  v305 = v109;
  v306 = v111;
  v307 = v108;
  v308 = v110;
  v309 = v112;
  sub_1E68B2D40();
  v305 = v104;
  v306 = v105;
  v255 = swift_getOpaqueTypeConformance2();
  v256 = v105;
  v113 = swift_getWitnessTable();
  v114 = swift_getWitnessTable();
  v253 = v113;
  v254 = v114;
  v252 = swift_getWitnessTable();
  swift_getWitnessTable();
  v115 = sub_1E68B1B50();
  v116 = swift_getWitnessTable();
  v305 = v115;
  v306 = v116;
  v117 = swift_getOpaqueTypeMetadata2();
  v305 = v115;
  v306 = v116;
  v118 = swift_getOpaqueTypeConformance2();
  v305 = v117;
  v306 = v118;
  swift_getOpaqueTypeMetadata2();
  v305 = v117;
  v306 = v118;
  swift_getOpaqueTypeConformance2();
  v119 = sub_1E68B1B80();
  v221 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v120);
  v122 = v136 - v121;
  v123 = swift_getWitnessTable();
  v124 = v191;
  v305 = v119;
  v306 = v191;
  v307 = v123;
  v308 = MEMORY[0x1E697CC08];
  v189 = MEMORY[0x1E697D2A8];
  v125 = swift_getOpaqueTypeMetadata2();
  v190 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v126);
  v128 = v136 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v129, v130);
  v132 = v136 - v131;
  sub_1E68B24B0();
  v223 = v197;
  v224 = v208;
  v225 = v201;
  v226 = v184;
  v227 = v218;
  v228 = v219;
  v229 = v210;
  v230 = v212;
  v231 = v220;
  v232 = v195;
  v233 = v196;
  v234 = v199;
  v235 = v200;
  v236 = v194;
  v237 = v214;
  v238 = v193;
  v239 = v209;
  v240 = v187;
  v241 = v185;
  v242 = v217;
  v243 = v215;
  v244 = v216;
  v245 = v222;
  v246 = v204;
  v247 = v205;
  v248 = v202;
  v249 = v213;
  v250 = v211;
  v251 = v206;
  sub_1E68B1B90();
  sub_1E68B2450();
  v133 = v192;
  sub_1E68B2470();
  sub_1E68B2940();
  (*(v203 + 8))(v133, v124);
  (*(v221 + 8))(v122, v119);
  v305 = v119;
  v306 = v124;
  v307 = v123;
  v308 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeConformance2();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v134 = *(v190 + 8);
  v134(v128, v125);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v134)(v132, v125);
}

uint64_t sub_1E681D308@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v231 = a8;
  v218 = a7;
  v216 = a6;
  v203 = a4;
  v223 = a2;
  v207 = a1;
  v211 = a9;
  v206 = a27;
  v205 = a26;
  v225 = a15;
  v224 = a14;
  v222 = a13;
  v221 = a12;
  v215 = a23;
  v229 = a22;
  v204 = a28;
  v217 = a29;
  v234 = a24;
  v236 = a25;
  v220 = a16;
  v230 = a17;
  v233 = a10;
  v235 = a11;
  v232 = a30;
  v219 = a18;
  v228 = a19;
  v32 = sub_1E68B2350();
  v209 = *(v32 - 8);
  v210 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v208 = v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E68B22C0();
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v202 = v149 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v38 = sub_1E68B33B0();
  v200 = *(a30 + 32);
  v201 = v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v266 = a5;
  v227 = a3;
  v267 = a3;
  v268 = a3;
  v269 = a21;
  v270 = a20;
  v271 = a20;
  v39 = type metadata accessor for ActionCardView(255, &v266);
  v197 = v39;
  WitnessTable = swift_getWitnessTable();
  v266 = v39;
  v267 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v195 = sub_1E68B2440();
  sub_1E68B1E40();
  v40 = sub_1E68B1E40();
  v198 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v351 = a21;
  v352 = v198;
  v41 = MEMORY[0x1E697E858];
  v42 = swift_getWitnessTable();
  v349 = v42;
  v350 = MEMORY[0x1E697F568];
  v226 = v41;
  v193 = v40;
  v192 = swift_getWitnessTable();
  v266 = v40;
  v267 = v192;
  v180 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v43 = sub_1E68B1E40();
  v185 = v43;
  v347 = v42;
  v348 = MEMORY[0x1E697E040];
  v183 = swift_getWitnessTable();
  v266 = v43;
  v267 = v183;
  swift_getOpaqueTypeMetadata2();
  v186 = sub_1E68B2220();
  v188 = sub_1E68B2B90();
  v187 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v189 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v194 = sub_1E68B2220();
  v175 = sub_1E68B2220();
  v266 = a5;
  v44 = v227;
  v267 = v227;
  v268 = v227;
  v269 = v235;
  v270 = v230;
  v271 = a21;
  v272 = a20;
  v273 = a20;
  v274 = v236;
  v275 = v217;
  v45 = type metadata accessor for FullWidthStageView(255, &v266);
  OpaqueTypeMetadata2 = v45;
  v190 = swift_getWitnessTable();
  v266 = v45;
  v267 = v190;
  swift_getOpaqueTypeMetadata2();
  v214 = a20;
  v47 = type metadata accessor for InfoActionCardView(255, v44, a20, v46);
  v184 = v47;
  v182 = swift_getWitnessTable();
  v266 = v47;
  v267 = v182;
  swift_getOpaqueTypeMetadata2();
  v181 = sub_1E68B2220();
  v155 = sub_1E68B2220();
  v266 = a5;
  v267 = v216;
  v268 = v218;
  v269 = a21;
  v270 = v229;
  v271 = v215;
  v48 = type metadata accessor for LargeBrickView(255, &v266);
  v179 = v48;
  v178 = swift_getWitnessTable();
  v266 = v48;
  v267 = v178;
  swift_getOpaqueTypeMetadata2();
  v50 = type metadata accessor for DynamicBrickView(255, a5, a21, v49);
  v177 = v50;
  v176 = swift_getWitnessTable();
  v266 = v50;
  v267 = v176;
  swift_getOpaqueTypeMetadata2();
  v168 = sub_1E68B2220();
  v52 = type metadata accessor for MonogramVerticalStackView(255, a5, a21, v51);
  v173 = v52;
  v172 = swift_getWitnessTable();
  v266 = v52;
  v267 = v172;
  swift_getOpaqueTypeMetadata2();
  v169 = sub_1E68B2220();
  v174 = sub_1E68B2220();
  sub_1E68B2220();
  v54 = type metadata accessor for StandardCardView(255, a5, a21, v53);
  v171 = v54;
  v170 = swift_getWitnessTable();
  v266 = v54;
  v267 = v170;
  swift_getOpaqueTypeMetadata2();
  v266 = a5;
  v267 = v44;
  v268 = a21;
  v269 = a20;
  v55 = type metadata accessor for StandardHorizontalStackView(255, &v266);
  v167 = v55;
  v166 = swift_getWitnessTable();
  v266 = v55;
  v267 = v166;
  swift_getOpaqueTypeMetadata2();
  v152 = sub_1E68B2220();
  v57 = type metadata accessor for StandardVerticalStackView(255, a5, a21, v56);
  v165 = v57;
  v164 = swift_getWitnessTable();
  v266 = v57;
  v267 = v164;
  swift_getOpaqueTypeMetadata2();
  v160 = type metadata accessor for SummaryCardView(255, a5, a21, v58);
  v163 = sub_1E68B2220();
  v149[0] = sub_1E68B2220();
  v60 = type metadata accessor for TallCardView(255, a5, a21, v59);
  v161 = swift_getWitnessTable();
  v266 = v60;
  v267 = v161;
  swift_getOpaqueTypeMetadata2();
  v212 = a5;
  v213 = a21;
  v62 = type metadata accessor for VerticalStackCardView(255, a5, a21, v61);
  v156 = swift_getWitnessTable();
  v266 = v62;
  v267 = v156;
  swift_getOpaqueTypeMetadata2();
  v149[1] = sub_1E68B2220();
  v64 = type metadata accessor for WideBrickView(255, a5, a21, v63);
  v150 = swift_getWitnessTable();
  v266 = v64;
  v267 = v150;
  swift_getOpaqueTypeMetadata2();
  v149[2] = sub_1E68B2220();
  v151 = sub_1E68B2220();
  v153 = sub_1E68B2220();
  v154 = sub_1E68B2220();
  v157 = sub_1E68B2B90();
  v158 = sub_1E68B1E40();
  v159 = sub_1E68B2220();
  v162 = sub_1E68B1E40();
  v195 = sub_1E68B1E40();
  v266 = v197;
  v267 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v266 = v193;
  v267 = v192;
  v66 = swift_getOpaqueTypeConformance2();
  v266 = v185;
  v267 = v183;
  v67 = swift_getOpaqueTypeConformance2();
  v345 = v66;
  v346 = v67;
  v344 = swift_getWitnessTable();
  v197 = MEMORY[0x1E6981600];
  v342 = swift_getWitnessTable();
  v343 = MEMORY[0x1E697E5D8];
  v68 = swift_getWitnessTable();
  v69 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v340 = v68;
  v341 = v69;
  v70 = swift_getWitnessTable();
  v71 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v338 = v70;
  v339 = v71;
  v72 = swift_getWitnessTable();
  v336 = OpaqueTypeConformance2;
  v337 = v72;
  v73 = swift_getWitnessTable();
  v266 = OpaqueTypeMetadata2;
  v267 = v190;
  v74 = swift_getOpaqueTypeConformance2();
  v266 = v184;
  v267 = v182;
  v75 = swift_getOpaqueTypeConformance2();
  v334 = v74;
  v335 = v75;
  v76 = swift_getWitnessTable();
  v332 = v73;
  v333 = v76;
  v77 = swift_getWitnessTable();
  v266 = v179;
  v267 = v178;
  v78 = swift_getOpaqueTypeConformance2();
  v266 = v177;
  v267 = v176;
  v79 = swift_getOpaqueTypeConformance2();
  v330 = v78;
  v331 = v79;
  v80 = swift_getWitnessTable();
  v266 = v173;
  v267 = v172;
  v328 = swift_getOpaqueTypeConformance2();
  v329 = v79;
  v81 = swift_getWitnessTable();
  v326 = v80;
  v327 = v81;
  v82 = swift_getWitnessTable();
  v324 = v77;
  v325 = v82;
  v83 = swift_getWitnessTable();
  v266 = v171;
  v267 = v170;
  v84 = swift_getOpaqueTypeConformance2();
  v266 = v167;
  v267 = v166;
  v85 = swift_getOpaqueTypeConformance2();
  v322 = v84;
  v323 = v85;
  v86 = swift_getWitnessTable();
  v266 = v165;
  v267 = v164;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = swift_getWitnessTable();
  v320 = v87;
  v321 = v88;
  v89 = swift_getWitnessTable();
  v318 = v86;
  v319 = v89;
  v90 = swift_getWitnessTable();
  v266 = v60;
  v267 = v161;
  v91 = swift_getOpaqueTypeConformance2();
  v266 = v62;
  v267 = v156;
  v92 = swift_getOpaqueTypeConformance2();
  v316 = v91;
  v317 = v92;
  v93 = swift_getWitnessTable();
  v266 = v64;
  v267 = v150;
  v94 = swift_getOpaqueTypeConformance2();
  v314 = v236;
  v315 = v94;
  v95 = swift_getWitnessTable();
  v312 = v93;
  v313 = v95;
  v96 = swift_getWitnessTable();
  v310 = v90;
  v311 = v96;
  v97 = swift_getWitnessTable();
  v308 = v83;
  v309 = v97;
  v307 = swift_getWitnessTable();
  v305 = swift_getWitnessTable();
  v306 = v198;
  v98 = swift_getWitnessTable();
  v303 = MEMORY[0x1E6981E60];
  v304 = v98;
  v99 = swift_getWitnessTable();
  v100 = MEMORY[0x1E69805D0];
  v301 = v99;
  v302 = MEMORY[0x1E69805D0];
  v299 = swift_getWitnessTable();
  v300 = v100;
  v101 = v195;
  v102 = swift_getWitnessTable();
  v266 = v101;
  v267 = v102;
  v103 = swift_getOpaqueTypeMetadata2();
  v266 = v101;
  v267 = v102;
  v104 = swift_getOpaqueTypeConformance2();
  v266 = v103;
  v267 = v104;
  v198 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v105 = v231;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v266 = v105;
  v267 = v233;
  v268 = AssociatedConformanceWitness;
  v269 = v234;
  type metadata accessor for CanvasContextMenu(255, &v266);
  v107 = sub_1E68B1E40();
  v108 = v201;
  v109 = swift_getWitnessTable();
  v110 = AssociatedTypeWitness;
  v111 = swift_getAssociatedConformanceWitness();
  v266 = v108;
  v267 = v110;
  v268 = v107;
  v269 = v109;
  v270 = v111;
  v112 = sub_1E68B2D40();
  v266 = v103;
  v267 = v104;
  v297 = swift_getOpaqueTypeConformance2();
  v298 = v104;
  v113 = swift_getWitnessTable();
  v114 = swift_getWitnessTable();
  v295 = v113;
  v296 = v114;
  v294 = swift_getWitnessTable();
  v192 = v112;
  OpaqueTypeMetadata2 = swift_getWitnessTable();
  v115 = sub_1E68B1B50();
  v201 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v116);
  v189 = v149 - v117;
  v118 = swift_getWitnessTable();
  v266 = v115;
  v267 = v118;
  v119 = swift_getOpaqueTypeMetadata2();
  AssociatedTypeWitness = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v120);
  v195 = v149 - v121;
  WitnessTable = v118;
  v226 = v115;
  v266 = v115;
  v267 = v118;
  v122 = swift_getOpaqueTypeConformance2();
  v200 = v119;
  v266 = v119;
  v194 = v122;
  v267 = v122;
  v123 = swift_getOpaqueTypeMetadata2();
  v197 = *(v123 - 8);
  v198 = v123;
  MEMORY[0x1EEE9AC00](v123, v124);
  v190 = v149 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v126, v127);
  v193 = v149 - v128;
  v188 = sub_1E68B2120();
  v266 = v223;
  v267 = v227;
  v129 = v203;
  v268 = v203;
  v269 = v212;
  v130 = v216;
  v270 = v216;
  v131 = v218;
  v271 = v218;
  v272 = v231;
  v273 = v233;
  v274 = v235;
  v275 = v221;
  v276 = v222;
  v277 = v224;
  v278 = v225;
  v279 = v220;
  v280 = v230;
  v281 = v219;
  v282 = v228;
  v283 = v214;
  v284 = v213;
  v285 = v229;
  v132 = v215;
  v286 = v215;
  v287 = v234;
  v288 = v236;
  v133 = v205;
  v134 = v206;
  v289 = v205;
  v290 = v206;
  v135 = v204;
  v291 = v204;
  v136 = v217;
  v292 = v217;
  v293 = v232;
  v137 = type metadata accessor for OrthogonalView(0, &v266);
  v186 = *(v207 + *(v137 + 260) + 8);
  v187 = v137;
  v237 = v223;
  v238 = v227;
  v239 = v129;
  v240 = v212;
  v241 = v130;
  v138 = v189;
  v242 = v131;
  v243 = v231;
  v244 = v233;
  v245 = v235;
  v246 = v221;
  v247 = v222;
  v248 = v224;
  v249 = v225;
  v250 = v220;
  v251 = v230;
  v252 = v219;
  v253 = v228;
  v254 = v214;
  v255 = v213;
  v256 = v229;
  v257 = v132;
  v258 = v234;
  v259 = v236;
  v260 = v133;
  v261 = v134;
  v262 = v135;
  v263 = v136;
  v264 = v232;
  v265 = v207;
  sub_1E67D1D10();
  sub_1E68B1B40();
  if (sub_1E6817C34(v187))
  {
    v139 = v208;
    sub_1E68B2340();
  }

  else
  {
    v139 = v208;
    sub_1E68B2330();
  }

  v140 = v195;
  v141 = v226;
  sub_1E68B2980();
  (*(v209 + 8))(v139, v210);
  (*(v201 + 8))(v138, v141);
  v142 = v190;
  v143 = v200;
  v144 = v194;
  sub_1E68B28F0();
  (*(AssociatedTypeWitness + 8))(v140, v143);
  v266 = v143;
  v267 = v144;
  swift_getOpaqueTypeConformance2();
  v145 = v193;
  v146 = v198;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v147 = *(v197 + 8);
  v147(v142, v146);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v147)(v145, v146);
}

uint64_t sub_1E681E9C8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v220 = a8;
  v228 = a7;
  v226 = a6;
  v210 = a4;
  v231 = a3;
  v209 = a2;
  v214 = a1;
  v215 = a9;
  v217 = a29;
  v213 = a28;
  v212 = a27;
  v211 = a26;
  v233 = a25;
  v223 = a24;
  v227 = a23;
  v225 = a22;
  v208 = a18;
  v224 = a17;
  v207 = a16;
  v206 = a15;
  v205 = a14;
  v204 = a13;
  v203 = a12;
  v230 = a11;
  v221 = a10;
  v293 = a2;
  v294 = a3;
  v295 = a4;
  v296 = a5;
  v297 = a6;
  v298 = a7;
  v299 = a8;
  v300 = a10;
  v301 = a11;
  v302 = a12;
  v303 = a13;
  v304 = a14;
  v305 = a15;
  v306 = a16;
  v307 = a17;
  v308 = a18;
  v309 = a19;
  v310 = a20;
  v311 = a21;
  v312 = a22;
  v313 = a23;
  v314 = a24;
  v315 = a25;
  v316 = a26;
  v317 = a27;
  v318 = a28;
  v319 = a29;
  v320 = a30;
  v222 = a30;
  v31 = type metadata accessor for OrthogonalView(0, &v293);
  v200 = *(v31 - 8);
  v201 = v31;
  v202 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v199 = v146 - v33;
  v218 = a19;
  swift_getTupleTypeMetadata2();
  v198 = sub_1E68B33B0();
  v229 = *(a30 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v293 = a5;
  v294 = v231;
  v295 = v231;
  v296 = a21;
  v216 = a20;
  v297 = a20;
  v298 = a20;
  v34 = type metadata accessor for ActionCardView(255, &v293);
  v194 = v34;
  WitnessTable = swift_getWitnessTable();
  v293 = v34;
  v294 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v192 = sub_1E68B2440();
  sub_1E68B1E40();
  v35 = sub_1E68B1E40();
  v197 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v291 = a21;
  v292 = v197;
  v36 = MEMORY[0x1E697E858];
  v37 = swift_getWitnessTable();
  v289 = v37;
  v290 = MEMORY[0x1E697F568];
  v232 = v36;
  v190 = v35;
  v189 = swift_getWitnessTable();
  v293 = v35;
  v294 = v189;
  v177 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v38 = sub_1E68B1E40();
  v182 = v38;
  v287 = v37;
  v288 = MEMORY[0x1E697E040];
  v180 = swift_getWitnessTable();
  v293 = v38;
  v294 = v180;
  swift_getOpaqueTypeMetadata2();
  v183 = sub_1E68B2220();
  v185 = sub_1E68B2B90();
  v184 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v186 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v191 = sub_1E68B2220();
  v172 = sub_1E68B2220();
  v39 = a5;
  v293 = a5;
  v40 = v231;
  v294 = v231;
  v295 = v231;
  v296 = v230;
  v297 = v224;
  v298 = a21;
  v41 = v216;
  v299 = v216;
  v300 = v216;
  v301 = v233;
  v302 = v217;
  v42 = type metadata accessor for FullWidthStageView(255, &v293);
  v188 = v42;
  v187 = swift_getWitnessTable();
  v293 = v42;
  v294 = v187;
  swift_getOpaqueTypeMetadata2();
  v44 = type metadata accessor for InfoActionCardView(255, v40, v41, v43);
  v181 = v44;
  v179 = swift_getWitnessTable();
  v293 = v44;
  v294 = v179;
  swift_getOpaqueTypeMetadata2();
  v178 = sub_1E68B2220();
  v152 = sub_1E68B2220();
  v45 = v39;
  v293 = v39;
  v294 = v226;
  v295 = v228;
  v296 = a21;
  v297 = v225;
  v298 = v227;
  v46 = type metadata accessor for LargeBrickView(255, &v293);
  v176 = v46;
  v175 = swift_getWitnessTable();
  v293 = v46;
  v294 = v175;
  swift_getOpaqueTypeMetadata2();
  v48 = type metadata accessor for DynamicBrickView(255, v39, a21, v47);
  v174 = v48;
  v173 = swift_getWitnessTable();
  v293 = v48;
  v294 = v173;
  swift_getOpaqueTypeMetadata2();
  v165 = sub_1E68B2220();
  v50 = type metadata accessor for MonogramVerticalStackView(255, v39, a21, v49);
  v170 = v50;
  v169 = swift_getWitnessTable();
  v293 = v50;
  v294 = v169;
  swift_getOpaqueTypeMetadata2();
  v166 = sub_1E68B2220();
  v171 = sub_1E68B2220();
  sub_1E68B2220();
  v52 = type metadata accessor for StandardCardView(255, v45, a21, v51);
  v168 = v52;
  v167 = swift_getWitnessTable();
  v293 = v52;
  v294 = v167;
  swift_getOpaqueTypeMetadata2();
  v293 = v45;
  v294 = v40;
  v295 = a21;
  v296 = v41;
  v53 = type metadata accessor for StandardHorizontalStackView(255, &v293);
  v164 = v53;
  v163 = swift_getWitnessTable();
  v293 = v53;
  v294 = v163;
  swift_getOpaqueTypeMetadata2();
  v149 = sub_1E68B2220();
  v55 = type metadata accessor for StandardVerticalStackView(255, v45, a21, v54);
  v154 = v55;
  v162 = swift_getWitnessTable();
  v293 = v55;
  v294 = v162;
  swift_getOpaqueTypeMetadata2();
  v195 = v45;
  v158 = type metadata accessor for SummaryCardView(255, v45, a21, v56);
  v161 = sub_1E68B2220();
  v146[0] = sub_1E68B2220();
  v58 = type metadata accessor for TallCardView(255, v45, a21, v57);
  v159 = swift_getWitnessTable();
  v293 = v58;
  v294 = v159;
  swift_getOpaqueTypeMetadata2();
  v196 = a21;
  v60 = type metadata accessor for VerticalStackCardView(255, v45, a21, v59);
  v153 = swift_getWitnessTable();
  v293 = v60;
  v294 = v153;
  swift_getOpaqueTypeMetadata2();
  v146[1] = sub_1E68B2220();
  v62 = type metadata accessor for WideBrickView(255, v45, a21, v61);
  v147 = swift_getWitnessTable();
  v293 = v62;
  v294 = v147;
  swift_getOpaqueTypeMetadata2();
  v146[2] = sub_1E68B2220();
  v148 = sub_1E68B2220();
  v150 = sub_1E68B2220();
  v151 = sub_1E68B2220();
  v155 = sub_1E68B2B90();
  v156 = sub_1E68B1E40();
  v157 = sub_1E68B2220();
  v160 = sub_1E68B1E40();
  v192 = sub_1E68B1E40();
  v293 = v194;
  v294 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v293 = v190;
  v294 = v189;
  v64 = swift_getOpaqueTypeConformance2();
  v293 = v182;
  v294 = v180;
  v65 = swift_getOpaqueTypeConformance2();
  v285 = v64;
  v286 = v65;
  v284 = swift_getWitnessTable();
  v194 = MEMORY[0x1E6981600];
  v282 = swift_getWitnessTable();
  v283 = MEMORY[0x1E697E5D8];
  v66 = swift_getWitnessTable();
  v67 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v280 = v66;
  v281 = v67;
  v68 = swift_getWitnessTable();
  v69 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v278 = v68;
  v279 = v69;
  v70 = swift_getWitnessTable();
  v276 = OpaqueTypeConformance2;
  v277 = v70;
  v71 = swift_getWitnessTable();
  v293 = v188;
  v294 = v187;
  v72 = swift_getOpaqueTypeConformance2();
  v293 = v181;
  v294 = v179;
  v73 = swift_getOpaqueTypeConformance2();
  v274 = v72;
  v275 = v73;
  v74 = swift_getWitnessTable();
  v272 = v71;
  v273 = v74;
  v75 = swift_getWitnessTable();
  v293 = v176;
  v294 = v175;
  v76 = swift_getOpaqueTypeConformance2();
  v293 = v174;
  v294 = v173;
  v77 = swift_getOpaqueTypeConformance2();
  v270 = v76;
  v271 = v77;
  v78 = swift_getWitnessTable();
  v293 = v170;
  v294 = v169;
  v268 = swift_getOpaqueTypeConformance2();
  v269 = v77;
  v79 = swift_getWitnessTable();
  v266 = v78;
  v267 = v79;
  v80 = swift_getWitnessTable();
  v264 = v75;
  v265 = v80;
  v81 = swift_getWitnessTable();
  v293 = v168;
  v294 = v167;
  v82 = swift_getOpaqueTypeConformance2();
  v293 = v164;
  v294 = v163;
  v83 = swift_getOpaqueTypeConformance2();
  v262 = v82;
  v263 = v83;
  v84 = swift_getWitnessTable();
  v293 = v154;
  v294 = v162;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = swift_getWitnessTable();
  v260 = v85;
  v261 = v86;
  v87 = swift_getWitnessTable();
  v258 = v84;
  v259 = v87;
  v88 = swift_getWitnessTable();
  v293 = v58;
  v294 = v159;
  v89 = swift_getOpaqueTypeConformance2();
  v293 = v60;
  v294 = v153;
  v90 = swift_getOpaqueTypeConformance2();
  v256 = v89;
  v257 = v90;
  v91 = swift_getWitnessTable();
  v293 = v62;
  v294 = v147;
  v92 = swift_getOpaqueTypeConformance2();
  v254 = v233;
  v255 = v92;
  v93 = swift_getWitnessTable();
  v252 = v91;
  v253 = v93;
  v94 = swift_getWitnessTable();
  v250 = v88;
  v251 = v94;
  v95 = swift_getWitnessTable();
  v248 = v81;
  v249 = v95;
  v247 = swift_getWitnessTable();
  v245 = swift_getWitnessTable();
  v246 = v197;
  v96 = swift_getWitnessTable();
  v243 = MEMORY[0x1E6981E60];
  v244 = v96;
  v97 = swift_getWitnessTable();
  v98 = MEMORY[0x1E69805D0];
  v241 = v97;
  v242 = MEMORY[0x1E69805D0];
  v239 = swift_getWitnessTable();
  v240 = v98;
  v99 = v192;
  v100 = swift_getWitnessTable();
  v293 = v99;
  v294 = v100;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v293 = v99;
  v294 = v100;
  v197 = swift_getOpaqueTypeConformance2();
  v293 = OpaqueTypeMetadata2;
  v294 = v197;
  WitnessTable = OpaqueTypeMetadata2;
  v194 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v191 = sub_1E68B2220();
  v102 = v218;
  v103 = v220;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v293 = v103;
  v294 = v221;
  v295 = AssociatedConformanceWitness;
  v296 = v223;
  v192 = type metadata accessor for CanvasContextMenu(255, &v293);
  v105 = sub_1E68B1E40();
  v189 = v105;
  v106 = v198;
  v107 = swift_getWitnessTable();
  v108 = AssociatedTypeWitness;
  v109 = swift_getAssociatedConformanceWitness();
  v293 = v106;
  v294 = v108;
  v295 = v105;
  v296 = v107;
  v297 = v109;
  v110 = sub_1E68B2D40();
  v198 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v111);
  v113 = v146 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = MEMORY[0x1EEE9AC00](v114, v115);
  v190 = v146 - v117;
  v118 = v200;
  v119 = v201;
  v188 = *(v214 + *(v201 + 244));
  v120 = v199;
  (*(v200 + 16))(v199, v116);
  v121 = (*(v118 + 80) + 240) & ~*(v118 + 80);
  v122 = swift_allocObject();
  v123 = v231;
  *(v122 + 2) = v209;
  *(v122 + 3) = v123;
  v124 = v195;
  *(v122 + 4) = v210;
  *(v122 + 5) = v124;
  v125 = v228;
  *(v122 + 6) = v226;
  *(v122 + 7) = v125;
  v126 = v221;
  *(v122 + 8) = v220;
  *(v122 + 9) = v126;
  v127 = v203;
  v128 = v204;
  *(v122 + 10) = v230;
  *(v122 + 11) = v127;
  v129 = v205;
  v130 = v206;
  *(v122 + 12) = v128;
  *(v122 + 13) = v129;
  v131 = v207;
  *(v122 + 14) = v130;
  *(v122 + 15) = v131;
  v132 = v208;
  *(v122 + 16) = v224;
  *(v122 + 17) = v132;
  v133 = v216;
  *(v122 + 18) = v102;
  *(v122 + 19) = v133;
  v134 = v225;
  *(v122 + 20) = v196;
  *(v122 + 21) = v134;
  v135 = v223;
  *(v122 + 22) = v227;
  *(v122 + 23) = v135;
  v136 = v211;
  *(v122 + 24) = v233;
  *(v122 + 25) = v136;
  v137 = v213;
  *(v122 + 26) = v212;
  *(v122 + 27) = v137;
  v138 = v222;
  *(v122 + 28) = v217;
  *(v122 + 29) = v138;
  (*(v118 + 32))(&v122[v121], v120, v119);

  v293 = WitnessTable;
  v139 = v197;
  v294 = v197;
  v237 = swift_getOpaqueTypeConformance2();
  v238 = v139;
  v140 = swift_getWitnessTable();
  v141 = swift_getWitnessTable();
  v235 = v140;
  v236 = v141;
  v142 = swift_getWitnessTable();
  sub_1E68B2D20();
  v234 = v142;
  swift_getWitnessTable();
  v143 = v190;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v144 = *(v198 + 8);
  v144(v113, v110);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v144)(v143, v110);
}

uint64_t sub_1E681FDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v386 = a8;
  v383 = a7;
  v380 = a6;
  v382 = a5;
  v359 = a4;
  v371 = a3;
  v350 = a2;
  v357 = a1;
  v337 = a9;
  v375 = a30;
  v362 = a29;
  v363 = a28;
  v361 = a27;
  v388 = a24;
  v385 = a23;
  v381 = a22;
  v384 = a21;
  v374 = a18;
  v378 = a17;
  v369 = a16;
  v370 = a15;
  v372 = a14;
  v377 = a13;
  v373 = a26;
  v387 = a12;
  v360 = a19;
  v379 = a10;
  v32 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v334 = v286 - v34;
  v368 = a31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v448 = a11;
  v367 = *(&a11 + 1);
  v364 = a11;
  *&v449 = AssociatedConformanceWitness;
  *(&v449 + 1) = a25;
  v358 = a25;
  v347 = type metadata accessor for CanvasContextMenu(0, &v448);
  v336 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v347, v35);
  v333 = v286 - v36;
  v366 = a20;
  v340 = *(a20 - 8);
  v353 = *(v340 + 64);
  MEMORY[0x1EEE9AC00](v37, v38);
  v351 = v286 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v448 = v359;
  *(&v448 + 1) = a5;
  *&v449 = v380;
  v40 = v383;
  *(&v449 + 1) = v383;
  v450 = v386;
  v451 = a10;
  v452 = a11;
  v453 = a12;
  v454 = v377;
  v455 = v372;
  v456 = v370;
  v457 = v369;
  v458 = v378;
  v459 = v374;
  v460 = a19;
  v461 = a20;
  v41 = v384;
  v462 = v384;
  v42 = v381;
  v463 = v381;
  v464 = v385;
  v465 = v388;
  v466 = a25;
  v43 = v373;
  v467 = v373;
  v468 = v361;
  v469 = v363;
  v470 = v362;
  v44 = v375;
  v471 = v375;
  v472 = a31;
  v376 = type metadata accessor for OrthogonalView(0, &v448);
  v365 = *(v376 - 8);
  v354 = *(v365 + 64);
  MEMORY[0x1EEE9AC00](v376, v45);
  v346 = v286 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v332 = v286 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v349 = v286 - v52;
  *&v448 = v40;
  *(&v448 + 1) = v382;
  *&v449 = v382;
  *(&v449 + 1) = v42;
  v450 = v41;
  v451 = v41;
  v53 = type metadata accessor for ActionCardView(255, &v448);
  v355 = v53;
  WitnessTable = swift_getWitnessTable();
  *&v448 = v53;
  *(&v448 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v345 = sub_1E68B2440();
  sub_1E68B1E40();
  v54 = sub_1E68B1E40();
  v356 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v446 = v42;
  v447 = v356;
  v55 = MEMORY[0x1E697E858];
  v56 = swift_getWitnessTable();
  v444 = v56;
  v445 = MEMORY[0x1E697F568];
  v348 = v55;
  v338 = v54;
  v327 = swift_getWitnessTable();
  *&v448 = v54;
  *(&v448 + 1) = v327;
  v315 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v57 = sub_1E68B1E40();
  v320 = v57;
  v442 = v56;
  v443 = MEMORY[0x1E697E040];
  v318 = swift_getWitnessTable();
  *&v448 = v57;
  *(&v448 + 1) = v318;
  swift_getOpaqueTypeMetadata2();
  v321 = sub_1E68B2220();
  v323 = sub_1E68B2B90();
  v322 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v324 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v339 = sub_1E68B2220();
  v310 = sub_1E68B2220();
  v58 = v383;
  *&v448 = v383;
  v59 = v382;
  *(&v448 + 1) = v382;
  *&v449 = v382;
  *(&v449 + 1) = v387;
  v450 = v374;
  v60 = v381;
  v451 = v381;
  v61 = v384;
  *&v452 = v384;
  *(&v452 + 1) = v384;
  v453 = v43;
  v454 = v44;
  v62 = type metadata accessor for FullWidthStageView(255, &v448);
  v326 = v62;
  v325 = swift_getWitnessTable();
  *&v448 = v62;
  *(&v448 + 1) = v325;
  swift_getOpaqueTypeMetadata2();
  v63 = v59;
  v65 = type metadata accessor for InfoActionCardView(255, v59, v61, v64);
  v319 = v65;
  v317 = swift_getWitnessTable();
  *&v448 = v65;
  *(&v448 + 1) = v317;
  swift_getOpaqueTypeMetadata2();
  v316 = sub_1E68B2220();
  v292 = sub_1E68B2220();
  v66 = v58;
  *&v448 = v58;
  *(&v448 + 1) = v386;
  *&v449 = v379;
  *(&v449 + 1) = v60;
  v450 = v385;
  v451 = v388;
  v67 = type metadata accessor for LargeBrickView(255, &v448);
  v314 = v67;
  v313 = swift_getWitnessTable();
  *&v448 = v67;
  *(&v448 + 1) = v313;
  swift_getOpaqueTypeMetadata2();
  v69 = type metadata accessor for DynamicBrickView(255, v58, v60, v68);
  v312 = v69;
  v311 = swift_getWitnessTable();
  *&v448 = v69;
  *(&v448 + 1) = v311;
  swift_getOpaqueTypeMetadata2();
  v303 = sub_1E68B2220();
  v71 = type metadata accessor for MonogramVerticalStackView(255, v58, v60, v70);
  v308 = v71;
  v307 = swift_getWitnessTable();
  *&v448 = v71;
  *(&v448 + 1) = v307;
  swift_getOpaqueTypeMetadata2();
  v304 = sub_1E68B2220();
  v309 = sub_1E68B2220();
  v286[0] = sub_1E68B2220();
  v73 = type metadata accessor for StandardCardView(255, v66, v60, v72);
  v306 = v73;
  v305 = swift_getWitnessTable();
  *&v448 = v73;
  *(&v448 + 1) = v305;
  swift_getOpaqueTypeMetadata2();
  *&v448 = v66;
  *(&v448 + 1) = v63;
  *&v449 = v60;
  *(&v449 + 1) = v61;
  v74 = type metadata accessor for StandardHorizontalStackView(255, &v448);
  v302 = v74;
  v301 = swift_getWitnessTable();
  *&v448 = v74;
  *(&v448 + 1) = v301;
  swift_getOpaqueTypeMetadata2();
  v289 = sub_1E68B2220();
  v76 = type metadata accessor for StandardVerticalStackView(255, v66, v60, v75);
  v300 = v76;
  v299 = swift_getWitnessTable();
  *&v448 = v76;
  *(&v448 + 1) = v299;
  swift_getOpaqueTypeMetadata2();
  v296 = type metadata accessor for SummaryCardView(255, v66, v60, v77);
  v298 = sub_1E68B2220();
  v286[1] = sub_1E68B2220();
  v78 = v66;
  v80 = type metadata accessor for TallCardView(255, v66, v60, v79);
  v297 = swift_getWitnessTable();
  *&v448 = v80;
  *(&v448 + 1) = v297;
  swift_getOpaqueTypeMetadata2();
  v82 = type metadata accessor for VerticalStackCardView(255, v78, v60, v81);
  v293 = swift_getWitnessTable();
  *&v448 = v82;
  *(&v448 + 1) = v293;
  swift_getOpaqueTypeMetadata2();
  v286[2] = sub_1E68B2220();
  v84 = type metadata accessor for WideBrickView(255, v78, v60, v83);
  v287 = swift_getWitnessTable();
  *&v448 = v84;
  *(&v448 + 1) = v287;
  swift_getOpaqueTypeMetadata2();
  v286[3] = sub_1E68B2220();
  v288 = sub_1E68B2220();
  v290 = sub_1E68B2220();
  v291 = sub_1E68B2220();
  v294 = sub_1E68B2B90();
  v295 = sub_1E68B1E40();
  v342 = sub_1E68B2220();
  v329 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v342, v342);
  v343 = v286 - v85;
  v344 = sub_1E68B1E40();
  v330 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344, v344);
  v345 = v286 - v86;
  v341 = sub_1E68B1E40();
  v331 = *(v341 - 8);
  MEMORY[0x1EEE9AC00](v341, v87);
  v328 = v286 - v88;
  *&v448 = v355;
  *(&v448 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v448 = v338;
  *(&v448 + 1) = v327;
  v90 = swift_getOpaqueTypeConformance2();
  *&v448 = v320;
  *(&v448 + 1) = v318;
  v91 = swift_getOpaqueTypeConformance2();
  v440 = v90;
  v441 = v91;
  v92 = MEMORY[0x1E697F968];
  v439 = swift_getWitnessTable();
  v437 = swift_getWitnessTable();
  v438 = MEMORY[0x1E697E5D8];
  v93 = swift_getWitnessTable();
  v94 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v435 = v93;
  v436 = v94;
  v95 = swift_getWitnessTable();
  v96 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v433 = v95;
  v434 = v96;
  v97 = swift_getWitnessTable();
  v431 = OpaqueTypeConformance2;
  v432 = v97;
  v98 = swift_getWitnessTable();
  *&v448 = v326;
  *(&v448 + 1) = v325;
  v99 = swift_getOpaqueTypeConformance2();
  *&v448 = v319;
  *(&v448 + 1) = v317;
  v100 = swift_getOpaqueTypeConformance2();
  v429 = v99;
  v430 = v100;
  v101 = swift_getWitnessTable();
  v427 = v98;
  v428 = v101;
  v102 = swift_getWitnessTable();
  *&v448 = v314;
  *(&v448 + 1) = v313;
  v103 = swift_getOpaqueTypeConformance2();
  *&v448 = v312;
  *(&v448 + 1) = v311;
  v104 = swift_getOpaqueTypeConformance2();
  v425 = v103;
  v426 = v104;
  v105 = swift_getWitnessTable();
  *&v448 = v308;
  *(&v448 + 1) = v307;
  v423 = swift_getOpaqueTypeConformance2();
  v424 = v104;
  v106 = swift_getWitnessTable();
  v421 = v105;
  v422 = v106;
  v107 = swift_getWitnessTable();
  v419 = v102;
  v420 = v107;
  v108 = swift_getWitnessTable();
  *&v448 = v306;
  *(&v448 + 1) = v305;
  v109 = swift_getOpaqueTypeConformance2();
  *&v448 = v302;
  *(&v448 + 1) = v301;
  v110 = swift_getOpaqueTypeConformance2();
  v417 = v109;
  v418 = v110;
  v111 = swift_getWitnessTable();
  *&v448 = v300;
  *(&v448 + 1) = v299;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = swift_getWitnessTable();
  v415 = v112;
  v416 = v113;
  v114 = swift_getWitnessTable();
  v413 = v111;
  v414 = v114;
  v115 = swift_getWitnessTable();
  *&v448 = v80;
  *(&v448 + 1) = v297;
  v116 = swift_getOpaqueTypeConformance2();
  *&v448 = v82;
  *(&v448 + 1) = v293;
  v117 = swift_getOpaqueTypeConformance2();
  v411 = v116;
  v412 = v117;
  v118 = swift_getWitnessTable();
  *&v448 = v84;
  *(&v448 + 1) = v287;
  v119 = swift_getOpaqueTypeConformance2();
  v120 = v373;
  v409 = v373;
  v410 = v119;
  v121 = swift_getWitnessTable();
  v407 = v118;
  v408 = v121;
  v122 = swift_getWitnessTable();
  v405 = v115;
  v406 = v122;
  v123 = swift_getWitnessTable();
  v403 = v108;
  v404 = v123;
  v327 = v92;
  v402 = swift_getWitnessTable();
  v400 = swift_getWitnessTable();
  v401 = v356;
  v124 = swift_getWitnessTable();
  v398 = MEMORY[0x1E6981E60];
  v399 = v124;
  v312 = swift_getWitnessTable();
  v125 = MEMORY[0x1E69805D0];
  v396 = v312;
  v397 = MEMORY[0x1E69805D0];
  v317 = swift_getWitnessTable();
  v394 = v317;
  v395 = v125;
  v126 = v341;
  v127 = swift_getWitnessTable();
  *&v448 = v126;
  *(&v448 + 1) = v127;
  v128 = v127;
  v315 = v127;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v316 = OpaqueTypeMetadata2;
  v321 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v130);
  v314 = v286 - v131;
  *&v448 = v126;
  *(&v448 + 1) = v128;
  v318 = swift_getOpaqueTypeConformance2();
  *&v448 = OpaqueTypeMetadata2;
  *(&v448 + 1) = v318;
  v322 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v320 = sub_1E68B2220();
  v324 = *(v320 - 8);
  MEMORY[0x1EEE9AC00](v320, v320);
  v313 = v286 - v132;
  v133 = sub_1E68B1E40();
  v134 = *(v133 - 8);
  v325 = v133;
  v326 = v134;
  MEMORY[0x1EEE9AC00](v133, v135);
  v319 = v286 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = MEMORY[0x1EEE9AC00](v137, v138);
  v323 = v286 - v140;
  v141 = v365;
  v142 = *(v365 + 16);
  v355 = v365 + 16;
  v356 = v142;
  v143 = v349;
  (v142)(v349, v371, v376, v139);
  v144 = v340;
  v145 = v366;
  (*(v340 + 16))(v351, v350, v366);
  v146 = *(v141 + 80);
  v147 = v141;
  v148 = (v146 + 240) & ~v146;
  v307 = v148 + v354;
  WitnessTable = v148;
  v354 = v146 | 7;
  v149 = (v307 + *(v144 + 80)) & ~*(v144 + 80);
  v150 = swift_allocObject();
  v151 = v382;
  *(v150 + 2) = v359;
  *(v150 + 3) = v151;
  v152 = v383;
  *(v150 + 4) = v380;
  *(v150 + 5) = v152;
  v153 = v379;
  *(v150 + 6) = v386;
  *(v150 + 7) = v153;
  v154 = v367;
  *(v150 + 8) = v364;
  *(v150 + 9) = v154;
  v155 = v377;
  *(v150 + 10) = v387;
  *(v150 + 11) = v155;
  v156 = v370;
  *(v150 + 12) = v372;
  *(v150 + 13) = v156;
  v157 = v378;
  *(v150 + 14) = v369;
  *(v150 + 15) = v157;
  v158 = v360;
  *(v150 + 16) = v374;
  *(v150 + 17) = v158;
  v159 = v384;
  *(v150 + 18) = v145;
  *(v150 + 19) = v159;
  v160 = v385;
  *(v150 + 20) = v381;
  *(v150 + 21) = v160;
  v161 = v358;
  *(v150 + 22) = v388;
  *(v150 + 23) = v161;
  *(v150 + 24) = v120;
  v162 = v361;
  v163 = v363;
  *(v150 + 25) = v361;
  *(v150 + 26) = v163;
  v164 = v375;
  *(v150 + 27) = v362;
  *(v150 + 28) = v164;
  *(v150 + 29) = v368;
  v165 = *(v147 + 32);
  v365 = v147 + 32;
  v353 = v165;
  v166 = v376;
  v165(&v150[v148], v143, v376);
  v167 = v145;
  (*(v144 + 32))(&v150[v149], v351, v145);
  v168 = v166[67];
  v169 = (v371 + v166[68]);
  v170 = v169[1];
  v311 = *v169;
  v171 = (v371 + v166[69]);
  v173 = *v171;
  v172 = v171[1];
  v309 = v168;
  v310 = v173;
  v339 = v172;
  v340 = v170;
  v174 = (v371 + v166[70]);
  v176 = *v174;
  v175 = v174[1];
  v308 = v176;
  v338 = v175;
  v177 = v332;
  v356(v332);
  v351 = ((v307 + 7) & 0xFFFFFFFFFFFFFFF8);
  v178 = swift_allocObject();
  v179 = v359;
  v180 = v382;
  *(v178 + 16) = v359;
  *(v178 + 24) = v180;
  v181 = v383;
  *(v178 + 32) = v380;
  *(v178 + 40) = v181;
  v182 = v379;
  *(v178 + 48) = v386;
  *(v178 + 56) = v182;
  v183 = v367;
  *(v178 + 64) = v364;
  *(v178 + 72) = v183;
  v184 = v377;
  *(v178 + 80) = v387;
  *(v178 + 88) = v184;
  v185 = v370;
  *(v178 + 96) = v372;
  *(v178 + 104) = v185;
  v186 = v378;
  *(v178 + 112) = v369;
  *(v178 + 120) = v186;
  v187 = v374;
  v188 = v360;
  *(v178 + 128) = v374;
  *(v178 + 136) = v188;
  v189 = v384;
  *(v178 + 144) = v167;
  *(v178 + 152) = v189;
  v190 = v385;
  *(v178 + 160) = v381;
  *(v178 + 168) = v190;
  v191 = v358;
  *(v178 + 176) = v388;
  *(v178 + 184) = v191;
  *(v178 + 192) = v373;
  *(v178 + 200) = v162;
  v192 = v363;
  v193 = v362;
  *(v178 + 208) = v363;
  *(v178 + 216) = v193;
  v194 = v368;
  *(v178 + 224) = v375;
  *(v178 + 232) = v194;
  v195 = v177;
  v196 = v376;
  v353(v178 + WitnessTable, v195, v376);
  *&v351[v178] = v357;
  (v356)(v346, v371, v196);
  v197 = swift_allocObject();
  v198 = v382;
  *(v197 + 16) = v179;
  *(v197 + 24) = v198;
  v199 = v383;
  *(v197 + 32) = v380;
  *(v197 + 40) = v199;
  v200 = v379;
  *(v197 + 48) = v386;
  *(v197 + 56) = v200;
  v201 = v367;
  *(v197 + 64) = v364;
  *(v197 + 72) = v201;
  v202 = v377;
  *(v197 + 80) = v387;
  *(v197 + 88) = v202;
  v203 = v370;
  *(v197 + 96) = v372;
  *(v197 + 104) = v203;
  v204 = v378;
  *(v197 + 112) = v369;
  *(v197 + 120) = v204;
  *(v197 + 128) = v187;
  *(v197 + 136) = v188;
  v205 = v384;
  *(v197 + 144) = v366;
  *(v197 + 152) = v205;
  v206 = v385;
  *(v197 + 160) = v381;
  *(v197 + 168) = v206;
  *(v197 + 176) = v388;
  *(v197 + 184) = v191;
  v207 = v361;
  *(v197 + 192) = v373;
  *(v197 + 200) = v207;
  v208 = v362;
  *(v197 + 208) = v192;
  *(v197 + 216) = v208;
  v209 = v368;
  *(v197 + 224) = v375;
  *(v197 + 232) = v209;
  v353(v197 + WitnessTable, v346, v376);
  *&v351[v197] = v357;
  v210 = v374;
  v211 = v383;
  v212 = v386;
  v213 = v379;
  v214 = v382;
  v215 = v368;
  sub_1E6892048(&v448);
  v393[0] = v448;
  v393[1] = v449;

  v284 = v213;
  v216 = v371;
  CanvasItemDescriptorProtocol.buildView<A, B, C, D, E, F>(onSelection:sizeClass:contentMargins:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:actionButtonViewBuilder:)(sub_1E6823C58, v150, v371 + v309, v393, v311, v340, v310, v339, v343, v308, v338, sub_1E6823E2C, v178, sub_1E6823E44, v197, v366, v210, v211, v212, v284, v387, v214, v215, v375, v381, v385, v388, v373, v384);

  v217 = v349;
  v218 = v216;
  v219 = v376;
  (v356)(v349, v218, v376);
  v220 = v351;
  v221 = swift_allocObject();
  v222 = v359;
  v223 = v382;
  *(v221 + 16) = v359;
  *(v221 + 24) = v223;
  v224 = v383;
  *(v221 + 32) = v380;
  *(v221 + 40) = v224;
  v225 = v379;
  *(v221 + 48) = v386;
  *(v221 + 56) = v225;
  v226 = v364;
  v227 = v367;
  *(v221 + 64) = v364;
  *(v221 + 72) = v227;
  v228 = v377;
  *(v221 + 80) = v387;
  *(v221 + 88) = v228;
  v229 = v372;
  v230 = v370;
  *(v221 + 96) = v372;
  *(v221 + 104) = v230;
  v231 = v378;
  *(v221 + 112) = v369;
  *(v221 + 120) = v231;
  v232 = v360;
  *(v221 + 128) = v374;
  *(v221 + 136) = v232;
  v233 = v384;
  *(v221 + 144) = v366;
  *(v221 + 152) = v233;
  v234 = v385;
  *(v221 + 160) = v381;
  *(v221 + 168) = v234;
  v235 = v358;
  *(v221 + 176) = v388;
  *(v221 + 184) = v235;
  v236 = v361;
  *(v221 + 192) = v373;
  *(v221 + 200) = v236;
  v237 = v362;
  *(v221 + 208) = v363;
  *(v221 + 216) = v237;
  v238 = v368;
  *(v221 + 224) = v375;
  *(v221 + 232) = v238;
  v353(v221 + WitnessTable, v217, v219);
  v239 = v357;
  *&v220[v221] = v357;
  v241 = v342;
  v240 = v343;
  sub_1E68B2AA0();

  (*(v329 + 8))(v240, v241);
  v242 = v371;
  v243 = v376;
  (v356)(v217, v371, v376);
  v244 = v351;
  v245 = swift_allocObject();
  v246 = v382;
  *(v245 + 16) = v222;
  *(v245 + 24) = v246;
  v247 = v383;
  *(v245 + 32) = v380;
  *(v245 + 40) = v247;
  v248 = v379;
  *(v245 + 48) = v386;
  *(v245 + 56) = v248;
  v249 = v367;
  *(v245 + 64) = v226;
  *(v245 + 72) = v249;
  v250 = v377;
  *(v245 + 80) = v387;
  *(v245 + 88) = v250;
  v251 = v370;
  *(v245 + 96) = v229;
  *(v245 + 104) = v251;
  v252 = v378;
  *(v245 + 112) = v369;
  *(v245 + 120) = v252;
  v253 = v360;
  *(v245 + 128) = v374;
  *(v245 + 136) = v253;
  v254 = v384;
  *(v245 + 144) = v366;
  *(v245 + 152) = v254;
  v255 = v385;
  *(v245 + 160) = v381;
  *(v245 + 168) = v255;
  v256 = v358;
  *(v245 + 176) = v388;
  *(v245 + 184) = v256;
  v257 = v361;
  *(v245 + 192) = v373;
  *(v245 + 200) = v257;
  *(v245 + 208) = v363;
  *(v245 + 216) = v237;
  v258 = v368;
  *(v245 + 224) = v375;
  *(v245 + 232) = v258;
  v259 = v243;
  v353(v245 + WitnessTable, v349, v243);
  *&v244[v245] = v239;
  v260 = v328;
  v262 = v344;
  v261 = v345;
  sub_1E68B27E0();

  (*(v330 + 8))(v261, v262);
  sub_1E68B24B0();
  sub_1E68B2E30();
  v263 = v314;
  v264 = v341;
  sub_1E68B2960();
  (*(v331 + 8))(v260, v264);
  v285 = v237;
  v265 = v242 + *(v259 + 252);
  v266 = v318;
  v267 = v366;
  v268 = v313;
  v269 = v316;
  v270 = v364;
  sub_1E6814294(v350, v265, v357, v316, v313, v372, v378, v360, v366, v318, v285, v258);
  (*(v321 + 8))(v263, v269);
  v271 = v258;
  v272 = *(v258 + 168);
  v273 = v334;
  v272(v267, v271);
  v274 = v333;
  sub_1E67C02C4(v273, *(v371 + *(v376 + 288)), *(v371 + *(v376 + 288) + 8), v270, v367, AssociatedConformanceWitness, v358, v333);

  *&v448 = v269;
  *(&v448 + 1) = v266;
  v391 = swift_getOpaqueTypeConformance2();
  v392 = v266;
  v275 = v320;
  v276 = swift_getWitnessTable();
  v277 = v319;
  v278 = v347;
  MEMORY[0x1E69512E0](v274, v275, v347, v276);
  (*(v336 + 8))(v274, v278);
  (*(v324 + 8))(v268, v275);
  v279 = swift_getWitnessTable();
  v389 = v276;
  v390 = v279;
  v280 = v325;
  swift_getWitnessTable();
  v281 = v323;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v282 = *(v326 + 8);
  v282(v277, v280);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v282)(v281, v280);
}

uint64_t (*sub_1E6821D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30))(uint64_t a1)
{
  v30 = *(a12 - 8);
  v31 = MEMORY[0x1EEE9AC00](a17, a11);
  v33 = v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[0] = v34;
  v57[1] = v35;
  v57[2] = v36;
  v57[3] = v37;
  v57[4] = v38;
  v57[5] = v39;
  v58 = v40;
  v59 = v41;
  v60 = a12;
  v61 = v43;
  v62 = v42;
  v63 = v44;
  v64 = v45;
  *(v46 + 136) = v47;
  *(v46 + 152) = v48;
  *(v46 + 168) = v49;
  *(v46 + 184) = v31;
  v65 = a19;
  v66 = v51;
  v67 = v50;
  v68 = a30;
  v52 = type metadata accessor for OrthogonalView(0, v57);
  result = sub_1E6817B74(v52);
  if (result)
  {
    v55 = result;
    v56 = v54;
    (*(a30 + 152))(a19, a30);
    v55(v33);
    sub_1E672E440(v55, v56);
    return (*(v30 + 8))(v33, a12);
  }

  return result;
}

uint64_t sub_1E6821F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v56 - v30;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v35 = v56 - v34;
  v56[0] = v36;
  v56[1] = v37;
  v56[2] = v38;
  v56[3] = v39;
  v56[4] = v40;
  v57 = v41;
  v58 = v42;
  v59 = a12;
  v60 = v43;
  v61 = v44;
  v62 = v45;
  v63 = v46;
  *(v47 + 136) = v48;
  *(v47 + 152) = v49;
  v64 = v50;
  v65 = a26;
  *(v47 + 184) = v51;
  *(v47 + 200) = v33;
  v66 = v52;
  v53 = type metadata accessor for OrthogonalView(0, v56);
  sub_1E68177E8(v53);
  sub_1E67D5458(a1, a3);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v54 = *(v28 + 8);
  v54(v31, a12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v54)(v35, a12);
}

uint64_t sub_1E6822130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v52 - v26;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = v52 - v30;
  v52[0] = v32;
  v52[1] = v33;
  v52[2] = v34;
  v52[3] = v35;
  v52[4] = v36;
  v53 = v37;
  v54 = v38;
  v55 = v39;
  v56 = v40;
  v57 = v41;
  v58 = v43;
  v59 = v42;
  v60 = a21;
  v61 = v45;
  v62 = v44;
  v63 = v46;
  v64 = v29;
  v65 = v48;
  v66 = v47;
  v49 = type metadata accessor for OrthogonalView(0, v52);
  sub_1E68175D4(v49);
  sub_1E67D41E8(a1, a3, 0);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v50 = *(v24 + 8);
  v50(v27, a5);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v50)(v31, a5);
}

void (*sub_1E6822314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t)))(uint64_t)
{
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a7;
  v27[5] = a8;
  v28 = a9;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v34 = a15;
  v35 = a16;
  v36 = a17;
  v37 = a18;
  v38 = a19;
  v39 = a20;
  v22 = type metadata accessor for OrthogonalView(0, v27);
  result = a21(v22);
  if (result)
  {
    v25 = result;
    v26 = v24;
    result(a2);
    return sub_1E672E440(v25, v26);
  }

  return result;
}

uint64_t sub_1E68223C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v151 = a1;
  v160 = a9;
  v161 = a26;
  *&v176 = a2;
  *(&v176 + 1) = a3;
  v134 = a4;
  *&v177 = a4;
  *(&v177 + 1) = a5;
  v136 = a5;
  v138 = a6;
  v178 = a6;
  v179 = a7;
  v140 = a7;
  v142 = a8;
  v180 = a8;
  v123 = a10;
  v124 = a11;
  v181 = a10;
  v182 = a11;
  v126 = a12;
  v127 = a13;
  v183 = a12;
  v184 = a13;
  v185 = a14;
  v186 = a15;
  v130 = a16;
  v131 = a17;
  v187 = a16;
  v188 = a17;
  v132 = a18;
  v189 = a18;
  v190 = a19;
  v191 = a20;
  v135 = a21;
  v192 = a21;
  v137 = a22;
  v193 = a22;
  v139 = a23;
  v194 = a23;
  v141 = a24;
  v195 = a24;
  v143 = a25;
  v144 = a28;
  v196 = a25;
  v197 = a26;
  v198 = a27;
  v199 = a28;
  v145 = a29;
  v200 = a29;
  v201 = a30;
  v125 = type metadata accessor for OrthogonalView(0, &v176);
  v122 = *(v125 - 8);
  v121 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v125, v32);
  v152 = &v118 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v153 = a3;
  *&v176 = a3;
  *(&v176 + 1) = a15;
  v147 = a15;
  v148 = a20;
  *&v177 = a20;
  *(&v177 + 1) = a27;
  v150 = a27;
  v34 = type metadata accessor for CanvasSectionHeaderView(255, &v176);
  sub_1E68B2390();
  v158 = v34;
  v159 = sub_1E68B1E40();
  v35 = sub_1E68B2220();
  v155 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v149 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v118 - v40;
  v146 = a30;
  v133 = a19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v128 = a2;
  v129 = a14;
  *&v176 = a2;
  *(&v176 + 1) = a14;
  *&v177 = AssociatedConformanceWitness;
  *(&v177 + 1) = v161;
  v43 = type metadata accessor for CanvasSectionHeader(255, &v176);
  v44 = sub_1E68B3750();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v46);
  v48 = &v118 - v47;
  v49 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v118 - v52;
  v54 = sub_1E68B3750();
  v156 = *(v54 - 8);
  v157 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v162 = &v118 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57, v58);
  v154 = &v118 - v60;
  v61 = v151;
  (*(v45 + 16))(v48, v59);
  if ((*(v49 + 48))(v48, 1, v43) == 1)
  {
    (*(v45 + 8))(v48, v44);
    (*(v155 + 56))(v162, 1, 1, v35);
    v62 = sub_1E673F2EC();
    WitnessTable = swift_getWitnessTable();
    v64 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    v174 = WitnessTable;
    v175 = v64;
    v65 = swift_getWitnessTable();
    v172 = v62;
    v173 = v65;
    swift_getWitnessTable();
  }

  else
  {
    (*(v49 + 32))(v53, v48, v43);
    v119 = v53;
    v120 = v49;
    v66 = v122;
    v67 = v61;
    v68 = v125;
    (*(v122 + 16))(v152, v61, v125);
    v69 = (*(v66 + 80) + 240) & ~*(v66 + 80);
    v70 = swift_allocObject();
    v71 = v153;
    *(v70 + 2) = v128;
    *(v70 + 3) = v71;
    v72 = v136;
    *(v70 + 4) = v134;
    *(v70 + 5) = v72;
    v73 = v140;
    *(v70 + 6) = v138;
    *(v70 + 7) = v73;
    v74 = v123;
    v75 = v124;
    *(v70 + 8) = v142;
    *(v70 + 9) = v74;
    v76 = v126;
    v77 = v127;
    *(v70 + 10) = v75;
    *(v70 + 11) = v76;
    v79 = v129;
    v78 = v130;
    *(v70 + 12) = v77;
    *(v70 + 13) = v79;
    v142 = v35;
    v80 = v147;
    *(v70 + 14) = v147;
    *(v70 + 15) = v78;
    v81 = v132;
    *(v70 + 16) = v131;
    *(v70 + 17) = v81;
    v140 = v41;
    v82 = v148;
    *(v70 + 18) = v133;
    *(v70 + 19) = v82;
    v83 = v137;
    *(v70 + 20) = v135;
    *(v70 + 21) = v83;
    v84 = v141;
    *(v70 + 22) = v139;
    *(v70 + 23) = v84;
    v85 = v161;
    *(v70 + 24) = v143;
    *(v70 + 25) = v85;
    v86 = v150;
    v87 = v144;
    v88 = v145;
    *(v70 + 26) = v150;
    *(v70 + 27) = v87;
    v89 = v146;
    *(v70 + 28) = v88;
    *(v70 + 29) = v89;
    (*(v66 + 32))(&v70[v69], v152, v68);
    v90 = v67 + v68[73];
    v91 = *v90;
    v92 = *(v90 + 8);
    v93 = (v67 + v68[64]);
    v94 = v93[1];
    v176 = *v93;
    v177 = v94;
    LODWORD(v67) = *(v67 + v68[66]);

    v116 = v82;
    v117 = v86;
    v115 = v80;
    v95 = v142;
    v96 = v149;
    v97 = v119;
    sub_1E68AF848(sub_1E6823354, v70, v91, v92, &v176, v67, v43, v153, v149, v115, v116, v117);

    (*(v120 + 8))(v97, v43);
    v98 = sub_1E673F2EC();
    v99 = swift_getWitnessTable();
    v100 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    v165 = v99;
    v166 = v100;
    v101 = swift_getWitnessTable();
    v163 = v98;
    v164 = v101;
    swift_getWitnessTable();
    v102 = v140;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v103 = v155;
    v104 = *(v155 + 8);
    v104(v96, v95);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v104(v102, v95);
    v105 = v162;
    (*(v103 + 32))(v162, v96, v95);
    (*(v103 + 56))(v105, 0, 1, v95);
  }

  v106 = v154;
  v107 = v162;
  sub_1E67FDFA4(v162, v154);
  v108 = v157;
  v109 = *(v156 + 8);
  v109(v107, v157);
  v110 = sub_1E673F2EC();
  v111 = swift_getWitnessTable();
  v112 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v170 = v111;
  v171 = v112;
  v113 = swift_getWitnessTable();
  v168 = v110;
  v169 = v113;
  v167 = swift_getWitnessTable();
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v109)(v106, v108);
}

uint64_t sub_1E6822DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  v52 = a7;
  v50 = a6;
  v48 = a5;
  v46 = a4;
  v55 = a1;
  v57 = a8;
  v54 = a21;
  v53 = a20;
  v51 = a19;
  v49 = a18;
  v47 = a17;
  v45 = a16;
  v44 = a13;
  v43 = a12;
  v42 = a11;
  v41 = a10;
  v40 = a9;
  v56 = sub_1E68B3750();
  v23 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v24);
  v26 = &v40 - v25;
  v27 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v40 - v34;
  v58[0] = a2;
  v58[1] = a3;
  v58[2] = v46;
  v58[3] = v48;
  v58[4] = v50;
  v58[5] = v52;
  v59 = v40;
  v60 = v41;
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v64 = a14;
  v65 = a15;
  v66 = v45;
  v67 = v47;
  v68 = v49;
  v69 = v51;
  v70 = v53;
  v71 = v54;
  v36 = type metadata accessor for OrthogonalView(0, v58);
  sub_1E68175D4(v36);
  v37 = *(a2 - 8);
  (*(v37 + 16))(v26, v55, a2);
  (*(v37 + 56))(v26, 0, 1, a2);
  sub_1E67D41E8(v26, 0, 1);

  (*(v23 + 8))(v26, v56);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v38 = *(v27 + 8);
  v38(v31, a3);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v38)(v35, a3);
}

uint64_t sub_1E68231C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v20 = type metadata accessor for OrthogonalView(0, v22);
  LOBYTE(v22[0]) = *(a1 + *(v20 + 248));
  return sub_1E6739E78(*(a1 + *(v20 + 256) + 8));
}

uint64_t sub_1E6823354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = v2[3];
  v37 = v2[5];
  v38 = v2[4];
  v35 = v2[7];
  v36 = v2[6];
  v33 = v2[9];
  v34 = v2[8];
  v31 = v2[11];
  v32 = v2[10];
  v29 = v2[13];
  v30 = v2[12];
  v27 = v2[15];
  v28 = v2[14];
  v25 = v2[17];
  v26 = v2[16];
  v23 = v2[19];
  v24 = v2[18];
  v3 = v2[21];
  v22 = v2[20];
  v4 = v2[22];
  v5 = v2[23];
  v6 = v2[24];
  v7 = v2[25];
  v9 = v2[26];
  v8 = v2[27];
  v11 = v2[28];
  v10 = v2[29];
  v43[0] = v2[2];
  v40 = v43[0];
  v43[1] = v39;
  v43[2] = v38;
  v43[3] = v37;
  v43[4] = v36;
  v43[5] = v35;
  v43[6] = v34;
  v43[7] = v33;
  v43[8] = v32;
  v43[9] = v31;
  v43[10] = v30;
  v43[11] = v29;
  v43[12] = v28;
  v43[13] = v27;
  v43[14] = v26;
  v43[15] = v25;
  v43[16] = v24;
  v43[17] = v23;
  v43[18] = v22;
  v43[19] = v3;
  v43[20] = v4;
  v43[21] = v5;
  v43[22] = v6;
  v43[23] = v7;
  v43[24] = v9;
  v43[25] = v8;
  v43[26] = v11;
  v43[27] = v10;
  type metadata accessor for OrthogonalView(0, v43);
  *&v21 = v9;
  *(&v21 + 1) = v8;
  *&v20 = v6;
  *(&v20 + 1) = v7;
  *&v19 = v4;
  *(&v19 + 1) = v5;
  *&v18 = v22;
  *(&v18 + 1) = v3;
  *(&v17 + 1) = v25;
  *(&v16 + 1) = v27;
  *&v17 = v26;
  *(&v15 + 1) = v29;
  *&v16 = v28;
  *(&v14 + 1) = v31;
  *&v15 = v30;
  *(&v13 + 1) = v33;
  *&v14 = v32;
  *&v13 = v34;
  return sub_1E6822DC4(a1, v40, v39, v38, v37, v36, v35, a2, v13, v14, v15, v16, v17, v24, v23, v18, v19, v20, v21, v11, v10);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 192);
  v4 = *(v0 + 232);
  v5 = *(v0 + 32);
  v31 = *(v0 + 16);
  v30 = v31;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v32 = v5;
  v33 = v6;
  v8 = *(v0 + 80);
  v34 = v7;
  v35 = v8;
  v36 = v1;
  v37 = *(v0 + 104);
  v29 = v37;
  v38 = v2;
  v26 = *(v0 + 144);
  v28 = *(v0 + 128);
  v39 = v28;
  v40 = v26;
  v9 = *(v0 + 176);
  v41 = *(v0 + 160);
  v42 = v9;
  v44 = *(v0 + 200);
  v27 = v44;
  v45 = *(v0 + 216);
  v43 = v3;
  v46 = v4;
  v10 = type metadata accessor for OrthogonalView(0, &v31);
  v11 = *(*(v10 - 1) + 80);
  v12 = (v11 + 240) & ~v11;
  v13 = v0 + v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = vzip1q_s64(v30, v29);
  *&v32 = AssociatedConformanceWitness;
  *(&v32 + 1) = v27;
  v15 = type metadata accessor for CanvasSectionHeader(0, &v31);
  if (!(*(*(v15 - 8) + 48))(v0 + v12, 1, v15))
  {
    v16 = sub_1E68B1820();
    (*(*(v16 - 8) + 8))(v0 + v12, v16);
    v17 = *(v15 + 52);
    v18 = *(v29.i64[0] - 8);
    if (!(*(v18 + 48))(v13 + v17, 1, v29.i64[0]))
    {
      (*(v18 + 8))(v13 + v17, v29.i64[0]);
    }

    v19 = *(v15 + 56);
    v20 = *(v30.i64[0] - 8);
    if (!(*(v20 + 48))(v13 + v19, 1, v30.i64[0]))
    {
      (*(v20 + 8))(v13 + v19, v30.i64[0]);
    }
  }

  v21 = v10[63];
  v22 = *(v2 - 8);
  if (!(*(v22 + 48))(v13 + v21, 1, v2))
  {
    (*(v22 + 8))(v13 + v21, v2);
  }

  (*(*(v28 - 8) + 8))(v13 + v10[67]);

  if (*(v13 + v10[75]))
  {
  }

  if (*(v13 + v10[76]))
  {
  }

  if (*(v13 + v10[77]))
  {
  }

  v23 = v10[78];
  v24 = sub_1E68B1950();
  (*(*(v24 - 8) + 8))(v13 + v23, v24);
  return swift_deallocObject();
}

uint64_t sub_1E6823AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = v3[3];
  v31 = v3[5];
  v32 = v3[4];
  v29 = v3[7];
  v30 = v3[6];
  v27 = v3[9];
  v28 = v3[8];
  v25 = v3[11];
  v26 = v3[10];
  v23 = v3[13];
  v24 = v3[12];
  v21 = v3[15];
  v22 = v3[14];
  v19 = v3[17];
  v20 = v3[16];
  v17 = v3[19];
  v18 = v3[18];
  v4 = v3[21];
  v16 = v3[20];
  v5 = v3[22];
  v6 = v3[23];
  v7 = v3[24];
  v8 = v3[25];
  v9 = v3[26];
  v10 = v3[27];
  v38[0] = v3[2];
  v34 = v38[0];
  v38[1] = v33;
  v38[2] = v32;
  v38[3] = v31;
  v38[4] = v30;
  v38[5] = v29;
  v38[6] = v28;
  v38[7] = v27;
  v38[8] = v26;
  v38[9] = v25;
  v38[10] = v24;
  v38[11] = v23;
  v38[12] = v22;
  v38[13] = v21;
  v38[14] = v20;
  v38[15] = v19;
  v38[16] = v18;
  v38[17] = v17;
  v38[18] = v16;
  v38[19] = v4;
  v38[20] = v5;
  v38[21] = v6;
  v38[22] = v7;
  v38[23] = v8;
  v38[24] = v9;
  v38[25] = v10;
  v11 = v3[29];
  v39 = v3[28];
  v12 = v39;
  v40 = v11;
  v13 = *(type metadata accessor for OrthogonalView(0, v38) - 8);
  *(&v15 + 1) = v27;
  *&v15 = v28;
  return sub_1E681FDD8(a1, a2, v3 + ((*(v13 + 80) + 240) & ~*(v13 + 80)), v34, v33, v32, v31, v30, a3, v29, v15, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v4, v5, v6, v7, v8, v9, v10, v12, v11);
}

uint64_t (*sub_1E6823C58())(uint64_t a1)
{
  v30 = v0[3];
  v28 = v0[5];
  v29 = v0[4];
  v26 = v0[7];
  v27 = v0[6];
  v24 = v0[9];
  v25 = v0[8];
  v22 = v0[11];
  v23 = v0[10];
  v20 = v0[13];
  v21 = v0[12];
  v18 = v0[15];
  v19 = v0[14];
  v16 = v0[17];
  v17 = v0[16];
  v1 = v0[18];
  v14 = v0[20];
  v15 = v0[19];
  v13 = v0[21];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[29];
  v32[0] = v0[2];
  v31 = v32[0];
  v32[1] = v30;
  v32[2] = v29;
  v32[3] = v28;
  v32[4] = v27;
  v32[5] = v26;
  v32[6] = v25;
  v32[7] = v24;
  v32[8] = v23;
  v32[9] = v22;
  v32[10] = v21;
  v32[11] = v20;
  v32[12] = v19;
  v32[13] = v18;
  v32[14] = v17;
  v32[15] = v16;
  v32[16] = v1;
  v32[17] = v15;
  v32[18] = v14;
  v32[19] = v13;
  v32[20] = v2;
  v32[21] = v3;
  v32[22] = v4;
  v32[23] = v5;
  v32[24] = v6;
  v32[25] = v7;
  v32[26] = v8;
  v32[27] = v9;
  v10 = *(type metadata accessor for OrthogonalView(0, v32) - 8);
  v11 = (*(v10 + 80) + 240) & ~*(v10 + 80);
  return sub_1E6821D98(v0 + v11, v0 + ((v11 + *(v10 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v1, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E6823E5C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = *(v2 + 3);
  v30 = *(v2 + 5);
  v31 = *(v2 + 4);
  v28 = *(v2 + 7);
  v29 = *(v2 + 6);
  v26 = *(v2 + 9);
  v27 = *(v2 + 8);
  v24 = *(v2 + 11);
  v25 = *(v2 + 10);
  v22 = *(v2 + 13);
  v23 = *(v2 + 12);
  v20 = *(v2 + 15);
  v21 = *(v2 + 14);
  v18 = *(v2 + 17);
  v19 = *(v2 + 16);
  v16 = *(v2 + 19);
  v17 = *(v2 + 18);
  v3 = *(v2 + 21);
  v15 = *(v2 + 20);
  v4 = *(v2 + 22);
  v5 = *(v2 + 23);
  v6 = *(v2 + 24);
  v7 = *(v2 + 25);
  v8 = *(v2 + 26);
  v9 = *(v2 + 27);
  v36[0] = *(v2 + 2);
  v33 = v36[0];
  v36[1] = v32;
  v36[2] = v31;
  v36[3] = v30;
  v36[4] = v29;
  v36[5] = v28;
  v36[6] = v27;
  v36[7] = v26;
  v36[8] = v25;
  v36[9] = v24;
  v36[10] = v23;
  v36[11] = v22;
  v36[12] = v21;
  v36[13] = v20;
  v36[14] = v19;
  v36[15] = v18;
  v36[16] = v17;
  v36[17] = v16;
  v36[18] = v15;
  v36[19] = v3;
  v36[20] = v4;
  v36[21] = v5;
  v36[22] = v6;
  v36[23] = v7;
  v36[24] = v8;
  v36[25] = v9;
  v10 = *(v2 + 29);
  v37 = *(v2 + 28);
  v11 = v37;
  v38 = v10;
  v12 = *(type metadata accessor for OrthogonalView(0, v36) - 8);
  v13 = (*(v12 + 80) + 240) & ~*(v12 + 80);
  return a2(a1, &v2[v13], *&v2[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8], v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t objectdestroy_28Tm_0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 192);
  v4 = *(v0 + 232);
  v5 = *(v0 + 32);
  v31 = *(v0 + 16);
  v30 = v31;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v32 = v5;
  v33 = v6;
  v8 = *(v0 + 80);
  v34 = v7;
  v35 = v8;
  v36 = v1;
  v37 = *(v0 + 104);
  v29 = v37;
  v38 = v2;
  v26 = *(v0 + 144);
  v28 = *(v0 + 128);
  v39 = v28;
  v40 = v26;
  v9 = *(v0 + 176);
  v41 = *(v0 + 160);
  v42 = v9;
  v44 = *(v0 + 200);
  v27 = v44;
  v45 = *(v0 + 216);
  v43 = v3;
  v46 = v4;
  v10 = type metadata accessor for OrthogonalView(0, &v31);
  v11 = *(*(v10 - 1) + 80);
  v12 = (v11 + 240) & ~v11;
  v13 = v0 + v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = vzip1q_s64(v30, v29);
  *&v32 = AssociatedConformanceWitness;
  *(&v32 + 1) = v27;
  v15 = type metadata accessor for CanvasSectionHeader(0, &v31);
  if (!(*(*(v15 - 8) + 48))(v0 + v12, 1, v15))
  {
    v16 = sub_1E68B1820();
    (*(*(v16 - 8) + 8))(v0 + v12, v16);
    v17 = *(v15 + 52);
    v18 = *(v29.i64[0] - 8);
    if (!(*(v18 + 48))(v13 + v17, 1, v29.i64[0]))
    {
      (*(v18 + 8))(v13 + v17, v29.i64[0]);
    }

    v19 = *(v15 + 56);
    v20 = *(v30.i64[0] - 8);
    if (!(*(v20 + 48))(v13 + v19, 1, v30.i64[0]))
    {
      (*(v20 + 8))(v13 + v19, v30.i64[0]);
    }
  }

  v21 = v10[63];
  v22 = *(v2 - 8);
  if (!(*(v22 + 48))(v13 + v21, 1, v2))
  {
    (*(v22 + 8))(v13 + v21, v2);
  }

  (*(*(v28 - 8) + 8))(v13 + v10[67]);

  if (*(v13 + v10[75]))
  {
  }

  if (*(v13 + v10[76]))
  {
  }

  if (*(v13 + v10[77]))
  {
  }

  v23 = v10[78];
  v24 = sub_1E68B1950();
  (*(*(v24 - 8) + 8))(v13 + v23, v24);
  return swift_deallocObject();
}

void (*sub_1E6824508(uint64_t (*a1)(uint64_t)))(uint64_t)
{
  v40 = v1[4];
  v41 = v1[3];
  v38 = v1[6];
  v39 = v1[5];
  v36 = v1[8];
  v37 = v1[7];
  v34 = v1[10];
  v35 = v1[9];
  v32 = v1[12];
  v33 = v1[11];
  v30 = v1[14];
  v31 = v1[13];
  v28 = v1[16];
  v29 = v1[15];
  v26 = v1[18];
  v27 = v1[17];
  v2 = v1[21];
  v24 = v1[20];
  v25 = v1[19];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  v10 = v1[28];
  v9 = v1[29];
  v44[0] = v1[2];
  v42 = v44[0];
  v44[1] = v41;
  v44[2] = v40;
  v44[3] = v39;
  v44[4] = v38;
  v44[5] = v37;
  v44[6] = v36;
  v44[7] = v35;
  v44[8] = v34;
  v44[9] = v33;
  v44[10] = v32;
  v44[11] = v31;
  v44[12] = v30;
  v44[13] = v29;
  v44[14] = v28;
  v44[15] = v27;
  v44[16] = v26;
  v44[17] = v25;
  v44[18] = v24;
  v44[19] = v2;
  v44[20] = v3;
  v44[21] = v4;
  v44[22] = v5;
  v44[23] = v6;
  v44[24] = v7;
  v44[25] = v8;
  v44[26] = v10;
  v44[27] = v9;
  v11 = *(type metadata accessor for OrthogonalView(0, v44) - 8);
  v12 = (*(v11 + 80) + 240) & ~*(v11 + 80);
  *(&v23 + 1) = v8;
  *(&v22 + 1) = v6;
  *&v23 = v7;
  *(&v21 + 1) = v4;
  *&v22 = v5;
  *(&v20 + 1) = v2;
  *&v21 = v3;
  *(&v19 + 1) = v25;
  *&v20 = v24;
  *(&v18 + 1) = v27;
  *&v19 = v26;
  *(&v17 + 1) = v29;
  *&v18 = v28;
  *(&v16 + 1) = v31;
  *&v17 = v30;
  *(&v15 + 1) = v33;
  *&v16 = v32;
  *(&v14 + 1) = v35;
  *&v15 = v34;
  *&v14 = v36;
  return sub_1E6822314(v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v42, v41, v40, v39, v38, v37, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v10, v9, a1);
}

uint64_t sub_1E6824838(uint64_t a1)
{
  sub_1E68B3B70();
  sub_1E672A420(v3, *v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68248F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E678BA60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E682494C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67634C8();
  *a1 = result;
  return result;
}

uint64_t sub_1E68249A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E68249F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6824A60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6824AB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6824B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6761810(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E6824B64@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E6824BC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6824C18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t LazyCanvasItemDescriptor.encode(to:)(void *a1, void *a2)
{
  v76 = a1;
  v3 = a2[2];
  v82 = a2[3];
  v4 = a2[5];
  v78 = a2[4];
  v5 = a2[6];
  v74 = a2[7];
  v6 = a2[8];
  v80 = a2[9];
  v81 = v6;
  v7 = a2[11];
  v73 = a2[10];
  v8 = a2[12];
  v9 = a2[13];
  v10 = a2[15];
  v79 = a2[14];
  v99 = v10;
  v84 = v3;
  v85 = v3;
  v11 = v3;
  v86 = v82;
  v87 = v78;
  v88 = v4;
  v89 = v5;
  v71 = v5;
  v90 = v74;
  v91 = v6;
  v92 = v80;
  v93 = v73;
  v94 = v7;
  v95 = v8;
  v96 = v9;
  v97 = v79;
  v98 = v10;
  v63 = type metadata accessor for LazyCanvasItemDescriptor.PlaceholderCodingKeys(255, &v85);
  WitnessTable = swift_getWitnessTable();
  v68 = sub_1E68B3AC0();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v12);
  v65 = v54 - v13;
  v85 = v4;
  v86 = v7;
  v83 = v4;
  v70 = v7;
  v87 = v8;
  v88 = v9;
  v69 = v8;
  v66 = type metadata accessor for CanvasItemPlaceholder(0, &v85);
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v14);
  v61 = v54 - v15;
  v16 = v82;
  v85 = v11;
  v86 = v82;
  v87 = v78;
  v88 = v4;
  v17 = v74;
  v89 = v5;
  v90 = v74;
  v18 = v80;
  v19 = v81;
  v91 = v81;
  v92 = v80;
  v20 = v73;
  v93 = v73;
  v94 = v7;
  v95 = v8;
  v96 = v9;
  v21 = v79;
  v97 = v79;
  v98 = v99;
  v22 = type metadata accessor for LazyCanvasItemDescriptor.ItemCodingKeys(255, &v85);
  v23 = swift_getWitnessTable();
  v57 = v22;
  v54[1] = v23;
  v60 = sub_1E68B3AC0();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v24);
  v58 = v54 - v25;
  v85 = v84;
  v86 = v16;
  v26 = v78;
  v87 = v78;
  v88 = v83;
  v27 = v71;
  v89 = v71;
  v90 = v17;
  v91 = v19;
  v92 = v18;
  v28 = v20;
  v29 = v70;
  v93 = v20;
  v94 = v70;
  v30 = v69;
  v95 = v69;
  v96 = v9;
  v97 = v21;
  v31 = v99;
  v98 = v99;
  v56 = type metadata accessor for CanvasItemDescriptor(0, &v85);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v32);
  v54[0] = v54 - v33;
  v75 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v34, v35);
  v72 = v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v84;
  v86 = v82;
  v87 = v26;
  v88 = v83;
  v89 = v27;
  v90 = v17;
  v91 = v81;
  v92 = v80;
  v93 = v28;
  v94 = v29;
  v95 = v30;
  v96 = v9;
  v97 = v79;
  v98 = v31;
  type metadata accessor for LazyCanvasItemDescriptor.CodingKeys(255, &v85);
  swift_getWitnessTable();
  v37 = sub_1E68B3AC0();
  v99 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v54 - v39;
  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  sub_1E68B3BD0();
  v41 = v72;
  (*(v75 + 16))(v72, v77, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v64;
    v43 = v61;
    v44 = v66;
    (*(v64 + 32))(v61, v41, v66);
    LOBYTE(v85) = 1;
    v45 = v65;
    v46 = v37;
    sub_1E68B3A30();
    swift_getWitnessTable();
    v47 = v68;
    sub_1E68B3AB0();
    (*(v67 + 8))(v45, v47);
    (*(v42 + 8))(v43, v44);
  }

  else
  {
    v48 = v55;
    v49 = v54[0];
    v50 = v56;
    (*(v55 + 32))(v54[0], v41, v56);
    LOBYTE(v85) = 0;
    v51 = v58;
    v46 = v37;
    sub_1E68B3A30();
    swift_getWitnessTable();
    v52 = v60;
    sub_1E68B3AB0();
    (*(v59 + 8))(v51, v52);
    (*(v48 + 8))(v49, v50);
  }

  return (*(v99 + 8))(v40, v46);
}

uint64_t LazyCanvasItemDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v108 = a7;
  v106 = a6;
  v103 = a1;
  v80 = a9;
  v107 = a16;
  v98 = a15;
  v123 = a14;
  v105 = a11;
  v104 = a10;
  *&v111 = a2;
  *(&v111 + 1) = a3;
  *&v112 = a4;
  *(&v112 + 1) = a5;
  v97 = a4;
  v102 = a5;
  v113 = a6;
  v114 = a7;
  v115 = a8;
  v116 = a10;
  v117 = a11;
  v118 = a12;
  v100 = a12;
  v119 = a13;
  v120 = a14;
  v101 = a13;
  v121 = a15;
  v122 = a16;
  v89 = type metadata accessor for LazyCanvasItemDescriptor.PlaceholderCodingKeys(255, &v111);
  WitnessTable = swift_getWitnessTable();
  v84 = sub_1E68B3A20();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v21);
  v90 = &v76 - v22;
  *&v96 = a2;
  *&v111 = a2;
  *(&v111 + 1) = a3;
  *(&v96 + 1) = a3;
  *&v112 = a4;
  *(&v112 + 1) = a5;
  v23 = v106;
  v24 = v108;
  v113 = v106;
  v114 = v108;
  v99 = a8;
  v115 = a8;
  v116 = a10;
  v117 = a11;
  v118 = a12;
  v119 = a13;
  v25 = v123;
  v120 = v123;
  v121 = a15;
  v122 = a16;
  v26 = type metadata accessor for LazyCanvasItemDescriptor.ItemCodingKeys(255, &v111);
  v27 = swift_getWitnessTable();
  v86 = v26;
  v85 = v27;
  v82 = sub_1E68B3A20();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v28);
  v87 = &v76 - v29;
  *&v111 = a2;
  *(&v111 + 1) = a3;
  v30 = v97;
  v31 = v102;
  *&v112 = v97;
  *(&v112 + 1) = v102;
  v113 = v23;
  v114 = v24;
  v115 = a8;
  v116 = a10;
  v32 = v105;
  v33 = v100;
  v117 = v105;
  v118 = v100;
  v34 = v101;
  v119 = v101;
  v120 = v25;
  v35 = v107;
  v121 = a15;
  v122 = v107;
  type metadata accessor for LazyCanvasItemDescriptor.CodingKeys(255, &v111);
  v94 = swift_getWitnessTable();
  v92 = sub_1E68B3A20();
  v93 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v36);
  v38 = &v76 - v37;
  v111 = v96;
  *&v112 = v30;
  *(&v112 + 1) = v31;
  v113 = v106;
  v114 = v108;
  v115 = v99;
  v116 = v104;
  v117 = v32;
  v118 = v33;
  v119 = v34;
  v120 = v123;
  v121 = a15;
  v122 = v35;
  v39 = type metadata accessor for LazyCanvasItemDescriptor(0, &v111);
  v91 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v76 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v76 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v76 - v49;
  __swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v51 = v95;
  sub_1E68B3BC0();
  if (!v51)
  {
    v78 = v42;
    v79 = v46;
    v77 = v50;
    v94 = v39;
    v52 = v102;
    v53 = v123;
    v54 = v92;
    v95 = v38;
    *&v111 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v109 = sub_1E68B37A0();
    *(&v109 + 1) = v55;
    *&v110 = v56;
    *(&v110 + 1) = v57;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v58 = v111;
    if (v111 == 2 || (v76 = v109, v111 = v109, v112 = v110, (sub_1E68B36E0() & 1) == 0))
    {
      v65 = sub_1E68B3870();
      swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v67 = v94;
      v68 = v95;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
      swift_willThrow();
      (*(v93 + 8))(v68, v54);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v58)
      {
        LOBYTE(v111) = 1;
        v59 = v90;
        v60 = v95;
        sub_1E68B3970();
        v61 = v91;
        *&v111 = v52;
        *(&v111 + 1) = v100;
        *&v112 = v101;
        *(&v112 + 1) = v53;
        type metadata accessor for CanvasItemPlaceholder(0, &v111);
        swift_getWitnessTable();
        v62 = v78;
        v63 = v84;
        sub_1E68B3A00();
        v64 = v93;
        (*(v83 + 8))(v59, v63);
        (*(v64 + 8))(v60, v54);
      }

      else
      {
        LOBYTE(v111) = 0;
        v69 = v87;
        v70 = v95;
        sub_1E68B3970();
        v61 = v91;
        v111 = v96;
        *&v112 = v97;
        *(&v112 + 1) = v52;
        v113 = v106;
        v114 = v108;
        v115 = v99;
        v116 = v104;
        v117 = v105;
        v118 = v100;
        v119 = v101;
        v120 = v53;
        v121 = v98;
        v122 = v107;
        type metadata accessor for CanvasItemDescriptor(0, &v111);
        swift_getWitnessTable();
        v62 = v79;
        v71 = v82;
        sub_1E68B3A00();
        (*(v81 + 8))(v69, v71);
        (*(v93 + 8))(v70, v54);
      }

      swift_unknownObjectRelease();
      v73 = v94;
      swift_storeEnumTagMultiPayload();
      v74 = *(v61 + 32);
      v75 = v77;
      v74(v77, v62, v73);
      v74(v80, v75, v73);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v103);
}

uint64_t static LazyCanvasItemDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v72 = a3;
  v73 = a8;
  v75 = a7;
  v76 = a6;
  v69 = a2;
  v68 = a1;
  v74 = a15;
  v70 = a10;
  v71 = a16;
  v77 = a12;
  v78 = a13;
  v79 = a14;
  v63 = type metadata accessor for CanvasItemPlaceholder(0, &v76);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v20);
  v55 = &v53 - v21;
  v76 = a3;
  v77 = a4;
  v78 = a5;
  v79 = a6;
  v22 = v73;
  v80 = v75;
  v81 = v73;
  v82 = a9;
  v83 = a10;
  v84 = a11;
  v85 = a12;
  v86 = a13;
  v87 = a14;
  v88 = a15;
  v89 = a16;
  v61 = type metadata accessor for CanvasItemDescriptor(0, &v76);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v23);
  v54 = &v53 - v24;
  v76 = v72;
  v77 = a4;
  v58 = a4;
  v59 = a5;
  v78 = a5;
  v79 = a6;
  v67 = a6;
  v80 = v75;
  v81 = v22;
  v57 = a9;
  v82 = a9;
  v83 = v70;
  v56 = a11;
  v84 = a11;
  v85 = a12;
  v64 = a12;
  v65 = a13;
  v86 = a13;
  v87 = a14;
  v66 = a14;
  v88 = v74;
  v89 = a16;
  v25 = type metadata accessor for LazyCanvasItemDescriptor(0, &v76);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v53 - v32;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v37 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v36);
  v39 = &v53 - v38;
  v41 = *(v40 + 48);
  v42 = *(v26 + 16);
  v42(&v53 - v38, v68, v25, v37);
  (v42)(&v39[v41], v69, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v42)(v33, v39, v25);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v48 = v60;
      v49 = v54;
      v50 = v61;
      (*(v60 + 32))(v54, &v39[v41], v61);
      v46 = static CanvasItemDescriptor.== infix(_:_:)(v33, v49, v72, v58, v59, v67, v75, v73, v57, v70, v56, v64, v65, v66, v74, v71);
      v51 = *(v48 + 8);
      v51(v49, v50);
      v51(v33, v50);
      goto LABEL_9;
    }

    (*(v60 + 8))(v33, v61);
    goto LABEL_7;
  }

  (v42)(v29, v39, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v62 + 8))(v29, v63);
LABEL_7:
    v46 = 0;
    v26 = v35;
    v25 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v43 = v62;
  v44 = v55;
  v45 = v63;
  (*(v62 + 32))(v55, &v39[v41], v63);
  v46 = static CanvasItemPlaceholder.== infix(_:_:)(v29, v44, v67, v64, v65, v66);
  v47 = *(v43 + 8);
  v47(v44, v45);
  v47(v29, v45);
LABEL_9:
  (*(v26 + 8))(v39, v25);
  return v46 & 1;
}

uint64_t LazyCanvasItemDescriptor.hash(into:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 40);
  v7 = *(a2 + 88);
  v28 = *(a2 + 96);
  *&v29 = v6;
  *(&v29 + 1) = v7;
  v30 = v28;
  v8 = type metadata accessor for CanvasItemPlaceholder(0, &v29);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v28 - v11;
  v13 = *(a2 + 32);
  *&v14 = *(a2 + 80);
  v29 = *(a2 + 16);
  *&v30 = v13;
  *(&v30 + 1) = v6;
  v15 = *(a2 + 64);
  v31 = *(a2 + 48);
  v32 = v15;
  *(&v14 + 1) = v7;
  v33 = v14;
  v34 = v28;
  v35 = *(a2 + 112);
  v16 = type metadata accessor for CanvasItemDescriptor(0, &v29);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v28 - v19;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v3, a2, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v25, v8);
    MEMORY[0x1E69523D0](1);
    CanvasItemPlaceholder.hash(into:)(a1, v8);
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    (*(v17 + 32))(v20, v25, v16);
    MEMORY[0x1E69523D0](0);
    CanvasItemDescriptor.hash(into:)(a1, v16);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t LazyCanvasItemDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  LazyCanvasItemDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68268F0(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  LazyCanvasItemDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68269A4(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 96);
  v3 = *(a1 + 120);
  v4 = *(a1 + 16);
  v11 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v4;
  v12 = v9;
  v13 = *(a1 + 56);
  v14 = *(a1 + 72);
  v15 = v1;
  v16 = v2;
  v8 = *(a1 + 104);
  v17 = v8;
  v18 = v3;
  result = type metadata accessor for CanvasItemDescriptor(319, &v10);
  if (v6 <= 0x3F)
  {
    v19 = result;
    *&v10 = v9;
    *(&v10 + 1) = v1;
    v11 = v2;
    *&v12 = v8;
    result = type metadata accessor for CanvasItemPlaceholder(319, &v10);
    if (v7 <= 0x3F)
    {
      v20 = result;
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E6826A7C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v60 = *(*(a3[5] - 8) + 64);
  v59 = *(a3[3] - 8);
  v4 = *(v59 + 80);
  v58 = *(sub_1E68B1820() - 8);
  v5 = *(v58 + 80);
  v62 = *(a3[2] - 8);
  v61 = *(a3[7] - 8);
  v6 = *(v62 + 80);
  v7 = *(v61 + 80);
  v8 = *(sub_1E68B1A10() - 8);
  v9 = *(v8 + 80);
  v10 = v7;
  v11 = v4 | v5 | v6 | v7 | v9 | 7;
  v12 = (v11 + v60) & ~v11;
  v13 = *(v59 + 64);
  v14 = v13 + v5;
  v15 = *(v58 + 64);
  if (v15 <= v13)
  {
    v16 = *(v59 + 64);
  }

  else
  {
    v16 = *(v58 + 64);
  }

  v17 = *(a3[4] - 8);
  v18 = *(a3[6] - 8);
  v19 = *(v62 + 64);
  if (*(v58 + 84))
  {
    v20 = *(v58 + 64);
  }

  else
  {
    v20 = v15 + 1;
  }

  v21 = *(v61 + 64);
  v22 = v20 + v5;
  v23 = v20 + v6;
  if (*(v62 + 84))
  {
    v24 = *(v62 + 64);
  }

  else
  {
    v24 = v19 + 1;
  }

  v25 = ((((v20 + (v22 & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v25 <= v16)
  {
    v25 = v16;
  }

  if (v25 + 1 > ((v19 + v6 + ((v20 + v6 + ((v20 + v5 + ((v20 + v5 + ((v14 + 1 + ((v4 + 248) & ~v4)) & ~v5)) & ~v5)) & ~v5)) & ~v6)) & ~v6) + v24)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = ((v19 + v6 + ((v20 + v6 + ((v20 + v5 + ((v20 + v5 + ((v14 + 1 + ((v4 + 248) & ~v4)) & ~v5)) & ~v5)) & ~v5)) & ~v6)) & ~v6) + v24;
  }

  v27 = *(v8 + 84);
  v28 = *(v8 + 64);
  if (*(v61 + 84))
  {
    v29 = *(v61 + 64);
  }

  else
  {
    v29 = v21 + 1;
  }

  v30 = v29 + ((v24 + v10 + ((v24 + v6 + ((v23 + ((v22 + ((v22 + ((v14 + 1 + ((v4 + 224) & ~v4)) & ~v5)) & ~v5)) & ~v5)) & ~v6)) & ~v6)) & ~v10);
  if (v30 <= v26)
  {
    v30 = v26;
  }

  v31 = ((v23 + ((v22 + ((v5 + 64) & ~v5)) & ~v5)) & ~v6) + v24;
  if (v31 <= v30)
  {
    v31 = v30;
  }

  v32 = v20 + (v14 & ~v5);
  v33 = ((v32 + v5) & ~v5) + v20;
  if (((v33 + v5) & ~v5) + v20 > v31)
  {
    v31 = ((v33 + v5) & ~v5) + v20;
  }

  v34 = ((v5 + (v32 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v5) + v20;
  if (v34 > v31)
  {
    v31 = v34;
  }

  if (((v22 + ((v14 + ((v4 + 24) & ~v4)) & ~v5)) & ~v5) + v20 > v31)
  {
    v31 = ((v22 + ((v14 + ((v4 + 24) & ~v4)) & ~v5)) & ~v5) + v20;
  }

  if (v34 > v31)
  {
    v31 = v34;
  }

  if (((v22 + ((v22 + ((v14 + ((v4 + 104) & ~v4)) & ~v5)) & ~v5)) & ~v5) + v20 > v31)
  {
    v31 = ((v22 + ((v22 + ((v14 + ((v4 + 104) & ~v4)) & ~v5)) & ~v5)) & ~v5) + v20;
  }

  if (((v23 + ((v22 + ((v22 + ((v22 + ((v14 + ((v4 + 160) & ~v4)) & ~v5)) & ~v5)) & ~v5)) & ~v5)) & ~v6) + v24 > v31)
  {
    v31 = ((v23 + ((v22 + ((v22 + ((v22 + ((v14 + ((v4 + 160) & ~v4)) & ~v5)) & ~v5)) & ~v5)) & ~v5)) & ~v6) + v24;
  }

  v36 = (v14 + ((v4 + 40) & ~v4)) & ~v5;
  v35 = (v14 + ((v4 + 56) & ~v4)) & ~v5;
  if (((v22 + ((v22 + v35) & ~v5)) & ~v5) + v20 <= v31)
  {
    v37 = v31;
  }

  else
  {
    v37 = ((v22 + ((v22 + v35) & ~v5)) & ~v5) + v20;
  }

  v38 = v14 + ((v4 + 48) & ~v4);
  v39 = v14 + ((v4 + 128) & ~v4);
  v40 = *(v17 + 64);
  v41 = (v20 + v9 + ((v22 + ((v22 + v36) & ~v5)) & ~v5)) & ~v9;
  if (!v27)
  {
    ++v28;
  }

  v42 = v28 + v41;
  if (v42 <= v37)
  {
    v42 = v37;
  }

  v43 = (v38 & ~v5) + v20;
  if (v43 + 1 > v42)
  {
    v42 = v43 + 1;
  }

  if (((v22 + ((v22 + (v39 & ~v5)) & ~v5)) & ~v5) + v20 > v42)
  {
    v42 = ((v22 + ((v22 + (v39 & ~v5)) & ~v5)) & ~v5) + v20;
  }

  if (v21 > v42)
  {
    v42 = *(v61 + 64);
  }

  if (v33 > v42)
  {
    v42 = v33;
  }

  v44 = *(v18 + 80);
  v45 = *(v18 + 84);
  v46 = *(v18 + 64);
  if (!*(v17 + 84))
  {
    ++v40;
  }

  v47 = v40 + v44;
  if (!v45)
  {
    ++v46;
  }

  v48 = ((v60 + 7) & 0xFFFFFFFFFFFFFFF8) + 249;
  v49 = ((v46 + ((v47 + ((*(v17 + 80) + v12 + v42 + 1) & ~*(v17 + 80))) & ~v44) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v48 <= v49)
  {
    v48 = v49;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_77;
  }

  v50 = v48 + 1;
  v51 = 8 * (v48 + 1);
  if ((v48 + 1) <= 3)
  {
    v54 = ((a2 + ~(-1 << v51) - 254) >> v51) + 1;
    if (HIWORD(v54))
    {
      v52 = *(a1 + v50);
      if (!v52)
      {
        goto LABEL_77;
      }

      goto LABEL_66;
    }

    if (v54 > 0xFF)
    {
      v52 = *(a1 + v50);
      if (!*(a1 + v50))
      {
        goto LABEL_77;
      }

      goto LABEL_66;
    }

    if (v54 < 2)
    {
LABEL_77:
      v56 = *(a1 + v48);
      if (v56 >= 2)
      {
        return (v56 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v52 = *(a1 + v50);
  if (!*(a1 + v50))
  {
    goto LABEL_77;
  }

LABEL_66:
  v55 = (v52 - 1) << v51;
  if (v50 > 3)
  {
    v55 = 0;
  }

  if (v50)
  {
    if (v50 > 3)
    {
      LODWORD(v50) = 4;
    }

    if (v50 > 2)
    {
      if (v50 == 3)
      {
        LODWORD(v50) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v50) = *a1;
      }
    }

    else if (v50 == 1)
    {
      LODWORD(v50) = *a1;
    }

    else
    {
      LODWORD(v50) = *a1;
    }
  }

  return (v50 | v55) + 255;
}

void sub_1E6827120(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v60 = *(a4[3] - 8);
  v61 = *(*(a4[5] - 8) + 64);
  v5 = *(v60 + 80);
  v59 = *(sub_1E68B1820() - 8);
  v6 = *(v59 + 80);
  v63 = *(a4[2] - 8);
  v62 = *(a4[7] - 8);
  v7 = *(v63 + 80);
  v8 = *(v62 + 80);
  v9 = *(sub_1E68B1A10() - 8);
  v10 = *(v9 + 80);
  v11 = v8;
  v12 = v5 | v6 | v7 | v8 | v10 | 7;
  v13 = (v12 + v61) & ~v12;
  v14 = *(v60 + 64);
  v15 = *(v59 + 64);
  if (v15 <= v14)
  {
    v16 = *(v60 + 64);
  }

  else
  {
    v16 = *(v59 + 64);
  }

  v17 = *(a4[4] - 8);
  v18 = *(a4[6] - 8);
  v19 = v14 + v6;
  v20 = *(v63 + 64);
  if (*(v59 + 84))
  {
    v21 = *(v59 + 64);
  }

  else
  {
    v21 = v15 + 1;
  }

  v22 = *(v62 + 64);
  v23 = v21 + v6;
  v24 = v21 + v7;
  if (*(v63 + 84))
  {
    v25 = *(v63 + 64);
  }

  else
  {
    v25 = v20 + 1;
  }

  v26 = ((((v21 + (v23 & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v26 <= v16)
  {
    v26 = v16;
  }

  if (v26 + 1 > ((v20 + v7 + ((v21 + v7 + ((v21 + v6 + ((v21 + v6 + ((v19 + 1 + ((v5 + 248) & ~v5)) & ~v6)) & ~v6)) & ~v6)) & ~v7)) & ~v7) + v25)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = ((v20 + v7 + ((v21 + v7 + ((v21 + v6 + ((v21 + v6 + ((v19 + 1 + ((v5 + 248) & ~v5)) & ~v6)) & ~v6)) & ~v6)) & ~v7)) & ~v7) + v25;
  }

  v28 = *(v9 + 84);
  v29 = *(v9 + 64);
  if (*(v62 + 84))
  {
    v30 = *(v62 + 64);
  }

  else
  {
    v30 = v22 + 1;
  }

  v31 = v30 + ((v25 + v11 + ((v25 + v7 + ((v24 + ((v23 + ((v23 + ((v19 + 1 + ((v5 + 224) & ~v5)) & ~v6)) & ~v6)) & ~v6)) & ~v7)) & ~v7)) & ~v11);
  if (v31 <= v27)
  {
    v31 = v27;
  }

  v32 = ((v24 + ((v23 + ((v6 + 64) & ~v6)) & ~v6)) & ~v7) + v25;
  if (v32 <= v31)
  {
    v32 = v31;
  }

  v33 = v21 + (v19 & ~v6);
  v34 = ((v33 + v6) & ~v6) + v21;
  if (((v34 + v6) & ~v6) + v21 > v32)
  {
    v32 = ((v34 + v6) & ~v6) + v21;
  }

  v35 = ((v6 + (v33 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v6) + v21;
  if (v35 > v32)
  {
    v32 = v35;
  }

  if (((v23 + ((v19 + ((v5 + 24) & ~v5)) & ~v6)) & ~v6) + v21 > v32)
  {
    v32 = ((v23 + ((v19 + ((v5 + 24) & ~v5)) & ~v6)) & ~v6) + v21;
  }

  if (v35 > v32)
  {
    v32 = v35;
  }

  if (((v23 + ((v23 + ((v19 + ((v5 + 104) & ~v5)) & ~v6)) & ~v6)) & ~v6) + v21 > v32)
  {
    v32 = ((v23 + ((v23 + ((v19 + ((v5 + 104) & ~v5)) & ~v6)) & ~v6)) & ~v6) + v21;
  }

  if (((v24 + ((v23 + ((v23 + ((v23 + ((v19 + ((v5 + 160) & ~v5)) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v7) + v25 > v32)
  {
    v32 = ((v24 + ((v23 + ((v23 + ((v23 + ((v19 + ((v5 + 160) & ~v5)) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v7) + v25;
  }

  v37 = (v19 + ((v5 + 40) & ~v5)) & ~v6;
  v36 = (v19 + ((v5 + 56) & ~v5)) & ~v6;
  if (((v23 + ((v23 + v36) & ~v6)) & ~v6) + v21 <= v32)
  {
    v38 = v32;
  }

  else
  {
    v38 = ((v23 + ((v23 + v36) & ~v6)) & ~v6) + v21;
  }

  v39 = v19 + ((v5 + 48) & ~v5);
  v40 = v19 + ((v5 + 128) & ~v5);
  v41 = *(v17 + 64);
  v42 = (v21 + v10 + ((v23 + ((v23 + v37) & ~v6)) & ~v6)) & ~v10;
  if (!v28)
  {
    ++v29;
  }

  v43 = v29 + v42;
  if (v43 <= v38)
  {
    v43 = v38;
  }

  v44 = (v39 & ~v6) + v21;
  if (v44 + 1 > v43)
  {
    v43 = v44 + 1;
  }

  if (((v23 + ((v23 + (v40 & ~v6)) & ~v6)) & ~v6) + v21 > v43)
  {
    v43 = ((v23 + ((v23 + (v40 & ~v6)) & ~v6)) & ~v6) + v21;
  }

  if (v22 > v43)
  {
    v43 = *(v62 + 64);
  }

  if (v34 > v43)
  {
    v43 = v34;
  }

  v45 = *(v18 + 80);
  v46 = *(v18 + 84);
  v47 = *(v18 + 64);
  if (!*(v17 + 84))
  {
    ++v41;
  }

  v48 = v41 + v45;
  if (!v46)
  {
    ++v47;
  }

  v49 = ((v47 + ((v48 + ((*(v17 + 80) + v13 + v43 + 1) & ~*(v17 + 80))) & ~v45) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v61 + 7) & 0xFFFFFFFFFFFFFFF8) + 249 > v49)
  {
    v49 = ((v61 + 7) & 0xFFFFFFFFFFFFFFF8) + 249;
  }

  v50 = v49 + 1;
  if (a3 < 0xFF)
  {
    v53 = 0;
    v51 = a1;
    v52 = a2;
  }

  else
  {
    v51 = a1;
    v52 = a2;
    if (v50 <= 3)
    {
      v56 = ((a3 + ~(-1 << (8 * v50)) - 254) >> (8 * v50)) + 1;
      if (HIWORD(v56))
      {
        v53 = 4;
      }

      else
      {
        if (v56 < 0x100)
        {
          v57 = 1;
        }

        else
        {
          v57 = 2;
        }

        if (v56 >= 2)
        {
          v53 = v57;
        }

        else
        {
          v53 = 0;
        }
      }
    }

    else
    {
      v53 = 1;
    }
  }

  if (v52 > 0xFE)
  {
    v54 = v52 - 255;
    if (v50 >= 4)
    {
      bzero(v51, v49 + 1);
      *v51 = v54;
      v55 = 1;
      if (v53 > 1)
      {
        goto LABEL_91;
      }

      goto LABEL_88;
    }

    v55 = (v54 >> (8 * v50)) + 1;
    if (v49 != -1)
    {
      v58 = v54 & ~(-1 << (8 * v50));
      bzero(v51, v50);
      if (v50 != 3)
      {
        if (v50 == 2)
        {
          *v51 = v58;
          if (v53 > 1)
          {
LABEL_91:
            if (v53 == 2)
            {
              *&v51[v50] = v55;
            }

            else
            {
              *&v51[v50] = v55;
            }

            return;
          }
        }

        else
        {
          *v51 = v54;
          if (v53 > 1)
          {
            goto LABEL_91;
          }
        }

LABEL_88:
        if (v53)
        {
          v51[v50] = v55;
        }

        return;
      }

      *v51 = v58;
      v51[2] = BYTE2(v58);
    }

    if (v53 > 1)
    {
      goto LABEL_91;
    }

    goto LABEL_88;
  }

  if (v53 <= 1)
  {
    if (v53)
    {
      v51[v50] = 0;
      if (!v52)
      {
        return;
      }

LABEL_77:
      v51[v49] = -v52;
      return;
    }

LABEL_76:
    if (!v52)
    {
      return;
    }

    goto LABEL_77;
  }

  if (v53 == 2)
  {
    *&v51[v50] = 0;
    goto LABEL_76;
  }

  *&v51[v50] = 0;
  if (v52)
  {
    goto LABEL_77;
  }
}