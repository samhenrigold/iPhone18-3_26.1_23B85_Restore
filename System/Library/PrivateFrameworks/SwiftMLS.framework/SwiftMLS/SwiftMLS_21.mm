uint64_t type metadata accessor for MLS.ValidatedContent(uint64_t a1)
{
  result = qword_28045FCF8;
  if (!qword_28045FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLS.AuthenticatedContent.verify(ciphersuiteID:signaturePublicKey:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = type metadata accessor for MLS.FramedContentAuthData(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a3 + 48);
  v25[2] = *(a3 + 32);
  v25[3] = v14;
  v26 = *(a3 + 64);
  v15 = *(a3 + 16);
  v25[0] = *a3;
  v25[1] = v15;
  v16 = sub_26BF9D0DC(v25);
  if (!v4)
  {
    v18 = v16;
    v19 = v17;
    v20 = type metadata accessor for MLS.AuthenticatedContent(0);
    sub_26BE2E1F0(v3 + *(v20 + 24), v9, &qword_28045E4E0, &qword_26C015A80);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_26BE2E258(v9, &qword_28045E4E0, &qword_26C015A80);
      sub_26BE01654();
      LOBYTE(a2) = swift_allocError();
      *v21 = 0xD000000000000041;
      *(v21 + 8) = 0x800000026C02D2B0;
      *(v21 + 112) = 16;
      swift_willThrow();
      sub_26BE00258(v18, v19);
    }

    else
    {
      sub_26BF9E3A0(v9, v13, type metadata accessor for MLS.FramedContentAuthData);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      __swift_project_boxed_opaque_existential_1(a2, v22);
      LOBYTE(a2) = MLS.Cryptography.SignaturePublicKey.verifyWithLabel(label:message:signature:)(0xD000000000000010, 0x800000026C02B350, v18, v19, *v13, v13[1], v22, v23);
      sub_26BE00258(v18, v19);
      sub_26BF9E7A4(v13, type metadata accessor for MLS.FramedContentAuthData);
    }
  }

  return a2 & 1;
}

uint64_t sub_26BF9C8E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for MLS.FramedContentAuthData(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 200);
  v42 = *(a1 + 184);
  v43 = v9;
  v44[0] = *(a1 + 216);
  *(v44 + 9) = *(a1 + 225);
  v10 = *(a1 + 136);
  v38 = *(a1 + 120);
  v39 = v10;
  v11 = *(a1 + 168);
  v40 = *(a1 + 152);
  v41 = v11;
  v12 = *(a1 + 72);
  v34 = *(a1 + 56);
  v35 = v12;
  v13 = *(a1 + 104);
  v36 = *(a1 + 88);
  v37 = v13;
  v14 = type metadata accessor for MLS.AuthenticatedContent(0);
  sub_26BE2E1F0(a1 + *(v14 + 24), v4, &qword_28045E4E0, &qword_26C015A80);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_26BE2E258(v4, &qword_28045E4E0, &qword_26C015A80);
    sub_26BE01654();
    swift_allocError();
    *v15 = 0xD000000000000044;
    *(v15 + 8) = 0x800000026C02D300;
    *(v15 + 112) = 16;
    return swift_willThrow();
  }

  else
  {
    sub_26BF9E3A0(v4, v8, type metadata accessor for MLS.FramedContentAuthData);
    v32[8] = v42;
    v32[9] = v43;
    v33[0] = v44[0];
    *(v33 + 9) = *(v44 + 9);
    v32[4] = v38;
    v32[5] = v39;
    v32[6] = v40;
    v32[7] = v41;
    v32[0] = v34;
    v32[1] = v35;
    v32[2] = v36;
    v32[3] = v37;
    v17 = v28;
    sub_26BEDCCE4(v32);
    if (v17)
    {
      return sub_26BF9E7A4(v8, type metadata accessor for MLS.FramedContentAuthData);
    }

    else
    {
      v19 = v18;
      v20 = *(a1 + 200);
      v30[8] = *(a1 + 184);
      v30[9] = v20;
      v31[0] = *(a1 + 216);
      *(v31 + 9) = *(a1 + 225);
      v21 = *(a1 + 136);
      v30[4] = *(a1 + 120);
      v30[5] = v21;
      v22 = *(a1 + 168);
      v30[6] = *(a1 + 152);
      v30[7] = v22;
      v23 = *(a1 + 72);
      v30[0] = *(a1 + 56);
      v30[1] = v23;
      v24 = *(a1 + 104);
      v30[2] = *(a1 + 88);
      v30[3] = v24;
      v25 = sub_26BE6917C(v30);
      if (v25)
      {
        if (v25 == 1)
        {
          nullsub_1();
          v26 = 2;
        }

        else
        {
          nullsub_1();
          v26 = 3;
        }
      }

      else
      {
        nullsub_1();
        v26 = 1;
      }

      v29 = v26;
      v27 = sub_26BED4DD8(v8, &v29);
      sub_26BF9E7A4(v8, type metadata accessor for MLS.FramedContentAuthData);
      result = v19 + v27;
      if (__OFADD__(v19, v27))
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_26BF9CC74(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for MLS.FramedContentAuthData(0);
  v68 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_26BEE6180();
  if ((v15 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }

  else
  {
    v37 = v15;
    sub_26BEDD03C(v56);
    if (!v1)
    {
      v52 = v66;
      v53[0] = v67[0];
      *(v53 + 9) = *(v67 + 9);
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v51 = v65;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      v40 = v56[0];
      v41 = v56[1];
      v42 = v56[2];
      v43 = v57;
      v54[8] = v65;
      v54[9] = v66;
      v55[0] = v67[0];
      *(v55 + 9) = *(v67 + 9);
      v54[4] = v61;
      v54[5] = v62;
      v54[6] = v63;
      v54[7] = v64;
      v54[0] = v57;
      v54[1] = v58;
      v54[2] = v59;
      v54[3] = v60;
      if (sub_26BE6917C(v54) > 1)
      {
        nullsub_1();
        v31 = sub_26BF2F7B0();
        v35 = v32;
        v36 = v31;
        v38 = sub_26BF2F7B0();
        v39 = v33;
        sub_26C009C5C();
        v19 = 0;
      }

      else
      {
        nullsub_1();
        v17 = sub_26BF2F7B0();
        v35 = v18;
        v36 = v17;
        v19 = 1;
      }

      v20 = type metadata accessor for MLS.Cryptography.MACTag(0);
      (*(*(v20 - 8) + 56))(v9, v19, 1, v20);
      sub_26BF81FE8(v9, v11);
      sub_26BF81FE8(v11, v14 + *(v12 + 20));
      v21 = v35;
      *v14 = v36;
      v14[1] = v21;
      sub_26BF9E3A0(v14, v5, type metadata accessor for MLS.FramedContentAuthData);
      v22 = *(v68 + 56);
      v22(v5, 0, 1, v12);
      v23 = *(type metadata accessor for MLS.AuthenticatedContent(0) + 24);
      v22((a1 + v23), 1, 1, v12);
      v24 = v50;
      *(a1 + 184) = v51;
      v25 = v53[0];
      *(a1 + 200) = v52;
      *(a1 + 216) = v25;
      *(a1 + 225) = *(v53 + 9);
      v26 = v46;
      *(a1 + 120) = v47;
      v27 = v49;
      *(a1 + 136) = v48;
      *(a1 + 152) = v27;
      *(a1 + 168) = v24;
      v28 = v42;
      *(a1 + 56) = v43;
      v29 = v45;
      *(a1 + 72) = v44;
      *(a1 + 88) = v29;
      *(a1 + 104) = v26;
      v30 = v41;
      *(a1 + 8) = v40;
      *(a1 + 24) = v30;
      *a1 = v37;
      *(a1 + 40) = v28;
      sub_26BE7170C(v5, a1 + v23, &qword_28045E4E0, &qword_26C015A80);
    }
  }
}

uint64_t sub_26BF9D0DC(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = v5;
  v30 = *(a1 + 64);
  v6 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v6;
  v7 = *v1;
  v8 = *(v1 + 12);
  v31[0] = *(v1 + 4);
  v31[1] = v8;
  v9 = *(v1 + 20);
  v10 = *(v1 + 28);
  v11 = *(v1 + 44);
  v12 = *(v1 + 52);
  v31[4] = *(v1 + 36);
  v31[5] = v11;
  v31[2] = v9;
  v31[3] = v10;
  v13 = *(v1 + 60);
  v14 = *(v1 + 76);
  v31[8] = *(v1 + 68);
  v31[9] = v14;
  v15 = *(v1 + 84);
  v31[6] = v12;
  v31[7] = v13;
  v16 = *(v1 + 100);
  *(v32 + 9) = *(v1 + 225);
  v17 = *(v1 + 108);
  v31[12] = v16;
  v32[0] = v17;
  v18 = *(v1 + 92);
  v31[10] = v15;
  v31[11] = v18;
  *(&__dst[11] + 6) = *(v1 + 92);
  *(&__dst[12] + 6) = *(v1 + 100);
  *(&__dst[13] + 6) = *(v1 + 108);
  *(&__dst[13] + 15) = *(v1 + 225);
  *(&__dst[7] + 6) = *(v1 + 60);
  *(&__dst[8] + 6) = *(v1 + 68);
  *(&__dst[9] + 6) = *(v1 + 76);
  *(&__dst[10] + 6) = *(v1 + 84);
  *(&__dst[3] + 6) = *(v1 + 28);
  *(&__dst[4] + 6) = *(v1 + 36);
  *(&__dst[5] + 6) = *(v1 + 44);
  *(&__dst[6] + 6) = *(v1 + 52);
  *(__dst + 6) = *(v1 + 4);
  *(&__dst[1] + 6) = *(v1 + 12);
  *(&__dst[2] + 6) = *(v1 + 20);
  *&v23[23] = v4;
  *&v23[39] = v28;
  *&v23[55] = *(a1 + 48);
  *&v23[71] = *(a1 + 64);
  *&v23[7] = v27[0];
  LOWORD(__src[0]) = v7;
  *(&__src[11] + 2) = __dst[11];
  *(&__src[12] + 2) = __dst[12];
  *(&__src[13] + 2) = __dst[13];
  *(&__src[14] + 1) = *(&__dst[13] + 15);
  *(&__src[7] + 2) = __dst[7];
  *(&__src[8] + 2) = __dst[8];
  *(&__src[9] + 2) = __dst[9];
  *(&__src[10] + 2) = __dst[10];
  *(&__src[3] + 2) = __dst[3];
  *(&__src[4] + 2) = __dst[4];
  *(&__src[5] + 2) = __dst[5];
  *(&__src[6] + 2) = __dst[6];
  *(__src + 2) = __dst[0];
  *(&__src[1] + 2) = __dst[1];
  *(&__src[2] + 2) = __dst[2];
  *(&__src[16] + 1) = *&v23[16];
  *(&__src[17] + 1) = *&v23[32];
  *(&__src[18] + 1) = *&v23[48];
  __src[19] = *&v23[63];
  *(&__src[15] + 1) = *v23;
  v25 = xmmword_26C00BBD0;
  v26 = 0;
  memcpy(__dst, __src, sizeof(__dst));
  sub_26BE2FB24(v31, v23);
  sub_26BE2E1F0(v27, v23, &qword_28045E750, &unk_26C011558);
  sub_26BF30B98(__dst);
  if (!v2)
  {
    v19 = v25;
    v20 = *(&v25 + 1) >> 62;
    if ((*(&v25 + 1) >> 62) > 1)
    {
      if (v20 != 2)
      {
LABEL_11:
        v3 = sub_26C00909C();
        sub_26BF9E6AC(__src);
        sub_26BE00258(v19, *(&v19 + 1));
        return v3;
      }

      v21 = *(v25 + 24);
    }

    else
    {
      if (!v20)
      {
        goto LABEL_11;
      }

      v21 = v25 >> 32;
    }

    if (v21 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  sub_26BF9E6AC(__src);
  sub_26BE00258(v25, *(&v25 + 1));
  return v3;
}

uint64_t sub_26BF9D400@<X0>(unsigned __int16 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for MLS.FramedContentAuthData(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MLS.PublicMessage(0);
  v10 = *(v32 + 24);
  v11 = type metadata accessor for MLS.Cryptography.MACTag(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *a1;
  if (v12 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v14 = v12;
    *(v14 + 2) = 1;
    *(v14 + 4) = 0;
    v15 = 17;
    goto LABEL_5;
  }

  v13 = type metadata accessor for MLS.AuthenticatedContent(0);
  sub_26BE2E1F0(a1 + *(v13 + 24), v6, &qword_28045E4E0, &qword_26C015A80);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26BE2E258(v6, &qword_28045E4E0, &qword_26C015A80);
    sub_26BE01654();
    swift_allocError();
    *v14 = 0xD00000000000003DLL;
    *(v14 + 8) = 0x800000026C02D350;
    v15 = 16;
LABEL_5:
    *(v14 + 112) = v15;
    swift_willThrow();
    sub_26BF9E7A4(a1, type metadata accessor for MLS.AuthenticatedContent);
    return sub_26BE2E258(a2 + v10, &qword_28045E4E8, &qword_26C012550);
  }

  v17 = v33;
  sub_26BF9E3A0(v6, v33, type metadata accessor for MLS.FramedContentAuthData);
  v18 = *(a1 + 92);
  v19 = *(a1 + 108);
  v47 = *(a1 + 100);
  v48[0] = v19;
  *(v48 + 9) = *(a1 + 225);
  v20 = *(a1 + 60);
  v21 = *(a1 + 76);
  v43 = *(a1 + 68);
  v44 = v21;
  v45 = *(a1 + 84);
  v46 = v18;
  v22 = *(a1 + 28);
  v23 = *(a1 + 44);
  v39 = *(a1 + 36);
  v40 = v23;
  v41 = *(a1 + 52);
  v42 = v20;
  v24 = *(a1 + 12);
  v35 = *(a1 + 4);
  v36 = v24;
  v37 = *(a1 + 20);
  v38 = v22;
  sub_26BE2FB24(&v35, &v34);
  sub_26BF9E7A4(a1, type metadata accessor for MLS.AuthenticatedContent);
  v25 = v48[0];
  a2[12] = v47;
  a2[13] = v25;
  *(a2 + 217) = *(v48 + 9);
  v26 = v44;
  a2[8] = v43;
  a2[9] = v26;
  v27 = v46;
  a2[10] = v45;
  a2[11] = v27;
  v28 = v40;
  a2[4] = v39;
  a2[5] = v28;
  v29 = v42;
  a2[6] = v41;
  a2[7] = v29;
  v30 = v36;
  *a2 = v35;
  a2[1] = v30;
  v31 = v38;
  a2[2] = v37;
  a2[3] = v31;
  return sub_26BF9E3A0(v17, a2 + *(v32 + 20), type metadata accessor for MLS.FramedContentAuthData);
}

void sub_26BF9D7A8(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v57 = a2;
  v7 = _s23AuthenticatedContentTBMVMa(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = *(a3 + 48);
  v69 = *(a3 + 32);
  v70 = v12;
  v13 = *(a3 + 16);
  v68[0] = *a3;
  v68[1] = v13;
  v14 = v4[12];
  v15 = v4[10];
  v82 = v4[11];
  v83 = v14;
  v16 = v4[12];
  v84[0] = v4[13];
  *(v84 + 9) = *(v4 + 217);
  v17 = v4[7];
  v18 = v4[9];
  v79 = v4[8];
  v80 = v18;
  v19 = v4[9];
  v81 = v4[10];
  v20 = v4[3];
  v21 = v4[5];
  v75 = v4[4];
  v76 = v21;
  v22 = v4[5];
  v23 = v4[7];
  v77 = v4[6];
  v78 = v23;
  v24 = v4[1];
  v72[0] = *v4;
  v72[1] = v24;
  v25 = v4[3];
  v27 = *v4;
  v26 = v4[1];
  v73 = v4[2];
  v74 = v25;
  *(&v67[11] + 6) = v82;
  *(&v67[12] + 6) = v16;
  *(&v67[13] + 6) = v4[13];
  *(&v67[13] + 15) = *(v4 + 217);
  *(&v67[7] + 6) = v17;
  *(&v67[8] + 6) = v79;
  *(&v67[9] + 6) = v19;
  *(&v67[10] + 6) = v15;
  *(&v67[3] + 6) = v20;
  *(&v67[4] + 6) = v75;
  *(&v67[5] + 6) = v22;
  *(&v67[6] + 6) = v77;
  *(v67 + 6) = v27;
  *(&v67[1] + 6) = v26;
  *(&v67[2] + 6) = v73;
  *(&v66[1] + 7) = v11;
  *(&v66[2] + 7) = v69;
  *(&v66[3] + 7) = *(a3 + 48);
  v28 = *a1;
  v71 = *(a3 + 64);
  *(&v66[4] + 7) = *(a3 + 64);
  *(v66 + 7) = v68[0];
  v29 = type metadata accessor for MLS.PublicMessage(0);
  v30 = *(v8 + 28);
  sub_26BF9E408(v4 + *(v29 + 20), &v10[v30], type metadata accessor for MLS.FramedContentAuthData);
  v31 = v67[10];
  *(v10 + 178) = v67[11];
  v32 = v67[13];
  *(v10 + 194) = v67[12];
  *(v10 + 210) = v32;
  *(v10 + 225) = *(&v67[13] + 15);
  v33 = v67[6];
  *(v10 + 114) = v67[7];
  v34 = v67[9];
  *(v10 + 130) = v67[8];
  *(v10 + 146) = v34;
  *(v10 + 162) = v31;
  v35 = v67[2];
  *(v10 + 50) = v67[3];
  v36 = v67[5];
  *(v10 + 66) = v67[4];
  *(v10 + 82) = v36;
  *(v10 + 98) = v33;
  v37 = v67[1];
  *(v10 + 2) = v67[0];
  *(v10 + 18) = v37;
  *(v10 + 34) = v35;
  v38 = v66[2];
  v39 = v66[3];
  v40 = v66[0];
  *(v10 + 257) = v66[1];
  *(v10 + 273) = v38;
  *(v10 + 289) = v39;
  *(v10 + 19) = *(&v66[3] + 15);
  *v10 = 1;
  *(v10 + 241) = v40;
  v64 = xmmword_26C00BBD0;
  v65 = 0;
  memcpy(v85, v10, 0x140uLL);
  memcpy(v63, v10, sizeof(v63));
  sub_26BE2FB24(v72, v62);
  sub_26BE2E1F0(v68, v62, &qword_28045E750, &unk_26C011558);
  sub_26BF9E748(v85, v62);
  v41 = v86;
  sub_26BF30B98(v63);
  if (v41)
  {
    memcpy(v62, v63, sizeof(v62));
    sub_26BF9E6AC(v62);
    sub_26BF9E7A4(v10, _s23AuthenticatedContentTBMVMa);
    sub_26BE00258(v64, *(&v64 + 1));
    return;
  }

  LODWORD(v86) = v28;
  v42 = v57;
  memcpy(v62, v63, sizeof(v62));
  sub_26BF9E6AC(v62);
  v43 = *(v10 + 200);
  v60[8] = *(v10 + 184);
  v60[9] = v43;
  v61[0] = *(v10 + 216);
  *(v61 + 9) = *(v10 + 225);
  v44 = *(v10 + 136);
  v60[4] = *(v10 + 120);
  v60[5] = v44;
  v45 = *(v10 + 168);
  v60[6] = *(v10 + 152);
  v60[7] = v45;
  v46 = *(v10 + 72);
  v60[0] = *(v10 + 56);
  v60[1] = v46;
  v47 = *(v10 + 104);
  v60[2] = *(v10 + 88);
  v60[3] = v47;
  v48 = sub_26BE6917C(v60);
  if (v48)
  {
    if (v48 == 1)
    {
      nullsub_1();
      v49 = 2;
    }

    else
    {
      nullsub_1();
      v49 = 3;
    }
  }

  else
  {
    nullsub_1();
    v49 = 1;
  }

  v59[0] = v49;
  sub_26BED4DD8(&v10[v30], v59);
  v50 = v64;
  v51 = *(&v64 + 1) >> 62;
  if ((*(&v64 + 1) >> 62) > 1)
  {
    if (v51 != 2)
    {
      goto LABEL_16;
    }

    v52 = *(v64 + 24);
LABEL_14:
    if (v52 < 0)
    {
      __break(1u);
    }

    goto LABEL_16;
  }

  if (v51)
  {
    v52 = v64 >> 32;
    goto LABEL_14;
  }

LABEL_16:
  v53 = sub_26C00909C();
  v55 = v54;
  sub_26BE00258(v50, *(&v50 + 1));
  if ((v86 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v58 = v86 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v42, v53, v55);
    sub_26BF9E7A4(v10, _s23AuthenticatedContentTBMVMa);
    sub_26BE00258(v53, v55);
  }
}

uint64_t sub_26BF9DC7C(uint64_t a1)
{
  v7[5] = *MEMORY[0x277D85DE8];
  if (a1 < 0)
  {
    __break(1u);
  }

  if (a1)
  {
    v2 = MEMORY[0x277D838B0];
    v3 = MEMORY[0x277CC9C18];
    v4 = a1;
    do
    {
      v6 = 0;
      v7[3] = v2;
      v7[4] = v3;
      v7[0] = &v6;
      v7[1] = v7;
      __swift_project_boxed_opaque_existential_1(v7, v2);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(v7);
      --v4;
    }

    while (v4);
  }

  return a1;
}

void sub_26BF9DD50(_OWORD *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v50 = a1;
  v51 = a2;
  v6 = sub_26C00914C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = *a3;
  v65 = v16;
  sub_26BEDCE9C(&v65, v66);
  if (!v4)
  {
    v68 = v9;
    v17 = v50;
    v18 = v51;
    v62 = v66[8];
    v63 = v66[9];
    *v64 = v67[0];
    *&v64[9] = *(v67 + 9);
    v58 = v66[4];
    v59 = v66[5];
    v60 = v66[6];
    v61 = v66[7];
    v54 = v66[0];
    v55 = v66[1];
    v56 = v66[2];
    v57 = v66[3];
    v48 = sub_26BF2F7B0();
    v49 = v19;
    if (v16 == 3)
    {
      v20 = sub_26BF2F7B0();
      v47 = 0;
      v22 = v18;
      v52 = v20;
      v53 = v23;
      sub_26C009C5C();
      v24 = type metadata accessor for MLS.Cryptography.MACTag(0);
      (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
    }

    else
    {
      v47 = 0;
      v21 = type metadata accessor for MLS.Cryptography.MACTag(0);
      (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
      v22 = v18;
    }

    sub_26BF81FE8(v13, v15);
    v25 = type metadata accessor for MLS.FramedContentAuthData(0);
    sub_26BF81FE8(v15, v22 + *(v25 + 20));
    v26 = v49;
    *v22 = v48;
    v22[1] = v26;
    v27 = *v3;
    v28 = v3[1];
    v29 = v3[2];
    v30 = v28 >> 62;
    v31 = v17;
    if ((v28 >> 62) > 1)
    {
      v33 = 0;
      v32 = v6;
      v34 = v7;
      if (v30 == 2)
      {
        v33 = *(v27 + 24);
      }
    }

    else
    {
      v32 = v6;
      if (v30)
      {
        v33 = v27 >> 32;
      }

      else
      {
        v33 = BYTE6(v28);
      }

      v34 = v7;
    }

    if (__OFSUB__(v33, v29))
    {
      __break(1u);
    }

    else
    {
      v35 = sub_26BF2A51C(v33 - v29);
      if (v35)
      {
        v36 = sub_26BE12418(v35);
        v38 = v37;

        sub_26BE00608(v36, v38);
        sub_26C00915C();
        sub_26BF9E700(&qword_28045E498, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
        while (1)
        {
          sub_26C00AADC();
          if ((v52 & 0x100) != 0)
          {
            break;
          }

          if (v52)
          {
            (*(v34 + 8))(v68, v32);
            sub_26BE01654();
            swift_allocError();
            *v40 = 5;
            *(v40 + 8) = 0u;
            *(v40 + 24) = 0u;
            *(v40 + 40) = 0u;
            *(v40 + 56) = 0u;
            *(v40 + 72) = 0u;
            *(v40 + 88) = 0u;
            *(v40 + 104) = 0;
            *(v40 + 112) = 23;
            swift_willThrow();
            sub_26BE6FD84(&v54);
            sub_26BE00258(v36, v38);
            goto LABEL_19;
          }
        }

        sub_26BE00258(v36, v38);
        (*(v34 + 8))(v68, v32);
        v41 = v63;
        v31[8] = v62;
        v31[9] = v41;
        v31[10] = *v64;
        *(v31 + 169) = *&v64[9];
        v42 = v59;
        v31[4] = v58;
        v31[5] = v42;
        v43 = v61;
        v31[6] = v60;
        v31[7] = v43;
        v44 = v55;
        *v31 = v54;
        v31[1] = v44;
        v45 = v57;
        v31[2] = v56;
        v31[3] = v45;
      }

      else
      {
        sub_26BE01600();
        swift_allocError();
        *v39 = 5;
        swift_willThrow();
        sub_26BE6FD84(&v54);
LABEL_19:
        sub_26BF9E7A4(v22, type metadata accessor for MLS.FramedContentAuthData);
      }
    }
  }
}

unint64_t sub_26BF9E27C(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_26BF9C8E4(a2);
  if (v3 || (a3 & 1) == 0)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  v6 = result;
  result = sub_26C0092DC();
  if (v7)
  {
LABEL_8:
    sub_26BE01654();
    swift_allocError();
    *v9 = 40;
    v9[112] = 0;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v8 = result - v6;
  if (result < v6)
  {
    goto LABEL_8;
  }

  sub_26BF9DC7C(result - v6);
  result = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BF9E334(uint64_t (*a1)(void))
{
  a1();

  return sub_26C00B18C();
}

uint64_t sub_26BF9E370@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26BF9E3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BF9E408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BF9E470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AuthenticatedContent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF9E4E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AuthenticatedContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BF9E568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AuthenticatedContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26BF9E5D8(uint64_t a1)
{
  type metadata accessor for MLS.AuthenticatedContent(319);
  if (v1 <= 0x3F)
  {
    sub_26BF9E65C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BF9E65C()
{
  if (!qword_28045FD08)
  {
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045FD08);
    }
  }
}

uint64_t sub_26BF9E700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BF9E7A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BF9E81C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26BEEBD8C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26BF9E914(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26BEEBFB0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26BF9EA00(uint64_t a1)
{
  v67 = _s9AttributeVMa(0);
  v3 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v68 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EEF0, &unk_26C0212A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E588, &qword_26C00E4E8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v56 - v15);
  v69 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = v17[3] >> 1, v20 <= v18))
  {
    v17 = sub_26BEECB54(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v17);
    v20 = v17[3] >> 1;
  }

  v21 = v17[2];
  v22 = v3;
  v23 = *(v3 + 72);
  v24 = v20 - v21;
  v63 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v66 = v23;
  v25 = v17 + v63 + v23 * v21;
  sub_26BE2E1F0(a1, v13, &qword_28045EEF0, &unk_26C0212A0);
  v26 = sub_26BE33BA8(v16, v25, v24);
  sub_26BE2E258(a1, &qword_28045EEF0, &unk_26C0212A0);
  if (v26 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v27 = v17[2];
  v25 = v27 + v26;
  if (__OFADD__(v27, v26))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17[2] = v25;
  if (v26 != v24)
  {
    v28 = &qword_28045E588;
    v29 = &qword_26C00E4E8;
    v30 = v16;
    goto LABEL_8;
  }

LABEL_11:
  v32 = v68;
  sub_26BFA724C(v16, v68);
  v33 = v22;
  v34 = v22 + 56;
  v35 = *(v22 + 56);
  v36 = v67;
  v57 = v35;
  v58 = v34;
  v35(v16, 1, 1, v67);
  v37 = v32;
  v38 = v64;
  sub_26BE2E1F0(v37, v64, &qword_28045E528, &qword_26C00E4B0);
  v40 = *(v33 + 48);
  v39 = v33 + 48;
  v61 = v40;
  if (v40(v38, 1, v36) != 1)
  {
    v41 = &qword_26C00E4B0;
    v42 = v62;
    v60 = v39;
    do
    {
      sub_26BE2E258(v38, &qword_28045E528, v41);
      v43 = v17[3];
      v44 = v43 >> 1;
      if ((v43 >> 1) < v25 + 1)
      {
        v17 = sub_26BEECB54((v43 > 1), v25 + 1, 1, v17);
        v44 = v17[3] >> 1;
      }

      v45 = v65;
      sub_26BE2E1F0(v68, v65, &qword_28045E528, v41);
      if (v61(v45, 1, v67) == 1)
      {
        v46 = v65;
LABEL_26:
        sub_26BE2E258(v46, &qword_28045E528, v41);
        v47 = v25;
      }

      else
      {
        if (v25 <= v44)
        {
          v47 = v44;
        }

        else
        {
          v47 = v25;
        }

        v46 = v65;
        v48 = v17 + v63 + v66 * v25;
        v59 = v47;
        while (1)
        {
          sub_26BFA72BC(v46, v42, _s9AttributeVMa);
          if (v47 == v25)
          {
            break;
          }

          v49 = v41;
          v50 = v68;
          sub_26BE2E258(v68, &qword_28045E528, v49);
          sub_26BFA72BC(v42, v48, _s9AttributeVMa);
          ++v25;
          sub_26BFA724C(v16, v50);
          v51 = v42;
          v52 = v67;
          v57(v16, 1, 1, v67);
          v53 = v50;
          v41 = v49;
          v47 = v59;
          sub_26BE2E1F0(v53, v46, &qword_28045E528, v49);
          v54 = v52;
          v42 = v51;
          v55 = v61(v46, 1, v54);
          v48 += v66;
          if (v55 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_26BFA7324(v42, _s9AttributeVMa);
        v25 = v47;
      }

      v17[2] = v47;
      v38 = v64;
      sub_26BE2E1F0(v68, v64, &qword_28045E528, v41);
    }

    while (v61(v38, 1, v67) != 1);
  }

  sub_26BE2E258(v68, &qword_28045E528, &qword_26C00E4B0);
  sub_26BE2E258(v16, &qword_28045E588, &qword_26C00E4E8);
  v30 = v38;
  v28 = &qword_28045E528;
  v29 = &qword_26C00E4B0;
LABEL_8:
  result = sub_26BE2E258(v30, v28, v29);
  *v69 = v17;
  return result;
}

uint64_t sub_26BF9F008(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26C00AB8C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_26C00AB8C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_26BFA5BEC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26BFA5F9C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26BF9F0F8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_26BEECB54(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = _s9AttributeVMa(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id static RCSFileAttachmentCrypto.openDataInputStream(data:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
  v5 = objc_allocWithZone(v4);
  v6 = 0;
  v7 = &v5[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v6 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v6 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
    sub_26BE00608(a1, a2);
  }

  *&v5[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos] = v6;
  v9 = sub_26C0090DC();
  v12.receiver = v5;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_initWithData_, v9);
  sub_26BE00258(a1, a2);

  [v10 open];
  return v10;
}

id static RCSFileAttachmentCrypto.openDataOutputStream()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB78]) initToMemory];
  [v0 open];
  return v0;
}

void RCSFileAttachmentCrypto.RCSFileEncryption.encryptFile()(uint64_t *a1@<X8>)
{
  v3 = v1;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v5 = sub_26C009A5C();
  __swift_project_value_buffer(v5, qword_280478E70);
  v6 = sub_26C009A3C();
  v7 = sub_26C00AA1C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26BDFE000, v6, v7, "RCSFileEncryption: Beginning encryption", v8, 2u);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  sub_26BFA2AB0();
  if (!v2)
  {
    v9 = sub_26C009A3C();
    v10 = sub_26C00AA1C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26BDFE000, v9, v10, "RCSFileEncryption: encryptAndMACPlaintext Complete", v11, 2u);
      MEMORY[0x26D69A4E0](v11, -1, -1);
    }

    sub_26BFA3124();
    v12 = sub_26C009A3C();
    v13 = sub_26C00AA1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26BDFE000, v12, v13, "RCSFileEncryption: encryptAndMACPadding Complete", v14, 2u);
      MEMORY[0x26D69A4E0](v14, -1, -1);
    }

    sub_26BFA3738();
    v15 = sub_26C009A3C();
    v16 = sub_26C00AA1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26BDFE000, v15, v16, "RCSFileEncryption: encryptAndMACEncodedLengths Complete", v17, 2u);
      MEMORY[0x26D69A4E0](v17, -1, -1);
    }

    v18 = sub_26BFA3A6C();
    v19 = *(v3 + 8);
    v20 = *(v3 + 16);
    v21 = v18;
    v23 = v22;
    sub_26BE00608(v19, v20);
    RCSFileAttachmentCrypto.RCSFileEncryption.TagAndIV.init(tag:iv:)(v21, v23, v19, v20, a1);
  }

  sub_26BFA298C(v3);
}

unint64_t static RCSFileAttachmentCrypto.verifyCommitment(ciphersuite:label:value:commitment:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v28 = a6;
  v29 = a7;
  v13 = sub_26C009C8C();
  v34 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  LOBYTE(v30) = *a1;
  v31 = *(a1 + 8);
  v32 = v19;
  v33 = v20;
  v21 = sub_26BFA61F0(&v30, a2, a3, a4, a5);
  if (!v7)
  {
    v30 = v28;
    *&v31 = v29;
    v23 = v21;
    v24 = v22;
    sub_26BE00608(v28, v29);
    sub_26C009C5C();
    v30 = v23;
    *&v31 = v24;
    sub_26BE00608(v23, v24);
    sub_26C009C5C();
    LOBYTE(a2) = MEMORY[0x26D698700](v18, v16);
    sub_26BE00258(v23, v24);
    v25 = *(v34 + 8);
    v25(v16, v13);
    v25(v18, v13);
  }

  return a2 & 1;
}

void sub_26BF9F87C(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>, uint64_t a10, unint64_t a11, int a12, char a13, int a14)
{
  v140 = a6;
  v141 = a8;
  v143 = a5;
  v144 = a4;
  v150 = a2;
  v142 = a1;
  v17 = sub_26C009DAC();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v133 = v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26C009E0C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v132 = v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB50, &unk_26C020ED0);
  MEMORY[0x28223BE20](v130);
  v129 = v117 - v22;
  v23 = sub_26C009C8C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v137 = v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v136 = v117 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v117 - v30;
  MEMORY[0x28223BE20](v29);
  v138 = v117 - v32;
  v33 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v34 = &a9[v33[8]];
  *v34 = 0;
  v34[4] = 1;
  v35 = &a9[v33[10]];
  *v35 = 0;
  v35[4] = 1;
  *&a9[v33[11]] = 0;
  *&a9[v33[12]] = 0;
  *&a9[v33[13]] = 0;
  v36 = v33[15];
  v127 = v20;
  v37 = *(v20 + 56);
  v139 = v36;
  v128 = v19;
  v37(&a9[v36], 1, 1, v19);
  if ((a7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (HIDWORD(a7))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v38 = a10;
  *a9 = a7;
  if (a7 < 8)
  {
    v39 = a10;
    sub_26BF7EDDC();
    swift_allocError();
    *v40 = 5;
    swift_willThrow();
    v41 = v143;
LABEL_31:
    sub_26BE00258(v39, a11);

    sub_26BE00258(v150, a3);
    sub_26BE00258(v144, v41);
    (*(v24 + 8))(v142, v23);
    sub_26BE2E258(&a9[v139], &qword_28045FD60, &unk_26C021210);
    return;
  }

  v42 = a3 >> 62;
  v41 = v143;
  if ((a3 >> 62) > 1)
  {
    if (v42 != 2)
    {
      goto LABEL_18;
    }

    v44 = *(v150 + 16);
    v43 = *(v150 + 24);
    v45 = __OFSUB__(v43, v44);
    v46 = v43 - v44;
    if (!v45)
    {
      if (v46 == 12)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v42)
  {
    if (!__OFSUB__(HIDWORD(v150), v150))
    {
      if (HIDWORD(v150) - v150 == 12)
      {
        goto LABEL_12;
      }

LABEL_18:
      v39 = a10;
      sub_26BF7EDDC();
      swift_allocError();
      v49 = 6;
LABEL_30:
      *v48 = v49;
      swift_willThrow();
      goto LABEL_31;
    }

    goto LABEL_70;
  }

  if (BYTE6(a3) != 12)
  {
    goto LABEL_18;
  }

LABEL_12:
  v47 = v143 >> 62;
  if ((v143 >> 62) > 1)
  {
    if (v47 != 2)
    {
      goto LABEL_29;
    }

    v51 = *(v144 + 16);
    v50 = *(v144 + 24);
    v45 = __OFSUB__(v50, v51);
    v52 = v50 - v51;
    if (!v45)
    {
      if (v52 == 32)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

    goto LABEL_71;
  }

  if (!v47)
  {
    if (BYTE6(v143) != 32)
    {
      goto LABEL_29;
    }

LABEL_22:
    v53 = v33[20];
    v54 = &a9[v33[9]];
    *v54 = a12;
    v54[4] = a13 & 1;
    *&a9[v53] = a14;
    v55 = &a9[v33[17]];
    v126 = a3;
    v56 = v144;
    *v55 = v144;
    *(v55 + 1) = v41;
    v57 = *(v24 + 16);
    v123 = v33[5];
    v125 = v23;
    v122 = v24 + 16;
    v121 = v57;
    v57(&a9[v123], v142, v23);
    v58 = &a9[v33[7]];
    v59 = v150;
    v60 = v126;
    v124 = v58;
    *v58 = v150;
    *(v58 + 1) = v60;
    v61 = v56;
    v62 = v126;
    sub_26BE00608(v61, v143);
    sub_26BE00608(v59, v62);
    if (sub_26C009C7C() != 256)
    {
      v65 = a10;
      v66 = 3;
      v23 = v125;
      goto LABEL_34;
    }

    v63 = a11 >> 62;
    if ((a11 >> 62) > 1)
    {
      v23 = v125;
      v41 = v136;
      if (v63 != 2)
      {
        goto LABEL_38;
      }

      v71 = *(a10 + 16);
      v70 = *(a10 + 24);
      v45 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      if (!v45)
      {
LABEL_37:
        if (v64 < 0xFFFF)
        {
LABEL_38:
          if (qword_28045DFD8 == -1)
          {
            goto LABEL_39;
          }

          goto LABEL_73;
        }

        v65 = a10;
        v66 = 0;
LABEL_34:
        sub_26BF7EDDC();
        swift_allocError();
        *v67 = v66;
        swift_willThrow();
        sub_26BE00258(v65, a11);

        sub_26BE00258(v150, v62);
        sub_26BE00258(v144, v143);
        v68 = *(v24 + 8);
        v68(v142, v23);
        v68(&a9[v123], v23);
        sub_26BE00258(*v124, *(v124 + 1));
        v69 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v23 = v125;
      v41 = v136;
      if (!v63)
      {
        goto LABEL_38;
      }

      LODWORD(v64) = HIDWORD(a10) - a10;
      if (!__OFSUB__(HIDWORD(a10), a10))
      {
        v64 = v64;
        goto LABEL_37;
      }

      __break(1u);
    }

    __break(1u);
LABEL_76:
    swift_once();
    goto LABEL_52;
  }

  if (!__OFSUB__(HIDWORD(v144), v144))
  {
    if (HIDWORD(v144) - v144 == 32)
    {
      goto LABEL_22;
    }

LABEL_29:
    v39 = a10;
    sub_26BF7EDDC();
    swift_allocError();
    v49 = 4;
    goto LABEL_30;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  swift_once();
LABEL_39:
  v145 = xmmword_280478FF8;
  v119 = a10;
  v148 = a10;
  v149 = a11;
  v120 = a11;
  sub_26BE00608(xmmword_280478FF8, *(&xmmword_280478FF8 + 1));
  v72 = sub_26C00A30C();
  v73 = sub_26BFA658C(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v117[3] = sub_26BE016A8();
  v117[2] = v72;
  v117[1] = v73;
  sub_26C009E1C();
  sub_26BE00258(v145, *(&v145 + 1));
  v74 = v129;
  v75 = v130;
  v76 = v131;
  sub_26C009C3C();
  v118 = v76;
  v77 = *(v24 + 8);
  v117[4] = v24 + 8;
  v131 = v77;
  v77(v41, v23);
  v78 = *(v75 + 48);
  v79 = *(v24 + 32);
  v79(v31, v74, v23);
  v79(v138, &v74[v78], v23);
  v80 = v33[6];
  v79(&a9[v80], v31, v23);
  v81 = v140;
  v130 = v33[18];
  *&a9[v130] = v140;
  v82 = v141;
  v129 = v33[19];
  *&v129[a9] = v141;
  v121(v137, &a9[v80], v23);
  v83 = v150;
  v84 = v126;
  v148 = v150;
  v149 = v126;
  v146 = MEMORY[0x277CC9318];
  v147 = MEMORY[0x277CC9300];
  v145 = xmmword_26C01F8F0;
  v85 = __swift_project_boxed_opaque_existential_1(&v145, MEMORY[0x277CC9318]);
  v86 = *v85;
  v87 = v85[1];
  sub_26BE00608(v83, v84);
  v140 = v81;
  v141 = v82;
  v88 = v118;
  sub_26BE121A0(v86, v87, &v148);
  __swift_destroy_boxed_opaque_existential_1(&v145);
  (*(v134 + 104))(v133, *MEMORY[0x277CC53E8], v135);
  v89 = v132;
  sub_26C009DDC();
  v90 = v23;
  v23 = v88;
  if (v88)
  {
    v91 = v120;
    v31 = v138;
LABEL_42:
    v93 = v126;
LABEL_43:
    [*&v129[a9] close];
    [*&a9[v130] close];
    swift_willThrow();
    sub_26BE00258(v119, v91);

    sub_26BE00258(v150, v93);
    sub_26BE00258(v144, v143);
    v94 = v125;
    v95 = v131;
    v131(v142, v125);
    v95(v31, v94);
    v95(&a9[v123], v94);
    v95(&a9[v33[6]], v94);
    sub_26BE00258(*v124, *(v124 + 1));
    if (!v23)
    {
      (*(v127 + 8))(&a9[v33[14]], v128);
      sub_26BE2E258(&a9[v139], &qword_28045FD60, &unk_26C021210);
      v96 = v33[16];
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
      (*(*(v97 - 8) + 8))(&a9[v96], v97);
      v69 = 1;
LABEL_46:
      sub_26BE00258(*&a9[v33[17]], *&a9[v33[17] + 8]);
      if (v69)
      {
      }

      return;
    }

    v69 = 1;
LABEL_45:
    sub_26BE2E258(&a9[v139], &qword_28045FD60, &unk_26C021210);
    goto LABEL_46;
  }

  (*(v127 + 32))(&a9[v33[14]], v89, v128);
  v31 = v138;
  v121(v136, v138, v90);
  sub_26C009E2C();
  *&v145 = v150;
  *(&v145 + 1) = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
  sub_26C009E3C();
  v92 = sub_26BFA4308();
  v38 = 0;
  v91 = v120;
  if ((v92 & 1) == 0)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v114 = 8;
    swift_willThrow();
    goto LABEL_42;
  }

  if (qword_28045DF40 != -1)
  {
    goto LABEL_76;
  }

LABEL_52:
  v98 = sub_26C009A5C();
  __swift_project_value_buffer(v98, qword_280478E70);
  v99 = sub_26C009A3C();
  v100 = sub_26C00AA1C();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&dword_26BDFE000, v99, v100, "RCS attachment decryption tag validated", v101, 2u);
    v102 = v101;
    v31 = v138;
    MEMORY[0x26D69A4E0](v102, -1, -1);
  }

  v103 = sub_26BFA473C();
  if (v38)
  {
    goto LABEL_66;
  }

  if ((v103 & 1) == 0)
  {
LABEL_65:
    sub_26BF7EDDC();
    swift_allocError();
    *v115 = 9;
    swift_willThrow();
LABEL_66:
    v93 = v126;
LABEL_67:
    v91 = v120;
    goto LABEL_43;
  }

  v104 = sub_26C009A3C();
  v105 = sub_26C00AA1C();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_26BDFE000, v104, v105, "RCS attachment decryption lengths validated", v106, 2u);
    v107 = v106;
    v31 = v138;
    MEMORY[0x26D69A4E0](v107, -1, -1);
  }

  v108 = sub_26BFA499C();
  v93 = v126;
  if ((v108 & 1) == 0)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v116 = 10;
    swift_willThrow();
    goto LABEL_67;
  }

  v109 = sub_26C009A3C();
  v110 = sub_26C00AA1C();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_26BDFE000, v109, v110, "RCS attachment decryption padding validated", v111, 2u);
    MEMORY[0x26D69A4E0](v111, -1, -1);
  }

  sub_26BE00258(v119, v120);
  sub_26BE00258(v150, v93);
  sub_26BE00258(v144, v143);
  v112 = v125;
  v113 = v131;
  v131(v142, v125);
  v113(v31, v112);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RCSFileAttachmentCrypto.RCSFileDecryption.decryptCiphertext()()
{
  v2 = v0;
  v3 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v4 = *(v0 + v3[20]);
  if (v4)
  {
    v5 = sub_26C00A74C();
    *(v5 + 16) = v4;
    bzero((v5 + 32), v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v33 = v5;
  v6 = *(v0 + v3[18]);
  v7 = sub_26C00A88C();
  v8 = [v6 setProperty:v7 forKey:*MEMORY[0x277CBE748]];

  if (!v8)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v10 = 7;
    swift_willThrow();
    goto LABEL_9;
  }

  sub_26BFA4E10(0);
  if (v1)
  {
LABEL_9:

LABEL_10:
    sub_26BFA51B0(v2);
    return;
  }

  v9 = 0;
  if ([v6 hasBytesAvailable])
  {
    v32 = v6;
    while (1)
    {
      v11 = (v2 + v3[8]);
      if (v11[1])
      {
        break;
      }

      v12 = *v11;
      if (v9 >= v12)
      {
        goto LABEL_43;
      }

      if (v9 < 0)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        break;
      }

      v13 = v12 >= v9;
      v14 = v12 - v9;
      if (!v13)
      {
        goto LABEL_47;
      }

      if (v14 >= v4)
      {
        v15 = v4;
      }

      else
      {
        v15 = v14;
      }

      v16 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_26BE29A50(0, *(v33 + 16), 0, v33);
      }

      v17 = [v6 read:v16 + 32 maxLength:v15];
      if (v17 != v4)
      {
        v18 = v4 - v17;
        if (__OFSUB__(v4, v17))
        {
          goto LABEL_49;
        }

        if (v18)
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v19 = *(v16 + 2);
          v20 = v19 - v18;
          if (v19 < v18)
          {
            goto LABEL_52;
          }

          if ((v19 - v18) < 0)
          {
            goto LABEL_53;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v20 > *(v16 + 3) >> 1)
          {
            if (v19 <= v20)
            {
              v22 = v19 - v18;
            }

            else
            {
              v22 = v19;
            }

            v16 = sub_26BE29A50(isUniquelyReferenced_nonNull_native, v22, 1, v16);
          }

          memmove(&v16[v20 + 32], &v16[v19 + 32], *(v16 + 2) - v19);
          *(v16 + 2) -= v18;
          v6 = v32;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_26BE588C0(v16);
      }

      sub_26C009DBC();
      v33 = v16;
      v23 = *(v16 + 2);
      [*(v2 + v3[19]) write:v16 + 32 maxLength:v23];
      v24 = __OFADD__(v9, v23);
      v9 += v23;
      if (v24)
      {
        goto LABEL_48;
      }

      if (v23 < v4)
      {
        v25 = *(v16 + 2);
        v26 = v4 - v25;
        if ((v4 - v25) < 0)
        {
          goto LABEL_50;
        }

        v27 = MEMORY[0x277D84F90];
        if (v4 != v25)
        {
          v28 = sub_26C00A74C();
          *(v28 + 16) = v26;
          bzero((v28 + 32), v26);
          v27 = v28;
        }

        sub_26BE29964(v27);
      }

      if (([v6 hasBytesAvailable] & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_43:
  v29 = (v2 + v3[8]);
  if ((v29[1] & 1) == 0)
  {
    v30 = *v29;

    if (v9 != v30)
    {
      sub_26BF7EDDC();
      swift_allocError();
      *v31 = 11;
      swift_willThrow();
    }

    goto LABEL_10;
  }

LABEL_55:
  __break(1u);
}

uint64_t sub_26BFA0BD4()
{
  result = sub_26BE12418(&unk_287CBA3C0);
  *&xmmword_280478FF8 = result;
  *(&xmmword_280478FF8 + 1) = v1;
  return result;
}

SwiftMLS::RCSFileAttachmentCrypto::RCSFAError_optional __swiftcall RCSFileAttachmentCrypto.RCSFAError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26BFA0C24(uint64_t a1)
{
  v2 = sub_26BFA71F8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26BFA0C60(uint64_t a1)
{
  v2 = sub_26BFA71F8();
  v3 = sub_26BFA71A4();
  v4 = sub_26BE8B948();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

uint64_t sub_26BFA0CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BFA71A4();
  v5 = sub_26BE8B948();

  return MEMORY[0x28211BAD0](a1, a2, v4, v5);
}

unint64_t RCSFileAttachmentCrypto.RCSFileEncryption.init(key:inputPlaintextFileURL:outputEncryptedFileURL:fileName:internalBufferSize:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v188 = a1;
  LODWORD(v186) = a6;
  v190 = a5;
  v192 = a4;
  v195 = a3;
  v178 = a7;
  v200 = *MEMORY[0x277D85DE8];
  v183 = sub_26C009DAC();
  v181 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v182 = v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_26C009E0C();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v180 = v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB50, &unk_26C020ED0);
  MEMORY[0x28223BE20](v184);
  v179 = v159 - v10;
  v11 = sub_26C009D7C();
  MEMORY[0x28223BE20](v11 - 8);
  v185 = (v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = sub_26C008FDC();
  v189 = *(v193 - 8);
  v13 = MEMORY[0x28223BE20](v193);
  v174 = v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v177 = v159 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v159 - v17;
  v19 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  MEMORY[0x28223BE20](v19);
  v21 = v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_26C009C8C();
  v194 = *(v191 - 8);
  v22 = MEMORY[0x28223BE20](v191);
  v24 = v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v159 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v159 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (v159 - v32);
  MEMORY[0x28223BE20](v31);
  v35 = v159 - v34;
  v36 = v187;
  v37 = sub_26BFA63D8(a2);
  v187 = v36;
  if (v36)
  {
    sub_26BE00258(v192, v190);
    v38 = v195;
    v39 = v193;
    v40 = v191;
    v41 = v188;
LABEL_3:
    v42 = *(v189 + 8);
    v42(v38, v39);
    v42(a2, v39);
    return (*(v194 + 8))(v41, v40);
  }

  v171 = v37;
  v167 = v18;
  v163 = v24;
  v168 = v33;
  v165 = v27;
  v164 = v30;
  v166 = v19;
  v170 = v35;
  v169 = v21;
  v173 = a2;
  sub_26C008FBC();
  v44 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v45 = sub_26C00A45C();

  v46 = [v44 initWithFileAtPath_];

  if (!v46)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v65 = 13;
    swift_willThrow();
    sub_26BE00258(v192, v190);
    v41 = v188;
    a2 = v173;
    v38 = v195;
    v39 = v193;
    v40 = v191;
    goto LABEL_3;
  }

  [v46 open];
  sub_26C008FBC();
  v47 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v48 = sub_26C00A45C();

  v49 = [v47 initToFileAtPath:v48 append:0];

  v50 = v49;
  v39 = v193;
  v172 = v46;
  if (!v50)
  {
    sub_26BF7EDDC();
    v66 = swift_allocError();
    *v67 = 12;
    swift_willThrow();
    [v46 close];
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v68 = sub_26C009A5C();
    __swift_project_value_buffer(v68, qword_280478E70);
    v69 = v189;
    v70 = v167;
    v71 = v195;
    (*(v189 + 16))(v167);
    v72 = sub_26C009A3C();
    v73 = sub_26C00AA0C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v187 = v66;
      v75 = v74;
      v76 = swift_slowAlloc();
      *&v196 = v76;
      *v75 = 136315138;
      sub_26BFA658C(&qword_28045FD20, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v77 = sub_26C00AEFC();
      v78 = v69;
      v80 = v79;
      (*(v78 + 8))(v70, v39);
      v81 = sub_26BE29740(v77, v80, &v196);

      *(v75 + 4) = v81;
      _os_log_impl(&dword_26BDFE000, v72, v73, "Failed to open output stream for %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      v82 = v76;
      v71 = v195;
      MEMORY[0x26D69A4E0](v82, -1, -1);
      MEMORY[0x26D69A4E0](v75, -1, -1);
    }

    else
    {

      (*(v69 + 8))(v70, v39);
    }

    v41 = v188;
    swift_willThrow();
    sub_26BE00258(v192, v190);

    v38 = v71;
    v40 = v191;
    a2 = v173;
    goto LABEL_3;
  }

  [v50 open];
  v51 = v194;
  v52 = v194 + 16;
  v53 = *(v194 + 16);
  v54 = v170;
  v41 = v188;
  v40 = v191;
  v53(v170);
  v55 = v169;
  *(v169 + 6) = 0;
  v167 = v50;
  if (v171 >= 0x80000000)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v83 = 1;
    swift_willThrow();
    (*(v51 + 8))(v54, v40);
    a2 = v173;
    v53 = v192;
LABEL_41:
    [v50 close];
    [v172 close];
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v144 = sub_26C009A5C();
    __swift_project_value_buffer(v144, qword_280478E70);
    v145 = sub_26C009A3C();
    v146 = sub_26C00AA0C();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&dword_26BDFE000, v145, v146, "Failed to open create keys or CTRMode Context", v147, 2u);
      MEMORY[0x26D69A4E0](v147, -1, -1);
    }

    swift_willThrow();
    sub_26BE00258(v53, v190);

    v38 = v195;
    goto LABEL_3;
  }

  v160 = v53;
  v161 = v52;
  v56 = v192;
  if (v171 < 0)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v52 = v166;
  v57 = *(v166 + 44);
  *v55 = v171;
  v58 = v186;
  *(v55 + v57) = v186;
  v51 = v190;
  v59 = v172;
  v53 = v168;
  if (v58)
  {
    v60 = v50;
    v61 = v58;
    v62 = v60;
    v63 = v59;
    sub_26BE00608(v56, v51);
    v64 = sub_26C00A74C();
    *(v64 + 16) = v61;
    bzero((v64 + 32), v61);
  }

  else
  {
    v84 = v50;
    v85 = v59;
    sub_26BE00608(v56, v51);
    v64 = MEMORY[0x277D84F90];
  }

  *(v55 + *(v52 + 48)) = v64;
  result = sub_26C0092DC();
  v39 = v193;
  if (v86)
  {
    __break(1u);
    return result;
  }

  if (HIDWORD(result))
  {
    goto LABEL_51;
  }

  v87 = v171;
  v88 = result - v171;
  if (result < v171)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v162 = v64;
  v55[1] = v88;
  v89 = v87 + 8;
  v90 = __CFADD__(v89, v88);
  v91 = v89 + v88;
  if (v90)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v55[7] = v91;
  sub_26C009D6C();
  sub_26C009C6C();
  v92 = v55;
  v93 = MEMORY[0x277CC9318];
  v94 = v187;
  sub_26C009C3C();
  v185 = *(v194 + 8);
  v186 = v194 + 8;
  v185(v53, v40);
  v95 = v196;
  *(v92 + 2) = v196;
  v199 = v95;
  v197 = v93;
  v198 = MEMORY[0x277CC9300];
  v196 = xmmword_26C01F8F0;
  v96 = __swift_project_boxed_opaque_existential_1(&v196, v93);
  v97 = *v96;
  v98 = v96[1];
  sub_26BE00608(v95, *(&v95 + 1));
  sub_26BE121A0(v97, v98, &v199);
  v55 = v94;
  __swift_destroy_boxed_opaque_existential_1(&v196);
  v99 = *(&v199 + 1);
  v41 = v199;
  v100 = v170;
  if (sub_26C009C7C() != 256)
  {
    v50 = v167;

    sub_26BF7EDDC();
    swift_allocError();
    *v103 = 3;
    swift_willThrow();

    v53 = v192;
    sub_26BE00258(v192, v51);
    sub_26BE00258(v41, v99);
    v41 = v188;
    v40 = v191;
    v185(v100, v191);
LABEL_40:
    sub_26BE00258(*(v169 + 1), *(v169 + 2));

    a2 = v173;
    goto LABEL_41;
  }

  v171 = v99;
  v101 = v51 >> 62;
  v53 = v192;
  v50 = v167;
  if ((v51 >> 62) <= 1)
  {
    v40 = v191;
    v52 = v184;
    if (!v101)
    {
      goto LABEL_32;
    }

    LODWORD(v102) = HIDWORD(v192) - v192;
    if (!__OFSUB__(HIDWORD(v192), v192))
    {
      v102 = v102;
      goto LABEL_31;
    }

    __break(1u);
LABEL_56:
    __break(1u);
  }

  v40 = v191;
  v52 = v184;
  if (v101 != 2)
  {
    goto LABEL_32;
  }

  v105 = *(v192 + 16);
  v104 = *(v192 + 24);
  v106 = __OFSUB__(v104, v105);
  v102 = v104 - v105;
  if (v106)
  {
    goto LABEL_56;
  }

LABEL_31:
  if (v102 >= 0xFFFF)
  {

    sub_26BF7EDDC();
    swift_allocError();
    *v143 = 0;
    swift_willThrow();

    sub_26BE00258(v53, v51);
    sub_26BE00258(v41, v171);
    v41 = v188;
    v185(v100, v40);
    goto LABEL_40;
  }

LABEL_32:
  if (qword_28045DFD8 != -1)
  {
LABEL_54:
    swift_once();
  }

  v196 = xmmword_280478FF8;
  *&v199 = v53;
  *(&v199 + 1) = v51;
  sub_26BE00608(xmmword_280478FF8, *(&xmmword_280478FF8 + 1));
  v107 = sub_26C00A30C();
  v108 = sub_26BFA658C(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v159[3] = sub_26BE016A8();
  v109 = v168;
  v159[2] = v107;
  v159[1] = v108;
  sub_26C009E1C();
  sub_26BE00258(v196, *(&v196 + 1));
  v110 = v179;
  sub_26C009C3C();
  v187 = v55;
  v40 = v191;
  v185(v109, v191);
  v111 = *(v52 + 48);
  v112 = *(v194 + 32);
  v113 = v164;
  v112(v164, v110, v40);
  v112(v165, &v110[v111], v40);
  v114 = v160;
  (v160)(v163, v113, v40);
  (*(v181 + 104))(v182, *MEMORY[0x277CC53F0], v183);
  v115 = v171;
  sub_26BE00608(v41, v171);
  v116 = v180;
  v184 = v41;
  v117 = v187;
  sub_26C009DDC();
  if (v117)
  {

    v50 = v167;
    v53 = v192;
    sub_26BE00258(v192, v190);
    sub_26BE00258(v184, v115);
    v118 = v185;
    v185(v165, v40);
    v118(v113, v40);
    v41 = v188;
    v39 = v193;
    v118(v170, v40);
    goto LABEL_40;
  }

  v187 = 0;
  v119 = v113;
  v120 = v166;
  v121 = v169;
  (*(v175 + 32))(&v169[*(v166 + 36)], v116, v176);
  v122 = v165;
  (v114)(v109, v165, v40);
  sub_26C009E2C();
  v123 = *(v121 + 16);
  *&v196 = *(v121 + 8);
  *(&v196 + 1) = v123;
  sub_26BE00608(v196, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
  sub_26C009E3C();
  sub_26BE00258(v192, v190);
  sub_26BE00258(v184, v115);
  sub_26BE00258(v196, *(&v196 + 1));
  v124 = v185;
  v185(v122, v40);
  v124(v119, v40);
  v124(v170, v40);
  *(v121 + *(v120 + 52)) = v172;
  *(v121 + *(v120 + 56)) = v167;
  sub_26BFA72BC(v121, v178, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v125 = sub_26C009A5C();
  v126 = __swift_project_value_buffer(v125, qword_280478E70);
  v127 = v189;
  v128 = *(v189 + 16);
  v129 = v177;
  v130 = v193;
  v128(v177, v173, v193);
  v131 = sub_26C009A3C();
  v132 = sub_26C00AA1C();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v194 = v126;
    v134 = v133;
    v135 = swift_slowAlloc();
    *&v196 = v135;
    *v134 = 136315138;
    v136 = sub_26C008FCC();
    v137 = v129;
    v139 = v138;
    v140 = *(v127 + 8);
    v140(v137, v193);
    v141 = sub_26BE29740(v136, v139, &v196);

    *(v134 + 4) = v141;
    _os_log_impl(&dword_26BDFE000, v131, v132, "Input File to encrypt is at %s", v134, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v135);
    v142 = v135;
    v130 = v193;
    MEMORY[0x26D69A4E0](v142, -1, -1);
    MEMORY[0x26D69A4E0](v134, -1, -1);
  }

  else
  {

    v140 = *(v127 + 8);
    v140(v129, v130);
  }

  v148 = v174;
  v149 = v195;
  v128(v174, v195, v130);
  v150 = sub_26C009A3C();
  v151 = sub_26C00AA1C();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *&v196 = v153;
    *v152 = 136315138;
    v154 = sub_26C008FCC();
    v155 = v130;
    v157 = v156;
    v140(v148, v155);
    v158 = sub_26BE29740(v154, v157, &v196);

    *(v152 + 4) = v158;
    _os_log_impl(&dword_26BDFE000, v150, v151, "Output File to encrypt is at %s", v152, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v153);
    MEMORY[0x26D69A4E0](v153, -1, -1);
    MEMORY[0x26D69A4E0](v152, -1, -1);

    sub_26BE00258(v192, v190);
    v140(v195, v155);
    v140(v173, v155);
    return (v185)(v188, v191);
  }

  else
  {

    sub_26BE00258(v192, v190);
    v140(v149, v130);
    v140(v173, v130);
    v185(v188, v191);
    return (v140)(v148, v130);
  }
}

id static RCSFileAttachmentCrypto.openFileInputStream(fileURL:)()
{
  sub_26C008FBC();
  v0 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v1 = sub_26C00A45C();

  v2 = [v0 initWithFileAtPath_];

  if (v2)
  {
    [v2 open];
  }

  else
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v3 = 13;
    swift_willThrow();
  }

  return v2;
}

id static RCSFileAttachmentCrypto.openFileOutputStream(fileURL:)()
{
  sub_26C008FBC();
  v0 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v1 = sub_26C00A45C();

  v2 = [v0 initToFileAtPath:v1 append:0];

  if (v2)
  {
    [v2 open];
  }

  else
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v3 = 12;
    swift_willThrow();
  }

  return v2;
}

uint64_t static RCSFileAttachmentCrypto.deriveKeys(primaryKey:fileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v29 = a2;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB50, &unk_26C020ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = sub_26C009C8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26C009C7C();
  if (result != 256)
  {
    v17 = 3;
    goto LABEL_7;
  }

  v15 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v20 = *(a4 + 16);
      v19 = *(a4 + 24);
      v21 = __OFSUB__(v19, v20);
      v16 = v19 - v20;
      if (!v21)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if (v15)
  {
    LODWORD(v16) = HIDWORD(a4) - a4;
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      v16 = v16;
LABEL_10:
      if (v16 <= 65534)
      {
        goto LABEL_11;
      }

      v17 = 0;
LABEL_7:
      sub_26BF7EDDC();
      swift_allocError();
      *v18 = v17;
      return swift_willThrow();
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_11:
  if (qword_28045DFD8 != -1)
  {
    swift_once();
  }

  v28 = xmmword_280478FF8;
  v26 = a4;
  v27 = a5;
  sub_26BE00608(xmmword_280478FF8, *(&xmmword_280478FF8 + 1));
  sub_26C00A30C();
  sub_26BFA658C(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_26BE016A8();
  sub_26C009E1C();
  sub_26BE00258(v28, *(&v28 + 1));
  sub_26C009C3C();
  (*(v11 + 8))(v13, v10);
  v22 = *(v7 + 48);
  v23 = *(v11 + 32);
  v23(v25, v9, v10);
  return (v23)(v29, &v9[v22], v10);
}

uint64_t RCSFileAttachmentCrypto.RCSFileEncryption.TagAndIV.tag.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t RCSFileAttachmentCrypto.RCSFileEncryption.TagAndIV.iv.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

void RCSFileAttachmentCrypto.RCSFileEncryption.TagAndIV.init(tag:iv:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 == 32)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 32)
      {
        goto LABEL_8;
      }

LABEL_14:
      v15 = 4;
LABEL_22:
      sub_26BF7EDDC();
      swift_allocError();
      *v19 = v15;
      swift_willThrow();
      sub_26BE00258(a3, a4);
      sub_26BE00258(a1, a2);
      return;
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) != 32)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_21;
    }

    v17 = *(a3 + 16);
    v16 = *(a3 + 24);
    v12 = __OFSUB__(v16, v17);
    v18 = v16 - v17;
    if (!v12)
    {
      if (v18 == 12)
      {
        goto LABEL_18;
      }

LABEL_21:
      v15 = 6;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (!v14)
  {
    if (BYTE6(a4) != 12)
    {
      goto LABEL_21;
    }

LABEL_18:
    *a5 = a1;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = a4;
    return;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    if (HIDWORD(a3) - a3 == 12)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void sub_26BFA298C(uint64_t a1)
{
  v2 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  [*(a1 + *(v2 + 52)) close];
  [*(a1 + *(v2 + 56)) close];
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478E70);
  oslog = sub_26C009A3C();
  v4 = sub_26C00AA1C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26BDFE000, oslog, v4, "RCSFileEncryption: encryptFile complete", v5, 2u);
    MEMORY[0x26D69A4E0](v5, -1, -1);
  }
}

