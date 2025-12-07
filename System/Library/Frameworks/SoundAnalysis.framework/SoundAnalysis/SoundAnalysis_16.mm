uint64_t sub_1C98DE798()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];

  sub_1C99DC5A4();
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1C9AB09D8;
  *(v6 + 24) = v5;
  v7 = sub_1C97A2CEC(&qword_1EC3CBBB8, &unk_1C9AB09F0);
  v16 = v7;
  v8 = sub_1C98E0160();
  v17 = v8;
  v15[0] = &unk_1C9AB09E8;
  v15[1] = v6;
  v9 = sub_1C97A5A8C(v15, v7);
  v14[3] = v7;
  v14[4] = *(v8 + 8);
  v10 = sub_1C981CDF0(v14);
  (*(*(v7 - 8) + 16))(v10, v9, v7);

  sub_1C99DC674(v14, v11);

  if (v1)
  {

    sub_1C97A592C(v14);
  }

  else
  {
    sub_1C97A592C(v14);
    sub_1C97A592C(v15);
    v16 = MEMORY[0x1E69E6530];
    v17 = &off_1F494AAD0;
    v15[0] = v4;
    sub_1C99DC674(v15, v12);
  }

  return sub_1C97A592C(v15);
}

uint64_t sub_1C98DE954(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C98E01E8;

  return v5();
}

uint64_t sub_1C98DEA40()
{
  sub_1C97AA884();
  *(v0 + 40) = v1;

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1C98DEAE8;

  return sub_1C98DEC18();
}

uint64_t sub_1C98DEAE8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98DEBE4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  sub_1C97DA91C();
  return v3();
}

uint64_t sub_1C98DEC18()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1C98DECA8;

  return sub_1C988FC80();
}

uint64_t sub_1C98DECA8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C98DEDAC()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1C98DEE58;

  return sub_1C9A24B58();
}

uint64_t sub_1C98DEE58(uint64_t a1, uint64_t a2)
{
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v3;
  sub_1C97AA83C();
  *v10 = v9;
  v7[8] = v2;

  if (!v2)
  {
    v7[9] = a2;
    v7[10] = a1;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C98DEF78()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  v1[1] = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);

  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = &unk_1C9AB09B8;
  *(v2 + 24) = v1;
  v3 = sub_1C97DA8BC();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1C98DF060;

  return v5();
}

uint64_t sub_1C98DF060()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C98DF170()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98DF1D8()
{
  sub_1C97AA95C();
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[2];

  *v3 = &unk_1C9AB09C8;
  v3[1] = v2;
  v3[2] = v1;
  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C98DF268()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98DF2D8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98DF334(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C98DF424;

  return v4(v1 + 16);
}

uint64_t sub_1C98DF424()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t sub_1C98DF568()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;

  return sub_1C98DEA40();
}

uint64_t sub_1C98DF688()
{
  sub_1C97AA95C();
  v0[5] = &unk_1F492E330;
  v0[6] = &off_1F492E6A0;
  sub_1C97A5A8C(v0 + 2, &unk_1F492E330);
  swift_storeEnumTagMultiPayload();
  v1 = sub_1C97DA8BC();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1C98DF754;
  v2 = v0[12];

  return v4(v0 + 7, v2);
}

uint64_t sub_1C98DF754()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98DF850()
{
  sub_1C97AA884();
  v1 = *(v0 + 80);
  sub_1C97AA724(*(v0 + 96));
  v2 = *(v0 + 72);
  *v1 = *(v0 + 56);
  *(v1 + 16) = v2;
  sub_1C97A592C((v0 + 16));

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C98DF8D4()
{
  sub_1C97AA884();
  sub_1C97AA724(*(v0 + 96));
  sub_1C97A592C((v0 + 16));

  sub_1C97DA91C();

  return v1();
}

unint64_t sub_1C98DF948()
{
  result = qword_1EC3CBBA0;
  if (!qword_1EC3CBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBBA0);
  }

  return result;
}

_BYTE *sub_1C98DF9A8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C98DFA70()
{
  result = qword_1EC3CBBA8;
  if (!qword_1EC3CBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBBA8);
  }

  return result;
}

unint64_t sub_1C98DFAC8()
{
  result = qword_1EC3CBBB0;
  if (!qword_1EC3CBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBBB0);
  }

  return result;
}

uint64_t sub_1C98DFB44()
{
  sub_1C97AA884();
  v1 = sub_1C986E5A8(0xFFFFFFFFFFFFFFFFLL);
  v2 = *(v0 + 8);
  v3 = v1 ^ 0x8000000000000000;

  return v2(v3);
}

uint64_t sub_1C98DFBA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C98E01E8;

  return sub_1C987B628();
}

uint64_t sub_1C98DFC48()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98E01EC(v1);

  return v4(v3);
}

uint64_t sub_1C98DFCDC()
{
  sub_1C97AA95C();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C98DFD84;

  return sub_1C98DF334(v2);
}

uint64_t sub_1C98DFD84()
{
  sub_1C97AA884();
  v2 = v1;
  sub_1C97AA890();
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1C98DFE70()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98E01EC(v1);

  return v4(v3);
}

uint64_t sub_1C98DFF04(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C98DFFA4;

  return sub_1C97A9A44();
}

uint64_t sub_1C98DFFA4()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1C98E00A0(uint64_t a1)
{
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v3[1] = sub_1C97D9C3C;

  return sub_1C98DFF04(a1);
}

unint64_t sub_1C98E0160()
{
  result = qword_1EC3CBBC0;
  if (!qword_1EC3CBBC0)
  {
    sub_1C97AA4F0(&qword_1EC3CBBB8, &unk_1C9AB09F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBBC0);
  }

  return result;
}

uint64_t sub_1C98E0290(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3CBBD0, &qword_1C9AB0AE0);
  sub_1C97AE9C8();
  v57 = v2;
  v58 = v1;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AC02C();
  v56 = v4;
  sub_1C97A2CEC(&qword_1EC3CBBD8, &qword_1C9AB0AE8);
  sub_1C97AE9C8();
  v62 = v5;
  v63 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  v55 = v8;
  v9 = sub_1C97A2CEC(&qword_1EC3C79A8, &qword_1C9AB0AF0);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AC02C();
  v60 = v11;
  v65 = sub_1C97A2CEC(&qword_1EC3CBBE0, &unk_1C9AB0AF8);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v64 = v13;
  v61 = sub_1C9A91748();
  sub_1C97AE9C8();
  v66 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AEAD8();
  v53 = v17 - v16;
  sub_1C9A93008();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AEAD8();
  v19 = sub_1C9A92158();
  v20 = sub_1C97DACE4(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AEAD8();
  v21 = sub_1C9A93018();
  sub_1C97AE9C8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97AEAD8();
  v27 = v26 - v25;
  sub_1C97BD318(v28, 0, &qword_1EC3C56B0, 0x1E69E9610);
  (*(v23 + 104))(v27, *MEMORY[0x1E69E8098], v21);
  sub_1C9A92148();
  v67[0] = MEMORY[0x1E69E7CC0];
  sub_1C98E3058(&qword_1EC3C56C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1C97A2CEC(&unk_1EC3CDC60, &unk_1C9AA0040);
  sub_1C97AE67C(&qword_1EC3C56E0, &unk_1EC3CDC60, &unk_1C9AA0040, MEMORY[0x1E69E6328]);
  sub_1C9A93428();
  v29 = sub_1C9A93048();
  sub_1C9A91738();
  sub_1C97AA878();
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = v29;
  sub_1C97AA878();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1C98E2F94;
  *(v31 + 24) = v30;

  v32 = v29;
  sub_1C97A2CEC(&qword_1EC3CBBE8, &qword_1C9AB0B08);
  sub_1C97AE67C(&qword_1EC3CBBF0, &qword_1EC3CBBE8, &qword_1C9AB0B08, &unk_1C9AAE4C0);
  sub_1C9A91EF8();
  sub_1C98E0C04(sub_1C98E0BB4, 0, v55);
  (*(v57 + 8))(v56, v58);
  sub_1C97F07FC();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  sub_1C97AA878();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1C98E2FA4;
  *(v34 + 24) = v33;
  v59 = v32;

  v35 = sub_1C97CB094();
  sub_1C97A2CEC(v35, v36);
  sub_1C98E377C();
  sub_1C97AE67C(v37, &qword_1EC3CBBD8, &qword_1C9AB0AE8, v38);
  sub_1C97AE67C(&qword_1EC3CBC08, &qword_1EC3CBBF8, &qword_1C9AB0B10, MEMORY[0x1E695BDA0]);
  sub_1C9A92078();

  (*(v63 + 8))(v55, v62);
  sub_1C9A935B8();

  sub_1C98E3058(&qword_1EC3C5480, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v39 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v39);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  sub_1C97DCFC0(0xD00000000000001FLL, 0x80000001C9AD8530);

  sub_1C97DA1E0(v60, &qword_1EC3C79A8, &qword_1C9AB0AF0);
  sub_1C9A935B8();

  v67[0] = 0xD00000000000001FLL;
  v67[1] = 0x80000001C9AD8530;
  v40 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v40);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0xD00000000000001FLL;
  *(v41 + 32) = 0x80000001C9AD8530;
  *(v41 + 40) = 60;
  sub_1C97DAA28();
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = sub_1C98E30A0;
  v42[4] = v41;
  sub_1C97DAA28();
  v43 = swift_allocObject();
  v43[2] = sub_1C98E30B0;
  v43[3] = v42;
  v43[4] = 60;
  v44 = (v64 + *(v65 + 52));
  *v44 = sub_1C9911F58;
  v44[1] = 0;
  v45 = (v64 + *(v65 + 56));
  *v45 = sub_1C98E30BC;
  v45[1] = v43;
  sub_1C97AE67C(&qword_1EC3CBC10, &qword_1EC3CBBE0, &unk_1C9AB0AF8, &unk_1C9AC4E90);
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3CBC18, &qword_1C9AB0B18);
  sub_1C97AA878();
  swift_allocObject();
  v46 = sub_1C97C926C();
  v48 = sub_1C98E2E50(v46, v47);
  sub_1C97DA1E0(v64, &qword_1EC3CBBE0, &unk_1C9AB0AF8);
  v67[0] = v48;
  sub_1C9835270();
  sub_1C97AE67C(v49, &qword_1EC3CBC18, &qword_1C9AB0B18, v50);
  sub_1C9A91F28();
  sub_1C97C926C();

  v51 = (*(v66 + 8))(v53, v61);
  type metadata accessor for SharedHIDReportStream.Instance(v51);
  sub_1C97F07FC();
  result = swift_allocObject();
  *(result + 16) = v67;
  return result;
}

id *sub_1C98E0BB4@<X0>(id *result@<X0>, void *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    v3 = *result;
    result = *result;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1C98E0C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = sub_1C97A2CEC(&qword_1EC3CBC58, &qword_1C9AB0B40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CBC60, &qword_1C9AB0B48);
  v10 = *(v9 - 8);
  v18 = v9;
  v19 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_1C97A2CEC(&qword_1EC3CBBD0, &qword_1C9AB0AE0);
  sub_1C97A2CEC(&qword_1EC3CBC68, &qword_1C9AB0B50);
  sub_1C97AE67C(&qword_1EC3CBC70, &qword_1EC3CBBD0, &qword_1C9AB0AE0, MEMORY[0x1E695C058]);
  sub_1C9A91F68();

  sub_1C97A2CEC(&qword_1EC3CBC78, &unk_1C9AB0B58);
  sub_1C9A91C38();
  v14 = (*(v6 + 8))(v8, v5);
  sub_1C97BD318(v14, 0, &qword_1EC3CBC80, 0x1E696CD48);
  sub_1C97AE67C(&qword_1EC3CBC88, &qword_1EC3CBC60, &qword_1C9AB0B48, MEMORY[0x1E695BE28]);
  v15 = v18;
  sub_1C9A91F38();
  return (*(v19 + 8))(v12, v15);
}

uint64_t sub_1C98E0EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_1C97A2CEC(&qword_1EC3CBCC0, &qword_1C9AB0B98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CBCC8, &qword_1C9AB0BA0);
  v10 = *(v9 - 8);
  v17 = v9;
  v18 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_1C97A2CEC(&qword_1EC3C8028, &qword_1C9AA1B68);
  sub_1C97A2CEC(&qword_1EC3CBCD0, &qword_1C9AB0BA8);
  sub_1C97AE67C(&qword_1EC3C8040, &qword_1EC3C8028, &qword_1C9AA1B68, MEMORY[0x1E695C058]);
  sub_1C9A91F68();

  sub_1C97A2CEC(&qword_1EC3CBCD8, &qword_1C9AB0BB0);
  sub_1C9A91C38();
  (*(v6 + 8))(v8, v5);
  type metadata accessor for AOPClassificationResult(0);
  sub_1C97AE67C(&qword_1EC3CBCE0, &qword_1EC3CBCC8, &qword_1C9AB0BA0, MEMORY[0x1E695BE28]);
  v14 = v17;
  sub_1C9A91F38();
  return (*(v18 + 8))(v12, v14);
}

uint64_t sub_1C98E11E4@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CBC28, &qword_1C9AB0B20);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *a1;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C98E30C8;
  *(v12 + 24) = v11;
  v13 = v10;
  v14 = a2;
  sub_1C97A2CEC(&qword_1EC3CBC30, &qword_1C9AB0B28);
  sub_1C97AE67C(&qword_1EC3CBC38, &qword_1EC3CBC30, &qword_1C9AB0B28, &unk_1C9AAE4C0);
  sub_1C9A91EF8();
  sub_1C97AE67C(&qword_1EC3CBC40, &qword_1EC3CBC28, &qword_1C9AB0B20, MEMORY[0x1E695C058]);
  v15 = sub_1C9A91F28();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v15;
  return result;
}

void sub_1C98E13D4(uint64_t result)
{
  v1 = *(result + 32);
  switch(*(result + 40) >> 62)
  {
    case 1:
      if (v1 >> 32 >= v1)
      {
        v2 = v1;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2:
      v2 = *(v1 + 16);
LABEL_6:
      sub_1C98E2EFC(v2);
      break;
    default:
      sub_1C98FD6A8();
      break;
  }
}

uint64_t sub_1C98E14C0()
{
  type metadata accessor for SNAOPReport.Payload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEAD8();
  v5 = (v4 - v3);
  type metadata accessor for SNAOPReport(0);
  sub_1C98E3520();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1C98E3578();
  }

  v6 = *v5;
  v8 = *(v5 + 1);
  v7 = *(v5 + 2);
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);
  sub_1C97C926C();

  v10 = sub_1C9A91B38();
  v11 = sub_1C9A92FA8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    sub_1C98E2EA8();
    swift_allocError();
    *v14 = v6;
    *(v14 + 8) = v8;
    *(v14 + 16) = v7;

    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1C9788000, v10, v11, "Received AOP error: %@", v12, 0xCu);
    sub_1C97DA1E0(v13, &unk_1EC3C86A0, &qword_1C9A9F830);
    MEMORY[0x1CCA93280](v13, -1, -1);
    MEMORY[0x1CCA93280](v12, -1, -1);
  }

  sub_1C98E2EA8();
  swift_allocError();
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v7;
  return swift_willThrow();
}

uint64_t sub_1C98E1720@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SNAOPReport.SuccessPayload(0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98E3520();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = 1;
  }

  else
  {
    sub_1C98E3578();
    v4 = 0;
  }

  v5 = type metadata accessor for AOPClassificationResult(0);
  return sub_1C97ACC50(a2, v4, 1, v5);
}

uint64_t sub_1C98E1828()
{
  result = sub_1C9A92348();
  qword_1EC3D31F0 = result;
  return result;
}

void sub_1C98E1868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CBC90, &qword_1C9AB0B68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69A2958]) initWithOptions_];
  v10 = sub_1C9A922F8();
  [v9 setDeviceMatching_];

  [v9 setDispatchQueue_];
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v8, v5);
  aBlock[4] = sub_1C98E337C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E1BEC;
  aBlock[3] = &unk_1F493BD60;
  v13 = _Block_copy(aBlock);

  [v9 setDeviceNotificationHandler_];
  _Block_release(v13);
  *(swift_allocObject() + 16) = v9;
  v14 = v9;
  sub_1C9A92A98();
  [v14 activate];
}

uint64_t sub_1C98E1AE4(void *a1, char a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CBC98, &unk_1C9AB0B70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v10 = a1;
  v11 = a2;
  v8 = a1;
  sub_1C97A2CEC(&qword_1EC3CBC90, &qword_1C9AB0B68);
  sub_1C9A92AA8();
  return (*(v5 + 8))(v7, v4);
}

void sub_1C98E1BEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1C98E1C60(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a1;
  v6 = sub_1C97A2CEC(&qword_1EC3CBC48, &qword_1C9AB0B30);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  [a2 open];
  [a2 setDispatchQueue_];
  v19 = *(v7 + 16);
  v19(v9, a1, v6);
  v10 = *(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(v7 + 32);
  v12(v11 + ((v10 + 16) & ~v10), v9, v6);
  v25 = sub_1C98E30D8;
  v26 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C98E20BC;
  v24 = &unk_1F493BC70;
  v13 = _Block_copy(&aBlock);

  [a2 setInputReportHandler_];
  _Block_release(v13);
  v19(v9, v20, v6);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v12(v14 + ((v10 + 24) & ~v10), v9, v6);
  v25 = sub_1C98E31A8;
  v26 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C98E5C5C;
  v24 = &unk_1F493BCC0;
  v15 = _Block_copy(&aBlock);
  v16 = a2;

  [v16 setRemovalHandler_];
  _Block_release(v15);
  *(swift_allocObject() + 16) = v16;
  v17 = v16;
  sub_1C9A92A98();
  return [v17 activate];
}

uint64_t sub_1C98E1F84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_1C97A2CEC(&qword_1EC3CBC50, &qword_1C9AB0B38);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v16 = a1;
  sub_1C97CE3DC(a5, a6);
  sub_1C97A2CEC(&qword_1EC3CBC48, &qword_1C9AB0B30);
  sub_1C9A92AA8();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1C98E20BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = a6;
  v14 = sub_1C9A91618();
  v16 = v15;

  v11(v12, a3, a4, a5, v14, v16);
  sub_1C97A5978(v14, v16);
}

uint64_t sub_1C98E2184(void *a1)
{
  [a1 cancel];
  [a1 close];
  sub_1C97A2CEC(&qword_1EC3CBC48, &qword_1C9AB0B30);
  return sub_1C9A92AB8();
}

uint64_t static HIDUtils.standaloneAOPReportStream()()
{
  v0 = sub_1C97A2CEC(&qword_1EC3C8D30, &qword_1C9AB0A20);
  sub_1C97AE9C8();
  v2 = v1;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  sub_1C97A2CEC(&qword_1EC3C8D38, &unk_1C9AA5520);
  sub_1C97AE9C8();
  v26 = v7;
  v27 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  if (qword_1EC3C5DA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1C98E0290(qword_1EC3D31F0);
  v28 = sub_1C97FB98C();
  sub_1C97A2CEC(&qword_1EC3C79C0, &qword_1C9AA15D0);
  type metadata accessor for SNAOPReport(0);
  sub_1C97DA9B0();
  sub_1C97AE67C(v11, v12, &qword_1C9AA15D0, v13);
  sub_1C9A92048();

  type metadata accessor for SNAOPReport.SuccessPayload(0);
  v14 = MEMORY[0x1E695BE28];
  sub_1C97AE67C(&qword_1EC3C8D40, &qword_1EC3C8D30, &qword_1C9AB0A20, MEMORY[0x1E695BE28]);
  sub_1C9A92048();
  (*(v2 + 8))(v5, v0);
  sub_1C97AE67C(&qword_1EC3C8D48, &qword_1EC3C8D38, &unk_1C9AA5520, v14);
  v15 = v27;
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3C8D50, qword_1C9AA5530);
  sub_1C97AA878();
  swift_allocObject();
  v16 = sub_1C97C926C();
  v18 = sub_1C98E2E50(v16, v17);
  (*(v26 + 8))(v10, v15);
  v28 = v18;
  sub_1C9835270();
  sub_1C97AE67C(v19, &qword_1EC3C8D50, qword_1C9AA5530, v20);
  sub_1C9A91F28();
  sub_1C97C926C();

  type metadata accessor for SharedAOPReportStream.Instance(v21);
  sub_1C97F07FC();
  v22 = swift_allocObject();
  *(v22 + 16) = &v28;
  v23 = v22;
  sub_1C97FE0A8();
  sub_1C97C926C();

  return v23;
}

