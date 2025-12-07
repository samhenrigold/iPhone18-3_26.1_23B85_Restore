uint64_t sub_21AEDEAC4()
{
  sub_21AEE2818();
  sub_21AEE22E4();
  v4 = v3;
  sub_21AEE1D9C();
  *v5 = v4;
  v6 = *v2;
  sub_21AEE1F6C();
  *v7 = v6;
  *(v4 + 584) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 592) = v1;
  }

  sub_21AEE23FC();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21AEDEBDC()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 440);
  v3 = *(v0 + 432);
  v106 = *(v0 + 424);
  v105 = *(v0 + 416);
  *(v0 + 368) = *(v0 + 592);
  v4 = sub_21AF0997C();
  sub_21AEE2538();
  swift_getWitnessTable();
  sub_21AF0993C();
  v5 = *(v0 + 88);
  sub_21AEAF9B0((v0 + 56), *(v0 + 80));
  v6 = sub_21AEE2064();
  v7(v6, v5);
  v8 = sub_21AEEC484();
  v102 = v9;
  v103 = v8;

  v10 = *(v0 + 352);
  *(v0 + 376) = v10;
  v11 = swift_task_alloc();
  *(v11 + 16) = v3;
  *(v11 + 24) = v2;

  sub_21AEE1A6C();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_21AED3450(sub_21AEE1644, v11, v4, v1, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  *(v0 + 384) = v10;
  v15 = swift_task_alloc();
  *(v15 + 16) = v3;
  *(v15 + 24) = v2;
  v16 = sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
  v18 = sub_21AED3450(sub_21AEE1664, v15, v4, v16, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(0xD000000000000011, 0x800000021AF0FD60, v103, v102, v14, v18, v105, v106);

  sub_21AEA79F0((v0 + 56));
  if (*(v0 + 360) == sub_21AF0992C())
  {
    v19 = *(v0 + 536);
    v20 = *(v0 + 464);
    v21 = *(v0 + 408);

    *(v0 + 392) = v10;
    sub_21AEE201C();
    *(v0 + 600) = v24(v22, v23);
    *(v0 + 336) = v20;
    *(v0 + 344) = v19;
    sub_21AEE17F4();
    *(v0 + 608) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE204C();
    v25 = sub_21AF0989C();
    *(v0 + 400) = v25;
    sub_21AEE204C();
    if (v25 == sub_21AF0992C())
    {
      sub_21AEE2728();

      sub_21AEE24D4();
      sub_21AEE2FA0();

      __asm { BRAA            X2, X16 }
    }

    sub_21AEE2C80(v0 + 392, v0 + 296);
    *(v0 + 616) = v10;
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE20C0();
    sub_21AEE21D0();
    sub_21AF098BC();
    if (v21)
    {
      v55 = sub_21AEE27B0();
      sub_21AEE15E0(v55, v0 + 136);
      sub_21AEE201C();
      sub_21AF0996C();
      sub_21AE9641C((v0 + 136), v0 + 176);
      if (qword_27CD3D2C0 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_21AEE201C();
      sub_21AF09C7C();
      __break(1u);
    }

    sub_21AEE1934(&qword_27CD3D2C0);
LABEL_12:
    v56 = *(v0 + 504);
    v57 = *(v0 + 488);
    v58 = sub_21AEE26A8();
    *(v0 + 624) = sub_21AEA7958(v58, qword_27CD3EC20);
    *(v0 + 632) = *(v56 + 16);
    *(v0 + 640) = (v56 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v59 = sub_21AEE24E0();
    v60(v59);
    sub_21AEE2D40();
    v61 = sub_21AEE24C8();
    v62(v61);
    sub_21AEE15E0(v0 + 176, v0 + 216);
    v63 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2824();
    v108 = v63;
    if (os_log_type_enabled(v63, v64))
    {
      v65 = *(v0 + 504);
      v107 = v57;
      v66 = *(v0 + 488);
      v67 = *(v0 + 472);
      v104 = *(v0 + 464);
      sub_21AEB39C8();
      sub_21AEE2234();
      v68 = sub_21AEE1AC8(4.8152e-34);
      v69(v68);
      v70 = *(v67 + 8);
      v70(v66, v104);
      v71 = *(v65 + 8);
      v72 = sub_21AEE2854();
      v71(v72);
      v73 = sub_21AEE2B0C();
      sub_21AECFFFC(v73, v74, v75);
      sub_21AEE2884();
      sub_21AEE1D2C();
      v76 = *(v0 + 240);
      v77 = *(v0 + 248);
      sub_21AEAF9B0((v0 + 216), v76);
      sub_21AEE1A54();
      v78(v76);
      sub_21AEE2EC4();
      sub_21AEE2478();
      v79 = sub_21AEE24C8();
      sub_21AECFFFC(v79, v80, v81);
      sub_21AEE2884();
      sub_21AEE1DAC();

      sub_21AF0992C();
      sub_21AEE2884();
      *(v19 + 24) = v77;
      sub_21AEE2444(&dword_21AE94000, v82, v107, "<requestID: %s> Using post candidates selector %s with %ld candidates");
      sub_21AEE2930(v83, v84, MEMORY[0x277D84F70] + 8);
      sub_21AEE20A4();
      sub_21AEE2250();
    }

    else
    {
      v95 = *(v0 + 504);
      v96 = *(v0 + 472);
      sub_21AEA79F0((v0 + 216));

      v70 = *(v96 + 8);
      v97 = sub_21AEE24BC();
      (v70)(v97);
      v71 = *(v95 + 8);
      v98 = sub_21AEE2034();
      v71(v98);
    }

    *(v0 + 672) = v70;
    *(v0 + 664) = v71;
    sub_21AEE1B50((v0 + 176));

    v99 = swift_task_alloc();
    *(v0 + 680) = v99;
    *v99 = v0;
    sub_21AEE1C94(v99);
    sub_21AEE21E8();
    sub_21AEE2FA0();

    __asm { BRAA            X4, X16 }
  }

  *(v0 + 568) = v10;
  sub_21AEE2E20();
  sub_21AEE2098();
  sub_21AF0990C();
  sub_21AEE20C0();
  sub_21AEE21D0();
  sub_21AF098BC();
  sub_21AEE2E20();
  if (v14)
  {
    v28 = sub_21AEE27B0();
    sub_21AEE15E0(v28, v0 + 16);
    sub_21AEE201C();
    sub_21AF0996C();
    sub_21AE9641C((v0 + 16), v0 + 56);
    if (qword_27CD3D2C0 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
  }

  sub_21AEE1934(&qword_27CD3D2C0);
LABEL_8:
  v29 = sub_21AEE26A8();
  sub_21AEA7958(v29, qword_27CD3EC20);
  v30 = sub_21AEE230C();
  v31(v30);
  v32 = sub_21AEE24C8();
  v33(v32);
  sub_21AEE15E0(v0 + 56, v0 + 96);
  v34 = sub_21AF096AC();
  sub_21AF09AAC();
  sub_21AEE2228();
  if (os_log_type_enabled(v34, v35))
  {
    sub_21AEE2058();
    swift_slowAlloc();
    sub_21AEE1FE4();
    sub_21AEE1AB4(4.8151e-34);
    sub_21AEE2E2C();
    v38(v36, v37);
    v39 = sub_21AEE1FD8();
    v40(v39);
    v41 = sub_21AEE2108();
    v42(v41);
    v43 = sub_21AEE21DC();
    sub_21AECFFFC(v43, v44, v45);
    sub_21AEE2028();

    sub_21AEE1BDC();
    sub_21AEE2D1C();
    v46 = sub_21AEE1E0C();
    v48 = v47(v46);
    sub_21AEA79F0((v0 + 96));
    sub_21AEEC484();
    sub_21AEE207C();
    v49 = sub_21AEE2070();
    sub_21AECFFFC(v49, v50, v51);
    sub_21AEE2884();
    *(v34 + 14) = v48;
    sub_21AEE218C(&dword_21AE94000, v52, v102, "<requestID: %s> Processing candidate pipeline %s");
    sub_21AEE2930(v53, v54, MEMORY[0x277D84F70] + 8);
    sub_21AEE20A4();
    sub_21AEE2000();
  }

  else
  {
    sub_21AEA79F0((v0 + 96));

    v85 = sub_21AEE1FD8();
    v86(v85);
    v87 = sub_21AEE2108();
    v88(v87);
  }

  sub_21AEE1F00((v0 + 56));
  v89 = swift_task_alloc();
  *(v0 + 576) = v89;
  *v89 = v0;
  v89[1] = sub_21AEDEAC4;
  sub_21AEE1994(*(v0 + 408));
  sub_21AEE2FA0();

  return AMLCandidatePipeline.process(context:)(v90, v91, v92);
}

uint64_t sub_21AEDF550()
{
  sub_21AEE2818();
  v2 = *v1;
  sub_21AEE1F6C();
  *v3 = v2;
  v4 = *v1;
  sub_21AEE1D9C();
  *v5 = v4;
  *(v2 + 688) = v6;
  *(v2 + 696) = v0;

  if (v0)
  {
  }

  sub_21AEE246C();

  return MEMORY[0x2822009F8](v7);
}

void sub_21AEDF688()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 632);
  v3 = *(v0 + 464);
  sub_21AEE2BF8();
  *(v0 + 392) = v4;

  sub_21AEE2334();
  v2();
  v5 = sub_21AEE2128();
  v1(v5);
  sub_21AEE15E0(v0 + 176, v0 + 256);
  v6 = sub_21AF096AC();
  LOBYTE(v2) = sub_21AF09AAC();
  if (sub_21AEE2C98(v2))
  {
    v69 = *(v0 + 664);
    v67 = *(v0 + 672);
    sub_21AEB39C8();
    v72 = sub_21AEE1FE4();
    *v3 = 136315650;
    v7 = sub_21AEE21DC();
    v8(v7);
    v9 = sub_21AEE2AF4();
    v67(v9);
    v10 = sub_21AEE2034();
    v69(v10);
    v11 = sub_21AEE2F2C();
    sub_21AECFFFC(v11, v12, v13);
    sub_21AEE2884();
    sub_21AEE1BDC();
    v14 = *(v0 + 280);
    sub_21AEAF9B0((v0 + 256), v14);
    sub_21AEE1A54();
    v16 = v15(v14);
    sub_21AEA79F0((v0 + 256));
    sub_21AEEC484();
    sub_21AEE207C();
    v17 = sub_21AEE2070();
    sub_21AECFFFC(v17, v18, v19);
    sub_21AEE2884();
    *(v3 + 14) = v16;
    *(v3 + 22) = 2048;

    sub_21AF0992C();
    sub_21AEE2180();

    *(v3 + 24) = v16;
    sub_21AEE2324();
    _os_log_impl(v20, v21, v22, v23, v24, 0x20u);
    sub_21AEE2B18(v25, v26, MEMORY[0x277D84F70] + 8);
    sub_21AEE2200();
    sub_21AEE2000();
  }

  else
  {
    v27 = *(v0 + 672);
    v28 = *(v0 + 664);
    sub_21AEA79F0((v0 + 256));

    v29 = sub_21AEB3AB4();
    v27(v29);
    v30 = sub_21AEE2034();
    v28(v30);
  }

  sub_21AEA79F0((v0 + 176));
  sub_21AEC76A0();
  if (*(v0 + 400) == sub_21AF0992C())
  {
    sub_21AEE2FD8();

    sub_21AEE24D4();
    sub_21AEE2F84();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 616) = *(v0 + 688);
  sub_21AEE2098();
  v33 = sub_21AF0990C();
  sub_21AEE21D0();
  sub_21AF098BC();
  if (v33)
  {
    sub_21AEE3038();
    sub_21AF0996C();
    sub_21AE9641C((v0 + 136), v0 + 176);
    if (qword_27CD3D2C0 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_21AEE24E0();
    sub_21AF09C7C();
    __break(1u);
  }

  sub_21AEE1934(&qword_27CD3D2C0);
LABEL_10:
  v34 = *(v0 + 504);
  sub_21AEE2BF8();
  v35 = sub_21AF096CC();
  *(v0 + 624) = sub_21AEA7958(v35, qword_27CD3EC20);
  *(v0 + 632) = *(v34 + 16);
  *(v0 + 640) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v36 = sub_21AEE2034();
  v37(v36);
  sub_21AEE2D40();
  v38 = sub_21AEE2128();
  v39(v38);
  sub_21AEE15E0(v0 + 176, v0 + 216);
  v40 = sub_21AF096AC();
  v41 = sub_21AF09AAC();
  if (os_log_type_enabled(v40, v41))
  {
    v71 = v41;
    v42 = *(v0 + 504);
    v43 = *(v0 + 488);
    v44 = *(v0 + 472);
    v68 = *(v0 + 464);
    sub_21AEB39C8();
    v72 = sub_21AEE2234();
    *v33 = 136315650;
    sub_21AEE24B0();
    v46 = v45();
    v48 = v47;
    v70 = v40;
    v49 = *(v44 + 8);
    v49(v43, v68);
    v50 = *(v42 + 8);
    v51 = sub_21AEE2D64();
    v50(v51);
    sub_21AECFFFC(v46, v48, &v72);
    sub_21AEE2064();

    sub_21AEE1D2C();
    v52 = *(v0 + 240);
    v53 = *(v0 + 248);
    sub_21AEAF9B0((v0 + 216), v52);
    sub_21AEE1A54();
    v54(v52);
    sub_21AEE2EC4();
    sub_21AEE2478();
    v55 = sub_21AEE24C8();
    sub_21AECFFFC(v55, v56, v57);
    sub_21AEE2884();
    sub_21AEE1DAC();

    sub_21AF0992C();
    sub_21AEE2884();
    *(v33 + 24) = v53;
    sub_21AEE2B30(&dword_21AE94000, v70, v71, "<requestID: %s> Using post candidates selector %s with %ld candidates");
    sub_21AEE2B18(v58, v59, MEMORY[0x277D84F70] + 8);
    sub_21AEE2200();
    sub_21AEE2250();
  }

  else
  {
    v60 = *(v0 + 504);
    v61 = *(v0 + 472);
    sub_21AEA79F0((v0 + 216));

    v49 = *(v61 + 8);
    v62 = sub_21AEE24BC();
    (v49)(v62);
    v50 = *(v60 + 8);
    v63 = sub_21AEE2034();
    v50(v63);
  }

  *(v0 + 672) = v49;
  *(v0 + 664) = v50;
  sub_21AEE1B50((v0 + 176));

  v64 = swift_task_alloc();
  *(v0 + 680) = v64;
  *v64 = v0;
  sub_21AEE1C94(v64);
  sub_21AEE21E8();
  sub_21AEE2F84();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_21AEDFD40()
{
  sub_21AEA79F0((v0 + 56));
  sub_21AEE2728();

  sub_21AEE280C();

  return v1();
}

uint64_t sub_21AEDFDE4()
{
  sub_21AEA79F0((v0 + 176));

  sub_21AEE2728();

  sub_21AEE280C();

  return v1();
}

void AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void *a7, void *a8)
{
  v45 = a6;
  v13 = sub_21AEE2F2C();
  if (v14(v13))
  {
    if (a7)
    {
      if (a8)
      {
        v47 = a2;
        v44 = a7;
        v43 = a8;

        MEMORY[0x21CEE4A70](95, 0xE100000000000000);

        v41 = a3;
        v15 = sub_21AEE21DC();
        MEMORY[0x21CEE4A70](v15);

        v42 = sub_21AF097BC();

        v46 = a5;
        sub_21AEE2CBC();
        sub_21AEE24B0();
        swift_getAssociatedTypeWitness();
        sub_21AEE2790();
        v16 = sub_21AF0997C();
        v17 = sub_21AEA7574(&qword_27CD3DA28, &unk_21AF0D130);
        v18 = MEMORY[0x277D83970];
        WitnessTable = swift_getWitnessTable();
        sub_21AEE2E2C();
        v23 = sub_21AEE1684(v20, v21, v22, v18);
        v24 = sub_21AF09E5C();
        v45 = &v41;
        v50[0] = v50[2];
        v50[1] = v50[3];
        MEMORY[0x28223BE20](v24);
        v46 = v16;
        v47 = v17;
        v48 = WitnessTable;
        v49 = v23;
        sub_21AF09C6C();
        sub_21AEA7574(&qword_27CD3DA38, &unk_21AF0CD80);
        swift_getWitnessTable();
        sub_21AEE21E8();
        v33 = sub_21AEE0524(v25, v26, v27, v28, v29, v30, v31, v32);

        sub_21AEE0B00(v33);
        sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
        sub_21AF0971C();
        sub_21AEE2064();

        v35 = v43;
        v34 = v44;
        v36 = v42;
        v37 = [v44 logPipelineAsync:v42 features:v50 metadata:v43 async:1];
      }
    }
  }

  else
  {
    if (qword_27CD3D2C0 != -1)
    {
      sub_21AEE1934(&qword_27CD3D2C0);
    }

    v38 = sub_21AF096CC();
    sub_21AEA7958(v38, qword_27CD3EC20);
    v45 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2824();
    if (os_log_type_enabled(v45, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_21AE94000, v45, a7, "AMLRecommenderPipeline logging disabled", v40, 2u);
      sub_21AEE2200();
    }
  }
}

uint64_t sub_21AEE0260()
{
  sub_21AEE2DE8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(v1, v0, AssociatedTypeWitness);
}

uint64_t sub_21AEE02E0()
{
  sub_21AEE2DE8();
  swift_getAssociatedTypeWitness();
  v2 = sub_21AEE2790();
  *v1 = *(v0 + *(type metadata accessor for AMLCandidateWithFeatures(v2, v3, v4, v5) + 28));
  return swift_unknownObjectRetain();
}

uint64_t sub_21AEE0344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v20 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21AEAF7F0(&unk_27CD3DE90, &unk_21AF0C440);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v19 - v11;
  v13 = *(v10 + 16);
  v13(&v19 - v11, a1, TupleTypeMetadata2);
  swift_unknownObjectRelease();
  v14 = sub_21AF097DC();
  v16 = v15;
  v21 = v20;
  v22 = a3;

  MEMORY[0x21CEE4A70](v14, v16);

  v17 = v22;
  *a5 = v21;
  a5[1] = v17;
  v13(v12, a1, TupleTypeMetadata2);
  a5[2] = *&v12[*(TupleTypeMetadata2 + 48)];
  return (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_21AEE0524(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = a8;
  v9 = v8;
  v78 = a2;
  v79 = a4;
  v77 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21AEA7C90();
  v72 = v14;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v15);
  v65 = a5;
  v66 = &v60 - v16;
  sub_21AEE268C();
  v63 = v17;
  MEMORY[0x28223BE20](v18);
  sub_21AEAD074();
  v75 = (v19 - v20);
  MEMORY[0x28223BE20](v21);
  v73 = &v60 - v22;
  sub_21AF09B7C();
  sub_21AEA7C90();
  v61 = v24;
  v62 = v23;
  MEMORY[0x28223BE20](v23);
  sub_21AEAD074();
  v27 = v25 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v60 - v30;
  MEMORY[0x28223BE20](v29);
  sub_21AEAD074();
  v74 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  sub_21AEE1E2C();
  v71 = v35;
  MEMORY[0x28223BE20](v36);
  sub_21AEA7CA4();
  v70 = v37;
  v69 = a6;
  v80 = swift_getAssociatedTypeWitness();
  sub_21AEA7C90();
  v67 = v38;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v39);
  v41 = &v60 - v40;
  sub_21AEE2B0C();
  v42 = sub_21AF0984C();
  v81 = sub_21AF09CDC();
  sub_21AEE2D70();
  v76 = sub_21AF09CEC();
  sub_21AF09CBC();
  (*(v71 + 16))(v70, v68, a3);
  v79 = v41;
  v71 = a3;
  result = sub_21AF0983C();
  if (v42 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v42)
  {
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_21AF09B8C();
      result = sub_21AEA766C(v31, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v77(v31, v73);
      if (v9)
      {
        v56 = sub_21AEE2BB8();
        v57(v56);

        (*(v63 + 32))(v64, v73, v65);
        v58 = sub_21AEE2D58();
        return v59(v58);
      }

      v9 = 0;
      v44 = sub_21AEE2D58();
      v45(v44);
      sub_21AF09CCC();
      if (!--v42)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v46 = (v72 + 32);
  v47 = v66;
  while (1)
  {
    sub_21AF09B8C();
    if (sub_21AEA766C(v27, 1, AssociatedTypeWitness) == 1)
    {
      v50 = sub_21AEE2BB8();
      v51(v50);
      (*(v61 + 8))(v27, v62);
      return v81;
    }

    (*v46)(v47, v27, AssociatedTypeWitness);
    v77(v47, v75);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v48 = sub_21AEE21DC();
    v49(v48);
    sub_21AF09CCC();
  }

  v52 = sub_21AEE21DC();
  v53(v52);
  v54 = sub_21AEE2BB8();
  v55(v54);

  return (*(v63 + 32))(v64, v75, v65);
}

uint64_t sub_21AEE0B00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_21AEA7574(&qword_27CD3DA40, &qword_21AF0CDB8);
    v1 = sub_21AF09DDC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_21AEE0D34(v2, 1, &v4);

  return v4;
}

id sub_21AEE0BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21AF097BC();

  if (a3)
  {
    v5 = sub_21AF0971C();
  }

  else
  {
    v5 = 0;
  }

  sub_21AEE2CF8();
  v8 = [v6 v7];

  return v8;
}

id sub_21AEE0C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v13 = sub_21AF097BC();

  if (a4)
  {
    v14 = sub_21AF097BC();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_21AF097BC();

  v16 = [v9 initWithBundleIdentifier:v13 modelName:v14 versionId:v15 expirationPolicy:a7 featuresDescription:a8];

  return v16;
}

void sub_21AEE0D34(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_21AF09E7C();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    swift_unknownObjectRetain();
    v11 = sub_21AED0594(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21AEA7574(&qword_27CD3DA48, &qword_21AF0CDC0);
      sub_21AF09D1C();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_21AEE12C8(v14, a2 & 1);
  v16 = sub_21AED0594(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_21AEA7574(&qword_27CD3DA50, &qword_21AF0CDC8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();

    return;
  }

LABEL_22:
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD00000000000001BLL, 0x800000021AF0FDD0);
  sub_21AF09CFC();
  MEMORY[0x21CEE4A70](39, 0xE100000000000000);
  sub_21AF09D5C();
  __break(1u);
}

uint64_t sub_21AEE1018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_21AEA7574(&qword_27CD3DF40, &unk_21AF0CDD0);
  v33 = v4;
  result = sub_21AF09DCC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_21AEF647C(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_21AEAF9F4(v22, v34);
    }

    else
    {
      sub_21AEA784C(v22, v34);
    }

    sub_21AF09EFC();
    sub_21AEE24B0();
    sub_21AF097EC();
    result = sub_21AF09F1C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_21AEAF9F4(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_21AEE12C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_21AEA7574(&qword_27CD3DA40, &qword_21AF0CDB8);
  v34 = v4;
  result = sub_21AF09DCC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_21AEF647C(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    sub_21AF09EFC();
    sub_21AF097EC();
    result = sub_21AF09F1C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21AEE156C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21AEE15E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21AEE1684(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_21AEAF7F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21AEE1934(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_21AEE1BA4()
{
  *(v2 - 112) = v1;
  *(v2 - 120) = v0;

  return swift_slowAlloc();
}

void sub_21AEE1C60()
{
  v2 = v0[182];
  *(v1 - 128) = v0[181];
  *(v1 - 120) = v2;
  *(v1 - 112) = v0[178];
}

uint64_t sub_21AEE1D3C(uint64_t a1)
{
  result = a1 + 48;
  *(v1 - 128) = result;
  return result;
}

uint64_t sub_21AEE1DCC()
{

  return MLFeatureProvider.merging(other:uniquingKeysWith:)(v0);
}

void sub_21AEE1E3C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 120);
  v8 = *(v5 - 112);

  _os_log_impl(a1, v8, v7, a4, v4, 0x16u);
}

uint64_t sub_21AEE1E84()
{
  v3 = v0[143];
  *(v1 - 104) = v0[145];
  *(v1 - 96) = v3;
  *(v1 - 88) = v0[140];
}

double sub_21AEE1F7C()
{
  *(v0 + 1816) = v1;
  *(v0 + 904) = v1;

  return result;
}

uint64_t sub_21AEE1FB0()
{
}

uint64_t sub_21AEE1FE4()
{

  return swift_slowAlloc();
}

void sub_21AEE2000()
{

  JUMPOUT(0x21CEE5A20);
}

uint64_t sub_21AEE207C()
{
}

void sub_21AEE20A4()
{

  JUMPOUT(0x21CEE5A20);
}

void sub_21AEE218C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void sub_21AEE2200()
{

  JUMPOUT(0x21CEE5A20);
}

uint64_t sub_21AEE2234()
{

  return swift_slowAlloc();
}

void sub_21AEE2250()
{

  JUMPOUT(0x21CEE5A20);
}

uint64_t sub_21AEE2340(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return swift_arrayDestroy();
}

uint64_t sub_21AEE2360()
{

  return swift_arrayDestroy();
}

void sub_21AEE23C8()
{

  JUMPOUT(0x21CEE5A20);
}

void sub_21AEE240C()
{
  sub_21AEA79F0((v0 + 376));
}

void sub_21AEE2444(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x20u);
}

uint64_t sub_21AEE2478()
{
}

void sub_21AEE2494()
{

  JUMPOUT(0x21CEE5A20);
}

uint64_t sub_21AEE2550()
{

  return swift_slowAlloc();
}

uint64_t sub_21AEE256C()
{
}

uint64_t sub_21AEE25B0()
{
  *(v2 - 112) = v1;
  *(v2 - 128) = v0;

  return swift_slowAlloc();
}

uint64_t sub_21AEE25F4()
{

  return swift_slowAlloc();
}

void sub_21AEE262C(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x16u);
}

uint64_t sub_21AEE26A8()
{

  return sub_21AF096CC();
}

void sub_21AEE270C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_21AEE273C()
{
  v4 = *(*(v2 - 104) + 880);

  return sub_21AEE156C(v0, v4, v1);
}

void sub_21AEE2760(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 136);

  _os_log_impl(a1, v8, v4, a4, v5, 0x16u);
}

uint64_t sub_21AEE27D0()
{
  *(v1 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + *(v2 + 40) * v3 + *(v4 + 28)) = v0;

  return swift_unknownObjectRelease();
}

uint64_t sub_21AEE2848(uint64_t result)
{
  *(v1 - 128) = result;
  *(v1 - 96) = result;
  return result;
}

uint64_t sub_21AEE2884()
{
}

uint64_t sub_21AEE28B8()
{
}

BOOL sub_21AEE28D0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_21AEE28EC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_21AEE2930(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_21AEE2948@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + v2 * a1;
  v6 = *(v3 - 104) + 176;

  return sub_21AEE15E0(v5 + 32, v6);
}

uint64_t sub_21AEE2978()
{
}

uint64_t sub_21AEE29C4()
{
  v2 = v0[110];
  v0[205] = v2;
  v0[124] = v2;

  return swift_task_alloc();
}

uint64_t sub_21AEE29E4(uint64_t a1)
{
  *(*(v1 - 104) + 1656) = a1;
}

uint64_t sub_21AEE2A04()
{

  return sub_21AEE15E0(v0 + 136, v0 + 536);
}

uint64_t sub_21AEE2A40()
{

  return swift_arrayDestroy();
}

uint64_t sub_21AEE2A60(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return swift_arrayDestroy();
}

uint64_t sub_21AEE2A80()
{

  return swift_beginAccess();
}

uint64_t sub_21AEE2AA0(uint64_t a1)
{
  *(v1 + 1592) = a1;

  return sub_21AF0997C();
}

uint64_t sub_21AEE2B18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

void sub_21AEE2B30(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

uint64_t sub_21AEE2C08()
{
  *(v1 - 112) = *(v0 + 1088);
}

uint64_t sub_21AEE2C4C()
{
}

uint64_t sub_21AEE2C80(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

BOOL sub_21AEE2C98(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_21AEE2D7C()
{

  return swift_task_alloc();
}

uint64_t sub_21AEE2D94()
{

  return MEMORY[0x2821FC2A0](v0);
}

uint64_t sub_21AEE2DB0()
{

  return swift_unknownObjectRelease();
}

double sub_21AEE2DCC(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return result;
}

uint64_t sub_21AEE2E98()
{
  sub_21AEA79F0((v0 + 376));

  return sub_21AEEC484();
}

uint64_t sub_21AEE2EC4()
{
  sub_21AEA79F0((v0 + 216));

  return sub_21AEEC484();
}

uint64_t sub_21AEE2FD8()
{
}

uint64_t sub_21AEE2FF8(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return swift_arrayDestroy();
}

uint64_t sub_21AEE3018()
{

  return swift_getObjectType();
}

uint64_t sub_21AEE3038()
{

  return sub_21AEE15E0(v2 + 40 * v0 + 32, v1 + 136);
}

uint64_t sub_21AEE3058()
{

  return sub_21AF098BC();
}

BOOL sub_21AEE3078(uint64_t a1, os_log_type_t a2)
{
  *(v3 - 128) = v2;

  return os_log_type_enabled(v2, a2);
}

uint64_t sub_21AEE3090()
{

  return sub_21AEE15E0(v0 + 576, v0 + 376);
}

uint64_t sub_21AEE30A8()
{

  return swift_task_alloc();
}

uint64_t sub_21AEE30C0()
{

  return swift_unknownObjectRetain();
}

uint64_t sub_21AEE30D8()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EB88);
  sub_21AEA7958(v0, qword_27CD3EB88);
  return sub_21AF096BC();
}

id sub_21AEE3158(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, char a6)
{
  v7 = v6;
  sub_21AF0959C();
  sub_21AEA7C90();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_21AEC7554();
  v15 = v14 - v13;
  if (a6)
  {
    v47 = v12;
    sub_21AF0958C();
    sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_21AF0C5D0;
    sub_21AF09C5C();

    v51[0] = 0xD000000000000011;
    v51[1] = 0x800000021AF0FE50;
    sub_21AF0957C();
    v17 = sub_21AF094CC();
    MEMORY[0x21CEE4A70](v17);

    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 32) = v51[0];
    *(v16 + 40) = v51[1];
    sub_21AEC76AC(v16);

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21AF0C5D0;
    sub_21AF09C5C();

    strcpy(v51, "FeedbackData:\n");
    HIBYTE(v51[1]) = -18;
    v19 = sub_21AF094CC();
    MEMORY[0x21CEE4A70](v19);

    v20 = v51[0];
    v21 = v51[1];
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 32) = v20;
    *(v18 + 40) = v21;
    sub_21AEC76AC(v18);

    (*(v10 + 8))(v15, v47);
  }

  v51[0] = MEMORY[0x277D84F90];
  result = [objc_allocWithZone(AMLUserLevelPhotosSearchMetrics) init];
  if (result)
  {
    v23 = result;
    sub_21AEE3EC4();
    [v23 setCoverageDaily_];
    sub_21AEE3ED0();
    [v23 setCoverageWeekly_];
    v24 = sub_21AEE58E8();
    sub_21AEE4018(v24, v25, v26);
    [v23 setNdcgDaily_];
    v27 = sub_21AEE58E8();
    sub_21AEE3FE4(v27, v28, v29);
    [v23 setNdcgWeekly_];
    v30 = sub_21AEE58E8();
    sub_21AEE4840(v30, v31, v32);
    [v23 setTtrDaily_];
    v33 = sub_21AEE58E8();
    sub_21AEE480C(v33, v34, v35);
    [v23 setTtrWeekly_];
    sub_21AEE57A8(3157553, 0xE300000000000000, v23, &selRef_setMetricDefinitionVersion_);
    sub_21AEE57A8(0x616E206C65646F6DLL, 0xEA0000000000656DLL, v23, &selRef_setModelName_);
    [v23 setIsProductionModel_];
    if (qword_27CD3D280 != -1)
    {
      swift_once();
    }

    v36 = sub_21AF096CC();
    sub_21AEA7958(v36, qword_27CD3EB88);

    v37 = sub_21AF096AC();
    v38 = sub_21AF09A8C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_21AECFFFC(a3, a4, &v52);
      _os_log_impl(&dword_21AE94000, v37, v38, "Perform photos search metrics payload upload to CA. Incoming: %s", v39, 0xCu);
      sub_21AEA79F0(v40);
      MEMORY[0x21CEE5A20](v40, -1, -1);
      MEMORY[0x21CEE5A20](v39, -1, -1);
    }

    [v23 setUiSurface_];
    sub_21AEE57A8(0xD000000000000016, 0x800000021AF0FDF0, v23, &selRef_setTrialDeploymentId_);
    sub_21AEE57A8(0xD000000000000017, 0x800000021AF0FE10, v23, &selRef_setTrialExperimentId_);
    sub_21AEE57A8(0xD000000000000015, 0x800000021AF0FE30, v23, &selRef_setTrialTreatmentId_);
    v41 = v23;
    MEMORY[0x21CEE4AD0]();
    if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21AF098CC();
    }

    sub_21AF0991C();
    v42 = v51[0];
    if (a5)
    {
      v43 = *(v7 + OBJC_IVAR____TtC6AeroML32AMLPhotosSearchPoirotUserMetrics_caDomain);
      v44 = *(v7 + OBJC_IVAR____TtC6AeroML32AMLPhotosSearchPoirotUserMetrics_caDomain + 8);
      v45 = swift_allocObject();
      *(v45 + 16) = v41;
      v46 = v41;
      sub_21AEE3B4C(v43, v44, sub_21AEE5814, v45);
    }

    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21AEE374C(void *a1)
{
  sub_21AEA7574(&qword_27CD3DA60, &qword_21AF0CE38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AF0CDE0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000021AF0FF00;
  v3 = [a1 isProductionModel];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x6D614E6C65646F6DLL;
  *(inited + 64) = 0xE900000000000065;
  result = [a1 modelName];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 72) = result;
  *(inited + 80) = 0x796C696144727474;
  *(inited + 88) = 0xE800000000000000;
  [a1 ttrDaily];
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 104) = 0x6C6B656557727474;
  *(inited + 112) = 0xE900000000000079;
  [a1 ttrWeekly];
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  strcpy((inited + 128), "coverageDaily");
  *(inited + 142) = -4864;
  [a1 coverageDaily];
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  strcpy((inited + 152), "coverageWeekly");
  *(inited + 167) = -18;
  [a1 coverageWeekly];
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 176) = 0x6C6961446763646ELL;
  *(inited + 184) = 0xE900000000000079;
  [a1 ndcgDaily];
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 200) = 0x6B6565576763646ELL;
  *(inited + 208) = 0xEA0000000000796CLL;
  [a1 ndcgWeekly];
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x800000021AF0FF20;
  result = [a1 metricDefinitionVersion];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(inited + 240) = result;
  *(inited + 248) = 0x6361667275536975;
  *(inited + 256) = 0xE900000000000065;
  v11 = [a1 uiSurface];
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = 0x800000021AF0FF40;
  result = [a1 trialDeploymentId];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(inited + 288) = result;
  *(inited + 296) = 0xD000000000000011;
  *(inited + 304) = 0x800000021AF0FF60;
  result = [a1 trialExperimentId];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(inited + 312) = result;
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = 0x800000021AF0FF80;
  result = [a1 trialTreatmentId];
  if (result)
  {
    *(inited + 336) = result;
    sub_21AEE58A4();
    return sub_21AF0974C();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21AEE3B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_21AEE3BC4(a1, a2, a3, a4);

  return MEMORY[0x2821F9378](v8);
}

