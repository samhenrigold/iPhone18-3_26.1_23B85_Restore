uint64_t sub_1C4BAE438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BAD488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BAE460@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46154F4();
  *a1 = result;
  return result;
}

uint64_t sub_1C4BAE488(uint64_t a1)
{
  v2 = sub_1C4BB2BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BAE4C4(uint64_t a1)
{
  v2 = sub_1C4BB2BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BAE530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4505F5C(&qword_1EC0C4538, _s16ViewConfigRecordVMa, &unk_1C4F59644);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4BAE5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4505F5C(&qword_1EC0C4550, _s16ViewConfigRecordVMa, &unk_1C4F595DC);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4BAE748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4505F5C(&qword_1EC0C4558, _s16ViewConfigRecordVMa, &unk_1C4F5961C);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void sub_1C4BAE7E8()
{
  sub_1C43FE96C();
  v78 = v1;
  v79 = v0;
  v76 = v2;
  v77 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v71 = v14;
  sub_1C43FBE44();
  sub_1C4EFBC98();
  sub_1C43FCDF8();
  v74 = v16;
  v75 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v73 = v18 - v17;
  sub_1C43FBE44();
  v85 = sub_1C4EFB678();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  v72 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v71 - v25;
  v27 = _s6ConfigVMa(0);
  v28 = sub_1C43FBD18(v27);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  sub_1C4438D00(v30 - v29);
  sub_1C4EFB648();
  sub_1C43FE984();
  sub_1C4EFB638();
  v83 = MEMORY[0x1E69E6530];
  v84 = MEMORY[0x1E69A0178];
  v80 = v9;
  sub_1C4EFB658();
  sub_1C4420C3C(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440FCD0();
  v32 = *(v11 + 8);
  v80 = *v11;
  v81 = v32;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C440FCD0();
  v33 = _s10ViewConfigVMa(0);
  v34 = v11 + *(v33 + 76);
  if (*(v34 + 8))
  {
    v35 = *(v34 + 32);
    v36 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v37 = MEMORY[0x1E69A0130];
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v82 = 0;
  }

  v80 = v35;
  v81 = v36;
  sub_1C448E0D8(v37);
  sub_1C4420C3C(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440FCD0();
  v80 = v7;
  v81 = v5;
  sub_1C440189C();
  sub_1C4EFB668();
  sub_1C440FCD0();
  sub_1C445EDE8(*(v11 + 32));
  v80 = v38;
  v81 = v39;
  sub_1C440189C();
  sub_1C4EFB668();

  sub_1C440FCD0();
  if (*(v11 + 136) == 30)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v82 = 0;
  }

  else
  {
    sub_1C4BDC4C0();
    v42 = MEMORY[0x1E69A0130];
  }

  v80 = v40;
  v81 = v41;
  sub_1C448E0D8(v42);
  sub_1C4420C3C(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440FCD0();
  v43 = *(v11 + 296);
  if (v43)
  {
    v44 = *(v11 + 288);
    v45 = MEMORY[0x1E69A0130];
    v46 = MEMORY[0x1E69E6158];
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v45 = 0;
    v82 = 0;
  }

  v80 = v44;
  v81 = v43;
  v83 = v46;
  v84 = v45;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB658();
  v47 = sub_1C440189C();
  sub_1C4420C3C(v47, v48, &qword_1C4F0F950);
  sub_1C440FCD0();
  v49 = *(v11 + *(v33 + 88));
  v83 = MEMORY[0x1E69E6370];
  v84 = MEMORY[0x1E69A0148];
  LOBYTE(v80) = v49 & 1;
  sub_1C4EFB658();
  v50 = sub_1C440189C();
  sub_1C4420C3C(v50, v51, &qword_1C4F0F950);
  sub_1C440FCD0();
  sub_1C4C6EC08(*v31);
  v80 = v52;
  v81 = v53;
  sub_1C4EFB668();

  sub_1C440FCD0();
  v54 = *(v31 + 16);
  v80 = *(v31 + 8);
  v81 = v54;
  sub_1C4EFB668();
  sub_1C440FCD0();
  v55 = sub_1C4C895B8(v31);
  if (v56)
  {
    v57 = MEMORY[0x1E69A0130];
  }

  else
  {
    v55 = 0;
    v57 = 0;
    v82 = 0;
  }

  v80 = v55;
  v81 = v56;
  sub_1C448E0D8(v57);
  sub_1C4420C3C(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440FCD0();
  v58 = v79;
  v59 = Array<A>.jsonString()(v78);
  if (v58)
  {
    (*(v20 + 8))(v26, v85);
  }

  else
  {
    v80 = v59;
    v81 = v60;
    sub_1C4EFB668();

    sub_1C440FCD0();
    v80 = Array<A>.jsonString()(v77);
    v81 = v61;
    sub_1C4EFB668();

    sub_1C440FCD0();
    v83 = v33;
    sub_1C442D4F8();
    v84 = sub_1C4505F5C(v62, v63, &unk_1C4F59450);
    sub_1C4422F90(&v80);
    sub_1C44038A8();
    sub_1C443BF44(v11, v64);
    sub_1C4EFB658();
    sub_1C4420C3C(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C4EFB638();
    (*(v20 + 32))(v72, v26, v85);
    v65 = v73;
    sub_1C4EFBC88();
    sub_1C4EFBEE8();
    (*(v74 + 8))(v65, v75);
    sub_1C4EFB768();
    v66 = v71;
    sub_1C43FCF64();
    sub_1C440BAA8(v67, v68, v69, v70);
    sub_1C4EFC0A8();

    sub_1C4420C3C(v66, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C443C070(v31, _s6ConfigVMa);
  sub_1C43FBC80();
}

void sub_1C4BAEE80(uint64_t *a1@<X8>)
{
  sub_1C4BAEEAC();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1C4BAEEAC()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4402A68();
  sub_1C43FE984();
  v4 = sub_1C4EFBED8();
  if (v0)
  {
    goto LABEL_3;
  }

  v5 = v4;
  sub_1C4EFBC58();
  sub_1C43FBE94();
  sub_1C4EFB768();
  sub_1C43FCF64();
  sub_1C44112DC(v6, v7, v8, v9);
  v10 = sub_1C4EFBC28();

  sub_1C4420C3C(&v45, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
  v11 = sub_1C4428DA0(v10);
  v12 = 0;
  v43 = v10 & 0xC000000000000001;
  v44 = v11;
  v13 = MEMORY[0x1E69E7CC8];
  v41 = v10;
  v42 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_4:
  v14 = v12;
  v47 = v13;
  while (1)
  {
    if (v44 == v14)
    {

LABEL_3:
      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    if (v43)
    {
      v11 = MEMORY[0x1C6940F90](v14, v10);
      v15 = v11;
    }

    else
    {
      if (v14 >= *(v42 + 16))
      {
        goto LABEL_34;
      }

      v15 = *(v10 + 8 * v14 + 32);
    }

    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    sub_1C44091DC();
    sub_1C4EFBBA8();
    v16 = sub_1C4EFBBE8();
    if (v16)
    {
      v13 = v16;
      sub_1C442AA00();
      MEMORY[0x1EEE9AC00](v17);
      v5 = (&v39 - 4);
      *(&v39 - 2) = v15;
      *(&v39 - 1) = 0;
      v11 = sqlite3_column_type(v18, 0);
      if (v11 == 5)
      {
        goto LABEL_37;
      }

      v19 = sub_1C4F011E8();
      v21 = v20;
    }

    else
    {
      sub_1C446C094();
      sub_1C4EFBB98();
      v19 = v45;
      v21 = v46;
    }

    sub_1C445FEE0();
    sub_1C4EFBBA8();
    v22 = sub_1C4EFBBE8();
    if (v22)
    {
      if (sqlite3_column_type(v22, 1) != 5)
      {
        v5 = sub_1C4F011E8();
        v24 = v23;
        v45 = v5;
        if (v23)
        {
LABEL_23:
          v13 = v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v47;
          v11 = sub_1C445FAA8(v19, v21);
          v39 = v11;
          v26 = v47[2];
          v48 = v27;
          if (__OFADD__(v26, (v27 & 1) == 0))
          {
            goto LABEL_35;
          }

          sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
          if (sub_1C4F02458())
          {
            v28 = sub_1C445FAA8(v19, v21);
            if ((v48 & 1) != (v29 & 1))
            {
              goto LABEL_38;
            }

            v30 = v28;
            if ((v48 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v30 = v39;
            if ((v48 & 1) == 0)
            {
LABEL_27:
              v13 = v45;
              v45[(v30 >> 6) + 8] |= 1 << v30;
              v31 = (v13[6] + 16 * v30);
              *v31 = v19;
              v31[1] = v21;
              v32 = (v13[7] + 16 * v30);
              *v32 = v5;
              v32[1] = v24;

              v33 = v13[2];
              v34 = __OFADD__(v33, 1);
              v35 = v33 + 1;
              if (v34)
              {
                goto LABEL_36;
              }

              v13[2] = v35;
LABEL_31:
              v10 = v41;
              goto LABEL_4;
            }
          }

          v13 = v45;
          v36 = (v45[7] + 16 * v30);
          *v36 = v5;
          v36[1] = v24;

          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_1C440CDC4();
      sub_1C4EFBBF8();
      v5 = v45;
      v24 = v46;
      if (v46)
      {
        goto LABEL_23;
      }
    }

    v13 = v47;
    sub_1C445FAA8(v19, v21);
    v5 = v25;

    if (v5)
    {
      v5 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v47;
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      sub_1C4F02458();
      v13 = v45;

      sub_1C4F02478();

      goto LABEL_31;
    }

    ++v14;
    v10 = v41;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD954();
  *(v37 - 16) = sub_1C487BF24;
  *(v37 - 8) = v5;
  sub_1C441D408(v13, v38, sub_1C487BF28);
  sub_1C4433888();
  swift_unexpectedError();
  __break(1u);
LABEL_38:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4BAF42C()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v26 = v6;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C440A474();
  v9 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);

  if (!v0)
  {

    v16 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v17 = sub_1C44331AC(v16);
    *(v17 + 16) = xmmword_1C4F0D130;
    v18 = MEMORY[0x1E69A0138];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = v18;
    *(v17 + 32) = v26;
    *(v17 + 40) = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v11 + 8))(v15, v9);
    sub_1C43FCF64();
    sub_1C440BAA8(v19, v20, v21, v9);
    sub_1C445EA20();
    sub_1C443474C();
    sub_1C4EFB9A8();
    sub_1C4420C3C(&v24, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v25)
    {
      sub_1C450B034();
      sub_1C441C114();
      v22 = swift_allocError();
      *v23 = v26;
      *(v23 + 8) = v5;
      *(v23 + 16) = xmmword_1C4F59260;
      *(v23 + 32) = 0xD000000000000016;
      *(v23 + 40) = 0x80000001C4FB4F00;
      sub_1C4426EA4(v24, v22, v23);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  sub_1C43FBC80();
}

void sub_1C4BAF708()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44042B0();
  v6 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C441C544();
  sub_1C4440C6C(v3);

  if (!v1)
  {

    v8 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v9 = sub_1C44331AC(v8);
    v10 = MEMORY[0x1E69E6530];
    *(v9 + 16) = xmmword_1C4F0D130;
    v11 = MEMORY[0x1E69A0180];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = v2;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v12 = sub_1C4400068();
    v13(v12);
    sub_1C43FCF64();
    sub_1C44112DC(v14, v15, v16, v6);
    sub_1C4462098();
    sub_1C4EFB988();

    sub_1C4420C3C(&v17, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BAF8E8()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44042B0();
  v6 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C441C544();
  sub_1C4440C6C(v3);

  if (!v1)
  {

    v8 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v9 = sub_1C44331AC(v8);
    v10 = MEMORY[0x1E69E6530];
    *(v9 + 16) = xmmword_1C4F0D130;
    v11 = MEMORY[0x1E69A0180];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = v2;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v12 = sub_1C4400068();
    v13(v12);
    sub_1C43FCF64();
    sub_1C44112DC(v14, v15, v16, v6);
    sub_1C4462098();
    sub_1C4EFB988();

    sub_1C4420C3C(&v17, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4BAFAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v22 = MEMORY[0x1E69E7CD0];
  v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C459760C(v7);
  v21 = v8;
  while (*(v8 + 16))
  {
    v9 = sub_1C486BC38(v8);
    v11 = v10;
    v13 = v12;
    v14 = sub_1C4BB27A4(v9, v10);
    sub_1C440951C(v9, v11, v13 & 1);
    sub_1C483A4A0(v20, v14);
    v15 = a4(v14, a2, a3);
    if (v4)
    {

      break;
    }

    v16 = sub_1C459760C(v15);
    v17 = sub_1C4A7C82C(v22, v16);
    sub_1C4D4024C(v17);
    v8 = v21;
  }

  return sub_1C4408D00();
}

void sub_1C4BAFBD8()
{
  sub_1C43FE96C();
  v22[1] = v2;
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44042B0();
  sub_1C4EFBC98();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v6 = sub_1C4EFB678();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v23[0] = 0x65727574616566;
  v23[1] = 0xE700000000000000;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C43FE984();
  sub_1C4EFB638();
  (*(v8 + 32))(v12, v15, v6);
  sub_1C4EFBC88();
  sub_1C4EFBEE8();
  v16 = sub_1C43FD018();
  v17(v16);
  if (!v1)
  {
    sub_1C4EFB768();
    sub_1C43FCF64();
    sub_1C44112DC(v18, v19, v20, v21);
    sub_1C4402E08();
    sub_1C4EFB9A8();

    sub_1C4420C3C(v23, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C43FBC80();
}

void sub_1C4BAFEA8()
{
  sub_1C441AE30();
  v18 = v3;
  v19 = v4;
  v5 = sub_1C49A56A0(sub_1C4BB28D4, v17);
  if (!v5)
  {
    sub_1C450B034();
    sub_1C441C114();
    v11 = swift_allocError();
    v12->n128_u64[0] = v2;
    v12->n128_u64[1] = v1;
    v12[1].n128_u64[0] = 0xD000000000000014;
    v12[1].n128_u64[1] = 0x80000001C4FB5140;
    v12[2].n128_u64[0] = 0;
    v12[2].n128_u64[1] = 0xE000000000000000;
    sub_1C4426EA4(v20, v11, v12);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_13:
    sub_1C441DE88();
    return;
  }

  v6 = v5;
  sub_1C44091DC();
  sub_1C4EFBBA8();
  v7 = sub_1C4EFBBE8();
  if (!v7)
  {
    sub_1C446C094();
    sub_1C4EFBB98();
    if (!v0)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1C4433888();
    goto LABEL_17;
  }

  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v16[2] = v6;
  v16[3] = 0;
  v10 = sqlite3_column_type(v9, 0);
  if (v10 == 5)
  {
    MEMORY[0x1EEE9AC00](v10);
    sub_1C43FD954();
    *(v14 - 16) = sub_1C487BF24;
    *(v14 - 8) = v16;
    sub_1C441D408(v8, v15, sub_1C487BF28);
    goto LABEL_15;
  }

  sub_1C4F011E8();
LABEL_7:
  sub_1C445FEE0();
  sub_1C4EFBBA8();
  v13 = sub_1C4EFBBE8();
  if (v13)
  {
    if (sqlite3_column_type(v13, 1) != 5)
    {
      sub_1C4F011E8();
    }

    goto LABEL_12;
  }

  sub_1C440CDC4();
  sub_1C4EFBBF8();
  if (!v0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_1C4433888();
LABEL_17:
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1C4BB015C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = a1;
  v26 = a4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v27 = &v25 - v7;
  v8 = sub_1C4EFBC98();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EFB678();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  sub_1C4EFB648();
  sub_1C4EFB638();
  *&v29[0] = a2;
  *(&v29[0] + 1) = a3;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C4EFB638();
  (*(v13 + 32))(v15, v18, v12);
  sub_1C4EFBC88();
  v19 = v31;
  sub_1C4EFBEE8();
  if (v19)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v21 = v26;
  (*(v9 + 8))(v11, v8);
  sub_1C4EFBC58();
  v22 = sub_1C4EFB768();
  v23 = v27;
  sub_1C440BAA8(v27, 1, 1, v22);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v24 = sub_1C4EFBC48();

  sub_1C4420C3C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
  result = sub_1C4420C3C(v23, &unk_1EC0C06C0, &unk_1C4F10DB0);
  *v21 = v24;
  return result;
}

unint64_t sub_1C4BB047C()
{
  sub_1C441AE30();
  v11[2] = v0;
  v11[3] = v1;
  sub_1C445E5B0(sub_1C4BB28F0, v11);
  if (!v2 || (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v3 = sub_1C4402E08(), v5 = sub_1C443C388(v3, v4), v5 == 15))
  {
    v11[4] = 0;
    v12 = 0xE000000000000000;
    sub_1C4F02248();

    sub_1C442AC70();
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v7 = sub_1C4402E08();
    MEMORY[0x1C6940010](v7);

    v6 = v12;
    sub_1C446D0DC();
    sub_1C441C114();
    v8 = swift_allocError();
    sub_1C441689C(v8, v9);
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

uint64_t sub_1C4BB05AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v23[1] = a4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v24 = v23 - v7;
  v8 = sub_1C4EFBC98();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EFB678();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  sub_1C4EFB648();
  sub_1C4EFB638();
  *&v26[0] = a2;
  *(&v26[0] + 1) = a3;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C4EFB638();
  (*(v13 + 32))(v15, v18, v12);
  sub_1C4EFBC88();
  v19 = v28;
  sub_1C4EFBEE8();
  if (v19)
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 8))(v11, v8);
  v21 = sub_1C4EFB768();
  v22 = v24;
  sub_1C440BAA8(v24, 1, 1, v21);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB9A8();

  sub_1C4420C3C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  return sub_1C4420C3C(v22, &unk_1EC0C06C0, &unk_1C4F10DB0);
}

void sub_1C4BB08D0()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440A474();
  v8 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  swift_unownedRetainStrong();
  v15 = sub_1C4408D00();
  v16 = sub_1C4440C6C(v15);
  v17 = v0;

  if (v0)
  {
    goto LABEL_3;
  }

  v18 = v5;
  v19 = *(v16 + 80);

  v20 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v21 = sub_1C44331AC(v20);
  *(v21 + 16) = xmmword_1C4F0D130;
  v22 = MEMORY[0x1E69A0138];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = v22;
  *(v21 + 32) = v18;
  *(v21 + 40) = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFC088();
  (*(v10 + 8))(v14, v8);
  sub_1C4EFBC58();
  sub_1C43FCF64();
  sub_1C44112DC(v23, v24, v25, v8);
  sub_1C4400068();
  v26 = sub_1C4EFBC28();
  sub_1C4420C3C(v57, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
  v27 = sub_1C4428DA0(v26);
  if (!v27)
  {

LABEL_3:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  v28 = v27;
  v51 = v19;
  v58 = MEMORY[0x1E69E7CC0];
  sub_1C459EF78(0, v27 & ~(v27 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v54 = v26;
    v55 = v26 & 0xC000000000000001;
    v52 = v26 & 0xFFFFFFFFFFFFFF8;
    v53 = v28;
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        break;
      }

      if (v55)
      {
        v32 = MEMORY[0x1C6940F90](v30, v26);
      }

      else
      {
        if (v30 >= *(v52 + 16))
        {
          goto LABEL_26;
        }

        v32 = *(v26 + 8 * v30 + 32);
      }

      sub_1C44091DC();
      sub_1C4EFBBA8();
      v33 = sub_1C4EFBBE8();
      if (v33)
      {
        v14 = v33;
        sub_1C442AA00();
        MEMORY[0x1EEE9AC00](v34);
        v1 = &v51 - 4;
        *(&v51 - 2) = v32;
        *(&v51 - 1) = 0;
        v29 = sqlite3_column_type(v35, 0);
        if (v29 == 5)
        {
          goto LABEL_28;
        }

        v56 = sub_1C4F02AA8();
      }

      else
      {
        sub_1C446C094();
        sub_1C4EFBB98();
        v56 = v57[0];
      }

      sub_1C44091DC();
      sub_1C4EFBBA8();
      v36 = sub_1C4EFBBE8();
      if (v36)
      {
        MEMORY[0x1EEE9AC00](v36);
        v38 = sub_1C4414708(v37, &v51);
        if (v38 == 5)
        {
          MEMORY[0x1EEE9AC00](v38);
          sub_1C43FD954();
          *(v47 - 16) = sub_1C487BF24;
          *(v47 - 8) = &v51 - 4;
          v48 = sub_1C440D3D8();
          sub_1C444157C(v48, v49, v50);
          goto LABEL_30;
        }

        v14 = v17;
        sub_1C440D3D8();
        v39 = sub_1C4F011E8();
        v41 = v40;
      }

      else
      {
        sub_1C440CDC4();
        sub_1C4EFBB98();
        v14 = 0;

        v39 = v57[0];
        v41 = v57[1];
      }

      v43 = *(v58 + 16);
      v42 = *(v58 + 24);
      v1 = (v43 + 1);
      if (v43 >= v42 >> 1)
      {
        sub_1C459EF78(v42 > 1, v43 + 1, 1);
      }

      *(v58 + 16) = v1;
      v44 = (v58 + 24 * v43);
      v44[4] = v56;
      v44[5] = v39;
      v44[6] = v41;
      ++v30;
      v26 = v54;
      v17 = v14;
      if (v31 == v53)
      {

        goto LABEL_3;
      }
    }
  }

  __break(1u);
LABEL_28:
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD954();
  *(v45 - 16) = sub_1C487BF24;
  *(v45 - 8) = v1;
  sub_1C441D408(v14, v46, sub_1C487BF28);
LABEL_30:
  swift_unexpectedError();
  __break(1u);
}

void sub_1C4BB0EA0()
{
  sub_1C43FE96C();
  v4 = v3;
  v32 = v5;
  v7 = v6;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440A474();
  v10 = sub_1C456902C(&qword_1EC0C4508, &unk_1C4F594D0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v34 = v12;
  sub_1C43FBE44();
  v13 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v4);

  if (!v0)
  {

    v17 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v18 = sub_1C44331AC(v17);
    v19 = MEMORY[0x1E69E6530];
    *(v18 + 16) = xmmword_1C4F0D130;
    v20 = MEMORY[0x1E69A0180];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = v32;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v15 + 8))(v2, v13);
    v21 = _s16ViewConfigRecordVMa(0);
    sub_1C43FCF64();
    sub_1C440BAA8(v22, v23, v24, v13);
    sub_1C4505F5C(&qword_1EC0C4510, _s16ViewConfigRecordVMa, &unk_1C4F5966C);
    sub_1C440BFD0();
    sub_1C4400068();
    sub_1C4EFB408();
    sub_1C4420C3C(&v33, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v25 = sub_1C440D3D8();
    if (sub_1C44157D4(v25, v26, v21) == 1)
    {
      sub_1C4420C3C(v34, &qword_1EC0C4508, &unk_1C4F594D0);
      v33.n128_u64[0] = v32;
      v27 = sub_1C4F02858();
      v29 = v28;
      sub_1C450B034();
      sub_1C441C114();
      v30 = swift_allocError();
      v31->n128_u64[0] = v27;
      v31->n128_u64[1] = v29;
      v31[1].n128_u64[0] = 0xD000000000000010;
      v31[1].n128_u64[1] = 0x80000001C4F87A60;
      v31[2].n128_u64[0] = 0xD00000000000001ALL;
      v31[2].n128_u64[1] = 0x80000001C4FB5260;
      sub_1C4426EA4(v33, v30, v31);
    }

    else
    {

      sub_1C4437D00(v34, v7);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4BB1238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4505F5C(&qword_1EDDEAEA0, _s10ViewConfigVMa, &unk_1C4F6239C);

  return MEMORY[0x1EEE09B40](a1, a2, v4);
}

uint64_t sub_1C4BB12BC(uint64_t a1)
{
  v2 = sub_1C4505F5C(&qword_1EDDFF5F8, _s10ViewConfigVMa, &unk_1C4F59478);

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4BB1338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4505F5C(&qword_1EDDFF5F8, _s10ViewConfigVMa, &unk_1C4F59478);

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

void sub_1C4BB13BC(void *a1)
{
  sub_1C4409678(a1, a1[3]);
  sub_1C444C3A8();
  sub_1C4F02BB8();
  if (!v1)
  {
    sub_1C4409678(v4, v4[3]);
    sub_1C444C3A8();
    v3 = sub_1C4F02968();
    sub_1C4441B18(v3);
    sub_1C440962C(v4);
  }

  sub_1C440962C(a1);
  sub_1C441DE88();
}

uint64_t sub_1C4BB147C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C4409678(a1, a1[3]);
  sub_1C4F02BE8();
  sub_1C44511EC(a2, a3, a4, a5);
  sub_1C4418280(v10, v10[3]);
  sub_1C4F02978();

  return sub_1C440962C(v10);
}

uint64_t sub_1C4BB1550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1C4F02938(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if (a8)
      {
        v15 = a3 == a7 && a4 == a8;
        if (v15 || (sub_1C4F02938() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C4BB15EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C4F01298();
  if (!a5)
  {
    return sub_1C4F02B18();
  }

  sub_1C4F02B18();

  return sub_1C4F01298();
}

uint64_t sub_1C4BB1660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4F02B18();
  if (a4)
  {
    sub_1C4F01298();
  }

  return sub_1C4F02B68();
}

void sub_1C4BB16EC(void *a1@<X0>, void *a2@<X8>)
{
  sub_1C4BB13BC(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }
}

uint64_t sub_1C4BB1770()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C4F02AF8();
  sub_1C4BB15EC(v6, v1, v2, v4, v3);
  return sub_1C4F02B68();
}

unint64_t sub_1C4BB17F0()
{
  result = qword_1EC0C44F0;
  if (!qword_1EC0C44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C44F0);
  }

  return result;
}

void *sub_1C4BB18D4@<X0>(void *a1@<X8>)
{
  sub_1C43FE984();
  v3 = sub_1C4EFBE98();
  if (v1)
  {
  }

  v4 = v3;
  sub_1C43FE984();
  v17 = sub_1C4EFBE98();
  v13 = sub_1C441431C();
  v12 = sub_1C4EFBE98();
  v11 = sub_1C441431C();
  v10 = sub_1C441431C();
  v9 = sub_1C441431C();
  v8 = sub_1C441431C();
  v5 = sub_1C441431C();
  v6 = sub_1C441431C();

  __src[0] = v4;
  __src[1] = v17;
  __src[2] = v13;
  __src[3] = v12;
  __src[4] = v11;
  __src[5] = v10;
  __src[6] = v9;
  __src[7] = v8;
  __src[8] = v5;
  __src[9] = v6;
  v16[0] = v4;
  v16[1] = v17;
  v16[2] = v13;
  v16[3] = v12;
  v16[4] = v11;
  v16[5] = v10;
  v16[6] = v9;
  v16[7] = v8;
  v16[8] = v5;
  v16[9] = v6;
  sub_1C4BB1E64(__src, v14);
  sub_1C4BB1E9C(v16);
  return memcpy(a1, __src, 0x50uLL);
}

unint64_t sub_1C4BB1C18()
{
  result = qword_1EDDFD490;
  if (!qword_1EDDFD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD490);
  }

  return result;
}

unint64_t sub_1C4BB1C6C()
{
  result = qword_1EDDFED68;
  if (!qword_1EDDFED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED68);
  }

  return result;
}

unint64_t sub_1C4BB1CC0()
{
  result = qword_1EDDFD360;
  if (!qword_1EDDFD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD360);
  }

  return result;
}

unint64_t sub_1C4BB1D14()
{
  result = qword_1EDDFED70;
  if (!qword_1EDDFED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED70);
  }

  return result;
}

unint64_t sub_1C4BB1D68()
{
  result = qword_1EDDFEF50;
  if (!qword_1EDDFEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEF50);
  }

  return result;
}

unint64_t sub_1C4BB1DBC()
{
  result = qword_1EDDFEF30;
  if (!qword_1EDDFEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEF30);
  }

  return result;
}

unint64_t sub_1C4BB1E10()
{
  result = qword_1EDDFEF40;
  if (!qword_1EDDFEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEF40);
  }

  return result;
}

uint64_t sub_1C4BB1ECC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4BB1FC0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C4958BB4(0, v2, 1, a1);
  }

  return result;
}

void sub_1C4BB1FC0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C442BC40();
        sub_1C458A358();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C442BC40();
        sub_1C458A358();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C4BB2600(*a3 + 24 * *v75, *a3 + 24 * *v77, *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C4BB24C8(&v89, *a1, a3);
LABEL_89:
}

uint64_t sub_1C4BB24C8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C4BB2600(*a3 + 24 * *v4, *a3 + 24 * *v9, *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C4BB2600(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  sub_1C441AE30();
  v11 = (v8 - v10) / 24;
  v12 = (v9 - v8) / 24;
  if (v11 < v12)
  {
    sub_1C455B518(v5, v11, a4);
    v13 = &a4[24 * v11];
    while (1)
    {
      if (a4 >= v13 || v4 >= a3)
      {
        v4 = v5;
        goto LABEL_28;
      }

      if (*v4 >= *a4)
      {
        break;
      }

      v15 = v4;
      v16 = v5 == v4;
      v4 += 24;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 += 24;
    }

    v15 = a4;
    v16 = v5 == a4;
    a4 += 24;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    *(v5 + 2) = *(v15 + 2);
    *v5 = v17;
    goto LABEL_13;
  }

  sub_1C455B518(v4, (v9 - v8) / 24, a4);
  v13 = &a4[24 * v12];
LABEL_15:
  v18 = v4 - 24;
  for (a3 -= 24; v13 > a4 && v4 > v5; a3 -= 24)
  {
    if (*(v13 - 3) < *v18)
    {
      v16 = a3 + 24 == v4;
      v4 -= 24;
      if (!v16)
      {
        v21 = *v18;
        *(a3 + 16) = *(v18 + 2);
        *a3 = v21;
        v4 = v18;
      }

      goto LABEL_15;
    }

    if (v13 != (a3 + 24))
    {
      v20 = *(v13 - 24);
      *(a3 + 16) = *(v13 - 1);
      *a3 = v20;
    }

    v13 -= 24;
  }

LABEL_28:
  v22 = (v13 - a4) / 24;
  if (v4 != a4 || v4 >= &a4[24 * v22])
  {
    memmove(v4, a4, 24 * v22);
  }

  return 1;
}

uint64_t sub_1C4BB27A4(int64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v7 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v7 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v7 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_1C4849A24();
    v7 = v10;
  }

  v8 = *(*(v7 + 48) + 8 * a1);
  sub_1C4A7FFD8(a1);
  *v3 = v10;
  return v8;
}

uint64_t sub_1C4BB2864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s16ViewConfigRecordVMa(uint64_t a1)
{
  result = qword_1EDDF8920;
  if (!qword_1EDDF8920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BB2980(uint64_t a1)
{
  sub_1C44FCCB8(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C44FCCB8(319, &qword_1EDDFF390, &_s14CustomViewTypeON, MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1C44FCCB8(319, &unk_1EC0C4520, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        v2 = _s10ViewConfigVMa(319);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

unint64_t sub_1C4BB2BDC()
{
  result = qword_1EDDFC170;
  if (!qword_1EDDFC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC170);
  }

  return result;
}

unint64_t sub_1C4BB2C30()
{
  result = qword_1EDDFF380;
  if (!qword_1EDDFF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF380);
  }

  return result;
}

unint64_t sub_1C4BB2C84()
{
  result = qword_1EDDE84F0;
  if (!qword_1EDDE84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE84F0);
  }

  return result;
}

unint64_t sub_1C4BB2CD8()
{
  result = qword_1EDDE87F8[0];
  if (!qword_1EDDE87F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE87F8);
  }

  return result;
}

unint64_t sub_1C4BB2D2C()
{
  result = qword_1EDDE84F8[0];
  if (!qword_1EDDE84F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE84F8);
  }

  return result;
}

uint64_t _s16ViewConfigRecordV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s16ViewConfigRecordV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BB2EE8()
{
  result = qword_1EC0C4560;
  if (!qword_1EC0C4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4560);
  }

  return result;
}

unint64_t sub_1C4BB2F40()
{
  result = qword_1EDDFC160;
  if (!qword_1EDDFC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC160);
  }

  return result;
}

unint64_t sub_1C4BB2F98()
{
  result = qword_1EDDFC168;
  if (!qword_1EDDFC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC168);
  }

  return result;
}

uint64_t sub_1C4BB2FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v27 = a1;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v24 = &v24 - v9;
  sub_1C4EFBC98();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v11 = sub_1C4EFB678();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4400B4C();
  sub_1C4EFB648();
  sub_1C4EFB638();
  v28 = a2;
  v29 = a3;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C4EFB638();
  v28 = v25;
  v29 = v26;
  sub_1C4EFB668();
  sub_1C4EFB638();
  (*(v13 + 32))(v16, v5, v11);
  sub_1C4EFBC88();
  v18 = v30;
  sub_1C4EFBEE8();
  v19 = sub_1C43FE990();
  if (v18)
  {
    return v20(v19);
  }

  v20(v19);
  v22 = sub_1C4EFB768();
  v23 = v24;
  sub_1C440BAA8(v24, 1, 1, v22);
  sub_1C4EFC0A8();
  sub_1C4423A0C(v23, &unk_1EC0C06C0, &unk_1C4F10DB0);
}

uint64_t sub_1C4BB32BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[1] = a1;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v24[0] = v24 - v7;
  sub_1C4EFBC98();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v9 = sub_1C4EFB678();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4400B4C();
  sub_1C4EFB648();
  sub_1C4EFB638();
  *&v25[0] = a2;
  *(&v25[0] + 1) = a3;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C4EFB638();
  (*(v11 + 32))(v14, v3, v9);
  sub_1C4EFBC88();
  v16 = v28;
  sub_1C4EFBEE8();
  if (v16)
  {
    v17 = sub_1C43FE990();
    return v18(v17);
  }

  else
  {
    v20 = sub_1C43FE990();
    v21(v20);
    v22 = sub_1C4EFB768();
    v23 = v24[0];
    sub_1C440BAA8(v24[0], 1, 1, v22);
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1C4EFB9A8();

    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v23, &unk_1EC0C06C0, &unk_1C4F10DB0);
    return v27;
  }
}

uint64_t sub_1C4BB361C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4BB32BC(a1, 0x6E6F6973726576, 0xE700000000000000);
  if (!v2)
  {
    if (v6)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    v8 = 0xE000000000000000;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    v10 = sub_1C4BB32BC(a1, 0x4665727574616566, 0xEC0000007367616CLL);
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v8 = v11;
    }

    v13 = sub_1C4BB32BC(a1, 0x656C756465686373, 0xE900000000000073);
    v39 = v12;
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    v18 = sub_1C4BB32BC(a1, 0x654465746F6D6572, 0xED00007365636976);
    v37 = v15;
    v38 = v17;
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v16 = v19;
    }

    v21 = sub_1C4BB32BC(a1, 0xD000000000000015, 0x80000001C4FB53D0);
    v35 = v20;
    v36 = v16;
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = sub_1C4BB32BC(a1, 0xD000000000000015, 0x80000001C4FB53F0);
    v33 = v25;
    v34 = v24;
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    result = sub_1C4BB32BC(a1, 0x73736553746F6F62, 0xEB000000006E6F69);
    v30 = v33;
    if (!v27)
    {
      v30 = 0;
    }

    *a2 = v7;
    a2[1] = v9;
    if (v29)
    {
      v31 = result;
    }

    else
    {
      v31 = 0;
    }

    v32 = 0xE000000000000000;
    if (v29)
    {
      v32 = v29;
    }

    a2[2] = v39;
    a2[3] = v8;
    a2[4] = v37;
    a2[5] = v38;
    a2[6] = v35;
    a2[7] = v36;
    a2[8] = v23;
    a2[9] = v34;
    a2[10] = v30;
    a2[11] = v28;
    a2[12] = v31;
    a2[13] = v32;
  }

  return result;
}

uint64_t sub_1C4BB38D0(uint64_t a1, uint64_t *a2)
{
  result = sub_1C4BB2FEC(a1, 0x6E6F6973726576, 0xE700000000000000, *a2, a2[1]);
  if (!v2)
  {
    sub_1C4BB2FEC(a1, 0x4665727574616566, 0xEC0000007367616CLL, a2[2], a2[3]);
    sub_1C4BB2FEC(a1, 0x656C756465686373, 0xE900000000000073, a2[4], a2[5]);
    sub_1C440B498("viewUpdateDependents", a2[8], a2[9]);
    sub_1C440B498("forceMigrationVersion", a2[10], a2[11]);
    sub_1C4BB2FEC(a1, 0x654465746F6D6572, 0xED00007365636976, a2[6], a2[7]);
    return sub_1C4BB2FEC(a1, 0x73736553746F6F62, 0xEB000000006E6F69, a2[12], a2[13]);
  }

  return result;
}

char *sub_1C4BB39F0()
{
  v36 = *MEMORY[0x1E69E9840];
  v0 = sub_1C4EF9D38();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBCC4();
  v32 = 37;
  sub_1C4EF9578();
  swift_allocObject();
  v34 = 0x2500000000;
  v35 = sub_1C4EF9548() | 0x4000000000000000;
  if (!sub_1C4BB3E84(&v34, &v32))
  {
    sub_1C4BB3DB4();
    v22 = v34;
    v23 = v35;
    sub_1C4F01178();
    v24 = sub_1C4F01158();
    if (v25)
    {
      v26 = v24;
      v27 = v22;
      v28 = v23;
LABEL_18:
      sub_1C4434000(v27, v28);
      return v26;
    }

    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660(&qword_1EDDFD018);
    }

    v29 = sub_1C4F00978();
    sub_1C442B738(v29, qword_1EDE2DDF8);
    v15 = sub_1C4F00968();
    v30 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v15, v30))
    {
LABEL_17:

      sub_1C4EF9058();
      v26 = sub_1C4EF9CF8();
      (*(v2 + 8))(v6, v0);
      v27 = v34;
      v28 = v35;
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1C43F8000, v15, v30, "ViewGeneration: Error creating string from utf8 data", v31, 2u);
    v21 = v31;
LABEL_13:
    MEMORY[0x1C6942830](v21, -1, -1);
    goto LABEL_17;
  }

  v8 = MEMORY[0x1C693F6A0]();
  result = strerror(v8);
  if (result)
  {
    v10 = sub_1C4F010E8();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x6E776F6E6B6E55;
    }

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660(&qword_1EDDFD018);
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (!os_log_type_enabled(v15, v16))
    {

      goto LABEL_17;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315394;
    v19 = sub_1C441D828(v12, v13, &v33);

    *(v17 + 4) = v19;
    *(v17 + 12) = 1024;
    *(v17 + 14) = MEMORY[0x1C693F6A0](v20);
    _os_log_impl(&dword_1C43F8000, v15, v16, "ViewGeneration: Error from sysctlbyname: %s(%d", v17, 0x12u);
    sub_1C440962C(v18);
    MEMORY[0x1C6942830](v18, -1, -1);
    v21 = v17;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1C4BB3DB4()
{
  v1 = *v0;
  v2 = v0[1];
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1;
      v4 = v1 >> 32;
      goto LABEL_5;
    case 2uLL:
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);
      goto LABEL_5;
    case 3uLL:
      goto LABEL_16;
    default:
      v3 = 0;
      v4 = BYTE6(v2);
LABEL_5:
      if (v3 == v4)
      {
        goto LABEL_16;
      }

      if ((sub_1C4BB4304() & 0x100) != 0)
      {
        v5 = *v0;
        v6 = v0[1];
        v7 = 0;
        switch(v6 >> 62)
        {
          case 1uLL:
            v7 = v5 >> 32;
            break;
          case 2uLL:
            v7 = *(v5 + 24);
            break;
          case 3uLL:
            break;
          default:
            v7 = BYTE6(v6);
            break;
        }

        if (__OFSUB__(v7, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
        }

        else
        {

          sub_1C4BB4254(v7 - 1);
        }
      }

      return;
  }
}

uint64_t sub_1C4BB3E84(uint64_t *a1, size_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v11 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C4434000(v4, v3);
      *a1 = xmmword_1C4F4FDA0;
      sub_1C4434000(0, 0xC000000000000000);
      v12 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      if (v12 < v4)
      {
        goto LABEL_16;
      }

      if (sub_1C4EF9538() && __OFSUB__(v4, sub_1C4EF9568()))
      {
        goto LABEL_17;
      }

      sub_1C4EF9578();
      swift_allocObject();
      v13 = sub_1C4EF9518();

      v11 = v13;
LABEL_12:
      if (v12 < v4)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      v7 = sub_1C4BB41D4(v4, v4 >> 32, v11, a2);

      *a1 = v4;
      a1[1] = v11 | 0x4000000000000000;
      return v7;
    case 2uLL:

      sub_1C4434000(v4, v3);
      *&v16 = v4;
      *(&v16 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C4F4FDA0;
      sub_1C4434000(0, 0xC000000000000000);
      v7 = &v16;
      sub_1C4EF9918();
      v9 = v16;
      v10 = sub_1C4BB41D4(*(v16 + 16), *(v16 + 24), *(&v16 + 1), a2);
      *a1 = v9;
      a1[1] = *(&v9 + 1) | 0x8000000000000000;
      if (!v2)
      {
        return v10;
      }

      return v7;
    case 3uLL:
      *(&v16 + 7) = 0;
      *&v16 = 0;
      return sysctlbyname("kern.bootsessionuuid", &v16, a2, 0, 0);
    default:
      sub_1C4434000(v4, v3);
      *&v16 = v4;
      WORD4(v16) = v3;
      BYTE10(v16) = BYTE2(v3);
      BYTE11(v16) = BYTE3(v3);
      BYTE12(v16) = BYTE4(v3);
      BYTE13(v16) = BYTE5(v3);
      BYTE14(v16) = BYTE6(v3);
      v7 = sysctlbyname("kern.bootsessionuuid", &v16, a2, 0, 0);
      v8 = DWORD2(v16) | ((WORD6(v16) | (BYTE14(v16) << 16)) << 32);
      *a1 = v16;
      a1[1] = v8;
      return v7;
  }
}

uint64_t sub_1C4BB41D4(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  result = sub_1C4EF9538();
  if (result)
  {
    v7 = result;
    result = sub_1C4EF9568();
    v8 = __OFSUB__(a1, result);
    v9 = a1 - result;
    if (!v8)
    {
      sub_1C4EF9558();
      return sysctlbyname("kern.bootsessionuuid", (v7 + v9), a4, 0, 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4BB4254(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = result;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v2;
      v6 = v2 >> 32;
      goto LABEL_5;
    case 2uLL:
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
      goto LABEL_5;
    case 3uLL:
      goto LABEL_11;
    default:
      v5 = 0;
      v6 = BYTE6(v3);
LABEL_5:
      if (v5 == v6)
      {
        goto LABEL_11;
      }

      result = sub_1C4EF9A28();
      if (__OFADD__(v4, 1))
      {
        __break(1u);
      }

      else if (v4 + 1 >= v4)
      {
        v7 = result;
        sub_1C4EF99E8();
        return v7;
      }

      __break(1u);
LABEL_11:
      __break(1u);
      return result;
  }
}

uint64_t sub_1C4BB4304()
{
  result = sub_1C4BB43F4(*v0, *(v0 + 8));
  if ((result & 0x100) == 0)
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    v4 = result;
    v5 = 0;
    v6 = 0;
    switch(v3 >> 62)
    {
      case 1uLL:
        v5 = v2;
        v6 = v2 >> 32;
        break;
      case 2uLL:
        v5 = *(v2 + 16);
        v6 = *(v2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v5 = 0;
        v6 = BYTE6(v3);
        break;
    }

    sub_1C44344B8(*v0, *(v0 + 8));
    result = sub_1C4434000(v2, v3);
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else if (v6 - 1 >= v5)
    {
      v7 = sub_1C4EF9A18();
      v9 = v8;
      sub_1C4434000(v2, v3);
      *v0 = v7;
      *(v0 + 8) = v9;
      return v4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4BB43F4(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v4 = 1;
  v6 = 0;
  v7 = a1 >> 32;
  switch(v3)
  {
    case 1uLL:
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
LABEL_6:
      if (v8 == v9)
      {
        v6 = 0;
        v4 = 1;
        return v6 | (v4 << 8);
      }

      if (v3 == 2)
      {
        v7 = *(a1 + 24);
      }

      goto LABEL_10;
    case 3uLL:
      return v6 | (v4 << 8);
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        v6 = 0;
        return v6 | (v4 << 8);
      }

      v7 = BYTE6(a2);
LABEL_10:
      result = v7 - 1;
      if (!__OFSUB__(v7, 1))
      {
        v6 = sub_1C4EF9A28();
        v4 = 0;
        return v6 | (v4 << 8);
      }

      __break(1u);
      return result;
  }
}

uint64_t sub_1C4BB44E0(char a1, uint64_t a2)
{
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C440101C();
  sub_1C43FFC58();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C441A65C();
  sub_1C4440C6C(a2);

  if (!v3)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C4F0D130;
    v14 = sub_1C4424B10(a1);
    v15 = MEMORY[0x1E69A0138];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = v15;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v10 + 8))(v5, v4);
    sub_1C44204FC();
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_1C4EFB9A8();

    sub_1C4423A0C(v17, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v20)
    {
      return 0;
    }

    else
    {
      return v19;
    }
  }

  return result;
}

unint64_t sub_1C4BB4718(uint64_t a1)
{
  v1 = sub_1C4F025D8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C4BB4764(char a1)
{
  if (!a1)
  {
    return 0x64657461647075;
  }

  if (a1 == 1)
  {
    return 0x676E697461647075;
  }

  return 0x647055736465656ELL;
}

unint64_t sub_1C4BB47E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4BB4718(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4BB4818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4BB4764(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4BB494C(uint64_t a1)
{
  v2 = sub_1C4BB50AC();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4BB4998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4BB50AC();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1C4BB49EC()
{
  v1 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  result = sub_1C4EFBED8();
  if (!v0)
  {
    v5 = 0;
    v22 = 0x80000001C4F862C0;
    v20 = 0x80000001C4F86260;
    v21 = xmmword_1C4F0CE60;
    do
    {
      v6 = &byte_1F43D9F00[v5++];
      v7 = v6[32];
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v8 = swift_allocObject();
      *(v8 + 16) = v21;
      v9 = 0xE400000000000000;
      v10 = 1702259052;
      v11 = v8;
      switch(v7)
      {
        case 1:
          v10 = 1701736302;
          break;
        case 2:
          v9 = 0xE500000000000000;
          v10 = 0x796C696164;
          break;
        case 3:
          v10 = 0xD000000000000013;
          v9 = v20;
          break;
        case 4:
          v9 = 0xE600000000000000;
          v12 = 1801807223;
          goto LABEL_10;
        case 5:
          sub_1C441B53C();
          v15 = v14 & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_13;
        case 6:
          sub_1C441B53C();
          v15 = v16 & 0xFFFF0000FFFFFFFFLL | 0x327900000000;
LABEL_13:
          v10 = v15 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v9 = 0xEB00000000737275;
          break;
        case 7:
          v9 = 0xE600000000000000;
          v12 = 1920298856;
LABEL_10:
          v10 = v12 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          sub_1C441B53C();
          v10 = v17 | 0x4D31327900000000;
          v9 = 0xEE00736574756E69;
          break;
        case 9:
          sub_1C441B53C();
          v10 = v13 | 0x694D377900000000;
          v9 = 0xED0000736574756ELL;
          break;
        case 10:
          v10 = 0xD000000000000013;
          v9 = v22;
          break;
        default:
          break;
      }

      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = MEMORY[0x1E69A0138];
      *(v11 + 32) = v10;
      *(v11 + 40) = v9;
      *(v11 + 96) = &_s11UpdateStateON;
      *(v11 + 104) = sub_1C4BB50AC();
      *(v11 + 72) = 2;
      sub_1C4EFB728();
      v18 = sub_1C4EFB768();
      sub_1C440BAA8(v3, 0, 1, v18);
      sub_1C4EFC0A8();
      sub_1C4423A0C(v3, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    while (v5 != 11);
  }

  return result;
}

uint64_t sub_1C4BB4CCC(uint64_t a1)
{
  v2 = sub_1C44248E8();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4BB4D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C44248E8();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

unint64_t sub_1C4BB4D70()
{
  result = qword_1EDDF95F0;
  if (!qword_1EDDF95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95F0);
  }

  return result;
}

unint64_t sub_1C4BB4DC8()
{
  result = qword_1EDDF95E8;
  if (!qword_1EDDF95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95E8);
  }

  return result;
}

uint64_t sub_1C4BB4E1C(char a1, uint64_t a2, uint64_t a3)
{
  v10 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C440101C();
  sub_1C43FFC58();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C441A65C();
  sub_1C4440C6C(a3);

  if (!v4)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E6530];
    *(v15 + 16) = xmmword_1C4F0CE60;
    v17 = MEMORY[0x1E69A0180];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = a2;
    v18 = sub_1C4424B10(a1);
    v19 = MEMORY[0x1E69A0138];
    *(v15 + 96) = MEMORY[0x1E69E6158];
    *(v15 + 104) = v19;
    *(v15 + 72) = v18;
    *(v15 + 80) = v20;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v12 + 8))(v6, v5);
    sub_1C44204FC();
    sub_1C4EFC0A8();
    sub_1C4423A0C(v3, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4BB5004()
{
  v2 = sub_1C4EFBE98();
  if (!v0)
  {
    v1 = v2;
    sub_1C4EFBE98();
  }

  return v1;
}

unint64_t sub_1C4BB50AC()
{
  result = qword_1EDDEAEC0;
  if (!qword_1EDDEAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEC0);
  }

  return result;
}

_BYTE *_s11UpdateStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BB51E0()
{
  result = qword_1EC0C4568;
  if (!qword_1EC0C4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4568);
  }

  return result;
}

unint64_t sub_1C4BB5238()
{
  result = qword_1EDDEAEB8;
  if (!qword_1EDDEAEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEB8);
  }

  return result;
}

unint64_t sub_1C4BB5290()
{
  result = qword_1EDDEAEB0;
  if (!qword_1EDDEAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEB0);
  }

  return result;
}

unint64_t sub_1C4BB52E4()
{
  result = qword_1EDDF8810;
  if (!qword_1EDDF8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8810);
  }

  return result;
}

unint64_t sub_1C4BB5338()
{
  result = qword_1EDDF8818;
  if (!qword_1EDDF8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8818);
  }

  return result;
}

unint64_t sub_1C4BB538C()
{
  result = qword_1EDDF8820;
  if (!qword_1EDDF8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8820);
  }

  return result;
}