uint64_t sub_1C98E2558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v53 = a2;
  v55 = *MEMORY[0x1E69E9840];
  v5 = sub_1C97A2CEC(&qword_1EC3C8028, &qword_1C9AA1B68);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3CBCA0, &unk_1C9AB0B80);
  sub_1C97AE9C8();
  v13 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  type metadata accessor for IOService(v17);
  result = sub_1C99F24F8(*MEMORY[0x1E696CD60], 0xD000000000000011, 0x80000001C9AD85A0, 0x706F616E73, 0xE500000000000000);
  if (!v3)
  {
    v47 = v10;
    v48 = v5;
    v49 = v16;
    v50 = v7;
    v19 = v53;
    v51 = v13;
    v20 = *(result + 16);
    connect[0] = 0;
    v21 = sub_1C9A70E98();
    v22 = IOServiceOpen(v20, v21, 0, connect);
    sub_1C9A3B42C(v22);
    v24 = sub_1C99F39D0(connect[0], v23);

    type metadata accessor for IOConnect(v25);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v53 = v19();
    v27 = sub_1C97FE0A8();
    sub_1C97AA878();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = a1;
    v46 = v26;
    sub_1C97DAA28();
    v29 = swift_allocObject();
    v29[2] = sub_1C98E3414;
    v29[3] = v28;
    v29[4] = v27;

    sub_1C97A2CEC(&qword_1EC3C8030, &qword_1C9AA1B70);
    sub_1C97DA9B0();
    sub_1C97AE67C(v30, v31, &qword_1C9AA1B70, v32);
    v33 = v47;
    sub_1C9A91EF8();
    v34 = v49;
    sub_1C98E0EFC(sub_1C98E1720, 0, v49);
    (*(v50 + 8))(v33, v48);
    sub_1C98E377C();
    sub_1C97AE67C(v35, v36, v37, v38);
    v39 = sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3CBCB0, &qword_1C9AB0B90);
    sub_1C97AA878();
    swift_allocObject();
    v41 = sub_1C98E2E50(v39, v40);
    (*(v51 + 8))(v34, v11);
    *connect = v41;
    sub_1C9835270();
    sub_1C97AE67C(v42, &qword_1EC3CBCB0, &qword_1C9AB0B90, v43);
    v44 = sub_1C9A91F28();

    type metadata accessor for SharedAOPDebugStream.Instance(v45);
    sub_1C97F07FC();
    result = swift_allocObject();
    *(result + 16) = v44;
  }

  return result;
}

void *sub_1C98E29B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SharedAOPDebugStream.AOPSubscription(0);
  swift_allocObject();

  result = sub_1C9903700(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C98E2A78(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = sub_1C97A2CEC(&qword_1EC3CBCD0, &qword_1C9AB0BA8);
  MEMORY[0x1EEE9AC00](v5);
  a2(a1);
  swift_storeEnumTagMultiPayload();
  return sub_1C98E34C8();
}

void *sub_1C98E2B6C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  v6 = a3;
  v7 = a4;
  result = a1(&v8, &v6);
  if (!v4)
  {
    return v8;
  }

  return result;
}

id sub_1C98E2BBC(id a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();
  }

  else
  {
    v4 = a1;
  }

  return a1;
}

uint64_t sub_1C98E2C34()
{
  v2 = sub_1C97A2CEC(&qword_1EC3CBCD0, &qword_1C9AB0BA8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v6 - v3);
  sub_1C98E3470();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1C98E34C8();
  }

  v6[1] = *v4;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  return swift_willThrowTypedImpl();
}

uint64_t sub_1C98E2DB4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C98E2DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C98E2E50(uint64_t a1, double a2)
{
  type metadata accessor for SafeRecursiveLock(a2);
  sub_1C97F07FC();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  *(v2 + 16) = v4;
  *(v2 + 24) = a1;
  return v2;
}

unint64_t sub_1C98E2EA8()
{
  result = qword_1EC3CBBC8;
  if (!qword_1EC3CBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBBC8);
  }

  return result;
}

void sub_1C98E2EFC(uint64_t a1)
{
  v2 = sub_1C9A91308();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C9A91338();
    if (__OFSUB__(a1, v4))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - v4 + v3);
  }

  else
  {
    v5 = 0;
  }

  sub_1C9A91328();
  if (v5)
  {
    memcpy(__dst, v5, sizeof(__dst));
    sub_1C98FD6A8();
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_1C98E2FAC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  return sub_1C97D96E8(v9, a2, a3, a4, a5, a6, a7);
}

void *sub_1C98E2FE0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *(*a4)(void **__return_ptr, _BYTE *)@<X4>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  return sub_1C97D9368(v7, a2, a3, a4, a5);
}

void *sub_1C98E3014@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, _OWORD *, void, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  return sub_1C97D9200(v7, a2, a3, a4, a5);
}

uint64_t sub_1C98E3058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C98E30D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_1C97A2CEC(&qword_1EC3CBC48, &qword_1C9AB0B30);
  sub_1C97DACE4(v12);

  return sub_1C98E1F84(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1C98E3190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C98E31A8()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CBC48, &qword_1C9AB0B30);
  sub_1C97DACE4(v1);
  v2 = *(v0 + 16);

  return sub_1C98E2184(v2);
}

id sub_1C98E3214()
{
  v1 = *(v0 + 16);
  [v1 cancel];

  return [v1 close];
}

uint64_t sub_1C98E3260@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C98E2A28();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

id sub_1C98E32AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C98E2BBC(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1C98E32E4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_1C98E2D50(*a1);
  *a2 = result;
  return result;
}

void *sub_1C98E3310@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  result = sub_1C98E2B6C(a1, a2, *a3, *(a3 + 8));
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C98E337C(void *a1, char a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CBC90, &qword_1C9AB0B68);
  sub_1C97DACE4(v4);

  return sub_1C98E1AE4(a1, a2);
}

uint64_t sub_1C98E3430@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C0834();
  *a1 = result;
  return result;
}

uint64_t sub_1C98E3470()
{
  sub_1C98AE1E8();
  sub_1C97A2CEC(v1, v2);
  sub_1C97DA940();
  v3 = sub_1C97CB094();
  v4(v3);
  return v0;
}

uint64_t sub_1C98E34C8()
{
  sub_1C98AE1E8();
  sub_1C97A2CEC(v1, v2);
  sub_1C97DA940();
  v3 = sub_1C97CB094();
  v4(v3);
  return v0;
}

uint64_t sub_1C98E3520()
{
  sub_1C98AE1E8();
  v1(0);
  sub_1C97DA940();
  v2 = sub_1C97CB094();
  v3(v2);
  return v0;
}

uint64_t sub_1C98E3578()
{
  sub_1C98AE1E8();
  v1(0);
  sub_1C97DA940();
  v2 = sub_1C97CB094();
  v3(v2);
  return v0;
}

_BYTE *sub_1C98E35D0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C98E367C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C98E36BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C98E3710()
{
  result = qword_1EC3CBCE8;
  if (!qword_1EC3CBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBCE8);
  }

  return result;
}

uint64_t sub_1C98E3794(void *a1, uint64_t a2)
{
  v4 = v2;
  sub_1C97FD5DC(a1, *(v4 + OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerInputFeatureNameMappings));
  if (!v3)
  {
    v7 = v6;
    v8 = *(v4 + OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_model + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 24))(v7, a2, ObjectType, v8);
    sub_1C97FD844(v10, *(v4 + OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerOutputFeatureNameMappings));
    v4 = v11;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v4;
}

void sub_1C98E3960(void *a1)
{
  swift_getObjectType();

  v4 = objc_autoreleasePoolPush();
  v5 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = 34;
  MEMORY[0x1EEE9AC00](v6);

  v7 = sub_1C97E2E88();
  if (v2)
  {

    objc_autoreleasePoolPop(v5);
    objc_autoreleasePoolPop(v4);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v7;

    objc_autoreleasePoolPop(v5);
    objc_autoreleasePoolPop(v4);
    sub_1C98E56FC(v8, a1, v1);
  }
}

uint64_t sub_1C98E3B94(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = a1 + 16;
  v2 = v3;
  if (v3 >= 2 && *(result + 8 * v2) != 1)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v4 = sub_1C9A91B58();
    v5 = sub_1C98E5A08(v4, qword_1EC3D3108);
    v6 = sub_1C9A92FA8();
    if (sub_1C98E59A4(v6))
    {
      v7 = sub_1C98E59E0();
      sub_1C98139D4(v7);
      sub_1C98E59C0(&dword_1C9788000, v8, v9, "Only single-channel audio is supported.");
      sub_1C9887D60();
    }

    sub_1C9A924A8();
    sub_1C98E5A30();
    v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C98E597C();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C98E3C70(uint64_t result, double a2)
{
  if ((result - 1) > 1)
  {
    type metadata accessor for SNError(a2);
    sub_1C98573F8();
    v2 = sub_1C98E5A3C();
    sub_1C9929478(v2, v3, 4, v4, v5, v6);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C98E3CE0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = (a1 + 16);
  result = sub_1C98E3C70(*(a1 + 16), a3);
  if (!v3)
  {
    if (*v5 > 1uLL)
    {
      if (v5[*v5] == a2)
      {
        return result;
      }
    }

    else if (a2 == 1)
    {
      return result;
    }

    type metadata accessor for SNError(v7);
    sub_1C9A935B8();

    v8 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v8);

    MEMORY[0x1CCA90230](46, 0xE100000000000000);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD00000000000001BLL, 0x80000001C9AD8700);

    return swift_willThrow();
  }

  return result;
}

void sub_1C98E3E18(void *a1, void *a2)
{
  v4 = [a1 inputDescriptionsByName];
  sub_1C97BD318(v5, 0, &qword_1EC3C54D0, 0x1E695FE50);
  sub_1C9813994();
  v6 = sub_1C9A92328();

  v7 = *(v6 + 16);

  v8 = [a2 inputDescriptionsByName];
  sub_1C9813994();
  sub_1C9A92328();

  sub_1C98E5A50();
  if (v7 != v8)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v28 = sub_1C9A91B58();
    v29 = sub_1C98E5A08(v28, qword_1EC3D3108);
    v30 = sub_1C9A92FA8();
    if (!sub_1C98E59A4(v30))
    {
      goto LABEL_28;
    }

    v31 = sub_1C98E59E0();
    sub_1C98139D4(v31);
    v34 = "Input feature count doesn't match";
    goto LABEL_27;
  }

  v9 = [a1 inputDescriptionsByName];
  sub_1C9A92328();

  sub_1C98E5A50();
  if (v9 != 1)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v35 = sub_1C9A91B58();
    v29 = sub_1C98E5A08(v35, qword_1EC3D3108);
    v36 = sub_1C9A92FA8();
    if (!sub_1C98E59A4(v36))
    {
      goto LABEL_28;
    }

    v37 = sub_1C98E59E0();
    sub_1C98139D4(v37);
    v34 = "Input feature description has > 1 input feature";
    goto LABEL_27;
  }

  v10 = [a1 inputDescriptionsByName];
  v11 = sub_1C9A92328();

  v12 = sub_1C98BBCAC(v11);

  if (!v12 || (v13 = [v12 multiArrayConstraint], v12, !v13))
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v38 = sub_1C9A91B58();
    v29 = sub_1C98E5A08(v38, qword_1EC3D3108);
    v39 = sub_1C9A92FA8();
    if (!sub_1C98E59A4(v39))
    {
      goto LABEL_28;
    }

    v40 = sub_1C98E59E0();
    sub_1C98139D4(v40);
    v34 = "Input feature isn't an MLMultiArray";
LABEL_27:
    sub_1C98E59C0(&dword_1C9788000, v32, v33, v34);
    sub_1C9887D60();
LABEL_28:

    sub_1C9A924A8();
    sub_1C98E5A30();
    v41 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C98E597C();
    swift_willThrow();
    return;
  }

  v100 = a2;
  v101 = a1;
  v14 = [v13 shape];
  v99 = sub_1C97BD318(v15, 0, &qword_1EC3C54B0, 0x1E696AD98);
  v16 = sub_1C9A92798();

  v17 = sub_1C97BDEE0();
  v19 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v106 = MEMORY[0x1E69E7CC0];
    sub_1C97B7C28(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_86;
    }

    v20 = 0;
    v19 = v106;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1CCA912B0](v20, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 integerValue];

      v25 = *(v106 + 16);
      v24 = *(v106 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v27 = sub_1C98E59F8(v24);
        sub_1C97B7C28(v27, v25 + 1, 1);
      }

      ++v20;
      *(v106 + 16) = v26;
      *(v106 + 8 * v25 + 32) = v23;
    }

    while (v17 != v20);
  }

  else
  {
    v26 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  sub_1C99D13BC(v26, v18);
  if (v104)
  {

    return;
  }

  sub_1C98E3B94(v19);

  v103 = v13;
  if (!v17)
  {

    v43 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v107 = MEMORY[0x1E69E7CC0];
  sub_1C97B7C28(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v42 = 0;
  v43 = v107;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1CCA912B0](v42, v16);
    }

    else
    {
      v44 = *(v16 + 8 * v42 + 32);
    }

    v45 = v44;
    v46 = [v44 integerValue];

    v48 = *(v107 + 16);
    v47 = *(v107 + 24);
    if (v48 >= v47 >> 1)
    {
      v49 = sub_1C98E59F8(v47);
      sub_1C97B7C28(v49, v48 + 1, 1);
    }

    ++v42;
    *(v107 + 16) = v48 + 1;
    *(v107 + 8 * v48 + 32) = v46;
  }

  while (v17 != v42);

LABEL_44:
  v50 = sub_1C99D1444(v43);
  v52 = v51;

  if (v52)
  {
    v50 = 1;
  }

  v13 = v103;
  if ([v103 dataType] != 65568)
  {
    if (qword_1EC3C5520 == -1)
    {
LABEL_61:
      v73 = sub_1C9A91B58();
      v74 = sub_1C98E5A08(v73, qword_1EC3D3108);
      v75 = sub_1C9A92FA8();
      if (!sub_1C98E59A4(v75))
      {
LABEL_76:

        sub_1C9A924A8();
        sub_1C98E5A30();
        v89 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_1C98E597C();
        swift_willThrow();

        return;
      }

      v76 = sub_1C98E59E0();
      sub_1C98139D4(v76);
      v79 = "Input feature must contain floating point data";
LABEL_75:
      sub_1C98E59C0(&dword_1C9788000, v77, v78, v79);
      sub_1C9887D60();
      goto LABEL_76;
    }

LABEL_87:
    sub_1C97DAA64(&qword_1EC3C5520);
    goto LABEL_61;
  }

  v105 = v50;
  v53 = [v101 outputDescriptionsByName];
  sub_1C9813994();
  v54 = sub_1C9A92328();

  v55 = *(v54 + 16);

  v56 = [v100 outputDescriptionsByName];
  sub_1C9813994();
  sub_1C9A92328();

  sub_1C98E5A50();
  if (v55 != v56)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v80 = sub_1C9A91B58();
    v74 = sub_1C98E5A08(v80, qword_1EC3D3108);
    v81 = sub_1C9A92FA8();
    v13 = v103;
    if (!sub_1C98E59A4(v81))
    {
      goto LABEL_76;
    }

    v82 = sub_1C98E59E0();
    sub_1C98139D4(v82);
    v79 = "Output feature count doesn't match";
    goto LABEL_75;
  }

  v57 = [v101 outputDescriptionsByName];
  sub_1C9A92328();

  sub_1C98E5A50();
  if (v57 != 1)
  {
    v13 = v103;
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v83 = sub_1C9A91B58();
    v74 = sub_1C98E5A08(v83, qword_1EC3D3108);
    v84 = sub_1C9A92FA8();
    if (!sub_1C98E59A4(v84))
    {
      goto LABEL_76;
    }

    v85 = sub_1C98E59E0();
    sub_1C98139D4(v85);
    v79 = "Output feature description has > 1 feature";
    goto LABEL_75;
  }

  v58 = [v101 outputDescriptionsByName];
  v59 = sub_1C9A92328();

  v60 = sub_1C98BBCAC(v59);

  v13 = v103;
  if (!v60 || (v61 = [v60 multiArrayConstraint], v60, !v61))
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v86 = sub_1C9A91B58();
    v74 = sub_1C98E5A08(v86, qword_1EC3D3108);
    v87 = sub_1C9A92FA8();
    if (!sub_1C98E59A4(v87))
    {
      goto LABEL_76;
    }

    v88 = sub_1C98E59E0();
    sub_1C98139D4(v88);
    v79 = "No multi array constraint for output feature";
    goto LABEL_75;
  }

  v62 = [v61 shape];
  v63 = sub_1C9A92798();

  v64 = sub_1C97BDEE0();
  if (v64 < 1)
  {

    v91 = v103;
  }

  else
  {
    v65 = v64;
    v102 = v61;
    v108 = MEMORY[0x1E69E7CC0];
    sub_1C97B7C28(0, v64, 0);
    for (i = 0; i != v65; ++i)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x1CCA912B0](i, v63);
      }

      else
      {
        v67 = *(v63 + 8 * i + 32);
      }

      v68 = v67;
      v69 = [v67 integerValue];

      v71 = *(v108 + 16);
      v70 = *(v108 + 24);
      if (v71 >= v70 >> 1)
      {
        v72 = sub_1C98E59F8(v70);
        sub_1C97B7C28(v72, v71 + 1, 1);
      }

      *(v108 + 16) = v71 + 1;
      *(v108 + 8 * v71 + 32) = v69;
    }

    sub_1C98E3CE0(v108, v105, v90);

    v61 = v102;
    v91 = v103;
  }

  if ([v61 dataType] != 65568)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v92 = sub_1C9A91B58();
    v93 = sub_1C98E5A08(v92, qword_1EC3D3108);
    v94 = sub_1C9A92FA8();
    if (sub_1C98E59A4(v94))
    {
      v95 = sub_1C98E59E0();
      sub_1C98139D4(v95);
      sub_1C98E59C0(&dword_1C9788000, v96, v97, "Output feature must contain floating point data");
      sub_1C9887D60();
    }

    sub_1C9A924A8();
    sub_1C98E5A30();
    v98 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C98E597C();
    swift_willThrow();
  }
}

