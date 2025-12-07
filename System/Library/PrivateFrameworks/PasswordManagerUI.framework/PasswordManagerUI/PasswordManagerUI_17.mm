uint64_t sub_21C8EB75C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for PMAccount(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v26 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v28[0] = a2;
  v28[1] = a3;
  v29 = a4;
  v30 = a5;
  sub_21C903054(v28, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_21C6EA794(v11, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  v16 = v26;
  sub_21C8F0DC4(v11, v26, type metadata accessor for PMAccount);
  sub_21CB85084();
  v17 = v28[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21CBA0690;
  sub_21C8F1824(v16, v19 + v18, type metadata accessor for PMAccount);
  v20 = sub_21C87E898(v19);
  v22 = v21;
  v24 = v23;
  swift_getKeyPath(byte_21CBAEE50);
  v28[0] = v17;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v28[0] = v17;
  swift_getKeyPath(byte_21CBAEE50);
  sub_21CB810F4();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v17 + 104);
  *(v17 + 104) = 0x8000000000000000;
  sub_21C8D4880(v20, v22, v24, 0, isUniquelyReferenced_nonNull_native);
  *(v17 + 104) = v27;
  swift_endAccess();
  v28[0] = v17;
  swift_getKeyPath(byte_21CBAEE50);
  sub_21CB810E4();

  sub_21C8F0E2C(v16, type metadata accessor for PMAccount);
}

uint64_t sub_21C8EBAFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v9 = *(v14 + 120);
  v10 = qword_27CDEA4C0;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v9, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4 & 1;
  *(inited + 56) = a5;

  v12 = a5;
  sub_21C83532C(inited);

  swift_setDeallocating();
  sub_21C8F1684(inited + 32);
  sub_21C905C8C(0, 0);
}

uint64_t sub_21C8EBC70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_21CB858E4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_21C8F1824(a1, v13, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21CB858B4();

  v18 = a5;
  v19 = sub_21CB858A4();
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_21C8F0DC4(v13, v22 + v20, type metadata accessor for PMAppSecurityRecommendationsList);
  v24 = v22 + v21;
  *v24 = a2;
  *(v24 + 8) = a3;
  *(v24 + 16) = a4;
  *(v24 + 24) = v18;
  sub_21C98B308(0, 0, v16, &unk_21CBAF158, v22);
}

uint64_t sub_21C8EBEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 128) = a7;
  *(v8 + 72) = a6;
  *(v8 + 80) = a8;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  sub_21CB858B4();
  *(v8 + 88) = sub_21CB858A4();
  v10 = sub_21CB85874();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return MEMORY[0x2822009F8](sub_21C8EBF40, v10, v9);
}

uint64_t sub_21C8EBF40()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v5 = *(v0 + 48);
  *(v0 + 16) = v4;
  *(v0 + 112) = v5;
  *(v0 + 24) = v3;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_21C8EC024;

  return sub_21C9038A8(v0 + 16);
}

uint64_t sub_21C8EC024()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21C8EC168, v3, v2);
}

uint64_t sub_21C8EC168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C8EC1C8()
{
  v0 = sub_21CB85114();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v7 = *(v14 + 120);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v7, v14);

  swift_getKeyPath(byte_21CBAF038);
  sub_21CB81DB4();

  v9 = *(v14 + 16);

  if (v9)
  {
    sub_21CB85084();
    v10 = v14;
    swift_getKeyPath(byte_21CBAEC38);
    v14 = v10;
    sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810D4();

    v9 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
    swift_beginAccess();
    (*(v1 + 16))(v6, v10 + v9, v0);

    (*(v1 + 104))(v3, *MEMORY[0x277CDF0D8], v0);
    LOBYTE(v9) = sub_21CB850F4();
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);
  }

  return v9 & 1;
}

uint64_t sub_21C8EC4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF05D8, &unk_21CBAEF60);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF05F8, &unk_21CBAEF78);
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v25 - v10;
  sub_21C8F1824(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSecurityRecommendationsList);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_21C8F0DC4(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PMAppSecurityRecommendationsList);
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();
  v28 = sub_21C8E9BC0();
  v29 = v14;
  v15 = sub_21C8F08D8();
  v16 = sub_21C71F3FC();
  v17 = MEMORY[0x277D837D0];
  sub_21CB846E4();

  sub_21C6EA794(v8, &qword_27CDF05D8, &unk_21CBAEF60);
  v32 = sub_21C8E9BC0();
  v33 = v18;
  v28 = v6;
  v29 = v17;
  v30 = v15;
  v31 = v16;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  v19 = v26;
  sub_21CB843E4();

  (*(v9 + 8))(v11, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v21 = v28;
  v28 = v21;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v22 = *(v21 + 72);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF05B8, &qword_21CBAEF50);
  v24 = v19 + *(result + 36);
  *v24 = 0;
  *(v24 + 8) = v22;
  return result;
}

uint64_t sub_21C8EC8F0(uint64_t a1)
{
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8EC95C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  sub_21CB810F4();

  *(v1 + 72) = (*(v1 + 72) & 1) == 0;
  sub_21C9059D4();
  sub_21CB810E4();
}

uint64_t sub_21C8ECAA8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v7 = v10;
  v10 = v7;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8ECCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21C8F1824(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSecurityRecommendationsList);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21C8F0DC4(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21CB84DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v9 = v17;
  v17 = v9;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v10 = *(v9 + 56);

  v11 = *(v10 + 16);

  LOBYTE(v6) = v11 == 0;
  KeyPath = swift_getKeyPath(byte_21CBAEF88);
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_21C735744;
  v15[2] = v13;
  return result;
}

uint64_t sub_21C8ECF28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C8ED04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC0, &qword_21CBAAC90);
  MEMORY[0x28223BE20](v30);
  v31 = &v23 - v3;
  v4 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = v5;
  v28 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v27 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v11 = v33;
  v33 = v11;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  sub_21CB85084();
  v12 = v33;
  v33 = v12;
  sub_21CB810D4();

  v13 = (v23 + 8);
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*v13)(v8, v24);
  v33 = v14;
  v34 = v16;
  v17 = v28;
  sub_21C8F1824(a1, v28, type metadata accessor for PMAppSecurityRecommendationsList);
  v18 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v19 = swift_allocObject();
  sub_21C8F0DC4(v17, v19 + v18, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21C71F3FC();
  v20 = v27;
  sub_21CB84DE4();
  v21 = v29;
  (*(v29 + 16))(v31, v20, v9);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB83494();
  return (*(v21 + 8))(v20, v9);
}

uint64_t sub_21C8ED634()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  sub_21CB810F4();

  v0 = *(v2 + 96);
  *(v2 + 96) = MEMORY[0x277D84FA0];
  sub_21C906A74(v0);

  sub_21CB810E4();
}

uint64_t sub_21C8ED784()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21CB85084();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v0 = *(v11 + 56);

  v1 = *(v0 + 16);
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v1, 0);
    v2 = v12;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v12 + 16);
      v7 = *(v12 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_21C7B0C0C((v7 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v8 = v12 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v9 = sub_21CB009AC(v2);

  sub_21C901AD4(v9);
}

uint64_t sub_21C8ED950@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81F04();
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_21C8F1824(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSecurityRecommendationsList);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  result = sub_21C8F0DC4(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMAppSecurityRecommendationsList);
  *a2 = v11;
  a2[1] = v13;
  v17 = (a2 + *(v10 + 24));
  *v17 = sub_21C8F0CC0;
  v17[1] = v15;
  return result;
}

uint64_t sub_21C8EDB64(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8EDBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0600, &unk_21CBAEFB8);
  v119 = *(v3 - 8);
  v120 = v3;
  MEMORY[0x28223BE20](v3);
  v105 = (&v92 - v4);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC0, &qword_21CBAAC90);
  MEMORY[0x28223BE20](v103);
  v104 = &v92 - v5;
  v97 = sub_21CB81024();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96 = &v92 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0608, &unk_21CBAEFC8);
  MEMORY[0x28223BE20](v14 - 8);
  v118 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v114 = &v92 - v17;
  v117 = sub_21CB831C4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v113 = &v92 - v20;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  *&v111 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  *&v110 = &v92 - v21;
  v22 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v122 = v24;
  v25 = (&v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v92 - v27;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB98, &qword_21CBACD60) - 8;
  MEMORY[0x28223BE20](v112);
  v123 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  sub_21CB81ED4();
  v33 = sub_21CB81F14();
  (*(*(v33 - 8) + 56))(v28, 0, 1, v33);
  v109 = type metadata accessor for PMAppSecurityRecommendationsList;
  sub_21C8F1824(a1, v25, type metadata accessor for PMAppSecurityRecommendationsList);
  v34 = *(v23 + 80);
  v35 = (v34 + 16) & ~v34;
  v36 = swift_allocObject();
  v108 = type metadata accessor for PMAppSecurityRecommendationsList;
  sub_21C8F0DC4(v25, v36 + v35, type metadata accessor for PMAppSecurityRecommendationsList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v124 = v32;
  sub_21CB84D94();
  v37 = v106;
  sub_21CB85084();
  v38 = v126;
  *&v126 = v38;
  v107 = sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v39 = *(v38 + 96);

  v40 = *(v39 + 16);

  v41 = v40 == 0;
  KeyPath = swift_getKeyPath(byte_21CBAEF88);
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  v44 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80) + 36)];
  *v44 = KeyPath;
  v44[1] = sub_21C87E800;
  v44[2] = v43;
  v45 = v110;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAEE50);
  sub_21CB850B4();

  (*(v111 + 8))(v45, v37);
  v46 = v132;
  v47 = v133;
  v48 = v134;
  v125[0] = 1;
  swift_getKeyPath(byte_21CBAEE78, v125);
  v129 = v46;
  v130 = v47;
  v131 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();
  v49 = a1;

  v111 = v126;
  v110 = v127;
  v50 = v128;

  sub_21C8F1824(v49, v25, v109);
  v92 = v34;
  v51 = swift_allocObject();
  v93 = v35;
  v109 = v25;
  sub_21C8F0DC4(v25, v51 + v35, v108);
  v52 = &v124[*(v112 + 44)];
  v53 = v110;
  *v52 = v111;
  *(v52 + 1) = v53;
  *(v52 + 4) = v50;
  *(v52 + 5) = &unk_21CBAEFE0;
  *(v52 + 6) = v51;
  v54 = v113;
  sub_21CB831B4();
  sub_21CB85084();
  sub_21CB85084();
  v55 = v126;
  *&v126 = v55;
  sub_21CB810D4();

  v56 = *(v55 + 96);

  LODWORD(v50) = sub_21C900CCC(v56);

  v57 = v114;

  v58 = 1;
  if (v50 != 2)
  {
    v59 = (v94 + 8);
    v60 = v96;
    sub_21CB81014();
    v61 = v95;
    sub_21CB81014();
    v62 = sub_21CB80FF4();
    v64 = v63;
    v65 = *v59;
    v66 = v61;
    v67 = v97;
    (*v59)(v66, v97);
    v65(v60, v67);
    *&v126 = v62;
    *(&v126 + 1) = v64;
    v68 = v109;
    sub_21C8F1824(v49, v109, type metadata accessor for PMAppSecurityRecommendationsList);
    v69 = v93;
    v70 = swift_allocObject();
    sub_21C8F0DC4(v68, v70 + v69, type metadata accessor for PMAppSecurityRecommendationsList);
    sub_21C71F3FC();
    v71 = v98;
    sub_21CB84DE4();
    v72 = v100;
    v73 = v101;
    (*(v100 + 16))(v104, v71, v101);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    v74 = v99;
    sub_21CB83494();
    (*(v72 + 8))(v71, v73);
    v75 = v102;
    sub_21C6EDBAC(v74, v102, &qword_27CDEE9D8, &unk_21CBAA9C0);
    v76 = v105;
    *v105 = 0;
    *(v76 + 8) = 1;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0618, &unk_21CBAEFF0);
    sub_21C6EDBAC(v75, v76 + *(v77 + 48), &qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C6EA794(v74, &qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C6EA794(v75, &qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C716934(v76, v57, &qword_27CDF0600, &unk_21CBAEFB8);
    v58 = 0;
  }

  (*(v119 + 56))(v57, v58, 1, v120);
  v78 = v123;
  sub_21C6EDBAC(v124, v123, &qword_27CDEEB98, &qword_21CBACD60);
  LOBYTE(v126) = 1;
  v79 = v116;
  v80 = *(v116 + 16);
  v81 = v115;
  v82 = v54;
  v83 = v117;
  v80(v115, v54, v117);
  v84 = v118;
  sub_21C6EDBAC(v57, v118, &qword_27CDF0608, &unk_21CBAEFC8);
  v85 = v121;
  sub_21C6EDBAC(v78, v121, &qword_27CDEEB98, &qword_21CBACD60);
  v86 = v57;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0610, &qword_21CBAEFE8);
  v88 = v85 + v87[12];
  v89 = v126;
  *v88 = 0;
  *(v88 + 8) = v89;
  v80((v85 + v87[16]), v81, v83);
  sub_21C6EDBAC(v84, v85 + v87[20], &qword_27CDF0608, &unk_21CBAEFC8);
  sub_21C6EA794(v86, &qword_27CDF0608, &unk_21CBAEFC8);
  v90 = *(v79 + 8);
  v90(v82, v83);
  sub_21C6EA794(v124, &qword_27CDEEB98, &qword_21CBACD60);
  sub_21C6EA794(v84, &qword_27CDF0608, &unk_21CBAEFC8);
  v90(v81, v83);
  return sub_21C6EA794(v123, &qword_27CDEEB98, &qword_21CBACD60);
}

uint64_t sub_21C8EEC40(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21CB85084();
  v3 = sub_21C902984();

  v4 = sub_21C87E898(v3);
  v6 = v5;
  v8 = v7;
  swift_getKeyPath(byte_21CBAEE50);
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  swift_getKeyPath(byte_21CBAEE50);
  sub_21CB810F4();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v12 + 104);
  *(v12 + 104) = 0x8000000000000000;
  sub_21C8D4880(v4, v6, v8, a2, isUniquelyReferenced_nonNull_native);
  *(v12 + 104) = v11;
  swift_endAccess();
  swift_getKeyPath(byte_21CBAEE50);
  sub_21CB810E4();
}

uint64_t sub_21C8EEE10()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[0] = v4;
  v8[1] = v6;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8EEF38(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_21CB85114();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_21CB858B4();
  v2[9] = sub_21CB858A4();
  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C8F188C, v5, v4);
}

uint64_t sub_21C8EF02C(uint64_t a1)
{
  v2 = type metadata accessor for PMAppSecurityRecommendationsList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21CB858E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21C8F1824(a1, v5, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21CB858B4();
  v10 = sub_21CB858A4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21C8F0DC4(v5, v12 + v11, type metadata accessor for PMAppSecurityRecommendationsList);
  sub_21C98B308(0, 0, v8, &unk_21CBAF008, v12);
}

uint64_t sub_21C8EF20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_21CB858B4();
  v4[6] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_21C8EF2A4, v6, v5);
}

uint64_t sub_21C8EF2A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v0[9] = v0[2];
  sub_21CB85084();
  v1 = v0[3];
  v0[4] = v1;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v2 = *(v1 + 96);
  v0[10] = v2;

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_21C8EF40C;

  return sub_21C900FEC(v2);
}

uint64_t sub_21C8EF40C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21C7B6B44, v3, v2);
}

uint64_t sub_21C8EF56C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  sub_21CB85084();
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v0 = *(v2 + 96);

  sub_21C901704(v0);
}

unint64_t sub_21C8EF670()
{
  result = qword_27CDF0398;
  if (!qword_27CDF0398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0378, &qword_21CBAEB90);
    sub_21C8EF6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0398);
  }

  return result;
}

unint64_t sub_21C8EF6F4()
{
  result = qword_27CDF03A0;
  if (!qword_27CDF03A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03A8, &qword_21CBAEBB0);
    sub_21C8EF7AC();
    sub_21C6EADEC(&qword_27CDF0470, &qword_27CDF0478, &unk_21CBB2E10, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF03A0);
  }

  return result;
}

unint64_t sub_21C8EF7AC()
{
  result = qword_27CDF03B0;
  if (!qword_27CDF03B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03B8, &qword_21CBAEBB8);
    type metadata accessor for PMEmptyStateDetailView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C0, &qword_21CBAEBC0);
    sub_21C8F132C(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C8, &qword_21CBAEBC8);
    sub_21C6EADEC(&qword_27CDF03D0, &qword_27CDF03C8, &qword_21CBAEBC8, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C8EF93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF03B0);
  }

  return result;
}

unint64_t sub_21C8EF93C()
{
  result = qword_27CDF03D8;
  if (!qword_27CDF03D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03E0, &qword_21CBAEBD0);
    sub_21C8EF9F4();
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF03D8);
  }

  return result;
}

unint64_t sub_21C8EF9F4()
{
  result = qword_27CDF03E8;
  if (!qword_27CDF03E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03F0, &qword_21CBAEBD8);
    sub_21C8EFA80();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF03E8);
  }

  return result;
}

unint64_t sub_21C8EFA80()
{
  result = qword_27CDF03F8;
  if (!qword_27CDF03F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0400, &qword_21CBAEBE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0408, &qword_21CBAEBE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0410, &qword_21CBAEBF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0418, &qword_21CBAEBF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C0, &qword_21CBAEBC0);
    sub_21C8EFCC0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C8, &qword_21CBAEBC8);
    sub_21C6EADEC(&qword_27CDF03D0, &qword_27CDF03C8, &qword_21CBAEBC8, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF0468, &qword_27CDF0410, &qword_21CBAEBF0, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF03F8);
  }

  return result;
}

unint64_t sub_21C8EFCC0()
{
  result = qword_27CDF0420;
  if (!qword_27CDF0420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0418, &qword_21CBAEBF8);
    sub_21C8EFD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0420);
  }

  return result;
}

unint64_t sub_21C8EFD4C()
{
  result = qword_27CDF0428;
  if (!qword_27CDF0428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0430, &qword_21CBAEC00);
    sub_21C8EFE04();
    sub_21C6EADEC(&qword_27CDED960, &qword_27CDED968, &unk_21CBAEC20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0428);
  }

  return result;
}

unint64_t sub_21C8EFE04()
{
  result = qword_27CDF0438;
  if (!qword_27CDF0438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0440, &qword_21CBAEC08);
    sub_21C8EFE90();
    sub_21C847DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0438);
  }

  return result;
}

unint64_t sub_21C8EFE90()
{
  result = qword_27CDF0448;
  if (!qword_27CDF0448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0450, &qword_21CBAEC10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0458, &qword_21CBAEC18);
    sub_21C6EADEC(&qword_27CDF0460, &qword_27CDF0458, &qword_21CBAEC18, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_21C8F132C(&qword_27CDEEE60, type metadata accessor for PMContentListSearchable, &unk_21CBCB2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0448);
  }

  return result;
}

unint64_t sub_21C8EFFC4()
{
  result = qword_27CDF0488;
  if (!qword_27CDF0488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0390, &qword_21CBAEBA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0388, &qword_21CBAEBA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0380, &qword_21CBAEB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0480, &qword_21CBAEC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0378, &qword_21CBAEB90);
    sub_21C8EF670();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C87E710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0488);
  }

  return result;
}

unint64_t sub_21C8F0198()
{
  result = qword_27CDF04C0;
  if (!qword_27CDF04C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04B8, &qword_21CBAED30);
    sub_21C8F0228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF04C0);
  }

  return result;
}

unint64_t sub_21C8F0228()
{
  result = qword_27CDF04C8;
  if (!qword_27CDF04C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04D0, &qword_21CBAED38);
    sub_21C8F02AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF04C8);
  }

  return result;
}

unint64_t sub_21C8F02AC()
{
  result = qword_27CDF04D8;
  if (!qword_27CDF04D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04E0, &qword_21CBAED40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04E8, &qword_21CBAED48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04F0, &qword_21CBAED50);
    sub_21C8F03CC();
    sub_21C6EADEC(&qword_27CDF0520, &qword_27CDF04F0, &qword_21CBAED50, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF04D8);
  }

  return result;
}

unint64_t sub_21C8F03CC()
{
  result = qword_27CDF04F8;
  if (!qword_27CDF04F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04E8, &qword_21CBAED48);
    sub_21C8F0458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF04F8);
  }

  return result;
}

