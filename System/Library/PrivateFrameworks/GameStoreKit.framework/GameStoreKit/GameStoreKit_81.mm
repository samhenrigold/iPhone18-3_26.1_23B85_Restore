uint64_t sub_24EE3AE4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ASKBootstrapV2(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EE3AF0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ASKBootstrapV2(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EE3AFB0(uint64_t a1)
{
  result = type metadata accessor for ASKBootstrapV2(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RenderPipelineDiagnostics.Recorder();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_24EE3B044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v35 = a3;
  v37 = a1;
  v38 = a2;
  ObjectType = swift_getObjectType();
  v36 = sub_24F929078();
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F92AAB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92AAE8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = sub_24E69A5C4(0, &qword_27F231410, 0x277CEC4A8);
  v42[4] = &protocol witness table for ASDSubscriptionEntitlements;
  v42[0] = v35;
  v41[3] = sub_24E69A5C4(0, &qword_27F221568, 0x277CB8F48);
  v41[4] = &protocol witness table for ACAccountStore;
  v41[0] = a4;
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue] = 0;
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler] = 0;
  v18 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_observers;
  *&a5[v18] = sub_24E60F260(MEMORY[0x277D84F90]);
  v19 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock;
  *&a5[v19] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentCallbacks] = MEMORY[0x277D84F98];
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v10, qword_27F39C380);
  (*(v11 + 16))(v13, v20, v10);
  sub_24F92AAD8();
  v21 = v36;
  (*(v7 + 104))(v9, *MEMORY[0x277D21DD8], v36);
  v22 = sub_24F92A578();
  (*(v7 + 8))(v9, v21);
  (*(v15 + 8))(v17, v14);
  v23 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger];
  v24 = sub_24F928EB8();
  v25 = MEMORY[0x277D21D78];
  *(v23 + 3) = v24;
  *(v23 + 4) = v25;
  *v23 = v22;
  v26 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId];
  v27 = v38;
  *v26 = v37;
  *(v26 + 1) = v27;
  sub_24E615E00(v42, &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements]);
  v28 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  *v28 = 0;
  v28[8] = -64;
  sub_24E615E00(v41, &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider]);
  v40.receiver = a5;
  v40.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v40, sel_init);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 defaultCenter];
  [v32 addObserver:v31 selector:sel_entitlementsDidChange name:*MEMORY[0x277CEC318] object:0];

  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v31;
}

id sub_24EE3B4EC(uint64_t a1)
{
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  v1 = ASKBagContract.arcadeProductFamilyId.getter();
  v3 = v2;
  v4 = [objc_opt_self() sharedInstance];
  sub_24E69A5C4(0, &qword_27F221568, 0x277CB8F48);
  sub_24F92A758();
  v5 = objc_allocWithZone(type metadata accessor for ArcadeSubscriptionManager());
  v6 = sub_24EE3B044(v1, v3, v4, v8, v5);
  LOBYTE(v8) = 1;
  ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&v8);

  return v6;
}

uint64_t sub_24EE3B60C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v103 = a4;
  v88 = a3;
  v98 = a2;
  v105 = sub_24F928188();
  v111 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_24F928BC8();
  MEMORY[0x28223BE20](v99);
  v100 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9290F8();
  v94 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v92 = (&v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v91 = &v87 - v10;
  MEMORY[0x28223BE20](v11);
  v93 = &v87 - v12;
  v89 = type metadata accessor for ArcadeSubscriptionStatusFieldsProvider(0);
  MEMORY[0x28223BE20](v89);
  v106 = (&v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ArcadeSubscriptionFieldsProvider(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F929F48();
  v109 = *(v17 - 8);
  v110 = v17;
  MEMORY[0x28223BE20](v17);
  v96 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v87 - v20;
  v22 = sub_24F929158();
  v95 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v112 = &v87 - v26;
  v27 = sub_24F92A498();
  v101 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v97 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v87 - v30;
  sub_24F928FD8();
  v107 = v31;
  v102 = v27;
  sub_24F92A758();
  v113 = a1;
  v108 = v22;
  sub_24F92A758();
  v114 = v21;
  sub_24F929098();
  v90 = v24;
  sub_24F929148();
  v32 = *(v14 + 20);
  v33 = *MEMORY[0x277D22340];
  v34 = sub_24F92A2D8();
  v35 = *(*(v34 - 8) + 104);
  v35(&v16[v32], v33, v34);
  v36 = v88;
  *v16 = v88;
  v119 = v14;
  v120 = sub_24EE3D180(&qword_27F2313B8, type metadata accessor for ArcadeSubscriptionFieldsProvider, &protocol conformance descriptor for ArcadeSubscriptionFieldsProvider);
  v37 = __swift_allocate_boxed_opaque_existential_1(&v118);
  v38 = v16;
  sub_24EE3D064(v16, v37, type metadata accessor for ArcadeSubscriptionFieldsProvider);
  v39 = qword_27F210330;
  v40 = v36;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_24F92A278();
  __swift_project_value_buffer(v41, qword_27F229DE8);
  sub_24F929F08();
  __swift_destroy_boxed_opaque_existential_1(&v118);
  v42 = v89;
  v43 = v106;
  v35(v106 + *(v89 + 20), v33, v34);
  *v43 = v40;
  v119 = v42;
  v120 = sub_24EE3D180(&qword_27F2313C0, type metadata accessor for ArcadeSubscriptionStatusFieldsProvider, &protocol conformance descriptor for ArcadeSubscriptionStatusFieldsProvider);
  v44 = __swift_allocate_boxed_opaque_existential_1(&v118);
  sub_24EE3D064(v43, v44, type metadata accessor for ArcadeSubscriptionStatusFieldsProvider);
  v45 = qword_27F210338;
  v46 = v40;
  if (v45 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v41, qword_27F229E00);
  sub_24F929F08();
  __swift_destroy_boxed_opaque_existential_1(&v118);
  v47 = v92;
  sub_24F928F28();
  v48 = v91;
  sub_24F9290C8();
  v49 = v94;
  v50 = v94[1];
  v50(v47, v7);
  v51 = v93;
  sub_24F9290B8();
  v50(v48, v7);
  (v49[2])(v48, v51, v7);
  sub_24F929118();
  v50(v51, v7);
  sub_24EE3D0CC(v106, type metadata accessor for ArcadeSubscriptionStatusFieldsProvider);
  sub_24EE3D0CC(v38, type metadata accessor for ArcadeSubscriptionFieldsProvider);
  __swift_destroy_boxed_opaque_existential_1(&v121);
  v52 = v95;
  v53 = *(v95 + 8);
  v54 = v90;
  v55 = v108;
  v106 = (v95 + 8);
  v94 = v53;
  (v53)(v90, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8, &qword_24F9BF190);
  v56 = *(v111 + 72);
  v57 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_24F979FB0;
  v93 = v57;
  v92 = v58;
  type metadata accessor for ArcadeSubscriptionManager();
  v121 = v46;
  v59 = v46;
  sub_24F928168();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for ArtworkLoaderURLSession();
  sub_24F928F28();
  v60 = v121;
  v61 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v62 = sub_24F92B098();
  [v61 setName_];

  swift_allocObject();
  v63 = sub_24EAFE4EC(v61, 0, 0, v60);

  v121 = v63;
  sub_24F928168();
  type metadata accessor for UpdateStore();
  if (qword_27F210388 != -1)
  {
    swift_once();
  }

  v121 = qword_27F22A800;
  v64 = qword_27F22A800;
  sub_24F928168();
  v65 = type metadata accessor for URLProtocolDelegate();
  v66 = objc_allocWithZone(v65);
  v67 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  *&v66[OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle] = 1;
  swift_beginAccess();
  v68 = *&v66[v67];
  *&v66[v67] = 1;
  sub_24ED8F464(v68);
  v117.receiver = v66;
  v117.super_class = v65;
  v121 = objc_msgSendSuper2(&v117, sel_init);
  sub_24F928168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  sub_24E615E00(v98, &v121);
  sub_24F928168();
  (*(v52 + 16))(v54, v112, v55);
  sub_24F928168();
  (*(v109 + 16))(v96, v114, v110);
  sub_24F928168();
  type metadata accessor for DiagnosticsReporter(0);
  sub_24EE3D180(&qword_27F2313C8, MEMORY[0x277D21CE0], &protocol conformance descriptor for MetricsLogger.Configuration);
  v69 = v100;
  sub_24F928F08();
  swift_allocObject();
  v121 = sub_24EF9D774(v69, 0, 0, 0, 0, v70);
  sub_24F928168();
  v71 = v101;
  v72 = *(v101 + 16);
  v73 = v97;
  v74 = v102;
  v72(v97, v107, v102);
  v75 = type metadata accessor for CommerceDialogHandler(0);
  v76 = objc_allocWithZone(v75);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v77 = OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag;
  v72(&v76[OBJC_IVAR____TtC12GameStoreKit21CommerceDialogHandler_bag], v73, v74);
  (*(v71 + 56))(&v76[v77], 0, 1, v74);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v116.receiver = v76;
  v116.super_class = v75;
  v78 = objc_msgSendSuper2(&v116, sel_init);
  v79 = *(v71 + 8);
  v79(v73, v74);
  v115 = v78;
  v80 = v78;
  v81 = v104;
  sub_24F928168();
  v82 = v92;
  v84 = v92[2];
  v83 = v92[3];
  if (v84 >= v83 >> 1)
  {
    v82 = sub_24E6196E4((v83 > 1), v84 + 1, 1, v92);
  }

  v82[2] = v84 + 1;
  (*(v111 + 32))(&v93[v82 + v84 * v56], v81, v105);
  v115 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F750, &qword_24F99D1B0);
  sub_24E602068(&qword_27F22F758, &qword_27F22F750, &qword_24F99D1B0, MEMORY[0x277D83970]);
  v85 = sub_24F928F98();

  (*(v109 + 8))(v114, v110);
  (v94)(v112, v108);
  v79(v107, v74);
  return v85;
}

void sub_24EE3C484(void *a1, uint64_t a2)
{
  if (a1)
  {
    sub_24E69A5C4(0, &qword_27F222D10, 0x277CEE6F0);
    sub_24F928FD8();
    v3 = a1;
    sub_24F92A758();
    type metadata accessor for URLProtocolDelegate();
    sub_24F92A758();
    v4 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
    swift_beginAccess();
    v5 = *&v8[v4];
    *&v8[v4] = a1;
    v6 = v3;
    sub_24ED8F464(v5);
    [v8 setDelegate_];
  }

  else
  {
    if (qword_27F210790 != -1)
    {
      swift_once();
    }

    v7 = sub_24F92AAE8();
    __swift_project_value_buffer(v7, qword_27F39CA50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }
}

uint64_t sub_24EE3C6C0(uint64_t a1)
{
  v1 = sub_24F928C38();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24F92A498();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v27[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v27[-v11];
  sub_24F928FD8();
  sub_24F92A758();
  type metadata accessor for ASKBagContract(0);
  sub_24F92A758();
  v13 = v36[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90, &unk_24F990A40);
  sub_24F92A758();
  v14 = *(v4 + 16);
  v14(v9, v12, v3);
  v15 = *(v13 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag);
  v16 = *(v13 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy);
  v29 = *(v13 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy + 8);
  v30 = v16;
  v28 = *(v13 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy + 16);
  sub_24E615E00(v36, v35);
  sub_24E69A5C4(0, &qword_27F2222A8, 0x277CEE620);
  sub_24F928EF8();
  v17 = v34[5];
  v14(v6, v9, v3);
  type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bag, v6, v3);
  *(v18 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = v15;
  v19 = v18 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  v20 = v29;
  *v19 = v30;
  *(v19 + 8) = v20;
  *(v19 + 16) = v28;
  sub_24E615E00(v35, v34);
  type metadata accessor for JSFreshnessWatchdog(0);
  v21 = swift_allocObject();
  v22 = sub_24EA03B10(v18, v34, v17, v21);
  __swift_destroy_boxed_opaque_existential_1(v35);
  v23 = *(v4 + 8);
  v23(v9, v3);
  v24 = v31;
  sub_24F928C28();

  __swift_destroy_boxed_opaque_existential_1(v36);
  v23(v12, v3);
  v25 = OBJC_IVAR____TtC12GameStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v32 + 40))(v22 + v25, v24, v33);
  swift_endAccess();
  return v22;
}

void sub_24EE3CA8C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224128, &qword_24F970418);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  if (qword_27F2110D0 != -1)
  {
    swift_once();
  }

  v11 = qword_27F23E380;
  if (qword_27F210930 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  (*(v8 + 8))(v10, v7);
  v12 = v20[1];
  v13 = v20[2];
  v14 = (v11 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  *v14 = v12;
  v14[1] = v13;

  sub_24F2DBA44();
  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  sub_24F91F638();
  v17 = sub_24F91F648();
  (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  sub_24ED0F7FC(v6);

  v18 = [v15 standardUserDefaults];
  sub_24F91F9A8();
  v19 = sub_24F91F9B8();
  (*(*(v19 - 8) + 56))(v3, 0, 1, v19);
  sub_24ED0FA4C(v3);
}

uint64_t sub_24EE3CDEC()
{

  return swift_deallocObject();
}

uint64_t sub_24EE3CE24()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[5];
  v4 = sub_24F92A468();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[7]));
  v5 = (v2 + v1[8]);
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (*(v2 + v1[9]))
  {
  }

  v6 = v1[13];
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v9 = (v2 + v1[14]);
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return swift_deallocObject();
}

uint64_t sub_24EE3D004()
{
  v1 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24ED350D0(v2);
}

uint64_t sub_24EE3D064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE3D0CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE3D12C()
{
  result = qword_27F2313F0;
  if (!qword_27F2313F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2313F0);
  }

  return result;
}

uint64_t sub_24EE3D180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_24EE3D1D8()
{
  if (*v0)
  {
    return sub_24EE3D504();
  }

  else
  {
    return sub_24EE3D7C8();
  }
}

void sub_24EE3D1E8(void *a1)
{
  if (*v1 == 1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      sub_24E77ACC8();
      v5 = qword_27F211278;
      v6 = a1;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_24F92C3B8();
      [v4 setCustomTintColor_];
    }
  }
}

id sub_24EE3D2EC(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  result = [a5 viewIfLoaded];
  v11 = result;
  if (result)
  {
    if (a4)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = *&a3;
    }

    v13 = *&a1;
    if (a2)
    {
      v13 = 0.0;
    }

    LODWORD(v10) = 1132068864;
    [result systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:v12 verticalFittingPriority:{COERCE_DOUBLE(1144750080), v10}];
    v15 = v14;

    return v15;
  }

  return result;
}

uint64_t sub_24EE3D3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EE3DA94();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24EE3D420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EE3DA94();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24EE3D484(uint64_t a1)
{
  sub_24EE3DA94();
  sub_24F925628();
  __break(1u);
}

unint64_t sub_24EE3D4B0()
{
  result = qword_27F231418;
  if (!qword_27F231418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231418);
  }

  return result;
}

id sub_24EE3D504()
{
  v0 = sub_24F929888();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = sub_24F92B588();
  v6 = [v4 linkWithBundleIdentifiers_];

  if (v6)
  {
    v7 = [objc_opt_self() _gkPreferredSystemLanguage];
    [v6 setDisplayLanguage_];

    v8 = v6;
    result = [v8 view];
    if (result)
    {
      v10 = result;
      memset(v17, 0, sizeof(v17));
      memset(v16, 0, sizeof(v16));
      sub_24F9297A8();
      sub_24E857CC8(v16);
      sub_24E857CC8(v17);
      MEMORY[0x253051C20](v3);

      (*(v1 + 8))(v3, v0);
      return v8;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E8E0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Failed to create OBPrivacyLinkController.", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v15 = objc_allocWithZone(MEMORY[0x277D75D28]);

    return [v15 init];
  }

  return result;
}

id sub_24EE3D7C8()
{
  v0 = sub_24F929888();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = sub_24F92B098();
  v6 = [v4 linkWithBundleIdentifier_];

  if (v6)
  {
    v7 = [objc_opt_self() _gkPreferredSystemLanguage];
    [v6 setDisplayLanguage_];

    v8 = v6;
    result = [v8 view];
    if (result)
    {
      v10 = result;
      memset(v17, 0, sizeof(v17));
      memset(v16, 0, sizeof(v16));
      sub_24F9297A8();
      sub_24E857CC8(v16);
      sub_24E857CC8(v17);
      MEMORY[0x253051C20](v3);

      (*(v1 + 8))(v3, v0);
      return v8;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E8E0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Failed to create OBPrivacyLinkController.", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v15 = objc_allocWithZone(MEMORY[0x277D75D28]);

    return [v15 init];
  }

  return result;
}

unint64_t sub_24EE3DA94()
{
  result = qword_27F231420;
  if (!qword_27F231420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231420);
  }

  return result;
}

unint64_t sub_24EE3DAFC()
{
  result = qword_27F231428[0];
  if (!qword_27F231428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F231428);
  }

  return result;
}

uint64_t NonconcurrentBox.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t NonconcurrentBox.read<A>(with:)(void (*a1)(char *))
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  v8 = *(v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  a1(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t NonconcurrentBox.write(with:)(void (*a1)(uint64_t))
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  a1(v1 + v3);
  return swift_endAccess();
}

uint64_t NonconcurrentBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_24EE3DFC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = *(v1 + 40);
    type metadata accessor for GamesThreeDimensionalRealityRenderer();
    v2 = swift_allocObject();
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B0, &unk_24F9A63F0);
    v4 = swift_allocObject();
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0;
    *(v2 + 64) = v4;
    *(v2 + 72) = v3;
    *(v1 + 16) = v2;
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_24EE3E0BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EE3E14C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F96E2B0;
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  v8 = *MEMORY[0x277CB8DB8];
  v9 = *(v2 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v28 = sub_24E9727BC;
  v29 = v10;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24EEFA694;
  v27 = &block_descriptor_13_1;
  v11 = _Block_copy(&v24);

  v12 = [v7 addObserverForName:v8 object:v9 queue:0 usingBlock:v11];
  _Block_release(v11);

  *(v5 + 32) = v12;
  v13 = [v6 defaultCenter];
  v14 = *MEMORY[0x277D25CA0];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v28 = sub_24E97225C;
  v29 = v15;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24EEFA694;
  v27 = &block_descriptor_19_1;
  v16 = _Block_copy(&v24);

  v17 = [v13 addObserverForName:v14 object:0 queue:0 usingBlock:v16];
  _Block_release(v16);

  *(v5 + 40) = v17;
  v18 = [v6 defaultCenter];
  v19 = *MEMORY[0x277D76758];
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v28 = sub_24E9727BC;
  v29 = v20;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24EEFA694;
  v27 = &block_descriptor_25_2;
  v21 = _Block_copy(&v24);

  v22 = [v18 addObserverForName:v19 object:0 queue:0 usingBlock:v21];
  _Block_release(v21);

  *(v5 + 48) = v22;
  return v5;
}

uint64_t sub_24EE3E4A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8, &qword_24F9A6428);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v22 - v7;
  v9 = [*(a2 + 16) ams_activeiTunesAccount];
  if (v9 && (v10 = v9, v11 = [v9 ams_DSID], v10, v11))
  {
    v27 = [objc_opt_self() exceptionConnection];
    [v27 activate];
    v25 = *(v5 + 16);
    v25(v8, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    v26 = v11;
    v14 = v4;
    v15 = v13;
    v24 = *(v5 + 32);
    v24(v13 + v12, v8, v14);
    v32 = sub_24EE3F18C;
    v33 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_24E955CC4;
    v31 = &block_descriptor_81;
    v16 = _Block_copy(&aBlock);

    v23 = [v27 asynchronousExceptionServiceWithErrorHandler_];
    _Block_release(v16);
    v25(v8, a1, v14);
    v17 = swift_allocObject();
    v24(v17 + v12, v8, v14);
    v32 = sub_24EE3F2B4;
    v33 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_24EE3F0D0;
    v31 = &block_descriptor_7;
    v18 = _Block_copy(&aBlock);

    v19 = v26;
    [v23 fetchAllAppExceptionsForRequesterDSID:v26 completionHandler:v18];
    _Block_release(v18);

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F2105B0 != -1)
    {
      swift_once();
    }

    v21 = sub_24F92AAE8();
    __swift_project_value_buffer(v21, qword_27F39C470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    aBlock = sub_24E60B368(MEMORY[0x277D84F90]);
    return sub_24F92B798();
  }
}

