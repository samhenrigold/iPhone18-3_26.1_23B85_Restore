uint64_t sub_2406EC4A0(uint64_t a1)
{
  v2 = sub_2406F30BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EC4DC(uint64_t a1)
{
  v2 = sub_2406F30BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EC518(uint64_t a1)
{
  v2 = sub_2406F2F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EC554(uint64_t a1)
{
  v2 = sub_2406F2F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EC590(uint64_t a1)
{
  v2 = sub_2406F3068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EC5CC(uint64_t a1)
{
  v2 = sub_2406F3068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EC608(uint64_t a1)
{
  v2 = sub_2406F2FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EC644(uint64_t a1)
{
  v2 = sub_2406F2FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInModel.State.encode(to:)(void *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCE08, &qword_24077A600);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v43 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCE10, &qword_24077A608);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v43 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCE18, &qword_24077A610);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v43 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCE20, &qword_24077A618);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v43 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCE28, &qword_24077A620);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v43 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCE30, &qword_24077A628);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v43 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCE38, &qword_24077A630);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v43 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCE40, &qword_24077A638);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCE48, &qword_24077A640);
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCE50, &qword_24077A648);
  v16 = *(v15 - 8);
  v79 = v15;
  v80 = v16;
  MEMORY[0x28223BE20](v15);
  v17 = *v1;
  v76 = *(v1 + 8);
  v77 = *(v1 + 9);
  v78 = v17;
  v18 = *(v1 + 10) | (*(v1 + 7) << 32);
  v19 = v1[2];
  v74 = v1[3];
  v75 = v19;
  v73 = *(v1 + 32);
  v70 = *(v1 + 33) | ((*(v1 + 37) | (*(v1 + 39) << 16)) << 32);
  v72 = *(v1 + 7);
  v71 = *(v1 + 5);
  v20 = v1[9];
  v67 = v1[10];
  v68 = v1[11];
  v69 = *(v1 + 96);
  v21 = a1[3];
  v22 = a1;
  v24 = &v43 - v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_2406F2DC8();
  sub_24075AF74();
  v25 = v20 >> 61;
  if ((v20 >> 61) <= 3)
  {
    if (v25 <= 1)
    {
      v26 = v79;
      if (!v25)
      {
        LOBYTE(v81) = 1;
        sub_2406F3068();
        sub_24075AB54();
        v81 = v78;
        v82 = v76;
        v83 = v77;
        v85 = WORD2(v18);
        v84 = v18;
        v86 = v75;
        v87 = v74;
        v88 = v73;
        v91 = BYTE6(v70);
        v90 = WORD2(v70);
        v89 = v70;
        v92 = v71;
        v93.i64[0] = v72.i64[0];
        sub_2406E9120();
        v27 = v48;
        sub_24075ABE4();
        (*(v47 + 8))(v11, v27);
        return (*(v80 + 8))(v24, v26);
      }

      LOBYTE(v81) = 2;
      sub_2406F3014();
      v28 = v49;
      sub_24075AB54();
      v81 = v78;
      v82 = v76;
      v83 = v77;
      v85 = WORD2(v18);
      v84 = v18;
      v86 = v75;
      v87 = v74;
      v88 = v73;
      v91 = BYTE6(v70);
      v90 = WORD2(v70);
      v89 = v70;
      v92 = v71;
      v93.i64[0] = v72.i64[0];
      sub_2406E9120();
      v29 = v51;
      sub_24075ABE4();
      v30 = &v80;
LABEL_16:
      (*(*(v30 - 32) + 8))(v28, v29);
      return (*(v80 + 8))(v24, v26);
    }

    v31 = v79;
    if (v25 == 2)
    {
      LOBYTE(v81) = 3;
      sub_2406F2FC0();
      v32 = v52;
      sub_24075AB54();
      v81 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6380, &qword_24077A650);
      sub_240590128(&qword_27E4B6388, &qword_27E4B6380, &qword_24077A650, &protocol conformance descriptor for _objcCodable<A>);
      v33 = v54;
      sub_24075AB94();
      (*(v53 + 8))(v32, v33);
      return (*(v80 + 8))(v24, v31);
    }

    LOBYTE(v81) = 4;
    sub_2406F2F6C();
    v34 = v55;
    sub_24075AB54();
    v81 = v78;
    v82 = v76 & 1;
    v83 = v77 & 1;
    v86 = v75;
    sub_2405901FC();
    v35 = v57;
    sub_24075ABE4();
    v39 = &v92;
    goto LABEL_19;
  }

  if (v25 <= 5)
  {
    if (v25 == 4)
    {
      LOBYTE(v81) = 5;
      sub_2406F2F18();
      v28 = v58;
      v26 = v79;
      sub_24075AB54();
      v81 = v78;
      v82 = v76 & 1;
      v83 = v77 & 1;
      v86 = v75;
      sub_2405901FC();
      v29 = v60;
      sub_24075ABE4();
      v30 = &v93.i64[1];
    }

    else
    {
      v37 = v20 & 0x1FFFFFFFFFFFFFFFLL;
      LOBYTE(v81) = 6;
      sub_2406F2EC4();
      v28 = v61;
      v26 = v79;
      sub_24075AB54();
      v81 = v78;
      v82 = v76;
      v83 = v77;
      v85 = WORD2(v18);
      v84 = v18;
      v86 = v75;
      v87 = v74;
      v88 = v73;
      v91 = BYTE6(v70);
      v90 = WORD2(v70);
      v89 = v70;
      v93 = v72;
      v92 = v71;
      v94 = v37;
      v95 = v67;
      v96 = v68;
      v97 = v69;
      sub_24065F930();
      v29 = v63;
      sub_24075ABE4();
      v30 = &v96;
    }

    goto LABEL_16;
  }

  if (v25 == 6)
  {
    LOBYTE(v81) = 7;
    sub_2406F2E70();
    v34 = v64;
    v31 = v79;
    sub_24075AB54();
    LOBYTE(v81) = 0;
    v35 = v66;
    v36 = v98[1];
    sub_24075ABB4();
    if (v36)
    {
      (*(v65 + 8))(v34, v35);
      return (*(v80 + 8))(v24, v31);
    }

    LOBYTE(v81) = 1;
    sub_24075ABB4();
    LOBYTE(v81) = 2;
    sub_24075ABC4();
    v39 = v98;
LABEL_19:
    (*(v39[-16].i64[0] + 8))(v34, v35);
    return (*(v80 + 8))(v24, v31);
  }

  if (v69 || v20 != 0xE000000000000000 || (v40 = vorrq_s8(v71, v72), v67 | *&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | v68 | v74 | v73 | (v70 << 8) | v76 | (v77 << 8) | (v18 << 16) | v78 | v75))
  {
    LOBYTE(v81) = 8;
    sub_2406F2E1C();
    v42 = v44;
    v41 = v79;
    sub_24075AB54();
    (*(v45 + 8))(v42, v46);
  }

  else
  {
    LOBYTE(v81) = 0;
    sub_2406F30BC();
    v41 = v79;
    sub_24075AB54();
    (*(v43 + 8))(v14, v12);
  }

  return (*(v80 + 8))(v24, v41);
}

void SignInModel.State.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v4 = v1[3];
  *v17 = v1[2];
  *&v17[16] = v4;
  v5 = v1[5];
  *&v17[32] = v1[4];
  v18 = v5;
  v6 = *(v1 + 96);
  v19 = *(v1 + 96);
  v7 = *&v17[40] >> 61;
  if ((*&v17[40] >> 61) <= 3)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v10 = a1;
      MEMORY[0x245CC6BA0](v8, *&v17[24], *&v17[8]);
      TermsAgreement.hash(into:)(v10);
      return;
    }

    if (v7 == 2)
    {
      MEMORY[0x245CC6BA0](3, *&v17[24], *&v17[8]);
      if (v15 == 1 || (sub_24075AE94(), !v15))
      {
        sub_24075AE94();
      }

      else
      {
        sub_24075AE94();
        sub_2406F3110(v15);
        sub_24075A6E4();
        sub_2406EA500(&v15);
      }

      return;
    }

    v9 = 4;
LABEL_18:
    v11 = a1;
    MEMORY[0x245CC6BA0](v9, *&v17[24], *&v17[8]);
    FindMyRequest.hash(into:)(v11);
    return;
  }

  if (v7 <= 5)
  {
    if (v7 != 4)
    {
      MEMORY[0x245CC6BA0](6);
      FamilyRepairModel.hash(into:)(a1);
      return;
    }

    v9 = 5;
    goto LABEL_18;
  }

  if (v7 == 6)
  {
    MEMORY[0x245CC6BA0](7, *&v17[24], *&v17[8]);
    sub_24075A114();
    sub_24075A114();
    sub_24075AE94();
  }

  else
  {
    if (v6 || *&v17[40] != 0xE000000000000000 || (v12 = vorrq_s8(*&v17[8], *&v17[24]), v15 | *&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | v16 | *(&v16 + 1) | v18 | *(&v18 + 1) | v17[0] | ((*&v17[1] | ((*&v17[5] | (v17[7] << 16)) << 32)) << 8) | BYTE8(v15) | (BYTE9(v15) << 8) | ((*(&v15 + 10) | (HIWORD(v15) << 32)) << 16)))
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x245CC6BA0](v13);
  }
}

uint64_t SignInModel.State.hashValue.getter()
{
  sub_24075AE64();
  SignInModel.State.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t SignInModel.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCEA8, &qword_24077A658);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v102 = &v79 - v3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCEB0, &qword_24077A660);
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v101 = &v79 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCEB8, &qword_24077A668);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v106 = &v79 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCEC0, &qword_24077A670);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v100 = &v79 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCEC8, &qword_24077A678);
  v91 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v105 = &v79 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCED0, &qword_24077A680);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v104 = &v79 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCED8, &qword_24077A688);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v103 = &v79 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCEE0, &qword_24077A690);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCEE8, &qword_24077A698);
  v83 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v79 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCEF0, &unk_24077A6A0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v79 - v17;
  v19 = a1[3];
  v108 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2406F2DC8();
  v20 = v123;
  sub_24075AF34();
  v21 = v20;
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v108);
  }

  v80 = v14;
  v79 = v12;
  v81 = v11;
  v22 = v103;
  v23 = v104;
  v24 = v105;
  v25 = v106;
  v123 = v16;
  v26 = v107;
  v82 = v18;
  v27 = sub_24075AB34();
  v28 = (2 * *(v27 + 16)) | 1;
  v119 = v27;
  v120 = v27 + 32;
  v121 = 0;
  v122 = v28;
  v29 = sub_2405B8B08();
  if (v29 == 9 || v121 != v122 >> 1)
  {
    v36 = v15;
    v37 = sub_24075A8C4();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v39 = &type metadata for SignInModel.State;
    v40 = v82;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v123 + 8))(v40, v36);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v108);
  }

  if (v29 <= 3u)
  {
    if (v29 > 1u)
    {
      if (v29 == 2)
      {
        LOBYTE(v109) = 2;
        sub_2406F3014();
        v44 = v82;
        sub_24075AA54();
        sub_2406E90CC();
        v45 = v87;
        sub_24075AAF4();
        (*(v86 + 8))(v22, v45);
        (*(v123 + 8))(v44, v15);
        swift_unknownObjectRelease();
        v78 = v109;
        v67 = v110;
        v68 = v111;
        v21 = v112;
        v77 = 0x2000000000000000;
        v76 = v113;
        v74 = v114;
      }

      else
      {
        LOBYTE(v109) = 3;
        sub_2406F2FC0();
        v57 = v82;
        sub_24075AA54();
        v62 = v15;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6380, &qword_24077A650);
        sub_240590128(&qword_27E4B63A8, &qword_27E4B6380, &qword_24077A650, &protocol conformance descriptor for _objcCodable<A>);
        v67 = v90;
        sub_24075AAA4();
        (*(v89 + 8))(v23, v67);
        (*(v123 + 8))(v57, v62);
        swift_unknownObjectRelease();
        v78 = v109;
        v77 = 0x4000000000000000;
      }

      goto LABEL_23;
    }

    if (v29)
    {
      LOBYTE(v109) = 1;
      sub_2406F3068();
      v54 = v81;
      v55 = v82;
      sub_24075AA54();
      v31 = v26;
      sub_2406E90CC();
      v56 = v85;
      sub_24075AAF4();
      (*(v84 + 8))(v54, v56);
      (*(v123 + 8))(v55, v15);
      swift_unknownObjectRelease();
      v77 = 0;
      v78 = v109;
      v67 = v110;
      v68 = v111;
      v21 = v112;
      v76 = v113;
      v74 = v114;
    }

    else
    {
      LOBYTE(v109) = 0;
      sub_2406F30BC();
      v42 = v80;
      v43 = v82;
      sub_24075AA54();
      v31 = v26;
      (*(v83 + 8))(v42, v79);
      (*(v123 + 8))(v43, v15);
      swift_unknownObjectRelease();
      v78 = 0;
      v67 = 0;
      v68 = 0;
      v72 = 0;
      v73 = 0;
      v76 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v77 = 0xE000000000000000;
    }

LABEL_30:
    v65 = v108;
    goto LABEL_31;
  }

  v30 = v82;
  if (v29 <= 5u)
  {
    v31 = v26;
    if (v29 == 4)
    {
      LOBYTE(v109) = 4;
      sub_2406F2F6C();
      v46 = v24;
      sub_24075AA54();
      v47 = v15;
      v48 = v123;
      v49 = v47;
      sub_2405901A8();
      v50 = v88;
      sub_24075AAF4();
      (*(v91 + 8))(v46, v50);
      (*(v48 + 8))(v30, v49);
      swift_unknownObjectRelease();
      v78 = v109;
      v72 = v110;
      v68 = v111;
      v70 = 256;
      if (!BYTE1(v110))
      {
        v70 = 0;
      }

      v67 = v70 | v110;
      v77 = 0x6000000000000000;
    }

    else
    {
      LOBYTE(v109) = 5;
      sub_2406F2F18();
      v59 = v100;
      sub_24075AA54();
      v60 = v15;
      v61 = v123;
      v63 = v60;
      sub_2405901A8();
      v64 = v93;
      sub_24075AAF4();
      (*(v92 + 8))(v59, v64);
      (*(v61 + 8))(v30, v63);
      swift_unknownObjectRelease();
      v78 = v109;
      v72 = v110;
      v68 = v111;
      v71 = 256;
      if (!BYTE1(v110))
      {
        v71 = 0;
      }

      v67 = v71 | v110;
      v77 = 0x8000000000000000;
    }

    goto LABEL_30;
  }

  v31 = v26;
  if (v29 == 6)
  {
    LOBYTE(v109) = 6;
    sub_2406F2EC4();
    sub_24075AA54();
    v51 = v15;
    sub_24065F8DC();
    v52 = v95;
    sub_24075AAF4();
    v53 = v123;
    (*(v94 + 8))(v25, v52);
    (*(v53 + 8))(v30, v51);
    swift_unknownObjectRelease();
    v78 = v109;
    v67 = v110;
    v68 = v111;
    v21 = v112;
    v76 = v113;
    v74 = v114;
    v72 = v115;
    v75 = v117;
    v73 = v118;
    v77 = v116 & 0x101 | 0xA000000000000000;
    goto LABEL_30;
  }

  if (v29 != 7)
  {
    LOBYTE(v109) = 8;
    sub_2406F2E1C();
    v58 = v102;
    sub_24075AA54();
    (*(v96 + 8))(v58, v97);
    (*(v123 + 8))(v30, v15);
    swift_unknownObjectRelease();
    v67 = 0;
    v68 = 0;
    v72 = 0;
    v73 = 0;
    v76 = 0uLL;
    v74 = 0uLL;
    v77 = 0xE000000000000000;
    v75 = 0uLL;
    v78 = 1;
    goto LABEL_30;
  }

  LOBYTE(v109) = 7;
  sub_2406F2E70();
  v32 = v101;
  sub_24075AA54();
  v33 = v15;
  LOBYTE(v109) = 0;
  v34 = v98;
  v35 = sub_24075AAC4();
  v67 = v66;
  v106 = v35;
  LOBYTE(v109) = 1;
  v68 = sub_24075AAC4();
  v21 = v69;
  LOBYTE(v109) = 2;
  v105 = sub_24075AAD4();
  (*(v99 + 8))(v32, v34);
  (*(v123 + 8))(v30, v33);
  swift_unknownObjectRelease();
  *&v76 = v105 & 1;
  v77 = 0xC000000000000000;
  v78 = v106;
LABEL_23:
  v65 = v108;
  v31 = v26;
LABEL_31:
  *v31 = v78;
  *(v31 + 8) = v67;
  *(v31 + 16) = v68;
  *(v31 + 24) = v21;
  *(v31 + 32) = v76;
  *(v31 + 48) = v74;
  *(v31 + 64) = v72;
  *(v31 + 72) = v77;
  *(v31 + 80) = v75;
  *(v31 + 96) = v73;
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_2406EE9E8()
{
  sub_24075AE64();
  SignInModel.State.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406EEA2C(uint64_t a1)
{
  sub_24075AE64();
  SignInModel.State.hash(into:)(v2);
  return sub_24075AED4();
}

BOOL SignInModel.DeviceUserKind.shouldCreateUser.getter()
{
  v1 = *v0;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return (v1 ^ 1) & 1;
    }

    else
    {
      return *v0 != 0;
    }
  }

  else
  {
    v2 = v1 ^ 1;
    if (!*(v0 + 16))
    {
      v2 = 0;
    }

    return v2 & 1;
  }
}

