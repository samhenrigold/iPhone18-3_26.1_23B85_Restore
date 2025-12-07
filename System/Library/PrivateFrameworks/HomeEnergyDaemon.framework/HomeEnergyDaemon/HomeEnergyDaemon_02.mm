uint64_t sub_22B155C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B155EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void *a10)
{
  v10[2] = a10;
  v11 = sub_22B35DE9C();
  v10[3] = v11;
  v10[4] = *(v11 - 8);
  v10[5] = swift_task_alloc();
  v10[6] = _Block_copy(a9);
  v12 = sub_22B36084C();
  v31 = v13;
  v32 = v12;
  v10[7] = v13;
  v14 = sub_22B36084C();
  v29 = v15;
  v30 = v14;
  v10[8] = v15;
  v28 = sub_22B36084C();
  v17 = v16;
  v10[9] = v16;
  v26 = sub_22B36084C();
  v19 = v18;
  v10[10] = v18;
  sub_22B35DE5C();
  sub_22B36084C();
  v10[11] = v20;
  sub_22B36084C();
  v10[12] = v21;
  if (a8)
  {
    sub_22B36084C();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v10[13] = v23;
  a10;
  v24 = swift_task_alloc();
  v10[14] = v24;
  *v24 = v10;
  v24[1] = sub_22B1560C8;

  return HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:address:utilityCustomerName:)(v32, v31, v30, v29, v28, v17, v26, v19);
}

uint64_t sub_22B1560C8(void *a1)
{
  v3 = *v2;
  v4 = *v2;

  v5 = v3[6];
  v6 = v3[2];
  (*(v3[4] + 8))(v3[5], v3[3]);

  v7 = v1;

  if (v1)
  {
    v8 = sub_22B35DB8C();

    (v5)[2](v5, 0, v8);
    _Block_release(v5);
  }

  else
  {
    (v5)[2](v5, a1, 0);
    _Block_release(v5);
  }

  v9 = v4[1];

  return v9();
}

uint64_t HomeEnergyProxy.revokeUtilitySubscription(siteID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1563BC, 0, 0);
}

uint64_t sub_22B1563BC()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000022, 0x800000022B369470))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_22B1724F8;
    v3 = v0[2];
    v2 = v0[3];

    return sub_22B23653C(v3, v2);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v5 = 9;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B1566BC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B36084C();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_22B1724C4;

  return HomeEnergyProxy.revokeUtilitySubscription(siteID:)(v5, v7);
}

uint64_t HomeEnergyProxy.renewUtilityAccessToken(siteID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B1567B4, 0, 0);
}

uint64_t sub_22B1567B4()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000020, 0x800000022B3694A0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_22B15692C;
    v3 = v0[2];
    v2 = v0[3];

    return sub_22B239A1C(v3, v2);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v5 = 9;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B15692C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22B156BB4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B36084C();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_22B156C88;

  return HomeEnergyProxy.renewUtilityAccessToken(siteID:)(v5, v7);
}

uint64_t sub_22B156C88(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_22B35DB8C();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t HomeEnergyProxy.completedOnboarding(id:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B156E64, 0, 0);
}

uint64_t sub_22B156E64()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v0[4] = qword_28140BCB0;

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22B149CC4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_22B20234C(v3, v2);
}

uint64_t sub_22B1570D8(uint64_t a1, void *aBlock)
{
  v2[4] = _Block_copy(aBlock);
  v2[2] = sub_22B36084C();
  v2[3] = v3;

  return MEMORY[0x2822009F8](sub_22B157154, 0, 0);
}

uint64_t sub_22B157154()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_28140BCB0;
  v0[5] = v1;
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_22B15724C;

  return sub_22B20234C(v2, v1);
}

uint64_t sub_22B15724C(char a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t HomeEnergyProxy.updateCompletedOnboarding(id:value:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 48) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B1573D8, 0, 0);
}

uint64_t sub_22B1573D8()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_28140BCB0;

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22B1574C8;
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_22B20268C(v4, v3, v2);
}

uint64_t sub_22B1574C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B157768(uint64_t a1, char a2, void *aBlock)
{
  *(v3 + 64) = a2;
  *(v3 + 32) = _Block_copy(aBlock);
  *(v3 + 16) = sub_22B36084C();
  *(v3 + 24) = v4;

  return MEMORY[0x2822009F8](sub_22B1577E8, 0, 0);
}

uint64_t sub_22B1577E8()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = qword_28140BCB0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_22B1578E4;
  v5 = *(v0 + 64);

  return sub_22B20268C(v2, v1, v5);
}

uint64_t sub_22B1578E4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t HomeEnergyProxy.utilitiesNearLocation(location:)(double a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B157A64, 0, 0);
}

uint64_t sub_22B157A64()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 4) = v1;
  *v1 = v0;
  v1[1] = sub_22B157B38;
  v2 = v0[2];
  v3 = v0[3];

  return sub_22B2029CC(v2, v3);
}

uint64_t sub_22B157B38(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B157DBC(const void *a1, double a2, double a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B157E28, 0, 0);
}

uint64_t sub_22B157E28()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 5) = v1;
  *v1 = v0;
  v1[1] = sub_22B157EFC;
  v2 = v0[2];
  v3 = v0[3];

  return sub_22B2029CC(v2, v3);
}

uint64_t sub_22B157EFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = sub_22B360A3C();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 32);
  (v6)[2](v6, v5);

  _Block_release(v6);
  v7 = *(v4 + 8);

  return v7();
}

uint64_t HomeEnergyProxy.utilityInformation(utilityID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B1724CC;

  return sub_22B169840(a1, a2);
}

uint64_t sub_22B158284(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B36084C();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_22B15836C;

  return sub_22B169840(v5, v7);
}

uint64_t sub_22B15836C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (a2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_22B35DCCC();
    sub_22B11EDC0(a1, a2);
  }

  v9 = *(v5 + 24);
  (v9)[2](v9, v8);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

uint64_t HomeEnergyProxy.isTAFEnabled(utilityID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B1585B4;

  return sub_22B169B94(a1, a2);
}

uint64_t sub_22B1585B4(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_22B158844(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B36084C();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_22B15892C;

  return sub_22B169B94(v5, v7);
}

uint64_t sub_22B15892C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_22B35DB8C();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t HomeEnergyProxy.getAllUtilities(countryCode:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B1724E0;

  return sub_22B16A06C(a1, a2);
}

uint64_t sub_22B158D1C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_22B36084C();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_22B158E10;

  return sub_22B16A06C(a1, v7);
}

uint64_t sub_22B158E10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (a1)
  {
    v6 = sub_22B360A3C();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 24);
  (v7)[2](v7, v6);

  _Block_release(v7);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_22B158FAC()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B119A60;

  return sub_22B2033E0();
}

uint64_t sub_22B1591F0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B159258, 0, 0);
}

uint64_t sub_22B159258()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B159328;

  return sub_22B2033E0();
}

uint64_t sub_22B159328()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

void sub_22B15962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, void *a9)
{
  v9[2] = a9;
  v11 = sub_22B35E0BC();
  v9[3] = v11;
  v9[4] = *(v11 - 8);
  v9[5] = swift_task_alloc();
  v12 = sub_22B35DE9C();
  v9[6] = v12;
  v9[7] = *(v12 - 8);
  v9[8] = swift_task_alloc();
  v9[9] = swift_task_alloc();
  v9[10] = _Block_copy(a8);
  sub_22B36084C();
  v9[11] = v13;
  sub_22B36084C();
  v9[12] = v14;
  sub_22B36084C();
  v9[13] = v15;
  sub_22B35DE5C();
  sub_22B35DE5C();
  sub_22B35E0AC();
  sub_22B36084C();
  v9[14] = v16;
  v17 = a9;
  v18 = swift_task_alloc();
  v9[15] = v18;
  *v18 = v9;
  v18[1] = sub_22B159898;

  JUMPOUT(0x22B16A504);
}

uint64_t sub_22B159898(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v14 = *(*v1 + 72);
  v13 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v15 = *v1;

  (*(v6 + 8))(v5, v7);
  v9 = *(v3 + 8);
  v9(v13, v4);
  v9(v14, v4);
  sub_22B172464(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v10 = sub_22B3606CC();

  (v2)[2](v2, v10, 0);

  _Block_release(v2);

  v11 = *(v15 + 8);

  return v11();
}

uint64_t HomeEnergyProxy.generateMockAMIData(siteID:startDate:endDate:forceAllReadingsToConstant:recordInterval:batchSize:rateSchedule:netMetering:direction:randomization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v18 = swift_task_alloc();
  *(v13 + 16) = v18;
  *v18 = v13;
  v18[1] = sub_22B1724FC;

  return sub_22B16B568(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_22B159EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, void *a12)
{
  v12[2] = a12;
  v12[3] = _Block_copy(a11);
  sub_22B36084C();
  v12[4] = v13;
  sub_22B36084C();
  v12[5] = v14;
  sub_22B36084C();
  v12[6] = v15;
  sub_22B36084C();
  v12[7] = v16;
  v17 = a12;
  v18 = swift_task_alloc();
  v12[8] = v18;
  *v18 = v12;
  v18[1] = sub_22B15A080;

  JUMPOUT(0x22B16B568);
}

uint64_t sub_22B15A080(char a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v4 + 24);
  if (v3)
  {
    v9 = sub_22B35DB8C();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(*(v4 + 24), a1 & 1, 0);
  }

  _Block_release(*(v5 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t HomeEnergyProxy.generateMultipleMeterMockAMIData(siteID:startDate:endDate:recordInterval:rateSchedule:multipleMeters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = v14;
  v9[15] = v8;
  v9[12] = a8;
  v9[13] = v13;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  v10 = sub_22B36052C();
  v9[16] = v10;
  v9[17] = *(v10 - 8);
  v9[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15A370, 0, 0);
}

uint64_t sub_22B15A370()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000066, 0x800000022B3694D0))
  {
    if (sub_22B35EEBC())
    {
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v1 = v0[10];
      v2 = v0[8];
      v3 = swift_task_alloc();
      v0[19] = v3;
      *v3 = v0;
      v3[1] = sub_22B15A548;
      v4 = v0[11];
      v5 = v0[12];
      v6 = v0[9];
      v7 = v0[6];
      v8 = v0[7];
      v9 = v0[5];

      return sub_22B256A74(v9, v7, v8, v2, v6, v1, v4, v5);
    }

    v12 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v11 = 9;
    swift_willThrow();

    v12 = v0[1];
  }

  return v12(0);
}

uint64_t sub_22B15A548(char a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B1724D8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_22B15A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *aBlock, void *a8, char a9)
{
  v9[2] = a8;
  v9[3] = _Block_copy(aBlock);
  v23 = sub_22B36084C();
  v12 = v11;
  v9[4] = v11;
  v13 = sub_22B36084C();
  v15 = v14;
  v9[5] = v14;
  v16 = sub_22B36084C();
  v18 = v17;
  v9[6] = v17;
  v19 = sub_22B36084C();
  v9[7] = v20;
  a8;
  v21 = swift_task_alloc();
  v9[8] = v21;
  *v21 = v9;
  v21[1] = sub_22B1724D0;

  return HomeEnergyProxy.generateMultipleMeterMockAMIData(siteID:startDate:endDate:recordInterval:rateSchedule:multipleMeters:)(v23, v12, v13, v15, v16, v18, a4, v19);
}

uint64_t sub_22B15A9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15AA6C, 0, 0);
}

uint64_t sub_22B15AA6C()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD00000000000002FLL, 0x800000022B36A5C0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = v0[6];
    v1 = v0[7];
    v3 = v0[4];
    v4 = sub_22B35DE9C();
    v5 = *(v4 - 8);
    (*(v5 + 16))(v1, v3, v4);
    v6 = *(v5 + 56);
    v6(v1, 0, 1, v4);
    v6(v2, 1, 1, v4);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_22B15ACAC;
    v9 = v0[6];
    v8 = v0[7];
    v11 = v0[2];
    v10 = v0[3];

    return sub_22B2263A0(v11, v10, 0, v8, v9);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v13 = 9;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22B15ACAC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 72) = v0;

  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B15AE6C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_22B15AE6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B15B068(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_22B35DE9C();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[5] = v8;
  v4[6] = _Block_copy(a3);
  v9 = sub_22B36084C();
  v11 = v10;
  v4[7] = v10;
  sub_22B35DE5C();
  a4;
  v12 = swift_task_alloc();
  v4[8] = v12;
  *v12 = v4;
  v12[1] = sub_22B172504;

  return sub_22B15A9C0(v9, v11, v8);
}

uint64_t sub_22B15B1BC()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15B258, 0, 0);
}

uint64_t sub_22B15B258()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD00000000000001CLL, 0x800000022B36A5A0))
  {
    if (sub_22B35EEBC())
    {
      v1 = *(v0 + 24);
      v2 = sub_22B360B6C();
      (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      sub_22B123DF0(0, 0, v1, &unk_22B363F80, v3);
    }

    v4 = *(v0 + 8);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v5 = 9;
    swift_willThrow();

    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_22B15B3FC()
{
  if (qword_28140A0B8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  return sub_22B2E11D4(1);
}

uint64_t sub_22B15B638(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22B1724DC;

  return sub_22B15B1BC();
}

uint64_t sub_22B15B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22B35DF1C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15B7E4, 0, 0);
}

uint64_t sub_22B15B7E4()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000026, 0x800000022B36A570))
  {
    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    v6 = v0[4];
    v16 = v0[3];
    v7 = v0[2];
    type metadata accessor for ShareManager();
    v8 = swift_allocObject();
    sub_22B360B3C();
    v9 = sub_22B360B6C();
    (*(*(v9 - 8) + 56))(v1, 0, 1, v9);
    (*(v3 + 16))(v2, v7, v5);
    v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 4) = v8;
    (*(v3 + 32))(&v11[v10], v2, v5);
    v12 = &v11[(v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v12 = v16;
    *(v12 + 1) = v6;

    sub_22B322A98(0, 0, v1, &unk_22B363F48, v11);

    sub_22B123284(v1, &qword_27D8BA8D0, &qword_22B363610);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v14 = 9;
    swift_willThrow();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B15BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_22B124D88;

  return sub_22B1B2A80(a5, a6, a7);
}

uint64_t sub_22B15BC9C(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_22B35DF1C();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[5] = v8;
  v4[6] = _Block_copy(a3);
  sub_22B35DEFC();
  v9 = sub_22B36084C();
  v11 = v10;
  v4[7] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[8] = v12;
  *v12 = v4;
  v12[1] = sub_22B14B094;

  return sub_22B15B6E0(v8, v9, v11);
}

uint64_t sub_22B15BDF0()
{
  v1[15] = v0;
  v2 = sub_22B3605EC();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_22B36062C();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_22B36064C();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = type metadata accessor for CDEnergySite(0);
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v6 = sub_22B35F01C();
  v1[32] = v6;
  v1[33] = *(v6 - 8);
  v1[34] = swift_task_alloc();
  v7 = sub_22B36052C();
  v1[35] = v7;
  v1[36] = *(v7 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15C0E8, 0, 0);
}

uint64_t sub_22B15C0E8()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000012, 0x800000022B36A530))
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = sub_22B36081C();
    v3 = [v1 initWithSuiteName_];

    if (!v3)
    {
LABEL_5:
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v6 = v0[41];
      v7 = v0[35];
      v8 = v0[36];
      v9 = __swift_project_value_buffer(v7, qword_28140BD10);
      v0[43] = v9;
      swift_beginAccess();
      v10 = *(v8 + 16);
      v0[44] = v10;
      v0[45] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v10(v6, v9, v7);
      v11 = sub_22B36050C();
      v12 = sub_22B360D1C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22B116000, v11, v12, "Resetting all data!", v13, 2u);
        MEMORY[0x23188F650](v13, -1, -1);
      }

      v14 = v0[41];
      v15 = v0[35];
      v16 = v0[36];

      v17 = *(v16 + 8);
      v0[46] = v17;
      v17(v14, v15);
      if (qword_28140B2D8 != -1)
      {
        swift_once();
      }

      (*(v0[33] + 104))(v0[34], *MEMORY[0x277D073C8], v0[32]);
      v18 = swift_task_alloc();
      v0[47] = v18;
      *v18 = v0;
      v18[1] = sub_22B15C6BC;
      v19 = v0[34];

      return sub_22B141FF0(0, v19);
    }

    v4 = sub_22B36081C();
    v5 = [v3 BOOLForKey_];

    if (v5)
    {

      goto LABEL_5;
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = v0[42];
    v24 = v0[35];
    v25 = v0[36];
    v26 = __swift_project_value_buffer(v24, qword_28140BD10);
    swift_beginAccess();
    (*(v25 + 16))(v23, v26, v24);
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[42];
    v31 = v0[35];
    v32 = v0[36];
    if (v29)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22B116000, v27, v28, "Reset config not found! Skipping reset.", v33, 2u);
      MEMORY[0x23188F650](v33, -1, -1);
    }

    (*(v32 + 8))(v30, v31);

    v22 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v21 = 9;
    swift_willThrow();

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_22B15C6BC(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  *(*v1 + 384) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B15C81C, 0, 0);
}