void sub_1C98E48C4(void *a1, double a2)
{
  v4 = v2;
  if (sub_1C989BF88(a2))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1C98C89D4(33, v6);
  if (v3)
  {

LABEL_7:
    type metadata accessor for SNSoundPrintAFeatureEmbeddingCustomModel(v13);
    swift_deallocPartialClassInstance();
    return;
  }

  v9 = v7;
  type metadata accessor for SNMLModelAdapter(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  type metadata accessor for SNSoundPrintAFeatureEmbeddingCustomModel(v11);
  v12 = [v9 modelDescription];
  sub_1C98E3E18(a1, v12);

  v14 = [a1 outputDescriptionsByName];
  sub_1C97BD318(v15, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v16 = sub_1C9A92328();

  v17 = sub_1C98BBCC4(v16);
  v19 = v18;

  if (!v19)
  {

LABEL_24:
    type metadata accessor for SNError(v44);
    sub_1C98573F8();
    v45 = sub_1C98E5A3C();
    sub_1C9929478(v45, v46, 1, v47, v48, v49);
    swift_willThrow();

    goto LABEL_7;
  }

  v52 = v10;
  v20 = [a1 inputDescriptionsByName];
  v21 = sub_1C9A92328();

  v22 = sub_1C98BBCC4(v21);
  v24 = v23;

  if (!v24)
  {

    goto LABEL_24;
  }

  v25 = &v2[OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_inputFeatureName];
  *v25 = v22;
  v25[1] = v24;
  v26 = &v2[OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_outputFeatureName];
  *v26 = v17;
  v26[1] = v19;

  v27 = [a1 outputDescriptionsByName];
  v28 = sub_1C9A92328();
  v29 = sub_1C98782A4(v17, v19, v28);

  v30 = v52;
  if (!v29)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v31 = [v29 multiArrayConstraint];

  if (v31)
  {

    v32 = [v31 shape];
    sub_1C97BD318(v33, 0, &qword_1EC3C54B0, 0x1E696AD98);
    v34 = sub_1C9A92798();

    v35 = sub_1C97BDEE0();
    v51 = a1;
    if (!v35)
    {

      v38 = MEMORY[0x1E69E7CC0];
LABEL_26:
      *&v4[OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_outputShape] = v38;
      sub_1C98E5858(v30, v51, v4);
      return;
    }

    v36 = v35;
    v50 = v4;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1C97B7C28(0, v35 & ~(v35 >> 63), 0);
    if ((v36 & 0x8000000000000000) == 0)
    {
      v37 = 0;
      v38 = v53;
      do
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x1CCA912B0](v37, v34);
        }

        else
        {
          v39 = *(v34 + 8 * v37 + 32);
        }

        v40 = v39;
        v41 = [v39 integerValue];

        v43 = *(v53 + 16);
        v42 = *(v53 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1C97B7C28(v42 > 1, v43 + 1, 1);
        }

        ++v37;
        *(v53 + 16) = v43 + 1;
        *(v53 + 8 * v43 + 32) = v41;
      }

      while (v36 != v37);

      v4 = v50;
      v30 = v52;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
}

void sub_1C98E4E2C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_autoreleasePoolPush();
  sub_1C98E4EBC(a1, v3, a2, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

void sub_1C98E4EBC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v7 = v5;
  v13 = *(a2 + OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_inputFeatureName);
  v12 = *(a2 + OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_inputFeatureName + 8);
  v14 = sub_1C9A92478();
  v15 = [a1 featureValueForName_];

  if (!v15 || (v16 = [v15 multiArrayValue], v15, !v16))
  {
    v19 = sub_1C9A924A8();
    v21 = v20;
    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v7 = sub_1C9A3B688(v19, v21, 1, 0);
    swift_willThrow();
    goto LABEL_6;
  }

  v58 = a5;
  v17 = sub_1C998D85C(v16);
  sub_1C998FC50(v17, 3);
  if (v5)
  {

LABEL_6:
    *a4 = v7;
    return;
  }

  v55 = v17;
  v57 = a4;
  v56 = v18;
  v23 = [objc_opt_self() featureValueWithMultiArray_];
  sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = v13;
  *(inited + 40) = v12;
  *(inited + 72) = sub_1C97BD318(COERCE_DOUBLE(1), 0, &qword_1EC3C54F8, 0x1E695FE60);
  *(inited + 48) = v23;

  v25 = v23;
  v26 = sub_1C9A92348();
  v27 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v28 = sub_1C98B6EC8(v26);
  v29 = sub_1C98E3794(v28, a3);
  v54 = v28;

  v30 = *(a2 + OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_outputFeatureName);
  v31 = *(a2 + OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_outputFeatureName + 8);
  v32 = sub_1C9A92478();
  v33 = [v29 featureValueForName_];

  if (v33)
  {
    v34 = swift_allocObject();
    v35 = [v33 multiArrayValue];

    v34[2] = v35;
    if (!v35)
    {
      v43 = sub_1C9A924A8();
      v45 = v44;
      v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v7 = sub_1C9A3B688(v43, v45, 0, 0);
      swift_willThrow();

      swift_unknownObjectRelease();

      a4 = v57;
      goto LABEL_6;
    }

    v53 = v25;
    v36 = *(a2 + OBJC_IVAR____SNSoundPrintAFeatureEmbeddingCustomModel_outputShape);
    v37 = sub_1C9A92768();
    v38 = sub_1C998D6A4(v37);

    v39 = v34[2];
    if (v39)
    {
      v40 = [v39 dataPointer];
      v41 = sub_1C97E9580(v36);
      objc_allocWithZone(MEMORY[0x1E695FED0]);

      v47 = sub_1C9990C04(v40, v41, 65568, v42, v38, sub_1C98E56F4, v34);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_1C9A9EDD0;
      *(v48 + 32) = v30;
      *(v48 + 40) = v31;
      *(v48 + 72) = sub_1C97BD318(COERCE_DOUBLE(1), 0, &unk_1EC3C5500, 0x1E695FED0);
      *(v48 + 48) = v47;

      v49 = v47;
      v50 = sub_1C9A92348();
      v51 = objc_allocWithZone(MEMORY[0x1E695FE48]);
      v52 = sub_1C98B6EC8(v50);

      swift_unknownObjectRelease();

      *v58 = v52;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C98E5480(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;
}

id sub_1C98E54E0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, id))
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a1;
  v12 = a6(a3, v10);

  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_1C98E55C4()
{
}

id sub_1C98E5634(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1C98E56FC(uint64_t a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_modelDescription] = a2;
  v6 = &a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_model];
  *v6 = a1;
  *(v6 + 1) = &off_1F4937390;
  v7 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  v10 = a2;

  v11 = v9(ObjectType, v7);
  v12 = sub_1C97FD440(v10, v11);

  if (v12)
  {
    *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerInputFeatureNameMappings] = v12;
    v13 = *(a1 + 24);
    v14 = swift_getObjectType();
    v15 = (*(v13 + 16))(v14, v13);
    v16 = sub_1C97FD44C(v10, v15);

    if (v16)
    {
      *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerOutputFeatureNameMappings] = v16;
      v18.receiver = a3;
      v18.super_class = type metadata accessor for SNSoundPrintFeatureEmbeddingCustomModel(v17);
      objc_msgSendSuper2(&v18, sel_init);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C98E5858(uint64_t a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_modelDescription] = a2;
  v5 = &a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_model];
  *v5 = a1;
  *(v5 + 1) = &off_1F4937370;
  v6 = *(a1 + 16);
  v7 = a2;

  v8 = [v6 modelDescription];
  v9 = sub_1C97FD440(v7, v8);

  if (v9)
  {
    *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerInputFeatureNameMappings] = v9;
    v10 = [*(a1 + 16) modelDescription];
    v11 = sub_1C97FD44C(v7, v10);

    if (v11)
    {
      *&a3[OBJC_IVAR____SNSoundPrintFeatureEmbeddingCustomModel_outerToInnerOutputFeatureNameMappings] = v11;
      v13.receiver = a3;
      v13.super_class = type metadata accessor for SNSoundPrintFeatureEmbeddingCustomModel(v12);
      objc_msgSendSuper2(&v13, sel_init);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1C98E597C()
{

  return sub_1C9A3B688(v0, v1, 0, 0);
}

BOOL sub_1C98E59A4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1C98E59C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1C98E59E0()
{

  return swift_slowAlloc();
}

uint64_t sub_1C98E5A08(uint64_t a1, uint64_t a2)
{
  sub_1C97BFF6C(a1, a2);

  return sub_1C9A91B38();
}

uint64_t sub_1C98E5A50()
{
}

id static SystemUtils.queryXCapability()()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    return exclaveCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemUtils(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C98E5B58(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C97DA5D0;

  return v8(a1, a2);
}

uint64_t sub_1C98E5C5C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_1C98E5DB4(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for TrampolineXPCListenerDelegate(a4);
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC13SoundAnalysis29TrampolineXPCListenerDelegate_listenerShouldAcceptNewConnectionFn];
  *v9 = a2;
  *(v9 + 1) = a3;
  v13.receiver = v8;
  v13.super_class = v7;

  v10 = objc_msgSendSuper2(&v13, sel_init);
  [a1 setDelegate_];
  [a1 resume];
  v11 = a1;
  return a1;
}

uint64_t sub_1C98E5E6C(void *a1, uint64_t (*a2)(void *, void *, uint64_t), uint64_t a3, double a4)
{
  v19[3] = sub_1C98E7D4C(a4);
  v19[4] = &off_1F4937A48;
  v19[0] = a1;
  v6 = a1;
  v7 = sub_1C99A7FC0(v19, 0xD00000000000002BLL, 0x80000001C9AD88E0);
  if (v7 == 2)
  {
    sub_1C97A592C(v19);
  }

  else
  {
    sub_1C97A592C(v19);
    if (v7)
    {
      sub_1C98E61C0(v6, a2);
      v12 = 1;
      goto LABEL_8;
    }
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v8 = sub_1C9A91B58();
  sub_1C97BFF6C(v8, qword_1EC3D3108);
  v9 = sub_1C9A91B38();
  v10 = sub_1C9A92FA8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C9788000, v9, v10, "Client rejected due to insufficient entitlements.", v11, 2u);
    sub_1C9840CEC();
  }

  v12 = 0;
LABEL_8:
  [v6 resume];
  v13 = [v6 processIdentifier];
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v14 = sub_1C9A91B58();
  sub_1C97BFF6C(v14, qword_1EC3D3108);
  v15 = sub_1C9A91B38();
  v16 = sub_1C9A92FC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 4) = v13;
    *(v17 + 8) = 1024;
    *(v17 + 10) = v12;
    _os_log_impl(&dword_1C9788000, v15, v16, "  Client with PID %d attempted to connect.   Accepted? %{BOOL}d", v17, 0xEu);
    sub_1C9840CEC();
  }

  return v12;
}

void sub_1C98E61C0(void *a1, uint64_t (*a2)(void *, void *, uint64_t))
{
  sub_1C97A2CEC(&qword_1EC3CBDA8, &qword_1C9AB0E40);
  swift_allocObject();
  v5 = sub_1C982D06C();
  v6 = [a1 processIdentifier];
  sub_1C97AA878();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v34 = sub_1C98E7F80;
  v35 = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E5C5C;
  v33 = &unk_1F493C190;
  v8 = _Block_copy(aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  v33 = sub_1C98E7D4C(v10);
  v34 = &off_1F4937A48;
  aBlock[0] = a1;

  v11 = a1;
  v12 = a2(aBlock, &unk_1C9AB0E80, v9);
  if (v2)
  {

    sub_1C97A592C(aBlock);
  }

  else
  {
    v14 = v12;
    v15 = v13;
    sub_1C97A592C(aBlock);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = &unk_1C9AB0E80;
    v16[5] = v9;
    sub_1C97AA878();
    v17 = swift_allocObject();
    *(v17 + 16) = &unk_1C9AB0E90;
    *(v17 + 24) = v16;

    sub_1C97A7E30(&unk_1C9AB0EA0, v17, &unk_1C9AB0E80, v9, v18);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v36 = v25;

    if (qword_1EC3C5D80 != -1)
    {
      swift_once();
    }

    [v11 setExportedInterface_];
    v27 = type metadata accessor for XPCProxyXPCHost(v26);
    v28 = objc_allocWithZone(v27);
    v29 = &v28[OBJC_IVAR____TtC13SoundAnalysis15XPCProxyXPCHost_hosted];
    *v29 = v20;
    *(v29 + 1) = v36;
    *(v29 + 2) = v22;
    *(v29 + 3) = v24;
    v31.receiver = v28;
    v31.super_class = v27;

    v30 = objc_msgSendSuper2(&v31, sel_init);
    [v11 setExportedObject_];
  }
}

uint64_t sub_1C98E6568()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97D9C3C;

  return sub_1C985E490();
}

void *sub_1C98E6618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97D9AF8(a1, v10);
  sub_1C98137F8();
  v5 = swift_allocObject();
  sub_1C979B054(v10, v5 + 16);
  sub_1C97A2CEC(&qword_1EC3C97B8, &unk_1C9ACFA10);
  v6 = swift_allocObject();
  *(v6 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&unk_1EC3CBDC0, &qword_1C9AB0EB0);
  sub_1C97AA878();
  swift_allocObject();
  v7 = sub_1C9A37FC8();
  sub_1C98137F8();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C98E8178;
  *(v8 + 24) = v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = v7;
  *(v8 + 48) = a4;

  return &unk_1C9AB0EC0;
}

uint64_t sub_1C98E6748(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  sub_1C97A5A8C(a3, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

void sub_1C98E67C8(int a1)
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v2 = sub_1C9A91B58();
  sub_1C97BFF6C(v2, qword_1EC3D3108);
  v3 = sub_1C9A91B38();
  v4 = sub_1C9A92FC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1C9788000, v3, v4, "Invalidation handler called for connection to PID %d", v5, 8u);
    MEMORY[0x1CCA93280](v5, -1, -1);
  }

  type metadata accessor for SNError(v6);
  v7 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0x697463656E6E6F63, 0xEF74736F6C206E6FLL);
  sub_1C9829A5C(v7);
}

uint64_t sub_1C98E6944(uint64_t a1, int a2)
{
  *(v2 + 32) = a2;
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1C98E69EC;

  return sub_1C982A5B4();
}

uint64_t sub_1C98E69EC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  *(v1 + 24) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C98E6AE4, 0, 0);
}

uint64_t sub_1C98E6AE4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v3 = sub_1C9A91B58();
    sub_1C97BFF6C(v3, qword_1EC3D3108);
    v4 = v1;
    v5 = sub_1C9A91B38();
    v6 = sub_1C9A92FC8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 67109378;
      *(v8 + 4) = v7;
      *(v8 + 8) = 2112;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 10) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1C9788000, v5, v6, "Connection state invalidated for client with PID %d; error: %@", v8, 0x12u);
      sub_1C97BFFA4(v9);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    else
    {
    }
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 24);

  return v12(v13);
}

uint64_t sub_1C98E6C74(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a1;
  v10 = a3 + *a3;
  v8 = swift_task_alloc();
  v6[16] = v8;
  *v8 = v6;
  v8[1] = sub_1C98E6D78;

  return (v10)(v6 + 8, a2);
}

uint64_t sub_1C98E6D78()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 136) = v0;

  if (v0)
  {
    v5 = sub_1C98E6F48;
  }

  else
  {
    v5 = sub_1C98E6E7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C98E6E7C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_1C97A5A8C((v0 + 64), v4);
  sub_1C99DC400(v2, v3, v4, v5, (v0 + 16), v6);
  if (!v1)
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 16);
    v10 = *(v0 + 48);
    v8[1] = *(v0 + 32);
    v8[2] = v10;
    *v8 = v9;
  }

  sub_1C97A592C((v0 + 64));
  sub_1C97DA91C();

  return v7();
}

uint64_t sub_1C98E6F6C()
{
  sub_1C97AA878();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001C9AD6F00;
  type metadata accessor for AnalysisClientUtils.RegenerativeConnection(v1);
  v2 = swift_allocObject();
  result = sub_1C98E7540();
  qword_1EC3D31F8 = v2;
  return result;
}

id sub_1C98E6FF0(uint64_t a1, uint64_t a2)
{

  result = sub_1C98E7038(a1, a2);
  if (v2)
  {
    return v6;
  }

  return result;
}

id sub_1C98E7038(uint64_t a1, uint64_t a2)
{
  sub_1C97A2CEC(&qword_1EC3CBDA8, &qword_1C9AB0E40);
  swift_allocObject();

  v4 = sub_1C982D06C();
  sub_1C98E7D4C(v5);

  v6 = sub_1C98E7284(a1, a2, 4096);
  v14 = sub_1C98E7D44;
  v15 = v4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C98E5C5C;
  v13 = &unk_1F493C0C8;
  v7 = _Block_copy(&v10);

  [v6 setInterruptionHandler_];
  _Block_release(v7);
  v14 = sub_1C98E7D44;
  v15 = v4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C98E5C5C;
  v13 = &unk_1F493C0F0;
  v8 = _Block_copy(&v10);

  [v6 setInvalidationHandler_];
  _Block_release(v8);
  [v6 resume];

  if (qword_1EC3C5D80 != -1)
  {
    swift_once();
  }

  [v6 setRemoteObjectInterface_];
  swift_bridgeObjectRelease_n();
  return v6;
}

id sub_1C98E7284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C9A92478();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_1C98E7300(double a1)
{
  type metadata accessor for SNError(a1);
  v1 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0x697463656E6E6F63, 0xEF74736F6C206E6FLL);
  sub_1C9829A5C(v1);
}

uint64_t sub_1C98E73B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C98E7454;

  return sub_1C982A5B4();
}

uint64_t sub_1C98E7454()
{
  sub_1C97AA884();
  v2 = v1;
  sub_1C97AA890();
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1C98E7540()
{
  sub_1C981E1EC();
  swift_defaultActor_initialize();
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return v1;
}

void *sub_1C98E7580()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = v1;

    [v2 invalidate];
  }

  if (*(v0 + 152))
  {

    sub_1C9A92A28();
  }

  sub_1C98E8250();
  *(v0 + 152) = 0;

  sub_1C98E7F00(*(v0 + 128), *(v0 + 136), *(v0 + 144));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C98E7650()
{
  sub_1C98E7580();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C98E76A0()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = v1;

    [v2 invalidate];
  }

  if (*(v0 + 152))
  {

    sub_1C9A92A28();
  }

  sub_1C98E8250();
  *(v0 + 152) = 0;
}

uint64_t sub_1C98E7754()
{
  sub_1C97AA884();
  *(v1 + 16) = v0;
  sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C98E77EC, v0, 0);
}

uint64_t sub_1C98E77EC()
{
  v1 = v0[2];
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  if (v2)
  {
    v5 = *(v1 + 128);
    v6 = *(v1 + 136);
    v7 = *(v1 + 144);
  }

  else
  {
    v10 = (*(v1 + 112))();
    v11 = v0[3];
    v12 = v10;
    v6 = v13;
    v7 = v14;
    v24 = v0[2];
    v15 = sub_1C9A92988();
    sub_1C97ACC50(v11, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v12;
    v17[5] = v6;
    v17[6] = v7;
    v17[7] = v16;
    v18 = v12;
    swift_retain_n();
    v5 = v18;
    sub_1C99A9128();
    v20 = v19;
    v21 = *(v1 + 128);
    v22 = *(v1 + 136);
    v23 = *(v1 + 144);
    *(v1 + 128) = v5;
    *(v1 + 136) = v6;
    *(v1 + 144) = v7;
    sub_1C98E7F00(v21, v22, v23);
    *(v24 + 152) = v20;
  }

  sub_1C98E7F40(v2, v3, v4);

  v8 = v0[1];

  return v8(v5, v6, v7);
}

uint64_t sub_1C98E7A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v7 + 48) = v8;
  *v8 = v7;
  v8[1] = sub_1C98E7AFC;

  return v10();
}

uint64_t sub_1C98E7AFC()
{
  sub_1C97AA884();
  v2 = v1;
  sub_1C97AA890();
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C98E7BF4, 0, 0);
}

uint64_t sub_1C98E7BF4()
{
  sub_1C97AA884();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C98E7CA4, Strong, 0);
  }

  else
  {
    sub_1C97DA91C();

    return v2();
  }
}

uint64_t sub_1C98E7CA4()
{
  sub_1C97AA884();
  sub_1C98E76A0();

  sub_1C97DA91C();

  return v0();
}

unint64_t sub_1C98E7D4C(double a1)
{
  result = qword_1EC3CBDB0;
  if (!qword_1EC3CBDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CBDB0);
  }

  return result;
}

uint64_t sub_1C98E7D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C98E7DA8()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C98E7454;

  return sub_1C98E73B0();
}

uint64_t sub_1C98E7E34(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = sub_1C97AA858(v9);
  *v10 = v11;
  v10[1] = sub_1C97D9C3C;

  return sub_1C98E7A10(a1, v3, v4, v5, v6, v8, v7);
}

void *sub_1C98E7F00(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void *sub_1C98E7F40(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
  }

  return result;
}

