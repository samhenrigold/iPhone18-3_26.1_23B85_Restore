uint64_t sub_21BDCADCC()
{
  v1 = v0[58];
  v2 = v0[59];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void AgeRangeAlertFlowStore.handleSecondaryButtonAction(ageRangeContext:ageRangeController:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  swift_getKeyPath();
  v21[1] = v3;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v12 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
  swift_beginAccess();
  v13 = *&v3[v12];
  if (v13)
  {
    v14 = v13;
    if ([v14 flowType] == 3)
    {
      [sub_21BDC7650() dismissWithError:0 response:0];
      swift_unknownObjectRelease();
      sub_21BDC83CC();
    }

    else
    {
      v15 = sub_21BE28DAC();
      (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
      sub_21BE28D7C();
      sub_21BDC9D64(v9, v10);
      v16 = v3;
      v17 = a2;
      v18 = sub_21BE28D6C();
      v19 = swift_allocObject();
      v20 = MEMORY[0x277D85700];
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v9;
      v19[5] = v10;
      v19[6] = v11;
      v19[7] = v16;
      v19[8] = v17;
      sub_21BBA932C(0, 0, v8, &unk_21BE4D5B8, v19);
    }
  }
}

uint64_t sub_21BDCB0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  sub_21BE28D7C();
  v8[15] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v8[16] = v10;
  v8[17] = v9;

  return MEMORY[0x2822009F8](sub_21BDCB194, v10, v9);
}

uint64_t sub_21BDCB194()
{
  v1 = v0[10];
  if (v1 && v1[2])
  {
    v2 = v0[11];
    v4 = v1[4];
    v3 = v1[5];
    v0[18] = v3;
    sub_21BDC9D64(v1, v2);

    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_21BDCB384;
    v6 = v0[14];

    return AgeRangeAlertFlowStore.saveAgeRange(with:response:responseType:altDSID:)(v6, 2, 1, v4, v3);
  }

  else
  {

    type metadata accessor for AgeRangeError(0);
    v0[5] = -4004;
    sub_21BDCE614(MEMORY[0x277D84F90]);
    sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);
    sub_21BE25A6C();
    v8 = v0[4];
    v9 = sub_21BE25A7C();

    [sub_21BDC7650() dismissWithError:v9 response:0];
    swift_unknownObjectRelease();
    sub_21BDC83CC();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_21BDCB384()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {
    v3 = v2[16];
    v4 = v2[17];

    return MEMORY[0x2822009F8](sub_21BDCB7C4, v3, v4);
  }

  else
  {
    v5 = v2[14];

    v6 = v5;
    v7 = swift_task_alloc();
    v2[21] = v7;
    *v7 = v2;
    v7[1] = sub_21BDCB518;
    v8 = v2[14];

    return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)((v2 + 2), v8);
  }
}

uint64_t sub_21BDCB518()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_21BDCB638, v3, v2);
}

uint64_t sub_21BDCB638()
{
  v16 = v0;
  v1 = *(v0 + 160);

  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 27);
  v12 = *(v0 + 16);
  v13 = v2;
  v14 = v3;
  v15 = v4;
  sub_21BD5EA88(&v12);
  type metadata accessor for AgeRangeError(0);
  *(v0 + 72) = -4003;
  sub_21BDCE614(MEMORY[0x277D84F90]);
  sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);
  sub_21BE25A6C();
  v5 = *(v0 + 64);
  v6 = sub_21BE25A7C();

  v7 = sub_21BDC7650();
  if (v1)
  {
  }

  else
  {
    [v7 dismissWithError:v6 response:0];
    swift_unknownObjectRelease();
  }

  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  sub_21BDC83CC();
  sub_21BDCEF64(v9, v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21BDCB7C4()
{
  v2 = v0[10];
  v1 = v0[11];

  sub_21BDCEF64(v2, v1);
  type metadata accessor for AgeRangeError(0);
  v0[7] = -4006;
  sub_21BDCE614(MEMORY[0x277D84F90]);
  sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError, byte_21BE317FC);
  sub_21BE25A6C();
  v3 = v0[6];
  v4 = sub_21BE25A7C();

  [sub_21BDC7650() dismissWithError:v4 response:0];
  swift_unknownObjectRelease();
  v5 = v0[20];
  sub_21BDC83CC();

  v6 = v0[1];

  return v6();
}

Swift::tuple_bundleID_String_optional_appID_String_optional __swiftcall AgeRangeAlertFlowStore.getAppMetadata()()
{
  v1 = v0;
  v2 = sub_21BE2632C();
  v52 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD190, &qword_21BE4D528);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - v7;
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  v56 = v1;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  v53 = v16;
  sub_21BE25F1C();

  v17 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (v18)
  {
    v19 = [v18 bundleID];
    if (v19)
    {
      v49 = v9;
      v20 = v19;
      v21 = sub_21BE28A0C();
      v23 = v22;

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        sub_21BE261CC();
        v25 = sub_21BE26A2C();
        v26 = sub_21BE28FCC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_21BB35000, v25, v26, "Using bundleID and appID override from request model", v27, 2u);
          MEMORY[0x21CF05C50](v27, -1, -1);
        }

        (*(v10 + 8))(v15, v49);

        v28 = v21;
        v29 = v23;
        goto LABEL_18;
      }

      v9 = v49;
    }
  }

  sub_21BE261CC();
  v30 = sub_21BE26A2C();
  v31 = sub_21BE28FCC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v9;
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_21BB35000, v30, v31, "Using bundleID and appID from xpcConnection", v33, 2u);
    v34 = v33;
    v9 = v32;
    MEMORY[0x21CF05C50](v34, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  swift_getKeyPath();
  v55 = v1;
  sub_21BE25F1C();

  v35 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__clientMetadata;
  swift_beginAccess();
  sub_21BBA3854(v1 + v35, v8, &qword_27CDBD190, &qword_21BE4D528);
  v36 = v52;
  v37 = *(v52 + 48);
  if (v37(v8, 1, v2))
  {
    sub_21BB3A4CC(v8, &qword_27CDBD190, &qword_21BE4D528);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v38 = v50;
    (*(v36 + 16))(v50, v8, v2);
    sub_21BB3A4CC(v8, &qword_27CDBD190, &qword_21BE4D528);
    v28 = sub_21BE2631C();
    v39 = v36;
    v29 = v40;
    (*(v39 + 8))(v38, v2);
  }

  swift_getKeyPath();
  v54 = v1;
  sub_21BE25F1C();

  v41 = v51;
  sub_21BBA3854(v1 + v35, v51, &qword_27CDBD190, &qword_21BE4D528);
  if (v37(v41, 1, v2))
  {
    sub_21BB3A4CC(v41, &qword_27CDBD190, &qword_21BE4D528);
    v21 = 0;
    v23 = 0;
  }

  else
  {
    v42 = v52;
    v43 = v50;
    (*(v52 + 16))(v50, v41, v2);
    sub_21BB3A4CC(v41, &qword_27CDBD190, &qword_21BE4D528);
    v21 = sub_21BE262FC();
    v23 = v44;
    (*(v42 + 8))(v43, v2);
  }

LABEL_18:
  v45 = v28;
  v46 = v29;
  v47 = v21;
  v48 = v23;
  result.appID.value._object = v48;
  result.appID.value._countAndFlagsBits = v47;
  result.bundleID.value._object = v46;
  result.bundleID.value._countAndFlagsBits = v45;
  return result;
}

uint64_t AgeRangeAlertFlowStore.handleShareAgeRangeAction(with:selectedState:sharedState:altDSIDList:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 320) = a4;
  *(v5 + 328) = v4;
  *(v5 + 536) = a2;
  *(v5 + 304) = a1;
  *(v5 + 312) = a3;
  v6 = sub_21BE26A4C();
  *(v5 + 336) = v6;
  *(v5 + 344) = *(v6 - 8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = sub_21BE28D7C();
  *(v5 + 376) = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  *(v5 + 384) = v8;
  *(v5 + 392) = v7;

  return MEMORY[0x2822009F8](sub_21BDCC05C, v8, v7);
}

uint64_t sub_21BDCC05C(uint64_t a1)
{
  v20 = v1;
  sub_21BE261CC();

  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FCC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 360);
  v6 = *(v1 + 336);
  v7 = *(v1 + 344);
  if (v4)
  {
    v8 = *(v1 + 320);
    v9 = *(v1 + 536);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 67109378;
    *(v10 + 4) = v9;
    *(v10 + 8) = 2080;
    v12 = MEMORY[0x21CF03DF0](v8, MEMORY[0x277D837D0]);
    v14 = sub_21BB3D81C(v12, v13, &v19);

    *(v10 + 10) = v14;
    _os_log_impl(&dword_21BB35000, v2, v3, "Share age range button clicked for state: %d, altDSIDList: %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  v15 = *(v7 + 8);
  v15(v5, v6);
  *(v1 + 400) = v15;
  *(v1 + 408) = sub_21BE28D6C();
  v17 = sub_21BE28D0C();
  *(v1 + 416) = v17;
  *(v1 + 424) = v16;

  return MEMORY[0x2822009F8](sub_21BDCC22C, v17, v16);
}

uint64_t sub_21BDCC22C()
{
  v1 = *(*(v0 + 320) + 16);
  *(v0 + 432) = v1;
  if (v1)
  {
    v2 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__privacyVersion;
    *(v0 + 440) = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
    *(v0 + 448) = v2;
    swift_beginAccess();
    *(v0 + 456) = 0;
    v3 = *(v0 + 448);
    v4 = *(v0 + 328);

    v5 = sub_21BE289CC();
    *(v0 + 464) = v5;

    swift_getKeyPath();
    *(v0 + 264) = v4;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v6 = *(v4 + v3);
    if (v6)
    {
      v7 = *(v4 + v3);
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v7 = sub_21BE293EC();
    }

    *(v0 + 472) = v7;
    v10 = *(v0 + 536);
    v11 = *(v0 + 304);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BDCCA74;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BCF8794;
    *(v0 + 104) = &block_descriptor_33;
    *(v0 + 112) = v12;
    v13 = v6;
    [v11 setGlobalStateForAltDSID:v10 forAltDSID:v5 privacyVersion:v7 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v8 = *(v0 + 384);
    v9 = *(v0 + 392);

    return MEMORY[0x2822009F8](sub_21BDCC4C4, v8, v9);
  }
}

uint64_t sub_21BDCC4C4()
{
  v1 = *(v0 + 536);
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      v5 = *(v0 + 328);

      swift_getKeyPath();
      *(v0 + 272) = v5;
      sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
      sub_21BE25F1C();

      v6 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
      swift_beginAccess();
      v7 = *(v5 + v6);
      if (v7 && ![v7 entryPoint])
      {
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 540) = 1;

        sub_21BE26CBC();
        goto LABEL_24;
      }
    }

    else
    {
      if (v1 != 3)
      {

        sub_21BE261CC();
        v19 = sub_21BE26A2C();
        v20 = sub_21BE28FDC();
        v21 = os_log_type_enabled(v19, v20);
        v22 = *(v0 + 400);
        v23 = *(v0 + 352);
        v24 = *(v0 + 336);
        if (v21)
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_21BB35000, v19, v20, "Age sharing global state shouldn't be unknown here - this is an error", v25, 2u);
          MEMORY[0x21CF05C50](v25, -1, -1);
        }

        v22(v23, v24);
        goto LABEL_24;
      }

      v2 = *(v0 + 328);

      swift_getKeyPath();
      *(v0 + 296) = v2;
      sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
      sub_21BE25F1C();

      v3 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
      swift_beginAccess();
      v4 = *(v2 + v3);
      if (v4 && ![v4 entryPoint])
      {
        if (qword_27CDB4F38 != -1)
        {
          swift_once();
        }

        [sub_21BDC7650() dismissWithError:qword_27CDB8BF8 response:0];
        goto LABEL_22;
      }
    }

    [sub_21BDC7650() dismissWithError:0 response:0];
LABEL_22:
    swift_unknownObjectRelease();
    sub_21BDC83CC();
    goto LABEL_24;
  }

  v8 = *(v0 + 328);
  swift_getKeyPath();
  *(v0 + 488) = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  *(v0 + 280) = v8;
  *(v0 + 496) = sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v9 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (!v10 || (v11 = *(v0 + 432), v12 = [v10 entryPoint], !v11) || v12)
  {
    v26 = *(v0 + 328);

    swift_getKeyPath();
    *(v0 + 288) = v26;
    sub_21BE25F1C();

    v27 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
    swift_beginAccess();
    v28 = [*(v26 + v27) ageRangeResponse];
    [sub_21BDC7650() dismissWithError:0 response:v28];
    swift_unknownObjectRelease();
    sub_21BDC83CC();

LABEL_24:

    v29 = *(v0 + 8);

    return v29();
  }

  v13 = *(v0 + 320);
  *(v0 + 504) = 0;
  v14 = *(v13 + 40);
  *(v0 + 512) = v14;
  v15 = *(v13 + 32);

  v16 = swift_task_alloc();
  *(v0 + 520) = v16;
  *v16 = v0;
  v16[1] = sub_21BDCCF2C;
  v17 = *(v0 + 304);

  return AgeRangeAlertFlowStore.saveAgeRange(with:response:responseType:altDSID:)(v17, 1, 0, v15, v14);
}

uint64_t sub_21BDCCA74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 480) = v2;
  v3 = *(v1 + 424);
  v4 = *(v1 + 416);
  if (v2)
  {
    v5 = sub_21BDCCE2C;
  }

  else
  {
    v5 = sub_21BDCCBA4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BDCCBA4()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);

  if (v2 + 1 == v3)
  {

    v4 = *(v0 + 384);
    v5 = *(v0 + 392);

    return MEMORY[0x2822009F8](sub_21BDCC4C4, v4, v5);
  }

  else
  {
    v6 = *(v0 + 448);
    ++*(v0 + 456);
    v7 = *(v0 + 328);

    v8 = sub_21BE289CC();
    *(v0 + 464) = v8;

    swift_getKeyPath();
    *(v0 + 264) = v7;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v9 = *(v7 + v6);
    if (v9)
    {
      v10 = *(v7 + v6);
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v10 = sub_21BE293EC();
    }

    *(v0 + 472) = v10;
    v11 = *(v0 + 536);
    v12 = *(v0 + 304);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BDCCA74;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BCF8794;
    *(v0 + 104) = &block_descriptor_33;
    *(v0 + 112) = v13;
    v14 = v9;
    [v12 setGlobalStateForAltDSID:v11 forAltDSID:v8 privacyVersion:v10 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21BDCCE2C()
{
  v1 = v0[59];
  v2 = v0[58];

  swift_willThrow();

  v3 = v0[48];
  v4 = v0[49];

  return MEMORY[0x2822009F8](sub_21BDCCEAC, v3, v4);
}

uint64_t sub_21BDCCEAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BDCCF2C()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_21BDCD250;
  }

  else
  {
    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_21BDCD048;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BDCD048()
{
  v1 = v0[63];
  v2 = v0[54];

  if (v1 + 1 == v2)
  {
    v3 = v0[66];
    v4 = v0[41];

    swift_getKeyPath();
    v0[36] = v4;
    sub_21BE25F1C();

    v5 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
    swift_beginAccess();
    v6 = [*(v4 + v5) ageRangeResponse];
    v7 = sub_21BDC7650();
    if (v3)
    {
    }

    else
    {
      [v7 dismissWithError:0 response:v6];
      swift_unknownObjectRelease();
    }

    sub_21BDC83CC();

    v15 = v0[1];

    return v15();
  }

  else
  {
    v8 = v0[63] + 1;
    v0[63] = v8;
    v9 = v0[40] + 16 * v8;
    v10 = *(v9 + 40);
    v0[64] = v10;
    v11 = *(v9 + 32);

    v12 = swift_task_alloc();
    v0[65] = v12;
    *v12 = v0;
    v12[1] = sub_21BDCCF2C;
    v13 = v0[38];

    return AgeRangeAlertFlowStore.saveAgeRange(with:response:responseType:altDSID:)(v13, 1, 0, v11, v10);
  }
}

uint64_t sub_21BDCD250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AgeRangeAlertFlowStore.setShareState(state:with:for:)(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = v3;
  *(v4 + 168) = a2;
  *(v4 + 272) = a1;
  sub_21BE28D7C();
  *(v4 + 192) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  *(v4 + 200) = v6;
  *(v4 + 208) = v5;

  return MEMORY[0x2822009F8](sub_21BDCD370, v6, v5);
}

uint64_t sub_21BDCD370()
{
  v1 = *(*(v0 + 176) + 16);
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__privacyVersion;
    *(v0 + 224) = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
    *(v0 + 232) = v2;
    swift_beginAccess();
    *(v0 + 240) = 0;
    v3 = *(v0 + 232);
    v4 = *(v0 + 184);

    v5 = sub_21BE289CC();
    *(v0 + 248) = v5;

    swift_getKeyPath();
    *(v0 + 80) = v4;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v6 = *(v4 + v3);
    if (v6)
    {
      v7 = *(v4 + v3);
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v7 = sub_21BE293EC();
    }

    *(v0 + 256) = v7;
    v10 = *(v0 + 168);
    v11 = *(v0 + 272);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BDCD608;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BCF8794;
    *(v0 + 104) = &block_descriptor_44_0;
    *(v0 + 112) = v12;
    v13 = v6;
    [v10 setGlobalStateForAltDSID:v11 forAltDSID:v5 privacyVersion:v7 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_21BDCD608()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_21BDCD9C0;
  }

  else
  {
    v5 = sub_21BDCD738;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BDCD738()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);

  if (v2 + 1 == v3)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    ++*(v0 + 240);
    v7 = *(v0 + 184);

    v8 = sub_21BE289CC();
    *(v0 + 248) = v8;

    swift_getKeyPath();
    *(v0 + 80) = v7;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v9 = *(v7 + v6);
    if (v9)
    {
      v10 = *(v7 + v6);
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v10 = sub_21BE293EC();
    }

    *(v0 + 256) = v10;
    v11 = *(v0 + 168);
    v12 = *(v0 + 272);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BDCD608;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BCF8794;
    *(v0 + 104) = &block_descriptor_44_0;
    *(v0 + 112) = v13;
    v14 = v9;
    [v11 setGlobalStateForAltDSID:v12 forAltDSID:v8 privacyVersion:v10 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21BDCD9C0()
{
  v1 = v0[32];
  v2 = v0[31];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t AgeRangeAlertFlowStore.handleContinueAction(with:sharedState:altDSIDList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = sub_21BE26A4C();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = sub_21BE28D7C();
  v4[34] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[35] = v7;
  v4[36] = v6;

  return MEMORY[0x2822009F8](sub_21BDCDB3C, v7, v6);
}

uint64_t sub_21BDCDB3C(uint64_t a1)
{
  sub_21BE261CC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Continue tapped, setting state to askFirst", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = v1[32];
  v6 = v1[30];
  v7 = v1[31];

  (*(v7 + 8))(v5, v6);
  v1[37] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v1[38] = v9;
  v1[39] = v8;

  return MEMORY[0x2822009F8](sub_21BDCDC6C, v9, v8);
}

uint64_t sub_21BDCDC6C()
{
  v1 = *(v0[28] + 16);
  v0[40] = v1;
  if (v1)
  {
    v2 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__privacyVersion;
    v0[41] = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
    v0[42] = v2;
    swift_beginAccess();
    v0[43] = 0;
    v3 = v0[42];
    v4 = v0[29];

    v5 = sub_21BE289CC();
    v0[44] = v5;

    swift_getKeyPath();
    v0[24] = v4;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v6 = *(v4 + v3);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v7 = sub_21BE293EC();
    }

    v0[45] = v7;
    v10 = v0[26];
    v0[2] = v0;
    v0[3] = sub_21BDCE0B0;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BCF8794;
    v0[13] = &block_descriptor_48;
    v0[14] = v11;
    v12 = v6;
    [v10 setGlobalStateForAltDSID:2 forAltDSID:v5 privacyVersion:v7 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v8 = v0[35];
    v9 = v0[36];

    return MEMORY[0x2822009F8](sub_21BDCDEF8, v8, v9);
  }
}

uint64_t sub_21BDCDEF8()
{
  v1 = *(v0 + 232);

  swift_getKeyPath();
  *(v0 + 200) = v1;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v2 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && ![v3 entryPoint])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 376) = 1;

    sub_21BE26CBC();
  }

  else
  {
    [sub_21BDC7650() dismissWithError:0 response:0];
    swift_unknownObjectRelease();
    sub_21BDC83CC();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21BDCE0B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  v3 = *(v1 + 312);
  v4 = *(v1 + 304);
  if (v2)
  {
    v5 = sub_21BDCE45C;
  }

  else
  {
    v5 = sub_21BDCE1E0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BDCE1E0()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);

  if (v2 + 1 == v3)
  {

    v4 = *(v0 + 280);
    v5 = *(v0 + 288);

    return MEMORY[0x2822009F8](sub_21BDCDEF8, v4, v5);
  }

  else
  {
    v6 = *(v0 + 336);
    ++*(v0 + 344);
    v7 = *(v0 + 232);

    v8 = sub_21BE289CC();
    *(v0 + 352) = v8;

    swift_getKeyPath();
    *(v0 + 192) = v7;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore, protocol conformance descriptor for AgeRangeAlertFlowStore);
    sub_21BE25F1C();

    v9 = *(v7 + v6);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v10 = sub_21BE293EC();
    }

    *(v0 + 360) = v10;
    v11 = *(v0 + 208);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21BDCE0B0;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BCF8794;
    *(v0 + 104) = &block_descriptor_48;
    *(v0 + 112) = v12;
    v13 = v9;
    [v11 setGlobalStateForAltDSID:2 forAltDSID:v8 privacyVersion:v10 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21BDCE45C()
{
  v1 = v0[45];
  v2 = v0[44];

  swift_willThrow();

  v3 = v0[35];
  v4 = v0[36];

  return MEMORY[0x2822009F8](sub_21BDCE4DC, v3, v4);
}

uint64_t sub_21BDCE4DC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21BDCE54C(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  v4 = sub_21BE29B0C();

  return sub_21BBB349C(a1, a2, v4);
}

void *sub_21BDCE5C4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_21BDCE5E4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_21BDCE614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
    v3 = sub_21BE297DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_21BBA3854(v4, &v13, &qword_27CDB57D8, &qword_21BE32860);
      v5 = v13;
      v6 = v14;
      result = sub_21BDCE54C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21BB414D0(&v15, (v3[7] + 32 * result));
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

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BDCE7A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21BBB7EB8;

  return sub_21BDCB0F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21BDCE87C(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for FamilyOutofProcessUIScene<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21BDCE910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_21BDCE96C(uint64_t a1)
{
  sub_21BDCEA48(319);
  if (v1 <= 0x3F)
  {
    sub_21BE25F5C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21BDCEA48(uint64_t a1)
{
  if (!qword_27CDBD250)
  {
    sub_21BE2632C();
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBD250);
    }
  }
}

void sub_21BDCEAC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE2870C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE2874C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v12 = sub_21BE28D7C();
    MEMORY[0x28223BE20](v12);
    *(&v18 - 2) = a1;
    *(&v18 - 1) = a2;
    sub_21BDC8D50(sub_21BDCEEC4, (&v18 - 4), "FamilyCircleUI/FamilyOutOfProcessUIExtension.swift", 50, 2u, 165);
  }

  else
  {
    v13 = dispatch_semaphore_create(0);
    sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
    v19 = v5;
    v20 = v8;
    v18 = sub_21BE2925C();
    sub_21BE2873C();
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = v13;
    aBlock[4] = sub_21BDCEE74;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BB42A18;
    aBlock[3] = &block_descriptor_74_0;
    v15 = _Block_copy(aBlock);

    v16 = v13;

    aBlock[0] = MEMORY[0x277D84F90];
    sub_21BDCEF1C(&qword_280BD69E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
    sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600, MEMORY[0x277D83970]);
    sub_21BE294DC();
    v17 = v18;
    MEMORY[0x21CF04410](0, v11, v7, v15);
    _Block_release(v15);

    (*(v19 + 8))(v7, v4);
    (*(v9 + 8))(v11, v20);
    sub_21BE2936C();
  }
}

uint64_t block_copy_helper_72_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21BDCEF1C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21BDCEF64(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_21BDCEFAC()
{
  result = qword_27CDBD268;
  if (!qword_27CDBD268)
  {
    result = swift_getWitnessTable(byte_21BE4D910, &type metadata for ExtensionError, v0, v1);
    atomic_store(result, &qword_27CDBD268);
  }

  return result;
}

uint64_t sub_21BDCF000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD190, &qword_21BE4D528);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_21BDCF070()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 24);
  v2 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection);
  *(v1 + OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection) = v4;

  return v4;
}

unint64_t sub_21BDCF0D0()
{
  result = qword_27CDBD270;
  if (!qword_27CDBD270)
  {
    result = swift_getWitnessTable(byte_21BE4D8E8, &type metadata for ExtensionError, v0, v1);
    atomic_store(result, &qword_27CDBD270);
  }

  return result;
}

uint64_t sub_21BDCF180(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  v17 = sub_21BC2C520;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21BBB1C7C;
  v16 = &block_descriptor_58;
  v7 = _Block_copy(&v13);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v17 = sub_21BDD3BD8;
  v18 = v8;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21BDCF570;
  v16 = &block_descriptor_53_0;
  v9 = _Block_copy(&v13);

  v10 = [a1 sinkWithCompletion:v7 receiveInput:v9];

  _Block_release(v9);
  _Block_release(v7);
  v11 = *(v3 + 16);
  *(v3 + 16) = v10;

  return v3;
}