uint64_t sub_22B15C81C()
{
  v50 = v0;
  v1 = v0[48];
  if (v1)
  {
    v2 = *(v1 + 16);
    v0[49] = v2;
    if (v2)
    {
      v3 = v0[27];
      v0[50] = sub_22B35EAFC();
      v4 = *(v3 + 80);
      *(v0 + 112) = v4;
      v0[51] = *(v3 + 72);
      v0[52] = 0;
      v5 = v0[44];
      v6 = v0[43];
      v7 = v0[40];
      v8 = v0[35];
      v10 = v0[30];
      v9 = v0[31];
      sub_22B16F4CC(v1 + ((v4 + 32) & ~v4), v9);
      v5(v7, v6, v8);
      sub_22B16F4CC(v9, v10);
      v11 = sub_22B36050C();
      v12 = sub_22B360D1C();
      v13 = os_log_type_enabled(v11, v12);
      v14 = v0[46];
      v15 = v0[40];
      v16 = v0[35];
      v17 = v0[30];
      if (v13)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v49 = v19;
        *v18 = 136315138;
        v44 = v15;
        v46 = v14;
        v21 = *v17;
        v20 = v17[1];

        sub_22B16F530(v17);
        v22 = sub_22B1A7B20(v21, v20, &v49);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_22B116000, v11, v12, "Resetting all data for site: %s!", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x23188F650](v19, -1, -1);
        MEMORY[0x23188F650](v18, -1, -1);

        v46(v44, v16);
      }

      else
      {

        sub_22B16F530(v17);
        v14(v15, v16);
      }

      v23 = sub_22B35EAEC();
      v0[53] = v23;
      v24 = v23;
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v25 = swift_task_alloc();
      v0[54] = v25;
      *v25 = v0;
      v25[1] = sub_22B15D00C;

      return sub_22B23D0CC(v24);
    }
  }

  (v0[44])(v0[37], v0[43], v0[35]);
  v27 = sub_22B36050C();
  v28 = sub_22B360D1C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22B116000, v27, v28, "Reset complete. Restarting daemon!", v29, 2u);
    MEMORY[0x23188F650](v29, -1, -1);
  }

  v30 = v0[46];
  v31 = v0[37];
  v32 = v0[35];
  v33 = v0[24];
  v34 = v0[25];
  v35 = v0[23];
  v40 = v0[21];
  v47 = v0[19];
  v48 = v0[22];
  v41 = v0[18];
  v43 = v0[17];
  v45 = v0[20];
  v42 = v0[16];

  v30(v31, v32);
  sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
  v36 = sub_22B360D9C();
  sub_22B36063C();
  sub_22B36065C();
  v37 = *(v35 + 8);
  v37(v33, v48);
  v0[6] = sub_22B15E3A8;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B118A6C;
  v0[5] = &block_descriptor_3;
  v38 = _Block_copy(v0 + 2);
  sub_22B36060C();
  v0[14] = MEMORY[0x277D84F90];
  sub_22B172464(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B124A3C();
  sub_22B36104C();
  MEMORY[0x23188E6A0](v34, v40, v41, v38);
  _Block_release(v38);

  (*(v43 + 8))(v41, v42);
  (*(v45 + 8))(v40, v47);
  v37(v34, v48);

  v39 = v0[1];

  return v39();
}

uint64_t sub_22B15D00C()
{
  *(*v1 + 440) = v0;

  if (v0)
  {

    v2 = sub_22B15DA70;
  }

  else
  {
    v2 = sub_22B15D128;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B15D128()
{
  v90 = v0;
  v86 = *(v0 + 440);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  (*(v0 + 352))(*(v0 + 312), *(v0 + 344), *(v0 + 280));
  sub_22B16F4CC(v1, v2);
  v3 = sub_22B36050C();
  v4 = sub_22B360D1C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 424);
  v7 = *(v0 + 368);
  v8 = *(v0 + 312);
  v9 = *(v0 + 280);
  v10 = *(v0 + 232);
  if (v5)
  {
    v81 = *(v0 + 368);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v89[0] = v12;
    *v11 = 136315138;
    v78 = v8;
    v13 = *v10;
    v14 = v10[1];

    sub_22B16F530(v10);
    v15 = sub_22B1A7B20(v13, v14, v89);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22B116000, v3, v4, "Reset all data for site: %s!", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);

    v81(v78, v9);
  }

  else
  {

    sub_22B16F530(v10);
    v7(v8, v9);
  }

  v16 = *(v0 + 392);
  v17 = *(v0 + 416) + 1;
  sub_22B16F530(*(v0 + 248));
  if (v17 == v16)
  {
LABEL_5:

    (*(v0 + 352))(*(v0 + 296), *(v0 + 344), *(v0 + 280));
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B116000, v18, v19, "Reset complete. Restarting daemon!", v20, 2u);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    v21 = *(v0 + 368);
    v22 = *(v0 + 296);
    v23 = *(v0 + 280);
    v24 = *(v0 + 192);
    v25 = *(v0 + 200);
    v26 = *(v0 + 184);
    v87 = *(v0 + 176);
    v75 = *(v0 + 168);
    v82 = *(v0 + 160);
    v85 = *(v0 + 152);
    v79 = *(v0 + 136);
    v76 = *(v0 + 144);
    v77 = *(v0 + 128);

    v21(v22, v23);
    sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
    v27 = sub_22B360D9C();
    sub_22B36063C();
    sub_22B36065C();
    v28 = *(v26 + 8);
    v28(v24, v87);
    *(v0 + 48) = sub_22B15E3A8;
    *(v0 + 56) = 0;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22B118A6C;
    *(v0 + 40) = &block_descriptor_3;
    v29 = _Block_copy((v0 + 16));
    sub_22B36060C();
    *(v0 + 112) = MEMORY[0x277D84F90];
    sub_22B172464(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
    sub_22B124A3C();
    sub_22B36104C();
    MEMORY[0x23188E6A0](v25, v75, v76, v29);
    _Block_release(v29);

    (*(v79 + 8))(v76, v77);
    (*(v82 + 8))(v75, v85);
    v28(v25, v87);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    while (1)
    {
      v39 = *(v0 + 408);
      v40 = *(v0 + 416) + 1;
      *(v0 + 416) = v40;
      v41 = *(v0 + 352);
      v42 = *(v0 + 344);
      v43 = *(v0 + 320);
      v44 = *(v0 + 280);
      v46 = *(v0 + 240);
      v45 = *(v0 + 248);
      sub_22B16F4CC(*(v0 + 384) + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + v39 * v40, v45);
      v41(v43, v42, v44);
      sub_22B16F4CC(v45, v46);
      v47 = sub_22B36050C();
      v48 = sub_22B360D1C();
      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 368);
      v51 = *(v0 + 320);
      v52 = *(v0 + 280);
      v53 = *(v0 + 240);
      if (v49)
      {
        v54 = swift_slowAlloc();
        v80 = v50;
        v84 = v51;
        v55 = swift_slowAlloc();
        v89[0] = v55;
        *v54 = 136315138;
        v56 = *v53;
        v57 = v53[1];

        sub_22B16F530(v53);
        v58 = sub_22B1A7B20(v56, v57, v89);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_22B116000, v47, v48, "Resetting all data for site: %s!", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x23188F650](v55, -1, -1);
        MEMORY[0x23188F650](v54, -1, -1);

        v80(v84, v52);
      }

      else
      {

        sub_22B16F530(v53);
        v50(v51, v52);
      }

      v59 = sub_22B35EAEC();
      *(v0 + 424) = v59;
      if (!v86)
      {
        break;
      }

      v60 = *(v0 + 352);
      v61 = *(v0 + 344);
      v62 = *(v0 + 304);
      v63 = *(v0 + 280);
      v64 = *(v0 + 248);
      v65 = *(v0 + 224);

      v60(v62, v61, v63);
      sub_22B16F4CC(v64, v65);
      v66 = sub_22B36050C();
      v67 = sub_22B360D1C();
      v68 = os_log_type_enabled(v66, v67);
      v69 = *(v0 + 368);
      v70 = *(v0 + 304);
      v71 = *(v0 + 280);
      v72 = *(v0 + 224);
      if (v68)
      {
        v88 = *(v0 + 368);
        v32 = swift_slowAlloc();
        v83 = v70;
        v33 = swift_slowAlloc();
        v89[0] = v33;
        *v32 = 136315138;
        v34 = *v72;
        v35 = v72[1];

        sub_22B16F530(v72);
        v36 = sub_22B1A7B20(v34, v35, v89);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_22B116000, v66, v67, "Failed to reset all data for site: %s!", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x23188F650](v33, -1, -1);
        MEMORY[0x23188F650](v32, -1, -1);

        v88(v83, v71);
      }

      else
      {

        sub_22B16F530(v72);
        v69(v70, v71);
      }

      v37 = *(v0 + 392);
      v38 = *(v0 + 416) + 1;
      sub_22B16F530(*(v0 + 248));
      v86 = 0;
      if (v38 == v37)
      {
        goto LABEL_5;
      }
    }

    v73 = v59;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v74 = swift_task_alloc();
    *(v0 + 432) = v74;
    *v74 = v0;
    v74[1] = sub_22B15D00C;

    return sub_22B23D0CC(v73);
  }
}

uint64_t sub_22B15DA70()
{
  v67 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  (*(v0 + 352))(*(v0 + 312), *(v0 + 344), *(v0 + 280));
  sub_22B16F4CC(v1, v2);
  v3 = sub_22B36050C();
  v4 = sub_22B360D1C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 424);
  v7 = *(v0 + 368);
  v8 = *(v0 + 312);
  v9 = *(v0 + 280);
  v10 = *(v0 + 232);
  if (v5)
  {
    v11 = swift_slowAlloc();
    v62 = v7;
    v12 = swift_slowAlloc();
    v66[0] = v12;
    *v11 = 136315138;
    v59 = v8;
    v13 = *v10;
    v14 = v10[1];

    sub_22B16F530(v10);
    v15 = sub_22B1A7B20(v13, v14, v66);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22B116000, v3, v4, "Reset all data for site: %s!", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);

    v62(v59, v9);
  }

  else
  {

    sub_22B16F530(v10);
    v7(v8, v9);
  }

  v16 = *(v0 + 392);
  v17 = *(v0 + 416) + 1;
  sub_22B16F530(*(v0 + 248));
  if (v17 == v16)
  {

    (*(v0 + 352))(*(v0 + 296), *(v0 + 344), *(v0 + 280));
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B116000, v18, v19, "Reset complete. Restarting daemon!", v20, 2u);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    v21 = *(v0 + 368);
    v22 = *(v0 + 296);
    v23 = *(v0 + 280);
    v24 = *(v0 + 192);
    v25 = *(v0 + 200);
    v26 = *(v0 + 184);
    v55 = *(v0 + 168);
    v63 = *(v0 + 152);
    v65 = *(v0 + 176);
    v56 = *(v0 + 144);
    v58 = *(v0 + 136);
    v60 = *(v0 + 160);
    v57 = *(v0 + 128);

    v21(v22, v23);
    sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
    v27 = sub_22B360D9C();
    sub_22B36063C();
    sub_22B36065C();
    v28 = *(v26 + 8);
    v28(v24, v65);
    *(v0 + 48) = sub_22B15E3A8;
    *(v0 + 56) = 0;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22B118A6C;
    *(v0 + 40) = &block_descriptor_3;
    v29 = _Block_copy((v0 + 16));
    sub_22B36060C();
    *(v0 + 112) = MEMORY[0x277D84F90];
    sub_22B172464(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
    sub_22B124A3C();
    sub_22B36104C();
    MEMORY[0x23188E6A0](v25, v55, v56, v29);
    _Block_release(v29);

    (*(v58 + 8))(v56, v57);
    (*(v60 + 8))(v55, v63);
    v28(v25, v65);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v32 = *(v0 + 408);
    v33 = *(v0 + 416) + 1;
    *(v0 + 416) = v33;
    v34 = *(v0 + 352);
    v35 = *(v0 + 344);
    v36 = *(v0 + 320);
    v37 = *(v0 + 280);
    v39 = *(v0 + 240);
    v38 = *(v0 + 248);
    sub_22B16F4CC(*(v0 + 384) + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + v32 * v33, v38);
    v34(v36, v35, v37);
    sub_22B16F4CC(v38, v39);
    v40 = sub_22B36050C();
    v41 = sub_22B360D1C();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 368);
    v44 = *(v0 + 320);
    v45 = *(v0 + 280);
    v46 = *(v0 + 240);
    if (v42)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v66[0] = v48;
      *v47 = 136315138;
      v61 = v44;
      v64 = v43;
      v50 = *v46;
      v49 = v46[1];

      sub_22B16F530(v46);
      v51 = sub_22B1A7B20(v50, v49, v66);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_22B116000, v40, v41, "Resetting all data for site: %s!", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23188F650](v48, -1, -1);
      MEMORY[0x23188F650](v47, -1, -1);

      v64(v61, v45);
    }

    else
    {

      sub_22B16F530(v46);
      v43(v44, v45);
    }

    v52 = sub_22B35EAEC();
    *(v0 + 424) = v52;
    v53 = v52;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v54 = swift_task_alloc();
    *(v0 + 432) = v54;
    *v54 = v0;
    v54[1] = sub_22B15D00C;

    return sub_22B23D0CC(v53);
  }
}

uint64_t sub_22B15E3A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_22B360B6C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_22B360B1C();
  v4 = sub_22B360B0C();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_22B123DF0(0, 0, v2, &unk_22B363F10, v5);
}

uint64_t sub_22B15E4B4()
{
  v0[2] = sub_22B360B1C();
  v0[3] = sub_22B360B0C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_22B15E56C;

  return sub_22B2EE02C();
}

uint64_t sub_22B15E56C()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v4;
  v2[1] = sub_22B15E6A8;

  return sub_22B2EFE0C();
}

uint64_t sub_22B15E6A8()
{

  v1 = sub_22B360ACC();

  return MEMORY[0x2822009F8](sub_22B15E7E4, v1, v0);
}

uint64_t sub_22B15E988(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22B15EA30;

  return sub_22B15BDF0();
}

uint64_t sub_22B15EA30()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_22B35DB8C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_22B15EBB4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_22B12B3CC(a1, v20);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  sub_22B11A02C(v20, v16 + 48);
  *(v16 + 88) = a4;
  *(v16 + 96) = a5;
  *(v16 + 104) = a6;

  v17 = sub_22B145224(0, 0, v14, &unk_22B363EC0, v16);
  sub_22B123284(v14, &qword_27D8BA8D0, &qword_22B363610);
  return v17;
}

uint64_t sub_22B15ED38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v10;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 16) = a5;
  *(v8 + 72) = a4;
  return MEMORY[0x2822009F8](sub_22B15ED6C, 0, 0);
}

uint64_t sub_22B15ED6C()
{
  if (*(v0 + 72))
  {
    v9 = sub_22B345C0C;

    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v2 = sub_22B15EF98;
  }

  else
  {
    v9 = sub_22B3455DC;

    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v2 = sub_22B15EE88;
  }

  v1[1] = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);

  return v9(v6, v7, v5, v3, v4);
}

uint64_t sub_22B15EE88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B15EF98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B15F0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_22B35DE9C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_22B36052C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15F1EC, 0, 0);
}

