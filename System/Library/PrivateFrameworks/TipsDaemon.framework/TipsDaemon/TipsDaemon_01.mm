uint64_t sub_232DB6E94()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_232DB73B0;
  }

  else
  {
    v2 = sub_232DB6FB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DB6FB0()
{
  v1 = v0[9];
  v2 = *(v1 + 24);
  if (!v2)
  {
    v16 = v0[15];
    v17 = v0[12];
    v18 = v0[13];
    v20 = v0[6];
    v19 = v0[7];
    v21 = v0[5];

    sub_232E01270();
    sub_232E01380();
    (*(v20 + 8))(v19, v21);
    sub_232DBD398();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 4;
    swift_willThrow();
    sub_232DBD4B4(v1, type metadata accessor for UserGuideIndexHelper.UserGuideAttributes);
    (*(v18 + 8))(v16, v17);
    goto LABEL_5;
  }

  v3 = *(v1 + 16);
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[10];
  sub_232DAB3CC(v1 + *(v0[8] + 28), v6, &qword_27DDD7300, &qword_232E06830);
  if (v4(v6, 1, v5) == 1)
  {
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];

    sub_232DAB434(v10, &qword_27DDD7300, &qword_232E06830);
    sub_232E01270();
    sub_232E01380();
    (*(v13 + 8))(v12, v14);
    sub_232DBD398();
    swift_allocError();
    *v15 = xmmword_232E06780;
    *(v15 + 16) = 4;
    swift_willThrow();
    sub_232DBD4B4(v11, type metadata accessor for UserGuideIndexHelper.UserGuideAttributes);
    (*(v9 + 8))(v7, v8);
LABEL_5:

    v23 = v0[1];
    goto LABEL_7;
  }

  v43 = v0[20];
  v45 = v0[16];
  v46 = v0[17];
  v42 = v0[15];
  v47 = v3;
  v24 = v0[13];
  v25 = v0[14];
  v26 = v0[12];
  v27 = v0[9];
  v28 = v0[2];
  v43(v25);
  v29 = v27[1];
  v44 = *v27;

  v30 = sub_232E013B0();
  v40 = v31;
  v41 = v30;
  v32 = v27[5];
  v39 = v27[4];

  v33 = sub_232E013E0();
  v37 = v34;
  v38 = v33;
  sub_232DBD4B4(v27, type metadata accessor for UserGuideIndexHelper.UserGuideAttributes);
  (*(v24 + 8))(v42, v26);
  v35 = type metadata accessor for UserGuideIndexItem(0);
  (v43)(v28 + *(v35 + 40), v25, v26);
  *v28 = v45;
  v28[1] = v46;
  v28[2] = v44;
  v28[3] = v29;
  v28[4] = v47;
  v28[5] = v2;
  v28[6] = v41;
  v28[7] = v40;
  v28[8] = v39;
  v28[9] = v32;
  v28[10] = v38;
  v28[11] = v37;

  v23 = v0[1];
LABEL_7:

  return v23();
}

uint64_t sub_232DB73B0()
{
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_232DB7470@<X0>(uint64_t a2@<X8>)
{
  sub_232E013A0();
  v3 = sub_232E014C0();

  sub_232E013E0();
  if (v4)
  {
    v5 = sub_232E014C0();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  v7 = [v6 userGuideURLForIdentifier:v3 version:v5 platformIndependent:sub_232E013D0() & 1 subPath:0];

  if (v7)
  {
    sub_232E00BB0();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_232E00BE0();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v8, 1, v9);
}

uint64_t sub_232DB7594(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse(0);
  v2[6] = swift_task_alloc();
  v3 = sub_232E012A0();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DB7690, 0, 0);
}

uint64_t sub_232DB7690(uint64_t a1)
{
  v2 = v1[10];
  v3 = v1[7];
  v4 = v1[8];
  sub_232E01270();
  v5 = sub_232E00B40();
  MEMORY[0x238395970](v5);

  sub_232E01370();

  v6 = *(v4 + 8);
  v1[11] = v6;
  v1[12] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = swift_task_alloc();
  v1[13] = v7;
  *v7 = v1;
  v7[1] = sub_232DB77BC;
  v8 = v1[4];

  return sub_232DBB868(v8, 0);
}

uint64_t sub_232DB77BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DB791C, 0, 0);
  }
}

uint64_t sub_232DB791C(uint64_t a1)
{
  v2 = *(v1 + 120);
  sub_232E01270();
  sub_232E018F0();

  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v6 = *(*(v1 + 112) + 16);
    v7 = *(*(v1 + 112) + 24);
    v8 = __OFSUB__(v7, v6);
    v5 = v7 - v6;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = *(v1 + 126);
    goto LABEL_10;
  }

  v9 = *(v1 + 112);
  v10 = *(v1 + 116);
  v8 = __OFSUB__(v10, v9);
  LODWORD(v5) = v10 - v9;
  if (v8)
  {
    __break(1u);
    return result;
  }

  v5 = v5;
LABEL_10:
  v30 = *(v1 + 128);
  v11 = *(v1 + 88);
  v12 = *(v1 + 72);
  v13 = *(v1 + 56);
  *(v1 + 16) = v5;
  v14 = sub_232E01AB0();
  MEMORY[0x238395970](v14);

  sub_232E01370();

  v11(v12, v13);
  sub_232E00990();
  swift_allocObject();
  sub_232E00980();
  sub_232DBD42C(qword_2814E7EA0, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse, &unk_232E069D8);
  sub_232E00970();
  v16 = *(v1 + 112);
  v15 = *(v1 + 120);
  if (v30)
  {

    sub_232DB091C(v16, v15);
  }

  else
  {
    v18 = *(v1 + 48);
    v19 = *(v1 + 24);
    v20 = v18[1];
    v29 = *v18;
    v21 = (v18 + *(type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0) + 24));
    v22 = v21[1];
    v28 = *v21;

    v23 = sub_232DB82F0();
    v27 = v24;

    sub_232DB091C(v16, v15);
    v25 = *(type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0) + 20);
    v26 = type metadata accessor for UserGuideIndexHelper.UserGuideAttributes(0);
    sub_232DAB3CC(v21 + v25, v19 + *(v26 + 28), &qword_27DDD7300, &qword_232E06830);
    sub_232DBD4B4(v18, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse);
    *v19 = v29;
    v19[1] = v20;
    v19[2] = v28;
    v19[3] = v22;
    v19[4] = v23;
    v19[5] = v27;
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_232DB7C30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232E012A0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_232E00BE0();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DB7D50, 0, 0);
}

uint64_t sub_232DB7D50()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v21 = v0[6];
  v22 = v0[5];
  v5 = v0[3];
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = type metadata accessor for UserGuideIndexItem(0);
  (*(v1 + 16))(v2, &v5[*(v10 + 40)], v4);
  v12 = *(v5 + 10);
  v11 = *(v5 + 11);
  v13 = *(v5 + 8);
  v14 = *(v5 + 9);
  v20 = v13;

  sub_232E01270();
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000028, 0x8000000232E0CCB0);
  MEMORY[0x238395970](v6, v7);
  MEMORY[0x238395970](0x64496B6F6F62202CLL, 0xEA0000000000203ALL);
  MEMORY[0x238395970](v8, v9);
  MEMORY[0x238395970](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  if (v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (!v11)
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x238395970](v15, v11);

  MEMORY[0x238395970](0x6175676E616C202CLL, 0xEC000000203A6567);
  MEMORY[0x238395970](v20, v14);
  MEMORY[0x238395970](0x557865646E69202CLL, 0xEC000000203A4C52);
  sub_232DBD42C(&qword_2814E8498, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v16 = sub_232E01AB0();
  MEMORY[0x238395970](v16);

  sub_232E01370();

  (*(v21 + 8))(v3, v22);
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_232DB8008;
  v18 = v0[3];

  return sub_232DBBB98(v18);
}

uint64_t sub_232DB8008(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_232DB8268;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_232DB8130;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_232DB8130()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v10 = *(v0 + 24);
  v6[1] = vextq_s8(v10, v10, 8uLL);
  v7 = sub_232DB68C8(sub_232DBCD10, v6, v1);

  (*(v3 + 8))(v2, v4);
  sub_232DBDBE4(v10.i64[0], v5, type metadata accessor for UserGuideIndexItem);
  *(v5 + *(type metadata accessor for UserGuideIndexRequest(0) + 20)) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_232DB8268()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_232DB82F0()
{
  v0 = sub_232E00D40();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E00D60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74F0, &qword_232E06850);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;

  sub_232E00CF0();
  sub_232E00D50();
  (*(v5 + 8))(v7, v4);
  sub_232E00D30();
  (*(v1 + 8))(v3, v0);
  v11 = sub_232E00D10();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_232DAB434(v10, &qword_27DDD74F0, &qword_232E06850);
    v13 = [objc_opt_self() tps_userLanguageCode];
    v14 = sub_232E014D0();
  }

  else
  {
    v14 = sub_232E00D00();
    (*(v12 + 8))(v10, v11);
  }

  return v14;
}

void sub_232DB85AC()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = sub_232E012A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E01270();
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_232E018F0();

  v13 = 0xD00000000000001FLL;
  v14 = 0x8000000232E0CDD0;
  v4 = sub_232E00B40();
  MEMORY[0x238395970](v4);

  sub_232E01370();

  (*(v1 + 8))(v3, v0);
  v5 = [objc_opt_self() defaultManager];
  v6 = sub_232E00B70();
  v13 = 0;
  v7 = [v5 removeItemAtURL:v6 error:&v13];

  v8 = v13;
  if (v7)
  {

    v9 = v8;
  }

  else
  {
    v12[1] = v13;
    v10 = v13;
    v11 = sub_232E00AE0();

    swift_willThrow();
  }
}

id sub_232DB87E0(uint64_t a1, SEL *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_232E00B70();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_232E00BE0();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_232E00AE0();

    swift_willThrow();
    v11 = sub_232E00BE0();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

void sub_232DB89B4(uint64_t a1)
{
  sub_232DB8A54();
  if (v1 <= 0x3F)
  {
    sub_232E00BE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232DB8A54()
{
  if (!qword_2814E7C40)
  {
    v0 = sub_232E01840();
    if (!v1)
    {
      atomic_store(v0, &qword_2814E7C40);
    }
  }
}

void sub_232DB8AA4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v36 = a6;
  v34 = a4;
  v35 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74E0, &qword_232E06828);
  v10 = *(v9 - 8);
  v37 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = sub_232E00BE0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232E00960();
  v39 = *(v17 - 8);
  v40 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  v20 = *a2;
  (*(v14 + 16))(v16, a3, v13);
  v38 = v20;
  sub_232E00950();
  sub_232DB3688(0, &qword_2814E7BE8, 0x277D716A0);
  v21 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (v21)
  {
    v22 = v21;
    v23 = sub_232E00940();
    v24 = sub_232E014C0();
    sub_232E014D0();
    v25 = sub_232E014C0();

    v26 = *MEMORY[0x277CCA790];
    (*(v10 + 16))(v12, a1, v9);
    v27 = v9;
    v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v29 = swift_allocObject();
    (*(v10 + 32))(v29 + v28, v12, v27);
    aBlock[4] = sub_232DBD334;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232DDD99C;
    aBlock[3] = &block_descriptor_1;
    v30 = _Block_copy(aBlock);

    LODWORD(v31) = v26;
    v32 = [v22 formattedDataForRequest:v23 identifier:v24 attributionIdentifier:0 requestType:v25 priority:v30 completionHandler:v31];
    _Block_release(v30);

    (*(v39 + 8))(v19, v40);
    v33 = *v41;
    *v41 = v32;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_232DB8EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v25 - v11;
  v13 = sub_232E00BE0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v25 - v18;
  sub_232DAB3CC(a3, v25, &qword_27DDD74C0, &qword_232E07DF0);
  if (v25[3])
  {
    v20 = swift_dynamicCast();
    (*(v14 + 56))(v12, v20 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v19, v12, v13);
      (*(v14 + 16))(v17, v19, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74E0, &qword_232E06828);
      sub_232E01650();
      return (*(v14 + 8))(v19, v13);
    }
  }

  else
  {
    sub_232DAB434(v25, &qword_27DDD74C0, &qword_232E07DF0);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_232DAB434(v12, &qword_27DDD7300, &qword_232E06830);
  if (a9)
  {
    v22 = a9;
  }

  else
  {
    sub_232DBD398();
    v22 = swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 1;
  }

  v25[0] = v22;
  v24 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74E0, &qword_232E06828);
  return sub_232E01640();
}

void sub_232DB9188(uint64_t a1, void **a2, uint64_t a3, int a4)
{
  v33 = a4;
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74F8, &qword_232E06858);
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v32 - v7;
  v9 = sub_232E00BE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_232E00960();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  v16 = *a2;
  (*(v10 + 16))(v12, a3, v9);
  v36 = v16;
  sub_232E00950();
  sub_232E00B50();
  v17 = [objc_opt_self() sharedInstance];
  if (v17)
  {
    v18 = v17;
    v32 = sub_232E00940();
    v19 = sub_232E014C0();

    sub_232E014D0();
    v20 = sub_232E014C0();

    v21 = *MEMORY[0x277CCA790];
    v22 = v8;
    v23 = v8;
    v24 = v34;
    (*(v6 + 16))(v23, v35, v34);
    v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v26 = swift_allocObject();
    (*(v6 + 32))(v26 + v25, v22, v24);
    aBlock[4] = sub_232DBD5A4;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232DDD99C;
    aBlock[3] = &block_descriptor_18;
    v27 = _Block_copy(aBlock);

    v28 = v32;
    LODWORD(v29) = v21;
    v30 = [v18 formattedDataForRequest:v32 identifier:v19 attributionIdentifier:0 requestType:v20 priority:v27 completionHandler:v29];
    _Block_release(v27);

    (*(v37 + 8))(v15, v38);
    v31 = *v39;
    *v39 = v30;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_232DB958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_232DAB3CC(a3, &v14, &qword_27DDD74C0, &qword_232E07DF0);
  if (v15)
  {
    if (swift_dynamicCast())
    {
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74F8, &qword_232E06858);
      return sub_232E01650();
    }

    if (!a9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_232DAB434(&v14, &qword_27DDD74C0, &qword_232E07DF0);
    if (!a9)
    {
LABEL_7:
      sub_232DBD398();
      v10 = swift_allocError();
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 1;
      goto LABEL_8;
    }
  }

  v10 = a9;
LABEL_8:
  *&v14 = v10;
  v12 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74F8, &qword_232E06858);
  return sub_232E01640();
}

uint64_t sub_232DB96A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7528, &qword_232E06A18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBDCA0();
  sub_232E01C10();
  v8[15] = 0;
  sub_232E01A70();
  if (!v1)
  {
    v8[14] = 1;
    sub_232E01A70();
    type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0);
    v8[13] = 2;
    type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0);
    sub_232DBD42C(&qword_27DDD7530, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes, &unk_232E06988);
    sub_232E01A80();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_232DB98C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0);
  MEMORY[0x28223BE20](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7520, &qword_232E06A10);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBDCA0();
  sub_232E01C00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v12 = v23;
  v13 = v24;
  v27 = 0;
  *v11 = sub_232E01A20();
  v11[1] = v14;
  v26 = 1;
  v11[2] = sub_232E01A20();
  v11[3] = v15;
  v25 = 2;
  sub_232DBD42C(&qword_2814E80A0, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes, &unk_232E069B0);
  v19 = v11;
  sub_232E01A30();
  (*(v12 + 8))(v8, v13);
  v16 = *(v9 + 24);
  v17 = v19;
  sub_232DBDB24(v5, v19 + v16, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes);
  sub_232DBDBE4(v17, v21, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_232DBD4B4(v17, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book);
}

uint64_t sub_232DB9C50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C61636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x727474416373696DLL;
    v4 = 0xEE00736574756269;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x656C61636F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x727474416373696DLL;
    v3 = 0xEE00736574756269;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_232E01AD0();
  }

  return v11 & 1;
}