void sub_21AEE3BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21AF097BC();
  v17[4] = a3;
  v17[5] = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21AEF85DC;
  v17[3] = &unk_282C81500;
  v7 = _Block_copy(v17);

  v8 = AnalyticsSendEventLazy();
  _Block_release(v7);

  if (qword_27CD3D280 != -1)
  {
    swift_once();
  }

  v9 = sub_21AF096CC();
  sub_21AEA7958(v9, qword_27CD3EB88);
  v10 = sub_21AF096AC();
  v11 = sub_21AF09A8C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    if (v8)
    {
      v14 = 0x6673736563637553;
    }

    else
    {
      v14 = 0x742064656C696146;
    }

    if (v8)
    {
      v15 = 0xEC000000796C6C75;
    }

    else
    {
      v15 = 0xE90000000000006FLL;
    }

    v16 = sub_21AECFFFC(v14, v15, v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21AE94000, v10, v11, "%s sent data to CoreAnalytics", v12, 0xCu);
    sub_21AEA79F0(v13);
    MEMORY[0x21CEE5A20](v13, -1, -1);
    MEMORY[0x21CEE5A20](v12, -1, -1);
  }
}

uint64_t sub_21AEE3DE0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD000000000000019 && 0x800000021AF0F840 == a2)
  {
    return 2;
  }

  sub_21AEE2460();
  if (sub_21AF09E4C())
  {
    return 2;
  }

  if (a1 == 0xD000000000000013 && 0x800000021AF0F860 == a2)
  {
    return 1;
  }

  sub_21AEE2460();
  if (sub_21AF09E4C())
  {
    return 1;
  }

  if (a1 == 0xD000000000000011 && 0x800000021AF0F880 == a2)
  {
    return 1;
  }

  sub_21AEE2460();
  return (sub_21AF09E4C() & 1) != 0;
}

double sub_21AEE3EDC(double a1)
{
  v1 = sub_21AF093FC();
  sub_21AEA7C90();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_21AEAD074();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_21AF093EC();
  sub_21AF0938C();
  v8 = *(v3 + 8);
  v9 = sub_21AEE2460();
  v8(v9);
  sub_21AF0936C();
  (v8)(v7, v1);
  return 1.0;
}

uint64_t sub_21AEE404C(double a1, uint64_t a2, uint64_t a3, int a4)
{
  v115 = sub_21AF0952C();
  sub_21AEA7C90();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_21AEC7554();
  v114 = v10 - v9;
  v120 = sub_21AF0957C();
  sub_21AEA7C90();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_21AEAD074();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v103 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v121 = &v103 - v22;
  MEMORY[0x28223BE20](v21);
  v23 = sub_21AEE5934();
  v119 = a4;
  sub_21AEB4E44(a4, v4);
  v107 = v4;
  sub_21AEB3BEC(v4);
  v25 = v24;
  v106 = *(v24 + 16);
  if (v106)
  {
    v26 = 0;
    v105 = v24 + 32;
    v113 = (v7 + 8);
    v103 = v12;
    v118 = (v12 + 8);
    v27 = MEMORY[0x277D84F90];
    v111 = v16;
    v110 = v20;
    v109 = v23;
    v104 = v24;
    while (v26 < *(v25 + 16))
    {
      v108 = v26;

      v28 = v121;
      v29 = sub_21AEE2460();
      sub_21AEB908C(v29, v30, v107, v31, v32, v33, v34, v35, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);

      sub_21AEB41A0(v28);
      v42 = v36;
      v117 = *(v36 + 16);
      if (v117)
      {
        v43 = 0;
        v116 = v36 + 32;
        v112 = v36;
        while (v43 < v42[2])
        {
          v122 = v27;
          v44 = v119;
          sub_21AEBCC44(*(v116 + 8 * v43), v121, v119 & 1, v37, v38, v39, v40, v41, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
          sub_21AEB4470(v20, v44 & 1);
          v46 = v45;
          sub_21AEC0F7C(v20, v44 & 1);
          v47 = v114;
          sub_21AF0954C();
          v48 = sub_21AF0950C();
          (*v113)(v47, v115);
          if (v48)
          {
            sub_21AEC09AC(v16);
            v50 = isUniquelyReferenced_nonNull_native;
            v51 = *(v46 + 16);
            if (v51)
            {
              v52 = (v46 + 40);
              v53 = MEMORY[0x277D84F90];
              do
              {
                v42 = &v103;
                v54 = *v52;
                v123[0] = *(v52 - 1);
                v123[1] = v54;
                MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
                *(&v103 - 2) = v123;

                v55 = sub_21AEF6524(sub_21AEACF38, (&v103 - 4), v50);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (v55)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v60 = sub_21AEAD04C();
                    sub_21AEACA34(v60, v61, v62, v53);
                    v53 = isUniquelyReferenced_nonNull_native;
                  }

                  v57 = *(v53 + 2);
                  v56 = *(v53 + 3);
                  v58 = v57 + 1;
                  v59 = 1.0;
                }

                else
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v63 = sub_21AEAD04C();
                    sub_21AEACA34(v63, v64, v65, v53);
                    v53 = isUniquelyReferenced_nonNull_native;
                  }

                  v57 = *(v53 + 2);
                  v56 = *(v53 + 3);
                  v58 = v57 + 1;
                  v59 = 0.0;
                }

                if (v57 >= v56 >> 1)
                {
                  sub_21AEACA34(v56 > 1, v58, 1, v53);
                  v53 = isUniquelyReferenced_nonNull_native;
                }

                *(v53 + 2) = v58;
                *&v53[8 * v57 + 32] = v59;
                v52 += 2;
                --v51;
              }

              while (v51);
            }

            else
            {
              v53 = MEMORY[0x277D84F90];
            }

            v67 = *(v53 + 2);
            if (v67)
            {
              v68 = (v53 + 32);
              v69 = 1.0;
              v70 = 0.0;
              v27 = v122;
              do
              {
                v71 = *v68++;
                v69 = v69 + 1.0;
                v70 = v70 + v71 / log2(v69);
                --v67;
              }

              while (v67);
            }

            else
            {
              v70 = 0.0;
              v27 = v122;
            }

            v123[0] = v53;

            sub_21AEE4E60(v123);
            v72 = v123[0];
            v73 = *(v123[0] + 2);
            v74 = 32;
            v16 = v111;
            v20 = v110;
            while (v73)
            {
              v75 = *&v123[0][v74];
              v74 += 8;
              --v73;
              if (v75 != 0.0)
              {

                v53 = *(v72 + 2);
                if (v53)
                {
                  v76 = 1.0;
                  v77 = 0.0;
                  v78 = 32;
                  do
                  {
                    v79 = *&v72[v78];
                    v76 = v76 + 1.0;
                    v77 = v77 + v79 / log2(v76);
                    v78 += 8;
                    --v53;
                  }

                  while (v53);

                  v80 = v70 / v77;
                }

                else
                {

                  v80 = v70 / 0.0;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v93 = sub_21AEAD04C();
                  sub_21AEACA34(v93, v94, v95, v27);
                  v27 = v96;
                }

                v85 = *(v27 + 16);
                v84 = *(v27 + 24);
                if (v85 >= v84 >> 1)
                {
                  sub_21AEE5910(v84);
                  v27 = v92;
                }

                v86 = sub_21AEE58F8();
                MEMORY[0](v86);
                MEMORY[0](v20, v42);
                *(v27 + 16) = v85 + 1;
                *(v27 + 8 * v85 + 32) = v80;
                goto LABEL_46;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v87 = sub_21AEAD04C();
              sub_21AEACA34(v87, v88, v89, v27);
              v27 = v90;
            }

            v82 = *(v27 + 16);
            v81 = *(v27 + 24);
            if (v82 >= v81 >> 1)
            {
              sub_21AEE5910(v81);
              v27 = v91;
            }

            v83 = sub_21AEE58F8();
            (v53)(v83);
            (v53)(v20, v42);
            *(v27 + 16) = v82 + 1;
            *(v27 + 8 * v82 + 32) = 0;
LABEL_46:
            v42 = v112;
          }

          else
          {

            v53 = *v118;
            v66 = v120;
            (*v118)(v16, v120);
            (v53)(v20, v66);
            v27 = v122;
          }

          if (++v43 == v117)
          {

            v25 = v104;
            goto LABEL_50;
          }
        }

        __break(1u);
        break;
      }

      v53 = *v118;
LABEL_50:
      v97 = v108 + 1;
      (v53)(v121, v120);
      v26 = v97;
      if (v97 == v106)
      {

        v12 = v103;
        goto LABEL_53;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
LABEL_53:
    v98 = *(v27 + 16);
    if (v98)
    {
      v99 = (v27 + 32);
      v100 = 0.0;
      do
      {
        v101 = *v99++;
        v100 = v100 + v101;
        --v98;
      }

      while (v98);
    }

    (*(v12 + 8))(v107, v120);
  }

  return result;
}

uint64_t sub_21AEE4874(double a1, uint64_t a2, uint64_t a3, uint64_t a4, double (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, double))
{
  v10 = sub_21AF093FC();
  sub_21AEA7C90();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_21AEAD074();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_21AF093EC();
  sub_21AF0938C();
  v20 = *(v12 + 8);
  v21 = v20(v16, v10);
  v22 = a5(v21);
  v23 = v20(v19, v10);
  return a6(v23, a3, a4, v22);
}