uint64_t sub_1C98E7F8C()
{
  sub_1C97AA884();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C98E8234;

  return sub_1C98E6944(v2, v3);
}

uint64_t sub_1C98E8024()
{
  sub_1C981E1EC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1C97AA858(v5);
  *v6 = v7;
  v6[1] = sub_1C97D9C3C;
  v8 = sub_1C98E8240();

  return sub_1C98E6C74(v8, v9, v1, v2, v4, v3);
}

uint64_t sub_1C98E80D8()
{
  sub_1C981E1EC();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v3[1] = sub_1C97DA5D0;
  v5 = sub_1C98E8240();

  return sub_1C98E5B58(v5, v6, v1);
}

uint64_t sub_1C98E8194()
{
  sub_1C981E1EC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C98E8240();

  return sub_1C98E6568();
}

void *sub_1C98E8250()
{
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;

  return sub_1C98E7F00(v3, v4, v5);
}

double SNShazamSignatureResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNShazamSignatureResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNShazamSignatureResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNShazamSignatureResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C98E8394@<D0>(_OWORD *a1@<X8>)
{
  SNShazamSignatureResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNShazamSignatureResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNShazamSignatureResult.timeRange.getter((v3 + 1));
  return sub_1C98E843C;
}

void sub_1C98E843C(void **a1)
{
  v1 = *a1;
  SNShazamSignatureResult.timeRange.setter(*a1 + 8);

  free(v1);
}

void (*SNShazamSignatureResult.signature.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR___SNShazamSignatureResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2 + 48);
  *a1 = v3;
  v4 = v3;
  return sub_1C98E85C0;
}

void sub_1C98E85C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + a1[2];
  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
}

uint64_t (*SNShazamSignatureResult.sequenceNum.modify(void *a1))()
{
  v2 = OBJC_IVAR___SNShazamSignatureResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 56);
  return sub_1C98E8684;
}

id sub_1C98E8698(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  [a1 copy];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C98E9268(v7);
  if (swift_dynamicCast())
  {
    v8 = v19;
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v9 = sub_1C9A91B58();
    sub_1C97BFF6C(v9, qword_1EC3D3108);
    v10 = sub_1C9A91B38();
    v11 = sub_1C9A92FA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C9788000, v10, v11, "Failed to copy Shazam signature", v12, 2u);
      MEMORY[0x1CCA93280](v12, -1, -1);
    }

    v8 = a1;
  }

  v13 = MEMORY[0x1E6960C98];
  v14 = *(MEMORY[0x1E6960C98] + 40);
  v15 = &v3[OBJC_IVAR___SNShazamSignatureResult_impl];
  *v15 = *MEMORY[0x1E6960C98];
  *(v15 + 1) = *(v13 + 8);
  *(v15 + 1) = *(v13 + 16);
  *(v15 + 4) = *(v13 + 32);
  *(v15 + 5) = v14;
  *(v15 + 6) = v8;
  *(v15 + 7) = a2;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

void *SNShazamSignatureResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C9841D88(OBJC_IVAR___SNShazamSignatureResult_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNShazamSignatureResult_impl];
  v6 = v12[3];
  v8 = v12[0];
  v7 = v12[1];
  *(v5 + 2) = v12[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_1C97A64A0(v12, v11);
  v10.receiver = v4;
  v10.super_class = ObjectType;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNShazamSignatureResult.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNShazamSignatureResult_impl + 16);
  v7 = *(v0 + OBJC_IVAR___SNShazamSignatureResult_impl);
  v8 = v1;
  v2 = *(v0 + OBJC_IVAR___SNShazamSignatureResult_impl + 48);
  v9 = *(v0 + OBJC_IVAR___SNShazamSignatureResult_impl + 32);
  v10 = v2;
  sub_1C9A93CC8();
  v3 = v10;
  MEMORY[0x1CCA919B0](v7);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v8);
  MEMORY[0x1CCA919B0](*(&v8 + 1));
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](*(&v9 + 1));
  sub_1C97A64A0(&v7, v6);
  MEMORY[0x1CCA91980]([v3 hash]);
  MEMORY[0x1CCA919B0](*(&v3 + 1));
  v4 = sub_1C9A93D18();
  sub_1C98E91D8(&v7);
  return v4;
}

BOOL SNShazamSignatureResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v18);
  if (v19)
  {
    sub_1C97A2D34(&v18, v17);
    sub_1C97BD360(v17, v16);
    if (swift_dynamicCast())
    {
      v3 = v15;
      v4 = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl + 16);
      v14[0] = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl);
      v14[1] = v4;
      v14[2] = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl + 32);
      v5 = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl + 48);
      v6 = *(v1 + OBJC_IVAR___SNShazamSignatureResult_impl + 56);
      v7 = *&v15[OBJC_IVAR___SNShazamSignatureResult_impl + 16];
      v13[0] = *&v15[OBJC_IVAR___SNShazamSignatureResult_impl];
      v13[1] = v7;
      v13[2] = *&v15[OBJC_IVAR___SNShazamSignatureResult_impl + 32];
      v8 = *&v15[OBJC_IVAR___SNShazamSignatureResult_impl + 48];
      v9 = *&v15[OBJC_IVAR___SNShazamSignatureResult_impl + 56];
      if (static TimeRange.== infix(_:_:)(v14, v13))
      {
        v10 = [v5 isEqual_];

        if (v10)
        {
          v11 = v6 == v9;
LABEL_9:
          sub_1C97A592C(v17);
          return v11;
        }
      }

      else
      {
      }
    }

    v11 = 0;
    goto LABEL_9;
  }

  return 0;
}

id SNShazamSignatureResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A1D2C(1819307369, 0xE400000000000000);
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNShazamSignatureResult_impl];
  v5 = v12;
  *v4 = v11;
  *(v4 + 1) = v5;
  v6 = v14;
  *(v4 + 2) = v13;
  *(v4 + 3) = v6;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_init);

  v8 = swift_getObjectType();
  sub_1C9841DA0(v8);
  return v7;
}

Swift::Void __swiftcall SNShazamSignatureResult.encode(with:)(NSCoder with)
{
  sub_1C9841D88(OBJC_IVAR___SNShazamSignatureResult_impl);
  sub_1C97A64A0(v3, v2);
  sub_1C979FB24(v3, 1819307369, 0xE400000000000000, with.super.isa);
  sub_1C98E91D8(v3);
}

uint64_t SNShazamSignatureResult.description.getter()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v20, sel_description);
  v3 = sub_1C9A924A8();
  v5 = v4;

  v21 = v3;
  v22 = v5;
  MEMORY[0x1CCA90230](8236, 0xE200000000000000);
  v6 = &v1[OBJC_IVAR___SNShazamSignatureResult_impl];
  v7 = [*&v1[OBJC_IVAR___SNShazamSignatureResult_impl + 48] description];
  v8 = sub_1C9A924A8();
  v10 = v9;

  MEMORY[0x1CCA90230](v8, v10);

  MEMORY[0x1CCA90230](8236, 0xE200000000000000);
  *&v23[0] = *(v6 + 7);
  v11 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v11);

  MEMORY[0x1CCA90230](8238, 0xE200000000000000);
  SNShazamSignatureResult.timeRange.getter(v23);
  v12 = objc_opt_self();
  v19[0] = v23[0];
  v19[1] = v23[1];
  v19[2] = v23[2];
  v13 = [v12 valueWithCMTimeRange_];
  v14 = [v13 description];
  v15 = sub_1C9A924A8();
  v17 = v16;

  MEMORY[0x1CCA90230](v15, v17);

  return v21;
}

id SNShazamSignatureResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNShazamSignatureResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C98E9194@<D0>(_OWORD *a1@<X8>)
{
  SNShazamSignatureResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C98E9268(double a1)
{
  result = qword_1EC3CBDD8;
  if (!qword_1EC3CBDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CBDD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CInteropUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98E938C()
{
  result = qword_1EC3CBDE0;
  if (!qword_1EC3CBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBDE0);
  }

  return result;
}

BOOL static SNAOPReport.SuccessPayload.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AOPClassificationResult(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  type metadata accessor for SNAOPReport.SuccessPayload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98435A0();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CBDE8, &qword_1C9AB0FE0);
  sub_1C97DACE4(v16);
  sub_1C97ABFF0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  v21 = *(v18 + 56);
  sub_1C98ED0E8(a1, &v32 - v19);
  sub_1C98ED0E8(a2, &v20[v21]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C98EE594();
    v23 = sub_1C98EE6C0();
    sub_1C98ED0E8(v23, v24);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C98EE690();
      sub_1C98ECDB4(&v20[v21], v8);
      if (sub_1C9A916B8() & 1) != 0 && (sub_1C9A916B8())
      {
        sub_1C9845534(*&v15[*(v4 + 24)], *(v8 + *(v4 + 24)));
        if (v26)
        {
          sub_1C98EE6A8();
          sub_1C98E96C8(v8, v27);
          sub_1C98E96C8(v15, v4);
          sub_1C98EE564();
          sub_1C98E96C8(v20, v28);
          return 1;
        }
      }

      sub_1C98EE6A8();
      sub_1C98E96C8(v8, v29);
      sub_1C98E96C8(v15, v4);
      sub_1C98EE564();
      sub_1C98E96C8(v20, v30);
      return 0;
    }

    sub_1C98EE5C4();
    sub_1C98E96C8(v15, v25);
LABEL_6:
    sub_1C97DA1E0(v20, &qword_1EC3CBDE8, &qword_1C9AB0FE0);
    return 0;
  }

  sub_1C98EE594();
  sub_1C98ED0E8(v20, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_6;
  }

  v22 = *v12 == *&v20[v21];
  sub_1C98E96C8(v20, type metadata accessor for SNAOPReport.SuccessPayload);
  return v22;
}

uint64_t sub_1C98E96C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C98E9720(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6966697373616C63 && a2 == 0xEF736E6F69746163;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C9AD89B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C98E97F8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6966697373616C63;
  }
}

uint64_t sub_1C98E9840(uint64_t a1)
{
  v2 = sub_1C98E9E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98E987C(uint64_t a1)
{
  v2 = sub_1C98E9E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98E98D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98E9720(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98E9900(uint64_t a1)
{
  v2 = sub_1C98E9D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98E993C(uint64_t a1)
{
  v2 = sub_1C98E9D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98E9978(uint64_t a1)
{
  v2 = sub_1C98E9D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98E99B4(uint64_t a1)
{
  v2 = sub_1C98E9D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SNAOPReport.SuccessPayload.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v26;
  a23 = v27;
  v55 = v23;
  v29 = v28;
  sub_1C97A2CEC(&qword_1EC3CBDF0, &qword_1C9AB0FE8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CBDF8, &qword_1C9AB0FF0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C98EE6CC(v32, v54);
  type metadata accessor for AOPClassificationResult(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AEAD8();
  v34 = sub_1C98EE728();
  type metadata accessor for SNAOPReport.SuccessPayload(v34);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AEAD8();
  sub_1C98EE788();
  sub_1C97A2CEC(&qword_1EC3CBE00, &qword_1C9AB0FF8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97E86E4();
  sub_1C97BE20C(v29, v29[3]);
  v37 = sub_1C98E9D40();
  sub_1C98EE7FC(&type metadata for SNAOPReport.SuccessPayload.CodingKeys, v38, v37);
  sub_1C98EE594();
  sub_1C98ED0E8(v55, v24);
  sub_1C97AEB30();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a13 = 1;
    v39 = sub_1C98E9D94();
    sub_1C98EE6EC(&type metadata for SNAOPReport.SuccessPayload.NewDataAvailableCodingKeys, &a13, v40, v41, v39);
    sub_1C98E9DE8();
    sub_1C9A93A18();
    v42 = sub_1C98EE738();
    v43(v42);
  }

  else
  {
    sub_1C98ECDB4(v24, v25);
    a12 = 0;
    v44 = sub_1C98E9E3C();
    sub_1C98EE6EC(&type metadata for SNAOPReport.SuccessPayload.ClassificationsCodingKeys, &a12, v45, v46, v44);
    sub_1C98EE678();
    sub_1C98EC018(v47, v48, &protocol conformance descriptor for AOPClassificationResult);
    sub_1C9A93A18();
    v49 = sub_1C98EE738();
    v50(v49);
    sub_1C98EE5C4();
    sub_1C98E96C8(v25, v51);
  }

  v52 = sub_1C98EE718();
  v53(v52);
  sub_1C97AEB5C();
}

unint64_t sub_1C98E9D40()
{
  result = qword_1EC3CBE08;
  if (!qword_1EC3CBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE08);
  }

  return result;
}

unint64_t sub_1C98E9D94()
{
  result = qword_1EC3CBE10;
  if (!qword_1EC3CBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE10);
  }

  return result;
}

unint64_t sub_1C98E9DE8()
{
  result = qword_1EC3CBE18;
  if (!qword_1EC3CBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE18);
  }

  return result;
}

unint64_t sub_1C98E9E3C()
{
  result = qword_1EC3CBE20;
  if (!qword_1EC3CBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE20);
  }

  return result;
}

uint64_t SNAOPReport.SuccessPayload.hash(into:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for AOPClassificationResult(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  sub_1C98EE788();
  type metadata accessor for SNAOPReport.SuccessPayload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  sub_1C98EE594();
  sub_1C98ED0E8(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x1CCA91980](1);
    return sub_1C9A93CF8();
  }

  else
  {
    sub_1C98EE690();
    sub_1C98ECDB4(v10, v2);
    MEMORY[0x1CCA91980](0);
    sub_1C9A916E8();
    sub_1C98EE534();
    sub_1C98EC018(v12, v13, MEMORY[0x1E6969540]);
    sub_1C9A92398();
    sub_1C9A92398();
    sub_1C984A234(a1, *(v2 + *(v5 + 24)));
    sub_1C98EE5C4();
    return sub_1C98E96C8(v2, v14);
  }
}

void SNAOPReport.SuccessPayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v23;
  a20 = v24;
  v104 = v21;
  v26 = v25;
  v95 = v27;
  v96 = sub_1C97A2CEC(&qword_1EC3CBE30, &qword_1C9AB1000);
  sub_1C97AE9C8();
  v101 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97AC02C();
  v100 = v30;
  sub_1C97A2CEC(&qword_1EC3CBE38, &qword_1C9AB1008);
  sub_1C97AE9C8();
  v97 = v32;
  v98 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  v99 = v34;
  sub_1C97A2CEC(&qword_1EC3CBE40, &unk_1C9AB1010);
  sub_1C97AE9C8();
  v102 = v36;
  v103 = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  v38 = sub_1C98EE7B4();
  v39 = type metadata accessor for SNAOPReport.SuccessPayload(v38);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C98435A0();
  v43 = (v41 - v42);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C98EE7C8();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v89 - v46;
  v48 = v26[3];
  sub_1C97BE20C(v26, v48);
  sub_1C98E9D40();
  v49 = v104;
  sub_1C9A93DB8();
  if (!v49)
  {
    v92 = v20;
    v93 = v43;
    v91 = v47;
    v94 = v39;
    v104 = v26;
    v50 = v103;
    v51 = sub_1C9A93958();
    sub_1C98ECCE8(v51, 0);
    v53 = v52;
    if (v55 != v54 >> 1)
    {
      sub_1C98EE770();
      if (v60 == v61)
      {
        __break(1u);
        return;
      }

      v90 = *(v59 + v57);
      sub_1C98ECC6C(v57 + 1, v56, v53, v59, v57, v58);
      sub_1C98EE7DC();
      v62 = v93;
      if (!v48)
      {
        if (v90)
        {
          HIBYTE(a10) = 1;
          sub_1C98E9D94();
          sub_1C98EE614(&type metadata for SNAOPReport.SuccessPayload.NewDataAvailableCodingKeys, &a10 + 7);
          v63 = sub_1C98ECD60();
          sub_1C98EE85C(&type metadata for SNAOPReport.AOPNewDataAvailable, v64, v65, v66, v63);
          swift_unknownObjectRelease();
          v79 = sub_1C98EE6C0();
          v80(v79);
          v81 = sub_1C98715A4();
          v82(v81);
          *v62 = a10;
          swift_storeEnumTagMultiPayload();
          sub_1C98EE54C();
          v83 = v62;
        }

        else
        {
          BYTE6(a10) = 0;
          sub_1C98E9E3C();
          sub_1C98EE614(&type metadata for SNAOPReport.SuccessPayload.ClassificationsCodingKeys, &a10 + 6);
          v71 = type metadata accessor for AOPClassificationResult(0);
          sub_1C98EE678();
          v74 = sub_1C98EC018(v72, v73, &protocol conformance descriptor for AOPClassificationResult);
          v75 = v92;
          sub_1C98EE83C(v71, v76, v77, v78, v74);
          swift_unknownObjectRelease();
          v84 = sub_1C98EE6C0();
          v85(v84);
          v86 = sub_1C97A7890();
          v87(v86);
          swift_storeEnumTagMultiPayload();
          sub_1C98EE54C();
          v83 = v75;
        }

        v88 = v91;
        sub_1C98ECDB4(v83, v91);
        sub_1C98EE54C();
        sub_1C98ECDB4(v88, v95);
        v70 = v104;
        goto LABEL_10;
      }
    }

    v67 = sub_1C9A93648();
    swift_allocError();
    v69 = v68;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    sub_1C98EE81C();
    sub_1C98EE748();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69E6AF8], v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v102 + 8))(v22, v50);
    v26 = v104;
  }

  v70 = v26;
LABEL_10:
  sub_1C97A592C(v70);
  sub_1C97AEB5C();
}

BOOL sub_1C98EA5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SNAOPReport.SuccessPayload(0);
  v5 = sub_1C97DACE4(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  type metadata accessor for SNAOPReport.Payload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98435A0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CC050, &unk_1C9AB1A90);
  sub_1C97DACE4(v16);
  sub_1C97ABFF0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  v21 = &v29 + *(v18 + 56) - v19;
  sub_1C98ED0E8(a1, &v29 - v19);
  sub_1C98ED0E8(a2, v21);
  sub_1C98EE6C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C98EE57C();
    sub_1C98ED0E8(v20, v12);
    v23 = *(v12 + 8);
    v22 = *(v12 + 16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v12 == *v21)
      {
        if (v23 == *(v21 + 1) && v22 == *(v21 + 2))
        {

LABEL_20:
          sub_1C98EE5DC();
          return 1;
        }

        v25 = sub_1C9A93B18();

        if (v25)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      sub_1C98EE5DC();
      return 0;
    }

LABEL_13:
    sub_1C97DA1E0(v20, &qword_1EC3CC050, &unk_1C9AB1A90);
    return 0;
  }

  sub_1C98EE57C();
  sub_1C98ED0E8(v20, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C98EE564();
    sub_1C98E96C8(v15, v26);
    goto LABEL_13;
  }

  sub_1C98EE54C();
  sub_1C98ECDB4(v21, v8);
  v27 = static SNAOPReport.SuccessPayload.== infix(_:_:)(v15, v8);
  sub_1C98E96C8(v8, type metadata accessor for SNAOPReport.SuccessPayload);
  sub_1C98E96C8(v15, type metadata accessor for SNAOPReport.SuccessPayload);
  sub_1C98EE5DC();
  return v27;
}