void sub_21BDCF308(uint64_t a1, void (*a2)(id))
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 eventBody];
    swift_unknownObjectRelease();
    if (v11)
    {
      sub_21BE2612C();
      v12 = sub_21BE26A2C();
      v13 = sub_21BE28FCC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_21BB35000, v12, v13, "Event received ", v14, 2u);
        MEMORY[0x21CF05C50](v14, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
      a2(v11);

      return;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_21BE2612C();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FDC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21BB35000, v15, v16, "Event received wrong type", v17, 2u);
    MEMORY[0x21CF05C50](v17, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_21BDCF570(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_21BDCF5D0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v4 = sub_21BE25D6C();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21BE2922C();
  MEMORY[0x28223BE20](v23);
  v7 = sub_21BE2874C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_21BE2924C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_21BE295EC();

  v26 = 0xD00000000000001DLL;
  v27 = 0x800000021BE61F70;
  MEMORY[0x21CF03CA0](a1, a2);
  (*(v9 + 104))(v11, *MEMORY[0x277D85268], v8);
  sub_21BE2872C();
  v26 = MEMORY[0x277D84F90];
  sub_21BDD389C(&unk_280BD6938, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8278, &qword_21BE3B5F8);
  sub_21BB3B038(&qword_280BD6998, &qword_27CDB8278, &qword_21BE3B5F8, MEMORY[0x277D83970]);
  sub_21BE294DC();
  v12 = sub_21BE2927C();
  sub_21BE25D5C();
  v13 = sub_21BE25D2C();
  v15 = v14;
  (*(v24 + 8))(v6, v25);
  v26 = v13;
  v27 = v15;
  MEMORY[0x21CF03CA0](46, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v21, v22);
  v16 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v17 = sub_21BE289CC();

  v18 = [v16 initWithIdentifier:v17 targetQueue:v12 waking:0];

  return v18;
}

void FamilySettingsView.init()(uint64_t a1@<X8>)
{
  *a1 = sub_21BDCFB14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

double sub_21BDCF9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21BE25D1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  (*(v8 + 32))(v11 + v10, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_21BE2633C();

  return result;
}

id sub_21BDCFB14()
{
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v1 = qword_280BD7CD0;

  return v1;
}

uint64_t FamilySettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v95 = *MEMORY[0x277D85DE8];
  v3 = sub_21BE25B9C();
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v80 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE25DFC();
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21BE25A9C();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE289BC();
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21BE25AAC();
  v72 = *(v79 - 8);
  v73 = v79 - 8;
  v86 = v72;
  MEMORY[0x28223BE20](v79 - 8);
  v89 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21BE2884C();
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_21BE2757C();
  v12 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD278, &qword_21BE4D950);
  MEMORY[0x28223BE20](v14);
  v16 = (&v65 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD280, &qword_21BE4D958);
  v67 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD288, &qword_21BE4D960);
  v68 = *(v84 - 1);
  MEMORY[0x28223BE20](v84);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD290, &qword_21BE4D968);
  v77 = *(v22 - 8);
  v78 = v22;
  MEMORY[0x28223BE20](v22);
  v85 = &v65 - v23;
  v25 = *v2;
  v24 = *(v2 + 8);
  LOBYTE(v2) = *(v2 + 16);
  sub_21BDD074C(v16);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  *(v26 + 32) = v2;
  v27 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD298, &qword_21BE4D970) + 36));
  *v27 = sub_21BDD0E90;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  sub_21BDD0E9C(v25, v24, v2);
  v28 = sub_21BE271CC();
  v29 = sub_21BE27B7C();
  v30 = v16 + v14[9];
  *v30 = v28;
  v30[8] = v29;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = objc_opt_self();
  v32 = [v65 bundleForClass_];
  v33 = sub_21BE2599C();
  v35 = v34;

  v91 = v33;
  v92 = v35;
  v36 = sub_21BDD0EAC();
  v37 = sub_21BB41FA4();
  v38 = MEMORY[0x277D837D0];
  sub_21BE27F9C();

  sub_21BB3A4CC(v16, &qword_27CDBD278, &qword_21BE4D950);
  v39 = v66;
  v40 = v69;
  (*(v12 + 104))(v66, *MEMORY[0x277CDDDC0], v69);
  v91 = v14;
  v92 = v38;
  v93 = v36;
  v94 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21BE280AC();
  (*(v12 + 8))(v39, v40);
  (*(v67 + 8))(v19, v17);
  v91 = v17;
  v92 = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v84;
  v69 = v42;
  sub_21BE2804C();
  (*(v68 + 8))(v21, v43);
  v44 = v87;
  *v87 = 0xD000000000000021;
  v44[1] = 0x800000021BE5B760;
  (*(v88 + 104))();
  sub_21BE289AC();
  type metadata accessor for FamilyChecklistStore();
  v68 = swift_getObjCClassFromMetadata();
  v45 = v65;
  v46 = [v65 bundleForClass_];
  v47 = [v46 bundleURL];

  v48 = v71;
  sub_21BE25B5C();

  v49 = *MEMORY[0x277CC9118];
  v74 = *(v74 + 104);
  v50 = v75;
  (v74)(v48, v49, v75);
  sub_21BE25DBC();
  sub_21BE25ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD2E8, &qword_21BE4D990);
  *(swift_allocObject() + 16) = xmmword_21BE32770;
  sub_21BE289AC();
  v51 = [v45 bundleForClass_];
  v52 = [v51 bundleURL];

  sub_21BE25B5C();
  (v74)(v48, v49, v50);
  sub_21BE25DBC();
  sub_21BE25ABC();
  v53 = objc_opt_self();
  v91 = 0;
  v54 = [v53 urlDestinationTo:1 error:&v91];
  v55 = v91;
  if (v54)
  {
    v56 = v54;
    v57 = v80;
    sub_21BE25B5C();
    v58 = v55;

    v91 = v84;
    v92 = v69;
    swift_getOpaqueTypeConformance2();
    v59 = v87;
    v60 = v89;
    v61 = v78;
    v62 = v85;
    sub_21BE27E5C();

    (*(v82 + 8))(v57, v83);
    (*(v86 + 8))(v60, v79);
    (*(v88 + 8))(v59, v90);
    return (*(v77 + 8))(v62, v61);
  }

  else
  {
    v64 = v91;
    sub_21BE25A8C();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void *sub_21BDD074C@<X0>(void *a4@<X8>)
{
  v35 = a4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD378, &unk_21BE4DC60);
  MEMORY[0x28223BE20](v34);
  v5 = (&v29 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD2D8, &qword_21BE4D988);
  MEMORY[0x28223BE20](v33);
  v11 = &v29 - v10;
  type metadata accessor for FamilySettingsApplication(0);
  sub_21BDD389C(&qword_27CDBD370, type metadata accessor for FamilySettingsApplication, protocol conformance descriptor for FamilySettingsApplication);
  v12 = sub_21BE26EAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v13 = v36;
  if (v38 >> 62)
  {
    if (v38 >> 62 != 1)
    {
      *v11 = sub_21BE2770C();
      *(v11 + 1) = 0;
      v11[16] = 1;
      v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD380, qword_21BE4DD00) + 44)];
      v21 = v29;
      sub_21BE26EEC();
      v23 = v30;
      v22 = v31;
      v24 = *(v31 + 16);
      v25 = v32;
      v24(v30, v21, v32);
      *v20 = 0;
      v20[8] = 1;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBB0, &qword_21BE48610);
      v24(&v20[*(v26 + 48)], v23, v25);
      v27 = &v20[*(v26 + 64)];
      *v27 = 0;
      v27[8] = 1;
      v28 = *(v22 + 8);
      v28(v21, v25);
      v28(v23, v25);
      sub_21BBA3854(v11, v5, &qword_27CDBD2D8, &qword_21BE4D988);
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDBD2D0, &qword_27CDBD2D8, &qword_21BE4D988, MEMORY[0x277CE1198]);
      sub_21BDD1100();
      sub_21BE2784C();
      return sub_21BB3A4CC(v11, &qword_27CDBD2D8, &qword_21BE4D988);
    }

    v32 = v37;
  }

  else
  {
    v32 = v37;
  }

  v14 = sub_21BE26EAC();
  v15 = *&v14[OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager];

  v16 = sub_21BE26EAC();
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v17 = sub_21BE270CC();
  *v5 = v13;
  v5[1] = v15;
  v5[2] = v32;
  v5[3] = v17;
  v5[4] = v18;
  swift_storeEnumTagMultiPayload();
  sub_21BB3B038(&qword_27CDBD2D0, &qword_27CDBD2D8, &qword_21BE4D988, MEMORY[0x277CE1198]);
  sub_21BDD1100();
  return sub_21BE2784C();
}

void sub_21BDD0CF8(uint64_t a1, uint64_t a2, char a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  type metadata accessor for FamilySettingsApplication(0);
  sub_21BDD389C(&qword_27CDBD370, type metadata accessor for FamilySettingsApplication, protocol conformance descriptor for FamilySettingsApplication);
  v6 = sub_21BE26EAC();
  v7 = sub_21BE28DAC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_21BE28D7C();
  v8 = v6;
  v9 = sub_21BE28D6C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_21BC54908(0, 0, v5, &unk_21BE4DC58, v10);
}

id sub_21BDD0E9C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

unint64_t sub_21BDD0EAC()
{
  result = qword_27CDBD2A0;
  if (!qword_27CDBD2A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD278, &qword_21BE4D950);
    v4[0] = sub_21BDD0F38();
    v4[1] = MEMORY[0x277CE0880];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD2A0);
  }

  return result;
}

unint64_t sub_21BDD0F38()
{
  result = qword_27CDBD2A8;
  if (!qword_27CDBD2A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD298, &qword_21BE4D970);
    v4[0] = sub_21BDD0FC4();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD2A8);
  }

  return result;
}

unint64_t sub_21BDD0FC4()
{
  result = qword_27CDBD2B0;
  if (!qword_27CDBD2B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD2B8, &qword_21BE4D978);
    v4[0] = sub_21BDD1048();
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27CDBD2B0);
  }

  return result;
}

unint64_t sub_21BDD1048()
{
  result = qword_27CDBD2C0;
  if (!qword_27CDBD2C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD2C8, &qword_21BE4D980);
    v4[0] = sub_21BB3B038(&qword_27CDBD2D0, &qword_27CDBD2D8, &qword_21BE4D988, MEMORY[0x277CE1198]);
    v4[1] = sub_21BDD1100();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBD2C0);
  }

  return result;
}

unint64_t sub_21BDD1100()
{
  result = qword_27CDBD2E0;
  if (!qword_27CDBD2E0)
  {
    result = swift_getWitnessTable(aA9Ft, &type metadata for FamilySettingsView.Content, v0, v1);
    atomic_store(result, &qword_27CDBD2E0);
  }

  return result;
}

uint64_t sub_21BDD1180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21BDD11C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

char *sub_21BDD121C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD2F8, &unk_21BE4DBA8);
  sub_21BE27B1C();
  v5 = *(v8 + 16);

  v6 = objc_opt_self();
  return sub_21BDD1814(v4, v5, v2, v3, v1, [v6 sharedInstance]);
}

void sub_21BDD1304(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [v1[1] accountStore];
  v5 = [objc_allocWithZone(MEMORY[0x277CEC808]) initWithAccountStore:v4 grandSlamAccount:v3 appTokenID:*MEMORY[0x277CEC6F0]];

  if (v5)
  {
    type metadata accessor for FamilySettingsView.Content.Coordinator();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *a1 = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDD13A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDD14C8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BDD1404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDD14C8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BDD1468(uint64_t a1)
{
  sub_21BDD14C8();
  sub_21BE27ABC();
  __break(1u);
}

unint64_t sub_21BDD14C8()
{
  result = qword_27CDBD2F0;
  if (!qword_27CDBD2F0)
  {
    result = swift_getWitnessTable(byte_21BE4DAE0, &type metadata for FamilySettingsView.Content, v0, v1);
    atomic_store(result, &qword_27CDBD2F0);
  }

  return result;
}

void *sub_21BDD151C(uint64_t a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[2] = 0;
  a2[3] = a1;
  a2[4] = &protocol witness table for LocationViewModel;
  v8 = [objc_opt_self() findMyLocationChangeStream];
  v9 = [v8 publisher];

  v10 = sub_21BDCF5D0(0x6E6F697461636F6CLL, 0xE800000000000000);
  v11 = [v9 subscribeOn_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB7830, &unk_21BE388C0);
  swift_allocObject();
  v12 = v11;

  a2[2] = sub_21BDCF180(v12, sub_21BDD3BD0, a2);

  sub_21BE2612C();
  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21BB35000, v13, v14, "LocationShareListener started", v15, 2u);
    MEMORY[0x21CF05C50](v15, -1, -1);
    v16 = v12;
  }

  else
  {
    v16 = v13;
    v13 = v12;
  }

  (*(v5 + 8))(v7, v4);
  return a2;
}

double sub_21BDD1774(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = v6;

  sub_21BE2633C();

  return result;
}

char *sub_21BDD1814(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v62 = a6;
  v72 = a3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v59 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v59 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v63 = &v59 - v12;
  v13 = type metadata accessor for FAFamilySettingsViewControllerV2();
  v14 = objc_allocWithZone(v13);
  v15 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorView;
  *&v14[v15] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v16 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_activityIndicatorViewForAdd;
  *&v14[v16] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  swift_unknownObjectWeakInit();
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController] = 0;
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCashHandler] = 0;
  v17 = &v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v18 = qword_280BD79E0;
  v17[3] = type metadata accessor for FamilyCircleStore(0);
  v17[4] = &protocol witness table for FamilyCircleStore;
  *v17 = v18;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v19 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v19 = MEMORY[0x277D84FA0];
  }

  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_cancellables] = v19;
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter] = 0;
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureViewController] = 0;
  v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_disclosureHookWasCalled] = 0;
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_timeToView] = sub_21BC84D18(0x746E6F4377656976, 0xEF3272656C6C6F72, "initToView", 10, 2u);
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleAccount] = a1;
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_grandSlamSigner] = a2;
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_pictureStore] = a4;
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_accountManager] = a5;
  v20 = objc_allocWithZone(type metadata accessor for FAFamilyLandingPageViewModel());
  v21 = a1;
  v22 = a2;
  v23 = a4;
  v24 = a5;
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_viewModel] = FAFamilyLandingPageViewModel.init(appleAccount:)(v21);
  v25 = qword_27CDD4290;
  if (qword_27CDD4290)
  {
    v26 = qword_27CDD4290;
  }

  else
  {
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v77 = 0;
    memset(v76, 0, sizeof(v76));
    v27 = type metadata accessor for ScreenTimeConfiguration();
    memset(v74, 0, sizeof(v74));
    v75 = 0;
    v28 = [objc_allocWithZone(v27) init];
    v29 = objc_allocWithZone(type metadata accessor for LocationViewModel(0));
    v26 = sub_21BDD21D4(v28, &v78, v76, v74, v29);
  }

  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_locationViewModel] = v26;
  v30 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v31 = v25;
  v32 = [v30 init];
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_addMemberButton] = v32;
  v33 = [objc_allocWithZone(FAFamilySettingsViewControllerHelper) initWithAppleAccount:v21 grandSlamSigner:v22 familyPictureStore:v23 accountManager:v24];
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_familySettingsHelper] = v33;
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_peopleDiscoveryService] = v62;
  v61 = v23;
  v60 = v22;
  v62 = v24;
  if (qword_280BD7508 != -1)
  {
    swift_once();
  }

  v34 = qword_280BDCB60;
  v35 = [objc_allocWithZone(FAAppleCardUtilities) init];
  v36 = type metadata accessor for AppleCardStore(0);
  *(&v79 + 1) = v36;
  v80 = &off_282D9A530;
  *&v78 = v34;
  v37 = objc_allocWithZone(type metadata accessor for AppleCardFamilySettingsViewModel(0));
  v38 = __swift_mutable_project_boxed_opaque_existential_1(&v78, v36);
  MEMORY[0x28223BE20](v38);
  v40 = (&v59 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v40;

  v43 = sub_21BDD2ECC(v18, v35, v42, v37);

  __swift_destroy_boxed_opaque_existential_0Tm(&v78);
  *&v14[OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_appleCardFamilySettingsViewModel] = v43;
  v73.receiver = v14;
  v73.super_class = v13;
  v44 = objc_msgSendSuper2(&v73, sel_initWithNibName_bundle_, 0, 0);
  sub_21BB3A35C(v44 + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_circleStore, &v78);
  v45 = *(&v79 + 1);
  v46 = v80;
  __swift_project_boxed_opaque_existential_1Tm(&v78, *(&v79 + 1));
  v47 = v46[4];
  v48 = v44;
  v49 = v63;
  v47(v45, v46);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21BE2635C();
  swift_allocObject();
  v51 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v52 = v64;
  v53 = v68;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v54 = v69;
  v55 = v66;
  sub_21BE26CFC();
  (*(v65 + 8))(v52, v55);
  v56 = swift_allocObject();
  v56[2] = v51;
  v56[3] = &unk_21BE32BB0;
  v56[4] = v50;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v57 = v71;
  sub_21BE26D1C();

  (*(v70 + 8))(v54, v57);
  (*(v67 + 8))(v49, v53);
  __swift_destroy_boxed_opaque_existential_0Tm(&v78);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  return v48;
}

char *sub_21BDD21D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v86 = a3;
  v87 = a4;
  v88 = a2;
  v85 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD320, &qword_21BE4DBE0);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD328, &qword_21BE4DBE8);
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD330, &unk_21BE4DBF0);
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x28223BE20](v9);
  v79 = v65 - v10;
  v75 = sub_21BE2652C();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BE2653C();
  MEMORY[0x28223BE20](v12 - 8);
  v73 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9810, &unk_21BE405A0);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = v65 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9768, &qword_21BE40220);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9750, &qword_21BE401C8);
  v65[0] = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v65 - v22;
  v24 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__familyMembersSharingLocationWithMe;
  *&v92 = sub_21BBB561C(MEMORY[0x277D84F90]);
  v65[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8238, &unk_21BE4DC00);
  sub_21BE26C6C();
  v25 = *(v21 + 32);
  v25(&a5[v24], v23, v20);
  v26 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__parentCanToggleChildsLocation;
  LOBYTE(v92) = 0;
  sub_21BE26C6C();
  v27 = *(v17 + 32);
  v27(&a5[v26], v19, v16);
  v28 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__disableLocationToggles;
  LOBYTE(v92) = 0;
  sub_21BE26C6C();
  v27(&a5[v28], v19, v16);
  v29 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__sharingLocationWithFamilyMembers;
  v30 = MEMORY[0x277D84F90];
  *&v92 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  v31 = v66;
  sub_21BE26C6C();
  (*(v67 + 32))(&a5[v29], v31, v68);
  v32 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__childCanModifyLocationStatus;
  *&v92 = sub_21BBB561C(v30);
  sub_21BE26C6C();
  v25(&a5[v32], v23, v65[0]);
  v33 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__membersAutomaticallySharing;
  *&v92 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F0, &qword_21BE4DC10);
  v34 = v69;
  sub_21BE26C6C();
  (*(v70 + 32))(&a5[v33], v34, v71);
  *&a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_locationListener] = 0;
  if (v30 >> 62 && sub_21BE2951C())
  {
    v35 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v35 = MEMORY[0x277D84FA0];
  }

  v37 = v87;
  v36 = v88;
  v38 = v85;
  *&a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_cancellables] = v35;
  a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_wasLoadDataCalled] = 0;
  *&a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_screenTimeConnection] = v38;
  sub_21BBA3854(v36, &v90, &qword_27CDBD338, &qword_21BE4DC18);
  if (v91)
  {
    sub_21BB3D104(&v90, &v92);
    swift_unknownObjectRetain();
  }

  else
  {
    v39 = qword_280BD79D8;
    swift_unknownObjectRetain();
    if (v39 == -1)
    {
      v40 = qword_280BD79E0;
      v93 = type metadata accessor for FamilyCircleStore(0);
      v94 = &protocol witness table for FamilyCircleStore;
      *&v92 = v40;
    }

    else
    {
      swift_once();
      v61 = v91;
      v62 = qword_280BD79E0;
      v93 = type metadata accessor for FamilyCircleStore(0);
      v94 = &protocol witness table for FamilyCircleStore;
      *&v92 = v62;

      if (v61)
      {
        sub_21BB3A4CC(&v90, &qword_27CDBD338, &qword_21BE4DC18);
      }
    }
  }

  sub_21BB3D104(&v92, &a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_circleStore]);
  (*(v74 + 104))(v72, *MEMORY[0x277D09060], v75);
  sub_21BE2654C();
  v41 = sub_21BE2661C();
  swift_allocObject();
  v42 = sub_21BE2662C();
  v43 = &a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession];
  v43[3] = v41;
  v43[4] = &protocol witness table for Session;
  *v43 = v42;
  sub_21BBA3854(v37, &v90, &qword_27CDB8AA0, &qword_21BE4DC20);
  if (v91)
  {
    sub_21BB3D104(&v90, &v92);
  }

  else if (qword_280BD76F0 == -1)
  {
    v44 = qword_280BDCB98;
    v93 = type metadata accessor for ServicesStore(0);
    v94 = &off_282D8FEE0;
    *&v92 = v44;
  }

  else
  {
    swift_once();
    v63 = v91;
    v64 = qword_280BDCB98;
    v93 = type metadata accessor for ServicesStore(0);
    v94 = &off_282D8FEE0;
    *&v92 = v64;

    if (v63)
    {
      sub_21BB3A4CC(&v90, &qword_27CDB8AA0, &qword_21BE4DC20);
    }
  }

  sub_21BB3D104(&v92, &a5[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore]);
  v45 = type metadata accessor for LocationViewModel(0);
  v89.receiver = a5;
  v89.super_class = v45;
  v46 = objc_msgSendSuper2(&v89, sel_init);
  type metadata accessor for LocationShareListener();
  v47 = swift_allocObject();
  v48 = v46;
  *&v48[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_locationListener] = sub_21BDD151C(v48, v47);

  sub_21BB3A35C(&v48[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore], &v92);
  __swift_project_boxed_opaque_existential_1Tm(&v92, v93);
  v49 = off_282D8FEF0;
  type metadata accessor for ServicesStore(0);
  v50 = v79;
  v49();
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21BE2635C();
  swift_allocObject();
  v52 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD340, &qword_27CDBD330, &unk_21BE4DBF0, MEMORY[0x277CBCEC8]);
  sub_21BDD3A64();
  v53 = v76;
  v54 = v81;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBD358, &qword_27CDBD320, &qword_21BE4DBE0, MEMORY[0x277CBCBE0]);
  v55 = v82;
  v56 = v78;
  sub_21BE26CFC();
  (*(v77 + 8))(v53, v56);
  v57 = swift_allocObject();
  v57[2] = v52;
  v57[3] = &unk_21BE4DC28;
  v57[4] = v51;
  sub_21BB3B038(&qword_27CDBD360, &qword_27CDBD328, &qword_21BE4DBE8, MEMORY[0x277CBCC18]);

  v58 = v84;
  sub_21BE26D1C();

  (*(v83 + 8))(v55, v58);
  (*(v80 + 8))(v50, v54);
  __swift_destroy_boxed_opaque_existential_0Tm(&v92);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  if (qword_27CDD4290)
  {

    v38 = v48;
  }

  else
  {
    qword_27CDD4290 = v48;
  }

  v59 = v87;

  sub_21BB3A4CC(v59, &qword_27CDB8AA0, &qword_21BE4DC20);
  sub_21BB3A4CC(v86, &qword_27CDBD368, &qword_21BE4DC38);
  sub_21BB3A4CC(v88, &qword_27CDBD338, &qword_21BE4DC18);
  return v48;
}

char *sub_21BDD2ECC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v46 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD300, &qword_21BE4DBB8);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD308, &qword_21BE4DBC0);
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v41 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8268, &unk_21BE3B3A8);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = &v41 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C80, &qword_21BE3B3A0);
  v13 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  v59[3] = type metadata accessor for FamilyCircleStore(0);
  v59[4] = &protocol witness table for FamilyCircleStore;
  v59[0] = a1;
  v57 = type metadata accessor for AppleCardStore(0);
  v58 = &off_282D9A530;
  v45 = v57;
  v56[0] = a3;
  v20 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__showShareAppleCardFlow;
  LOBYTE(v53) = 0;
  sub_21BE26C6C();
  v21 = *(v17 + 32);
  v21(&a4[v20], v19, v16);
  v22 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__showAppleCardFamilyScreen;
  LOBYTE(v53) = 0;
  sub_21BE26C6C();
  v21(&a4[v22], v19, v16);
  v23 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__subLabel;
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_21BE26C6C();
  (*(v13 + 32))(&a4[v23], v15, v42);
  v24 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__sharingCardWithFamilyMembers;
  v25 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8228, &qword_21BE3B0E0);
  sub_21BE26C6C();
  (*(v43 + 32))(&a4[v24], v12, v44);
  v26 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__shouldHideShareCardButton;
  LOBYTE(v53) = 0;
  sub_21BE26C6C();
  v21(&a4[v26], v19, v16);
  v27 = &a4[OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__persistedCache];
  *v27 = sub_21BBDC524;
  *(v27 + 1) = 0;
  v27[16] = 0;
  if (v25 >> 62 && sub_21BE2951C())
  {
    v28 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  *&a4[OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_cancellables] = v28;
  sub_21BB3A35C(v59, &a4[OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_familyCircleStore]);
  *&a4[OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities] = v46;
  sub_21BB3A35C(v56, &a4[OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardStore]);
  v29 = type metadata accessor for AppleCardFamilySettingsViewModel(0);
  v55.receiver = a4;
  v55.super_class = v29;
  swift_unknownObjectRetain();
  v30 = objc_msgSendSuper2(&v55, sel_init);
  __swift_project_boxed_opaque_existential_1Tm(v56, v57);
  v31 = off_282D9A550;
  v32 = v30;
  v33 = v47;
  v31();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21BE2635C();
  swift_allocObject();
  v35 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD310, &qword_27CDBD308, &qword_21BE4DBC0, MEMORY[0x277CBCEC8]);
  sub_21BDD389C(&qword_280BD89D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v37 = v49;
  v36 = v50;
  sub_21BE26D0C();
  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = &unk_21BE4DBC8;
  v38[4] = v34;
  sub_21BB3B038(&qword_27CDBD318, &qword_27CDBD300, &qword_21BE4DBB8, MEMORY[0x277CBCBE0]);

  v39 = v52;
  sub_21BE26D1C();

  (*(v51 + 8))(v36, v39);
  (*(v48 + 8))(v33, v37);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  return v32;
}