void sub_21AEE49B8(double a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sub_21AF0952C();
  sub_21AEA7C90();
  v68 = v7;
  MEMORY[0x28223BE20](v8);
  sub_21AEC7554();
  v11 = v10 - v9;
  v12 = sub_21AF0957C();
  sub_21AEA7C90();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_21AEAD074();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v59 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v72 = &v59 - v24;
  MEMORY[0x28223BE20](v23);
  v25 = sub_21AEE5934();
  sub_21AEB4E44(a4, v4);
  v65 = v4;
  sub_21AEB3BEC(v4);
  v27 = v26;
  v64 = *(v26 + 16);
  if (v64)
  {
    v60 = v22;
    v61 = v18;
    v73 = v25;
    v28 = 0;
    v62 = v11;
    v63 = v26 + 32;
    ++v68;
    v69 = v6;
    v29 = (v14 + 8);
    v30 = 0.0;
    v31 = 0.0;
    v32 = v72;
    v59 = v26;
    v71 = a4;
    v70 = v12;
    while (v28 < *(v27 + 16))
    {
      v33 = (v63 + 16 * v28);
      v34 = v29;
      v35 = *v33;
      v36 = v33[1];

      sub_21AEB908C(v35, v36, v65, a4 & 1, v37, v38, v39, v40, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);

      sub_21AEB41A0(v32);
      v29 = v34;
      v47 = v46;
      v48 = *(v46 + 16);
      if (v48)
      {
        v66 = v28;
        v67 = v34 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v49 = 32;
        v51 = v61;
        v50 = v62;
        v52 = v60;
        v53 = v34;
        do
        {
          v54 = v71;
          sub_21AEBCC44(*(v47 + v49), v72, v71 & 1, v41, v42, v43, v44, v45, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
          sub_21AEC0F7C(v52, v54 & 1);
          sub_21AF0954C();
          v55 = sub_21AF0950C();
          (*v68)(v50, v69);
          v56 = *v53;
          v57 = v70;
          (*v53)(v51, v70);
          v56(v52, v57);
          if (v55 > 0)
          {
            v31 = v31 + 1.0;
          }

          else
          {
            v30 = v30 + 1.0;
          }

          v49 += 8;
          --v48;
        }

        while (v48);

        v58 = v70;
        LOBYTE(a4) = v71;
        v28 = v66;
        v32 = v72;
        v27 = v59;
        v29 = v53;
      }

      else
      {

        v56 = *v34;
        v58 = v12;
      }

      ++v28;
      v12 = v58;
      (v56)(v32);
      if (v28 == v64)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

    v56 = *(v14 + 8);
LABEL_15:
    v56(v65, v12);
  }
}

id AMLPhotosSearchPoirotUserMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchPoirotUserMetrics.init()()
{
  v1 = &v0[OBJC_IVAR____TtC6AeroML32AMLPhotosSearchPoirotUserMetrics_caDomain];
  *v1 = 0xD00000000000002DLL;
  *(v1 + 1) = 0x800000021AF0FE70;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AMLPhotosSearchPoirotUserMetrics();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AMLPhotosSearchPoirotUserMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchPoirotUserMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21AEE4E60(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21AEFBDB8(v2, v3, v4, v5);
  }

  v6 = *(v2 + 2);
  v8[0] = (v2 + 32);
  v8[1] = v6;
  result = sub_21AEE4ECC(v8);
  *a1 = v2;
  return result;
}

uint64_t sub_21AEE4ECC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AEE501C(v7, v8, a1, v4);
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
    return sub_21AEE4FC0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AEE4FC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AEE501C(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v10 < v9) ^ (v12 >= *(*a3 + 8 * v11++));
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v10 < v9)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
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

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*v26 >= v24)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEAC638();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_21AEAC638();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
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

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_21AEE55F8((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_21AEE54CC(&v79, *result, a3);
LABEL_89:
}

uint64_t sub_21AEE54CC(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_21AEE55F8((*a3 + 8 * *v12), (*a3 + 8 * *v14), (*a3 + 8 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21AEE55F8(char *a1, char *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_21AE965B0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v4 >= *v6)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_21AE965B0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (*v14 < v16)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

void sub_21AEE57A8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_21AF097BC();

  [a3 *a4];
}

uint64_t sub_21AEE588C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21AEE58A4()
{
  result = qword_27CD3DA68;
  if (!qword_27CD3DA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD3DA68);
  }

  return result;
}

void sub_21AEE5910(unint64_t a1@<X8>)
{

  sub_21AEACA34(a1 > 1, v1, 1, v2);
}

uint64_t sub_21AEE5934()
{

  return type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
}

id AMLPhotosSearchBiomeMetricsUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_21AEE5988()
{
  v1 = [BiomeLibrary() AeroML];
  sub_21AEEA1D4();
  v2 = [v0 RawEvent];
  swift_unknownObjectRelease();
  v3 = [v2 PhotosSearchSession];
  sub_21AEEA1D4();
  return v0;
}

id sub_21AEE5A10()
{
  v1 = [BiomeLibrary() Photos];
  sub_21AEEA1D4();
  v2 = [v0 Search];
  swift_unknownObjectRelease();
  return v2;
}

id AMLPhotosSearchBiomeMetricsUtility.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC6AeroML34AMLPhotosSearchBiomeMetricsUtility_clickedPhotoIds] = &unk_282C806D0;
  *&v1[OBJC_IVAR____TtC6AeroML34AMLPhotosSearchBiomeMetricsUtility_sessionAssetUUIDs] = &unk_282C80AD0;
  *&v1[OBJC_IVAR____TtC6AeroML34AMLPhotosSearchBiomeMetricsUtility_cosDistancesAsset] = &unk_282C80B08;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_21AEE5B34()
{
  sub_21AEAD0C4();
  sub_21AEEA194(v2, v3, v4);
  sub_21AEA7C90();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  sub_21AEEA094();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 16) = MEMORY[0x277D84F90];
  v10 = v8 + 16;
  sub_21AEE9EC8([v0 publisher]);
  sub_21AEE9F10();
  v30 = v11;
  v31 = &unk_282C81550;
  v27 = _Block_copy(v29);
  v12 = sub_21AEE9E90();
  v13(v12);
  sub_21AEE9FE0();
  v14 = swift_allocObject();
  v15 = sub_21AEE9FC4(v14);
  v16(v15);
  *(v1 + v6) = v8;
  sub_21AEE9EA0();
  v30 = sub_21AEE9E10;
  v31 = &unk_282C815A0;
  v17 = _Block_copy(v29);

  v18 = sub_21AEEA168();
  v20 = [v18 v19];
  _Block_release(v17);
  _Block_release(v27);

  sub_21AEEA1B4();
  v21 = *(v8 + 16);
  v22 = *(*v10 + 16);
  if (v22)
  {

    while (v22 <= *(v21 + 16))
    {
      *(v21 + 16 * v22 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEEA0D0();
        sub_21AEAC6EC();
        v9 = v24;
      }

      v23 = *(v9 + 24);
      if (*(v9 + 16) >= v23 >> 1)
      {
        sub_21AEEA0B8(v23);
        sub_21AEAC6EC();
        v9 = v25;
      }

      sub_21AEEA024();
    }

    __break(1u);
  }

  if (v26)
  {
    sub_21AEE888C(v9);
  }

  sub_21AEAD0A8();
}

void sub_21AEE5DB0()
{
  sub_21AEAD0C4();
  sub_21AEEA194(v2, v3, v4);
  sub_21AEA7C90();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  sub_21AEEA094();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 16) = MEMORY[0x277D84F90];
  v10 = v8 + 16;
  sub_21AEE9EC8([v0 publisher]);
  sub_21AEE9F10();
  v30 = v11;
  v31 = &unk_282C815F0;
  v27 = _Block_copy(v29);
  v12 = sub_21AEE9E90();
  v13(v12);
  sub_21AEE9FE0();
  v14 = swift_allocObject();
  v15 = sub_21AEE9FC4(v14);
  v16(v15);
  *(v1 + v6) = v8;
  sub_21AEE9EA0();
  v30 = sub_21AEE9E10;
  v31 = &unk_282C81640;
  v17 = _Block_copy(v29);

  v18 = sub_21AEEA168();
  v20 = [v18 v19];
  _Block_release(v17);
  _Block_release(v27);

  sub_21AEEA1B4();
  v21 = *(v8 + 16);
  v22 = *(*v10 + 16);
  if (v22)
  {

    while (v22 <= *(v21 + 16))
    {
      *(v21 + 16 * v22 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEEA0D0();
        sub_21AEAC7B8();
        v9 = v24;
      }

      v23 = *(v9 + 24);
      if (*(v9 + 16) >= v23 >> 1)
      {
        sub_21AEEA0B8(v23);
        sub_21AEAC7B8();
        v9 = v25;
      }

      sub_21AEEA024();
    }

    __break(1u);
  }

  if (v26)
  {
    sub_21AEE8DFC(v9);
  }

  sub_21AEAD0A8();
}

void sub_21AEE602C()
{
  sub_21AEAD0C4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_21AF093FC();
  sub_21AEA7C90();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v7 eventBody];
  if (v14)
  {
    v15 = v14;
    [v7 timestamp];
    sub_21AF0935C();
    v16 = sub_21AF0924C();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      [v7 timestamp];
      v18 = v17;
      swift_beginAccess();
      v19 = v15;
      sub_21AEE98E0(v3);
      v20 = *(*(v5 + 16) + 16);
      sub_21AEE9974(v20, v3);
      v21 = *(v5 + 16);
      *(v21 + 16) = v20 + 1;
      v22 = v21 + 16 * v20;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      *(v5 + 16) = v21;
      swift_endAccess();
    }

    else
    {
    }

    sub_21AEAD0A8();
  }

  else
  {
    if (qword_27CD3D2B0 != -1)
    {
      swift_once();
    }

    v23 = sub_21AF096CC();
    sub_21AEA7958(v23, qword_27CD3EC00);
    v28 = sub_21AF096AC();
    v24 = sub_21AF09A9C();
    if (os_log_type_enabled(v28, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21AE94000, v28, v24, v1, v25, 2u);
      MEMORY[0x21CEE5A20](v25, -1, -1);
    }

    sub_21AEAD0A8();
  }
}

uint64_t sub_21AEE6298(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  v3 = [a1 publisher];
  v13 = nullsub_1;
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_21AEE9E10;
  v12 = &unk_282C81690;
  v4 = _Block_copy(&v9);
  v13 = sub_21AEE9B20;
  v14 = v2;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_21AEE9E10;
  v12 = &unk_282C816B8;
  v5 = _Block_copy(&v9);

  v6 = [v3 sinkWithCompletion:v4 receiveInput:v5];
  _Block_release(v5);
  _Block_release(v4);

  swift_beginAccess();
  v7 = *(v2 + 16);

  return v7;
}

uint64_t sub_21AEE6450(void *a1, uint64_t a2)
{
  [a1 timestamp];
  v4 = v3;
  result = swift_beginAccess();
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  return result;
}

void sub_21AEE64AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_21AEE6514()
{
  v1 = sub_21AEE65B0();
  sub_21AEE6648(v1);

  v2 = [BiomeLibrary() Photos];
  sub_21AEEA1D4();
  v3 = [v0 Search];
  swift_unknownObjectRelease();
  sub_21AEE6738(v3);
}