uint64_t sub_24EE3E914(uint64_t a1)
{
  v1 = sub_24F928418();
  MEMORY[0x28223BE20](v1 - 8);
  if (qword_27F2105B0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v6[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F9283D8();
  sub_24E857CC8(v6);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v6[0] = sub_24E60B368(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8, &qword_24F9A6428);
  return sub_24F92B798();
}

uint64_t sub_24EE3EB6C(unint64_t a1, void *a2, uint64_t a3)
{
  v40 = a3;
  v5 = sub_24F928418();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F92AAE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  if (!a1 || a2)
  {
    if (qword_27F2105B0 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_4;
  }

  v14 = sub_24E60B368(MEMORY[0x277D84F90]);
  v7 = v42 & 0xFFFFFFFFFFFFFF8;
  if (v42 >> 62)
  {
    v15 = sub_24F92C738();
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_42:
    *&v45 = v14;
    goto LABEL_43;
  }

  v15 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_42;
  }

LABEL_10:
  v39 = v7;
  v9 = 0;
  v41 = v42 & 0xC000000000000001;
  while (1)
  {
    if (v41)
    {
      v17 = MEMORY[0x253052270](v9, v42);
    }

    else
    {
      if (v9 >= *(v39 + 16))
      {
        goto LABEL_39;
      }

      v17 = *(v42 + 8 * v9 + 32);
    }

    a2 = v17;
    v7 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v18 = [v17 bundleIdentifier];
    v19 = sub_24F92B0D8();
    v21 = v20;

    if (v14[2] && (v22 = sub_24E76D644(v19, v21), (v23 & 1) != 0))
    {
      v6 = *(v14[7] + 8 * v22);
    }

    else
    {
      v6 = 0;
    }

    v24 = [a2 ratingValue];
    if (v24 < 0)
    {
      goto LABEL_36;
    }

    if (v24 > v6)
    {
      v6 = v24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = v14;
    v26 = sub_24E76D644(v19, v21);
    v28 = v14[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_37;
    }

    v32 = v27;
    if (v14[3] < v31)
    {
      sub_24E89DE90(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_24E76D644(v19, v21);
      if ((v32 & 1) != (v33 & 1))
      {
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

LABEL_30:
      if (v32)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v37 = v26;
    sub_24E8B0A94();
    v26 = v37;
    if (v32)
    {
LABEL_11:
      v16 = v26;

      v14 = v45;
      *(*(v45 + 56) + 8 * v16) = v6;

      goto LABEL_12;
    }

LABEL_31:
    v14 = v45;
    *(v45 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v34 = (v14[6] + 16 * v26);
    *v34 = v19;
    v34[1] = v21;
    *(v14[7] + 8 * v26) = v6;

    v35 = v14[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_38;
    }

    v14[2] = v36;
LABEL_12:
    ++v9;
    if (v7 == v15)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  swift_once();
LABEL_4:
  v10 = __swift_project_value_buffer(v6, qword_27F39C470);
  (*(v7 + 16))(v9, v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  if (a2)
  {
    swift_getErrorValue();
    v11 = v43;
    v12 = v44;
    *(&v46 + 1) = v44;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v11, v12);
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  sub_24F9283D8();
  sub_24E857CC8(&v45);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  (*(v7 + 8))(v9, v6);
  *&v45 = sub_24E60B368(MEMORY[0x277D84F90]);
LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8, &qword_24F9A6428);
  return sub_24F92B798();
}

uint64_t sub_24EE3F0D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24EE3F340();
    v4 = sub_24F92B5A8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_24EE3F18C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8, &qword_24F9A6428);

  return sub_24EE3E914(a1);
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8, &qword_24F9A6428);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EE3F2B4(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314B8, &qword_24F9A6428) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EE3EB6C(a1, a2, v6);
}

unint64_t sub_24EE3F340()
{
  result = qword_27F2314C0;
  if (!qword_27F2314C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F2314C0);
  }

  return result;
}

uint64_t sub_24EE3F38C()
{

  return swift_deallocObject();
}

double sub_24EE3F3F0(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221290, &qword_24F965DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212D0, &unk_24F9A6C60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2212A0, &qword_24F965DD8);
  sub_24E8F1F9C();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E8F2138();
  sub_24F926B08();

  return result;
}

double sub_24EE3F534(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223D0, &qword_24F969270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222458, &unk_24F9A6F40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2223E8, &qword_24F969288);
  sub_24E9410C4();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E941238();
  sub_24F926B08();

  return result;
}

double sub_24EE3F678(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222400, &qword_24F9692A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222490, &unk_24F9A6F20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222408, &qword_24F9692A8);
  sub_24E94137C();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E94154C();
  sub_24F926B08();

  return result;
}

double sub_24EE3F7BC(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228ED0, &qword_24F984318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228EE8, &qword_24F9A6A60);
  type metadata accessor for SearchResultsPageView.ToolbarView(255);
  sub_24EE4A2A0(&qword_27F228EE0, type metadata accessor for SearchResultsPageView.ToolbarView, &unk_24F984548);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EB38750();
  sub_24F926B08();

  return result;
}

double sub_24EE3F924(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C340, &qword_24F990128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C368, &unk_24F9A6DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C348, &qword_24F990130);
  sub_24E602068(&qword_27F22C358, &qword_27F22C348, &qword_24F990130, MEMORY[0x277CE1138]);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EC5EF9C();
  sub_24F926B08();

  return result;
}

double sub_24EE3FA94(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6D0, &qword_24F990B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C730, &unk_24F990B58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6E0, &qword_24F990B10);
  sub_24E602068(&qword_27F22C720, &qword_27F22C6E0, &qword_24F990B10, MEMORY[0x277CE1138]);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EC6FE14();
  sub_24F926B08();

  return result;
}

double sub_24EE3FC04(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315F0, &qword_24F9A6730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231608, &unk_24F9A6740);
  type metadata accessor for InviteFriendsPageView.ShelfListView(255);
  sub_24EE4A2A0(&qword_27F231600, type metadata accessor for InviteFriendsPageView.ShelfListView, &unk_24F9A69B8);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE4E33C();
  sub_24F926B08();

  return result;
}

double sub_24EE3FD6C(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316C0, &qword_24F9A6A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231760, &unk_24F9A6AD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316D8, &qword_24F9A6A80);
  sub_24EE4F0E0();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE4F1A8();
  sub_24F926B08();

  return result;
}

double sub_24EE3FEB0(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319E0, &unk_24F9A6E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319E8, &qword_24F9BB480);
  sub_24EE51EA4();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE51EF8();
  sub_24F926B08();

  return result;
}

double sub_24EE3FFE4(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A00, &unk_24F9A6E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A08, &qword_24F9BB470);
  type metadata accessor for OverlayGameControllerControls(255);
  sub_24EE4A2A0(&qword_27F231A10, type metadata accessor for OverlayGameControllerControls, &unk_24F9B9778);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE52000();
  sub_24F926B08();

  return result;
}

double sub_24EE4014C(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A40, &qword_24F9A6E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A48, &unk_24F9A6E48);
  sub_24EE52298();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE522EC();
  sub_24F926B08();

  return result;
}

double sub_24EE40280(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A20, &unk_24F9A6E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A28, &qword_24F9BB3D0);
  sub_24EE5213C();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE52190();
  sub_24F926B08();

  return result;
}

double sub_24EE403B4(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221300, &unk_24F9C5380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221380, &qword_24F965EA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221308, &unk_24F965E60);
  sub_24E8F2424();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E8F2824();
  sub_24F926B08();

  return result;
}

double sub_24EE404F8(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318A0, &unk_24F9A6C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318A8, &qword_24F9C5360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318B0, &unk_24F9A6CA0);
  sub_24EE50CBC();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE50E00();
  sub_24F926B08();

  return result;
}

double sub_24EE4063C(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B00, &qword_24F9A6EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B08, &qword_24F9A6EE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B10, &qword_24F9A6EF0);
  sub_24EE536D0();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE5392C();
  sub_24F926B08();

  return result;
}

double sub_24EE40780(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231AC8, &qword_24F9A6EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231AD0, &qword_24F9A6EC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD8, &unk_24F9A6ED0);
  sub_24EE53500();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE535B8();
  sub_24F926B08();

  return result;
}

double sub_24EE408C4(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319A8, &qword_24F9A6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319B0, &qword_24F9A6DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319B8, &qword_24F9A6E00);
  sub_24EE51CD4();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE51D8C();
  sub_24F926B08();

  return result;
}

double sub_24EE40A08(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231640, &unk_24F9A6780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255190, &unk_24FA3AD40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231648, &qword_24F9A6790);
  sub_24EE4E504();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE4E64C();
  sub_24F926B08();

  return result;
}

double sub_24EE40B4C(double a1)
{
  sub_24F9275A8();
  sub_24F926CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318E8, &qword_24F9A6CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318F0, &unk_24F9A6CC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318F8, &qword_24FA3BC70);
  sub_24EE50F18();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24EE51288();
  sub_24F926B08();

  return result;
}

uint64_t sub_24EE40C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v17 = sub_24F927618();
  v19 = v18;
  *&v36 = a2;
  *(&v36 + 1) = a3;
  *&v37 = a4;
  *(&v37 + 1) = a5;
  v38 = 0u;
  v39 = 0u;
  *&v40 = a6;
  *(&v40 + 1) = 0x4024000000000000;
  v41 = 0;
  LOBYTE(v35) = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = v40;
  v30 = v36;
  v31 = v37;
  v42 = v36;
  v43 = v37;
  v45 = 0u;
  v46 = v40;
  v44 = 0u;
  *&v47 = v35;
  *(&v47 + 1) = v17;
  v48 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  (*(*(v20 - 8) + 16))(a9, a1, v20);
  v21 = a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a10, a11) + 36);
  v22 = v47;
  *(v21 + 64) = v40;
  *(v21 + 80) = v22;
  *(v21 + 96) = v48;
  v23 = v43;
  *v21 = v42;
  *(v21 + 16) = v23;
  v24 = v45;
  *(v21 + 32) = v44;
  *(v21 + 48) = v24;
  v49[0] = v30;
  v49[1] = v31;
  v49[3] = v33;
  v49[4] = v34;
  v49[2] = v32;
  v50 = v35;
  v51 = v17;
  v52 = v19;
  sub_24EB1FB58(&v36, &v29);
  sub_24E60169C(&v42, &v29, &qword_27F215A98, &qword_24F940DC0);
  return sub_24E601704(v49, &qword_27F215A98, &qword_24F940DC0);
}

uint64_t InviteFriendsPageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v3 = type metadata accessor for InviteFriendsPageView(0);
  v4 = v3 - 8;
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v92 = v5;
  v90 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F923D08();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  v87 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_24F925758();
  v77 = *(v78 - 1);
  MEMORY[0x28223BE20](v78);
  v76 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24F924F28();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24F924F58();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314C8, &qword_24F9A6430);
  MEMORY[0x28223BE20](v67);
  v12 = &v56 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314D0, &qword_24F9A6438);
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v66 = &v56 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314D8, &qword_24F9A6440);
  v75 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v73 = &v56 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314E0, &qword_24F9A6448);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314E8, &qword_24F9A6450);
  v85 = *(v16 - 8);
  v86 = v16;
  MEMORY[0x28223BE20](v16);
  v83 = &v56 - v17;
  v18 = (v2 + *(v4 + 32));
  v20 = v18[1];
  v99 = *v18;
  v19 = v99;
  v100 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314F0, &qword_24F9A6458);
  sub_24F926F38();
  sub_24EE41BF0(0, 0);

  *v12 = sub_24F924C88();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314F8, &qword_24F9A6460) + 44);
  v63 = v12;
  sub_24EE41EE8(v2, &v12[v22]);
  v99 = v19;
  v100 = v20;
  sub_24F926F38();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  sub_24F9271A8();

  v62 = v99;
  v61 = v101;
  v69 = v19;
  v96 = v19;
  v97 = v20;
  v68 = v20;
  v65 = v21;
  sub_24F926F58();
  v27 = v99;
  v28 = v100;
  v29 = v101;
  swift_getKeyPath();
  v99 = v27;
  v100 = v28;
  v101 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231500, &qword_24F9A6488);
  sub_24F927188();

  v60 = v97;
  v59 = v98;

  v93 = v2;
  if (*(v2 + 16) == 1)
  {
    v30 = v56;
    sub_24F924F18();
    v31 = v64;
    sub_24F924F08();
    (*(v57 + 8))(v30, v58);
  }

  else
  {
    v31 = v64;
    sub_24F924F38();
  }

  if (qword_27F211670 != -1)
  {
    swift_once();
  }

  v94 = qword_27F39EDA8;
  v95 = unk_27F39EDB0;
  v58 = sub_24E602068(&qword_27F231508, &qword_27F2314C8, &qword_24F9A6430, MEMORY[0x277CE1198]);
  v64 = sub_24E600AEC();

  v32 = v67;
  v33 = v66;
  v34 = v63;
  sub_24F926128();

  (*(v70 + 8))(v31, v72);
  sub_24E601704(v34, &qword_27F2314C8, &qword_24F9A6430);
  v35 = v76;
  sub_24F925738();
  v99 = v32;
  v100 = MEMORY[0x277D837D0];
  v101 = v58;
  v102 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v73;
  v38 = v74;
  sub_24F926898();
  (*(v77 + 8))(v35, v78);
  (*(v71 + 8))(v33, v38);
  v39 = v87;
  sub_24F923CF8();
  v78 = type metadata accessor for InviteFriendsPageView;
  v40 = v90;
  sub_24EE4A97C(v93, v90, type metadata accessor for InviteFriendsPageView);
  v41 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v42 = swift_allocObject();
  v84 = type metadata accessor for InviteFriendsPageView;
  sub_24EE4C4A4(v40, v42 + v41, type metadata accessor for InviteFriendsPageView);
  v99 = v38;
  v100 = OpaqueTypeConformance2;
  v77 = swift_getOpaqueTypeConformance2();
  v43 = v80;
  v44 = v79;
  sub_24F926AD8();

  (*(v88 + 8))(v39, v89);
  (*(v75 + 8))(v37, v44);
  v99 = v69;
  v100 = v68;
  sub_24F926F38();
  v45 = v96;
  swift_getKeyPath();
  v99 = v45;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
  sub_24F91FD88();

  LOBYTE(v34) = *(v45 + 49);

  LOBYTE(v96) = v34;
  v46 = v93;
  sub_24EE4A97C(v93, v40, v78);
  v47 = swift_allocObject();
  sub_24EE4C4A4(v40, v47 + v41, v84);
  v99 = v44;
  v100 = v77;
  swift_getOpaqueTypeConformance2();
  v48 = v82;
  v49 = v83;
  sub_24F926AB8();

  (*(v81 + 8))(v43, v48);
  v50 = *(type metadata accessor for InviteFriendsPageIntent(0) + 24);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231528, &unk_24F9A64C0);
  v52 = v91;
  v53 = v91 + *(v51 + 36);
  sub_24E60169C(v46 + v50, v53, &qword_27F21D8F8, &qword_24F95ADB0);
  v54 = type metadata accessor for PageBackgroundViewModifier(0);
  *(v53 + *(v54 + 20)) = 3;
  *(v53 + *(v54 + 24)) = 0;
  return (*(v85 + 32))(v52, v49, v86);
}

void sub_24EE41BF0(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  v9.i64[0] = v2;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
  sub_24F91FD88();

  if (v2[3].i8[0] == 2)
  {
    v5 = vorrq_s8(v2[1], v2[2]);
    if (!*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))
    {
      if (!a2)
      {
        goto LABEL_9;
      }

      v6 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v6 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {
        swift_beginAccess();
        v2[3].i8[2] = 1;
        v9.i64[0] = a1;
        v9.i64[1] = a2;
        v10 = 0;
        v11 = 0;
        v12 = 1;

        sub_24EE48498(&v9);
        if (v2[3].i8[1])
        {
LABEL_8:
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_24F91FD78();

          return;
        }
      }

      else
      {
LABEL_9:
        v9 = 1uLL;
        v10 = 0;
        v11 = 0;
        v12 = 2;
        v8 = swift_getKeyPath();
        MEMORY[0x28223BE20](v8);
        sub_24F91FD78();

        swift_beginAccess();
        v2[3].i8[2] = 0;
        if (v2[3].i8[1])
        {
          goto LABEL_8;
        }
      }

      v2[3].i8[1] = 0;
    }
  }
}

uint64_t sub_24EE41EE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v44 - v6;
  v46 = sub_24F92A498();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for InviteFriendsPageView(0);
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_24EE426BC(v57);
  v18 = *(a1 + *(v15 + 28));
  v47 = *(a1 + *(v15 + 48));
  sub_24EE4A97C(a1, &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsPageView);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = swift_allocObject();
  sub_24EE4C4A4(&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for InviteFriendsPageView);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231668, &qword_24F9A6810);
  v22 = v21[13];
  *(a2 + v22) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v23 = a2 + v21[14];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = a2 + v21[15];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v21[16];
  *(a2 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  sub_24F91F618();
  (*(v9 + 16))(v44, v13, v8);
  sub_24F926F28();
  v26 = v13;
  v27 = v46;
  (*(v9 + 8))(v26, v8);
  v28 = v45;
  v29 = a2 + v21[18];
  LOBYTE(v54) = 1;
  sub_24F926F28();
  v30 = v56;
  *v29 = v55;
  *(v29 + 1) = v30;
  v31 = (a2 + v21[30]);
  sub_24F929EB8();
  v54 = sub_24F929EA8();
  sub_24F926F28();
  v32 = v56;
  *v31 = v55;
  v31[1] = v32;
  sub_24E615E00(v57, a2 + v21[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v33 = v49;
  sub_24F92A448();
  v34 = v51;
  sub_24F92A408();
  (*(v50 + 8))(v33, v34);
  (*(v48 + 8))(v28, v27);
  v35 = v56;
  v36 = (a2 + v21[23]);
  *v36 = v55;
  v36[1] = v35;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928EF8();
  *(a2 + v21[25]) = v55;
  v37 = (a2 + v21[27]);
  *v37 = CGSizeMake;
  v37[1] = 0;
  v38 = (a2 + v21[28]);
  *v38 = sub_24EE4E8DC;
  v38[1] = v20;
  *(a2 + v21[20]) = v18;
  *(a2 + v21[22]) = v47;
  *(a2 + v21[21]) = 2;
  type metadata accessor for FeedRefreshNotifier(0);

  sub_24F928F28();
  *(a2 + v21[26]) = v55;
  type metadata accessor for NetworkConnectionMonitor(0);
  sub_24F928F28();
  *(a2 + v21[31]) = v55;
  v39 = __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v40 = MEMORY[0x28223BE20](v39);
  (*(v42 + 16))(&v44 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24EE42684()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EE426BC@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8, &unk_24F9F7350);
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - v3;
  v4 = *(type metadata accessor for InviteFriendsPageView(0) + 24);
  v21 = v1;
  v5 = (v1 + v4);
  v7 = *v5;
  v6 = v5[1];
  v26 = *v5;
  v27 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314F0, &qword_24F9A6458);
  sub_24F926F38();
  v8 = v25;
  swift_getKeyPath();
  v26 = v8;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
  sub_24F91FD88();

  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  v12 = *(v8 + 32);
  v11 = *(v8 + 40);
  v13 = *(v8 + 48);
  sub_24EE4E888(v10, v9, v12, v11, *(v8 + 48));

  if (!v13)
  {
    sub_24EE4E740(v10, v9, v12, v11, 0);
    goto LABEL_5;
  }

  if (v13 == 1)
  {

LABEL_5:
    v26 = v7;
    v27 = v6;
    sub_24F926F38();
    (*(v2 + 16))(v22, v25 + OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStream, v23);

    v14 = type metadata accessor for InviteFriendsSearchPageIntent(0);
    v15 = v24;
    v24[3] = v14;
    v15[4] = sub_24EE4A2A0(&qword_27F21D358, type metadata accessor for InviteFriendsSearchPageIntent, &protocol conformance descriptor for InviteFriendsSearchPageIntent);
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_24E602068(&qword_27F231688, &qword_27F21D8E8, &unk_24F9F7350, MEMORY[0x277D857C0]);
    return sub_24F9280F8();
  }

  v17 = type metadata accessor for InviteFriendsPageIntent(0);
  v18 = v24;
  v24[3] = v17;
  v18[4] = sub_24EE4A2A0(&qword_27F21D350, type metadata accessor for InviteFriendsPageIntent, &protocol conformance descriptor for InviteFriendsPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  return sub_24EE4A97C(v21, boxed_opaque_existential_1, type metadata accessor for InviteFriendsPageIntent);
}

uint64_t sub_24EE429F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a1;
  v77 = a3;
  v78 = sub_24F9248F8();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = (&v63 - v8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v10 = &v63 - v9;
  v11 = sub_24F92A498();
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231670, &qword_24F9A68D0);
  MEMORY[0x28223BE20](v69);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231678, &unk_24F9A68D8);
  v73 = *(v16 - 8);
  v74 = v16;
  MEMORY[0x28223BE20](v16);
  v72 = &v63 - v17;
  v18 = type metadata accessor for InviteFriendsPageView(0);
  v19 = (a2 + *(v18 + 24));
  v20 = *v19;
  v21 = v19[1];
  v83 = *v19;
  v84 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314F0, &qword_24F9A6458);
  sub_24F926F38();
  v68 = v82[0];
  v22 = *(a2 + *(v18 + 20));
  sub_24F928F28();
  if (qword_27F211860 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  v23 = v67;
  sub_24F92A408();
  (*(v66 + 8))(v10, v23);
  (*(v65 + 8))(v13, v11);
  v24 = v83;
  v25 = v84;
  v83 = v20;
  v84 = v21;

  sub_24F926F38();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v26;
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  sub_24F9271A8();

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231198, &qword_24F9A5550);
  MEMORY[0x25304CAF0](v82, v30);
  v31 = v82[0];
  v32 = v82[1];

  v33 = v71;
  sub_24EE4A97C(v71, v15, type metadata accessor for Page);
  v34 = type metadata accessor for InviteFriendsPageView.PageContent(0);
  *&v15[v34[5]] = v68;
  v35 = &v15[v34[6]];
  *v35 = v24;
  *(v35 + 1) = v25;
  *&v15[v34[7]] = v22;
  v36 = &v15[v34[8]];
  *v36 = v31;
  *(v36 + 1) = v32;
  v37 = &v15[v34[9]];
  v79 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480, &unk_24F944D20);
  sub_24F926F28();
  v38 = v81;
  *v37 = v80;
  *(v37 + 1) = v38;
  v39 = &v15[v34[10]];
  *v39 = swift_getKeyPath();
  v39[40] = 0;
  v40 = v34[11];
  *&v15[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v41 = v69;
  v42 = *(v69 + 52);
  v43 = sub_24F92A708();
  (*(*(v43 - 8) + 16))(&v15[v42], v33, v43);
  v44 = type metadata accessor for Page(0);
  v45 = v70;
  sub_24E60169C(v33 + *(v44 + 80), v70, qword_27F220E38, &unk_24F965190);
  v46 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
  {
    v47 = qword_27F220E38;
    v48 = &unk_24F965190;
    v49 = v45;
  }

  else
  {
    v50 = v64;
    sub_24E60169C(v45, v64, &qword_27F223138, &unk_24F972860);
    sub_24EE4E98C(v45, type metadata accessor for HeaderPresentation);
    v51 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) != 1)
    {
      v53 = *v50;
      v52 = v50[1];

      sub_24EE4E98C(v50, type metadata accessor for HeaderPresentation.HeaderLabel);
      goto LABEL_9;
    }

    v47 = &qword_27F223138;
    v48 = &unk_24F972860;
    v49 = v50;
  }

  sub_24E601704(v49, v47, v48);
  v52 = 0xE400000000000000;
  v53 = 1701736302;
