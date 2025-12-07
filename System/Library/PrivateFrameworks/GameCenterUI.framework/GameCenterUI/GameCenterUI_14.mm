uint64_t sub_24E0BCD8C(void *a1)
{
  v1 = [a1 navigationItem];
  v2 = [v1 rightBarButtonItem];

  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = [v2 customView];

  if (!v3)
  {
    return v3 & 1;
  }

  v4 = sub_24E0BD510(v3);
  if (!v5)
  {
LABEL_9:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (v4 == qword_27F1E3250 && v5 == off_27F1E3258)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    LOBYTE(v3) = sub_24E348C08();
  }

  return v3 & 1;
}

void sub_24E0BCE58(void *a1)
{
  if (([a1 _gkExtensionWantsCustomRightBarButtonItemInViewService] & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton);

    LOBYTE(v3) = v3(a1);

    if (v3)
    {

      sub_24E0BCB34(a1);
    }

    else if (sub_24E0BCD8C(a1))
    {
      v4 = [a1 navigationItem];
      [v4 setRightBarButtonItem_];
    }
  }
}

void sub_24E0BCFF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler + 8);

    v1(v3);

    sub_24DE73FA0(v1, v2);
  }
}

id sub_24E0BD0BC(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton];
  *v7 = OUTLINED_FUNCTION_0_13;
  v7[1] = 0;
  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  if (a2)
  {
    v8 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v8 = 0;
  }

  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v8);
}

id sub_24E0BD1D0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton];
  *v5 = OUTLINED_FUNCTION_0_13;
  v5[1] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithRootViewController_, a1);

  return v6;
}

id sub_24E0BD27C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton];
  *v8 = OUTLINED_FUNCTION_0_13;
  v8[1] = 0;
  if (a2)
  {
    v9 = sub_24E347CB8();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_24E0BD3A8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_dismissHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC12GameCenterUIP33_ED65E62AB2E9DEC955C1CAF6BA7C69F726CustomNavigationController_shouldShowCloseButton];
  *v5 = OUTLINED_FUNCTION_0_13;
  v5[1] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_24E0BD510(void *a1)
{
  v2 = [a1 accessibilityIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347CF8();

  return v3;
}

unint64_t sub_24E0BD588()
{
  result = qword_27F1DFAD0;
  if (!qword_27F1DFAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E32A0, &unk_24E36BFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DFAD0);
  }

  return result;
}

uint64_t sub_24E0BD668()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24E0BD6DC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_24E344E68();
}

id sub_24E0BD748(uint64_t a1, char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  if (!*(a1 + 32))
  {
    v28 = *a2;
    v15 = objc_allocWithZone(v6);
    v14 = sub_24E0BD864(v10, &v28, a4);

    v16 = OUTLINED_FUNCTION_0_89();
    v20 = 0;
LABEL_6:
    sub_24E0BE79C(v16, v17, v18, v19, v20);
    return v14;
  }

  if (*(a1 + 32) != 1)
  {
    v29[1] = *a2;
    v21 = objc_allocWithZone(v6);

    v22 = OUTLINED_FUNCTION_0_89();
    v14 = sub_24E0BDC80(v22, v23, v24, v25, v26, a4);

    v16 = OUTLINED_FUNCTION_0_89();
    v20 = 2;
    goto LABEL_6;
  }

  v29[0] = *a2;
  v12 = objc_allocWithZone(v6);
  return sub_24E0BDA6C(v10, v9, v29, a3, a4, v13, a6);
}

id sub_24E0BD864(void *a1, unsigned __int8 *a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3300, &qword_24E375808);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = *a2;
  v15 = OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig__image;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0988, &qword_24E36EA70);
  sub_24E344E28();
  (*(v10 + 32))(&v3[v15], v13, v8);
  swift_beginAccess();
  v16 = *(v10 + 8);
  v17 = a1;
  v16(&v3[v15], v8);
  v27 = a1;
  sub_24E344E28();
  swift_endAccess();
  v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_style] = v14;
  v18 = a3;
  if (v14 == 3)
  {
    v19 = OUTLINED_FUNCTION_2_56();
    v18 = v19 / v20;
  }

  v21 = &v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_size];
  *v21 = a3;
  v21[1] = v18;
  *&v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_config] = 0;
  *&v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_loader] = 0;
  v22 = &v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerID];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v3[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerAlias];
  *v23 = 0;
  v23[1] = 0;
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v26, sel_init);

  return v24;
}

id sub_24E0BDA6C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3300, &qword_24E375808);
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  v22 = *a3;
  v23 = OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig__image;
  v36[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0988, &qword_24E36EA70);
  sub_24E344E28();
  (*(v18 + 32))(&v8[v23], v21, v16);
  v24 = a5;
  if (v22 == 3)
  {
    v25 = OUTLINED_FUNCTION_2_56();
    v24 = v25 / v26;
  }

  v36[0] = a1;
  v36[1] = a2;
  v35[0] = 25186;
  v35[1] = 0xE200000000000000;
  v34 = 2;
  type metadata accessor for ArtworkLoaderConfig();
  swift_allocObject();
  v27.n128_f64[0] = a5;
  *&v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_config] = sub_24E120FD0(v36, v35, &v34, 0, 1, 0, v27, v24, a7);
  *&v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_loader] = a4;
  v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_style] = v22;
  v28 = &v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_size];
  *v28 = a5;
  v28[1] = v24;
  v29 = &v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerID];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v8[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerAlias];
  *v30 = 0;
  v30[1] = 0;
  v33.receiver = v8;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

id sub_24E0BDC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, double a6)
{
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3300, &qword_24E375808);
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &ObjectType - v17;
  LODWORD(a5) = *a5;
  v19 = OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig__image;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0988, &qword_24E36EA70);
  sub_24E344E28();
  (*(v15 + 32))(&v6[v19], v18, v13);
  v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_style] = a5;
  v20 = &v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerID];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerAlias];
  *v21 = a3;
  v21[1] = a4;
  v22 = a6;
  if (a5 == 3)
  {
    v23 = OUTLINED_FUNCTION_2_56();
    v22 = v23 / v24;
  }

  v25 = &v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_size];
  *v25 = a6;
  v25[1] = v22;
  *&v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_config] = 0;
  *&v6[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_loader] = 0;
  v28.receiver = v6;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init, ObjectType);
}

uint64_t sub_24E0BDE54()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerID + 8);
  if (v2 && (v3 = (v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerAlias), (v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerAlias + 8)) != 0))
  {
    v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_playerID);
    v6 = *v3;
    v7 = swift_task_alloc();
    v0[3] = v7;
    *v7 = v0;
    v7[1] = sub_24E0BDFC0;

    return sub_24E0BE0B4(v5, v2, v6, v4);
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_loader) && *(v1 + OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_config))
    {

      sub_24E0624E4(v9, 2, 1, v1);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24E0BDFC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24E0BE0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a4;
  v5[25] = v4;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  sub_24E348068();
  v5[26] = sub_24E348058();
  v7 = sub_24E347FF8();
  v5[27] = v7;
  v5[28] = v6;

  return MEMORY[0x2822009F8](sub_24E0BE154, v7, v6);
}

uint64_t sub_24E0BE154()
{
  v2 = v0[21];
  v1 = v0[22];
  sub_24DF95978();

  v3 = sub_24E1C6A3C(v2, v1);
  v0[29] = v3;
  v4 = sub_24E347CB8();
  [v3 setAlias_];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24E0BE2DC;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3308, &qword_24E375820);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E1DA3E4;
  v0[13] = &block_descriptor_37;
  v0[14] = v5;
  [v3 playerAvatarImageWithSize:0x10000 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E0BE2DC()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_24E0BE3E4, v2, v1);
}

uint64_t sub_24E0BE3E4()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 144);

  sub_24E0BD6DC(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t type metadata accessor for AsyncArtworkViewConfig(uint64_t a1)
{
  result = qword_27F1E32E0;
  if (!qword_27F1E32E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0BE5BC(uint64_t a1)
{
  sub_24E0BE678(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E0BE678(uint64_t a1)
{
  if (!qword_27F1E32F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0988, &qword_24E36EA70);
    v1 = sub_24E344E78();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E32F0);
    }
  }
}

unint64_t sub_24E0BE6DC(uint64_t a1)
{
  result = sub_24E0BE704();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24E0BE704()
{
  result = qword_27F1E32F8;
  if (!qword_27F1E32F8)
  {
    type metadata accessor for AsyncArtworkViewConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E32F8);
  }

  return result;
}

uint64_t sub_24E0BE75C@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_24E344DD8();
  *a2 = result;
  return result;
}

void sub_24E0BE79C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 2:

      goto LABEL_9;
    case 1:

LABEL_9:

      return;
    case 0:

      break;
  }
}

uint64_t sub_24E0BE830(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_24E0BD6DC(v1);
}

uint64_t GKLocalPlayer.loadAuthenticatedProfileWithProfile(discardingStaleData:)(char a1)
{
  *(v2 + 216) = v1;
  *(v2 + 224) = a1;
  v3 = OUTLINED_FUNCTION_6_20();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0BE8B0()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_24E0BE9C8;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1298, &unk_24E370670);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_24E0BEDB0;
  v0[21] = &block_descriptor_38;
  v0[22] = v2;
  [v1 refreshInternalWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E0BE9C8()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0BEA98()
{
  OUTLINED_FUNCTION_29_5();
  if (*(v0 + 208) != 1)
  {
    OUTLINED_FUNCTION_64_0();

    __asm { BRAA            X2, X16 }
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 208;
  *(v0 + 88) = sub_24E0BEBFC;
  v3 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3318, &unk_24E375880);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_24E0BF2DC;
  *(v0 + 168) = &block_descriptor_3_0;
  *(v0 + 176) = v3;
  [v1 loadProfileDiscardingStaleData:v2 completionHandler:v0 + 144];
  OUTLINED_FUNCTION_64_0();

  return MEMORY[0x282200938](v4);
}

uint64_t sub_24E0BEBFC()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_4_12(v3, v9, v10, v8);
  OUTLINED_FUNCTION_40_5();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = a2;

  v12 = OUTLINED_FUNCTION_6_43();
  sub_24DFC8700(v12, v13, v3, v14, v11);
}

uint64_t sub_24E0BEDB0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return sub_24E32EA2C(v3, v2);
}

uint64_t static GKLocalPlayer.updateAccessPointLocationInOverlay(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v3);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_43_3();
  if (qword_280BDFE78 != -1)
  {
    OUTLINED_FUNCTION_1_76(&qword_280BDFE78);
  }

  v5 = *(qword_280BE13D8 + 16);
  v6 = sub_24E348098();
  OUTLINED_FUNCTION_4_12(v1, v7, v8, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = a1;
  v10 = v5;
  v11 = OUTLINED_FUNCTION_6_43();
  sub_24DFC8700(v11, v12, v1, v13, v9);
}

uint64_t static GKLocalPlayer.didAcceptFriendRequest(_:player:)(char a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v5 = *MEMORY[0x277D0BE38];
  sub_24E347CF8();
  OUTLINED_FUNCTION_14_18();
  sub_24E0C5A88(v5, v6, v7, v4);

  v8 = [objc_opt_self() daemonProxy];
  v9 = [v8 friendServicePrivate];

  v21[4] = sub_24E0BF120;
  v21[5] = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_24E052CF0;
  v21[3] = &block_descriptor_11_0;
  v10 = _Block_copy(v21);
  [v9 didAccept:a1 & 1 friendRequest:a2 handler:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
  v11 = [a2 inboxEntry];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 senderDisplayName];
LABEL_5:
    v15 = v13;

    v16 = sub_24E347CF8();
    v18 = v17;

LABEL_6:
    static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)(v16, v18);
  }

  v14 = [a2 contact];
  if (v14)
  {
    v12 = v14;
    v13 = [v14 _gkCompositeName];
    goto LABEL_5;
  }

  result = sub_24E0C5B1C(a2);
  if (v20)
  {
    v16 = result;
    v18 = v20;
    goto LABEL_6;
  }

  return result;
}

void sub_24E0BF120(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_24E343C98();
    v7 = a1;
    v8 = sub_24E343F78();
    v9 = sub_24E348258();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_24DE53000, v8, v9, "didAccept call to daemon failed with error: %@", v10, 0xCu);
      sub_24E0C60AC(v11);
      MEMORY[0x253040EE0](v11, -1, -1);
      MEMORY[0x253040EE0](v10, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_24E0BF2DC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = a2;

  return sub_24E331314();
}

uint64_t static GKLocalPlayer.presentOnboardingFlowInOverlay(origin:sceneIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_4();
  if (qword_280BDFD70 != -1)
  {
    OUTLINED_FUNCTION_26_12(&qword_280BDFD70);
  }

  v8 = *(qword_280BE13D0 + 16);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 currentGame];
  v12 = [v11 bundleIdentifier];

  v13 = sub_24E347CF8();
  v15 = v14;

  v16 = sub_24E348098();
  OUTLINED_FUNCTION_15_19(v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v10;
  v17[5] = v13;
  v17[6] = v15;
  v17[7] = a2;
  v17[8] = a3;

  v18 = OUTLINED_FUNCTION_6_43();
  sub_24DFC8700(v18, v19, v3, v20, v17);
}

uint64_t sub_24E0BF494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return MEMORY[0x2822009F8](sub_24E0BF4BC, 0, 0);
}

uint64_t sub_24E0BF4BC()
{
  OUTLINED_FUNCTION_9_7();
  sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
  static GKLocalPlayer.hideAccessPointInOverlay()();
  *(v0 + 72) = sub_24E348068();
  *(v0 + 80) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0BF55C()
{
  OUTLINED_FUNCTION_9_7();

  v0 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_24E0BF5B8()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 88) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0BF630()
{
  OUTLINED_FUNCTION_9_7();

  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  *(v0 + 96) = swift_initStaticObject();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0BF6A0()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 104) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0BF718()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E0C3C94();
  v0[2] = v1;
  v0[3] = v2;
  v0[14] = v2;
  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0BF780()
{
  OUTLINED_FUNCTION_8_9();
  if (*(v0 + 64))
  {
  }

  sub_24E343E68();

  OUTLINED_FUNCTION_12_5();

  return v1();
}

uint64_t sub_24E0BF844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  static GKLocalPlayer.presentOnboardingFlowInOverlay(origin:sceneIdentifier:)(v4, v4, v6);
}

dispatch_semaphore_t sub_24E0BF89C()
{
  result = dispatch_semaphore_create(1);
  qword_27F1E3310 = result;
  return result;
}

uint64_t sub_24E0BF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_24E343368();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v8 = sub_24E343F88();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E0BFA04, 0, 0);
}

uint64_t sub_24E0BFA04(uint64_t a1)
{
  sub_24E343C98();
  v2 = sub_24E343F78();
  v3 = sub_24E348238();
  if (OUTLINED_FUNCTION_32_6(v3))
  {
    v4 = OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_57_2(v4);
    OUTLINED_FUNCTION_11_15();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_21_11();
  }

  v10 = v1[29];
  v11 = v1[24];
  v12 = v1[25];

  v13 = *(v12 + 8);
  v1[30] = v13;
  v13(v10, v11);
  if (qword_27F1DD840 != -1)
  {
    swift_once();
  }

  sub_24E348438();
  sub_24E343C98();
  v14 = sub_24E343F78();
  v15 = sub_24E348238();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_41_2();
    *v16 = 0;
    _os_log_impl(&dword_24DE53000, v14, v15, "presentActivitySharingRepromptInOverlay: Checking if the user is eligible..", v16, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  v17 = v1[28];
  v18 = v1[24];

  v13(v17, v18);
  v19 = objc_opt_self();
  v1[31] = v19;
  v20 = [v19 proxyForLocalPlayer];
  v21 = [v20 accountServicePrivate];
  v1[32] = v21;

  v1[2] = v1;
  v1[7] = v1 + 41;
  v1[3] = sub_24E0BFCA8;
  v22 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1298, &unk_24E370670);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24E0BEDB0;
  v1[13] = &block_descriptor_88;
  v1[14] = v22;
  [v21 checkActivitySharingRepromptWithCompletion_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_24E0BFCA8()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0BFD78()
{
  OUTLINED_FUNCTION_29_5();
  v1 = *(v0 + 328);
  swift_unknownObjectRelease();
  if (v1 != 1)
  {
    sub_24E343C98();
    v8 = sub_24E343F78();
    v9 = sub_24E348238();
    if (OUTLINED_FUNCTION_32_6(v9))
    {
      v10 = OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_57_2(v10);
      OUTLINED_FUNCTION_11_15();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_21_11();
    }

    v16 = *(v0 + 240);
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);

    v16(v17, v18);
    OUTLINED_FUNCTION_47_3();

    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_64_0();

    __asm { BRAA            X1, X16 }
  }

  if (qword_280BDFD70 != -1)
  {
    OUTLINED_FUNCTION_26_12(&qword_280BDFD70);
  }

  v2 = *(qword_280BE13D0 + 16);
  *(v0 + 264) = v2;
  *(v0 + 272) = sub_24E348068();
  v3 = v2;
  *(v0 + 280) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_64_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24E0BFF1C()
{
  OUTLINED_FUNCTION_9_7();

  v0 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_24E0BFF78()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 288) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0BFFF0()
{
  OUTLINED_FUNCTION_9_7();

  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  *(v0 + 296) = swift_initStaticObject();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C0060()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 304) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C00D8()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E0C3C94();
  *(v0 + 312) = v1;
  *(v0 + 320) = v2;
  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0C013C(uint64_t a1)
{
  sub_24E343C98();
  v2 = sub_24E343F78();
  v3 = sub_24E348238();
  if (OUTLINED_FUNCTION_32_6(v3))
  {
    v4 = OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_57_2(v4);
    OUTLINED_FUNCTION_11_15();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_21_11();
  }

  v10 = v2;
  v11 = v1[33];
  v12 = v1[30];
  v24 = v1[31];
  v13 = v1[27];
  v14 = v1[24];
  v15 = v1[23];
  v25 = v1[22];
  v26 = v1[21];

  v12(v13, v14);
  v16 = v11;
  sub_24E343E78();

  v17 = [v24 proxyForLocalPlayer];
  v18 = [v17 accountServicePrivate];

  sub_24E343358();
  v19 = sub_24E3432E8();
  (*(v25 + 8))(v15, v26);
  v20 = OUTLINED_FUNCTION_5_38();
  [v20 v21];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_47_3();

  OUTLINED_FUNCTION_12_5();

  return v22();
}

uint64_t sub_24E0C0310()
{
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_20_15();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_53(v5);

  return sub_24E0BF8C0(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_24E0C03B8()
{
  v0 = sub_24E343F88();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343C98();
  v4 = sub_24E343F78();
  v5 = sub_24E348238();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24DE53000, v4, v5, "presentActivitySharingRepromptInOverlay: Done.", v6, 2u);
    MEMORY[0x253040EE0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_27F1DD840 != -1)
  {
    swift_once();
  }

  return sub_24E348448();
}

uint64_t sub_24E0C0528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24E347CF8();
  v5 = v4;
  swift_getObjCClassMetadata();
  static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)(v3, v5);
}

uint64_t static GKLocalPlayer.presentWelcomeBannerInOverlay(returnToForeground:newToGameCenter:)(char a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v5);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_4();
  if (qword_280BDFE78 != -1)
  {
    OUTLINED_FUNCTION_1_76(&qword_280BDFE78);
  }

  v7 = *(qword_280BE13D8 + 16);
  v8 = sub_24E348098();
  OUTLINED_FUNCTION_15_19(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a1 & 1;
  *(v9 + 40) = v7;
  *(v9 + 48) = a2 & 1;
  v10 = v7;
  v11 = OUTLINED_FUNCTION_6_43();
  sub_24DFC8700(v11, v12, v2, v13, v9);
}

uint64_t sub_24E0C0694(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 153) = a6;
  *(v6 + 16) = a5;
  *(v6 + 152) = a4;
  v7 = sub_24E343E18();
  *(v6 + 24) = v7;
  *(v6 + 32) = *(v7 - 8);
  *(v6 + 40) = swift_task_alloc();
  v8 = sub_24E343D68();
  *(v6 + 48) = v8;
  *(v6 + 56) = *(v8 - 8);
  *(v6 + 64) = swift_task_alloc();
  v9 = sub_24E343F88();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E0C0814, 0, 0);
}

