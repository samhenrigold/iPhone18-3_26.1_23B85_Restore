char *DURawDocument.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v132 = a1;
  v5 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  sub_232B2D120(v5);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232B2D108();
  v131 = v7;
  v8 = sub_232B554F0();
  v129 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(v8);
  sub_232B13F24();
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v130 = (v11 - v10);
  v12 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  sub_232B2D120(v12);
  sub_232B2D114();
  MEMORY[0x28223BE20](v13);
  sub_232B2D108();
  v128 = v14;
  v15 = sub_232B554F0();
  v126 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(v15);
  sub_232B13F24();
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v127 = (v18 - v17);
  v19 = sub_232B554F0();
  v20 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(v19);
  v21 = sub_232B27FBC(v20);
  v123 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v120 - v26;
  v28 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v28);
  sub_232B2D114();
  MEMORY[0x28223BE20](v29);
  sub_232B2D108();
  v125 = v30;
  v31 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v31);
  sub_232B2D114();
  MEMORY[0x28223BE20](v32);
  sub_232B2D108();
  v124 = v33;
  v34 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  sub_232B2D120(v34);
  sub_232B2D114();
  MEMORY[0x28223BE20](v35);
  v37 = &v120 - v36;
  v38 = *(a2 - 8);
  MEMORY[0x28223BE20](v39);
  sub_232B20704();
  v42 = v41 - v40;
  v43 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v44);
  sub_232B20704();
  v47 = v46 - v45;
  v133 = [objc_allocWithZone(v3) init];
  v48 = v132;
  (*(v38 + 16))(v42);
  if (swift_dynamicCast())
  {
    v121 = v38;
    v122 = a2;
    v49 = sub_232BF7244();
    sub_232B12504(v49, v50, v51, v43);
    sub_232BF61BC();
    v52 = *(v43 + 20);
    v120 = v47;
    v53 = *(v47 + v52);
    v54 = sub_232B13F74(v53 + 16, v164);
    v55 = v133;
    sub_232BF71EC(v54, v163);
    sub_232BF728C();

    v56 = sub_232B13F74(v53 + 32, v162);
    sub_232BF71EC(v56, v161);
    sub_232BF728C();

    v57 = sub_232B13F74(v53 + 48, v160);
    sub_232BF71EC(v57, v159);
    sub_232BF728C();

    v58 = sub_232B13F74(v53 + 64, v158);
    sub_232BF71EC(v58, &v157);
    sub_232BF728C();

    v59 = sub_232B13F74(v53 + 80, &v156);
    sub_232BF71EC(v59, &v155);
    sub_232BF728C();

    v60 = sub_232B13F74(v53 + 96, &v154);
    sub_232BF71EC(v60, &v153);
    sub_232BF728C();

    v61 = sub_232B13F74(v53 + 112, &v152);
    sub_232BF71EC(v61, &v151);
    sub_232BF728C();

    v62 = sub_232B13F74(v53 + 128, &v150);
    sub_232BF71EC(v62, &v149);
    sub_232BF728C();

    sub_232B13F74(v53 + 144, &v148);
    v63 = *(v53 + 144);
    v64 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords + v55, &v147);
    *&v64[v55] = v63;

    v65 = sub_232B13F74(v53 + 152, &v146);
    sub_232BF71EC(v65, &v145);
    sub_232BF728C();

    sub_232B13F74(v53 + 168, &v144);

    sub_232CE8BD0();

    sub_232B207D4(v55 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url, v143);
    sub_232BF740C();
    swift_endAccess();
    sub_232B13F74(v53 + 184, v143);

    sub_232CE8BD0();

    sub_232B207D4(v55 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_thumbnailUrl, v142);
    sub_232BF740C();
    swift_endAccess();
    sub_232B13F74(v53 + 200, v142);

    sub_232CE8BD0();

    sub_232B207D4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_significantLink + v55, v141);
    sub_232BF740C();
    swift_endAccess();
    sub_232B13F74(v53 + 216, v141);
    sub_232CE8CA0();
    v66 = sub_232CE8D10();
    v67 = sub_232BF7244();
    sub_232B12504(v67, v68, v69, v66);
    sub_232B207D4(&v133[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated], v140);
    v70 = v133;
    sub_232BF6164();
    swift_endAccess();
    sub_232B13F74(v53 + 224, v140);
    sub_232CE8CA0();
    v71 = sub_232BF7244();
    sub_232B12504(v71, v72, v73, v66);
    sub_232B207D4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateModified + v70, v139);
    sub_232BF6164();
    swift_endAccess();
    sub_232B13F74(v53 + 232, v139);
    v74 = *(v53 + 232);
    v75 = MEMORY[0x277D84F90];
    v138[0] = MEMORY[0x277D84F90];
    v76 = *(v74 + 16);
    if (v76)
    {
      sub_232BF7444();
      v79 = v77 + v78;
      v81 = *(v80 + 72);
      v125 = v77;

      v82 = MEMORY[0x277D84F90];
      do
      {
        sub_232BF72F8();
        sub_232BF712C();
        sub_232BF712C();
        v83 = sub_232B43010(v24);
        sub_232BF72E0();
        v85 = sub_232BF610C(v27, v84);
        if (v83)
        {
          MEMORY[0x238391D50](v85);
          if (*((v138[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_232CEA000();
          }

          sub_232CEA020();
          v82 = v138[0];
        }

        v79 += v81;
        --v76;
      }

      while (v76);

      v70 = v133;
      v75 = MEMORY[0x277D84F90];
    }

    else
    {
      v82 = MEMORY[0x277D84F90];
    }

    v89 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
    sub_232B13F5C(&v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements], v138);
    *&v70[v89] = v82;

    sub_232B13F74(v53 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentHtmldata, &v137);
    v90 = v128;
    sub_232BF5EEC();
    v91 = sub_232BF74D4();
    v92 = v126;
    sub_232B351B0(v91, v93, v126);
    v94 = v132;
    v95 = v121;
    v96 = v127;
    if (v97)
    {
      *v127 = 0;
      *(v96 + 8) = 0xE000000000000000;
      sub_232CE9330();
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
      sub_232B55484();
      sub_232B12504(v98, v99, v100, v101);
      v102 = sub_232BF74D4();
      sub_232B351B0(v102, v103, v92);
      if (!v97)
      {
        sub_232B13790(v90, &qword_27DDC69B0, &qword_232CF6998);
      }
    }

    else
    {
      sub_232BF71B4();
      sub_232BF61BC();
    }

    v104 = sub_232B39460(v96);
    v105 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
    sub_232B13F5C(&v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData], &v136);
    v106 = *&v70[v105];
    *&v70[v105] = v104;

    sub_232B13F74(v53 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentMessageData, &v135);
    v107 = v131;
    sub_232BF5EEC();
    v108 = sub_232B5F000();
    v109 = v129;
    sub_232B351B0(v108, v110, v129);
    if (v97)
    {
      v113 = v130;
      *v130 = 0;
      v113[1] = 0xE000000000000000;
      v113[2] = 0;
      v113[3] = 0xE000000000000000;
      v113[4] = v75;
      v113[5] = v75;
      v113[6] = 0;
      v113[7] = 0xE000000000000000;
      v113[8] = 0;
      v113[9] = 0xE000000000000000;
      sub_232CE9330();
      v111 = sub_232B5F000();
      sub_232B351B0(v111, v112, v109);
      v114 = v122;
      v115 = v120;
      if (!v97)
      {
        sub_232B13790(v107, &qword_27DDC69A0, &qword_232CF6990);
      }
    }

    else
    {
      sub_232BF7184();
      v113 = v130;
      sub_232BF61BC();
      v114 = v122;
      v115 = v120;
    }

    v116 = sub_232B3E1E8(v113);
    (*(v95 + 8))(v94, v114);
    sub_232BF610C(v115, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
    v117 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
    sub_232B13F5C(&v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData], &v134);
    v118 = *&v70[v117];
    *&v70[v117] = v116;
  }

  else
  {
    (*(v38 + 8))(v48, a2);

    sub_232B55484();
    sub_232B12504(v86, v87, v88, v43);
    sub_232B13790(v37, &qword_27DDC6F10, &unk_232CF8420);
    return 0;
  }

  return v70;
}

id sub_232BF1F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_232CE9D20();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_232BF2010(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9D50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_232BF20A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_232BF2828(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_232B207D4(v4 + *a2, v6);
  sub_232BF6164();
  return swift_endAccess();
}

id sub_232BF28F8(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v6);
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  sub_232B5A028();
  a3();
  v8 = sub_232CE8C00();
  sub_232B5A088(v8);
  if (!v9)
  {
    a1 = v3;
    sub_232CE8B90();
    sub_232B5A014();
    (*(v10 + 8))(v3, a3);
  }

  return a1;
}

void sub_232BF29F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v8);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  sub_232BF7454();
  if (a3)
  {
    sub_232CE8BB0();
    v10 = sub_232CE8C00();
    v11 = 0;
  }

  else
  {
    v10 = sub_232CE8C00();
    v11 = 1;
  }

  sub_232B12504(v4, v11, 1, v10);
  v12 = a1;
  v13 = sub_232BF73E8();
  a4(v13);
}

id sub_232BF2B38(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v6);
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  sub_232B5A028();
  a3();
  v8 = sub_232CE8D10();
  sub_232B5A088(v8);
  if (!v9)
  {
    a1 = v3;
    sub_232CE8CD0();
    sub_232B5A014();
    (*(v10 + 8))(v3, a3);
  }

  return a1;
}

void sub_232BF2C34(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v8);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  sub_232BF7454();
  if (a3)
  {
    sub_232CE8CF0();
    v10 = sub_232CE8D10();
    v11 = 0;
  }

  else
  {
    v10 = sub_232CE8D10();
    v11 = 1;
  }

  sub_232B12504(v4, v11, 1, v10);
  v12 = a1;
  v13 = sub_232BF73E8();
  a4(v13);
}

uint64_t sub_232BF2DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v8 = sub_232B124A8(a5, a6);
  sub_232B2D120(v8);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_232B37B20();
  sub_232BF5EEC();
  return a7(v11);
}

void *sub_232BF2EE8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF2F88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232BF2FD8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BF2F88(v1);
}

void *sub_232BF31F4()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF3294(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232BF32E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BF3294(v1);
}

id DURawDocument.init()()
{
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_subHeadline);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_version);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_abstract);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_comment);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_inLanguage);
  *(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier);
  v1 = sub_232CE8C00();
  sub_232B55484();
  sub_232B12504(v2, v3, v4, v1);
  sub_232B55484();
  sub_232B12504(v5, v6, v7, v1);
  sub_232B55484();
  sub_232B12504(v8, v9, v10, v1);
  v11 = sub_232CE8D10();
  sub_232B55484();
  sub_232B12504(v12, v13, v14, v11);
  sub_232B55484();
  sub_232B12504(v15, v16, v17, v11);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData] = 0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for DURawDocument(0);
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_232BF34F8(uint64_t a1)
{
  type metadata accessor for DURawDocument(0);
  sub_232BF7310();
  sub_232BF70E4(v1, v2, &protocol conformance descriptor for DURawDocument);
  v3 = sub_232CE98A0();
  if (v3)
  {
    v4 = v3;
    v5 = sub_232CE9D20();
    sub_232BF7340();
    [v6 v7];
  }
}