void sub_21BDD3654(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD2F8, &unk_21BE4DBA8);
  sub_21BE27B1C();
  v6 = [a4 accountStore];
  v7 = [objc_allocWithZone(MEMORY[0x277CEC808]) initWithAccountStore:v6 grandSlamAccount:a3 appTokenID:*MEMORY[0x277CEC6F0]];

  if (v7)
  {
    v8 = *(v10 + 16);
    *(v10 + 16) = v7;

    sub_21BE27B1C();
    v9 = *(v10 + 16);

    sub_21BBA87D4(v9, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDD376C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBA7464(a1, v1);
}

uint64_t sub_21BDD3804(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BC69A5C(a1, v1);
}

uint64_t sub_21BDD389C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BDD38F0()
{
  v2 = *(sub_21BE25D1C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BD51674(v4, v5, v0 + v3);
}

uint64_t sub_21BDD39CC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BCCE954(a1, v1);
}

unint64_t sub_21BDD3A64()
{
  result = qword_27CDBD348;
  if (!qword_27CDBD348)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB76A8, &qword_21BE38780);
    v4[0] = sub_21BB3CC48(&qword_27CDBD350, &unk_27CDB6550, 0x277D08338, MEMORY[0x277D85380]);
    result = swift_getWitnessTable(MEMORY[0x277D83968], v3, v4);
    atomic_store(result, &qword_27CDBD348);
  }

  return result;
}

uint64_t sub_21BDD3B20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB44438(v2, v3, v0 + 4);
}

uint64_t sub_21BDD3BE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BD41744();
}

uint64_t type metadata accessor for StaticSelectableCellTemplate(uint64_t a1)
{
  result = qword_27CDBD388;
  if (!qword_27CDBD388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BDD3D10(uint64_t a1)
{
  sub_21BDD3FA8(319, &qword_280BD89E0, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_21BB3FA80(319, &qword_280BD69C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21BB3FA80(319, &qword_27CDBD398, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21BDD3F44(319);
        if (v4 <= 0x3F)
        {
          v5 = MEMORY[0x277D839B0];
          sub_21BB3FA80(319, &qword_27CDBADA0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
          if (v6 <= 0x3F)
          {
            sub_21BDD3FA8(319, &qword_27CDBD3A8, sub_21BC19578);
            if (v7 <= 0x3F)
            {
              sub_21BC08FA8(319);
              if (v8 <= 0x3F)
              {
                sub_21BB3FA80(319, &qword_280BD6A00, v5, MEMORY[0x277CE10B8]);
                if (v9 <= 0x3F)
                {
                  sub_21BE2934C();
                  if (v10 <= 0x3F)
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
  }
}

void sub_21BDD3F44(uint64_t a1)
{
  if (!qword_27CDBD3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5A90, &unk_21BE33000);
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBD3A0);
    }
  }
}

void sub_21BDD3FA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE2946C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21BDD3FFC()
{
  result = qword_27CDB5750;
  if (!qword_27CDB5750)
  {
    v3 = type metadata accessor for ServicesStore(255);
    result = swift_getWitnessTable(protocol conformance descriptor for AsyncStore<A>, v3, v0, v1);
    atomic_store(result, &qword_27CDB5750);
  }

  return result;
}

double sub_21BDD4070()
{
  v1 = type metadata accessor for StaticSelectableCellTemplate(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = v0 + *(v2 + 76);
  v10 = *v9;
  v11 = *(v9 + 8);
  LOBYTE(v22) = v10;
  v23 = v11;
  v25 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v12 = v0 + *(v2 + 52);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v12) = *(v12 + 16);
  v22 = v13;
  v23 = v14;
  v24 = v12;
  v25 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2854C();
  sub_21BE28D8C();
  v15 = sub_21BE28DAC();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_21BDD6CD4(v0, v5);
  sub_21BE28D7C();
  v16 = sub_21BE28D6C();
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_21BDD6D38(v5, v18 + v17);
  sub_21BBA932C(0, 0, v8, &unk_21BE4DE88, v18);

  return result;
}

uint64_t sub_21BDD42C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a4;
  v5 = sub_21BE25FCC();
  v4[51] = v5;
  v4[52] = *(v5 - 8);
  v4[53] = swift_task_alloc();
  v6 = sub_21BE26A4C();
  v4[54] = v6;
  v4[55] = *(v6 - 8);
  v4[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v7 = sub_21BE25B9C();
  v4[59] = v7;
  v4[60] = *(v7 - 8);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  sub_21BE28D7C();
  v4[63] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[64] = v9;
  v4[65] = v8;

  return MEMORY[0x2822009F8](sub_21BDD44C0, v9, v8);
}

uint64_t sub_21BDD44C0()
{
  v51 = v0;
  v1 = *(v0 + 400);
  v2 = type metadata accessor for StaticSelectableCellTemplate(0);
  v3 = v2;
  v4 = (v1 + *(v2 + 36));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    v6 = *(v0 + 472);
    v7 = *(v0 + 480);
    v8 = *(v0 + 464);
    sub_21BBA3854(v1 + *(v2 + 20), v8, &unk_27CDB57F0, &qword_21BE328A0);
    if ((*(v7 + 48))(v8, 1, v6) != 1)
    {
      (*(*(v0 + 480) + 32))(*(v0 + 496), *(v0 + 464), *(v0 + 472));
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v0 + 528) = Strong;
      v27 = *(v0 + 496);
      if (Strong)
      {
        v33 = Strong;
        v34 = sub_21BE25B2C();
        *(v0 + 536) = v34;
        v35 = sub_21BE289CC();
        *(v0 + 544) = v35;
        *(v0 + 80) = v0;
        *(v0 + 88) = sub_21BDD4C2C;
        v36 = swift_continuation_init();
        *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
        *(v0 + 296) = MEMORY[0x277D85DD0];
        *(v0 + 304) = 1107296256;
        *(v0 + 312) = sub_21BD44BD8;
        *(v0 + 320) = &block_descriptor_16;
        *(v0 + 328) = v36;
        [v33 didSelectSubscriptionWithURLMemberDetails:v34 familyMemberDSID:v35 serviceName:v5 completion:v0 + 296];
        v31 = v0 + 80;
        goto LABEL_12;
      }

LABEL_15:
      (*(*(v0 + 480) + 8))(v27, *(v0 + 472));

      v38 = *(v0 + 416);
      v37 = *(v0 + 424);
      v39 = *(v0 + 408);
      (*(v38 + 104))(v37, *MEMORY[0x277D07F38], v39);
      v40 = MEMORY[0x21CF01150](v37);
      (*(v38 + 8))(v37, v39);
      if (v40)
      {
        if (v41 = *(v0 + 400), *v41 == 0xD000000000000010) && 0x800000021BE55930 == v41[1] || (sub_21BE2995C())
        {
          v42 = [objc_opt_self() defaultCenter];
          if (qword_27CDB4EC0 != -1)
          {
            swift_once();
          }

          [v42 postNotificationName:qword_27CDB7E70 object:0 userInfo:0 deliverImmediately:1];
        }
      }

      if (qword_27CDB4F68 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 400);
      v45 = *v43;
      v44 = v43[1];
      v50 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21BE32770;
      *(inited + 32) = 0x6976614E77656976;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = &protocol witness table for String;
      *(inited + 40) = 0xEF6F546465746167;
      *(inited + 48) = v45;
      *(inited + 56) = v44;

      v47 = sub_21BBB5E60(inited);
      swift_setDeallocating();
      sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
      sub_21BCA55DC(&v50, v47);

      goto LABEL_25;
    }

    sub_21BB3A4CC(*(v0 + 464), &unk_27CDB57F0, &qword_21BE328A0);
    v1 = *(v0 + 400);
  }

  v9 = *(v0 + 472);
  v10 = *(v0 + 480);
  v11 = *(v0 + 456);
  sub_21BBA3854(v1 + v3[5], v11, &unk_27CDB57F0, &qword_21BE328A0);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 456);

    sub_21BB3A4CC(v12, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "Attempting to present view w/o URL", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    v17 = *(v0 + 440);
    v16 = *(v0 + 448);
    v18 = *(v0 + 432);
    v19 = *(v0 + 400);

    (*(v17 + 8))(v16, v18);
    v20 = (v19 + v3[11]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v20) = *(v20 + 16);
    *(v0 + 360) = v21;
    *(v0 + 368) = v22;
    *(v0 + 376) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
    v23 = (v19 + v3[17]);
    v24 = *v23;
    v25 = *(v23 + 1);
    *(v0 + 384) = v24;
    *(v0 + 392) = v25;
    *(v0 + 378) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
LABEL_25:

    v48 = *(v0 + 8);

    return v48();
  }

  (*(*(v0 + 480) + 32))(*(v0 + 488), *(v0 + 456), *(v0 + 472));
  v26 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 552) = v26;
  v27 = *(v0 + 488);
  if (!v26)
  {
    goto LABEL_15;
  }

  v28 = v26;
  v29 = sub_21BE25B2C();
  *(v0 + 560) = v29;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_21BDD5040;
  v30 = swift_continuation_init();
  *(v0 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
  *(v0 + 232) = MEMORY[0x277D85DD0];
  *(v0 + 240) = 1107296256;
  *(v0 + 248) = sub_21BD44BD8;
  *(v0 + 256) = &block_descriptor_59;
  *(v0 + 264) = v30;
  [v28 didSelectSubscriptionWithURL:v29 completion:v0 + 232];
  v31 = v0 + 16;
LABEL_12:

  return MEMORY[0x282200938](v31);
}

uint64_t sub_21BDD4C2C()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);

  return MEMORY[0x2822009F8](sub_21BDD4D34, v2, v1);
}

uint64_t sub_21BDD4D34()
{
  v20 = v0;
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[62];
  v4 = v0[59];
  v5 = v0[60];

  (*(v5 + 8))(v3, v4);
  swift_unknownObjectRelease();

  v7 = v0[52];
  v6 = v0[53];
  v8 = v0[51];
  (*(v7 + 104))(v6, *MEMORY[0x277D07F38], v8);
  LOBYTE(v4) = MEMORY[0x21CF01150](v6);
  (*(v7 + 8))(v6, v8);
  if (v4)
  {
    v9 = v0[50];
    v10 = *v9 == 0xD000000000000010 && 0x800000021BE55930 == v9[1];
    if (v10 || (sub_21BE2995C() & 1) != 0)
    {
      v11 = [objc_opt_self() defaultCenter];
      if (qword_27CDB4EC0 != -1)
      {
        swift_once();
      }

      [v11 postNotificationName:qword_27CDB7E70 object:0 userInfo:0 deliverImmediately:1];
    }
  }

  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v12 = v0[50];
  v14 = *v12;
  v13 = v12[1];
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = v14;
  *(inited + 56) = v13;

  v16 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v19, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_21BDD5040()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);

  return MEMORY[0x2822009F8](sub_21BDD5148, v2, v1);
}

uint64_t sub_21BDD5148()
{
  v19 = v0;
  v1 = v0[70];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];

  (*(v3 + 8))(v2, v4);
  swift_unknownObjectRelease();

  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[51];
  (*(v6 + 104))(v5, *MEMORY[0x277D07F38], v7);
  LOBYTE(v4) = MEMORY[0x21CF01150](v5);
  (*(v6 + 8))(v5, v7);
  if (v4)
  {
    v8 = v0[50];
    v9 = *v8 == 0xD000000000000010 && 0x800000021BE55930 == v8[1];
    if (v9 || (sub_21BE2995C() & 1) != 0)
    {
      v10 = [objc_opt_self() defaultCenter];
      if (qword_27CDB4EC0 != -1)
      {
        swift_once();
      }

      [v10 postNotificationName:qword_27CDB7E70 object:0 userInfo:0 deliverImmediately:1];
    }
  }

  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v11 = v0[50];
  v13 = *v11;
  v12 = v11[1];
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = v13;
  *(inited + 56) = v12;

  v15 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v18, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_21BDD5448@<X0>(uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3E8, &qword_21BE4DDC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3F0, &qword_21BE4DDD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  *v10 = sub_21BE275DC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3F8, &unk_21BE4DDD8);
  sub_21BDD5704(v3, &v10[*(v14 + 44)]);
  v15 = type metadata accessor for StaticSelectableCellTemplate(0);
  v16 = v3 + *(v15 + 68);
  v17 = *v16;
  v18 = *(v16 + 1);
  v24[16] = v17;
  v25 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v19 = 0;
  if ((v24[15] & 1) == 0)
  {
    sub_21BBA3854(v3 + *(v15 + 20), v7, &unk_27CDB57F0, &qword_21BE328A0);
    v20 = sub_21BE25B9C();
    v19 = (*(*(v20 - 8) + 48))(v7, 1, v20) != 1;
    sub_21BB3A4CC(v7, &unk_27CDB57F0, &qword_21BE328A0);
  }

  KeyPath = swift_getKeyPath();
  sub_21BBB7D84(v10, v13, &qword_27CDBD3E8, &qword_21BE4DDC8);
  v22 = &v13[*(v11 + 36)];
  *v22 = v19;
  *(v22 + 1) = KeyPath;
  v22[16] = 0;
  sub_21BBB7D84(v13, a3, &qword_27CDBD3F0, &qword_21BE4DDD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD400, &qword_21BE4DE18);
  *(a3 + *(result + 36)) = 0;
  return result;
}

void sub_21BDD5704(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD38, &unk_21BE453B0);
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v59 = (&v55 - v7);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  v8 = MEMORY[0x28223BE20](v56);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD408, &qword_21BE4DE20);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v19 = *a1;
  v20 = a1[1];

  v61 = sub_21BDA6580(v19, v20);
  v60 = sub_21BE2771C();
  v21 = 1;
  v83 = 1;
  sub_21BDD5F30(a1, v84);
  *&v82[7] = v84[0];
  *&v82[23] = v84[1];
  *&v82[39] = v84[2];
  *&v82[55] = v84[3];
  v64 = v83;
  sub_21BE286AC();
  sub_21BE2725C();
  v22 = type metadata accessor for StaticSelectableCellTemplate(0);
  v23 = a1 + *(v22 + 68);
  v24 = *v23;
  v25 = *(v23 + 1);
  LOBYTE(v68) = v24;
  v69 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (LOBYTE(v66[0]) == 1)
  {
    sub_21BBA3854(a1 + *(v22 + 20), v13, &unk_27CDB57F0, &qword_21BE328A0);
    v26 = sub_21BE25B9C();
    v27 = (*(*(v26 - 8) + 48))(v13, 1, v26);
    sub_21BB3A4CC(v13, &unk_27CDB57F0, &qword_21BE328A0);
    if (v27 != 1)
    {
      v28 = v57;
      sub_21BE26EEC();
      *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)) = 257;
      v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36));
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
      v31 = *MEMORY[0x277CDF438];
      v32 = sub_21BE26E7C();
      (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
      *v29 = swift_getKeyPath();
      sub_21BE286BC();
      sub_21BE26F2C();
      v33 = (v28 + *(v56 + 36));
      v34 = v84[5];
      *v33 = v84[4];
      v33[1] = v34;
      v33[2] = v84[6];
      v35 = v58;
      sub_21BBA3854(v28, v58, &qword_27CDB5DF0, &unk_21BE33810);
      v36 = v59;
      *v59 = 0;
      *(v36 + 8) = 1;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD60, &qword_21BE45410);
      sub_21BBA3854(v35, v36 + *(v37 + 48), &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BB3A4CC(v28, &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BB3A4CC(v35, &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BBB7D84(v36, v18, &qword_27CDBAD38, &unk_21BE453B0);
      v21 = 0;
    }
  }

  (*(v62 + 7))(v18, v21, 1, v63);
  if (v61 == 16)
  {
    v38 = 0;
  }

  else
  {
    v38 = &unk_282D874A0;
  }

  v63 = v38;
  if (v61 == 16)
  {
    v39 = 0;
  }

  else
  {
    v39 = &unk_282D87470;
  }

  if (v61 == 16)
  {
    v40 = 0;
  }

  else
  {
    v40 = v61 | 0x600;
  }

  v41 = v65;
  sub_21BBA3854(v18, v65, &qword_27CDBD408, &qword_21BE4DE20);
  *a4 = v40;
  *(a4 + 8) = 0;
  *(a4 + 16) = v39;
  *(a4 + 24) = v38;
  *(a4 + 32) = 0;
  v42 = v60;
  v66[0] = v60;
  v66[1] = 0;
  v43 = v64;
  v67[0] = v64;
  *&v67[17] = *&v82[16];
  *&v67[33] = *&v82[32];
  *&v67[49] = *&v82[48];
  *&v67[64] = *&v82[63];
  *&v67[1] = *v82;
  *&v67[88] = v76;
  *&v67[104] = v77;
  *&v67[72] = v75;
  v62 = v18;
  *&v67[168] = v81;
  *&v67[152] = v80;
  *&v67[136] = v79;
  *&v67[120] = v78;
  v44 = *v67;
  *(a4 + 40) = v60;
  v45 = *&v67[64];
  *(a4 + 104) = *&v67[48];
  v46 = *&v67[16];
  *(a4 + 88) = *&v67[32];
  *(a4 + 72) = v46;
  *(a4 + 56) = v44;
  v47 = *&v67[128];
  *(a4 + 168) = *&v67[112];
  v48 = *&v67[80];
  *(a4 + 152) = *&v67[96];
  *(a4 + 136) = v48;
  *(a4 + 120) = v45;
  v49 = *&v67[144];
  v50 = *&v67[160];
  *(a4 + 232) = *&v67[176];
  *(a4 + 216) = v50;
  *(a4 + 200) = v49;
  *(a4 + 184) = v47;
  v51 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD410, &qword_21BE4DE28) + 64);
  sub_21BBA3854(v41, v51, &qword_27CDBD408, &qword_21BE4DE20);
  v52 = v39;
  v53 = v39;
  v54 = v63;
  sub_21BDD6E08(v40, 0, v52, v63);
  sub_21BBA3854(v66, &v68, &qword_27CDBD418, &unk_21BE4DE30);
  sub_21BB3A4CC(v62, &qword_27CDBD408, &qword_21BE4DE20);
  sub_21BB3A4CC(v41, &qword_27CDBD408, &qword_21BE4DE20);
  v68 = v42;
  v69 = 0;
  v70 = v43;
  v72 = *&v82[16];
  v73 = *&v82[32];
  *v74 = *&v82[48];
  *&v74[15] = *&v82[63];
  v71 = *v82;
  *&v74[23] = v75;
  *&v74[39] = v76;
  *&v74[55] = v77;
  *&v74[119] = v81;
  *&v74[103] = v80;
  *&v74[87] = v79;
  *&v74[71] = v78;
  sub_21BB3A4CC(&v68, &qword_27CDBD418, &unk_21BE4DE30);
  sub_21BDD6E54(v40, 0, v53, v54);
}

uint64_t sub_21BDD5F30@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21BB41FA4();

  v6 = sub_21BE27DBC();
  v8 = v7;
  v10 = v9;
  sub_21BE2832C();
  v11 = sub_21BE27D4C();
  v37 = v12;
  v36 = v13;
  v15 = v14;

  sub_21BBC7C7C(v6, v8, v10 & 1);

  if (*(a3 + *(type metadata accessor for StaticSelectableCellTemplate(0) + 32) + 8))
  {

    v16 = sub_21BE27DBC();
    v18 = v17;
    v20 = v19;
    sub_21BE27BEC();
    v21 = sub_21BE27D9C();
    v23 = v22;
    v35 = v15;
    v25 = v24;

    sub_21BBC7C7C(v16, v18, v20 & 1);

    sub_21BE2833C();
    v26 = sub_21BE27D4C();
    v28 = v27;
    LOBYTE(v18) = v29;
    v31 = v30;

    v32 = v25 & 1;
    v15 = v35;
    sub_21BBC7C7C(v21, v23, v32);

    v33 = v18 & 1;
    sub_21BBA4A38(v26, v28, v18 & 1);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v33 = 0;
    v31 = 0;
  }

  sub_21BBA4A38(v11, v37, v36 & 1);

  sub_21BC75900(v26, v28, v33, v31);
  sub_21BC75944(v26, v28, v33, v31);
  *a4 = v11;
  *(a4 + 8) = v37;
  *(a4 + 16) = v36 & 1;
  *(a4 + 24) = v15;
  *(a4 + 32) = v26;
  *(a4 + 40) = v28;
  *(a4 + 48) = v33;
  *(a4 + 56) = v31;
  sub_21BC75944(v26, v28, v33, v31);
  sub_21BBC7C7C(v11, v37, v36 & 1);
}

uint64_t sub_21BDD61B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3B0, &qword_21BE4DDA8);
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v34 = &v33 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3B8, &qword_21BE4DDB0);
  MEMORY[0x28223BE20](v36);
  v38 = &v33 - v4;
  v5 = type metadata accessor for StaticSelectableCellTemplate(0);
  v33 = *(v5 - 1);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3C0, &qword_21BE4DDB8);
  MEMORY[0x28223BE20](v37);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = *(v1 + v5[12] + 8);
  if (v12)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v32 = v12;
  }

  else
  {
    v15 = *(v1 + 8);
    type metadata accessor for ConfirmChildAgeViewModel();
    v16 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v32 = v15;
  }

  v17 = sub_21BE2599C();
  v19 = v18;

  v20 = *(v2 + v5[13]);
  if (v20)
  {
    sub_21BBA3854(v2 + v5[5], v11, &unk_27CDB57F0, &qword_21BE328A0);
    v21 = sub_21BE25B9C();
    if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
    {
      v22 = v20;
      sub_21BB3A4CC(v11, &unk_27CDB57F0, &qword_21BE328A0);
      sub_21BDD6CD4(v2, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = v37;
      sub_21BDD5448(&v8[*(v37 + 56)]);

      sub_21BC5E088(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      *(v8 + 1) = v22;
      v8[*(v23 + 60)] = 0;
      v24 = &v8[*(v23 + 64)];
      *v24 = 0;
      *(v24 + 1) = 0;
      v24[16] = 1;
      *v8 = 1;
      sub_21BBA3854(v8, v38, &qword_27CDBD3C0, &qword_21BE4DDB8);
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDBD3D8, &qword_27CDBD3C0, &qword_21BE4DDB8, byte_21BE40E18);
      sub_21BB3B038(&qword_27CDBD3E0, &qword_27CDBD3B0, &qword_21BE4DDA8, MEMORY[0x277CDF028]);
      sub_21BE2784C();
      return sub_21BB3A4CC(v8, &qword_27CDBD3C0, &qword_21BE4DDB8);
    }

    sub_21BB3A4CC(v11, &unk_27CDB57F0, &qword_21BE328A0);
  }

  sub_21BDD6CD4(v2, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v27 = swift_allocObject();
  v28 = sub_21BDD6D38(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  MEMORY[0x28223BE20](v28);
  *(&v33 - 4) = v2;
  *(&v33 - 3) = v17;
  v32 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3C8, &qword_21BE4DDC0);
  sub_21BB3B038(&qword_27CDBD3D0, &qword_27CDBD3C8, &qword_21BE4DDC0, MEMORY[0x277CDDB50]);
  v29 = v34;
  sub_21BE2843C();

  v30 = v35;
  v31 = v40;
  (*(v35 + 16))(v38, v29, v40);
  swift_storeEnumTagMultiPayload();
  sub_21BB3B038(&qword_27CDBD3D8, &qword_27CDBD3C0, &qword_21BE4DDB8, byte_21BE40E18);
  sub_21BB3B038(&qword_27CDBD3E0, &qword_27CDBD3B0, &qword_21BE4DDA8, MEMORY[0x277CDF028]);
  sub_21BE2784C();
  return (*(v30 + 8))(v29, v31);
}

double sub_21BDD6870(uint64_t a1)
{
  v2 = type metadata accessor for StaticSelectableCellTemplate(0);
  v3 = (a1 + *(v2 + 44));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v11 = v4;
  v12 = v5;
  v13 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  v7 = MEMORY[0x21CF036E0](&v10, v6);
  if ((v10 & 1) == 0)
  {
    v9 = *(a1 + *(v2 + 40));
    if (v9)
    {
      v9(v7);
    }

    return sub_21BDD4070();
  }

  return result;
}

uint64_t sub_21BDD6910@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for StaticSelectableCellTemplate(0);
  v7 = v6 - 8;
  v30 = *(v6 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD400, &qword_21BE4DE18);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD420, &qword_21BE4DE78);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  sub_21BDD5448(v12);
  sub_21BE286AC();
  sub_21BE2725C();
  sub_21BBB7D84(v12, v16, &qword_27CDBD400, &qword_21BE4DE18);
  v17 = &v16[*(v14 + 44)];
  v18 = v36;
  *(v17 + 4) = v35;
  *(v17 + 5) = v18;
  *(v17 + 6) = v37;
  v19 = v32;
  *v17 = v31;
  *(v17 + 1) = v19;
  v20 = v34;
  *(v17 + 2) = v33;
  *(v17 + 3) = v20;
  v21 = *(v7 + 80);
  sub_21BDD6CD4(a1, v9);
  v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v23 = swift_allocObject();
  sub_21BDD6D38(v9, v23 + v22);
  sub_21BBB7D84(v16, a4, &qword_27CDBD420, &qword_21BE4DE78);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD3C8, &qword_21BE4DDC0);
  v25 = *(v24 + 52);
  v26 = sub_21BE2934C();
  result = (*(*(v26 - 8) + 16))(a4 + v25, a1 + v21, v26);
  v28 = (a4 + *(v24 + 56));
  *v28 = sub_21BDD70A4;
  v28[1] = v23;
  return result;
}