BOOL SignInModel.DeviceUserKind.isPrimary.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if ((v3 - 1) >= 2)
  {
    if (*(v0 + 16))
    {
      v4 = (v1 | v2) != 0;
      LOBYTE(v3) = 3;
    }

    else
    {
      v5 = *v0;
      v6 = *(v0 + 8);

      v2 = v6;
      v1 = v5;
      LOBYTE(v3) = 0;
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  sub_240604C7C(v1, v2, v3);
  sub_240604C7C(1, 0, 3);
  return v4;
}

uint64_t SignInModel.DeviceUserKind.replacingAutomatic(withPrimary:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 16);
  if (v5 == 1)
  {
    result = a1();
    v7 = 0;
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 &= 1u;
    }

    if (result)
    {
      LOBYTE(v5) = 3;
    }

    else
    {
      LOBYTE(v5) = 2;
    }
  }

  else
  {
    v7 = *(v2 + 8);
    result = sub_240668CD4(*v2, v7, *(v2 + 16));
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_2406EEBF8(uint64_t a1)
{
  v2 = sub_2406F321C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EEC34(uint64_t a1)
{
  v2 = sub_2406F321C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EEC70()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6974616D6F747561;
  v4 = 0x7972616D697270;
  if (v1 != 3)
  {
    v4 = 0x7473657567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E697473697865;
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

uint64_t sub_2406EED04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406F5BA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406EED2C(uint64_t a1)
{
  v2 = sub_2406F3120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EED68(uint64_t a1)
{
  v2 = sub_2406F3120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EEDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49656C69666F7270 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24075ACF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2406EEE50(uint64_t a1)
{
  v2 = sub_2406F3270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EEE8C(uint64_t a1)
{
  v2 = sub_2406F3270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EEEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726550796C6E6FLL && a2 == 0xEB00000000616E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24075ACF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2406EEF54(uint64_t a1)
{
  v2 = sub_2406F3174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EEF90(uint64_t a1)
{
  v2 = sub_2406F3174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EEFCC(uint64_t a1)
{
  v2 = sub_2406F32C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EF008(uint64_t a1)
{
  v2 = sub_2406F32C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406EF044(uint64_t a1)
{
  v2 = sub_2406F31C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406EF080(uint64_t a1)
{
  v2 = sub_2406F31C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInModel.DeviceUserKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCEF8, &qword_24077A6B0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF00, &qword_24077A6B8);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF08, &qword_24077A6C0);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF10, &qword_24077A6C8);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF18, &qword_24077A6D0);
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF20, &qword_24077A6D8);
  v44 = *(v16 - 8);
  v45 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v19 = *v1;
  *&v43 = v1[1];
  *(&v43 + 1) = v19;
  v20 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406F3120();
  sub_24075AF74();
  if (v20 <= 1)
  {
    if (v20)
    {
      v48 = 2;
      sub_2406F321C();
      v21 = v45;
      sub_24075AB54();
      v25 = v39;
      sub_24075ABC4();
      (*(v38 + 8))(v9, v25);
    }

    else
    {
      v47 = 1;
      sub_2406F3270();
      v21 = v45;
      sub_24075AB54();
      v22 = v37;
      sub_24075ABB4();
      (*(v36 + 8))(v12, v22);
    }

    return (*(v44 + 8))(v18, v21);
  }

  if (v20 == 2)
  {
    v50 = 4;
    sub_2406F3174();
    v23 = v40;
    v21 = v45;
    sub_24075AB54();
    v24 = v42;
    sub_24075ABC4();
    (*(v41 + 8))(v23, v24);
    return (*(v44 + 8))(v18, v21);
  }

  v27 = (v44 + 8);
  if (v43 == 0)
  {
    v46 = 0;
    sub_2406F32C4();
    v29 = v45;
    sub_24075AB54();
    (*(v31 + 8))(v15, v32);
  }

  else
  {
    v49 = 3;
    sub_2406F31C8();
    v28 = v33;
    v29 = v45;
    sub_24075AB54();
    (*(v34 + 8))(v28, v35);
  }

  return (*v27)(v18, v29);
}

uint64_t SignInModel.DeviceUserKind.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16) <= 1u)
  {
    if (!*(v1 + 16))
    {
      MEMORY[0x245CC6BA0](1);

      return sub_24075A114();
    }

    v3 = 2;
LABEL_9:
    MEMORY[0x245CC6BA0](v3);
    return sub_24075AE94();
  }

  if (*(v1 + 16) == 2)
  {
    v3 = 4;
    goto LABEL_9;
  }

  if (*v1 == 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  return MEMORY[0x245CC6BA0](v4);
}

uint64_t SignInModel.DeviceUserKind.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24075AE64();
  if (v3 <= 1)
  {
    if (!v3)
    {
      MEMORY[0x245CC6BA0](1);
      sub_24075A114();
      return sub_24075AED4();
    }

    v4 = 2;
LABEL_7:
    MEMORY[0x245CC6BA0](v4);
    sub_24075AE94();
    return sub_24075AED4();
  }

  if (v3 == 2)
  {
    v4 = 4;
    goto LABEL_7;
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x245CC6BA0](v5);
  return sub_24075AED4();
}

uint64_t SignInModel.DeviceUserKind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF58, &qword_24077A6E0);
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v65 = &v52 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF60, &qword_24077A6E8);
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v62 = &v52 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF68, &qword_24077A6F0);
  v59 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v64 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF70, &qword_24077A6F8);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF78, &qword_24077A700);
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF80, &qword_24077A708);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2406F3120();
  v17 = v67;
  sub_24075AF34();
  if (!v17)
  {
    v18 = v11;
    v67 = v9;
    v20 = v64;
    v19 = v65;
    v21 = sub_24075AB34();
    v22 = (2 * *(v21 + 16)) | 1;
    v68 = v21;
    v69 = v21 + 32;
    v70 = 0;
    v71 = v22;
    v23 = sub_2405B8AFC();
    if (v23 != 5 && v70 == v71 >> 1)
    {
      if (v23 <= 1u)
      {
        if (v23)
        {
          v72 = 1;
          sub_2406F3270();
          v42 = v8;
          sub_24075AA54();
          v43 = v66;
          v46 = v15;
          v47 = v12;
          v48 = v56;
          v30 = sub_24075AAC4();
          v28 = v51;
          (*(v55 + 8))(v42, v48);
          (*(v13 + 8))(v46, v47);
          swift_unknownObjectRelease();
          v29 = 0;
          v35 = v43;
LABEL_17:
          v38 = v63;
          goto LABEL_18;
        }

        v72 = 0;
        sub_2406F32C4();
        v37 = v15;
        sub_24075AA54();
        v26 = v66;
        (*(v53 + 8))(v18, v67);
        (*(v13 + 8))(v37, v12);
        swift_unknownObjectRelease();
        v30 = 0;
        v28 = 0;
        v29 = 3;
      }

      else
      {
        if (v23 == 2)
        {
          v72 = 2;
          sub_2406F321C();
          sub_24075AA54();
          v38 = v63;
          v39 = v54;
          v49 = sub_24075AAD4();
          (*(v59 + 8))(v20, v39);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v28 = 0;
          v30 = v49 & 1;
          v29 = 1;
          v35 = v66;
LABEL_18:
          *v38 = v30;
          *(v38 + 8) = v28;
          *(v38 + 16) = v29;
          return __swift_destroy_boxed_opaque_existential_1(v35);
        }

        if (v23 == 3)
        {
          v72 = 3;
          sub_2406F31C8();
          v24 = v62;
          sub_24075AA54();
          v25 = v15;
          v26 = v66;
          v27 = v25;
          (*(v57 + 8))(v24, v60);
          (*(v13 + 8))(v27, v12);
          swift_unknownObjectRelease();
          v28 = 0;
          v29 = 3;
          v30 = 1;
        }

        else
        {
          v72 = 4;
          sub_2406F3174();
          v40 = v19;
          sub_24075AA54();
          v41 = v15;
          v26 = v66;
          v44 = v41;
          v45 = v58;
          v50 = sub_24075AAD4();
          (*(v61 + 8))(v40, v45);
          (*(v13 + 8))(v44, v12);
          swift_unknownObjectRelease();
          v28 = 0;
          v30 = v50 & 1;
          v29 = 2;
        }
      }

      v35 = v26;
      goto LABEL_17;
    }

    v31 = sub_24075A8C4();
    swift_allocError();
    v32 = v15;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v34 = &type metadata for SignInModel.DeviceUserKind;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v31 - 8) + 104))(v34, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    (*(v13 + 8))(v32, v12);
    swift_unknownObjectRelease();
  }

  v35 = v66;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_2406F0128()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24075AE64();
  SignInModel.DeviceUserKind.hash(into:)(v3);
  return sub_24075AED4();
}

uint64_t sub_2406F0180(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_24075AE64();
  SignInModel.DeviceUserKind.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t SignInModel.AISCDPLocalSecretType.description.getter()
{
  if (*v0)
  {
    return 0x656C706D6973;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t SignInModel.AISCDPLocalSecretType.cdpDeviceSecretType()()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2406F0234()
{
  if (*v0)
  {
    return 0x656C706D6973;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_2406F026C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C706D6973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_2406F0344(uint64_t a1)
{
  v2 = sub_2406F3318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F0380(uint64_t a1)
{
  v2 = sub_2406F3318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406F03BC(uint64_t a1)
{
  v2 = sub_2406F336C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F03F8(uint64_t a1)
{
  v2 = sub_2406F336C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406F0434(uint64_t a1)
{
  v2 = sub_2406F33C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F0470(uint64_t a1)
{
  v2 = sub_2406F33C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInModel.AISCDPLocalSecretType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF88, &qword_24077A710);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF90, &qword_24077A718);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCF98, &qword_24077A720);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406F3318();
  sub_24075AF74();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2406F336C();
    v14 = v18;
    sub_24075AB54();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2406F33C0();
    sub_24075AB54();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t SignInModel.AISCDPLocalSecretType.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t SignInModel.AISCDPLocalSecretType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCFB8, &qword_24077A728);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCFC0, &qword_24077A730);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCFC8, &qword_24077A738);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406F3318();
  v12 = v31;
  sub_24075AF34();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_24075AB34();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_2405B8AF4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_24075A8C4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v22 = &type metadata for SignInModel.AISCDPLocalSecretType;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_2406F336C();
        sub_24075AA54();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2406F33C0();
        sub_24075AA54();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t SignInModel.description.getter()
{
  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  sub_24075A864();
  v38 = v31;
  MEMORY[0x245CC5E60](0x7461747320202020, 0xEB00000000203A65);
  v1 = type metadata accessor for SignInModel(0);
  v2 = (v0 + v1[19]);
  v3 = v2[5];
  v35 = v2[4];
  v36 = v3;
  v37 = *(v2 + 96);
  v4 = v2[1];
  v31 = *v2;
  v32 = v4;
  v5 = v2[3];
  v33 = v2[2];
  v34 = v5;
  sub_24075A994();
  MEMORY[0x245CC5E60](0x6361202020200A0ALL, 0xEF203A746E756F63);
  type metadata accessor for IdMSAccount(0);
  sub_2406F2A28(&qword_27E4B6B58, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD000000000000011, 0x8000000240789790);
  v6 = (v0 + v1[5]);
  v7 = v6[3];
  v8 = v6[1];
  v40 = v6[2];
  v41 = v7;
  v9 = v6[3];
  v10 = v6[5];
  v42 = v6[4];
  v43 = v10;
  v11 = v6[1];
  v39[0] = *v6;
  v39[1] = v11;
  v27 = v40;
  v28 = v9;
  v29 = v42;
  v30 = v6[5];
  v25 = v39[0];
  v26 = v8;
  sub_2405B044C(v39, &v31, &qword_27E4B8D00, &qword_2407691E0);
  sub_2406F3414();
  sub_24075ACD4();
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v31 = v25;
  v32 = v26;
  sub_2405B8A50(&v31, &qword_27E4B8D00, &qword_2407691E0);
  MEMORY[0x245CC5E60](0xD000000000000017, 0x80000002407897B0);
  type metadata accessor for AIDAServiceType(0);
  sub_2406F2A28(&qword_280FAD720, type metadata accessor for AIDAServiceType, &unk_24075D60C);
  v12 = sub_24075A544();
  MEMORY[0x245CC5E60](v12);

  MEMORY[0x245CC5E60](0xD000000000000016, 0x80000002407897D0);
  v13 = sub_24075A544();
  MEMORY[0x245CC5E60](v13);

  MEMORY[0x245CC5E60](0xD000000000000027, 0x80000002407897F0);
  if (*(v0 + v1[8]))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + v1[8]))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v14, v15);

  MEMORY[0x245CC5E60](0xD000000000000026, 0x8000000240789820);
  if (*(v0 + v1[9]))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v0 + v1[9]))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v16, v17);

  MEMORY[0x245CC5E60](0xD00000000000001BLL, 0x8000000240789850);
  sub_240618FD8(*(v0 + v1[10]), *(v0 + v1[10] + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F38, &qword_24077A740);
  v18 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v18);

  MEMORY[0x245CC5E60](0xD00000000000001DLL, 0x8000000240789870);
  sub_240590794(0, qword_27E4BBA68, 0x277D02880);
  sub_2406F3468();
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD000000000000012, 0x8000000240789890);
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD000000000000016, 0x80000002407898B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCFE0, &qword_24077A748);
  v19 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v19);

  MEMORY[0x245CC5E60](0xD000000000000015, 0x80000002407898D0);
  sub_24075A994();
  MEMORY[0x245CC5E60](0xD000000000000013, 0x80000002407898F0);
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0x467369202020200ALL, 0xEE00203A6C616E69);
  if (*(v0 + v1[18]))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v0 + v1[18]))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v20, v21);

  MEMORY[0x245CC5E60](0xD00000000000001ELL, 0x8000000240789910);
  if (*(v0 + v1[12]))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v0 + v1[12]))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v22, v23);

  MEMORY[0x245CC5E60](0xD000000000000018, 0x8000000240788630);
  sub_24075ACD4();
  MEMORY[0x245CC5E60](10, 0xE100000000000000);
  return v38;
}

uint64_t _s12AppleIDSetup11SignInModelV14DeviceUserKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (*(a2 + 16))
      {

LABEL_30:
        sub_240668CD4(v5, v6, v7);
        sub_240604C7C(v2, v3, v4);
        sub_240604C7C(v5, v6, v7);
        v11 = 0;
        return v11 & 1;
      }

      v14 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v16 = sub_24075ACF4();
        sub_240668CD4(v5, v6, 0);
        sub_240668CD4(v2, v3, 0);
        sub_240604C7C(v2, v3, 0);
        sub_240604C7C(v5, v6, 0);
        return v16 & 1;
      }

      sub_240668CD4(v14, v3, 0);
      sub_240668CD4(v2, v3, 0);
      sub_240604C7C(v2, v3, 0);
      v19 = v2;
      v20 = v3;
      v21 = 0;
LABEL_34:
      sub_240604C7C(v19, v20, v21);
      v11 = 1;
      return v11 & 1;
    }

    if (v7 != 1)
    {
      goto LABEL_30;
    }

    sub_240604C7C(*a1, v3, 1);
    v8 = v5;
    v9 = v6;
    v10 = 1;
    goto LABEL_10;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_30;
    }

    sub_240604C7C(*a1, v3, 2);
    v8 = v5;
    v9 = v6;
    v10 = 2;
LABEL_10:
    sub_240604C7C(v8, v9, v10);
    v11 = v5 ^ v2 ^ 1;
    return v11 & 1;
  }

  if (!(v2 | v3))
  {
    if (v7 != 3 || (v6 | v5) != 0)
    {
      goto LABEL_30;
    }

    sub_240604C7C(*a1, v3, 3);
    v19 = 0;
    v20 = 0;
    v21 = 3;
    goto LABEL_34;
  }

  if (v7 != 3 || v5 != 1 || v6 != 0)
  {
    goto LABEL_30;
  }

  sub_240604C7C(*a1, v3, 3);
  v11 = 1;
  sub_240604C7C(1, 0, 3);
  return v11 & 1;
}