uint64_t sub_1C4BB53E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1C4BB5420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4BB549C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001C4F879E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6564724F77656976 && a2 == 0xED00006449646572;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E496769666E6F63 && a2 == 0xEB00000000786564;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F69725068676968 && a2 == 0xEC00000079746972;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4BB5818(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C45A0, &qword_1C4F5A048);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4445D68();
  sub_1C4F02BF8();
  v12[15] = 0;
  sub_1C4400324();
  sub_1C4F027D8();
  if (!v2)
  {
    v12[14] = 1;
    sub_1C4400324();
    sub_1C4F027D8();
    v12[13] = *(v3 + 16);
    v12[12] = 2;
    sub_1C444A808();
    sub_1C4400324();
    sub_1C4F027E8();
    v12[11] = 3;
    sub_1C4400324();
    sub_1C4F027D8();
    v12[10] = *(v3 + 32);
    v12[9] = 4;
    sub_1C44644B0();
    sub_1C4400324();
    sub_1C4F027E8();
    v12[8] = 5;
    sub_1C4400324();
    sub_1C4F027A8();
    v12[7] = 6;
    sub_1C4400324();
    sub_1C4F027A8();
    v12[6] = 7;
    sub_1C4400324();
    sub_1C4F027A8();
    v12[5] = 8;
    sub_1C4400324();
    sub_1C4F027A8();
    v12[4] = 9;
    sub_1C4400324();
    sub_1C4F027A8();
    v12[3] = 10;
    sub_1C4F02798();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4BB5ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BB549C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BB5AF4(uint64_t a1)
{
  v2 = sub_1C4445D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BB5B30(uint64_t a1)
{
  v2 = sub_1C4445D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BB5B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4BB7AA8();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4BB5C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4BB7AFC();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4BB5CE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001C4F87A20 == a2;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C4F879E0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656372756F73 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FAAF10 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D695479426E7572 && a2 == 0xEE00706D61747365;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4BB5EE4(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C45B8, &unk_1C4F5A058);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C444C970();
  sub_1C4F02BF8();
  v12[0] = 0;
  sub_1C43FDF6C();
  sub_1C4F027D8();
  if (!v2)
  {
    v12[0] = 1;
    sub_1C43FDF6C();
    sub_1C4F027D8();
    v12[0] = 2;
    sub_1C43FDF6C();
    sub_1C4F027D8();
    sub_1C442BFE0(3);
    sub_1C442BFE0(4);
    v13 = *(v3 + 40);
    v12[63] = 5;
    sub_1C444C58C(v3, v12);
    sub_1C446E5F8();
    sub_1C43FDF6C();
    sub_1C4F02778();
    sub_1C441DFEC(v13, *(&v13 + 1));
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4BB60BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4BB6108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BB5CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BB6130(uint64_t a1)
{
  v2 = sub_1C444C970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BB616C(uint64_t a1)
{
  v2 = sub_1C444C970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BB61EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4BB7B50();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4BB62E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4BB7BA4();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C4BB6354()
{
  result = qword_1EC0C4570;
  if (!qword_1EC0C4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4570);
  }

  return result;
}

unint64_t sub_1C4BB63AC()
{
  result = qword_1EDDEAEA8;
  if (!qword_1EDDEAEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEA8);
  }

  return result;
}

unint64_t sub_1C4BB6404()
{
  result = qword_1EC0C4578;
  if (!qword_1EC0C4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4578);
  }

  return result;
}

unint64_t sub_1C4BB645C()
{
  result = qword_1EC0C4580;
  if (!qword_1EC0C4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4580);
  }

  return result;
}

unint64_t sub_1C4BB64B4()
{
  result = qword_1EC0C4588;
  if (!qword_1EC0C4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4588);
  }

  return result;
}

unint64_t sub_1C4BB650C()
{
  result = qword_1EC0C4590;
  if (!qword_1EC0C4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4590);
  }

  return result;
}