uint64_t sub_232DB9D5C()
{
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DB9E04(uint64_t a1)
{
  sub_232E01530();
}

uint64_t sub_232DB9E98(uint64_t a1)
{
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

unint64_t sub_232DB9F3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_232DBE134(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_232DB9F6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C61636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x727474416373696DLL;
    v4 = 0xEE00736574756269;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64496B6F6F62;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_232DB9FD0()
{
  v1 = 0x656C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x727474416373696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496B6F6F62;
  }
}

unint64_t sub_232DBA030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232DBE134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232DBA064(uint64_t a1)
{
  v2 = sub_232DBDCA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DBA0A0(uint64_t a1)
{
  v2 = sub_232DBDCA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DBA10C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_232DBA118@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper(0);
  MEMORY[0x28223BE20](v37);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E01500();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = *(v7 + 28);
  v11 = sub_232E00BE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v31 = v10;
  v13(&v9[v10], 1, 1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v39;
  sub_232E01BF0();
  if (!v14)
  {
    v29 = v12 + 56;
    v30 = v13;
    v39 = v11;
    v15 = v37;
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_232E01AE0();
    v16 = v33;
    sub_232E014F0();
    v17 = sub_232E014E0();
    v19 = v18;

    v20 = v16;
    v21 = v19;
    (*(v34 + 8))(v20, v35);
    if (v19 >> 60 == 15)
    {
      v22 = v36;
    }

    else
    {
      sub_232E00990();
      swift_allocObject();
      sub_232E00980();
      sub_232DBD42C(&qword_2814E7FF0, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper, &unk_232E06DB8);
      v23 = v32;
      sub_232E00970();

      sub_232DB0E28(v17, v21);
      v22 = v36;
      v24 = v23[1];
      *v9 = *v23;
      *(v9 + 1) = v24;
      v25 = v31;
      sub_232DAB434(&v9[v31], &qword_27DDD7300, &qword_232E06830);
      v26 = v23 + *(v15 + 20);
      v27 = v39;
      (*(v12 + 32))(&v9[v25], v26, v39);
      v30(&v9[v25], 0, 1, v27);
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_232DBDBE4(v9, v22, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_232DBD4B4(v9, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes);
}

uint64_t sub_232DBA508(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7508, &qword_232E06A08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBDC4C();
  sub_232E01C10();
  v8[15] = 0;
  sub_232E01A50();
  if (!v1)
  {
    type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0);
    v8[14] = 1;
    sub_232E00BE0();
    sub_232DBD42C(&qword_27DDD7518, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_232E01A60();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_232DBA6C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7578, &qword_232E06E38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBE0E0();
  sub_232E01C10();
  v8[15] = 0;
  sub_232E01A70();
  if (!v1)
  {
    type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper(0);
    v8[14] = 1;
    sub_232E00BE0();
    sub_232DBD42C(&qword_27DDD7518, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_232E01A80();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_232DBA878@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_232E00BE0();
  v17 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7570, &qword_232E06E30);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = v15 - v6;
  v8 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBE0E0();
  sub_232E01C00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v8;
  v12 = v19;
  v11 = v20;
  v23 = 0;
  *v10 = sub_232E01A20();
  v10[1] = v13;
  v15[1] = v13;
  v22 = 1;
  sub_232DBD42C(&unk_2814E84A0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_232E01A30();
  (*(v12 + 8))(v7, v21);
  (*(v17 + 32))(v10 + *(v16 + 20), v5, v11);
  sub_232DBDBE4(v10, v18, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_232DBD4B4(v10, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper);
}

uint64_t sub_232DBABBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7500, &qword_232E06A00);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBDAD0();
  sub_232E01C00();
  if (!v2)
  {
    v12 = v15;
    sub_232DBD42C(&qword_2814E7F40, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book, &unk_232E06960);
    v13 = v17;
    sub_232E01A30();
    (*(v16 + 8))(v8, v6);
    sub_232DBDB24(v13, v11, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book);
    sub_232DBDB24(v11, v12, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_232DBAE30()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6449646C697562;
  }
}

uint64_t sub_232DBAE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449646C697562 && a2 == 0xE700000000000000;
  if (v6 || (sub_232E01AD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000232E0CEA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_232E01AD0();

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

uint64_t sub_232DBAF54(uint64_t a1)
{
  v2 = sub_232DBDC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DBAF90(uint64_t a1)
{
  v2 = sub_232DBDC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DBAFFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x6449646C697562;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x8000000232E0C750;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x6449646C697562;
  }

  if (*a2)
  {
    v6 = 0x8000000232E0C750;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232E01AD0();
  }

  return v8 & 1;
}

uint64_t sub_232DBB0A8()
{
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DBB130(uint64_t a1)
{
  sub_232E01530();
}

uint64_t sub_232DBB1A4(uint64_t a1)
{
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DBB228@<X0>(char *a2@<X8>)
{
  v3 = sub_232E01A10();

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

void sub_232DBB288(unint64_t *a1@<X8>)
{
  v2 = 0x8000000232E0C750;
  v3 = 0x6449646C697562;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_232DBB2CC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6449646C697562;
  }
}

uint64_t sub_232DBB30C@<X0>(char *a3@<X8>)
{
  v4 = sub_232E01A10();

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

uint64_t sub_232DBB370(uint64_t a1)
{
  v2 = sub_232DBE0E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DBB3AC(uint64_t a1)
{
  v2 = sub_232DBE0E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DBB418()
{
  sub_232E01BB0();
  sub_232E01530();
  return sub_232E01BE0();
}

uint64_t sub_232DBB494(uint64_t a1)
{
  sub_232E01BB0();
  sub_232E01530();
  return sub_232E01BE0();
}

uint64_t sub_232DBB4EC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_232E01A10();

  *a2 = v3 != 0;
  return result;
}

void sub_232DBB540(uint64_t a1@<X8>)
{
  strcpy(a1, "bookResponse");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_232DBB584@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_232E01A10();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_232DBB5E8(uint64_t a1)
{
  v2 = sub_232DBDAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DBB624(uint64_t a1)
{
  v2 = sub_232DBDAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DBB678(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7538, &qword_232E06A20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBDAD0();
  sub_232E01C10();
  type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0);
  sub_232DBD42C(&qword_27DDD7540, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book, &unk_232E06938);
  sub_232E01A80();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_232DBB7F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7310, &qword_232E06810);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27DDD74D0;
    v3 = &unk_232E06818;
  }

  else
  {
    v2 = &qword_27DDD74D8;
    v3 = &qword_232E06820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_232DBB868(uint64_t a1, char a2)
{
  *(v2 + 72) = a2;
  *(v2 + 40) = a1;
  return MEMORY[0x2822009F8](sub_232DBB88C, 0, 0);
}

uint64_t sub_232DBB88C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  *(v0 + 32) = 0;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v0 + 32;
  *(v3 + 24) = v2;
  *(v3 + 32) = v1 & 1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_232DBB9A0;
  v5 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000017, 0x8000000232E0CE80, sub_232DBD514, v3, v5);
}

uint64_t sub_232DBB9A0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_232DBBB2C;
  }

  else
  {

    v2 = sub_232DBBABC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DBBABC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_232DBBB2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DBBB98(uint64_t a1)
{
  v1[46] = a1;
  v2 = sub_232E00BE0();
  v1[47] = v2;
  v1[48] = *(v2 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v3 = sub_232E012A0();
  v1[53] = v3;
  v1[54] = *(v3 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DBBD1C, 0, 0);
}

uint64_t sub_232DBBD1C()
{
  v1 = v0[57];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[46];
  v5 = v4 + *(type metadata accessor for UserGuideIndexItem(0) + 40);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  sub_232E01270();
  sub_232E018F0();

  v8 = sub_232E00B40();
  MEMORY[0x238395970](v8);

  sub_232E01370();

  v9 = *(v3 + 8);
  v0[58] = v9;
  v0[59] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  v0[38] = 0;
  v10 = swift_task_alloc();
  v0[60] = v10;
  *(v10 + 16) = v0 + 38;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = 1;
  v11 = swift_task_alloc();
  v0[61] = v11;
  *v11 = v0;
  v11[1] = sub_232DBBF20;
  v12 = v0[52];
  v13 = v0[47];

  return MEMORY[0x2822008A0](v12, 0, 0, 0xD000000000000023, 0x8000000232E0CD00, sub_232DBD2D0, v10, v13);
}

uint64_t sub_232DBBF20()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_232DBCC1C;
  }

  else
  {

    v2 = sub_232DBC070;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DBC070()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);
  v3 = *(v0 + 424);

  sub_232E01270();
  sub_232E018F0();

  v4 = sub_232E00B40();
  MEMORY[0x238395970](v4);

  sub_232E01370();

  v1(v2, v3);
  sub_232E00B90();
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  sub_232E00BC0();
  v7 = sub_232E014C0();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    v9 = [v5 defaultManager];
    v10 = sub_232E00B70();
    *(v0 + 360) = 0;
    v11 = [v9 removeItemAtURL:v10 error:v0 + 360];

    v12 = *(v0 + 360);
    if (v11)
    {
      v13 = *(v0 + 496);
      v14 = v12;
    }

    else
    {
      v15 = v12;
      v16 = sub_232E00AE0();

      swift_willThrow();
      v13 = 0;
    }
  }

  else
  {
    v13 = *(v0 + 496);
  }

  v17 = *(v0 + 416);
  v18 = *(v0 + 400);
  v19 = *(v0 + 376);
  v20 = *(v0 + 384);
  v21 = [v5 defaultManager];
  sub_232E00BC0();
  v22 = sub_232E014C0();

  [v21 createFileAtPath:v22 contents:0 attributes:0];

  sub_232DB3688(0, &qword_2814E7C20, 0x277CCA9F8);
  v23 = *(v20 + 16);
  v23(v18, v17, v19);
  v24 = sub_232DB87E0(v18, &selRef_fileHandleForReadingFromURL_error_);
  v25 = *(v0 + 376);
  if (v13)
  {
    v26 = *(v0 + 408);
    v27 = *(v0 + 416);
    v28 = *(v0 + 384);
    sub_232DB85AC();
    v29 = *(v28 + 8);
    v29(v26, v25);
    v29(v27, v25);
LABEL_9:

    v32 = *(v0 + 8);

    return v32();
  }

  v30 = v24;
  v31 = *(v0 + 392);
  v23(v31, *(v0 + 408), *(v0 + 376));
  v34 = sub_232DB87E0(v31, &selRef_fileHandleForWritingToURL_error_);
  sub_232DBE468(v30, v34);
  v35 = sub_232E00C00();
  v37 = v36;
  sub_232E01270();
  sub_232E018F0();

  v38 = v37 >> 62;
  v80 = v35;
  if ((v37 >> 62) > 1)
  {
    v39 = 0;
    if (v38 != 2)
    {
      goto LABEL_21;
    }

    v41 = *(v35 + 16);
    v40 = *(v35 + 24);
    v42 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (!v42)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v38)
  {
    v39 = BYTE6(v37);
    goto LABEL_21;
  }

  LODWORD(v39) = HIDWORD(v35) - v35;
  if (__OFSUB__(HIDWORD(v35), v35))
  {
    __break(1u);
LABEL_40:
    v66 = sub_232E019C0();
    goto LABEL_34;
  }

  v39 = v39;
LABEL_21:
  v77 = v34;
  v43 = *(v0 + 464);
  v44 = *(v0 + 448);
  v45 = *(v0 + 424);
  *(v0 + 320) = v39;
  v46 = sub_232E01AB0();
  MEMORY[0x238395970](v46);

  sub_232E01370();

  v43(v44, v45);
  sub_232DBB7F0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232E06790;
  *(inited + 32) = sub_232DB3688(0, &qword_2814E7C28, 0x277CBEAC0);
  *(inited + 40) = sub_232DB3688(0, &qword_2814E7BC0, 0x277CBEA60);
  *(inited + 48) = sub_232DB3688(0, &qword_2814E7BB0, 0x277CCACA8);
  *(inited + 56) = sub_232DB3688(0, &qword_2814E7BD8, 0x277CBEA90);
  *(inited + 64) = sub_232DB3688(0, &qword_2814E7BB8, 0x277CCABB0);
  *(inited + 72) = sub_232DB3688(0, &qword_2814E7C10, 0x277CC34B0);
  sub_232DAA714(inited);
  swift_setDeallocating();
  v48 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v49 = sub_232E015C0();

  v50 = [v48 initWithArray_];

  sub_232E016F0();
  v51 = objc_opt_self();
  v52 = sub_232E016E0();

  v53 = sub_232E00C50();
  *(v0 + 328) = 0;
  v54 = [v51 unarchivedObjectOfClasses:v52 fromData:v53 error:v0 + 328];

  v55 = *(v0 + 328);
  if (!v54)
  {
    v60 = *(v0 + 408);
    v79 = *(v0 + 416);
    v62 = *(v0 + 376);
    v61 = *(v0 + 384);
    v63 = v55;
    sub_232E00AE0();

    swift_willThrow();
    sub_232DB091C(v80, v37);

    sub_232DB85AC();
    v64 = *(v61 + 8);
    v64(v60, v62);
    v64(v79, v62);
    goto LABEL_9;
  }

  v56 = v55;
  sub_232E01850();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD72F0, &unk_232E06800);
  if (!swift_dynamicCast())
  {
    goto LABEL_35;
  }

  v57 = *(v0 + 336);
  *(v0 + 288) = 0xD000000000000012;
  *(v0 + 296) = 0x8000000232E0CD90;
  sub_232E018B0();
  if (*(v57 + 16) && (v58 = sub_232DD56AC(v0 + 96), (v59 & 1) != 0))
  {
    sub_232DAB730(*(v57 + 56) + 32 * v58, v0 + 200);
  }

  else
  {
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
  }

  *(v0 + 248) = *(v0 + 216);
  *(v0 + 232) = *(v0 + 200);
  if (*(v0 + 256))
  {

    sub_232DBD2E0(v0 + 96);
    sub_232D734CC((v0 + 232), (v0 + 168));
  }

  else
  {
    *(v0 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73D8, &qword_232E06268);
    *(v0 + 168) = MEMORY[0x277D84F90];

    sub_232DBD2E0(v0 + 96);
    sub_232DAB434(v0 + 232, &qword_27DDD74C0, &qword_232E07DF0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73D8, &qword_232E06268);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:

    sub_232DB091C(v35, v37);
    v78 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v65 = *(v0 + 344);
  sub_232E01270();
  sub_232E018F0();

  v78 = v65;
  if (v65 >> 62)
  {
    goto LABEL_40;
  }

  v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:
  v67 = *(v0 + 464);
  v68 = *(v0 + 440);
  v69 = *(v0 + 424);
  *(v0 + 352) = v66;
  v70 = sub_232E01AB0();
  MEMORY[0x238395970](v70);

  sub_232E01370();

  sub_232DB091C(v35, v37);
  v67(v68, v69);
LABEL_36:
  v72 = *(v0 + 408);
  v71 = *(v0 + 416);
  v74 = *(v0 + 376);
  v73 = *(v0 + 384);
  sub_232DB85AC();
  v75 = *(v73 + 8);
  v75(v72, v74);
  v75(v71, v74);

  v76 = *(v0 + 8);

  return v76(v78);
}

uint64_t sub_232DBCC1C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_232DBCD10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_232DBCD68(*a1, *(v2 + 24));
  *a2 = result;
  return result;
}

id sub_232DBCD68(void *a1, uint64_t *a2)
{
  v4 = sub_232E00CE0();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232E00BE0();
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[11];
  v39 = a2[10];
  v40 = v12;

  v38 = a1;
  v13 = [a1 attributeSet];
  sub_232E013F0();
  sub_232E013C0();
  v14 = sub_232E014C0();

  v15 = [v13 attributeForKey_];

  if (v15)
  {
    sub_232E01850();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {

LABEL_14:
    sub_232DAB434(&v44, &qword_27DDD74C0, &qword_232E07DF0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v16 = v41;
  if (![v13 attributeForKey_] || (v34 = v16, sub_232E01850(), swift_unknownObjectRelease(), sub_232DAB434(&v44, &qword_27DDD74C0, &qword_232E07DF0), !objc_msgSend(v13, sel_attributeForKey_, *MEMORY[0x277CC2750])))
  {

    v44 = 0u;
    v45 = 0u;
    goto LABEL_14;
  }

  sub_232E01850();
  swift_unknownObjectRelease();
  sub_232DAB434(&v44, &qword_27DDD74C0, &qword_232E07DF0);
  v17 = objc_allocWithZone(sub_232E012E0());

  v18 = sub_232E012C0();
  v19 = sub_232E012D0();
  if (!v20)
  {

    return 0;
  }

  v33 = v19;
  v34 = v20;
  *&v44 = 0x6469754772657375;
  *(&v44 + 1) = 0xEA00000000002E65;
  MEMORY[0x238395970](v10, v11);
  v21 = [v18 supportSiteURL];
  if (v21)
  {
    v22 = v21;
    sub_232E00BB0();

    v23 = sub_232E00B70();
    (*(v35 + 8))(v9, v7);
  }

  else
  {
    v23 = 0;
  }

  [v13 setContentURL_];

  v25 = sub_232E014C0();
  [v13 setDomainIdentifier_];

  if (v40)
  {
    v26 = sub_232E014C0();
  }

  else
  {
    v26 = 0;
  }

  [v13 setVersion_];

  v27 = sub_232E014C0();
  [v13 setKind_];

  v28 = sub_232E014C0();

  v29 = v38;
  [v38 setUniqueIdentifier_];

  v30 = sub_232E014C0();

  [v29 setDomainIdentifier_];

  [v29 setAttributeSet_];
  sub_232E00C80();
  v31 = sub_232E00CA0();
  (*(v36 + 8))(v6, v37);
  [v29 setExpirationDate_];

  v32 = v29;
  return v29;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_232DBD398()
{
  result = qword_27DDD74E8;
  if (!qword_27DDD74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD74E8);
  }

  return result;
}

uint64_t sub_232DBD42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232DBD4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_232DBD5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a10, a11) - 8);
  v24 = v12 + ((*(v21 + 80) + 16) & ~*(v21 + 80));

  return a12(a1, a2, a3, a4, a5, a6, a7, a8, a9, v24);
}

void sub_232DBD72C(uint64_t a1)
{
  if (!qword_2814E8490)
  {
    sub_232E00BE0();
    v1 = sub_232E01840();
    if (!v2)
    {
      atomic_store(v1, &qword_2814E8490);
    }
  }
}

uint64_t sub_232DBD7AC(uint64_t a1)
{
  result = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_232DBD850(uint64_t a1)
{
  result = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_232DBD8E4(uint64_t a1)
{
  sub_232DB8A54();
  if (v1 <= 0x3F)
  {
    sub_232DBD72C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_232DBD9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_232DBDA5C(uint64_t a1)
{
  if (!qword_2814E7C38)
  {
    sub_232DB3688(255, &qword_2814E7C10, 0x277CC34B0);
    v1 = sub_232E01620();
    if (!v2)
    {
      atomic_store(v1, &qword_2814E7C38);
    }
  }
}

unint64_t sub_232DBDAD0()
{
  result = qword_2814E80B8[0];
  if (!qword_2814E80B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E80B8);
  }

  return result;
}

uint64_t sub_232DBDB24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_232DBDBAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232DBDBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_232DBDC4C()
{
  result = qword_27DDD7510;
  if (!qword_27DDD7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7510);
  }

  return result;
}

unint64_t sub_232DBDCA0()
{
  result = qword_2814E7F58[0];
  if (!qword_2814E7F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E7F58);
  }

  return result;
}

uint64_t sub_232DBDD3C(uint64_t a1)
{
  result = sub_232E00BE0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_232DBDDCC()
{
  result = qword_27DDD7548;
  if (!qword_27DDD7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7548);
  }

  return result;
}

unint64_t sub_232DBDE24()
{
  result = qword_27DDD7550;
  if (!qword_27DDD7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7550);
  }

  return result;
}

unint64_t sub_232DBDE7C()
{
  result = qword_27DDD7558;
  if (!qword_27DDD7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7558);
  }

  return result;
}

unint64_t sub_232DBDED4()
{
  result = qword_2814E7F48;
  if (!qword_2814E7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7F48);
  }

  return result;
}

unint64_t sub_232DBDF2C()
{
  result = qword_2814E7F50;
  if (!qword_2814E7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7F50);
  }

  return result;
}

unint64_t sub_232DBDF84()
{
  result = qword_27DDD7560;
  if (!qword_27DDD7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7560);
  }

  return result;
}

unint64_t sub_232DBDFDC()
{
  result = qword_27DDD7568;
  if (!qword_27DDD7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7568);
  }

  return result;
}

unint64_t sub_232DBE034()
{
  result = qword_2814E80A8;
  if (!qword_2814E80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E80A8);
  }

  return result;
}

unint64_t sub_232DBE08C()
{
  result = qword_2814E80B0;
  if (!qword_2814E80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E80B0);
  }

  return result;
}

unint64_t sub_232DBE0E0()
{
  result = qword_2814E8008[0];
  if (!qword_2814E8008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E8008);
  }

  return result;
}

unint64_t sub_232DBE134(uint64_t a1, uint64_t a2)
{
  v2 = sub_232E01A10();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_232DBE194()
{
  result = qword_27DDD7580;
  if (!qword_27DDD7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7580);
  }

  return result;
}

unint64_t sub_232DBE1EC()
{
  result = qword_2814E7FF8;
  if (!qword_2814E7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7FF8);
  }

  return result;
}

unint64_t sub_232DBE244()
{
  result = qword_2814E8000;
  if (!qword_2814E8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8000);
  }

  return result;
}

void sub_232DBE2B4(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  if ([a1 closeAndReturnError_])
  {
    v3 = v11[0];
  }

  else
  {
    v4 = v11[0];
    v5 = sub_232E00AE0();

    swift_willThrow();
  }

  v11[0] = 0;
  v6 = [a2 closeAndReturnError_];
  v7 = v11[0];
  if (v6)
  {

    v8 = v7;
  }

  else
  {
    v9 = v11[0];
    v10 = sub_232E00AE0();

    swift_willThrow();
  }
}

uint64_t sub_232DBE3E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v2 = result;
    sub_232DB0970(result, a2);
    sub_232DBE888();
    sub_232E01730();
    return sub_232DB0E28(v2, a2);
  }

  return result;
}

uint64_t sub_232DBE468(void *a1, void *a2)
{
  v40 = a2;
  v3 = sub_232E00E00();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = sub_232E00DF0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  (*(v11 + 104))(&v35 - v15, *MEMORY[0x277D832C0], v10);
  (*(v4 + 104))(v9, *MEMORY[0x277D832D0], v3);
  v35 = v11;
  v36 = v16;
  v17 = *(v11 + 16);
  v18 = v16;
  v19 = v4;
  v38 = v10;
  v17(v14, v18, v10);
  v20 = *(v4 + 16);
  v37 = v9;
  v39 = v3;
  v20(v7, v9, v3);
  v21 = swift_allocObject();
  v22 = v40;
  *(v21 + 16) = v40;
  sub_232E00DD0();
  swift_allocObject();
  v23 = v22;
  v24 = v43;
  sub_232E00DE0();
  if (!v24)
  {
    v43 = v23;
    while (1)
    {
      v25 = sub_232E01720();
      v27 = v26;
      if (v26 >> 60 == 15)
      {
        goto LABEL_14;
      }

      v28 = v25;
      v41 = v25;
      v42 = v26;
      sub_232DB0970(v25, v26);
      sub_232DBE888();
      sub_232E00DB0();
      sub_232DB0E28(v41, v42);
      if ((v27 >> 62) > 1)
      {
        if (v27 >> 62 != 2)
        {
LABEL_13:
          sub_232DB0E28(v28, v27);
LABEL_14:
          sub_232E00DC0();

          v33 = a1;
          v34 = v43;
          goto LABEL_16;
        }

        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        sub_232DB0E28(v28, v27);
        v30 = v31 - v32;
        if (__OFSUB__(v31, v32))
        {
          __break(1u);
          sub_232DB0E28(v41, v42);
          sub_232DB0E28(v28, v27);

          v23 = v43;
          break;
        }
      }

      else
      {
        if (v27 >> 62 != 1)
        {
          goto LABEL_13;
        }

        result = sub_232DB0E28(v28, v27);
        LODWORD(v30) = HIDWORD(v28) - v28;
        if (__OFSUB__(HIDWORD(v28), v28))
        {
          __break(1u);
          return result;
        }

        v30 = v30;
      }

      if (v30 < 0x8000)
      {
        goto LABEL_14;
      }
    }
  }

  v33 = a1;
  v34 = v23;
LABEL_16:
  sub_232DBE2B4(v33, v34);
  (*(v19 + 8))(v37, v39);
  return (*(v35 + 8))(v36, v38);
}

unint64_t sub_232DBE888()
{
  result = qword_2814E8478;
  if (!qword_2814E8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8478);
  }

  return result;
}