uint64_t _s12AppleIDSetup11SignInModelV5StateO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  *&v59[32] = a1[4];
  v60 = v3;
  v4 = a1[1];
  v57 = *a1;
  v58 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  *v59 = a1[2];
  *&v59[16] = v5;
  v8 = a2[1];
  *v62 = *a2;
  *&v62[16] = v8;
  v9 = a2[3];
  v10 = a2[5];
  *&v62[64] = a2[4];
  v63 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  *&v62[32] = a2[2];
  *&v62[48] = v11;
  v65[0] = v7;
  v65[1] = v6;
  v14 = a1[5];
  v65[4] = *&v59[32];
  v65[5] = v14;
  v65[2] = *v59;
  v65[3] = v2;
  v69 = *&v62[32];
  v68 = v13;
  v61 = *(a1 + 96);
  v64 = *(a2 + 96);
  v66 = *(a1 + 96);
  v67 = v12;
  v15 = a2[5];
  v73 = *(a2 + 96);
  v72 = v15;
  v71 = *&v62[64];
  v70 = v9;
  v16 = v57;
  v17 = *(&v57 + 10) | (HIWORD(v57) << 32);
  v18 = v59[0];
  v19 = *&v59[40] >> 61;
  if ((*&v59[40] >> 61) > 3)
  {
    if (v19 > 5)
    {
      v22 = v17 << 16;
      if (v19 == 6)
      {
        if (*&v62[72] >> 61 == 6)
        {
          v23 = v62[32];
          if (__PAIR128__(BYTE8(v57) | (BYTE9(v57) << 8) | v22, v57) == *v62 || (sub_24075ACF4() & 1) != 0)
          {
            if (v58 == *&v62[16])
            {
              sub_2406EA448(v62, &v43);
              sub_2406EA448(&v57, &v43);
              sub_2405B8A50(v65, &qword_27E4BD218, &unk_24077C268);
            }

            else
            {
              v29 = sub_24075ACF4();
              sub_2406EA448(v62, &v43);
              sub_2406EA448(&v57, &v43);
              sub_2405B8A50(v65, &qword_27E4BD218, &unk_24077C268);
              v21 = 0;
              if ((v29 & 1) == 0)
              {
                return v21 & 1;
              }
            }

            v21 = v18 ^ v23 ^ 1;
            return v21 & 1;
          }
        }

        goto LABEL_44;
      }

      if (v61 || *&v59[40] != 0xE000000000000000 || (v25 = vorrq_s8(v60, *&v59[24]), v57 | *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | v58 | *(&v58 + 1) | v59[0] | ((*&v59[1] | ((*&v59[5] | (v59[7] << 16)) << 32)) << 8) | BYTE8(v57) | (BYTE9(v57) << 8) | v22 | *&v59[16] | *&v59[8]))
      {
        if (*&v62[72] >> 61 != 7)
        {
          goto LABEL_44;
        }

        if (v64)
        {
          goto LABEL_44;
        }

        if (v63 != 0)
        {
          goto LABEL_44;
        }

        if (*&v62[72] != 0xE000000000000000)
        {
          goto LABEL_44;
        }

        if (*v62 != 1)
        {
          goto LABEL_44;
        }

        v27 = vorrq_s8(vorrq_s8(*&v62[8], *&v62[40]), vorrq_s8(*&v62[24], *&v62[56]));
        if (vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*&v62[72] >> 61 != 7)
        {
          goto LABEL_44;
        }

        if (v64)
        {
          goto LABEL_44;
        }

        if (*&v62[72] != 0xE000000000000000)
        {
          goto LABEL_44;
        }

        v26 = vorrq_s8(vorrq_s8(*&v62[8], *&v62[40]), vorrq_s8(*&v62[24], *&v62[56]));
        if (*&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | v63 | *(&v63 + 1) | *v62)
        {
          goto LABEL_44;
        }
      }

      sub_2405B8A50(v65, &qword_27E4BD218, &unk_24077C268);
      goto LABEL_43;
    }

    if (v19 != 4)
    {
      if (*&v62[72] >> 61 == 5)
      {
        v43 = v57;
        v44 = WORD4(v57);
        v45 = *(&v57 + 10);
        v46 = WORD2(v17);
        v47 = v58;
        v48 = v59[0];
        v49 = *&v59[1];
        v51 = (*&v59[1] | ((*&v59[5] | (v59[7] << 16)) << 32)) >> 48;
        v50 = *&v59[5];
        v52 = *&v59[8];
        v53 = *&v59[24];
        v54 = *&v59[40] & 0x1FFFFFFFFFFFFFFFLL;
        v55 = v60;
        v56 = v61;
        v36 = *v62;
        v37 = *&v62[16];
        *v38 = *&v62[32];
        *&v38[16] = *&v62[48];
        v39 = *&v62[64];
        v40 = *&v62[72] & 0x1FFFFFFFFFFFFFFFLL;
        v41 = v63;
        v42 = v64;
        sub_2406EA448(v62, &v32);
        sub_2406EA448(&v57, &v32);
        sub_2406EA448(v62, &v32);
        sub_2406EA448(&v57, &v32);
        MyRequestV2eeoiySbAC_ACtFZ_0 = _s12AppleIDSetup17FamilyRepairModelV2eeoiySbAC_ACtFZ_0(&v43, &v36);
        goto LABEL_27;
      }

      goto LABEL_44;
    }

    if (*&v62[72] >> 61 != 4)
    {
      goto LABEL_44;
    }

LABEL_26:
    *&v36 = v57;
    WORD4(v36) = WORD4(v57) & 0x101;
    *&v37 = v58;
    *&v32 = *v62;
    WORD4(v32) = *&v62[8] & 0x101;
    *&v33 = *&v62[16];
    sub_2406EA448(v62, &v43);
    sub_2406EA448(&v57, &v43);
    sub_2406EA448(v62, &v43);
    sub_2406EA448(&v57, &v43);
    MyRequestV2eeoiySbAC_ACtFZ_0 = _s12AppleIDSetup13FindMyRequestV2eeoiySbAC_ACtFZ_0(&v36, &v32);
    goto LABEL_27;
  }

  if (v19 <= 1)
  {
    if (!v19)
    {
      if (*&v62[72] >> 61)
      {
        goto LABEL_44;
      }

      goto LABEL_22;
    }

    if (*&v62[72] >> 61 == 1)
    {
LABEL_22:
      *&v36 = v57;
      WORD4(v36) = WORD4(v57);
      *(&v36 + 10) = *(&v57 + 10);
      HIWORD(v36) = WORD2(v17);
      v37 = v58;
      v38[0] = v59[0];
      *&v38[1] = *&v59[1];
      v38[7] = (*&v59[1] | ((*&v59[5] | (v59[7] << 16)) << 32)) >> 48;
      *&v38[5] = *&v59[5];
      *&v38[8] = *&v59[8];
      *&v38[24] = *&v59[24];
      v32 = *v62;
      v33 = *&v62[16];
      v34 = *&v62[32];
      v35 = *&v62[48];
      sub_2406EA448(v62, &v43);
      sub_2406EA448(&v57, &v43);
      sub_2406EA448(v62, &v43);
      sub_2406EA448(&v57, &v43);
      MyRequestV2eeoiySbAC_ACtFZ_0 = _s12AppleIDSetup14TermsAgreementV2eeoiySbAC_ACtFZ_0(&v36, &v32);
LABEL_27:
      v21 = MyRequestV2eeoiySbAC_ACtFZ_0;
      sub_2405B8A50(v65, &qword_27E4BD218, &unk_24077C268);
      sub_2406EA500(v62);
      sub_2406EA500(&v57);
      return v21 & 1;
    }

LABEL_44:
    sub_2406EA448(v62, &v43);
    sub_2406EA448(&v57, &v43);
    sub_2405B8A50(v65, &qword_27E4BD218, &unk_24077C268);
LABEL_45:
    v21 = 0;
    return v21 & 1;
  }

  if (v19 != 2)
  {
    if (*&v62[72] >> 61 != 3)
    {
      goto LABEL_44;
    }

    goto LABEL_26;
  }

  if (*&v62[72] >> 61 != 2)
  {
    goto LABEL_44;
  }

  v20 = *v62;
  if (v57 != 1)
  {
    if (*v62 == 1)
    {
      sub_2406EA448(v62, &v43);
      sub_2406EA448(&v57, &v43);
      sub_2406EA448(v62, &v43);
      sub_2406EA448(&v57, &v43);
LABEL_57:
      sub_2405B8A50(v65, &qword_27E4BD218, &unk_24077C268);
      goto LABEL_58;
    }

    if (v57)
    {
      if (*v62)
      {
        sub_240590794(0, &qword_27E4B63F8, 0x277CB8F30);
        sub_2406EA448(v62, &v43);
        sub_2406EA448(&v57, &v43);
        sub_2406EA448(v62, &v43);
        sub_2406EA448(&v57, &v43);
        sub_2406EA448(v62, &v43);
        sub_2406EA448(&v57, &v43);
        sub_2406F3110(v20);
        sub_2406F3110(v16);
        v30 = sub_24075A6D4();
        sub_240604E2C(v16);
        sub_240604E2C(v20);
        sub_2405B8A50(v65, &qword_27E4BD218, &unk_24077C268);
        sub_2406EA500(v62);
        sub_2406EA500(&v57);
        sub_240604E2C(v20);
        sub_240604E2C(v16);
        if ((v30 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else if (!*v62)
    {
      sub_2406EA448(v62, &v43);
      sub_2406EA448(&v57, &v43);
      sub_2406EA448(v62, &v43);
      sub_2406EA448(&v57, &v43);
      sub_2405B8A50(v65, &qword_27E4BD218, &unk_24077C268);
      sub_240604E2C(0);
LABEL_43:
      v21 = 1;
      return v21 & 1;
    }

    sub_2406EA448(v62, &v43);
    sub_2406EA448(&v57, &v43);
    sub_2406EA448(v62, &v43);
    sub_2406EA448(&v57, &v43);
    v31 = v20;
    v20 = v16;
    v16 = v31;
    goto LABEL_57;
  }

  sub_2406EA448(v62, &v43);
  sub_2406EA448(&v57, &v43);
  sub_2406EA448(v62, &v43);
  sub_2406EA448(&v57, &v43);
  sub_2405B8A50(v65, &qword_27E4BD218, &unk_24077C268);
  if (v20 != 1)
  {
LABEL_58:
    sub_240604E2C(v16);
    sub_240604E2C(v20);
    goto LABEL_45;
  }

  v21 = 1;
  sub_240604E2C(1);
  return v21 & 1;
}

uint64_t _s12AppleIDSetup11SignInModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v125 = &v121[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v121[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71A8, &unk_240762410);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v121[-v12];
  v14 = *(v11 + 56);
  v126 = a1;
  sub_2405B044C(a1, &v121[-v12], &qword_27E4B6418, &unk_24075D910);
  v127 = a2;
  sub_2405B044C(a2, &v13[v14], &qword_27E4B6418, &unk_24075D910);
  v15 = *(v5 + 48);
  if (v15(v13, 1, v4) == 1)
  {
    if (v15(&v13[v14], 1, v4) == 1)
    {
      sub_2405B8A50(v13, &qword_27E4B6418, &unk_24075D910);
      goto LABEL_8;
    }

LABEL_6:
    sub_2405B8A50(v13, &qword_27E4B71A8, &unk_240762410);
    goto LABEL_35;
  }

  sub_2405B044C(v13, v9, &qword_27E4B6418, &unk_24075D910);
  if (v15(&v13[v14], 1, v4) == 1)
  {
    sub_2406F2D68(v9, type metadata accessor for IdMSAccount);
    goto LABEL_6;
  }

  v16 = v125;
  sub_24061A408(&v13[v14], v125);
  v17 = _s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(v9, v16);
  sub_2406F2D68(v16, type metadata accessor for IdMSAccount);
  sub_2406F2D68(v9, type metadata accessor for IdMSAccount);
  sub_2405B8A50(v13, &qword_27E4B6418, &unk_24075D910);
  if ((v17 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_8:
  v18 = type metadata accessor for SignInModel(0);
  v20 = v126;
  v19 = v127;
  v21 = (v126 + v18[5]);
  v22 = v21[3];
  v23 = v21[1];
  v181 = v21[2];
  v182 = v22;
  v24 = v21[3];
  v25 = v21[5];
  v183 = v21[4];
  v184 = v25;
  v26 = v21[1];
  v180[0] = *v21;
  v180[1] = v26;
  v27 = (v127 + v18[5]);
  v28 = v27[3];
  v29 = v27[5];
  v188 = v27[4];
  v189 = v29;
  v30 = v27[1];
  v31 = v27[3];
  v186 = v27[2];
  v187 = v31;
  v32 = v27[1];
  v185[0] = *v27;
  v185[1] = v32;
  v130 = v24;
  v131 = v183;
  v132 = v21[5];
  v128 = v23;
  v129 = v181;
  v33 = v27[5];
  v178 = v188;
  v179 = v33;
  v34 = v180[0];
  v35 = v185[0];
  v176 = v186;
  v177 = v28;
  v175 = v30;
  if (!*(&v180[0] + 1))
  {
    if (!*(&v185[0] + 1))
    {
      v163 = *&v180[0];
      v41 = v21[4];
      v166 = v21[3];
      v167 = v41;
      v168 = v21[5];
      v42 = v21[2];
      v164 = v21[1];
      v165 = v42;
      sub_2405B044C(v180, &v156, &qword_27E4B8D00, &qword_2407691E0);
      sub_2405B044C(v185, &v156, &qword_27E4B8D00, &qword_2407691E0);
      sub_2405B8A50(&v163, &qword_27E4B8D00, &qword_2407691E0);
      goto LABEL_17;
    }

    sub_2405B044C(v180, &v163, &qword_27E4B8D00, &qword_2407691E0);
    sub_2405B044C(v185, &v163, &qword_27E4B8D00, &qword_2407691E0);
LABEL_15:
    v163 = v34;
    v166 = v130;
    v167 = v131;
    v168 = v132;
    v164 = v128;
    v165 = v129;
    v169 = v35;
    v173 = v178;
    v174 = v179;
    v171 = v176;
    v172 = v177;
    v170 = v175;
    sub_2405B8A50(&v163, &qword_27E4BD220, &qword_24077C278);
    goto LABEL_35;
  }

  v163 = v180[0];
  v36 = v21[4];
  v166 = v21[3];
  v167 = v36;
  v168 = v21[5];
  v37 = v21[2];
  v164 = v21[1];
  v165 = v37;
  v158 = v37;
  v159 = v166;
  v160 = v36;
  v161 = v168;
  v156 = v180[0];
  v157 = v164;
  if (!*(&v185[0] + 1))
  {
    v151 = v165;
    v152 = v166;
    v153 = v167;
    v154 = v168;
    v149 = v163;
    v150 = v164;
    sub_2405B044C(v180, &v142, &qword_27E4B8D00, &qword_2407691E0);
    sub_2405B044C(v185, &v142, &qword_27E4B8D00, &qword_2407691E0);
    sub_2405B044C(&v163, &v142, &qword_27E4B8D00, &qword_2407691E0);
    sub_240618F54(&v149);
    goto LABEL_15;
  }

  v38 = v27[4];
  v152 = v27[3];
  v153 = v38;
  v154 = v27[5];
  v39 = v27[2];
  v150 = v27[1];
  v151 = v39;
  v149 = v185[0];
  sub_2405B044C(v180, &v142, &qword_27E4B8D00, &qword_2407691E0);
  sub_2405B044C(v185, &v142, &qword_27E4B8D00, &qword_2407691E0);
  sub_2405B044C(&v163, &v142, &qword_27E4B8D00, &qword_2407691E0);
  v40 = _s12AppleIDSetup11IdMSAccountV10SRPResultsV2eeoiySbAE_AEtFZ_0(&v156, &v149);
  v137 = v151;
  v138 = v152;
  v139 = v153;
  v140 = v154;
  v135 = v149;
  v136 = v150;
  sub_240618F54(&v135);
  v144 = v158;
  v145 = v159;
  v146 = v160;
  v147 = v161;
  v142 = v156;
  v143 = v157;
  sub_240618F54(&v142);
  v149 = v34;
  v152 = v130;
  v153 = v131;
  v154 = v132;
  v150 = v128;
  v151 = v129;
  sub_2405B8A50(&v149, &qword_27E4B8D00, &qword_2407691E0);
  if (!v40)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((sub_240753B98() & 1) == 0 || (sub_240753B98() & 1) == 0 || *(v20 + v18[8]) != *(v19 + v18[8]) || *(v20 + v18[9]) != *(v19 + v18[9]))
  {
    goto LABEL_35;
  }

  v43 = v18[10];
  v44 = *(v20 + v43);
  v45 = *(v20 + v43 + 8);
  v46 = *(v20 + v43 + 16);
  v47 = *(v20 + v43 + 24);
  v48 = (v19 + v43);
  v49 = *v48;
  v50 = v48[1];
  v52 = v48[2];
  v51 = v48[3];
  v124 = v52;
  v125 = v51;
  v53 = v44;
  if (v45)
  {
    if (v50)
    {
      if (v44 == v49 && v45 == v50 || (sub_24075ACF4()) && (sub_2406E45D4(v46, v124))
      {
        v122 = sub_2406E45D4(v47, v125);
        v123 = v53;
        sub_240618FD8(v53, v45);
        v54 = v49;
        v55 = v49;
        v56 = v124;
        sub_240618FD8(v55, v50);
        sub_240618FD8(v123, v45);
        sub_240604C2C(v54, v50, v56, v125);

        sub_240604C2C(v123, v45, v46, v47);
        if ((v122 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      sub_240618FD8(v53, v45);
      v61 = v49;
      v62 = v49;
      v63 = v124;
      v64 = v125;
      sub_240618FD8(v62, v50);
      sub_240618FD8(v53, v45);
      sub_240604C2C(v61, v50, v63, v64);

      v65 = v53;
      v66 = v45;
      v67 = v46;
      v68 = v47;
LABEL_34:
      sub_240604C2C(v65, v66, v67, v68);
      goto LABEL_35;
    }

    sub_240618FD8(v44, v45);
    v57 = v49;
    v69 = v49;
    v59 = v124;
    v60 = v125;
    sub_240618FD8(v69, 0);
    sub_240618FD8(v53, v45);

LABEL_33:
    sub_240604C2C(v53, v45, v46, v47);
    v65 = v57;
    v66 = v50;
    v67 = v59;
    v68 = v60;
    goto LABEL_34;
  }

  sub_240618FD8(v44, 0);
  if (v50)
  {
    v57 = v49;
    v58 = v49;
    v59 = v124;
    v60 = v125;
    sub_240618FD8(v58, v50);
    goto LABEL_33;
  }

  sub_240618FD8(v49, 0);
  sub_240604C2C(v53, 0, v46, v47);
LABEL_38:
  v72 = v18[11];
  v73 = (v20 + v72);
  v74 = *(v20 + v72 + 8);
  v75 = (v19 + v72);
  v76 = v75[1];
  if (v74)
  {
    if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_24075ACF4() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v76)
  {
    goto LABEL_35;
  }

  if (*(v20 + v18[12]) == *(v19 + v18[12]))
  {
    v77 = v18[13];
    v78 = v19;
    v79 = *(v20 + v77);
    v80 = *(v78 + v77);
    if (v79)
    {
      if (!v80)
      {
        goto LABEL_35;
      }

      sub_240590794(0, qword_27E4BBA68, 0x277D02880);
      v81 = v80;
      v82 = v79;
      v83 = sub_24075A6D4();

      if ((v83 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v80)
    {
      goto LABEL_35;
    }

    v84 = v18[14];
    v85 = (v20 + v84);
    v86 = *(v20 + v84 + 8);
    v87 = v127;
    v88 = (v127 + v84);
    v89 = v88[1];
    if (v86)
    {
      if (!v89 || (*v85 != *v88 || v86 != v89) && (sub_24075ACF4() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v89)
    {
      goto LABEL_35;
    }

    v90 = v18[15];
    v91 = *(v20 + v90);
    v92 = *(v87 + v90);
    if (v91 == 2)
    {
      if (v92 != 2)
      {
        goto LABEL_35;
      }
    }

    else if (v92 == 2 || ((v92 ^ v91) & 1) != 0)
    {
      goto LABEL_35;
    }

    v93 = v18[16];
    v94 = *(v126 + v93 + 8);
    v95 = *(v126 + v93 + 16);
    *&v163 = *(v126 + v93);
    *(&v163 + 1) = v94;
    LOBYTE(v164) = v95;
    v96 = v127 + v93;
    v98 = *(v96 + 8);
    v99 = *(v96 + 16);
    *&v156 = *v96;
    v97 = v156;
    *(&v156 + 1) = v98;
    LOBYTE(v157) = v99;
    sub_240668CD4(v163, v94, v95);
    sub_240668CD4(v97, v98, v99);
    LOBYTE(v97) = _s12AppleIDSetup11SignInModelV14DeviceUserKindO2eeoiySbAE_AEtFZ_0(&v163, &v156);
    sub_240604C7C(v156, *(&v156 + 1), v157);
    sub_240604C7C(v163, *(&v163 + 1), v164);
    if (v97)
    {
      v100 = v18[17];
      v101 = (v126 + v100);
      v102 = *(v126 + v100 + 8);
      v103 = (v127 + v100);
      v104 = v103[1];
      if (v102)
      {
        if (!v104 || (*v101 != *v103 || v102 != v104) && (sub_24075ACF4() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v104)
      {
        goto LABEL_35;
      }

      if (*(v126 + v18[18]) == *(v127 + v18[18]))
      {
        v105 = v126 + v18[19];
        v106 = *(v105 + 80);
        v107 = *(v105 + 48);
        v146 = *(v105 + 64);
        v147 = v106;
        v148 = *(v105 + 96);
        v108 = *(v105 + 16);
        v142 = *v105;
        v143 = v108;
        v109 = *(v105 + 48);
        v111 = *v105;
        v110 = *(v105 + 16);
        v144 = *(v105 + 32);
        v145 = v109;
        v112 = *(v105 + 80);
        v139 = v146;
        v140 = v112;
        v141 = *(v105 + 96);
        v135 = v111;
        v136 = v110;
        v137 = v144;
        v138 = v107;
        v113 = v127 + v18[19];
        v114 = *(v113 + 48);
        v115 = *(v113 + 80);
        v153 = *(v113 + 64);
        v154 = v115;
        v116 = *(v113 + 16);
        v149 = *v113;
        v150 = v116;
        v117 = *(v113 + 48);
        v119 = *v113;
        v118 = *(v113 + 16);
        v151 = *(v113 + 32);
        v152 = v117;
        v120 = *(v113 + 80);
        v132 = v153;
        v133 = v120;
        v155 = *(v113 + 96);
        v134 = *(v113 + 96);
        v128 = v119;
        v129 = v118;
        v130 = v151;
        v131 = v114;
        sub_2406EA448(&v142, &v163);
        sub_2406EA448(&v149, &v163);
        v70 = _s12AppleIDSetup11SignInModelV5StateO2eeoiySbAE_AEtFZ_0(&v135, &v128);
        v160 = v132;
        v161 = v133;
        v162 = v134;
        v156 = v128;
        v157 = v129;
        v158 = v130;
        v159 = v131;
        sub_2406EA500(&v156);
        v167 = v139;
        v168 = v140;
        LOBYTE(v169) = v141;
        v163 = v135;
        v164 = v136;
        v165 = v137;
        v166 = v138;
        sub_2406EA500(&v163);
        return v70 & 1;
      }
    }
  }

LABEL_35:
  v70 = 0;
  return v70 & 1;
}

unint64_t sub_2406F29D4()
{
  result = qword_27E4BCDB0;
  if (!qword_27E4BCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCDB0);
  }

  return result;
}

uint64_t sub_2406F2A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2406F2A70()
{
  result = qword_27E4BCDC8;
  if (!qword_27E4BCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCDC8);
  }

  return result;
}

unint64_t sub_2406F2AC4()
{
  result = qword_27E4BCDD0;
  if (!qword_27E4BCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCDD0);
  }

  return result;
}

unint64_t sub_2406F2B18()
{
  result = qword_27E4BCDD8;
  if (!qword_27E4BCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCDD8);
  }

  return result;
}

uint64_t sub_2406F2B6C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8278, &qword_240765670);
    sub_2406F2A28(a2, type metadata accessor for AIDAServiceType, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2406F2C08()
{
  result = qword_27E4BCDF0;
  if (!qword_27E4BCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCDF0);
  }

  return result;
}

unint64_t sub_2406F2C5C()
{
  result = qword_27E4BCDF8;
  if (!qword_27E4BCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCDF8);
  }

  return result;
}

unint64_t sub_2406F2CB0()
{
  result = qword_27E4BCE00;
  if (!qword_27E4BCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCE00);
  }

  return result;
}

uint64_t sub_2406F2D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2406F2D68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2406F2DC8()
{
  result = qword_27E4BCE58;
  if (!qword_27E4BCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCE58);
  }

  return result;
}

unint64_t sub_2406F2E1C()
{
  result = qword_27E4BCE60;
  if (!qword_27E4BCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCE60);
  }

  return result;
}

unint64_t sub_2406F2E70()
{
  result = qword_27E4BCE68;
  if (!qword_27E4BCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCE68);
  }

  return result;
}

unint64_t sub_2406F2EC4()
{
  result = qword_27E4BCE70;
  if (!qword_27E4BCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCE70);
  }

  return result;
}

unint64_t sub_2406F2F18()
{
  result = qword_27E4BCE78;
  if (!qword_27E4BCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCE78);
  }

  return result;
}

unint64_t sub_2406F2F6C()
{
  result = qword_27E4BCE80;
  if (!qword_27E4BCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCE80);
  }

  return result;
}

unint64_t sub_2406F2FC0()
{
  result = qword_27E4BCE88;
  if (!qword_27E4BCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCE88);
  }

  return result;
}

unint64_t sub_2406F3014()
{
  result = qword_27E4BCE90;
  if (!qword_27E4BCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCE90);
  }

  return result;
}