void sub_26BFA2AB0()
{
  v2 = v1;
  v3 = v0;
  if (qword_28045DF40 != -1)
  {
LABEL_57:
    swift_once();
  }

  v4 = sub_26C009A5C();
  v49 = __swift_project_value_buffer(v4, qword_280478E70);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26BDFE000, v5, v6, "StartingEncryptAndMacPlaintext", v7, 2u);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v8 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  v9 = *(v3 + v8[13]);
  if ([v9 hasBytesAvailable])
  {
    LODWORD(v10) = 0;
    v11 = 0;
    v50 = v8;
    v51 = v9;
    while (v10 < *v3)
    {
      v12 = *(v3 + v8[11]);
      v54 = v8[12];
      v13 = *(v3 + v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_26BE29A50(0, *(v13 + 2), 0, v13);
      }

      v14 = [v9 read:v13 + 32 maxLength:{v12, v49}];
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v15 = v14;
      if (HIDWORD(v14))
      {
        goto LABEL_49;
      }

      v16 = __CFADD__(v10, v14);
      v10 = (v10 + v14);
      if (v16)
      {
        goto LABEL_50;
      }

      v17 = v12 - v14;
      v53 = v12;
      if (v12 > v14)
      {
        if ((v12 - v14) < 0)
        {
          goto LABEL_53;
        }

        v18 = v3;
        v3 = v10;
        v10 = v8;
        v19 = v11;
        v20 = v2;
        v21 = *(v13 + 2);
        v2 = (v21 - v17);
        if (v21 < v17)
        {
          goto LABEL_54;
        }

        if ((v21 - v17) < 0)
        {
          goto LABEL_55;
        }

        v52 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v2 > *(v13 + 3) >> 1)
        {
          if (v21 <= v2)
          {
            v23 = v2;
          }

          else
          {
            v23 = v21;
          }

          v13 = sub_26BE29A50(isUniquelyReferenced_nonNull_native, v23, 1, v13);
        }

        memmove(v2 + (v13 + 32), &v13[v21 + 32], *(v13 + 2) - v21);
        *(v13 + 2) -= v52;
        v2 = v20;
        v11 = v19;
        v8 = v10;
        LODWORD(v10) = v3;
        v3 = v18;
      }

      v24 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v54) = v13;
      if ((v24 & 1) == 0)
      {
        v13 = sub_26BE588C0(v13);
        *(v3 + v54) = v13;
      }

      v25 = v2;
      sub_26C009DCC();
      *(v3 + v54) = v13;
      if (v2)
      {
        return;
      }

      v26 = *(v3 + v8[14]);
      v27 = [v26 write:v13 + 32 maxLength:*(v13 + 2)];
      v28 = v27;
      if ((v27 & 0x8000000000000000) != 0)
      {
        v38 = [v26 streamError];
        v39 = v38;
        v40 = sub_26C009A3C();
        v41 = sub_26C00AA0C();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 134218498;
          *(v42 + 4) = v15;
          *(v42 + 12) = 2048;
          *(v42 + 14) = v28;
          *(v42 + 22) = 2112;
          if (v38)
          {
            v44 = v39;
            v45 = _swift_stdlib_bridgeErrorToNSError();
            v46 = v45;
          }

          else
          {
            v45 = 0;
            v46 = 0;
          }

          *(v42 + 24) = v45;
          *v43 = v46;
          _os_log_impl(&dword_26BDFE000, v40, v41, " OutputStreamError reported (readBytes: %ld writtenBytes %ld) in encryptAndMACPlaintext as: %@", v42, 0x20u);
          sub_26BE2E258(v43, &qword_28045FB40, &unk_26C021280);
          MEMORY[0x26D69A4E0](v43, -1, -1);
          MEMORY[0x26D69A4E0](v42, -1, -1);
        }

        if (!v38)
        {
          v47 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v48 = sub_26C00A45C();
          [v47 initWithDomain:v48 code:1 userInfo:0];
        }

        swift_willThrow();
        return;
      }

      if (HIDWORD(v27))
      {
        goto LABEL_51;
      }

      v16 = __CFADD__(v11, v27);
      v11 += v27;
      if (v16)
      {
        goto LABEL_52;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
      v2 = &qword_28045E228;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
      sub_26BE13630(&qword_28045FAA0, &qword_28045E228, &qword_26C00CDD0, MEMORY[0x277CC9C20]);
      sub_26C009E3C();
      v29 = *(v13 + 2);
      v30 = v53 - v29;
      v9 = v51;
      if (v53 > v29)
      {
        if ((v53 - v29) < 0)
        {
          goto LABEL_56;
        }

        v31 = sub_26C00A74C();
        *(v31 + 16) = v30;
        bzero((v31 + 32), v30);
        sub_26BE29964(v31);
      }

      v2 = v25;
      v8 = v50;
      if (([v51 hasBytesAvailable] & 1) == 0)
      {
        break;
      }
    }
  }

  else
  {
    v11 = 0;
    LODWORD(v10) = 0;
  }

  v32 = sub_26C009A3C();
  v33 = sub_26C00AA1C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 4) = v10;
    _os_log_impl(&dword_26BDFE000, v32, v33, "EncryptAndMac Encrypted %u bytes of plaintext read", v34, 8u);
    MEMORY[0x26D69A4E0](v34, -1, -1);
  }

  v35 = sub_26C009A3C();
  v36 = sub_26C00AA1C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v35, v36, "EncryptAndMac Wrote %u bytes to output stream", v37, 8u);
    MEMORY[0x26D69A4E0](v37, -1, -1);
  }
}