unint64_t sub_21C8F0458()
{
  result = qword_27CDF0500;
  if (!qword_27CDF0500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0508, &qword_21CBAED58);
    sub_21C6EADEC(&qword_27CDF0510, &qword_27CDF0518, &qword_21CBAED60, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0500);
  }

  return result;
}

uint64_t sub_21C8F05B8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21C8E96A0(a1, v1 + v5);
}

unint64_t sub_21C8F0690()
{
  result = qword_27CDF0588;
  if (!qword_27CDF0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0588);
  }

  return result;
}

unint64_t sub_21C8F070C()
{
  result = qword_27CDF05C0;
  if (!qword_27CDF05C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF05B8, &qword_21CBAEF50);
    sub_21C8F07C4();
    sub_21C6EADEC(&qword_27CDF05E8, &qword_27CDF05F0, &qword_21CBAEF70, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF05C0);
  }

  return result;
}

unint64_t sub_21C8F07C4()
{
  result = qword_27CDF05C8;
  if (!qword_27CDF05C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF05D0, &qword_21CBAEF58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF05D8, &unk_21CBAEF60);
    sub_21C8F08D8();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C8F132C(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF05C8);
  }

  return result;
}

unint64_t sub_21C8F08D8()
{
  result = qword_27CDF05E0;
  if (!qword_27CDF05E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF05D8, &unk_21CBAEF60);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF05E0);
  }

  return result;
}

uint64_t sub_21C8F0AC8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C8EEF38(a1, v1 + v5);
}

uint64_t sub_21C8F0BD0(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21C8EF20C(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C8F0D08(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C8F0DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8F0E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C8F0E8C(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C8EA9A4(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_119Tm()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_21C8F1188(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_21C8F1230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PMAppSecurityRecommendationsList(0);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8[0] = *a1;
  v8[1] = v4;
  v9 = v5;
  v10 = v6;
  return sub_21C8E80C8(v8, a2);
}

unint64_t sub_21C8F12C4()
{
  result = qword_27CDF0650;
  if (!qword_27CDF0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0650);
  }

  return result;
}

uint64_t sub_21C8F132C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C8F1374@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6[0] = *(v1 + 24);
  v6[1] = v2;
  v7 = v3;
  v8 = v4;
  return sub_21C8E9E30(v6, a1);
}

uint64_t objectdestroy_140Tm()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v10 + 32, v2 | 7);
}

uint64_t sub_21C8F15D8(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);

  return a1(v1 + v3, v5, v6, v7, v8);
}

uint64_t sub_21C8F16D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21C6F35D0;

  return sub_21C8EBEA0(a1, v7, v8, v1 + v6, v10, v11, v12, v13);
}

uint64_t sub_21C8F1824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21C8F18C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C8F190C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21C8F196C(uint64_t a1)
{
  sub_21C7226D8();
  if (v1 <= 0x3F)
  {
    sub_21C8F1E98(319, &qword_27CDEC850, &qword_27CDEC858, &qword_21CBB1080, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21C6EDA64();
      if (v3 <= 0x3F)
      {
        sub_21CB84D84();
        if (v4 <= 0x3F)
        {
          sub_21C8F1E98(319, &qword_27CDF0700, &unk_27CDFA2C0, &unk_21CBA68A0, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for LABiometryType(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21C8F1AB4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(v4 + 80) & 0xF8;
  v8 = v7 | 7;
  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v7 + 71) & ~v8) + 63) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v6 + 255) >> 8;
  if (v9 <= 3)
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = a1[v9]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
    }

    v18 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v6 + (v17 | v16) + 1;
}

void sub_21C8F1C38(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((v12 + ((v10 + 71) & ~(v10 | 7)) + 63) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v17 = 0;
    if (v9 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = (a3 - v9 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v9 >= a2)
    {
LABEL_20:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&a1[v13] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v13] = 0;
      }

      else if (v17)
      {
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        if ((v7 & 0x80000000) != 0)
        {
          v20 = ((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
          if (v8 >= a2)
          {
            v23 = *(v6 + 56);

            v23(v20);
          }

          else if (v12 != -8)
          {
            v21 = ~v8 + a2;
            v22 = ((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
            bzero(v20, (v12 + 8));
            *v22 = v21;
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *a1 = a2 - 1;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  v18 = ~v9 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v19 = (v18 >> 8) + 1;
  }

  else
  {
    v19 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v18;
    if (v17 > 1)
    {
LABEL_30:
      if (v17 == 2)
      {
        *&a1[v13] = v19;
      }

      else
      {
        *&a1[v13] = v19;
      }

      return;
    }
  }

  else
  {
    *a1 = v18;
    if (v17 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v17)
  {
    a1[v13] = v19;
  }
}

void sub_21C8F1E98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21C8F1F40(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 6u)
  {
    if (a2 <= 8u)
    {
      if (a2 == 7)
      {
        v2 = 5;
        return MEMORY[0x21CF15F90](v2);
      }

      if (a2 == 8)
      {
        v2 = 7;
        return MEMORY[0x21CF15F90](v2);
      }
    }

    else
    {
      switch(a2)
      {
        case 9u:
          v2 = 8;
          return MEMORY[0x21CF15F90](v2);
        case 0xAu:
          v2 = 9;
          return MEMORY[0x21CF15F90](v2);
        case 0xBu:
          v2 = 10;
          return MEMORY[0x21CF15F90](v2);
      }
    }
  }

  else if (a2 <= 3u)
  {
    if (a2 == 2)
    {
      v2 = 0;
      return MEMORY[0x21CF15F90](v2);
    }

    if (a2 == 3)
    {
      v2 = 1;
      return MEMORY[0x21CF15F90](v2);
    }
  }

  else
  {
    switch(a2)
    {
      case 4u:
        v2 = 2;
        return MEMORY[0x21CF15F90](v2);
      case 5u:
        v2 = 3;
        return MEMORY[0x21CF15F90](v2);
      case 6u:
        v2 = 4;
        return MEMORY[0x21CF15F90](v2);
    }
  }

  MEMORY[0x21CF15F90](6);
  return sub_21CB864A4();
}

uint64_t sub_21C8F2034()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C8F1F40(v3, v1);
  return sub_21CB864D4();
}

uint64_t sub_21C8F2084(uint64_t a1)
{
  v2 = *v1;
  sub_21CB86484();
  sub_21C8F1F40(v4, v2);
  return sub_21CB864D4();
}

uint64_t sub_21C8F20D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0708, &qword_21CBAF338);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = sub_21CB82834();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0710, &qword_21CBAF340);
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - v16;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0718, &qword_21CBAF348);
  MEMORY[0x28223BE20](v34);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0720, &qword_21CBAF350);
  v39 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v35 = v18;
  v36 = &v34 - v20;
  sub_21C8F2604(v41, *(a1 + 16), *(a1 + 24), v18);
  v21 = v10;
  v22 = *(v10 + 104);
  v22(v15, *MEMORY[0x277CDF9F8], v9);
  v22(v12, *MEMORY[0x277CDF988], v9);
  sub_21C8FEB84(&qword_27CDECA98, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_21CB85524();
  if (result)
  {
    v41 = v19;
    v24 = *(v21 + 32);
    v24(v8, v15, v9);
    v24(&v8[*(v3 + 48)], v12, v9);
    sub_21C6EDBAC(v8, v5, &qword_27CDF0708, &qword_21CBAF338);
    v25 = *(v3 + 48);
    v26 = v37;
    v24(v37, v5, v9);
    v27 = *(v21 + 8);
    v27(&v5[v25], v9);
    sub_21C716934(v8, v5, &qword_27CDF0708, &qword_21CBAF338);
    v24((v26 + *(v38 + 36)), &v5[*(v3 + 48)], v9);
    v27(v5, v9);
    sub_21C8F4DDC();
    sub_21C6EADEC(&qword_27CDF0760, &qword_27CDF0710, &qword_21CBAF340, MEMORY[0x277D83660]);
    v28 = v35;
    v29 = v36;
    sub_21CB842B4();
    sub_21C6EA794(v26, &qword_27CDF0710, &qword_21CBAF340);
    sub_21C6EA794(v28, &qword_27CDF0718, &qword_21CBAF348);
    LOBYTE(v28) = sub_21CB83D04();
    v30 = sub_21CB83D24();
    sub_21CB83D24();
    if (sub_21CB83D24() != v28)
    {
      v30 = sub_21CB83D24();
    }

    v31 = sub_21CB82934();
    v32 = v40;
    (*(v39 + 32))(v40, v29, v41);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0768, &qword_21CBAF370);
    v33 = v32 + *(result + 36);
    *v33 = v31;
    *(v33 + 8) = v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21C8F2604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0758, &qword_21CBAF368);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0770, &qword_21CBAF378);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0748, &qword_21CBAF360);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v17 = type metadata accessor for PMSafariAutoFillStrongPasswordView(0, a2, a3, v16);
  if (sub_21C8F2970(v17) && (v18 = *(a1 + 32)) != 0)
  {
    v19 = *(a1 + 40);
    sub_21C71DD5C(*(a1 + 32), v19);
    *v15 = sub_21CB832E4();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0780, &qword_21CBAF388);
    sub_21C8F2A98(a1, v18, v19, a2, a3, &v15[*(v20 + 44)]);
    sub_21C6EDBAC(v15, v12, &qword_27CDF0748, &qword_21CBAF360);
    swift_storeEnumTagMultiPayload();
    v21 = MEMORY[0x277CE1198];
    sub_21C6EADEC(&qword_27CDF0740, &qword_27CDF0748, &qword_21CBAF360, MEMORY[0x277CE1198]);
    sub_21C6EADEC(&qword_27CDF0750, &qword_27CDF0758, &qword_21CBAF368, v21);
    sub_21CB83494();
    sub_21C71B710(v18, v19);
    v22 = v15;
    v23 = &qword_27CDF0748;
    v24 = &qword_21CBAF360;
  }

  else
  {
    *v9 = sub_21CB832E4();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0778, &qword_21CBAF380);
    sub_21C8F2F08(a1, a2, a3, &v9[*(v25 + 44)]);
    sub_21C6EDBAC(v9, v12, &qword_27CDF0758, &qword_21CBAF368);
    swift_storeEnumTagMultiPayload();
    v26 = MEMORY[0x277CE1198];
    sub_21C6EADEC(&qword_27CDF0740, &qword_27CDF0748, &qword_21CBAF360, MEMORY[0x277CE1198]);
    sub_21C6EADEC(&qword_27CDF0750, &qword_27CDF0758, &qword_21CBAF368, v26);
    sub_21CB83494();
    v22 = v9;
    v23 = &qword_27CDF0758;
    v24 = &qword_21CBAF368;
  }

  return sub_21C6EA794(v22, v23, v24);
}

BOOL sub_21C8F2970(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB84D84();
  sub_21CB84D54();
  (*(*(a1 + 24) + 8))(v8, v3);
  (*(v4 + 8))(v6, v3);
  sub_21C85F75C(v8);
  return (v9 & 1) != 0 && *(v1 + 32) != 0;
}

uint64_t sub_21C8F2A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v38 = a3;
  v36 = a2;
  v10 = type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0788, &qword_21CBAF390);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  v24 = type metadata accessor for PMSafariAutoFillStrongPasswordView(0, a4, a5, v23);
  sub_21C8F2D7C(v24);
  v25 = [objc_opt_self() isInHardwareKeyboardMode];
  v26 = *(a1 + *(v24 + 56));
  v27 = *(a1 + *(v24 + 60));
  v28 = v38;
  *v15 = v36;
  *(v15 + 1) = v28;
  v15[16] = v25;
  *(v15 + 3) = v26;
  v15[32] = v27;
  v29 = *(v11 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v30 = *(v17 + 16);
  v30(v19, v22, v16);
  v31 = v37;
  sub_21C8F55EC(v15, v37, type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
  v30(a6, v19, v16);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0790, &qword_21CBAF3D0);
  sub_21C8F55EC(v31, &a6[*(v32 + 48)], type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);

  sub_21C8F5654(v15, type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
  v33 = *(v17 + 8);
  v33(v22, v16);
  sub_21C8F5654(v31, type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
  return (v33)(v19, v16);
}

uint64_t sub_21C8F2D7C(uint64_t a1)
{
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0798, &qword_21CBAF3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07A0, &qword_21CBAF3E0);
  sub_21C8F4F84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0810, &qword_21CBAF418);
  sub_21C8F52D4();
  swift_getOpaqueTypeConformance2();
  return sub_21CB85194();
}

double sub_21C8F2EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PMSafariAutoFillStrongPasswordView(0, a2, a3, a4);
  result = 16.0;
  if ((*(a1 + *(v5 + 60)) & 1) == 0)
  {
    if (*(a1 + *(v5 + 56)) == 1)
    {
      return 32.0;
    }

    else
    {
      ShouldShowIconBadge = PMOnboardingShouldShowIconBadge();
      result = 0.0;
      if (ShouldShowIconBadge)
      {
        return 16.0;
      }
    }
  }

  return result;
}

uint64_t sub_21C8F2F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v53 = sub_21CB83524();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0878, &qword_21CBAF470);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v9 = &v47 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0880, &qword_21CBAF478);
  MEMORY[0x28223BE20](v49);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0888, &qword_21CBAF480);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0890, &qword_21CBAF488);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - v25;
  v28 = type metadata accessor for PMSafariAutoFillStrongPasswordView(0, a2, a3, v27);
  sub_21C8F34FC(v28, v16);
  sub_21CB85234();
  sub_21CB82AC4();
  sub_21C716934(v16, v23, &qword_27CDF0888, &qword_21CBAF480);
  v29 = &v23[*(v18 + 44)];
  v30 = v65;
  *(v29 + 4) = v64;
  *(v29 + 5) = v30;
  *(v29 + 6) = v66;
  v31 = v61;
  *v29 = v60;
  *(v29 + 1) = v31;
  v32 = v63;
  *(v29 + 2) = v62;
  *(v29 + 3) = v32;
  sub_21C716934(v23, v26, &qword_27CDF0890, &qword_21CBAF488);
  v55 = a2;
  v57 = a2;
  v58 = a3;
  v33 = a1;
  v59 = a1;
  sub_21CB83CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0788, &qword_21CBAF390);
  sub_21C8F5714();
  sub_21CB81FF4();
  v34 = v48;
  sub_21CB83514();
  LOBYTE(v16) = sub_21CB83CC4();
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v16)
  {
    sub_21CB83CB4();
  }

  sub_21C6EADEC(&qword_27CDF08A0, &qword_27CDF0878, &qword_21CBAF470, MEMORY[0x277CDD6E0]);
  v35 = v51;
  sub_21CB84534();
  (*(v52 + 8))(v34, v53);
  (*(v50 + 8))(v9, v35);
  v36 = sub_21CB83D04();
  sub_21C8F2EA0(v33, v55, a3, v37);
  sub_21CB81F24();
  v38 = &v13[*(v49 + 36)];
  *v38 = v36;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  sub_21C6EDBAC(v26, v20, &qword_27CDF0890, &qword_21CBAF488);
  v43 = v54;
  sub_21C6EDBAC(v13, v54, &qword_27CDF0880, &qword_21CBAF478);
  v44 = v56;
  sub_21C6EDBAC(v20, v56, &qword_27CDF0890, &qword_21CBAF488);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF08A8, &unk_21CBAF490);
  sub_21C6EDBAC(v43, v44 + *(v45 + 48), &qword_27CDF0880, &qword_21CBAF478);
  sub_21C6EA794(v13, &qword_27CDF0880, &qword_21CBAF478);
  sub_21C6EA794(v26, &qword_27CDF0890, &qword_21CBAF488);
  sub_21C6EA794(v43, &qword_27CDF0880, &qword_21CBAF478);
  return sub_21C6EA794(v20, &qword_27CDF0890, &qword_21CBAF488);
}

uint64_t sub_21C8F34FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB84D84();
  sub_21CB84D54();
  (*(*(a1 + 24) + 8))(v18, v10);
  (*(v11 + 8))(v14, v10);
  sub_21C85F75C(v18);
  if ((v19 & 1) == 0)
  {
    return (*(v7 + 56))(a2, 1, 1, v6);
  }

  v15 = v2[1];
  *v9 = *v3;
  v9[1] = v15;
  v16 = *(v6 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  sub_21C8FD468(v9, a2, type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton);
  (*(v7 + 56))(a2, 0, 1, v6);
}

__n128 sub_21C8F3748@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v68 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21CB83524();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07C0, &qword_21CBAF3F0);
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0870, &qword_21CBAF468);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v13 = &v60 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07B8, &qword_21CBAF3E8);
  MEMORY[0x28223BE20](v61);
  v70 = &v60 - v14;
  *v11 = sub_21CB832E4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0840, &qword_21CBAF430);
  sub_21C8F4AE4(a2, a3, &v11[*(v15 + 44)]);
  v16 = sub_21CB83CF4();
  v67 = a3;
  v18 = type metadata accessor for PMSafariAutoFillStrongPasswordView(0, a2, a3, v17);
  sub_21C8F4590(v18);
  sub_21CB81F24();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07E8, &qword_21CBAF400) + 36)];
  *v27 = v16;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_21CB83D04();
  sub_21C8F2970(v18);
  sub_21CB81F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07D8, &qword_21CBAF3F8) + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_21CB84AB4();
  v39 = sub_21CB83CE4();
  v40 = &v11[*(v9 + 36)];
  *v40 = v38;
  v40[8] = v39;
  sub_21CB83514();
  v41 = sub_21CB83CC4();
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v41)
  {
    sub_21CB83CB4();
  }

  sub_21C8F50D8();
  sub_21CB84534();
  (*(v63 + 8))(v8, v65);
  sub_21C6EA794(v11, &qword_27CDF07C0, &qword_21CBAF3F0);
  sub_21CB85214();
  sub_21CB82AC4();
  v42 = v70;
  (*(v62 + 32))(v70, v13, v64);
  v43 = (v42 + *(v61 + 36));
  v44 = v76;
  v43[4] = v75;
  v43[5] = v44;
  v43[6] = v77;
  v45 = v72;
  *v43 = v71;
  v43[1] = v45;
  v46 = v74;
  v43[2] = v73;
  v43[3] = v46;
  v65 = *(v18 + 48);
  v64 = sub_21CB84D84();
  v47 = v66;
  sub_21CB84D54();
  v48 = v67;
  v63 = *(v67 + 8);
  (v63)(v78, a2, v67);
  v49 = *(v68 + 8);
  v49(v47, a2);
  sub_21C85F75C(v78);
  v50 = v79;
  sub_21CB84D54();
  (v63)(v80, a2, v48);
  v49(v47, a2);
  sub_21C85F75C(v80);
  v51 = 0x4074A00000000000;
  if (v81)
  {
    v52 = 330.0;
  }

  else
  {
    v52 = 490.0;
  }

  sub_21CB85214();
  if ((v50 & 1) == 0)
  {
    v51 = 0;
  }

  v53 = *&v51;
  if ((v50 & 1) == 0)
  {
    v53 = -INFINITY;
  }

  if (v53 > v52)
  {
    sub_21CB85B04();
    v54 = sub_21CB83C94();
    sub_21CB81C14();
  }

  sub_21CB82AC4();
  v55 = v69;
  sub_21C716934(v70, v69, &qword_27CDF07B8, &qword_21CBAF3E8);
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0798, &qword_21CBAF3D8) + 36);
  v57 = v87;
  *(v56 + 64) = v86;
  *(v56 + 80) = v57;
  *(v56 + 96) = v88;
  v58 = v83;
  *v56 = v82;
  *(v56 + 16) = v58;
  result = v85;
  *(v56 + 32) = v84;
  *(v56 + 48) = result;
  return result;
}

