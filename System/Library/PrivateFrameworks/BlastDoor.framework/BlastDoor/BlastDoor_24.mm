uint64_t sub_214239524(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v55 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v54 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A680, &qword_2146F5F18);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v50 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E588();
  sub_2146DAA28();
  v18 = *(v3 + 24);
  if (v18 == 1)
  {
    goto LABEL_27;
  }

  *&v60 = *(v3 + 16);
  *(&v60 + 1) = v18;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    goto LABEL_5;
  }

  v60 = *(v3 + 40);
  v61 = 1;
  sub_2146DA388();
  v19 = *(v3 + 80);
  if (v19 == 1)
  {
    goto LABEL_27;
  }

  *&v60 = *(v3 + 72);
  *(&v60 + 1) = v19;
  v61 = 2;
  sub_2146DA388();
  v60 = *(v3 + 96);
  v61 = 3;
  sub_2146DA388();
  v60 = *(v3 + 112);
  v61 = 4;
  sub_2146DA388();
  v59 = 0;
  LOBYTE(v60) = *(v3 + 128);
  v61 = 5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v22 = sub_2142E1D30();
  v53 = v21;
  v23 = v59;
  sub_2146DA388();
  v59 = v23;
  if (v23)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v50[2] = v22;
  v24 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
  v25 = *(v24 + 40);
  v51 = v24;
  v52 = v25;
  LOBYTE(v60) = 6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v27 = sub_2142EC30C();
  v52 = v26;
  v28 = v59;
  sub_2146DA388();
  v59 = v28;
  if (v28)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v50[1] = v27;
  LOBYTE(v60) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  sub_2142EFE18();
  v2 = v59;
  sub_2146DA388();
  if (v2)
  {
LABEL_5:
    v59 = v2;
    return (*(v15 + 8))(v17, v14);
  }

  v29 = v51;
  v30 = v3 + v51[12];
  v31 = *(v30 + 24);
  if (v31 == 1)
  {
    goto LABEL_27;
  }

  *&v60 = *(v30 + 16);
  *(&v60 + 1) = v31;
  v61 = 8;
  sub_2146DA388();
  if (*(v3 + v29[13] + 20))
  {
    goto LABEL_27;
  }

  LOBYTE(v60) = 9;
  sub_2146DA398();
  v59 = 0;
  v32 = v3 + v29[14];
  v33 = *(v32 + 24);
  if (v33 == 1)
  {
    goto LABEL_27;
  }

  *&v60 = *(v32 + 16);
  *(&v60 + 1) = v33;
  v61 = 10;
  v34 = v59;
  sub_2146DA388();
  v59 = v34;
  v35 = v3 + v51[15];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v35 + *(v36 + 28), v9, &qword_27C903F40, &unk_2146F1C50);
  v37 = *(v57 + 48);
  v57 += 48;
  v50[0] = v37;
  if (v37(v9, 1, v58) == 1)
  {
    v49 = v9;
LABEL_26:
    sub_213FB2DF4(v49, &qword_27C903F40, &unk_2146F1C50);
    goto LABEL_27;
  }

  sub_21408AC04(v9, v56, &unk_27C9131A0, &unk_2146E9D10);
  LOBYTE(v60) = 11;
  sub_2142E2910();
  v38 = v59;
  sub_2146DA388();
  v59 = v38;
  if (v38)
  {
    v39 = v56;
LABEL_19:
    sub_213FB2DF4(v39, &unk_27C9131A0, &unk_2146E9D10);
    return (*(v15 + 8))(v17, v14);
  }

  sub_213FB2DF4(v56, &unk_27C9131A0, &unk_2146E9D10);
  v40 = v55;
  sub_213FB2E54(v3 + v51[16] + *(v36 + 28), v55, &qword_27C903F40, &unk_2146F1C50);
  if ((v50[0])(v40, 1, v58) == 1)
  {
    v49 = v55;
    goto LABEL_26;
  }

  sub_21408AC04(v55, v54, &unk_27C9131A0, &unk_2146E9D10);
  LOBYTE(v60) = 12;
  v41 = v59;
  sub_2146DA388();
  v59 = v41;
  if (v41)
  {
    v39 = v54;
    goto LABEL_19;
  }

  sub_213FB2DF4(v54, &unk_27C9131A0, &unk_2146E9D10);
  LOBYTE(v60) = *(v3 + v51[17]);
  v61 = 13;
  v42 = v59;
  sub_2146DA388();
  v59 = v42;
  if (v42)
  {
    return (*(v15 + 8))(v17, v14);
  }

  LOBYTE(v60) = *(v3 + v51[18]);
  v61 = 14;
  sub_2146DA388();
  v59 = 0;
  v60 = *(v3 + v51[19]);
  v61 = 15;
  sub_2146DA388();
  v59 = 0;
  LOBYTE(v60) = *(v3 + v51[20]);
  v61 = 16;
  sub_2146DA388();
  v59 = 0;
  LOBYTE(v60) = *(v3 + v51[21]);
  v61 = 17;
  sub_2146DA388();
  v59 = 0;
  v43 = v3 + v51[22];
  v44 = *(v43 + 24);
  if (v44 != 1)
  {
    *&v60 = *(v43 + 16);
    *(&v60 + 1) = v44;
    v61 = 18;
    v45 = v59;
    sub_2146DA388();
    v59 = v45;
    LOBYTE(v60) = 19;
    sub_2146DA388();
    v59 = 0;
    v46 = v3 + v51[24];
    v47 = *(v46 + 24);
    if (v47 != 1)
    {
      *&v60 = *(v46 + 16);
      *(&v60 + 1) = v47;
      v61 = 20;
      v48 = v59;
      sub_2146DA388();
      result = (*(v15 + 8))(v17, v14);
      v59 = v48;
      return result;
    }
  }

LABEL_27:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 PosterArchive.Configuration.init(with:renderingConfiguration:)@<Q0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a1 + 176);
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = v4;
  *(a3 + 192) = *(a1 + 192);
  *(a3 + 201) = *(a1 + 201);
  v5 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v5;
  v6 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  v8 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v10;
  *(a3 + 217) = v3;
  return result;
}

unint64_t sub_214239F2C()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_214239F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x8000000214796DC0 == a2;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000214796DE0 == a2)
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

uint64_t sub_21423A048(uint64_t a1)
{
  v2 = sub_21430E5DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423A084(uint64_t a1)
{
  v2 = sub_21430E5DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A688, &qword_2146F5F20);
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v18[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E5DC();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A698, &qword_2146F5F28);
    v33 = 0;
    sub_21430E630();
    v9 = v47;
    sub_2146DA1C8();
    v30 = v44;
    v31 = v45;
    *v32 = v46[0];
    *&v32[9] = *(v46 + 9);
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v20 = v34;
    v21 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A6B0, &qword_2146F5F30);
    v18[13] = 1;
    sub_21430E708();
    sub_2146DA1C8();
    (*(v8 + 8))(v7, v9);
    v10 = v19;
    v11 = v31;
    *(a2 + 160) = v30;
    *(a2 + 176) = v11;
    *(a2 + 192) = *v32;
    *(a2 + 201) = *&v32[9];
    v12 = v27;
    *(a2 + 96) = v26;
    *(a2 + 112) = v12;
    v13 = v29;
    *(a2 + 128) = v28;
    *(a2 + 144) = v13;
    v14 = v23;
    *(a2 + 32) = v22;
    *(a2 + 48) = v14;
    v15 = v25;
    *(a2 + 64) = v24;
    *(a2 + 80) = v15;
    v16 = v21;
    *a2 = v20;
    *(a2 + 16) = v16;
    *(a2 + 217) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A6C8, &qword_2146F5F38);
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - v3;
  v5 = v1[11];
  v45 = v1[10];
  v46 = v5;
  v47[0] = v1[12];
  *(v47 + 9) = *(v1 + 201);
  v6 = v1[7];
  v41 = v1[6];
  v42 = v6;
  v7 = v1[9];
  v43 = v1[8];
  v44 = v7;
  v8 = v1[3];
  v37 = v1[2];
  v38 = v8;
  v9 = v1[5];
  v39 = v1[4];
  v40 = v9;
  v10 = v1[1];
  v35 = *v1;
  v36 = v10;
  HIDWORD(v14) = *(v1 + 217);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v35, &v22, &qword_27C90A698, &qword_2146F5F28);
  sub_21430E5DC();
  sub_2146DAA28();
  v32 = v45;
  v33 = v46;
  v34[0] = v47[0];
  *(v34 + 9) = *(v47 + 9);
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v22 = v35;
  v23 = v36;
  v21 = 0;
  v11 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A698, &qword_2146F5F28);
  sub_21430E7E0();
  v12 = v16;
  sub_2146DA388();
  v19[10] = v32;
  v19[11] = v33;
  *v20 = v34[0];
  *&v20[9] = *(v34 + 9);
  v19[6] = v28;
  v19[7] = v29;
  v19[8] = v30;
  v19[9] = v31;
  v19[2] = v24;
  v19[3] = v25;
  v19[4] = v26;
  v19[5] = v27;
  v19[0] = v22;
  v19[1] = v23;
  sub_213FB2DF4(v19, &qword_27C90A698, &qword_2146F5F28);
  if (!v12)
  {
    v18 = WORD2(v14);
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A6B0, &qword_2146F5F30);
    sub_21430E8B8();
    sub_2146DA388();
  }

  return (*(v48 + 8))(v4, v11);
}

BlastDoor::PosterArchive::Configuration::SystemTimeFontConfiguration __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PosterArchive.Configuration.SystemTimeFontConfiguration.init(with:weight:isSystemItem:)(BlastDoor::PosterArchive::Configuration::SystemTimeFontConfiguration::TimeFontIdentifier with, Swift::Double weight, Swift::Bool isSystemItem)
{
  *v3 = *with;
  *(v3 + 8) = weight;
  *(v3 + 16) = isSystemItem;
  result.weight = weight;
  result.isSystemItem = isSystemItem;
  result.timeFontIdentifier = with;
  return result;
}