unint64_t sub_2406F3068()
{
  result = qword_27E4BCE98;
  if (!qword_27E4BCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCE98);
  }

  return result;
}

unint64_t sub_2406F30BC()
{
  result = qword_27E4BCEA0;
  if (!qword_27E4BCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCEA0);
  }

  return result;
}

id sub_2406F3110(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_2406F3120()
{
  result = qword_27E4BCF28;
  if (!qword_27E4BCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCF28);
  }

  return result;
}

unint64_t sub_2406F3174()
{
  result = qword_27E4BCF30;
  if (!qword_27E4BCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCF30);
  }

  return result;
}

unint64_t sub_2406F31C8()
{
  result = qword_27E4BCF38;
  if (!qword_27E4BCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCF38);
  }

  return result;
}

unint64_t sub_2406F321C()
{
  result = qword_27E4BCF40;
  if (!qword_27E4BCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCF40);
  }

  return result;
}

unint64_t sub_2406F3270()
{
  result = qword_27E4BCF48;
  if (!qword_27E4BCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCF48);
  }

  return result;
}

unint64_t sub_2406F32C4()
{
  result = qword_27E4BCF50;
  if (!qword_27E4BCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCF50);
  }

  return result;
}

unint64_t sub_2406F3318()
{
  result = qword_27E4BCFA0;
  if (!qword_27E4BCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCFA0);
  }

  return result;
}

unint64_t sub_2406F336C()
{
  result = qword_27E4BCFA8;
  if (!qword_27E4BCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCFA8);
  }

  return result;
}

unint64_t sub_2406F33C0()
{
  result = qword_27E4BCFB0;
  if (!qword_27E4BCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCFB0);
  }

  return result;
}

unint64_t sub_2406F3414()
{
  result = qword_27E4BCFD0;
  if (!qword_27E4BCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCFD0);
  }

  return result;
}

unint64_t sub_2406F3468()
{
  result = qword_27E4BCFD8;
  if (!qword_27E4BCFD8)
  {
    sub_240590794(255, qword_27E4BBA68, 0x277D02880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BCFD8);
  }

  return result;
}

uint64_t sub_2406F34D0(void *a1)
{
  a1[1] = sub_2406F2A28(&qword_27E4BCFE8, type metadata accessor for SignInModel, &protocol conformance descriptor for SignInModel);
  a1[2] = sub_2406F2A28(&qword_27E4BCFF0, type metadata accessor for SignInModel, &protocol conformance descriptor for SignInModel);
  result = sub_2406F2A28(&qword_27E4BCFF8, type metadata accessor for SignInModel, &protocol conformance descriptor for SignInModel);
  a1[3] = result;
  return result;
}

unint64_t sub_2406F3604()
{
  result = qword_27E4BD008;
  if (!qword_27E4BD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD008);
  }

  return result;
}

unint64_t sub_2406F365C()
{
  result = qword_27E4BD010;
  if (!qword_27E4BD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD010);
  }

  return result;
}

unint64_t sub_2406F36F0()
{
  result = qword_27E4BD018;
  if (!qword_27E4BD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD018);
  }

  return result;
}

unint64_t sub_2406F3748()
{
  result = qword_27E4BD020;
  if (!qword_27E4BD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD020);
  }

  return result;
}

unint64_t sub_2406F37A0()
{
  result = qword_27E4BD028;
  if (!qword_27E4BD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD028);
  }

  return result;
}

uint64_t sub_2406F3834(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2406F3888()
{
  result = qword_27E4BD030;
  if (!qword_27E4BD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD030);
  }

  return result;
}

void sub_2406F3904(uint64_t a1)
{
  sub_2406F3A74(319);
  if (v1 <= 0x3F)
  {
    sub_2405B1F88(319, &qword_27E4BD048, &type metadata for IdMSAccount.SRPResults);
    if (v2 <= 0x3F)
    {
      sub_24061B16C(319);
      if (v3 <= 0x3F)
      {
        sub_2405B1F88(319, &qword_27E4BD050, &type metadata for SetupReport.LocaleInfo);
        if (v4 <= 0x3F)
        {
          sub_2405B1F88(319, &qword_27E4B6CB0, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_2406F3ACC(319);
            if (v6 <= 0x3F)
            {
              sub_2405B1F88(319, &qword_27E4BD060, &type metadata for SignInModel.AISCDPLocalSecretType);
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

void sub_2406F3A74(uint64_t a1)
{
  if (!qword_27E4B6CA0)
  {
    type metadata accessor for IdMSAccount(255);
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4B6CA0);
    }
  }
}

void sub_2406F3ACC(uint64_t a1)
{
  if (!qword_27E4BD058)
  {
    v2 = sub_240590794(255, qword_27E4BBA68, 0x277D02880);
    v5 = type metadata accessor for _objcCodable(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27E4BD058);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup12_objcCodableVySo9ACAccountCGSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11SignInModelV5StateO(uint64_t a1)
{
  v1 = *(a1 + 72) >> 61;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2406F3B74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 72) >> 2) & 0xFFFFFF80 | (*(a1 + 72) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2406F3BC8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 97) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2406F3C54(uint64_t result, uint64_t a2)
{
  if (a2 < 7)
  {
    *(result + 72) = *(result + 72) & 0x101 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 7);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 72) = 0xE000000000000000;
    *(result + 96) = 0;
  }

  return result;
}

uint64_t sub_2406F3CB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2406F3CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2406F3D3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SignInModel.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SignInModel.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2406F3FF8()
{
  result = qword_27E4BD068;
  if (!qword_27E4BD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD068);
  }

  return result;
}

unint64_t sub_2406F4050()
{
  result = qword_27E4BD070;
  if (!qword_27E4BD070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD070);
  }

  return result;
}

unint64_t sub_2406F40A8()
{
  result = qword_27E4BD078;
  if (!qword_27E4BD078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD078);
  }

  return result;
}

unint64_t sub_2406F4100()
{
  result = qword_27E4BD080;
  if (!qword_27E4BD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD080);
  }

  return result;
}

unint64_t sub_2406F4158()
{
  result = qword_27E4BD088;
  if (!qword_27E4BD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD088);
  }

  return result;
}

unint64_t sub_2406F41B0()
{
  result = qword_27E4BD090;
  if (!qword_27E4BD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD090);
  }

  return result;
}

unint64_t sub_2406F4208()
{
  result = qword_27E4BD098;
  if (!qword_27E4BD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD098);
  }

  return result;
}

unint64_t sub_2406F4260()
{
  result = qword_27E4BD0A0;
  if (!qword_27E4BD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0A0);
  }

  return result;
}

unint64_t sub_2406F42B8()
{
  result = qword_27E4BD0A8;
  if (!qword_27E4BD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0A8);
  }

  return result;
}

unint64_t sub_2406F4310()
{
  result = qword_27E4BD0B0;
  if (!qword_27E4BD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0B0);
  }

  return result;
}

unint64_t sub_2406F4368()
{
  result = qword_27E4BD0B8;
  if (!qword_27E4BD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0B8);
  }

  return result;
}

unint64_t sub_2406F43C0()
{
  result = qword_27E4BD0C0;
  if (!qword_27E4BD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0C0);
  }

  return result;
}

unint64_t sub_2406F4418()
{
  result = qword_27E4BD0C8;
  if (!qword_27E4BD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0C8);
  }

  return result;
}

unint64_t sub_2406F4470()
{
  result = qword_27E4BD0D0;
  if (!qword_27E4BD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0D0);
  }

  return result;
}

unint64_t sub_2406F44C8()
{
  result = qword_27E4BD0D8;
  if (!qword_27E4BD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0D8);
  }

  return result;
}

unint64_t sub_2406F4520()
{
  result = qword_27E4BD0E0;
  if (!qword_27E4BD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0E0);
  }

  return result;
}

unint64_t sub_2406F4578()
{
  result = qword_27E4BD0E8;
  if (!qword_27E4BD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0E8);
  }

  return result;
}

unint64_t sub_2406F45D0()
{
  result = qword_27E4BD0F0;
  if (!qword_27E4BD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0F0);
  }

  return result;
}

unint64_t sub_2406F4628()
{
  result = qword_27E4BD0F8;
  if (!qword_27E4BD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD0F8);
  }

  return result;
}

unint64_t sub_2406F4680()
{
  result = qword_27E4BD100;
  if (!qword_27E4BD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD100);
  }

  return result;
}

unint64_t sub_2406F46D8()
{
  result = qword_27E4BD108;
  if (!qword_27E4BD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD108);
  }

  return result;
}

unint64_t sub_2406F4730()
{
  result = qword_27E4BD110;
  if (!qword_27E4BD110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD110);
  }

  return result;
}

unint64_t sub_2406F4788()
{
  result = qword_27E4BD118;
  if (!qword_27E4BD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD118);
  }

  return result;
}

unint64_t sub_2406F47E0()
{
  result = qword_27E4BD120;
  if (!qword_27E4BD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD120);
  }

  return result;
}

unint64_t sub_2406F4838()
{
  result = qword_27E4BD128;
  if (!qword_27E4BD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD128);
  }

  return result;
}

unint64_t sub_2406F4890()
{
  result = qword_27E4BD130;
  if (!qword_27E4BD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD130);
  }

  return result;
}

unint64_t sub_2406F48E8()
{
  result = qword_27E4BD138;
  if (!qword_27E4BD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD138);
  }

  return result;
}

unint64_t sub_2406F4940()
{
  result = qword_27E4BD140;
  if (!qword_27E4BD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD140);
  }

  return result;
}

unint64_t sub_2406F4998()
{
  result = qword_27E4BD148;
  if (!qword_27E4BD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD148);
  }

  return result;
}

unint64_t sub_2406F49F0()
{
  result = qword_27E4BD150;
  if (!qword_27E4BD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD150);
  }

  return result;
}

unint64_t sub_2406F4A48()
{
  result = qword_27E4BD158;
  if (!qword_27E4BD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD158);
  }

  return result;
}

unint64_t sub_2406F4AA0()
{
  result = qword_27E4BD160;
  if (!qword_27E4BD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD160);
  }

  return result;
}

unint64_t sub_2406F4AF8()
{
  result = qword_27E4BD168;
  if (!qword_27E4BD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD168);
  }

  return result;
}

unint64_t sub_2406F4B50()
{
  result = qword_27E4BD170;
  if (!qword_27E4BD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD170);
  }

  return result;
}

unint64_t sub_2406F4BA8()
{
  result = qword_27E4BD178;
  if (!qword_27E4BD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD178);
  }

  return result;
}

unint64_t sub_2406F4C00()
{
  result = qword_27E4BD180;
  if (!qword_27E4BD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD180);
  }

  return result;
}

unint64_t sub_2406F4C58()
{
  result = qword_27E4BD188;
  if (!qword_27E4BD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD188);
  }

  return result;
}

unint64_t sub_2406F4CB0()
{
  result = qword_27E4BD190;
  if (!qword_27E4BD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD190);
  }

  return result;
}

unint64_t sub_2406F4D08()
{
  result = qword_27E4BD198;
  if (!qword_27E4BD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD198);
  }

  return result;
}

unint64_t sub_2406F4D60()
{
  result = qword_27E4BD1A0;
  if (!qword_27E4BD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1A0);
  }

  return result;
}

unint64_t sub_2406F4DB8()
{
  result = qword_27E4BD1A8;
  if (!qword_27E4BD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1A8);
  }

  return result;
}

unint64_t sub_2406F4E10()
{
  result = qword_27E4BD1B0;
  if (!qword_27E4BD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1B0);
  }

  return result;
}

unint64_t sub_2406F4E68()
{
  result = qword_27E4BD1B8;
  if (!qword_27E4BD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1B8);
  }

  return result;
}

unint64_t sub_2406F4EC0()
{
  result = qword_27E4BD1C0;
  if (!qword_27E4BD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1C0);
  }

  return result;
}

unint64_t sub_2406F4F18()
{
  result = qword_27E4BD1C8;
  if (!qword_27E4BD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1C8);
  }

  return result;
}

unint64_t sub_2406F4F70()
{
  result = qword_27E4BD1D0;
  if (!qword_27E4BD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1D0);
  }

  return result;
}

unint64_t sub_2406F4FC8()
{
  result = qword_27E4BD1D8;
  if (!qword_27E4BD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1D8);
  }

  return result;
}

unint64_t sub_2406F5020()
{
  result = qword_27E4BD1E0;
  if (!qword_27E4BD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1E0);
  }

  return result;
}

unint64_t sub_2406F5078()
{
  result = qword_27E4BD1E8;
  if (!qword_27E4BD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1E8);
  }

  return result;
}

unint64_t sub_2406F50D0()
{
  result = qword_27E4BD1F0;
  if (!qword_27E4BD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1F0);
  }

  return result;
}

unint64_t sub_2406F5128()
{
  result = qword_27E4BD1F8;
  if (!qword_27E4BD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD1F8);
  }

  return result;
}

unint64_t sub_2406F5180()
{
  result = qword_27E4BD200;
  if (!qword_27E4BD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD200);
  }

  return result;
}

unint64_t sub_2406F51D8()
{
  result = qword_27E4BD208;
  if (!qword_27E4BD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD208);
  }

  return result;
}

unint64_t sub_2406F5230()
{
  result = qword_27E4BD210;
  if (!qword_27E4BD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD210);
  }

  return result;
}

uint64_t sub_2406F5284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C75736552707273 && a2 == 0xEA00000000007374 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000240789930 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5364657269736564 && a2 == 0xEF73656369767265 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000240789950 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000240789980 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240789770 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002407886D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002407899A0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002407899C0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6365536C61636F6CLL && a2 == 0xEB00000000746572 || (sub_24075ACF4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6365536C61636F6CLL && a2 == 0xEF65707954746572 || (sub_24075ACF4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7355656369766564 && a2 == 0xEE00646E694B7265 || (sub_24075ACF4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F7372655077656ELL && a2 == 0xEC0000004449616ELL || (sub_24075ACF4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C616E69467369 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_2406F578C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2406F58A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D726554776F6873 && a2 == 0xE900000000000073 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x547373696D736964 && a2 == 0xEC000000736D7265 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49676E696E676973 && a2 == 0xE90000000000006ELL || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E6946776F6873 && a2 == 0xEA0000000000794DLL || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x467373696D736964 && a2 == 0xED0000794D646E69 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6552796C696D6166 && a2 == 0xEC00000072696170 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7472656C61 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_2406F5BA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697473697865 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972616D697270 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473657567 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void __swiftcall Symptom.into()(AISSymptom *__return_ptr retstr)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  if (v2 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_24077D078[v2];
  }

  v5 = objc_allocWithZone(AISSymptom);

  v6 = sub_24075A084();

  [v5 initWithAltDSID:v6 priority:v3 problemFlag:v4 errorInfo:{sub_24075AD74(), 0x296C6C756E28, 0xE600000000000000}];
  swift_unknownObjectRelease();
}

uint64_t Symptom.Kind.legacyProblemFlag.getter()
{
  if (*v0 > 4uLL)
  {
    return 0;
  }

  else
  {
    return qword_24077D078[*v0];
  }
}

uint64_t Symptom.accountID.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2405AF99C(v8, &v7);
}

uint64_t Symptom.altDSID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t Symptom.kind.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = v2;
  return sub_240669184(v2);
}

__n128 Symptom.init(accountID:kind:priority:errorInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v6;
  *(a4 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 80) = v4;
  *(a4 + 88) = v5;
  return result;
}

double Symptom.init(altDSID:kind:priority:errorInfo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  result = 0.0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = v5;
  *(a5 + 88) = v6;
  return result;
}

uint64_t sub_2406F5F60()
{
  v1 = 0x49746E756F636361;
  v2 = 0x797469726F697270;
  if (*v0 != 2)
  {
    v2 = 0x666E49726F727265;
  }

  if (*v0)
  {
    v1 = 1684957547;
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

uint64_t sub_2406F5FD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406F9F60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406F6000(uint64_t a1)
{
  v2 = sub_2406F8D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F603C(uint64_t a1)
{
  v2 = sub_2406F8D24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Symptom.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD228, &qword_24077C280);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = v1[3];
  v32 = v1[2];
  v33 = v8;
  v34 = v1[4];
  v9 = v1[1];
  v30 = *v1;
  v31 = v9;
  v35 = *(v1 + 10);
  v16 = *(v1 + 88);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_2405AF99C(&v30, &v25);
  sub_2406F8D24();
  sub_24075AF74();
  v27 = v32;
  v28 = v33;
  v29 = v34;
  v25 = v30;
  v26 = v31;
  v24 = 0;
  sub_2406185FC();
  sub_24075ABE4();
  if (v2)
  {
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v19 = v25;
    v20 = v26;
    sub_240618468(&v19);
  }

  else
  {
    v14 = v16;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v19 = v25;
    v20 = v26;
    sub_240618468(&v19);
    v18 = v35;
    v17 = 1;
    sub_240669184(v35);
    sub_2406F8D78();
    sub_24075ABE4();
    sub_240669194(v18);
    LOBYTE(v18) = v14;
    v17 = 2;
    sub_2406F8DCC();
    sub_24075ABE4();
    LOBYTE(v18) = 3;
    sub_2406F8E20();
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v7, v13);
}

uint64_t Symptom.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 80);
  sub_24075A114();
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x245CC6BA0](4);
    sub_2405F115C();
    return sub_24075AE94();
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_12;
  }

  if (v2 == 3)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  MEMORY[0x245CC6BA0](v3);
  return sub_24075AE94();
}

uint64_t Symptom.hashValue.getter()
{
  v1 = *(v0 + 80);
  sub_24075AE64();
  sub_24075A114();
  if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 1)
    {
      v2 = 1;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x245CC6BA0](4);
    sub_2405F115C();
    goto LABEL_13;
  }

  if (v1 == 2)
  {
    v2 = 2;
    goto LABEL_12;
  }

  if (v1 == 3)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (v1 != 4)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  MEMORY[0x245CC6BA0](v2);