void *sub_21BDD6BE8()
{
  type metadata accessor for StaticSelectableCellTemplate(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  result = sub_21BE283FC();
  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
    return sub_21BE2840C();
  }

  return result;
}

uint64_t sub_21BDD6CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticSelectableCellTemplate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BDD6D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticSelectableCellTemplate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21BDD6D9C()
{
  v1 = *(type metadata accessor for StaticSelectableCellTemplate(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BDD6870(v2);
}

double sub_21BDD6E08(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a2;
  }

  return result;
}

void sub_21BDD6E54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t objectdestroyTm_39()
{
  v1 = type metadata accessor for StaticSelectableCellTemplate(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_21BE25B9C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  MEMORY[0x21CF05D90](v2 + v1[7]);

  if (*(v2 + v1[10]))
  {
  }

  v6 = v1[18];
  v7 = sub_21BE2934C();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

void *sub_21BDD70A4()
{
  type metadata accessor for StaticSelectableCellTemplate(0);

  return sub_21BDD6BE8();
}

uint64_t sub_21BDD7114(uint64_t a1)
{
  v4 = *(type metadata accessor for StaticSelectableCellTemplate(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BDD42C0(a1, v6, v7, v1 + v5);
}

unint64_t sub_21BDD7204()
{
  result = qword_27CDBD428;
  if (!qword_27CDBD428)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDBD430, qword_21BE4DE98);
    v4[0] = sub_21BB3B038(&qword_27CDBD3D8, &qword_27CDBD3C0, &qword_21BE4DDB8, byte_21BE40E18);
    v4[1] = sub_21BB3B038(&qword_27CDBD3E0, &qword_27CDBD3B0, &qword_21BE4DDA8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBD428);
  }

  return result;
}

uint64_t sub_21BDD72F0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_21BDD7408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D85000];
  v6 = type metadata accessor for FAHostingController(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v35.receiver = v4;
  v35.super_class = v6;
  objc_msgSendSuper2(&v35, sel_viewDidLoad);
  v7 = *(v4 + *((*v5 & *v4) + 0x60));
  [v4 addChildViewController_];
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = [v7 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  [v9 addSubview_];

  result = [v7 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21BE397B0;
  result = [v7 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = result;
  v14 = [result topAnchor];

  result = [v4 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  v16 = [result topAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v12 + 32) = v17;
  result = [v7 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = result;
  v19 = [result bottomAnchor];

  result = [v4 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = result;
  v21 = [result bottomAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v12 + 40) = v22;
  result = [v7 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = result;
  v24 = [result leadingAnchor];

  result = [v4 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = result;
  v26 = [result leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v12 + 48) = v27;
  result = [v7 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = result;
  v29 = [result trailingAnchor];

  result = [v4 view];
  if (result)
  {
    v30 = result;
    v31 = objc_opt_self();
    v32 = [v30 trailingAnchor];

    v33 = [v29 constraintEqualToAnchor_];
    *(v12 + 56) = v33;
    sub_21BC47284();
    v34 = sub_21BE28C1C();

    [v31 activateConstraints_];

    return [v7 didMoveToParentViewController_];
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_21BDD786C(void *a1)
{
  v4 = a1;
  sub_21BDD7408(v4, v1, v2, v3);
}

double sub_21BDD78B4(char a1)
{
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v10 = type metadata accessor for FAHostingController(0, *((v5 & v3) + 0x50), *((v5 & v3) + 0x58), v9);
  v20.receiver = v1;
  v20.super_class = v10;
  objc_msgSendSuper2(&v20, sel_viewWillAppear_, a1 & 1);
  v12 = (v1 + *((*v4 & *v1) + 0x68));
  v13 = *v12;
  if (*v12)
  {
    v14 = v12[1];
    v15 = sub_21BE28DAC();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    sub_21BE28D7C();
    sub_21BB3D80C(v13, v14);
    sub_21BB3D80C(v13, v14);
    v16 = v1;
    v17 = sub_21BE28D6C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v13;
    v18[5] = v14;
    v18[6] = v16;
    sub_21BBA932C(0, 0, v8, &unk_21BE4DF18, v18);
    sub_21BB5AEC4(v13, v14);
  }

  return result;
}

uint64_t sub_21BDD7A9C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_21BE28D7C();
  v6[3] = sub_21BE28D6C();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_21BBAFDA8;

  return v11(a6);
}

void sub_21BDD7BB8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_21BDD78B4(a3);
}

void sub_21BDD7C0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_21BDD7E44();
}

id sub_21BDD7C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FAHostingController(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_21BDD7CEC(uint64_t *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  v5 = (a1 + *((*v2 & *a1) + 0x68));
  sub_21BB5AEC4(*v5, v5[1]);
  v6 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v7 = a1 + *((*v2 & *a1) + 0x70);

  return v6(v7);
}

uint64_t sub_21BDD7E74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BDD7A9C(a1, v4, v5, v6, v7, v8);
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21BDD7F78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_21BDD7FC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BDD8048()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_21BDD8188@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v14 = swift_allocBox();
  sub_21BDD8048();
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBEAC94();
  sub_21BE2864C();
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  sub_21BB3A35C((v1 + 7), v16);
  v15[0] = v4;
  v15[1] = v3;
  v15[2] = v6;
  v15[3] = v5;
  v15[4] = v7;
  v15[5] = v8;
  v15[6] = v9;
  v15[7] = sub_21BDD88C0;
  v15[8] = v14;
  v15[9] = 0;
  v16[5] = 0;

  v10 = v9;

  v11 = sub_21BE26E9C();
  LOBYTE(v9) = v12;
  sub_21BBC7A18(v15, a1);
  *(a1 + 128) = 1;
  *(a1 + 136) = v11;
  *(a1 + 144) = v9 & 1;
  sub_21BBC7A74(v15);

  return result;
}

uint64_t sub_21BDD82D8()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_21BDD841C@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v3 = swift_allocBox();
  sub_21BDD82D8();
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBEAC94();
  sub_21BE2864C();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_21BE2599C();
  v25 = v8;
  v26 = v7;

  v9 = [v5 &selRef:ObjCClassFromMetadata :0x800000021BE62010 launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
  v10 = sub_21BE2599C();
  v12 = v11;

  v27 = v10;
  v28 = v12;
  v13 = sub_21BE28B8C();
  v15 = v14;
  v16 = *v1;

  v17 = [v5 bundleForClass_];
  v18 = sub_21BE2599C();
  v20 = v19;

  sub_21BB3A35C((v1 + 1), v37);
  v27 = v26;
  v28 = v25;
  v29 = v13;
  v30 = v15;
  v31 = v16;
  v32 = sub_21BDD8910;
  v33 = v3;
  v34 = v18;
  v35 = v20;
  v36 = 0;
  v37[5] = 0;
  v21 = sub_21BE26E9C();
  v23 = v22;
  sub_21BBC7968(&v27, a1);
  *(a1 + 128) = 0;
  *(a1 + 136) = v21;
  *(a1 + 144) = v23 & 1;
  sub_21BBC79C4(&v27);

  return result;
}

double sub_21BDD86D0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - v4;
  v6 = swift_projectBox();
  (*(v3 + 16))(v5, v6, v2);
  sub_21BE2862C();
  (*(v3 + 8))(v5, v2);
  v7 = v10[3];
  swift_beginAccess();
  if (*(v7 + 21) == 1)
  {
    *(v7 + 21) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v7;
    LOBYTE(v10[-1]) = 1;
    v10[2] = v7;
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

unint64_t sub_21BDD8940()
{
  result = qword_27CDBD4C8;
  if (!qword_27CDBD4C8)
  {
    result = swift_getWitnessTable(aQyFt, &type metadata for BeneficiaryViewModifier, v0, v1);
    atomic_store(result, &qword_27CDBD4C8);
  }

  return result;
}

uint64_t sub_21BDD8994(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = sub_21BDD8940();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_21BDD8AA8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_21BE278EC();
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v30 = v6;
  v31 = v7;
  sub_21BB41FA4();

  v8 = sub_21BE27DBC();
  v10 = v9;
  v12 = v11;
  sub_21BE27CDC();
  v13 = sub_21BE27D9C();
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v8, v10, v12 & 1);

  v18 = sub_21BE27D3C();
  v20 = v19;
  LOBYTE(v8) = v21;
  v23 = v22;
  sub_21BBC7C7C(v13, v15, v17 & 1);

  v30 = v18;
  v31 = v20;
  v32 = v8 & 1;
  v33 = v23;
  sub_21BE278DC();
  sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v24 = v27;
  sub_21BE27ECC();
  (*(v28 + 8))(v5, v24);
  sub_21BBC7C7C(v18, v20, v8 & 1);
}

void *sub_21BDD8CDC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD698, &qword_21BE4E558);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD678, &qword_21BE4E538);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = *(v2 + 40);
  if (v11)
  {
    v38 = a1;
    v12 = *(v2 + 48);
    sub_21BBC7968(v2, &v44);
    v13 = swift_allocObject();
    v37 = v7;
    v36 = &v36;
    v14 = v49;
    *(v13 + 80) = v48;
    *(v13 + 96) = v14;
    v15 = v51;
    *(v13 + 112) = v50;
    *(v13 + 128) = v15;
    v16 = v45;
    *(v13 + 16) = v44;
    *(v13 + 32) = v16;
    v17 = v47;
    *(v13 + 48) = v46;
    *(v13 + 64) = v17;
    *(v13 + 144) = v11;
    *(v13 + 152) = v12;
    MEMORY[0x28223BE20](v13);
    *(&v36 - 2) = v2;
    sub_21BC5A604(v11, v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6A0, &qword_21BE4E570);
    v18 = sub_21BE278EC();
    v19 = sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v39 = MEMORY[0x277CE0BD8];
    v40 = v18;
    v41 = MEMORY[0x277CE0BC8];
    v42 = v19;
    swift_getOpaqueTypeConformance2();
    sub_21BE2843C();
    v20 = v37;
    (*(v8 + 16))(v6, v10, v37);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD688, &qword_21BE4E540);
    sub_21BB3B038(&qword_27CDBD670, &qword_27CDBD678, &qword_21BE4E538, MEMORY[0x277CDF028]);
    sub_21BB3B038(&qword_27CDBD680, &qword_27CDBD688, &qword_21BE4E540, protocol conformance descriptor for Link<A, B>);
    sub_21BE2784C();
    sub_21BB5AEC4(v11, v12);
    return (*(v8 + 8))(v10, v20);
  }

  else
  {
    sub_21BBC7968(v2, &v44);
    v22 = swift_allocObject();
    v23 = v49;
    v22[5] = v48;
    v22[6] = v23;
    v24 = v51;
    v22[7] = v50;
    v22[8] = v24;
    v25 = v45;
    v22[1] = v44;
    v22[2] = v25;
    v26 = v47;
    v22[3] = v46;
    v22[4] = v26;
    sub_21BBC7968(v2, &v44);
    v27 = swift_allocObject();
    v28 = v49;
    v27[5] = v48;
    v27[6] = v28;
    v29 = v51;
    v27[7] = v50;
    v27[8] = v29;
    v30 = v45;
    v27[1] = v44;
    v27[2] = v30;
    v31 = v47;
    v27[3] = v46;
    v27[4] = v31;
    v43 = 0;
    sub_21BE283EC();
    v32 = v39;
    v33 = v40;
    type metadata accessor for NavigationManager(0);
    sub_21BDE10A8(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
    v34 = sub_21BE26E9C();
    *v6 = &unk_21BE4E568;
    *(v6 + 1) = v22;
    *(v6 + 2) = sub_21BDE0BEC;
    *(v6 + 3) = v27;
    v6[32] = v32;
    *(v6 + 5) = v33;
    *(v6 + 6) = v34;
    v6[56] = v35 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD688, &qword_21BE4E540);
    sub_21BB3B038(&qword_27CDBD670, &qword_27CDBD678, &qword_21BE4E538, MEMORY[0x277CDF028]);
    sub_21BB3B038(&qword_27CDBD680, &qword_27CDBD688, &qword_21BE4E540, protocol conformance descriptor for Link<A, B>);
    return sub_21BE2784C();
  }
}

uint64_t sub_21BDD9268(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDD9300, v4, v3);
}

uint64_t sub_21BDD9300()
{

  if (qword_27CDB4E70 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  sub_21BC25DC8((v2 + 80));
  sub_21BB3A35C(v2 + 80, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_21BDD93BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE25FCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD638, &qword_21BE4E4F8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = sub_21BE2869C();
  v35 = v14;
  v36 = v13;
  sub_21BDD99C0(a1, &v53);
  v82 = v63;
  v83 = v64;
  v78 = v59;
  v79 = v60;
  v80 = v61;
  v81 = v62;
  v74 = v55;
  v75 = v56;
  v76 = v57;
  v77 = v58;
  v72 = v53;
  v73 = v54;
  v85[10] = v63;
  v85[11] = v64;
  v85[6] = v59;
  v85[7] = v60;
  v85[8] = v61;
  v85[9] = v62;
  v85[2] = v55;
  v85[3] = v56;
  v85[4] = v57;
  v85[5] = v58;
  v84 = v65;
  v86 = v65;
  v85[0] = v53;
  v85[1] = v54;
  sub_21BBA3854(&v72, &v39, &qword_27CDBD578, &qword_21BE4E3E0);
  sub_21BB3A4CC(v85, &qword_27CDBD578, &qword_21BE4E3E0);
  v96 = v81;
  v97 = v82;
  v98 = v83;
  v92 = v77;
  v93 = v78;
  v99 = v84;
  v94 = v79;
  v95 = v80;
  v89 = v74;
  v90 = v75;
  v91 = v76;
  v87 = v72;
  v88 = v73;
  *v12 = sub_21BE2771C();
  *(v12 + 1) = 0x4000000000000000;
  v12[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD640, &qword_21BE4E500);
  sub_21BDDA058(a1, &v12[*(v15 + 44)]);
  sub_21BB3A35C((a1 + 10), v67);
  LOBYTE(v39) = 0;
  sub_21BE283EC();
  BYTE8(v68) = v53;
  v69 = *(&v53 + 1);
  (*(v5 + 104))(v7, *MEMORY[0x277D07F38], v4);
  v16 = MEMORY[0x21CF01150](v7);
  (*(v5 + 8))(v7, v4);
  if (v16)
  {
    v17 = v67[0];
    v18 = v67[1];
    v19 = v68;
    v20 = v69;
  }

  else
  {
    sub_21BDE0954(v67);
    v20 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v70[0] = v17;
  v70[1] = v18;
  v70[2] = v19;
  v71 = v20;
  v21 = v37;
  sub_21BBA3854(v12, v37, &qword_27CDBD638, &qword_21BE4E4F8);
  sub_21BBA3854(v70, v38, &qword_27CDBD648, &qword_21BE4E508);
  v22 = v35;
  v23 = v36;
  *&v39 = v36;
  *(&v39 + 1) = v35;
  v50 = v97;
  v51 = v98;
  v46 = v93;
  v47 = v94;
  v48 = v95;
  v49 = v96;
  v42 = v89;
  v43 = v90;
  v44 = v91;
  v45 = v92;
  v40 = v87;
  v41 = v88;
  v24 = v97;
  v25 = v98;
  v26 = v95;
  *(a2 + 160) = v96;
  *(a2 + 176) = v24;
  *(a2 + 192) = v25;
  v27 = v46;
  v28 = v47;
  v29 = v44;
  *(a2 + 96) = v45;
  *(a2 + 112) = v27;
  v52 = v99;
  *(a2 + 208) = v99;
  *(a2 + 128) = v28;
  *(a2 + 144) = v26;
  v30 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v30;
  *(a2 + 64) = v43;
  *(a2 + 80) = v29;
  v31 = v40;
  *a2 = v39;
  *(a2 + 16) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD650, &qword_21BE4E510);
  sub_21BBA3854(v21, a2 + v32[12], &qword_27CDBD638, &qword_21BE4E4F8);
  v33 = a2 + v32[16];
  *v33 = 0;
  *(v33 + 8) = 256;
  sub_21BBA3854(v38, a2 + v32[20], &qword_27CDBD648, &qword_21BE4E508);
  sub_21BBA3854(&v39, &v53, &qword_27CDBD590, &qword_21BE4E3F8);
  sub_21BB3A4CC(v70, &qword_27CDBD648, &qword_21BE4E508);
  sub_21BB3A4CC(v12, &qword_27CDBD638, &qword_21BE4E4F8);
  sub_21BB3A4CC(v38, &qword_27CDBD648, &qword_21BE4E508);
  sub_21BB3A4CC(v21, &qword_27CDBD638, &qword_21BE4E4F8);
  *&v53 = v23;
  *(&v53 + 1) = v22;
  v64 = v97;
  v65 = v98;
  v66 = v99;
  v60 = v93;
  v61 = v94;
  v63 = v96;
  v62 = v95;
  v56 = v89;
  v57 = v90;
  v59 = v92;
  v58 = v91;
  v55 = v88;
  v54 = v87;
  return sub_21BB3A4CC(&v53, &qword_27CDBD590, &qword_21BE4E3F8);
}

uint64_t sub_21BDD99C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2838C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[15];
  v55 = v5;
  v56 = v6;
  if (v9)
  {
    swift_retain_n();
    sub_21BE2869C();
    sub_21BE26F2C();
    *(v87 + 6) = v95;
    *(&v87[1] + 6) = v96;
    *(&v87[2] + 6) = v97;
    v62 = v9;
    *v63 = 1;
    *&v63[2] = v87[0];
    *&v63[18] = v87[1];
    *&v63[34] = v87[2];
    *&v63[48] = *(&v97 + 1);
    v79 = v9;
    v80 = *v63;
    v81 = *&v63[16];
    v82 = *&v63[32];
    *&v83 = *(&v97 + 1);
    LOBYTE(v77[0]) = 0;
    BYTE8(v83) = 0;
    sub_21BBA3854(&v62, v87, &qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BDE078C();
    sub_21BDE0838();
    sub_21BE2784C();

    v10 = &qword_27CDBD610;
    v11 = &qword_21BE4E4D8;
  }

  else
  {
    v12 = a1[4];
    if (!v12)
    {
      v16 = 0;
      v60 = 0u;
      v61 = 0u;
      v57 = 255;
      v58 = 0u;
      v59 = 0u;
      v17 = a1[9];
      if (v17)
      {
        goto LABEL_6;
      }

LABEL_8:
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v33 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v32 = 0;
      v27 = 0;
      v29 = 0;
      v37 = 0;
      v31 = 0;
      goto LABEL_9;
    }

    v13 = v6;
    v14 = v12;
    sub_21BE2836C();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v13);
    v15 = sub_21BE283CC();

    (*(v5 + 8))(v8, v13);
    sub_21BE2869C();
    sub_21BE26F2C();
    *(v87 + 6) = v95;
    *(&v87[1] + 6) = v96;
    *(&v87[2] + 6) = v97;
    v62 = v15;
    *v63 = 1;
    *&v63[2] = v87[0];
    *&v63[18] = v87[1];
    *&v63[34] = v87[2];
    *&v63[48] = *(&v97 + 1);
    v79 = v15;
    v80 = *v63;
    v81 = *&v63[16];
    v82 = *&v63[32];
    *&v83 = *(&v97 + 1);
    LOBYTE(v77[0]) = 1;
    BYTE8(v83) = 1;
    sub_21BBA3854(&v62, v87, &qword_27CDB9C50, &qword_21BE41700);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BDE078C();
    sub_21BDE0838();
    sub_21BE2784C();

    v10 = &qword_27CDB9C50;
    v11 = &qword_21BE41700;
  }

  sub_21BB3A4CC(&v62, v10, v11);
  v60 = v87[1];
  v61 = v87[0];
  v58 = v87[3];
  v59 = v87[2];
  v16 = v88;
  v57 = v89;
  v17 = a1[9];
  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = v17;
  v19 = sub_21BE2869C();
  v52 = v20;
  v53 = v19;
  v21 = v18;
  v54 = v16;
  v51 = v21;
  sub_21BE2836C();
  v23 = v55;
  v22 = v56;
  (*(v55 + 104))(v8, *MEMORY[0x277CE0FE0], v56);
  v50 = sub_21BE283CC();

  (*(v23 + 8))(v8, v22);
  sub_21BE2869C();
  sub_21BE26F2C();
  LOBYTE(v87[0]) = 1;
  v24 = v99;
  v56 = v98;
  v25 = v100;
  v26 = v101;
  v28 = v102;
  v27 = v103;
  v29 = sub_21BE282DC();
  v30 = sub_21BE27B7C();

  v31 = 1;
  v32 = v28;
  v33 = v56;
  v34 = v50;
  v36 = v52;
  v35 = v53;
  v16 = v54;
  v37 = v30;
  v17 = 0x402A000000000000;
LABEL_9:
  v77[0] = v61;
  v77[1] = v60;
  v77[2] = v59;
  v78[0] = v58;
  *&v78[1] = v16;
  v38 = v57;
  BYTE8(v78[1]) = v57;
  v67 = v59;
  v68[0] = v58;
  *(v68 + 9) = *(v78 + 9);
  v65 = v61;
  v66 = v60;
  *&v79 = v35;
  *(&v79 + 1) = v36;
  v80 = v34;
  *&v81 = v31;
  *(&v81 + 1) = v33;
  *&v82 = v24;
  *(&v82 + 1) = v25;
  *&v83 = v26;
  *(&v83 + 1) = v32;
  *&v84 = v27;
  *(&v84 + 1) = v29;
  *&v85 = v37;
  *(&v85 + 1) = v17;
  v86 = v17;
  v71 = v81;
  v72 = v82;
  v69 = v79;
  v70 = v34;
  v76 = v17;
  v74 = v84;
  v75 = v85;
  v73 = v83;
  v39 = v61;
  v40 = v60;
  v41 = v68[0];
  *(a2 + 32) = v59;
  *(a2 + 48) = v41;
  *a2 = v39;
  *(a2 + 16) = v40;
  v42 = v68[1];
  v43 = v69;
  v44 = v71;
  *(a2 + 96) = v70;
  *(a2 + 112) = v44;
  *(a2 + 64) = v42;
  *(a2 + 80) = v43;
  v45 = v72;
  v46 = v73;
  v47 = v74;
  v48 = v75;
  *(a2 + 192) = v76;
  *(a2 + 160) = v47;
  *(a2 + 176) = v48;
  *(a2 + 128) = v45;
  *(a2 + 144) = v46;
  *&v87[0] = v35;
  *(&v87[0] + 1) = v36;
  v87[1] = v34;
  *&v87[2] = v31;
  *(&v87[2] + 1) = v33;
  *&v87[3] = v24;
  *(&v87[3] + 1) = v25;
  v88 = v26;
  v89 = v32;
  v90 = v27;
  v91 = v29;
  v92 = v37;
  v93 = v17;
  v94 = v17;
  sub_21BBA3854(v77, &v62, &qword_27CDBD600, &qword_21BE4E4C0);
  sub_21BBA3854(&v79, &v62, &qword_27CDBD608, &unk_21BE4E4C8);
  sub_21BB3A4CC(v87, &qword_27CDBD608, &unk_21BE4E4C8);
  v62 = v61;
  *v63 = v60;
  *&v63[16] = v59;
  *&v63[32] = v58;
  *&v63[48] = v16;
  v64 = v38;
  return sub_21BB3A4CC(&v62, &qword_27CDBD600, &qword_21BE4E4C0);
}

uint64_t sub_21BDDA058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD658, &qword_21BE4E518);
  MEMORY[0x28223BE20](v96);
  v94 = (&v86 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD660, &unk_21BE4E520);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v95 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = &v86 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EC8, &qword_21BE42428);
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F80, &qword_21BE4E530);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v93 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v101 = &v86 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C0, &qword_21BE40C00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v104 = &v86 - v16;
  v87 = a1;
  v17 = a1[1];
  v99 = *a1;
  v111 = v99;
  v112 = v17;
  v100 = sub_21BB41FA4();

  v18 = sub_21BE27DBC();
  v20 = v19;
  v22 = v21;
  sub_21BE27CDC();
  v23 = sub_21BE27D9C();
  v25 = v24;
  v27 = v26;

  sub_21BBC7C7C(v18, v20, v22 & 1);

  v28 = sub_21BE27D3C();
  v30 = v29;
  v32 = v31;
  sub_21BBC7C7C(v23, v25, v27 & 1);

  sub_21BE2832C();
  v33 = sub_21BE27D4C();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_21BBC7C7C(v28, v30, v32 & 1);

  v111 = v33;
  v112 = v35;
  v113 = v37 & 1;
  v115 = v39;
  sub_21BE2809C();
  sub_21BBC7C7C(v33, v35, v37 & 1);

  v40 = v87;
  v41 = v87[3];
  v111 = v87[2];
  v112 = v41;

  v42 = sub_21BE27DBC();
  v44 = v43;
  LOBYTE(v30) = v45;
  sub_21BE27BEC();
  v46 = sub_21BE27D9C();
  v48 = v47;
  v50 = v49;

  sub_21BBC7C7C(v42, v44, v30 & 1);

  sub_21BE2833C();
  v88 = sub_21BE27D4C();
  v100 = v51;
  v53 = v52;
  v89 = v54;

  sub_21BBC7C7C(v46, v48, v50 & 1);

  LODWORD(v99) = sub_21BE27B9C();
  sub_21BE26E0C();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v98 = v53 & 1;
  LOBYTE(v111) = v53 & 1;
  LOBYTE(v107) = 0;
  v63 = v90;
  sub_21BE285AC();
  v64 = sub_21BE27B7C();
  v65 = v91;
  v66 = v63 + *(v91 + 36);
  *v66 = v64;
  *(v66 + 8) = 0;
  *(v66 + 16) = 0;
  *(v66 + 24) = xmmword_21BE4E160;
  *(v66 + 40) = 0;
  v67 = v101;
  sub_21BDE0984(v63, v101);
  (*(v92 + 56))(v67, 0, 1, v65);
  v68 = v94;
  sub_21BDD8CDC(v94);
  v69 = v40[13];
  v70 = v40[14];
  __swift_project_boxed_opaque_existential_1Tm(v40 + 10, v69);
  v71 = (*(v70 + 32))(v69, v70);
  v111 = sub_21BC5A608(v71);
  v112 = v72;
  MEMORY[0x21CF03CA0](0x70757465732ELL, 0xE600000000000000);
  sub_21BDE09F4();
  v73 = v103;
  sub_21BE2809C();

  sub_21BB3A4CC(v68, &qword_27CDBD658, &qword_21BE4E518);
  v74 = v102;
  sub_21BBA3854(v104, v102, &qword_27CDB99C0, &qword_21BE40C00);
  v75 = v93;
  sub_21BBA3854(v67, v93, &qword_27CDB9F80, &qword_21BE4E530);
  v76 = v95;
  sub_21BBA3854(v73, v95, &qword_27CDBD660, &unk_21BE4E520);
  v77 = v97;
  sub_21BBA3854(v74, v97, &qword_27CDB99C0, &qword_21BE40C00);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD690, &unk_21BE4E548);
  v79 = (v77 + v78[12]);
  v80 = v88;
  *&v107 = v88;
  *(&v107 + 1) = v100;
  LOBYTE(v108) = v98;
  *(&v108 + 1) = v106[0];
  DWORD1(v108) = *(v106 + 3);
  v81 = v89;
  *(&v108 + 1) = v89;
  LOBYTE(v109) = v99;
  *(&v109 + 1) = *v105;
  DWORD1(v109) = *&v105[3];
  *(&v109 + 1) = v56;
  *v110 = v58;
  *&v110[8] = v60;
  *&v110[16] = v62;
  v110[24] = 0;
  v82 = v107;
  v83 = v108;
  *(v79 + 57) = *&v110[9];
  v84 = *v110;
  v79[2] = v109;
  v79[3] = v84;
  *v79 = v82;
  v79[1] = v83;
  sub_21BBA3854(v75, v77 + v78[16], &qword_27CDB9F80, &qword_21BE4E530);
  sub_21BBA3854(v76, v77 + v78[20], &qword_27CDBD660, &unk_21BE4E520);
  sub_21BBA3854(&v107, &v111, &qword_27CDB7940, &qword_21BE47630);
  sub_21BB3A4CC(v103, &qword_27CDBD660, &unk_21BE4E520);
  sub_21BB3A4CC(v101, &qword_27CDB9F80, &qword_21BE4E530);
  sub_21BB3A4CC(v104, &qword_27CDB99C0, &qword_21BE40C00);
  sub_21BB3A4CC(v76, &qword_27CDBD660, &unk_21BE4E520);
  sub_21BB3A4CC(v75, &qword_27CDB9F80, &qword_21BE4E530);
  v111 = v80;
  v112 = v100;
  v113 = v98;
  *v114 = v106[0];
  *&v114[3] = *(v106 + 3);
  v115 = v81;
  v116 = v99;
  *v117 = *v105;
  *&v117[3] = *&v105[3];
  v118 = v56;
  v119 = v58;
  v120 = v60;
  v121 = v62;
  v122 = 0;
  sub_21BB3A4CC(&v111, &qword_27CDB7940, &qword_21BE47630);
  return sub_21BB3A4CC(v102, &qword_27CDB99C0, &qword_21BE40C00);
}

uint64_t sub_21BDDA9C8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21BE275CC();
  *(a2 + 8) = 0x4029000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD630, &qword_21BE4E4F0);
  return sub_21BDD93BC(v2, a2 + *(v4 + 44));
}