uint64_t sub_21C8F3E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v46 - v7;
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v46 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  v51 = type metadata accessor for PMOsloHeaderContentView(0) - 8;
  MEMORY[0x28223BE20](v51);
  v48 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB84D84();
  sub_21CB84D54();
  v21 = *(a1 + 24);
  (*(v21 + 16))(v8, v21);
  v22 = *(v9 + 8);
  v22(v19, v8);
  v46 = v2;
  sub_21CB84D54();
  (*(v21 + 24))(v8, v21);
  v22(v16, v8);
  v23 = v47;
  sub_21CB84D54();
  v24 = *(v21 + 8);
  v24(v55, v8, v21);
  v22(v23, v8);
  v58 = v55[0];
  sub_21C6EDBAC(&v58, v56, &unk_27CDED260, &qword_21CBA1C60);
  sub_21C85F75C(v55);
  v25 = v49;
  sub_21CB84D54();
  v24(v56, v8, v21);
  v22(v25, v8);
  v57 = v56[1];
  sub_21C6EDBAC(&v57, v54, &unk_27CDED260, &qword_21CBA1C60);
  sub_21C85F75C(v56);
  v26 = sub_21CB813C4();
  v27 = v48;
  (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
  v28 = v51;
  v29 = *(v51 + 28);
  v30 = type metadata accessor for PMOsloBadge(0);
  (*(*(v30 - 8) + 56))(v27 + v29, 1, 1, v30);
  v31 = v28;
  v32 = *(v28 + 32);
  v33 = *(v31 + 36);
  sub_21C7D3344(v50, v27, &qword_27CDECC98, &unk_21CBCB9B0);
  sub_21C7D3344(v53, v27 + v29, &unk_27CDF2CA0, &unk_21CBA5520);
  v34 = v57;
  *(v27 + v32) = v58;
  *(v27 + v33) = v34;
  LOBYTE(v29) = sub_21CB83D04();
  sub_21CB81F24();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v52;
  sub_21C8F55EC(v27, v52, type metadata accessor for PMOsloHeaderContentView);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CB0, &qword_21CBA5530) + 36);
  *v44 = v29;
  *(v44 + 8) = v36;
  *(v44 + 16) = v38;
  *(v44 + 24) = v40;
  *(v44 + 32) = v42;
  *(v44 + 40) = 0;
  return sub_21C8F5654(v27, type metadata accessor for PMOsloHeaderContentView);
}

uint64_t sub_21C8F439C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB84D84();
  sub_21CB84D54();
  (*(*(a1 + 24) + 8))(v15, v4);
  (*(v5 + 8))(v7, v4);
  v8 = v15[4];

  sub_21C85F75C(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3260, &qword_21CBAF450);
  sub_21CB84D54();
  v9 = *v1;
  v10 = v1[3];
  v12[0] = v8;
  v12[6] = v9;
  v13 = *(v2 + 1);
  v14 = v10;

  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0858, &unk_21CBAF458);
  sub_21C8F54A4();
  sub_21C8F54F8();
  sub_21CB84974();
  return sub_21C8F5584(v12);
}

double sub_21C8F4590(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB84D84();
  sub_21CB84D54();
  (*(*(a1 + 24) + 8))(v7, v2);
  (*(v3 + 8))(v5, v2);
  sub_21C85F75C(v7);
  result = 34.0;
  if (v8)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_21C8F46B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43[1] = a2;
  v44 = sub_21CB83524();
  v43[0] = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0838, &qword_21CBAF428);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0828, &qword_21CBAF420);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0810, &qword_21CBAF418);
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  *v8 = sub_21CB832E4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0840, &qword_21CBAF430);
  sub_21C8F4AE4(*(a1 + 16), *(a1 + 24), &v8[*(v16 + 44)]);
  v17 = sub_21CB83CD4();
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07E8, &qword_21CBAF400) + 36)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = sub_21CB83CF4();
  sub_21C8F4590(a1);
  sub_21CB81F24();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF07D8, &qword_21CBAF3F8) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_21CB83D04();
  sub_21C8F2970(a1);
  sub_21CB81F24();
  v30 = &v8[*(v6 + 44)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v8, v12, &qword_27CDF0838, &qword_21CBAF428);
  v35 = &v12[*(v10 + 44)];
  v36 = v50;
  *(v35 + 4) = v49;
  *(v35 + 5) = v36;
  *(v35 + 6) = v51;
  v37 = v46;
  *v35 = v45;
  *(v35 + 1) = v37;
  v38 = v48;
  *(v35 + 2) = v47;
  *(v35 + 3) = v38;
  v39 = sub_21CB84AB4();
  v40 = sub_21CB83CE4();
  sub_21C716934(v12, v15, &qword_27CDF0828, &qword_21CBAF420);
  v41 = &v15[*(v13 + 36)];
  *v41 = v39;
  v41[8] = v40;
  sub_21CB83514();
  LOBYTE(v12) = sub_21CB83CC4();
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v12)
  {
    sub_21CB83CB4();
  }

  sub_21C8F52D4();
  sub_21CB84534();
  (*(v43[0] + 8))(v4, v44);
  return sub_21C6EA794(v15, &qword_27CDF0810, &qword_21CBAF418);
}

uint64_t sub_21C8F4AE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0848, &unk_21CBAF438);
  v26 = *(v5 - 8);
  v6 = v26;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CB0, &qword_21CBA5530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v19 = type metadata accessor for PMSafariAutoFillStrongPasswordView(0, a1, a2, v18);
  sub_21C8F3E34(v19, v17);
  sub_21C8F439C(v19);
  sub_21C6EDBAC(v17, v14, &qword_27CDF2CB0, &qword_21CBA5530);
  v20 = *(v6 + 16);
  v21 = v5;
  v20(v8, v11, v5);
  v22 = v27;
  sub_21C6EDBAC(v14, v27, &qword_27CDF2CB0, &qword_21CBA5530);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0850, &qword_21CBAF448) + 48);
  v20(v23, v8, v21);
  v24 = *(v26 + 8);
  v24(v11, v21);
  sub_21C6EA794(v17, &qword_27CDF2CB0, &qword_21CBA5530);
  v24(v8, v21);
  return sub_21C6EA794(v14, &qword_27CDF2CB0, &qword_21CBA5530);
}

uint64_t sub_21C8F4D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB83CD4();
  sub_21CB81F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_21C8F55B4(a1, a2);
  *(a2 + 80) = v4;
  *(a2 + 88) = v6;
  *(a2 + 96) = v8;
  *(a2 + 104) = v10;
  *(a2 + 112) = v12;
  *(a2 + 120) = 0;
  return result;
}

unint64_t sub_21C8F4DDC()
{
  result = qword_27CDF0728;
  if (!qword_27CDF0728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0718, &qword_21CBAF348);
    sub_21C8F4E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0728);
  }

  return result;
}

unint64_t sub_21C8F4E60()
{
  result = qword_27CDF0730;
  if (!qword_27CDF0730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0738, &qword_21CBAF358);
    v1 = MEMORY[0x277CE1198];
    sub_21C6EADEC(&qword_27CDF0740, &qword_27CDF0748, &qword_21CBAF360, MEMORY[0x277CE1198]);
    sub_21C6EADEC(&qword_27CDF0750, &qword_27CDF0758, &qword_21CBAF368, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0730);
  }

  return result;
}

unint64_t sub_21C8F4F84()
{
  result = qword_27CDF07A8;
  if (!qword_27CDF07A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0798, &qword_21CBAF3D8);
    sub_21C8F5010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF07A8);
  }

  return result;
}

unint64_t sub_21C8F5010()
{
  result = qword_27CDF07B0;
  if (!qword_27CDF07B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF07B8, &qword_21CBAF3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF07C0, &qword_21CBAF3F0);
    sub_21C8F50D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF07B0);
  }

  return result;
}

unint64_t sub_21C8F50D8()
{
  result = qword_27CDF07C8;
  if (!qword_27CDF07C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF07C0, &qword_21CBAF3F0);
    sub_21C8F5190();
    sub_21C6EADEC(&qword_27CDF0800, &qword_27CDF0808, &qword_21CBAF410, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF07C8);
  }

  return result;
}

unint64_t sub_21C8F5190()
{
  result = qword_27CDF07D0;
  if (!qword_27CDF07D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF07D8, &qword_21CBAF3F8);
    sub_21C8F521C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF07D0);
  }

  return result;
}

unint64_t sub_21C8F521C()
{
  result = qword_27CDF07E0;
  if (!qword_27CDF07E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF07E8, &qword_21CBAF400);
    sub_21C6EADEC(&qword_27CDF07F0, &qword_27CDF07F8, &qword_21CBAF408, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF07E0);
  }

  return result;
}

unint64_t sub_21C8F52D4()
{
  result = qword_27CDF0818;
  if (!qword_27CDF0818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0810, &qword_21CBAF418);
    sub_21C8F538C();
    sub_21C6EADEC(&qword_27CDF0800, &qword_27CDF0808, &qword_21CBAF410, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0818);
  }

  return result;
}

unint64_t sub_21C8F538C()
{
  result = qword_27CDF0820;
  if (!qword_27CDF0820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0828, &qword_21CBAF420);
    sub_21C8F5418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0820);
  }

  return result;
}

unint64_t sub_21C8F5418()
{
  result = qword_27CDF0830;
  if (!qword_27CDF0830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0838, &qword_21CBAF428);
    sub_21C8F5190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0830);
  }

  return result;
}

unint64_t sub_21C8F54A4()
{
  result = qword_27CDF0860;
  if (!qword_27CDF0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0860);
  }

  return result;
}

unint64_t sub_21C8F54F8()
{
  result = qword_27CDF0868;
  if (!qword_27CDF0868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0858, &unk_21CBAF458);
    sub_21C8F54A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0868);
  }

  return result;
}

uint64_t sub_21C8F55EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8F5654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C8F5714()
{
  result = qword_27CDF0898;
  if (!qword_27CDF0898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0788, &qword_21CBAF390);
    sub_21C8F4F84();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0810, &qword_21CBAF418);
    sub_21C8F52D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0898);
  }

  return result;
}

uint64_t sub_21C8F57F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09B0, &qword_21CBAF858);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09B8, &qword_21CBAF860);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  *v5 = sub_21CB83074();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09C0, &qword_21CBAF868);
  sub_21C8F5A08(v1, &v5[*(v9 + 44)]);
  v10 = sub_21CB83CD4();
  sub_21CB81F24();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_21C716934(v5, v8, &qword_27CDF09B0, &qword_21CBAF858);
  v19 = &v8[*(v6 + 36)];
  *v19 = v10;
  *(v19 + 1) = v12;
  *(v19 + 2) = v14;
  *(v19 + 3) = v16;
  *(v19 + 4) = v18;
  v19[40] = 0;
  LOBYTE(v5) = sub_21CB83D04();
  sub_21CB81F24();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_21C716934(v8, a1, &qword_27CDF09B8, &qword_21CBAF860);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09C8, &qword_21CBAF870);
  v29 = a1 + *(result + 36);
  *v29 = v5;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_21C8F5A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09D0, &qword_21CBAF878);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09D8, &unk_21CBAF880);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = v40 - v15;
  if (*(a1 + 16))
  {
    v18 = *(v7 + 56);
    v19 = v40 - v15;
    v20 = 1;
  }

  else
  {
    sub_21C8F55EC(a1, v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
    v21 = *(v4 + 80);
    v41 = v4;
    v22 = (v21 + 16) & ~v21;
    v23 = swift_allocObject();
    v24 = sub_21C8FD468(v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
    v40[1] = v40;
    MEMORY[0x28223BE20](v24);
    v40[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4570, &unk_21CBBADB0);
    sub_21C8FD504();
    v4 = v41;
    sub_21CB84DA4();
    (*(v7 + 32))(v17, v11, v6);
    v18 = *(v7 + 56);
    v19 = v17;
    v20 = 0;
  }

  v25 = v6;
  v18(v19, v20, 1, v6, v16);
  sub_21C8F55EC(a1, v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
  v26 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v27 = swift_allocObject();
  v28 = sub_21C8FD468(v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons);
  MEMORY[0x28223BE20](v28);
  v40[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4570, &unk_21CBBADB0);
  sub_21C8FD504();
  sub_21CB84DA4();
  v29 = v17;
  v41 = v17;
  v30 = v11;
  v31 = v42;
  sub_21C6EDBAC(v29, v42, &qword_27CDF09D8, &unk_21CBAF880);
  v32 = *(v7 + 16);
  v33 = v43;
  v32(v43, v30, v6);
  v34 = v7;
  v35 = v44;
  sub_21C6EDBAC(v31, v44, &qword_27CDF09D8, &unk_21CBAF880);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09E8, &qword_21CBAF898);
  v37 = v35 + *(v36 + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  v32((v35 + *(v36 + 64)), v33, v25);
  v38 = *(v34 + 8);
  v38(v30, v25);
  sub_21C6EA794(v41, &qword_27CDF09D8, &unk_21CBAF880);
  v38(v33, v25);
  return sub_21C6EA794(v31, &qword_27CDF09D8, &unk_21CBAF880);
}

uint64_t sub_21C8F5F3C@<X0>(uint64_t *a3@<X8>)
{
  v23 = sub_21CB84A44();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB82054();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v24 = sub_21CB84BB4();
  v15 = sub_21CB83DC4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = sub_21CB83E14();
  sub_21C6EA794(v14, &qword_27CDEBB58, &qword_21CBAF8A0);
  KeyPath = swift_getKeyPath(byte_21CBAF8A8);
  type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons(0);
  sub_21C74F0F8(v11);
  (*(v6 + 104))(v8, *MEMORY[0x277CDF3D0], v5);
  v18 = sub_21CB82044();
  v19 = *(v6 + 8);
  v19(v8, v5);
  v19(v11, v5);
  if (v18)
  {
    (*(v21 + 104))(v22, *MEMORY[0x277CE0EE0], v23);
    result = sub_21CB84B44();
  }

  else
  {
    result = sub_21CB84AD4();
  }

  *a3 = v24;
  a3[1] = KeyPath;
  a3[2] = v16;
  a3[3] = result;
  return result;
}

double sub_21C8F627C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_21CB829C4();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB28, &qword_21CBAF7B0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  sub_21CB81EF4();
  v16 = sub_21CB81F14();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  sub_21C8F55EC(a1, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_21C8FD468(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton);
  sub_21CB84D94();
  sub_21CB829B4();
  sub_21C6EADEC(&qword_27CDECB20, &qword_27CDECB28, &qword_21CBAF7B0, MEMORY[0x277CDF028]);
  sub_21C8FEB84(&qword_27CDF0948, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  v20 = v24;
  v19 = v25;
  sub_21CB84124();
  (*(v3 + 8))(v5, v20);
  (*(v13 + 8))(v15, v12);
  v21 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0940, &qword_21CBAF7A8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0958, &qword_21CBAF7B8);
  sub_21CB82AE4();
  *v21 = swift_getKeyPath(byte_21CBAF7F0);
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0930, &qword_21CBAF7A0) + 36)) = 0;
  LOBYTE(v15) = sub_21CB83CE4();
  v22 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0910, &qword_21CBAF790) + 36);
  *v22 = v15;
  result = 0.0;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 1;
  return result;
}

uint64_t sub_21C8F66D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

double sub_21C8F6710@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_21CB82A54();
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0988, &qword_21CBAF7D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0978, &qword_21CBAF7C8);
  MEMORY[0x28223BE20](v23);
  v15 = &v23 - v14;
  sub_21C8F55EC(a1, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_21C8FD468(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton);
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0998, &qword_21CBAF7D8);
  sub_21C8FD0E0();
  sub_21CB84DA4();
  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDF0990, &qword_27CDF0988, &qword_21CBAF7D0, MEMORY[0x277CDF028]);
  sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v18 = v24;
  sub_21CB84124();
  (*(v25 + 8))(v6, v18);
  (*(v11 + 8))(v13, v10);
  v19 = &v15[*(v23 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0958, &qword_21CBAF7B8);
  sub_21CB82AE4();
  *v19 = swift_getKeyPath(byte_21CBAF7F0);
  sub_21C8FCF5C();
  v20 = v26;
  sub_21CB844A4();
  sub_21C6EA794(v15, &qword_27CDF0978, &qword_21CBAF7C8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0918, &qword_21CBAF798);
  result = -10.0;
  *(v20 + *(v21 + 36)) = xmmword_21CBAF1B0;
  return result;
}

uint64_t sub_21C8F6B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = sub_21CB84A44();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB82054();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = sub_21CB84BD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB84BB4();
  (*(v14 + 104))(v16, *MEMORY[0x277CE0FE0], v13);
  v27 = sub_21CB84C64();

  (*(v14 + 8))(v16, v13);
  sub_21CB85214();
  sub_21CB82374();
  LOBYTE(v16) = v32;
  v25 = v33;
  v26 = v31;
  LOBYTE(v14) = v34;
  v23 = v36;
  v24 = v35;
  type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0);
  sub_21C74F0F8(v12);
  (*(v7 + 104))(v9, *MEMORY[0x277CDF3C0], v6);
  sub_21CB82044();
  v17 = *(v7 + 8);
  v17(v9, v6);
  v17(v12, v6);
  (*(v29 + 104))(v5, *MEMORY[0x277CE0EE0], v30);
  v18 = sub_21CB84B54();
  v20 = v26;
  *a2 = v27;
  *(a2 + 8) = v20;
  *(a2 + 16) = v16;
  v21 = v24;
  *(a2 + 24) = v25;
  *(a2 + 32) = v14;
  v22 = v23;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = result;
  *(a2 + 64) = v18;
  return result;
}

uint64_t sub_21C8F6EE8(uint64_t a1)
{
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0910, &qword_21CBAF790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0918, &qword_21CBAF798);
  sub_21C8FCBD8();
  sub_21C8FCE94();
  return sub_21CB85194();
}

uint64_t sub_21C8F6FB8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_21C6EDBAC(a2 + 8, a3 + 8, &unk_27CDFA2C0, &unk_21CBA68A0);
  v6 = *(a2 + 48);
  v7 = *(a2 + 72);
  *a3 = v5;
  *(a3 + 48) = v6;
  *(a3 + 56) = *(a2 + 56);
  *(a3 + 72) = v7;
}

uint64_t sub_21C8F703C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB832E4();
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF08E8, &unk_21CBAF760);
  v9 = *v2;
  swift_getKeyPath(byte_21CBAF770);
  sub_21C8F55B4(v2, v8);
  v4 = swift_allocObject();
  v5 = v8[3];
  v4[3] = v8[2];
  v4[4] = v5;
  v4[5] = v8[4];
  v6 = v8[1];
  v4[1] = v8[0];
  v4[2] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF08F0, &qword_21CBAF788);
  sub_21C6EADEC(&qword_27CDF08F8, &qword_27CDF08F0, &qword_21CBAF788, MEMORY[0x277D83980]);
  sub_21C8FCB20();
  sub_21C8FCB74();
  return sub_21CB84FD4();
}