void sub_26BFA3124()
{
  v2 = v1;
  v3 = v0;
  if (qword_28045DF40 != -1)
  {
LABEL_49:
    swift_once();
  }

  v4 = sub_26C009A5C();
  __swift_project_value_buffer(v4, qword_280478E70);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();
  v45 = v2;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26BDFE000, v5, v6, "StartingEncryptAndMacPadding", v7, 2u);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v2 = *(v3 + 4);
  if (v2)
  {
    v8 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
    v9 = *(v8 + 48);
    v10 = *(v3 + *(v8 + 44));
    v44 = v8;
    sub_26BE13630(&qword_28045FDA8, &qword_28045E228, &qword_26C00CDD0, MEMORY[0x277CC9C30]);
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290, MEMORY[0x277D83D30]);
    v11 = 0;
    v12 = 0;
    v41 = v10;
    v42 = v2;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26C008F6C();
      v13 = v2 - v12;
      if (v2 < v12)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v14 = v9;
      v15 = *(v3 + v9);
      v16 = v13 >= v10;
      if (v13 >= v10)
      {
        v13 = v10;
      }

      v43 = v13;
      if (!v16)
      {
        v17 = v10 - v13;
        v18 = *(v15 + 2);
        v2 = v18 - v17;
        if (v18 < v17)
        {
          goto LABEL_47;
        }

        if ((v18 - v17) < 0)
        {
          goto LABEL_48;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v2 > *(v15 + 3) >> 1)
        {
          if (v18 <= v2)
          {
            v20 = v18 - v17;
          }

          else
          {
            v20 = v18;
          }

          v15 = sub_26BE29A50(isUniquelyReferenced_nonNull_native, v20, 1, v15);
        }

        memmove(&v15[v2 + 32], &v15[v18 + 32], *(v15 + 2) - v18);
        *(v15 + 2) -= v17;
        *(v3 + v14) = v15;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_26BE588C0(v15);
      }

      sub_26C009DCC();
      *(v3 + v14) = v15;
      if (v45)
      {
        return;
      }

      v21 = *(v3 + *(v44 + 56));
      v22 = [v21 write:v15 + 32 maxLength:*(v15 + 2)];
      v23 = v22;
      if ((v22 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v22))
      {
        goto LABEL_44;
      }

      v16 = __CFADD__(v11, v22);
      v11 += v22;
      if (v16)
      {
        goto LABEL_45;
      }

      v2 = *(v44 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
      sub_26BE13630(&qword_28045FAA0, &qword_28045E228, &qword_26C00CDD0, MEMORY[0x277CC9C20]);
      sub_26C009E3C();
      v16 = __CFADD__(v12, v43);
      v12 += v43;
      if (v16)
      {
        goto LABEL_46;
      }

      v2 = v42;
      v9 = v14;
      v10 = v41;
      if (v12 >= v42)
      {
        goto LABEL_29;
      }
    }

    v30 = [v21 streamError];
    v31 = v30;
    v32 = sub_26C009A3C();
    v33 = sub_26C00AA0C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 134218242;
      *(v34 + 4) = v23;
      *(v34 + 12) = 2112;
      if (v30)
      {
        v36 = v31;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        v38 = v37;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      *(v34 + 14) = v37;
      *v35 = v38;
      _os_log_impl(&dword_26BDFE000, v32, v33, " OutputStreamError reported (writtenBytes %ld)  in encryptAndMACPlaintext as: %@", v34, 0x16u);
      sub_26BE2E258(v35, &qword_28045FB40, &unk_26C021280);
      MEMORY[0x26D69A4E0](v35, -1, -1);
      MEMORY[0x26D69A4E0](v34, -1, -1);
    }

    if (!v30)
    {
      v39 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v40 = sub_26C00A45C();
      [v39 initWithDomain:v40 code:1 userInfo:0];
    }

    swift_willThrow();
  }

  else
  {
    v11 = 0;
    v12 = 0;
LABEL_29:
    v24 = sub_26C009A3C();
    v25 = sub_26C00AA1C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = v12;
      _os_log_impl(&dword_26BDFE000, v24, v25, "encryptAndMac Padded %u bytes of padding planned", v26, 8u);
      MEMORY[0x26D69A4E0](v26, -1, -1);
    }

    v27 = sub_26C009A3C();
    v28 = sub_26C00AA1C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = v11;
      _os_log_impl(&dword_26BDFE000, v27, v28, "encryptAndMac Wrote %u bytes", v29, 8u);
      MEMORY[0x26D69A4E0](v29, -1, -1);
    }
  }
}