uint64_t sub_232DBE8DC()
{
  v7 = sub_232E01760();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_232E01750();
  MEMORY[0x28223BE20](v3);
  v4 = sub_232E011C0();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_232DB3688(0, &qword_2814E7C00, 0x277D85C78);
  sub_232E011B0();
  v8 = MEMORY[0x277D84F90];
  sub_232DC0A30(&qword_2814E7C08, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7460, &unk_232E06530);
  sub_232DC0A78(&qword_2814E7C30, &qword_27DDD7460, &unk_232E06530);
  sub_232E01860();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_232E01790();
  qword_27DDD7588 = result;
  return result;
}

Swift::Void __swiftcall SupportFlowSessionProcessor.processAnalytics()()
{
  v1 = sub_232E01190();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232E011C0();
  v5 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DDD7248 != -1)
  {
    swift_once();
  }

  v11[1] = qword_27DDD7588;
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_232DBEE24;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232DBF518;
  aBlock[3] = &block_descriptor_2;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_232E011A0();
  v13 = MEMORY[0x277D84F90];
  sub_232DC0A30(&qword_27DDD7590, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7598, &unk_232E06F80);
  sub_232DC0A78(&qword_27DDD75A0, &qword_27DDD7598, &unk_232E06F80);
  sub_232E01860();
  MEMORY[0x238395BB0](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v12);
}

uint64_t sub_232DBEE4C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_232E012A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E00CE0();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = sub_232DC06AC();
  if (v13)
  {
    v40 = v13;
    sub_232E00CD0();
    sub_232E01210();
    v39 = v5;
    v14 = COERCE_DOUBLE(sub_232E01200());
    if (v15)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = v14;
    }

    sub_232E00C90();
    sub_232E01280();
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000015, 0x8000000232E0CEF0);
    sub_232E016D0();
    v37 = ObjectType;
    sub_232E01370();

    v38 = v12;
    v17 = *(v2 + 8);
    v17(v4, v1);
    sub_232E01280();
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000013, 0x8000000232E0CF10);
    sub_232E016D0();
    MEMORY[0x238395970](2629747, 0xE300000000000000);
    sub_232E01C30();
    v18 = sub_232E01C20();
    MEMORY[0x238395970](v18);

    MEMORY[0x238395970](0x73646E6F63657320, 0xE900000000000029);
    sub_232E01370();

    v17(v4, v1);
    sub_232E01280();
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CF30);
    sub_232E016D0();
    MEMORY[0x238395970](2629747, 0xE300000000000000);
    sub_232E01C30();
    v19 = sub_232E01C20();
    MEMORY[0x238395970](v19);

    MEMORY[0x238395970](0x73646E6F63657320, 0xE900000000000029);
    sub_232E01370();

    v17(v4, v1);
    sub_232E01280();
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000013, 0x8000000232E0CF50);
    sub_232E016D0();
    MEMORY[0x238395970](2629747, 0xE300000000000000);
    sub_232E01C30();
    v20 = sub_232E01C20();
    MEMORY[0x238395970](v20);

    MEMORY[0x238395970](0x73646E6F63657320, 0xE900000000000029);
    sub_232E01370();

    v17(v4, v1);
    sub_232E01280();
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_232E018F0();

    v43 = 0xD000000000000026;
    v44 = 0x8000000232E0CF70;
    v21 = sub_232E00CC0();
    MEMORY[0x238395970](v21);

    sub_232E01370();

    v17(v4, v1);
    v23 = v41;
    v22 = v42;
    v24 = *(v42 + 16);
    v25 = v10;
    v36 = v10;
    v26 = v39;
    v24(v41, v25, v39);
    v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v28 = (v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    (*(v22 + 32))(v32 + v27, v23, v26);
    *(v32 + v28) = v16 * 3600.0;
    *(v32 + v29) = v16 * 86400.0;
    *(v32 + v30) = v16 * 604800.0;
    *(v32 + v31) = v40;
    *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
    sub_232E00EB0();

    v33 = *(v22 + 8);
    v33(v36, v26);
    return (v33)(v38, v26);
  }

  else
  {
    sub_232E01280();
    sub_232E01380();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_232DBF518(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232DBF5BC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75A8, &qword_232E06FC8);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = v80 - v10;
  v99 = sub_232E00A00();
  v110 = *(v99 - 8);
  v11 = MEMORY[0x28223BE20](v99);
  v105 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v109 = v80 - v14;
  MEMORY[0x28223BE20](v13);
  v104 = v80 - v15;
  v103 = sub_232E00CE0();
  v16 = *(v103 - 8);
  v17 = MEMORY[0x28223BE20](v103);
  v98 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v97 = v80 - v20;
  MEMORY[0x28223BE20](v19);
  v102 = v80 - v21;
  v22 = sub_232E00EF0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v101 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_232E012A0();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a2;

  v29 = sub_232DC0230(sub_232DC09A8, v112, a1);
  v30 = *(v29 + 16);
  if (v30)
  {
    if (v30 >= 0x64)
    {
      v31 = 100;
    }

    else
    {
      v31 = *(v29 + 16);
    }

    v32 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v80[1] = v29;
    v33 = v29 + v32;
    v34 = sub_232E01240();
    v35 = v33;
    v91 = v34;
    v90 = "cess lookback events: ";
    v37 = *(v23 + 16);
    v36 = v23 + 16;
    v89 = v37;
    v88 = *(v36 + 56);
    v87 = (v16 + 16);
    v108 = (v16 + 8);
    v83 = *MEMORY[0x277D6A870];
    v82 = *MEMORY[0x277D6A878];
    v100 = (v26 + 8);
    v86 = (v110 + 8);
    v81 = *MEMORY[0x277D6A868];
    v92 = v36;
    v85 = (v36 - 8);
    v80[0] = v31;
    v38 = a3;
    v39 = v31;
    v96 = v38;
    v40 = v102;
    v41 = v103;
    v42 = v101;
    v95 = v25;
    v94 = v28;
    v93 = v22;
    do
    {
      v106 = v39;
      v107 = v35;
      v89(v42);
      sub_232E00EE0();
      v50 = *v87;
      v51 = v97;
      (*v87)(v97, v40, v41);
      v52 = v98;
      sub_232E00C90();
      sub_232E009E0();
      v50(v51, v40, v41);
      sub_232E00C90();
      sub_232E009E0();
      v50(v51, v40, v41);
      sub_232E00C90();
      sub_232E009E0();
      sub_232E009F0();
      sub_232E009D0();
      v53 = objc_allocWithZone(MEMORY[0x277CCA970]);
      v54 = sub_232E00CA0();
      v55 = sub_232E00CA0();
      v56 = [v53 initWithStartDate:v54 endDate:v55];

      v57 = *v108;
      v110 = v57;
      (v57)(v52, v41);
      (v57)(v51, v41);
      v58 = sub_232E01230();

      if (v58)
      {
        v59 = 1;
        LODWORD(v43) = v83;
        v60 = 1;
        v61 = v101;
      }

      else
      {
        v84 = 0;
        sub_232E009F0();
        sub_232E009D0();
        v62 = objc_allocWithZone(MEMORY[0x277CCA970]);
        v63 = sub_232E00CA0();
        v64 = sub_232E00CA0();
        v65 = [v62 initWithStartDate:v63 endDate:v64];

        v66 = v110;
        v66(v52, v41);
        v66(v51, v41);
        v67 = sub_232E01230();

        if (v67)
        {
          v59 = 1;
          LODWORD(v43) = v81;
          v60 = 1;
        }

        else
        {
          sub_232E009F0();
          sub_232E009D0();
          v68 = objc_allocWithZone(MEMORY[0x277CCA970]);
          v69 = v66;
          v70 = sub_232E00CA0();
          v71 = sub_232E00CA0();
          v43 = [v68 initWithStartDate:v70 endDate:v71];

          v69(v52, v41);
          v69(v51, v41);
          v72 = sub_232E01230();

          v60 = 0;
          v59 = v72 != 0;
          LODWORD(v43) = v81;
        }

        v61 = v101;
        v58 = v84;
      }

      v73 = sub_232E00E60();
      v74 = *(v73 - 8);
      v75 = *(v74 + 56);
      v75(v111, 1, 1, v73);
      if (v58)
      {
        v76 = 1;
      }

      else
      {
        v76 = v60;
      }

      v77 = v106;
      if ((v76 & 1) != 0 || v59)
      {
        if (v76)
        {
          v43 = v43;
        }

        else
        {
          v43 = v82;
        }

        v44 = v111;
        sub_232DC09C8(v111);
        (*(v74 + 104))(v44, v43, v73);
        v75(v44, 0, 1, v73);
      }

      v45 = v111;
      sub_232E00EC0();
      v46 = v94;
      sub_232E01280();
      sub_232E01370();
      v47 = v95;
      v84 = *v100;
      v84(v46, v95);
      sub_232DC09C8(v45);
      v48 = *v86;
      v49 = v99;
      (*v86)(v105, v99);
      v48();
      (v48)(v104, v49);
      v40 = v102;
      v41 = v103;
      (v110)(v102, v103);
      v42 = v61;
      (*v85)(v61, v93);
      v35 = v107 + v88;
      v39 = v77 - 1;
    }

    while (v39);

    sub_232E01280();
    v115 = 0;
    v116 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000017, 0x8000000232E0CFD0);
    v114 = v80[0];
    v78 = sub_232E01AB0();
    MEMORY[0x238395970](v78);

    MEMORY[0x238395970](0xD00000000000001FLL, 0x8000000232E0CFF0);
    sub_232E01360();

    return (v84)(v46, v47);
  }

  else
  {

    sub_232E01280();
    sub_232E01360();
    return (*(v26 + 8))(v28, v25);
  }
}

