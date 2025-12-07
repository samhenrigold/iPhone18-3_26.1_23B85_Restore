void HPKESuiteKwV1.openMessageHPKE<A>(envelope:authenticationContext:decoder:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a5;
  v59 = a6;
  v60 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v10 - 8);
  *(&v58 + 1) = &v55 - v11;
  v13 = *(a1 + 104);
  v12 = *(a1 + 112);
  v14 = *(a1 + 56);
  v69[2] = *(a1 + 40);
  v69[3] = v14;
  v15 = *(a1 + 88);
  v69[4] = *(a1 + 72);
  v69[5] = v15;
  v16 = *(a1 + 24);
  v69[0] = *(a1 + 8);
  v69[1] = v16;
  sub_225A0E2F8(v69, &v63);
  v17 = HPKESuiteKwV1.openMessageHPKEWithoutDecoding(data:params:authenticationContext:)(v13, v12, (a1 + 8), a2);
  if (v6)
  {
    v19 = *(a1 + 40);
    v20 = *(a1 + 72);
    v66 = *(a1 + 56);
    v67 = v20;
    v68 = *(a1 + 88);
    v63 = *(a1 + 8);
    v64 = *(a1 + 24);
    v65 = v19;
    sub_225A0E354(&v63);
    v27 = "r decrypting encoded data: ";
    v28 = v6;
    v60 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v70 = swift_allocError();
    v30 = v29;
    swift_getErrorValue();
    v31 = v62;
    v32 = v6;
    sub_225B21FAC(v31, &v63);

    v33 = *(&v63 + 1);
    if (*(&v63 + 1))
    {
      v59 = v63;
      v57 = *(&v65 + 1);
      v34 = v65;
      v58 = v64;
    }

    else
    {
      *&v63 = v6;
      v35 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v36 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        v56 = "r decrypting encoded data: ";
        *(inited + 32) = 20;
        v38 = [v36 code];
        v39 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v39;
        *(inited + 40) = v38;
        v34 = sub_225B2C374(inited);
        swift_setDeallocating();
        v27 = v56;
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v40 = v6;
        v58 = 0uLL;
        v59 = 0;
        v33 = MEMORY[0x277D84F90];
      }

      else
      {
        *&v63 = v6;
        v41 = v6;
        v42 = sub_225CCE954();
        v43 = *(&v58 + 1);
        v44 = swift_dynamicCast();
        v45 = *(v42 - 8);
        (*(v45 + 56))(v43, v44 ^ 1u, 1, v42);
        LODWORD(v45) = (*(v45 + 48))(v43, 1, v42);
        sub_2259CB640(v43, &unk_27D73B050, &unk_225CD3AD0);
        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = 23;
        }

        v59 = v46;
        v33 = MEMORY[0x277D84F90];
        v34 = sub_225B2C374(MEMORY[0x277D84F90]);
        v47 = v6;
        v58 = 0uLL;
      }

      v57 = v6;
    }

    v48 = v27 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v63 = v34;
    sub_225B2C4A0(v60, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v63);

    v50 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_225B29AA0(0, *(v33 + 2) + 1, 1, v33);
    }

    v52 = *(v33 + 2);
    v51 = *(v33 + 3);
    if (v52 >= v51 >> 1)
    {
      v33 = sub_225B29AA0((v51 > 1), v52 + 1, 1, v33);
    }

    *(v33 + 2) = v52 + 1;
    v53 = &v33[56 * v52];
    *(v53 + 4) = 0;
    *(v53 + 5) = 0;
    *(v53 + 6) = 0xD00000000000001CLL;
    *(v53 + 7) = v48;
    *(v53 + 8) = 0xD000000000000038;
    *(v53 + 9) = 0x8000000225D17240;
    *(v53 + 10) = 668;
    *v30 = v59;
    v54 = v58;
    *(v30 + 8) = v33;
    *(v30 + 16) = v54;
    *(v30 + 32) = v50;
    *(v30 + 40) = v57;
    swift_willThrow();
  }

  else
  {
    v21 = v17;
    v22 = v18;
    v23 = *(a1 + 40);
    v24 = *(a1 + 72);
    v66 = *(a1 + 56);
    v67 = v24;
    v68 = *(a1 + 88);
    v63 = *(a1 + 8);
    v64 = *(a1 + 24);
    v65 = v23;
    sub_225A0E354(&v63);
    v25 = a3[3];
    v26 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v25);
    (*(v26 + 8))(v60, v21, v22, v60, v70, v25, v26);
    sub_2259BEF00(v21, v22);
  }
}

__n128 HPKEParams.init(mode:pkEm:pkRHash:pkISm:pkISHash:pkSm:infoHash:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __n128 a10, uint64_t a11)
{
  result = a10;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = a9;
  *(a8 + 72) = a10;
  *(a8 + 88) = a11;
  return result;
}

uint64_t HPKEEnvelope.init(params:data:unencryptedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = 0;
  v14 = *(type metadata accessor for HPKEEnvelope(0, a5, a6, a7) + 52);
  (*(*(a5 - 8) + 56))(a8 + v14, 1, 1, a5);
  v15 = a1[3];
  *(a8 + 40) = a1[2];
  *(a8 + 56) = v15;
  v16 = a1[5];
  *(a8 + 72) = a1[4];
  *(a8 + 88) = v16;
  v17 = a1[1];
  *(a8 + 8) = *a1;
  *(a8 + 24) = v17;
  *(a8 + 104) = a2;
  *(a8 + 112) = a3;
  v18 = sub_225CCEFC4();
  v19 = *(*(v18 - 8) + 40);

  return v19(a8 + v14, a4, v18);
}

unint64_t sub_225A4A7D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225A4A820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4A894(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225A4A900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4A970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4AA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A4A81C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A4AA54@<X0>(_BYTE *a2@<X8>)
{
  result = sub_225A5E2EC();
  *a2 = result;
  return result;
}

uint64_t sub_225A4AA88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A4AADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HPKEEncryptedMessagePlain.init(sender:recipient:unencryptedData:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  *a7 = 0;
  *(a7 + 8) = xmmword_225CD3100;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  *(a7 + 88) = 0u;
  *(a7 + 104) = 0;
  *(a7 + 112) = 0xF000000000000000;
  v12 = *(type metadata accessor for HPKEEncryptedMessagePlain(0, a4, a5, a6) + 60);
  v13 = *(a4 - 8);
  v16 = *(v13 + 56);
  v16(a7 + v12, 1, 1, a4);
  *(a7 + 1) = v10;
  *(a7 + 2) = v11;
  v14 = sub_225CCEFC4();
  (*(*(v14 - 8) + 8))(a7 + v12, v14);
  (*(v13 + 32))(a7 + v12, a3, a4);

  return (v16)(a7 + v12, 0, 1, a4);
}

uint64_t HPKEEncryptedMessagePlain.seal(to:encryptor:)(uint64_t a1, void *a2, void *a3)
{
  v81 = a2;
  v82 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v74 - v5;
  v7 = a3[2];
  v6 = a3[3];
  v89 = a3;
  v79 = a3[4];
  v80 = v6;
  v8 = type metadata accessor for HPKEEnvelope(0, v7, v6, v79);
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v90 = &v74 - v9;
  v10 = sub_225CCEFC4();
  v85 = *(v10 - 8);
  v86 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v74 - v12;
  v14 = v7;
  v88 = *(v7 - 8);
  MEMORY[0x28223BE20](v11);
  v87 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCD954();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v84 = v13;
  v20 = off_28105B918;
  v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v22));
  (*(v17 + 16))(v19, &v20[v21], v16);
  os_unfair_lock_unlock(&v20[v22]);
  v23 = v19;
  v24 = sub_225CCD934();
  v25 = sub_225CCED04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v104[0] = v76;
    *v26 = 136315138;
    v27 = v14;
    *&v98 = v14;
    swift_getMetatypeMetadata();
    v28 = sub_225CCE504();
    v30 = sub_2259BE198(v28, v29, v104);
    v75 = v16;
    v31 = v30;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_2259A7000, v24, v25, "sealing messages using HPKE: message type = %s", v26, 0xCu);
    v32 = v76;
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x22AA6F950](v32, -1, -1);
    MEMORY[0x22AA6F950](v26, -1, -1);

    (*(v17 + 8))(v23, v75);
  }

  else
  {

    (*(v17 + 8))(v19, v16);
    v27 = v14;
  }

  v34 = v85;
  v33 = v86;
  v35 = v84;
  (*(v85 + 16))(v84, v105 + *(v89 + 15), v86);
  v36 = v88;
  v37 = (*(v88 + 48))(v35, 1, v27);
  v38 = v90;
  v39 = v87;
  if (v37 == 1)
  {
    (*(v34 + 8))(v35, v33);
    v105 = 0x8000000225D17220;
    v90 = 0x8000000225D19970;
    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v43 = v42;
    v44 = sub_225CCE954();
    v45 = *(v44 - 8);
    v46 = v83;
    (*(v45 + 56))(v83, 1, 1, v44);
    LODWORD(v44) = (*(v45 + 48))(v46, 1, v44);
    sub_2259CB640(v46, &unk_27D73B050, &unk_225CD3AD0);
    if (v44)
    {
      v47 = 108;
    }

    else
    {
      v47 = 23;
    }

    v48 = sub_225B2C374(v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v104[0] = v48;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v104);

    v50 = *&v104[0];
    v51 = sub_225B29AA0(0, 1, 1, v40);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[56 * v53];
    *(v54 + 4) = 0xD00000000000002CLL;
    *(v54 + 5) = 0x8000000225D19940;
    v55 = v105;
    *(v54 + 6) = 0xD00000000000001CLL;
    *(v54 + 7) = v55;
    v56 = v90;
    *(v54 + 8) = 0xD000000000000013;
    *(v54 + 9) = v56;
    *(v54 + 10) = 88;
    *v43 = v47;
    *(v43 + 8) = v51;
    *(v43 + 16) = 0xD00000000000002CLL;
    *(v43 + 24) = 0x8000000225D19940;
    *(v43 + 32) = v50;
    *(v43 + 40) = 0;
    return swift_willThrow();
  }

  else
  {
    v58 = v27;
    (*(v36 + 32))(v87, v35, v27);
    v59 = v81[3];
    v60 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v59);
    v61 = v91;
    sub_225A640BC(v39, v82, v59, v58, v60, v80, v79);
    if (v61)
    {
      return (*(v36 + 8))(v39, v58);
    }

    else
    {
      (*(v36 + 8))(v39, v58);
      v62 = *(v38 + 56);
      v94 = *(v38 + 40);
      v95 = v62;
      v63 = *(v38 + 88);
      v96 = *(v38 + 72);
      v97 = v63;
      v64 = *(v38 + 24);
      v93[0] = *(v38 + 8);
      v93[1] = v64;
      v100 = v94;
      v101 = v62;
      v102 = v96;
      v103 = v63;
      v98 = v93[0];
      v99 = v64;
      v65 = v105;
      v66 = *(v105 + 88);
      v104[4] = *(v105 + 72);
      v104[5] = v66;
      v67 = *(v105 + 56);
      v104[2] = *(v105 + 40);
      v104[3] = v67;
      v68 = *(v105 + 24);
      v104[0] = *(v105 + 8);
      v104[1] = v68;
      sub_225A0E2F8(v93, &v92);
      sub_2259CB640(v104, &qword_27D73B420, &qword_225CD98C0);
      v69 = v101;
      *(v65 + 40) = v100;
      *(v65 + 56) = v69;
      v70 = v103;
      *(v65 + 72) = v102;
      *(v65 + 88) = v70;
      v71 = v99;
      *(v65 + 8) = v98;
      *(v65 + 24) = v71;
      v72 = *(v38 + 13);
      v73 = *(v38 + 14);
      sub_2259CB710(v72, v73);
      (*(v77 + 8))(v38, v78);
      result = sub_2259B97A8(*(v65 + 104), *(v65 + 112));
      *(v65 + 104) = v72;
      *(v65 + 112) = v73;
    }
  }

  return result;
}

void HPKEEncryptedMessagePlain.encode(to:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v102 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = &v100 - v7;
  v109 = sub_225CCF324();
  v107 = *(v109 - 8);
  v8 = MEMORY[0x28223BE20](v109);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v104 = &v100 - v13;
  v105 = v10;
  type metadata accessor for HPKEEncryptedMessagePlain.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v14 = sub_225CCF7F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v100 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCE4();
  LOBYTE(v121) = *v131;
  LOBYTE(v115) = 0;
  sub_225A5E13C();
  v18 = v108;
  sub_225CCF7E4();
  if (v18)
  {
    (*(v15 + 8))(v17, v14);
    v131 = 0;
    v19 = v109;
    *&v115 = v18;
    v20 = v18;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v22 = v104;
    if (swift_dynamicCast())
    {
      *(&v101 + 1) = v21;

      v24 = v106;
      v23 = v107;
      (*(v107 + 32))(v106, v22, v19);
      *&v121 = 0;
      *(&v121 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v121 = 0xD00000000000001ALL;
      *(&v121 + 1) = 0x8000000225D19990;
      *&v113[0] = v105;
      swift_getMetatypeMetadata();
      v25 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v25);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D199D0);
      v104 = *(&v121 + 1);
      v105 = v121;
      v26 = swift_allocError();
      (*(v23 + 16))(v27, v24, v19);
      v102 = "r decrypting encoded data: ";
      v28 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v108 = swift_allocError();
      v30 = v29;
      swift_getErrorValue();
      v31 = v129;
      v32 = v26;
      sub_225B21FAC(v31, &v121);

      v33 = *(&v121 + 1);
      if (*(&v121 + 1))
      {
        v103 = v121;
        v101 = v122;
        v34 = *(&v123 + 1);
        v35 = v123;
      }

      else
      {
        *&v121 = v26;
        v46 = v26;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v47 = *&v113[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v49 = [v47 code];
          v50 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v50;
          *(inited + 40) = v49;
          v35 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v51 = v26;
          v101 = 0uLL;
          v33 = MEMORY[0x277D84F90];
          v103 = 119;
          v34 = v26;
        }

        else
        {
          *&v121 = v26;
          v58 = v26;
          v59 = sub_225CCE954();
          v60 = v28;
          v61 = v103;
          v62 = swift_dynamicCast();
          v63 = *(v59 - 8);
          (*(v63 + 56))(v61, v62 ^ 1u, 1, v59);
          LODWORD(v59) = (*(v63 + 48))(v61, 1, v59);
          v64 = v61;
          v28 = v60;
          sub_2259CB640(v64, &unk_27D73B050, &unk_225CD3AD0);
          if (v59)
          {
            v65 = 119;
          }

          else
          {
            v65 = 23;
          }

          v103 = v65;
          v66 = v104;

          v33 = MEMORY[0x277D84F90];
          v35 = sub_225B2C374(MEMORY[0x277D84F90]);
          v67 = v26;
          v34 = v26;
          *&v101 = v105;
          *(&v101 + 1) = v66;
        }
      }

      v68 = v102 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v121 = v35;
      sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v121);

      v70 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_225B29AA0(0, *(v33 + 2) + 1, 1, v33);
      }

      v72 = *(v33 + 2);
      v71 = *(v33 + 3);
      if (v72 >= v71 >> 1)
      {
        v33 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v33);
      }

      *(v33 + 2) = v72 + 1;
      v73 = &v33[56 * v72];
      v74 = v104;
      *(v73 + 4) = v105;
      *(v73 + 5) = v74;
      *(v73 + 6) = 0xD00000000000001CLL;
      *(v73 + 7) = v68;
      *(v73 + 8) = 0x742865646F636E65;
      *(v73 + 9) = 0xEB00000000293A6FLL;
      *(v73 + 10) = 105;
      *v30 = v103;
      v75 = v101;
      *(v30 + 8) = v33;
      *(v30 + 16) = v75;
      *(v30 + 32) = v70;
      *(v30 + 40) = v34;
      swift_willThrow();
      (*(v107 + 8))(v106, v109);
      v76 = v115;
    }

    else
    {

      *&v121 = 0;
      *(&v121 + 1) = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D19990);
      *&v115 = v105;
      swift_getMetatypeMetadata();
      v36 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v36);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199B0);
      v109 = v121;
      v106 = "r decrypting encoded data: ";
      v107 = *(&v121 + 1);
      v37 = v18;
      v38 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v108 = swift_allocError();
      v40 = v39;
      swift_getErrorValue();
      v41 = v130;
      v42 = v18;
      sub_225B21FAC(v41, &v121);

      v43 = *(&v121 + 1);
      if (*(&v121 + 1))
      {
        v104 = v122;
        v105 = v121;
        v103 = *(&v122 + 1);
        v44 = *(&v123 + 1);
        v45 = v123;
      }

      else
      {
        *&v121 = v18;
        v52 = v18;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v53 = v115;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v54 = swift_initStackObject();
          *(v54 + 16) = xmmword_225CD30F0;
          *(v54 + 32) = 20;
          v55 = [v53 code];
          v56 = MEMORY[0x277D83BF8];
          *(v54 + 64) = MEMORY[0x277D83B88];
          *(v54 + 72) = v56;
          *(v54 + 40) = v55;
          v45 = sub_225B2C374(v54);
          swift_setDeallocating();
          sub_2259CB640(v54 + 32, &qword_27D73B060, &unk_225CD3AE0);

          v57 = v18;
          v103 = 0;
          v104 = 0;
          v43 = MEMORY[0x277D84F90];
          v105 = 1158;
        }

        else
        {
          *&v121 = v18;
          v77 = v18;
          v78 = sub_225CCE954();
          v79 = v102;
          v80 = swift_dynamicCast();
          v81 = *(v78 - 8);
          (*(v81 + 56))(v79, v80 ^ 1u, 1, v78);
          LODWORD(v78) = (*(v81 + 48))(v79, 1, v78);
          sub_2259CB640(v79, &unk_27D73B050, &unk_225CD3AD0);
          if (v78)
          {
            v82 = 1158;
          }

          else
          {
            v82 = 23;
          }

          v105 = v82;
          v83 = v107;

          v43 = MEMORY[0x277D84F90];
          v45 = sub_225B2C374(MEMORY[0x277D84F90]);
          v84 = v18;
          v103 = v83;
          v104 = v109;
        }

        v44 = v18;
      }

      v85 = v106 | 0x8000000000000000;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      *&v121 = v45;
      sub_225B2C4A0(v38, sub_225B2AC40, 0, v86, &v121);

      v87 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_225B29AA0(0, *(v43 + 2) + 1, 1, v43);
      }

      v89 = *(v43 + 2);
      v88 = *(v43 + 3);
      if (v89 >= v88 >> 1)
      {
        v43 = sub_225B29AA0((v88 > 1), v89 + 1, 1, v43);
      }

      *(v43 + 2) = v89 + 1;
      v90 = &v43[56 * v89];
      v91 = v107;
      *(v90 + 4) = v109;
      *(v90 + 5) = v91;
      *(v90 + 6) = 0xD00000000000001CLL;
      *(v90 + 7) = v85;
      *(v90 + 8) = 0x742865646F636E65;
      *(v90 + 9) = 0xEB00000000293A6FLL;
      *(v90 + 10) = 108;
      v92 = v104;
      *v40 = v105;
      *(v40 + 8) = v43;
      *(v40 + 16) = v92;
      *(v40 + 24) = v103;
      *(v40 + 32) = v87;
      *(v40 + 40) = v44;
      swift_willThrow();
      v76 = v18;
    }
  }

  else
  {
    v108 = v15;
    LOBYTE(v121) = *(v131 + 1);
    LOBYTE(v115) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B430, &unk_225CD98C8);
    sub_225A5E1E4(&qword_27D73B438, &qword_27D73B430, &unk_225CD98C8, sub_225A32448);
    sub_225CCF7E4();
    v128 = *(v131 + 2);
    v127 = 2;
    sub_225CCF7E4();
    v93 = *(v131 + 56);
    v123 = *(v131 + 40);
    v124 = v93;
    v94 = *(v131 + 88);
    v125 = *(v131 + 72);
    v126 = v94;
    v95 = *(v131 + 24);
    v121 = *(v131 + 8);
    v122 = v95;
    v96 = *(v131 + 56);
    v117 = *(v131 + 40);
    v118 = v96;
    v97 = *(v131 + 88);
    v119 = *(v131 + 72);
    v120 = v97;
    v98 = *(v131 + 24);
    v115 = *(v131 + 8);
    v116 = v98;
    v114 = 3;
    sub_225A0DE54(&v121, v113, &qword_27D73B420, &qword_225CD98C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B420, &qword_225CD98C0);
    sub_225A5E1E4(&qword_27D73B440, &qword_27D73B420, &qword_225CD98C0, sub_225A5E190);
    sub_225CCF7E4();
    v113[2] = v117;
    v113[3] = v118;
    v113[4] = v119;
    v113[5] = v120;
    v113[0] = v115;
    v113[1] = v116;
    sub_2259CB640(v113, &qword_27D73B420, &qword_225CD98C0);
    v99 = *(v131 + 112);
    v111 = *(v131 + 104);
    v112 = v99;
    v110 = 4;
    sub_2259CB6FC(v111, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0, qword_225CD7B60);
    sub_225A5E1E4(&qword_27D73B450, &unk_27D73B0E0, qword_225CD7B60, sub_2259D9454);
    sub_225CCF7E4();
    sub_2259B97A8(v111, v112);
    (*(v108 + 8))(v17, v14);
  }
}

uint64_t HPKEEncryptedMessagePlain.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(&v122 + 1) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v123 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v124 = &v120 - v12;
  v135 = sub_225CCF2D4();
  v129 = *(v135 - 8);
  v13 = MEMORY[0x28223BE20](v135);
  v128 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v127 = &v120 - v15;
  type metadata accessor for HPKEEncryptedMessagePlain.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v16 = sub_225CCF714();
  v125 = *(v16 - 8);
  v126 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v120 - v17;
  v19 = type metadata accessor for HPKEEncryptedMessagePlain(0, a2, a3, a4);
  *&v122 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v120 - v21;
  *v22 = 0;
  v23 = &v120 - v21;
  *(v23 + 8) = xmmword_225CD3100;
  v133 = v23 + 8;
  *(v22 + 56) = 0u;
  *(v22 + 72) = 0u;
  *(v22 + 88) = 0u;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  *(v22 + 13) = 0;
  *(v22 + 14) = 0xF000000000000000;
  v24 = *(v20 + 60);
  v25 = *(*(a2 - 8) + 56);
  v134 = v22;
  v130 = v24;
  v155 = a2;
  v25(&v22[v24], 1, 1, a2);
  v26 = a1[3];
  v132 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = v131;
  sub_225CCFCA4();
  if (v27)
  {
    v126 = 0;
    v28 = v135;
    *&v145[0] = v27;
    v41 = v27;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v43 = v127;
    if (swift_dynamicCast())
    {
      *(&v122 + 1) = v42;

      v45 = v128;
      v44 = v129;
      (*(v129 + 32))(v128, v43, v28);
      *&v148 = 0;
      *(&v148 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v148 = 0xD00000000000001ALL;
      *(&v148 + 1) = 0x8000000225D19990;
      *&v139 = v155;
      swift_getMetatypeMetadata();
      v46 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v46);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D19A10);
      v125 = *(&v148 + 1);
      v127 = v148;
      v47 = swift_allocError();
      (*(v44 + 16))(v48, v45, v28);
      v123 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v49 = swift_allocError();
      v51 = v50;
      swift_getErrorValue();
      v52 = v147;
      v53 = v47;
      sub_225B21FAC(v52, &v148);

      v54 = *(&v148 + 1);
      v131 = v49;
      if (*(&v148 + 1))
      {
        v124 = v148;
        v122 = v149;
        v121 = *(&v150 + 1);
        v55 = v150;
      }

      else
      {
        *&v148 = v47;
        v65 = v47;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v66 = v139;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_225CD30F0;
          *(v67 + 32) = 20;
          v68 = [v66 code];
          v69 = MEMORY[0x277D83BF8];
          *(v67 + 64) = MEMORY[0x277D83B88];
          *(v67 + 72) = v69;
          *(v67 + 40) = v68;
          v55 = sub_225B2C374(v67);
          swift_setDeallocating();
          sub_2259CB640(v67 + 32, &qword_27D73B060, &unk_225CD3AE0);
          swift_deallocClassInstance();

          v70 = v47;
          v122 = 0uLL;
          v54 = MEMORY[0x277D84F90];
          v124 = 118;
          v121 = v47;
        }

        else
        {
          *&v148 = v47;
          v77 = v47;
          v78 = sub_225CCE954();
          v79 = v124;
          v80 = swift_dynamicCast();
          v81 = *(v78 - 8);
          (*(v81 + 56))(v79, v80 ^ 1u, 1, v78);
          LODWORD(v78) = (*(v81 + 48))(v79, 1, v78);
          sub_2259CB640(v79, &unk_27D73B050, &unk_225CD3AD0);
          if (v78)
          {
            v82 = 118;
          }

          else
          {
            v82 = 23;
          }

          v124 = v82;
          v83 = v125;

          v54 = MEMORY[0x277D84F90];
          v55 = sub_225B2C374(MEMORY[0x277D84F90]);
          v84 = v47;
          *(&v122 + 1) = v83;
          v121 = v47;
          *&v122 = v127;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v148 = v55;
      sub_225B2C4A0(v123, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v148);

      v86 = v148;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_225B29AA0(0, *(v54 + 2) + 1, 1, v54);
      }

      v88 = *(v54 + 2);
      v87 = *(v54 + 3);
      if (v88 >= v87 >> 1)
      {
        v54 = sub_225B29AA0((v87 > 1), v88 + 1, 1, v54);
      }

      *(v54 + 2) = v88 + 1;
      v89 = &v54[56 * v88];
      v90 = v125;
      *(v89 + 4) = v127;
      *(v89 + 5) = v90;
      *(v89 + 6) = 0xD00000000000001CLL;
      *(v89 + 7) = 0x8000000225D17220;
      *(v89 + 8) = 0x6F72662874696E69;
      *(v89 + 9) = 0xEB00000000293A6DLL;
      *(v89 + 10) = 123;
      *v51 = v124;
      v91 = v122;
      *(v51 + 8) = v54;
      *(v51 + 16) = v91;
      *(v51 + 32) = v86;
      *(v51 + 40) = v121;
      swift_willThrow();
      (*(v129 + 8))(v128, v135);
      v92 = *&v145[0];
    }

    else
    {

      *&v148 = 0;
      *(&v148 + 1) = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D19990);
      *&v145[0] = v155;
      swift_getMetatypeMetadata();
      v56 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v56);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199F0);
      v129 = *(&v148 + 1);
      v135 = v148;
      v127 = "r decrypting encoded data: ";
      v57 = v27;
      v128 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v58 = swift_allocError();
      v60 = v59;
      swift_getErrorValue();
      v61 = v154;
      v62 = v27;
      sub_225B21FAC(v61, &v148);

      v63 = *(&v148 + 1);
      v131 = v58;
      if (*(&v148 + 1))
      {
        v124 = v149;
        v125 = v148;
        *(&v122 + 1) = *(&v150 + 1);
        v64 = v150;
        v123 = *(&v149 + 1);
      }

      else
      {
        *&v148 = v27;
        v71 = v27;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v72 = *&v145[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v74 = [v72 code];
          v75 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v75;
          *(inited + 40) = v74;
          v64 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v76 = v27;
          v123 = 0;
          v124 = 0;
          v63 = MEMORY[0x277D84F90];
          v125 = 1159;
        }

        else
        {
          *&v148 = v27;
          v93 = v27;
          v94 = sub_225CCE954();
          v95 = v123;
          v96 = swift_dynamicCast();
          v97 = *(v94 - 8);
          (*(v97 + 56))(v95, v96 ^ 1u, 1, v94);
          LODWORD(v94) = (*(v97 + 48))(v95, 1, v94);
          sub_2259CB640(v95, &unk_27D73B050, &unk_225CD3AD0);
          if (v94)
          {
            v98 = 1159;
          }

          else
          {
            v98 = 23;
          }

          v125 = v98;
          v99 = v129;

          v63 = MEMORY[0x277D84F90];
          v64 = sub_225B2C374(MEMORY[0x277D84F90]);
          v100 = v27;
          v123 = v99;
          v124 = v135;
        }

        *(&v122 + 1) = v27;
      }

      v101 = v127 | 0x8000000000000000;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      *&v148 = v64;
      sub_225B2C4A0(v128, sub_225B2AC40, 0, v102, &v148);

      v103 = v148;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_225B29AA0(0, *(v63 + 2) + 1, 1, v63);
      }

      v105 = *(v63 + 2);
      v104 = *(v63 + 3);
      if (v105 >= v104 >> 1)
      {
        v63 = sub_225B29AA0((v104 > 1), v105 + 1, 1, v63);
      }

      *(v63 + 2) = v105 + 1;
      v106 = &v63[56 * v105];
      v107 = v129;
      *(v106 + 4) = v135;
      *(v106 + 5) = v107;
      *(v106 + 6) = 0xD00000000000001CLL;
      *(v106 + 7) = v101;
      *(v106 + 8) = 0x6F72662874696E69;
      *(v106 + 9) = 0xEB00000000293A6DLL;
      *(v106 + 10) = 126;
      v108 = v124;
      *v60 = v125;
      *(v60 + 8) = v63;
      *(v60 + 16) = v108;
      v109 = *(&v122 + 1);
      *(v60 + 24) = v123;
      *(v60 + 32) = v103;
      *(v60 + 40) = v109;
      swift_willThrow();
      v92 = v27;
    }

    __swift_destroy_boxed_opaque_existential_0(v132);
    v110 = v133[3];
    v150 = v133[2];
    v151 = v110;
    v111 = v133[5];
    v152 = v133[4];
    v153 = v111;
    v112 = v133[1];
    v148 = *v133;
    v149 = v112;
    sub_2259CB640(&v148, &qword_27D73B420, &qword_225CD98C0);
    v113 = v134;
    sub_2259B97A8(*(v134 + 13), *(v134 + 14));
    v114 = sub_225CCEFC4();
    return (*(*(v114 - 8) + 8))(&v113[v130], v114);
  }

  else
  {
    v131 = v19;
    v29 = v125;
    LOBYTE(v145[0]) = 1;
    sub_225A3249C();
    v30 = v18;
    sub_225CCF674();
    v31 = v134;
    v134[1] = v148;
    LOBYTE(v145[0]) = 2;
    sub_225CCF674();
    v31[2] = v148;
    v146 = 3;
    sub_225A5E260();
    sub_225CCF6E4();
    v32 = v29;
    v141 = v150;
    v142 = v151;
    v143 = v152;
    v144 = v153;
    v139 = v148;
    v140 = v149;
    v33 = v133;
    v34 = v133[2];
    v35 = v133[4];
    v36 = v133[5];
    v145[3] = v133[3];
    v145[4] = v35;
    v145[5] = v36;
    v37 = v133[1];
    v145[0] = *v133;
    v145[1] = v37;
    v145[2] = v34;
    sub_2259CB640(v145, &qword_27D73B420, &qword_225CD98C0);
    v38 = v142;
    v33[2] = v141;
    v33[3] = v38;
    v39 = v144;
    v33[4] = v143;
    v33[5] = v39;
    v40 = v140;
    *v33 = v139;
    v33[1] = v40;
    v136 = 4;
    sub_2259D94A8();
    sub_225CCF6E4();
    (*(v32 + 8))(v30, v126);
    v115 = v137;
    v116 = v138;
    sub_2259B97A8(*(v31 + 13), *(v31 + 14));
    *(v31 + 13) = v115;
    *(v31 + 14) = v116;
    v117 = v122;
    v118 = v131;
    (*(v122 + 16))(*(&v122 + 1), v31, v131);
    __swift_destroy_boxed_opaque_existential_0(v132);
    return (*(v117 + 8))(v31, v118);
  }
}