uint64_t sub_1C98EA878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C98EA948(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

void sub_1C98EA978()
{
  sub_1C97AEB94();
  v32 = v0;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CBFB8, &qword_1C9AB1A48);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98EE6CC(v6, v31);
  sub_1C97A2CEC(&qword_1EC3CBFC0, &qword_1C9AB1A50);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  type metadata accessor for SNAOPReport.SuccessPayload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v9 = sub_1C98EE728();
  type metadata accessor for SNAOPReport.Payload(v9);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  sub_1C98EE788();
  sub_1C97A2CEC(&qword_1EC3CBFC8, &qword_1C9AB1A58);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97E86E4();
  sub_1C97BE20C(v4, v4[3]);
  v12 = sub_1C98EDC5C();
  sub_1C98EE7FC(&type metadata for SNAOPReport.Payload.CodingKeys, v13, v12);
  sub_1C98EE57C();
  sub_1C98ED0E8(v32, v1);
  sub_1C97AEB30();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v1;
    v16 = *(v1 + 8);
    v15 = *(v1 + 16);
    sub_1C98EDCB0();
    sub_1C9A93988();
    v33 = v14;
    v34 = v16;
    v35 = v15;
    sub_1C98EDD04();
    sub_1C9A93A18();
    v17 = sub_1C98715A4();
    v18(v17);
    v19 = sub_1C98EE718();
    v20(v19);
  }

  else
  {
    sub_1C98ECDB4(v1, v2);
    LOBYTE(v33) = 0;
    v21 = sub_1C98EDD58();
    sub_1C98EE6EC(&type metadata for SNAOPReport.Payload.SuccessCodingKeys, &v33, v22, v23, v21);
    sub_1C98EE660();
    sub_1C98EC018(v24, v25, &protocol conformance descriptor for SNAOPReport.SuccessPayload);
    sub_1C9A93A18();
    v26 = sub_1C98EE738();
    v27(v26);
    sub_1C98EE564();
    sub_1C98E96C8(v2, v28);
    v29 = sub_1C98EE718();
    v30(v29);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98EAD00()
{
  v1 = sub_1C98EE70C();
  v2 = type metadata accessor for SNAOPReport.SuccessPayload(v1);
  v3 = sub_1C97DACE4(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  type metadata accessor for SNAOPReport.Payload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  sub_1C98EE57C();
  sub_1C98ED0E8(v0, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x1CCA91980](1);
    sub_1C9A93CF8();
    sub_1C9A92528();
  }

  else
  {
    sub_1C98EE54C();
    sub_1C98ECDB4(v10, v6);
    MEMORY[0x1CCA91980](0);
    SNAOPReport.SuccessPayload.hash(into:)(v0);
    sub_1C98EE564();
    return sub_1C98E96C8(v6, v12);
  }
}

uint64_t sub_1C98EAE30(uint64_t (*a1)(_BYTE *))
{
  sub_1C97BE32C(a1);
  a1(v3);
  return sub_1C9A93D18();
}

void sub_1C98EAE70()
{
  sub_1C97AEB94();
  v4 = v3;
  v75 = v5;
  v76 = sub_1C97A2CEC(&qword_1EC3CBFF8, &qword_1C9AB1A60);
  sub_1C97AE9C8();
  v80 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  v79 = v8;
  sub_1C97A2CEC(&qword_1EC3CC000, &qword_1C9AB1A68);
  sub_1C97AE9C8();
  v77 = v10;
  v78 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C98EE6CC(v12, v69);
  sub_1C97A2CEC(&qword_1EC3CC008, &qword_1C9AB1A70);
  sub_1C97AE9C8();
  v81 = v14;
  v82 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C98EE7B4();
  v17 = type metadata accessor for SNAOPReport.Payload(v16);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98435A0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C98EE7C8();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  v26 = v4[3];
  sub_1C97BE20C(v4, v26);
  sub_1C98EDC5C();
  sub_1C9A93DB8();
  if (!v1)
  {
    v72 = v0;
    v73 = v21;
    v71 = v25;
    v74 = v17;
    v86 = v4;
    v27 = v82;
    v28 = sub_1C9A93958();
    sub_1C98ECCE8(v28, 0);
    v30 = v29;
    if (v32 != v31 >> 1)
    {
      sub_1C98EE770();
      if (v37 == v38)
      {
        __break(1u);
        return;
      }

      v70 = *(v36 + v34);
      sub_1C98ECC6C(v34 + 1, v33, v30, v36, v34, v35);
      sub_1C98EE7DC();
      v39 = v73;
      if (!v26)
      {
        if (v70)
        {
          LOBYTE(v83) = 1;
          sub_1C98EDCB0();
          sub_1C98EE614(&type metadata for SNAOPReport.Payload.FailureCodingKeys, &v83);
          v40 = sub_1C98EDDAC();
          sub_1C98EE85C(&type metadata for SNAOPReport.AOPError, v41, v42, v43, v40);
          swift_unknownObjectRelease();
          v57 = sub_1C98EE6C0();
          v58(v57);
          v59 = sub_1C98715A4();
          v60(v59);
          v61 = v84;
          v62 = v85;
          *v39 = v83;
          *(v39 + 8) = v61;
          *(v39 + 16) = v62;
          swift_storeEnumTagMultiPayload();
          sub_1C98EE5AC();
          v63 = v39;
        }

        else
        {
          LOBYTE(v83) = 0;
          sub_1C98EDD58();
          sub_1C98EE614(&type metadata for SNAOPReport.Payload.SuccessCodingKeys, &v83);
          v49 = type metadata accessor for SNAOPReport.SuccessPayload(0);
          sub_1C98EE660();
          v52 = sub_1C98EC018(v50, v51, &protocol conformance descriptor for SNAOPReport.SuccessPayload);
          v53 = v72;
          sub_1C98EE83C(v49, v54, v55, v56, v52);
          swift_unknownObjectRelease();
          v64 = sub_1C98EE6C0();
          v65(v64);
          v66 = sub_1C97A7890();
          v67(v66);
          swift_storeEnumTagMultiPayload();
          sub_1C98EE5AC();
          v63 = v53;
        }

        v68 = v71;
        sub_1C98ECDB4(v63, v71);
        sub_1C98EE5AC();
        sub_1C98ECDB4(v68, v75);
        v48 = v86;
        goto LABEL_10;
      }
    }

    v44 = sub_1C9A93648();
    swift_allocError();
    v46 = v45;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    sub_1C98EE81C();
    sub_1C98EE748();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1C98EE6E0();
    v47(v2, v27);
    v4 = v86;
  }

  v48 = v4;
LABEL_10:
  sub_1C97A592C(v48);
  sub_1C97AEB5C();
}

uint64_t sub_1C98EB3EC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1C9A93B18();
  }
}

uint64_t sub_1C98EB434(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727245706F61 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C98EB4FC(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x726F727245706F61;
  }
}

void sub_1C98EB534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1C97AEB94();
  v21 = v20;
  sub_1C97A2CEC(&qword_1EC3CC040, &qword_1C9AB1A88);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C98EE788();
  sub_1C97BE20C(v21, v21[3]);
  sub_1C98EDE00();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3CC030, &qword_1C9AB1A80);
  sub_1C98EDED0();
  sub_1C98EE638();
  sub_1C9A93A18();
  if (!v19)
  {
    sub_1C98EE7A8();
    sub_1C9A939C8();
  }

  v23 = sub_1C97AEB30();
  v24(v23);
  sub_1C97AEB5C();
}

uint64_t sub_1C98EB698(uint64_t a1)
{
  sub_1C9A93CF8();

  return sub_1C9A92528();
}

uint64_t sub_1C98EB6EC(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C9A93CF8();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void sub_1C98EB748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1C97AEB94();
  v21 = v20;
  v23 = v22;
  sub_1C97A2CEC(&qword_1EC3CC020, &qword_1C9AB1A78);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97BE20C(v21, v21[3]);
  sub_1C98EDE00();
  sub_1C9A93DB8();
  if (!v19)
  {
    sub_1C97A2CEC(&qword_1EC3CC030, &qword_1C9AB1A80);
    sub_1C98EDE54();
    sub_1C98EE794();
    sub_1C9A938F8();
    sub_1C98EE7A8();
    v25 = sub_1C9A938A8();
    v27 = v26;
    v28 = sub_1C97BE30C();
    v29(v28);
    *v23 = DWORD1(a10);
    *(v23 + 8) = v25;
    *(v23 + 16) = v27;
  }

  sub_1C97A592C(v21);
  sub_1C97AEB5C();
}

uint64_t sub_1C98EB934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98EA878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98EB95C(uint64_t a1)
{
  v2 = sub_1C98EDC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EB998(uint64_t a1)
{
  v2 = sub_1C98EDC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98EB9D4(uint64_t a1)
{
  v2 = sub_1C98EDCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EBA10(uint64_t a1)
{
  v2 = sub_1C98EDCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98EBA4C(uint64_t a1)
{
  v2 = sub_1C98EDD58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EBA88(uint64_t a1)
{
  v2 = sub_1C98EDD58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98EBB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C98EBB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98EB434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98EBBBC(uint64_t a1)
{
  v2 = sub_1C98EDE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EBBF8(uint64_t a1)
{
  v2 = sub_1C98EDE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98EBC6C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[18] = *v0;
  v5 = v1;
  v6 = v2;
  sub_1C9A93CC8();
  sub_1C98EB698(v4);
  return sub_1C9A93D18();
}

uint64_t sub_1C98EBCC0(uint64_t a1)
{
  v2 = sub_1C98ECE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EBCFC(uint64_t a1)
{
  v2 = sub_1C98ECE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SNAOPReport.AOPNewDataAvailable.encode(to:)()
{
  sub_1C97AEB94();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3CBE58, &qword_1C9AB1020);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97BE20C(v1, v1[3]);
  sub_1C98ECE10();
  sub_1C9A93DD8();
  sub_1C9A93A58();
  v3 = sub_1C97BE30C();
  v4(v3);
  sub_1C97AEB5C();
}

uint64_t SNAOPReport.AOPNewDataAvailable.hashValue.getter(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

void SNAOPReport.AOPNewDataAvailable.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C97A2CEC(&qword_1EC3CBE68, &qword_1C9AB1028);
  sub_1C97AE9C8();
  v29 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  sub_1C97BE20C(v24, v24[3]);
  sub_1C98ECE10();
  sub_1C9A93DB8();
  if (!v20)
  {
    v33 = sub_1C9A93938();
    (*(v29 + 8))(v32, v27);
    *v26 = v33;
  }

  sub_1C97A592C(v24);
  sub_1C97AEB5C();
}

uint64_t sub_1C98EC018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL static SNAOPReport.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = sub_1C98EE70C();
  v5 = type metadata accessor for SNAOPReport(v4);
  if ((sub_1C9A916B8() & 1) == 0 || *(v2 + *(v5 + 24)) != *(a2 + *(v5 + 24)))
  {
    return 0;
  }

  v6 = *(v5 + 28);

  return sub_1C98EA5AC(v2 + v6, a2 + v6);
}

uint64_t sub_1C98EC100(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974726F706572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64497265646E6573 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C98EC260(char a1)
{
  result = 0x644974726F706572;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x64497265646E6573;
      break;
    case 3:
      result = 0x64616F6C796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C98EC2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98EC100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98EC314(uint64_t a1)
{
  v2 = sub_1C98ECE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98EC350(uint64_t a1)
{
  v2 = sub_1C98ECE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SNAOPReport.encode(to:)(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CBE70, &qword_1C9AB1030);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98EE788();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C98ECE84();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3CBE80, &qword_1C9AB1038);
  sub_1C98ECED8();
  sub_1C98EE638();
  sub_1C9A93A18();
  if (!v1)
  {
    type metadata accessor for SNAOPReport(0);
    sub_1C98EE7A8();
    sub_1C9A916E8();
    sub_1C98EE534();
    sub_1C98EC018(v4, v5, MEMORY[0x1E6969538]);
    sub_1C98EE638();
    sub_1C9A93A18();
    sub_1C97A2CEC(&qword_1EC3CBE90, &qword_1C9AB1040);
    sub_1C98ECF54();
    sub_1C98EE638();
    sub_1C9A93A18();
    type metadata accessor for SNAOPReport.Payload(0);
    sub_1C98EE648();
    sub_1C98EC018(v6, v7, &unk_1C9AB188C);
    sub_1C98EE638();
    sub_1C9A93A18();
  }

  v8 = sub_1C97AEB30();
  return v9(v8);
}

uint64_t SNAOPReport.hash(into:)(uint64_t a1)
{
  sub_1C9A93CF8();
  type metadata accessor for SNAOPReport(0);
  sub_1C9A916E8();
  sub_1C98EE534();
  sub_1C98EC018(v1, v2, MEMORY[0x1E6969540]);
  sub_1C9A92398();
  sub_1C9A93CF8();
  return sub_1C98EAD00();
}

uint64_t SNAOPReport.hashValue.getter(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C9A93CF8();
  type metadata accessor for SNAOPReport(0);
  sub_1C9A916E8();
  sub_1C98EE534();
  sub_1C98EC018(v1, v2, MEMORY[0x1E6969540]);
  sub_1C9A92398();
  sub_1C9A93CF8();
  sub_1C98EAD00();
  return sub_1C9A93D18();
}

void SNAOPReport.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  v28 = v27;
  v47 = v29;
  type metadata accessor for SNAOPReport.Payload(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AEAD8();
  sub_1C98EE728();
  v51 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v49 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AEAD8();
  v35 = v34 - v33;
  v48 = sub_1C97A2CEC(&qword_1EC3CBEA8, &qword_1C9AB1048);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97E86E4();
  v50 = type metadata accessor for SNAOPReport(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AEAD8();
  v40 = (v39 - v38);
  sub_1C97BE20C(v28, v28[3]);
  sub_1C98ECE84();
  sub_1C9A93DB8();
  if (v24)
  {
    sub_1C97A592C(v28);
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3CBE80, &qword_1C9AB1038);
    sub_1C98ECFF0();
    sub_1C98EE794();
    sub_1C9A938F8();
    *v40 = a14;
    sub_1C98EE7A8();
    sub_1C98EE534();
    sub_1C98EC018(v41, v42, MEMORY[0x1E6969558]);
    sub_1C9A938F8();
    (*(v49 + 32))(&v40[*(v50 + 20)], v35, v51);
    sub_1C97A2CEC(&qword_1EC3CBE90, &qword_1C9AB1040);
    sub_1C98ED06C();
    sub_1C9A938F8();
    *&v40[*(v50 + 24)] = v52;
    sub_1C98EE648();
    sub_1C98EC018(v43, v44, &unk_1C9AB1864);
    sub_1C9A938F8();
    sub_1C98EE6E0();
    v45(v25, v48);
    sub_1C98EE5AC();
    sub_1C98ECDB4(v26, &v40[v46]);
    sub_1C98ED0E8(v40, v47);
    sub_1C97A592C(v28);
    sub_1C98E96C8(v40, type metadata accessor for SNAOPReport);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98ECC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1C9A93CC8();
  a4(v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C98ECC6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1C98ECCE8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1C98EE604();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1C98ECD24(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1C98EE604();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1C98ECD60()
{
  result = qword_1EC3CBE48;
  if (!qword_1EC3CBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE48);
  }

  return result;
}

uint64_t sub_1C98ECDB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C98EE70C();
  v5(v4);
  sub_1C97DA940();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1C98ECE10()
{
  result = qword_1EC3CBE60;
  if (!qword_1EC3CBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE60);
  }

  return result;
}

unint64_t sub_1C98ECE84()
{
  result = qword_1EC3CBE78;
  if (!qword_1EC3CBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE78);
  }

  return result;
}

unint64_t sub_1C98ECED8()
{
  result = qword_1EC3CBE88;
  if (!qword_1EC3CBE88)
  {
    sub_1C97AA4F0(&qword_1EC3CBE80, &qword_1C9AB1038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE88);
  }

  return result;
}

unint64_t sub_1C98ECF54()
{
  result = qword_1EC3CBE98;
  if (!qword_1EC3CBE98)
  {
    sub_1C97AA4F0(&qword_1EC3CBE90, &qword_1C9AB1040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBE98);
  }

  return result;
}

unint64_t sub_1C98ECFF0()
{
  result = qword_1EC3CBEB0;
  if (!qword_1EC3CBEB0)
  {
    sub_1C97AA4F0(&qword_1EC3CBE80, &qword_1C9AB1038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBEB0);
  }

  return result;
}

unint64_t sub_1C98ED06C()
{
  result = qword_1EC3CBEB8;
  if (!qword_1EC3CBEB8)
  {
    sub_1C97AA4F0(&qword_1EC3CBE90, &qword_1C9AB1040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBEB8);
  }

  return result;
}

uint64_t sub_1C98ED0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C98EE70C();
  v5(v4);
  sub_1C97DA940();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_1C98ED190()
{
  result = qword_1EC3CBED0;
  if (!qword_1EC3CBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBED0);
  }

  return result;
}

void sub_1C98ED254(uint64_t a1)
{
  sub_1C98ED308(319);
  if (v1 <= 0x3F)
  {
    sub_1C9A916E8();
    if (v2 <= 0x3F)
    {
      sub_1C98ED39C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SNAOPReport.Payload(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C98ED308(uint64_t a1)
{
  if (!qword_1EC3CBEF0)
  {
    type metadata accessor for eSNAOPHIDReportIds(255);
    v3 = v2;
    v4 = sub_1C98EC018(&qword_1EC3CBEF8, type metadata accessor for eSNAOPHIDReportIds, &unk_1C9A9BB88);
    v6 = type metadata accessor for RawRepresentableWrapper(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC3CBEF0);
    }
  }
}

void sub_1C98ED39C(uint64_t a1)
{
  if (!qword_1EC3CBF00)
  {
    type metadata accessor for eSNAOPHIDSenderIds(255);
    v3 = v2;
    v4 = sub_1C98EC018(&qword_1EC3CBF08, type metadata accessor for eSNAOPHIDSenderIds, &unk_1C9A9BB50);
    v6 = type metadata accessor for RawRepresentableWrapper(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC3CBF00);
    }
  }
}

uint64_t sub_1C98ED480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C98ED4E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C98ED528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNAOPReport.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98ED698()
{
  result = qword_1EC3CBF30;
  if (!qword_1EC3CBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF30);
  }

  return result;
}

unint64_t sub_1C98ED6F0()
{
  result = qword_1EC3CBF38;
  if (!qword_1EC3CBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF38);
  }

  return result;
}

unint64_t sub_1C98ED748()
{
  result = qword_1EC3CBF40;
  if (!qword_1EC3CBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF40);
  }

  return result;
}

unint64_t sub_1C98ED7A0()
{
  result = qword_1EC3CBF48;
  if (!qword_1EC3CBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF48);
  }

  return result;
}

unint64_t sub_1C98ED7F8()
{
  result = qword_1EC3CBF50;
  if (!qword_1EC3CBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF50);
  }

  return result;
}

unint64_t sub_1C98ED850()
{
  result = qword_1EC3CBF58;
  if (!qword_1EC3CBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF58);
  }

  return result;
}

unint64_t sub_1C98ED8F0()
{
  result = qword_1EC3CBF68;
  if (!qword_1EC3CBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF68);
  }

  return result;
}

unint64_t sub_1C98ED948()
{
  result = qword_1EC3CBF70;
  if (!qword_1EC3CBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF70);
  }

  return result;
}

unint64_t sub_1C98ED9A0()
{
  result = qword_1EC3CBF78;
  if (!qword_1EC3CBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF78);
  }

  return result;
}

unint64_t sub_1C98ED9F8()
{
  result = qword_1EC3CBF80;
  if (!qword_1EC3CBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF80);
  }

  return result;
}

unint64_t sub_1C98EDA50()
{
  result = qword_1EC3CBF88;
  if (!qword_1EC3CBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF88);
  }

  return result;
}

unint64_t sub_1C98EDAA8()
{
  result = qword_1EC3CBF90;
  if (!qword_1EC3CBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF90);
  }

  return result;
}

unint64_t sub_1C98EDB00()
{
  result = qword_1EC3CBF98;
  if (!qword_1EC3CBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBF98);
  }

  return result;
}

unint64_t sub_1C98EDB58()
{
  result = qword_1EC3CBFA0;
  if (!qword_1EC3CBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFA0);
  }

  return result;
}

unint64_t sub_1C98EDBB0()
{
  result = qword_1EC3CBFA8;
  if (!qword_1EC3CBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFA8);
  }

  return result;
}

unint64_t sub_1C98EDC08()
{
  result = qword_1EC3CBFB0;
  if (!qword_1EC3CBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFB0);
  }

  return result;
}