LABEL_9:
  v83 = v53;
  v84 = v52;
  v54 = sub_24E602068(&qword_27F231680, &qword_27F231670, &qword_24F9A68D0, MEMORY[0x277CE1148]);
  v55 = sub_24E600AEC();
  v56 = v72;
  v57 = MEMORY[0x277D837D0];
  sub_24F926458();

  sub_24E601704(v15, &qword_27F231670, &qword_24F9A68D0);
  v59 = v75;
  v58 = v76;
  v60 = v78;
  (*(v76 + 104))(v75, *MEMORY[0x277CDDDB0], v78);
  v83 = v41;
  v84 = v57;
  v85 = v54;
  v86 = v55;
  swift_getOpaqueTypeConformance2();
  v61 = v74;
  sub_24F926868();
  (*(v58 + 8))(v59, v60);
  return (*(v73 + 8))(v56, v61);
}

double sub_24EE43350(uint64_t a1)
{
  v4.i64[1] = *(a1 + *(type metadata accessor for InviteFriendsPageView(0) + 24) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2314F0, &qword_24F9A6458);
  sub_24F926F38();
  swift_getKeyPath();
  v4.i64[0] = v3;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
  sub_24F91FD88();

  if (!*(v3 + 48))
  {
    v1 = *(v3 + 24);
    v4.i64[0] = *(v3 + 16);
    v4.i64[1] = v1;
    v5 = 0;
    v6 = 0;
    v7 = 1;

    sub_24EE48498(&v4);
  }

  return result;
}

uint64_t sub_24EE4345C()
{
  swift_getKeyPath();
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
  sub_24F91FD88();

  return *(v0 + 49);
}

uint64_t sub_24EE434FC(uint64_t a1, char *a2, uint64_t a3)
{
  type metadata accessor for InviteFriendsPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  return sub_24F923338();
}

void sub_24EE43578(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v8 = v1;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
  sub_24F91FD88();

  v3 = *(v1 + 16);
  v4 = *(v8 + 24);
  v5 = *(v8 + 32);
  v6 = *(v8 + 40);
  v7 = *(v8 + 48);
  sub_24EE4E888(v3, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t sub_24EE43650@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315B8, &qword_24F9DD610);
  v24 = *(v5 - 8);
  v6 = v24;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for InviteFriendsPageView.PageContent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00(a1, v26);
  sub_24EE4A97C(a2, v15, type metadata accessor for InviteFriendsPageView.PageContent);
  v16 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_24E612C80(v26, v17 + 16);
  sub_24EE4C4A4(v15, v17 + v16, type metadata accessor for InviteFriendsPageView.PageContent);
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = MEMORY[0x28223BE20](v18);
  (*(v21 + 16))(&v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  sub_24F928D38();
  (*(v6 + 16))(v8, v11, v5);
  sub_24F921C98();
  sub_24F921C78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315C0, &qword_24F9A6728);
  sub_24E602068(&qword_27F2315C8, &qword_27F2315B8, &qword_24F9DD610, MEMORY[0x277D21CF8]);
  sub_24EE4A2A0(&qword_27F2315D0, MEMORY[0x277D7ECA0], MEMORY[0x277D7EC98]);
  sub_24EE4A2A0(&qword_27F2315D8, MEMORY[0x277D7EC90], MEMORY[0x277D7EC88]);
  sub_24EE4E118();
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
  sub_24F9216F8();
  return (*(v24 + 8))(v11, v5);
}

uint64_t sub_24EE43ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315F0, &qword_24F9A6730);
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v48 - v8;
  v10 = type metadata accessor for InviteFriendsPageView.ShelfListView(0);
  MEMORY[0x28223BE20](v10);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231618, &qword_24F9A6750);
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231620, &qword_24F9A6758);
  MEMORY[0x28223BE20](v55);
  v17 = v48 - v16;
  if (!*(*(a1 + *(type metadata accessor for GSKShelf(0) + 60)) + 16))
  {
    sub_24E615E00(a2, &v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213818, &unk_24F974CF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231630, &qword_24F9A6770);
    if (swift_dynamicCast())
    {
      sub_24E612C80(&v57, v67);
      sub_24E615E00(v67, &v61);
      v18 = (a3 + *(type metadata accessor for InviteFriendsPageView.PageContent(0) + 32));
      v19 = v18[1];
      v65 = *v18;
      v66 = v19;
      sub_24EE4E454(&v61, v17);
      swift_storeEnumTagMultiPayload();
      sub_24EE4E2C8();

      v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315F8, &qword_24F9A6738);
      v21 = sub_24EE4A2A0(&qword_27F231600, type metadata accessor for InviteFriendsPageView.ShelfListView, &unk_24F9A69B8);
      *&v57 = v10;
      *(&v57 + 1) = v21;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v23 = sub_24E8F20E4();
      v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231608, &unk_24F9A6740);
      v25 = sub_24EE4E33C();
      *&v57 = v7;
      *(&v57 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
      *&v58 = v24;
      *(&v58 + 1) = OpaqueTypeConformance2;
      v59 = v23;
      v60 = v25;
      v26 = swift_getOpaqueTypeConformance2();
      *&v57 = v7;
      *(&v57 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
      *&v58 = v20;
      *(&v58 + 1) = OpaqueTypeConformance2;
      v59 = v23;
      v60 = v26;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      sub_24EE4E48C(&v61);
      return __swift_destroy_boxed_opaque_existential_1(v67);
    }

    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_24E601704(&v57, &qword_27F231638, &qword_24F9A6778);
  }

  sub_24EE4A97C(a1, v12, type metadata accessor for GSKShelf);
  v28 = (a3 + *(type metadata accessor for InviteFriendsPageView.PageContent(0) + 36));
  v30 = *v28;
  v29 = v28[1];
  *&v57 = v30;
  *(&v57 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231628, &unk_24F9A6760);
  sub_24F926F58();
  v31 = v62;
  v32 = &v12[*(v10 + 20)];
  *v32 = v61;
  *(v32 + 8) = v31;
  v33 = sub_24EE4A2A0(&qword_27F231600, type metadata accessor for InviteFriendsPageView.ShelfListView, &unk_24F9A69B8);
  v50 = v15;
  v52 = v13;
  v34 = v33;
  v51 = v9;
  sub_24F9262E8();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315F8, &qword_24F9A6738);
  v61 = v10;
  *&v62 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24E8F20E4();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231608, &unk_24F9A6740);
  v38 = sub_24EE4E33C();
  v61 = v7;
  *&v62 = &type metadata for IsDebugFocusOverlayEnabled;
  *(&v62 + 1) = v37;
  v63 = v35;
  v48[0] = v35;
  v64 = v36;
  v65 = v38;
  v48[1] = MEMORY[0x277CE0E68];
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v53;
  v41 = v12;
  v42 = v54;
  v43 = v39;
  v44 = v50;
  v45 = v49;
  v46 = v51;
  sub_24F926B08();
  (*(v42 + 8))(v46, v7);
  sub_24EE4E98C(v41, type metadata accessor for InviteFriendsPageView.ShelfListView);
  v47 = v52;
  (*(v40 + 16))(v17, v44, v52);
  swift_storeEnumTagMultiPayload();
  sub_24EE4E2C8();
  v61 = v7;
  *&v62 = &type metadata for IsDebugFocusOverlayEnabled;
  *(&v62 + 1) = v45;
  v63 = v48[0];
  v64 = v36;
  v65 = v43;
  swift_getOpaqueTypeConformance2();
  sub_24F924E28();
  return (*(v40 + 8))(v44, v47);
}

uint64_t sub_24EE4419C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68, &unk_24F95E420);
  MEMORY[0x28223BE20](v4);
  v9[1] = *(v1 + *(type metadata accessor for Page(0) + 48));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70, &qword_24F990C40);
  sub_24E602068(&qword_27F21ED78, &qword_27F21ED70, &qword_24F990C40, MEMORY[0x277D83980]);
  sub_24F921BA8();
  swift_getKeyPath();
  sub_24EE4A97C(v1, v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsPageView.PageContent);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_24EE4C4A4(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for InviteFriendsPageView.PageContent);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24EE4C50C;
  *(v7 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315A8, &qword_24F9A6720);
  sub_24E602068(&qword_27F21ED88, &qword_27F21ED68, &unk_24F95E420, MEMORY[0x277D7EC38]);
  sub_24E602068(&qword_27F2315B0, &qword_27F2315A8, &qword_24F9A6720, MEMORY[0x277D7EAD8]);
  return sub_24F927228();
}

uint64_t sub_24EE44478@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316C0, &qword_24F9A6A68);
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = &v25 - v2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316C8, &qword_24F9A6A70);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316D0, &qword_24F9A6A78);
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316D8, &qword_24F9A6A80);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v33 = v1;
  v32 = v1;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316E0, &qword_24F9A6A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2316E8, &unk_24F9A6A90);
  sub_24EE4EDDC();
  sub_24EE4EE94();
  sub_24F925138();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231730, &qword_24F9CFEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v13 = sub_24F9257B8();
  *(inited + 32) = v13;
  v14 = sub_24F9257D8();
  *(inited + 33) = v14;
  sub_24F9257C8();
  sub_24F9257C8();
  if (sub_24F9257C8() != v13)
  {
    sub_24F9257C8();
  }

  sub_24F9257C8();
  if (sub_24F9257C8() != v14)
  {
    sub_24F9257C8();
  }

  sub_24F927618();
  sub_24EE4EFFC();
  sub_24F9266F8();
  sub_24E601704(v5, &qword_27F2316C8, &qword_24F9A6A70);
  v15 = sub_24F924068();
  v16 = sub_24F9257F8();
  (*(v6 + 32))(v11, v8, v27);
  v17 = &v11[*(v9 + 36)];
  *v17 = v15;
  v17[8] = v16;
  v18 = sub_24EE4F0E0();
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231758, &qword_24F9A6AD0);
  v34 = v9;
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24E8F20E4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231760, &unk_24F9A6AD8);
  v22 = sub_24EE4F1A8();
  v23 = v30;
  v34 = v30;
  v35 = &type metadata for IsDebugFocusOverlayEnabled;
  v36 = v21;
  v37 = OpaqueTypeConformance2;
  v38 = v20;
  v39 = v22;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  (*(v29 + 8))(v3, v23);
  return sub_24E601704(v11, &qword_27F2316D8, &qword_24F9A6A80);
}

uint64_t sub_24EE449A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58, &unk_24F935650);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317B8, &qword_24F9A6B50);
  MEMORY[0x28223BE20](v25);
  v9 = &v24 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 8))(v10, v11);
  if (v12)
  {
    v24 = a2;
    v13 = v4;
    v15 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v26 = (*(v14 + 16))(v15, v14);
    v27 = v16;
    sub_24E600AEC();
    sub_24F926EB8();
    (*(v5 + 16))(v9, v7, v13);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
    sub_24F924E28();
    return (*(v5 + 8))(v7, v13);
  }

  else
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v26 = (*(v19 + 16))(v18, v19);
    v27 = v20;
    sub_24E600AEC();
    *v9 = sub_24F925E18();
    *(v9 + 1) = v21;
    v9[16] = v22 & 1;
    *(v9 + 3) = v23;
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
    return sub_24F924E28();
  }
}

uint64_t sub_24EE44CBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(a1[5], a1[6], v4, v5);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_24EE44D54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = sub_24F924C38();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v59 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231770, &qword_24F9A6AE8);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v59 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231778, &qword_24F9A6AF0);
  MEMORY[0x28223BE20](v63);
  v12 = &v59 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231780, &unk_24F9A6AF8);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231708, &qword_24F9A6AA0);
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 40))(&v73, v17, v18);
  if (!*(&v74 + 1))
  {
    sub_24E601704(&v73, qword_27F21B590, &unk_24F93BE30);
    return (*(v69 + 56))(a2, 1, 1, v70);
  }

  sub_24E612C80(&v73, v78);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 32))(v19, v20);
  if (!v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v78);
    return (*(v69 + 56))(a2, 1, 1, v70);
  }

  v23 = v21;
  v24 = v22;
  v60 = a2;
  v25 = sub_24F9232F8();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  sub_24E615E00(v78, v77);
  sub_24EE4E454(a1, &v73);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  v27 = v74;
  *(v26 + 32) = v73;
  *(v26 + 48) = v27;
  *(v26 + 64) = v75;
  *(v26 + 80) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231788, &qword_24F9A6B08);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231790, &unk_24F9A6B10);
  v29 = sub_24E602068(&qword_27F231798, &qword_27F231790, &unk_24F9A6B10, MEMORY[0x277CE1138]);
  v71 = v28;
  v72 = v29;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  sub_24F924C28();
  sub_24E602068(&qword_27F2317A0, &qword_27F231770, &qword_24F9A6AE8, MEMORY[0x277D7EB00]);
  sub_24EE4A2A0(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v30 = v62;
  v31 = v65;
  sub_24F926178();
  (*(v64 + 8))(v5, v31);
  (*(v61 + 8))(v10, v30);
  v32 = &v12[*(v63 + 36)];
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_24F924B38();
  v35 = *(*(v34 - 8) + 104);
  v35(v32, v33, v34);
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0, &qword_24F951970) + 36)] = 256;
  sub_24EE4F314();
  v36 = v66;
  sub_24F9268B8();
  sub_24E601704(v12, &qword_27F231778, &qword_24F9A6AF0);
  *(&v74 + 1) = sub_24F9271D8();
  *&v75 = sub_24EE4A2A0(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v73);
  v35(boxed_opaque_existential_1, v33, v34);
  sub_24E60169C(&v73, v16, &qword_27F2317B0, &qword_24F9A6B20);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231728, &unk_24F9A6AB0);
  v39 = v67;
  v40 = v68;
  (*(v67 + 16))(&v16[v38[9]], v36, v68);
  v41 = &v16[v38[10]];
  *v41 = sub_24F923398() & 1;
  *(v41 + 1) = v42;
  v41[16] = v43 & 1;
  v44 = &v16[v38[11]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v45 = qword_27F24E488;
  v46 = sub_24F923398();
  v48 = v47;
  v50 = v49;
  v51 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231718, &qword_24F9A6AA8) + 36)];
  *v51 = v45;
  v51[8] = v46 & 1;
  *(v51 + 2) = v48;
  v51[24] = v50 & 1;
  LOBYTE(v45) = sub_24F923398();
  v53 = v52;
  LOBYTE(v48) = v54;
  sub_24E601704(&v73, &qword_27F2317B0, &qword_24F9A6B20);
  (*(v39 + 8))(v36, v40);
  __swift_destroy_boxed_opaque_existential_1(v78);
  v55 = v70;
  v56 = &v16[*(v70 + 36)];
  *v56 = v45 & 1;
  *(v56 + 1) = v53;
  v56[16] = v48 & 1;
  v57 = v60;
  sub_24EE4F494(v16, v60);
  return (*(v69 + 56))(v57, 0, 1, v55);
}

double sub_24EE45620@<D0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a4;
  v16 = sub_24F9248C8();
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9249A8();
  sub_24EE457D8(a3, &v17);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v13 = v20;
  v12 = v21;
  v26 = 1;
  v25 = v19;
  sub_24F9248B8();
  v17 = v8;
  v18 = 0;
  v19 = 1;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v24 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231790, &unk_24F9A6B10);
  sub_24E602068(&qword_27F231798, &qword_27F231790, &unk_24F9A6B10, MEMORY[0x277CE1138]);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v5 + 8))(v7, v16);
  sub_24E600B40(v9, v10, v11);

  return result;
}

uint64_t sub_24EE457D8@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E600AEC();

  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  (*(v14 + 48))(v13, v14);
  if (v15)
  {
    v16 = sub_24F926E48();
  }

  else
  {
    v16 = 0;
  }

  v17 = v10 & 1;
  sub_24E5FD138(v6, v8, v17);
  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v17;
  *(a4 + 24) = v12;
  *(a4 + 32) = v16;

  sub_24E600B40(v6, v8, v17);
}

uint64_t sub_24EE458EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v57 = sub_24F925128();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F924118();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24F923C68();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317C0, &qword_24F9A6B58);
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317C8, &qword_24F9A6B60);
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317D0, &qword_24F9A6B68);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317D8, &qword_24F9A6B70);
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317E0, &qword_24F9A6B78);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v40 = &v40 - v21;
  v58 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2317E8, &qword_24F9A6B80);
  sub_24E602068(&qword_27F2317F0, &qword_27F2317E8, &qword_24F9A6B80, MEMORY[0x277CE14C0]);
  sub_24F925A98();
  sub_24F923C58();
  v22 = sub_24E602068(&qword_27F2317F8, &qword_27F2317C0, &qword_24F9A6B58, MEMORY[0x277CDE5A0]);
  v23 = MEMORY[0x277CDD980];
  v24 = v42;
  sub_24F926B98();
  (*(v44 + 8))(v8, v24);
  (*(v41 + 8))(v11, v9);
  v25 = v50;
  sub_24F924108();
  v59 = v9;
  v60 = v24;
  v61 = v22;
  v62 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x277CDDAC8];
  v28 = v52;
  sub_24F926B98();
  (*(v53 + 8))(v25, v28);
  (*(v46 + 8))(v14, v12);
  v59 = v12;
  v60 = v28;
  v61 = OpaqueTypeConformance2;
  v62 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v43;
  sub_24F926688();
  (*(v45 + 8))(v16, v30);
  v59 = v30;
  v60 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v40;
  v33 = v47;
  sub_24F926778();
  v34 = v33;
  (*(v48 + 8))(v20, v33);
  v35 = sub_24F925818();
  v36 = v54;
  sub_24F925118();
  v59 = v34;
  v60 = v31;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v49;
  MEMORY[0x25304BCF0](v35, 0, 0, v36, v49, v37);
  (*(v55 + 8))(v36, v57);
  return (*(v51 + 8))(v32, v38);
}