uint64_t sub_24E0C0814(uint64_t a1)
{
  sub_24E343C98();
  v2 = sub_24E343F78();
  v3 = sub_24E348238();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 152);
    v5 = OUTLINED_FUNCTION_49_4();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_24DE53000, v2, v3, "Requesting welcome banner presentation in overlay with returnToForeground = %{BOOL}d.", v5, 8u);
    OUTLINED_FUNCTION_22_4();
  }

  v6 = *(v1 + 64);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 24);

  v10 = OUTLINED_FUNCTION_33_8();
  v11(v10);
  v12 = objc_opt_self();
  v13 = [v12 shared];
  v14 = [v13 location];

  sub_24E0C19BC(v14, v6);
  v15 = [v12 shared];
  LODWORD(v13) = [v15 isActive];

  v16 = MEMORY[0x277D0C308];
  if (!v13)
  {
    v16 = MEMORY[0x277D0C318];
  }

  (*(v8 + 104))(v7, *v16, v9);
  *(v1 + 96) = sub_24E348068();
  *(v1 + 104) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v17 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_24E0C09F4()
{
  OUTLINED_FUNCTION_9_7();

  v0 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_24E0C0A50()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 112) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C0AC8()
{
  OUTLINED_FUNCTION_9_7();

  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  *(v0 + 120) = swift_initStaticObject();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C0B38()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 128) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C0BB0()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E0C3C94();
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_24E0C0C14()
{
  OUTLINED_FUNCTION_47_2();
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  sub_24E343DD8();

  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_33_8();
  v5(v4);

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_29_2();

  __asm { BRAA            X1, X16 }
}

uint64_t static GKLocalPlayer.presentAccessPointInOverlay(returnToForeground:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v3);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_43_3();
  v5 = sub_24E348098();
  OUTLINED_FUNCTION_4_12(v1, v6, v7, v5);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a1;
  v9 = OUTLINED_FUNCTION_6_43();
  sub_24DFC8700(v9, v10, v1, v11, v12);
}

uint64_t sub_24E0C0DC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 160) = a4;
  v5 = sub_24E343E18();
  *(v4 + 16) = v5;
  *(v4 + 24) = *(v5 - 8);
  *(v4 + 32) = swift_task_alloc();
  v6 = sub_24E343D68();
  *(v4 + 40) = v6;
  *(v4 + 48) = *(v6 - 8);
  *(v4 + 56) = swift_task_alloc();
  v7 = sub_24E343F88();
  *(v4 + 64) = v7;
  *(v4 + 72) = *(v7 - 8);
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E0C0F40, 0, 0);
}

uint64_t sub_24E0C0F40()
{
  OUTLINED_FUNCTION_8_9();
  sub_24E343C98();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (OUTLINED_FUNCTION_32_6(v2))
  {
    v3 = *(v0 + 160);
    v4 = OUTLINED_FUNCTION_49_4();
    *v4 = 67109120;
    v4[1] = v3;
    OUTLINED_FUNCTION_11_15();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
    OUTLINED_FUNCTION_21_11();
  }

  v10 = OUTLINED_FUNCTION_18_18();
  v11(v10);
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_24E0C1054;

  return MEMORY[0x282200480](200000000);
}

uint64_t sub_24E0C1054()
{
  OUTLINED_FUNCTION_9_7();
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24E0C115C()
{
  OUTLINED_FUNCTION_29_5();
  if (qword_280BDFE78 != -1)
  {
    OUTLINED_FUNCTION_1_76(&qword_280BDFE78);
  }

  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = *(qword_280BE13D8 + 16);
  v0[12] = v5;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 shared];
  v9 = [v8 location];

  sub_24E0C19BC(v9, v1);
  (*(v3 + 104))(v2, *MEMORY[0x277D0C310], v4);
  v0[13] = sub_24E348068();
  v0[14] = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v10 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24E0C12A0()
{
  OUTLINED_FUNCTION_9_7();

  v0 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_24E0C12FC()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 120) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C1374()
{
  OUTLINED_FUNCTION_9_7();

  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  *(v0 + 128) = swift_initStaticObject();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C13E4()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 136) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C145C()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E0C3C94();
  *(v0 + 144) = v1;
  *(v0 + 152) = v2;
  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_24E0C14C0()
{
  OUTLINED_FUNCTION_47_2();
  v1 = v0[12];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v0[3];
  sub_24E343DD8();

  (*(v4 + 8))(v2, v3);
  v5 = OUTLINED_FUNCTION_33_8();
  v6(v5);

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_29_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_24E0C15BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24E343D68();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E0C167C, 0, 0);
}

uint64_t sub_24E0C167C()
{
  OUTLINED_FUNCTION_9_7();
  sub_24E0C19BC(v0[3], v0[6]);
  v0[7] = sub_24E348068();
  v0[8] = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C170C()
{
  OUTLINED_FUNCTION_9_7();

  v0 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_24E0C1768()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 72) = OUTLINED_FUNCTION_48_3(v1);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v2 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E0C17D8()
{
  OUTLINED_FUNCTION_9_7();

  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  *(v0 + 80) = swift_initStaticObject();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C1848()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 88) = OUTLINED_FUNCTION_48_3(v1);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v2 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E0C18B8()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E0C3C94();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_24E0C191C()
{
  OUTLINED_FUNCTION_29_5();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_24E343E08();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_64_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_24E0C19BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 4)
  {
    type metadata accessor for Location(0);
    result = sub_24E348C58();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_27966DF88 + a1);
    v4 = sub_24E343D68();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

uint64_t sub_24E0C1AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24E343D68();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E0C1B68, 0, 0);
}

uint64_t sub_24E0C1B68()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *(v0 + 40);
  v2 = [objc_opt_self() shared];
  v3 = [v2 location];

  sub_24E0C19BC(v3, v1);
  v4 = sub_24E348068();
  *(v0 + 56) = OUTLINED_FUNCTION_37_6(v4);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v5 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24E0C1C30()
{
  OUTLINED_FUNCTION_9_7();

  v0 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_24E0C1C8C()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 64) = OUTLINED_FUNCTION_38_5(v1);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v2 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E0C1CFC()
{
  OUTLINED_FUNCTION_9_7();

  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  *(v0 + 72) = swift_initStaticObject();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C1D6C()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 80) = OUTLINED_FUNCTION_38_5(v1);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v2 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E0C1DDC()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E0C3C94();
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_24E0C1E40()
{
  OUTLINED_FUNCTION_29_5();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_24E343E08();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_64_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_24E0C1F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24E343F88();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_24E0C200C;

  return MEMORY[0x282200480](200000000);
}

uint64_t sub_24E0C200C()
{
  OUTLINED_FUNCTION_9_7();
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24E0C2114()
{
  OUTLINED_FUNCTION_8_9();
  sub_24E343C98();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (OUTLINED_FUNCTION_32_6(v2))
  {
    v3 = OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_57_2(v3);
    OUTLINED_FUNCTION_11_15();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_21_11();
  }

  v9 = OUTLINED_FUNCTION_18_18();
  v10(v9);
  *(v0 + 56) = sub_24E348068();
  *(v0 + 64) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v11 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24E0C2204()
{
  OUTLINED_FUNCTION_9_7();

  v0 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_24E0C2260()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 72) = OUTLINED_FUNCTION_48_3(v1);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v2 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E0C22D0()
{
  OUTLINED_FUNCTION_9_7();

  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  *(v0 + 80) = swift_initStaticObject();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C2340()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 88) = OUTLINED_FUNCTION_48_3(v1);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v2 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E0C23B0()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E0C3C94();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0C2414()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_32_10();
  sub_24E343E38();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E0C24C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_4();
  if (qword_280BDFE78 != -1)
  {
    OUTLINED_FUNCTION_1_76(&qword_280BDFE78);
  }

  v6 = *(qword_280BE13D8 + 16);
  v7 = sub_24E348098();
  OUTLINED_FUNCTION_15_19(v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v9 = v6;
  sub_24DFC8700(0, 0, v2, a2, v8);
}

uint64_t sub_24E0C25A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24E343F88();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E0C2660, 0, 0);
}

uint64_t sub_24E0C2660()
{
  OUTLINED_FUNCTION_8_9();
  sub_24E343C98();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (OUTLINED_FUNCTION_32_6(v2))
  {
    v3 = OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_57_2(v3);
    OUTLINED_FUNCTION_11_15();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_21_11();
  }

  v9 = OUTLINED_FUNCTION_18_18();
  v10(v9);
  v11 = sub_24E348068();
  *(v0 + 56) = OUTLINED_FUNCTION_37_6(v11);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v12 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_24E0C2744()
{
  OUTLINED_FUNCTION_9_7();

  v0 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_24E0C27A0()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 64) = OUTLINED_FUNCTION_38_5(v1);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v2 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E0C2810()
{
  OUTLINED_FUNCTION_9_7();

  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  *(v0 + 72) = swift_initStaticObject();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C2880()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 80) = OUTLINED_FUNCTION_38_5(v1);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v2 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E0C28F0()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E0C3C94();
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0C2954()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_32_10();
  sub_24E343DB8();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E0C29E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24E343F88();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E0C2AA0, 0, 0);
}

uint64_t sub_24E0C2AA0()
{
  OUTLINED_FUNCTION_8_9();
  sub_24E343C98();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (OUTLINED_FUNCTION_32_6(v2))
  {
    v3 = OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_57_2(v3);
    OUTLINED_FUNCTION_11_15();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_21_11();
  }

  v9 = OUTLINED_FUNCTION_18_18();
  v10(v9);
  v11 = sub_24E348068();
  *(v0 + 56) = OUTLINED_FUNCTION_37_6(v11);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v12 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_24E0C2B84()
{
  OUTLINED_FUNCTION_9_7();

  v0 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_24E0C2BE0()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 64) = OUTLINED_FUNCTION_38_5(v1);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v2 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E0C2C50()
{
  OUTLINED_FUNCTION_9_7();

  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  *(v0 + 72) = swift_initStaticObject();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C2CC0()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 80) = OUTLINED_FUNCTION_38_5(v1);
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v2 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E0C2D30()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E0C3C94();
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0C2D94()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_32_10();
  sub_24E343DA8();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t static GKLocalPlayer.presentAchievementBannerInOverlay(identifier:title:message:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v61 = a1;
  v62 = a3;
  v63[1] = *MEMORY[0x277D85DE8];
  v13 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v57 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v19);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  if (qword_280BDFE78 != -1)
  {
    OUTLINED_FUNCTION_1_76(&qword_280BDFE78);
  }

  v23 = *(qword_280BE13D8 + 16);
  if (a7)
  {
    v58 = a5;
    v59 = a4;
    v60 = v7;
    v24 = objc_opt_self();
    v63[0] = 0;
    v25 = v23;
    v26 = a7;
    v27 = [v24 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:v63];
    v28 = v63[0];
    if (v27)
    {
      v29 = sub_24E3432A8();
      v31 = v30;
    }

    else
    {
      v33 = v28;
      v34 = sub_24E3431B8();

      swift_willThrow();
      sub_24E343C98();
      v35 = v34;
      v36 = sub_24E343F78();
      v37 = sub_24E348258();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v55 = v37;
        v39 = v38;
        v40 = OUTLINED_FUNCTION_49_4();
        v56 = v36;
        v41 = v40;
        *v39 = 138412290;
        v42 = v34;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_24DE53000, v56, v55, "Image could not be serialized: %@", v39, 0xCu);
        sub_24E0C60AC(v41);
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_21_11();
        v44 = v56;
      }

      else
      {
        v44 = v26;
        v26 = v36;
      }

      (*(v57 + 8))(v18, v13);
      v29 = 0;
      v31 = 0xF000000000000000;
    }

    a4 = v59;
    v7 = v60;
    a5 = v58;
  }

  else
  {
    v32 = v23;
    v29 = 0;
    v31 = 0xF000000000000000;
  }

  v45 = sub_24E348098();
  OUTLINED_FUNCTION_4_12(v22, v46, v47, v45);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v49 = v62;
  v48[4] = v61;
  v48[5] = a2;
  v48[6] = v49;
  v48[7] = a4;
  v48[8] = a5;
  v48[9] = a6;
  v48[10] = v29;
  v48[11] = v31;
  v48[12] = v7;

  v50 = OUTLINED_FUNCTION_6_43();
  sub_24DFC8700(v50, v51, v22, v52, v48);
}

uint64_t sub_24E0C31B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v15;
  *(v8 + 80) = v16;
  *(v8 + 56) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_24E343C18();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  v10 = sub_24E343C48();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  v11 = sub_24E343F88();
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E0C3358, 0, 0);
}

uint64_t sub_24E0C3358(uint64_t a1)
{
  sub_24E343C98();
  v3 = sub_24E343F78();
  v4 = sub_24E348238();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_57_2(v5);
    _os_log_impl(&dword_24DE53000, v3, v4, "Requesting achievement banner presentation in overlay.", v1, 2u);
    OUTLINED_FUNCTION_21_11();
  }

  v6 = v2[20];
  v7 = v2[17];
  v8 = v2[18];
  v10 = v2[12];
  v9 = v2[13];
  v28 = v2[8];
  v29 = v2[9];
  v27 = v2[11];
  v12 = v2[2];
  v11 = v2[3];

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v13;
  *v9 = v12;
  v9[1] = v11;
  (*(v10 + 104))(v9, *MEMORY[0x277D0B968], v27);

  sub_24DFF6270(v28, v29);
  sub_24E343C28();
  v15 = sub_24E343C38();
  if (v16 >> 60 == 15)
  {
    sub_24E343C98();
    v17 = sub_24E343F78();
    v18 = sub_24E348258();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v2[19];
    v21 = v2[17];
    if (v19)
    {
      v22 = OUTLINED_FUNCTION_41_2();
      *v22 = 0;
      _os_log_impl(&dword_24DE53000, v17, v18, "presentAchievementBannerInOverlay: InGameBannerData could not be encoded", v22, 2u);
      OUTLINED_FUNCTION_22_4();
    }

    v14(v20, v21);
  }

  else
  {
    static GKLocalPlayer.presentInGameBannerInOverlay(data:)(v15, v16);
    v23 = OUTLINED_FUNCTION_1_19();
    sub_24DFF6204(v23, v24);
  }

  (*(v2[15] + 8))(v2[16], v2[14]);

  OUTLINED_FUNCTION_12_5();

  return v25();
}

uint64_t static GKLocalPlayer.presentInGameBannerInOverlay(data:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v5);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_4();
  if (qword_280BDFE78 != -1)
  {
    OUTLINED_FUNCTION_1_76(&qword_280BDFE78);
  }

  v7 = *(qword_280BE13D8 + 16);
  v8 = sub_24E348098();
  OUTLINED_FUNCTION_15_19(v8);
  OUTLINED_FUNCTION_40_5();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v7;
  v11 = OUTLINED_FUNCTION_1_19();
  sub_24DFF6284(v11, v12);
  v13 = OUTLINED_FUNCTION_6_43();
  sub_24DFC8700(v13, v14, v2, v15, v9);
}

uint64_t sub_24E0C36F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_24E347CF8();
  v10 = v9;
  v11 = sub_24E347CF8();
  v13 = v12;
  if (a5)
  {
    v14 = sub_24E347CF8();
    a5 = v15;
  }

  else
  {
    v14 = 0;
  }

  swift_getObjCClassMetadata();
  v16 = a6;
  static GKLocalPlayer.presentAchievementBannerInOverlay(identifier:title:message:image:)(v8, v10, v11, v13, v14, a5, a6);
}

uint64_t sub_24E0C37D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_24E343F88();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E0C389C, 0, 0);
}

uint64_t sub_24E0C389C()
{
  OUTLINED_FUNCTION_8_9();
  sub_24E343C98();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (OUTLINED_FUNCTION_32_6(v2))
  {
    v3 = OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_57_2(v3);
    OUTLINED_FUNCTION_11_15();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_21_11();
  }

  v9 = OUTLINED_FUNCTION_18_18();
  v10(v9);
  *(v0 + 64) = sub_24E348068();
  *(v0 + 72) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v11 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24E0C398C()
{
  OUTLINED_FUNCTION_9_7();

  v0 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_24E0C39E8()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 80) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C3A60()
{
  OUTLINED_FUNCTION_9_7();

  type metadata accessor for GKLocalPlayer.PrimarySceneLookup();
  *(v0 + 88) = swift_initStaticObject();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C3AD0()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 96) = sub_24E348058();
  OUTLINED_FUNCTION_1_2();
  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();
  v1 = OUTLINED_FUNCTION_53_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E0C3B48()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E0C3C94();
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24E0C3BAC()
{
  OUTLINED_FUNCTION_8_9();
  sub_24E343D88();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E0C3C2C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_24E3432A8();
  v6 = v5;

  static GKLocalPlayer.presentInGameBannerInOverlay(data:)(v4, v6);

  return sub_24DFF6218(v4, v6);
}

void sub_24E0C3C94()
{
  v1 = [objc_opt_self() shared];
  sub_24E08A5C4();
  v3 = v2;

  if (v3)
  {
    v4 = [v3 windowScene];

    if (v4)
    {
LABEL_46:
      v38 = [v4 session];
      v39 = [v38 persistentIdentifier];

      v40 = sub_24E347CF8();
      v42 = v41;

      *(v46 + 16) = v40;
      *(v46 + 24) = v42;

      goto LABEL_47;
    }
  }

  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 connectedScenes];

  sub_24DF88A8C(0, &unk_280BDFA70, 0x277D75940);
  sub_24DFFCE00();
  v7 = sub_24E348138();

  v43 = v7 & 0xC000000000000001;
  v44 = v7;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24E348838();
    sub_24E348168();
    v8 = v48;
    v9 = v49;
    v10 = v50;
    v11 = v51;
    v0 = v52;
  }

  else
  {
    v8 = v7;
    v9 = v7 + 56;
    v10 = ~(-1 << *(v7 + 32));
    OUTLINED_FUNCTION_34_7();

    v11 = 0;
  }

  v12 = (v10 + 64) >> 6;
  v45 = v8;
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v13 = sub_24E3488A8();
  if (v13 && (v47 = v13, swift_dynamicCast(), v14 = v53, v15 = v11, v16 = v0, v53))
  {
    while (1)
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v4 = v19;
        v20 = [v14 session];
        v21 = [v20 persistentIdentifier];

        v22 = sub_24E347CF8();
        v24 = v23;

        v25 = *(v46 + 24);
        if (v25)
        {
          if (v22 == *(v46 + 16) && v25 == v24)
          {

LABEL_45:
            sub_24DFFCE68();

            goto LABEL_46;
          }

          v27 = sub_24E348C08();

          v8 = v45;
          if (v27)
          {
            goto LABEL_45;
          }
        }

        else
        {

          v8 = v45;
        }
      }

      v11 = v15;
      v0 = v16;
      if (v8 < 0)
      {
        goto LABEL_7;
      }

LABEL_10:
      v17 = v11;
      v18 = v0;
      v15 = v11;
      if (!v0)
      {
        break;
      }

LABEL_14:
      v16 = (v18 - 1) & v18;
      v14 = *(*(v8 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v18)))));
      if (!v14)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        v0 = 0;
        goto LABEL_27;
      }

      v18 = *(v9 + 8 * v15);
      ++v17;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    sub_24DFFCE68();
    if (v43)
    {
      swift_unknownObjectRetain();
      sub_24E348838();
      sub_24E348168();
      v29 = v53;
      v28 = v54;
      v30 = v55;
      v31 = v56;
      v0 = v57;
    }

    else
    {
      v29 = v44;
      v28 = v44 + 56;
      v30 = ~(-1 << *(v44 + 32));
      OUTLINED_FUNCTION_34_7();

      v31 = 0;
    }

    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_31:
    if (!sub_24E3488A8() || (swift_dynamicCast(), v32 = v47, v33 = v31, v34 = v0, !v47))
    {
LABEL_42:
      OUTLINED_FUNCTION_41_5();
      sub_24DFFCE68();
LABEL_47:

      return;
    }

    while (1)
    {
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v4 = v37;
        OUTLINED_FUNCTION_41_5();
        goto LABEL_45;
      }

      v31 = v33;
      v0 = v34;
      if (v29 < 0)
      {
        goto LABEL_31;
      }

LABEL_34:
      v35 = v31;
      v36 = v0;
      v33 = v31;
      if (!v0)
      {
        break;
      }

LABEL_38:
      v34 = (v36 - 1) & v36;
      v32 = *(*(v29 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v36)))));
      if (!v32)
      {
        goto LABEL_42;
      }
    }

    while (1)
    {
      v33 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v33 >= ((v30 + 64) >> 6))
      {
        goto LABEL_42;
      }

      v36 = *(v28 + 8 * v33);
      ++v35;
      if (v36)
      {
        goto LABEL_38;
      }
    }
  }

  __break(1u);
}