unint64_t sub_1C98EDC5C()
{
  result = qword_1EC3CBFD0;
  if (!qword_1EC3CBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFD0);
  }

  return result;
}

unint64_t sub_1C98EDCB0()
{
  result = qword_1EC3CBFD8;
  if (!qword_1EC3CBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFD8);
  }

  return result;
}

unint64_t sub_1C98EDD04()
{
  result = qword_1EC3CBFE0;
  if (!qword_1EC3CBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFE0);
  }

  return result;
}

unint64_t sub_1C98EDD58()
{
  result = qword_1EC3CBFE8;
  if (!qword_1EC3CBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBFE8);
  }

  return result;
}

unint64_t sub_1C98EDDAC()
{
  result = qword_1EC3CC010;
  if (!qword_1EC3CC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC010);
  }

  return result;
}

unint64_t sub_1C98EDE00()
{
  result = qword_1EC3CC028;
  if (!qword_1EC3CC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC028);
  }

  return result;
}

unint64_t sub_1C98EDE54()
{
  result = qword_1EC3CC038;
  if (!qword_1EC3CC038)
  {
    sub_1C97AA4F0(&qword_1EC3CC030, &qword_1C9AB1A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC038);
  }

  return result;
}

unint64_t sub_1C98EDED0()
{
  result = qword_1EC3CC048;
  if (!qword_1EC3CC048)
  {
    sub_1C97AA4F0(&qword_1EC3CC030, &qword_1C9AB1A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC048);
  }

  return result;
}

_BYTE *sub_1C98EDF5C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C98EE048(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C98EE0F8()
{
  result = qword_1EC3CC058;
  if (!qword_1EC3CC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC058);
  }

  return result;
}

unint64_t sub_1C98EE150()
{
  result = qword_1EC3CC060;
  if (!qword_1EC3CC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC060);
  }

  return result;
}

unint64_t sub_1C98EE1A8()
{
  result = qword_1EC3CC068;
  if (!qword_1EC3CC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC068);
  }

  return result;
}

unint64_t sub_1C98EE200()
{
  result = qword_1EC3CC070;
  if (!qword_1EC3CC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC070);
  }

  return result;
}

unint64_t sub_1C98EE258()
{
  result = qword_1EC3CC078;
  if (!qword_1EC3CC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC078);
  }

  return result;
}

unint64_t sub_1C98EE2B0()
{
  result = qword_1EC3CC080;
  if (!qword_1EC3CC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC080);
  }

  return result;
}

unint64_t sub_1C98EE308()
{
  result = qword_1EC3CC088;
  if (!qword_1EC3CC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC088);
  }

  return result;
}

unint64_t sub_1C98EE360()
{
  result = qword_1EC3CC090;
  if (!qword_1EC3CC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC090);
  }

  return result;
}

unint64_t sub_1C98EE3B8()
{
  result = qword_1EC3CC098;
  if (!qword_1EC3CC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC098);
  }

  return result;
}

unint64_t sub_1C98EE410()
{
  result = qword_1EC3CC0A0;
  if (!qword_1EC3CC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC0A0);
  }

  return result;
}

unint64_t sub_1C98EE468()
{
  result = qword_1EC3CC0A8;
  if (!qword_1EC3CC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC0A8);
  }

  return result;
}

unint64_t sub_1C98EE4C0()
{
  result = qword_1EC3CC0B0[0];
  if (!qword_1EC3CC0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CC0B0);
  }

  return result;
}

uint64_t sub_1C98EE5DC()
{

  return sub_1C98E96C8(v0, type metadata accessor for SNAOPReport.Payload);
}

uint64_t sub_1C98EE614(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C98EE6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93988();
}

uint64_t sub_1C98EE748()
{

  return sub_1C9A93638();
}

uint64_t sub_1C98EE7DC()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1C98EE7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9A93DD8();
}

uint64_t sub_1C98EE81C()
{
  *v1 = v0;

  return sub_1C9A93868();
}

uint64_t sub_1C98EE83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C98EE85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A938F8();
}

uint64_t (*sub_1C98EE8E8(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t, uint64_t)))(uint64_t)
{
  v5 = *(v2[6] + 16);
  os_unfair_lock_lock(v5);
  result = swift_beginAccess();
  v7 = v2[4];
  v8 = v2[5] >> 1;
  v9 = __OFSUB__(v8, v7);
  v10 = v8 - v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 < 1)
    {
      v11 = 0;
    }

    else
    {
      swift_beginAccess();
      v11 = sub_1C98EE9AC(a1, a2);
      swift_endAccess();
    }

    os_unfair_lock_unlock(v5);
    return v11;
  }

  return result;
}

uint64_t (*sub_1C98EE9AC(uint64_t (*result)(uint64_t), void (*a2)(uint64_t, uint64_t)))(uint64_t)
{
  v3 = v2[2];
  v4 = v2[3];
  if (v3 == v4 >> 1)
  {
    __break(1u);
  }

  else if (v3 < (v4 >> 1))
  {
    v6 = v2[1] + 16 * v3;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = result(v3 + 1);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    a2(v7, v8);
    swift_unknownObjectRelease();
    *v2 = v9;
    v2[1] = v11;
    v2[2] = v13;
    v2[3] = v15;
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98EEA68(uint64_t a1)
{
  v2 = v1;
  sub_1C97A2CEC(&qword_1EC3CC140, &qword_1C9AB1F98);
  swift_allocObject();
  *(v1 + 16) = sub_1C99251C8();
  *(v1 + 32) = *(a1 + 32);
  swift_retain_n();
  swift_retain_n();
  sub_1C97A2CEC(&qword_1EC3CC148, &qword_1C9AB1FA0);
  sub_1C98F12A8();
  v4 = sub_1C9A920F8();

  *(v2 + 24) = v4;
  return v2;
}

uint64_t sub_1C98EEB64(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v1 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 == 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v1 < 5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v1 == 5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v1 < 7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v1 == 7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v1 < 9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1 == 9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v1 < 0xB)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v1 == 11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v1 < 0xD)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v1 == 13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v1 < 0xF)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v1 != 15)
  {
    return sub_1C9A91718();
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1C98EECB4()
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  v1 = sub_1C9A91B38();
  v2 = sub_1C9A92FC8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    _os_log_impl(&dword_1C9788000, v1, v2, "Preboard Check required = %{BOOL}d", v3, 8u);
    MEMORY[0x1CCA93280](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_1C98EED9C(uint64_t a1, uint64_t a2)
{
  sub_1C98F1340();
  v2 = sub_1C98F1350(102);
  return sub_1C99D1B38(v2, v3, v4, v5, v6);
}

uint64_t sub_1C98EEE00@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v60 = *MEMORY[0x1E69E9840];
  v51 = sub_1C9A91748();
  v6 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  v53 = a1;
  v54 = sub_1C98F1230;
  v55 = v10;
  v56 = &v53;

  v11 = sub_1C97E32C4();
  if (v3)
  {
  }

  v13 = a2;
  v48 = v11;

  sub_1C9A91738();
  v58[0] = sub_1C9A91728();
  v58[1] = v14;
  v15 = sub_1C98F1108(v58, v59);
  v16 = *(v6 + 8);
  v17 = v51;
  v16(v8, v51);
  swift_beginAccess();
  v18 = *(v9 + 16);
  v47[1] = v9;
  v49 = v15;
  if (v18)
  {
    sub_1C98EEB64(v15);
    swift_beginAccess();
    v19 = v17;
    v20 = v48;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v13 + 32);
    sub_1C97EEEF0(v20, v8, isUniquelyReferenced_nonNull_native);
    *(v13 + 32) = v52;
    v16(v8, v19);
    swift_endAccess();
    v22 = v8;
    v23 = v16;
  }

  else
  {
    v47[0] = v16;
    v22 = v8;
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v24 = sub_1C9A91B58();
    sub_1C97BFF6C(v24, qword_1EC3D3108);
    v25 = sub_1C9A91B38();
    v26 = sub_1C9A92FC8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C9788000, v25, v26, "Cache hit", v27, 2u);
      MEMORY[0x1CCA93280](v27, -1, -1);
    }

    sub_1C98EEB64(v49);
    sub_1C97A2CEC(&qword_1EC3C7B88, &unk_1C9A9FFF0);
    swift_allocObject();

    v29 = sub_1C98EEA68(v28);
    swift_beginAccess();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v13 + 32);
    sub_1C97EEEF0(v29, v8, v30);
    v31 = v51;
    *(v13 + 32) = v52;
    v23 = v47[0];
    (v47[0])(v8, v31);
    swift_endAccess();
  }

  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v32 = sub_1C9A91B58();
  sub_1C97BFF6C(v32, qword_1EC3D3108);
  v33 = v49;

  v34 = v33;
  v35 = sub_1C9A91B38();
  v36 = sub_1C9A92FC8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v22;
    v40 = v51;
    v47[0] = 0;
    v41 = v38;
    v57[0] = v38;
    *v37 = 136315138;
    sub_1C98EEB64(v49);
    sub_1C97AE3DC();
    v42 = sub_1C9A93A98();
    v43 = v23;
    v45 = v44;
    v43(v39, v40);
    v46 = sub_1C9849140(v42, v45, v57);

    *(v37 + 4) = v46;
    v34 = v49;
    _os_log_impl(&dword_1C9788000, v35, v36, "Created XSoundRecognitionSession with ID %s.", v37, 0xCu);
    sub_1C97A592C(v41);
    MEMORY[0x1CCA93280](v41, -1, -1);
    MEMORY[0x1CCA93280](v37, -1, -1);
  }

  *v50 = v34;
  return result;
}

void *sub_1C98EF384@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a3;
  v9 = *a3;
  v10 = *a1;
  swift_beginAccess();
  *(a2 + 16) = 1;
  v20 = a3[2];
  v11 = *(v8 + 96);
  v12 = *(v8 + 112);
  v17 = *(v9 + 80);
  v18 = v11;
  v19 = v12;
  v13 = _s17ServerEnvironmentCMa(0, &v17);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  result = sub_1C9923B74(v10, &v20, v13, WitnessTable, v15);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C98EF4C8()
{
  sub_1C98F135C();
  result = sub_1C99D1ABC();
  if ((result & 0x100) != 0)
  {
    sub_1C985E2B4();
    return swift_willThrowTypedImpl();
  }

  return result;
}

void sub_1C98EF588(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C9A91748();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38[-v10];
  if (*(a1 + 16) != 16)
  {
    sub_1C98F0FA0();
    swift_allocError();
    swift_willThrow();
    return;
  }

  swift_beginAccess();
  v12 = *(a2 + 32);

  sub_1C98EEB64(a1);
  v13 = *(v12 + 16);
  v43[7] = v2;
  if (v13)
  {
    sub_1C9A32468();
    v15 = v14;

    v16 = *(v6 + 8);
    v16(v11, v5);
    if (v15)
    {
      v42 = v16;
      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v17 = sub_1C9A91B58();
      sub_1C97BFF6C(v17, qword_1EC3D3108);

      v18 = sub_1C9A91B38();
      v19 = sub_1C9A92FC8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v40 = v20;
        v41 = swift_slowAlloc();
        v43[0] = v41;
        *v20 = 136315138;
        sub_1C98EEB64(a1);
        sub_1C97AE3DC();
        v21 = sub_1C9A93A98();
        v39 = v19;
        v23 = v22;
        v24 = v42;
        v42(v9, v5);
        v25 = sub_1C9849140(v21, v23, v43);

        v26 = v40;
        *(v40 + 1) = v25;
        v27 = v26;
        _os_log_impl(&dword_1C9788000, v18, v39, "Removing XSoundRecognitionSession with ID %s.", v26, 0xCu);
        v28 = v41;
        sub_1C97A592C(v41);
        MEMORY[0x1CCA93280](v28, -1, -1);
        MEMORY[0x1CCA93280](v27, -1, -1);
      }

      else
      {

        v24 = v42;
      }

      sub_1C98EEB64(a1);
      swift_beginAccess();
      sub_1C97EE4B8(v9);
      v24(v9, v5);
      swift_endAccess();

      return;
    }
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v11, v5);
  }

  v42 = v16;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v29 = sub_1C9A91B58();
  sub_1C97BFF6C(v29, qword_1EC3D3108);

  v30 = sub_1C9A91B38();
  v31 = sub_1C9A92FA8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43[0] = v33;
    *v32 = 136315138;
    sub_1C98EEB64(a1);
    sub_1C97AE3DC();
    v34 = sub_1C9A93A98();
    v36 = v35;
    v42(v9, v5);
    v37 = sub_1C9849140(v34, v36, v43);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_1C9788000, v30, v31, "Recieved request to remove XSoundRecognitionSession with ID %s but such a session does not exist; Ignoring.", v32, 0xCu);
    sub_1C97A592C(v33);
    MEMORY[0x1CCA93280](v33, -1, -1);
    MEMORY[0x1CCA93280](v32, -1, -1);
  }
}

uint64_t sub_1C98EFA80(uint64_t a1, uint64_t a2)
{
  sub_1C98F1340();
  v2 = sub_1C98F1350(117);
  return sub_1C99D1D3C(v2, v3, v4, v5, v6);
}

void sub_1C98EFAFC(uint64_t a1@<X0>, char *a3@<X8>)
{
  v5 = sub_1C9A91748();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 16)
  {
    sub_1C98F0FA0();
    swift_allocError();
    swift_willThrow();
    return;
  }

  sub_1C98EEB64(a1);
  swift_beginAccess();

  v9 = sub_1C987B2FC();

  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = sub_1C98EE8E8(sub_1C98EE520, sub_1C98F1324);
  v12 = v10;
  if (!v11)
  {

    v13 = v12 & 1;
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    v14 = sub_1C99D146C(v10);

    sub_1C9792740(v12, 1);
    v13 = v14 | 0x40;
    goto LABEL_12;
  }

  if (v11 != 2)
  {

LABEL_11:
    v13 = -4;
    goto LABEL_12;
  }

  v13 = 0x80;
LABEL_12:
  *a3 = v13;
}

uint64_t sub_1C98EFD58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = sub_1C9A91748();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1[6] + 16) >= a1[8])
  {
    sub_1C985E2B4();
    swift_allocError();
    *v20 = 1;
    return swift_willThrow();
  }

  else
  {
    v24 = a1[2];
    v10 = *(v5 + 96);
    v11 = *(v5 + 112);
    v25 = *(v5 + 80);
    v26[0] = v10;
    v26[1] = v11;
    v12 = _s17ServerEnvironmentCMa(0, &v25);
    WitnessTable = swift_getWitnessTable();
    result = sub_1C9925B0C(&v24, v12, WitnessTable);
    if (!v2)
    {
      v15 = result;
      sub_1C9A91738();
      *&v25 = sub_1C9A91728();
      *(&v25 + 1) = v16;
      v17 = sub_1C98F1108(&v25, v26);
      v22 = a2;
      v18 = *(v7 + 8);
      v18(v9, v6);
      sub_1C98EEB64(v17);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = a1[6];
      sub_1C97EEF04(v15, v9, isUniquelyReferenced_nonNull_native);
      a1[6] = v23;
      v18(v9, v6);
      swift_endAccess();

      *v22 = v17;
    }
  }

  return result;
}

uint64_t sub_1C98F0000()
{
  sub_1C98F135C();
  result = sub_1C99D1ABC();
  if ((result & 0x100) != 0)
  {
    sub_1C985E2B4();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1C98F0098(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C9A91748();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) == 16)
  {
    sub_1C98EEB64(a1);
    swift_beginAccess();
    sub_1C97EE4DC(v6);
    (*(v4 + 8))(v6, v3);
    swift_endAccess();
  }

  else
  {
    sub_1C98F0FA0();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C98F01E4(uint64_t a1, uint64_t a2)
{
  sub_1C98F1340();
  v2 = sub_1C98F1350(112);
  return sub_1C99D1D3C(v2, v3, v4, v5, v6);
}

void sub_1C98F0260(uint64_t a1@<X0>, _BYTE *a3@<X8>)
{
  v5 = sub_1C9A91748();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 16)
  {
    sub_1C98F0FA0();
    swift_allocError();
    swift_willThrow();
    return;
  }

  sub_1C98EEB64(a1);
  swift_beginAccess();

  v9 = sub_1C987B2FC();

  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = sub_1C98EE8E8(sub_1C98EE520, sub_1C98F1324);
  v12 = v10;
  if (!v11)
  {

    goto LABEL_12;
  }

  if (v11 == 1)
  {
    v13 = sub_1C99D146C(v10);

    sub_1C9792740(v12, 1);
    LOBYTE(v12) = v13 | 0x40;
    goto LABEL_12;
  }

  if (v11 != 2)
  {

LABEL_11:
    LOBYTE(v12) = -16;
    goto LABEL_12;
  }

  LOBYTE(v12) = 0x80;
LABEL_12:
  *a3 = v12;
}

uint64_t sub_1C98F045C(uint64_t a1, uint64_t a2)
{
  sub_1C98F1340();
  v2 = sub_1C98F1350(113);
  return sub_1C99D1B38(v2, v3, v4, v5, v6);
}

uint64_t sub_1C98F04E4(uint64_t result)
{
  if (*(*result + 16) != 16)
  {
    sub_1C98F0FA0();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C98F0540@<X0>(const void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = sub_1C9A91748();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_1C999690C(__dst);
  if (!v3)
  {
    v28 = v9;
    v29 = a3;
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v13 = sub_1C9A91B58();
    sub_1C97BFF6C(v13, qword_1EC3D3108);
    v14 = sub_1C9A91B38();
    v15 = sub_1C9A92FC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C9788000, v14, v15, "Processing request to run a custom model.", v16, 2u);
      MEMORY[0x1CCA93280](v16, -1, -1);
    }

    sub_1C98EECB4();
    swift_beginAccess();
    if (*(a2[3] + 16) >= a2[7])
    {
      sub_1C985E2B4();
      swift_allocError();
      *v26 = 1;
      return swift_willThrow();
    }

    else
    {
      v31 = a2[2];
      v17 = *(v7 + 96);
      v18 = *(v7 + 112);

      v34 = *(v7 + 80);
      v35[0] = v17;
      v35[1] = v18;
      v19 = _s17ServerEnvironmentCMa(0, &v34);
      v33 = *(v7 + 104);
      WitnessTable = swift_getWitnessTable();
      swift_getWitnessTable();
      v21 = sub_1C99240FC(a1, &v31, v19, WitnessTable);

      sub_1C9A91738();
      *&v34 = sub_1C9A91728();
      *(&v34 + 1) = v22;
      v23 = sub_1C98F1108(&v34, v35);
      v24 = *(v28 + 8);
      v24(v11, v8);
      sub_1C98EEB64(v23);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = a2[3];
      sub_1C97EEEF0(v21, v11, isUniquelyReferenced_nonNull_native);
      a2[3] = v30;
      v24(v11, v8);
      swift_endAccess();

      *v29 = v23;
    }
  }

  return result;
}

uint64_t sub_1C98F0930()
{
  sub_1C98F135C();
  result = sub_1C99D1ABC();
  if ((result & 0x100) != 0)
  {
    sub_1C985E2B4();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1C98F09C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C9A91748();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) == 16)
  {
    sub_1C98EEB64(a1);
    swift_beginAccess();
    sub_1C97EE4B8(v6);
    (*(v4 + 8))(v6, v3);
    swift_endAccess();
  }

  else
  {
    sub_1C98F0FA0();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C98F0B14(uint64_t a1, uint64_t a2)
{
  sub_1C98F1340();
  v2 = sub_1C98F1350(128);
  return sub_1C99D1D3C(v2, v3, v4, v5, v6);
}

void sub_1C98F0B90(uint64_t a1@<X0>, char *a3@<X8>)
{
  v5 = sub_1C9A91748();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 16)
  {
    sub_1C98F0FA0();
    swift_allocError();
    swift_willThrow();
    return;
  }

  sub_1C98EEB64(a1);
  swift_beginAccess();

  v9 = sub_1C987B2FC();

  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = sub_1C98EE8E8(sub_1C98EE520, sub_1C98F1324);
  v12 = v10;
  if (!v11)
  {

    v13 = v12 & 1;
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    v14 = sub_1C99D146C(v10);

    sub_1C9792740(v12, 1);
    v13 = v14 | 0x40;
    goto LABEL_12;
  }

  if (v11 != 2)
  {

LABEL_11:
    v13 = -4;
    goto LABEL_12;
  }

  v13 = 0x80;
LABEL_12:
  *a3 = v13;
}

uint64_t sub_1C98F0D90()
{

  return v0;
}

uint64_t sub_1C98F0DD0()
{
  sub_1C98F0D90();

  return swift_deallocClassInstance();
}

unint64_t sub_1C98F0FA0()
{
  result = qword_1EC3CC138;
  if (!qword_1EC3CC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC138);
  }

  return result;
}