LABEL_13:
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t Symptom.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD250, &qword_24077C288);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406F8D24();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v35 = 0;
  sub_2406186F8();
  v9 = v17;
  sub_24075AAF4();
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v28 = v23;
  v29 = v24;
  LOBYTE(v18[0]) = 1;
  sub_2406F8E74();
  sub_24075AAF4();
  v16 = *&v20[0];
  LOBYTE(v18[0]) = 2;
  sub_2406F8EC8();
  sub_24075AAF4();
  v33 = LOBYTE(v20[0]);
  v34 = 3;
  sub_2406F8F1C();
  sub_24075AAF4();
  (*(v8 + 8))(v7, v9);
  v11 = v31;
  v10 = v32;
  v18[3] = v31;
  v19[0] = v32;
  v12 = v29;
  v18[1] = v29;
  v18[2] = v30;
  v13 = v28;
  v18[0] = v28;
  v14 = v16;
  *&v19[1] = v16;
  LOBYTE(v9) = v33;
  BYTE8(v19[1]) = v33;
  a2[2] = v30;
  a2[3] = v11;
  a2[4] = v10;
  *a2 = v13;
  a2[1] = v12;
  *(a2 + 73) = *(v19 + 9);
  sub_2405F1048(v18, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v20[2] = v30;
  v20[3] = v31;
  v20[4] = v32;
  v20[0] = v28;
  v20[1] = v29;
  v21 = v14;
  v22 = v9;
  return sub_2405F10A4(v20);
}

uint64_t sub_2406F6878(uint64_t a1)
{
  v2 = *(v1 + 80);
  sub_24075AE64();
  sub_24075A114();
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x245CC6BA0](4);
    sub_2405F115C();
    goto LABEL_13;
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_12;
  }

  if (v2 == 3)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  MEMORY[0x245CC6BA0](v3);
LABEL_13:
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t sub_2406F6994(uint64_t a1)
{
  v2 = sub_2406F8F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F69D0(uint64_t a1)
{
  v2 = sub_2406F8F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Symptom.ErrorInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD270, &qword_24077C290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406F8F70();
  sub_24075AF74();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2406F6BAC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD270, &qword_24077C290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406F8F70();
  sub_24075AF74();
  return (*(v3 + 8))(v5, v2);
}

AppleIDSetup::Symptom::Priority_optional __swiftcall Symptom.Priority.init(rawValue:)(AppleIDSetup::Symptom::Priority_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = AppleIDSetup_Symptom_Priority_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_2406F6E60(uint64_t a1)
{
  v2 = sub_2406F9018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F6E9C(uint64_t a1)
{
  v2 = sub_2406F9018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406F6ED8(uint64_t a1)
{
  v2 = sub_2406F9168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F6F14(uint64_t a1)
{
  v2 = sub_2406F9168();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2406F6F50()
{
  v1 = *v0;
  v2 = 0x65726F7473;
  v3 = 0xD000000000000013;
  v4 = 0x53676E697373696DLL;
  if (v1 != 4)
  {
    v4 = 0x64756F6C63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

uint64_t sub_2406F7014@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406FA0D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406F703C(uint64_t a1)
{
  v2 = sub_2406F8FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F7078(uint64_t a1)
{
  v2 = sub_2406F8FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406F70B4(uint64_t a1)
{
  v2 = sub_2406F90C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F70F0(uint64_t a1)
{
  v2 = sub_2406F90C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406F712C(uint64_t a1)
{
  v2 = sub_2406F906C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F7168(uint64_t a1)
{
  v2 = sub_2406F906C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406F71A4(uint64_t a1)
{
  v2 = sub_2406F9114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F71E0(uint64_t a1)
{
  v2 = sub_2406F9114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406F721C(uint64_t a1)
{
  v2 = sub_2406F91BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406F7258(uint64_t a1)
{
  v2 = sub_2406F91BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Symptom.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD280, &qword_24077C298);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD288, &qword_24077C2A0);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD290, &qword_24077C2A8);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD298, &qword_24077C2B0);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v35 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD2A0, &qword_24077C2B8);
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD2A8, &qword_24077C2C0);
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD2B0, &unk_24077C2C8);
  v49 = *(v17 - 8);
  v50 = v17;
  MEMORY[0x28223BE20](v17);
  v18 = *v1;
  v19 = a1[3];
  v20 = a1;
  v22 = &v35 - v21;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  sub_2406F8FC4();
  sub_24075AF74();
  if (v18 <= 1)
  {
    v28 = v47;
    v27 = v48;
    if (!v18)
    {
      v52 = 0;
      sub_2406F91BC();
      v24 = v50;
      sub_24075AB54();
      (*(v28 + 8))(v16, v14);
      return (*(v49 + 8))(v22, v24);
    }

    if (v18 == 1)
    {
      v53 = 1;
      sub_2406F9168();
      v29 = v50;
      sub_24075AB54();
      (*(v27 + 8))(v13, v11);
      return (*(v49 + 8))(v22, v29);
    }

    goto LABEL_15;
  }

  if (v18 == 2)
  {
    v54 = 2;
    sub_2406F9114();
    v23 = v35;
    v24 = v50;
    sub_24075AB54();
    v26 = v36;
    v25 = v37;
    goto LABEL_11;
  }

  if (v18 == 3)
  {
    v55 = 3;
    sub_2406F90C0();
    v23 = v38;
    v24 = v50;
    sub_24075AB54();
    v26 = v39;
    v25 = v40;
    goto LABEL_11;
  }

  if (v18 != 4)
  {
LABEL_15:
    v56 = 4;
    sub_2406F906C();
    v31 = v22;
    v32 = v44;
    v33 = v50;
    sub_24075AB54();
    v51 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    sub_2406F9210(&qword_27E4B8280, &qword_27E4B6470, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83B50]);
    v34 = v46;
    sub_24075ABE4();
    (*(v45 + 8))(v32, v34);
    return (*(v49 + 8))(v31, v33);
  }

  v57 = 5;
  sub_2406F9018();
  v23 = v41;
  v24 = v50;
  sub_24075AB54();
  v26 = v42;
  v25 = v43;
LABEL_11:
  (*(v26 + 8))(v23, v25);
  return (*(v49 + 8))(v22, v24);
}

uint64_t Symptom.Kind.hash(into:)()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x245CC6BA0](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x245CC6BA0](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        v2 = 2;
        return MEMORY[0x245CC6BA0](v2);
      case 3:
        v2 = 3;
        return MEMORY[0x245CC6BA0](v2);
      case 4:
        v2 = 5;
        return MEMORY[0x245CC6BA0](v2);
    }
  }

  MEMORY[0x245CC6BA0](4);

  return sub_2405F115C();
}

uint64_t Symptom.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 1)
    {
      v2 = 1;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x245CC6BA0](4);
    sub_2405F115C();
    return sub_24075AED4();
  }

  if (v1 == 2)
  {
    v2 = 2;
    goto LABEL_12;
  }

  if (v1 == 3)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (v1 != 4)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  MEMORY[0x245CC6BA0](v2);
  return sub_24075AED4();
}

uint64_t Symptom.Kind.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD2F0, &qword_24077C2D8);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v45 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD2F8, &qword_24077C2E0);
  v58 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v60 = &v45 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD300, &qword_24077C2E8);
  v54 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v62 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD308, &qword_24077C2F0);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v61 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD310, &qword_24077C2F8);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD318, &qword_24077C300);
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD320, &unk_24077C308);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v19 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2406F8FC4();
  v20 = v64;
  sub_24075AF34();
  if (!v20)
  {
    v21 = v14;
    v46 = v12;
    v22 = v11;
    v23 = v61;
    v24 = v62;
    v64 = v16;
    v25 = v63;
    v47 = v15;
    v26 = sub_24075AB34();
    v27 = (2 * *(v26 + 16)) | 1;
    v66 = v26;
    v67 = v26 + 32;
    v68 = 0;
    v69 = v27;
    v28 = sub_2405B8B00();
    if (v28 == 6 || v68 != v69 >> 1)
    {
      v30 = sub_24075A8C4();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v32 = &type metadata for Symptom.Kind;
      v33 = v47;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v64 + 8))(v18, v33);
      swift_unknownObjectRelease();
    }

    else if (v28 > 2u)
    {
      if (v28 == 3)
      {
        LOBYTE(v70) = 3;
        sub_2406F90C0();
        v40 = v47;
        sub_24075AA54();
        v41 = v64;
        (*(v54 + 8))(v24, v49);
        (*(v41 + 8))(v18, v40);
        swift_unknownObjectRelease();
        *v25 = 3;
      }

      else
      {
        v35 = v64;
        v36 = v47;
        if (v28 == 4)
        {
          LOBYTE(v70) = 4;
          sub_2406F906C();
          sub_24075AA54();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
          sub_2406F9210(&qword_27E4B82F8, &qword_27E4B64A0, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83B70]);
          v37 = v55;
          v38 = v60;
          sub_24075AAF4();
          (*(v58 + 8))(v38, v37);
          (*(v35 + 8))(v18, v36);
          swift_unknownObjectRelease();
          *v25 = v70;
        }

        else
        {
          LOBYTE(v70) = 5;
          sub_2406F9018();
          v44 = v59;
          sub_24075AA54();
          (*(v56 + 8))(v44, v57);
          (*(v35 + 8))(v18, v36);
          swift_unknownObjectRelease();
          *v25 = 4;
        }
      }
    }

    else if (v28)
    {
      if (v28 == 1)
      {
        LOBYTE(v70) = 1;
        sub_2406F9168();
        v29 = v47;
        sub_24075AA54();
        (*(v50 + 8))(v22, v51);
        (*(v64 + 8))(v18, v29);
        swift_unknownObjectRelease();
        *v25 = 1;
      }

      else
      {
        LOBYTE(v70) = 2;
        sub_2406F9114();
        v42 = v23;
        v43 = v47;
        sub_24075AA54();
        (*(v52 + 8))(v42, v53);
        (*(v64 + 8))(v18, v43);
        swift_unknownObjectRelease();
        *v25 = 2;
      }
    }

    else
    {
      LOBYTE(v70) = 0;
      sub_2406F91BC();
      v39 = v47;
      sub_24075AA54();
      (*(v48 + 8))(v21, v46);
      (*(v64 + 8))(v18, v39);
      swift_unknownObjectRelease();
      *v25 = 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_2406F84E0()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x245CC6BA0](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x245CC6BA0](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        v2 = 2;
        return MEMORY[0x245CC6BA0](v2);
      case 3:
        v2 = 3;
        return MEMORY[0x245CC6BA0](v2);
      case 4:
        v2 = 5;
        return MEMORY[0x245CC6BA0](v2);
    }
  }

  MEMORY[0x245CC6BA0](4);

  return sub_2405F115C();
}

uint64_t sub_2406F8598(uint64_t a1)
{
  v2 = *v1;
  sub_24075AE64();
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x245CC6BA0](4);
    sub_2405F115C();
    return sub_24075AED4();
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_12;
  }

  if (v2 == 3)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  MEMORY[0x245CC6BA0](v3);
  return sub_24075AED4();
}

uint64_t Symptom.Priority.description.getter()
{
  v1 = 0x6C61636974697263;
  if (*v0 == 2)
  {
    v1 = 0x2932282068676968;
  }

  v2 = 0x29302820776F6CLL;
  if (*v0)
  {
    v2 = 0x28206D756964656DLL;
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

uint64_t sub_2406F86E0()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x65726F7473;
    }

    if (v1 == 1)
    {
      return 7365731;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x73736F6C2D6B7270;
      case 3:
        return 0x73736F6C2D6B63;
      case 4:
        return 0x64756F6C63;
    }
  }

  type metadata accessor for AIDAServiceType(0);
  sub_2406BFA14(&qword_280FAD720, &unk_24075D60C);
  v3 = sub_24075A544();
  MEMORY[0x245CC5E60](v3);

  return 0x20676E697373696DLL;
}

uint64_t Symptom.description.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = 0xE800000000000000;
  v4 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v4);

  MEMORY[0x245CC5E60](44, 0xE100000000000000);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v3 = 0xE500000000000000;
      v5 = 0x65726F7473;
      goto LABEL_13;
    }

    if (v1 == 1)
    {
      v3 = 0xE300000000000000;
      v5 = 7365731;
      goto LABEL_13;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        v5 = 0x73736F6C2D6B7270;
        goto LABEL_13;
      case 3:
        v3 = 0xE700000000000000;
        v5 = 0x73736F6C2D6B63;
        goto LABEL_13;
      case 4:
        v3 = 0xE500000000000000;
        v5 = 0x64756F6C63;
        goto LABEL_13;
    }
  }

  type metadata accessor for AIDAServiceType(0);
  sub_2406BFA14(&qword_280FAD720, &unk_24075D60C);
  v6 = sub_24075A544();
  MEMORY[0x245CC5E60](v6);

  v3 = 0xE800000000000000;
  v5 = 0x20676E697373696DLL;
LABEL_13:
  MEMORY[0x245CC5E60](v5, v3);

  MEMORY[0x245CC5E60](44, 0xE100000000000000);
  v7 = 0xE800000000000000;
  v8 = 0x2932282068676968;
  if (v2 != 2)
  {
    v8 = 0x6C61636974697263;
    v7 = 0xEC00000029332820;
  }

  v9 = 0xE700000000000000;
  v10 = 0x29302820776F6CLL;
  if (v2)
  {
    v10 = 0x28206D756964656DLL;
    v9 = 0xEA00000000002931;
  }

  if (v2 <= 1)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if (v2 <= 1)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  MEMORY[0x245CC5E60](v11, v12);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return 0x286D6F74706D7953;
}

uint64_t Symptom.debugDescription.getter()
{
  v0 = Symptom.description.getter();
  v1 = sub_24075A0E4();
  v3 = v2;

  MEMORY[0x245CC5E60](v1, v3);

  return v0;
}

uint64_t sub_2406F8AE0()
{
  v0 = Symptom.description.getter();
  v1 = sub_24075A0E4();
  v3 = v2;

  MEMORY[0x245CC5E60](v1, v3);

  return v0;
}

uint64_t _s12AppleIDSetup7SymptomV4KindO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_17:
        if (v3 >= 5)
        {
          sub_240669184(*a2);
          sub_240669184(v2);
          v4 = sub_240753B98();
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v3 == 1)
      {
        v2 = 1;
        v4 = 1;
        goto LABEL_19;
      }
    }

    else if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_19;
    }

LABEL_18:
    sub_240669184(*a2);
    sub_240669184(v2);
    v4 = 0;
    goto LABEL_19;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v4 = 1;
      v2 = 2;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v2 == 3)
  {
    if (v3 == 3)
    {
      v4 = 1;
      v2 = 3;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v2 != 4)
  {
    goto LABEL_17;
  }

  if (v3 != 4)
  {
    goto LABEL_18;
  }

  v4 = 1;
  v2 = 4;
LABEL_19:
  sub_240669194(v2);
  sub_240669194(v3);
  return v4 & 1;
}

uint64_t _s12AppleIDSetup7SymptomV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[10];
  v3 = *(a1 + 88);
  v4 = *(a2 + 80);
  v5 = *(a2 + 88);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_24075ACF4(), result = 0, (v7 & 1) != 0))
  {
    v10 = v4;
    v11 = v2;
    sub_240669184(v2);
    sub_240669184(v4);
    v9 = _s12AppleIDSetup7SymptomV4KindO2eeoiySbAE_AEtFZ_0(&v11, &v10);
    sub_240669194(v10);
    sub_240669194(v11);
    return v9 & (v3 == v5);
  }

  return result;
}

unint64_t sub_2406F8D24()
{
  result = qword_27E4BD230;
  if (!qword_27E4BD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD230);
  }

  return result;
}

unint64_t sub_2406F8D78()
{
  result = qword_27E4BD238;
  if (!qword_27E4BD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD238);
  }

  return result;
}

unint64_t sub_2406F8DCC()
{
  result = qword_27E4BD240;
  if (!qword_27E4BD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD240);
  }

  return result;
}

unint64_t sub_2406F8E20()
{
  result = qword_27E4BD248;
  if (!qword_27E4BD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD248);
  }

  return result;
}

unint64_t sub_2406F8E74()
{
  result = qword_27E4BD258;
  if (!qword_27E4BD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD258);
  }

  return result;
}

unint64_t sub_2406F8EC8()
{
  result = qword_27E4BD260;
  if (!qword_27E4BD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD260);
  }

  return result;
}

unint64_t sub_2406F8F1C()
{
  result = qword_27E4BD268;
  if (!qword_27E4BD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD268);
  }

  return result;
}

unint64_t sub_2406F8F70()
{
  result = qword_27E4BD278;
  if (!qword_27E4BD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD278);
  }

  return result;
}

unint64_t sub_2406F8FC4()
{
  result = qword_27E4BD2B8;
  if (!qword_27E4BD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD2B8);
  }

  return result;
}

unint64_t sub_2406F9018()
{
  result = qword_27E4BD2C0;
  if (!qword_27E4BD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD2C0);
  }

  return result;
}

unint64_t sub_2406F906C()
{
  result = qword_27E4BD2C8;
  if (!qword_27E4BD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD2C8);
  }

  return result;
}

unint64_t sub_2406F90C0()
{
  result = qword_27E4BD2D0;
  if (!qword_27E4BD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD2D0);
  }

  return result;
}

unint64_t sub_2406F9114()
{
  result = qword_27E4BD2D8;
  if (!qword_27E4BD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD2D8);
  }

  return result;
}

unint64_t sub_2406F9168()
{
  result = qword_27E4BD2E0;
  if (!qword_27E4BD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD2E0);
  }

  return result;
}

unint64_t sub_2406F91BC()
{
  result = qword_27E4BD2E8;
  if (!qword_27E4BD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD2E8);
  }

  return result;
}

uint64_t sub_2406F9210(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8278, &qword_240765670);
    sub_2406BFA14(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2406F92DC()
{
  result = qword_27E4BD328;
  if (!qword_27E4BD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD328);
  }

  return result;
}

unint64_t sub_2406F9370()
{
  result = qword_27E4BD330;
  if (!qword_27E4BD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD330);
  }

  return result;
}

unint64_t sub_2406F93C8()
{
  result = qword_27E4BD338;
  if (!qword_27E4BD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD338);
  }

  return result;
}

unint64_t sub_2406F941C()
{
  result = qword_27E4BD340;
  if (!qword_27E4BD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD340);
  }

  return result;
}

unint64_t sub_2406F94B0()
{
  result = qword_27E4BD348;
  if (!qword_27E4BD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD348);
  }

  return result;
}

uint64_t sub_2406F9544(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2406F959C()
{
  result = qword_27E4BD350;
  if (!qword_27E4BD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD350);
  }

  return result;
}

uint64_t sub_2406F95F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2406F9638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2406F96C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2406F9718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_2406F9768(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_2406F982C()
{
  result = qword_27E4BD358;
  if (!qword_27E4BD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD358);
  }

  return result;
}

unint64_t sub_2406F9884()
{
  result = qword_27E4BD360;
  if (!qword_27E4BD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD360);
  }

  return result;
}

unint64_t sub_2406F98DC()
{
  result = qword_27E4BD368;
  if (!qword_27E4BD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD368);
  }

  return result;
}

unint64_t sub_2406F9934()
{
  result = qword_27E4BD370;
  if (!qword_27E4BD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD370);
  }

  return result;
}

unint64_t sub_2406F998C()
{
  result = qword_27E4BD378;
  if (!qword_27E4BD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD378);
  }

  return result;
}

unint64_t sub_2406F99E4()
{
  result = qword_27E4BD380;
  if (!qword_27E4BD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD380);
  }

  return result;
}

unint64_t sub_2406F9A3C()
{
  result = qword_27E4BD388;
  if (!qword_27E4BD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD388);
  }

  return result;
}

unint64_t sub_2406F9A94()
{
  result = qword_27E4BD390;
  if (!qword_27E4BD390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD390);
  }

  return result;
}

unint64_t sub_2406F9AEC()
{
  result = qword_27E4BD398;
  if (!qword_27E4BD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD398);
  }

  return result;
}

unint64_t sub_2406F9B44()
{
  result = qword_27E4BD3A0;
  if (!qword_27E4BD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3A0);
  }

  return result;
}