uint64_t GKLocalPlayer.PrimarySceneLookup.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_24E0C4234()
{
  v1 = v0;
  v2 = sub_24E343D48();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0C2F0], v3);
  v6 = objc_allocWithZone(sub_24E343E48());
  v7 = sub_24E343D98();
  *(v0 + 16) = v7;
  v8 = v7;

  sub_24E343E28();

  v9 = *(v1 + 16);

  v10 = v9;
  sub_24E343DF8();

  v11 = *(v1 + 16);

  v12 = v11;
  sub_24E343DC8();

  v13 = *(v1 + 16);
  swift_allocObject();
  swift_weakInit();
  v14 = v13;

  sub_24E343D58();

  return v1;
}

uint64_t sub_24E0C43D4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24E0C4470(0.0, 0.0, 0.0, 0.0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E0C4500(0);
  }

  return result;
}

void sub_24E0C4470(double a1, double a2, double a3, double a4)
{
  v8 = [objc_opt_self() shared];
  [v8 setFrameInScreenCoordinates_];
}

void sub_24E0C4500(char a1)
{
  v2 = [objc_opt_self() shared];
  [v2 setIsPresentingGameCenter_];
}

uint64_t sub_24E0C45A4()
{
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_20_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_53(v1);
  OUTLINED_FUNCTION_64_0();

  return sub_24E0C15BC(v3, v4, v5, v6, v7);
}

uint64_t sub_24E0C46F4(uint64_t a1, unint64_t a2, char a3)
{
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_43_3();
  sub_24E343C98();

  v7 = sub_24E343F78();
  v8 = sub_24E348248();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24E1C2BE0(a1, a2, &v14);
    *(v9 + 12) = 1024;
    *(v9 + 14) = a3 & 1;
    _os_log_impl(&dword_24DE53000, v7, v8, "setGameMode: %s, enabled: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_22_4();
  }

  v11 = OUTLINED_FUNCTION_1_19();
  return v12(v11);
}

uint64_t sub_24E0C48F4()
{
  sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
  OUTLINED_FUNCTION_35_3();
  return static GKLocalPlayer.presentOnboardingFlowInOverlay(origin:sceneIdentifier:)(v0, v1, v2);
}

uint64_t sub_24E0C4940(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v5);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_4();
  sub_24E12CA50(0x7461745377656976, 0xE900000000000065, a1);
  if (v7 && (v30 = v7, swift_dynamicCast()))
  {
    v8 = v32;
  }

  else
  {
    v8 = -1;
  }

  OUTLINED_FUNCTION_36_6("leaderboardIdentifier");
  if (v9)
  {
    v12 = OUTLINED_FUNCTION_45_4(v9, v10, v11, MEMORY[0x277D837D0]);
    if (v12)
    {
      v13 = v30;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v31;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  OUTLINED_FUNCTION_36_6("achievementIdentifier");
  if (v15)
  {
    v18 = OUTLINED_FUNCTION_45_4(v15, v16, v17, MEMORY[0x277D837D0]);
    if (v18)
    {
      v19 = v30;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v31;
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

  v21 = sub_24E348098();
  OUTLINED_FUNCTION_15_19(v21);
  sub_24E348068();
  OUTLINED_FUNCTION_1_2();

  v22 = sub_24E348058();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v8;
  v23[5] = v13;
  v23[6] = v14;
  v23[7] = v19;
  v23[8] = v20;
  v23[9] = v3;
  v25 = OUTLINED_FUNCTION_6_43();
  sub_24DFC8700(v25, v26, v2, v27, v28);
}

uint64_t sub_24E0C4B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v15;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_24E343D38();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v10 = sub_24E343F88();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  sub_24E348068();
  v8[14] = sub_24E348058();
  v12 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E0C4C68, v12, v11);
}

uint64_t sub_24E0C4C68()
{
  OUTLINED_FUNCTION_47_2();
  v1 = v0[2];

  if (v1 == 1)
  {
    v5 = v0[6];
    if (v5)
    {
      v6 = v0[5];
      sub_24DF88A8C(0, &unk_27F1E2868, off_279666E20);

      v4 = sub_24E08C5E8(v6, v5);
    }

    else
    {
      v4 = [objc_allocWithZone(GKGameCenterViewController) initWithState_];
    }
  }

  else if (v1)
  {
    v4 = [objc_allocWithZone(GKGameCenterViewController) initWithState_];
  }

  else
  {
    v2 = v0[4];
    if (v2)
    {
      v3 = v0[3];
      sub_24DF88A8C(0, &unk_27F1E2868, off_279666E20);

      v4 = sub_24E08C984(v3, v2, 1, 2);
    }

    else
    {
      v4 = [objc_allocWithZone(GKGameCenterViewController) initWithState_];
    }
  }

  v7 = v4;
  v8 = [v4 constructInitialState];
  if (v8)
  {
    v9 = v8;
    sub_24E347BF8();
  }

  sub_24E343C98();
  v10 = sub_24E343F78();
  v11 = sub_24E348258();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  if (v12)
  {
    v16 = OUTLINED_FUNCTION_41_2();
    *v16 = 0;
    _os_log_impl(&dword_24DE53000, v10, v11, "requestDashboardPresentation: Could not construct initial state from GKGameCenterViewController", v16, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  (*(v14 + 8))(v13, v15);

  OUTLINED_FUNCTION_12_5();

  return v17();
}

void sub_24E0C5008()
{
  v0 = [objc_opt_self() shared];
  [v0 setIsPresentingGameCenter_];
}

uint64_t sub_24E0C5084(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_24E0C50E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24E348068();
  *(v4 + 24) = sub_24E348058();
  v6 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E0C5180, v6, v5);
}

uint64_t sub_24E0C5180()
{
  OUTLINED_FUNCTION_8_9();

  v0 = [objc_opt_self() local];
  v1 = [v0 eventEmitter];
  if ([v1 respondsToSelector_])
  {
    v2 = OUTLINED_FUNCTION_5_38();
    [v2 v3];
  }

  OUTLINED_FUNCTION_12_5();

  return v4();
}

uint64_t sub_24E0C528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24E348068();
  *(v4 + 24) = sub_24E348058();
  v6 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E0C5324, v6, v5);
}

uint64_t sub_24E0C5324()
{
  OUTLINED_FUNCTION_8_9();

  v0 = [objc_opt_self() local];
  v1 = [v0 eventEmitter];
  if ([v1 respondsToSelector_])
  {
    v2 = OUTLINED_FUNCTION_5_38();
    [v2 v3];
  }

  OUTLINED_FUNCTION_12_5();

  return v4();
}

uint64_t sub_24E0C5414(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;

  sub_24E0C549C(v7, a4, a5);
}

uint64_t sub_24E0C549C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_4_12(v3, v9, v10, v8);
  sub_24E348068();
  v11 = a1;
  v12 = sub_24E348058();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_24DFC8700(0, 0, v3, a3, v13);
}

uint64_t sub_24E0C557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24E348068();
  *(v4 + 24) = sub_24E348058();
  v6 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E0C5614, v6, v5);
}

uint64_t sub_24E0C5614()
{
  OUTLINED_FUNCTION_8_9();

  v0 = [objc_opt_self() local];
  v1 = [v0 eventEmitter];
  if ([v1 respondsToSelector_])
  {
    v2 = OUTLINED_FUNCTION_5_38();
    [v2 v3];
  }

  OUTLINED_FUNCTION_12_5();

  return v4();
}

uint64_t sub_24E0C5700()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24E0C5738()
{
  v1 = v0;
  v2 = sub_24E343D48();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0C2E8], v3);
  v6 = objc_allocWithZone(sub_24E343E98());
  v7 = sub_24E343E58();
  *(v0 + 16) = v7;
  v8 = v7;

  sub_24E343E88();

  return v1;
}

uint64_t sub_24E0C5864(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(a1);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_24E0C58B4(void *a1)
{
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_43_3();
  sub_24E343C98();
  v3 = a1;
  v4 = sub_24E343F78();
  v5 = sub_24E348238();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_49_4();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = a1;
    v8 = v3;
    _os_log_impl(&dword_24DE53000, v4, v5, "AuthenticationOverlay - didFinishOnboarding with error: %@", v6, 0xCu);
    sub_24E0C60AC(v7);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_22_4();
  }

  v9 = OUTLINED_FUNCTION_1_19();
  v10(v9);
  sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
  return static GKLocalPlayer.showAccessPointInOverlay()();
}

void sub_24E0C5A88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_24E347CB8();

  [a4 reportEvent:a1 type:v6];
}

double block_copy_helper_9_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24E0C5B1C(void *a1)
{
  v1 = [a1 alias];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

uint64_t sub_24E0C5B80()
{
  OUTLINED_FUNCTION_20_15();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_4(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_1_53(v7);

  return sub_24E0BF494(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t sub_24E0C5C40()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_53(v2);

  return sub_24E0C29E0(v4, v5, v6, v0);
}

uint64_t sub_24E0C5CD0()
{
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_20_15();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_53(v5);

  return sub_24E0C0694(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_24E0C5D7C()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_20_15();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_53(v3);

  return sub_24E0C0DC8(v5, v6, v7, v1);
}

uint64_t sub_24E0C5E10()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_53(v2);

  return sub_24E0C1AA8(v4, v5, v6, v0);
}

uint64_t sub_24E0C5EA0()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_53(v2);

  return sub_24E0C1F14(v4, v5, v6, v0);
}

uint64_t sub_24E0C5F30()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_53(v2);

  return sub_24E0C25A0(v4, v5, v6, v0);
}

uint64_t sub_24E0C5FC0(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_4(v3);
  *v4 = v5;
  v4[1] = sub_24E0334A8;
  OUTLINED_FUNCTION_17_17();

  return sub_24E0C31B8(v6, v7, v8, v9, v10, v11, v12, v2);
}

uint64_t sub_24E0C60AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF730, &qword_24E36DA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E0C6114()
{
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_20_15();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_53(v5);

  return sub_24E0C37D8(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_24E0C6240()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_53(v2);

  return sub_24E0C557C(v4, v5, v6, v0);
}

uint64_t sub_24E0C62D0()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_53(v2);

  return sub_24E0C528C(v4, v5, v6, v0);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v1, v2, 7);
}

uint64_t sub_24E0C63A8()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_53(v2);

  return sub_24E0C50E8(v4, v5, v6, v0);
}

uint64_t sub_24E0C6438()
{
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_20_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v1[1] = sub_24E0334A8;
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_29_2();

  return sub_24E0C4B08(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_1_76(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_19(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_26_12(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_36_6(uint64_t a1@<X8>)
{

  sub_24E12CA50(0xD000000000000015, (a1 - 32) | 0x8000000000000000, v1);
}

uint64_t OUTLINED_FUNCTION_37_6(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_24E348058();
}

uint64_t OUTLINED_FUNCTION_38_5(uint64_t a1)
{

  return sub_24E348058();
}

uint64_t OUTLINED_FUNCTION_45_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return sub_24E348098();
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return sub_24E0C03B8();
}

uint64_t OUTLINED_FUNCTION_48_3(uint64_t a1)
{

  return sub_24E348058();
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return swift_slowAlloc();
}

id sub_24E0C6720()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for ActivityFeedHeaderCollectionViewCell(0);
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

double sub_24E0C680C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  OUTLINED_FUNCTION_3_18(a2, &v18 - v14);
  OUTLINED_FUNCTION_3_18(a3, &v15[*(v6 + 56)]);
  sub_24DFC5400(v15, v12);
  v16 = *(v6 + 56);
  OUTLINED_FUNCTION_3_18(v12, v9);
  OUTLINED_FUNCTION_3_18(&v12[v16], v9 + *(v6 + 56));
  sub_24DF8C95C(v9, &unk_27F1E1CA0, &unk_24E36C0D0);
  sub_24DF8C95C(&v12[v16], &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8C95C(v12, &unk_27F1E1CB0, &unk_24E36D160);
  return 0.0;
}

double sub_24E0C6974(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_24DF9DEAC(a2, &v19 - v14, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF9DEAC(a3, &v15[*(v9 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  type metadata accessor for ActivityFeedBaseCollectionViewCell(0);
  sub_24DF9DEAC(v15, v12, &unk_27F1E1CA0, &unk_24E36C0D0);
  v16 = *(v9 + 56);
  v17 = sub_24E17B0B4(a1, v12, v12 + v16, a4);
  sub_24DF8C95C(v15, &unk_27F1E1CA0, &unk_24E36C0D0);
  sub_24DF8C95C(v12 + v16, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8C95C(v12, &unk_27F1E1CB0, &unk_24E36D160);
  return v17;
}

uint64_t sub_24E0C6B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[0] = a1;
  v18[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  sub_24DF9DEAC(a2, v18 - v14, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF9DEAC(a3, &v15[*(v9 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  type metadata accessor for ActivityFeedBaseCollectionViewCell(0);
  sub_24DF9DEAC(v15, v12, &unk_27F1E1CA0, &unk_24E36C0D0);
  v16 = *(v9 + 56);
  sub_24E17B1EC(v12, v12 + v16, a5);
  sub_24DF8C95C(v15, &unk_27F1E1CA0, &unk_24E36C0D0);
  sub_24DF8C95C(v12 + v16, &unk_27F1E1CB0, &unk_24E36D160);
  return sub_24DF8C95C(v12, &unk_27F1E1CB0, &unk_24E36D160);
}

id sub_24E0C6C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedHeaderCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityFeedHeaderCollectionViewCell(uint64_t a1)
{
  result = qword_27F1E3320;
  if (!qword_27F1E3320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0C6D40(uint64_t a1)
{
  result = sub_24E0C6E80(&qword_27F1E3330, type metadata accessor for ActivityFeedHeaderCollectionViewCell, &unk_24E375A78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E0C6E28(uint64_t a1)
{
  result = sub_24E0C6E80(&qword_27F1E3338, type metadata accessor for ActivityFeedHeaderCollectionViewCell, &unk_24E375AA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E0C6E80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E0C6ED0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (!a3)
  {
    return a3;
  }

  if (a3 == 1)
  {
    if (qword_27F1DD848 != -1)
    {
      OUTLINED_FUNCTION_0_90(&qword_27F1DD848);
    }

    v3 = objc_allocWithZone(MEMORY[0x277D750E8]);
    v4 = OUTLINED_FUNCTION_1_38();
    v7 = [v5 v6];
    [v7 startAnimating];
  }

  else
  {
    type metadata accessor for SystemImage();
    v8 = sub_24E18EFCC(0xD000000000000010, 0x800000024E3A5DB0, 0);
    v9 = [v8 imageWithRenderingMode_];

    v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    v10 = [objc_opt_self() secondaryLabelColor];
    [v7 setTintColor_];
  }

  return v7;
}

uint64_t sub_24E0C7010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1;
  if (a3 >= 2u)
  {
    v7 = sub_24E347CB8();
    v8 = GKGameCenterUIFrameworkBundle();
    v9 = GKGetLocalizedStringFromTableInBundle();

    v6 = sub_24E347CF8();
  }

  sub_24E0C8250(a1, a2, v3);
  return v6;
}

uint64_t sub_24E0C70DC()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DE038 != -1)
    {
      swift_once();
    }

    v4 = sub_24E344158();
    v35 = v4;
    v5 = __swift_project_value_buffer(v4, qword_27F20BCA8);
    v6 = *(v4 - 8);
    v33 = *(v6 + 16);
    v34 = v6 + 16;
    v31 = v5;
    v33(v3, v5, v4);
    v7 = *MEMORY[0x277D22618];
    v8 = v1;
    v32 = v1[13];
    LODWORD(v30) = v7;
    v32(v3, v7, v0);
    v36 = sub_24E3444F8();
    v50 = v36;
    v51 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v49);
    v47 = v0;
    v48 = MEMORY[0x277D22628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
    v10 = v1[2];
    v10(boxed_opaque_existential_1, v3, v0);
    sub_24E344508();
    v29 = v8[1];
    v29(v3, v0);
    v11 = v5;
    v12 = v33;
    v33(v3, v11, v35);
    v13 = v7;
    v14 = v32;
    v32(v3, v13, v0);
    v47 = v36;
    v48 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v46);
    v44 = v0;
    v45 = MEMORY[0x277D22628];
    v15 = __swift_allocate_boxed_opaque_existential_1(&v43);
    v10(v15, v3, v0);
    sub_24E344508();
    v16 = v29;
    v29(v3, v0);
    v44 = MEMORY[0x277D839F8];
    v45 = MEMORY[0x277D22A30];
    *&v43 = 0x4018000000000000;
    v12(v3, v31, v35);
    v14(v3, v30, v0);
    v41 = v36;
    v42 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v40);
    v38 = v0;
    v39 = MEMORY[0x277D22628];
    v17 = __swift_allocate_boxed_opaque_existential_1(v37);
    v10(v17, v3, v0);
    sub_24E344508();
    v16(v3, v0);
  }

  else
  {
    if (qword_27F1DE038 != -1)
    {
      swift_once();
    }

    v18 = sub_24E344158();
    v34 = v18;
    v33 = __swift_project_value_buffer(v18, qword_27F20BCA8);
    v19 = *(*(v18 - 8) + 16);
    v19(v3, v33, v18);
    v20 = v19;
    v31 = v19;
    LODWORD(v32) = *MEMORY[0x277D22618];
    v36 = v1[13];
    v36(v3);
    v35 = sub_24E3444F8();
    v50 = v35;
    v51 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v49);
    v47 = v0;
    v48 = MEMORY[0x277D22628];
    v21 = __swift_allocate_boxed_opaque_existential_1(&v46);
    v22 = v1[2];
    v22(v21, v3, v0);
    sub_24E344508();
    v30 = v1[1];
    v30(v3, v0);
    v23 = v33;
    v20(v3, v33, v34);
    v24 = v32;
    (v36)(v3, v32, v0);
    v47 = v35;
    v48 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v46);
    v44 = v0;
    v45 = MEMORY[0x277D22628];
    v25 = __swift_allocate_boxed_opaque_existential_1(&v43);
    v22(v25, v3, v0);
    sub_24E344508();
    v26 = v30;
    v30(v3, v0);
    v44 = MEMORY[0x277D839F8];
    v45 = MEMORY[0x277D22A30];
    *&v43 = 0x4018000000000000;
    v31(v3, v23, v34);
    (v36)(v3, v24, v0);
    v41 = v35;
    v42 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v40);
    v38 = v0;
    v39 = MEMORY[0x277D22628];
    v27 = __swift_allocate_boxed_opaque_existential_1(v37);
    v22(v27, v3, v0);
    sub_24E344508();
    v26(v3, v0);
  }

  sub_24DE56CE8(&v49, &unk_27F1E3340);
  sub_24DE56CE8(&v46, &unk_27F1E3368);
  qword_27F1E3390 = 0x4030000000000000;
  sub_24DE56CE8(&v43, &unk_27F1E3398);
  return sub_24DE56CE8(&v40, &unk_27F1E33C0);
}

char *sub_24E0C77D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v37 - v10;
  if (qword_27F1DE048 != -1)
  {
    swift_once();
  }

  v12 = sub_24E344158();
  v13 = __swift_project_value_buffer(v12, qword_27F20BCD8);
  (*(*(v12 - 8) + 16))(v11, v13, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v14 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel(0));
  v15 = sub_24E0AEF24(v11, 0, 1, 0, 1, 0);
  *(v4 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerStatusView_label) = v15;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerStatusView_accessoryView) = sub_24E0C6ED0(v15, v16, a3);
  v37[0] = v4;
  v37[1] = ObjectType;
  v17 = OUTLINED_FUNCTION_1_38();
  v20 = objc_msgSendSuper2(v18, v19, v17);
  v21 = OUTLINED_FUNCTION_7_2();
  [v22 v23];
  v24 = OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerStatusView_label;
  v25 = *&v20[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerStatusView_label];
  sub_24E0C7010(a1, a2, a3);
  v27 = v26;
  sub_24E0C8238(a1, a2, a3);
  if (v27)
  {
    v28 = sub_24E347CB8();
  }

  else
  {
    v28 = 0;
  }

  [v25 setText_];

  v29 = *&v20[v24];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 secondaryLabelColor];
  [v31 setTextColor_];

  v33 = [*&v20[v24] layer];
  [v33 setCompositingFilter_];

  [v20 addSubview_];
  v34 = *&v20[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerStatusView_accessoryView];
  if (v34)
  {
    v35 = v34;
    [v20 addSubview_];
  }

  return v20;
}

void GKMultiplayerStatusView.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  if (qword_27F1DD848 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_27F1DD848);
  }

  sub_24E0C7CAC(&unk_27F1E3340, __src);
  v7 = *(v3 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerStatusView_label);
  v14 = type metadata accessor for DynamicTypeLabel(0);
  v15 = MEMORY[0x277D22A58];
  *&v13 = v7;
  v8 = *(v3 + OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerStatusView_accessoryView);
  if (v8)
  {
    v9 = sub_24E0C7D5C();
    v10 = MEMORY[0x277D22A58];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_24DE56CE8(&v13, v18);
  v18[5] = v8;
  v18[6] = 0;
  v18[7] = 0;
  v18[8] = v9;
  v18[9] = v10;
  v11 = v8;
  v12 = v7;
  sub_24DF88EB4(a1, a2, a3);
  sub_24E0C7D08(__dst);
  OUTLINED_FUNCTION_7_2();
}

unint64_t sub_24E0C7D5C()
{
  result = qword_27F1E1D30;
  if (!qword_27F1E1D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E1D30);
  }

  return result;
}

Swift::Void __swiftcall GKMultiplayerStatusView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24E344048();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel_layoutSubviews, v5);
  if (qword_27F1DD848 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_27F1DD848);
  }

  sub_24E0C7CAC(&unk_27F1E3340, v25);
  v8 = *&v1[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerStatusView_label];
  v23 = type metadata accessor for DynamicTypeLabel(0);
  v24 = MEMORY[0x277D22A58];
  *&v22 = v8;
  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI23GKMultiplayerStatusView_accessoryView];
  if (v9)
  {
    v10 = sub_24E0C7D5C();
    v11 = MEMORY[0x277D22A58];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  memcpy(v26, v25, sizeof(v26));
  sub_24DE56CE8(&v22, v27);
  v27[5] = v9;
  v27[6] = 0;
  v27[7] = 0;
  v27[8] = v10;
  v27[9] = v11;
  v12 = v9;
  v13 = v8;
  [v1 bounds];
  v15 = v14;
  v17 = v16;
  [v1 layoutMargins];
  sub_24DF890D4(v1, v21, v20, v15 - v21 - v18, v17 - v20 - v19);
  sub_24E0C7D08(v26);
  (*(v4 + 8))(v7, v3);
}

id GKMultiplayerStatusView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GKMultiplayerStatusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E0C8238(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_24E0C8250(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_90(uint64_t a1)
{

  return swift_once();
}

_BYTE *storeEnumTagSinglePayload for InteractionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E0C8368()
{
  result = qword_27F1E33F8[0];
  if (!qword_27F1E33F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1E33F8);
  }

  return result;
}

uint64_t sub_24E0C83BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_7();
  v61 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24E348698();
  OUTLINED_FUNCTION_2_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_38();
  v58 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = (&v50 - v18);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_7();
  v60 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_38();
  v59 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  if ((sub_24E347CA8() & 1) == 0)
  {
    goto LABEL_21;
  }

  v52 = v11;
  v53 = a4;
  v54 = type metadata accessor for InteractionStateful(0, a3, v27, v28);
  v55 = a1;
  v29 = *(v54 + 28);
  v56 = v14;
  v57 = TupleTypeMetadata2;
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = *(v14 + 16);
  v31(v26, a1 + v29, v12);
  v31(&v26[v30], a2 + v29, v12);
  OUTLINED_FUNCTION_0_91(v26);
  if (v34)
  {
    OUTLINED_FUNCTION_0_91(&v26[v30]);
    v32 = v57;
    if (v34)
    {
      v51 = a2;
      v33 = OUTLINED_FUNCTION_2_57();
      v19(v33);
      goto LABEL_12;
    }

LABEL_10:
    (*(v60 + 8))(v26, v32);
LABEL_21:
    v43 = 0;
    return v43 & 1;
  }

  v31(v19, v26, v12);
  OUTLINED_FUNCTION_0_91(&v26[v30]);
  if (v34)
  {
    (*(v61 + 8))(v19, a3);
    v32 = v57;
    goto LABEL_10;
  }

  v51 = a2;
  v35 = v61;
  v36 = v52;
  (*(v61 + 32))(v52, &v26[v30], a3);
  v37 = sub_24E347CA8();
  v38 = *(v35 + 8);
  v38(v36, a3);
  v38(v19, a3);
  v39 = OUTLINED_FUNCTION_2_57();
  v19(v39);
  v32 = v57;
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v40 = *(v54 + 32);
  v41 = *(v32 + 48);
  v42 = v59;
  v31(v59, v55 + v40, v12);
  v31((v42 + v41), v51 + v40, v12);
  OUTLINED_FUNCTION_0_91(v42);
  if (!v34)
  {
    v44 = v58;
    v31(v58, v42, v12);
    OUTLINED_FUNCTION_0_91(v42 + v41);
    if (!v45)
    {
      v47 = v61;
      v48 = v52;
      (*(v61 + 32))(v52, v42 + v41, a3);
      v43 = sub_24E347CA8();
      v49 = *(v47 + 8);
      v49(v48, a3);
      v49(v44, a3);
      (v19)(v42, v12);
      return v43 & 1;
    }

    (*(v61 + 8))(v44, a3);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_91(v42 + v41);
  if (!v34)
  {
LABEL_20:
    (*(v60 + 8))(v42, v32);
    goto LABEL_21;
  }

  (v19)(v42, v12);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_24E0C88A8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v1 = sub_24E348698();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_24E0C8940(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 64);
  if (v7)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    return __swift_getEnumTagSinglePayload(a1, v7, v4);
  }

  v11 = ((v9 + *(v6 + 80) + ((v8 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + v9;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_22:
      if (v7)
      {
        return __swift_getEnumTagSinglePayload(a1, v7, v4);
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_22;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return v7 + (v11 | v15) + 1;
}

void sub_24E0C8AA4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10) & ~v10;
  if (!v8)
  {
    ++v9;
  }

  v12 = (v9 + v10 + v11) & ~v10;
  v13 = v12 + v9;
  v14 = 8 * (v12 + v9);
  v15 = a3 >= v8;
  v16 = a3 - v8;
  if (v16 != 0 && v15)
  {
    if (v13 <= 3)
    {
      v20 = ((v16 + ~(-1 << v14)) >> v14) + 1;
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
  }

  else
  {
    v17 = 0;
  }

  if (v8 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_25;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v18 = ~v8 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> v14) + 1;
      if (v13)
      {
        v22 = v18 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v13 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v13] = v19;
        break;
      case 2:
        *&a1[v13] = v19;
        break;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v13] = v19;
        break;
      default:
        return;
    }
  }
}

void sub_24E0C8D50(uint64_t a1)
{
  sub_24E0C8DC8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24E0C8DC8(uint64_t a1)
{
  if (!qword_27F1E34A0)
  {
    sub_24E002620();
    v1 = sub_24E345378();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E34A0);
    }
  }
}

void sub_24E0C8E6C(uint64_t a1)
{
  sub_24E0C8F34(319);
  if (v1 <= 0x3F)
  {
    sub_24E02FD6C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ASCPrefetchingLockupMetrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E0C8F34(uint64_t a1)
{
  if (!qword_27F1E34B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E34C0, &unk_24E36E5E0);
    v1 = sub_24E346BB8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E34B8);
    }
  }
}