uint64_t sub_22B15F1EC()
{
  v64 = v0;
  if (qword_28140A0C8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  v62 = v4;
  v61 = *(v2 + 16);
  v61(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  v10 = v0[12];
  v9 = v0[13];
  if (v7)
  {
    v12 = v0[5];
    v11 = v0[6];
    v58 = v0[16];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v63 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v63);
    _os_log_impl(&dword_22B116000, v5, v6, "Executing task %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v15 = *(v9 + 8);
    v15(v58, v10);
  }

  else
  {

    v15 = *(v9 + 8);
    v15(v8, v10);
  }

  if (v0[7] >= 1)
  {
    v16 = 0;
    v17 = (v0[9] + 8);
    v56 = v15;
    while ((sub_22B360BFC() & 1) == 0)
    {
      v61(v0[15], v62, v0[12]);

      v20 = sub_22B36050C();
      v21 = sub_22B360D2C();

      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[15];
      v24 = v0[12];
      if (v22)
      {
        v25 = v16;
        v27 = v0[5];
        v26 = v0[6];
        v28 = swift_slowAlloc();
        v59 = v24;
        v29 = swift_slowAlloc();
        v63 = v29;
        *v28 = 136315138;
        v30 = v27;
        v16 = v25;
        *(v28 + 4) = sub_22B1A7B20(v30, v26, &v63);
        _os_log_impl(&dword_22B116000, v20, v21, "Spinning CPU for 5s in task %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x23188F650](v29, -1, -1);
        v31 = v28;
        v15 = v56;
        MEMORY[0x23188F650](v31, -1, -1);

        v32 = v23;
        v33 = v59;
      }

      else
      {

        v32 = v23;
        v33 = v24;
      }

      v15(v32, v33);
      sub_22B35DE6C();
      do
      {
        v34 = v0[10];
        v35 = v0[8];
        sub_22B35DE6C();
        sub_22B35DD3C();
        v37 = v36;
        v38 = *v17;
        (*v17)(v34, v35);
      }

      while (v37 < 5.0);
      v39 = __OFADD__(v16, 5);
      v40 = v16 + 5;
      if (v39)
      {
        __break(1u);
        goto LABEL_22;
      }

      v60 = v40;
      v61(v0[14], v62, v0[12]);

      v41 = sub_22B36050C();
      v42 = sub_22B360D2C();

      v43 = os_log_type_enabled(v41, v42);
      v57 = v0[14];
      v44 = v0[11];
      v45 = v0[12];
      v46 = v0[8];
      if (v43)
      {
        v55 = v0[11];
        v48 = v0[5];
        v47 = v0[6];
        v49 = swift_slowAlloc();
        v54 = v46;
        v50 = swift_slowAlloc();
        v63 = v50;
        *v49 = 136315138;
        v51 = v48;
        v15 = v56;
        *(v49 + 4) = sub_22B1A7B20(v51, v47, &v63);
        _os_log_impl(&dword_22B116000, v41, v42, "Finished spinning CPU in task %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x23188F650](v50, -1, -1);
        MEMORY[0x23188F650](v49, -1, -1);

        v56(v57, v45);
        v19 = v54;
        v18 = v55;
      }

      else
      {

        v15(v57, v45);
        v18 = v44;
        v19 = v46;
      }

      v38(v18, v19);
      v16 = v60;
      if (v60 >= v0[7])
      {
        break;
      }
    }
  }

  v52 = v0[1];

  return v52();
}

uint64_t sub_22B15F740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_22B35DE9C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_22B36052C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B15F890, 0, 0);
}

uint64_t sub_22B15F890()
{
  v76 = v0;
  if (qword_28140A0C8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  v74 = v4;
  v73 = *(v2 + 16);
  v73(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  v10 = v0[12];
  v9 = v0[13];
  if (v7)
  {
    v12 = v0[5];
    v11 = v0[6];
    v72 = v0[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v75 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v75);
    _os_log_impl(&dword_22B116000, v5, v6, "Executing task %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v15 = *(v9 + 8);
    v15(v72, v10);
  }

  else
  {

    v15 = *(v9 + 8);
    v15(v8, v10);
  }

  if (v0[7] < 1)
  {
LABEL_18:
    v53 = 1;
  }

  else
  {
    v16 = 0;
    v17 = (v0[9] + 8);
    v69 = v15;
    while ((sub_22B360BFC() & 1) == 0)
    {
      v73(v0[15], v74, v0[12]);

      v20 = sub_22B36050C();
      v21 = sub_22B360D2C();

      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[15];
      v24 = v0[12];
      if (v22)
      {
        v70 = v0[12];
        v25 = v16;
        v27 = v0[5];
        v26 = v0[6];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v75 = v29;
        *v28 = 136315138;
        v30 = v27;
        v16 = v25;
        *(v28 + 4) = sub_22B1A7B20(v30, v26, &v75);
        _os_log_impl(&dword_22B116000, v20, v21, "Spinning CPU for 5s in task %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x23188F650](v29, -1, -1);
        v31 = v28;
        v15 = v69;
        MEMORY[0x23188F650](v31, -1, -1);

        v32 = v23;
        v33 = v70;
      }

      else
      {

        v32 = v23;
        v33 = v24;
      }

      v15(v32, v33);
      sub_22B35DE6C();
      do
      {
        v34 = v0[10];
        v35 = v0[8];
        sub_22B35DE6C();
        sub_22B35DD3C();
        v37 = v36;
        v38 = *v17;
        (*v17)(v34, v35);
      }

      while (v37 < 5.0);
      v39 = __OFADD__(v16, 5);
      v40 = v16 + 5;
      if (v39)
      {
        __break(1u);
        goto LABEL_27;
      }

      v71 = v40;
      v73(v0[14], v74, v0[12]);

      v41 = sub_22B36050C();
      v42 = sub_22B360D2C();

      v43 = os_log_type_enabled(v41, v42);
      v44 = v0[14];
      v45 = v0[11];
      v46 = v0[12];
      v47 = v0[8];
      if (v43)
      {
        v68 = v0[8];
        v49 = v0[5];
        v48 = v0[6];
        v67 = v0[11];
        v50 = swift_slowAlloc();
        v66 = v44;
        v51 = swift_slowAlloc();
        v75 = v51;
        *v50 = 136315138;
        v52 = v49;
        v15 = v69;
        *(v50 + 4) = sub_22B1A7B20(v52, v48, &v75);
        _os_log_impl(&dword_22B116000, v41, v42, "Woke up in task %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x23188F650](v51, -1, -1);
        MEMORY[0x23188F650](v50, -1, -1);

        v69(v66, v46);
        v18 = v67;
        v19 = v68;
      }

      else
      {

        v15(v44, v46);
        v18 = v45;
        v19 = v47;
      }

      v38(v18, v19);
      v16 = v71;
      if (v71 >= v0[7])
      {
        goto LABEL_18;
      }
    }

    v73(v0[16], v74, v0[12]);

    v56 = sub_22B36050C();
    v57 = sub_22B360D2C();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v0[16];
    v60 = v0[12];
    if (v58)
    {
      v61 = v15;
      v63 = v0[5];
      v62 = v0[6];
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v75 = v65;
      *v64 = 136315138;
      *(v64 + 4) = sub_22B1A7B20(v63, v62, &v75);
      _os_log_impl(&dword_22B116000, v56, v57, "Task %s failed to complete due to task cancellation", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x23188F650](v65, -1, -1);
      MEMORY[0x23188F650](v64, -1, -1);

      v61(v59, v60);
    }

    else
    {

      v15(v59, v60);
    }

    v53 = 0;
  }

  v54 = v0[1];

  return v54(v53);
}

uint64_t sub_22B1600E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void *a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v13 = sub_22B36084C();
  v15 = v14;
  v7[4] = v14;
  v16 = a7;
  v17 = swift_task_alloc();
  v7[5] = v17;
  *v17 = v7;
  v17[1] = sub_22B160200;

  return sub_22B16CE8C(v13, v15, a2, a3, a4, a5);
}

uint64_t sub_22B160200()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_22B35DB8C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_22B160530(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_22B36084C();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = sub_22B3606EC();
  }

  v4[5] = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_22B160654;

  return sub_22B16D34C(v7, v9, a2);
}

uint64_t sub_22B160654()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_22B35DB8C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_22B1609A0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B36084C();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_22B160A88;

  return sub_22B16D544(v5, v7);
}

uint64_t sub_22B160A88(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    a1 = sub_22B35DB8C();

    v8 = a1;
LABEL_3:
    v9 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v8 = 0;
    goto LABEL_3;
  }

  v10 = sub_22B3606CC();

  v9 = v10;
  v8 = 0;
  a1 = v10;
LABEL_6:
  v11 = *(v5 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_22B160DE4(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B36084C();
  v11 = v10;
  v4[5] = v10;
  v12 = a4;
  v13 = swift_task_alloc();
  v4[6] = v13;
  *v13 = v4;
  v13[1] = sub_22B160EF4;

  return sub_22B16D734(v6, v8, v9, v11);
}

uint64_t sub_22B160EF4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_22B35DB8C();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_22B161254(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_22B35DF1C();
  v3[2] = v5;
  v3[3] = *(v5 - 8);
  v3[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = _Block_copy(a3);
  v3[8] = sub_22B36084C();
  v3[9] = v6;
  sub_22B35DEFC();

  return MEMORY[0x2822009F8](sub_22B161398, 0, 0);
}

uint64_t sub_22B161398()
{
  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC50;
  *(v0 + 80) = qword_28140BC50;

  return MEMORY[0x2822009F8](sub_22B161430, v1, 0);
}

uint64_t sub_22B161430()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_22B126FD4(v0[8], v0[9], v3, v1);

  v6 = *(v4 + 8);
  v6(v3, v5);
  sub_22B170CD0(v1, v2, &qword_27D8BA970, &unk_22B363560);
  if ((*(v4 + 48))(v2, 1, v5) == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = v0[5];
    v9 = v0[2];
    v7 = sub_22B35DEDC();
    v6(v8, v9);
  }

  v10 = v0[7];
  (v10)[2](v10, v7);
  _Block_release(v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B161728(uint64_t a1, const void *a2)
{
  v4 = sub_22B35DF1C();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a2);
  sub_22B35DEFC();

  return MEMORY[0x2822009F8](sub_22B161810, 0, 0);
}

uint64_t sub_22B161810()
{
  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC50;
  *(v0 + 48) = qword_28140BC50;

  return MEMORY[0x2822009F8](sub_22B1618A8, v1, 0);
}

uint64_t sub_22B1618A8()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_22B12708C(v2);
  (*(v3 + 8))(v2, v4);
  v1[2](v1);
  _Block_release(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B161AEC(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_22B35DF1C();
  v3[2] = v5;
  v3[3] = *(v5 - 8);
  v3[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = _Block_copy(a3);
  v3[8] = sub_22B36084C();
  v3[9] = v6;
  sub_22B35DEFC();

  return MEMORY[0x2822009F8](sub_22B161C30, 0, 0);
}

uint64_t sub_22B161C30()
{
  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC50;
  *(v0 + 80) = qword_28140BC50;

  return MEMORY[0x2822009F8](sub_22B161CC8, v1, 0);
}

uint64_t sub_22B161CC8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_22B1275EC(v0[8], v0[9], v3, v1);

  v6 = *(v4 + 8);
  v6(v3, v5);
  sub_22B170CD0(v1, v2, &qword_27D8BA970, &unk_22B363560);
  if ((*(v4 + 48))(v2, 1, v5) == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = v0[5];
    v9 = v0[2];
    v7 = sub_22B35DEDC();
    v6(v8, v9);
  }

  v10 = v0[7];
  (v10)[2](v10, v7);
  _Block_release(v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B161FC0(uint64_t a1, const void *a2)
{
  v4 = sub_22B35DF1C();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a2);
  sub_22B35DEFC();

  return MEMORY[0x2822009F8](sub_22B1620A8, 0, 0);
}

uint64_t sub_22B1620A8()
{
  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC50;
  *(v0 + 48) = qword_28140BC50;

  return MEMORY[0x2822009F8](sub_22B162140, v1, 0);
}

uint64_t sub_22B162140()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_22B127AEC(v1);
  v5 = v4;
  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = sub_22B36081C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[5];
  (v7)[2](v7, v6);

  _Block_release(v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B1623CC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v4[10] = a3;
  v6 = sub_22B35D8BC();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = sub_22B35DF1C();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = _Block_copy(a4);
  sub_22B35DEFC();
  sub_22B35D85C();

  return MEMORY[0x2822009F8](sub_22B162530, 0, 0);
}

uint64_t sub_22B162530()
{
  v1 = sub_22B35EABC();
  v2 = sub_22B35EAAC();
  v0[5] = v1;
  v0[6] = &off_283EF8EA8;
  v0[2] = v2;
  type metadata accessor for ActivityLogCoordinator();
  v3 = swift_allocObject();
  v0[18] = v3;
  v4 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v5 = *(v1 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v1);
  v7 = *v6;
  v3[5] = v1;
  v3[6] = &off_283EF8EA8;
  v3[2] = v7;
  v3[7] = 5000;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  type metadata accessor for LoadEventManager();
  inited = swift_initStackObject();
  v0[19] = inited;
  *(inited + 16) = v3;
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_22B1626E0;
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[10];

  return sub_22B1A8FD4(v10, v11, v12);
}

uint64_t sub_22B1626E0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 168) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B1628C0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 136);
    v7 = *(v4 + 120);
    v6 = *(v4 + 128);
    v9 = *(v4 + 104);
    v8 = *(v4 + 112);
    v10 = *(v4 + 88);
    v11 = *(v4 + 96);

    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    (*(v5 + 16))(v5, a1, 0);
    _Block_release(*(v4 + 136));

    v12 = *(v4 + 8);

    return v12();
  }
}

uint64_t sub_22B1628C0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v9 = sub_22B35DB8C();

  (*(v2 + 16))(v2, 0, v9);
  _Block_release(*(v0 + 136));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B1629C4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B1629EC, 0, 0);
}

uint64_t sub_22B1629EC()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000031, 0x800000022B36A4F0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_22B1724F8;
    v2 = *(v0 + 48);
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);

    return sub_22B225ED0(v4, v3, v2);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v6 = 9;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_22B162CF8(uint64_t a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_22B36084C();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_22B1724C4;

  return sub_22B1629C4(v7, v9, a2);
}

uint64_t sub_22B162F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void *a6)
{
  v6[2] = a6;
  v9 = sub_22B35D8BC();
  v6[3] = v9;
  v6[4] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[5] = v10;
  v11 = sub_22B35DF1C();
  v6[6] = v11;
  v6[7] = *(v11 - 8);
  v12 = swift_task_alloc();
  v6[8] = v12;
  v6[9] = _Block_copy(a5);
  sub_22B35DEFC();
  v13 = sub_22B36084C();
  v15 = v14;
  v6[10] = v14;
  v16 = sub_22B36084C();
  v18 = v17;
  v6[11] = v17;
  sub_22B35D85C();
  v19 = a6;
  v20 = swift_task_alloc();
  v6[12] = v20;
  *v20 = v6;
  v20[1] = sub_22B16318C;

  return sub_22B16E084(v12, v13, v15, v16, v18, v10);
}

uint64_t sub_22B16318C()
{
  v1 = *v0;
  v2 = *v0;
  v14 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v13 = *(*v0 + 48);
  v12 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v7 = *v0;

  (*(v4 + 8))(v12, v5);
  (*(v3 + 8))(v14, v13);
  v8 = *(v1 + 72);
  if (v15)
  {
    v9 = sub_22B35DB8C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v1 + 72), 0);
  }

  _Block_release(*(v2 + 72));

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_22B1635B4(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_22B35DE9C();
  v3[2] = v5;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  v7 = sub_22B35DF1C();
  v3[5] = v7;
  v3[6] = *(v7 - 8);
  v8 = swift_task_alloc();
  v3[7] = v8;
  v3[8] = _Block_copy(a3);
  sub_22B35DEFC();
  sub_22B35DE5C();
  v9 = swift_task_alloc();
  v3[9] = v9;
  *v9 = v3;
  v9[1] = sub_22B16375C;

  return sub_22B16E444(v8, v6);
}

uint64_t sub_22B16375C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v7 = *(*v0 + 16);
  v10 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v1[2](v1);
  _Block_release(v1);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_22B163AC0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B163B68;

  return sub_22B16E764();
}

uint64_t sub_22B163B68(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v7 = *v2;

  v4 = sub_22B36081C();

  (v3)[2](v3, v4);

  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22B163E40(uint64_t a1, const void *a2)
{
  v4 = sub_22B35DE9C();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a2);
  sub_22B35DE5C();

  return MEMORY[0x2822009F8](sub_22B163F28, 0, 0);
}

uint64_t sub_22B163F28()
{
  if (qword_27D8B9F88 != -1)
  {
    swift_once();
  }

  v1 = qword_27D8BB1B0;
  *(v0 + 48) = qword_27D8BB1B0;

  return MEMORY[0x2822009F8](sub_22B163FC0, v1, 0);
}

uint64_t sub_22B163FC0()
{
  sub_22B186D64();

  return MEMORY[0x2822009F8](sub_22B164028, 0, 0);
}

uint64_t sub_22B164028()
{
  if (qword_27D8B9F78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_22B1640F4;
  v2 = *(v0 + 32);

  return sub_22B1758E0(v2);
}

uint64_t sub_22B1640F4()
{

  return MEMORY[0x2822009F8](sub_22B1641F0, 0, 0);
}

uint64_t sub_22B1641F0()
{
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_22B1642BC;
  v2 = *(v0 + 32);

  return sub_22B318D18(v2);
}

uint64_t sub_22B1642BC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2](v1);
  _Block_release(v1);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22B1645B4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B16461C, 0, 0);
}