uint64_t DURawDocument.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232BF7310();
  sub_232BF70E4(v2, v3, &protocol conformance descriptor for DURawDocument);
  sub_232CE98B0();

  v4 = v6;
  if (!v6)
  {
LABEL_5:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t type metadata accessor for DURawDocument(uint64_t a1)
{
  result = qword_2814E2310;
  if (!qword_2814E2310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_232BF3814@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232BF4C38(v5 - v4);
  v7 = sub_232BEFD64(v6);
  result = sub_232B124A8(&qword_27DDC79C8, &qword_232CFB9E8);
  a1[3] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_232BF3908(uint64_t a1)
{
  v2 = sub_232CE8D10();
  sub_232B48F0C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v227 = v7 - v6;
  v232 = sub_232B124A8(&qword_27DDC6AA0, &qword_232CFB9F0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v8);
  sub_232B20714();
  v231 = v9;
  sub_232B20600();
  MEMORY[0x28223BE20](v10);
  sub_232B55558();
  v235 = v11;
  v12 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v13 = sub_232B2D120(v12);
  MEMORY[0x28223BE20](v13);
  sub_232B20714();
  v228 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B20628();
  v229 = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  sub_232B20628();
  v230 = v18;
  sub_232B20600();
  MEMORY[0x28223BE20](v19);
  sub_232B55558();
  v233 = v20;
  sub_232B554F0();
  v242 = sub_232CE8C00();
  sub_232B48F0C();
  v239 = v21;
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  v237 = v24 - v23;
  v241 = sub_232B124A8(&qword_27DDC79D0, &unk_232CFB9F8);
  sub_232B13F24();
  MEMORY[0x28223BE20](v25);
  sub_232B20714();
  v238 = v26;
  sub_232B20600();
  MEMORY[0x28223BE20](v27);
  sub_232B20628();
  v240 = v28;
  sub_232B20600();
  MEMORY[0x28223BE20](v29);
  v31 = &v221[-v30];
  v32 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v33 = sub_232B2D120(v32);
  MEMORY[0x28223BE20](v33);
  sub_232B20714();
  v234 = v34;
  sub_232B20600();
  MEMORY[0x28223BE20](v35);
  sub_232B20628();
  v236 = v36;
  sub_232B20600();
  MEMORY[0x28223BE20](v37);
  v39 = &v221[-v38];
  MEMORY[0x28223BE20](v40);
  v42 = &v221[-v41];
  MEMORY[0x28223BE20](v43);
  v45 = &v221[-v44];
  MEMORY[0x28223BE20](v46);
  v48 = &v221[-v47];
  sub_232BF5EEC();
  if (v279)
  {
    type metadata accessor for DURawDocument(0);
    v49 = swift_dynamicCast();
    if (v49)
    {
      v223 = v4;
      v224 = v2;
      v50 = v277;
      v225 = v1;
      v51 = v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline;
      v52 = sub_232BF7254(v49, v278);
      v53 = *(v51 + 8);
      v226 = v50;
      v54 = &v50[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
      sub_232BF72A8(v52, &v277);
      v55 = *(v54 + 1);
      if (v53)
      {
        if (!v55)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v60 = v60 && v53 == v59;
        if (!v60 && (sub_232BF72C4(v56, v57, v58, v59) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (v55)
      {
        goto LABEL_140;
      }

      sub_232BF73C0();
      sub_232BF7254(v61, v276);
      v62 = *(v53 + 8);
      sub_232BF73B4();
      sub_232BF72A8(v63, v275);
      if (v62)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v68 = v60 && v62 == v67;
        if (!v68 && (sub_232BF72C4(v64, v65, v66, v67) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0();
      sub_232BF7254(v69, v274);
      v70 = *(v62 + 8);
      sub_232BF73B4();
      sub_232BF72A8(v71, v273);
      if (v70)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v76 = v60 && v70 == v75;
        if (!v76 && (sub_232BF72C4(v72, v73, v74, v75) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0();
      sub_232BF7254(v77, &v272);
      v78 = *(v70 + 8);
      sub_232BF73B4();
      sub_232BF72A8(v79, &v271);
      if (v78)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v84 = v60 && v78 == v83;
        if (!v84 && (sub_232BF72C4(v80, v81, v82, v83) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0();
      sub_232BF7254(v85, &v270);
      v86 = *(v78 + 8);
      sub_232BF73B4();
      sub_232BF72A8(v87, &v269);
      if (v86)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v92 = v60 && v86 == v91;
        if (!v92 && (sub_232BF72C4(v88, v89, v90, v91) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0();
      sub_232BF7254(v93, &v268);
      v94 = *(v86 + 8);
      sub_232BF73B4();
      sub_232BF72A8(v95, &v267);
      if (v94)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v100 = v60 && v94 == v99;
        if (!v100 && (sub_232BF72C4(v96, v97, v98, v99) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0();
      sub_232BF7254(v101, &v266);
      v102 = *(v94 + 8);
      sub_232BF73B4();
      sub_232BF72A8(v103, &v265);
      if (v102)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v108 = v60 && v102 == v107;
        if (!v108 && (sub_232BF72C4(v104, v105, v106, v107) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232BF73C0();
      sub_232BF7254(v109, &v264);
      v110 = *(v102 + 8);
      sub_232BF73B4();
      sub_232BF72A8(v111, &v263);
      if (v110)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v116 = v60 && v110 == v115;
        if (!v116 && (sub_232BF72C4(v112, v113, v114, v115) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      v117 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
      v118 = v225;
      sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords + v225, &v262);
      v119 = *&v117[v118];
      v120 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
      v121 = v226;
      sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords + v226, &v261);
      v122 = *(v120 + v121);
      if (v119)
      {
        if (!v122 || (sub_232B32DC4(v119, v122) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (v122)
      {
        goto LABEL_140;
      }

      sub_232BF73C0();
      sub_232BF7254(v123, &v260);
      v124 = v120[1];
      sub_232BF73B4();
      sub_232BF72A8(v125, &v259);
      if (v124)
      {
        if (!qword_27DDC7008)
        {
          goto LABEL_140;
        }

        sub_232BF73A8();
        v130 = v60 && v124 == v129;
        if (!v130 && (sub_232BF72C4(v126, v127, v128, v129) & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (qword_27DDC7008)
      {
        goto LABEL_140;
      }

      sub_232B13F74(v225 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url, &v258);
      sub_232BF5EEC();
      sub_232B13F74(&v226[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url], &v257);
      v131 = *(v241 + 48);
      sub_232BF5EEC();
      sub_232BF5EEC();
      sub_232BF71CC(v31);
      if (v60)
      {
        sub_232B13790(v48, &qword_27DDC6AD8, &unk_232CF82F0);
        sub_232BF71CC(&v31[v131]);
        if (v60)
        {
          sub_232B13790(v31, &qword_27DDC6AD8, &unk_232CF82F0);
          goto LABEL_100;
        }
      }

      else
      {
        sub_232B37B20();
        sub_232BF5EEC();
        sub_232BF71CC(&v31[v131]);
        if (!v132)
        {
          v136 = v239;
          v137 = &v31[v131];
          v138 = v237;
          v139 = v242;
          (*(v239 + 32))(v237, v137, v242);
          sub_232BF719C();
          sub_232BF70E4(v140, v141, MEMORY[0x277CC9278]);
          v222 = sub_232CE9CF0();
          v142 = *(v136 + 8);
          v142(v138, v139);
          sub_232B13790(v48, &qword_27DDC6AD8, &unk_232CF82F0);
          v142(v45, v139);
          sub_232B13790(v31, &qword_27DDC6AD8, &unk_232CF82F0);
          if ((v222 & 1) == 0)
          {
            goto LABEL_140;
          }

LABEL_100:
          sub_232B13F74(v225 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_thumbnailUrl, &v256);
          sub_232BF5EEC();
          sub_232B13F74(&v226[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_thumbnailUrl], &v255);
          v143 = v240;
          v144 = *(v241 + 48);
          sub_232BF5EEC();
          sub_232BF5EEC();
          sub_232BF71CC(v143);
          if (v60)
          {
            sub_232B13790(v42, &qword_27DDC6AD8, &unk_232CF82F0);
            sub_232BF71CC(v240 + v144);
            if (v60)
            {
              sub_232B13790(v240, &qword_27DDC6AD8, &unk_232CF82F0);
              goto LABEL_110;
            }
          }

          else
          {
            v145 = v240;
            sub_232BF5EEC();
            sub_232BF71CC(v145 + v144);
            if (!v146)
            {
              v147 = v239;
              v148 = v240;
              v149 = v237;
              v150 = v242;
              (*(v239 + 32))(v237, v240 + v144, v242);
              sub_232BF719C();
              sub_232BF70E4(v151, v152, MEMORY[0x277CC9278]);
              v153 = sub_232CE9CF0();
              v154 = *(v147 + 8);
              v154(v149, v150);
              sub_232B13790(v42, &qword_27DDC6AD8, &unk_232CF82F0);
              v154(v39, v150);
              sub_232B13790(v148, &qword_27DDC6AD8, &unk_232CF82F0);
              if ((v153 & 1) == 0)
              {
                goto LABEL_140;
              }

LABEL_110:
              sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_significantLink + v225, &v254);
              sub_232BF7340();
              sub_232BF5EEC();
              v155 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_significantLink;
              sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_significantLink + v226, &v253);
              v156 = *(v241 + 48);
              v157 = v238;
              sub_232BF7340();
              sub_232BF5EEC();
              sub_232BF7340();
              sub_232BF5EEC();
              sub_232BF71CC(v157);
              if (v60)
              {
                sub_232B13790(v236, &qword_27DDC6AD8, &unk_232CF82F0);
                sub_232BF71CC(v238 + v156);
                if (v60)
                {
                  sub_232B13790(v238, &qword_27DDC6AD8, &unk_232CF82F0);
                  goto LABEL_120;
                }
              }

              else
              {
                v158 = v238;
                sub_232BF5EEC();
                sub_232BF71CC(v158 + v156);
                if (!v159)
                {
                  v160 = v242;
                  (*(v239 + 32))(v237, v238 + v156, v242);
                  sub_232BF719C();
                  v163 = sub_232BF70E4(v161, v162, MEMORY[0x277CC9278]);
                  v164 = v234;
                  sub_232BF74E0(v163, v165, v166, v163);
                  v167 = sub_232BF74B4();
                  v155(v167);
                  sub_232B13790(v236, &qword_27DDC6AD8, &unk_232CF82F0);
                  (v155)(v164, v160);
                  sub_232BF747C();
                  if ((v158 & 1) == 0)
                  {
                    goto LABEL_140;
                  }

LABEL_120:
                  sub_232B13F74(v225 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated, &v252);
                  sub_232BF7340();
                  sub_232BF5EEC();
                  sub_232B13F74(&v226[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated], &v251);
                  v168 = *(v232 + 48);
                  v169 = v235;
                  sub_232BF7340();
                  sub_232BF5EEC();
                  sub_232BF7340();
                  sub_232BF5EEC();
                  sub_232BF7208(v169);
                  if (v60)
                  {
                    sub_232B13790(v233, &qword_27DDC6A80, &qword_232CF6D30);
                    sub_232BF7208(v235 + v168);
                    if (v60)
                    {
                      sub_232B13790(v235, &qword_27DDC6A80, &qword_232CF6D30);
LABEL_130:
                      sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateModified + v225, &v250);
                      sub_232BF7340();
                      sub_232BF5EEC();
                      v180 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateModified;
                      sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateModified + v226, &v249);
                      v181 = *(v232 + 48);
                      v182 = v231;
                      sub_232BF7340();
                      sub_232BF5EEC();
                      sub_232BF7340();
                      sub_232BF5EEC();
                      sub_232BF7208(v182);
                      if (v60)
                      {
                        sub_232B13790(v229, &qword_27DDC6A80, &qword_232CF6D30);
                        sub_232BF7208(v231 + v181);
                        if (v60)
                        {
                          sub_232B13790(v231, &qword_27DDC6A80, &qword_232CF6D30);
LABEL_144:
                          v195 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
                          v196 = v225;
                          sub_232B13F74(v225 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements, &v248);
                          v197 = *(v196 + v195);
                          v198 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
                          v199 = v226;
                          sub_232B13F74(&v226[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements], &v247);
                          v200 = *&v199[v198];
                          if (v197)
                          {
                            if (!v200)
                            {
                              goto LABEL_140;
                            }

                            v202 = sub_232B34638(v201, v200);

                            if ((v202 & 1) == 0)
                            {
                              goto LABEL_140;
                            }
                          }

                          else if (v200)
                          {
                            goto LABEL_140;
                          }

                          v203 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
                          v204 = v225;
                          sub_232B13F74(v225 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData, &v246);
                          v205 = *(v204 + v203);
                          v206 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
                          v207 = v226;
                          sub_232B13F74(&v226[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData], &v245);
                          v208 = *&v207[v206];
                          if (v205)
                          {
                            if (v208)
                            {
                              type metadata accessor for DUDocumentHTMLData();
                              v209 = v208;
                              v210 = v205;
                              v211 = sub_232CEA310();

                              if (v211)
                              {
                                goto LABEL_154;
                              }
                            }
                          }

                          else if (!v208)
                          {
LABEL_154:
                            v212 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
                            v213 = v225;
                            sub_232B13F74(v225 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData, &v244);
                            v214 = *(v213 + v212);
                            v215 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
                            v216 = v226;
                            sub_232B13F74(&v226[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData], &v243);
                            v217 = *&v216[v215];
                            if (!v214)
                            {
                              v220 = v217;

                              if (!v217)
                              {
                                v185 = 1;
                                return v185 & 1;
                              }

                              goto LABEL_141;
                            }

                            if (v217)
                            {
                              type metadata accessor for DUDocumentMessageData();
                              v218 = v217;
                              v219 = v214;
                              v185 = sub_232CEA310();

                              return v185 & 1;
                            }
                          }

LABEL_140:

                          goto LABEL_141;
                        }
                      }

                      else
                      {
                        v183 = v231;
                        sub_232BF5EEC();
                        sub_232BF7208(v183 + v181);
                        if (!v184)
                        {
                          v187 = v224;
                          (*(v223 + 32))(v227, v231 + v181, v224);
                          sub_232BF7328();
                          v190 = sub_232BF70E4(v188, v189, MEMORY[0x277CC9598]);
                          v191 = v228;
                          sub_232BF74E0(v190, v192, v193, v190);
                          v194 = sub_232BF74B4();
                          v180(v194);
                          sub_232B13790(v229, &qword_27DDC6A80, &qword_232CF6D30);
                          (v180)(v191, v187);
                          sub_232BF747C();
                          if ((v183 & 1) == 0)
                          {
                            goto LABEL_140;
                          }

                          goto LABEL_144;
                        }

                        sub_232B13790(v229, &qword_27DDC6A80, &qword_232CF6D30);
                        (*(v223 + 8))(v228, v224);
                      }

                      v133 = &qword_27DDC6AA0;
                      v134 = &qword_232CFB9F0;
                      v135 = v231;
LABEL_139:
                      sub_232B13790(v135, v133, v134);
                      goto LABEL_140;
                    }
                  }

                  else
                  {
                    v170 = v235;
                    sub_232BF5EEC();
                    sub_232BF7208(v170 + v168);
                    if (!v171)
                    {
                      v172 = v223;
                      v173 = v224;
                      v174 = v227;
                      (*(v223 + 32))(v227, v235 + v168, v224);
                      sub_232BF7328();
                      sub_232BF70E4(v175, v176, MEMORY[0x277CC9598]);
                      v177 = v230;
                      v178 = sub_232CE9CF0();
                      v179 = *(v172 + 8);
                      v179(v174, v173);
                      sub_232B13790(v233, &qword_27DDC6A80, &qword_232CF6D30);
                      v179(v177, v173);
                      sub_232BF747C();
                      if ((v178 & 1) == 0)
                      {
                        goto LABEL_140;
                      }

                      goto LABEL_130;
                    }

                    sub_232B13790(v233, &qword_27DDC6A80, &qword_232CF6D30);
                    (*(v223 + 8))(v230, v224);
                  }

                  v133 = &qword_27DDC6AA0;
                  v134 = &qword_232CFB9F0;
                  v135 = v235;
                  goto LABEL_139;
                }

                sub_232B13790(v236, &qword_27DDC6AD8, &unk_232CF82F0);
                (*(v239 + 8))(v234, v242);
              }

              v133 = &qword_27DDC79D0;
              v134 = &unk_232CFB9F8;
              v135 = v238;
              goto LABEL_139;
            }

            sub_232B13790(v42, &qword_27DDC6AD8, &unk_232CF82F0);
            (*(v239 + 8))(v39, v242);
          }

          v133 = &qword_27DDC79D0;
          v134 = &unk_232CFB9F8;
          v135 = v240;
          goto LABEL_139;
        }

        sub_232B13790(v48, &qword_27DDC6AD8, &unk_232CF82F0);
        (*(v239 + 8))(v45, v242);
      }

      v133 = &qword_27DDC79D0;
      v134 = &unk_232CFB9F8;
      v135 = v31;
      goto LABEL_139;
    }
  }

  else
  {
    sub_232B13790(v278, &qword_27DDC68C8, &qword_232CF6210);
  }

LABEL_141:
  v185 = 0;
  return v185 & 1;
}

uint64_t sub_232BF4C38@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  v4 = sub_232B2D120(v3);
  MEMORY[0x28223BE20](v4);
  sub_232B20714();
  v245 = v5;
  sub_232B20600();
  MEMORY[0x28223BE20](v6);
  sub_232B55558();
  v253 = v7;
  v8 = sub_232B554F0();
  v254 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(v8);
  sub_232B13F24();
  MEMORY[0x28223BE20](v9);
  sub_232B20714();
  v248 = v10;
  sub_232B20600();
  MEMORY[0x28223BE20](v11);
  sub_232B20628();
  v250 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B55558();
  v244 = v14;
  v15 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  v16 = sub_232B2D120(v15);
  MEMORY[0x28223BE20](v16);
  sub_232B20714();
  v243 = v17;
  sub_232B20600();
  MEMORY[0x28223BE20](v18);
  sub_232B55558();
  v251 = v19;
  v20 = sub_232B554F0();
  v252 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(v20);
  sub_232B13F24();
  MEMORY[0x28223BE20](v21);
  sub_232B20714();
  v247 = v22;
  sub_232B20600();
  MEMORY[0x28223BE20](v23);
  sub_232B20628();
  v249 = v24;
  sub_232B20600();
  MEMORY[0x28223BE20](v25);
  sub_232B55558();
  v242 = v26;
  v27 = sub_232B554F0();
  v28 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(v27);
  v29 = sub_232B27FBC(v28);
  v268 = v30;
  MEMORY[0x28223BE20](v29);
  sub_232B20704();
  v33 = v32 - v31;
  v34 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v35 = sub_232B2D120(v34);
  MEMORY[0x28223BE20](v35);
  sub_232B20714();
  v260 = v36;
  sub_232B20600();
  MEMORY[0x28223BE20](v37);
  sub_232B55558();
  v259 = v38;
  sub_232B554F0();
  sub_232CE8D10();
  sub_232B48F0C();
  v262 = v40;
  v263 = v39;
  MEMORY[0x28223BE20](v39);
  sub_232B20714();
  v261 = v41;
  sub_232B20600();
  MEMORY[0x28223BE20](v42);
  sub_232B55558();
  v265 = v43;
  v44 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v45 = sub_232B2D120(v44);
  MEMORY[0x28223BE20](v45);
  sub_232B20714();
  v257 = v46;
  sub_232B20600();
  MEMORY[0x28223BE20](v47);
  sub_232B20628();
  v255 = v48;
  sub_232B20600();
  MEMORY[0x28223BE20](v49);
  v51 = &v239 - v50;
  v52 = sub_232CE8C00();
  sub_232B48F0C();
  v264 = v53;
  MEMORY[0x28223BE20](v54);
  sub_232B20714();
  v258 = v55;
  sub_232B20600();
  MEMORY[0x28223BE20](v56);
  sub_232B20628();
  v256 = v57;
  sub_232B20600();
  MEMORY[0x28223BE20](v58);
  sub_232B55558();
  v246 = v59;
  sub_232CE9330();
  v60 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0) + 20);
  if (qword_2814E2300 != -1)
  {
LABEL_112:
    swift_once();
  }

  *(a1 + v60) = qword_2814E2308;
  v266 = v1;
  v61 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
  sub_232B13F74(&v1[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline], v303);
  v62 = *(v61 + 1);
  v267 = v60;
  if (v62)
  {
    v63 = *v61;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(a1 + v60);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v66);
      v67 = sub_232BF7228();
      sub_232BF734C(v67);
    }

    v68 = v265;
    sub_232B13F5C(v65 + 16, &v269);
    *(v65 + 16) = v63;
    *(v65 + 24) = v62;
  }

  else
  {

    v68 = v265;
  }

  v70 = v266;
  v71 = &v266[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_subHeadline];
  v72 = sub_232BCA1AC(v69, v302);
  v73 = *(v71 + 1);
  if (v73)
  {
    sub_232BF7464();
    v74 = sub_232BF742C();
    v75 = *(a1 + v60);
    if ((v74 & 1) == 0)
    {
      v76 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v76);
      v77 = sub_232BF7228();
      sub_232BF734C(v77);
    }

    sub_232B13F5C(v75 + 32, &v270);
    *(v75 + 32) = v70;
    *(v75 + 40) = v73;

    v70 = v266;
  }

  v78 = &v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_version];
  v79 = sub_232BCA1AC(v72, v301);
  v80 = *(v78 + 1);
  if (v80)
  {
    sub_232BF7464();
    v81 = sub_232BF742C();
    v82 = *(a1 + v60);
    if ((v81 & 1) == 0)
    {
      v83 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v83);
      v84 = sub_232BF7228();
      sub_232BF734C(v84);
    }

    sub_232B13F5C(v82 + 48, &v271);
    *(v82 + 48) = v70;
    *(v82 + 56) = v80;

    v70 = v266;
  }

  v85 = &v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
  v86 = sub_232BCA1AC(v79, v300);
  v87 = *(v85 + 1);
  if (v87)
  {
    sub_232BF7464();
    v88 = sub_232BF742C();
    v89 = *(a1 + v60);
    if ((v88 & 1) == 0)
    {
      v90 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v90);
      v91 = sub_232BF7228();
      sub_232BF734C(v91);
    }

    sub_232B13F5C(v89 + 64, &v272);
    *(v89 + 64) = v70;
    *(v89 + 72) = v87;

    v70 = v266;
  }

  v92 = &v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_abstract];
  v93 = sub_232BCA1AC(v86, v299);
  v94 = *(v92 + 1);
  if (v94)
  {
    sub_232BF7464();
    v95 = sub_232BF742C();
    v96 = *(a1 + v60);
    if ((v95 & 1) == 0)
    {
      v97 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v97);
      v98 = sub_232BF7228();
      sub_232BF734C(v98);
    }

    sub_232B13F5C(v96 + 80, &v273);
    *(v96 + 80) = v70;
    *(v96 + 88) = v94;

    v70 = v266;
  }

  v99 = &v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_comment];
  v100 = sub_232BCA1AC(v93, v298);
  v101 = *(v99 + 1);
  if (v101)
  {
    sub_232BF7464();
    v102 = sub_232BF742C();
    v103 = *(a1 + v60);
    if ((v102 & 1) == 0)
    {
      v104 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v104);
      v105 = sub_232BF7228();
      sub_232BF734C(v105);
    }

    sub_232B13F5C(v103 + 96, &v274);
    *(v103 + 96) = v70;
    *(v103 + 104) = v101;

    v70 = v266;
  }

  v106 = &v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  v107 = sub_232BCA1AC(v100, &v297);
  v108 = *(v106 + 1);
  if (v108)
  {
    sub_232BF7464();
    v109 = sub_232BF742C();
    v110 = *(a1 + v60);
    if ((v109 & 1) == 0)
    {
      v111 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v111);
      v112 = sub_232BF7228();
      sub_232BF734C(v112);
    }

    sub_232B13F5C(v110 + 112, &v275);
    *(v110 + 112) = v70;
    *(v110 + 120) = v108;

    v70 = v266;
  }

  v113 = &v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_inLanguage];
  sub_232BCA1AC(v107, &v296);
  v114 = *(v113 + 1);
  if (v114)
  {
    sub_232BF7464();
    v115 = sub_232BF742C();
    v116 = *(a1 + v60);
    if ((v115 & 1) == 0)
    {
      v117 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v117);
      v118 = sub_232BF7228();
      sub_232BF734C(v118);
    }

    sub_232B13F5C(v116 + 128, &v276);
    *(v116 + 128) = v70;
    *(v116 + 136) = v114;

    v70 = v266;
  }

  v119 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
  v120 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords + v70, &v295);
  v121 = *&v119[v70];
  if (v121)
  {

    v122 = sub_232BF742C();
    v123 = *(a1 + v60);
    if ((v122 & 1) == 0)
    {
      v124 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v124);
      v125 = sub_232BF7228();
      sub_232BF734C(v125);
    }

    sub_232B13F5C(v123 + 144, &v277);
    *(v123 + 144) = v121;
  }

  v126 = &v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
  sub_232BCA1AC(v120, &v294);
  v127 = *(v126 + 1);
  if (v127)
  {
    sub_232BF7464();
    v128 = sub_232BF742C();
    v129 = *(a1 + v60);
    if ((v128 & 1) == 0)
    {
      v130 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v130);
      v131 = sub_232BF7228();
      sub_232BF734C(v131);
    }

    sub_232B13F5C(v129 + 152, &v278);
    *(v129 + 152) = v70;
    *(v129 + 160) = v127;

    v70 = v266;
  }

  sub_232B13F74(&v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url], &v293);
  sub_232BF5EEC();
  sub_232B351B0(v51, 1, v52);
  if (v132)
  {
    sub_232B13790(v51, &qword_27DDC6AD8, &unk_232CF82F0);
    v133 = v267;
  }

  else
  {
    (*(v264 + 32))(v246, v51, v52);
    v240 = sub_232CE8B60();
    v135 = v134;
    v136 = v267;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v138 = sub_232B37B20();
      v139(v138);
      v140 = *(a1 + v136);
    }

    else
    {
      v141 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v141);
      sub_232BF73E8();

      v140 = sub_232B29EB8(v142);
      v143 = sub_232B37B20();
      v144(v143);
      v70 = v266;

      *(a1 + v136) = v140;
    }

    sub_232B13F5C((v140 + 21), &v279);
    v140[21] = v240;
    v140[22] = v135;

    v133 = v267;
    v68 = v265;
  }

  sub_232B13F74(&v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_thumbnailUrl], &v292);
  v145 = v255;
  sub_232BF5EEC();
  sub_232B351B0(v145, 1, v52);
  v146 = v264;
  if (v132)
  {
    sub_232B13790(v145, &qword_27DDC6AD8, &unk_232CF82F0);
    v147 = v258;
  }

  else
  {
    (*(v264 + 32))(v256, v145, v52);
    v148 = sub_232CE8B60();
    v150 = v149;
    v151 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v52;
    if (v151)
    {
      v152 = sub_232BF74C8();
      v153(v152, v52);
      v154 = *(a1 + v133);
    }

    else
    {
      v155 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v155);

      v154 = sub_232B29EB8(v156);
      v157 = sub_232BF74C8();
      v158(v157, v52);
      v133 = v267;

      *(a1 + v133) = v154;
    }

    sub_232B13F5C((v154 + 23), &v280);
    v154[23] = v148;
    v154[24] = v150;

    v68 = v265;
    v70 = v266;
    v146 = v264;
    v147 = v258;
    v52 = v241;
  }

  sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_significantLink + v70, &v291);
  v159 = v257;
  sub_232BF5EEC();
  v160 = sub_232B5F000();
  sub_232B351B0(v160, v161, v52);
  if (v132)
  {
    sub_232B13790(v159, &qword_27DDC6AD8, &unk_232CF82F0);
  }

  else
  {
    (*(v146 + 32))(v147, v159, v52);
    v162 = sub_232CE8B60();
    v164 = v163;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v166 = sub_232B37B20();
      v167(v166);
      v168 = *(a1 + v133);
    }

    else
    {
      v169 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v169);

      v168 = sub_232B29EB8(v170);
      v171 = sub_232B37B20();
      v172(v171);
      v133 = v267;

      *(a1 + v133) = v168;
    }

    sub_232B13F5C((v168 + 25), &v281);
    v168[25] = v162;
    v168[26] = v164;

    v68 = v265;
    v70 = v266;
  }

  v174 = v262;
  v173 = v263;
  v175 = v261;
  sub_232B13F74(&v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated], &v290);
  v176 = v259;
  sub_232BF5EEC();
  v177 = sub_232B5F000();
  sub_232B351B0(v177, v178, v173);
  if (v132)
  {
    sub_232B13790(v176, &qword_27DDC6A80, &qword_232CF6D30);
  }

  else
  {
    (*(v174 + 32))(v68, v176, v173);
    sub_232CE8CB0();
    v180 = v179;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v182 = sub_232BF74C8();
      v183(v182, v173);
      v184 = *(a1 + v133);
    }

    else
    {
      v185 = sub_232BF7500();
      sub_232BF73F4(v185);
      sub_232BF73E8();

      v184 = sub_232B29EB8(v186);
      v187 = sub_232BF74C8();
      v188(v187, v173);
      v70 = v266;

      *(a1 + v133) = v184;
    }

    sub_232B13F5C((v184 + 27), &v282);
    v184[27] = v180;
  }

  sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateModified + v70, &v289);
  v189 = v260;
  sub_232BF5EEC();
  v190 = sub_232B5F000();
  sub_232B351B0(v190, v191, v173);
  if (v132)
  {
    sub_232B13790(v189, &qword_27DDC6A80, &qword_232CF6D30);
  }

  else
  {
    (*(v174 + 32))(v175, v189, v173);
    sub_232CE8CB0();
    v193 = v192;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v174 + 8))(v175, v173);
      v195 = *(a1 + v133);
    }

    else
    {
      v196 = sub_232BF7500();
      sub_232BF73F4(v196);
      sub_232BF73E8();

      v195 = sub_232B29EB8(v197);
      (*(v174 + 8))(v175, v173);
      v70 = v266;

      *(a1 + v133) = v195;
    }

    sub_232B13F5C((v195 + 28), &v283);
    v195[28] = v193;
  }

  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
  sub_232B13F74(&v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements], &v288);
  v51 = *&v1[v70];
  if (v51)
  {
    v265 = a1;
    v52 = sub_232B26B10();
    a1 = v51 & 0xC000000000000001;
    v60 = v51 & 0xFFFFFFFFFFFFFF8;

    v198 = 0;
    v199 = MEMORY[0x277D84F90];
    while (v52 != v198)
    {
      if (a1)
      {
        v200 = MEMORY[0x2383922C0](v198, v51);
      }

      else
      {
        if (v198 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_111;
        }

        v200 = *(v51 + 8 * v198 + 32);
      }

      v1 = v200;
      if (__OFADD__(v198, 1))
      {
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      sub_232B44618(v33);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232B36814();
        v199 = v202;
      }

      v201 = *(v199 + 16);
      v1 = (v201 + 1);
      if (v201 >= *(v199 + 24) >> 1)
      {
        sub_232B36814();
        v199 = v203;
      }

      *(v199 + 16) = v1;
      sub_232BF7444();
      sub_232BF61BC();
      ++v198;
    }

    a1 = v265;
    v133 = v267;
    v204 = swift_isUniquelyReferenced_nonNull_native();
    v205 = *(a1 + v133);
    if ((v204 & 1) == 0)
    {
      v206 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
      sub_232BF73F4(v206);
      v205 = sub_232BF7228();
      *(a1 + v133) = v205;
    }

    sub_232B13F5C((v205 + 29), &v284);
    v205[29] = v199;

    v70 = v266;
  }

  v207 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F74(&v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData], &v287);
  v208 = *&v70[v207];
  if (!v208)
  {
    v210 = v251;
    sub_232B55484();
    sub_232B12504(v217, v218, v219, v220);
    v215 = v254;
    goto LABEL_99;
  }

  v209 = v208;
  sub_232B39C78(v249);

  v210 = v251;
  v211 = v252;
  v212 = swift_dynamicCast();
  sub_232B12504(v210, v212 ^ 1u, 1, v211);
  v213 = sub_232B5F000();
  sub_232B351B0(v213, v214, v211);
  v215 = v254;
  if (v132)
  {
LABEL_99:
    sub_232B13790(v210, &qword_27DDC69B0, &qword_232CF6998);
    goto LABEL_102;
  }

  sub_232BF61BC();
  sub_232BF712C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BF7380();
    v216 = *(a1 + v133);
  }

  else
  {
    v221 = sub_232BF7500();
    sub_232BF73F4(v221);
    sub_232BF73E8();

    v216 = sub_232B29EB8(v222);
    sub_232BF7380();

    *(a1 + v133) = v216;
  }

  sub_232BF71B4();
  v223 = v243;
  sub_232BF61BC();
  sub_232B12504(v223, 0, 1, v211);
  sub_232B207D4(v216 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentHtmldata, v286);
  sub_232BF6164();
  swift_endAccess();
  v70 = v266;
LABEL_102:
  v224 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F74(&v70[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData], v286);
  v225 = *&v70[v224];
  if (!v225)
  {
    v227 = v253;
    sub_232B55484();
    sub_232B12504(v232, v233, v234, v215);
    return sub_232B13790(v227, &qword_27DDC69A0, &qword_232CF6990);
  }

  v226 = v225;
  sub_232B3EB74(v250);

  v227 = v253;
  v228 = swift_dynamicCast();
  sub_232B12504(v227, v228 ^ 1u, 1, v215);
  v229 = sub_232B5F000();
  sub_232B351B0(v229, v230, v215);
  if (v132)
  {
    return sub_232B13790(v227, &qword_27DDC69A0, &qword_232CF6990);
  }

  sub_232BF61BC();
  sub_232BF712C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BF7358();
    v231 = *(a1 + v133);
  }

  else
  {
    v236 = sub_232BF7500();
    sub_232BF73F4(v236);
    sub_232BF73E8();

    v231 = sub_232B29EB8(v237);
    sub_232BF7358();

    *(a1 + v133) = v231;
  }

  sub_232BF7184();
  v238 = v245;
  sub_232BF61BC();
  sub_232B12504(v238, 0, 1, v215);
  sub_232B207D4(v231 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentMessageData, &v285);
  sub_232BF6164();
  return swift_endAccess();
}

uint64_t sub_232BF5EEC()
{
  sub_232B2D12C();
  sub_232B124A8(v1, v2);
  sub_232B13F24();
  v3 = sub_232B2080C();
  v4(v3);
  return v0;
}

id DURawDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DURawDocument(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232BF60E4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232BF073C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232BF610C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232BF6164()
{
  sub_232B2D12C();
  sub_232B124A8(v1, v2);
  sub_232B13F24();
  v3 = sub_232B2080C();
  v4(v3);
  return v0;
}

uint64_t sub_232BF61BC()
{
  sub_232B2D12C();
  v1(0);
  sub_232B13F24();
  v2 = sub_232B2080C();
  v3(v2);
  return v0;
}

void sub_232BF6238(uint64_t a1)
{
  sub_232B5EE58(319, &qword_2814E25E8, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_232B5EE58(319, &qword_2814E25E0, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_232BF70E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232BF712C()
{
  sub_232B2D12C();
  v1(0);
  sub_232B13F24();
  v2 = sub_232B2080C();
  v3(v2);
  return v0;
}

uint64_t sub_232BF71EC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void *sub_232BF7228()
{

  return sub_232B29EB8(v0);
}

uint64_t sub_232BF7254(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

double sub_232BF7270()
{
  *v2 = v0;
  v2[1] = v1;

  return result;
}

double sub_232BF728C()
{
  *v2 = v1;
  v2[1] = v0;

  return result;
}

uint64_t sub_232BF72A8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232BF72C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232CEA750();
}

uint64_t sub_232BF7358()
{

  return sub_232BF610C(v0, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
}

uint64_t sub_232BF7380()
{

  return sub_232BF610C(v0, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
}

uint64_t sub_232BF73CC@<X0>(uint64_t a1@<X8>)
{

  return sub_232B13790(v1 + a1, v2, v3);
}

uint64_t sub_232BF73F4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_232BF740C()
{

  return sub_232BF6164();
}

uint64_t sub_232BF742C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

double sub_232BF7464()
{

  return result;
}

uint64_t sub_232BF747C()
{

  return sub_232B13790(v2, v0, v1);
}

uint64_t sub_232BF7498()
{

  return sub_232CE8BD0();
}

uint64_t sub_232BF74E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232CE9CF0();
}

uint64_t sub_232BF7500()
{

  return type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
}

id DUResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_232BF7580(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BF7658(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BF7618(v1);
}

void *sub_232BF7708(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BF77E0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BF77A0(v1);
}

void *sub_232BF7890(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BF7968(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BF7928(v1);
}

void *sub_232BF7A18(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BF7AF0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BF7AB0(v1);
}

void *sub_232BF7BA0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BF7C78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BF7C38(v1);
}

void *sub_232BF7D28(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BF7E00(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BF7DC0(v1);
}

void *sub_232BF7EB0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BF7F88(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BF7F48(v1);
}

void *sub_232BF8330(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BF8408(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BF83C8(v1);
}

char *sub_232BF8484(uint64_t a1)
{
  v154 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  MEMORY[0x28223BE20](v154);
  v140 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  MEMORY[0x28223BE20](v3 - 8);
  v139 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v153 = &v127 - v6;
  v152 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  MEMORY[0x28223BE20](v152);
  v138 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  MEMORY[0x28223BE20](v8 - 8);
  v137 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v151 = &v127 - v11;
  v149 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  MEMORY[0x28223BE20](v149);
  v136 = (&v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  MEMORY[0x28223BE20](v13 - 8);
  v135 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v148 = &v127 - v16;
  v147 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  MEMORY[0x28223BE20](v147);
  v134 = (&v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  MEMORY[0x28223BE20](v18 - 8);
  v133 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v146 = &v127 - v21;
  v145 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  MEMORY[0x28223BE20](v145);
  v132 = (&v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  MEMORY[0x28223BE20](v23 - 8);
  v131 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v144 = &v127 - v26;
  v156 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v156);
  v130 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v28 - 8);
  v129 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v143 = &v127 - v31;
  v142 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  MEMORY[0x28223BE20](v142);
  v128 = (&v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  MEMORY[0x28223BE20](v33 - 8);
  v127 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v141 = &v127 - v36;
  v37 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  MEMORY[0x28223BE20](v37);
  v39 = (&v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v127 - v44;
  v46 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0);
  MEMORY[0x28223BE20](v46);
  v48 = &v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = [objc_allocWithZone(type metadata accessor for DUResponse()) init];
  v155 = a1;
  sub_232BFF5C8();
  v150 = v48;
  swift_beginAccess();
  sub_232BF5EEC();
  v49 = sub_232B12480(v45, 1, v37);
  sub_232B13790(v45, &qword_27DDC7A40, &unk_232CFE960);
  if (v49 != 1)
  {
    sub_232BF5EEC();
    if (sub_232B12480(v42, 1, v37) == 1)
    {
      v50 = MEMORY[0x277D84F90];
      *v39 = MEMORY[0x277D84F90];
      v39[1] = v50;
      sub_232CE9330();
      sub_232B12504(v39 + *(v37 + 28), 1, 1, v156);
      if (sub_232B12480(v42, 1, v37) != 1)
      {
        sub_232B13790(v42, &qword_27DDC7A40, &unk_232CFE960);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    sub_232BFBB1C();
    v52 = v51;
    v53 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
    v54 = v157;
    swift_beginAccess();
    v55 = *&v54[v53];
    *&v54[v53] = v52;
  }

  swift_beginAccess();
  v56 = v141;
  sub_232BF5EEC();
  v57 = v142;
  v58 = sub_232B12480(v56, 1, v142);
  sub_232B13790(v56, &qword_27DDC7A38, &unk_232CFBAD0);
  v59 = v156;
  v60 = v145;
  if (v58 != 1)
  {
    v61 = v127;
    sub_232BF5EEC();
    if (sub_232B12480(v61, 1, v57) == 1)
    {
      v62 = v128;
      *v128 = MEMORY[0x277D84F90];
      sub_232CE9330();
      sub_232B12504(v62 + *(v57 + 24), 1, 1, v59);
      if (sub_232B12480(v61, 1, v57) != 1)
      {
        sub_232B13790(v61, &qword_27DDC7A38, &unk_232CFBAD0);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    sub_232BFC45C();
    v64 = v63;
    v65 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
    v66 = v157;
    swift_beginAccess();
    v67 = *&v66[v65];
    *&v66[v65] = v64;
  }

  swift_beginAccess();
  v68 = v59;
  v69 = v143;
  sub_232BF5EEC();
  v70 = v68;
  LODWORD(v68) = sub_232B12480(v69, 1, v68);
  sub_232B13790(v69, &qword_27DDC67C8, &unk_232CF5E70);
  if (v68 != 1)
  {
    v71 = v129;
    sub_232BF5EEC();
    if (sub_232B12480(v71, 1, v70) == 1)
    {
      v72 = v130;
      sub_232CE9330();
      v73 = &v72[*(v70 + 20)];
      *v73 = 0;
      *(v73 + 1) = 0;
      if (sub_232B12480(v71, 1, v70) != 1)
      {
        sub_232B13790(v71, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    v74 = sub_232B4C530();
    v75 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo;
    v76 = v157;
    swift_beginAccess();
    v77 = *&v76[v75];
    *&v76[v75] = v74;
  }

  swift_beginAccess();
  v78 = v144;
  sub_232BF5EEC();
  v79 = sub_232B12480(v78, 1, v60);
  sub_232B13790(v78, &qword_27DDC7828, &unk_232CFBAC0);
  v80 = v70;
  if (v79 != 1)
  {
    v81 = v131;
    sub_232BF5EEC();
    if (sub_232B12480(v81, 1, v60) == 1)
    {
      v82 = v132;
      *v132 = MEMORY[0x277D84F90];
      sub_232CE9330();
      sub_232B12504(v82 + *(v60 + 24), 1, 1, v70);
      if (sub_232B12480(v81, 1, v60) != 1)
      {
        sub_232B13790(v81, &qword_27DDC7828, &unk_232CFBAC0);
      }
    }

    else
    {
      v82 = v132;
      sub_232BFECF4();
    }

    v83 = sub_232BD8A74(v82);
    v84 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
    v85 = v157;
    swift_beginAccess();
    v86 = *&v85[v84];
    *&v85[v84] = v83;
  }

  swift_beginAccess();
  v87 = v146;
  sub_232BF5EEC();
  v88 = v147;
  v89 = sub_232B12480(v87, 1, v147);
  sub_232B13790(v87, &qword_27DDC7A30, &unk_232CFE950);
  v90 = v89 == 1;
  v91 = v149;
  if (!v90)
  {
    v92 = v133;
    sub_232BF5EEC();
    if (sub_232B12480(v92, 1, v88) == 1)
    {
      v93 = v134;
      *v134 = MEMORY[0x277D84F90];
      sub_232CE9330();
      sub_232B12504(v93 + *(v88 + 24), 1, 1, v80);
      if (sub_232B12480(v92, 1, v88) != 1)
      {
        sub_232B13790(v92, &qword_27DDC7A30, &unk_232CFE950);
      }
    }

    else
    {
      v93 = v134;
      sub_232BFECF4();
    }

    v94 = sub_232BFCB90(v93);
    v95 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults;
    v96 = v157;
    swift_beginAccess();
    v97 = *&v96[v95];
    *&v96[v95] = v94;
  }

  swift_beginAccess();
  v98 = v148;
  sub_232BF5EEC();
  v99 = v91;
  v100 = sub_232B12480(v98, 1, v91);
  sub_232B13790(v98, &qword_27DDC7008, &unk_232CFBAB0);
  v101 = v153;
  if (v100 != 1)
  {
    v102 = v135;
    sub_232BF5EEC();
    if (sub_232B12480(v102, 1, v99) == 1)
    {
      v103 = v136;
      *v136 = MEMORY[0x277D84F90];
      sub_232CE9330();
      sub_232B12504(v103 + *(v99 + 24), 1, 1, v156);
      if (sub_232B12480(v102, 1, v99) != 1)
      {
        sub_232B13790(v102, &qword_27DDC7008, &unk_232CFBAB0);
      }
    }

    else
    {
      v103 = v136;
      sub_232BFECF4();
    }

    v104 = sub_232B4B13C(v103);
    v105 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
    v106 = v157;
    swift_beginAccess();
    v107 = *&v106[v105];
    *&v106[v105] = v104;
  }

  swift_beginAccess();
  v108 = v151;
  sub_232BF5EEC();
  v109 = v152;
  v110 = sub_232B12480(v108, 1, v152);
  sub_232B13790(v108, &qword_27DDC7788, &qword_232CFA9A0);
  if (v110 != 1)
  {
    v111 = v137;
    sub_232BF5EEC();
    if (sub_232B12480(v111, 1, v109) == 1)
    {
      v112 = v138;
      sub_232CE9330();
      v113 = *(v109 + 20);
      if (qword_27DDC63F0 != -1)
      {
        swift_once();
      }

      *&v112[v113] = qword_27DDC7ED0;
      v114 = sub_232B12480(v111, 1, v109);

      if (v114 != 1)
      {
        sub_232B13790(v111, &qword_27DDC7788, &qword_232CFA9A0);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    type metadata accessor for DUFoundInEventResult();
    v115 = sub_232BC5430();
    v116 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
    v117 = v157;
    swift_beginAccess();
    v118 = *&v117[v116];
    *&v117[v116] = v115;
  }

  swift_beginAccess();
  sub_232BF5EEC();
  v119 = v154;
  if (sub_232B12480(v101, 1, v154) == 1)
  {
    sub_232BFF570(v155, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    sub_232B13790(v101, &qword_27DDC7588, &qword_232CFA250);
    sub_232BFF570(v150, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
  }

  else
  {
    sub_232B13790(v101, &qword_27DDC7588, &qword_232CFA250);
    v120 = v139;
    sub_232BF5EEC();
    if (sub_232B12480(v120, 1, v119) == 1)
    {
      v121 = v140;
      sub_232CE9330();
      *(v121 + v119[5]) = 2;
      *(v121 + v119[6]) = 2;
      *(v121 + v119[7]) = 2;
      *(v121 + v119[8]) = 2;
      *(v121 + v119[9]) = 2;
      if (sub_232B12480(v120, 1, v119) != 1)
      {
        sub_232B13790(v120, &qword_27DDC7588, &qword_232CFA250);
      }
    }

    else
    {
      v121 = v140;
      sub_232BFECF4();
    }

    v122 = sub_232BAEAB4(v121);
    sub_232BFF570(v155, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    sub_232BFF570(v150, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    v123 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult;
    v124 = v157;
    swift_beginAccess();
    v125 = *&v124[v123];
    *&v124[v123] = v122;
  }

  return v157;
}

Class sub_232BF979C(uint64_t a1)
{
  v154 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  MEMORY[0x28223BE20](v154);
  v140 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  MEMORY[0x28223BE20](v3 - 8);
  v139 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v153 = &v127 - v6;
  v152 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  MEMORY[0x28223BE20](v152);
  v138 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  MEMORY[0x28223BE20](v8 - 8);
  v137 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v151 = &v127 - v11;
  v149 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  MEMORY[0x28223BE20](v149);
  v136 = (&v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  MEMORY[0x28223BE20](v13 - 8);
  v135 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v148 = &v127 - v16;
  v147 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  MEMORY[0x28223BE20](v147);
  v134 = (&v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  MEMORY[0x28223BE20](v18 - 8);
  v133 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v146 = &v127 - v21;
  v145 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  MEMORY[0x28223BE20](v145);
  v132 = (&v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  MEMORY[0x28223BE20](v23 - 8);
  v131 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v144 = &v127 - v26;
  v156 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v156);
  v130 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v28 - 8);
  v129 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v143 = &v127 - v31;
  v142 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  MEMORY[0x28223BE20](v142);
  v128 = (&v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  MEMORY[0x28223BE20](v33 - 8);
  v127 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v141 = &v127 - v36;
  v37 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  MEMORY[0x28223BE20](v37);
  v39 = (&v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v127 - v44;
  v46 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0);
  MEMORY[0x28223BE20](v46);
  v48 = &v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = [objc_allocWithZone(v157) init];
  v155 = a1;
  sub_232BFF5C8();
  v150 = v48;
  swift_beginAccess();
  sub_232BF5EEC();
  v49 = sub_232B12480(v45, 1, v37);
  sub_232B13790(v45, &qword_27DDC7A40, &unk_232CFE960);
  if (v49 != 1)
  {
    sub_232BF5EEC();
    if (sub_232B12480(v42, 1, v37) == 1)
    {
      v50 = MEMORY[0x277D84F90];
      *v39 = MEMORY[0x277D84F90];
      v39[1] = v50;
      sub_232CE9330();
      sub_232B12504(v39 + *(v37 + 28), 1, 1, v156);
      if (sub_232B12480(v42, 1, v37) != 1)
      {
        sub_232B13790(v42, &qword_27DDC7A40, &unk_232CFE960);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    sub_232BFBB1C();
    v52 = v51;
    v53 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
    v54 = v157;
    swift_beginAccess();
    v55 = *(v54 + v53);
    *(v54 + v53) = v52;
  }

  swift_beginAccess();
  v56 = v141;
  sub_232BF5EEC();
  v57 = v142;
  v58 = sub_232B12480(v56, 1, v142);
  sub_232B13790(v56, &qword_27DDC7A38, &unk_232CFBAD0);
  v59 = v156;
  v60 = v145;
  if (v58 != 1)
  {
    v61 = v127;
    sub_232BF5EEC();
    if (sub_232B12480(v61, 1, v57) == 1)
    {
      v62 = v128;
      *v128 = MEMORY[0x277D84F90];
      sub_232CE9330();
      sub_232B12504(v62 + *(v57 + 24), 1, 1, v59);
      if (sub_232B12480(v61, 1, v57) != 1)
      {
        sub_232B13790(v61, &qword_27DDC7A38, &unk_232CFBAD0);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    sub_232BFC45C();
    v64 = v63;
    v65 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
    v66 = v157;
    swift_beginAccess();
    v67 = *(v66 + v65);
    *(v66 + v65) = v64;
  }

  swift_beginAccess();
  v68 = v59;
  v69 = v143;
  sub_232BF5EEC();
  v70 = v68;
  LODWORD(v68) = sub_232B12480(v69, 1, v68);
  sub_232B13790(v69, &qword_27DDC67C8, &unk_232CF5E70);
  if (v68 != 1)
  {
    v71 = v129;
    sub_232BF5EEC();
    if (sub_232B12480(v71, 1, v70) == 1)
    {
      v72 = v130;
      sub_232CE9330();
      v73 = &v72[*(v70 + 20)];
      *v73 = 0;
      *(v73 + 1) = 0;
      if (sub_232B12480(v71, 1, v70) != 1)
      {
        sub_232B13790(v71, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    v74 = sub_232B4C530();
    v75 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo;
    v76 = v157;
    swift_beginAccess();
    v77 = *(v76 + v75);
    *(v76 + v75) = v74;
  }

  swift_beginAccess();
  v78 = v144;
  sub_232BF5EEC();
  v79 = sub_232B12480(v78, 1, v60);
  sub_232B13790(v78, &qword_27DDC7828, &unk_232CFBAC0);
  v80 = v70;
  if (v79 != 1)
  {
    v81 = v131;
    sub_232BF5EEC();
    if (sub_232B12480(v81, 1, v60) == 1)
    {
      v82 = v132;
      *v132 = MEMORY[0x277D84F90];
      sub_232CE9330();
      sub_232B12504(v82 + *(v60 + 24), 1, 1, v70);
      if (sub_232B12480(v81, 1, v60) != 1)
      {
        sub_232B13790(v81, &qword_27DDC7828, &unk_232CFBAC0);
      }
    }

    else
    {
      v82 = v132;
      sub_232BFECF4();
    }

    v83 = sub_232BD8A74(v82);
    v84 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
    v85 = v157;
    swift_beginAccess();
    v86 = *(v85 + v84);
    *(v85 + v84) = v83;
  }

  swift_beginAccess();
  v87 = v146;
  sub_232BF5EEC();
  v88 = v147;
  v89 = sub_232B12480(v87, 1, v147);
  sub_232B13790(v87, &qword_27DDC7A30, &unk_232CFE950);
  v90 = v89 == 1;
  v91 = v149;
  if (!v90)
  {
    v92 = v133;
    sub_232BF5EEC();
    if (sub_232B12480(v92, 1, v88) == 1)
    {
      v93 = v134;
      *v134 = MEMORY[0x277D84F90];
      sub_232CE9330();
      sub_232B12504(v93 + *(v88 + 24), 1, 1, v80);
      if (sub_232B12480(v92, 1, v88) != 1)
      {
        sub_232B13790(v92, &qword_27DDC7A30, &unk_232CFE950);
      }
    }

    else
    {
      v93 = v134;
      sub_232BFECF4();
    }

    v94 = sub_232BFCB90(v93);
    v95 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults;
    v96 = v157;
    swift_beginAccess();
    v97 = *(v96 + v95);
    *(v96 + v95) = v94;
  }

  swift_beginAccess();
  v98 = v148;
  sub_232BF5EEC();
  v99 = v91;
  v100 = sub_232B12480(v98, 1, v91);
  sub_232B13790(v98, &qword_27DDC7008, &unk_232CFBAB0);
  v101 = v153;
  if (v100 != 1)
  {
    v102 = v135;
    sub_232BF5EEC();
    if (sub_232B12480(v102, 1, v99) == 1)
    {
      v103 = v136;
      *v136 = MEMORY[0x277D84F90];
      sub_232CE9330();
      sub_232B12504(v103 + *(v99 + 24), 1, 1, v156);
      if (sub_232B12480(v102, 1, v99) != 1)
      {
        sub_232B13790(v102, &qword_27DDC7008, &unk_232CFBAB0);
      }
    }

    else
    {
      v103 = v136;
      sub_232BFECF4();
    }

    v104 = sub_232B4B13C(v103);
    v105 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
    v106 = v157;
    swift_beginAccess();
    v107 = *(v106 + v105);
    *(v106 + v105) = v104;
  }

  swift_beginAccess();
  v108 = v151;
  sub_232BF5EEC();
  v109 = v152;
  v110 = sub_232B12480(v108, 1, v152);
  sub_232B13790(v108, &qword_27DDC7788, &qword_232CFA9A0);
  if (v110 != 1)
  {
    v111 = v137;
    sub_232BF5EEC();
    if (sub_232B12480(v111, 1, v109) == 1)
    {
      v112 = v138;
      sub_232CE9330();
      v113 = *(v109 + 20);
      if (qword_27DDC63F0 != -1)
      {
        swift_once();
      }

      *&v112[v113] = qword_27DDC7ED0;
      v114 = sub_232B12480(v111, 1, v109);

      if (v114 != 1)
      {
        sub_232B13790(v111, &qword_27DDC7788, &qword_232CFA9A0);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    type metadata accessor for DUFoundInEventResult();
    v115 = sub_232BC5430();
    v116 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
    v117 = v157;
    swift_beginAccess();
    v118 = *(v117 + v116);
    *(v117 + v116) = v115;
  }

  swift_beginAccess();
  sub_232BF5EEC();
  v119 = v154;
  if (sub_232B12480(v101, 1, v154) == 1)
  {
    sub_232BFF570(v155, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    sub_232B13790(v101, &qword_27DDC7588, &qword_232CFA250);
    sub_232BFF570(v150, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
  }

  else
  {
    sub_232B13790(v101, &qword_27DDC7588, &qword_232CFA250);
    v120 = v139;
    sub_232BF5EEC();
    if (sub_232B12480(v120, 1, v119) == 1)
    {
      v121 = v140;
      sub_232CE9330();
      *(v121 + v119[5]) = 2;
      *(v121 + v119[6]) = 2;
      *(v121 + v119[7]) = 2;
      *(v121 + v119[8]) = 2;
      *(v121 + v119[9]) = 2;
      if (sub_232B12480(v120, 1, v119) != 1)
      {
        sub_232B13790(v120, &qword_27DDC7588, &qword_232CFA250);
      }
    }

    else
    {
      v121 = v140;
      sub_232BFECF4();
    }

    v122 = sub_232BAEAB4(v121);
    sub_232BFF570(v155, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    sub_232BFF570(v150, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    v123 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult;
    v124 = v157;
    swift_beginAccess();
    v125 = *(v124 + v123);
    *(v124 + v123) = v122;
  }

  return v157;
}

void DUResponse.__allocating_init<A>(proto:)()
{
  sub_232B35110();
  v3 = v0;
  v5 = v4;
  v6 = sub_232B37B54();
  v209 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(v6);
  sub_232B13F24();
  MEMORY[0x28223BE20](v7);
  sub_232BFF638();
  v195 = v8;
  v9 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  sub_232B20714();
  v194 = v11;
  sub_232B20600();
  MEMORY[0x28223BE20](v12);
  sub_232B55558();
  v208 = v13;
  v14 = sub_232B554F0();
  v207 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(v14);
  sub_232B13F24();
  MEMORY[0x28223BE20](v15);
  sub_232BFF638();
  v193 = v16;
  v17 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  v18 = sub_232B2D120(v17);
  MEMORY[0x28223BE20](v18);
  sub_232B20714();
  v192 = v19;
  sub_232B20600();
  MEMORY[0x28223BE20](v20);
  sub_232B55558();
  v206 = v21;
  v22 = sub_232B554F0();
  v205 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(v22);
  sub_232B13F24();
  MEMORY[0x28223BE20](v23);
  sub_232BFF638();
  v191 = v24;
  v25 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  v26 = sub_232B2D120(v25);
  MEMORY[0x28223BE20](v26);
  sub_232B20714();
  v190 = v27;
  sub_232B20600();
  MEMORY[0x28223BE20](v28);
  sub_232B55558();
  v204 = v29;
  v30 = sub_232B554F0();
  v203 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(v30);
  sub_232B13F24();
  MEMORY[0x28223BE20](v31);
  sub_232BFF638();
  v189 = v32;
  v33 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  v34 = sub_232B2D120(v33);
  MEMORY[0x28223BE20](v34);
  sub_232B20714();
  v188 = v35;
  sub_232B20600();
  MEMORY[0x28223BE20](v36);
  sub_232B55558();
  v202 = v37;
  v38 = sub_232B554F0();
  v201 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(v38);
  sub_232B13F24();
  MEMORY[0x28223BE20](v39);
  sub_232BFF638();
  v187 = v40;
  v41 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  v42 = sub_232B2D120(v41);
  MEMORY[0x28223BE20](v42);
  sub_232B20714();
  v186 = v43;
  sub_232B20600();
  MEMORY[0x28223BE20](v44);
  sub_232B55558();
  v200 = v45;
  v46 = sub_232B554F0();
  v210 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(v46);
  sub_232B13F24();
  MEMORY[0x28223BE20](v47);
  sub_232BFF638();
  v185 = v48;
  v49 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v50 = sub_232B2D120(v49);
  MEMORY[0x28223BE20](v50);
  sub_232B20714();
  v184 = v51;
  sub_232B20600();
  MEMORY[0x28223BE20](v52);
  sub_232B55558();
  v199 = v53;
  v54 = sub_232B554F0();
  v198 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(v54);
  sub_232B13F24();
  MEMORY[0x28223BE20](v55);
  sub_232BFF638();
  v183 = v56;
  v57 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  v58 = sub_232B2D120(v57);
  MEMORY[0x28223BE20](v58);
  sub_232B20714();
  v182 = v59;
  sub_232B20600();
  MEMORY[0x28223BE20](v60);
  sub_232B55558();
  v197 = v61;
  v62 = sub_232B554F0();
  v196 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(v62);
  sub_232B13F24();
  MEMORY[0x28223BE20](v63);
  sub_232BFF638();
  v181 = v64;
  v65 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  v66 = sub_232B2D120(v65);
  MEMORY[0x28223BE20](v66);
  sub_232B20714();
  v180 = v67;
  sub_232B20600();
  MEMORY[0x28223BE20](v68);
  v70 = &v175 - v69;
  v71 = sub_232B124A8(&qword_27DDC7A48, &qword_232CFBAE0);
  v72 = sub_232B2D120(v71);
  MEMORY[0x28223BE20](v72);
  sub_232BFFC14();
  sub_232B350D8();
  v74 = v73;
  MEMORY[0x28223BE20](v75);
  sub_232B20704();
  v78 = v77 - v76;
  v79 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v80);
  sub_232B20704();
  v83 = v82 - v81;
  v84 = [objc_allocWithZone(v3) init];
  (*(v74 + 16))(v78, v1, v5);
  if (swift_dynamicCast())
  {
    v177 = v74;
    v178 = v1;
    v179 = v5;
    sub_232B12504(v2, 0, 1, v79);
    sub_232BFECF4();
    v85 = *(v79 + 20);
    v176 = v83;
    v86 = *(v83 + v85);
    sub_232B13F74(v86 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics, &v227);
    v87 = &qword_27DDC7A40;
    sub_232BF5EEC();
    v88 = v196;
    v89 = sub_232B12480(v70, 1, v196);
    sub_232B13790(v70, &qword_27DDC7A40, &unk_232CFE960);
    v90 = v89 == 1;
    v211 = v84;
    v91 = v210;
    v92 = v201;
    if (!v90)
    {
      v93 = v180;
      sub_232BF5EEC();
      v94 = sub_232BFF878();
      sub_232B351B0(v94, v95, v88);
      if (v90)
      {
        v96 = MEMORY[0x277D84F90];
        v97 = v181;
        *v181 = MEMORY[0x277D84F90];
        v97[1] = v96;
        sub_232CE9330();
        v98 = sub_232BFF824(*(v88 + 28));
        sub_232B12504(v98, v99, v100, v91);
        v101 = sub_232BFF878();
        sub_232B351B0(v101, v102, v88);
        if (!v90)
        {
          sub_232B13790(v93, &qword_27DDC7A40, &unk_232CFE960);
        }
      }

      else
      {
        sub_232BFF694();
        sub_232BFECF4();
      }

      sub_232BFBB1C();
      v107 = v106;
      v108 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
      v87 = v211;
      sub_232B13F5C(v211 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics, &v212);
      v109 = *(v87 + v108);
      *(v87 + v108) = v107;
    }

    sub_232B13F74(v86 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities, &v226);
    sub_232BF7340();
    sub_232BF5EEC();
    v110 = sub_232BFFA98();
    v111 = v198;
    sub_232B12480(v110, v112, v198);
    sub_232BFFAC4();
    v113 = v203;
    if (v87 != 1)
    {
      v114 = v182;
      sub_232BF5EEC();
      sub_232B20598(v114);
      if (v90)
      {
        *v183 = MEMORY[0x277D84F90];
        sub_232CE9330();
        v115 = sub_232BFF824(*(v111 + 24));
        sub_232B12504(v115, v116, v117, v91);
        sub_232B20598(v114);
        if (!v90)
        {
          sub_232B13790(v114, &qword_27DDC7A38, &unk_232CFBAD0);
        }
      }

      else
      {
        sub_232BFF79C();
        sub_232BFECF4();
      }

      sub_232BFC45C();
      v119 = v118;
      v120 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
      v121 = v211;
      sub_232B13F5C(v211 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities, &v213);
      v122 = *(v121 + v120);
      *(v121 + v120) = v119;
    }

    sub_232B13F74(v86 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__responseDebugInfo, &v225);
    v123 = v199;
    sub_232BF7340();
    sub_232BF5EEC();
    v124 = sub_232B12480(v123, 1, v91);
    sub_232BFFB24(v123);
    if (v124 != 1)
    {
      v125 = v184;
      sub_232BF5EEC();
      sub_232BFF7E0(v125);
      if (v90)
      {
        v126 = v185;
        sub_232CE9330();
        v127 = (v126 + *(v91 + 20));
        *v127 = 0;
        v127[1] = 0;
        sub_232BFF7E0(v125);
        v128 = v211;
        if (!v90)
        {
          sub_232B13790(v125, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232BFF620();
        sub_232BFECF4();
        v128 = v211;
      }

      v129 = sub_232B4C530();
      v130 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo;
      sub_232B13F5C(v128 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo, &v214);
      v131 = *(v128 + v130);
      *(v128 + v130) = v129;
    }

    sub_232B13F74(v86 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__languageTags, &v224);
    v132 = v91;
    v133 = v200;
    sub_232BF7340();
    sub_232BF5EEC();
    LODWORD(v134) = sub_232B12480(v133, 1, v92);
    sub_232BFFB24(v133);
    if (v134 != 1)
    {
      v135 = v186;
      sub_232BF5EEC();
      sub_232B351B0(v135, 1, v92);
      if (v90)
      {
        v139 = v187;
        *v187 = MEMORY[0x277D84F90];
        sub_232CE9330();
        v136 = sub_232BFF824(*(v92 + 24));
        sub_232B12504(v136, v137, v138, v132);
        sub_232B351B0(v135, 1, v92);
        if (!v90)
        {
          sub_232B13790(v135, &qword_27DDC7828, &unk_232CFBAC0);
        }
      }

      else
      {
        sub_232BFF724();
        v139 = v187;
        sub_232BFECF4();
      }

      v140 = sub_232BD8A74(v139);
      v141 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
      v134 = v211;
      sub_232B13F5C(v211 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags, &v215);
      v142 = *(v134 + v141);
      *(v134 + v141) = v140;
    }

    sub_232B13F74(v86 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__userInterfaceUnderstandingResults, &v223);
    sub_232BF7340();
    sub_232BF5EEC();
    v143 = sub_232BFFA98();
    sub_232B12480(v143, v144, v113);
    sub_232BFFAC4();
    v145 = v211;
    if (v134 != 1)
    {
      v146 = v188;
      sub_232BF5EEC();
      sub_232B20598(v146);
      if (v90)
      {
        v150 = v189;
        *v189 = MEMORY[0x277D84F90];
        sub_232CE9330();
        v147 = sub_232BFF824(*(v113 + 24));
        sub_232B12504(v147, v148, v149, v132);
        sub_232B20598(v146);
        if (!v90)
        {
          sub_232B13790(v146, &qword_27DDC7A30, &unk_232CFE950);
        }
      }

      else
      {
        sub_232BFF70C();
        v150 = v189;
        sub_232BFECF4();
      }

      sub_232BFCB90(v150);
      sub_232B13F5C(v145 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults, &v216);
      sub_232BFFC8C();
    }

    sub_232B13F74(v86 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__documentCategories, &v222);
    v151 = v204;
    sub_232BF7340();
    sub_232BF5EEC();
    v152 = v205;
    v153 = sub_232B12480(v151, 1, v205);
    sub_232BFFB24(v151);
    v154 = v207;
    if (v153 != 1)
    {
      v155 = v190;
      sub_232BF5EEC();
      sub_232BFF7E0(v155);
      if (v90)
      {
        v159 = v191;
        *v191 = MEMORY[0x277D84F90];
        sub_232CE9330();
        v156 = sub_232BFF824(*(v152 + 24));
        sub_232B12504(v156, v157, v158, v210);
        sub_232BFF7E0(v155);
        if (!v90)
        {
          sub_232B13790(v155, &qword_27DDC7008, &unk_232CFBAB0);
        }
      }

      else
      {
        sub_232BFF6DC();
        v159 = v191;
        sub_232BFECF4();
      }

      sub_232B4B13C(v159);
      sub_232B13F5C(v145 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories, &v217);
      sub_232BFFC8C();
    }

    sub_232B13F74(v86 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventResult, &v221);
    v160 = v206;
    sub_232BF7340();
    sub_232BF5EEC();
    LODWORD(v161) = sub_232B12480(v160, 1, v154);
    sub_232BFFB24(v160);
    v162 = v209;
    if (v161 != 1)
    {
      v163 = v192;
      sub_232BF5EEC();
      sub_232B20598(v163);
      if (v90)
      {
        v161 = v193;
        sub_232CE9330();
        v164 = *(v154 + 20);
        if (qword_27DDC63F0 != -1)
        {
          swift_once();
        }

        *(v161 + v164) = qword_27DDC7ED0;
        v165 = sub_232B12480(v163, 1, v154);

        if (v165 != 1)
        {
          sub_232B13790(v163, &qword_27DDC7788, &qword_232CFA9A0);
        }
      }

      else
      {
        sub_232BFF6C4();
        LODWORD(v161) = v193;
        sub_232BFECF4();
      }

      type metadata accessor for DUFoundInEventResult();
      sub_232BC5430();
      sub_232B13F5C(v145 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult, &v218);
      sub_232BFFC8C();
    }

    sub_232B13F74(v86 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventClassificationResult, &v220);
    sub_232BF7340();
    sub_232BF5EEC();
    v166 = sub_232BFFA98();
    sub_232B12480(v166, v167, v162);
    sub_232BFFAC4();
    if (v161 == 1)
    {
      (*(v177 + 8))(v178, v179);
      sub_232BFF89C();
      sub_232BFF570(v176, v168);
    }

    else
    {
      v169 = v194;
      sub_232BF5EEC();
      sub_232BFF7E0(v169);
      v171 = v177;
      v170 = v178;
      if (v90)
      {
        v172 = v195;
        sub_232CE9330();
        *(v172 + v162[5]) = 2;
        *(v172 + v162[6]) = 2;
        *(v172 + v162[7]) = 2;
        *(v172 + v162[8]) = 2;
        *(v172 + v162[9]) = 2;
        sub_232BFF7E0(v169);
        v173 = v176;
        if (!v90)
        {
          sub_232B13790(v169, &qword_27DDC7588, &qword_232CFA250);
        }
      }

      else
      {
        sub_232BFF6AC();
        v172 = v195;
        sub_232BFECF4();
        v173 = v176;
      }

      sub_232BAEAB4(v172);
      (*(v171 + 8))(v170, v179);
      sub_232BFF89C();
      sub_232BFF570(v173, v174);
      sub_232B13F5C(v145 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult, &v219);
      sub_232BFFC8C();
    }
  }

  else
  {
    (*(v74 + 8))(v1, v5);

    sub_232B55484();
    sub_232B12504(v103, v104, v105, v79);
    sub_232B13790(v2, &qword_27DDC7A48, &qword_232CFBAE0);
  }

  sub_232B20A00();
}

void sub_232BFBB1C()
{
  sub_232B35110();
  v4 = v3;
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  sub_232BFF638();
  v60 = v6;
  v7 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v8 = sub_232B2D120(v7);
  MEMORY[0x28223BE20](v8);
  sub_232B20714();
  v59 = v9;
  sub_232B20600();
  MEMORY[0x28223BE20](v10);
  sub_232B55558();
  v61 = v11;
  v12 = sub_232B554F0();
  v13 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(v12);
  v14 = sub_232B27FBC(v13);
  v16 = v15;
  MEMORY[0x28223BE20](v14);
  sub_232B3516C();
  sub_232BFF834();
  MEMORY[0x28223BE20](v17);
  sub_232BFFA3C();
  MEMORY[0x28223BE20](v18);
  sub_232BFFC2C();
  sub_232B13F24();
  MEMORY[0x28223BE20](v19);
  sub_232B20704();
  v22 = (v21 - v20);
  v62 = [objc_allocWithZone(type metadata accessor for DUTopicDetectionResponse()) init];
  sub_232BFF784();
  v63 = v4;
  sub_232BFF5C8();
  v64 = v22;
  v23 = *v22;
  v24 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v25 = *(v23 + 16);
  if (v25)
  {
    sub_232BFFA4C();
    v28 = v26 + v27;
    v29 = *(v16 + 72);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_232BFF664();
      sub_232BFF5C8();
      sub_232BFF5C8();
      v31 = sub_232C0FAF0(v2);
      sub_232BFF64C();
      v33 = sub_232BFF570(v1, v32);
      if (v31)
      {
        MEMORY[0x238391D50](v33);
        sub_232BFFC00();
        if (v35)
        {
          sub_232BC1BBC(v34);
          sub_232CEA000();
        }

        sub_232CEA020();
        v30 = v67;
      }

      v28 += v29;
      --v25;
    }

    while (v25);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v36 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics;
  sub_232B13F5C(&v62[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics], &v67);
  *&v62[v36] = v30;

  sub_232BFFBEC();
  if (v30)
  {
    sub_232BFFA4C();
    v39 = v37 + v38;
    v41 = *(v40 + 72);
    v24 = MEMORY[0x277D84F90];
    do
    {
      sub_232BFF664();
      sub_232BFF5C8();
      sub_232BFFAF0();
      v42 = sub_232C0FAF0(v2);
      sub_232BFF64C();
      v44 = sub_232BFF570(v0, v43);
      if (v42)
      {
        MEMORY[0x238391D50](v44);
        sub_232BFFA2C();
        if (v35)
        {
          sub_232BFF980();
        }

        sub_232CEA020();
        v24 = v66;
      }

      v39 += v41;
      --v30;
    }

    while (v30);
  }

  v45 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics;
  sub_232B13F5C(&v62[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics], &v66);
  *(v45 + v62) = v24;

  sub_232BF5EEC();
  v46 = sub_232BFF878();
  sub_232BFF7C4(v46, v47);
  if (v52)
  {
    sub_232BFF8B4();
    sub_232BFF570(v63, v48);
    sub_232B13790(v61, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v64, v45);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v49, v50, v51);
    sub_232BFFB84();
    sub_232B38C90(v59);
    if (v52)
    {
      v53 = v60;
      sub_232CE9330();
      sub_232BFFA1C();
      sub_232B38C90(v59);
      v54 = v63;
      if (!v52)
      {
        sub_232B13790(v59, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      v53 = v60;
      sub_232BFECF4();
      v54 = v63;
    }

    sub_232B4C530();
    sub_232BFF754();
    v56 = v55;
    sub_232BFF570(v54, v55);
    sub_232BFF570(v64, v56);
    v57 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
    sub_232B13F5C(&v62[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo], &v65);
    v58 = *&v62[v57];
    *&v62[v57] = v53;
  }

  sub_232B20A00();
}

void sub_232BFBFC0()
{
  sub_232B35110();
  v5 = sub_232B37B54();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(v5);
  sub_232B13F24();
  MEMORY[0x28223BE20](v6);
  sub_232BFF638();
  v61 = v7;
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v9 = sub_232B2D120(v8);
  MEMORY[0x28223BE20](v9);
  sub_232B20714();
  v60 = v10;
  sub_232B20600();
  MEMORY[0x28223BE20](v11);
  sub_232B55558();
  v62 = v12;
  v13 = sub_232B554F0();
  v14 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(v13);
  v15 = sub_232B27FBC(v14);
  v17 = v16;
  MEMORY[0x28223BE20](v15);
  sub_232B3516C();
  sub_232BFF834();
  MEMORY[0x28223BE20](v18);
  sub_232BFFA3C();
  MEMORY[0x28223BE20](v19);
  sub_232BFFC2C();
  sub_232B13F24();
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v23 = (v22 - v21);
  v63 = [objc_allocWithZone(v1) init];
  sub_232BFF784();
  v64 = v2;
  sub_232BFF5C8();
  v65 = v23;
  v24 = *v23;
  v25 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  v26 = *(v24 + 16);
  if (v26)
  {
    sub_232BFFA4C();
    v29 = v27 + v28;
    v30 = *(v17 + 72);
    v31 = MEMORY[0x277D84F90];
    do
    {
      sub_232BFF664();
      sub_232BFF5C8();
      sub_232BFF5C8();
      v32 = sub_232C0FAF0(v4);
      sub_232BFF64C();
      v34 = sub_232BFF570(v3, v33);
      if (v32)
      {
        MEMORY[0x238391D50](v34);
        sub_232BFFC00();
        if (v36)
        {
          sub_232BC1BBC(v35);
          sub_232CEA000();
        }

        sub_232CEA020();
        v31 = v68;
      }

      v29 += v30;
      --v26;
    }

    while (v26);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v37 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics;
  sub_232B13F5C(&v63[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics], &v68);
  *&v63[v37] = v31;

  sub_232BFFBEC();
  if (v31)
  {
    sub_232BFFA4C();
    v40 = v38 + v39;
    v42 = *(v41 + 72);
    v25 = MEMORY[0x277D84F90];
    do
    {
      sub_232BFF664();
      sub_232BFF5C8();
      sub_232BFFAF0();
      v43 = sub_232C0FAF0(v4);
      sub_232BFF64C();
      v45 = sub_232BFF570(v0, v44);
      if (v43)
      {
        MEMORY[0x238391D50](v45);
        sub_232BFFA2C();
        if (v36)
        {
          sub_232BFF980();
        }

        sub_232CEA020();
        v25 = v67;
      }

      v40 += v42;
      --v31;
    }

    while (v31);
  }

  v46 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics;
  sub_232B13F5C(&v63[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics], &v67);
  *(v46 + v63) = v25;

  sub_232BF5EEC();
  v47 = sub_232BFF878();
  sub_232BFF7C4(v47, v48);
  if (v53)
  {
    sub_232BFF8B4();
    sub_232BFF570(v64, v49);
    sub_232B13790(v62, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v65, v46);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v50, v51, v52);
    sub_232BFFB84();
    sub_232B38C90(v60);
    if (v53)
    {
      v54 = v61;
      sub_232CE9330();
      sub_232BFFA1C();
      sub_232B38C90(v60);
      v55 = v64;
      if (!v53)
      {
        sub_232B13790(v60, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      v54 = v61;
      sub_232BFECF4();
      v55 = v64;
    }

    sub_232B4C530();
    sub_232BFF754();
    v57 = v56;
    sub_232BFF570(v55, v56);
    sub_232BFF570(v65, v57);
    v58 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
    sub_232B13F5C(&v63[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo], &v66);
    v59 = *&v63[v58];
    *&v63[v58] = v54;
  }

  sub_232B20A00();
}

void sub_232BFC45C()
{
  sub_232B35110();
  v3 = sub_232B37B54();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(v3);
  sub_232B13F24();
  MEMORY[0x28223BE20](v4);
  sub_232BFF638();
  v44 = v5;
  v6 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  sub_232B20714();
  v43 = v8;
  sub_232B20600();
  MEMORY[0x28223BE20](v9);
  sub_232B55558();
  v45 = v10;
  v11 = sub_232B554F0();
  v12 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v11);
  v13 = sub_232B27FBC(v12);
  v15 = v14;
  MEMORY[0x28223BE20](v13);
  sub_232B3516C();
  sub_232BFF834();
  MEMORY[0x28223BE20](v16);
  sub_232BFFC6C();
  sub_232B13F24();
  MEMORY[0x28223BE20](v17);
  sub_232B20704();
  sub_232BFFC14();
  v18 = [objc_allocWithZone(type metadata accessor for DUStructuredEntityResponse()) init];
  sub_232BFF67C();
  v46 = v0;
  sub_232BFF5C8();
  v19 = *v1;
  v20 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v21 = *(v19 + 16);
  if (v21)
  {
    sub_232BFFA4C();
    v24 = v22 + v23;
    v25 = *(v15 + 72);
    do
    {
      sub_232BFF95C();
      sub_232BFF5C8();
      sub_232BFFAF0();
      v26 = sub_232C07898(v2);
      v27 = sub_232BFF9C8();
      if (v26)
      {
        MEMORY[0x238391D50](v27);
        sub_232BFFA2C();
        if (v28)
        {
          sub_232BFF980();
        }

        sub_232CEA020();
        v20 = v48;
      }

      v24 += v25;
      --v21;
    }

    while (v21);
  }

  v29 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
  sub_232B13F5C(&v18[OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities], &v48);
  *(v29 + v18) = v20;

  sub_232BF5EEC();
  v30 = sub_232BFF878();
  sub_232BFF7C4(v30, v31);
  if (v36)
  {
    sub_232BFF944();
    sub_232BFF570(v46, v32);
    sub_232B13790(v45, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v1, v29);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v33, v34, v35);
    sub_232BFFB84();
    sub_232B38C90(v43);
    if (v36)
    {
      v37 = v44;
      sub_232CE9330();
      sub_232BFFA1C();
      sub_232B38C90(v43);
      v38 = v46;
      if (!v36)
      {
        sub_232B13790(v43, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      v37 = v44;
      sub_232BFECF4();
      v38 = v46;
    }

    sub_232B4C530();
    sub_232BFF76C();
    v40 = v39;
    sub_232BFF570(v38, v39);
    sub_232BFF570(v1, v40);
    v41 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
    sub_232B13F5C(&v18[OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo], &v47);
    v42 = *&v18[v41];
    *&v18[v41] = v37;
  }

  sub_232B20A00();
}

void sub_232BFC7F0()
{
  sub_232B35110();
  v4 = sub_232B37B54();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(v4);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  sub_232BFF638();
  v43 = v6;
  v7 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v8 = sub_232B2D120(v7);
  MEMORY[0x28223BE20](v8);
  sub_232B20714();
  v42 = v9;
  sub_232B20600();
  MEMORY[0x28223BE20](v10);
  sub_232B55558();
  v44 = v11;
  v12 = sub_232B554F0();
  v13 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v12);
  v14 = sub_232B27FBC(v13);
  v16 = v15;
  MEMORY[0x28223BE20](v14);
  sub_232B3516C();
  sub_232BFF834();
  MEMORY[0x28223BE20](v17);
  sub_232BFFC6C();
  sub_232B13F24();
  MEMORY[0x28223BE20](v18);
  sub_232B20704();
  sub_232BFFC14();
  v19 = [objc_allocWithZone(v0) init];
  sub_232BFF67C();
  v45 = v1;
  sub_232BFF5C8();
  v20 = *v2;
  v21 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v22 = *(v20 + 16);
  if (v22)
  {
    sub_232BFFA4C();
    v25 = v23 + v24;
    v26 = *(v16 + 72);
    do
    {
      sub_232BFF95C();
      sub_232BFF5C8();
      sub_232BFFAF0();
      v27 = sub_232C07898(v3);
      v28 = sub_232BFF9C8();
      if (v27)
      {
        MEMORY[0x238391D50](v28);
        sub_232BFFA2C();
        if (v29)
        {
          sub_232BFF980();
        }

        sub_232CEA020();
        v21 = v47;
      }

      v25 += v26;
      --v22;
    }

    while (v22);
  }

  v30 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
  sub_232B13F5C(&v19[OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities], &v47);
  *(v30 + v19) = v21;

  sub_232BF5EEC();
  sub_232BFF7C4(v44, 1);
  if (v35)
  {
    sub_232BFF944();
    sub_232BFF570(v45, v31);
    sub_232B13790(v44, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v2, v30);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v32, v33, v34);
    sub_232BF5EEC();
    sub_232B38C90(v42);
    if (v35)
    {
      v36 = v43;
      sub_232CE9330();
      sub_232BFFA1C();
      sub_232B38C90(v42);
      v37 = v45;
      if (!v35)
      {
        sub_232B13790(v42, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      v36 = v43;
      sub_232BFECF4();
      v37 = v45;
    }

    sub_232B4C530();
    sub_232BFF76C();
    v39 = v38;
    sub_232BFF570(v37, v38);
    sub_232BFF570(v2, v39);
    v40 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
    sub_232B13F5C(&v19[OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo], &v46);
    v41 = *&v19[v40];
    *&v19[v40] = v36;
  }

  sub_232B20A00();
}

char *sub_232BFCB90(uint64_t a1)
{
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v9 = v8 - v7;
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = sub_232B2D120(v10);
  MEMORY[0x28223BE20](v11);
  sub_232B3516C();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  sub_232B55558();
  v52 = v16;
  v17 = sub_232B554F0();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(v17);
  sub_232B350D8();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_232B3516C();
  sub_232BFFA3C();
  MEMORY[0x28223BE20](v21);
  sub_232BFFC4C();
  sub_232B13F24();
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  v25 = (v24 - v23);
  v26 = [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResponse()) init];
  sub_232BFF6F4();
  sub_232BFF5C8();
  v53 = v25;
  v27 = *v25;
  v28 = MEMORY[0x277D84F90];
  v56[0] = MEMORY[0x277D84F90];
  v29 = *(v27 + 16);
  if (v29)
  {
    sub_232BFFA78();
    sub_232BFFA4C();
    a1 = v30 + v31;
    v54 = *(v19 + 72);
    do
    {
      sub_232BFF8E4();
      sub_232BFF5C8();
      sub_232BA62B0();
      sub_232BFF5C8();
      [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResult()) init];
      sub_232BFF844();
      sub_232BFF570(v2, v32);
      v26 = *v1;
      v14 = v1[1];
      v5 = v28 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier;
      sub_232B13F5C(v28 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier, v58);
      *v5 = v26;
      *(v5 + 8) = v14;

      sub_232BFFBD8();
      v9 = *(v33 + 8);
      v34 = sub_232B2080C();
      sub_232BFF570(v34, v35);
      if (v9)
      {
        v3 = 0.0;
      }

      v36 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
      v37 = sub_232B13F5C(v28 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence, v57);
      *(v28 + v36) = v3;
      MEMORY[0x238391D50](v37);
      sub_232BFFBC4();
      if (v39)
      {
        sub_232BC1BBC(v38);
        sub_232CEA000();
      }

      sub_232CEA020();
      a1 += v54;
      --v29;
    }

    while (v29);
    v28 = v56[0];
    sub_232BFFA58();
  }

  v40 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
  sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities], v56);
  *(v40 + v26) = v28;

  sub_232BF5EEC();
  sub_232B20598(v52);
  if (v45)
  {
    sub_232BFF860();
    sub_232BFF570(a1, v41);
    sub_232B13790(v52, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v53, v40);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v42, v43, v44);
    sub_232BF5EEC();
    sub_232B20598(v14);
    if (v45)
    {
      sub_232CE9330();
      v46 = (v9 + *(v5 + 20));
      *v46 = 0;
      v46[1] = 0;
      sub_232B20598(v14);
      if (!v45)
      {
        sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      sub_232BFECF4();
    }

    sub_232B4C530();
    sub_232BFF73C();
    v48 = v47;
    sub_232BFF570(a1, v47);
    sub_232BFF570(v53, v48);
    v49 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo], v55);
    v50 = *&v26[v49];
    *&v26[v49] = &qword_27DDC67C8;
  }

  return v26;
}

char *sub_232BFCFF4(uint64_t a1)
{
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v12 = v11 - v10;
  v13 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v14 = sub_232B2D120(v13);
  MEMORY[0x28223BE20](v14);
  sub_232B3516C();
  sub_232BFF834();
  MEMORY[0x28223BE20](v15);
  sub_232B55558();
  v49 = v16;
  v17 = sub_232B554F0();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(v17);
  sub_232B350D8();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_232B3516C();
  sub_232BFFA3C();
  MEMORY[0x28223BE20](v21);
  sub_232BFFC4C();
  sub_232B13F24();
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  sub_232BFFC14();
  v23 = [objc_allocWithZone(v2) init];
  sub_232BFF6F4();
  sub_232BFF5C8();
  v50 = v4;
  v24 = *v4;
  v25 = MEMORY[0x277D84F90];
  v53[0] = MEMORY[0x277D84F90];
  v26 = *(v24 + 16);
  if (v26)
  {
    sub_232BFFA78();
    sub_232BFFA4C();
    v12 = v27 + v28;
    v51 = *(v19 + 72);
    do
    {
      sub_232BFF8E4();
      sub_232BFF5C8();
      sub_232BA62B0();
      sub_232BFF5C8();
      [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResult()) init];
      sub_232BFF844();
      sub_232BFF570(v3, v29);
      v5 = *v1;
      v23 = v1[1];
      v8 = v19 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier;
      sub_232B13F5C(v19 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier, v55);
      *v8 = v5;
      *(v8 + 8) = v23;

      sub_232BFFBD8();
      a1 = *(v30 + 8);
      v31 = sub_232B2080C();
      sub_232BFF570(v31, v32);
      if (a1)
      {
        v6 = 0.0;
      }

      v33 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
      v34 = sub_232B13F5C(v19 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence, v54);
      *(v19 + v33) = v6;
      MEMORY[0x238391D50](v34);
      sub_232BFFBC4();
      if (v36)
      {
        sub_232BC1BBC(v35);
        sub_232CEA000();
      }

      sub_232CEA020();
      v12 += v51;
      --v26;
    }

    while (v26);
    v25 = v53[0];
    sub_232BFFA58();
  }

  v37 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
  sub_232B13F5C(&v23[OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities], v53);
  *(v37 + v23) = v25;

  sub_232BF5EEC();
  sub_232B20598(v49);
  if (v42)
  {
    sub_232BFF860();
    sub_232BFF570(a1, v38);
    sub_232B13790(v49, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v50, v37);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v39, v40, v41);
    sub_232BF5EEC();
    sub_232B20598(v5);
    if (v42)
    {
      sub_232CE9330();
      v43 = (v12 + *(v8 + 20));
      *v43 = 0;
      v43[1] = 0;
      sub_232B20598(v5);
      if (!v42)
      {
        sub_232B13790(v5, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      sub_232BFECF4();
    }

    sub_232B4C530();
    sub_232BFF73C();
    v45 = v44;
    sub_232BFF570(a1, v44);
    sub_232BFF570(v50, v45);
    v46 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
    sub_232B13F5C(&v23[OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo], v52);
    v47 = *&v23[v46];
    *&v23[v46] = &qword_27DDC67C8;
  }

  return v23;
}

void sub_232BFD448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232B35110();
  v247 = v20;
  v22 = v21;
  v23 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  v24 = sub_232B2D120(v23);
  MEMORY[0x28223BE20](v24);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v25);
  sub_232B55558();
  v27 = sub_232BFF800(v26);
  v243 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(v27);
  sub_232B13F24();
  MEMORY[0x28223BE20](v28);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v29);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v30);
  sub_232B55558();
  sub_232B5EFC8(v31);
  v32 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  v33 = sub_232B2D120(v32);
  MEMORY[0x28223BE20](v33);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v34);
  sub_232B55558();
  v36 = sub_232BFF800(v35);
  v242 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(v36);
  sub_232B13F24();
  MEMORY[0x28223BE20](v37);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v38);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v39);
  sub_232B55558();
  sub_232B5EFC8(v40);
  v41 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  v42 = sub_232B2D120(v41);
  MEMORY[0x28223BE20](v42);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v43);
  sub_232B55558();
  v45 = sub_232BFF800(v44);
  v241 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(v45);
  sub_232B13F24();
  MEMORY[0x28223BE20](v46);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v47);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v48);
  sub_232B55558();
  sub_232B5EFC8(v49);
  v50 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  v51 = sub_232B2D120(v50);
  MEMORY[0x28223BE20](v51);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v52);
  sub_232B55558();
  v54 = sub_232BFF800(v53);
  v240 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(v54);
  sub_232B13F24();
  MEMORY[0x28223BE20](v55);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v56);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v57);
  sub_232B55558();
  sub_232B5EFC8(v58);
  v59 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  v60 = sub_232B2D120(v59);
  MEMORY[0x28223BE20](v60);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v61);
  sub_232B55558();
  v63 = sub_232BFF800(v62);
  v246 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(v63);
  sub_232B13F24();
  MEMORY[0x28223BE20](v64);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v65);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v66);
  sub_232B55558();
  sub_232B5EFC8(v67);
  v68 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  v69 = sub_232B2D120(v68);
  MEMORY[0x28223BE20](v69);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v70);
  sub_232B55558();
  v72 = sub_232BFF800(v71);
  v245 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(v72);
  sub_232B13F24();
  MEMORY[0x28223BE20](v73);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v74);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v75);
  sub_232B55558();
  sub_232B5EFC8(v76);
  v77 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  v78 = sub_232B2D120(v77);
  MEMORY[0x28223BE20](v78);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v79);
  v81 = v236 - v80;
  v244 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v82);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v83);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v84);
  sub_232B55558();
  sub_232B5EFC8(v85);
  v86 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v87 = sub_232B2D120(v86);
  MEMORY[0x28223BE20](v87);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v88);
  v90 = v236 - v89;
  v91 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v92);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v93);
  v95 = (v236 - v94);
  MEMORY[0x28223BE20](v96);
  sub_232CE9330();
  v97 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0) + 20);
  if (qword_27DDC6418 != -1)
  {
    swift_once();
  }

  v98 = qword_27DDC8248;
  v99 = v22;
  v100 = v97;
  *(v22 + v97) = qword_27DDC8248;
  v101 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo;
  v102 = v247;
  sub_232B13F74(v247 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo, v259);
  v103 = *(v102 + v101);
  if (!v103)
  {

    sub_232B55484();
    sub_232B12504(v110, v111, v112, v91);
    goto LABEL_8;
  }

  v98 = v103;
  sub_232B55A40(v95);

  v104 = swift_dynamicCast();
  sub_232BFFBA0(v90, v104 ^ 1u);
  v105 = sub_232BFFA98();
  sub_232B351B0(v105, v106, v91);
  if (v107)
  {
LABEL_8:
    sub_232B13790(v90, &qword_27DDC67C8, &unk_232CF5E70);
    v108 = v99;
    v113 = v243;
    v109 = v100;
    v114 = v241;
    goto LABEL_11;
  }

  sub_232BFF620();
  sub_232BFECF4();
  sub_232BFFA00();
  sub_232BFF5C8();
  v108 = v99;
  v109 = v100;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF9A0();
    v98 = *(v99 + v100);
  }

  else
  {
    v115 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response._StorageClass(0);
    sub_232BF73F4(v115);

    v98 = sub_232C5567C(v116);
    sub_232BFF9A0();
    v109 = v100;

    *(v99 + v100) = v98;
  }

  v113 = v243;
  v114 = v241;
  sub_232BFF620();
  sub_232BFFA00();
  sub_232BFECF4();
  v117 = sub_232BFF7B4();
  sub_232B12504(v117, v118, v119, v91);
  sub_232B207D4(v98 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__responseDebugInfo, &v257);
  sub_232BF6164();
  swift_endAccess();
LABEL_11:
  v120 = v240;
  v121 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
  v122 = v247;
  sub_232B13F74(v247 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics, &v257);
  v123 = *(v122 + v121);
  if (!v123)
  {
    sub_232B55484();
    sub_232B12504(v127, v128, v129, v244);
    goto LABEL_16;
  }

  v98 = v123;
  v124 = v237;
  sub_232C10114(v237);

  v125 = sub_232BFFAA4();
  sub_232BFFBA0(v81, v125 ^ 1u);
  sub_232B351B0(v81, 1, v124);
  if (v107)
  {
LABEL_16:
    sub_232B13790(v81, &qword_27DDC7A40, &unk_232CFE960);
    v130 = v242;
    goto LABEL_19;
  }

  sub_232BFF694();
  v126 = v236[2];
  sub_232BFECF4();
  sub_232BFF784();
  sub_232BFF5C8();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF570(v126, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
    v124 = *(v108 + v109);
  }

  else
  {
    v131 = sub_232BFFB54();
    sub_232BF73F4(v131);
    v132 = sub_232BFFB0C();
    sub_232C5567C(v132);
    sub_232BFF754();
    sub_232BFF570(v126, v133);

    *(v108 + v109) = v124;
  }

  v130 = v242;
  sub_232BFF694();
  sub_232BFFA00();
  sub_232BFECF4();
  v134 = sub_232BFF7B4();
  sub_232B12504(v134, v135, v136, v244);
  v98 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics;
  sub_232B207D4(v124 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics, &v254);
  sub_232BFFB3C();
  swift_endAccess();
LABEL_19:
  v137 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
  sub_232B13F74(v122 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities, &v254);
  v138 = *(v122 + v137);
  if (!v138)
  {
    sub_232BFFC20(&v254);
    sub_232B55484();
    sub_232B12504(v141, v142, v143, v245);
    goto LABEL_24;
  }

  v98 = v138;
  v139 = v238;
  sub_232C09358(v238);

  sub_232BFFC20(&v254);
  v140 = sub_232BFFAA4();
  sub_232BFFBA0(v98, v140 ^ 1u);
  sub_232B351B0(v98, 1, v139);
  if (v107)
  {
LABEL_24:
    sub_232B13790(v98, &qword_27DDC7A38, &unk_232CFBAD0);
    goto LABEL_27;
  }

  sub_232BFF79C();
  sub_232BFFB6C();
  sub_232BFF67C();
  sub_232BFF5C8();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF570(v139, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
    v139 = *(v108 + v109);
  }

  else
  {
    v144 = sub_232BFFB54();
    sub_232BF73F4(v144);
    v145 = sub_232BFFB0C();
    sub_232C5567C(v145);
    sub_232BFF76C();
    sub_232BFF570(v146, v147);

    *(v108 + v109) = v139;
  }

  sub_232BFF79C();
  sub_232BFFA00();
  sub_232BFECF4();
  v148 = sub_232BFF7B4();
  sub_232B12504(v148, v149, v150, v245);
  v98 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities;
  sub_232B207D4(v139 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities, v253);
  sub_232BFFB3C();
  swift_endAccess();
LABEL_27:
  v151 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
  sub_232B13F74(v122 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags, v253);
  v152 = *(v122 + v151);
  if (!v152)
  {
    sub_232BFFC20(&v255);
    sub_232B55484();
    sub_232B12504(v156, v157, v158, v246);
    goto LABEL_32;
  }

  v98 = v152;
  v153 = v239;
  sub_232BD94F4(v239);

  sub_232BFFC20(&v255);
  v154 = sub_232BFFAA4();
  sub_232BFFBA0(v98, v154 ^ 1u);
  sub_232B351B0(v98, 1, v153);
  if (v107)
  {
LABEL_32:
    sub_232B13790(v98, &qword_27DDC7828, &unk_232CFBAC0);
    goto LABEL_35;
  }

  sub_232BFF724();
  sub_232BFFB6C();
  sub_232BFF974();
  sub_232BFF5C8();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF92C();
    sub_232BFF570(v153, v155);
    v153 = *(v108 + v109);
  }

  else
  {
    v159 = sub_232BFFB54();
    sub_232BF73F4(v159);
    v160 = sub_232BFFB0C();
    sub_232C5567C(v160);
    sub_232BFFAE4();
    sub_232BFF92C();
    sub_232BFF570(v162, v161);

    *(v108 + v109) = v153;
  }

  sub_232BFF724();
  sub_232BFFA00();
  sub_232BFECF4();
  v163 = sub_232BFF7B4();
  sub_232B12504(v163, v164, v165, v246);
  sub_232B207D4(v153 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__languageTags, v252);
  sub_232BFFB3C();
  swift_endAccess();
LABEL_35:
  v166 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults;
  sub_232B13F74(v122 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults, v252);
  v167 = *(v122 + v166);
  if (!v167)
  {
    v173 = sub_232BFF810(&v256);
    sub_232B12504(v173, v174, v175, v120);
    goto LABEL_40;
  }

  v168 = v167;
  sub_232BFFBB8();
  sub_232C168FC(v169);

  sub_232BFF9F0(&v256);
  swift_dynamicCast();
  v170 = sub_232BFFA0C();
  sub_232B12504(v170, v171, v172, v120);
  sub_232B351B0(v166, 1, v120);
  if (v107)
  {
LABEL_40:
    sub_232B13790(v166, &qword_27DDC7A30, &unk_232CFE950);
    goto LABEL_43;
  }

  sub_232BFF70C();
  sub_232BFFB6C();
  sub_232BFF6F4();
  sub_232BFF5C8();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF570(v166, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
    v166 = *(v108 + v109);
  }

  else
  {
    v176 = sub_232BFFB54();
    sub_232BF73F4(v176);
    v177 = sub_232BFFB0C();
    sub_232C5567C(v177);
    sub_232BFF73C();
    sub_232BFF570(v178, v179);

    *(v108 + v109) = v166;
  }

  sub_232BFF70C();
  sub_232BFFA00();
  sub_232BFECF4();
  v180 = sub_232BFF7B4();
  sub_232B12504(v180, v181, v182, v120);
  sub_232B207D4(v166 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__userInterfaceUnderstandingResults, v251);
  sub_232BFFB3C();
  swift_endAccess();
LABEL_43:
  v183 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
  sub_232B13F74(v122 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories, v251);
  v184 = *(v122 + v183);
  if (!v184)
  {
    v191 = sub_232BFF810(v258);
    sub_232B12504(v191, v192, v193, v114);
    goto LABEL_48;
  }

  v185 = v184;
  sub_232BFFBB8();
  sub_232B4C714(v186);

  sub_232BFF9F0(v258);
  swift_dynamicCast();
  v187 = sub_232BFFA0C();
  sub_232B12504(v187, v188, v189, v114);
  sub_232BFF7E0(v183);
  if (v107)
  {
LABEL_48:
    sub_232B13790(v183, &qword_27DDC7008, &unk_232CFBAB0);
    goto LABEL_51;
  }

  sub_232BFF6DC();
  sub_232BFFB6C();
  sub_232BFF974();
  sub_232BFF5C8();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF914();
    sub_232BFF570(v183, v190);
    v183 = *(v108 + v109);
  }

  else
  {
    v194 = sub_232BFFB54();
    sub_232BF73F4(v194);
    v195 = sub_232BFFB0C();
    sub_232C5567C(v195);
    sub_232BFFAE4();
    sub_232BFF914();
    sub_232BFF570(v197, v196);

    *(v108 + v109) = v183;
  }

  sub_232BFF6DC();
  sub_232BFFA00();
  sub_232BFECF4();
  v198 = sub_232BFF7B4();
  sub_232B12504(v198, v199, v200, v114);
  sub_232B207D4(v183 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__documentCategories, v250);
  sub_232BFFB3C();
  swift_endAccess();
LABEL_51:
  v201 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
  sub_232B13F74(v122 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult, v250);
  v202 = *(v122 + v201);
  if (!v202)
  {
    v208 = sub_232BFF810(v259);
    sub_232B12504(v208, v209, v210, v130);
    goto LABEL_56;
  }

  v203 = v202;
  sub_232BFFBB8();
  sub_232BC6784();

  sub_232BFF9F0(v259);
  swift_dynamicCast();
  v204 = sub_232BFFA0C();
  sub_232B12504(v204, v205, v206, v130);
  sub_232B351B0(v201, 1, v130);
  if (v107)
  {
LABEL_56:
    sub_232B13790(v201, &qword_27DDC7788, &qword_232CFA9A0);
    goto LABEL_59;
  }

  sub_232BFF6C4();
  sub_232BFFB6C();
  sub_232BFF974();
  sub_232BFF5C8();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF8FC();
    sub_232BFF570(v201, v207);
    v201 = *(v108 + v109);
  }

  else
  {
    v211 = sub_232BFFB54();
    sub_232BF73F4(v211);
    v212 = sub_232BFFB0C();
    sub_232C5567C(v212);
    sub_232BFFAE4();
    sub_232BFF8FC();
    sub_232BFF570(v214, v213);

    *(v108 + v109) = v201;
  }

  sub_232BFF6C4();
  sub_232BFFA00();
  sub_232BFECF4();
  v215 = sub_232BFF7B4();
  sub_232B12504(v215, v216, v217, v130);
  sub_232B207D4(v201 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventResult, v249);
  sub_232BFFB3C();
  swift_endAccess();
LABEL_59:
  v218 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult;
  sub_232B13F74(v122 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult, v249);
  v219 = *(v122 + v218);
  if (!v219)
  {
    v226 = sub_232BFF810(v260);
    sub_232B12504(v226, v227, v228, v113);
    goto LABEL_64;
  }

  v220 = v219;
  sub_232BFFBB8();
  sub_232BAF374(v221);

  sub_232BFF9F0(v260);
  swift_dynamicCast();
  v222 = sub_232BFFA0C();
  sub_232B12504(v222, v223, v224, v113);
  sub_232B38C90(v218);
  if (v107)
  {
LABEL_64:
    sub_232B13790(v218, &qword_27DDC7588, &qword_232CFA250);
    goto LABEL_67;
  }

  sub_232BFF6AC();
  sub_232BFFB6C();
  sub_232BFF974();
  sub_232BFF5C8();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF8CC();
    sub_232BFF570(v218, v225);
    v218 = *(v108 + v109);
  }

  else
  {
    v229 = sub_232BFFB54();
    sub_232BF73F4(v229);
    v230 = sub_232BFFB0C();
    sub_232C5567C(v230);
    sub_232BFFAE4();
    sub_232BFF8CC();
    sub_232BFF570(v232, v231);

    *(v108 + v109) = v218;
  }

  sub_232BFF6AC();
  sub_232BFFA00();
  sub_232BFECF4();
  v233 = sub_232BFF7B4();
  sub_232B12504(v233, v234, v235, v113);
  sub_232B207D4(v218 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventClassificationResult, &v248);
  sub_232BFFB3C();
  swift_endAccess();
LABEL_67:
  sub_232B20A00();
}

void sub_232BFE850(uint64_t a1)
{
  type metadata accessor for DUResponse();
  sub_232BFF884();
  sub_232BFF528(v1, v2, v3, &protocol conformance descriptor for DUResponse);
  v4 = sub_232CE98A0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_232CE9D20();
    sub_232BF7340();
    [v7 v8];
  }
}

uint64_t DUResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232BFF884();
  sub_232BFF528(v2, v3, v4, &protocol conformance descriptor for DUResponse);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B3CB40(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B3CB40(v6);
  return v5;
}

id DUResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_poem] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_posTags] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DUResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DUResponse.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DUResponse();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Class sub_232BFECCC@<X0>(uint64_t a1@<X0>, Class *a2@<X8>)
{
  result = sub_232BF979C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232BFECF4()
{
  sub_232B2D12C();
  v1(0);
  sub_232B13F24();
  v2 = sub_232B2080C();
  v3(v2);
  return v0;
}

uint64_t sub_232BFF528(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232BFF570(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232BFF5C8()
{
  sub_232B2D12C();
  v1(0);
  sub_232B13F24();
  v2 = sub_232B2080C();
  v3(v2);
  return v0;
}

uint64_t sub_232BFF980()
{

  return sub_232CEA000();
}

uint64_t sub_232BFF9A0()
{

  return sub_232BFF570(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
}

uint64_t sub_232BFF9C8()
{

  return sub_232BFF570(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
}

void sub_232BFFA1C()
{
  v2 = (v0 + *(v1 + 20));
  *v2 = 0;
  v2[1] = 0;
}

void sub_232BFFA78()
{
  *(v5 - 280) = v4;
  *(v5 - 272) = v3;
  *(v5 - 264) = v2;
  *(v5 - 256) = v1;
  *(v5 - 248) = v0;
}

uint64_t sub_232BFFAA4()
{

  return swift_dynamicCast();
}

uint64_t sub_232BFFAC4()
{

  return sub_232B13790(v2, v0, v1);
}

uint64_t sub_232BFFAF0()
{

  return sub_232BFF5C8();
}

uint64_t sub_232BFFB0C()
{
}

uint64_t sub_232BFFB24(uint64_t a1)
{

  return sub_232B13790(a1, v1, v2);
}

uint64_t sub_232BFFB3C()
{

  return sub_232BF6164();
}

uint64_t sub_232BFFB54()
{

  return type metadata accessor for DocumentUnderstanding_ClientInterface_Response._StorageClass(0);
}

uint64_t sub_232BFFB6C()
{

  return sub_232BFECF4();
}

uint64_t sub_232BFFB84()
{

  return sub_232BF5EEC();
}

uint64_t sub_232BFFBA0(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

uint64_t sub_232BFFC2C()
{

  return type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
}

uint64_t sub_232BFFC4C()
{

  return type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
}

uint64_t sub_232BFFC6C()
{

  return type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
}

void sub_232BFFC8C()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

id sub_232BFFD50(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  a3(a1, a2);
  sub_232CE9D20();
  sub_232B26CE8();

  return a1;
}

void sub_232BFFDC0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_232CE9D50();
  v7 = a1;
  v6 = sub_232B41C8C();
  a4(v6);
}

uint64_t sub_232BFFE40(uint64_t a1)
{
  sub_232B3CB20(a1);
  v2 = sub_232BAE188();
  return v1(v2);
}

double sub_232BFFF18(uint64_t a1)
{
  sub_232B26BFC(a1);

  return result;
}

uint64_t sub_232BFFFBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  sub_232B26C50(a1);
  *(v1 + v3) = a1;
}

id sub_232C00128(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a1;
  a3(a1, a2);
  if (v4)
  {
    sub_232CE9D20();
    sub_232B26CE8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_232C001A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    sub_232CE9D50();
  }

  v7 = a1;
  v6 = sub_232B41C8C();
  a4(v6);
}

uint64_t sub_232C00234(uint64_t a1)
{
  sub_232B3CB20(a1);
  v2 = sub_232BAE188();
  return v1(v2);
}

double sub_232C003F8(uint64_t a1)
{
  sub_232B26BFC(a1);

  return result;
}

uint64_t sub_232C004F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
  sub_232B26C50(a1);
  *(v1 + v3) = a1;
}

void *sub_232C005E8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232C00680(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
  sub_232B26C50(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C006C8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232C00680(v1);
}

uint64_t sub_232C00768(void *a1)
{
  sub_232B13F74(v1 + *a1, v3);

  return sub_232B5EFF4();
}

void *sub_232C00854(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232C008EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
  sub_232B26C50(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C00934(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232C008EC(v1);
}

void *sub_232C009E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232C00A7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
  sub_232B26C50(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C00AC4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232C00A7C(v1);
}

char *DUStructuredEntity.__allocating_init<A>(proto:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v168 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v162 = v9 - v8;
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = sub_232B2D120(v10);
  MEMORY[0x28223BE20](v11);
  sub_232B20714();
  v161 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B55558();
  v167 = v14;
  v15 = sub_232B554F0();
  v166 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(v15);
  sub_232B13F24();
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v160 = (v18 - v17);
  v19 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v20 = sub_232B2D120(v19);
  MEMORY[0x28223BE20](v20);
  sub_232B20714();
  v159 = v21;
  sub_232B20600();
  MEMORY[0x28223BE20](v22);
  sub_232B55558();
  v165 = v23;
  v24 = sub_232B554F0();
  v164 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(v24);
  sub_232B13F24();
  MEMORY[0x28223BE20](v25);
  sub_232B20704();
  v158 = (v27 - v26);
  v28 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v29 = sub_232B2D120(v28);
  MEMORY[0x28223BE20](v29);
  sub_232B20714();
  v157 = v30;
  sub_232B20600();
  MEMORY[0x28223BE20](v31);
  sub_232B55558();
  v163 = v32;
  v33 = sub_232B554F0();
  v177 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v33);
  sub_232B350D8();
  v175 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v153 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  sub_232B55558();
  v176 = v39;
  v40 = sub_232B124A8(&qword_27DDC7AC8, &unk_232CFBB88);
  sub_232B2D120(v40);
  sub_232B2D114();
  MEMORY[0x28223BE20](v41);
  sub_232BF7454();
  sub_232B350D8();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  sub_232B20704();
  v47 = v46 - v45;
  v48 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v49);
  sub_232B20704();
  v52 = v51 - v50;
  v53 = [objc_allocWithZone(v4) init];
  (*(v43 + 16))(v47, a1, a2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v43 + 8))(a1, a2);

    v61 = sub_232C07090();
    sub_232B12504(v61, v62, v63, v48);
    sub_232B13790(v3, &qword_27DDC7AC8, &unk_232CFBB88);
    return 0;
  }

  v172 = v43;
  v174 = v53;
  v155 = a1;
  v156 = a2;
  sub_232B351FC();
  sub_232B12504(v54, v55, v56, v48);
  sub_232C05E00();
  v57 = *(v48 + 20);
  v154 = v52;
  v58 = *(v52 + v57);
  sub_232B13F74((v58 + 2), v201);
  if (v58[3])
  {
    v59 = v58[2];
    v60 = v58[3];
  }

  else
  {
    v59 = 0;
    v60 = 0xE000000000000000;
  }

  v65 = &v174[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title];
  sub_232B13F5C(&v174[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title], v200);
  *v65 = v59;
  *(v65 + 1) = v60;

  sub_232B13F74((v58 + 4), v199);
  if (v58[5])
  {
    v66 = v58[4];
    v67 = v58[5];
  }

  else
  {
    v66 = 0;
    v67 = 0xE000000000000000;
  }

  v68 = &v174[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type];
  sub_232B13F5C(&v174[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type], v198);
  *v68 = v66;
  *(v68 + 1) = v67;

  sub_232B13F74((v58 + 6), v197);
  v173 = v58;
  v69 = v58[6];
  v70 = MEMORY[0x277D84F90];
  v194[0] = MEMORY[0x277D84F90];
  v71 = *(v69 + 16);
  if (v71)
  {
    v72 = v69 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
    v175 = *(v175 + 72);
    v171 = v69;

    do
    {
      v73 = v176;
      sub_232C05EC4();
      sub_232C05EC4();
      v74 = [objc_allocWithZone(type metadata accessor for DUStructuredExtractionLabel()) init];
      sub_232C07030();
      sub_232C05E6C(v73, v75);
      v76 = &v37[*(v177 + 20)];
      if (*(v76 + 1))
      {
        v77 = *v76;
        v78 = *(v76 + 1);
      }

      else
      {
        v77 = 0;
        v78 = 0xE000000000000000;
      }

      v79 = &v74[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
      sub_232B13F5C(&v74[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName], v196);
      *v79 = v77;
      *(v79 + 1) = v78;

      v80 = &v37[*(v177 + 24)];
      v81 = *v80;
      v82 = v80[8];
      sub_232C07030();
      sub_232C05E6C(v37, v83);
      if (v82)
      {
        v81 = 0.0;
      }

      v84 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
      v85 = sub_232B13F5C(&v74[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore], &v195);
      *&v74[v84] = v81;
      MEMORY[0x238391D50](v85);
      if (*((v194[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v194[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_232CEA000();
      }

      sub_232CEA020();
      v72 += v175;
      --v71;
    }

    while (v71);
    v70 = v194[0];
  }

  v86 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  v64 = v174;
  sub_232B13F5C(&v174[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels], v194);
  *&v64[v86] = v70;

  v87 = v173;
  sub_232B13F74((v173 + 7), &v193);
  sub_232B13F5C(&v64[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_phoneNumber], &v192);
  sub_232C071F4();

  sub_232B13F74((v87 + 9), &v191);
  sub_232B13F5C(&v64[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_email], &v190);
  sub_232C071F4();

  sub_232B13F74((v87 + 11), &v189);
  sub_232B13F5C(&v64[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_url], &v188);
  sub_232C071F4();

  sub_232B13F74((v87 + 13), &v187);
  v91 = v172;
  if (!*(v87[13] + 16))
  {
LABEL_38:
    sub_232B13F74(v87 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent, v185);
    v123 = v163;
    sub_232BF7340();
    sub_232BF5EEC();
    v124 = v164;
    v125 = sub_232B12480(v123, 1, v164);
    sub_232BFFB24(v123);
    v126 = 0;
    if (v125 != 1)
    {
      v127 = v157;
      sub_232BF5EEC();
      sub_232B351B0(v127, 1, v124);
      if (v147)
      {
        v128 = v158;
        *v158 = 0;
        sub_232CE9330();
        *&v128[v124[6]] = xmmword_232CFBB70;
        sub_232B35214(v124[7]);
        *&v128[v124[8]] = v129;
        sub_232B35214(v124[9]);
        sub_232B351B0(v127, 1, v124);
        if (!v147)
        {
          sub_232B13790(v127, &qword_27DDC7AC0, &qword_232CFBB80);
        }
      }

      else
      {
        sub_232C07000();
        sub_232C05E00();
      }

      sub_232C01E88();
      v126 = v130;
    }

    v131 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
    sub_232B13F5C(&v64[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent], &v184);
    v132 = *&v64[v131];
    *&v64[v131] = v126;

    sub_232B13F74(v87 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID, &v183);
    sub_232B13F5C(&v64[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_homeAutomationID], &v182);
    sub_232C071F4();

    sub_232B13F74(v87 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo, &v181);
    v133 = v165;
    sub_232BF7340();
    sub_232BF5EEC();
    v134 = v87;
    v135 = v166;
    v136 = sub_232B12480(v133, 1, v166);
    sub_232BFFB24(v133);
    v137 = 0;
    if (v136 != 1)
    {
      v138 = v159;
      sub_232BF5EEC();
      sub_232B351B0(v138, 1, v135);
      if (v147)
      {
        v139 = v160;
        *v160 = xmmword_232CF76F0;
        *(v139 + 16) = xmmword_232CF76F0;
        *(v139 + 32) = 0;
        sub_232CE9330();
        sub_232C070A0(v135[8]);
        sub_232C070A0(v135[9]);
        sub_232C070A0(v135[10]);
        sub_232C070A0(v135[11]);
        sub_232C070A0(v135[12]);
        sub_232C070A0(v135[13]);
        sub_232B351B0(v138, 1, v135);
        if (!v147)
        {
          sub_232B13790(v138, &qword_27DDC70F8, &qword_232CF8260);
        }
      }

      else
      {
        sub_232C07078();
        v139 = v160;
        sub_232C05E00();
      }

      v137 = sub_232B56548(v139);
      v134 = v173;
    }

    v140 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
    sub_232B13F5C(&v64[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo], &v180);
    v141 = *&v64[v140];
    *&v64[v140] = v137;

    sub_232B13F74(v134 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo, &v179);
    v142 = v167;
    sub_232BF5EEC();
    v143 = v168;
    sub_232B351B0(v142, 1, v168);
    if (v147)
    {
      (*(v91 + 8))(v155, v156);
      sub_232B13790(v142, &qword_27DDC67C8, &unk_232CF5E70);
      v144 = 0;
      v145 = v154;
    }

    else
    {
      sub_232BFFB24(v142);
      v146 = v161;
      sub_232BF7340();
      sub_232BF5EEC();
      sub_232B351B0(v146, 1, v143);
      if (v147)
      {
        sub_232CE9330();
        sub_232B35214(*(v143 + 20));
        sub_232B351B0(v146, 1, v143);
        v145 = v154;
        if (!v147)
        {
          sub_232B13790(v146, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C07060();
        sub_232C05E00();
        v145 = v154;
      }

      v144 = sub_232B4C530();
      v148 = sub_232BAE188();
      v149(v148);
    }

    sub_232C05E6C(v145, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
    v150 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
    sub_232B13F5C(&v64[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo], &v178);
    v151 = *&v64[v150];
    *&v64[v150] = v144;

    return v64;
  }

  type metadata accessor for NSTextCheckingKey(0, v88, v89, v90);
  v93 = v92;
  sub_232C06FB0(&qword_27DDC65C8, 255, type metadata accessor for NSTextCheckingKey, &unk_232CF5734);
  v153 = v93;
  v94 = sub_232CE9C60();
  v95 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
  sub_232B13F5C(&v64[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents], &v186);
  *&v64[v95] = v94;

  v96 = v87[13] + 64;
  sub_232C0726C();
  v99 = v98 & v97;
  v101 = (v100 + 63) >> 6;
  v175 = v102;

  v103 = 0;
  v170 = v96;
  v171 = v95;
  v169 = v101;
  if (v99)
  {
    goto LABEL_26;
  }

  do
  {
LABEL_22:
    v104 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v104 >= v101)
    {

      goto LABEL_38;
    }

    v99 = *(v96 + 8 * v104);
    ++v103;
  }

  while (!v99);
  v103 = v104;
LABEL_26:
  while (1)
  {
    v105 = (v103 << 10) | (16 * __clz(__rbit64(v99)));
    v106 = *(*(v175 + 48) + v105 + 8);
    v107 = (*(v175 + 56) + v105);
    v108 = v107[1];
    v177 = *v107;

    v176 = v106;
    v109 = sub_232CE9D20();
    sub_232B207D4(&v64[v95], v185);
    if (!*&v64[v95])
    {
      break;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v184 = *&v64[v95];
    v110 = v184;
    *&v64[v95] = 0x8000000000000000;
    v111 = sub_232B20540();
    if (__OFADD__(v110[2], (v112 & 1) == 0))
    {
      goto LABEL_61;
    }

    v113 = v111;
    v114 = v112;
    sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
    if (sub_232CEA5C0())
    {
      v115 = sub_232B20540();
      if ((v114 & 1) != (v116 & 1))
      {
        goto LABEL_64;
      }

      v113 = v115;
    }

    v117 = v184;
    if (v114)
    {
      v118 = (v184[7] + 16 * v113);
      *v118 = v177;
      v118[1] = v108;
    }

    else
    {
      v184[(v113 >> 6) + 8] |= 1 << v113;
      *(v117[6] + 8 * v113) = v109;
      v119 = (v117[7] + 16 * v113);
      *v119 = v177;
      v119[1] = v108;
      v120 = v117[2];
      v121 = __OFADD__(v120, 1);
      v122 = v120 + 1;
      if (v121)
      {
        goto LABEL_62;
      }

      v117[2] = v122;
    }

    v99 &= v99 - 1;
    v64 = v174;
    v95 = v171;
    *&v174[v171] = v117;
    swift_endAccess();

    v91 = v172;
    v87 = v173;
    v101 = v169;
    v96 = v170;
    if (!v99)
    {
      goto LABEL_22;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

char *sub_232C01A1C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(type metadata accessor for DUStructuredExtractionLabel()) init];
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v5 = (a1 + *(v4 + 20));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
  sub_232B13F5C(&v3[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName], v16);
  *v8 = v6;
  *(v8 + 1) = v7;

  v9 = a1 + *(v4 + 24);
  v10 = *v9;
  v11 = *(v9 + 8);
  sub_232C07030();
  sub_232C05E6C(a1, v12);
  if (v11)
  {
    v10 = 0.0;
  }

  v13 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
  sub_232B13F5C(&v3[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore], &v15);
  *&v3[v13] = v10;
  return v3;
}

char *sub_232C01B20(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [objc_allocWithZone(v1) init];
  sub_232C05E00();
  v6 = &v4[*(v2 + 20)];
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = &v5[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
  swift_beginAccess();
  *v9 = v7;
  *(v9 + 1) = v8;

  v10 = &v4[*(v2 + 24)];
  v11 = *v10;
  v12 = *(v10 + 8);
  sub_232C05E6C(v4, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
  if (v12)
  {
    v11 = 0.0;
  }

  v13 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
  swift_beginAccess();
  *&v5[v13] = v11;
  return v5;
}

char *DUStructuredExtractionLabel.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7AE0, &unk_232CFBB98);
  sub_232B2D120(v4);
  sub_232B2D114();
  MEMORY[0x28223BE20](v5);
  v7 = &v27[-v6];
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  sub_232C071E8();
  v10 = [objc_allocWithZone(v2) init];
  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v11, v12, v13, v8);
    sub_232C0711C();
    sub_232BAE188();
    sub_232C05E00();
    v14 = (v3 + *(v8 + 20));
    if (v14[1])
    {
      v15 = *v14;
      v16 = v14[1];
    }

    else
    {
      v15 = 0;
      v16 = 0xE000000000000000;
    }

    v20 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
    sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName], v28);
    *v20 = v15;
    *(v20 + 1) = v16;

    v21 = v3 + *(v8 + 24);
    v22 = *v21;
    v23 = *(v21 + 8);
    sub_232C07030();
    sub_232C05E6C(v3, v24);
    if (v23)
    {
      v22 = 0.0;
    }

    v25 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
    sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore], v27);
    *&v10[v25] = v22;
  }

  else
  {

    sub_232B55484();
    sub_232B12504(v17, v18, v19, v8);
    sub_232B13790(v7, &qword_27DDC7AE0, &unk_232CFBB98);
    return 0;
  }

  return v10;
}

void sub_232C01E88()
{
  sub_232B35110();
  v1 = v0;
  v2 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v4);
  sub_232B55558();
  v5 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v6 = sub_232B2D120(v5);
  MEMORY[0x28223BE20](v6);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v7);
  sub_232B20628();
  sub_232B20600();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v13 = (v12 - v11);
  v14 = [objc_allocWithZone(type metadata accessor for DUCalendarEvent(0)) init];
  sub_232C07164();
  v48 = v1;
  sub_232C05EC4();
  LOBYTE(v1) = *v13;
  v15 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
  sub_232B13F5C(&v14[OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay], &v49);
  v14[v15] = v1;
  v16 = sub_232CE8940();
  sub_232BF73F4(v16);
  sub_232CE8930();
  v47 = v9;
  v17 = &v13[*(v9 + 24)];
  v18 = *v17;
  v19 = v17[1];
  if (v19 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = *v17;
  }

  if (v19 >> 60 == 15)
  {
    v21 = 0xC000000000000000;
  }

  else
  {
    v21 = v17[1];
  }

  v22 = sub_232CE8AE0();
  sub_232C05E58(v18, v19);
  sub_232C07048();
  sub_232C06FB0(v23, 255, v24, MEMORY[0x277CC89B0]);
  sub_232CE8920();
  sub_232B41BEC(v20, v21);

  sub_232B351FC();
  sub_232B12504(v25, v26, v27, v22);
  sub_232C070D0(&v14[OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_startDateComponents]);
  sub_232BF6164();
  swift_endAccess();
  if (*&v13[v47[7] + 8])
  {

    sub_232CE8EA0();
  }

  else
  {
    sub_232CE8F00();
    sub_232B55484();
    sub_232B12504(v28, v29, v30, v31);
  }

  sub_232C070D0(&v14[OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_startTimezone]);
  sub_232BF6164();
  swift_endAccess();
  swift_allocObject();
  sub_232CE8930();
  v32 = sub_232C07294(&v13[v47[8]]);
  if (!v35 & v34)
  {
    v36 = 0xC000000000000000;
  }

  else
  {
    v36 = v33;
  }

  sub_232C05E58(v32, v33);
  sub_232CE8920();
  sub_232B41BEC(v16, v36);

  sub_232B351FC();
  sub_232B12504(v37, v38, v39, v22);
  sub_232C070D0(&v14[OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_endDateComponents]);
  sub_232BF6164();
  swift_endAccess();
  v40 = *&v13[v47[9] + 8];
  if (v40)
  {

    sub_232B5EFF4();
    sub_232CE8EA0();

    sub_232C07134();
    sub_232C05E6C(v48, v41);
    sub_232C05E6C(v13, v40);
  }

  else
  {
    sub_232C07134();
    sub_232C05E6C(v48, v42);
    sub_232C05E6C(v13, 0);
    sub_232CE8F00();
    v43 = sub_232C07090();
    sub_232B12504(v43, v44, v45, v46);
  }

  sub_232C070D0(&v14[OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_endTimezone]);
  sub_232BF6164();
  swift_endAccess();
  sub_232B20A00();
}

_BYTE *sub_232C023D4(uint64_t a1)
{
  v3 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = v36 - v6;
  v7 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36[1] = v36 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  v14 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  MEMORY[0x28223BE20](v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(v1) init];
  v40 = a1;
  sub_232C05EC4();
  LOBYTE(a1) = *v16;
  v18 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
  swift_beginAccess();
  v17[v18] = a1;
  sub_232CE8940();
  swift_allocObject();
  sub_232CE8930();
  v39 = v14;
  v19 = &v16[*(v14 + 24)];
  v20 = *v19;
  v21 = v19[1];
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v19;
  }

  if (v21 >> 60 == 15)
  {
    v23 = 0xC000000000000000;
  }

  else
  {
    v23 = v19[1];
  }

  v24 = sub_232CE8AE0();
  sub_232C05E58(v20, v21);
  v36[0] = sub_232C06FB0(&qword_27DDC7AF0, 255, MEMORY[0x277CC8990], MEMORY[0x277CC89B0]);
  sub_232CE8920();
  sub_232B41BEC(v22, v23);

  sub_232B12504(v13, 0, 1, v24);
  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  v25 = v39;
  v26 = v37;
  if (*&v16[*(v39 + 28) + 8])
  {

    sub_232CE8EA0();
  }

  else
  {
    v27 = sub_232CE8F00();
    sub_232B12504(v26, 1, 1, v27);
  }

  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  swift_allocObject();
  sub_232CE8930();
  v28 = &v16[*(v25 + 32)];
  v29 = v28[1];
  if (v29 >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v30 = *v28;
  }

  if (v29 >> 60 == 15)
  {
    v31 = 0xC000000000000000;
  }

  else
  {
    v31 = v28[1];
  }

  sub_232C05E58(*v28, v29);
  v32 = v38;
  sub_232CE8920();
  sub_232B41BEC(v30, v31);

  sub_232B12504(v32, 0, 1, v24);
  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  v33 = v41;
  if (*&v16[*(v25 + 36) + 8])
  {

    sub_232CE8EA0();

    sub_232C05E6C(v40, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
    sub_232C05E6C(v16, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
  }

  else
  {
    sub_232C05E6C(v40, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
    sub_232C05E6C(v16, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
    v34 = sub_232CE8F00();
    sub_232B12504(v33, 1, 1, v34);
  }

  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  return v17;
}

void DUCalendarEvent.__allocating_init<A>(proto:)()
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  v6 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  v9 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  sub_232B55558();
  v85 = v11;
  v12 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v13 = sub_232B2D120(v12);
  MEMORY[0x28223BE20](v13);
  sub_232B20714();
  v87 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B20628();
  v86 = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  sub_232B55558();
  v84 = v18;
  v19 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  sub_232B2D120(v19);
  sub_232B2D114();
  MEMORY[0x28223BE20](v20);
  sub_232BF7454();
  sub_232B350D8();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_232B20704();
  v26 = v25 - v24;
  v27 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v28);
  sub_232B20704();
  v31 = (v30 - v29);
  v32 = [objc_allocWithZone(v0) init];
  (*(v22 + 16))(v26, v5, v3);
  if (swift_dynamicCast())
  {
    v80 = v22;
    v81 = v5;
    v82 = v3;
    v83 = v9;
    sub_232B351FC();
    sub_232B12504(v33, v34, v35, v27);
    sub_232C07000();
    sub_232C05E00();
    v36 = *v31;
    v37 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
    sub_232B13F5C(&v32[OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay], &v88);
    v32[v37] = v36;
    v38 = sub_232CE8940();
    sub_232BF73F4(v38);
    sub_232CE8930();
    v39 = v27[6];
    v79 = v31;
    v40 = &v31[v39];
    v41 = *v40;
    v42 = v40[1];
    if (v42 >> 60 == 15)
    {
      v43 = 0;
    }

    else
    {
      v43 = *v40;
    }

    if (v42 >> 60 == 15)
    {
      v44 = 0xC000000000000000;
    }

    else
    {
      v44 = v40[1];
    }

    v45 = sub_232CE8AE0();
    sub_232C05E58(v41, v42);
    sub_232C07048();
    sub_232C06FB0(v46, 255, v47, MEMORY[0x277CC89B0]);
    sub_232C07280();
    v78[1] = v48;
    sub_232CE8920();
    sub_232B41BEC(v43, v44);

    sub_232B351FC();
    sub_232B12504(v52, v53, v54, v45);
    sub_232C070B0();
    sub_232BF6164();
    swift_endAccess();
    v55 = v79;
    v56 = v81;
    if (*&v79[v27[7] + 8])
    {

      sub_232B5EFF4();
      sub_232CE8EA0();
    }

    else
    {
      sub_232CE8F00();
      sub_232B55484();
      sub_232B12504(v57, v58, v59, v60);
    }

    v61 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_startTimezone;
    sub_232C070B0();
    sub_232BF6164();
    swift_endAccess();
    swift_allocObject();
    sub_232CE8930();
    v62 = sub_232C07294(v55 + v27[8]);
    if (!v65 & v64)
    {
      v66 = 0xC000000000000000;
    }

    else
    {
      v66 = v63;
    }

    sub_232C05E58(v62, v63);
    sub_232C07280();
    sub_232CE8920();
    sub_232B41BEC(v61, v66);

    sub_232B351FC();
    sub_232B12504(v67, v68, v69, v45);
    sub_232C070B0();
    sub_232BF6164();
    swift_endAccess();
    v70 = v80;
    v71 = v82;
    if (*(v55 + v27[9] + 8))
    {

      sub_232B5EFF4();
      sub_232CE8EA0();

      (*(v70 + 8))(v56, v71);
      sub_232C07018();
      sub_232C05E6C(v55, v72);
    }

    else
    {
      (*(v80 + 8))(v56, v82);
      sub_232C07018();
      sub_232C05E6C(v55, v73);
      sub_232CE8F00();
      v74 = sub_232C07090();
      sub_232B12504(v74, v75, v76, v77);
    }

    sub_232C070B0();
    sub_232BF6164();
    swift_endAccess();
  }

  else
  {
    (*(v22 + 8))(v5, v3);

    v49 = sub_232C07090();
    sub_232B12504(v49, v50, v51, v27);
    sub_232B13790(v1, &qword_27DDC7AC0, &qword_232CFBB80);
  }

  sub_232B20A00();
}

void sub_232C030A4()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v5 = sub_232B2D120(v4);
  MEMORY[0x28223BE20](v5);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v6);
  sub_232B55558();
  v187 = v7;
  v8 = sub_232B554F0();
  v188 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(v8);
  sub_232B13F24();
  MEMORY[0x28223BE20](v9);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v10);
  sub_232B20628();
  v182 = v11;
  sub_232B20600();
  MEMORY[0x28223BE20](v12);
  sub_232B55558();
  v13 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v14 = sub_232B2D120(v13);
  MEMORY[0x28223BE20](v14);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B55558();
  v184 = v16;
  v17 = sub_232B554F0();
  v186 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(v17);
  sub_232B13F24();
  MEMORY[0x28223BE20](v18);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v19);
  sub_232B20628();
  v181 = v20;
  sub_232B20600();
  MEMORY[0x28223BE20](v21);
  sub_232B55558();
  v22 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v23 = sub_232B2D120(v22);
  MEMORY[0x28223BE20](v23);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v24);
  sub_232B55558();
  v183 = v25;
  v26 = sub_232B554F0();
  v185 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(v26);
  sub_232B13F24();
  MEMORY[0x28223BE20](v27);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v28);
  sub_232B20628();
  sub_232B20600();
  MEMORY[0x28223BE20](v29);
  sub_232B55558();
  v180 = v30;
  v31 = sub_232B554F0();
  v32 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v31);
  MEMORY[0x28223BE20](v32 - 8);
  sub_232B20704();
  v35 = v34 - v33;
  sub_232CE9330();
  v36 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0) + 20);
  if (qword_27DDC6428 != -1)
  {
LABEL_86:
    swift_once();
  }

  *(v3 + v36) = qword_27DDC83E0;
  v37 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title, &v218);
  v39 = *v37;
  v38 = v37[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v3 + v36);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
    sub_232BF73F4(v42);
    v41 = sub_232C0717C();
    *(v3 + v36) = v41;
  }

  sub_232B13F5C(v41 + 16, &v217);
  *(v41 + 16) = v39;
  *(v41 + 24) = v38;

  v43 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type, &v216);
  v45 = *v43;
  v44 = v43[1];

  v46 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v3 + v36);
  v193 = v36;
  v194 = v3;
  if ((v46 & 1) == 0)
  {
    v48 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
    sub_232BF73F4(v48);
    v47 = sub_232C0717C();
    *(v3 + v36) = v47;
  }

  sub_232B13F5C(v47 + 32, &v215);
  *(v47 + 32) = v45;
  *(v47 + 40) = v44;

  v49 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels, &v214);
  v189 = v1;
  v3 = *(v1 + v49);
  v50 = sub_232B26B10();

  v1 = 0;
  v51 = MEMORY[0x277D84F90];
  while (v50 != v1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x2383922C0](v1, v3);
    }

    else
    {
      if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v52 = *(v3 + 8 * v1 + 32);
    }

    v53 = v52;
    if (__OFADD__(v1, 1))
    {
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

    sub_232C04408(v35);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232B36E34();
      v51 = v54;
    }

    v36 = *(v51 + 16);
    if (v36 >= *(v51 + 24) >> 1)
    {
      sub_232B36E34();
      v51 = v55;
    }

    *(v51 + 16) = v36 + 1;
    sub_232C0711C();
    sub_232C05E00();
    ++v1;
  }

  v1 = v193;
  v35 = v194;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v194 + v193);
  if ((v56 & 1) == 0)
  {
    v58 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
    sub_232BF73F4(v58);
    v59 = sub_232C0717C();
    sub_232C07244(v59);
  }

  v60 = v189;
  sub_232B13F5C((v57 + 6), &v213);
  v57[6] = v51;

  v61 = (v189 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_phoneNumber);
  sub_232B13F74(v189 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_phoneNumber, &v212);
  v62 = v61[1];
  if (v62)
  {
    v63 = *v61;

    v64 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v194 + v193);
    if ((v64 & 1) == 0)
    {
      v65 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
      sub_232BF73F4(v65);
      v66 = sub_232C0717C();
      sub_232C07244(v66);
    }

    sub_232B13F5C((v57 + 7), &v198);
    v57[7] = v63;
    v57[8] = v62;
  }

  v67 = (v189 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_email);
  sub_232B13F74(v189 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_email, &v211);
  v68 = v67[1];
  if (v68)
  {
    v69 = *v67;

    v70 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v194 + v193);
    if ((v70 & 1) == 0)
    {
      v71 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
      sub_232BF73F4(v71);
      v72 = sub_232C0717C();
      sub_232C07244(v72);
    }

    sub_232B13F5C((v57 + 9), &v199);
    v57[9] = v69;
    v57[10] = v68;
  }

  v73 = (v189 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_url);
  sub_232B13F74(v189 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_url, &v210);
  v74 = v73[1];
  if (v74)
  {
    v75 = *v73;

    v76 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v194 + v193);
    if ((v76 & 1) == 0)
    {
      v77 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
      sub_232BF73F4(v77);
      v78 = sub_232C0717C();
      sub_232C07244(v78);
    }

    sub_232B13F5C((v57 + 11), &v200);
    v57[11] = v75;
    v57[12] = v74;
  }

  v79 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
  sub_232B13F74(v189 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents, &v209);
  v80 = *(v189 + v79);
  if (v80)
  {
    v81 = v80 + 64;
    sub_232C0726C();
    v84 = v83 & v82;
    v36 = (v85 + 63) >> 6;

    v3 = 0;
    v190 = v36;
    v191 = v80 + 64;
    v192 = v80;
    if (v84)
    {
      goto LABEL_38;
    }

LABEL_34:
    while (1)
    {
      v86 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_83;
      }

      if (v86 >= v36)
      {

        v60 = v189;
        break;
      }

      v84 = *(v81 + 8 * v86);
      ++v3;
      if (v84)
      {
        v3 = v86;
LABEL_38:
        while (1)
        {
          v87 = __clz(__rbit64(v84)) | (v3 << 6);
          v88 = *(v80 + 56);
          v89 = *(*(v80 + 48) + 8 * v87);
          v90 = (v88 + 16 * v87);
          v91 = v90[1];
          v197 = *v90;
          v92 = sub_232CE9D50();
          v1 = v93;
          sub_232B13F74((v57 + 13), &v202);
          v94 = v57[13];
          v195 = v89;
          v36 = v91;

          swift_isUniquelyReferenced_nonNull_native();
          v208 = v94;
          v196 = v92;
          v95 = sub_232B1F160(v92, v1);
          v97 = v94[2];
          v98 = (v96 & 1) == 0;
          v35 = v97 + v98;
          if (__OFADD__(v97, v98))
          {
            goto LABEL_84;
          }

          v99 = v95;
          v100 = v96;
          sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
          if (sub_232CEA5C0())
          {
            v101 = sub_232B1F160(v196, v1);
            if ((v100 & 1) != (v102 & 1))
            {
              sub_232CEA7A0();
              __break(1u);
              return;
            }

            v99 = v101;
          }

          v57 = v197;
          if (v100)
          {

            v103 = v208;
            v104 = (v208[7] + 16 * v99);
            *v104 = v197;
            v104[1] = v36;
          }

          else
          {
            v103 = v208;
            v208[(v99 >> 6) + 8] |= 1 << v99;
            v105 = (v103[6] + 16 * v99);
            *v105 = v196;
            v105[1] = v1;
            v106 = (v103[7] + 16 * v99);
            *v106 = v197;
            v106[1] = v36;
            v107 = v103[2];
            v108 = __OFADD__(v107, 1);
            v109 = v107 + 1;
            if (v108)
            {
              goto LABEL_85;
            }

            v103[2] = v109;
          }

          v1 = v193;
          v35 = v194;
          v36 = v190;
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v57 = *(v194 + v193);
          }

          else
          {
            v110 = sub_232C072E8();
            sub_232BF73F4(v110);
            sub_232BF73E8();

            sub_232C62BD0(v111);
            sub_232BF73E8();

            *(v194 + v193) = v197;
          }

          v80 = v192;
          v84 &= v84 - 1;
          sub_232B13F5C((v57 + 13), &v201);
          v57[13] = v103;

          v81 = v191;
          if (!v84)
          {
            goto LABEL_34;
          }
        }
      }
    }
  }

  v112 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
  sub_232B13F74(v60 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent, &v208);
  v113 = *(v60 + v112);
  if (!v113)
  {
    v115 = v183;
    v125 = sub_232C07090();
    sub_232B12504(v125, v126, v127, v185);
    goto LABEL_57;
  }

  v114 = v113;
  sub_232C05148();

  v115 = v183;
  v116 = sub_232B41C8C();
  v118 = sub_232C07250(v116, v117);
  v119 = sub_232C070EC(v118);
  sub_232B351B0(v119, v120, v121);
  if (v122)
  {
LABEL_57:
    sub_232B13790(v115, &qword_27DDC7AC0, &qword_232CFBB80);
    goto LABEL_60;
  }

  sub_232C07000();
  sub_232C05E00();
  sub_232C07164();
  sub_232C05EC4();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232C07018();
    sub_232C05E6C(v180, v123);
    v124 = *(v35 + v1);
  }

  else
  {
    v128 = sub_232C072E8();
    sub_232BF73F4(v128);
    sub_232BF73E8();

    v124 = sub_232C62BD0(v129);
    sub_232C07018();
    sub_232C05E6C(v180, v130);

    *(v35 + v1) = v124;
  }

  sub_232C07000();
  sub_232C05E00();
  sub_232B351FC();
  sub_232B12504(v131, v132, v133, v185);
  sub_232B207D4(v124 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent, v207);
  sub_232BF6164();
  swift_endAccess();