uint64_t HPKEEncryptedMessagePlain.open(with:authenticationContext:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X8>)
{
  v72 = a2;
  v67 = a1;
  v68 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v63 - v8;
  v10 = a3[2];
  v11 = sub_225CCEFC4();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v63 - v12;
  v15 = a3[3];
  v14 = a3[4];
  v16 = type metadata accessor for HPKEEnvelope(0, v10, v15, v14);
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v63 - v19;
  v21 = *(v4 + 8);
  v22 = *(v4 + 56);
  v71[2] = *(v4 + 40);
  v71[3] = v22;
  v23 = *(v4 + 88);
  v71[4] = *(v4 + 72);
  v71[5] = v23;
  v24 = *(v4 + 24);
  v71[0] = v21;
  v71[1] = v24;
  if (*(&v21 + 1) >> 60 == 15)
  {
    v72 = 0x8000000225D19A30;
    v67 = 0x8000000225D19A60;
    v68 = 0x8000000225D17220;
    v25 = MEMORY[0x277D84F90];
    v26 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v9, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v9, 1, v29);
    sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
    if (v29)
    {
      v31 = 287;
    }

    else
    {
      v31 = 23;
    }

    v32 = sub_225B2C374(v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v70[0] = v32;
    sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v70);

    v34 = *&v70[0];
    v35 = sub_225B29AA0(0, 1, 1, v25);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[56 * v37];
    v39 = v72;
    *(v38 + 4) = 0xD000000000000023;
    *(v38 + 5) = v39;
    *(v38 + 6) = 0xD00000000000001CLL;
    *(v38 + 7) = v68;
    *(v38 + 8) = 0xD000000000000021;
    *(v38 + 9) = v67;
    *(v38 + 10) = 132;
    *v28 = v31;
    *(v28 + 8) = v35;
    *(v28 + 16) = 0xD000000000000023;
    *(v28 + 24) = v39;
    *(v28 + 32) = v34;
    *(v28 + 40) = 0;
    return swift_willThrow();
  }

  else
  {
    v66 = v5;
    v41 = *(v4 + 112);
    if (v41 >> 60 == 15)
    {
      v72 = 0x8000000225D17220;
      v68 = 0x8000000225D19A60;
      sub_225A0DE54(v71, v70, &qword_27D73B420, &qword_225CD98C0);
      v42 = MEMORY[0x277D84F90];
      v43 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v45 = v44;
      v46 = sub_225CCE954();
      v47 = *(v46 - 8);
      (*(v47 + 56))(v9, 1, 1, v46);
      LODWORD(v46) = (*(v47 + 48))(v9, 1, v46);
      sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
      if (v46)
      {
        v48 = 287;
      }

      else
      {
        v48 = 23;
      }

      v49 = sub_225B2C374(v42);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v49;
      sub_225B2C4A0(v43, sub_225B2AC40, 0, v50, v70);

      v51 = *&v70[0];
      v52 = sub_225B29AA0(0, 1, 1, v42);
      v54 = *(v52 + 2);
      v53 = *(v52 + 3);
      if (v54 >= v53 >> 1)
      {
        v52 = sub_225B29AA0((v53 > 1), v54 + 1, 1, v52);
      }

      *(v52 + 2) = v54 + 1;
      v55 = &v52[56 * v54];
      *(v55 + 4) = 0xD000000000000021;
      *(v55 + 5) = 0x8000000225D19A90;
      v56 = v72;
      *(v55 + 6) = 0xD00000000000001CLL;
      *(v55 + 7) = v56;
      v57 = v68;
      *(v55 + 8) = 0xD000000000000021;
      *(v55 + 9) = v57;
      *(v55 + 10) = 135;
      *v45 = v48;
      *(v45 + 8) = v52;
      *(v45 + 16) = 0xD000000000000021;
      *(v45 + 24) = 0x8000000225D19A90;
      *(v45 + 32) = v51;
      *(v45 + 40) = 0;
      swift_willThrow();
      return sub_2259CB640(v71, &qword_27D73B420, &qword_225CD98C0);
    }

    else
    {
      v64 = v18;
      v65 = v17;
      v58 = *(v4 + 104);
      v70[0] = __PAIR128__(*(&v21 + 1), *&v71[0]);
      v59 = *(v4 + 40);
      v60 = *(v4 + 72);
      v70[3] = *(v4 + 56);
      v70[4] = v60;
      v70[5] = *(v4 + 88);
      v70[1] = *(v4 + 24);
      v70[2] = v59;
      (*(*(v10 - 8) + 56))(v13, 1, 1, v10);
      sub_225A0DE54(v71, v69, &qword_27D73B420, &qword_225CD98C0);
      sub_2259CB6FC(v58, v41);
      sub_225A0DE54(v71, v69, &qword_27D73B420, &qword_225CD98C0);
      sub_2259CB6FC(v58, v41);
      v63 = v58;
      HPKEEnvelope.init(params:data:unencryptedData:)(v70, v58, v41, v13, v10, v15, v14, v20);
      v61 = v67[3];
      v62 = v67[4];
      __swift_project_boxed_opaque_existential_1(v67, v61);
      sub_225A6419C(v20, v72, v61, v10, v62, v15, v14);
      (*(v64 + 8))(v20, v65);
      sub_2259CB640(v71, &qword_27D73B420, &qword_225CD98C0);
      return sub_2259B97A8(v63, v41);
    }
  }
}

unint64_t sub_225A4DBAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225A4DBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4DC70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225A4DCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4DD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A4DDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A4DBF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A4DE30@<X0>(_BYTE *a2@<X8>)
{
  result = sub_225A5E2F4();
  *a2 = result;
  return result;
}

uint64_t sub_225A4DE64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A4DEB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HPKEEncryptedMessageWithKeyWrap.init(sender:recipient:messages:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *a2;
  *a7 = 1;
  sub_225A5E2B4(&v20);
  *(a7 + 1) = v12;
  *(a7 + 2) = v13;
  v28[4] = v24;
  v28[5] = v25;
  v28[6] = v26;
  v28[7] = v27;
  v28[0] = v20;
  v28[1] = v21;
  v28[2] = v22;
  v28[3] = v23;
  sub_2259CB640(v28, &qword_27D73B460, &qword_225CD98D8);
  v14 = v25;
  *(a7 + 72) = v24;
  *(a7 + 88) = v14;
  v15 = v27;
  *(a7 + 104) = v26;
  *(a7 + 120) = v15;
  v16 = v21;
  *(a7 + 8) = v20;
  *(a7 + 24) = v16;
  v17 = v23;
  *(a7 + 40) = v22;
  *(a7 + 56) = v17;
  v18 = type metadata accessor for HPKEEncryptedMessageWithKeyWrap(0, a4, a5, a6);
  result = (*(*(a4 - 8) + 32))(a7 + *(v18 + 60), a3, a4);
  *(a7 + 136) = MEMORY[0x277D84F98];
  return result;
}

Swift::Void __swiftcall HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKey(keyID:key:)(Swift::String keyID, CoreIDVShared::AEADKey key)
{
  object = keyID._object;
  countAndFlagsBits = keyID._countAndFlagsBits;
  v5 = *key.secretKey._countAndFlagsBits;
  v4 = *(key.secretKey._countAndFlagsBits + 8);
  v7 = *(key.secretKey._countAndFlagsBits + 16);
  v6 = *(key.secretKey._countAndFlagsBits + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B468, &qword_225CD98E0);
  inited = swift_initStackObject();
  *(inited + 32) = countAndFlagsBits;
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 40) = object;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  *(inited + 64) = v7;
  *(inited + 72) = v6;

  v9 = sub_225B2D458(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73B470, &qword_225CD98E8);
  HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKeys(keys:)(v9);
}

Swift::Void __swiftcall HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKeys(keys:)(Swift::OpaquePointer keys)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 136);
  sub_225A5E2FC(keys._rawValue, sub_225A5E09C, 0, isUniquelyReferenced_nonNull_native, &v4);

  *(v1 + 136) = v4;
}

double HPKEEncryptedMessageWithKeyWrap.sealKeys(to:encryptor:)(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = a3;
  v4 = v3;
  v45 = a1;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v4 + 136);
  v41 = *(v44 + 16);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v10 = off_28105B918;
  v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v12));
  (*(v7 + 16))(v9, &v10[v11], v6);
  os_unfair_lock_unlock(&v10[v12]);
  v13 = sub_225CCD934();
  v14 = sub_225CCED04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = v9;
    v39 = v14;
    v16 = v15;
    v38 = swift_slowAlloc();
    *&v55[0] = v38;
    *v16 = 136315394;
    *&v54[0] = *(v42 + 16);
    swift_getMetatypeMetadata();
    v17 = sub_225CCE504();
    v19 = sub_2259BE198(v17, v18, v55);
    v42 = v6;
    v20 = v4;
    v21 = v19;

    *(v16 + 4) = v21;
    v4 = v20;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v41;
    _os_log_impl(&dword_2259A7000, v13, v39, "sealing keys: message type = %s, # of keys: %ld", v16, 0x16u);
    v22 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA6F950](v22, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);

    (*(v7 + 8))(v40, v42);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v56 = v44;

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B478, &qword_225CD98F0);
  v26 = sub_225A5E634(&qword_27D73B480, sub_225A5E5E0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v27 = sub_225A5E634(&qword_27D73B490, sub_225A5E6B8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v28 = v43;
  sub_225A640BC(&v56, v45, v24, v25, v23, v26, v27);

  if (!v28)
  {
    v50 = v55[4];
    v51 = v55[5];
    v52 = v55[6];
    v53 = v55[7];
    v46 = v55[0];
    v47 = v55[1];
    v48 = v55[2];
    v49 = v55[3];
    nullsub_1();
    v30 = *(v4 + 88);
    v54[4] = *(v4 + 72);
    v54[5] = v30;
    v31 = *(v4 + 120);
    v54[6] = *(v4 + 104);
    v54[7] = v31;
    v32 = *(v4 + 24);
    v54[0] = *(v4 + 8);
    v54[1] = v32;
    v33 = *(v4 + 56);
    v54[2] = *(v4 + 40);
    v54[3] = v33;
    sub_2259CB640(v54, &qword_27D73B460, &qword_225CD98D8);
    v34 = v51;
    *(v4 + 72) = v50;
    *(v4 + 88) = v34;
    v35 = v53;
    *(v4 + 104) = v52;
    *(v4 + 120) = v35;
    v36 = v47;
    *(v4 + 8) = v46;
    *(v4 + 24) = v36;
    result = *&v48;
    v37 = v49;
    *(v4 + 40) = v48;
    *(v4 + 56) = v37;
  }

  return result;
}

{
  v47 = a1;
  v4 = v3;
  v45 = a3;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v4 + 136);
  v44 = *(v46 + 16);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v10 = off_28105B918;
  v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v12));
  (*(v7 + 16))(v9, &v10[v11], v6);
  os_unfair_lock_unlock(&v10[v12]);
  v13 = sub_225CCD934();
  v14 = sub_225CCED04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v42 = v9;
    v16 = v14;
    v17 = v15;
    v18 = swift_slowAlloc();
    v43 = v4;
    v19 = v18;
    *&v58[0] = v18;
    *v17 = 136315394;
    *&v57[0] = *(v45 + 16);
    swift_getMetatypeMetadata();
    v20 = sub_225CCE504();
    v22 = sub_2259BE198(v20, v21, v58);
    v45 = v6;
    v23 = a2;
    v24 = v22;

    *(v17 + 4) = v24;
    a2 = v23;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v44;
    _os_log_impl(&dword_2259A7000, v13, v16, "sealing keys: message type = %s, # of keys: %ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v25 = v19;
    v4 = v43;
    MEMORY[0x22AA6F950](v25, -1, -1);
    MEMORY[0x22AA6F950](v17, -1, -1);

    (*(v7 + 8))(v42, v45);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  v59 = v46;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B478, &qword_225CD98F0);
  v29 = sub_225A5E634(&qword_27D73B480, sub_225A5E5E0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v30 = sub_225A5E634(&qword_27D73B490, sub_225A5E6B8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v31 = v48;
  sub_225A6427C(&v59, v47, v26, v28, v27, v29, v30);
  if (!v31)
  {
    v53 = v58[4];
    v54 = v58[5];
    v55 = v58[6];
    v56 = v58[7];
    v49 = v58[0];
    v50 = v58[1];
    v51 = v58[2];
    v52 = v58[3];
    nullsub_1();
    v33 = *(v4 + 88);
    v57[4] = *(v4 + 72);
    v57[5] = v33;
    v34 = *(v4 + 120);
    v57[6] = *(v4 + 104);
    v57[7] = v34;
    v35 = *(v4 + 24);
    v57[0] = *(v4 + 8);
    v57[1] = v35;
    v36 = *(v4 + 56);
    v57[2] = *(v4 + 40);
    v57[3] = v36;
    sub_2259CB640(v57, &qword_27D73B460, &qword_225CD98D8);
    v37 = v54;
    *(v4 + 72) = v53;
    *(v4 + 88) = v37;
    v38 = v56;
    *(v4 + 104) = v55;
    *(v4 + 120) = v38;
    v39 = v50;
    *(v4 + 8) = v49;
    *(v4 + 24) = v39;
    result = *&v51;
    v40 = v52;
    *(v4 + 40) = v51;
    *(v4 + 56) = v40;
  }

  return result;
}

void HPKEEncryptedMessageWithKeyWrap.encode(to:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  *&v101 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  *(&v101 + 1) = &v99 - v7;
  v132 = sub_225CCF324();
  v105 = *(v132 - 8);
  v8 = MEMORY[0x28223BE20](v132);
  v104 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v102 = a2;
  v103 = &v99 - v10;
  v11 = a2[3];
  v12 = a2[4];
  v107 = a2[2];
  v100 = v12;
  type metadata accessor for HPKEEncryptedMessageWithKeyWrap.CodingKeys(255, v107, v11, v12);
  swift_getWitnessTable();
  v13 = sub_225CCF7F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v99 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v108;
  sub_225CCFCE4();
  LOBYTE(v120) = *v17;
  LOBYTE(v112) = 0;
  sub_225A5E13C();
  v18 = v106;
  sub_225CCF7E4();
  if (v18)
  {
    v14[1](v16, v13);
    v108 = 0;
    *&v112 = v18;
    v19 = v18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v21 = v103;
    v22 = v132;
    if (swift_dynamicCast())
    {
      v102 = v20;

      v24 = v104;
      v23 = v105;
      (*(v105 + 32))(v104, v21, v22);
      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v120 = 0xD000000000000015;
      *(&v120 + 1) = 0x8000000225D19AC0;
      *&v110[0] = v107;
      swift_getMetatypeMetadata();
      v25 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v25);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D199D0);
      v103 = *(&v120 + 1);
      v106 = v120;
      v26 = swift_allocError();
      (*(v23 + 16))(v27, v24, v22);
      v28 = "r decrypting encoded data: ";
      v29 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v107 = swift_allocError();
      v31 = v30;
      swift_getErrorValue();
      v32 = v130;
      v33 = v26;
      sub_225B21FAC(v32, &v120);

      v34 = *(&v120 + 1);
      if (*(&v120 + 1))
      {
        v102 = v120;
        v100 = *(&v122 + 1);
        v35 = v122;
        v101 = v121;
      }

      else
      {
        *&v120 = v26;
        v46 = v26;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v47 = *&v110[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          v99 = "r decrypting encoded data: ";
          *(inited + 32) = 20;
          v49 = [v47 code];
          v50 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v50;
          *(inited + 40) = v49;
          v35 = sub_225B2C374(inited);
          swift_setDeallocating();
          v28 = v99;
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v51 = v26;
          v101 = 0uLL;
          v34 = MEMORY[0x277D84F90];
          v102 = 119;
          v100 = v26;
        }

        else
        {
          *&v120 = v26;
          v58 = v26;
          v59 = sub_225CCE954();
          v60 = *(&v101 + 1);
          v61 = swift_dynamicCast();
          v62 = *(v59 - 8);
          (*(v62 + 56))(v60, v61 ^ 1u, 1, v59);
          LODWORD(v59) = (*(v62 + 48))(v60, 1, v59);
          sub_2259CB640(v60, &unk_27D73B050, &unk_225CD3AD0);
          if (v59)
          {
            v63 = 119;
          }

          else
          {
            v63 = 23;
          }

          v102 = v63;
          v64 = v103;

          v34 = MEMORY[0x277D84F90];
          v35 = sub_225B2C374(MEMORY[0x277D84F90]);
          v65 = v26;
          *(&v101 + 1) = v64;
          v100 = v26;
          *&v101 = v106;
        }
      }

      v66 = v28 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v120 = v35;
      sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v120);

      v68 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_225B29AA0(0, *(v34 + 2) + 1, 1, v34);
      }

      v70 = *(v34 + 2);
      v69 = *(v34 + 3);
      if (v70 >= v69 >> 1)
      {
        v34 = sub_225B29AA0((v69 > 1), v70 + 1, 1, v34);
      }

      *(v34 + 2) = v70 + 1;
      v71 = &v34[56 * v70];
      v72 = v103;
      *(v71 + 4) = v106;
      *(v71 + 5) = v72;
      *(v71 + 6) = 0xD00000000000001CLL;
      *(v71 + 7) = v66;
      *(v71 + 8) = 0x742865646F636E65;
      *(v71 + 9) = 0xEB00000000293A6FLL;
      *(v71 + 10) = 214;
      *v31 = v102;
      v73 = v101;
      *(v31 + 8) = v34;
      *(v31 + 16) = v73;
      *(v31 + 32) = v68;
      *(v31 + 40) = v100;
      swift_willThrow();
      (*(v105 + 8))(v104, v132);
      v74 = v112;
    }

    else
    {

      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v120 = 0xD000000000000015;
      *(&v120 + 1) = 0x8000000225D19AC0;
      *&v112 = v107;
      swift_getMetatypeMetadata();
      v36 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v36);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199B0);
      v132 = v120;
      v105 = "r decrypting encoded data: ";
      v106 = *(&v120 + 1);
      v37 = v18;
      v38 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v107 = swift_allocError();
      v40 = v39;
      swift_getErrorValue();
      v41 = v131;
      v42 = v18;
      sub_225B21FAC(v41, &v120);

      v43 = *(&v120 + 1);
      if (*(&v120 + 1))
      {
        v103 = v121;
        v104 = v120;
        v102 = *(&v121 + 1);
        v44 = *(&v122 + 1);
        v45 = v122;
      }

      else
      {
        *&v120 = v18;
        v52 = v18;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v53 = v112;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v54 = swift_initStackObject();
          *(v54 + 16) = xmmword_225CD30F0;
          *(v54 + 32) = 20;
          v55 = [v53 code];
          v56 = MEMORY[0x277D83BF8];
          *(v54 + 64) = MEMORY[0x277D83B88];
          *(v54 + 72) = v56;
          *(v54 + 40) = v55;
          v45 = sub_225B2C374(v54);
          swift_setDeallocating();
          sub_2259CB640(v54 + 32, &qword_27D73B060, &unk_225CD3AE0);

          v57 = v18;
          v102 = 0;
          v103 = 0;
          v43 = MEMORY[0x277D84F90];
          v104 = 1158;
        }

        else
        {
          *&v120 = v18;
          v75 = v18;
          v76 = sub_225CCE954();
          v77 = v101;
          v78 = swift_dynamicCast();
          v79 = *(v76 - 8);
          (*(v79 + 56))(v77, v78 ^ 1u, 1, v76);
          LODWORD(v76) = (*(v79 + 48))(v77, 1, v76);
          sub_2259CB640(v77, &unk_27D73B050, &unk_225CD3AD0);
          if (v76)
          {
            v80 = 1158;
          }

          else
          {
            v80 = 23;
          }

          v104 = v80;
          v81 = v106;

          v43 = MEMORY[0x277D84F90];
          v45 = sub_225B2C374(MEMORY[0x277D84F90]);
          v82 = v18;
          v102 = v81;
          v103 = v132;
        }

        v44 = v18;
      }

      v83 = v105 | 0x8000000000000000;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      *&v120 = v45;
      sub_225B2C4A0(v38, sub_225B2AC40, 0, v84, &v120);

      v85 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_225B29AA0(0, *(v43 + 2) + 1, 1, v43);
      }

      v87 = *(v43 + 2);
      v86 = *(v43 + 3);
      if (v87 >= v86 >> 1)
      {
        v43 = sub_225B29AA0((v86 > 1), v87 + 1, 1, v43);
      }

      *(v43 + 2) = v87 + 1;
      v88 = &v43[56 * v87];
      v89 = v106;
      *(v88 + 4) = v132;
      *(v88 + 5) = v89;
      *(v88 + 6) = 0xD00000000000001CLL;
      *(v88 + 7) = v83;
      *(v88 + 8) = 0x742865646F636E65;
      *(v88 + 9) = 0xEB00000000293A6FLL;
      *(v88 + 10) = 217;
      v90 = v103;
      *v40 = v104;
      *(v40 + 8) = v43;
      *(v40 + 16) = v90;
      *(v40 + 24) = v102;
      *(v40 + 32) = v85;
      *(v40 + 40) = v44;
      swift_willThrow();
      v74 = v18;
    }
  }

  else
  {
    v106 = v14;
    LOBYTE(v120) = *(v17 + 1);
    LOBYTE(v112) = 1;
    sub_225A32448();
    sub_225CCF7E4();
    v129 = *(v17 + 2);
    v128 = 2;
    sub_225CCF7E4();
    v91 = *(v17 + 88);
    v124 = *(v17 + 72);
    v125 = v91;
    v92 = *(v17 + 120);
    v126 = *(v17 + 104);
    v127 = v92;
    v93 = *(v17 + 24);
    v120 = *(v17 + 8);
    v121 = v93;
    v94 = *(v17 + 56);
    v122 = *(v17 + 40);
    v123 = v94;
    v95 = *(v17 + 88);
    v116 = *(v17 + 72);
    v117 = v95;
    v96 = *(v17 + 120);
    v118 = *(v17 + 104);
    v119 = v96;
    v97 = *(v17 + 24);
    v112 = *(v17 + 8);
    v113 = v97;
    v98 = *(v17 + 56);
    v114 = *(v17 + 40);
    v115 = v98;
    v111 = 4;
    sub_225A0DE54(&v120, v110, &qword_27D73B460, &qword_225CD98D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4A0, &qword_225CD98F8);
    sub_2259D8B24(&qword_27D73B4A8, &qword_27D73B4A0, &qword_225CD98F8, &protocol conformance descriptor for HPKEEnvelope<A>);
    sub_225CCF774();
    v110[4] = v116;
    v110[5] = v117;
    v110[6] = v118;
    v110[7] = v119;
    v110[0] = v112;
    v110[1] = v113;
    v110[2] = v114;
    v110[3] = v115;
    sub_2259CB640(v110, &qword_27D73B460, &qword_225CD98D8);
    v109 = 5;
    sub_225CCF7E4();
    v106[1](v16, v13);
  }
}