uint64_t sub_24EE46048@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for InviteFriendsPageView.ShelfListView(0);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231800, &qword_24F9A6B88);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231808, &qword_24F9A6B90);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v39 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = v35 - v11;
  v12 = type metadata accessor for InviteFriendsPageView.ShelfHeaderView(0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231810, &qword_24F9A6B98);
  v43 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v35 - v17;
  sub_24EE4A97C(a1, v14, type metadata accessor for GSKShelf);
  sub_24F923838();
  sub_24EE4A2A0(&qword_27F231818, type metadata accessor for InviteFriendsPageView.ShelfHeaderView, &unk_24F9A6D78);
  v35[0] = v18;
  sub_24F9264B8();
  sub_24EE4E98C(v14, type metadata accessor for InviteFriendsPageView.ShelfHeaderView);
  v45 = *(a1 + *(type metadata accessor for GSKShelf(0) + 60));
  v35[1] = swift_getKeyPath();
  sub_24EE4A97C(a1, v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsPageView.ShelfListView);
  v19 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v20 = swift_allocObject();
  sub_24EE4C4A4(v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for InviteFriendsPageView.ShelfListView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB80, &qword_24F99E190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231820, &qword_24F9A6BD0);
  sub_24E602068(&qword_27F22FB78, &qword_27F22FB80, &qword_24F99E190, MEMORY[0x277D83980]);
  sub_24E602068(&qword_27F231828, &qword_27F231820, &qword_24F9A6BD0, MEMORY[0x277CE14C0]);
  sub_24F927228();
  *&v7[*(v5 + 36)] = sub_24F927158();
  sub_24F923838();
  sub_24EE50A6C();
  v21 = v44;
  sub_24F9264B8();
  sub_24E601704(v7, &qword_27F231800, &qword_24F9A6B88);
  v22 = *(v43 + 16);
  v23 = v37;
  v24 = v18;
  v25 = v38;
  v22(v37, v24, v38);
  v26 = v39;
  v27 = v40;
  v28 = *(v40 + 16);
  v29 = v41;
  v28(v39, v21, v41);
  v30 = v42;
  v22(v42, v23, v25);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231858, &qword_24F9A6BE8);
  v28(&v30[*(v31 + 48)], v26, v29);
  v32 = *(v27 + 8);
  v32(v44, v29);
  v33 = *(v43 + 8);
  v33(v35[0], v25);
  v32(v26, v29);
  return v33(v23, v25);
}

uint64_t sub_24EE46654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v88 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231860, &qword_24F9A6BF0);
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231868, &qword_24F9A6BF8);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v70 - v7;
  v8 = type metadata accessor for InviteFriendsCardComponent(0);
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231870, &qword_24F9A6C00);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v70 - v13;
  v14 = type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0);
  v77 = *(v14 - 8);
  v78 = v14;
  MEMORY[0x28223BE20](v14);
  v72 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FriendSuggestion(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231878, &qword_24F9A6C08);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v70 - v26;
  v28 = type metadata accessor for InviteFriendsRow(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231880, &unk_24F9A6C10);
  MEMORY[0x28223BE20](v32 - 8);
  v79 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v70 - v35;
  v82 = a1;
  sub_24E615E00(a1, &KeyPath);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  v37 = swift_dynamicCast();
  v38 = *(v29 + 56);
  if ((v37 & 1) == 0)
  {
    v46 = 1;
    v38(v27, 1, 1, v28);
    sub_24E601704(v27, &qword_27F231878, &qword_24F9A6C08);
    v47 = v84;
    v48 = v81;
LABEL_8:
    v50 = v78;
    goto LABEL_10;
  }

  v38(v27, 0, 1, v28);
  sub_24EE4C4A4(v27, v31, type metadata accessor for InviteFriendsRow);
  v39 = (v73 + *(type metadata accessor for InviteFriendsPageView.ShelfListView(0) + 20));
  v41 = *v39;
  v40 = v39[1];
  v42 = v39[2];
  KeyPath = v41;
  v92 = v40;
  v73 = v40;
  v71 = v42;
  v93 = v42;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231898, &unk_24F9A6C50);
  MEMORY[0x25304CAF0](&v89);
  v43 = v89;
  sub_24EE4A97C(&v31[*(v28 + 20)], v24, type metadata accessor for FriendSuggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24EE4C4A4(v24, v21, type metadata accessor for ActivityFriendSuggestion);
    sub_24EE4A97C(v21, v18, type metadata accessor for Player);
    sub_24EE4E98C(v21, type metadata accessor for ActivityFriendSuggestion);
    v45 = *v18;
    v44 = v18[1];

    sub_24EE4E98C(v18, type metadata accessor for Player);
  }

  else
  {
    v45 = *v24;
    v44 = v24[1];
  }

  v47 = v84;
  v48 = v81;
  v49 = sub_24F4D36F8(v45, v44, v43);

  if (v49)
  {
    sub_24EE4E98C(v31, type metadata accessor for InviteFriendsRow);
    v46 = 1;
    goto LABEL_8;
  }

  v51 = v72;
  sub_24EE4A97C(v31, v72, type metadata accessor for InviteFriendsRow);
  KeyPath = v41;
  v92 = v73;
  v93 = v71;
  sub_24F927198();
  sub_24EE4E98C(v31, type metadata accessor for InviteFriendsRow);
  v52 = v90;
  v53 = v78;
  v54 = v51 + *(v78 + 20);
  *v54 = v89;
  *(v54 + 8) = v52;
  v55 = v51 + *(v53 + 24);
  *v55 = swift_getKeyPath();
  *(v55 + 40) = 0;
  v56 = *(v53 + 28);
  *(v51 + v56) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  sub_24EE4C4A4(v51, v36, type metadata accessor for InviteFriendsPageView.InviteFriendsRowView);
  v50 = v53;
  v46 = 0;
LABEL_10:
  (*(v77 + 56))(v36, v46, 1, v50);
  sub_24E615E00(v82, &KeyPath);
  v57 = v83;
  v58 = swift_dynamicCast();
  v59 = *(v80 + 56);
  v60 = v86;
  if (v58)
  {
    v59(v57, 0, 1, v48);
    v61 = v74;
    sub_24EE4C4A4(v57, v74, type metadata accessor for InviteFriendsCardComponent);
    KeyPath = swift_getKeyPath();
    LOBYTE(v92) = 0;
    sub_24EE50BFC();
    v62 = v75;
    sub_24F921D38();

    sub_24EE4E98C(v61, type metadata accessor for InviteFriendsCardComponent);
    v63 = v87;
    (*(v60 + 32))(v47, v62, v87);
    v64 = 0;
  }

  else
  {
    v64 = 1;
    v59(v57, 1, 1, v48);
    sub_24E601704(v57, &qword_27F231868, &qword_24F9A6BF8);
    v63 = v87;
  }

  (*(v60 + 56))(v47, v64, 1, v63);
  v65 = v79;
  sub_24E60169C(v36, v79, &qword_27F231880, &unk_24F9A6C10);
  v66 = v85;
  sub_24E60169C(v47, v85, &qword_27F231870, &qword_24F9A6C00);
  v67 = v88;
  sub_24E60169C(v65, v88, &qword_27F231880, &unk_24F9A6C10);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231888, &qword_24F9A6C20);
  sub_24E60169C(v66, v67 + *(v68 + 48), &qword_27F231870, &qword_24F9A6C00);
  sub_24E601704(v47, &qword_27F231870, &qword_24F9A6C00);
  sub_24E601704(v36, &qword_27F231880, &unk_24F9A6C10);
  sub_24E601704(v66, &qword_27F231870, &qword_24F9A6C00);
  return sub_24E601704(v65, &qword_27F231880, &unk_24F9A6C10);
}

uint64_t sub_24EE470DC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v31 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231990, &qword_24F9A6DE0);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for GSKShelf(0);
  sub_24E60169C(v1 + *(v8 + 24), v4, &qword_27F223138, &unk_24F972860);
  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    sub_24E601704(v4, &qword_27F223138, &unk_24F972860);
    if (qword_27F211668 != -1)
    {
      swift_once();
    }

    v10 = qword_27F39ED98;
    v11 = unk_27F39EDA0;
  }

  else
  {
    v10 = *v4;
    v11 = v4[1];

    sub_24EE4E98C(v4, type metadata accessor for HeaderPresentation.HeaderLabel);
  }

  v34 = v10;
  v35 = v11;
  sub_24E600AEC();
  v12 = sub_24F925E18();
  v14 = v13;
  v16 = v15;
  v17 = sub_24F925C88();
  v19 = v18;
  v21 = v20;
  sub_24E600B40(v12, v14, v16 & 1);

  sub_24F925988();
  v22 = sub_24F925C98();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_24E600B40(v17, v19, v21 & 1);

  v29 = sub_24F927158();
  v34 = v22;
  v35 = v24;
  v26 &= 1u;
  v36 = v26;
  v37 = v28;
  v38 = v29;
  sub_24F923838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231998, &qword_24F9A6DE8);
  sub_24EE51BF8();
  sub_24F9264B8();
  sub_24E600B40(v22, v24, v26);

  return (*(v31 + 32))(v33, v7, v32);
}

uint64_t sub_24EE47430@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = sub_24F924938();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InviteFriendsRowComponent(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A60, &qword_24F9A6E58);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A68, &qword_24F9A6E60);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v31 = 0x402E000000000000;
  sub_24E66ED98();
  sub_24F9237C8();
  *(v5 + v3[6]) = 0x4020000000000000;
  *(v5 + v3[7]) = 0x4050000000000000;
  v14 = v3[8];
  *(v5 + v14) = sub_24F9258D8();
  v15 = v3[9];
  *(v5 + v15) = sub_24F925A18();
  v16 = sub_24EE4A2A0(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent, &unk_24FA23C94);
  sub_24F921D38();
  sub_24EE4E98C(v5, type metadata accessor for InviteFriendsRowComponent);
  v30 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A78, &qword_24F9A6E68);
  v31 = v3;
  v32 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_24EE523FC(&qword_27F231A80, &qword_27F231A78, &qword_24F9A6E68, sub_24EE52478);
  sub_24F926198();
  (*(v7 + 8))(v9, v6);
  v20 = v23;
  sub_24F924928();
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A98, &qword_24F9A6E78);
  v31 = v6;
  v32 = v17;
  v33 = OpaqueTypeConformance2;
  v34 = v19;
  swift_getOpaqueTypeConformance2();
  sub_24EE523FC(&qword_27F231AA0, &qword_27F231A98, &qword_24F9A6E78, sub_24EE52564);
  v21 = v24;
  sub_24F9262C8();
  (*(v26 + 8))(v20, v28);
  return (*(v25 + 8))(v13, v21);
}

uint64_t sub_24EE47900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A90, &qword_24F9A6E70);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for InviteFriendsRow(0);
  sub_24E60169C(a1 + *(v12 + 52), &v18, &qword_27F213EA8, &unk_24F93D030);
  if (v19)
  {
    sub_24E612C80(&v18, v20);
    sub_24EE4A97C(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsPageView.InviteFriendsRowView);
    sub_24E615E00(v20, &v18);
    v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v14 = swift_allocObject();
    sub_24EE4C4A4(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for InviteFriendsPageView.InviteFriendsRowView);
    sub_24E612C80(&v18, v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58, &unk_24F935650);
    sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
    sub_24F926F88();
    __swift_destroy_boxed_opaque_existential_1(v20);
    KeyPath = swift_getKeyPath();
    v16 = &v11[*(v8 + 36)];
    *v16 = KeyPath;
    v16[1] = 0;
    sub_24E6009C8(v11, a2, &qword_27F231A90, &qword_24F9A6E70);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    sub_24E601704(&v18, qword_27F21B590, &unk_24F93BE30);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_24EE47C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231AB0, &qword_24F9A6E80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for InviteFriendsRow(0);
  sub_24E60169C(a1 + *(v12 + 52), &v18, &qword_27F213EA8, &unk_24F93D030);
  if (v19)
  {
    sub_24E612C80(&v18, v20);
    sub_24EE4A97C(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsPageView.InviteFriendsRowView);
    sub_24E615E00(v20, &v18);
    v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v14 = swift_allocObject();
    sub_24EE4C4A4(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for InviteFriendsPageView.InviteFriendsRowView);
    sub_24E612C80(&v18, v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    sub_24F926F88();
    __swift_destroy_boxed_opaque_existential_1(v20);
    KeyPath = swift_getKeyPath();
    v16 = &v11[*(v8 + 36)];
    *v16 = KeyPath;
    v16[1] = 0;
    sub_24E6009C8(v11, a2, &qword_27F231AB0, &qword_24F9A6E80);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    sub_24E601704(&v18, qword_27F21B590, &unk_24F93BE30);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_24EE47EC8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = sub_24F921B58();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = (v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FriendSuggestion(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for InviteFriendsRow(0);
  sub_24EE4A97C(a1 + *(v10 + 20), v9, type metadata accessor for FriendSuggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24EE4C4A4(v9, v6, type metadata accessor for ActivityFriendSuggestion);
    v11 = *v6;
    v12 = v6[1];
    v13 = (a1 + *(type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0) + 20));
    v15 = v13[1];
    v16 = v13[2];
    v31 = *v13;
    v14 = v31;
    v32 = v15;
    v33 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231898, &unk_24F9A6C50);
    MEMORY[0x25304CAF0](&v39);
    sub_24ED7C5F0(&v40, v11, v12);

    v36 = v14;
    v37 = v15;
    v38 = v16;
    v35 = v39;
    sub_24F927178();
    sub_24EE4E98C(v6, type metadata accessor for ActivityFriendSuggestion);
  }

  else
  {
    v18 = *v9;
    v17 = v9[1];
    v19 = v9[5];
    v26[1] = v9[7];
    v26[2] = v19;
    v26[0] = v9[9];
    v20 = (a1 + *(type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0) + 20));
    v22 = v20[1];
    v23 = v20[2];
    v31 = *v20;
    v21 = v31;
    v32 = v22;
    v33 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231898, &unk_24F9A6C50);
    MEMORY[0x25304CAF0](&v39);
    sub_24ED7C5F0(&v40, v18, v17);

    v36 = v21;
    v37 = v22;
    v38 = v23;
    v35 = v39;
    sub_24F927178();
  }

  type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0);
  sub_24F7695C8(&v31);
  if (!v34)
  {
    return sub_24E601704(&v31, &unk_27F212740, &unk_24F940730);
  }

  __swift_project_boxed_opaque_existential_1(&v31, v34);
  v24 = v27;
  sub_24F76973C(v27);
  sub_24F9218A8();
  (*(v28 + 8))(v24, v30);
  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_24EE48300()
{
  v0._object = 0x800000024FA5FB50;
  v0._countAndFlagsBits = 0xD00000000000002CLL;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  localizedString(_:comment:)(v0, v1);
  sub_24E600AEC();
  return sub_24F926EB8();
}

uint64_t sub_24EE48390(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_24EE4A814(v5, v7) & 1;
}

double sub_24EE483DC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
  sub_24F91FD88();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 48);
  *(a2 + 32) = v8;
  return sub_24EE4E888(v4, v5, v6, v7, v8);
}

void sub_24EE48498(int8x16_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  if (!*(v1 + 48))
  {
    if (a1[2].i8[0])
    {
      goto LABEL_28;
    }

    if (v3 == a1->i64[0] && v4 == a1->i64[1])
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  if (v7 == 1)
  {
    if (a1[2].i8[0] != 1)
    {
      goto LABEL_28;
    }

    v9 = a1[1].i64[0];
    v8 = a1[1].i64[1];
    v10 = v3 == a1->i64[0] && v4 == a1->i64[1];
    if (!v10 && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v6)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      if (v5 != v9 || v6 != v8)
      {
LABEL_19:
        if (sub_24F92CE08())
        {
          goto LABEL_30;
        }

LABEL_28:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
        sub_24F91FD78();
        sub_24EE4E820(a1);

        return;
      }
    }

    else if (v8)
    {
      goto LABEL_28;
    }
  }

  else if (v5 | v4 | v3 | v6)
  {
    if (a1[2].i8[0] != 2 || a1->i64[0] != 1 || a1[1].i64[0] | a1[1].i64[1] | a1->i64[1])
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (a1[2].i8[0] != 2)
    {
      goto LABEL_28;
    }

    v12 = vorrq_s8(*a1, a1[1]);
    if (vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
    {
      goto LABEL_28;
    }
  }

LABEL_30:
  v14 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v14;
  *(v1 + 48) = a1[2].i8[0];

  sub_24EE4E740(v3, v4, v5, v6, v7);
}

uint64_t sub_24EE48710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 32);
  sub_24EE4E850(a2, v9);
  return sub_24EE4E740(v2, v3, v4, v5, v7);
}

void sub_24EE48790(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
  sub_24F91FD88();

  *a2 = *(v3 + 49);
}

void sub_24EE48838(char a1)
{
  if (*(v1 + 49) == (a1 & 1))
  {
    *(v1 + 49) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
    sub_24F91FD78();
  }
}

uint64_t sub_24EE48948()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231690, &unk_24FA117F0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40, &qword_24F96E190);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8, &unk_24F9F7350);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 2;
  *(v0 + 50) = 0;
  sub_24F91FDB8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  sub_24F92B868();
  (*(v2 + 8))(v4, v1);
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStream, v12, v9);
  (*(v6 + 32))(v0 + OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStreamContinuation, v8, v5);
  return v0;
}

uint64_t sub_24EE48BD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40, &qword_24F96E190);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStreamContinuation;
  (*(v3 + 16))(&v14 - v5, v1 + OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStreamContinuation, v2, v4);
  sub_24F92B8D8();
  v8 = *(v3 + 8);
  v8(v6, v2);
  sub_24EE4E740(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v9 = OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter_searchTermStream;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8E8, &unk_24F9F7350);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v8((v1 + v7), v2);
  v11 = OBJC_IVAR____TtC12GameStoreKitP33_7A10BEAB54B6DC2FC53A714895EAB37132InviteFriendsSearchPagePresenter___observationRegistrar;
  v12 = sub_24F91FDC8();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  return swift_deallocClassInstance();
}

uint64_t sub_24EE48DB4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231660, &qword_24F9A67D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  swift_getKeyPath();
  v21.i64[0] = v2;
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
  sub_24F91FD88();

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  if (*(v3 + 48))
  {
    if (*(v3 + 48) != 1)
    {
      goto LABEL_11;
    }

    if (*(v3 + 40))
    {
      v11 = *(v3 + 32);
      v10 = *(v3 + 40);
    }

    else
    {
    }
  }

  if (v11 == a1 && v10 == a2)
  {
  }

  v13 = sub_24F92CE08();

  if ((v13 & 1) == 0)
  {
LABEL_11:
    swift_getKeyPath();
    v21.i64[0] = v3;
    sub_24F91FD88();

    if (*(v3 + 48))
    {
      if (*(v3 + 48) == 1)
      {
        v14 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v14 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (!v14)
        {
LABEL_20:
          v21 = 1uLL;
          v22 = 0;
          v23 = 0;
          v24 = 2;
          KeyPath = swift_getKeyPath();
          v18[1] = v18;
          MEMORY[0x28223BE20](KeyPath);
          v18[-2] = v3;
          v18[-1] = &v21;
          v19 = v3;
          sub_24F91FD78();

LABEL_26:
          v19 = a1;
          v20 = a2;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40, &qword_24F96E190);
          sub_24F92B8C8();
          return (*(v7 + 8))(v9, v6);
        }
      }

      else
      {
        if (!(*(v3 + 32) | *(v3 + 40) | *(v3 + 16) | *(v3 + 24)))
        {
          goto LABEL_26;
        }

        v17 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v17 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (!v17)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v15 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v15 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
        goto LABEL_20;
      }
    }

    v21.i64[0] = a1;
    v21.i64[1] = a2;
    v22 = 0;
    v23 = 0;
    v24 = 0;

    sub_24EE48498(&v21);
    goto LABEL_26;
  }

  return result;
}

void sub_24EE49198(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  swift_getKeyPath();
  sub_24EE4A2A0(&qword_27F231520, type metadata accessor for InviteFriendsSearchPagePresenter, &unk_24F9A66E4);
  sub_24F91FD88();

  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  v9 = *(v4 + 48);
  sub_24EE4E888(v5, v6, v7, v8, *(v4 + 48));

  if (!v9)
  {
    goto LABEL_7;
  }

  if (v9 != 1)
  {
LABEL_6:
    v5 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_7;
  }

  if (v8)
  {
    sub_24EE4E740(v5, v6, v7, v8, 1);
    v5 = v7;
    v6 = v8;
  }

  else
  {
    sub_24EE4E740(v5, v6, v7, 0, 1);
  }

LABEL_7:
  *a2 = v5;
  a2[1] = v6;
}

double sub_24EE49314(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EE48DB4(v4, v5);
  }

  return result;
}