void sub_1C4BB6560()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v64 = v7;
  v9 = v8;
  v62 = v10;
  v11 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v57[0] = v57 - v13;
  sub_1C4EFBC98();
  sub_1C43FCDF8();
  v60 = v15;
  v61 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v59 = v17 - v16;
  sub_1C4EFB678();
  sub_1C43FCDF8();
  v65 = v19;
  v66 = v18;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v58 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v57 - v23;
  sub_1C442E860(v6, &v71);
  sub_1C456902C(&qword_1EC0B8BE0, &unk_1C4F0EF30);
  if (swift_dynamicCast())
  {
    v25 = BYTE2(v69);

    v63 = v25 & 1;
  }

  else
  {
    v63 = 0;
  }

  sub_1C4EFB648();
  sub_1C43FE984();
  sub_1C4EFB638();
  v26 = MEMORY[0x1E69E6530];
  v27 = MEMORY[0x1E69A0178];
  v69 = MEMORY[0x1E69E6530];
  v70 = MEMORY[0x1E69A0178];
  v67 = v9;
  sub_1C4EFB658();
  sub_1C44061C8();
  sub_1C440FCD0();
  v69 = &_s10SourceTypeON;
  v70 = sub_1C4BB75B4();
  LOBYTE(v67) = v4;
  sub_1C4EFB658();
  sub_1C44061C8();
  sub_1C440FCD0();
  v69 = v26;
  v70 = v27;
  v67 = v2;
  sub_1C4EFB658();
  sub_1C44061C8();
  sub_1C440FCD0();
  v28 = v64;
  v67 = sub_1C4424B10(v64);
  v68 = v29;
  v57[1] = sub_1C4415EA8();
  sub_1C4EFB668();

  sub_1C440FCD0();
  v30 = v6[3];
  v31 = v6[4];
  sub_1C4409678(v6, v30);
  v32 = (*(v31 + 48))(v30, v31);
  v33 = MEMORY[0x1E69E6370];
  v34 = MEMORY[0x1E69A0148];
  v69 = MEMORY[0x1E69E6370];
  v70 = MEMORY[0x1E69A0148];
  if (v32 == 2)
  {
    if (sub_1C4424B10(v28) == 1701736302 && v35 == 0xE400000000000000)
    {

      v38 = 0;
    }

    else
    {
      v37 = sub_1C4F02938();

      v38 = v37 ^ 1;
    }

    v39 = v38 & 1;
  }

  else
  {
    v39 = v32 & 1;
  }

  sub_1C440D9AC(v39);
  sub_1C440FCF0();
  sub_1C440FCD0();
  sub_1C43FC9A0();
  v40 = sub_1C44260E0();
  v42 = v41(v40);
  v69 = v33;
  v70 = v34;
  if (v42 == 2)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42 & 1;
  }

  sub_1C440D9AC(v43);
  sub_1C440FCF0();
  sub_1C440FCD0();
  v69 = v33;
  v70 = v34;
  LOBYTE(v67) = v63;
  sub_1C4EFB658();
  sub_1C440FCF0();
  sub_1C440FCD0();
  sub_1C43FC9A0();
  v44 = sub_1C44260E0();
  v46 = v45(v44);
  v69 = v33;
  v70 = v34;
  sub_1C440D9AC(v46 & 1);
  sub_1C440FCF0();
  sub_1C440FCD0();
  sub_1C43FC9A0();
  v47 = sub_1C44260E0();
  v49 = v48(v47);
  v69 = v33;
  v70 = v34;
  sub_1C440D9AC(v49 & 1);
  sub_1C440FCF0();
  sub_1C440FCD0();
  v50 = v6[3];
  v51 = v6[4];
  sub_1C4409678(v6, v50);
  sub_1C4CE59A8(v50, v51);
  if (v0)
  {
    (*(v65 + 8))(v24, v66);
  }

  else
  {
    v67 = v52;
    v68 = v53;
    sub_1C4EFB668();

    sub_1C4EFB638();
    (*(v65 + 32))(v58, v24, v66);
    v54 = v59;
    sub_1C4EFBC88();
    sub_1C4EFBEE8();
    (*(v60 + 8))(v54, v61);
    v55 = sub_1C4EFB768();
    v56 = v57[0];
    sub_1C440BAA8(v57[0], 1, 1, v55);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v56, &unk_1EC0C06C0, &unk_1C4F10DB0);

    sub_1C4EFBF18();
  }

  sub_1C43FBC80();
}