uint64_t sub_21C8F71A4@<X0>(uint64_t a1@<X8>)
{
  v193 = a1;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A28, &qword_21CBAF9C0);
  MEMORY[0x28223BE20](v165);
  v167 = &v155 - v2;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A30, &qword_21CBAF9C8);
  MEMORY[0x28223BE20](v162);
  v163 = &v155 - v3;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A38, &qword_21CBAF9D0);
  MEMORY[0x28223BE20](v166);
  v164 = &v155 - v4;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A40, &qword_21CBAF9D8);
  MEMORY[0x28223BE20](v192);
  v168 = &v155 - v5;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A48, &qword_21CBAF9E0);
  v158 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v157 = &v155 - v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A50, &qword_21CBAF9E8);
  MEMORY[0x28223BE20](v159);
  v8 = &v155 - v7;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A58, &qword_21CBAF9F0);
  MEMORY[0x28223BE20](v177);
  v10 = &v155 - v9;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A60, &qword_21CBAF9F8);
  MEMORY[0x28223BE20](v173);
  v176 = &v155 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A68, &qword_21CBAFA00);
  MEMORY[0x28223BE20](v12);
  v14 = &v155 - v13;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A70, &qword_21CBAFA08);
  MEMORY[0x28223BE20](v174);
  v160 = &v155 - v15;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A78, &qword_21CBAFA10);
  MEMORY[0x28223BE20](v187);
  v178 = &v155 - v16;
  v17 = sub_21CB81024();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A80, &qword_21CBAFA18);
  v180 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v155 - v21;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A88, &qword_21CBAFA20);
  MEMORY[0x28223BE20](v182);
  v179 = &v155 - v22;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A90, &qword_21CBAFA28);
  MEMORY[0x28223BE20](v189);
  v191 = &v155 - v23;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A98, &qword_21CBAFA30);
  MEMORY[0x28223BE20](v184);
  v186 = &v155 - v24;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AA0, &qword_21CBAFA38);
  MEMORY[0x28223BE20](v169);
  v172 = &v155 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AA8, &qword_21CBAFA40);
  MEMORY[0x28223BE20](v26);
  v28 = &v155 - v27;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AB0, &qword_21CBAFA48);
  MEMORY[0x28223BE20](v170);
  v171 = &v155 - v29;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AB8, &qword_21CBAFA50);
  MEMORY[0x28223BE20](v185);
  v175 = &v155 - v30;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AC0, &qword_21CBAFA58);
  MEMORY[0x28223BE20](v190);
  v188 = &v155 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AC8, &qword_21CBAFA60);
  MEMORY[0x28223BE20](v32);
  v36 = &v155 - v35;
  v37 = *v1;
  if (v37 > 6)
  {
    if (*v1 <= 8u)
    {
      if (v37 == 7)
      {
        v99 = v33;
        v156 = v33;
        v100 = v34;
        v101 = v36;
        v155 = v36;
        sub_21C8FA0C0(v36);
        (*(v100 + 16))(v14, v101, v99);
        swift_storeEnumTagMultiPayload();
        v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
        v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
        v104 = sub_21CB82A54();
        v105 = MEMORY[0x277CDF028];
        v106 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
        v107 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
        v194 = v103;
        v195 = v104;
        v196 = v106;
        v197 = v107;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v194 = v102;
        v195 = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
        v110 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, v105);
        v194 = v109;
        v195 = v104;
        v196 = v110;
        v197 = v107;
        swift_getOpaqueTypeConformance2();
        v111 = v160;
        v112 = v156;
        sub_21CB83494();
        sub_21C6EDBAC(v111, v176, &qword_27CDF0A70, &qword_21CBAFA08);
        swift_storeEnumTagMultiPayload();
        sub_21C8FE2BC();
        sub_21C8FE4AC();
        v113 = v178;
        sub_21CB83494();
        sub_21C6EA794(v111, &qword_27CDF0A70, &qword_21CBAFA08);
        sub_21C6EDBAC(v113, v186, &qword_27CDF0A78, &qword_21CBAFA10);
        swift_storeEnumTagMultiPayload();
        sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
        sub_21C8FE230();
        v114 = v188;
        sub_21CB83494();
        sub_21C6EA794(v113, &qword_27CDF0A78, &qword_21CBAFA10);
        sub_21C6EDBAC(v114, v191, &qword_27CDF0AC0, &qword_21CBAFA58);
        swift_storeEnumTagMultiPayload();
        sub_21C8FDFB0();
        sub_21C8FE564();
        sub_21CB83494();
        sub_21C6EA794(v114, &qword_27CDF0AC0, &qword_21CBAFA58);
        return (*(v100 + 8))(v155, v112);
      }

      if (v37 != 8)
      {
        goto LABEL_27;
      }

      MEMORY[0x28223BE20](v33);
      *(&v155 - 2) = v1;
      MEMORY[0x28223BE20](v88);
      *(&v155 - 2) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B48, &qword_21CBAFA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B50, &qword_21CBAFA88);
      sub_21C8FE730();
      sub_21C6EADEC(&qword_27CDF0BA0, &qword_27CDF0B50, &qword_21CBAFA88, MEMORY[0x277CE14C0]);
      v89 = v157;
      sub_21CB83F54();
      v61 = v158;
      v60 = v89;
      v62 = v161;
      (*(v158 + 16))(v8, v89, v161);
      swift_storeEnumTagMultiPayload();
      sub_21C8FDDF8();
      sub_21C6EADEC(&qword_27CDF0B38, &qword_27CDF0A48, &qword_21CBAF9E0, MEMORY[0x277CDE5B0]);
      sub_21CB83494();
      sub_21C6EDBAC(v10, v176, &qword_27CDF0A58, &qword_21CBAF9F0);
      swift_storeEnumTagMultiPayload();
      sub_21C8FE2BC();
      sub_21C8FE4AC();
      v90 = v178;
      sub_21CB83494();
      sub_21C6EA794(v10, &qword_27CDF0A58, &qword_21CBAF9F0);
      sub_21C6EDBAC(v90, v186, &qword_27CDF0A78, &qword_21CBAFA10);
      swift_storeEnumTagMultiPayload();
      sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
      sub_21C8FE230();
      v69 = v188;
      sub_21CB83494();
      sub_21C6EA794(v90, &qword_27CDF0A78, &qword_21CBAFA10);
      v70 = &qword_27CDF0AC0;
      v71 = &qword_21CBAFA58;
      sub_21C6EDBAC(v69, v191, &qword_27CDF0AC0, &qword_21CBAFA58);
    }

    else
    {
      if (v37 == 9 || v37 == 10)
      {
        sub_21CB81014();
        v138 = sub_21CB81004();
        v140 = v139;
        (*(v18 + 8))(v20, v17);
        v141 = v181;
        sub_21C8FA758(v138, v140, 10, v181);

        v142 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
        v143 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
        v144 = sub_21CB82A54();
        v145 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
        v146 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
        v194 = v143;
        v195 = v144;
        v196 = v145;
        v197 = v146;
        v147 = swift_getOpaqueTypeConformance2();
        v194 = v142;
        v195 = v147;
        swift_getOpaqueTypeConformance2();
        v148 = v179;
        v149 = v183;
        sub_21CB845C4();
        (*(v180 + 8))(v141, v149);
        sub_21C6EDBAC(v148, v163, &qword_27CDF0A88, &qword_21CBAFA20);
        swift_storeEnumTagMultiPayload();
        sub_21C8FDDF8();
        v150 = v164;
        sub_21CB83494();
        sub_21C6EDBAC(v150, v167, &qword_27CDF0A38, &qword_21CBAF9D0);
        swift_storeEnumTagMultiPayload();
        sub_21C8FE068(&qword_27CDF0AD0, &qword_27CDF0A38, &qword_21CBAF9D0, sub_21C8FDDF8);
        v151 = v168;
        sub_21CB83494();
        sub_21C6EA794(v150, &qword_27CDF0A38, &qword_21CBAF9D0);
        sub_21C6EDBAC(v151, v191, &qword_27CDF0A40, &qword_21CBAF9D8);
        swift_storeEnumTagMultiPayload();
        sub_21C8FDFB0();
        sub_21C8FE564();
        sub_21CB83494();
        sub_21C6EA794(v151, &qword_27CDF0A40, &qword_21CBAF9D8);
        v137 = v148;
        return sub_21C6EA794(v137, &qword_27CDF0A88, &qword_21CBAFA20);
      }

      if (v37 != 11)
      {
        goto LABEL_27;
      }

      sub_21CB81014();
      v57 = sub_21CB81004();
      v59 = v58;
      (*(v18 + 8))(v20, v17);
      v60 = v181;
      sub_21C8FA758(v57, v59, 10, v181);

      v61 = v180;
      v62 = v183;
      (*(v180 + 16))(v167, v60, v183);
      swift_storeEnumTagMultiPayload();
      sub_21C8FE068(&qword_27CDF0AD0, &qword_27CDF0A38, &qword_21CBAF9D0, sub_21C8FDDF8);
      v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
      v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
      v65 = sub_21CB82A54();
      v66 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
      v67 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
      v194 = v64;
      v195 = v65;
      v196 = v66;
      v197 = v67;
      v68 = swift_getOpaqueTypeConformance2();
      v194 = v63;
      v195 = v68;
      swift_getOpaqueTypeConformance2();
      v69 = v168;
      sub_21CB83494();
      v70 = &qword_27CDF0A40;
      v71 = &qword_21CBAF9D8;
      sub_21C6EDBAC(v69, v191, &qword_27CDF0A40, &qword_21CBAF9D8);
    }

    swift_storeEnumTagMultiPayload();
    sub_21C8FDFB0();
    sub_21C8FE564();
    sub_21CB83494();
    sub_21C6EA794(v69, v70, v71);
    return (*(v61 + 8))(v60, v62);
  }

  if (*v1 > 3u)
  {
    if (v37 != 4)
    {
      v156 = v33;
      if (v37 != 5)
      {
        if (v37 == 6)
        {
          sub_21CB81014();
          v38 = sub_21CB81004();
          v40 = v39;
          (*(v18 + 8))(v20, v17);
          v41 = v181;
          sub_21C8FA758(v38, v40, 5, v181);

          v42 = v180;
          (*(v180 + 16))(v14, v41, v183);
          swift_storeEnumTagMultiPayload();
          v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
          v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
          v45 = sub_21CB82A54();
          v46 = MEMORY[0x277CDF028];
          v47 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
          v48 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
          v194 = v44;
          v195 = v45;
          v196 = v47;
          v197 = v48;
          v49 = swift_getOpaqueTypeConformance2();
          v194 = v43;
          v195 = v49;
          swift_getOpaqueTypeConformance2();
          v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
          v51 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, v46);
          v194 = v50;
          v195 = v45;
          v196 = v51;
          v197 = v48;
          swift_getOpaqueTypeConformance2();
          v52 = v160;
          v53 = v183;
          sub_21CB83494();
          sub_21C6EDBAC(v52, v176, &qword_27CDF0A70, &qword_21CBAFA08);
          swift_storeEnumTagMultiPayload();
          sub_21C8FE2BC();
          sub_21C8FE4AC();
          v54 = v178;
          sub_21CB83494();
          sub_21C6EA794(v52, &qword_27CDF0A70, &qword_21CBAFA08);
          sub_21C6EDBAC(v54, v186, &qword_27CDF0A78, &qword_21CBAFA10);
          swift_storeEnumTagMultiPayload();
          sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
          sub_21C8FE230();
          v55 = v188;
          sub_21CB83494();
          sub_21C6EA794(v54, &qword_27CDF0A78, &qword_21CBAFA10);
          sub_21C6EDBAC(v55, v191, &qword_27CDF0AC0, &qword_21CBAFA58);
          swift_storeEnumTagMultiPayload();
          sub_21C8FDFB0();
          sub_21C8FE564();
          sub_21CB83494();
          sub_21C6EA794(v55, &qword_27CDF0AC0, &qword_21CBAFA58);
          return (*(v42 + 8))(v181, v53);
        }

        goto LABEL_27;
      }

      sub_21CB81014();
      v121 = sub_21CB81004();
      v123 = v122;
      (*(v18 + 8))(v20, v17);
      v124 = v181;
      sub_21C8FA758(v121, v123, 4, v181);

      v125 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
      v126 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
      v127 = sub_21CB82A54();
      v128 = MEMORY[0x277CDF028];
      v129 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
      v130 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
      v194 = v126;
      v195 = v127;
      v196 = v129;
      v197 = v130;
      v131 = swift_getOpaqueTypeConformance2();
      v194 = v125;
      v195 = v131;
      swift_getOpaqueTypeConformance2();
      v83 = v179;
      v132 = v183;
      sub_21CB845C4();
      (*(v180 + 8))(v124, v132);
      sub_21C6EDBAC(v83, v28, &qword_27CDF0A88, &qword_21CBAFA20);
      swift_storeEnumTagMultiPayload();
      v133 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
      v134 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, v128);
      v194 = v133;
      v195 = v127;
      v196 = v134;
      v197 = v130;
      swift_getOpaqueTypeConformance2();
      sub_21C8FDDF8();
      v87 = v171;
      sub_21CB83494();
      sub_21C6EDBAC(v87, v172, &qword_27CDF0AB0, &qword_21CBAFA48);
      goto LABEL_25;
    }

    v93 = v33;
    v91 = v34;
    v92 = v36;
    sub_21C8F9D38(v36);
    (*(v91 + 16))(v28, v92, v93);
    swift_storeEnumTagMultiPayload();
    v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
    v116 = sub_21CB82A54();
    v117 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, MEMORY[0x277CDF028]);
    v118 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v194 = v115;
    v195 = v116;
    v196 = v117;
    v197 = v118;
    swift_getOpaqueTypeConformance2();
    sub_21C8FDDF8();
    v98 = v171;
    sub_21CB83494();
    sub_21C6EDBAC(v98, v172, &qword_27CDF0AB0, &qword_21CBAFA48);
LABEL_22:
    swift_storeEnumTagMultiPayload();
    sub_21C8FE0E4();
    v119 = v175;
    sub_21CB83494();
    sub_21C6EA794(v98, &qword_27CDF0AB0, &qword_21CBAFA48);
    sub_21C6EDBAC(v119, v186, &qword_27CDF0AB8, &qword_21CBAFA50);
    swift_storeEnumTagMultiPayload();
    sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
    sub_21C8FE230();
    v120 = v188;
    sub_21CB83494();
    sub_21C6EA794(v119, &qword_27CDF0AB8, &qword_21CBAFA50);
    sub_21C6EDBAC(v120, v191, &qword_27CDF0AC0, &qword_21CBAFA58);
    swift_storeEnumTagMultiPayload();
    sub_21C8FDFB0();
    sub_21C8FE564();
    sub_21CB83494();
    sub_21C6EA794(v120, &qword_27CDF0AC0, &qword_21CBAFA58);
    return (*(v91 + 8))(v92, v93);
  }

  v156 = v33;
  if (v37 == 2)
  {
    v91 = v34;
    v92 = v36;
    sub_21C8F99B4(v36);
    v93 = v156;
    (*(v91 + 16))(v28, v92, v156);
    swift_storeEnumTagMultiPayload();
    v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
    v95 = sub_21CB82A54();
    v96 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, MEMORY[0x277CDF028]);
    v97 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v194 = v94;
    v195 = v95;
    v196 = v96;
    v197 = v97;
    swift_getOpaqueTypeConformance2();
    sub_21C8FDDF8();
    v98 = v171;
    sub_21CB83494();
    sub_21C6EDBAC(v98, v172, &qword_27CDF0AB0, &qword_21CBAFA48);
    goto LABEL_22;
  }

  if (v37 != 3)
  {
LABEL_27:
    v152 = v179;
    sub_21C8FA448(v37 & 1);
    sub_21C6EDBAC(v152, v8, &qword_27CDF0A88, &qword_21CBAFA20);
    swift_storeEnumTagMultiPayload();
    sub_21C8FDDF8();
    sub_21C6EADEC(&qword_27CDF0B38, &qword_27CDF0A48, &qword_21CBAF9E0, MEMORY[0x277CDE5B0]);
    sub_21CB83494();
    sub_21C6EDBAC(v10, v176, &qword_27CDF0A58, &qword_21CBAF9F0);
    swift_storeEnumTagMultiPayload();
    sub_21C8FE2BC();
    sub_21C8FE4AC();
    v153 = v178;
    sub_21CB83494();
    sub_21C6EA794(v10, &qword_27CDF0A58, &qword_21CBAF9F0);
    sub_21C6EDBAC(v153, v186, &qword_27CDF0A78, &qword_21CBAFA10);
    swift_storeEnumTagMultiPayload();
    sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
    sub_21C8FE230();
    v154 = v188;
    sub_21CB83494();
    sub_21C6EA794(v153, &qword_27CDF0A78, &qword_21CBAFA10);
    sub_21C6EDBAC(v154, v191, &qword_27CDF0AC0, &qword_21CBAFA58);
    swift_storeEnumTagMultiPayload();
    sub_21C8FDFB0();
    sub_21C8FE564();
    sub_21CB83494();
    sub_21C6EA794(v154, &qword_27CDF0AC0, &qword_21CBAFA58);
    v137 = v152;
    return sub_21C6EA794(v137, &qword_27CDF0A88, &qword_21CBAFA20);
  }

  sub_21CB81014();
  v72 = sub_21CB81004();
  v74 = v73;
  (*(v18 + 8))(v20, v17);
  v75 = v181;
  sub_21C8FA758(v72, v74, 6, v181);

  v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
  v78 = sub_21CB82A54();
  v79 = MEMORY[0x277CDF028];
  v80 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
  v81 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v194 = v77;
  v195 = v78;
  v196 = v80;
  v197 = v81;
  v82 = swift_getOpaqueTypeConformance2();
  v194 = v76;
  v195 = v82;
  swift_getOpaqueTypeConformance2();
  v83 = v179;
  v84 = v183;
  sub_21CB845C4();
  (*(v180 + 8))(v75, v84);
  sub_21C6EDBAC(v83, v28, &qword_27CDF0A88, &qword_21CBAFA20);
  swift_storeEnumTagMultiPayload();
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
  v86 = sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, v79);
  v194 = v85;
  v195 = v78;
  v196 = v86;
  v197 = v81;
  swift_getOpaqueTypeConformance2();
  sub_21C8FDDF8();
  v87 = v171;
  sub_21CB83494();
  sub_21C6EDBAC(v87, v172, &qword_27CDF0AB0, &qword_21CBAFA48);
LABEL_25:
  swift_storeEnumTagMultiPayload();
  sub_21C8FE0E4();
  v135 = v175;
  sub_21CB83494();
  sub_21C6EA794(v87, &qword_27CDF0AB0, &qword_21CBAFA48);
  sub_21C6EDBAC(v135, v186, &qword_27CDF0AB8, &qword_21CBAFA50);
  swift_storeEnumTagMultiPayload();
  sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
  sub_21C8FE230();
  v136 = v188;
  sub_21CB83494();
  sub_21C6EA794(v135, &qword_27CDF0AB8, &qword_21CBAFA50);
  sub_21C6EDBAC(v136, v191, &qword_27CDF0AC0, &qword_21CBAFA58);
  swift_storeEnumTagMultiPayload();
  sub_21C8FDFB0();
  sub_21C8FE564();
  sub_21CB83494();
  sub_21C6EA794(v136, &qword_27CDF0AC0, &qword_21CBAFA58);
  v137 = v83;
  return sub_21C6EA794(v137, &qword_27CDF0A88, &qword_21CBAFA20);
}

uint64_t sub_21C8F99B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_21CB82A54();
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B10, &qword_21CBAFA78);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  sub_21C8FE948(v2, v30);
  v18 = swift_allocObject();
  v19 = v30[3];
  *(v18 + 48) = v30[2];
  *(v18 + 64) = v19;
  *(v18 + 80) = v30[4];
  v20 = v30[1];
  *(v18 + 16) = v30[0];
  *(v18 + 32) = v20;
  *(v18 + 96) = 1;
  v27 = v2;
  v28 = v15;
  v29 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B48, &qword_21CBAFA80);
  sub_21C8FE730();
  sub_21CB84DA4();

  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, MEMORY[0x277CDF028]);
  sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v21 = v24;
  sub_21CB84124();
  (*(v25 + 8))(v6, v21);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21C8F9D38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_21CB82A54();
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B10, &qword_21CBAFA78);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  sub_21C8FE948(v2, v30);
  v18 = swift_allocObject();
  v19 = v30[3];
  *(v18 + 48) = v30[2];
  *(v18 + 64) = v19;
  *(v18 + 80) = v30[4];
  v20 = v30[1];
  *(v18 + 16) = v30[0];
  *(v18 + 32) = v20;
  *(v18 + 96) = 2;
  v27 = v2;
  v28 = v15;
  v29 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B48, &qword_21CBAFA80);
  sub_21C8FE730();
  sub_21CB84DA4();

  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, MEMORY[0x277CDF028]);
  sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v21 = v24;
  sub_21CB84124();
  (*(v25 + 8))(v6, v21);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21C8FA0C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_21CB82A54();
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B10, &qword_21CBAFA78);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  sub_21C8FE948(v2, v30);
  v18 = swift_allocObject();
  v19 = v30[3];
  *(v18 + 48) = v30[2];
  *(v18 + 64) = v19;
  *(v18 + 80) = v30[4];
  v20 = v30[1];
  *(v18 + 16) = v30[0];
  *(v18 + 32) = v20;
  *(v18 + 96) = 7;
  v27 = v2;
  v28 = v15;
  v29 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B48, &qword_21CBAFA80);
  sub_21C8FE730();
  sub_21CB84DA4();

  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, MEMORY[0x277CDF028]);
  sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v21 = v24;
  sub_21CB84124();
  (*(v25 + 8))(v6, v21);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21C8FA448(char a1)
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0A80, &qword_21CBAFA18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  sub_21C8FA758(v9, v11, 8, v8);

  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
  v14 = sub_21CB82A54();
  v15 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
  v16 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v12;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21CB845C4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21C8FA758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v26 = a3;
  v28 = a2;
  v27 = a1;
  v32 = a4;
  v33 = sub_21CB82A04();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB82A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AE8, &qword_21CBAFA70);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0AE0, &qword_21CBAFA68);
  v15 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v17 = &v26 - v16;
  sub_21C8FE948(v5, &v37);
  v18 = swift_allocObject();
  v19 = v40;
  *(v18 + 48) = v39;
  *(v18 + 64) = v19;
  *(v18 + 80) = v41;
  v20 = v38;
  *(v18 + 16) = v37;
  *(v18 + 32) = v20;
  *(v18 + 96) = v26;
  v34 = v5;
  v35 = v27;
  v36 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C20, &qword_21CBAFAF0);
  sub_21C8FEDB4();
  sub_21CB84DA4();
  sub_21CB82A44();
  v21 = sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
  v22 = sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_21CB84124();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  v23 = v30;
  sub_21CB829F4();
  *&v37 = v11;
  *(&v37 + 1) = v7;
  *&v38 = v21;
  *(&v38 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_21CB84334();
  (*(v31 + 8))(v23, v33);
  return (*(v15 + 8))(v17, v24);
}