LABEL_60:
  v134 = (v60 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_homeAutomationID);
  sub_232B13F74(v60 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_homeAutomationID, v207);
  v135 = v134[1];
  if (v135)
  {
    v136 = *v134;

    v137 = swift_isUniquelyReferenced_nonNull_native();
    v138 = *(v35 + v1);
    if ((v137 & 1) == 0)
    {
      v139 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
      sub_232BF73F4(v139);
      v140 = sub_232C0717C();
      sub_232C07244(v140);
    }

    v141 = (v138 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
    sub_232B13F5C(v141, &v203);
    *v141 = v136;
    v141[1] = v135;
  }

  v142 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
  sub_232B13F74(v60 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo, &v206);
  v143 = *(v60 + v142);
  if (!v143)
  {
    v149 = v184;
    sub_232B55484();
    sub_232B12504(v154, v155, v156, v186);
    v152 = v187;
    goto LABEL_69;
  }

  v144 = v143;
  sub_232B5708C(v181);

  v145 = sub_232B41C8C();
  v147 = sub_232C07250(v145, v146);
  v148 = sub_232C070EC(v147);
  v149 = v184;
  sub_232B351B0(v148, v150, v151);
  v152 = v187;
  if (v122)
  {
LABEL_69:
    sub_232B13790(v149, &qword_27DDC70F8, &qword_232CF8260);
    goto LABEL_72;
  }

  sub_232C07078();
  sub_232C05E00();
  sub_232C05EC4();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232C071C0();
    v153 = *(v35 + v1);
  }

  else
  {
    v157 = sub_232C072E8();
    sub_232BF73F4(v157);
    sub_232BF73E8();

    v153 = sub_232C62BD0(v158);
    sub_232C071C0();

    *(v35 + v1) = v153;
  }

  sub_232C07078();
  sub_232C05E00();
  sub_232B351FC();
  sub_232B12504(v159, v160, v161, v186);
  sub_232B207D4(v153 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo, v205);
  sub_232BF6164();
  swift_endAccess();
  v152 = v187;