void sub_1C4BB6B24()
{
  sub_1C43FE96C();
  v47 = v1;
  v48 = v0;
  v3 = v2;
  v45 = v4;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v44 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v43 - v10;
  v53 = sub_1C4EFBC98();
  sub_1C43FCDF8();
  v49 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v46 = sub_1C4EFB678();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  if (v3)
  {
    sub_1C4EFB648();
    sub_1C4EFB638();
    v27 = MEMORY[0x1E69E6530];
    v28 = MEMORY[0x1E69A0178];
    v51 = MEMORY[0x1E69E6530];
    v52 = MEMORY[0x1E69A0178];
    sub_1C444001C(v45);
    sub_1C4423A0C(v50, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440FCD0();
    v51 = v27;
    v52 = v28;
    sub_1C444001C(v47);
    sub_1C4423A0C(v50, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C43FE984();
    sub_1C4EFB638();
    (*(v18 + 32))(v23, v26, v46);
    sub_1C4EFBC88();
    v29 = v48;
    sub_1C4EFBEE8();
    if (!v29)
    {
      v30 = sub_1C4404794();
      v31(v30);
      sub_1C4EFB768();
      v32 = v43;
LABEL_7:
      v39 = sub_1C44038D0();
      sub_1C440BAA8(v39, v40, v41, v42);
      sub_1C4EFC0A8();
      sub_1C4423A0C(v32, &unk_1EC0C06C0, &unk_1C4F10DB0);

      sub_1C4EFBF18();
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C4EFB648();
    sub_1C4EFB638();
    v33 = MEMORY[0x1E69A0178];
    v51 = MEMORY[0x1E69E6530];
    v52 = MEMORY[0x1E69A0178];
    sub_1C444001C(v45);
    sub_1C4423A0C(v50, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440FCD0();
    v52 = v33;
    v51 = MEMORY[0x1E69E6530];
    sub_1C444001C(v47);
    sub_1C4423A0C(v50, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C43FE984();
    sub_1C4EFB638();
    v34 = sub_1C43FE990();
    v35(v34);
    sub_1C4EFBC88();
    v36 = v48;
    sub_1C4EFBEE8();
    if (!v36)
    {
      (*(v49 + 8))(v15, v53);
      sub_1C4EFB768();
      v32 = v44;
      goto LABEL_7;
    }
  }

  v37 = sub_1C4404794();
  v38(v37);
LABEL_8:
  sub_1C43FBC80();
}

void sub_1C4BB6FB0()
{
  sub_1C43FE96C();
  v4 = v3;
  v29 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C440101C();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  sub_1C44247B4();
  sub_1C4440C6C(v4);
  sub_1C441CE68();
  if (!v1)
  {
    v28 = v14;

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C4F0CE60;
    v17 = v29;
    if (v29 >> 60 == 15)
    {
      sub_1C44053F0();
      *(v16 + 48) = 0;
      v22 = v7;
    }

    else
    {
      v18 = MEMORY[0x1E699FD70];
      v19 = MEMORY[0x1E6969080];
      v22 = v7;
      v20 = v7;
      v21 = v29;
    }

    *(v16 + 32) = v20;
    *(v16 + 40) = v21;
    v23 = MEMORY[0x1E69E6530];
    *(v16 + 56) = v19;
    *(v16 + 64) = v18;
    v24 = MEMORY[0x1E69A0180];
    *(v16 + 96) = v23;
    *(v16 + 104) = v24;
    *(v16 + 72) = v9;
    sub_1C4431E64(v22, v17);
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v28 + 8))(v2, v12);
    v25 = sub_1C44038D0();
    sub_1C440FD0C(v25, v26, v27, v12);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4BB71C8()
{
  sub_1C441EFD0();
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);
  result = sub_1C441CE68();
  if (!v1)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C4F0CE60;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    v10 = MEMORY[0x1E69A0180];
    *(v9 + 96) = MEMORY[0x1E69E6530];
    *(v9 + 104) = v10;
    *(v9 + 64) = 0;
    *(v9 + 72) = v2;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v11 = sub_1C43FE990();
    v12(v11);
    v13 = sub_1C44038D0();
    sub_1C440FD0C(v13, v14, v15, v6);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4BB7370()
{
  sub_1C441EFD0();
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);
  result = sub_1C441CE68();
  if (!v1)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E6530];
    *(v9 + 16) = xmmword_1C4F0D130;
    v11 = MEMORY[0x1E69A0180];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = v2;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v12 = sub_1C43FE990();
    v13(v12);
    v14 = sub_1C44038D0();
    sub_1C440FD0C(v14, v15, v16, v6);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4BB7510(uint64_t a1)
{
  v2 = sub_1C444323C();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4BB755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C444323C();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

unint64_t sub_1C4BB75B4()
{
  result = qword_1EDDF9D50;
  if (!qword_1EDDF9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D50);
  }

  return result;
}

unint64_t sub_1C4BB760C()
{
  result = qword_1EDDF9D48;
  if (!qword_1EDDF9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D48);
  }

  return result;
}

uint64_t sub_1C4BB7660()
{
  sub_1C43FE984();
  v2 = sub_1C4EFBE98();
  if (!v0)
  {
    v1 = v2;
    sub_1C441431C();
  }

  return v1;
}

void *sub_1C4BB76FC@<X0>(void *a1@<X8>)
{
  v3 = sub_1C4EFBE98();
  if (v1)
  {
  }

  v4 = v3;
  v17 = sub_1C441431C();
  v13 = sub_1C441431C();
  sub_1C43FE984();
  v12 = sub_1C4EFBE98();
  v11 = sub_1C441431C();
  v10 = sub_1C441431C();
  sub_1C43FE984();
  v9 = sub_1C4EFBE98();
  v8 = sub_1C441431C();
  v5 = sub_1C441431C();
  v6 = sub_1C441431C();

  __src[0] = v4;
  __src[1] = v17;
  __src[2] = v13;
  __src[3] = v12;
  __src[4] = v11;
  __src[5] = v10;
  __src[6] = v9;
  __src[7] = v8;
  __src[8] = v5;
  __src[9] = v6;
  v16[0] = v4;
  v16[1] = v17;
  v16[2] = v13;
  v16[3] = v12;
  v16[4] = v11;
  v16[5] = v10;
  v16[6] = v9;
  v16[7] = v8;
  v16[8] = v5;
  v16[9] = v6;
  sub_1C4BB7A40(__src, v14);
  sub_1C4BB7A78(v16);
  return memcpy(a1, __src, 0x50uLL);
}

unint64_t sub_1C4BB7AA8()
{
  result = qword_1EC0C45A8;
  if (!qword_1EC0C45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45A8);
  }

  return result;
}

unint64_t sub_1C4BB7AFC()
{
  result = qword_1EDDF8680;
  if (!qword_1EDDF8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8680);
  }

  return result;
}

unint64_t sub_1C4BB7B50()
{
  result = qword_1EC0C45C0;
  if (!qword_1EC0C45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45C0);
  }

  return result;
}

unint64_t sub_1C4BB7BA4()
{
  result = qword_1EDDF86C0;
  if (!qword_1EDDF86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86C0);
  }

  return result;
}

_BYTE *_s19SourceListenerStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20SourceListenerConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BB7DB4()
{
  result = qword_1EC0C45C8;
  if (!qword_1EC0C45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45C8);
  }

  return result;
}

unint64_t sub_1C4BB7E0C()
{
  result = qword_1EC0C45D0;
  if (!qword_1EC0C45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45D0);
  }

  return result;
}

unint64_t sub_1C4BB7E64()
{
  result = qword_1EDDF86D0;
  if (!qword_1EDDF86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86D0);
  }

  return result;
}

unint64_t sub_1C4BB7EBC()
{
  result = qword_1EDDF86D8;
  if (!qword_1EDDF86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86D8);
  }

  return result;
}

unint64_t sub_1C4BB7F14()
{
  result = qword_1EDDF8698;
  if (!qword_1EDDF8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8698);
  }

  return result;
}

unint64_t sub_1C4BB7F6C()
{
  result = qword_1EDDF86A0;
  if (!qword_1EDDF86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86A0);
  }

  return result;
}

uint64_t sub_1C4BB7FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656372756F73 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C4F87A00 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7954657461647075 && a2 == 0xEA00000000006570;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001C4FB65B0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000015 && 0x80000001C4FB65D0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4BB8228(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C45F0, &unk_1C4F5A570);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9 - 8];
  sub_1C4409678(a1, a1[3]);
  sub_1C444D218();
  sub_1C4F02BF8();
  LOBYTE(v14) = 0;
  sub_1C43FDF6C();
  sub_1C4F027D8();
  if (!v2)
  {
    LOBYTE(v14) = *(v3 + 8);
    v13[0] = 1;
    sub_1C444A808();
    sub_1C43FDF6C();
    sub_1C4F027E8();
    LOBYTE(v14) = 2;
    sub_1C4F02798();
    LOBYTE(v14) = *(v3 + 32);
    v13[0] = 3;
    sub_1C4BB9554();
    sub_1C43FDF6C();
    sub_1C4F027E8();
    LOBYTE(v14) = 4;
    sub_1C4F027B8();
    LOBYTE(v14) = 5;
    sub_1C43FDF6C();
    sub_1C4F027A8();
    v14 = *(v3 + 56);
    v15 = v14;
    v13[23] = 6;
    sub_1C4BB95A8(&v15, v13);
    sub_1C446E5F8();
    sub_1C43FDF6C();
    sub_1C4F02778();
    sub_1C441DFEC(v14, *(&v14 + 1));
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4BB847C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BB7FE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BB84A4(uint64_t a1)
{
  v2 = sub_1C444D218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BB84E0(uint64_t a1)
{
  v2 = sub_1C444D218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BB8534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4BB9618();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4BB8628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4BB966C();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C4BB86A0()
{
  result = qword_1EC0C45D8;
  if (!qword_1EC0C45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45D8);
  }

  return result;
}

unint64_t sub_1C4BB86F8()
{
  result = qword_1EDDEAEC8;
  if (!qword_1EDDEAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEC8);
  }

  return result;
}

unint64_t sub_1C4BB8750()
{
  result = qword_1EC0C45E0;
  if (!qword_1EC0C45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45E0);
  }

  return result;
}