unint64_t sub_2406F9B9C()
{
  result = qword_27E4BD3A8;
  if (!qword_27E4BD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3A8);
  }

  return result;
}

unint64_t sub_2406F9BF4()
{
  result = qword_27E4BD3B0;
  if (!qword_27E4BD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3B0);
  }

  return result;
}

unint64_t sub_2406F9C4C()
{
  result = qword_27E4BD3B8;
  if (!qword_27E4BD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3B8);
  }

  return result;
}

unint64_t sub_2406F9CA4()
{
  result = qword_27E4BD3C0;
  if (!qword_27E4BD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3C0);
  }

  return result;
}

unint64_t sub_2406F9CFC()
{
  result = qword_27E4BD3C8;
  if (!qword_27E4BD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3C8);
  }

  return result;
}

unint64_t sub_2406F9D54()
{
  result = qword_27E4BD3D0;
  if (!qword_27E4BD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3D0);
  }

  return result;
}

unint64_t sub_2406F9DAC()
{
  result = qword_27E4BD3D8;
  if (!qword_27E4BD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3D8);
  }

  return result;
}

unint64_t sub_2406F9E04()
{
  result = qword_27E4BD3E0;
  if (!qword_27E4BD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3E0);
  }

  return result;
}

unint64_t sub_2406F9E5C()
{
  result = qword_27E4BD3E8;
  if (!qword_27E4BD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3E8);
  }

  return result;
}

unint64_t sub_2406F9EB4()
{
  result = qword_27E4BD3F0;
  if (!qword_27E4BD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3F0);
  }

  return result;
}

unint64_t sub_2406F9F0C()
{
  result = qword_27E4BD3F8;
  if (!qword_27E4BD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD3F8);
  }

  return result;
}

uint64_t sub_2406F9F60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E49726F727265 && a2 == 0xE90000000000006FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2406FA0D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7473 && a2 == 0xE500000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002407899E0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240789A00 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789A20 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53676E697373696DLL && a2 == 0xEF73656369767265 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64756F6C63 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_2406FA2D8()
{
  result = qword_27E4BD400;
  if (!qword_27E4BD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD400);
  }

  return result;
}

ACAccount_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ACAccountStore.account(for:aidaServiceType:)(Swift::String a1, __C::AIDAServiceType aidaServiceType)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v41[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2406FAD18(aidaServiceType._rawValue);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9288, &unk_240770AD0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_240765570;
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
    v10 = sub_24075A2B4();

    v41[0] = 0;
    v11 = [v2 accountsWithAccountTypeIdentifiers:v10 error:v41];

    v12 = v41[0];
    if (v11)
    {
      sub_24066B350();
      v13 = sub_24075A2C4();
      v14 = v12;

      if (v13 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24075A9D4())
      {
        v16 = 0;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x245CC65B0](v16, v13);
          }

          else
          {
            if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v17 = *(v13 + 8 * v16 + 32);
          }

          v8 = v17;
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          v19 = [v17 aida_alternateDSID];
          if (v19)
          {
            v20 = object;
            v21 = v19;
            v22 = sub_24075A0B4();
            v24 = v23;

            if (v22 == countAndFlagsBits && v24 == v20)
            {

LABEL_26:

              goto LABEL_31;
            }

            object = v20;
            v26 = sub_24075ACF4();

            if (v26)
            {
              goto LABEL_26;
            }
          }

          ++v16;
          if (v18 == i)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_30:

      v8 = 0;
    }

    else
    {
      v38 = v41[0];
      sub_2407595D4();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v27 = sub_240759AE4();
    __swift_project_value_buffer(v27, qword_280FADA00);
    v28 = aidaServiceType._rawValue;
    v29 = sub_240759AC4();
    v30 = sub_24075A5D4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v31 = 136315138;
      type metadata accessor for AIDAServiceType(0);
      v33 = v28;
      v34 = sub_24075A0E4();
      v36 = sub_2405BBA7C(v34, v35, v41);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_240579000, v29, v30, "No accountType translation for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x245CC76B0](v32, -1, -1);
      MEMORY[0x245CC76B0](v31, -1, -1);
    }

    v8 = 0;
  }

LABEL_31:
  v39 = v8;
  result.value.super.isa = v39;
  result.is_nil = v37;
  return result;
}

uint64_t sub_2406FA70C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_2406FA730, 0, 0);
}

uint64_t sub_2406FA730()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_2406FB3A0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24063BA7C;
  v0[13] = &block_descriptor_11;
  v0[14] = v3;
  [v1 saveVerifiedAccount:v2 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2406FA858(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_2406FA87C, 0, 0);
}

uint64_t sub_2406FA87C()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_2406FA9A4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24063BA7C;
  v0[13] = &block_descriptor_7;
  v0[14] = v3;
  [v1 removeAccount:v2 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2406FA9A4(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v1 + 160);
    v3 = *(v2 + 8);
  }

  return v3(v4);
}

uint64_t sub_2406FAAE4()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2406692F0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD408, &unk_24077D160);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240614C9C;
  v0[13] = &block_descriptor_17;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

id sub_2406FAC00()
{
  v1 = [*v0 aa_primaryAppleAccount];

  return v1;
}

id sub_2406FAC38()
{
  v1 = [*v0 authKitAccountType];

  return v1;
}

id sub_2406FAC70()
{
  v1 = [*v0 protoAccountType];

  return v1;
}

id sub_2406FACA8()
{
  v1 = [*v0 primaryAuthKitAccount];

  return v1;
}

id sub_2406FACE0()
{
  v1 = [*v0 protoAccount];

  return v1;
}

uint64_t sub_2406FAD18(uint64_t a1)
{
  v1 = sub_24075A0B4();
  v3 = v2;
  if (v1 == sub_24075A0B4() && v3 == v4)
  {
    goto LABEL_7;
  }

  v6 = sub_24075ACF4();

  if (v6)
  {
    return sub_24075A0B4();
  }

  v8 = sub_24075A0B4();
  v10 = v9;
  if (v8 == sub_24075A0B4() && v10 == v11)
  {
    goto LABEL_7;
  }

  v13 = sub_24075ACF4();

  if (v13)
  {
    return sub_24075A0B4();
  }

  v14 = sub_24075A0B4();
  v16 = v15;
  if (v14 == sub_24075A0B4() && v16 == v17)
  {
    goto LABEL_7;
  }

  v18 = sub_24075ACF4();

  if (v18)
  {
    return sub_24075A0B4();
  }

  v19 = sub_24075A0B4();
  v21 = v20;
  if (v19 == sub_24075A0B4() && v21 == v22)
  {
    goto LABEL_7;
  }

  v23 = sub_24075ACF4();

  if (v23)
  {
    return sub_24075A0B4();
  }

  v24 = sub_24075A0B4();
  v26 = v25;
  if (v24 == sub_24075A0B4() && v26 == v27)
  {
LABEL_7:

    return sub_24075A0B4();
  }

  v28 = sub_24075ACF4();

  if (v28)
  {
    return sub_24075A0B4();
  }

  return 0;
}

uint64_t dispatch thunk of ACAccountStoreProtocol.saveVerifiedAccount(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24063DDE8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ACAccountStoreProtocol.removeAccount(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24063D29C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ACAccountStoreProtocol.aa_primaryAppleAccount()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24063D29C;

  return v7(a1, a2);
}

{
  return (*(a2 + 32))(a1);
}

uint64_t sub_2406FB3A4()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BD410);
  v1 = __swift_project_value_buffer(v0, qword_27E4BD410);
  if (qword_27E4B5ED8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B8578);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2406FB46C()
{
  v1 = OBJC_IVAR___AISSignOutController____lazy_storage___daemonConnection;
  v2 = *(v0 + OBJC_IVAR___AISSignOutController____lazy_storage___daemonConnection);
  v3 = v2;
  if (v2 == 1)
  {
    type metadata accessor for AISDaemonConnection();
    v3 = swift_allocObject();
    v4 = *(v0 + OBJC_IVAR___AISSignOutController_listenerEndpoint);
    *(v3 + 16) = v4;
    *(v3 + 24) = 0;
    *(v0 + v1) = v3;
    v5 = v4;
  }

  sub_2406FCAFC(v2);
  return v3;
}

id AISSignOutController.__allocating_init(listenerEndpoint:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___AISSignOutController_listenerEndpoint;
  *&v3[OBJC_IVAR___AISSignOutController_listenerEndpoint] = 0;
  *&v3[OBJC_IVAR___AISSignOutController____lazy_storage___daemonConnection] = 1;
  *&v3[v4] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AISSignOutController.init(listenerEndpoint:)(uint64_t a1)
{
  v2 = OBJC_IVAR___AISSignOutController_listenerEndpoint;
  *&v1[OBJC_IVAR___AISSignOutController_listenerEndpoint] = 0;
  *&v1[OBJC_IVAR___AISSignOutController____lazy_storage___daemonConnection] = 1;
  *&v1[v2] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AISSignOutController();
  return objc_msgSendSuper2(&v4, sel_init);
}

id AISSignOutController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISSignOutController.init()()
{
  *&v0[OBJC_IVAR___AISSignOutController_listenerEndpoint] = 0;
  *&v0[OBJC_IVAR___AISSignOutController____lazy_storage___daemonConnection] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISSignOutController();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2406FB6A8(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_2406FB6C8, 0, 0);
}

uint64_t sub_2406FB6C8()
{
  v1 = sub_2406FB46C();
  v0[20] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_2406FB8CC;

    return sub_24062BF90();
  }

  else
  {
    if (qword_27E4B5F90 != -1)
    {
      swift_once();
    }

    v4 = v0[18];
    v5 = sub_240759AE4();
    __swift_project_value_buffer(v5, qword_27E4BD410);
    v6 = v4;
    v7 = sub_240759AC4();
    v8 = sub_24075A5E4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[18];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_240579000, v7, v8, "Failed to obtain remote object proxy to sign out: %@", v10, 0xCu);
      sub_2405B8A50(v11, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v11, -1, -1);
      MEMORY[0x245CC76B0](v10, -1, -1);
    }

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_2406FB8CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_2406FBEE8;
  }

  else
  {

    v4 = sub_2406FB9E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2406FB9E8()
{
  v1 = v0[22];
  if (v1)
  {
    if (qword_27E4B5F90 != -1)
    {
      swift_once();
    }

    v2 = v0[18];
    v3 = sub_240759AE4();
    __swift_project_value_buffer(v3, qword_27E4BD410);
    v4 = v2;
    v5 = sub_240759AC4();
    v6 = sub_24075A5D4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[18];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&dword_240579000, v5, v6, "Signing out of accounts with context: %@", v8, 0xCu);
      sub_2405B8A50(v9, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v9, -1, -1);
      MEMORY[0x245CC76B0](v8, -1, -1);
    }

    v11 = v0[18];

    v0[2] = v0;
    v0[7] = v0 + 25;
    v0[3] = sub_2406FBD70;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24063BA7C;
    v0[13] = &block_descriptor_18;
    v0[14] = v12;
    [v1 signOutAllAccountsWith:v11 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27E4B5F90 != -1)
    {
      swift_once();
    }

    v13 = v0[18];
    v14 = sub_240759AE4();
    __swift_project_value_buffer(v14, qword_27E4BD410);
    v15 = v13;
    v16 = sub_240759AC4();
    v17 = sub_24075A5E4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[18];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v18;
      *v20 = v18;
      v21 = v18;
      _os_log_impl(&dword_240579000, v16, v17, "Failed to obtain remote object proxy to sign out: %@", v19, 0xCu);
      sub_2405B8A50(v20, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v20, -1, -1);
      MEMORY[0x245CC76B0](v19, -1, -1);
    }

    v22 = v0[1];

    return v22(0);
  }
}

uint64_t sub_2406FBD70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_2406FBF50;
  }

  else
  {
    v2 = sub_2406FBE80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406FBE80()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 200);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2406FBEE8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2406FBF50(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_2406FC154(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_240660734;

  return sub_2406FB6A8(v6);
}

id AISSignOutController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISSignOutController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2406FC298(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2405DA4B0;

  return v6();
}

uint64_t sub_2406FC380(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2405CE450;

  return v7();
}

uint64_t sub_2406FC468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24066B568(a3, v23 - v10);
  v12 = sub_24075A3D4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2405B8A50(v11, &unk_27E4B9BF0, &qword_240762710);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24075A3C4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_24075A344();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_24075A104() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);

    return v21;
  }

LABEL_8:
  sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t dispatch thunk of AISSignOutController.signOutAllAccounts(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x98);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24063D29C;

  return v7(a1);
}

uint64_t sub_2406FC8C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405CE450;

  return sub_2406FC154(v2, v3, v4);
}

uint64_t sub_2406FC97C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_24065B630(a1, v4);
}

uint64_t sub_2406FCA34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405CE450;

  return sub_24065B630(a1, v4);
}

uint64_t sub_2406FCAEC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2406FCAFC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2406FCB94(void *a1, void *a2)
{
  v29 = a1;
  v31 = sub_24075A9B4();
  v3 = *(v31 - 8);
  v4 = MEMORY[0x28223BE20](v31);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD438, &qword_24077D220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - v10;
  v12 = sub_240759C64();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v28[0] = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15 = sub_24075AF64();
  sub_24075A9A4();
  if (*(v15 + 16) && (v16 = sub_2405BB460(v8), (v17 & 1) != 0))
  {
    sub_2405BD1CC(*(v15 + 56) + 32 * v16, v30);
    v18 = v8;
    v19 = v31;
    (*(v3 + 8))(v18, v31);

    v20 = swift_dynamicCast();
    (*(v13 + 56))(v11, v20 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v21 = v28[0];
      (*(v13 + 32))(v28[0], v11, v12);
      v22 = sub_240759C54();
      sub_240759AF4();
      v23 = [v28[1] _endpoint];
      sub_240759C84();
      v24 = sub_24075A084();
      [v29 encodeInteger:v22 forKey:v24];

      return (*(v13 + 8))(v21, v12);
    }
  }

  else
  {

    v26 = v8;
    v19 = v31;
    (*(v3 + 8))(v26, v31);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_2406FD718(v11);
  sub_24075A9A4();
  type metadata accessor for CodingUserInfoKeyNotFound(0);
  sub_2406FD780();
  swift_allocError();
  (*(v3 + 32))(v27, v6, v19);
  return swift_willThrow();
}

void *static NSXPCListenerEndpoint.developedUnarchive(from:backing:)(uint64_t *a1, void *a2)
{
  v44 = sub_24075A9B4();
  v4 = *(v44 - 8);
  v5 = MEMORY[0x28223BE20](v44);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD438, &qword_24077D220);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v42 - v11;
  v45 = sub_240759C64();
  v13 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[2] = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15 = sub_24075AF24();
  sub_24075A9A4();
  if (!v15[2] || (v16 = sub_2405BB460(v9), (v17 & 1) == 0))
  {

    v32 = v9;
    v19 = v44;
    (*(v4 + 8))(v32, v44);
    (*(v13 + 56))(v12, 1, 1, v45);
    goto LABEL_8;
  }

  sub_2405BD1CC(v15[7] + 32 * v16, &v46);
  v18 = v9;
  v19 = v44;
  (*(v4 + 8))(v18, v44);

  v20 = v45;
  v21 = swift_dynamicCast();
  v22 = v13;
  (*(v13 + 56))(v12, v21 ^ 1u, 1, v20);
  if ((*(v13 + 48))(v12, 1, v20) == 1)
  {
LABEL_8:
    sub_2406FD718(v12);
    sub_24075A9A4();
    type metadata accessor for CodingUserInfoKeyNotFound(0);
    sub_2406FD780();
    swift_allocError();
    (*(v4 + 32))(v33, v7, v19);
    swift_willThrow();
    return v15;
  }

  v23 = v43;
  (*(v13 + 32))(v43, v12, v20);
  v24 = sub_240759C74();
  if (v24)
  {
    v25 = v24;
    v26 = MEMORY[0x245CC77F0]();
    if (v26 == sub_240759B04())
    {
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v15 _setEndpoint_];
      swift_unknownObjectRelease();
      (*(v22 + 8))(v43, v20);
    }

    else
    {
      v27 = v20;
      v28 = a2[3];
      v29 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v28);
      sub_240755020(v28, v29);
      v46 = 0;
      v47 = 0xE000000000000000;
      MEMORY[0x245CC5E60](0x626F20637078203ALL, 0xED0000207463656ALL);
      v48 = v26;
      sub_24075A994();
      v30 = v46;
      v15 = v47;
      sub_24075A8C4();
      swift_allocError();
      sub_240755068(v42[1], v30, v15, v31);

      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v22 + 8))(v43, v27);
    }
  }

  else
  {
    v35 = v20;
    v36 = a2[3];
    v37 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v36);
    sub_240755020(v36, v37);
    v15 = v38;
    v39 = sub_24075A8C4();
    swift_allocError();
    v41 = v40;

    sub_24075A8A4();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84168], v39);

    swift_willThrow();
    (*(v13 + 8))(v23, v35);
  }

  return v15;
}

void static NSXPCListenerEndpoint.intermediateUnarchive(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24075A084();
  v5 = [a1 decodeIntegerForKey_];

  *a2 = v5;
  *(a2 + 8) = 0;
}

void sub_2406FD67C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24075A084();
  v5 = [a1 decodeIntegerForKey_];

  *a2 = v5;
  *(a2 + 8) = 0;
}

void *sub_2406FD6EC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = static NSXPCListenerEndpoint.developedUnarchive(from:backing:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2406FD718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD438, &qword_24077D220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2406FD780()
{
  result = qword_27E4BD440;
  if (!qword_27E4BD440)
  {
    type metadata accessor for CodingUserInfoKeyNotFound(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD440);
  }

  return result;
}

uint64_t _s22UnarchivalIntermediateVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s22UnarchivalIntermediateVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t AgeMigrationModel.description.getter()
{
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  sub_24075A864();
  v11 = v10[0];
  MEMORY[0x245CC5E60](0xD000000000000023, 0x8000000240789AC0);
  v1 = type metadata accessor for AgeMigrationModel(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *(v2 + 2);
  v4 = *v2;
  v6 = *(v2 + 6);
  v2 = (v2 + 24);
  v5 = v6;
  LOWORD(v6) = *(v2 + 2);
  LOBYTE(v2) = *(v2 + 6);
  v10[0] = v4;
  *&v10[1] = v3;
  BYTE14(v10[1]) = v2;
  WORD6(v10[1]) = v6;
  DWORD2(v10[1]) = v5;
  sub_24075A994();
  MEMORY[0x245CC5E60](0x7473202020200A2CLL, 0xED0000203A657461);
  v7 = AgeMigrationModel.State.description.getter();
  MEMORY[0x245CC5E60](v7);

  MEMORY[0x245CC5E60](0xD000000000000016, 0x8000000240789AF0);
  memcpy(v10, (v0 + *(v1 + 24)), 0x131uLL);
  v8 = DiscoveryModel.description.getter();
  MEMORY[0x245CC5E60](v8);

  MEMORY[0x245CC5E60](0x636361202020200ALL, 0xEE00203A746E756FLL);
  type metadata accessor for IdMSAccount(0);
  sub_2407034E4(&qword_27E4B6B58, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  sub_24075ACD4();
  MEMORY[0x245CC5E60](10506, 0xE200000000000000);
  return v11;
}

id AgeMigrationModel.remoteRole.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AgeMigrationModel(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v3 += 24;
  v7 = v8;
  v9 = *(v3 + 4);
  LODWORD(v3) = *(v3 + 6);
  v10 = v7 | ((v9 | (v3 << 16)) << 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 30) = v3;
  *(a1 + 28) = v9;

  return sub_240609C0C(v4, v5, v6, v10);
}

__n128 AgeMigrationModel.remoteRole.setter(__n128 *a1)
{
  v9 = *a1;
  v2 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u32[2];
  v3 = &a1[1].n128_i8[8];
  v5 = *(v3 + 2);
  v6 = v3[6];
  v7 = v1 + *(type metadata accessor for AgeMigrationModel(0) + 20);
  sub_240604AB8(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24) | ((*(v7 + 28) | (*(v7 + 30) << 16)) << 32));
  result = v9;
  *v7 = v9;
  *(v7 + 16) = v2;
  *(v7 + 30) = v6;
  *(v7 + 28) = v5;
  *(v7 + 24) = v4;
  return result;
}

uint64_t AgeMigrationModel.discoveryModel.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AgeMigrationModel(0) + 24);
  memcpy(__dst, (v1 + v3), 0x131uLL);
  memcpy(a1, (v1 + v3), 0x131uLL);
  return sub_240684CD4(__dst, &v5);
}