LABEL_72:
  v162 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
  sub_232B13F74(v60 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo, v205);
  v163 = *(v60 + v162);
  if (v163)
  {
    v164 = v163;
    sub_232B55A40(v182);

    v165 = sub_232B41C8C();
    v167 = sub_232C07250(v165, v166);
    v168 = sub_232C070EC(v167);
    sub_232B351B0(v168, v169, v170);
    if (!v122)
    {
      sub_232C07060();
      sub_232C05E00();
      sub_232C05EC4();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_232C07198();
        v171 = *(v35 + v1);
      }

      else
      {
        v175 = sub_232C072E8();
        sub_232BF73F4(v175);
        sub_232BF73E8();

        v171 = sub_232C62BD0(v176);
        sub_232C07198();

        *(v35 + v1) = v171;
      }

      sub_232C07060();
      sub_232C05E00();
      sub_232B351FC();
      sub_232B12504(v177, v178, v179, v188);
      sub_232B207D4(v171 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo, &v204);
      sub_232BF6164();
      swift_endAccess();
      goto LABEL_80;
    }
  }

  else
  {
    v172 = sub_232C07090();
    sub_232B12504(v172, v173, v174, v188);
  }

  sub_232B13790(v152, &qword_27DDC67C8, &unk_232CF5E70);