uint64_t sub_21C8FABB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BF0, &qword_21CBAFAD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  sub_21C8FE948(a1, &v31);
  v15 = swift_allocObject();
  v16 = v34;
  v15[3] = v33;
  v15[4] = v16;
  v15[5] = v35;
  v17 = v32;
  v15[1] = v31;
  v15[2] = v17;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BF8, &qword_21CBAFAD8);
  sub_21C6EADEC(&qword_27CDF0C00, &qword_27CDF0BF8, &qword_21CBAFAD8, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();
  sub_21C8FE948(a1, &v31);
  v18 = swift_allocObject();
  v19 = v34;
  v18[3] = v33;
  v18[4] = v19;
  v18[5] = v35;
  v20 = v32;
  v18[1] = v31;
  v18[2] = v20;
  v29 = a1;
  sub_21CB84DA4();
  v21 = *(v4 + 16);
  v21(v8, v14, v3);
  v22 = v27;
  v21(v27, v11, v3);
  v23 = v28;
  v21(v28, v8, v3);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C08, &qword_21CBAFAE0);
  v21(&v23[*(v24 + 48)], v22, v3);
  v25 = *(v4 + 8);
  v25(v11, v3);
  v25(v14, v3);
  v25(v22, v3);
  return (v25)(v8, v3);
}

uint64_t sub_21C8FAF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v49 = v8;
  v50 = v10;
  sub_21C71F3FC();
  v11 = sub_21CB84054();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_21C6EDBAC(a1 + 8, &v49, &unk_27CDFA2C0, &unk_21CBA68A0);
  if (!v51)
  {
    sub_21C6EA794(&v49, &unk_27CDFA2C0, &unk_21CBA68A0);
LABEL_8:
    v32 = 0;
    v34 = 0;
    v41 = 0;
    v38 = 0;
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_0(&v49, v51);
  v18 = sub_21C995410();
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_0(&v49);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    goto LABEL_8;
  }

  v49 = v18;
  v50 = v20;
  v22 = sub_21CB84054();
  v24 = v23;
  v26 = v25;
  v27 = sub_21CB83FD4();
  v47 = v11;
  v29 = v28;
  v46 = v15;
  v31 = v30;
  v45 = v13;
  sub_21C74A72C(v22, v24, v26 & 1);

  sub_21CB84B34();
  v32 = sub_21CB83FB4();
  v34 = v33;
  v48 = v17;
  v36 = v35;
  v38 = v37;

  v39 = v31 & 1;
  LOBYTE(v15) = v46;
  v40 = v29;
  v11 = v47;
  sub_21C74A72C(v27, v40, v39);
  v13 = v45;

  v41 = v36 & 1;
  v17 = v48;
  sub_21C79B058(v32, v34, v41);

LABEL_9:
  v42 = v15 & 1;
  sub_21C79B058(v11, v13, v42);

  sub_21C8FECB4(v32, v34, v41, v38);
  sub_21C85CDBC(v32, v34, v41, v38);
  LOBYTE(v49) = v42;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v42;
  *(a2 + 24) = v17;
  *(a2 + 32) = v32;
  *(a2 + 40) = v34;
  *(a2 + 48) = v41;
  *(a2 + 56) = v38;
  sub_21C85CDBC(v32, v34, v41, v38);
  sub_21C74A72C(v11, v13, v42);
}

uint64_t sub_21C8FB258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C8FB2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C10, &qword_21CBAFAE8);
  sub_21C6EADEC(&qword_27CDF0C18, &qword_27CDF0C10, &qword_21CBAFAE8, MEMORY[0x277CE14C0]);
  return sub_21CB84C84();
}

uint64_t sub_21C8FB35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v49 = v8;
  v50 = v10;
  sub_21C71F3FC();
  v11 = sub_21CB84054();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_21C6EDBAC(a1 + 8, &v49, &unk_27CDFA2C0, &unk_21CBA68A0);
  if (!v51)
  {
    sub_21C6EA794(&v49, &unk_27CDFA2C0, &unk_21CBA68A0);
LABEL_8:
    v32 = 0;
    v34 = 0;
    v41 = 0;
    v38 = 0;
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_0(&v49, v51);
  v18 = sub_21C995408();
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_0(&v49);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    goto LABEL_8;
  }

  v49 = v18;
  v50 = v20;
  v22 = sub_21CB84054();
  v24 = v23;
  v26 = v25;
  v27 = sub_21CB83FD4();
  v47 = v11;
  v29 = v28;
  v46 = v15;
  v31 = v30;
  v45 = v13;
  sub_21C74A72C(v22, v24, v26 & 1);

  sub_21CB84B34();
  v32 = sub_21CB83FB4();
  v34 = v33;
  v48 = v17;
  v36 = v35;
  v38 = v37;

  v39 = v31 & 1;
  LOBYTE(v15) = v46;
  v40 = v29;
  v11 = v47;
  sub_21C74A72C(v27, v40, v39);
  v13 = v45;

  v41 = v36 & 1;
  v17 = v48;
  sub_21C79B058(v32, v34, v41);

LABEL_9:
  v42 = v15 & 1;
  sub_21C79B058(v11, v13, v42);

  sub_21C8FECB4(v32, v34, v41, v38);
  sub_21C85CDBC(v32, v34, v41, v38);
  LOBYTE(v49) = v42;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v42;
  *(a2 + 24) = v17;
  *(a2 + 32) = v32;
  *(a2 + 40) = v34;
  *(a2 + 48) = v41;
  *(a2 + 56) = v38;
  sub_21C85CDBC(v32, v34, v41, v38);
  sub_21C74A72C(v11, v13, v42);
}

uint64_t sub_21C8FB69C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C8FB6DC(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  sub_21CB85184();
  v13 = v6;
  v14 = v8;
  v15 = a1;
  v11 = v6;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B68, &qword_21CBAFA90);
  sub_21C8FE7C8();
  sub_21CB85194();
}

uint64_t sub_21C8FB88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C30, &qword_21CBAFAF8);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x28223BE20](v5);
  v45 = &v44 - v7;
  *&v64[0] = a1;
  *(&v64[0] + 1) = a2;
  sub_21C71F3FC();

  v8 = sub_21CB84054();
  v10 = v9;
  v12 = v11;
  sub_21CB84AD4();
  v13 = sub_21CB83FB4();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_21C74A72C(v8, v10, v12 & 1);

  LOBYTE(v8) = sub_21CB83CD4();
  sub_21CB81F24();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v10) = v17 & 1;
  LOBYTE(v64[0]) = v17 & 1;
  LOBYTE(v56) = 0;
  v28 = sub_21CB83D44();
  sub_21CB81F24();
  v63 = 0;
  *&v56 = v13;
  *(&v56 + 1) = v15;
  LOBYTE(v57) = v10;
  *(&v57 + 1) = v19;
  LOBYTE(v58) = v8;
  *(&v58 + 1) = v21;
  *&v59 = v23;
  *(&v59 + 1) = v25;
  *&v60 = v27;
  BYTE8(v60) = 0;
  LOBYTE(v61) = v28;
  *(&v61 + 1) = v29;
  *&v62[0] = v30;
  *(&v62[0] + 1) = v31;
  *&v62[1] = v32;
  BYTE8(v62[1]) = 0;
  sub_21CB83E04();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C40, &qword_21CBAFB08);
  v34 = sub_21C8FEF28();
  v35 = v45;
  sub_21CB840D4();
  v64[4] = v60;
  v64[5] = v61;
  v65[0] = v62[0];
  *(v65 + 9) = *(v62 + 9);
  v64[0] = v56;
  v64[1] = v57;
  v64[2] = v58;
  v64[3] = v59;
  sub_21C6EA794(v64, &qword_27CDF0C40, &qword_21CBAFB08);
  sub_21CB85184();
  v55 = v46;
  v53 = vdupq_n_s64(0x406E400000000000uLL);
  v54 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C38, &qword_21CBAFB00);
  *&v56 = v33;
  *(&v56 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  sub_21C8FEFB4();
  v36 = v49;
  v37 = v47;
  sub_21CB84964();
  (*(v48 + 8))(v35, v37);
  v38 = sub_21CB85214();
  v40 = v39;
  v41 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C20, &qword_21CBAFAF0) + 36);
  *&v56 = sub_21CB84A34();
  sub_21CB85184();
  v52 = &v56;
  v50 = 0x4028000000000000;
  v51 = &v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C68, &qword_21CBAFB18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C70, &qword_21CBAFB20);
  sub_21C8FF0A4();
  sub_21C8FF18C();
  sub_21CB85194();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C60, &qword_21CBAFB10);
  v43 = (v41 + *(result + 36));
  *v43 = v38;
  v43[1] = v40;
  return result;
}

__n128 sub_21C8FBCE4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21CB85214();
  sub_21CB82AC4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C30, &qword_21CBAFAF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C38, &qword_21CBAFB00) + 36));
  v5[4] = v11;
  v5[5] = v12;
  v5[6] = v13;
  *v5 = v7;
  v5[1] = v8;
  result = v10;
  v5[2] = v9;
  v5[3] = v10;
  return result;
}

__n128 sub_21C8FBDD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_21CB85214();
  if (a3 > a4)
  {
    sub_21CB85B04();
    v8 = sub_21CB83C94();
    sub_21CB81C14();
  }

  sub_21CB82AC4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C30, &qword_21CBAFAF8);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C38, &qword_21CBAFB00) + 36));
  v10[4] = v16;
  v10[5] = v17;
  v10[6] = v18;
  *v10 = v12;
  v10[1] = v13;
  result = v15;
  v10[2] = v14;
  v10[3] = v15;
  return result;
}

uint64_t sub_21C8FBF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B68, &qword_21CBAFA90);
  sub_21C8FE7C8();
  return sub_21CB85194();
}

uint64_t sub_21C8FC00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BA8, &qword_21CBAFAB0);
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B78, &qword_21CBAFA98);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  *&v43 = a1;
  *(&v43 + 1) = a2;
  sub_21C71F3FC();

  v12 = sub_21CB84054();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_21CB83CD4();
  sub_21CB81F24();
  LOBYTE(v41) = v16 & 1;
  v42 = 0;
  *&v43 = v12;
  *(&v43 + 1) = v14;
  LOBYTE(v44) = v16 & 1;
  *(&v44 + 1) = v18;
  LOBYTE(v45) = v19;
  *(&v45 + 1) = v20;
  *&v46[0] = v21;
  *(&v46[0] + 1) = v22;
  *&v46[1] = v23;
  BYTE8(v46[1]) = 0;
  sub_21CB83E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B80, &qword_21CBAFAA0);
  sub_21C74AA20();
  sub_21CB840D4();
  v47[2] = v45;
  v48[0] = v46[0];
  *(v48 + 9) = *(v46 + 9);
  v47[0] = v43;
  v47[1] = v44;
  sub_21C6EA794(v47, &qword_27CDF0B80, &qword_21CBAFAA0);
  sub_21CB85214();
  sub_21CB82AC4();
  (*(v5 + 32))(v11, v7, v36);
  v24 = &v11[*(v9 + 44)];
  v25 = v46[2];
  *(v24 + 4) = v46[1];
  *(v24 + 5) = v25;
  *(v24 + 6) = v46[3];
  v26 = v44;
  *v24 = v43;
  *(v24 + 1) = v26;
  v27 = v46[0];
  *(v24 + 2) = v45;
  *(v24 + 3) = v27;
  v28 = sub_21CB85214();
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B68, &qword_21CBAFA90);
  v32 = v37;
  v33 = v37 + *(v31 + 36);
  v41 = 2;
  sub_21CB85184();
  v40 = &v41;
  v38 = 0x4028000000000000;
  v39 = &v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BB0, &qword_21CBAFAB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BB8, &qword_21CBAFAC0);
  sub_21C8FE9B4();
  sub_21C8FEA9C();
  sub_21CB85194();
  v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B98, &qword_21CBAFAA8) + 36));
  *v34 = v28;
  v34[1] = v30;
  return sub_21C716934(v11, v32, &qword_27CDF0B78, &qword_21CBAFA98);
}

uint64_t sub_21C8FC3CC@<X0>(uint64_t a3@<X8>)
{
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB84A34();
  v9 = sub_21CB83FB4();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_21C74A72C(v4, v6, v8 & 1);

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  return result;
}

void sub_21C8FC4F8(uint64_t a1)
{
  sub_21C7226D8();
  if (v1 <= 0x3F)
  {
    sub_21C735A14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C8FC5A4(uint64_t a1)
{
  sub_21C7226D8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LABiometryType(319);
    if (v2 <= 0x3F)
    {
      sub_21C735A14(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI022PMSafariAutoFillStronga13ViewAutomaticgA8Provider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21C8FC67C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C8FC6C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PMSafariAutoFillStrongPasswordViewConfiguration.Button(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_19;
  }

  v2 = a2 + 11;
  if (a2 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 11;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 11;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 9)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 9;
}

uint64_t storeEnumTagSinglePayload for PMSafariAutoFillStrongPasswordViewConfiguration.Button(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 11;
  if (a3 + 11 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF5)
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21C8FC898(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21C8FC8B4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_21C8FC8EC()
{
  result = qword_27CDF08D0;
  if (!qword_27CDF08D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0768, &qword_21CBAF370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0718, &qword_21CBAF348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0710, &qword_21CBAF340);
    sub_21C8F4DDC();
    sub_21C6EADEC(&qword_27CDF0760, &qword_27CDF0710, &qword_21CBAF340, MEMORY[0x277D83660]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF08D0);
  }

  return result;
}

unint64_t sub_21C8FCA18()
{
  result = qword_27CDF08D8;
  if (!qword_27CDF08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF08D8);
  }

  return result;
}

unint64_t sub_21C8FCA70()
{
  result = qword_27CDF08E0;
  if (!qword_27CDF08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF08E0);
  }

  return result;
}

unint64_t sub_21C8FCB20()
{
  result = qword_27CDF0900;
  if (!qword_27CDF0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0900);
  }

  return result;
}

unint64_t sub_21C8FCB74()
{
  result = qword_27CDF0908;
  if (!qword_27CDF0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0908);
  }

  return result;
}

unint64_t sub_21C8FCBD8()
{
  result = qword_27CDF0920;
  if (!qword_27CDF0920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0910, &qword_21CBAF790);
    sub_21C8FCC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0920);
  }

  return result;
}

unint64_t sub_21C8FCC64()
{
  result = qword_27CDF0928;
  if (!qword_27CDF0928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0930, &qword_21CBAF7A0);
    sub_21C8FCD1C();
    sub_21C6EADEC(&qword_27CDF0960, &qword_27CDF0968, &qword_21CBAF7C0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0928);
  }

  return result;
}

unint64_t sub_21C8FCD1C()
{
  result = qword_27CDF0938;
  if (!qword_27CDF0938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0940, &qword_21CBAF7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB28, &qword_21CBAF7B0);
    sub_21CB829C4();
    sub_21C6EADEC(&qword_27CDECB20, &qword_27CDECB28, &qword_21CBAF7B0, MEMORY[0x277CDF028]);
    sub_21C8FEB84(&qword_27CDF0948, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF0950, &qword_27CDF0958, &qword_21CBAF7B8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0938);
  }

  return result;
}

unint64_t sub_21C8FCE94()
{
  result = qword_27CDF0970;
  if (!qword_27CDF0970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0918, &qword_21CBAF798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0978, &qword_21CBAF7C8);
    sub_21C8FCF5C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0970);
  }

  return result;
}

unint64_t sub_21C8FCF5C()
{
  result = qword_27CDF0980;
  if (!qword_27CDF0980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0978, &qword_21CBAF7C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0988, &qword_21CBAF7D0);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF0990, &qword_27CDF0988, &qword_21CBAF7D0, MEMORY[0x277CDF028]);
    sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF0950, &qword_27CDF0958, &qword_21CBAF7B8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0980);
  }

  return result;
}

unint64_t sub_21C8FD0E0()
{
  result = qword_27CDF09A0;
  if (!qword_27CDF09A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0998, &qword_21CBAF7D8);
    sub_21C8FD198();
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF09A0);
  }

  return result;
}

unint64_t sub_21C8FD198()
{
  result = qword_27CDF45F0;
  if (!qword_27CDF45F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF09A8, &unk_21CBAF7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF45F0);
  }

  return result;
}

uint64_t sub_21C8FD21C(uint64_t a1)
{
  v2 = sub_21CB82AF4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21CB82D34();
}

uint64_t objectdestroy_45Tm_0()
{
  v1 = (type metadata accessor for PMSafariAutoFillStrongPasswordCloseButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB82054();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C8FD468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C8FD504()
{
  result = qword_27CDF09E0;
  if (!qword_27CDF09E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF4570, &unk_21CBBADB0);
    sub_21C74DDEC();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF09E0);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{
  v1 = (type metadata accessor for PMSafariAutoFillStrongPasswordDockButtons(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB82054();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C8FD778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *MEMORY[0x277CE0118];
  v5 = sub_21CB831A4();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C68, &qword_21CBAFB18) + 36)) = v3;
}

uint64_t sub_21C8FD81C@<X0>(uint64_t *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = *(sub_21CB82A84() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_21CB831A4();
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  *a2 = a3;
  a2[1] = a3;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0C70, &qword_21CBAFB20) + 36)) = v5;
}

uint64_t sub_21C8FD8DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *MEMORY[0x277CE0118];
  v5 = sub_21CB831A4();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BB0, &qword_21CBAFAB8);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_21C8FD96C@<X0>(uint64_t *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = *(sub_21CB82A84() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_21CB831A4();
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  *a2 = a3;
  a2[1] = a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0BB8, &qword_21CBAFAC0);
  *(a2 + *(result + 36)) = v5;
  return result;
}

BOOL sub_21C8FDA18(int a1, int a2)
{
  if (a1 <= 6u)
  {
    if (a1 > 3u)
    {
      switch(a1)
      {
        case 4u:
          return a2 == 4;
        case 5u:
          return a2 == 5;
        case 6u:
          return a2 == 6;
      }

      goto LABEL_34;
    }

    if (a1 == 2)
    {
      return a2 == 2;
    }

    if (a1 != 3)
    {
      goto LABEL_34;
    }

    return a2 == 3;
  }

  if (a1 <= 8u)
  {
    if (a1 == 7)
    {
      return a2 == 7;
    }

    if (a1 == 8)
    {
      return a2 == 8;
    }

    goto LABEL_34;
  }

  switch(a1)
  {
    case 9u:
      return a2 == 9;
    case 0xAu:
      return a2 == 10;
    case 0xBu:
      return a2 == 11;
  }

LABEL_34:
  if ((a2 - 2) < 0xAu)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

uint64_t sub_21C8FDB54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C8FDB9C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_21C8FDC00()
{
  result = qword_27CDF0A00;
  if (!qword_27CDF0A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A08, &qword_21CBAF968);
    sub_21C8FCBD8();
    sub_21C8FCE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0A00);
  }

  return result;
}

unint64_t sub_21C8FDC98()
{
  result = qword_27CDF0A10;
  if (!qword_27CDF0A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF09C8, &qword_21CBAF870);
    sub_21C8FDD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0A10);
  }

  return result;
}

unint64_t sub_21C8FDD24()
{
  result = qword_27CDF0A18;
  if (!qword_27CDF0A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF09B8, &qword_21CBAF860);
    sub_21C6EADEC(&qword_27CDF0A20, &qword_27CDF09B0, &qword_21CBAF858, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0A18);
  }

  return result;
}

unint64_t sub_21C8FDDF8()
{
  result = qword_27CDF0AD8;
  if (!qword_27CDF0AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A88, &qword_21CBAFA20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
    sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C8FEB84(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0AD8);
  }

  return result;
}

unint64_t sub_21C8FDFB0()
{
  result = qword_27CDF0AF8;
  if (!qword_27CDF0AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AC0, &qword_21CBAFA58);
    sub_21C8FE068(&qword_27CDF0B00, &qword_27CDF0AB8, &qword_21CBAFA50, sub_21C8FE0E4);
    sub_21C8FE230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0AF8);
  }

  return result;
}