BOOL sub_232DC0100(uint64_t a1, uint64_t a2)
{
  v2 = sub_232E00CE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E00EE0();
  sub_232DC0A30(&qword_27DDD75B0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v6 = sub_232E01490();
  (*(v3 + 8))(v5, v2);
  return (v6 & 1) == 0;
}

unint64_t sub_232DC0230(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v47 = a2;
  v6 = sub_232E00EF0();
  v7 = MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v40 - v10;
  result = MEMORY[0x28223BE20](v9);
  v50 = a3;
  v51 = &v40 - v13;
  v14 = 0;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v48 = v12;
  v49 = v12 + 32;
  v43 = (v12 + 8);
  v44 = v12 + 16;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

    v23 = v4;
LABEL_10:
    v24 = *(v50 + 56);
    v25 = v48;
    v42 = *(v48 + 72);
    v26 = v45;
    (*(v48 + 16))(v45, v24 + v42 * (__clz(__rbit64(v20)) | (v14 << 6)), v6);
    v27 = *(v25 + 32);
    v28 = v6;
    v29 = v51;
    v30 = v28;
    v27(v51, v26);
    v31 = v46(v29);
    v4 = v23;
    if (v23)
    {
      (*v43)(v51, v30);
      v39 = v41;

      return v39;
    }

    v20 &= v20 - 1;
    if (v31)
    {
      v6 = v30;
      (v27)(v40, v51, v30);
      v32 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_232DF8FB0(0, *(v32 + 16) + 1, 1);
        v6 = v30;
        v32 = v52;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v38 = v35 + 1;
        v41 = v35;
        sub_232DF8FB0((v34 > 1), v35 + 1, 1);
        v36 = v38;
        v35 = v41;
        v6 = v30;
        v32 = v52;
      }

      *(v32 + 16) = v36;
      v37 = *(v48 + 80);
      v41 = v32;
      result = (v27)(v32 + ((v37 + 32) & ~v37) + v35 * v42, v40, v6);
    }

    else
    {
      v6 = v30;
      result = (*v43)(v51, v30);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v41;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      v23 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id SupportFlowSessionProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SupportFlowSessionProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SupportFlowSessionProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DC06AC()
{
  v0 = sub_232E012A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232DB3688(0, &qword_27DDD75B8, 0x277CCA8D8);
  v4 = sub_232E01800();
  if (!v4)
  {
    v4 = [objc_opt_self() mainBundle];
  }

  v5 = v4;
  v6 = sub_232E014C0();
  v7 = sub_232E014C0();
  v8 = [v5 pathForResource:v6 ofType:v7];

  if (v8 && (v9 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) initWithContentsOfFile_], v8, v9))
  {
    v10 = [v9 allKeys];
    v11 = sub_232E015D0();

    v12 = sub_232DAA4D0(v11);

    return v12;
  }

  else
  {
    sub_232E01280();
    sub_232E01380();
    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

uint64_t sub_232DC08DC(uint64_t a1)
{
  v3 = *(sub_232E00CE0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_232DBF5BC(a1, v1 + v4, v11, v8, v9, v10);
}

uint64_t sub_232DC09C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75A8, &qword_232E06FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232DC0A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232DC0A78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232DC0C54(uint64_t a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_232DC0D04;

  return sub_232DC4850(a1);
}

uint64_t sub_232DC0D04(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 40) = a1;

  v4 = swift_task_alloc();
  *(v3 + 48) = v4;
  *v4 = v6;
  v4[1] = sub_232DC0E3C;

  return MEMORY[0x2821D93D8](a1);
}

uint64_t sub_232DC0E3C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_232DC0FD8;
  }

  else
  {

    v2 = sub_232DC0F58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC0F58()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  (*(v1 + 16))(v1, 1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_232DC0FD8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  swift_unknownObjectRelease();
  v3 = sub_232E00AD0();

  (*(v2 + 16))(v2, 0, v3);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_232DC1088(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    v9 = *(*(v5 + 64) + 40);
    swift_unknownObjectRetain();
    sub_232D734CC(&v11, v9);
    return swift_continuation_throwingResume();
  }
}

id DeviceProfileExporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceProfileExporter.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceProfileExporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DC127C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA72F4;

  return sub_232DC0C54(v2, v3);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_232DC1370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_232DA7C78;

  return sub_232DF3E24(a1, v4, v5, v6);
}

double sub_232DC143C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_232DD5634(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_232DC2C88(&qword_27DDD7470, &qword_232E06578, sub_232DB3718);
      v10 = v12;
    }

    sub_232D734CC((*(v10 + 56) + 32 * v8), a3);
    sub_232DC2480(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_232DC1518(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7480, &qword_232E06588);
  v37 = v4;
  result = sub_232E019F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_232DC17EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_232E019F0();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_232DC1A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7488, &unk_232E06590);
  v33 = v4;
  result = sub_232E019F0();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_232DB0970(v34, *(&v34 + 1));
      }

      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
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
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_232DC1D6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = sub_232E019F0();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_232DAB730(v27, v38);
      }

      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_232DC2030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75E0, &qword_232E07088);
  v34 = v4;
  result = sub_232E019F0();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_232DC22D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_232E01880() + 1) & ~v5;
    do
    {
      sub_232E01BB0();

      sub_232E01530();
      v9 = sub_232E01BE0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_232DC2480(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_232E01880() + 1) & ~v5;
    do
    {
      sub_232E01BB0();

      sub_232E01530();
      v10 = sub_232E01BE0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_232DC2630(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_232E01880() + 1) & ~v5;
    do
    {
      sub_232E01BB0();

      sub_232E01530();
      v9 = sub_232E01BE0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_232DC27F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7480, &qword_232E06588);
  v2 = *v0;
  v3 = sub_232E019E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_232DC2980(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_232E019E0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_232DC2ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7488, &unk_232E06590);
  v2 = *v0;
  v3 = sub_232E019E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_232DB0970(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_232DC2C88(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_232E019E0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_232DAB730(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_232DC2E28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75E0, &qword_232E07088);
  v2 = *v0;
  v3 = sub_232E019E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_232DC2F90(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_232DADB5C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_232DC3084(uint64_t result)
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

  v3 = sub_232DADD9C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = sub_232E00EA0();
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

_OWORD *sub_232DC31B0(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_232DD5634(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_232D734CC(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_232DC2C88(&qword_27DDD7470, &qword_232E06578, sub_232DB3718);
    goto LABEL_7;
  }

  sub_232DC1D6C(v14, a4 & 1, &qword_27DDD7470, &qword_232E06578, sub_232DB3718);
  v20 = sub_232DD5634(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_232E01B40();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D839B0]);
  sub_232DC3A8C(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

_OWORD *sub_232DC3350(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_232DD5634(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_232D734CC(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_232DC2C88(&qword_27DDD7470, &qword_232E06578, sub_232DB3718);
    goto LABEL_7;
  }

  sub_232DC1D6C(v14, a4 & 1, &qword_27DDD7470, &qword_232E06578, sub_232DB3718);
  v20 = sub_232DD5634(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_232E01B40();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D83B88]);
  sub_232DC3A08(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

_OWORD *sub_232DC34F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_232DD5634(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_232D734CC(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_232DC2C88(&qword_27DDD7470, &qword_232E06578, sub_232DB3718);
    goto LABEL_7;
  }

  sub_232DC1D6C(v16, a5 & 1, &qword_27DDD7470, &qword_232E06578, sub_232DB3718);
  v22 = sub_232DD5634(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_232E01B40();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_232DC3984(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v28);
}

_OWORD *sub_232DC371C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v31 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v13 = *a5;
  v15 = sub_232DD5634(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_232D734CC(&v30, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_232DC2C88(&qword_27DDD7470, &qword_232E06578, sub_232DB3718);
    goto LABEL_7;
  }

  sub_232DC1D6C(v18, a4 & 1, &qword_27DDD7470, &qword_232E06578, sub_232DB3718);
  v24 = sub_232DD5634(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_232E01B40();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v31);
  MEMORY[0x28223BE20](v26);
  v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  sub_232DC3B10(v15, a2, a3, v28, v21, a6);

  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

_OWORD *sub_232DC3984(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_232D734CC(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_232DC3A08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_232D734CC(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_232DC3A8C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_232D734CC(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_232DC3B10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_232D734CC(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_232DC3BE4()
{
  v1 = sub_232E012A0();
  v0[79] = v1;
  v0[80] = *(v1 - 8);
  v0[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC3CA0, 0, 0);
}

uint64_t sub_232DC3CA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7388, &qword_232E06210);
  inited = swift_initStackObject();
  v0[82] = inited;
  *(inited + 16) = xmmword_232E06FD0;
  *(inited + 32) = sub_232E014D0();
  *(inited + 40) = v2;
  *(inited + 48) = sub_232E014D0();
  *(inited + 56) = v3;
  *(inited + 64) = sub_232E014D0();
  *(inited + 72) = v4;
  *(inited + 80) = sub_232E014D0();
  *(inited + 88) = v5;
  *(inited + 96) = sub_232E014D0();
  *(inited + 104) = v6;
  *(inited + 112) = sub_232E014D0();
  *(inited + 120) = v7;
  *(inited + 128) = sub_232E014D0();
  *(inited + 136) = v8;
  *(inited + 144) = sub_232E014D0();
  *(inited + 152) = v9;
  *(inited + 160) = sub_232E014D0();
  *(inited + 168) = v10;
  *(inited + 176) = sub_232E014D0();
  *(inited + 184) = v11;
  *(inited + 192) = sub_232E014D0();
  *(inited + 200) = v12;
  *(inited + 208) = sub_232E014D0();
  *(inited + 216) = v13;
  *(inited + 224) = sub_232E014D0();
  *(inited + 232) = v14;
  *(inited + 240) = sub_232E014D0();
  *(inited + 248) = v15;
  *(inited + 256) = sub_232E014D0();
  *(inited + 264) = v16;
  *(inited + 272) = sub_232E014D0();
  *(inited + 280) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_232E06FE0;
  *(v18 + 32) = sub_232E014D0();
  *(v18 + 40) = v19;
  sub_232DC2F90(v18);
  v0[83] = inited;
  v0[84] = [objc_allocWithZone(MEMORY[0x277CBEB38]) initWithCapacity_];
  v20 = *(inited + 16);
  v0[85] = v20;
  if (v20)
  {
    v21 = objc_opt_self();
    v0[86] = v21;
    v0[87] = 0;
    v22 = v0[83];
    v0[88] = *(v22 + 32);
    v0[89] = *(v22 + 40);
    v23 = objc_allocWithZone(TPSDeviceCapability);

    v24 = [v23 init];
    v0[90] = v24;
    [v24 setType_];
    v25 = v24;
    v26 = sub_232E014C0();
    [v25 setKey_];

    v27 = [v21 targetValidationForCapability_];
    v0[91] = v27;
    v0[2] = v0;
    v0[7] = v0 + 64;
    v0[3] = sub_232DC40D4;
    v28 = swift_continuation_init();
    v0[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75D8, &qword_232E07078);
    v0[46] = MEMORY[0x277D85DD0];
    v0[47] = 1107296256;
    v0[48] = sub_232DC1088;
    v0[49] = &block_descriptor_3;
    v0[50] = v28;
    [v27 getCurrentStateWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v29 = v0[1];
    v30 = v0[84];

    return v29(v30);
  }
}

uint64_t sub_232DC40D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 736) = v1;
  if (v1)
  {
    v2 = sub_232DC4528;
  }

  else
  {
    v2 = sub_232DC41E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC41E4()
{
  sub_232D734CC((v0 + 512), (v0 + 480));
  sub_232DAB730(v0 + 480, v0 + 544);
  sub_232DC5444();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 720);

    swift_unknownObjectRelease();
  }

  else
  {
    v2 = *(v0 + 720);
    v3 = *(v0 + 712);
    v4 = *(v0 + 704);
    v5 = *(v0 + 672);
    __swift_project_boxed_opaque_existential_1((v0 + 480), *(v0 + 504));
    v6 = sub_232E01AC0();
    *(v0 + 608) = v4;
    *(v0 + 616) = v3;
    [v5 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 480));
  v7 = *(v0 + 696) + 1;
  if (v7 == *(v0 + 680))
  {

    v8 = *(v0 + 8);
    v9 = *(v0 + 672);

    return v8(v9);
  }

  else
  {
    *(v0 + 696) = v7;
    v11 = *(v0 + 688);
    v12 = *(v0 + 664) + 16 * v7;
    *(v0 + 704) = *(v12 + 32);
    *(v0 + 712) = *(v12 + 40);
    v13 = objc_allocWithZone(TPSDeviceCapability);

    v14 = [v13 init];
    *(v0 + 720) = v14;
    [v14 setType_];
    v15 = v14;
    v16 = sub_232E014C0();
    [v15 setKey_];

    v17 = [v11 targetValidationForCapability_];
    *(v0 + 728) = v17;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 512;
    *(v0 + 24) = sub_232DC40D4;
    v18 = swift_continuation_init();
    *(v0 + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75D8, &qword_232E07078);
    *(v0 + 368) = MEMORY[0x277D85DD0];
    *(v0 + 376) = 1107296256;
    *(v0 + 384) = sub_232DC1088;
    *(v0 + 392) = &block_descriptor_3;
    *(v0 + 400) = v18;
    [v17 getCurrentStateWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_232DC4528()
{
  v1 = v0[92];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[81];
  v5 = v0[80];
  v18 = v0[90];
  v19 = v0[79];
  swift_willThrow();
  sub_232E01250();
  v0[74] = 0;
  v0[75] = 0xE000000000000000;
  sub_232E018F0();

  v0[72] = 0xD00000000000001DLL;
  v0[73] = 0x8000000232E0D1E0;
  MEMORY[0x238395970](v3, v2);

  sub_232E01380();

  swift_unknownObjectRelease();
  (*(v5 + 8))(v4, v19);
  v6 = v0[87] + 1;
  if (v6 == v0[85])
  {

    v7 = v0[1];
    v8 = v0[84];

    return v7(v8);
  }

  else
  {
    v0[87] = v6;
    v10 = v0[86];
    v11 = v0[83] + 16 * v6;
    v0[88] = *(v11 + 32);
    v0[89] = *(v11 + 40);
    v12 = objc_allocWithZone(TPSDeviceCapability);

    v13 = [v12 init];
    v0[90] = v13;
    [v13 setType_];
    v14 = v13;
    v15 = sub_232E014C0();
    [v14 setKey_];

    v16 = [v10 targetValidationForCapability_];
    v0[91] = v16;
    v0[2] = v0;
    v0[7] = v0 + 64;
    v0[3] = sub_232DC40D4;
    v17 = swift_continuation_init();
    v0[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75D8, &qword_232E07078);
    v0[46] = MEMORY[0x277D85DD0];
    v0[47] = 1107296256;
    v0[48] = sub_232DC1088;
    v0[49] = &block_descriptor_3;
    v0[50] = v17;
    [v16 getCurrentStateWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_232DC4850(uint64_t a1)
{
  v1[62] = a1;
  v2 = sub_232E012A0();
  v1[63] = v2;
  v1[64] = *(v2 - 8);
  v1[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75C0, &qword_232E07050);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC4954, 0, 0);
}

id sub_232DC4954()
{
  v43 = v0;
  v1 = sub_232DB3558(MEMORY[0x277D84F90]);
  *(v0 + 480) = v1;
  v2 = objc_opt_self();
  *(v0 + 16) = [v2 isSeniorUser];
  *(v0 + 40) = MEMORY[0x277D839B0];
  sub_232D734CC((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v1;
  v4 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 48, *(v0 + 72));
  sub_232DC31B0(*v4, 3487349, 0xE300000000000000, isUniquelyReferenced_nonNull_native, &v42);
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v5 = v42;
  result = [v2 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  v8 = *(v0 + 496);
  v9 = [result userType];

  v10 = MEMORY[0x277D83B88];
  *(v0 + 104) = MEMORY[0x277D83B88];
  *(v0 + 80) = v9;
  sub_232D734CC((v0 + 80), (v0 + 112));
  LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
  v42 = v5;
  v11 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 112, *(v0 + 136));
  sub_232DC3350(*v11, 0x6570795472657375, 0xE800000000000000, v7, &v42);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v12 = v42;
  v13 = [v8 experiment];
  v14 = [v13 camp];

  *(v0 + 144) = v14;
  *(v0 + 168) = v10;
  sub_232D734CC((v0 + 144), (v0 + 176));
  LOBYTE(v14) = swift_isUniquelyReferenced_nonNull_native();
  v42 = v12;
  v15 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 176, *(v0 + 200));
  sub_232DC3350(*v15, 0x656D697265707865, 0xEE00706D6143746ELL, v14, &v42);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  *(v0 + 480) = v42;
  result = [v2 sharedInstance];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = [result lastMajorVersionUpdateDate];

  if (v17)
  {
    sub_232E00CB0();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = sub_232E00CE0();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v20, v18, 1, v21);
  sub_232DC53A8(v20, v19);
  v23 = (*(v22 + 48))(v19, 1, v21);
  v24 = *(v0 + 536);
  if (v23 == 1)
  {
    sub_232DAB434(*(v0 + 536), &qword_27DDD75C0, &qword_232E07050);
    sub_232DC143C(0xD00000000000001CLL, 0x8000000232E0D130, (v0 + 240));
    sub_232DAB434(v0 + 240, &qword_27DDD75C8, &qword_232E07058);
    v25 = *(v0 + 480);
  }

  else
  {
    *(v0 + 232) = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 208));
    (*(v22 + 32))(boxed_opaque_existential_1, v24, v21);
    sub_232D734CC((v0 + 208), (v0 + 432));
    v27 = *(v0 + 480);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v27;
    v29 = *(v0 + 456);
    v30 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 432, v29);
    v31 = *(v29 - 8);
    v32 = swift_task_alloc();
    (*(v31 + 16))(v32, v30, v29);
    sub_232DC371C(v32, 0xD00000000000001CLL, 0x8000000232E0D130, v28, &v42, v21);
    __swift_destroy_boxed_opaque_existential_1((v0 + 432));

    v25 = v42;
  }

  v33 = [objc_opt_self() tps_userLanguageCode];
  v34 = sub_232E014D0();
  v36 = v35;

  *(v0 + 296) = MEMORY[0x277D837D0];
  *(v0 + 272) = v34;
  *(v0 + 280) = v36;
  sub_232D734CC((v0 + 272), (v0 + 304));
  LOBYTE(v33) = swift_isUniquelyReferenced_nonNull_native();
  v42 = v25;
  v37 = *(v0 + 328);
  v38 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 304, v37);
  v39 = *(v37 - 8);
  v40 = swift_task_alloc();
  (*(v39 + 16))(v40, v38, v37);
  sub_232DC34F0(*v40, v40[1], 0xD00000000000001ALL, 0x8000000232E0D150, v33, &v42);
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));

  *(v0 + 480) = v42;
  v41 = swift_task_alloc();
  *(v0 + 544) = v41;
  *v41 = v0;
  v41[1] = sub_232DC4F60;

  return sub_232DC3BE4();
}

uint64_t sub_232DC4F60(uint64_t a1)
{
  *(*v1 + 552) = a1;

  return MEMORY[0x2822009F8](sub_232DC5060, 0, 0);
}

uint64_t sub_232DC5060()
{
  v12 = v0;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75D0, &qword_232E07068);
  sub_232E01460();
  sub_232DC143C(0xD000000000000012, 0x8000000232E0D170, (v0 + 368));
  sub_232DAB434(v0 + 368, &qword_27DDD75C8, &qword_232E07058);
  v1 = *(v0 + 480);
  v2 = *(v0 + 552);
  v3 = *(v0 + 520);
  v4 = *(v0 + 504);
  v5 = *(v0 + 512);
  sub_232E01250();
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_232E018F0();
  v6 = v11;
  *(v0 + 464) = v10;
  *(v0 + 472) = v6;
  MEMORY[0x238395970](0xD000000000000025, 0x8000000232E0D190);
  v7 = sub_232E01450();
  *(v0 + 488) = v7;
  sub_232E019A0();

  sub_232E01370();

  (*(v5 + 8))(v3, v4);

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_232DC53A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75C0, &qword_232E07050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_232DC5444()
{
  result = qword_2814E7BD0;
  if (!qword_2814E7BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814E7BD0);
  }

  return result;
}

unint64_t sub_232DC5498()
{
  result = qword_27DDD75E8;
  if (!qword_27DDD75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD75E8);
  }

  return result;
}

unint64_t sub_232DC54F0()
{
  result = qword_27DDD75F0;
  if (!qword_27DDD75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD75F0);
  }

  return result;
}

unint64_t sub_232DC5544()
{
  result = qword_2814E7CC8;
  if (!qword_2814E7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CC8);
  }

  return result;
}

uint64_t sub_232DC5598@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7628, &qword_232E074A8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v29 - v3;
  v36 = sub_232E00B10();
  v31 = *(v36 - 8);
  v4 = MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v29 - v6;
  v7 = sub_232E01320();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232E01300();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = objc_opt_self();

  [v17 isPhoneUI];
  sub_232E012F0();
  v30 = v11;
  v18 = *(v11 + 16);
  v32 = v10;
  v18(v14, v16, v10);

  v19 = v9;
  sub_232E01310();
  v20 = [*(v1 + 16) displayName];
  if (v20)
  {
    v21 = v20;
    sub_232E014D0();
  }

  v22 = v34;
  sub_232E00AF0();
  v23 = v7;
  v39[3] = v7;
  v39[4] = sub_232DC6854(&qword_2814E7C80, MEMORY[0x277D715D8]);
  v39[5] = sub_232DC6854(&qword_2814E7C88, MEMORY[0x277D715D0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  v25 = v33;
  (*(v33 + 16))(boxed_opaque_existential_1, v19, v7);
  v26 = v31;
  v27 = v36;
  (*(v31 + 16))(v35, v22, v36);
  (*(v26 + 56))(v37, 1, 1, v27);
  sub_232E00890();
  (*(v26 + 8))(v22, v27);
  (*(v25 + 8))(v19, v23);
  return (*(v30 + 8))(v16, v32);
}

uint64_t sub_232DC5A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_232DC5B30;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_232DC5B30(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_232DC5C34()
{
  result = qword_27DDD75F8;
  if (!qword_27DDD75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD75F8);
  }

  return result;
}

unint64_t sub_232DC5C88()
{
  result = qword_2814E7CC0;
  if (!qword_2814E7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CC0);
  }

  return result;
}

unint64_t sub_232DC5CE0()
{
  result = qword_27DDD7600;
  if (!qword_27DDD7600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7608, qword_232E07138);
    sub_232DC5C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7600);
  }

  return result;
}

uint64_t sub_232DC5D64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_232DC62C4();
  *v5 = v2;
  v5[1] = sub_232DA72F4;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_232DC5E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_232DA72F4;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_232DC5ED0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7628, &qword_232E074A8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_232E00B00();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232E00D60();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_232E014B0();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_232E00B10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_232E008F0();
  __swift_allocate_value_buffer(v10, qword_2814E9B20);
  __swift_project_value_buffer(v10, qword_2814E9B20);
  sub_232E014A0();
  sub_232E00D20();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_232E00B20();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_232E008E0();
}

unint64_t sub_232DC61BC()
{
  result = qword_2814E7CD8;
  if (!qword_2814E7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CD8);
  }

  return result;
}

unint64_t sub_232DC6214()
{
  result = qword_2814E7CB8;
  if (!qword_2814E7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CB8);
  }

  return result;
}

unint64_t sub_232DC626C()
{
  result = qword_2814E7C90;
  if (!qword_2814E7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7C90);
  }

  return result;
}

unint64_t sub_232DC62C4()
{
  result = qword_27DDD7610;
  if (!qword_27DDD7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7610);
  }

  return result;
}

unint64_t sub_232DC6328()
{
  result = qword_2814E7CB0;
  if (!qword_2814E7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CB0);
  }

  return result;
}