LABEL_80:
  sub_232B20A00();
}

uint64_t sub_232C03E64()
{
  v1 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0);
  v2 = sub_232B2D120(v1);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  sub_232C071E8();
  sub_232C030A4();
  sub_232C07898(v0);
  v3 = sub_232B124A8(&qword_27DDC7AF8, &qword_232CFBBA8);
  return sub_232C07210(v3);
}

uint64_t DUStructuredEntity.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUStructuredEntity.init(coder:)(v2);
}

id DUStructuredEntity.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels] = MEMORY[0x277D84F90];
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_phoneNumber);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_email);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_url);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent] = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_homeAutomationID);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DUStructuredEntity();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_232C0423C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_232C083F0(a2);
  *a1 = result;
  return result;
}

double sub_232C0431C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
  sub_232B26BFC(a1);
  return *(v1 + v2);
}

uint64_t sub_232C04374(double a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
  result = sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore, v5);
  *(v1 + v3) = a1;
  return result;
}

double sub_232C04408@<D0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v5 = (a2 + *(v4 + 20));
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + *(v4 + 24);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName, v13);
  v8 = *v7;
  v9 = v7[1];
  *v5 = v8;
  v5[1] = v9;
  v10 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore, &v12);
  *v6 = *(v2 + v10);
  *(v6 + 8) = 0;

  return result;
}

uint64_t sub_232C044AC()
{
  v1 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v2 = sub_232B2D120(v1);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  sub_232C071E8();
  sub_232C04408(v0);
  sub_232C01A1C(v0, v3);
  v4 = sub_232B124A8(&qword_27DDC7B08, &qword_232CFBBB0);
  return sub_232C07210(v4);
}

uint64_t sub_232C0454C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_232B203C8(v8, v8[3]);
  v6 = sub_232CEA740();
  sub_232B2040C(v8);
  return v6;
}

void sub_232C045FC(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2();
  sub_232C06FB0(a3, v8, a4, a5);
  v9 = sub_232CE98A0();
  if (v9)
  {
    v10 = v9;
    v11 = sub_232C072A8();
    sub_232BF7340();
    [v12 v13];
  }
}

uint64_t DUStructuredExtractionLabel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUStructuredExtractionLabel.init(coder:)(v2);
}

uint64_t sub_232C0477C(void *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_getObjectType();
  sub_232B1F870();
  sub_232C07220();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  sub_232BF73E8();
  swift_getObjectType();
  sub_232C06FB0(a2, v8, a3, a4);
  sub_232CE98B0();

  v9 = v13;
  if (!v13)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232C072C8(ObjectType);
    return 0;
  }

  v10 = swift_getObjectType();
  sub_232C072C8(v10);
  return v9;
}

id DUStructuredExtractionLabel.init()(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore] = 0;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DUStructuredExtractionLabel();
  return objc_msgSendSuper2(&v5, sel_init);
}

char *sub_232C0495C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232C01B20(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C049AC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
  sub_232B26BFC(a1);
  return *(v1 + v2);
}

uint64_t sub_232C04A08(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
  result = sub_232B26C50(a1);
  *(v1 + v3) = v2;
  return result;
}

id sub_232C04B60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B2D120(v5);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232B5A028();
  a3();
  v7 = sub_232CE8F00();
  v8 = sub_232C07238();
  v10 = 0;
  if (sub_232B12480(v8, v9, v7) != 1)
  {
    v10 = v3;
    sub_232CE8ED0();
    sub_232B5A014();
    (*(v11 + 8))(v3, v7);
  }

  return v10;
}

void sub_232C04C70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B2D120(v8);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  sub_232BF7454();
  if (a3)
  {
    sub_232CE8EE0();
    v10 = sub_232CE8F00();
    v11 = 0;
  }

  else
  {
    v10 = sub_232CE8F00();
    v11 = 1;
  }

  sub_232B12504(v4, v11, 1, v10);
  v12 = a1;
  v13 = sub_232BF73E8();
  a4(v13);
}

id sub_232C04DB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  sub_232B2D120(v5);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232B5A028();
  a3();
  v7 = sub_232CE8AE0();
  v8 = sub_232C07238();
  v10 = 0;
  if (sub_232B12480(v8, v9, v7) != 1)
  {
    v10 = v3;
    sub_232CE8A10();
    sub_232B5A014();
    (*(v11 + 8))(v3, v7);
  }

  return v10;
}

void sub_232C04EC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  sub_232B2D120(v8);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  sub_232BF7454();
  if (a3)
  {
    sub_232CE8A20();
    v10 = sub_232CE8AE0();
    v11 = 0;
  }

  else
  {
    v10 = sub_232CE8AE0();
    v11 = 1;
  }

  sub_232B12504(v4, v11, 1, v10);
  v12 = a1;
  v13 = sub_232BF73E8();
  a4(v13);
}

uint64_t sub_232C05058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v8 = sub_232B124A8(a5, a6);
  sub_232B2D120(v8);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_232BF5EEC();
  return a7(v11);
}

