void *LanguageModelSession.streamResponse<A>(generating:includeSchemaInPrompt:options:prompt:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v113 = a6;
  v114 = a5;
  v115 = a4;
  v98 = a2;
  v106 = a1;
  v111 = a7;
  v110 = type metadata accessor for RawResponseStream(0);
  v100 = *(v110 - 8);
  v8 = *(v100 + 64);
  v9 = MEMORY[0x28223BE20](v110);
  v101 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = (&v91 - v10);
  v11 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  MEMORY[0x28223BE20](v11 - 8);
  v102 = &v91 - v12;
  v99 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  MEMORY[0x28223BE20](v99);
  v14 = &v91 - v13;
  v103 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v103);
  v104 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  MEMORY[0x28223BE20](v16 - 8);
  v112 = &v91 - v17;
  v18 = type metadata accessor for GenerationSchema(0);
  v108 = *(v18 - 8);
  v19 = *(v108 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v107 = &v91 - v21;
  v22 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v91 - v24;
  v26 = *(a3 + 48);
  v126 = *(a3 + 32);
  v127 = v26;
  v128 = *(a3 + 64);
  v129 = *(a3 + 80);
  v27 = *(a3 + 16);
  v124 = *a3;
  v125 = v27;
  v28 = v116;
  result = (v115)(&v130, v23);
  if (!v28)
  {
    v93 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v96 = v18;
    v94 = v14;
    v95 = v8;
    v30 = v102;
    v31 = v105;
    v97 = v22;
    v115 = v25;
    v116 = 0;
    v32 = v130;
    v33 = v107;
    (*(v113 + 40))(v114);
    v34 = type metadata accessor for PromptTemplate(0);
    (*(*(v34 - 8) + 56))(v112, 1, 1, v34);
    v35 = v104;
    sub_2388653D8(v33, v104, type metadata accessor for GenerationSchema.Kind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {

      v36 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
      sub_2388654EC(v35 + *(v36 + 64), type metadata accessor for StringGuides);
      sub_2388653D8(v33, v30, type metadata accessor for GenerationSchema);
      (*(v108 + 56))(v30, 0, 1, v96);
      v37 = v31[20];
      v38 = v31[21];
      v39 = sub_238815878(v31 + 17, v37);
      v123 = v32;
      v119 = v126;
      v120 = v127;
      v121 = v128;
      v122 = v129;
      v117 = v124;
      v118 = v125;
      v88 = v37;
      v90 = v38;
      v40 = v33;
      v41 = v109;
      v42 = v112;
      sub_23884B7DC(&v123, v112, &v117, v39, v30, 0, 1, v109, sub_23884B648, 0, MEMORY[0x277D837D0], v88, v90);
      sub_238827E88(v30, &qword_27DF2FE20, &qword_2388D5740);
      sub_238827E88(v42, &qword_27DF2FFC0, &unk_2388D5A80);
      sub_2388654EC(v40, type metadata accessor for GenerationSchema);
      v43 = v41[1];
      v108 = *v41;
      v107 = v43;
      v44 = v110;
      v45 = *(v110 + 20);
      v46 = v99;
      v47 = *(v99 + 36);
      v112 = v47;
      v48 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
      v49 = *(v48 - 8);
      v50 = v94;
      (*(v49 + 32))(v94 + v47, v41 + v45, v48);
      v51 = *(v41 + *(v44 + 24));
      v52 = swift_allocObject();
      *(v52 + 16) = v32;
      v53 = v107;
      *v50 = v108;
      v50[1] = v53;
      *(v50 + v46[10]) = v51;
      v54 = (v50 + v46[11]);
      *v54 = sub_238830F10;
      v54[1] = 0;
      v55 = (v50 + v46[12]);
      *v55 = sub_238859730;
      v55[1] = v52;
      v57 = *v50;
      v56 = v50[1];
      v58 = v97;
      v59 = v115;
      (*(v49 + 16))(v115 + v97[9], v50 + v112, v48);

      sub_238827E88(v50, &qword_27DF2FFC8, &qword_2388D5D30);
      v60 = swift_allocObject();
      *(v60 + 16) = v57;
      *(v60 + 24) = v56;
      v61 = swift_allocObject();
      *(v61 + 2) = v57;
      *(v61 + 3) = v56;
      *(v61 + 4) = v32;
      *v59 = v57;
      v59[1] = v56;
      *(v59 + v58[10]) = v51;
      v62 = (v59 + v58[11]);
      *v62 = sub_2388596B0;
      v62[1] = v60;
      v63 = (v59 + v58[12]);
      *v63 = sub_238859748;
      v63[1] = v61;
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_2388654EC(v35, type metadata accessor for GenerationSchema.Kind);
      v64 = v31[15];
      v104 = v31[16];
      v106 = sub_238815878(v31 + 12, v64);
      v92 = v32;
      v123 = v32;
      v119 = v126;
      v120 = v127;
      v121 = v128;
      v122 = v129;
      v117 = v124;
      v118 = v125;
      v65 = v30;
      sub_2388653D8(v33, v30, type metadata accessor for GenerationSchema);
      v66 = v108 + 56;
      (*(v108 + 56))(v65, 0, 1, v96);
      v67 = v93;
      sub_2388653D8(v33, v93, type metadata accessor for GenerationSchema);
      v68 = (*(v66 + 24) + 16) & ~*(v66 + 24);
      v69 = swift_allocObject();
      sub_238865440(v67, v69 + v68, type metadata accessor for GenerationSchema);
      v89 = v64;
      v70 = v109;
      v71 = v112;
      sub_23884B7DC(&v123, v112, &v117, v106, v65, v98 & 1, 1, v109, sub_238859698, v69, &type metadata for GeneratedContent, v89, v104);

      sub_238827E88(v65, &qword_27DF2FE20, &qword_2388D5740);
      sub_238827E88(v71, &qword_27DF2FFC0, &unk_2388D5A80);
      sub_2388654EC(v33, type metadata accessor for GenerationSchema);
      v72 = v70[1];
      v112 = *v70;
      v73 = v110;
      v74 = *(v110 + 20);
      v75 = v97;
      v76 = v97[9];
      v77 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
      v59 = v115;
      (*(*(v77 - 8) + 16))(v115 + v76, v70 + v74, v77);
      v78 = *(v70 + *(v73 + 24));
      v79 = v101;
      sub_238865440(v70, v101, type metadata accessor for RawResponseStream);
      v80 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v81 = (v95 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      sub_238865440(v79, v82 + v80, type metadata accessor for RawResponseStream);
      *(v82 + v81) = v92;
      *v59 = v112;
      v59[1] = v72;
      *(v59 + v75[10]) = v78;
      v83 = (v59 + v75[11]);
      *v83 = sub_2388313C0;
      v83[1] = 0;
      v84 = (v59 + v75[12]);
      *v84 = sub_2388596B4;
      v84[1] = v82;
    }

    v85 = v111;
    v86 = v114;
    v87 = v113;
    nullsub_1();
    sub_23885FEF0(v86, v87, v85);
    return sub_238827E88(v59, &qword_27DF2FFD0, &qword_2388D6160);
  }

  return result;
}

uint64_t LanguageModelSession.streamResponse(to:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  v15 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D837D0];
  v7 = *(MEMORY[0x277D837D0] - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v16, v6);
  v10 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v10)(&v14);
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_23881FAF4(v14);
  v12 = v15;
  v11(v16, v6);

  v14 = v12;
  LanguageModelSession.streamResponse(to:options:)(&v14, a3, a4);
}

void *LanguageModelSession.streamResponse(options:prompt:)@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, char *a3@<X8>)
{
  result = a2(&v8);
  if (!v3)
  {
    v7 = v8;
    LanguageModelSession.streamResponse(to:options:)(&v7, a1, a3);
  }

  return result;
}

double sub_238865198@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v24 = a1[4];
  v25[0] = v24;
  v25[1] = v3;
  v26 = 2;
  swift_bridgeObjectRetain_n();
  v4 = sub_23881EF9C(v25);
  v22 = v5;
  v23 = v4;
  v7 = v6;
  swift_bridgeObjectRelease_n();
  v8 = *(*(type metadata accessor for Transcript.Entry(0) - 8) + 80);
  v9 = MEMORY[0x277D84F90];
  if ((byte_284B3AC88 & 1) == 0)
  {
    v10 = unk_284B3AC80;
    v21 = qword_284B3AC78;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2388B686C(0, *(v9 + 2) + 1, 1, v9);
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2388B686C((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v21;
    *(v13 + 5) = v10;
  }

  v14 = MEMORY[0x277D84F90] + ((v8 + 32) & ~v8);
  sub_238866100(&qword_284B3AC78);
  v25[0] = v9;
  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  v15 = sub_2388D27B8();
  v17 = v16;

  v18 = sub_2388D3578();
  sub_2388D3578();
  *(a2 + 40) = v24;
  *(a2 + 48) = v3;
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 / 1.0e18 + v18;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = v23;
  *(a2 + 64) = v22;
  *(a2 + 72) = v7;
  *(a2 + 73) = HIBYTE(v7) & 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = MEMORY[0x277D84F90];
  *(a2 + 104) = v14;
  result = 0.0;
  *(a2 + 112) = xmmword_2388D4AB0;
  return result;
}

uint64_t sub_2388653D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238865440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388654A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2388654EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_238865568(uint64_t a1)
{
  sub_238865EF8(319, &qword_27DF2FD08, &type metadata for StreamableContentEnvelope, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    sub_238865EF8(319, &qword_27DF2FD10, &type metadata for ResponseEnvelope, MEMORY[0x277D857D8]);
    if (v2 <= 0x3F)
    {
      sub_238865808();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_238865670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238865740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_238865808()
{
  result = qword_27DF301F8[0];
  if (!qword_27DF301F8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27DF301F8);
  }

  return result;
}

uint64_t sub_238865860(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2388658E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v11 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = a2 - v8 + 1;
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

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *(a1 + v10);
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v15 = *(a1 + v10);
        if (!v15)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!v14)
      {
        goto LABEL_28;
      }

      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    v17 = v15 - 1;
    if (v11)
    {
      v17 = 0;
      LODWORD(v11) = *a1;
    }

    v18 = v8 + (v11 | v17);
    return (v18 + 1);
  }

LABEL_28:
  if (v7 < 0x7FFFFFFE)
  {
    v20 = *(((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    v18 = v20 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v19 = *(v6 + 48);

  return v19(a1);
}

double sub_238865A80(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v7 + 84);
  v10 = *(v7 + 64);
  if (v9 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v13 = a3 - v11 + 1;
  }

  else
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < a3)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a2 > v11)
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v17 = a2 - v11;
    }

    else
    {
      v17 = 1;
    }

    if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v18 = ~v11 + a2;
      bzero(a1, v12);
      *a1 = v18;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        *(a1 + v12) = v17;
      }

      else
      {
        *(a1 + v12) = v17;
      }
    }

    else if (v16)
    {
      *(a1 + v12) = v17;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v12) = 0;
  }

  else if (v16)
  {
    *(a1 + v12) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v9 < 0x7FFFFFFE)
  {
    v20 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      result = 0.0;
      *(v20 + 8) = 0u;
      *(v20 + 24) = 0u;
      *v20 = (a2 - 0x7FFFFFFF);
    }

    else
    {
      *(v20 + 32) = a2;
    }
  }

  else
  {
    v19 = *(v7 + 56);

    v19(a1, a2);
  }

  return result;
}

void sub_238865C7C(uint64_t a1)
{
  sub_238865EF8(319, qword_27DF30300, &type metadata for StreamableContentEnvelope, MEMORY[0x277D858C8]);
  if (v1 <= 0x3F)
  {
    sub_238865808();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238865D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_238865E1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_238865EF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 sub_238865F74(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_238865F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238865FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23886603C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2388660BC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_238810DC4(result, a2, a3);
  }

  return result;
}

uint64_t sub_2388661AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_238866284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v6, a2);
  (*(v13 + 32))(a6, v15, a2);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  result = type metadata accessor for KeepLastOneInEachChunkSequence(0, v17);
  *(a6 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_2388663A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v5, a1);
  (*(v11 + 32))(a5, v13, a1);
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  result = type metadata accessor for KeepLastOneInEachChunkSequence(0, v15);
  *(a5 + *(result + 52)) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t sub_2388664BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v7);
  (*(v15 + 32))(a7, v17, a3);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v18 = type metadata accessor for SafetyCheckedStream(0, v21);
  *(a7 + *(v18 + 52)) = 50;
  v19 = (a7 + *(v18 + 56));
  *v19 = a1;
  v19[1] = a2;
}

uint64_t sub_2388665F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v8 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v14 = &v16[-v13];
  (*(v7 + 16))(v10, v3, v6);
  sub_2388D2C58();
  sub_2388680DC(v14, 0, 1, *(v3 + *(a1 + 52)), *(v3 + *(a1 + 56)), *(v3 + *(a1 + 56) + 8), v6, *(a1 + 24), a2, v11, *(a1 + 40));
}