uint64_t sub_21BDDAA38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD570, &qword_21BE4E3D8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = sub_21BE2869C();
  v12 = v11;
  sub_21BDDAD8C(a1, &v64);
  v45 = v74;
  v46 = v75;
  v41 = v70;
  v42 = v71;
  v43 = v72;
  v44 = v73;
  v37 = v66;
  v38 = v67;
  v39 = v68;
  v40 = v69;
  v35 = v64;
  v36 = v65;
  v48[10] = v74;
  v48[11] = v75;
  v48[6] = v70;
  v48[7] = v71;
  v48[8] = v72;
  v48[9] = v73;
  v48[2] = v66;
  v48[3] = v67;
  v48[4] = v68;
  v48[5] = v69;
  v47 = v76;
  v49 = v76;
  v48[0] = v64;
  v48[1] = v65;
  sub_21BBA3854(&v35, &v50, &qword_27CDBD578, &qword_21BE4E3E0);
  sub_21BB3A4CC(v48, &qword_27CDBD578, &qword_21BE4E3E0);
  v32 = v45;
  v33 = v46;
  v34 = v47;
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
  *v9 = sub_21BE2771C();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD580, &qword_21BE4E3E8);
  sub_21BDDB424(a1, &v9[*(v13 + 44)]);
  sub_21BBA3854(v9, v7, &qword_27CDBD570, &qword_21BE4E3D8);
  *&v50 = v10;
  *(&v50 + 1) = v12;
  v61 = v32;
  v62 = v33;
  v63 = v34;
  v57 = v28;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v53 = v24;
  v54 = v25;
  v55 = v26;
  v56 = v27;
  v51 = v22;
  v52 = v23;
  v14 = v32;
  *(a2 + 160) = v31;
  *(a2 + 176) = v14;
  *(a2 + 192) = v62;
  *(a2 + 208) = v63;
  v15 = v57;
  *(a2 + 96) = v56;
  *(a2 + 112) = v15;
  v16 = v59;
  *(a2 + 128) = v58;
  *(a2 + 144) = v16;
  v17 = v53;
  *(a2 + 32) = v52;
  *(a2 + 48) = v17;
  v18 = v55;
  *(a2 + 64) = v54;
  *(a2 + 80) = v18;
  v19 = v51;
  *a2 = v50;
  *(a2 + 16) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD588, &qword_21BE4E3F0);
  sub_21BBA3854(v7, a2 + *(v20 + 48), &qword_27CDBD570, &qword_21BE4E3D8);
  sub_21BBA3854(&v50, &v64, &qword_27CDBD590, &qword_21BE4E3F8);
  sub_21BB3A4CC(v9, &qword_27CDBD570, &qword_21BE4E3D8);
  sub_21BB3A4CC(v7, &qword_27CDBD570, &qword_21BE4E3D8);
  *&v64 = v10;
  *(&v64 + 1) = v12;
  v75 = v32;
  v76 = v33;
  v77 = v34;
  v71 = v28;
  v72 = v29;
  v73 = v30;
  v74 = v31;
  v67 = v24;
  v68 = v25;
  v69 = v26;
  v70 = v27;
  v65 = v22;
  v66 = v23;
  return sub_21BB3A4CC(&v64, &qword_27CDBD590, &qword_21BE4E3F8);
}

uint64_t sub_21BDDAD8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2838C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[15];
  v55 = v5;
  v56 = v6;
  if (v9)
  {
    swift_retain_n();
    sub_21BE2869C();
    sub_21BE26F2C();
    *(v87 + 6) = v95;
    *(&v87[1] + 6) = v96;
    *(&v87[2] + 6) = v97;
    v62 = v9;
    *v63 = 1;
    *&v63[2] = v87[0];
    *&v63[18] = v87[1];
    *&v63[34] = v87[2];
    *&v63[48] = *(&v97 + 1);
    v79 = v9;
    v80 = *v63;
    v81 = *&v63[16];
    v82 = *&v63[32];
    *&v83 = *(&v97 + 1);
    LOBYTE(v77[0]) = 0;
    BYTE8(v83) = 0;
    sub_21BBA3854(&v62, v87, &qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BDE078C();
    sub_21BDE0838();
    sub_21BE2784C();

    v10 = &qword_27CDBD610;
    v11 = &qword_21BE4E4D8;
  }

  else
  {
    v12 = a1[6];
    if (!v12)
    {
      v16 = 0;
      v60 = 0u;
      v61 = 0u;
      v57 = 255;
      v58 = 0u;
      v59 = 0u;
      v17 = a1[9];
      if (v17)
      {
        goto LABEL_6;
      }

LABEL_8:
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v33 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v32 = 0;
      v27 = 0;
      v29 = 0;
      v37 = 0;
      v31 = 0;
      goto LABEL_9;
    }

    v13 = v6;
    v14 = v12;
    sub_21BE2836C();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v13);
    v15 = sub_21BE283CC();

    (*(v5 + 8))(v8, v13);
    sub_21BE2869C();
    sub_21BE26F2C();
    *(v87 + 6) = v95;
    *(&v87[1] + 6) = v96;
    *(&v87[2] + 6) = v97;
    v62 = v15;
    *v63 = 1;
    *&v63[2] = v87[0];
    *&v63[18] = v87[1];
    *&v63[34] = v87[2];
    *&v63[48] = *(&v97 + 1);
    v79 = v15;
    v80 = *v63;
    v81 = *&v63[16];
    v82 = *&v63[32];
    *&v83 = *(&v97 + 1);
    LOBYTE(v77[0]) = 1;
    BYTE8(v83) = 1;
    sub_21BBA3854(&v62, v87, &qword_27CDB9C50, &qword_21BE41700);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD610, &qword_21BE4E4D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BDE078C();
    sub_21BDE0838();
    sub_21BE2784C();

    v10 = &qword_27CDB9C50;
    v11 = &qword_21BE41700;
  }

  sub_21BB3A4CC(&v62, v10, v11);
  v60 = v87[1];
  v61 = v87[0];
  v58 = v87[3];
  v59 = v87[2];
  v16 = v88;
  v57 = v89;
  v17 = a1[9];
  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = v17;
  v19 = sub_21BE2869C();
  v52 = v20;
  v53 = v19;
  v21 = v18;
  v54 = v16;
  v51 = v21;
  sub_21BE2836C();
  v23 = v55;
  v22 = v56;
  (*(v55 + 104))(v8, *MEMORY[0x277CE0FE0], v56);
  v50 = sub_21BE283CC();

  (*(v23 + 8))(v8, v22);
  sub_21BE2869C();
  sub_21BE26F2C();
  LOBYTE(v87[0]) = 1;
  v24 = v99;
  v56 = v98;
  v25 = v100;
  v26 = v101;
  v28 = v102;
  v27 = v103;
  v29 = sub_21BE282DC();
  v30 = sub_21BE27B7C();

  v31 = 1;
  v32 = v28;
  v33 = v56;
  v34 = v50;
  v36 = v52;
  v35 = v53;
  v16 = v54;
  v37 = v30;
  v17 = 0x402A000000000000;
LABEL_9:
  v77[0] = v61;
  v77[1] = v60;
  v77[2] = v59;
  v78[0] = v58;
  *&v78[1] = v16;
  v38 = v57;
  BYTE8(v78[1]) = v57;
  v67 = v59;
  v68[0] = v58;
  *(v68 + 9) = *(v78 + 9);
  v65 = v61;
  v66 = v60;
  *&v79 = v35;
  *(&v79 + 1) = v36;
  v80 = v34;
  *&v81 = v31;
  *(&v81 + 1) = v33;
  *&v82 = v24;
  *(&v82 + 1) = v25;
  *&v83 = v26;
  *(&v83 + 1) = v32;
  *&v84 = v27;
  *(&v84 + 1) = v29;
  *&v85 = v37;
  *(&v85 + 1) = v17;
  v86 = v17;
  v71 = v81;
  v72 = v82;
  v69 = v79;
  v70 = v34;
  v76 = v17;
  v74 = v84;
  v75 = v85;
  v73 = v83;
  v39 = v61;
  v40 = v60;
  v41 = v68[0];
  *(a2 + 32) = v59;
  *(a2 + 48) = v41;
  *a2 = v39;
  *(a2 + 16) = v40;
  v42 = v68[1];
  v43 = v69;
  v44 = v71;
  *(a2 + 96) = v70;
  *(a2 + 112) = v44;
  *(a2 + 64) = v42;
  *(a2 + 80) = v43;
  v45 = v72;
  v46 = v73;
  v47 = v74;
  v48 = v75;
  *(a2 + 192) = v76;
  *(a2 + 160) = v47;
  *(a2 + 176) = v48;
  *(a2 + 128) = v45;
  *(a2 + 144) = v46;
  *&v87[0] = v35;
  *(&v87[0] + 1) = v36;
  v87[1] = v34;
  *&v87[2] = v31;
  *(&v87[2] + 1) = v33;
  *&v87[3] = v24;
  *(&v87[3] + 1) = v25;
  v88 = v26;
  v89 = v32;
  v90 = v27;
  v91 = v29;
  v92 = v37;
  v93 = v17;
  v94 = v17;
  sub_21BBA3854(v77, &v62, &qword_27CDBD600, &qword_21BE4E4C0);
  sub_21BBA3854(&v79, &v62, &qword_27CDBD608, &unk_21BE4E4C8);
  sub_21BB3A4CC(v87, &qword_27CDBD608, &unk_21BE4E4C8);
  v62 = v61;
  *v63 = v60;
  *&v63[16] = v59;
  *&v63[32] = v58;
  *&v63[48] = v16;
  v64 = v38;
  return sub_21BB3A4CC(&v62, &qword_27CDBD600, &qword_21BE4E4C0);
}

uint64_t sub_21BDDB424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD598, &qword_21BE4E400);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - v6;
  *v7 = sub_21BE275DC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5A0, &qword_21BE4E408) + 44);
  v59 = v7;
  sub_21BDDBA18(a1, &v7[v8]);
  v9 = a1[3];
  if (v9)
  {
    v10 = a1[2];
    if (qword_27CDB4FF8 != -1)
    {
      v53 = a1[2];
      v54 = a1[3];
      swift_once();
      v10 = v53;
      v9 = v54;
    }

    v11 = qword_27CDD43A8;
    v63 = 0;
    sub_21BDDBE94(v10, v9, &v94);
    v74 = v104;
    v75 = v105;
    v70 = v100;
    v71 = v101;
    v72 = v102;
    v73 = v103;
    v66 = v96;
    v67 = v97;
    v68 = v98;
    v69 = v99;
    v64 = v94;
    v65 = v95;
    v88 = v104;
    v89 = v105;
    v84 = v100;
    v85 = v101;
    v86 = v102;
    v87 = v103;
    v80 = v96;
    v81 = v97;
    v82 = v98;
    v83 = v99;
    *&v76 = v106;
    *&v90 = v106;
    v78 = v94;
    v79 = v95;
    sub_21BBA3854(&v64, &v92, &qword_27CDBD5B8, &qword_21BE4E420);
    sub_21BB3A4CC(&v78, &qword_27CDBD5B8, &qword_21BE4E420);
    *(&v62[9] + 7) = v73;
    *(&v62[10] + 7) = v74;
    *(&v62[11] + 7) = v75;
    *(&v62[12] + 7) = v76;
    *(&v62[5] + 7) = v69;
    *(&v62[6] + 7) = v70;
    *(&v62[7] + 7) = v71;
    *(&v62[8] + 7) = v72;
    *(&v62[1] + 7) = v65;
    *(&v62[2] + 7) = v66;
    *(&v62[3] + 7) = v67;
    *(&v62[4] + 7) = v68;
    *(v62 + 7) = v64;
    *(&v93[9] + 1) = v62[9];
    *(&v93[10] + 1) = v62[10];
    *(&v93[11] + 1) = v62[11];
    v93[12] = *(&v62[11] + 15);
    *(&v93[5] + 1) = v62[5];
    *(&v93[6] + 1) = v62[6];
    *(&v93[7] + 1) = v62[7];
    *(&v93[8] + 1) = v62[8];
    *(&v93[1] + 1) = v62[1];
    *(&v93[2] + 1) = v62[2];
    *(&v93[3] + 1) = v62[3];
    *(&v93[4] + 1) = v62[4];
    *&v92 = v11;
    *(&v92 + 1) = 0x4008000000000000;
    LOBYTE(v93[0]) = v63;
    *(v93 + 1) = v62[0];
    nullsub_1();
    v104 = v93[9];
    v105 = v93[10];
    v106 = v93[11];
    v107 = v93[12];
    v100 = v93[5];
    v101 = v93[6];
    v102 = v93[7];
    v103 = v93[8];
    v96 = v93[1];
    v97 = v93[2];
    v98 = v93[3];
    v99 = v93[4];
    v94 = v92;
    v95 = v93[0];
  }

  else
  {
    sub_21BDDD458(&v94);
  }

  v12 = a1[4];
  v13 = a1[5];
  *&v92 = v12;
  *(&v92 + 1) = v13;
  sub_21BB41FA4();

  v14 = sub_21BE27DBC();
  v16 = v15;
  v18 = v17;
  sub_21BE27BEC();
  v19 = sub_21BE27D9C();
  v55 = v20;
  v56 = v19;
  v22 = v21;
  v24 = v23;

  sub_21BBC7C7C(v14, v16, v18 & 1);

  sub_21BE2833C();
  v25 = v56;
  v26 = sub_21BE27D4C();
  v28 = v27;
  v58 = v29;
  v57 = v30;

  sub_21BBC7C7C(v25, v22, v24 & 1);

  v31 = v59;
  v32 = v61;
  sub_21BBA3854(v59, v61, &qword_27CDBD598, &qword_21BE4E400);
  v74 = v104;
  v75 = v105;
  v76 = v106;
  v77 = v107;
  v70 = v100;
  v71 = v101;
  v72 = v102;
  v73 = v103;
  v66 = v96;
  v67 = v97;
  v68 = v98;
  v69 = v99;
  v64 = v94;
  v65 = v95;
  v33 = v32;
  v34 = v60;
  sub_21BBA3854(v33, v60, &qword_27CDBD598, &qword_21BE4E400);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5A8, &qword_21BE4E410);
  v36 = *(v35 + 48);
  v37 = v73;
  v88 = v74;
  v89 = v75;
  v38 = v75;
  v39 = v76;
  v90 = v76;
  v91 = v77;
  v40 = v70;
  v41 = v69;
  v84 = v70;
  v85 = v71;
  v42 = v71;
  v43 = v72;
  v86 = v72;
  v87 = v73;
  v44 = v67;
  v45 = v68;
  v82 = v68;
  v83 = v69;
  v46 = v66;
  v47 = v65;
  v80 = v66;
  v81 = v67;
  v48 = v64;
  v78 = v64;
  v79 = v65;
  v49 = (v34 + v36);
  v49[10] = v74;
  v49[11] = v38;
  v50 = v77;
  v49[12] = v39;
  v49[13] = v50;
  v49[6] = v40;
  v49[7] = v42;
  v49[8] = v43;
  v49[9] = v37;
  v49[2] = v46;
  v49[3] = v44;
  v49[4] = v45;
  v49[5] = v41;
  *v49 = v48;
  v49[1] = v47;
  v51 = v34 + *(v35 + 64);
  *v51 = v26;
  *(v51 + 8) = v28;
  LOBYTE(v34) = v58 & 1;
  *(v51 + 16) = v58 & 1;
  *(v51 + 24) = v57;
  sub_21BBA3854(&v78, &v92, &qword_27CDBD5B0, &qword_21BE4E418);
  sub_21BBA4A38(v26, v28, v34);

  sub_21BB3A4CC(v31, &qword_27CDBD598, &qword_21BE4E400);
  sub_21BBC7C7C(v26, v28, v34);

  v93[9] = v74;
  v93[10] = v75;
  v93[11] = v76;
  v93[12] = v77;
  v93[5] = v70;
  v93[6] = v71;
  v93[7] = v72;
  v93[8] = v73;
  v93[1] = v66;
  v93[2] = v67;
  v93[3] = v68;
  v93[4] = v69;
  v92 = v64;
  v93[0] = v65;
  sub_21BB3A4CC(&v92, &qword_27CDBD5B0, &qword_21BE4E418);
  return sub_21BB3A4CC(v61, &qword_27CDBD598, &qword_21BE4E400);
}

uint64_t sub_21BDDBA18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
  v3 = MEMORY[0x28223BE20](v48);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C0, &qword_21BE40C00);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v46 - v9;
  v10 = a1[1];
  v46 = *a1;
  v53 = v46;
  v54 = v10;
  sub_21BB41FA4();

  v11 = sub_21BE27DBC();
  v13 = v12;
  v15 = v14;
  sub_21BE27CDC();
  v16 = sub_21BE27D9C();
  v18 = v17;
  v20 = v19;

  sub_21BBC7C7C(v11, v13, v15 & 1);

  v21 = sub_21BE27D3C();
  v23 = v22;
  v25 = v24;
  sub_21BBC7C7C(v16, v18, v20 & 1);

  sub_21BE2832C();
  v26 = sub_21BE27D4C();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_21BBC7C7C(v21, v23, v25 & 1);

  v53 = v26;
  v54 = v28;
  LOBYTE(v21) = v30 & 1;
  v33 = v47;
  LOBYTE(v55) = v21;
  v56 = v32;
  sub_21BE2809C();
  sub_21BBC7C7C(v26, v28, v21);

  v34 = sub_21BE2837C();
  v35 = sub_21BE27BEC();
  KeyPath = swift_getKeyPath();
  v53 = v34;
  v54 = KeyPath;
  v55 = v35;
  sub_21BE27C4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E8, &qword_21BE4F170);
  sub_21BDE06D4();
  sub_21BE27EAC();

  if (qword_27CDB4E80 != -1)
  {
    swift_once();
  }

  v37 = qword_27CDD41F0;
  v38 = sub_21BE2826C();
  v39 = v49;
  *(v33 + *(v48 + 36)) = v38;
  v40 = v52;
  sub_21BBA3854(v52, v39, &qword_27CDB99C0, &qword_21BE40C00);
  v41 = v50;
  sub_21BBA3854(v33, v50, &qword_27CDBD5E0, &unk_21BE4E4A8);
  v42 = v51;
  sub_21BBA3854(v39, v51, &qword_27CDB99C0, &qword_21BE40C00);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5F8, &qword_21BE4E4B8);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_21BBA3854(v41, v42 + *(v43 + 64), &qword_27CDBD5E0, &unk_21BE4E4A8);
  sub_21BB3A4CC(v33, &qword_27CDBD5E0, &unk_21BE4E4A8);
  sub_21BB3A4CC(v40, &qword_27CDB99C0, &qword_21BE40C00);
  sub_21BB3A4CC(v41, &qword_27CDBD5E0, &unk_21BE4E4A8);
  return sub_21BB3A4CC(v39, &qword_27CDB99C0, &qword_21BE40C00);
}