uint64_t sub_22B16461C()
{
  if (qword_281408F18 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B1646E0;

  return sub_22B243C7C();
}

uint64_t sub_22B1646E0(uint64_t a1)
{
  v3 = *v2;
  v3[4] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B1648B0, 0, 0);
  }

  else
  {
    sub_22B35DF1C();
    sub_22B172464(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v4 = sub_22B3606CC();

    v5 = v3[2];
    (v5)[2](v5, v4, 0);

    _Block_release(v5);
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_22B1648B0()
{
  v1 = v0[4];
  v2 = sub_22B35DB8C();

  v3 = v0[2];
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22B164948(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22B128014(0, &unk_27D8BA380, 0x277CBFC40);
    **(*(v4 + 64) + 40) = sub_22B360A5C();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_22B164A38(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22B164A84(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_22B164AE4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_22B164AF4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_22B164B68(unint64_t a1, char a2, void *a3)
{
  v7 = sub_22B35DE9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA358, qword_22B368000);
  MEMORY[0x28223BE20](v11);
  v15 = v52 - v14;
  v57 = *(a1 + 16);
  if (!v57)
  {
    goto LABEL_22;
  }

  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v56 = *(v13 + 72);
  v58 = a1;
  v52[0] = v17;
  v52[1] = v3;
  sub_22B170BE0(a1 + v17, v52 - v14, &qword_27D8BA358, qword_22B368000);
  v53 = v8;
  v18 = *(v8 + 32);
  v59 = v7;
  v18(v10, v15, v7);
  v55 = v16;
  v19 = *&v15[v16];
  v20 = *a3;
  v21 = sub_22B33B348(v10);
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v22;
  if (v20[3] < v26)
  {
    sub_22B33C6DC(v26, a2 & 1);
    v21 = sub_22B33B348(v10);
    if ((v27 & 1) != (v28 & 1))
    {
LABEL_5:
      sub_22B3613BC();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v31 = v21;
  sub_22B3416BC();
  v21 = v31;
  if (v27)
  {
LABEL_9:
    v29 = swift_allocError();
    swift_willThrow();
    v62 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v53 + 8))(v10, v59);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = *a3;
  *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
  v33 = v32[6];
  v54 = *(v53 + 72);
  v34 = v21;
  v18((v33 + v54 * v21), v10, v59);
  *(v32[7] + 8 * v34) = v19;
  v35 = v32[2];
  v25 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v25)
  {
    v32[2] = v36;
    if (v57 == 1)
    {
LABEL_22:

      return;
    }

    v37 = v58 + v56 + v52[0];
    v38 = 1;
    while (v38 < *(v58 + 16))
    {
      sub_22B170BE0(v37, v15, &qword_27D8BA358, qword_22B368000);
      v18(v10, v15, v59);
      v39 = *&v15[v55];
      v40 = *a3;
      v41 = sub_22B33B348(v10);
      v43 = v40[2];
      v44 = (v42 & 1) == 0;
      v25 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v25)
      {
        goto LABEL_23;
      }

      v46 = v42;
      if (v40[3] < v45)
      {
        sub_22B33C6DC(v45, 1);
        v41 = sub_22B33B348(v10);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v46)
      {
        goto LABEL_9;
      }

      v48 = *a3;
      *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      v49 = v41;
      v18((v48[6] + v54 * v41), v10, v59);
      *(v48[7] + 8 * v49) = v39;
      v50 = v48[2];
      v25 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      ++v38;
      v48[2] = v51;
      v37 += v56;
      if (v57 == v38)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_22B36116C();
  MEMORY[0x23188E270](0xD00000000000001BLL, 0x800000022B36A630);
  sub_22B36122C();
  MEMORY[0x23188E270](39, 0xE100000000000000);
  sub_22B36126C();
  __break(1u);
}

id sub_22B1650BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_22B36050C();
  v9 = sub_22B360D0C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "Creating HomeEnergyProxy", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_unknownObjectWeakAssign();
  v11 = type metadata accessor for HomeEnergyProxy();
  v14.receiver = v2;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_22B1652B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = a4;
  *(v4 + 192) = a3;
  *(v4 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v4 + 112) = swift_task_alloc();
  v5 = sub_22B35DE9C();
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v6 = sub_22B36052C();
  *(v4 + 152) = v6;
  *(v4 + 160) = *(v6 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B165430, 0, 0);
}

uint64_t sub_22B165430()
{
  v85 = v0;
  if (sub_22B35EEBC())
  {
    if (*(v0 + 192) == 1)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 184);
      v2 = *(v0 + 152);
      v3 = *(v0 + 160);
      v4 = __swift_project_value_buffer(v2, qword_28140BD10);
      swift_beginAccess();
      (*(v3 + 16))(v1, v4, v2);
      v5 = sub_22B36050C();
      v6 = sub_22B360D2C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_22B116000, v5, v6, "Disabling use of mock data", v7, 2u);
        MEMORY[0x23188F650](v7, -1, -1);
      }

      v8 = *(v0 + 184);
      v9 = *(v0 + 152);
      v10 = *(v0 + 160);

      (*(v10 + 8))(v8, v9);
      v11 = objc_opt_self();
      v12 = [v11 standardUserDefaults];
      v13 = sub_22B36081C();
      [v12 removeObjectForKey_];

      v14 = [v11 standardUserDefaults];
      v15 = sub_22B36081C();
      [v14 removeObjectForKey_];

      v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v17 = sub_22B36081C();
      v18 = [v16 initWithSuiteName_];

      if (v18)
      {
        v19 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v20 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v21 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v22 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v23 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v24 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v25 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v26 = sub_22B36081C();
        [v18 removeObjectForKey_];

        v27 = sub_22B36081C();
        [v18 removeObjectForKey_];
      }

      if (qword_28140AA30 != -1)
      {
        swift_once();
      }
    }

    else
    {
      v28 = *(v0 + 96);
      if (v28)
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v29 = *(v0 + 176);
        v30 = *(v0 + 152);
        v31 = *(v0 + 160);
        v32 = __swift_project_value_buffer(v30, qword_28140BD10);
        swift_beginAccess();
        (*(v31 + 16))(v29, v32, v30);

        v33 = sub_22B36050C();
        v34 = sub_22B360D2C();

        v35 = os_log_type_enabled(v33, v34);
        v36 = *(v0 + 176);
        v37 = *(v0 + 152);
        v38 = *(v0 + 160);
        if (v35)
        {
          v39 = *(v0 + 88);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v84 = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_22B1A7B20(v39, v28, &v84);
          _os_log_impl(&dword_22B116000, v33, v34, "Enabling use of mock data from file at %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x23188F650](v41, -1, -1);
          MEMORY[0x23188F650](v40, -1, -1);
        }

        (*(v38 + 8))(v36, v37);
        v42 = [objc_opt_self() standardUserDefaults];
        v43 = sub_22B36081C();
        v44 = sub_22B36081C();
        [v42 setObject:v43 forKey:v44];
      }

      else
      {
        v45 = *(v0 + 120);
        v46 = *(v0 + 128);
        v47 = *(v0 + 112);
        sub_22B170BE0(*(v0 + 104), v47, &qword_27D8BA340, &qword_22B363FB0);
        if ((*(v46 + 48))(v47, 1, v45) == 1)
        {
          sub_22B123284(*(v0 + 112), &qword_27D8BA340, &qword_22B363FB0);
        }

        else
        {
          (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 112), *(v0 + 120));
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v49 = *(v0 + 160);
          v48 = *(v0 + 168);
          v51 = *(v0 + 144);
          v50 = *(v0 + 152);
          v53 = *(v0 + 128);
          v52 = *(v0 + 136);
          v54 = *(v0 + 120);
          v55 = __swift_project_value_buffer(v50, qword_28140BD10);
          swift_beginAccess();
          (*(v49 + 16))(v48, v55, v50);
          (*(v53 + 16))(v52, v51, v54);
          v56 = sub_22B36050C();
          v57 = sub_22B360D2C();
          v58 = os_log_type_enabled(v56, v57);
          v60 = *(v0 + 160);
          v59 = *(v0 + 168);
          v61 = *(v0 + 152);
          v63 = *(v0 + 128);
          v62 = *(v0 + 136);
          v64 = *(v0 + 120);
          if (v58)
          {
            v83 = *(v0 + 168);
            v65 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v84 = v82;
            *v65 = 136315138;
            sub_22B172464(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v66 = sub_22B36131C();
            log = v56;
            v81 = v61;
            v68 = v67;
            v69 = *(v63 + 8);
            v69(v62, v64);
            v70 = v69;
            v71 = sub_22B1A7B20(v66, v68, &v84);

            *(v65 + 4) = v71;
            _os_log_impl(&dword_22B116000, log, v57, "Setting mock data validUntil date to %s", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v82);
            MEMORY[0x23188F650](v82, -1, -1);
            MEMORY[0x23188F650](v65, -1, -1);

            (*(v60 + 8))(v83, v81);
          }

          else
          {

            v72 = *(v63 + 8);
            v72(v62, v64);
            v70 = v72;
            (*(v60 + 8))(v59, v61);
          }

          v73 = *(v0 + 144);
          v74 = *(v0 + 120);
          v75 = [objc_opt_self() standardUserDefaults];
          v76 = sub_22B35DDDC();
          v77 = sub_22B36081C();
          [v75 setObject:v76 forKey:v77];

          v70(v73, v74);
        }
      }
    }
  }

  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_22B165E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[98] = a3;
  v3[97] = a2;
  v3[96] = a1;
  v4 = sub_22B35DE9C();
  v3[99] = v4;
  v3[100] = *(v4 - 8);
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v5 = sub_22B36052C();
  v3[103] = v5;
  v3[104] = *(v5 - 8);
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B165F70, 0, 0);
}

uint64_t sub_22B165F70()
{
  if (sub_22B35EEBC())
  {
    if (qword_28140A7B0 != -1)
    {
      swift_once();
    }

    v0[107] = qword_28140BD40;
    v1 = swift_task_alloc();
    v0[108] = v1;
    *v1 = v0;
    v1[1] = sub_22B1660B0;

    return sub_22B28C6E0();
  }

  else
  {

    v3 = v0[1];

    return v3(0, 0xE000000000000000);
  }
}

uint64_t sub_22B1660B0(char a1)
{
  *(*v1 + 82) = a1;

  return MEMORY[0x2822009F8](sub_22B1661B0, 0, 0);
}

uint64_t sub_22B1661B0()
{
  v70 = v0;
  if (*(v0 + 82))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 840);
    v2 = *(v0 + 832);
    v3 = *(v0 + 824);
    v4 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Permission for notifications granted", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v8 = 0xED00007473616365;
    v9 = *(v0 + 840);
    v10 = *(v0 + 832);
    v11 = *(v0 + 824);
    v12 = *(v0 + 784);

    (*(v10 + 8))(v9, v11);
    v13 = 0x800000022B36A9F0;
    if (*(v12 + 16) && (v14 = sub_22B33B28C(0x656C746974, 0xE500000000000000), (v15 & 1) != 0) && (sub_22B170C58(*(*(v0 + 784) + 56) + 32 * v14, v0 + 304), swift_dynamicCast()))
    {
      v60 = *(v0 + 752);
      v8 = *(v0 + 760);
    }

    else
    {
      v60 = 0x726F462064697247;
    }

    if (!*(v12 + 16))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0xD000000000000039;
      goto LABEL_42;
    }

    v29 = sub_22B33B28C(2036625250, 0xE400000000000000);
    if (v30)
    {
      sub_22B170C58(*(*(v0 + 784) + 56) + 32 * v29, v0 + 336);
      v31 = swift_dynamicCast();
      v32 = 0xD000000000000039;
      if (v31)
      {
        v32 = *(v0 + 736);
        v13 = *(v0 + 744);
      }
    }

    else
    {
      v32 = 0xD000000000000039;
    }

    v64 = v32;
    if (*(v12 + 16) && (v33 = sub_22B33B28C(0x4C5255706174, 0xE600000000000000), (v34 & 1) != 0))
    {
      sub_22B170C58(*(*(v0 + 784) + 56) + 32 * v33, v0 + 400);
      sub_22B172454((v0 + 400), (v0 + 368));
      sub_22B172454((v0 + 368), (v0 + 624));
      v35 = swift_dynamicCast();
      if (v35)
      {
        v36 = *(v0 + 720);
      }

      else
      {
        v36 = 0;
      }

      if (v35)
      {
        v37 = *(v0 + 728);
      }

      else
      {
        v37 = 0;
      }

      v62 = v37;
      v63 = v36;
      if (!*(v12 + 16))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v62 = 0;
      v63 = 0;
      if (!*(v12 + 16))
      {
        goto LABEL_42;
      }
    }

    v38 = sub_22B33B28C(0x4449656D6F68, 0xE600000000000000);
    if (v39)
    {
      sub_22B170C58(*(*(v0 + 784) + 56) + 32 * v38, v0 + 464);
      sub_22B172454((v0 + 464), (v0 + 432));
      sub_22B172454((v0 + 432), (v0 + 592));
      v40 = swift_dynamicCast();
      if (v40)
      {
        v41 = *(v0 + 704);
      }

      else
      {
        v41 = 0;
      }

      if (v40)
      {
        v42 = *(v0 + 712);
      }

      else
      {
        v42 = 0;
      }

      if (!*(v12 + 16))
      {
        goto LABEL_45;
      }

LABEL_43:
      v43 = sub_22B33B28C(0xD000000000000012, 0x800000022B36A9D0);
      if (v44)
      {
        sub_22B170C58(*(*(v0 + 784) + 56) + 32 * v43, v0 + 528);
        sub_22B172454((v0 + 528), (v0 + 496));
        sub_22B172454((v0 + 496), (v0 + 560));
        v61 = swift_dynamicCast() & *(v0 + 81);
LABEL_46:
        v28 = *(v0 + 776);
        v59 = v13;
        v45 = v8;
        if (v42)
        {
          *&v65 = *(v0 + 768);
          *(&v65 + 1) = v28;

          MEMORY[0x23188E270](45, 0xE100000000000000);
          MEMORY[0x23188E270](v41, v42);
          v46 = v65;
        }

        else
        {

          v46 = *(v0 + 768);
        }

        v58 = v46;
        v47 = *(v0 + 816);
        v48 = *(v0 + 808);
        v49 = *(v0 + 800);
        v50 = *(v0 + 792);
        sub_22B35DE6C();
        sub_22B35DDCC();
        v51 = *(v49 + 8);
        v51(v48, v50);
        *(v0 + 160) = v60;
        *(v0 + 168) = v45;
        *(v0 + 176) = v64;
        *(v0 + 184) = v59;
        *(v0 + 192) = v63;
        *(v0 + 200) = v62;
        *(v0 + 208) = v41;
        *(v0 + 216) = v42;
        *(v0 + 224) = v61;
        v52 = *(v0 + 208);
        v67 = *(v0 + 192);
        v68 = v52;
        v69 = *(v0 + 224);
        v53 = *(v0 + 176);
        v65 = *(v0 + 160);
        v66 = v53;
        sub_22B1723A4(v0 + 160, v0 + 232);
        v27 = v58;
        sub_22B28E828(v47, v58, v28, &v65);

        v54 = v65;
        *(v0 + 104) = v66;
        v55 = v68;
        *(v0 + 120) = v67;
        *(v0 + 136) = v55;
        *(v0 + 152) = v69;
        *(v0 + 88) = v54;
        sub_22B172400(v0 + 88);
        v51(v47, v50);
        *(v0 + 16) = v60;
        *(v0 + 24) = v45;
        *(v0 + 32) = v64;
        *(v0 + 40) = v59;
        *(v0 + 48) = v63;
        *(v0 + 56) = v62;
        *(v0 + 64) = v41;
        *(v0 + 72) = v42;
        *(v0 + 80) = v61;
        sub_22B172400(v0 + 16);
        goto LABEL_50;
      }

LABEL_45:
      v61 = 0;
      goto LABEL_46;
    }

LABEL_42:
    v41 = 0;
    v42 = 0;
    if (!*(v12 + 16))
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 848);
  v17 = *(v0 + 832);
  v18 = *(v0 + 824);
  v19 = __swift_project_value_buffer(v18, qword_28140BD10);
  swift_beginAccess();
  (*(v17 + 16))(v16, v19, v18);
  v20 = sub_22B36050C();
  v21 = sub_22B360D1C();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 848);
  v24 = *(v0 + 832);
  v25 = *(v0 + 824);
  if (v22)
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_22B116000, v20, v21, "Permission for notifications denied", v26, 2u);
    MEMORY[0x23188F650](v26, -1, -1);
  }

  (*(v24 + 8))(v23, v25);
  v27 = 0;
  v28 = 0xE000000000000000;
LABEL_50:

  v56 = *(v0 + 8);

  return v56(v27, v28);
}

uint64_t sub_22B166900()
{
  v1 = sub_22B36052C();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1669BC, 0, 0);
}

uint64_t sub_22B1669BC()
{
  if (sub_22B35EEBC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[6];
    v1 = v0[7];
    v3 = v0[5];
    v4 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Setting mock url session", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];

    (*(v9 + 8))(v8, v10);
    sub_22B128014(0, &qword_27D8BA230, 0x277CCAD30);
    sub_22B35E3EC();
    v11 = sub_22B360CDC();
    v0[8] = v11;
    if (qword_28140AA30 != -1)
    {
      v15 = v11;
      swift_once();
      v11 = v15;
    }

    v12 = qword_28140BD50;
    v0[9] = qword_28140BD50;
    v13 = v11;

    return MEMORY[0x2822009F8](sub_22B166BF4, v12, 0);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22B166BF4()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 128);
  *(v1 + 128) = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_22B166C64, 0, 0);
}

uint64_t sub_22B166C64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B166CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[101] = a3;
  v3[100] = a2;
  v3[99] = a1;
  return MEMORY[0x2822009F8](sub_22B166CF4, 0, 0);
}

uint64_t sub_22B166CF4()
{
  v1 = *(v0 + 808);
  if (*(v1 + 16))
  {
    v2 = sub_22B33B28C(0x656C746974, 0xE500000000000000);
    if (v3)
    {
      v4 = *(v0 + 808);
      sub_22B170C58(*(v4 + 56) + 32 * v2, v0 + 376);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 728);
        *(v0 + 816) = v5;
        v6 = *(v0 + 736);
        *(v0 + 824) = v6;
        if (*(v1 + 16))
        {
          v7 = sub_22B33B28C(2036625250, 0xE400000000000000);
          if (v8)
          {
            sub_22B170C58(*(v4 + 56) + 32 * v7, v0 + 408);
            if (swift_dynamicCast())
            {
              v31 = *(v0 + 744);
              *(v0 + 832) = v31;
              v30 = *(v0 + 752);
              *(v0 + 840) = v30;
              v9 = *(v1 + 16);
              if (v9)
              {
                v10 = sub_22B33B28C(0x4C5255706174, 0xE600000000000000);
                if (v11)
                {
                  sub_22B170C58(*(v4 + 56) + 32 * v10, v0 + 472);
                  sub_22B172454((v0 + 472), (v0 + 440));
                  sub_22B172454((v0 + 440), (v0 + 696));
                  v12 = swift_dynamicCast();
                  v9 = *(v0 + 776);
                  if (v12)
                  {
                    v13 = *(v0 + 784);
                  }

                  else
                  {
                    v9 = 0;
                    v13 = 0;
                  }

                  goto LABEL_18;
                }

                v9 = 0;
              }

              v13 = 0;
LABEL_18:
              *(v0 + 856) = v13;
              v29 = v9;
              *(v0 + 848) = v9;
              if (*(v1 + 16) && (v16 = sub_22B33B28C(0x4449656D6F68, 0xE600000000000000), (v17 & 1) != 0))
              {
                sub_22B170C58(*(v4 + 56) + 32 * v16, v0 + 536);
                sub_22B172454((v0 + 536), (v0 + 504));
                sub_22B172454((v0 + 504), (v0 + 664));
                v18 = swift_dynamicCast();
                if (v18)
                {
                  v19 = *(v0 + 760);
                }

                else
                {
                  v19 = 0;
                }

                if (v18)
                {
                  v20 = *(v0 + 768);
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v19 = 0;
                v20 = 0;
              }

              *(v0 + 872) = v20;
              *(v0 + 864) = v19;
              if (*(v1 + 16) && (v21 = sub_22B33B28C(0xD000000000000012, 0x800000022B36A9D0), (v22 & 1) != 0))
              {
                sub_22B170C58(*(v4 + 56) + 32 * v21, v0 + 600);
                sub_22B172454((v0 + 600), (v0 + 568));
                sub_22B172454((v0 + 568), (v0 + 632));
                v23 = swift_dynamicCast() & *(v0 + 81);
              }

              else
              {
                v23 = 0;
              }

              *(v0 + 82) = v23;
              if (qword_28140A6A0 != -1)
              {
                swift_once();
              }

              *(v0 + 160) = v5;
              *(v0 + 168) = v6;
              *(v0 + 176) = v31;
              *(v0 + 184) = v30;
              *(v0 + 192) = v29;
              *(v0 + 200) = v13;
              *(v0 + 208) = v19;
              *(v0 + 216) = v20;
              v24 = *(v0 + 160);
              *(v0 + 248) = *(v0 + 176);
              v25 = *(v0 + 208);
              *(v0 + 264) = *(v0 + 192);
              *(v0 + 280) = v25;
              *(v0 + 880) = qword_28140BD38;
              *(v0 + 224) = v23;
              *(v0 + 296) = *(v0 + 224);
              *(v0 + 232) = v24;

              sub_22B1723A4(v0 + 160, v0 + 304);
              v26 = swift_task_alloc();
              *(v0 + 888) = v26;
              *v26 = v0;
              v26[1] = sub_22B167110;
              v27 = *(v0 + 800);
              v28 = *(v0 + 792);

              return sub_22B21365C(v28, v27, v0 + 232);
            }
          }
        }
      }
    }
  }

  v14 = *(v0 + 8);

  return v14(7);
}

uint64_t sub_22B167110(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 + 232;
  *(v2 + 896) = a1;

  *(v2 + 104) = *(v2 + 248);
  v4 = *(v3 + 48);
  *(v2 + 120) = *(v3 + 32);
  *(v2 + 136) = v4;
  *(v2 + 152) = *(v2 + 296);
  *(v2 + 88) = *(v2 + 232);
  sub_22B172400(v2 + 88);

  return MEMORY[0x2822009F8](sub_22B167268, 0, 0);
}

uint64_t sub_22B167268()
{
  v1 = *(v0 + 82);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  *(v0 + 16) = *(v0 + 816);
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  v4 = *(v0 + 864);
  *(v0 + 48) = *(v0 + 848);
  *(v0 + 64) = v4;
  *(v0 + 80) = v1;
  sub_22B172400(v0 + 16);
  v5 = *(v0 + 896);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_22B1672F0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 138) = v13;
  *(v8 + 64) = a8;
  *(v8 + 72) = v12;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 136) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA390, &qword_22B364460);
  *(v8 + 80) = swift_task_alloc();
  v9 = sub_22B35E20C();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B167408, 0, 0);
}