void sub_26BFA3738()
{
  v2 = v0;
  v3 = sub_26BFA3C78();
  v5 = v4;
  v6 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  v7 = sub_26C009DFC();
  if (v1)
  {
    sub_26BE00258(v3, v5);
  }

  else
  {
    v9 = v7;
    v10 = v3;
    v11 = v8;
    sub_26BE00258(v10, v5);
    v26 = sub_26BF974A8(v9, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
    sub_26BE13630(&qword_28045FAA0, &qword_28045E228, &qword_26C00CDD0, MEMORY[0x277CC9C20]);
    sub_26C009E3C();
    v12 = *(v2 + *(v6 + 56));
    v13 = [v12 write:v26 + 4 maxLength:v26[2]];

    if (v13 < 1)
    {
      v14 = [v12 streamError];
      if (qword_28045DF40 != -1)
      {
        swift_once();
      }

      v15 = sub_26C009A5C();
      __swift_project_value_buffer(v15, qword_280478E70);
      v16 = v14;
      v17 = sub_26C009A3C();
      v18 = sub_26C00AA0C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 134218242;
        *(v19 + 4) = v13;
        *(v19 + 12) = 2112;
        if (v14)
        {
          v21 = v16;
          v22 = _swift_stdlib_bridgeErrorToNSError();
          v23 = v22;
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        *(v19 + 14) = v22;
        *v20 = v23;
        _os_log_impl(&dword_26BDFE000, v17, v18, " OutputStreamError reported(writtenBytes %ld) in encryptAndMACPlaintext as: %@", v19, 0x16u);
        sub_26BE2E258(v20, &qword_28045FB40, &unk_26C021280);
        MEMORY[0x26D69A4E0](v20, -1, -1);
        MEMORY[0x26D69A4E0](v19, -1, -1);
      }

      if (![v12 streamError])
      {
        v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v25 = sub_26C00A45C();
        [v24 initWithDomain:v25 code:1 userInfo:0];
      }

      swift_willThrow();
    }
  }
}

uint64_t sub_26BFA3A6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FD90, &unk_26C021260);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - v2;
  type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
  sub_26C009E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009D8C();
  v4 = sub_26BE12418(v14[1]);
  v6 = v5;

  result = (*(v1 + 8))(v3, v0);
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      v11 = __OFSUB__(v9, v10);
      v12 = v9 - v10;
      if (v11)
      {
        __break(1u);
        goto LABEL_14;
      }

      if (v12 == 32)
      {
        return v4;
      }
    }

LABEL_8:
    sub_26BF7EDDC();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();
    sub_26BE00258(v4, v6);
    return v4;
  }

  if (!v8)
  {
    if (BYTE6(v6) == 32)
    {
      return v4;
    }

    goto LABEL_8;
  }

  if (!__OFSUB__(HIDWORD(v4), v4))
  {
    if (HIDWORD(v4) - v4 == 32)
    {
      return v4;
    }

    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_26BFA3C78()
{
  v13[2] = *MEMORY[0x277D85DE8];
  __src = bswap32(*v0);
  v1 = sub_26BF2EA50(&__src, v12);
  v3 = v2 & 0xFFFFFFFFFFFFFFLL;
  v10 = bswap32(v0[1]);
  v4 = sub_26BF2EA50(&v10, &__src);
  v13[0] = v1;
  v13[1] = v3;
  v12[3] = MEMORY[0x277CC9318];
  v12[4] = MEMORY[0x277CC9300];
  v12[0] = v4;
  v12[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  v6 = __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x277CC9318]);
  v7 = *v6;
  v8 = v6[1];
  sub_26BE00608(v1, v3);
  sub_26BE121A0(v7, v8, v13);
  sub_26BE00258(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v13[0];
}

uint64_t RCSFileAttachmentCrypto.RCSFileDecryption.plaintextCount.setter(uint64_t a1)
{
  result = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t RCSFileAttachmentCrypto.RCSFileDecryption.init(key:iv:tag:inputEncryptedFile:outputDecryptedFile:fileName:plaintextCountHint:internalBufferSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unint64_t a10, unint64_t a11, int a12)
{
  v55 = a1;
  v56 = a7;
  v52 = a5;
  v53 = a2;
  v54 = a3;
  v50 = a9;
  v16 = sub_26C009C8C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26BFA63D8(a6);
  v51 = v12;
  if (v12)
  {
    sub_26BE00258(a8, a10);
    sub_26BE00258(a4, v52);
    sub_26BE00258(v53, v54);
    v21 = sub_26C008FDC();
    v22 = *(*(v21 - 8) + 8);
    v22(v56, v21);
    v22(a6, v21);
    return (*(v17 + 8))(v55, v16);
  }

  else
  {
    v43 = v20;
    v44 = v19;
    v45 = a10;
    v46 = a8;
    v47 = a4;
    v48 = v17;
    v49 = v16;
    sub_26C008FBC();
    v24 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
    v25 = sub_26C00A45C();

    v26 = [v24 initWithFileAtPath_];

    if (v26)
    {
      [v26 open];
      sub_26C008FBC();
      v27 = objc_allocWithZone(MEMORY[0x277CBEB78]);
      v28 = sub_26C00A45C();

      v29 = [v27 initToFileAtPath:v28 append:0];

      v30 = v48;
      v31 = v45;
      if (v29)
      {
        [v29 open];
        v32 = v44;
        v33 = v55;
        (*(v30 + 16))(v44, v55, v49);
        v42 = a11 | ((HIDWORD(a11) & 1) << 32);
        sub_26BF9F87C(v32, v53, v54, v47, v52, v26, v43, v29, v50, v46, v31, v42, SBYTE4(v42), a12);
        v34 = sub_26C008FDC();
        v35 = *(*(v34 - 8) + 8);
        v35(v56, v34);
        v35(a6, v34);
        return (*(v30 + 8))(v33, v49);
      }

      else
      {
        sub_26BF7EDDC();
        swift_allocError();
        *v39 = 12;
        swift_willThrow();

        sub_26BE00258(v46, v31);
        sub_26BE00258(v47, v52);
        sub_26BE00258(v53, v54);
        v40 = sub_26C008FDC();
        v41 = *(*(v40 - 8) + 8);
        v41(v56, v40);
        v41(a6, v40);
        return (*(v30 + 8))(v55, v49);
      }
    }

    else
    {
      sub_26BF7EDDC();
      swift_allocError();
      *v36 = 13;
      swift_willThrow();
      sub_26BE00258(v46, v45);
      sub_26BE00258(v47, v52);
      sub_26BE00258(v53, v54);
      v37 = sub_26C008FDC();
      v38 = *(*(v37 - 8) + 8);
      v38(v56, v37);
      v38(a6, v37);
      return (*(v48 + 8))(v55, v49);
    }
  }
}

unint64_t sub_26BFA4308()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FD90, &unk_26C021260);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v39 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v7 = *(v2 + *(v39 + 80));
  v34 = v7;
  v32 = v6;
  if (v7)
  {
    v8 = sub_26C00A74C();
    *(v8 + 16) = v7;
    bzero((v8 + 32), v7);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v2 + *(v39 + 72));
  v10 = sub_26C00A88C();
  v11 = [v9 setProperty:v10 forKey:*MEMORY[0x277CBE748]];

  if (v11)
  {
    v29 = v1;
    v30 = v4;
    v31 = v3;
    v12 = 0;
    v33 = v9;
    while (1)
    {
      if (![v9 hasBytesAvailable] || v12 >= *v2)
      {
        v23 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
        v24 = v32;
        sub_26C009E4C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
        v25 = v31;
        sub_26C009D8C();
        v26 = sub_26BE12418(v35);
        v28 = v27;

        (*(v30 + 8))(v24, v25);
        LOBYTE(v2) = sub_26BE02DEC(v26, v28, *(v2 + *(v23 + 68)), *(v2 + *(v23 + 68) + 8));
        sub_26BE00258(v26, v28);

        return v2 & 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_26BE29A50(0, *(v8 + 16), 0, v8);
      }

      v13 = v34;
      v14 = v2;
      result = [v9 read:v8 + 32 maxLength:v34];
      v16 = result;
      if (result == v13)
      {
        v35 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
        v17 = &qword_28045E228;
        v18 = &qword_26C00CDD0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
        v19 = MEMORY[0x277CC9C20];
        v20 = &qword_28045FAA0;
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (*(v8 + 16) < result)
        {
          goto LABEL_24;
        }

        v35 = v8;
        v36 = v8 + 32;
        v37 = 0;
        v38 = (2 * result) | 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
        v17 = &qword_28045E410;
        v18 = &qword_26C021270;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
        v19 = MEMORY[0x277CC9ED8];
        v20 = &unk_28045FD98;
      }

      sub_26BE13630(v20, v17, v18, v19);
      v2 = v14;
      result = sub_26C009E3C();
      if (HIDWORD(v16))
      {
        break;
      }

      v21 = __CFADD__(v12, v16);
      v12 += v16;
      v9 = v33;
      if (v21)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_19:
    sub_26BF7EDDC();
    swift_allocError();
    *v22 = 7;
    swift_willThrow();

    return v2 & 1;
  }

  return result;
}

unint64_t sub_26BFA473C()
{
  v4 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v5 = *v0;
  v6 = (*v0 - 8);
  if (*v0 >= 8u)
  {
    v2 = v4;
    v7 = *(v0 + *(v4 + 72));
    v8 = sub_26C00A88C();
    v9 = [v7 setProperty:v8 forKey:*MEMORY[0x277CBE748]];

    if (v9)
    {
      v3 = v0;
      sub_26BFA4E10(v5 - 8);
      if (v1)
      {
        return v10;
      }

      v6 = sub_26C00A74C();
      *(v6 + 16) = 8;
      *(v6 + 32) = 0;
      if ([v7 read:v6 + 32 maxLength:8] == 8)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_6;
        }

        goto LABEL_25;
      }

      sub_26BF7EDDC();
      swift_allocError();
      v12 = 11;
    }

    else
    {
      sub_26BF7EDDC();
      swift_allocError();
      v12 = 7;
    }

    *v11 = v12;
    swift_willThrow();
    return v10;
  }

  __break(1u);