unint64_t sub_232DC637C()
{
  result = qword_2814E7CA8;
  if (!qword_2814E7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CA8);
  }

  return result;
}

unint64_t sub_232DC63D4()
{
  result = qword_2814E7CA0;
  if (!qword_2814E7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CA0);
  }

  return result;
}

uint64_t sub_232DC6428@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814E7CE0 != -1)
  {
    swift_once();
  }

  v2 = sub_232E008F0();
  v3 = __swift_project_value_buffer(v2, qword_2814E9B20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_232DC64D4()
{
  result = qword_27DDD7618;
  if (!qword_27DDD7618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7620, &qword_232E07378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7618);
  }

  return result;
}

uint64_t sub_232DC6538(uint64_t a1)
{
  v2 = sub_232DC5544();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_232DC6588()
{
  result = qword_2814E7C98;
  if (!qword_2814E7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7C98);
  }

  return result;
}

uint64_t sub_232DC65E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_232DA7C78;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_232DC66A4(uint64_t a1)
{
  v2 = sub_232DC63D4();

  return MEMORY[0x28210C4B8](a1, v2);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_232DC6714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_232DC675C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_232DC6854(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_232E01320();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232DC68A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = sub_232E012A0();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC696C, 0, 0);
}

uint64_t sub_232DC696C()
{
  [*(v0 + 320) beginIndexBatch];
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_232DC6A10;
  v2 = *(v0 + 320);

  return sub_232DCD814(v2);
}