void *AgeMigrationModel.discoveryModel.setter(const void *a1)
{
  v3 = *(type metadata accessor for AgeMigrationModel(0) + 24);
  memcpy(__dst, (v1 + v3), 0x131uLL);
  sub_240684D0C(__dst);
  return memcpy((v1 + v3), a1, 0x131uLL);
}

uint64_t AgeMigrationModel.state.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AgeMigrationModel(0) + 28);

  return sub_24070342C(a1, v3);
}

uint64_t sub_2406FDDB8()
{
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_2406FDE88(uint64_t a1)
{
  sub_24075A114();
}

uint64_t sub_2406FDF44(uint64_t a1)
{
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

unint64_t sub_2406FE010@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240704A18(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2406FE040(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746E756F636361;
  v4 = 0xEE006C65646F4D79;
  v5 = 0x7265766F63736964;
  if (*v1 != 2)
  {
    v5 = 0x6574617473;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F5265746F6D6572;
    v2 = 0xEA0000000000656CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2406FE0CC()
{
  v1 = 0x746E756F636361;
  v2 = 0x7265766F63736964;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x6F5265746F6D6572;
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

unint64_t sub_2406FE154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240704A18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406FE17C(uint64_t a1)
{
  v2 = sub_240703490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406FE1B8(uint64_t a1)
{
  v2 = sub_240703490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AgeMigrationModel.init(account:remoteRole:discoveryModel:state:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *a2;
  v9 = *(a2 + 2);
  v11 = *(a2 + 6);
  v10 = a2 + 24;
  v12 = *(v10 + 2);
  v13 = v10[6];
  v14 = type metadata accessor for IdMSAccount(0);
  (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  sub_240590814(a1, a5);
  v15 = type metadata accessor for AgeMigrationModel(0);
  v16 = a5 + v15[5];
  *v16 = v18;
  *(v16 + 16) = v9;
  *(v16 + 30) = v13;
  *(v16 + 28) = v12;
  *(v16 + 24) = v11;
  memcpy((a5 + v15[6]), a3, 0x131uLL);
  return sub_2407036D8(a4, a5 + v15[7], type metadata accessor for AgeMigrationModel.State);
}

uint64_t AgeMigrationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD448, &qword_24077D298);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240703490();
  sub_24075AF74();
  v22[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  sub_240703580(&qword_27E4BD458, &qword_27E4B6438, &protocol conformance descriptor for IdMSAccount, MEMORY[0x277D84F40]);
  sub_24075ABE4();
  if (!v2)
  {
    v9 = type metadata accessor for AgeMigrationModel(0);
    v10 = v3 + *(v9 + 20);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v15 = *(v10 + 24);
    v10 += 24;
    v14 = v15;
    v16 = *(v10 + 4);
    LODWORD(v10) = *(v10 + 6);
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v28 = v10;
    v27 = v16;
    v22[311] = 1;
    sub_240609C0C(v11, v12, v13, v14 | ((v16 | (v10 << 16)) << 32));
    sub_24070352C();
    sub_24075ABE4();
    sub_240604AB8(v23, v24, v25, v26 | ((v27 | (v28 << 16)) << 32));
    v17 = *(v9 + 24);
    memcpy(v22, (v3 + v17), 0x131uLL);
    memcpy(v21, (v3 + v17), sizeof(v21));
    v20[311] = 2;
    sub_240684CD4(v22, v20);
    sub_240687078();
    sub_24075ABE4();
    memcpy(v20, v21, 0x131uLL);
    sub_240684D0C(v20);
    v19[15] = 3;
    type metadata accessor for AgeMigrationModel.State(0);
    sub_2407034E4(&qword_27E4BD468, type metadata accessor for AgeMigrationModel.State, &protocol conformance descriptor for AgeMigrationModel.State);
    sub_24075ABE4();
  }

  return (*(v6 + 8))(v8, v5);
}

void AgeMigrationModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for AgeMigrationModel.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v6);
  v27 = &v25 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD470, &qword_24077D2A0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v25 - v8;
  v31 = type metadata accessor for AgeMigrationModel(0);
  MEMORY[0x28223BE20](v31);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IdMSAccount(0);
  v13 = v11;
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v14 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_240703490();
  v29 = v9;
  v15 = v30;
  sub_24075AF34();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_2405B8A50(v11, &qword_27E4B6418, &unk_24075D910);
  }

  else
  {
    v16 = v26;
    v30 = v3;
    v17 = v5;
    LOBYTE(v33[0]) = 0;
    sub_240703580(&qword_27E4BD478, &qword_27E4B6480, &protocol conformance descriptor for IdMSAccount, MEMORY[0x277D84F58]);
    v18 = v27;
    sub_24075AAF4();
    sub_240590814(v18, v13);
    v35 = 1;
    sub_24070361C();
    sub_24075AAF4();
    v19 = v31;
    v20 = *&v33[1];
    v21 = WORD6(v33[1]);
    v22 = DWORD2(v33[1]);
    v23 = v13 + *(v31 + 20);
    *v23 = v33[0];
    *(v23 + 16) = v20;
    *(v23 + 24) = v22;
    *(v23 + 28) = v21;
    *(v23 + 30) = BYTE14(v33[1]);
    v35 = 2;
    sub_240687024();
    v24 = v28;
    sub_24075AAF4();
    memcpy((v13 + *(v19 + 24)), v33, 0x131uLL);
    v34 = 3;
    sub_2407034E4(&qword_27E4BD488, type metadata accessor for AgeMigrationModel.State, &protocol conformance descriptor for AgeMigrationModel.State);
    sub_24075AAF4();
    (*(v16 + 8))(v29, v24);
    sub_2407036D8(v17, v13 + *(v19 + 28), type metadata accessor for AgeMigrationModel.State);
    sub_240703670(v13, v25, type metadata accessor for AgeMigrationModel);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_240703740(v13, type metadata accessor for AgeMigrationModel);
  }
}

uint64_t AgeMigrationModel.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IdMSAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  sub_2405E1930(v2, v18 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    sub_2407036D8(v10, v7, type metadata accessor for IdMSAccount);
    sub_24075AE94();
    IdMSAccount.hash(into:)(a1);
    sub_240703740(v7, type metadata accessor for IdMSAccount);
  }

  v11 = type metadata accessor for AgeMigrationModel(0);
  v12 = v2 + *(v11 + 20);
  v13 = *(v12 + 16);
  v14 = *v12;
  v16 = *(v12 + 24);
  v12 += 24;
  v15 = v16;
  LOWORD(v16) = *(v12 + 4);
  LOBYTE(v12) = *(v12 + 6);
  v18[0] = v14;
  *&v18[1] = v13;
  BYTE14(v18[1]) = v12;
  WORD6(v18[1]) = v16;
  DWORD2(v18[1]) = v15;
  RemoteRole.hash(into:)(a1);
  memcpy(v18, (v2 + *(v11 + 24)), 0x131uLL);
  DiscoveryModel.hash(into:)(a1);
  return AgeMigrationModel.State.hash(into:)(a1);
}

uint64_t AgeMigrationModel.State.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AgeMigrationModel.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240703670(v1, v7, type metadata accessor for AgeMigrationModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v10 = 0xD000000000000014;
      }

      else
      {
        v10 = 0x64656873696E6966;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = 0x8000000240789B30;
      }

      else
      {
        v11 = 0xE800000000000000;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v10 = 0x7265766F63736964;
      }

      else
      {
        v10 = 0xD000000000000011;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0x8000000240789B80;
      }
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *(v7 + 1);
      v27 = *v7;
      v28 = v12;
      *&v29 = *(v7 + 4);
      *&v23[0] = 0;
      *(&v23[0] + 1) = 0xE000000000000000;
      sub_24075A864();

      strcpy(v23, "failed(error: ");
      HIBYTE(v23[0]) = -18;
      v13 = _AgeMigrationError.description.getter();
      v15 = v14;
      sub_2405E1900(&v27);
      MEMORY[0x245CC5E60](v13, v15);

      MEMORY[0x245CC5E60](41, 0xE100000000000000);
      v11 = *(&v23[0] + 1);
      v10 = *&v23[0];
    }

    else
    {
      v11 = 0xE700000000000000;
      v10 = 0x6C616974696E69;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v16 = *(v7 + 5);
    v31 = *(v7 + 4);
    v32 = v16;
    v33 = v7[96];
    v17 = *(v7 + 1);
    v27 = *v7;
    v28 = v17;
    v18 = *(v7 + 3);
    v29 = *(v7 + 2);
    v30 = v18;
    *&v23[0] = 0;
    *(&v23[0] + 1) = 0xE000000000000000;
    sub_24075A864();

    v25 = 0xD000000000000022;
    v26 = 0x8000000240789B50;
    v23[4] = v31;
    v23[5] = v32;
    v24 = v33;
    v23[0] = v27;
    v23[1] = v28;
    v23[2] = v29;
    v23[3] = v30;
    sub_24065F6F4(&v27, &v22);
    v19 = sub_24075A0E4();
    MEMORY[0x245CC5E60](v19);

    MEMORY[0x245CC5E60](41, 0xE100000000000000);
    sub_24065F72C(&v27);
    v10 = v25;
    v11 = v26;
  }

  else
  {
    sub_2407036D8(v7, v4, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_24075A864();

    *&v27 = 0x6E6974617267696DLL;
    *(&v27 + 1) = 0xEF3D6F666E692867;
    v9 = AgeMigrationModel.State.ChildMigrationInfo.description.getter();
    MEMORY[0x245CC5E60](v9);

    MEMORY[0x245CC5E60](41, 0xE100000000000000);
    v11 = *(&v27 + 1);
    v10 = v27;
    sub_240703740(v4, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
  }

  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_24075A864();

  *&v23[0] = 0xD000000000000018;
  *(&v23[0] + 1) = 0x8000000240789B10;
  MEMORY[0x245CC5E60](v10, v11);

  return *&v23[0];
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.description.getter()
{
  v1 = v0;
  sub_24075A864();
  MEMORY[0x245CC5E60](0xD000000000000024, 0x8000000240789BA0);
  MEMORY[0x245CC5E60](*v1, v1[1]);
  MEMORY[0x245CC5E60](0x7364202020200A2CLL, 0xEB000000003D6469);
  MEMORY[0x245CC5E60](v1[2], v1[3]);
  MEMORY[0x245CC5E60](0x6C61202020200A2CLL, 0xEE003D4449534474);
  MEMORY[0x245CC5E60](v1[4], v1[5]);
  MEMORY[0x245CC5E60](0xD000000000000019, 0x8000000240789BD0);
  type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);
  sub_240759744();
  sub_2407034E4(&qword_27E4BD490, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v2 = sub_24075AC34();
  MEMORY[0x245CC5E60](v2);

  MEMORY[0x245CC5E60](10506, 0xE200000000000000);
  return 0;
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.appleAccountName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.dsid.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.altDSID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.pendingDateOfBirth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
  v4 = sub_240759744();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.init(appleAccountName:dsid:altDSID:pendingDateOfBirth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  v10 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
  v11 = sub_240759744();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a8[v10], a7, v11);
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.into()@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = sub_24075A0B4();
  v9 = v8;
  *a1 = 0;

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  result = sub_240604E3C(0, 0, 255);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = -1;
  return result;
}

unint64_t sub_2406FF660()
{
  v1 = 1684632420;
  v2 = 0x44495344746C61;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2406FF6E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240704A64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406FF708(uint64_t a1)
{
  v2 = sub_2407037C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406FF744(uint64_t a1)
{
  v2 = sub_2407037C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD498, &qword_24077D2A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2407037C0();
  sub_24075AF74();
  v8[15] = 0;
  sub_24075ABB4();
  if (!v1)
  {
    v8[14] = 1;
    sub_24075ABB4();
    v8[13] = 2;
    sub_24075ABB4();
    type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);
    v8[12] = 3;
    sub_240759744();
    sub_2407034E4(&qword_27E4BD4A8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_24075ABE4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.hash(into:)(uint64_t a1)
{
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);
  sub_240759744();
  sub_2407034E4(&qword_27E4BC680, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_24075A004();
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.hashValue.getter()
{
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);
  sub_240759744();
  sub_2407034E4(&qword_27E4BC680, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24075A004();
  return sub_24075AED4();
}

uint64_t AgeMigrationModel.State.ChildMigrationInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_240759744();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD4B0, &qword_24077D2B0);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2407037C0();
  v26 = v8;
  v12 = v27;
  sub_24075AF34();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v24;
  v15 = v25;
  v27 = v3;
  v31 = 0;
  *v11 = sub_24075AAC4();
  v11[1] = v16;
  v30 = 1;
  v11[2] = sub_24075AAC4();
  v11[3] = v17;
  v29 = 2;
  v21[1] = 0;
  v11[4] = sub_24075AAC4();
  v11[5] = v18;
  v28 = 3;
  sub_2407034E4(&qword_27E4BD4B8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v21[0] = v5;
  v19 = v27;
  sub_24075AAF4();
  (*(v14 + 8))(v26, v15);
  (*(v22 + 32))(v11 + *(v9 + 28), v21[0], v19);
  sub_240703670(v11, v23, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_240703740(v11, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
}

uint64_t sub_2406FFF70()
{
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_240759744();
  sub_2407034E4(&qword_27E4BC680, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24075A004();
  return sub_24075AED4();
}

uint64_t sub_240700030(uint64_t a1)
{
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_240759744();
  sub_2407034E4(&qword_27E4BC680, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_24075A004();
}

uint64_t sub_2407000D4(uint64_t a1)
{
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_240759744();
  sub_2407034E4(&qword_27E4BC680, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24075A004();
  return sub_24075AED4();
}

uint64_t sub_240700190()
{
  v1 = *v0;
  v2 = 0x6C616974696E69;
  v3 = 0x64656873696E6966;
  if (v1 != 6)
  {
    v3 = 0x64656C696166;
  }

  v4 = 0x6E69726961706572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6974617267696DLL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x7265766F63736964;
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

uint64_t sub_2407002A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240704BD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2407002CC(uint64_t a1)
{
  v2 = sub_240703814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240700308(uint64_t a1)
{
  v2 = sub_240703814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240700344(uint64_t a1)
{
  v2 = sub_240703A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240700380(uint64_t a1)
{
  v2 = sub_240703A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2407003BC(uint64_t a1)
{
  v2 = sub_240703868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2407003F8(uint64_t a1)
{
  v2 = sub_240703868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240700434(uint64_t a1)
{
  v2 = sub_240703910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240700470(uint64_t a1)
{
  v2 = sub_240703910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2407004AC(uint64_t a1)
{
  v2 = sub_2407038BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2407004E8(uint64_t a1)
{
  v2 = sub_2407038BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240700524(uint64_t a1)
{
  v2 = sub_240703AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240700560(uint64_t a1)
{
  v2 = sub_240703AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070059C(uint64_t a1)
{
  v2 = sub_240703A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2407005D8(uint64_t a1)
{
  v2 = sub_240703A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240700614(uint64_t a1)
{
  v2 = sub_2407039B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240700650(uint64_t a1)
{
  v2 = sub_2407039B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070068C(uint64_t a1)
{
  v2 = sub_240703964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2407006C8(uint64_t a1)
{
  v2 = sub_240703964();

  return MEMORY[0x2821FE720](a1, v2);
}

void AgeMigrationModel.State.encode(to:)(void *a1)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD4C0, &qword_24077D2B8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v49 - v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD4C8, &qword_24077D2C0);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v49 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD4D0, &qword_24077D2C8);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v49 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD4D8, &qword_24077D2D0);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v49 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD4E0, &qword_24077D2D8);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v49 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD4E8, &qword_24077D2E0);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v49 - v7;
  v53 = type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);
  MEMORY[0x28223BE20](v53);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD4F0, &qword_24077D2E8);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD4F8, &qword_24077D2F0);
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for AgeMigrationModel.State(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD500, &qword_24077D2F8);
  v76 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v18 = &v49 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240703814();
  v74 = v18;
  sub_24075AF74();
  sub_240703670(v73, v16, type metadata accessor for AgeMigrationModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        LOBYTE(v83) = 5;
        sub_240703910();
        v39 = v61;
        v25 = v75;
        v26 = v74;
        sub_24075AB54();
        v27 = *(v62 + 8);
        v28 = v39;
        v29 = &v85;
      }

      else
      {
        LOBYTE(v83) = 6;
        sub_2407038BC();
        v48 = v64;
        v25 = v75;
        v26 = v74;
        sub_24075AB54();
        v27 = *(v66 + 8);
        v28 = v48;
        v29 = &v87 + 8;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      LOBYTE(v83) = 1;
      sub_240703A60();
      v25 = v75;
      v26 = v74;
      sub_24075AB54();
      v27 = *(v51 + 8);
      v28 = v10;
      v29 = v80 + 8;
    }

    else
    {
      LOBYTE(v83) = 3;
      sub_2407039B8();
      v47 = v55;
      v25 = v75;
      v26 = v74;
      sub_24075AB54();
      v27 = *(v57 + 8);
      v28 = v47;
      v29 = &v82;
    }

    v27(v28, *(v29 - 32));
LABEL_17:
    (*(v76 + 8))(v26, v25);
    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v30 = *(v16 + 1);
      v73 = *v16;
      v31 = v73;
      v32 = *(v16 + 2);
      v33 = *(v16 + 3);
      v34 = *(v16 + 4);
      LOBYTE(v83) = 7;
      sub_240703868();
      v35 = v70;
      v36 = v75;
      v37 = v74;
      sub_24075AB54();
      *&v83 = v31;
      *(&v83 + 1) = v30;
      *&v84 = v32;
      *(&v84 + 1) = v33;
      *&v85 = v34;
      sub_2405E1410();
      v38 = v72;
      sub_24075ABE4();
      (*(v71 + 8))(v35, v38);
      (*(v76 + 8))(v37, v36);
      sub_2405DB038(v73, v30, v32, v33, v34);
      return;
    }

    LOBYTE(v83) = 0;
    sub_240703AB4();
    v25 = v75;
    v26 = v74;
    sub_24075AB54();
    (*(v50 + 8))(v13, v11);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v40 = *(v16 + 5);
    v87 = *(v16 + 4);
    v88 = v40;
    v89 = v16[96];
    v41 = *(v16 + 1);
    v83 = *v16;
    v84 = v41;
    v42 = *(v16 + 3);
    v85 = *(v16 + 2);
    v86 = v42;
    LOBYTE(v77) = 4;
    sub_240703964();
    v43 = v65;
    v44 = v75;
    v45 = v74;
    sub_24075AB54();
    v80[1] = v87;
    v80[2] = v88;
    v81 = v89;
    v77 = v83;
    v78 = v84;
    v80[0] = v86;
    v79 = v85;
    sub_24065F930();
    v46 = v69;
    sub_24075ABE4();
    (*(v67 + 8))(v43, v46);
    (*(v76 + 8))(v45, v44);
    sub_24065F72C(&v83);
  }

  else
  {
    v20 = v54;
    sub_2407036D8(v16, v54, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
    LOBYTE(v83) = 2;
    sub_240703A0C();
    v21 = v56;
    v22 = v75;
    v23 = v74;
    sub_24075AB54();
    sub_2407034E4(&qword_27E4BD540, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo, &protocol conformance descriptor for AgeMigrationModel.State.ChildMigrationInfo);
    v24 = v60;
    sub_24075ABE4();
    (*(v59 + 8))(v21, v24);
    sub_240703740(v20, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
    (*(v76 + 8))(v23, v22);
  }
}

uint64_t AgeMigrationModel.State.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AgeMigrationModel.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240703670(v2, v9, type metadata accessor for AgeMigrationModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v12 = 5;
      }

      else
      {
        v12 = 6;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    return MEMORY[0x245CC6BA0](v12);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *(v9 + 1);
      v19 = *v9;
      v20 = v13;
      *&v21 = *(v9 + 4);
      MEMORY[0x245CC6BA0](7);
      _AgeMigrationError.hash(into:)(a1);
      return sub_2405E1900(&v19);
    }

    v12 = 0;
    return MEMORY[0x245CC6BA0](v12);
  }

  if (EnumCaseMultiPayload)
  {
    v14 = *(v9 + 5);
    v23 = *(v9 + 4);
    v24 = v14;
    v25 = v9[96];
    v15 = *(v9 + 1);
    v19 = *v9;
    v20 = v15;
    v16 = *(v9 + 3);
    v21 = *(v9 + 2);
    v22 = v16;
    MEMORY[0x245CC6BA0](4);
    v17[4] = v23;
    v17[5] = v24;
    v18 = v25;
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v17[3] = v22;
    FamilyRepairModel.hash(into:)(a1);
    return sub_24065F72C(&v19);
  }

  else
  {
    sub_2407036D8(v9, v6, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
    MEMORY[0x245CC6BA0](2);
    sub_24075A114();
    sub_24075A114();
    sub_24075A114();
    sub_240759744();
    sub_2407034E4(&qword_27E4BC680, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_24075A004();
    return sub_240703740(v6, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
  }
}

uint64_t sub_2407015B8(uint64_t (*a1)(void *))
{
  sub_24075AE64();
  a1(v3);
  return sub_24075AED4();
}

uint64_t AgeMigrationModel.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD558, &qword_24077D300);
  v78 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v84 = &v60 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD560, &qword_24077D308);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v89 = &v60 - v4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD568, &qword_24077D310);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v83 = &v60 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD570, &qword_24077D318);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v88 = &v60 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD578, &qword_24077D320);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v81 = &v60 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD580, &qword_24077D328);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v82 = &v60 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD588, &qword_24077D330);
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v80 = &v60 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD590, &qword_24077D338);
  v64 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v79 = &v60 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD598, &unk_24077D340);
  v90 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v12 = &v60 - v11;
  v13 = type metadata accessor for AgeMigrationModel.State(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v60 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v60 - v23;
  v25 = a1[3];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_240703814();
  v26 = v91;
  sub_24075AF34();
  if (!v26)
  {
    v62 = v22;
    v60 = v16;
    v61 = v19;
    v27 = v87;
    v28 = v88;
    v29 = v89;
    v91 = v13;
    v63 = v24;
    v30 = v86;
    v31 = sub_24075AB34();
    v32 = (2 * *(v31 + 16)) | 1;
    v99 = v31;
    v100 = v31 + 32;
    v101 = 0;
    v102 = v32;
    v33 = sub_2405B8AEC();
    if (v33 != 8 && v101 == v102 >> 1)
    {
      if (v33 <= 3u)
      {
        if (v33 > 1u)
        {
          v34 = v85;
          if (v33 == 2)
          {
            v43 = v85;
            LOBYTE(v92) = 2;
            sub_240703A0C();
            v44 = v82;
            sub_24075AA54();
            type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);
            sub_2407034E4(&qword_27E4BD5A0, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo, &protocol conformance descriptor for AgeMigrationModel.State.ChildMigrationInfo);
            v45 = v62;
            v46 = v70;
            sub_24075AAF4();
            (*(v69 + 8))(v44, v46);
            (*(v90 + 8))(v12, v30);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v36 = v63;
            sub_2407036D8(v45, v63, type metadata accessor for AgeMigrationModel.State);
            v34 = v43;
          }

          else
          {
            LOBYTE(v92) = 3;
            sub_2407039B8();
            v50 = v81;
            sub_24075AA54();
            (*(v67 + 8))(v50, v68);
            (*(v90 + 8))(v12, v30);
            swift_unknownObjectRelease();
            v36 = v63;
            swift_storeEnumTagMultiPayload();
          }
        }

        else
        {
          v34 = v85;
          if (v33)
          {
            LOBYTE(v92) = 1;
            sub_240703A60();
            v48 = v80;
            sub_24075AA54();
            (*(v66 + 8))(v48, v65);
          }

          else
          {
            LOBYTE(v92) = 0;
            sub_240703AB4();
            v35 = v79;
            sub_24075AA54();
            (*(v64 + 8))(v35, v27);
          }

          (*(v90 + 8))(v12, v30);
          swift_unknownObjectRelease();
          v36 = v63;
          swift_storeEnumTagMultiPayload();
        }

        goto LABEL_24;
      }

      v41 = v90;
      if (v33 > 5u)
      {
        if (v33 == 6)
        {
          v47 = v85;
          LOBYTE(v92) = 6;
          sub_2407038BC();
          sub_24075AA54();
          (*(v75 + 8))(v29, v76);
          (*(v41 + 8))(v12, v30);
          swift_unknownObjectRelease();
          v36 = v63;
          swift_storeEnumTagMultiPayload();
          v34 = v47;
LABEL_24:
          sub_2407036D8(v36, v34, type metadata accessor for AgeMigrationModel.State);
          return __swift_destroy_boxed_opaque_existential_1(v103);
        }

        LOBYTE(v92) = 7;
        sub_240703868();
        v51 = v84;
        sub_24075AA54();
        sub_2405E1A00();
        v52 = v77;
        sub_24075AAF4();
        (*(v78 + 8))(v51, v52);
        (*(v41 + 8))(v12, v30);
        swift_unknownObjectRelease();
        v57 = v94;
        v58 = v93;
        v54 = v60;
        *v60 = v92;
        v54[1] = v58;
        *(v54 + 4) = v57;
      }

      else
      {
        if (v33 != 4)
        {
          LOBYTE(v92) = 5;
          sub_240703910();
          v49 = v83;
          sub_24075AA54();
          (*(v73 + 8))(v49, v74);
          (*(v41 + 8))(v12, v30);
          swift_unknownObjectRelease();
          v36 = v63;
          swift_storeEnumTagMultiPayload();
LABEL_23:
          v34 = v85;
          goto LABEL_24;
        }

        LOBYTE(v92) = 4;
        sub_240703964();
        sub_24075AA54();
        sub_24065F8DC();
        v42 = v72;
        sub_24075AAF4();
        (*(v71 + 8))(v28, v42);
        (*(v41 + 8))(v12, v30);
        swift_unknownObjectRelease();
        v53 = v97;
        v54 = v61;
        *(v61 + 4) = v96;
        v54[5] = v53;
        *(v54 + 96) = v98;
        v55 = v93;
        *v54 = v92;
        v54[1] = v55;
        v56 = v95;
        v54[2] = v94;
        v54[3] = v56;
      }

      swift_storeEnumTagMultiPayload();
      v59 = v54;
      v36 = v63;
      sub_2407036D8(v59, v63, type metadata accessor for AgeMigrationModel.State);
      goto LABEL_23;
    }

    v37 = sub_24075A8C4();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v39 = v91;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v90 + 8))(v12, v30);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v103);
}

uint64_t sub_240702580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_24075AE64();
  a3(v5);
  return sub_24075AED4();
}

uint64_t sub_2407025E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_24075AE64();
  a4(v6);
  return sub_24075AED4();
}

double static AgeMigrationModel.default.getter@<D0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for IdMSAccount(0);
  sub_240759594();
  sub_2405AF9F8(v34);
  v6 = &v4[v5[8]];
  v27 = xmmword_24075D8C0;
  *v6 = xmmword_24075D8C0;
  v7 = &v4[v5[9]];
  *v7 = 0;
  v7[8] = 1;
  *v4 = 0x44495344746C61;
  *(v4 + 1) = 0xE700000000000000;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  v8 = &v4[v5[6]];
  v9 = v34[7];
  v10 = v34[9];
  *(v8 + 8) = v34[8];
  *(v8 + 9) = v10;
  v11 = v34[3];
  *(v8 + 2) = v34[2];
  *(v8 + 3) = v11;
  v12 = v34[5];
  v13 = v34[6];
  *(v8 + 4) = v34[4];
  *(v8 + 5) = v12;
  v14 = v34[1];
  *v8 = v34[0];
  *(v8 + 1) = v14;
  *(v8 + 6) = v13;
  *(v8 + 7) = v9;
  *&v4[v5[7]] = MEMORY[0x277D84FA0];
  sub_2405AFA1C(*v6, v6[1]);
  *v6 = v27;
  *v7 = 0;
  v7[8] = 0;
  v15 = *(*(v5 - 1) + 56);
  v15(v4, 0, 1, v5);
  v28 = 512;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = xmmword_240768EF0;
  v33 = 0;
  sub_240676624(v37);
  sub_240604AE0(0, 0, 0, 0xA0u);
  sub_240609C34(0, 0, 0, 0);
  v16 = type metadata accessor for AgeMigrationModel(0);
  type metadata accessor for AgeMigrationModel.State(0);
  swift_storeEnumTagMultiPayload();
  v15(a1, 1, 1, v5);
  sub_240590814(v4, a1);
  v17 = &a1[*(v16 + 20)];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[30] = 0;
  *(v17 + 14) = 192;
  *(v17 + 6) = 0;
  v18 = &a1[*(v16 + 24)];
  *v18 = 258;
  *(v18 + 3) = WORD2(v28);
  *(v18 + 2) = v28;
  *(v18 + 24) = 0u;
  *(v18 + 8) = 0u;
  *(v18 + 5) = 1;
  *(v18 + 24) = 2;
  *(v18 + 50) = v39;
  *(v18 + 27) = v40;
  *(v18 + 7) = 0;
  *(v18 + 8) = 0;
  v19 = v37[0];
  *(v18 + 88) = v37[1];
  *(v18 + 72) = v19;
  v20 = v37[2];
  v21 = v37[3];
  v22 = v37[4];
  *(v18 + 152) = v37[5];
  *(v18 + 136) = v22;
  *(v18 + 120) = v21;
  *(v18 + 104) = v20;
  v23 = v37[6];
  v24 = v37[7];
  v25 = v37[8];
  *(v18 + 108) = v38;
  *(v18 + 200) = v25;
  *(v18 + 184) = v24;
  *(v18 + 168) = v23;
  *(v18 + 218) = v35;
  *(v18 + 111) = v36;
  result = 0.0;
  *(v18 + 14) = 0u;
  *(v18 + 15) = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 17) = 0u;
  *(v18 + 18) = 0u;
  v18[304] = 0;
  return result;
}

uint64_t _s12AppleIDSetup17AgeMigrationModelV5StateO05ChildD4InfoV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_24075ACF4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);

  return sub_240759714();
}

uint64_t _s12AppleIDSetup17AgeMigrationModelV5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0);
  MEMORY[0x28223BE20](v41);
  v42 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AgeMigrationModel.State(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v41 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD6E8, &unk_24077E1D0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v41 - v16;
  v18 = &v41 + *(v15 + 56) - v16;
  sub_240703670(a1, &v41 - v16, type metadata accessor for AgeMigrationModel.State);
  sub_240703670(a2, v18, type metadata accessor for AgeMigrationModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_27;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_27;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_27;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_240703670(v17, v8, type metadata accessor for AgeMigrationModel.State);
      v20 = *(v8 + 1);
      v47 = *v8;
      v48 = v20;
      *&v49 = *(v8 + 4);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_2405E1900(&v47);
        goto LABEL_27;
      }

      v21 = *(v18 + 1);
      v54 = *v18;
      v55 = v21;
      *&v56 = *(v18 + 4);
      v22 = _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(&v47, &v54);
      sub_2405E1900(&v47);
      sub_2405E1900(&v54);
      goto LABEL_18;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_27;
    }

LABEL_24:
    sub_240703740(v17, type metadata accessor for AgeMigrationModel.State);
    v22 = 1;
    return v22 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_240703670(v17, v13, type metadata accessor for AgeMigrationModel.State);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_240703740(v13, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
LABEL_27:
      sub_2405B8A50(v17, &qword_27E4BD6E8, &unk_24077E1D0);
LABEL_28:
      v22 = 0;
      return v22 & 1;
    }

    v37 = v42;
    sub_2407036D8(v18, v42, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
    v38 = *v13 == *v37 && v13[1] == v37[1];
    if (!v38 && (sub_24075ACF4() & 1) == 0 || (v13[2] == v37[2] ? (v39 = v13[3] == v37[3]) : (v39 = 0), !v39 && (sub_24075ACF4() & 1) == 0 || (v13[4] == v37[4] ? (v40 = v13[5] == v37[5]) : (v40 = 0), !v40 && (sub_24075ACF4() & 1) == 0 || (sub_240759714() & 1) == 0)))
    {
      sub_240703740(v37, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
      sub_240703740(v13, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
      sub_240703740(v17, type metadata accessor for AgeMigrationModel.State);
      goto LABEL_28;
    }

    sub_240703740(v37, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
    sub_240703740(v13, type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo);
    goto LABEL_24;
  }

  sub_240703670(v17, v11, type metadata accessor for AgeMigrationModel.State);
  v23 = *(v11 + 5);
  v58 = *(v11 + 4);
  v59 = v23;
  v60 = v11[96];
  v24 = *(v11 + 1);
  v54 = *v11;
  v55 = v24;
  v25 = *(v11 + 3);
  v56 = *(v11 + 2);
  v57 = v25;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24065F72C(&v54);
    goto LABEL_27;
  }

  v26 = *(v18 + 3);
  v27 = *(v18 + 5);
  v51 = *(v18 + 4);
  v52 = v27;
  v28 = *(v18 + 1);
  v47 = *v18;
  v48 = v28;
  v29 = *(v18 + 3);
  v31 = *v18;
  v30 = *(v18 + 1);
  v49 = *(v18 + 2);
  v50 = v29;
  v32 = *(v11 + 5);
  v45[4] = *(v11 + 4);
  v45[5] = v32;
  v33 = *(v11 + 1);
  v45[0] = *v11;
  v45[1] = v33;
  v34 = *(v11 + 3);
  v45[2] = *(v11 + 2);
  v45[3] = v34;
  v35 = *(v18 + 5);
  v43[4] = v51;
  v43[5] = v35;
  v43[0] = v31;
  v43[1] = v30;
  v53 = v18[96];
  v46 = v11[96];
  v44 = v18[96];
  v43[2] = v49;
  v43[3] = v26;
  v22 = _s12AppleIDSetup17FamilyRepairModelV2eeoiySbAC_ACtFZ_0(v45, v43);
  sub_24065F72C(&v47);
  sub_24065F72C(&v54);
LABEL_18:
  sub_240703740(v17, type metadata accessor for AgeMigrationModel.State);
  return v22 & 1;
}

uint64_t _s12AppleIDSetup17AgeMigrationModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71A8, &unk_240762410);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39[-v13];
  v15 = *(v12 + 56);
  sub_2405E1930(a1, &v39[-v13]);
  sub_2405E1930(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_2405E1930(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_2407036D8(&v14[v15], v7, type metadata accessor for IdMSAccount);
      v17 = _s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_240703740(v7, type metadata accessor for IdMSAccount);
      sub_240703740(v10, type metadata accessor for IdMSAccount);
      sub_2405B8A50(v14, &qword_27E4B6418, &unk_24075D910);
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_11:
      v37 = 0;
      return v37 & 1;
    }

    sub_240703740(v10, type metadata accessor for IdMSAccount);
LABEL_6:
    sub_2405B8A50(v14, &qword_27E4B71A8, &unk_240762410);
    goto LABEL_11;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2405B8A50(v14, &qword_27E4B6418, &unk_24075D910);
LABEL_8:
  v18 = type metadata accessor for AgeMigrationModel(0);
  v19 = a1 + v18[5];
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v24 = *(v19 + 24);
  v19 += 24;
  v23 = v24;
  v25 = *(v19 + 4);
  LODWORD(v19) = *(v19 + 6);
  v26 = v23 | ((v25 | (v19 << 16)) << 32);
  v45[2] = v22;
  LODWORD(v45[3]) = v23;
  BYTE6(v45[3]) = v19;
  WORD2(v45[3]) = v25;
  v27 = a2 + v18[5];
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  v32 = *(v27 + 24);
  v27 += 24;
  v31 = v32;
  v45[0] = v20;
  v45[1] = v21;
  v33 = *(v27 + 4);
  LODWORD(v27) = *(v27 + 6);
  v34 = v31 | ((v33 | (v27 << 16)) << 32);
  v44[0] = v28;
  v44[1] = v29;
  v44[2] = v30;
  LODWORD(v44[3]) = v31;
  BYTE6(v44[3]) = v27;
  WORD2(v44[3]) = v33;
  sub_240609C0C(v20, v21, v22, v26);
  sub_240609C0C(v28, v29, v30, v34);
  LOBYTE(v28) = _s12AppleIDSetup10RemoteRoleO2eeoiySbAC_ACtFZ_0(v45, v44);
  sub_240604AB8(v44[0], v44[1], v44[2], LODWORD(v44[3]) | ((WORD2(v44[3]) | (BYTE6(v44[3]) << 16)) << 32));
  sub_240604AB8(v45[0], v45[1], v45[2], LODWORD(v45[3]) | ((WORD2(v45[3]) | (BYTE6(v45[3]) << 16)) << 32));
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

  v35 = v18[6];
  memcpy(v42, (a1 + v35), 0x131uLL);
  memcpy(v41, (a1 + v35), 0x131uLL);
  v36 = v18[6];
  memcpy(v43, (a2 + v36), 0x131uLL);
  memcpy(v40, (a2 + v36), 0x131uLL);
  sub_240684CD4(v42, v39);
  sub_240684CD4(v43, v39);
  LOBYTE(v36) = _s12AppleIDSetup14DiscoveryModelV2eeoiySbAC_ACtFZ_0(v41, v40);
  memcpy(v44, v40, 0x131uLL);
  sub_240684D0C(v44);
  memcpy(v45, v41, 0x131uLL);
  sub_240684D0C(v45);
  if ((v36 & 1) == 0)
  {
    goto LABEL_11;
  }

  v37 = _s12AppleIDSetup17AgeMigrationModelV5StateO2eeoiySbAE_AEtFZ_0(a1 + v18[7], a2 + v18[7]);
  return v37 & 1;
}

uint64_t sub_24070342C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeMigrationModel.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_240703490()
{
  result = qword_27E4BD450;
  if (!qword_27E4BD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD450);
  }

  return result;
}

uint64_t sub_2407034E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24070352C()
{
  result = qword_27E4BD460;
  if (!qword_27E4BD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD460);
  }

  return result;
}