uint64_t sub_1C4BB87A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v39 = a1;
  v36 = a4;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v36 - v9;
  v38 = sub_1C4EFBC98();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = sub_1C4EFB678();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4400B4C();
  sub_1C4EFB648();
  sub_1C4EFB638();
  sub_1C4409528(a2);
  *&v40[0] = v24;
  *(&v40[0] + 1) = v25;
  sub_1C4415EA8();
  sub_1C4EFB668();

  sub_1C4433898();
  if (a3)
  {
    v26 = 0x6E6F6974656C6564;
    if (a3 == 1)
    {
      v27 = 0xE800000000000000;
    }

    else
    {
      v26 = 0x646574736F70;
      v27 = 0xE600000000000000;
    }
  }

  else
  {
    v27 = 0xE600000000000000;
    v26 = 0x6C616D726F6ELL;
  }

  *&v40[0] = v26;
  *(&v40[0] + 1) = v27;
  sub_1C4EFB668();

  sub_1C4EFB638();
  (*(v18 + 32))(v22, v4, v16);
  sub_1C4EFBC88();
  v28 = v42;
  sub_1C4EFBEE8();
  if (v28)
  {
    return (*(v11 + 8))(v15, v38);
  }

  (*(v11 + 8))(v15, v38);
  sub_1C4EFB768();
  v30 = v37;
  sub_1C43FCF64();
  sub_1C440BAA8(v31, v32, v33, v34);
  sub_1C444C5E8();
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v35 = sub_1C4EFB3E8();

  sub_1C4423A0C(v40, &unk_1EC0BC770, &qword_1C4F10DC0);
  result = sub_1C4423A0C(v30, &unk_1EC0C06C0, &unk_1C4F10DB0);
  *v36 = v35;
  return result;
}

void sub_1C4BB8B20()
{
  sub_1C43FE628();
  v67 = v1;
  v3 = v2;
  v71 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v74 = v11;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v13 = sub_1C43FBD18(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v61 = v14 - v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v58 - v17;
  v73 = sub_1C4EFBC98();
  sub_1C43FCDF8();
  v70 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v66 = v20 - v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v72 = sub_1C4EFB678();
  sub_1C43FCDF8();
  v69 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  v65 = v27 - v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  v64 = &v58 - v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v58 - v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4400B4C();
  sub_1C4EFB648();
  sub_1C4EFB638();
  v62 = v10;
  sub_1C4409528(v10);
  *&v75 = v35;
  *(&v75 + 1) = v36;
  sub_1C4415EA8();
  sub_1C4EFB668();

  sub_1C4EFB638();
  *&v63 = v8;
  *(&v63 + 1) = v6;
  *&v75 = v8;
  *(&v75 + 1) = v6;
  sub_1C4EFB668();
  sub_1C4433898();
  if (v71)
  {
    v37 = 0x6E6F6974656C6564;
    if (v71 == 1)
    {
      v38 = 0xE800000000000000;
    }

    else
    {
      v37 = 0x646574736F70;
      v38 = 0xE600000000000000;
    }
  }

  else
  {
    v38 = 0xE600000000000000;
    v37 = 0x6C616D726F6ELL;
  }

  *&v75 = v37;
  *(&v75 + 1) = v38;
  sub_1C4EFB668();

  sub_1C4EFB638();
  v39 = *(v69 + 4);
  v39(v33, v0, v72);
  sub_1C4EFBC88();
  v40 = v67;
  v41 = sub_1C4EFBEE8();
  v42 = v68;
  if (!v40)
  {
    v43 = v41;
    v69 = v39;
    v44 = *(v70 + 8);
    v44(v24, v73);
    v45 = sub_1C4EFB768();
    sub_1C43FCF64();
    sub_1C440BAA8(v46, v47, v48, v45);
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v49 = MEMORY[0x1E69E6530];
    sub_1C4EFB9A8();
    v70 = 0;
    v59 = v45;
    v67 = v43;
    v60 = v44;
    sub_1C4423A0C(&v75, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v42, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v78)
    {
      v50 = v64;
      sub_1C4EFB648();
      sub_1C4EFB638();
      *(&v76 + 1) = &_s10SourceTypeON;
      v77 = sub_1C4BB75B4();
      LOBYTE(v75) = v62;
      sub_1C4EFB658();
      sub_1C4432BAC();
      sub_1C44260F0();
      v75 = v63;
      sub_1C4EFB668();
      sub_1C44260F0();
      *(&v76 + 1) = &_s10UpdateTypeON;
      v77 = sub_1C4BB9500();
      LOBYTE(v75) = v71;
      sub_1C4EFB658();
      sub_1C4432BAC();
      sub_1C44260F0();
      *(&v76 + 1) = MEMORY[0x1E69E63B0];
      v77 = MEMORY[0x1E69A0160];
      *&v75 = v3;
      sub_1C4EFB658();
      sub_1C4432BAC();
      sub_1C44260F0();
      *(&v76 + 1) = v49;
      v77 = MEMORY[0x1E69A0178];
      *&v75 = 1;
      sub_1C4EFB658();
      sub_1C4432BAC();
      sub_1C4EFB638();
      v69(v65, v50, v72);
      sub_1C4EFBC88();
      v51 = v70;
      sub_1C4EFBEE8();
      if (!v51)
      {
        sub_1C440E3C8();
        v53();
        v54 = v61;
        sub_1C43FCF64();
        sub_1C440BAA8(v55, v56, v57, v59);
        sub_1C4EFC0A8();
        sub_1C4423A0C(v54, &unk_1EC0C06C0, &unk_1C4F10DB0);

        sub_1C4EFBF18();

        goto LABEL_14;
      }

      sub_1C440E3C8();
      v52();
    }

    goto LABEL_14;
  }

  (*(v70 + 8))(v24, v73);
LABEL_14:
  sub_1C44109F8();
}

void sub_1C4BB91E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C440101C();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  swift_unownedRetainStrong();
  sub_1C4440C6C(a4);

  if (!v6)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C4F0CE60;
    if (a3 >> 60 == 15)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(v19 + 48) = 0;
    }

    else
    {
      v23 = MEMORY[0x1E699FD70];
      v22 = MEMORY[0x1E6969080];
      v20 = a2;
      v21 = a3;
    }

    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    v24 = MEMORY[0x1E69E6530];
    *(v19 + 56) = v22;
    *(v19 + 64) = v23;
    v25 = MEMORY[0x1E69A0180];
    *(v19 + 96) = v24;
    *(v19 + 104) = v25;
    *(v19 + 72) = a1;
    sub_1C4431E64(a2, a3);
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v14 + 8))(v18, v12);
    sub_1C43FCF64();
    sub_1C440BAA8(v26, v27, v28, v12);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v5, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
}

uint64_t sub_1C4BB9410()
{
  sub_1C4EFBE98();
  if (!v0)
  {
    v1 = sub_1C4EFBE98();
    sub_1C4EFBE98();
  }

  return v1;
}

unint64_t sub_1C4BB9500()
{
  result = qword_1EDDF9D80;
  if (!qword_1EDDF9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D80);
  }

  return result;
}

unint64_t sub_1C4BB9554()
{
  result = qword_1EDDF9D70;
  if (!qword_1EDDF9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D70);
  }

  return result;
}

uint64_t sub_1C4BB95A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD330, &qword_1C4F2DAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4BB9618()
{
  result = qword_1EC0C45F8;
  if (!qword_1EC0C45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C45F8);
  }

  return result;
}

unint64_t sub_1C4BB966C()
{
  result = qword_1EDDF8830;
  if (!qword_1EDDF8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8830);
  }

  return result;
}

_BYTE *_s11SourceStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BB97A0()
{
  result = qword_1EC0C4600;
  if (!qword_1EC0C4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4600);
  }

  return result;
}

unint64_t sub_1C4BB97F8()
{
  result = qword_1EDDF8848;
  if (!qword_1EDDF8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8848);
  }

  return result;
}

unint64_t sub_1C4BB9850()
{
  result = qword_1EDDF8850;
  if (!qword_1EDDF8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8850);
  }

  return result;
}

void sub_1C4BB98B0()
{
  sub_1C43FE96C();
  v3 = v2;
  v29 = v4;
  v6 = v5;
  v8 = v7;
  v28 = v9;
  v10 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C440101C();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);

  if (!v1)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C4F0C890;
    v20 = MEMORY[0x1E69E6530];
    v21 = MEMORY[0x1E69A0180];
    *(v19 + 56) = MEMORY[0x1E69E6530];
    *(v19 + 64) = v21;
    *(v19 + 32) = v28;
    if (v29)
    {
      v22 = MEMORY[0x1E69A0138];
      v23 = MEMORY[0x1E69E6158];
      v24 = v29;
    }

    else
    {
      v6 = 0;
      v24 = 0;
      v23 = 0;
      v22 = 0;
      *(v19 + 88) = 0;
    }

    *(v19 + 72) = v6;
    *(v19 + 80) = v24;
    *(v19 + 96) = v23;
    *(v19 + 104) = v22;
    *(v19 + 136) = v20;
    *(v19 + 144) = v21;
    *(v19 + 112) = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v14 + 8))(v18, v12);
    v25 = sub_1C44038D0();
    sub_1C440FD0C(v25, v26, v27, v12);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4BB9AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v11 - v6;
  swift_unownedRetainStrong();
  v8 = sub_1C4440C6C(a1);

  if (!v2)
  {

    v9 = sub_1C4EFB768();
    sub_1C440BAA8(v7, 1, 1, v9);
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_1C43FE99C();
    v8 = sub_1C4EFB988();

    sub_1C4423A0C(v11, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v7, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return v8;
}

uint64_t sub_1C4BB9C24()
{
  v1 = 0xE000000000000000;
  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  v24 = v25;
  MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FB6B60);
  *&v25 = *v0;
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](0x203A652027, 0xE500000000000000);
  v3 = sub_1C4CC2358(*(v0 + 8));
  MEMORY[0x1C6940010](v3);

  MEMORY[0x1C6940010](0x203A72726520, 0xE600000000000000);
  v4 = *(v0 + 32);
  if (v4)
  {
    v5 = *(v0 + 24);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v1 = *(v0 + 32);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v5, v1);

  v6 = 0xE400000000000000;
  MEMORY[0x1C6940010](540696864, 0xE400000000000000);
  *&v25 = *(v0 + 16);
  v7 = sub_1C4F02858();
  MEMORY[0x1C6940010](v7);

  v8 = MEMORY[0x1C6940010](0x736E6F6974706F20, 0xEA0000000000203ALL);
  *&v25 = *(v0 + 40);
  sub_1C43FC9C4(v8, v9, &unk_1F4400FA0, v10, v11, v12, v13);
  MEMORY[0x1C6940010](0x203A637420, 0xE500000000000000);
  if (*(v0 + 48))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if ((*(v0 + 48) & 1) == 0)
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v14, v6);

  v15 = MEMORY[0x1C6940010](0x203A6570797420, 0xE700000000000000);
  LOBYTE(v25) = *(v0 + 49);
  sub_1C43FC9C4(v15, v16, &unk_1F4406328, v17, v18, v19, v20);
  MEMORY[0x1C6940010](0x72616D6B6F6F6220, 0xEB00000000203A6BLL);
  v25 = *(v0 + 56);
  v23[1] = *(v0 + 56);
  sub_1C4BB95A8(&v25, v23);
  sub_1C456902C(&qword_1EC0BD330, &qword_1C4F2DAF0);
  v21 = sub_1C4F01198();
  MEMORY[0x1C6940010](v21);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v24;
}

uint64_t sub_1C4BB9EE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564724F77656976 && a2 == 0xED00006449646572;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5364656C62616E65 && a2 == 0xED00007375746174;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4374706D65747461 && a2 == 0xEC000000746E756FLL;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x724373656C626174 && a2 == 0xED00006465746165;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6570795466666964 && a2 == 0xE800000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4BBA188(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4610, &unk_1C4F5A9C0);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9 - 8];
  sub_1C4409678(a1, a1[3]);
  sub_1C44429A8();
  sub_1C4F02BF8();
  LOBYTE(v14) = 0;
  sub_1C43FDF6C();
  sub_1C4F027D8();
  if (!v2)
  {
    LOBYTE(v14) = *(v3 + 8);
    v13[0] = 1;
    sub_1C4BBB954();
    sub_1C43FDF6C();
    sub_1C4F027E8();
    LOBYTE(v14) = 2;
    sub_1C43FDF6C();
    sub_1C4F027D8();
    LOBYTE(v14) = 3;
    sub_1C4F02738();
    *&v14 = *(v3 + 40);
    v13[0] = 4;
    sub_1C4BBB9A8();
    sub_1C43FDF6C();
    sub_1C4F027E8();
    LOBYTE(v14) = 5;
    sub_1C43FDF6C();
    sub_1C4F027A8();
    LOBYTE(v14) = *(v3 + 49);
    v13[0] = 6;
    sub_1C4BBB9FC();
    sub_1C43FDF6C();
    sub_1C4F027E8();
    v14 = *(v3 + 56);
    v15 = v14;
    v13[23] = 7;
    sub_1C4BB95A8(&v15, v13);
    sub_1C446E5F8();
    sub_1C43FDF6C();
    sub_1C4F02778();
    sub_1C441DFEC(v14, *(&v14 + 1));
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4BBA40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BB9EE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BBA434(uint64_t a1)
{
  v2 = sub_1C44429A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BBA470(uint64_t a1)
{
  v2 = sub_1C44429A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BBA4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4BBBA50();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4BBA5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4BBBAA4();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void sub_1C4BBA67C()
{
  sub_1C43FE96C();
  v2 = v1;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v41 = v8;
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v35 - v11;
  sub_1C4EFBC98();
  sub_1C43FCDF8();
  v39 = v13;
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v37 = sub_1C4EFB678();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v35 - v23;
  v25 = v5 & 1;
  if ((v2 & 1) == 0)
  {
    v25 = v5 & 1 | 2;
  }

  v36 = v25;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v26 = MEMORY[0x1E69E6530];
  v27 = MEMORY[0x1E69A0178];
  v44 = MEMORY[0x1E69E6530];
  v45 = MEMORY[0x1E69A0178];
  v42 = v7;
  sub_1C4EFB658();
  sub_1C44338B8();
  sub_1C4EFB638();
  v44 = v26;
  v45 = v27;
  v42 = 0;
  sub_1C4EFB658();
  sub_1C44338B8();
  sub_1C4EFB638();
  v44 = v26;
  v45 = v27;
  v42 = v36;
  sub_1C4EFB658();
  sub_1C44338B8();
  sub_1C4EFB638();
  v28 = 0x6E61684377656976;
  if (v38)
  {
    v28 = 0x4F64657461647075;
    v29 = 0xED00007463656A62;
  }

  else
  {
    v29 = 0xEB00000000646567;
  }

  v42 = v28;
  v43 = v29;
  sub_1C4415EA8();
  sub_1C4EFB668();

  sub_1C4EFB638();
  (*(v18 + 32))(v21, v24, v37);
  sub_1C4EFBC88();
  sub_1C4EFBEE8();
  (*(v39 + 8))(v16, v40);
  if (!v0)
  {
    sub_1C4EFB768();
    v30 = v35;
    v31 = sub_1C44038D0();
    sub_1C440FD0C(v31, v32, v33, v34);
    sub_1C4423A0C(v30, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BBAA38()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C4405820();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);
  sub_1C4402530();
  if (!v1)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E6530];
    *(v10 + 16) = xmmword_1C4F0D130;
    v12 = MEMORY[0x1E69A0180];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    *(v10 + 32) = v5;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v13 = sub_1C43FBF04();
    v14(v13);
    v15 = sub_1C44038D0();
    sub_1C440BAA8(v15, v16, v17, v8);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1C4EFB9A8();

    sub_1C4423A0C(v18, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BBAC48()
{
  sub_1C43FE96C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C440101C();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C4405820();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v4);
  sub_1C4402530();
  if (!v1)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C4F0CE60;
    v16 = MEMORY[0x1E69E6530];
    v17 = MEMORY[0x1E69A0180];
    *(v15 + 56) = MEMORY[0x1E69E6530];
    *(v15 + 64) = v17;
    *(v15 + 32) = v8;
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 72) = v6;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v13 + 8))(v2, v11);
    v18 = sub_1C44038D0();
    sub_1C440FD0C(v18, v19, v20, v11);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BBADF4()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C4405820();
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);
  sub_1C4402530();
  if (!v1)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E6370];
    v14 = MEMORY[0x1E69A0150];
    *(v12 + 16) = xmmword_1C4F0CE60;
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    v15 = MEMORY[0x1E69E6530];
    *(v12 + 32) = v5 & 1;
    v16 = MEMORY[0x1E69A0180];
    *(v12 + 96) = v15;
    *(v12 + 104) = v16;
    *(v12 + 72) = v7;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v17 = sub_1C43FBF04();
    v18(v17);
    v19 = sub_1C44038D0();
    sub_1C440FD0C(v19, v20, v21, v10);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BBAFAC()
{
  sub_1C43FE96C();
  v3 = v2;
  v28 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C440101C();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  swift_unownedRetainStrong();
  sub_1C4440C6C(v3);

  if (!v1)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C4F0CE60;
    if (v28 >> 60 == 15)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      *(v18 + 48) = 0;
    }

    else
    {
      v22 = MEMORY[0x1E699FD70];
      v21 = MEMORY[0x1E6969080];
      v19 = v6;
      v20 = v28;
    }

    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    v23 = MEMORY[0x1E69E6530];
    *(v18 + 56) = v21;
    *(v18 + 64) = v22;
    v24 = MEMORY[0x1E69A0180];
    *(v18 + 96) = v23;
    *(v18 + 104) = v24;
    *(v18 + 72) = v8;
    sub_1C4431E64(v6, v28);
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v13 + 8))(v17, v11);
    v25 = sub_1C44038D0();
    sub_1C440FD0C(v25, v26, v27, v11);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4BBB1BC()
{
  sub_1C43FE96C();
  if (*(v0 + 64) >> 60 != 15)
  {
    if (*(v0 + 49))
    {
      sub_1C44F92C4();
    }

    else
    {
      sub_1C4463B90();
    }

    swift_getAssociatedTypeWitness();
    sub_1C43FCDF8();
    sub_1C43FBC68();
    MEMORY[0x1EEE9AC00](v2);
    sub_1C4405820();
    v3 = sub_1C43FE99C();
    sub_1C44344B8(v3, v4);
    sub_1C43FE99C();
    sub_1C4BA9CC8();
    if (v1)
    {
      v5 = sub_1C43FE99C();
      sub_1C441DFEC(v5, v6);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      sub_1C4F00FB8();
      v7 = sub_1C43FE99C();
      sub_1C441DFEC(v7, v8);
      v9 = sub_1C43FBF04();
      v10(v9);
    }
  }

  sub_1C43FBC80();
}