uint64_t sub_21C8FE068(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21C8FE0E4()
{
  result = qword_27CDF0B08;
  if (!qword_27CDF0B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AB0, &qword_21CBAFA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, MEMORY[0x277CDF028]);
    sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_21C8FDDF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B08);
  }

  return result;
}

unint64_t sub_21C8FE230()
{
  result = qword_27CDF0B20;
  if (!qword_27CDF0B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A78, &qword_21CBAFA10);
    sub_21C8FE2BC();
    sub_21C8FE4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B20);
  }

  return result;
}

unint64_t sub_21C8FE2BC()
{
  result = qword_27CDF0B28;
  if (!qword_27CDF0B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A70, &qword_21CBAFA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
    sub_21CB82A54();
    v1 = MEMORY[0x277CDF028];
    sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
    sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B10, &qword_21CBAFA78);
    sub_21C6EADEC(&qword_27CDF0B18, &qword_27CDF0B10, &qword_21CBAFA78, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B28);
  }

  return result;
}

unint64_t sub_21C8FE4AC()
{
  result = qword_27CDF0B30;
  if (!qword_27CDF0B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A58, &qword_21CBAF9F0);
    sub_21C8FDDF8();
    sub_21C6EADEC(&qword_27CDF0B38, &qword_27CDF0A48, &qword_21CBAF9E0, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B30);
  }

  return result;
}

unint64_t sub_21C8FE564()
{
  result = qword_27CDF0B40;
  if (!qword_27CDF0B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0A40, &qword_21CBAF9D8);
    sub_21C8FE068(&qword_27CDF0AD0, &qword_27CDF0A38, &qword_21CBAF9D0, sub_21C8FDDF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE0, &qword_21CBAFA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0AE8, &qword_21CBAFA70);
    sub_21CB82A54();
    sub_21C6EADEC(&qword_27CDF0AF0, &qword_27CDF0AE8, &qword_21CBAFA70, MEMORY[0x277CDF028]);
    sub_21C8FEB84(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B40);
  }

  return result;
}

unint64_t sub_21C8FE730()
{
  result = qword_27CDF0B58;
  if (!qword_27CDF0B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B48, &qword_21CBAFA80);
    sub_21C8FE7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B58);
  }

  return result;
}

unint64_t sub_21C8FE7C8()
{
  result = qword_27CDF0B60;
  if (!qword_27CDF0B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B68, &qword_21CBAFA90);
    sub_21C8FE880();
    sub_21C6EADEC(&qword_27CDF0B90, &qword_27CDF0B98, &qword_21CBAFAA8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B60);
  }

  return result;
}

unint64_t sub_21C8FE880()
{
  result = qword_27CDF0B70;
  if (!qword_27CDF0B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B78, &qword_21CBAFA98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B80, &qword_21CBAFAA0);
    sub_21C74AA20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B70);
  }

  return result;
}

unint64_t sub_21C8FE9B4()
{
  result = qword_27CDF0BC0;
  if (!qword_27CDF0BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0BB0, &qword_21CBAFAB8);
    sub_21C8FEB84(&qword_27CDF0BC8, MEMORY[0x277CE1260], MEMORY[0x277CE1250]);
    sub_21C6EADEC(&qword_27CDF0BD0, &qword_27CDF0BD8, &qword_21CBAFAC8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0BC0);
  }

  return result;
}

unint64_t sub_21C8FEA9C()
{
  result = qword_27CDF0BE0;
  if (!qword_27CDF0BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0BB8, &qword_21CBAFAC0);
    sub_21C8FEB84(&qword_27CDF0BE8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_21C6EADEC(&qword_27CDF0BD0, &qword_27CDF0BD8, &qword_21CBAFAC8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0BE0);
  }

  return result;
}

uint64_t sub_21C8FEB84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C8FECB4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21C79B058(result, a2, a3 & 1);
  }

  return result;
}

uint64_t objectdestroy_80Tm(uint64_t a1)
{
  if (*(v1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_21C8FEDB4()
{
  result = qword_27CDF0C28;
  if (!qword_27CDF0C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C20, &qword_21CBAFAF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C30, &qword_21CBAFAF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C38, &qword_21CBAFB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C40, &qword_21CBAFB08);
    sub_21C8FEF28();
    swift_getOpaqueTypeConformance2();
    sub_21C8FEFB4();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF0C58, &qword_27CDF0C60, &qword_21CBAFB10, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C28);
  }

  return result;
}

unint64_t sub_21C8FEF28()
{
  result = qword_27CDF0C48;
  if (!qword_27CDF0C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C40, &qword_21CBAFB08);
    sub_21C74AA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C48);
  }

  return result;
}

unint64_t sub_21C8FEFB4()
{
  result = qword_27CDF0C50;
  if (!qword_27CDF0C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C38, &qword_21CBAFB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C40, &qword_21CBAFB08);
    sub_21C8FEF28();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C50);
  }

  return result;
}

unint64_t sub_21C8FF0A4()
{
  result = qword_27CDF0C78;
  if (!qword_27CDF0C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C68, &qword_21CBAFB18);
    sub_21C8FEB84(&qword_27CDF0BC8, MEMORY[0x277CE1260], MEMORY[0x277CE1250]);
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C78);
  }

  return result;
}

unint64_t sub_21C8FF18C()
{
  result = qword_27CDF0C80;
  if (!qword_27CDF0C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C70, &qword_21CBAFB20);
    sub_21C8FEB84(&qword_27CDF0BE8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C80);
  }

  return result;
}

unint64_t sub_21C8FF274()
{
  result = qword_27CDF0C88;
  if (!qword_27CDF0C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0C90, &qword_21CBAFB28);
    sub_21C8FDFB0();
    sub_21C8FE564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0C88);
  }

  return result;
}