uint64_t sub_238866778(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v7 = type metadata accessor for StreamSnapshot(255, a4[3], a4[5], a4);
  v5[17] = v7;
  v8 = sub_2388D2E78();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = a4[4];
  v5[24] = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_task_alloc();
  v5[25] = v11;
  *v11 = v5;
  v11[1] = sub_23886695C;
  v12 = v5[20];
  v13 = v5[13];
  v14 = v5[14];

  return MEMORY[0x282200310](v12, v13, v14, v5 + 9, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_23886695C()
{
  v2 = *v1;

  if (v0)
  {
    if (v2[13])
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v8 = sub_238866F70;
    v9 = v3;
  }

  else
  {
    if (v2[13])
    {
      swift_getObjectType();
      v6 = sub_2388D2B38();
      v5 = v7;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v2[26] = v6;
    v2[27] = v5;
    v8 = sub_238866ADC;
    v9 = v6;
  }

  return MEMORY[0x2822009F8](v8, v9, v5);
}

uint64_t sub_238866ADC()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[17];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = (*(v0[19] + 8))(v1, v0[18]);
    if (*(v4 + *(v5 + 52) + 8))
    {
      (*(v0[21] + 56))(v0[12], 1, 1, v0[17]);
    }

    else
    {
      sub_2388151C8(v6, v7, v8);
      swift_allocError();
      *v20 = 0xD000000000000030;
      *(v20 + 8) = 0x80000002388DEEC0;
      *(v20 + 16) = MEMORY[0x277D84F90];
      *(v20 + 24) = 0;
      *(v20 + 32) = 2;
      swift_willThrow();
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v10 = v0[22];
    v12 = v0[15];
    v11 = v0[16];
    v13 = *(v2 + 32);
    v0[28] = v13;
    v0[29] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v13(v10, v1, v3);
    v14 = *(v11 + *(v12 + 56));
    v15 = (v10 + *(v3 + 52));
    v16 = *v15;
    v17 = v15[1];
    v21 = (v14 + *v14);
    v18 = swift_task_alloc();
    v0[30] = v18;
    *v18 = v0;
    v18[1] = sub_238866D74;

    return v21(v16, v17);
  }
}

uint64_t sub_238866D74()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_238866FE0;
  }

  else
  {
    v5 = sub_238866EB0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238866EB0()
{
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[12];
  v5 = v0[16] + *(v0[15] + 52);
  *v5 = 0;
  *(v5 + 8) = 1;
  v1(v4, v2, v3);
  (*(v0[21] + 56))(v0[12], 0, 1, v0[17]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_238866F70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238866FE0()
{
  v1 = *(v0 + 248);
  *(v0 + 80) = v1;
  v2 = v1;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);
  v13 = *(v0 + 48);
  if (v13 != 6)
  {
    v3 = sub_238857E3C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v13);
LABEL_5:
    v19 = *(*(v0 + 176) + 32);
    v20 = (*(v0 + 128) + *(*(v0 + 120) + 52));
    if (*(v20 + 8) == 1)
    {
      *v20 = v19;
      *(v20 + 8) = 0;
      v21 = v19;
    }

    else
    {
      v21 = *v20;
    }

    v22 = __OFSUB__(v19, v21);
    v23 = v19 - v21;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      if (v23 >= v20[2])
      {
        v30 = *(v0 + 248);
        *(v0 + 88) = v30;
        v31 = v30;
        v32 = v30;
        v33 = v30;
        v34 = swift_dynamicCast();
        v35 = *(v0 + 248);
        if (v34)
        {

          swift_willThrow();
        }

        else
        {

          sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_2388D3F70;
          *(v36 + 32) = v35;
          sub_2388151C8(v36, v37, v38);
          swift_allocError();
          *v39 = 0xD000000000000039;
          *(v39 + 8) = 0x80000002388DEF00;
          *(v39 + 16) = v36;
          *(v39 + 24) = 0;
          *(v39 + 32) = 2;
          swift_willThrow();
        }

        v41 = *(v0 + 168);
        v40 = *(v0 + 176);
        v42 = *(v0 + 136);

        (*(v41 + 8))(v40, v42);
        goto LABEL_17;
      }

      v25 = *(v0 + 168);
      v24 = *(v0 + 176);
      v26 = *(v0 + 136);

      (*(v25 + 8))(v24, v26);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v29 = swift_task_alloc();
      *(v0 + 200) = v29;
      *v29 = v0;
      v29[1] = sub_23886695C;
      v3 = *(v0 + 160);
      v4 = *(v0 + 104);
      v5 = *(v0 + 112);
      v6 = v0 + 72;
      v7 = AssociatedTypeWitness;
      v8 = AssociatedConformanceWitness;
    }

    return MEMORY[0x282200310](v3, v4, v5, v6, v7, v8);
  }

  v14 = *(v0 + 248);
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v17 = *(v0 + 136);
  sub_2388151C8(v3, v4, v5);
  swift_allocError();
  *v18 = v10;
  *(v18 + 8) = v9;
  *(v18 + 16) = v12;
  *(v18 + 24) = v11;
  *(v18 + 32) = 6;
  swift_willThrow();

  (*(v16 + 8))(v15, v17);
LABEL_17:

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2388673BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v7 = type metadata accessor for StreamSnapshot(255, a4[3], a4[5], a4);
  v5[8] = v7;
  v8 = sub_2388D2E78();
  v5[9] = v8;
  v5[10] = *(v8 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = a4[4];
  v5[17] = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_task_alloc();
  v5[18] = v11;
  *v11 = v5;
  v11[1] = sub_2388675B8;
  v12 = v5[12];
  v13 = v5[4];
  v14 = v5[5];

  return MEMORY[0x282200310](v12, v13, v14, v5 + 2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2388675B8()
{
  v2 = *v1;

  if (v0)
  {
    if (*(v2 + 32))
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_238867B6C;
  }

  else
  {
    if (*(v2 + 32))
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_238867740;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_238867740()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  v4 = *(v2 + 48);
  if (v4(v1, 1, v3) != 1)
  {
    v11 = v0[15];
    v13 = v0[6];
    v12 = v0[7];
    v14 = *(v2 + 32);
    v15 = v14(v11, v1, v3);
    v21 = *(v11 + 32);
    v22 = *(v13 + 56);
    v23 = *(v12 + v22);
    v24 = v21 - v23;
    if (__OFSUB__(v21, v23))
    {
      __break(1u);
    }

    else
    {
      v25 = v0[6];
      v26 = v0[7];
      if (v24 >= *(v26 + *(v25 + 60)))
      {
        v50 = v14;
        v52 = v0[15];
        v39 = v0[13];
        v40 = v0[8];
        v48 = v0[3];
        v41 = *(v25 + 52);
        (*(v0[10] + 8))(v26 + v41, v0[9]);
        v38 = *(v39 + 56);
        v38(v26 + v41, 1, 1, v40);
        *(v26 + v22) = v21;
        v50(v48, v52, v40);
        goto LABEL_11;
      }

      v27 = v0[15];
      v28 = v0[13];
      v29 = v0[8];
      v30 = *(v25 + 52);
      (*(v0[10] + 8))(v26 + v30, v0[9]);
      v14(v26 + v30, v27, v29);
      (*(v28 + 56))(v26 + v30, 0, 1, v29);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v33 = swift_task_alloc();
      v0[18] = v33;
      *v33 = v0;
      v33[1] = sub_2388675B8;
      v15 = v0[12];
      v16 = v0[4];
      v17 = v0[5];
      v18 = v0 + 2;
      v19 = AssociatedTypeWitness;
      v20 = AssociatedConformanceWitness;
    }

    return MEMORY[0x282200310](v15, v16, v17, v18, v19, v20);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[7];
  v49 = v0[6];
  v51 = *(v6 + 8);
  v51(v1, v7);
  v9 = *(v49 + 52);
  (*(v6 + 16))(v5, v8 + v9, v7);
  if (v4(v5, 1, v3) != 1)
  {
    v35 = v0[13];
    v34 = v0[14];
    v36 = v0[8];
    v37 = v0[9];
    v46 = v0[3];
    v47 = v0[7];
    v44 = *(v35 + 32);
    v45 = v0[6];
    v44(v34, v0[11], v36);
    v51(v8 + v9, v37);
    v38 = *(v35 + 56);
    v38(v8 + v9, 1, 1, v36);
    *(v47 + *(v45 + 56)) = *(v34 + 32);
    v44(v46, v34, v36);
LABEL_11:
    v38(v0[3], 0, 1, v0[8]);
    goto LABEL_12;
  }

  v10 = v0[13];
  v51(v0[11], v0[9]);
  (*(v10 + 56))(v0[3], 1, 1, v0[8]);
LABEL_12:

  v42 = v0[1];

  return v42();
}

uint64_t sub_238867B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238867BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9, a1, AssociatedTypeWitness);
  v24[0] = a5;
  v24[1] = a6;
  v24[2] = a7;
  v24[3] = a8;
  OneInEachChunk = type metadata accessor for KeepLastOneInEachChunkSequence.AsyncIterator(0, v24);
  v20 = OneInEachChunk[13];
  type metadata accessor for StreamSnapshot(255, a6, a8, v21);
  v22 = sub_2388D2E78();
  result = (*(*(v22 - 8) + 32))(a9 + v20, a2, v22);
  *(a9 + OneInEachChunk[14]) = a3;
  *(a9 + OneInEachChunk[15]) = a4;
  return result;
}

uint64_t sub_238867D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_23886B878;

  return MEMORY[0x282200318](a1, a2, a3, v3 + 16);
}

uint64_t sub_238867DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_23886B884;

  return sub_2388673BC(a1, a2, a3, a5);
}

uint64_t sub_238867EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v25 = a3;
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  type metadata accessor for StreamSnapshot(255, v6, v7, a2);
  v8 = sub_2388D2E78();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v9);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v19 = &v24 - v18;
  (*(v13 + 16))(v15, v4, v12);
  sub_2388D2C58();
  v20 = *(v4 + *(a1 + 52));
  v22 = type metadata accessor for StreamSnapshot(0, v6, v7, v21);
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  return sub_238867BF4(v19, v11, 0, v20, v12, v6, v16, v7, v25);
}

uint64_t sub_2388680DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9, a1, AssociatedTypeWitness);
  v24[0] = a7;
  v24[1] = a8;
  v24[2] = a10;
  v24[3] = a11;
  result = type metadata accessor for SafetyCheckedStream.AsyncIterator(0, v24);
  v21 = a9 + *(result + 52);
  *v21 = a2;
  *(v21 + 8) = a3 & 1;
  *(v21 + 16) = a4;
  v22 = (a9 + *(result + 56));
  *v22 = a5;
  v22[1] = a6;
  return result;
}

uint64_t sub_238868220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_238860E4C;

  return sub_238866778(a1, a2, a3, a5);
}

uint64_t sub_2388682FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[3] = a1;
  v7 = type metadata accessor for StreamSnapshot(255, a4[3], a4[5], a4);
  v4[6] = v7;
  v8 = sub_2388D2E78();
  v4[7] = v8;
  v4[8] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[9] = v9;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_task_alloc();
  v4[12] = v12;
  *v12 = v4;
  v12[1] = sub_2388684F0;

  return MEMORY[0x282200310](v9, a2, a3, v4 + 2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2388684F0()
{
  v2 = *v1;

  if (v0)
  {
    if (*(v2 + 32))
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_238868850;
  }

  else
  {
    if (*(v2 + 32))
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_238868678;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_238868678()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[3];
    (*(v0[8] + 8))(v1, v0[7]);
    sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
    v5 = sub_2388D34F8();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v6 = v0[11];
    v7 = v0[3];
    v8 = *(v2 + 32);
    v8(v6, v1, v3);
    v8(v7, v6, v3);
    sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
    v9 = sub_2388D34F8();
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_238868850()
{
  v1 = v0[3];
  *v1 = v0[2];
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v2 = sub_2388D34F8();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_238868940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 32) = a1;
  v7 = *(a4 + 24);
  *(v5 + 72) = v7;
  v8 = *(a4 + 40);
  *(v5 + 80) = v8;
  *(v5 + 88) = type metadata accessor for StreamSnapshot(255, v7, v8, a4);
  *(v5 + 96) = sub_2388D2E78();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  *(v5 + 104) = sub_2388D34F8();
  *(v5 + 112) = swift_task_alloc();
  v9 = sub_2388D34F8();
  *(v5 + 120) = v9;
  *(v5 + 128) = *(v9 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v10 = sub_2388D2E78();
  *(v5 + 152) = v10;
  *(v5 + 160) = *(v10 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 200) = *(a4 + 52);
  v11 = swift_task_alloc();
  *(v5 + 192) = v11;
  *v11 = v5;
  v11[1] = sub_238868B88;
  v12 = *(v5 + 184);
  v13 = *(v5 + 56);
  v14 = *(v5 + 40);
  v15 = *(v5 + 48);

  return sub_2388682FC(v12, v14, v15, v13);
}

uint64_t sub_238868B88()
{
  v1 = *(*v0 + 40);

  if (v1)
  {
    swift_getObjectType();
    v2 = sub_2388D2B38();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](sub_238868CC0, v2, v4);
}

uint64_t sub_238868CC0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(*(v0 + 160) + 16);
  v4(v1, *(v0 + 64) + *(v0 + 200), *(v0 + 152));
  v5 = *(v3 + 48);
  if (v5(v1, 1, v2) != 1)
  {
    v15 = *(v0 + 184);
    v16 = *(v0 + 120);
    (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 176), v16);
    if (v5(v15, 1, v16) == 1)
    {
      v18 = *(v0 + 112);
      v17 = *(v0 + 120);
      v54 = *(v0 + 104);
      v20 = *(v0 + 72);
      v19 = *(v0 + 80);
      v21 = *(v0 + 56);
      v22 = *(v0 + 32);
      v23 = swift_task_alloc();
      v56 = *(v21 + 16);
      v23[2] = v56;
      v23[3] = v20;
      v24 = *(v21 + 32);
      v23[4] = v24;
      v23[5] = v19;
      sub_23886942C(sub_23886AB5C, v17, v18);

      sub_238869640(v54, v0 + 16, v22);
      v33 = *(v0 + 184);
      v35 = *(v0 + 152);
      v34 = *(v0 + 160);
      v37 = *(v0 + 72);
      v36 = *(v0 + 80);
      v38 = *(v0 + 64);
      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      sub_238869230(v38, v33, v56, v37, v24, v36);
      (*(v34 + 8))(v33, v35);
    }

    else
    {
      v31 = *(v0 + 120);
      v32 = *(v0 + 32);
      (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 144), v31);
      sub_238869640(v31, v0 + 24, v32);
      v39 = *(v0 + 184);
      v40 = *(v0 + 152);
      v41 = *(v0 + 160);
      v43 = *(v0 + 80);
      v42 = *(v0 + 88);
      v45 = *(v0 + 64);
      v44 = *(v0 + 72);
      v46 = *(v0 + 56);
      v47 = *(v0 + 32);
      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      (*(*(v42 - 8) + 56))(v47, 0, 1, v42);
      sub_238869230(v45, v39, *(v46 + 16), v44, *(v46 + 32), v43);
      (*(v41 + 8))(v39, v40);
    }

LABEL_10:

    v48 = *(v0 + 8);

    return v48();
  }

  v52 = *(v0 + 168);
  v53 = *(v0 + 200);
  v6 = *(v0 + 152);
  v55 = *(v0 + 120);
  v50 = *(v0 + 80);
  v51 = *(v0 + 184);
  v49 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(*(v0 + 160) + 8);
  v9(*(v0 + 176), v6);
  sub_238869230(v8, v51, *(v7 + 16), v49, *(v7 + 32), v50);
  v9(v51, v6);
  v4(v52, v8 + v53, v6);
  v10 = v5(v52, 1, v55);
  v11 = *(v0 + 168);
  v12 = *(v0 + 152);
  if (v10 == 1)
  {
    v13 = *(v0 + 88);
    v14 = *(v0 + 32);
    v9(v11, v12);
    (*(*(v13 - 8) + 56))(v14, 1, 1, v13);
    goto LABEL_10;
  }

  v9(v11, v12);
  v25 = swift_task_alloc();
  *(v0 + 192) = v25;
  *v25 = v0;
  v25[1] = sub_238868B88;
  v26 = *(v0 + 184);
  v27 = *(v0 + 56);
  v28 = *(v0 + 40);
  v29 = *(v0 + 48);

  return sub_2388682FC(v26, v28, v29, v27);
}

uint64_t sub_238869230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v10 = *(type metadata accessor for MarkLastElementAsCompleteSequence.AsyncIterator(0, v14) + 52);
  type metadata accessor for StreamSnapshot(255, a4, a6, v11);
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  sub_2388D34F8();
  v12 = sub_2388D2E78();
  return (*(*(v12 - 8) + 24))(a1 + v10, a2, v12);
}

uint64_t sub_23886930C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for StreamSnapshot(0, a2, a4, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  (*(v8 + 16))(&v12 - v9, a1, v7);
  v10[*(v7 + 56)] = 1;
  (*(v8 + 32))(a5, v10, v7);
  return (*(v8 + 56))(a5, 0, 1, v7);
}

uint64_t sub_23886942C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }

  sub_2388D34F8();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_238869640@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_238869710@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for StreamSnapshot(255, a1, a2, a2);
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v4 = sub_2388D34F8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t sub_2388697B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v15 = *(type metadata accessor for MarkLastElementAsCompleteSequence.AsyncIterator(0, v19) + 52);
  type metadata accessor for StreamSnapshot(255, a4, a6, v16);
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  sub_2388D34F8();
  v17 = sub_2388D2E78();
  return (*(*(v17 - 8) + 32))(a7 + v15, a2, v17);
}

uint64_t sub_2388698F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_23886B884;

  return sub_238868940(a1, a2, a3, a5);
}

uint64_t sub_2388699B4@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[5];
  type metadata accessor for StreamSnapshot(255, v6, v7, a2);
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  sub_2388D34F8();
  v8 = sub_2388D2E78();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = a1[2];
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v19 = &v21 - v18;
  (*(v13 + 16))(v15, v3, v12);
  sub_2388D2C58();
  sub_238869710(v6, v7, v11);
  return sub_2388697B0(v19, v11, v12, v6, v16, v7, a3);
}