uint64_t HPKEEncryptedMessageWithKeyWrap.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v121 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  *&v124 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  *(&v124 + 1) = &v118 - v12;
  v156 = sub_225CCF2D4();
  v130 = *(v156 - 8);
  v13 = MEMORY[0x28223BE20](v156);
  v129 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v128 = &v118 - v16;
  v120 = *(a2 - 8);
  MEMORY[0x28223BE20](v15);
  v123 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HPKEEncryptedMessageWithKeyWrap.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v18 = sub_225CCF714();
  v125 = *(v18 - 8);
  v126 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v118 - v19;
  v133 = a2;
  v122 = a3;
  v21 = type metadata accessor for HPKEEncryptedMessageWithKeyWrap(0, a2, a3, a4);
  v119 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v118 - v22;
  *(&v118 - v22) = 1;
  sub_225A5E2B4(v155);
  v24 = v155[5];
  *(v23 + 72) = v155[4];
  *(v23 + 88) = v24;
  v25 = v155[7];
  *(v23 + 104) = v155[6];
  *(v23 + 120) = v25;
  v26 = v155[1];
  *(v23 + 8) = v155[0];
  *(v23 + 24) = v26;
  v27 = v155[3];
  *(v23 + 40) = v155[2];
  v28 = v23;
  *(v23 + 56) = v27;
  v29 = a1[3];
  v132 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v127 = v20;
  v30 = v131;
  sub_225CCFCA4();
  if (v30)
  {
    v131 = 0;
    v31 = v156;
    *&v143[0] = v30;
    v42 = v30;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v44 = v128;
    if (swift_dynamicCast())
    {
      v125 = v43;

      v45 = v129;
      v46 = v130;
      (*(v130 + 32))(v129, v44, v31);
      *&v146 = 0;
      *(&v146 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v146 = 0xD000000000000015;
      *(&v146 + 1) = 0x8000000225D19AC0;
      *&v135 = v133;
      swift_getMetatypeMetadata();
      v47 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v47);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D19A10);
      v127 = *(&v146 + 1);
      v128 = v146;
      v48 = swift_allocError();
      (*(v46 + 16))(v49, v45, v31);
      v126 = "r decrypting encoded data: ";
      v50 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v133 = swift_allocError();
      v52 = v51;
      swift_getErrorValue();
      v53 = v145;
      v54 = v48;
      sub_225B21FAC(v53, &v146);

      v55 = *(&v146 + 1);
      if (*(&v146 + 1))
      {
        v125 = v146;
        v123 = *(&v148 + 1);
        v56 = v148;
        v124 = v147;
      }

      else
      {
        *&v146 = v48;
        v66 = v48;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v67 = v135;
          v125 = v135;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_225CD30F0;
          *(v68 + 32) = 20;
          v69 = [v67 code];
          v70 = MEMORY[0x277D83BF8];
          *(v68 + 64) = MEMORY[0x277D83B88];
          *(v68 + 72) = v70;
          *(v68 + 40) = v69;
          v56 = sub_225B2C374(v68);
          swift_setDeallocating();
          sub_2259CB640(v68 + 32, &qword_27D73B060, &unk_225CD3AE0);
          swift_deallocClassInstance();

          v71 = v48;
          v124 = 0uLL;
          v55 = MEMORY[0x277D84F90];
          v125 = 118;
          v123 = v48;
        }

        else
        {
          *&v146 = v48;
          v78 = v48;
          v79 = sub_225CCE954();
          v80 = *(&v124 + 1);
          v81 = swift_dynamicCast();
          v82 = *(v79 - 8);
          (*(v82 + 56))(v80, v81 ^ 1u, 1, v79);
          LODWORD(v79) = (*(v82 + 48))(v80, 1, v79);
          sub_2259CB640(v80, &unk_27D73B050, &unk_225CD3AD0);
          if (v79)
          {
            v83 = 118;
          }

          else
          {
            v83 = 23;
          }

          v125 = v83;
          v84 = v127;

          v55 = MEMORY[0x277D84F90];
          v56 = sub_225B2C374(MEMORY[0x277D84F90]);
          v85 = v48;
          *(&v124 + 1) = v84;
          v123 = v48;
          *&v124 = v128;
        }
      }

      v86 = v126 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v146 = v56;
      sub_225B2C4A0(v50, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v146);

      v88 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_225B29AA0(0, *(v55 + 2) + 1, 1, v55);
      }

      v90 = *(v55 + 2);
      v89 = *(v55 + 3);
      if (v90 >= v89 >> 1)
      {
        v55 = sub_225B29AA0((v89 > 1), v90 + 1, 1, v55);
      }

      *(v55 + 2) = v90 + 1;
      v91 = &v55[56 * v90];
      v92 = v127;
      *(v91 + 4) = v128;
      *(v91 + 5) = v92;
      *(v91 + 6) = 0xD00000000000001CLL;
      *(v91 + 7) = v86;
      *(v91 + 8) = 0x6F72662874696E69;
      *(v91 + 9) = 0xEB00000000293A6DLL;
      *(v91 + 10) = 233;
      *v52 = v125;
      v93 = v124;
      *(v52 + 8) = v55;
      *(v52 + 16) = v93;
      *(v52 + 32) = v88;
      *(v52 + 40) = v123;
      swift_willThrow();
      (*(v130 + 8))(v129, v156);
    }

    else
    {

      *&v146 = 0;
      *(&v146 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v146 = 0xD000000000000015;
      *(&v146 + 1) = 0x8000000225D19AC0;
      *&v143[0] = v133;
      swift_getMetatypeMetadata();
      v57 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v57);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199F0);
      v156 = v146;
      v129 = "r decrypting encoded data: ";
      v130 = *(&v146 + 1);
      v58 = v30;
      v59 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v133 = swift_allocError();
      v61 = v60;
      swift_getErrorValue();
      v62 = v154;
      v63 = v30;
      sub_225B21FAC(v62, &v146);

      v64 = *(&v146 + 1);
      if (*(&v146 + 1))
      {
        v127 = v147;
        v128 = v146;
        v125 = *(&v148 + 1);
        v65 = v148;
        v126 = *(&v147 + 1);
      }

      else
      {
        *&v146 = v30;
        v72 = v30;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v73 = *&v143[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v74 = swift_allocObject();
          *(v74 + 16) = xmmword_225CD30F0;
          *(v74 + 32) = 20;
          v75 = [v73 code];
          v76 = MEMORY[0x277D83BF8];
          *(v74 + 64) = MEMORY[0x277D83B88];
          *(v74 + 72) = v76;
          *(v74 + 40) = v75;
          v65 = sub_225B2C374(v74);
          swift_setDeallocating();
          sub_2259CB640(v74 + 32, &qword_27D73B060, &unk_225CD3AE0);
          swift_deallocClassInstance();

          v77 = v30;
          v126 = 0;
          v127 = 0;
          v64 = MEMORY[0x277D84F90];
          v128 = 1159;
        }

        else
        {
          *&v146 = v30;
          v94 = v30;
          v95 = sub_225CCE954();
          v96 = v124;
          v97 = swift_dynamicCast();
          v98 = *(v95 - 8);
          (*(v98 + 56))(v96, v97 ^ 1u, 1, v95);
          LODWORD(v95) = (*(v98 + 48))(v96, 1, v95);
          sub_2259CB640(v96, &unk_27D73B050, &unk_225CD3AD0);
          if (v95)
          {
            v99 = 1159;
          }

          else
          {
            v99 = 23;
          }

          v128 = v99;
          v100 = v130;

          v64 = MEMORY[0x277D84F90];
          v65 = sub_225B2C374(MEMORY[0x277D84F90]);
          v101 = v30;
          v126 = v100;
          v127 = v156;
        }

        v125 = v30;
      }

      v102 = v129 | 0x8000000000000000;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      *&v146 = v65;
      sub_225B2C4A0(v59, sub_225B2AC40, 0, v103, &v146);

      v104 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_225B29AA0(0, *(v64 + 2) + 1, 1, v64);
      }

      v106 = *(v64 + 2);
      v105 = *(v64 + 3);
      if (v106 >= v105 >> 1)
      {
        v64 = sub_225B29AA0((v105 > 1), v106 + 1, 1, v64);
      }

      *(v64 + 2) = v106 + 1;
      v107 = &v64[56 * v106];
      v108 = v130;
      *(v107 + 4) = v156;
      *(v107 + 5) = v108;
      *(v107 + 6) = 0xD00000000000001CLL;
      *(v107 + 7) = v102;
      *(v107 + 8) = 0x6F72662874696E69;
      *(v107 + 9) = 0xEB00000000293A6DLL;
      *(v107 + 10) = 236;
      v109 = v127;
      *v61 = v128;
      *(v61 + 8) = v64;
      *(v61 + 16) = v109;
      v110 = v125;
      *(v61 + 24) = v126;
      *(v61 + 32) = v104;
      *(v61 + 40) = v110;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0(v132);
    v111 = *(v28 + 88);
    v150 = *(v28 + 72);
    v151 = v111;
    v112 = *(v28 + 120);
    v152 = *(v28 + 104);
    v153 = v112;
    v113 = *(v28 + 24);
    v146 = *(v28 + 8);
    v147 = v113;
    v114 = *(v28 + 56);
    v148 = *(v28 + 40);
    v149 = v114;
    return sub_2259CB640(&v146, &qword_27D73B460, &qword_225CD98D8);
  }

  else
  {
    v131 = v21;
    v32 = v125;
    LOBYTE(v143[0]) = 1;
    sub_225A3249C();
    sub_225CCF6E4();
    v23[1] = v146;
    LOBYTE(v143[0]) = 2;
    sub_225CCF6E4();
    v23[2] = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4A0, &qword_225CD98F8);
    v144 = 4;
    sub_2259D8B24(&qword_27D73B4B0, &qword_27D73B4A0, &qword_225CD98F8, &protocol conformance descriptor for HPKEEnvelope<A>);
    sub_225CCF6E4();
    v139 = v150;
    v140 = v151;
    v141 = v152;
    v142 = v153;
    v135 = v146;
    v136 = v147;
    v137 = v148;
    v138 = v149;
    nullsub_1();
    v33 = *(v23 + 88);
    v143[4] = *(v23 + 72);
    v143[5] = v33;
    v34 = *(v23 + 120);
    v143[6] = *(v23 + 104);
    v143[7] = v34;
    v35 = *(v23 + 24);
    v143[0] = *(v23 + 8);
    v143[1] = v35;
    v36 = *(v23 + 56);
    v143[2] = *(v23 + 40);
    v143[3] = v36;
    sub_2259CB640(v143, &qword_27D73B460, &qword_225CD98D8);
    v37 = v140;
    *(v23 + 72) = v139;
    *(v23 + 88) = v37;
    v38 = v142;
    *(v23 + 104) = v141;
    *(v23 + 120) = v38;
    v39 = v136;
    *(v23 + 8) = v135;
    *(v23 + 24) = v39;
    v40 = v138;
    *(v23 + 40) = v137;
    *(v23 + 56) = v40;
    v134 = 5;
    v41 = v133;
    sub_225CCF6E4();
    (*(v32 + 8))(v127, v126);
    v115 = v131;
    (*(v120 + 32))(&v28[v131[15]], v123, v41);
    *(v28 + 17) = MEMORY[0x277D84F98];
    v116 = v119;
    (*(v119 + 16))(v121, v28, v115);
    __swift_destroy_boxed_opaque_existential_0(v132);
    return (*(v116 + 8))(v28, v115);
  }
}

uint64_t HPKEEncryptedMessageWithKeyWrap.getKeys()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 88);
  v14 = *(v1 + 72);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 120);
  v16 = *(v1 + 104);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 24);
  v11[0] = *(v1 + 8);
  v11[1] = v6;
  v8 = *(v1 + 56);
  v12 = *(v1 + 40);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_225A0DE54(v11, &v10, &qword_27D73B460, &qword_225CD98D8);
}

CoreIDVShared::HPKEEncryptionParamsAlgorithmIdentifier_optional __swiftcall HPKEEncryptionParamsAlgorithmIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t HPKEEncryptionParamsAlgorithmIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x50482D454C505041;
  }
}

uint64_t sub_225A50B84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x50482D454C505041;
  }

  if (v2)
  {
    v4 = 0xED000031762D454BLL;
  }

  else
  {
    v4 = 0x8000000225D0AAE0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x50482D454C505041;
  }

  if (*a2)
  {
    v6 = 0x8000000225D0AAE0;
  }

  else
  {
    v6 = 0xED000031762D454BLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225A50C3C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A50CD0(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225A50D50()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A50DE0@<X0>(char *a2@<X8>)
{
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_225A50E40(unint64_t *a1@<X8>)
{
  v2 = 0x8000000225D0AAE0;
  v3 = 0x50482D454C505041;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xED000031762D454BLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_225A50F4C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225A50FC0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225A51014@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_225CCF5D4();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_225A510A4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_225CCF5D4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_225A510FC(uint64_t a1)
{
  v2 = sub_225A5E724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A51138(uint64_t a1)
{
  v2 = sub_225A5E724();

  return MEMORY[0x2821FE720](a1, v2);
}

void HPKEEncryptedMessageAlgorithm.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v84 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v81 - v6;
  v7 = sub_225CCF324();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v87 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4B8, &qword_225CD9900);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v81 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A5E724();
  sub_225CCFCE4();
  LOBYTE(v93) = v15;
  sub_225A5E13C();
  v16 = v90;
  sub_225CCF7E4();
  if (v16)
  {
    (*(v12 + 8))(v14, v11);
    v100 = v16;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v18 = v86;
    v19 = v89;
    if (swift_dynamicCast())
    {

      v21 = v87;
      v20 = v88;
      (*(v88 + 32))(v87, v18, v19);
      v22 = swift_allocError();
      (*(v20 + 16))(v23, v21, v19);
      v84 = "r decrypting encoded data: ";
      v86 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v25 = v24;
      swift_getErrorValue();
      v26 = v92;
      v27 = v22;
      sub_225B21FAC(v26, &v93);

      v28 = v94;
      v90 = 0x8000000225D19B20;
      if (v94)
      {
        v85 = v93;
        v82 = v96;
        v83 = v95;
        v29 = v97;
        v81 = v98;
      }

      else
      {
        v93 = v22;
        v38 = v22;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v39 = v91;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v41 = [v39 code];
          v42 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v42;
          *(inited + 40) = v41;
          v29 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v43 = v22;
          v82 = 0;
          v83 = 0;
          v28 = MEMORY[0x277D84F90];
          v85 = 119;
        }

        else
        {
          v93 = v22;
          v50 = v22;
          v51 = sub_225CCE954();
          v52 = v85;
          v53 = swift_dynamicCast();
          v54 = *(v51 - 8);
          (*(v54 + 56))(v52, v53 ^ 1u, 1, v51);
          LODWORD(v51) = (*(v54 + 48))(v52, 1, v51);
          sub_2259CB640(v52, &unk_27D73B050, &unk_225CD3AD0);
          if (v51)
          {
            v55 = 119;
          }

          else
          {
            v55 = 23;
          }

          v85 = v55;
          v28 = MEMORY[0x277D84F90];
          v29 = sub_225B2C374(MEMORY[0x277D84F90]);
          v56 = v22;
          v82 = 0x8000000225D19B20;
          v83 = 0xD00000000000002CLL;
        }

        v81 = v22;
      }

      v57 = v84 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v29;
      sub_225B2C4A0(v86, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v93);

      v59 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_225B29AA0(0, *(v28 + 2) + 1, 1, v28);
      }

      v61 = *(v28 + 2);
      v60 = *(v28 + 3);
      if (v61 >= v60 >> 1)
      {
        v28 = sub_225B29AA0((v60 > 1), v61 + 1, 1, v28);
      }

      *(v28 + 2) = v61 + 1;
      v62 = &v28[56 * v61];
      v63 = v90;
      *(v62 + 4) = 0xD00000000000002CLL;
      *(v62 + 5) = v63;
      *(v62 + 6) = 0xD00000000000001CLL;
      *(v62 + 7) = v57;
      *(v62 + 8) = 0x742865646F636E65;
      *(v62 + 9) = 0xEB00000000293A6FLL;
      *(v62 + 10) = 276;
      *v25 = v85;
      v64 = v82;
      v65 = v83;
      *(v25 + 8) = v28;
      *(v25 + 16) = v65;
      *(v25 + 24) = v64;
      *(v25 + 32) = v59;
      *(v25 + 40) = v81;
      swift_willThrow();
      (*(v88 + 8))(v87, v89);
    }

    else
    {

      v89 = "r decrypting encoded data: ";
      v30 = v16;
      v31 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v90 = swift_allocError();
      v33 = v32;
      swift_getErrorValue();
      v34 = v99;
      v35 = v16;
      sub_225B21FAC(v34, &v93);

      v36 = v94;
      if (v94)
      {
        v87 = v95;
        v88 = v93;
        v37 = v97;
        v85 = v98;
        v86 = v96;
      }

      else
      {
        v93 = v16;
        v44 = v16;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v45 = v100;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v46 = swift_initStackObject();
          *(v46 + 16) = xmmword_225CD30F0;
          *(v46 + 32) = 20;
          v47 = [v45 code];
          v48 = MEMORY[0x277D83BF8];
          *(v46 + 64) = MEMORY[0x277D83B88];
          *(v46 + 72) = v48;
          *(v46 + 40) = v47;
          v37 = sub_225B2C374(v46);
          swift_setDeallocating();
          sub_2259CB640(v46 + 32, &qword_27D73B060, &unk_225CD3AE0);

          v49 = v16;
          v86 = 0;
          v87 = 0;
          v36 = MEMORY[0x277D84F90];
          v88 = 1158;
        }

        else
        {
          v93 = v16;
          v66 = v16;
          v67 = sub_225CCE954();
          v68 = v84;
          v69 = swift_dynamicCast();
          v70 = *(v67 - 8);
          (*(v70 + 56))(v68, v69 ^ 1u, 1, v67);
          LODWORD(v67) = (*(v70 + 48))(v68, 1, v67);
          sub_2259CB640(v68, &unk_27D73B050, &unk_225CD3AD0);
          if (v67)
          {
            v71 = 1158;
          }

          else
          {
            v71 = 23;
          }

          v88 = v71;
          v36 = MEMORY[0x277D84F90];
          v37 = sub_225B2C374(MEMORY[0x277D84F90]);
          v72 = v16;
          v86 = 0x8000000225D19AE0;
          v87 = 0xD000000000000034;
        }

        v85 = v16;
      }

      v73 = v89 | 0x8000000000000000;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v37;
      sub_225B2C4A0(v31, sub_225B2AC40, 0, v74, &v93);

      v75 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_225B29AA0(0, *(v36 + 2) + 1, 1, v36);
      }

      v77 = *(v36 + 2);
      v76 = *(v36 + 3);
      if (v77 >= v76 >> 1)
      {
        v36 = sub_225B29AA0((v76 > 1), v77 + 1, 1, v36);
      }

      *(v36 + 2) = v77 + 1;
      v78 = &v36[56 * v77];
      *(v78 + 4) = 0xD000000000000034;
      *(v78 + 5) = 0x8000000225D19AE0;
      *(v78 + 6) = 0xD00000000000001CLL;
      *(v78 + 7) = v73;
      *(v78 + 8) = 0x742865646F636E65;
      *(v78 + 9) = 0xEB00000000293A6FLL;
      *(v78 + 10) = 279;
      v79 = v87;
      *v33 = v88;
      *(v33 + 8) = v36;
      *(v33 + 16) = v79;
      v80 = v85;
      *(v33 + 24) = v86;
      *(v33 + 32) = v75;
      *(v33 + 40) = v80;
      swift_willThrow();
    }
  }

  else
  {
    (*(v12 + 8))(v14, v11);
  }
}

uint64_t HPKEEncryptedMessageAlgorithm.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v89 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v86 - v7;
  v95 = sub_225CCF2D4();
  v93 = *(v95 - 8);
  v8 = MEMORY[0x28223BE20](v95);
  v92 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v86 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4C8, &qword_225CD9908);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v86 - v14;
  v16 = a1[3];
  v94 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_225A5E724();
  sub_225CCFCA4();
  if (v2)
  {
    v105 = v2;
    v18 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v19 = v95;
    if (swift_dynamicCast())
    {

      v21 = v92;
      v20 = v93;
      (*(v93 + 32))(v92, v11, v19);
      v89 = 0x8000000225D19B90;
      v22 = swift_allocError();
      (*(v20 + 16))(v23, v21, v19);
      v88 = "r decrypting encoded data: ";
      v24 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v91 = swift_allocError();
      v26 = v25;
      swift_getErrorValue();
      v27 = v97;
      v28 = v22;
      sub_225B21FAC(v27, &v98);

      v29 = v99;
      if (v99)
      {
        v90 = v98;
        v86 = v101;
        v87 = v100;
        v30 = v102;
        v31 = v103;
      }

      else
      {
        v98 = v22;
        v41 = v22;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v42 = v96;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v44 = [v42 code];
          v45 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v45;
          *(inited + 40) = v44;
          v30 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v46 = v22;
          v86 = 0;
          v87 = 0;
          v29 = MEMORY[0x277D84F90];
          v90 = 118;
          v31 = v22;
        }

        else
        {
          v98 = v22;
          v53 = v22;
          v54 = sub_225CCE954();
          v55 = v90;
          v56 = swift_dynamicCast();
          v57 = *(v54 - 8);
          (*(v57 + 56))(v55, v56 ^ 1u, 1, v54);
          LODWORD(v54) = (*(v57 + 48))(v55, 1, v54);
          sub_2259CB640(v55, &unk_27D73B050, &unk_225CD3AD0);
          if (v54)
          {
            v58 = 118;
          }

          else
          {
            v58 = 23;
          }

          v90 = v58;
          v29 = MEMORY[0x277D84F90];
          v30 = sub_225B2C374(MEMORY[0x277D84F90]);
          v59 = v22;
          v31 = v22;
          v86 = v89;
          v87 = 0xD00000000000002CLL;
        }
      }

      v60 = v88 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v30;
      sub_225B2C4A0(v24, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v98);

      v62 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_225B29AA0(0, *(v29 + 2) + 1, 1, v29);
      }

      v64 = *(v29 + 2);
      v63 = *(v29 + 3);
      if (v64 >= v63 >> 1)
      {
        v29 = sub_225B29AA0((v63 > 1), v64 + 1, 1, v29);
      }

      *(v29 + 2) = v64 + 1;
      v65 = &v29[56 * v64];
      v66 = v89;
      *(v65 + 4) = 0xD00000000000002CLL;
      *(v65 + 5) = v66;
      *(v65 + 6) = 0xD00000000000001CLL;
      *(v65 + 7) = v60;
      *(v65 + 8) = 0x6F72662874696E69;
      *(v65 + 9) = 0xEB00000000293A6DLL;
      *(v65 + 10) = 291;
      *v26 = v90;
      v67 = v86;
      v68 = v87;
      *(v26 + 8) = v29;
      *(v26 + 16) = v68;
      *(v26 + 24) = v67;
      *(v26 + 32) = v62;
      *(v26 + 40) = v31;
      swift_willThrow();
      (*(v93 + 8))(v92, v95);
      v69 = v105;
    }

    else
    {
      v93 = 0;

      v92 = "r decrypting encoded data: ";
      v32 = v2;
      v33 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v91 = swift_allocError();
      v35 = v34;
      swift_getErrorValue();
      v36 = v104;
      v37 = v2;
      sub_225B21FAC(v36, &v98);

      v38 = v99;
      v95 = 0x8000000225D19B50;
      if (v99)
      {
        v89 = v100;
        v90 = v98;
        v88 = v101;
        v39 = v102;
        v40 = v103;
      }

      else
      {
        v98 = v2;
        v47 = v2;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v48 = v105;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v49 = swift_initStackObject();
          *(v49 + 16) = xmmword_225CD30F0;
          *(v49 + 32) = 20;
          v50 = [v48 code];
          v51 = MEMORY[0x277D83BF8];
          *(v49 + 64) = MEMORY[0x277D83B88];
          *(v49 + 72) = v51;
          *(v49 + 40) = v50;
          v39 = sub_225B2C374(v49);
          swift_setDeallocating();
          sub_2259CB640(v49 + 32, &qword_27D73B060, &unk_225CD3AE0);

          v52 = v2;
          v88 = 0;
          v89 = 0;
          v38 = MEMORY[0x277D84F90];
          v90 = 1159;
        }

        else
        {
          v98 = v2;
          v70 = v2;
          v71 = sub_225CCE954();
          v72 = v89;
          v73 = swift_dynamicCast();
          v74 = *(v71 - 8);
          (*(v74 + 56))(v72, v73 ^ 1u, 1, v71);
          LODWORD(v71) = (*(v74 + 48))(v72, 1, v71);
          sub_2259CB640(v72, &unk_27D73B050, &unk_225CD3AD0);
          if (v71)
          {
            v75 = 1159;
          }

          else
          {
            v75 = 23;
          }

          v90 = v75;
          v38 = MEMORY[0x277D84F90];
          v39 = sub_225B2C374(MEMORY[0x277D84F90]);
          v76 = v2;
          v88 = 0x8000000225D19B50;
          v89 = 0xD000000000000034;
        }

        v40 = v2;
      }

      v77 = v92 | 0x8000000000000000;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v39;
      sub_225B2C4A0(v33, sub_225B2AC40, 0, v78, &v98);

      v79 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_225B29AA0(0, *(v38 + 2) + 1, 1, v38);
      }

      v81 = *(v38 + 2);
      v80 = *(v38 + 3);
      if (v81 >= v80 >> 1)
      {
        v38 = sub_225B29AA0((v80 > 1), v81 + 1, 1, v38);
      }

      *(v38 + 2) = v81 + 1;
      v82 = &v38[56 * v81];
      v83 = v95;
      *(v82 + 4) = 0xD000000000000034;
      *(v82 + 5) = v83;
      *(v82 + 6) = 0xD00000000000001CLL;
      *(v82 + 7) = v77;
      *(v82 + 8) = 0x6F72662874696E69;
      *(v82 + 9) = 0xEB00000000293A6DLL;
      *(v82 + 10) = 294;
      v84 = v89;
      *v35 = v90;
      *(v35 + 8) = v38;
      *(v35 + 16) = v84;
      *(v35 + 24) = v88;
      *(v35 + 32) = v79;
      *(v35 + 40) = v40;
      swift_willThrow();
      v69 = v2;
    }
  }

  else
  {
    v17 = v91;
    sub_225A5E778();
    sub_225CCF6E4();
    (*(v13 + 8))(v15, v12);
    *v17 = v98;
  }

  return __swift_destroy_boxed_opaque_existential_0(v94);
}