id sub_21AEE65B0()
{
  v0 = [BiomeLibrary() AeroML];
  swift_unknownObjectRelease();
  v1 = [v0 RawEvent];
  swift_unknownObjectRelease();
  v2 = [v1 PhotosSearchSession];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_21AEE6648(void *a1)
{
  v2 = [a1 pruner];
  v3 = sub_21AEE9F68();
  sub_21AEE9EEC();
  v8[1] = 1107296256;
  v8[2] = sub_21AEE9DF0;
  v8[3] = &unk_282C816E0;
  v4 = _Block_copy(v8);

  v5 = sub_21AEEA168();
  [v5 v6];

  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21AEE6738(void *a1)
{
  v2 = [a1 pruner];
  v3 = sub_21AEE9F68();
  sub_21AEE9EEC();
  v8[1] = 1107296256;
  v8[2] = sub_21AEE9DF0;
  v8[3] = &unk_282C81708;
  v4 = _Block_copy(v8);

  v5 = sub_21AEEA168();
  [v5 v6];

  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21AEE681C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v135 = a4 + 64;
  sub_21AEE9E14();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  sub_21AEC7BD0();
  v134 = v14;
  v139 = v15;

  v16 = 0;
  v146 = a3;
  v149 = a2;
  v143 = a1;
  v137 = v13;
  do
  {
LABEL_2:
    if (v11)
    {
      goto LABEL_7;
    }

    do
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_88;
      }

      if (v17 >= v13)
      {
        sub_21AEEA100();
      }

      v11 = *(v135 + 8 * v17);
      ++v16;
    }

    while (!v11);
    v16 = v17;
LABEL_7:
    v18 = __clz(__rbit64(v11)) | (v16 << 6);
    v19 = *(*(v139 + 56) + 8 * v18);
    v20 = *(v19 + 16);
    v138 = v16;
    if (v20)
    {
      v140 = v11;
      v21 = (*(v139 + 48) + 16 * v18);
      v151 = *v21;
      v153 = v21[1];

      v144 = 0;
      v22 = (v19 + 40);
      v23 = (v19 + 40);
      v24 = v20;
      v150 = v20;
      do
      {
        if (*(a2 + 16))
        {
          v26 = *(v23 - 1);
          v25 = *v23;

          v27 = sub_21AED0594(v26, v25);
          if ((v28 & 1) != 0 && *(a3 + 16))
          {
            v29 = *(*(a2 + 56) + 8 * v27);
            v30 = sub_21AED0594(v26, v25);
            v32 = v31;

            if (v32 & 1) != 0 && (v33 = *(*(a3 + 56) + 8 * v30), *(v33 + 16)) && (v34 = sub_21AED0608(v29), (v35))
            {
              v36 = *(*(v33 + 56) + 8 * v34);
              v37 = __OFADD__(v144, v36);
              v144 += v36;
              v20 = v150;
              if (v37)
              {
                goto LABEL_93;
              }
            }

            else
            {
              v20 = v150;
            }
          }

          else
          {
          }
        }

        v23 += 2;
        --v24;
      }

      while (v24);
      v38 = 0;
      a1 = v143;
      v147 = v19;
      while (2)
      {
        if (v38 >= *(v19 + 16))
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v39 = *(v22 - 1);
        v40 = *v22;
        v41 = *(a2 + 16);

        v42 = 0.0;
        if (v41)
        {
          v43 = sub_21AEE204C();
          v45 = sub_21AED0594(v43, v44);
          if (v46)
          {
            if (*(a3 + 16))
            {
              v47 = *(*(a2 + 56) + 8 * v45);
              v48 = sub_21AEE204C();
              v50 = sub_21AED0594(v48, v49);
              if (v51 & 1) != 0 && (v52 = *(*(a3 + 56) + 8 * v50), *(v52 + 16)) && (v53 = sub_21AED0608(v47), (v54))
              {
                v20 = v150;
                if (v144)
                {
                  v42 = *(*(v52 + 56) + 8 * v53) / v144;
                }
              }

              else
              {
                v20 = v150;
              }
            }
          }
        }

        v55 = *v143;
        if (*(*v143 + 16))
        {
          v56 = sub_21AED0594(v151, v153);
          if (v57)
          {
            v58 = *(*(v55 + 56) + 8 * v56);
            v59 = v58[2];

            if (!v59 || (v60 = sub_21AEE204C(), v62 = sub_21AED0594(v60, v61), (v63 & 1) == 0))
            {

              goto LABEL_50;
            }

            sub_21AEEA150(v58[7] + (v62 << 6));
            v156 = *(v64 + 48);
            if (a5)
            {
              v65 = *(v64 + 40);
            }

            else
            {
              v65 = v42;
            }

            if ((a5 & 1) == 0)
            {
              v42 = *(v64 + 32);
            }

            swift_isUniquelyReferenced_nonNull_native();
            v66 = sub_21AEE204C();
            sub_21AED0594(v66, v67);
            sub_21AED1B64();
            if (__OFADD__(v70, v71))
            {
              goto LABEL_91;
            }

            v72 = v68;
            v73 = v69;
            sub_21AEA7574(&qword_27CD3DF70, &qword_21AF0CE90);
            if (sub_21AF09D0C())
            {
              v74 = sub_21AEE204C();
              sub_21AED0594(v74, v75);
              sub_21AED1C04();
              a3 = v146;
              if (!v77)
              {
                goto LABEL_94;
              }

              v72 = v76;
              if ((v73 & 1) == 0)
              {
LABEL_46:
                sub_21AED1AA8(&v58[v72 >> 6]);
                v78 = (v58[6] + 16 * v72);
                *v78 = v39;
                v78[1] = v40;
                v79 = v58[7] + (v72 << 6);
                *v79 = v154;
                *(v79 + 16) = v155;
                *(v79 + 32) = v42;
                *(v79 + 40) = v65;
                *(v79 + 48) = v156;
                v80 = v58[2];
                v37 = __OFADD__(v80, 1);
                v81 = v80 + 1;
                if (v37)
                {
                  goto LABEL_92;
                }

                v58[2] = v81;
LABEL_50:

                swift_isUniquelyReferenced_nonNull_native();
                *&v154 = *v143;
                sub_21AED0594(v151, v153);
                sub_21AED1B64();
                if (__OFADD__(v84, v85))
                {
                  goto LABEL_89;
                }

                v86 = v82;
                v87 = v83;
                sub_21AEA7574(&qword_27CD3D940, &qword_21AF0D3C0);
                if (sub_21AF09D0C())
                {
                  v88 = v153;
                  sub_21AED0594(v151, v153);
                  sub_21AEEA050();
                  if (!v77)
                  {
                    goto LABEL_94;
                  }

                  v86 = v89;
                }

                else
                {
                  v88 = v153;
                }

                if (v87)
                {
                  *(*(v154 + 56) + 8 * v86) = v58;
                }

                else
                {
                  sub_21AEEA0AC();
                  sub_21AEE9E30(v90);
                  v92 = (v91 + 16 * v86);
                  *v92 = v151;
                  v92[1] = v88;
                  *(*(v154 + 56) + 8 * v86) = v58;
                  sub_21AEE9FFC();
                  if (v37)
                  {
                    goto LABEL_90;
                  }

                  *(v154 + 16) = v93;
                }

                *v143 = v154;
                v19 = v147;
                a2 = v149;
                v20 = v150;
LABEL_61:
                ++v38;
                v22 += 2;
                if (v20 == v38)
                {

                  v13 = v137;
                  v16 = v138;
                  v11 = v140;
                  goto LABEL_65;
                }

                continue;
              }
            }

            else
            {
              a3 = v146;
              if ((v73 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            v94 = v58[7] + (v72 << 6);
            *v94 = v154;
            *(v94 + 16) = v155;
            *(v94 + 32) = v42;
            *(v94 + 40) = v65;
            *(v94 + 48) = v156;
            goto LABEL_50;
          }
        }

        break;
      }

      goto LABEL_61;
    }

LABEL_65:
    v11 &= v11 - 1;
  }

  while ((a6 & 1) == 0);
  v141 = v11;
  v95 = *a1 + 64;
  sub_21AEE9E14();
  v98 = v97 & v96;
  v100 = (v99 + 63) >> 6;

  v101 = 0;
  v148 = v95;
  v145 = v100;
  if (!v98)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v102 = v101;
LABEL_71:
    v98 &= v98 - 1;
    sub_21AED1E50();
    v104 = *v103;
    v105 = v103[1];
    v108 = *(v107 + 8 * v106);
    v152 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
    v109 = sub_21AEC7C30(v152);
    sub_21AEE9E44(v109, xmmword_21AF0C5D0);
    *&v154 = v111;
    *(&v154 + 1) = v110;

    MEMORY[0x21CEE4A70](v104, v105);

    *(v109 + 56) = MEMORY[0x277D837D0];
    *(v109 + 32) = v154;
    sub_21AEC76AC(v109);

    v112 = 0;
    v113 = v108 + 64;
    sub_21AEE9E14();
    v116 = v115 & v114;
    v118 = (v117 + 63) >> 6;
    if ((v115 & v114) != 0)
    {
      goto LABEL_77;
    }

    while (1)
    {
      v119 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        __break(1u);
        goto LABEL_86;
      }

      if (v119 >= v118)
      {
        break;
      }

      v116 = *(v113 + 8 * v119);
      ++v112;
      if (v116)
      {
        v112 = v119;
        do
        {
LABEL_77:
          v116 &= v116 - 1;
          sub_21AED1E50();
          v121 = *v120;
          v122 = v120[1];
          sub_21AEEA150(v124 + (v123 << 6));
          v126 = sub_21AEC7C30(v125);
          sub_21AEC7A14(v126, xmmword_21AF0C5D0);

          sub_21AF09C5C();

          sub_21AEE9F28();
          *&v157 = v127;
          sub_21AEE9E80();
          *(&v157 + 1) = v128;
          MEMORY[0x21CEE4A70](v121, v122);

          sub_21AEEA120();
          v129 = sub_21AEEF64C();
          MEMORY[0x21CEE4A70](v129);

          *(v126 + 56) = MEMORY[0x277D837D0];
          *(v126 + 32) = v157;
          sub_21AEC76AC(v126);
        }

        while (v116);
        continue;
      }
    }

    v101 = v102;
    a3 = v146;
    v95 = v148;
    a1 = v143;
    v100 = v145;
    if (v98)
    {
      continue;
    }

    break;
  }

LABEL_68:
  while (1)
  {
    v102 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      break;
    }

    if (v102 >= v100)
    {

      v130 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v131 = sub_21AEC7C30(v130);
      *(v131 + 16) = xmmword_21AF0C5D0;
      *(v131 + 56) = MEMORY[0x277D837D0];
      *(v131 + 32) = 0xD00000000000003CLL;
      *(v131 + 40) = v134;
      sub_21AEC76AC(v131);

      a2 = v149;
      v13 = v137;
      v16 = v138;
      v11 = v141;
      goto LABEL_2;
    }

    v98 = *(v95 + 8 * v102);
    ++v101;
    if (v98)
    {
      goto LABEL_71;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  result = sub_21AF09E7C();
  __break(1u);
  return result;
}

uint64_t sub_21AEE706C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21AED1A58();
  if (v9)
  {
    v10 = v9;
    sub_21AEB3974();
    if (sub_21AED1A58())
    {

      sub_21AEB3974();
      v11 = sub_21AED1A58();
      if (v11)
      {
        v12 = v11;
        v70 = a2;
        v68 = a1;
        v13 = *(v11 + 16);
        if (v13)
        {
          v14 = 0;
          v15 = v11 + 32;
          v72 = v11;
          while (v14 < *(v12 + 16))
          {
            if (*(v10 + 16))
            {
              v16 = *(v15 + 8 * v14);
              v17 = sub_21AED0608(v16);
              if (v18)
              {
                if (__OFADD__(*(*(v10 + 56) + 8 * v17), 1))
                {
                  goto LABEL_64;
                }

                swift_isUniquelyReferenced_nonNull_native();
                sub_21AEEA174();
                sub_21AEE9E6C();
                if (v21)
                {
                  goto LABEL_65;
                }

                v22 = v19;
                v23 = v20;
                v24 = sub_21AEA7574(&qword_27CD3DF80, &qword_21AF0CE98);
                if (sub_21AEE9F98(v24))
                {
                  sub_21AED0608(v16);
                  sub_21AED1C04();
                  if (!v26)
                  {
                    goto LABEL_71;
                  }

                  v22 = v25;
                }

                v10 = v75;
                if (v23)
                {
                  sub_21AEEA15C();
                }

                else
                {
                  sub_21AEEA0AC();
                  sub_21AEE9E30(v27);
                  *(v28 + 8 * v22) = v16;
                  sub_21AEEA15C();
                  sub_21AEE9FFC();
                  if (v21)
                  {
                    goto LABEL_69;
                  }

                  *(v75 + 16) = v29;
                }

                v12 = v72;
              }
            }

            if (v13 == ++v14)
            {
              goto LABEL_21;
            }
          }

          goto LABEL_61;
        }

LABEL_21:

        a1 = v68;
        a2 = v70;
      }
    }

LABEL_59:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = *a1;
    sub_21AF05428(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *a1 = v76;
    return result;
  }

  v69 = a1;
  v71 = a2;
  v10 = sub_21AF0974C();
  v30 = a5 + 56;
  sub_21AED1A7C();
  v33 = v32 & v31;
  v35 = (v34 + 63) >> 6;

  v36 = 0;
  v73 = a5;
  if (!v33)
  {
    goto LABEL_25;
  }

  do
  {
    v37 = v36;
LABEL_28:
    v38 = *(*(a5 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v33)))));
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v10;
    sub_21AED0608(v38);
    sub_21AEE9E6C();
    if (v21)
    {
      goto LABEL_63;
    }

    v41 = v39;
    v42 = v40;
    v43 = sub_21AEA7574(&qword_27CD3DF80, &qword_21AF0CE98);
    if (sub_21AEE9F98(v43))
    {
      v44 = sub_21AED0608(v38);
      if ((v42 & 1) != (v45 & 1))
      {
        goto LABEL_71;
      }

      v41 = v44;
    }

    v33 &= v33 - 1;
    if (v42)
    {
      *(*(v10 + 56) + 8 * v41) = 0;
    }

    else
    {
      sub_21AEEA0AC();
      sub_21AEE9E30(v46);
      *(v47 + 8 * v41) = v38;
      *(*(v10 + 56) + 8 * v41) = 0;
      sub_21AEE9FFC();
      if (v21)
      {
        goto LABEL_68;
      }

      *(v10 + 16) = v48;
    }

    v36 = v37;
    a5 = v73;
  }

  while (v33);
  while (1)
  {
LABEL_25:
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v37 >= v35)
    {
      break;
    }

    v33 = *(v30 + 8 * v37);
    ++v36;
    if (v33)
    {
      goto LABEL_28;
    }
  }

  a2 = v71;
  sub_21AEB3974();
  if (!sub_21AED1A58() || (, sub_21AEB3974(), (v49 = sub_21AED1A58()) == 0))
  {
LABEL_58:

    a1 = v69;
    goto LABEL_59;
  }

  v50 = v49;
  v51 = *(v49 + 16);
  if (!v51)
  {
LABEL_57:

    a2 = v71;
    goto LABEL_58;
  }

  v52 = 0;
  v53 = v49 + 32;
  v74 = v49;
  while (v52 < *(v50 + 16))
  {
    if (*(v10 + 16))
    {
      v54 = *(v53 + 8 * v52);
      v55 = sub_21AED0608(v54);
      if (v56)
      {
        if (__OFADD__(*(*(v10 + 56) + 8 * v55), 1))
        {
          goto LABEL_66;
        }

        swift_isUniquelyReferenced_nonNull_native();
        sub_21AEEA174();
        sub_21AEE9E6C();
        if (v21)
        {
          goto LABEL_67;
        }

        v59 = v57;
        v60 = v58;
        v61 = sub_21AEA7574(&qword_27CD3DF80, &qword_21AF0CE98);
        if (sub_21AEE9F98(v61))
        {
          sub_21AED0608(v54);
          sub_21AED1C04();
          if (!v26)
          {
            goto LABEL_71;
          }

          v59 = v62;
        }

        v10 = v75;
        if (v60)
        {
          sub_21AEEA15C();
        }

        else
        {
          sub_21AEEA0AC();
          sub_21AEE9E30(v63);
          *(v64 + 8 * v59) = v54;
          sub_21AEEA15C();
          sub_21AEE9FFC();
          if (v21)
          {
            goto LABEL_70;
          }

          *(v75 + 16) = v65;
        }

        v50 = v74;
      }
    }

    if (v51 == ++v52)
    {
      goto LABEL_57;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = sub_21AF09E7C();
  __break(1u);
  return result;
}

uint64_t sub_21AEE7500(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AED1A58();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = sub_21AEE9E90();
  sub_21AEC8B0C(v8, v9, v10);
  if (v11)
  {
    goto LABEL_34;
  }

  v12 = sub_21AEE9E90();
  v15 = sub_21AEC8B0C(v12, v13, v14);
  if (v16)
  {
    goto LABEL_34;
  }

  if (v15 <= 4)
  {
    v17 = sub_21AEC8B60(v15, v7);
    if ((v18 & 1) == 0)
    {
      if (!__OFADD__(v17, 1))
      {
LABEL_25:
        swift_isUniquelyReferenced_nonNull_native();
        v51 = v7;
        v40 = sub_21AEB3974();
LABEL_33:
        sub_21AF0551C(v40, v41, v42);
        v7 = v51;
        goto LABEL_34;
      }

      __break(1u);
LABEL_9:
      v50 = a3;
      v7 = sub_21AF0974C();
      for (i = 0; i != 6; ++i)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_21AED0608(i);
        sub_21AEE9E6C();
        if (v22)
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v23 = v20;
        v24 = v21;
        sub_21AEA7574(&qword_27CD3DF80, &qword_21AF0CE98);
        if (sub_21AF09D0C())
        {
          sub_21AED0608(i);
          sub_21AEEA050();
          if (!v26)
          {
            goto LABEL_39;
          }

          v23 = v25;
        }

        if (v24)
        {
          *(*(v7 + 56) + 8 * v23) = 0;
        }

        else
        {
          sub_21AEE9E30(v7 + 8 * (v23 >> 6));
          *(v27 + 8 * v23) = i;
          *(*(v7 + 56) + 8 * v23) = 0;
          sub_21AEE9FFC();
          if (v22)
          {
            goto LABEL_36;
          }

          *(v7 + 16) = v28;
        }
      }

      a3 = v50;
      v29 = sub_21AEE9E90();
      sub_21AEC8B0C(v29, v30, v31);
      if ((v32 & 1) == 0)
      {
        v33 = sub_21AEE9E90();
        v36 = sub_21AEC8B0C(v33, v34, v35);
        if ((v37 & 1) == 0)
        {
          if (v36 > 4)
          {
            goto LABEL_30;
          }

          v38 = sub_21AEC8B60(v36, v7);
          if ((v39 & 1) == 0)
          {
            if (!__OFADD__(v38, 1))
            {
              goto LABEL_25;
            }

            goto LABEL_37;
          }
        }
      }
    }

LABEL_34:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *a1;
    sub_21AF05428(v7, a2, a3, isUniquelyReferenced_nonNull_native);

    *a1 = v52;
    return result;
  }

  v43 = sub_21AEC8B60(5, v7);
  if (v44)
  {
    goto LABEL_34;
  }

  v45 = v43 + 1;
  if (!__OFADD__(v43, 1))
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_30:
  v46 = sub_21AEC8B60(5, v7);
  if (v47)
  {
    goto LABEL_34;
  }

  v45 = v46 + 1;
  if (!__OFADD__(v46, 1))
  {
LABEL_32:
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v7;
    v40 = v45;
    v41 = 5;
    goto LABEL_33;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_21AF09E7C();
  __break(1u);
  return result;
}

uint64_t sub_21AEE77C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  HIDWORD(v173) = a6;
  HIDWORD(v180) = a5;
  v187 = a1;
  v10 = a4 + 64;
  sub_21AEE9E14();
  sub_21AEEA040();
  v181 = "cosDistancesAsset";
  sub_21AEC7BD0();
  v171 = v11;
  v172 = v12;
  v176 = v13;

  v14 = 0;
  v182 = xmmword_21AF0C5D0;
  v183 = a2;
  v174 = v6;
  v175 = v10;
  if (v7)
  {
    while (1)
    {
LABEL_6:
      v177 = v14;
      v178 = v7;
      sub_21AED1E50();
      v17 = v16[1];
      v186 = *v16;
      v20 = *(v19 + 8 * v18);
      v190 = *(v20 + 16);
      if (v190)
      {
        v188 = v20 + 32;

        v21 = 0;
        v22 = 0;
        v184 = v17;
        v185 = v20;
        v23 = v20;
        while (v22 < *(v23 + 16))
        {
          if (*(a2 + 16))
          {
            v24 = (v188 + 16 * v22);
            v26 = *v24;
            v25 = v24[1];

            v27 = sub_21AED0594(v26, v25);
            if (v28)
            {
              v29 = *(*(a2 + 56) + 8 * v27);
              v30 = *(v29 + 16);
              if (v30)
              {

                v31 = 32;
                while (1)
                {
                  if (*(a3 + 16))
                  {
                    v32 = *(v29 + v31);
                    v33 = sub_21AED0594(v26, v25);
                    if (v34)
                    {
                      v35 = *(*(a3 + 56) + 8 * v33);
                      if (*(v35 + 16))
                      {
                        v36 = sub_21AED0608(v32);
                        if (v37)
                        {
                          v38 = *(*(v35 + 56) + 8 * v36);
                          v39 = __OFADD__(v21, v38);
                          v21 += v38;
                          if (v39)
                          {
                            goto LABEL_92;
                          }
                        }
                      }
                    }
                  }

                  v31 += 8;
                  if (!--v30)
                  {

                    a2 = v183;
                    break;
                  }
                }
              }

              v17 = v184;
            }

            v23 = v185;
          }

          if (++v22 == v190)
          {
            v40 = 0;
            v192 = v21;
            while (v40 < *(v23 + 16))
            {
              v41 = (v188 + 16 * v40);
              v42 = *v41;
              v43 = v41[1];
              v44 = *(a2 + 16);

              if (v44)
              {
                v45 = sub_21AEEA088();
                v47 = sub_21AED0594(v45, v46);
                if (v48)
                {
                  v49 = *(*(a2 + 56) + 8 * v47);
                  v50 = *(v49 + 16);
                  if (v50)
                  {

                    v51 = 0.0;
                    v52 = 32;
                    do
                    {
                      if (*(a3 + 16))
                      {
                        v53 = *(v49 + v52);
                        v54 = sub_21AEEA088();
                        v56 = sub_21AED0594(v54, v55);
                        if (v57)
                        {
                          v58 = *(*(a3 + 56) + 8 * v56);
                          if (*(v58 + 16))
                          {
                            v59 = sub_21AED0608(v53);
                            v61 = v192;
                            if ((v60 & 1) != 0 && (v61 = 0, v21))
                            {
                              v51 = v51 + *(*(v58 + 56) + 8 * v59);
                              v192 = v21;
                            }

                            else
                            {
                              v192 = v61;
                            }
                          }
                        }
                      }

                      v52 += 8;
                      --v50;
                    }

                    while (v50);

                    a2 = v183;
                  }

                  v17 = v184;
                  v23 = v185;
                }
              }

              v62 = *v187;
              if (*(*v187 + 16) && (v63 = sub_21AED0594(v186, v17), (v64 & 1) != 0))
              {
                v65 = *(*(v62 + 56) + 8 * v63);
                v66 = v65[2];

                if (v66 && (v67 = sub_21AEEA088(), v69 = sub_21AED0594(v67, v68), (v70 & 1) != 0))
                {
                  sub_21AEEA150(v65[7] + (v69 << 6));
                  v195 = *(v71 + 32);
                  swift_isUniquelyReferenced_nonNull_native();
                  v197 = v65;
                  v72 = sub_21AEEA088();
                  sub_21AED0594(v72, v73);
                  sub_21AED1B64();
                  if (__OFADD__(v76, v77))
                  {
                    goto LABEL_96;
                  }

                  v78 = v74;
                  v79 = v75;
                  sub_21AEA7574(&qword_27CD3DF70, &qword_21AF0CE90);
                  if (sub_21AF09D0C())
                  {
                    v80 = sub_21AEEA088();
                    v82 = sub_21AED0594(v80, v81);
                    if ((v79 & 1) != (v83 & 1))
                    {
                      goto LABEL_98;
                    }

                    v78 = v82;
                  }

                  if (v79)
                  {

                    v65 = v197;
                    sub_21AEE9F48(v84, v85, v86, v87, v88, v89, v90, v91, v92, v171, v172, v173, v174, v175, v176, v177, v178, v180, v181, v182.n128_i64[0], v182.n128_i64[1], v183, v184, v185, v186, v187, v188, v190, v192, v193, v194, v93);
                  }

                  else
                  {
                    v65 = v197;
                    sub_21AED1AA8(&v197[v78 >> 6]);
                    v94 = (v65[6] + 16 * v78);
                    *v94 = v42;
                    v94[1] = v43;
                    sub_21AEE9F48(v95, v96, v97, v98, v99, v100, v101, v102, v103, v171, v172, v173, v174, v175, v176, v177, v178, v180, v181, v182.n128_i64[0], v182.n128_i64[1], v183, v184, v185, v186, v187, v188, v190, v192, v193, v194, v104);
                    v105 = v65[2];
                    v39 = __OFADD__(v105, 1);
                    v106 = v105 + 1;
                    if (v39)
                    {
                      goto LABEL_97;
                    }

                    v65[2] = v106;
                  }

                  v17 = v184;
                }

                else
                {
                }

                swift_isUniquelyReferenced_nonNull_native();
                *&v193 = *v187;
                sub_21AED0594(v186, v17);
                sub_21AED1B64();
                if (__OFADD__(v109, v110))
                {
                  goto LABEL_94;
                }

                v111 = v107;
                v112 = v108;
                sub_21AEA7574(&qword_27CD3D940, &qword_21AF0D3C0);
                if (sub_21AF09D0C())
                {
                  v113 = sub_21AED0594(v186, v184);
                  a2 = v183;
                  if ((v112 & 1) != (v114 & 1))
                  {
                    goto LABEL_98;
                  }

                  v111 = v113;
                }

                else
                {
                  a2 = v183;
                }

                v115 = v193;
                if (v112)
                {
                  *(*(v193 + 56) + 8 * v111) = v65;

                  v17 = v184;
                }

                else
                {
                  sub_21AED1AA8(v193 + 8 * (v111 >> 6));
                  v116 = (v115[6] + 16 * v111);
                  *v116 = v186;
                  v116[1] = v184;
                  *(v115[7] + 8 * v111) = v65;
                  v117 = v115[2];
                  v39 = __OFADD__(v117, 1);
                  v118 = v117 + 1;
                  if (v39)
                  {
                    goto LABEL_95;
                  }

                  v115[2] = v118;

                  v17 = v184;
                }

                *v187 = v115;
                v23 = v185;
              }

              else
              {
              }

              if (++v40 == v190)
              {

                v6 = v174;
                v10 = v175;
                v7 = v178;
                goto LABEL_67;
              }
            }

            goto LABEL_90;
          }
        }

        goto LABEL_89;
      }

LABEL_67:
      if ((v173 & 0x100000000) != 0)
      {
        break;
      }

LABEL_83:
      v7 &= v7 - 1;

      v14 = v177;
      if (!v7)
      {
        goto LABEL_2;
      }
    }

    v191 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
    v119 = sub_21AEC7C30(v191);
    sub_21AEC7A14(v119, v182);
    *&v193 = 0;
    *(&v193 + 1) = v120;
    sub_21AF09C5C();

    *&v193 = 0xD000000000000024;
    *(&v193 + 1) = v172;
    MEMORY[0x21CEE4A70](v186, v17);

    v122 = *(&v193 + 1);
    v121 = v193;
    *(v119 + 56) = MEMORY[0x277D837D0];
    *(v119 + 32) = __PAIR128__(v122, v121);
    sub_21AEC76AC(v119);

    v123 = *v187 + 64;
    sub_21AEE9E14();
    sub_21AEEA040();

    v124 = 0;
    if (!v7)
    {
      while (1)
      {
        v125 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          goto LABEL_91;
        }

        if (v125 >= &v193)
        {

          v159 = sub_21AEC7C30(v191);
          sub_21AEE9F3C(v159, v160, v161, v162, v163, v164, v165, v166, v167, v171, v172, v173, v174, v175, v176, v177, v178, v180, v181, v168);
          v169[7] = MEMORY[0x277D837D0];
          v169[4] = 0xD00000000000003CLL;
          v169[5] = v171;
          sub_21AEC76AC(v169);
          v6 = v174;
          v10 = v175;
          v7 = v179;
          goto LABEL_83;
        }

        v7 = *(v123 + 8 * v125);
        ++v124;
        if (v7)
        {
          goto LABEL_73;
        }
      }
    }

LABEL_69:
    v125 = v124;
LABEL_73:
    sub_21AEEA13C();
    v189 = v7;
    sub_21AED1E50();
    v127 = *v126;
    v128 = v126[1];
    v131 = *(v130 + 8 * v129);
    v132 = sub_21AEC7C30(v191);
    sub_21AEE9E44(v132, v182);
    *&v193 = v134;
    *(&v193 + 1) = v133;

    MEMORY[0x21CEE4A70](v127, v128);

    v135 = v193;
    *(v132 + 56) = MEMORY[0x277D837D0];
    *(v132 + 32) = v135;
    sub_21AEC76AC(v132);

    v136 = 0;
    v137 = v131 + 64;
    sub_21AEE9E14();
    v140 = v139 & v138;
    v142 = (v141 + 63) >> 6;
    if ((v139 & v138) == 0)
    {
      goto LABEL_75;
    }

    do
    {
LABEL_79:
      v140 &= v140 - 1;
      sub_21AED1E50();
      v145 = *v144;
      v146 = v144[1];
      sub_21AEEA150(v148 + (v147 << 6));
      v150 = *(v149 + 48);
      v195 = *(v149 + 32);
      v196 = v150;
      v152 = sub_21AEC7C30(v151);
      sub_21AEC7A14(v152, v182);
      v197 = 0;
      v198 = v153;

      sub_21AF09C5C();

      sub_21AEE9F28();
      v197 = v154;
      sub_21AEE9E80();
      v198 = v155;
      MEMORY[0x21CEE4A70](v145, v146);

      sub_21AEEA120();
      v156 = sub_21AEEF64C();
      MEMORY[0x21CEE4A70](v156);

      v157 = v197;
      v158 = v198;
      v152[3].n128_u64[1] = MEMORY[0x277D837D0];
      v152[2].n128_u64[0] = v157;
      v152[2].n128_u64[1] = v158;
      sub_21AEC76AC(v152);
    }

    while (v140);
LABEL_75:
    while (1)
    {
      v143 = v136 + 1;
      if (__OFADD__(v136, 1))
      {
        break;
      }

      if (v143 >= v142)
      {

        v124 = v125;
        v7 = v189;
        goto LABEL_69;
      }

      v140 = *(v137 + 8 * v143);
      ++v136;
      if (v140)
      {
        v136 = v143;
        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  else
  {
LABEL_2:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v6)
      {
      }

      v7 = *(v10 + 8 * v15);
      ++v14;
      if (v7)
      {
        v14 = v15;
        goto LABEL_6;
      }
    }
  }

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
  result = sub_21AF09E7C();
  __break(1u);
  return result;
}