void sub_232C05148()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v84 = 0;
  v4 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v5 = sub_232B2D120(v4);
  MEMORY[0x28223BE20](v5);
  sub_232B20714();
  v82 = v6;
  sub_232B20600();
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - v8;
  sub_232CE8F00();
  sub_232B350D8();
  v80 = v11;
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  sub_232B20714();
  v77 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B55558();
  v75 = v14;
  v15 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v16 = sub_232B2D120(v15);
  MEMORY[0x28223BE20](v16);
  sub_232B20714();
  v78 = v17;
  sub_232B20600();
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  v21 = sub_232CE8AE0();
  sub_232B350D8();
  v83 = v22;
  MEMORY[0x28223BE20](v23);
  sub_232B20714();
  v79 = v24;
  sub_232B20600();
  MEMORY[0x28223BE20](v25);
  v27 = &v74 - v26;
  v28 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232CE9330();
  v29 = &v3[v28[6]];
  *v29 = xmmword_232CFBB70;
  v30 = &v3[v28[7]];
  *v30 = 0;
  v30[1] = 0;
  v74 = &v3[v28[8]];
  *v74 = xmmword_232CFBB70;
  sub_232B35214(v28[9]);
  v76 = v31;
  v32 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay, &v89);
  *v3 = *(v1 + v32);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_startDateComponents, &v88);
  sub_232BF5EEC();
  v33 = sub_232C07238();
  sub_232B351B0(v33, v34, v21);
  if (v35)
  {
    sub_232B13790(v20, &qword_27DDC70B0, &unk_232CF81C0);
    v36 = v83;
  }

  else
  {
    (*(v83 + 32))(v27, v20, v21);
    v37 = sub_232CE8970();
    sub_232BF73F4(v37);
    sub_232CE8960();
    sub_232C07048();
    sub_232C06FB0(v38, 255, v39, MEMORY[0x277CC8998]);
    v40 = v84;
    v41 = sub_232CE8950();
    if (v40)
    {

      v36 = v83;
      (*(v83 + 8))(v27, v21);
      v84 = 0;
    }

    else
    {
      v43 = v41;
      v44 = v42;
      v84 = 0;
      v45 = v83;
      (*(v83 + 8))(v27, v21);

      sub_232BB6018(*v29, *(v29 + 1));
      *v29 = v43;
      *(v29 + 1) = v44;
      v36 = v45;
    }
  }

  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_startTimezone, &v87);
  sub_232BF5EEC();
  v46 = v81;
  sub_232B351B0(v9, 1, v81);
  if (v35)
  {
    sub_232B13790(v9, &qword_27DDC70B8, &qword_232CF81D0);
  }

  else
  {
    v47 = v80;
    v48 = v75;
    (*(v80 + 32))(v75, v9, v46);
    v49 = sub_232CE8EB0();
    v51 = v50;
    (*(v47 + 8))(v48, v46);
    *v30 = v49;
    v30[1] = v51;
  }

  v52 = v79;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_endDateComponents, &v86);
  v53 = v78;
  sub_232BF5EEC();
  v54 = sub_232C07238();
  sub_232B351B0(v54, v55, v21);
  if (v35)
  {
    sub_232B13790(v53, &qword_27DDC70B0, &unk_232CF81C0);
  }

  else
  {
    (*(v36 + 32))(v52, v53, v21);
    v56 = sub_232CE8970();
    sub_232BF73F4(v56);
    sub_232CE8960();
    sub_232C07048();
    sub_232C06FB0(v57, 255, v58, MEMORY[0x277CC8998]);
    v59 = v84;
    v60 = sub_232CE8950();
    if (v59)
    {

      (*(v36 + 8))(v52, v21);
    }

    else
    {
      v62 = v60;
      v63 = v61;
      (*(v36 + 8))(v52, v21);

      v64 = v74;
      sub_232BB6018(*v74, v74[1]);
      *v64 = v62;
      v64[1] = v63;
    }
  }

  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_endTimezone, &v85);
  v65 = v82;
  sub_232BF5EEC();
  v66 = sub_232C07238();
  sub_232B351B0(v66, v67, v46);
  if (v35)
  {
    sub_232B13790(v65, &qword_27DDC70B8, &qword_232CF81D0);
  }

  else
  {
    v68 = v80;
    v69 = v77;
    (*(v80 + 32))(v77, v65, v46);
    v70 = sub_232CE8EB0();
    v72 = v71;
    (*(v68 + 8))(v69, v46);
    v73 = v76;
    *v76 = v70;
    v73[1] = v72;
  }

  sub_232B20A00();
}

uint64_t sub_232C057F4()
{
  v0 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v1 = sub_232B2D120(v0);
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  sub_232C071E8();
  sub_232C05148();
  sub_232C01E88();
  v2 = sub_232B124A8(&qword_27DDC7B20, &qword_232CFBBB8);
  return sub_232C07210(v2);
}

void sub_232C05894()
{
  type metadata accessor for DUCalendarEvent(0);
  sub_232C0714C();
  sub_232C06FB0(v0, 255, v1, &protocol conformance descriptor for DUCalendarEvent);
  v2 = sub_232CE98A0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_232C072A8();
    sub_232BF7340();
    [v5 v6];
  }
}

uint64_t DUCalendarEvent.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUCalendarEvent.init(coder:)(v2);
}