uint64_t sub_21C8FF314(uint64_t *a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_21CB86484();
  v8 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21C909928(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
  sub_21CB85494();
  v9 = *(a1 + *(v4 + 20));
  sub_21CB864A4();
  if (v9)
  {
    v10 = v9;
    sub_21CB85DE4();
  }

  v11 = sub_21CB864D4();
  v12 = -1 << *(a2 + 32);
  v13 = v11 & ~v12;
  v61 = a2 + 56;
  if (((*(a2 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v56 = v9;
  v58 = v8;
  v57 = v4;
  v14 = ~v12;
  v15 = *a1;
  v16 = a1[1];
  if (*a1)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 == 0xC000000000000000;
  }

  v18 = !v17;
  v67 = v18;
  v68 = *(v5 + 72);
  v19 = v16 >> 62;
  v65 = v15;
  v20 = HIDWORD(v15) - v15;
  v21 = __OFSUB__(HIDWORD(v15), v15);
  v64 = v21;
  v62 = v16;
  v63 = v20;
  v66 = BYTE6(v16);
  v59 = a2;
  v22 = v61;
  v60 = v14;
  while (1)
  {
    sub_21C909970(*(a2 + 48) + v68 * v13, v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v23 = *v7;
    v24 = v7[1];
    v25 = v24 >> 62;
    if (v24 >> 62 == 3)
    {
      if (v23)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24 == 0xC000000000000000;
      }

      v28 = !v26 || v19 < 3;
      if (((v28 | v67) & 1) == 0)
      {
        goto LABEL_64;
      }

LABEL_37:
      v29 = 0;
      if (v19 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_37;
      }

      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      v32 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v32)
      {
        goto LABEL_124;
      }

      if (v19 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v25)
    {
      LODWORD(v29) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_125;
      }

      v29 = v29;
      if (v19 <= 1)
      {
LABEL_34:
        v33 = v66;
        if (v19)
        {
          v33 = v63;
          if (v64)
          {
            goto LABEL_123;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v29 = BYTE6(v24);
      if (v19 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v19 != 2)
    {
      if (v29)
      {
        goto LABEL_113;
      }

      goto LABEL_64;
    }

    v35 = *(v65 + 16);
    v34 = *(v65 + 24);
    v32 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (v32)
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
    }

LABEL_40:
    if (v29 != v33)
    {
      goto LABEL_113;
    }

    if (v29 >= 1)
    {
      if (v25 > 1)
      {
        if (v25 != 2)
        {
          *&v70[6] = 0;
          *v70 = 0;
LABEL_63:
          sub_21CA8FA10(v70, v65, v62, &v69);
          if ((v69 & 1) == 0)
          {
            goto LABEL_113;
          }

          goto LABEL_64;
        }

        v37 = *(v23 + 16);
        v36 = *(v23 + 24);
        v38 = sub_21CB808C4();
        if (v38)
        {
          v39 = sub_21CB808F4();
          if (__OFSUB__(v37, v39))
          {
            goto LABEL_128;
          }

          v38 += v37 - v39;
        }

        if (__OFSUB__(v36, v37))
        {
          goto LABEL_127;
        }
      }

      else
      {
        if (!v25)
        {
          *v70 = *v7;
          *&v70[8] = v24;
          v70[10] = BYTE2(v24);
          v70[11] = BYTE3(v24);
          v70[12] = BYTE4(v24);
          v70[13] = BYTE5(v24);
          goto LABEL_63;
        }

        v40 = v23;
        if (v23 >> 32 < v23)
        {
          goto LABEL_126;
        }

        v38 = sub_21CB808C4();
        if (v38)
        {
          v41 = sub_21CB808F4();
          if (__OFSUB__(v40, v41))
          {
            goto LABEL_129;
          }

          v38 += v40 - v41;
        }
      }

      sub_21CB808E4();
      sub_21CA8FA10(v38, v65, v62, v70);
      a2 = v59;
      v14 = v60;
      v22 = v61;
      if ((v70[0] & 1) == 0)
      {
        goto LABEL_113;
      }
    }

LABEL_64:
    if ((v7[2] != a1[2] || v7[3] != a1[3]) && (sub_21CB86344() & 1) == 0 || (v7[4] != a1[4] || v7[5] != a1[5]) && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_113;
    }

    v42 = v7[6];
    v43 = a1[6];
    if (*(a1 + 56) == 1)
    {
      if (v43 <= 1)
      {
        if (v43)
        {
          if (v42 != 1)
          {
            goto LABEL_113;
          }
        }

        else if (v42)
        {
          goto LABEL_113;
        }
      }

      else if (v43 == 2)
      {
        if (v42 != 2)
        {
          goto LABEL_113;
        }
      }

      else if (v43 == 3)
      {
        if (v42 != 3)
        {
          goto LABEL_113;
        }
      }

      else if (v42 != 4)
      {
        goto LABEL_113;
      }
    }

    else if (v42 != v43)
    {
      goto LABEL_113;
    }

    v44 = v7[8];
    v45 = a1[8];
    if (*(a1 + 72) == 1)
    {
      if (v45)
      {
        if (v45 == 1)
        {
          if (v44 != 1)
          {
            goto LABEL_113;
          }
        }

        else if (v44 != 2)
        {
          goto LABEL_113;
        }
      }

      else if (v44)
      {
        goto LABEL_113;
      }
    }

    else if (v44 != v45)
    {
      goto LABEL_113;
    }

    v46 = v7[10];
    v47 = a1[10];
    if (*(a1 + 88) != 1)
    {
      if (v46 != v47)
      {
        goto LABEL_113;
      }

      goto LABEL_106;
    }

    if (!v47)
    {
      if (!v46)
      {
        goto LABEL_106;
      }

      goto LABEL_113;
    }

    if (v47 == 1)
    {
      break;
    }

    if (v46 == 2)
    {
      goto LABEL_106;
    }

LABEL_113:
    sub_21C719360(v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
LABEL_114:
    v13 = (v13 + 1) & v14;
    if (((*(v22 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (v46 != 1)
  {
    goto LABEL_113;
  }

LABEL_106:
  if (v7[12] != a1[12])
  {
    goto LABEL_113;
  }

  sub_21CB811C4();
  sub_21C909928(&unk_27CDF8A70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if ((sub_21CB85574() & 1) == 0)
  {
    v14 = v60;
    goto LABEL_113;
  }

  v48 = *(v7 + *(v57 + 20));
  if (v48)
  {
    v49 = v56;
    if (v56)
    {
      sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
      v50 = v49;
      v51 = v48;
      v52 = sub_21CB85DD4();
      sub_21C719360(v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);

      v14 = v60;
      v22 = v61;
      if (v52)
      {
        return 1;
      }

      goto LABEL_114;
    }

    sub_21C719360(v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    goto LABEL_119;
  }

  v53 = v56;
  v54 = v56;
  sub_21C719360(v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  if (v53)
  {

LABEL_119:
    v14 = v60;
    goto LABEL_114;
  }

  return 1;
}

uint64_t sub_21C8FFAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21CB86484();
  sub_21CB854C4();
  v6 = sub_21CB864D4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21C8FFBD8(void *a1, uint64_t a2)
{
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  MEMORY[0x28223BE20](v114);
  v113 = v95 - v4;
  v5 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v112 = (v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v111 = (v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v9);
  v117 = (v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (v95 - v12);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  MEMORY[0x28223BE20](v119);
  v15 = v95 - v14;
  v16 = type metadata accessor for PMAccount(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v20 - 8);
  v104 = (v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v124 = v95 - v23;
  v24 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v24);
  v107 = (v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v106 = (v95 - v27);
  MEMORY[0x28223BE20](v28);
  v30 = (v95 - v29);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v116 = v17;
  v125 = a2;
  sub_21CB86484();
  v31 = a1;
  v32 = *a1;
  v122 = v31[1];
  sub_21CB854C4();
  v118 = *(v16 + 20);
  sub_21C7CECE4(&v126);
  v123 = v16;
  v110 = *(v16 + 24);
  sub_21C909970(v31 + v110, v30, type metadata accessor for PMAccount.Storage);
  v109 = v24;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v30;
    v34 = v124;
    sub_21C9099F4(v33, v124, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)(&v126);
    sub_21C719360(v34, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v35 = *v30;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  v36 = v123[7];
  v120 = v31;
  v37 = (v31 + v36);
  v38 = v37[1];
  v99 = v37;
  sub_21CB864A4();
  if (v38)
  {
    sub_21CB854C4();
    sub_21CB864A4();
    sub_21CB85DE4();
  }

  v39 = v122;
  v40 = sub_21CB864D4();
  v41 = -1 << *(v125 + 32);
  v42 = v40 & ~v41;
  v124 = v125 + 56;
  if (((*(v125 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
  {
    return 0;
  }

  v121 = ~v41;
  v122 = *(v116 + 72);
  v115 = v13;
  v116 = v9;
  v103 = v32;
  while (1)
  {
    sub_21C909970(*(v125 + 48) + v122 * v42, v19, type metadata accessor for PMAccount);
    v45 = *v19 == v32 && v19[1] == v39;
    if (!v45 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_11;
    }

    v46 = *(v119 + 48);
    sub_21C909970(v19 + v123[5], v15, type metadata accessor for PMAccount.UniqueID);
    sub_21C909970(v120 + v118, &v15[v46], type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = v117;
      sub_21C909970(v15, v117, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v48 = v112;
        sub_21C9099F4(&v15[v46], v112, type metadata accessor for PMAccount.SIWAUniqueID);
        v49 = sub_21C7D1550(v47, v48);
        sub_21C719360(v48, type metadata accessor for PMAccount.SIWAUniqueID);
        sub_21C719360(v47, type metadata accessor for PMAccount.SIWAUniqueID);
        if (!v49)
        {
          goto LABEL_20;
        }

        goto LABEL_23;
      }

      v43 = type metadata accessor for PMAccount.SIWAUniqueID;
      v44 = v47;
LABEL_10:
      sub_21C719360(v44, v43);
      sub_21C6EA794(v15, &qword_27CDEB3C8, &unk_21CBB0010);
      goto LABEL_11;
    }

    sub_21C909970(v15, v13, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = type metadata accessor for PMAccount.CombinedUniqueID;
      v44 = v13;
      goto LABEL_10;
    }

    v50 = v111;
    sub_21C9099F4(&v15[v46], v111, type metadata accessor for PMAccount.CombinedUniqueID);
    v51 = sub_21C7D1A58(v13, v50);
    sub_21C719360(v50, type metadata accessor for PMAccount.CombinedUniqueID);
    sub_21C719360(v13, type metadata accessor for PMAccount.CombinedUniqueID);
    if (!v51)
    {
LABEL_20:
      sub_21C719360(v15, type metadata accessor for PMAccount.UniqueID);
LABEL_32:
      v13 = v115;
      goto LABEL_11;
    }

LABEL_23:
    sub_21C719360(v15, type metadata accessor for PMAccount.UniqueID);
    v52 = v123;
    v53 = *(v114 + 48);
    v54 = v113;
    sub_21C909970(v19 + v123[6], v113, type metadata accessor for PMAccount.Storage);
    sub_21C909970(v120 + v110, v54 + v53, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = v107;
      sub_21C909970(v54, v107, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = v104;
        sub_21C9099F4(v54 + v53, v104, type metadata accessor for PMAccount.MockData);
        v57 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v55, v56);
        sub_21C719360(v56, type metadata accessor for PMAccount.MockData);
        sub_21C719360(v55, type metadata accessor for PMAccount.MockData);
        if (!v57)
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      sub_21C719360(v55, type metadata accessor for PMAccount.MockData);
      goto LABEL_31;
    }

    v58 = v106;
    sub_21C909970(v54, v106, type metadata accessor for PMAccount.Storage);
    v59 = *v58;
    if (swift_getEnumCaseMultiPayload() == 1)
    {

LABEL_31:
      sub_21C6EA794(v54, &unk_27CDF7680, &qword_21CBB4E30);
      goto LABEL_32;
    }

    v60 = *(v54 + v53);
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v61 = sub_21CB85DD4();

    if ((v61 & 1) == 0)
    {
LABEL_26:
      sub_21C719360(v54, type metadata accessor for PMAccount.Storage);
      v13 = v115;
      v32 = v103;
      goto LABEL_11;
    }

LABEL_34:
    sub_21C719360(v54, type metadata accessor for PMAccount.Storage);
    v62 = (v19 + v52[7]);
    v63 = *v62;
    v64 = v62[1];
    v66 = v62[2];
    v65 = v62[3];
    v108 = v66;
    v105 = v65;
    v68 = *v99;
    v67 = v99[1];
    v69 = v99[2];
    v70 = v99[3];
    v13 = v115;
    v101 = v70;
    v100 = v67;
    if (!v64)
    {
      break;
    }

    v98 = v69;
    v102 = v63;
    if (!v67)
    {
      v85 = v68;
      v86 = v70;
      v84 = v85;
      sub_21C7D33AC(v63, v64, v108, v105);
      v69 = v98;
      sub_21C7D33AC(v84, 0, v98, v86);
      v87 = v105;
      sub_21C7D33AC(v102, v64, v108, v105);

      v83 = v102;
      goto LABEL_45;
    }

    v97 = v68;
    v45 = v63 == v68;
    v32 = v103;
    if (!v45 || v64 != v67) && (v71 = v67, v72 = sub_21CB86344(), v67 = v71, (v72 & 1) == 0) || ((v108 ^ v98))
    {
      v73 = v105;
      v74 = v67;
      sub_21C7D33AC(v102, v64, v108, v105);
      v75 = v74;
      v76 = v101;
      sub_21C7D33AC(v97, v75, v98, v101);
      sub_21C7D33AC(v102, v64, v108, v73);
      sub_21C7D33F0(v97, v100, v98, v76);

      v77 = v102;
      v78 = v64;
      v79 = v108;
      v80 = v73;
LABEL_46:
      sub_21C7D33F0(v77, v78, v79, v80);
      goto LABEL_11;
    }

    v96 = v64;
    v95[1] = sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v88 = v64;
    v89 = v108;
    v90 = v105;
    sub_21C7D33AC(v102, v88, v108, v105);
    v91 = v101;
    sub_21C7D33AC(v97, v100, v98, v101);
    sub_21C7D33AC(v102, v96, v89, v90);
    v92 = v90;
    LOBYTE(v90) = sub_21CB85DD4();
    sub_21C7D33F0(v97, v100, v98, v91);

    v93 = v96;

    sub_21C7D33F0(v102, v93, v108, v92);
    if (v90)
    {
      goto LABEL_51;
    }

LABEL_11:
    sub_21C719360(v19, type metadata accessor for PMAccount);
    v42 = (v42 + 1) & v121;
    if (((*(v124 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
    {
      return 0;
    }
  }

  v81 = v63;
  v82 = v67;
  sub_21C7D33AC(v63, 0, v108, v105);
  if (v82)
  {
    sub_21C7D33AC(v68, v82, v69, v101);
    v83 = v81;
    v84 = v68;
LABEL_45:
    v32 = v103;
    sub_21C7D33F0(v83, v64, v108, v105);
    v77 = v84;
    v78 = v100;
    v79 = v69;
    v80 = v101;
    goto LABEL_46;
  }

  sub_21C7D33AC(v68, 0, v69, v101);
  sub_21C7D33F0(v81, 0, v108, v105);
LABEL_51:
  sub_21C719360(v19, type metadata accessor for PMAccount);
  return 1;
}

uint64_t sub_21C900A10(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB813C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_21C909928(&qword_27CDF0CC8, MEMORY[0x277CBA690], MEMORY[0x277CBA698]), v7 = sub_21CB85484(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_21C909928(&qword_27CDF0CD0, MEMORY[0x277CBA690], MEMORY[0x277CBA6A0]);
      v15 = sub_21CB85574();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_21C900C28()
{
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();
}

uint64_t sub_21C900CCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 2;
  }

  v2 = a1;
  if (v1 == 1)
  {
    v3 = sub_21C713194(a1);
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
      sub_21CB810D4();

      swift_beginAccess();
      v7 = *(v32 + 64);
      if (*(v7 + 16))
      {

        v8 = sub_21CB10A3C(v6, v5);
        v10 = v9;

        if (v10)
        {
          v11 = *(*(v7 + 56) + 32 * v8 + 16);

          return v11;
        }
      }

      return 2;
    }
  }

  v13 = v2 + 56;
  v14 = 1 << *(v2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v2 + 56);

  result = swift_beginAccess();
  v30 = 0;
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  v31 = v2;
  while (v16)
  {
LABEL_16:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = (*(v2 + 48) + ((v17 << 10) | (16 * v20)));
    v23 = *v21;
    v22 = v21[1];
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);

    sub_21CB810D4();

    v24 = *(v32 + 64);
    if (*(v24 + 16) && (, v25 = sub_21CB10A3C(v23, v22), v27 = v26, , (v27 & 1) != 0))
    {
      v28 = *(*(v24 + 56) + 32 * v25 + 16);

      v2 = v31;
      if ((v28 & 1) != 0 && __OFADD__(v30++, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {

      v2 = v31;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return v30 == *(v2 + 16);
    }

    v16 = *(v13 + 8 * v19);
    ++v17;
    if (v16)
    {
      v17 = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21C900FEC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_21CB85114();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_21CB858B4();
  v2[13] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x2822009F8](sub_21C9010E0, v5, v4);
}

uint64_t sub_21C9010E0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1 + 56;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 56);
  v0[16] = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
  v35 = v1;

  v34 = v2;
  swift_beginAccess();
  v7 = 0;
  v8 = (63 - v4) >> 6;
  v9 = MEMORY[0x277D84F90];
  v33 = v0;
LABEL_5:
  v32 = v9;
  v0[17] = v9;
  v10 = v7;
  while (v6)
  {
    v7 = v10;
LABEL_12:
    v11 = v0[9];
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (*(v35 + 48) + ((v7 << 10) | (16 * v12)));
    v14 = v13[1];
    v36 = *v13;
    v0[5] = v11;
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);

    sub_21CB810D4();

    v15 = *(v34 + 64);
    if (*(v15 + 16))
    {

      v16 = sub_21CB10A3C(v36, v14);
      v18 = v17;

      if (v18)
      {
        v19 = *(v15 + 56) + 32 * v16;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);

        v24 = v23;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_21CA4F1E0(0, *(v32 + 2) + 1, 1, v32);
        }

        v26 = *(v32 + 2);
        v25 = *(v32 + 3);
        if (v26 >= v25 >> 1)
        {
          v32 = sub_21CA4F1E0((v25 > 1), v26 + 1, 1, v32);
        }

        *(v32 + 2) = v26 + 1;
        v27 = &v32[32 * v26];
        *(v27 + 4) = v21;
        *(v27 + 5) = v20;
        v27[48] = v22;
        *(v27 + 7) = v24;
        v9 = v32;
        v0 = v33;
        goto LABEL_5;
      }
    }

    v10 = v7;
    v0 = v33;
  }

  while (1)
  {
    v7 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v7 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v7);
    ++v10;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  v28 = v0[9];

  v3 = *(v28 + 120);
  v29 = qword_27CDEA4C0;

  if (v29 == -1)
  {
    goto LABEL_20;
  }

LABEL_24:
  swift_once();
LABEL_20:
  sub_21CB86544();
  v0[18] = sub_21C7072A8(v3, v0[6]);

  v30 = swift_task_alloc();
  v0[19] = v30;
  *v30 = v0;
  v30[1] = sub_21C90146C;

  return sub_21C833508(v32);
}

uint64_t sub_21C90146C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21C9015CC, v3, v2);
}

uint64_t sub_21C9015CC()
{
  v1 = v0[9];

  swift_getKeyPath(byte_21CBAFD48);
  v0[7] = v1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  if ((*(v1 + 72) & 1) == 0)
  {
    sub_21C901AD4(MEMORY[0x277D84FA0]);
  }

  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  sub_21C905C8C(0, 0);
  (*(v3 + 104))(v2, *MEMORY[0x277CDF0D8], v4);
  sub_21C90231C(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21C901704(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85114();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v39 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
  v40 = a1;

  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    if (!v9)
    {
      break;
    }

LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (*(v40 + 48) + ((v10 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    v41 = v2;
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);

    sub_21CB810D4();

    v17 = *(v2 + 64);
    if (*(v17 + 16) && (, v18 = sub_21CB10A3C(v16, v15), v20 = v19, , (v20 & 1) != 0))
    {
      v21 = *(v17 + 56) + 32 * v18;
      v22 = *(v21 + 8);
      v34 = *v21;
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);

      v25 = v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_21CA4F1E0(0, *(v38 + 2) + 1, 1, v38);
      }

      v27 = *(v38 + 2);
      v26 = *(v38 + 3);
      if (v27 >= v26 >> 1)
      {
        v38 = sub_21CA4F1E0((v26 > 1), v27 + 1, 1, v38);
      }

      v28 = v38;
      *(v38 + 2) = v27 + 1;
      v29 = &v28[32 * v27];
      *(v29 + 4) = v34;
      *(v29 + 5) = v22;
      v29[48] = v23;
      *(v29 + 7) = v25;
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v6 = *(v2 + 120);
  v30 = qword_27CDEA4C0;

  if (v30 == -1)
  {
    goto LABEL_17;
  }

LABEL_19:
  swift_once();
LABEL_17:
  sub_21CB86544();
  sub_21C7072A8(v6, v41);

  sub_21C83532C(v38);

  sub_21C905C8C(0, 0);
  v31 = v35;
  (*(v36 + 104))(v35, *MEMORY[0x277CDF0D8], v37);
  return sub_21C90231C(v31);
}

uint64_t sub_21C901AD4(uint64_t a1)
{

  v4 = sub_21C7A2154(v3, a1);

  if (v4)
  {
    v5 = *(v1 + 96);
    *(v1 + 96) = a1;
    sub_21C906A74(v5);
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }
}

uint64_t sub_21C901C34@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_21CBAFC90);
  v6 = v1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  v4 = sub_21CB85114();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21C901D2C()
{
  swift_getKeyPath(byte_21CBAFF98);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  return *(v0 + 73);
}

uint64_t sub_21C901DCC()
{
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();
}

uint64_t sub_21C901E70()
{
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21C901F20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  *a2 = *(v3 + 96);
}

uint64_t sub_21C901FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_21C9020A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C9020E4(v1, v2);
}

uint64_t sub_21C9020E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_21CB86344() & 1) != 0)
  {

    return sub_21C9051D0(a1, a2);
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }
}

uint64_t sub_21C902240()
{
  v1 = *(v0 + 120);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C7072A8(v1, v7);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 152))(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21C90231C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85114();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_21C909928(&qword_27CDEE658, MEMORY[0x277CDF0E0], MEMORY[0x277CDF0E8]);
  v9 = sub_21CB85574();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAFC90);
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }

  return (v10)(a1, v4);
}

uint64_t sub_21C90259C()
{
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C902654(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C9086A4(v3, a1);

  if (v4)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }
}

uint64_t sub_21C90279C()
{
  swift_getKeyPath(byte_21CBAFD48);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  return *(v0 + 72);
}

uint64_t sub_21C90283C()
{
  swift_getKeyPath(byte_21CBAFE70);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();
}

uint64_t sub_21C9028E0()
{
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();
}

void *sub_21C902984()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v58);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v56);
  v59 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PMAccount(0);
  v54 = *(v8 - 8);
  v55 = v8;
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v60 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
  v65 = v1;
  v62 = sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  v63 = v11;
  sub_21CB810D4();

  v12 = *(v1 + 96);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 56);

  result = swift_beginAccess();
  v17 = 0;
  v18 = (v13 + 63) >> 6;
  v61 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v17;
    if (!v15)
    {
      break;
    }

LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = (*(v12 + 48) + ((v17 << 10) | (16 * v20)));
    v23 = *v21;
    v22 = v21[1];
    v64 = v1;

    sub_21CB810D4();

    v24 = *(v1 + 64);
    if (*(v24 + 16) && (, v25 = sub_21CB10A3C(v23, v22), v27 = v26, , (v27 & 1) != 0))
    {
      v28 = *(v24 + 56) + 32 * v25;
      v29 = *(v28 + 24);
      v51 = *(v28 + 8);

      v30 = v29;

      v50 = v30;
      v31 = [v30 savedAccount];
      v32 = v59;
      *v59 = v31;
      swift_storeEnumTagMultiPayload();
      v33 = v55;
      v34 = v60;
      v35 = (v60 + *(v55 + 28));
      *v35 = 0u;
      v35[1] = 0u;
      sub_21C909970(v32, v34 + *(v33 + 24), type metadata accessor for PMAccount.Storage);
      v36 = *(v33 + 20);
      v49 = v31;
      sub_21C7C8A3C(v34 + v36);
      v37 = v57;
      sub_21C909970(v34 + v36, v57, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = v53;
        sub_21C9099F4(v37, v53, type metadata accessor for PMAccount.SIWAUniqueID);
        v39 = sub_21C7CE99C();
        v41 = v40;

        v42 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v38 = v52;
        sub_21C9099F4(v37, v52, type metadata accessor for PMAccount.CombinedUniqueID);
        v39 = sub_21C7CE408();
        v41 = v43;

        v42 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719360(v38, v42);
      sub_21C719360(v59, type metadata accessor for PMAccount.Storage);
      v44 = v60;
      *v60 = v39;
      v44[1] = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_21CA4F1B8(0, v61[2] + 1, 1, v61);
      }

      v46 = v61[2];
      v45 = v61[3];
      if (v46 >= v45 >> 1)
      {
        v61 = sub_21CA4F1B8((v45 > 1), v46 + 1, 1, v61);
      }

      v47 = v60;
      v48 = v61;
      v61[2] = v46 + 1;
      result = sub_21C9099F4(v47, v48 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v46, type metadata accessor for PMAccount);
    }

    else
    {
    }
  }

  while (1)
  {
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v17 >= v18)
    {

      return v61;
    }

    v15 = *(v12 + 56 + 8 * v17);
    ++v19;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C902F8C()
{
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  result = 0;
  v2 = *(v0 + 56);
  v3 = (v2 + 48);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v3 += 32;
    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_21C903054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(v2 + 120);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v10 = sub_21C7072A8(v8, v15[0]);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 24);
    ObjectType = swift_getObjectType();
    v15[0] = v4;
    v15[1] = v5;
    v16 = v6;
    v17 = v7;
    (*(v11 + 56))(v15, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  else
  {

    v14 = type metadata accessor for PMAccount(0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_21C9031B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = v3;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  swift_beginAccess();
  v7 = *(v3 + 64);
  if (*(v7 + 16))
  {

    v8 = sub_21CB10A3C(a1, a2);
    if (v9)
    {
      v10 = *(v7 + 56) + 32 * v8;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);

      v15 = v14;

      v18[0] = v12;
      v18[1] = v11;
      v19 = v13;
      v20 = v15;
      sub_21C903054(v18, a3);
    }
  }

  v17 = type metadata accessor for PMAccount(0);
  return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
}

void *sub_21C903344(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v51 = type metadata accessor for PMAccount(0);
  v6 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v9;
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v50 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
  v53 = a1;

  v54 = v1;
  result = swift_beginAccess();
  v15 = 0;
  v16 = (v11 + 63) >> 6;
  v45 = (v6 + 48);
  v42 = v6;
  v49 = (v6 + 56);
  v46 = MEMORY[0x277D84F90];
  v52 = v5;
  while (v13)
  {
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = (*(v53 + 48) + ((v15 << 10) | (16 * v18)));
    v21 = *v19;
    v20 = v19[1];
    v22 = v54;
    v55[0] = v54;
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);

    sub_21CB810D4();

    v23 = *(v22 + 64);
    if (!*(v23 + 16))
    {
      goto LABEL_22;
    }

    v24 = sub_21CB10A3C(v21, v20);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      goto LABEL_22;
    }

    v27 = *(v23 + 56) + 32 * v24;
    v28 = *(v27 + 8);
    v48 = *v27;
    v47 = *(v27 + 16);
    v29 = *(v27 + 24);

    v30 = v29;

    v31 = *(v54 + 120);
    v32 = qword_27CDEA4C0;

    if (v32 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v33 = sub_21C7072A8(v31, v55[0]);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = *(v33 + 24);
      ObjectType = swift_getObjectType();
      v55[0] = v48;
      v55[1] = v28;
      v56 = v47;
      v57 = v30;
      v36 = v52;
      (*(v34 + 56))(v55, ObjectType, v34);

      swift_unknownObjectRelease();

      if ((*v45)(v36, 1, v51) == 1)
      {
        goto LABEL_23;
      }

      v37 = v43;
      sub_21C9099F4(v36, v43, type metadata accessor for PMAccount);
      sub_21C909970(v37, v44, type metadata accessor for PMAccount);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_21CA4F1B8(0, v46[2] + 1, 1, v46);
      }

      v39 = v46[2];
      v38 = v46[3];
      if (v39 >= v38 >> 1)
      {
        v46 = sub_21CA4F1B8((v38 > 1), v39 + 1, 1, v46);
      }

      sub_21C719360(v43, type metadata accessor for PMAccount);
      v40 = v46;
      v46[2] = v39 + 1;
      result = sub_21C9099F4(v44, v40 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39, type metadata accessor for PMAccount);
    }

    else
    {

LABEL_22:

      v36 = v52;
      (*v49)(v52, 1, 1, v51);
LABEL_23:
      result = sub_21C6EA794(v36, &unk_27CDEBE60, &unk_21CB9FF40);
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return v46;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C9038A8(uint64_t a1)
{
  *(v2 + 88) = v1;
  *(v2 + 96) = *a1;
  *(v2 + 200) = *(a1 + 16);
  *(v2 + 112) = *(a1 + 24);
  *(v2 + 120) = sub_21CB858B4();
  *(v2 + 128) = sub_21CB858A4();
  v4 = sub_21CB85874();
  *(v2 + 136) = v4;
  *(v2 + 144) = v3;

  return MEMORY[0x2822009F8](sub_21C90395C, v4, v3);
}

uint64_t sub_21C90395C()
{
  v1 = *(v0[11] + 120);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v0[19] = sub_21C7072A8(v1, v0[10]);

  v0[20] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v0[21] = v4;
  v0[22] = v3;

  return MEMORY[0x2822009F8](sub_21C903A64, v4, v3);
}

uint64_t sub_21C903A64()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 200);
  v4 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(v0 + 184) = inited;
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_21C903B60;

  return sub_21C833508(inited);
}

uint64_t sub_21C903B60()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  swift_setDeallocating();
  sub_21C8F1684(v2 + 32);
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21C903CAC, v4, v3);
}

uint64_t sub_21C903CAC()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_21C903D18, v1, v2);
}

uint64_t sub_21C903D18()
{

  sub_21C905C8C(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C903D88()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
  *(v0 + 48) = v2;
  *(v0 + 56) = v2;
  *(v0 + 64) = MEMORY[0x277D84F98];
  *(v0 + 72) = 0;
  *(v0 + 80) = nullsub_1;
  *(v0 + 88) = 0;
  v3 = MEMORY[0x277D84FA0];
  *(v1 + 96) = MEMORY[0x277D84FA0];
  *(v1 + 104) = sub_21CB12414(v2);
  *(v1 + 112) = v3;
  *(v1 + 120) = swift_getKeyPath(byte_21CBAFCB8);
  *(v1 + 128) = swift_getKeyPath(byte_21CBAFCE0);
  *(v1 + 136) = swift_getKeyPath(byte_21CBAFD00);
  *(v1 + 144) = swift_getKeyPath(byte_21CBAFD20);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  v5 = *MEMORY[0x277CDF0D8];
  v6 = sub_21CB85114();
  (*(*(v6 - 8) + 104))(v1 + v4, v5, v6);
  sub_21CB81104();
  v7 = *(v1 + 128);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v9 = sub_21C710778(v7, v14);

  v10 = sub_21CB85584();
  v11 = [v9 BOOLForKey:v10 withDefault:0];

  if (v11 == *(v1 + 72))
  {
    *(v1 + 72) = v11;
    sub_21C9059D4();
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAFD48);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }

  sub_21C904918();
  return v1;
}

uint64_t sub_21C904048(uint64_t a1)
{

  v4 = sub_21C967A88(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAFE70);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }
}

uint64_t sub_21C90419C(uint64_t a1)
{

  v4 = sub_21C967A88(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }
}

uint64_t sub_21C9042F0(uint64_t a1)
{

  v4 = sub_21C967A88(v3, a1);

  if (v4)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }
}

uint64_t sub_21C904444(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C9088B8(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }
}

uint64_t sub_21C90458C(uint64_t a1)
{
  if (*(v1 + 72) == (a1 & 1))
  {
    *(v1 + 72) = a1 & 1;

    return sub_21C9059D4();
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAFD48);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }
}

uint64_t sub_21C9046C0(uint64_t result)
{
  if (*(v1 + 73) == (result & 1))
  {
    *(v1 + 73) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAFF98);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9047D0(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C7A230C(v3, a1);

  if (v4)
  {
    *(v1 + 112) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBAFF68);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }
}

uint64_t sub_21C904918()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v19 = v16 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0CB8, &unk_21CBAFF58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = *(v0 + 120);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    swift_once();
  }

  v16[1] = qword_27CE18778;
  sub_21CB86544();
  sub_21C7072A8(v8, v22);

  swift_beginAccess();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED7D0, &qword_21CBA74D0);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDF0CC0, &qword_27CDF0CB8, &unk_21CBAFF58);
  sub_21CB81E04();

  v10 = *(v5 + 8);
  v16[0] = v5 + 8;
  v17 = v10;
  v10(v7, v4);
  swift_getKeyPath(byte_21CBAFF68);
  v22 = v1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v22 = v1;
  swift_getKeyPath(byte_21CBAFF68);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v22 = v1;
  swift_getKeyPath(byte_21CBAFF68);
  sub_21CB810E4();

  v11 = *(v1 + 120);

  sub_21CB86544();
  sub_21C7072A8(v11, v22);

  swift_beginAccess();
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CB81E04();

  v17(v7, v4);
  swift_getKeyPath(byte_21CBAFF68);
  v22 = v1;
  sub_21CB810D4();

  v22 = v1;
  swift_getKeyPath(byte_21CBAFF68);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v22 = v1;
  swift_getKeyPath(byte_21CBAFF68);
  sub_21CB810E4();

  v12 = *(v1 + 120);

  sub_21CB86544();
  sub_21C7072A8(v12, v22);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v13 = v19;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC80, &qword_27CDEAC58, &qword_21CBA0EC0);
  v14 = v21;
  sub_21CB81E04();

  (*(v20 + 8))(v13, v14);
  swift_getKeyPath(byte_21CBAFF68);
  v22 = v1;
  sub_21CB810D4();

  v22 = v1;
  swift_getKeyPath(byte_21CBAFF68);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v22 = v1;
  swift_getKeyPath(byte_21CBAFF68);
  sub_21CB810E4();
}

uint64_t sub_21C905038()
{
  swift_getKeyPath(byte_21CBAFD48);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  if (*(v0 + 72) == 1)
  {
    swift_getKeyPath(byte_21CBAFE70);
    sub_21CB810D4();

    v1 = 40;
  }

  else
  {
    sub_21CB810D4();

    v1 = 48;
  }

  v2 = *(v0 + v1);

  sub_21CB810D4();

  v3 = *(v0 + 24);
  v4 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (!v4)
  {
    return sub_21C9042F0(v2);
  }

  sub_21C906EB4(v2);
}