uint64_t sub_22B167408()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  sub_22B35E1EC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22B123284(*(v0 + 80), &qword_27D8BA390, &qword_22B364460);

    v4 = *(v0 + 8);

    return v4(0, 0xF000000000000000);
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
    if (qword_28140AA30 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_22B1675E0;
    v7 = *(v0 + 104);
    v8 = *(v0 + 138);
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);

    return sub_22B294780(v14, v13, v7, v8, v11, v12, v9, v10);
  }
}

uint64_t sub_22B1675E0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x2822009F8](sub_22B1676E0, 0, 0);
}

uint64_t sub_22B1676E0()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[15];
  v2 = v0[16];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_22B167778(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 89) = a5;
  *(v5 + 88) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B1677A4, 0, 0);
}

uint64_t sub_22B1677A4()
{
  if (sub_22B35EEBC())
  {
    if (*(v0 + 89) == 1)
    {
      sub_22B128014(0, &qword_27D8BA230, 0x277CCAD30);
      sub_22B35E40C();
      v1 = sub_22B360CDC();
      *(v0 + 40) = v1;
      if (qword_281408858 != -1)
      {
        v10 = v1;
        swift_once();
        v1 = v10;
      }

      v2 = qword_28140BC40;
      *(v0 + 48) = qword_28140BC40;
      v3 = sub_22B1679C4;
    }

    else
    {
      if (*(v0 + 88) != 1)
      {
        if (qword_281408858 != -1)
        {
          swift_once();
        }

        *(v0 + 72) = qword_28140BC40;
        v8 = sub_22B167C4C;
        v9 = 0;
        goto LABEL_17;
      }

      sub_22B128014(0, &qword_27D8BA230, 0x277CCAD30);
      sub_22B35E3FC();
      v1 = sub_22B360CDC();
      *(v0 + 56) = v1;
      if (qword_281408858 != -1)
      {
        v11 = v1;
        swift_once();
        v1 = v11;
      }

      v2 = qword_28140BC40;
      *(v0 + 64) = qword_28140BC40;
      v3 = sub_22B167B08;
    }

    v6 = v3;
    v7 = v1;
    v8 = v6;
    v9 = v2;
LABEL_17:

    return MEMORY[0x2822009F8](v8, v9, 0);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B1679C4()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_22B167A34, 0, 0);
}

uint64_t sub_22B167A34()
{
  if (qword_281408858 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_22B167D18;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  return sub_22B35806C(v4, v2, v3);
}

uint64_t sub_22B167B08()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_22B167B78, 0, 0);
}

uint64_t sub_22B167B78()
{
  if (qword_281408858 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_22B167D18;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  return sub_22B35806C(v4, v2, v3);
}

uint64_t sub_22B167C4C()
{
  if (qword_281408858 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_22B167D18;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_22B35806C(v4, v2, v3);
}

uint64_t sub_22B167D18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B167E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_22B35E0BC();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_22B35E04C();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3B0, &unk_22B364610);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B167FC8, 0, 0);
}

uint64_t sub_22B167FC8()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v15 = v0[11];
  sub_22B35DFFC();
  sub_22B35E00C();
  (*(v3 + 8))(v2, v4);
  sub_22B338E80(v5, v1);
  v7 = (*(v6 + 8))(v5, v15);
  v8 = MEMORY[0x23188EEB0](v7);
  sub_22B35D82C();
  swift_allocObject();
  sub_22B35D81C();
  sub_22B1722F0();
  v9 = sub_22B35D80C();
  v11 = v10;
  v12 = v0[18];

  objc_autoreleasePoolPop(v8);
  sub_22B123284(v12, &qword_27D8BA3B0, &unk_22B364610);

  v13 = v0[1];

  return v13(v9, v11);
}

uint64_t sub_22B1683F0()
{
  v1 = sub_22B36052C();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1684B8, 0, 0);
}

uint64_t sub_22B1684B8()
{
  if (qword_281409E98 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BD00;
  *(v0 + 72) = qword_28140BD00;

  return MEMORY[0x2822009F8](sub_22B168550, v1, 0);
}

uint64_t sub_22B168550()
{
  *(v0 + 80) = sub_22B2A87C4();

  return MEMORY[0x2822009F8](sub_22B1685BC, 0, 0);
}

uint64_t sub_22B1685BC()
{
  v41 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  v38 = *(v3 + 16);
  v38(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[6];
    v35 = v0[5];
    v36 = v0[8];
    v10 = swift_slowAlloc();
    v37 = v5;
    v11 = swift_slowAlloc();
    v40 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_22B1A7B20(0xD000000000000014, 0x800000022B36A710, &v40);
    *(v10 + 12) = 2080;
    v12 = sub_22B35EF5C();
    v14 = sub_22B1A7B20(v12, v13, &v40);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_22B116000, v7, v8, "%s returning location from CL...%s", v10, 0x16u);
    swift_arrayDestroy();
    v15 = v11;
    v5 = v37;
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);

    v16 = *(v9 + 8);
    v16(v36, v35);
  }

  else
  {
    v17 = v0[8];
    v18 = v0[5];
    v19 = v0[6];

    v16 = *(v19 + 8);
    v16(v17, v18);
  }

  v20 = v0[10];
  v38(v0[7], v5, v0[5]);
  v21 = v20;
  v22 = sub_22B36050C();
  v23 = sub_22B360D0C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v0[10];
    v39 = v0[7];
    v25 = v0[5];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = v28;
    *v26 = 136315394;
    *(v26 + 4) = sub_22B1A7B20(0xD000000000000014, 0x800000022B36A710, &v40);
    *(v26 + 12) = 2112;
    *(v26 + 14) = v24;
    *v27 = v24;
    v29 = v24;
    _os_log_impl(&dword_22B116000, v22, v23, "\t...%s returning %@", v26, 0x16u);
    sub_22B123284(v27, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x23188F650](v28, -1, -1);
    MEMORY[0x23188F650](v26, -1, -1);

    v30 = v39;
  }

  else
  {
    v31 = v0[7];
    v25 = v0[5];

    v30 = v31;
  }

  v16(v30, v25);

  v32 = v0[1];
  v33 = v0[10];

  return v32(v33);
}

uint64_t sub_22B1689A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v16;
  *(v8 + 112) = v17;
  *(v8 + 88) = v15;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = sub_22B3604BC();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA370, &qword_22B364228);
  *(v8 + 160) = swift_task_alloc();
  v10 = sub_22B35FC0C();
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();
  v11 = sub_22B36047C();
  *(v8 + 192) = v11;
  *(v8 + 200) = *(v11 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v12 = sub_22B3604AC();
  *(v8 + 248) = v12;
  *(v8 + 256) = *(v12 - 8);
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B168C1C, 0, 0);
}

uint64_t sub_22B168C1C()
{
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = __swift_project_value_buffer(v3, qword_28140BC88);
  (*(v2 + 16))(v1, v4, v3);
  sub_22B36048C();
  sub_22B36045C();
  v5 = sub_22B36048C();
  v6 = sub_22B360E2C();
  if (sub_22B360FDC())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v5, v6, v8, "LeanHistoricalEnergyUsage", "", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[24];
  v12 = v0[25];
  v13 = v0[21];
  v14 = v0[22];
  v15 = v0[20];

  (*(v12 + 16))(v10, v9, v11);
  sub_22B3604EC();
  swift_allocObject();
  v0[34] = sub_22B3604DC();
  sub_22B35FBEC();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_22B123284(v0[20], &qword_27D8BA370, &qword_22B364228);
    v16 = sub_22B36048C();
    sub_22B3604CC();
    v17 = sub_22B360E1C();
    if (sub_22B360FDC())
    {
      v18 = v0[18];
      v19 = v0[15];
      v20 = v0[16];

      sub_22B3604FC();

      if ((*(v20 + 88))(v18, v19) == *MEMORY[0x277D85B00])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[16] + 8))(v0[18], v0[15]);
        v21 = "";
      }

      v40 = v0[25];
      v39 = v0[26];
      v41 = v0[24];
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v16, v17, v43, "LeanHistoricalEnergyUsage", v21, v42, 2u);
      MEMORY[0x23188F650](v42, -1, -1);

      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v37 = v0[25];
      v36 = v0[26];
      v38 = v0[24];

      (*(v37 + 8))(v36, v38);
    }

    v45 = v0[32];
    v44 = v0[33];
    v46 = v0[31];
    (*(v0[25] + 8))(v0[30], v0[24]);
    (*(v45 + 8))(v44, v46);

    v47 = v0[1];

    return v47(0);
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v22 = sub_22B36048C();
    v23 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v22, v23, v25, "Start: Fetch AMI Data", "", v24, 2u);
      MEMORY[0x23188F650](v24, -1, -1);
    }

    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v26 = swift_task_alloc();
    v0[35] = v26;
    *v26 = v0;
    v26[1] = sub_22B16919C;
    v27 = v0[10];
    v28 = v0[8];
    v29 = v0[9];
    v30 = v0[6];
    v31 = v0[7];
    v32 = v0[4];
    v33 = v0[5];
    v34 = v0[3];

    return sub_22B11EF20(v34, v32, v33, v30, v31, v28, v29, v27);
  }
}

uint64_t sub_22B16919C(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22B16929C, 0, 0);
}

uint64_t sub_22B16929C(uint64_t a1)
{
  v41 = v1;
  v2 = v1[36];
  if (v2)
  {
    v3 = sub_22B36048C();
    v4 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v3, v4, v6, "End: Fetch AMI Data", "", v5, 2u);
      MEMORY[0x23188F650](v5, -1, -1);
    }

    v8 = v1[33];
    v7 = v1[34];
    if (*(v2 + 16))
    {
      v9 = v1[30];
      v10 = MEMORY[0x23188EEB0]();
      sub_22B152800(v8, v9, v2, v7, v1 + 2, &v40);
      v17 = v1[22];
      v18 = v1[23];
      v19 = v1[21];

      objc_autoreleasePoolPop(v10);

      (*(v17 + 8))(v18, v19);
      v38 = v40;
      goto LABEL_14;
    }

    v11 = sub_22B36048C();
    sub_22B3604CC();
    v12 = sub_22B360E1C();
    if (sub_22B360FDC())
    {
      v13 = v1[19];
      v14 = v1[15];
      v15 = v1[16];

      sub_22B3604FC();

      if ((*(v15 + 88))(v13, v14) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[16] + 8))(v1[19], v1[15]);
        v16 = "";
      }

      v26 = v1[28];
      v27 = v1[24];
      v28 = v1[25];
      v29 = v1[22];
      v37 = v1[21];
      v39 = v1[23];
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v11, v12, v31, "LeanHistoricalEnergyUsage", v16, v30, 2u);
      MEMORY[0x23188F650](v30, -1, -1);

      (*(v28 + 8))(v26, v27);
      (*(v29 + 8))(v39, v37);
    }

    else
    {
      v20 = v1[28];
      v21 = v1[24];
      v22 = v1[25];
      v24 = v1[22];
      v23 = v1[23];
      v25 = v1[21];

      (*(v22 + 8))(v20, v21);
      (*(v24 + 8))(v23, v25);
    }
  }

  else
  {
    (*(v1[22] + 8))(v1[23], v1[21]);
  }

  v38 = 0;
LABEL_14:
  v33 = v1[32];
  v32 = v1[33];
  v34 = v1[31];
  (*(v1[25] + 8))(v1[30], v1[24]);
  (*(v33 + 8))(v32, v34);

  v35 = v1[1];

  return v35(v38);
}

uint64_t sub_22B169840(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_22B169860, 0, 0);
}

uint64_t sub_22B169860()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v0[5] = qword_28140BCB0;

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22B16994C;
  v3 = v0[3];
  v2 = v0[4];

  return sub_22B202CC8(v3, v2);
}

uint64_t sub_22B16994C(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_22B169A6C, 0, 0);
}

uint64_t sub_22B169A6C()
{
  v1 = v0[7];
  if (v1)
  {
    sub_22B35D82C();
    swift_allocObject();
    sub_22B35D81C();
    v0[2] = v1;
    sub_22B35FFDC();
    sub_22B172464(&unk_27D8BA3A0, MEMORY[0x277D18158], MEMORY[0x277D18160]);
    v2 = sub_22B35D80C();
    v4 = v3;

    v5 = v4;
    v6 = v2;
  }

  else
  {
    v6 = 0;
    v5 = 0xF000000000000000;
  }

  v7 = v0[1];

  return v7(v6, v5);
}

uint64_t sub_22B169B94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B169BB4, 0, 0);
}

uint64_t sub_22B169BB4()
{
  sub_22B3602DC();
  v1 = sub_22B36029C();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22B169C68;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x282172650](v4, v3, v1);
}

uint64_t sub_22B169C68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_22B16A004;
  }

  else
  {

    v4 = sub_22B169D84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B169D84()
{
  if (v0[6])
  {
    v5 = (*MEMORY[0x277D18150] + MEMORY[0x277D18150]);
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_22B169E9C;

    return v5();
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v3 = 15;
    swift_willThrow();
    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_22B169E9C(char a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_22B169F9C, 0, 0);
}

uint64_t sub_22B169F9C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_22B16A004()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22B16A06C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_22B16A08C, 0, 0);
}

uint64_t sub_22B16A08C()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v0[5] = qword_28140BCB0;

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22B16A178;
  v3 = v0[3];
  v2 = v0[4];

  return sub_22B202FC8(v3, v2);
}

uint64_t sub_22B16A178(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_22B16A298, 0, 0);
}

char *sub_22B16A298()
{
  v1 = v0[7];
  if (!v1)
  {
    v6 = 0;
LABEL_20:
    v16 = v0[1];

    return v16(v6);
  }

  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_19:

    v6 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  while (1)
  {
    v19 = MEMORY[0x277D84F90];
    result = sub_22B3556E4(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      break;
    }

    v4 = 0;
    v5 = v0[7];
    v6 = v19;
    v18 = v5 & 0xC000000000000001;
    v17 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v18)
      {
        v8 = MEMORY[0x23188EAC0](v4, v1);
      }

      else
      {
        if (v4 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v1 + 8 * v4 + 32);
      }

      v9 = v8;
      sub_22B35D82C();
      swift_allocObject();
      sub_22B35D81C();
      v0[2] = v9;
      sub_22B36025C();
      sub_22B172464(&qword_27D8BA398, MEMORY[0x277D18228], MEMORY[0x277D18230]);
      v10 = sub_22B35D80C();
      v12 = v11;

      v14 = *(v19 + 16);
      v13 = *(v19 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22B3556E4((v13 > 1), v14 + 1, 1);
      }

      *(v19 + 16) = v14 + 1;
      v15 = v19 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      ++v4;
      if (v7 == v2)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v2 = sub_22B36109C();
    if (!v2)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B16A504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v14;
  *(v8 + 80) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA350, &unk_22B364020);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA358, qword_22B368000);
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  v10 = sub_22B35FC0C();
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B16A6AC, 0, 0);
}