uint64_t sub_232DC6A10()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_232DC6D64;
  }

  else
  {
    v2 = sub_232DC6B24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC6B24()
{
  v1 = v0[40];
  v2 = sub_232E00C50();
  v0[46] = v2;
  v0[10] = v0;
  v0[11] = sub_232DC6C54;
  v3 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_232DCA134;
  v0[29] = &block_descriptor_12;
  v0[30] = v3;
  [v1 endIndexBatchWithClientState:v2 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_232DC6C54()
{
  v1 = *(*v0 + 112);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_232DC70D0;
  }

  else
  {
    v2 = sub_232DC7060;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC6D64(uint64_t a1)
{
  v3 = v1[42];
  v2 = v1[43];
  v4 = v1[40];
  v5 = v1[41];
  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v6 = sub_232E01B50();
  MEMORY[0x238395970](v6);

  sub_232E01380();

  (*(v3 + 8))(v2, v5);
  v7 = sub_232E00C50();
  v1[48] = v7;
  v1[2] = v1;
  v1[3] = sub_232DC6F50;
  v8 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_232DCA134;
  v1[21] = &block_descriptor_8;
  v1[22] = v8;
  [v4 endIndexBatchWithClientState:v7 completionHandler:{v1 + 18, 0xD000000000000018, 0x8000000232E0D340}];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_232DC6F50()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_232DC71C4;
  }

  else
  {
    v2 = sub_232DC7148;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC7060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DC70D0()
{
  v1 = *(v0 + 368);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_232DC7148()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DC71C4()
{
  v1 = v0[48];
  v2 = v0[45];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_232DC7248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = sub_232E012A0();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC730C, 0, 0);
}

uint64_t sub_232DC730C()
{
  [*(v0 + 320) beginIndexBatch];
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_232DC73B0;
  v2 = *(v0 + 320);

  return sub_232DDA814(v2);
}

uint64_t sub_232DC73B0()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_232DC7704;
  }

  else
  {
    v2 = sub_232DC74C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC74C4()
{
  v1 = v0[40];
  v2 = sub_232E00C50();
  v0[46] = v2;
  v0[10] = v0;
  v0[11] = sub_232DC75F4;
  v3 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_232DCA134;
  v0[29] = &block_descriptor_20;
  v0[30] = v3;
  [v1 endIndexBatchWithClientState:v2 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_232DC75F4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_232DC8980;
  }

  else
  {
    v2 = sub_232DC895C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC7704(uint64_t a1)
{
  v3 = v1[42];
  v2 = v1[43];
  v4 = v1[40];
  v5 = v1[41];
  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v6 = sub_232E01B50();
  MEMORY[0x238395970](v6);

  sub_232E01380();

  (*(v3 + 8))(v2, v5);
  v7 = sub_232E00C50();
  v1[48] = v7;
  v1[2] = v1;
  v1[3] = sub_232DC78F0;
  v8 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_232DCA134;
  v1[21] = &block_descriptor_16;
  v1[22] = v8;
  [v4 endIndexBatchWithClientState:v7 completionHandler:{v1 + 18, 0xD000000000000018, 0x8000000232E0D340}];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_232DC78F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_232DC897C;
  }

  else
  {
    v2 = sub_232DC8984;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC7A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = sub_232E012A0();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC7AC4, 0, 0);
}

uint64_t sub_232DC7AC4()
{
  [*(v0 + 320) beginIndexBatch];
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_232DC7B68;
  v2 = *(v0 + 320);

  return sub_232DEBDC0(v2);
}

uint64_t sub_232DC7B68()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_232DC7DAC;
  }

  else
  {
    v2 = sub_232DC7C7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC7C7C()
{
  v1 = v0[40];
  v2 = sub_232E00C50();
  v0[46] = v2;
  v0[10] = v0;
  v0[11] = sub_232DC75F4;
  v3 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_232DCA134;
  v0[29] = &block_descriptor_28;
  v0[30] = v3;
  [v1 endIndexBatchWithClientState:v2 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_232DC7DAC(uint64_t a1)
{
  v3 = v1[42];
  v2 = v1[43];
  v4 = v1[40];
  v5 = v1[41];
  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v6 = sub_232E01B50();
  MEMORY[0x238395970](v6);

  sub_232E01380();

  (*(v3 + 8))(v2, v5);
  v7 = sub_232E00C50();
  v1[48] = v7;
  v1[2] = v1;
  v1[3] = sub_232DC78F0;
  v8 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_232DCA134;
  v1[21] = &block_descriptor_24;
  v1[22] = v8;
  [v4 endIndexBatchWithClientState:v7 completionHandler:{v1 + 18, 0xD000000000000018, 0x8000000232E0D340}];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_232DC7F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = a4;
  v5[42] = v4;
  v5[39] = a2;
  v5[40] = a3;
  v5[38] = a1;
  v6 = sub_232E012A0();
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC8060, 0, 0);
}

uint64_t sub_232DC8060()
{
  v1 = *(v0 + 320);
  [*(v0 + 336) beginIndexBatch];
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 368) = v2;
  *v2 = v0;
  v2[1] = sub_232DC8160;
  v3 = *(v0 + 336);

  return v5(v3);
}

uint64_t sub_232DC8160()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_232DC84B4;
  }

  else
  {
    v2 = sub_232DC8274;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC8274()
{
  v1 = v0[42];
  v2 = sub_232E00C50();
  v0[48] = v2;
  v0[10] = v0;
  v0[11] = sub_232DC83A4;
  v3 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_232DCA134;
  v0[29] = &block_descriptor_4;
  v0[30] = v3;
  [v1 endIndexBatchWithClientState:v2 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_232DC83A4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_232DC88B0;
  }

  else
  {
    v2 = sub_232D71BA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC84B4(uint64_t a1)
{
  v3 = v1[44];
  v2 = v1[45];
  v4 = v1[42];
  v5 = v1[43];
  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v6 = sub_232E01B50();
  MEMORY[0x238395970](v6);

  sub_232E01380();

  (*(v3 + 8))(v2, v5);
  v7 = sub_232E00C50();
  v1[50] = v7;
  v1[2] = v1;
  v1[3] = sub_232DC86A0;
  v8 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_232DCA134;
  v1[21] = &block_descriptor_4;
  v1[22] = v8;
  [v4 endIndexBatchWithClientState:v7 completionHandler:{v1 + 18, 0xD000000000000018, 0x8000000232E0D340}];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_232DC86A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_232DC882C;
  }

  else
  {
    v2 = sub_232DC87B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DC87B0()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DC882C()
{
  v1 = v0[50];
  v2 = v0[47];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_232DC88B0()
{
  v1 = *(v0 + 384);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_232DC8988(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7650, &unk_232E07500);
    v2 = sub_232E01A00();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_232D734CC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_232D734CC(v29, v30);
    result = sub_232E01890();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_232D734CC(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_232DC8C48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7650, &unk_232E07500);
    v2 = sub_232E01A00();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_232DAB730(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_232D734CC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_232D734CC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_232D734CC(v31, v32);
    result = sub_232E01890();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_232D734CC(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_232DC90BC(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___TPSContextualEventBuilder_eventType];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v2[OBJC_IVAR___TPSContextualEventBuilder_stream];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR___TPSContextualEventBuilder_dictionary] = a1;
  v6 = objc_opt_self();

  v7 = sub_232E01450();
  v8 = [v6 typeFromEventDictionary_];

  *v4 = v8;
  v4[8] = 0;
  if (*(a1 + 16) && (v9 = sub_232DD5634(0x6D6165727473, 0xE600000000000000), (v10 & 1) != 0))
  {
    sub_232DAB730(*(a1 + 56) + 32 * v9, v18);

    v11 = swift_dynamicCast();
    v12 = v15;
    v13 = v16;
    if (!v11)
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {

    v12 = 0;
    v13 = 0;
  }

  *v5 = v12;
  *(v5 + 1) = v13;

  v17.receiver = v2;
  v17.super_class = type metadata accessor for TipsContextualEventBuilder();
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_232DC927C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR___TPSContextualEventBuilder_eventType + 8))
  {
    return 0;
  }

  v4 = *(v2 + OBJC_IVAR___TPSContextualEventBuilder_eventType);
  if (!v4)
  {
    if (sub_232DC9458(a1, a2))
    {
      v12 = objc_opt_self();

      sub_232DC8C48(v13);

      v9 = sub_232E01450();

      v10 = [v12 contextualBiomeEventFromDuetEventDictionary_];
      goto LABEL_9;
    }

    return 0;
  }

  if (v4 == 3)
  {

    sub_232DC8C48(v7);

    v6 = MEMORY[0x277D71710];
    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return 0;
  }

  sub_232DC8C48(v5);

  v6 = MEMORY[0x277D71728];
LABEL_8:
  v8 = objc_allocWithZone(v6);
  v9 = sub_232E01450();

  v10 = [v8 initWithDictionary_];
LABEL_9:
  v11 = v10;

  return v11;
}

uint64_t sub_232DC9458(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR___TPSContextualEventBuilder_eventType + 8) & 1) != 0 || *(v2 + OBJC_IVAR___TPSContextualEventBuilder_eventType))
  {
    v3 = 0;
  }

  else
  {
    v5 = v2 + OBJC_IVAR___TPSContextualEventBuilder_stream;
    v6 = *(v2 + OBJC_IVAR___TPSContextualEventBuilder_stream);
    v7 = *(v5 + 8);
    v8 = sub_232E014D0();
    if (v7)
    {
      if (v6 == v8 && v7 == v9)
      {
        v3 = 1;
      }

      else
      {
        v3 = sub_232E01AD0();
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

id TipsContextualEventBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipsContextualEventBuilder.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TipsContextualEventBuilder();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_232DC9690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v9 = sub_232E012A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() standardUserDefaults];
  *&v23 = 0xD00000000000001ELL;
  *(&v23 + 1) = 0x8000000232E0D510;
  MEMORY[0x238395970](a1, a2);

  v14 = sub_232E014C0();

  v15 = [v13 objectForKey_];

  if (v15)
  {
    sub_232E01850();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = v21;
      v16 = v22;
      v18 = v22 >> 62;
      if ((v22 >> 62) > 1)
      {
        if (v18 != 2 || *(v21 + 16) == *(v21 + 24))
        {
          goto LABEL_15;
        }
      }

      else if (v18)
      {
        if (v21 == v21 >> 32)
        {
LABEL_15:
          sub_232DB091C(v21, v22);
          goto LABEL_16;
        }
      }

      else if ((v22 & 0xFF000000000000) == 0)
      {
        goto LABEL_15;
      }

      sub_232E00990();
      swift_allocObject();
      sub_232E00980();
      a3();
      sub_232E00970();
      sub_232DB091C(v17, v16);

      return LOWORD(v25[0]);
    }
  }

  else
  {
    sub_232DAB434(v25, &qword_27DDD74C0, &qword_232E07DF0);
  }

LABEL_16:
  sub_232E01270();
  sub_232E01360();
  (*(v10 + 8))(v12, v9);
  return 0;
}

uint64_t sub_232DC9B24(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v16 = sub_232E012A0();
  MEMORY[0x28223BE20](v16);
  sub_232E009C0();
  swift_allocObject();
  sub_232E009B0();
  a5();
  v9 = sub_232E009A0();
  v11 = v10;

  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_232E00C50();
  MEMORY[0x238395970](a1, a2);
  v14 = sub_232E014C0();

  [v12 setObject:v13 forKey:v14];

  return sub_232DB091C(v9, v11);
}

uint64_t sub_232DC9E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_232E012A0();
  MEMORY[0x28223BE20](v6);
  v7 = a3(a1, a2);
  v9 = v8;
  sub_232E009C0();
  swift_allocObject();
  sub_232E009B0();
  sub_232DD1FF8();
  v10 = sub_232E009A0();

  sub_232DB091C(v7, v9);
  return v10;
}

uint64_t sub_232DCA018(uint64_t a1)
{
  result = MEMORY[0x238395B40](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_232DD0290(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232DCA134(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x282200958](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_232DCA1E0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_232E012A0();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DCA2B0, v2, 0);
}

uint64_t sub_232DCA2B0(uint64_t a1)
{
  v2 = v1[10];
  sub_232E01270();
  sub_232E018F0();

  if (v2 >> 62)
  {
    v3 = sub_232E019C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v36 = MEMORY[0x277D84F90];
    result = sub_232DF8F90(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    v6 = v36;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        MEMORY[0x238395D50](v7, v1[10]);
        v8 = sub_232E013A0();
        v10 = v9;
        swift_unknownObjectRelease();
        v12 = *(v36 + 16);
        v11 = *(v36 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_232DF8F90((v11 > 1), v12 + 1, 1);
        }

        ++v7;
        *(v36 + 16) = v12 + 1;
        v13 = v36 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
      }

      while (v3 != v7);
    }

    else
    {
      v14 = (v1[10] + 32);
      do
      {
        v15 = *v14;
        v16 = sub_232E013A0();
        v18 = v17;

        v20 = *(v36 + 16);
        v19 = *(v36 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_232DF8F90((v19 > 1), v20 + 1, 1);
        }

        *(v36 + 16) = v20 + 1;
        v21 = v36 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v14;
        --v3;
      }

      while (v3);
    }

    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v22 = v1[16];
  v23 = v1[13];
  v24 = v1[14];
  v25 = MEMORY[0x238395A10](v6, MEMORY[0x277D837D0]);
  v27 = v26;

  MEMORY[0x238395970](v25, v27);

  sub_232E01370();

  v28 = *(v24 + 8);
  v1[17] = v28;
  v1[18] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v22, v23);
  if (v2 >> 62)
  {
    result = sub_232E019C0();
    v1[19] = result;
    if (result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[19] = result;
    if (result)
    {
LABEL_19:
      v29 = v1[10];
      v1[20] = v4;
      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x238395D50](0);
LABEL_27:
        v33 = v30;
        v1[21] = v30;
        v1[22] = 1;
        v34 = swift_task_alloc();
        v1[23] = v34;
        *v34 = v1;
        v34[1] = sub_232DCA688;
        v35 = v1[11];

        return sub_232DCB1B0(v33, 1, v35);
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v29 + 32);
        goto LABEL_27;
      }

LABEL_32:
      __break(1u);
      return result;
    }
  }

  v1[25] = v4;
  v31 = swift_task_alloc();
  v1[26] = v31;
  *v31 = v1;
  v31[1] = sub_232DCA934;
  v32 = v1[10];

  return sub_232DCCB68(v32);
}

uint64_t sub_232DCA688()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_232DCAB40;
  }

  else
  {
    v4 = sub_232DCA7B4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_232DCA7B4()
{
  v1 = *(v0 + 176);
  if (v1 == *(v0 + 152))
  {
    *(v0 + 200) = *(v0 + 160);
    v2 = swift_task_alloc();
    *(v0 + 208) = v2;
    *v2 = v0;
    v2[1] = sub_232DCA934;
    v3 = *(v0 + 80);

    sub_232DCCB68(v3);
    return;
  }

  v4 = *(v0 + 80);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x238395D50](*(v0 + 176));
  }

  else
  {
    if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v5 = *(v4 + 8 * v1 + 32);
  }

  v6 = v5;
  *(v0 + 168) = v5;
  *(v0 + 176) = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_232DCA688;
  v8 = *(v0 + 88);

  sub_232DCB1B0(v6, 1, v8);
}

uint64_t sub_232DCA934()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_232DCAF08;
  }

  else
  {
    v4 = sub_232DCAA60;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DCAA60()
{
  v1 = *(v0 + 200);
  if (*(v1 + 16))
  {
    sub_232DBD398();
    swift_allocError();
    *v2 = v1;
    *(v2 + 8) = 0;
    *(v2 + 16) = 3;
    swift_willThrow();
  }

  else
  {
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_232DCAB40()
{
  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 136);
    v3 = *(v0 + 120);
    v4 = *(v0 + 104);

    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    sub_232E01270();
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    sub_232E018F0();

    *(v0 + 40) = 0xD000000000000010;
    *(v0 + 48) = 0x8000000232E0D470;
    v8 = sub_232E013A0();
    MEMORY[0x238395970](v8);

    sub_232E01380();

    v24(v3, v4);
    sub_232DBD398();
    v9 = swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v6;
    *(v10 + 16) = v7;
    sub_232DD0238(v5, v6, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_232DADC68(0, v12[2] + 1, 1, *(v0 + 160));
    }

    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_232DADC68((v13 > 1), v14 + 1, 1, v12);
    }

    sub_232DD0264(v5, v6, v7);
    v12[2] = v14 + 1;
    v12[v14 + 4] = v9;

    v15 = *(v0 + 176);
    if (v15 == *(v0 + 152))
    {
      *(v0 + 200) = v12;
      v16 = swift_task_alloc();
      *(v0 + 208) = v16;
      *v16 = v0;
      v16[1] = sub_232DCA934;
      v17 = *(v0 + 80);

      sub_232DCCB68(v17);
      return;
    }

    *(v0 + 160) = v12;
    v19 = *(v0 + 80);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x238395D50](v15);
    }

    else
    {
      if (v15 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v20 = *(v19 + 8 * v15 + 32);
    }

    v21 = v20;
    *(v0 + 168) = v20;
    *(v0 + 176) = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      v22 = swift_task_alloc();
      *(v0 + 184) = v22;
      *v22 = v0;
      v22[1] = sub_232DCA688;
      v23 = *(v0 + 88);

      sub_232DCB1B0(v21, 1, v23);
      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v18 = *(v0 + 8);

  v18();
}

uint64_t sub_232DCAF08(uint64_t a1)
{
  v2 = v1[27];
  v3 = v1[17];
  v4 = v1[15];
  v5 = v1[13];
  sub_232E01270();
  sub_232E01380();

  v3(v4, v5);
  v6 = v1[25];
  if (*(v6 + 16))
  {
    sub_232DBD398();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    *(v7 + 16) = 3;
    swift_willThrow();
  }

  else
  {
  }

  v8 = v1[1];

  return v8();
}

uint64_t sub_232DCB03C(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_232E019C0())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_232E01970();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x238395D50](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_232E01950();
      sub_232E01980();
      sub_232E01990();
      sub_232E01960();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_232DCB1B0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 312) = a3;
  *(v4 + 320) = v3;
  *(v4 + 505) = a2;
  *(v4 + 304) = a1;
  type metadata accessor for UserGuideIndexItem(0);
  *(v4 + 328) = swift_task_alloc();
  v5 = sub_232E012A0();
  *(v4 + 336) = v5;
  *(v4 + 344) = *(v5 - 8);
  *(v4 + 352) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DCB2A4, v3, 0);
}

uint64_t sub_232DCB2A4(uint64_t a1)
{
  v3 = v1[43];
  v2 = v1[44];
  v4 = v1[42];
  sub_232E01270();
  sub_232E018F0();

  v5 = sub_232E013A0();
  MEMORY[0x238395970](v5);

  sub_232E01360();

  v6 = *(v3 + 8);
  v1[45] = v6;
  v1[46] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  type metadata accessor for UserGuideIndexHelper();
  v7 = swift_task_alloc();
  v1[47] = v7;
  *v7 = v1;
  v7[1] = sub_232DCB3FC;
  v8 = v1[41];
  v9 = v1[38];

  return sub_232DB6A74(v8, v9);
}

uint64_t sub_232DCB3FC()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = sub_232DCC858;
  }

  else
  {
    v4 = sub_232DCB528;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DCB528()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 505);
  if (v1 <= 1)
  {
    v1 = 1;
  }

  *(v0 + 392) = v1;
  if (v2 == 1)
  {
    v3 = v0 + 80;
    v4 = sub_232DE833C();
    *(v0 + 400) = v4;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 288;
    *(v0 + 88) = sub_232DCBC18;
    v5 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7668, &qword_232E07568);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_232DCDB54;
    *(v0 + 232) = &block_descriptor_18_0;
    *(v0 + 240) = v5;
    [v4 fetchLastClientStateWithCompletionHandler_];