uint64_t sub_21BDDBE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21BE2869C();
  v35 = v7;
  v36 = v6;
  sub_21BDDC24C(&v63);
  v41 = v67;
  v42 = v68;
  v43 = v69;
  v44 = v70;
  v37 = v63;
  v38 = v64;
  v39 = v65;
  v40 = v66;
  v45[0] = v63;
  v45[1] = v64;
  v45[2] = v65;
  v45[3] = v66;
  v45[4] = v67;
  v45[5] = v68;
  v45[6] = v69;
  v45[7] = v70;
  sub_21BBA3854(&v37, &v54, &qword_27CDBD5C0, &qword_21BE4E428);
  sub_21BB3A4CC(v45, &qword_27CDBD5C0, &qword_21BE4E428);
  v50 = v41;
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  *&v63 = a1;
  *(&v63 + 1) = a2;
  sub_21BB41FA4();

  v8 = sub_21BE27DBC();
  v10 = v9;
  v12 = v11;
  sub_21BE27BEC();
  v13 = sub_21BE27D9C();
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v8, v10, v12 & 1);

  sub_21BE27C4C();
  v18 = sub_21BE27D3C();
  v20 = v19;
  LOBYTE(v8) = v21;
  sub_21BBC7C7C(v13, v15, v17 & 1);

  sub_21BE2833C();
  v22 = sub_21BE27D4C();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_21BBC7C7C(v18, v20, v8 & 1);

  if (qword_27CDB4FF8 != -1)
  {
    swift_once();
  }

  v29 = qword_27CDD43A8;
  *&v54 = v36;
  *(&v54 + 1) = v35;
  v59 = v50;
  v60 = v51;
  v61 = v52;
  v62 = v53;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v30 = v52;
  *(a3 + 96) = v51;
  *(a3 + 112) = v30;
  *(a3 + 128) = v62;
  v31 = v57;
  *(a3 + 32) = v56;
  *(a3 + 48) = v31;
  v32 = v59;
  *(a3 + 64) = v58;
  *(a3 + 80) = v32;
  v33 = v55;
  *a3 = v54;
  *(a3 + 16) = v33;
  *(a3 + 144) = v22;
  *(a3 + 152) = v24;
  *(a3 + 160) = v26 & 1;
  *(a3 + 168) = v28;
  *(a3 + 176) = v29;
  *(a3 + 184) = sub_21BDDC570;
  *(a3 + 192) = 0;
  sub_21BBA3854(&v54, &v63, &qword_27CDBD5C8, &unk_21BE4E430);
  sub_21BBA4A38(v22, v24, v26 & 1);

  sub_21BBC7C7C(v22, v24, v26 & 1);

  *&v63 = v36;
  *(&v63 + 1) = v35;
  v68 = v50;
  v69 = v51;
  v70 = v52;
  v71 = v53;
  v64 = v46;
  v65 = v47;
  v66 = v48;
  v67 = v49;
  return sub_21BB3A4CC(&v63, &qword_27CDBD5C8, &unk_21BE4E430);
}

uint64_t sub_21BDDC24C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = [objc_opt_self() systemGreenColor];
  v6 = sub_21BE2826C();
  KeyPath = swift_getKeyPath();
  sub_21BE2869C();
  sub_21BE26F2C();
  if (qword_27CDB4FF8 != -1)
  {
    swift_once();
  }

  v8 = qword_27CDD43A8;
  v9 = sub_21BE2837C();
  sub_21BE27C2C();
  v10 = *MEMORY[0x277CE09A0];
  v11 = sub_21BE27C1C();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  v13 = sub_21BE27C5C();
  sub_21BB3A4CC(v4, &qword_27CDB8858, &qword_21BE3CA18);
  v14 = swift_getKeyPath();
  v15 = sub_21BE282FC();
  v16 = swift_getKeyPath();
  *&v25[0] = KeyPath;
  *(&v25[0] + 1) = v6;
  v17 = v22;
  v25[1] = v22;
  v25[2] = v23;
  v18 = v24;
  v25[3] = v24;
  *&v26 = v8;
  *(&v26 + 1) = sub_21BDDC544;
  v27 = 0;
  *(a1 + 32) = v23;
  *(a1 + 48) = v18;
  v19 = v25[0];
  *(a1 + 64) = v26;
  *a1 = v19;
  *(a1 + 16) = v17;
  *(a1 + 80) = 0;
  *(a1 + 88) = v9;
  *(a1 + 96) = v14;
  *(a1 + 104) = v13;
  *(a1 + 112) = v16;
  *(a1 + 120) = v15;
  sub_21BBA3854(v25, v28, &qword_27CDBD5D0, &qword_21BE4E4A0);
  v28[0] = KeyPath;
  v28[1] = v6;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v8;
  v33 = sub_21BDDC544;
  v34 = 0;
  return sub_21BB3A4CC(v28, &qword_27CDBD5D0, &qword_21BE4E4A0);
}

double sub_21BDDC570()
{
  sub_21BE2711C();
  v1 = v0;
  v2 = sub_21BE275AC();
  v3 = MEMORY[0x21CF022D0](v2);
  v4 = sub_21BE275BC();
  return (v1 - (v3 - MEMORY[0x21CF022D0](v4))) * 0.5;
}

uint64_t sub_21BDDC5C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v57 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD4E0, &qword_21BE4E360);
  MEMORY[0x28223BE20](v52);
  v4 = &v50 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD4E8, &qword_21BE4E368);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD4F0, &qword_21BE4E370);
  MEMORY[0x28223BE20](v56);
  v10 = &v50 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD4F8, &qword_21BE4E378);
  MEMORY[0x28223BE20](v54);
  v55 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD500, &qword_21BE4E380);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD508, &qword_21BE4E388);
  MEMORY[0x28223BE20](v53);
  v16 = &v50 - v15;
  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(a1 + 64);
    sub_21BBC7A18(a1, &v61);
    v19 = swift_allocObject();
    v51 = v10;
    v20 = v68;
    v21 = v66;
    *(v19 + 80) = v65;
    *(v19 + 96) = v21;
    *(v19 + 112) = v67;
    *(v19 + 128) = v20;
    v22 = v62;
    *(v19 + 16) = v61;
    *(v19 + 32) = v22;
    v23 = v64;
    *(v19 + 48) = v63;
    *(v19 + 64) = v23;
    *(v19 + 144) = v17;
    *(v19 + 152) = v18;
    MEMORY[0x28223BE20](v19);
    *(&v50 - 2) = a1;
    sub_21BC5A604(v17, v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD540, &qword_21BE4E3B0);
    sub_21BDDD374();
    sub_21BE2843C();
    (*(v6 + 16))(v4, v8, v5);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD560, &qword_21BE4E3C8);
    v24 = sub_21BE2721C();
    v25 = sub_21BB3B038(&qword_27CDBD530, &qword_27CDBD4E8, &qword_21BE4E368, MEMORY[0x277CDF028]);
    v26 = sub_21BDE10A8(&qword_27CDBC430, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    *&v61 = v5;
    *(&v61 + 1) = v24;
    *&v62 = v25;
    *(&v62 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    v27 = v51;
    sub_21BE2784C();
    (*(v6 + 8))(v8, v5);
    v28 = &qword_27CDBD4F0;
    v29 = &qword_21BE4E370;
    sub_21BBA3854(v27, v55, &qword_27CDBD4F0, &qword_21BE4E370);
    swift_storeEnumTagMultiPayload();
    sub_21BDDD0E4();
    sub_21BDDD228();
    sub_21BE2784C();
    sub_21BB5AEC4(v17, v18);
    v30 = v27;
  }

  else
  {
    sub_21BBC7A18(a1, &v61);
    v31 = swift_allocObject();
    v32 = v66;
    v31[5] = v65;
    v31[6] = v32;
    v33 = v68;
    v31[7] = v67;
    v31[8] = v33;
    v34 = v62;
    v31[1] = v61;
    v31[2] = v34;
    v35 = v64;
    v31[3] = v63;
    v31[4] = v35;
    sub_21BBC7A18(a1, &v61);
    v36 = swift_allocObject();
    v37 = v66;
    v36[5] = v65;
    v36[6] = v37;
    v38 = v68;
    v36[7] = v67;
    v36[8] = v38;
    v39 = v62;
    v36[1] = v61;
    v36[2] = v39;
    v40 = v64;
    v36[3] = v63;
    v36[4] = v40;
    v58 = 0;
    sub_21BE283EC();
    v41 = v59;
    v42 = v60;
    type metadata accessor for NavigationManager(0);
    sub_21BDE10A8(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
    v43 = sub_21BE26E9C();
    v59 = v44 & 1;
    *v14 = &unk_21BE4E398;
    *(v14 + 1) = v31;
    *(v14 + 2) = sub_21BDDD0DC;
    *(v14 + 3) = v36;
    v14[32] = v41;
    *(v14 + 5) = v42;
    *(v14 + 6) = v43;
    v14[56] = v44 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD510, &qword_21BE4E3A0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD518, &qword_21BE4E3A8);
    v46 = sub_21BE2721C();
    v47 = sub_21BB3B038(&qword_27CDBD520, &qword_27CDBD518, &qword_21BE4E3A8, protocol conformance descriptor for Link<A, B>);
    v48 = sub_21BDE10A8(&qword_27CDBC430, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    *&v61 = v45;
    *(&v61 + 1) = v46;
    *&v62 = v47;
    *(&v62 + 1) = v48;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    v28 = &qword_27CDBD508;
    v29 = &qword_21BE4E388;
    sub_21BBA3854(v16, v55, &qword_27CDBD508, &qword_21BE4E388);
    swift_storeEnumTagMultiPayload();
    sub_21BDDD0E4();
    sub_21BDDD228();
    sub_21BE2784C();
    v30 = v16;
  }

  return sub_21BB3A4CC(v30, v28, v29);
}

uint64_t sub_21BDDCDBC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_27CDB4E70 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_21BC25DC8((a1 + 80));
  return a2(v3);
}

uint64_t sub_21BDDCE40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275CC();
  *(a2 + 8) = 0x4029000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD568, &qword_21BE4E3D0);
  sub_21BDDAA38(a1, a2 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD540, &qword_21BE4E3B0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21BDDCEB4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDE1448, v4, v3);
}

uint64_t sub_21BDDCF4C@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_21BE275CC();
  *(a3 + 8) = 0x4029000000000000;
  *(a3 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD568, &qword_21BE4E3D0);
  sub_21BDDAA38(a2, a3 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD540, &qword_21BE4E3B0);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21BDDCFC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDDCEB4(a1, v1 + 16);
}

uint64_t objectdestroyTm_40()
{

  if (*(v0 + 72))
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  return swift_deallocObject();
}

unint64_t sub_21BDDD0E4()
{
  result = qword_27CDBD528;
  if (!qword_27CDBD528)
  {
    v7 = v0;
    v8 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD4F0, &qword_21BE4E370);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD4E8, &qword_21BE4E368);
    v4[3] = sub_21BE2721C();
    v5 = sub_21BB3B038(&qword_27CDBD530, &qword_27CDBD4E8, &qword_21BE4E368, MEMORY[0x277CDF028]);
    v6 = sub_21BDE10A8(&qword_27CDBC430, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBD528);
  }

  return result;
}

unint64_t sub_21BDDD228()
{
  result = qword_27CDBD538;
  if (!qword_27CDBD538)
  {
    v7 = v0;
    v8 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD508, &qword_21BE4E388);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD518, &qword_21BE4E3A8);
    v4[3] = sub_21BE2721C();
    v5 = sub_21BB3B038(&qword_27CDBD520, &qword_27CDBD518, &qword_21BE4E3A8, protocol conformance descriptor for Link<A, B>);
    v6 = sub_21BDE10A8(&qword_27CDBC430, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBD538);
  }

  return result;
}

unint64_t sub_21BDDD374()
{
  result = qword_27CDBD548;
  if (!qword_27CDBD548)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD540, &qword_21BE4E3B0);
    v4[0] = sub_21BB3B038(&qword_27CDBD550, &qword_27CDBD558, &unk_21BE4E3B8, MEMORY[0x277CE1138]);
    v4[1] = sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD548);
  }

  return result;
}

double sub_21BDDD458(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_21BDDD4A8()
{
  sub_21BDE0680();
  result = sub_21BE275EC();
  qword_27CDD43A8 = result;
  return result;
}

uint64_t sub_21BDDD4D8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD770, &qword_21BE4E7D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v55 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD778, &qword_21BE4E7E0);
  MEMORY[0x28223BE20](v61);
  v63 = &v55 - v7;
  v8 = sub_21BE278EC();
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD780, &qword_21BE4E7E8);
  MEMORY[0x28223BE20](v62);
  v16 = &v55 - v15;
  v17 = *(v2 + 56);
  if (v17)
  {
    v18 = *(v2 + 64);
    v58 = v16;
    v55 = v14;
    sub_21BC8777C(v2, &v68);
    v19 = swift_allocObject();
    v57 = v3;
    v20 = v72;
    *(v19 + 80) = v71;
    *(v19 + 96) = v20;
    v21 = v74;
    *(v19 + 112) = v73;
    *(v19 + 128) = v21;
    v22 = v69;
    *(v19 + 16) = v68;
    *(v19 + 32) = v22;
    v23 = *&v70[16];
    *(v19 + 48) = *v70;
    *(v19 + 64) = v23;
    *(v19 + 144) = v17;
    *(v19 + 152) = v18;
    v56 = v18;
    MEMORY[0x28223BE20](v19);
    *(&v55 - 2) = v2;
    sub_21BC5A604(v17, v18);

    sub_21BE2843C();
    v24 = v60;
    sub_21BE278DC();
    v25 = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
    v26 = sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v27 = v58;
    sub_21BE27ECC();
    (*(v59 + 8))(v24, v8);
    (*(v11 + 8))(v13, v10);
    v60 = v17;
    v28 = v55;
    v29 = v10;
    v30 = v62;
    (*(v55 + 16))(v63, v27, v62);
    swift_storeEnumTagMultiPayload();
    *&v68 = v29;
    *(&v68 + 1) = v8;
    *&v69 = v25;
    *(&v69 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD788, &qword_21BE4E800);
    v32 = sub_21BB3B038(&qword_27CDBD790, &qword_27CDBD788, &qword_21BE4E800, protocol conformance descriptor for Link<A, B>);
    *&v68 = v31;
    *(&v68 + 1) = v8;
    *&v69 = v32;
    *(&v69 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    sub_21BB5AEC4(v60, v56);
    return (*(v28 + 8))(v58, v30);
  }

  else
  {
    sub_21BC8777C(v2, &v68);
    v34 = swift_allocObject();
    v35 = v72;
    v34[5] = v71;
    v34[6] = v35;
    v36 = v74;
    v34[7] = v73;
    v34[8] = v36;
    v37 = v69;
    v34[1] = v68;
    v34[2] = v37;
    v38 = *&v70[16];
    v34[3] = *v70;
    v34[4] = v38;
    sub_21BC8777C(v2, &v68);
    v39 = swift_allocObject();
    v40 = v72;
    v39[5] = v71;
    v39[6] = v40;
    v41 = v74;
    v39[7] = v73;
    v39[8] = v41;
    v42 = v69;
    v39[1] = v68;
    v39[2] = v42;
    v43 = *&v70[16];
    v39[3] = *v70;
    v39[4] = v43;
    v75[0] = 0;
    sub_21BE283EC();
    v44 = v65;
    v45 = v8;
    v46 = *(&v65 + 1);
    type metadata accessor for NavigationManager(0);
    v58 = v10;
    sub_21BDE10A8(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
    v47 = sub_21BE26E9C();
    v75[0] = v48 & 1;
    *&v65 = &unk_21BE4E7F8;
    *(&v65 + 1) = v34;
    *&v66 = sub_21BDE1428;
    *(&v66 + 1) = v39;
    v67[0] = v44;
    *&v67[8] = v46;
    *&v67[16] = v47;
    v67[24] = v48 & 1;
    v49 = v60;
    sub_21BE278DC();
    v50 = v59;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD788, &qword_21BE4E800);
    v52 = sub_21BB3B038(&qword_27CDBD790, &qword_27CDBD788, &qword_21BE4E800, protocol conformance descriptor for Link<A, B>);
    v53 = sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    sub_21BE27ECC();
    (*(v50 + 8))(v49, v45);
    v68 = v65;
    v69 = v66;
    *v70 = *v67;
    *&v70[9] = *&v67[9];
    sub_21BB3A4CC(&v68, &qword_27CDBD788, &qword_21BE4E800);
    (*(v4 + 16))(v63, v6, v3);
    swift_storeEnumTagMultiPayload();
    v54 = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
    *&v65 = v58;
    *(&v65 + 1) = v45;
    *&v66 = v54;
    *(&v66 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    *&v65 = v51;
    *(&v65 + 1) = v45;
    *&v66 = v52;
    *(&v66 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21BDDDE40(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_27CDB4E70 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_21BC25DC8((a1 + 88));
  return a2(v3);
}

uint64_t sub_21BDDDEC4@<X0>(uint64_t a2@<X8>)
{
  sub_21BB41FA4();

  v3 = sub_21BE27DBC();
  v5 = v4;
  v7 = v6;
  sub_21BE27CDC();
  v8 = sub_21BE27D9C();
  v10 = v9;
  v12 = v11;

  sub_21BBC7C7C(v3, v5, v7 & 1);

  v13 = sub_21BE27D3C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_21BBC7C7C(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_21BDDDFE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDDE080, v4, v3);
}

uint64_t sub_21BDDE080()
{

  if (qword_27CDB4E70 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  sub_21BC25DC8((v2 + 88));
  sub_21BB3A35C(v2 + 88, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_21BDDE13C@<X0>(uint64_t a2@<X8>)
{
  sub_21BB41FA4();

  v3 = sub_21BE27DBC();
  v5 = v4;
  v7 = v6;
  sub_21BE27CDC();
  v8 = sub_21BE27D9C();
  v10 = v9;
  v12 = v11;

  sub_21BBC7C7C(v3, v5, v7 & 1);

  v13 = sub_21BE27D3C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_21BBC7C7C(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_21BDDE260@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE25FCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD730, &qword_21BE4E798);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v22[-v12];
  *v13 = sub_21BE275CC();
  *(v13 + 1) = 0x4029000000000000;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD738, &qword_21BE4E7A0);
  sub_21BDDE554(v2, &v13[*(v14 + 44)]);
  sub_21BB3A35C(v2 + 88, v23);
  v22[15] = 0;
  sub_21BE283EC();
  BYTE8(v24) = v26[0];
  v25 = *(&v26[0] + 1);
  (*(v5 + 104))(v7, *MEMORY[0x277D07F38], v4);
  LOBYTE(v2) = MEMORY[0x21CF01150](v7);
  (*(v5 + 8))(v7, v4);
  if (v2)
  {
    v15 = v23[0];
    v16 = v23[1];
    v17 = v24;
    v18 = v25;
  }

  else
  {
    sub_21BDE0954(v23);
    v18 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v26[0] = v15;
  v26[1] = v16;
  v26[2] = v17;
  v27 = v18;
  sub_21BBA3854(v13, v11, &qword_27CDBD730, &qword_21BE4E798);
  sub_21BBA3854(v26, v23, &qword_27CDBD648, &qword_21BE4E508);
  sub_21BBA3854(v11, a1, &qword_27CDBD730, &qword_21BE4E798);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD740, &qword_21BE4E7A8);
  v20 = a1 + *(v19 + 48);
  *v20 = 0;
  *(v20 + 8) = 256;
  sub_21BBA3854(v23, a1 + *(v19 + 64), &qword_27CDBD648, &qword_21BE4E508);
  sub_21BB3A4CC(v26, &qword_27CDBD648, &qword_21BE4E508);
  sub_21BB3A4CC(v13, &qword_27CDBD730, &qword_21BE4E798);
  sub_21BB3A4CC(v23, &qword_27CDBD648, &qword_21BE4E508);
  return sub_21BB3A4CC(v11, &qword_27CDBD730, &qword_21BE4E798);
}

uint64_t sub_21BDDE554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD748, &qword_21BE4E7B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = sub_21BE2838C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + 48);
  sub_21BE2836C();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
  v15 = sub_21BE283CC();

  (*(v11 + 8))(v13, v10);
  sub_21BE2869C();
  sub_21BE26F2C();
  LOBYTE(v26[0]) = 1;
  *&v23[3] = *&v23[27];
  *&v23[11] = *&v23[35];
  *&v23[19] = *&v23[43];
  *v9 = sub_21BE2771C();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD750, &qword_21BE4E7B8);
  sub_21BDDE8BC(a1, &v9[*(v16 + 44)]);
  sub_21BBA3854(v9, v7, &qword_27CDBD748, &qword_21BE4E7B0);
  v24 = v15;
  *v25 = 1;
  *&v25[2] = *v23;
  *&v25[18] = *&v23[8];
  *&v25[34] = *&v23[16];
  *&v25[48] = *&v23[23];
  v17 = *v25;
  v18 = *&v25[16];
  v19 = *&v25[32];
  *(a2 + 64) = *&v23[23];
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *a2 = v15;
  *(a2 + 16) = v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD758, &qword_21BE4E7C0);
  sub_21BBA3854(v7, a2 + *(v20 + 48), &qword_27CDBD748, &qword_21BE4E7B0);
  sub_21BBA3854(&v24, v26, &qword_27CDB9C50, &qword_21BE41700);
  sub_21BB3A4CC(v9, &qword_27CDBD748, &qword_21BE4E7B0);
  sub_21BB3A4CC(v7, &qword_27CDBD748, &qword_21BE4E7B0);
  v26[0] = v15;
  v26[1] = 0;
  v27 = 1;
  v28 = *v23;
  v29 = *&v23[8];
  *v30 = *&v23[16];
  *&v30[14] = *&v23[23];
  return sub_21BB3A4CC(v26, &qword_27CDB9C50, &qword_21BE41700);
}

uint64_t sub_21BDDE8BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD760, &qword_21BE4E7C8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v116 = &v107[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v122 = &v107[-v6];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EC8, &qword_21BE42428);
  v7 = MEMORY[0x28223BE20](v113);
  v123 = &v107[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v114 = &v107[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C0, &qword_21BE40C00);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v124 = &v107[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v125 = &v107[-v13];
  v117 = a1;
  v14 = a1[1];
  v120 = *a1;
  v132 = v120;
  v133 = v14;
  v15 = sub_21BB41FA4();

  v121 = v15;
  v16 = sub_21BE27DBC();
  v18 = v17;
  v20 = v19;
  sub_21BE27CDC();
  v21 = sub_21BE27D9C();
  v23 = v22;
  v25 = v24;

  sub_21BBC7C7C(v16, v18, v20 & 1);

  v26 = sub_21BE27D3C();
  v28 = v27;
  v30 = v29;
  sub_21BBC7C7C(v21, v23, v25 & 1);

  sub_21BE2832C();
  v31 = sub_21BE27D4C();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_21BBC7C7C(v26, v28, v30 & 1);

  v132 = v31;
  v133 = v33;
  v134 = v35 & 1;
  v136 = v37;
  sub_21BE2809C();
  v38 = v117;
  sub_21BBC7C7C(v31, v33, v35 & 1);

  v39 = v38[3];
  if (v39)
  {
    v132 = v38[2];
    v133 = v39;

    v40 = sub_21BE27DBC();
    v42 = v41;
    v44 = v43;
    sub_21BE27BEC();
    v45 = sub_21BE27D9C();
    v47 = v46;
    v49 = v48;

    sub_21BBC7C7C(v40, v42, v44 & 1);

    sub_21BE27C4C();
    v50 = sub_21BE27D3C();
    v52 = v51;
    v54 = v53;
    sub_21BBC7C7C(v45, v47, v49 & 1);

    sub_21BE2833C();
    v55 = sub_21BE27D4C();
    v57 = v56;
    LOBYTE(v47) = v58;
    v60 = v59;

    v61 = v50;
    v38 = v117;
    sub_21BBC7C7C(v61, v52, v54 & 1);

    v112 = v55;
    v111 = v57;
    v109 = v47 & 1;
    sub_21BBA4A38(v55, v57, v47 & 1);
    v110 = v60;
  }

  else
  {
    v112 = 0;
    v111 = 0;
    v109 = 0;
    v110 = 0;
  }

  v62 = v38[5];
  v132 = v38[4];
  v133 = v62;

  v63 = sub_21BE27DBC();
  v65 = v64;
  v67 = v66;
  sub_21BE27BEC();
  v68 = sub_21BE27D9C();
  v70 = v69;
  v72 = v71;

  sub_21BBC7C7C(v63, v65, v67 & 1);

  sub_21BE2833C();
  v120 = sub_21BE27D4C();
  v119 = v73;
  LOBYTE(v65) = v74;
  v121 = v75;

  sub_21BBC7C7C(v68, v70, v72 & 1);

  v118 = sub_21BE27B9C();
  sub_21BE26E0C();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  LOBYTE(v68) = v65 & 1;
  LOBYTE(v132) = v65 & 1;
  v108 = v65 & 1;
  LOBYTE(v128) = 0;
  v84 = v114;
  sub_21BE285AC();
  v85 = sub_21BE27B9C();
  sub_21BE26E0C();
  v86 = v84 + *(v113 + 36);
  *v86 = v85;
  *(v86 + 8) = v87;
  *(v86 + 16) = v88;
  *(v86 + 24) = v89;
  *(v86 + 32) = v90;
  *(v86 + 40) = 0;
  v91 = v122;
  sub_21BDDD4D8(v122);
  v92 = v124;
  sub_21BBA3854(v125, v124, &qword_27CDB99C0, &qword_21BE40C00);
  v93 = v123;
  sub_21BBA3854(v84, v123, &qword_27CDB9EC8, &qword_21BE42428);
  v94 = v116;
  sub_21BBA3854(v91, v116, &qword_27CDBD760, &qword_21BE4E7C8);
  v95 = v115;
  sub_21BBA3854(v92, v115, &qword_27CDB99C0, &qword_21BE40C00);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD768, &qword_21BE4E7D0);
  v97 = (v95 + v96[12]);
  v98 = v112;
  v99 = v111;
  *v97 = v112;
  v97[1] = v99;
  v100 = v109;
  v101 = v110;
  v97[2] = v109;
  v97[3] = v101;
  v102 = (v95 + v96[16]);
  *&v128 = v120;
  *(&v128 + 1) = v119;
  LOBYTE(v129) = v68;
  *(&v129 + 1) = *v127;
  DWORD1(v129) = *&v127[3];
  *(&v129 + 1) = v121;
  LOBYTE(v130) = v118;
  DWORD1(v130) = *&v126[3];
  *(&v130 + 1) = *v126;
  *(&v130 + 1) = v77;
  *v131 = v79;
  *&v131[8] = v81;
  *&v131[16] = v83;
  v131[24] = 0;
  v103 = v128;
  v104 = v129;
  *(v102 + 57) = *&v131[9];
  v105 = *v131;
  v102[2] = v130;
  v102[3] = v105;
  *v102 = v103;
  v102[1] = v104;
  sub_21BBA3854(v93, v95 + v96[20], &qword_27CDB9EC8, &qword_21BE42428);
  sub_21BBA3854(v94, v95 + v96[24], &qword_27CDBD760, &qword_21BE4E7C8);
  sub_21BC75900(v98, v99, v100, v101);
  sub_21BBA3854(&v128, &v132, &qword_27CDB7940, &qword_21BE47630);
  sub_21BC75944(v98, v99, v100, v101);
  sub_21BB3A4CC(v122, &qword_27CDBD760, &qword_21BE4E7C8);
  sub_21BB3A4CC(v84, &qword_27CDB9EC8, &qword_21BE42428);
  sub_21BB3A4CC(v125, &qword_27CDB99C0, &qword_21BE40C00);
  sub_21BB3A4CC(v94, &qword_27CDBD760, &qword_21BE4E7C8);
  sub_21BB3A4CC(v123, &qword_27CDB9EC8, &qword_21BE42428);
  v132 = v120;
  v133 = v119;
  v134 = v108;
  *v135 = *v127;
  *&v135[3] = *&v127[3];
  v136 = v121;
  v137 = v118;
  *v138 = *v126;
  *&v138[3] = *&v126[3];
  v139 = v77;
  v140 = v79;
  v141 = v81;
  v142 = v83;
  v143 = 0;
  sub_21BB3A4CC(&v132, &qword_27CDB7940, &qword_21BE47630);
  sub_21BC75944(v98, v99, v100, v101);
  return sub_21BB3A4CC(v124, &qword_27CDB99C0, &qword_21BE40C00);
}

void *sub_21BDDF288@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_21BE278EC();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6E0, &qword_21BE4E660);
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6E8, &qword_21BE4E668);
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6F0, &qword_21BE4E670);
  MEMORY[0x28223BE20](v58);
  v56 = &v48 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6F8, &qword_21BE4E678);
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = &v48 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD700, &qword_21BE4E680);
  MEMORY[0x28223BE20](v55);
  v57 = &v48 - v14;
  v15 = v1[3];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v15);
  if ((*(v16 + 24))(v15, v16))
  {
    swift_storeEnumTagMultiPayload();
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    v18 = sub_21BDE0EE4();
    v19 = sub_21BB41FA4();
    v20 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
    *&v61 = v58;
    *(&v61 + 1) = MEMORY[0x277D837D0];
    *&v62 = v17;
    *(&v62 + 1) = MEMORY[0x277CE0BD8];
    *&v63 = v18;
    *(&v63 + 1) = v19;
    v64 = v20;
    v65 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    return sub_21BE2784C();
  }

  else
  {
    sub_21BDE0DA0(v1, &v61);
    v22 = swift_allocObject();
    v23 = v62;
    *(v22 + 16) = v61;
    *(v22 + 32) = v23;
    *(v22 + 48) = v63;
    *(v22 + 64) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
    sub_21BDE0DE0();
    sub_21BE2843C();
    sub_21BE278DC();
    v24 = sub_21BB3B038(&qword_27CDBD710, &qword_27CDBD6E0, &qword_21BE4E660, MEMORY[0x277CDF028]);
    v25 = sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    sub_21BE27ECC();
    (v51[1])(v5, v3);
    (*(v50 + 8))(v8, v6);
    v26 = v1[3];
    v27 = v1[4];
    __swift_project_boxed_opaque_existential_1Tm(v1, v26);
    v28 = (*(v27 + 32))(v26, v27);
    *&v61 = sub_21BC5A608(v28);
    *(&v61 + 1) = v29;
    MEMORY[0x21CF03CA0](0x65736F6C632ELL, 0xE600000000000000);
    *&v61 = v6;
    *(&v61 + 1) = v3;
    *&v62 = v24;
    *(&v62 + 1) = v25;
    swift_getOpaqueTypeConformance2();
    sub_21BE2809C();

    (*(v52 + 8))(v11, v9);
    v30 = v1[3];
    v31 = v1[4];
    __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    sub_21BBE7DA8(v30, v31);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v34 = sub_21BE2599C();
    v36 = v35;
    v52 = v35;

    v68 = v34;
    v69 = v36;
    v37 = v2[6];
    v66 = *(v2 + 40);
    v67 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    v38 = sub_21BE2841C();
    v51 = &v48;
    LODWORD(v50) = v62;
    v39 = MEMORY[0x28223BE20](v38);
    MEMORY[0x28223BE20](v39);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93D0, &qword_21BE439B0);
    v40 = sub_21BDE0EE4();
    v41 = sub_21BB41FA4();
    v47 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
    v42 = v58;
    v43 = v53;
    v44 = v56;
    sub_21BE280EC();

    sub_21BB3A4CC(v44, &qword_27CDBD6F0, &qword_21BE4E670);
    v45 = v54;
    v46 = v59;
    (*(v54 + 16))(v57, v43, v59);
    swift_storeEnumTagMultiPayload();
    *&v61 = v42;
    *(&v61 + 1) = MEMORY[0x277D837D0];
    *&v62 = v49;
    *(&v62 + 1) = MEMORY[0x277CE0BD8];
    *&v63 = v40;
    *(&v63 + 1) = v41;
    v64 = v47;
    v65 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v45 + 8))(v43, v46);
  }
}