uint64_t sub_22B16A6AC()
{
  v71 = v0;
  if ((sub_22B35EEBC() & 1) == 0)
  {
    v19 = MEMORY[0x277D84F98];
    v20 = *(MEMORY[0x277D84F98] + 16);
    if (v20)
    {
      v55 = *(v0 + 144);
      v56 = *(v0 + 152);
      v68 = *(v0 + 104);
      v70[0] = MEMORY[0x277D84F90];
      sub_22B355704(0, v20, 0);
      v21 = v70[0];
      v22 = sub_22B36105C();
      v23 = 0;
      v24 = *(v19 + 36);
      v52 = v20;
      v53 = v24;
      v54 = v0;
      do
      {
        if ((v22 & 0x8000000000000000) != 0 || v22 >= 1 << *(v19 + 32))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if ((*(v19 + 8 * (v22 >> 6) + 64) & (1 << v22)) == 0)
        {
          goto LABEL_39;
        }

        if (v24 != *(v19 + 36))
        {
          goto LABEL_40;
        }

        v59 = 1 << v22;
        v60 = v19 + 8 * (v22 >> 6);
        v57 = v22 >> 6;
        v58 = v23;
        v25 = *(v68 + 48);
        v65 = v25;
        v63 = *(v0 + 160);
        v27 = *(v0 + 128);
        v26 = *(v0 + 136);
        v69 = *(v0 + 120);
        v67 = v21;
        v64 = *(v0 + 112);
        v28 = *(v19 + 48);
        v29 = sub_22B35DE9C();
        v30 = *(v29 - 8);
        (*(v30 + 16))(v26, v28 + *(v30 + 72) * v22, v29);
        v31 = *(v19 + 56);
        v32 = sub_22B35F00C();
        v33 = *(v32 - 8);
        (*(v33 + 16))(v26 + v25, v31 + *(v33 + 72) * v22, v32);
        v34 = *(v30 + 32);
        v34(v27, v26, v29);
        (*(v33 + 32))(v27 + *(v68 + 48), v26 + v65, v32);
        v61 = *(v55 + 48);
        v66 = v22;
        sub_22B170BE0(v27, v69, &qword_27D8BA350, &unk_22B364020);
        v62 = *(v68 + 48);
        v34(v63, v69, v29);
        sub_22B170BE0(v27, v64, &qword_27D8BA350, &unk_22B364020);
        v35 = *(v68 + 48);
        sub_22B35EFEC();
        v37 = v36;
        sub_22B123284(v27, &qword_27D8BA350, &unk_22B364020);
        *(v63 + v61) = v37;
        v38 = *(v33 + 8);
        v38(v64 + v35, v32);
        v21 = v67;
        (*(v30 + 8))(v64, v29);
        v38(v69 + v62, v32);
        v70[0] = v67;
        v0 = *(v67 + 16);
        v39 = *(v67 + 24);
        if (v0 >= v39 >> 1)
        {
          sub_22B355704((v39 > 1), v0 + 1, 1);
          v21 = v70[0];
        }

        v40 = v54[20];
        *(v21 + 16) = v0 + 1;
        sub_22B170CD0(v40, v21 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v0, &qword_27D8BA358, qword_22B368000);
        v22 = 1 << *(MEMORY[0x277D84F98] + 32);
        if (v66 >= v22)
        {
          goto LABEL_41;
        }

        v19 = MEMORY[0x277D84F98];
        v41 = *(v60 + 64);
        if ((v41 & v59) == 0)
        {
          goto LABEL_42;
        }

        v24 = v53;
        if (v53 != *(MEMORY[0x277D84F98] + 36))
        {
          goto LABEL_43;
        }

        v0 = v54;
        v42 = v41 & (-2 << (v66 & 0x3F));
        if (v42)
        {
          v22 = __clz(__rbit64(v42)) | v66 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v43 = v57 << 6;
          v44 = (v60 + 72);
          v45 = v57 + 1;
          while (v45 < (v22 + 63) >> 6)
          {
            v47 = *v44++;
            v46 = v47;
            v43 += 64;
            ++v45;
            if (v47)
            {
              sub_22B16FD40(v66, v53, 0);
              v22 = __clz(__rbit64(v46)) + v43;
              goto LABEL_15;
            }
          }

          sub_22B16FD40(v66, v53, 0);
        }

LABEL_15:
        v23 = v58 + 1;
      }

      while (v58 + 1 != v52);

      if (!*(v21 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {

      if (!*(MEMORY[0x277D84F90] + 16))
      {
LABEL_34:
        v48 = MEMORY[0x277D84F98];
        goto LABEL_35;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA360, &unk_22B364030);
    v48 = sub_22B3612BC();
LABEL_35:
    v70[0] = v48;

    sub_22B164B68(v49, 1, v70);

    v50 = v70[0];

    v51 = *(v0 + 8);

    return v51(v50);
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(*(v0 + 176) + 104);
  v3(*(v0 + 184), *MEMORY[0x277D074B0], *(v0 + 168));
  v4 = v2 == 0x4445535245564552 && v1 == 0xE800000000000000;
  if (v4 || (sub_22B36134C() & 1) != 0)
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 168);
    (*(*(v0 + 176) + 8))(v5, v6);
    v3(v5, *MEMORY[0x277D074A8], v6);
  }

  if (qword_27D8B9F60 != -1)
  {
LABEL_44:
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_22B16AE34;
  v8 = *(v0 + 184);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v17 = *(v0 + 16);
  v75 = 0;
  v76 = 0;
  v73 = v10;
  v74 = v8;

  return sub_22B11EF20(v14, v11, v12, v9, v17, v15, v16, v13);
}

uint64_t sub_22B16AE34(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_22B16AF34, 0, 0);
}

uint64_t sub_22B16AF34()
{
  v62 = v0;
  v1 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[21]);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v48 = v0[18];
    v49 = v0[19];
    v58 = v0[13];
    v61[0] = MEMORY[0x277D84F90];
    sub_22B355704(0, v3, 0);
    v60 = v61[0];
    v4 = v2 + 64;
    v5 = sub_22B36105C();
    v10 = v5;
    v11 = 0;
    v12 = *(v2 + 36);
    v42 = v2 + 72;
    v43 = v3;
    v46 = v0;
    v47 = v2 + 64;
    v44 = v12;
    v45 = v2;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v2 + 32))
    {
      if ((*(v4 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_32;
      }

      if (v12 != *(v2 + 36))
      {
        goto LABEL_33;
      }

      v51 = 1 << v10;
      v52 = v10 >> 6;
      v50 = v11;
      v13 = *(v58 + 48);
      v55 = v0[20];
      v15 = v0[16];
      v14 = v0[17];
      v59 = v0[15];
      v56 = v0[14];
      v16 = *(v2 + 48);
      v17 = sub_22B35DE9C();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v14, v16 + *(v18 + 72) * v10, v17);
      v19 = *(v2 + 56);
      v20 = sub_22B35F00C();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v14 + v13, v19 + *(v21 + 72) * v10, v20);
      v22 = *(v18 + 32);
      v22(v15, v14, v17);
      (*(v21 + 32))(v15 + *(v58 + 48), v14 + v13, v20);
      v53 = *(v48 + 48);
      v57 = v10;
      sub_22B170BE0(v15, v59, &qword_27D8BA350, &unk_22B364020);
      v54 = *(v58 + 48);
      v22(v55, v59, v17);
      sub_22B170BE0(v15, v56, &qword_27D8BA350, &unk_22B364020);
      v23 = *(v58 + 48);
      sub_22B35EFEC();
      v25 = v24;
      sub_22B123284(v15, &qword_27D8BA350, &unk_22B364020);
      *(v55 + v53) = v25;
      v26 = *(v21 + 8);
      v26(v56 + v23, v20);
      (*(v18 + 8))(v56, v17);
      v26(v59 + v54, v20);
      v61[0] = v60;
      v28 = *(v60 + 16);
      v27 = *(v60 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22B355704((v27 > 1), v28 + 1, 1);
        v60 = v61[0];
      }

      v29 = v46[20];
      *(v60 + 16) = v28 + 1;
      sub_22B170CD0(v29, v60 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v28, &qword_27D8BA358, qword_22B368000);
      v2 = v45;
      v10 = 1 << *(v45 + 32);
      v5 = v57;
      v4 = v47;
      if (v57 >= v10)
      {
        goto LABEL_34;
      }

      v30 = *(v47 + 8 * v52);
      if ((v30 & v51) == 0)
      {
        goto LABEL_35;
      }

      v12 = v44;
      if (v44 != *(v45 + 36))
      {
        goto LABEL_36;
      }

      v0 = v46;
      v31 = v30 & (-2 << (v57 & 0x3F));
      if (v31)
      {
        v10 = __clz(__rbit64(v31)) | v57 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v52 << 6;
        v33 = (v42 + 8 * v52);
        v34 = v52 + 1;
        while (v34 < (v10 + 63) >> 6)
        {
          v36 = *v33++;
          v35 = v36;
          v32 += 64;
          ++v34;
          if (v36)
          {
            v5 = sub_22B16FD40(v57, v44, 0);
            v10 = __clz(__rbit64(v35)) + v32;
            goto LABEL_7;
          }
        }

        v5 = sub_22B16FD40(v57, v44, 0);
      }

LABEL_7:
      v11 = v50 + 1;
      if (v50 + 1 == v43)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return MEMORY[0x2821FEBD8](v5, v6, v7, v8, v9);
  }

  else
  {

    v60 = MEMORY[0x277D84F90];
LABEL_25:
    if (*(v60 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA360, &unk_22B364030);
      v37 = sub_22B3612BC();
    }

    else
    {
      v37 = MEMORY[0x277D84F98];
    }

    v61[0] = v37;

    sub_22B164B68(v38, 1, v61);

    v39 = v61[0];

    v40 = v0[1];

    return v40(v39);
  }
}

uint64_t sub_22B16B568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 170) = v16;
  *(v9 + 112) = v15;
  *(v9 + 120) = v8;
  *(v9 + 169) = v14;
  *(v9 + 96) = v13;
  *(v9 + 80) = a6;
  *(v9 + 88) = a8;
  *(v9 + 168) = a7;
  *(v9 + 64) = a4;
  *(v9 + 72) = a5;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;
  *(v9 + 40) = a1;
  v10 = sub_22B36052C();
  *(v9 + 128) = v10;
  *(v9 + 136) = *(v10 - 8);
  *(v9 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B16B65C, 0, 0);
}

uint64_t sub_22B16B65C()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000093, 0x800000022B36A930))
  {
    if (sub_22B35EEBC())
    {
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v1 = swift_task_alloc();
      *(v0 + 152) = v1;
      *v1 = v0;
      v1[1] = sub_22B16B860;

      JUMPOUT(0x22B2806F4);
    }

    v3 = *(v0 + 8);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v2 = 9;
    swift_willThrow();

    v3 = *(v0 + 8);
  }

  return v3(0);
}

uint64_t sub_22B16B860(char a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B16B9B8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_22B16B9B8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_22B116000, v7, v8, "[Mock Generate Error] Failed due to %@", v10, 0xCu);
    sub_22B123284(v11, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17(0);
}

uint64_t dispatch thunk of HomeEnergyProxy.dumpAllData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B1724E0;

  return v5();
}

uint64_t dispatch thunk of HomeEnergyProxy.useMockData(filePath:disableMock:validityDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x98);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B124D88;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyProxy.testNotifications(forGridID:notificationContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B1724CC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HomeEnergyProxy.testDelegate(forGridIds:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B124D88;

  return v7(a1);
}

uint64_t dispatch thunk of HomeEnergyProxy.testSetMockURLSession()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return v5();
}

uint64_t dispatch thunk of HomeEnergyProxy.isNextCleanEnergyWindowNotificationEnabled(forGridID:homeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xB8);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B1490E4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyProxy.enableNextCleanEnergyWindowNotifications(forGridID:notificationContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xC0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B1724E0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HomeEnergyProxy.disableNextCleanEnergyWindowNotifications(forGridID:homeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xC8);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B1724E0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyProxy.disableNextCleanEnergyWindowNotifications(forGridID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xD0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B1724E0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of HomeEnergyProxy.disableAllNextCleanEnergyWindowNotifications()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B1724E0;

  return v5();
}

uint64_t dispatch thunk of HomeEnergyProxy.historicalGridQuality(for:from:withCaching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x100);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B1724CC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyProxy.gridIDLookup(coordinate:)(double a1, double a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x108);
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B147ABC;
  v8.n128_f64[0] = a1;
  v9.n128_f64[0] = a2;

  return v11(v8, v9);
}

uint64_t sub_22B16CAF4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return sub_22B1645B4(v2);
}

uint64_t sub_22B16CBA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B1816D0(v2, v3, v4);
}

uint64_t sub_22B16CC60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B124D88;

  return sub_22B1817B8(a1, v4, v5, v6);
}

uint64_t sub_22B16CD2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B163E40(v2, v3);
}

uint64_t sub_22B16CDE0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return sub_22B163AC0(v2);
}

uint64_t sub_22B16CE8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 217) = a6;
  *(v6 + 216) = a4;
  *(v6 + 176) = a3;
  *(v6 + 184) = a5;
  *(v6 + 160) = a1;
  *(v6 + 168) = a2;
  v7 = sub_22B36052C();
  *(v6 + 192) = v7;
  *(v6 + 200) = *(v7 - 8);
  *(v6 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B16CF58, 0, 0);
}

uint64_t sub_22B16CF58()
{
  v33 = v0;
  if (sub_22B35EEBC())
  {
    v1 = *(v0 + 217);
    v2 = MEMORY[0x23188EEB0]();
    if (v1 == 1)
    {
      sub_22B349C14(*(v0 + 160), *(v0 + 168));
    }

    else
    {
      v3 = [objc_opt_self() sharedScheduler];
      v4 = sub_22B36081C();
      v5 = [v3 taskRequestForIdentifier_];

      if (v5)
      {

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v6 = *(v0 + 200);
        v7 = *(v0 + 208);
        v8 = *(v0 + 192);
        v9 = __swift_project_value_buffer(v8, qword_28140BD10);
        swift_beginAccess();
        (*(v6 + 16))(v7, v9, v8);

        v10 = sub_22B36050C();
        v11 = sub_22B360D2C();

        v12 = os_log_type_enabled(v10, v11);
        v13 = *(v0 + 200);
        v14 = *(v0 + 208);
        v15 = *(v0 + 192);
        if (v12)
        {
          v17 = *(v0 + 160);
          v16 = *(v0 + 168);
          v31 = v2;
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v32 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_22B1A7B20(v17, v16, &v32);
          _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] %s is already scheduled", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x23188F650](v19, -1, -1);
          v20 = v18;
          v2 = v31;
          MEMORY[0x23188F650](v20, -1, -1);
        }

        (*(v13 + 8))(v14, v15);
      }

      else
      {
        v22 = *(v0 + 184);
        v23 = *(v0 + 216);
        v25 = *(v0 + 160);
        v24 = *(v0 + 168);
        *(v0 + 40) = &type metadata for BackgroundSystemTaskScheduler;
        *(v0 + 48) = &off_283EFE540;
        v26 = *(v0 + 176);
        type metadata accessor for BackgroundLaunchTask();
        v27 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, &type metadata for BackgroundSystemTaskScheduler);
        *(v0 + 80) = &type metadata for BackgroundSystemTaskScheduler;
        *(v0 + 88) = &off_283EFE540;
        swift_defaultActor_initialize();
        sub_22B11A02C((v0 + 56), v27 + 112);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v28 = swift_allocObject();
        *(v28 + 16) = v23;
        *(v28 + 24) = v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        *(v28 + 48) = v22;

        sub_22B348848(v25, v24, sub_22B16F320, v28);
        *(v0 + 120) = &type metadata for BackgroundSystemTaskRequest;
        *(v0 + 128) = &off_283EFE7E8;
        v29 = swift_allocObject();
        *(v0 + 96) = v29;
        *(v29 + 16) = v25;
        *(v29 + 24) = v24;
        *(v29 + 32) = v26;
        *(v29 + 40) = 0;

        sub_22B348FC8((v0 + 96), 0, 0);

        __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      }
    }

    objc_autoreleasePoolPop(v2);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22B16D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B16D370, 0, 0);
}

uint64_t sub_22B16D370()
{
  v1 = v0[3];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (qword_28140A1F0 != -1)
    {
      swift_once();
    }

    v3 = *(qword_28140BD28 + 40);
    if (v3)
    {
      v4 = v0[4];
      v5 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v8 = v0[2];
      v7 = v0[3];
      if (v4)
      {
        v15 = *(v5 + 120);

        v15(v4, v8, v7, ObjectType, v5);
      }

      else
      {
        v11 = *(v5 + 152);

        v11(v8, v7, ObjectType, v5);
      }

      v12 = *(v3 + 24);
      v13 = swift_getObjectType();
      (*(v12 + 16))(v13, v12);
    }

    v10 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_22B16D544(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B16D564, 0, 0);
}

uint64_t sub_22B16D564()
{
  v1 = v0[3];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (qword_28140A1F0 != -1)
    {
      swift_once();
    }

    v3 = *(qword_28140BD28 + 40);
    if (v3)
    {
      v5 = v0[2];
      v4 = v0[3];
      v6 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);

      v8(ObjectType, v6);
      v9 = *(v3 + 24);
      v10 = swift_getObjectType();
      v11 = (*(v9 + 48))(v5, v4, v10, v9);
    }

    else
    {
      v11 = 0;
    }

    v15 = v0[1];

    return v15(v11);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22B16D734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_22B36052C();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B16D81C, 0, 0);
}

uint64_t sub_22B16D81C()
{
  sub_22B36012C();
  v1 = [objc_opt_self() sharedSession];
  v0[18] = v1;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_22B16D8F0;
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];

  return MEMORY[0x2821724E8](v6, v5, v3, v4, v1);
}

uint64_t sub_22B16D8F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_22B16DE58;
  }

  else
  {

    v4 = sub_22B16DA0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B16DA0C()
{
  v47 = v0;
  v1 = sub_22B36016C();
  v3 = v2;
  v38 = sub_22B36015C();
  v44 = v4;
  v39 = sub_22B36017C();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  v9 = *(v7 + 16);
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 104);
  v40 = *(v0 + 96);
  v42 = *(v0 + 136);
  v45 = v9;
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v1;
    v17 = v15;
    v46 = v15;
    *v14 = 136315138;
    v18 = v8;
    v19 = sub_22B1A7B20(v16, v3, &v46);

    *(v14 + 4) = v19;
    v8 = v18;
    _os_log_impl(&dword_22B116000, v10, v11, "New refresh token: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    v20 = v14;
    v9 = v45;
    MEMORY[0x23188F650](v20, -1, -1);
  }

  else
  {
  }

  v21 = v42;
  v43 = *(v13 + 8);
  v43(v21, v40);
  v9(*(v0 + 128), v8, *(v0 + 96));

  v22 = sub_22B36050C();
  v23 = sub_22B360D2C();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 128);
  v26 = *(v0 + 96);
  if (v24)
  {
    v41 = v8;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    v29 = sub_22B1A7B20(v38, v44, &v46);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_22B116000, v22, v23, "New access token: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v30 = v28;
    v9 = v45;
    MEMORY[0x23188F650](v30, -1, -1);
    v31 = v27;
    v8 = v41;
    MEMORY[0x23188F650](v31, -1, -1);
  }

  else
  {
  }

  v43(v25, v26);
  v9(*(v0 + 120), v8, *(v0 + 96));
  v32 = sub_22B36050C();
  v33 = sub_22B360D2C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v39;
    _os_log_impl(&dword_22B116000, v32, v33, "Access token expires in: %ld", v34, 0xCu);
    MEMORY[0x23188F650](v34, -1, -1);
  }

  v43(*(v0 + 120), *(v0 + 96));

  v35 = *(v0 + 8);
  v36 = *(v0 + 168) == 0;

  return v35(v36);
}

uint64_t sub_22B16DE58()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 168);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22B116000, v7, v8, "Failed to rotate token. %@", v11, 0xCu);
    sub_22B123284(v12, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v15 = *(v0 + 8);
  v16 = *(v0 + 168) == 0;

  return v15(v16);
}

uint64_t sub_22B16E084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  return MEMORY[0x2822009F8](sub_22B16E0AC, 0, 0);
}

uint64_t sub_22B16E0AC()
{
  v1 = sub_22B35EABC();
  v2 = sub_22B35EAAC();
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_283EF8EA8;
  *(v0 + 16) = v2;
  type metadata accessor for ActivityLogCoordinator();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
  v5 = *(v1 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v1);
  v7 = *v6;
  v3[5] = v1;
  v3[6] = &off_283EF8EA8;
  v3[2] = v7;
  v3[7] = 5000;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  *(v0 + 80) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 88) = &off_283EFC910;
  type metadata accessor for LoadEventsProcessor();
  v8 = swift_allocObject();
  *(v0 + 184) = v8;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for DefaultLoadEventUploader);
  *(v0 + 120) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 128) = &off_283EFC910;
  swift_defaultActor_initialize();
  sub_22B11A02C((v0 + 96), v8 + 112);
  *(v8 + 152) = v3;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v9 = swift_task_alloc();
  *(v0 + 192) = v9;
  *v9 = v0;
  v9[1] = sub_22B16E2A4;
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  v12 = *(v0 + 152);
  v13 = *(v0 + 160);
  v15 = *(v0 + 136);
  v14 = *(v0 + 144);

  return sub_22B20368C(v15, v14, v12, v13, v10, v11);
}