uint64_t HPKEEnvelope.params.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = v2;
  v4 = *(v1 + 88);
  v12 = *(v1 + 72);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 24);
  v9[0] = *(v1 + 8);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_225A0E2F8(v9, &v8);
}

uint64_t HPKEEnvelope.data.getter()
{
  v1 = *(v0 + 104);
  sub_2259CB710(v1, *(v0 + 112));
  return v1;
}

uint64_t HPKEEnvelope.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*(v2 + 104), *(v2 + 112));
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

unint64_t sub_225A528C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225A52914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A52988(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225A529F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A52A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A52B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A52910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A52B48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A52B9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void HPKEEnvelope.encode(to:)(void *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  *(&v129 + 1) = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v130 = &v122 - v7;
  v159 = sub_225CCF324();
  v134 = *(v159 - 8);
  v8 = MEMORY[0x28223BE20](v159);
  v133 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v132 = &v122 - v10;
  v11 = sub_225CCD954();
  v128 = *(v11 - 8);
  *&v129 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v131 = a2;
  v15 = *(a2 + 4);
  v135 = v13;
  v126 = v15;
  v127 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HPKEEnvelope.CodingKeys(255, v13, v14, v15);
  swift_getWitnessTable();
  v16 = sub_225CCF7F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v122 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v16;
  v21 = v137;
  sub_225CCFCE4();
  v158[0] = *v21;
  v157 = 0;
  sub_225A5E13C();
  v22 = v136;
  sub_225CCF7E4();
  if (v22)
  {
    (*(v17 + 8))(v19, v16);
    v136 = 0;
    v29 = v132;
    *&v143 = v22;
    v30 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v31 = v159;
    if (swift_dynamicCast())
    {

      v33 = v133;
      v32 = v134;
      (*(v134 + 32))(v133, v29, v31);
      *&v149 = 0;
      *(&v149 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v149, "HPKEEnvelope<");
      HIWORD(v149) = -4864;
      *&v141[0] = v135;
      swift_getMetatypeMetadata();
      v34 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v34);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D199D0);
      v132 = *(&v149 + 1);
      v135 = v149;
      v35 = swift_allocError();
      (*(v32 + 16))(v36, v33, v31);
      v131 = "r decrypting encoded data: ";
      v37 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v137 = swift_allocError();
      v39 = v38;
      swift_getErrorValue();
      v40 = v155;
      v41 = v35;
      sub_225B21FAC(v40, &v149);

      v42 = *(&v149 + 1);
      if (*(&v149 + 1))
      {
        v129 = v150;
        v130 = v149;
        v44 = *(&v151 + 1);
        v43 = v151;
      }

      else
      {
        *&v149 = v35;
        v55 = v35;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v56 = *&v141[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v58 = [v56 code];
          v59 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v59;
          *(inited + 40) = v58;
          v43 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v60 = v35;
          v129 = 0uLL;
          v42 = MEMORY[0x277D84F90];
          v130 = 119;
          v44 = v35;
        }

        else
        {
          *&v149 = v35;
          v68 = v35;
          v69 = sub_225CCE954();
          v70 = v130;
          v71 = swift_dynamicCast();
          v72 = v37;
          v73 = *(v69 - 8);
          (*(v73 + 56))(v70, v71 ^ 1u, 1, v69);
          LODWORD(v69) = (*(v73 + 48))(v70, 1, v69);
          sub_2259CB640(v70, &unk_27D73B050, &unk_225CD3AD0);
          if (v69)
          {
            v74 = 119;
          }

          else
          {
            v74 = 23;
          }

          v130 = v74;
          v75 = v132;

          v42 = MEMORY[0x277D84F90];
          v43 = sub_225B2C374(MEMORY[0x277D84F90]);
          v76 = v35;
          v44 = v35;
          *(&v129 + 1) = v75;
          v37 = v72;
          *&v129 = v135;
        }
      }

      v77 = v131 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v149 = v43;
      sub_225B2C4A0(v37, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v149);

      v79 = v149;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_225B29AA0(0, *(v42 + 2) + 1, 1, v42);
      }

      v81 = *(v42 + 2);
      v80 = *(v42 + 3);
      if (v81 >= v80 >> 1)
      {
        v42 = sub_225B29AA0((v80 > 1), v81 + 1, 1, v42);
      }

      *(v42 + 2) = v81 + 1;
      v82 = &v42[56 * v81];
      v83 = v132;
      *(v82 + 4) = v135;
      *(v82 + 5) = v83;
      *(v82 + 6) = 0xD00000000000001CLL;
      *(v82 + 7) = v77;
      *(v82 + 8) = 0x742865646F636E65;
      *(v82 + 9) = 0xEB00000000293A6FLL;
      *(v82 + 10) = 338;
      *v39 = v130;
      v84 = v129;
      *(v39 + 8) = v42;
      *(v39 + 16) = v84;
      *(v39 + 32) = v79;
      *(v39 + 40) = v44;
      swift_willThrow();
      (*(v134 + 8))(v133, v159);
      v85 = v143;
    }

    else
    {

      *&v149 = 0;
      *(&v149 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v149, "HPKEEnvelope<");
      HIWORD(v149) = -4864;
      *&v143 = v135;
      swift_getMetatypeMetadata();
      v45 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v45);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199B0);
      v159 = v149;
      v134 = "r decrypting encoded data: ";
      v135 = *(&v149 + 1);
      v46 = v22;
      v47 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v137 = swift_allocError();
      v49 = v48;
      swift_getErrorValue();
      v50 = v156;
      v51 = v22;
      sub_225B21FAC(v50, &v149);

      v52 = *(&v149 + 1);
      if (*(&v149 + 1))
      {
        v132 = v150;
        v133 = v149;
        v131 = *(&v150 + 1);
        v54 = *(&v151 + 1);
        v53 = v151;
      }

      else
      {
        *&v149 = v22;
        v61 = v22;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v62 = v143;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v63 = swift_initStackObject();
          *(v63 + 16) = xmmword_225CD30F0;
          *(v63 + 32) = 20;
          v64 = [v62 code];
          v65 = MEMORY[0x277D83BF8];
          *(v63 + 64) = MEMORY[0x277D83B88];
          *(v63 + 72) = v65;
          *(v63 + 40) = v64;
          v53 = sub_225B2C374(v63);
          swift_setDeallocating();
          sub_2259CB640(v63 + 32, &qword_27D73B060, &unk_225CD3AE0);

          v66 = v22;
          v131 = 0;
          v132 = 0;
          v52 = MEMORY[0x277D84F90];
          v133 = 1158;
        }

        else
        {
          *&v149 = v22;
          v86 = v22;
          v87 = sub_225CCE954();
          v88 = *(&v129 + 1);
          v89 = swift_dynamicCast();
          v90 = v47;
          v91 = *(v87 - 8);
          (*(v91 + 56))(v88, v89 ^ 1u, 1, v87);
          LODWORD(v87) = (*(v91 + 48))(v88, 1, v87);
          sub_2259CB640(v88, &unk_27D73B050, &unk_225CD3AD0);
          if (v87)
          {
            v92 = 1158;
          }

          else
          {
            v92 = 23;
          }

          v133 = v92;
          v93 = v135;

          v52 = MEMORY[0x277D84F90];
          v53 = sub_225B2C374(MEMORY[0x277D84F90]);
          v94 = v22;
          v131 = v93;
          v132 = v159;
          v47 = v90;
        }

        v54 = v22;
      }

      v95 = v134 | 0x8000000000000000;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      *&v149 = v53;
      sub_225B2C4A0(v47, sub_225B2AC40, 0, v96, &v149);

      v97 = v149;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_225B29AA0(0, *(v52 + 2) + 1, 1, v52);
      }

      v99 = *(v52 + 2);
      v98 = *(v52 + 3);
      if (v99 >= v98 >> 1)
      {
        v52 = sub_225B29AA0((v98 > 1), v99 + 1, 1, v52);
      }

      *(v52 + 2) = v99 + 1;
      v100 = &v52[56 * v99];
      v101 = v135;
      *(v100 + 4) = v159;
      *(v100 + 5) = v101;
      *(v100 + 6) = 0xD00000000000001CLL;
      *(v100 + 7) = v95;
      *(v100 + 8) = 0x742865646F636E65;
      *(v100 + 9) = 0xEB00000000293A6FLL;
      *(v100 + 10) = 341;
      v102 = v132;
      *v49 = v133;
      *(v49 + 8) = v52;
      *(v49 + 16) = v102;
      *(v49 + 24) = v131;
      *(v49 + 32) = v97;
      *(v49 + 40) = v54;
      swift_willThrow();
      v85 = v22;
    }
  }

  else
  {
    v23 = *(v21 + 56);
    v151 = *(v21 + 40);
    v152 = v23;
    v24 = *(v21 + 88);
    v153 = *(v21 + 72);
    v154 = v24;
    v25 = *(v21 + 24);
    v149 = *(v21 + 8);
    v150 = v25;
    v26 = *(v21 + 56);
    v145 = *(v21 + 40);
    v146 = v26;
    v27 = *(v21 + 88);
    v147 = *(v21 + 72);
    v148 = v27;
    v28 = *(v21 + 24);
    v143 = *(v21 + 8);
    v144 = v28;
    v142 = 1;
    sub_225A0E2F8(&v149, v141);
    sub_225A5E190();
    sub_225CCF7E4();
    v141[2] = v145;
    v141[3] = v146;
    v141[4] = v147;
    v141[5] = v148;
    v141[0] = v143;
    v141[1] = v144;
    sub_225A0E354(v141);
    v67 = *(v21 + 112);
    v139 = *(v21 + 104);
    v140 = v67;
    LOBYTE(v138) = 2;
    sub_2259CB710(v139, v67);
    sub_2259D9454();
    sub_225CCF7E4();
    sub_2259BEF00(v139, v140);
    v103 = v17;
    if (shouldIncludeUnencryptedData()())
    {
      v136 = v19;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v104 = off_28105B918;
      v105 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v106 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v106));
      v107 = &v104[v105];
      v108 = v127;
      (*(v128 + 16))(v127, v107, v129);
      v109 = &v104[v106];
      v110 = v108;
      os_unfair_lock_unlock(v109);
      v111 = sub_225CCD934();
      v112 = sub_225CCED04();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v123 = v113;
        v114 = swift_slowAlloc();
        v125 = v114;
        *v113 = 136315138;
        v124 = v112;
        v138 = v135;
        v139 = v114;
        swift_getMetatypeMetadata();
        v115 = sub_225CCE504();
        v117 = v20;
        v118 = sub_2259BE198(v115, v116, &v139);

        v119 = v123;
        *(v123 + 1) = v118;
        v20 = v117;
        v103 = v17;
        _os_log_impl(&dword_2259A7000, v111, v124, "including unencrypted data for HPKEEnvelope<%s>", v119, 0xCu);
        v120 = v125;
        __swift_destroy_boxed_opaque_existential_0(v125);
        MEMORY[0x22AA6F950](v120, -1, -1);
        MEMORY[0x22AA6F950](v119, -1, -1);

        (*(v128 + 8))(v127, v129);
      }

      else
      {

        (*(v128 + 8))(v110, v129);
      }

      LOBYTE(v139) = 3;
      v121 = v136;
      sub_225CCF774();
      (*(v103 + 8))(v121, v20);
    }

    else
    {
      (*(v17 + 8))(v19, v20);
    }
  }
}

Swift::Bool __swiftcall shouldIncludeUnencryptedData()()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v5 = sub_225CCE444();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v1 + 16))(v3, &v7[v8], v0);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = v6;
    _os_log_impl(&dword_2259A7000, v10, v11, "shouldIncludeUnencryptedData: %{BOOL,public}d", v12, 8u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t HPKEEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v104 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  *(&v104 + 1) = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v105 = &v103 - v12;
  v132 = sub_225CCF2D4();
  v113 = *(v132 - 8);
  v13 = MEMORY[0x28223BE20](v132);
  v112 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v111 = &v103 - v15;
  v16 = sub_225CCEFC4();
  v116 = *(v16 - 8);
  v117 = v16;
  MEMORY[0x28223BE20](v16);
  v108 = &v103 - v17;
  type metadata accessor for HPKEEnvelope.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v109 = sub_225CCF714();
  v106 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v19 = &v103 - v18;
  v107 = a3;
  v20 = type metadata accessor for HPKEEnvelope(0, a2, a3, a4);
  v103 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v103 - v22;
  *v23 = 0;
  v24 = *(v21 + 52);
  v25 = *(*(a2 - 8) + 56);
  v119 = a2;
  v120 = v23;
  v115 = v24;
  v25(&v23[v24], 1, 1, a2);
  v26 = a1[3];
  v118 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v110 = v19;
  v27 = v114;
  sub_225CCFCA4();
  if (v27)
  {
    LODWORD(v110) = 0;
    LODWORD(v114) = 0;
    v109 = 0;
    *&v122 = v27;
    v29 = v27;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v31 = v111;
    v32 = v132;
    if (swift_dynamicCast())
    {
      *(&v104 + 1) = v30;

      v34 = v112;
      v33 = v113;
      (*(v113 + 32))(v112, v31, v32);
      *&v125 = 0;
      *(&v125 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v125, "HPKEEnvelope<");
      HIWORD(v125) = -4864;
      v124 = v119;
      swift_getMetatypeMetadata();
      v35 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v35);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D19A10);
      v108 = *(&v125 + 1);
      v111 = v125;
      v36 = swift_allocError();
      (*(v33 + 16))(v37, v34, v32);
      v106 = "r decrypting encoded data: ";
      v107 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v119 = swift_allocError();
      v39 = v38;
      swift_getErrorValue();
      v40 = v123;
      v41 = v36;
      sub_225B21FAC(v40, &v125);

      v42 = *(&v125 + 1);
      if (*(&v125 + 1))
      {
        v104 = v126;
        v105 = v125;
        v44 = *(&v127 + 1);
        v43 = v127;
      }

      else
      {
        *&v125 = v36;
        v54 = v36;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v55 = v124;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v57 = [v55 code];
          v58 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v58;
          *(inited + 40) = v57;
          v43 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v59 = v36;
          v104 = 0uLL;
          v42 = MEMORY[0x277D84F90];
          v105 = 118;
          v44 = v36;
        }

        else
        {
          *&v125 = v36;
          v67 = v36;
          v68 = sub_225CCE954();
          v69 = v105;
          v70 = swift_dynamicCast();
          v71 = *(v68 - 8);
          (*(v71 + 56))(v69, v70 ^ 1u, 1, v68);
          LODWORD(v68) = (*(v71 + 48))(v69, 1, v68);
          sub_2259CB640(v69, &unk_27D73B050, &unk_225CD3AD0);
          if (v68)
          {
            v72 = 118;
          }

          else
          {
            v72 = 23;
          }

          v105 = v72;
          v73 = v108;

          v42 = MEMORY[0x277D84F90];
          v43 = sub_225B2C374(MEMORY[0x277D84F90]);
          v74 = v36;
          v44 = v36;
          *&v104 = v111;
          *(&v104 + 1) = v73;
        }
      }

      v75 = v106 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v125 = v43;
      sub_225B2C4A0(v107, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v125);

      v77 = v125;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_225B29AA0(0, *(v42 + 2) + 1, 1, v42);
      }

      v79 = *(v42 + 2);
      v78 = *(v42 + 3);
      if (v79 >= v78 >> 1)
      {
        v42 = sub_225B29AA0((v78 > 1), v79 + 1, 1, v42);
      }

      *(v42 + 2) = v79 + 1;
      v80 = &v42[56 * v79];
      v81 = v108;
      *(v80 + 4) = v111;
      *(v80 + 5) = v81;
      *(v80 + 6) = 0xD00000000000001CLL;
      *(v80 + 7) = v75;
      *(v80 + 8) = 0x6F72662874696E69;
      *(v80 + 9) = 0xEB00000000293A6DLL;
      *(v80 + 10) = 354;
      *v39 = v105;
      v82 = v104;
      *(v39 + 8) = v42;
      *(v39 + 16) = v82;
      *(v39 + 32) = v77;
      *(v39 + 40) = v44;
      swift_willThrow();
      (*(v113 + 8))(v112, v132);
      v83 = v122;
    }

    else
    {

      *&v125 = 0;
      *(&v125 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v125, "HPKEEnvelope<");
      HIWORD(v125) = -4864;
      *&v122 = v119;
      swift_getMetatypeMetadata();
      v45 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v45);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199F0);
      v113 = *(&v125 + 1);
      v132 = v125;
      v111 = "r decrypting encoded data: ";
      v46 = v27;
      v112 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v119 = swift_allocError();
      v48 = v47;
      swift_getErrorValue();
      v49 = v131;
      v50 = v27;
      sub_225B21FAC(v49, &v125);

      v51 = *(&v125 + 1);
      if (*(&v125 + 1))
      {
        v107 = v126;
        v108 = v125;
        v106 = *(&v126 + 1);
        v53 = *(&v127 + 1);
        v52 = v127;
      }

      else
      {
        *&v125 = v27;
        v60 = v27;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v61 = v122;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v62 = swift_initStackObject();
          *(v62 + 16) = xmmword_225CD30F0;
          *(v62 + 32) = 20;
          v63 = [v61 code];
          v64 = MEMORY[0x277D83BF8];
          *(v62 + 64) = MEMORY[0x277D83B88];
          *(v62 + 72) = v64;
          *(v62 + 40) = v63;
          v52 = sub_225B2C374(v62);
          swift_setDeallocating();
          sub_2259CB640(v62 + 32, &qword_27D73B060, &unk_225CD3AE0);

          v65 = v27;
          v106 = 0;
          v107 = 0;
          v51 = MEMORY[0x277D84F90];
          v108 = 1159;
        }

        else
        {
          *&v125 = v27;
          v84 = v27;
          v85 = sub_225CCE954();
          v86 = *(&v104 + 1);
          v87 = swift_dynamicCast();
          v88 = *(v85 - 8);
          (*(v88 + 56))(v86, v87 ^ 1u, 1, v85);
          LODWORD(v85) = (*(v88 + 48))(v86, 1, v85);
          sub_2259CB640(v86, &unk_27D73B050, &unk_225CD3AD0);
          if (v85)
          {
            v89 = 1159;
          }

          else
          {
            v89 = 23;
          }

          v108 = v89;
          v90 = v113;

          v51 = MEMORY[0x277D84F90];
          v52 = sub_225B2C374(MEMORY[0x277D84F90]);
          v91 = v27;
          v106 = v90;
          v107 = v132;
        }

        v53 = v27;
      }

      v92 = v111 | 0x8000000000000000;
      v93 = swift_isUniquelyReferenced_nonNull_native();
      *&v125 = v52;
      sub_225B2C4A0(v112, sub_225B2AC40, 0, v93, &v125);

      v94 = v125;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_225B29AA0(0, *(v51 + 2) + 1, 1, v51);
      }

      v96 = *(v51 + 2);
      v95 = *(v51 + 3);
      if (v96 >= v95 >> 1)
      {
        v51 = sub_225B29AA0((v95 > 1), v96 + 1, 1, v51);
      }

      *(v51 + 2) = v96 + 1;
      v97 = &v51[56 * v96];
      v98 = v113;
      *(v97 + 4) = v132;
      *(v97 + 5) = v98;
      *(v97 + 6) = 0xD00000000000001CLL;
      *(v97 + 7) = v92;
      *(v97 + 8) = 0x6F72662874696E69;
      *(v97 + 9) = 0xEB00000000293A6DLL;
      *(v97 + 10) = 357;
      v99 = v107;
      *v48 = v108;
      *(v48 + 8) = v51;
      *(v48 + 16) = v99;
      *(v48 + 24) = v106;
      *(v48 + 32) = v94;
      *(v48 + 40) = v53;
      swift_willThrow();
      v83 = v27;
    }

    __swift_destroy_boxed_opaque_existential_0(v118);
    v100 = v120;
    if (v110)
    {
      v127 = *(v120 + 40);
      v128 = *(v120 + 56);
      v129 = *(v120 + 72);
      v130 = *(v120 + 88);
      v125 = *(v120 + 8);
      v126 = *(v120 + 24);
      sub_225A0E354(&v125);
    }

    if (v114)
    {
      sub_2259BEF00(*(v100 + 13), *(v100 + 14));
    }

    return (*(v116 + 8))(&v100[v115], v117);
  }

  else
  {
    v28 = v106;
    LOBYTE(v122) = 0;
    sub_225A5E778();
    sub_225CCF674();
    v66 = v120;
    *v120 = v125 & 1;
    LOBYTE(v124) = 1;
    sub_225A5E260();
    sub_225CCF6E4();
    *(v66 + 40) = v127;
    *(v66 + 56) = v128;
    *(v66 + 72) = v129;
    *(v66 + 88) = v130;
    *(v66 + 8) = v125;
    *(v66 + 24) = v126;
    v121 = 2;
    sub_2259D94A8();
    sub_225CCF6E4();
    *(v66 + 104) = v122;
    LOBYTE(v122) = 3;
    sub_225CCF674();
    (*(v28 + 8))(v110, v109);
    (*(v116 + 40))(&v66[v115], v108, v117);
    v101 = v103;
    (*(v103 + 16))(v104, v66, v20);
    __swift_destroy_boxed_opaque_existential_0(v118);
    return (*(v101 + 8))(v66, v20);
  }
}

uint64_t HPKEShallowEnvelope.params.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = v2;
  v4 = *(v1 + 88);
  v12 = *(v1 + 72);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 24);
  v9[0] = *(v1 + 8);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_225A0E2F8(v9, &v8);
}

uint64_t HPKEShallowEnvelope.data.getter()
{
  v1 = *(v0 + 104);
  sub_2259CB710(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_225A54F90()
{
  v1 = 0x736D61726170;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x687469726F676C61;
  }
}

uint64_t sub_225A54FE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225A5EC84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225A5500C(uint64_t a1)
{
  v2 = sub_225A5E7E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A55048(uint64_t a1)
{
  v2 = sub_225A5E7E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPKEShallowEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4D8, &qword_225CD9910);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v8 = *(v1 + 56);
  v36 = *(v1 + 40);
  v37 = v8;
  v9 = *(v1 + 88);
  v38 = *(v1 + 72);
  v39 = v9;
  v10 = *(v1 + 24);
  v34 = *(v1 + 8);
  v35 = v10;
  v11 = *(v1 + 13);
  v21 = *(v1 + 14);
  v22 = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_225A5E7E4();
  sub_225CCFCE4();
  LOBYTE(v28) = v7;
  LOBYTE(v26[0]) = 0;
  sub_225A5E13C();
  v16 = v40;
  sub_225CCF7E4();
  if (!v16)
  {
    v17 = v21;
    v18 = v22;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v28 = v34;
    v29 = v35;
    v27 = 1;
    sub_225A0E2F8(&v34, v26);
    sub_225A5E190();
    sub_225CCF7E4();
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[5] = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_225A0E354(v26);
    v24 = v18;
    v25 = v17;
    v23 = 2;
    sub_2259CB710(v18, v17);
    sub_2259D9454();
    sub_225CCF7E4();
    sub_2259BEF00(v24, v25);
  }

  return (*(v4 + 8))(v6, v15);
}

uint64_t HPKEShallowEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4E8, &qword_225CD9918);
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A5E7E4();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  LOBYTE(v19[0]) = 0;
  sub_225A5E778();
  v9 = v41;
  sub_225CCF6E4();
  v10 = v21;
  v33 = 1;
  sub_225A5E260();
  sub_225CCF6E4();
  HIDWORD(v18) = v10;
  *&v40[39] = v36;
  *&v40[55] = v37;
  *&v40[71] = v38;
  *&v40[87] = v39;
  *&v40[7] = v34;
  *&v40[23] = v35;
  v30 = 2;
  sub_2259D94A8();
  sub_225CCF6E4();
  (*(v8 + 8))(v7, v9);
  *(&v19[3] + 1) = *&v40[48];
  *(&v19[4] + 1) = *&v40[64];
  *(&v19[5] + 1) = *&v40[80];
  *(v19 + 1) = *v40;
  v11 = v31;
  v12 = v32;
  v13 = BYTE4(v18);
  LOBYTE(v19[0]) = BYTE4(v18);
  *(&v19[1] + 1) = *&v40[16];
  *(&v19[2] + 1) = *&v40[32];
  *&v19[6] = *&v40[95];
  *(&v19[6] + 1) = v31;
  v20 = v32;
  *(a2 + 112) = v32;
  v14 = v19[5];
  *(a2 + 64) = v19[4];
  *(a2 + 80) = v14;
  *(a2 + 96) = v19[6];
  v15 = v19[1];
  *a2 = v19[0];
  *(a2 + 16) = v15;
  v16 = v19[3];
  *(a2 + 32) = v19[2];
  *(a2 + 48) = v16;
  sub_225A5E838(v19, &v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v25 = *&v40[48];
  v26 = *&v40[64];
  *v27 = *&v40[80];
  v22 = *v40;
  v23 = *&v40[16];
  v21 = v13;
  v24 = *&v40[32];
  *&v27[15] = *&v40[95];
  v28 = v11;
  v29 = v12;
  return sub_225A5E870(&v21);
}