uint64_t sub_21BDDFC7C@<X0>(uint64_t a1@<X8>)
{
  sub_21BE2837C();
  sub_21BE27BEC();
  swift_getKeyPath();
  sub_21BE27C4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E8, &qword_21BE4F170);
  sub_21BDE06D4();
  sub_21BE27EAC();

  if (qword_27CDB4E80 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDD41F0;
  v3 = sub_21BE2826C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
  *(a1 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_21BDDFDAC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v41 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v41 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  sub_21BBE7DA8(v15, v16);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v20 = sub_21BE2599C();
  v22 = v21;

  v48 = v20;
  v49 = v22;
  sub_21BDE0DA0(a1, v46);
  v23 = swift_allocObject();
  v24 = v46[1];
  *(v23 + 16) = v46[0];
  *(v23 + 32) = v24;
  *(v23 + 48) = v46[2];
  *(v23 + 64) = v47;
  sub_21BB41FA4();
  sub_21BE2845C();
  v25 = [v18 bundleForClass_];
  v26 = sub_21BE2599C();
  v28 = v27;

  *&v46[0] = v26;
  *(&v46[0] + 1) = v28;
  v29 = v42;
  sub_21BE26DEC();
  v30 = sub_21BE26DFC();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v31 = v41;
  sub_21BE2844C();
  v32 = *(v6 + 16);
  v33 = v43;
  v34 = v14;
  v32(v43, v14, v5);
  v35 = v44;
  v36 = v31;
  v32(v44, v31, v5);
  v37 = v45;
  v32(v45, v33, v5);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E0, &qword_21BE3F4A0);
  v32(&v37[*(v38 + 48)], v35, v5);
  v39 = *(v6 + 8);
  v39(v36, v5);
  v39(v34, v5);
  v39(v35, v5);
  return (v39)(v33, v5);
}

uint64_t sub_21BDE0258(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v2);
  if (sub_21BBE7DA8(v2, v3))
  {
    if (qword_27CDB4E20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = off_27CDB59A8;
    v5 = v1[3];
    v6 = v1[4];
    __swift_project_boxed_opaque_existential_1Tm(v1, v5);

    v7 = sub_21BBE7CF8(v5, v6);
    v9 = v8;
    swift_getKeyPath();
    sub_21BDE10A8(&qword_27CDB59B8, type metadata accessor for ChecklistUserPreferences, protocol conformance descriptor for ChecklistUserPreferences);

    sub_21BE25F1C();

    swift_getKeyPath();
    sub_21BE25F3C();

    swift_beginAccess();
    v10 = v7;
    v1 = 0;
    v11 = sub_21BBBE5E4(v4 + 6, v10, v9);

    v12 = *(v4[6] + 16);
    if (v12 >= v11)
    {
      sub_21BBBE860(v11, v12);
      swift_endAccess();
      swift_getKeyPath();
      sub_21BE25F2C();

      sub_21BBBB83C();
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_27CDB4E20 != -1)
  {
LABEL_11:
    swift_once();
  }

  swift_beginAccess();
  v14 = v1[3];
  v15 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v14);

  v16 = sub_21BBE7CF8(v14, v15);
  sub_21BBBC2DC(v16, v17);

  if (qword_27CDB4E70 != -1)
  {
    swift_once();
  }

  return sub_21BC2685C(v1);
}

uint64_t sub_21BDE055C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  sub_21BBE7DA8(v3, v4);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

unint64_t sub_21BDE0680()
{
  result = qword_27CDBD5D8;
  if (!qword_27CDBD5D8)
  {
    result = swift_getWitnessTable(asc_21BE4E630, &_s10XAlignmentON, v0, v1);
    atomic_store(result, &qword_27CDBD5D8);
  }

  return result;
}

unint64_t sub_21BDE06D4()
{
  result = qword_27CDBD5F0;
  if (!qword_27CDBD5F0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD5E8, &qword_21BE4F170);
    v4 = sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430, MEMORY[0x277CE0868]);
    v5[0] = MEMORY[0x277CE1078];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27CDBD5F0);
  }

  return result;
}

unint64_t sub_21BDE078C()
{
  result = qword_27CDBD618;
  if (!qword_27CDBD618)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD610, &qword_21BE4E4D8);
    v4[0] = sub_21BDE08E4(&qword_27CDBD620, &qword_27CDBD628, &unk_21BE4E4E0, MEMORY[0x277CE11C0]);
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD618);
  }

  return result;
}

unint64_t sub_21BDE0838()
{
  result = qword_27CDB9C48;
  if (!qword_27CDB9C48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9C50, &qword_21BE41700);
    v4[0] = sub_21BDE08E4(&qword_27CDB90D0, &qword_27CDB90C8, &qword_21BE3E900, MEMORY[0x277CE1078]);
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9C48);
  }

  return result;
}

uint64_t sub_21BDE08E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4;
    v8[1] = MEMORY[0x277CE01B0];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BDE0984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EC8, &qword_21BE42428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BDE09F4()
{
  result = qword_27CDBD668;
  if (!qword_27CDBD668)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD658, &qword_21BE4E518);
    v4[0] = sub_21BB3B038(&qword_27CDBD670, &qword_27CDBD678, &qword_21BE4E538, MEMORY[0x277CDF028]);
    v4[1] = sub_21BB3B038(&qword_27CDBD680, &qword_27CDBD688, &qword_21BE4E540, protocol conformance descriptor for Link<A, B>);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBD668);
  }

  return result;
}

uint64_t sub_21BDE0AD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDD9268(a1, v1 + 16);
}

uint64_t objectdestroy_20Tm_0()
{

  if (*(v0 + 56))
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  return swift_deallocObject();
}

unint64_t sub_21BDE0C74()
{
  result = qword_27CDBD6B0;
  if (!qword_27CDBD6B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD6B8, &qword_21BE4E5C8);
    v4[0] = sub_21BDE0CF8();
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27CDBD6B0);
  }

  return result;
}

unint64_t sub_21BDE0CF8()
{
  result = qword_27CDBD6C0;
  if (!qword_27CDBD6C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD6C8, &qword_21BE4E5D0);
    v4[0] = sub_21BDDD0E4();
    v4[1] = sub_21BDDD228();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBD6C0);
  }

  return result;
}

unint64_t sub_21BDE0DE0()
{
  result = qword_27CDBD708;
  if (!qword_27CDBD708)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD5E8, &qword_21BE4F170);
    v4[3] = sub_21BDE06D4();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BB3B038(&qword_27CDBB680, qword_27CDBB688, &unk_21BE476A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD708);
  }

  return result;
}

unint64_t sub_21BDE0EE4()
{
  result = qword_27CDBD718;
  if (!qword_27CDBD718)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD6F0, &qword_21BE4E670);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD6E0, &qword_21BE4E660);
    v4[3] = sub_21BE278EC();
    v4[4] = sub_21BB3B038(&qword_27CDBD710, &qword_27CDBD6E0, &qword_21BE4E660, MEMORY[0x277CDF028]);
    v4[5] = sub_21BDE10A8(&qword_27CDBD6A8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BDE10A8(&qword_27CDB6790, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD718);
  }

  return result;
}

uint64_t objectdestroy_37Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BDE10A8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BDE10F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_21BDE1138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BDE11A8()
{
  result = qword_27CDBD720;
  if (!qword_27CDBD720)
  {
    v10[18] = v0;
    v10[19] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD728, &qword_21BE4E740);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD6F0, &qword_21BE4E670);
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    v6 = sub_21BDE0EE4();
    v7 = sub_21BB41FA4();
    v8 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
    v10[2] = v4;
    v10[3] = MEMORY[0x277D837D0];
    v10[4] = v5;
    v10[5] = MEMORY[0x277CE0BD8];
    v10[6] = v6;
    v10[7] = v7;
    v10[8] = v8;
    v10[9] = MEMORY[0x277CE0BC8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v10[0] = MEMORY[0x277CE1410];
    v10[1] = OpaqueTypeConformance2;
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v10);
    atomic_store(result, &qword_27CDBD720);
  }

  return result;
}

uint64_t sub_21BDE131C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BDDDFE8(a1, v1 + 16);
}

uint64_t objectdestroy_56Tm()
{

  if (*(v0 + 72))
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 104));

  return swift_deallocObject();
}

double sub_21BDE1480@<D0>(void *a1@<X0>, void *a3@<X2>, uint64_t a4@<X8>, char w3_0@<W3>)
{
  v9 = sub_21BE2770C();
  v27 = 0;
  sub_21BDE16C8(__src, a3, a1, w3_0);
  memcpy(__dst, __src, 0x1D1uLL);
  memcpy(v30, __src, 0x1D1uLL);
  sub_21BBA3854(__dst, v24, &qword_27CDBD7A8, &qword_21BE4E8B8);
  sub_21BB3A4CC(v30, &qword_27CDBD7A8, &qword_21BE4E8B8);
  memcpy(&v26[7], __dst, 0x1D1uLL);
  v10 = v27;
  sub_21BE2869C();
  sub_21BE2725C();
  *&v28[55] = *&__src[48];
  *&v28[71] = *&__src[64];
  *&v28[87] = *&__src[80];
  *&v28[103] = *&__src[96];
  *&v28[7] = *__src;
  *&v28[23] = *&__src[16];
  *&v28[39] = *&__src[32];
  LOBYTE(a3) = sub_21BE27B9C();
  v11 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != a3)
  {
    v11 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  *a4 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = v10;
  memcpy((a4 + 17), v26, 0x1D8uLL);
  v20 = *&v28[80];
  *(a4 + 553) = *&v28[64];
  *(a4 + 569) = v20;
  *(a4 + 585) = *&v28[96];
  *(a4 + 600) = *&v28[111];
  v21 = *&v28[16];
  *(a4 + 489) = *v28;
  *(a4 + 505) = v21;
  result = *&v28[32];
  v23 = *&v28[48];
  *(a4 + 521) = *&v28[32];
  *(a4 + 537) = v23;
  *(a4 + 608) = v11;
  *(a4 + 616) = v13;
  *(a4 + 624) = v15;
  *(a4 + 632) = v17;
  *(a4 + 640) = v19;
  *(a4 + 648) = 0;
  return result;
}

uint64_t *sub_21BDE16C8@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X2>, void *a3@<X0>, char a5@<W3>)
{
  v7 = [a2 profilePictureForFamilyMember:a3 pictureDiameter:240.0];
  if (v7)
  {
    v8 = v7;
    v9 = sub_21BE25BFC();
    v49 = v10;
    v50 = v9;

    v48 = 0;
    v47 = 0x4054000000000000;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 2;
  }

  sub_21BE2869C();
  sub_21BE26F2C();
  v44 = v103;
  v45 = v101;
  v40 = v102;
  v41 = v104;
  v42 = v106;
  v43 = v105;
  v63 = 1;
  v62 = v102;
  v61 = v104;
  v54 = sub_21BE2770C();
  LOBYTE(v84) = 1;
  v55 = sub_21BE275DC();
  LOBYTE(v80) = 0;
  sub_21BDE1DA8(a5 & 1, &v95, a3);
  v72 = *&v97[96];
  v73 = *&v97[112];
  v74 = *&v97[128];
  v68 = *&v97[32];
  v69 = *&v97[48];
  v70 = *&v97[64];
  v71 = *&v97[80];
  v64 = v95;
  v65 = v96;
  v66 = *v97;
  v67 = *&v97[16];
  v76[8] = *&v97[96];
  v76[9] = *&v97[112];
  v76[10] = *&v97[128];
  v76[4] = *&v97[32];
  v76[5] = *&v97[48];
  v76[6] = *&v97[64];
  v76[7] = *&v97[80];
  v76[0] = v95;
  v76[1] = v96;
  v75 = *&v97[144];
  v77 = *&v97[144];
  v76[2] = *v97;
  v76[3] = *&v97[16];
  sub_21BBA3854(&v64, __src, &qword_27CDBD7B0, &qword_21BE4E8C0);
  sub_21BB3A4CC(v76, &qword_27CDBD7B0, &qword_21BE4E8C0);
  *&v59[135] = v72;
  *&v59[151] = v73;
  *&v59[167] = v74;
  *&v59[71] = v68;
  *&v59[87] = v69;
  *&v59[103] = v70;
  *&v59[119] = v71;
  *&v59[7] = v64;
  *&v59[23] = v65;
  *&v59[39] = v66;
  *&v59[183] = v75;
  *&v59[55] = v67;
  v52 = v84;
  v53 = v80;
  sub_21BE2868C();
  sub_21BE26F2C();
  *&v60[6] = v107[0];
  *&v60[22] = v107[1];
  *&v60[38] = v107[2];
  *&v95 = sub_21BDB53B8();
  *(&v95 + 1) = v11;
  sub_21BB41FA4();
  v12 = sub_21BE27DBC();
  v14 = v13;
  v16 = v15;
  sub_21BE27CAC();
  v17 = sub_21BE27D9C();
  v19 = v18;
  v21 = v20;

  sub_21BBC7C7C(v12, v14, v16 & 1);

  sub_21BE2833C();
  *&v39 = sub_21BE27D4C();
  *(&v39 + 1) = v22;
  v24 = v23;
  v51 = v25;

  sub_21BBC7C7C(v17, v19, v21 & 1);

  v38 = sub_21BE27B8C();
  sub_21BE26E0C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v95) = v24 & 1;
  __src[0] = v54;
  __src[1] = 0;
  LOBYTE(__src[2]) = v52;
  *(&__src[2] + 1) = *v78;
  HIDWORD(__src[2]) = *&v78[3];
  __src[3] = v55;
  __src[4] = 0x4014000000000000;
  LOBYTE(__src[5]) = v53;
  *(&__src[9] + 1) = *&v59[32];
  *(&__src[11] + 1) = *&v59[48];
  *(&__src[5] + 1) = *v59;
  *(&__src[7] + 1) = *&v59[16];
  *(&__src[17] + 1) = *&v59[96];
  *(&__src[19] + 1) = *&v59[112];
  *(&__src[13] + 1) = *&v59[64];
  *(&__src[15] + 1) = *&v59[80];
  *(&__src[26] + 2) = *&v59[169];
  *(&__src[23] + 1) = *&v59[144];
  *(&__src[25] + 1) = *&v59[160];
  *(&__src[21] + 1) = *&v59[128];
  *(&__src[32] + 2) = *&v60[32];
  *(&__src[28] + 2) = *v60;
  *(&__src[30] + 2) = *&v60[16];
  __src[34] = *&v60[46];
  memcpy(&v56[6], __src, 0x118uLL);
  v80 = v39;
  LOBYTE(v81) = v24 & 1;
  *(&v81 + 1) = *v58;
  DWORD1(v81) = *&v58[3];
  *(&v81 + 1) = v51;
  LOBYTE(v82) = v38;
  *(&v82 + 1) = *v57;
  DWORD1(v82) = *&v57[3];
  *(&v82 + 1) = v27;
  *v83 = v29;
  *&v83[8] = v31;
  *&v83[16] = v33;
  v83[24] = 0;
  v34 = v47;
  *a1 = v50;
  a1[1] = v49;
  a1[2] = v47;
  a1[3] = v47;
  *(a1 + 32) = v48;
  a1[5] = 0;
  *(a1 + 48) = 1;
  a1[7] = v45;
  *(a1 + 64) = v40;
  a1[9] = v44;
  *(a1 + 80) = v41;
  a1[11] = v43;
  a1[12] = v42;
  *(a1 + 52) = 257;
  memcpy(a1 + 106, v56, 0x11EuLL);
  v35 = *v83;
  *(a1 + 53) = v82;
  *(a1 + 55) = v35;
  *(a1 + 449) = *&v83[9];
  v36 = v81;
  *(a1 + 49) = v80;
  *(a1 + 51) = v36;
  v84 = v39;
  v85 = v24 & 1;
  *v86 = *v58;
  *&v86[3] = *&v58[3];
  v87 = v51;
  v88 = v38;
  *&v89[3] = *&v57[3];
  *v89 = *v57;
  v90 = v27;
  v91 = v29;
  v92 = v31;
  v93 = v33;
  v94 = 0;
  sub_21BDE2268(v50, v49, v34, v34, v48);
  sub_21BBA3854(__src, &v95, &qword_27CDBD7B8, &unk_21BE4E8C8);
  sub_21BBA3854(&v80, &v95, &qword_27CDB7940, &qword_21BE47630);
  sub_21BB3A4CC(&v84, &qword_27CDB7940, &qword_21BE47630);
  *&v97[137] = *&v59[128];
  v98 = *&v59[144];
  *v99 = *&v59[160];
  *&v99[9] = *&v59[169];
  *&v97[73] = *&v59[64];
  *&v97[89] = *&v59[80];
  *&v97[105] = *&v59[96];
  *&v97[121] = *&v59[112];
  *&v97[9] = *v59;
  *&v97[25] = *&v59[16];
  *&v97[41] = *&v59[32];
  *&v97[57] = *&v59[48];
  *v100 = *&v60[32];
  *&v99[25] = *v60;
  v95 = v54;
  LOBYTE(v96) = v52;
  *(&v96 + 1) = *v78;
  DWORD1(v96) = *&v78[3];
  *(&v96 + 1) = v55;
  *v97 = 0x4014000000000000;
  v97[8] = v53;
  *&v99[41] = *&v60[16];
  *&v100[14] = *&v60[46];
  sub_21BB3A4CC(&v95, &qword_27CDBD7B8, &unk_21BE4E8C8);
  return sub_21BDE227C(v50, v49, v34, v34, v48);
}

uint64_t sub_21BDE1DA8@<X0>(char a1@<W3>, uint64_t a2@<X8>, void *a3@<X0>)
{
  *&v55 = sub_21BDE2290(a3);
  *(&v55 + 1) = v3;
  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE27C7C();
  v9 = sub_21BE27D9C();
  v11 = v10;
  v13 = v12;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  sub_21BE27C2C();
  v14 = sub_21BE27D3C();
  v16 = v15;
  LOBYTE(v4) = v17;
  sub_21BBC7C7C(v9, v11, v13 & 1);

  sub_21BE2832C();
  v18 = sub_21BE27D4C();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_21BBC7C7C(v14, v16, v4 & 1);

  if (a1)
  {
    v34 = sub_21BE2770C();
    v44 = 1;
    sub_21BDE2194(&v55);
    v41 = v59;
    v42 = v60;
    v43[0] = v61[0];
    *(v43 + 10) = *(v61 + 10);
    v37 = v55;
    v38 = v56;
    v39 = v57;
    v40 = v58;
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v48 = v58;
    v49 = v59;
    v50 = v60;
    v51[0] = v61[0];
    *(v51 + 10) = *(v61 + 10);
    sub_21BBA3854(&v37, &v53, &qword_27CDBD7C8, &unk_21BE4E8E0);
    sub_21BB3A4CC(&v45, &qword_27CDBD7C8, &unk_21BE4E8E0);
    *&v36[71] = v41;
    *&v36[87] = v42;
    *&v36[103] = v43[0];
    *&v36[113] = *(v43 + 10);
    *&v36[7] = v37;
    *&v36[23] = v38;
    *&v36[39] = v39;
    *&v36[55] = v40;
    *&v54[65] = *&v36[64];
    *&v54[49] = *&v36[48];
    *&v54[33] = *&v36[32];
    *&v54[17] = *&v36[16];
    *&v54[113] = *&v36[112];
    *&v54[97] = *&v36[96];
    *&v54[81] = *&v36[80];
    v53 = v34;
    v54[0] = v44;
    v54[129] = BYTE9(v43[1]);
    *&v54[1] = *v36;
    nullsub_1();
    v61[0] = *&v54[80];
    v61[1] = *&v54[96];
    v62 = *&v54[112];
    v63 = *&v54[128];
    v57 = *&v54[16];
    v58 = *&v54[32];
    v59 = *&v54[48];
    v60 = *&v54[64];
    v55 = v53;
    v56 = *v54;
  }

  else
  {
    sub_21BDE2464(&v55);
  }

  v25 = v60;
  *&v54[80] = v61[0];
  *&v54[96] = v61[1];
  v26 = v61[1];
  *&v54[112] = v62;
  v28 = v56;
  *&v54[16] = v57;
  v27 = v57;
  *&v54[32] = v58;
  v29 = v58;
  *&v54[48] = v59;
  v30 = v59;
  *&v54[64] = v60;
  v53 = v55;
  *v54 = v56;
  v51[0] = v61[0];
  v51[1] = v61[1];
  v51[2] = v62;
  v47 = v57;
  v48 = v58;
  v49 = v59;
  v50 = v60;
  v45 = v55;
  v31 = v55;
  v46 = v56;
  *(a2 + 128) = v61[0];
  *(a2 + 144) = v26;
  *(a2 + 160) = v62;
  *(a2 + 64) = v27;
  *(a2 + 80) = v29;
  *(a2 + 96) = v30;
  *(a2 + 112) = v25;
  *&v54[128] = v63;
  v44 = v22 & 1;
  v52 = v63;
  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v24;
  *(a2 + 176) = v63;
  *(a2 + 32) = v31;
  *(a2 + 48) = v28;
  sub_21BBA4A38(v18, v20, v22 & 1);

  sub_21BBA3854(&v45, &v37, &qword_27CDBD7C0, &qword_21BE4E8D8);
  sub_21BB3A4CC(&v53, &qword_27CDBD7C0, &qword_21BE4E8D8);
  sub_21BBC7C7C(v18, v20, v22 & 1);
}