uint64_t sub_22B16E2A4()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B16E3E0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22B16E3E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B16E444(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return MEMORY[0x2822009F8](sub_22B16E464, 0, 0);
}

uint64_t sub_22B16E464()
{
  v1 = sub_22B35EABC();
  v2 = sub_22B35EAAC();
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_283EF8EA8;
  *(v0 + 16) = v2;
  type metadata accessor for ActivityLogCoordinator();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
  v5 = *(v1 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v1);
  v7 = *v6;
  v3[5] = v1;
  v3[6] = &off_283EF8EA8;
  v3[2] = v7;
  v3[7] = 5000;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  *(v0 + 80) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 88) = &off_283EFC910;
  type metadata accessor for LoadEventsProcessor();
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for DefaultLoadEventUploader);
  *(v0 + 120) = &type metadata for DefaultLoadEventUploader;
  *(v0 + 128) = &off_283EFC910;
  swift_defaultActor_initialize();
  sub_22B11A02C((v0 + 96), v8 + 112);
  *(v8 + 152) = v3;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_22B16E654;
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);

  return sub_22B1F12D0(v11, v10);
}

uint64_t sub_22B16E654()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B16E764()
{
  v1 = sub_22B35EE8C();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B16E820, 0, 0);
}

uint64_t sub_22B16E820()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_22B35EE7C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_281409448 != -1)
    {
      swift_once();
    }

    v5 = 0xD000000000000026;
    v6 = 0x800000022B36A4C0;
    v7 = [objc_opt_self() sharedScheduler];
    v8 = sub_22B36081C();
    v9 = [v7 taskRequestForIdentifier_];

    if (v9)
    {

      sub_22B349C14(0xD000000000000026, 0x800000022B36A4C0);
    }

    v0[5] = &type metadata for BackgroundSystemTaskScheduler;
    v0[6] = &off_283EFE540;
    sub_22B220B58(0.0, (v0 + 2), 0xD000000000000026, 0x800000022B36A4C0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v10 = v0[1];

  return v10(v5, v6);
}

uint64_t sub_22B16EA04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B1635B4(v2, v3, v4);
}

uint64_t sub_22B16EAC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22B124D88;

  return sub_22B162F88(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_22B16EB98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B162CF8(v2, v3, v5, v4);
}

uint64_t sub_22B16EC5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B1623CC(v2, v3, v4, v5);
}

uint64_t sub_22B16ED24()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B161FC0(v2, v3);
}

uint64_t sub_22B16EDD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B161AEC(v2, v3, v4);
}

uint64_t sub_22B16EE98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B161728(v2, v3);
}

uint64_t sub_22B16EF4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B161254(v2, v3, v4);
}

uint64_t sub_22B16F00C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B160DE4(v2, v3, v5, v4);
}

uint64_t sub_22B16F0CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B1609A0(v2, v3, v4);
}

uint64_t sub_22B16F180()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B160530(v2, v3, v5, v4);
}

uint64_t sub_22B16F240()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22B124D88;

  return sub_22B1600E8(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_22B16F330(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B119A60;

  return sub_22B15ED38(a1, v4, v5, v6, v7, v1 + 48, v8, v9);
}

uint64_t sub_22B16F420()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B15E988(v2, v3);
}

uint64_t sub_22B16F4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergySite(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B16F530(uint64_t a1)
{
  v2 = type metadata accessor for CDEnergySite(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B16F58C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  return sub_22B15E4B4();
}

uint64_t sub_22B16F638()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B15BC9C(v2, v3, v5, v4);
}

uint64_t sub_22B16F6F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22B35DF1C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22B124D88;

  return sub_22B15BA58(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_22B16F834()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B15B638(v2, v3);
}

uint64_t sub_22B16F8E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  return sub_22B15B3E0();
}

uint64_t sub_22B16F98C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B15B068(v2, v3, v5, v4);
}

uint64_t sub_22B16FA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[6];
  v16 = v9[7];
  v18 = v9[8];
  v17 = v9[9];
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_22B124D88;

  return sub_22B15A860(v11, v12, v13, v14, v15, v16, v18, v17, a9);
}

void sub_22B16FB34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  JUMPOUT(0x22B159EECLL);
}

void sub_22B16FC48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  JUMPOUT(0x22B15962CLL);
}

uint64_t sub_22B16FD40(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22B16FD4C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return sub_22B1591F0(v2);
}

uint64_t sub_22B16FDF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B158D1C(v2, v3, v4);
}

uint64_t sub_22B16FEAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B158844(v2, v3, v4);
}

uint64_t sub_22B16FF60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B158284(v2, v3, v4);
}

uint64_t sub_22B170014()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B157DBC(v4, v2, v3);
}

uint64_t objectdestroy_154Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B17011C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B157768(v2, v3, v4);
}

uint64_t sub_22B1701E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B1570D8(v2, v3);
}

uint64_t sub_22B170294()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B156BB4(v2, v3, v4);
}

uint64_t sub_22B170348()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B1566BC(v2, v3, v4);
}

void sub_22B1703FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  JUMPOUT(0x22B155EA0);
}

uint64_t objectdestroy_431Tm()
{
  _Block_release(*(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void sub_22B170568()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  JUMPOUT(0x22B155358);
}

uint64_t sub_22B170660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[6];
  v16 = v9[7];
  v17 = v9[8];
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_22B124D88;

  return sub_22B15490C(v11, v12, v13, v14, v15, v16, v17, sub_22B15490C, a9);
}

uint64_t sub_22B17073C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B153D8C(v2, v3);
}

uint64_t objectdestroy_612Tm()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22B170858()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22B119A60;

  return sub_22B153AE0(v2, v3, v4, v5, v6, v7);
}

void sub_22B170934()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  JUMPOUT(0x22B153384);
}

uint64_t sub_22B170A28()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return sub_22B15262C(v2);
}

void sub_22B170AD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  JUMPOUT(0x22B151D1CLL);
}

uint64_t sub_22B170BE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B170C58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B170CD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B170D38()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B14F4F0(v2, v3, v5, v4);
}

uint64_t sub_22B170DF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B14EDE4(v2, v3, v5, v4);
}

uint64_t sub_22B170EB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B14E8B4(v2, v3, v5, v4);
}

uint64_t sub_22B170F78()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B14E2B8(v2, v3, v5, v4);
}

uint64_t sub_22B171038()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B14DC04(v2, v3, v4);
}

uint64_t sub_22B1710EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B14D81C(v2, v3, v4);
}

uint64_t sub_22B1711A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B14D1D0(v2, v3);
}

uint64_t sub_22B17124C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B14CDCC(v2, v3, v4);
}

uint64_t objectdestroy_507Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B171340()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B14C2C0(v4, v2, v3);
}

uint64_t sub_22B171400()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B124D88;

  return sub_22B14BBA8(v2, v3, v4, v6, v5);
}

uint64_t sub_22B1714C8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return sub_22B14B768(v2);
}

uint64_t sub_22B171574()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return sub_22B14B414(v2);
}

uint64_t objectdestroy_171Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B171670()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22B124D88;

  return sub_22B14AF08(v2, v3, v4, v5, v7, v6);
}

void sub_22B171748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *(v9 + 16);
  v12 = *(v9 + 32);
  v13 = *(v9 + 40);
  v14 = *(v9 + 48);
  v15 = *(v9 + 56);
  v16 = *(v9 + 64);
  v17 = *(v9 + 72);
  v18 = *(v9 + 24);
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_22B124D88;

  sub_22B14AA00(v11, v18, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t sub_22B171838()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return sub_22B14A5B0(v2);
}

uint64_t sub_22B1718E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B149F64(v2, v3);
}

uint64_t sub_22B171998()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B1498AC(v2, v3, v4);
}

uint64_t sub_22B171A58()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B149370(v2, v3, v5, v4);
}

uint64_t sub_22B171B18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B124D88;

  return sub_22B148D0C(v2, v3, v4);
}

uint64_t sub_22B171BD8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return sub_22B1488B8(v2);
}

uint64_t sub_22B171C84()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B1483B8(v2, v3);
}

uint64_t objectdestroy_121Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B171D88()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B124D88;

  return sub_22B147D50(v2, v3, v5, v4);
}

uint64_t sub_22B171E48()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B124D88;

  return sub_22B1476C0(v2, v3, v4, v5, v6);
}

uint64_t sub_22B171F14()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return sub_22B147248(v2);
}

uint64_t sub_22B171FC0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B146D00(v2, v3);
}

uint64_t objectdestroy_90Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B172110()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B146880(v2, v3);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B172204()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B124D88;

  return sub_22B146474(v2);
}

uint64_t objectdestroy_81Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_22B1722F0()
{
  result = qword_2814091A8;
  if (!qword_2814091A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA3B0, &unk_22B364610);
    sub_22B172464(&unk_2814091C0, MEMORY[0x277D17ED0], MEMORY[0x277D17ED8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814091A8);
  }

  return result;
}

_OWORD *sub_22B172454(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22B172464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22B172508(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v5 = sub_22B360E6C();
  MEMORY[0x28223BE20](v5 - 8);
  v50 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x277D84F98];
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_22B36081C();
  v9 = [v7 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v10 = swift_allocObject();
  v47 = xmmword_22B3634B0;
  *(v10 + 16) = xmmword_22B3634B0;
  v11 = sub_22B35DEDC();
  *(v10 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v10 + 64) = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v10 + 32) = v11;
  v12 = sub_22B360CCC();
  [v9 setPredicate_];

  [v9 setResultType_];
  v13 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v48 = 0x800000022B36AF80;
  v14 = sub_22B36081C();
  [v13 setName_];

  v15 = sub_22B36081C();
  v16 = objc_opt_self();
  v17 = [v16 expressionForKeyPath_];

  v45 = v13;
  [v13 setExpression_];

  sub_22B360E5C();
  sub_22B360ECC();
  v18 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v46 = 0x800000022B36AFA0;
  v19 = sub_22B36081C();
  [v18 setName_];

  v20 = sub_22B36081C();
  v21 = v16;
  v22 = [v16 expressionForKeyPath_];

  [v18 setExpression_];
  sub_22B360E5C();
  sub_22B360ECC();
  v23 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v24 = sub_22B36081C();
  [v23 setName_];

  v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v25 = swift_allocObject();
  *(v25 + 16) = v47;
  v26 = sub_22B36081C();
  v27 = v21;
  v28 = [v21 expressionForKeyPath_];

  *(v25 + 56) = sub_22B128014(0, &qword_27D8BA3C8, 0x277CCA9C0);
  *(v25 + 32) = v28;
  v29 = sub_22B36081C();
  v30 = sub_22B360A3C();

  v31 = [v27 expressionForFunction:v29 arguments:v30];

  [v23 setExpression_];
  sub_22B360E4C();
  sub_22B360ECC();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22B364620;
  v33 = sub_22B128014(0, &qword_27D8BA3D0, 0x277CBE410);
  v34 = v45;
  *(v32 + 32) = v45;
  *(v32 + 56) = v33;
  *(v32 + 64) = v18;
  *(v32 + 120) = v33;
  *(v32 + 88) = v33;
  *(v32 + 96) = v23;
  v50 = v34;
  v35 = v18;
  v36 = v23;
  v37 = sub_22B360A3C();

  [v9 setPropertiesToFetch_];

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_22B3634C0;
  v39 = MEMORY[0x277D837D0];
  v40 = v48;
  *(v38 + 32) = 0xD000000000000010;
  *(v38 + 40) = v40;
  *(v38 + 88) = v39;
  *(v38 + 56) = v39;
  *(v38 + 64) = 0xD000000000000010;
  *(v38 + 72) = v46;
  v41 = sub_22B360A3C();

  [v9 setPropertiesToGroupBy_];

  [v9 setReturnsDistinctResults_];
  v42 = [v9 setFetchBatchSize_];
  v52 = 0;
  v51 = 1;
  while (1)
  {
    v43 = MEMORY[0x23188EEB0](v42);
    sub_22B172BE0(v9, &v52, 100, a1, &v51, &v53);
    if (v3)
    {
      break;
    }

    v3 = 0;
    objc_autoreleasePoolPop(v43);
    if ((v51 & 1) == 0)
    {

      *v49 = v53;
      return;
    }
  }

  objc_autoreleasePoolPop(v43);
  __break(1u);
}

uint64_t sub_22B172BE0(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, void *a6)
{
  v88 = a6;
  v92 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v74 - v10;
  v12 = sub_22B35DE9C();
  v90 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v74 - v16;
  v18 = sub_22B36052C();
  v97 = *(v18 - 8);
  v98 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v89 = a2;
  [a1 setFetchOffset_];
  [a1 setFetchLimit_];
  sub_22B128014(0, &qword_27D8BA3D8, 0x277CBEAC0);
  v21 = v105;
  v22 = sub_22B360E9C();
  v93 = v21;
  if (v21)
  {
    if (qword_28140A0C8 != -1)
    {
LABEL_62:
      swift_once();
    }

    v23 = v98;
    v24 = __swift_project_value_buffer(v98, qword_28140BD10);
    swift_beginAccess();
    v25 = v97;
    (*(v97 + 16))(v20, v24, v23);
    v26 = v93;
    v27 = v93;
    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 134218242;
      v32 = v89;
      swift_beginAccess();
      *(v30 + 4) = *v32;
      *(v30 + 12) = 2112;
      v33 = v26;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v34;
      *v31 = v34;
      _os_log_impl(&dword_22B116000, v28, v29, "Failed to fetch grouped LoadDailyDigest data at offset %ld: %@", v30, 0x16u);
      sub_22B123284(v31, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v31, -1, -1);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    else
    {
    }

    result = (*(v25 + 8))(v20, v23);
    goto LABEL_52;
  }

  v35 = v22;
  v84 = v17;
  v82 = v14;
  v87 = v12;
  v85 = v11;
  v80 = a3;
  v36 = v22 >> 62;
  if (v22 >> 62)
  {
    v37 = sub_22B36109C();
  }

  else
  {
    v37 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v84;
  if (!v37)
  {

LABEL_52:
    *v92 = 0;
    return result;
  }

  v78 = v36;
  v39 = 0;
  v105 = v35 & 0xC000000000000001;
  v97 = v35 & 0xFFFFFFFFFFFFFF8;
  v98 = 0x800000022B36AF80;
  v95 = 0x800000022B36AFA0;
  v83 = (v90 + 56);
  v81 = (v90 + 48);
  v79 = (v90 + 32);
  v77 = (v90 + 16);
  v76 = v90 + 8;
  v74[1] = v90 + 40;
  v40 = MEMORY[0x277D837D0];
  v94 = v37;
  do
  {
    if (v105)
    {
      v41 = MEMORY[0x23188EAC0](v39, v35);
    }

    else
    {
      if (v39 >= *(v97 + 16))
      {
        goto LABEL_61;
      }

      v41 = *(v35 + 8 * v39 + 32);
    }

    v20 = v41;
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    *&v101 = 0xD000000000000010;
    *(&v101 + 1) = v98;
    v43 = v40;
    v44 = [v41 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v44)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v101 = 0u;
      v102 = 0u;
    }

    v103 = v101;
    v104 = v102;
    v40 = v43;
    if (!*(&v102 + 1))
    {

      sub_22B123284(&v103, &unk_27D8BA950, &qword_22B364940);
      goto LABEL_10;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_10;
    }

    v45 = v100;
    v96 = v99;
    *&v101 = 0xD000000000000010;
    *(&v101 + 1) = v95;
    v46 = [v20 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v46)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v101 = 0u;
      v102 = 0u;
    }

    v103 = v101;
    v104 = v102;
    v40 = v43;
    if (!*(&v102 + 1))
    {

      sub_22B123284(&v103, &unk_27D8BA950, &qword_22B364940);
      v37 = v94;
      goto LABEL_10;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      v37 = v94;
      goto LABEL_10;
    }

    v86 = v99;
    v91 = v100;
    *&v101 = 0x6144646E4578616DLL;
    *(&v101 + 1) = 0xEA00000000006574;
    v47 = [v20 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v47)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v101 = 0u;
      v102 = 0u;
    }

    v48 = v87;
    v103 = v101;
    v104 = v102;
    if (!*(&v102 + 1))
    {

      sub_22B123284(&v103, &unk_27D8BA950, &qword_22B364940);
      v49 = v85;
      (*v83)(v85, 1, 1, v48);
      goto LABEL_36;
    }

    v49 = v85;
    v50 = swift_dynamicCast();
    (*v83)(v49, v50 ^ 1u, 1, v48);
    if ((*v81)(v49, 1, v48) != 1)
    {
      v74[0] = *v79;
      (v74[0])(v38, v49, v48);
      (*v77)(v82, v38, v48);
      v51 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v103 = *v51;
      v52 = v103;
      *v51 = 0x8000000000000000;
      v54 = sub_22B33B790(v96, v45, v86, v91);
      v55 = *(v52 + 16);
      v56 = (v53 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_65;
      }

      v58 = v53;
      if (*(v52 + 24) >= v57)
      {
        v61 = v82;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_43;
        }

        sub_22B3420D0();
      }

      else
      {
        sub_22B33D958(v57, isUniquelyReferenced_nonNull_native);
        v59 = sub_22B33B790(v96, v45, v86, v91);
        if ((v58 & 1) != (v60 & 1))
        {
          goto LABEL_67;
        }

        v54 = v59;
      }

      v61 = v82;
LABEL_43:
      if (v58)
      {

        v62 = v103;
        v63 = v90;
        (*(v90 + 40))(*(v103 + 56) + *(v90 + 72) * v54, v61, v87);

        v38 = v84;
        (*(v63 + 8))();
      }

      else
      {
        v62 = v103;
        *(v103 + 8 * (v54 >> 6) + 64) |= 1 << v54;
        v64 = (v62[6] + 32 * v54);
        *v64 = v96;
        v64[1] = v45;
        v65 = v91;
        v64[2] = v86;
        v64[3] = v65;
        v66 = v90;
        (v74[0])(v62[7] + *(v90 + 72) * v54, v61, v87);

        v38 = v84;
        (*(v66 + 8))();
        v67 = v62[2];
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          goto LABEL_66;
        }

        v62[2] = v69;
      }

      v37 = v94;
      *v88 = v62;

      goto LABEL_48;
    }

LABEL_36:
    sub_22B123284(v49, &qword_27D8BA340, &qword_22B363FB0);
    v37 = v94;