uint64_t HPKEEnvelopeEncryptedMessagePKRHash.keys.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 88);
  v14 = *(v1 + 72);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 120);
  v16 = *(v1 + 104);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 24);
  v11[0] = *(v1 + 8);
  v11[1] = v6;
  v8 = *(v1 + 56);
  v12 = *(v1 + 40);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_225A0DE54(v11, &v10, &qword_27D73B460, &qword_225CD98D8);
}

uint64_t HPKEEnvelopeEncryptedMessagePKRHash.params.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v10 = *(v1 + 168);
  v11 = v2;
  v4 = *(v1 + 216);
  v12 = *(v1 + 200);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 152);
  v9[0] = *(v1 + 136);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_225A0DE54(v9, &v8, &qword_27D73B420, &qword_225CD98C0);
}

uint64_t HPKEEnvelopeEncryptedMessagePKRHash.pkRHash.getter()
{
  if (*v0)
  {
    v1 = *(v0 + 88);
    v12 = *(v0 + 72);
    v13 = v1;
    v2 = *(v0 + 120);
    v14 = *(v0 + 104);
    v15 = v2;
    v3 = *(v0 + 24);
    v8 = *(v0 + 8);
    v9 = v3;
    v4 = *(v0 + 56);
    v10 = *(v0 + 40);
    v11 = v4;
    if (sub_225A5E8A0(&v8) != 1)
    {
      v5 = *(&v9 + 1);
      v6 = v10;
LABEL_7:
      sub_2259CB710(v5, v6);
      return v5;
    }
  }

  else if (*(v0 + 144) >> 60 != 15)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_225A55884()
{
  v1 = 1937335659;
  if (*v0 != 1)
  {
    v1 = 0x736D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x687469726F676C61;
  }
}

uint64_t sub_225A558D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225A5EDA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225A55900(uint64_t a1)
{
  v2 = sub_225A5E8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A5593C(uint64_t a1)
{
  v2 = sub_225A5E8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPKEEnvelopeEncryptedMessagePKRHash.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4F0, &qword_225CD9920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_225A5E8C4();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v61);
  }

  v26 = a2;
  v27 = v6;
  v28[0] = 0;
  sub_225A5E778();
  sub_225CCF6E4();
  v10 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B4A0, &qword_225CD98F8);
  v45 = 1;
  sub_2259D8B24(&qword_27D73B4B0, &qword_27D73B4A0, &qword_225CD98F8, &protocol conformance descriptor for HPKEEnvelope<A>);
  sub_225CCF674();
  HIDWORD(v25) = v10;
  *&v60[71] = v50;
  *&v60[87] = v51;
  *&v60[103] = v52;
  *&v60[119] = v53;
  *&v60[7] = v46;
  *&v60[23] = v47;
  *&v60[39] = v48;
  *&v60[55] = v49;
  v38 = 2;
  sub_225A5E260();
  sub_225CCF674();
  (*(v27 + 8))(v8, v5);
  v56 = v41;
  v57 = v42;
  v58 = v43;
  v59 = v44;
  v54 = v39;
  v55 = v40;
  *&v28[17] = *&v60[16];
  *&v28[33] = *&v60[32];
  *&v28[1] = *v60;
  *&v28[49] = *&v60[48];
  *&v28[65] = *&v60[64];
  *&v28[81] = *&v60[80];
  *&v28[97] = *&v60[96];
  *&v28[128] = *&v60[127];
  *&v28[113] = *&v60[112];
  *&v28[152] = v40;
  *&v28[136] = v39;
  v11 = BYTE4(v25);
  v28[0] = BYTE4(v25);
  *&v28[216] = v44;
  *&v28[200] = v43;
  *&v28[184] = v42;
  *&v28[168] = v41;
  v12 = *&v28[16];
  v13 = v26;
  *v26 = *v28;
  v13[1] = v12;
  v14 = *&v28[32];
  v15 = *&v28[48];
  v16 = *&v28[80];
  v13[4] = *&v28[64];
  v13[5] = v16;
  v13[2] = v14;
  v13[3] = v15;
  v17 = *&v28[96];
  v18 = *&v28[112];
  v19 = *&v28[144];
  v13[8] = *&v28[128];
  v13[9] = v19;
  v13[6] = v17;
  v13[7] = v18;
  v20 = *&v28[160];
  v21 = *&v28[176];
  v22 = *&v28[192];
  v23 = *&v28[208];
  *(v13 + 28) = *&v28[224];
  v13[12] = v22;
  v13[13] = v23;
  v13[10] = v20;
  v13[11] = v21;
  sub_225A5E918(v28, &v29);
  __swift_destroy_boxed_opaque_existential_0(v61);
  v35 = *&v60[80];
  v36 = *&v60[96];
  v37[0] = *&v60[112];
  v31 = *&v60[16];
  v32 = *&v60[32];
  v33 = *&v60[48];
  v34 = *&v60[64];
  v30 = *v60;
  *(&v37[3] + 7) = v56;
  *(&v37[4] + 7) = v57;
  *(&v37[5] + 7) = v58;
  *(&v37[6] + 7) = v59;
  *(&v37[1] + 7) = v54;
  v29 = v11;
  *(v37 + 15) = *&v60[127];
  *(&v37[2] + 7) = v55;
  return sub_225A5E950(&v29);
}

uint64_t HPKEParams.pkEm.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t HPKEParams.pkRHash.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t HPKEParams.pkISm.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB6FC(v1, *(v0 + 40));
  return v1;
}

uint64_t HPKEParams.pkISHash.getter()
{
  v1 = *(v0 + 48);
  sub_2259CB6FC(v1, *(v0 + 56));
  return v1;
}

uint64_t HPKEParams.pkSm.getter()
{
  v1 = *(v0 + 64);
  sub_2259CB6FC(v1, *(v0 + 72));
  return v1;
}

uint64_t HPKEParams.infoHash.getter()
{
  v1 = *(v0 + 80);
  sub_2259CB6FC(v1, *(v0 + 88));
  return v1;
}

uint64_t HPKEParams.description.getter()
{
  v1 = 0x3E6C696E3CLL;
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v19 = v0[11];
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D19BC0);
  sub_225CCF434();
  MEMORY[0x22AA6CE70](0x203A6D456B70202CLL, 0xE800000000000000);
  v5 = sub_225CCCF84();
  MEMORY[0x22AA6CE70](v5);

  MEMORY[0x22AA6CE70](0x736148526B70202CLL, 0xEB00000000203A68);
  v6 = sub_225CCCF84();
  MEMORY[0x22AA6CE70](v6);

  MEMORY[0x22AA6CE70](0x3A6D53496B70202CLL, 0xE900000000000020);
  if (v2 >> 60 == 15)
  {
    v7 = 0xE500000000000000;
    v8 = 0x3E6C696E3CLL;
  }

  else
  {
    v8 = sub_225CCCF84();
    v7 = v9;
  }

  MEMORY[0x22AA6CE70](v8, v7);

  MEMORY[0x22AA6CE70](0x614853496B70202CLL, 0xEC000000203A6873);
  if (v3 >> 60 == 15)
  {
    v10 = 0xE500000000000000;
    v11 = 0x3E6C696E3CLL;
  }

  else
  {
    v11 = sub_225CCCF84();
    v10 = v12;
  }

  MEMORY[0x22AA6CE70](v11, v10);

  MEMORY[0x22AA6CE70](0x203A4D536B70202CLL, 0xE800000000000000);
  if (v4 >> 60 == 15)
  {
    v13 = 0xE500000000000000;
    v14 = 0x3E6C696E3CLL;
  }

  else
  {
    v14 = sub_225CCCF84();
    v13 = v15;
  }

  MEMORY[0x22AA6CE70](v14, v13);

  MEMORY[0x22AA6CE70](0x61486F666E69202CLL, 0xEC000000203A6873);
  if (v19 >> 60 == 15)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v1 = sub_225CCCF84();
    v16 = v17;
  }

  MEMORY[0x22AA6CE70](v1, v16);

  return 0;
}

uint64_t sub_225A5626C()
{
  v1 = *v0;
  v2 = 1701080941;
  v3 = 1834183536;
  if (v1 != 5)
  {
    v3 = 0x687361486F666E69;
  }

  v4 = 0x6D53496B70;
  if (v1 != 3)
  {
    v4 = 0x6873614853496B70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1833266032;
  if (v1 != 1)
  {
    v5 = 0x68736148526B70;
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

uint64_t sub_225A56330@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225A5EEBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225A56358(uint64_t a1)
{
  v2 = sub_225A5E980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A56394(uint64_t a1)
{
  v2 = sub_225A5E980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPKEParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B500, &qword_225CD9928);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v28 = v1[5];
  v29 = v10;
  v12 = v1[6];
  v26 = v1[7];
  v27 = v11;
  v13 = v1[9];
  v23 = v1[8];
  v24 = v13;
  v25 = v12;
  v14 = v1[11];
  v30 = v1[10];
  v31 = v9;
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_225A5E980();
  sub_225CCFCE4();
  LOBYTE(v33) = 0;
  sub_225A5E9D4();
  v19 = v32;
  sub_225CCF7E4();
  if (v19)
  {
    return (*(v4 + 8))(v6, v18);
  }

  v32 = v14;
  v33 = v7;
  v20 = v30;
  v21 = v31;
  v34 = v8;
  v35 = 1;
  sub_2259CB710(v7, v8);
  sub_2259D9454();
  sub_225CCF7E4();
  sub_2259BEF00(v33, v34);
  v33 = v21;
  v34 = v29;
  v35 = 2;
  sub_2259CB710(v21, v29);
  sub_225CCF7E4();
  sub_2259BEF00(v33, v34);
  v33 = v27;
  v34 = v28;
  v35 = 3;
  sub_2259CB6FC(v27, v28);
  sub_225CCF774();
  sub_2259B97A8(v33, v34);
  v33 = v25;
  v34 = v26;
  v35 = 4;
  sub_2259CB6FC(v25, v26);
  sub_225CCF774();
  sub_2259B97A8(v33, v34);
  v33 = v23;
  v34 = v24;
  v35 = 5;
  sub_2259CB6FC(v23, v24);
  sub_225CCF774();
  sub_2259B97A8(v33, v34);
  v33 = v20;
  v34 = v32;
  v35 = 6;
  sub_2259CB6FC(v20, v32);
  sub_225CCF774();
  sub_2259B97A8(v33, v34);
  return (*(v4 + 8))(0, v18);
}

uint64_t HPKEParams.init(from:)@<X0>(void *a1@<X0>, unsigned __int128 *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B518, &qword_225CD9930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A5E980();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v39[0]) = 0;
  sub_225A5EA28();
  sub_225CCF6E4();
  LOBYTE(v34[0]) = 1;
  sub_2259D94A8();
  sub_225CCF6E4();
  v33 = v39[0];
  LOBYTE(v34[0]) = 2;
  sub_225CCF6E4();
  v31 = v39[0];
  LOBYTE(v34[0]) = 3;
  sub_225CCF674();
  v30 = v39[0];
  LOBYTE(v34[0]) = 4;
  sub_225CCF674();
  v32 = v39[0];
  LOBYTE(v34[0]) = 5;
  sub_225CCF674();
  v9 = *(&v39[0] + 1);
  v29 = *&v39[0];
  v45 = 6;
  sub_225CCF674();
  (*(v6 + 8))(v8, v5);
  v27 = *(&v44 + 1);
  v28 = v44;
  v12 = v33;
  v10 = v12 >> 64;
  v11 = v12;
  v34[0] = v33;
  v15 = v31;
  v14 = v15 >> 64;
  v13 = v15;
  v34[1] = v31;
  v16 = v9;
  v26 = v9;
  v19 = v30;
  v17 = v19 >> 64;
  v18 = v19;
  v35 = v30;
  v36 = v32;
  *&v37 = v29;
  *(&v37 + 1) = v16;
  v38 = v44;
  v20 = v31;
  *a2 = v33;
  a2[1] = v20;
  v21 = v35;
  v22 = v36;
  v23 = v38;
  a2[4] = v37;
  a2[5] = v23;
  a2[2] = v21;
  a2[3] = v22;
  sub_225A0E2F8(v34, v39);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v39[0] = __PAIR128__(v10, v11);
  v39[1] = __PAIR128__(v14, v13);
  v39[2] = __PAIR128__(v17, v18);
  v39[3] = v32;
  v40 = v29;
  v41 = v26;
  v42 = v28;
  v43 = v27;
  return sub_225A0E354(v39);
}

uint64_t AEADKey.secretKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AEADKey.nonce.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

CoreIDVShared::AEADKey __swiftcall AEADKey.init(secretKey:nonce:)(Swift::String secretKey, Swift::String nonce)
{
  *v2 = secretKey;
  v2[1] = nonce;
  result.nonce = nonce;
  result.secretKey = secretKey;
  return result;
}

uint64_t sub_225A56F08()
{
  if (*v0)
  {
    return 0x65636E6F6ELL;
  }

  else
  {
    return 0x654B746572636573;
  }
}

uint64_t sub_225A56F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654B746572636573 && a2 == 0xE900000000000079;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225A57024(uint64_t a1)
{
  v2 = sub_225A5EA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A57060(uint64_t a1)
{
  v2 = sub_225A5EA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AEADKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B528, &qword_225CD9938);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A5EA7C();
  sub_225CCFCE4();
  v12 = 0;
  v8 = v10[3];
  sub_225CCF784();
  if (!v8)
  {
    v11 = 1;
    sub_225CCF784();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AEADKey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B538, &qword_225CD9940);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A5EA7C();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_225CCF684();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_225CCF684();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t SealedMessage.keyID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SealedMessage.data.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t SealedMessage.unencryptedData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_225CCEFC4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_225A5753C(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225A5758C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A57600(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225A5766C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A576DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A57764@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*a1, a1[1], a2[2], a2[3], a2[4]);
  *a4 = result;
  return result;
}

uint64_t sub_225A577C0@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_225A5780C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A57588(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A57840@<X0>(_BYTE *a2@<X8>)
{
  result = sub_225A5F0FC();
  *a2 = result;
  return result;
}

uint64_t sub_225A57874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A578C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SealedMessage.init(keyID:data:unencryptedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v11 = *(type metadata accessor for SealedMessage(0, a6, a7, a8) + 48);
  v12 = sub_225CCEFC4();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a9[v11], a5, v12);
}

void SealedMessage.encode(to:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v124 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v125 = &v117 - v7;
  v134 = sub_225CCF324();
  v130 = *(v134 - 8);
  v8 = MEMORY[0x28223BE20](v134);
  v129 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v128 = &v117 - v10;
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  v126 = v11;
  v127 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = a2[2];
  v15 = a2[3];
  v123 = a2;
  v16 = a2[4];
  v133 = v14;
  v121 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v16;
  type metadata accessor for SealedMessage.CodingKeys(255, v14, v15, v16);
  swift_getWitnessTable();
  v17 = sub_225CCF7F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v117 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v131;
  v22 = v17;
  sub_225CCFCE4();
  LOBYTE(v137) = 0;
  v23 = v132;
  sub_225CCF784();
  if (v23)
  {
    v18[1](v20, v17);
    v132 = 0;
    v26 = v134;
    v27 = v128;
    v144 = v23;
    v28 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    if (swift_dynamicCast())
    {

      v30 = v129;
      v29 = v130;
      (*(v130 + 32))(v129, v27, v26);
      v137 = 0;
      v138 = 0xE000000000000000;
      sub_225CCF204();

      v137 = 0x654D64656C616553;
      v138 = 0xEF3C736567617373;
      v136 = v133;
      swift_getMetatypeMetadata();
      v31 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v31);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D199D0);
      v131 = v137;
      v128 = v138;
      v32 = swift_allocError();
      (*(v29 + 16))(v33, v30, v26);
      v34 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v133 = swift_allocError();
      v36 = v35;
      swift_getErrorValue();
      v37 = v135;
      v38 = v32;
      sub_225B21FAC(v37, &v137);

      v39 = v138;
      if (v138)
      {
        v125 = v139;
        v126 = v140;
        v127 = v137;
        v40 = v141;
        v41 = v142;
      }

      else
      {
        v137 = v32;
        v52 = v32;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v53 = v136;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v55 = [v53 code];
          v56 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v56;
          *(inited + 40) = v55;
          v40 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v57 = v32;
          v125 = 0;
          v126 = 0;
          v39 = MEMORY[0x277D84F90];
          v127 = 119;
          v41 = v32;
        }

        else
        {
          v137 = v32;
          v83 = v32;
          v84 = sub_225CCE954();
          v85 = v125;
          v86 = swift_dynamicCast();
          v87 = *(v84 - 8);
          (*(v87 + 56))(v85, v86 ^ 1u, 1, v84);
          LODWORD(v84) = (*(v87 + 48))(v85, 1, v84);
          sub_2259CB640(v85, &unk_27D73B050, &unk_225CD3AD0);
          if (v84)
          {
            v88 = 119;
          }

          else
          {
            v88 = 23;
          }

          v127 = v88;
          v89 = v128;

          v39 = MEMORY[0x277D84F90];
          v40 = sub_225B2C374(MEMORY[0x277D84F90]);
          v90 = v32;
          v41 = v32;
          v126 = v89;
          v125 = v131;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = v40;
      sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v137);

      v92 = v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_225B29AA0(0, *(v39 + 2) + 1, 1, v39);
      }

      v94 = *(v39 + 2);
      v93 = *(v39 + 3);
      if (v94 >= v93 >> 1)
      {
        v39 = sub_225B29AA0((v93 > 1), v94 + 1, 1, v39);
      }

      *(v39 + 2) = v94 + 1;
      v95 = &v39[56 * v94];
      v96 = v128;
      *(v95 + 4) = v131;
      *(v95 + 5) = v96;
      *(v95 + 6) = 0xD00000000000001CLL;
      *(v95 + 7) = 0x8000000225D17220;
      *(v95 + 8) = 0x742865646F636E65;
      *(v95 + 9) = 0xEB00000000293A6FLL;
      *(v95 + 10) = 481;
      *v36 = v127;
      v98 = v125;
      v97 = v126;
      *(v36 + 8) = v39;
      *(v36 + 16) = v98;
      *(v36 + 24) = v97;
      *(v36 + 32) = v92;
      *(v36 + 40) = v41;
      swift_willThrow();
      (*(v130 + 8))(v129, v134);
      v99 = v144;
    }

    else
    {

      v137 = 0;
      v138 = 0xE000000000000000;
      sub_225CCF204();

      v137 = 0x654D64656C616553;
      v138 = 0xEF3C736567617373;
      v144 = v133;
      swift_getMetatypeMetadata();
      v42 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v42);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199B0);
      v134 = v137;
      v131 = v138;
      v43 = v23;
      v44 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v133 = swift_allocError();
      v46 = v45;
      swift_getErrorValue();
      v47 = v143;
      v48 = v23;
      sub_225B21FAC(v47, &v137);

      v49 = v138;
      if (v138)
      {
        v129 = v139;
        v130 = v137;
        v128 = v140;
        v50 = v141;
        v51 = v142;
      }

      else
      {
        v137 = v23;
        v58 = v23;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v59 = v144;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v60 = swift_initStackObject();
          *(v60 + 16) = xmmword_225CD30F0;
          *(v60 + 32) = 20;
          v61 = [v59 code];
          v62 = MEMORY[0x277D83BF8];
          *(v60 + 64) = MEMORY[0x277D83B88];
          *(v60 + 72) = v62;
          *(v60 + 40) = v61;
          v50 = sub_225B2C374(v60);
          swift_setDeallocating();
          sub_2259CB640(v60 + 32, &qword_27D73B060, &unk_225CD3AE0);

          v63 = v23;
          v128 = 0;
          v129 = 0;
          v49 = MEMORY[0x277D84F90];
          v130 = 1158;
        }

        else
        {
          v137 = v23;
          v100 = v23;
          v101 = sub_225CCE954();
          v102 = v124;
          v103 = swift_dynamicCast();
          v104 = *(v101 - 8);
          (*(v104 + 56))(v102, v103 ^ 1u, 1, v101);
          LODWORD(v101) = (*(v104 + 48))(v102, 1, v101);
          sub_2259CB640(v102, &unk_27D73B050, &unk_225CD3AD0);
          if (v101)
          {
            v105 = 1158;
          }

          else
          {
            v105 = 23;
          }

          v130 = v105;
          v106 = v131;

          v49 = MEMORY[0x277D84F90];
          v50 = sub_225B2C374(MEMORY[0x277D84F90]);
          v107 = v23;
          v128 = v106;
          v129 = v134;
        }

        v51 = v23;
      }

      v108 = swift_isUniquelyReferenced_nonNull_native();
      v137 = v50;
      sub_225B2C4A0(v44, sub_225B2AC40, 0, v108, &v137);

      v109 = v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_225B29AA0(0, *(v49 + 2) + 1, 1, v49);
      }

      v111 = *(v49 + 2);
      v110 = *(v49 + 3);
      if (v111 >= v110 >> 1)
      {
        v49 = sub_225B29AA0((v110 > 1), v111 + 1, 1, v49);
      }

      *(v49 + 2) = v111 + 1;
      v112 = &v49[56 * v111];
      v113 = v131;
      *(v112 + 4) = v134;
      *(v112 + 5) = v113;
      *(v112 + 6) = 0xD00000000000001CLL;
      *(v112 + 7) = 0x8000000225D17220;
      *(v112 + 8) = 0x742865646F636E65;
      *(v112 + 9) = 0xEB00000000293A6FLL;
      *(v112 + 10) = 484;
      v114 = v129;
      *v46 = v130;
      *(v46 + 8) = v49;
      *(v46 + 16) = v114;
      *(v46 + 24) = v128;
      *(v46 + 32) = v109;
      *(v46 + 40) = v51;
      swift_willThrow();
      v99 = v23;
    }
  }

  else
  {
    v24 = v127;
    v132 = v18;
    v25 = *(v21 + 24);
    v137 = *(v21 + 16);
    v138 = v25;
    LOBYTE(v144) = 1;
    sub_2259CB710(v137, v25);
    sub_2259D9454();
    sub_225CCF7E4();
    sub_2259BEF00(v137, v138);
    v64 = shouldIncludeUnencryptedData()();
    v65 = v132;
    if (v64)
    {
      v119 = v20;
      v120 = v22;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v66 = off_28105B918;
      v67 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v68 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v68));
      v69 = v24;
      v70 = *(v24 + 16);
      v71 = &v66[v67];
      v72 = v121;
      v73 = v126;
      v70(v121, v71, v126);
      os_unfair_lock_unlock(&v66[v68]);
      v74 = sub_225CCD934();
      v75 = sub_225CCED04();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v117 = v76;
        v118 = swift_slowAlloc();
        v137 = v118;
        *v76 = 136315138;
        v144 = v133;
        swift_getMetatypeMetadata();
        v77 = sub_225CCE504();
        v79 = sub_2259BE198(v77, v78, &v137);

        v80 = v117;
        *(v117 + 1) = v79;
        v65 = v132;
        v81 = v80;
        _os_log_impl(&dword_2259A7000, v74, v75, "including unencrypted data for SealedMessage<%s>", v80, 0xCu);
        v82 = v118;
        __swift_destroy_boxed_opaque_existential_0(v118);
        MEMORY[0x22AA6F950](v82, -1, -1);
        MEMORY[0x22AA6F950](v81, -1, -1);

        (*(v69 + 8))(v72, v126);
      }

      else
      {

        (*(v69 + 8))(v72, v73);
      }

      LOBYTE(v137) = 2;
      v115 = v119;
      v116 = v120;
      sub_225CCF774();
      v65[1](v115, v116);
    }

    else
    {
      v132[1](v20, v22);
    }
  }
}