double sub_24EE49394()
{
  v1 = *(type metadata accessor for InviteFriendsPageView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24EE43350(v2);
}

uint64_t objectdestroy_10Tm_1()
{
  v1 = type metadata accessor for InviteFriendsPageView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(type metadata accessor for InviteFriendsPageIntent(0) + 24);
  v4 = type metadata accessor for Page.Background(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v11 = sub_24F9289E8();
          (*(*(v11 - 8) + 8))(v3, v11);
          v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v13 = sub_24F922348();
          v14 = *(v13 - 8);
          if (!(*(v14 + 48))(v3 + v12, 1, v13))
          {
            (*(v14 + 8))(v3 + v12, v13);
          }
        }
      }

      else
      {
        v24 = sub_24F9289E8();
        (*(*(v24 - 8) + 8))(v3, v24);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v15 = sub_24F9289E8();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v3, 1, v15))
      {
        (*(v16 + 8))(v3, v15);
      }

      v17 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v18 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
      {
        v19 = sub_24F91F4A8();
        (*(*(v19 - 8) + 8))(v17, v19);
        (*(v16 + 8))(v17 + v18[5], v15);
        v20 = v18[9];
        v21 = sub_24F928698();
        v25 = v20;
        v27 = *(v21 - 8);
        v22 = v17 + v20;
        v23 = v21;
        v28 = *(v27 + 48);
        if (!v28(v22, 1, v21))
        {
          (*(v27 + 8))(v17 + v25, v23);
        }

        v26 = v18[10];
        if (!v28(v17 + v26, 1, v23))
        {
          (*(v27 + 8))(v17 + v26, v23);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v10 = sub_24F928388();
      (*(*(v10 - 8) + 8))(v3, v10);
    }
  }

  sub_24E62A5EC(*(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8));
  v5 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231510, &qword_24F9A6490);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F9219D8();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EE49A2C(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for InviteFriendsPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EE434FC(a1, a2, v6);
}

uint64_t sub_24EE49ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InviteFriendsPageIntent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231530, &qword_24F9A6528);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE49C20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InviteFriendsPageIntent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231530, &qword_24F9A6528);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24EE49D50(uint64_t a1)
{
  type metadata accessor for InviteFriendsPageIntent(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24EE4A730(319, &qword_27F231548, type metadata accessor for InviteFriendsSearchPagePresenter, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_24E65E73C();
        if (v4 <= 0x3F)
        {
          sub_24EE4A034(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24EE4EC40(319, &qword_27F231550, &qword_27F21C330, &qword_24F9DAB90, MEMORY[0x277CDF468]);
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

void sub_24EE49ED0(uint64_t a1)
{
  sub_24EE4A034(319, &qword_27F231578, MEMORY[0x277D837D0], MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_24EE4A034(319, &qword_27F231580, MEMORY[0x277D837D0], MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      sub_24F91FDC8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24EE4A034(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_24EE4A088()
{
  result = qword_27F231588;
  if (!qword_27F231588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231528, &unk_24F9A64C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2314E0, &qword_24F9A6448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2314D8, &qword_24F9A6440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2314D0, &qword_24F9A6438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2314C8, &qword_24F9A6430);
    sub_24E602068(&qword_27F231508, &qword_27F2314C8, &qword_24F9A6430, MEMORY[0x277CE1198]);
    sub_24E600AEC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24EE4A2A0(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231588);
  }

  return result;
}

uint64_t sub_24EE4A2A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit32InviteFriendsSearchPagePresenter33_7A10BEAB54B6DC2FC53A714895EAB371LLC0F5StateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_24EE4A328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE4A46C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Page(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24EE4A5BC(uint64_t a1)
{
  type metadata accessor for Page(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for InviteFriendsSearchPagePresenter(319);
    if (v2 <= 0x3F)
    {
      sub_24F928FD8();
      if (v3 <= 0x3F)
      {
        sub_24EE4EC40(319, &qword_27F2315A0, &unk_27F21E480, &unk_24F944D20, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_24EE4EC40(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24EE4A730(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
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

void sub_24EE4A730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24EE4A7B4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;

  return MEMORY[0x2821E7C78](a1, a2, a3);
}

uint64_t sub_24EE4A814(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a1 + 32))
  {
    v6 = a1[2];
    v5 = a1[3];
    if (*(a1 + 32) != 1)
    {
      if (v6 | v4 | v3 | v5)
      {
        if (a2[2].i8[0] == 2 && a2->i64[0] == 1 && !(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
        {
          return 1;
        }
      }

      else if (a2[2].i8[0] == 2)
      {
        v13 = vorrq_s8(*a2, a2[1]);
        if (!*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))
        {
          return 1;
        }
      }

      return 0;
    }

    if (a2[2].i8[0] != 1)
    {
      return 0;
    }

    v8 = a2[1].i64[0];
    v7 = a2[1].i64[1];
    v9 = v3 == a2->i64[0] && v4 == a2->i64[1];
    if (v9 || (v10 = sub_24F92CE08(), result = 0, (v10 & 1) != 0))
    {
      if (v5)
      {
        return v7 && (v6 == v8 && v5 == v7 || (sub_24F92CE08() & 1) != 0);
      }

      return !v7;
    }
  }

  else
  {
    if (a2[2].i8[0])
    {
      return 0;
    }

    if (v3 == a2->i64[0] && v4 == a2->i64[1])
    {
      return 1;
    }

    return sub_24F92CE08();
  }

  return result;
}

uint64_t sub_24EE4A97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE4A9E4()
{
  v1 = type metadata accessor for InviteFriendsPageView.PageContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = sub_24F92A708();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for Page(0);

  v6 = v5[6];
  v7 = sub_24F928818();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  v8 = v3 + v5[20];
  v9 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    goto LABEL_55;
  }

  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v11 = (*(v10 - 1) + 48);
  v109 = *v11;
  if (!(*v11)(v8, 1, v10))
  {

    v12 = v8 + v10[5];
    v13 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v89 = sub_24F9289E8();
          (*(*(v89 - 8) + 8))(v12, v89);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v14 = v8 + v10[7];
          v15 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v17 = sub_24F928388();
              (*(*(v17 - 8) + 8))(v14, v17);
            }
          }

          v18 = (v8 + v10[10]);
          if (v18[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v18);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v77 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v78 = type metadata accessor for JSColor(0);
        if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
        {
          v79 = sub_24F928388();
          (*(*(v79 - 8) + 8))(v77, v79);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v86 = sub_24F9289E8();
        v87 = *(v86 - 8);
        if (!(*(v87 + 48))(v12, 1, v86))
        {
          (*(v87 + 8))(v12, v86);
        }

        if (*(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v19 = v8 + v9[5];
  if (v109(v19, 1, v10))
  {
    goto LABEL_32;
  }

  v20 = v19 + v10[5];
  v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    goto LABEL_17;
  }

  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 2)
  {
    if (!v24)
    {

      v80 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v81 = type metadata accessor for JSColor(0);
      if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
      {
        v82 = sub_24F928388();
        (*(*(v82 - 8) + 8))(v80, v82);
      }

      goto LABEL_17;
    }

    if (v24 == 1)
    {
      v88 = sub_24F9289E8();
      v108 = *(v88 - 8);
      if (!(*(v108 + 48))(v20, 1, v88))
      {
        (*(v108 + 8))(v20, v88);
      }

      if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v24 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v24)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v91 = sub_24F9289E8();
      (*(*(v91 - 8) + 8))(v20, v91);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v22 = v19 + v10[7];
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v22, v25);
    }
  }

  v26 = (v19 + v10[10]);
  if (v26[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_32:
  v27 = v8 + v9[6];
  if (v109(v27, 1, v10))
  {
    goto LABEL_49;
  }

  v28 = v27 + v10[5];
  v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    goto LABEL_34;
  }

  v32 = swift_getEnumCaseMultiPayload();
  if (v32 <= 2)
  {
    if (!v32)
    {

      v83 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v84 = type metadata accessor for JSColor(0);
      if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
      {
        v85 = sub_24F928388();
        (*(*(v85 - 8) + 8))(v83, v85);
      }

      goto LABEL_34;
    }

    if (v32 == 1)
    {
      v90 = sub_24F9289E8();
      v110 = *(v90 - 8);
      if (!(*(v110 + 48))(v28, 1, v90))
      {
        (*(v110 + 8))(v28, v90);
      }

      if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v32 != 2)
    {
      goto LABEL_34;
    }

LABEL_110:

    goto LABEL_34;
  }

  switch(v32)
  {
    case 3:
      goto LABEL_110;
    case 4:
      v92 = sub_24F9289E8();
      (*(*(v92 - 8) + 8))(v28, v92);
      break;
    case 5:
      goto LABEL_110;
  }

LABEL_34:
  v30 = v27 + v10[7];
  v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v30, v33);
    }
  }

  v34 = (v27 + v10[10]);
  if (v34[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_49:
  v35 = v8 + v9[7];
  if (*(v35 + 56) == 1)
  {
  }

  else if (!*(v35 + 56))
  {

    if (*(v35 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v35 + 16));
    }
  }

  v36 = v8 + v9[8];
  v37 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v54 = swift_getEnumCaseMultiPayload();
    if (v54 == 2)
    {
      goto LABEL_156;
    }

    if (v54 != 1)
    {
      if (v54)
      {
        goto LABEL_55;
      }

      v55 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v55 - 8) + 48))(v36, 1, v55))
      {
        goto LABEL_55;
      }

      v56 = swift_getEnumCaseMultiPayload();
      if (v56 > 2)
      {
        if (v56 != 3)
        {
          if (v56 == 4)
          {
            v107 = sub_24F9289E8();
            (*(*(v107 - 8) + 8))(v36, v107);
            goto LABEL_55;
          }

          if (v56 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_156;
      }

      if (v56)
      {
        if (v56 == 1)
        {
          v105 = sub_24F9289E8();
          v106 = *(v105 - 8);
          if (!(*(v106 + 48))(v36, 1, v105))
          {
            (*(v106 + 8))(v36, v105);
          }

          if (!*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v56 != 2)
        {
          goto LABEL_55;
        }

LABEL_156:

        goto LABEL_55;
      }

      v72 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v73 = type metadata accessor for JSColor(0);
      if ((*(*(v73 - 8) + 48))(v72, 1, v73))
      {
        goto LABEL_55;
      }

LABEL_106:
      v74 = sub_24F928388();
      (*(*(v74 - 8) + 8))(v72, v74);

      goto LABEL_55;
    }

    v68 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v69 = *(*(v68 - 8) + 48);
    if (v69(v36, 1, v68))
    {
LABEL_104:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v71 = v36 + *(v70 + 48);
      if (v69(v71, 1, v68))
      {
        goto LABEL_105;
      }

      v76 = swift_getEnumCaseMultiPayload();
      if (v76 <= 2)
      {
        if (v76)
        {
          if (v76 != 1)
          {
            if (v76 != 2)
            {
              goto LABEL_105;
            }

LABEL_152:

            goto LABEL_105;
          }

          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v71, 1, v101))
          {
            (*(v102 + 8))(v71, v101);
          }

          if (*(v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
          }
        }

        else
        {

          v96 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
          v97 = type metadata accessor for JSColor(0);
          if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
          {
            v98 = sub_24F928388();
            (*(*(v98 - 8) + 8))(v96, v98);
          }
        }

LABEL_105:
        v72 = v36 + *(v70 + 80);
        v73 = type metadata accessor for JSColor(0);
        if ((*(*(v73 - 8) + 48))(v72, 1, v73))
        {
          goto LABEL_55;
        }

        goto LABEL_106;
      }

      if (v76 != 3)
      {
        if (v76 == 4)
        {
          v104 = sub_24F9289E8();
          (*(*(v104 - 8) + 8))(v71, v104);
          goto LABEL_105;
        }

        if (v76 != 5)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_152;
    }

    v75 = swift_getEnumCaseMultiPayload();
    if (v75 > 2)
    {
      if (v75 != 3)
      {
        if (v75 == 4)
        {
          v103 = sub_24F9289E8();
          (*(*(v103 - 8) + 8))(v36, v103);
          goto LABEL_104;
        }

        if (v75 != 5)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      if (!v75)
      {

        v93 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v94 = type metadata accessor for JSColor(0);
        if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
        {
          v95 = sub_24F928388();
          (*(*(v95 - 8) + 8))(v93, v95);
        }

        goto LABEL_104;
      }

      if (v75 == 1)
      {
        v99 = sub_24F9289E8();
        v100 = *(v99 - 8);
        if (!(*(v100 + 48))(v36, 1, v99))
        {
          (*(v100 + 8))(v36, v99);
        }

        if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_104;
      }

      if (v75 != 2)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_104;
  }

LABEL_55:
  if (*(v3 + v5[23]))
  {
  }

  v38 = v3 + v5[24];
  v39 = type metadata accessor for Page.Background(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 <= 1)
    {
      if (v48)
      {
        if (v48 == 1)
        {
          v50 = sub_24F9289E8();
          (*(*(v50 - 8) + 8))(v38, v50);
          v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v52 = sub_24F922348();
          v53 = *(v52 - 8);
          if (!(*(v53 + 48))(v38 + v51, 1, v52))
          {
            (*(v53 + 8))(v38 + v51, v52);
          }
        }
      }

      else
      {
        v67 = sub_24F9289E8();
        (*(*(v67 - 8) + 8))(v38, v67);
      }
    }

    else if (v48 == 2)
    {
      v57 = sub_24F9289E8();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(v38, 1, v57))
      {
        (*(v58 + 8))(v38, v57);
      }

      v59 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v60 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v60 - 1) + 48))(v59, 1, v60))
      {
        v61 = sub_24F91F4A8();
        (*(*(v61 - 8) + 8))(v59, v61);
        (*(v58 + 8))(v59 + v60[5], v57);
        v62 = v60[9];
        v63 = sub_24F928698();
        v64 = *(v63 - 8);
        v65 = *(v64 + 48);
        if (!v65(v59 + v62, 1, v63))
        {
          (*(v64 + 8))(v59 + v62, v63);
        }

        v66 = v60[10];
        if (!v65(v59 + v66, 1, v63))
        {
          (*(v64 + 8))(v59 + v66, v63);
        }
      }
    }

    else if (v48 == 3 || v48 == 4)
    {
      v49 = sub_24F928388();
      (*(*(v49 - 8) + 8))(v38, v49);
    }
  }

  v40 = (v3 + v5[27]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = (v3 + v5[28]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v3 + v5[29]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = (v3 + v5[30]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v3 + *(v1 + 40);
  if (*(v44 + 40))
  {
    if (*(v44 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v44);
    }
  }

  else
  {
  }

  v45 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_24F921B58();
    (*(*(v46 - 8) + 8))(v3 + v45, v46);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EE4C4A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE4C50C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InviteFriendsPageView.PageContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EE43650(a1, v6, a2);
}

uint64_t sub_24EE4C594()
{

  return swift_deallocObject();
}

uint64_t sub_24EE4C5CC()
{
  v1 = type metadata accessor for InviteFriendsPageView.PageContent(0);
  v2 = *(*(v1 - 8) + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v3 = v0 + ((v2 + 56) & ~v2);
  v4 = sub_24F92A708();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for Page(0);

  v6 = v5[6];
  v7 = sub_24F928818();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  v8 = v3 + v5[20];
  v9 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    goto LABEL_55;
  }

  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v11 = (*(v10 - 1) + 48);
  v109 = *v11;
  if (!(*v11)(v8, 1, v10))
  {

    v12 = v8 + v10[5];
    v13 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v89 = sub_24F9289E8();
          (*(*(v89 - 8) + 8))(v12, v89);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v14 = v8 + v10[7];
          v15 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v17 = sub_24F928388();
              (*(*(v17 - 8) + 8))(v14, v17);
            }
          }

          v18 = (v8 + v10[10]);
          if (v18[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v18);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v77 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v78 = type metadata accessor for JSColor(0);
        if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
        {
          v79 = sub_24F928388();
          (*(*(v79 - 8) + 8))(v77, v79);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v86 = sub_24F9289E8();
        v87 = *(v86 - 8);
        if (!(*(v87 + 48))(v12, 1, v86))
        {
          (*(v87 + 8))(v12, v86);
        }

        if (*(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v19 = v8 + v9[5];
  if (v109(v19, 1, v10))
  {
    goto LABEL_32;
  }

  v20 = v19 + v10[5];
  v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    goto LABEL_17;
  }

  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 2)
  {
    if (!v24)
    {

      v80 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v81 = type metadata accessor for JSColor(0);
      if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
      {
        v82 = sub_24F928388();
        (*(*(v82 - 8) + 8))(v80, v82);
      }

      goto LABEL_17;
    }

    if (v24 == 1)
    {
      v88 = sub_24F9289E8();
      v108 = *(v88 - 8);
      if (!(*(v108 + 48))(v20, 1, v88))
      {
        (*(v108 + 8))(v20, v88);
      }

      if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v24 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v24)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v91 = sub_24F9289E8();
      (*(*(v91 - 8) + 8))(v20, v91);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v22 = v19 + v10[7];
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v22, v25);
    }
  }

  v26 = (v19 + v10[10]);
  if (v26[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_32:
  v27 = v8 + v9[6];
  if (v109(v27, 1, v10))
  {
    goto LABEL_49;
  }

  v28 = v27 + v10[5];
  v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    goto LABEL_34;
  }

  v32 = swift_getEnumCaseMultiPayload();
  if (v32 <= 2)
  {
    if (!v32)
    {

      v83 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v84 = type metadata accessor for JSColor(0);
      if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
      {
        v85 = sub_24F928388();
        (*(*(v85 - 8) + 8))(v83, v85);
      }

      goto LABEL_34;
    }

    if (v32 == 1)
    {
      v90 = sub_24F9289E8();
      v110 = *(v90 - 8);
      if (!(*(v110 + 48))(v28, 1, v90))
      {
        (*(v110 + 8))(v28, v90);
      }

      if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v32 != 2)
    {
      goto LABEL_34;
    }

LABEL_110:

    goto LABEL_34;
  }

  switch(v32)
  {
    case 3:
      goto LABEL_110;
    case 4:
      v92 = sub_24F9289E8();
      (*(*(v92 - 8) + 8))(v28, v92);
      break;
    case 5:
      goto LABEL_110;
  }

LABEL_34:
  v30 = v27 + v10[7];
  v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v30, v33);
    }
  }

  v34 = (v27 + v10[10]);
  if (v34[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_49:
  v35 = v8 + v9[7];
  if (*(v35 + 56) == 1)
  {
  }

  else if (!*(v35 + 56))
  {

    if (*(v35 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v35 + 16));
    }
  }

  v36 = v8 + v9[8];
  v37 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v54 = swift_getEnumCaseMultiPayload();
    if (v54 == 2)
    {
      goto LABEL_156;
    }

    if (v54 != 1)
    {
      if (v54)
      {
        goto LABEL_55;
      }

      v55 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v55 - 8) + 48))(v36, 1, v55))
      {
        goto LABEL_55;
      }

      v56 = swift_getEnumCaseMultiPayload();
      if (v56 > 2)
      {
        if (v56 != 3)
        {
          if (v56 == 4)
          {
            v107 = sub_24F9289E8();
            (*(*(v107 - 8) + 8))(v36, v107);
            goto LABEL_55;
          }

          if (v56 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_156;
      }

      if (v56)
      {
        if (v56 == 1)
        {
          v105 = sub_24F9289E8();
          v106 = *(v105 - 8);
          if (!(*(v106 + 48))(v36, 1, v105))
          {
            (*(v106 + 8))(v36, v105);
          }

          if (!*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v56 != 2)
        {
          goto LABEL_55;
        }

LABEL_156:

        goto LABEL_55;
      }

      v72 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v73 = type metadata accessor for JSColor(0);
      if ((*(*(v73 - 8) + 48))(v72, 1, v73))
      {
        goto LABEL_55;
      }

LABEL_106:
      v74 = sub_24F928388();
      (*(*(v74 - 8) + 8))(v72, v74);

      goto LABEL_55;
    }

    v68 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v69 = *(*(v68 - 8) + 48);
    if (v69(v36, 1, v68))
    {
LABEL_104:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v71 = v36 + *(v70 + 48);
      if (v69(v71, 1, v68))
      {
        goto LABEL_105;
      }

      v76 = swift_getEnumCaseMultiPayload();
      if (v76 <= 2)
      {
        if (v76)
        {
          if (v76 != 1)
          {
            if (v76 != 2)
            {
              goto LABEL_105;
            }

LABEL_152:

            goto LABEL_105;
          }

          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v71, 1, v101))
          {
            (*(v102 + 8))(v71, v101);
          }

          if (*(v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
          }
        }

        else
        {

          v96 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
          v97 = type metadata accessor for JSColor(0);
          if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
          {
            v98 = sub_24F928388();
            (*(*(v98 - 8) + 8))(v96, v98);
          }
        }

LABEL_105:
        v72 = v36 + *(v70 + 80);
        v73 = type metadata accessor for JSColor(0);
        if ((*(*(v73 - 8) + 48))(v72, 1, v73))
        {
          goto LABEL_55;
        }

        goto LABEL_106;
      }

      if (v76 != 3)
      {
        if (v76 == 4)
        {
          v104 = sub_24F9289E8();
          (*(*(v104 - 8) + 8))(v71, v104);
          goto LABEL_105;
        }

        if (v76 != 5)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_152;
    }

    v75 = swift_getEnumCaseMultiPayload();
    if (v75 > 2)
    {
      if (v75 != 3)
      {
        if (v75 == 4)
        {
          v103 = sub_24F9289E8();
          (*(*(v103 - 8) + 8))(v36, v103);
          goto LABEL_104;
        }

        if (v75 != 5)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      if (!v75)
      {

        v93 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v94 = type metadata accessor for JSColor(0);
        if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
        {
          v95 = sub_24F928388();
          (*(*(v95 - 8) + 8))(v93, v95);
        }

        goto LABEL_104;
      }

      if (v75 == 1)
      {
        v99 = sub_24F9289E8();
        v100 = *(v99 - 8);
        if (!(*(v100 + 48))(v36, 1, v99))
        {
          (*(v100 + 8))(v36, v99);
        }

        if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_104;
      }

      if (v75 != 2)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_104;
  }

LABEL_55:
  if (*(v3 + v5[23]))
  {
  }

  v38 = v3 + v5[24];
  v39 = type metadata accessor for Page.Background(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 <= 1)
    {
      if (v48)
      {
        if (v48 == 1)
        {
          v50 = sub_24F9289E8();
          (*(*(v50 - 8) + 8))(v38, v50);
          v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v52 = sub_24F922348();
          v53 = *(v52 - 8);
          if (!(*(v53 + 48))(v38 + v51, 1, v52))
          {
            (*(v53 + 8))(v38 + v51, v52);
          }
        }
      }

      else
      {
        v67 = sub_24F9289E8();
        (*(*(v67 - 8) + 8))(v38, v67);
      }
    }

    else if (v48 == 2)
    {
      v57 = sub_24F9289E8();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(v38, 1, v57))
      {
        (*(v58 + 8))(v38, v57);
      }

      v59 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v60 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v60 - 1) + 48))(v59, 1, v60))
      {
        v61 = sub_24F91F4A8();
        (*(*(v61 - 8) + 8))(v59, v61);
        (*(v58 + 8))(v59 + v60[5], v57);
        v62 = v60[9];
        v63 = sub_24F928698();
        v64 = *(v63 - 8);
        v65 = *(v64 + 48);
        if (!v65(v59 + v62, 1, v63))
        {
          (*(v64 + 8))(v59 + v62, v63);
        }

        v66 = v60[10];
        if (!v65(v59 + v66, 1, v63))
        {
          (*(v64 + 8))(v59 + v66, v63);
        }
      }
    }

    else if (v48 == 3 || v48 == 4)
    {
      v49 = sub_24F928388();
      (*(*(v49 - 8) + 8))(v38, v49);
    }
  }

  v40 = (v3 + v5[27]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = (v3 + v5[28]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v3 + v5[29]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = (v3 + v5[30]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v3 + *(v1 + 40);
  if (*(v44 + 40))
  {
    if (*(v44 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v44);
    }
  }

  else
  {
  }

  v45 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_24F921B58();
    (*(*(v46 - 8) + 8))(v3 + v45, v46);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EE4E094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InviteFriendsPageView.PageContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_24EE43ABC(a1, v2 + 16, v6, a2);
}

unint64_t sub_24EE4E118()
{
  result = qword_27F2315E0;
  if (!qword_27F2315E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315C0, &qword_24F9A6728);
    sub_24EE4E2C8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315F0, &qword_24F9A6730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315F8, &qword_24F9A6738);
    type metadata accessor for InviteFriendsPageView.ShelfListView(255);
    sub_24EE4A2A0(&qword_27F231600, type metadata accessor for InviteFriendsPageView.ShelfListView, &unk_24F9A69B8);
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231608, &unk_24F9A6740);
    sub_24EE4E33C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2315E0);
  }

  return result;
}