uint64_t sub_1C98F0FF4(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = a1();
  if (!v3)
  {
    return a3(result);
  }

  return result;
}

void *sub_1C98F1078(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C97A2CEC(&qword_1EC3C69E0, &qword_1C9A9D498);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_1C98F1108(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1C98F1078(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98F124C@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C97E4764(*a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_1C98F12A8()
{
  result = qword_1EC3CC150;
  if (!qword_1EC3CC150)
  {
    sub_1C97AA4F0(&qword_1EC3CC148, &qword_1C9AB1FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC150);
  }

  return result;
}

uint64_t sub_1C98F136C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C98F13E4(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C97ABF20(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C97ABF20(result, v5, v4);
}

void sub_1C98F14E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98F1698(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getMetatypeMetadata();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C98F1720(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C98F187C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98F1A88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a1;
  v46 = a3;
  v47 = a4;
  sub_1C97AE9DC();
  v45 = v5;
  v48 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1C9A928B8();
  v12 = a2[2];
  v11 = a2[3];
  v13 = swift_getAssociatedTypeWitness();
  sub_1C98F3FAC();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = v10;
  v52 = v13;
  v53 = WitnessTable;
  v54 = AssociatedConformanceWitness;
  sub_1C98F3FF4();
  v43 = sub_1C9A91CF8();
  sub_1C9A93D88();
  sub_1C98F3FC4();
  v42 = swift_getWitnessTable();
  v16 = sub_1C9A91C58();
  v17 = sub_1C9A91E98();
  v18 = swift_getWitnessTable();
  v19 = sub_1C98F3FDC();
  v51 = v16;
  v52 = v17;
  v53 = v18;
  v54 = v19;
  sub_1C98F3FF4();
  v20 = sub_1C9A91C68();
  v21 = sub_1C98F3FDC();
  v51 = v20;
  v52 = v13;
  v53 = v21;
  v54 = AssociatedConformanceWitness;
  sub_1C98F3FF4();
  v22 = sub_1C9A91C18();
  v23 = sub_1C98F3FDC();
  v51 = v22;
  v52 = v12;
  v24 = v12;
  v39 = v12;
  v53 = v23;
  v54 = v11;
  v25 = v11;
  sub_1C98F3FF4();
  v26 = sub_1C9A91CC8();
  v27 = sub_1C98F3FDC();
  v51 = v26;
  v52 = AssociatedTypeWitness;
  v53 = v13;
  v54 = v27;
  type metadata accessor for ExpandResult(0, &v51);
  sub_1C97AE9DC();
  v40 = v28;
  v41 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v39 - v30;
  v33 = v44;
  v32 = v45;
  (*(v45 + 16))(v44, v49, a2);
  v34 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = v24;
  *(v35 + 3) = v46;
  *(v35 + 4) = v25;
  v36 = a2[4];
  *(v35 + 5) = v47;
  *(v35 + 6) = v36;
  (*(v32 + 32))(&v35[v34], v33, a2);
  sub_1C9911534(1, sub_1C98F3EF0, v35, v39, v43, v25, v42, v31);

  v37 = v40;
  swift_getWitnessTable();
  sub_1C9A920B8();
  return (*(v41 + 8))(v31, v37);
}

uint64_t sub_1C98F1E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v100 = a2;
  v72 = a8;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v65 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88 = sub_1C9A92EE8();
  v76 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v65 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v74 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v85 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v84 = &v65 - v21;
  v98 = AssociatedTypeWitness;
  v78 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v97 = &v65 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v65 - v27;
  v28 = sub_1C9A928B8();
  WitnessTable = swift_getWitnessTable();
  v95 = v28;
  v102 = v28;
  v103 = MEMORY[0x1E69E73E0];
  v69 = WitnessTable;
  v104 = WitnessTable;
  v105 = MEMORY[0x1E69E7410];
  v30 = sub_1C9A91CF8();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v70 = &v65 - v32;
  v86 = v17;
  v102 = sub_1C9A922E8();
  v33 = swift_checkMetadataState();
  v34 = a1;
  v35 = sub_1C9A92C08();
  v71 = a3;
  v99 = a7;
  result = type metadata accessor for MaximumSlice(0, a3, a5, a7);
  v37 = *(v100 + *(result + 44));
  v38 = ceilf(v35 / v37);
  if (COERCE__INT64(fabs(v38)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v38 >= 9.2234e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v39 = v38;
  result = sub_1C9A927E8();
  if ((v39 & 0x8000000000000000) == 0)
  {
    v93 = v24;
    v66 = v31;
    v67 = v30;
    v68 = a5;
    v96 = v34;
    v40 = v97;
    v41 = v94;
    if (!v39)
    {
LABEL_15:
      v101 = v102;
      v63 = v70;
      sub_1C9A92658();

      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v64 = v67;
      sub_1C9A91CE8();
      return (*(v66 + 8))(v63, v64);
    }

    v42 = 0;
    v83 = (v78 + 1);
    v80 = v78 + 2;
    v79 = v77 + 2;
    v78 += 4;
    v77 += 4;
    ++v76;
    v75 = (v74 + 2);
    ++v74;
    v82 = v37;
    v81 = v39;
    v73 = v33;
    while (1)
    {
      v43 = v37 * v42;
      if ((v37 * v42) >> 64 != (v37 * v42) >> 63)
      {
        break;
      }

      v100 = v42;
      result = sub_1C9A92C08();
      if (__OFSUB__(result, v43))
      {
        goto LABEL_17;
      }

      if (result - v43 >= v37)
      {
        v44 = v37;
      }

      else
      {
        v44 = result - v43;
      }

      sub_1C9A92BF8();
      sub_1C9A92C28();
      v45 = *v83;
      (*v83)(v40, v98);
      v46 = v41;
      v47 = v93;
      result = sub_1C9A92BF8();
      if (__OFADD__(v43, v44))
      {
        goto LABEL_18;
      }

      sub_1C9A92C28();
      v45(v47, v98);
      result = sub_1C9A923E8();
      if ((result & 1) == 0)
      {
        goto LABEL_19;
      }

      v48 = v46;
      ++v100;
      v49 = *v80;
      v50 = v98;
      v51 = v89;
      (*v80)(v89, v48, v98);
      v52 = TupleTypeMetadata2;
      v49(&v51[*(TupleTypeMetadata2 + 48)], v97, v50);
      v53 = v90;
      (*v79)(v90, v51, v52);
      v54 = *(v52 + 48);
      v55 = *v78;
      v56 = v87;
      (*v78)(v87, v53, v50);
      v45(&v53[v54], v50);
      v57 = v51;
      v40 = v97;
      (*v77)(v53, v57, v52);
      v58 = *(v52 + 48);
      v59 = v88;
      v55(&v56[*(v88 + 36)], &v53[v58], v50);
      v45(v53, v50);
      v60 = v84;
      sub_1C9A92D48();
      v61 = v56;
      v41 = v94;
      (*v76)(v61, v59);
      v62 = v86;
      (*v75)(v85, v60, v86);
      sub_1C9A92888();
      (*v74)(v60, v62);
      v45(v40, v50);
      result = (v45)(v41, v50);
      v42 = v100;
      v37 = v82;
      if (v81 == v100)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1C98F288C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(a3 + 60));
  v5 = result - v4;
  if (__OFSUB__(result, v4))
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v3 + *(a3 + 64));
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 != -1 || v8 != 0x8000000000000000)
  {
    return (v8 / v6) & ~((v8 / v6) >> 63);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C98F28DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v72 = a3;
  v79 = a1;
  sub_1C97AE9DC();
  v75 = v6;
  v76 = v4;
  v77 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v10 + 32);
  v13 = sub_1C9A91C88();
  sub_1C97AE9DC();
  v78 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v58 - v16;
  v66 = a2[3];
  v17 = sub_1C9A928B8();
  v21 = sub_1C98F4000(v17, v18, v19, v20, MEMORY[0x1E695C0A0]);
  sub_1C98F3FAC();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = v17;
  v81 = v21;
  v82 = WitnessTable;
  v83 = AssociatedConformanceWitness;
  v24 = sub_1C9A91CF8();
  v69 = v24;
  v25 = a2[6];
  sub_1C98F4000(v24, v26, v27, v28, MEMORY[0x1E695BC48]);
  v61 = v25;
  swift_getAssociatedTypeWitness();
  v29 = sub_1C9A928B8();
  v67 = v13;
  v68 = v29;
  v30 = swift_getWitnessTable();
  v65 = v30;
  sub_1C98F3FC4();
  v64 = swift_getWitnessTable();
  v80 = v13;
  v81 = v24;
  v82 = v29;
  v83 = v30;
  v84 = v64;
  _s15StatefulFlatMapVMa(0, &v80);
  sub_1C97AE9DC();
  v70 = v31;
  v71 = v32;
  MEMORY[0x1EEE9AC00](v31);
  v63 = &v58 - v33;
  v34 = swift_allocObject();
  v35 = v11;
  v34[2] = v11;
  v36 = v66;
  v37 = v72;
  v34[3] = v66;
  v34[4] = v37;
  v38 = v12;
  v39 = a2;
  v60 = a2;
  v40 = a2[5];
  v34[5] = v12;
  v34[6] = v40;
  v41 = v74;
  v34[7] = v74;
  v34[8] = v25;
  v42 = v35;
  v58 = v35;
  v43 = v38;
  v59 = v38;
  v44 = v76;
  sub_1C9A92028();

  v45 = v75;
  v46 = v73;
  (*(v75 + 16))(v73, v44, v39);
  v47 = v45;
  v48 = (*(v45 + 80) + 72) & ~*(v45 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = v42;
  *(v49 + 3) = v36;
  *(v49 + 4) = v37;
  *(v49 + 5) = v43;
  *(v49 + 6) = v40;
  *(v49 + 7) = v41;
  v50 = v61;
  *(v49 + 8) = v61;
  (*(v47 + 32))(&v49[v48], v46, v60);
  v51 = swift_allocObject();
  v51[2] = v58;
  v51[3] = v36;
  v52 = v59;
  v51[4] = v37;
  v51[5] = v52;
  v51[6] = v40;
  v51[7] = v41;
  v51[8] = v50;
  v53 = v63;
  v54 = v67;
  v55 = v62;
  sub_1C99E038C(1, sub_1C98F3DD0, v49, sub_1C98F3EA8, v51, v67, v69, v68, v63, v65, v64);

  (*(v78 + 8))(v55, v54);
  v56 = v70;
  swift_getWitnessTable();
  sub_1C9A920B8();
  return (*(v71 + 8))(v53, v56);
}

uint64_t sub_1C98F2E38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v133 = a8;
  v137 = a6;
  v139 = a3;
  v107 = a2;
  v136 = a1;
  v98 = a9;
  v135 = a10;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v131 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v119 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v118 = &v90 - v18;
  v126 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v122 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v129 = &v90 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v90 - v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v138 = AssociatedTypeWitness;
  v121 = AssociatedConformanceWitness;
  v117 = sub_1C9A92EE8();
  v110 = *(v117 - 8);
  v25 = MEMORY[0x1EEE9AC00](v117);
  v116 = &v90 - v26;
  v100 = *(a5 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v105 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v125 = &v90 - v29;
  v30 = sub_1C9A928B8();
  WitnessTable = swift_getWitnessTable();
  v147 = v30;
  v148 = MEMORY[0x1E69E73E0];
  v92 = WitnessTable;
  v149 = WitnessTable;
  v150 = MEMORY[0x1E69E7410];
  v95 = sub_1C9A91CF8();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v90 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v130 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v132 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v123 = &v90 - v37;
  v91 = v38;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v90 - v39;
  v134 = swift_checkMetadataState();
  sub_1C9A92D18();
  v136 = v33;
  v41 = sub_1C9A928B8();
  v115 = v40;
  v42 = v107;
  sub_1C9A92888();
  v43 = *v42;
  v152 = 0;
  v153 = v43;
  v140 = a4;
  v141 = a5;
  v142 = v137;
  v143 = a7;
  v44 = v133;
  v144 = v133;
  v145 = v135;
  v146 = a11;

  swift_getWitnessTable();
  v104 = v41;
  sub_1C9A926B8();

  v45 = v147;
  v96 = a4;
  v147 = a4;
  v148 = a5;
  v97 = a7;
  v149 = a7;
  v150 = v44;
  v135 = a11;
  v151 = a11;
  v46 = type metadata accessor for SliceWithStride(0, &v147);
  v48 = sub_1C98F288C(v45, v47, v46);
  v49 = a5;
  v147 = sub_1C9A922E8();
  v106 = v30;
  result = sub_1C9A927E8();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v51 = v107;
    v52 = v124;
    v53 = v125;
    v54 = v136;
    v55 = v123;
    if (!v48)
    {
LABEL_19:
      v153 = v147;
      v88 = v93;
      sub_1C9A92658();

      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v89 = v95;
      sub_1C9A91CE8();
      return (*(v94 + 8))(v88, v89);
    }

    v108 = 0;
    v56 = *(v46 + 64);
    v99 = *(v139 + *(v46 + 60));
    v102 = *(v139 + v56);
    v127 = (v130 + 16);
    v128 = (v130 + 32);
    v114 = v126 + 1;
    v113 = (v126 + 4);
    v112 = (v131 + 16);
    v111 = (v131 + 32);
    ++v110;
    v126 = (v130 + 8);
    v101 = (v100 + 2);
    ++v100;
    v103 = v48;
    v109 = v49;
    while (1)
    {
      sub_1C9A92ED8();
      v57 = *v51;

      v58 = sub_1C9A927A8();
      v153 = v58;
      v59 = sub_1C9A92878();
      v60 = v54;
      v61 = v57;
      v62 = v132;
      if (v58 != v59)
      {
        break;
      }

LABEL_18:
      v84 = v108 + 1;

      (*v101)(v105, v53, v49);
      sub_1C9A92888();
      v85 = v104;
      v86 = swift_getWitnessTable();
      v87 = swift_getAssociatedConformanceWitness();
      v54 = v60;
      v51 = v107;
      sub_1C97AA99C(v107, v102, v85, v86, v87, MEMORY[0x1E69E6570]);
      (*v100)(v53, v49);
      v108 = v84;
      if (v84 == v103)
      {
        goto LABEL_19;
      }
    }

    v139 = v99;
    v131 = v61;
    while (1)
    {
      v63 = sub_1C9A92858();
      sub_1C9A927D8();
      if (v63)
      {
        (*(v130 + 16))(v55, v61 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v58, v60);
        v64 = v129;
      }

      else
      {
        result = sub_1C9A935F8();
        v64 = v129;
        if (v91 != 8)
        {
          goto LABEL_23;
        }

        v152 = result;
        (*v127)(v55, &v152, v60);
        swift_unknownObjectRelease();
      }

      v65 = v138;
      sub_1C9A928A8();
      (*v128)(v62, v55, v60);
      swift_getAssociatedConformanceWitness();
      v66 = sub_1C9A92C08();
      v67 = v139;
      if (v139 >= v66)
      {
        v67 = v66;
      }

      v137 = v67;
      if (!v67)
      {
        (*v126)(v62, v60);
        goto LABEL_18;
      }

      sub_1C9A92BF8();
      v68 = v122;
      sub_1C9A92BF8();
      sub_1C9A92C28();
      v69 = *v114;
      (*v114)(v68, v65);
      result = sub_1C9A923E8();
      if ((result & 1) == 0)
      {
        break;
      }

      v70 = *v113;
      v71 = v52;
      v72 = v118;
      (*v113)(v118, v71, v65);
      v73 = TupleTypeMetadata2;
      v70(&v72[*(TupleTypeMetadata2 + 48)], v64, v65);
      v74 = v119;
      (*v112)(v119, v72, v73);
      v75 = *(v73 + 48);
      v76 = v116;
      v70(v116, v74, v138);
      v77 = &v74[v75];
      v78 = v138;
      v69(v77, v138);
      (*v111)(v74, v72, v73);
      v79 = *(v73 + 48);
      v80 = v117;
      v70(&v76[*(v117 + 36)], &v74[v79], v78);
      v69(v74, v78);
      v81 = v132;
      sub_1C9A92D48();
      v60 = v136;
      (*v110)(v76, v80);
      v53 = v125;
      v49 = v109;
      sub_1C9A92D88();
      result = (*v126)(v81, v60);
      v82 = __OFSUB__(v139, v137);
      v139 -= v137;
      if (v82)
      {
        goto LABEL_21;
      }

      v62 = v81;
      v61 = v131;
      v83 = sub_1C9A92878();
      v58 = v153;
      v52 = v124;
      v55 = v123;
      if (v153 == v83)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1C98F3C70@<X0>(uint64_t *a1@<X0>, void *a4@<X8>, uint64_t a5)
{
  v6 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1C9A92C08();
  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a4 = v6 + result;
  }

  return result;
}

uint64_t sub_1C98F3D3C@<X0>(uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1C9A922E8();
  *a4 = result;
  return result;
}

uint64_t sub_1C98F3DD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  v12 = *(v3 + 16);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  v15 = *(v3 + 40);
  v13 = v15;
  v14 = v12;
  v16 = v9;
  v10 = *(type metadata accessor for SliceWithStride(0, &v14) - 8);
  return sub_1C98F2E38(a1, a2, v3 + ((*(v10 + 80) + 72) & ~*(v10 + 80)), v12, *(&v12 + 1), v7, v13, *(&v13 + 1), a3, v8, v9);
}

uint64_t sub_1C98F3EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[6];
  v8 = *(type metadata accessor for MaximumSlice(0, v5, v6, v7) - 8);
  v9 = v2 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return sub_1C98F1E84(a1, v9, v5, v6, v7, a2);
}

uint64_t sub_1C98F3FDC()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C98F4000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

BOOL sub_1C98F4044(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_1C98F4070()
{
  v1 = *v0;
  v8 = v0;
  v2 = v1;
  WitnessTable = swift_getWitnessTable();
  sub_1C98F421C(&v9, &v8, v2, WitnessTable, v4, v5, v6, v7, v8, 0, 0);
}

uint64_t sub_1C98F40F8(void *__src)
{
  memcpy(__dst, __src, 0x41uLL);
  memcpy(v12, __dst, sizeof(v12));
  v13 = 0x40467A0000;
  v14 = 0x45EA600042FA0000;
  v15 = 0x3C23D70A00000002;
  v16 = 0;
  v17 = xmmword_1C9AA7B00;
  v18 = 0;
  sub_1C97E2DB0(__src, v4);
  v2 = sub_1C97DADD4(v12);
  memcpy(v4, __dst, sizeof(v4));
  v5 = 0x40467A0000;
  v6 = 0x45EA600042FA0000;
  v7 = 0x3C23D70A00000002;
  v8 = 0;
  v9 = xmmword_1C9AA7B00;
  v10 = 0;
  sub_1C97DA1E0(v4, &qword_1EC3C7360, &unk_1C9AA7DA0);
  return v2;
}

void sub_1C98F421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  sub_1C97AEB94();
  v45 = v11;
  v13 = v12;
  v15 = v14;
  v44 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v19 = v18;
  sub_1C97ABFF0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - v22;
  v27 = sub_1C98FA38C(v21, v24, v25, v26, &unk_1C9AF8DDC);
  v42 = v27;
  v31 = sub_1C98FA38C(v27, v28, v29, v30, &unk_1C9AF8DE4);
  v35 = sub_1C98FA38C(v31, v32, v33, v34, &unk_1C9AF8DEC);
  v46 = AssociatedTypeWitness;
  v47 = v27;
  v48 = v31;
  *v49 = v35;
  v43 = type metadata accessor for SharedLogMelSpectrogram.Configuration(0, &v46);
  sub_1C97AE9C8();
  v37 = v36;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v42 - v39;
  (*(v19 + 16))(v23, v44, AssociatedTypeWitness);
  v46 = 0x40467A0000;
  v47 = 0x45EA600042FA0000;
  v48 = 0x3C23D70A00000002;
  v49[0] = 0;
  *&v49[1] = *(&a11 + 1);
  v49[3] = HIBYTE(a11);
  *&v49[4] = xmmword_1C9AA7B00;
  v50 = 0;
  v41 = sub_1C97AC598(&v46, AssociatedTypeWitness, v42, v31, v35, v40);
  (*(v13 + 40))(v40, v15, v13, v41);
  (*(v37 + 8))(v40, v43);
  sub_1C97AEB5C();
}

uint64_t sub_1C98F4478()
{
  if (qword_1EC3C5E00 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  return sub_1C98F40F8(__dst);
}

uint64_t sub_1C98F44F4()
{
  v6[3] = &unk_1F492E308;
  v6[4] = &off_1F492E690;
  v2 = swift_allocObject();
  v6[0] = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);

  v4 = sub_1C99A7FC0(v6, 0xD000000000000031, 0x80000001C9AD8F40);
  if (!v1)
  {
    LOBYTE(v0) = v4;
  }

  sub_1C97A592C(v6);
  return v0 & 1;
}

void sub_1C98F4610(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1C98FA360();
  sub_1C98F421C(v1, v2, v3, v1, v4, v5, v6, v7, v8, v9, SHIDWORD(v9));
}

id static AccessibilitySoundActions.isSupported.getter()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C98FA3F0();
  v1 = sub_1C99B590C();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    return (v1 != 0);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if (exclaveCapability)
    {
      v7 = MGGetProductType();
      if (qword_1EC3C5D98 != -1)
      {
        sub_1C9871824(&qword_1EC3C5D98);
      }

      v8 = qword_1EC3D31E8;

      return sub_1C98F4044(v7, v8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C98F47E0()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v0 = qword_1EC3C5BB0;
  v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C98FA3F0();
  v2 = sub_1C99B590C();
  v4 = v3;

  if ((v4 & 1) == 0)
  {
    if (!v2)
    {
LABEL_9:
      v9 = 0;
      return (v9 & 1);
    }

LABEL_11:
    v10 = [v0 dictionaryRepresentation];
    sub_1C9A92328();

    v11 = sub_1C99B590C();
    LOBYTE(v10) = v12;

    v9 = v10 | (v11 == 0);
    return (v9 & 1);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if ((exclaveCapability & 1) == 0)
    {
      goto LABEL_9;
    }

    v8 = MGGetProductType();
    if (qword_1EC3C5D98 != -1)
    {
      sub_1C9871824(&qword_1EC3C5D98);
    }

    if (!sub_1C98F4044(v8, qword_1EC3D31E8))
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t AccessibilitySoundActions.SoundAction.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AccessibilitySoundActions.SoundAction.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C9A93B18();
  }
}

uint64_t sub_1C98F4A3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C98F4ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98F4A3C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C98F4B08(uint64_t a1)
{
  v2 = sub_1C98F8574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98F4B44(uint64_t a1)
{
  v2 = sub_1C98F8574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AccessibilitySoundActions.SoundAction.encode(to:)()
{
  sub_1C97AEB94();
  v2 = v1;
  v3 = sub_1C97A2CEC(&qword_1EC3CC160, &qword_1C9AB20B0);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2C8();
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C98F8574();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  (*(v5 + 8))(v0, v3);
  sub_1C97AEB5C();
}

uint64_t AccessibilitySoundActions.SoundAction.hashValue.getter()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void AccessibilitySoundActions.SoundAction.init(from:)()
{
  sub_1C97AEB94();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C97A2CEC(&qword_1EC3CC170, &qword_1C9AB20B8);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97FB2C8();
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C98F8574();
  sub_1C9A93DB8();
  if (!v0)
  {
    v10 = sub_1C9A938A8();
    v12 = v11;
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    v5[1] = v12;
  }

  sub_1C97A592C(v3);
  sub_1C97AEB5C();
}

uint64_t sub_1C98F4E7C(uint64_t a1)
{
  v2 = sub_1C98F85C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98F4EB8(uint64_t a1)
{
  v2 = sub_1C98F85C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilitySoundActions.Request.encode(to:)(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC178, &qword_1C9AB20C0);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C98F85C8();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

void sub_1C98F50A4()
{
  sub_1C97AEB94();
  v31 = v2;
  v32 = v3;
  v5 = v4;
  v27 = v7;
  v28 = v6;
  v8 = sub_1C97A2CEC(&unk_1EC3CC2A0, &qword_1C9AA7E00);
  sub_1C97AE9C8();
  v29 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v15 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2C8();
  v30 = v5;
  sub_1C99B8818();
  if (!v0)
  {
    v25 = v15;
    v26 = AssociatedTypeWitness;
    sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
    sub_1C97AE9EC();
    sub_1C97AE67C(v17, &unk_1EC3CC280, &qword_1C9A9C7A0, v18);
    sub_1C9A91F68();
    sub_1C97AE67C(&qword_1EC3C9B48, &unk_1EC3CC2A0, &qword_1C9AA7E00, MEMORY[0x1E695BD60]);
    sub_1C9A91F28();
    (*(v29 + 8))(v12, v8);
    sub_1C99F4F74();

    v19 = sub_1C988EB2C();
    sub_1C97A2CEC(v19, v20);
    sub_1C97AE9EC();
    sub_1C98FA360();
    sub_1C97AE67C(v21, v22, v23, v24);
    sub_1C9A92048();

    (*(v25 + 8))(v1, v26);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98F53B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  *a2 = v3;
}

uint64_t sub_1C98F540C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C97BD360(a1, v7);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    sub_1C986F098();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_1C98F54A8()
{
  sub_1C97AEB94();
  v161 = v0;
  v162 = v1;
  v164 = v2;
  v167 = v3;
  v143 = v4;
  v140 = type metadata accessor for AccessibilitySoundActions.Session(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98FA34C();
  sub_1C97ABFB4(v6);
  v134 = sub_1C97A2CEC(&qword_1EC3C9AE8, &unk_1C9AA7DC0);
  sub_1C97AE9C8();
  v133 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97ABFB4(v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97ABFB4(v123 - v12);
  v138 = sub_1C97A2CEC(&qword_1EC3C7810, &unk_1C9AB25D0);
  sub_1C97AE9C8();
  v136 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AC02C();
  sub_1C97ABFB4(v15);
  v139 = sub_1C97A2CEC(&qword_1EC3CC200, &qword_1C9AA7DD0);
  sub_1C97AE9C8();
  v137 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  sub_1C97ABFB4(v18);
  v144 = sub_1C97A2CEC(&unk_1EC3C9AF0, &qword_1C9AA7DD8);
  sub_1C97AE9C8();
  v141 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AC02C();
  v158 = v21;
  v151 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97AE9C8();
  v149 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97AC02C();
  v147 = v24;
  v159 = sub_1C9A91C28();
  sub_1C97AE9C8();
  v146 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C98FA34C();
  sub_1C97ABFB4(v27);
  v152 = sub_1C97A2CEC(&unk_1EC3CD670, &qword_1C9AA7D50);
  sub_1C97AE9C8();
  v150 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97AC02C();
  v148 = v30;
  v154 = sub_1C97A2CEC(&unk_1EC3CC270, qword_1C9AA7DE0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AC02C();
  v153 = v32;
  sub_1C97A2CEC(&qword_1EC3C9B00, &unk_1C9AB2620);
  sub_1C97AE9C8();
  v155 = v34;
  v156 = v33;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  v157 = v36;
  v37 = sub_1C9A91748();
  sub_1C97AE9C8();
  v39 = v38;
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = v123 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = v123 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = v123 - v47;
  sub_1C9A91738();
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v49 = sub_1C9A91B58();
  v50 = sub_1C97BFF6C(v49, qword_1EC3D3108);
  v51 = *(v39 + 16);
  v127 = v39 + 16;
  v126 = v51;
  v51(v46, v48, v37);
  v128 = v50;
  v52 = sub_1C9A91B38();
  v53 = sub_1C9A92FC8();
  v54 = os_log_type_enabled(v52, v53);
  v129 = v43;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v163 = v39;
    v56 = v55;
    v57 = swift_slowAlloc();
    v160 = v48;
    v58 = v57;
    v165 = v57;
    *v56 = 136446210;
    sub_1C97AE3DC();
    v59 = sub_1C9A93A98();
    v60 = v37;
    v62 = v61;
    v63 = *(v163 + 8);
    v63(v46, v60);
    v64 = sub_1C9849140(v59, v62, &v165);
    v37 = v60;

    *(v56 + 4) = v64;
    _os_log_impl(&dword_1C9788000, v52, v53, "Started Creating Accessibility Sound Actions Session %{public}s", v56, 0xCu);
    sub_1C97A592C(v58);
    v48 = v160;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v39 = v163;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    v63 = *(v39 + 8);
    v63(v46, v37);
  }

  v65 = v161;
  v66 = v162;
  (*(v162 + 40))(v164, v162);
  if (v65)
  {
    v63(v48, v37);
  }

  else
  {
    v124 = v63;
    v163 = v39;
    v160 = v48;
    v125 = v37;
    v67 = sub_1C97AC6A0();
    v161 = 0;
    v68 = v67;
    v123[2] = v67;

    v165 = v68;
    v69 = v146;
    v70 = v145;
    (*(v146 + 104))(v145, *MEMORY[0x1E695BD20], v159);
    v71 = v147;
    *v147 = sub_1C98F63E0;
    v71[1] = 0;
    v72 = v149;
    v73 = v151;
    (*(v149 + 104))(v71, *MEMORY[0x1E695BD48], v151);
    v123[1] = sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
    sub_1C97AE9EC();
    sub_1C97AE67C(v74, &unk_1EC3CC280, &qword_1C9A9C7A0, v75);
    v76 = v148;
    sub_1C9A92018();
    (*(v72 + 8))(v71, v73);
    (*(v69 + 8))(v70, v159);

    v77 = sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
    sub_1C98FA328(&qword_1EC3CD6A0, &unk_1EC3CD670, &qword_1C9AA7D50);
    v78 = v152;
    v79 = v153;
    sub_1C9A91F68();
    (*(v150 + 8))(v76, v78);
    v80 = v154;
    *(v79 + *(v154 + 60)) = 96;
    *(v79 + *(v80 + 64)) = 2;
    *(v79 + *(v80 + 68)) = v77;
    sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
    sub_1C97AE67C(&qword_1EC3C9B08, &unk_1EC3CC270, qword_1C9AA7DE0, &unk_1C9AB2030);
    v81 = v157;
    sub_1C9A91F68();
    v82 = sub_1C97DA1E0(v79, &unk_1EC3CC270, qword_1C9AA7DE0);
    MEMORY[0x1EEE9AC00](v82);
    v123[-4] = v164;
    v123[-3] = v66;
    v123[-2] = v81;
    v123[-1] = v167;
    v83 = v161;
    sub_1C993B85C();
    if (v83)
    {
      v124(v160, v125);
      (*(v155 + 8))(v81, v156);
    }

    else
    {
      sub_1C97AE67C(&qword_1EC3C9B10, &unk_1EC3C9AF0, &qword_1C9AA7DD8, MEMORY[0x1E695BE28]);
      v84 = v132;
      sub_1C9A91F68();
      v85 = v133;
      v86 = v131;
      v87 = v134;
      (*(v133 + 16))(v131, v84, v134);
      v88 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = sub_1C98FA208;
      *(v89 + 24) = 0;
      (*(v85 + 32))(v89 + v88, v86, v87);
      v90 = sub_1C988EB2C();
      sub_1C97A2CEC(v90, v91);
      sub_1C97AE9EC();
      sub_1C98FA360();
      sub_1C97AE67C(v92, v93, v94, v95);
      v96 = v135;
      sub_1C9A91EF8();
      (*(v85 + 8))(v84, v87);
      v165 = 0;
      v166 = 0xE000000000000000;
      sub_1C9A935B8();

      sub_1C98FA3DC();
      v165 = v98;
      v166 = v97;
      sub_1C97AE3DC();
      v99 = v160;
      v100 = v125;
      v101 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v101);

      MEMORY[0x1CCA90230](8250, 0xE200000000000000);
      sub_1C993B1BC();

      (*(v136 + 8))(v96, v138);
      sub_1C98352CC(&unk_1EC3C9B30, &qword_1EC3CC200, &qword_1C9AA7DD0);
      v102 = sub_1C9A91F28();
      v103 = sub_1C98135E0();
      v104(v103);
      v105 = v142;
      v106 = v126;
      v126(v142, v99, v100);
      *(v105 + *(v140 + 20)) = v102;
      v107 = v129;
      v106(v129, v99, v100);
      v108 = sub_1C9A91B38();
      v109 = sub_1C9A92FC8();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v161 = 0;
        v111 = v110;
        v168 = swift_slowAlloc();
        v165 = v168;
        *v111 = 136446210;
        v112 = sub_1C9A93A98();
        v114 = v113;
        v115 = v107;
        v116 = v124;
        v124(v115, v100);
        v117 = sub_1C9849140(v112, v114, &v165);

        *(v111 + 4) = v117;
        _os_log_impl(&dword_1C9788000, v108, v109, "Finished Creating Accessibility Sound Actions Session %{public}s", v111, 0xCu);
        sub_1C97A592C(v168);
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();

        v118 = sub_1C98FA3AC();
        v119(v118);
        v116(v160, v125);
      }

      else
      {

        v120 = v124;
        v124(v107, v100);
        v121 = sub_1C98FA3AC();
        v122(v121);
        v120(v99, v100);
      }

      sub_1C98F8668(v105, v143);
      (*(v155 + 8))(v157, v156);
    }
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98F63E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v10[1] = a1;
  v10[2] = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v10 - v7;
  sub_1C97A2CEC(&qword_1EC3C9B00, &unk_1C9AB2620);
  sub_1C97AE67C(&qword_1EC3C9B40, &qword_1EC3C9B00, &unk_1C9AB2620, MEMORY[0x1E695BD60]);
  sub_1C9A91F28();
  (*(v5 + 16))(a2, v5);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C98F50A4();
  (*(v11 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_1C98F65FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1C98F66B8()
{
  sub_1C97AA95C();
  v0[5] = &unk_1F492E330;
  v0[6] = &off_1F492E6A0;
  sub_1C97A5A8C(v0 + 2, &unk_1F492E330);
  swift_storeEnumTagMultiPayload();
  sub_1C97DA8BC();
  sub_1C97DA928();
  v0[11] = v1;
  *v1 = v2;
  v1[1] = sub_1C98F6780;
  v3 = v0[10];
  v4 = v0[8];

  return v6(v4, v3);
}

uint64_t sub_1C98F6780()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98F687C()
{
  sub_1C97AA95C();
  v2 = v0[7];
  v1 = v0[8];
  sub_1C98FA2D8();
  sub_1C98F8668(v1, v2);
  sub_1C97A592C(v0 + 2);

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C98F6908()
{
  sub_1C97AA884();
  sub_1C98FA2D8();
  sub_1C97A592C((v0 + 16));

  sub_1C97DA91C();

  return v1();
}

void sub_1C98F6980()
{
  sub_1C97AEB94();
  v2 = v1;
  v83 = v3;
  sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97AE9C8();
  v76 = v5;
  v77 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AC02C();
  v75 = v7;
  sub_1C9A91C28();
  sub_1C97AE9C8();
  v73 = v9;
  v74 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98FA34C();
  v72 = v10;
  v11 = sub_1C97A2CEC(&qword_1EC3CB640, &qword_1C9AAF998);
  sub_1C97AE9C8();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v62 - v18;
  sub_1C97A2CEC(&qword_1EC3C7810, &unk_1C9AB25D0);
  sub_1C97AE9C8();
  v64 = v21;
  v65 = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AC02C();
  v63 = v23;
  sub_1C97A2CEC(&qword_1EC3CC200, &qword_1C9AA7DD0);
  sub_1C97AE9C8();
  v67 = v25;
  v68 = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AC02C();
  v66 = v27;
  sub_1C97A2CEC(&qword_1EC3CC208, &qword_1C9AB25E0);
  sub_1C97AE9C8();
  v70 = v29;
  v71 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v69 = v31;
  v33 = v2[3];
  v32 = v2[4];
  sub_1C97A5A8C(v2, v33);
  (*(*(v32 + 8) + 8))(v33);
  if (!v0)
  {
    v62[3] = 0;
    v34 = sub_1C99CFB50();

    sub_1C98F9BA0(v2, &v78);
    v35 = swift_allocObject();
    sub_1C98F9C04(&v78, (v35 + 16));
    sub_1C9A91738();
    *&v78 = v34;
    *(&v78 + 1) = sub_1C98F7170;
    v79 = 0;
    v80 = sub_1C98F9C1C;
    v81 = v35;
    v82 = 1;
    v62[2] = v34;

    v62[1] = v35;

    v62[0] = v11;
    sub_1C97A2CEC(&qword_1EC3CC210, &unk_1C9AB25E8);
    sub_1C97AE67C(&qword_1EC3CC218, &qword_1EC3CC210, &unk_1C9AB25E8, &unk_1C9AC6E08);
    sub_1C9A91F68();

    v36 = v62[0];
    (*(v13 + 16))(v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v62[0]);
    v37 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1C98FA208;
    *(v38 + 24) = 0;
    v39 = v36;
    (*(v13 + 32))(v38 + v37, v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
    v40 = sub_1C988EB2C();
    sub_1C97A2CEC(v40, v41);
    sub_1C97AE9EC();
    sub_1C98FA360();
    sub_1C97AE67C(v42, v43, v44, v45);
    v46 = v63;
    sub_1C9A91EF8();
    (*(v13 + 8))(v19, v39);
    *&v78 = 0;
    *(&v78 + 1) = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C98FA3DC();
    *&v78 = v48;
    *(&v78 + 1) = v47;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v49 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v49);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    sub_1C993B1BC();

    (*(v64 + 8))(v46, v65);
    sub_1C98352CC(&unk_1EC3C9B30, &qword_1EC3CC200, &qword_1C9AA7DD0);
    sub_1C9A92008();
    v65 = sub_1C97A2CEC(&qword_1EC3CC220, &qword_1C9AB25F8);
    swift_allocObject();
    v50 = sub_1C9945DA4();
    v51 = sub_1C98135E0();
    v52(v51);
    *&v78 = v50;
    v54 = v72;
    v53 = v73;
    v55 = v74;
    (*(v73 + 104))(v72, *MEMORY[0x1E695BD20], v74);
    v57 = v75;
    v56 = v76;
    *v75 = sub_1C98F75E0;
    v57[1] = 0;
    v58 = v77;
    (*(v56 + 104))(v57, *MEMORY[0x1E695BD48], v77);
    sub_1C97AE67C(&qword_1EC3CC228, &qword_1EC3CC220, &qword_1C9AB25F8, &unk_1C9AB48D0);
    sub_1C9A92018();
    (*(v56 + 8))(v57, v58);
    (*(v53 + 8))(v54, v55);

    sub_1C98FA328(&unk_1EC3CC230, &qword_1EC3CC208, &qword_1C9AB25E0);
    v59 = sub_1C9A91F28();

    v60 = sub_1C98135E0();
    v61(v60);
    *(v83 + *(type metadata accessor for AccessibilitySoundActions.Session(0) + 20)) = v59;
  }

  sub_1C97AEB5C();
}