uint64_t SealedMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v112 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v113 = &v107 - v12;
  v125 = sub_225CCF2D4();
  v120 = *(v125 - 8);
  v13 = MEMORY[0x28223BE20](v125);
  v119 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = &v107 - v15;
  v16 = sub_225CCEFC4();
  v109 = *(v16 - 8);
  v110 = v16;
  MEMORY[0x28223BE20](v16);
  v115 = &v107 - v17;
  type metadata accessor for SealedMessage.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v117 = sub_225CCF714();
  v114 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v19 = &v107 - v18;
  v123 = a2;
  v116 = a3;
  v20 = type metadata accessor for SealedMessage(0, a2, a3, a4);
  v108 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v124 = (&v107 - v21);
  v22 = a1[3];
  v122 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = v19;
  v24 = v121;
  sub_225CCFCA4();
  if (v24)
  {
    LODWORD(v117) = 0;
    LODWORD(v121) = 0;
    v25 = v125;
    v134 = v24;
    v31 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v32 = v118;
    if (swift_dynamicCast())
    {
      v115 = 0;

      v34 = v119;
      v33 = v120;
      v120[4](v119, v32, v25);
      *&v128 = 0;
      *(&v128 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v128, "SealedMessage<");
      HIBYTE(v128) = -18;
      v127 = v123;
      swift_getMetatypeMetadata();
      v35 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v35);

      MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D19A10);
      v116 = *(&v128 + 1);
      v118 = v128;
      v36 = swift_allocError();
      v33[2](v37, v34, v25);
      v114 = "r decrypting encoded data: ";
      v38 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v123 = swift_allocError();
      v40 = v39;
      swift_getErrorValue();
      v41 = v126;
      v42 = v36;
      sub_225B21FAC(v41, &v128);

      v43 = *(&v128 + 1);
      if (*(&v128 + 1))
      {
        v111 = v129;
        v112 = v130;
        v113 = v128;
        v44 = v131;
        v45 = v132;
      }

      else
      {
        *&v128 = v36;
        v55 = v36;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v56 = v127;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v58 = [v56 code];
          v59 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v59;
          *(inited + 40) = v58;
          v44 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v60 = v36;
          v111 = 0;
          v112 = 0;
          v43 = MEMORY[0x277D84F90];
          v113 = 118;
          v45 = v36;
        }

        else
        {
          *&v128 = v36;
          v67 = v36;
          v68 = sub_225CCE954();
          v69 = v38;
          v70 = v113;
          v71 = swift_dynamicCast();
          v72 = *(v68 - 8);
          (*(v72 + 56))(v70, v71 ^ 1u, 1, v68);
          LODWORD(v68) = (*(v72 + 48))(v70, 1, v68);
          sub_2259CB640(v70, &unk_27D73B050, &unk_225CD3AD0);
          if (v68)
          {
            v73 = 118;
          }

          else
          {
            v73 = 23;
          }

          v113 = v73;
          v74 = v116;

          v43 = MEMORY[0x277D84F90];
          v44 = sub_225B2C374(MEMORY[0x277D84F90]);
          v75 = v36;
          v45 = v36;
          v112 = v74;
          v38 = v69;
          v111 = v118;
        }
      }

      v76 = v114 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v128 = v44;
      sub_225B2C4A0(v38, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v128);

      v78 = v128;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_225B29AA0(0, *(v43 + 2) + 1, 1, v43);
      }

      v80 = *(v43 + 2);
      v79 = *(v43 + 3);
      if (v80 >= v79 >> 1)
      {
        v43 = sub_225B29AA0((v79 > 1), v80 + 1, 1, v43);
      }

      *(v43 + 2) = v80 + 1;
      v81 = &v43[56 * v80];
      v82 = v116;
      *(v81 + 4) = v118;
      *(v81 + 5) = v82;
      *(v81 + 6) = 0xD00000000000001CLL;
      *(v81 + 7) = v76;
      *(v81 + 8) = 0x6F72662874696E69;
      *(v81 + 9) = 0xEB00000000293A6DLL;
      *(v81 + 10) = 496;
      *v40 = v113;
      v84 = v111;
      v83 = v112;
      *(v40 + 8) = v43;
      *(v40 + 16) = v84;
      *(v40 + 24) = v83;
      *(v40 + 32) = v78;
      *(v40 + 40) = v45;
      swift_willThrow();
      (v120[1])(v119, v125);
      v85 = v134;
    }

    else
    {

      *&v128 = 0;
      *(&v128 + 1) = 0xE000000000000000;
      sub_225CCF204();

      strcpy(&v128, "SealedMessage<");
      HIBYTE(v128) = -18;
      v134 = v123;
      swift_getMetatypeMetadata();
      v46 = sub_225CCE504();
      MEMORY[0x22AA6CE70](v46);

      MEMORY[0x22AA6CE70](0xD000000000000018, 0x8000000225D199F0);
      v125 = v128;
      v119 = "r decrypting encoded data: ";
      v120 = *(&v128 + 1);
      v47 = v24;
      v48 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v123 = swift_allocError();
      v50 = v49;
      swift_getErrorValue();
      v51 = v133;
      v52 = v24;
      sub_225B21FAC(v51, &v128);

      v53 = *(&v128 + 1);
      if (*(&v128 + 1))
      {
        v118 = v128;
        v115 = v130;
        v116 = v129;
        v54 = v131;
        v114 = v132;
      }

      else
      {
        *&v128 = v24;
        v61 = v24;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v62 = v134;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v63 = swift_initStackObject();
          *(v63 + 16) = xmmword_225CD30F0;
          *(v63 + 32) = 20;
          v64 = [v62 code];
          v65 = MEMORY[0x277D83BF8];
          *(v63 + 64) = MEMORY[0x277D83B88];
          *(v63 + 72) = v65;
          *(v63 + 40) = v64;
          v54 = sub_225B2C374(v63);
          swift_setDeallocating();
          sub_2259CB640(v63 + 32, &qword_27D73B060, &unk_225CD3AE0);

          v66 = v24;
          v115 = 0;
          v116 = 0;
          v53 = MEMORY[0x277D84F90];
          v118 = 1159;
        }

        else
        {
          *&v128 = v24;
          v86 = v24;
          v87 = sub_225CCE954();
          v88 = v112;
          v89 = swift_dynamicCast();
          v90 = *(v87 - 8);
          (*(v90 + 56))(v88, v89 ^ 1u, 1, v87);
          LODWORD(v87) = (*(v90 + 48))(v88, 1, v87);
          sub_2259CB640(v88, &unk_27D73B050, &unk_225CD3AD0);
          if (v87)
          {
            v91 = 1159;
          }

          else
          {
            v91 = 23;
          }

          v118 = v91;
          v92 = v120;

          v53 = MEMORY[0x277D84F90];
          v54 = sub_225B2C374(MEMORY[0x277D84F90]);
          v93 = v24;
          v115 = v92;
          v116 = v125;
        }

        v114 = v24;
      }

      v119 = (v119 | 0x8000000000000000);
      v94 = swift_isUniquelyReferenced_nonNull_native();
      *&v128 = v54;
      sub_225B2C4A0(v48, sub_225B2AC40, 0, v94, &v128);

      v95 = v128;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_225B29AA0(0, *(v53 + 2) + 1, 1, v53);
      }

      v97 = *(v53 + 2);
      v96 = *(v53 + 3);
      if (v97 >= v96 >> 1)
      {
        v53 = sub_225B29AA0((v96 > 1), v97 + 1, 1, v53);
      }

      *(v53 + 2) = v97 + 1;
      v98 = &v53[56 * v97];
      v99 = v119;
      v100 = v120;
      *(v98 + 4) = v125;
      *(v98 + 5) = v100;
      *(v98 + 6) = 0xD00000000000001CLL;
      *(v98 + 7) = v99;
      *(v98 + 8) = 0x6F72662874696E69;
      *(v98 + 9) = 0xEB00000000293A6DLL;
      *(v98 + 10) = 499;
      *v50 = v118;
      v101 = v115;
      v102 = v116;
      *(v50 + 8) = v53;
      *(v50 + 16) = v102;
      *(v50 + 24) = v101;
      *(v50 + 32) = v95;
      *(v50 + 40) = v114;
      swift_willThrow();
      v85 = v24;
    }

    result = __swift_destroy_boxed_opaque_existential_0(v122);
    v103 = v124;
    if (v117)
    {
    }

    if (v121)
    {
      return sub_2259BEF00(v103[2], v103[3]);
    }
  }

  else
  {
    v121 = v20;
    v27 = v114;
    v26 = v115;
    LOBYTE(v128) = 0;
    v28 = sub_225CCF684();
    v29 = v124;
    *v124 = v28;
    v29[1] = v30;
    LOBYTE(v134) = 1;
    sub_2259D94A8();
    sub_225CCF6E4();
    *(v29 + 1) = v128;
    LOBYTE(v128) = 2;
    sub_225CCF674();
    (*(v27 + 8))(v23, v117);
    v104 = v121;
    (*(v109 + 32))(v29 + v121[12], v26, v110);
    v105 = v108;
    (*(v108 + 16))(v111, v29, v104);
    __swift_destroy_boxed_opaque_existential_0(v122);
    return (*(v105 + 8))(v29, v104);
  }

  return result;
}

uint64_t HPKESuiteKwV1.sealMessageAEAD<A>(message:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v99 = a6;
  v91 = a5;
  v92 = a2;
  v90 = a1;
  v103 = *MEMORY[0x277D85DE8];
  v8 = sub_225CCEFC4();
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = &v80 - v11;
  v12 = sub_225CCDD34();
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCDCA4();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_225CCDC44();
  v94 = *(v16 - 8);
  v95 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_225CCD124();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v26;
  v27 = *(v26 + 16);
  v84 = v26 + 16;
  v83 = v27;
  v27(v25, a3, a4);
  if (swift_dynamicCast())
  {
    v80 = a3;
    v28 = v101;
    v82 = a4;
    v100 = *(&v102 + 1);
    v93 = v102;
  }

  else
  {
    sub_225CCC9E4();
    swift_allocObject();
    sub_225CCC9D4();
    v29 = v101;
    v93 = sub_225CCC9C4();
    v100 = v30;

    if (v29)
    {
      return result;
    }

    v80 = a3;
    v28 = 0;
    v82 = a4;
  }

  sub_225CCD114();
  v81 = sub_225CCD0C4();
  v33 = v32;
  (*(v20 + 8))(v23, v19);
  sub_225CCDC94();
  sub_225CCDC34();
  sub_225CCDC14();
  v34 = v28;
  (*(v94 + 8))(v18, v95);
  v36 = *(&v102 + 1);
  v35 = v102;
  sub_225CCDD24();
  sub_225CCDD04();
  v37 = v34;
  (*(v96 + 8))(v14, v97);
  v38 = v102;
  v39 = v98;
  v40 = *v98;
  v41 = v98[1];
  v42 = (v39 + *(type metadata accessor for HPKESuiteKwV1(0) + 28));
  v43 = *(v41 + 8);
  v79 = v41;
  v44 = v93;
  v45 = v100;
  v46 = v43(v35, v36, v38, *(&v38 + 1), *v42, v42[1], v93, v100, v40, v79);
  if (v37)
  {
    sub_2259BEF00(v38, *(&v38 + 1));
    sub_2259BEF00(v35, v36);

    return sub_2259BEF00(v44, v45);
  }

  v97 = v46;
  v98 = v33;
  v48 = v36 >> 62;
  v101 = 0;
  v96 = v47;
  v49 = v44;
  if ((v36 >> 62) > 1)
  {
    if (v48 != 2)
    {
      *(&v102 + 6) = 0;
      *&v102 = 0;
      v51 = &v102;
      v50 = &v102;
      goto LABEL_29;
    }

    v52 = *(v35 + 16);
    v53 = *(v35 + 24);
    v54 = sub_225CCCA44();
    if (v54)
    {
      v55 = sub_225CCCA74();
      if (__OFSUB__(v52, v55))
      {
        goto LABEL_35;
      }

      v54 += v52 - v55;
    }

    v56 = __OFSUB__(v53, v52);
    v57 = v53 - v52;
    if (!v56)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_17:
    v57 = (v35 >> 32) - v35;
    if (v35 >> 32 >= v35)
    {
      v54 = sub_225CCCA44();
      if (!v54)
      {
LABEL_21:
        v59 = sub_225CCCA64();
        if (v59 >= v57)
        {
          v60 = v57;
        }

        else
        {
          v60 = v59;
        }

        v61 = (v60 + v54);
        if (v54)
        {
          v50 = v61;
        }

        else
        {
          v50 = 0;
        }

        v51 = v54;
        goto LABEL_29;
      }

      v58 = sub_225CCCA74();
      if (!__OFSUB__(v35, v58))
      {
        v54 += v35 - v58;
        goto LABEL_21;
      }

LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v48)
  {
    goto LABEL_17;
  }

  *&v102 = v35;
  WORD4(v102) = v36;
  BYTE10(v102) = BYTE2(v36);
  BYTE11(v102) = BYTE3(v36);
  BYTE12(v102) = BYTE4(v36);
  BYTE13(v102) = BYTE5(v36);
  v50 = &v102 + BYTE6(v36);
  v51 = &v102;
LABEL_29:
  v62 = sub_2259D2BE8(v51, v50);
  v64 = v63;
  v65 = sub_225CCCF84();
  v67 = v66;
  sub_2259BEF00(v62, v64);
  v68 = sub_225CCCF84();
  v70 = v69;
  sub_2259BEF00(v38, *(&v38 + 1));
  sub_2259BEF00(v35, v36);
  v71 = shouldIncludeUnencryptedData()();
  sub_2259BEF00(v49, v100);
  if (v71)
  {
    v72 = v86;
    v73 = v82;
    v83(v86, v80, v82);
    v74 = 0;
    v75 = v99;
  }

  else
  {
    v74 = 1;
    v75 = v99;
    v73 = v82;
    v72 = v86;
  }

  v76 = v98;
  (*(v85 + 56))(v72, v74, 1, v73);
  v77 = v87;
  (*(v88 + 32))(v87, v72, v89);
  result = SealedMessage.init(keyID:data:unencryptedData:)(v81, v76, v97, v96, v77, v73, v91, v75, v90);
  v78 = v92;
  *v92 = v65;
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v70;
  return result;
}

uint64_t sub_225A5A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_225A6D08C(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_2259D8390(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_2259D840C(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t HPKESuiteKwV1.openMessageAEAD(cipherText:key:aad:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v8 = *a3;
  v9 = v5;
  v10 = v6;
  return sub_225A5A10C(a1, a2, &v8, a4, a5);
}

uint64_t sub_225A5A10C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v53 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_225CCCF04();
  if (v10 >> 60 == 15)
  {
    v52 = 0x8000000225D19F00;
    v53 = 0x8000000225D17220;
    v11 = MEMORY[0x277D84F90];
    v12 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v14 = v13;
    v15 = sub_225CCE954();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v8, 1, 1, v15);
    LODWORD(v15) = (*(v16 + 48))(v8, 1, v15);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v15)
    {
      v17 = 291;
    }

    else
    {
      v17 = 23;
    }

    v18 = sub_225B2C374(v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v18;
    sub_225B2C4A0(v12, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v54);

    v20 = v54;
    v21 = sub_225B29AA0(0, 1, 1, v11);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_225B29AA0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[56 * v23];
    *(v24 + 4) = 0xD000000000000021;
    *(v24 + 5) = 0x8000000225D19ED0;
    v25 = v53;
    *(v24 + 6) = 0xD00000000000001CLL;
    *(v24 + 7) = v25;
    v26 = v52;
    *(v24 + 8) = 0xD000000000000020;
    *(v24 + 9) = v26;
    *(v24 + 10) = 581;
    *v14 = v17;
    *(v14 + 8) = v21;
    *(v14 + 16) = 0xD000000000000021;
    *(v14 + 24) = 0x8000000225D19ED0;
    *(v14 + 32) = v20;
    *(v14 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    v51 = v9;
    v52 = v10;
    v27 = sub_225CCCF04();
    if (v28 >> 60 == 15)
    {
      v53 = 0x8000000225D17220;
      v50 = 0x8000000225D19F00;
      v29 = MEMORY[0x277D84F90];
      v30 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v32 = v31;
      v33 = sub_225CCE954();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v8, 1, 1, v33);
      LODWORD(v33) = (*(v34 + 48))(v8, 1, v33);
      sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
      if (v33)
      {
        v35 = 292;
      }

      else
      {
        v35 = 23;
      }

      v36 = sub_225B2C374(v29);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v36;
      sub_225B2C4A0(v30, sub_225B2AC40, 0, v37, &v54);

      v38 = v54;
      v39 = sub_225B29AA0(0, 1, 1, v29);
      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      v14 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v39 = sub_225B29AA0((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v14;
      v42 = &v39[56 * v41];
      *(v42 + 4) = 0xD000000000000026;
      *(v42 + 5) = 0x8000000225D19F30;
      v43 = v53;
      *(v42 + 6) = 0xD00000000000001CLL;
      *(v42 + 7) = v43;
      v44 = v50;
      *(v42 + 8) = 0xD000000000000020;
      *(v42 + 9) = v44;
      *(v42 + 10) = 584;
      *v32 = v35;
      *(v32 + 8) = v39;
      *(v32 + 16) = 0xD000000000000026;
      *(v32 + 24) = 0x8000000225D19F30;
      *(v32 + 32) = v38;
      *(v32 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v51, v52);
    }

    else
    {
      v45 = v27;
      v46 = v28;
      v48 = v51;
      v47 = v52;
      v14 = (*(*(v5 + 8) + 16))(v27, v28);
      sub_2259B97A8(v45, v46);
      sub_2259B97A8(v48, v47);
    }
  }

  return v14;
}

void HPKESuiteKwV1.sealMessageHPKE<A>(message:to:encoder:)(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v94 = a5;
  v92 = a4;
  v91 = a3;
  v90 = a2;
  v89 = a1;
  v88 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v87 - v11;
  v13 = sub_225CCDEA4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17.value = SecTrustRef.getLeafCertificate()().value;
  if (v17.value)
  {
    value = v17.value;
    v87 = v6;
    v95 = v7;
    v19 = SecCertificateCopyKey(v17.value);
    if (v19 && (v20 = v19, v21 = copyPublicKeyDataFromSecKeyPublic(_:)(v19), v23 = v22, v20, v23 >> 60 != 15))
    {
      v97 = v21;
      v98 = v23;
      sub_2259CB710(v21, v23);
      v72 = v95;
      sub_225CCDE94();
      v26 = v72;
      if (!v72)
      {
        HPKESuiteKwV1.sealMessageHPKE<A>(message:to:encoder:)(v89, v16, v90, v91, v92, v94, v88);
        (*(v14 + 8))(v16, v13);
        sub_2259B97A8(v21, v23);

        return;
      }

      sub_2259B97A8(v21, v23);
    }

    else
    {
      v94 = 0x8000000225D17220;
      v92 = 0x8000000225D172B0;
      v24 = MEMORY[0x277D84F90];
      v25 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v26 = swift_allocError();
      v28 = v27;
      v29 = sub_225CCE954();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v12, 1, 1, v29);
      LODWORD(v29) = (*(v30 + 48))(v12, 1, v29);
      sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
      if (v29)
      {
        v31 = 249;
      }

      else
      {
        v31 = 23;
      }

      v32 = sub_225B2C374(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v32;
      sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v97);

      v34 = v97;
      v35 = sub_225B29AA0(0, 1, 1, v24);
      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[56 * v37];
      *(v38 + 4) = 0xD000000000000035;
      *(v38 + 5) = 0x8000000225D19C10;
      v39 = v94;
      *(v38 + 6) = 0xD00000000000001CLL;
      *(v38 + 7) = v39;
      v40 = v92;
      *(v38 + 8) = 0xD000000000000024;
      *(v38 + 9) = v40;
      *(v38 + 10) = 598;
      *v28 = v31;
      *(v28 + 8) = v35;
      *(v28 + 16) = 0xD000000000000035;
      *(v28 + 24) = 0x8000000225D19C10;
      *(v28 + 32) = v34;
      *(v28 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v95 = 0x8000000225D17220;
    v94 = 0x8000000225D172B0;
    v41 = MEMORY[0x277D84F90];
    v42 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v26 = swift_allocError();
    v44 = v43;
    v45 = sub_225CCE954();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v12, 1, 1, v45);
    LODWORD(v45) = (*(v46 + 48))(v12, 1, v45);
    sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
    if (v45)
    {
      v47 = 269;
    }

    else
    {
      v47 = 23;
    }

    v48 = sub_225B2C374(v41);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v97 = v48;
    sub_225B2C4A0(v42, sub_225B2AC40, 0, v49, &v97);

    v50 = v97;
    v51 = sub_225B29AA0(0, 1, 1, v41);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[56 * v53];
    *(v54 + 4) = 0xD000000000000029;
    *(v54 + 5) = 0x8000000225D19BE0;
    v55 = v95;
    *(v54 + 6) = 0xD00000000000001CLL;
    *(v54 + 7) = v55;
    v56 = v94;
    *(v54 + 8) = 0xD000000000000024;
    *(v54 + 9) = v56;
    *(v54 + 10) = 595;
    *v44 = v47;
    *(v44 + 8) = v51;
    *(v44 + 16) = 0xD000000000000029;
    *(v44 + 24) = 0x8000000225D19BE0;
    *(v44 + 32) = v50;
    *(v44 + 40) = 0;
    swift_willThrow();
  }

  v94 = "t the message using HPKE";
  v57 = v26;
  v58 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v95 = swift_allocError();
  v60 = v59;
  swift_getErrorValue();
  v61 = v103;
  v62 = v26;
  sub_225B21FAC(v61, &v97);

  v63 = v98;
  if (v98)
  {
    v93 = v97;
    v92 = v99;
    v91 = v100;
    v64 = v101;
    v65 = v102;
  }

  else
  {
    v97 = v26;
    v66 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v67 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v69 = [v67 code];
      v70 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v70;
      *(inited + 40) = v69;
      v64 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v71 = v26;
      v93 = 0;
      v92 = 0;
      v91 = 0;
      v63 = MEMORY[0x277D84F90];
    }

    else
    {
      v97 = v26;
      v73 = v26;
      v74 = sub_225CCE954();
      v75 = v93;
      v76 = swift_dynamicCast();
      v77 = *(v74 - 8);
      (*(v77 + 56))(v75, v76 ^ 1u, 1, v74);
      LODWORD(v77) = (*(v77 + 48))(v75, 1, v74);
      sub_2259CB640(v75, &unk_27D73B050, &unk_225CD3AD0);
      if (v77)
      {
        v78 = 0;
      }

      else
      {
        v78 = 23;
      }

      v93 = v78;
      v63 = MEMORY[0x277D84F90];
      v64 = sub_225B2C374(MEMORY[0x277D84F90]);
      v79 = v26;
      v92 = 0;
      v91 = 0;
    }

    v65 = v26;
  }

  v80 = v94 | 0x8000000000000000;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v97 = v64;
  sub_225B2C4A0(v58, sub_225B2AC40, 0, v81, &v97);

  v82 = v97;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v63 = sub_225B29AA0(0, *(v63 + 2) + 1, 1, v63);
  }

  v84 = *(v63 + 2);
  v83 = *(v63 + 3);
  if (v84 >= v83 >> 1)
  {
    v63 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v63);
  }

  *(v63 + 2) = v84 + 1;
  v85 = &v63[56 * v84];
  *(v85 + 4) = 0;
  *(v85 + 5) = 0;
  *(v85 + 6) = 0xD00000000000001CLL;
  *(v85 + 7) = 0x8000000225D17220;
  *(v85 + 8) = 0xD000000000000024;
  *(v85 + 9) = v80;
  *(v85 + 10) = 604;
  *v60 = v93;
  v86 = v92;
  *(v60 + 8) = v63;
  *(v60 + 16) = v86;
  *(v60 + 24) = v91;
  *(v60 + 32) = v82;
  *(v60 + 40) = v65;
  swift_willThrow();
}

unint64_t sub_225A5B114(uint64_t a1)
{
  sub_225CCF204();

  type metadata accessor for HPKESuiteKwV1(0);
  v1 = sub_225CCCF84();
  MEMORY[0x22AA6CE70](v1);

  return 0xD000000000000018;
}

unint64_t HPKESuiteKwV1.openMessageHPKEWithoutDecoding(data:params:authenticationContext:)(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v283 = a4;
  v273 = a2;
  v272 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v286 = &v265 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v305 = &v265 - v8;
  v284 = type metadata accessor for SESKeyForHPKE(0);
  v9 = MEMORY[0x28223BE20](v284);
  v282 = &v265 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v292 = &v265 - v11;
  v279 = sub_225CCDF14();
  v267 = *(v279 - 8);
  v12 = MEMORY[0x28223BE20](v279);
  v278 = &v265 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v285 = &v265 - v14;
  v291 = sub_225CCDDB4();
  v290 = *(v291 - 8);
  v15 = MEMORY[0x28223BE20](v291);
  v281 = &v265 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v266 = &v265 - v18;
  MEMORY[0x28223BE20](v17);
  v275 = &v265 - v19;
  v277 = sub_225CCDC84();
  v276 = *(v277 - 8);
  v20 = MEMORY[0x28223BE20](v277);
  v274 = &v265 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v288 = &v265 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B540, &qword_225CD9948);
  MEMORY[0x28223BE20](v23 - 8);
  v312 = &v265 - v24;
  v309 = type metadata accessor for HPKEPrivateKey(0);
  v308 = *(v309 - 8);
  v25 = MEMORY[0x28223BE20](v309);
  v304 = (&v265 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v307 = &v265 - v27;
  v28 = sub_225CCDE54();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v280 = &v265 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v269 = &v265 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v268 = &v265 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v265 - v36;
  v298 = sub_225CCE164();
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v296 = &v265 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_225CCDBA4();
  v300 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v299 = &v265 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_225CCD954();
  v40 = *(v315 - 8);
  v41 = MEMORY[0x28223BE20](v315);
  v306 = &v265 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v317 = &v265 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v289 = &v265 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v302 = &v265 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v265 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v265 - v52;
  v54 = a3[1];
  v294 = *a3;
  v293 = v54;
  v56 = a3[4];
  v55 = a3[5];
  v57 = a3[11];
  v310 = a3[10];
  v311 = v57;
  v327 = xmmword_225CD4150;
  v287 = v28;
  v271 = v29;
  v270 = v37;
  if (v55 >> 60 == 15)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v58 = off_28105B918;
    v59 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v60 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v60));
    v61 = v40;
    v62 = v315;
    v63 = *(v40 + 16);
    v63(v51, &v58[v59], v315);
    os_unfair_lock_unlock(&v58[v60]);
    v64 = sub_225CCD934();
    v65 = sub_225CCED04();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2259A7000, v64, v65, "openMessageHPKE: pkISm is empty", v66, 2u);
      MEMORY[0x22AA6F950](v66, -1, -1);
    }

    v67 = *(v61 + 8);
    v67(v51, v62);
    v68 = v62;
    v69 = v67;
    v70 = v312;
  }

  else
  {
    sub_2259CB710(v56, v55);
    sub_2259BEF00(0, 0xC000000000000000);
    *&v327 = v56;
    *(&v327 + 1) = v55;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v71 = off_28105B918;
    v72 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v73 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v73));
    v74 = v40;
    v63 = *(v40 + 16);
    v75 = v315;
    v63(v53, &v71[v72], v315);
    v303 = v71;
    os_unfair_lock_unlock(&v71[v73]);
    v76 = v327;
    sub_2259CB710(v327, *(&v327 + 1));
    v77 = sub_225CCD934();
    v78 = sub_225CCED04();
    sub_2259BEF00(v76, *(&v76 + 1));
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v313 = v63;
      v295 = v74;
      v80 = v79;
      v81 = swift_slowAlloc();
      v319 = v81;
      *v80 = 136315138;
      v82 = sub_225CCCF84();
      v84 = sub_2259BE198(v82, v83, &v319);

      *(v80 + 4) = v84;
      _os_log_impl(&dword_2259A7000, v77, v78, "openMessageHPKE: envelope.params.pkISm = %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x22AA6F950](v81, -1, -1);
      v63 = v313;
      MEMORY[0x22AA6F950](v80, -1, -1);

      v85 = v295;
      v69 = *(v295 + 8);
      v69(v53, v75);
      v68 = v75;
      v70 = v312;
      v61 = v85;
    }

    else
    {

      v69 = *(v74 + 8);
      v69(v53, v75);
      v68 = v75;
      v61 = v74;
      v70 = v312;
    }

    v58 = v303;
  }

  v86 = v311;
  v314 = v69;
  if (v311 >> 60 != 15)
  {
    v295 = v61;
    v313 = v63;
    v87 = (v316 + *(type metadata accessor for HPKESuiteKwV1(0) + 24));
    v88 = *v87;
    v89 = v87[1];
    v90 = v310;
    sub_2259CB710(v310, v86);
    sub_225A5EBD0(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v91 = v296;
    v92 = v298;
    sub_225CCDB94();
    sub_2259CB710(v88, v89);
    v93 = v328;
    sub_2259DB138(v88, v89, v91);
    v328 = v93;
    sub_2259BEF00(v88, v89);
    v94 = v299;
    sub_225CCDB84();
    (*(v297 + 8))(v91, v92);
    sub_225A5EBD0(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
    v95 = v301;
    v96 = sub_225CCE154();
    v98 = sub_2259D732C(v96, v97);
    v99 = v90;

    v100 = sub_2259D8490(v98);
    v102 = v101;

    v103 = v94;
    v104 = v102;
    (*(v300 + 8))(v103, v95);
    if (sub_2259D8228(v100, v102, v99, v86))
    {
      v68 = v315;
      v61 = v295;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v105 = *(*v58 + *MEMORY[0x277D841D0] + 16);
      v106 = (*(*v58 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock(&v58[v106]);
      v107 = v289;
      v313(v289, &v58[v105], v68);
      os_unfair_lock_unlock(&v58[v106]);
      v108 = sub_225CCD934();
      v109 = sub_225CCED04();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&dword_2259A7000, v108, v109, "openMessageHPKE: info matches envelope infoHash", v110, 2u);
        v111 = v110;
        v68 = v315;
        MEMORY[0x22AA6F950](v111, -1, -1);

        sub_2259BEF00(v100, v104);
        sub_2259B97A8(v310, v86);
      }

      else
      {
        sub_2259B97A8(v310, v86);
        sub_2259BEF00(v100, v104);
      }

      v69 = v314;
      v314(v107, v68);
      v63 = v313;
      v70 = v312;
    }

    else
    {
      v112 = v100;
      v301 = v102;
      v68 = v315;
      v70 = v312;
      v113 = v295;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v114 = *(*v58 + *MEMORY[0x277D841D0] + 16);
      v115 = (*(*v58 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock(&v58[v115]);
      v313(v302, &v58[v114], v68);
      v303 = v58;
      os_unfair_lock_unlock(&v58[v115]);
      v116 = v310;
      sub_2259CB6FC(v310, v86);
      v117 = v112;
      v118 = v112;
      v119 = v301;
      sub_2259CB710(v118, v301);
      v120 = sub_225CCD934();
      v121 = v113;
      v122 = v119;
      v123 = sub_225CCED14();
      sub_2259B97A8(v116, v86);
      sub_2259BEF00(v117, v122);
      if (os_log_type_enabled(v120, v123))
      {
        v124 = swift_slowAlloc();
        v300 = swift_slowAlloc();
        v319 = v300;
        *v124 = 136315394;
        v125 = sub_225CCCF84();
        v127 = sub_2259BE198(v125, v126, &v319);

        *(v124 + 4) = v127;
        *(v124 + 12) = 2080;
        v128 = sub_225CCCF84();
        v130 = sub_2259BE198(v128, v129, &v319);

        *(v124 + 14) = v130;
        v68 = v315;
        _os_log_impl(&dword_2259A7000, v120, v123, "openMessageHPKE: info does not match envelope's infoHash! envelope infoHash = %s, computed infoHash = %s", v124, 0x16u);
        v131 = v300;
        swift_arrayDestroy();
        MEMORY[0x22AA6F950](v131, -1, -1);
        MEMORY[0x22AA6F950](v124, -1, -1);

        sub_2259BEF00(v117, v122);
        sub_2259B97A8(v310, v311);
      }

      else
      {
        sub_2259B97A8(v116, v86);
        sub_2259BEF00(v117, v122);
      }

      v69 = v314;
      v314(v302, v68);
      v61 = v121;
      v58 = v303;
      v63 = v313;
    }
  }

  v326 = xmmword_225CD3100;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v132 = *(*v58 + *MEMORY[0x277D841D0] + 16);
  v133 = (*(*v58 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v58[v133]);
  v311 = v132;
  v310 = v61 + 16;
  v63(v317, &v58[v132], v68);
  os_unfair_lock_unlock(&v58[v133]);
  v134 = sub_225CCD934();
  v135 = sub_225CCED04();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    *v136 = 0;
    _os_log_impl(&dword_2259A7000, v134, v135, "openMessageHPKE: using HPKE library", v136, 2u);
    v137 = v136;
    v69 = v314;
    MEMORY[0x22AA6F950](v137, -1, -1);
  }

  v138 = (v61 + 8);
  v69(v317, v68);
  v139 = type metadata accessor for HPKESuiteKwV1(0);
  sub_225A0DE54(v316 + v139[8], v70, &qword_27D73B540, &qword_225CD9948);
  if ((*(v308 + 48))(v70, 1, v309) == 1)
  {
    sub_2259CB640(v70, &qword_27D73B540, &qword_225CD9948);
    v317 = 0x8000000225D17220;
    v140 = MEMORY[0x277D84F90];
    v141 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v142 = swift_allocError();
    v144 = v143;
    v145 = sub_225CCE954();
    v146 = *(v145 - 8);
    v147 = v305;
    (*(v146 + 56))(v305, 1, 1, v145);
    LODWORD(v145) = (*(v146 + 48))(v147, 1, v145);
    sub_2259CB640(v147, &unk_27D73B050, &unk_225CD3AD0);
    if (v145)
    {
      v148 = 1160;
    }

    else
    {
      v148 = 23;
    }

    v149 = sub_225B2C374(v140);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v319 = v149;
    sub_225B2C4A0(v141, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v319);

    v151 = v319;
    v152 = sub_225B29AA0(0, 1, 1, v140);
    v154 = *(v152 + 2);
    v153 = *(v152 + 3);
    if (v154 >= v153 >> 1)
    {
      v152 = sub_225B29AA0((v153 > 1), v154 + 1, 1, v152);
    }

    *(v152 + 2) = v154 + 1;
    v155 = &v152[56 * v154];
    *(v155 + 4) = 0xD000000000000016;
    *(v155 + 5) = 0x8000000225D19C50;
    v156 = v317;
    *(v155 + 6) = 0xD00000000000001CLL;
    *(v155 + 7) = v156;
    *(v155 + 8) = 0xD000000000000042;
    *(v155 + 9) = 0x8000000225D19C70;
    *(v155 + 10) = 726;
    *v144 = v148;
    *(v144 + 8) = v152;
    *(v144 + 16) = 0xD000000000000016;
    *(v144 + 24) = 0x8000000225D19C50;
    *(v144 + 32) = v151;
    *(v144 + 40) = 0;
    v157 = v142;
    swift_willThrow();
    goto LABEL_48;
  }

  v158 = v307;
  sub_225A5EB00(v70, v307, type metadata accessor for HPKEPrivateKey);
  v159 = v158;
  v160 = v304;
  sub_225A5EB68(v159, v304, type metadata accessor for HPKEPrivateKey);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v313 = v63;
    if (EnumCaseMultiPayload == 1)
    {
      v309 = v139;
      v317 = *v160;
      v162 = v317;
      v163 = v68;
      v164 = v160[1];
      os_unfair_lock_lock(&v58[v133]);
      v165 = v306;
      v63(v306, &v58[v311], v163);
      os_unfair_lock_unlock(&v58[v133]);
      v312 = v164;

      sub_225B420DC(v165, v162, v164);

      v166 = v314;
      v314(v165, v163);
      os_unfair_lock_lock(&v58[v133]);
      v63(v165, &v58[v311], v163);
      os_unfair_lock_unlock(&v58[v133]);
      v167 = v316;
      MEMORY[0x28223BE20](v168);
      v169 = v294;
      *(&v265 - 4) = v167;
      *(&v265 - 3) = v169;
      v170 = v293;
      *(&v265 - 2) = v293;
      Logger.cryptoParam(_:)(sub_225A5EC78);
      v171 = v165;
      v172 = v138;
      v166(v171, v163);
      v173 = v285;
      v174 = v328;
      sub_225CCDED4();
      v157 = v174;
      if (!v174)
      {
        v312 = v133;
        v317 = v172;
        v175 = v267;
        (*(v267 + 16))(v278, v173, v279);
        v176 = v309;
        (*(v290 + 16))(v266, v167 + *(v309 + 20), v291);
        v177 = (v167 + *(v176 + 24));
        v178 = *v177;
        v179 = v177[1];
        sub_2259CB710(v294, v170);
        sub_2259CB710(v178, v179);
        v180 = v279;
        sub_225CCDE34();
        v328 = 0;
        (*(v175 + 8))(v173, v180);
        v236 = v269;
        v133 = v312;
        goto LABEL_65;
      }

      goto LABEL_47;
    }

    v189 = v63;
    v190 = v292;
    sub_225A5EB00(v160, v292, type metadata accessor for SESKeyForHPKE);
    os_unfair_lock_lock(&v58[v133]);
    v191 = v306;
    v189(v306, &v58[v311], v68);
    os_unfair_lock_unlock(&v58[v133]);
    sub_225B3EF24();
    v314(v191, v68);
    sub_225A5EB68(v190, v282, type metadata accessor for SESKeyForHPKE);
    v192 = v316;
    (*(v290 + 16))(v281, v316 + v139[5], v291);
    v193 = (v192 + v139[6]);
    v194 = *v193;
    v195 = v193[1];
    v317 = v138;
    sub_2259CB710(v294, v293);
    sub_2259CB710(v194, v195);
    sub_225A5EBD0(&qword_27D73B548, type metadata accessor for SESKeyForHPKE, &protocol conformance descriptor for SESKeyForHPKE);
    v236 = v280;
    v196 = v328;
    sub_225CCDE34();
    v157 = v196;
    if (v196)
    {
      sub_225A5EC18(v292, type metadata accessor for SESKeyForHPKE);
LABEL_47:
      sub_225A5EC18(v307, type metadata accessor for HPKEPrivateKey);
      goto LABEL_48;
    }

    v328 = 0;
    sub_225A5EC18(v292, type metadata accessor for SESKeyForHPKE);
  }

  else
  {
    v181 = *v160;
    os_unfair_lock_lock(&v58[v133]);
    v182 = v306;
    v63(v306, &v58[v311], v68);
    os_unfair_lock_unlock(&v58[v133]);
    sub_225B3ED40();
    v314(v182, v68);
    v183 = v283;
    v184 = v283;
    v185 = v181;
    v186 = v288;
    v187 = v328;
    sub_225A5D800(v185, v183, v288);
    v188 = v138;
    v157 = v187;
    if (v187)
    {
      sub_225A5EC18(v307, type metadata accessor for HPKEPrivateKey);

LABEL_48:
      v328 = 0x8000000225D19CC0;
      v316 = "r decrypting encoded data: ";
      v315 = "no skR to open message";
      v199 = v157;
      v200 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v201 = swift_allocError();
      v203 = v202;
      swift_getErrorValue();
      v204 = v325;
      v205 = v157;
      sub_225B21FAC(v204, &v319);

      v206 = v320;
      v317 = v201;
      if (v320)
      {
        v207 = v157;
        v314 = v319;
        v313 = v321;
        v312 = v322;
        v209 = v323;
        v208 = v324;
      }

      else
      {
        v319 = v157;
        v210 = v157;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v211 = v318;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v213 = [v211 code];
          v214 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v214;
          *(inited + 40) = v213;
          v209 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v215 = v157;
          v313 = 0;
          v312 = 0;
          v206 = MEMORY[0x277D84F90];
          v216 = 284;
          v217 = &v327 + 8;
        }

        else
        {
          v319 = v157;
          v218 = v157;
          v219 = sub_225CCE954();
          v220 = v286;
          v221 = swift_dynamicCast();
          v222 = *(v219 - 8);
          (*(v222 + 56))(v220, v221 ^ 1u, 1, v219);
          v223 = (*(v222 + 48))(v220, 1, v219);
          sub_2259CB640(v220, &unk_27D73B050, &unk_225CD3AD0);
          if (v223)
          {
            v224 = 284;
          }

          else
          {
            v224 = 23;
          }

          v314 = v224;
          v206 = MEMORY[0x277D84F90];
          v209 = sub_225B2C374(MEMORY[0x277D84F90]);
          v225 = v157;
          v313 = 0xD000000000000028;
          v216 = v328;
          v217 = &v326 + 8;
        }

        *(v217 - 32) = v216;
        v207 = v157;
        v208 = v157;
      }

      v226 = v316 | 0x8000000000000000;
      v227 = v315 | 0x8000000000000000;
      v228 = swift_isUniquelyReferenced_nonNull_native();
      v319 = v209;
      sub_225B2C4A0(v200, sub_225B2AC40, 0, v228, &v319);

      v229 = v319;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v206 = sub_225B29AA0(0, *(v206 + 2) + 1, 1, v206);
      }

      v231 = *(v206 + 2);
      v230 = *(v206 + 3);
      if (v231 >= v230 >> 1)
      {
        v206 = sub_225B29AA0((v230 > 1), v231 + 1, 1, v206);
      }

      *(v206 + 2) = v231 + 1;
      v232 = &v206[56 * v231];
      v233 = v328;
      *(v232 + 4) = 0xD000000000000028;
      *(v232 + 5) = v233;
      *(v232 + 6) = 0xD00000000000001CLL;
      *(v232 + 7) = v226;
      *(v232 + 8) = 0xD000000000000042;
      *(v232 + 9) = v227;
      *(v232 + 10) = 735;
      *v203 = v314;
      v234 = v313;
      *(v203 + 8) = v206;
      *(v203 + 16) = v234;
      *(v203 + 24) = v312;
      *(v203 + 32) = v229;
      *(v203 + 40) = v208;
      swift_willThrow();

      goto LABEL_62;
    }

    v317 = v188;
    (*(v276 + 16))(v274, v186, v277);
    v197 = v316;
    (*(v290 + 16))(v275, v316 + v139[5], v291);
    sub_2259CB710(*(v197 + v139[6]), *(v197 + v139[6] + 8));
    sub_2259CB710(v294, v293);
    v198 = v277;
    sub_225CCDE34();
    v328 = 0;
    v313 = v63;

    (*(v276 + 8))(v288, v198);
    v236 = v268;
  }

LABEL_65:
  sub_225A5EC18(v307, type metadata accessor for HPKEPrivateKey);
  v237 = v271;
  v238 = v270;
  (*(v271 + 32))(v270, v236, v287);
  os_unfair_lock_lock(&v58[v133]);
  v239 = v306;
  v240 = v315;
  v313(v306, &v58[v311], v315);
  os_unfair_lock_unlock(&v58[v133]);
  v241 = v272;
  v242 = v273;
  sub_2259CB710(v272, v273);
  sub_225B42320();
  sub_2259BEF00(v241, v242);
  v314(v239, v240);
  v319 = v241;
  v320 = v242;
  swift_beginAccess();
  v318 = v327;
  sub_2259CB710(v327, *(&v327 + 1));
  sub_2259DB42C();
  v243 = v328;
  v244 = sub_225CCDE44();
  v328 = v243;
  if (v243)
  {
    sub_2259BEF00(v318, *(&v318 + 1));
    (*(v237 + 8))(v238, v287);
    v157 = v328;
    goto LABEL_48;
  }

  v246 = v244;
  v247 = v245;
  sub_2259BEF00(v318, *(&v318 + 1));
  sub_2259B97A8(v326, *(&v326 + 1));
  *&v326 = v246;
  *(&v326 + 1) = v247;
  os_unfair_lock_lock(&v58[v133]);
  v313(v239, &v58[v311], v240);
  os_unfair_lock_unlock(&v58[v133]);
  sub_225B3F108(v239, &v326);
  v314(v239, v240);
  (*(v237 + 8))(v238, v287);
  v248 = *(&v326 + 1);
  if (*(&v326 + 1) >> 60 != 15)
  {
    v203 = v326;
    v264 = v327;
    sub_2259CB710(v326, *(&v326 + 1));
    sub_2259BEF00(v264, *(&v264 + 1));
    sub_2259B97A8(v203, v248);
    return v203;
  }

  v317 = 0x8000000225D17220;
  v249 = MEMORY[0x277D84F90];
  v250 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v252 = v251;
  v253 = sub_225CCE954();
  v254 = *(v253 - 8);
  v255 = v305;
  (*(v254 + 56))(v305, 1, 1, v253);
  LODWORD(v253) = (*(v254 + 48))(v255, 1, v253);
  sub_2259CB640(v255, &unk_27D73B050, &unk_225CD3AD0);
  if (v253)
  {
    v256 = 1161;
  }

  else
  {
    v256 = 23;
  }

  v257 = sub_225B2C374(v249);
  v258 = swift_isUniquelyReferenced_nonNull_native();
  v319 = v257;
  sub_225B2C4A0(v250, sub_225B2AC40, 0, v258, &v319);

  v259 = v319;
  v260 = sub_225B29AA0(0, 1, 1, v249);
  v203 = *(v260 + 2);
  v261 = *(v260 + 3);
  if (v203 >= v261 >> 1)
  {
    v260 = sub_225B29AA0((v261 > 1), v203 + 1, 1, v260);
  }

  *(v260 + 2) = v203 + 1;
  v262 = &v260[56 * v203];
  *(v262 + 4) = 0xD000000000000017;
  *(v262 + 5) = 0x8000000225D19CF0;
  v263 = v317;
  *(v262 + 6) = 0xD00000000000001CLL;
  *(v262 + 7) = v263;
  *(v262 + 8) = 0xD000000000000042;
  *(v262 + 9) = 0x8000000225D19C70;
  *(v262 + 10) = 739;
  *v252 = v256;
  *(v252 + 8) = v260;
  *(v252 + 16) = 0xD000000000000017;
  *(v252 + 24) = 0x8000000225D19CF0;
  *(v252 + 32) = v259;
  *(v252 + 40) = 0;
  swift_willThrow();
LABEL_62:
  sub_2259BEF00(v327, *(&v327 + 1));
  sub_2259B97A8(v326, *(&v326 + 1));
  return v203;
}