uint64_t sub_24E0C8FB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ASCPrefetchingLockupView(0);
  v59 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v60 = v5;
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34C8, &qword_24E375CE8);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34D0, &qword_24E375CF0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34D8, &unk_24E375CF8);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v19 = *(v1 + 40);
  LOBYTE(v69) = *(v1 + 32);
  *(&v69 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (LOBYTE(v62[0]) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24E0C9F78();
    return sub_24E345E38();
  }

  else
  {
    v52 = v15;
    v53 = v8;
    v54 = v14;
    v55 = v9;
    v56 = a1;
    v69 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E8, &unk_24E375D08);
    sub_24E346B88();
    v21 = v62[0];
    swift_unknownObjectWeakLoadStrong();
    v22 = *(v1 + *(v4 + 36));
    *&v69 = v21;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v70 = v22;
    type metadata accessor for ASCPrefetchingLockupMetrics(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3480, qword_24E375C10);
    sub_24E345368();
    sub_24E346E28();
    sub_24E3453D8();
    v71 = v78;
    v72 = v79;
    v73 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0, &qword_24E36E600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E36A270;
    v24 = sub_24E346218();
    *(inited + 32) = v24;
    v25 = sub_24E346238();
    *(inited + 33) = v25;
    v26 = sub_24E346228();
    sub_24E346228();
    if (sub_24E346228() != v24)
    {
      v26 = sub_24E346228();
    }

    sub_24E346228();
    if (sub_24E346228() != v25)
    {
      v26 = sub_24E346228();
    }

    sub_24E345368();
    sub_24E3451B8();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_24E0A8D84(&v69, v62, &qword_27F1E34F8, &qword_24E375D18);
    v63 = v26;
    v64 = v28;
    v65 = v30;
    v66 = v32;
    v67 = v34;
    v68 = 0;
    v35 = sub_24E346E28();
    v37 = v36;
    sub_24E0C95FC(v2, &v69);
    v38 = v69;
    v39 = BYTE8(v69);
    sub_24E0A8D84(v62, &v69, &unk_27F1E3500, &unk_24E375D20);
    v74 = v38;
    v75 = v39;
    v76 = v35;
    v77 = v37;
    sub_24E345368();
    v40 = v62[0];
    v41 = v53;
    v42 = &v53[*(v57 + 36)];
    v43 = *(sub_24E3457C8() + 20);
    v44 = *MEMORY[0x277CE0118];
    sub_24E345C68();
    OUTLINED_FUNCTION_5_2();
    (*(v45 + 104))(&v42[v43], v44);
    *v42 = v40;
    *(v42 + 1) = v40;
    *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0, &qword_24E36BC00) + 36)] = 256;
    sub_24E0A8D84(&v69, v41, &qword_27F1E3510, &qword_24E375D30);
    v46 = v61;
    sub_24E0C9D74(v2, v61);
    v47 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v48 = swift_allocObject();
    sub_24E0C9DD8(v46, v48 + v47);
    v49 = v58;
    v50 = &v58[*(v55 + 36)];
    sub_24E345528();
    sub_24E348078();
    *v50 = &unk_24E375D40;
    *(v50 + 1) = v48;
    sub_24E0A8D84(v41, v49, &qword_27F1E34C8, &qword_24E375CE8);
    v51 = v54;
    sub_24E0A8D84(v49, v54, &qword_27F1E34D0, &qword_24E375CF0);
    sub_24E0C9F08(v51, v18);
    swift_storeEnumTagMultiPayload();
    sub_24E0C9F78();
    sub_24E345E38();
    return sub_24E0CA338(v51);
  }
}

uint64_t sub_24E0C95FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for ASCPrefetchingLockupView(0) + 36)))
  {
    if (qword_27F1DD740 != -1)
    {
      swift_once();
    }

    v3 = &qword_27F20AC30;
  }

  else
  {
    if (qword_27F1DD738 != -1)
    {
      swift_once();
    }

    v3 = &qword_27F20ABB8;
  }

  memcpy(__dst, v3, 0x78uLL);
  v4 = *&__dst[7];
  v5 = BYTE9(__dst[6]);
  v6 = BYTE8(__dst[6]);
  v14 = *(&__dst[4] + 8);
  v15 = *(&__dst[5] + 8);
  v12 = __dst[1];
  v13 = *(&__dst[3] + 8);
  v11 = __dst[0];
  v7 = __dst[2];
  v8 = __dst[3];
  sub_24E002674(__dst, &v16);
  __dst[0] = v11;
  __dst[1] = v12;
  __dst[2] = v7;
  LOBYTE(__dst[3]) = v8;
  *(&__dst[3] + 8) = v13;
  *(&__dst[4] + 8) = v14;
  *(&__dst[5] + 8) = v15;
  BYTE8(__dst[6]) = v6;
  BYTE9(__dst[6]) = v5;
  *&__dst[7] = v4;
  sub_24E0026D0(__dst);
  if (v6)
  {
    sub_24E002724();
  }

  else
  {
    type metadata accessor for ASCPrefetchingLockupMetrics(0);
    sub_24E002724();
  }

  result = sub_24E345E38();
  v10 = v17;
  *a2 = v16;
  *(a2 + 8) = v10;
  return result;
}

uint64_t sub_24E0C9800(uint64_t a1)
{
  v1[19] = a1;
  sub_24E348068();
  v1[20] = sub_24E348058();
  v3 = sub_24E347FF8();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x2822009F8](sub_24E0C9898, v3, v2);
}

uint64_t sub_24E0C9898()
{
  if (qword_27F1DDD38 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = qword_27F20B790;
  sub_24DF88A8C(0, &qword_27F1DEFE0, 0x277CEC290);
  sub_24DF88A8C(0, &qword_27F1E3560, 0x277CEC258);
  v3 = *v1;
  v4 = v1[1];

  v5 = sub_24E334618(v3, v4);
  v6 = sub_24E1C69D4(v5, *MEMORY[0x277CEC230], *MEMORY[0x277CEC1F8]);
  v0[23] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24E369990;
  *(v7 + 32) = v6;
  v8 = v6;
  v9 = sub_24E347EE8();
  v0[24] = v9;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24E0C9AE4;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3570, &qword_24E375D58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E1C73CC;
  v0[13] = &block_descriptor_39;
  v0[14] = v10;
  [v2 _cacheLockupsWithRequests_withCompletionBlock_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E0C9AE4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_24E0C9BEC, v2, v1);
}

uint64_t sub_24E0C9BEC()
{
  v1 = v0[24];

  v2 = v0[18];

  if (sub_24DFD8654())
  {
    sub_24DFFA844();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x25303F560](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
  }

  else
  {

    v4 = 0;
  }

  v5 = v0[19];
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v0[10] = v6;
  v0[11] = v7;
  v0[18] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E8, &unk_24E375D08);
  sub_24E346B98();
  v0[10] = v6;
  v0[11] = v7;
  sub_24E346B88();
  v8 = v0[18];
  if (v8)
  {
  }

  v9 = v8 == 0;
  v10 = v0[23];
  v11 = v0[19];
  v12 = *(v11 + 40);
  *(v0 + 80) = *(v11 + 32);
  v0[11] = v12;
  *(v0 + 144) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B98();

  v13 = v0[1];

  return v13();
}

uint64_t sub_24E0C9D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASCPrefetchingLockupView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E0C9DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASCPrefetchingLockupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E0C9E3C()
{
  v2 = *(type metadata accessor for ASCPrefetchingLockupView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24DF8CD84;

  return sub_24E0C9800(v0 + v3);
}

uint64_t sub_24E0C9F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34D0, &qword_24E375CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E0C9F78()
{
  result = qword_27F1E3518;
  if (!qword_27F1E3518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E34D0, &qword_24E375CF0);
    sub_24E0CA004();
    sub_24E0CA2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3518);
  }

  return result;
}

unint64_t sub_24E0CA004()
{
  result = qword_27F1E3520;
  if (!qword_27F1E3520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E34C8, &qword_24E375CE8);
    sub_24E0CA0BC();
    sub_24DFB4C28(&qword_27F1DF820, &qword_27F1DF7E0, &qword_24E36BC00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3520);
  }

  return result;
}

unint64_t sub_24E0CA0BC()
{
  result = qword_27F1E3528;
  if (!qword_27F1E3528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3510, &qword_24E375D30);
    sub_24E0CA174();
    sub_24DFB4C28(&qword_27F1E3548, &unk_27F1E3550, &unk_24E375D48, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3528);
  }

  return result;
}

unint64_t sub_24E0CA174()
{
  result = qword_27F1E3530;
  if (!qword_27F1E3530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F1E3500, &unk_24E375D20);
    sub_24E0CA200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3530);
  }

  return result;
}

unint64_t sub_24E0CA200()
{
  result = qword_27F1E3538;
  if (!qword_27F1E3538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E34F8, &qword_24E375D18);
    sub_24E0CA28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3538);
  }

  return result;
}

unint64_t sub_24E0CA28C()
{
  result = qword_27F1E3540;
  if (!qword_27F1E3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3540);
  }

  return result;
}

unint64_t sub_24E0CA2E0()
{
  result = qword_27F1DE1E0;
  if (!qword_27F1DE1E0)
  {
    sub_24E345528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DE1E0);
  }

  return result;
}

uint64_t sub_24E0CA338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34D0, &qword_24E375CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24E0CA3A0()
{
  if (*v0)
  {
    v1 = objc_opt_self();
    v2 = [v1 whiteColor];
    v3 = [v2 colorWithAlphaComponent_];

    v4 = [v1 whiteColor];
    v5 = [v1 secondaryLabelColor];
    v6 = [v1 whiteColor];
    v7 = [v1 whiteColor];
    v8 = [v7 colorWithAlphaComponent_];

    v9 = objc_allocWithZone(MEMORY[0x277CEC2B8]);
    return sub_24E337E70(v3, v4, v5, v6, v8);
  }

  else
  {
    v11 = [objc_opt_self() primaryTheme];

    return v11;
  }
}

unint64_t sub_24E0CA530()
{
  result = qword_27F1E3580;
  if (!qword_27F1E3580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3588, &unk_24E375D60);
    sub_24E0C9F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3580);
  }

  return result;
}

uint64_t PlayerProfileViewController.__allocating_init(playerId:navigationProxy:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DF8BD90(a3, v9, &qword_27F1E1B70, qword_24E3756A0);
  sub_24E0CA66C();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_23_16();
  sub_24DF8BFF4(v6, v7, qword_24E3756A0);
  *(v5 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_isDeeplinked) = 1;
  return v5;
}

void sub_24E0CA66C()
{
  OUTLINED_FUNCTION_32();
  v47 = v2;
  v48 = v1;
  v45 = v3;
  v46 = v4;
  v43 = v5;
  v44 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_3();
  v42 = v8;
  v40 = sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v41 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  OUTLINED_FUNCTION_0_14();
  v16 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v38 - v25;
  sub_24E3477D8();
  v27 = sub_24E3477C8();
  sub_24E347628();
  v49[0] = v27;
  v49[1] = MEMORY[0x277D221C0];

  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  sub_24E3475B8();
  (*(v16 + 8))(v0, v14);

  v39 = *(v20 + 8);
  v39(v23, v18);
  if (qword_27F1DDF20 != -1)
  {
    OUTLINED_FUNCTION_4_34(&qword_27F1DDF20);
  }

  (*(v10 + 16))(v41, qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v40);
  (*(v20 + 16))(v23, v26, v18);
  sub_24E347118();
  v28 = OUTLINED_FUNCTION_10_22();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = sub_24E3476A8();
  OUTLINED_FUNCTION_1_30(v32);
  sub_24E347658();
  LOBYTE(v49[0]) = 0;
  v33 = objc_allocWithZone(type metadata accessor for PlayerProfilePresenter(0));

  sub_24E245B74();
  sub_24DF8BD90(v48, v49, &qword_27F1E1B70, qword_24E3756A0);
  v34 = objc_allocWithZone(type metadata accessor for PlayerProfileViewController());
  sub_24E0CACF0();

  v35 = OUTLINED_FUNCTION_27_2();
  sub_24DF8BFF4(v35, v36, qword_24E3756A0);
  v37 = OUTLINED_FUNCTION_22_15();
  (v39)(v37);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0CAA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    sub_24E0CFD3C(result, a1);
    result = a3 + 1;
    if (!__OFADD__(a3, 1))
    {
      return sub_24E0CFD3C(result, a2);
    }
  }

  __break(1u);
  return result;
}

void static PlayerProfileViewController.showProfile(for:from:completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for PlayerProfileViewController();

  v4 = OUTLINED_FUNCTION_24_3();
  v9 = PlayerProfileViewController.__allocating_init(playerId:navigationProxy:objectGraph:)(v4, v5, v6, 0);
  v7 = [a3 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 pushViewController:v9 animated:1];
  }
}

uint64_t PlayerProfileViewController.ProfileType.hashValue.getter()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  return sub_24E348D68();
}