unint64_t sub_24EE4E2C8()
{
  result = qword_27F2315E8;
  if (!qword_27F2315E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2315E8);
  }

  return result;
}

unint64_t sub_24EE4E33C()
{
  result = qword_27F231610;
  if (!qword_27F231610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231608, &unk_24F9A6740);
    type metadata accessor for InviteFriendsPageView.ShelfListView(255);
    sub_24EE4A2A0(&qword_27F231600, type metadata accessor for InviteFriendsPageView.ShelfListView, &unk_24F9A69B8);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231610);
  }

  return result;
}

unint64_t sub_24EE4E504()
{
  result = qword_27F255170;
  if (!qword_27F255170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231648, &qword_24F9A6790);
    sub_24EE4E590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F255170);
  }

  return result;
}

unint64_t sub_24EE4E590()
{
  result = qword_27F231650;
  if (!qword_27F231650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2550B0, &unk_24F9A6798);
    sub_24EE4A2A0(&qword_27F254FD0, type metadata accessor for PlayerPickerContinueButton, &unk_24FA3AFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231650);
  }

  return result;
}

unint64_t sub_24EE4E64C()
{
  result = qword_27F231658;
  if (!qword_27F231658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F255190, &unk_24FA3AD40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231648, &qword_24F9A6790);
    sub_24EE4E504();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231658);
  }

  return result;
}

uint64_t sub_24EE4E740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

void sub_24EE4E7B8(int8x16_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4 = a1[2].i8[0];
  sub_24EE4E850(v3, v2);
  sub_24EE48498(v3);
}

double sub_24EE4E888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_24EE4E8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InviteFriendsPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EE429F8(a1, v6, a2);
}

uint64_t sub_24EE4E98C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EE4EA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GSKShelf(0);
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

uint64_t sub_24EE4EAD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GSKShelf(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24EE4EB90(uint64_t a1)
{
  type metadata accessor for GSKShelf(319);
  if (v1 <= 0x3F)
  {
    sub_24EE4EC40(319, &qword_27F2316A8, &unk_27F21E480, &unk_24F944D20, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE4EC40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_24EE4ECB8()
{
  result = qword_27F2316B0;
  if (!qword_27F2316B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316B8, &qword_24F9A69B0);
    sub_24E602068(&qword_27F2315B0, &qword_27F2315A8, &qword_24F9A6720, MEMORY[0x277D7EAD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2316B0);
  }

  return result;
}

unint64_t sub_24EE4EDDC()
{
  result = qword_27F2316F0;
  if (!qword_27F2316F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316E0, &qword_24F9A6A88);
    sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2316F0);
  }

  return result;
}

unint64_t sub_24EE4EE94()
{
  result = qword_27F2316F8;
  if (!qword_27F2316F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316E8, &unk_24F9A6A90);
    sub_24EE53A44(&qword_27F231700, &qword_27F231708, &qword_24F9A6AA0, sub_24EE4EF44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2316F8);
  }

  return result;
}

unint64_t sub_24EE4EF44()
{
  result = qword_27F231710;
  if (!qword_27F231710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231718, &qword_24F9A6AA8);
    sub_24E602068(&qword_27F231720, &qword_27F231728, &unk_24F9A6AB0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231710);
  }

  return result;
}

unint64_t sub_24EE4EFFC()
{
  result = qword_27F231738;
  if (!qword_27F231738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316C8, &qword_24F9A6A70);
    sub_24E602068(&qword_27F231740, &qword_27F231748, &unk_24F9A6AC0, MEMORY[0x277CDE158]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231738);
  }

  return result;
}

unint64_t sub_24EE4F0E0()
{
  result = qword_27F231750;
  if (!qword_27F231750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316D8, &qword_24F9A6A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316C8, &qword_24F9A6A70);
    sub_24EE4EFFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231750);
  }

  return result;
}

unint64_t sub_24EE4F1A8()
{
  result = qword_27F231768;
  if (!qword_27F231768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231760, &unk_24F9A6AD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316D8, &qword_24F9A6A80);
    sub_24EE4F0E0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231768);
  }

  return result;
}

uint64_t sub_24EE4F2C0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24EE4F314()
{
  result = qword_27F2317A8;
  if (!qword_27F2317A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231778, &qword_24F9A6AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231770, &qword_24F9A6AE8);
    sub_24F924C38();
    sub_24E602068(&qword_27F2317A0, &qword_27F231770, &qword_24F9A6AE8, MEMORY[0x277D7EB00]);
    sub_24EE4A2A0(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0, &qword_24F951970, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2317A8);
  }

  return result;
}

uint64_t sub_24EE4F494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231708, &qword_24F9A6AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE4F530()
{
  v1 = *(*(type metadata accessor for InviteFriendsPageView.ShelfListView(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = sub_24F92AA48();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for GSKShelf(0);
  v5 = v4[5];
  v6 = sub_24F929608();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  v8 = v2 + v4[6];
  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v8, 1, v9))
  {

    v11 = v8 + v9[5];
    v12 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v63 = sub_24F9289E8();
          (*(*(v63 - 8) + 8))(v11, v63);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v13 = v8 + v9[7];
          v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v16 = sub_24F928388();
              (*(*(v16 - 8) + 8))(v13, v16);
            }
          }

          v17 = (v8 + v9[10]);
          if (v17[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v51 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v52 = type metadata accessor for JSColor(0);
        if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
        {
          v53 = sub_24F928388();
          (*(*(v53 - 8) + 8))(v51, v53);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v60 = sub_24F9289E8();
        v61 = *(v60 - 8);
        if (!(*(v61 + 48))(v11, 1, v60))
        {
          (*(v61 + 8))(v11, v60);
        }

        if (*(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v18 = type metadata accessor for HeaderPresentation(0);
  v19 = v8 + v18[5];
  if (v10(v19, 1, v9))
  {
    goto LABEL_33;
  }

  v20 = v19 + v9[5];
  v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    goto LABEL_18;
  }

  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 2)
  {
    if (!v24)
    {

      v54 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v55 = type metadata accessor for JSColor(0);
      if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
      {
        v56 = sub_24F928388();
        (*(*(v56 - 8) + 8))(v54, v56);
      }

      goto LABEL_18;
    }

    if (v24 == 1)
    {
      v62 = sub_24F9289E8();
      v86 = *(v62 - 8);
      if (!(*(v86 + 48))(v20, 1, v62))
      {
        (*(v86 + 8))(v20, v62);
      }

      if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v24 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v24)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v65 = sub_24F9289E8();
      (*(*(v65 - 8) + 8))(v20, v65);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v22 = v19 + v9[7];
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v22, v25);
    }
  }

  v26 = (v19 + v9[10]);
  if (v26[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_33:
  v27 = v8 + v18[6];
  if (v10(v27, 1, v9))
  {
    goto LABEL_50;
  }

  v28 = v27 + v9[5];
  v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    goto LABEL_35;
  }

  v32 = swift_getEnumCaseMultiPayload();
  if (v32 <= 2)
  {
    if (!v32)
    {

      v57 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v58 = type metadata accessor for JSColor(0);
      if (!(*(*(v58 - 8) + 48))(v57, 1, v58))
      {
        v59 = sub_24F928388();
        (*(*(v59 - 8) + 8))(v57, v59);
      }

      goto LABEL_35;
    }

    if (v32 == 1)
    {
      v64 = sub_24F9289E8();
      v87 = *(v64 - 8);
      if (!(*(v87 + 48))(v28, 1, v64))
      {
        (*(v87 + 8))(v28, v64);
      }

      if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v32 != 2)
    {
      goto LABEL_35;
    }

LABEL_84:

    goto LABEL_35;
  }

  switch(v32)
  {
    case 3:
      goto LABEL_84;
    case 4:
      v66 = sub_24F9289E8();
      (*(*(v66 - 8) + 8))(v28, v66);
      break;
    case 5:
      goto LABEL_84;
  }

LABEL_35:
  v30 = v27 + v9[7];
  v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v30, v33);
    }
  }

  v34 = (v27 + v9[10]);
  if (v34[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_50:
  v35 = v8 + v18[7];
  if (*(v35 + 56) == 1)
  {
  }

  else if (!*(v35 + 56))
  {

    if (*(v35 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v35 + 16));
    }
  }

  v36 = v8 + v18[8];
  v37 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v42 = swift_getEnumCaseMultiPayload();
    if (v42 == 2)
    {
      goto LABEL_125;
    }

    if (v42 != 1)
    {
      if (v42)
      {
        goto LABEL_56;
      }

      v43 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v43 - 8) + 48))(v36, 1, v43))
      {
        goto LABEL_56;
      }

      v44 = swift_getEnumCaseMultiPayload();
      if (v44 > 2)
      {
        if (v44 != 3)
        {
          if (v44 == 4)
          {
            v85 = sub_24F9289E8();
            (*(*(v85 - 8) + 8))(v36, v85);
            goto LABEL_56;
          }

          if (v44 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_125;
      }

      if (v44)
      {
        if (v44 == 1)
        {
          v83 = sub_24F9289E8();
          v84 = *(v83 - 8);
          if (!(*(v84 + 48))(v36, 1, v83))
          {
            (*(v84 + 8))(v36, v83);
          }

          if (!*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v44 != 2)
        {
          goto LABEL_56;
        }

LABEL_125:

        goto LABEL_56;
      }

      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_144:
      v79 = v36 + v73;
      v80 = type metadata accessor for JSColor(0);
      if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        v81 = sub_24F928388();
        (*(*(v81 - 8) + 8))(v79, v81);
      }

      goto LABEL_56;
    }

    v45 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v46 = *(*(v45 - 8) + 48);
    if (v46(v36, 1, v45))
    {
LABEL_75:
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v48 = v36 + *(v47 + 48);
      if (!v46(v48, 1, v45))
      {
        v49 = swift_getEnumCaseMultiPayload();
        if (v49 <= 2)
        {
          switch(v49)
          {
            case 0:

              v67 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v68 = type metadata accessor for JSColor(0);
              if (!(*(*(v68 - 8) + 48))(v67, 1, v68))
              {
                v69 = sub_24F928388();
                (*(*(v69 - 8) + 8))(v67, v69);
              }

              goto LABEL_143;
            case 1:
              v74 = sub_24F9289E8();
              v75 = *(v74 - 8);
              if (!(*(v75 + 48))(v48, 1, v74))
              {
                (*(v75 + 8))(v48, v74);
              }

              if (!*(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
                goto LABEL_143;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_143;
          }

LABEL_137:

          goto LABEL_143;
        }

        switch(v49)
        {
          case 3:
            goto LABEL_137;
          case 4:
            v78 = sub_24F9289E8();
            (*(*(v78 - 8) + 8))(v48, v78);
            break;
          case 5:
            goto LABEL_137;
        }
      }

LABEL_143:
      v73 = *(v47 + 80);
      goto LABEL_144;
    }

    v50 = swift_getEnumCaseMultiPayload();
    if (v50 > 2)
    {
      if (v50 != 3)
      {
        if (v50 == 4)
        {
          v82 = sub_24F9289E8();
          (*(*(v82 - 8) + 8))(v36, v82);
          goto LABEL_75;
        }

        if (v50 != 5)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
      if (!v50)
      {

        v70 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v71 = type metadata accessor for JSColor(0);
        if (!(*(*(v71 - 8) + 48))(v70, 1, v71))
        {
          v72 = sub_24F928388();
          (*(*(v72 - 8) + 8))(v70, v72);
        }

        goto LABEL_75;
      }

      if (v50 == 1)
      {
        v76 = sub_24F9289E8();
        v77 = *(v76 - 8);
        if (!(*(v77 + 48))(v36, 1, v76))
        {
          (*(v77 + 8))(v36, v76);
        }

        if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_75;
      }

      if (v50 != 2)
      {
        goto LABEL_75;
      }
    }

    goto LABEL_75;
  }

LABEL_56:
  v38 = (v2 + v4[13]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v39 = (v2 + v4[14]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = (v2 + v4[16]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return swift_deallocObject();
}

uint64_t sub_24EE509EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InviteFriendsPageView.ShelfListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EE46654(a1, v6, a2);
}

unint64_t sub_24EE50A6C()
{
  result = qword_27F231830;
  if (!qword_27F231830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231800, &qword_24F9A6B88);
    sub_24EE50B24();
    sub_24E602068(&qword_27F231848, &qword_27F231850, &qword_24F9A6BE0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231830);
  }

  return result;
}

unint64_t sub_24EE50B24()
{
  result = qword_27F231838;
  if (!qword_27F231838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231840, &qword_24F9A6BD8);
    sub_24E602068(&qword_27F231828, &qword_27F231820, &qword_24F9A6BD0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231838);
  }

  return result;
}

unint64_t sub_24EE50BFC()
{
  result = qword_27F231890;
  if (!qword_27F231890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231890);
  }

  return result;
}

unint64_t sub_24EE50CBC()
{
  result = qword_27F2318B8;
  if (!qword_27F2318B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318B0, &unk_24F9A6CA0);
    sub_24EE50D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2318B8);
  }

  return result;
}

unint64_t sub_24EE50D48()
{
  result = qword_27F2318C0;
  if (!qword_27F2318C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318C8, &qword_24F9C5350);
    sub_24E602068(&qword_27F2318D0, &qword_27F2318D8, &qword_24F9A6CB0, MEMORY[0x277D7ED00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2318C0);
  }

  return result;
}

unint64_t sub_24EE50E00()
{
  result = qword_27F2318E0;
  if (!qword_27F2318E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318A8, &qword_24F9C5360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318B0, &unk_24F9A6CA0);
    sub_24EE50CBC();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2318E0);
  }

  return result;
}

unint64_t sub_24EE50F18()
{
  result = qword_27F231900;
  if (!qword_27F231900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318F8, &qword_24FA3BC70);
    sub_24EE50FD4();
    sub_24EE4A2A0(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231900);
  }

  return result;
}

unint64_t sub_24EE50FD4()
{
  result = qword_27F231908;
  if (!qword_27F231908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231910, &unk_24F9A6CD0);
    sub_24EE5108C();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231908);
  }

  return result;
}

unint64_t sub_24EE5108C()
{
  result = qword_27F231918;
  if (!qword_27F231918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231920, &unk_24FA3BC60);
    sub_24EE51118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231918);
  }

  return result;
}

unint64_t sub_24EE51118()
{
  result = qword_27F231928;
  if (!qword_27F231928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231930, &unk_24F9A6CE0);
    sub_24EE511A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231928);
  }

  return result;
}

unint64_t sub_24EE511A4()
{
  result = qword_27F231938;
  if (!qword_27F231938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231940, &unk_24FA3BC50);
    sub_24E602068(&qword_27F231948, &qword_27F231950, &unk_24F9A6CF0, MEMORY[0x277CDF510]);
    sub_24E602068(&qword_27F231958, &qword_27F231960, &unk_24FA3BCB0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231938);
  }

  return result;
}

unint64_t sub_24EE51288()
{
  result = qword_27F231968;
  if (!qword_27F231968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318F0, &unk_24F9A6CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318F8, &qword_24FA3BC70);
    sub_24EE50F18();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231968);
  }

  return result;
}

uint64_t sub_24EE51390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InviteFriendsRow(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE514D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InviteFriendsRow(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24EE5160C(uint64_t a1)
{
  type metadata accessor for InviteFriendsRow(319);
  if (v1 <= 0x3F)
  {
    sub_24EE4EC40(319, &qword_27F2316A8, &unk_27F21E480, &unk_24F944D20, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_24EE4EC40(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24EE4A730(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EE5175C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKShelf(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EE517DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKShelf(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EE5184C(uint64_t a1)
{
  result = type metadata accessor for GSKShelf(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EE518B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316C0, &qword_24F9A6A68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231758, &qword_24F9A6AD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2316D8, &qword_24F9A6A80);
  sub_24EE4F0E0();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231760, &unk_24F9A6AD8);
  sub_24EE4F1A8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EE519D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2317E0, &qword_24F9A6B78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2317D8, &qword_24F9A6B70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2317D0, &qword_24F9A6B68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2317C8, &qword_24F9A6B60);
  sub_24F924118();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2317C0, &qword_24F9A6B58);
  sub_24F923C68();
  sub_24E602068(&qword_27F2317F8, &qword_27F2317C0, &qword_24F9A6B58, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EE51BF8()
{
  result = qword_27F2319A0;
  if (!qword_27F2319A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231998, &qword_24F9A6DE8);
    sub_24E602068(&qword_27F231848, &qword_27F231850, &qword_24F9A6BE0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2319A0);
  }

  return result;
}

unint64_t sub_24EE51CD4()
{
  result = qword_27F2319C0;
  if (!qword_27F2319C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319B8, &qword_24F9A6E00);
    sub_24E602068(&qword_27F2319C8, &qword_27F2319D0, &qword_24F9A6E08, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2319C0);
  }

  return result;
}

unint64_t sub_24EE51D8C()
{
  result = qword_27F2319D8;
  if (!qword_27F2319D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319B0, &qword_24F9A6DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319B8, &qword_24F9A6E00);
    sub_24EE51CD4();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2319D8);
  }

  return result;
}

unint64_t sub_24EE51EA4()
{
  result = qword_27F2319F0;
  if (!qword_27F2319F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2319F0);
  }

  return result;
}

unint64_t sub_24EE51EF8()
{
  result = qword_27F2319F8;
  if (!qword_27F2319F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319E8, &qword_24F9BB480);
    sub_24EE51EA4();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2319F8);
  }

  return result;
}

unint64_t sub_24EE52000()
{
  result = qword_27F231A18;
  if (!qword_27F231A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A08, &qword_24F9BB470);
    type metadata accessor for OverlayGameControllerControls(255);
    sub_24EE4A2A0(&qword_27F231A10, type metadata accessor for OverlayGameControllerControls, &unk_24F9B9778);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A18);
  }

  return result;
}