LABEL_5:

    return MEMORY[0x282200938](v3);
  }

  *(v0 + 416) = xmmword_232E06160;
  v6 = *(v0 + 320);
  v8 = *(v6 + 112);
  v7 = *(v6 + 120);

  v9 = sub_232DC9690(v8, v7, sub_232DB1128, &type metadata for UserGuideClientState, &unk_27DDD7658, &unk_232E07538);
  *(v0 + 432) = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v9;
  v12 = v10;
  *(v0 + 440) = v9;
  if ((sub_232DAC334(0, 0xC000000000000000, v9, v10) & 1) == 0)
  {

LABEL_16:
    v25 = swift_task_alloc();
    *(v0 + 488) = v25;
    *v25 = v0;
    v25[1] = sub_232DCC694;
    v26 = *(v0 + 392);
    v27 = *(v0 + 328);

    return sub_232DCDC3C(v27, v26);
  }

  v13 = *(v0 + 360);
  v14 = *(v0 + 352);
  v15 = *(v0 + 328);
  v16 = *(v0 + 336);
  v17 = sub_232DACA5C(v15, v11, v12);
  sub_232E01270();
  sub_232E018F0();
  *(v0 + 272) = 0;
  *(v0 + 280) = 0xE000000000000000;
  MEMORY[0x238395970](0xD000000000000010, 0x8000000232E0D600);
  v18 = *v15;
  v19 = v15[1];
  MEMORY[0x238395970](v18, v19);
  MEMORY[0x238395970](2108704, 0xE300000000000000);
  *(v0 + 504) = v17;
  sub_232E019A0();
  sub_232E01360();

  v13(v14, v16);
  if (v17 == 2)
  {
    v3 = v0 + 16;
    v28 = *(v0 + 360);
    v29 = *(v0 + 352);
    v30 = *(v0 + 336);
    sub_232E01270();
    sub_232E018F0();

    MEMORY[0x238395970](v18, v19);
    sub_232E01360();

    v28(v29, v30);
    v31 = sub_232E013A0();
    MEMORY[0x238395970](v31);

    v32 = sub_232DE833C();
    *(v0 + 448) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7388, &qword_232E06210);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_232E06FE0;
    *(v33 + 32) = 0x6469754772657375;
    *(v33 + 40) = 0xEA00000000002E65;
    v34 = sub_232E015C0();
    *(v0 + 456) = v34;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_232DCC348;
    v35 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_232DCA134;
    *(v0 + 168) = &block_descriptor_15;
    *(v0 + 176) = v35;
    [v32 deleteSearchableItemsWithDomainIdentifiers:v34 completionHandler:?];
    goto LABEL_5;
  }

  if (v17 == 1)
  {
    v20 = *(v0 + 360);
    v21 = *(v0 + 352);
    v22 = *(v0 + 328);
    v23 = *(v0 + 336);

    sub_232E01270();
    sub_232E018F0();

    MEMORY[0x238395970](v18, v19);
    MEMORY[0x238395970](0xD000000000000016, 0x8000000232E0D670);
    sub_232E01360();

    sub_232DB091C(0, 0xC000000000000000);
    v20(v21, v23);
    sub_232DD22B4(v22, type metadata accessor for UserGuideIndexItem);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v36 = *(v0 + 432);
    v37 = *(v0 + 440);
    v38 = swift_task_alloc();
    *(v0 + 472) = v38;
    *v38 = v0;
    v38[1] = sub_232DCC52C;
    v39 = *(v0 + 392);
    v40 = *(v0 + 328);

    return sub_232DCE270(v40, v39, v37, v36);
  }
}

uint64_t sub_232DCBC18()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 320);
  if (v2)
  {
    v4 = sub_232DCC8C8;
  }

  else
  {
    v4 = sub_232DCBD38;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DCBD38()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  *(v0 + 416) = v1;
  *(v0 + 424) = v2;
  v3 = *(v0 + 320);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);

  v6 = sub_232DC9690(v4, v5, sub_232DB1128, &type metadata for UserGuideClientState, &unk_27DDD7658, &unk_232E07538);
  *(v0 + 432) = v7;
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    *(v0 + 440) = v6;
    if (sub_232DAC334(v1, v2, v6, v7))
    {
      v10 = *(v0 + 360);
      v11 = *(v0 + 352);
      v12 = *(v0 + 328);
      v13 = *(v0 + 336);
      v14 = sub_232DACA5C(v12, v8, v9);
      sub_232E01270();
      sub_232E018F0();
      *(v0 + 272) = 0;
      *(v0 + 280) = 0xE000000000000000;
      MEMORY[0x238395970](0xD000000000000010, 0x8000000232E0D600);
      v15 = *v12;
      v16 = v12[1];
      v38 = v15;
      MEMORY[0x238395970]();
      MEMORY[0x238395970](2108704, 0xE300000000000000);
      *(v0 + 504) = v14;
      sub_232E019A0();
      sub_232E01360();

      v10(v11, v13);
      if (v14 == 2)
      {
        v25 = *(v0 + 360);
        v26 = *(v0 + 352);
        v27 = *(v0 + 336);
        sub_232E01270();
        sub_232E018F0();

        MEMORY[0x238395970](v38, v16);
        sub_232E01360();

        v25(v26, v27);
        v28 = sub_232E013A0();
        MEMORY[0x238395970](v28);

        v29 = sub_232DE833C();
        *(v0 + 448) = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7388, &qword_232E06210);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_232E06FE0;
        *(v30 + 32) = 0x6469754772657375;
        *(v30 + 40) = 0xEA00000000002E65;
        v31 = sub_232E015C0();
        *(v0 + 456) = v31;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_232DCC348;
        v32 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
        *(v0 + 144) = MEMORY[0x277D85DD0];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_232DCA134;
        *(v0 + 168) = &block_descriptor_15;
        *(v0 + 176) = v32;
        [v29 deleteSearchableItemsWithDomainIdentifiers:v31 completionHandler:?];

        return MEMORY[0x282200938](v0 + 16);
      }

      else if (v14 == 1)
      {
        v17 = *(v0 + 360);
        v18 = *(v0 + 352);
        v19 = *(v0 + 336);
        v39 = *(v0 + 328);

        sub_232E01270();
        sub_232E018F0();

        MEMORY[0x238395970](v38, v16);
        MEMORY[0x238395970](0xD000000000000016, 0x8000000232E0D670);
        sub_232E01360();

        sub_232DB091C(v1, v2);
        v17(v18, v19);
        sub_232DD22B4(v39, type metadata accessor for UserGuideIndexItem);

        v20 = *(v0 + 8);

        return v20();
      }

      else
      {
        v33 = *(v0 + 432);
        v34 = *(v0 + 440);
        v35 = swift_task_alloc();
        *(v0 + 472) = v35;
        *v35 = v0;
        v35[1] = sub_232DCC52C;
        v36 = *(v0 + 392);
        v37 = *(v0 + 328);

        return sub_232DCE270(v37, v36, v34, v33);
      }
    }
  }

  v22 = swift_task_alloc();
  *(v0 + 488) = v22;
  *v22 = v0;
  v22[1] = sub_232DCC694;
  v23 = *(v0 + 392);
  v24 = *(v0 + 328);

  return sub_232DCDC3C(v24, v23);
}

uint64_t sub_232DCC348()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  if (v2)
  {
    v3 = *(v1 + 320);

    v4 = sub_232DCCA04;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 320);
    v4 = sub_232DCC470;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_232DCC470()
{
  v1 = *(v0 + 456);

  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = swift_task_alloc();
  *(v0 + 472) = v4;
  *v4 = v0;
  v4[1] = sub_232DCC52C;
  v5 = *(v0 + 392);
  v6 = *(v0 + 328);

  return sub_232DCE270(v6, v5, v3, v2);
}

uint64_t sub_232DCC52C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(*v3 + 480) = v2;

  v5 = *(v4 + 320);

  if (v2)
  {
    v6 = sub_232DCCAD0;
  }

  else
  {

    v6 = sub_232DD263C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_232DCC694()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = sub_232DCC96C;
  }

  else
  {
    v4 = sub_232DCC7C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DCC7C0()
{
  v1 = v0[41];
  sub_232DB091C(v0[52], v0[53]);
  sub_232DD22B4(v1, type metadata accessor for UserGuideIndexItem);

  v2 = v0[1];

  return v2();
}

uint64_t sub_232DCC858()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DCC8C8()
{
  v1 = v0[50];
  v2 = v0[41];
  swift_willThrow();
  sub_232DD22B4(v2, type metadata accessor for UserGuideIndexItem);

  v3 = v0[1];

  return v3();
}

uint64_t sub_232DCC96C()
{
  v1 = v0[41];
  sub_232DB091C(v0[52], v0[53]);
  sub_232DD22B4(v1, type metadata accessor for UserGuideIndexItem);

  v2 = v0[1];

  return v2();
}

uint64_t sub_232DCCA04()
{
  v1 = v0[57];
  v2 = v0[56];
  v3 = v0[52];
  v4 = v0[53];
  v5 = v0[41];
  swift_willThrow();
  sub_232DB091C(v3, v4);
  sub_232DD22B4(v5, type metadata accessor for UserGuideIndexItem);

  v6 = v0[1];

  return v6();
}

uint64_t sub_232DCCAD0()
{
  v1 = v0[41];
  sub_232DB091C(v0[52], v0[53]);
  sub_232DD22B4(v1, type metadata accessor for UserGuideIndexItem);

  v2 = v0[1];

  return v2();
}

uint64_t sub_232DCCB68(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_232E012A0();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DCCC28, v1, 0);
}