void sub_24E0CACF0()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v93 = v4;
  v94 = v3;
  v84 = v5;
  v81 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA7D0, &unk_24E36C0E0);
  OUTLINED_FUNCTION_0_14();
  v89 = v8;
  v90 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v86 = v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CD0, &unk_24E36D1A0);
  OUTLINED_FUNCTION_0_14();
  v83 = v11;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  v82 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_3();
  v80 = v15;
  sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v91 = v17;
  v92 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v79 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  OUTLINED_FUNCTION_0_14();
  v22 = v21;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_0_14();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v29 = v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v78 - v31;
  v33 = OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_clippingLayer;
  *(v2 + v33) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v34 = v2 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_startTime;
  *v34 = 0;
  *(v34 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_friendSuggestionsSectionFocusGuide) = 0;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_isDeeplinked) = 0;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController__rootController) = 0;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController__specifier) = 0;
  sub_24E3477D8();
  v35 = sub_24E3477C8();
  sub_24E347628();
  v95[0] = v35;
  v95[1] = MEMORY[0x277D221C0];

  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  sub_24E3475B8();
  (*(v22 + 8))(v0, v20);
  v36 = v35;

  v87 = *(v26 + 8);
  v88 = v26 + 8;
  v87(v29, v24);
  if (qword_27F1DDF20 != -1)
  {
    OUTLINED_FUNCTION_4_34(&qword_27F1DDF20);
  }

  (*(v91 + 2))(v79, qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v92);
  v37 = *(v26 + 16);
  v91 = v32;
  v92 = v24;
  v37(v29, v32, v24);
  sub_24E347118();
  v38 = OUTLINED_FUNCTION_10_22();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = sub_24E3476A8();
  OUTLINED_FUNCTION_1_30(v42);
  v43 = sub_24E347658();
  v44 = v81;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter) = v81;
  *&v44[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_pageMericsPresenter] = v43;
  v45 = v44;

  v46 = v94;
  sub_24DF8BD90(v94, v95, &qword_27F1E1B70, qword_24E3756A0);
  v47 = v93;

  v48 = v45;
  v49 = v36;

  v50 = v48;

  sub_24E171C64();
  v52 = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E9810, &qword_24E371680);
  OUTLINED_FUNCTION_1_30(v53);
  v54 = v52;
  v95[0] = sub_24E347578();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CE0, &unk_24E36C110);
  OUTLINED_FUNCTION_1_30(v55);
  sub_24DFB4C28(&qword_27F1E9820, &unk_27F1E9810, &qword_24E371680, MEMORY[0x277D22080]);
  v81 = v50;
  *&v54[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_statePresenter] = sub_24E344898();

  sub_24DF8BD90(v46, v95, &qword_27F1E1B70, qword_24E3756A0);
  v56 = objc_allocWithZone(type metadata accessor for BootstrapPresenter());
  v57 = v84;
  v80 = v84;
  v78[1] = v49;
  swift_retain_n();
  v58 = v54;

  v59 = v58;
  v84 = v43;
  v60 = sub_24E190B5C(v54, v95, v57, v43, v49, MEMORY[0x277D221C0], v47);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_28611E878;
  swift_unknownObjectWeakInit();
  v61 = OUTLINED_FUNCTION_22_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v61, v62);
  v63 = MEMORY[0x277D21A98];
  sub_24DFB4C28(&qword_27F1DFB10, &unk_27F1E1CF0, &unk_24E36C120, MEMORY[0x277D21A98]);
  sub_24E347198();
  OUTLINED_FUNCTION_14_13();
  v64 = v82;
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v95);
  (*(v83 + 8))(v64, v85);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_28611E878;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D00, &qword_24E375EB0);
  sub_24DFB4C28(&qword_27F1DFB18, &unk_27F1E1D00, &qword_24E375EB0, v63);
  sub_24E347198();
  OUTLINED_FUNCTION_14_13();
  v65 = v86;
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v95);
  (*(v89 + 8))(v65, v90);

  v66 = *&v59[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter];
  *&v59[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter] = v60;

  v67 = [v59 navigationItem];
  [v67 setLargeTitleDisplayMode_];

  v68 = [v59 navigationItem];
  [v68 setBackButtonDisplayMode_];

  v69 = [v59 navigationController];
  if (v69)
  {
    v70 = v69;
    v71 = [v69 navigationBar];

    [v71 setBarStyle_];
  }

  v72 = [v59 navigationController];

  if (v72)
  {
    v73 = [v72 navigationBar];

    v74 = [objc_opt_self() blackColor];
    [v73 setTintColor_];

    v75 = v74;
    v76 = v94;
    v77 = v91;
  }

  else
  {

    v76 = v94;
    v77 = v91;
    v75 = v80;
  }

  sub_24DF8BFF4(v76, &qword_27F1E1B70, qword_24E3756A0);
  v87(v77, v92);
  OUTLINED_FUNCTION_18();
}

id PlayerProfileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PlayerProfileViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_clippingLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v2 = v0 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_startTime;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_friendSuggestionsSectionFocusGuide) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_isDeeplinked) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController__rootController) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController__specifier) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t PlayerProfileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = objc_allocWithZone(type metadata accessor for PlayerProfilePresenter(0));
  sub_24E245B74();
  v5 = objc_allocWithZone(type metadata accessor for PlayerProfileViewController());
  sub_24E0CACF0();
  v7 = v6;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_24E0CBA4C(void *a1)
{
  type metadata accessor for PlayerProfilePresenter(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter);
    *(v1 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter) = v3;
  }

  else
  {

    v3 = sub_24E348AE8();
    __break(1u);
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t sub_24E0CBB5C(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_isDeeplinked) = result;
  *(*(v1 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter) + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_isDeeplinked) = *(v1 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_isDeeplinked);
  return result;
}

void sub_24E0CBBBC()
{
  v2 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for PlayerProfileViewController();
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter];
  if (v3)
  {
    v4 = v3;
    sub_24E19116C(v4, v5, v6, v7, v8, v9, v10, v11);

    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v4 = [v2 navigationItem];
      [v4 setStyle_];
    }

    v12 = [objc_opt_self() mainBundle];
    sub_24E0D033C(v12, &selRef_bundleIdentifier);
    if (v13)
    {
      OUTLINED_FUNCTION_6_9();
      v14 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
      v15 = sub_24E347CF8();
      v17 = v16;
      v18 = sub_24E347CF8();
      sub_24E0CFF2C(v15, v17, v18, v19, v4, v1, v14);
    }

    v20 = [v2 collectionView];
    if (v20)
    {
      v21 = v20;
      [v20 setKeyboardDismissMode_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E0CBD88(char a1)
{
  v2 = v1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for PlayerProfileViewController();
  objc_msgSendSuper2(&v22, sel_viewDidAppear_, a1 & 1);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = &v2[OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_startTime];
  *v5 = Current;
  *(v5 + 8) = 0;
  if ((a1 & 1) == 0)
  {
    v6 = [v2 collectionView];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    sub_24E010F0C(v6);
  }

  if (*(*&v2[OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter] + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_profileType) == 1 && ([objc_opt_self() _gkIsOnline] & 1) == 0)
  {
    v8 = sub_24E347CB8();
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    OUTLINED_FUNCTION_6_9();

    v11 = sub_24E347CB8();
    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();

    v14 = sub_24E347CF8();
    v16 = v15;

    v17 = sub_24E347CB8();
    v18 = GKGameCenterUIFrameworkBundle();
    v19 = GKGetLocalizedStringFromTableInBundle();

    if (!v19)
    {
      sub_24E347CF8();
      v19 = sub_24E347CB8();
    }

    v20 = OUTLINED_FUNCTION_60();
  }
}

void sub_24E0CC048(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PlayerProfileViewController();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1 & 1);
  if (!*(*&v1[OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter] + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_profileType) && (v1[OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_startTime + 8] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_startTime];
    v4 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    v5 = sub_24E347CF8();
    sub_24E0595AC(v5, v6, v4, v3);
  }
}

void sub_24E0CC15C()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for PlayerProfileViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  sub_24E0CC1DC();
}

void sub_24E0CC1DC()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
    }

    v4 = type metadata accessor for PlayerCardTheme(0);
    __swift_project_value_buffer(v4, qword_27F20BF00);
    v5 = [v1 traitCollection];
    objc_allocWithZone(type metadata accessor for CollectionViewLayoutEnvironment());
    v6 = v3;
    v7 = sub_24E12AAC0(v6);
    sub_24E0D03A0(v5, v7);

    v47 = v6;
    [v47 safeAreaInsets];
    v8 = [v47 safeAreaInsets];
    OUTLINED_FUNCTION_30_10(v8, v9, v10, v11, v12, v13, v14, v15, v43, v47);
    v16 = *&v1[OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_clippingLayer];
    v17 = [v48 safeAreaInsets];
    OUTLINED_FUNCTION_30_10(v17, v18, v19, v20, v21, v22, v23, v24, v44, v48);
    CGRectGetMinY(v52);
    OUTLINED_FUNCTION_30_10(v25, v26, v27, v28, v29, v30, v31, v32, v45, v49);
    CGRectGetHeight(v53);
    OUTLINED_FUNCTION_30_10(v33, v34, v35, v36, v37, v38, v39, v40, v46, v50);

    [v16 setFrame_];
    OUTLINED_FUNCTION_32_11();
  }

  else
  {
    OUTLINED_FUNCTION_32_11();
  }
}

void sub_24E0CC3C4()
{
  v1 = [v0 navigationItem];
  [v1 _setManualScrollEdgeAppearanceEnabled_];

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    *&v0[OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_navbarScrollObserverSkipDistance] = 0x405E000000000000;
    sub_24DFFF398();
    v2 = 50.0;
  }

  else
  {
    v3 = [v0 traitCollection];
    v4 = [v3 verticalSizeClass];

    if (v4 == 1)
    {
      v2 = 44.0;
    }

    else
    {
      v2 = 200.0;
    }
  }

  v5 = [v0 navigationItem];
  [v5 _setAutoScrollEdgeTransitionDistance_];

  v6 = [v0 navigationItem];
  [v6 _setManualScrollEdgeAppearanceEnabled_];
}

void sub_24E0CC508(uint64_t a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for PlayerProfileViewController();
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, a1);
  v4 = *&v2[OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter];
  v5 = OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView;
  v6 = v4[OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView];
  v7 = v4;
  v9 = sub_24E0CC65C(v7, v8);
  if (v6 != (v9 & 1))
  {
    v4[v5] = sub_24E0CC65C(v9, v10) & 1;
    sub_24E24DFFC();
  }

  sub_24E0CC3C4();
}

id sub_24E0CC65C(uint64_t a1, uint64_t a2)
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    return 0;
  }

  if (GKIsRemoteUI())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_25_14();
  if (v2)
  {
    return 0;
  }

  sub_24E1742B8();
LABEL_5:
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v3 = type metadata accessor for PlayerCardTheme(0);
  if (*__swift_project_value_buffer(v3, qword_27F20BF00) != 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_14();
  if (v4)
  {
    return 0;
  }

  return sub_24E1742B8();
}

id sub_24E0CC714(uint64_t a1, uint64_t a2)
{
  if ((sub_24E0CC65C(a1, a2) & 1) == 0)
  {
    return [v2 collectionView];
  }

  v3 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v4 = *&v2[v3];
  if (!v4)
  {
    return [v2 collectionView];
  }

  v5 = v4;
  v6 = [v2 collectionView];
  if (!v6 || (v7 = v6, v8 = v5, [v8 contentOffset], v10 = v9, v11 = v7, objc_msgSend(v11, sel_contentOffset), v13 = v12, v11, v11, v8, v13 >= v10))
  {

    return [v2 collectionView];
  }

  return v4;
}

void sub_24E0CC864()
{
  OUTLINED_FUNCTION_32();
  v102 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C30, &unk_24E36C0A0);
  OUTLINED_FUNCTION_0_14();
  v91 = v3;
  v92 = v2;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_3();
  v90 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E35D0, &unk_24E375E68);
  OUTLINED_FUNCTION_0_14();
  v100 = v7;
  v101 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_3();
  v99 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CA0, &unk_24E36BFD0);
  OUTLINED_FUNCTION_0_14();
  v97 = v11;
  v98 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  v96 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E35D8, &qword_24E375E78);
  OUTLINED_FUNCTION_0_14();
  v94 = v15;
  v95 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v90 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40, &unk_24E375E80);
  OUTLINED_FUNCTION_0_14();
  v21 = v20;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v90 - v23;
  v25 = *(v0 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0, &unk_24E36FA60);
  OUTLINED_FUNCTION_2_58();
  v93 = v26;
  sub_24DFB4C28(v27, &unk_27F1E6CC0, &unk_24E36FA60, v28);
  v29 = v25;

  OUTLINED_FUNCTION_23_16();
  sub_24E347198();
  v30 = type metadata accessor for PlayerProfileViewController();
  OUTLINED_FUNCTION_14_13();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v103);
  v31 = v24;
  v32 = v0;
  (*(v21 + 8))(v31, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E35E0, &unk_24E375E90);
  sub_24DFB4C28(&qword_27F1E35E8, &qword_27F1E35E0, &unk_24E375E90, MEMORY[0x277D22570]);

  sub_24E347198();
  OUTLINED_FUNCTION_14_13();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v103);
  (*(v94 + 8))(v18, v95);
  sub_24E287BB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CB0, qword_24E381AB0);
  v33 = v93;
  sub_24DFB4C28(&unk_27F1E1C60, &unk_27F1E6CB0, qword_24E381AB0, v93);
  sub_24E347198();
  OUTLINED_FUNCTION_14_13();
  v34 = v96;
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v103);
  (*(v97 + 8))(v34, v98);
  v35 = v29;
  v36 = OUTLINED_FUNCTION_23_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  sub_24DFB4C28(&qword_27F1E35F8, &qword_27F1E35F0, &unk_24E375EA0, v33);

  OUTLINED_FUNCTION_27_2();
  sub_24E347198();
  OUTLINED_FUNCTION_14_13();
  v38 = v99;
  v98 = v30;
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v103);
  (*(v100 + 8))(v38, v101);

  v39 = OUTLINED_FUNCTION_18_19();
  if (!v39)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v39;
  sub_24E1E086C();

  v41 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v42 = *(v0 + v41);
  if (!v42)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v43 = v42;
  sub_24E1E086C();

  if (!OUTLINED_FUNCTION_18_19())
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_16_4();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v35;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E97E0, &unk_24E371660);
  objc_allocWithZone(v46);
  v47 = v35;
  v48 = sub_24E344CB8();
  v49 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource;
  v50 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource) = v48;

  v51 = *(v0 + v41);
  if (!v51)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_16_4();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v47;
  objc_allocWithZone(v46);
  v54 = v47;
  v55 = v51;
  v56 = sub_24E344CB8();
  v57 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource;
  v58 = *(v32 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource);
  *(v32 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource) = v56;

  v59 = OUTLINED_FUNCTION_18_19();
  if (!v59)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v60 = *(v32 + v49);
  if (!v60)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v61 = v59;
  v62 = v60;
  v63 = OUTLINED_FUNCTION_60();
  sub_24E0B0548(v63, v64, v102);

  v65 = *(v32 + v41);
  if (!v65)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v66 = *(v32 + v57);
  if (!v66)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v67 = v66;
  v68 = v65;
  sub_24E0B0548(v68, v67, v102);

  v69 = OUTLINED_FUNCTION_18_19();
  if (!v69)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v70 = v69;
  [v69 setDataSource_];

  v71 = OUTLINED_FUNCTION_18_19();
  if (!v71)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v72 = v71;
  sub_24E1364D4();
  v74 = v73;
  [v72 setCollectionViewLayout_];

  v75 = *(v32 + v41);
  if (!v75)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v75 setDataSource_];
  v76 = *(v32 + v41);
  if (v76)
  {
    v77 = v76;
    sub_24E174668();
    v79 = v78;
    [v77 setCollectionViewLayout_];

    v54[OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView] = sub_24E0CC65C(v80, v81) & 1;
    v82 = v54;
    sub_24E24DFFC();

    v83 = OUTLINED_FUNCTION_23_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(v83, v84);
    OUTLINED_FUNCTION_2_58();
    sub_24DFB4C28(v85, &unk_27F1E1C70, &unk_24E36C0B0, v86);
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_21_15();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v103);
    v101 = *(v91 + 8);
    v87 = OUTLINED_FUNCTION_22_15();
    v88(v87);

    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_21_15();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v103);
    v89 = OUTLINED_FUNCTION_22_15();
    v101(v89);
    sub_24E24C2B4(v102);

    OUTLINED_FUNCTION_18();
    return;
  }

LABEL_25:
  __break(1u);
}

void (*sub_24E0CD274(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E0D02E0;
}

void (*sub_24E0CD31C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E0D02BC;
}

uint64_t (*sub_24E0CD380(void *a1))()
{
  v1 = sub_24E0CD31C(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E0D0288;
}

void (*sub_24E0CD3D8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E052A04;
}

uint64_t (*sub_24E0CD43C(void *a1))(void *a1)
{
  v1 = sub_24E0CD3D8(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24DFC147C;
}

void (*sub_24E0CD494(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E0D0264;
}

uint64_t (*sub_24E0CD4F8(void *a1))()
{
  v1 = sub_24E0CD494(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E0D0234;
}

char *sub_24E0CD550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  MEMORY[0x28223BE20](v41);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13);
  v45 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v39 = a1;
  v40 = a3;
  v23 = *&result[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource];
  if (v23)
  {
    v24 = a2;
    v25 = result;
    v26 = v23;
    v27 = sub_24E3434D8();
    sub_24DFB8854(v27, v17);

    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      v38 = v19;
      (*(v19 + 32))(v21, v17, v18);

      sub_24E3448C8();

      v29 = v41;
      v30 = *(v41 + 48);
      v31 = sub_24E3434D8();
      sub_24DFC15B4(v12, &v12[v30], v31);
      v32 = *&v25[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_components];

      sub_24DF8BD90(v12, v9, &unk_27F1E1CA0, &unk_24E36C0D0);
      v33 = *(v29 + 48);
      v42 = v33;
      v34 = sub_24DFC15B8();
      v35 = &v9[v33];
      v36 = v45;
      v28 = (*(*v32 + 104))(v40, v24, v21, v9, v35, v45, v34, v39);

      sub_24DF8BFF4(v12, &unk_27F1E1CA0, &unk_24E36C0D0);
      (*(v43 + 8))(v36, v44);
      (*(v38 + 8))(v21, v18);
      sub_24DF8BFF4(&v9[v42], &unk_27F1E1CB0, &unk_24E36D160);
      sub_24DF8BFF4(v9, &unk_27F1E1CB0, &unk_24E36D160);
      return v28;
    }

    sub_24DF8BFF4(v17, &unk_27F1E1CB0, &unk_24E36D160);
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  __break(1u);
  return result;
}

char *sub_24E0CD9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v44 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  MEMORY[0x28223BE20](v40);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v22 = result;
  v38 = a1;
  v39 = a3;
  v23 = *&result[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource];
  if (v23)
  {
    v24 = v23;
    v25 = v44;
    v26 = sub_24E3434D8();
    sub_24DFB8854(v26, v16);

    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      v37 = v18;
      (*(v18 + 32))(v20, v16, v17);
      v28 = v22;

      sub_24E3448C8();

      v29 = v40;
      v30 = *(v40 + 48);
      v31 = sub_24E3434D8();
      sub_24E0CAA58(v11, &v11[v30], v31);
      v32 = *&v28[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_components];

      sub_24DF8BD90(v11, v8, &unk_27F1E1CA0, &unk_24E36C0D0);
      v33 = *(v29 + 48);
      v41 = v33;
      v34 = sub_24DFC15B8();
      v35 = &v8[v33];
      v36 = v45;
      v27 = (*(*v32 + 104))(v39, v25, v20, v8, v35, v45, v34, v38);

      sub_24DF8BFF4(v11, &unk_27F1E1CA0, &unk_24E36C0D0);
      (*(v42 + 8))(v36, v43);
      (*(v37 + 8))(v20, v17);
      sub_24DF8BFF4(&v8[v41], &unk_27F1E1CB0, &unk_24E36D160);
      sub_24DF8BFF4(v8, &unk_27F1E1CB0, &unk_24E36D160);
      return v27;
    }

    sub_24DF8BFF4(v16, &unk_27F1E1CB0, &unk_24E36D160);
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  __break(1u);
  return result;
}

void (*sub_24E0CDE48(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E0D0210;
}

void (*sub_24E0CDEB4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E0D01EC;
}

void sub_24E0CDF18()
{
  sub_24E172BF4();
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = [v1 traitCollection];

  v4 = [v3 userInterfaceIdiom];
  if (v4 != 2)
  {
    return;
  }

  v5 = OUTLINED_FUNCTION_19_16();
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  [v5 _gkRemoveAllConstraints];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24E36D5F0;
  v8 = OUTLINED_FUNCTION_19_16();
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v0 view];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = [v11 topAnchor];

  v14 = [v10 constraintEqualToAnchor:v13 constant:108.0];
  *(v7 + 32) = v14;
  v15 = OUTLINED_FUNCTION_19_16();
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v15 bottomAnchor];

  v18 = [v0 view];
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v18;
  v20 = [v18 bottomAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v7 + 40) = v21;
  v22 = OUTLINED_FUNCTION_19_16();
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v26 = *&v0[v25];
  if (!v26)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v27 = [v26 leadingAnchor];
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v29 = -44.0;
  if (ShouldUsePadUI)
  {
    v29 = -24.0;
  }

  v30 = [v24 constraintEqualToAnchor:v27 constant:v29];

  *(v7 + 48) = v30;
  v31 = OUTLINED_FUNCTION_19_16();
  if (!v31)
  {
    goto LABEL_23;
  }

  v32 = v31;
  v33 = objc_opt_self();
  v34 = [v32 widthAnchor];

  v35 = [v34 constraintEqualToConstant_];
  *(v7 + 56) = v35;
  sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
  v36 = sub_24E347EE8();

  [v33 activateConstraints_];
}

uint64_t sub_24E0CE304()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_dismissHandler);
  OUTLINED_FUNCTION_8_11();
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    v5 = OUTLINED_FUNCTION_24_3();
    return sub_24DE73FA0(v5, v6);
  }

  return result;
}