void sub_225A5D800(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v43 = a3;
  v4 = sub_225CCDC84();
  v44 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = sub_225CCD954();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  if (a2)
  {
    v41 = v10;
    v42 = v4;
    v20 = qword_28105B910;
    v21 = a2;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = off_28105B918;
    v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v24));
    (*(v14 + 16))(v17, &v22[v23], v13);
    os_unfair_lock_unlock(&v22[v24]);
    v25 = sub_225CCD934();
    v26 = sub_225CCED04();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2259A7000, v25, v26, "Instantiating SecureEnclave PrivateKey with an authentication context", v27, 2u);
      MEMORY[0x22AA6F950](v27, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    v28 = v45;
    v29 = v46;
    sub_225CCDC54();
    if (v29)
    {

      return;
    }

    sub_225CCDC64();
    v30 = v21;
    v31 = v41;
    sub_225CCDC74();
    v39 = v42;
    (*(v44 + 8))(v12, v42);

    v4 = v39;
    v7 = v31;
    goto LABEL_14;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v32 = off_28105B918;
  v33 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v34 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v34));
  (*(v14 + 16))(v19, &v32[v33], v13);
  os_unfair_lock_unlock(&v32[v34]);
  v35 = sub_225CCD934();
  v36 = sub_225CCED04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2259A7000, v35, v36, "Instantiating SecureEnclave PrivateKey with no authentication context", v37, 2u);
    MEMORY[0x22AA6F950](v37, -1, -1);
  }

  (*(v14 + 8))(v19, v13);
  v38 = v46;
  sub_225CCDC54();
  if (!v38)
  {
LABEL_14:
    (*(v44 + 32))(v43, v7, v4);
  }
}

uint64_t sub_225A5DD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D19E70);
  type metadata accessor for HPKESuiteKwV1(0);
  sub_225CCDDB4();
  sub_225CCF434();
  MEMORY[0x22AA6CE70](0x203D206F666E6920, 0xE800000000000000);
  v3 = sub_225CCCF84();
  MEMORY[0x22AA6CE70](v3);

  MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D19EB0);
  v4 = sub_225CCCF84();
  MEMORY[0x22AA6CE70](v4);

  return 0;
}

uint64_t sub_225A5DE6C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v8 = *a3;
  v9 = v5;
  v10 = v6;
  return sub_225A5A10C(a1, a2, &v8, a4, a5);
}

unint64_t sub_225A5DF5C(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD000000000000010;
}

uint64_t sub_225A5E09C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  a2[2] = a1[2];
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  *a2 = v3;
  a2[1] = v2;
}

unint64_t sub_225A5E13C()
{
  result = qword_27D73B428;
  if (!qword_27D73B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B428);
  }

  return result;
}

unint64_t sub_225A5E190()
{
  result = qword_27D73B448;
  if (!qword_27D73B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B448);
  }

  return result;
}

uint64_t sub_225A5E1E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A5E260()
{
  result = qword_27D73B458;
  if (!qword_27D73B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B458);
  }

  return result;
}

double sub_225A5E2B4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_225A5E2FC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v59 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v45 = v9;
  v46 = v5;
  while (1)
  {
    v12 = v8;
    v13 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = __clz(__rbit64(v12)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(a1 + 56) + 32 * v15);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v52[0] = v18;
    v52[1] = v17;
    v52[2] = v20;
    v52[3] = v21;
    v52[4] = v22;
    v52[5] = v23;

    a2(&v53, v52);

    v24 = v54;
    if (!v54)
    {
LABEL_22:
      sub_2259D8710(a1);
    }

    v25 = v53;
    v27 = v55;
    v26 = v56;
    v49 = v57;
    v50 = v58;
    v28 = *v59;
    v30 = sub_2259F18D4(v53, v54);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_24;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if ((a4 & 1) == 0)
      {
        sub_225A44638();
      }
    }

    else
    {
      sub_225A410F4(v33, a4 & 1);
      v35 = sub_2259F18D4(v25, v24);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }

      v30 = v35;
    }

    v37 = (v12 - 1) & v12;
    v38 = *v59;
    if (v34)
    {

      v11 = (v38[7] + 32 * v30);
      *v11 = v27;
      v11[1] = v26;
      v11[2] = v49;
      v11[3] = v50;
    }

    else
    {
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v39 = (v38[6] + 16 * v30);
      *v39 = v25;
      v39[1] = v24;
      v40 = (v38[7] + 32 * v30);
      *v40 = v27;
      v40[1] = v26;
      v40[2] = v49;
      v40[3] = v50;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v10 = v13;
    v9 = v45;
    v5 = v46;
    v8 = v37;
  }

  v14 = v10;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_22;
    }

    v12 = *(v5 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

unint64_t sub_225A5E5E0()
{
  result = qword_27D73B488;
  if (!qword_27D73B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B488);
  }

  return result;
}

uint64_t sub_225A5E634(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73B478, &qword_225CD98F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A5E6B8()
{
  result = qword_27D73B498;
  if (!qword_27D73B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B498);
  }

  return result;
}

unint64_t sub_225A5E724()
{
  result = qword_27D73B4C0;
  if (!qword_27D73B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B4C0);
  }

  return result;
}

unint64_t sub_225A5E778()
{
  result = qword_27D73B4D0;
  if (!qword_27D73B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B4D0);
  }

  return result;
}

unint64_t sub_225A5E7E4()
{
  result = qword_27D73B4E0;
  if (!qword_27D73B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B4E0);
  }

  return result;
}

uint64_t sub_225A5E8A0(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
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

unint64_t sub_225A5E8C4()
{
  result = qword_27D73B4F8;
  if (!qword_27D73B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B4F8);
  }

  return result;
}

unint64_t sub_225A5E980()
{
  result = qword_27D73B508;
  if (!qword_27D73B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B508);
  }

  return result;
}

unint64_t sub_225A5E9D4()
{
  result = qword_27D73B510;
  if (!qword_27D73B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B510);
  }

  return result;
}

unint64_t sub_225A5EA28()
{
  result = qword_27D73B520;
  if (!qword_27D73B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B520);
  }

  return result;
}

unint64_t sub_225A5EA7C()
{
  result = qword_27D73B530;
  if (!qword_27D73B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B530);
  }

  return result;
}

uint64_t sub_225A5EB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A5EB68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A5EBD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225A5EC18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225A5EC84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D61726170 && a2 == 0xE600000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225A5EDA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D61726170 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225A5EEBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1833266032 && a2 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68736148526B70 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D53496B70 && a2 == 0xE500000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6873614853496B70 && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1834183536 && a2 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x687361486F666E69 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_225A5F104(char *a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v139 = a8;
  v138 = a7;
  v137 = a6;
  v135 = a5;
  v143 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v134 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v129 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BA40, &unk_225CDB920);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v129 - v20;
  v136 = sub_225CCDD74();
  v133 = *(v136 - 8);
  v22 = MEMORY[0x28223BE20](v136);
  v24 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v129 - v26;
  MEMORY[0x28223BE20](v25);
  v132 = &v129 - v28;
  v140 = sub_225CCDD34();
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v142 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_225CCDC44();
  result = MEMORY[0x28223BE20](v30);
  v35 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v36 != 2)
    {
      goto LABEL_14;
    }

    v38 = *(a1 + 2);
    v37 = *(a1 + 3);
    v39 = __OFSUB__(v37, v38);
    v40 = v37 - v38;
    if (!v39)
    {
      if (v40 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v32 = sub_225B29AA0((v40 > 1), v21, 1, v32);
LABEL_50:
    *(v32 + 2) = v21;
    v90 = &v32[56 * v19];
    *(v90 + 4) = a2;
    *(v90 + 5) = a3;
    v91 = v143;
    *(v90 + 6) = 0xD00000000000001CLL;
    *(v90 + 7) = v91;
    v92 = v142;
    *(v90 + 8) = 0xD000000000000017;
    *(v90 + 9) = v92;
    *(v90 + 10) = 779;
    *v27 = a1;
    *(v27 + 1) = v32;
    *(v27 + 2) = a2;
    *(v27 + 3) = a3;
    *(v27 + 4) = v15;
    *(v27 + 5) = 0;
    return swift_willThrow();
  }

  if (v36)
  {
    v40 = (HIDWORD(a1) - a1);
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (v40 == 16)
      {
        goto LABEL_8;
      }

LABEL_14:
      a3 = 0xD000000000000017;
      v147 = 0;
      v148 = 0xE000000000000000;
      v27 = &v147;
      sub_225CCF204();

      v147 = 0xD000000000000019;
      v148 = 0x8000000225D19D10;
      if (v36 <= 1)
      {
        if (!v36)
        {
          v41 = BYTE6(a2);
          goto LABEL_29;
        }

        LODWORD(v41) = HIDWORD(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v41 = v41;
          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_71;
      }

      v41 = 0;
      if (v36 != 2 || (v43 = *(a1 + 2), v42 = *(a1 + 3), v39 = __OFSUB__(v42, v43), v41 = v42 - v43, !v39))
      {
LABEL_29:
        v145 = v41;
        v58 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v58);

        MEMORY[0x22AA6CE70](0x20746F6E20736920, 0xE800000000000000);
        v145 = 16;
        v59 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v59);

        v61 = v147;
        v60 = v148;
        v143 = 0x8000000225D17220;
        v142 = 0x8000000225D19E10;
        v62 = MEMORY[0x277D84F90];
        v63 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v65 = v64;
        v66 = sub_225CCE954();
        v67 = *(v66 - 8);
        (*(v67 + 56))(v15, 1, 1, v66);
        LODWORD(v66) = (*(v67 + 48))(v15, 1, v66);
        sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);
        if (v66)
        {
          v68 = 281;
        }

        else
        {
          v68 = 23;
        }

        v69 = sub_225B2C374(v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = v69;
        sub_225B2C4A0(v63, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v147);

        v71 = v147;
        v72 = sub_225B29AA0(0, 1, 1, v62);
        v74 = *(v72 + 2);
        v73 = *(v72 + 3);
        if (v74 >= v73 >> 1)
        {
          v72 = sub_225B29AA0((v73 > 1), v74 + 1, 1, v72);
        }

        *(v72 + 2) = v74 + 1;
        v75 = &v72[56 * v74];
        *(v75 + 4) = v61;
        *(v75 + 5) = v60;
        v76 = v143;
        *(v75 + 6) = 0xD00000000000001CLL;
        *(v75 + 7) = v76;
        v77 = v142;
        *(v75 + 8) = 0xD000000000000017;
        *(v75 + 9) = v77;
        *(v75 + 10) = 776;
        *v65 = v68;
        *(v65 + 8) = v72;
        *(v65 + 16) = v61;
        *(v65 + 24) = v60;
        *(v65 + 32) = v71;
        *(v65 + 40) = 0;
        return swift_willThrow();
      }

      __break(1u);
LABEL_21:
      if (v36 == 2)
      {
        v45 = *(a3 + 2);
        v44 = *(a3 + 3);
        v39 = __OFSUB__(v44, v45);
        v46 = v44 - v45;
        if (!v39)
        {
          if (v46 == 12)
          {
            goto LABEL_24;
          }

          goto LABEL_37;
        }

        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      goto LABEL_37;
    }

    goto LABEL_68;
  }

  if (BYTE6(a2) != 16)
  {
    goto LABEL_14;
  }