void sub_1C4BBB34C()
{
  sub_1C43FE96C();
  v39 = v2;
  v3 = sub_1C4EFBC98();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C4405820();
  v7 = sub_1C4EFB678();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v34 = MEMORY[0x1E69E6530];
  v35 = MEMORY[0x1E69A0178];
  v33[0] = 0;
  sub_1C4EFB658();
  sub_1C4423A0C(v33, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C4EFB638();
  (*(v9 + 32))(v12, v15, v7);
  sub_1C4EFBC88();
  v16 = sub_1C4EFBEA8();
  if (v0)
  {
    (*(v5 + 8))(v1, v3);
  }

  else
  {
    v17 = v16;
    (*(v5 + 8))(v1, v3);
    v18 = sub_1C43FDF7C();
    v27 = sub_1C43FDF7C();
    v26 = sub_1C43FDF7C();
    v25 = sub_1C4EFBE98();
    v24 = sub_1C43FDF7C();
    v19 = sub_1C43FDF7C();
    v20 = sub_1C4EFBE98();

    *&v29 = v18;
    *(&v29 + 1) = v27;
    *&v30 = v26;
    *(&v30 + 1) = v25;
    *&v31 = v24;
    *(&v31 + 1) = v20;
    *&v32 = v19;
    *(&v32 + 1) = v17;
    v33[0] = v18;
    v33[1] = v27;
    v33[2] = v26;
    v34 = v25;
    v35 = v24;
    v36 = v20;
    v37 = v19;
    v38 = v17;
    sub_1C4BBB7D8(&v29, &v28);
    sub_1C4BBB810(v33);
    v21 = v30;
    *v39 = v29;
    v39[1] = v21;
    v22 = v32;
    v39[2] = v31;
    v39[3] = v22;
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4BBB850()
{
  result = qword_1EDDEAED0;
  if (!qword_1EDDEAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAED0);
  }

  return result;
}

unint64_t sub_1C4BBB8A8()
{
  result = qword_1EDDEAED8;
  if (!qword_1EDDEAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAED8);
  }

  return result;
}

unint64_t sub_1C4BBB900()
{
  result = qword_1EC0C4608;
  if (!qword_1EC0C4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4608);
  }

  return result;
}

unint64_t sub_1C4BBB954()
{
  result = qword_1EDDF9E40;
  if (!qword_1EDDF9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9E40);
  }

  return result;
}

unint64_t sub_1C4BBB9A8()
{
  result = qword_1EDDF8868[0];
  if (!qword_1EDDF8868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF8868);
  }

  return result;
}

unint64_t sub_1C4BBB9FC()
{
  result = qword_1EDDF8E00;
  if (!qword_1EDDF8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8E00);
  }

  return result;
}

unint64_t sub_1C4BBBA50()
{
  result = qword_1EC0C4620;
  if (!qword_1EC0C4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4620);
  }

  return result;
}

unint64_t sub_1C4BBBAA4()
{
  result = qword_1EDDF8860;
  if (!qword_1EDDF8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8860);
  }

  return result;
}

_BYTE *_s9ViewStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BBBBE4()
{
  result = qword_1EC0C4628;
  if (!qword_1EC0C4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4628);
  }

  return result;
}

unint64_t sub_1C4BBBC3C()
{
  result = qword_1EC0C4630;
  if (!qword_1EC0C4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4630);
  }

  return result;
}

unint64_t sub_1C4BBBC98()
{
  result = qword_1EC0C4638;
  if (!qword_1EC0C4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4638);
  }

  return result;
}

unint64_t sub_1C4BBBCF0()
{
  result = qword_1EC0C4640;
  if (!qword_1EC0C4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4640);
  }

  return result;
}

unint64_t sub_1C4BBBD48()
{
  result = qword_1EDDFDF48;
  if (!qword_1EDDFDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDF48);
  }

  return result;
}

unint64_t sub_1C4BBBDA0()
{
  result = qword_1EDDFDF50;
  if (!qword_1EDDFDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDF50);
  }

  return result;
}

unint64_t sub_1C4BBBDF4()
{
  sub_1C4F02248();

  sub_1C4EF98F8();
  sub_1C449021C(&qword_1EDDFF9E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v0 = sub_1C4F02858();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000010;
}

void sub_1C4BBBF08()
{
  sub_1C43FE96C();
  v32 = v0;
  v33 = v1;
  sub_1C4EFB5A8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v35 = sub_1C4EFB5F8();
  sub_1C43FCDF8();
  v34 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4BBC758();
  sub_1C4EFB5E8();
  v9 = *(v3 + 104);
  v10 = sub_1C4401068();
  v9(v10);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v11 = *(v3 + 8);
  v12 = sub_1C43FD018();
  v11(v12);
  v13 = sub_1C4401068();
  v9(v13);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v14 = sub_1C43FD018();
  v11(v14);
  v15 = sub_1C4401068();
  v9(v15);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v16 = sub_1C43FD018();
  v11(v16);
  v17 = sub_1C4401068();
  v9(v17);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v18 = sub_1C43FD018();
  v11(v18);
  v19 = sub_1C4401068();
  v9(v19);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v20 = sub_1C43FD018();
  v11(v20);
  v21 = sub_1C4401068();
  v9(v21);
  sub_1C4432BC8();
  sub_1C4EFB5C8();
  v22 = sub_1C43FD018();
  v11(v22);
  sub_1C449021C(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool, &unk_1C4F244D0);
  v23 = v33;
  v24 = sub_1C4EFB5D8();
  if (!v23)
  {
    MEMORY[0x1EEE9AC00](v24);
    *(&v31 - 2) = v8;
    sub_1C4418704(sub_1C4BC1B18, (&v31 - 4), v25, v26, v27, v28, v29, v30, v31, v32);
  }

  (*(v34 + 8))(v8, v35);
  sub_1C43FBC80();
}

uint64_t sub_1C4BBC318(uint64_t a1)
{
  result = sub_1C4418EA8(a1, &OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_initialFilterStatementCacheBacking, type metadata accessor for ViewDatabase.InitialFilterStatementCache, 32, sub_1C4BC0E28);
  if (!v1)
  {

    sub_1C4418EA8(a1, &OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_enqueueViewStatementCacheBacking, type metadata accessor for ViewDatabase.EnqueueViewStatementCache, 48, sub_1C4BC1004);

    sub_1C4418EA8(a1, &OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_statementCacheBacking, type metadata accessor for ViewDatabase.StatementCache, 488, sub_1C4BC11DC);
  }

  return result;
}

uint64_t sub_1C4BBC424()
{
  sub_1C4BBC4EC();
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_url;
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_config);

  return v0;
}

uint64_t sub_1C4BBC4EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_configCache);
  os_unfair_lock_lock(v1 + 6);
  sub_1C4F00238();
  os_unfair_lock_unlock(v1 + 6);
  sub_1C446C37C(sub_1C4BC1AE0, v0);
  return sub_1C4EFAEB8();
}