uint64_t sub_24E0CE3F0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_24E343488();
  v19.receiver = v2;
  v19.super_class = type metadata accessor for PlayerProfileViewController();
  objc_msgSendSuper2(&v19, sel_collectionView_willDisplayCell_forItemAtIndexPath_, a1, a2, v6);

  type metadata accessor for SmallPlayerCardCollectionViewCell(0);
  if (swift_dynamicCastClass())
  {
    v7 = a2;
    if (!sub_24E3434C8() && !*&v2[OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_friendSuggestionsSectionFocusGuide])
    {
      sub_24E0CE6A0();
    }
  }

  v15 = a2;
  sub_24DF88A8C(0, &qword_27F1E0080, 0x277D752A8);
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0088, &unk_24E36D190);
  if (swift_dynamicCast())
  {
    sub_24DE56CE8(v13, v16);
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v11 = (*(v10 + 8))(v9, v10);
    [v11 setDelegate_];

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    return sub_24DF8BFF4(v13, &qword_27F1E0090, &qword_24E375D70);
  }
}

void sub_24E0CE6A0()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v4 = *&v2[qword_280BE0C10];
  v5 = v3;
  [v4 addLayoutGuide_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24E369990;
  v7 = *&v4[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_button];
  *(v6 + 32) = v7;
  v8 = v7;
  sub_24DFD7FD0(v6, v5);
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24E36D5F0;
  v11 = [v5 topAnchor];

  v12 = [v2 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-1.0];

  *(v10 + 32) = v13;
  v14 = [v5 heightAnchor];

  v15 = [v2 heightAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v5 leadingAnchor];

  v18 = [v2 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v10 + 48) = v19;
  v20 = [v5 widthAnchor];

  v21 = [v2 widthAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v10 + 56) = v22;
  sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
  v23 = sub_24E347EE8();

  [v9 activateConstraints_];

  *(v0 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_friendSuggestionsSectionFocusGuide) = v5;
  OUTLINED_FUNCTION_18();
}

void sub_24E0CE99C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v4 = sub_24E344C28();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = sub_24E344CA8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v17 = *v3;
  if (*v3 != 2)
  {
    if (v17 == 1)
    {
      v91 = v11;
      v92 = MEMORY[0x277D74D18];
      __swift_allocate_boxed_opaque_existential_1(v90);
      sub_24E344C98();
      sub_24E3482F8();
      sub_24DFFE6D0(0);
    }

    else
    {
      v87 = v13;
      v79 = v6;
      v80 = v4;
      v20 = *(v3 + 8);
      v19 = *(v3 + 16);
      v84 = v19;
      v83 = v20;
      OUTLINED_FUNCTION_17_18();
      v21 = v17;
      sub_24DE56C38(v20, v19);
      v22 = sub_24E347CB8();
      v23 = GKGameCenterUIFrameworkBundle();
      v24 = GKGetLocalizedStringFromTableInBundle();

      v82 = sub_24E347CF8();
      v81 = v25;

      v26 = sub_24E347CB8();
      v27 = GKGameCenterUIFrameworkBundle();
      v28 = GKGetLocalizedStringFromTableInBundle();

      v29 = sub_24E347CF8();
      v31 = v30;

      v32 = sub_24E347CB8();
      v33 = GKGameCenterUIFrameworkBundle();
      v34 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      OUTLINED_FUNCTION_6_9();

      v90[0] = 0xD000000000000016;
      v90[1] = 0x800000024E39EA90;
      v90[2] = v17;
      v91 = v82;
      v92 = v81;
      v93 = v29;
      v94 = v31;
      v95 = v33;
      v96 = v32;
      v97 = v83;
      v98 = v84;
      sub_24DFFE6D0(0);
      v89[3] = v11;
      v89[4] = MEMORY[0x277D74D18];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
      sub_24E344C58();
      sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
      sub_24E1A5748(0xD000000000000016, 0x800000024E39EA90, 0);
      sub_24E344C68();
      v35 = v97;
      v36 = v98;

      sub_24E344C48();

      sub_24E344BF8();
      if (v35)
      {

        sub_24E344C38();
        sub_24DF88A8C(0, &qword_27F1DFB08, 0x277D750C8);
        OUTLINED_FUNCTION_16_4();
        v37 = swift_allocObject();
        *(v37 + 16) = v35;
        *(v37 + 24) = v36;

        OUTLINED_FUNCTION_8_11();
        v38 = sub_24E348658();
        sub_24E344C18();

        v39 = sub_24E344C78();
        sub_24E348668();
        v39(&v88, 0);

        sub_24DE73FA0(v35, v36);
        (*(v79 + 8))(v10, v80);
      }

      (*(v87 + 32))(boxed_opaque_existential_1, v16, v11);
      sub_24E3482F8();
      sub_24DFC13E4(v90);
    }

LABEL_60:
    OUTLINED_FUNCTION_18();
    return;
  }

  OUTLINED_FUNCTION_17_18();
  sub_24DFFE6D0(0);
  sub_24E0D033C([v1 navigationItem], &selRef_title);
  if (v18)
  {
  }

  else
  {
    v40 = [v1 navigationItem];
    v41 = v1;
    v42 = OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter;
    v43 = v41;
    v44 = *&v41[OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter];
    sub_24E246394();
    v46 = v45;

    if (v46)
    {
      v47 = sub_24E347CB8();
    }

    else
    {
      v47 = 0;
    }

    [v40 setTitle_];

    v48 = *&v43[v42];
    sub_24E246394();
    OUTLINED_FUNCTION_6_9();

    if (v40)
    {
      OUTLINED_FUNCTION_60();
      v49 = sub_24E347CB8();
    }

    else
    {
      v49 = 0;
    }

    [v43 setTitle_];

    v50 = *&v43[v42];
    v51 = sub_24E2461D4();

    sub_24DFFE82C(v51 & 1);
    v52 = *&v43[v42];
    v1 = v43;
    v53 = v52;
    v54 = sub_24E2461D4();

    v43[OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_wantsHiddenTitle] = v54 & 1;
    sub_24DFFF1AC();
    sub_24E0CC3C4();
  }

  v55 = sub_24E05F2EC([v1 navigationItem]);
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
  }

  v58 = *&v1[OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter];
  v59 = sub_24E248800();

  if (v59)
  {
    v60 = v59;
  }

  else
  {
    v60 = v56;
  }

  if (sub_24DFD8654() < 1)
  {
  }

  else
  {
    v90[0] = v56;
    v61 = sub_24DFD8654();
    v62 = 0;
    v63 = v60 & 0xC000000000000001;
    while (v61 != v62)
    {
      sub_24DFFA844();
      if (v63)
      {
        v64 = MEMORY[0x25303F560](v62, v60);
      }

      else
      {
        v64 = *(v60 + 8 * v62 + 32);
      }

      v65 = v64;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);

        __break(1u);
        return;
      }

      v89[0] = v64;
      sub_24E0CF3EC(v89, v57);
      if (v66)
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }

      else
      {
      }

      ++v62;
    }

    v67 = 0;
    v86 = v90[0];
    do
    {
      v65 = v67;
      if (v61 == v67)
      {
        break;
      }

      if (v63)
      {
        v68 = MEMORY[0x25303F560](v67, v60);
      }

      else
      {
        if (v67 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v68 = *(v60 + 8 * v67 + 32);
      }

      v69 = v68;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_64;
      }

      v70 = [v68 tag];

      v67 = (v65 + 1);
    }

    while (v70 != 8004);

    v90[0] = MEMORY[0x277D84F90];
    v71 = sub_24DFD8654();
    for (i = 0; v71 != i; ++i)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v73 = MEMORY[0x25303F560](i, v57);
      }

      else
      {
        if (i >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v73 = *(v57 + 8 * i + 32);
      }

      v74 = v73;
      if (__OFADD__(i, 1))
      {
        goto LABEL_62;
      }

      if (v61 == v65 && [v73 tag] == 8004)
      {
      }

      else
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }
    }

    sub_24E26C660(v86);
    v75 = [v1 navigationItem];
    sub_24E052820(v90[0], v75);
  }

  v76 = [v1 navigationController];
  if (!v76)
  {
    goto LABEL_60;
  }

  [v76 setNeedsFocusUpdate];
  OUTLINED_FUNCTION_18();
}

void sub_24E0CF3EC(id *a1, uint64_t a2)
{
  v3 = [*a1 tag];
  v4 = sub_24DFD8654();
  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25303F560](v5, a2);
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = [v7 tag];

    v5 = v6 + 1;
  }

  while (v9 != v3);
}

void sub_24E0CF4D8()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-1] - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v19[-1] - v13;
  sub_24DFC15B8();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  sub_24E347328();

  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_24DF8BFF4(v14, &unk_27F1EAC90, &unk_24E36E890);
  }

  else
  {
    v19[3] = &type metadata for PlayerAvatarPickerAction;
    v16 = sub_24E0D02E8();
    v19[0] = v5;
    v19[1] = v3;
    v19[4] = v16;
    v19[2] = v1;
    (*(v8 + 104))(v11, *MEMORY[0x277D21E18], v6);
    sub_24DFC15B8();
    v17 = v5;
    sub_24DE56C38(v3, v1);
    sub_24E3473B8();

    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v19);
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E0CF710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v3 navigationItem];
  if (a2)
  {
    OUTLINED_FUNCTION_24_3();
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 setTitle_];
}

void sub_24E0CF7C0(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_8_11();
    sub_24E344CE8();
  }

  else
  {
    __break(1u);
  }
}

void *sub_24E0CF860()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController__rootController);
  v2 = v1;
  return v1;
}

void *sub_24E0CF92C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController__specifier);
  v2 = v1;
  return v1;
}

void sub_24E0CF9C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController__specifier);
}

id PlayerProfileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerProfileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E0CFAE4()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [v0 collectionView];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 adjustedContentInset];

  OUTLINED_FUNCTION_27_9();
  v5 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6)
  {
    v7 = v6;
    [v7 adjustedContentInset];
    OUTLINED_FUNCTION_27_9();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_24E0CFC0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI27PlayerProfileViewController_profilePresenter);
  sub_24E24F26C(a1, a2);
}

void sub_24E0CFCE4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_24E347CB8();
  [v3 loadMoreWithContinuationToken_];
}

uint64_t sub_24E0CFD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0, &unk_24E36C060);
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_secondarySnapshot;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  (*(v7 + 16))(v10, v2 + v11, v5);
  if (a1 < 0 || sub_24E344B78() <= a1)
  {
    v22 = OUTLINED_FUNCTION_27_2();
    v23(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
    v18 = OUTLINED_FUNCTION_10_22();
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  result = sub_24E344B88();
  if (*(result + 16) > a1)
  {
    v13 = result;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
    OUTLINED_FUNCTION_5_2();
    (*(v15 + 16))(a2, v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * a1, v14);

    v16 = OUTLINED_FUNCTION_27_2();
    v17(v16);
    v18 = a2;
    v19 = 0;
    v20 = 1;
    v21 = v14;
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  __break(1u);
  return result;
}

void sub_24E0CFF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_24E347CB8();

  v9 = sub_24E347CB8();

  OUTLINED_FUNCTION_24_3();
  v10 = sub_24E347CB8();

  [a7 reportEvent:v8 type:v9 bundleID:v10];
}

id sub_24E0CFFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_24E347CB8();

  v9 = sub_24E347CB8();

  v10 = [a6 _gkPresentAlertWithTitle_message_buttonTitle_];

  return v10;
}

unint64_t sub_24E0D0094()
{
  result = qword_27F1E35C8;
  if (!qword_27F1E35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E35C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayerProfileViewController.ProfileType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E0D02E8()
{
  result = qword_27F1E3600;
  if (!qword_27F1E3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3600);
  }

  return result;
}

uint64_t sub_24E0D033C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_24E347CF8();
    OUTLINED_FUNCTION_6_9();
  }

  return OUTLINED_FUNCTION_60();
}

void sub_24E0D03A0(uint64_t a1, void *a2)
{
  if (!GKIsXRUIIdiomShouldUsePadUI())
  {
    v3 = [a2 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 != 1 || (v5 = [a2 traitCollection], v6 = objc_msgSend(v5, sel_horizontalSizeClass), v5, v6 == 1))
    {
      if (sub_24E3368B4())
      {
        [objc_msgSend(a2 container)];
        swift_unknownObjectRelease();
        [objc_msgSend(a2 container)];
        swift_unknownObjectRelease();
        v7 = objc_allocWithZone(type metadata accessor for PageGrid());
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_17_18()
{
  *(v0 - 160) = 0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;

  return sub_24E3482F8();
}

id OUTLINED_FUNCTION_18_19()
{

  return [v1 (v0 + 2424)];
}

id OUTLINED_FUNCTION_19_16()
{

  return [v0 (v1 + 2424)];
}

id OUTLINED_FUNCTION_27_9()
{

  return [v0 (v1 + 2552)];
}

uint64_t OUTLINED_FUNCTION_28_11()
{

  return sub_24E347198();
}

uint64_t OUTLINED_FUNCTION_29_11()
{

  return sub_24E347638();
}

id OUTLINED_FUNCTION_30_10(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{

  return [a10 (v10 + 3832)];
}

uint64_t sub_24E0D06D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D2>, double a5@<D3>)
{
  v40 = a1;
  v32 = a4;
  v31 = a3;
  v30 = a2;
  v7 = sub_24E348BC8();
  MEMORY[0x28223BE20](v7);
  v38 = sub_24E344048();
  MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v5;
  v10 = *(v5 + 12);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v39[1];
    v35 = *v39;
    v36 = v12;
    v34 = v12 * 0.5;
    v13 = v10 + 32;
    v33 = (v8 + 8);
    v14 = v32;
    v15 = v31;
    do
    {
      sub_24E0D0BA4(v13, v45);
      v48.origin.x = OUTLINED_FUNCTION_0_92();
      CGRectGetMinX(v48);
      sub_24DF98AC8(v45, &v41);
      if (v42)
      {
        sub_24DF88BF0(&v41, v43);
        __swift_project_boxed_opaque_existential_1(v43, v44);
        sub_24E3440D8(v14, a5);
        __swift_project_boxed_opaque_existential_1(v43, v44);
        v49.origin.x = OUTLINED_FUNCTION_0_92();
        CGRectGetMidY(v49);
        sub_24E344088();
        __swift_project_boxed_opaque_existential_1(v43, v44);
        sub_24E344078();
        CGRectGetMaxX(v50);
        v16 = v39;
        v17 = *(v39 + 5);
        v18 = *(v39 + 6);
        __swift_project_boxed_opaque_existential_1(v39 + 2, v17);
        sub_24E2548A0(v17, v18);
        sub_24E344198();
        v19 = OUTLINED_FUNCTION_2_59();
        v20(v19);
        __swift_destroy_boxed_opaque_existential_1(v43);
      }

      else
      {
        sub_24DF98B38(&v41);
        v16 = v39;
      }

      __swift_project_boxed_opaque_existential_1(v46, v47);
      v51.origin.x = OUTLINED_FUNCTION_0_92();
      CGRectGetMidY(v51);
      sub_24E344088();
      v52.origin.x = OUTLINED_FUNCTION_0_92();
      CGRectGetMinX(v52);
      v53.origin.x = OUTLINED_FUNCTION_0_92();
      MinY = CGRectGetMinY(v53);
      __swift_project_boxed_opaque_existential_1(v46, v47);
      sub_24E344078();
      CGRectGetMaxX(v54);
      v55.origin.x = OUTLINED_FUNCTION_0_92();
      CGRectGetMinX(v55);
      v56.origin.x = OUTLINED_FUNCTION_0_92();
      CGRectGetHeight(v56);
      v22 = v37;
      sub_24E343FD8();
      sub_24E344008();
      v24 = v23;
      v25 = *(v16 + 10);
      v26 = *(v16 + 11);
      __swift_project_boxed_opaque_existential_1(v16 + 7, v25);
      sub_24E2548A0(v25, v26);
      sub_24E344198();
      v27 = OUTLINED_FUNCTION_2_59();
      v28(v27);
      (*v33)(v22, v38);
      sub_24E0D0BDC(v45);
      v15 = v15 + v24 + MinY;
      v14 = v14 - (v24 + MinY);
      v13 += 80;
      --v11;
    }

    while (v11);
  }

  return sub_24E343FD8();
}

uint64_t sub_24E0D0C14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_24E0D0C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E0D0CB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_24E0D0CF8(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

double sub_24E0D0D5C(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_24E0D0DB4(a1, v3, a2, a3);
}

double sub_24E0D0DB4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v35 = a4;
  v34 = a3;
  v5 = sub_24E348BC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(MEMORY[0x277D22A78] + 8);
  v10 = *(a2 + 96);
  v11 = *(v10 + 16);
  if (v11)
  {
    v32 = *(a2 + 96);
    v12 = v10 + 32;
    v33 = v6;
    v13 = (v6 + 8);
    v14 = 0.0;
    do
    {
      sub_24E0D0BA4(v12, v39);
      sub_24DF98AC8(v39, v37);
      if (v38)
      {
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v15 = sub_24E3440D8(v34, v35);
        v36 = v16;
        v18 = v17;
        __swift_destroy_boxed_opaque_existential_1(v37);
        v19 = *(a2 + 40);
        v20 = *(a2 + 48);
        __swift_project_boxed_opaque_existential_1((a2 + 16), v19);
        sub_24E2548A0(v19, v20);
        sub_24E344198();
        v22 = v21;
        (*v13)(v8, v5);
        sub_24E0D0BDC(v39);
        v23 = v15 + v22 + *a2;
        v24 = v36 - v18;
        if (*(a2 + 8) > v36 - v18)
        {
          v24 = *(a2 + 8);
        }
      }

      else
      {
        sub_24E0D0BDC(v39);
        sub_24DF98B38(v37);
        v23 = *a2;
        v24 = *(a2 + 8);
      }

      v14 = v14 + v23;
      if (v9 < v24)
      {
        v9 = v24;
      }

      v12 += 80;
      --v11;
    }

    while (v11);
    v25 = *(v32 + 16) + -1.0;
    v6 = v33;
  }

  else
  {
    v14 = 0.0;
    v25 = -1.0;
  }

  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  __swift_project_boxed_opaque_existential_1((a2 + 56), v26);
  sub_24E2548A0(v26, v27);
  sub_24E344198();
  v29 = v28;
  (*(v6 + 8))(v8, v5);
  return v14 + v25 * v29;
}

uint64_t sub_24E0D10CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_24E0D110C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24E0D1198()
{
  qword_27F20AE48 = [objc_allocWithZone(MEMORY[0x277D75D58]) init];
  v0 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_24DFEC928();
  v1 = sub_24E347F08();

  qword_27F20AE50 = v1;
}

uint64_t sub_24E0D1220@<X0>(void *a1@<X8>)
{
  if (qword_27F1DD850 != -1)
  {
    swift_once();
  }

  v2 = qword_27F20AE48;
  v3 = qword_27F20AE50;
  *a1 = qword_27F20AE48;
  a1[1] = v3;
  v4 = v2;
}

uint64_t EnvironmentValues.visualEffects.getter()
{
  sub_24E0D12E4();

  return sub_24E345B78();
}

unint64_t sub_24E0D12E4()
{
  result = qword_27F1E3608;
  if (!qword_27F1E3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3608);
  }

  return result;
}

uint64_t sub_24E0D1338@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.visualEffects.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E0D1374(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4[0] = *a1;
  v4[1] = v1;
  v2 = v4[0];

  return EnvironmentValues.visualEffects.setter(v4);
}

void (*EnvironmentValues.visualEffects.modify(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_24E0D12E4();
  sub_24E345B78();
  return sub_24E0D1474;
}

void sub_24E0D1474(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v2[2] = v3;
  v2[3] = v4;
  if (a2)
  {
    v5 = v3;

    sub_24E345B88();
    v6 = *v2;
  }

  else
  {
    sub_24E345B88();
  }

  free(v2);
}

void *VisualEffectView.effects.getter()
{
  OUTLINED_FUNCTION_1_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3610, &qword_24E375FF0);
  return sub_24E346B88();
}

void *sub_24E0D1564@<X0>(void *a1@<X8>)
{
  result = VisualEffectView.effects.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void sub_24E0D15B0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v9 = *a2;
  v10 = v4;
  v11 = v5;
  v8[0] = v3;
  v8[1] = v2;

  v6 = v3;

  v7 = v9;

  VisualEffectView.effects.setter(v8);
}

uint64_t VisualEffectView.effects.setter(uint64_t *a1)
{
  v2 = *v1;
  v5 = *v1;

  v3 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3610, &qword_24E375FF0);
  sub_24E346B98();
}

void (*VisualEffectView.effects.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v3;
  v5 = *v1;
  v4 = *(v1 + 8);
  v3[10] = *v1;
  v3[11] = v4;
  v6 = *(v1 + 16);
  v3[12] = v6;
  *v3 = v5;
  v3[1] = v4;
  v3[2] = v6;

  v7 = v5;

  v3[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3610, &qword_24E375FF0);
  sub_24E346B88();
  return sub_24E0D178C;
}

void sub_24E0D178C(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*a1 + 24) = *(*a1 + 80);
  v3 = v2[6];
  v2[8] = v3;
  v4 = v2[7];
  v2[5] = v2[12];
  v2[9] = v4;
  if (a2)
  {
    v5 = v3;

    sub_24E346B98();
    v6 = v2[3];

    v7 = v2[6];
  }

  else
  {
    sub_24E346B98();
    v8 = v2[3];
  }

  free(v2);
}