LABEL_25:
  v6 = sub_26BE588C0(v6);
LABEL_6:
  sub_26C009DBC();
  if (v1)
  {

    return v10;
  }

  v14 = bswap32(*(v6 + 32));
  v15 = v3 + v2[8];
  *v15 = v14;
  v15[4] = 0;
  v16 = bswap32(*(v6 + 36));
  v17 = v3 + v2[10];
  *v17 = v16;
  v17[4] = 0;
  v18 = v3 + v2[9];
  if ((v18[4] & 1) == 0 && *v18 != v14 || (v14 & 0x80000000) != 0)
  {

    return 0;
  }

  result = sub_26C0092DC();
  if ((v19 & 1) == 0)
  {
    v20 = result;

    if (HIDWORD(v20))
    {
      __break(1u);
    }

    else if (v20 >= v14)
    {
      if (v16 == v20 - v14)
      {
        v21 = v14 + v16;
        if (!__CFADD__(v14, v16))
        {
          v22 = __CFADD__(v21, 8);
          v23 = v21 + 8;
          if (!v22)
          {
            return v23 == v5;
          }

          goto LABEL_29;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      return 0;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_26BFA499C()
{
  v3 = v0;
  v4 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v5 = *(v0 + v4[20]);
  if (v5)
  {
    v6 = sub_26C00A74C();
    *(v6 + 16) = v5;
    bzero((v6 + 32), v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v38 = v6;
  v7 = v3 + v4[8];
  if (*(v7 + 4))
  {
    sub_26BF7EDDC();
    swift_allocError();
    v9 = 16;
LABEL_13:
    *v8 = v9;
    swift_willThrow();
    goto LABEL_14;
  }

  v10 = *v7;
  v2 = *(v3 + v4[18]);
  v11 = sub_26C00A88C();
  v36 = v2;
  v12 = [v2 setProperty:v11 forKey:*MEMORY[0x277CBE748]];

  if (!v12)
  {
    sub_26BF7EDDC();
    swift_allocError();
    v9 = 7;
    goto LABEL_13;
  }

  sub_26BFA4E10(v10);
  if (v1)
  {
LABEL_14:

    return v2 & 1;
  }

  v13 = v2;
  result = [v2 hasBytesAvailable];
  v15 = 0;
  LOBYTE(v2) = 1;
  if (!result)
  {
LABEL_9:
    v16 = v3 + v4[10];
    if ((*(v16 + 4) & 1) == 0 && v15 == *v16)
    {
      goto LABEL_14;
    }

    sub_26BF7EDDC();
    swift_allocError();
    v9 = 11;
    goto LABEL_13;
  }

  while (1)
  {
    v17 = (v3 + v4[10]);
    if (v17[1])
    {
      break;
    }

    v18 = *v17;
    v19 = v18 >= v15;
    v20 = v18 - v15;
    if (v20 == 0 || !v19)
    {
      goto LABEL_9;
    }

    v37 = v15;
    if (v20 >= v5)
    {
      v21 = v5;
    }

    else
    {
      v21 = v20;
    }

    v22 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_26BE29A50(0, *(v38 + 16), 0, v38);
    }

    result = [v13 read:v22 + 32 maxLength:v21];
    if (result != v5)
    {
      v23 = v5 - result;
      if (__OFSUB__(v5, result))
      {
        goto LABEL_55;
      }

      if (v23)
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        v24 = *(v22 + 2);
        v25 = v24 - v23;
        if (v24 < v23)
        {
          goto LABEL_58;
        }

        if ((v24 - v23) < 0)
        {
          goto LABEL_59;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v25 > *(v22 + 3) >> 1)
        {
          if (v24 <= v25)
          {
            v27 = v24 - v23;
          }

          else
          {
            v27 = v24;
          }

          v22 = sub_26BE29A50(isUniquelyReferenced_nonNull_native, v27, 1, v22);
        }

        memmove(&v22[v25 + 32], &v22[v24 + 32], *(v22 + 2) - v24);
        *(v22 + 2) -= v23;
        v13 = v36;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_26BE588C0(v22);
    }

    v28 = v22 + 32;
    result = sub_26C009DBC();
    v38 = v22;
    v29 = *(v22 + 2);
    if (HIDWORD(v29))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      break;
    }

    v15 = v37 + v29;
    if (__CFADD__(v37, v29))
    {
      goto LABEL_54;
    }

    if (v2)
    {
      v30 = 0;
      do
      {
        LOBYTE(v2) = v29 == v30;
        if (v29 == v30)
        {
          break;
        }
      }

      while (!v28[v30++]);
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    if (v5 > v29)
    {
      v32 = v5 - v29;
      if ((v5 - v29) < 0)
      {
        goto LABEL_56;
      }

      v33 = MEMORY[0x277D84F90];
      if (v5 != v29)
      {
        v34 = v37 + v29;
        v35 = sub_26C00A74C();
        *(v35 + 16) = v32;
        bzero((v35 + 32), v32);
        v33 = v35;
        v15 = v34;
      }

      sub_26BE29964(v33);
    }

    result = [v13 hasBytesAvailable];
    if ((result & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void static RCSFileAttachmentCrypto.setPositionInInputStream(_:posn:)(void *a1, uint64_t a2)
{
  v3 = sub_26C00A88C();
  LODWORD(a1) = [a1 setProperty:v3 forKey:*MEMORY[0x277CBE748]];

  if (!a1)
  {
    sub_26BF7EDDC();
    swift_allocError();
    *v4 = 7;
    swift_willThrow();
  }
}

void sub_26BFA4E10(unsigned int a1)
{
  v48[2] = *MEMORY[0x277D85DE8];
  v42 = sub_26C009DAC();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C009C8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C009E0C();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v43 = bswap32(a1 >> 4);
  v11 = sub_26BE098EC(&v43, &v44);
  v13 = v12;
  v14 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  (*(v5 + 16))(v7, v1 + v14[6], v4);
  v15 = v14[7];
  v38 = v1;
  v16 = (v1 + v15);
  v17 = v16[1];
  v48[0] = *v16;
  v18 = v48[0];
  v48[1] = v17;
  v46 = MEMORY[0x277CC9318];
  v47 = MEMORY[0x277CC9300];
  v44 = v11;
  v45 = v13;
  v19 = __swift_project_boxed_opaque_existential_1(&v44, MEMORY[0x277CC9318]);
  v21 = *v19;
  v20 = v19[1];
  v22 = v18;
  v23 = v13;
  v24 = v11;
  sub_26BE00608(v22, v17);
  sub_26BE00608(v11, v23);
  v25 = v41;
  sub_26BE121A0(v21, v20, v48);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  (*(v40 + 104))(v39, *MEMORY[0x277CC53E8], v42);
  sub_26C009DDC();
  if (v25 || (v28 = v37 & 0xF, (*(v35 + 40))(v38 + v14[14], v10, v36), !v28))
  {
    v26 = v24;
    v27 = v23;
  }

  else
  {
    v44 = sub_26BE125AC(v28);
    v45 = v29;
    sub_26BFA5C8C(&v44, 0);
    v30 = v44;
    v31 = v45;
    v32 = sub_26C009DEC();
    sub_26BE00258(v32, v33);
    sub_26BE00258(v24, v23);
    v26 = v30;
    v27 = v31;
  }

  sub_26BE00258(v26, v27);
}

void sub_26BFA51B0(uint64_t a1)
{
  v2 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  [*(a1 + *(v2 + 72)) close];
  [*(a1 + *(v2 + 76)) close];
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478E70);
  oslog = sub_26C009A3C();
  v4 = sub_26C00AA1C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26BDFE000, oslog, v4, "exiting decryptCiphertext", v5, 2u);
    MEMORY[0x26D69A4E0](v5, -1, -1);
  }
}

uint64_t sub_26BFA52D4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C009C8C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = sub_26BFA6140(a1, 0x20uLL);
    v12 = v9;
    sub_26C009C5C();
    v11 = sub_26BFA6140(a1 + 32, 0x20uLL);
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB50, &unk_26C020ED0);
    sub_26C009C5C();
    return (*(v5 + 32))(a2, v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BFA5434(uint64_t result, uint64_t a2)
{
  v3 = OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos;
  v4 = *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos);
  if (__OFADD__(v4, a2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data);
  v6 = *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 >= v4 + a2)
  {
    v9 = v4 + a2;
  }

  else
  {
    v9 = v8;
  }

  if (v9 < v4)
  {
    goto LABEL_17;
  }

  sub_26BE00608(*(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data), *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data + 8));
  sub_26C0090CC();
  sub_26BE00258(v5, v6);
  v10 = v9 - v4;
  if (__OFSUB__(v9, v4))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(v2 + v3);
  v12 = __OFADD__(v11, v10);
  v13 = v11 + v10;
  if (!v12)
  {
    *(v2 + v3) = v13;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_26BFA55E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C00A48C();
  v6 = v5;
  if (v4 == sub_26C00A48C() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_26C00AF2C();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  sub_26BE2E1F0(a1, v12, &qword_28045FB48, &qword_26C01FCF8);
  if (v13)
  {
    if (swift_dynamicCast())
    {
      *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos) = v11;
      return 1;
    }
  }

  else
  {
    sub_26BE2E258(v12, &qword_28045FB48, &qword_26C01FCF8);
  }

  return 0;
}

uint64_t sub_26BFA57B8@<X0>(void *a2@<X8>)
{
  v4 = sub_26C00A48C();
  v6 = v5;
  if (v4 == sub_26C00A48C() && v6 == v7)
  {

    goto LABEL_13;
  }

  v9 = sub_26C00AF2C();

  if (v9)
  {
LABEL_13:
    v17 = *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos);
    a2[3] = MEMORY[0x277D83B88];
    *a2 = v17;
    return result;
  }

  v11 = sub_26C00A48C();
  v13 = v12;
  if (v11 == sub_26C00A48C() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_26C00AF2C();

    if ((v16 & 1) == 0)
    {
      a2[3] = MEMORY[0x277D839B0];
      *a2 = 0;
      return result;
    }
  }

  v18 = v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data;
  v19 = *(v2 + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data);
  v20 = *(v18 + 8);
  v21 = objc_allocWithZone(MEMORY[0x277CBEA90]);
  sub_26BE00608(v19, v20);
  v22 = sub_26C0090DC();
  v23 = [v21 initWithData_];

  sub_26BE00258(v19, v20);
  result = sub_26BFA715C(0, &qword_28045E438, 0x277CBEA90);
  a2[3] = result;
  *a2 = v23;
  return result;
}

id sub_26BFA5BA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BFA5BEC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_26C00AB8C();
LABEL_9:
  result = sub_26C00AC4C();
  *v2 = result;
  return result;
}

uint64_t *sub_26BFA5C8C(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_26BE00258(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_26C00BBD0;
      sub_26BE00258(0, 0xC000000000000000);
      result = sub_26BFA5EF4(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_26BE00258(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_26BE00258(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_26C00BBD0;
  sub_26BE00258(0, 0xC000000000000000);
  sub_26C008FEC();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_26C008E9C();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_26C008ECC();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_26C008EBC();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_26BFA5EF4(int *a1, int a2)
{
  result = sub_26C00900C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_26C008E9C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_26C008ECC();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_26C008EBC();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_26BFA5F9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26C00AB8C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26C00AB8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26BE13630(&qword_28045FDB8, &qword_28045FDB0, &unk_26C021290, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FDB0, &unk_26C021290);
            v9 = sub_26C007760(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SecCertificate(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26BFA6140(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_26BF2EA50(a1, &a1[a2]);
  }

  sub_26C008EEC();
  swift_allocObject();
  sub_26C008E8C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_26C00904C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

__int128 *sub_26BFA61F0(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v27 = *a1;
  v10 = a1[2];
  v22 = a1[1];
  v11 = a1[3];
  v12 = a1[4];
  v23 = xmmword_26C00BBD0;
  v24 = 0;
  sub_26BE00608(a2, a3);
  sub_26BE00608(a4, a5);
  v13 = &v23;
  sub_26BFBD380(a2, a3, a4, a5);
  if (!v5)
  {
    v21 = v10;
    v14 = v23;
    v15 = *(&v23 + 1) >> 62;
    if ((*(&v23 + 1) >> 62) > 1)
    {
      if (v15 != 2)
      {
LABEL_11:
        v17 = sub_26C00909C();
        v19 = v18;
        sub_26BE00258(v14, *(&v14 + 1));
        LOBYTE(v23) = v27;
        *(&v23 + 1) = v22;
        v24 = v21;
        v25 = v11;
        v26 = v12;
        v13 = MLS.Cryptography.Ciphersuite.digestHash(_:)(v17, v19);
        sub_26BE00258(v17, v19);
        sub_26BE00258(a2, a3);
        sub_26BE00258(a4, a5);
        return v13;
      }

      v16 = *(v23 + 24);
    }

    else
    {
      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = v23 >> 32;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  sub_26BE00258(a2, a3);
  sub_26BE00258(a4, a5);
  sub_26BE00258(v23, *(&v23 + 1));
  return v13;
}

uint64_t sub_26BFA63D8(uint64_t a1)
{
  v3 = sub_26C008F5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FDA0, &qword_26C021278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C011280;
  v8 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v9 = v8;
  sub_26BEAF804(inited);
  swift_setDeallocating();
  sub_26BFA7324(inited + 32, type metadata accessor for URLResourceKey);
  sub_26C008F8C();

  if (!v1)
  {
    a1 = sub_26C008F4C();
    v11 = v10;
    (*(v4 + 8))(v6, v3);
    if (v11)
    {
      sub_26BF7EDDC();
      swift_allocError();
      *v12 = 14;
      swift_willThrow();
    }
  }

  return a1;
}

uint64_t sub_26BFA658C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26BFA65D8()
{
  result = qword_28045FD28;
  if (!qword_28045FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FD28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSFileAttachmentCrypto.RCSFAError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RCSFileAttachmentCrypto.RCSFAError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26BFA67A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26C009E0C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[12]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_26BFA68CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26C009E0C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[12]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_26BFA69DC(uint64_t a1)
{
  sub_26C009E0C();
  if (v1 <= 0x3F)
  {
    sub_26BFA6B10(319);
    if (v2 <= 0x3F)
    {
      sub_26BFA70B4(319, &qword_28045FD48, MEMORY[0x277D84B78], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_26BFA715C(319, &qword_28045FD50, 0x277CBEAE0);
        if (v4 <= 0x3F)
        {
          sub_26BFA715C(319, &qword_28045FD58, 0x277CBEB78);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26BFA6B10(uint64_t a1)
{
  if (!qword_28045FD40)
  {
    sub_26C00A30C();
    sub_26BFA658C(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v1 = sub_26C009E5C();
    if (!v2)
    {
      atomic_store(v1, &qword_28045FD40);
    }
  }
}

uint64_t sub_26BFA6BC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26C009C8C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_26C009E0C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[14];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FD60, &unk_26C021210);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[15];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[16];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[18]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_26BFA6D8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26C009C8C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_26C009E0C();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[14];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FD60, &unk_26C021210);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[15];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[18]) = (a2 - 1);
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[16];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

void sub_26BFA6F38(uint64_t a1)
{
  sub_26C009C8C();
  if (v1 <= 0x3F)
  {
    sub_26BFA70B4(319, &qword_28045FD08, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26C009E0C();
      if (v3 <= 0x3F)
      {
        sub_26BFA7104(319);
        if (v4 <= 0x3F)
        {
          sub_26BFA6B10(319);
          if (v5 <= 0x3F)
          {
            sub_26BFA715C(319, &qword_28045FD50, 0x277CBEAE0);
            if (v6 <= 0x3F)
            {
              sub_26BFA715C(319, &qword_28045FD58, 0x277CBEB78);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26BFA70B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26BFA7104(uint64_t a1)
{
  if (!qword_28045FD78)
  {
    sub_26C009E0C();
    v1 = sub_26C00AAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_28045FD78);
    }
  }
}

uint64_t sub_26BFA715C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26BFA71A4()
{
  result = qword_28045FD80;
  if (!qword_28045FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FD80);
  }

  return result;
}

unint64_t sub_26BFA71F8()
{
  result = qword_28045FD88;
  if (!qword_28045FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FD88);
  }

  return result;
}

uint64_t sub_26BFA724C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFA72BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFA7324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFA7388@<X0>(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BE58870(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 4 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 36), 4 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26BFA7414@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BE58898(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[2 * a1];
    v9 = *(v8 + 8);
    v8 += 4;
    v10 = v7 - 1;
    v11 = v8[1];
    *a2 = v9;
    *(a2 + 8) = v11;
    result = memmove(v8, v8 + 2, 16 * (v10 - a1));
    v5[2] = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26BFA74A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BE588D4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26BFA7534@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BE588FC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s14descr287CB9999C9AttributeVMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_26BFA77EC(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t MLS.FilteredDirectPath.pop()(_DWORD *a1)
{
  if (*(*v1 + 16))
  {
    sub_26BFA7764(&v6);
    result = v7;
    if (v7)
    {
      v4 = v6;
    }

    else
    {

      sub_26BFA7414(*(*v1 + 16) - 1, &v8);
      v4 = v8;
      result = v9;
    }

    *a1 = v4;
  }

  else
  {
    sub_26BE8A8B8();
    swift_allocError();
    *v5 = 28;
    return swift_willThrow();
  }

  return result;
}

uint64_t MLS.FilteredDirectPath.insert(node:resolution:)(int *a1, uint64_t a2)
{
  v3 = *a1;

  sub_26BE59EC8(0, 0, v3, a2);
}

uint64_t sub_26BFA7764@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = v3[2];
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = &v3[2 * v6];
      v8 = *(v7 + 8);
      v9 = v7[5];
      *a1 = v8;
      *(a1 + 8) = v9;
      v3[2] = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_26BE58898(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFA77EC(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr287CB9999C9AttributeVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void P256SigningSEPPrivateKey.init(data:ciphersuite:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26C00A18C();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = type metadata accessor for P256VerificationPublicKey(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C009D3C();
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 32);
  if (*a3 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v34 = 131073;
    *(v34 + 112) = 10;
    swift_willThrow();
    goto LABEL_9;
  }

  v41 = a1;
  v42 = a2;
  v22 = *(a3 + 8);
  v23 = *(a3 + 24);
  if (qword_28045DFE0 != -1)
  {
    v39 = v17;
    v37 = v18;
    v38 = v22;
    swift_once();
    v22 = v38;
    v18 = v37;
    v17 = v39;
  }

  if ((byte_28045FDC0 & 1) == 0)
  {

    sub_26BE01654();
    swift_allocError();
    *v35 = 33;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    *(v35 + 40) = 0u;
    *(v35 + 56) = 0u;
    *(v35 + 72) = 0u;
    *(v35 + 88) = 0u;
    *(v35 + 104) = 0;
    *(v35 + 112) = 23;
    swift_willThrow();
    sub_26BE00258(v41, v42);
    return;
  }

  *&v38 = v18;
  v39 = v17;
  *a4 = 1;
  *(a4 + 8) = v22;
  *(a4 + 24) = v23;
  *(a4 + 32) = v21;
  a1 = v41;
  a2 = v42;
  sub_26BE00608(v41, v42);
  v24 = v47;
  sub_26C009D1C();
  if (v24)
  {
LABEL_9:
    sub_26BE00258(a1, a2);

    return;
  }

  v25 = type metadata accessor for P256SigningSEPPrivateKey(0);
  (*(v38 + 32))(a4 + v25[5], v20, v39);
  v26 = sub_26C009CAC();
  v27 = MEMORY[0x26D698C20](v26);
  v29 = v28;
  (*(v43 + 8))(v12, v44);
  if (*a4 == 1)
  {
    v30 = *(a4 + 24);
    v31 = *(a4 + 32);
    v32 = &v15[*(v13 + 20)];
    *v32 = 1;
    *(v32 + 8) = *(a4 + 8);
    *(v32 + 3) = v30;
    *(v32 + 4) = v31;
    v45 = v27;
    v46 = v29;

    v33 = v40;
    sub_26C00A17C();
    (*(v43 + 32))(v15, v33, v44);
    sub_26BE00258(v41, v42);
    sub_26BFAD6EC(v15, a4 + v25[7], type metadata accessor for P256VerificationPublicKey);
    *(a4 + v25[6]) = 1;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v36 = 131073;
    *(v36 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(v27, v29);
    sub_26BE00258(v41, v42);

    (*(v38 + 8))(a4 + v25[5], v39);
  }
}

uint64_t P256SigningPrivateKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = sub_26C00A18C();
  v47 = *(v44 - 8);
  v9 = MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = type metadata accessor for P256VerificationPublicKey(0);
  MEMORY[0x28223BE20](v13);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C00A0EC();
  v16 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 + 32);
  if (*a3 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v33 = 131073;
    *(v33 + 112) = 10;
    swift_willThrow();
    goto LABEL_6;
  }

  v40 = v17;
  v41 = v16;
  v21 = *(a3 + 24);
  *a4 = 1;
  *(a4 + 8) = *(a3 + 8);
  *(a4 + 24) = v21;
  *(a4 + 32) = v20;
  v45 = a1;
  v46 = a2;
  sub_26BE00608(a1, a2);
  sub_26C00A0CC();
  if (v4)
  {
LABEL_6:
    sub_26BE00258(a1, a2);
  }

  v39 = a2;
  v22 = type metadata accessor for P256SigningPrivateKey(0);
  (*(v40 + 32))(a4 + *(v22 + 20), v19, v41);
  v23 = sub_26C00A04C();
  v24 = MEMORY[0x26D698C20](v23);
  v26 = v25;
  v27 = v44;
  (*(v47 + 8))(v12, v44);
  if (*a4 == 1)
  {
    v38 = v22;
    v28 = *(a4 + 24);
    v29 = *(a4 + 32);
    v30 = v42;
    v31 = &v42[*(v13 + 20)];
    *v31 = 1;
    *(v31 + 8) = *(a4 + 8);
    *(v31 + 3) = v28;
    *(v31 + 4) = v29;
    v45 = v24;
    v46 = v26;

    v32 = v43;
    sub_26C00A17C();
    (*(v47 + 32))(v30, v32, v27);
    sub_26BE00258(a1, v39);
    v35 = v38;
    result = sub_26BFAD6EC(v30, a4 + *(v38 + 28), type metadata accessor for P256VerificationPublicKey);
    *(a4 + *(v35 + 24)) = 0;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v34 = 131073;
    *(v34 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(v24, v26);
    sub_26BE00258(a1, v39);

    return (*(v40 + 8))(a4 + *(v22 + 20), v41);
  }

  return result;
}

uint64_t P256VerificationPublicKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_26C00A18C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 32);
  if (*a3 == 1)
  {
    v22 = v11;
    v15 = *(a3 + 24);
    v19 = *(a3 + 8);
    v16 = a4 + *(type metadata accessor for P256VerificationPublicKey(0) + 20);
    *v16 = 1;
    *(v16 + 8) = v19;
    *(v16 + 24) = v15;
    *(v16 + 32) = v14;
    v20 = a1;
    v21 = a2;
    sub_26C00A17C();
    if (!v4)
    {
      return (*(v10 + 32))(a4, v13, v22);
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v18 = 131073;
    *(v18 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(a1, a2);
  }
}

uint64_t P256SigningPrivateKey.init(ciphersuite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00A18C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = type metadata accessor for P256VerificationPublicKey(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 32);
  if (*a1 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v27 = 131073;
    *(v27 + 112) = 10;
    swift_willThrow();
  }

  v15 = *(a1 + 24);
  *a2 = 1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;
  v32 = type metadata accessor for P256SigningPrivateKey(0);
  v16 = *(v32 + 20);
  sub_26C00A0DC();
  v17 = sub_26C00A04C();
  v18 = MEMORY[0x26D698C20](v17);
  v19 = v5;
  v20 = v18;
  v22 = v21;
  v33 = v19;
  (*(v19 + 8))(v10, v4);
  if (*a2 == 1)
  {
    v23 = *(a2 + 24);
    v24 = *(a2 + 32);
    v25 = &v13[*(v11 + 20)];
    *v25 = 1;
    *(v25 + 8) = *(a2 + 8);
    *(v25 + 3) = v23;
    *(v25 + 4) = v24;
    v34 = v20;
    v35 = v22;

    v26 = v36;
    sub_26C00A17C();
    if (!v26)
    {
      (*(v33 + 32))(v13, v8, v4);
      v31 = v32;
      result = sub_26BFAD6EC(v13, a2 + *(v32 + 28), type metadata accessor for P256VerificationPublicKey);
      *(a2 + *(v31 + 24)) = 0;
      return result;
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v29 = 131073;
    *(v29 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(v20, v22);
  }

  v30 = sub_26C00A0EC();
  return (*(*(v30 - 8) + 8))(a2 + v16, v30);
}

uint64_t P256SigningSEPPrivateKey.init(ciphersuite:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v48 = a2;
  v3 = sub_26C00A18C();
  v44 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = type metadata accessor for P256VerificationPublicKey(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C009D3C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 32);
  if (*a1 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v24 = 131073;
    *(v24 + 112) = 10;
    swift_willThrow();
  }

  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  if (qword_28045DFE0 != -1)
  {
    v43 = v14;
    v42 = v18;
    swift_once();
    v18 = v42;
    v14 = v43;
  }

  if (byte_28045FDC0)
  {
    *&v42 = v13;
    v43 = v14;
    v20 = v48;
    *v48 = 1;
    *(v20 + 8) = v18;
    *(v20 + 3) = v19;
    *(v20 + 4) = v17;
    v21 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
    if (!v21)
    {
      sub_26BE01654();
      swift_allocError();
      *v27 = 34;
      *(v27 + 8) = 0u;
      *(v27 + 24) = 0u;
      *(v27 + 40) = 0u;
      *(v27 + 56) = 0u;
      *(v27 + 72) = 0u;
      *(v27 + 88) = 0u;
      *(v27 + 104) = 0;
      *(v27 + 112) = 23;
      swift_willThrow();
    }

    v22 = v21;
    v23 = v45;
    sub_26C009D2C();
    if (v23)
    {
    }

    v41 = v22;
    v45 = type metadata accessor for P256SigningSEPPrivateKey(0);
    v28 = v48;
    (*(v42 + 32))(&v48[*(v45 + 20)], v16, v43);
    v29 = sub_26C009CAC();
    v30 = MEMORY[0x26D698C20](v29);
    v32 = v31;
    v33 = v8;
    v34 = v28;
    (*(v44 + 8))(v33, v3);
    if (*v28 == 1)
    {
      v35 = *(v28 + 3);
      v36 = *(v28 + 4);
      v37 = &v11[*(v9 + 20)];
      *v37 = 1;
      *(v37 + 8) = *(v34 + 8);
      *(v37 + 3) = v35;
      *(v37 + 4) = v36;
      v46 = v30;
      v47 = v32;

      sub_26C00A17C();
      (*(v44 + 32))(v11, v6, v3);

      v39 = v45;
      result = sub_26BFAD6EC(v11, &v34[*(v45 + 28)], type metadata accessor for P256VerificationPublicKey);
      v34[*(v39 + 24)] = 1;
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      *v38 = 131073;
      *(v38 + 112) = 10;
      swift_willThrow();
      sub_26BE00258(v30, v32);

      return (*(v42 + 8))(&v28[*(v45 + 20)], v43);
    }
  }

  else
  {

    sub_26BE01654();
    swift_allocError();
    *v26 = 33;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
    *(v26 + 72) = 0u;
    *(v26 + 88) = 0u;
    *(v26 + 104) = 0;
    *(v26 + 112) = 23;
    return swift_willThrow();
  }

  return result;
}

uint64_t P256DecryptionPrivateKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = sub_26C009EEC();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009EAC();
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_26C00A02C();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for P256EncryptionPublicKey(0);
  MEMORY[0x28223BE20](v14 - 8);
  v41 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C00A09C();
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 32);
  if (*a3 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v24 = 131073;
    *(v24 + 112) = 10;
    swift_willThrow();
    goto LABEL_5;
  }

  v39 = v18;
  v40 = v17;
  v22 = *(a3 + 24);
  *a4 = 1;
  *(a4 + 8) = *(a3 + 8);
  *(a4 + 24) = v22;
  *(a4 + 32) = v21;
  v48 = a1;
  *&v49 = a2;

  sub_26BE00608(a1, a2);
  v23 = v52;
  sub_26C00A06C();
  if (v23)
  {

LABEL_5:
    sub_26BE00258(a1, a2);
  }

  v38 = a1;
  v52 = a2;
  v26 = type metadata accessor for P256DecryptionPrivateKey(0);
  (*(v39 + 32))(a4 + *(v26 + 20), v20, v40);
  v37 = v26;
  *(a4 + *(v26 + 28)) = 0;
  sub_26C00A04C();
  v27 = v43;
  (*(v43 + 16))(v11, v21 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v9);

  v28 = v46;
  sub_26C009E8C();
  (*(v27 + 8))(v11, v9);
  v29 = sub_26C00A00C();
  v30 = (v42 + 8);
  v31 = v29;
  v33 = v32;
  (*(v45 + 8))(v28, v47);
  (*v30)(v13, v44);
  v35 = *(a4 + 24);
  v34 = *(a4 + 32);
  LOBYTE(v48) = *a4;
  v49 = *(a4 + 8);
  v50 = v35;
  v51 = v34;

  v36 = v41;
  P256EncryptionPublicKey.init(data:ciphersuite:)(v31, v33, &v48, v41);
  sub_26BE00258(v38, v52);
  return sub_26BFAD6EC(v36, a4 + *(v37 + 24), type metadata accessor for P256EncryptionPublicKey);
}

void P256DecryptionSEPPrivateKey.init(data:ciphersuite:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v52 = a4;
  v7 = sub_26C009EEC();
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009EAC();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_26C00A02C();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for P256EncryptionPublicKey(0);
  MEMORY[0x28223BE20](v14 - 8);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C009CEC();
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 32);
  if (*a3 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v26 = 131073;
    *(v26 + 112) = 10;
    swift_willThrow();
    goto LABEL_8;
  }

  v50 = a1;
  v51 = a2;
  v22 = *(a3 + 8);
  v23 = *(a3 + 24);
  if (qword_28045DFE8 != -1)
  {
    v43 = v17;
    v39 = v18;
    v42 = v22;
    swift_once();
    v22 = v42;
    v18 = v39;
    v17 = v43;
  }

  a1 = v50;
  if (byte_28045FDC1)
  {
    v41 = v7;
    *&v42 = v18;
    v43 = v17;
    v24 = v52;
    *v52 = 1;
    *(v24 + 8) = v22;
    *(v24 + 3) = v23;
    *(v24 + 4) = v21;

    a2 = v51;
    sub_26BE00608(a1, v51);
    v25 = v57;
    sub_26C009CCC();
    if (v25)
    {

LABEL_8:
      sub_26BE00258(a1, a2);

      return;
    }

    v28 = type metadata accessor for P256DecryptionSEPPrivateKey(0);
    (*(v42 + 32))(&v24[*(v28 + 20)], v20, v43);
    v57 = v28;
    v24[*(v28 + 28)] = 1;
    sub_26C009CAC();
    v29 = v46;
    (*(v46 + 16))(v11, v21 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v9);

    v30 = v49;
    sub_26C009E8C();
    (*(v29 + 8))(v11, v9);
    v31 = sub_26C00A00C();
    v32 = (v45 + 8);
    v33 = v31;
    v35 = v34;
    (*(v48 + 8))(v30, v41);
    (*v32)(v13, v47);
    v37 = *(v24 + 3);
    v36 = *(v24 + 4);
    v53[0] = *v24;
    v54 = *(v24 + 8);
    v55 = v37;
    v56 = v36;

    v38 = v44;
    P256EncryptionPublicKey.init(data:ciphersuite:)(v33, v35, v53, v44);
    sub_26BE00258(v50, v51);
    sub_26BFAD6EC(v38, &v24[*(v57 + 24)], type metadata accessor for P256EncryptionPublicKey);
  }

  else
  {

    sub_26BE01654();
    swift_allocError();
    *v27 = 33;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
    *(v27 + 40) = 0u;
    *(v27 + 56) = 0u;
    *(v27 + 72) = 0u;
    *(v27 + 88) = 0u;
    *(v27 + 104) = 0;
    *(v27 + 112) = 23;
    swift_willThrow();
    sub_26BE00258(a1, v51);
  }
}

void P256EncryptionPublicKey.init(data:ciphersuite:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26C009EEC();
  v51 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = sub_26C009EAC();
  v56 = *(v53 - 8);
  v11 = MEMORY[0x28223BE20](v53);
  v49 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = sub_26C00A02C();
  v16 = MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 + 32);
  if (*a3 == 1)
  {
    v44 = v17;
    v45 = v16;
    v46 = v8;
    v21 = a2;
    v22 = *(a3 + 24);
    v48 = *(a3 + 8);
    v41 = type metadata accessor for P256EncryptionPublicKey(0);
    v23 = a4 + *(v41 + 24);
    *v23 = 1;
    *(v23 + 8) = v48;
    *(v23 + 24) = v22;
    *(v23 + 32) = v20;
    v47 = a4;
    *&v48 = v23;
    v54 = a1;
    v55 = v21;
    v24 = v56;
    v25 = *(v56 + 16);
    v42 = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
    v43 = v25;
    v26 = v53;
    v25(v14, v20 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v53);

    sub_26BE00608(a1, v21);
    sub_26C009E8C();
    v27 = *(v24 + 8);
    v28 = v26;
    v56 = v24 + 8;
    v29 = v27;
    v27(v14, v28);
    v30 = v52;
    sub_26C00A03C();
    if (!v30)
    {
      v40 = a1;
      v52 = v21;
      v32 = v47;
      (*(v44 + 32))(v47, v19, v45);
      v33 = v49;
      v34 = v53;
      v43(v49, v20 + v42, v53);

      v35 = v50;
      sub_26C009E8C();
      v29(v33, v34);
      v36 = sub_26C00A00C();
      v38 = v37;
      (*(v51 + 8))(v35, v46);
      sub_26BE00258(v40, v52);
      v39 = (v32 + *(v41 + 20));
      *v39 = v36;
      v39[1] = v38;
      return;
    }

    sub_26BE00258(a1, v21);
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v31 = 131073;
    *(v31 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(a1, a2);
  }
}

uint64_t P256DecryptionPrivateKey.init(ciphersuite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00A09C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *(a1 + 32);
  if (*a1 == 1)
  {
    v9 = *(a1 + 24);
    v15 = *(a1 + 8);
    sub_26C00A08C();
    v10 = sub_26C00A05C();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    v16[0] = 1;
    v17 = v15;
    v18 = v9;
    v19 = v8;
    return P256DecryptionPrivateKey.init(data:ciphersuite:)(v10, v12, v16, a2);
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v14 = 131073;
    *(v14 + 112) = 10;
    swift_willThrow();
  }
}

void P256DecryptionSEPPrivateKey.init(ciphersuite:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_26C009CEC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *(a1 + 32);
  if (*a1 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v16 = 131073;
    *(v16 + 112) = 10;
    swift_willThrow();

    return;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  if (qword_28045DFE8 != -1)
  {
    v21 = v7;
    swift_once();
    v7 = v21;
  }

  if ((byte_28045FDC1 & 1) == 0)
  {

    sub_26BE01654();
    swift_allocError();
    v18 = 33;
LABEL_12:
    *v17 = v18;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 88) = 0u;
    *(v17 + 104) = 0;
    *(v17 + 112) = 23;
    swift_willThrow();
    return;
  }

  v28 = v7;
  v14 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (!v14)
  {

    sub_26BE01654();
    swift_allocError();
    v18 = 34;
    goto LABEL_12;
  }

  v15 = v14;
  sub_26C009CDC();
  if (v2)
  {
  }

  else
  {
    v19 = sub_26C009CBC();
    v23[0] = 1;
    v24 = v11;
    v25 = v12;
    v26 = v13;
    v27 = v10;
    P256DecryptionSEPPrivateKey.init(data:ciphersuite:)(v19, v20, v23, a2);
    (*(v6 + 8))(v9, v28);
  }
}

uint64_t P256VerificationPublicKey.ciphersuite.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for P256VerificationPublicKey(0) + 20);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

uint64_t P256VerificationPublicKey.verify(signature:message:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = sub_26C00A12C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = a2;
  sub_26BE00608(a1, a2);
  sub_26BE016A8();
  sub_26C00A10C();
  if (!v5)
  {
    v15 = a3;
    v16 = a4;
    v4 = sub_26C00A13C();
    (*(v11 + 8))(v13, v10);
  }

  return v4 & 1;
}

uint64_t static P256VerificationPublicKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D698C20]();
  v6 = v5;
  v7 = MEMORY[0x26D698C20]();
  v9 = v8;
  v10 = sub_26BE02DEC(v4, v6, v7, v8);
  sub_26BE00258(v7, v9);
  sub_26BE00258(v4, v6);
  if (v10)
  {
    v11 = type metadata accessor for P256VerificationPublicKey(0);
    v12 = *(a1 + *(v11 + 20)) ^ *(a2 + *(v11 + 20)) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t P256VerificationPublicKey.hash(into:)(uint64_t a1)
{
  v1 = MEMORY[0x26D698C20]();
  v3 = v2;
  sub_26C00911C();
  sub_26BE00258(v1, v3);
  type metadata accessor for P256VerificationPublicKey(0);
  return sub_26C00B08C();
}

uint64_t P256VerificationPublicKey.hashValue.getter()
{
  v0 = sub_26C00B05C();
  v1 = MEMORY[0x26D698C20](v0);
  v3 = v2;
  sub_26C00911C();
  sub_26BE00258(v1, v3);
  type metadata accessor for P256VerificationPublicKey(0);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFAA370(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = sub_26C00A12C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = a2;
  sub_26BE00608(a1, a2);
  sub_26BE016A8();
  sub_26C00A10C();
  if (!v5)
  {
    v15 = a3;
    v16 = a4;
    v4 = sub_26C00A13C();
    (*(v11 + 8))(v13, v10);
  }

  return v4 & 1;
}

uint64_t sub_26BFAA4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x26D698C20]();
  v8 = v7;
  v9 = MEMORY[0x26D698C20]();
  v11 = v10;
  v12 = sub_26BE02DEC(v6, v8, v9, v10);
  sub_26BE00258(v9, v11);
  sub_26BE00258(v6, v8);
  if (v12)
  {
    v13 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_26BFAA590(uint64_t a1)
{
  v1 = sub_26C00B05C();
  v2 = MEMORY[0x26D698C20](v1);
  v4 = v3;
  sub_26C00911C();
  sub_26BE00258(v2, v4);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFAA618(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x26D698C20]();
  v4 = v3;
  sub_26C00911C();
  sub_26BE00258(v2, v4);
  return sub_26C00B08C();
}

uint64_t sub_26BFAA690(uint64_t a1, uint64_t a2)
{
  v2 = sub_26C00B05C();
  v3 = MEMORY[0x26D698C20](v2);
  v5 = v4;
  sub_26C00911C();
  sub_26BE00258(v3, v5);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t P256SigningPrivateKey.deviceConstrained.setter(char a1)
{
  result = type metadata accessor for P256SigningPrivateKey(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_26BFAA9D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t P256DecryptionPrivateKey.deviceConstrained.setter(char a1)
{
  result = type metadata accessor for P256DecryptionPrivateKey(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_26BFAAE2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t P256EncryptionPublicKey.key.setter(uint64_t a1)
{
  v3 = sub_26C00A02C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t P256EncryptionPublicKey.data.getter()
{
  v1 = v0 + *(type metadata accessor for P256EncryptionPublicKey(0) + 20);
  v2 = *v1;
  sub_26BE00608(*v1, *(v1 + 8));
  return v2;
}

void P256EncryptionPublicKey.data.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for P256EncryptionPublicKey(0) + 20);
  sub_26BE00258(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t P256EncryptionPublicKey.ciphersuite.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for P256EncryptionPublicKey(0) + 24);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

__n128 P256EncryptionPublicKey.ciphersuite.setter(char *a1)
{
  v2 = *a1;
  v7 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = v1 + *(type metadata accessor for P256EncryptionPublicKey(0) + 24);

  *v5 = v2;
  result = v7;
  *(v5 + 8) = v7;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  return result;
}

uint64_t P256EncryptionPublicKey.encryptWithLabel(label:context:pt:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v31 = a5;
  v36 = a4;
  v9 = sub_26C009EAC();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C00A02C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C009F9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v35 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v39;
  v20 = sub_26BE0FF84(a1, a2, a3, v36);
  if (!v19)
  {
    v22 = v20;
    v36 = v17;
    v39 = v16;
    v23 = v31;
    v24 = v34;
    v25 = v21;
    (*(v13 + 16))(v15, v34, v12);
    v26 = type metadata accessor for P256EncryptionPublicKey(0);
    (*(v32 + 16))(v11, *(v24 + *(v26 + 24) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v33);
    sub_26BE00608(v22, v25);
    v27 = v35;
    sub_26C009F5C();
    v37 = v23;
    v38 = v30;
    sub_26BE016A8();
    v12 = sub_26C009F8C();
    sub_26C009F6C();
    sub_26BE00258(v22, v25);
    (*(v36 + 8))(v27, v39);
  }

  return v12;
}

uint64_t P256EncryptionPublicKey.encryptWithInfoAndAAD(info:aad:pt:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v28 = a4;
  v25 = a5;
  v26 = a3;
  v29 = a1;
  v30 = a2;
  v7 = sub_26C009EAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00A02C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C009F9C();
  v24 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v6, v11);
  v18 = type metadata accessor for P256EncryptionPublicKey(0);
  (*(v8 + 16))(v10, *(v6 + *(v18 + 24) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v7);
  v19 = v30;
  sub_26BE00608(v29, v30);
  v20 = v35;
  sub_26C009F5C();
  if (!v20)
  {
    v21 = v24;
    v33 = v25;
    v34 = v27;
    v31 = v26;
    v32 = v28;
    sub_26BE016A8();
    v19 = sub_26C009F7C();
    sub_26C009F6C();
    (*(v21 + 8))(v17, v15);
  }

  return v19;
}

uint64_t P256EncryptionPublicKey.sendExport(label:outputByteCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a2;
  v35 = a3;
  v32 = a1;
  v5 = sub_26C00A4EC();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C009EAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00A02C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C009F9C();
  v39 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v4, v11);
  v18 = type metadata accessor for P256EncryptionPublicKey(0);
  (*(v8 + 16))(v10, *(v4 + *(v18 + 24) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v7);
  v19 = v42;
  sub_26C009F5C();
  if (!v19)
  {
    v42 = v15;
    v31 = 0;
    v7 = sub_26C009F6C();
    v21 = v20;
    v40 = 0x20302E3120534C4DLL;
    v41 = 0xE800000000000000;
    MEMORY[0x26D699090](v34, v35);
    v22 = v36;
    sub_26C00A4DC();
    v23 = sub_26C00A49C();
    v25 = v24;

    (*(v37 + 8))(v22, v38);
    if (v25 >> 60 == 15)
    {
      sub_26BE01654();
      swift_allocError();
      *v26 = 5;
      v26[112] = 1;
      swift_willThrow();
      sub_26BE00258(v7, v21);
      (*(v39 + 8))(v17, v42);
    }

    else
    {
      v40 = v23;
      v41 = v25;
      sub_26BE016A8();
      v27 = v31;
      sub_26C009F4C();
      v28 = v42;
      if (v27)
      {
        sub_26BE00258(v7, v21);
      }

      sub_26BE00258(v40, v41);
      (*(v39 + 8))(v17, v28);
    }
  }

  return v7;
}

uint64_t static P256EncryptionPublicKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D698AB0]();
  v6 = v5;
  v7 = MEMORY[0x26D698AB0]();
  v9 = v8;
  v10 = sub_26BE02DEC(v4, v6, v7, v8);
  sub_26BE00258(v7, v9);
  sub_26BE00258(v4, v6);
  if (v10)
  {
    v11 = type metadata accessor for P256EncryptionPublicKey(0);
    v12 = *(a1 + *(v11 + 24)) ^ *(a2 + *(v11 + 24)) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t P256EncryptionPublicKey.hash(into:)(uint64_t a1)
{
  v1 = MEMORY[0x26D698AD0]();
  v3 = v2;
  sub_26C00911C();
  sub_26BE00258(v1, v3);
  type metadata accessor for P256EncryptionPublicKey(0);
  return sub_26C00B08C();
}

uint64_t P256EncryptionPublicKey.hashValue.getter()
{
  v0 = sub_26C00B05C();
  v1 = MEMORY[0x26D698AD0](v0);
  v3 = v2;
  sub_26C00911C();
  sub_26BE00258(v1, v3);
  type metadata accessor for P256EncryptionPublicKey(0);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFABDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a9(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    return v11;
  }

  return result;
}

uint64_t sub_26BFABE14(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *v2;
  sub_26BE00608(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_26BFABE68(uint64_t a1)
{
  v1 = sub_26C00B05C();
  v2 = MEMORY[0x26D698AD0](v1);
  v4 = v3;
  sub_26C00911C();
  sub_26BE00258(v2, v4);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFABEF0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x26D698AD0]();
  v4 = v3;
  sub_26C00911C();
  sub_26BE00258(v2, v4);
  return sub_26C00B08C();
}

uint64_t sub_26BFABF68(uint64_t a1, uint64_t a2)
{
  v2 = sub_26C00B05C();
  v3 = MEMORY[0x26D698AD0](v2);
  v5 = v4;
  sub_26C00911C();
  sub_26BE00258(v3, v5);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFABFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x26D698AB0]();
  v8 = v7;
  v9 = MEMORY[0x26D698AB0]();
  v11 = v10;
  v12 = sub_26BE02DEC(v6, v8, v9, v10);
  sub_26BE00258(v9, v11);
  sub_26BE00258(v6, v8);
  if (v12)
  {
    v13 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t P256SigningSEPPrivateKey.deviceConstrained.setter(char a1)
{
  result = type metadata accessor for P256SigningSEPPrivateKey(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_26BFAC284()
{
  result = sub_26C009C9C();
  byte_28045FDC0 = result & 1;
  return result;
}

uint64_t sub_26BFAC378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, void, unint64_t))
{
  v10 = sub_26C00A12C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3(0) + 20);
  v18[0] = a1;
  v18[1] = a2;
  v15 = sub_26BE016A8();
  v16 = v4 + v14;
  a4(v18, MEMORY[0x277CC9318], v15);
  if (!v5)
  {
    v16 = sub_26C00A0FC();
    (*(v11 + 8))(v13, v10);
  }

  return v16;
}

uint64_t sub_26BFAC4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, void, unint64_t))
{
  v11 = sub_26C00A12C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 20);
  v19[0] = a1;
  v19[1] = a2;
  v16 = sub_26BE016A8();
  v17 = v5 + v15;
  a5(v19, MEMORY[0x277CC9318], v16);
  if (!v6)
  {
    v17 = sub_26C00A0FC();
    (*(v12 + 8))(v14, v11);
  }

  return v17;
}

__n128 _s8SwiftMLS24P256DecryptionPrivateKeyV11ciphersuiteAA0B0O12CryptographyO11CiphersuiteVvs_0(char *a1)
{
  v2 = *a1;
  v6 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);

  *v1 = v2;
  result = v6;
  *(v1 + 8) = v6;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_26BFAC754(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) + 20);
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v3 + v6, a1, v7);
}

uint64_t P256DecryptionSEPPrivateKey.deviceConstrained.setter(char a1)
{
  result = type metadata accessor for P256DecryptionSEPPrivateKey(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_26BFACA08()
{
  result = sub_26C009C9C();
  byte_28045FDC1 = result & 1;
  return result;
}

uint64_t sub_26BFACA50(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_26BFACAE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t (*a9)(void), uint64_t (*a10)(void), uint64_t a11)
{
  v42 = a7;
  v43 = a8;
  v35 = a5;
  v36 = a6;
  v39 = sub_26C009EAC();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a9(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - v18;
  v20 = sub_26C009FEC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v40 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v46;
  v24 = sub_26BE0FF84(a1, a2, a3, a4);
  if (!v23)
  {
    v26 = v24;
    v27 = v25;
    v33 = v21;
    v34 = v20;
    v46 = a11;
    v28 = a10(0);
    v29 = v41;
    (*(v17 + 16))(v19, v41 + *(v28 + 20), v16);
    (*(v37 + 16))(v38, *(v29 + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v39);
    sub_26BE00608(v26, v27);
    sub_26BE00608(v42, v43);
    v30 = v40;
    sub_26C009FAC();
    v44 = v35;
    v45 = v36;
    sub_26BE016A8();
    a2 = sub_26C009FDC();
    (*(v33 + 8))(v30, v34);
    sub_26BE00258(v26, v27);
  }

  return a2;
}

uint64_t sub_26BFACEA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t (*a9)(void), uint64_t (*a10)(void), uint64_t a11)
{
  v12 = v11;
  v38 = a7;
  v39 = a8;
  v33 = a6;
  v34 = a4;
  v31 = a5;
  v32 = a3;
  v36 = a1;
  v37 = a2;
  v40 = a11;
  v35 = a10;
  v13 = sub_26C009EAC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a9(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - v19;
  v21 = sub_26C009FEC();
  v30 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v35(0);
  (*(v18 + 16))(v20, v12 + *(v24 + 20), v17);
  (*(v14 + 16))(v16, *(v12 + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v13);
  sub_26BE00608(v36, v37);
  v25 = v39;
  sub_26BE00608(v38, v39);
  v26 = v45;
  sub_26C009FAC();
  if (!v26)
  {
    v27 = v30;
    v43 = v31;
    v44 = v33;
    v41 = v32;
    v42 = v34;
    sub_26BE016A8();
    v25 = sub_26C009FCC();
    (*(v27 + 8))(v23, v21);
  }

  return v25;
}

uint64_t sub_26BFAD204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a8;
  v41 = a7;
  v42 = a4;
  v43 = a5;
  v35[2] = a3;
  v36 = a1;
  v37 = a2;
  v35[1] = a9;
  v11 = sub_26C00A4EC();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v38 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C009EAC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a6(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v35 - v19;
  v21 = sub_26C009FEC();
  v35[0] = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v41(0);
  (*(v18 + 16))(v20, v9 + *(v24 + 20), v17);
  (*(v14 + 16))(v16, *(v9 + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v13);
  sub_26BE00608(v42, v43);
  v25 = v44;
  result = sub_26C009FAC();
  if (!v25)
  {
    v27 = v35[0];
    v47 = v21;
    v45 = 0x20302E3120534C4DLL;
    v46 = 0xE800000000000000;
    MEMORY[0x26D699090](v36, v37);
    v28 = v38;
    sub_26C00A4DC();
    v29 = sub_26C00A49C();
    v31 = v30;

    (*(v39 + 8))(v28, v40);
    if (v31 >> 60 == 15)
    {
      sub_26BE01654();
      swift_allocError();
      *v32 = 5;
      v32[112] = 1;
      swift_willThrow();
      return (*(v27 + 8))(v23, v47);
    }

    else
    {
      v45 = v29;
      v46 = v31;
      sub_26BE016A8();
      v33 = v23;
      sub_26C009FBC();
      v34 = v47;
      sub_26BE00258(v45, v46);
      return (*(v27 + 8))(v33, v34);
    }
  }

  return result;
}

uint64_t sub_26BFAD6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFAD774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFAD7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFAD844(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDC8, type metadata accessor for P256VerificationPublicKey, &protocol conformance descriptor for P256VerificationPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFAD89C(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDD0, type metadata accessor for P256VerificationPublicKey, &protocol conformance descriptor for P256VerificationPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFAD8F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFAD9CC(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDE0, type metadata accessor for P256SigningPrivateKey, &protocol conformance descriptor for P256SigningPrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADAB4(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDE8, type metadata accessor for P256DecryptionPrivateKey, &protocol conformance descriptor for P256DecryptionPrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADB54(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDF0, type metadata accessor for P256EncryptionPublicKey, &protocol conformance descriptor for P256EncryptionPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADBAC(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FDF8, type metadata accessor for P256EncryptionPublicKey, &protocol conformance descriptor for P256EncryptionPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADC4C(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FE08, type metadata accessor for P256SigningSEPPrivateKey, &protocol conformance descriptor for P256SigningSEPPrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADCA4(uint64_t a1)
{
  result = sub_26BFAD8F4(&qword_28045FE10, type metadata accessor for P256DecryptionSEPPrivateKey, &protocol conformance descriptor for P256DecryptionSEPPrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BFADD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00A18C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26BFADDE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C00A18C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BFADEA0(uint64_t a1)
{
  result = sub_26C00A18C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFAE008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00A02C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26BFAE0DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C00A02C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BFAE198(uint64_t a1)
{
  result = sub_26C00A02C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for P256VerificationPublicKey(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_21Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v9 = a5(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v6 + *(a4 + 20);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for P256VerificationPublicKey(0);
      v15 = *(*(v14 - 8) + 56);
      v16 = v6 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_26BFAE4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for P256VerificationPublicKey(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for P256EncryptionPublicKey(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_30Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v9 = a5(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v6 + *(a4 + 20);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for P256EncryptionPublicKey(0);
      v15 = *(*(v14 - 8) + 56);
      v16 = v6 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_26BFAE83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for P256EncryptionPublicKey(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 MLS.AddProposal.init(keyPackage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = *(a1 + 176);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

void sub_26BFAE974(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v7 = HIDWORD(v2) - v2;
  }

LABEL_11:
  v10 = sub_26BF30414(v7);
  if (v1)
  {
    return;
  }

  v11 = v10;
  sub_26BE11228(v2, v3);
  v12 = __OFADD__(v11, v7);
  v13 = v11 + v7;
  if (v12)
  {
    __break(1u);
    goto LABEL_21;
  }

  v20 = 256;
  v14 = MEMORY[0x277D838B0];
  v15 = MEMORY[0x277CC9C18];
  v23 = MEMORY[0x277D838B0];
  v24 = MEMORY[0x277CC9C18];
  *&v21 = &v20;
  *(&v21 + 1) = &v21;
  __swift_project_boxed_opaque_existential_1(&v21, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v12 = __OFADD__(v13, 2);
  v16 = v13 + 2;
  if (v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = __rev16(v4);
  v23 = v14;
  v24 = v15;
  *&v21 = &v20;
  *(&v21 + 1) = &v21;
  __swift_project_boxed_opaque_existential_1(&v21, v14);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  if (__OFADD__(v16, 2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = xmmword_26C00BBD0;
  v22 = 0;
  v17 = sub_26BEEAC24(0, v5);
  v18 = v17;
  v19 = sub_26BF30414(v17);
  sub_26BF2A30C(&v21);
  sub_26BE00258(v21, *(&v21 + 1));
  if (__OFADD__(v19, v18))
  {
    goto LABEL_24;
  }

  if (__OFADD__(v16 + 2, v19 + v18))
  {
    goto LABEL_25;
  }
}

void sub_26BFAEB6C(uint64_t a1@<X8>)
{
  v3 = v1;
  v71 = *MEMORY[0x277D85DE8];
  v5 = sub_26BF2F7B0();
  if (v2)
  {
    return;
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_26BEE6180();
  if ((v9 & 0x10000) != 0)
  {
    goto LABEL_11;
  }

  if (v9 != 1)
  {
    sub_26BE01600();
    swift_allocError();
    v15 = 5;
LABEL_12:
    *v14 = v15;
    swift_willThrow();
    sub_26BE00258(v7, v8);
    return;
  }

  v10 = sub_26BEE6180();
  if ((v10 & 0x10000) != 0)
  {
LABEL_11:
    sub_26BE01600();
    swift_allocError();
    v15 = 1;
    goto LABEL_12;
  }

  v65 = v10;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  sub_26BE00608(*v1, v12);
  sub_26BE00608(v11, v12);
  sub_26BF30764(v1, &v68);
  if (v69)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v11;
    v1[1] = v12;
    v16 = v12;
    v17 = v11;
    v1[2] = v13;
LABEL_10:
    sub_26BE00258(v17, v16);
    *v3 = v11;
    v3[1] = v12;
    v3[2] = v13;
    goto LABEL_11;
  }

  v18 = v68;
  sub_26BE00258(v11, v12);
  if (v18 <= 100000000)
  {
    v20 = sub_26BF2A44C(v18);
    if (v21 >> 60 == 15)
    {
      v17 = *v3;
      v16 = v3[1];
      goto LABEL_10;
    }

    v68 = v20;
    v69 = v21;
    v23 = v21 >> 62;
    v55 = v20 >> 32;
    v64 = MEMORY[0x277D84F90];
    v56 = BYTE6(v21);
    v57 = v21 >> 62;
    v70 = v22;
    v59 = v12;
    v60 = v13;
    v61 = v11;
    v58 = v20;
    if ((v21 >> 62) > 1)
    {
      goto LABEL_21;
    }

LABEL_19:
    v24 = v56;
    if (v23)
    {
      v24 = v55;
    }

    while (1)
    {
      v25 = __OFSUB__(v24, v22);
      v26 = v24 - v22;
      if (v25)
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
      }

      if (v26 < 1)
      {
        v51 = v69 >> 62;
        if ((v69 >> 62) > 1)
        {
          if (v51 == 2)
          {
            v52 = *(v68 + 24);
          }

          else
          {
            v52 = 0;
          }
        }

        else if (v51)
        {
          v52 = v68 >> 32;
        }

        else
        {
          v52 = BYTE6(v69);
        }

        if (__OFSUB__(v52, v22))
        {
          __break(1u);
        }

        else
        {
          if (v52 != v22)
          {
            sub_26BE01654();
            swift_allocError();
            *v54 = 0;
            v54[112] = 1;
            swift_willThrow();

            sub_26BE00258(v68, v69);
            goto LABEL_6;
          }

          sub_26BE00258(v68, v69);
          sub_26BE00258(v11, v12);
          *a1 = v7;
          *(a1 + 8) = v8;
          *(a1 + 16) = v65;
          *(a1 + 24) = v64;
        }

        return;
      }

      v27 = v22 + 2;
      if (__OFADD__(v22, 2))
      {
        goto LABEL_77;
      }

      v29 = v68;
      v28 = v69;
      v30 = v69 >> 62;
      if ((v69 >> 62) <= 1)
      {
        break;
      }

      if (v30 == 2)
      {
        v31 = *(v68 + 24);
        goto LABEL_33;
      }

      if (v27 > 0)
      {
        goto LABEL_68;
      }

LABEL_36:
      v66 = v68;
      v67 = v69;
      if (v27 < v22)
      {
        goto LABEL_78;
      }

      sub_26BE00608(v68, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      v63 = v28;
      sub_26BE016A8();
      v62 = v29;
      sub_26BE016FC();
      v32 = v28;
      sub_26C008E1C();
      sub_26BE00258(v66, v67);
      v70 = v27;
      sub_26BE00608(v29, v28);
      sub_26BE00608(v29, v28);
      sub_26BF30764(&v68, &v66);
      if (v67)
      {
        sub_26BE00258(v68, v69);
        v36 = v28;
        v35 = v29;
LABEL_67:
        sub_26BE00258(v35, v36);
        v68 = v29;
        v69 = v32;
        v70 = v27;
LABEL_68:
        sub_26BE01600();
        swift_allocError();
        *v53 = 1;
        swift_willThrow();

        sub_26BE00258(v68, v69);
        v13 = v60;
        v11 = v61;
        goto LABEL_6;
      }

      v33 = v66;
      sub_26BE00258(v29, v32);
      v25 = __OFADD__(v70, v33);
      v34 = v70 + v33;
      if (v25)
      {
        goto LABEL_79;
      }

      v35 = v68;
      v36 = v69;
      v37 = v69 >> 62;
      if ((v69 >> 62) <= 1)
      {
        if (v37)
        {
          v38 = v68 >> 32;
        }

        else
        {
          v38 = BYTE6(v69);
        }

LABEL_45:
        if (v38 < v34)
        {
          goto LABEL_67;
        }

        goto LABEL_48;
      }

      if (v37 == 2)
      {
        v38 = *(v68 + 24);
        goto LABEL_45;
      }

      if (v34 > 0)
      {
        goto LABEL_67;
      }

LABEL_48:
      if (v34 < v70)
      {
        goto LABEL_80;
      }

      v39 = sub_26C00909C();
      v40 = v39;
      v42 = v41;
      v70 = v34;
      v43 = v41 >> 62;
      if ((v41 >> 62) > 1)
      {
        if (v43 != 2)
        {
          goto LABEL_56;
        }

        v39 = *(v39 + 16);
        v44 = *(v40 + 24);
      }

      else
      {
        if (!v43)
        {
          goto LABEL_56;
        }

        v39 = v39;
        v44 = v40 >> 32;
      }

      if (v44 < v39)
      {
        goto LABEL_81;
      }

LABEL_56:
      v45 = sub_26C00909C();
      v47 = v46;
      sub_26BE00258(v40, v42);
      sub_26BE00258(v62, v63);
      sub_26BE00608(v45, v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_26BEEBD8C(0, *(v64 + 2) + 1, 1, v64);
      }

      v49 = *(v64 + 2);
      v48 = *(v64 + 3);
      if (v49 >= v48 >> 1)
      {
        v64 = sub_26BEEBD8C((v48 > 1), v49 + 1, 1, v64);
      }

      sub_26BE00258(v45, v47);
      *(v64 + 2) = v49 + 1;
      v50 = &v64[24 * v49];
      *(v50 + 16) = bswap32(0) >> 16;
      *(v50 + 5) = v45;
      *(v50 + 6) = v47;
      v12 = v59;
      v13 = v60;
      v11 = v61;
      v22 = v34;
      LODWORD(v23) = v57;
      v20 = v58;
      if (v57 <= 1)
      {
        goto LABEL_19;
      }

LABEL_21:
      if (v23 == 2)
      {
        v24 = *(v20 + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    if (v30)
    {
      v31 = v68 >> 32;
    }

    else
    {
      v31 = BYTE6(v69);
    }

LABEL_33:
    if (v31 < v27)
    {
      goto LABEL_68;
    }

    goto LABEL_36;
  }

  sub_26BE01600();
  swift_allocError();
  *v19 = 5;
  swift_willThrow();
LABEL_6:
  sub_26BE00258(*v3, v3[1]);
  *v3 = v11;
  v3[1] = v12;
  v3[2] = v13;
  swift_willThrow();
  sub_26BE00258(v7, v8);
}

uint64_t MLS.ReInitProposal.init(groupID:version:ciphersuite:extensions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = a4;
  return result;
}

unint64_t sub_26BFAF280(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v9);
  if (v1)
  {
    return result;
  }

  v13 = result;
  sub_26BE11228(v2, v3);
  v14 = __OFADD__(v13, v9);
  v15 = v13 + v9;
  if (v14)
  {
    __break(1u);
    goto LABEL_31;
  }

  v26 = bswap64(v4);
  v16 = MEMORY[0x277D838B0];
  v17 = MEMORY[0x277CC9C18];
  v29 = MEMORY[0x277D838B0];
  v30 = MEMORY[0x277CC9C18];
  v27 = &v26;
  v28 = &v27;
  __swift_project_boxed_opaque_existential_1(&v27, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v14 = __OFADD__(v15, 8);
  v18 = v15 + 8;
  if (v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  LOBYTE(v26) = v5;
  v29 = v16;
  v30 = v17;
  v27 = &v26;
  v28 = (&v26 + 1);
  __swift_project_boxed_opaque_existential_1(&v27, v16);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v20 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v20 != 2)
    {
      v21 = 0;
      goto LABEL_27;
    }

    v23 = *(v6 + 16);
    v22 = *(v6 + 24);
    v21 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v20)
  {
    v21 = BYTE6(v7);
    goto LABEL_27;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
    goto LABEL_36;
  }

  v21 = HIDWORD(v6) - v6;
LABEL_27:
  v24 = sub_26BF30414(v21);
  sub_26BE11228(v6, v7);
  v25 = v24 + v21;
  if (__OFADD__(v24, v21))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = v19 + v25;
  if (__OFADD__(v19, v25))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

void sub_26BFAF494(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v37 = a1[5];
  v38 = a1[3];
  v34 = a1[6];
  v35 = a1[7];
  v36 = a1[4];
  v33 = a1[8];
  LOWORD(v39) = 256;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v42 = MEMORY[0x277D838B0];
  v43 = MEMORY[0x277CC9C18];
  *&v40 = &v39;
  *(&v40 + 1) = &v39 + 2;
  __swift_project_boxed_opaque_existential_1(&v40, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  LOWORD(v39) = bswap32(v2) >> 16;
  v42 = v5;
  v43 = v6;
  *&v40 = &v39;
  *(&v40 + 1) = &v39 + 2;
  __swift_project_boxed_opaque_existential_1(&v40, v5);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v7 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v8 = HIDWORD(v3) - v3;
  }

LABEL_11:
  v11 = sub_26BF30414(v8);
  if (v1)
  {
    return;
  }

  v12 = v11;
  sub_26BE11228(v3, v4);
  v13 = v12 + v8;
  if (__OFADD__(v12, v8))
  {
    __break(1u);
    goto LABEL_45;
  }

  v14 = v13 + 4;
  if (__OFADD__(v13, 4))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v42 = v5;
  v43 = v6;
  v39 = bswap64(v38);
  *&v40 = &v39;
  *(&v40 + 1) = &v40;
  __swift_project_boxed_opaque_existential_1(&v40, v5);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v15 = v14 + 8;
  if (__OFADD__(v14, 8))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v16 = v37 >> 62;
  if ((v37 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(v37);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v16 != 2)
  {
    v17 = 0;
    goto LABEL_25;
  }

  v19 = *(v36 + 16);
  v18 = *(v36 + 24);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_22:
    if (__OFSUB__(HIDWORD(v36), v36))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v17 = HIDWORD(v36) - v36;
  }

LABEL_25:
  v20 = sub_26BF30414(v17);
  sub_26BE11228(v36, v37);
  v21 = v20 + v17;
  if (__OFADD__(v20, v17))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v22 = v15 + v21;
  if (__OFADD__(v15, v21))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v23 = v35 >> 62;
  if ((v35 >> 62) <= 1)
  {
    if (!v23)
    {
      v24 = BYTE6(v35);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v23 != 2)
  {
    v24 = 0;
    goto LABEL_37;
  }

  v26 = *(v34 + 16);
  v25 = *(v34 + 24);
  v24 = v25 - v26;
  if (__OFSUB__(v25, v26))
  {
    __break(1u);
LABEL_34:
    if (__OFSUB__(HIDWORD(v34), v34))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    v24 = HIDWORD(v34) - v34;
  }

LABEL_37:
  v27 = sub_26BF30414(v24);
  sub_26BE11228(v34, v35);
  v28 = v27 + v24;
  if (__OFADD__(v27, v24))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v29 = v22 + v28;
  if (__OFADD__(v22, v28))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v40 = xmmword_26C00BBD0;
  v41 = 0;
  v30 = sub_26BEEAC24(0, v33);
  v31 = v30;
  v32 = sub_26BF30414(v30);
  sub_26BF2A30C(&v40);
  sub_26BE00258(v40, *(&v40 + 1));
  if (__OFADD__(v32, v31))
  {
    goto LABEL_54;
  }

  if (__OFADD__(v29, v32 + v31))
  {
    goto LABEL_55;
  }
}

void sub_26BFAF814(uint64_t a1@<X8>)
{
  v3 = v1;
  v88 = *MEMORY[0x277D85DE8];
  v5 = sub_26BEE6180();
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    sub_26BE01600();
    swift_allocError();
    v16 = 5;
    goto LABEL_9;
  }

  v6 = sub_26BEE6180();
  if ((v6 & 0x10000) != 0)
  {
LABEL_7:
    sub_26BE01600();
    swift_allocError();
    v16 = 1;
LABEL_9:
    *v15 = v16;
    swift_willThrow();
    return;
  }

  v7 = v6;
  v8 = sub_26BF2F7B0();
  if (v2)
  {
    return;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_26BEEE594();
  if (v13)
  {
    sub_26BE01600();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    sub_26BE00258(v10, v11);
    return;
  }

  v17 = v12;
  v81 = sub_26BF2F7B0();
  v82 = v18;
  v78 = v17;
  v79 = sub_26BF2F7B0();
  v80 = v19;
  v20 = *v1;
  v21 = v3[1];
  v22 = v3[2];
  sub_26BE00608(*v3, v21);
  sub_26BE00608(v20, v21);
  sub_26BF30764(v3, &v85);
  v77 = v21;
  v72 = v22;
  if (v86)
  {
    sub_26BE00258(*v3, v3[1]);
    v23 = v21;
    *v3 = v20;
    v3[1] = v21;
    v24 = v21;
    v25 = v20;
    v26 = v22;
    v3[2] = v22;
LABEL_15:
    sub_26BE00258(v25, v24);
    *v3 = v20;
    v3[1] = v23;
    v3[2] = v26;
    sub_26BE01600();
    swift_allocError();
    *v27 = 1;
LABEL_16:
    swift_willThrow();
    sub_26BE00258(v10, v11);
    sub_26BE00258(v79, v80);
    sub_26BE00258(v81, v82);
    return;
  }

  v28 = v20;
  v29 = v85;
  v70 = v28;
  sub_26BE00258(v28, v21);
  if (v29 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v30 = 5;
    swift_willThrow();
    v31 = v70;
LABEL_12:
    sub_26BE00258(*v3, v3[1]);
    *v3 = v31;
    v3[1] = v21;
    v3[2] = v22;
    goto LABEL_16;
  }

  v32 = sub_26BF2A44C(v29);
  if (v33 >> 60 == 15)
  {
    v25 = *v3;
    v24 = v3[1];
    v20 = v70;
    v26 = v22;
    v23 = v21;
    goto LABEL_15;
  }

  v85 = v32;
  v86 = v33;
  v35 = v33 >> 62;
  v66 = v32 >> 32;
  v76 = MEMORY[0x277D84F90];
  v67 = BYTE6(v33);
  v68 = v33 >> 62;
  v87 = v34;
  v69 = v32;
  if ((v33 >> 62) > 1)
  {
    goto LABEL_24;
  }

LABEL_22:
  v36 = v67;
  if (v35)
  {
    v36 = v66;
  }

  while (1)
  {
    v37 = __OFSUB__(v36, v34);
    v38 = v36 - v34;
    if (v37)
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    if (v38 < 1)
    {
      break;
    }

    v39 = v34 + 2;
    if (__OFADD__(v34, 2))
    {
      goto LABEL_81;
    }

    v40 = v85;
    v41 = v86 >> 62;
    if ((v86 >> 62) <= 1)
    {
      if (v41)
      {
        v42 = v85 >> 32;
      }

      else
      {
        v42 = BYTE6(v86);
      }

LABEL_36:
      if (v42 < v39)
      {
        goto LABEL_71;
      }

      goto LABEL_39;
    }

    if (v41 == 2)
    {
      v42 = *(v85 + 24);
      goto LABEL_36;
    }

    if (v39 > 0)
    {
      goto LABEL_71;
    }

LABEL_39:
    v83 = v85;
    v84 = v86;
    if (v39 < v34)
    {
      goto LABEL_82;
    }

    v74 = v86;
    sub_26BE00608(v85, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    v75 = v40;
    sub_26BE016FC();
    v43 = v40;
    sub_26C008E1C();
    sub_26BE00258(v83, v84);
    v87 = v39;
    sub_26BE00608(v40, v74);
    sub_26BE00608(v40, v74);
    sub_26BF30764(&v85, &v83);
    if (v84)
    {
      sub_26BE00258(v85, v86);
      v47 = v74;
      v46 = v40;
LABEL_70:
      sub_26BE00258(v46, v47);
      v85 = v75;
      v86 = v74;
      v87 = v39;
LABEL_71:
      sub_26BE01600();
      swift_allocError();
      *v64 = 1;
      v21 = v77;
      swift_willThrow();

      sub_26BE00258(v85, v86);
LABEL_72:
      v31 = v70;
      v22 = v72;
      goto LABEL_12;
    }

    v44 = v83;
    sub_26BE00258(v43, v74);
    v37 = __OFADD__(v87, v44);
    v45 = v87 + v44;
    if (v37)
    {
      goto LABEL_83;
    }

    v46 = v85;
    v47 = v86;
    v48 = v86 >> 62;
    if ((v86 >> 62) <= 1)
    {
      if (v48)
      {
        v49 = v85 >> 32;
      }

      else
      {
        v49 = BYTE6(v86);
      }

LABEL_48:
      if (v49 < v45)
      {
        goto LABEL_70;
      }

      goto LABEL_51;
    }

    if (v48 == 2)
    {
      v49 = *(v85 + 24);
      goto LABEL_48;
    }

    if (v45 > 0)
    {
      goto LABEL_70;
    }

LABEL_51:
    if (v45 < v87)
    {
      goto LABEL_84;
    }

    v50 = sub_26C00909C();
    v51 = v50;
    v53 = v52;
    v71 = v45;
    v87 = v45;
    v54 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v54 != 2)
      {
        goto LABEL_59;
      }

      v50 = *(v50 + 16);
      v55 = *(v51 + 24);
    }

    else
    {
      if (!v54)
      {
        goto LABEL_59;
      }

      v50 = v50;
      v55 = v51 >> 32;
    }

    if (v55 < v50)
    {
      goto LABEL_85;
    }

LABEL_59:
    v56 = v53;
    v73 = sub_26C00909C();
    v58 = v57;
    sub_26BE00258(v51, v56);
    sub_26BE00258(v75, v74);
    sub_26BE00608(v73, v58);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_26BEEBD8C(0, *(v76 + 2) + 1, 1, v76);
    }

    v60 = *(v76 + 2);
    v59 = *(v76 + 3);
    if (v60 >= v59 >> 1)
    {
      v76 = sub_26BEEBD8C((v59 > 1), v60 + 1, 1, v76);
    }

    sub_26BE00258(v73, v58);
    *(v76 + 2) = v60 + 1;
    v61 = &v76[24 * v60];
    *(v61 + 16) = bswap32(0) >> 16;
    *(v61 + 5) = v73;
    *(v61 + 6) = v58;
    LODWORD(v35) = v68;
    v32 = v69;
    v34 = v71;
    if (v68 <= 1)
    {
      goto LABEL_22;
    }

LABEL_24:
    if (v35 == 2)
    {
      v36 = *(v32 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  v62 = v86 >> 62;
  if ((v86 >> 62) > 1)
  {
    if (v62 == 2)
    {
      v63 = *(v85 + 24);
    }

    else
    {
      v63 = 0;
    }
  }

  else if (v62)
  {
    v63 = v85 >> 32;
  }

  else
  {
    v63 = BYTE6(v86);
  }

  if (__OFSUB__(v63, v34))
  {
LABEL_86:
    __break(1u);
    return;
  }

  if (v63 != v34)
  {
    sub_26BE01654();
    swift_allocError();
    *v65 = 0;
    v65[112] = 1;
    swift_willThrow();

    sub_26BE00258(v85, v86);
    v21 = v77;
    goto LABEL_72;
  }

  sub_26BE00258(v85, v86);
  sub_26BE00258(v70, v77);
  *a1 = v7;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v78;
  *(a1 + 32) = v81;
  *(a1 + 40) = v82;
  *(a1 + 48) = v79;
  *(a1 + 56) = v80;
  *(a1 + 64) = v76;
}

uint64_t MLS.GroupContext.confirmedTranscriptHash.getter()
{
  v1 = *(v0 + 48);
  sub_26BE00608(v1, *(v0 + 56));
  return v1;
}

void MLS.GroupContext.confirmedTranscriptHash.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void MLS.GroupContext.init(version:ciphersuite:groupID:epoch:treeHash:confirmedTranscriptHash:extensions:)(_WORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  *a8 = *a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = a9;
  *(a8 + 64) = a10;
}

uint64_t sub_26BFB0104(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for SecCertificate(0);
    v4 = v11;
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x26D6996F0](v13 - 4, v3);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v3 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x26D6996F0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        sub_26BFB76A0(&qword_28045FB08, type metadata accessor for SecCertificate, &unk_26C00BCF0);
        v19 = sub_26C0092AC();

        if (v19)
        {
          ++v13;
          if (v15 != v5)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v3 + 32);
    v21 = (a2 + 32);
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = v5 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v25 = *v20++;
      v24 = v25;
      v26 = *v21++;
      v3 = sub_26BFB76A0(&qword_28045FB08, type metadata accessor for SecCertificate, &unk_26C00BCF0);
      v27 = v24;
      v28 = v26;
      v19 = sub_26C0092AC();

      v30 = a2-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v30)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_26C00AB8C();
  }

  result = sub_26C00AB8C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_26BFB03C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  while (1)
  {
    sub_26BE2DA9C(v3, &v60);
    result = sub_26BE2DA9C(v4, &v55);
    v10 = v60;
    v9 = v61;
    v12 = v55;
    v11 = v56;
    v52 = v4;
    if ((v61 & 0x2000000000000000) != 0)
    {
      if ((v56 & 0x2000000000000000) == 0)
      {
        goto LABEL_74;
      }

      v16 = v3;
      sub_26BE04890(v55, v56);
      sub_26BE04890(v10, v9);
      v19 = sub_26BFB0104(v10, v12);
      sub_26BE0489C(v10, v9);
      sub_26BE0489C(v12, v11);
      if ((v19 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if ((v56 & 0x2000000000000000) != 0)
      {
        goto LABEL_74;
      }

      v13 = v61 >> 62;
      v14 = v56 >> 62;
      if (v61 >> 62 == 3)
      {
        v15 = 0;
        if (!v60 && v61 == 0xC000000000000000 && v56 >> 62 == 3)
        {
          v15 = 0;
          if (!v55 && v56 == 0xC000000000000000)
          {
            v16 = v3;
            sub_26BE04890(0, 0xC000000000000000);
            sub_26BE04890(0, 0xC000000000000000);
            sub_26BE0489C(0, 0xC000000000000000);
            v17 = 0;
            v18 = 0xC000000000000000;
            goto LABEL_40;
          }
        }
      }

      else if (v13)
      {
        if (v13 == 1)
        {
          LODWORD(v15) = HIDWORD(v60) - v60;
          if (__OFSUB__(HIDWORD(v60), v60))
          {
            goto LABEL_84;
          }

          v15 = v15;
        }

        else
        {
          v21 = *(v60 + 16);
          v20 = *(v60 + 24);
          v22 = __OFSUB__(v20, v21);
          v15 = v20 - v21;
          if (v22)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
        v15 = BYTE6(v61);
      }

      if (v14 > 1)
      {
        if (v14 != 2)
        {
          if (v15)
          {
LABEL_74:
            sub_26BE04890(v55, v56);
            sub_26BE04890(v10, v9);
            sub_26BE0489C(v10, v9);
            sub_26BE0489C(v12, v11);
LABEL_76:
            sub_26BE2DAF8(&v55);
            sub_26BE2DAF8(&v60);
            return 0;
          }

LABEL_39:
          v16 = v3;
          sub_26BE04890(v55, v56);
          sub_26BE04890(v10, v9);
          sub_26BE0489C(v10, v9);
          v17 = v12;
          v18 = v11;
LABEL_40:
          sub_26BE0489C(v17, v18);
          goto LABEL_41;
        }

        v25 = *(v55 + 16);
        v24 = *(v55 + 24);
        v22 = __OFSUB__(v24, v25);
        v23 = v24 - v25;
        if (v22)
        {
          goto LABEL_83;
        }
      }

      else if (v14)
      {
        LODWORD(v23) = HIDWORD(v55) - v55;
        if (__OFSUB__(HIDWORD(v55), v55))
        {
          goto LABEL_82;
        }

        v23 = v23;
      }

      else
      {
        v23 = BYTE6(v56);
      }

      if (v15 != v23)
      {
        goto LABEL_74;
      }

      if (v15 < 1)
      {
        goto LABEL_39;
      }

      v16 = v3;
      sub_26BE04890(v55, v56);
      sub_26BE04890(v12, v11);
      sub_26BE04890(v10, v9);
      v26 = sub_26BECB6A4(v10, v9, v12, v11);
      sub_26BE0489C(v10, v9);
      sub_26BE0489C(v12, v11);
      if ((v26 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_41:
    v28 = v63;
    v27 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    (*(*(v27 + 8) + 24))(v54, v28);
    v29 = LOBYTE(v54[0]);

    v31 = v58;
    v30 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (*(*(v30 + 8) + 24))(v53, v31);
    LODWORD(v30) = LOBYTE(v53[0]);

    if (v29 != v30)
    {
      goto LABEL_76;
    }

    v33 = v63;
    v32 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v34 = (*(*(v32 + 8) + 16))(v33);
    v36 = v35;
    v38 = v58;
    v37 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    result = (*(*(v37 + 8) + 16))(v38);
    v40 = v36 >> 62;
    v41 = v39 >> 62;
    if (v36 >> 62 != 3)
    {
      break;
    }

    v42 = 0;
    v43 = v16;
    if (v34)
    {
      v44 = v52;
      if (v41 > 1)
      {
        goto LABEL_53;
      }

      goto LABEL_61;
    }

    v44 = v52;
    if (v36 != 0xC000000000000000)
    {
      goto LABEL_60;
    }

    if (v39 >> 62 != 3)
    {
      goto LABEL_60;
    }

    v42 = 0;
    if (result || v39 != 0xC000000000000000)
    {
      goto LABEL_60;
    }

    sub_26BE00258(0, 0xC000000000000000);
    v45 = 0;
    v46 = 0xC000000000000000;
LABEL_68:
    sub_26BE00258(v45, v46);
    sub_26BE2DAF8(&v55);
    sub_26BE2DAF8(&v60);
LABEL_6:
    v3 = v43 + 56;
    v4 = v44 + 56;
    if (!--v2)
    {
      return 1;
    }
  }

  v43 = v16;
  if (v40 == 2)
  {
    v51 = *(v34 + 16);
    v50 = *(v34 + 24);
    v22 = __OFSUB__(v50, v51);
    v42 = v50 - v51;
    v44 = v52;
    if (v22)
    {
      goto LABEL_81;
    }

LABEL_60:
    if (v41 <= 1)
    {
      goto LABEL_61;
    }

LABEL_53:
    if (v41 == 2)
    {
      v48 = *(result + 16);
      v47 = *(result + 24);
      v22 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v22)
      {
        goto LABEL_79;
      }

      goto LABEL_65;
    }

    if (v42)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

  v44 = v52;
  if (v40 == 1)
  {
    LODWORD(v42) = HIDWORD(v34) - v34;
    if (__OFSUB__(HIDWORD(v34), v34))
    {
      goto LABEL_80;
    }

    v42 = v42;
    if (v41 > 1)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v42 = BYTE6(v36);
    if (v41 > 1)
    {
      goto LABEL_53;
    }
  }

LABEL_61:
  if (!v41)
  {
    v49 = BYTE6(v39);
LABEL_65:
    if (v42 != v49)
    {
LABEL_75:
      sub_26BE00258(result, v39);
      sub_26BE00258(v34, v36);
      goto LABEL_76;
    }

    if (v42 >= 1)
    {
      v5 = result;
      v6 = v39;
      sub_26BE00608(result, v39);
      v7 = sub_26BECB6A4(v34, v36, v5, v6);
      sub_26BE00258(v34, v36);
      sub_26BE00258(v5, v6);
      sub_26BE2DAF8(&v55);
      sub_26BE2DAF8(&v60);
      if ((v7 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

LABEL_67:
    sub_26BE00258(result, v39);
    v45 = v34;
    v46 = v36;
    goto LABEL_68;
  }

  LODWORD(v49) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v49 = v49;
    goto LABEL_65;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}