LABEL_8:
  v36 = v143 >> 62;
  if ((v143 >> 62) > 1)
  {
    goto LABEL_21;
  }

  if (!v36)
  {
    if (BYTE6(v143) == 12)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_73;
  }

  if (HIDWORD(a3) - a3 != 12)
  {
LABEL_37:
    v147 = 0;
    v148 = 0xE000000000000000;
    sub_225CCF204();

    v147 = 0xD00000000000001BLL;
    v148 = 0x8000000225D19D50;
    if (v36 > 1)
    {
      v78 = 0;
      if (v36 != 2)
      {
        goto LABEL_46;
      }

      v80 = *(a3 + 2);
      v79 = *(a3 + 3);
      v39 = __OFSUB__(v79, v80);
      v78 = v79 - v80;
      if (!v39)
      {
        goto LABEL_46;
      }

      __break(1u);
    }

    else if (!v36)
    {
      v78 = BYTE6(v143);
      goto LABEL_46;
    }

    LODWORD(v78) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v78 = v78;
LABEL_46:
      v145 = v78;
      v81 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v81);

      MEMORY[0x22AA6CE70](0x20746F6E20736920, 0xE800000000000000);
      v145 = 12;
      v82 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v82);

      a2 = v147;
      a3 = v148;
      v143 = 0x8000000225D17220;
      v142 = 0x8000000225D19E10;
      v83 = MEMORY[0x277D84F90];
      v84 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v27 = v85;
      v86 = sub_225CCE954();
      v87 = *(v86 - 8);
      (*(v87 + 56))(v15, 1, 1, v86);
      LODWORD(v86) = (*(v87 + 48))(v15, 1, v86);
      sub_2259CB640(v15, &unk_27D73B050, &unk_225CD3AD0);
      if (v86)
      {
        LOWORD(a1) = 281;
      }

      else
      {
        LOWORD(a1) = 23;
      }

      v88 = sub_225B2C374(v83);
      v89 = swift_isUniquelyReferenced_nonNull_native();
      v147 = v88;
      sub_225B2C4A0(v84, sub_225B2AC40, 0, v89, &v147);

      v15 = v147;
      v32 = sub_225B29AA0(0, 1, 1, v83);
      v19 = *(v32 + 2);
      v40 = *(v32 + 3);
      v21 = (v19 + 1);
      if (v19 < v40 >> 1)
      {
        goto LABEL_50;
      }

      goto LABEL_69;
    }

LABEL_74:
    __break(1u);
    return result;
  }

LABEL_24:
  v129 = v33;
  v130 = result;
  v147 = a1;
  v148 = a2;
  v47 = v35;
  sub_2259CB710(a1, a2);
  v131 = v47;
  sub_225CCDC24();
  v147 = a3;
  v148 = v143;
  sub_2259CB710(a3, v143);
  sub_2259DB42C();
  v48 = v142;
  v49 = v144;
  sub_225CCDD14();
  v15 = v49;
  if (!v49)
  {
    v93 = (v141 + 16);
    v94 = (v141 + 56);
    v95 = v137;
    v147 = v138;
    v148 = v139;
    if (v137 >> 60 == 15)
    {
      v96 = v140;
      (*v93)(v19, v48, v140);
      (*v94)(v19, 0, 1, v96);
      sub_225CCDCF4();
      sub_2259CB640(v19, &qword_27D73BA40, &unk_225CDB920);
      v27 = v24;
    }

    else
    {
      v103 = v140;
      (*v93)(v21, v48, v140);
      (*v94)(v21, 0, 1, v103);
      v104 = v135;
      v145 = v135;
      v146 = v95;
      sub_2259CB710(v135, v95);
      sub_225CCDCE4();
      sub_2259CB640(v21, &qword_27D73BA40, &unk_225CDB920);
      sub_2259B97A8(v104, v95);
    }

    v118 = v133;
    v119 = v132;
    (*(v133 + 32))(v132, v27, v136);
    v120 = sub_225CCDD44();
    v122 = v121;
    v123 = sub_225CCDD54();
    v125 = v124;
    v145 = v120;
    v146 = v122;
    v150 = MEMORY[0x277CC9318];
    v151 = MEMORY[0x277CC9300];
    v147 = v123;
    v148 = v124;
    v126 = __swift_project_boxed_opaque_existential_1(&v147, MEMORY[0x277CC9318]);
    v128 = *v126;
    v127 = v126[1];
    sub_2259CB710(v120, v122);
    sub_2259CB710(v123, v125);
    sub_225C0EA34(v128, v127, &v145);
    sub_2259BEF00(v123, v125);
    sub_2259BEF00(v120, v122);
    (*(v118 + 8))(v119, v136);
    (*(v141 + 8))(v142, v140);
    (*(v129 + 8))(v131, v130);
    __swift_destroy_boxed_opaque_existential_0(&v147);
    return v145;
  }

  v143 = 0;
  v144 = 0x8000000225D19E30;
  v142 = "aead open: ct = ";
  v50 = v49;
  v51 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v21 = v52;
  swift_getErrorValue();
  v53 = v153;
  v54 = v49;
  sub_225B21FAC(v53, &v147);

  v27 = v148;
  if (v148)
  {
    v141 = v147;
    v140 = v149;
    v139 = v150;
    v56 = v151;
    v55 = v152;
    v57 = &v154;
  }

  else
  {
    v147 = v49;
    v97 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v98 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v100 = [v98 code];
      v101 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v101;
      *(inited + 40) = v100;
      v56 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v102 = v49;
      v139 = 0;
      v140 = 0;
      v27 = MEMORY[0x277D84F90];
      v141 = 281;
      v138 = v49;
      goto LABEL_62;
    }

    v147 = v49;
    v105 = v49;
    v106 = sub_225CCE954();
    v107 = v134;
    v108 = swift_dynamicCast();
    v109 = *(v106 - 8);
    (*(v109 + 56))(v107, v108 ^ 1u, 1, v106);
    LODWORD(v109) = (*(v109 + 48))(v107, 1, v106);
    sub_2259CB640(v107, &unk_27D73B050, &unk_225CD3AD0);
    if (v109)
    {
      v110 = 281;
    }

    else
    {
      v110 = 23;
    }

    v141 = v110;
    v27 = MEMORY[0x277D84F90];
    v56 = sub_225B2C374(MEMORY[0x277D84F90]);
    v111 = v49;
    v140 = 0xD000000000000034;
    v138 = v49;
    v55 = v144;
    v57 = &v155;
  }

  *(v57 - 32) = v55;
LABEL_62:
  a2 = 0x8000000225D17220;
  a1 = (v142 | 0x8000000000000000);
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v56;
  sub_225B2C4A0(v51, sub_225B2AC40, 0, v112, &v147);

  v19 = v147;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_71:
    v27 = sub_225B29AA0(0, *(v27 + 2) + 1, 1, v27);
  }

  v114 = *(v27 + 2);
  v113 = *(v27 + 3);
  if (v114 >= v113 >> 1)
  {
    v27 = sub_225B29AA0((v113 > 1), v114 + 1, 1, v27);
  }

  *(v27 + 2) = v114 + 1;
  v115 = &v27[56 * v114];
  v116 = v144;
  *(v115 + 4) = 0xD000000000000034;
  *(v115 + 5) = v116;
  *(v115 + 6) = 0xD00000000000001CLL;
  *(v115 + 7) = a2;
  *(v115 + 8) = 0xD000000000000017;
  *(v115 + 9) = a1;
  *(v115 + 10) = 794;
  *v21 = v141;
  v117 = v140;
  *(v21 + 1) = v27;
  *(v21 + 2) = v117;
  *(v21 + 3) = v139;
  *(v21 + 4) = v19;
  *(v21 + 5) = v138;
  swift_willThrow();

  return (*(v129 + 8))(v131, v130);
}

uint64_t sub_225A6034C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_8;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v12 < 16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v8)
    {
      if (BYTE6(a2) >= 0x10uLL)
      {
        goto LABEL_16;
      }

LABEL_8:
      v35 = 0x8000000225D19DD0;
      v36 = 0x8000000225D17220;
      v13 = MEMORY[0x277D84F90];
      v14 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v16 = v15;
      v17 = sub_225CCE954();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v7, 1, 1, v17);
      LODWORD(v17) = (*(v18 + 48))(v7, 1, v17);
      sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
      if (v17)
      {
        v19 = 282;
      }

      else
      {
        v19 = 23;
      }

      v20 = sub_225B2C374(v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v20;
      sub_225B2C4A0(v14, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v37);

      v22 = v37;
      v23 = sub_225B29AA0(0, 1, 1, v13);
      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_225B29AA0((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[56 * v25];
      *(v26 + 4) = 0xD00000000000001ELL;
      *(v26 + 5) = 0x8000000225D19DB0;
      v27 = v36;
      *(v26 + 6) = 0xD00000000000001CLL;
      *(v26 + 7) = v27;
      v28 = v35;
      *(v26 + 8) = 0xD00000000000001DLL;
      *(v26 + 9) = v28;
      *(v26 + 10) = 828;
      *v16 = v19;
      *(v16 + 8) = v23;
      *(v16 + 16) = 0xD00000000000001ELL;
      *(v16 + 24) = 0x8000000225D19DB0;
      *(v16 + 32) = v22;
      *(v16 + 40) = 0;
      swift_willThrow();
      return v14;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (HIDWORD(a1) - a1 < 16)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  if (v8 == 2)
  {
    v31 = *(a1 + 16);
    v30 = *(a1 + 24);
    v11 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (!v11)
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    v29 = BYTE6(a2);
    goto LABEL_24;
  }

  if (v8 != 1)
  {
    goto LABEL_23;
  }

  LODWORD(v29) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v29 = v29;
LABEL_24:
  if (__OFSUB__(v29, 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v29 - 16 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v8)
  {
    goto LABEL_34;
  }

  if (v8 != 2)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_34:
    v14 = sub_225CCCFD4();
    sub_225CCCFD4();
    return v14;
  }

  v33 = *(a1 + 16);
  v32 = *(a1 + 24);
  v34 = v32 - v33;
  if (__OFSUB__(v32, v33))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!__OFSUB__(v34, 16))
  {
    if (v34 < v34 - 16)
    {
      __break(1u);
    }

    goto LABEL_34;
  }

LABEL_43:
  __break(1u);
  return result;
}

void *sub_225A6071C(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v144 = a8;
  v143 = a7;
  v147 = a6;
  v146 = a5;
  v152 = a4;
  v151 = a3;
  v156 = a2;
  v153 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v135 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v140 = &v133 - v11;
  v134 = sub_225CCDD74();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v136 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_225CCDD34();
  v148 = *(v145 - 8);
  v13 = MEMORY[0x28223BE20](v145);
  v137 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v149 = &v133 - v15;
  v139 = sub_225CCDC44();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v150 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_225CCD954();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v21 = off_28105B918;
  v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v23));
  v24 = *(v18 + 16);
  v142 = v18 + 16;
  v155 = v22;
  v24(v20, &v21[v22], v17);
  os_unfair_lock_unlock(&v21[v23]);
  v25 = v153;
  v26 = v156;
  sub_2259CB710(v153, v156);
  sub_225B42AA8();
  sub_2259BEF00(v25, v26);
  v27 = *(v18 + 8);
  v154 = v18 + 8;
  v27(v20, v17);
  v28 = v27;
  os_unfair_lock_lock(&v21[v23]);
  v29 = &v21[v22];
  v30 = v17;
  v31 = v17;
  v32 = v24;
  v24(v20, v29, v30);
  os_unfair_lock_unlock(&v21[v23]);
  v33 = v151;
  v34 = v152;
  sub_2259CB710(v151, v152);
  sub_225B42CF4();
  sub_2259BEF00(v33, v34);
  v28(v20, v31);
  os_unfair_lock_lock(&v21[v23]);
  v32(v20, &v21[v155], v31);
  os_unfair_lock_unlock(&v21[v23]);
  v35 = v146;
  v36 = v147;
  sub_2259CB710(v146, v147);
  sub_225B42F40();
  sub_2259BEF00(v35, v36);
  v37 = v154;
  v28(v20, v31);
  os_unfair_lock_lock(&v21[v23]);
  v32(v20, &v21[v155], v31);
  os_unfair_lock_unlock(&v21[v23]);
  v38 = v143;
  v39 = v144;
  sub_2259CB710(v143, v144);
  sub_225B4318C(v20, v38, v39);
  sub_2259BEF00(v38, v39);
  result = (v28)(v20, v31);
  v42 = v156;
  v43 = v156 >> 62;
  if ((v156 >> 62) > 1)
  {
    v44 = v150;
    v45 = v145;
    v46 = v148;
    v47 = v149;
    if (v43 != 2)
    {
      goto LABEL_16;
    }

    v49 = *(v153 + 16);
    v48 = *(v153 + 24);
    v50 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (!v50)
    {
      if (v51 == 16)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v41 = sub_225B29AA0((v51 > 1), v39, 1, v41);
LABEL_51:
    *(v41 + 2) = v39;
    v93 = &v41[56 * v38];
    *(v93 + 4) = v37;
    *(v93 + 5) = v43;
    v94 = v156;
    *(v93 + 6) = 0xD00000000000001CLL;
    *(v93 + 7) = v94;
    v95 = v155;
    *(v93 + 8) = 0xD000000000000017;
    *(v93 + 9) = v95;
    *(v93 + 10) = 809;
    *v47 = v44;
    *(v47 + 1) = v41;
    *(v47 + 2) = v37;
    *(v47 + 3) = v43;
    *(v47 + 4) = v42;
    *(v47 + 5) = 0;
LABEL_52:
    swift_willThrow();
    return v42;
  }

  v44 = v150;
  v45 = v145;
  v46 = v148;
  v47 = v149;
  if (v43)
  {
    v51 = (HIDWORD(v153) - v153);
    if (!__OFSUB__(HIDWORD(v153), v153))
    {
      if (v51 == 16)
      {
        goto LABEL_10;
      }

LABEL_16:
      v39 = 0xD000000000000017;
      v159 = 0;
      v160 = 0xE000000000000000;
      v52 = &v159;
      sub_225CCF204();

      v159 = 0xD000000000000019;
      v160 = 0x8000000225D19D10;
      if (v43 <= 1)
      {
        if (!v43)
        {
          v53 = BYTE6(v42);
          goto LABEL_30;
        }

        LODWORD(v53) = HIDWORD(v153) - v153;
        if (!__OFSUB__(HIDWORD(v153), v153))
        {
          v53 = v53;
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_70;
      }

      v53 = 0;
      if (v43 != 2 || (v55 = *(v153 + 16), v54 = *(v153 + 24), v50 = __OFSUB__(v54, v55), v53 = v54 - v55, !v50))
      {
LABEL_30:
        v157 = v53;
        v60 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v60);

        MEMORY[0x22AA6CE70](0x20746F6E20736920, 0xE800000000000000);
        v157 = 16;
        v61 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v61);

        v63 = v159;
        v62 = v160;
        v156 = 0x8000000225D17220;
        v155 = 0x8000000225D19D30;
        v64 = MEMORY[0x277D84F90];
        v65 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v67 = v66;
        v68 = sub_225CCE954();
        v69 = *(v68 - 8);
        v70 = v140;
        (*(v69 + 56))(v140, 1, 1, v68);
        LODWORD(v68) = (*(v69 + 48))(v70, 1, v68);
        sub_2259CB640(v70, &unk_27D73B050, &unk_225CD3AD0);
        if (v68)
        {
          v71 = 282;
        }

        else
        {
          v71 = 23;
        }

        v72 = sub_225B2C374(v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v159 = v72;
        sub_225B2C4A0(v65, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v159);

        v42 = v159;
        v74 = sub_225B29AA0(0, 1, 1, v64);
        v76 = *(v74 + 2);
        v75 = *(v74 + 3);
        if (v76 >= v75 >> 1)
        {
          v74 = sub_225B29AA0((v75 > 1), v76 + 1, 1, v74);
        }

        *(v74 + 2) = v76 + 1;
        v77 = &v74[56 * v76];
        *(v77 + 4) = v63;
        *(v77 + 5) = v62;
        v78 = v156;
        *(v77 + 6) = 0xD00000000000001CLL;
        *(v77 + 7) = v78;
        v79 = v155;
        *(v77 + 8) = 0xD000000000000017;
        *(v77 + 9) = v79;
        *(v77 + 10) = 806;
        *v67 = v71;
        *(v67 + 8) = v74;
        *(v67 + 16) = v63;
        *(v67 + 24) = v62;
        *(v67 + 32) = v42;
        *(v67 + 40) = 0;
        goto LABEL_52;
      }

      __break(1u);
LABEL_23:
      if (v43 == 2)
      {
        v57 = v151[2];
        v56 = v151[3];
        v50 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (!v50)
        {
          if (v58 == 12)
          {
            goto LABEL_26;
          }

          goto LABEL_38;
        }

        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      goto LABEL_38;
    }

    goto LABEL_67;
  }

  if (BYTE6(v156) != 16)
  {
    goto LABEL_16;
  }

LABEL_10:
  v43 = v152 >> 62;
  if ((v152 >> 62) > 1)
  {
    goto LABEL_23;
  }

  if (v43)
  {
    if (!__OFSUB__(HIDWORD(v151), v151))
    {
      if (HIDWORD(v151) - v151 == 12)
      {
LABEL_26:
        v159 = v153;
        v160 = v42;
        sub_2259CB710(v153, v42);
        sub_225CCDC24();
        v159 = v151;
        v160 = v152;
        sub_2259CB710(v151, v152);
        sub_2259DB42C();
        v59 = v141;
        sub_225CCDD14();
        v42 = v59;
        if (!v59)
        {
          v96 = sub_225A6034C(v38, v39);
          v98 = v97;
          v100 = v99;
          v102 = v101;
          (*(v46 + 16))(v137, v149, v45);
          v159 = v96;
          v160 = v98;
          v157 = v100;
          v158 = v102;
          v155 = v96;
          v103 = v96;
          v104 = v98;
          sub_2259CB710(v103, v98);
          v156 = v100;
          sub_2259CB710(v100, v102);
          sub_225CCDD64();
          v130 = v156;
          v131 = v102;
          v132 = v155;
          v159 = v146;
          v160 = v147;
          v42 = sub_225CCDCD4();
          sub_2259BEF00(v130, v131);
          sub_2259BEF00(v132, v104);
          (*(v133 + 8))(v136, v134);
          (*(v148 + 8))(v149, v45);
          (*(v138 + 8))(v44, v139);
          return v42;
        }

        v154 = 0;
        v153 = "AES GCM failed: key size ";
        v105 = v59;
        v106 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v156 = swift_allocError();
        v43 = v107;
        swift_getErrorValue();
        v108 = v165;
        v109 = v59;
        sub_225B21FAC(v108, &v159);

        v52 = v160;
        v155 = 0x8000000225D19D70;
        if (v160)
        {
          v152 = v159;
          v151 = v161;
          v149 = v162;
          v110 = v163;
          v38 = v164;
        }

        else
        {
          v159 = v59;
          v111 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
          sub_2259E4540();
          if (swift_dynamicCast())
          {
            v112 = v157;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_225CD30F0;
            *(inited + 32) = 20;
            v114 = [v112 code];
            v115 = MEMORY[0x277D83BF8];
            *(inited + 64) = MEMORY[0x277D83B88];
            *(inited + 72) = v115;
            *(inited + 40) = v114;
            v110 = sub_225B2C374(inited);
            swift_setDeallocating();
            sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

            v116 = v59;
            v149 = 0;
            v151 = 0;
            v52 = MEMORY[0x277D84F90];
            v152 = 282;
            v38 = v59;
          }

          else
          {
            v159 = v59;
            v117 = v59;
            v118 = sub_225CCE954();
            v119 = v135;
            v120 = swift_dynamicCast();
            v121 = *(v118 - 8);
            (*(v121 + 56))(v119, v120 ^ 1u, 1, v118);
            LODWORD(v121) = (*(v121 + 48))(v119, 1, v118);
            sub_2259CB640(v119, &unk_27D73B050, &unk_225CD3AD0);
            if (v121)
            {
              v122 = 282;
            }

            else
            {
              v122 = 23;
            }

            v152 = v122;
            v52 = MEMORY[0x277D84F90];
            v110 = sub_225B2C374(MEMORY[0x277D84F90]);
            v123 = v59;
            v151 = 0xD000000000000034;
            v38 = v59;
            v149 = 0x8000000225D19D70;
          }
        }

        v45 = 0x8000000225D17220;
        v46 = v153 | 0x8000000000000000;
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v159 = v110;
        sub_225B2C4A0(v106, sub_225B2AC40, 0, v124, &v159);

        v37 = v159;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_63:
          v126 = *(v52 + 2);
          v125 = *(v52 + 3);
          if (v126 >= v125 >> 1)
          {
            v52 = sub_225B29AA0((v125 > 1), v126 + 1, 1, v52);
          }

          *(v52 + 2) = v126 + 1;
          v127 = &v52[56 * v126];
          v128 = v155;
          *(v127 + 4) = 0xD000000000000034;
          *(v127 + 5) = v128;
          *(v127 + 6) = 0xD00000000000001CLL;
          *(v127 + 7) = v45;
          *(v127 + 8) = 0xD000000000000017;
          *(v127 + 9) = v46;
          *(v127 + 10) = 821;
          *v43 = v152;
          v129 = v151;
          *(v43 + 8) = v52;
          *(v43 + 16) = v129;
          *(v43 + 24) = v149;
          *(v43 + 32) = v37;
          *(v43 + 40) = v38;
          swift_willThrow();

          (*(v138 + 8))(v150, v139);
          return v42;
        }

LABEL_70:
        v52 = sub_225B29AA0(0, *(v52 + 2) + 1, 1, v52);
        goto LABEL_63;
      }

      goto LABEL_38;
    }

    goto LABEL_72;
  }

  if (BYTE6(v152) == 12)
  {
    goto LABEL_26;
  }

LABEL_38:
  v159 = 0;
  v160 = 0xE000000000000000;
  sub_225CCF204();

  v159 = 0xD00000000000001BLL;
  v160 = 0x8000000225D19D50;
  if (v43 > 1)
  {
    v81 = 0;
    if (v43 != 2)
    {
      goto LABEL_47;
    }

    v80 = v151[2];
    v82 = v151[3];
    v50 = __OFSUB__(v82, v80);
    v81 = v82 - v80;
    if (!v50)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  else
  {
    v80 = v151;
    if (!v43)
    {
      v81 = BYTE6(v152);
      goto LABEL_47;
    }
  }

  LODWORD(v81) = HIDWORD(v80) - v80;
  if (!__OFSUB__(HIDWORD(v80), v80))
  {
    v81 = v81;
LABEL_47:
    v157 = v81;
    v83 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v83);

    MEMORY[0x22AA6CE70](0x20746F6E20736920, 0xE800000000000000);
    v157 = 12;
    v84 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v84);

    v37 = v159;
    v43 = v160;
    v156 = 0x8000000225D17220;
    v155 = 0x8000000225D19D30;
    v85 = MEMORY[0x277D84F90];
    v86 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v47 = v87;
    v88 = sub_225CCE954();
    v89 = *(v88 - 8);
    v90 = v140;
    (*(v89 + 56))(v140, 1, 1, v88);
    LODWORD(v88) = (*(v89 + 48))(v90, 1, v88);
    sub_2259CB640(v90, &unk_27D73B050, &unk_225CD3AD0);
    if (v88)
    {
      LOWORD(v44) = 282;
    }

    else
    {
      LOWORD(v44) = 23;
    }

    v91 = sub_225B2C374(v85);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v91;
    sub_225B2C4A0(v86, sub_225B2AC40, 0, v92, &v159);

    v42 = v159;
    v41 = sub_225B29AA0(0, 1, 1, v85);
    v38 = *(v41 + 2);
    v51 = *(v41 + 3);
    v39 = v38 + 1;
    if (v38 < v51 >> 1)
    {
      goto LABEL_51;
    }

    goto LABEL_68;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_225A61BC0()
{
  result = qword_27D73B550;
  if (!qword_27D73B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B550);
  }

  return result;
}

unint64_t sub_225A61C18()
{
  result = qword_27D73B558[0];
  if (!qword_27D73B558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D73B558);
  }

  return result;
}

void sub_225A61C6C(uint64_t a1)
{
  sub_225A62224(319, &qword_27D73B5E0, &type metadata for EncryptedMessageEntity);
  if (v1 <= 0x3F)
  {
    sub_225A62224(319, qword_27D73B5E8, &type metadata for HPKEParams);
    if (v2 <= 0x3F)
    {
      sub_225A62224(319, &qword_28105B790, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        sub_225CCEFC4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_225A61D64(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 120) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *&a1[v11];
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *&a1[v11];
      if (!*&a1[v11])
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0xFE)
      {
        v18 = (*(v4 + 48))((((((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (v17 >= 2)
        {
          return v17 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = a1[v11];
  if (!a1[v11])
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}