unint64_t sub_24EE5213C()
{
  result = qword_27F231A30;
  if (!qword_27F231A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A30);
  }

  return result;
}

unint64_t sub_24EE52190()
{
  result = qword_27F231A38;
  if (!qword_27F231A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A28, &qword_24F9BB3D0);
    sub_24EE5213C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A38);
  }

  return result;
}

unint64_t sub_24EE52298()
{
  result = qword_27F231A50;
  if (!qword_27F231A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A50);
  }

  return result;
}

unint64_t sub_24EE522EC()
{
  result = qword_27F231A58;
  if (!qword_27F231A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A48, &unk_24F9A6E48);
    sub_24EE52298();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A58);
  }

  return result;
}

uint64_t sub_24EE523FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24EE52478()
{
  result = qword_27F231A88;
  if (!qword_27F231A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A90, &qword_24F9A6E70);
    sub_24E602068(&qword_27F212820, &qword_27F212828, &unk_24FA29170, MEMORY[0x277CDF028]);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231A88);
  }

  return result;
}

unint64_t sub_24EE52564()
{
  result = qword_27F231AA8;
  if (!qword_27F231AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AB0, &qword_24F9A6E80);
    sub_24E602068(&qword_27F218C88, &qword_27F218C80, &qword_24FA22440, MEMORY[0x277CDF028]);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231AA8);
  }

  return result;
}

uint64_t objectdestroy_164Tm()
{
  v1 = v0;
  v67 = type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0);
  v2 = *(*(v67 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v67 - 8) + 64);
  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v6 = type metadata accessor for InviteFriendsRow(0);
  v7 = v0 + v3 + v6[5];
  type metadata accessor for FriendSuggestion(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v62 = v4;
    v63 = (v2 + 16) & ~v2;
    v9 = type metadata accessor for Player(0);
    v10 = v9[6];
    v11 = sub_24F9289E8();
    v12 = (*(v11 - 8) + 8);
    v65 = *v12;
    v66 = *(v11 - 8);
    (*v12)(v7 + v10, v11);

    if (*(v7 + v9[9] + 8) != 1)
    {
    }

    v13 = v7 + v9[13];
    v14 = type metadata accessor for CallProviderConversationHandleSet(0);
    v64 = v1;
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      v15 = type metadata accessor for CallProviderConversationHandle(0);
      v16 = *(*(v15 - 8) + 48);
      if (!v16(v13, 1, v15))
      {

        v17 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v66 + 48))(v13 + v17, 1, v11))
        {
          v65(v13 + v17, v11);
        }
      }

      v18 = v13 + *(v14 + 20);
      if (!v16(v18, 1, v15))
      {

        v19 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v66 + 48))(v18 + v19, 1, v11))
        {
          v65(v18 + v19, v11);
        }
      }
    }

    if (*(v7 + v9[15] + 8))
    {
    }

    v20 = v7 + v9[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v20, 1, PlayedTogetherInfo))
    {

      v22 = type metadata accessor for Game(0);
      v65(v20 + v22[18], v11);
      v23 = v22[19];
      if (!(*(v66 + 48))(v20 + v23, 1, v11))
      {
        v65(v20 + v23, v11);
      }

      v24 = v22[21];
      v25 = sub_24F920818();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(v20 + v24, 1, v25))
      {
        (*(v26 + 8))(v20 + v24, v25);
      }
    }

    v27 = v7 + v9[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v27, 1, ChallengeInfo))
    {

      v29 = type metadata accessor for Game(0);
      v65(v27 + v29[18], v11);
      v30 = v29[19];
      if (!(*(v66 + 48))(v27 + v30, 1, v11))
      {
        v65(v27 + v30, v11);
      }

      v31 = v29[21];
      v32 = sub_24F920818();
      v33 = *(v32 - 8);
      if (!(*(v33 + 48))(v27 + v31, 1, v32))
      {
        (*(v33 + 8))(v27 + v31, v32);
      }
    }

    v34 = type metadata accessor for ActivityFriendSuggestion(0);
    v35 = v7 + *(v34 + 24);

    v36 = type metadata accessor for Game(0);
    v65(v35 + v36[18], v11);
    v37 = v36[19];
    if (!(*(v66 + 48))(v35 + v37, 1, v11))
    {
      v65(v35 + v37, v11);
    }

    v38 = v36[21];
    v39 = sub_24F920818();
    v40 = *(v39 - 8);
    if (!(*(v40 + 48))(v35 + v38, 1, v39))
    {
      (*(v40 + 8))(v35 + v38, v39);
    }

    v41 = *(v34 + 28);
    v42 = sub_24F91F648();
    (*(*(v42 - 8) + 8))(v7 + v41, v42);
    v3 = v63;
    v4 = v62;
    v1 = v64;
  }

  else
  {
  }

  v43 = v5 + v6[7];

  v44 = type metadata accessor for PlayerAvatar(0);
  v45 = *(v44 + 20);
  v46 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v46 - 8) + 48))(v43 + v45, 1, v46) && !swift_getEnumCaseMultiPayload())
  {
    v47 = sub_24F9289E8();
    (*(*(v47 - 8) + 8))(v43 + v45, v47);
  }

  v48 = (v43 + *(v44 + 24));
  if (v48[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v49 = v6[9];
  v50 = sub_24F9289E8();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(v5 + v49, 1, v50))
  {
    (*(v51 + 8))(v5 + v49, v50);
  }

  v52 = (v5 + v6[11]);
  if (v52[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v53 = (v5 + v6[13]);
  if (v53[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v54 = v6[14];
  v55 = sub_24F929608();
  v56 = *(v55 - 8);
  if (!(*(v56 + 48))(v5 + v54, 1, v55))
  {
    (*(v56 + 8))(v5 + v54, v55);
  }

  v57 = (v5 + v6[15]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = v5 + *(v67 + 24);
  if (*(v58 + 40))
  {
    if (*(v58 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v58);
    }
  }

  else
  {
  }

  v59 = *(v67 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = sub_24F921B58();
    (*(*(v60 - 8) + 8))(v5 + v59, v60);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v1 + ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_24EE53198()
{
  v1 = *(type metadata accessor for InviteFriendsPageView.InviteFriendsRowView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_24EE47EC8(v0 + v2, v3);
}

unint64_t sub_24EE53228()
{
  result = qword_27F231AB8;
  if (!qword_27F231AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AC0, &qword_24F9A6EB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231998, &qword_24F9A6DE8);
    sub_24EE51BF8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231AB8);
  }

  return result;
}

uint64_t sub_24EE5331C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A68, &qword_24F9A6E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A98, &qword_24F9A6E78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A60, &qword_24F9A6E58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A78, &qword_24F9A6E68);
  type metadata accessor for InviteFriendsRowComponent(255);
  sub_24EE4A2A0(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent, &unk_24FA23C94);
  swift_getOpaqueTypeConformance2();
  sub_24EE523FC(&qword_27F231A80, &qword_27F231A78, &qword_24F9A6E68, sub_24EE52478);
  swift_getOpaqueTypeConformance2();
  sub_24EE523FC(&qword_27F231AA0, &qword_27F231A98, &qword_24F9A6E78, sub_24EE52564);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EE53500()
{
  result = qword_27F231AE0;
  if (!qword_27F231AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD8, &unk_24F9A6ED0);
    sub_24E602068(&qword_27F231AE8, &qword_27F231AF0, &unk_24FA2C340, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231AE0);
  }

  return result;
}

unint64_t sub_24EE535B8()
{
  result = qword_27F231AF8;
  if (!qword_27F231AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD0, &qword_24F9A6EC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD8, &unk_24F9A6ED0);
    sub_24EE53500();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231AF8);
  }

  return result;
}

unint64_t sub_24EE536D0()
{
  result = qword_27F231B18;
  if (!qword_27F231B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B10, &qword_24F9A6EF0);
    sub_24EE5375C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B18);
  }

  return result;
}

unint64_t sub_24EE5375C()
{
  result = qword_27F231B20;
  if (!qword_27F231B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B28, &qword_24F9A6EF8);
    sub_24EE537E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B20);
  }

  return result;
}

unint64_t sub_24EE537E8()
{
  result = qword_27F231B30;
  if (!qword_27F231B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B38, &qword_24F9A6F00);
    sub_24EE53874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B30);
  }

  return result;
}

unint64_t sub_24EE53874()
{
  result = qword_27F231B40;
  if (!qword_27F231B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B48, &qword_24F9A6F08);
    sub_24E602068(&qword_27F231B50, &qword_27F231B58, &unk_24F9A6F10, &unk_24FA1A538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B40);
  }

  return result;
}

unint64_t sub_24EE5392C()
{
  result = qword_27F231B60;
  if (!qword_27F231B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B08, &qword_24F9A6EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B10, &qword_24F9A6EF0);
    sub_24EE536D0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B60);
  }

  return result;
}

uint64_t sub_24EE53A44(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

GameStoreKit::BadgeValueViewAlignment_optional __swiftcall BadgeValueViewAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t static BadgeCaptionCappingType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = *&v3 == 0;
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2 == 0.0)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return (v4 & 1) == 0 && v2 == v3;
  }
}

uint64_t sub_24EE53BF4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = *&v3 == 0;
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2 == 0.0)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return (v4 & 1) == 0 && v2 == v3;
  }
}

uint64_t BadgeViewLayout.Metrics.captionBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t BadgeViewLayout.Metrics.badgeValueStandardCompactSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t BadgeViewLayout.Metrics.badgeValueStandardRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

void BadgeViewLayout.Metrics.spacingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewLayout.Metrics.spacingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 128) = *result;
  *(v1 + 136) = v2;
  return result;
}

void BadgeViewLayout.Metrics.captionCappingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewLayout.Metrics.captionCappingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 144) = *result;
  *(v1 + 152) = v2;
  return result;
}

uint64_t BadgeViewLayout.Metrics.init(captionBottomSpace:badgeValueStandardCompactSpace:badgeValueStandardRegularSpace:valueBufferSpace:spacingType:captionCappingType:badgeType:isLabelLeading:valueViewAlignment:alignment:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v15 = *a4;
  v16 = *(a4 + 8);
  v17 = *a5;
  v18 = *(a5 + 8);
  v19 = *a6;
  v20 = *a8;
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, a9 + 40);
  result = sub_24E612C80(a3, a9 + 80);
  *(a9 + 120) = a10;
  *(a9 + 128) = v15;
  *(a9 + 136) = v16;
  *(a9 + 144) = v17;
  *(a9 + 152) = v18;
  *(a9 + 153) = v19;
  *(a9 + 154) = a7;
  *(a9 + 155) = v20;
  *(a9 + 160) = a11;
  return result;
}

uint64_t BadgeViewLayout.Metrics.badgeValueSpace(with:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24F92BF68();
  v5 = 80;
  if (v4)
  {
    v5 = 40;
  }

  return sub_24E615E00(v2 + v5, a2);
}

__n128 BadgeViewLayout.init(metrics:captionLabel:valueLabel:valueView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 144);
  *(a5 + 128) = *(a1 + 128);
  *(a5 + 144) = v8;
  *(a5 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v9;
  v10 = *(a1 + 112);
  *(a5 + 96) = *(a1 + 96);
  *(a5 + 112) = v10;
  v11 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v11;
  v12 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v12;
  sub_24E612C80(a2, a5 + 168);
  v13 = *(a3 + 16);
  *(a5 + 208) = *a3;
  *(a5 + 224) = v13;
  *(a5 + 240) = *(a3 + 32);
  result = *a4;
  v15 = *(a4 + 16);
  *(a5 + 248) = *a4;
  *(a5 + 264) = v15;
  *(a5 + 280) = *(a4 + 32);
  return result;
}

uint64_t BadgeViewLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v3 + 208, v26, &unk_27F22B200, &unk_24F9674C0);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    sub_24F922298();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_24E601704(v26, &unk_27F22B200, &unk_24F9674C0);
    v11 = 0.0;
  }

  sub_24E60169C(v3 + 248, v26, &qword_27F229780, &unk_24F965BB0);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    sub_24F922298();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_24E601704(v26, &qword_27F229780, &unk_24F965BB0);
    v13 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1((v3 + 168), *(v3 + 192));
  sub_24F922298();
  v15 = 0.0;
  if (v11 != 0.0 && v13 != 0.0)
  {
    v16 = 128;
    if (*(v3 + 136))
    {
      v16 = 120;
    }

    v15 = *(v3 + v16);
  }

  v17 = v11 + v13 + v15;
  if (v17 > v14)
  {
    v14 = v17;
  }

  if (*(v3 + 144))
  {
    v14 = v17;
  }

  v18 = [a1 traitCollection];
  v19 = sub_24F92BF68();

  v20 = 10;
  if (v19)
  {
    v20 = 5;
  }

  sub_24E615E00(&v4[v20], v26);
  v21 = v27;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_24E8ED7D8(v21);
  sub_24F9223A8();
  v22 = *(v7 + 8);
  v22(v9, v6);
  v23 = v4[3];
  __swift_project_boxed_opaque_existential_1(v4, v23);
  sub_24E8ED7D8(v23);
  sub_24F9223A8();
  v22(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t static BadgeViewLayout.measurements(valueLabelWidth:viewSize:captionLabelWidth:fitting:using:in:)(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0.0;
  if (a3 != 0.0 && a4 != 0.0)
  {
    v16 = 128;
    if (*(a1 + 136))
    {
      v16 = 120;
    }

    v15 = *(a1 + v16);
  }

  v17 = a3 + a4 + v15;
  if (v17 > a6)
  {
    v18 = v17;
  }

  else
  {
    v18 = a6;
  }

  if (!*(a1 + 144))
  {
    v17 = v18;
  }

  v19 = [a2 traitCollection];
  v20 = sub_24F92BF68();

  v21 = 80;
  if (v20)
  {
    v21 = 40;
  }

  sub_24E615E00(a1 + v21, v27);
  v22 = v28;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  sub_24E8ED7D8(v22);
  sub_24F9223A8();
  v23 = *(v12 + 8);
  v23(v14, v11);
  v24 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24E8ED7D8(v24);
  sub_24F9223A8();
  v23(v14, v11);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

id BadgeViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v107 = a3;
  v104 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v6 + 168), *(v6 + 192));
  sub_24F922288();
  v131.origin.x = a3;
  v131.origin.y = a4;
  v131.size.width = a5;
  v131.size.height = a6;
  MinX = CGRectGetMinX(v131);
  v17 = [a1 traitCollection];
  v18 = sub_24F92BF68();

  v19 = 80;
  if (v18)
  {
    v19 = 40;
  }

  sub_24E615E00(v7 + v19, &v114);
  v20 = *(&v115 + 1);
  __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
  sub_24E8ED7D8(v20);
  sub_24F9223A8();
  v21 = *(v14 + 8);
  v21(v16, v13);
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F9223C8();
  v22 = v107;
  __swift_destroy_boxed_opaque_existential_1(&v114);
  v132.origin.x = v22;
  v132.origin.y = a4;
  v132.size.width = a5;
  v108 = a6;
  v132.size.height = a6;
  CGRectGetWidth(v132);
  __swift_project_boxed_opaque_existential_1((v7 + 168), *(v7 + 192));
  sub_24F922228();
  sub_24E60169C(v7 + 208, &v114, &unk_27F22B200, &unk_24F9674C0);
  v23 = *(&v115 + 1);
  sub_24E601704(&v114, &unk_27F22B200, &unk_24F9674C0);
  if (v23 && *(v7 + 154) == 1)
  {
    sub_24E60169C(v7 + 208, &v128, &unk_27F22B200, &unk_24F9674C0);
    v24 = *(&v129 + 1);
    if (*(&v129 + 1))
    {
      v25 = v130;
      v26 = __swift_project_boxed_opaque_existential_1(&v128, *(&v129 + 1));
      *(&v115 + 1) = v24;
      v116 = *(v25 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
      __swift_destroy_boxed_opaque_existential_1(&v128);
    }

    else
    {
      sub_24E601704(&v128, &unk_27F22B200, &unk_24F9674C0);
      v114 = 0u;
      v115 = 0u;
      v116 = 0;
    }

    v128 = v114;
    v129 = v115;
    v130 = v116;
    sub_24E60169C(v7 + 248, &v125, &qword_27F229780, &unk_24F965BB0);
  }

  else
  {
    sub_24E60169C(v7 + 248, &v128, &qword_27F229780, &unk_24F965BB0);
    sub_24E60169C(v7 + 208, &v125, &unk_27F22B200, &unk_24F9674C0);
    v28 = *(&v126 + 1);
    if (*(&v126 + 1))
    {
      v29 = v127;
      v30 = __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
      *(&v115 + 1) = v28;
      v116 = *(v29 + 8);
      v31 = __swift_allocate_boxed_opaque_existential_1(&v114);
      (*(*(v28 - 8) + 16))(v31, v30, v28);
      __swift_destroy_boxed_opaque_existential_1(&v125);
    }

    else
    {
      sub_24E601704(&v125, &unk_27F22B200, &unk_24F9674C0);
      v114 = 0u;
      v115 = 0u;
      v116 = 0;
    }

    v125 = v114;
    v126 = v115;
    v127 = v116;
  }

  v32 = [a1 traitCollection];
  v33 = sub_24F92BF88();

  if (v33)
  {
    v34 = v121;
  }

  else
  {
    v34 = v123;
  }

  if (v33)
  {
    v35 = v123;
  }

  else
  {
    v35 = v121;
  }

  sub_24E60169C(&v128, v34, &qword_27F229780, &unk_24F965BB0);
  sub_24E60169C(&v125, v35, &qword_27F229780, &unk_24F965BB0);
  sub_24E60169C(v123, &v114, &qword_27F229780, &unk_24F965BB0);
  v36 = *(&v115 + 1);
  sub_24E601704(&v114, &qword_27F229780, &unk_24F965BB0);
  if (!v36)
  {
    sub_24E60169C(v121, &v114, &qword_27F229780, &unk_24F965BB0);
    v37 = *(&v115 + 1);
    sub_24E601704(&v114, &qword_27F229780, &unk_24F965BB0);
    if (!v37)
    {
      goto LABEL_73;
    }
  }

  sub_24E60169C(v123, &v114, &qword_27F229780, &unk_24F965BB0);
  v38 = *(&v115 + 1);
  sub_24E601704(&v114, &qword_27F229780, &unk_24F965BB0);
  v39 = 0.0;
  if (v38)
  {
    sub_24E60169C(v121, &v114, &qword_27F229780, &unk_24F965BB0);
    v40 = *(&v115 + 1);
    sub_24E601704(&v114, &qword_27F229780, &unk_24F965BB0);
    if (v40)
    {
      v41 = 128;
      if (*(v7 + 136))
      {
        v41 = 120;
      }

      v39 = *(v7 + v41);
    }
  }

  sub_24E60169C(v123, &v119, &qword_27F229780, &unk_24F965BB0);
  if (v120)
  {
    sub_24E612C80(&v119, &v114);
    __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
    v42 = v108;
    sub_24F922298();
    v44 = v43;
    MinX = v45;
    v133.origin.x = v22;
    v133.origin.y = a4;
    v133.size.width = a5;
    v133.size.height = v42;
    Width = CGRectGetWidth(v133);
    if (Width >= v44)
    {
      v47 = v44;
    }

    else
    {
      v47 = Width;
    }

    __swift_destroy_boxed_opaque_existential_1(&v114);
  }

  else
  {
    sub_24E601704(&v119, &qword_27F229780, &unk_24F965BB0);
    MinX = 0.0;
    v47 = 0.0;
  }

  sub_24E60169C(v121, &v119, &qword_27F229780, &unk_24F965BB0);
  if (v120)
  {
    sub_24E612C80(&v119, &v114);
    __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
    v48 = v108;
    sub_24F922298();
    v50 = v49;
    v103 = v51;
    v134.origin.x = v22;
    v134.origin.y = a4;
    v134.size.width = a5;
    v134.size.height = v48;
    v52 = CGRectGetWidth(v134) - (v39 + v47);
    if (v52 >= v50)
    {
      v52 = v50;
    }

    if (v52 > 0.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0.0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v114);
  }

  else
  {
    sub_24E601704(&v119, &qword_27F229780, &unk_24F965BB0);
    v103 = 0;
    v53 = 0.0;
  }

  v54 = *(v7 + 160);
  *&v102[1] = v53;
  v55 = v22;
  v56 = a4;
  v57 = a5;
  v58 = v108;
  if (v54 == 4)
  {
    v59 = CGRectGetMinX(*&v55);
  }

  else
  {
    v59 = CGRectGetMidX(*&v55) + (v39 + v47 + v53) * -0.5;
  }

  sub_24E60169C(v123, &v119, &qword_27F229780, &unk_24F965BB0);
  v105 = a4;
  if (v120)
  {
    sub_24E612C80(&v119, &v114);
    __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
    v60 = v108;
    sub_24F922288();
    v62 = v61;
    v135.origin.x = v22;
    v135.origin.y = a4;
    v135.size.width = a5;
    v135.size.height = v60;
    MinY = CGRectGetMinY(v135);
    v64 = [a1 traitCollection];
    v65 = sub_24F92BF68();

    v66 = 80;
    if (v65)
    {
      v66 = 40;
    }

    sub_24E615E00(v7 + v66, &v119);
    v67 = v120;
    __swift_project_boxed_opaque_existential_1(&v119, v120);
    sub_24E8ED7D8(v67);
    v68 = sub_24F9223A8();
    v21(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v119);
    v69 = MinY + v68 - (MinX - v62);
    __swift_destroy_boxed_opaque_existential_1(&v114);
    v70 = v59;
  }

  else
  {
    sub_24E601704(&v119, &qword_27F229780, &unk_24F965BB0);
    v70 = 0.0;
    v69 = 0.0;
    v47 = 0.0;
    MinX = 0.0;
  }

  sub_24E60169C(v121, &v119, &qword_27F229780, &unk_24F965BB0);
  if (v120)
  {
    sub_24E612C80(&v119, &v114);
    __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
    sub_24F922288();
    sub_24E60169C(v123, &v119, &qword_27F229780, &unk_24F965BB0);
    v71 = v120;
    sub_24E601704(&v119, &qword_27F229780, &unk_24F965BB0);
    if (v71)
    {
      v136.origin.x = v70;
      v136.origin.y = v69;
      v136.size.width = v47;
      v136.size.height = MinX;
      CGRectGetMaxX(v136);
    }

    v137.origin.x = v107;
    v137.size.height = v108;
    v137.origin.y = v105;
    v137.size.width = a5;
    CGRectGetMinY(v137);
    v72 = [a1 traitCollection];
    v73 = sub_24F92BF68();

    v74 = 80;
    if (v73)
    {
      v74 = 40;
    }

    sub_24E615E00(v7 + v74, &v119);
    v75 = v120;
    __swift_project_boxed_opaque_existential_1(&v119, v120);
    sub_24E8ED7D8(v75);
    sub_24F9223A8();
    v21(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v119);
    __swift_destroy_boxed_opaque_existential_1(&v114);
    v76 = v124;
    if (v124)
    {
      goto LABEL_54;
    }
  }

  else
  {
    sub_24E601704(&v119, &qword_27F229780, &unk_24F965BB0);
    v76 = v124;
    if (v124)
    {
LABEL_54:
      v77 = __swift_project_boxed_opaque_existential_1(v123, v76);
      v78 = *(v76 - 8);
      v79 = MEMORY[0x28223BE20](v77);
      v81 = v102 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v78 + 16))(v81, v79);
      sub_24F922228();
      (*(v78 + 8))(v81, v76);
    }
  }

  v82 = v122;
  if (v122)
  {
    v83 = __swift_project_boxed_opaque_existential_1(v121, v122);
    v84 = *(v82 - 8);
    v85 = MEMORY[0x28223BE20](v83);
    v87 = v102 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v84 + 16))(v87, v85);
    sub_24F922228();
    (*(v84 + 8))(v87, v82);
  }

  LOBYTE(v114) = *(v7 + 155);
  sub_24E60169C(v7 + 248, &v114 + 8, &qword_27F229780, &unk_24F965BB0);
  sub_24E60169C(v7 + 208, &v117, &unk_27F22B200, &unk_24F9674C0);
  if (v114 == 2)
  {
    if (v116)
    {
      sub_24E612C80((&v114 + 8), &v119);
      __swift_project_boxed_opaque_existential_1(&v119, v120);
      v100 = sub_24F922208();
      *(v101 + 8) = 0;
      v100(v113, 0);
      __swift_destroy_boxed_opaque_existential_1(&v119);
      v97 = &unk_27F22B200;
      v98 = &unk_24F9674C0;
      v99 = &v117;
      goto LABEL_72;
    }

LABEL_71:
    v97 = &unk_27F231B68;
    v98 = &unk_24F9A6F50;
    v99 = &v114;
    goto LABEL_72;
  }

  if (v114 != 1 || !v116)
  {
    goto LABEL_71;
  }

  sub_24E60169C(&v114 + 8, &v119, &qword_27F229780, &unk_24F965BB0);
  if (!v118)
  {
    __swift_destroy_boxed_opaque_existential_1(&v119);
    goto LABEL_71;
  }

  sub_24E612C80(&v119, v113);
  sub_24E612C80(&v117, v111);
  __swift_project_boxed_opaque_existential_1(v113, v113[3]);
  __swift_project_boxed_opaque_existential_1(v111, v112);
  sub_24F922218();
  v89 = v88;
  v90 = sub_24F922208();
  *(v91 + 8) = v89;
  v90(v110, 0);
  sub_24E615E00(v113, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730, &unk_24F947310);
  sub_24EE557CC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_65:
    __swift_destroy_boxed_opaque_existential_1(v111);
    __swift_destroy_boxed_opaque_existential_1(v113);
    v97 = &qword_27F229780;
    v98 = &unk_24F965BB0;
    v99 = (&v114 + 8);