void *VisualEffectView.$effects.getter()
{
  OUTLINED_FUNCTION_1_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3610, &qword_24E375FF0);
  return sub_24E346BA8();
}

__n128 sub_24E0D18AC@<Q0>(__n128 *a2@<X8>)
{
  [objc_allocWithZone(MEMORY[0x277D75D58]) init];
  v3 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_24DFEC928();
  sub_24E347F08();

  sub_24E346B78();
  *a2 = v5;
  a2[1].n128_u64[0] = v6;
  sub_24E346B78();

  result = v5;
  *a2 = v5;
  a2[1].n128_u64[0] = v6;
  return result;
}

void *VisualEffectView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3610, &qword_24E375FF0);
  result = sub_24E346B88();
  *a1 = KeyPath;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

id sub_24E0D1A38()
{
  v0 = sub_24E345B68();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3660, &qword_24E376240);
  sub_24E346018();
  sub_24E0D12E4();
  sub_24E345B78();
  (*(v1 + 8))(v3, v0);
  v4 = v8;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  sub_24DFEC928();
  v6 = sub_24E347EE8();
  [v5 setBackgroundEffects_];

  [v5 setAutoresizingMask_];

  return v5;
}

void sub_24E0D1BAC(void *a1)
{
  v2 = sub_24E345B68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3660, &qword_24E376240);
  sub_24E346018();
  sub_24E0D12E4();
  sub_24E345B78();
  (*(v3 + 8))(v5, v2);
  v6 = v8;
  if (v8 || sub_24DFD8654() >= 1)
  {
    [a1 setHidden_];
    [a1 setEffect_];
    sub_24DFEC928();
    v7 = sub_24E347EE8();
    [a1 setBackgroundEffects_];
  }

  else
  {
    [a1 setHidden_];
  }
}

uint64_t sub_24E0D1D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E0D21B0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E0D1DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E0D21B0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E0D1E20(uint64_t a1)
{
  sub_24E0D21B0();
  sub_24E345E08();
  __break(1u);
}

uint64_t View.visualEffects(_:)(unint64_t *a1)
{
  v6.n128_u64[0] = *a1;
  v1 = v6.n128_u64[0];

  sub_24E0D18AC(&v8);
  v6 = v8;
  v7 = v9;
  sub_24E0D1EFC();
  v2 = sub_24E346E28();
  OUTLINED_FUNCTION_0_93(&v6, v3, v2, v3, &type metadata for VisualEffectView);
  v4 = v6.n128_u64[0];
}

unint64_t sub_24E0D1EFC()
{
  result = qword_27F1E3618;
  if (!qword_27F1E3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3618);
  }

  return result;
}

uint64_t View.visualEffects()()
{
  [objc_allocWithZone(MEMORY[0x277D75D58]) init];
  v0 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_24DFEC928();
  sub_24E347F08();

  sub_24E346B78();
  sub_24E0D1EFC();
  v1 = sub_24E346E28();
  OUTLINED_FUNCTION_0_93(&v5, v2, v1, v2, &type metadata for VisualEffectView);
  v3 = v5;
}

unint64_t sub_24E0D2080()
{
  result = qword_27F1E3620;
  if (!qword_27F1E3620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3628, &qword_24E3760D8);
    sub_24E0D2138();
    sub_24DFB4C28(&qword_27F1E3638, &qword_27F1E3640, &qword_24E3760E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3620);
  }

  return result;
}

unint64_t sub_24E0D2138()
{
  result = qword_27F1E3630;
  if (!qword_27F1E3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3630);
  }

  return result;
}

unint64_t sub_24E0D21B0()
{
  result = qword_27F1E3658;
  if (!qword_27F1E3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3658);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x282132D80](a1, a3, a4, v6, a5, v5, v7);
}

void static GKPlayerGroupView.create()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  sub_24E348458();
  v4 = sub_24E347CB8();

  v5 = [v1 loadNibNamed:v4 owner:0 options:0];

  if (v5)
  {
    v6 = sub_24E347F08();

    if (*(v6 + 16))
    {
      sub_24DFB4104(v6 + 32, v7);

      swift_dynamicCast();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void GKPlayerGroupView.configure(players:messagesGroupIdentifier:playerSelectionProxy:)(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E0D4368(a1, a4);
  if (a3)
  {
    v6 = objc_opt_self();
    v7 = sub_24E347CB8();
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    v11[4] = sub_24E0D521C;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_24E0D5E98;
    v11[3] = &block_descriptor_40;
    v9 = _Block_copy(v11);
    v10 = v4;

    [v6 _gkMessageGroupImageWithIdentifier_handler_];
    _Block_release(v9);
  }
}

void sub_24E0D24D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView);
  if (v1)
  {
    [v1 setHidden_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = Strong;
  [Strong setPlayer_];

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_13_26(v4);

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_13_26(v5);

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_13_26(v6);

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_26(v7);

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_13_26(v8);

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 setPlayer_];
}

id GKPlayerGroupBaseView.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for GKPlayerGroupBaseView();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id GKPlayerGroupBaseView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKPlayerGroupBaseView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id GKPlayerGroupBaseView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKPlayerGroupBaseView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E0D2800()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D28E0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D29C0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D2AA0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D2B80()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D2C60()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D2D40()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D2E20()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D2F00()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D2FE0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D30C0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D31A0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3280()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3360()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3440()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3520()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3600()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D36E0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D37C0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D38A0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3980()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3A60()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3B40()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3C20()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3D00()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3DE0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3EC0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D3FA0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D4080()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E0D40C4()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F1E3668 = v3;
  unk_27F1E3670 = v5;
}

Swift::Void __swiftcall GKPlayerGroupView.awakeFromNib()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_awakeFromNib);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong layer];

    LODWORD(v2) = GKIsRemoteUI();
    v4 = objc_opt_self();
    v5 = &selRef_whiteColor;
    if (!v2)
    {
      v5 = &selRef_labelColor;
    }

    v6 = [v4 *v5];
    v7 = [v6 colorWithAlphaComponent_];

    v8 = [v7 CGColor];
    [v3 setBackgroundColor_];

    v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setHidden_];
    [v0 addSubview_];
    [objc_opt_self() _gkInstallEdgeConstraintsForView_containedWithinParentView_edgeInsets_];

    v10 = *&v0[OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView];
    *&v0[OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView] = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_24E0D4368(id *a1, uint64_t a2)
{
  v5 = sub_24DFD8654();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v7 = Strong;
  v8 = &selRef_setContactLookup_;
  [Strong setHidden_];

  v9 = *&v2[OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView];
  if (v9)
  {
    [v9 setHidden_];
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_171;
  }

  v11 = v10;
  [v10 setUserInteractionEnabled_];

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  OUTLINED_FUNCTION_9_33(v12);

  v310 = OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView3;
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  OUTLINED_FUNCTION_9_33(v13);

  v303 = OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView4;
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_9_33(v14);

  v292 = OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView5;
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_9_33(v15);

  v277 = OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView6;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  OUTLINED_FUNCTION_9_33(v16);

  v17 = OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView7;
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  OUTLINED_FUNCTION_9_33(v18);

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v20 = v19;
  OUTLINED_FUNCTION_18_20(v19);

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v22 = v21;
  OUTLINED_FUNCTION_18_20(v21);

  v31 = OUTLINED_FUNCTION_35_8(v23, v24, v25, v26, v27, v28, v29, v30, v247, v262, v277, v292, v303, v310);
  if (!v31)
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v32 = v31;
  OUTLINED_FUNCTION_18_20(v31);

  v41 = OUTLINED_FUNCTION_34_8(v33, v34, v35, v36, v37, v38, v39, v40, v248, v263, v278, v293, v304);
  if (!v41)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v42 = v41;
  OUTLINED_FUNCTION_18_20(v41);

  v51 = OUTLINED_FUNCTION_33_9(v43, v44, v45, v46, v47, v48, v49, v50, v249, v264, v279, v294);
  if (!v51)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v52 = v51;
  OUTLINED_FUNCTION_18_20(v51);

  v61 = OUTLINED_FUNCTION_32_12(v53, v54, v55, v56, v57, v58, v59, v60, v250, v265, v280);
  if (!v61)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v62 = v61;
  OUTLINED_FUNCTION_18_20(v61);

  v63 = swift_unknownObjectWeakLoadStrong();
  if (!v63)
  {
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v64 = v63;
  OUTLINED_FUNCTION_18_20(v63);

  if (a2)
  {
    swift_unknownObjectWeakAssign();
    v65 = swift_unknownObjectWeakLoadStrong();
    if (!v65)
    {
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
      return;
    }

    v66 = v65;
    if (v5 < 1)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      OUTLINED_FUNCTION_14_21();
      sub_24DFFA844();
      if (&selRef_setContactLookup_)
      {
        swift_unknownObjectRetain();
        v68 = MEMORY[0x25303F560](0, a1);
      }

      else
      {
        v67 = a1[4];
        swift_unknownObjectRetain();
        v68 = v67;
      }

      v8 = v68;
      OUTLINED_FUNCTION_22_16(v68, sel_playerIsSelectable_);
    }

    OUTLINED_FUNCTION_17_19();

    v69 = swift_unknownObjectWeakLoadStrong();
    if (!v69)
    {
      goto LABEL_200;
    }

    v70 = v69;
    if (v5 >= 2)
    {
      OUTLINED_FUNCTION_14_21();
      sub_24DFFA844();
      if (v8)
      {
        v71 = MEMORY[0x25303F560](1, a1);
      }

      else
      {
        v71 = a1[5];
      }

      v8 = v71;
      OUTLINED_FUNCTION_22_16(v71, sel_playerIsSelectable_);
    }

    OUTLINED_FUNCTION_17_19();

    v80 = OUTLINED_FUNCTION_35_8(v72, v73, v74, v75, v76, v77, v78, v79, v251, v17, v281, v295, v305, v311);
    if (!v80)
    {
      goto LABEL_201;
    }

    v81 = v80;
    if (v5 >= 3)
    {
      OUTLINED_FUNCTION_14_21();
      sub_24DFFA844();
      if (v8)
      {
        v82 = MEMORY[0x25303F560](2, a1);
      }

      else
      {
        v82 = a1[6];
      }

      v8 = v82;
      OUTLINED_FUNCTION_22_16(v82, sel_playerIsSelectable_);
    }

    OUTLINED_FUNCTION_17_19();

    v91 = OUTLINED_FUNCTION_34_8(v83, v84, v85, v86, v87, v88, v89, v90, v252, v267, v282, v296, v306);
    if (!v91)
    {
      goto LABEL_202;
    }

    v92 = v91;
    if (v5 >= 4)
    {
      OUTLINED_FUNCTION_14_21();
      sub_24DFFA844();
      if (v8)
      {
        v93 = MEMORY[0x25303F560](3, a1);
      }

      else
      {
        v93 = a1[7];
      }

      v8 = v93;
      OUTLINED_FUNCTION_22_16(v93, sel_playerIsSelectable_);
    }

    OUTLINED_FUNCTION_17_19();

    v102 = OUTLINED_FUNCTION_33_9(v94, v95, v96, v97, v98, v99, v100, v101, v253, v268, v283, v297);
    if (!v102)
    {
      goto LABEL_203;
    }

    v103 = v102;
    if (v5 >= 5)
    {
      OUTLINED_FUNCTION_14_21();
      sub_24DFFA844();
      if (v8)
      {
        v104 = MEMORY[0x25303F560](4, a1);
      }

      else
      {
        v104 = a1[8];
      }

      v8 = v104;
      OUTLINED_FUNCTION_22_16(v104, sel_playerIsSelectable_);
    }

    OUTLINED_FUNCTION_17_19();

    v113 = OUTLINED_FUNCTION_32_12(v105, v106, v107, v108, v109, v110, v111, v112, v254, v269, v284);
    if (!v113)
    {
      goto LABEL_204;
    }

    v114 = v113;
    if (v5 >= 6)
    {
      OUTLINED_FUNCTION_14_21();
      sub_24DFFA844();
      if (v8)
      {
        v115 = MEMORY[0x25303F560](5, a1);
      }

      else
      {
        v115 = a1[9];
      }

      v8 = v115;
      OUTLINED_FUNCTION_22_16(v115, sel_playerIsSelectable_);
    }

    OUTLINED_FUNCTION_17_19();

    v116 = swift_unknownObjectWeakLoadStrong();
    if (!v116)
    {
      goto LABEL_205;
    }

    v117 = v116;
    if (v5 >= 7)
    {
      OUTLINED_FUNCTION_14_21();
      sub_24DFFA844();
      if (v8)
      {
        v118 = MEMORY[0x25303F560](6, a1);
      }

      else
      {
        v118 = a1[10];
      }

      v119 = v118;
      OUTLINED_FUNCTION_22_16(v118, sel_playerIsSelectable_);
    }

    OUTLINED_FUNCTION_17_19();
    swift_unknownObjectRelease();
  }

  v120 = swift_unknownObjectWeakLoadStrong();
  if (!v120)
  {
    goto LABEL_185;
  }

  v121 = v120;
  if (v5 < 1)
  {
    v122 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    v122 = MEMORY[0x25303F560](0, a1);
  }

  v123 = 0x1FB11D000;
  OUTLINED_FUNCTION_6_44();

  v124 = swift_unknownObjectWeakLoadStrong();
  if (!v124)
  {
    goto LABEL_186;
  }

  v125 = v124;
  if (v5 >= 2)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v122)
    {
      v127 = MEMORY[0x25303F560](1, a1);
    }

    else
    {
      v127 = a1[5];
    }

    v126 = v127;
  }

  else
  {
    v126 = 0;
  }

  OUTLINED_FUNCTION_6_44();

  v136 = OUTLINED_FUNCTION_35_8(v128, v129, v130, v131, v132, v133, v134, v135, v251, v266, v281, v295, v305, v311);
  if (!v136)
  {
    goto LABEL_187;
  }

  v137 = v136;
  if (v5 >= 3)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v126)
    {
      v139 = MEMORY[0x25303F560](2, a1);
    }

    else
    {
      v139 = a1[6];
    }

    v138 = v139;
  }

  else
  {
    v138 = 0;
  }

  OUTLINED_FUNCTION_6_44();

  v148 = OUTLINED_FUNCTION_34_8(v140, v141, v142, v143, v144, v145, v146, v147, v255, v270, v285, v298, v307);
  if (!v148)
  {
    goto LABEL_188;
  }

  v149 = v148;
  if (v5 >= 4)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v138)
    {
      v151 = MEMORY[0x25303F560](3, a1);
    }

    else
    {
      v151 = a1[7];
    }

    v150 = v151;
  }

  else
  {
    v150 = 0;
  }

  OUTLINED_FUNCTION_6_44();

  v160 = OUTLINED_FUNCTION_33_9(v152, v153, v154, v155, v156, v157, v158, v159, v256, v271, v286, v299);
  if (!v160)
  {
    goto LABEL_189;
  }

  v161 = v160;
  if (v5 >= 5)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v150)
    {
      v163 = MEMORY[0x25303F560](4, a1);
    }

    else
    {
      v163 = a1[8];
    }

    v162 = v163;
  }

  else
  {
    v162 = 0;
  }

  OUTLINED_FUNCTION_6_44();

  v172 = OUTLINED_FUNCTION_32_12(v164, v165, v166, v167, v168, v169, v170, v171, v257, v272, v287);
  if (!v172)
  {
    goto LABEL_190;
  }

  v173 = v172;
  if (v5 >= 6)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v162)
    {
      v175 = MEMORY[0x25303F560](5, a1);
    }

    else
    {
      v175 = a1[9];
    }

    v174 = v175;
  }

  else
  {
    v174 = 0;
  }

  OUTLINED_FUNCTION_6_44();

  v176 = swift_unknownObjectWeakLoadStrong();
  if (!v176)
  {
    goto LABEL_191;
  }

  v177 = v176;
  if (v5 >= 7)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v174)
    {
      v179 = MEMORY[0x25303F560](6, a1);
    }

    else
    {
      v179 = a1[10];
    }

    v178 = v179;
  }

  else
  {
    v178 = 0;
  }

  OUTLINED_FUNCTION_6_44();

  if (qword_27F1DD858 != -1)
  {
    swift_once();
  }

  v180 = sub_24E347CB8();
  [v2 setAccessibilityLabel_];

  v181 = swift_unknownObjectWeakLoadStrong();
  if (!v181)
  {
    goto LABEL_192;
  }

  v182 = v181;
  if (v5 < 1)
  {
    v184 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v178)
    {
      v183 = MEMORY[0x25303F560](0, a1);
    }

    else
    {
      v183 = a1[4];
    }

    v184 = OUTLINED_FUNCTION_23_17(v183);

    if (!v184)
    {
      sub_24E347CF8();
      v123 = v185;
      sub_24E347CB8();
      OUTLINED_FUNCTION_27_10();
    }
  }

  OUTLINED_FUNCTION_11_23();

  v186 = swift_unknownObjectWeakLoadStrong();
  if (!v186)
  {
    goto LABEL_193;
  }

  v187 = v186;
  if (v5 >= 2)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v184)
    {
      v189 = MEMORY[0x25303F560](1, a1);
    }

    else
    {
      v189 = a1[5];
    }

    v188 = OUTLINED_FUNCTION_23_17(v189);

    if (!v188)
    {
      sub_24E347CF8();
      v123 = v190;
      sub_24E347CB8();
      OUTLINED_FUNCTION_27_10();
    }
  }

  else
  {
    v188 = 0;
  }

  OUTLINED_FUNCTION_11_23();

  v199 = OUTLINED_FUNCTION_35_8(v191, v192, v193, v194, v195, v196, v197, v198, v258, v273, v288, v300, v308, v312);
  if (!v199)
  {
    goto LABEL_194;
  }

  v200 = v199;
  if (v5 >= 3)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v188)
    {
      v202 = MEMORY[0x25303F560](2, a1);
    }

    else
    {
      v202 = a1[6];
    }

    v201 = OUTLINED_FUNCTION_23_17(v202);

    if (!v201)
    {
      sub_24E347CF8();
      v123 = v203;
      sub_24E347CB8();
      OUTLINED_FUNCTION_27_10();
    }
  }

  else
  {
    v201 = 0;
  }

  OUTLINED_FUNCTION_11_23();

  v212 = OUTLINED_FUNCTION_34_8(v204, v205, v206, v207, v208, v209, v210, v211, v259, v274, v289, v301, v309);
  if (!v212)
  {
    goto LABEL_195;
  }

  v213 = v212;
  if (v5 >= 4)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v201)
    {
      v215 = MEMORY[0x25303F560](3, a1);
    }

    else
    {
      v215 = a1[7];
    }

    v214 = OUTLINED_FUNCTION_23_17(v215);

    if (!v214)
    {
      sub_24E347CF8();
      v123 = v216;
      sub_24E347CB8();
      OUTLINED_FUNCTION_27_10();
    }
  }

  else
  {
    v214 = 0;
  }

  OUTLINED_FUNCTION_11_23();

  v225 = OUTLINED_FUNCTION_33_9(v217, v218, v219, v220, v221, v222, v223, v224, v260, v275, v290, v302);
  if (!v225)
  {
    goto LABEL_196;
  }

  v226 = v225;
  if (v5 >= 5)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v214)
    {
      v228 = MEMORY[0x25303F560](4, a1);
    }

    else
    {
      v228 = a1[8];
    }

    v227 = OUTLINED_FUNCTION_23_17(v228);

    if (!v227)
    {
      sub_24E347CF8();
      v123 = v229;
      sub_24E347CB8();
      OUTLINED_FUNCTION_27_10();
    }
  }

  else
  {
    v227 = 0;
  }

  OUTLINED_FUNCTION_11_23();

  v238 = OUTLINED_FUNCTION_32_12(v230, v231, v232, v233, v234, v235, v236, v237, v261, v276, v291);
  if (!v238)
  {
    goto LABEL_197;
  }

  v239 = v238;
  if (v5 >= 6)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v227)
    {
      v241 = MEMORY[0x25303F560](5, a1);
    }

    else
    {
      v241 = a1[9];
    }

    v240 = OUTLINED_FUNCTION_23_17(v241);

    if (!v240)
    {
      sub_24E347CF8();
      sub_24E347CB8();
      OUTLINED_FUNCTION_27_10();
    }
  }

  else
  {
    v240 = 0;
  }

  OUTLINED_FUNCTION_11_23();

  v242 = swift_unknownObjectWeakLoadStrong();
  if (!v242)
  {
    goto LABEL_198;
  }

  v243 = v242;
  if (v5 >= 7)
  {
    OUTLINED_FUNCTION_4_53();
    sub_24DFFA844();
    if (v240)
    {
      v245 = MEMORY[0x25303F560](6, a1);
    }

    else
    {
      v245 = a1[10];
    }

    v246 = v245;
    v244 = [v245 alias];

    if (!v244)
    {
      sub_24E347CF8();
      v244 = sub_24E347CB8();
    }
  }

  else
  {
    v244 = 0;
  }

  [v243 setAccessibilityLabel_];

  *&v2[OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerCount] = v5;

  sub_24E0D5224();
}