uint64_t sub_21423A6D0()
{
  v1 = 0x746867696577;
  if (*v0 != 1)
  {
    v1 = 0x6D65747379537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_21423A734@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437BFFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21423A75C(uint64_t a1)
{
  v2 = sub_21430E990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423A798(uint64_t a1)
{
  v2 = sub_21430E990();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.SystemTimeFontConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A6F0, &qword_2146F5F40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E990();
  sub_2146DAA08();
  if (!v2)
  {
    v14[14] = 0;
    sub_21430E9E4();
    sub_2146DA1C8();
    v9 = v14[15];
    v14[13] = 1;
    sub_2146DA188();
    v12 = v11;
    v14[12] = 2;
    v13 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.SystemTimeFontConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A708, &qword_2146F5F48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = v1[16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E990();
  sub_2146DAA28();
  v14 = v8;
  v13 = 0;
  sub_21430EA38();
  sub_2146DA388();
  if (!v2)
  {
    v12 = 1;
    sub_2146DA348();
    v11 = 2;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.init(with:preferredTitleAlignment:preferredTitleLayout:titleColor:titleContentStyle:timeNumberingSystem:isUserConfigured:contentsLuminance:isAlternateDateEnabled:groupName:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, unint64_t *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  v28 = *a1;
  v29 = *(a1 + 8);
  v32 = *a2;
  v30 = *(a1 + 16);
  v31 = *a3;
  v33 = *a4;
  v34 = a4[1];
  v35 = a4[2];
  v36 = a4[3];
  v37 = a4[4];
  v38 = a4[5];
  v39 = a4[6];
  v17 = a5[3];
  v71 = a5[2];
  v72 = v17;
  v73 = a5[4];
  v18 = a5[1];
  v69 = *a5;
  v70 = v18;
  v40 = *a6;
  sub_214449E4C(&v43);
  v19 = v43;
  v20 = v44;
  v21 = v46;
  v68[0] = a11;
  v68[1] = a12;
  v22 = v45;
  v41 = v47;
  v67 = v47;
  v43 = 0xD00000000000003DLL;
  v44 = 0x80000002147923D0;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  sub_213FDC9D0(v22, v21);
  v23 = v19(v68, &v67, &v43);
  if (v42)
  {
  }

  else
  {
    if (v23)
    {
      sub_213FDC6D0(v22, v21);

      result = sub_213FDC6D0(v22, v21);
      *a9 = v28;
      *(a9 + 8) = v29;
      *(a9 + 16) = v30;
      *(a9 + 17) = v32;
      *(a9 + 18) = v31;
      *(a9 + 24) = v33;
      *(a9 + 32) = v34;
      *(a9 + 40) = v35;
      *(a9 + 48) = v36;
      *(a9 + 56) = v37;
      *(a9 + 64) = v38;
      *(a9 + 72) = v39;
      v25 = a5[3];
      *(a9 + 112) = a5[2];
      *(a9 + 128) = v25;
      *(a9 + 144) = a5[4];
      v26 = a5[1];
      *(a9 + 80) = *a5;
      *(a9 + 96) = v26;
      *(a9 + 160) = v40;
      *(a9 + 161) = a7 & 1;
      *(a9 + 168) = a10;
      *(a9 + 176) = a8 & 1;
      *(a9 + 184) = v19;
      *(a9 + 192) = v20;
      *(a9 + 200) = a11;
      *(a9 + 208) = a12;
      *(a9 + 216) = v41;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000003DLL;
    v27[1] = 0x80000002147923D0;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v22, v21);
  v43 = v28;
  v44 = v29;
  LOBYTE(v45) = v30;
  BYTE1(v45) = v32;
  BYTE2(v45) = v31;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v49 = v36;
  v50 = v37;
  v51 = v38;
  v52 = v39;
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v53 = v69;
  v54 = v70;
  v58 = v40;
  v59 = a7 & 1;
  v60 = a10;
  v61 = a8 & 1;
  v62 = v19;
  v63 = v20;
  v64 = v22;
  v65 = v21;
  v66 = v41;
  return sub_21430EA8C(&v43);
}

unint64_t sub_21423AEFC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000016;
    if (a1 != 8)
    {
      v4 = 0x6D614E70756F7267;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000011;
    }

    v5 = 0xD000000000000010;
    if (a1 == 5)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x6C6F43656C746974;
    if (a1 != 3)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0xD000000000000015;
    if (a1)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21423B058@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437C120(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21423B080(uint64_t a1)
{
  v2 = sub_21430EAE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423B0BC(uint64_t a1)
{
  v2 = sub_21430EAE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A718, &qword_2146F5F50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430EAE0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v10 = v6;
  v67 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A728, &qword_2146F5F58);
  LOBYTE(v69) = 0;
  sub_21430EB34();
  sub_2146DA1C8();
  v11 = v82;
  v12 = v83;
  LOBYTE(v69) = 1;
  sub_21430EC0C();
  sub_2146DA1C8();
  v66 = v11;
  v13 = v82;
  LOBYTE(v69) = 2;
  sub_21430EC60();
  sub_2146DA1C8();
  v14 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A750, &unk_2146F5F60);
  LOBYTE(v69) = 3;
  sub_21430ECB4();
  sub_2146DA1C8();
  v60 = v14;
  v61 = v13;
  v59 = v12;
  v16 = v82;
  v17 = v83;
  v18 = v84;
  v62 = v86;
  v63 = v85;
  v64 = v87;
  v65 = *(&v82 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A768, &unk_2147421A0);
  v117 = 4;
  sub_21430ED8C();
  sub_2146DA1C8();
  v56 = v17;
  v57 = v16;
  v58 = v18;
  v114 = v120;
  v115 = v121;
  v116 = v122;
  v112 = v118;
  v113 = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A780, &qword_2146F5F70);
  LOBYTE(v69) = 5;
  sub_21430EE78();
  sub_2146DA1C8();
  LODWORD(v18) = v82;
  LOBYTE(v82) = 6;
  v55 = sub_2146DA178();
  LOBYTE(v82) = 7;
  sub_2146DA188();
  v54 = v18;
  v53 = v19;
  LOBYTE(v82) = 8;
  LOBYTE(v18) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v109 = 9;
  sub_2142E12FC();
  v52 = v5;
  sub_2146DA1C8();
  v20 = v110;
  v21 = v111;
  sub_214449E4C(&v82);
  v22 = *(&v82 + 1);
  v51 = v82;
  v23 = v83;
  v24 = v84;
  v128 = v114;
  v129 = v115;
  v130 = v116;
  v126 = v112;
  v127 = v113;
  v49 = v55 & 1;
  v50 = v18 & 1;
  v45 = v20;
  v108[0] = v20;
  v48 = v21;
  v108[1] = v21;
  v55 = v85;
  LOBYTE(v69) = v85;
  *&v82 = 0xD00000000000003DLL;
  *(&v82 + 1) = 0x80000002147923D0;
  v83 = 0xD00000000000001CLL;
  v84 = 0x800000021478A360;

  v46 = v24;
  sub_213FDC9D0(v23, v24);
  v47 = v22;
  v25 = v51(v108, &v69, &v82);
  if (v25)
  {
    v26 = v46;
    sub_213FDC6D0(v23, v46);

    (*(v10 + 8))(v8, v52);
    v27 = v47;

    sub_213FDC6D0(v23, v26);
    v69 = v66;
    v28 = v59;
    LOBYTE(v70) = v59;
    BYTE1(v70) = v61;
    BYTE2(v70) = v60;
    *(&v70 + 3) = v131;
    BYTE7(v70) = v132;
    v29 = v65;
    *(&v70 + 1) = v57;
    *&v71 = v65;
    *(&v71 + 1) = v56;
    *&v72 = v58;
    v30 = v62;
    *(&v72 + 1) = v63;
    *&v73 = v62;
    *(&v73 + 1) = v64;
    v78 = v130;
    v77 = v129;
    v76 = v128;
    v74 = v126;
    v75 = v127;
    LOBYTE(v79) = v54;
    BYTE1(v79) = v49;
    *(&v79 + 2) = v124;
    WORD3(v79) = v125;
    v31 = v53;
    *(&v79 + 1) = v53;
    LOBYTE(v80) = v50;
    *(&v80 + 1) = *v123;
    DWORD1(v80) = *&v123[3];
    v32 = v51;
    *(&v80 + 1) = v51;
    *&v81[0] = v27;
    v33 = v45;
    *(&v81[0] + 1) = v45;
    *&v81[1] = v48;
    BYTE8(v81[1]) = v55;
    v34 = v70;
    v35 = v67;
    *v67 = v66;
    v35[1] = v34;
    v36 = v74;
    v35[4] = v73;
    v35[5] = v36;
    v37 = v72;
    v35[2] = v71;
    v35[3] = v37;
    v38 = v78;
    v35[8] = v77;
    v35[9] = v38;
    v39 = v76;
    v35[6] = v75;
    v35[7] = v39;
    v40 = v80;
    v35[10] = v79;
    v35[11] = v40;
    v35[12] = v81[0];
    *(v35 + 201) = *(v81 + 9);
    sub_21430EF50(&v69, &v82);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v82 = v66;
    LOBYTE(v83) = v28;
    BYTE1(v83) = v61;
    BYTE2(v83) = v60;
    *(&v83 + 3) = v131;
    HIBYTE(v83) = v132;
    v84 = v57;
    v85 = v29;
    v86 = v56;
    v87 = v58;
    v88 = v63;
    v89 = v30;
    v90 = v64;
    v95 = v130;
    v94 = v129;
    v93 = v128;
    v91 = v126;
    v92 = v127;
    v96 = v54;
    v97 = v49;
    v98 = v124;
    v99 = v125;
    v100 = v31;
    v101 = v50;
    *v102 = *v123;
    *&v102[3] = *&v123[3];
    v103 = v32;
    v104 = v47;
    v105 = v33;
    v106 = v48;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD00000000000003DLL;
    v41[1] = 0x80000002147923D0;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v10 + 8))(v8, v52);
    v42 = v47;

    v43 = v46;
    sub_213FDC6D0(v23, v46);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v82 = v66;
    LOBYTE(v83) = v59;
    BYTE1(v83) = v61;
    BYTE2(v83) = v60;
    *(&v83 + 3) = v131;
    HIBYTE(v83) = v132;
    v84 = v57;
    v85 = v65;
    v86 = v56;
    v87 = v58;
    v88 = v63;
    v89 = v62;
    v90 = v64;
    v95 = v130;
    v94 = v129;
    v93 = v128;
    v91 = v126;
    v92 = v127;
    v96 = v54;
    v97 = v49;
    v99 = v125;
    v98 = v124;
    v100 = v53;
    v101 = v50;
    *&v102[3] = *&v123[3];
    *v102 = *v123;
    v103 = v51;
    v104 = v42;
    v105 = v23;
    v106 = v43;
  }

  v107 = v55;
  return sub_21430EA8C(&v82);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A798, &qword_2146F5F78);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = *v1;
  v38 = v1[1];
  v7 = *(v1 + 16);
  v8 = *(v1 + 17);
  v36 = *(v1 + 18);
  v37 = v8;
  v9 = v1[3];
  v34 = v1[4];
  v35 = v9;
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[8];
  v32 = v1[7];
  v33 = v11;
  v31 = v12;
  v13 = v1[9];
  v29 = v10;
  v30 = v13;
  v14 = *(v1 + 8);
  v53 = *(v1 + 7);
  v54 = v14;
  v55 = *(v1 + 9);
  v15 = *(v1 + 6);
  v51 = *(v1 + 5);
  v52 = v15;
  LODWORD(v10) = *(v1 + 160);
  v27 = *(v1 + 161);
  v28 = v10;
  v26 = *(v1 + 176);
  v16 = v1[25];
  v24 = v1[26];
  v25 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430EAE0();
  v17 = v3;
  sub_2146DAA28();
  *&v46 = v6;
  *(&v46 + 1) = v38;
  LOBYTE(v47) = v7;
  LOBYTE(v44[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A728, &qword_2146F5F58);
  sub_21430EFAC();
  v18 = v40;
  sub_2146DA388();
  if (v18)
  {
    return (*(v39 + 8))(v5, v3);
  }

  v20 = v36;
  v22 = v34;
  v21 = v35;
  v23 = v39;
  LOBYTE(v46) = v37;
  LOBYTE(v44[0]) = 1;
  sub_21430F084();
  sub_2146DA388();
  LOBYTE(v46) = v20;
  LOBYTE(v44[0]) = 2;
  sub_21430F0D8();
  sub_2146DA388();
  *&v46 = v21;
  *(&v46 + 1) = v22;
  *&v47 = v29;
  *(&v47 + 1) = v33;
  *&v48 = v32;
  *(&v48 + 1) = v31;
  *&v49 = v30;
  LOBYTE(v44[0]) = 3;
  sub_21430F12C(v21, v22, v29, v33, v32, v31, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A750, &unk_2146F5F60);
  sub_21430F140();
  sub_2146DA388();
  sub_21430EE64(v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49);
  v47 = v52;
  v48 = v53;
  v49 = v54;
  v50 = v55;
  v46 = v51;
  v45 = 4;
  sub_213FB2E54(&v51, v44, &qword_27C90A768, &unk_2147421A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A768, &unk_2147421A0);
  sub_21430F218();
  sub_2146DA388();
  v44[2] = v48;
  v44[3] = v49;
  v44[4] = v50;
  v44[0] = v46;
  v44[1] = v47;
  sub_213FB2DF4(v44, &qword_27C90A768, &unk_2147421A0);
  LOBYTE(v41) = v28;
  v43 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A780, &qword_2146F5F70);
  sub_21430F2F0();
  sub_2146DA388();
  LOBYTE(v41) = 6;
  sub_2146DA338();
  LOBYTE(v41) = 7;
  sub_2146DA348();
  LOBYTE(v41) = 8;
  sub_2146DA338();
  if (v24 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v41 = v25;
    v42 = v24;
    v43 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v23 + 8))(v5, v17);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.init(with:preferredStyle:localizedName:)(BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleColor *__return_ptr retstr, BlastDoor::Color with, BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleColor::Style preferredStyle, Swift::String_optional localizedName)
{
  v5 = *localizedName.value._countAndFlagsBits;
  v6 = *(preferredStyle + 16);
  *&retstr->color.red = *preferredStyle;
  *&retstr->color.blue = v6;
  retstr->preferredStyle = v5;
  retstr->localizedName.value._countAndFlagsBits = localizedName.value._object;
  retstr->localizedName.value._object = v4;
}

uint64_t sub_21423C100()
{
  v1 = 0x6572726566657270;
  if (*v0 != 1)
  {
    v1 = 0x657A696C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_21423C170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437C458(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21423C198(uint64_t a1)
{
  v2 = sub_21430F3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423C1D4(uint64_t a1)
{
  v2 = sub_21430F3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A7F0, &qword_2146F5F80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430F3C8();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    sub_2142FCE0C();
    sub_2146DA1C8();
    v13 = v16;
    v14 = v15;
    v17 = 1;
    sub_21430F41C();
    sub_2146DA1C8();
    v10 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v17 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v11 = v13;
    v12 = v15;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 32) = v10;
    *(a2 + 40) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A808, &qword_2146F5F88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v18 = *(v3 + 32);
  v9 = *(v3 + 6);
  v15 = *(v3 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430F3C8();
  sub_2146DAA28();
  v10 = v3[1];
  v16 = *v3;
  v17 = v10;
  v19 = 0;
  sub_2142FCF88();
  sub_2146DA388();
  if (!v2)
  {
    v11 = v9;
    v12 = v15;
    LOBYTE(v16) = v18;
    v19 = 1;
    sub_21430F470();
    sub_2146DA388();
    *&v16 = v12;
    *(&v16 + 1) = v11;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.init(with:colors:discreteColorProperties:gradientProperties:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 8) = a2;
  v5 = *a4;
  v6 = a4[1];
  *(a5 + 16) = *a3;
  *(a5 + 32) = v5;
  result = a4[2];
  *(a5 + 48) = v6;
  *(a5 + 64) = result;
  return result;
}

unint64_t sub_21423C6A0()
{
  v1 = 1701869940;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x73726F6C6F63;
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

uint64_t sub_21423C718@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437C57C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21423C740(uint64_t a1)
{
  v2 = sub_21430F4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423C77C(uint64_t a1)
{
  v2 = sub_21430F4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A818, &qword_2146F5F90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430F4C4();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = 0;
    sub_21430F518();
    sub_2146DA1C8();
    v9 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A830, &qword_2146F5F98);
    v20 = 1;
    sub_21430F56C();
    sub_2146DA1C8();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A850, &qword_2146F5FA8);
    v20 = 2;
    sub_21430F674();
    sub_2146DA1C8();
    v15 = *(&v17 + 1);
    v16 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A868, &qword_2146F5FB0);
    v20 = 3;
    sub_21430F74C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    v12 = v15;
    v13 = v16;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
    *(a2 + 24) = v12;
    v14 = v18;
    *(a2 + 32) = v17;
    *(a2 + 48) = v14;
    *(a2 + 64) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A880, &qword_2146F5FB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v23 = *(v1 + 2);
  v24 = v9;
  v10 = *(v1 + 3);
  v11 = *(v1 + 2);
  v18 = *(v1 + 3);
  v19 = v11;
  v12 = *(v1 + 9);
  v21 = *(v1 + 8);
  v22 = v10;
  v20 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430F4C4();
  sub_2146DAA28();
  LOBYTE(v25) = v8;
  v29 = 0;
  sub_21430F824();
  sub_2146DA388();
  if (!v2)
  {
    v14 = v22;
    v13 = v23;
    v16 = v20;
    v15 = v21;
    *&v25 = v24;
    v29 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A830, &qword_2146F5F98);
    sub_21430F878();
    sub_2146DA388();
    *&v25 = v13;
    *(&v25 + 1) = v14;
    v29 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A850, &qword_2146F5FA8);
    sub_21430F980();
    sub_2146DA388();
    v25 = v19;
    v26 = v18;
    v27 = v15;
    v28 = v16;
    v29 = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A868, &qword_2146F5FB0);
    sub_21430FA58();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleContentStyle::TitleDiscreteColorContentStyleProperties __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleDiscreteColorContentStyleProperties.init(with:allowsVariation:variation:)(Swift::Bool with, Swift::Bool allowsVariation, Swift::Double variation)
{
  *v3 = with;
  *(v3 + 1) = allowsVariation;
  *(v3 + 8) = variation;
  result.variation = variation;
  result.vibrant = with;
  return result;
}

uint64_t sub_21423CD58()
{
  v1 = 0x615673776F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0x6F69746169726176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6172626976;
  }
}

uint64_t sub_21423CDC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437C6F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21423CDEC(uint64_t a1)
{
  v2 = sub_21430FB30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423CE28(uint64_t a1)
{
  v2 = sub_21430FB30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleDiscreteColorContentStyleProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8C0, &qword_2146F5FC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FB30();
  sub_2146DAA08();
  if (!v2)
  {
    v14[15] = 0;
    v9 = sub_2146DA178();
    v14[14] = 1;
    v11 = sub_2146DA178();
    v14[13] = 2;
    sub_2146DA188();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 1) = v11 & 1;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleDiscreteColorContentStyleProperties.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8D0, &qword_2146F5FC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[2] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FB30();
  sub_2146DAA28();
  v12 = 0;
  sub_2146DA338();
  if (!v2)
  {
    v11 = 1;
    sub_2146DA338();
    v10 = 2;
    sub_2146DA348();
  }

  return (*(v5 + 8))(v7, v4);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.init(with:locations:startPoint:endPoint:)(BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleContentStyle::TitleGradientContentStyleProperties *__return_ptr retstr, BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleContentStyle::TitleGradientContentStyleProperties::GradientType with, Swift::OpaquePointer locations, CGPoint startPoint, CGPoint endPoint)
{
  retstr->gradientType = *with;
  retstr->locations = locations;
  retstr->startPoint.x = startPoint.x;
  retstr->startPoint.y = startPoint.y;
  retstr->endPoint.x = endPoint.x;
  retstr->endPoint.y = endPoint.y;
}

uint64_t sub_21423D244()
{
  v1 = 0x746E656964617267;
  v2 = 0x696F507472617473;
  if (*v0 != 2)
  {
    v2 = 0x746E696F50646E65;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
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

uint64_t sub_21423D2D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437C818(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21423D2F8(uint64_t a1)
{
  v2 = sub_21430FB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423D334(uint64_t a1)
{
  v2 = sub_21430FB84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8D8, &qword_2146F5FD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FB84();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    sub_21430FBD8();
    sub_2146DA1C8();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8F0, &qword_2146F5FD8);
    v17 = 1;
    sub_21430FC2C();
    sub_2146DA1C8();
    v16 = v9;
    v14 = v15;
    type metadata accessor for CGPoint(0);
    v17 = 2;
    sub_214328930(&qword_27C9058B8, type metadata accessor for CGPoint, MEMORY[0x277CBF2B8]);
    sub_2146DA1C8();
    v11 = v15;
    v17 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v16;
    *(a2 + 8) = v14;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A900, &qword_2146F5FE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v15 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  v11 = *(v1 + 4);
  v12 = *(v1 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FB84();
  sub_2146DAA28();
  LOBYTE(v16) = v8;
  v18 = 0;
  sub_21430FCA8();
  sub_2146DA388();
  if (!v2)
  {
    v16 = v15;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8F0, &qword_2146F5FD8);
    sub_21430FCFC();
    sub_2146DA388();
    v16 = v9;
    v17 = v10;
    v18 = 2;
    type metadata accessor for CGPoint(0);
    sub_214328930(&qword_27C9058D0, type metadata accessor for CGPoint, MEMORY[0x277CBF2A8]);
    sub_2146DA388();
    v16 = v11;
    v17 = v12;
    v18 = 3;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_21423D900()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_21423D93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214796F60 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000214796F80 == a2)
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

uint64_t sub_21423DA20(uint64_t a1)
{
  v2 = sub_21430FD78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423DA5C(uint64_t a1)
{
  v2 = sub_21430FD78();

  return MEMORY[0x2821FE720](a1, v2);
}

BlastDoor::PhotosPoster::Options __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotosPoster.Options.init(with:hidePrimaryActionButton:)(Swift::Bool with, Swift::Bool hidePrimaryActionButton)
{
  *v2 = with;
  v2[1] = hidePrimaryActionButton;
  result.hideShowPhotoInLibraryAction = with;
  return result;
}

unint64_t sub_21423DB5C()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_21423DB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001CLL && 0x8000000214796FA0 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000214796FC0 == a2)
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

uint64_t sub_21423DC78(uint64_t a1)
{
  v2 = sub_21430FDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423DCB4(uint64_t a1)
{
  v2 = sub_21430FDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21423DD34@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _BYTE *a6@<X8>)
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
    v14 = sub_2146DA178();
    v19 = 1;
    v15 = sub_2146DA178();
    (*(v13 + 8))(v11, v9);
    *v12 = v14 & 1;
    v12[1] = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21423DF2C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v14 = *(v5 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v13[0])();
  sub_2146DAA28();
  v16 = 0;
  v11 = v13[1];
  sub_2146DA338();
  if (!v11)
  {
    v15 = 1;
    sub_2146DA338();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t PhotosPoster.Media.init(with:assetUUID:subpath:version:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = *a1;
  sub_214449FC0(&v32);
  v10 = v32;
  v9 = v33;
  v12 = v34;
  v11 = v35;
  v13 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2140676DC;
  *(v15 + 24) = 0;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v47);
  v30 = v47;
  v29 = v48;
  v24 = v49;
  v55 = v50;
  v31 = v51;
  v47 = a2;
  v48 = a3;
  v46 = v13;
  v32 = 0xD00000000000001CLL;
  v33 = 0x8000000214792410;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  sub_213FDC9D0(v12, v11);
  v16 = v10(&v47, &v46, &v32);
  if (v25)
  {

LABEL_6:

    v19 = v9;

    sub_213FDC6D0(v12, v11);
LABEL_7:
    LOBYTE(v32) = v27;
    *(&v32 + 1) = v54[0];
    HIDWORD(v32) = *(v54 + 3);
    v33 = v10;
    v34 = v19;
    v35 = v12;
    v36 = v11;
    v37 = v13;
    *v38 = *v53;
    *&v38[3] = *&v53[3];
    v39 = v30;
    v40 = v29;
    v41 = v24;
    v42 = v55;
    v43 = v31;
    *&v44[3] = *(v52 + 3);
    *v44 = v52[0];
    v45 = a6;
    return sub_2142FC3CC(&v32);
  }

  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000001CLL;
    v18[1] = 0x8000000214792410;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v12, v11);

  sub_213FDC6D0(v12, v11);
  v47 = a4;
  v48 = a5;
  v46 = v31;
  v32 = 0xD00000000000001ALL;
  v33 = 0x8000000214792430;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v17 = v30(&v47, &v46, &v32);
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD00000000000001ALL;
    v21[1] = 0x8000000214792430;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    v12 = a2;
    v11 = a3;
    v19 = v9;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a7 = v27;
  *(a7 + 8) = v10;
  *(a7 + 16) = v9;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = v13;
  *(a7 + 48) = v30;
  *(a7 + 56) = v29;
  *(a7 + 64) = a4;
  *(a7 + 72) = a5;
  *(a7 + 80) = v31;
  *(a7 + 88) = a6;
  return result;
}

uint64_t sub_21423E518()
{
  v1 = 0x707954616964656DLL;
  v2 = 0x68746170627573;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x4955557465737361;
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

uint64_t sub_21423E59C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437C990(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21423E5C4(uint64_t a1)
{
  v2 = sub_21430FE20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423E600(uint64_t a1)
{
  v2 = sub_21430FE20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.Media.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A948, &qword_2146F6008);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v9 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21430FE20();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v10 = v6;
  LOBYTE(v62) = 0;
  sub_21430FE74();
  sub_2146DA1C8();
  v11 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v62) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v61 = v11;
  v12 = v69;
  v13 = v70;
  LOBYTE(v69) = 2;
  v54 = sub_2146DA168();
  v59 = v14;
  v60 = v13;
  *(&v58 + 1) = v12;
  v83 = 3;
  v49 = sub_2146DA1A8();
  sub_214449FC0(&v69);
  v52 = v69;
  *&v58 = v70;
  v55 = v72;
  v56 = v71;
  v57 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2140676DC;
  *(v17 + 24) = 0;
  *(inited + 32) = v17;
  sub_214042B80(inited, &v62);
  v53 = *(&v62 + 1);
  v50 = v62;
  v48 = v63;
  v51 = v64;
  *&v62 = *(&v58 + 1);
  *(&v62 + 1) = v60;
  LOBYTE(v68[0]) = v57;
  v69 = 0xD00000000000001CLL;
  v70 = 0x8000000214792410;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  sub_213FDC9D0(v56, v55);
  v18 = v52;
  v19 = v52(&v62, v68, &v69);
  v20 = v18;
  v46 = 0x8000000214792410;
  v47 = 0x800000021478A360;
  if (v19)
  {
    v22 = v55;
    v21 = v56;
    sub_213FDC6D0(v56, v55);
    v23 = v47;

    sub_213FDC6D0(v21, v22);
    v68[0] = v54;
    v68[1] = v59;
    LOBYTE(v62) = v51;
    v56 = 0xD00000000000001ALL;
    v69 = 0xD00000000000001ALL;
    v70 = 0x8000000214792430;
    v71 = 0xD00000000000001CLL;
    v72 = v23;
    v24 = *(&v48 + 1);

    v25 = v50(v68, &v62, &v69);
    v55 = 0x8000000214792430;
    v20 = v52;
    v32 = v60;
    if (v25)
    {

      (*(v10 + 8))(v8, v5);

      v33 = v53;

      v34 = v61;
      LOBYTE(v62) = v61;
      v35 = v58;
      *(&v62 + 1) = v20;
      v63 = v58;
      v36 = v32;
      v37 = *(&v58 + 1);
      *&v64 = v36;
      v38 = v57;
      BYTE8(v64) = v57;
      v39 = v49;
      *&v65 = v50;
      *(&v65 + 1) = v33;
      *&v66 = v54;
      *(&v66 + 1) = v59;
      LOBYTE(v67) = v51;
      *(&v67 + 1) = v49;
      v40 = v65;
      a2[2] = v64;
      a2[3] = v40;
      v41 = v67;
      a2[4] = v66;
      a2[5] = v41;
      v42 = v63;
      *a2 = v62;
      a2[1] = v42;
      sub_2142FC684(&v62, &v69);
      __swift_destroy_boxed_opaque_existential_1(v87);
      LOBYTE(v69) = v34;
      *(&v69 + 1) = v86[0];
      HIDWORD(v69) = *(v86 + 3);
      v70 = v52;
      v71 = v35;
      v72 = v37;
      v73 = v60;
      v74 = v38;
      *v75 = *v85;
      *&v75[3] = *&v85[3];
      v76 = v50;
      v77 = v33;
      v78 = v54;
      v79 = v59;
      v80 = v51;
      *v81 = *v84;
      *&v81[3] = *&v84[3];
      v82 = v39;
      return sub_2142FC3CC(&v69);
    }

    sub_214031C4C();
    swift_allocError();
    v43 = v55;
    *v44 = v56;
    v44[1] = v43;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = v47;
    swift_willThrow();

    (*(v10 + 8))(v8, v5);

    v29 = *(&v58 + 1);
    v28 = v58;
    v30 = v32;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v26 = v46;
    *v27 = 0xD00000000000001CLL;
    v27[1] = v26;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = v47;
    swift_willThrow();

    v24 = *(&v48 + 1);
    (*(v10 + 8))(v8, v5);
    v28 = v58;

    v30 = v55;
    v29 = v56;
    sub_213FDC6D0(v56, v55);
  }

  v31 = v61;
  __swift_destroy_boxed_opaque_existential_1(v87);
  LOBYTE(v69) = v31;
  *(&v69 + 1) = v86[0];
  HIDWORD(v69) = *(v86 + 3);
  v70 = v20;
  v71 = v28;
  v72 = v29;
  v73 = v30;
  v74 = v57;
  *v75 = *v85;
  *&v75[3] = *&v85[3];
  v76 = v50;
  v77 = v53;
  v78 = v48;
  v79 = v24;
  v80 = v51;
  *&v81[3] = *&v84[3];
  *v81 = *v84;
  v82 = v49;
  return sub_2142FC3CC(&v69);
}

uint64_t PhotosPoster.Media.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A960, &qword_2146F6010);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v16 = *(v1 + 3);
  v17 = v9;
  v10 = *(v1 + 8);
  v14 = *(v1 + 9);
  v15 = v10;
  v13[1] = *(v1 + 11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FE20();
  sub_2146DAA28();
  LOBYTE(v18) = v8;
  v20 = 0;
  sub_21430FEC8();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = v14;
  if (v17 != 1)
  {
    v18 = v16;
    v19 = v17;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v11)
    {
      LOBYTE(v18) = 2;

      sub_2146DA328();

      LOBYTE(v18) = 3;
      sub_2146DA368();
      return (*(v5 + 8))(v7, v4);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotosPoster.Layout.init(with:deviceResolution:parallaxPadding:visibleFrame:inactiveFrame:timeFrame:clockLayerOrder:clockIntersection:layoutVariant:hasTopEdgeContact:spatialVisibleFrame:spatialAdaptiveFrame:adaptiveTimeFrame:salientContentFrame:)(BlastDoor::PhotosPoster::Layout *__return_ptr retstr, CGSize with, CGSize deviceResolution, CGSize parallaxPadding, __C::CGRect visibleFrame, __C::CGRect inactiveFrame, __C::CGRect timeFrame, BlastDoor::PhotosPoster::Layout::ClockLayerOrder_optional clockLayerOrder, BlastDoor::PhotosPoster::Layout::ClockIntersection clockIntersection, BlastDoor::PhotosPoster::Layout::LayoutVariant layoutVariant, Swift::Bool hasTopEdgeContact, __C::CGRect spatialVisibleFrame, __C::CGRect spatialAdaptiveFrame, __C::CGRect adaptiveTimeFrame, __C::CGRect salientContentFrame)
{
  v15 = *clockLayerOrder.value;
  v16 = *clockIntersection;
  v17 = *layoutVariant;
  retstr->imageSize.width = with.width;
  retstr->imageSize.height = with.height;
  retstr->deviceResolution.width = deviceResolution.width;
  retstr->deviceResolution.height = deviceResolution.height;
  retstr->parallaxPadding.width = parallaxPadding.width;
  retstr->parallaxPadding.height = parallaxPadding.height;
  retstr->visibleFrame = visibleFrame;
  retstr->inactiveFrame = inactiveFrame;
  retstr->timeFrame = timeFrame;
  retstr->clockLayerOrder.value = v15;
  retstr->clockIntersection = v16;
  retstr->layoutVariant = v17;
  retstr->hasTopEdgeContact = hasTopEdgeContact;
  retstr->spatialVisibleFrame = spatialVisibleFrame;
  retstr->spatialAdaptiveFrame = spatialAdaptiveFrame;
  retstr->adaptiveTimeFrame = adaptiveTimeFrame;
  retstr->salientContentFrame = salientContentFrame;
}

unint64_t sub_21423F118(char a1)
{
  result = 0x7A69536567616D69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x78616C6C61726170;
      break;
    case 3:
      result = 0x46656C6269736976;
      break;
    case 4:
      result = 0x6576697463616E69;
      break;
    case 5:
      result = 0x6D617246656D6974;
      break;
    case 6:
      result = 0x79614C6B636F6C63;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x615674756F79616CLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
    case 13:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21423F2D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437CB0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21423F2FC(uint64_t a1)
{
  v2 = sub_21430FF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423F338(uint64_t a1)
{
  v2 = sub_21430FF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.Layout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A970, &qword_2146F6018);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FF1C();
  sub_2146DAA08();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v36 = 0;
    sub_214328930(&qword_280B30B88, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    sub_2146DA1C8();
    v9 = v33;
    v36 = 1;
    sub_2146DA1C8();
    v10 = v33;
    v36 = 2;
    sub_2146DA1C8();
    v11 = v33;
    type metadata accessor for CGRect(0);
    v36 = 3;
    sub_214328930(&qword_27C9083F0, type metadata accessor for CGRect, MEMORY[0x277CBF280]);
    sub_2146DA1C8();
    v31 = v33;
    v32 = v34;
    v36 = 4;
    sub_2146DA1C8();
    v29 = v33;
    v30 = v34;
    v36 = 5;
    sub_2146DA1C8();
    v28 = v34;
    v27 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A980, &qword_2146F6020);
    v36 = 6;
    sub_21430FF70();
    sub_2146DA1C8();
    v35 = v33;
    v36 = 7;
    sub_214310048();
    sub_2146DA1C8();
    v26 = v33;
    v36 = 8;
    sub_21431009C();
    sub_2146DA1C8();
    v25 = v33;
    LOBYTE(v33) = 9;
    v24 = sub_2146DA178();
    v36 = 10;
    sub_2146DA1C8();
    v23 = v34;
    v22 = v33;
    v36 = 11;
    sub_2146DA1C8();
    v21 = v34;
    v20 = v33;
    v36 = 12;
    sub_2146DA1C8();
    v19 = v34;
    v18 = v33;
    v36 = 13;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v13 = v24 & 1;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    v14 = v32;
    *(a2 + 48) = v31;
    *(a2 + 64) = v14;
    v15 = v30;
    *(a2 + 80) = v29;
    *(a2 + 96) = v15;
    v16 = v28;
    *(a2 + 112) = v27;
    *(a2 + 128) = v16;
    *(a2 + 144) = v35;
    *(a2 + 145) = v26;
    *(a2 + 146) = v25;
    *(a2 + 147) = v13;
    *(a2 + 152) = v22;
    *(a2 + 168) = v23;
    *(a2 + 184) = v20;
    *(a2 + 200) = v21;
    *(a2 + 216) = v18;
    *(a2 + 232) = v19;
    v17 = v34;
    *(a2 + 248) = v33;
    *(a2 + 264) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PhotosPoster.Layout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9A8, &qword_2146F6028);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = *(v1 + 3);
  v38 = *(v1 + 4);
  v39 = v14;
  v15 = *(v1 + 5);
  v36 = *(v1 + 6);
  v37 = v15;
  v16 = *(v1 + 7);
  v34 = *(v1 + 8);
  v35 = v16;
  v42 = *(v1 + 144);
  v33 = *(v1 + 145);
  v32 = *(v1 + 146);
  v17 = *(v1 + 147);
  v30 = *(v1 + 21);
  v31 = *(v1 + 19);
  v28 = *(v1 + 25);
  v29 = *(v1 + 23);
  v26 = *(v1 + 29);
  v27 = *(v1 + 27);
  v25 = *(v1 + 31);
  v24 = *(v1 + 33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FF1C();
  sub_2146DAA28();
  *&v40 = v8;
  *(&v40 + 1) = v9;
  v43 = 0;
  type metadata accessor for CGSize(0);
  sub_214328930(&qword_280B2E368, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
  v18 = v4;
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v20 = v42;
  v23[3] = v17;
  *&v40 = v10;
  *(&v40 + 1) = v11;
  v43 = 1;
  sub_2146DA388();
  *&v40 = v12;
  *(&v40 + 1) = v13;
  v43 = 2;
  sub_2146DA388();
  v41 = v38;
  v40 = v39;
  v43 = 3;
  type metadata accessor for CGRect(0);
  v22 = v21;
  sub_214328930(&qword_27C908438, type metadata accessor for CGRect, MEMORY[0x277CBF268]);
  sub_2146DA388();
  v41 = v36;
  v40 = v37;
  v43 = 4;
  sub_2146DA388();
  v41 = v34;
  v40 = v35;
  v43 = 5;
  sub_2146DA388();
  *&v39 = v22;
  LOBYTE(v40) = v20;
  v43 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A980, &qword_2146F6020);
  sub_2143100F0();
  sub_2146DA388();
  LOBYTE(v40) = v33;
  v43 = 7;
  sub_2143101C8();
  sub_2146DA388();
  LOBYTE(v40) = v32;
  v43 = 8;
  sub_21431021C();
  sub_2146DA388();
  LOBYTE(v40) = 9;
  sub_2146DA338();
  v41 = v30;
  v40 = v31;
  v43 = 10;
  sub_2146DA388();
  v41 = v28;
  v40 = v29;
  v43 = 11;
  sub_2146DA388();
  v41 = v26;
  v40 = v27;
  v43 = 12;
  sub_2146DA388();
  v41 = v24;
  v40 = v25;
  v43 = 13;
  sub_2146DA388();
  return (*(v5 + 8))(v7, v18);
}

uint64_t PhotosPoster.ParallaxLayer.init(with:frame:zPosition:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  LOBYTE(v47) = 1;
  v56[0] = 1;
  v55 = 1;
  v54 = 1;
  v53 = 1;
  v52 = 1;
  v57 = 0uLL;
  *&v58 = 0;
  BYTE8(v58) = 1;
  *&v59 = 0;
  BYTE8(v59) = 1;
  *&v60 = 0;
  BYTE8(v60) = 1;
  *&v61 = 0;
  WORD4(v61) = 1025;
  v62 = 0uLL;
  *&v63 = 0;
  WORD4(v63) = 1;
  *&v64 = 0;
  BYTE8(v64) = 1;
  *&v65 = 0;
  BYTE8(v65) = 1;
  v66 = 0u;
  v67 = 0u;
  *&v68 = 0;
  *(&v68 + 1) = 0xF000000000000000;
  sub_2140611C0(&v57);
  v16 = v65;
  v17 = v67;
  v18 = v68;
  *(a4 + 392) = v66;
  *(a4 + 408) = v17;
  *(a4 + 424) = v18;
  v19 = v61;
  v20 = v63;
  v21 = v64;
  *(a4 + 328) = v62;
  *(a4 + 344) = v20;
  *(a4 + 360) = v21;
  *(a4 + 376) = v16;
  v22 = v58;
  *(a4 + 248) = v57;
  v23 = v59;
  v24 = v60;
  *(a4 + 264) = v22;
  *(a4 + 280) = v23;
  *(a4 + 296) = v24;
  *(a4 + 312) = v19;
  *(a4 + 240) = 0;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2140676DC;
  *(v26 + 24) = 0;
  *(inited + 32) = v26;
  sub_214042B80(inited, &v47);
  v28 = v47;
  v27 = v48;
  v29 = v49;
  v30 = v50;
  v31 = v51;
  *(a4 + 440) = a5;
  *(a4 + 448) = a6;
  *(a4 + 456) = a7;
  *(a4 + 464) = a8;
  *(a4 + 472) = a9;
  *(a4 + 480) = v28;
  *(a4 + 488) = v27;
  v42 = v29;
  *(a4 + 496) = v29;
  *(a4 + 504) = v30;
  *(a4 + 512) = v31;
  v46[0] = a2;
  v46[1] = a3;
  v56[0] = v31;
  v47 = 0xD000000000000025;
  v48 = 0x8000000214792450;
  v49 = 0xD00000000000001CLL;
  v50 = 0x800000021478A360;

  v32 = v28(v46, v56, &v47);
  if (v43)
  {
  }

  else
  {
    if (v32)
    {

      *(a4 + 480) = v28;
      *(a4 + 488) = v27;
      *(a4 + 496) = a2;
      *(a4 + 504) = a3;
      *(a4 + 512) = v31;
      result = sub_213FB2DF4(a4, &qword_27C904858, &qword_214736F00);
      v34 = *(a1 + 208);
      *(a4 + 192) = *(a1 + 192);
      *(a4 + 208) = v34;
      *(a4 + 224) = *(a1 + 224);
      *(a4 + 240) = *(a1 + 240);
      v35 = *(a1 + 144);
      *(a4 + 128) = *(a1 + 128);
      *(a4 + 144) = v35;
      v36 = *(a1 + 176);
      *(a4 + 160) = *(a1 + 160);
      *(a4 + 176) = v36;
      v37 = *(a1 + 80);
      *(a4 + 64) = *(a1 + 64);
      *(a4 + 80) = v37;
      v38 = *(a1 + 112);
      *(a4 + 96) = *(a1 + 96);
      *(a4 + 112) = v38;
      v39 = *(a1 + 16);
      *a4 = *a1;
      *(a4 + 16) = v39;
      v40 = *(a1 + 48);
      *(a4 + 32) = *(a1 + 32);
      *(a4 + 48) = v40;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000025;
    v41[1] = 0x8000000214792450;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21406D2CC(a1);

  *(a4 + 480) = v28;
  *(a4 + 488) = v27;
  *(a4 + 496) = v42;
  *(a4 + 504) = v30;
  *(a4 + 512) = v31;
  return sub_214310270(a4);
}

uint64_t sub_2142403B4()
{
  v1 = 0x6567616D69;
  v2 = 0x6F697469736F507ALL;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x656D617266;
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

uint64_t sub_214240430@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437CFA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214240458(uint64_t a1)
{
  v2 = sub_2143102C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214240494(uint64_t a1)
{
  v2 = sub_2143102C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.ParallaxLayer.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9D0, &qword_2146F6030);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2143102C4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  v34[0] = 0;
  sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0, aI_83);
  sub_2146DA1C8();
  v10 = v5;
  type metadata accessor for CGRect(0);
  LOBYTE(v41) = 1;
  sub_214328930(&qword_27C9083F0, type metadata accessor for CGRect, MEMORY[0x277CBF280]);
  sub_2146DA1C8();
  v11 = v6;
  v30 = *&v34[16];
  v31 = *v34;
  v34[0] = 2;
  sub_2146DA188();
  v13 = v12;
  v53 = 3;
  v14 = sub_2146DA168();
  v17 = v16;
  v28 = v8;
  v29 = v10;
  v34[0] = 1;
  LOBYTE(v35[0]) = 1;
  v40[0] = 1;
  v39 = 1;
  v38 = 1;
  v37 = 1;
  v36 = 1;
  v41 = 0uLL;
  *&v42 = 0;
  BYTE8(v42) = 1;
  *&v43 = 0;
  BYTE8(v43) = 1;
  *&v44 = 0;
  BYTE8(v44) = 1;
  *&v45 = 0;
  WORD4(v45) = 1025;
  v46 = 0uLL;
  *&v47 = 0;
  WORD4(v47) = 1;
  *&v48 = 0;
  BYTE8(v48) = 1;
  *&v49 = 0;
  BYTE8(v49) = 1;
  v50 = 0u;
  v51 = 0u;
  *&v52 = 0;
  *(&v52 + 1) = 0xF000000000000000;
  v18 = v14;
  sub_2140611C0(&v41);
  *(&v55[24] + 8) = v50;
  *(&v55[25] + 8) = v51;
  *(&v55[26] + 8) = v52;
  *(&v55[20] + 8) = v46;
  *(&v55[21] + 8) = v47;
  *(&v55[22] + 8) = v48;
  *(&v55[23] + 8) = v49;
  *(&v55[16] + 8) = v42;
  *(&v55[17] + 8) = v43;
  *(&v55[18] + 8) = v44;
  *(&v55[19] + 8) = v45;
  *(&v55[15] + 8) = v41;
  memset(v55, 0, 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2140676DC;
  *(v20 + 24) = 0;
  *(v19 + 32) = v20;
  sub_214042B80(v19, v34);
  v22 = *v34;
  v21 = *&v34[8];
  *(&v55[27] + 8) = v31;
  *(&v55[28] + 8) = v30;
  *(&v55[29] + 1) = v13;
  v55[30] = *v34;
  *&v27 = *&v34[16];
  v55[31] = *&v34[16];
  LOBYTE(v55[32]) = v34[32];
  v35[0] = v18;
  v35[1] = v17;
  LODWORD(v31) = v34[32];
  v40[0] = v34[32];
  *v34 = 0xD000000000000025;
  *&v34[8] = 0x8000000214792450;
  *&v34[16] = 0xD00000000000001CLL;
  *&v34[24] = 0x800000021478A360;
  *(&v27 + 1) = *(&v55[31] + 1);

  *&v30 = v22;
  v23 = v22(v35, v40, v34);
  v26 = v18;
  if (v23)
  {

    (*(v11 + 8))(v28, v29);

    *&v55[30] = v30;
    *(&v55[30] + 1) = v21;
    *&v55[31] = v26;
    *(&v55[31] + 1) = v17;
    LOBYTE(v55[32]) = v31;
    memcpy(v34, v54, sizeof(v34));
    sub_213FB2DF4(v55, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v55, v34, 0x1B8uLL);
    memcpy(v32, v55, 0x201uLL);
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  sub_214031C4C();
  swift_allocError();
  *v24 = 0xD000000000000025;
  v24[1] = 0x8000000214792450;
  v24[2] = 0xD00000000000001CLL;
  v24[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v54, &qword_27C905500, &qword_2146F2BE0);
  (*(v11 + 8))(v28, v29);

  *&v55[30] = v30;
  *(&v55[30] + 1) = v21;
  v55[31] = v27;
  LOBYTE(v55[32]) = v31;
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_214310270(v55);
}

uint64_t PhotosPoster.ParallaxLayer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9E0, &qword_2146F6038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143102C4();
  sub_2146DAA28();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0, byte_214738EE8);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = *(v3 + 456);
  v12 = *(v3 + 440);
  v13 = v9;
  v11[15] = 1;
  type metadata accessor for CGRect(0);
  sub_214328930(&qword_27C908438, type metadata accessor for CGRect, MEMORY[0x277CBF268]);
  sub_2146DA388();
  LOBYTE(v12) = 2;
  sub_2146DA348();
  if (*(v3 + 504))
  {
    LOBYTE(v12) = 3;

    sub_2146DA328();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotosPoster.ParallaxLayerStack.init(with:layout:depthEnabled:parallaxDisabled:clockAreaLuminance:settlingEffectEnabled:spatialPhotoEnabled:)(BlastDoor::PhotosPoster::ParallaxLayerStack *__return_ptr retstr, Swift::OpaquePointer with, BlastDoor::PhotosPoster::Layout *layout, Swift::Bool depthEnabled, Swift::Bool parallaxDisabled, Swift::Double clockAreaLuminance, Swift::Bool settlingEffectEnabled, Swift::Bool spatialPhotoEnabled)
{
  retstr->layers = with;
  memcpy(&retstr->layout, layout, sizeof(retstr->layout));
  retstr->depthEnabled = depthEnabled;
  retstr->parallaxDisabled = parallaxDisabled;
  retstr->clockAreaLuminance = clockAreaLuminance;
  retstr->settlingEffectEnabled = settlingEffectEnabled;
  retstr->spatialPhotoEnabled = spatialPhotoEnabled;
}

uint64_t sub_214240ED4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x74756F79616CLL;
    if (v1 != 1)
    {
      v5 = 0x616E456874706564;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x73726579616CLL;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
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

uint64_t sub_214240FC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437D10C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214240FE8(uint64_t a1)
{
  v2 = sub_214310318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214241024(uint64_t a1)
{
  v2 = sub_214310318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.ParallaxLayerStack.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9E8, &qword_2146F6040);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214310318();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9F8, &qword_2146F6048);
    v26 = 0;
    sub_21431036C();
    v11 = v5;
    sub_2146DA1C8();
    v12 = v25[0];
    v26 = 1;
    sub_214310444();
    sub_2146DA1C8();
    memcpy(v24, v25, sizeof(v24));
    v23 = 2;
    v21 = sub_2146DA178();
    v23 = 3;
    v20 = sub_2146DA178();
    v23 = 4;
    sub_2146DA188();
    v15 = v14;
    v23 = 5;
    HIDWORD(v19) = sub_2146DA178();
    v23 = 6;
    v16 = sub_2146DA178();
    (*(v10 + 8))(v8, v11);
    LOBYTE(v11) = v21 & 1;
    v17 = v20 & 1;
    v18 = BYTE4(v19) & 1;
    *a2 = v12;
    memcpy((a2 + 8), v24, 0x118uLL);
    *(a2 + 288) = v11;
    *(a2 + 289) = v17;
    *(a2 + 296) = v15;
    *(a2 + 304) = v18;
    *(a2 + 305) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t PhotosPoster.ParallaxLayerStack.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA18, &qword_2146F6050);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = *v2;
  v9 = *(v2 + 288);
  v13[2] = *(v2 + 289);
  v13[3] = v9;
  v10 = *(v2 + 304);
  v13[0] = *(v2 + 305);
  v13[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310318();

  sub_2146DAA28();
  v15[0] = v8;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9F8, &qword_2146F6048);
  sub_214310498();
  v11 = v14;
  sub_2146DA388();
  if (v11)
  {
  }

  else
  {

    memcpy(v15, v2 + 1, sizeof(v15));
    v16 = 1;
    sub_214310570();
    sub_2146DA388();
    LOBYTE(v15[0]) = 2;
    sub_2146DA338();
    LOBYTE(v15[0]) = 3;
    sub_2146DA338();
    LOBYTE(v15[0]) = 4;
    sub_2146DA348();
    LOBYTE(v15[0]) = 5;
    sub_2146DA338();
    LOBYTE(v15[0]) = 6;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v7, v4);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotosPoster.ParallaxLayoutConfiguration.init(with:screenScale:timeRect:inactiveTimeRect:parallaxPadding:)(BlastDoor::PhotosPoster::ParallaxLayoutConfiguration *__return_ptr retstr, CGSize with, Swift::Double screenScale, __C::CGRect timeRect, __C::CGRect inactiveTimeRect, CGSize parallaxPadding)
{
  retstr->screenSize.width = with.width;
  retstr->screenSize.height = with.height;
  retstr->screenScale = screenScale;
  retstr->timeRect = timeRect;
  retstr->inactiveTimeRect.origin.x = inactiveTimeRect.origin.x;
  *&retstr->inactiveTimeRect.origin.y = *&inactiveTimeRect.origin.y;
  *&retstr->inactiveTimeRect.size.height = *&inactiveTimeRect.size.height;
  retstr->parallaxPadding.height = parallaxPadding.height;
}

uint64_t sub_2142416D8()
{
  v1 = *v0;
  v2 = 0x69536E6565726373;
  v3 = 0x74636552656D6974;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x78616C6C61726170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x63536E6565726373;
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

uint64_t sub_214241790@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437D354(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142417B8(uint64_t a1)
{
  v2 = sub_2143105C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142417F4(uint64_t a1)
{
  v2 = sub_2143105C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.ParallaxLayoutConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA38, &qword_2146F6058);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143105C4();
  sub_2146DAA08();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v24 = 0;
    sub_214328930(&qword_280B30B88, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    sub_2146DA1C8();
    v9 = v22;
    LOBYTE(v22) = 1;
    sub_2146DA188();
    v11 = v10;
    type metadata accessor for CGRect(0);
    v13 = v12;
    v24 = 2;
    v14 = sub_214328930(&qword_27C9083F0, type metadata accessor for CGRect, MEMORY[0x277CBF280]);
    *&v21 = v13;
    *&v20 = v14;
    sub_2146DA1C8();
    v18 = v22;
    v19 = v23;
    v24 = 3;
    sub_2146DA1C8();
    v20 = v22;
    v21 = v23;
    v24 = 4;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 16) = v11;
    v16 = v19;
    *(a2 + 24) = v18;
    *(a2 + 40) = v16;
    v17 = v21;
    *(a2 + 56) = v20;
    *(a2 + 72) = v17;
    *(a2 + 88) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PhotosPoster.ParallaxLayoutConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA48, &qword_2146F6060);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 3);
  v17 = *(v1 + 5);
  v18 = v10;
  v11 = *(v1 + 7);
  v15 = *(v1 + 9);
  v16 = v11;
  v12 = v1[11];
  v13 = v1[12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143105C4();
  sub_2146DAA28();
  *&v19 = v8;
  *(&v19 + 1) = v9;
  v21 = 0;
  type metadata accessor for CGSize(0);
  sub_214328930(&qword_280B2E368, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_2146DA348();
    v20 = v17;
    v19 = v18;
    v21 = 2;
    type metadata accessor for CGRect(0);
    sub_214328930(&qword_27C908438, type metadata accessor for CGRect, MEMORY[0x277CBF268]);
    sub_2146DA388();
    v20 = v15;
    v19 = v16;
    v21 = 3;
    sub_2146DA388();
    *&v19 = v12;
    *(&v19 + 1) = v13;
    v21 = 4;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotosPoster.CompoundDeviceConfiguration.init(with:landscapeConfiguration:)(BlastDoor::PhotosPoster::CompoundDeviceConfiguration *__return_ptr retstr, BlastDoor::PhotosPoster::ParallaxLayoutConfiguration *with, BlastDoor::PhotosPoster::ParallaxLayoutConfiguration_optional *landscapeConfiguration)
{
  v6 = *&with->inactiveTimeRect.origin.y;
  v7 = *&with->inactiveTimeRect.size.height;
  *v8 = with->parallaxPadding.height;
  v4 = *&with->timeRect.origin.y;
  v5 = *&with->timeRect.size.height;
  *&v8[40] = *&landscapeConfiguration->value.timeRect.origin.y;
  *&v8[24] = *&landscapeConfiguration->value.screenScale;
  *&v8[8] = landscapeConfiguration->value.screenSize;
  *&v8[97] = *(&landscapeConfiguration->value.parallaxPadding + 1);
  *&v8[88] = *&landscapeConfiguration->value.inactiveTimeRect.size.height;
  *&v8[72] = *&landscapeConfiguration->value.inactiveTimeRect.origin.y;
  *&v8[56] = *&landscapeConfiguration->value.timeRect.size.height;
  v3 = *&with->screenScale;
  retstr->portraitConfiguration.screenSize = with->screenSize;
  *&retstr->portraitConfiguration.screenScale = v3;
  *&retstr->portraitConfiguration.inactiveTimeRect.origin.y = v6;
  *&retstr->portraitConfiguration.inactiveTimeRect.size.height = v7;
  *&retstr->portraitConfiguration.timeRect.origin.y = v4;
  *&retstr->portraitConfiguration.timeRect.size.height = v5;
  retstr->landscapeConfiguration.value.timeRect = *&v8[32];
  *&retstr->portraitConfiguration.parallaxPadding.height = *v8;
  *&retstr->landscapeConfiguration.value.screenSize.height = *&v8[16];
  retstr->landscapeConfiguration.is_nil = v8[112];
  retstr->landscapeConfiguration.value.inactiveTimeRect.size = *&v8[80];
  retstr->landscapeConfiguration.value.parallaxPadding = *&v8[96];
  retstr->landscapeConfiguration.value.inactiveTimeRect.origin = *&v8[64];
}

unint64_t sub_214241F2C()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_214241F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214797160 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000214797180 == a2)
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

uint64_t sub_214242048(uint64_t a1)
{
  v2 = sub_214310618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214242084(uint64_t a1)
{
  v2 = sub_214310618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.CompoundDeviceConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA50, &qword_2146F6068);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310618();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v5;
    v9 = v44;
    v41 = 0;
    sub_21431066C();
    sub_2146DA1C8();
    v38 = v42[4];
    v39 = v42[5];
    v40 = v43;
    v34 = v42[0];
    v35 = v42[1];
    v36 = v42[2];
    v37 = v42[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA68, &qword_2146F6070);
    v27 = 1;
    sub_2143106C0();
    sub_2146DA1C8();
    (*(v8 + 8))(v7, v4);
    *&v26[56] = v31;
    *&v26[72] = v32;
    *&v26[88] = v33[0];
    *&v26[97] = *(v33 + 9);
    *&v26[8] = v28;
    *&v26[24] = v29;
    *&v26[40] = v30;
    v21[0] = v34;
    v21[1] = v35;
    *v26 = v40;
    v24 = v38;
    v25 = v39;
    v22 = v36;
    v23 = v37;
    v10 = v35;
    *v9 = v34;
    *(v9 + 16) = v10;
    v11 = v22;
    v12 = v23;
    v13 = v25;
    *(v9 + 64) = v24;
    *(v9 + 80) = v13;
    *(v9 + 32) = v11;
    *(v9 + 48) = v12;
    v14 = *v26;
    v15 = *&v26[16];
    v16 = *&v26[48];
    *(v9 + 128) = *&v26[32];
    *(v9 + 144) = v16;
    *(v9 + 96) = v14;
    *(v9 + 112) = v15;
    v17 = *&v26[64];
    v18 = *&v26[80];
    v19 = *&v26[96];
    *(v9 + 208) = v26[112];
    *(v9 + 176) = v18;
    *(v9 + 192) = v19;
    *(v9 + 160) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PhotosPoster.CompoundDeviceConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA78, &qword_2146F6078);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310618();
  sub_2146DAA28();
  v9 = v3[5];
  v20 = v3[4];
  *v21 = v9;
  *&v21[16] = *(v3 + 12);
  v10 = v3[1];
  v16 = *v3;
  v17 = v10;
  v11 = v3[3];
  v18 = v3[2];
  v19 = v11;
  v22 = 0;
  sub_214310744();
  sub_2146DA388();
  if (!v2)
  {
    v12 = *(v3 + 152);
    v13 = *(v3 + 184);
    v20 = *(v3 + 168);
    *v21 = v13;
    *&v21[9] = *(v3 + 193);
    v14 = *(v3 + 120);
    v16 = *(v3 + 104);
    v17 = v14;
    v18 = *(v3 + 136);
    v19 = v12;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA68, &qword_2146F6070);
    sub_214310798();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_214242574@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 32);
  *&v10[23] = *(a2 + 16);
  *&v10[39] = *(a2 + 32);
  *&v10[55] = *(a2 + 48);
  *&v10[71] = *(a2 + 64);
  *&v10[7] = *a2;
  *&v9[22] = *(a3 + 16);
  *&v9[38] = *(a3 + 32);
  *&v9[54] = *(a3 + 48);
  *&v9[70] = *(a3 + 64);
  *&v9[6] = *a3;
  *&v8[22] = *(a4 + 16);
  *&v8[38] = *(a4 + 32);
  *&v8[54] = *(a4 + 48);
  *&v8[70] = *(a4 + 64);
  *&v8[6] = *a4;
  v6 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = v5;
  *(a5 + 33) = *v10;
  *(a5 + 90) = *&v10[57];
  *(a5 + 81) = *&v10[48];
  *(a5 + 65) = *&v10[32];
  *(a5 + 49) = *&v10[16];
  *(a5 + 106) = *v9;
  *(a5 + 170) = *&v9[64];
  *(a5 + 154) = *&v9[48];
  *(a5 + 138) = *&v9[32];
  *(a5 + 122) = *&v9[16];
  *(a5 + 178) = *v8;
  result = *&v8[32];
  *(a5 + 242) = *&v8[64];
  *(a5 + 226) = *&v8[48];
  *(a5 + 210) = *&v8[32];
  *(a5 + 194) = *&v8[16];
  return result;
}

uint64_t sub_214242674@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437D520(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21424269C(uint64_t a1)
{
  v2 = sub_21431081C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142426D8(uint64_t a1)
{
  v2 = sub_21431081C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214242714@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA90, &qword_2146F6080);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21431081C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v6;
    v33 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAA0, &qword_2146F6088);
    LOBYTE(v54) = 0;
    sub_214310870();
    sub_2146DA1C8();
    v11 = *(&v60 + 1);
    v31 = v60;
    v32 = v61;
    v12 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAB8, &qword_2146F6090);
    v59 = 1;
    v30 = sub_214310948();
    sub_2146DA1C8();
    v28 = v11;
    v29 = v12;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v54 = v60;
    v55 = v61;
    v48 = 2;
    sub_2146DA1C8();
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v47 = v53;
    v43 = v49;
    v37 = 3;
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v5);
    v13 = v29;
    v14 = v32;
    v15 = v28;
    *&v36[23] = v55;
    *&v36[39] = v56;
    *&v36[55] = v57;
    *&v36[71] = v58;
    *&v36[7] = v54;
    *&v35[22] = v44;
    *&v35[38] = v45;
    *&v35[54] = v46;
    *&v35[70] = v47;
    *&v35[6] = v43;
    *&v34[6] = v38;
    *&v34[70] = v42;
    *&v34[54] = v41;
    *&v34[38] = v40;
    *&v34[22] = v39;
    v17 = *(&v32 + 1);
    v18 = v33;
    *v33 = v31;
    v18[1] = v15;
    v18[2] = v14;
    v18[3] = v17;
    *(v18 + 32) = v13;
    v19 = *&v36[16];
    *(v18 + 33) = *v36;
    v20 = *&v36[32];
    v21 = *&v36[48];
    *(v18 + 90) = *&v36[57];
    *(v18 + 81) = v21;
    *(v18 + 65) = v20;
    *(v18 + 49) = v19;
    v22 = *&v35[16];
    *(v18 + 106) = *v35;
    v23 = *&v35[32];
    v24 = *&v35[48];
    *(v18 + 170) = *&v35[64];
    *(v18 + 154) = v24;
    *(v18 + 138) = v23;
    *(v18 + 122) = v22;
    v25 = *&v34[16];
    *(v18 + 178) = *v34;
    v26 = *&v34[32];
    v27 = *&v34[48];
    *(v18 + 242) = *&v34[64];
    *(v18 + 226) = v27;
    *(v18 + 210) = v26;
    *(v18 + 194) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_214242BB8(void *a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAD0, &qword_2146F6098);
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = v23 - v3;
  v5 = *(v1 + 8);
  v24 = *v1;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v51 = *(v1 + 72);
  v52 = v9;
  v53 = *(v1 + 104);
  v49 = *(v1 + 40);
  v50 = v8;
  v10 = *(v1 + 112);
  v11 = *(v1 + 128);
  v12 = *(v1 + 144);
  v13 = *(v1 + 160);
  v14 = *(v1 + 32);
  v58 = *(v1 + 176);
  v56 = v12;
  v57 = v13;
  v54 = v10;
  v55 = v11;
  v15 = *(v1 + 200);
  v16 = *(v1 + 232);
  v61 = *(v1 + 216);
  v62 = v16;
  v63 = *(v1 + 248);
  v59 = *(v1 + 184);
  v60 = v15;
  v17 = a1[3];
  v23[1] = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v18 = v24;
  sub_21431C5DC(v24, v5, v7, v6);
  sub_21431081C();
  sub_2146DAA28();
  *&v44 = v18;
  *(&v44 + 1) = v5;
  *&v45 = v7;
  *(&v45 + 1) = v6;
  LOBYTE(v46) = v14;
  v19 = v25;
  LOBYTE(v42[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAA0, &qword_2146F6088);
  sub_214310A20();
  v20 = v26;
  sub_2146DA388();
  if (v20)
  {
    sub_21431E10C(v44, *(&v44 + 1), v45, *(&v45 + 1));
    return (*(v27 + 8))(v4, v19);
  }

  else
  {
    v22 = v27;
    sub_21431E10C(v44, *(&v44 + 1), v45, *(&v45 + 1));
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v44 = v49;
    v45 = v50;
    v66 = 1;
    sub_213FB2E54(&v49, v42, &qword_27C90AAB8, &qword_2146F6090);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAB8, &qword_2146F6090);
    sub_214310AF8();
    sub_2146DA388();
    v42[2] = v46;
    v42[3] = v47;
    v43 = v48;
    v42[0] = v44;
    v42[1] = v45;
    sub_213FB2DF4(v42, &qword_27C90AAB8, &qword_2146F6090);
    v39 = v56;
    v40 = v57;
    v41 = v58;
    v37 = v54;
    v38 = v55;
    v65 = 2;
    sub_213FB2E54(&v54, v35, &qword_27C90AAB8, &qword_2146F6090);
    sub_2146DA388();
    v35[2] = v39;
    v35[3] = v40;
    v36 = v41;
    v35[0] = v37;
    v35[1] = v38;
    sub_213FB2DF4(v35, &qword_27C90AAB8, &qword_2146F6090);
    v32 = v61;
    v33 = v62;
    v34 = v63;
    v30 = v59;
    v31 = v60;
    v64 = 3;
    sub_213FB2E54(&v59, v28, &qword_27C90AAB8, &qword_2146F6090);
    sub_2146DA388();
    v28[2] = v32;
    v28[3] = v33;
    v29 = v34;
    v28[0] = v30;
    v28[1] = v31;
    sub_213FB2DF4(v28, &qword_27C90AAB8, &qword_2146F6090);
    return (*(v22 + 8))(v4, v19);
  }
}

uint64_t sub_214243064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21444A480(&v15);
  v6 = v15;
  v7 = v16;
  v8 = v19;
  v14[0] = a1;
  v14[1] = a2;
  v20 = v19;
  v15 = 0xD000000000000035;
  v16 = 0x8000000214792480;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;
  v9 = v6;

  v10 = v9(v14, &v20, &v15);
  if (v3)
  {
  }

  else
  {
    if (v10)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v7;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000035;
    v12[1] = 0x8000000214792480;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2142431FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_21424328C(uint64_t a1)
{
  v2 = sub_214310BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142432C8(uint64_t a1)
{
  v2 = sub_214310BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214243304@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAF8, &qword_2146F60A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310BD0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v23 = a2;
  v12 = v11;
  v13 = v9;
  sub_21444A480(&v29);
  v15 = v29;
  v14 = v30;
  v24 = v13;
  v28[0] = v13;
  v28[1] = v12;
  v26 = v12;
  v27 = v32;
  v34 = v33;
  v35 = v33;
  v29 = 0xD000000000000035;
  v30 = 0x8000000214792480;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v25 = v14;
  v16 = v15(v28, &v35, &v29);
  v22 = v15;
  if (v16)
  {

    (*(v6 + 8))(v8, v5);

    v17 = v25;

    v18 = v23;
    *v23 = v22;
    v18[1] = v17;
    v19 = v26;
    v18[2] = v24;
    v18[3] = v19;
    *(v18 + 32) = v34;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v20 = 0xD000000000000035;
  v20[1] = 0x8000000214792480;
  v20[2] = 0xD00000000000001CLL;
  v20[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214243680@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  sub_21444A584(&v35);
  v10 = v35;
  v9 = v36;
  v11 = v38;
  v47[0] = *v40;
  *(v47 + 3) = *&v40[3];
  v29 = v41;
  v31 = v42;
  v25 = v37;
  v26 = v43;
  v12 = v44;
  v30 = v45;
  v46 = v44;
  v34[0] = a1;
  v34[1] = a2;
  v28 = v39;
  v33[0] = v39;
  v35 = 0xD00000000000002ELL;
  v36 = 0x80000002147924C0;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  v27 = v10;
  v13 = v10(v34, v33, &v35);
  if (v5)
  {

LABEL_6:

    v17 = v29;
    v14 = v9;

    a1 = v25;
    v15 = v30;
LABEL_7:
    v35 = v27;
    v36 = v14;
    v37 = a1;
    v38 = v11;
    v39 = v28;
    *v40 = v47[0];
    *&v40[3] = *(v47 + 3);
    v41 = v17;
    v42 = v31;
    v43 = v26;
    v44 = v46;
    v45 = v15;
    return sub_214310C24(&v35);
  }

  v22 = v12;
  v23 = a2;
  if ((v13 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000002ELL;
    v18[1] = 0x80000002147924C0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v14 = v9;

  v33[0] = v22 & 1;
  *v34 = a4;
  v15 = v30;
  v32 = v30;
  v35 = 0xD000000000000033;
  v36 = 0x80000002147924F0;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  v16 = v29(v34, &v32, &v35);
  v17 = v29;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000033;
    v20[1] = 0x80000002147924F0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    v21 = v33[0];

    v46 = v21 & 1;
    v11 = v23;
    goto LABEL_7;
  }

  v46 = 0;
  *a3 = v27;
  *(a3 + 8) = v9;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v28;
  *(a3 + 33) = v47[0];
  *(a3 + 36) = *(v47 + 3);
  *(a3 + 40) = v29;
  *(a3 + 48) = v31;
  *(a3 + 56) = a4;
  *(a3 + 64) = 0;
  *(a3 + 65) = v30;
  return result;
}

uint64_t sub_2142439DC()
{
  if (*v0)
  {
    return 0x6F69746169726176;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_214243A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_214243AF8(uint64_t a1)
{
  v2 = sub_214310C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214243B34(uint64_t a1)
{
  v2 = sub_214310C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214243B70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB10, &qword_2146F60B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310C78();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v64) = 0;
  v9 = sub_2146DA168();
  v11 = v10;
  v12 = v9;
  v55 = a2;
  v75 = 1;
  sub_2146DA188();
  v15 = v14;
  sub_21444A584(&v64);
  v16 = v65;
  v56 = v64;
  v17 = v67;
  v47 = v66;
  *v77 = *v69;
  *&v77[3] = *&v69[3];
  v51 = v70;
  v54 = v71;
  v48 = v72;
  v52 = v74;
  v46 = v73;
  v76 = v73;
  v45 = v12;
  *&v57 = v12;
  *(&v57 + 1) = v11;
  v50 = v68;
  LOBYTE(v62) = v68;
  v64 = 0xD00000000000002ELL;
  v65 = 0x80000002147924C0;
  v66 = 0xD00000000000001CLL;
  v67 = 0x800000021478A360;
  v49 = v17;

  v53 = v16;
  v18 = v56(&v57, &v62, &v64);
  v43 = v11;
  v19 = v46;
  v44 = 0x800000021478A360;
  if (v18)
  {
    v20 = v44;

    v63 = v19 & 1;
    v62 = v15;
    LOBYTE(v57) = v52;
    v64 = 0xD000000000000033;
    v65 = 0x80000002147924F0;
    v66 = 0xD00000000000001CLL;
    v67 = v20;

    v21 = v51;
    v22 = v51(&v62, &v57, &v64);
    v23 = v21;
    v26 = v43;
    if (v22)
    {

      (*(v6 + 8))(v8, v5);
      v29 = v54;

      v76 = 0;
      v30 = v56;
      *&v57 = v56;
      v31 = v45;
      *(&v57 + 1) = v53;
      *&v58 = v45;
      *(&v58 + 1) = v26;
      v32 = v50;
      LOBYTE(v59) = v50;
      *(&v59 + 1) = *v77;
      DWORD1(v59) = *&v77[3];
      *(&v59 + 1) = v21;
      *&v60 = v29;
      *(&v60 + 1) = v15;
      LOBYTE(v61) = 0;
      v33 = v52;
      HIBYTE(v61) = v52;
      v34 = v57;
      v35 = v58;
      v36 = v59;
      v37 = v60;
      v38 = v55;
      *(v55 + 64) = v61;
      v38[2] = v36;
      v38[3] = v37;
      *v38 = v34;
      v38[1] = v35;
      sub_214310CCC(&v57, &v64);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v64 = v30;
      v65 = v53;
      v66 = v31;
      v67 = v26;
      v68 = v32;
      *v69 = *v77;
      *&v69[3] = *&v77[3];
      v70 = v21;
      v71 = v29;
      v72 = v15;
      v73 = 0;
      v74 = v33;
      return sub_214310C24(&v64);
    }

    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000033;
    v39[1] = 0x80000002147924F0;
    v40 = v44;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = v40;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    v41 = v63;
    v28 = v45;

    v76 = v41 & 1;
    v27 = v53;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000002ELL;
    v24[1] = 0x80000002147924C0;
    v25 = v44;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();

    v23 = v51;
    (*(v6 + 8))(v8, v5);
    v26 = v49;

    v27 = v53;

    v28 = v47;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v64 = v56;
  v65 = v27;
  v66 = v28;
  v67 = v26;
  v68 = v50;
  *v69 = *v77;
  *&v69[3] = *&v77[3];
  v70 = v23;
  v71 = v54;
  v72 = v48;
  v73 = v76;
  v74 = v52;
  return sub_214310C24(&v64);
}

uint64_t sub_214244230(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB20, &qword_2146F60B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 24);
  v11 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310C78();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_6;
  }

  v14 = 0;

  v8 = v12;
  sub_2146DA328();
  if (v8)
  {
    (*(v4 + 8))(v6, v3);
  }

  if (v11)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v13 = 1;
    sub_2146DA348();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

__n128 sub_214244468@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  *&v9[7] = *a5;
  *&v9[23] = a5[1];
  *&v9[39] = a5[2];
  *&v9[48] = *(a5 + 41);
  *(a6 + 24) = *a4;
  *(a6 + 49) = *v9;
  *(a6 + 65) = *&v9[16];
  result = *&v9[32];
  *(a6 + 81) = *&v9[32];
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v7;
  *(a6 + 48) = v8;
  *(a6 + 97) = *&v9[48];
  return result;
}

uint64_t sub_2142444D4()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0x73746E696F70;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696568;
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

uint64_t sub_214244568@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437D674(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214244590(uint64_t a1)
{
  v2 = sub_214310D28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142445CC(uint64_t a1)
{
  v2 = sub_214310D28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214244608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB28, &qword_2146F60C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310D28();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v24) = 0;
    v9 = sub_2146DA1A8();
    LOBYTE(v24) = 1;
    v22 = sub_2146DA1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB38, &qword_2146F60C8);
    v28 = 2;
    sub_214310D7C();
    sub_2146DA1C8();
    v11 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB50, &qword_2146F60D0);
    v28 = 3;
    sub_214310E54();
    sub_2146DA1C8();
    v20 = *(&v24 + 1);
    v21 = v11;
    v18 = v24;
    v19 = v25;
    LOBYTE(v11) = BYTE8(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB68, &qword_2146F60D8);
    v28 = 4;
    sub_214310F2C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *&v23[7] = v24;
    *&v23[23] = v25;
    *&v23[39] = v26[0];
    *&v23[48] = *(v26 + 9);
    v12 = *&v23[16];
    *(a2 + 49) = *v23;
    *(a2 + 65) = v12;
    v13 = *&v23[48];
    *(a2 + 81) = *&v23[32];
    v27 = v11;
    v15 = v21;
    v14 = v22;
    *a2 = v9;
    *(a2 + 8) = v14;
    v16 = v18;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    v17 = v19;
    *(a2 + 32) = v20;
    *(a2 + 40) = v17;
    *(a2 + 48) = v11;
    *(a2 + 97) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214244940(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB80, &qword_2146F60E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = *(v3 + 8);
  v10 = *(v3 + 24);
  v22 = *(v3 + 16);
  v23 = v9;
  v11 = *(v3 + 40);
  v20 = *(v3 + 32);
  v21 = v10;
  v19 = v11;
  v27 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310D28();
  v12 = v5;
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  sub_2146DA368();
  if (!v2)
  {
    v13 = v21;
    v14 = v22;
    v15 = v20;
    LOBYTE(v24) = 1;
    sub_2146DA368();
    *&v24 = v14;
    v28 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB38, &qword_2146F60C8);
    sub_214311004();
    sub_2146DA388();
    *&v24 = v13;
    *(&v24 + 1) = v15;
    *&v25 = v19;
    BYTE8(v25) = v27;
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB50, &qword_2146F60D0);
    sub_2143110DC();
    sub_2146DA388();
    v16 = *(v3 + 72);
    v24 = *(v3 + 56);
    v25 = v16;
    v26[0] = *(v3 + 88);
    *(v26 + 9) = *(v3 + 97);
    v28 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB68, &qword_2146F60D8);
    sub_2143111B4();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v12);
}

void sub_214244C20(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t sub_214244C2C()
{
  v1 = 0x59737569646172;
  if (*v0 != 1)
  {
    v1 = 0x616D676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x58737569646172;
  }
}

uint64_t sub_214244C84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437D824(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214244CAC(uint64_t a1)
{
  v2 = sub_21431128C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214244CE8(uint64_t a1)
{
  v2 = sub_21431128C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214244D24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ABB8, &qword_2146F60E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431128C();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = 0;
    sub_2143112E0();
    sub_2146DA1C8();
    v9 = v15;
    v14 = 1;
    sub_2146DA1C8();
    v11 = v15;
    v14 = 2;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214244F40(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ABD0, &qword_2146F60F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431128C();
  sub_2146DAA28();
  v14 = v9;
  v13 = 0;
  sub_214311334();
  sub_2146DA388();
  if (!v2)
  {
    v14 = v8;
    v13 = 1;
    sub_2146DA388();
    v14 = v10;
    v13 = 2;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

__n128 sub_21424515C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  result = *a1;
  v6 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v6;
  *(a2 + 40) = a4;
  *(a2 + 48) = a5;
  return result;
}

uint64_t sub_214245174()
{
  v1 = 0x726574656D616964;
  v2 = 0x6964615272756C62;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 0x726F6C6F63;
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

uint64_t sub_2142451F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437D938(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214245218(uint64_t a1)
{
  v2 = sub_214311388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214245254(uint64_t a1)
{
  v2 = sub_214311388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214245290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ABE0, &qword_2146F60F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311388();
  sub_2146DAA08();
  if (!v2)
  {
    v18 = 0;
    sub_2143112E0();
    sub_2146DA1C8();
    v9 = v16;
    v18 = 1;
    sub_2142FCE0C();
    sub_2146DA1C8();
    v14 = v17;
    v15 = v16;
    v18 = 2;
    sub_2146DA1C8();
    v11 = v16;
    v18 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v16;
    *a2 = v9;
    v13 = v15;
    *(a2 + 24) = v14;
    *(a2 + 8) = v13;
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142454FC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ABF0, &qword_2146F6100);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v13 = *(v1 + 3);
  v14 = v9;
  v11 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311388();
  sub_2146DAA28();
  *&v15 = v8;
  v17 = 0;
  sub_214311334();
  sub_2146DA388();
  if (!v2)
  {
    v15 = v14;
    v16 = v13;
    v17 = 1;
    sub_2142FCF88();
    sub_2146DA388();
    *&v15 = v11;
    v17 = 2;
    sub_2146DA388();
    *&v15 = v10;
    v17 = 3;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_214245750@<X0>(uint64_t result@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  *(a4 + 8) = *a2;
  v9 = a3[1];
  *(a4 + 24) = *a3;
  *a4 = result;
  *(a4 + 40) = v9;
  *(a4 + 56) = a5;
  *(a4 + 64) = a6;
  *(a4 + 72) = a7;
  *(a4 + 80) = a8;
  *(a4 + 88) = a9;
  return result;
}

uint64_t sub_214245778()
{
  v1 = *v0;
  v2 = 0x506C61636F467369;
  v3 = 0x596D756D696E696DLL;
  if (v1 != 6)
  {
    v3 = 0x596D756D6978616DLL;
  }

  v4 = 0x586D756D696E696DLL;
  if (v1 != 4)
  {
    v4 = 0x586D756D6978616DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x726F6C6F63;
  if (v1 != 2)
  {
    v5 = 1936941421;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461636F6CLL;
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

uint64_t sub_21424586C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437DAA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214245894(uint64_t a1)
{
  v2 = sub_2143113DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142458D0(uint64_t a1)
{
  v2 = sub_2143113DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424590C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ABF8, &qword_2146F6108);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143113DC();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v20) = 0;
    v9 = sub_2146DA178();
    v22 = 1;
    sub_214311430();
    sub_2146DA1C8();
    v10 = v20;
    v22 = 2;
    sub_2142FCE0C();
    sub_2146DA1C8();
    v18 = v20;
    v19 = v21;
    v22 = 3;
    sub_2143112E0();
    sub_2146DA1C8();
    v11 = v20;
    v22 = 4;
    sub_2146DA1C8();
    v12 = v20;
    v22 = 5;
    sub_2146DA1C8();
    v13 = v20;
    v22 = 6;
    sub_2146DA1C8();
    v15 = v20;
    v22 = 7;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v16 = v20;
    *a2 = v9 & 1;
    *(a2 + 8) = v10;
    v17 = v19;
    *(a2 + 24) = v18;
    *(a2 + 40) = v17;
    *(a2 + 56) = v11;
    *(a2 + 64) = v12;
    *(a2 + 72) = v13;
    *(a2 + 80) = v15;
    *(a2 + 88) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214245C78(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC10, &qword_2146F6110);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v17 = *(v1 + 40);
  v18 = v10;
  v12 = *(v1 + 56);
  v11 = *(v1 + 64);
  v14 = *(v1 + 72);
  v13 = *(v1 + 80);
  v15 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143113DC();
  sub_2146DAA28();
  LOBYTE(v19) = 0;
  sub_2146DA338();
  if (!v2)
  {
    *&v19 = v8;
    *(&v19 + 1) = v9;
    v21 = 1;
    sub_214311484();
    sub_2146DA388();
    v20 = v17;
    v19 = v18;
    v21 = 2;
    sub_2142FCF88();
    sub_2146DA388();
    *&v19 = v12;
    v21 = 3;
    sub_214311334();
    sub_2146DA388();
    *&v19 = v11;
    v21 = 4;
    sub_2146DA388();
    *&v19 = v14;
    v21 = 5;
    sub_2146DA388();
    *&v19 = v13;
    v21 = 6;
    sub_2146DA388();
    *&v19 = v15;
    v21 = 7;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StyleSheet.Color.init(with:green:blue:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_214245FD4()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_21424601C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437DD34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214246044(uint64_t a1)
{
  v2 = sub_2143114D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214246080(uint64_t a1)
{
  v2 = sub_2143114D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Color.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC20, &qword_2146F6118);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143114D8();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_2146DA218();
    v16 = 1;
    v14 = sub_2146DA218();
    v15 = 2;
    v11 = sub_2146DA218();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StyleSheet.Color.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC30, &qword_2146F6120);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 4);
  v9[3] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143114D8();
  sub_2146DAA28();
  v12 = 0;
  sub_2146DA3D8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_2146DA3D8();
  v10 = 2;
  sub_2146DA3D8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t StyleSheet.Font.Specified.init(with:weight:style:variant:family:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(result + 8);
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 9) = v7;
  *(a6 + 10) = v8;
  *(a6 + 11) = v9;
  *(a6 + 16) = a5;
  return result;
}

uint64_t sub_21424649C()
{
  v1 = *v0;
  v2 = 1702521203;
  v3 = 0x656C797473;
  v4 = 0x746E6169726176;
  if (v1 != 3)
  {
    v4 = 0x796C696D6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696577;
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

uint64_t sub_214246524@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437DE48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21424654C(uint64_t a1)
{
  v2 = sub_21431152C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214246588(uint64_t a1)
{
  v2 = sub_21431152C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Font.Specified.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC38, &qword_2146F6128);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431152C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC48, &qword_2146F6130);
    v18 = 0;
    sub_214311580();
    sub_2146DA1C8();
    v9 = v15;
    v10 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC60, &qword_2146F6138);
    v18 = 1;
    sub_214311658();
    sub_2146DA1C8();
    v14 = v9;
    LODWORD(v9) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC78, &qword_2146F6140);
    v18 = 2;
    sub_214311730();
    sub_2146DA1C8();
    v17 = v9;
    LOBYTE(v9) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC90, &qword_2146F6148);
    v18 = 3;
    sub_214311808();
    sub_2146DA1C8();
    HIDWORD(v13) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    v18 = 4;
    sub_2142E1548();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v14;
    *(a2 + 8) = v10;
    *(a2 + 9) = v17;
    *(a2 + 10) = v9;
    *(a2 + 11) = BYTE4(v13);
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StyleSheet.Font.Specified.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ACA8, &qword_2146F6150);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v22 = *(v1 + 9);
  v9 = *(v1 + 10);
  v17 = *(v1 + 11);
  v18 = v9;
  v16 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431152C();
  sub_2146DAA28();
  v20 = v7;
  v21 = v8;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC48, &qword_2146F6130);
  sub_2143118E0();
  v10 = v19;
  sub_2146DA388();
  if (!v10)
  {
    v12 = v17;
    v11 = v18;
    v13 = v16;
    LOBYTE(v20) = v22;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC60, &qword_2146F6138);
    sub_2143119B8();
    sub_2146DA388();
    LOBYTE(v20) = v11;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC78, &qword_2146F6140);
    sub_214311A90();
    sub_2146DA388();
    LOBYTE(v20) = v12;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC90, &qword_2146F6148);
    sub_214311B68();
    sub_2146DA388();
    v20 = v13;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SMSMessage.SMSFilteringSettings.init(with:smsFilterCapabilitiesOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_214246C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000214795800 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000214795820 == a2)
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

uint64_t sub_214246CE8(uint64_t a1)
{
  v2 = sub_214311C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214246D24(uint64_t a1)
{
  v2 = sub_214311C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214246DA4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v19 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v13 = v18;
    v12 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v22 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v14 = v20;
    v15 = v21;
    LOBYTE(v20) = 1;
    v16 = sub_2146DA228();
    (*(v13 + 8))(v11, v9);
    *v12 = v14;
    v12[1] = v15;
    v12[2] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214246FCC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v11 = *v5;
  v10 = v5[1];
  v14 = v5[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();

  sub_2146DAA28();
  v18 = v11;
  v19 = v10;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v12 = v16;
  sub_2146DA388();

  if (!v12)
  {
    LOBYTE(v18) = 1;
    sub_2146DA3E8();
  }

  return (*(v17 + 8))(v9, v7);
}

uint64_t sub_2142471B0@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = *a1;
  sub_21447B280(&v25);
  v11 = v25;
  v10 = v26;
  v12 = v27;
  v13 = v28;
  v36[0] = a4;
  v36[1] = a5;
  v18 = v29;
  v38 = v29;
  v25 = 0xD000000000000029;
  v26 = 0x8000000214792530;
  v27 = 0xD00000000000001CLL;
  v28 = 0x800000021478A360;

  sub_213FDC9D0(v12, v13);
  v14 = v11(v36, &v38, &v25);
  if (v19)
  {
  }

  else
  {
    if (v14)
    {
      sub_213FDC6D0(v12, v13);

      result = sub_213FDC6D0(v12, v13);
      *a8 = v20;
      *(a8 + 8) = a2;
      *(a8 + 16) = a3;
      *(a8 + 24) = v11;
      *(a8 + 32) = v10;
      *(a8 + 40) = a4;
      *(a8 + 48) = a5;
      *(a8 + 56) = v18;
      *(a8 + 64) = a6;
      *(a8 + 72) = a7;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000029;
    v16[1] = 0x8000000214792530;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v12, v13);
  LOBYTE(v25) = v20;
  v26 = a2;
  v27 = a3;
  v28 = v11;
  v29 = v10;
  v30 = v12;
  v31 = v13;
  v32 = v18;
  *v33 = *v37;
  *&v33[3] = *&v37[3];
  v34 = a6;
  v35 = a7;
  return sub_214311C94(&v25);
}

unint64_t sub_2142473BC()
{
  v1 = 0x54746E65746E6F63;
  v2 = 0x75426E6967756C70;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x7972616D6D7573;
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

uint64_t sub_214247450@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437DFEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214247478(uint64_t a1)
{
  v2 = sub_214311CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142474B4(uint64_t a1)
{
  v2 = sub_214311CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142474F0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD08, &qword_2146F6168);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311CE8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43) = 0;
  sub_214311D3C();
  sub_2146DA1C8();
  v65 = a2;
  v9 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v43) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v41 = v9;
  v11 = v48;
  v42 = v49;
  LOBYTE(v43) = 2;
  sub_2146DA1C8();
  v39 = v11;
  v12 = v49;
  v40 = v48;
  v60 = 3;
  sub_2146DA1C8();
  v35 = v61;
  v34 = v62;
  sub_21447B280(&v48);
  v13 = v49;
  v38 = v48;
  v14 = v50;
  v15 = v51;
  v59[0] = v40;
  v59[1] = v12;
  v36 = v12;
  v37 = v52;
  LOBYTE(v43) = v52;
  v48 = 0xD000000000000029;
  v49 = 0x8000000214792530;
  v50 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;

  v33 = v14;
  v32 = v15;
  sub_213FDC9D0(v14, v15);
  v31 = v13;
  v16 = v38(v59, &v43, &v48);
  if (v16)
  {
    v17 = v33;
    v18 = v32;
    sub_213FDC6D0(v33, v32);

    (*(v6 + 8))(v8, v5);
    v19 = v31;

    sub_213FDC6D0(v17, v18);
    LOBYTE(v18) = v41;
    LOBYTE(v43) = v41;
    v20 = v39;
    *(&v43 + 1) = v39;
    v21 = v42;
    *&v44 = v42;
    *(&v44 + 1) = v38;
    *&v45 = v19;
    *(&v45 + 1) = v40;
    *&v46 = v36;
    BYTE8(v46) = v37;
    v22 = v35;
    v23 = v34;
    *&v47 = v35;
    *(&v47 + 1) = v34;
    v24 = v46;
    v25 = v65;
    v65[2] = v45;
    v25[3] = v24;
    v25[4] = v47;
    v26 = v44;
    *v25 = v43;
    v25[1] = v26;
    sub_214311D90(&v43, &v48);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v48) = v18;
    v49 = v20;
    v50 = v21;
    v51 = v38;
    v52 = v19;
    v53 = v40;
    v54 = v36;
    v55 = v37;
    v57 = v22;
    v58 = v23;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD000000000000029;
    v27[1] = 0x8000000214792530;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);
    v28 = v31;

    v29 = v33;
    v30 = v32;
    sub_213FDC6D0(v33, v32);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v48) = v41;
    *(&v48 + 1) = *v64;
    HIDWORD(v48) = *&v64[3];
    v49 = v39;
    v50 = v42;
    v51 = v38;
    v52 = v28;
    v53 = v29;
    v54 = v30;
    v55 = v37;
    *v56 = *v63;
    *&v56[3] = *&v63[3];
    v57 = v35;
    v58 = v34;
  }

  return sub_214311C94(&v48);
}

uint64_t sub_214247B24(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD20, &qword_2146F6170);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v19 = *(v1 + 2);
  v20 = v9;
  v10 = *(v1 + 5);
  v17 = *(v1 + 6);
  v18 = v10;
  v11 = *(v1 + 9);
  v15 = *(v1 + 8);
  v16 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311CE8();
  sub_2146DAA28();
  LOBYTE(v21) = v8;
  v23 = 0;
  sub_214311DEC();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = v17;
  v12 = v18;
  v21 = v20;
  v22 = v19;
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v13 != 1)
  {
    v21 = v12;
    v22 = v13;
    v23 = 2;
    sub_2146DA388();
    v21 = v15;
    v22 = v16;
    v23 = 3;
    sub_2146DA388();
    return (*(v5 + 8))(v7, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t CPIMMessage.ToHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143CDC34(&v15);
  v6 = v15;
  v7 = v16;
  v8 = v19;
  v14[0] = a1;
  v14[1] = a2;
  v20 = v19;
  v15 = 0xD000000000000029;
  v16 = 0x8000000214792560;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;
  v9 = v6;

  v10 = v9(v14, &v20, &v15);
  if (v3)
  {
  }

  else
  {
    if (v10)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v7;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000029;
    v12[1] = 0x8000000214792560;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214247F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000214797200 == a2)
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

uint64_t sub_214248020(uint64_t a1)
{
  v2 = sub_214311E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424805C(uint64_t a1)
{
  v2 = sub_214311E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.ToHeader.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD30, &qword_2146F6178);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311E40();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v23 = a2;
  v12 = v11;
  v13 = v9;
  sub_2143CDC34(&v29);
  v15 = v29;
  v14 = v30;
  v24 = v13;
  v28[0] = v13;
  v28[1] = v12;
  v26 = v12;
  v27 = v32;
  v34 = v33;
  v35 = v33;
  v29 = 0xD000000000000029;
  v30 = 0x8000000214792560;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v25 = v14;
  v16 = v15(v28, &v35, &v29);
  v22 = v15;
  if (v16)
  {

    (*(v6 + 8))(v8, v5);

    v17 = v25;

    v18 = v23;
    *v23 = v22;
    v18[1] = v17;
    v19 = v26;
    v18[2] = v24;
    v18[3] = v19;
    *(v18 + 32) = v34;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v20 = 0xD000000000000029;
  v20[1] = 0x8000000214792560;
  v20[2] = 0xD00000000000001CLL;
  v20[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.FromHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143CDF98(&v15);
  v6 = v15;
  v7 = v16;
  v8 = v19;
  v14[0] = a1;
  v14[1] = a2;
  v20 = v19;
  v15 = 0xD000000000000026;
  v16 = 0x8000000214792590;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;
  v9 = v6;

  v10 = v9(v14, &v20, &v15);
  if (v3)
  {
  }

  else
  {
    if (v10)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v7;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000026;
    v12[1] = 0x8000000214792590;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2142485D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5255656372756F73 && a2 == 0xEF676E6972745349)
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

uint64_t sub_214248660(uint64_t a1)
{
  v2 = sub_214311E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424869C(uint64_t a1)
{
  v2 = sub_214311E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.FromHeader.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD48, &qword_2146F6188);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311E94();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v23 = a2;
  v12 = v11;
  v13 = v9;
  sub_2143CDF98(&v29);
  v15 = v29;
  v14 = v30;
  v24 = v13;
  v28[0] = v13;
  v28[1] = v12;
  v26 = v12;
  v27 = v32;
  v34 = v33;
  v35 = v33;
  v29 = 0xD000000000000026;
  v30 = 0x8000000214792590;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v25 = v14;
  v16 = v15(v28, &v35, &v29);
  v22 = v15;
  if (v16)
  {

    (*(v6 + 8))(v8, v5);

    v17 = v25;

    v18 = v23;
    *v23 = v22;
    v18[1] = v17;
    v19 = v26;
    v18[2] = v24;
    v18[3] = v19;
    *(v18 + 32) = v34;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v20 = 0xD000000000000026;
  v20[1] = 0x8000000214792590;
  v20[2] = 0xD00000000000001CLL;
  v20[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214248B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D695465746164 && a2 == 0xE800000000000000)
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

uint64_t sub_214248B94(uint64_t a1)
{
  v2 = sub_214311EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214248BD0(uint64_t a1)
{
  v2 = sub_214311EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.DateTimeHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = sub_2146D8B08();
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD60, &qword_2146F6198);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311EE8();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = v13;
    v10 = v14;
    sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_2146DA1C8();
    (*(v7 + 8))(v9, v6);
    (*(v11 + 32))(v10, v15, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.DateTimeHeader.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD70, &qword_2146F61A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311EE8();
  sub_2146DAA28();
  sub_2146D8B08();
  sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214248FCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD70, &qword_2146F61A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311EE8();
  sub_2146DAA28();
  sub_2146D8B08();
  sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CPIMMessage.NamespaceHeader.init(with:namespaceURI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(type metadata accessor for CPIMMessage.NamespaceHeader(0) + 20);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v23 = v8;
  (*(v9 + 16))(a4 + v7, a3);
  sub_2143CE308(&v26);
  v11 = v26;
  v10 = v27;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  *a4 = v26;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;
  v25[0] = a1;
  v31 = v14;
  v32 = v14;
  v25[1] = a2;
  v26 = 0xD000000000000026;
  v27 = 0x80000002147925C0;
  v28 = 0xD00000000000001CLL;
  v29 = 0x800000021478A360;

  sub_213FDC9D0(v12, v13);
  v15 = v11(v25, &v32, &v26);
  if (v24)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v12, v13);

      (*(v9 + 8))(a3, v23);
      v16 = *(a4 + 16);
      v17 = *(a4 + 24);

      result = sub_213FDC6D0(v16, v17);
      *a4 = v11;
      *(a4 + 8) = v10;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v31;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000026;
    v19[1] = 0x80000002147925C0;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();
  }

  (*(v9 + 8))(a3, v23);
  v20 = *(a4 + 16);
  v21 = *(a4 + 24);

  sub_213FDC6D0(v20, v21);
  *a4 = v11;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v31;
  return sub_21432887C(a4, type metadata accessor for CPIMMessage.NamespaceHeader);
}

uint64_t sub_2142493CC()
{
  if (*v0)
  {
    return 0x63617073656D616ELL;
  }

  else
  {
    return 0x66657250656D616ELL;
  }
}

uint64_t sub_214249414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xEC00000049525565)
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

uint64_t sub_2142494FC(uint64_t a1)
{
  v2 = sub_214311F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214249538(uint64_t a1)
{
  v2 = sub_214311F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.NamespaceHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_2146D8958();
  v55 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD78, &qword_2146F61A8);
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for CPIMMessage.NamespaceHeader(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214311F3C();
  v13 = v56;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v56 = v5;
  v14 = v54;
  v15 = v55;
  v51 = v11;
  v52 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v58[0]) = 0;
  sub_2142E12FC();
  v16 = v8;
  sub_2146DA1C8();
  v17 = v60;
  v50 = v59;
  LOBYTE(v59) = 1;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v18 = v56;
  v19 = v52;
  sub_2146DA1C8();
  v49 = v16;
  v46 = v6;
  v21 = v18;
  v22 = v51;
  (*(v15 + 16))(&v51[*(v9 + 20)], v21, v19);
  sub_2143CE308(&v59);
  v24 = v59;
  v23 = v60;
  v25 = v61;
  v26 = v62;
  v27 = v63;
  *v22 = v59;
  *(v22 + 1) = v23;
  *(v22 + 2) = v25;
  *(v22 + 3) = v26;
  v22[32] = v27;
  v28 = v50;
  v58[0] = v50;
  v58[1] = v17;
  v64 = v27;
  v65 = v27;
  v59 = 0xD000000000000026;
  v60 = 0x80000002147925C0;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  v47 = v26;
  v48 = v25;
  v29 = v26;
  v30 = v24;
  sub_213FDC9D0(v25, v29);
  v31 = v23;
  v32 = v30(v58, &v65, &v59);
  v45 = v17;
  v33 = v46;
  if (v32)
  {
    v34 = v28;
    sub_213FDC6D0(v48, v47);

    (*(v55 + 8))(v56, v52);
    (*(v14 + 8))(v49, v33);
    v35 = v51;
    v36 = *(v51 + 2);
    v37 = *(v51 + 3);

    sub_213FDC6D0(v36, v37);
    *v35 = v30;
    *(v35 + 8) = v31;
    v38 = v45;
    *(v35 + 16) = v34;
    *(v35 + 24) = v38;
    *(v35 + 32) = v64;
    sub_214328704(v35, v53, type metadata accessor for CPIMMessage.NamespaceHeader);
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  sub_214031C4C();
  swift_allocError();
  *v39 = 0xD000000000000026;
  v39[1] = 0x80000002147925C0;
  v39[2] = 0xD00000000000001CLL;
  v39[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v55 + 8))(v56, v52);
  (*(v14 + 8))(v49, v33);
  v40 = v51;
  v41 = *(v51 + 2);
  v42 = *(v51 + 3);

  sub_213FDC6D0(v41, v42);
  *v40 = v30;
  *(v40 + 8) = v31;
  v43 = v47;
  *(v40 + 16) = v48;
  *(v40 + 24) = v43;
  *(v40 + 32) = v64;
  __swift_destroy_boxed_opaque_existential_1(v57);
  return sub_21432887C(v40, type metadata accessor for CPIMMessage.NamespaceHeader);
}

uint64_t CPIMMessage.NamespaceHeader.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD88, &qword_2146F61B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311F3C();
  sub_2146DAA28();
  v9 = *(v3 + 24);
  if (v9 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v12 = *(v3 + 16);
    v13 = v9;
    v11[15] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (!v2)
    {
      type metadata accessor for CPIMMessage.NamespaceHeader(0);
      LOBYTE(v12) = 1;
      sub_2146D8958();
      sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
      sub_2146DA388();
    }

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t CPIMMessage.IMDNMessageIDHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  v16 = 0xD000000000000029;
  v17 = 0x80000002147925F0;
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
    *v13 = 0xD000000000000029;
    v13[1] = 0x80000002147925F0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214249F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
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

uint64_t sub_214249FDC(uint64_t a1)
{
  v2 = sub_214311F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424A018(uint64_t a1)
{
  v2 = sub_214311F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.IMDNMessageIDHeader.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD90, &qword_2146F61B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311F90();
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
  v31 = 0xD000000000000029;
  v32 = 0x80000002147925F0;
  v26 = 0x80000002147925F0;
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
  *v23 = 0xD000000000000029;
  v23[1] = v22;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424A44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65)
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

uint64_t sub_21424A4D8(uint64_t a1)
{
  v2 = sub_214311FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424A514(uint64_t a1)
{
  v2 = sub_214311FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.IMDNDispositionNotificationHeader.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ADA8, &qword_2146F61C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311FE4();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ADB8, &qword_2146F61D0);
    sub_214312038();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.IMDNDispositionNotificationHeader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ADD0, &qword_2146F61D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311FE4();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ADB8, &qword_2146F61D0);
  sub_214312110();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

uint64_t CPIMMessage.MlsDerivedContentSignatureHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = sub_213FDC8D0;
  *(v7 + 16) = sub_21438F678;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD000000000000044;
  v18 = 0x8000000214792620;
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
    *v14 = 0xD000000000000044;
    v14[1] = 0x8000000214792620;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21424AABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000214797220 == a2)
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

uint64_t sub_21424AB50(uint64_t a1)
{
  v2 = sub_2143121E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424AB8C(uint64_t a1)
{
  v2 = sub_2143121E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.MlsDerivedContentSignatureHeader.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ADE8, &qword_2146F61E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143121E8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v23 = a2;
  v26 = v9;
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = sub_213FDC8D0;
  *(v13 + 16) = sub_21438F678;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_214042B80(inited, &v29);
  v16 = v29;
  v15 = v30;
  v28[0] = v26;
  v28[1] = v27;
  v34 = v33;
  v35 = v33;
  v29 = 0xD000000000000044;
  v30 = 0x8000000214792620;
  v24 = 0x8000000214792620;
  v25 = v32;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v17 = v16(v28, &v35, &v29);
  v18 = v24;
  if (v17)
  {

    (*(v6 + 8))(v8, v5);

    v19 = v23;
    *v23 = v16;
    v19[1] = v15;
    v20 = v27;
    v19[2] = v26;
    v19[3] = v20;
    *(v19 + 32) = v34;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v21 = 0xD000000000000044;
  v21[1] = v18;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.MlsEpochAuthenticatorHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = sub_213FDC8D0;
  *(v7 + 16) = sub_21438F678;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000003ALL;
  v18 = 0x8000000214792670;
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
    *v14 = 0xD00000000000003ALL;
    v14[1] = 0x8000000214792670;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21424B210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000214797240 == a2)
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

uint64_t sub_21424B2A4(uint64_t a1)
{
  v2 = sub_21431223C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424B2E0(uint64_t a1)
{
  v2 = sub_21431223C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.MlsEpochAuthenticatorHeader.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE00, &qword_2146F61F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431223C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v23 = a2;
  v26 = v9;
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = sub_213FDC8D0;
  *(v13 + 16) = sub_21438F678;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_214042B80(inited, &v29);
  v16 = v29;
  v15 = v30;
  v28[0] = v26;
  v28[1] = v27;
  v34 = v33;
  v35 = v33;
  v29 = 0xD00000000000003ALL;
  v30 = 0x8000000214792670;
  v24 = 0x8000000214792670;
  v25 = v32;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v17 = v16(v28, &v35, &v29);
  v18 = v24;
  if (v17)
  {

    (*(v6 + 8))(v8, v5);

    v19 = v23;
    *v23 = v16;
    v19[1] = v15;
    v20 = v27;
    v19[2] = v26;
    v19[3] = v20;
    *(v19 + 32) = v34;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v21 = 0xD00000000000003ALL;
  v21[1] = v18;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.MlsOriginalMessageIdHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  v16 = 0xD000000000000038;
  v17 = 0x80000002147926B0;
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
    *v13 = 0xD000000000000038;
    v13[1] = 0x80000002147926B0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21424B934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000214797260 == a2)
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

uint64_t sub_21424B9C8(uint64_t a1)
{
  v2 = sub_2143122A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424BA04(uint64_t a1)
{
  v2 = sub_2143122A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.MlsOriginalMessageIdHeader.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE18, &qword_2146F6200);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143122A4();
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
  v31 = 0xD000000000000038;
  v32 = 0x80000002147926B0;
  v26 = 0x80000002147926B0;
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
  *v23 = 0xD000000000000038;
  v23[1] = v22;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.MlsEraIdHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146ED240;
  *(v6 + 16) = sub_21438F468;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  sub_21404328C(inited, &v14);
  v9 = v14;
  v8 = v15;
  v10 = BYTE1(v17);
  v19 = a1;
  v18 = BYTE1(v17);
  v14 = 0xD000000000000020;
  v15 = 0x80000002147926F0;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  v11 = v9(&v19, &v18, &v14);
  if (v2)
  {
  }

  else
  {
    if (v11)
    {

      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = a1;
      *(a2 + 24) = 0;
      *(a2 + 25) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000020;
    v13[1] = 0x80000002147926F0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21424C008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6449617265 && a2 == 0xE500000000000000)
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

uint64_t sub_21424C08C(uint64_t a1)
{
  v2 = sub_2143122F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424C0C8(uint64_t a1)
{
  v2 = sub_2143122F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.MlsEraIdHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t *, char *, unint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE30, &qword_2146F6210);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143122F8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA1A8();
  v24 = a2;
  v25 = v9;
  v11 = v9;
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
  sub_21404328C(inited, &v28);
  v16 = v28;
  v15 = v29;
  v33 = v11;
  v26 = BYTE1(v31);
  v32 = BYTE1(v31);
  v27 = 0x80000002147926F0;
  v28 = 0xD000000000000020;
  v29 = 0x80000002147926F0;
  v30 = 0xD00000000000001CLL;
  v31 = 0x800000021478A360;

  v17 = v16(&v33, &v32, &v28);
  v23 = v16;
  v18 = v27;
  v19 = v26;
  if (v17)
  {

    (*(v6 + 8))(v8, v5);

    v20 = v24;
    *v24 = v23;
    v20[1] = v15;
    v20[2] = v25;
    *(v20 + 24) = 0;
    *(v20 + 25) = v19;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v21 = 0xD000000000000020;
  v21[1] = v18;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();
  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424C520()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x54746E65746E6F63;
  }
}

uint64_t sub_21424C564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
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

uint64_t sub_21424C644(uint64_t a1)
{
  v2 = sub_21431234C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424C680(uint64_t a1)
{
  v2 = sub_21431234C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.EncapsulatedMessage.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE48, &qword_2146F6220);
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431234C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v19 = 0;
    sub_2143123A0();
    v11 = v16;
    sub_2146DA1C8();
    v17 = v20;
    v18 = 1;
    sub_214328930(&qword_27C90AE60, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content, protocol conformance descriptor for CPIMMessage.EncapsulatedMessage.Content);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v11);
    v12 = type metadata accessor for CPIMMessage.EncapsulatedMessage(0);
    v13 = v15;
    sub_214328704(v6, &v15[*(v12 + 20)], type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    *v13 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.EncapsulatedMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE68, &qword_2146F6228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431234C();
  sub_2146DAA28();
  v10[15] = *v3;
  v10[14] = 0;
  sub_2143123F4();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for CPIMMessage.EncapsulatedMessage(0);
    v10[13] = 1;
    type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
    sub_214328930(&qword_27C90AE78, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content, protocol conformance descriptor for CPIMMessage.EncapsulatedMessage.Content);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21424CB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146ED240;
  *(v6 + 16) = sub_21438F468;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  sub_21404328C(inited, &v14);
  v9 = v14;
  v8 = v15;
  v10 = BYTE1(v17);
  v19 = a1;
  v18 = BYTE1(v17);
  v14 = 0xD000000000000028;
  v15 = 0x8000000214792720;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  v11 = v9(&v19, &v18, &v14);
  if (v2)
  {
  }

  else
  {
    if (v11)
    {

      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = a1;
      *(a2 + 24) = 0;
      *(a2 + 25) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000028;
    v13[1] = 0x8000000214792720;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21424CD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F43)
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

uint64_t sub_21424CDCC(uint64_t a1)
{
  v2 = sub_214312448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424CE08(uint64_t a1)
{
  v2 = sub_214312448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424CE44@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t *, char *, unint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE80, &qword_2146F6230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312448();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA1A8();
  v24 = a2;
  v25 = v9;
  v11 = v9;
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
  sub_21404328C(inited, &v28);
  v16 = v28;
  v15 = v29;
  v33 = v11;
  v26 = BYTE1(v31);
  v32 = BYTE1(v31);
  v27 = 0x8000000214792720;
  v28 = 0xD000000000000028;
  v29 = 0x8000000214792720;
  v30 = 0xD00000000000001CLL;
  v31 = 0x800000021478A360;

  v17 = v16(&v33, &v32, &v28);
  v23 = v16;
  v18 = v27;
  v19 = v26;
  if (v17)
  {

    (*(v6 + 8))(v8, v5);

    v20 = v24;
    *v24 = v23;
    v20[1] = v15;
    v20[2] = v25;
    *(v20 + 24) = 0;
    *(v20 + 25) = v19;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v21 = 0xD000000000000028;
  v21[1] = v18;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();
  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424D1F0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v13 = *(v5 + 16);
  v11 = *(v5 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_2146DAA28();
  if (v11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_2146DA368();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_21424D3D0(uint64_t a1)
{
  v2 = sub_21431249C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424D40C(uint64_t a1)
{
  v2 = sub_21431249C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424D448@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE98, &qword_2146F6240);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431249C();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2143124F0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424D5B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AEB0, &qword_2146F6248);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431249C();
  sub_2146DAA28();
  v10 = v7;
  sub_214312544();
  sub_2146DA388();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21424D730(uint64_t a1)
{
  v2 = sub_214312598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424D76C(uint64_t a1)
{
  v2 = sub_214312598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424D7A8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AEC0, &qword_2146F6250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312598();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2143125EC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424D914(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AED8, &qword_2146F6258);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312598();
  sub_2146DAA28();
  v10 = v7;
  sub_214312640();
  sub_2146DA388();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21424DA90(uint64_t a1)
{
  v2 = sub_214312694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424DACC(uint64_t a1)
{
  v2 = sub_214312694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424DB08@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AEE8, &qword_2146F6260);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312694();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2143126E8();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424DC74(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AF00, &qword_2146F6268);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312694();
  sub_2146DAA28();
  v10 = v7;
  sub_21431273C();
  sub_2146DA388();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21424DDF0(uint64_t a1)
{
  v2 = sub_214312790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424DE2C(uint64_t a1)
{
  v2 = sub_214312790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424DE68@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AF10, &qword_2146F6270);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312790();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2143127E4();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424DFD4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AF28, &qword_2146F6278);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312790();
  sub_2146DAA28();
  v10 = v7;
  sub_214312838();
  sub_2146DA388();
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_21424E150@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

uint64_t sub_21424E184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

uint64_t sub_21424E20C(uint64_t a1)
{
  v2 = sub_21431288C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424E248(uint64_t a1)
{
  v2 = sub_21431288C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424E284@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AF38, &qword_2146F6280);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431288C();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2143128E0();
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

uint64_t sub_21424E404(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AF50, &qword_2146F6288);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = v1[1];
  v14 = *v1;
  v15 = v7;
  v16[0] = v1[2];
  *(v16 + 10) = *(v1 + 42);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312934(&v14, &v11);
  sub_21431288C();
  sub_2146DAA28();
  v11 = v14;
  v12 = v15;
  v13[0] = v16[0];
  *(v13 + 10) = *(v16 + 10);
  sub_214312990();
  sub_2146DA388();
  v9[0] = v11;
  v9[1] = v12;
  v10[0] = v13[0];
  *(v10 + 10) = *(v13 + 10);
  sub_2143129E4(v9);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21424E5EC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_2144417C0(&v31);
  v8 = v31;
  v7 = v32;
  v9 = *&v33;
  v10 = v34;
  v41 = *(&v34 + 2);
  v42 = HIWORD(v34);
  v27 = v36;
  v23 = v37;
  v24 = v35;
  v11 = v38;
  v25 = v39;
  v43 = v34;
  v40 = v38;
  v30 = v34 & 1;
  v29 = a2;
  v26 = BYTE1(v34);
  v28 = BYTE1(v34);
  v31 = 0xD000000000000026;
  v32 = 0x8000000214792750;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v12 = v8(&v29, &v28, &v31);
  if (v3)
  {

LABEL_6:
    v15 = v24;

    v43 = v10 & 1;
    v13 = v25;
    v14 = v27;
LABEL_7:
    v31 = v8;
    v32 = v7;
    v33 = *&v9;
    LOBYTE(v34) = v43;
    BYTE1(v34) = v26;
    *(&v34 + 2) = v41;
    HIWORD(v34) = v42;
    v35 = v15;
    v36 = v14;
    v37 = v23;
    v38 = v40;
    v39 = v13;
    return sub_214312A38(&v31);
  }

  v22 = a1;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD000000000000026;
    v17[1] = 0x8000000214792750;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();
    v10 = v30;
    goto LABEL_6;
  }

  v43 = 0;
  v30 = v11 & 1;
  v29 = a3;
  v13 = v25;
  v28 = v25;
  v31 = 0xD000000000000027;
  v32 = 0x8000000214792780;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;
  v14 = v27;

  v15 = v24;
  v16 = v24(&v29, &v28, &v31);
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000027;
    v20[1] = 0x8000000214792780;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    v21 = v30;

    v40 = v21 & 1;
    v9 = a2;
    goto LABEL_7;
  }

  v40 = 0;
  v19 = v43;
  *v22 = v8;
  *(v22 + 8) = v7;
  *(v22 + 16) = a2;
  *(v22 + 24) = v19;
  *(v22 + 25) = v26;
  *(v22 + 26) = v41;
  *(v22 + 30) = v42;
  *(v22 + 32) = v24;
  *(v22 + 40) = v27;
  *(v22 + 48) = a3;
  *(v22 + 56) = 0;
  *(v22 + 57) = v25;
  return result;
}

uint64_t sub_21424E928(uint64_t a1)
{
  v2 = sub_214312A8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424E964(uint64_t a1)
{
  v2 = sub_214312A8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424E9A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AF60, &qword_2146F6290);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312A8C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v54) = 0;
  sub_2146DA188();
  v10 = v9;
  v63 = 1;
  sub_2146DA188();
  v13 = v12;
  sub_2144417C0(&v54);
  v14 = v55;
  v48 = v54;
  v15 = v56;
  v65 = *(&v57 + 2);
  v66 = HIWORD(v57);
  v45 = v58;
  v47 = v59;
  v42 = v60;
  v44 = v62;
  v67 = v57;
  v40 = v61;
  v64 = v61;
  LODWORD(v41) = v57;
  LOBYTE(v52) = v57 & 1;
  *&v49 = v10;
  v43 = BYTE1(v57);
  v53[0] = BYTE1(v57);
  v54 = 0xD000000000000026;
  v55 = 0x8000000214792750;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;

  v46 = v14;
  v16 = v48(&v49, v53, &v54);
  v39 = 0x800000021478A360;
  if (v16)
  {
    v17 = v39;
    v41 = 0;

    v67 = 0;
    v53[0] = v40 & 1;
    v52 = v13;
    v18 = v44;
    LOBYTE(v49) = v44;
    v54 = 0xD000000000000027;
    v55 = 0x8000000214792780;
    v56 = 0xD00000000000001CLL;
    v57 = v17;

    v19 = v41;
    v20 = v45;
    v21 = v45(&v52, &v49, &v54);
    v22 = v20;
    if (v19)
    {
      (*(v6 + 8))(v8, v5);

      v23 = v40;
    }

    else
    {
      if (v21)
      {

        (*(v6 + 8))(v8, v5);
        v28 = v47;

        v64 = 0;
        v29 = v48;
        *&v49 = v48;
        v30 = v46;
        *(&v49 + 1) = v46;
        *&v50 = v10;
        v31 = v67;
        BYTE8(v50) = v67;
        v32 = v43;
        BYTE9(v50) = v43;
        *(&v50 + 10) = v65;
        HIWORD(v50) = v66;
        *v51 = v20;
        *&v51[8] = v28;
        *&v51[16] = v13;
        v51[24] = 0;
        v51[25] = v18;
        v33 = v49;
        v34 = v50;
        v35 = *v51;
        *(a2 + 42) = *&v51[10];
        a2[1] = v34;
        a2[2] = v35;
        *a2 = v33;
        sub_214312AE0(&v49, &v54);
        __swift_destroy_boxed_opaque_existential_1(a1);
        v54 = v29;
        v55 = v30;
        v56 = v10;
        LOBYTE(v57) = v31;
        BYTE1(v57) = v32;
        *(&v57 + 2) = v65;
        HIWORD(v57) = v66;
        v58 = v45;
        v59 = v28;
        v60 = v13;
        v61 = 0;
        goto LABEL_9;
      }

      sub_214031C4C();
      swift_allocError();
      *v36 = 0xD000000000000027;
      v36[1] = 0x8000000214792780;
      v37 = v39;
      v36[2] = 0xD00000000000001CLL;
      v36[3] = v37;
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
      v23 = v53[0];
    }

    v64 = v23 & 1;
    v15 = v10;
    v27 = v46;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000026;
    v24[1] = 0x8000000214792750;
    v25 = v39;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    v26 = v52;
    v22 = v45;
    v27 = v46;

    v67 = v26 & 1;
    v18 = v44;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v54 = v48;
  v55 = v27;
  v56 = v15;
  LOBYTE(v57) = v67;
  BYTE1(v57) = v43;
  *(&v57 + 2) = v65;
  HIWORD(v57) = v66;
  v58 = v22;
  v59 = v47;
  v60 = v42;
  v61 = v64;
LABEL_9:
  v62 = v18;
  return sub_214312A38(&v54);
}

uint64_t sub_21424F084(uint64_t a1)
{
  v2 = sub_214312B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424F0C0(uint64_t a1)
{
  v2 = sub_214312B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_21424F1B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

uint64_t sub_21424F1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
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

uint64_t sub_21424F258(uint64_t a1)
{
  v2 = sub_214312C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424F294(uint64_t a1)
{
  v2 = sub_214312C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424F314@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _OWORD *a6@<X8>)
{
  v16 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v12 = v16;
    sub_214312B90();
    sub_2146DA1C8();
    (*(v20 + 8))(v11, v9);
    v13 = v18;
    *v12 = v17;
    v12[1] = v13;
    v12[2] = v19[0];
    *(v12 + 42) = *(v19 + 10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424F4E0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  v12 = v5[1];
  v20 = *v5;
  v21 = v12;
  v22[0] = v5[2];
  *(v22 + 10) = *(v5 + 42);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_214312AE0(&v20, &v17);
  a4(v13);
  sub_2146DAA28();
  v17 = v20;
  v18 = v21;
  v19[0] = v22[0];
  *(v19 + 10) = *(v22 + 10);
  sub_214312BE4();
  sub_2146DA388();
  v15[0] = v17;
  v15[1] = v18;
  v16[0] = v19[0];
  *(v16 + 10) = *(v19 + 10);
  sub_214312A38(v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21424F6CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for SIPConferenceInfo.SubjectExt(0) + 20);
  v9 = sub_2146D8B08();
  v10 = *(v9 - 8);
  v21 = v9;
  v22 = a3;
  (*(v10 + 16))(a4 + v8, a3);
  sub_2145BB518(&v24);
  v12 = v24;
  v11 = v25;
  v13 = v26;
  v14 = v27;
  v15 = v28;
  *a4 = v24;
  *(a4 + 8) = v11;
  v19 = v13;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;
  v23[0] = a1;
  v23[1] = a2;
  v29 = v15;
  v30 = v15;
  v24 = 0xD000000000000031;
  v25 = 0x80000002147927B0;
  v26 = 0xD00000000000001CLL;
  v27 = 0x800000021478A360;

  v16 = v12(v23, &v30, &v24);
  if (v20)
  {
  }

  else
  {
    if (v16)
    {

      (*(v10 + 8))(v22, v21);

      *a4 = v12;
      *(a4 + 8) = v11;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v29;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000031;
    v18[1] = 0x80000002147927B0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();
  }

  (*(v10 + 8))(v22, v21);

  *a4 = v12;
  *(a4 + 8) = v11;
  *(a4 + 16) = v19;
  *(a4 + 24) = v14;
  *(a4 + 32) = v29;
  return sub_21432887C(a4, type metadata accessor for SIPConferenceInfo.SubjectExt);
}

uint64_t sub_21424F938()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_21424F97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000214797280 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_21424FA6C(uint64_t a1)
{
  v2 = sub_214312C8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424FAA8(uint64_t a1)
{
  v2 = sub_214312C8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424FAE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_2146D8B08();
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AFB8, &qword_2146F62C0);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for SIPConferenceInfo.SubjectExt(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214312C8C();
  v13 = v41;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v14 = v9;
  v15 = v40;
  v41 = v3;
  LOBYTE(v44) = 0;
  v36 = sub_2146DA168();
  v37 = v16;
  LOBYTE(v44) = 1;
  sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v17 = v41;
  sub_2146DA1C8();
  v35 = v8;
  v19 = v17;
  v20 = v11;
  (*(v39 + 16))(&v11[*(v14 + 20)], v5, v19);
  sub_2145BB518(&v44);
  v22 = v44;
  v21 = v45;
  v24 = v46;
  v23 = v47;
  v25 = v48;
  *v11 = v44;
  *(v11 + 1) = v21;
  v31 = v24;
  *(v11 + 2) = v24;
  *(v11 + 3) = v23;
  v11[32] = v25;
  v43[0] = v36;
  v43[1] = v37;
  v49 = v25;
  v50 = v25;
  v44 = 0xD000000000000031;
  v45 = 0x80000002147927B0;
  v32 = 0x80000002147927B0;
  v33 = v23;
  v46 = 0xD00000000000001CLL;
  v47 = 0x800000021478A360;

  v34 = v22;
  v26 = v22(v43, &v50, &v44);
  v27 = v32;
  if (v26)
  {

    (*(v39 + 8))(v5, v41);
    (*(v15 + 8))(v35, v6);

    *v20 = v34;
    *(v20 + 8) = v21;
    v28 = v37;
    *(v20 + 16) = v36;
    *(v20 + 24) = v28;
    *(v20 + 32) = v49;
    sub_214328704(v20, v38, type metadata accessor for SIPConferenceInfo.SubjectExt);
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  sub_214031C4C();
  swift_allocError();
  *v29 = 0xD000000000000031;
  v29[1] = v27;
  v29[2] = 0xD00000000000001CLL;
  v29[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v39 + 8))(v5, v41);
  (*(v15 + 8))(v35, v6);

  *v20 = v34;
  *(v20 + 8) = v21;
  v30 = v33;
  *(v20 + 16) = v31;
  *(v20 + 24) = v30;
  *(v20 + 32) = v49;
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_21432887C(v20, type metadata accessor for SIPConferenceInfo.SubjectExt);
}

uint64_t sub_21424FFFC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AFC8, &qword_2146F62C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312C8C();
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

      type metadata accessor for SIPConferenceInfo.SubjectExt(0);
      v10[14] = 1;
      sub_2146D8B08();
      sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
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

uint64_t sub_21425026C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for SIPConferenceInfo.Description(0);
  return sub_21408AC04(a3, a4 + *(v6 + 20), &qword_27C90AFD0, &qword_2146F62D0);
}

uint64_t sub_2142502CC()
{
  if (*v0)
  {
    return 0x457463656A627573;
  }

  else
  {
    return 0x7463656A627573;
  }
}

uint64_t sub_21425030C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x457463656A627573 && a2 == 0xEA00000000007478)
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

uint64_t sub_2142503F0(uint64_t a1)
{
  v2 = sub_214312CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21425042C(uint64_t a1)
{
  v2 = sub_214312CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214250468@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AFD0, &qword_2146F62D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AFD8, &qword_2146F62D8);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312CE0();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v22 = 0;
    sub_2142E12FC();
    v11 = v19;
    sub_2146DA1C8();
    v16 = v20;
    v17 = v21;
    LOBYTE(v20) = 1;
    sub_214312D34();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v11);
    v12 = type metadata accessor for SIPConferenceInfo.Description(0);
    v13 = v18;
    sub_21408AC04(v6, v18 + *(v12 + 20), &qword_27C90AFD0, &qword_2146F62D0);
    v14 = v17;
    *v13 = v16;
    v13[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142506E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AFF8, &qword_2146F62E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312CE0();
  sub_2146DAA28();
  v11 = *v3;
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for SIPConferenceInfo.Description(0);
    LOBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AFD0, &qword_2146F62D0);
    sub_214312DE8();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142508D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2145BB978(&v17);
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000002ALL;
  v18 = 0x80000002147927F0;
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
    *v13 = 0xD00000000000002ALL;
    v13[1] = 0x80000002147927F0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v7, v8);
  }

  return sub_213FDC6D0(v7, v8);
}

uint64_t sub_214250AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7274534952557962 && a2 == 0xEB00000000676E69)
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

uint64_t sub_214250B70(uint64_t a1)
{
  v2 = sub_214312E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214250BAC(uint64_t a1)
{
  v2 = sub_214312E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214250BE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B010, &qword_2146F62E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312E9C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_2142E12FC();
  sub_2146DA1C8();
  v26 = a2;
  v10 = v34;
  v11 = v35;
  sub_2145BB978(&v34);
  v12 = v35;
  v31 = v34;
  v13 = v36;
  v14 = v37;
  v27 = v10;
  v33[0] = v10;
  v33[1] = v11;
  v29 = v11;
  v39 = v38;
  v40 = v38;
  v34 = 0xD00000000000002ALL;
  v35 = 0x80000002147927F0;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v32 = v13;
  v30 = v14;
  v15 = v14;
  v16 = v31;
  sub_213FDC9D0(v13, v15);
  v28 = v12;
  v17 = v16(v33, &v40, &v34);
  v18 = v39;
  if (v17)
  {
    v19 = v30;
    sub_213FDC6D0(v32, v30);

    (*(v6 + 8))(v8, v5);
    v20 = v28;

    sub_213FDC6D0(v32, v19);
    v21 = v26;
    *v26 = v31;
    v21[1] = v20;
    v22 = v29;
    v21[2] = v27;
    v21[3] = v22;
    *(v21 + 32) = v18;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD00000000000002ALL;
  v23[1] = 0x80000002147927F0;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  v24 = v32;
  v25 = v30;
  sub_213FDC6D0(v32, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FDC6D0(v24, v25);
}

uint64_t sub_214250FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v19 = *a3;
  v20 = *a4;
  v21 = a4[2];
  v22 = a4[1];
  v23 = a4[3];
  v24 = *(a4 + 32);
  v25 = *a5;
  v40 = *a6;
  sub_2145BBE74(&v26);
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = v29;
  v39[0] = a1;
  v39[1] = a2;
  v18 = v30;
  v41 = v30;
  v26 = 0xD00000000000002ALL;
  v27 = 0x8000000214792820;
  v28 = 0xD00000000000001CLL;
  v29 = 0x800000021478A360;

  sub_213FDC9D0(v12, v13);
  v14 = v10(v39, &v41, &v26);
  if (v17)
  {
  }

  else
  {
    if (v14)
    {
      sub_213FDC6D0(v12, v13);

      result = sub_213FDC6D0(v12, v13);
      *a7 = v10;
      *(a7 + 8) = v11;
      *(a7 + 16) = a1;
      *(a7 + 24) = a2;
      *(a7 + 32) = v18;
      *(a7 + 33) = v19;
      *(a7 + 40) = v20;
      *(a7 + 48) = v22;
      *(a7 + 56) = v21;
      *(a7 + 64) = v23;
      *(a7 + 72) = v24;
      *(a7 + 73) = v25;
      *(a7 + 74) = v40;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD00000000000002ALL;
    v16[1] = 0x8000000214792820;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v12, v13);
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v22;
  v34 = v21;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v40;
  return sub_214312EF0(&v26);
}

uint64_t sub_2142511F4()
{
  v1 = *v0;
  v2 = 0x5255797469746E65;
  v3 = 0x6465727265666572;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6574617473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
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

uint64_t sub_214251298@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437E164(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142512C0(uint64_t a1)
{
  v2 = sub_214312F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142512FC(uint64_t a1)
{
  v2 = sub_214312F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214251338@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B028, &qword_2146F62F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312F44();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v49) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v10 = v53;
  v9 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B038, &qword_2146F6300);
  LOBYTE(v49) = 1;
  sub_214312F98();
  sub_2146DA1C8();
  v48 = v10;
  LODWORD(v10) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B050, &qword_2146F6308);
  LOBYTE(v49) = 2;
  sub_214313070();
  sub_2146DA1C8();
  v43 = v10;
  v47 = v53;
  v44 = v54;
  v12 = v56;
  v45 = v55;
  v46 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B068, &qword_2146F6310);
  LOBYTE(v49) = 3;
  sub_214313148();
  sub_2146DA1C8();
  v42 = v12;
  LODWORD(v12) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909110, &qword_2146F55A8);
  v69 = 4;
  sub_2143037CC();
  sub_2146DA1C8();
  v37 = v12;
  v36 = v70;
  sub_21431326C(v47, v44, v45, v42);
  sub_2145BBE74(&v53);
  v13 = v54;
  v41 = v53;
  v14 = v55;
  v15 = v56;
  v68[0] = v48;
  v68[1] = v9;
  v40 = v57;
  LOBYTE(v49) = v57;
  v53 = 0xD00000000000002ALL;
  v54 = 0x8000000214792820;
  v34 = 0x8000000214792820;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;
  v33 = 0x800000021478A360;

  v39 = v14;
  v38 = v15;
  sub_213FDC9D0(v14, v15);
  v35 = v13;
  v16 = v41(v68, &v49, &v53);
  v17 = v33;
  v18 = v34;
  if (v16)
  {
    sub_213FDC6D0(v39, v38);

    v19 = v44;
    v20 = v45;
    sub_214313220(v47, v44, v45, v42);
    (*(v6 + 8))(v8, v5);
    v21 = v35;

    sub_213FDC6D0(v39, v38);
    *&v49 = v41;
    v22 = v48;
    *(&v49 + 1) = v21;
    *&v50 = v48;
    *(&v50 + 1) = v9;
    LOBYTE(v51) = v40;
    BYTE1(v51) = v43;
    *(&v51 + 1) = v47;
    *v52 = v19;
    v23 = v42;
    *&v52[8] = v20;
    *&v52[16] = v42;
    v52[24] = v46;
    LOBYTE(v19) = v37;
    v52[25] = v37;
    LOBYTE(v20) = v36;
    v52[26] = v36;
    v24 = *v52;
    a2[2] = v51;
    a2[3] = v24;
    *(a2 + 59) = *&v52[11];
    v25 = v50;
    *a2 = v49;
    a2[1] = v25;
    sub_2143132B8(&v49, &v53);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v53 = v41;
    v54 = v21;
    v55 = v22;
    v56 = v9;
    v57 = v40;
    v58 = v43;
    v61 = v47;
    v62 = v44;
    v63 = v45;
    v64 = v23;
    v65 = v46;
    v66 = v19;
    v67 = v20;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000002ALL;
    v26[1] = v18;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v17;
    swift_willThrow();

    v27 = v44;
    v28 = v45;
    v29 = v46;
    sub_214313220(v47, v44, v45, v42);
    (*(v6 + 8))(v8, v5);
    v30 = v35;

    v31 = v39;
    v32 = v38;
    sub_213FDC6D0(v39, v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v53 = v41;
    v54 = v30;
    v55 = v31;
    v56 = v32;
    v57 = v40;
    v58 = v43;
    v59 = v71;
    v60 = v72;
    v61 = v47;
    v62 = v27;
    v63 = v28;
    v64 = v42;
    v65 = v29;
    v66 = v37;
    v67 = v36;
  }

  return sub_214312EF0(&v53);
}

uint64_t sub_214251B1C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B080, &qword_2146F6318);
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v25 = *(v1 + 33);
  v9 = *(v1 + 40);
  v17 = *(v1 + 48);
  v18 = v9;
  v10 = *(v1 + 56);
  v15 = *(v1 + 64);
  v16 = v10;
  LODWORD(v10) = *(v1 + 72);
  v13 = *(v1 + 73);
  v14 = v10;
  HIDWORD(v12) = *(v1 + 74);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312F44();
  sub_2146DAA28();
  if (v7 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v20 = v8;
    v21 = v7;
    v26 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v20) = v25;
      v26 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B038, &qword_2146F6300);
      sub_214313314();
      sub_2146DA388();
      v20 = v18;
      v21 = v17;
      v22 = v16;
      v23 = v15;
      v24 = v14;
      v26 = 2;
      sub_21431326C(v18, v17, v16, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B050, &qword_2146F6308);
      sub_2143133EC();
      sub_2146DA388();
      sub_214313220(v20, v21, v22, v23);
      LOBYTE(v20) = v13;
      v26 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B068, &qword_2146F6310);
      sub_2143134C4();
      sub_2146DA388();
      LOBYTE(v20) = BYTE4(v12);
      v26 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909110, &qword_2146F55A8);
      sub_214303A30();
      sub_2146DA388();
    }

    return (*(v19 + 8))(v6, v4);
  }

  return result;
}

_BYTE *sub_214251EA8@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_214251EB8()
{
  if (*v0)
  {
    return 0x73746E656D656C65;
  }

  else
  {
    return 0x6574617473;
  }
}

uint64_t sub_214251EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
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

uint64_t sub_214251FC8(uint64_t a1)
{
  v2 = sub_21431359C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214252004(uint64_t a1)
{
  v2 = sub_21431359C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214252040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B0B8, &qword_2146F6320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431359C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909110, &qword_2146F55A8);
    v14 = 0;
    sub_2143037CC();
    sub_2146DA1C8();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B0C8, &qword_2146F6328);
    v13 = 1;
    sub_2143135F0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214252240(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B0E0, &qword_2146F6330);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431359C();
  sub_2146DAA28();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909110, &qword_2146F55A8);
  sub_214303A30();
  sub_2146DA388();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B0C8, &qword_2146F6328);
    sub_2143136C8();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_214252438@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_214252448()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x746E696F70646E65;
  }
}

uint64_t sub_214252484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E696F70646E65 && a2 == 0xE900000000000073;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_214252564(uint64_t a1)
{
  v2 = sub_2143137A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142525A0(uint64_t a1)
{
  v2 = sub_2143137A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142525DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B0F8, &qword_2146F6338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143137A0();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B108, &qword_2146F6340);
    v12[15] = 0;
    sub_2143137F4();
    sub_2146DA1C8();
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909110, &qword_2146F55A8);
    v12[13] = 1;
    sub_2143037CC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v12[14];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142527E8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B120, &qword_2146F6348);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143137A0();

  sub_2146DAA28();
  v15 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B108, &qword_2146F6340);
  sub_2143138CC();
  sub_2146DA388();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909110, &qword_2146F55A8);
    sub_214303A30();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142529F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2146216E4(&v19);
  v8 = v19;
  v9 = v20;
  v10 = v23;
  v18[0] = a3;
  v18[1] = a4;
  v24 = v23;
  v19 = 0xD000000000000020;
  v20 = 0x8000000214792850;
  v21 = 0xD00000000000001CLL;
  v22 = 0x800000021478A360;
  v11 = v8;

  v12 = v11(v18, &v24, &v19);
  if (v5)
  {
  }

  else
  {
    if (v12)
    {

      *a5 = a1;
      *(a5 + 8) = a2;
      *(a5 + 16) = v11;
      *(a5 + 24) = v9;
      *(a5 + 32) = a3;
      *(a5 + 40) = a4;
      *(a5 + 48) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000020;
    v14[1] = 0x8000000214792850;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214252B94()
{
  if (*v0)
  {
    return 0x6E69727453697275;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_214252BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69727453697275 && a2 == 0xE900000000000067)
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

uint64_t sub_214252CC4(uint64_t a1)
{
  v2 = sub_2143139A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214252D00(uint64_t a1)
{
  v2 = sub_2143139A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214252D3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B138, &qword_2146F6350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143139A4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v35[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v9 = v36;
  v10 = v37;
  LOBYTE(v36) = 1;
  v11 = sub_2146DA168();
  v29 = v9;
  v34 = v10;
  v14 = v13;
  v15 = v11;
  sub_2146216E4(&v36);
  v17 = v36;
  v16 = v37;
  v28 = v15;
  v35[0] = v15;
  v35[1] = v14;
  v32 = v39;
  v33 = v14;
  v41 = v40;
  v42 = v40;
  v36 = 0xD000000000000020;
  v37 = 0x8000000214792850;
  v38 = 0xD00000000000001CLL;
  v39 = 0x800000021478A360;
  v30 = 0x800000021478A360;

  v31 = v16;
  v18 = v17(v35, &v42, &v36);
  v19 = v17;
  v20 = v30;
  v27 = v19;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    v21 = v31;

    v23 = v33;
    v22 = v34;
    *a2 = v29;
    *(a2 + 8) = v22;
    v24 = v28;
    *(a2 + 16) = v27;
    *(a2 + 24) = v21;
    *(a2 + 32) = v24;
    *(a2 + 40) = v23;
    *(a2 + 48) = v41;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000020;
    v25[1] = 0x8000000214792850;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = v20;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214253114(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B148, &qword_2146F6358);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[5];
  v12[1] = v1[4];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143139A4();
  sub_2146DAA28();
  v15 = v8;
  v16 = v7;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v10 = v14;
  sub_2146DA388();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  if (v13)
  {
    LOBYTE(v15) = 1;

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

uint64_t sub_21425335C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_214253368()
{
  if (*v0)
  {
    return 0x73746E656D656C65;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_2142533AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
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

uint64_t sub_21425348C(uint64_t a1)
{
  v2 = sub_2143139F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142534C8(uint64_t a1)
{
  v2 = sub_2143139F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214253504@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B150, &qword_2146F6360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143139F8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v14 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v10 = v13[0];
    v9 = v13[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B160, &qword_2146F6368);
    v14 = 1;
    sub_214313A4C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v11 = v13[0];
    *a2 = v10;
    a2[1] = v9;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214253710(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B178, &qword_2146F6370);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v11[0] = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143139F8();

  sub_2146DAA28();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v9 = v11[1];
  sub_2146DA388();

  if (!v9)
  {
    v12 = v11[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B160, &qword_2146F6368);
    sub_214313B24();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_21425391C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 32;
  *(v7 + 16) = sub_21438F460;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v14);
  v9 = v15;

  sub_213FDCA18(v9.n128_i64[0], v9.n128_u64[1]);
  sub_214032024(a1, a2, 2, 0xD000000000000044, 0x8000000214792880, 0xD00000000000001CLL, 0x800000021478A360);

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

uint64_t sub_214253B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000002147972C0 == a2)
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

uint64_t sub_214253B94(uint64_t a1)
{
  v2 = sub_214313BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214253BD0(uint64_t a1)
{
  v2 = sub_214313BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214253C0C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B190, &qword_2146F6378);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214313BFC();
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
    *(v12 + 16) = 32;
    *(v11 + 16) = sub_21438F460;
    *(v11 + 24) = v12;
    *(inited + 32) = v11;
    sub_214042CD0(inited, &v26);
    v13 = v27;
    v23 = *(&v27 + 1);
    v24 = v27;
    v21 = ".Entry.uriString";
    v22 = *(&v26 + 1);

    sub_213FDCA18(v13, *(&v13 + 1));
    v14 = v29;
    v15 = v25;
    sub_214032024(v29, v25, 2, 0xD000000000000044, 0x8000000214792880, 0xD00000000000001CLL, 0x800000021478A360);

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