LABEL_72:
    sub_24E601704(v99, v97, v98);
LABEL_73:
    sub_24F922128();
    sub_24E601704(&v125, &qword_27F229780, &unk_24F965BB0);
    sub_24E601704(&v128, &qword_27F229780, &unk_24F965BB0);
    sub_24E601704(v121, &qword_27F229780, &unk_24F965BB0);
    return sub_24E601704(v123, &qword_27F229780, &unk_24F965BB0);
  }

  v92 = v109;
  __swift_project_boxed_opaque_existential_1(v111, v112);
  result = sub_24F922498();
  if (result)
  {
    v94 = result;
    result = [v92 font];
    if (result)
    {
      v95 = result;
      v96 = v92;
      [v94 ascender];
      [v94 capHeight];
      [v95 ascender];
      [v95 capHeight];
      [v96 frame];
      [v96 setFrame_];

      goto LABEL_65;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EE557CC()
{
  result = qword_27F231B70;
  if (!qword_27F231B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F231B70);
  }

  return result;
}

unint64_t sub_24EE5581C()
{
  result = qword_27F231B78;
  if (!qword_27F231B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B78);
  }

  return result;
}

uint64_t sub_24EE558A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EE558F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EE5598C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EE559D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EE55A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Challenge(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24EE55B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Challenge(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CompletedChallengeSummary(uint64_t a1)
{
  result = qword_27F231B80;
  if (!qword_27F231B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE55CD4(uint64_t a1)
{
  type metadata accessor for Challenge(319);
  if (v1 <= 0x3F)
  {
    sub_24EE55D58(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE55D58(uint64_t a1)
{
  if (!qword_27F21B7B0)
  {
    type metadata accessor for ChallengeDefinitionDetail(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21B7B0);
    }
  }
}

uint64_t sub_24EE55DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x800000024FA5FB80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24EE55E60(uint64_t a1)
{
  v2 = sub_24EE56D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE55E9C(uint64_t a1)
{
  v2 = sub_24EE56D24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE55EF8@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231BB8, &qword_24F9A7470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE56D24();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_24F92CC48();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  return result;
}

unint64_t sub_24EE56060@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x61746144627568;
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for ChallengesHubData;
  *(inited + 80) = sub_24EE56F34();
  v10 = swift_allocObject();
  *(inited + 48) = v10;
  v10[2] = v2;
  v10[3] = v3;
  v10[4] = v5;
  v10[5] = v4;
  v10[6] = v7;
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x800000024FA465A0;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231BE8, &qword_24F9A7620);
  v11 = sub_24EE56FD0();
  *(inited + 104) = v6;
  *(inited + 136) = v11;
  *(inited + 144) = 0xD00000000000001BLL;
  *(inited + 152) = 0x800000024FA5FBA0;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231BF8, qword_24FA24E10);
  *(inited + 192) = sub_24EE57084();
  *(inited + 160) = v8;

  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24EE56274@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v20 = type metadata accessor for Challenge(0);
  MEMORY[0x28223BE20](v20);
  v21 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B90, &qword_24F9A7298);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for CompletedChallengeSummary(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE56A0C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v14 = v13;
  v25 = 0;
  sub_24EE57138(&qword_27F21AF10, type metadata accessor for Challenge, &protocol conformance descriptor for Challenge);
  v15 = v21;
  v16 = v23;
  sub_24F92CC68();
  sub_24EE56A60(v15, v14);
  type metadata accessor for ChallengeDefinitionDetail(0);
  v24 = 1;
  sub_24EE57138(&qword_27F21B790, type metadata accessor for ChallengeDefinitionDetail, &protocol conformance descriptor for ChallengeDefinitionDetail);
  sub_24F92CC18();
  (*(v22 + 8))(v10, v16);
  sub_24EE56AC4(v6, v14 + *(v11 + 20));
  sub_24EE56B34(v14, v19, type metadata accessor for CompletedChallengeSummary);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_24EE56B9C(v14, type metadata accessor for CompletedChallengeSummary);
}

uint64_t sub_24EE56614()
{
  if (*v0)
  {
    return 0x6974696E69666564;
  }

  else
  {
    return 0x676E656C6C616863;
  }
}

uint64_t sub_24EE56658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E656C6C616863 && a2 == 0xE900000000000065;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EE56744(uint64_t a1)
{
  v2 = sub_24EE56A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE56780(uint64_t a1)
{
  v2 = sub_24EE56A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE567D4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 72) = type metadata accessor for Challenge(0);
  *(inited + 80) = sub_24EE57138(&qword_27F21AEF0, type metadata accessor for Challenge, &protocol conformance descriptor for Challenge);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24EE56B34(v4, boxed_opaque_existential_1, type metadata accessor for Challenge);
  *(inited + 88) = 0x6974696E69666564;
  *(inited + 96) = 0xEA00000000006E6FLL;
  v8 = *(a1 + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  *(inited + 136) = sub_24E759444();
  v9 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24EE5699C(v4 + v8, v9);
  v10 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v11 = sub_24E80FFAC(v10);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

uint64_t sub_24EE5699C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE56A0C()
{
  result = qword_27F231B98;
  if (!qword_27F231B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231B98);
  }

  return result;
}

uint64_t sub_24EE56A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Challenge(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE56AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE56B34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE56B9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE56C20()
{
  result = qword_27F231BA0;
  if (!qword_27F231BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BA0);
  }

  return result;
}

unint64_t sub_24EE56C78()
{
  result = qword_27F231BA8;
  if (!qword_27F231BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BA8);
  }

  return result;
}

unint64_t sub_24EE56CD0()
{
  result = qword_27F231BB0;
  if (!qword_27F231BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BB0);
  }

  return result;
}

unint64_t sub_24EE56D24()
{
  result = qword_27F231BC0;
  if (!qword_27F231BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BC0);
  }

  return result;
}

uint64_t sub_24EE56D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EE56DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EE56E30()
{
  result = qword_27F231BC8;
  if (!qword_27F231BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BC8);
  }

  return result;
}

unint64_t sub_24EE56E88()
{
  result = qword_27F231BD0;
  if (!qword_27F231BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BD0);
  }

  return result;
}

unint64_t sub_24EE56EE0()
{
  result = qword_27F231BD8;
  if (!qword_27F231BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BD8);
  }

  return result;
}

unint64_t sub_24EE56F34()
{
  result = qword_27F231BE0;
  if (!qword_27F231BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BE0);
  }

  return result;
}

uint64_t sub_24EE56F88()
{

  return swift_deallocObject();
}

unint64_t sub_24EE56FD0()
{
  result = qword_27F231BF0;
  if (!qword_27F231BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231BE8, &qword_24F9A7620);
    sub_24EE57138(&qword_27F21DD30, type metadata accessor for ChallengeDetail, &protocol conformance descriptor for ChallengeDetail);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231BF0);
  }

  return result;
}

unint64_t sub_24EE57084()
{
  result = qword_27F231C00;
  if (!qword_27F231C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231BF8, qword_24FA24E10);
    sub_24EE57138(&qword_27F231C08, type metadata accessor for CompletedChallengeSummary, &unk_24F9A7254);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C00);
  }

  return result;
}

uint64_t sub_24EE57138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t pickPerformanceTunedValue<A>(poor:fair:good:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 != 2)
  {
    a3 = a2;
  }

  if (a4)
  {
    a1 = a3;
  }

  return (*(*(a5 - 8) + 16))(a6, a1, a5);
}

uint64_t MetricsLogger.log(contentsOf:)(void *a1)
{
  v55 = sub_24F929078();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F7C8, &qword_24F99D508);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v49 - v6;
  v7 = sub_24F928468();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v49 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  sub_24F9283A8();
  v18 = sub_24E61970C(0, 1, 1, MEMORY[0x277D84F90]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_24E61970C((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v23 = *(v8 + 32);
  v22 = v8 + 32;
  v21 = v23;
  v24 = (*(v22 + 48) + 32) & ~*(v22 + 48);
  v25 = *(v22 + 40);
  v23(&v18[v24 + v25 * v20], v17, v7);
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v60[0] = DynamicType;
  sub_24F928438();
  sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
  v28 = *(v18 + 2);
  v27 = *(v18 + 3);
  if (v28 >= v27 >> 1)
  {
    v18 = sub_24E61970C((v27 > 1), v28 + 1, 1, v18);
  }

  *(v18 + 2) = v28 + 1;
  v21(&v18[v24 + v28 * v25], v14, v7);
  v59 = a1;
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0, &qword_24F96D908);
  if (swift_dynamicCast())
  {
    sub_24E612E28(&v56, v60);
    v30 = MetatypeMetadata;
    v31 = v62;
    __swift_project_boxed_opaque_existential_1(v60, MetatypeMetadata);
    v32 = (*(v31 + 16))(v30, v31);
    *(&v57 + 1) = MEMORY[0x277D837D0];
    *&v56 = v32;
    *(&v56 + 1) = v33;
    v34 = v49;
    sub_24F928438();
    sub_24E601704(&v56, &qword_27F2129B0, &unk_24F945320);
    v35 = v51;
    v21(v51, v34, v7);
    *&v56 = v18;
    v36 = *(v18 + 2);
    if (v36 >= *(v18 + 3) >> 1)
    {
      v18 = sub_24E61970C(1, v36 + 1, 1, v18);
      *&v56 = v18;
    }

    sub_24EDAAD44(0, 0, 1, v35);
    *&v56 = v18;
    v37 = v62;
    v38 = __swift_project_boxed_opaque_existential_1(v60, MetatypeMetadata);
    v39 = MEMORY[0x28223BE20](v38);
    *(&v49 - 2) = &v56;
    (*(v37 + 24))(sub_24EE57E9C, v39);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    sub_24E601704(&v56, &qword_27F2231C8, &unk_24F96D910);
    swift_getErrorValue();
    v40 = sub_24F92CFE8();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v60[0] = v40;
    v60[1] = v41;
    v42 = v50;
    sub_24F928438();
    sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
    v43 = v52;
    v21(v52, v42, v7);
    *&v56 = v18;
    v44 = *(v18 + 2);
    if (v44 >= *(v18 + 3) >> 1)
    {
      v18 = sub_24E61970C(1, v44 + 1, 1, v18);
      *&v56 = v18;
    }

    sub_24EDAAD44(0, 0, 1, v43);
    *&v56 = v18;
  }

  v45 = v54;
  v46 = v53;
  v47 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x277D21DE8], v55);
  sub_24F928BD8();
  (*(v45 + 8))(v46, v47);
}

uint64_t sub_24EE57848(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v8 = sub_24F928468();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  v30[3] = MEMORY[0x277D837D0];
  v30[0] = a1;
  v30[1] = a2;

  sub_24F928438();
  sub_24E601704(v30, &qword_27F2129B0, &unk_24F945320);
  v15 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_24E61970C(0, *(v15 + 2) + 1, 1, v15);
    *a4 = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_24E61970C((v17 > 1), v18 + 1, 1, v15);
    *a4 = v15;
  }

  *(v15 + 2) = v18 + 1;
  v21 = *(v9 + 32);
  v20 = v9 + 32;
  v19 = v21;
  v22 = (*(v20 + 48) + 32) & ~*(v20 + 48);
  v23 = &v15[v22];
  v24 = *(v20 + 40);
  v21(&v23[v24 * v18], v14, v8);
  sub_24E643A9C(a3, v30);
  sub_24F928438();
  sub_24E601704(v30, &qword_27F2129B0, &unk_24F945320);
  v25 = *a4;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v25;
  if ((v26 & 1) == 0)
  {
    v25 = sub_24E61970C(0, *(v25 + 2) + 1, 1, v25);
    *a4 = v25;
  }

  v28 = *(v25 + 2);
  v27 = *(v25 + 3);
  if (v28 >= v27 >> 1)
  {
    v25 = sub_24E61970C((v27 > 1), v28 + 1, 1, v25);
    *a4 = v25;
  }

  *(v25 + 2) = v28 + 1;
  return v19(&v25[v22 + v28 * v24], v11, v8);
}

uint64_t MetricsLogger.Configuration.init(asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_24F9288E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = sub_24F92A498();
  v18 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F92A758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260, &unk_24F93B540);
  v20 = a1;
  sub_24F92A758();
  if (qword_27F2108D0 != -1)
  {
    swift_once();
  }

  sub_24F92A438();
  sub_24F92A408();
  v15 = *(v9 + 8);
  v15(v11, v8);
  if (qword_27F2108D8 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D21C38], v4);
  sub_24F92A368();
  (*(v5 + 8))(v7, v4);
  sub_24F92A408();
  v15(v11, v8);
  sub_24E615E00(v22, v21);
  sub_24F928BA8();

  __swift_destroy_boxed_opaque_existential_1(v22);
  return (*(v18 + 8))(v14, v12);
}

uint64_t sub_24EE57EB8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48, &unk_24F93A2D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EE57FFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48, &unk_24F93A2D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F231C10;
  if (!qword_27F231C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE58178(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24EE5820C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE5820C(uint64_t a1)
{
  if (!qword_27F231C20)
  {
    sub_24F928388();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F231C20);
    }
  }
}

unint64_t sub_24EE58264@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x44496D616461;
  *(inited + 96) = 0xE600000000000000;
  v8 = v1[2];
  v9 = v1[3];
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 144) = 0x726579616C70;
  *(inited + 152) = 0xE600000000000000;
  v10 = type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent(0);
  v11 = *(v10 + 24);
  *(inited + 184) = type metadata accessor for Player(0);
  *(inited + 192) = sub_24EE58F64(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24EE58E48(v1 + v11, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 200) = 0xD000000000000013;
  *(inited + 208) = 0x800000024FA5FBE0;
  v13 = *(v10 + 28);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48, &unk_24F93A2D0);
  *(inited + 248) = sub_24EE58EB0();
  v14 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24EE58FAC(v1 + v13, v14);

  v15 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v16 = sub_24E80FFAC(v15);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v16;
  return result;
}

uint64_t sub_24EE58494(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231C38, &unk_24F9A7778);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE58D24();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent(0);
    v8[13] = 2;
    type metadata accessor for Player(0);
    sub_24EE58F64(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F928388();
    sub_24EE58F64(&qword_27F231C40, MEMORY[0x277D21B10], MEMORY[0x277D21B18]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EE58728@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48, &unk_24F93A2D0);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = v21 - v4;
  v5 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231C28, &qword_24F9A7770);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE58D24();
  v26 = v10;
  v14 = v27;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v24;
  v16 = v25;
  v31 = 0;
  *v13 = sub_24F92CC28();
  v13[1] = v17;
  v27 = v17;
  v30 = 1;
  v13[2] = sub_24F92CC28();
  v13[3] = v18;
  v29 = 2;
  sub_24EE58F64(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v21[1] = 0;
  sub_24F92CC68();
  sub_24E61C0A8(v7, v13 + *(v11 + 24));
  sub_24F928388();
  v28 = 3;
  sub_24EE58F64(&qword_27F21E7D0, MEMORY[0x277D21B10], MEMORY[0x277D21B20]);
  v19 = v23;
  sub_24F92CC18();
  (*(v15 + 8))(v26, v16);
  sub_24EE58D78(v19, v13 + *(v11 + 28));
  sub_24EE58E48(v13, v22, type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EE58DE8(v13, type metadata accessor for RefreshableGameHighlightsShelfConstructionIntent);
}

unint64_t sub_24EE58BA8()
{
  v1 = 0x444965676170;
  v2 = 0x726579616C70;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x44496D616461;
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

uint64_t sub_24EE58C1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EE59134(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EE58C44(uint64_t a1)
{
  v2 = sub_24EE58D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE58C80(uint64_t a1)
{
  v2 = sub_24EE58D24();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE58D24()
{
  result = qword_27F231C30;
  if (!qword_27F231C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C30);
  }

  return result;
}

uint64_t sub_24EE58D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48, &unk_24F93A2D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE58DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EE58E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EE58EB0()
{
  result = qword_27F231C48;
  if (!qword_27F231C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212F48, &unk_24F93A2D0);
    sub_24EE58F64(&qword_27F231C50, MEMORY[0x277D21B10], &protocol conformance descriptor for JSONObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C48);
  }

  return result;
}