uint64_t sub_232DCCC28()
{
  v58 = v0;
  v1 = v0[35];
  v2 = *(v1 + 112);
  v0[39] = v2;
  v3 = *(v1 + 120);
  v0[40] = v3;

  sub_232DC9690(v2, v3, sub_232DB1128, &type metadata for UserGuideClientState, &unk_27DDD7658, &unk_232E07538);
  if (!v4)
  {
    goto LABEL_32;
  }

  v5 = v4;
  v6 = v0[34];
  if (v6 >> 62)
  {
    v7 = sub_232E019C0();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v55 = MEMORY[0x277D84F90];
    v9 = sub_232DF8F90(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v8 = v55;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        MEMORY[0x238395D50](v10, v0[34]);
        v11 = sub_232E013A0();
        v13 = v12;
        swift_unknownObjectRelease();
        v55 = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_232DF8F90((v14 > 1), v15 + 1, 1);
          v8 = v55;
        }

        ++v10;
        *(v8 + 16) = v15 + 1;
        v16 = v8 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
      }

      while (v7 != v10);
    }

    else
    {
      v17 = (v0[34] + 32);
      do
      {
        v18 = *v17;
        v19 = sub_232E013A0();
        v21 = v20;

        v55 = v8;
        v23 = *(v8 + 16);
        v22 = *(v8 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_232DF8F90((v22 > 1), v23 + 1, 1);
          v8 = v55;
        }

        *(v8 + 16) = v23 + 1;
        v24 = v8 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        ++v17;
        --v7;
      }

      while (v7);
    }
  }

  v25 = *(v5 + 16);
  if (!v25)
  {
    v26 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v26 = sub_232DAE004(*(v5 + 16), 0);
  v54 = sub_232DAFFD8(&v55, v26 + 4, v25, v5);
  v27 = v55;

  v9 = sub_232D734F4(v27);
  if (v54 != v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_20:
  v28 = sub_232DD1C40(v26);

  v29 = sub_232DD03E0(v8, v28);
  *(swift_task_alloc() + 16) = v8;
  v0[41] = sub_232DD1E60(v5, sub_232DD1CD8);

  v30 = MEMORY[0x277D84F90];
  sub_232DB300C(MEMORY[0x277D84F90]);

  v31 = v29[2];
  if (!v31)
  {

    v32 = MEMORY[0x277D84F90];
    v34 = *(MEMORY[0x277D84F90] + 16);
    if (v34)
    {
LABEL_23:
      v57 = v30;
      sub_232DF8F90(0, v34, 0);
      v35 = v57;
      v36 = v32 + 5;
      do
      {
        v37 = *(v36 - 1);
        v38 = *v36;
        v55 = 0x6469754772657375;
        v56 = 0xEA00000000002E65;

        MEMORY[0x238395970](v37, v38);

        v40 = v55;
        v39 = v56;
        v57 = v35;
        v42 = *(v35 + 16);
        v41 = *(v35 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_232DF8F90((v41 > 1), v42 + 1, 1);
          v35 = v57;
        }

        *(v35 + 16) = v42 + 1;
        v43 = v35 + 16 * v42;
        *(v43 + 32) = v40;
        *(v43 + 40) = v39;
        v36 += 2;
        --v34;
      }

      while (v34);
      v44 = v0[37];
      v45 = v0[38];
      v46 = v0[36];

      sub_232E01270();
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_232E018F0();

      v55 = 0xD000000000000029;
      v56 = 0x8000000232E0D4C0;
      v47 = MEMORY[0x238395A10](v35, MEMORY[0x277D837D0]);
      MEMORY[0x238395970](v47);

      sub_232E01360();

      (*(v44 + 8))(v45, v46);
      v48 = sub_232DE833C();
      v0[42] = v48;
      v49 = sub_232E015C0();
      v0[43] = v49;

      v0[2] = v0;
      v0[3] = sub_232DCD270;
      v50 = swift_continuation_init();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
      v0[44] = v51;
      v0[25] = v51;
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_232DCA134;
      v0[21] = &block_descriptor_5;
      v0[22] = v50;
      [v48 deleteSearchableItemsWithDomainIdentifiers:v49 completionHandler:?];
      v9 = (v0 + 2);

      return MEMORY[0x282200938](v9);
    }

    goto LABEL_31;
  }

  v32 = sub_232DAE004(v29[2], 0);
  v33 = sub_232DAFE80(&v55, v32 + 4, v31, v29);
  v9 = sub_232D734F4(v55);
  if (v33 != v31)
  {
LABEL_38:
    __break(1u);
    return MEMORY[0x282200938](v9);
  }

  v34 = v32[2];
  if (v34)
  {
    goto LABEL_23;
  }

LABEL_31:

LABEL_32:

  v52 = v0[1];

  return v52();
}

uint64_t sub_232DCD270()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  if (v2)
  {
    v3 = *(v1 + 280);

    v4 = sub_232DCD70C;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 280);
    v4 = sub_232DCD398;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_232DCD398()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 328);

  v4 = sub_232DE833C();
  [v4 beginIndexBatch];

  v5 = sub_232DE833C();
  *(v0 + 368) = v5;
  v6 = sub_232DC9E04(2, v3, sub_232DAC6CC);
  v8 = v7;
  v9 = sub_232E00C50();
  *(v0 + 376) = v9;
  sub_232DB091C(v6, v8);
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_232DCD51C;
  v10 = swift_continuation_init();
  *(v0 + 264) = v2;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_232DCA134;
  *(v0 + 232) = &block_descriptor_7;
  *(v0 + 240) = v10;
  [v5 endIndexBatchWithClientState:v9 completionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_232DCD51C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = *(v1 + 280);

    v4 = sub_232DCD790;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 280);
    v4 = sub_232DCD644;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_232DCD644()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);

  sub_232DC9B24(v4, v2, 2, v3, sub_232DB117C, &type metadata for UserGuideClientState);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_232DCD70C()
{
  swift_willThrow();
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_232DCD790()
{
  swift_willThrow();
  v1 = *(v0 + 376);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_232DCD834()
{
  v1 = v0[18];
  v2 = sub_232E015C0();
  v0[19] = v2;
  v0[2] = v0;
  v0[3] = sub_232DCD970;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_35;
  v0[14] = v3;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DCD970()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_232DCDAE4;
  }

  else
  {
    v2 = sub_232DCDA80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DCDA80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DCDAE4()
{
  v1 = *(v0 + 152);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_232DCDB54(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_232E00C60();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_232DCDC3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232E012A0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DCDD00, v2, 0);
}

uint64_t sub_232DCDD00(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v3 + 8);
  v5(v2, v4);
  sub_232E01270();
  sub_232E01360();
  v5(v2, v4);
  v6 = sub_232DE833C();
  v1[8] = v6;
  v7 = swift_task_alloc();
  v1[9] = v7;
  *v7 = v1;
  v7[1] = sub_232DCDE54;

  return sub_232DC68A8(0, 0xC000000000000000, v6);
}

uint64_t sub_232DCDE54()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_232DCE198;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_232DCDF7C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DCDF7C()
{
  v1 = sub_232DB300C(MEMORY[0x277D84F90]);
  v0[11] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_232DCE030;
  v3 = v0[3];
  v4 = v0[2];

  return sub_232DCE270(v4, v3, 2, v1);
}

uint64_t sub_232DCE030(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[13] = v2;

  if (v2)
  {
    v5 = v4[4];

    return MEMORY[0x2822009F8](sub_232DCE204, v5, 0);
  }

  else
  {

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_232DCE198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DCE204()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DCE270(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 216) = a3;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v7 = *(type metadata accessor for UserGuideIndexItem(0) - 8);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 + 64);
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = type metadata accessor for UserGuideIndexRequest(0);
  v8 = swift_task_alloc();
  *(v5 + 128) = v8;
  type metadata accessor for UserGuideIndexHelper();
  v9 = swift_task_alloc();
  *(v5 + 136) = v9;
  *v9 = v5;
  v9[1] = sub_232DCE408;

  return sub_232DB7C30(v8, a1);
}

uint64_t sub_232DCE408()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_232DCEFFC;
  }

  else
  {
    v4 = sub_232DCE534;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DCE534()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[4];
  v8 = v4[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_232DF4208(v7, v8, v5, v6, isUniquelyReferenced_nonNull_native);

  *(v0 + 152) = v3;
  sub_232DB300C(MEMORY[0x277D84F90]);

  v15 = *(v1 + *(v2 + 20));
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = *(v0 + 56);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = sub_232E019C0();
  v16 = v10;
  v17 = *(v0 + 56);
  if (!v17)
  {
    goto LABEL_20;
  }

LABEL_3:

  v18 = sub_232DCFD5C(0, v16, v17, v15, v17);
  *(v0 + 160) = v18;
  v19 = *(v18 + 16);
  *(v0 + 168) = v19;
  if (v19)
  {
    v20 = *(v0 + 80);
    v10 = sub_232DD204C();
    *(v0 + 176) = v10;
    *(v0 + 184) = 0;
    if (*(v18 + 16))
    {
      v21 = *(v0 + 112);
      v42 = v10;
      v43 = v21;
      v46 = *(v0 + 152);
      v47 = *(v0 + 104);
      v22 = *(v0 + 96);
      v23 = *(v0 + 72);
      v45 = *(v0 + 64);
      v44 = *(v0 + 216);
      v24 = *(v0 + 48);
      v25 = *(v18 + 32);
      v26 = sub_232E016B0();
      v27 = *(v26 - 8);
      (*(v27 + 56))(v21, 1, 1, v26);
      sub_232DD20B0(v24, v22);
      v28 = (*(v20 + 80) + 88) & ~*(v20 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v23;
      *(v29 + 24) = v42;
      *(v29 + 32) = v25;
      *(v29 + 40) = v23;
      *(v29 + 48) = v18;
      *(v29 + 56) = 2;
      *(v29 + 64) = v46;
      *(v29 + 72) = v44;
      *(v29 + 80) = v45;
      sub_232DD2114(v22, v29 + v28);
      sub_232DA7734(v43, v47);
      LODWORD(v25) = (*(v27 + 48))(v47, 1, v26);
      swift_retain_n();

      v30 = *(v0 + 104);
      if (v25 == 1)
      {
        sub_232DAB434(*(v0 + 104), &qword_27DDD7278, &qword_232E07570);
      }

      else
      {
        sub_232E016A0();
        (*(v27 + 8))(v30, v26);
      }

      v35 = *(v29 + 16);
      swift_unknownObjectRetain();

      if (v35)
      {
        swift_getObjectType();
        v36 = sub_232E01630();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      sub_232DAB434(*(v0 + 112), &qword_27DDD7278, &qword_232E07570);
      if (v38 | v36)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v36;
        *(v0 + 40) = v38;
      }

      v39 = MEMORY[0x277D84F78];
      v40 = swift_task_create();
      *(v0 + 192) = v40;
      v41 = swift_task_alloc();
      *(v0 + 200) = v41;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
      *v41 = v0;
      v41[1] = sub_232DCEA58;
      v14 = MEMORY[0x277D84950];
      v12 = v39 + 8;
      v11 = v40;
      v13 = v10;

      return MEMORY[0x282200430](v10, v11, v12, v13, v14);
    }

LABEL_21:
    __break(1u);
    return MEMORY[0x282200430](v10, v11, v12, v13, v14);
  }

  v31 = *(v0 + 128);
  sub_232DC9B24(*(*(v0 + 72) + 112), *(*(v0 + 72) + 120), 2, *(v0 + 152), sub_232DB117C, &type metadata for UserGuideClientState);
  sub_232DD22B4(v31, type metadata accessor for UserGuideIndexRequest);

  v32 = *(v0 + 8);
  v33 = *(v0 + 152);

  return v32(2, v33);
}

uint64_t sub_232DCEA58()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);

    v4 = sub_232DCF088;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 72);
    v4 = sub_232DCEB9C;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_232DCEB9C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  if (v1 + 1 == v2)
  {

    v8 = *(v0 + 128);
    sub_232DC9B24(*(*(v0 + 72) + 112), *(*(v0 + 72) + 120), 2, *(v0 + 152), sub_232DB117C, &type metadata for UserGuideClientState);
    sub_232DD22B4(v8, type metadata accessor for UserGuideIndexRequest);

    v9 = *(v0 + 8);
    v10 = *(v0 + 152);

    return v9(2, v10);
  }

  else
  {
    v12 = *(v0 + 184) + 1;
    *(v0 + 184) = v12;
    v13 = *(v0 + 160);
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v35 = *(v0 + 176);
      v36 = *(v0 + 152);
      v14 = *(v0 + 112);
      v37 = *(v0 + 104);
      v15 = *(v0 + 96);
      v32 = v14;
      v16 = *(v0 + 72);
      v17 = *(v0 + 80);
      v34 = *(v0 + 64);
      v33 = *(v0 + 216);
      v18 = *(v0 + 48);
      v19 = *(v13 + 8 * v12 + 32);
      v20 = sub_232E016B0();
      v21 = *(v20 - 8);
      (*(v21 + 56))(v14, 1, 1, v20);
      sub_232DD20B0(v18, v15);
      v22 = (*(v17 + 80) + 88) & ~*(v17 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v16;
      *(v23 + 24) = v35;
      *(v23 + 32) = v19;
      *(v23 + 40) = v16;
      *(v23 + 48) = v13;
      *(v23 + 56) = 2;
      *(v23 + 64) = v36;
      *(v23 + 72) = v33;
      *(v23 + 80) = v34;
      sub_232DD2114(v15, v23 + v22);
      sub_232DA7734(v32, v37);
      LODWORD(v19) = (*(v21 + 48))(v37, 1, v20);
      swift_retain_n();

      v24 = *(v0 + 104);
      if (v19 == 1)
      {
        sub_232DAB434(*(v0 + 104), &qword_27DDD7278, &qword_232E07570);
      }

      else
      {
        sub_232E016A0();
        (*(v21 + 8))(v24, v20);
      }

      v25 = *(v23 + 16);
      swift_unknownObjectRetain();

      if (v25)
      {
        swift_getObjectType();
        v26 = sub_232E01630();
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      sub_232DAB434(*(v0 + 112), &qword_27DDD7278, &qword_232E07570);
      if (v28 | v26)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v26;
        *(v0 + 40) = v28;
      }

      v29 = MEMORY[0x277D84F78];
      v30 = swift_task_create();
      *(v0 + 192) = v30;
      v31 = swift_task_alloc();
      *(v0 + 200) = v31;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
      *v31 = v0;
      v31[1] = sub_232DCEA58;
      v7 = MEMORY[0x277D84950];
      v5 = v29 + 8;
      v4 = v30;
      v6 = v3;
    }

    return MEMORY[0x282200430](v3, v4, v5, v6, v7);
  }
}

uint64_t sub_232DCEFFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DCF088()
{
  sub_232DD22B4(*(v0 + 128), type metadata accessor for UserGuideIndexRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DCF130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 56) = v14;
  *(v8 + 64) = v15;
  *(v8 + 146) = v13;
  *(v8 + 144) = a7;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v10 = sub_232E012A0();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DCF210, a5, 0);
}

uint64_t sub_232DCF210(uint64_t a1)
{
  v2 = v1[3];
  sub_232E01270();
  sub_232E018F0();

  if (v2 >> 62)
  {
    v3 = sub_232E019C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1[10];
  v4 = v1[11];
  v6 = v1[9];
  v7 = v1[5];
  v1[2] = v3;
  v8 = sub_232E01AB0();
  MEMORY[0x238395970](v8);

  MEMORY[0x238395970](0x736D65746920, 0xE600000000000000);
  sub_232E01370();

  (*(v5 + 8))(v4, v6);
  v1[12] = sub_232DE833C();
  v9 = *(v7 + 16);
  if (v9 && (v10 = v1[3], v11 = *(v1[5] + 8 * v9 + 24), , LOBYTE(v10) = sub_232DCFFE8(v10, v11), , (v10 & 1) != 0))
  {
    v12 = 144;
    v13 = 6;
  }

  else
  {
    v12 = 146;
    v13 = 7;
  }

  v14 = sub_232DC9E04(*(v1 + v12), v1[v13], sub_232DAC6CC);
  v16 = v15;
  v17 = v1[8];
  v18 = v1[3];
  v1[13] = v15;
  v1[14] = v14;
  v19 = swift_task_alloc();
  v1[15] = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = swift_task_alloc();
  v1[16] = v20;
  *v20 = v1;
  v20[1] = sub_232D71C10;

  return sub_232DC7F98(v14, v16, &unk_232E07598, v19);
}

uint64_t sub_232DCF46C()
{
  v1 = v0[12];
  sub_232DB091C(v0[14], v0[13]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_232DCF4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_232DCF518, 0, 0);
}

uint64_t sub_232DCF518()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  sub_232DCB03C(sub_232DD23BC, v4, v1);

  sub_232DB3688(0, &qword_2814E7C10, 0x277CC34B0);
  v5 = sub_232E015C0();
  v0[21] = v5;

  v0[2] = v0;
  v0[3] = sub_232DCF6B8;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_28_0;
  v0[14] = v6;
  [v3 indexSearchableItems:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DCF6B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_232DCF82C;
  }

  else
  {
    v2 = sub_232DCF7C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DCF7C8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DCF82C()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

id sub_232DCF89C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = a3;
  v19 = sub_232E008A0();
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v10 = *(a2 + 64);
  v9 = *(a2 + 72);
  v11 = [v8 uniqueIdentifier];
  v12 = sub_232E014D0();
  v14 = v13;

  v15 = [v8 attributeSet];
  *&v24 = v12;
  *(&v24 + 1) = v14;
  *&v25 = v15;
  *(&v25 + 1) = v10;
  v26 = v9;

  v16 = [v8 byte_2789B1074];
  sub_232DC5598(v7);
  sub_232E017B0();

  (*(v5 + 8))(v7, v19);
  v17 = [v8 byte_2789B1074];
  v21 = v24;
  v22 = v25;
  v23 = v26;
  sub_232DAB238();
  sub_232E017A0();

  *v20 = v8;
  return v8;
}

uint64_t sub_232DCFAC8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t (*a6)(uint64_t, unint64_t *, uint64_t, uint64_t))
{
  v13 = a1 + a3;
  if (__OFADD__(a1, a3))
  {
    __break(1u);
  }

  else
  {
    v7 = a6;
    v10 = a5;
    v11 = a4;
    v9 = a2;
    v8 = a1;
    v12 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 < v13)
      {
        v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13 < v8)
      {
        goto LABEL_38;
      }

      if (v14 >= v8)
      {
        goto LABEL_7;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v25 = sub_232E019C0();
  if (v25 < v13)
  {
    v13 = v25;
  }

  if (v13 < v8)
  {
    goto LABEL_38;
  }

  if (sub_232E019C0() < v8)
  {
    goto LABEL_37;
  }

LABEL_7:
  if (v8 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v12)
  {
    v15 = sub_232E019C0();
  }

  else
  {
    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 < v13)
  {
    goto LABEL_40;
  }

  if (v13 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((v9 & 0xC000000000000001) == 0 || v13 == v8)
  {

    if (!v12)
    {
      goto LABEL_19;
    }

LABEL_22:

    v9 = sub_232E019D0();
    v8 = v19;
    v13 = v20;
    if (v20)
    {
      goto LABEL_24;
    }

LABEL_23:
    v21 = v7(v9, v18, v8, v13);
LABEL_30:
    swift_unknownObjectRelease();
    return v21;
  }

  if (v13 <= v8)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_232DB3688(0, v11, v10);

  v16 = v8;
  do
  {
    v17 = v16 + 1;
    sub_232E01910();
    v16 = v17;
  }

  while (v13 != v17);
  if (v12)
  {
    goto LABEL_22;
  }

LABEL_19:
  v9 &= 0xFFFFFFFFFFFFFF8uLL;
  v18 = (v9 + 32);
  v13 = (2 * v13) | 1;
  if ((v13 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v11 = v18;
  sub_232E01AF0();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v13 >> 1, v8))
  {
    goto LABEL_43;
  }

  if (v23 != (v13 >> 1) - v8)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v18 = v11;
    goto LABEL_23;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v21)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  return v21;
}

uint64_t sub_232DCFD5C(uint64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = a1;
  v11 = 0;
  v12 = a1;
  while (1)
  {
    v13 = v12 <= a2;
    if (a3 > 0)
    {
      v13 = v12 >= a2;
    }

    if (v13)
    {
      break;
    }

    v14 = __OFADD__(v12, a3);
    v12 += a3;
    if (v14)
    {
      v12 = (v12 >> 63) ^ 0x8000000000000000;
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      __break(1u);
      break;
    }
  }

  v29 = MEMORY[0x277D84F90];
  sub_232DF8FD0(0, v11, 0);
  if (v11)
  {
    while (1)
    {
      v15 = v10 <= a2;
      if (a3 > 0)
      {
        v15 = v10 >= a2;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v10, a3))
      {
        v16 = ((v10 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v10 + a3;
      }

      v17 = sub_232DCFAC8(v10, a4, a5, &qword_2814E7C10, 0x277CC34B0, sub_232DF8C58);
      if (v5)
      {
        goto LABEL_38;
      }

      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      if (v19 >= v18 >> 1)
      {
        v27 = v17;
        sub_232DF8FD0((v18 > 1), v19 + 1, 1);
        v17 = v27;
      }

      *(v29 + 16) = v19 + 1;
      *(v29 + 8 * v19 + 32) = v17;
      v10 = v16;
      if (!--v11)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = v10;
LABEL_23:
    v20 = v16 <= a2;
    if (a3 > 0)
    {
      v20 = v16 >= a2;
    }

    if (v20)
    {
LABEL_26:

      return v29;
    }

    while (1)
    {
      v22 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v23 = sub_232DCFAC8(v16, a4, a5, &qword_2814E7C10, 0x277CC34B0, sub_232DF8C58);
      if (v5)
      {
        break;
      }

      v25 = *(v29 + 16);
      v24 = *(v29 + 24);
      if (v25 >= v24 >> 1)
      {
        v28 = v23;
        sub_232DF8FD0((v24 > 1), v25 + 1, 1);
        v23 = v28;
      }

      *(v29 + 16) = v25 + 1;
      *(v29 + 8 * v25 + 32) = v23;
      v26 = v22 <= a2;
      if (a3 > 0)
      {
        v26 = v22 >= a2;
      }

      v16 = v22;
      if (v26)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_38:

  __break(1u);
  return result;
}