unint64_t sub_238869BB4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_238865808();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_238869C44(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *sub_238869D90(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
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

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
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

unint64_t sub_238869F74(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_238865808();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23886A018(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_23886A1BC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
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

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = (a2 - 1);
        }
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t sub_23886A3BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23886A434(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_23886A538(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
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

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_23886A6BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23886A72C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_23886A86C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_23886AAF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t sub_23886AB98(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    type metadata accessor for StreamSnapshot(255, a1[3], a1[5], v3);
    sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
    sub_2388D34F8();
    result = sub_2388D2E78();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23886AC78(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3[3] - 8) + 80);
  v10 = ((*(*(a3[3] - 8) + 64) + ((v9 + 40) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (v8 <= 0xFD)
  {
    v11 = 253;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v9 | 7;
  v13 = v12 + *(*(AssociatedTypeWitness - 8) + 64);
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v14 = v10 + (v13 & ~v12) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_30:
      if (v8 < 0xFD)
      {
        v23 = *(((a1 + v13) & ~v12) + v10);
        if (v23 >= 2)
        {
          v24 = (v23 ^ 0xFF) + 1;
        }

        else
        {
          v24 = 0;
        }

        if (v24 >= 2)
        {
          return v24 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v22 = *(v7 + 48);

        return v22(a1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_23886AEE0(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4[3] - 8) + 80);
  v11 = 8;
  if (((*(*(a4[3] - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 17 > 8)
  {
    v11 = ((*(*(a4[3] - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v9 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = v10 | 7;
  v14 = v11 + 1;
  v15 = (v10 | 7) + *(v8 + 64);
  v16 = v11 + 1 + (v15 & ~(v10 | 7));
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFD)
  {
    v24 = (&a1[v15] & ~v13);
    if (a2 > 0xFD)
    {
      if (v14 <= 3)
      {
        v25 = ~(-1 << (8 * v14));
      }

      else
      {
        v25 = -1;
      }

      if (v14)
      {
        v26 = v25 & (a2 - 254);
        if (v14 <= 3)
        {
          v27 = v14;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v14);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v24[v11] = ~a2;
    }
  }

  else
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }
}

uint64_t sub_23886B238(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    type metadata accessor for StreamSnapshot(255, a1[3], a1[5], v3);
    result = sub_2388D2E78();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23886B2F8(int *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(a3[3] - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  if (v12 - 1 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v12 - 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v11 | 7;
  v16 = (v11 | 7) + *(*(AssociatedTypeWitness - 8) + 64);
  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v17 = (((v16 & ~v15) + ((*(v9 + 64) + ((v11 + 40) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v14 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v14 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v17);
    if (v22)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v8 >= v13)
  {
    v29 = *(v7 + 48);

    return v29(a1, v8, AssociatedTypeWitness);
  }

  else
  {
    v26 = ((a1 + v16) & ~v15);
    if ((v10 & 0x80000000) != 0)
    {
      v28 = (*(v9 + 48))((v11 + ((((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11);
    }

    else
    {
      v27 = *v26;
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v28 = v27 + 1;
    }

    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23886B570(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(a4[3] - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = v14 - 1;
  if (v14 - 1 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = v14 - 1;
  }

  v17 = ((*(v11 + 64) + ((v13 + 40) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v18 = (v13 | 7) + *(*(AssociatedTypeWitness - 8) + 64);
  v19 = (((v18 & ~(v13 | 7)) + v17 + 22) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= a3)
  {
    v22 = 0;
    v23 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((((v18 & ~(v13 | 7)) + v17 + 22) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = a3 - v16 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *(a1 + v19) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v19) = 0;
      }

      else if (v22)
      {
        *(a1 + v19) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v10 >= v15)
      {
        v28 = *(v9 + 56);

        v28(a1, a2, v10, AssociatedTypeWitness);
      }

      else
      {
        v26 = ((a1 + v18) & ~(v13 | 7));
        if (v15 >= a2)
        {
          v29 = (a2 + 1);
          if ((v12 & 0x80000000) != 0)
          {
            v31 = *(v11 + 56);

            v31((v13 + ((((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13, v29);
          }

          else
          {
            if ((v29 & 0x80000000) != 0)
            {
              v30 = (a2 - 0x7FFFFFFF);
            }

            else
            {
              v30 = a2;
            }

            *v26 = v30;
          }
        }

        else
        {
          v27 = a2 - v14;
          bzero(v26, v17);
          if (v17 <= 3)
          {
            *v26 = v27;
          }

          else
          {
            *v26 = v27;
          }
        }
      }

      return;
    }
  }

  if ((((v18 & ~(v13 | 7)) + v17 + 22) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  if (v19)
  {
    v25 = ~v16 + a2;
    bzero(a1, v19);
    *a1 = v25;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      *(a1 + v19) = v24;
    }

    else
    {
      *(a1 + v19) = v24;
    }
  }

  else if (v22)
  {
    *(a1 + v19) = v24;
  }
}

double ServerLanguageModel.init(name:url:headers:protocol:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ServerLanguageModel(0);
  v9 = v8[5];
  v10 = sub_2388D0F58();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[v8[6]] = a4;
  v11 = &a5[v8[8]];
  *(v11 + 4) = 0;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  a5[v8[9]] = 1;
  return result;
}

uint64_t ServerLanguageModel.init(service:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ServerLanguageModel.AppleInternalService(0);
  v5 = (a1 + v4[5]);
  v6 = v5[1];
  *a2 = *v5;
  *(a2 + 1) = v6;
  v7 = type metadata accessor for ServerLanguageModel(0);
  v8 = v7[5];
  v9 = sub_2388D0F58();
  (*(*(v9 - 8) + 16))(&a2[v8], a1, v9);

  *&a2[v7[6]] = sub_238879050(MEMORY[0x277D84F90]);
  sub_238815814(a1 + v4[8], &a2[v7[8]]);
  LOBYTE(v4) = *(a1 + v4[7]);
  result = sub_238879E0C(a1, type metadata accessor for ServerLanguageModel.AppleInternalService);
  a2[v7[9]] = v4;
  return result;
}

uint64_t static ServerLanguageModel.AppleInternalService.foundationModelsPlatform(url:model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = a3;
  v6 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = sub_2388D0F58();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238827E14(a1, v11, &qword_27DF30608, &qword_2388D6690);
  v16 = *(v13 + 48);
  v17 = v16(v11, 1, v12);
  v32 = a2;
  if (v17 != 1)
  {
    v31 = *(v13 + 32);
    v31(v15, v11, v12);
LABEL_6:
    v22 = v34;

    v23 = sub_23888124C(0xD000000000000028, 0x80000002388DEFB0);
    v25 = v24;
    v26 = type metadata accessor for ServerLanguageModel.AppleInternalService(0);
    v27 = v33;
    v28 = (v33 + v26[8]);
    v28[3] = &type metadata for AppleConnectAuthenticator;
    v28[4] = &off_284B3DD20;
    v29 = swift_allocObject();
    *v28 = v29;
    *(v29 + 16) = 0xD00000000000001ELL;
    *(v29 + 24) = 0x80000002388DEF90;
    *(v29 + 32) = 0;
    *(v29 + 40) = v23;
    *(v29 + 48) = v25;
    *(v29 + 56) = 1;
    result = (v31)(v27, v15, v12);
    v30 = (v27 + v26[5]);
    *v30 = v32;
    v30[1] = v22;
    *(v27 + v26[7]) = 1;
    return result;
  }

  sub_23888124C(0xD000000000000048, 0x80000002388DEF40);
  sub_2388D0F28();

  result = v16(v9, 1, v12);
  if (result != 1)
  {
    v19 = v9;
    v20 = *(v13 + 32);
    v20(v15, v19, v12);
    v21 = v16(v11, 1, v12);
    v31 = v20;
    if (v21 != 1)
    {
      sub_238827E88(v11, &qword_27DF30608, &qword_2388D6690);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t static ServerLanguageModel.AppleInternalService.floodgate(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_23888124C(0xD000000000000038, 0x80000002388DEFE0);
  sub_2388D0F28();

  v9 = sub_2388D0F58();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = type metadata accessor for ServerLanguageModel.AppleInternalService(0);
    v13 = (a3 + v12[8]);
    v13[3] = &type metadata for AppleConnectAuthenticator;
    v13[4] = &off_284B3DD20;
    v14 = swift_allocObject();
    *v13 = v14;
    *(v14 + 16) = 0xD00000000000001ELL;
    *(v14 + 24) = 0x80000002388DF020;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 32) = &unk_284B3AC90;
    *(v14 + 56) = 0;
    (*(v10 + 32))(a3, v8, v9);
    v15 = (a3 + v12[5]);
    *v15 = a1;
    v15[1] = a2;
    *(a3 + v12[7]) = 0;
  }

  return result;
}

uint64_t sub_23886BF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 264) = a7;
  *(v8 + 272) = v7;
  *(v8 + 248) = a2;
  *(v8 + 256) = a3;
  *(v8 + 240) = a1;
  v10 = sub_238810E44(&qword_27DF306C8, &unk_2388D69A8);
  *(v8 + 280) = v10;
  *(v8 + 288) = *(v10 - 8);
  *(v8 + 296) = swift_task_alloc();
  v11 = type metadata accessor for GenerationSchema(0);
  *(v8 + 304) = v11;
  *(v8 + 312) = *(v11 - 8);
  *(v8 + 320) = swift_task_alloc();
  v12 = type metadata accessor for OpenAIClient.Tool(0);
  *(v8 + 328) = v12;
  *(v8 + 336) = *(v12 - 8);
  *(v8 + 344) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v8 + 352) = swift_task_alloc();
  sub_238810E44(&qword_27DF306D0, &qword_2388D69B8);
  *(v8 + 360) = swift_task_alloc();
  v13 = type metadata accessor for ServerModelInferenceSession(0);
  *(v8 + 368) = v13;
  v14 = *(v13 - 8);
  *(v8 + 376) = v14;
  *(v8 + 384) = *(v14 + 64);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = type metadata accessor for OpenAIClient.ChatCompletionRequest(0);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = type metadata accessor for OpenAIClient(0);
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = *a4;
  *(v8 + 153) = *(a4 + 16);
  v15 = *(a4 + 24);
  *(v8 + 154) = *(a4 + 32);
  v16 = *(a4 + 72);
  *(v8 + 448) = v15;
  *(v8 + 456) = v16;
  *(v8 + 155) = *(a4 + 80);

  return MEMORY[0x2822009F8](sub_23886C270, 0, 0);
}

uint64_t sub_23886C270()
{
  v118 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 264);
  v4 = *(v2 + 48);
  *(v0 + 464) = v4;
  *(v0 + 472) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1 || (v5 = *(v0 + 272) + *(*(v0 + 368) + 20), v6 = type metadata accessor for ServerLanguageModel(0), *(v5 + *(v6 + 36)) == 1))
  {
    sub_238810E44(&qword_27DF306D8, &qword_2388D69C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2388D6660;
    strcpy((inited + 32), "Content-Type");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = 0x80000002388DF0B0;
    *(inited + 64) = 0x6567412D72657355;
    *(inited + 72) = 0xEA0000000000746ELL;
    v10 = [objc_opt_self() mainBundle];
    v11 = [v10 bundleIdentifier];

    if (v11)
    {
      v12 = sub_2388D2858();
      v14 = v13;
    }

    else
    {
      v14 = 0x80000002388DF0D0;
      v12 = 0xD00000000000001ALL;
    }

    v15 = *(v0 + 368);
    v16 = *(v0 + 272);
    *(inited + 80) = v12;
    *(inited + 88) = v14;
    *(v0 + 480) = sub_238879050(inited);
    swift_setDeallocating();
    sub_238810E44(&qword_27DF306E0, &qword_2388D69C8);
    swift_arrayDestroy();
    v17 = *(v15 + 20);
    *(v0 + 156) = v17;
    v18 = type metadata accessor for ServerLanguageModel(0);
    *(v0 + 488) = v18;
    sub_238827E14(v16 + *(v18 + 32) + v17, v0 + 160, &qword_27DF306E8, &qword_2388D69D0);
    v19 = *(v0 + 184);
    if (v19)
    {
      v20 = sub_238815878((v0 + 160), v19);
      v21 = *(v20 + 25);
      v22 = v20[1];
      *(v0 + 112) = *v20;
      *(v0 + 128) = v22;
      *(v0 + 137) = v21;
      v23 = swift_task_alloc();
      *(v0 + 496) = v23;
      *v23 = v0;
      v23[1] = sub_23886CE24;

      return sub_238870C84();
    }

    sub_238827E88(v0 + 160, &qword_27DF306E8, &qword_2388D69D0);
    v25 = sub_238879050(MEMORY[0x277D84F90]);
    v26 = *(v0 + 480);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v116 = v26;
    sub_238879164(v25, sub_238878A4C, 0, isUniquelyReferenced_nonNull_native, &v116);
    v30 = *(v0 + 488);
    v31 = *(v0 + 156);
    v32 = *(v0 + 272);

    v33 = v116;
    v34 = *(v32 + v31 + *(v30 + 24));

    v35 = swift_isUniquelyReferenced_nonNull_native();
    *&v116 = v33;
    sub_238879164(v34, sub_238878A4C, 0, v35, &v116);

    v36 = v116;
    v106 = *(v0 + 153);
    v38 = *(v0 + 416);
    v37 = *(v0 + 424);
    v39 = *(v0 + 392);
    v112 = *(v0 + 376);
    v40 = *(v0 + 272);
    v110 = *(v0 + 248);
    v41 = (v40 + *(v0 + 156));
    v42 = *(*(v0 + 488) + 20);
    v43 = sub_2388D0F58();
    (*(*(v43 - 8) + 16))(v37, &v41[v42], v43);
    v44 = [objc_opt_self() ephemeralSessionConfiguration];
    v45 = [objc_opt_self() sessionWithConfiguration_];

    *(v37 + *(v38 + 20)) = v36;
    *(v37 + *(v38 + 24)) = v45;
    v47 = *v41;
    v46 = *(v41 + 1);
    v48 = swift_task_alloc();
    *(v48 + 16) = v40;

    v49 = sub_238897A80(sub_238879ECC, v48, v110);

    sub_23887A1F0(v40, v39, type metadata accessor for ServerModelInferenceSession);
    v50 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v51 = swift_allocObject();
    sub_23887A0A4(v39, v51 + v50, type metadata accessor for ServerModelInferenceSession);
    if (v106 <= 0xFD)
    {
      v53 = *(v0 + 153);
      v116 = *(v0 + 432);
      v117 = v53;
      sub_23887A018(&v116);
      v52 = v54;
    }

    else
    {

      v52 = 0;
    }

    v103 = v49;
    v104 = v47;
    v105 = v46;
    v55 = *(v0 + 256);
    v56 = *(v55 + 16);
    if (v56)
    {
      v108 = *(v0 + 336);
      v109 = *(v0 + 344);
      v107 = *(v0 + 328);
      *&v116 = MEMORY[0x277D84F90];
      sub_2388B8388(0, v56, 0);
      v57 = v55 + 32;
      v58 = v116;
      do
      {
        v113 = *(v0 + 344);
        v114 = v56;
        v59 = *(v0 + 320);
        sub_238815814(v57, v0 + 200);
        v60 = *(v0 + 224);
        v61 = *(v0 + 232);
        sub_238815878((v0 + 200), v60);
        v111 = (*(v61 + 40))(v60, v61);
        v63 = v62;
        v64 = *(v0 + 224);
        v65 = *(v0 + 232);
        sub_238815878((v0 + 200), v64);
        v66 = (*(v65 + 48))(v64, v65);
        v68 = v67;
        v69 = *(v0 + 224);
        v70 = *(v0 + 232);
        sub_238815878((v0 + 200), v69);
        (*(v70 + 56))(v69, v70);
        v71 = (v113 + *(v107 + 20));
        v72 = type metadata accessor for OpenAIClient.Tool.Function(0);
        GenerationSchema.jsonSchema()(v71 + *(v72 + 24));
        sub_238879E0C(v59, type metadata accessor for GenerationSchema);
        *v71 = v111;
        v71[1] = v63;
        v71[2] = v66;
        v71[3] = v68;
        *v113 = 0x6E6F6974636E7566;
        *(v109 + 8) = 0xE800000000000000;
        sub_2388158BC((v0 + 200));
        *&v116 = v58;
        v74 = *(v58 + 16);
        v73 = *(v58 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_2388B8388((v73 > 1), v74 + 1, 1);
          v58 = v116;
        }

        v75 = *(v0 + 344);
        *(v58 + 16) = v74 + 1;
        sub_23887A0A4(v75, v58 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v74, type metadata accessor for OpenAIClient.Tool);
        v57 += 40;
        v56 = v114 - 1;
      }

      while (v114 != 1);
      v115 = v58;
    }

    else
    {
      v115 = MEMORY[0x277D84F90];
    }

    v76 = *(v0 + 464);
    v77 = *(v0 + 352);
    v78 = *(v0 + 304);
    sub_238827E14(*(v0 + 264), v77, &qword_27DF2FE20, &qword_2388D5740);
    v79 = v76(v77, 1, v78);
    v80 = *(v0 + 360);
    if (v79 == 1)
    {
      v81 = type metadata accessor for OpenAIClient.ResponseFormat(0);
      (*(*(v81 - 8) + 56))(v80, 1, 1, v81);
    }

    else
    {
      v82 = *(v0 + 320);
      v83 = *(v0 + 304);
      sub_23887A0A4(*(v0 + 352), v82, type metadata accessor for GenerationSchema);
      v84 = (v82 + *(v83 + 20));
      v86 = *v84;
      v85 = v84[1];
      v87 = type metadata accessor for OpenAIClient.ResponseFormat(0);
      v88 = (v80 + *(v87 + 20));
      v89 = type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper(0);
      v90 = *(v89 + 24);

      GenerationSchema.jsonSchema()(v88 + v90);
      *v88 = v86;
      v88[1] = v85;
      v88[2] = 0;
      v88[3] = 0;
      *(v88 + *(v89 + 28)) = 1;
      *v80 = 0x6863735F6E6F736ALL;
      v80[1] = 0xEB00000000616D65;
      sub_238879E0C(v82, type metadata accessor for GenerationSchema);
      (*(*(v87 - 8) + 56))(v80, 0, 1, v87);
    }

    v91 = *(v0 + 155);
    v92 = *(v0 + 154);
    v94 = *(v0 + 448);
    v93 = *(v0 + 456);
    v95 = *(v0 + 424);
    v96 = *(v0 + 400);
    v97 = *(v0 + 408);
    v98 = *(v0 + 360);
    v100 = *(v0 + 288);
    v99 = *(v0 + 296);
    v101 = *(v0 + 280);
    *v97 = v104;
    *(v97 + 8) = v105;
    *(v97 + 16) = v103;
    *(v97 + 24) = v94;
    *(v97 + 32) = v92;
    *(v97 + 40) = v52;
    *(v97 + 48) = v106 > 0xFD;
    *(v97 + 56) = v93;
    *(v97 + 64) = v91;
    *(v97 + 72) = v115;
    sub_23887A12C(v98, v97 + *(v96 + 40));
    *(v97 + *(v96 + 44)) = 1;
    v102 = swift_task_alloc();
    *(v102 + 16) = v95;
    *(v102 + 24) = v97;
    (*(v100 + 104))(v99, *MEMORY[0x277D858A0], v101);
    sub_2388D2D28();

    sub_238879E0C(v97, type metadata accessor for OpenAIClient.ChatCompletionRequest);
    sub_238879E0C(v95, type metadata accessor for OpenAIClient);

    v29 = *(v0 + 8);
  }

  else
  {
    sub_2388151C8(v6, v7, v8);
    swift_allocError();
    *v28 = 0xD00000000000002DLL;
    *(v28 + 8) = 0x80000002388DF0F0;
    *(v28 + 16) = MEMORY[0x277D84F90];
    *(v28 + 24) = 0;
    *(v28 + 32) = 3;
    swift_willThrow();

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_23886CE24(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {

    v5 = sub_23886D834;
  }

  else
  {
    *(v4 + 512) = a1;
    v5 = sub_23886CF54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23886CF54()
{
  v97 = v0;
  sub_2388158BC((v0 + 160));
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 480);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v95 = v3;
  sub_238879164(v1, sub_238878A4C, 0, isUniquelyReferenced_nonNull_native, &v95);
  if (v2)
  {
  }

  else
  {
    v5 = *(v0 + 488);
    v6 = *(v0 + 156);
    v7 = *(v0 + 272);

    v8 = v95;
    v9 = *(v7 + v6 + *(v5 + 24));

    v10 = swift_isUniquelyReferenced_nonNull_native();
    *&v95 = v8;
    sub_238879164(v9, sub_238878A4C, 0, v10, &v95);

    v11 = v95;
    v84 = *(v0 + 153);
    v13 = *(v0 + 416);
    v14 = *(v0 + 424);
    v15 = *(v0 + 392);
    v89 = *(v0 + 376);
    v16 = *(v0 + 272);
    v87 = *(v0 + 248);
    v92 = v0;
    v17 = (v16 + *(v0 + 156));
    v18 = *(*(v0 + 488) + 20);
    v19 = sub_2388D0F58();
    (*(*(v19 - 8) + 16))(v14, &v17[v18], v19);
    v20 = [objc_opt_self() ephemeralSessionConfiguration];
    v21 = [objc_opt_self() sessionWithConfiguration_];

    *(v14 + *(v13 + 20)) = v11;
    *(v14 + *(v13 + 24)) = v21;
    v23 = *v17;
    v22 = *(v17 + 1);
    v24 = swift_task_alloc();
    *(v24 + 16) = v16;

    v25 = sub_238897A80(sub_238879ECC, v24, v87);

    sub_23887A1F0(v16, v15, type metadata accessor for ServerModelInferenceSession);
    v26 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v27 = swift_allocObject();
    sub_23887A0A4(v15, v27 + v26, type metadata accessor for ServerModelInferenceSession);
    if (v84 <= 0xFD)
    {
      v29 = v92;
      v30 = *(v92 + 153);
      v95 = *(v92 + 432);
      v96 = v30;
      sub_23887A018(&v95);
      v28 = v31;
      v83 = v22;
    }

    else
    {
      v83 = v22;

      v28 = 0;
      v29 = v92;
    }

    v81 = v25;
    v82 = v23;
    v32 = *(v29 + 256);
    v33 = *(v32 + 16);
    if (v33)
    {
      v86 = *(v29 + 336);
      v88 = *(v29 + 344);
      v85 = *(v29 + 328);
      *&v95 = MEMORY[0x277D84F90];
      sub_2388B8388(0, v33, 0);
      v34 = v32 + 32;
      v35 = v95;
      do
      {
        v91 = *(v29 + 344);
        v93 = v33;
        v36 = *(v29 + 320);
        sub_238815814(v34, v29 + 200);
        v37 = *(v29 + 224);
        v38 = *(v29 + 232);
        sub_238815878((v29 + 200), v37);
        v90 = (*(v38 + 40))(v37, v38);
        v40 = v39;
        v41 = *(v29 + 224);
        v42 = *(v29 + 232);
        sub_238815878((v29 + 200), v41);
        v43 = (*(v42 + 48))(v41, v42);
        v45 = v44;
        v46 = *(v29 + 224);
        v47 = *(v29 + 232);
        sub_238815878((v29 + 200), v46);
        (*(v47 + 56))(v46, v47);
        v48 = (v91 + *(v85 + 20));
        v49 = type metadata accessor for OpenAIClient.Tool.Function(0);
        GenerationSchema.jsonSchema()(v48 + *(v49 + 24));
        sub_238879E0C(v36, type metadata accessor for GenerationSchema);
        *v48 = v90;
        v48[1] = v40;
        v48[2] = v43;
        v48[3] = v45;
        *v91 = 0x6E6F6974636E7566;
        *(v88 + 8) = 0xE800000000000000;
        sub_2388158BC((v29 + 200));
        *&v95 = v35;
        v51 = *(v35 + 16);
        v50 = *(v35 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_2388B8388((v50 > 1), v51 + 1, 1);
          v35 = v95;
        }

        v52 = *(v29 + 344);
        *(v35 + 16) = v51 + 1;
        sub_23887A0A4(v52, v35 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v51, type metadata accessor for OpenAIClient.Tool);
        v34 += 40;
        v33 = v93 - 1;
      }

      while (v93 != 1);
      v94 = v35;
    }

    else
    {
      v94 = MEMORY[0x277D84F90];
    }

    v53 = *(v29 + 464);
    v54 = *(v29 + 352);
    v55 = *(v29 + 304);
    sub_238827E14(*(v29 + 264), v54, &qword_27DF2FE20, &qword_2388D5740);
    v56 = v53(v54, 1, v55);
    v57 = *(v29 + 360);
    if (v56 == 1)
    {
      v58 = type metadata accessor for OpenAIClient.ResponseFormat(0);
      (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
    }

    else
    {
      v59 = *(v29 + 320);
      v60 = *(v29 + 304);
      sub_23887A0A4(*(v29 + 352), v59, type metadata accessor for GenerationSchema);
      v61 = (v59 + *(v60 + 20));
      v62 = *v61;
      v63 = v61[1];
      v64 = type metadata accessor for OpenAIClient.ResponseFormat(0);
      v65 = (v57 + *(v64 + 20));
      v66 = type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper(0);
      v67 = *(v66 + 24);

      GenerationSchema.jsonSchema()(v65 + v67);
      *v65 = v62;
      v65[1] = v63;
      v65[2] = 0;
      v65[3] = 0;
      *(v65 + *(v66 + 28)) = 1;
      *v57 = 0x6863735F6E6F736ALL;
      v57[1] = 0xEB00000000616D65;
      sub_238879E0C(v59, type metadata accessor for GenerationSchema);
      (*(*(v64 - 8) + 56))(v57, 0, 1, v64);
    }

    v68 = *(v29 + 155);
    v69 = *(v29 + 154);
    v71 = *(v29 + 448);
    v70 = *(v29 + 456);
    v72 = *(v29 + 424);
    v73 = *(v29 + 400);
    v74 = *(v29 + 408);
    v75 = *(v29 + 360);
    v77 = *(v29 + 288);
    v76 = *(v29 + 296);
    v78 = *(v29 + 280);
    *v74 = v82;
    *(v74 + 8) = v83;
    *(v74 + 16) = v81;
    *(v74 + 24) = v71;
    *(v74 + 32) = v69;
    *(v74 + 40) = v28;
    *(v74 + 48) = v84 > 0xFD;
    *(v74 + 56) = v70;
    *(v74 + 64) = v68;
    *(v74 + 72) = v94;
    sub_23887A12C(v75, v74 + *(v73 + 40));
    *(v74 + *(v73 + 44)) = 1;
    v79 = swift_task_alloc();
    *(v79 + 16) = v72;
    *(v79 + 24) = v74;
    (*(v77 + 104))(v76, *MEMORY[0x277D858A0], v78);
    sub_2388D2D28();

    sub_238879E0C(v74, type metadata accessor for OpenAIClient.ChatCompletionRequest);
    sub_238879E0C(v72, type metadata accessor for OpenAIClient);

    v80 = *(v29 + 8);

    return v80();
  }
}

uint64_t sub_23886D834()
{
  sub_2388158BC((v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23886D908(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!(v3 >> 6))
  {
    v4 = 0x80000002388DF1D0;
    sub_23887A744(result, a2, a3);
    swift_allocError();
    v6 = 0xD00000000000001FLL;
LABEL_8:
    *v5 = v6;
    *(v5 + 8) = v4;
    *(v5 + 16) = v7;
    *(v5 + 32) = v8;
    *(v5 + 48) = v9;
    *(v5 + 64) = 0;
    return swift_willThrow();
  }

  if (v3 >> 6 != 1)
  {
    v4 = 0x80000002388DF1F0;
    sub_23887A744(result, a2, a3);
    swift_allocError();
    v6 = 0xD000000000000020;
    goto LABEL_8;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0x80000002388DF1A0;
    sub_23887A744(result, a2, a3);
    swift_allocError();
    v6 = 0xD000000000000026;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_23886DA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  sub_2388B83EC(0, v2, 0);
  v3 = v16;
  v4 = *(v1 + 16);
  for (i = (v1 + 56); ; i += 11)
  {
    v6 = *(i - 2);
    v7 = *i;
    v15 = *(i - 1);
    v8 = i[7];
    v13 = *(i - 3);
    v14 = i[6];
    v10 = *(v16 + 16);
    v9 = *(v16 + 24);

    if (v10 >= v9 >> 1)
    {
      result = sub_2388B83EC((v9 > 1), v10 + 1, 1);
    }

    *(v16 + 16) = v10 + 1;
    v12 = (v16 + (v10 << 6));
    v12[4] = v13;
    v12[5] = v6;
    v12[6] = 0x6E6F6974636E7566;
    v12[7] = 0xE800000000000000;
    v12[8] = v15;
    v12[9] = v7;
    v12[10] = v14;
    v12[11] = v8;
    if (!v4)
    {
      break;
    }

    --v4;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23886DB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a1;
  v85 = a2;
  v83 = a3;
  v3 = type metadata accessor for Transcript.Prompt(0);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OpenAIClient.MessageContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v81 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v81 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  v18 = type metadata accessor for ServerModelInferenceSession(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v87 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v86 = &v81 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v81 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v81 - v26;
  v28 = type metadata accessor for Transcript.Entry(0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23887A1F0(v84, v30, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v56 = v30[1];
      v57 = v30[2];
      *&v88 = *v30;
      *(&v88 + 1) = v56;
      *&v89 = v57;
      v58 = sub_23886DA2C(&v88);

      v32 = 0;
      v33 = 0;
      v37 = MEMORY[0x277D84F90];
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v32 = *v30;
        v33 = v30[1];
        v35 = v30[3];
        v34 = v30[4];
        sub_23887A1F0(v85, v86, type metadata accessor for ServerModelInferenceSession);
        v36 = *(v34 + 16);
        v37 = MEMORY[0x277D84F90];
        if (!v36)
        {
LABEL_42:
          sub_238879E0C(v86, type metadata accessor for ServerModelInferenceSession);

          v58 = 0;
          v80 = 4;
LABEL_46:
          v79 = v83;
LABEL_51:
          *v79 = v80;
          *(v79 + 8) = v37;
          *(v79 + 16) = v58;
          *(v79 + 24) = v32;
          *(v79 + 32) = v33;
          return result;
        }

        v82 = v35;
        v84 = v33;
        v85 = v32;
        v94 = MEMORY[0x277D84F90];
        v87 = v34;
        result = sub_2388B840C(0, v36, 0);
        if (*(v87 + 2))
        {
          v39 = 0;
          v40 = v87 + 32;
          v37 = v94;
          while (1)
          {
            v41 = *(v40 + 3);
            v90 = *(v40 + 2);
            v91 = v41;
            v92 = *(v40 + 4);
            v93 = *(v40 + 10);
            v42 = *(v40 + 1);
            v88 = *v40;
            v89 = v42;
            sub_23886E514(&v88, v12);
            v94 = v37;
            v44 = *(v37 + 16);
            v43 = *(v37 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_2388B840C((v43 > 1), v44 + 1, 1);
              v37 = v94;
            }

            *(v37 + 16) = v44 + 1;
            result = sub_23887A0A4(v12, v37 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v44, type metadata accessor for OpenAIClient.MessageContent);
            if (v36 - 1 == v39)
            {
              break;
            }

            ++v39;
            v40 += 88;
            if (v39 >= *(v87 + 2))
            {
              goto LABEL_52;
            }
          }

          v33 = v84;
          v32 = v85;
          goto LABEL_42;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v59 = v30[1];
      v60 = v30[2];
      v61 = v30[3];
      sub_23887A1F0(v85, v87, type metadata accessor for ServerModelInferenceSession);
      v62 = *(v61 + 16);
      if (v62)
      {
        v84 = v60;
        v85 = v59;
        v94 = MEMORY[0x277D84F90];
        result = sub_2388B840C(0, v62, 0);
        if (!*(v61 + 16))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v63 = 0;
        v37 = v94;
        v86 = (v62 - 1);
        v64 = 32;
        while (1)
        {
          v65 = *(v61 + v64 + 48);
          v90 = *(v61 + v64 + 32);
          v91 = v65;
          v92 = *(v61 + v64 + 64);
          v93 = *(v61 + v64 + 80);
          v66 = *(v61 + v64 + 16);
          v88 = *(v61 + v64);
          v89 = v66;
          sub_23886E514(&v88, v9);
          v94 = v37;
          v68 = *(v37 + 16);
          v67 = *(v37 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_2388B840C((v67 > 1), v68 + 1, 1);
            v37 = v94;
          }

          *(v37 + 16) = v68 + 1;
          result = sub_23887A0A4(v9, v37 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v68, type metadata accessor for OpenAIClient.MessageContent);
          if (v86 == v63)
          {
            break;
          }

          ++v63;
          v64 += 88;
          if (v63 >= *(v61 + 16))
          {
            goto LABEL_53;
          }
        }
      }

      else
      {

        v37 = MEMORY[0x277D84F90];
      }

      result = sub_238879E0C(v87, type metadata accessor for ServerModelInferenceSession);
      v58 = 0;
      v32 = 0;
      v33 = 0;
    }

    v80 = 2;
    goto LABEL_46;
  }

  v86 = v27;
  v87 = v25;
  if (!EnumCaseMultiPayload)
  {
    v45 = v30[1];
    v46 = v30[2];
    v47 = v30[3];
    v48 = v86;
    sub_23887A1F0(v85, v86, type metadata accessor for ServerModelInferenceSession);
    v49 = *(v46 + 16);
    if (v49)
    {
      v84 = v47;
      v85 = v45;
      v94 = MEMORY[0x277D84F90];
      result = sub_2388B840C(0, v49, 0);
      if (!*(v46 + 16))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v50 = 0;
      v37 = v94;
      v87 = (v49 - 1);
      v51 = 32;
      while (1)
      {
        v52 = *(v46 + v51 + 48);
        v90 = *(v46 + v51 + 32);
        v91 = v52;
        v92 = *(v46 + v51 + 64);
        v93 = *(v46 + v51 + 80);
        v53 = *(v46 + v51 + 16);
        v88 = *(v46 + v51);
        v89 = v53;
        sub_23886E514(&v88, v17);
        v94 = v37;
        v55 = *(v37 + 16);
        v54 = *(v37 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_2388B840C((v54 > 1), v55 + 1, 1);
          v37 = v94;
        }

        *(v37 + 16) = v55 + 1;
        result = sub_23887A0A4(v17, v37 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v55, type metadata accessor for OpenAIClient.MessageContent);
        if (v87 == v50)
        {
          break;
        }

        ++v50;
        v51 += 88;
        if (v50 >= *(v46 + 16))
        {
          goto LABEL_54;
        }
      }

      v79 = v83;
      v48 = v86;
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
      v79 = v83;
    }

    result = sub_238879E0C(v48, type metadata accessor for ServerModelInferenceSession);
    v80 = 0;
    v58 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_51;
  }

  v69 = v82;
  sub_23887A0A4(v30, v82, type metadata accessor for Transcript.Prompt);
  v70 = *(v69 + 16);
  v71 = v87;
  sub_23887A1F0(v85, v87, type metadata accessor for ServerModelInferenceSession);
  v72 = *(v70 + 16);
  if (!v72)
  {
    sub_238879E0C(v69, type metadata accessor for Transcript.Prompt);
    v37 = MEMORY[0x277D84F90];
    v79 = v83;
LABEL_50:
    result = sub_238879E0C(v71, type metadata accessor for ServerModelInferenceSession);
    v58 = 0;
    v32 = 0;
    v33 = 0;
    v80 = 1;
    goto LABEL_51;
  }

  v94 = MEMORY[0x277D84F90];
  result = sub_2388B840C(0, v72, 0);
  if (*(v70 + 16))
  {
    v73 = 0;
    v74 = (v70 + 32);
    v37 = v94;
    v86 = (v72 - 1);
    while (1)
    {
      v75 = v74[3];
      v90 = v74[2];
      v91 = v75;
      v92 = v74[4];
      v93 = *(v74 + 10);
      v76 = v74[1];
      v88 = *v74;
      v89 = v76;
      sub_23886E514(&v88, v15);
      v94 = v37;
      v78 = *(v37 + 16);
      v77 = *(v37 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_2388B840C((v77 > 1), v78 + 1, 1);
        v37 = v94;
      }

      *(v37 + 16) = v78 + 1;
      result = sub_23887A0A4(v15, v37 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v78, type metadata accessor for OpenAIClient.MessageContent);
      if (v86 == v73)
      {
        break;
      }

      ++v73;
      v74 = (v74 + 88);
      if (v73 >= *(v70 + 16))
      {
        goto LABEL_55;
      }
    }

    sub_238879E0C(v82, type metadata accessor for Transcript.Prompt);
    v79 = v83;
    v71 = v87;
    goto LABEL_50;
  }

LABEL_55:
  __break(1u);
  return result;
}

void sub_23886E514(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OpenAIClient.MessageContent.ImageURL(0);
  v49 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v44 - v8;
  v9 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_2388D0F58();
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2388D1D78();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[2];
  v19 = a1[6] >> 62;
  if (!v19)
  {
    v24 = a1[3];
    v25 = *(type metadata accessor for OpenAIClient.MessageContent(0) + 24);
    v48 = *(v49 + 56);
    v49 += 56;
    (v48)(a2 + v25, 1, 1, v4);
    *a2 = 0;
    *(a2 + 8) = v18;
    *(a2 + 16) = v24;

    sub_238827E88(a2 + v25, &qword_27DF30760, &qword_2388D6A40);
    v23 = a2 + v25;
    goto LABEL_5;
  }

  if (v19 == 1)
  {
    v20 = a1[9];
    v21 = a1[10];
    v22 = *(type metadata accessor for OpenAIClient.MessageContent(0) + 24);
    v48 = *(v49 + 56);
    v49 += 56;
    (v48)(a2 + v22, 1, 1, v4);
    *a2 = 0;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21;

    sub_238827E88(a2 + v22, &qword_27DF30760, &qword_2388D6A40);
    v23 = a2 + v22;
LABEL_5:
    v26 = v48;

    v26(v23, 1, 1, v4);
    return;
  }

  v44 = v7;
  v45 = v4;
  v27 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  sub_2388D1D68();
  sub_2388D1D58();
  (*(v15 + 8))(v17, v14);
  v28 = sub_2388D2848();

  v29 = CGImageDestinationCreateWithData(v27, v28, 1uLL, 0);

  if (v29)
  {
    CGImageDestinationAddImage(v29, v18, 0);
    CGImageDestinationFinalize(v29);
    v30 = MEMORY[0x23EE65230](v27);
    v32 = v31;

    v33 = sub_2388D0FF8();
    v35 = v34;
    sub_238826D50(v30, v32);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_2388D2FA8();

    v50 = 0xD000000000000017;
    v51 = 0x80000002388DF220;
    MEMORY[0x23EE66C20](v33, v35);
    sub_2388D0F28();

    v36 = v48;
    if ((*(v48 + 48))(v11, 1, v12) != 1)
    {

      v37 = *(v36 + 32);
      v38 = v46;
      v37(v46, v11, v12);
      v39 = v47;
      v37(v47, v38, v12);
      v41 = v44;
      v40 = v45;
      *(v39 + *(v45 + 20)) = xmmword_2388D6670;
      sub_23887A0A4(v39, v41, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
      v42 = *(type metadata accessor for OpenAIClient.MessageContent(0) + 24);
      v43 = *(v49 + 56);
      v49 += 56;
      v43(a2 + v42, 1, 1, v40);
      *a2 = 1;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      sub_238827E88(a2 + v42, &qword_27DF30760, &qword_2388D6A40);
      sub_23887A0A4(v41, a2 + v42, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
      v43(a2 + v42, 0, 1, v40);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23886EAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[57] = a3;
  v4[58] = v3;
  v4[55] = a1;
  v4[56] = a2;
  v7 = sub_2388D17B8();
  v4[59] = v7;
  v4[60] = *(v7 - 8);
  v4[61] = swift_task_alloc();
  v8 = sub_2388D17D8();
  v4[62] = v8;
  v4[63] = *(v8 - 8);
  v4[64] = swift_task_alloc();
  v9 = sub_238810E44(&qword_27DF306A0, &unk_2388D6978);
  v10 = sub_238815180(&qword_27DF306A8, &qword_27DF306A0, &unk_2388D6978, MEMORY[0x277D858D0]);
  v11 = swift_task_alloc();
  v4[65] = v11;
  *v11 = v4;
  v11[1] = sub_23886ECBC;

  return MEMORY[0x282200310](v4 + 47, a2, a3, v4 + 52, v9, v10);
}

uint64_t sub_23886ECBC()
{
  v2 = *v1;

  if (v0)
  {
    if (*(v2 + 448))
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_23886F6CC;
  }

  else
  {
    if (*(v2 + 448))
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_23886EE44;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

unint64_t sub_23886EE44()
{
  if (!*(v0 + 384))
  {
LABEL_66:
    v71 = *(v0 + 440);
    *(v71 + 32) = 0;
    *v71 = 0u;
    *(v71 + 16) = 0u;
    goto LABEL_67;
  }

  v1 = *(v0 + 408);
  if (!*(v1 + 16))
  {
    goto LABEL_62;
  }

  v2 = *(v1 + 64);
  if (!v2)
  {
LABEL_60:
    if (*(v1 + 56))
    {
      v65 = *(v0 + 480);
      v64 = *(v0 + 488);
      v66 = *(v0 + 472);
      v67 = *(v0 + 440);

      sub_2388D1798();

      v68 = MEMORY[0x277D71D70];
      v67[3] = v66;
      v67[4] = v68;
      v69 = sub_238841100(v67);
      (*(v65 + 32))(v69, v64, v66);
LABEL_67:

      v72 = *(v0 + 8);

      return v72();
    }

LABEL_62:
    v70 = *(v0 + 440);

    *(v70 + 32) = 0;
    *v70 = 0u;
    *(v70 + 16) = 0u;
    goto LABEL_67;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {

LABEL_65:

    goto LABEL_66;
  }

  v91 = *(v0 + 464);
  v90 = *(sub_238810E44(&qword_27DF306B0, &qword_2388D6988) + 36);

  v4 = 0;
  v81 = v3 - 1;
  v82 = v2;
  v5 = 32;
  while (1)
  {
    v6 = *(v2 + v5 + 16);
    v7 = *(v2 + v5 + 32);
    v8 = *(v2 + v5 + 48);
    *(v0 + 80) = *(v2 + v5 + 64);
    *(v0 + 48) = v7;
    *(v0 + 64) = v8;
    *(v0 + 16) = *(v2 + v5);
    *(v0 + 32) = v6;
    v1 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v91 + v90);
    v83 = v10;
    v84 = v9;
    v92 = *(v0 + 16);
    if (*(v12 + 16))
    {
      v13 = sub_238820BC0(*(v0 + 16));
      if (v14)
      {
        v15 = (*(v12 + 56) + 48 * v13);
        v16 = v15[1];
        v80 = *v15;
        v17 = v15[3];
        v85 = v15[2];
        v19 = v15[4];
        v18 = v15[5];

        v88 = v16;
        v20 = v0 + 16;
        if (v9 == 1)
        {
          sub_238879D5C(v20, v0 + 232);
        }

        else
        {
          sub_238879D5C(v20, v0 + 304);
          sub_238879DC4(v1, v9, v11, v83);

          if (v9)
          {
LABEL_32:

            MEMORY[0x23EE66C20](v1, v9);

            v79 = v85;
            v87 = v17;
            if (v84 == 1 || (v39 = v11, (v40 = ) == 0))
            {

              v39 = 0;
              v40 = 0xE000000000000000;
            }

            MEMORY[0x23EE66C20](v39, v40);

            v1 = v19;
            v41 = v18;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = *(v91 + v90);
            result = sub_238820BC0(v92);
            v44 = v29[2];
            v45 = (v43 & 1) == 0;
            v34 = __OFADD__(v44, v45);
            v46 = v44 + v45;
            if (v34)
            {
              goto LABEL_80;
            }

            v47 = v43;
            if (v29[3] >= v46)
            {
              if (!isUniquelyReferenced_nonNull_native)
              {
                v54 = result;
                sub_23882143C();
                result = v54;
                if (v47)
                {
LABEL_41:
                  v49 = (v29[7] + 48 * result);
                  *v49 = v80;
                  v49[1] = v88;
                  v49[2] = v79;
                  v49[3] = v87;
                  v49[4] = v19;
                  v49[5] = v41;

                  goto LABEL_49;
                }

                goto LABEL_47;
              }
            }

            else
            {
              sub_23882297C(v46, isUniquelyReferenced_nonNull_native);
              result = sub_238820BC0(v92);
              if ((v47 & 1) != (v48 & 1))
              {
LABEL_70:

                return sub_2388D3438();
              }
            }

            if (v47)
            {
              goto LABEL_41;
            }

LABEL_47:
            v29[(result >> 6) + 8] |= 1 << result;
            *(v29[6] + 8 * result) = v92;
            v55 = (v29[7] + 48 * result);
            *v55 = v80;
            v55[1] = v88;
            v55[2] = v79;
            v55[3] = v87;
            v55[4] = v19;
            v55[5] = v41;
            v56 = v29[2];
            v34 = __OFADD__(v56, 1);
            v53 = v56 + 1;
            if (v34)
            {
              goto LABEL_81;
            }

            goto LABEL_48;
          }
        }

        v1 = 0;
        v9 = 0xE000000000000000;
        goto LABEL_32;
      }
    }

    v21 = *(v0 + 32);
    if (v21)
    {
      v22 = *(v0 + 24);
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = *(v0 + 32);
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v86 = v22;
    v89 = v23;
    v24 = v0 + 16;
    if (v9 == 1)
    {
      sub_238879D5C(v24, v0 + 88);

      v1 = 0;
      v25 = 0xE000000000000000;
LABEL_22:

      v26 = 0;
      v27 = 0xE000000000000000;
      goto LABEL_23;
    }

    sub_238879D5C(v24, v0 + 160);

    sub_238879DC4(v1, v9, v11, v10);

    if (v9)
    {
      v25 = v9;
    }

    else
    {
      v1 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = v11;
    v27 = v10;
    if (!v10)
    {
      goto LABEL_22;
    }

LABEL_23:
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v91 + v90);
    result = sub_238820BC0(v92);
    v32 = v29[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      break;
    }

    v36 = v31;
    if (v29[3] >= v35)
    {
      if ((v28 & 1) == 0)
      {
        v50 = result;
        sub_23882143C();
        result = v50;
        if (v36)
        {
LABEL_29:
          v38 = (v29[7] + 48 * result);
          *v38 = v86;
          v38[1] = v89;
          v38[2] = v1;
          v38[3] = v25;
          v38[4] = v26;
          v38[5] = v27;

          goto LABEL_49;
        }

        goto LABEL_43;
      }
    }

    else
    {
      sub_23882297C(v35, v28);
      result = sub_238820BC0(v92);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_70;
      }
    }

    if (v36)
    {
      goto LABEL_29;
    }

LABEL_43:
    v29[(result >> 6) + 8] |= 1 << result;
    *(v29[6] + 8 * result) = v92;
    v51 = (v29[7] + 48 * result);
    *v51 = v86;
    v51[1] = v89;
    v51[2] = v1;
    v51[3] = v25;
    v51[4] = v26;
    v51[5] = v27;
    v52 = v29[2];
    v34 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v34)
    {
      goto LABEL_79;
    }

LABEL_48:
    v29[2] = v53;
LABEL_49:
    *(v91 + v90) = v29;
    if (v29[2])
    {
      v57 = sub_238820BC0(v92);
      if (v58)
      {
        v59 = (v29[7] + 48 * v57);
        v60 = v59[1];
        v61 = HIBYTE(v60) & 0xF;
        if ((v60 & 0x2000000000000000) == 0)
        {
          v61 = *v59 & 0xFFFFFFFFFFFFLL;
        }

        if (v61)
        {
          v1 = v59[2];
          v62 = v59[3];
          v63 = HIBYTE(v62) & 0xF;
          if ((v62 & 0x2000000000000000) == 0)
          {
            v63 = v1 & 0xFFFFFFFFFFFFLL;
          }

          if (v63)
          {

            *(v0 + 432) = v92;

            sub_2388D32F8();

            if (v84 == 1)
            {
              sub_238879D94(v0 + 16);
              goto LABEL_76;
            }

            sub_238879D94(v0 + 16);

            if (!v83)
            {
LABEL_76:
            }

            v74 = *(v0 + 504);
            v73 = *(v0 + 512);
            v75 = *(v0 + 496);
            v76 = *(v0 + 440);
            sub_2388D17C8();

            v77 = MEMORY[0x277D71D78];
            v76[3] = v75;
            v76[4] = v77;
            v78 = sub_238841100(v76);
            (*(v74 + 32))(v78, v73, v75);
            goto LABEL_67;
          }
        }
      }
    }

    sub_238879D94(v0 + 16);
    if (v81 == v4)
    {

      goto LABEL_65;
    }

    ++v4;
    v2 = v82;
    v5 += 72;
    if (v4 >= *(v82 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_23886F6CC()
{
  v1 = v0[52];
  v0[53] = v1;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  if (sub_2388D3358())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_23886F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[56] = a4;
  v5[57] = v4;
  v5[54] = a2;
  v5[55] = a3;
  v5[53] = a1;
  v8 = sub_2388D17B8();
  v5[58] = v8;
  v5[59] = *(v8 - 8);
  v5[60] = swift_task_alloc();
  v9 = sub_2388D17D8();
  v5[61] = v9;
  v5[62] = *(v9 - 8);
  v5[63] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[64] = AssociatedTypeWitness;
  v5[65] = *(AssociatedTypeWitness - 8);
  v5[66] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[67] = v11;
  v12 = swift_getAssociatedTypeWitness();
  v5[68] = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[69] = AssociatedConformanceWitness;
  v14 = swift_task_alloc();
  v5[70] = v14;
  *v14 = v5;
  v14[1] = sub_23886FA14;

  return MEMORY[0x282200310](v5 + 47, a2, a3, v11, v12, AssociatedConformanceWitness);
}

uint64_t sub_23886FA14()
{
  v2 = *(*v1 + 432);

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_238870408;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_23886FBA0;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

unint64_t sub_23886FBA0()
{
  if (!*(v0 + 384))
  {
LABEL_67:
    v72 = *(v0 + 424);
    *(v72 + 32) = 0;
    *v72 = 0u;
    *(v72 + 16) = 0u;
    goto LABEL_68;
  }

  v1 = *(v0 + 408);
  if (!*(v1 + 16))
  {
    goto LABEL_63;
  }

  v2 = *(v1 + 64);
  if (!v2)
  {
LABEL_61:
    if (*(v1 + 56))
    {
      v66 = *(v0 + 472);
      v65 = *(v0 + 480);
      v67 = *(v0 + 464);
      v68 = *(v0 + 424);

      sub_2388D1798();

      v69 = MEMORY[0x277D71D70];
      v68[3] = v67;
      v68[4] = v69;
      v70 = sub_238841100(v68);
      (*(v66 + 32))(v70, v65, v67);
LABEL_68:

      v73 = *(v0 + 8);

      return v73();
    }

LABEL_63:
    v71 = *(v0 + 424);

    *(v71 + 32) = 0;
    *v71 = 0u;
    *(v71 + 16) = 0u;
    goto LABEL_68;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {

LABEL_66:

    goto LABEL_67;
  }

  v91 = *(*(v0 + 448) + 36);
  v92 = *(v0 + 456);

  v4 = 0;
  v82 = v3 - 1;
  v83 = v2;
  v5 = 32;
  while (1)
  {
    v6 = *(v2 + v5 + 16);
    v7 = *(v2 + v5 + 32);
    v8 = *(v2 + v5 + 48);
    *(v0 + 80) = *(v2 + v5 + 64);
    *(v0 + 48) = v7;
    *(v0 + 64) = v8;
    *(v0 + 16) = *(v2 + v5);
    *(v0 + 32) = v6;
    v1 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v92 + v91);
    v84 = v11;
    v85 = v10;
    v90 = v9;
    v93 = *(v0 + 16);
    if (*(v12 + 16))
    {
      v13 = sub_238820BC0(*(v0 + 16));
      if (v14)
      {
        v15 = (*(v12 + 56) + 48 * v13);
        v16 = v15[2];
        v17 = v15[3];
        v18 = v15[5];
        v86 = *v15;
        v88 = v15[4];
        v19 = v15[1];
        swift_bridgeObjectRetain_n();

        v20 = v0 + 16;
        if (v9 == 1)
        {
          sub_238879D5C(v20, v0 + 232);
        }

        else
        {
          sub_238879D5C(v20, v0 + 304);
          sub_238879DC4(v1, v9, v11, v85);

          if (v9)
          {
            v38 = v9;
LABEL_33:

            MEMORY[0x23EE66C20](v1, v38);

            v80 = v16;
            v81 = v17;
            v39 = v19;
            if (v90 == 1 || (v40 = v84, (v41 = ) == 0))
            {

              v40 = 0;
              v41 = 0xE000000000000000;
            }

            MEMORY[0x23EE66C20](v40, v41);

            v1 = v88;
            v42 = v18;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v28 = *(v92 + v91);
            result = sub_238820BC0(v93);
            v45 = v28[2];
            v46 = (v44 & 1) == 0;
            v33 = __OFADD__(v45, v46);
            v47 = v45 + v46;
            if (v33)
            {
              goto LABEL_81;
            }

            v48 = v44;
            if (v28[3] >= v47)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v55 = result;
                sub_23882143C();
                result = v55;
                if (v48)
                {
LABEL_42:
                  v50 = (v28[7] + 48 * result);
                  *v50 = v86;
                  v50[1] = v39;
                  v50[2] = v80;
                  v50[3] = v81;
                  v50[4] = v88;
                  v50[5] = v42;

                  goto LABEL_50;
                }

                goto LABEL_48;
              }
            }

            else
            {
              sub_23882297C(v47, isUniquelyReferenced_nonNull_native);
              result = sub_238820BC0(v93);
              if ((v48 & 1) != (v49 & 1))
              {
LABEL_71:

                return sub_2388D3438();
              }
            }

            if (v48)
            {
              goto LABEL_42;
            }

LABEL_48:
            v28[(result >> 6) + 8] |= 1 << result;
            *(v28[6] + 8 * result) = v93;
            v56 = (v28[7] + 48 * result);
            *v56 = v86;
            v56[1] = v39;
            v56[2] = v80;
            v56[3] = v81;
            v56[4] = v88;
            v56[5] = v42;
            v57 = v28[2];
            v33 = __OFADD__(v57, 1);
            v54 = v57 + 1;
            if (v33)
            {
              goto LABEL_82;
            }

            goto LABEL_49;
          }
        }

        v1 = 0;
        v38 = 0xE000000000000000;
        goto LABEL_33;
      }
    }

    v21 = *(v0 + 32);
    if (v21)
    {
      v22 = *(v0 + 24);
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = *(v0 + 32);
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v87 = v22;
    v89 = v23;
    v24 = v0 + 16;
    if (v9 == 1)
    {
      sub_238879D5C(v24, v0 + 88);

      v1 = 0;
      v25 = 0xE000000000000000;
LABEL_22:

      v11 = 0;
      v26 = 0xE000000000000000;
      goto LABEL_23;
    }

    sub_238879D5C(v24, v0 + 160);
    sub_238879DC4(v1, v9, v11, v10);

    if (v9)
    {
      v25 = v9;
    }

    else
    {
      v1 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = v10;
    if (!v10)
    {
      goto LABEL_22;
    }

LABEL_23:
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v92 + v91);
    result = sub_238820BC0(v93);
    v31 = v28[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      break;
    }

    v35 = v30;
    if (v28[3] >= v34)
    {
      if ((v27 & 1) == 0)
      {
        v51 = result;
        sub_23882143C();
        result = v51;
        if (v35)
        {
LABEL_29:
          v37 = (v28[7] + 48 * result);
          *v37 = v87;
          v37[1] = v89;
          v37[2] = v1;
          v37[3] = v25;
          v37[4] = v11;
          v37[5] = v26;

          goto LABEL_50;
        }

        goto LABEL_44;
      }
    }

    else
    {
      sub_23882297C(v34, v27);
      result = sub_238820BC0(v93);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_71;
      }
    }

    if (v35)
    {
      goto LABEL_29;
    }

LABEL_44:
    v28[(result >> 6) + 8] |= 1 << result;
    *(v28[6] + 8 * result) = v93;
    v52 = (v28[7] + 48 * result);
    *v52 = v87;
    v52[1] = v89;
    v52[2] = v1;
    v52[3] = v25;
    v52[4] = v11;
    v52[5] = v26;
    v53 = v28[2];
    v33 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v33)
    {
      goto LABEL_80;
    }

LABEL_49:
    v28[2] = v54;
LABEL_50:
    *(v92 + v91) = v28;
    if (v28[2])
    {
      v58 = sub_238820BC0(v93);
      if (v59)
      {
        v60 = (v28[7] + 48 * v58);
        v61 = v60[1];
        v62 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v62 = *v60 & 0xFFFFFFFFFFFFLL;
        }

        if (v62)
        {
          v1 = v60[2];
          v63 = v60[3];
          v64 = HIBYTE(v63) & 0xF;
          if ((v63 & 0x2000000000000000) == 0)
          {
            v64 = v1 & 0xFFFFFFFFFFFFLL;
          }

          if (v64)
          {

            *(v0 + 416) = v93;

            sub_2388D32F8();

            if (v90 == 1)
            {
              sub_238879D94(v0 + 16);
              goto LABEL_77;
            }

            sub_238879D94(v0 + 16);

            if (!v85)
            {
LABEL_77:
            }

            v75 = *(v0 + 496);
            v74 = *(v0 + 504);
            v76 = *(v0 + 488);
            v77 = *(v0 + 424);
            sub_2388D17C8();

            v78 = MEMORY[0x277D71D78];
            v77[3] = v76;
            v77[4] = v78;
            v79 = sub_238841100(v77);
            (*(v75 + 32))(v79, v74, v76);
            goto LABEL_68;
          }
        }
      }
    }

    sub_238879D94(v0 + 16);
    if (v82 == v4)
    {

      goto LABEL_66;
    }

    ++v4;
    v2 = v83;
    v5 += 72;
    if (v4 >= *(v83 + 16))
    {
      __break(1u);
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_238870408()
{
  v1 = *(v0[65] + 32);
  v1(v0[66], v0[67], v0[64]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_2388D3358();
  v3 = v0[66];
  if (v2)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
  }

  else
  {
    v4 = v0[64];
    swift_allocError();
    v1(v5, v3, v4);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_238870568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238833668;

  return sub_23886EAEC(a1, 0, 0);
}

uint64_t sub_238870608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_2388706C0;

  return sub_23886EAEC(a1, a2, a3);
}

uint64_t sub_2388706C0()
{
  v2 = *v1;
  v2[6] = v0;

  if (!v0)
  {
    v6 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  if (v2[2])
  {
    swift_getObjectType();
    v3 = sub_2388D2B38();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](sub_238870830, v3, v5);
}

uint64_t sub_238870854@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_238810E44(&qword_27DF306B8, &unk_2388D6990);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v9 - v5, v1, v4);
  sub_238815180(&qword_27DF306C0, &qword_27DF306B8, &unk_2388D6990, MEMORY[0x277D858E0]);
  sub_2388D2C58();
  v7 = sub_238878C04(MEMORY[0x277D84F90]);
  sub_238879E0C(v2, type metadata accessor for ServerModelInferenceSession.ResponseStream);
  result = sub_238810E44(&qword_27DF306B0, &qword_2388D6988);
  *(a1 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_2388709B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_238860E4C;

  return sub_23886F7AC(a1, a2, a3, a5);
}

uint64_t sub_238870A78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23883EF20;

  return sub_238878EAC();
}

uint64_t sub_238870B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2388414A0;

  return sub_23886BF80(a1, a2, a3, a4, v13, v14, a7);
}

uint64_t sub_238870C84()
{
  v1[32] = v0;
  v2 = sub_238810E44(&qword_27DF306F0, &unk_2388D69E0);
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  sub_2388D2BC8();
  v1[36] = sub_2388D2BB8();
  v4 = sub_2388D2B38();
  v1[37] = v4;
  v1[38] = v3;

  return MEMORY[0x2822009F8](sub_238870D84, v4, v3);
}

uint64_t sub_238870D84()
{
  v1 = v0[32];
  v2 = [objc_allocWithZone(FMAjaxAuthenticator) init];
  v0[39] = v2;
  v12 = *(v1 + 40);
  v13 = v2;
  v11 = sub_2388D2848();
  v0[40] = v11;
  v3 = *(v1 + 16);
  if (v3)
  {
    v3 = sub_2388D2AC8();
  }

  v10 = v3;
  v0[41] = v3;
  if (*(v0[32] + 32))
  {
    v4 = sub_2388D2848();
  }

  else
  {
    v4 = 0;
  }

  v0[42] = v4;
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_238870FB0;
  swift_continuation_init();
  v0[29] = v7;
  v8 = sub_238841100(v0 + 26);
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  sub_2388D2B48();
  (*(v6 + 32))(v8, v5, v7);
  v0[22] = MEMORY[0x277D85DD0];
  v0[23] = 1107296256;
  v0[24] = sub_23887143C;
  v0[25] = &unk_284B3DD58;
  [v13 authenticate:v12 clientID:v11 scopes:v10 resource:v4 withCompletionHandler:v0 + 22];
  (*(v6 + 8))(v8, v7);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238870FB0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);
  if (v2)
  {
    v5 = sub_238871270;
  }

  else
  {
    v5 = sub_2388710E0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2388710E0()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];

  v5 = v0[30];
  v6 = v0[31];

  sub_238810E44(&qword_27DF306D8, &qword_2388D69C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2388D6660;
  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  MEMORY[0x23EE66C20](v5, v6);

  *(inited + 48) = 0x20726572616542;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0x7A69726F68747541;
  *(inited + 72) = 0xEA00000000007265;
  *(inited + 80) = 1667524975;
  *(inited + 88) = 0xE400000000000000;
  v8 = sub_238879050(inited);
  swift_setDeallocating();
  sub_238810E44(&qword_27DF306E0, &qword_2388D69C8);
  swift_arrayDestroy();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_238871270()
{
  v1 = v0[42];
  v3 = v0[40];
  v2 = v0[41];

  swift_willThrow();

  if (qword_27DF2F9E8 != -1)
  {
    swift_once();
  }

  v4 = v0[43];
  v5 = sub_2388D2408();
  sub_2388413AC(v5, qword_27DF3F8F8);
  v6 = v4;
  v7 = sub_2388D23E8();
  v8 = sub_2388D2E08();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[43];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_23880E000, v7, v8, "Failed to authenticate with Apple Connect: %@", v10, 0xCu);
    sub_238827E88(v11, &qword_27DF2FF90, &qword_2388D58A0);
    MEMORY[0x23EE68030](v11, -1, -1);
    MEMORY[0x23EE68030](v10, -1, -1);
  }

  v14 = v0[39];

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

void sub_23887143C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_238815878((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_238810E44(&qword_27DF306F0, &unk_2388D69E0);
    sub_2388D2B58();
  }

  else
  {
    sub_2388D2858();
    sub_238810E44(&qword_27DF306F0, &unk_2388D69E0);
    sub_2388D2B68();
  }
}

uint64_t sub_2388714E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v3 = sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = type metadata accessor for OpenAIClient.ChatCompletionRequest(0);
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OpenAIClient(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  v17 = sub_2388D2BE8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_23887A1F0(v24, v13, type metadata accessor for OpenAIClient);
  sub_23887A1F0(v25, v9, type metadata accessor for OpenAIClient.ChatCompletionRequest);
  (*(v4 + 16))(v6, v26, v3);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + *(v23 + 80) + v18) & ~*(v23 + 80);
  v20 = (v8 + *(v4 + 80) + v19) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_23887A0A4(v13, v21 + v18, type metadata accessor for OpenAIClient);
  sub_23887A0A4(v9, v21 + v19, type metadata accessor for OpenAIClient.ChatCompletionRequest);
  (*(v4 + 32))(v21 + v20, v6, v3);
  sub_2388867B0(0, 0, v16, &unk_2388D6A08, v21);
}

uint64_t sub_238871860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[49] = a4;
  v6[50] = a6;
  v8 = sub_238810E44(&qword_27DF30700, &qword_2388D6A10);
  v6[51] = v8;
  v6[52] = *(v8 - 8);
  v6[53] = swift_task_alloc();
  v9 = sub_238810E44(&qword_27DF30708, &qword_2388D6A18);
  v6[54] = v9;
  v6[55] = *(v9 - 8);
  v6[56] = swift_task_alloc();
  v10 = sub_238810E44(&qword_27DF30710, &qword_2388D6A20);
  v6[57] = v10;
  v6[58] = *(v10 - 8);
  v6[59] = swift_task_alloc();
  v11 = sub_2388D2DC8();
  v6[60] = v11;
  v6[61] = *(v11 - 8);
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v12 = sub_2388D0D28();
  v6[64] = v12;
  v6[65] = *(v12 - 8);
  v13 = swift_task_alloc();
  v6[66] = v13;
  v14 = swift_task_alloc();
  v6[67] = v14;
  *v14 = v6;
  v14[1] = sub_238871B0C;

  return sub_238872EFC(v13, a5);
}

uint64_t sub_238871B0C()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_238872D38;
  }

  else
  {
    v2 = sub_238871C20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238871C20()
{
  type metadata accessor for OpenAIClient(0);
  v1 = swift_task_alloc();
  v0[69] = v1;
  *v1 = v0;
  v1[1] = sub_238871CD4;
  v2 = v0[66];
  v3 = v0[63];

  return MEMORY[0x28211ED10](v3, v2, 0);
}

uint64_t sub_238871CD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = v1;

  if (v1)
  {
    v4 = sub_238872E0C;
  }

  else
  {
    v4 = sub_238871DEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238871DEC()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  *(v0 + 576) = v1;
  if ([v1 statusCode] == 200)
  {
    v3 = *(v0 + 440);
    v2 = *(v0 + 448);
    v4 = *(v0 + 432);
    sub_238879C44(&qword_27DF30718, MEMORY[0x277CC9CF8], MEMORY[0x277CC9D00]);
    sub_2388D2C48();
    sub_2388D0EA8();
    (*(v3 + 8))(v2, v4);
    v5 = sub_238815180(&qword_27DF30738, &qword_27DF30710, &qword_2388D6A20, MEMORY[0x277CC8C78]);
    v6 = swift_task_alloc();
    *(v0 + 584) = v6;
    *v6 = v0;
    v6[1] = sub_23887212C;
    v7 = *(v0 + 456);

    return MEMORY[0x282200308](v0 + 344, v7, v5);
  }

  else
  {
    (*(*(v0 + 488) + 16))(*(v0 + 496), *(v0 + 504), *(v0 + 480));
    sub_238879C44(&qword_27DF30718, MEMORY[0x277CC9CF8], MEMORY[0x277CC9D00]);
    sub_2388D2C58();
    *(v0 + 616) = xmmword_2388D44B0;
    v8 = *(v0 + 312);
    if (v8 != *(v0 + 320))
    {
      v9 = 0;
      v10 = 0xC000000000000000;
      do
      {
        v11 = *v8;
        *(v0 + 312) = v8 + 1;
        sub_238810E44(&qword_27DF30720, &qword_2388D6A30);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_2388D3F70;
        *(v12 + 32) = v11;
        *(v0 + 328) = v9;
        *(v0 + 336) = v10;
        sub_238827F50(v9, v10);
        sub_238878A94(v12);

        sub_238826D50(v9, v10);
        v9 = *(v0 + 328);
        v10 = *(v0 + 336);
        *(v0 + 624) = v10;
        *(v0 + 616) = v9;
        v8 = *(v0 + 312);
      }

      while (v8 != *(v0 + 320));
    }

    v13 = swift_task_alloc();
    *(v0 + 632) = v13;
    *v13 = v0;
    v13[1] = sub_238872774;

    return MEMORY[0x28211C470]();
  }
}

uint64_t sub_23887212C()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_238872598;
  }

  else
  {
    v2 = sub_238872240;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238872240()
{
  v1 = v0[44];
  v0[75] = v0[43];
  v0[76] = v1;
  return MEMORY[0x2822009F8](sub_238872268, 0, 0);
}

uint64_t sub_238872268()
{
  if (!*(v0 + 608))
  {
    v9 = *(v0 + 560);
    v10 = *(v0 + 528);
    v11 = *(v0 + 520);
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v14 = *(v0 + 480);
    v15 = *(v0 + 488);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    *(v0 + 384) = 0;
    sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
    sub_2388D2CD8();

    (*(v15 + 8))(v13, v14);
    (*(v11 + 8))(v10, v12);
    goto LABEL_5;
  }

  v1 = *(v0 + 592);
  sub_2388733D8(*(v0 + 600), *(v0 + 608), v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 520);
    v3 = *(v0 + 504);
    v26 = *(v0 + 512);
    v27 = *(v0 + 528);
    v5 = *(v0 + 480);
    v4 = *(v0 + 488);
    v6 = *(v0 + 464);
    v7 = *(v0 + 472);
    v8 = *(v0 + 456);

    (*(v6 + 8))(v7, v8);
    (*(v4 + 8))(v3, v5);
    (*(v2 + 8))(v27, v26);
    *(v0 + 360) = v1;
    sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
    sub_2388D2CD8();
LABEL_5:

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 232);
  if (v18)
  {
    v20 = *(v0 + 416);
    v19 = *(v0 + 424);
    v21 = *(v0 + 408);
    v22 = *(v0 + 224);
    *(v0 + 280) = *(v0 + 240);
    *(v0 + 296) = *(v0 + 256);
    *(v0 + 264) = v22;
    *(v0 + 272) = v18;
    sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
    sub_2388D2CC8();
    (*(v20 + 8))(v19, v21);
  }

  v23 = sub_238815180(&qword_27DF30738, &qword_27DF30710, &qword_2388D6A20, MEMORY[0x277CC8C78]);
  v24 = swift_task_alloc();
  *(v0 + 584) = v24;
  *v24 = v0;
  v24[1] = sub_23887212C;
  v25 = *(v0 + 456);

  return MEMORY[0x282200308](v0 + 344, v25, v23);
}

uint64_t sub_238872598()
{
  *(v0 + 376) = *(v0 + 592);
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_238872628, 0, 0);
}

uint64_t sub_238872628()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  v8 = *(v0 + 464);
  v7 = *(v0 + 472);
  v9 = *(v0 + 456);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  *(v0 + 360) = *(v0 + 592);
  sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  sub_2388D2CD8();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_238872774(__int16 a1)
{
  v4 = *v2;
  *(*v2 + 640) = v1;

  if (v1)
  {
    v5 = *(v4 + 624);
    v6 = *(v4 + 616);
    swift_unknownObjectRelease();
    sub_238826D50(v6, v5);
    v7 = sub_238872C1C;
  }

  else
  {
    *(v4 + 82) = a1;
    v7 = sub_2388728B4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2388728B4()
{
  v1 = *(v0 + 82);
  if ((v1 & 0x100) != 0)
  {
    v7 = *(v0 + 640);
    v8 = *(v0 + 576);
    swift_unknownObjectRelease();
    v9 = [v8 statusCode];
    sub_2388D0D58();
    swift_allocObject();
    v10 = sub_2388D0D48();
    sub_23887A6F0(v10, v11, v12);
    sub_2388D0D38();
    v13 = *(v0 + 624);
    v14 = *(v0 + 616);
    if (v7)
    {

      *(v0 + 16) = v9;
      *(v0 + 24) = v14;
      v18 = 1;
      *(v0 + 32) = v13;
    }

    else
    {
      sub_238826D50(*(v0 + 616), *(v0 + 624));

      v20 = *(v0 + 176);
      *(v0 + 16) = *(v0 + 160);
      *(v0 + 32) = v20;
      v21 = *(v0 + 208);
      *(v0 + 48) = *(v0 + 192);
      *(v0 + 64) = v21;
      v18 = 2;
    }

    v22 = *(v0 + 560);
    v23 = *(v0 + 528);
    v24 = *(v0 + 520);
    v26 = *(v0 + 504);
    v25 = *(v0 + 512);
    v27 = *(v0 + 480);
    v28 = *(v0 + 488);
    *(v0 + 80) = v18;
    sub_23887A744(v15, v16, v17);
    v29 = swift_allocError();
    *v30 = *(v0 + 16);
    v32 = *(v0 + 48);
    v31 = *(v0 + 64);
    v33 = *(v0 + 32);
    *(v30 + 64) = *(v0 + 80);
    *(v30 + 32) = v32;
    *(v30 + 48) = v31;
    *(v30 + 16) = v33;
    *(v0 + 368) = v29;
    sub_23887A798(v0 + 16, v0 + 88);
    sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
    sub_2388D2CD8();

    sub_23887A7D0(v0 + 16);
    (*(v28 + 8))(v26, v27);
    (*(v24 + 8))(v23, v25);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v2 = v1;
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    while (1)
    {
      sub_238810E44(&qword_27DF30720, &qword_2388D6A30);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_2388D3F70;
      *(v5 + 32) = v2;
      *(v0 + 328) = v4;
      *(v0 + 336) = v3;
      sub_238827F50(v4, v3);
      sub_238878A94(v5);

      sub_238826D50(v4, v3);
      v4 = *(v0 + 328);
      v3 = *(v0 + 336);
      *(v0 + 624) = v3;
      *(v0 + 616) = v4;
      v6 = *(v0 + 312);
      if (v6 == *(v0 + 320))
      {
        break;
      }

      v2 = *v6;
      *(v0 + 312) = v6 + 1;
    }

    v19 = swift_task_alloc();
    *(v0 + 632) = v19;
    *v19 = v0;
    v19[1] = sub_238872774;

    return MEMORY[0x28211C470]();
  }
}

uint64_t sub_238872C1C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  *(v0 + 360) = *(v0 + 640);
  sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  sub_2388D2CD8();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_238872D38()
{
  v0[45] = v0[68];
  sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  sub_2388D2CD8();

  v1 = v0[1];

  return v1();
}

uint64_t sub_238872E0C()
{
  (*(v0[65] + 8))(v0[66], v0[64]);
  v0[45] = v0[71];
  sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  sub_2388D2CD8();

  v1 = v0[1];

  return v1();
}

uint64_t sub_238872EFC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2388D0F58();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238872FCC, 0, 0);
}

uint64_t sub_238872FCC(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[8];
  v7 = sub_2388D0EF8();
  v1[2] = v7;
  v1[3] = v8;
  v1[4] = 12662;
  v1[5] = 0xE200000000000000;
  sub_238856678(v7, v8, v9);
  sub_2388D2ED8();

  sub_2388D0F18();

  (*(v5 + 16))(v2, v3, v4);
  sub_2388D0CF8();
  sub_2388D0CE8();
  sub_2388D0D18();
  sub_2388D0D18();
  v10 = type metadata accessor for OpenAIClient(0);
  v11 = *(v6 + *(v10 + 20));
  v14 = *(v11 + 64);
  v13 = v11 + 64;
  v12 = v14;
  v15 = -1;
  v16 = -1 << *(*(v6 + *(v10 + 20)) + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & v12;
  v18 = (63 - v16) >> 6;

  v20 = 0;
  if (v17)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return result;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v13 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      do
      {
LABEL_9:
        v17 &= v17 - 1;

        sub_2388D0D18();
      }

      while (v17);
      continue;
    }
  }

  sub_2388D0DC8();
  swift_allocObject();
  sub_2388D0DB8();
  type metadata accessor for OpenAIClient.ChatCompletionRequest(0);
  sub_238879C44(&qword_27DF30758, type metadata accessor for OpenAIClient.ChatCompletionRequest, &unk_2388D71F0);
  sub_2388D0DA8();
  v22 = v1[12];
  v23 = v1[9];
  v24 = v1[10];
  sub_2388D0D08();

  (*(v24 + 8))(v22, v23);

  v25 = v1[1];

  return v25();
}

uint64_t sub_2388733D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = sub_2388D2898();
  v53 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2388D0DE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v55 = a2;
  v12 = sub_2388D0DD8();
  sub_238856678(v12, v13, v14);
  v15 = sub_2388D2EC8();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v11, v8);
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19 || (sub_2388D29F8() & 1) != 0 || (sub_2388D29F8() & 1) == 0)
  {
    goto LABEL_9;
  }

  v51 = v3;
  v20 = sub_238878B54(6uLL, v15, v17);
  v49 = v22;
  v50 = v21;
  v24 = v23;

  v25 = MEMORY[0x23EE66B70](v20, v50, v49, v24);
  v27 = v26;

  v50 = v25;
  v54 = v25;
  v55 = v27;
  sub_2388D0DD8();
  v28 = sub_2388D2EC8();
  v30 = v29;
  v18(v11, v8);
  if (v28 == 0x5D454E4F445BLL && v30 == 0xE600000000000000)
  {

    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0uLL;
LABEL_10:
    *a3 = v32;
    *(a3 + 8) = v33;
    *(a3 + 16) = v34;
    *(a3 + 24) = v35;
    return result;
  }

  v36 = sub_2388D3368();

  v37 = v51;
  if (v36)
  {
LABEL_9:

    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0uLL;
    goto LABEL_10;
  }

  v38 = v52;
  sub_2388D2888();
  v39 = sub_2388D2868();
  v41 = v40;

  v42 = (*(v53 + 8))(v38, v58);
  if (v41 >> 60 == 15)
  {
    sub_23887A744(v42, v43, v44);
    swift_allocError();
    *v45 = 0u;
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
    *(v45 + 48) = 0u;
    *(v45 + 64) = 3;
    return swift_willThrow();
  }

  sub_2388D0D58();
  swift_allocObject();
  v46 = sub_2388D0D48();
  sub_23887A800(v46, v47, v48);
  sub_2388D0D38();

  result = sub_238827FA4(v39, v41);
  if (!v37)
  {
    v32 = v54;
    v33 = v55;
    v34 = v56;
    v35 = v57;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_238873810(uint64_t a1, unsigned __int8 a2)
{
  sub_2388D2938();
}

uint64_t sub_23887395C(uint64_t a1, unsigned __int8 a2)
{
  sub_2388D2938();
}

uint64_t sub_238873A98(uint64_t a1, unsigned __int8 a2)
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238873BE0(uint64_t a1, unsigned __int8 a2)
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238873D40(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF309C0, &qword_2388D72C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_23887E034(v9, v10, v11);
  sub_2388D3568();
  LOBYTE(v14) = 0;
  sub_2388D3298();
  if (!v2)
  {
    v14 = *(v3 + 16);
    HIBYTE(v13) = 1;
    sub_238810E44(&qword_27DF309D0, &qword_2388D72C8);
    sub_23887E088();
    sub_2388D32C8();
    LOBYTE(v14) = 2;
    sub_2388D3258();
    LOBYTE(v14) = 3;
    sub_2388D3258();
    LOBYTE(v14) = 4;
    sub_2388D3268();
    v14 = *(v3 + 72);
    HIBYTE(v13) = 5;
    sub_238810E44(&qword_27DF307E0, &qword_2388D6C98);
    sub_23887E160();
    sub_2388D3278();
    type metadata accessor for OpenAIClient.ChatCompletionRequest(0);
    LOBYTE(v14) = 6;
    type metadata accessor for OpenAIClient.ResponseFormat(0);
    sub_238879C44(&qword_27DF309F8, type metadata accessor for OpenAIClient.ResponseFormat, &unk_2388D6F00);
    sub_2388D3278();
    LOBYTE(v14) = 7;
    sub_2388D32A8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_238874054@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23887C3F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_238874084(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C65646F6DLL;
  v5 = 0xEF74616D726F665FLL;
  v6 = 0x65736E6F70736572;
  if (v2 != 6)
  {
    v6 = 0x6D6165727473;
    v5 = 0xE600000000000000;
  }

  v7 = 0x80000002388DDE70;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x736C6F6F74;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000657275;
  v10 = 0x74617265706D6574;
  if (v2 != 2)
  {
    v10 = 0x705F706F74;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x736567617373656DLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_238874188()
{
  v1 = *v0;
  v2 = 0x6C65646F6DLL;
  v3 = 0x65736E6F70736572;
  if (v1 != 6)
  {
    v3 = 0x6D6165727473;
  }

  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x736C6F6F74;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74617265706D6574;
  if (v1 != 2)
  {
    v5 = 0x705F706F74;
  }

  if (*v0)
  {
    v2 = 0x736567617373656DLL;
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

unint64_t sub_238874288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23887C3F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2388742BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E034(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2388742F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E034(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238874358()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238874420(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_2388744D4()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

unint64_t sub_238874598@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23887C43C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2388745C8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701605234;
  v4 = 0xEA0000000000736CLL;
  if (*v1 != 2)
  {
    v4 = 0xEC00000064695F6CLL;
  }

  if (*v1)
  {
    v3 = 0x746E65746E6F63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C61635F6C6F6F74;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_23887464C()
{
  v1 = 1701605234;
  if (*v0)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6C61635F6C6F6F74;
  }
}

unint64_t sub_2388746CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23887C43C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238874700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E58C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23887473C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E58C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238874784()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238874858(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_238874918()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

unint64_t sub_2388749E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23887C488(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_238874A18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6574737973;
  v5 = 0xE900000000000074;
  v6 = 0x6E61747369737361;
  v7 = 0xE800000000000000;
  v8 = 0x6E6F6974636E7566;
  if (v2 != 3)
  {
    v8 = 1819242356;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1919251317;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_238874AF8(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30A90, &qword_2388D7300);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_23887E58C(v9, v10, v11);
  v12 = sub_2388D3568();
  LOBYTE(v19) = *v3;
  v20 = 0;
  sub_23887E5E0(v12, v13, v14);
  sub_2388D32C8();
  if (!v2)
  {
    v16 = *(v3 + 8);
    sub_23887C4D4(v16);
    if (v17)
    {
      LOBYTE(v19) = 1;
      sub_2388D3298();

      v18 = *(v3 + 16);
    }

    else
    {
      v18 = *(v3 + 16);
      if (!v18 || !*(v18 + 16))
      {
        v19 = v16;
        v20 = 1;
        sub_238810E44(&qword_27DF30AA8, &qword_2388D7308);
        sub_23887E634();
        sub_2388D32C8();
      }
    }

    v19 = v18;
    v20 = 2;
    sub_238810E44(&qword_27DF30AC0, &qword_2388D7310);
    sub_23887E6E8();
    sub_2388D3278();
    LOBYTE(v19) = 3;
    sub_2388D3238();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_238874DD0(void *a1)
{
  v3 = sub_238810E44(&qword_27DF30B00, &qword_2388D7328);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_23887E8D0(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3298();
  if (!v1)
  {
    v11[14] = 1;
    sub_2388D3298();
    type metadata accessor for OpenAIClient.Tool.Function(0);
    v11[13] = 2;
    sub_2388D2178();
    sub_238879C44(&qword_27DF30AF8, MEMORY[0x277D0DC20], MEMORY[0x277D0DC28]);
    sub_2388D32C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_238874FEC(void *a1)
{
  v3 = sub_238810E44(&qword_27DF30B28, &qword_2388D7338);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_23887E978(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3298();
  if (!v1)
  {
    type metadata accessor for OpenAIClient.Tool(0);
    v11[14] = 1;
    type metadata accessor for OpenAIClient.Tool.Function(0);
    sub_238879C44(&qword_27DF30B38, type metadata accessor for OpenAIClient.Tool.Function, &unk_2388D6F28);
    sub_2388D32C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2388751AC()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x6574656D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23887520C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23887C63C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238875240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E8D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23887527C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E8D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2388752E8()
{
  if (*v0)
  {
    return 0x6E6F6974636E7566;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_23887531C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_238875404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E978(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238875440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E978(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238875494(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  v7 = sub_238810E44(&qword_27DF30CB8, &qword_2388D8378);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = sub_238815878(a1, a1[3]);
  sub_238880198(v11, v12, v13);
  sub_2388D3568();
  v17 = 0;
  sub_2388D3298();
  if (!v5)
  {
    v16 = 1;
    sub_2388D3298();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_238875628(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30A40, &qword_2388D72E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  v9 = sub_238815878(a1, a1[3]);
  sub_23887E268(v9, v10, v11);
  sub_2388D3568();
  LOBYTE(v18) = 0;
  sub_2388D3298();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    v13 = sub_2388D3298();
    v14 = *(v3 + 48);
    v18 = *(v3 + 32);
    v19 = v14;
    v17[15] = 2;
    sub_23887E378(v13, v15, v16);
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_238875808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238880198(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238875844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238880198(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238875880@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_23887C760(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_2388758D0()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6974636E7566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_238875918@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23887C944(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238875940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E268(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23887597C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E268(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_2388759B8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_23887CA54(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_238875A38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6863735F6E6F736ALL;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB00000000616D65;
  }

  if (*a2)
  {
    v5 = 0x6863735F6E6F736ALL;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xEB00000000616D65;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2388D3368();
  }

  return v8 & 1;
}

uint64_t sub_238875AE0()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238875B64(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_238875BD4()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

void sub_238875C60(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x6863735F6E6F736ALL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000616D65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_238875CA0()
{
  if (*v0)
  {
    return 0x6863735F6E6F736ALL;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_238875CDC@<X0>(char *a3@<X8>)
{
  v4 = sub_2388D3138();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_238875D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E924(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238875D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E924(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238875DB8(void *a1)
{
  v3 = sub_238810E44(&qword_27DF30AE8, &qword_2388D7320);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_23887E87C(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3298();
  if (!v1)
  {
    v11[14] = 1;
    sub_2388D3238();
    type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper(0);
    v11[13] = 2;
    sub_2388D2178();
    sub_238879C44(&qword_27DF30AF8, MEMORY[0x277D0DC20], MEMORY[0x277D0DC28]);
    sub_2388D32C8();
    v11[12] = 3;
    sub_2388D32A8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_238875FFC(void *a1)
{
  v3 = sub_238810E44(&qword_27DF30B10, &qword_2388D7330);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_23887E924(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3298();
  if (!v1)
  {
    type metadata accessor for OpenAIClient.ResponseFormat(0);
    v11[14] = 1;
    type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper(0);
    sub_238879C44(&qword_27DF30B20, type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper, &unk_2388D6F50);
    sub_2388D32C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2388761B4()
{
  v1 = 1701667182;
  v2 = 0x616D65686373;
  if (*v0 != 2)
  {
    v2 = 0x746369727473;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
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

uint64_t sub_238876228@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23887CD1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238876250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E87C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23887628C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E87C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2388762F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746E65746E6F63;
  if (v2 != 1)
  {
    v4 = 0x6C61635F6C6F6F74;
    v3 = 0xEA0000000000736CLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701605234;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746E65746E6F63;
  if (*a2 != 1)
  {
    v8 = 0x6C61635F6C6F6F74;
    v7 = 0xEA0000000000736CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701605234;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_2388763FC()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_23887649C(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_238876528()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

unint64_t sub_2388765C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23887D0A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2388765F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746E65746E6F63;
  if (v2 != 1)
  {
    v5 = 0x6C61635F6C6F6F74;
    v4 = 0xEA0000000000736CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701605234;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_238876650()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6C61635F6C6F6F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701605234;
  }
}

unint64_t sub_2388766A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23887D0A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2388766D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238880A44(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23887670C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238880A44(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_238876748@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_23887CE7C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_2388767AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61746C6564 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2388D3368();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238876830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388800F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23887686C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388800F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_2388768A8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_23887D0F4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_2388768F0()
{
  if (*v0)
  {
    return 0x746E656D75677261;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23887692C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_238876A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238880240(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238876A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238880240(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238876A88@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_23887D284(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_238876AB8()
{
  v1 = 0x7865646E69;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974636E7566;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_238876B1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23887D468(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238876B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E9CC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238876B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E9CC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

__n128 sub_238876BBC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_23887D5C0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_238876C10()
{
  v1 = 0x6C65646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x736563696F6863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_238876C5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23887D8E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238876C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887DF08(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238876CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887DF08(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_238876CFC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_23887D9F4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_238876D44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (v2 != 1)
  {
    v5 = 0x72755F6567616D69;
    v4 = 0xE90000000000006CLL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701869940;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1954047348;
  if (*a2 != 1)
  {
    v8 = 0x72755F6567616D69;
    v3 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_238876E34()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238876ECC(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_238876F50()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

unint64_t sub_238876FE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23887DC68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_238877014(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (v2 != 1)
  {
    v5 = 0x72755F6567616D69;
    v4 = 0xE90000000000006CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_238877068()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0x72755F6567616D69;
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

unint64_t sub_2388770B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23887DC68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2388770E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E3CC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23887711C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E3CC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238877158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72755F6567616D69;
  }

  else
  {
    v3 = 1954047348;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v5 = 0x72755F6567616D69;
  }

  else
  {
    v5 = 1954047348;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006CLL;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2388D3368();
  }

  return v8 & 1;
}

uint64_t sub_2388771FC()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_23887727C(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_2388772E8()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238877370@<X0>(char *a3@<X8>)
{
  v4 = sub_2388D3138();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_2388773CC(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (*v1)
  {
    v2 = 0x72755F6567616D69;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2388774B8(void *a1)
{
  v3 = sub_238810E44(&qword_27DF30A18, &qword_2388D72D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_23887E214(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D0F58();
  sub_238879C44(&qword_27DF30A20, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_2388D32C8();
  if (!v1)
  {
    type metadata accessor for OpenAIClient.MessageContent.ImageURL(0);
    v11[14] = 1;
    sub_2388D3238();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_238877674@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_2388D0F58();
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238810E44(&qword_27DF30A00, &qword_2388D72D0);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for OpenAIClient.MessageContent.ImageURL(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_238815878(a1, a1[3]);
  sub_23887E214(v13, v14, v15);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v25 = v10;
  v16 = v12;
  v17 = v27;
  v32 = 0;
  sub_238879C44(&qword_27DF30A10, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v18 = v30;
  v19 = v28;
  sub_2388D31F8();
  (*(v17 + 32))(v16, v5, v18);
  v31 = 1;
  v20 = sub_2388D3178();
  v22 = v21;
  v23 = (v16 + *(v25 + 20));
  (*(v29 + 8))(v9, v19);
  *v23 = v20;
  v23[1] = v22;
  sub_23887A1F0(v16, v26, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
  sub_2388158BC(a1);
  return sub_238879E0C(v16, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
}

uint64_t sub_2388779F0(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30A70, &qword_2388D72F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  v9 = sub_238815878(a1, a1[3]);
  sub_23887E3CC(v9, v10, v11);
  v12 = sub_2388D3568();
  v16[15] = *v3;
  v16[14] = 0;
  sub_23887E4E4(v12, v13, v14);
  sub_2388D32C8();
  if (!v2)
  {
    v16[13] = 1;
    sub_2388D3238();
    type metadata accessor for OpenAIClient.MessageContent(0);
    v16[12] = 2;
    type metadata accessor for OpenAIClient.MessageContent.ImageURL(0);
    sub_238879C44(&qword_27DF30A80, type metadata accessor for OpenAIClient.MessageContent.ImageURL, &unk_2388D71A0);
    sub_2388D3278();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_238877C24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_238810E44(&qword_27DF30760, &qword_2388D6A40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_238810E44(&qword_27DF30A50, &qword_2388D72F0);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for OpenAIClient.MessageContent(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 32);
  v15 = type metadata accessor for OpenAIClient.MessageContent.ImageURL(0);
  v16 = *(*(v15 - 8) + 56);
  v32 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = sub_238815878(a1, a1[3]);
  sub_23887E3CC(v17, v18, v19);
  v20 = sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(a1);

    return sub_238827E88(&v13[v32], &qword_27DF30760, &qword_2388D6A40);
  }

  else
  {
    v23 = v30;
    v35 = 0;
    sub_23887E420(v20, v21, v22);
    sub_2388D31F8();
    *v13 = v36;
    v34 = 1;
    *(v13 + 1) = sub_2388D3178();
    *(v13 + 2) = v24;
    v33 = 2;
    sub_238879C44(&qword_27DF30A68, type metadata accessor for OpenAIClient.MessageContent.ImageURL, &unk_2388D71C8);
    v28 = v6;
    v25 = v31;
    sub_2388D31B8();
    (*(v23 + 8))(v9, v25);
    sub_23887E474(v28, &v13[v32]);
    sub_23887A1F0(v13, v29, type metadata accessor for OpenAIClient.MessageContent);
    sub_2388158BC(a1);
    return sub_238879E0C(v13, type metadata accessor for OpenAIClient.MessageContent);
  }
}

uint64_t sub_238877FC0()
{
  if (*v0)
  {
    return 0x6C6961746564;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_238877FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_2388780C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E214(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238878104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887E214(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2388781A0()
{
  v1 = sub_2388D2898();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v0->i64[0];
  v2 = v0->i64[1];
  if (v0[4].u8[0] > 1u)
  {
    if (v0[4].i8[0] == 2)
    {
    }

    else
    {
      v7 = vorrq_s8(v0[2], v0[3]);
      if (v3 | *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v0[1].i64[0] | v2 | v0[1].i64[1])
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD00000000000001FLL;
      }
    }
  }

  else
  {
    if (v0[4].i8[0])
    {
      sub_2388D2FA8();

      v9 = 0xD00000000000001CLL;
      v4 = sub_2388D32F8();
      MEMORY[0x23EE66C20](v4);

      MEMORY[0x23EE66C20](2618, 0xE200000000000000);
      sub_2388D2888();
      v5 = sub_2388D2878();
      if (!v6)
      {
        v5 = sub_2388D0F88();
      }

      MEMORY[0x23EE66C20](v5);
    }

    else
    {
      sub_2388D2FA8();

      v9 = 0xD000000000000011;
      MEMORY[0x23EE66C20](v3, v2);
    }

    return v9;
  }

  return v3;
}

uint64_t sub_2388783AC(void *a1)
{
  v2 = v1;
  v4 = sub_238810E44(&qword_27DF30AD8, &qword_2388D7318);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = sub_238815878(a1, a1[3]);
  sub_23887DE60(v8, v9, v10);
  sub_2388D3568();
  v11 = v2[1];
  v18 = *v2;
  v19 = v11;
  v12 = v2[3];
  v20 = v2[2];
  v21 = v12;
  v13 = sub_23887E7C0(v2, v17);
  sub_23887E7F8(v13, v14, v15);
  sub_2388D32C8();
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  sub_23887E84C(v17);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_238878580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2388D3368();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238878610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887DE60(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23887864C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23887DE60(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_238878688@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_23887DCB4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_238878708(void *a1)
{
  v3 = sub_238810E44(&qword_27DF30CC8, &qword_2388D8380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_238880064(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3298();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11[14] = 1;
  sub_2388D3298();
  v11[13] = 2;
  sub_2388D3238();
  v11[12] = 3;
  sub_2388D3238();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2388788C8()
{
  v1 = 0x6567617373656DLL;
  v2 = 0x6D61726170;
  if (*v0 != 2)
  {
    v2 = 1701080931;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_23887892C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23887FC10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238878954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238880064(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238878990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238880064(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_2388789CC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_23887FD70(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_238878A4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_238878A94(uint64_t a1)
{
  v4 = sub_238810E44(&qword_27DF30748, &qword_2388D6A38);
  v5 = sub_238815180(&qword_27DF30750, &qword_27DF30748, &qword_2388D6A38, MEMORY[0x277CC9C28]);
  v3[0] = a1;
  sub_238815878(v3, v4);

  sub_2388D0FD8();
  return sub_2388158BC(v3);
}

unint64_t sub_238878B54(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2388D2968();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2388D2A38();
}

void *sub_238878C04(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_238810E44(&qword_27DF2FB38, &unk_2388D4940);
  v3 = sub_2388D3128();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = a1[10];
  v11 = sub_238820BC0(v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = v11;
  result = v6;
  v15 = a1 + 17;
  while (1)
  {
    *(v3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v3[6] + 8 * v13) = v5;
    v16 = (v3[7] + 48 * v13);
    *v16 = v4;
    v16[1] = result;
    v16[2] = v7;
    v16[3] = v8;
    v16[4] = v9;
    v16[5] = v10;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v5 = *(v15 - 6);
    v20 = *(v15 - 5);
    v21 = *(v15 - 3);
    v25 = *(v15 - 4);
    v26 = v15 + 7;
    v22 = *(v15 - 2);
    v9 = *(v15 - 1);
    v23 = *v15;

    v13 = sub_238820BC0(v5);
    result = v25;
    v15 = v26;
    v10 = v23;
    v4 = v20;
    v8 = v22;
    v7 = v21;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_238878D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_238810E44(&qword_27DF30690, &qword_2388D6960);
    v3 = sub_2388D3128();
    v4 = a1 + 32;

    while (1)
    {
      sub_238827E14(v4, &v13, &qword_27DF30698, &qword_2388D6968);
      v5 = v13;
      v6 = v14;
      result = sub_238820AA8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_238879D4C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_238878EC8()
{
  v10 = v0;
  if (qword_27DF2F9E8 != -1)
  {
    swift_once();
  }

  v1 = sub_2388D2408();
  sub_2388413AC(v1, qword_27DF3F8F8);
  v2 = sub_2388D23E8();
  v3 = sub_2388D2E08();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2388C0770(0xD00000000000001BLL, 0x80000002388D67B0, &v9);
    _os_log_impl(&dword_23880E000, v2, v3, "%s does not support tokenization", v4, 0xCu);
    sub_2388158BC(v5);
    MEMORY[0x23EE68030](v5, -1, -1);
    MEMORY[0x23EE68030](v4, -1, -1);
  }

  v6 = *(v0 + 8);
  v7 = MEMORY[0x277D84F90];

  return v6(0, 0xE000000000000000, v7);
}

unint64_t sub_238879050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_238810E44(&qword_27DF2FB40, &qword_2388D6A50);
    v3 = sub_2388D3128();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_238820AA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_238879164(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    a2(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_238820AA8(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_23882194C();
      }
    }

    else
    {
      sub_238823530(v31, v46 & 1);
      v33 = sub_238820AA8(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_238826BEC(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2388D3438();
  __break(1u);
  return result;
}

uint64_t sub_238879404()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_23887944C(uint64_t a1)
{
  result = sub_238815180(&qword_27DF30610, &qword_27DF30618, qword_2388D66C0, MEMORY[0x277D858E0]);
  *(a1 + 8) = result;
  return result;
}

void sub_2388794F8(uint64_t a1)
{
  sub_2388D0F58();
  if (v1 <= 0x3F)
  {
    sub_2388795CC();
    if (v2 <= 0x3F)
    {
      sub_23882BAA0(319, &qword_27DF30638, &qword_27DF30640, &qword_2388D6718);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2388795CC()
{
  if (!qword_27DF30630)
  {
    v0 = sub_2388D2788();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF30630);
    }
  }
}

uint64_t sub_23887963C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2388D0F58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}