uint64_t sub_21C9051D0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  if (v4 == *(v2 + 16) && v3 == *(v2 + 24))
  {
  }

  v6 = sub_21CB86344();

  if ((v6 & 1) == 0)
  {
    return sub_21C905038();
  }

  return result;
}

uint64_t sub_21C9052C0()
{
  swift_getKeyPath(byte_21CBAFF18);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();
}

uint64_t sub_21C905364@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAFF18);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  *a2 = *(v3 + 32);
}

uint64_t sub_21C905410(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath(byte_21CBAFF18);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
    sub_21CB810C4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_21CB85934();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;
}

uint64_t sub_21C905598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAFE70);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  *a2 = *(v3 + 40);
}

uint64_t sub_21C905644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  *a2 = *(v3 + 48);
}

uint64_t sub_21C9056F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  *a2 = *(v3 + 56);
}

uint64_t sub_21C9057C8()
{
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C905880@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_21C90596C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

uint64_t sub_21C9059D4()
{
  v1 = v0;
  sub_21C905C8C(0, 0);
  swift_getKeyPath(byte_21CBAFD48);
  v11 = v0;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  if ((*(v0 + 72) & 1) == 0)
  {
    v11 = v0;
    sub_21CB810D4();

    v3 = sub_21C9092FC(v2, v0);

    sub_21C901AD4(v3);
  }

  v4 = *(v1 + 128);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v6 = sub_21C710778(v4, v11);

  swift_getKeyPath(byte_21CBAFD48);
  sub_21CB810D4();

  v7 = *(v1 + 72);
  v8 = sub_21CB85584();
  [v6 setBool:v7 forKey:v8];

  v9 = *(v1 + 120);

  sub_21CB86544();
  sub_21C7072A8(v9, v1);

  swift_getKeyPath(byte_21CBAFD48);
  sub_21CB810D4();

  return sub_21CB81DC4();
}

uint64_t sub_21C905C8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  KeyPath = a2;
  v5 = v2;
  if (a1)
  {
    v6 = a1;
    if (a2)
    {
LABEL_3:

      v7 = KeyPath;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = *(v2 + 120);
    v9 = qword_27CDEA4C0;

    if (v9 != -1)
    {
LABEL_47:
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v8, v66);

    swift_getKeyPath(byte_21CBAFE08);
    sub_21CB81DB4();

    v6 = v66;
    v3 = v5;
    if (KeyPath)
    {
      goto LABEL_3;
    }
  }

  v10 = *(v3 + 15);
  v11 = qword_27CDEA4C0;

  if (v11 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v10, v66);

  swift_getKeyPath(byte_21CBAFE28);
  swift_getKeyPath(byte_21CBAFE50);
  sub_21CB81DB4();

  v7 = v66;
  v3 = v5;
LABEL_9:

  sub_21CAE8994(v7);
  sub_21C904048(v6);
  KeyPath = swift_getKeyPath(byte_21CBAFE70);
  v66 = v3;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v12 = *(v3 + 5);
  v13 = *(v12 + 16);

  v8 = 0;
  v14 = MEMORY[0x277D84F90];
LABEL_10:
  v15 = 32 * v8;
  while (v13 != v8)
  {
    if (v8 >= *(v12 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    ++v8;
    v16 = v15 + 32;
    v17 = *(v12 + v15 + 48);
    v15 += 32;
    if ((v17 & 1) == 0)
    {
      v19 = *(v12 + v16);
      v18 = *(v12 + v16 + 8);
      v20 = *(v12 + v16 + 24);

      v21 = v20;
      v66 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21C7B0C2C(0, *(v14 + 16) + 1, 1);
      }

      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      KeyPath = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_21C7B0C2C((v22 > 1), v23 + 1, 1);
      }

      *(v14 + 16) = KeyPath;
      v24 = v14 + 32 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v18;
      *(v24 + 48) = 0;
      *(v24 + 56) = v21;
      goto LABEL_10;
    }
  }

  sub_21C90419C(v14);
  sub_21C905038();
  sub_21CB810D4();

  v66 = v5;
  sub_21CB810F4();
  v25 = v5;

  swift_beginAccess();
  *(v5 + 8) = MEMORY[0x277D84F98];

  sub_21CB810E4();

  KeyPath = swift_getKeyPath(byte_21CBAFE70);
  sub_21CB810D4();

  v62 = *(*(v5 + 5) + 16);
  if (v62)
  {

    v8 = 0;
    v27 = (v26 + 56);
    v61 = v26;
    while (1)
    {
      if (v8 >= *(v26 + 16))
      {
        goto LABEL_44;
      }

      v32 = *(v27 - 3);
      v31 = *(v27 - 2);
      v63 = *(v27 - 8);
      v33 = *v27;
      swift_bridgeObjectRetain_n();
      v64 = v33;
      sub_21CB810D4();

      sub_21CB810F4();

      swift_beginAccess();
      KeyPath = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v25 + 8);
      v35 = v25;
      *(v25 + 8) = 0x8000000000000000;
      v37 = sub_21CB10A3C(v32, v31);
      v38 = *(v34 + 16);
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_45;
      }

      v5 = v36;
      if (*(v34 + 24) >= v40)
      {
        if (KeyPath)
        {
          KeyPath = v34;
          if ((v36 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_21C8D52C0();
          KeyPath = v34;
          if ((v5 & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_21C8D10DC(v40, KeyPath);
        v41 = sub_21CB10A3C(v32, v31);
        if ((v5 & 1) != (v42 & 1))
        {
          result = sub_21CB863B4();
          __break(1u);
          return result;
        }

        v37 = v41;
        KeyPath = v34;
        if ((v5 & 1) == 0)
        {
LABEL_31:
          *(KeyPath + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v43 = (*(KeyPath + 48) + 16 * v37);
          *v43 = v32;
          v43[1] = v31;
          v44 = *(KeyPath + 56) + 32 * v37;
          *v44 = v32;
          *(v44 + 8) = v31;
          *(v44 + 16) = v63;
          v30 = v64;
          *(v44 + 24) = v64;
          v45 = *(KeyPath + 16);
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_46;
          }

          *(KeyPath + 16) = v47;

          goto LABEL_22;
        }
      }

      v28 = *(KeyPath + 56) + 32 * v37;
      v29 = *(v28 + 24);
      *v28 = v32;
      *(v28 + 8) = v31;
      *(v28 + 16) = v63;
      v30 = v64;
      *(v28 + 24) = v64;

LABEL_22:
      ++v8;
      v25 = v35;
      *(v35 + 8) = KeyPath;
      swift_endAccess();
      sub_21CB810E4();

      v27 += 4;
      v26 = v61;
      if (v62 == v8)
      {

        break;
      }
    }
  }

  sub_21CB810D4();

  v48 = *(v25 + 7);
  v49 = *(v48 + 16);
  v50 = MEMORY[0x277D84F90];
  if (v49)
  {
    v65 = MEMORY[0x277D84F90];

    sub_21C7B0C0C(0, v49, 0);
    v50 = v65;
    v51 = (v48 + 40);
    do
    {
      v53 = *(v51 - 1);
      v52 = *v51;
      v54 = *(v65 + 16);
      v55 = *(v65 + 24);

      if (v54 >= v55 >> 1)
      {
        sub_21C7B0C0C((v55 > 1), v54 + 1, 1);
      }

      *(v65 + 16) = v54 + 1;
      v56 = v65 + 16 * v54;
      *(v56 + 32) = v53;
      *(v56 + 40) = v52;
      v51 += 4;
      --v49;
    }

    while (v49);
  }

  v57 = sub_21CB009AC(v50);

  sub_21CB810D4();

  v59 = sub_21C908D28(v58, v57);

  return sub_21C901AD4(v59);
}

uint64_t sub_21C9064F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAFD48);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_21C9065C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAFF98);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  *a2 = *(v3 + 73);
  return result;
}

uint64_t sub_21C906690()
{
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_21C906740@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v5 = *(v3 + 80);
  v4 = *(v3 + 88);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_21C908268;
  a2[1] = v6;
}

uint64_t sub_21C906818(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);

  sub_21CB810C4();
}

uint64_t sub_21C906934(void *a1, uint64_t a2, uint64_t a3)
{
  a1[10] = a2;
  a1[11] = a3;

  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v4 = a1[10];

  sub_21CB810D4();

  v5 = a1[12];

  v4(MEMORY[0x277D84FA0], v5);
}

uint64_t sub_21C906A74(uint64_t a1)
{
  v2 = v1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v4 = v1[12];

  v5 = sub_21C7A2154(a1, v4);

  if ((v5 & 1) == 0)
  {
    sub_21CB810D4();

    v7 = v2[10];
    v12 = v2;

    sub_21CB810D4();

    v8 = v2[12];

    v7(a1, v8);

    v9 = v2[17];
    v10 = qword_27CDEA4C0;

    if (v10 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v11 = sub_21C741948(v9, v12);

    if (v11)
    {
      sub_21C91C48C();
    }
  }

  return result;
}

uint64_t sub_21C906C6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 104) = a2;
}

uint64_t sub_21C906CD4()
{
  swift_getKeyPath(byte_21CBAFF68);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C906D8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAFF68);
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_21C906E4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 112) = a2;
}

uint64_t sub_21C906EB4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v12 - v5;
  swift_getKeyPath(byte_21CBAFF18, v4);
  v13 = v1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  if (*(v1 + 32))
  {

    sub_21CB85944();
  }

  sub_21CB858C4();
  v7 = sub_21CB858E4();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a1;

  v10 = sub_21C9E6C0C(0, 0, v6, &unk_21CBAFF48, v9);
  sub_21C6EA794(v6, &qword_27CDF1D50, &qword_21CBA0C00);
  return sub_21C905410(v10);
}

uint64_t sub_21C9070C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for PMAccount(0);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C907184, 0, 0);
}

uint64_t sub_21C907184()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (!Strong)
  {
LABEL_4:

    v2 = v0[1];

    return v2();
  }

  if (sub_21CB85954())
  {

    goto LABEL_4;
  }

  v0[14] = sub_21CB858B4();
  v0[15] = sub_21CB858A4();
  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C907290, v5, v4);
}

uint64_t sub_21C907290()
{
  v1 = v0[13];

  v0[5] = v1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v0[16] = v1[2];
  v0[17] = v1[3];
  v2 = v1[18];
  v3 = qword_27CDEA4C0;

  if (v3 != -1)
  {
    swift_once();
  }

  v0[18] = qword_27CE18778;
  sub_21CB86544();
  v4 = sub_21C81C2D0(v2, v0[6]);

  v0[19] = [v4 associatedDomainsManager];

  return MEMORY[0x2822009F8](sub_21C90741C, 0, 0);
}

uint64_t sub_21C90741C(uint64_t a1)
{
  if (sub_21CB85954())
  {
    v2 = v1[19];
LABEL_10:

    v13 = v1[1];

    return v13();
  }

  v3 = v1[9];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v4, 0);
    v5 = v17;
    v6 = *(v17 + 16);
    v7 = 16 * v6;
    v8 = (v3 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v17 + 24);

      if (v6 >= v11 >> 1)
      {
        sub_21C7B0C0C((v11 > 1), v6 + 1, 1);
      }

      *(v17 + 16) = v6 + 1;
      v12 = v17 + v7;
      *(v12 + 32) = v10;
      *(v12 + 40) = v9;
      v7 += 16;
      v8 += 4;
      ++v6;
      --v4;
    }

    while (v4);
  }

  v1[20] = v5;
  if (sub_21CB85954())
  {
    v2 = v1[19];

    goto LABEL_10;
  }

  v1[21] = sub_21CB858A4();
  v16 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C9075FC, v16, v15);
}

uint64_t sub_21C9075FC()
{
  v1 = v0[13];

  v2 = *(v1 + 120);

  sub_21CB86544();
  v0[22] = sub_21C7072A8(v2, v0[7]);

  return MEMORY[0x2822009F8](sub_21C9076A4, 0, 0);
}

uint64_t sub_21C9076A4(uint64_t a1)
{
  *(v1 + 184) = sub_21CB858A4();
  v3 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C907730, v3, v2);
}

uint64_t sub_21C907730()
{
  v1 = *(v0 + 160);

  *(v0 + 192) = sub_21C8326F0(v1);

  return MEMORY[0x2822009F8](sub_21C9077B8, 0, 0);
}

uint64_t sub_21C9077B8(uint64_t a1)
{
  v2 = sub_21CB85954();
  v3 = v1[24];
  v4 = v1[19];
  v5 = v1[17];
  if (v2)
  {

LABEL_19:

    v24 = v1[1];

    return v24();
  }

  v6 = v1[16];
  v7 = v4;
  matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v3, v6, v5, v4);

  if (sub_21CB85954())
  {
    v9 = v1[19];
LABEL_18:

    goto LABEL_19;
  }

  v10 = matched[2];
  if (v10)
  {
    v11 = v1[11];
    v12 = (v1[12] + *(v1[10] + 28));
    v13 = matched + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v28 = *(v11 + 72);
    v29 = v1;
    v30 = MEMORY[0x277D84F90];
    do
    {
      v15 = v1[12];
      sub_21C909970(v13, v15, type metadata accessor for PMAccount);
      v16 = *v12;
      v17 = v12[1];
      v19 = v12[2];
      v18 = v12[3];
      sub_21C7D33AC(*v12, v17, v19, v18);
      sub_21C719360(v15, type metadata accessor for PMAccount);
      if (v17)
      {
        v20 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21CA4F1E0(0, *(v30 + 2) + 1, 1, v30);
        }

        v22 = *(v20 + 2);
        v21 = *(v20 + 3);
        if (v22 >= v21 >> 1)
        {
          v20 = sub_21CA4F1E0((v21 > 1), v22 + 1, 1, v20);
        }

        *(v20 + 2) = v22 + 1;
        v30 = v20;
        v14 = &v20[32 * v22];
        *(v14 + 4) = v16;
        *(v14 + 5) = v17;
        v14[48] = v19 & 1;
        *(v14 + 7) = v18;
      }

      v1 = v29;
      v13 += v28;
      --v10;
    }

    while (v10);

    v23 = v30;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v1[25] = v23;
  if (sub_21CB85954())
  {
    v9 = v1[19];
    goto LABEL_18;
  }

  v1[26] = sub_21CB858A4();
  v27 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C907AAC, v27, v26);
}

uint64_t sub_21C907AAC()
{
  v1 = *(v0 + 200);

  sub_21C9042F0(v1);

  return MEMORY[0x2822009F8](sub_21C907B20, 0, 0);
}

uint64_t sub_21C907B20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C907B94(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C905C8C(v2, 0);
  }

  return result;
}

uint64_t sub_21C907BF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C905C8C(0, v2);
  }

  return result;
}

uint64_t sub_21C907C5C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2 == *(result + 73))
    {
      *(result + 73) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath(byte_21CBAFF98);
      MEMORY[0x28223BE20](KeyPath);
      sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
      sub_21CB810C4();
    }
  }

  return result;
}

uint64_t sub_21C907DA4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_21C907E40(uint64_t a1)
{
  v2 = sub_21CB85114();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = v13 - v8;
  swift_getKeyPath(byte_21CBAFC90, v7);
  v13[1] = a1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v10 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  (*(v3 + 16))(v9, a1 + v10, v2);
  v11 = (*(v3 + 88))(v9, v2);
  if (v11 == *MEMORY[0x277CDF0D8])
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CDF0D0], v2);
    return sub_21C90231C(v5);
  }

  if (v11 == *MEMORY[0x277CDF0D0])
  {
    (*(v3 + 104))(v5);
    return sub_21C90231C(v5);
  }

  return (*(v3 + 8))(v9, v2);
}

char *sub_21C90806C()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  v2 = sub_21CB85114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
  v4 = sub_21CB81114();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_21C90817C()
{
  sub_21C90806C();

  return swift_deallocClassInstance();
}

uint64_t sub_21C9081DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 96);
  *(v1 + 96) = *(v0 + 24);

  sub_21C906A74(v2);
}

uint64_t sub_21C90822C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_21C908304@<X0>(_BYTE *a2@<X8>)
{
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C908384(char *a1, uint64_t *a2)
{

  return sub_21CB81DC4();
}

unint64_t *sub_21C9083F8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_21C908B18(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_21C908494(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_21C909088(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_21C908530(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
LABEL_6:
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 24 * v12);
    result = sub_21CB109D0(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v15 = *(*(a2 + 56) + 24 * result);
    v16 = *(v15 + 16);
    if (v16 != *(v13 + 16))
    {
      return 0;
    }

    if (v16)
    {
      v17 = v15 == v13;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = (v15 + 40);
      v19 = (v13 + 40);
      while (v16)
      {
        result = *(v18 - 1);
        if (result != *(v19 - 1) || *v18 != *v19)
        {
          result = sub_21CB86344();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v18 += 2;
        v19 += 2;
        if (!--v16)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_21C9086A4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v28 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v30 = (v8 - 1) & v8;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + v13);
    v15 = (*(v3 + 56) + 24 * v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = sub_21CB109D0(v14);
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    v21 = (*(v2 + 56) + 24 * v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];

    v25 = v18;

    v26 = v24;
    if ((sub_21C714F88(v22, v16) & 1) == 0 || (sub_21C967788(v23, v17) & 1) == 0)
    {

      return 0;
    }

    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v27 = sub_21CB85DD4();

    v3 = v28;
    v2 = a2;
    v8 = v30;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C9088B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v32 = result;
  while (v6)
  {
    v11 = __clz(__rbit64(v6));
    v33 = (v6 - 1) & v6;
LABEL_15:
    v14 = v11 | (v2 << 6);
    v15 = (*(result + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(result + 56) + 32 * v14;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);

    v23 = v22;
    if (!v17)
    {
      return 1;
    }

    v24 = v23;
    v25 = sub_21CB10A3C(v16, v17);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_23;
    }

    v28 = *(a2 + 56) + 32 * v25;
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (*v28 == v20 && v19 == *(v28 + 8))
    {
      if (v21 != v29)
      {
        goto LABEL_23;
      }
    }

    else if (sub_21CB86344() & 1) == 0 || ((v21 ^ v29))
    {
LABEL_23:

      return 0;
    }

    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);

    v8 = v30;
    v9 = sub_21CB85DD4();

    result = v32;
    v6 = v33;
    v10 = v17 == 0;
    if ((v9 & 1) == 0)
    {
      return v10;
    }
  }

  v12 = v2;
  while (1)
  {
    v2 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v13 = *(v3 + 8 * v2);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v33 = (v13 - 1) & v13;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21C908B18(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v29 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v26 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 16 * v26);
      v16 = *v14;
      v15 = v14[1];
      sub_21CB86484();

      sub_21CB854C4();
      v17 = sub_21CB864D4();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a4 + 48) + 16 * v19);
          v22 = *v21 == v16 && v21[1] == v15;
          if (v22 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_21CAA1B00(v25, a2, v27, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21C908D28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v41 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v34[0] = v3;
    v34[1] = v34;
    v35 = v8;
    MEMORY[0x28223BE20](v10);
    v36 = v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v9);
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v39 = 0;
    v40 = a2 + 56;
    v37 = v5;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v18 = v15 | (v11 << 6);
      if (*(a2 + 16))
      {
        v19 = *(v5 + 48);
        v38 = v18;
        v20 = (v19 + 16 * v18);
        v22 = *v20;
        v21 = v20[1];
        sub_21CB86484();

        sub_21CB854C4();
        v23 = sub_21CB864D4();
        v24 = a2;
        v25 = -1 << *(a2 + 32);
        v9 = v23 & ~v25;
        if ((*(v40 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v26 = ~v25;
          while (1)
          {
            v27 = (*(v24 + 48) + 16 * v9);
            v28 = *v27 == v22 && v27[1] == v21;
            if (v28 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v26;
            if (((*(v40 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v5 = v37;
          *&v36[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
          v29 = __OFADD__(v39++, 1);
          a2 = v24;
          if (v29)
          {
            __break(1u);
LABEL_27:
            v30 = sub_21CAA1B00(v36, v35, v39, v5);

            return v30;
          }
        }

        else
        {
LABEL_6:

          a2 = v24;
          v5 = v37;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_27;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();

  v33 = sub_21C9083F8(v32, v8, v5, a2);

  MEMORY[0x21CF16D90](v32, -1, -1);

  return v33;
}