LABEL_48:
    v40 = v43;
LABEL_10:
    ++v39;
  }

  while (v42 != v37);
  if (v78)
  {
    v71 = sub_22B36109C();
  }

  else
  {
    v71 = *(v97 + 16);
  }

  v72 = v89;
  v73 = v80;

  result = swift_beginAccess();
  if (__OFADD__(*v72, v71))
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    result = sub_22B3613BC();
    __break(1u);
    return result;
  }

  *v72 += v71;
  if (v71 < v73)
  {
    goto LABEL_52;
  }

  return result;
}

char *sub_22B1737C4(uint64_t a1, uint64_t a2)
{
  result = sub_22B176FFC(a1, a2);
  if (!v2)
  {

    return sub_22B2A534C(2);
  }

  return result;
}

id sub_22B173800(uint64_t a1, void *a2)
{
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *(sub_22B35E7EC() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      v14 = sub_22B176FFC(v12, a2);
      if (v2)
      {
        break;
      }

      ++v10;

      v12 += v13;
      if (v9 == v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = sub_22B2A534C(2);
    if (!v2)
    {
      return result;
    }

    v10 = v9;
  }

  [a2 reset];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v6 + 16))(v8, v16, v5);
  v17 = sub_22B36050C();
  v18 = sub_22B360D1C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v10;
    _os_log_impl(&dword_22B116000, v17, v18, "Failed to insert after %ld load daily digests", v19, 0xCu);
    MEMORY[0x23188F650](v19, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return swift_willThrow();
}

uint64_t sub_22B173A94(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22B177D08;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_43;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22B173CE4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B3634B0;
  v5 = sub_22B35DDDC();
  *(v4 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v4 + 64) = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v4 + 32) = v5;
  v6 = sub_22B360CCC();
  sub_22B1779AC(v6, a3);
}

uint64_t sub_22B173DFC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22B177C28;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_33;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22B17404C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B3634B0;
  v5 = sub_22B35DEDC();
  *(v4 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v4 + 64) = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v4 + 32) = v5;
  v6 = sub_22B360CCC();
  sub_22B1779AC(v6, a3);
}

uint64_t sub_22B174168(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22B177BFC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22B1743B8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B3634B0;
  v5 = sub_22B35DEDC();
  *(v4 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v4 + 64) = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v4 + 32) = v5;
  v6 = sub_22B360CCC();
  sub_22B1779AC(v6, a3);
}

uint64_t sub_22B1744D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v6 = sub_22B35DE9C();
  v25 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B35DF1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v13);
  (*(v7 + 16))(v9, a2, v6);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v15, v14, v10);
  (*(v7 + 32))(v18 + v16, v9, v25);
  v19 = v27;
  *(v18 + v17) = v26;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22B176EA8;
  *(v20 + 24) = v18;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_4;
  v21 = _Block_copy(aBlock);

  v22 = v19;

  [v22 performBlockAndWait_];
  _Block_release(v21);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  return result;
}

void sub_22B1747F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B3634C0;
  v6 = sub_22B35DEDC();
  *(v5 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v5 + 64) = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v5 + 32) = v6;
  v7 = sub_22B35DDDC();
  *(v5 + 96) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v5 + 104) = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v5 + 72) = v7;
  v8 = sub_22B360CCC();
  sub_22B1779AC(v8, a4);
}

uint64_t sub_22B174960()
{
  type metadata accessor for LoadDailyDigestManager();
  v0 = swift_allocObject();
  result = sub_22B17499C();
  qword_27D8BB1A8 = v0;
  return result;
}

uint64_t sub_22B17499C()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  *(v0 + 120) = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);

  v2 = *(v0 + 120);
  if (v2)
  {

    v3 = sub_22B2A632C();

    v2 = [v3 newBackgroundContext];
    v4 = sub_22B36081C();
    [v2 setTransactionAuthor_];

    [v2 setMergePolicy_];
    [v2 setUndoManager_];
    [v2 setShouldRefreshAfterSave_];
    [v2 setStalenessInterval_];
    [v2 setShouldDeleteInaccessibleFaults_];
  }

  v5 = *(v1 + 112);
  *(v1 + 112) = v2;

  return v1;
}

unint64_t sub_22B174B48(uint64_t a1)
{
  if (*(v1 + 120))
  {
    v2 = *(v1 + 112);
    if (v2)
    {

      v4 = v2;
    }

    else
    {

      v7 = sub_22B2A632C();
      v4 = [v7 newBackgroundContext];
      v8 = sub_22B36081C();
      [v4 setTransactionAuthor_];

      [v4 setMergePolicy_];
      [v4 setUndoManager_];
      [v4 setShouldRefreshAfterSave_];
      [v4 setStalenessInterval_];
      [v4 setShouldDeleteInaccessibleFaults_];

      v2 = 0;
    }

    MEMORY[0x28223BE20](v3);
    v9 = v2;
    v10 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3C0, &qword_22B3646D8);
    sub_22B360E7C();

    return v11;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];

    return sub_22B3221DC(v5);
  }
}

uint64_t sub_22B174D34(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B35E7EC();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B174E5C, v1, 0);
}

uint64_t sub_22B174E5C()
{
  v47 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v43 = *(v3 + 16);
  v44 = v8;
  v43(v1, v8, v2);
  (*(v4 + 16))(v5, v7, v6);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v45 = v0[13];
  v12 = v0[10];
  v13 = v0[11];
  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];
  if (v11)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v46 = v18;
    *v17 = 136315138;
    v42 = v12;
    v19 = sub_22B35E70C();
    v41 = v10;
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_22B1A7B20(v19, v21, &v46);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_22B116000, v9, v41, "Insert LoadDailyDigestEvent for device ID: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    v23 = *(v13 + 8);
    v23(v45, v42);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    v23 = *(v13 + 8);
    v23(v45, v12);
  }

  v24 = v0[6];
  if (*(v24 + 120))
  {
    v25 = *(v24 + 112);

    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v28 = sub_22B2A632C();
      v26 = [v28 newBackgroundContext];
      v29 = sub_22B36081C();
      [v26 setTransactionAuthor_];

      [v26 setMergePolicy_];
      [v26 setUndoManager_];
      [v26 setShouldRefreshAfterSave_];
      [v26 setStalenessInterval_];
      [v26 setShouldDeleteInaccessibleFaults_];

      v25 = 0;
    }

    v30 = v0[5];
    v31 = swift_task_alloc();
    *(v31 + 16) = v30;
    *(v31 + 24) = v26;
    v32 = v25;
    v33 = v26;
    sub_22B360E7C();
    v35 = v0[12];
    v36 = v0[10];

    v43(v35, v44, v36);
    v37 = sub_22B36050C();
    v38 = sub_22B360D2C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22B116000, v37, v38, "Successfully inserted LoadDailyDigest", v39, 2u);
      MEMORY[0x23188F650](v39, -1, -1);
    }

    else
    {
    }

    v23(v0[12], v0[10]);

    v34 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v27 = 7;
    swift_willThrow();

    v34 = v0[1];
  }

  return v34();
}

uint64_t sub_22B175388(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B175454, v1, 0);
}

uint64_t sub_22B175454()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[5];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v9 + 16);

    _os_log_impl(&dword_22B116000, v6, v7, "Insert %ld LoadDailyDigestEvents", v10, 0xCu);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  else
  {
  }

  v11 = v0[6];
  v12 = *(v0[8] + 8);
  v12(v0[10], v0[7]);
  if (*(v11 + 120))
  {
    v13 = *(v0[6] + 112);

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v16 = sub_22B2A632C();
      v14 = [v16 newBackgroundContext];
      v17 = sub_22B36081C();
      [v14 setTransactionAuthor_];

      [v14 setMergePolicy_];
      [v14 setUndoManager_];
      [v14 setShouldRefreshAfterSave_];
      [v14 setStalenessInterval_];
      [v14 setShouldDeleteInaccessibleFaults_];

      v13 = 0;
    }

    v18 = v0[5];
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = v14;
    v20 = v13;
    v21 = v14;
    sub_22B360E7C();
    v23 = v0[9];
    v24 = v0[7];

    v5(v23, v4, v24);

    v25 = sub_22B36050C();
    v26 = sub_22B360D2C();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[5];
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = *(v28 + 16);

      _os_log_impl(&dword_22B116000, v25, v26, "Successfully inserted LoadDailyDigests from %ld events", v29, 0xCu);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    else
    {
    }

    v12(v0[9], v0[7]);

    v22 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v15 = 7;
    swift_willThrow();

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_22B1758E0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B35DE9C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1759FC, v1, 0);
}

uint64_t sub_22B1759FC()
{
  v39 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  if (v11)
  {
    v37 = v0[10];
    v18 = swift_slowAlloc();
    v35 = v10;
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    sub_22B176E60(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v20 = sub_22B36131C();
    v36 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v38);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v35, "Delete LoadDailyDigest with end before: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v36, v37);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[6];
  v25 = *(v24 + 120);
  if (v25)
  {
    v26 = *(v24 + 112);

    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v28 = sub_22B2A632C();
      v27 = [v28 newBackgroundContext];
      v29 = sub_22B36081C();
      [v27 setTransactionAuthor_];

      [v27 setMergePolicy_];
      [v27 setUndoManager_];
      [v27 setShouldRefreshAfterSave_];
      [v27 setStalenessInterval_];
      [v27 setShouldDeleteInaccessibleFaults_];

      v26 = 0;
    }

    v30 = v0[5];
    v31 = v26;
    v32 = v27;
    sub_22B173A94(v30, v32, v25);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_22B175DCC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B35DF1C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B175EE8, v1, 0);
}

uint64_t sub_22B175EE8()
{
  v39 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  if (v11)
  {
    v37 = v0[10];
    v18 = swift_slowAlloc();
    v35 = v10;
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    sub_22B176E60(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_22B36131C();
    v36 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v38);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v35, "Delete LoadDailyDigest for site ID: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v36, v37);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[6];
  v25 = *(v24 + 120);
  if (v25)
  {
    v26 = *(v24 + 112);

    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v28 = sub_22B2A632C();
      v27 = [v28 newBackgroundContext];
      v29 = sub_22B36081C();
      [v27 setTransactionAuthor_];

      [v27 setMergePolicy_];
      [v27 setUndoManager_];
      [v27 setShouldRefreshAfterSave_];
      [v27 setStalenessInterval_];
      [v27 setShouldDeleteInaccessibleFaults_];

      v26 = 0;
    }

    v30 = v0[5];
    v31 = v26;
    v32 = v27;
    sub_22B173DFC(v30, v32, v25);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_22B1762B8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B35DF1C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1763D4, v1, 0);
}

uint64_t sub_22B1763D4()
{
  v39 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  if (v11)
  {
    v37 = v0[10];
    v18 = swift_slowAlloc();
    v35 = v10;
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    sub_22B176E60(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_22B36131C();
    v36 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v38);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v35, "Delete LoadDailyDigest for home ID: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v36, v37);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[6];
  v25 = *(v24 + 120);
  if (v25)
  {
    v26 = *(v24 + 112);

    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v28 = sub_22B2A632C();
      v27 = [v28 newBackgroundContext];
      v29 = sub_22B36081C();
      [v27 setTransactionAuthor_];

      [v27 setMergePolicy_];
      [v27 setUndoManager_];
      [v27 setShouldRefreshAfterSave_];
      [v27 setStalenessInterval_];
      [v27 setShouldDeleteInaccessibleFaults_];

      v26 = 0;
    }

    v30 = v0[5];
    v31 = v26;
    v32 = v27;
    sub_22B174168(v30, v32, v25);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_22B1767A4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B35DE9C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_22B35DF1C();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_22B36052C();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B176920, v2, 0);
}

uint64_t sub_22B176920()
{
  v52 = v0;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v47 = v0[8];
  loga = v0[10];
  v8 = v0[5];
  v45 = v0[6];
  v9 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v9, v3);
  (*(v6 + 16))(v4, v8, v5);
  (*(v7 + 16))(loga, v45, v47);
  v10 = sub_22B36050C();
  v48 = sub_22B360D2C();
  log = v10;
  v11 = os_log_type_enabled(v10, v48);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[8];
  if (v11)
  {
    v46 = v0[16];
    v21 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v21 = 136315394;
    sub_22B176E60(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v42 = v12;
    v43 = v15;
    v22 = sub_22B36131C();
    v24 = v23;
    (*(v17 + 8))(v14, v16);
    v25 = sub_22B1A7B20(v22, v24, &v51);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_22B176E60(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v26 = sub_22B36131C();
    v28 = v27;
    (*(v18 + 8))(v19, v20);
    v29 = sub_22B1A7B20(v26, v28, &v51);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_22B116000, log, v48, "Delete LoadDailyDigest for home ID: %s with digest ends before: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v44, -1, -1);
    MEMORY[0x23188F650](v21, -1, -1);

    (*(v42 + 8))(v46, v43);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v14, v16);
    (*(v12 + 8))(v13, v15);
  }

  v30 = v0[7];
  v31 = *(v30 + 120);
  if (v31)
  {
    v32 = *(v30 + 112);

    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v34 = sub_22B2A632C();
      v33 = [v34 newBackgroundContext];
      v35 = sub_22B36081C();
      [v33 setTransactionAuthor_];

      [v33 setMergePolicy_];
      [v33 setUndoManager_];
      [v33 setShouldRefreshAfterSave_];
      [v33 setStalenessInterval_];
      [v33 setShouldDeleteInaccessibleFaults_];
    }

    v37 = v0[5];
    v36 = v0[6];
    v38 = v32;
    v39 = v33;
    sub_22B1744D4(v37, v36, v39, v31);
  }

  v40 = v0[1];

  return v40();
}

uint64_t sub_22B176DFC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B176E60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22B176EA8()
{
  v1 = *(sub_22B35DF1C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22B35DE9C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_22B1747F4(v0 + v2, v0 + v5, v7, v8);
}

uint64_t sub_22B176FAC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B128014(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_22B176FFC(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_22B35DE9C();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B35E85C();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B35DF1C();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22B35E81C();
  v86 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B35E4BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22B35E7AC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v66 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = &v65 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  v87 = a1;
  sub_22B35E6CC();
  sub_22B35E78C();
  v25 = *(v16 + 8);
  v24 = v16 + 8;
  v23 = v25;
  v25(v22, v15);
  v26 = sub_22B35E42C();
  v27 = *(v12 + 8);
  v81 = v12 + 8;
  v82 = v11;
  v80 = v27;
  v27(v14, v11);
  v85 = v25;
  v83 = v10;
  if (v26 < 0)
  {
    v68 = 0xF000000000000000;
    v69 = 0;
    v33 = v15;
  }

  else
  {
    sub_22B35E6CC();
    sub_22B35E79C();
    v65 = v24;
    v23(v22, v15);
    v28 = sub_22B35E42C();
    (*(v86 + 8))(v10, v84);
    if (v28 < 1)
    {
      v68 = 0xF000000000000000;
      v69 = 0;
      v33 = v15;
    }

    else
    {
      sub_22B35DB0C();
      swift_allocObject();
      sub_22B35DAFC();
      v29 = v67;
      sub_22B35E6CC();
      sub_22B176E60(&qword_27D8BA3B8, MEMORY[0x277D17558], MEMORY[0x277D17560]);
      v30 = v88;
      v31 = sub_22B35DAEC();
      v33 = v15;
      v88 = v30;
      if (v30)
      {
        v85(v29, v15);

        return v22;
      }

      v68 = v32;
      v69 = v31;
      v85(v29, v15);
    }
  }

  sub_22B35E6BC();
  sub_22B35E78C();
  v34 = v85;
  v85(v22, v33);
  v35 = sub_22B35E42C();
  v80(v14, v82);
  v36 = v86;
  v37 = v83;
  if (v35 < 0 || (sub_22B35E6BC(), sub_22B35E79C(), v34(v22, v33), v38 = sub_22B35E42C(), (*(v36 + 8))(v37, v84), v38 < 1))
  {
    v87 = 0;
    v43 = 0xF000000000000000;
  }

  else
  {
    sub_22B35DB0C();
    swift_allocObject();
    v22 = sub_22B35DAFC();
    v39 = v66;
    sub_22B35E6BC();
    sub_22B176E60(&qword_27D8BA3B8, MEMORY[0x277D17558], MEMORY[0x277D17560]);
    v40 = v88;
    v41 = sub_22B35DAEC();
    v88 = v40;
    if (v40)
    {
      v34(v39, v33);

      sub_22B11EDC0(v69, v68);
      return v22;
    }

    v43 = v42;
    v87 = v41;
    v34(v39, v33);
  }

  sub_22B35F66C();
  v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = [v44 initWithContext_];
  v45 = v70;
  sub_22B35E6EC();
  v46 = sub_22B35DEDC();
  v47 = v72;
  v48 = *(v71 + 8);
  v48(v45, v72);
  [v22 setHomeIdentifier_];

  sub_22B35E6FC();
  v49 = sub_22B35DEDC();
  v48(v45, v47);
  [v22 setSiteIdentifier_];

  sub_22B35E71C();
  v50 = sub_22B36081C();

  [v22 setSourceIdentifier_];

  sub_22B35E70C();
  v51 = sub_22B36081C();

  [v22 setDeviceIdentifier_];

  v52 = v74;
  sub_22B35E7CC();
  sub_22B35E84C();
  (*(v75 + 8))(v52, v76);
  v53 = sub_22B36081C();

  [v22 setLoadType_];

  v54 = v77;
  sub_22B35E7DC();
  v55 = sub_22B35DDDC();
  v56 = v79;
  v57 = *(v78 + 8);
  v57(v54, v79);
  [v22 setStartDate_];

  MEMORY[0x23188C0E0]();
  v58 = sub_22B35DDDC();
  v57(v54, v56);
  [v22 setEndDate_];

  [v22 setVersion_];
  v59 = 0;
  v61 = v68;
  v60 = v69;
  if (v68 >> 60 != 15)
  {
    v59 = sub_22B35DCCC();
  }

  [v22 setDigestConsumptionData_];

  v62 = v87;
  if (v43 >> 60 == 15)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_22B35DCCC();
  }

  [v22 setDigestProductionData_];

  sub_22B11EDC0(v62, v43);
  sub_22B11EDC0(v60, v61);
  return v22;
}