void sub_24E0D5010(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = Strong;
  v23 = a1;
  [v5 setHidden_];

  v6 = OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView;
  v7 = *(a2 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView);
  if (v7)
  {
    [v7 setHidden_];
    v8 = *(a2 + v6);
    if (v8)
    {
      [v8 setImage_];
    }
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  [v9 setPlayer_];

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  [v11 setPlayer_];

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13;
  [v13 setPlayer_];

  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  [v15 setPlayer_];

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17;
  [v17 setPlayer_];

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v19;
  [v19 setPlayer_];

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 setPlayer_];

  sub_24E0D5224();
}

void sub_24E0D5224()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong frame];
    OUTLINED_FUNCTION_8_2();

    v290.origin.x = OUTLINED_FUNCTION_7_2();
    v5 = CGRectGetWidth(v290) / 72.0;
    switch(*(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerCount))
    {
      case 0:
      case 1:
        if (!OUTLINED_FUNCTION_21_16())
        {
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_3_58();
        [v6 v7];

        if (!OUTLINED_FUNCTION_20_16())
        {
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_3_58();
        [v8 v9];

        if (!OUTLINED_FUNCTION_19_17())
        {
          goto LABEL_101;
        }

        v10 = 72.0;
        goto LABEL_94;
      case 2:
        goto LABEL_39;
      case 3:
        v11 = OUTLINED_FUNCTION_21_16();
        if (!v11)
        {
          goto LABEL_102;
        }

        v12 = v11;
        v13 = OUTLINED_FUNCTION_1_78(17.0);
        [v14 v15];

        v16 = OUTLINED_FUNCTION_20_16();
        if (!v16)
        {
          goto LABEL_108;
        }

        v17 = v16;
        v18 = OUTLINED_FUNCTION_1_78(8.0);
        [v19 v20];

        v21 = OUTLINED_FUNCTION_19_17();
        if (!v21)
        {
          goto LABEL_114;
        }

        v22 = v21;
        OUTLINED_FUNCTION_5_52(v21, 24.0);

        if (!OUTLINED_FUNCTION_26_13())
        {
          goto LABEL_120;
        }

        v23 = OUTLINED_FUNCTION_15_20();
        v24 = OUTLINED_FUNCTION_1_78(v23);
        [v25 v26];

        v27 = OUTLINED_FUNCTION_25_15();
        if (!v27)
        {
          goto LABEL_126;
        }

        v28 = v27;
        v29 = OUTLINED_FUNCTION_1_78(21.0);
        [v30 v31];

        if (!OUTLINED_FUNCTION_24_11())
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_3_58();
        [v32 v33];

        v34 = OUTLINED_FUNCTION_28_12();
        if (!v34)
        {
          goto LABEL_137;
        }

        v35 = v34;
        OUTLINED_FUNCTION_8_35(v34, 11.0);

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_142;
        }

        OUTLINED_FUNCTION_3_58();
        [v36 v37];

        v38 = swift_unknownObjectWeakLoadStrong();
        if (!v38)
        {
          goto LABEL_147;
        }

        v288 = v38;
        [v38 &selRef_sectionToMetrics + 2];
        goto LABEL_95;
      case 4:
        if (!OUTLINED_FUNCTION_21_16())
        {
          goto LABEL_107;
        }

        v244 = OUTLINED_FUNCTION_16_21();
        v245 = OUTLINED_FUNCTION_1_78(v244);
        [v246 v247];

        v248 = OUTLINED_FUNCTION_20_16();
        if (!v248)
        {
          goto LABEL_113;
        }

        v249 = v248;
        v250 = OUTLINED_FUNCTION_1_78(14.0);
        [v251 v252];

        v253 = OUTLINED_FUNCTION_19_17();
        if (!v253)
        {
          goto LABEL_119;
        }

        v254 = v253;
        v255 = OUTLINED_FUNCTION_1_78(28.0);
        [v256 v257];

        if (!OUTLINED_FUNCTION_26_13())
        {
          goto LABEL_125;
        }

        v258 = OUTLINED_FUNCTION_15_20();
        v259 = OUTLINED_FUNCTION_1_78(v258);
        [v260 v261];

        v262 = OUTLINED_FUNCTION_25_15();
        if (!v262)
        {
          goto LABEL_131;
        }

        v263 = v262;
        v264 = OUTLINED_FUNCTION_1_78(29.0);
        [v265 v266];

        v267 = OUTLINED_FUNCTION_24_11();
        if (!v267)
        {
          goto LABEL_136;
        }

        v268 = v267;
        OUTLINED_FUNCTION_5_52(v267, 24.0);

        v269 = OUTLINED_FUNCTION_28_12();
        if (!v269)
        {
          goto LABEL_141;
        }

        v270 = v269;
        v271 = OUTLINED_FUNCTION_1_78(25.0);
        [v272 v273];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_146;
        }

        v274 = OUTLINED_FUNCTION_31_8();
        OUTLINED_FUNCTION_8_35(v275, v274);

        v276 = swift_unknownObjectWeakLoadStrong();
        if (!v276)
        {
          goto LABEL_151;
        }

        v277 = v276;
        v278 = OUTLINED_FUNCTION_1_78(22.0);
        [v279 v280];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_155;
        }

        OUTLINED_FUNCTION_3_58();
        [v281 v282];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_159;
        }

        OUTLINED_FUNCTION_3_58();
        [v283 v284];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_163;
        }

        v10 = 13.0;
        goto LABEL_94;
      case 5:
        goto LABEL_46;
      case 6:
        if (!OUTLINED_FUNCTION_21_16())
        {
          goto LABEL_106;
        }

        v181 = OUTLINED_FUNCTION_16_21();
        OUTLINED_FUNCTION_5_52(v182, v181);

        if (!OUTLINED_FUNCTION_20_16())
        {
          goto LABEL_112;
        }

        OUTLINED_FUNCTION_3_58();
        [v183 v184];

        v185 = OUTLINED_FUNCTION_19_17();
        if (!v185)
        {
          goto LABEL_118;
        }

        v186 = v185;
        v187 = OUTLINED_FUNCTION_1_78(33.0);
        [v188 v189];

        if (!OUTLINED_FUNCTION_26_13())
        {
          goto LABEL_124;
        }

        v190 = OUTLINED_FUNCTION_31_8();
        v191 = OUTLINED_FUNCTION_1_78(v190);
        [v192 v193];

        v194 = OUTLINED_FUNCTION_25_15();
        if (!v194)
        {
          goto LABEL_130;
        }

        v195 = v194;
        v196 = OUTLINED_FUNCTION_1_78(17.0);
        [v197 v198];

        v199 = OUTLINED_FUNCTION_24_11();
        if (!v199)
        {
          goto LABEL_135;
        }

        v200 = v199;
        v201 = OUTLINED_FUNCTION_1_78(25.0);
        [v202 v203];

        v204 = OUTLINED_FUNCTION_28_12();
        if (!v204)
        {
          goto LABEL_140;
        }

        v205 = v204;
        v206 = OUTLINED_FUNCTION_1_78(21.0);
        [v207 v208];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_145;
        }

        v209 = OUTLINED_FUNCTION_15_20();
        OUTLINED_FUNCTION_8_35(v210, v209);

        v211 = swift_unknownObjectWeakLoadStrong();
        if (!v211)
        {
          goto LABEL_150;
        }

        v212 = v211;
        v213 = OUTLINED_FUNCTION_1_78(20.0);
        [v214 v215];

        v216 = swift_unknownObjectWeakLoadStrong();
        if (!v216)
        {
          goto LABEL_154;
        }

        v217 = v216;
        [v216 &selRef_sectionToMetrics + 2];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_158;
        }

        OUTLINED_FUNCTION_3_58();
        [v218 v219];

        v220 = swift_unknownObjectWeakLoadStrong();
        if (!v220)
        {
          goto LABEL_162;
        }

        v221 = v220;
        v222 = OUTLINED_FUNCTION_1_78(15.0);
        [v223 v224];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_166;
        }

        OUTLINED_FUNCTION_3_58();
        [v225 v226];

        v227 = swift_unknownObjectWeakLoadStrong();
        if (!v227)
        {
          goto LABEL_169;
        }

        v228 = v227;
        v229 = OUTLINED_FUNCTION_1_78(19.0);
        [v230 v231];

        v232 = swift_unknownObjectWeakLoadStrong();
        if (!v232)
        {
          goto LABEL_172;
        }

        v233 = v232;
        v234 = OUTLINED_FUNCTION_1_78(10.0);
        [v235 v236];

        v237 = swift_unknownObjectWeakLoadStrong();
        if (!v237)
        {
          goto LABEL_174;
        }

        v238 = v237;
        v239 = OUTLINED_FUNCTION_1_78(39.0);
        [v240 v241];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_176;
        }

        OUTLINED_FUNCTION_3_58();
        [v242 v243];

        v111 = swift_unknownObjectWeakLoadStrong();
        if (!v111)
        {
          goto LABEL_178;
        }

        goto LABEL_80;
      default:
        if (!OUTLINED_FUNCTION_21_16())
        {
          goto LABEL_103;
        }

        v39 = OUTLINED_FUNCTION_16_21();
        OUTLINED_FUNCTION_5_52(v40, v39);

        if (!OUTLINED_FUNCTION_20_16())
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_3_58();
        [v41 v42];

        v43 = OUTLINED_FUNCTION_19_17();
        if (!v43)
        {
          goto LABEL_115;
        }

        v44 = v43;
        v45 = OUTLINED_FUNCTION_1_78(33.0);
        [v46 v47];

        v48 = OUTLINED_FUNCTION_26_13();
        if (!v48)
        {
          goto LABEL_121;
        }

        v49 = v48;
        v50 = OUTLINED_FUNCTION_1_78(8.0);
        [v51 v52];

        v53 = OUTLINED_FUNCTION_25_15();
        if (!v53)
        {
          goto LABEL_127;
        }

        v54 = v53;
        v55 = OUTLINED_FUNCTION_1_78(15.0);
        [v56 v57];

        v58 = OUTLINED_FUNCTION_24_11();
        if (!v58)
        {
          goto LABEL_133;
        }

        v59 = v58;
        v60 = OUTLINED_FUNCTION_1_78(23.0);
        [v61 v62];

        v63 = OUTLINED_FUNCTION_28_12();
        if (!v63)
        {
          goto LABEL_138;
        }

        v64 = v63;
        OUTLINED_FUNCTION_5_52(v63, 13.0);

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_143;
        }

        OUTLINED_FUNCTION_3_58();
        [v65 v66];

        v67 = swift_unknownObjectWeakLoadStrong();
        if (!v67)
        {
          goto LABEL_148;
        }

        v68 = v67;
        OUTLINED_FUNCTION_5_52(v67, 14.0);

        v69 = swift_unknownObjectWeakLoadStrong();
        if (!v69)
        {
          goto LABEL_152;
        }

        v70 = v69;
        v71 = OUTLINED_FUNCTION_1_78(10.0);
        [v72 v73];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_156;
        }

        OUTLINED_FUNCTION_3_58();
        [v74 v75];

        v76 = swift_unknownObjectWeakLoadStrong();
        if (!v76)
        {
          goto LABEL_160;
        }

        v77 = v76;
        v78 = OUTLINED_FUNCTION_1_78(16.0);
        [v79 v80];

        v81 = swift_unknownObjectWeakLoadStrong();
        if (!v81)
        {
          goto LABEL_164;
        }

        v82 = v81;
        v83 = OUTLINED_FUNCTION_1_78(32.0);
        [v84 v85];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_167;
        }

        v86 = OUTLINED_FUNCTION_31_8();
        OUTLINED_FUNCTION_5_52(v87, v86);

        v88 = swift_unknownObjectWeakLoadStrong();
        if (!v88)
        {
          goto LABEL_170;
        }

        v89 = v88;
        v90 = OUTLINED_FUNCTION_1_78(11.0);
        [v91 v92];

        v93 = swift_unknownObjectWeakLoadStrong();
        if (!v93)
        {
          goto LABEL_173;
        }

        v94 = v93;
        v95 = OUTLINED_FUNCTION_1_78(41.0);
        [v96 v97];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_175;
        }

        v98 = OUTLINED_FUNCTION_15_20();
        OUTLINED_FUNCTION_8_35(v99, v98);

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_177;
        }

        OUTLINED_FUNCTION_3_58();
        [v100 v101];

        v102 = swift_unknownObjectWeakLoadStrong();
        if (!v102)
        {
          goto LABEL_179;
        }

        v103 = v102;
        v104 = OUTLINED_FUNCTION_1_78(30.0);
        [v105 v106];

        v107 = swift_unknownObjectWeakLoadStrong();
        if (!v107)
        {
          goto LABEL_180;
        }

        v4 = v107;
        v108 = OUTLINED_FUNCTION_1_78(20.0);
        [v109 v110];

        v111 = swift_unknownObjectWeakLoadStrong();
        if (v111)
        {
          goto LABEL_80;
        }

        __break(1u);
LABEL_39:
        if (!OUTLINED_FUNCTION_21_16())
        {
          goto LABEL_104;
        }

        v112 = OUTLINED_FUNCTION_16_21();
        v113 = OUTLINED_FUNCTION_1_78(v112);
        [v114 v115];

        v116 = OUTLINED_FUNCTION_20_16();
        if (!v116)
        {
          goto LABEL_110;
        }

        v117 = v116;
        OUTLINED_FUNCTION_5_52(v116, 13.0);

        v118 = OUTLINED_FUNCTION_19_17();
        if (!v118)
        {
          goto LABEL_116;
        }

        v4 = v118;
        OUTLINED_FUNCTION_8_35(v118, 28.0);

        if (!OUTLINED_FUNCTION_26_13())
        {
          goto LABEL_122;
        }

        v119 = OUTLINED_FUNCTION_15_20();
        v120 = OUTLINED_FUNCTION_1_78(v119);
        [v121 v122];

        if (!OUTLINED_FUNCTION_25_15())
        {
          goto LABEL_128;
        }

        OUTLINED_FUNCTION_3_58();
        [v123 v124];

        v111 = OUTLINED_FUNCTION_24_11();
        if (v111)
        {
LABEL_80:
          v288 = v111;
          [v111 setConstant_];
LABEL_95:

          return;
        }

        __break(1u);
LABEL_46:
        if (!OUTLINED_FUNCTION_21_16())
        {
          goto LABEL_105;
        }

        v125 = OUTLINED_FUNCTION_16_21();
        v126 = OUTLINED_FUNCTION_1_78(v125);
        [v127 v128];

        v129 = OUTLINED_FUNCTION_20_16();
        if (!v129)
        {
          goto LABEL_111;
        }

        v130 = v129;
        v131 = OUTLINED_FUNCTION_1_78(14.0);
        [v132 v133];

        v134 = OUTLINED_FUNCTION_19_17();
        if (!v134)
        {
          goto LABEL_117;
        }

        v135 = v134;
        v136 = OUTLINED_FUNCTION_1_78(28.0);
        [v137 v138];

        if (!OUTLINED_FUNCTION_26_13())
        {
          goto LABEL_123;
        }

        v139 = OUTLINED_FUNCTION_15_20();
        v140 = OUTLINED_FUNCTION_1_78(v139);
        [v141 v142];

        v143 = OUTLINED_FUNCTION_25_15();
        if (!v143)
        {
          goto LABEL_129;
        }

        v144 = v143;
        v145 = OUTLINED_FUNCTION_1_78(29.0);
        [v146 v147];

        v148 = OUTLINED_FUNCTION_24_11();
        if (!v148)
        {
          goto LABEL_134;
        }

        v149 = v148;
        OUTLINED_FUNCTION_5_52(v148, 24.0);

        v150 = OUTLINED_FUNCTION_28_12();
        if (!v150)
        {
          goto LABEL_139;
        }

        v151 = v150;
        v152 = OUTLINED_FUNCTION_1_78(25.0);
        [v153 v154];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_144;
        }

        v155 = OUTLINED_FUNCTION_31_8();
        OUTLINED_FUNCTION_8_35(v156, v155);

        v157 = swift_unknownObjectWeakLoadStrong();
        if (!v157)
        {
          goto LABEL_149;
        }

        v158 = v157;
        v159 = OUTLINED_FUNCTION_1_78(22.0);
        [v160 v161];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_153;
        }

        OUTLINED_FUNCTION_3_58();
        [v162 v163];

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_157;
        }

        OUTLINED_FUNCTION_3_58();
        [v164 v165];

        v166 = swift_unknownObjectWeakLoadStrong();
        if (!v166)
        {
          goto LABEL_161;
        }

        v167 = v166;
        v168 = OUTLINED_FUNCTION_1_78(13.0);
        [v169 v170];

        v171 = swift_unknownObjectWeakLoadStrong();
        if (!v171)
        {
          goto LABEL_165;
        }

        v172 = v171;
        v173 = OUTLINED_FUNCTION_1_78(8.0);
        [v174 v175];

        v176 = swift_unknownObjectWeakLoadStrong();
        if (!v176)
        {
          goto LABEL_168;
        }

        v177 = v176;
        v178 = OUTLINED_FUNCTION_1_78(15.0);
        [v179 v180];

        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = 12.0;
LABEL_94:
          v285 = OUTLINED_FUNCTION_1_78(v10);
          v288 = v286;
          [v286 v287];
          goto LABEL_95;
        }

        break;
    }
  }

  else
  {
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
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
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
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
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
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
  }

  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
}