double sub_21BDE2194@<D0>(uint64_t a2@<X8>)
{
  sub_21BE2869C();
  sub_21BE26F2C();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 1536;
  *(a2 + 24) = 0;
  *(a2 + 32) = &unk_282D874D0;
  *(a2 + 40) = &unk_282D87500;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = v4;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  result = *&v8;
  *(a2 + 104) = v8;
  *(a2 + 120) = 257;
  return result;
}

uint64_t sub_21BDE2268(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 2)
  {
    return sub_21BBBEE74(result, a2);
  }

  return result;
}

uint64_t sub_21BDE227C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 2)
  {
    return sub_21BBBEF94(result, a2);
  }

  return result;
}

uint64_t sub_21BDE2290(void *a1)
{
  v2 = [a1 fullName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21BE28A0C();
    v6 = v5;

    if ([a1 isMe])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21BE32770;
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_21BBBEFE8();
      *(v7 + 32) = v4;
      *(v7 + 40) = v6;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = objc_opt_self();

      v10 = [v9 bundleForClass_];
      sub_21BE2599C();

      v4 = sub_21BE289DC();
    }
  }

  else
  {
    v11 = [a1 inviteEmail];
    if (v11)
    {
      v12 = v11;
      v4 = sub_21BE28A0C();
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

double sub_21BDE2464(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_21BDE2484()
{
  result = qword_27CDBD7D0;
  if (!qword_27CDBD7D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD7D8, &qword_21BE4E8F0);
    v4[0] = sub_21BDE2510();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD7D0);
  }

  return result;
}

unint64_t sub_21BDE2510()
{
  result = qword_27CDBD7E0;
  if (!qword_27CDBD7E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD7E8, &qword_21BE4E8F8);
    v4[0] = sub_21BDE259C();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD7E0);
  }

  return result;
}

unint64_t sub_21BDE259C()
{
  result = qword_27CDBD7F0;
  if (!qword_27CDBD7F0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD7F8, &unk_21BE4E900);
    result = swift_getWitnessTable(MEMORY[0x277CE1198], v3, v0, v1);
    atomic_store(result, &qword_27CDBD7F0);
  }

  return result;
}

uint64_t FamilyNavigationHost.init(usesNavigationStack:initialPath:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = type metadata accessor for FamilyNavigationHost(0, a5, a6, a4);
  v13 = *(v12 + 40);
  *(a7 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  swift_storeEnumTagMultiPayload();
  v14 = *(v12 + 44);
  *(a7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationManager(0);
  swift_allocObject();
  result = NavigationManager.init(usesNavigationStack:path:)(a1, a2);
  *a7 = result;
  a7[1] = 0;
  a7[2] = a3;
  a7[3] = a4;
  return result;
}

double sub_21BDE2714@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BDE3AFC(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  *a2 = *(v3 + 24);

  return result;
}

uint64_t sub_21BDE2800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD8B8, qword_21BE4EA80);
  sub_21BE283FC();
  return v1;
}

uint64_t sub_21BDE2850()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD8B8, qword_21BE4EA80);
  sub_21BE2841C();
  return v1;
}

uint64_t sub_21BDE28A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21BBA3854(v2 + *(a1 + 40), &v15 - v10, &qword_27CDB68C0, &qword_21BE4E940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21BE2693C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_21BE28FEC();
    v14 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21BDE2AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21BBA3854(v2 + *(a1 + 44), &v15 - v10, &unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21BE2690C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_21BE28FEC();
    v14 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t FamilyNavigationHost.init(navigationManager:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = type metadata accessor for FamilyNavigationHost(0, a4, a5, a4);
  v11 = *(v10 + 40);
  *(a6 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  swift_storeEnumTagMultiPayload();
  v12 = *(v10 + 44);
  *(a6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  result = swift_storeEnumTagMultiPayload();
  *a6 = a1;
  a6[1] = 0;
  a6[2] = a2;
  a6[3] = a3;
  return result;
}

uint64_t FamilyNavigationHost.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = *(a1 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](a1);
  v68 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE2693C();
  v61 = v5;
  v71 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v67 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationManager(255);
  v11 = *(a1 + 24);
  v12 = sub_21BDE3AFC(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  v76 = v8;
  v77 = v10;
  v13 = v8;
  v51 = v8;
  v55 = v10;
  v78 = v11;
  v79 = v12;
  v52 = v11;
  v14 = v12;
  v54 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = OpaqueTypeMetadata2;
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v53 = &v49 - v16;
  v76 = v13;
  v77 = v10;
  v78 = v11;
  v79 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = OpaqueTypeConformance2;
  v58 = sub_21BDE3AFC(&qword_27CDBD800, MEMORY[0x277D402D0], MEMORY[0x277D402D8]);
  v76 = OpaqueTypeMetadata2;
  v77 = v5;
  v78 = OpaqueTypeConformance2;
  v79 = v58;
  v62 = MEMORY[0x277CE0E30];
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = *(v18 - 8);
  v63 = v18;
  v64 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v50 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v57 = &v49 - v22;
  v49 = *(v2 + 16);
  v23 = sub_21BDE2850();
  v25 = v24;
  v27 = v26;
  swift_getKeyPath();
  v76 = v23;
  v77 = v25;
  v78 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD808, &qword_21BE4E9A8);
  sub_21BE2855C();

  v29 = v73;
  v28 = v74;
  v30 = v75;

  v31 = v56;
  v49(v29, v28, v30);

  sub_21BDE2800();
  v32 = v53;
  v33 = v51;
  v34 = v52;
  sub_21BE27EEC();

  (*(v65 + 8))(v31, v33);
  v35 = v67;
  sub_21BDE28A4(a1, v67);
  v37 = v68;
  v36 = v69;
  (*(v69 + 16))(v68, v2, a1);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v33;
  *(v39 + 24) = v34;
  (*(v36 + 32))(v39 + v38, v37, a1);
  v40 = v50;
  v42 = v60;
  v41 = v61;
  v43 = v59;
  v44 = v58;
  sub_21BE281BC();

  (*(v71 + 8))(v35, v41);
  (*(v66 + 8))(v32, v42);
  v76 = v42;
  v77 = v41;
  v78 = v43;
  v79 = v44;
  swift_getOpaqueTypeConformance2();
  v45 = v57;
  v46 = v63;
  sub_21BD37338();
  v47 = *(v64 + 8);
  v47(v40, v46);
  sub_21BD37338();
  return (v47)(v45, v46);
}

double sub_21BDE3450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v29 = sub_21BE2693C();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE2690C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v19 = type metadata accessor for FamilyNavigationHost(0, a4, a5, v18);
  v27 = a3;
  sub_21BDE2AA8(v19, v17);
  (*(v12 + 104))(v15, *MEMORY[0x277D40278], v11);
  sub_21BDE3AFC(&qword_27CDB66C8, MEMORY[0x277D40290], MEMORY[0x277D402C8]);
  sub_21BE28BDC();
  sub_21BE28BDC();
  v20 = *(v12 + 8);
  v20(v15, v11);
  v20(v17, v11);
  if (v31 == v30)
  {
    v22 = sub_21BDE2800();
    v23 = v29;
    (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v29);
    v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v25 = swift_allocObject();
    (*(v8 + 32))(v25 + v24, v10, v23);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v27 - 4) = v22;
    *(&v27 - 3) = sub_21BDE3B44;
    *(&v27 - 2) = v25;
    v31 = v22;
    sub_21BDE3AFC(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BDE37EC(uint64_t a1)
{
  sub_21BDE3BB4();
  sub_21BDE3C08();
  sub_21BC177EC();
  return sub_21BE2692C();
}

double sub_21BDE384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for FamilyNavigationHost(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_21BDE3450(a1, a2, v10, v7, v8);
}

void sub_21BDE392C(uint64_t a1)
{
  sub_21BDE3A98(319, &qword_27CDBD898, type metadata accessor for NavigationManager, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_21BC41568();
    if (v2 <= 0x3F)
    {
      sub_21BDE3A98(319, &qword_27CDBD8A0, MEMORY[0x277D402D0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_21BDE3A98(319, &qword_27CDB6908, MEMORY[0x277D40290], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BDE3A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21BDE3AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BDE3B44(uint64_t a1)
{
  sub_21BE2693C();

  return sub_21BDE37EC(a1);
}

unint64_t sub_21BDE3BB4()
{
  result = qword_27CDBD8A8;
  if (!qword_27CDBD8A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyLinkDestination, &type metadata for AnyLinkDestination, v0, v1);
    atomic_store(result, &qword_27CDBD8A8);
  }

  return result;
}

unint64_t sub_21BDE3C08()
{
  result = qword_27CDBD8B0;
  if (!qword_27CDBD8B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyLinkDestination, &type metadata for AnyLinkDestination, v0, v1);
    atomic_store(result, &qword_27CDBD8B0);
  }

  return result;
}

uint64_t sub_21BDE3C5C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21BE27B9C();
  result = sub_21BE271CC();
  *a2 = result;
  *(a2 + 8) = v3;
  return result;
}

double sub_21BDE3C90@<D0>(_OWORD *a1@<X8>)
{
  sub_21BDE4C8C(v1, v5);
  sub_21BDE4CC4();
  sub_21BDE4D18();
  sub_21BE2784C();
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  a1[2] = v6[0];
  result = *(v6 + 10);
  *(a1 + 42) = *(v6 + 10);
  return result;
}

_BYTE *sub_21BDE3DB4()
{
  type metadata accessor for ICloudPlusViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result[OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_shouldAddSpinner] = 1;
  return result;
}

uint64_t sub_21BDE3DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDE4EEC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BDE3E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDE4EEC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BDE3EBC(uint64_t a1)
{
  sub_21BDE4EEC();
  sub_21BE27ABC();
  __break(1u);
}

void sub_21BDE3EE4(uint64_t a1@<X8>)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v6 = sub_21BCE6070(0x535F44554F4C4349, 0xEE00454741524F54, v13[1]);

  if (v6)
  {
    v7 = [v6 actionURLString];
    if (v7)
    {
      v8 = v7;
      sub_21BE28A0C();

      sub_21BE25B7C();
    }

    else
    {
      sub_21BE2978C();
      __break(1u);
    }
  }

  else
  {
    sub_21BE261BC();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21BB35000, v9, v10, "No iCloud subscription found in service store", v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v12 = sub_21BE25B9C();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_21BDE431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_21BE26A4C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v4[7] = swift_task_alloc();
  v6 = sub_21BE25B9C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  sub_21BE28D7C();
  v4[11] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v4[12] = v8;
  v4[13] = v7;

  return MEMORY[0x2822009F8](sub_21BDE44A4, v8, v7);
}

uint64_t sub_21BDE44A4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_21BDE3EE4(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[7];
    v5 = v0[3];

    sub_21BC12FE4(v4);
    [v5 dismissViewControllerAnimated:1 completion:0];
    sub_21BE261BC();
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FDC();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v6, v7, "No iCloud subscription service in Service Store", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);

    v13 = v0[1];

    return v13();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    if (qword_280BD79D8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v15 = v0[2];
    if (v15)
    {
      v16 = v0[3];
      type metadata accessor for IcloudPlusFamilyFlow();
      v17 = swift_allocObject();
      v0[14] = v17;
      *(v17 + 16) = v15;
      *(v16 + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = v17;

      v18 = swift_task_alloc();
      v0[15] = v18;
      *v18 = v0;
      v18[1] = sub_21BDE47E8;
      v19 = v0[10];
      v20 = v0[3];

      return sub_21BBB7ED0(v20, v19);
    }

    else
    {
      return sub_21BE2978C();
    }
  }
}

uint64_t sub_21BDE47E8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21BDE492C, v3, v2);
}

uint64_t sub_21BDE492C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

id sub_21BDE4B18(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ICloudPlusViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21BDE4B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BDE431C(a1, v4, v5, v6);
}

unint64_t sub_21BDE4CC4()
{
  result = qword_27CDBD8C8;
  if (!qword_27CDBD8C8)
  {
    result = swift_getWitnessTable(byte_21BE34438, &type metadata for IcloudPlusIsSetupCell, v0, v1);
    atomic_store(result, &qword_27CDBD8C8);
  }

  return result;
}

unint64_t sub_21BDE4D18()
{
  result = qword_27CDBD8D0;
  if (!qword_27CDBD8D0)
  {
    result = swift_getWitnessTable(aQF_1, &type metadata for IcloudPlusNotSetupCell, v0, v1);
    atomic_store(result, &qword_27CDBD8D0);
  }

  return result;
}

unint64_t sub_21BDE4D7C()
{
  result = qword_27CDBD8D8;
  if (!qword_27CDBD8D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD8E0, &qword_21BE4EC78);
    v4[0] = sub_21BDE4CC4();
    v4[1] = sub_21BDE4D18();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBD8D8);
  }

  return result;
}

unint64_t sub_21BDE4E08()
{
  result = qword_27CDBD8E8;
  if (!qword_27CDBD8E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD8F0, &qword_21BE4EC80);
    v4[0] = sub_21BDE4E94();
    v4[1] = MEMORY[0x277CE0880];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD8E8);
  }

  return result;
}

unint64_t sub_21BDE4E94()
{
  result = qword_27CDBD8F8;
  if (!qword_27CDBD8F8)
  {
    result = swift_getWitnessTable(a1F_0, &type metadata for ICloudPlusHost, v0, v1);
    atomic_store(result, &qword_27CDBD8F8);
  }

  return result;
}

unint64_t sub_21BDE4EEC()
{
  result = qword_27CDBD900;
  if (!qword_27CDBD900)
  {
    result = swift_getWitnessTable(asc_21BE4ECD8, &type metadata for ICloudPlusHost, v0, v1);
    atomic_store(result, &qword_27CDBD900);
  }

  return result;
}

id sub_21BDE4F40()
{
  v1 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE25B2C();
  v20[0] = 0;
  v7 = [v1 isApplicationAvailableToOpenURL:v6 error:v20];

  if (v7)
  {
    v8 = v20[0];
  }

  else
  {
    v9 = v20[0];
    v10 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE2614C();
    v11 = v10;
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FDC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_21BB35000, v12, v13, "Error checking application availability: %@", v14, 0xCu);
      sub_21BC9E984(v15);
      MEMORY[0x21CF05C50](v15, -1, -1);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

uint64_t sub_21BDE51A0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_21BE29ACC();
    sub_21BC5C62C(a1);
    sub_21BE28ABC();

    v4 = sub_21BE29B0C();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v9 = 0x696D694C6D6D6F63;
            v8 = 0xEE006D6574497374;
            break;
          case 2:
            v9 = 0xD000000000000013;
            v8 = 0x800000021BE543D0;
            break;
          case 3:
            v9 = 0xD000000000000014;
            v8 = 0x800000021BE543F0;
            break;
          case 4:
            v9 = 0x6E6F697461636F6CLL;
            v8 = 0xEC0000006D657449;
            break;
          case 5:
            v9 = 0xD000000000000013;
            v8 = 0x800000021BE54420;
            break;
          case 6:
            v9 = 0x69636966656E6562;
            v8 = 0xEF6D657449797261;
            break;
          case 7:
            v8 = 0xEE006D6574497375;
            v9 = 0x6C5064756F6C4369;
            break;
          case 8:
            v8 = 0xE800000000000000;
            v9 = 0x6D657449656D6F68;
            break;
          case 9:
            v9 = 0xD000000000000013;
            v8 = 0x800000021BE54460;
            break;
          case 0xA:
            v9 = 0x736143656C707061;
            v8 = 0xED00006D65744968;
            break;
          case 0xB:
            v9 = 0x49746361746E6F63;
            v8 = 0xEB000000006D6574;
            break;
          case 0xC:
            v9 = 0xD000000000000012;
            v8 = 0x800000021BE54490;
            break;
          case 0xD:
            v9 = 0xD000000000000015;
            v8 = 0x800000021BE544B0;
            break;
          case 0xE:
            v9 = 0xD000000000000018;
            v8 = 0x800000021BE544D0;
            break;
          case 0xF:
            v9 = 0xD000000000000012;
            v8 = 0x800000021BE544F0;
            break;
          default:
            break;
        }

        v10 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E75;
        switch(a1)
        {
          case 1:
            v10 = 0xEE006D6574497374;
            if (v9 == 0x696D694C6D6D6F63)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          case 2:
            v10 = 0x800000021BE543D0;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 3:
            v10 = 0x800000021BE543F0;
            if (v9 != 0xD000000000000014)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 4:
            v10 = 0xEC0000006D657449;
            if (v9 != 0x6E6F697461636F6CLL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 5:
            v10 = 0x800000021BE54420;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 6:
            v10 = 0xEF6D657449797261;
            if (v9 != 0x69636966656E6562)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 7:
            v10 = 0xEE006D6574497375;
            if (v9 != 0x6C5064756F6C4369)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 8:
            v10 = 0xE800000000000000;
            if (v9 != 0x6D657449656D6F68)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 9:
            v10 = 0x800000021BE54460;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 10:
            v11 = 0x736143656C707061;
            v10 = 0xED00006D65744968;
            goto LABEL_48;
          case 11:
            v10 = 0xEB000000006D6574;
            if (v9 != 0x49746361746E6F63)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 12:
            v10 = 0x800000021BE54490;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 13:
            v10 = 0x800000021BE544B0;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 14:
            v10 = 0x800000021BE544D0;
            if (v9 != 0xD000000000000018)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 15:
            v10 = 0x800000021BE544F0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          default:
LABEL_48:
            if (v9 != v11)
            {
              goto LABEL_50;
            }

LABEL_49:
            if (v8 == v10)
            {

              v12 = 1;
              return v12 & 1;
            }

LABEL_50:
            v12 = sub_21BE2995C();

            if (v12)
            {
              return v12 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v12 & 1;
            }

            break;
        }
      }
    }
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_21BDE56F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21BE29ACC();
  sub_21BE28ABC();
  v6 = sub_21BE29B0C();
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
    if (v11 || (sub_21BE2995C() & 1) != 0)
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

char *sub_21BDE57E8(char *result)
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

  result = sub_21BBBC990(result, v10, 1, v3);
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

uint64_t sub_21BDE58DC(uint64_t result)
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

  result = sub_21BBBCD28(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_21BDE59C8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_21BBBCE3C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A00, &qword_21BE32F70);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_21BDE5ACC(char *result)
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

  result = sub_21BBBCF94(result, v10, 1, v3);
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

uint64_t sub_21BDE5BC0(uint64_t result)
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

  v3 = sub_21BBBD914(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = sub_21BE2585C();
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

char *sub_21BDE5CEC(char *result)
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

  result = sub_21BBBDB64(result, v10, 1, v3);
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

void sub_21BDE5DF8(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = 0xE600000000000000;
  v4 = 0x756F59726F66;
  v5 = 0x800000021BE542B0;
  v6 = 0xD000000000000014;
  if (v2 != 5)
  {
    v6 = 0x4D65726F6C707865;
    v5 = 0xEB0000000065726FLL;
  }

  v7 = 0xEA00000000007075;
  v8 = 0x746553646C696863;
  if (v2 != 3)
  {
    v8 = 0x7250797465666173;
    v7 = 0xED00007963617669;
  }

  if (*(v1 + 24) <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000736E6F6974;
  v10 = 0x7069726373627573;
  if (v2 != 1)
  {
    v10 = 0x646C696843726F66;
    v9 = 0xEB000000006E6572;
  }

  if (*(v1 + 24))
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*(v1 + 24) <= 2u)
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

uint64_t sub_21BDE5F04(void *a1, unint64_t a2)
{
  v5 = sub_21BE26A4C();
  v64 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v63 = &v62 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v13 = sub_21BE25FCC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 me];
  if (!v17)
  {
    sub_21BE261BC();
    v28 = sub_21BE26A2C();
    v29 = sub_21BE28FDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v67 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE62240, &v67);
      _os_log_impl(&dword_21BB35000, v28, v29, "%s No me found", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x21CF05C50](v31, -1, -1);
      MEMORY[0x21CF05C50](v30, -1, -1);
    }

    (*(v64 + 8))(v8, v5);
    return 0;
  }

  (*(v14 + 104))(v16, *MEMORY[0x277D07F38], v13);
  v18 = MEMORY[0x21CF01150](v16);
  (*(v14 + 8))(v16, v13);
  v19 = *(v2 + 24);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = sub_21BE0476C;
    v20[4] = 0;

    sub_21BDE83F8(a2);
    v22 = v21;

    sub_21BDE9ABC(v22);
    v24 = v23;

    sub_21BE261BC();
    v25 = sub_21BE26A2C();
    v26 = sub_21BE28FFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v24;
      _os_log_impl(&dword_21BB35000, v25, v26, "Activeitem count %ld", v27, 0xCu);
      MEMORY[0x21CF05C50](v27, -1, -1);
    }

    (*(v64 + 8))(v12, v5);
    return v24;
  }

  v33 = sub_21BC2BCD8(v32, sub_21BE0476C, 0);

  if (qword_280BD6F00 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v34 = qword_280BDCB50;
    swift_beginAccess();
    result = sub_21BDE9A4C(v34 + 64, &v67);
    if (!v67)
    {
      __break(1u);
      return result;
    }

    v62 = v5;
    v36 = v68;

    sub_21BBFD7AC(&v67);
    v37 = MEMORY[0x277D84F90];
    *&v67 = MEMORY[0x277D84F90];

    sub_21BDE6E84(v36, v36, v33, v34, &v67);
    swift_bridgeObjectRelease_n();

    v33 = v67;
    v38 = *(v67 + 16);
    if (v38)
    {
      v39 = 0;
      v5 = v67 + 48;
      do
      {
        if (v39 >= v33[2])
        {
          goto LABEL_46;
        }

        v40 = *v5;
        v41 = *(*v5 + 16);
        v42 = v37[2];
        v43 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_47;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v43 <= v37[3] >> 1)
        {
          if (!*(v40 + 16))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v42 <= v43)
          {
            v45 = v42 + v41;
          }

          else
          {
            v45 = v42;
          }

          v37 = sub_21BBBD448(isUniquelyReferenced_nonNull_native, v45, 1, v37);
          if (!*(v40 + 16))
          {
LABEL_13:

            if (v41)
            {
              goto LABEL_48;
            }

            goto LABEL_14;
          }
        }

        if ((v37[3] >> 1) - v37[2] < v41)
        {
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
        swift_arrayInitWithCopy();

        if (v41)
        {
          v46 = v37[2];
          v47 = __OFADD__(v46, v41);
          v48 = v46 + v41;
          if (v47)
          {
            goto LABEL_50;
          }

          v37[2] = v48;
        }

LABEL_14:
        ++v39;
        v5 += 32;
      }

      while (v38 != v39);
    }

    v49 = v37[2];
    if (!v49)
    {
      break;
    }

    v50 = 0;
    v51 = (v37 + 4);
    v52 = MEMORY[0x277D84F90];
    v5 = 40;
    while (v50 < v37[2])
    {
      sub_21BB3A35C(v51, &v67);
      v53 = v68;
      v54 = v69;
      v33 = __swift_project_boxed_opaque_existential_1Tm(&v67, v68);
      if ((*(v54 + 24))(v53, v54))
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v67);
      }

      else
      {
        sub_21BB3D104(&v67, v65);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v66[0] = v52;
        if ((v55 & 1) == 0)
        {
          v33 = v66;
          sub_21BC59C94(0, *(v52 + 16) + 1, 1);
          v52 = v66[0];
        }

        v57 = *(v52 + 16);
        v56 = *(v52 + 24);
        if (v57 >= v56 >> 1)
        {
          v33 = v66;
          sub_21BC59C94((v56 > 1), v57 + 1, 1);
          v52 = v66[0];
        }

        *(v52 + 16) = v57 + 1;
        sub_21BB3D104(v65, v52 + 40 * v57 + 32);
      }

      ++v50;
      v51 += 40;
      if (v49 == v50)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
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
    swift_once();
  }

  v52 = MEMORY[0x277D84F90];
LABEL_41:

  v24 = *(v52 + 16);

  v58 = v63;
  sub_21BE261BC();
  v59 = sub_21BE26A2C();
  v60 = sub_21BE28FFC();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = v24;
    _os_log_impl(&dword_21BB35000, v59, v60, "Unfinished item count %ld", v61, 0xCu);
    MEMORY[0x21CF05C50](v61, -1, -1);
  }

  (*(v64 + 8))(v58, v62);
  return v24;
}