uint64_t sub_1C4BBC574()
{
  sub_1C4BBC424();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BBC5D4(uint64_t a1)
{
  result = sub_1C4EF98F8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Configuration(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4BBC6E4()
{
  if (qword_1EDDFF7A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C4BBC758()
{
  v1 = *v0;
  v4 = v0;
  v5 = v1;
  return sub_1C446C37C(sub_1C4BC1B34, &v3);
}

uint64_t sub_1C4BBC7D0(uint64_t a1)
{
  v79 = a1;
  v65 = sub_1C4EFB078();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1C4EFB0B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v66 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = v57 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v67 = v57 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v68 = v57 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v69 = v57 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v70 = v57 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v71 = v57 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v72 = v57 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v57 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v73 = v57 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v57 - v25;
  v27 = sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
  v28 = *(v3 + 72);
  v83 = v3;
  v29 = *(v3 + 80);
  v77 = v27;
  v74 = ((v29 + 32) & ~v29) + 2 * v28;
  v30 = swift_allocObject();
  v75 = xmmword_1C4F0CE60;
  *(v30 + 16) = xmmword_1C4F0CE60;
  v76 = (v29 + 32) & ~v29;
  sub_1C4EFB058();
  sub_1C4EFB0A8();
  *&v80 = v30;
  v31 = sub_1C449021C(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  v32 = sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  v33 = sub_1C4829BD0();
  sub_1C4F020C8();
  v34 = v78;
  sub_1C4EFBFC8();
  if (v34)
  {
    return (*(v83 + 8))(v26, v2);
  }

  v60 = v21;
  v36 = *(v83 + 8);
  v83 += 8;
  v78 = v36;
  v36(v26, v2);
  v37 = swift_allocObject();
  v61 = 0;
  v38 = v37;
  *(v37 + 16) = v75;
  sub_1C4EFB058();
  sub_1C4EFB0A8();
  *&v80 = v38;
  v39 = v73;
  sub_1C4F020C8();
  v40 = v61;
  sub_1C4EFBFC8();
  if (v40)
  {
    return (v78)(v39, v2);
  }

  v78(v39, v2);
  v41 = swift_allocObject();
  v61 = v28;
  v42 = v41;
  v58 = xmmword_1C4F0D130;
  *(v41 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v80 = v42;
  v43 = v60;
  v59 = v32;
  sub_1C4F020C8();
  v73 = "create_view_state";
  sub_1C4EFBFC8();
  v57[1] = v33;
  v57[2] = v31;
  v57[3] = v29;
  v44 = v78;
  v78(v43, v2);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1C4EFBFA8();
  v73 = v2;
  sub_1C446F170(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  v45 = v72;
  sub_1C4EFB058();
  sub_1C4EFBFC8();
  v46 = v73;
  v44(v45, v73);
  v47 = swift_allocObject();
  *(v47 + 16) = v58;
  sub_1C4EFB058();
  *&v80 = v47;
  v48 = v71;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v44(v48, v46);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  v49 = swift_allocObject();
  *(v49 + 16) = v58;
  sub_1C4EFB058();
  *&v80 = v49;
  v50 = v70;
  v51 = v73;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v78(v50, v51);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  v52 = swift_allocObject();
  *(v52 + 16) = v58;
  sub_1C4EFB058();
  *&v80 = v52;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v78(v69, v73);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  v53 = swift_allocObject();
  *(v53 + 16) = v58;
  sub_1C4EFB058();
  *&v80 = v53;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v78(v68, v73);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1C4EFBFA8();
  sub_1C446F170(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  v54 = swift_allocObject();
  *(v54 + 16) = v75;
  sub_1C4EFB058();
  sub_1C4EFB0A8();
  *&v80 = v54;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v78(v67, v73);
  v55 = swift_allocObject();
  *(v55 + 16) = v58;
  sub_1C4EFB058();
  *&v80 = v55;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v78(v62, v73);
  sub_1C4EFB058();
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1C4EFBFB8();
  sub_1C446F170(&v80, &qword_1EC0C5040, &qword_1C4F0F950);
  (*(v64 + 8))(v63, v65);
  v56 = swift_allocObject();
  *(v56 + 16) = v75;
  sub_1C4EFB058();
  sub_1C4EFB0A8();
  *&v80 = v56;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (v78)(v66, v73);
}

uint64_t sub_1C4BBD8E0()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB4F8();

  sub_1C446F170(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBDAFC()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB4F8();

  sub_1C446F170(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBDD38()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB4F8();

  sub_1C446F170(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBE288()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB4F8();

  sub_1C446F170(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBE674()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB4F8();

  sub_1C446F170(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

void sub_1C4BBEB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v23 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &a9 - v24;
  v26 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v26 - 8);
  sub_1C4EFBE08();
  sub_1C4EFBE38();
  sub_1C44126D0();
  sub_1C4EFB498();
  sub_1C441392C();
  v27 = sub_1C4EFBF38();
  sub_1C440BAA8(v25, 1, 1, v27);
  sub_1C4EFB4F8();

  sub_1C446F170(v25, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C44126D0();
  sub_1C44091EC();
  sub_1C4EFB498();

  sub_1C441392C();
  sub_1C4EFBE08();
  sub_1C44126D0();
  sub_1C4EFB498();

  sub_1C441392C();
  sub_1C4EFBDE8();
  sub_1C44126D0();
  sub_1C44091EC();
  sub_1C4EFB498();

  sub_1C441392C();
  sub_1C4EFBDE8();
  sub_1C44126D0();
  sub_1C4EFB498();

  sub_1C441392C();
  sub_1C4EFBDB8();
  sub_1C44126D0();
  sub_1C4EFB498();

  sub_1C441392C();
  sub_1C43FBC80();
}

uint64_t sub_1C4BBEDA8()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB4F8();

  sub_1C446F170(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDF8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBF0DC()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00C8];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C446F170(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4BBF2F8()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00C8];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB4F8();

  sub_1C446F170(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v2, 1, 1, v8);
  sub_1C4EFB538();

  return sub_1C446F170(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4BBF574()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C446F170(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00C8];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C446F170(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4BBF798()
{
  v1 = sub_1C4EFB078();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C4EFBF78();
  if (!v0)
  {
    sub_1C4EFB058();
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1C4EFBFB8();
    sub_1C446F170(v6, &qword_1EC0C5040, &qword_1C4F0F950);
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1C4BBF920()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  sub_1C4EFBDD8();
  v3 = sub_1C4EFBE38();
  sub_1C440BAA8(v2, 0, 1, v3);
  sub_1C4EFB458();

  return sub_1C446F170(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BBFA9C()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C4BBFB98(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v32 - v4;
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4EFB0B8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB058();
  v34 = a1;
  sub_1C4EFBFC8();
  if (v1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v11 + 8))(v13, v10);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  v32[0] = v7;
  v16 = *(v7 + 8);
  v15 = v7 + 8;
  v16(v9, v6);
  sub_1C456902C(&qword_1EC0C4658, &qword_1C4F5AEC8);
  v17 = *(v15 + 64);
  v18 = (*(v15 + 72) + 32) & ~*(v15 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C4F0D480;
  v32[1] = v19;
  v20 = v19 + v18;
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v21 = swift_allocObject();
  v33 = xmmword_1C4F0CE60;
  v22 = MEMORY[0x1E69E6158];
  v23 = MEMORY[0x1E69A0138];
  *(v21 + 16) = xmmword_1C4F0CE60;
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  *(v21 + 32) = 0x6E6F697461636F4CLL;
  *(v21 + 40) = 0xEF7365676E616843;
  *(v21 + 96) = v22;
  *(v21 + 104) = v23;
  *(v21 + 72) = 0x6E6F697461636F4CLL;
  *(v21 + 80) = 0xE800000000000000;
  sub_1C4EFB728();
  v24 = swift_allocObject();
  *(v24 + 16) = v33;
  *(v24 + 56) = v22;
  *(v24 + 64) = v23;
  strcpy((v24 + 32), "PersonChanges");
  *(v24 + 46) = -4864;
  *(v24 + 96) = v22;
  *(v24 + 104) = v23;
  *(v24 + 72) = 0x6E6F73726550;
  *(v24 + 80) = 0xE600000000000000;
  sub_1C4EFB728();
  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  *(v25 + 56) = v22;
  *(v25 + 64) = v23;
  strcpy((v25 + 32), "EventChanges");
  *(v25 + 45) = 0;
  *(v25 + 46) = -5120;
  *(v25 + 96) = v22;
  *(v25 + 104) = v23;
  *(v25 + 72) = 0x746E657645;
  *(v25 + 80) = 0xE500000000000000;
  sub_1C4EFB728();
  v26 = swift_allocObject();
  *(v26 + 16) = v33;
  *(v26 + 56) = v22;
  v27 = MEMORY[0x1E69A0138];
  *(v26 + 32) = 0x6572617774666F53;
  *(v26 + 40) = 0xEF7365676E616843;
  *(v26 + 96) = v22;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = 0x6572617774666F53;
  *(v26 + 80) = 0xE800000000000000;
  sub_1C4EFB728();
  v34 = sub_1C4EFBE98();
  *&v33 = v17;
  v28 = v32[0] + 16;
  v29 = *(v32[0] + 16);
  v30 = 4;
  do
  {
    v31 = v28;
    v29(v5, v20, v6);
    sub_1C440BAA8(v5, 0, 1, v6);
    sub_1C4EFC0A8();
    sub_1C446F170(v5, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v20 += v33;
    --v30;
    v28 = v31;
  }

  while (v30);
  swift_setDeallocating();
  sub_1C49E17B8();
}

uint64_t sub_1C4BC0128()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  sub_1C4EFBE08();
  v3 = sub_1C4EFBE38();
  sub_1C440BAA8(v2, 0, 1, v3);
  sub_1C4EFB498();

  sub_1C446F170(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v2, 0, 1, v3);
  sub_1C4EFB498();

  return sub_1C446F170(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BC02C4()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  sub_1C4EFBDB8();
  v3 = sub_1C4EFBE38();
  sub_1C440BAA8(v2, 0, 1, v3);
  sub_1C4EFB458();

  return sub_1C446F170(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4BC03A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB5F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(v4 + 16);
  v18 = a2;
  v11(&v17 - v9, a2, v3, v8);
  v12 = v19;
  v13 = sub_1C4EFB5B8();
  if (v12)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v15 = v13;
  v19 = *(v4 + 8);
  result = v19(v10, v3);
  if (v15)
  {
    (v11)(v6, v18, v3);
    sub_1C4B62F60();
    v19(v6, v3);
    sub_1C4778114();
    swift_allocError();
    *v16 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C4BC0594()
{
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C442B738(v0, qword_1EDE2E088);
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C43F8000, v1, v2, "ViewDatabase: clearing all tables", v3, 2u);
    MEMORY[0x1C6942830](v3, -1, -1);
  }

  return sub_1C446C37C(sub_1C4BC0698, 0);
}

uint64_t sub_1C4BC0698()
{
  v0 = sub_1C4499940();
  sub_1C46A9F14(v0);
}

uint64_t sub_1C4BC06EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_1C4EFB768();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C4EFBE58();
  if (!v2 && (result & 1) != 0)
  {
    v13 = sub_1C4EFBE98();
    v21[1] = a1;
    v21[2] = a2;
    v22 = 0;
    v14 = 0;
    v26 = (v9 + 8);
    v23 = xmmword_1C4F0D130;
LABEL_4:
    v15 = (&unk_1F43DCF20 + 16 * v14 + 40);
    while (++v14 != 3)
    {
      v16 = v13;
      v18 = *(v15 - 1);
      v17 = *v15;
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v19 = swift_allocObject();
      *(v19 + 16) = v23;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = MEMORY[0x1E69A0138];
      *(v19 + 32) = v18;
      *(v19 + 40) = v17;
      v13 = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*v26)(v11, v8);
      sub_1C4EFBC58();
      sub_1C440BAA8(v7, 1, 1, v8);
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      v20 = sub_1C4EFBC48();
      v15 += 2;
      sub_1C446F170(v24, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C446F170(v7, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if (v20)
      {

        v22 = 1;
        goto LABEL_4;
      }
    }

    if (v22)
    {
      sub_1C4BC0A2C();
    }
  }

  return result;
}

void sub_1C4BC0A2C()
{
  v1 = sub_1C4EFB768();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v5 = sub_1C4F00978();
  v22 = sub_1C442B738(v5, qword_1EDE2E088);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C43F8000, v6, v7, "ViewDatabase: resetDatabaseAndMigrations: starting...", v8, 2u);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  v9 = sub_1C46A9F90(0, 0, 0x656C626174, 0xE500000000000000);
  if (!v0)
  {
    v19 = v4;
    v20 = v2;
    v21 = v1;
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v4 = v12 & *(v9 + 64);
    v1 = (v11 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = 0;
    if (v4)
    {
      while (1)
      {
        v2 = v13;
LABEL_12:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFBF68();
        v4 &= v4 - 1;

        v13 = v2;
        if (!v4)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v2 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v2 >= v1)
      {
        break;
      }

      v4 = *(v10 + 8 * v2);
      ++v13;
      if (v4)
      {
        goto LABEL_12;
      }
    }

    v14 = v19;
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    (*(v20 + 8))(v14, v21);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, "ViewDatabase: resetDatabaseAndMigrations: completed.", v17, 2u);
      MEMORY[0x1C6942830](v17, -1, -1);
    }
  }
}

uint64_t sub_1C4BC0DB0(uint64_t a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_statementCacheBacking) = 0;

  *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_viewAccessStatementCacheBacking) = 0;

  *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_enqueueViewStatementCacheBacking) = 0;

  *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_initialFilterStatementCacheBacking) = 0;
}

uint64_t sub_1C4BC0E28()
{
  sub_1C44038E0();
  v2 = sub_1C4EFBE98();
  if (v1)
  {

    sub_1C4402CD0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v2;
    sub_1C43FE984();
    v4 = sub_1C441CE84(114, v3);
    sub_1C44354B4();
    *(v0 + 24) = v4;
  }

  return sub_1C43FF5E8();
}

uint64_t sub_1C4BC0F14()
{
  sub_1C44038E0();
  v2 = sub_1C4EFBE98();
  if (v1)
  {

    sub_1C4402CD0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v2;
    sub_1C43FE984();
    v4 = sub_1C441CE84(83, v3);
    sub_1C44354B4();
    *(v0 + 24) = v4;
  }

  return sub_1C43FF5E8();
}

uint64_t sub_1C4BC1004()
{
  sub_1C44038E0();
  v2 = sub_1C4EFBE98();
  if (v1)
  {

    sub_1C4402CD0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v0[2] = v2;
    v0[3] = sub_1C4417924();
    v0[4] = sub_1C4EFBE98();
    sub_1C43FE984();
    v5 = sub_1C441CE84(60, v4);
    sub_1C44354B4();
    v0[5] = v5;
  }

  return sub_1C43FF5E8();
}

uint64_t sub_1C4BC114C()
{

  return v0;
}

uint64_t sub_1C4BC1184()
{
  sub_1C4BC114C();

  return swift_deallocClassInstance();
}

void sub_1C4BC11DC()
{
  sub_1C43FE96C();

  sub_1C4BB18D4(__src);
  if (v1)
  {

    sub_1C4402CD0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    memcpy((v0 + 16), __src, 0x50uLL);

    sub_1C4BBB34C();
    v2 = v17;
    *(v0 + 96) = v16;
    *(v0 + 112) = v2;
    v3 = v19;
    *(v0 + 128) = v18;
    *(v0 + 144) = v3;

    *(v0 + 160) = sub_1C4BB7660();
    *(v0 + 168) = v4;

    sub_1C4BB76FC(v20);
    memcpy((v0 + 176), v20, 0x50uLL);

    *(v0 + 256) = sub_1C4BB9410();
    *(v0 + 264) = v5;
    *(v0 + 272) = v6;

    *(v0 + 280) = sub_1C4BB5004();
    *(v0 + 288) = v7;

    *(v0 + 296) = sub_1C4CE5A84();
    *(v0 + 304) = v8;
    *(v0 + 312) = v9;

    sub_1C4CE5B5C(v21);
    v10 = v21[1];
    *(v0 + 320) = v21[0];
    *(v0 + 336) = v10;
    v11 = v21[3];
    *(v0 + 352) = v21[2];
    *(v0 + 368) = v11;

    sub_1C4CE5E00();
    v12 = v21[5];
    *(v0 + 384) = v21[4];
    *(v0 + 400) = v12;
    *(v0 + 416) = v22;
    *(v0 + 424) = sub_1C4417924();
    *(v0 + 432) = sub_1C4417924();
    *(v0 + 448) = sub_1C4417924();
    *(v0 + 456) = sub_1C4417924();
    *(v0 + 440) = sub_1C4417924();
    *(v0 + 464) = sub_1C4417924();
    sub_1C43FE984();
    *(v0 + 472) = sub_1C441CE84(228, v13);
    v14 = sub_1C4417924();

    *(v0 + 480) = v14;
  }

  sub_1C43FF5E8();
  sub_1C43FBC80();
}

uint64_t sub_1C4BC17D4()
{

  return v0;
}

uint64_t sub_1C4BC1A34()
{
  sub_1C4BC17D4();

  return swift_deallocClassInstance();
}

void sub_1C4BC1B7C(uint64_t a1)
{
  if (!qword_1EDDFCF78[0])
  {
    type metadata accessor for VectorDB.Config(255);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, qword_1EDDFCF78);
    }
  }
}

uint64_t sub_1C4BC1BE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616261746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701869940 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

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

uint64_t sub_1C4BC1D38(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4698, &qword_1C4F5B010);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4509158();
  sub_1C4F02BF8();
  v11 = *v3;
  v12 = v3[1];
  v24 = 0;
  sub_1C4409190(v11, v12, &v24);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v23 = 1;
    sub_1C4409190(v13, v14, &v23);
    v15 = v3[4];
    v16 = v3[5];
    v22 = 2;
    sub_1C4409190(v15, v16, &v22);
    v17 = v3[6];
    v18 = v3[7];
    v21 = 3;
    sub_1C4409190(v17, v18, &v21);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4BC1EAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1752457584 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463757274736E75 && a2 == 0xEC00000064657275;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F526D6F74737563 && a2 == 0xE900000000000077;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F527463656A626FLL && a2 == 0xE900000000000077;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6870617267627573 && a2 == 0xE800000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6264726F74636576 && a2 == 0xE800000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6570795466666964 && a2 == 0xE800000000000000;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x4F64657461647075 && a2 == 0xED00007463656A62;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x80000001C4F85FA0 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6154797469746E65 && a2 == 0xED0000676E696767;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001ALL && 0x80000001C4F85F60 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x80000001C4F85F80 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000021 && 0x80000001C4F85FC0 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1C4F02938();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4BC233C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1752457584;
      break;
    case 2:
      result = 0x7463757274736E75;
      break;
    case 3:
      v3 = 0x6D6F74737563;
      goto LABEL_10;
    case 4:
      v3 = 0x7463656A626FLL;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F52000000000000;
      break;
    case 5:
      result = 0x6870617267627573;
      break;
    case 6:
      result = 0x6E69646465626D65;
      break;
    case 7:
      result = 0x6264726F74636576;
      break;
    case 8:
      result = 0x6570795466666964;
      break;
    case 9:
      result = 0x4F64657461647075;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x6154797469746E65;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4BC24F8(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4688, &qword_1C4F5B000);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4BC3718();
  sub_1C4F02BF8();
  __dst[0] = *v3;
  v50[0] = 0;
  sub_1C4BB2D2C();
  sub_1C4401078();
  sub_1C4F027E8();
  if (!v2)
  {
    __dst[0] = 1;
    sub_1C4F02798();
    v11 = *(v3 + 56);
    v12 = *(v3 + 40);
    v52 = *(v3 + 24);
    v53 = v12;
    v54 = v11;
    v59 = 2;
    sub_1C4BC39C4();
    sub_1C4401078();
    sub_1C4F02778();
    memcpy(__dst, (v3 + 64), sizeof(__dst));
    memcpy(v50, (v3 + 64), sizeof(v50));
    v58 = 3;
    sub_1C445FFF0(__dst, v49, &qword_1EC0C4680, &qword_1C4F5E660);
    sub_1C4BC3A18();
    sub_1C4401078();
    sub_1C4F02778();
    memcpy(v49, v50, sizeof(v49));
    sub_1C4420C3C(v49, &qword_1EC0C4680, &qword_1C4F5E660);
    v13 = sub_1C44338D4(*(v3 + 168), *(v3 + 176), *(v3 + 184), *(v3 + 192), *(v3 + 200), *(v3 + 208), *(v3 + 216));
    v46[0] = 4;
    sub_1C4BC3A6C(v13, v14);
    sub_1C4BC3ADC();
    sub_1C4401078();
    sub_1C4F02778();
    v15 = sub_1C4432BD4();
    sub_1C4BC376C(v15, v16);
    v17 = *(v3 + 240);
    v18 = *(v3 + 248);
    v19 = *(v3 + 250);
    v47[0] = *(v3 + 224);
    *&v47[1] = v17;
    BYTE10(v47[1]) = v19;
    WORD4(v47[1]) = v18;
    v46[0] = 5;
    sub_1C4BC3B30();
    sub_1C4401078();
    sub_1C4F02778();
    v20 = *(v3 + 272);
    v47[0] = *(v3 + 256);
    LOBYTE(v47[1]) = v20;
    v46[0] = 6;
    sub_1C4BC3B84();
    sub_1C4401078();
    sub_1C4F02778();
    v21 = _s6ConfigVMa(0);
    LOBYTE(v47[0]) = 7;
    type metadata accessor for VectorDB.Config(0);
    sub_1C4BC3BD8(&qword_1EDDDBE20, &protocol conformance descriptor for VectorDB.Config);
    sub_1C4F02778();
    LOBYTE(v47[0]) = *(v3 + v21[12]);
    v46[0] = 8;
    sub_1C4BBB9FC();
    sub_1C4401078();
    sub_1C4F02778();
    v22 = sub_1C442611C(v3 + v21[13]);
    v29 = sub_1C44338D4(v22, v23, v24, v25, v26, v27, v28);
    v46[0] = 9;
    sub_1C4BC3C1C(v29, v30);
    sub_1C4B8C734();
    sub_1C4401078();
    sub_1C4F02778();
    v31 = sub_1C4432BD4();
    sub_1C4BA83CC(v31, v32);
    v33 = v3 + v21[14];
    v34 = *(v33 + 16);
    v47[0] = *v33;
    LOBYTE(v47[1]) = v34;
    v46[0] = 10;
    sub_1C4BC3C6C();
    sub_1C4401078();
    sub_1C4F02778();
    v35 = v3 + v21[15];
    v36 = *(v35 + 16);
    v47[6] = *v35;
    v48 = v36;
    v57 = 11;
    sub_1C4BC3CC0();
    sub_1C4401078();
    sub_1C4F02778();
    v38 = v21[16];
    memcpy(v47, (v3 + v38), 0x58uLL);
    memcpy(v46, (v3 + v38), sizeof(v46));
    v56 = 12;
    sub_1C445FFF0(v47, v45, &qword_1EC0C4678, &unk_1C4F5C7F0);
    sub_1C4707E08();
    sub_1C4401078();
    sub_1C4F02778();
    memcpy(v45, v46, sizeof(v45));
    sub_1C4420C3C(v45, &qword_1EC0C4678, &unk_1C4F5C7F0);
    v39 = (v3 + v21[17]);
    v40 = *(v39 + 16);
    v43 = *v39;
    LOBYTE(v44) = v40;
    v55 = 13;
    sub_1C4BC3D14();
    sub_1C4401078();
    sub_1C4F02778();
    v41 = (v3 + v21[18]);
    v42 = v41[1];
    v43 = *v41;
    v44 = v42;
    v55 = 14;
    sub_1C4BC3D68();
    sub_1C4401078();
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4BC2B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C4668, "TZ\b");
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v55[-v6];
  v59 = sub_1C456902C(&qword_1EC0C4670, &qword_1C4F5AFF8);
  sub_1C43FCDF8();
  v9 = v8;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55[-v11];
  v62 = _s6ConfigVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[3];
  v60 = a1;
  v16 = sub_1C4409678(a1, v15);
  sub_1C4BC3718();
  v58 = v12;
  sub_1C4F02BC8();
  v17 = v2;
  if (v2)
  {
    v61 = v2;
    LODWORD(v18) = 0;
    LODWORD(v7) = 0;
    v19 = 0;
    v20 = 0;
    sub_1C442D534();
  }

  else
  {
    v61 = v7;
    v57 = a2;
    v19 = v9;
    LOBYTE(v66[0]) = 0;
    sub_1C4BB2C30();
    v16 = v58;
    sub_1C4413948();
    sub_1C4F026C8();
    v26 = v63;
    *v63 = v67[0];
    LOBYTE(v67[0]) = 1;
    v20 = v9;
    v26[1] = sub_1C4F02678();
    v26[2] = v27;
    LOBYTE(v66[0]) = 2;
    sub_1C443C3D0();
    sub_1C4413948();
    sub_1C4F02658();
    v28 = *&v67[2];
    v29 = v67[1];
    *(v26 + 3) = v67[0];
    *(v26 + 5) = v29;
    v26[7] = v28;
    v70[1] = 3;
    sub_1C4BB1E10();
    sub_1C4413948();
    sub_1C4F02658();
    v17 = 0;
    memcpy(v26 + 8, v67, 0x68uLL);
    LOBYTE(v64) = 4;
    sub_1C4BB1DBC();
    sub_1C44126F0();
    sub_1C4F02658();
    v30 = *&v66[3];
    v31 = v66[1];
    *(v26 + 21) = v66[0];
    *(v26 + 23) = v31;
    *(v26 + 25) = v66[2];
    v26[27] = v30;
    LOBYTE(v64) = 5;
    sub_1C4BB1D68();
    sub_1C44126F0();
    sub_1C4F02658();
    v32 = *&v66[1];
    v33 = WORD4(v66[1]);
    v34 = BYTE10(v66[1]);
    *(v26 + 14) = v66[0];
    v26[30] = v32;
    *(v26 + 250) = v34;
    *(v26 + 124) = v33;
    LOBYTE(v64) = 6;
    sub_1C4BC3840();
    sub_1C44126F0();
    sub_1C4F02658();
    v35 = v66[1];
    *(v26 + 16) = v66[0];
    *(v26 + 272) = v35;
    type metadata accessor for VectorDB.Config(0);
    LOBYTE(v66[0]) = 7;
    sub_1C4BC3BD8(&qword_1EDDFEAF0, &protocol conformance descriptor for VectorDB.Config);
    v18 = v61;
    sub_1C4F02658();
    v36 = v63;
    sub_1C4BC3894(v18, v63 + v62[11]);
    LOBYTE(v64) = 8;
    sub_1C4442E20();
    sub_1C44126F0();
    sub_1C4F02658();
    v61 = 0;
    *(v36 + v62[12]) = v66[0];
    LOBYTE(v64) = 9;
    sub_1C45096F8();
    sub_1C44126F0();
    v37 = v61;
    sub_1C4F02658();
    v61 = v37;
    if (!v37)
    {
      v41 = *&v66[3];
      v42 = v63 + v62[13];
      v43 = v66[1];
      *v42 = v66[0];
      *(v42 + 1) = v43;
      *(v42 + 2) = v66[2];
      *(v42 + 6) = v41;
      LOBYTE(v64) = 10;
      sub_1C4BB1C6C();
      sub_1C440E874(&type metadata for EntityRelevanceRankingDatabaseTable.Config, &v64);
      v61 = 0;
      v44 = v66[1];
      v45 = v63 + v62[14];
      *v45 = v66[0];
      v45[16] = v44;
      LOBYTE(v64) = 11;
      sub_1C4BB1C18();
      sub_1C440E874(&unk_1F43EA2E8, &v64);
      v61 = 0;
      v46 = *&v66[1];
      v47 = v63 + v62[15];
      *v47 = v66[0];
      *(v47 + 2) = v46;
      v70[0] = 12;
      sub_1C4707CC4();
      sub_1C440E874(&type metadata for EntityInteractionHistogramDatabaseTable.Config, v70);
      v61 = 0;
      memcpy(v63 + v62[16], v66, 0x58uLL);
      v69 = 13;
      sub_1C4BB1D14();
      sub_1C440E874(&unk_1F43E6B28, &v69);
      v61 = 0;
      v48 = v65;
      v49 = v63 + v62[17];
      *v49 = v64;
      v49[16] = v48;
      v69 = 14;
      sub_1C4BB1CC0();
      sub_1C440E874(&type metadata for EntityRelevanceHistoricalFeatureDatabaseTable.Config, &v69);
      v61 = 0;
      v50 = sub_1C440FD38();
      v51(v50);
      v52 = v63;
      v53 = (v63 + v62[18]);
      v54 = v65;
      *v53 = v64;
      v53[1] = v54;
      sub_1C4BC3904(v52, v57);
      sub_1C440962C(v60);
      return sub_1C4BC3968(v52);
    }

    v38 = sub_1C440FD38();
    v39(v38);
    v68 = 0;
    sub_1C440B4CC();
    sub_1C441A6A0();
    v56 = v40;
    LODWORD(v57) = 0;
  }

  v21 = v63;
  result = sub_1C440962C(v60);
  if (v18)
  {

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
LABEL_6:
    result = sub_1C4BC37DC(v21[3], v21[4]);
    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

  if (!v19)
  {
LABEL_7:
    if (v20)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  memcpy(v67, v21 + 8, 0x68uLL);
  result = sub_1C4420C3C(v67, &qword_1EC0C4680, &qword_1C4F5E660);
  if (v20)
  {
LABEL_8:
    result = sub_1C4BC376C(v21[21], v21[22]);
    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (!v17)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = sub_1C45E8E50(v21[28], v21[29]);
  if (v16)
  {
LABEL_10:

    if ((v56 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!v56)
  {
LABEL_11:
    v23 = v62;
    if (v68)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v23 = v62;
  result = sub_1C4420C3C(v21 + v62[11], &qword_1EC0C4668, "TZ\b");
  if (v68)
  {
LABEL_12:
    v24 = sub_1C442611C(v21 + v23[13]);
    result = sub_1C4BA83CC(v24, v25);
    if ((v57 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v57)
  {
LABEL_13:
    if (v58)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:

  if (v58)
  {
LABEL_14:
    result = sub_1C45E8E50(*(v21 + v23[15]), *(v21 + v23[15] + 8));
    if ((v59 & 1) == 0)
    {
      return result;
    }

LABEL_26:
    memcpy(v67, v21 + v23[16], 0x58uLL);
    return sub_1C4420C3C(v67, &qword_1EC0C4678, &unk_1C4F5C7F0);
  }

LABEL_25:
  if (v59)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1C4BC353C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BC1BE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BC3564(uint64_t a1)
{
  v2 = sub_1C4509158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BC35A0(uint64_t a1)
{
  v2 = sub_1C4509158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4BC35F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4BC3648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4BC1EAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4BC3670(uint64_t a1)
{
  v2 = sub_1C4BC3718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4BC36AC(uint64_t a1)
{
  v2 = sub_1C4BC3718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C4BC3718()
{
  result = qword_1EDDFD620;
  if (!qword_1EDDFD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD620);
  }

  return result;
}

uint64_t sub_1C4BC376C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C4BC37DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C4BC3840()
{
  result = qword_1EDDFF8D0;
  if (!qword_1EDDFF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF8D0);
  }

  return result;
}

uint64_t sub_1C4BC3894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4668, "TZ\b");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BC3904(uint64_t a1, uint64_t a2)
{
  v4 = _s6ConfigVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BC3968(uint64_t a1)
{
  v2 = _s6ConfigVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C4BC39C4()
{
  result = qword_1EDDE1218[0];
  if (!qword_1EDDE1218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE1218);
  }

  return result;
}

unint64_t sub_1C4BC3A18()
{
  result = qword_1EDDE3028[0];
  if (!qword_1EDDE3028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE3028);
  }

  return result;
}

uint64_t sub_1C4BC3A6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

unint64_t sub_1C4BC3ADC()
{
  result = qword_1EDDE29A8;
  if (!qword_1EDDE29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE29A8);
  }

  return result;
}

unint64_t sub_1C4BC3B30()
{
  result = qword_1EDDE3240;
  if (!qword_1EDDE3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE3240);
  }

  return result;
}

unint64_t sub_1C4BC3B84()
{
  result = qword_1EDDEAEE0;
  if (!qword_1EDDEAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAEE0);
  }

  return result;
}

uint64_t sub_1C4BC3BD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VectorDB.Config(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4BC3C1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

unint64_t sub_1C4BC3C6C()
{
  result = qword_1EDDDD0C0;
  if (!qword_1EDDDD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDD0C0);
  }

  return result;
}

unint64_t sub_1C4BC3CC0()
{
  result = qword_1EDDE10A0;
  if (!qword_1EDDE10A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE10A0);
  }

  return result;
}

unint64_t sub_1C4BC3D14()
{
  result = qword_1EDDDF818[0];
  if (!qword_1EDDDF818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDDF818);
  }

  return result;
}

unint64_t sub_1C4BC3D68()
{
  result = qword_1EDDDC170;
  if (!qword_1EDDDC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC170);
  }

  return result;
}

_BYTE *_s6ConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BC3EAC()
{
  result = qword_1EC0C46A0;
  if (!qword_1EC0C46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C46A0);
  }

  return result;
}

unint64_t sub_1C4BC3F04()
{
  result = qword_1EC0C46A8;
  if (!qword_1EC0C46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C46A8);
  }

  return result;
}

unint64_t sub_1C4BC3F5C()
{
  result = qword_1EDDFB0F0;
  if (!qword_1EDDFB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0F0);
  }

  return result;
}

unint64_t sub_1C4BC3FB4()
{
  result = qword_1EDDFB0F8;
  if (!qword_1EDDFB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0F8);
  }

  return result;
}

unint64_t sub_1C4BC400C()
{
  result = qword_1EDDFD610;
  if (!qword_1EDDFD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD610);
  }

  return result;
}

unint64_t sub_1C4BC4064()
{
  result = qword_1EDDFD618;
  if (!qword_1EDDFD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD618);
  }

  return result;
}

void sub_1C4BC40B8()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  sub_1C43FDF98();
  v12 = 2 * (v11 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C43FDF98();
  if (!v13)
  {
    v12 |= 4uLL;
  }

  sub_1C44F920C();
  if (static NSUserDefaults.viewDatabaseArtifactLoggingEnabled.getter())
  {
    v14 = 9;
  }

  else
  {
    v14 = 8;
  }

  sub_1C4BC42E8(v3);
  (*(v6 + 16))(v10, v3, v4);
  type metadata accessor for ErrorHandlingDatabasePool(0);
  swift_allocObject();
  v15 = sub_1C44F999C(v10, v12 | v14);
  if (v1)
  {
    (*(v6 + 8))(v3, v4);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v15;
    (*(v6 + 8))(v3, v4);
    *(v0 + 16) = v16;
  }

  sub_1C43FBC80();
}

void sub_1C4BC42E8(uint64_t a1)
{
  v74 = a1;
  v1 = sub_1C4EF98F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v64 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v63 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = (v2 + 16);
  v71 = v10;
  v72 = (v2 + 8);
  *&v15 = 136315394;
  v66 = v15;
  v65 = v6;
  while (1)
  {
    LODWORD(v73) = v11;
    LODWORD(v16) = *(&unk_1F43DA1E8 + v12 + 32);
    v17 = sub_1C442B738(v71, qword_1EDE2DF70);
    v18 = *v14;
    (*v14)(v9, v74, v1);
    v68 = v17;
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CB8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v69 = v18;
      v22 = v21;
      v23 = swift_slowAlloc();
      v75[0] = v23;
      *v22 = v66;
      sub_1C4BC5D8C(&qword_1EDDFF9E8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v24 = sub_1C4F02858();
      v67 = 0;
      v25 = v14;
      v27 = v26;
      v70 = *v72;
      v70(v9, v1);
      v28 = sub_1C441D828(v24, v27, v75);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      v29 = v16 ? 0x6552616D65686373 : 0x6574707572726F63;
      v30 = v16 ? 0xEB00000000746573 : 0xE900000000000064;
      v31 = sub_1C441D828(v29, v30, v75);

      *(v22 + 14) = v31;
      v14 = v25;
      v13 = v67;
      _os_log_impl(&dword_1C43F8000, v19, v20, "ViewDatabaseArtifact: %s: checking for %s", v22, 0x16u);
      swift_arrayDestroy();
      v32 = v23;
      v6 = v65;
      MEMORY[0x1C6942830](v32, -1, -1);
      v33 = v22;
      v18 = v69;
      MEMORY[0x1C6942830](v33, -1, -1);
    }

    else
    {

      v70 = *v72;
      v70(v9, v1);
    }

    v34 = sub_1C4B6EBCC(v74, v16);
    if (v13)
    {
      break;
    }

    if (v34)
    {
      v69 = v18;
      v18(v6, v74, v1);
      v35 = sub_1C4F00968();
      v36 = sub_1C4F01CB8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = v16;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v73 = v14;
        v16 = v39;
        v75[0] = v39;
        *v38 = v66;
        sub_1C4BC5D8C(&qword_1EDDFF9E8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v40 = sub_1C4F02858();
        v41 = v6;
        v43 = v42;
        v70(v41, v1);
        v44 = sub_1C441D828(v40, v43, v75);

        *(v38 + 4) = v44;
        *(v38 + 12) = 2080;
        if (v37)
        {
          v45 = 0x6552616D65686373;
        }

        else
        {
          v45 = 0x6574707572726F63;
        }

        if (v37)
        {
          v46 = 0xEB00000000746573;
        }

        else
        {
          v46 = 0xE900000000000064;
        }

        v47 = sub_1C441D828(v45, v46, v75);

        *(v38 + 14) = v47;
        _os_log_impl(&dword_1C43F8000, v35, v36, "ViewDatabaseArtifact: %s: Encountered %s. Truncating database", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v16, -1, -1);
        LOBYTE(v16) = v37;
        MEMORY[0x1C6942830](v38, -1, -1);
      }

      else
      {

        v70(v6, v1);
      }

      v48 = v74;
      sub_1C4BC4B2C(v74);
      sub_1C4B6E9F4(v48, v16);
      return;
    }

    v11 = 1;
    v12 = 1u;
    if (v73)
    {
      return;
    }
  }

  v49 = v64;
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v71, qword_1EDE2E088);
  v18(v49, v74, v1);
  v50 = v13;
  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CE8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = v1;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v75[0] = v56;
    *v53 = v66;
    sub_1C4BC5D8C(&qword_1EDDFF9E8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v57 = sub_1C4F02858();
    v59 = v58;
    v70(v49, v54);
    v60 = sub_1C441D828(v57, v59, v75);

    *(v53 + 4) = v60;
    *(v53 + 12) = 2112;
    v61 = v13;
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 14) = v62;
    *v55 = v62;
    _os_log_impl(&dword_1C43F8000, v51, v52, "ViewDatabaseArtifact: %s: startup failed to recover from a special state. Will truncate entire file: %@", v53, 0x16u);
    sub_1C45B4B90(v55);
    MEMORY[0x1C6942830](v55, -1, -1);
    sub_1C440962C(v56);
    MEMORY[0x1C6942830](v56, -1, -1);
    MEMORY[0x1C6942830](v53, -1, -1);
  }

  else
  {

    v70(v49, v1);
  }

  sub_1C4BC4B2C(v74);
}

uint64_t ViewDatabaseArtifact.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1C4BC4B2C(uint64_t a1)
{
  v2 = sub_1C4EF98F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DF70);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    sub_1C4BC5D8C(&qword_1EDDFF9E8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v11 = sub_1C4F02858();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_1C441D828(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, v7, v8, "ViewDatabaseArtifact: truncating database at %s", v9, 0xCu);
    sub_1C440962C(v10);
    MEMORY[0x1C6942830](v10, -1, -1);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v15 = objc_opt_self();
  sub_1C4EF98D8();
  v16 = sub_1C4F01108();

  [v15 truncateDatabaseAtPath_];
}

uint64_t ViewDatabaseArtifact.hash(into:)(uint64_t a1)
{
  v2 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, *(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v2);
  sub_1C4BC5D8C(&qword_1EDDFFA00, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1C4F00FE8();
  return (*(v4 + 8))(v8, v2);
}

uint64_t static ViewDatabaseArtifact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14 = *(v6 + 16);
  v14(&v17 - v12, *(a1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v4, v11);
  (v14)(v9, *(a2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v4);
  LOBYTE(a2) = sub_1C4EF98B8();
  v15 = *(v6 + 8);
  v15(v9, v4);
  v15(v13, v4);
  return a2 & 1;
}

uint64_t ViewDatabaseArtifact.hashValue.getter()
{
  sub_1C4F02AF8();
  ViewDatabaseArtifact.hash(into:)(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4BC50F4()
{
  sub_1C4F02AF8();
  ViewDatabaseArtifact.hash(into:)(v1);
  return sub_1C4F02B68();
}

uint64_t ViewDatabaseArtifact.Property.name.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t ViewDatabaseArtifact.Property.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) + 20);
  sub_1C4EFBE38();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ViewDatabaseArtifact.Property.encode(to:)(void *a1)
{
  sub_1C4409678(a1, a1[3]);
  sub_1C4F02BD8();
  sub_1C4418280(v3, v4);
  sub_1C4F028A8();
  if (!v1)
  {
    type metadata accessor for ViewDatabaseArtifact.Property(0);
    sub_1C4EFBE28();
    sub_1C4418280(v3, v4);
    sub_1C4F028A8();
  }

  return sub_1C440962C(v3);
}

uint64_t sub_1C4BC5314(uint64_t a1)
{
  v2 = sub_1C4BC5D8C(&qword_1EC0C46D0, 255, type metadata accessor for ViewDatabaseArtifact.Property, &protocol conformance descriptor for ViewDatabaseArtifact.Property);

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1C4BC5394(uint64_t a1)
{
  v2 = sub_1C4BC5D8C(&qword_1EC0C46B0, 255, type metadata accessor for ViewDatabaseArtifact.Property, &protocol conformance descriptor for ViewDatabaseArtifact.Property);

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C4BC5414(uint64_t a1)
{
  v2 = sub_1C4BC5D8C(&qword_1EC0C46B0, 255, type metadata accessor for ViewDatabaseArtifact.Property, &protocol conformance descriptor for ViewDatabaseArtifact.Property);

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t ViewDatabaseArtifact.Property.description.getter()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x747265706F72503CLL, 0xED0000203A6E2079);
  MEMORY[0x1C6940010](*v0, v0[1]);
  MEMORY[0x1C6940010](0x203A74202CLL, 0xE500000000000000);
  type metadata accessor for ViewDatabaseArtifact.Property(0);
  sub_1C4EFBE38();
  sub_1C4F02438();
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C4BC556C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C4BC5634(char a1)
{
  if (a1)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 1701667182;
  }
}