uint64_t DUCalendarEvent.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  sub_232C07220();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  sub_232B26CE8();
  swift_getObjectType();
  sub_232C0714C();
  sub_232C06FB0(v2, 255, v3, &protocol conformance descriptor for DUCalendarEvent);
  sub_232CE98B0();

  v4 = v6;
  if (!v6)
  {
LABEL_5:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

id DUCalendarEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUCalendarEvent.init()()
{
  v0[OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay] = 0;
  v1 = sub_232CE8AE0();
  sub_232B55484();
  sub_232B12504(v2, v3, v4, v1);
  v5 = sub_232CE8F00();
  sub_232B55484();
  sub_232B12504(v6, v7, v8, v5);
  sub_232B55484();
  sub_232B12504(v9, v10, v11, v1);
  sub_232B55484();
  sub_232B12504(v12, v13, v14, v5);
  v16.receiver = v0;
  v16.super_class = type metadata accessor for DUCalendarEvent(0);
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_232C05CB8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_BYTE *sub_232C05DB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_232C023D4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C05E00()
{
  sub_232B2D12C();
  v1(0);
  sub_232B13F24();
  v2 = sub_232B2080C();
  v3(v2);
  return v0;
}

uint64_t sub_232C05E58(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_232B41B94(result, a2);
  }

  return result;
}

uint64_t sub_232C05E6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232C05EC4()
{
  sub_232B2D12C();
  v1(0);
  sub_232B13F24();
  v2 = sub_232B2080C();
  v3(v2);
  return v0;
}

uint64_t type metadata accessor for DUCalendarEvent(uint64_t a1)
{
  result = qword_27DDC7B30;
  if (!qword_27DDC7B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C06A54(uint64_t a1)
{
  sub_232C06F5C(319, &unk_2814E25F0, MEMORY[0x277CC8990]);
  if (v1 <= 0x3F)
  {
    sub_232C06F5C(319, &qword_2814E25C0, MEMORY[0x277CC9A70]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_232C06F5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232C06FB0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_232C070A0(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t sub_232C070B0()
{

  return swift_beginAccess();
}

uint64_t sub_232C070D0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_232C0717C()
{

  return sub_232C62BD0(v0);
}

uint64_t sub_232C07198()
{

  return sub_232C05E6C(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
}

uint64_t sub_232C071C0()
{

  return sub_232C05E6C(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);
}

double sub_232C071F4()
{
  *v1 = v2;
  v1[1] = v0;

  return result;
}

uint64_t sub_232C07210(uint64_t result)
{
  v1[3] = result;
  *v1 = v2;
  return result;
}

uint64_t sub_232C07250(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t sub_232C072A8()
{

  return sub_232CE9D20();
}

uint64_t sub_232C072C8(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232C072E8()
{

  return type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
}

char *DUStructuredEntityResponse.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v6);
  sub_232BFF638();
  v67 = v7;
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v9 = sub_232B2D120(v8);
  MEMORY[0x28223BE20](v9);
  sub_232B20714();
  v66 = v10;
  sub_232B20600();
  MEMORY[0x28223BE20](v11);
  sub_232B55558();
  v69 = v12;
  v13 = sub_232B554F0();
  v14 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v13);
  v68 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  v21 = sub_232B2D120(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  sub_232B350D8();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v29 = v28 - v27;
  v30 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v31);
  sub_232B20704();
  v34 = (v33 - v32);
  v35 = [objc_allocWithZone(v3) init];
  (*(v25 + 16))(v29, a1, a2);
  if (swift_dynamicCast())
  {
    v63 = v25;
    v64 = a1;
    v65 = a2;
    sub_232B12504(v23, 0, 1, v30);
    sub_232C09F6C(v23, v34, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
    v62 = v34;
    v36 = *v34;
    v37 = MEMORY[0x277D84F90];
    v72[0] = MEMORY[0x277D84F90];
    v38 = *(v36 + 16);
    if (v38)
    {
      v39 = v36 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v40 = *(v68 + 72);
      do
      {
        sub_232C09E6C(v39, v19, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
        sub_232C09E6C(v19, v16, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
        v41 = sub_232C07898(v16);
        sub_232C09FCC();
        v43 = sub_232C09ECC(v19, v42);
        if (v41)
        {
          MEMORY[0x238391D50](v43);
          if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_232CEA000();
          }

          sub_232CEA020();
          v37 = v72[0];
        }

        v39 += v40;
        --v38;
      }

      while (v38);
    }

    v44 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
    sub_232B13F5C(&v35[OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities], v72);
    *&v35[v44] = v37;

    v45 = v69;
    sub_232B34D3C(v62 + *(v30 + 24), v69, &qword_27DDC67C8, &unk_232CF5E70);
    v46 = v70;
    sub_232B351B0(v45, 1, v70);
    if (v52)
    {
      (*(v63 + 8))(v64, v65);
      sub_232B13790(v45, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C0A194();
    }

    else
    {
      sub_232BFFB24(v45);
      v47 = v66;
      sub_232BF7340();
      sub_232B34D3C(v48, v49, v50, v51);
      sub_232B351B0(v47, 1, v46);
      v54 = v63;
      v53 = v64;
      if (v52)
      {
        sub_232CE9330();
        sub_232B35214(*(v46 + 20));
        sub_232B351B0(v47, 1, v46);
        v56 = v65;
        if (!v52)
        {
          sub_232B13790(v47, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C09FFC();
        sub_232C09F6C(v47, v67, v55);
        v56 = v65;
      }

      v57 = sub_232B4C530();
      (*(v54 + 8))(v53, v56);
      sub_232C0A194();
      v58 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
      sub_232B13F5C(&v35[OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo], v71);
      v59 = *&v35[v58];
      *&v35[v58] = v57;
    }
  }

  else
  {
    (*(v25 + 8))(a1, a2);

    sub_232B12504(v23, 1, 1, v30);
    sub_232B13790(v23, &qword_27DDC7A38, &unk_232CFBAD0);
    return 0;
  }

  return v35;
}

uint64_t sub_232C07898(uint64_t a1)
{
  v124 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v4);
  sub_232BFF638();
  v117 = v5;
  v6 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  sub_232B20714();
  v120 = v8;
  sub_232B20600();
  MEMORY[0x28223BE20](v9);
  sub_232B55558();
  v10 = sub_232B554F0();
  v122 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(v10);
  sub_232B13F24();
  MEMORY[0x28223BE20](v11);
  sub_232BFF638();
  v12 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v13 = sub_232B2D120(v12);
  MEMORY[0x28223BE20](v13);
  sub_232B20714();
  v119 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B55558();
  v16 = sub_232B554F0();
  v121 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(v16);
  sub_232B13F24();
  MEMORY[0x28223BE20](v17);
  sub_232BFF638();
  v116 = v18;
  v19 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v20 = sub_232B2D120(v19);
  MEMORY[0x28223BE20](v20);
  sub_232B20714();
  v118 = v21;
  sub_232B20600();
  MEMORY[0x28223BE20](v22);
  sub_232B55558();
  v23 = sub_232B554F0();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v23);
  sub_232B350D8();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_232B20714();
  v131 = v27;
  sub_232B20600();
  MEMORY[0x28223BE20](v28);
  sub_232B55558();
  v130 = v29;
  v30 = sub_232B554F0();
  v31 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v30);
  v32 = v31 - 8;
  MEMORY[0x28223BE20](v31);
  sub_232B20704();
  v35 = v34 - v33;
  v36 = [objc_allocWithZone(type metadata accessor for DUStructuredEntity()) init];
  sub_232C0A074(v36);
  v125 = a1;
  sub_232C09E6C(a1, v35, v37);
  v123 = v35;
  v38 = *(v35 + *(v32 + 28));
  sub_232B13F74((v38 + 2), v155);
  if (!v38[3])
  {
    sub_232C0A33C();
  }

  sub_232C0A348();
  sub_232B13F5C(a1, v154);
  sub_232C0A260();

  sub_232B13F74((v38 + 4), v153);
  if (!v38[5])
  {
    sub_232C0A33C();
  }

  sub_232C0A348();
  sub_232B13F5C(a1, v152);
  sub_232C0A260();

  sub_232B13F74((v38 + 6), v151);
  v127 = v38;
  v39 = v38[6];
  v40 = MEMORY[0x277D84F90];
  v148[0] = MEMORY[0x277D84F90];
  v41 = *(v39 + 16);
  if (v41)
  {
    sub_232C0A234(v39);
    do
    {
      sub_232C0A124();
      sub_232C09E6C(v1, v130, v42);
      sub_232C0A374();
      v43 = [objc_allocWithZone(type metadata accessor for DUStructuredExtractionLabel()) init];
      sub_232C09FE4();
      sub_232C09ECC(v130, v44);
      sub_232C0A328();
      if (v25)
      {
        v46 = *v45;
        v47 = v25;
      }

      else
      {
        v46 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = &v43[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
      sub_232B13F5C(&v43[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName], v150);
      *v48 = v46;
      *(v48 + 1) = v47;

      v49 = v131 + *(v2 + 24);
      v50 = *v49;
      v51 = *(v49 + 8);
      sub_232C09FE4();
      sub_232C09ECC(v52, v53);
      if (v51)
      {
        v50 = 0.0;
      }

      v54 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
      v55 = sub_232B13F5C(&v43[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore], &v149);
      *&v43[v54] = v50;
      MEMORY[0x238391D50](v55);
      sub_232C0A300();
      if (v56)
      {
        sub_232C0A2DC();
      }

      v25 = v148;
      sub_232CEA020();
      v1 += v129;
      --v41;
    }

    while (v41);
    v40 = v148[0];
  }

  v57 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  v58 = v128;
  sub_232B13F5C(v128 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels, v148);
  *(v128 + v57) = v40;

  v59 = v127;
  v60 = sub_232B13F74((v127 + 7), &v147);
  sub_232C0A090(v60, &v146);
  sub_232C071F4();

  v61 = sub_232B13F74((v127 + 9), &v145);
  sub_232C0A090(v61, &v144);
  sub_232C071F4();

  v62 = sub_232B13F74((v127 + 11), &v143);
  sub_232C0A090(v62, &v142);
  sub_232C071F4();

  sub_232B13F74((v127 + 13), &v141);
  if (*(v127[13] + 16))
  {
    type metadata accessor for NSTextCheckingKey(0, v63, v64, v65);
    sub_232C0A10C();
    sub_232C09F24(v66, 255, v67, &unk_232CF5734);
    v68 = sub_232CE9C60();
    v69 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
    v70 = 1;
    sub_232B13F5C(v128 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents, &v140);
    *(v128 + v69) = v68;

    sub_232C0A154(v127[13]);
    v71 = 0;
    v126 = v69;
LABEL_22:
    while (1)
    {
      sub_232C0A1BC();

      sub_232CE9D20();
      swift_beginAccess();
      if (!*(v58 + v69))
      {
        break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v138[0] = *(v58 + v69);
      *(v58 + v69) = 0x8000000000000000;
      sub_232B20540();
      sub_232C0A314();
      if (v74)
      {
        goto LABEL_53;
      }

      v75 = v73;
      sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
      if (sub_232C0A354())
      {
        sub_232B20540();
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_56;
        }
      }

      v77 = v138[0];
      if (v75)
      {
        sub_232C0A2B8();
      }

      else
      {
        sub_232C0A034();
        if (v74)
        {
          goto LABEL_54;
        }

        *(v138[0] + 16) = v78;
      }

      v70 &= v70 - 1;
      v58 = v128;
      v69 = v126;
      *(v128 + v126) = v77;
      swift_endAccess();

      v59 = v127;
      if (!v70)
      {
        while (1)
        {
          v72 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            break;
          }

          if (v72 >= v40)
          {

            goto LABEL_33;
          }

          v70 = *(v68 + 8 * v72);
          ++v71;
          if (v70)
          {
            v71 = v72;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_56:
    result = sub_232CEA7A0();
    __break(1u);
  }

  else
  {
LABEL_33:
    v79 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
    sub_232B13F74(v59 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent, &v139);
    v80 = &qword_27DDC7AC0;
    sub_232BF7340();
    sub_232B34D3C(v81, v82, v83, v84);
    v85 = sub_232C0A288();
    sub_232C0A1FC(v85, v86);
    sub_232C0A27C();
    if (!v87)
    {
      sub_232B34D3C(v59 + v79, v118, &qword_27DDC7AC0, &qword_232CFBB80);
      sub_232C0A014(v118);
      if (v87)
      {
        *v116 = 0;
        sub_232CE9330();
        *&v116[v121[6]] = xmmword_232CFBB70;
        sub_232B35214(v121[7]);
        *&v116[v121[8]] = v88;
        sub_232B35214(v121[9]);
        sub_232C0A014(v118);
        if (!v87)
        {
          sub_232B13790(v118, &qword_27DDC7AC0, &qword_232CFBB80);
        }
      }

      else
      {
        sub_232C0A0AC();
      }

      sub_232C01E88();
      v80 = v89;
    }

    v90 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
    sub_232B13F5C(v58 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent, v138);
    v91 = *(v58 + v90);
    *(v58 + v90) = v80;

    v92 = sub_232B13F74(v59 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID, &v137);
    sub_232C0A090(v92, &v136);
    sub_232C071F4();

    v93 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
    sub_232B13F74(v59 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo, &v135);
    v94 = &qword_27DDC70F8;
    sub_232BF7340();
    sub_232B34D3C(v95, v96, v97, v98);
    v99 = sub_232C0A288();
    sub_232C0A1FC(v99, v100);
    sub_232C0A27C();
    if (!v87)
    {
      sub_232B34D3C(v59 + v93, v119, &qword_27DDC70F8, &qword_232CF8260);
      v101 = sub_232C0A014(v119);
      if (v87)
      {
        sub_232C0A294(v101, xmmword_232CF76F0);
        sub_232C070A0(v122[8]);
        sub_232C070A0(v122[9]);
        sub_232C070A0(v122[10]);
        sub_232C070A0(v122[11]);
        sub_232C070A0(v122[12]);
        sub_232C070A0(v122[13]);
        sub_232C0A014(v119);
        if (!v87)
        {
          sub_232B13790(v119, &qword_27DDC70F8, &qword_232CF8260);
        }
      }

      else
      {
        sub_232C0A0DC();
      }

      v94 = sub_232B56548(&qword_232CF8260);
    }

    v102 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
    sub_232B13F5C(v58 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo, &v134);
    v103 = *(v58 + v102);
    *(v58 + v102) = v94;

    v104 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
    sub_232B13F74(v59 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo, &v133);
    v105 = &qword_27DDC67C8;
    sub_232BF7340();
    sub_232B34D3C(v106, v107, v108, v109);
    v110 = sub_232C0A288();
    sub_232C0A1FC(v110, v111);
    sub_232C0A27C();
    if (!v87)
    {
      sub_232B34D3C(v59 + v104, v120, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C0A014(v120);
      if (v87)
      {
        sub_232CE9330();
        sub_232B35214(*(v124 + 20));
        sub_232C0A014(v120);
        if (!v87)
        {
          sub_232B13790(v120, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C09FFC();
        sub_232C09F6C(v120, v117, v112);
      }

      v105 = sub_232B4C530();
    }

    sub_232C09ECC(v125, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
    sub_232C09ECC(v123, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
    v113 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
    sub_232B13F5C(v58 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo, &v132);
    v114 = *(v58 + v113);
    *(v58 + v113) = v105;

    return v58;
  }

  return result;
}

uint64_t sub_232C083F0(uint64_t a1)
{
  v3 = v1;
  v130 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  sub_232BFF638();
  v119 = v6;
  v7 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v8 = sub_232B2D120(v7);
  MEMORY[0x28223BE20](v8);
  sub_232B20714();
  v122 = v9;
  sub_232B20600();
  MEMORY[0x28223BE20](v10);
  sub_232B55558();
  v129 = v11;
  v12 = sub_232B554F0();
  v127 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(v12);
  sub_232B13F24();
  MEMORY[0x28223BE20](v13);
  sub_232BFF638();
  v14 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v15 = sub_232B2D120(v14);
  MEMORY[0x28223BE20](v15);
  sub_232B20714();
  v121 = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  sub_232B55558();
  v126 = v18;
  v19 = sub_232B554F0();
  v125 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(v19);
  sub_232B13F24();
  MEMORY[0x28223BE20](v20);
  sub_232BFF638();
  v118 = v21;
  v22 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v23 = sub_232B2D120(v22);
  MEMORY[0x28223BE20](v23);
  sub_232B20714();
  v120 = v24;
  sub_232B20600();
  MEMORY[0x28223BE20](v25);
  sub_232B55558();
  v124 = v26;
  v27 = sub_232B554F0();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v27);
  sub_232B350D8();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_232B20714();
  v136 = v31;
  sub_232B20600();
  MEMORY[0x28223BE20](v32);
  sub_232B55558();
  v135 = v33;
  v34 = sub_232B554F0();
  v35 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v34);
  v36 = v35 - 8;
  MEMORY[0x28223BE20](v35);
  sub_232B20704();
  v39 = v38 - v37;
  sub_232C0A074([objc_allocWithZone(v3) init]);
  v123 = a1;
  sub_232C09E6C(a1, v39, v40);
  v128 = v39;
  v41 = *(v39 + *(v36 + 28));
  sub_232B13F74((v41 + 2), v160);
  if (!v41[3])
  {
    sub_232C0A33C();
  }

  sub_232C0A348();
  sub_232B13F5C(v36, v159);
  sub_232C0A260();

  sub_232B13F74((v41 + 4), v158);
  if (!v41[5])
  {
    sub_232C0A33C();
  }

  sub_232C0A348();
  sub_232B13F5C(v36, v157);
  sub_232C0A260();

  sub_232B13F74((v41 + 6), v156);
  v42 = v41[6];
  v43 = MEMORY[0x277D84F90];
  v153[0] = MEMORY[0x277D84F90];
  v44 = *(v42 + 16);
  v132 = v41;
  if (v44)
  {
    sub_232C0A234(v42);
    do
    {
      sub_232C0A124();
      sub_232C09E6C(v39, v135, v45);
      sub_232C0A374();
      v46 = [objc_allocWithZone(type metadata accessor for DUStructuredExtractionLabel()) init];
      sub_232C09FE4();
      sub_232C09ECC(v135, v47);
      sub_232C0A328();
      if (v29)
      {
        v49 = *v48;
        v50 = v29;
      }

      else
      {
        v49 = 0;
        v50 = 0xE000000000000000;
      }

      v51 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
      sub_232B13F5C(&v46[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName], v155);
      *v51 = v49;
      *(v51 + 1) = v50;

      v52 = v136 + *(v2 + 24);
      v53 = *v52;
      v54 = *(v52 + 8);
      sub_232C09FE4();
      sub_232C09ECC(v55, v56);
      if (v54)
      {
        v53 = 0.0;
      }

      v57 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
      v58 = sub_232B13F5C(&v46[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore], &v154);
      *&v46[v57] = v53;
      MEMORY[0x238391D50](v58);
      sub_232C0A300();
      if (v59)
      {
        sub_232C0A2DC();
      }

      v29 = v153;
      sub_232CEA020();
      v39 += v134;
      --v44;
    }

    while (v44);
    v43 = v153[0];

    v60 = v132;
  }

  else
  {
    v60 = v41;
  }

  v61 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  v62 = v133;
  sub_232B13F5C(v133 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels, v153);
  *(v133 + v61) = v43;

  v63 = sub_232B13F74((v60 + 7), &v152);
  sub_232C0A090(v63, &v151);
  sub_232C071F4();

  v64 = sub_232B13F74((v60 + 9), &v150);
  sub_232C0A090(v64, &v149);
  sub_232C071F4();

  v65 = sub_232B13F74((v60 + 11), &v148);
  sub_232C0A090(v65, &v147);
  sub_232C071F4();

  sub_232B13F74((v60 + 13), &v146);
  if (*(v60[13] + 16))
  {
    type metadata accessor for NSTextCheckingKey(0, v66, v67, v68);
    sub_232C0A10C();
    sub_232C09F24(v69, 255, v70, &unk_232CF5734);
    v71 = sub_232CE9C60();
    v72 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
    v73 = 1;
    sub_232B13F5C(v133 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents, &v145);
    *(v133 + v72) = v71;

    sub_232C0A154(v60[13]);
    v74 = 0;
    v131 = v72;
LABEL_23:
    while (1)
    {
      sub_232C0A1BC();

      sub_232CE9D20();
      swift_beginAccess();
      if (!*(v62 + v72))
      {
        break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v143[0] = *(v62 + v72);
      *(v62 + v72) = 0x8000000000000000;
      sub_232B20540();
      sub_232C0A314();
      if (v77)
      {
        goto LABEL_56;
      }

      v78 = v76;
      sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
      if (sub_232C0A354())
      {
        sub_232B20540();
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_59;
        }
      }

      v80 = v143[0];
      if (v78)
      {
        sub_232C0A2B8();
      }

      else
      {
        sub_232C0A034();
        if (v77)
        {
          goto LABEL_57;
        }

        *(v143[0] + 16) = v81;
      }

      v73 &= v73 - 1;
      v62 = v133;
      v72 = v131;
      *(v133 + v131) = v80;
      swift_endAccess();

      v60 = v132;
      if (!v73)
      {
        while (1)
        {
          v75 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
            break;
          }

          if (v75 >= v43)
          {

            goto LABEL_34;
          }

          v73 = *(v71 + 8 * v75);
          ++v74;
          if (v73)
          {
            v74 = v75;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_59:
    result = sub_232CEA7A0();
    __break(1u);
  }

  else
  {
LABEL_34:
    v82 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
    sub_232B13F74(v60 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent, &v144);
    v83 = &qword_27DDC7AC0;
    sub_232BF7340();
    sub_232B34D3C(v84, v85, v86, v87);
    sub_232B12480(v124, 1, v125);
    sub_232BFFB24(v124);
    sub_232C0A27C();
    if (!v110)
    {
      sub_232B34D3C(v60 + v82, v120, &qword_27DDC7AC0, &qword_232CFBB80);
      sub_232B351B0(v120, 1, v125);
      if (v110)
      {
        *v118 = 0;
        sub_232CE9330();
        *&v118[v125[6]] = xmmword_232CFBB70;
        sub_232B35214(v125[7]);
        *&v118[v125[8]] = v88;
        sub_232B35214(v125[9]);
        sub_232B351B0(v120, 1, v125);
        if (!v110)
        {
          sub_232B13790(v120, &qword_27DDC7AC0, &qword_232CFBB80);
        }
      }

      else
      {
        sub_232C0A0AC();
      }

      sub_232C01E88();
      v83 = v89;
    }

    v90 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
    sub_232B13F5C(v62 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent, v143);
    v91 = *(v62 + v90);
    *(v62 + v90) = v83;

    v92 = sub_232B13F74(v60 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID, &v142);
    sub_232C0A090(v92, &v141);
    sub_232C071F4();

    v93 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
    sub_232B13F74(v60 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo, &v140);
    v94 = &qword_27DDC70F8;
    sub_232BF7340();
    sub_232B34D3C(v95, v96, v97, v98);
    v99 = v60;
    sub_232B12480(v126, 1, v127);
    sub_232BFFB24(v126);
    sub_232C0A27C();
    if (!v110)
    {
      sub_232B34D3C(v60 + v93, v121, &qword_27DDC70F8, &qword_232CF8260);
      v100 = sub_232C0A014(v121);
      if (v110)
      {
        sub_232C0A294(v100, xmmword_232CF76F0);
        sub_232C070A0(v127[8]);
        sub_232C070A0(v127[9]);
        sub_232C070A0(v127[10]);
        sub_232C070A0(v127[11]);
        sub_232C070A0(v127[12]);
        sub_232C070A0(v127[13]);
        sub_232C0A014(v121);
        if (!v110)
        {
          sub_232B13790(v121, &qword_27DDC70F8, &qword_232CF8260);
        }
      }

      else
      {
        sub_232C0A0DC();
      }

      v94 = sub_232B56548(&qword_232CF8260);
      v99 = v132;
    }

    v101 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
    sub_232B13F5C(v62 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo, &v139);
    v102 = *(v62 + v101);
    *(v62 + v101) = v94;

    v103 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
    sub_232B13F74(v99 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo, &v138);
    sub_232B34D3C(v99 + v103, v129, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B351B0(v129, 1, v130);
    if (v110)
    {
      sub_232C09FCC();
      sub_232C09ECC(v123, v104);
      sub_232B13790(v129, &qword_27DDC67C8, &unk_232CF5E70);
      v105 = 0;
    }

    else
    {
      sub_232BFFB24(v129);
      sub_232BF7340();
      sub_232B34D3C(v106, v107, v108, v109);
      sub_232B351B0(v122, 1, v130);
      if (v110)
      {
        sub_232CE9330();
        sub_232B35214(*(v130 + 20));
        sub_232B351B0(v122, 1, v130);
        v112 = v123;
        if (!v110)
        {
          sub_232B13790(v122, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C09FFC();
        sub_232C09F6C(v122, v119, v111);
        v112 = v123;
      }

      v105 = sub_232B4C530();
      sub_232C09FCC();
      sub_232C09ECC(v112, v113);
    }

    sub_232C09FCC();
    sub_232C09ECC(v128, v114);
    v115 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
    sub_232B13F5C(v62 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo, &v137);
    v116 = *(v62 + v115);
    *(v62 + v115) = v105;

    return v62;
  }

  return result;
}

double sub_232C09034()
{
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities, v2);

  return result;
}

uint64_t sub_232C090E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities, v5);
  *(v1 + v3) = a1;
}

void *sub_232C091E8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232C09288(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C092D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232C09288(v1);
}

id sub_232C09358@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  sub_232B20704();
  v8 = v7 - v6;
  v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v13);
  sub_232B20714();
  v42 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  v17 = (&v42 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  *a1 = MEMORY[0x277D84F90];
  v21 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  sub_232CE9330();
  v22 = *(v21 + 24);
  v43 = a1;
  sub_232B4D66C(a1 + v22, 1);
  v23 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo, v45);
  v24 = *(v2 + v23);
  if (v24)
  {
    v25 = v24;
    sub_232B55A40(v17);

    v26 = swift_dynamicCast();
    sub_232B4D66C(v12, v26 ^ 1u);
    sub_232C0A014(v12);
    if (!v27)
    {
      sub_232C09F6C(v12, v20, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      v28 = v42;
      sub_232C09F6C(v20, v42, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      v29 = v43;
      sub_232B13790(v43 + v22, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C09F6C(v28, v29 + v22, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      sub_232B4D66C(v29 + v22, 0);
      goto LABEL_6;
    }
  }

  else
  {
    v30 = sub_232C0A288();
    sub_232B4D66C(v30, v31);
  }

  sub_232B13790(v12, &qword_27DDC67C8, &unk_232CF5E70);
LABEL_6:
  v32 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
  result = sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities, v44);
  v34 = *(v2 + v32);
  if (v34)
  {
    v35 = sub_232B26B10();

    v36 = 0;
    v37 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v35 == v36)
      {

        *v43 = v37;
        return result;
      }

      sub_232B26B2C();
      result = (v34 & 0xC000000000000001) != 0 ? MEMORY[0x2383922C0](v36, v34) : *(v34 + 8 * v36 + 32);
      v38 = result;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      sub_232C030A4();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232B36D5C();
        v37 = v40;
      }

      v39 = *(v37 + 16);
      if (v39 >= *(v37 + 24) >> 1)
      {
        sub_232B36D5C();
        v37 = v41;
      }

      *(v37 + 16) = v39 + 1;
      sub_232C09F6C(v8, v37 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v39, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
      ++v36;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232C0973C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  sub_232C09358((v5 - v4));
  sub_232BFC45C();
  v7 = v6;
  result = sub_232B124A8(&qword_27DDC7B68, &qword_232CFBD30);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void sub_232C09830(uint64_t a1)
{
  type metadata accessor for DUStructuredEntityResponse();
  sub_232C0A13C();
  sub_232C09F24(v1, v2, v3, &protocol conformance descriptor for DUStructuredEntityResponse);
  v4 = sub_232CE98A0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_232CE9D20();
    sub_232BF7340();
    [v7 v8];
  }
}

uint64_t DUStructuredEntityResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C0A13C();
  sub_232C09F24(v2, v3, v4, &protocol conformance descriptor for DUStructuredEntityResponse);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B4D64C(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B4D64C(v6);
  return v5;
}

id DUStructuredEntityResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUStructuredEntityResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DUStructuredEntityResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DUStructuredEntityResponse.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DUStructuredEntityResponse();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_232C09E6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232C09ECC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232C09F24(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232C09F6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_232C0A034()
{
  *(v2 + 8 * (v4 >> 6) + 64) |= 1 << v4;
  *(*(v2 + 48) + 8 * v4) = v1;
  v5 = (*(v2 + 56) + 16 * v4);
  *v5 = *(v0 + 176);
  v5[1] = v3;
}

uint64_t sub_232C0A090(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232C0A0AC()
{
  v3 = *(v0 + 8);

  return sub_232C09F6C(v1, v3, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
}

uint64_t sub_232C0A0DC()
{
  v3 = *(v0 + 16);

  return sub_232C09F6C(v1, v3, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);
}

double sub_232C0A154(uint64_t a1)
{
  *(v1 + 160) = a1;

  return result;
}

uint64_t sub_232C0A194()
{

  return sub_232C09ECC(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
}

double sub_232C0A1BC()
{
  *(v0 + 176) = *(*(*(v0 + 160) + 56) + ((v2 << 10) | (16 * __clz(__rbit64(v1)))));

  return result;
}

uint64_t sub_232C0A1FC(uint64_t a1, uint64_t a2)
{
  sub_232B12480(a1, a2, v4);

  return sub_232B13790(v5, v2, v3);
}

double sub_232C0A234(uint64_t a1)
{
  *(v1 + 160) = *(v2 + 72);
  *(v1 + 136) = a1;

  return result;
}

double sub_232C0A260()
{
  *v0 = v1;
  v0[1] = v2;

  return result;
}

uint64_t sub_232C0A294(uint64_t a1, __n128 a2)
{
  v4 = *(v2 + 16);
  *v4 = a2;
  v4[1] = a2;
  v4[2].n128_u8[0] = 0;

  return sub_232CE9330();
}

void sub_232C0A2B8()
{
  v6 = (*(v2 + 56) + 16 * v4);
  *v6 = *(v0 + 176);
  v6[1] = v3;
}

uint64_t sub_232C0A2DC()
{

  return sub_232CEA000();
}

uint64_t sub_232C0A354()
{

  return sub_232CEA5C0();
}

uint64_t sub_232C0A374()
{
  v4 = *(v0 + 176);

  return sub_232C09E6C(v2, v4, v1);
}

uint64_t sub_232C0A394(uint64_t a1, uint64_t a2)
{
  sub_232B4D640();
  v4 = sub_232CE8E80();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_232B3516C();
  v10 = v8 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v24 = a2;
  v15 = *(v2 + 16);
  if (v15)
  {
    v18 = *(v6 + 16);
    v16 = v6 + 16;
    v17 = v18;
    v19 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v23 = v2;
    v20 = v2 + v19;
    v21 = *(v16 + 56);
    do
    {
      v17(v10, v20, v4, v12);
      sub_232C488A0(v14, v10);
      (*(v16 - 8))(v14, v4);
      v20 += v21;
      --v15;
    }

    while (v15);

    return v24;
  }

  else
  {
  }

  return a2;
}

uint64_t sub_232C0A4F4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_232C48B20(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_232C0A5F8()
{
  sub_232C0DC70();
  v3 = (v2 + 40);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v3;
    v10[0] = *(v3 - 1);
    v10[1] = v6;

    v7 = v1(v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;
    v3 += 2;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_232C0A69C()
{
  sub_232C0DC70();
  v3 = (v2 + 48);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *(v3 - 1);
    v7 = *v3;
    v11 = *(v3 - 2);
    v12 = v6;
    v13 = v7;
    v8 = sub_232BB69F8(v11, v6, v7);
    v9 = v1(&v11, v8);
    sub_232BB6A10(v11, v12, v13);
    if (v0)
    {
      break;
    }

    v3 += 24;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_232C0A734@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUStructuredExtractionSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281932528;
  *a1 = result;
  return result;
}

uint64_t sub_232C0A77C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
  sub_232B2D120(v3);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for CalendarEvent(0);
  v2[14] = v4;
  sub_232B2D120(v4);
  v2[15] = swift_task_alloc();
  v5 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v5);
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for DUStructuredExtractionResult(0);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C0A8DC, 0, 0);
}

void sub_232C0A8DC()
{
  v2 = v1;
  v175 = *(v1[11] + 24);
  if (!v175)
  {
    sub_232B4A95C();
    v193 = swift_allocError();
    *v165 = 0xD000000000000015;
    *(v165 + 8) = 0x8000000232D04650;
    *(v165 + 16) = 0;
    goto LABEL_146;
  }

  v3 = sub_232B586E8();
  if (!v3)
  {
LABEL_145:
    v193 = MEMORY[0x277D84F90];
    goto LABEL_146;
  }

  v4 = v3;
  v178 = sub_232B26B10();
  if (!v178)
  {

    goto LABEL_145;
  }

  v5 = v1[20];
  v183 = v1[18];
  v187 = v1[17];
  v176 = v4;
  v177 = v4 & 0xC000000000000001;
  v173 = v4 + 32;
  v174 = v4 & 0xFFFFFFFFFFFFFF8;
  v184 = *MEMORY[0x277CCA6E8];
  v179 = *MEMORY[0x277D040C8];
  v172 = v175;
  v6 = 0;
  v192 = v5;
  v193 = MEMORY[0x277D84F90];
  v7 = &off_2789A8000;
  v186 = v2;
  while (1)
  {
    if (v177)
    {
      v8 = MEMORY[0x2383922C0](v6, v176);
    }

    else
    {
      if (v6 >= *(v174 + 16))
      {
        goto LABEL_155;
      }

      v8 = *(v173 + 8 * v6);
    }

    v9 = __OFADD__(v6, 1);
    v10 = v6 + 1;
    if (v9)
    {
      goto LABEL_154;
    }

    v182 = v10;
    v11 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
    sub_232B26D70();
    swift_beginAccess();
    v12 = v11[1];
    if (!v12)
    {

      goto LABEL_139;
    }

    v180 = v0;
    v2[5] = *v11;
    v2[6] = v12;
    v2[7] = 10;
    v2[8] = 0xE100000000000000;
    v2[9] = 32;
    v2[10] = 0xE100000000000000;
    v169 = sub_232B48080();
    v170 = v169;
    v168 = v169;
    v167 = MEMORY[0x277D837D0];
    sub_232CEA3B0();
    v0 = v13;
    v181 = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
    v14 = sub_232CE9D20();
    v15 = (v0 & 0x1000000000000000) != 0 ? sub_232CE9F10() : sub_232CE9F20();
    v16 = [objc_opt_self() scanString:v14 range:0 configuration:{v15, v181}];

    sub_232B55094();
    v17 = sub_232CE9FE0();

    v18 = v17 >> 62 ? sub_232CEA610() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v192;
    if (v18)
    {
      break;
    }

LABEL_137:

LABEL_139:
    v6 = v182;
    if (v182 == v178)
    {

LABEL_146:

      v166 = v2[1];

      v166(v193, v175 == 0);
      return;
    }
  }

  v20 = 0;
  v194 = v17 & 0xC000000000000001;
  v185 = v17 & 0xFFFFFFFFFFFFFF8;
  v190 = v17;
  v191 = v18;
  while (1)
  {
    if (v194)
    {
      v21 = MEMORY[0x2383922C0](v20, v17);
    }

    else
    {
      if (v20 >= *(v185 + 16))
      {
        goto LABEL_153;
      }

      v21 = *(v17 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    [v21 *(v7 + 1136)];
    sub_232CEA110();
    if (v24)
    {
    }

    else
    {
      v197 = v20 + 1;
      v195 = v20;
      v25 = v2[20];
      v26 = v22;
      v27 = v2[14];
      v28 = sub_232CE9FB0();
      v18 = MEMORY[0x238391B80](v28);
      v0 = v29;

      v30 = [v26 type];
      v189 = sub_232CE9D50();
      v20 = v31;

      v196 = v26;
      v32 = [v26 category];
      *(v19 + 16) = 0;
      *(v19 + 24) = 0xE000000000000000;
      *(v19 + 32) = 0u;
      *(v19 + 48) = 0u;
      *(v19 + 64) = 0u;
      *(v19 + 80) = 0u;
      v2 = v187;
      v33 = v187[10];
      v34 = sub_232CE8C00();
      v188 = v33;
      sub_232B55484();
      sub_232B12504(v35, v36, v37, v34);
      *(v25 + v187[11]) = 0;
      v7 = v187[12];
      sub_232B55484();
      sub_232B12504(v38, v39, v40, v27);
      v41 = (v25 + v187[13]);
      *v41 = 0;
      v41[1] = 0;
      v42 = (v25 + v187[14]);
      *v42 = 0u;
      v42[1] = 0u;
      v43 = (v25 + v187[15]);
      *v43 = 0;
      v43[1] = 0;
      *(v25 + v187[16]) = 0;
      *v25 = v18;
      *(v19 + 8) = v0;
      v44 = v32 - 1;
      v23 = v197;
      switch(v44)
      {
        case 0u:
          v19 = v192;
          *(v192 + 16) = 7107189;
          *(v192 + 24) = 0xE300000000000000;
          if (!v179)
          {
            goto LABEL_166;
          }

          v45 = sub_232CE9D50();
          v0 = v46;
          v47 = v189 == v45 && v20 == v46;
          if (v47)
          {
          }

          else
          {
            v48 = sub_232CEA750();

            if ((v48 & 1) == 0)
            {
              sub_232C0DCB4(objc_allocWithZone(MEMORY[0x277CC5680]), sel_initWithDDScannerResult_);
              sub_232C0DB5C();
              if (v49)
              {
                v50 = v49;
                v2 = v186;
                v51 = v186[16];
                v52 = [v49 URL];
                sub_232CE8BB0();

                sub_232B12504(v51, 0, 1, v34);
                sub_232C0D948(v51, v25 + v188, &qword_27DDC6AD8, &unk_232CF82F0);
                goto LABEL_128;
              }

              sub_232C0DC24();

              sub_232C0DA00();
              sub_232C0DBA0();
              v17 = v190;
              goto LABEL_50;
            }
          }

          v86 = sub_232C0DCB4(objc_allocWithZone(MEMORY[0x277CC5670]), sel_initWithDDScannerResult_);
          v17 = v190;
          v18 = v191;
          v20 = v195;
          if (v86)
          {
            v87 = v86;
            v88 = [v86 emailAddress];
            v89 = sub_232CE9D50();
            v91 = v90;

            *(v192 + 80) = v89;
            *(v192 + 88) = v91;
            v2 = v186;
            goto LABEL_129;
          }

          sub_232C0DC24();

          sub_232C0DA00();
          sub_232C0DBA0();
          goto LABEL_50;
        case 1u:

          v19 = v192;
          *(v192 + 16) = 0x656E6F6870;
          *(v192 + 24) = 0xE500000000000000;
          v72 = sub_232C0DCB4(objc_allocWithZone(MEMORY[0x277CC5690]), sel_initWithDDScannerResult_);
          if (!v72)
          {
            sub_232C0DC24();

            sub_232C0DA00();
            sub_232C0DBA0();
            v17 = v190;
            goto LABEL_57;
          }

          v73 = v72;
          v74 = [v72 phoneNumber];
          v75 = sub_232CE9D50();
          v77 = v76;

          *(v192 + 48) = v75;
          *(v192 + 56) = v77;
          v78 = [v73 label];
          v2 = v186;
          sub_232C0DB5C();
          if (v79)
          {
            v80 = v79;
            v81 = sub_232CE9D50();
            v83 = v82;
          }

          else
          {

            v81 = 0;
            v83 = 0;
          }

          *(v192 + 64) = v81;
          *(v192 + 72) = v83;
          goto LABEL_128;
        case 2u:

          v19 = v192;
          *(v192 + 16) = 0x73736572646461;
          *(v192 + 24) = 0xE700000000000000;
          v53 = sub_232C0DCB4(objc_allocWithZone(MEMORY[0x277CC5698]), sel_initWithDDScannerResult_);
          v17 = v190;
          if (v53)
          {
            v54 = v53;
            sub_232C0D710(v53, &selRef_street);
            v2 = v186;
            sub_232C0DB5C();
            v56 = v54;
            if (!v57)
            {
              goto LABEL_68;
            }

            v58 = sub_232C0D710(v54, &selRef_street);
            if (!v59)
            {
              v55 = sub_232B20540();
              if (v92)
              {
                sub_232B26D70();
                swift_isUniquelyReferenced_nonNull_native();
                sub_232C0DA50();
                sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                sub_232C0DAF8();
                sub_232C0DB68();
                sub_232C0DAA8(v93, v94, v95, v96);
                sub_232C0D9E4();
                sub_232C0D900(&qword_27DDC65C8, v97, &unk_232CF5734);
                sub_232C0DA3C();
                v56 = v7;
                sub_232CEA5E0();
              }

              goto LABEL_68;
            }

            v7 = v58;
            swift_isUniquelyReferenced_nonNull_native();
            sub_232C0DB84();
            sub_232C0DA28();
            if (v9)
            {
              goto LABEL_156;
            }

            sub_232C0DC18();
            sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
            if (sub_232C0DAD8())
            {
              sub_232B20540();
              sub_232C0DAC8();
              v18 = v191;
              v20 = v195;
              if (!v47)
              {
                goto LABEL_149;
              }

              if ((v190 & 1) == 0)
              {
LABEL_41:
                sub_232C0D9A4(v60, v61, v62, v63, v64, v65, v66, v67, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
                if (v9)
                {
                  goto LABEL_161;
                }

                *(v198 + 16) = v68;
                v55 = v69;
LABEL_67:
                v17 = v190;
LABEL_68:
                v98 = sub_232C0DC9C(v55, &selRef_city);
                if (!v99)
                {
                  goto LABEL_83;
                }

                sub_232C0DC84();
                if (!v100)
                {
                  v98 = sub_232B20540();
                  if (v108)
                  {
                    sub_232B26D70();
                    swift_isUniquelyReferenced_nonNull_native();
                    sub_232C0DA50();
                    sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                    sub_232C0DAF8();
                    sub_232C0DB68();
                    sub_232C0DAA8(v109, v110, v111, v112);
                    sub_232C0D9E4();
                    sub_232C0D900(&qword_27DDC65C8, v113, &unk_232CF5734);
                    sub_232C0DA3C();
                    v56 = v7;
                    sub_232CEA5E0();
                  }

                  goto LABEL_83;
                }

                sub_232C0DBD4();
                sub_232C0DB84();
                sub_232C0DA28();
                if (v9)
                {
                  goto LABEL_157;
                }

                sub_232C0DC18();
                sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                if (sub_232C0DAD8())
                {
                  sub_232B20540();
                  sub_232C0DAC8();
                  v18 = v191;
                  v20 = v195;
                  if (!v47)
                  {
                    goto LABEL_149;
                  }

                  if ((v17 & 1) == 0)
                  {
LABEL_75:
                    sub_232C0D9A4(v101, v61, v62, v63, v102, v103, v104, v105, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
                    if (v9)
                    {
                      goto LABEL_162;
                    }

                    *(v198 + 16) = v106;
                    v98 = v107;
LABEL_82:
                    v17 = v190;
LABEL_83:
                    v114 = sub_232C0DC9C(v98, &selRef_state);
                    if (!v115)
                    {
                      goto LABEL_98;
                    }

                    sub_232C0DC84();
                    if (!v116)
                    {
                      v114 = sub_232B20540();
                      if (v124)
                      {
                        sub_232B26D70();
                        swift_isUniquelyReferenced_nonNull_native();
                        sub_232C0DA50();
                        sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                        sub_232C0DAF8();
                        sub_232C0DB68();
                        sub_232C0DAA8(v125, v126, v127, v128);
                        sub_232C0D9E4();
                        sub_232C0D900(&qword_27DDC65C8, v129, &unk_232CF5734);
                        sub_232C0DA3C();
                        v56 = v7;
                        sub_232CEA5E0();
                      }

                      goto LABEL_98;
                    }

                    sub_232C0DBD4();
                    sub_232C0DB84();
                    sub_232C0DA28();
                    if (v9)
                    {
                      goto LABEL_158;
                    }

                    sub_232C0DC18();
                    sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                    if (sub_232C0DAD8())
                    {
                      sub_232B20540();
                      sub_232C0DAC8();
                      v18 = v191;
                      v20 = v195;
                      if (!v47)
                      {
                        goto LABEL_149;
                      }

                      if ((v17 & 1) == 0)
                      {
LABEL_90:
                        sub_232C0D9A4(v117, v61, v62, v63, v118, v119, v120, v121, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
                        if (v9)
                        {
                          goto LABEL_163;
                        }

                        *(v198 + 16) = v122;
                        v114 = v123;
LABEL_97:
                        v17 = v190;
LABEL_98:
                        v130 = sub_232C0DC9C(v114, &selRef_postalCode);
                        if (!v131)
                        {
                          goto LABEL_113;
                        }

                        sub_232C0DC84();
                        if (!v132)
                        {
                          v130 = sub_232B20540();
                          if (v140)
                          {
                            sub_232B26D70();
                            swift_isUniquelyReferenced_nonNull_native();
                            sub_232C0DA50();
                            sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                            sub_232C0DAF8();
                            sub_232C0DB68();
                            sub_232C0DAA8(v141, v142, v143, v144);
                            sub_232C0D9E4();
                            sub_232C0D900(&qword_27DDC65C8, v145, &unk_232CF5734);
                            sub_232C0DA3C();
                            v56 = v7;
                            sub_232CEA5E0();
                          }

                          goto LABEL_113;
                        }

                        sub_232C0DBD4();
                        sub_232C0DB84();
                        sub_232C0DA28();
                        if (v9)
                        {
                          goto LABEL_159;
                        }

                        sub_232C0DC18();
                        sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                        if (sub_232C0DAD8())
                        {
                          sub_232B20540();
                          sub_232C0DAC8();
                          v18 = v191;
                          v20 = v195;
                          if (!v47)
                          {
                            goto LABEL_149;
                          }

                          if ((v17 & 1) == 0)
                          {
LABEL_105:
                            sub_232C0D9A4(v133, v61, v62, v63, v134, v135, v136, v137, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
                            if (v9)
                            {
                              goto LABEL_164;
                            }

                            *(v198 + 16) = v138;
                            v130 = v139;
LABEL_112:
                            v17 = v190;
LABEL_113:
                            sub_232C0DC9C(v130, &selRef_country);
                            if (v146)
                            {

                              sub_232C0DC84();
                              if (v147)
                              {
                                sub_232C0DBD4();
                                sub_232C0DB84();
                                sub_232C0DA28();
                                if (v9)
                                {
                                  goto LABEL_160;
                                }

                                sub_232C0DC18();
                                sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                                if (sub_232C0DAD8())
                                {
                                  sub_232B20540();
                                  sub_232C0DAC8();
                                  v18 = v191;
                                  v20 = v195;
                                  if (!v47)
                                  {
LABEL_149:
                                    type metadata accessor for NSTextCheckingKey(0, v61, v62, v63);

                                    sub_232CEA7A0();
                                    return;
                                  }

                                  if ((v17 & 1) == 0)
                                  {
LABEL_120:
                                    sub_232C0D9A4(v148, v61, v62, v63, v149, v150, v151, v152, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
                                    if (v9)
                                    {
                                      goto LABEL_165;
                                    }

                                    *(v198 + 16) = v153;
                                    v155 = v154;
LABEL_127:

LABEL_128:
                                    v17 = v190;
LABEL_129:
                                    sub_232C0D848(v2[20], v2[19], type metadata accessor for DUStructuredExtractionResult);
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      sub_232B36078();
                                      v193 = v163;
                                    }

                                    v23 = v197;
                                    v7 = *(v193 + 16);
                                    if (v7 >= *(v193 + 24) >> 1)
                                    {
                                      sub_232B36078();
                                      v193 = v164;
                                    }

                                    v162 = v2[19];
                                    v0 = v2[20];

                                    *(v193 + 16) = v7 + 1;
                                    sub_232C0D8A4(v162, v193 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v7, type metadata accessor for DUStructuredExtractionResult);
                                    sub_232C0D7F4();
                                    sub_232C0DBA0();
                                    break;
                                  }
                                }

                                else
                                {
                                  sub_232C0DB5C();
                                  if ((v17 & 1) == 0)
                                  {
                                    goto LABEL_120;
                                  }
                                }

                                sub_232C0DA88();
                                goto LABEL_127;
                              }

                              sub_232B20540();
                              if (v156)
                              {
                                sub_232B26D70();
                                swift_isUniquelyReferenced_nonNull_native();
                                sub_232C0DA50();
                                sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                                sub_232C0DAF8();
                                sub_232C0DB68();
                                sub_232C0DAA8(v157, v158, v159, v160);
                                sub_232C0D9E4();
                                sub_232C0D900(&qword_27DDC65C8, v161, &unk_232CF5734);
                                sub_232C0DA3C();
                                sub_232CEA5E0();

                                goto LABEL_129;
                              }
                            }

                            goto LABEL_129;
                          }
                        }

                        else
                        {
                          sub_232C0DB5C();
                          if ((v17 & 1) == 0)
                          {
                            goto LABEL_105;
                          }
                        }

                        v130 = sub_232C0DA88();
                        goto LABEL_112;
                      }
                    }

                    else
                    {
                      sub_232C0DB5C();
                      if ((v17 & 1) == 0)
                      {
                        goto LABEL_90;
                      }
                    }

                    v114 = sub_232C0DA88();
                    goto LABEL_97;
                  }
                }

                else
                {
                  sub_232C0DB5C();
                  if ((v17 & 1) == 0)
                  {
                    goto LABEL_75;
                  }
                }

                v98 = sub_232C0DA88();
                goto LABEL_82;
              }
            }

            else
            {
              sub_232C0DB5C();
              if ((v190 & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v55 = sub_232C0DA88();
            goto LABEL_67;
          }

          sub_232C0DC24();

          sub_232C0DA00();
          sub_232C0DBA0();
LABEL_57:
          sub_232C0DB5C();
          break;
        case 3u:
          v2 = v186;
          v71 = v186[13];
          v70 = v186[14];

          strcpy((v192 + 16), "calendarEvent");
          *(v192 + 30) = -4864;
          sub_232C0B9D4(v196, v18, v0, v71);

          if (sub_232B12480(v71, 1, v70) != 1)
          {
            v85 = v186[14];
            v84 = v186[15];
            sub_232C0D8A4(v186[13], v84, type metadata accessor for CalendarEvent);
            sub_232B13790(v25 + v7, &qword_27DDC70A8, &unk_232CF81B0);
            sub_232C0D8A4(v84, v25 + v7, type metadata accessor for CalendarEvent);
            sub_232B12504(v25 + v7, 0, 1, v85);
            v18 = v191;
            v19 = v192;
            v17 = v190;
            v20 = v195;
            goto LABEL_129;
          }

          v0 = v186[13];

          sub_232B13790(v0, &qword_27DDC70A8, &unk_232CF81B0);
LABEL_49:
          sub_232C0DA00();
          v18 = v191;
          v19 = v192;
          sub_232C0DBA0();
          v17 = v190;
          v20 = v195;
LABEL_50:
          v23 = v197;
          break;
        default:
          sub_232C0DC24();

          goto LABEL_49;
      }
    }

    ++v20;
    if (v23 == v18)
    {
      goto LABEL_137;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
}