void sub_21AEE80E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  HIDWORD(v137) = a5;
  LODWORD(v144) = a4;
  v7 = a3;
  v138 = a3 + 64;
  sub_21AED1A7C();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;

  v15 = 0;
  v143 = a1;
  v139 = v14;
  v140 = v7;
  do
  {
LABEL_2:
    if (!v12)
    {
      do
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_68;
        }

        if (v16 >= v14)
        {

          if ((v137 & 0x100000000) == 0)
          {
            sub_21AEEA100();
            return;
          }

          v96 = *a1 + 64;
          sub_21AEE9E14();
          sub_21AEEA040();

          v97 = 0;
          if (v6)
          {
            while (1)
            {
              v98 = v97;
LABEL_53:
              sub_21AEEA13C();
              sub_21AED1E50();
              v100 = *v99;
              v101 = v99[1];
              v104 = *(v103 + 8 * v102);
              v148 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
              v105 = sub_21AEC7C30(v148);
              sub_21AEE9E44(v105, xmmword_21AF0C5D0);
              *&v153 = v107;
              *(&v153 + 1) = v106;

              MEMORY[0x21CEE4A70](v100, v101);

              v108 = v153;
              *(v105 + 56) = MEMORY[0x277D837D0];
              *(v105 + 32) = v108;
              sub_21AEC76AC(v105);

              v109 = 0;
              v110 = v104 + 64;
              sub_21AEE9E14();
              v113 = v112 & v111;
              v115 = (v114 + 63) >> 6;
              if ((v112 & v111) == 0)
              {
                goto LABEL_55;
              }

              do
              {
LABEL_59:
                v113 &= v113 - 1;
                sub_21AED1E50();
                v118 = *v117;
                v119 = v117[1];
                v122 = (v121 + (v120 << 6));
                v123 = v122[1];
                v153 = *v122;
                v154 = v123;
                v124 = v122[3];
                v155 = v122[2];
                v156 = v124;
                v125 = sub_21AEC7C30(v148);
                sub_21AEC7A14(v125, xmmword_21AF0C5D0);
                v157 = 0;
                v158 = v126;

                sub_21AF09C5C();

                sub_21AEE9F28();
                v157 = v127;
                sub_21AEE9E80();
                v158 = v128;
                MEMORY[0x21CEE4A70](v118, v119);

                sub_21AEEA120();
                v129 = sub_21AEEF64C();
                MEMORY[0x21CEE4A70](v129);

                v130 = v157;
                v131 = v158;
                v125[3].n128_u64[1] = MEMORY[0x277D837D0];
                v125[2].n128_u64[0] = v130;
                v125[2].n128_u64[1] = v131;
                sub_21AEC76AC(v125);
              }

              while (v113);
              while (1)
              {
LABEL_55:
                v116 = v109 + 1;
                if (__OFADD__(v109, 1))
                {
                  goto LABEL_67;
                }

                if (v116 >= v115)
                {
                  break;
                }

                v113 = *(v110 + 8 * v116);
                ++v109;
                if (v113)
                {
                  v109 = v116;
                  goto LABEL_59;
                }
              }

              v97 = v98;
            }
          }

          do
          {
            v98 = v97 + 1;
            if (__OFADD__(v97, 1))
            {
              goto LABEL_71;
            }

            if (v98 >= v5)
            {

              v132 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
              *(sub_21AEC7C30(v132) + 16) = xmmword_21AF0C5D0;
              sub_21AEC7BD0();
              v133[7] = MEMORY[0x277D837D0];
              v133[4] = 0xD00000000000003CLL;
              v133[5] = v134;
              sub_21AEC76AC(v133);
              sub_21AEEA100();

              return;
            }

            ++v97;
          }

          while (!*(v96 + 8 * v98));
          goto LABEL_53;
        }

        v12 = *(v138 + 8 * v16);
        ++v15;
      }

      while (!v12);
      v15 = v16;
    }

    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v15 << 6);
    v5 = *(*(v7 + 56) + 8 * v18);
    v19 = *(v5 + 2);
  }

  while (!v19);
  v141 = v12;
  v142 = v15;
  v20 = (*(v7 + 48) + 16 * v18);
  v152 = *v20;
  v147 = v20[1];

  v149 = 0;
  v145 = v19;
  v146 = v5;
  v21 = v5 + 5;
  v22 = v5 + 5;
  do
  {
    if (*(a2 + 16))
    {
      v23 = *(v22 - 1);
      v24 = *v22;

      v25 = sub_21AED0594(v23, v24);
      v27 = v26;

      if (v27)
      {
        v28 = *(*(a2 + 56) + 8 * v25);
        v29 = __OFADD__(v149, v28);
        v149 += v28;
        if (v29)
        {
          goto LABEL_69;
        }
      }
    }

    v22 += 2;
    --v19;
  }

  while (v19);
  v30 = 0;
  v31 = v147;
  v32 = v145;
  v6 = v146;
  while (v30 < *(v6 + 16))
  {
    v34 = *(v21 - 1);
    v33 = *v21;
    v35 = *(a2 + 16);

    if (v35)
    {
      v36 = sub_21AEE9FB8();
      sub_21AED0594(v36, v37);
      if (*(a2 + 16))
      {
        v38 = sub_21AEE9FB8();
        sub_21AED0594(v38, v39);
      }
    }

    v5 = *a1;
    if (*(*a1 + 16))
    {
      v40 = sub_21AED0594(v152, v31);
      if (v41)
      {
        v42 = *(*(v5 + 7) + 8 * v40);
        v43 = *(v42 + 16);

        if (v43)
        {
          v44 = sub_21AEE9FB8();
          v46 = sub_21AED0594(v44, v45);
          if (v47)
          {
            v48 = *(v42 + 56) + (v46 << 6);
            v49 = *(v48 + 48);
            v153 = *(v48 + 32);
            v154 = v49;
            swift_isUniquelyReferenced_nonNull_native();
            v157 = v42;
            v50 = sub_21AEE9FB8();
            sub_21AED0594(v50, v51);
            sub_21AEE9E6C();
            if (v29)
            {
              goto LABEL_73;
            }

            v54 = v52;
            v55 = v53;
            sub_21AEA7574(&qword_27CD3DF70, &qword_21AF0CE90);
            if (sub_21AF09D0C())
            {
              v56 = sub_21AEE9FB8();
              sub_21AED0594(v56, v57);
              sub_21AEEA050();
              a1 = v143;
              if (!v59)
              {
                goto LABEL_75;
              }

              v54 = v58;
              if ((v55 & 1) == 0)
              {
LABEL_27:
                v42 = v157;
                sub_21AEEA0AC();
                sub_21AEE9E30(v60);
                v62 = (v61 + 16 * v54);
                *v62 = v34;
                v62[1] = v33;
                sub_21AEEA008(v63, v64, v65, v66, v67, v68, v69, v70, v71, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v149, v150, v151, v152, v72, v153);
                sub_21AEE9FFC();
                if (v29)
                {
                  goto LABEL_74;
                }

                *(v42 + 16) = v73;
LABEL_33:
                v31 = v147;
LABEL_34:

                swift_isUniquelyReferenced_nonNull_native();
                *&v153 = *a1;
                sub_21AED0594(v152, v31);
                sub_21AED1B64();
                if (__OFADD__(v86, v87))
                {
                  goto LABEL_70;
                }

                v88 = v84;
                v89 = v85;
                sub_21AEA7574(&qword_27CD3D940, &qword_21AF0D3C0);
                v5 = &v153;
                if (sub_21AF09D0C())
                {
                  v5 = v153;
                  v31 = v147;
                  sub_21AED0594(v152, v147);
                  sub_21AED1C04();
                  if (!v59)
                  {
                    goto LABEL_75;
                  }

                  v88 = v90;
                }

                else
                {
                  v31 = v147;
                }

                v91 = v153;
                if (v89)
                {
                  v92 = *(v153 + 56);
                  v5 = *(v92 + 8 * v88);
                  *(v92 + 8 * v88) = v42;
                }

                else
                {
                  sub_21AED1AA8(v153 + 8 * (v88 >> 6));
                  v93 = (v91[6] + 16 * v88);
                  *v93 = v152;
                  v93[1] = v31;
                  *(v91[7] + 8 * v88) = v42;
                  v94 = v91[2];
                  v29 = __OFADD__(v94, 1);
                  v95 = v94 + 1;
                  if (v29)
                  {
                    goto LABEL_72;
                  }

                  v91[2] = v95;
                }

                *a1 = v91;
                v32 = v145;
                v6 = v146;
                goto LABEL_45;
              }
            }

            else
            {
              a1 = v143;
              if ((v55 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            v42 = v157;
            sub_21AEEA008(v74, v75, v76, v77, v78, v79, v80, v81, v82, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v149, v150, v151, v152, v83, v153);
            goto LABEL_33;
          }
        }

        goto LABEL_34;
      }
    }

LABEL_45:
    ++v30;
    v21 += 2;
    if (v32 == v30)
    {

      v14 = v139;
      v7 = v140;
      v12 = v141;
      v15 = v142;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_21AF09E7C();
  __break(1u);
}

void sub_21AEE888C(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
  v3 = sub_21AEC7C30(v2);
  sub_21AEC7A14(v3, xmmword_21AF0C5D0);
  sub_21AF09C5C();

  sub_21AEC7BD0();
  v83 = v4;
  v71 = *(a1 + 16);
  v5 = sub_21AF09E1C();
  MEMORY[0x21CEE4A70](v5);

  MEMORY[0x21CEE4A70](41, 0xE100000000000000);
  v3[3].n128_u64[1] = MEMORY[0x277D837D0];
  v3[2].n128_u64[0] = 0xD000000000000029;
  v3[2].n128_u64[1] = v83;
  sub_21AEC76AC(v3);

  v6 = 0;
  v67 = "am Events (Total Events: ";
  v69 = a1 + 32;
  v63 = 0x800000021AF10040;
  v65 = "\nRaw Stream: Query Raw:";
  v77 = "\tPresented Assets";
  v81 = v2;
  while (v6 != v71)
  {
    v73 = v6;
    v7 = *(v69 + 16 * v6 + 8);
    v8 = sub_21AEC7C30(v2);
    sub_21AEE9F3C(v8, v9, v10, v11, v12, v13, v14, v15, v16, v63, v65, v67, v69, v71, v73, v76, v77, v79, v81, v17);
    v18 = v7;
    sub_21AF09C5C();
    MEMORY[0x21CEE4A70](0x617473656D69540ALL, 0xEC000000203A706DLL);
    sub_21AF099CC();
    MEMORY[0x21CEE4A70](0xD000000000000017, v68 | 0x8000000000000000);
    v19 = v18;
    v20 = sub_21AEE9B28(v19, &selRef_queryRaw);
    if (!v21)
    {
      goto LABEL_23;
    }

    MEMORY[0x21CEE4A70](v20);

    MEMORY[0x21CEE4A70](0xD000000000000012, v66 | 0x8000000000000000);
    v22 = [v19 queryEmbedding];
    sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
    sub_21AF0988C();

    v23 = sub_21AEE9FB8();
    v24 = MEMORY[0x21CEE4B10](v23);
    v26 = v25;

    MEMORY[0x21CEE4A70](v24, v26);

    v27 = MEMORY[0x277D837D0];
    v8[3].n128_u64[1] = MEMORY[0x277D837D0];
    v8[2].n128_u64[0] = 0;
    v8[2].n128_u64[1] = 0xE000000000000000;
    sub_21AEC76AC(v8);

    v28 = sub_21AEC7C30(v2);
    sub_21AEE9F3C(v28, v29, v30, v31, v32, v33, v34, v35, v36, v64, v66, v68, v70, v72, v74, v19, v78, v80, v82, v37);
    v38[7] = v27;
    v38[4] = 0xD000000000000011;
    v38[5] = v63;
    sub_21AEC76AC(v38);

    v39 = [v76 presentedAssets];
    sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
    v40 = sub_21AF0988C();

    if (v40 >> 62)
    {
      v41 = sub_21AF09DAC();
      if (!v41)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v41)
      {
        goto LABEL_18;
      }
    }

    if (v41 < 1)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v42 = 0;
    v79 = v40 & 0xC000000000000001;
    v43 = v40;
    do
    {
      if (v79)
      {
        v44 = MEMORY[0x21CEE4EF0](v42, v40);
      }

      else
      {
        v44 = *(v40 + 8 * v42 + 32);
      }

      v45 = v44;
      ++v42;
      v46 = sub_21AEACE24(v44);
      if (v47)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0;
      }

      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0xE000000000000000;
      }

      v50 = sub_21AEC7C30(v81);
      sub_21AEE9F3C(v50, v51, v52, v53, v54, v55, v56, v57, v58, v63, v65, v67, v69, v71, v75, v76, v77, v79, v81, v59);
      sub_21AF09C5C();
      v60 = sub_21AEEA0E8(0x909u);
      MEMORY[0x21CEE4A70](v60, v61 | 0xEE00203A00000000);
      MEMORY[0x21CEE4A70](v48, v49);

      MEMORY[0x21CEE4A70](0x6944736F6309090ALL, 0xEF3A65636E617473);
      [v45 cosDistance];
      sub_21AF099CC();
      MEMORY[0x21CEE4A70](0xD000000000000011, v77 | 0x8000000000000000);
      [v45 rankingIndex];
      v62 = sub_21AF09E1C();
      MEMORY[0x21CEE4A70](v62);

      MEMORY[0x21CEE4A70](10, 0xE100000000000000);
      v50[3].n128_u64[1] = MEMORY[0x277D837D0];
      v50[2].n128_u64[0] = 0;
      v50[2].n128_u64[1] = 0xE000000000000000;
      sub_21AEC76AC(v50);

      v40 = v43;
    }

    while (v41 != v42);
LABEL_18:
    v6 = v75 + 1;

    v2 = v81;
  }
}

uint64_t sub_21AEE8DFC(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
  v3 = sub_21AEC7C30(v2);
  sub_21AEC7A14(v3, xmmword_21AF0C5D0);
  v19 = v4;
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD000000000000036, 0x800000021AF10080);
  v5 = *(a1 + 16);
  v6 = sub_21AF09E1C();
  MEMORY[0x21CEE4A70](v6);

  v3[3].n128_u64[1] = MEMORY[0x277D837D0];
  v3[2].n128_u64[0] = 0;
  v3[2].n128_u64[1] = v19;
  sub_21AEC76AC(v3);

  v8 = (a1 + 40);
  if (v5)
  {
    while (1)
    {
      v9 = *v8;
      v10 = sub_21AEC7C30(v2);
      sub_21AEC7A14(v10, xmmword_21AF0C5D0);
      v20 = v11;
      v12 = v9;
      sub_21AF09C5C();
      sub_21AEEA060();
      sub_21AF099CC();
      v13 = sub_21AEEA0E8(0x90Au);
      MEMORY[0x21CEE4A70](v13, v14 | 0xED00003A00000000);
      v15 = v12;
      result = sub_21AEE9B28(v15, &selRef_identifier);
      if (!v16)
      {
        break;
      }

      MEMORY[0x21CEE4A70](result);

      MEMORY[0x21CEE4A70](0x746573627553090ALL, 0xE90000000000003ALL);
      v17 = v15;
      result = sub_21AEE9B28(v17, &selRef_subset);
      if (!v18)
      {
        goto LABEL_7;
      }

      MEMORY[0x21CEE4A70](result);

      MEMORY[0x21CEE4A70](0x3A65707954090ALL, 0xE700000000000000);
      [v17 type];
      type metadata accessor for BMPhotosSearchType();
      sub_21AF09CFC();
      MEMORY[0x21CEE4A70](2570, 0xE200000000000000);
      v10[3].n128_u64[1] = MEMORY[0x277D837D0];
      v10[2].n128_u64[0] = 0;
      v10[2].n128_u64[1] = v20;
      sub_21AEC76AC(v10);

      v8 += 2;
      if (!--v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

void sub_21AEE90B0()
{
  v1 = v0;
  v2 = sub_21AF093FC();
  sub_21AEA7C90();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  sub_21AF093EC();
  sub_21AF0938C();
  v9 = *(v4 + 8);
  v9(v8, v2);
  sub_21AF0936C();
  v11 = v10;
  v12 = sub_21AEB3974();
  (v9)(v12);
  v13 = 0;
  v14 = v11 + 2.0;
  v64 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC6AeroML34AMLPhotosSearchBiomeMetricsUtility_clickedPhotoIds);
  v16 = *(v15 + 16);
  v17 = (v15 + 40);
  while (v16 != v13)
  {
    if (v13 >= *(v15 + 16))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v19 = *(v17 - 1);
    v18 = *v17;
    v20 = objc_allocWithZone(MEMORY[0x277CF13F8]);

    v21 = sub_21AEE96CC(v19, v18, 0xD000000000000019, 0x800000021AF0F840, 1);
    v22 = sub_21AEE5A10();
    v23 = [v22 source];

    [v23 sendEvent:v21 timestamp:v14];
    if (v13)
    {
      v24 = 30.0;
    }

    else
    {
      v24 = 1.0;
    }

    v14 = v14 + v24;
    v17 += 2;
    ++v13;
  }

  v63 = *(v64 + OBJC_IVAR____TtC6AeroML34AMLPhotosSearchBiomeMetricsUtility_sessionAssetUUIDs);
  v62 = *(v63 + 16);
  if (!v62)
  {
    return;
  }

  v25 = 0;
  v26 = *(v64 + OBJC_IVAR____TtC6AeroML34AMLPhotosSearchBiomeMetricsUtility_cosDistancesAsset);
  v60 = v63 + 32;
  v61 = v26;
  v58 = "Events (Total Events: ";
  v59 = v26 + 32;
  v27 = MEMORY[0x277D84F90];
  v57 = xmmword_21AF0C5D0;
  while (v25 < *(v63 + 16))
  {
    v28 = *(v60 + 8 * v25);
    v67 = v27;
    if (v25 >= *(v61 + 16))
    {
      goto LABEL_26;
    }

    v64 = v25 + 1;
    v29 = *(v59 + 8 * v25);
    v30 = *(v28 + 16);

    v31 = 0;
    v32 = v27;
    v33 = (v28 + 40);
    while (v30 != v31)
    {
      if (v31 >= *(v28 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v34 = *(v33 - 1);
      v35 = *v33;

      v36 = sub_21AF099EC();
      if (v31 >= *(v29 + 16))
      {
        goto LABEL_23;
      }

      v37 = v36;
      v38 = sub_21AF099AC();
      v39 = objc_allocWithZone(MEMORY[0x277CF0FD0]);
      v40 = sub_21AEE9774(v34, v35, v37, v38);
      MEMORY[0x21CEE4AD0]();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21AF098CC();
      }

      sub_21AF0991C();

      v32 = v67;
      v33 += 2;
      ++v31;
    }

    if (v25 == 3)
    {
      goto LABEL_27;
    }

    v41 = &unk_282C80B40 + 16 * v25;
    v42 = *(v41 + 4);
    v43 = *(v41 + 5);
    v44 = objc_allocWithZone(MEMORY[0x277CF0FC8]);

    v27 = MEMORY[0x277D84F90];
    v45 = sub_21AEE97FC(v42, v43, MEMORY[0x277D84F90], v32);
    v46 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
    v47 = sub_21AEC7C30(v46);
    sub_21AEC7A14(v47, v57);
    v65 = 0;
    v66 = v48;
    sub_21AF09C5C();
    sub_21AEEA060();
    sub_21AF099CC();
    MEMORY[0x21CEE4A70](0xD000000000000011, v58 | 0x8000000000000000);
    v49 = [v45 description];
    v50 = sub_21AF097CC();
    v52 = v51;

    MEMORY[0x21CEE4A70](v50, v52);

    v53 = v65;
    v54 = v66;
    v47[3].n128_u64[1] = MEMORY[0x277D837D0];
    v47[2].n128_u64[0] = v53;
    v47[2].n128_u64[1] = v54;
    sub_21AEC76AC(v47);

    v55 = sub_21AEE5988();
    v56 = [v55 source];

    [v56 sendEvent:v45 timestamp:v11];
    v11 = v11 + 30.0;
    v25 = v64;
    if (v64 == v62)
    {
      return;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_21AEE9614()
{
  sub_21AEE6514();

  sub_21AEE90B0();
}

id AMLPhotosSearchBiomeMetricsUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21AEE96CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_21AF097BC();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_21AF097BC();

LABEL_6:
  v10 = [v5 initWithIdentifier:v8 subset:v9 type:a5];

  return v10;
}

id sub_21AEE9774(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_21AF097BC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithAssetUUID:v8 rankingIndex:a3 cosDistance:a4];

  return v9;
}

id sub_21AEE97FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_21AF097BC();
  }

  else
  {
    v5 = 0;
  }

  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  v6 = sub_21AF0987C();

  sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
  v7 = sub_21AF0987C();

  v8 = [v4 initWithQueryRaw:v5 queryEmbedding:v6 presentedAssets:v7];

  return v8;
}

uint64_t sub_21AEE98E0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_21AEE993C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AEE9974(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_21AEE99BC()
{
  v1 = sub_21AF0925C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AEE9B28(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_21AF097CC();

  return v4;
}

void sub_21AEE9EA0()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  *(v2 - 144) = MEMORY[0x277D85DD0];
  *(v2 - 136) = v3;
}

uint64_t sub_21AEE9EC8(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = 0;
  v3 = MEMORY[0x277D85DD0];
  *(v2 - 152) = result;
  *(v2 - 144) = v3;
  return result;
}

__n128 sub_21AEE9F3C(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  result = a20;
  a1[1] = a20;
  return result;
}

__n128 sub_21AEE9F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a31, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __n128 a32)
{
  v36 = *(v32 + 56) + (v33 << 6);
  *v36 = a29;
  *(v36 + 16) = a30;
  result = a32;
  *(v36 + 32) = a32;
  *(v36 + 48) = v35;
  *(v36 + 56) = v34;
  return result;
}

uint64_t sub_21AEE9F68()
{

  return sub_21AF097BC();
}

uint64_t sub_21AEE9F98(uint64_t a1)
{

  return sub_21AF09D0C();
}

__n128 sub_21AEEA008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26, __int128 a27)
{
  v33 = *(v27 + 56) + (v28 << 6);
  *v33 = v32;
  *(v33 + 8) = v31;
  *(v33 + 16) = v30;
  *(v33 + 24) = v29;
  result = a26;
  *(v33 + 32) = a26;
  *(v33 + 48) = a27;
  return result;
}

void sub_21AEEA024()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

void sub_21AEEA060()
{

  JUMPOUT(0x21CEE4A70);
}

void sub_21AEEA120()
{

  JUMPOUT(0x21CEE4A70);
}

unint64_t sub_21AEEA174()
{

  return sub_21AED0608(v0);
}

uint64_t sub_21AEEA194(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 - 164) = a3;

  return sub_21AF0925C();
}

uint64_t sub_21AEEA1B4()
{

  return swift_beginAccess();
}

uint64_t sub_21AEEA1D4()
{

  return swift_unknownObjectRelease();
}

uint64_t dispatch thunk of AMLCandidateFeatureProvider.process(context:candidateWithFeatures:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21AEEA430(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v6 = sub_21AEEA458(v5);

  return v7(v6);
}

uint64_t dispatch thunk of AMLBatchCandidateFeatureProvider.process(context:candidatesWithFeatures:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21AEEA430(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v6 = sub_21AEEA458(v5);

  return v7(v6);
}

uint64_t AMLCandidatesWithSourceFeatures.candidates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AMLCandidatesWithSourceFeatures.features.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t AMLCandidatesWithSourceFeatures.init(candidates:features:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_21AEEA528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_21AEEA570(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21AEEA57C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21AEEA5BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AMLCandidatePipelineIdentifier.__allocating_init(name:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLCandidatePipelineIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLCandidatePipelineIdentifier.init(name:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD000000000000011;
    v2[3] = 0x800000021AF10230;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v5 = 0xD000000000000026;
    *(v5 + 8) = 0x800000021AF10200;
    *(v5 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLCandidatePipelineIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for AMLConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AMLConstants(_BYTE *result, int a2, int a3)
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

uint64_t sub_21AEEA96C()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_2812288F8);
  sub_21AEA7958(v0, qword_2812288F8);
  return sub_21AF096BC();
}

uint64_t sub_21AEEA9EC()
{
  sub_21AEEAB60();
  result = sub_21AF09B6C();
  qword_281228910 = result;
  return result;
}

uint64_t sub_21AEEAA54()
{
  v0 = sub_21AF0969C();
  sub_21AEA7A3C(v0, qword_281228918);
  sub_21AEA7958(v0, qword_281228918);
  if (qword_2812288D0 != -1)
  {
    swift_once();
  }

  v1 = qword_281228910;
  return sub_21AF0968C();
}

uint64_t sub_21AEEAAE0()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EBA0);
  sub_21AEA7958(v0, qword_27CD3EBA0);
  return sub_21AF096BC();
}

unint64_t sub_21AEEAB60()
{
  result = qword_2812287E8;
  if (!qword_2812287E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812287E8);
  }

  return result;
}

uint64_t AMLCandidatePipeline.process(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[45] = AssociatedTypeWitness;
  sub_21AEEC2C8(AssociatedTypeWitness);
  v4[46] = v6;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v7 = sub_21AEEC2F8();
  v4[50] = v7;
  sub_21AEEC2C8(v7);
  v4[51] = v8;
  v4[52] = swift_task_alloc();
  v9 = sub_21AEEC2F8();
  v4[53] = v9;
  sub_21AEEC2C8(v9);
  v4[54] = v10;
  v4[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21AEEAD48);
}

void sub_21AEEAD48()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 328);
  (*(*(v0 + 344) + 96))(*(v0 + 336), *(v0 + 344));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v2, v1, AssociatedConformanceWitness);
  v6 = *(v0 + 424);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
  v9 = *(v7 + 104);
  v9(v8, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 208) = v6;
  *(v0 + 448) = AssociatedTypeWitness;
  *(v0 + 216) = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    sub_21AE9641C((v0 + 56), v0 + 16);
    sub_21AEAF9B0((v0 + 16), *(v0 + 40));
    sub_21AEEC2AC();
    v12 = swift_task_alloc();
    *(v0 + 456) = v12;
    *v12 = v0;
    v12[1] = sub_21AEEB2E0;
    sub_21AEE2A24();

    __asm { BRAA            X3, X16 }
  }

  v15 = *(v0 + 424);
  v9(*(v0 + 336), *(v0 + 344));
  *(v0 + 224) = v15;
  *(v0 + 232) = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    sub_21AE9641C((v0 + 136), v0 + 96);
    sub_21AEAF9B0((v0 + 96), *(v0 + 120));
    sub_21AEEC2AC();
    v16 = swift_task_alloc();
    *(v0 + 480) = v16;
    *v16 = v0;
    v16[1] = sub_21AEEB628;
    sub_21AEE2A24();

    __asm { BRAA            X4, X16 }
  }

  v30 = *(v0 + 424);
  v31 = *(v0 + 440);
  v20 = *(v0 + 368);
  v19 = *(v0 + 376);
  v28 = *(v0 + 360);
  v29 = *(v0 + 432);
  v21 = *(v0 + 336);
  v22 = *(v0 + 344);
  v23 = *(v0 + 328);
  sub_21AF09C5C();

  strcpy(v32, "<requestID: ");
  BYTE5(v32[1]) = 0;
  HIWORD(v32[1]) = -5120;
  v24 = (*(*(v22 + 8) + 56))(v23, v21);
  MEMORY[0x21CEE4A70](v24);

  MEMORY[0x21CEE4A70](0xD000000000000021, 0x800000021AF102A0);
  v9(v21, v22);
  swift_getDynamicType();
  (*(v20 + 8))(v19, v28);
  v25 = sub_21AF09F7C();
  MEMORY[0x21CEE4A70](v25);

  v26 = v32[1];
  sub_21AEA7E80();
  swift_allocError();
  *v27 = v32[0];
  *(v27 + 8) = v26;
  *(v27 + 16) = 1;
  swift_willThrow();
  (*(v29 + 8))(v31, v30);
  sub_21AEEC28C();

  sub_21AEE2A24();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_21AEEB2E0(uint64_t a1)
{
  v4 = *v2;
  sub_21AEEC2EC();
  *v5 = v4;
  v6 = *v2;
  sub_21AEEC2EC();
  *v7 = v6;
  *(v4 + 464) = v1;

  if (v1)
  {
    v8 = sub_21AEEBAF8;
  }

  else
  {
    *(v4 + 472) = a1;
    v8 = sub_21AEEB400;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21AEEB400()
{
  v1 = *(v0 + 432);
  v19 = *(v0 + 424);
  v20 = *(v0 + 440);
  v2 = *(v0 + 336);
  *(v0 + 312) = *(v0 + 472);
  v3 = swift_task_alloc();
  v21 = *(v0 + 344);
  *(v3 + 16) = v2;
  *(v3 + 24) = v21;
  v4 = sub_21AF0997C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_21AED3450(sub_21AEEC1E0, v3, v4, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  *(v0 + 320) = v8;
  v9 = swift_task_alloc();
  *(v9 + 16) = v2;
  *(v9 + 24) = v21;
  v10 = sub_21AF0997C();
  v13 = type metadata accessor for AMLCandidateWithFeatures(0, AssociatedTypeWitness, v11, v12);
  v14 = swift_getWitnessTable();
  sub_21AED3450(sub_21AEEC208, v9, v10, v13, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
  (*(v1 + 8))(v20, v19);

  sub_21AEA79F0((v0 + 16));
  sub_21AEEC28C();

  v16 = sub_21AEEC2D8();

  return v17(v16);
}

uint64_t sub_21AEEB628(uint64_t a1)
{
  sub_21AEEC2EC();
  *v4 = v3;
  v5 = *v2;
  sub_21AEEC2EC();
  *v6 = v5;
  *(v7 + 488) = v1;

  if (v1)
  {
    v8 = sub_21AEEBBA8;
  }

  else
  {
    v8 = sub_21AEEB734;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21AEEB734()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 248);
  *(v0 + 288) = *(v0 + 240);
  v3 = swift_task_alloc();
  v4 = *(v0 + 344);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = sub_21AF0997C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  WitnessTable = swift_getWitnessTable();
  v33 = AssociatedTypeWitness;
  v9 = sub_21AED3450(sub_21AEEBF78, v3, v5, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  v34 = MEMORY[0x277D84F90];
  result = [v2 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (result)
    {
      v12 = 0;
      do
      {
        v13 = [v2 featuresAtIndex_];
        MEMORY[0x21CEE4AD0]();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21AF098CC();
        }

        ++v12;
        sub_21AF0991C();
      }

      while (v11 != v12);
      v14 = v34;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v30 = *(v0 + 432);
    v31 = *(v0 + 424);
    v32 = *(v0 + 440);
    *(v0 + 296) = v9;
    *(v0 + 304) = v14;
    v15 = sub_21AF0997C();
    v16 = sub_21AEA7574(&qword_27CD3DA28, &unk_21AF0D130);
    v17 = swift_getWitnessTable();
    v18 = sub_21AEEBFA0();
    v29 = *(v0 + 336);
    sub_21AF09E5C();

    v19 = *(v0 + 264);
    *(v0 + 272) = *(v0 + 256);
    *(v0 + 280) = v19;
    v20 = swift_task_alloc();
    *(v20 + 16) = v29;
    *(v0 + 176) = v15;
    *(v0 + 184) = v16;
    *(v0 + 192) = v17;
    *(v0 + 200) = v18;
    v21 = sub_21AF09C6C();
    v24 = type metadata accessor for AMLCandidateWithFeatures(0, v33, v22, v23);
    v25 = swift_getWitnessTable();
    sub_21AEE0524(sub_21AEEC1C0, v20, v21, v24, MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v26);

    swift_unknownObjectRelease();

    (*(v30 + 8))(v32, v31);

    sub_21AEA79F0((v0 + 96));
    sub_21AEEC28C();

    v27 = sub_21AEEC2D8();

    return v28(v27);
  }

  return result;
}

uint64_t sub_21AEEBAF8()
{
  (*(v0[54] + 8))(v0[55], v0[53]);
  sub_21AEA79F0(v0 + 2);
  sub_21AEEC28C();

  v1 = v0[1];

  return v1();
}

uint64_t sub_21AEEBBA8()
{
  (*(v0[54] + 8))(v0[55], v0[53]);
  sub_21AEA79F0(v0 + 12);
  sub_21AEEC28C();

  v1 = v0[1];

  return v1();
}

uint64_t sub_21AEEBC58@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v14 - v7;
  (*(v9 + 16))(v14 - v7, a1, AssociatedTypeWitness);
  v10 = sub_21AF0974C();
  v11 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v12 = sub_21AF07524(v10);
  if (!v3)
  {
    return sub_21AEA8470(v8, v12, AssociatedTypeWitness, a3);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21AEEBDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(a4 + 112))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v6)
  {
    return (*(v11 + 8))(v13, AssociatedTypeWitness);
  }

  (*(v11 + 8))(v13, AssociatedTypeWitness);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_21AEEBFA0()
{
  result = qword_27CD3DA30;
  if (!qword_27CD3DA30)
  {
    sub_21AEAF7F0(&qword_27CD3DA28, &unk_21AF0D130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3DA30);
  }

  return result;
}

uint64_t sub_21AEEC004@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21AEAF7F0(&unk_27CD3DE90, &unk_21AF0C440);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  v13 = *(v7 + 16);
  v13(v15 - v11, a1, TupleTypeMetadata2);
  swift_unknownObjectRelease();
  v13(v10, a1, TupleTypeMetadata2);
  sub_21AEA8470(v12, *&v10[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness, a3);
  return (*(*(AssociatedTypeWitness - 8) + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_21AEEC28C()
{
}

uint64_t sub_21AEEC2F8()
{

  return swift_getAssociatedTypeWitness();
}

BOOL sub_21AEEC318(unint64_t a1, unint64_t a2)
{
  v4 = sub_21AEA7574(&qword_27CD3DB08, "rq");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  if (qword_27CD3D298 != -1)
  {
    swift_once();
  }

  v7 = sub_21AEA7574(&qword_27CD3DB10, &qword_21AF0D2A0);
  v8 = sub_21AEA7958(v7, qword_27CD3EBB8);
  sub_21AEEC580(v8, a1, a2);
  v9 = sub_21AEA7574(&qword_27CD3DB18, &qword_21AF0D2A8);
  v10 = sub_21AEA766C(v6, 1, v9);
  sub_21AEEC8BC(v6);
  return v10 != 1 && sub_21AF097FC() >= 3 && sub_21AF097FC() < 81;
}

uint64_t AMLComponentIdentifier.deinit()
{

  return v0;
}

uint64_t sub_21AEEC484()
{
  v4 = v0[2];

  MEMORY[0x21CEE4A70](46, 0xE100000000000000);
  v2 = v0[4];
  v1 = v0[5];

  MEMORY[0x21CEE4A70](v2, v1);

  return v4;
}

uint64_t static AMLComponentIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_21AF09E4C(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_21AF09E4C();
    }
  }

  return result;
}

uint64_t sub_21AEEC580(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_21AEA7574(&qword_27CD3DB10, &qword_21AF0D2A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_21AEEC928(sub_21AEEC924, 0, a2, a3);
  sub_21AEEC95C();
  sub_21AF095FC();
  sub_21AF0961C();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_21AEEC73C()
{
  v0 = sub_21AEA7574(&qword_27CD3DB10, &qword_21AF0D2A0);
  sub_21AEA7A3C(v0, qword_27CD3EBB8);
  sub_21AEA7958(v0, qword_27CD3EBB8);
  sub_21AEA7574(&unk_27CD3DB28, &qword_21AF0D2B0);
  return sub_21AF0960C();
}

uint64_t AMLComponentIdentifier.__deallocating_deinit()
{
  AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21AEEC8BC(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3DB08, "rq");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AEEC928(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

unint64_t sub_21AEEC95C()
{
  result = qword_27CD3DB20;
  if (!qword_27CD3DB20)
  {
    sub_21AEAF7F0(&qword_27CD3DB10, &qword_21AF0D2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3DB20);
  }

  return result;
}

uint64_t sub_21AEEC9C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

void sub_21AEEC9FC(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_6:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_21AEA784C(*(v3 + 56) + 32 * v10, &v19);
    *&v22 = v13;
    *(&v22 + 1) = v12;
    sub_21AEAF9F4(&v19, v23);
    v14 = *(&v22 + 1);

    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v9;
    if (!v14)
    {
LABEL_10:
      sub_21AEA7990(&v22, &qword_27CD3DBD0, qword_21AF0D2D0);
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return;
    }

    v19 = v22;
    v20 = v23[0];
    v21 = v23[1];
    v15 = v1[5];
    if (!__OFADD__(v15, 1))
    {
      v1[5] = v15 + 1;
      *a1 = v15;
      v16 = v20;
      *(a1 + 8) = v19;
      *(a1 + 24) = v16;
      *(a1 + 40) = v21;
      return;
    }
  }

  else
  {
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= ((v6 + 64) >> 6))
      {
        *&v17 = sub_21AEEF3D4();
        v22 = v17;
        *v1 = v3;
        v1[1] = v4;
        v1[2] = v6;
        v1[3] = v18;
        v1[4] = 0;
        goto LABEL_10;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id AMLFeaturesConfiguration.init(bundleIdentifier:modelName:versionId:expirationPolicy:featuresDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = sub_21AF097BC();

  if (a4)
  {
    v12 = sub_21AF097BC();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_21AF097BC();

  v15 = [v13 initWithBundleIdentifier:v11 modelName:v12 versionId:v14 expirationPolicy:a7 featuresDescription:a8];

  return v15;
}

id AMLFeaturesConfiguration.init(bundleIdentifier:modelName:versionId:expirationPolicy:featuresDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8)
{
  v21 = a7;
  v10 = sub_21AF0942C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21AF097BC();

  if (a4)
  {
    v15 = sub_21AF097BC();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_21AF097BC();

  sub_21AF0941C();
  v17 = sub_21AF0940C();
  (*(v11 + 8))(v13, v10);
  sub_21AF097BC();
  sub_21AEEF4A4();
  v18 = [v20 initWithBundleIdentifier:v14 modelName:v15 versionId:v16 expirationPolicy:v21 featuresDescription:a8 configurationId:v17];

  return v18;
}

id sub_21AEED084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8, uint64_t a9)
{
  v11 = sub_21AF097BC();

  if (a4)
  {
    v12 = sub_21AF097BC();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_21AF097BC();

  v15 = sub_21AF097BC();

  v16 = [v13 initWithBundleIdentifier:v11 modelName:v12 versionId:v14 expirationPolicy:a7 featuresDescription:a8 configurationId:v15];

  return v16;
}

id sub_21AEED1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = (v10 + OBJC_IVAR___AMLFeaturesConfiguration_bundleIdentifier);
  *v11 = a1;
  v11[1] = a2;
  v12 = (v10 + OBJC_IVAR___AMLFeaturesConfiguration_modelName);
  *v12 = a3;
  v12[1] = a4;
  v13 = (v10 + OBJC_IVAR___AMLFeaturesConfiguration_versionId);
  *v13 = a5;
  v13[1] = a6;
  *(v10 + OBJC_IVAR___AMLFeaturesConfiguration_expirationPolicy) = a7;
  *(v10 + OBJC_IVAR___AMLFeaturesConfiguration_featuresDescription) = a8;
  v14 = (v10 + OBJC_IVAR___AMLFeaturesConfiguration_configurationId);
  *v14 = a9;
  v14[1] = a10;
  v16.super_class = AMLFeaturesConfiguration;
  return objc_msgSendSuper2(&v16, sel_init);
}

id AMLFeaturesConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for AMLFeaturesConfiguration(a1);
  v6 = [v3 bundleIdentifier];
  v7 = sub_21AF097CC();
  v20 = v8;
  v21 = v7;

  v19 = sub_21AEEF25C(v3);
  v10 = v9;
  v11 = [v3 versionId];
  v12 = sub_21AF097CC();
  v14 = v13;

  LODWORD(v11) = [v3 expirationPolicy];
  v15 = [v3 featuresDescription];
  v16 = [v3 configurationId];
  v17 = sub_21AF097CC();

  result = sub_21AEED084(v21, v20, v19, v10, v12, v14, v11, v15, v17);
  a2[3] = v5;
  *a2 = result;
  return result;
}

Swift::Void __swiftcall AMLFeaturesConfiguration.encode(with:)(NSCoder with)
{
  v3 = [v1 bundleIdentifier];
  if (!v3)
  {
    sub_21AF097CC();
    sub_21AF097BC();
    sub_21AEEF460();
  }

  v4 = sub_21AEEF370();
  sub_21AEEF320();

  sub_21AEEF25C(v1);
  if (v5)
  {
    sub_21AF097BC();
    sub_21AEEF460();
  }

  v6 = sub_21AEEF3FC();
  sub_21AEEF320();
  swift_unknownObjectRelease();

  v7 = [v1 versionId];
  if (!v7)
  {
    sub_21AF097CC();
    sub_21AF097BC();
    sub_21AEEF460();
  }

  v8 = sub_21AEEF350(0x73726576u);
  sub_21AEEF320();

  v9 = [v1 expirationPolicy];
  v10 = sub_21AEEF370();
  [(objc_class *)with.super.isa encodeInt32:v9 forKey:v10];

  v11 = [v1 featuresDescription];
  v12 = sub_21AF097BC();
  sub_21AEEF320();

  v13 = [v1 configurationId];
  if (!v13)
  {
    sub_21AF097CC();
    sub_21AF097BC();
    sub_21AEEF4A4();
  }

  v14 = sub_21AEEF3A4();
  sub_21AEEF43C(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
}

id AMLFeaturesConfiguration.init(coder:)(void *a1)
{
  v3 = sub_21AEEF370();
  v4 = sub_21AEEF3F0();
  v6 = [v4 v5];

  if (v6)
  {
    sub_21AF09B9C();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  *&v22 = sub_21AEEF340(v7, v8, v9, v10, v11, v12, v13, v14, v123, v133, v143, v148, v153.receiver, v153.super_class, v154, v155, *&v156[0], *(&v156[0] + 1), v156[1]).n128_u64[0];
  if (!v23)
  {

LABEL_39:
    v38 = sub_21AEA7990(v157, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_44;
  }

  if ((sub_21AEEF300(v15, v16, v17, MEMORY[0x277D837D0], v18, v19, v20, v21, v124, v134, v22) & 1) == 0)
  {

LABEL_44:
    type metadata accessor for AMLFeaturesConfiguration(v38);
    sub_21AEEF478();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v25 = v154;
  v24 = v155;
  v26 = sub_21AEEF3FC();
  v27 = sub_21AEEF3F0();
  v29 = [v27 v28];

  if (v29)
  {
    sub_21AF09B9C();
    v30 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  *&v46 = sub_21AEEF340(v30, v31, v32, v33, v34, v35, v36, v37, v125, v135, v144, v149, v153.receiver, v153.super_class, v154, v155, *&v156[0], *(&v156[0] + 1), v156[1]).n128_u64[0];
  if (!v47)
  {

LABEL_38:

    goto LABEL_39;
  }

  if ((sub_21AEEF300(v39, v40, v41, MEMORY[0x277D837D0], v42, v43, v44, v45, v126, v136, v46) & 1) == 0)
  {

LABEL_43:

    goto LABEL_44;
  }

  v48 = v155;
  v49 = sub_21AEEF350(0x73726576u);
  v50 = sub_21AEEF3F0();
  v52 = [v50 v51];

  if (v52)
  {
    sub_21AF09B9C();
    v53 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  *&v68 = sub_21AEEF340(v53, v54, v55, v56, v57, v58, v59, v60, v127, v137, v145, v154, v153.receiver, v153.super_class, v154, v155, *&v156[0], *(&v156[0] + 1), v156[1]).n128_u64[0];
  if (!v69)
  {

LABEL_37:

    goto LABEL_38;
  }

  if ((sub_21AEEF300(v61, v62, v63, MEMORY[0x277D837D0], v64, v65, v66, v67, v128, v138, v68) & 1) == 0)
  {

LABEL_42:

    goto LABEL_43;
  }

  v70 = v155;
  v71 = sub_21AF097BC();
  v72 = sub_21AEEF3F0();
  v74 = [v72 v73];

  if (v74)
  {
    sub_21AF09B9C();
    v75 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v75, v76, v77, v78, v79, v80, v81, v82, v129, v139, v154, v150, v153.receiver, v153.super_class, v154, v155, *&v156[0], *(&v156[0] + 1), v156[1]);
  if (!v84)
  {

LABEL_36:

    goto LABEL_37;
  }

  v85 = type metadata accessor for AMLFeaturesSpecification(v83);
  if ((sub_21AEEF300(v85, v86, v87, v85, v88, v89, v90, v91, v130, v140) & 1) == 0)
  {

LABEL_41:

    goto LABEL_42;
  }

  v92 = sub_21AEEF3A4();
  v93 = sub_21AEEF3F0();
  v95 = [v93 v94];

  if (v95)
  {
    sub_21AF09B9C();
    v96 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  *&v111 = sub_21AEEF340(v96, v97, v98, v99, v100, v101, v102, v103, v131, v154, v146, v151, v153.receiver, v153.super_class, v154, v155, *&v156[0], *(&v156[0] + 1), v156[1]).n128_u64[0];
  if (!v112)
  {

    goto LABEL_36;
  }

  if ((sub_21AEEF300(v104, v105, v106, MEMORY[0x277D837D0], v107, v108, v109, v110, v132, v141, v111) & 1) == 0)
  {

    goto LABEL_41;
  }

  v113 = v154;
  v114 = v155;
  v115 = sub_21AEEF370();
  v116 = [a1 decodeInt32ForKey_];

  v117 = &v1[OBJC_IVAR___AMLFeaturesConfiguration_bundleIdentifier];
  *v117 = v25;
  v117[1] = v24;
  v118 = &v1[OBJC_IVAR___AMLFeaturesConfiguration_modelName];
  *v118 = v152;
  *(v118 + 1) = v48;
  v119 = &v1[OBJC_IVAR___AMLFeaturesConfiguration_versionId];
  *v119 = v147;
  *(v119 + 1) = v70;
  *&v1[OBJC_IVAR___AMLFeaturesConfiguration_expirationPolicy] = v116;
  *&v1[OBJC_IVAR___AMLFeaturesConfiguration_featuresDescription] = v142;
  v120 = &v1[OBJC_IVAR___AMLFeaturesConfiguration_configurationId];
  *v120 = v113;
  v120[1] = v114;
  v153.receiver = v1;
  v153.super_class = AMLFeaturesConfiguration;
  v121 = objc_msgSendSuper2(&v153, sel_init);

  return v121;
}

id AMLFeaturesSpecification.init(featuresDescription:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___AMLFeaturesSpecification_featuresDescription) = a1;
  v3.super_class = AMLFeaturesSpecification;
  return objc_msgSendSuper2(&v3, sel_init);
}

id AMLFeaturesSpecification.init(featureDictionary:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_21AF0971C();

  v3 = [v1 initWithFeatureDictionary_];

  return v3;
}

{
  v1 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  sub_21AEEC9C0(a1, &v20);
  while (1)
  {
    sub_21AEEC9FC(&v14);
    v17 = v14;
    v18[0] = v15[0];
    v18[1] = v15[1];
    v19 = v16;
    v2 = *&v15[0];
    if (!*&v15[0])
    {
      break;
    }

    v3 = *(&v17 + 1);
    sub_21AEAF9F4((v18 + 8), v12);
    *&v14 = v3;
    *(&v14 + 1) = v2;
    sub_21AEAF9F4(v12, v15);
    sub_21AEB3898(&v14, v10);

    if (swift_dynamicCast())
    {
      v4 = v9;
    }

    else
    {
      v4 = 0;
    }

    sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
    sub_21AEB3898(&v14, v10);
    v5 = sub_21AEEDFE4(v10[0], v10[1], v4, 0, 0);
    sub_21AEA79F0(v11);
    v6 = v5;
    MEMORY[0x21CEE4AD0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21AF098CC();
    }

    sub_21AF0991C();

    sub_21AEA7990(&v14, &qword_27CD3D840, &qword_21AF0C5B0);
    v1 = v21;
  }

  sub_21AE96764(v20);
  *&v8[OBJC_IVAR___AMLFeaturesSpecification_featuresDescription] = v1;
  v13.receiver = v8;
  v13.super_class = AMLFeaturesSpecification;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_21AEEDFE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_21AF097BC();

  if (a5)
  {
    sub_21AEA7574(&qword_27CD3DBC8, &qword_21AF0D2C8);
    v9 = sub_21AF0987C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() featureDescriptionWithName:v8 type:a3 optional:a4 & 1 constraints:v9];

  return v10;
}

id sub_21AEEE0F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AMLFeaturesSpecification(a1);
  v5 = [v2 featuresDescription];
  sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  sub_21AEEF478();
  v6 = sub_21AF0988C();

  result = _sSo24AMLFeaturesSpecificationC6AeroMLE19featuresDescriptionABSaySo09MLFeatureF0CG_tcfC_0(v6);
  a2[3] = v4;
  *a2 = result;
  return result;
}

id _sSo24AMLFeaturesSpecificationC6AeroMLE19featuresDescriptionABSaySo09MLFeatureF0CG_tcfC_0(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  v2 = sub_21AF0987C();

  v3 = [v1 initWithFeaturesDescription_];

  return v3;
}

void sub_21AEEE224(void *a1)
{
  v3 = [v1 featuresDescription];
  if (!v3)
  {
    v3 = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
    sub_21AF0988C();
    sub_21AF0987C();
    sub_21AEEF4A4();
  }

  sub_21AEEF390();
  v4 = sub_21AF097BC();
  [a1 encodeObject:v3 forKey:v4];
}

id AMLFeaturesSpecification.init(coder:)(void *a1)
{
  sub_21AEEF390();
  v3 = sub_21AF097BC();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_21AF09B9C();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  sub_21AEEF3E0(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18.receiver, v18.super_class, v19, v20, *(&v20 + 1), v21);
  if (!v13)
  {

    v15 = sub_21AEA7990(v22, &qword_27CD3D330, &unk_21AF0C420);
LABEL_9:
    type metadata accessor for AMLFeaturesSpecification(v15);
    sub_21AEEF478();
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_21AEA7574(&qword_27CD3DB80, &unk_21AF0D2B8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR___AMLFeaturesSpecification_featuresDescription] = v19;
  v18.receiver = v1;
  v18.super_class = AMLFeaturesSpecification;
  v14 = objc_msgSendSuper2(&v18, sel_init);

  return v14;
}

id sub_21AEEE538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_21AF097BC();

  return v3;
}

uint64_t sub_21AEEE624(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___AMLFeaturesDonationMetadata_sessionId);
  *v3 = a1;
  v3[1] = a2;
  return sub_21AEEF2F8();
}

id AMLFeaturesDonationMetadata.init(sessionId:metadata:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_21AF097BC();

  if (a3)
  {
    sub_21AF0971C();
    sub_21AEEF460();
  }

  else
  {
    a2 = 0;
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSessionId:v5 metadata:a2];

  return v6;
}

id AMLFeaturesDonationMetadata.init(sessionId:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR___AMLFeaturesDonationMetadata_metadata;
  *(v3 + OBJC_IVAR___AMLFeaturesDonationMetadata_metadata) = 0;
  v5 = (v3 + OBJC_IVAR___AMLFeaturesDonationMetadata_sessionId);
  *v5 = a1;
  v5[1] = a2;
  *(v3 + v4) = a3;
  v7.super_class = AMLFeaturesDonationMetadata;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21AEEE8D0@<X0>(void *a1@<X8>)
{
  v3 = [v1 sessionId];
  v4 = sub_21AF097CC();
  v6 = v5;

  v7 = sub_21AEB3760(v1);
  v8 = objc_allocWithZone(AMLFeaturesDonationMetadata);
  v9 = sub_21AEE0BB4(v4, v6, v7);
  result = type metadata accessor for AMLFeaturesDonationMetadata(v9);
  a1[3] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_21AEEE984(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_21AEAF9B0(v8, v8[3]);
  v6 = sub_21AF09E3C();
  sub_21AEA79F0(v8);
  return v6;
}

void sub_21AEEE9F4()
{
  v1 = [v0 sessionId];
  if (!v1)
  {
    sub_21AF097CC();
    sub_21AF097BC();
    sub_21AEEF460();
  }

  v2 = sub_21AEEF350(0x73736573u);
  sub_21AEEF320();

  if (sub_21AEB3760(v0))
  {
    sub_21AF0971C();
    sub_21AEEF4A4();
  }

  v3 = sub_21AED2EE0();
  sub_21AEEF43C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  swift_unknownObjectRelease();
}

id _sSo24AMLFeaturesConfigurationC6AeroMLE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id AMLFeaturesDonationMetadata.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___AMLFeaturesDonationMetadata_metadata;
  *&v1[OBJC_IVAR___AMLFeaturesDonationMetadata_metadata] = 0;
  v4 = sub_21AEEF350(0x73736573u);
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_21AF09B9C();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  *&v19 = sub_21AEEF3E0(v6, v7, v8, v9, v10, v11, v12, v13, v44.receiver, v44.super_class, v45, v46, v47, *(&v47 + 1), v48).n128_u64[0];
  if (!v20)
  {

LABEL_15:
    sub_21AEA7990(v49, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_16;
  }

  if ((sub_21AEEF484(v14, v15, v16, MEMORY[0x277D837D0], v17, v18, v19) & 1) == 0)
  {

LABEL_16:

    type metadata accessor for AMLFeaturesDonationMetadata(v42);
    sub_21AEEF478();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v22 = v45;
  v21 = v46;
  v23 = sub_21AED2EE0();
  v24 = [a1 decodeObjectForKey_];

  if (v24)
  {
    sub_21AF09B9C();
    v25 = swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  sub_21AEEF3E0(v25, v26, v27, v28, v29, v30, v31, v32, v44.receiver, v44.super_class, v45, v46, v47, *(&v47 + 1), v48);
  if (!v33)
  {

    goto LABEL_15;
  }

  v34 = sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
  if ((sub_21AEEF484(v34, v35, v36, v34, v37, v38) & 1) == 0)
  {

    goto LABEL_16;
  }

  v39 = v45;
  v40 = &v1[OBJC_IVAR___AMLFeaturesDonationMetadata_sessionId];
  *v40 = v22;
  v40[1] = v21;
  *&v1[v3] = v39;

  v44.receiver = v1;
  v44.super_class = AMLFeaturesDonationMetadata;
  v41 = objc_msgSendSuper2(&v44, sel_init);

  return v41;
}

uint64_t AMLFeaturesConfiguration.description.getter()
{
  v1 = v0;
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD00000000000002ELL, 0x800000021AF10440);
  v2 = [v0 bundleIdentifier];
  sub_21AF097CC();

  sub_21AEEF420();

  MEMORY[0x21CEE4A70](0x6C65646F6D09090ALL, 0xEE00203A656D614ELL);
  v3 = sub_21AEEF25C(v1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 7104878;
    v5 = 0xE300000000000000;
  }

  MEMORY[0x21CEE4A70](v3, v5);

  MEMORY[0x21CEE4A70](0x697372657609090ALL, 0xEE00203A64496E6FLL);
  v6 = [v1 versionId];
  sub_21AF097CC();

  sub_21AEEF420();

  sub_21AEEF390();
  MEMORY[0x21CEE4A70](0xD000000000000015);
  [v1 expirationPolicy];
  v7 = sub_21AF09E1C();
  MEMORY[0x21CEE4A70](v7);

  MEMORY[0x21CEE4A70](0xD000000000000019, 0x800000021AF10490);
  v8 = [v1 featuresDescription];
  v9 = [v8 description];
  v10 = sub_21AF097CC();
  v12 = v11;

  MEMORY[0x21CEE4A70](v10, v12);

  MEMORY[0x21CEE4A70](0xD000000000000017, 0x800000021AF104B0);
  v13 = [v1 configurationId];
  sub_21AF097CC();

  sub_21AEEF420();

  return 0;
}

id sub_21AEEF104(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21AF097BC();

  return v5;
}

uint64_t AMLFeaturesSpecification.description.getter()
{
  sub_21AF09C5C();
  sub_21AEEF390();
  MEMORY[0x21CEE4A70](0xD000000000000032);
  v1 = [v0 featuresDescription];
  v2 = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  sub_21AEC76A0();
  v3 = sub_21AF0988C();

  v4 = MEMORY[0x21CEE4B10](v3, v2);
  v6 = v5;

  MEMORY[0x21CEE4A70](v4, v6);

  return 0;
}

uint64_t sub_21AEEF25C(void *a1)
{
  v1 = [a1 modelName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21AF097CC();

  return v3;
}

uint64_t sub_21AEEF300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_dynamicCast();
}

id sub_21AEEF320()
{

  return [v0 (v3 + 3842)];
}

uint64_t sub_21AEEF350(unsigned int a1)
{

  return sub_21AF097BC();
}

uint64_t sub_21AEEF370()
{

  return sub_21AF097BC();
}

uint64_t sub_21AEEF3A4()
{

  return sub_21AF097BC();
}

uint64_t sub_21AEEF3FC()
{

  return sub_21AF097BC();
}

void sub_21AEEF420()
{

  JUMPOUT(0x21CEE4A70);
}

id sub_21AEEF43C(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [v10 (v12 + 3842)];
}

uint64_t sub_21AEEF460()
{
}

uint64_t sub_21AEEF484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_21AEEF4A4()
{
}

void *sub_21AEEF4D0(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_21AEACCB8(a2 - result, 0);
      if (sub_21AEF7764(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_21AEEF5AC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_21AE96764(v9);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_21AEEF64C()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_21AF09C5C();
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C(v10, v2);
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C(v10, v4);
  sub_21AEF8290();
  MEMORY[0x21CEE4A70](0xD000000000000019);
  sub_21AEF839C(v10, v1);
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C(v10, v3);
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C(v10, v6);
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C(v10, v5);
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C(v10, v8);
  sub_21AEF8290();
  MEMORY[0x21CEE4A70]();
  sub_21AEF839C(v10, v7);
  return v10[0];
}

uint64_t sub_21AEEF808()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EBD0);
  sub_21AEA7958(v0, qword_27CD3EBD0);
  return sub_21AF096BC();
}

void *sub_21AEEF888()
{
  v1 = [BiomeLibrary() AeroML];
  sub_21AEE2064();
  swift_unknownObjectRelease();
  v2 = [v0 RawEvent];
  swift_unknownObjectRelease();
  v3 = [v2 PhotosSearchSession];
  sub_21AEE2064();
  swift_unknownObjectRelease();
  return v0;
}

id sub_21AEEF918()
{
  v1 = [BiomeLibrary() Photos];
  sub_21AEE2064();
  swift_unknownObjectRelease();
  v2 = [v0 Search];
  swift_unknownObjectRelease();
  return v2;
}

void sub_21AEEF988(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    oslog = v2;
    [v2 logMessage:a1];
  }

  else
  {
    if (qword_281228710 != -1)
    {
      sub_21AEF81C4();
      swift_once();
    }

    v3 = sub_21AF096CC();
    sub_21AEC78A8(v3, qword_27CD3EBD0);
    oslog = sub_21AF096AC();
    v4 = sub_21AF09A9C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21AE94000, oslog, v4, "Unable to get PETEventTracker2", v5, 2u);
      sub_21AEAFB90();
    }
  }
}

id sub_21AEEFAB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v188 = a4;
  v187 = a3;
  v186 = a2;
  v196 = a1;
  v6 = sub_21AF093FC();
  sub_21AEA7C90();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_21AEAD074();
  v12 = (v10 - v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v172 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v172 - v18;
  MEMORY[0x28223BE20](v17);
  j = (&v172 - v20);
  v22 = sub_21AEA7574(&qword_27CD3DBD8, qword_21AF0D330);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v172 - v23;
  v25 = sub_21AF0925C();
  sub_21AEA7C90();
  v189 = v26;
  MEMORY[0x28223BE20](v27);
  v193 = &v172 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = MEMORY[0x277D84F90];
  v192 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  v29 = [objc_opt_self() mainBundle];
  v30 = sub_21AEF750C(v29);
  v194 = v25;
  v195 = a5;
  v191 = v31;
  if (v31)
  {
    if (a5)
    {
      v32 = v30;
      v33 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v34 = sub_21AEC7C30(v33);
      sub_21AEF8364(v34, xmmword_21AF0C5D0);
      v25 = &v200;
      sub_21AF09C5C();
      MEMORY[0x21CEE4A70](0xD00000000000003CLL, 0x800000021AF106F0);
      MEMORY[0x21CEE4A70](v32, v191);
      sub_21AEF83CC();
      v35 = v200;
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 32) = v35;
      sub_21AEC76AC(v34);
    }
  }

  else
  {
    if (qword_281228710 != -1)
    {
      sub_21AEF81C4();
      swift_once();
    }

    v36 = sub_21AF096CC();
    sub_21AEC78A8(v36, qword_27CD3EBD0);
    v25 = sub_21AF096AC();
    v37 = sub_21AF09A8C();
    if (os_log_type_enabled(v25, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21AE94000, v25, v37, "Missing incoming bundleId while performing photos client data upload to PET", v38, 2u);
      sub_21AEAFB90();
    }

    sub_21AEF83CC();
  }

  sub_21AEF7578(v196, v24);
  if (sub_21AEA766C(v24, 1, v25) == 1)
  {
    sub_21AEA7990(v24, &qword_27CD3DBD8, qword_21AF0D330);
    sub_21AF093EC();
    sub_21AF0938C();
    v39 = *(v8 + 8);
    v40 = sub_21AEF81F0();
    v39(v40);
    sub_21AF093EC();
    v41 = *(v8 + 16);
    v41(v16, j, v6);
    v41(v12, v19, v6);
    v42 = *&v193;
    sub_21AF0923C();
    v43 = sub_21AEF81F0();
    v39(v43);
    (v39)(j, v6);
    sub_21AEF84F8();
  }

  else
  {
    sub_21AEF84F8();
    v42 = *&v193;
    j[4](v193, v24, v25);
  }

  v44 = sub_21AEEF888();
  v45 = v192;
  sub_21AEE5B34();
  i = v46;

  v48 = sub_21AEEF918();
  sub_21AEE5DB0();
  v50 = v49;

  v51 = v50;
  if (*(i + 16) && *(v50 + 16))
  {
    v184 = i;
    v52 = sub_21AEF81F0();
    v185 = sub_21AEF4140(v52, v53, v54);
    v42 = 0.0;
    v196 = *(v50 + 16);
    v175 = ",N,C";
    v179 = "com.apple.searchd";
    v178 = "peopleMatchPercent";
    v177 = "matchedLocationRatio";
    v176 = "matchedSceneConfidence";
    v55 = v50 + 40;
    v56 = MEMORY[0x277D84F90];
    v180 = xmmword_21AF0C5D0;
    v182 = v51 + 40;
LABEL_15:
    for (i = v55 + 16 * *&v42; ; i += 16)
    {
      if (v196 == *&v42)
      {

        v42 = *&v193;
        goto LABEL_115;
      }

      if (*&v42 >= *(v51 + 16))
      {
        break;
      }

      v57 = *(i - 8);
      v45 = *i;
      sub_21AEF2928();
      v59 = v58;
      v61 = v60;
      result = [objc_allocWithZone(AMLPhotosSearchLabeledData) init];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v63 = result;
      [result setUiSurface_];
      if (v61)
      {
        v64 = sub_21AEACE30(v45, &selRef_identifier);
        if (v65)
        {
          v66 = v65;
          i = v64;
          v67 = objc_opt_self();
          v183 = v61;
          v190 = i;
          v68 = sub_21AF097BC();
          v69 = [v67 clientDonationForPhotoId:v68 aroundTime:v59];

          v181 = v69;
          if (!v69)
          {
            goto LABEL_99;
          }

          v70 = v181;
          v71 = [v70 arrayProvider];
          if (!v71)
          {
            goto LABEL_96;
          }

          v173 = v70;
          v72 = v71;
          type metadata accessor for AMLDonationDecodeHelper();
          v172 = v72;
          v73 = sub_21AEAA6C0(v72);
          if (!v73)
          {
            goto LABEL_95;
          }

          v74 = v73;
          if (v195)
          {
            v75 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
            i = sub_21AEC7C30(v75);
            sub_21AEF8364(i, v180);
            sub_21AF09C5C();

            *&v200 = 0x203A7865646E49;
            *(&v200 + 1) = 0xE700000000000000;
            v199[0] = v42;
            v76 = sub_21AF09E1C();
            MEMORY[0x21CEE4A70](v76);

            sub_21AEF83FC();
            v77 = [v173 description];
            v78 = sub_21AF097CC();
            v80 = v79;

            MEMORY[0x21CEE4A70](v78, v80);

            v81 = v200;
            *(i + 56) = MEMORY[0x277D837D0];
            *(i + 32) = v81;
            sub_21AEC76AC(i);
          }

          v174 = 0;
          for (j = 0; ; j = (j + 1))
          {
            while (2)
            {
              v82 = *(v74 + 16);
              if (j == v82)
              {

                sub_21AEF84F8();
                v92 = v174;
                if (v174)
                {
                  sub_21AEC8AA8(v174, &v200, 0x65726F6353314CLL, 0xE700000000000000);
                  if (v201)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v93 = v199[0];
                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v200, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v93 = 0.0;
LABEL_49:
                  [v63 setL1Score_];
                  sub_21AEC8AA8(v92, &v200, 0x65726F6353324CLL, 0xE700000000000000);
                  if (v201)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v94 = v199[0];
                      goto LABEL_54;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v200, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v94 = 0.0;
LABEL_54:
                  [v63 setL2ModelScore_];
                  sub_21AEC8AA8(v92, &v200, 0x73656E6873657266, 0xE900000000000073);
                  if (v201)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v95 = v199[0];
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v200, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v95 = 0.0;
LABEL_59:
                  [v63 setFreshness_];
                  sub_21AEC8AA8(v92, &v200, 0x6146736F746F6870, 0xEF64657469726F76);
                  if (v201)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v96 = v199[0] > 0.0;
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v200, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v96 = 0;
LABEL_64:
                  [v63 setFavorited_];
                  sub_21AEC8AA8(v92, &v200, 0x6974656874736561, 0xEE0065726F635363);
                  if (v201)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v97 = v199[0];
                      goto LABEL_69;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v200, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v97 = 0.0;
LABEL_69:
                  [v63 setAestheticScore_];
                  sub_21AEC8AA8(v92, &v200, 0x6E6F697461727563, 0xED000065726F6353);
                  if (v201)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v98 = v199[0];
                      goto LABEL_74;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v200, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v98 = 0.0;
LABEL_74:
                  [v63 setCurationScore_];
                  sub_21AEF81FC();
                  sub_21AEF8338(v100, v99 + 1);
                  if (v201)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v101 = v199[0];
                      goto LABEL_79;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v200, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v101 = 0.0;
LABEL_79:
                  [v63 setMatchedPeopleRatio_];
                  sub_21AEF81FC();
                  sub_21AEF8338(v103, v102 + 3);
                  if (v201)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v104 = v199[0];
                      goto LABEL_84;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v200, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v104 = 0.0;
LABEL_84:
                  [v63 setMatchedLocationRatio_];
                  sub_21AEF81FC();
                  sub_21AEF8338(v106, v105 + 5);
                  if (v201)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v107 = v199[0];
                      goto LABEL_89;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v200, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v107 = 0.0;
LABEL_89:
                  [v63 setMatchedSceneConfidence_];
                  sub_21AEF81FC();
                  sub_21AEF8338(v109, v108 + 6);

                  if (v201)
                  {
                    sub_21AED1AF0();
                    if (swift_dynamicCast())
                    {
                      v110 = v199[0];
                      goto LABEL_94;
                    }
                  }

                  else
                  {
                    sub_21AEA7990(&v200, &qword_27CD3D330, &unk_21AF0C420);
                  }

                  v110 = 0.0;
LABEL_94:
                  [v63 setMatchedSceneBoundingBox_];
                }

LABEL_95:

                v70 = v173;
LABEL_96:
                [v63 setUiSurface_];
                v111 = [v70 metadata];
                if (v111)
                {
                  v112 = v111;
                  v113 = [v111 sessionId];
                  sub_21AF097CC();
                  j = v70;

                  sub_21AEF84F8();
                  sub_21AEF76D4(v114, v115, v63);
                }

LABEL_99:
                sub_21AF099BC();
                v116 = sub_21AED1A58();

                if (v116)
                {
                  if (*(v116 + 16) && (v118 = sub_21AED0594(v190, v66), (v119 & 1) != 0))
                  {
                    v120 = (*(v116 + 56) + (v118 << 6));
                    v121 = *v120;
                    v122 = v120[1];
                    v123 = v120[2];
                    v124 = v120[3];
                    v125 = v120[4];
                    v126 = v120[5];
                    v127 = *(v120 + 7);
                    v173 = *(v120 + 6);
                    v174 = v127;

                    [v63 setHasEverClickInLastMonth_];
                    [v63 setClickCountInLastMonthNormalizedAcrossItems_];
                    [v63 setHasEverClickInLastWeek_];
                    [v63 setClickCountInLastWeekNormalizedAcrossItems_];
                    [v63 setClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems_];
                    [v63 setClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems_];
                    [v63 setClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems_];
                    v117 = [v63 setClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems_];
                  }

                  else
                  {
                  }
                }

                v128 = sub_21AEF82CC(v117, sel_setClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems_);
                v129 = sub_21AEF82CC(v128, sel_setClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems_);
                v130 = sub_21AEF82CC(v129, sel_setClickCountGivenLocationInLastMonthNormalizedAcrossItems_);
                v131 = sub_21AEF82CC(v130, sel_setClickCountGivenLocationInLastWeekNormalizedAcrossItems_);
                v132 = sub_21AEF82CC(v131, sel_setClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems_);
                v133 = sub_21AEF82CC(v132, sel_setClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems_);
                v134 = sub_21AEF82CC(v133, sel_setClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems_);
                v135 = sub_21AEF82CC(v134, sel_setClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems_);
                sub_21AEF82CC(v135, sel_setClipScore_);
                v136.n128_u64[0] = v57;
                v137 = v187;
                v138 = v188;
                sub_21AEF2614(v136, v45, v187, v188);
                v140 = v139;
                [v63 setHasEverShareInLastMonth_];
                [v63 setShareCountInLastMonthNormalizedAcrossItems_];
                v141.n128_u64[0] = v57;
                sub_21AEF2620(v141, v45, v137, v138);
                v143 = v142;
                [v63 setHasEverShareInLastMonth_];
                v144 = sub_21AEF82CC([v63 setShareCountInLastWeekNormalizedAcrossItems_], sel_setIsCompleteMatch_);
                v145 = sub_21AEF82CC(v144, sel_setIsDuplicate_);
                v146 = sub_21AEF82CC(v145, sel_setL2ModelScore_);
                v147 = sub_21AEF82CC(v146, sel_setShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems_);
                v148 = sub_21AEF82CC(v147, sel_setShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems_);
                v149 = sub_21AEF82CC(v148, sel_setShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems_);
                v150 = sub_21AEF82CC(v149, sel_setShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems_);
                v151 = sub_21AEF82CC(v150, sel_setShareCountGivenLocationInLastMonthNormalizedAcrossItems_);
                v152 = sub_21AEF82CC(v151, sel_setShareCountGivenLocationInLastWeekNormalizedAcrossItems_);
                v153 = sub_21AEF82CC(v152, sel_setShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems_);
                v154 = sub_21AEF82CC(v153, sel_setShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems_);
                v155 = sub_21AEF82CC(v154, sel_setShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems_);
                sub_21AEF82CC(v155, sel_setShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems_);
                sub_21AEF8504();
                v156 = v183;
                sub_21AEF20EC();
                v158 = v157;

                [v63 setClickOrder_];
                v159 = [v156 presentedAssets];
                v160 = sub_21AEC7874();
                sub_21AEA7B80(v160, &qword_27CD3D6C0, 0x277CF0FD0);
                sub_21AEEF478();
                v161 = sub_21AF0988C();

                sub_21AEF24E0(v190, v66, v161);
                v163 = v162;

                v164 = [v63 setItemPosition_];
                if (v186)
                {
                  sub_21AEEF988(v63);
                }

                MEMORY[0x21CEE4AD0](v164);
                if (*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_21AF098CC();
                }

                ++*&v42;
                sub_21AF0991C();
                v56 = v202;

                v55 = v182;
                goto LABEL_15;
              }

              if (j >= v82)
              {
                goto LABEL_117;
              }

              v83 = *(v74 + 8 * j + 32);
              if (!*(v83 + 16))
              {
                goto LABEL_118;
              }

              v84 = sub_21AED0594(0x696669746E656469, 0xEA00000000007265);
              if ((v85 & 1) == 0)
              {
                goto LABEL_119;
              }

              sub_21AEA784C(*(v83 + 56) + 32 * v84, v199);
              v86 = sub_21AED1AF0();
              sub_21AEAF9F4(v86, v87);
              swift_dynamicCast();
              if (v197 == v190 && v66 == v198)
              {
              }

              else
              {
                i = sub_21AF09E4C();

                if ((i & 1) == 0)
                {

                  j = (j + 1);
                  continue;
                }
              }

              break;
            }

            if (v195)
            {
              v89 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
              v90 = sub_21AEC7C30(v89);
              sub_21AEF8364(v90, v180);
              i = sub_21AF0971C();
              *&v199[0] = i;
              sub_21AED1AF0();
              sub_21AF09CFC();

              v91 = v200;
              *(v90 + 56) = MEMORY[0x277D837D0];
              *(v90 + 32) = v91;
              sub_21AEC76AC(v90);
            }

            v174 = v83;
          }
        }
      }

      ++*&v42;
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
  }

  else
  {

    if (qword_281228710 == -1)
    {
      goto LABEL_110;
    }
  }

  sub_21AEF81C4();
  swift_once();
LABEL_110:
  v165 = sub_21AF096CC();
  sub_21AEC78A8(v165, qword_27CD3EBD0);

  v166 = v51;
  v167 = sub_21AF096AC();
  v168 = sub_21AF09A8C();
  if (sub_21AEE2C98(v168))
  {
    v169 = sub_21AEB3B54();
    *v169 = 134218240;
    v170 = *(i + 16);

    *(v169 + 4) = v170;

    *(v169 + 12) = 2048;
    v171 = *(v166 + 16);

    *(v169 + 14) = v171;

    _os_log_impl(&dword_21AE94000, v167, v168, "Unable to send data to PET; biome streams: raw search %ld or feedback stream %ld are empty", v169, 0x16u);
    sub_21AEAFB90();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v56 = 0;
LABEL_115:
  (j[1])(COERCE_DOUBLE(*&v42), v194);
  return v56;
}

void sub_21AEF0FEC()
{
  sub_21AEAD0C4();
  v92 = v1;
  if (!v1)
  {
    goto LABEL_48;
  }

  if (v1 >> 62)
  {
    v2 = sub_21AF09DAC();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_48:
    sub_21AEAD0A8();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_48;
  }

LABEL_4:
  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  if (v2 >= 1)
  {
    v3 = 0;
    v91 = v2;
    while (1)
    {
      if ((v92 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CEE4EF0](v3, v92);
      }

      else
      {
        v4 = *(v92 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [BiomeLibrary() AeroML];
      sub_21AEE2064();
      swift_unknownObjectRelease();
      v7 = [v0 LabeledData];
      swift_unknownObjectRelease();
      v8 = [v7 PhotosSearchLabeledData];
      sub_21AEE2064();
      swift_unknownObjectRelease();
      v9 = [v0 source];

      v10 = [v5 uiSurface];
      v142 = v9;
      switch(v10)
      {
        case 0:
          v11 = @"AMLUISurfaceTypeUnknown";
          goto LABEL_14;
        case 1:
          v11 = @"AMLUISurfaceTypeSpotlight";
          goto LABEL_14;
        case 2:
          v11 = @"AMLUISurfaceTypePhotosApp";
          goto LABEL_14;
        case 3:
          v11 = @"AMLUISurfaceTypeStoryTellingBackground";
LABEL_14:
          v12 = v11;
          v13 = v11;
          break;
        default:
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
          break;
      }

      v14 = v13;
      if (v14)
      {
        v15 = v14;
        v16 = sub_21AF097CC();
        v18 = v17;

        sub_21AEF84AC();
        v20 = v16 == v19 - 2 && 0x800000021AF10730 == v18;
        if (v20 || (sub_21AED1CDC() & 1) != 0)
        {
        }

        else
        {
          sub_21AEF84AC();
          v83 = v16 == v82 && 0x800000021AF10750 == v18;
          if (v83 || (sub_21AED1CDC() & 1) != 0)
          {

            v84 = 1;
            goto LABEL_32;
          }

          sub_21AEF84AC();
          v86 = v16 == v85 && 0x800000021AF10770 == v18;
          if (v86 || (sub_21AED1CDC() & 1) != 0)
          {

            v84 = 2;
            goto LABEL_32;
          }

          sub_21AEF84AC();
          if (v16 == v87 + 13 && 0x800000021AF10790 == v18)
          {

LABEL_46:
            v84 = 3;
LABEL_32:
            v141 = v84;
            goto LABEL_23;
          }

          v89 = sub_21AED1CDC();

          if (v89)
          {
            goto LABEL_46;
          }
        }
      }

      v141 = 0;
LABEL_23:
      v21 = sub_21AEACE30(v5, &selRef_searchSessionUUID);
      v139 = v22;
      v140 = v21;
      [v5 matchedPeopleRatio];
      v23 = sub_21AEF82B4();
      v138 = sub_21AEF829C(v23);
      [v5 matchedLocationRatio];
      v24 = sub_21AEF82B4();
      v137 = sub_21AEF829C(v24);
      [v5 matchedSceneRatio];
      v25 = sub_21AEF82B4();
      v136 = sub_21AEF829C(v25);
      [v5 matchedSceneConfidence];
      v26 = sub_21AEF82B4();
      v135 = sub_21AEF829C(v26);
      [v5 matchedSceneBoundingBox];
      v27 = sub_21AEF82B4();
      v134 = sub_21AEF829C(v27);
      [v5 matchedOCRCharacterRatio];
      v28 = sub_21AEF82B4();
      v133 = sub_21AEF829C(v28);
      [v5 matchedOCRImportance];
      v29 = sub_21AEF82B4();
      v132 = sub_21AEF829C(v29);
      v30 = [v5 matchedFieldsCount];
      v131 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      [v5 l1Score];
      v31 = sub_21AEF82B4();
      v130 = sub_21AEF829C(v31);
      [v5 freshness];
      v32 = sub_21AEF82B4();
      v129 = sub_21AEF829C(v32);
      v33 = [v5 favorited];
      v128 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v5 aestheticScore];
      v34 = sub_21AEF82B4();
      v127 = sub_21AEF829C(v34);
      [v5 curationScore];
      v35 = sub_21AEF82B4();
      v126 = sub_21AEF829C(v35);
      [v5 hasEverClickInLastWeek];
      v36 = sub_21AEF82B4();
      v125 = sub_21AEF829C(v36);
      [v5 hasEverClickInLastMonth];
      v37 = sub_21AEF82B4();
      v124 = sub_21AEF829C(v37);
      [v5 hasEverShareInLastWeek];
      v38 = sub_21AEF82B4();
      v123 = sub_21AEF829C(v38);
      [v5 hasEverShareInLastMonth];
      v39 = sub_21AEF82B4();
      v122 = sub_21AEF829C(v39);
      [v5 clickCountInLastWeekNormalizedAcrossItems];
      v40 = sub_21AEF82B4();
      v121 = sub_21AEF829C(v40);
      [v5 clickCountInLastMonthNormalizedAcrossItems];
      v41 = sub_21AEF82B4();
      v120 = sub_21AEF829C(v41);
      [v5 shareCountInLastWeekNormalizedAcrossItems];
      v42 = sub_21AEF82B4();
      v119 = sub_21AEF829C(v42);
      [v5 shareCountInLastMonthNormalizedAcrossItems];
      v43 = sub_21AEF82B4();
      v118 = sub_21AEF829C(v43);
      [v5 clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
      v44 = sub_21AEF82B4();
      v117 = sub_21AEF829C(v44);
      [v5 clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
      v45 = sub_21AEF82B4();
      v116 = sub_21AEF829C(v45);
      [v5 clickCountGivenLocationInLastWeekNormalizedAcrossItems];
      v46 = sub_21AEF82B4();
      v115 = sub_21AEF829C(v46);
      [v5 clickCountGivenLocationInLastMonthNormalizedAcrossItems];
      v47 = sub_21AEF82B4();
      v114 = sub_21AEF829C(v47);
      [v5 clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
      v48 = sub_21AEF82B4();
      v113 = sub_21AEF829C(v48);
      [v5 clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
      v49 = sub_21AEF82B4();
      v112 = sub_21AEF829C(v49);
      [v5 clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
      v50 = sub_21AEF82B4();
      v111 = sub_21AEF829C(v50);
      [v5 clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
      v51 = sub_21AEF82B4();
      v110 = sub_21AEF829C(v51);
      [v5 clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
      v52 = sub_21AEF82B4();
      v109 = sub_21AEF829C(v52);
      [v5 clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
      v53 = sub_21AEF82B4();
      v108 = sub_21AEF829C(v53);
      [v5 clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
      v54 = sub_21AEF82B4();
      v107 = sub_21AEF829C(v54);
      [v5 clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
      v55 = sub_21AEF82B4();
      v106 = sub_21AEF829C(v55);
      [v5 shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
      v56 = sub_21AEF82B4();
      v105 = sub_21AEF829C(v56);
      [v5 shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
      v57 = sub_21AEF82B4();
      v104 = sub_21AEF829C(v57);
      [v5 shareCountGivenLocationInLastWeekNormalizedAcrossItems];
      v58 = sub_21AEF82B4();
      v103 = sub_21AEF829C(v58);
      [v5 shareCountGivenLocationInLastMonthNormalizedAcrossItems];
      v59 = sub_21AEF82B4();
      v102 = sub_21AEF829C(v59);
      [v5 shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
      v60 = sub_21AEF82B4();
      v101 = sub_21AEF829C(v60);
      [v5 shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
      v61 = sub_21AEF82B4();
      v100 = sub_21AEF829C(v61);
      v99 = sub_21AF09B3C();
      v98 = sub_21AF09B3C();
      [v5 shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
      v62 = sub_21AEF82B4();
      v97 = sub_21AEF829C(v62);
      [v5 shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
      v63 = sub_21AEF82B4();
      v96 = sub_21AEF829C(v63);
      [v5 shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
      v64 = sub_21AEF82B4();
      v95 = sub_21AEF829C(v64);
      [v5 shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
      v65 = sub_21AEF82B4();
      v94 = sub_21AEF829C(v65);
      [v5 clipScore];
      v66 = sub_21AEF82B4();
      v93 = sub_21AEF829C(v66);
      v67 = [v5 clicked];
      v68 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v69 = [v5 clickOrder];
      v70 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v71 = [v5 itemPosition];
      v72 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      [v5 l2ModelScore];
      v73 = sub_21AEF82B4();
      v74 = sub_21AEF829C(v73);
      [v5 isDuplicate];
      v75 = sub_21AEF82B4();
      v76 = v3 + 1;
      v77 = sub_21AEF829C(v75);
      [v5 isCompleteMatch];
      v78 = sub_21AEF82B4();
      v79 = sub_21AEF829C(v78);
      v80 = objc_allocWithZone(MEMORY[0x277CF0FC0]);
      v90 = v77;
      v3 = v76;
      v81 = sub_21AEF600C(v140, v139, v141, v138, v137, v136, v135, v134, v133, v132, v131, v130, v129, v128, v127, v126, v125, v124, v123, v122, v121, v120, v119, v118, v117, v116, v115, v114, v113, v112, v111, v110, v109, v108, v107, v106, v105, v104, v103, v102, v101, v100, v99, v98, v97, v96, v95, v94, v93, v68, v70, v72, v74, v90, v79);
      v0 = v142;
      [v142 sendEvent_];

      if (v91 == v3)
      {
        goto LABEL_48;
      }
    }
  }

  __break(1u);
}

double sub_21AEF1AA8(void *a1, double a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = sub_21AEEF918();
  v9 = [v8 publisher];

  v23 = nullsub_1;
  v24 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_21AEE9E10;
  v22 = &unk_282C818B8;
  v10 = _Block_copy(&aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v7;
  *(v11 + 32) = a2;
  *(v11 + 40) = a1;
  *(v11 + 48) = v6;
  v23 = sub_21AEF7750;
  v24 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_21AEE9E10;
  v22 = &unk_282C81908;
  v12 = _Block_copy(&aBlock);

  v13 = a1;

  sub_21AEF84B8();
  v16 = [v14 v15];
  _Block_release(v12);
  _Block_release(v10);

  sub_21AEF82E4();
  swift_beginAccess();
  if (*(v6 + 16) <= 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  sub_21AEF82E4();
  swift_beginAccess();

  return v17;
}

void sub_21AEF1CF0(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6)
{
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    [a1 timestamp];
    if (v14 < a5)
    {
      swift_beginAccess();
      v15 = *(a2 + 16) + 1.0;
      swift_beginAccess();
      *(a2 + 16) = v15;
    }

    [a1 timestamp];
    if (v16 > a6 && ([a1 timestamp], v17 < a5) && (v18 = sub_21AEACE30(a3, &selRef_identifier), v19))
    {
      v20 = v18;
      v21 = v19;
      v22 = sub_21AEACE30(v13, &selRef_identifier);
      if (!v23)
      {

        return;
      }

      if (v20 == v22 && v21 == v23)
      {

LABEL_25:
        swift_beginAccess();
        v29 = *(a4 + 16) + 1.0;
        swift_beginAccess();
        *(a4 + 16) = v29;
        return;
      }

      v25 = sub_21AF09E4C();

      if (v25)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_281228710 != -1)
    {
      swift_once();
    }

    v26 = sub_21AF096CC();
    sub_21AEA7958(v26, qword_27CD3EBD0);
    oslog = sub_21AF096AC();
    v27 = sub_21AF09A9C();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21AE94000, oslog, v27, "Error encountered while reading Photos Search Feedback Stream", v28, 2u);
      MEMORY[0x21CEE5A20](v28, -1, -1);
    }
  }
}

void sub_21AEF1FB8(double a1)
{
  sub_21AEF8510();
  v2 = sub_21AF093FC();
  sub_21AEA7C90();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_21AEAD074();
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_21AF093EC();
  sub_21AF0938C();
  v9 = *(v4 + 8);
  v10 = sub_21AEC7734();
  v9(v10);
  sub_21AF0936C();
  v12 = v11;
  (v9)(v8, v2);
  sub_21AF093EC();
  sub_21AF0936C();
  v14 = v13;
  (v9)(v8, v2);
  sub_21AEF1AA8(v1, v14, v12);
}

void sub_21AEF20EC()
{
  sub_21AEAD0C4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v56 = v6;
  v7 = v1;
  v8 = [v7 presentedAssets];
  v54 = 0;
  sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
  sub_21AEEF478();
  v9 = sub_21AF0988C();

  v10 = sub_21AEA7BE4();
  v53 = v7;
  v55 = v5;
  if (v10)
  {
    v11 = v10;
    if (v10 < 1)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return;
    }

    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CEE4EF0](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = sub_21AEACE24(v14);
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AEAD04C();
          sub_21AEAC554();
          v13 = v22;
        }

        v20 = *(v13 + 16);
        if (v20 >= *(v13 + 24) >> 1)
        {
          sub_21AEAC554();
          v13 = v23;
        }

        *(v13 + 16) = v20 + 1;
        v21 = v13 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v19;
      }

      else
      {
      }

      ++v12;
    }

    while (v11 != v12);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v24 = 0;
  v25 = *(v55 + 16);
  v26 = v55 + 40;
  v55 = MEMORY[0x277D84F90];
  v52 = v26;
LABEL_18:
  v27 = (v26 + 16 * v24);
  while (v25 != v24)
  {
    if (v24 >= v25)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_53;
    }

    if (*(v27 - 1) > v3)
    {
      v29 = *v27;
      v30 = sub_21AEACE30(v29, &selRef_identifier);
      if (v31)
      {
        v32 = v30;
        v33 = v31;
        v57[0] = v30;
        v57[1] = v31;
        MEMORY[0x28223BE20](v30);
        v51[2] = v57;
        if (sub_21AEF6524(sub_21AEACF38, v51, v13))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21AEAD04C();
            sub_21AEAC554();
            v55 = v38;
          }

          v26 = v52;
          v35 = *(v55 + 16);
          v34 = *(v55 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_21AEF8248(v34);
            sub_21AEAC554();
            v55 = v39;
          }

          v36 = v55;
          *(v55 + 16) = v35 + 1;
          v37 = v36 + 16 * v35;
          *(v37 + 32) = v32;
          *(v37 + 40) = v33;
          v24 = v28;
          goto LABEL_18;
        }
      }
    }

    ++v24;
    v27 += 2;
  }

  v40 = v55;
  v41 = *(v55 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = (v55 + 16 * v41 + 24);
    while (v41)
    {
      if (v41 > *(v40 + 16))
      {
        goto LABEL_54;
      }

      v45 = *(v43 - 1);
      v44 = *v43;

      v46 = sub_21AEACE30(v56, &selRef_identifier);
      if (v47)
      {
        if (v45 == v46 && v47 == v44)
        {

LABEL_50:

          if (v42 == -1)
          {
            goto LABEL_56;
          }

          goto LABEL_51;
        }

        v49 = sub_21AF09E4C();

        if (v49)
        {

          goto LABEL_50;
        }
      }

      else
      {
      }

      v43 -= 2;
      --v41;
      if (__CFADD__(v42++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

LABEL_51:
  sub_21AEAD0A8();
}

void sub_21AEF24E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21AEF8580();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (v3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21AF09DAC())
  {
    v10 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = sub_21AEF8504();
        v12 = MEMORY[0x21CEE4EF0](v11);
      }

      else
      {
        if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(v4 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = sub_21AEACE24(v12);
      if (v16)
      {
        if (v15 == v8 && v16 == v6)
        {

LABEL_18:
          [v13 rankingIndex];

          goto LABEL_19;
        }

        v18 = sub_21AF09E4C();

        if (v18)
        {
          goto LABEL_18;
        }
      }

      ++v10;
      if (v14 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_19:
  sub_21AEF8564();
}

void sub_21AEF2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_21AEAD0C4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  sub_21AEC7874();
  v27 = sub_21AF093FC();
  sub_21AEA7C90();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_21AEAD074();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  sub_21AF0935C();
  sub_21AF0935C();
  sub_21AEACE30(v22, &selRef_identifier);
  if (v34)
  {
    v35 = sub_21AF097BC();

    v36 = sub_21AF0939C();
    v37 = sub_21AF0939C();
    if (v26)
    {
      v26 = sub_21AF097BC();
    }

    objc_opt_self();
    sub_21AEF84B8();
    [v38 v39];
  }

  v40 = *(v29 + 8);
  v41 = sub_21AEE2098();
  v40(v41);
  (v40)(v33, v27);
  sub_21AEAD0A8();
}