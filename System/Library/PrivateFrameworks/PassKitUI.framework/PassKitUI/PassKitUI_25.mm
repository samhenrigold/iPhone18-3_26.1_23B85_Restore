id *NearbyPeerPaymentDeviceDiscoverySession.deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  sub_1BD0D4534((v8 + 4));
  v8[6], v16, v17, v18, v19, v20, v21, v22;
  sub_1BD0DE53C(v8 + OBJC_IVAR____TtC9PassKitUI39NearbyPeerPaymentDeviceDiscoverySession_transferID, &qword_1EBD40A80, &qword_1BE0C89A8);
  return v8;
}

uint64_t NearbyPeerPaymentDeviceDiscoverySession.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  sub_1BD0D4534((v8 + 4));
  v8[6], v16, v17, v18, v19, v20, v21, v22;
  sub_1BD0DE53C(v8 + OBJC_IVAR____TtC9PassKitUI39NearbyPeerPaymentDeviceDiscoverySession_transferID, &qword_1EBD40A80, &qword_1BE0C89A8);

  return swift_deallocClassInstance();
}

void sub_1BD2C7670(uint64_t a1)
{
  sub_1BD2C7A80(319, &qword_1EBD36A28, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of NearbyPeerPaymentDeviceDiscoverySessionDelegate.responseMetadataReceived(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BD125004;

  return v11(a1, a2, a3, a4);
}

void sub_1BD2C792C(uint64_t a1)
{
  sub_1BD2C7A80(319, &qword_1EBD47800, MEMORY[0x1E69CDDE8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD2C7A80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD2C7AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(sub_1BE04AA64() - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1BE04DC44() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v3[2];
  v15 = v3[3];
  v16 = v3[4];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1BD126968;

  return sub_1BD2C5F38(a1, a2, a3, v14, v15, v16, v3 + v10, v3 + v13);
}

uint64_t sub_1BD2C7C4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BD2C7CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD2B802C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD2C7D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD2BF2C0(a1, v4, v5, v6);
}

uint64_t sub_1BD2C7E30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_59Tm_0()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD2C7EB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD2BA9C4(a1, v4, v5, v6);
}

uint64_t sub_1BD2C7F6C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0) - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD126968;

  return sub_1BD2BFF34(a1, v6, v7, v8, v9, v1 + v5);
}

double ExtractedUIFlowItem.preflight(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = sub_1BE04D214();
  v6 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70[0] = 0;
  v70[1] = 0xE000000000000000;
  sub_1BE053834();
  v70[1], v9, v10, v11, v12, v13, v14, v15;
  strcpy(v70, "ExtractedNode<");
  HIBYTE(v70[1]) = -18;
  v16 = *&v2[OBJC_IVAR___PKExtractedUIFlowItem_flowItem + 8];
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 8);
  v67 = ObjectType;
  v19 = v18(ObjectType, v16);
  v21 = v20;
  MEMORY[0x1BFB3F610](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1BFB3F610](62, 0xE100000000000000);
  v29 = v70[1];
  v69 = v70[0];
  sub_1BE04D0E4();
  sub_1BE048C84();
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C24();
  v29, v32, v33, v34, v35, v36, v37, v38;
  if (os_log_type_enabled(v30, v31))
  {
    v39 = swift_slowAlloc();
    v66 = v3;
    v40 = v39;
    v41 = swift_slowAlloc();
    v65 = a1;
    v42 = a2;
    v43 = v41;
    v70[0] = v41;
    *v40 = 136446210;
    *(v40 + 4) = sub_1BD123690(v69, v29, v70);
    _os_log_impl(&dword_1BD026000, v30, v31, "%{public}s starting preflight", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43, v44, v45, v46, v47, v48, v49, v50);
    v51 = v43;
    a2 = v42;
    a1 = v65;
    MEMORY[0x1BFB45F20](v51, -1, -1);
    v52 = v40;
    v3 = v66;
    MEMORY[0x1BFB45F20](v52, -1, -1);
  }

  (*(v6 + 8))(v8, v68);
  v53 = swift_allocObject();
  v53[2] = v69;
  v53[3] = v29;
  v53[4] = a1;
  v53[5] = a2;
  v53[6] = v3;
  v54 = *(v16 + 40);
  sub_1BE048964();
  v55 = v3;
  v54(sub_1BD2C8660, v53, v67, v16);
  v53, v56, v57, v58, v59, v60, v61, v62;
  return result;
}

void sub_1BD2C835C(void *a1, void *a2, void *a3, unsigned __int8 a4, void *a5, void *a6, void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v51 = a5;
  v52 = a7;
  v15 = sub_1BE04D214();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 <= 1u)
  {
    if (a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        a1 = a2;
        a2 = a3;
      }

      goto LABEL_10;
    }

    v31 = a1;
    a1 = a2;
    a2 = a3;
    if ((v31 & 1) == 0)
    {
LABEL_10:
      v50 = a8;
      sub_1BE04D0E4();
      sub_1BE048C84();
      sub_1BE048C84();
      v32 = sub_1BE04D204();
      v33 = sub_1BE052C54();
      a2, v34, v35, v36, v37, v38, v39, v40;
      a6, v41, v42, v43, v44, v45, v46, v47;
      if (os_log_type_enabled(v32, v33))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v53 = v49;
        *v48 = 136446466;
        *(v48 + 4) = sub_1BD123690(v51, a6, &v53);
        *(v48 + 12) = 2082;
        *(v48 + 14) = sub_1BD123690(a1, a2, &v53);
        _os_log_impl(&dword_1BD026000, v32, v33, "%{public}s should not be shown because '%{public}s'.", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v49, -1, -1);
        MEMORY[0x1BFB45F20](v48, -1, -1);
      }

      (*(v16 + 8))(v18, v15);
      v52(0);
      return;
    }
  }

  v19 = *(a9 + OBJC_IVAR___PKExtractedUIFlowItem_flowItem + 8);
  ObjectType = swift_getObjectType();
  v21 = swift_allocObject();
  v22 = v52;
  v21[2] = v51;
  v21[3] = a6;
  v21[4] = v22;
  v21[5] = a8;
  v23 = *(v19 + 48);
  sub_1BE048C84();
  sub_1BE048964();
  v23(sub_1BD2C8E48, v21, ObjectType, v19);

  v21, v24, v25, v26, v27, v28, v29, v30;
}

uint64_t sub_1BD2C8690(char a1, void *a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0E4();
  sub_1BE048C84();
  v14 = sub_1BE04D204();
  v15 = sub_1BE052C54();
  a3, v16, v17, v18, v19, v20, v21, v22;
  if (os_log_type_enabled(v14, v15))
  {
    v23 = swift_slowAlloc();
    v39 = v10;
    v24 = a2;
    v25 = v23;
    v26 = swift_slowAlloc();
    v40 = a5;
    v41 = v26;
    v27 = a4;
    v28 = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_1BD123690(v24, a3, &v41);
    *(v25 + 12) = 1024;
    *(v25 + 14) = a1 & 1;
    _os_log_impl(&dword_1BD026000, v14, v15, "%{public}s finished preflight with shouldBeShown: %{BOOL}d", v25, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v28, v29, v30, v31, v32, v33, v34, v35);
    v36 = v28;
    a4 = v27;
    MEMORY[0x1BFB45F20](v36, -1, -1);
    MEMORY[0x1BFB45F20](v25, -1, -1);

    (*(v11 + 8))(v13, v39);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  return a4(a1 & 1);
}

unint64_t ExtractedUIFlowItem.viewController(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR___PKExtractedUIFlowItem_flowItem + 8);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 56))(ObjectType, v9);
  if (v11 >= 3)
  {
    v63 = (v2 + OBJC_IVAR___PKExtractedUIFlowItem_completion);
    v65 = *(v2 + OBJC_IVAR___PKExtractedUIFlowItem_completion);
    v64 = *(v2 + OBJC_IVAR___PKExtractedUIFlowItem_completion + 8);
    *v63 = a1;
    v63[1] = a2;
    v66 = v11;
    sub_1BD0D4744(v65, v64, v12, v13, v14, v15, v16, v17);
    sub_1BE048964();
    return v66;
  }

  else
  {
    v75[0] = 0;
    v75[1] = 0xE000000000000000;
    sub_1BE053834();
    v75[1], v18, v19, v20, v21, v22, v23, v24;
    strcpy(v75, "ExtractedNode<");
    HIBYTE(v75[1]) = -18;
    v25 = (*(v9 + 8))(ObjectType, v9);
    v27 = v26;
    MEMORY[0x1BFB3F610](v25);
    v27, v28, v29, v30, v31, v32, v33, v34;
    MEMORY[0x1BFB3F610](62, 0xE100000000000000);
    v36 = v75[0];
    v35 = v75[1];
    sub_1BE04D0E4();
    sub_1BE048C84();
    v37 = sub_1BE04D204();
    v38 = sub_1BE052C54();
    v35, v39, v40, v41, v42, v43, v44, v45;
    if (os_log_type_enabled(v37, v38))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v75[0] = v47;
      *v46 = 136446210;
      v48 = sub_1BD123690(v36, v35, v75);
      v35, v49, v50, v51, v52, v53, v54, v55;
      *(v46 + 4) = v48;
      _os_log_impl(&dword_1BD026000, v37, v38, "%{public}s failed to return view controller", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47, v56, v57, v58, v59, v60, v61, v62);
      MEMORY[0x1BFB45F20](v47, -1, -1);
      MEMORY[0x1BFB45F20](v46, -1, -1);
    }

    else
    {

      v35, v68, v69, v70, v71, v72, v73, v74;
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }
}

id ExtractedUIFlowItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExtractedUIFlowItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD2C8D90(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = (v8 + OBJC_IVAR___PKExtractedUIFlowItem_completion);
  v10 = *(v8 + OBJC_IVAR___PKExtractedUIFlowItem_completion);
  if (v10)
  {
    v11 = v9[1];
    v12 = sub_1BE048964();
    v10(v12);
    sub_1BD0D4744(v10, v11, v13, v14, v15, v16, v17, v18);
    v19 = *v9;
  }

  else
  {
    v19 = 0;
  }

  v20 = v9[1];
  *v9 = 0;
  v9[1] = 0;

  sub_1BD0D4744(v19, v20, a3, a4, a5, a6, a7, a8);
}

id sub_1BD2C8F18()
{
  v1 = sub_1BE04BAC4();
  v82 = *(v1 - 8);
  v83 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v81 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v80 = v0;
  v78 = sub_1BD1872DC(v0, KeyPath);
  v79 = v4;
  v6 = v5;
  sub_1BE053D04();
  sub_1BE052524();
  v7 = sub_1BE053D64();
  v15 = -1 << *(v6 + 32);
  v16 = v7 & ~v15;
  if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v6;
    sub_1BD2A9690(0, v16, isUniquelyReferenced_nonNull_native, v29, v30, v31, v32, v33);
    v6 = v85;
    goto LABEL_10;
  }

  v17 = ~v15;
  while (1)
  {
    v18 = *(*(v6 + 48) + v16);
    if (v18 == 1)
    {
      v19 = 0xEE00415049506165;
      goto LABEL_7;
    }

    if (v18 != 2)
    {
      break;
    }

    v19 = 0x80000001BE117610;
LABEL_7:
    v20 = sub_1BE053B84();
    v19, v21, v22, v23, v24, v25, v26, v27;
    if (v20)
    {
      goto LABEL_10;
    }

    v16 = (v16 + 1) & v17;
    if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  0xE400000000000000, v8, v9, v10, v11, v12, v13, v14;
LABEL_10:
  v34 = v80;
  v35 = v79;
  sub_1BD12F704(v78 & 1, v79, v6, v34, KeyPath);
  v6, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49;

  KeyPath, v50, v51, v52, v53, v54, v55, v56;
  v57 = *&v34[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_context];
  v58 = *&v34[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_credential];
  v59 = v34[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_allowPartnerAppFlow];
  v60 = type metadata accessor for ProvisioningCarHeroViewController();
  v61 = objc_allocWithZone(v60);
  *&v61[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_linkedApplication] = 0;
  *&v61[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_provisioningContext] = v57;
  *&v61[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_credential] = v58;
  v61[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_allowPartnerAppFlow] = v59;
  *&v61[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_delegate + 8] = &off_1F3B9BBB0;
  swift_unknownObjectUnownedInit();
  sub_1BE052434();
  v63 = v62;
  sub_1BE048964();
  v64 = v58;
  v65 = sub_1BE04BB74();
  v63, v66, v67, v68, v69, v70, v71, v72;
  *&v61[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_reporter] = v65;
  v73 = v81;
  sub_1BE04BC34();
  v74 = sub_1BE04B9A4();
  (*(v82 + 8))(v73, v83);
  v84.receiver = v61;
  v84.super_class = v60;
  result = objc_msgSendSuper2(&v84, sel_initWithContext_, v74);
  if (result)
  {
    v76 = result;
    [result setExplanationViewControllerDelegate_];
    return v76;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2C92A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2C92E4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

double static FlightWidgetProgressContent.createContent(viewModel:context:)@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04AF64();
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon + 16);
  if (v10)
  {
    v11 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon);
    v12 = sub_1BE051544();
  }

  else
  {
    sub_1BE048C84();
    v12 = sub_1BE051574();
  }

  v13 = v12;
  LOBYTE(v42[0]) = 0;
  sub_1BE048964();
  v14 = sub_1BE048964();
  FlightWidgetProgressFlightStepContent.init(viewModel:flightStepType:)(v14, v42, v47);
  LOBYTE(v42[0]) = 1;
  v15 = sub_1BE048964();
  FlightWidgetProgressFlightStepContent.init(viewModel:flightStepType:)(v15, v42, v49);
  v16 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_state);
  v41 = v9;
  if (v16 > 6)
  {
    goto LABEL_11;
  }

  if (((1 << v16) & 0x49) != 0)
  {
    sub_1BD0DDE0C(v47, v42);
    sub_1BD0DDE0C(v49, v42);
    v17 = -1.0;
    goto LABEL_12;
  }

  if (((1 << v16) & 0x30) == 0)
  {
    if (v16 == 1)
    {
      sub_1BD0DDE0C(v47, v42);
      sub_1BD0DDE0C(v49, v42);
      v17 = 0.0;
      goto LABEL_12;
    }

LABEL_11:
    sub_1BD0DDE0C(v47, v42);
    sub_1BD0DDE0C(v49, v42);
    sub_1BE04AEF4();
    sub_1BE04ADC4();
    v19 = v18;
    (*(v40 + 8))(v8, v6);
    sub_1BE04ADC4();
    v17 = fmax(fmin(v19 / v20, 1.0), 0.0);
    goto LABEL_12;
  }

  sub_1BD0DDE0C(v47, v42);
  sub_1BD0DDE0C(v49, v42);
  v17 = 1.0;
LABEL_12:
  v21 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_tintColor);
  sub_1BE048964();
  v22 = sub_1BD3A7408();
  v24 = v23;
  v13, v23, v25, v26, v27, v28, v29, v30;
  sub_1BD0DDE68(v47);
  sub_1BD0DDE68(v49);
  *&v46[39] = v47[2];
  *&v46[55] = v47[3];
  *&v46[71] = v47[4];
  *&v46[87] = v48;
  *&v46[7] = v47[0];
  *&v46[23] = v47[1];
  *(&v42[8] + 8) = v49[2];
  *(&v42[9] + 8) = v49[3];
  *(&v42[10] + 8) = v49[4];
  *(&v42[11] + 8) = v49[5];
  *(&v42[6] + 8) = v49[0];
  *(&v42[7] + 8) = v49[1];
  *(&v42[2] + 1) = *&v46[32];
  *(&v42[1] + 1) = *&v46[16];
  *(v42 + 1) = *v46;
  *&v42[6] = *(&v48 + 1);
  *(&v42[5] + 1) = *&v46[80];
  *(&v42[4] + 1) = *&v46[64];
  LOBYTE(v42[0]) = v41;
  *(&v42[3] + 1) = *&v46[48];
  *(&v42[12] + 1) = v17;
  *&v43 = v13;
  BYTE8(v43) = v10 ^ 1;
  *&v44 = v21;
  *(&v44 + 1) = v22;
  v45 = v24;
  PKEdgeInsetsMake();
  v31 = v43;
  *(a3 + 192) = v42[12];
  *(a3 + 208) = v31;
  *(a3 + 224) = v44;
  *(a3 + 240) = v45;
  v32 = v42[9];
  *(a3 + 128) = v42[8];
  *(a3 + 144) = v32;
  v33 = v42[11];
  *(a3 + 160) = v42[10];
  *(a3 + 176) = v33;
  v34 = v42[5];
  *(a3 + 64) = v42[4];
  *(a3 + 80) = v34;
  v35 = v42[7];
  *(a3 + 96) = v42[6];
  *(a3 + 112) = v35;
  v36 = v42[1];
  *a3 = v42[0];
  *(a3 + 16) = v36;
  result = *&v42[2];
  v38 = v42[3];
  *(a3 + 32) = v42[2];
  *(a3 + 48) = v38;
  return result;
}

uint64_t FlightWidgetProgressFlightStepContent.FlightStepType.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

void FlightWidgetProgressFlightStepContent.init(viewModel:flightStepType:)(char *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v37) = *a2;
  v5 = v37;
  v35 = sub_1BD2C9950(&v37, a1);
  v36 = v5;
  if (v5)
  {
    v6 = *&a1[OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalAirportCode + 8];
    v37 = *&a1[OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalAirportCode];
    v38 = v6;
    sub_1BD0DDEBC();
    v7 = sub_1BE053554();
    v33 = v8;
    v34 = v7;
    v9 = &OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalTimeZone;
    v10 = &OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalDate;
  }

  else
  {
    v11 = *&a1[OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureAirportCode + 8];
    v37 = *&a1[OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureAirportCode];
    v38 = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE053554();
    v33 = v13;
    v34 = v12;
    v9 = &OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureTimeZone;
    v10 = &OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureDate;
  }

  sub_1BD3A9168(&a1[*v10], &a1[*v9]);
  v15 = v14;
  v17 = v16;
  v18 = sub_1BE052434();
  v20 = v19;
  v21 = sub_1BE052434();
  v23 = v22;
  v24 = sub_1BE052434();
  v26 = v25;
  a1, v25, v27, v28, v29, v30, v31, v32;
  *a3 = v36;
  *(a3 + 8) = v34;
  *(a3 + 16) = v33;
  *(a3 + 24) = v15;
  *(a3 + 32) = v17;
  *(a3 + 40) = v35;
  *(a3 + 48) = v18;
  *(a3 + 56) = v20;
  *(a3 + 64) = v21;
  *(a3 + 72) = v23;
  *(a3 + 80) = v24;
  *(a3 + 88) = v26;
}

uint64_t sub_1BD2C9950(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = v2;
    if ([v4 state] == 6)
    {
      v5 = sub_1BE0513B4();

      return v5;
    }

    v7 = &selRef_arrival;
    if (!v3)
    {
      v7 = &selRef_departure;
    }

    v8 = [v4 *v7];
    v9 = [v8 status];
    if (v9 > 1)
    {
      if (v9 == 3)
      {
        v10 = sub_1BE051434();
        goto LABEL_15;
      }
    }

    else if (v9 == 1)
    {
      v10 = sub_1BE051414();
LABEL_15:
      v11 = v10;

      return v11;
    }

    v10 = sub_1BE0513E4();
    goto LABEL_15;
  }

  return sub_1BE0513E4();
}

unint64_t sub_1BD2C9A54()
{
  result = qword_1EBD40B90;
  if (!qword_1EBD40B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40B90);
  }

  return result;
}

unint64_t sub_1BD2C9AAC()
{
  result = qword_1EBD40B98;
  if (!qword_1EBD40B98)
  {
    type metadata accessor for FlightWidgetProgressView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40B98);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1BD2C9B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1BD2C9B68(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1BD2C9C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_1BD2C9C74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD2C9D04()
{
  result = qword_1EBD40BA0;
  if (!qword_1EBD40BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40BA0);
  }

  return result;
}

unint64_t sub_1BD2C9D5C()
{
  result = qword_1EBD40BA8;
  if (!qword_1EBD40BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40BA8);
  }

  return result;
}

uint64_t sub_1BD2C9E1C()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAAEE0);
  __swift_project_value_buffer(v6, qword_1EBDAAEE0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD2CA030(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v1[3] = swift_task_alloc();
  v2 = sub_1BE04AA64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1BE04A3B4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD2CA248, 0, 0);
}

id sub_1BD2CA248(uint64_t a1)
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v2 = sub_1BE04CFD4();
  v3 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:AppleCardApplyIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = v1[15];
  v6 = v1[16];
  v9 = v1[13];
  v8 = v1[14];
  v11 = v1[11];
  v10 = v1[12];
  v12 = v1[10];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v1[17] = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  v13 = [objc_opt_self() sharedInstance];
  v14 = v13;
  v1[18] = v13;
  if (v13)
  {
    v15 = [v13 passesOfStyles_];
    if (v15)
    {
      v16 = v15;
      sub_1BD102A4C();
      v17 = sub_1BE052744();

      v71 = v14;
      if (v17 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
      {
        v26 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1BFB40900](v26, v17);
          }

          else
          {
            if (v26 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v27 = *(v17 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          v30 = [v27 secureElementPass];
          if (v30)
          {
            v31 = v30;
            v32 = [v30 isAppleCardPass];

            if (v32)
            {
              v17, v18, v19, v20, v21, v22, v23, v24;
              sub_1BE04A3A4();
              sub_1BE052434();
              sub_1BE04A394();
              v33 = sub_1BE052434();
              MEMORY[0x1BFB37400](v33);
              v14 = v71;
              goto LABEL_24;
            }
          }

          else
          {
          }

          ++v26;
          if (v29 == i)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

LABEL_21:
      v17, v18, v19, v20, v21, v22, v23, v24;
      v14 = v71;
    }
  }

  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v34 = sub_1BE052434();
  MEMORY[0x1BFB37400](v34);
  v35 = sub_1BE052434();
  v37 = v36;
  MEMORY[0x1BFB3F610](v35);
  v37, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1BFB3F610](47, 0xE100000000000000);
  result = PKFeatureIdentifierToString();
  if (result)
  {
    v46 = result;
    v47 = sub_1BE052434();
    v49 = v48;

    MEMORY[0x1BFB3F610](v47, v49);
    v49, v50, v51, v52, v53, v54, v55, v56;
    MEMORY[0x1BFB37410](47, 0xE100000000000000);
LABEL_24:
    v58 = v1[4];
    v57 = v1[5];
    v59 = v1[3];
    sub_1BE04A364();
    if ((*(v57 + 48))(v59, 1, v58) == 1)
    {
      sub_1BD226BBC(v1[3]);
      sub_1BE0484F4();
      sub_1BD1351C0();
      swift_allocError();
      sub_1BE0484E4();
      swift_willThrow();

      v60 = v1[17];
      (*(v1[8] + 8))(v1[9], v1[7]);
      sub_1BD2CAAB8(v60);
      v60, v61, v62, v63, v64, v65, v66, v67;

      v68 = v1[1];

      return v68();
    }

    else
    {
      (*(v1[5] + 32))(v1[6], v1[3], v1[4]);
      v69 = swift_task_alloc();
      v1[19] = v69;
      *v69 = v1;
      v69[1] = sub_1BD2CA7C0;
      v70 = v1[6];

      return sub_1BD0D7A54(v70);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2CA7C0(char a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD2CA8C0, 0, 0);
}

uint64_t sub_1BD2CA8C0(uint64_t a1)
{
  if (*(v1 + 160) == 1)
  {
    v2 = *(v1 + 136);
    v3 = *(v1 + 144);
    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v7 = *(v1 + 48);
    v6 = *(v1 + 56);
    v9 = *(v1 + 32);
    v8 = *(v1 + 40);
    sub_1BE048774();

    (*(v8 + 8))(v7, v9);
    (*(v4 + 8))(v5, v6);
    sub_1BD2CAAB8(v2);
    v2, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v18 = *(v1 + 144);
    v20 = *(v1 + 40);
    v19 = *(v1 + 48);
    v21 = *(v1 + 32);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v20 + 8))(v19, v21);
    v22 = *(v1 + 136);
    (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));
    sub_1BD2CAAB8(v22);
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_1BD2CAAB8(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:AppleCardApplyIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD2CADA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAEE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD2CAE54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD2CA030(a1);
}

uint64_t sub_1BD2CAEEC(uint64_t a1)
{
  v2 = sub_1BD15CFFC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD2CAF64@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v63 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BC0, &qword_1BE0C9028);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v58[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BC8, &qword_1BE0C9030);
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BD0, &qword_1BE0C9038);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BD8, &qword_1BE0C9040);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v69 = &v58[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58[-v19];
  *v20 = sub_1BE04F7C4();
  *(v20 + 1) = 0;
  v20[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BE0, &qword_1BE0C9048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BE8, &qword_1BE0C9050);
  sub_1BD0DE4F4(&qword_1EBD40BF0, &qword_1EBD40BE8, &qword_1BE0C9050, MEMORY[0x1E6981F48]);
  sub_1BE04E2B4();
  KeyPath = swift_getKeyPath();
  v91[0] = a1;
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  swift_beginAccess();
  v29 = a1[2];
  if (v29 >> 62)
  {
    v30 = sub_1BE053704();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v30 < 1)
  {
    v31 = 1;
  }

  else
  {
    *v10 = sub_1BE04F784();
    *(v10 + 1) = 0;
    v10[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C20, &unk_1BE0C90A0);
    type metadata accessor for WalletSettingsModel(0);
    sub_1BE048964();
    sub_1BE051A94();
    sub_1BD2D4A4C(v10, v15);
    v31 = 0;
  }

  v32 = *(v67 + 56);
  v33 = v15;
  v61 = v15;
  v32(v15, v31, 1, v8);
  v67 = sub_1BE04F7B4();
  LOBYTE(v91[0]) = 1;
  sub_1BE048964();
  v34 = v63;
  sub_1BE048964();
  sub_1BD2D4244(a1, v34, v97);
  *&v74[7] = v97[0];
  *&v74[23] = v97[1];
  *&v74[39] = v97[2];
  *&v74[55] = v97[3];
  v66 = LOBYTE(v91[0]);
  v64 = sub_1BE04F784();
  LOBYTE(v91[0]) = 1;
  v35 = sub_1BE048964();
  sub_1BD2D4564(v35, v98);
  *(v73 + 7) = v98[0];
  *(&v73[1] + 7) = v98[1];
  *(&v73[2] + 7) = v98[2];
  *(&v73[3] + 7) = v99;
  v65 = LOBYTE(v91[0]);
  v36 = v68;
  sub_1BD2CBD30(a1, v68);
  v60 = sub_1BE04F784();
  LOBYTE(v91[0]) = 1;
  v37 = sub_1BE048964();
  sub_1BD2D47D0(v37, v100);
  *(v72 + 7) = v100[0];
  *(&v72[1] + 7) = v100[1];
  *(&v72[2] + 7) = v100[2];
  *(&v72[3] + 7) = v101;
  v59 = LOBYTE(v91[0]);
  v38 = v69;
  sub_1BD0DE19C(v20, v69, &qword_1EBD40BD8, &qword_1BE0C9040);
  v39 = v70;
  sub_1BD0DE19C(v33, v70, &qword_1EBD40BD0, &qword_1BE0C9038);
  sub_1BD0DE19C(v36, v71, &qword_1EBD40BC0, &qword_1BE0C9028);
  v63 = v20;
  v40 = v62;
  sub_1BD0DE19C(v38, v62, &qword_1EBD40BD8, &qword_1BE0C9040);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C00, &qword_1BE0C9080);
  sub_1BD0DE19C(v39, v40 + v41[12], &qword_1EBD40BD0, &qword_1BE0C9038);
  v42 = v40 + v41[16];
  v75[0] = v67;
  v75[1] = 0;
  v76[0] = v66;
  *&v76[1] = *v74;
  *&v76[17] = *&v74[16];
  *&v76[33] = *&v74[32];
  *&v76[49] = *&v74[48];
  *&v76[64] = *&v74[63];
  v43 = *&v74[63];
  v44 = *v76;
  *v42 = v67;
  *(v42 + 16) = v44;
  v45 = *&v76[16];
  v46 = *&v76[32];
  v47 = *&v76[48];
  *(v42 + 80) = v43;
  *(v42 + 48) = v46;
  *(v42 + 64) = v47;
  *(v42 + 32) = v45;
  v48 = (v40 + v41[20]);
  v77 = v64;
  LOBYTE(v78[0]) = v65;
  v78[3] = *(&v73[2] + 15);
  *(&v78[2] + 1) = v73[2];
  *(&v78[1] + 1) = v73[1];
  *(v78 + 1) = v73[0];
  v49 = v78[3];
  v50 = v78[1];
  v48[3] = v78[2];
  v48[4] = v49;
  v51 = v78[0];
  *v48 = v77;
  v48[1] = v51;
  v48[2] = v50;
  v52 = v71;
  sub_1BD0DE19C(v71, v40 + v41[24], &qword_1EBD40BC0, &qword_1BE0C9028);
  v53 = (v40 + v41[28]);
  v54 = v60;
  v79[0] = v60;
  v79[1] = 0;
  LOBYTE(v38) = v59;
  LOBYTE(v80[0]) = v59;
  *(v80 + 1) = v72[0];
  *(&v80[1] + 1) = v72[1];
  *(&v80[2] + 1) = v72[2];
  v80[3] = *(&v72[2] + 15);
  v55 = v80[0];
  *v53 = v60;
  v53[1] = v55;
  v56 = v80[2];
  v53[2] = v80[1];
  v53[3] = v56;
  v53[4] = v80[3];
  sub_1BD0DE19C(v75, v91, &qword_1EBD40C08, &qword_1BE0C9088);
  sub_1BD0DE19C(&v77, v91, &qword_1EBD40C10, &qword_1BE0C9090);
  sub_1BD0DE19C(v79, v91, &qword_1EBD40C18, &qword_1BE0C9098);
  sub_1BD0DE53C(v68, &qword_1EBD40BC0, &qword_1BE0C9028);
  sub_1BD0DE53C(v61, &qword_1EBD40BD0, &qword_1BE0C9038);
  sub_1BD0DE53C(v63, &qword_1EBD40BD8, &qword_1BE0C9040);
  v81[0] = v54;
  v81[1] = 0;
  v82 = v38;
  v83 = v72[0];
  v84 = v72[1];
  *v85 = v72[2];
  *&v85[15] = *(&v72[2] + 15);
  sub_1BD0DE53C(v81, &qword_1EBD40C18, &qword_1BE0C9098);
  sub_1BD0DE53C(v52, &qword_1EBD40BC0, &qword_1BE0C9028);
  v86[0] = v64;
  v86[1] = 0;
  v87 = v65;
  v88 = v73[0];
  v89 = v73[1];
  *v90 = v73[2];
  *&v90[15] = *(&v73[2] + 15);
  sub_1BD0DE53C(v86, &qword_1EBD40C10, &qword_1BE0C9090);
  v91[0] = v67;
  v91[1] = 0;
  v92 = v66;
  v94 = *&v74[16];
  v95 = *&v74[32];
  v96[0] = *&v74[48];
  *(v96 + 15) = *&v74[63];
  v93 = *v74;
  sub_1BD0DE53C(v91, &qword_1EBD40C08, &qword_1BE0C9088);
  sub_1BD0DE53C(v70, &qword_1EBD40BD0, &qword_1BE0C9038);
  return sub_1BD0DE53C(v69, &qword_1EBD40BD8, &qword_1BE0C9040);
}

id sub_1BD2CB89C@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v97 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v89 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v93 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v89 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v89 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v98 = &v89 - v15;
  v16 = *(v2 + 104);
  v96 = *MEMORY[0x1E69B80F0];
  v95 = v16;
  v16(v6, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    v90 = *(v2 + 8);
    v90(v6, v1);
    v99 = v19;
    v100 = v21;
    sub_1BD0DDEBC();
    v22 = sub_1BE0506C4();
    v24 = v23;
    v26 = v25;
    v99 = v22;
    v100 = v23;
    v28 = (v27 & 1);
    v101 = v27 & 1;
    v102 = v25;
    sub_1BE052434();
    v30 = v29;
    sub_1BE050DE4();
    v30, v31, v32, v33, v34, v35, v36, v37;
    sub_1BD0DDF10(v22, v24, v28, v38, v39, v40, v41, v42);
    v26, v43, v44, v45, v46, v47, v48, v49;
    v50 = v97;
    v95(v97, v96, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v51 = result;
      v52 = sub_1BE04B6F4();
      v54 = v53;

      v90(v50, v1);
      v99 = v52;
      v100 = v54;
      v55 = sub_1BE0506C4();
      v57 = v56;
      v59 = v58;
      v99 = v55;
      v100 = v56;
      v61 = (v60 & 1);
      v101 = v60 & 1;
      v102 = v58;
      sub_1BE052434();
      v63 = v62;
      v64 = v91;
      sub_1BE050DE4();
      v63, v65, v66, v67, v68, v69, v70, v71;
      sub_1BD0DDF10(v55, v57, v61, v72, v73, v74, v75, v76);
      v59, v77, v78, v79, v80, v81, v82, v83;
      v84 = v98;
      v85 = v92;
      sub_1BD0DE19C(v98, v92, &qword_1EBD452C0, &qword_1BE0B7620);
      v86 = v93;
      sub_1BD0DE19C(v64, v93, &qword_1EBD452C0, &qword_1BE0B7620);
      v87 = v94;
      sub_1BD0DE19C(v85, v94, &qword_1EBD452C0, &qword_1BE0B7620);
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380, &unk_1BE0D40A0);
      sub_1BD0DE19C(v86, v87 + *(v88 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE53C(v64, &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE53C(v84, &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE53C(v86, &qword_1EBD452C0, &qword_1BE0B7620);
      return sub_1BD0DE53C(v85, &qword_1EBD452C0, &qword_1BE0B7620);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD2CBD30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v91 = a1;
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE048964();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = a1[8];
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4(&v91);
  v13, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  v12, v29, v30, v31, v32, v33, v34, v35;
  if (v91 == 1)
  {
    v43 = swift_getKeyPath();
    v91 = a1;
    sub_1BE04B594();
    v43, v44, v45, v46, v47, v48, v49, v50;
    v51 = a1[8];
    v52 = swift_getKeyPath();
    v91 = a1;
    sub_1BE048964();
    sub_1BE04B594();
    v52, v53, v54, v55, v56, v57, v58, v59;
    v60 = a1[8];
    v61 = swift_getKeyPath();
    v62 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(&v91);
    v61, v63, v64, v65, v66, v67, v68, v69;
    v62, v70, v71, v72, v73, v74, v75, v76;
    v60, v77, v78, v79, v80, v81, v82, v83;
    *a2 = v51;
    *(a2 + 8) = a1;
    sub_1BE051694();
    v84 = v92;
    *(a2 + 16) = v91;
    *(a2 + 24) = v84;
    sub_1BE051694();
    v85 = v92;
    *(a2 + 32) = v91;
    *(a2 + 40) = v85;
    v86 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
    v87 = *(v86 + 32);
    *(a2 + v87) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30, &qword_1BE0C9228);
    swift_storeEnumTagMultiPayload();
    v88 = *(v86 + 36);
    *(a2 + v88) = PKPassKitUIBundle();
    return (*(*(v86 - 8) + 56))(a2, 0, 1, v86);
  }

  else
  {
    a1, v36, v37, v38, v39, v40, v41, v42;
    v90 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
    return (*(*(v90 - 8) + 56))(a2, 1, 1, v90);
  }
}

id sub_1BD2CC034()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *v0;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B80F0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v2 + 8))(v4, v1);
    v15 = v7;
    v16 = v9;
    sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v16 = v10;
    v17 = v11 & 1;
    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BB0, &qword_1BE0C9020);
    sub_1BD0DE4F4(&qword_1EBD40BB8, &qword_1EBD40BB0, &qword_1BE0C9020, MEMORY[0x1E6981F48]);
    return sub_1BE051A24();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD2CC23C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E18, &qword_1BE0C9810);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B80F0], v8, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v9 + 8))(v12, v8);
    v45 = v15;
    v46 = v17;
    sub_1BE051A84();
    KeyPath = swift_getKeyPath();
    sub_1BE051AA4();
    KeyPath, v19, v20, v21, v22, v23, v24, v25;
    v26 = (*(v2 + 8))(v4, v1);
    v41 = v43;
    v42 = v44;
    MEMORY[0x1EEE9AC00](v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E20, &qword_1BE0C9840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E28, &qword_1BE0C9848);
    sub_1BD2D5CD8();
    sub_1BD2D5DC4();
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE052434();
    v28 = v27;
    sub_1BD0DE4F4(&qword_1EBD40E68, &qword_1EBD40E18, &qword_1BE0C9810, MEMORY[0x1E697D690]);
    v29 = v39;
    sub_1BE050DE4();
    v28, v30, v31, v32, v33, v34, v35, v36;
    return (*(v38 + 8))(v7, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2CC62C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  sub_1BE051A74();
  KeyPath = swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  sub_1BE048C84();
  v16, v8, v9, v10, v11, v12, v13, v14;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70, &unk_1BE0D6840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E50, &qword_1BE0C9850);
  sub_1BD0DE4F4(&qword_1EBD40E78, &qword_1EBD40E70, &unk_1BE0D6840, MEMORY[0x1E69E6338]);
  sub_1BD2D5FE4();
  sub_1BD2D5E48();
  return sub_1BE0519C4();
}

uint64_t sub_1BD2CC7DC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E88, &qword_1BE0C9898);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E60, qword_1BE0C9858);
  v38 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = *a1;
  if ([*a1 passActivationState] != 1)
  {
    v13 = [v12 paymentPass];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 devicePrimaryPaymentApplication];
      if (v15)
      {
        v16 = v15;
        [v15 state];

        if (!PKPaymentApplicationStateIsSuspended())
        {
          v19 = [v12 localizedDescription];
          v20 = sub_1BE052434();
          v37 = v21;

          v39 = v20;
          v40 = v37;
          sub_1BD0DDEBC();
          *v7 = sub_1BE0506C4();
          *(v7 + 1) = v22;
          v7[16] = v23 & 1;
          *(v7 + 3) = v24;
          *(v7 + 4) = v12;
          v7[40] = 1;
          sub_1BE052434();
          v26 = v25;
          v27 = v12;
          v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E20, &qword_1BE0C9840);
          v29 = sub_1BD2D5CD8();
          v39 = MEMORY[0x1E6981148];
          v40 = v28;
          v41 = MEMORY[0x1E6981138];
          v42 = v29;
          swift_getOpaqueTypeConformance2();
          sub_1BE050DE4();

          v26, v30, v31, v32, v33, v34, v35, v36;
          (*(v5 + 8))(v7, v4);
          sub_1BD05B420(v11, a2);
          return (*(v38 + 56))(a2, 0, 1, v8);
        }
      }
    }
  }

  v17 = *(v38 + 56);

  return v17(a2, 1, 1, v8);
}

uint64_t sub_1BD2CCB38@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DA0, &qword_1BE0C9798);
  MEMORY[0x1EEE9AC00](v51);
  v3 = &v47 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DA8, &unk_1BE0C97A0);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - v6;
  sub_1BD2CCF4C(v3);
  v60[0] = *(v1 + 1);
  v58 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v7 = v55;
  v8 = v1[1];
  v49 = *v1;
  v50 = v8;
  v58 = *(v1 + 2);
  v59 = v1[6];
  v9 = swift_allocObject();
  v10 = *(v1 + 1);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 2);
  *(v9 + 64) = v1[6];
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE19C(v60, &v55, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE19C(&v58, &v55, &qword_1EBD4E9E0, &unk_1BE0E7650);
  v45 = sub_1BD2D57F4();
  v46 = sub_1BD2D58AC();
  v11 = v51;
  sub_1BE050F64();
  *(&v7 + 1), v12, v13, v14, v15, v16, v17, v18;
  v9, v19, v20, v21, v22, v23, v24, v25;
  v7, v26, v27, v28, v29, v30, v31, v32;
  sub_1BD0DE53C(v3, &qword_1EBD40DA0, &qword_1BE0C9798);
  v55 = v58;
  v56 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  v33 = swift_allocObject();
  v34 = *(v1 + 1);
  *(v33 + 16) = *v1;
  *(v33 + 32) = v34;
  *(v33 + 48) = *(v1 + 2);
  *(v33 + 64) = v1[6];
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE19C(v60, &v55, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE19C(&v58, &v55, &qword_1EBD4E9E0, &unk_1BE0E7650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  *&v55 = v11;
  *(&v55 + 1) = &type metadata for SettingsPaymentDefaultsView.EmailPicker.AddEmailSheet;
  v56 = v45;
  v57 = v46;
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8, MEMORY[0x1E69E6550], MEMORY[0x1E69E7C80]);
  v35 = v52;
  v36 = v48;
  sub_1BE051064();
  v33, v37, v38, v39, v40, v41, v42, v43;
  return (*(v53 + 8))(v36, v35);
}

int *sub_1BD2CCF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CB8, &qword_1BE0C9690);
  v3 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v5 = &v64 - v4;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B80F0], v6, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v7 + 8))(v10, v6);
    v68 = v13;
    v69 = v15;
    v66[2] = *(v2 + 2);
    v67 = v2[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
    v16 = sub_1BE0516C4();
    MEMORY[0x1EEE9AC00](v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CD0, &qword_1BE0C9698);
    sub_1BD2D52F8(&qword_1EBD40CD8, MEMORY[0x1E69E6540], MEMORY[0x1E69E7C78]);
    sub_1BD0DE4F4(&qword_1EBD40CE0, &qword_1EBD40CD0, &qword_1BE0C9698, MEMORY[0x1E6981F48]);
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE052434();
    v18 = v17;
    sub_1BD0DE4F4(&qword_1EBD40CB0, &qword_1EBD40CB8, &qword_1BE0C9690, MEMORY[0x1E697D690]);
    v19 = v64;
    v20 = v65;
    sub_1BE050DE4();
    v18, v21, v22, v23, v24, v25, v26, v27;
    (*(v3 + 8))(v5, v19);
    v28 = *v2;
    KeyPath = swift_getKeyPath();
    *&v66[0] = v28;
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    KeyPath, v30, v31, v32, v33, v34, v35, v36;
    v37 = *(v28 + 64);
    v38 = swift_getKeyPath();
    v39 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(v66);
    v38, v40, v41, v42, v43, v44, v45, v46;
    v39, v47, v48, v49, v50, v51, v52, v53;
    v37, v54, v55, v56, v57, v58, v59, v60;
    LOBYTE(v28) = v66[0];
    v61 = swift_getKeyPath();
    v62 = swift_allocObject();
    *(v62 + 16) = v28;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DA0, &qword_1BE0C9798);
    v63 = (v20 + result[9]);
    *v63 = v61;
    v63[1] = sub_1BD10DF54;
    v63[2] = v62;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD2CD410(uint64_t a1, unint64_t *a2, void *a3)
{
  if ((a2[1] & 1) == 0)
  {
    v4 = *a2;
    KeyPath = swift_getKeyPath();
    v6 = swift_getKeyPath();
    sub_1BE04D8B4(&v90);
    KeyPath, v7, v8, v9, v10, v11, v12, v13;
    v6, v14, v15, v16, v17, v18, v19, v20;
    v21 = v90[2];
    v90, v22, v23, v24, v25, v26, v27, v28;
    if ((v4 & 0x8000000000000000) == 0 && v4 < v21)
    {
      v29 = swift_getKeyPath();
      v30 = swift_getKeyPath();
      sub_1BE04D8B4(&v90);
      v29, v31, v32, v33, v34, v35, v36, v37;
      v30, v38, v39, v40, v41, v42, v43, v44;
      v45 = v90;
      if (v4 >= v90[2])
      {
        __break(1u);
      }

      else
      {
        v46 = v90[v4 + 4];
        v45, v47, v48, v49, v50, v51, v52, v53;
        v54 = *a3;
        v55 = swift_getKeyPath();
        v90 = v54;
        sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
        sub_1BE04B594();
        v55, v56, v57, v58, v59, v60, v61, v62;
        v64 = v54[5];
        v63 = v54[6];
        v65 = v54[8];
        v66 = v54[10];
        v67 = v46;
        v68 = v64;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BD40C070(v46, v68, v65);
        v66, v69, v70, v71, v72, v73, v74, v75;
        v65, v76, v77, v78, v79, v80, v81, v82;
        v63, v83, v84, v85, v86, v87, v88, v89;
      }
    }
  }
}

id sub_1BD2CD5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CE8, &unk_1BE0C96A0);
  MEMORY[0x1EEE9AC00](v84);
  v91 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v80 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF0, &unk_1BE0E7670);
  MEMORY[0x1EEE9AC00](v83);
  v89 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v95 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF8, &unk_1BE0C96B0);
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v80 - v12;
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0, qword_1BE0E7680);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D00, &unk_1BE0C96C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v93 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v80 - v27;
  v100 = *(a1 + 32);
  v101 = *(a1 + 48);
  v96 = *(a1 + 32);
  v97 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  v29 = 1;
  v92 = v28;
  if (BYTE8(v99) != 1)
  {
    goto LABEL_4;
  }

  v82 = v17;
  v81 = v99;
  (*(v14 + 104))(v16, *MEMORY[0x1E69B80F0], v13);
  result = PKPassKitBundle();
  if (result)
  {
    v31 = result;
    v32 = sub_1BE04B6F4();
    v34 = v33;

    (*(v14 + 8))(v16, v13);
    *&v96 = v32;
    *(&v96 + 1) = v34;
    sub_1BD0DDEBC();
    *v20 = sub_1BE0506C4();
    *(v20 + 1) = v35;
    v20[16] = v36 & 1;
    v37 = v81;
    *(v20 + 3) = v38;
    *(v20 + 4) = v37;
    *(v20 + 20) = 257;
    v39 = *(v18 + 32);
    v40 = v82;
    v39(v23, v20, v82);
    v28 = v92;
    v39(v92, v23, v40);
    v17 = v40;
    v29 = 0;
LABEL_4:
    (*(v18 + 56))(v28, v29, 1, v17);
    v82 = *(a1 + 8);
    KeyPath = swift_getKeyPath();
    v42 = swift_getKeyPath();
    sub_1BE04D8B4(&v96);
    KeyPath, v43, v44, v45, v46, v47, v48, v49;
    v42, v50, v51, v52, v53, v54, v55, v56;
    v57 = v96;
    v58 = *(v96 + 16);
    *&v99 = 0;
    *(&v99 + 1) = v58;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08, &unk_1BE0E76B0);
    sub_1BD2D5394();
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    v60 = sub_1BD2D52F8(&qword_1EBD40CD8, MEMORY[0x1E69E6540], MEMORY[0x1E69E7C78]);
    *&v96 = MEMORY[0x1E6981148];
    *(&v96 + 1) = v59;
    v97 = MEMORY[0x1E6981138];
    v98 = v60;
    swift_getOpaqueTypeConformance2();
    v61 = v94;
    sub_1BE0519C4();
    v62 = v95;
    sub_1BE051984();
    LOBYTE(v57) = sub_1BE050204();
    v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700) + 36);
    *v63 = v57;
    *(v63 + 8) = 0u;
    *(v63 + 24) = 0u;
    *(v63 + 40) = 1;
    *(v62 + *(v83 + 36)) = 1;
    v99 = *(a1 + 16);
    v64 = swift_allocObject();
    v65 = *(a1 + 16);
    *(v64 + 16) = *a1;
    *(v64 + 32) = v65;
    *(v64 + 48) = *(a1 + 32);
    *(v64 + 64) = *(a1 + 48);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(&v99, &v96, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BD0DE19C(&v100, &v96, &qword_1EBD4E9E0, &unk_1BE0E7650);
    v66 = v88;
    sub_1BE051704();
    *(v66 + *(v84 + 36)) = 1;
    v67 = v93;
    sub_1BD0DE19C(v28, v93, &qword_1EBD40D00, &unk_1BE0C96C0);
    v69 = v85;
    v68 = v86;
    v70 = *(v86 + 16);
    v71 = v61;
    v72 = v87;
    v70(v85, v71, v87);
    v73 = v62;
    v74 = v89;
    sub_1BD0DE19C(v73, v89, &qword_1EBD40CF0, &unk_1BE0E7670);
    v75 = v91;
    sub_1BD0DE19C(v66, v91, &qword_1EBD40CE8, &unk_1BE0C96A0);
    v76 = v67;
    v77 = v90;
    sub_1BD0DE19C(v76, v90, &qword_1EBD40D00, &unk_1BE0C96C0);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D20, &unk_1BE0C96E8);
    v70((v77 + v78[12]), v69, v72);
    sub_1BD0DE19C(v74, v77 + v78[16], &qword_1EBD40CF0, &unk_1BE0E7670);
    sub_1BD0DE19C(v75, v77 + v78[20], &qword_1EBD40CE8, &unk_1BE0C96A0);
    sub_1BD0DE53C(v66, &qword_1EBD40CE8, &unk_1BE0C96A0);
    sub_1BD0DE53C(v95, &qword_1EBD40CF0, &unk_1BE0E7670);
    v79 = *(v68 + 8);
    v79(v94, v72);
    sub_1BD0DE53C(v92, &qword_1EBD40D00, &unk_1BE0C96C0);
    sub_1BD0DE53C(v75, &qword_1EBD40CE8, &unk_1BE0C96A0);
    sub_1BD0DE53C(v74, &qword_1EBD40CF0, &unk_1BE0E7670);
    v79(v69, v72);
    return sub_1BD0DE53C(v93, &qword_1EBD40D00, &unk_1BE0C96C0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD2CE000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D40, &qword_1BE0C9708);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v45 - v12;
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D48, &qword_1BE0C9710);
  sub_1BD2CE378(a1, &v13[*(v14 + 44)]);
  v15 = (*a1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      (*(v5 + 104))(v7, *MEMORY[0x1E69B8048], v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BE0B69E0;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1BD110550();
      *(v19 + 32) = v17;
      *(v19 + 40) = v16;
      sub_1BE048C84();
      v20 = sub_1BE04B714();
      v22 = v21;
      v19, v21, v23, v24, v25, v26, v27, v28;
      (*(v5 + 8))(v7, v4);
      v45[0] = v20;
      v45[1] = v22;
      sub_1BD0DDEBC();
      v29 = sub_1BE0506C4();
      v31 = v30;
      v16 = v32;
      v34 = v33 & 1;
      sub_1BD0D7F18(v29, v30, v33 & 1);
      sub_1BE048C84();
    }

    else
    {
      v29 = 0;
      v31 = 0;
      v34 = 0;
      v16 = 0;
    }
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v34 = 0;
  }

  sub_1BD0DE19C(v13, v10, &qword_1EBD40D40, &qword_1BE0C9708);
  sub_1BD0DE19C(v10, a2, &qword_1EBD40D40, &qword_1BE0C9708);
  v35 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D50, &qword_1BE0C9718) + 48));
  sub_1BD1969AC(v29, v31, v34, v16);
  sub_1BD1969F0(v29, v31, v34, v16, v36, v37, v38, v39);
  *v35 = v29;
  v35[1] = v31;
  v35[2] = v34;
  v35[3] = v16;
  sub_1BD0DE53C(v13, &qword_1EBD40D40, &qword_1BE0C9708);
  sub_1BD1969F0(v29, v31, v34, v16, v40, v41, v42, v43);
  return sub_1BD0DE53C(v10, &qword_1EBD40D40, &qword_1BE0C9708);
}

void sub_1BD2CE378(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v186 = a2;
  v185 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  v187 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v188 = v4;
  v189 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D58, &unk_1BE0F98B0);
  v190 = *(v5 - 8);
  v191 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v163 - v6;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D60, &qword_1BE0C9720);
  v177 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v193 = &v163 - v8;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D68, &qword_1BE0C9728);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v178 = &v163 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D70, &qword_1BE0C9730);
  v183 = *(v10 - 8);
  v184 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v182 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v192 = &v163 - v13;
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  OpaqueTypeConformance2 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v163 - v19;
  v21 = *(v15 + 104);
  v168 = *MEMORY[0x1E69B8048];
  v169 = v15 + 104;
  v167 = v21;
  v21(&v163 - v19, v18);
  v22 = PKPassKitBundle();
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    v27 = *(v15 + 8);
    v166 = v14;
    v165 = v15 + 8;
    v164 = v27;
    v27(v20, v14);
    v194 = v24;
    v195 = v26;
    v172 = sub_1BD0DDEBC();
    v175 = sub_1BE0506C4();
    v174 = v28;
    v173 = v29;
    v176 = v30;
    sub_1BE04F624();
    v32 = a1[3];
    LOBYTE(v201) = *(a1 + 16);
    v31 = v201;
    v202 = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516C4();
    sub_1BE051824();
    LOBYTE(v194) = v31;
    v195 = v32;
    v171 = v33;
    sub_1BE0516A4();
    LOBYTE(v194) = v201;
    v34 = v189;
    sub_1BD2D547C(a1, v189);
    v35 = (v187[80] + 16) & ~v187[80];
    v36 = swift_allocObject();
    sub_1BD2D54E0(v34, v36 + v35);
    v37 = sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58, &unk_1BE0F98B0, MEMORY[0x1E697D6A8]);
    v38 = v191;
    sub_1BE051064();
    v36, v39, v40, v41, v42, v43, v44, v45;
    (*(v190 + 8))(v7, v38);
    v46 = a1;
    KeyPath = swift_getKeyPath();
    v48 = swift_getKeyPath();
    sub_1BE04D8B4(&v194);
    KeyPath, v49, v50, v51, v52, v53, v54, v55;
    v48, v56, v57, v58, v59, v60, v61, v62;
    if (v194)
    {
      v63 = 0;
      v64 = 0xE000000000000000;
LABEL_6:
      v194 = v63;
      v195 = v64;
      v71 = sub_1BE0506C4();
      v189 = v73;
      v190 = v72;
      v75 = v74;
      v76 = v46[5];
      LOBYTE(v201) = *(v46 + 32);
      v202 = v76;
      sub_1BE0516C4();
      v187 = v194;
      v172 = v195;
      LODWORD(v188) = v196;
      v77 = swift_getKeyPath();
      v78 = swift_getKeyPath();
      sub_1BE04D8B4(&v194);
      v77, v79, v80, v81, v82, v83, v84, v85;
      v78, v86, v87, v88, v89, v90, v91, v92;
      v171 = &v163;
      LOBYTE(v201) = v194;
      MEMORY[0x1EEE9AC00](v93);
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80, &qword_1BE0C9780);
      v194 = v38;
      v195 = MEMORY[0x1E69E6370];
      v196 = v37;
      v197 = MEMORY[0x1E69E6388];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v191 = sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
      v94 = v179;
      v95 = v75;
      v96 = v178;
      v97 = v71;
      v98 = v189;
      v99 = v190;
      v100 = v187;
      v101 = v172;
      v102 = v193;
      sub_1BE050F04();
      v101, v103, v104, v105, v106, v107, v108, v109;
      v100, v110, v111, v112, v113, v114, v115, v116;
      sub_1BD0DDF10(v97, v99, (v95 & 1), v117, v118, v119, v120, v121);
      v98, v122, v123, v124, v125, v126, v127, v128;
      (*(v177 + 8))(v102, v94);
      v129 = *(v46 + *(v185 + 36));
      v130 = sub_1BE0515F4();
      v194 = v94;
      v195 = v169;
      v196 = MEMORY[0x1E6981148];
      v197 = &type metadata for HideMyEmailAccountConfigurationError;
      v198 = OpaqueTypeConformance2;
      v199 = v191;
      v200 = MEMORY[0x1E6981138];
      swift_getOpaqueTypeConformance2();
      v131 = v192;
      v132 = v181;
      sub_1BE050844();
      v130, v133, v134, v135, v136, v137, v138, v139;
      (*(v180 + 8))(v96, v132);
      v141 = v183;
      v140 = v184;
      v142 = *(v183 + 16);
      v143 = v182;
      v142(v182, v131, v184);
      v144 = v186;
      v145 = v175;
      v146 = v174;
      *v186 = v175;
      v144[1] = v146;
      v147 = (v173 & 1);
      *(v144 + 16) = v147;
      v148 = v176;
      v144[3] = v176;
      v144[4] = 0;
      *(v144 + 40) = 1;
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D90, &unk_1BE0C9788);
      v142(v144 + *(v149 + 64), v143, v140);
      sub_1BD0D7F18(v145, v146, v147);
      v150 = *(v141 + 8);
      sub_1BE048C84();
      v150(v192, v140);
      v150(v143, v140);
      sub_1BD0DDF10(v145, v146, v147, v151, v152, v153, v154, v155);
      v148, v156, v157, v158, v159, v160, v161, v162;
      return;
    }

    v65 = v37;
    v66 = OpaqueTypeConformance2;
    v67 = v166;
    v167(OpaqueTypeConformance2, v168, v166);
    v68 = PKPassKitBundle();
    if (v68)
    {
      v69 = v68;
      v63 = sub_1BE04B6F4();
      v64 = v70;

      v164(v66, v67);
      v37 = v65;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD2CEF0C(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v4 = *a2;
  if (([*(*a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager) isAccountConfigured] & 1) == 0 && v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
  }

  v5 = a3[1];
  KeyPath = swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v15 = v5[5];
  v14 = v5[6];
  v16 = v5[8];
  v17 = v5[10];
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  v18 = v15;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE04D8C4();
  [v18 setUseHideMyEmail_];
  v17, v19, v20, v21, v22, v23, v24, v25;
  v16, v26, v27, v28, v29, v30, v31, v32;
  v14, v33, v34, v35, v36, v37, v38, v39;
}

uint64_t sub_1BD2CF0F8@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  sub_1BD2D547C(a1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_1BD2D54E0(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_1BE051704();
  sub_1BD2D547C(a1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  sub_1BD2D54E0(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18);
  sub_1BE051704();
  v21 = *(v8 + 16);
  v22 = v29;
  v21(v29, v17, v7);
  v23 = v30;
  v21(v30, v14, v7);
  v24 = v31;
  v21(v31, v22, v7);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98, &unk_1BE0ECEC0);
  v21(&v24[*(v25 + 48)], v23, v7);
  v26 = *(v8 + 8);
  v26(v14, v7);
  v26(v17, v7);
  v26(v23, v7);
  return (v26)(v22, v7);
}

uint64_t sub_1BD2CF47C(uint64_t *a1)
{
  v23 = sub_1BE04E784();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v25[0] = *(a1 + 16);
  v26 = v12;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  swift_getKeyPath();
  swift_getKeyPath();
  v25[0] = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BE052434();
  v14 = v13;
  sub_1BE04AA54();
  v14, v15, v16, v17, v18, v19, v20, v21;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1BD0DE53C(v7, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

  (*(v9 + 32))(v11, v7, v8);
  type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  sub_1BD70A4A8(v4);
  sub_1BE04E734();
  (*(v2 + 8))(v4, v23);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD2CF77C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD2CF848@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8048], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2CF9B4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F784();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D28, &qword_1BE0C96F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D30, &qword_1BE0C9700);
  sub_1BD0DE4F4(&qword_1EBD40D38, &qword_1EBD40D30, &qword_1BE0C9700, MEMORY[0x1E6981F48]);
  return sub_1BE04E2B4();
}

uint64_t sub_1BD2CFA88@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C98, &qword_1BE0C9680);
  MEMORY[0x1EEE9AC00](v51);
  v3 = &v47 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CA0, &qword_1BE0C9688);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - v6;
  sub_1BD2CFE9C(v3);
  v60[0] = *(v1 + 1);
  v58 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v7 = v55;
  v8 = v1[1];
  v49 = *v1;
  v50 = v8;
  v58 = *(v1 + 2);
  v59 = v1[6];
  v9 = swift_allocObject();
  v10 = *(v1 + 1);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 2);
  *(v9 + 64) = v1[6];
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE19C(v60, &v55, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE19C(&v58, &v55, &qword_1EBD4E9E0, &unk_1BE0E7650);
  v45 = sub_1BD2D5018();
  v46 = sub_1BD2D5100();
  v11 = v51;
  sub_1BE050F64();
  *(&v7 + 1), v12, v13, v14, v15, v16, v17, v18;
  v9, v19, v20, v21, v22, v23, v24, v25;
  v7, v26, v27, v28, v29, v30, v31, v32;
  sub_1BD0DE53C(v3, &qword_1EBD40C98, &qword_1BE0C9680);
  v55 = v58;
  v56 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  v33 = swift_allocObject();
  v34 = *(v1 + 1);
  *(v33 + 16) = *v1;
  *(v33 + 32) = v34;
  *(v33 + 48) = *(v1 + 2);
  *(v33 + 64) = v1[6];
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE19C(v60, &v55, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE19C(&v58, &v55, &qword_1EBD4E9E0, &unk_1BE0E7650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  *&v55 = v11;
  *(&v55 + 1) = &type metadata for SettingsPaymentDefaultsView.PhonePicker.AddPhoneSheet;
  v56 = v45;
  v57 = v46;
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8, MEMORY[0x1E69E6550], MEMORY[0x1E69E7C80]);
  v35 = v52;
  v36 = v48;
  sub_1BE051064();
  v33, v37, v38, v39, v40, v41, v42, v43;
  return (*(v53 + 8))(v36, v35);
}

id sub_1BD2CFE9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CB8, &qword_1BE0C9690);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - v5;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80F0], v7, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v30 = v14;
    v31 = v16;
    v28 = *(v2 + 32);
    v29 = *(v2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
    v17 = sub_1BE0516C4();
    MEMORY[0x1EEE9AC00](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CD0, &qword_1BE0C9698);
    sub_1BD2D52F8(&qword_1EBD40CD8, MEMORY[0x1E69E6540], MEMORY[0x1E69E7C78]);
    sub_1BD0DE4F4(&qword_1EBD40CE0, &qword_1EBD40CD0, &qword_1BE0C9698, MEMORY[0x1E6981F48]);
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE052434();
    v19 = v18;
    sub_1BD0DE4F4(&qword_1EBD40CB0, &qword_1EBD40CB8, &qword_1BE0C9690, MEMORY[0x1E697D690]);
    sub_1BE050DE4();
    v19, v20, v21, v22, v23, v24, v25, v26;
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD2D0234@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  v24 = *(a1 + 1);
  v22 = v8;
  v23 = a1[6];
  v9 = swift_allocObject();
  v10 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 2);
  *(v9 + 64) = a1[6];
  KeyPath = swift_getKeyPath();
  v21[3] = v7;
  swift_retain_n();
  sub_1BE048964();
  sub_1BD0DE19C(&v24, v21, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE19C(&v22, v21, &qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = *(v7 + 96);
  *a4 = v7;
  a4[1] = a3;
  a4[2] = v9;
  a4[3] = v19;

  return v19;
}

void sub_1BD2D0394(uint64_t a1, unint64_t *a2, void *a3)
{
  if ((a2[1] & 1) == 0)
  {
    v4 = *a2;
    KeyPath = swift_getKeyPath();
    v6 = swift_getKeyPath();
    sub_1BE04D8B4(&v90);
    KeyPath, v7, v8, v9, v10, v11, v12, v13;
    v6, v14, v15, v16, v17, v18, v19, v20;
    v21 = v90[2];
    v90, v22, v23, v24, v25, v26, v27, v28;
    if ((v4 & 0x8000000000000000) == 0 && v4 < v21)
    {
      v29 = swift_getKeyPath();
      v30 = swift_getKeyPath();
      sub_1BE04D8B4(&v90);
      v29, v31, v32, v33, v34, v35, v36, v37;
      v30, v38, v39, v40, v41, v42, v43, v44;
      v45 = v90;
      if (v4 >= v90[2])
      {
        __break(1u);
      }

      else
      {
        v46 = v90[v4 + 4];
        v45, v47, v48, v49, v50, v51, v52, v53;
        v54 = *a3;
        v55 = swift_getKeyPath();
        v90 = v54;
        sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
        sub_1BE04B594();
        v55, v56, v57, v58, v59, v60, v61, v62;
        v64 = v54[5];
        v63 = v54[6];
        v65 = v54[8];
        v66 = v54[10];
        v67 = v46;
        v68 = v64;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BD40C574(v46, v68, v66);
        v66, v69, v70, v71, v72, v73, v74, v75;
        v65, v76, v77, v78, v79, v80, v81, v82;
        v63, v83, v84, v85, v86, v87, v88, v89;
      }
    }
  }
}

id sub_1BD2D0580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CE8, &unk_1BE0C96A0);
  MEMORY[0x1EEE9AC00](v84);
  v91 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v80 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF0, &unk_1BE0E7670);
  MEMORY[0x1EEE9AC00](v83);
  v89 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v95 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF8, &unk_1BE0C96B0);
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v80 - v12;
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0, qword_1BE0E7680);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D00, &unk_1BE0C96C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v93 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v80 - v27;
  v100 = *(a1 + 32);
  v101 = *(a1 + 48);
  v96 = *(a1 + 32);
  v97 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  v29 = 1;
  v92 = v28;
  if (BYTE8(v99) != 1)
  {
    goto LABEL_4;
  }

  v82 = v17;
  v81 = v99;
  (*(v14 + 104))(v16, *MEMORY[0x1E69B80F0], v13);
  result = PKPassKitBundle();
  if (result)
  {
    v31 = result;
    v32 = sub_1BE04B6F4();
    v34 = v33;

    (*(v14 + 8))(v16, v13);
    *&v96 = v32;
    *(&v96 + 1) = v34;
    sub_1BD0DDEBC();
    *v20 = sub_1BE0506C4();
    *(v20 + 1) = v35;
    v20[16] = v36 & 1;
    v37 = v81;
    *(v20 + 3) = v38;
    *(v20 + 4) = v37;
    *(v20 + 20) = 257;
    v39 = *(v18 + 32);
    v40 = v82;
    v39(v23, v20, v82);
    v28 = v92;
    v39(v92, v23, v40);
    v17 = v40;
    v29 = 0;
LABEL_4:
    (*(v18 + 56))(v28, v29, 1, v17);
    v82 = *(a1 + 8);
    KeyPath = swift_getKeyPath();
    v42 = swift_getKeyPath();
    sub_1BE04D8B4(&v96);
    KeyPath, v43, v44, v45, v46, v47, v48, v49;
    v42, v50, v51, v52, v53, v54, v55, v56;
    v57 = v96;
    v58 = *(v96 + 16);
    *&v99 = 0;
    *(&v99 + 1) = v58;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08, &unk_1BE0E76B0);
    sub_1BD2D5394();
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    v60 = sub_1BD2D52F8(&qword_1EBD40CD8, MEMORY[0x1E69E6540], MEMORY[0x1E69E7C78]);
    *&v96 = MEMORY[0x1E6981148];
    *(&v96 + 1) = v59;
    v97 = MEMORY[0x1E6981138];
    v98 = v60;
    swift_getOpaqueTypeConformance2();
    v61 = v94;
    sub_1BE0519C4();
    v62 = v95;
    sub_1BE051984();
    LOBYTE(v57) = sub_1BE050204();
    v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700) + 36);
    *v63 = v57;
    *(v63 + 8) = 0u;
    *(v63 + 24) = 0u;
    *(v63 + 40) = 1;
    *(v62 + *(v83 + 36)) = 1;
    v99 = *(a1 + 16);
    v64 = swift_allocObject();
    v65 = *(a1 + 16);
    *(v64 + 16) = *a1;
    *(v64 + 32) = v65;
    *(v64 + 48) = *(a1 + 32);
    *(v64 + 64) = *(a1 + 48);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE19C(&v99, &v96, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BD0DE19C(&v100, &v96, &qword_1EBD4E9E0, &unk_1BE0E7650);
    v66 = v88;
    sub_1BE051704();
    *(v66 + *(v84 + 36)) = 1;
    v67 = v93;
    sub_1BD0DE19C(v28, v93, &qword_1EBD40D00, &unk_1BE0C96C0);
    v69 = v85;
    v68 = v86;
    v70 = *(v86 + 16);
    v71 = v61;
    v72 = v87;
    v70(v85, v71, v87);
    v73 = v62;
    v74 = v89;
    sub_1BD0DE19C(v73, v89, &qword_1EBD40CF0, &unk_1BE0E7670);
    v75 = v91;
    sub_1BD0DE19C(v66, v91, &qword_1EBD40CE8, &unk_1BE0C96A0);
    v76 = v67;
    v77 = v90;
    sub_1BD0DE19C(v76, v90, &qword_1EBD40D00, &unk_1BE0C96C0);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D20, &unk_1BE0C96E8);
    v70((v77 + v78[12]), v69, v72);
    sub_1BD0DE19C(v74, v77 + v78[16], &qword_1EBD40CF0, &unk_1BE0E7670);
    sub_1BD0DE19C(v75, v77 + v78[20], &qword_1EBD40CE8, &unk_1BE0C96A0);
    sub_1BD0DE53C(v66, &qword_1EBD40CE8, &unk_1BE0C96A0);
    sub_1BD0DE53C(v95, &qword_1EBD40CF0, &unk_1BE0E7670);
    v79 = *(v68 + 8);
    v79(v94, v72);
    sub_1BD0DE53C(v92, &qword_1EBD40D00, &unk_1BE0C96C0);
    sub_1BD0DE53C(v75, &qword_1EBD40CE8, &unk_1BE0C96A0);
    sub_1BD0DE53C(v74, &qword_1EBD40CF0, &unk_1BE0E7670);
    v79(v69, v72);
    return sub_1BD0DE53C(v93, &qword_1EBD40D00, &unk_1BE0C96C0);
  }

  __break(1u);
  return result;
}

void sub_1BD2D0F14(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(a2 + 16))
  {
    v7 = *(a2 + 8 * v4 + 32);
    a3();
    sub_1BD0DDEBC();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    v14 = v13;

    *a4 = v8;
    *(a4 + 8) = v10;
    *(a4 + 16) = v12 & 1;
    *(a4 + 24) = v14;
    *(a4 + 32) = v4;
    *(a4 + 40) = 256;
    return;
  }

  __break(1u);
}

uint64_t sub_1BD2D0FD4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2[1] = *(a1 + 16);
  v4 = *(&v3 + 1);
  sub_1BD0DE19C(&v4, v2, &unk_1EBD4EF10, &qword_1BE0C2670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v2[0] = v3;
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v3, &qword_1EBD54350, &unk_1BE0B8D00);
}

id sub_1BD2D10C4@<X0>(unsigned int *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a1, v6, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v7 + 8))(v10, v6);
    v19[0] = v13;
    v19[1] = v15;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a4 = result;
    *(a4 + 8) = v16;
    *(a4 + 16) = v17 & 1;
    *(a4 + 24) = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2D1268@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DC0, &qword_1BE0C97E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DC8, &qword_1BE0C97E8);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  sub_1BD2D15D0(v4);
  v55 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v9 = v52;
  v10 = swift_allocObject();
  v11 = *(v1 + 16);
  v10[1] = *v1;
  v10[2] = v11;
  v12 = *(v1 + 48);
  v10[3] = *(v1 + 32);
  v10[4] = v12;
  sub_1BD2D4B24(v1, &v52);
  v46 = sub_1BD2D5A00();
  v47 = sub_1BD2D5AE8();
  sub_1BE050F64();
  *(&v9 + 1), v13, v14, v15, v16, v17, v18, v19;
  v10, v20, v21, v22, v23, v24, v25, v26;
  v9, v27, v28, v29, v30, v31, v32, v33;
  sub_1BD0DE53C(v4, &qword_1EBD40DC0, &qword_1BE0C97E0);
  v52 = *(v1 + 40);
  v53 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  v34 = swift_allocObject();
  v35 = *(v1 + 16);
  v34[1] = *v1;
  v34[2] = v35;
  v36 = *(v1 + 48);
  v34[3] = *(v1 + 32);
  v34[4] = v36;
  sub_1BD2D4B24(v1, &v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  *&v52 = v2;
  *(&v52 + 1) = &type metadata for SettingsPaymentDefaultsView.ShippingAddressPicker.AddAddressSheet;
  v53 = v46;
  v54 = v47;
  swift_getOpaqueTypeConformance2();
  sub_1BD2D52F8(&qword_1EBD40CC8, MEMORY[0x1E69E6550], MEMORY[0x1E69E7C80]);
  v37 = v49;
  sub_1BE051064();
  v34, v38, v39, v40, v41, v42, v43, v44;
  return (*(v50 + 8))(v8, v37);
}

id sub_1BD2D15D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DE0, &unk_1BE0C97F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - v5;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80F0], v7, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v30 = v14;
    v31 = v16;
    v28 = *(v2 + 40);
    v29 = *(v2 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
    v17 = sub_1BE0516C4();
    MEMORY[0x1EEE9AC00](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40DF0, &unk_1BE0E7660);
    sub_1BD2D52F8(&qword_1EBD40CD8, MEMORY[0x1E69E6540], MEMORY[0x1E69E7C78]);
    sub_1BD0DE4F4(&qword_1EBD40DF8, &qword_1EBD40DF0, &unk_1BE0E7660, MEMORY[0x1E6981F48]);
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE052434();
    v19 = v18;
    sub_1BD0DE4F4(&qword_1EBD40DD8, &qword_1EBD40DE0, &unk_1BE0C97F0, MEMORY[0x1E697D690]);
    sub_1BE050DE4();
    v19, v20, v21, v22, v23, v24, v25, v26;
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2D1970@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  v6 = swift_allocObject();
  v7 = *(a1 + 1);
  v6[1] = *a1;
  v6[2] = v7;
  v8 = *(a1 + 3);
  v6[3] = *(a1 + 2);
  v6[4] = v8;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = sub_1BD2D5B44;
  a2[3] = v6;
  sub_1BE048964();
  sub_1BE048964();
  return sub_1BD2D4B24(a1, &v10);
}

uint64_t sub_1BD2D1A04(uint64_t a1)
{
  v3 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = *(v3 + 40);
  sub_1BE048C84();
  sub_1BD2242A4(a1, v12);
  v12, v13, v14, v15, v16, v17, v18, v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  return sub_1BE0516B4();
}

void sub_1BD2D1B4C(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a2 + 8) & 1) == 0)
  {
    v4 = *a2;
    v5 = a3[4];
    KeyPath = swift_getKeyPath();
    v7 = OBJC_IVAR____TtC9PassKitUI18AddressInformation___observationRegistrar;
    sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
    v8 = v5 + v7;
    sub_1BE04B594();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
    swift_beginAccess();
    v16 = *(v5 + 40);
    if (v16 >> 62)
    {
      v17 = sub_1BE053704();
      if ((v17 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4 >= v17)
    {
      return;
    }

    v18 = swift_getKeyPath();
    sub_1BE04B594();
    v18, v19, v20, v21, v22, v23, v24, v25;
    v8 = *(v5 + 40);
    if ((v8 & 0xC000000000000001) == 0)
    {
      if (v4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v26 = *(v8 + 8 * v4 + 32);
      goto LABEL_8;
    }

LABEL_12:
    sub_1BE048C84();
    v26 = MEMORY[0x1BFB40900](v4, v8);
    v8, v62, v63, v64, v65, v66, v67, v68;
LABEL_8:
    v27 = *a3;
    v28 = swift_getKeyPath();
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    v28, v29, v30, v31, v32, v33, v34, v35;
    v36 = v27[5];
    v37 = v27[6];
    v38 = v27[8];
    v39 = v27[10];
    v40 = v36;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD40CA78(v26, 0, v40, v37);

    v39, v41, v42, v43, v44, v45, v46, v47;
    v38, v48, v49, v50, v51, v52, v53, v54;
    v37, v55, v56, v57, v58, v59, v60, v61;
  }
}

uint64_t sub_1BD2D1DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CE8, &unk_1BE0C96A0);
  MEMORY[0x1EEE9AC00](v75);
  v81 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v71 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40CF0, &unk_1BE0E7670);
  MEMORY[0x1EEE9AC00](v74);
  v79 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E00, &unk_1BE0C9800);
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v71 - v13;
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0, qword_1BE0E7680);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v71 - v23;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D00, &unk_1BE0C96C0);
  MEMORY[0x1EEE9AC00](v73);
  v83 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v71 - v27;
  v87 = *(a1 + 40);
  v88 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  v82 = v6;
  if (v90 == 1)
  {
    v71 = v89;
    v28 = *MEMORY[0x1E69B80F0];
    v29 = *(v15 + 104);
    v72 = v14;
    v29(v17, v28, v14);
    v30 = PKPassKitBundle();
    if (!v30)
    {
      goto LABEL_10;
    }

    v31 = v30;
    v32 = sub_1BE04B6F4();
    v34 = v33;

    (*(v15 + 8))(v17, v72);
    *&v87 = v32;
    *(&v87 + 1) = v34;
    sub_1BD0DDEBC();
    *v21 = sub_1BE0506C4();
    *(v21 + 1) = v35;
    v21[16] = v36 & 1;
    v37 = v71;
    *(v21 + 3) = v38;
    *(v21 + 4) = v37;
    *(v21 + 20) = 257;
    v39 = *(v19 + 32);
    v39(v24, v21, v18);
    v21 = v86;
    v39(v86, v24, v18);
    v40 = 0;
    v6 = v82;
  }

  else
  {
    v40 = 1;
    v21 = v86;
  }

  (*(v19 + 56))(v21, v40, 1, v18);
  v41 = *(a1 + 32);
  KeyPath = swift_getKeyPath();
  *&v87 = v41;
  sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v43, v44, v45, v46, v47, v48, v49;
  swift_beginAccess();
  v24 = *(v41 + 40);
  if (v24 >> 62)
  {
    v30 = sub_1BE053704();
    if ((v30 & 0x8000000000000000) == 0)
    {
LABEL_11:
      v50 = v21;
      goto LABEL_7;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v50 = v21;
  v30 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  *&v87 = 0;
  *(&v87 + 1) = v30;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v24;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08, &unk_1BE0E76B0);
  sub_1BD2D5394();
  sub_1BD2D5B78();
  v51 = v84;
  sub_1BE0519C4();
  v52 = v76;
  sub_1BE051984();
  v53 = sub_1BE050204();
  v54 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700) + 36);
  *v54 = v53;
  *(v54 + 8) = 0u;
  *(v54 + 24) = 0u;
  *(v54 + 40) = 1;
  *(v52 + *(v74 + 36)) = 1;
  v55 = swift_allocObject();
  v56 = *(a1 + 16);
  v55[1] = *a1;
  v55[2] = v56;
  v57 = *(a1 + 48);
  v55[3] = *(a1 + 32);
  v55[4] = v57;
  sub_1BD2D4B24(a1, &v87);
  sub_1BE051704();
  v6[*(v75 + 36)] = 1;
  v58 = v83;
  sub_1BD0DE19C(v50, v83, &qword_1EBD40D00, &unk_1BE0C96C0);
  v59 = v77;
  v60 = *(v77 + 16);
  v61 = v85;
  v62 = v51;
  v63 = v78;
  v60(v85, v62, v78);
  v64 = v79;
  sub_1BD0DE19C(v52, v79, &qword_1EBD40CF0, &unk_1BE0E7670);
  v65 = v81;
  sub_1BD0DE19C(v6, v81, &qword_1EBD40CE8, &unk_1BE0C96A0);
  v66 = v58;
  v67 = v80;
  sub_1BD0DE19C(v66, v80, &qword_1EBD40D00, &unk_1BE0C96C0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E10, &unk_1BE0E76C0);
  v60((v67 + v68[12]), v61, v63);
  sub_1BD0DE19C(v64, v67 + v68[16], &qword_1EBD40CF0, &unk_1BE0E7670);
  sub_1BD0DE19C(v65, v67 + v68[20], &qword_1EBD40CE8, &unk_1BE0C96A0);
  sub_1BD0DE53C(v82, &qword_1EBD40CE8, &unk_1BE0C96A0);
  sub_1BD0DE53C(v52, &qword_1EBD40CF0, &unk_1BE0E7670);
  v69 = *(v59 + 8);
  v69(v84, v63);
  sub_1BD0DE53C(v86, &qword_1EBD40D00, &unk_1BE0C96C0);
  sub_1BD0DE53C(v65, &qword_1EBD40CE8, &unk_1BE0C96A0);
  sub_1BD0DE53C(v64, &qword_1EBD40CF0, &unk_1BE0E7670);
  v69(v85, v63);
  return sub_1BD0DE53C(v83, &qword_1EBD40D00, &unk_1BE0C96C0);
}

void sub_1BD2D26F0(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9D0, qword_1BE0E7680);
  v7 = MEMORY[0x1EEE9AC00](*(v6 - 8));
  v9 = &v26 - v8;
  v10 = *a1;
  v27 = v11;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(a2 + 8 * v10 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v12 = MEMORY[0x1BFB40900](v10, a2, v7);
LABEL_5:
  v13 = v12;
  v14 = [v12 pkSingleLineFormattedContactAddress];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1BE052434();
    v18 = v17;

    v28 = v16;
    v29 = v18;
    sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v21 = v20;
    LOBYTE(v18) = v22;
    v24 = v23;

    *v9 = v19;
    *(v9 + 1) = v21;
    v9[16] = v18 & 1;
    *(v9 + 3) = v24;
    *(v9 + 4) = v10;
    *(v9 + 20) = 256;
    (*(v27 + 32))(a3, v9, v6);
    (*(v27 + 56))(a3, 0, 1, v6);
  }

  else
  {

    v25 = *(v27 + 56);

    v25(a3, 1, 1, v6);
  }
}

uint64_t sub_1BD2D2918(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2[1] = *(a1 + 8);
  v4 = *(&v3 + 1);
  sub_1BD0DE19C(&v4, v2, &unk_1EBD4EF10, &qword_1BE0C2670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v2[0] = v3;
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v3, &qword_1EBD54350, &unk_1BE0B8D00);
}

id sub_1BD2D29DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD2D2B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a1;
  v46 = a3;
  v42 = a2;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v13;
  v15 = *MEMORY[0x1E69B80F0];
  v16 = *(v8 + 104);
  v16(&v40 - v13, v15, v7, v12);
  v44 = a4;
  v43 = a4;
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v40 = v20;
    v41 = v19;

    v21 = *(v8 + 8);
    v21(v14, v7);
    (v16)(v10, v15, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v22 = result;
      v23 = sub_1BE04B6F4();
      v25 = v24;

      v21(v10, v7);
      v26 = swift_allocObject();
      v27 = v46;
      v28 = v42;
      *(v26 + 2) = v45;
      *(v26 + 3) = v28;
      v29 = v44;
      *(v26 + 4) = v27;
      *(v26 + 5) = v29;
      *a5 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
      swift_storeEnumTagMultiPayload();
      v30 = type metadata accessor for AddContactSheet(0);
      *(a5 + v30[5]) = v29;
      *(a5 + v30[6]) = 0;
      v31 = (a5 + v30[7]);
      v32 = v40;
      *v31 = v41;
      v31[1] = v32;
      v33 = (a5 + v30[8]);
      *v33 = v23;
      v33[1] = v25;
      v34 = (a5 + v30[9]);
      *v34 = sub_1BD2D6220;
      v34[1] = v26;
      v35 = a5 + v30[10];
      v47 = 0;
      v48 = 0xE000000000000000;
      v36 = v43;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE051694();
      v37 = v50;
      *v35 = v49;
      *(v35 + 2) = v37;
      v38 = a5 + v30[11];
      LOBYTE(v47) = 0;
      result = sub_1BE051694();
      v39 = *(&v49 + 1);
      *v38 = v49;
      *(v38 + 1) = v39;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD2D2EB8(void *a1, void *a2, void (*a3)(id))
{
  if (a1)
  {
    KeyPath = swift_getKeyPath();
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    v7 = a1;
    sub_1BE04B594();
    KeyPath, v8, v9, v10, v11, v12, v13, v14;
    v15 = a2[5];
    v16 = a2[6];
    v17 = a2[8];
    v18 = a2[10];
    v19 = v15;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD40D1B4(v7, v19, v17);
    v18, v20, v21, v22, v23, v24, v25, v26;
    v17, v27, v28, v29, v30, v31, v32, v33;
    v16, v34, v35, v36, v37, v38, v39, v40;

    a3(v7);
  }
}

id sub_1BD2D2FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a1;
  v46 = a3;
  v42 = a2;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v13;
  v15 = *MEMORY[0x1E69B80F0];
  v16 = *(v8 + 104);
  v16(&v40 - v13, v15, v7, v12);
  v44 = a4;
  v43 = a4;
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v40 = v20;
    v41 = v19;

    v21 = *(v8 + 8);
    v21(v14, v7);
    (v16)(v10, v15, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v22 = result;
      v23 = sub_1BE04B6F4();
      v25 = v24;

      v21(v10, v7);
      v26 = swift_allocObject();
      v27 = v46;
      v28 = v42;
      *(v26 + 2) = v45;
      *(v26 + 3) = v28;
      v29 = v44;
      *(v26 + 4) = v27;
      *(v26 + 5) = v29;
      *a5 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
      swift_storeEnumTagMultiPayload();
      v30 = type metadata accessor for AddContactSheet(0);
      *(a5 + v30[5]) = v29;
      *(a5 + v30[6]) = 1;
      v31 = (a5 + v30[7]);
      v32 = v40;
      *v31 = v41;
      v31[1] = v32;
      v33 = (a5 + v30[8]);
      *v33 = v23;
      v33[1] = v25;
      v34 = (a5 + v30[9]);
      *v34 = sub_1BD2D61CC;
      v34[1] = v26;
      v35 = a5 + v30[10];
      v47 = 0;
      v48 = 0xE000000000000000;
      v36 = v43;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE051694();
      v37 = v50;
      *v35 = v49;
      *(v35 + 2) = v37;
      v38 = a5 + v30[11];
      LOBYTE(v47) = 0;
      result = sub_1BE051694();
      v39 = *(&v49 + 1);
      *v38 = v49;
      *(v38 + 1) = v39;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD2D3330(void *a1, void *a2, void (*a3)(id))
{
  if (a1)
  {
    KeyPath = swift_getKeyPath();
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    v7 = a1;
    sub_1BE04B594();
    KeyPath, v8, v9, v10, v11, v12, v13, v14;
    v15 = a2[5];
    v16 = a2[6];
    v17 = a2[8];
    v18 = a2[10];
    v19 = v15;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD40D604(v7, v19, v18);
    v18, v20, v21, v22, v23, v24, v25, v26;
    v17, v27, v28, v29, v30, v31, v32, v33;
    v16, v34, v35, v36, v37, v38, v39, v40;

    a3(v7);
  }
}

void sub_1BD2D3474(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v74 = a3;
  v75 = a4;
  v8 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x1E69B80F0], v11, v13);
  v16 = PKPassKitBundle();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v12 + 8))(v15, v11);
    KeyPath = swift_getKeyPath();
    v76[0] = a1;
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    v29 = *(a1 + 96);
    v30 = swift_allocObject();
    *(v30 + 2) = a1;
    *(v30 + 3) = a2;
    v31 = v75;
    *(v30 + 4) = v74;
    *(v30 + 5) = v31;
    *a5 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
    swift_storeEnumTagMultiPayload();
    v32 = type metadata accessor for AddPostalAddressSheet(0);
    v33 = v32[7];
    v34 = (a5 + v32[5]);
    *v34 = v18;
    v34[1] = v20;
    v35 = (a5 + v32[6]);
    *v35 = 0;
    v35[1] = 0;
    *(a5 + v33) = 1;
    *(a5 + v32[8]) = 0;
    v36 = (a5 + v32[10]);
    *v36 = sub_1BD2D622C;
    v36[1] = v30;
    v37 = objc_opt_self();
    v38 = v29;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v39 = [v37 currentLocale];
    sub_1BE04B064();

    type metadata accessor for AddressEditingModel(0);
    swift_allocObject();
    v40 = sub_1BD840B14(v10);
    if (v29)
    {
      v41 = *&v40[OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel];
      swift_getKeyPath();
      swift_getKeyPath();
      v76[0] = v29;
      v42 = v38;
      swift_retain_n();
      v43 = v42;
      sub_1BE04D8C4();
      sub_1BD20AA3C();
      v41, v44, v45, v46, v47, v48, v49, v50;
      v51 = swift_getKeyPath();
      v52 = swift_getKeyPath();
      v53 = sub_1BE04D8A4();
      v55 = *v54;
      *v54 = v29;

      v53(v76, 0);
      v51, v56, v57, v58, v59, v60, v61, v62;
      v52, v63, v64, v65, v66, v67, v68, v69;
    }

    v70 = (a5 + v32[9]);
    sub_1BD2D4ADC(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel, &unk_1BE0FCC94);
    v71 = sub_1BE04E954();
    v73 = v72;

    *v70 = v71;
    v70[1] = v73;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD2D38F0(void *a1, void *a2, uint64_t a3, void (*a4)(id))
{
  if (a1)
  {
    KeyPath = swift_getKeyPath();
    sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    v8 = a1;
    sub_1BE04B594();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
    v16 = a2[5];
    v17 = a2[6];
    v18 = a2[8];
    v19 = a2[10];
    v20 = v16;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD40CA78(v8, 1, v20, v17);
    v19, v21, v22, v23, v24, v25, v26, v27;
    v18, v28, v29, v30, v31, v32, v33, v34;
    v17, v35, v36, v37, v38, v39, v40, v41;

    a4(v8);
  }
}

id sub_1BD2D3A74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 96);
  *a2 = v12;

  return v12;
}

void sub_1BD2D3B2C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD40252C(v1);
}

id sub_1BD2D3B5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 32);
  *a2 = v12;

  return v12;
}

void sub_1BD2D3C14(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD40566C(v1);
}

uint64_t sub_1BD2D3C44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  *a2 = *(v3 + 40);
  return sub_1BE048C84();
}

void sub_1BD2D3D6C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v8 = *a1;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04D8B4(&v33);
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
  v25 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v8;
  sub_1BE048964();
  sub_1BE04D8C4();
  a7(v25);
  v25, v26, v27, v28, v29, v30, v31, v32;
}

uint64_t sub_1BD2D3EC8(uint64_t a1)
{
  v2 = sub_1BE04E784();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BE04F2F4();
}

void *sub_1BD2D3FE0(void *a1)
{
  v2 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  sub_1BE048964();
  v6 = [v5 currentLocale];
  sub_1BE04B064();

  type metadata accessor for AddressEditingModel(0);
  swift_allocObject();
  v7 = sub_1BD840B14(v4);
  KeyPath = swift_getKeyPath();
  v55[0] = a1;
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = a1[12];
  v17 = v16;
  a1, v18, v19, v20, v21, v22, v23, v24;
  if (v16)
  {
    v25 = *&v7[OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel];
    swift_getKeyPath();
    swift_getKeyPath();
    v55[0] = v16;
    v26 = v17;
    swift_retain_n();
    v27 = v26;
    sub_1BE04D8C4();
    sub_1BD20AA3C();
    v25, v28, v29, v30, v31, v32, v33, v34;
    v35 = swift_getKeyPath();
    v36 = swift_getKeyPath();
    v37 = sub_1BE04D8A4();
    v39 = *v38;
    *v38 = v16;

    v37(v55, 0);
    v35, v40, v41, v42, v43, v44, v45, v46;
    v36, v47, v48, v49, v50, v51, v52, v53;
  }

  return a1;
}

double sub_1BD2D4244@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1BE051694();
  v70 = v77;
  v71 = v78;
  *&v73 = 0;
  BYTE8(v73) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  sub_1BE051694();
  v69 = v77;
  v6 = v79;
  v87 = v78;
  KeyPath = swift_getKeyPath();
  v77 = a1;
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE048964();
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = a1[6];
  sub_1BE048964();
  a1, v16, v17, v18, v19, v20, v21, v22;
  v23 = swift_getKeyPath();
  v77 = v15;
  sub_1BD2D4ADC(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE048964();
  sub_1BE04B594();
  v23, v24, v25, v26, v27, v28, v29, v30;
  v31 = v15[4];
  v32 = v31;
  v15, v33, v34, v35, v36, v37, v38, v39;
  if (v31)
  {
    v68 = a2;
    v40 = swift_getKeyPath();
    v77 = v15;
    sub_1BE04B594();
    v40, v41, v42, v43, v44, v45, v46, v47;
    swift_beginAccess();
    v48 = v15[5];
    sub_1BE048C84();
    v49 = sub_1BD2242A4(v32, v48);
    LOBYTE(v40) = v50;

    v48, v51, v52, v53, v54, v55, v56, v57;
    if (v40)
    {
      a2 = v68;
      v49 = v69;
    }

    else
    {
      v79, v58, v59, v60, v61, v62, v63, v64;
      v6 = 0;
      v87 = 0;
      a2 = v68;
    }
  }

  else
  {
    v49 = v69;
  }

  *&v73 = a1;
  BYTE8(v73) = v70;
  *(&v73 + 9) = v88[0];
  HIDWORD(v73) = *(v88 + 3);
  *&v74 = v78;
  *(&v74 + 1) = a2;
  *&v75 = v15;
  *(&v75 + 1) = v49;
  LOBYTE(v76) = v87;
  *(&v76 + 1) = *v86;
  DWORD1(v76) = *&v86[3];
  *(&v76 + 1) = v6;
  v77 = a1;
  LOBYTE(v78) = v70;
  *(&v78 + 1) = v88[0];
  HIDWORD(v78) = *(v88 + 3);
  v79 = v71;
  v80 = a2;
  v81 = v15;
  v82 = v49;
  v83 = v87;
  *v84 = *v86;
  *&v84[3] = *&v86[3];
  v85 = v6;
  sub_1BD2D4B24(&v73, v72);
  sub_1BD2D4B5C(&v77);
  v65 = v74;
  *a3 = v73;
  a3[1] = v65;
  result = *&v75;
  v67 = v76;
  a3[2] = v75;
  a3[3] = v67;
  return result;
}

void sub_1BD2D4564(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE051694();
  v4 = v96;
  v5 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  sub_1BE051694();
  v6 = v96;
  v7 = v97;
  v8 = v98;
  KeyPath = swift_getKeyPath();
  v96 = a1;
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE048964();
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 40);
  sub_1BE048964();
  sub_1BE048964();
  a1, v20, v21, v22, v23, v24, v25, v26;
  v17, v27, v28, v29, v30, v31, v32, v33;

  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4(&v96);
  v34, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v18, v50, v51, v52, v53, v54, v55, v56;
  v57 = v96;
  if (v96)
  {
    v94 = v6;
    v95 = v7;
    v58 = v5;
    v59 = v4;
    v60 = swift_getKeyPath();
    v61 = swift_getKeyPath();
    sub_1BE04D8B4(&v96);
    v60, v62, v63, v64, v65, v66, v67, v68;
    v61, v69, v70, v71, v72, v73, v74, v75;
    v76 = v96;
    v77 = sub_1BD2267E8();
    v79 = v78;

    v76, v80, v81, v82, v83, v84, v85, v86;
    if (v79)
    {
      v4 = v59;
      v5 = v58;
      v7 = v95;
      v6 = v94;
    }

    else
    {
      v8, v87, v88, v89, v90, v91, v92, v93;
      v8 = 0;
      v4 = v59;
      v7 = 0;
      v5 = v58;
      v6 = v77;
    }
  }

  *a2 = a1;
  *(a2 + 8) = v18;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
}

void sub_1BD2D47D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE051694();
  v4 = v103;
  v5 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  sub_1BE051694();
  v102 = v103;
  v6 = v104;
  v7 = v105;
  KeyPath = swift_getKeyPath();
  v103 = a1;
  sub_1BD2D4ADC(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE048964();
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = *(a1 + 48);
  v17 = *(a1 + 64);
  v18 = *(a1 + 80);
  v19 = *(a1 + 40);
  sub_1BE048964();
  sub_1BE048964();
  swift_retain_n();
  a1, v20, v21, v22, v23, v24, v25, v26;
  v17, v27, v28, v29, v30, v31, v32, v33;
  v16, v34, v35, v36, v37, v38, v39, v40;

  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  sub_1BE04D8B4(&v103);
  v41, v43, v44, v45, v46, v47, v48, v49;
  v42, v50, v51, v52, v53, v54, v55, v56;
  v18, v57, v58, v59, v60, v61, v62, v63;
  v64 = v103;
  if (v103)
  {
    v101 = v6;
    v65 = v5;
    v66 = v4;
    v67 = swift_getKeyPath();
    v68 = swift_getKeyPath();
    sub_1BE04D8B4(&v103);
    v67, v69, v70, v71, v72, v73, v74, v75;
    v68, v76, v77, v78, v79, v80, v81, v82;
    v83 = v103;
    v84 = sub_1BD2267E8();
    v86 = v85;

    v83, v87, v88, v89, v90, v91, v92, v93;
    if ((v86 & 1) == 0)
    {
      v7, v94, v95, v96, v97, v98, v99, v100;
      v7 = 0;
      v4 = v66;
      v5 = v65;
      v6 = 0;
      goto LABEL_6;
    }

    v4 = v66;
    v5 = v65;
    v6 = v101;
  }

  v84 = v102;
LABEL_6:
  *a2 = a1;
  *(a2 + 8) = v18;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v84;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
}

uint64_t sub_1BD2D4A4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BC8, &qword_1BE0C9030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2D4ADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD2D4BC4(uint64_t a1)
{
  type metadata accessor for EmailAddresses(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WalletSettingsModel(319);
    if (v2 <= 0x3F)
    {
      sub_1BD10EE48();
      if (v3 <= 0x3F)
      {
        sub_1BD2D4E2C(319, &qword_1EBD40C58, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1BD2D4CC0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD2D4CC0(uint64_t a1)
{
  if (!qword_1EBD40C60)
  {
    sub_1BD0E5E8C(255, &qword_1EBD35DA8, 0x1E696AAE8);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD40C60);
    }
  }
}

void sub_1BD2D4D90(uint64_t a1)
{
  sub_1BD2D4E2C(319, &qword_1EBD40C80, type metadata accessor for WalletSettingsModel, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD2D4E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD2D4E90()
{
  result = qword_1EBD40C88;
  if (!qword_1EBD40C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C90, qword_1BE0C94E8);
    sub_1BD0DE4F4(&qword_1EBD40BB8, &qword_1EBD40BB0, &qword_1BE0C9020, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40C88);
  }

  return result;
}

unint64_t sub_1BD2D5018()
{
  result = qword_1EBD40CA8;
  if (!qword_1EBD40CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C98, &qword_1BE0C9680);
    sub_1BD0DE4F4(&qword_1EBD40CB0, &qword_1EBD40CB8, &qword_1BE0C9690, MEMORY[0x1E697D690]);
    sub_1BD2D4ADC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40CA8);
  }

  return result;
}

unint64_t sub_1BD2D5100()
{
  result = qword_1EBD40CC0;
  if (!qword_1EBD40CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40CC0);
  }

  return result;
}

void sub_1BD2D515C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  sub_1BE04D8B4(&v39);
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
  v32 = v39;
  v33 = *(v39 + 16);
  if (v33)
  {
    v34 = 0;
    while (v34 < v32[2])
    {
      v35 = v32[v34 + 4];
      sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
      v36 = v35;
      v37 = sub_1BE053074();

      if ((v37 & 1) == 0 && v33 != ++v34)
      {
        continue;
      }

      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v32, v25, v26, v27, v28, v29, v30, v31;
    v39 = a3;
    v40 = a4 & 1;
    v41 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
    sub_1BE0516B4();
  }
}

uint64_t sub_1BD2D52F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD2D5394()
{
  result = qword_1EBD40D10;
  if (!qword_1EBD40D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D08, &unk_1BE0E76B0);
    sub_1BD2D5420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40D10);
  }

  return result;
}

unint64_t sub_1BD2D5420()
{
  result = qword_1EBD40D18;
  if (!qword_1EBD40D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40D18);
  }

  return result;
}

uint64_t sub_1BD2D547C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2D54E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD2D5544(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1BD2CEF0C(a1, a2, v6);
}

uint64_t objectdestroy_118Tm()
{
  v1 = type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v2[1], v10, v11, v12, v13, v14, v15, v16;
  v2[3], v17, v18, v19, v20, v21, v22, v23;
  v2[5], v24, v25, v26, v27, v28, v29, v30;
  v31 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30, &qword_1BE0C9228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = sub_1BE04E784();
    (*(*(v39 - 8) + 8))(v2 + v31, v39);
  }

  else
  {
    *(v2 + v31), v32, v33, v34, v35, v36, v37, v38;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD2D5748(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsPaymentDefaultsView.HideMyEmailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD2D57F4()
{
  result = qword_1EBD40DB0;
  if (!qword_1EBD40DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DA0, &qword_1BE0C9798);
    sub_1BD2D5018();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40DB0);
  }

  return result;
}

unint64_t sub_1BD2D58AC()
{
  result = qword_1EBD40DB8;
  if (!qword_1EBD40DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40DB8);
  }

  return result;
}

uint64_t objectdestroyTm_22(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[8], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

unint64_t sub_1BD2D5A00()
{
  result = qword_1EBD40DD0;
  if (!qword_1EBD40DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40DC0, &qword_1BE0C97E0);
    sub_1BD0DE4F4(&qword_1EBD40DD8, &qword_1EBD40DE0, &unk_1BE0C97F0, MEMORY[0x1E697D690]);
    sub_1BD2D4ADC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40DD0);
  }

  return result;
}

unint64_t sub_1BD2D5AE8()
{
  result = qword_1EBD40DE8;
  if (!qword_1EBD40DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40DE8);
  }

  return result;
}

unint64_t sub_1BD2D5B78()
{
  result = qword_1EBD40E08;
  if (!qword_1EBD40E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D00, &unk_1BE0C96C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    sub_1BD2D52F8(&qword_1EBD40CD8, MEMORY[0x1E69E6540], MEMORY[0x1E69E7C78]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E08);
  }

  return result;
}

uint64_t objectdestroy_157Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[6], v23, v24, v25, v26, v27, v28, v29;
  v8[9], v30, v31, v32, v33, v34, v35, v36;

  return swift_deallocObject();
}

unint64_t sub_1BD2D5CD8()
{
  result = qword_1EBD40E30;
  if (!qword_1EBD40E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E20, &qword_1BE0C9840);
    sub_1BD2D5D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E30);
  }

  return result;
}

unint64_t sub_1BD2D5D5C()
{
  result = qword_1EBD40E38;
  if (!qword_1EBD40E38)
  {
    sub_1BD0E5E8C(255, &qword_1EBD456C0, 0x1E69B91E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E38);
  }

  return result;
}

unint64_t sub_1BD2D5DC4()
{
  result = qword_1EBD40E40;
  if (!qword_1EBD40E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E28, &qword_1BE0C9848);
    sub_1BD2D5E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E40);
  }

  return result;
}

unint64_t sub_1BD2D5E48()
{
  result = qword_1EBD40E48;
  if (!qword_1EBD40E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E50, &qword_1BE0C9850);
    sub_1BD2D5ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E48);
  }

  return result;
}

unint64_t sub_1BD2D5ECC()
{
  result = qword_1EBD40E58;
  if (!qword_1EBD40E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E60, qword_1BE0C9858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40E20, &qword_1BE0C9840);
    sub_1BD2D5CD8();
    swift_getOpaqueTypeConformance2();
    sub_1BD2D4ADC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E58);
  }

  return result;
}

unint64_t sub_1BD2D5FE4()
{
  result = qword_1EBD40E80;
  if (!qword_1EBD40E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40E80);
  }

  return result;
}

unint64_t sub_1BD2D6090()
{
  result = qword_1EBD40EA0;
  if (!qword_1EBD40EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40EA8, &qword_1BE0C9938);
    sub_1BD0DE4F4(&qword_1EBD40E68, &qword_1EBD40E18, &qword_1BE0C9810, MEMORY[0x1E697D690]);
    sub_1BD2D4ADC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40EA0);
  }

  return result;
}

uint64_t objectdestroy_202Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t type metadata accessor for AccountBalanceInterestView(uint64_t a1)
{
  result = qword_1EBD40ED0;
  if (!qword_1EBD40ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2D62C0(uint64_t a1)
{
  sub_1BD2D63D4(319);
  if (v1 <= 0x3F)
  {
    sub_1BD2D6468(319);
    if (v2 <= 0x3F)
    {
      sub_1BD2D64FC(319, &qword_1EBD40EF8, type metadata accessor for AccountBalance, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD2D64FC(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD2D63D4(uint64_t a1)
{
  if (!qword_1EBD40EE0)
  {
    type metadata accessor for AccountModel(255);
    sub_1BD2D9A6C(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD40EE0);
    }
  }
}

void sub_1BD2D6468(uint64_t a1)
{
  if (!qword_1EBD40EE8)
  {
    type metadata accessor for AccountDailyCash(255);
    sub_1BD2D9A6C(&qword_1EBD40EF0, type metadata accessor for AccountDailyCash, &unk_1BE0E36A0);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD40EE8);
    }
  }
}

void sub_1BD2D64FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD2D657C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v25[1] = a1;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F00, &qword_1BE0C9AE0);
  MEMORY[0x1EEE9AC00](v25[0]);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F08, &qword_1BE0C9AE8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F10, &qword_1BE0C9AF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = sub_1BE04EB24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AccountBalanceInterestView(0);
  sub_1BD70A2A0(v14);
  v15 = sub_1BE04EB14();
  (*(v12 + 8))(v14, v11);
  v16 = sub_1BE04F7C4();
  if (v15)
  {
    *v10 = v16;
    *(v10 + 1) = 0;
    v10[16] = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F40, &qword_1BE0C9B10);
    sub_1BD2D690C(v2, &v10[*(v17 + 44)]);
    KeyPath = swift_getKeyPath();
    v19 = &v10[*(v8 + 36)];
    *v19 = KeyPath;
    v19[1] = 0x3FE0000000000000;
    v20 = &qword_1EBD40F10;
    v21 = &qword_1BE0C9AF0;
    sub_1BD0DE19C(v10, v7, &qword_1EBD40F10, &qword_1BE0C9AF0);
    swift_storeEnumTagMultiPayload();
    sub_1BD2D98D4();
    sub_1BD0DE4F4(&qword_1EBD40F38, &qword_1EBD40F00, &qword_1BE0C9AE0, MEMORY[0x1E6981870]);
    sub_1BE04F9A4();
    v22 = v10;
  }

  else
  {
    *v4 = v16;
    *(v4 + 1) = 0;
    v4[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F18, &qword_1BE0C9AF8);
    sub_1BD2D8244(v2, &v4[*(v23 + 44)]);
    v20 = &qword_1EBD40F00;
    v21 = &qword_1BE0C9AE0;
    sub_1BD0DE19C(v4, v7, &qword_1EBD40F00, &qword_1BE0C9AE0);
    swift_storeEnumTagMultiPayload();
    sub_1BD2D98D4();
    sub_1BD0DE4F4(&qword_1EBD40F38, &qword_1EBD40F00, &qword_1BE0C9AE0, MEMORY[0x1E6981870]);
    sub_1BE04F9A4();
    v22 = v4;
  }

  return sub_1BD0DE53C(v22, v20, v21);
}

id sub_1BD2D690C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v434 = a1;
  v431 = a2;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F48, &qword_1BE0C9B48);
  MEMORY[0x1EEE9AC00](v426);
  v428 = v409 - v2;
  v421 = sub_1BE04BD74();
  v420 = *(v421 - 8);
  MEMORY[0x1EEE9AC00](v421);
  v419 = v409 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F50, &qword_1BE0C9B50);
  MEMORY[0x1EEE9AC00](v427);
  v412 = v409 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F58, &qword_1BE0C9B58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v430 = v409 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v429 = v409 - v8;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F60, &qword_1BE0C9B60);
  MEMORY[0x1EEE9AC00](v418);
  v413 = (v409 - v9);
  v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F68, &unk_1BE0C9B68);
  MEMORY[0x1EEE9AC00](v414);
  v416 = v409 - v10;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v415);
  v411 = v409 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v417 = v409 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v432 = v409 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F70, &unk_1BE0C9B78);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v425 = v409 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v435 = v409 - v19;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v422);
  v424 = v409 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v409 - v22;
  sub_1BD2D7AE0();
  v436 = v24;
  v437 = v25;
  v433 = sub_1BD0DDEBC();
  v26 = sub_1BE0506C4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_1BE0502A4();
  v34 = sub_1BE0505F4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v33, v35, v37, v39, v41, v42, v43, v44;
  sub_1BD0DDF10(v26, v28, (v30 & 1), v45, v46, v47, v48, v49);
  v32, v50, v51, v52, v53, v54, v55, v56;
  v57 = sub_1BE051494();
  v58 = sub_1BE050564();
  v60 = v59;
  LOBYTE(v26) = v61;
  v63 = v62;
  v57, v59, v61, v62, v64, v65, v66, v67;
  v68 = (v38 & 1);
  v69 = v434;
  sub_1BD0DDF10(v34, v36, v68, v70, v71, v72, v73, v74);
  v40, v75, v76, v77, v78, v79, v80, v81;
  v436 = v58;
  v437 = v60;
  v438 = v26 & 1;
  v439 = v63;
  sub_1BE052434();
  v83 = v82;
  v423 = v23;
  sub_1BE050DE4();
  v83, v84, v85, v86, v87, v88, v89, v90;
  sub_1BD0DDF10(v58, v60, (v26 & 1), v91, v92, v93, v94, v95);
  v63, v96, v97, v98, v99, v100, v101, v102;
  v103 = *(type metadata accessor for AccountBalanceInterestView(0) + 24);
  v104 = v432;
  sub_1BD0DE19C(v69 + v103, v432, &qword_1EBD40EC8, &unk_1BE0C9A60);
  v105 = type metadata accessor for AccountBalance(0);
  v106 = *(v105 - 8);
  v107 = *(v106 + 48);
  v108 = v106 + 48;
  LODWORD(v57) = v107(v104, 1, v105);
  sub_1BD0DE53C(v104, &qword_1EBD40EC8, &unk_1BE0C9A60);
  if (v57 == 1)
  {
    v109 = sub_1BE04F504();
    v110 = v413;
    *v413 = v109;
    *(v110 + 8) = 0;
    *(v110 + 16) = 1;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F78, &qword_1BE0C9B88);
    sub_1BD2D93B8((v110 + *(v111 + 44)));
    sub_1BD0DE19C(v110, v416, &qword_1EBD40F60, &qword_1BE0C9B60);
    swift_storeEnumTagMultiPayload();
    sub_1BD2D99B8(&qword_1EBD3C0F8, &qword_1EBD3C0E8, &qword_1BE0C4010, sub_1BD1B9C50);
    sub_1BD0DE4F4(&qword_1EBD40F80, &qword_1EBD40F60, &qword_1BE0C9B60, MEMORY[0x1E69817F8]);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v110, &qword_1EBD40F60, &qword_1BE0C9B60);
    goto LABEL_5;
  }

  v409[1] = v108;
  v410 = v107;
  v413 = v105;
  v432 = v103;
  sub_1BD2D7DA8();
  v436 = v112;
  v437 = v113;
  v114 = sub_1BE0506C4();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0);
  if (result)
  {
    v122 = sub_1BE050484();
    v123 = sub_1BE0505F4();
    v125 = v124;
    v127 = v126;
    v129 = v128;
    v122, v124, v126, v128, v130, v131, v132, v133;
    sub_1BD0DDF10(v114, v116, (v118 & 1), v134, v135, v136, v137, v138);
    v120, v139, v140, v141, v142, v143, v144, v145;
    sub_1BE050364();
    v146 = sub_1BE050544();
    v148 = v147;
    v150 = v149;
    v152 = v151;
    sub_1BD0DDF10(v123, v125, (v127 & 1), v151, v153, v154, v155, v156);
    v129, v157, v158, v159, v160, v161, v162, v163;
    v164 = sub_1BE051224();
    v165 = sub_1BE050564();
    v167 = v166;
    v169 = v168;
    v171 = v170;
    v164, v166, v168, v170, v172, v173, v174, v175;
    sub_1BD0DDF10(v146, v148, (v150 & 1), v176, v177, v178, v179, v180);
    v152, v181, v182, v183, v184, v185, v186, v187;
    KeyPath = swift_getKeyPath();
    v436 = v165;
    v437 = v167;
    v189 = (v169 & 1);
    v438 = v169 & 1;
    v439 = v171;
    v440 = *&KeyPath;
    v441 = 1;
    v442 = 0;
    sub_1BE052434();
    v191 = v190;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
    sub_1BD1B9C50();
    v192 = v411;
    sub_1BE050DE4();
    v191, v193, v194, v195, v196, v197, v198, v199;
    sub_1BD0DDF10(v165, v167, v189, v200, v201, v202, v203, v204);
    KeyPath, v205, v206, v207, v208, v209, v210, v211;
    v171, v212, v213, v214, v215, v216, v217, v218;
    sub_1BD0DE19C(v192, v416, &qword_1EBD3C0E8, &qword_1BE0C4010);
    swift_storeEnumTagMultiPayload();
    sub_1BD2D99B8(&qword_1EBD3C0F8, &qword_1EBD3C0E8, &qword_1BE0C4010, sub_1BD1B9C50);
    sub_1BD0DE4F4(&qword_1EBD40F80, &qword_1EBD40F60, &qword_1BE0C9B60, MEMORY[0x1E69817F8]);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v192, &qword_1EBD3C0E8, &qword_1BE0C4010);
    v69 = v434;
    v103 = v432;
    v105 = v413;
    v107 = v410;
LABEL_5:
    v219 = v417;
    sub_1BD0DE19C(v69 + v103, v417, &qword_1EBD40EC8, &unk_1BE0C9A60);
    v220 = v107(v219, 1, v105);
    sub_1BD0DE53C(v219, &qword_1EBD40EC8, &unk_1BE0C9A60);
    if (v220 == 1)
    {
      v436 = sub_1BD2D8038();
      v437 = v221;
      v222 = sub_1BE0506C4();
      v224 = v223;
      v226 = v225;
      v228 = v227;
      v229 = sub_1BE050454();
      v230 = sub_1BE0505F4();
      v232 = v231;
      v234 = v233;
      v236 = v235;
      v229, v231, v233, v235, v237, v238, v239, v240;
      sub_1BD0DDF10(v222, v224, (v226 & 1), v241, v242, v243, v244, v245);
      v228, v246, v247, v248, v249, v250, v251, v252;
      v436 = v230;
      v437 = v232;
      v438 = v234 & 1;
      v439 = v236;
      sub_1BE052434();
      v254 = v253;
      v255 = v424;
      sub_1BE050DE4();
      v254, v256, v257, v258, v259, v260, v261, v262;
      sub_1BD0DDF10(v230, v232, (v234 & 1), v263, v264, v265, v266, v267);
      v236, v268, v269, v270, v271, v272, v273, v274;
      sub_1BD0DE19C(v255, v428, &qword_1EBD452C0, &qword_1BE0B7620);
      swift_storeEnumTagMultiPayload();
      sub_1BD2D99B8(&qword_1EBD40F88, &qword_1EBD40F50, &qword_1BE0C9B50, sub_1BD2D9AB4);
      sub_1BD1103C8();
      v275 = v429;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v255, &qword_1EBD452C0, &qword_1BE0B7620);
LABEL_21:
      v402 = v423;
      sub_1BD0DE19C(v423, v255, &qword_1EBD452C0, &qword_1BE0B7620);
      v403 = v435;
      v404 = v425;
      sub_1BD0DE19C(v435, v425, &qword_1EBD40F70, &unk_1BE0C9B78);
      v405 = v430;
      sub_1BD0DE19C(v275, v430, &qword_1EBD40F58, &qword_1BE0C9B58);
      v406 = v431;
      sub_1BD0DE19C(v255, v431, &qword_1EBD452C0, &qword_1BE0B7620);
      v407 = v275;
      v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FA0, &unk_1BE0C9B98);
      sub_1BD0DE19C(v404, v406 + *(v408 + 48), &qword_1EBD40F70, &unk_1BE0C9B78);
      sub_1BD0DE19C(v405, v406 + *(v408 + 64), &qword_1EBD40F58, &qword_1BE0C9B58);
      sub_1BD0DE53C(v407, &qword_1EBD40F58, &qword_1BE0C9B58);
      sub_1BD0DE53C(v403, &qword_1EBD40F70, &unk_1BE0C9B78);
      sub_1BD0DE53C(v402, &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE53C(v405, &qword_1EBD40F58, &qword_1BE0C9B58);
      sub_1BD0DE53C(v404, &qword_1EBD40F70, &unk_1BE0C9B78);
      return sub_1BD0DE53C(v255, &qword_1EBD452C0, &qword_1BE0B7620);
    }

    (*(v420 + 104))(v419, *MEMORY[0x1E69B80E0], v421);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v276 = swift_allocObject();
    *(v276 + 16) = xmmword_1BE0B69E0;
    v277 = swift_getKeyPath();
    v278 = swift_getKeyPath();
    sub_1BE04D8B4(&v436);
    v277, v279, v280, v281, v282, v283, v284, v285;
    v278, v286, v287, v288, v289, v290, v291, v292;
    v293 = v436;
    if (v436)
    {
      v294 = [v436 minimalFormattedStringValue];

      if (v294)
      {
        v293 = sub_1BE052434();
        v296 = v295;

LABEL_12:
        *(v276 + 56) = MEMORY[0x1E69E6158];
        *(v276 + 64) = sub_1BD110550();
        if (v296)
        {
          v297 = v293;
        }

        else
        {
          v297 = 0;
        }

        v298 = 0xE000000000000000;
        if (v296)
        {
          v298 = v296;
        }

        *(v276 + 32) = v297;
        *(v276 + 40) = v298;
        v299 = v419;
        v300 = sub_1BE04B714();
        v302 = v301;
        v276, v301, v303, v304, v305, v306, v307, v308;
        (*(v420 + 8))(v299, v421);
        v436 = v300;
        v437 = v302;
        v309 = sub_1BE0506C4();
        v311 = v310;
        LOBYTE(v302) = v312;
        v314 = v313;
        v315 = sub_1BE050454();
        v316 = sub_1BE0505F4();
        v318 = v317;
        v320 = v319;
        v322 = v321;
        v315, v317, v319, v321, v323, v324, v325, v326;
        sub_1BD0DDF10(v309, v311, (v302 & 1), v327, v328, v329, v330, v331);
        v314, v332, v333, v334, v335, v336, v337, v338;
        v339 = sub_1BE051494();
        v340 = sub_1BE050564();
        v342 = v341;
        v344 = v343;
        v346 = v345;
        v339, v341, v343, v345, v347, v348, v349, v350;
        sub_1BD0DDF10(v316, v318, (v320 & 1), v351, v352, v353, v354, v355);
        v322, v356, v357, v358, v359, v360, v361, v362;
        v363 = swift_getKeyPath();
        v364 = swift_getKeyPath();
        sub_1BE04D8B4(&v436);
        v363, v365, v366, v367, v368, v369, v370, v371;
        v364, v372, v373, v374, v375, v376, v377, v378;
        if (v436)
        {

          v379 = 1.0;
        }

        else
        {
          v379 = 0.0;
        }

        v436 = v340;
        v437 = v342;
        v438 = v344 & 1;
        v439 = v346;
        v440 = v379;
        sub_1BE052434();
        v381 = v380;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F98, &qword_1BE0C9B90);
        sub_1BD2D9AB4();
        v382 = v412;
        sub_1BE050DE4();
        v381, v383, v384, v385, v386, v387, v388, v389;
        sub_1BD0DDF10(v340, v342, (v344 & 1), v390, v391, v392, v393, v394);
        v346, v395, v396, v397, v398, v399, v400, v401;
        sub_1BD0DE19C(v382, v428, &qword_1EBD40F50, &qword_1BE0C9B50);
        swift_storeEnumTagMultiPayload();
        sub_1BD2D99B8(&qword_1EBD40F88, &qword_1EBD40F50, &qword_1BE0C9B50, sub_1BD2D9AB4);
        sub_1BD1103C8();
        v275 = v429;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v382, &qword_1EBD40F50, &qword_1BE0C9B50);
        v255 = v424;
        goto LABEL_21;
      }

      v293 = 0;
    }

    v296 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1BD2D7AE0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for AccountBalance(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccountBalanceInterestView(0);
  sub_1BD0DE19C(v0 + *(v12 + 24), v7, &qword_1EBD40EC8, &unk_1BE0C9A60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BD0DE53C(v7, &qword_1EBD40EC8, &unk_1BE0C9A60);
    (*(v2 + 104))(v4, *MEMORY[0x1E69B80E0], v1);
    v13 = PKPassKitBundle();
    if (v13)
    {
      v14 = v13;
      sub_1BE04B6F4();

      (*(v2 + 8))(v4, v1);
      return;
    }

    __break(1u);
  }

  else
  {
    sub_1BD0E5DC0(v7, v11);
    v15 = sub_1BE04AE64();
    v16 = PKMediumDateString();

    if (v16)
    {
      sub_1BE052434();

      sub_1BD0E5E24(v11);
      return;
    }
  }

  __break(1u);
}

void sub_1BD2D7DA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v30 - v2;
  v4 = type metadata accessor for AccountBalance(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(&v31);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  v24 = v31;
  if (v31)
  {
    v25 = [v31 currencyCode];

    if (v25)
    {
      v26 = type metadata accessor for AccountBalanceInterestView(0);
      sub_1BD0DE19C(v0 + *(v26 + 24), v3, &qword_1EBD40EC8, &unk_1BE0C9A60);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {

        sub_1BD0DE53C(v3, &qword_1EBD40EC8, &unk_1BE0C9A60);
      }

      else
      {
        sub_1BD0E5DC0(v3, v7);
        v27 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDouble_];
        v28 = PKCurrencyAmountMake();

        if (v28)
        {
          v29 = [v28 formattedStringValue];

          if (v29)
          {
            sub_1BE052434();

            sub_1BD0E5E24(v7);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1BD2D8038()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(&v36);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  v20 = v36;
  if (!v36)
  {
    return 0;
  }

  v21 = [v36 formattedAPY];

  if (!v21)
  {
    return 0;
  }

  v22 = sub_1BE052434();
  v24 = v23;

  (*(v1 + 104))(v3, *MEMORY[0x1E69B80E0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BE0B69E0;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1BD110550();
  *(v25 + 32) = v22;
  *(v25 + 40) = v24;
  v26 = sub_1BE04B714();
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v1 + 8))(v3, v0);
  return v26;
}

id sub_1BD2D8244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v280 = a2;
  v282 = sub_1BE04BD74();
  v274 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v273 = &v266 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F50, &qword_1BE0C9B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v279 = &v266 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v278 = &v266 - v7;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F60, &qword_1BE0C9B60);
  MEMORY[0x1EEE9AC00](v272);
  v9 = &v266 - v8;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FD0, &qword_1BE0C9D68);
  MEMORY[0x1EEE9AC00](v271);
  v11 = &v266 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v12);
  v270 = &v266 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v266 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FD8, &qword_1BE0C9D70);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v277 = &v266 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v266 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FE0, &qword_1BE0C9D78);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v276 = &v266 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v266 - v25;
  *v26 = sub_1BE04F504();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FE8, &qword_1BE0C9D80) + 44);
  v275 = v26;
  v28 = &v26[v27];
  v29 = a1;
  sub_1BD2D8E34(a1, v28);
  v30 = type metadata accessor for AccountBalanceInterestView(0);
  sub_1BD0DE19C(a1 + *(v30 + 24), v16, &qword_1EBD40EC8, &unk_1BE0C9A60);
  v31 = type metadata accessor for AccountBalance(0);
  LODWORD(a1) = (*(*(v31 - 8) + 48))(v16, 1, v31);
  sub_1BD0DE53C(v16, &qword_1EBD40EC8, &unk_1BE0C9A60);
  v281 = v21;
  if (a1 == 1)
  {
    *v9 = sub_1BE04F504();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F78, &qword_1BE0C9B88);
    sub_1BD2D93B8(&v9[*(v32 + 44)]);
    sub_1BD0DE19C(v9, v11, &qword_1EBD40F60, &qword_1BE0C9B60);
    swift_storeEnumTagMultiPayload();
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD40F80, &qword_1EBD40F60, &qword_1BE0C9B60, MEMORY[0x1E69817F8]);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v9, &qword_1EBD40F60, &qword_1BE0C9B60);
  }

  else
  {
    v267 = v11;
    v268 = v12;
    v269 = v29;
    sub_1BD2D7DA8();
    v283 = v33;
    v284 = v34;
    sub_1BD0DDEBC();
    v35 = sub_1BE0506C4();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v43 = sub_1BE050484();
    v44 = sub_1BE0505F4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v43, v45, v47, v49, v51, v52, v53, v54;
    sub_1BD0DDF10(v35, v37, (v39 & 1), v55, v56, v57, v58, v59);
    v41, v60, v61, v62, v63, v64, v65, v66;
    sub_1BE050364();
    v67 = sub_1BE050544();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    sub_1BD0DDF10(v44, v46, (v48 & 1), v72, v74, v75, v76, v77);
    v50, v78, v79, v80, v81, v82, v83, v84;
    v85 = sub_1BE051224();
    v86 = sub_1BE050564();
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v85, v87, v89, v91, v93, v94, v95, v96;
    sub_1BD0DDF10(v67, v69, (v71 & 1), v97, v98, v99, v100, v101);
    v73, v102, v103, v104, v105, v106, v107, v108;
    v283 = v86;
    v284 = v88;
    v285 = v90 & 1;
    v286 = v92;
    sub_1BE052434();
    v110 = v109;
    v111 = v270;
    sub_1BE050DE4();
    v110, v112, v113, v114, v115, v116, v117, v118;
    sub_1BD0DDF10(v86, v88, (v90 & 1), v119, v120, v121, v122, v123);
    v92, v124, v125, v126, v127, v128, v129, v130;
    sub_1BD0DE19C(v111, v267, &qword_1EBD452C0, &qword_1BE0B7620);
    swift_storeEnumTagMultiPayload();
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD40F80, &qword_1EBD40F60, &qword_1BE0C9B60, MEMORY[0x1E69817F8]);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v111, &qword_1EBD452C0, &qword_1BE0B7620);
  }

  v131 = MEMORY[0x1E69E6158];
  v133 = v273;
  v132 = v274;
  (*(v274 + 104))(v273, *MEMORY[0x1E69B80E0], v282);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_1BE0B69E0;
  KeyPath = swift_getKeyPath();
  v136 = swift_getKeyPath();
  sub_1BE04D8B4(&v283);
  KeyPath, v137, v138, v139, v140, v141, v142, v143;
  v136, v144, v145, v146, v147, v148, v149, v150;
  v151 = v283;
  if (!v283)
  {
    goto LABEL_9;
  }

  v152 = [v283 minimalFormattedStringValue];

  if (!v152)
  {
    v151 = 0;
LABEL_9:
    v154 = 0;
    goto LABEL_10;
  }

  v151 = sub_1BE052434();
  v154 = v153;

LABEL_10:
  *(v134 + 56) = v131;
  *(v134 + 64) = sub_1BD110550();
  if (v154)
  {
    v155 = v151;
  }

  else
  {
    v155 = 0;
  }

  v156 = 0xE000000000000000;
  if (v154)
  {
    v156 = v154;
  }

  *(v134 + 32) = v155;
  *(v134 + 40) = v156;
  v157 = sub_1BE04B714();
  v159 = v158;
  v134, v158, v160, v161, v162, v163, v164, v165;
  (*(v132 + 8))(v133, v282);
  v283 = v157;
  v284 = v159;
  sub_1BD0DDEBC();
  v166 = sub_1BE0506C4();
  v168 = v167;
  LOBYTE(v157) = v169;
  v171 = v170;
  v172 = sub_1BE050454();
  v173 = sub_1BE0505F4();
  v175 = v174;
  v177 = v176;
  v179 = v178;
  v172, v174, v176, v178, v180, v181, v182, v183;
  sub_1BD0DDF10(v166, v168, (v157 & 1), v184, v185, v186, v187, v188);
  v171, v189, v190, v191, v192, v193, v194, v195;
  v196 = sub_1BE051494();
  v197 = sub_1BE050564();
  v199 = v198;
  v201 = v200;
  v203 = v202;
  v196, v198, v200, v202, v204, v205, v206, v207;
  sub_1BD0DDF10(v173, v175, (v177 & 1), v208, v209, v210, v211, v212);
  v179, v213, v214, v215, v216, v217, v218, v219;
  v220 = swift_getKeyPath();
  v221 = swift_getKeyPath();
  sub_1BE04D8B4(&v283);
  v220, v222, v223, v224, v225, v226, v227, v228;
  v221, v229, v230, v231, v232, v233, v234, v235;
  if (v283)
  {

    v236 = 1.0;
  }

  else
  {
    v236 = 0.0;
  }

  v283 = v197;
  v284 = v199;
  v285 = v201 & 1;
  v286 = v203;
  v287 = v236;
  sub_1BE052434();
  v238 = v237;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40F98, &qword_1BE0C9B90);
  sub_1BD2D9AB4();
  v239 = v278;
  sub_1BE050DE4();
  v238, v240, v241, v242, v243, v244, v245, v246;
  sub_1BD0DDF10(v197, v199, (v201 & 1), v247, v248, v249, v250, v251);
  v203, v252, v253, v254, v255, v256, v257, v258;
  v260 = v275;
  v259 = v276;
  sub_1BD0DE19C(v275, v276, &qword_1EBD40FE0, &qword_1BE0C9D78);
  v261 = v281;
  v262 = v277;
  sub_1BD0DE19C(v281, v277, &qword_1EBD40FD8, &qword_1BE0C9D70);
  v263 = v279;
  sub_1BD0DE19C(v239, v279, &qword_1EBD40F50, &qword_1BE0C9B50);
  v264 = v280;
  sub_1BD0DE19C(v259, v280, &qword_1EBD40FE0, &qword_1BE0C9D78);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FF0, &unk_1BE0C9D88);
  sub_1BD0DE19C(v262, v264 + *(v265 + 48), &qword_1EBD40FD8, &qword_1BE0C9D70);
  sub_1BD0DE19C(v263, v264 + *(v265 + 64), &qword_1EBD40F50, &qword_1BE0C9B50);
  sub_1BD0DE53C(v239, &qword_1EBD40F50, &qword_1BE0C9B50);
  sub_1BD0DE53C(v261, &qword_1EBD40FD8, &qword_1BE0C9D70);
  sub_1BD0DE53C(v260, &qword_1EBD40FE0, &qword_1BE0C9D78);
  sub_1BD0DE53C(v263, &qword_1EBD40F50, &qword_1BE0C9B50);
  sub_1BD0DE53C(v262, &qword_1EBD40FD8, &qword_1BE0C9D70);
  return sub_1BD0DE53C(v259, &qword_1EBD40FE0, &qword_1BE0C9D78);
}

uint64_t sub_1BD2D8E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a1;
  v164 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8, &unk_1BE0C9A60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v160 = &v158 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v163 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v166 = &v158 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v161 = *(v8 - 8);
  v162 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v165 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v158 - v11;
  sub_1BD2D7AE0();
  v167 = v13;
  v168 = v14;
  v158 = sub_1BD0DDEBC();
  v15 = sub_1BE0506C4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_1BE0502A4();
  v23 = sub_1BE0505F4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v22, v24, v26, v28, v30, v31, v32, v33;
  sub_1BD0DDF10(v15, v17, (v19 & 1), v34, v35, v36, v37, v38);
  v21, v39, v40, v41, v42, v43, v44, v45;
  v46 = sub_1BE051494();
  v47 = sub_1BE050564();
  v49 = v48;
  LOBYTE(v15) = v50;
  v52 = v51;
  v46, v48, v50, v51, v53, v54, v55, v56;
  sub_1BD0DDF10(v23, v25, (v27 & 1), v57, v58, v59, v60, v61);
  v29, v62, v63, v64, v65, v66, v67, v68;
  v167 = v47;
  v168 = v49;
  v69 = (v15 & 1);
  v169 = v15 & 1;
  v170 = v52;
  sub_1BE052434();
  v71 = v70;
  v72 = v12;
  sub_1BE050DE4();
  v73 = v159;
  v71, v74, v75, v76, v77, v78, v79, v80;
  sub_1BD0DDF10(v47, v49, v69, v81, v82, v83, v84, v85);
  v52, v86, v87, v88, v89, v90, v91, v92;
  v93 = type metadata accessor for AccountBalanceInterestView(0);
  v94 = v160;
  sub_1BD0DE19C(v73 + *(v93 + 24), v160, &qword_1EBD40EC8, &unk_1BE0C9A60);
  v95 = type metadata accessor for AccountBalance(0);
  LODWORD(v69) = (*(*(v95 - 8) + 48))(v94, 1, v95);
  sub_1BD0DE53C(v94, &qword_1EBD40EC8, &unk_1BE0C9A60);
  v96 = 1;
  if (v69 == 1)
  {
    v167 = sub_1BD2D8038();
    v168 = v97;
    v98 = sub_1BE0506C4();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v105 = sub_1BE0502A4();
    v106 = sub_1BE0505F4();
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v105, v107, v109, v111, v113, v114, v115, v116;
    sub_1BD0DDF10(v98, v100, (v102 & 1), v117, v118, v119, v120, v121);
    v104, v122, v123, v124, v125, v126, v127, v128;
    v167 = v106;
    v168 = v108;
    v169 = v110 & 1;
    v170 = v112;
    sub_1BE052434();
    v130 = v129;
    v131 = v165;
    sub_1BE050DE4();
    v130, v132, v133, v134, v135, v136, v137, v138;
    sub_1BD0DDF10(v106, v108, (v110 & 1), v139, v140, v141, v142, v143);
    v112, v144, v145, v146, v147, v148, v149, v150;
    sub_1BD0DE204(v131, v166, &qword_1EBD452C0, &qword_1BE0B7620);
    v96 = 0;
  }

  v151 = v166;
  (*(v161 + 56))(v166, v96, 1, v162);
  v152 = v165;
  sub_1BD0DE19C(v72, v165, &qword_1EBD452C0, &qword_1BE0B7620);
  v153 = v163;
  sub_1BD0DE19C(v151, v163, &unk_1EBD5BB60, &qword_1BE0C4580);
  v154 = v164;
  sub_1BD0DE19C(v152, v164, &qword_1EBD452C0, &qword_1BE0B7620);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FF8, &qword_1BE0C9D98);
  v156 = v154 + *(v155 + 48);
  *v156 = 0;
  *(v156 + 8) = 1;
  sub_1BD0DE19C(v153, v154 + *(v155 + 64), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v151, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v72, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v153, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v152, &qword_1EBD452C0, &qword_1BE0B7620);
}

void sub_1BD2D93B8(void *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FA8, &qword_1BE0C9CB0);
  v106 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v100 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FB0, &qword_1BE0C9CB8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v100 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FB8, &qword_1BE0C9CC0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v100 - v15;
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  sub_1BE04D8B4(&v111);
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v18, v26, v27, v28, v29, v30, v31, v32;
  sub_1BD396CC8(v110);
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  sub_1BE04D8B4(&v111);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v34, v42, v43, v44, v45, v46, v47, v48;
  if (v111 == 1)
  {
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v103 = v111;
    v102 = v113;
    v101 = v115;
    v100 = v116;
    v109 = 1;
    v108 = v112;
    BYTE1(v107) = v114;
    sub_1BE04E4F4();
    v49 = swift_getKeyPath();
    v50 = swift_getKeyPath();
    sub_1BE04D8B4(&v107);
    v49, v51, v52, v53, v54, v55, v56, v57;
    v50, v58, v59, v60, v61, v62, v63, v64;
    v65 = v107;
    v66 = &v11[*(v6 + 36)];
    *v66 = 0;
    v66[8] = v65;
    v67 = v109;
    LOBYTE(v50) = v108;
    v104 = v3;
    v68 = BYTE1(v107);
    sub_1BD0DE19C(v11, v8, &qword_1EBD40FB0, &qword_1BE0C9CB8);
    *v5 = 0;
    v5[8] = v67;
    *(v5 + 2) = v103;
    v5[24] = v50;
    *(v5 + 4) = v102;
    v5[40] = v68;
    v69 = v100;
    *(v5 + 6) = v101;
    *(v5 + 7) = v69;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FC8, &qword_1BE0C9D60);
    sub_1BD0DE19C(v8, &v5[*(v70 + 48)], &qword_1EBD40FB0, &qword_1BE0C9CB8);
    sub_1BD0DE53C(v11, &qword_1EBD40FB0, &qword_1BE0C9CB8);
    sub_1BD0DE53C(v8, &qword_1EBD40FB0, &qword_1BE0C9CB8);
    sub_1BD0DE204(v5, v16, &qword_1EBD40FA8, &qword_1BE0C9CB0);
    (*(v106 + 56))(v16, 0, 1, v104);
  }

  else
  {
    (*(v106 + 56))(v16, 1, 1, v3);
  }

  v71 = v110[0];
  v72 = v110[1];
  v73 = v110[2];
  v74 = v110[3];
  v75 = v110[4];
  v76 = v110[5];
  v77 = v105;
  sub_1BD0DE19C(v16, v105, &qword_1EBD40FB8, &qword_1BE0C9CC0);
  *a2 = v71;
  a2[1] = v72;
  a2[2] = v73;
  a2[3] = v74;
  a2[4] = v75;
  a2[5] = v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40FC0, &qword_1BE0C9D58);
  sub_1BD0DE19C(v77, a2 + *(v78 + 48), &qword_1EBD40FB8, &qword_1BE0C9CC0);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DE53C(v16, &qword_1EBD40FB8, &qword_1BE0C9CC0);
  sub_1BD0DE53C(v77, &qword_1EBD40FB8, &qword_1BE0C9CC0);
  v76, v79, v80, v81, v82, v83, v84, v85;
  v74, v86, v87, v88, v89, v90, v91, v92;
  v72, v93, v94, v95, v96, v97, v98, v99;
}

unint64_t sub_1BD2D98D4()
{
  result = qword_1EBD40F20;
  if (!qword_1EBD40F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40F10, &qword_1BE0C9AF0);
    sub_1BD0DE4F4(&qword_1EBD40F28, &qword_1EBD40F30, &unk_1BE0C9B00, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8, &qword_1BE0BB050, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40F20);
  }

  return result;
}

uint64_t sub_1BD2D99B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD2D9A6C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD2D9A6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD2D9AB4()
{
  result = qword_1EBD40F90;
  if (!qword_1EBD40F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40F98, &qword_1BE0C9B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40F90);
  }

  return result;
}

unint64_t sub_1BD2D9B38()
{
  result = qword_1EBD41000;
  if (!qword_1EBD41000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41008, &unk_1BE0C9DA0);
    sub_1BD2D98D4();
    sub_1BD0DE4F4(&qword_1EBD40F38, &qword_1EBD40F00, &qword_1BE0C9AE0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41000);
  }

  return result;
}

uint64_t type metadata accessor for PKDashboardRewardsBalanceView(uint64_t a1)
{
  result = qword_1EBD41010;
  if (!qword_1EBD41010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2D9C64(uint64_t a1)
{
  sub_1BD127BD0(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BE04AF64();
    if (v2 <= 0x3F)
    {
      sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD2D9D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for PKDashboardRewardsBalanceView(0);
  v64 = *(v3 - 8);
  v63 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BE04FF64();
  v5 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41020, &qword_1BE0C9E20);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41028, &qword_1BE0C9E28);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - v13;
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41030, &qword_1BE0C9E30);
  sub_1BD2DA210(v2, &v10[*(v15 + 44)]);
  sub_1BE04FF44();
  v16 = sub_1BD0DE4F4(&qword_1EBD41038, &qword_1EBD41020, &qword_1BE0C9E20, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v5 + 8))(v7, v59);
  sub_1BD0DE53C(v10, &qword_1EBD41020, &qword_1BE0C9E20);
  sub_1BE052434();
  v18 = v17;
  v65 = v8;
  v66 = v16;
  swift_getOpaqueTypeConformance2();
  v19 = v60;
  sub_1BE050DE4();
  v18, v20, v21, v22, v23, v24, v25, v26;
  (*(v12 + 8))(v14, v11);
  LOBYTE(v10) = sub_1BE050234();
  sub_1BE04E1F4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41040, &qword_1BE0C9E38) + 36);
  *v35 = v10;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  LOBYTE(v10) = sub_1BE050204();
  sub_1BE04E1F4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41048, &qword_1BE0C9E40) + 36);
  *v44 = v10;
  *(v44 + 8) = v37;
  *(v44 + 16) = v39;
  *(v44 + 24) = v41;
  *(v44 + 32) = v43;
  *(v44 + 40) = 0;
  LOBYTE(v10) = sub_1BE050224();
  sub_1BE04E1F4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41050, &qword_1BE0C9E48) + 36);
  *v53 = v10;
  *(v53 + 8) = v46;
  *(v53 + 16) = v48;
  *(v53 + 24) = v50;
  *(v53 + 32) = v52;
  *(v53 + 40) = 0;
  v54 = v62;
  sub_1BD2DB374(v61, v62);
  v55 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v56 = swift_allocObject();
  sub_1BD2DB3D8(v54, v56 + v55);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41058, &unk_1BE0C9E50);
  v58 = (v19 + *(result + 36));
  *v58 = sub_1BD2DB43C;
  v58[1] = v56;
  v58[2] = 0;
  v58[3] = 0;
  return result;
}

uint64_t sub_1BD2DA210@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v316 = a2;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41060, &qword_1BE0C9E60);
  MEMORY[0x1EEE9AC00](v314);
  v317 = &v289 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v315 = (&v289 - v5);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41068, &qword_1BE0C9E68);
  MEMORY[0x1EEE9AC00](v307);
  v306 = &v289 - v6;
  v305 = sub_1BE04F454();
  v304 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305);
  v302 = &v289 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v303 = &v289 - v9;
  v300 = sub_1BE04AE24();
  v298 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v293 = &v289 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_1BE04AE44();
  v291 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v289 = &v289 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_1BE04AE54();
  v296 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v292 = &v289 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_1BE04BD74();
  v295 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297);
  v290 = &v289 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41070, &qword_1BE0C9E70);
  MEMORY[0x1EEE9AC00](v301);
  v310 = &v289 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41078, &unk_1BE0C9E78);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v313 = &v289 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v318 = &v289 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v312 = &v289 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v289 - v22;
  v308 = a1;
  v24 = *a1;
  v25 = a1[1];
  v320 = v24;
  v321 = v25;
  v26 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v309 = v26;
  v27 = sub_1BE0506C4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = sub_1BE050324();
  sub_1BE0503A4();
  v35 = sub_1BE0503F4();
  v34, v36, v37, v38, v39, v40, v41, v42;
  v43 = sub_1BE0505F4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v35, v44, v46, v48, v50, v51, v52, v53;
  sub_1BD0DDF10(v27, v29, (v31 & 1), v54, v55, v56, v57, v58);
  v33, v59, v60, v61, v62, v63, v64, v65;
  v320 = v43;
  v321 = v45;
  v322 = v47 & 1;
  v323 = v49;
  sub_1BE052434();
  v67 = v66;
  v311 = v23;
  sub_1BE050DE4();
  v68 = v67;
  v69 = v308;
  v68, v70, v71, v72, v73, v74, v75, v76;
  sub_1BD0DDF10(v43, v45, (v47 & 1), v77, v78, v79, v80, v81);
  v49, v82, v83, v84, v85, v86, v87, v88;
  v89 = v69 + *(type metadata accessor for PKDashboardRewardsBalanceView(0) + 28);
  v90 = *v89;
  v91 = *(v89 + 1);
  LOBYTE(v320) = v90;
  v321 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v319 == 1)
  {
    v92 = v295;
    v93 = v290;
    v94 = v297;
    (*(v295 + 104))(v290, *MEMORY[0x1E69B8088], v297);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1BE0B69E0;
    v96 = v289;
    sub_1BE04AE34();
    v97 = v293;
    sub_1BE04AE14();
    v98 = v292;
    sub_1BE04A144();
    (*(v298 + 8))(v97, v300);
    (*(v291 + 8))(v96, v294);
    *(v95 + 56) = MEMORY[0x1E69E6158];
    *(v95 + 64) = sub_1BD110550();
    sub_1BD2DB570(&qword_1EBD410A8, MEMORY[0x1E69693E8], MEMORY[0x1E69693E0]);
    v99 = v299;
    sub_1BE04AF44();
    (*(v296 + 8))(v98, v99);
    v100 = sub_1BE04B714();
    v102 = v101;
    v95, v101, v103, v104, v105, v106, v107, v108;
    (*(v92 + 8))(v93, v94);
    v320 = v100;
    v321 = v102;
    v109 = sub_1BE0506C4();
    v111 = v110;
    LOBYTE(v102) = v112;
    v114 = v113;
    v115 = sub_1BE050324();
    v116 = sub_1BE0505F4();
    v118 = v117;
    LOBYTE(v98) = v119;
    v121 = v120;
    v115, v117, v119, v120, v122, v123, v124, v125;
    sub_1BD0DDF10(v109, v111, (v102 & 1), v126, v127, v128, v129, v130);
    v114, v131, v132, v133, v134, v135, v136, v137;
    v138 = sub_1BE051494();
    v139 = sub_1BE050564();
    v141 = v140;
    LOBYTE(v111) = v142;
    v144 = v143;
    v138, v140, v142, v143, v145, v146, v147, v148;
    sub_1BD0DDF10(v116, v118, (v98 & 1), v149, v150, v151, v152, v153);
    v121, v154, v155, v156, v157, v158, v159, v160;
    v320 = v139;
    v321 = v141;
    v322 = v111 & 1;
    v323 = v144;
    sub_1BE052434();
    v162 = v161;
    v163 = v310;
    sub_1BE050DE4();
    v162, v164, v165, v166, v167, v168, v169, v170;
    sub_1BD0DDF10(v139, v141, (v111 & 1), v171, v172, v173, v174, v175);
    v144, v176, v177, v178, v179, v180, v181, v182;
  }

  else
  {
    v183 = v310;
    v184 = v69[3];
    if (!v184)
    {
      v265 = 1;
      v264 = v318;
      goto LABEL_6;
    }

    v320 = v69[2];
    v321 = v184;
    sub_1BE048C84();
    v185 = sub_1BE0506C4();
    v187 = v186;
    v189 = v188;
    v191 = v190;
    v192 = sub_1BE050324();
    v193 = sub_1BE0505F4();
    v195 = v194;
    v197 = v196;
    v199 = v198;
    v192, v194, v196, v198, v200, v201, v202, v203;
    sub_1BD0DDF10(v185, v187, (v189 & 1), v204, v205, v206, v207, v208);
    v191, v209, v210, v211, v212, v213, v214, v215;
    v216 = sub_1BE051494();
    v217 = sub_1BE050564();
    v219 = v218;
    LOBYTE(v187) = v220;
    v222 = v221;
    v216, v218, v220, v221, v223, v224, v225, v226;
    sub_1BD0DDF10(v193, v195, (v197 & 1), v227, v228, v229, v230, v231);
    v199, v232, v233, v234, v235, v236, v237, v238;
    v320 = v217;
    v321 = v219;
    v322 = v187 & 1;
    v323 = v222;
    sub_1BE052434();
    v240 = v239;
    v163 = v183;
    sub_1BE050DE4();
    v240, v241, v242, v243, v244, v245, v246, v247;
    sub_1BD0DDF10(v217, v219, (v187 & 1), v248, v249, v250, v251, v252);
    v222, v253, v254, v255, v256, v257, v258, v259;
  }

  v260 = v303;
  sub_1BE04F444();
  v261 = v304;
  v262 = v305;
  (*(v304 + 16))(v302, v260, v305);
  sub_1BD2DB570(&unk_1EBD367A0, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v263 = sub_1BE04E644();
  (*(v261 + 8))(v260, v262);
  *(v163 + *(v301 + 36)) = v263;
  sub_1BD0DE19C(v163, v306, &qword_1EBD41070, &qword_1BE0C9E70);
  swift_storeEnumTagMultiPayload();
  sub_1BD2DB4B8();
  v264 = v318;
  sub_1BE04F9A4();
  sub_1BD0DE53C(v163, &qword_1EBD41070, &qword_1BE0C9E70);
  v265 = 0;
LABEL_6:
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41080, &qword_1BE0C9E88);
  (*(*(v266 - 8) + 56))(v264, v265, 1, v266);
  v267 = sub_1BE051574();
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41088, &unk_1BE0C9E90);
  v269 = v315;
  v270 = (v315 + *(v268 + 36));
  v271 = v264;
  v272 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFB0, &qword_1BE0F32E0) + 28);
  v273 = *MEMORY[0x1E69816E0];
  v274 = sub_1BE0515D4();
  (*(*(v274 - 8) + 104))(v270 + v272, v273, v274);
  *v270 = swift_getKeyPath();
  *v269 = v267;
  v275 = sub_1BE050324();
  KeyPath = swift_getKeyPath();
  v277 = (v269 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41090, &qword_1BE0C9F00) + 36));
  *v277 = KeyPath;
  v277[1] = v275;
  v278 = sub_1BE051494();
  v279 = swift_getKeyPath();
  v280 = (v269 + *(v314 + 36));
  *v280 = v279;
  v280[1] = v278;
  v282 = v311;
  v281 = v312;
  sub_1BD0DE19C(v311, v312, &qword_1EBD452C0, &qword_1BE0B7620);
  v283 = v313;
  sub_1BD0DE19C(v271, v313, &qword_1EBD41078, &unk_1BE0C9E78);
  v284 = v317;
  sub_1BD0DE19C(v269, v317, &qword_1EBD41060, &qword_1BE0C9E60);
  v285 = v316;
  sub_1BD0DE19C(v281, v316, &qword_1EBD452C0, &qword_1BE0B7620);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41098, &qword_1BE0C9F38);
  v287 = v285 + v286[12];
  *v287 = 0;
  *(v287 + 8) = 1;
  sub_1BD0DE19C(v283, v285 + v286[16], &qword_1EBD41078, &unk_1BE0C9E78);
  sub_1BD0DE19C(v284, v285 + v286[20], &qword_1EBD41060, &qword_1BE0C9E60);
  sub_1BD0DE53C(v269, &qword_1EBD41060, &qword_1BE0C9E60);
  sub_1BD0DE53C(v318, &qword_1EBD41078, &unk_1BE0C9E78);
  sub_1BD0DE53C(v282, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v284, &qword_1EBD41060, &qword_1BE0C9E60);
  sub_1BD0DE53C(v283, &qword_1EBD41078, &unk_1BE0C9E78);
  return sub_1BD0DE53C(v281, &qword_1EBD452C0, &qword_1BE0B7620);
}

double sub_1BD2DB0E8(uint64_t a1)
{
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34[-v7];
  sub_1BE04AEF4();
  v9 = type metadata accessor for PKDashboardRewardsBalanceView(0);
  sub_1BE04AE94();
  v10 = sub_1BE04AE74();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if (v10)
  {
    v13 = (a1 + *(v9 + 28));
    v14 = *v13;
    v15 = *(v13 + 1);
    v34[16] = v14;
    v35 = v15;
    v34[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    v16 = sub_1BE0516B4();
    v17 = MEMORY[0x1BFB3EDF0](v16, 0.5, 1.0, 0.0);
    v18 = sub_1BE051D24();
    v17, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1EEE9AC00](v26);
    *&v34[-16] = a1;
    sub_1BE04E7D4();
    v18, v27, v28, v29, v30, v31, v32, v33;
  }

  return result;
}

double sub_1BD2DB2F8(uint64_t a1)
{
  type metadata accessor for PKDashboardRewardsBalanceView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD2DB374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKDashboardRewardsBalanceView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2DB3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKDashboardRewardsBalanceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BD2DB43C()
{
  v1 = *(type metadata accessor for PKDashboardRewardsBalanceView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD2DB0E8(v2);
}

unint64_t sub_1BD2DB4B8()
{
  result = qword_1EBD410A0;
  if (!qword_1EBD410A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41070, &qword_1BE0C9E70);
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0, &unk_1BE0C9F40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD410A0);
  }

  return result;
}

uint64_t sub_1BD2DB570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD2DB5B8()
{
  result = qword_1EBD410B0;
  if (!qword_1EBD410B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41058, &unk_1BE0C9E50);
    sub_1BD2DB6A0(&qword_1EBD410B8, &qword_1EBD41050, &qword_1BE0C9E48, sub_1BD2DB670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD410B0);
  }

  return result;
}

uint64_t sub_1BD2DB6A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD2DB754()
{
  result = qword_1EBD410D0;
  if (!qword_1EBD410D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD410D8, qword_1BE0C9F50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41020, &qword_1BE0C9E20);
    sub_1BD0DE4F4(&qword_1EBD41038, &qword_1EBD41020, &qword_1BE0C9E20, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD2DB570(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD410D0);
  }

  return result;
}

id sub_1BD2DB880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD22F42C();
  v8 = [v2 amount];
  v9 = [objc_opt_self() zero];
  v10 = sub_1BE053074();

  if ((v10 & 1) == 0)
  {
    v14 = [v3 amount];
    v15 = sub_1BE052404();
    v16 = PKFormattedCurrencyStringFromNumber();

    if (!v16)
    {
      return 0;
    }

    v13 = sub_1BE052434();

    return v13;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69B8068], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();

    (*(v5 + 8))(v7, v4);
    return v13;
  }

  __break(1u);
  return result;
}

id sub_1BD2DBAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_presentationConfiguration] = 1;
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_identifier];
  *v8 = 0xD000000000000023;
  v8[1] = 0x80000001BE0C9F50;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPrompt] = 0;
  v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPromptPresented] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_credential] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_primaryPass] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD2DBC7C(void (*a1)(unint64_t, unint64_t, void, uint64_t, double), uint64_t a2)
{
  v5 = sub_1BE04B8D4();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69 - v9;
  v11 = sub_1BE04B944();
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04BAC4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPromptPresented))
  {
    a1(0xD000000000000011, 0x80000001BE121DD0, 0, 1, v16);
    return;
  }

  v73 = a2;
  if (![*(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_primaryPass) isCarKeyPass])
  {
    v25 = 0x2072616320746F6ELL;
    v26 = 0xEB0000000079656BLL;
LABEL_9:
    (a1)(v25, v26, 0, 1);
    return;
  }

  v19 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_credential);
  if (!v19)
  {
    v25 = 0x6564657263206F6ELL;
    v26 = 0xED00006C6169746ELL;
    goto LABEL_9;
  }

  v72 = a1;
  v70 = v2;
  v20 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_context);
  v21 = v19;
  v71 = v20;
  sub_1BE04BC34();
  LOBYTE(v20) = sub_1BE04BAB4();
  v22 = *(v15 + 8);
  v22(v18, v14);
  if (v20)
  {
    v23 = 0x6764697262206E69;
    v24 = 0xE900000000000065;
LABEL_22:
    (v72)(v23, v24, 0, 1);

    return;
  }

  sub_1BE04BC34();
  v27 = sub_1BE04BA54();
  v22(v18, v14);
  if (v27)
  {
    v28 = "eck returned false for keyId: ";
    v23 = 0xD000000000000012;
LABEL_21:
    v24 = v28 | 0x8000000000000000;
    goto LABEL_22;
  }

  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v74 + 8))(v13, v11);
  v30 = v75;
  v29 = v76;
  (*(v75 + 104))(v7, *MEMORY[0x1E69B7F78], v76);
  v31 = sub_1BE04B8C4();
  v32 = *(v30 + 8);
  v32(v7, v29);
  v32(v10, v29);
  if ((v31 & 1) == 0)
  {
    v28 = "hupPromptPresented";
    v23 = 0xD000000000000018;
    goto LABEL_21;
  }

  v33 = [v21 identifier];
  if (!v33)
  {
LABEL_26:
    v23 = 0xD000000000000026;
    v24 = 0x80000001BE121D40;
    goto LABEL_22;
  }

  v34 = v33;
  v35 = v21;
  v36 = sub_1BE052434();
  v44 = v37;
  v45 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v45 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {
    v37, v37, v38, v39, v40, v41, v42, v43;

    v21 = v35;
    goto LABEL_26;
  }

  v46 = v36;
  v47 = [objc_allocWithZone(MEMORY[0x1E6993988]) initWithKeyIdentifier_];

  v48 = OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPrompt;
  v49 = v70;
  v50 = *(v70 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPrompt);
  *(v70 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPrompt) = v47;

  v51 = *(v49 + v48);
  if (v51 && ([v51 setDelegate_], (v52 = *(v49 + v48)) != 0))
  {
    v53 = [v52 wantsToPresentHeadUnitPairing];
  }

  else
  {
    v53 = 0;
  }

  v77 = 0;
  v78 = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD00000000000003ELL, 0x80000001BE121D70);
  MEMORY[0x1BFB3F610](v46, v44);
  v44, v54, v55, v56, v57, v58, v59, v60;
  v61 = v78;
  (v72)(v53, v77, v78, 2);

  v61, v62, v63, v64, v65, v66, v67, v68;
}

uint64_t sub_1BD2DC214()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2DC250(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD2DC2A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPrompt);
  if (!v1)
  {
    return 2;
  }

  [v1 presentHeadUnitPairingPrompt];
  result = 1;
  *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningHeadUnitPairingFlowItem_hupPromptPresented) = 1;
  return result;
}

uint64_t sub_1BD2DC3A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v187 = a1;
  v192 = a2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41190, &qword_1BE0C9FC0);
  MEMORY[0x1EEE9AC00](v127);
  v122 = &v122 - v3;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41198, &qword_1BE0C9FC8);
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v122 - v4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411A0, &qword_1BE0C9FD0);
  MEMORY[0x1EEE9AC00](v139);
  v128 = &v122 - v5;
  v125 = type metadata accessor for SelectedPaymentOfferActionView(0);
  MEMORY[0x1EEE9AC00](v125);
  v123 = (&v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0);
  MEMORY[0x1EEE9AC00](v135);
  v129 = (&v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411A8, &qword_1BE0C9FD8);
  MEMORY[0x1EEE9AC00](v142);
  v144 = &v122 - v8;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411B0, &qword_1BE0C9FE0);
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v122 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411B8, &qword_1BE0C9FE8);
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v122 - v10;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411C0, &qword_1BE0C9FF0);
  MEMORY[0x1EEE9AC00](v137);
  v134 = &v122 - v11;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411C8, &qword_1BE0C9FF8);
  MEMORY[0x1EEE9AC00](v143);
  v140 = &v122 - v12;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411D0, &qword_1BE0CA000);
  MEMORY[0x1EEE9AC00](v191);
  v145 = &v122 - v13;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411D8, &qword_1BE0CA008);
  MEMORY[0x1EEE9AC00](v131);
  v130 = (&v122 - v14);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411E0, &qword_1BE0CA010);
  MEMORY[0x1EEE9AC00](v152);
  v141 = (&v122 - v15);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411E8, &qword_1BE0CA018);
  MEMORY[0x1EEE9AC00](v149);
  v151 = &v122 - v16;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411F0, &qword_1BE0CA020);
  MEMORY[0x1EEE9AC00](v166);
  v153 = &v122 - v17;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD411F8, &qword_1BE0CA028);
  MEMORY[0x1EEE9AC00](v150);
  v148 = (&v122 - v18);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41200, &qword_1BE0CA030);
  v147 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v146 = &v122 - v19;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41208, &qword_1BE0CA038);
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v122 - v20;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41210, &qword_1BE0CA040);
  MEMORY[0x1EEE9AC00](v160);
  v157 = &v122 - v21;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41218, &qword_1BE0CA048);
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v122 - v22;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41220, &qword_1BE0CA050);
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v122 - v23;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41228, &qword_1BE0CA058);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v122 - v24;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41230, &qword_1BE0CA060);
  MEMORY[0x1EEE9AC00](v185);
  v165 = &v122 - v25;
  v172 = type metadata accessor for ShippingMethodSheet(0);
  MEMORY[0x1EEE9AC00](v172);
  v167 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41238, &qword_1BE0CA068);
  MEMORY[0x1EEE9AC00](v169);
  v171 = &v122 - v27;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41240, &qword_1BE0CA070);
  MEMORY[0x1EEE9AC00](v181);
  v173 = &v122 - v28;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41248, &qword_1BE0CA078);
  MEMORY[0x1EEE9AC00](v170);
  v168 = (&v122 - v29);
  v176 = type metadata accessor for PaymentPassMethodSheet(0);
  MEMORY[0x1EEE9AC00](v176);
  v174 = (&v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41250, &qword_1BE0CA080);
  MEMORY[0x1EEE9AC00](v188);
  v190 = &v122 - v31;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41258, &qword_1BE0CA088);
  MEMORY[0x1EEE9AC00](v182);
  v184 = &v122 - v32;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41260, &qword_1BE0CA090);
  MEMORY[0x1EEE9AC00](v177);
  v179 = &v122 - v33;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41268, &qword_1BE0CA098);
  MEMORY[0x1EEE9AC00](v175);
  v35 = (&v122 - v34);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41270, &qword_1BE0CA0A0);
  MEMORY[0x1EEE9AC00](v178);
  v37 = &v122 - v36;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41278, &qword_1BE0CA0A8);
  MEMORY[0x1EEE9AC00](v183);
  v180 = &v122 - v38;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41280, &qword_1BE0CA0B0);
  MEMORY[0x1EEE9AC00](v189);
  v186 = &v122 - v39;
  v40 = type metadata accessor for PaymentSheet(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = sub_1BE04C614();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v122 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v47, v187, v43, v45);
  v48 = (*(v44 + 88))(v47, v43);
  if (v48 != *MEMORY[0x1E69BC8D0])
  {
    if (v48 == *MEMORY[0x1E69BC8A8])
    {
      v72 = v174;
      sub_1BD2E5BDC(v174);
      sub_1BD2EE220(v72, v35, type metadata accessor for PaymentPassMethodSheet);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF258();
      sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet, &unk_1BE0DAE28);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v37, v179, &qword_1EBD41270, &qword_1BE0CA0A0);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF19C();
      sub_1BD2DF2AC();
      v73 = v180;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v37, &qword_1EBD41270, &qword_1BE0CA0A0);
      sub_1BD0DE19C(v73, v184, &qword_1EBD41278, &qword_1BE0CA0A8);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF110();
      sub_1BD2DF478();
      v74 = v186;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v73, &qword_1EBD41278, &qword_1BE0CA0A8);
      sub_1BD0DE19C(v74, v190, &qword_1EBD41280, &qword_1BE0CA0B0);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF084();
      sub_1BD2DF7E8();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v74, &qword_1EBD41280, &qword_1BE0CA0B0);
      v75 = type metadata accessor for PaymentPassMethodSheet;
      return sub_1BD2EE430(v72, v75);
    }

    if (v48 == *MEMORY[0x1E69BC8B8])
    {
      v76 = v168;
      sub_1BD2E6FEC(v168);
      v77 = &qword_1EBD41248;
      v78 = &qword_1BE0CA078;
      sub_1BD0DE19C(v76, v171, &qword_1EBD41248, &qword_1BE0CA078);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF368();
      sub_1BD2EE53C(&qword_1EBD41310, type metadata accessor for ShippingMethodSheet, &unk_1BE0D5FA0);
      v79 = v173;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v79, v179, &qword_1EBD41240, &qword_1BE0CA070);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF19C();
      sub_1BD2DF2AC();
      v80 = v180;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v79, &qword_1EBD41240, &qword_1BE0CA070);
      sub_1BD0DE19C(v80, v184, &qword_1EBD41278, &qword_1BE0CA0A8);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF110();
      sub_1BD2DF478();
      v81 = v186;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v80, &qword_1EBD41278, &qword_1BE0CA0A8);
      goto LABEL_10;
    }

    if (v48 == *MEMORY[0x1E69BC8C0])
    {
      v83 = v167;
      sub_1BD2E7CBC(v167);
      sub_1BD2EE220(v83, v171, type metadata accessor for ShippingMethodSheet);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF368();
      sub_1BD2EE53C(&qword_1EBD41310, type metadata accessor for ShippingMethodSheet, &unk_1BE0D5FA0);
      v84 = v173;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v84, v179, &qword_1EBD41240, &qword_1BE0CA070);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF19C();
      sub_1BD2DF2AC();
      v85 = v180;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v84, &qword_1EBD41240, &qword_1BE0CA070);
      sub_1BD0DE19C(v85, v184, &qword_1EBD41278, &qword_1BE0CA0A8);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF110();
      sub_1BD2DF478();
      v86 = v186;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v85, &qword_1EBD41278, &qword_1BE0CA0A8);
      sub_1BD0DE19C(v86, v190, &qword_1EBD41280, &qword_1BE0CA0B0);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF084();
      sub_1BD2DF7E8();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v86, &qword_1EBD41280, &qword_1BE0CA0B0);
      return sub_1BD2EE430(v83, type metadata accessor for ShippingMethodSheet);
    }

    if (v48 == *MEMORY[0x1E69BC8C8])
    {
      sub_1BD2E81A4(v194);
      memcpy(v159, v194, 0x140uLL);
      swift_storeEnumTagMultiPayload();
      sub_1BD2EAD80(v194, v193);
      sub_1BD2DF590();
      sub_1BD2DF5E4();
      v87 = v161;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v87, v164, &qword_1EBD41228, &qword_1BE0CA058);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF504();
      sub_1BD2DF708();
      v88 = v165;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v87, &qword_1EBD41228, &qword_1BE0CA058);
      sub_1BD0DE19C(v88, v184, &qword_1EBD41230, &qword_1BE0CA060);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF110();
      sub_1BD2DF478();
      v89 = v186;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v88, &qword_1EBD41230, &qword_1BE0CA060);
      v90 = &qword_1EBD41280;
      v91 = &qword_1BE0CA0B0;
      sub_1BD0DE19C(v89, v190, &qword_1EBD41280, &qword_1BE0CA0B0);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF084();
      sub_1BD2DF7E8();
      sub_1BE04F9A4();
      sub_1BD2EADDC(v194);
      v68 = v89;
    }

    else
    {
      if (v48 != *MEMORY[0x1E69BC890])
      {
        if (v48 == *MEMORY[0x1E69BC8A0])
        {
          v76 = v148;
          sub_1BD2E8C7C(v148);
          v77 = &qword_1EBD411F8;
          v78 = &qword_1BE0CA028;
          sub_1BD0DE19C(v76, v151, &qword_1EBD411F8, &qword_1BE0CA028);
          swift_storeEnumTagMultiPayload();
          sub_1BD0DE4F4(&qword_1EBD41340, &qword_1EBD411F8, &qword_1BE0CA028, &unk_1BE0C3E78);
        }

        else
        {
          if (v48 != *MEMORY[0x1E69BC888])
          {
            if (v48 == *MEMORY[0x1E69BC898])
            {
              v106 = v130;
              sub_1BD2E9318(v130);
              sub_1BD0DE19C(v106, v133, &qword_1EBD411D8, &qword_1BE0CA008);
              swift_storeEnumTagMultiPayload();
              sub_1BD0DE4F4(&qword_1EBD41298, &qword_1EBD411D8, &qword_1BE0CA008, &unk_1BE0C3E78);
              sub_1BD2EE53C(&qword_1EBD412A0, type metadata accessor for PaymentOfferSelectedInstallmentDetailView, &unk_1BE0B992C);
              v107 = v134;
              sub_1BE04F9A4();
              sub_1BD0DE19C(v107, v138, &qword_1EBD411C0, &qword_1BE0C9FF0);
              swift_storeEnumTagMultiPayload();
              sub_1BD2DEE2C();
              sub_1BD2DEF14();
              v108 = v140;
              sub_1BE04F9A4();
              sub_1BD0DE53C(v107, &qword_1EBD411C0, &qword_1BE0C9FF0);
              sub_1BD0DE19C(v108, v144, &qword_1EBD411C8, &qword_1BE0C9FF8);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
              sub_1BD2DEDA0();
              sub_1BD0FEEBC();
              v109 = v145;
              sub_1BE04F9A4();
              sub_1BD0DE53C(v108, &qword_1EBD411C8, &qword_1BE0C9FF8);
              sub_1BD0DE19C(v109, v190, &qword_1EBD411D0, &qword_1BE0CA000);
              swift_storeEnumTagMultiPayload();
              sub_1BD2DF084();
              sub_1BD2DF7E8();
              sub_1BE04F9A4();
              sub_1BD0DE53C(v109, &qword_1EBD411D0, &qword_1BE0CA000);
              return sub_1BD0DE53C(v106, &qword_1EBD411D8, &qword_1BE0CA008);
            }

            if (v48 != *MEMORY[0x1E69BC8E8])
            {
              if (v48 == *MEMORY[0x1E69BC8E0])
              {
                v72 = v129;
                sub_1BD2E97D0(v129);
                sub_1BD2EE220(v72, v133, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
                swift_storeEnumTagMultiPayload();
                sub_1BD0DE4F4(&qword_1EBD41298, &qword_1EBD411D8, &qword_1BE0CA008, &unk_1BE0C3E78);
                sub_1BD2EE53C(&qword_1EBD412A0, type metadata accessor for PaymentOfferSelectedInstallmentDetailView, &unk_1BE0B992C);
                v111 = v134;
                sub_1BE04F9A4();
                sub_1BD0DE19C(v111, v138, &qword_1EBD411C0, &qword_1BE0C9FF0);
                swift_storeEnumTagMultiPayload();
                sub_1BD2DEE2C();
                sub_1BD2DEF14();
                v112 = v140;
                sub_1BE04F9A4();
                sub_1BD0DE53C(v111, &qword_1EBD411C0, &qword_1BE0C9FF0);
                sub_1BD0DE19C(v112, v144, &qword_1EBD411C8, &qword_1BE0C9FF8);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
                sub_1BD2DEDA0();
                sub_1BD0FEEBC();
                v113 = v145;
                sub_1BE04F9A4();
                sub_1BD0DE53C(v112, &qword_1EBD411C8, &qword_1BE0C9FF8);
                sub_1BD0DE19C(v113, v190, &qword_1EBD411D0, &qword_1BE0CA000);
                swift_storeEnumTagMultiPayload();
                sub_1BD2DF084();
                sub_1BD2DF7E8();
                sub_1BE04F9A4();
                sub_1BD0DE53C(v113, &qword_1EBD411D0, &qword_1BE0CA000);
                v75 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView;
              }

              else
              {
                if (v48 != *MEMORY[0x1E69BC8D8])
                {
                  if (v48 == *MEMORY[0x1E69BC8B0])
                  {
                    v117 = v122;
                    sub_1BD2EAA3C(v122);
                    sub_1BD0DE19C(v117, v126, &qword_1EBD41190, &qword_1BE0C9FC0);
                    swift_storeEnumTagMultiPayload();
                    sub_1BD2EE53C(&qword_1EBD412B0, type metadata accessor for SelectedPaymentOfferActionView, &unk_1BE0F2780);
                    sub_1BD2DEFD0();
                    v118 = v128;
                    sub_1BE04F9A4();
                    sub_1BD0DE19C(v118, v138, &qword_1EBD411A0, &qword_1BE0C9FD0);
                    swift_storeEnumTagMultiPayload();
                    sub_1BD2DEE2C();
                    sub_1BD2DEF14();
                    v119 = v140;
                    sub_1BE04F9A4();
                    sub_1BD0DE53C(v118, &qword_1EBD411A0, &qword_1BE0C9FD0);
                    sub_1BD0DE19C(v119, v144, &qword_1EBD411C8, &qword_1BE0C9FF8);
                    swift_storeEnumTagMultiPayload();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
                    sub_1BD2DEDA0();
                    sub_1BD0FEEBC();
                    v120 = v145;
                    sub_1BE04F9A4();
                    sub_1BD0DE53C(v119, &qword_1EBD411C8, &qword_1BE0C9FF8);
                    sub_1BD0DE19C(v120, v190, &qword_1EBD411D0, &qword_1BE0CA000);
                    swift_storeEnumTagMultiPayload();
                    sub_1BD2DF084();
                    sub_1BD2DF7E8();
                    sub_1BE04F9A4();
                    sub_1BD0DE53C(v120, &qword_1EBD411D0, &qword_1BE0CA000);
                    return sub_1BD0DE53C(v117, &qword_1EBD41190, &qword_1BE0C9FC0);
                  }

                  else
                  {
                    v193[0] = 1;
                    sub_1BE04F9A4();
                    *v144 = v194[0];
                    swift_storeEnumTagMultiPayload();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
                    sub_1BD2DEDA0();
                    sub_1BD0FEEBC();
                    v121 = v145;
                    sub_1BE04F9A4();
                    sub_1BD0DE19C(v121, v190, &qword_1EBD411D0, &qword_1BE0CA000);
                    swift_storeEnumTagMultiPayload();
                    sub_1BD2DF084();
                    sub_1BD2DF7E8();
                    sub_1BE04F9A4();
                    sub_1BD0DE53C(v121, &qword_1EBD411D0, &qword_1BE0CA000);
                    return (*(v44 + 8))(v47, v43);
                  }
                }

                v72 = v123;
                sub_1BD2EA190(v123);
                sub_1BD2EE220(v72, v126, type metadata accessor for SelectedPaymentOfferActionView);
                swift_storeEnumTagMultiPayload();
                sub_1BD2EE53C(&qword_1EBD412B0, type metadata accessor for SelectedPaymentOfferActionView, &unk_1BE0F2780);
                sub_1BD2DEFD0();
                v114 = v128;
                sub_1BE04F9A4();
                sub_1BD0DE19C(v114, v138, &qword_1EBD411A0, &qword_1BE0C9FD0);
                swift_storeEnumTagMultiPayload();
                sub_1BD2DEE2C();
                sub_1BD2DEF14();
                v115 = v140;
                sub_1BE04F9A4();
                sub_1BD0DE53C(v114, &qword_1EBD411A0, &qword_1BE0C9FD0);
                sub_1BD0DE19C(v115, v144, &qword_1EBD411C8, &qword_1BE0C9FF8);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
                sub_1BD2DEDA0();
                sub_1BD0FEEBC();
                v116 = v145;
                sub_1BE04F9A4();
                sub_1BD0DE53C(v115, &qword_1EBD411C8, &qword_1BE0C9FF8);
                sub_1BD0DE19C(v116, v190, &qword_1EBD411D0, &qword_1BE0CA000);
                swift_storeEnumTagMultiPayload();
                sub_1BD2DF084();
                sub_1BD2DF7E8();
                sub_1BE04F9A4();
                sub_1BD0DE53C(v116, &qword_1EBD411D0, &qword_1BE0CA000);
                v75 = type metadata accessor for SelectedPaymentOfferActionView;
              }

              return sub_1BD2EE430(v72, v75);
            }

            v193[0] = 0;
            sub_1BE04F9A4();
            *v144 = v194[0];
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
            sub_1BD2DEDA0();
            sub_1BD0FEEBC();
            v110 = v145;
            sub_1BE04F9A4();
            v77 = &qword_1EBD411D0;
            v78 = &qword_1BE0CA000;
            sub_1BD0DE19C(v110, v190, &qword_1EBD411D0, &qword_1BE0CA000);
            swift_storeEnumTagMultiPayload();
            sub_1BD2DF084();
            sub_1BD2DF7E8();
            sub_1BE04F9A4();
            v82 = v110;
            return sub_1BD0DE53C(v82, v77, v78);
          }

          v76 = v141;
          sub_1BD2E8FD4(v141);
          v77 = &qword_1EBD411E0;
          v78 = &qword_1BE0CA010;
          sub_1BD0DE19C(v76, v151, &qword_1EBD411E0, &qword_1BE0CA010);
          swift_storeEnumTagMultiPayload();
          sub_1BD0DE4F4(&qword_1EBD41340, &qword_1EBD411F8, &qword_1BE0CA028, &unk_1BE0C3E78);
        }

        sub_1BD0DE4F4(&qword_1EBD41348, &qword_1EBD411E0, &qword_1BE0CA010, &unk_1BE0C3E78);
        v104 = v153;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v104, v164, &qword_1EBD411F0, &qword_1BE0CA020);
        swift_storeEnumTagMultiPayload();
        sub_1BD2DF504();
        sub_1BD2DF708();
        v105 = v165;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v104, &qword_1EBD411F0, &qword_1BE0CA020);
        sub_1BD0DE19C(v105, v184, &qword_1EBD41230, &qword_1BE0CA060);
        swift_storeEnumTagMultiPayload();
        sub_1BD2DF110();
        sub_1BD2DF478();
        v81 = v186;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v105, &qword_1EBD41230, &qword_1BE0CA060);
LABEL_10:
        sub_1BD0DE19C(v81, v190, &qword_1EBD41280, &qword_1BE0CA0B0);
        swift_storeEnumTagMultiPayload();
        sub_1BD2DF084();
        sub_1BD2DF7E8();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v81, &qword_1EBD41280, &qword_1BE0CA0B0);
        v82 = v76;
        return sub_1BD0DE53C(v82, v77, v78);
      }

      if (sub_1BD2DF874())
      {
        v92 = v174;
        sub_1BD2E5BDC(v174);
        sub_1BD2EE220(v92, v155, type metadata accessor for PaymentPassMethodSheet);
        swift_storeEnumTagMultiPayload();
        sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet, &unk_1BE0DAE28);
        v93 = type metadata accessor for PaymentSetupNavigationController(255);
        v94 = sub_1BD2EE53C(&qword_1EBD47AC0, type metadata accessor for PaymentSetupNavigationController, &unk_1BE0DAC64);
        v194[0] = v93;
        v194[1] = v94;
        swift_getOpaqueTypeConformance2();
        v95 = v157;
        sub_1BE04F9A4();
        sub_1BD2EE430(v92, type metadata accessor for PaymentPassMethodSheet);
      }

      else
      {
        v96 = v146;
        sub_1BD2E89CC();
        v97 = v147;
        v98 = v156;
        (*(v147 + 16))(v155, v96, v156);
        swift_storeEnumTagMultiPayload();
        sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet, &unk_1BE0DAE28);
        v99 = type metadata accessor for PaymentSetupNavigationController(255);
        v100 = sub_1BD2EE53C(&qword_1EBD47AC0, type metadata accessor for PaymentSetupNavigationController, &unk_1BE0DAC64);
        v194[0] = v99;
        v194[1] = v100;
        swift_getOpaqueTypeConformance2();
        v95 = v157;
        sub_1BE04F9A4();
        (*(v97 + 8))(v96, v98);
      }

      v90 = &qword_1EBD41210;
      v91 = &qword_1BE0CA040;
      sub_1BD0DE19C(v95, v159, &qword_1EBD41210, &qword_1BE0CA040);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF590();
      sub_1BD2DF5E4();
      v101 = v161;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v101, v164, &qword_1EBD41228, &qword_1BE0CA058);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF504();
      sub_1BD2DF708();
      v102 = v165;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v101, &qword_1EBD41228, &qword_1BE0CA058);
      sub_1BD0DE19C(v102, v184, &qword_1EBD41230, &qword_1BE0CA060);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF110();
      sub_1BD2DF478();
      v103 = v186;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v102, &qword_1EBD41230, &qword_1BE0CA060);
      sub_1BD0DE19C(v103, v190, &qword_1EBD41280, &qword_1BE0CA0B0);
      swift_storeEnumTagMultiPayload();
      sub_1BD2DF084();
      sub_1BD2DF7E8();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v103, &qword_1EBD41280, &qword_1BE0CA0B0);
      v68 = v95;
    }

    v69 = v90;
    v70 = v91;
    return sub_1BD0DE53C(v68, v69, v70);
  }

  v49 = *(*(v2 + 8) + qword_1EBDAB300);
  if (v49)
  {
    sub_1BD2EE220(v2, &v122 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentSheet);
    v50 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v51 = swift_allocObject();
    sub_1BD2EE3C8(&v122 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v50, type metadata accessor for PaymentSheet);
    *v35 = v49;
    v35[1] = sub_1BD2EE588;
    v35[2] = v51;
    swift_storeEnumTagMultiPayload();
    sub_1BD2DF258();
    sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet, &unk_1BE0DAE28);
    swift_retain_n();
    sub_1BE048964();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v37, v179, &qword_1EBD41270, &qword_1BE0CA0A0);
    swift_storeEnumTagMultiPayload();
    sub_1BD2DF19C();
    sub_1BD2DF2AC();
    v52 = v180;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v37, &qword_1EBD41270, &qword_1BE0CA0A0);
    sub_1BD0DE19C(v52, v184, &qword_1EBD41278, &qword_1BE0CA0A8);
    swift_storeEnumTagMultiPayload();
    sub_1BD2DF110();
    sub_1BD2DF478();
    v53 = v186;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v52, &qword_1EBD41278, &qword_1BE0CA0A8);
    sub_1BD0DE19C(v53, v190, &qword_1EBD41280, &qword_1BE0CA0B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD2DF084();
    sub_1BD2DF7E8();
    sub_1BE04F9A4();
    v51, v54, v55, v56, v57, v58, v59, v60;
    v49, v61, v62, v63, v64, v65, v66, v67;
    v68 = v53;
    v69 = &qword_1EBD41280;
    v70 = &qword_1BE0CA0B0;
    return sub_1BD0DE53C(v68, v69, v70);
  }

  result = sub_1BE053994();
  __break(1u);
  return result;
}

unint64_t sub_1BD2DEDA0()
{
  result = qword_1EBD41288;
  if (!qword_1EBD41288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD411C8, &qword_1BE0C9FF8);
    sub_1BD2DEE2C();
    sub_1BD2DEF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41288);
  }

  return result;
}

unint64_t sub_1BD2DEE2C()
{
  result = qword_1EBD41290;
  if (!qword_1EBD41290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD411C0, &qword_1BE0C9FF0);
    sub_1BD0DE4F4(&qword_1EBD41298, &qword_1EBD411D8, &qword_1BE0CA008, &unk_1BE0C3E78);
    sub_1BD2EE53C(&qword_1EBD412A0, type metadata accessor for PaymentOfferSelectedInstallmentDetailView, &unk_1BE0B992C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41290);
  }

  return result;
}

unint64_t sub_1BD2DEF14()
{
  result = qword_1EBD412A8;
  if (!qword_1EBD412A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD411A0, &qword_1BE0C9FD0);
    sub_1BD2EE53C(&qword_1EBD412B0, type metadata accessor for SelectedPaymentOfferActionView, &unk_1BE0F2780);
    sub_1BD2DEFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412A8);
  }

  return result;
}

unint64_t sub_1BD2DEFD0()
{
  result = qword_1EBD412B8;
  if (!qword_1EBD412B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41190, &qword_1BE0C9FC0);
    sub_1BD2EE53C(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView, &unk_1BE0B8630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412B8);
  }

  return result;
}

unint64_t sub_1BD2DF084()
{
  result = qword_1EBD412C8;
  if (!qword_1EBD412C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41280, &qword_1BE0CA0B0);
    sub_1BD2DF110();
    sub_1BD2DF478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412C8);
  }

  return result;
}

unint64_t sub_1BD2DF110()
{
  result = qword_1EBD412D0;
  if (!qword_1EBD412D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41278, &qword_1BE0CA0A8);
    sub_1BD2DF19C();
    sub_1BD2DF2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412D0);
  }

  return result;
}

unint64_t sub_1BD2DF19C()
{
  result = qword_1EBD412D8;
  if (!qword_1EBD412D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41270, &qword_1BE0CA0A0);
    sub_1BD2DF258();
    sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet, &unk_1BE0DAE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412D8);
  }

  return result;
}

unint64_t sub_1BD2DF258()
{
  result = qword_1EBD412E0;
  if (!qword_1EBD412E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412E0);
  }

  return result;
}

unint64_t sub_1BD2DF2AC()
{
  result = qword_1EBD412F0;
  if (!qword_1EBD412F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41240, &qword_1BE0CA070);
    sub_1BD2DF368();
    sub_1BD2EE53C(&qword_1EBD41310, type metadata accessor for ShippingMethodSheet, &unk_1BE0D5FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412F0);
  }

  return result;
}

unint64_t sub_1BD2DF368()
{
  result = qword_1EBD412F8;
  if (!qword_1EBD412F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41248, &qword_1BE0CA078);
    sub_1BD2EE53C(&qword_1EBD41300, type metadata accessor for PaymentSummarySheet, &unk_1BE0CDE68);
    sub_1BD2DF424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD412F8);
  }

  return result;
}

unint64_t sub_1BD2DF424()
{
  result = qword_1EBD41308;
  if (!qword_1EBD41308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41308);
  }

  return result;
}

unint64_t sub_1BD2DF478()
{
  result = qword_1EBD41318;
  if (!qword_1EBD41318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41230, &qword_1BE0CA060);
    sub_1BD2DF504();
    sub_1BD2DF708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41318);
  }

  return result;
}

unint64_t sub_1BD2DF504()
{
  result = qword_1EBD41320;
  if (!qword_1EBD41320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41228, &qword_1BE0CA058);
    sub_1BD2DF590();
    sub_1BD2DF5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41320);
  }

  return result;
}

unint64_t sub_1BD2DF590()
{
  result = qword_1EBD41328;
  if (!qword_1EBD41328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41328);
  }

  return result;
}

unint64_t sub_1BD2DF5E4()
{
  result = qword_1EBD41330;
  if (!qword_1EBD41330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41210, &qword_1BE0CA040);
    sub_1BD2EE53C(&qword_1EBD412E8, type metadata accessor for PaymentPassMethodSheet, &unk_1BE0DAE28);
    type metadata accessor for PaymentSetupNavigationController(255);
    sub_1BD2EE53C(&qword_1EBD47AC0, type metadata accessor for PaymentSetupNavigationController, &unk_1BE0DAC64);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41330);
  }

  return result;
}

unint64_t sub_1BD2DF708()
{
  result = qword_1EBD41338;
  if (!qword_1EBD41338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD411F0, &qword_1BE0CA020);
    sub_1BD0DE4F4(&qword_1EBD41340, &qword_1EBD411F8, &qword_1BE0CA028, &unk_1BE0C3E78);
    sub_1BD0DE4F4(&qword_1EBD41348, &qword_1EBD411E0, &qword_1BE0CA010, &unk_1BE0C3E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41338);
  }

  return result;
}

unint64_t sub_1BD2DF7E8()
{
  result = qword_1EBD41350;
  if (!qword_1EBD41350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD411D0, &qword_1BE0CA000);
    sub_1BD2DEDA0();
    sub_1BD0FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41350);
  }

  return result;
}

uint64_t sub_1BD2DF874()
{
  v0 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v33[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v33[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33[3] = &type metadata for PaymentSheetFeatureFlag.Wallet;
  v33[4] = sub_1BD259180();
  LOBYTE(v33[0]) = 0;
  v6 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v33, v7, v8, v9, v10, v11, v12, v13);
  v14 = 0;
  if (v6)
  {
    KeyPath = swift_getKeyPath();
    v16 = swift_getKeyPath();
    sub_1BE04D8B4(v5);
    KeyPath, v17, v18, v19, v20, v21, v22, v23;
    v16, v24, v25, v26, v27, v28, v29, v30;
    sub_1BD2EE220(v5 + *(v3 + 20), v2, _s14MerchantOriginOMa);
    sub_1BD2EE430(v5, _s8MerchantVMa);
    if (swift_getEnumCaseMultiPayload())
    {
      v14 = PKPaymentSheetExpressProvisioningWebFlow();
    }

    else
    {
      v14 = 1;
    }

    sub_1BD2EE430(v2, _s14MerchantOriginOMa);
  }

  return v14;
}

double sub_1BD2DFA44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F310, &unk_1BE0F2320);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v27 - v5;
  sub_1BD2DFBD0(a1, v27 - v5);
  v7 = type metadata accessor for PaymentSheet(0);
  v30 = *(a1 + *(v7 + 84));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390, &qword_1BE0F2820);
  sub_1BE0516C4();
  v8 = v28;
  v9 = v29;
  sub_1BD6FC4DC(v28, *(&v28 + 1), v29);
  *(&v8 + 1), v10, v11, v12, v13, v14, v15, v16;
  v8, v17, v18, v19, v20, v21, v22, v23;

  sub_1BD0DE53C(v6, &qword_1EBD3F310, &unk_1BE0F2320);
  v30 = *(a1 + *(v7 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516C4();
  *v27 = v28;
  v24 = v29;
  v25 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2D8, &qword_1BE0C5C28) + 36);
  result = v27[0];
  *v25 = *v27;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 16) = v24;
  return result;
}

id sub_1BD2DFBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v1037 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41388, &qword_1BE0CA4B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v1052 = &v947 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v1050 = &v947 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41390, &qword_1BE0CA4C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v1051 = &v947 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v1058 = &v947 - v10;
  v1036 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41398, &qword_1BE0CA4C8);
  v1035 = *(v1036 - 8);
  MEMORY[0x1EEE9AC00](v1036);
  v1009 = &v947 - v11;
  v12 = type metadata accessor for DeferredPaymentRequestSummaryRows(0);
  v1005 = *(v12 - 8);
  v1006 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v1008 = &v947 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41380, &qword_1BE10B380);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v1033 = &v947 - v15;
  v1034 = type metadata accessor for DeferredPaymentRequest(0);
  v1032 = *(v1034 - 8);
  MEMORY[0x1EEE9AC00](v1034);
  v1007 = (&v947 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413A0, &qword_1BE0CA4D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v1049 = &v947 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v1062 = &v947 - v20;
  v1028 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413A8, &qword_1BE0CA4D8);
  MEMORY[0x1EEE9AC00](v1028);
  v977 = (&v947 - v21);
  v1026 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413B0, &qword_1BE0CA4E0);
  MEMORY[0x1EEE9AC00](v1026);
  v1027 = &v947 - v22;
  v23 = sub_1BE04BD74();
  v998 = *(v23 - 8);
  v999 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v997 = &v947 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v1042 = (&v947 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1025 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413B8, &qword_1BE0CA4E8);
  MEMORY[0x1EEE9AC00](v1025);
  v1016 = &v947 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v1017 = &v947 - v29;
  v1020 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v1020);
  v1019 = &v947 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1053 = _s14PaymentSummaryVMa(0);
  MEMORY[0x1EEE9AC00](v1053);
  v1031 = (&v947 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v1018 = (&v947 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v1004 = (&v947 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v1043 = &v947 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413C0, &qword_1BE0CA4F0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v1048 = &v947 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v1057 = &v947 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413C8, &qword_1BE0CA4F8);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v1047 = &v947 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v1064 = &v947 - v45;
  v960 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413D0, &qword_1BE0CA500);
  MEMORY[0x1EEE9AC00](v960);
  v961 = &v947 - v46;
  v966 = type metadata accessor for PaymentOfferInstallmentSummaryView(0);
  MEMORY[0x1EEE9AC00](v966);
  v962 = &v947 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413D8, &qword_1BE0CA508);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v1046 = &v947 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v1059 = &v947 - v51;
  v967 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413E0, &qword_1BE0CA510);
  MEMORY[0x1EEE9AC00](v967);
  v970 = &v947 - v52;
  v969 = type metadata accessor for PaymentPassUnavailableItem(0);
  MEMORY[0x1EEE9AC00](v969);
  v955 = &v947 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v957 = &v947 - v55;
  v56 = type metadata accessor for UnavailablePass(0);
  v964 = *(v56 - 8);
  v965 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v954 = &v947 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v956 = &v947 - v59;
  v1003 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413E8, &qword_1BE0CA518);
  MEMORY[0x1EEE9AC00](v1003);
  v968 = &v947 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v959 = &v947 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v953 = &v947 - v64;
  v1001 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413F0, &qword_1BE0CA520);
  MEMORY[0x1EEE9AC00](v1001);
  v1002 = &v947 - v65;
  v66 = type metadata accessor for AdditionalInfoView(0);
  v975 = *(v66 - 8);
  v976 = v66;
  MEMORY[0x1EEE9AC00](v66);
  v974 = &v947 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  v986 = *(v68 - 8);
  v987 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v973 = &v947 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C880, &qword_1BE0CA528);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v985 = &v947 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v988 = (&v947 - v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD413F8, &qword_1BE0CA530);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v989 = &v947 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v990 = &v947 - v77;
  v963 = type metadata accessor for PaymentSheet(0);
  v1055 = *(v963 - 8);
  MEMORY[0x1EEE9AC00](v963);
  v1056 = v78;
  v1054 = &v947 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1024 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41400, &qword_1BE0CA538);
  MEMORY[0x1EEE9AC00](v1024);
  v1012 = &v947 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v1013 = &v947 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41408, &qword_1BE0CA540);
  v993 = *(v82 - 8);
  v994 = v82;
  MEMORY[0x1EEE9AC00](v82);
  v992 = &v947 - v83;
  v991 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41410, &qword_1BE0CA548);
  MEMORY[0x1EEE9AC00](v991);
  v1014 = &v947 - v84;
  v1000 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41418, &qword_1BE0CA550);
  MEMORY[0x1EEE9AC00](v1000);
  v995 = &v947 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v996 = &v947 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v88 - 8);
  v972 = &v947 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v1011 = &v947 - v91;
  *(&v1041 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41420, &qword_1BE0CA558);
  *&v1041 = *(*(&v1041 + 1) - 8);
  MEMORY[0x1EEE9AC00](*(&v1041 + 1));
  v1015 = &v947 - v92;
  v1040 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v1040);
  v971 = (&v947 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v94);
  v958 = (&v947 - v95);
  MEMORY[0x1EEE9AC00](v96);
  v952 = (&v947 - v97);
  MEMORY[0x1EEE9AC00](v98);
  v1010 = (&v947 - v99);
  MEMORY[0x1EEE9AC00](v100);
  v1039 = &v947 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41428, &qword_1BE0CA560);
  MEMORY[0x1EEE9AC00](v102 - 8);
  v1045 = &v947 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v104);
  v1063 = &v947 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41430, &qword_1BE0CA568);
  v1038 = *(v106 - 1);
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v947 - v107;
  v1030 = type metadata accessor for AvailablePass(0);
  v1029 = *(v1030 - 8);
  MEMORY[0x1EEE9AC00](v1030);
  v984 = &v947 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v110);
  v1021 = &v947 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v1023 = &v947 - v113;
  v983 = v114;
  MEMORY[0x1EEE9AC00](v115);
  v979 = &v947 - v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v117 - 8);
  v982 = &v947 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v119);
  v1022 = (&v947 - v120);
  MEMORY[0x1EEE9AC00](v121);
  v980 = &v947 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v978 = &v947 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v127 = (&v947 - v126);
  v128 = type metadata accessor for PeerPaymentModel(0);
  v129 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v131 = &v947 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41438, &qword_1BE0CA570);
  MEMORY[0x1EEE9AC00](v132 - 8);
  v1044 = &v947 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v134);
  v1061 = &v947 - v135;
  v1065 = a1;
  v136 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v138 = swift_getKeyPath();
  v1060 = v136;
  v139 = v128;
  sub_1BE04D8B4(v127);
  KeyPath, v140, v141, v142, v143, v144, v145, v146;
  v138, v147, v148, v149, v150, v151, v152, v153;
  v154 = *(v129 + 48);
  v155 = v154(v127, 1, v139);
  v981 = v139;
  if (v155 == 1)
  {
    sub_1BD0DE53C(v127, &qword_1EBD45480, &unk_1BE0B8C30);
LABEL_9:
    v175 = 1;
    v173 = v1053;
    v174 = v1039;
    goto LABEL_15;
  }

  sub_1BD2EE3C8(v127, v131, type metadata accessor for PeerPaymentModel);
  if (v131[v139[13]] != 1)
  {
    sub_1BD2EE430(v131, type metadata accessor for PeerPaymentModel);
    goto LABEL_9;
  }

  v156 = &v131[v139[5]];
  v950 = v129 + 48;
  v157 = v979;
  sub_1BD2EE220(v156, v979, type metadata accessor for AvailablePass);
  v951 = v154;
  v158 = v978;
  sub_1BD2EE220(v131, v978, type metadata accessor for PeerPaymentModel);
  (*(v129 + 56))(v158, 0, 1, v139);
  sub_1BE04C8E4();
  v159 = sub_1BD2E46D8();
  v948 = v106[16];
  v949 = v160;
  v108[v948] = 0;
  v161 = v106[17];
  *&v108[v161] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  v162 = sub_1BE051C54();
  v163 = 40.0;
  if (v162)
  {
    v163 = 36.0;
  }

  *&v108[v106[18]] = v163;
  v164 = v106[19];
  v108[v164] = (sub_1BE051C54() & 1) == 0;
  sub_1BD2EE220(v157, v108, type metadata accessor for AvailablePass);
  *&v108[v106[9]] = 0;
  sub_1BD0DE19C(v158, &v108[v106[10]], &qword_1EBD45480, &unk_1BE0B8C30);
  v165 = &v108[v106[11]];
  *(v165 + 3) = 0u;
  *(v165 + 4) = 0u;
  *(v165 + 1) = 0u;
  *(v165 + 2) = 0u;
  *v165 = 0u;
  sub_1BD2E4300(v131, &v108[v106[12]]);
  sub_1BD2EE430(v157, type metadata accessor for AvailablePass);
  sub_1BD2EE430(v131, type metadata accessor for PeerPaymentModel);
  v166 = &v108[v106[13]];
  v167 = v1067;
  *v166 = v1066;
  *(v166 + 1) = v167;
  *(v166 + 4) = v1068;
  v168 = &v108[v106[14]];
  v169 = v949;
  *v168 = v159;
  v168[1] = v169;
  v170 = &v108[v106[15]];
  *v170 = 0;
  *(v170 + 1) = 0;
  v171 = v158;
  v154 = v951;
  v172 = v980;
  sub_1BD0DE204(v171, v980, &qword_1EBD45480, &unk_1BE0B8C30);
  if (v154(v172, 1, v139) == 1)
  {
    sub_1BD0DE53C(v172, &qword_1EBD45480, &unk_1BE0B8C30);
    v173 = v1053;
    v174 = v1039;
  }

  else
  {
    v176 = (v172 + v139[6]);
    v177 = v176[3];
    v1113 = v176[2];
    v1114 = v177;
    v178 = v176[5];
    v1115 = v176[4];
    v1116 = v178;
    v179 = v176[1];
    v1111 = *v176;
    v1112 = v179;
    sub_1BD0DE19C(&v1111, &v1097, &unk_1EBD521D0, qword_1BE0BEDC0);
    sub_1BD2EE430(v172, type metadata accessor for PeerPaymentModel);
    v173 = v1053;
    v174 = v1039;
    if (v1111 != 1)
    {
      v180 = *(&v1112 + 1);
      v181 = v1116;
      sub_1BD0DE53C(&v1111, &unk_1EBD521D0, qword_1BE0BEDC0);
      if (v180 || (v181 & 1) != 0)
      {
        v108[v948] = 1;
      }
    }
  }

  sub_1BD0DE204(v108, v1061, &qword_1EBD41430, &qword_1BE0CA568);
  v175 = 0;
LABEL_15:
  v182 = 1;
  (*(v1038 + 56))(v1061, v175, 1, v106);
  v183 = swift_getKeyPath();
  v184 = swift_getKeyPath();
  sub_1BE04D8B4(v174);
  v183, v185, v186, v187, v188, v189, v190, v191;
  v184, v192, v193, v194, v195, v196, v197, v198;
  v199 = v1040;
  LODWORD(v183) = *(v174 + v1040[6]);
  sub_1BD2EE430(v174, type metadata accessor for Passes);
  v200 = v1065;
  if (v183 == 1)
  {
    v201 = swift_getKeyPath();
    v202 = swift_getKeyPath();
    v203 = v1010;
    sub_1BE04D8B4(v1010);
    v201, v204, v205, v206, v207, v208, v209, v210;
    v202, v211, v212, v213, v214, v215, v216, v217;
    v218 = v1011;
    sub_1BD0DE19C(v203, v1011, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD2EE430(v203, type metadata accessor for Passes);
    if ((*(v1029 + 48))(v218, 1, v1030) == 1)
    {
      sub_1BD0DE53C(v218, &qword_1EBD520A0, &qword_1BE0B9840);
      v219 = swift_getKeyPath();
      v220 = swift_getKeyPath();
      sub_1BE04D8B4(v174);
      v219, v221, v222, v223, v224, v225, v226, v227;
      v220, v228, v229, v230, v231, v232, v233, v234;
      v235 = *(v174 + v199[7]);
      sub_1BE048C84();
      sub_1BD2EE430(v174, type metadata accessor for Passes);
      v236 = v235[2];
      v235, v237, v238, v239, v240, v241, v242, v243;
      v200 = v1065;
      if (v236)
      {
        v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41480, &qword_1BE0CA5E8);
        v245 = v1015;
        (*(*(v244 - 8) + 56))(v1015, 1, 1, v244);
LABEL_62:
        sub_1BD0DE204(v245, v1063, &qword_1EBD41420, &qword_1BE0CA558);
        v182 = 0;
        goto LABEL_63;
      }

      v319 = sub_1BD2DF874();
      v320 = v1055;
      v245 = v1015;
      if ((v319 & 1) == 0 || (sub_1BD2DF874() & 1) != 0 && (v321 = swift_getKeyPath(), v322 = swift_getKeyPath(), v323 = v952, sub_1BE04D8B4(v952), v321, v324, v325, v326, v327, v328, v329, v330, v322, v331, v332, v333, v334, v335, v336, v337, v338 = v953, sub_1BD49404C(v953), sub_1BD2EE430(v323, type metadata accessor for Passes), LODWORD(v321) = (*(v964 + 48))(v338, 1, v965), sub_1BD0DE53C(v338, &qword_1EBD3C3F8, &qword_1BE0DB080), v321 == 1))
      {
        v339 = swift_getKeyPath();
        v340 = swift_getKeyPath();
        v341 = v958;
        sub_1BE04D8B4(v958);
        v339, v342, v343, v344, v345, v346, v347, v348;
        v340, v349, v350, v351, v352, v353, v354, v355;
        v356 = v959;
        sub_1BD4941F8(v959);
        sub_1BD2EE430(v341, type metadata accessor for Passes);
        if ((*(v964 + 48))(v356, 1, v965) != 1)
        {
          v468 = v956;
          sub_1BD2EE3C8(v356, v956, type metadata accessor for UnavailablePass);
          v469 = v954;
          sub_1BD2EE220(v468, v954, type metadata accessor for UnavailablePass);
          if (PKOslo2024UIUpdatesEnabled())
          {
            v1040 = 0;
            v470 = 0;
          }

          else
          {
            v1040 = sub_1BD2E4D24();
            v470 = v471;
          }

          v366 = v968;
          if (PKOslo2024UIUpdatesEnabled() && (v472 = sub_1BD2E4D24()) != 0 && (sub_1BD0D4744(v472, v473, v474, v475, v476, v477, v478, v479), PKOslo2024UIUpdatesEnabled()) && (sub_1BD2ECB4C() & 1) == 0)
          {
            v480 = sub_1BD2ED1A0;
          }

          else
          {
            v480 = 0;
          }

          v481 = v469;
          v482 = v955;
          sub_1BD2EE3C8(v481, v955, type metadata accessor for UnavailablePass);
          v483 = v969;
          v484 = (v482 + *(v969 + 20));
          *v484 = v1040;
          v484[1] = v470;
          v485 = (v482 + *(v483 + 24));
          *v485 = v480;
          v485[1] = 0;
          v486 = v957;
          sub_1BD2EE3C8(v482, v957, type metadata accessor for PaymentPassUnavailableItem);
          sub_1BD2EE220(v486, v970, type metadata accessor for PaymentPassUnavailableItem);
          swift_storeEnumTagMultiPayload();
          sub_1BD2EE53C(&qword_1EBD41488, type metadata accessor for PaymentPassUnavailableItem, &unk_1BE0C60B8);
          sub_1BD2EDCDC();
          sub_1BE04F9A4();
          sub_1BD2EE430(v486, type metadata accessor for PaymentPassUnavailableItem);
          sub_1BD2EE430(v468, type metadata accessor for UnavailablePass);
          v245 = v1015;
          goto LABEL_61;
        }

        sub_1BD0DE53C(v356, &qword_1EBD3C3F8, &qword_1BE0DB080);
      }

      v357 = v200 + *(v963 + 76);
      v358 = *v357;
      v359 = *(v357 + 8);
      LOBYTE(v1111) = v358;
      *(&v1111 + 1) = v359;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516A4();
      v360 = v1097;
      v361 = sub_1BD2DF874();
      v362 = v1054;
      sub_1BD2EE220(v200, v1054, type metadata accessor for PaymentSheet);
      v363 = (*(v320 + 80) + 16) & ~*(v320 + 80);
      v364 = swift_allocObject();
      sub_1BD2EE3C8(v362, v364 + v363, type metadata accessor for PaymentSheet);
      v365 = v970;
      *v970 = v360;
      v365[1] = v361 & 1;
      *(v365 + 1) = sub_1BD2EDC80;
      *(v365 + 2) = v364;
      swift_storeEnumTagMultiPayload();
      sub_1BD2EE53C(&qword_1EBD41488, type metadata accessor for PaymentPassUnavailableItem, &unk_1BE0C60B8);
      sub_1BD2EDCDC();
      v366 = v968;
      sub_1BE04F9A4();
LABEL_61:
      sub_1BD0DE19C(v366, v1002, &qword_1EBD413E8, &qword_1BE0CA518);
      swift_storeEnumTagMultiPayload();
      sub_1BD2EDD30();
      sub_1BD2EE014();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v366, &qword_1EBD413E8, &qword_1BE0CA518);
      v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41480, &qword_1BE0CA5E8);
      (*(*(v487 - 8) + 56))(v245, 0, 1, v487);
      goto LABEL_62;
    }

    v951 = v154;
    v246 = v1023;
    sub_1BD2EE3C8(v218, v1023, type metadata accessor for AvailablePass);
    v247 = swift_getKeyPath();
    v248 = swift_getKeyPath();
    sub_1BE04D8B4(&v1111);
    v247, v249, v250, v251, v252, v253, v254, v255;
    v248, v256, v257, v258, v259, v260, v261, v262;
    v1068 = v1113;
    v1069 = v1114;
    v1070 = v1115;
    v1066 = v1111;
    v1067 = v1112;
    v263 = swift_getKeyPath();
    v264 = swift_getKeyPath();
    sub_1BE04D8B4(v174);
    v263, v265, v266, v267, v268, v269, v270, v271;
    v264, v272, v273, v274, v275, v276, v277, v278;
    v279 = *(v174 + v199[5]);
    v280 = v279;
    sub_1BD2EE430(v174, type metadata accessor for Passes);
    sub_1BD2EE220(v246, v1021, type metadata accessor for AvailablePass);
    v281 = swift_getKeyPath();
    v282 = swift_getKeyPath();
    sub_1BE04D8B4(v1022);
    v281, v283, v284, v285, v286, v287, v288, v289;
    v282, v290, v291, v292, v293, v294, v295, v296;
    sub_1BE04C8E4();
    v297 = v1065;
    v298 = sub_1BD2E4D24();
    v300 = v299;
    if (v298 && PKOslo2024UIUpdatesEnabled())
    {
      v301 = sub_1BD2ECB4C();
      sub_1BD0D4744(v298, v300, v302, v303, v304, v305, v306, v307);
      if ((v301 & 1) == 0)
      {
        v298 = 0;
        v300 = 0;
        v310 = sub_1BD2E4D24();
        if (!v310)
        {
          goto LABEL_34;
        }

LABEL_24:
        sub_1BD0D4744(v310, v311, v312, v313, v314, v315, v316, v317);
        if (PKOslo2024UIUpdatesEnabled() && (sub_1BD2ECB4C() & 1) == 0)
        {
          v318 = sub_1BD2ED1A0;
LABEL_35:
          v367 = v1024;
          v368 = v1012;
          v1039 = *(v1024 + 64);
          v1012[v1039] = 0;
          v369 = v367[17];
          *(v368 + v369) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
          swift_storeEnumTagMultiPayload();
          v1040 = v280;
          sub_1BD0DE19C(&v1066, &v1111, &qword_1EBD395E0, &qword_1BE0B8830);
          v370 = sub_1BE051C54();
          v371 = 40.0;
          if (v370)
          {
            v371 = 36.0;
          }

          *(v368 + v367[18]) = v371;
          v372 = v367[19];
          v373 = 1;
          *(v368 + v372) = (sub_1BE051C54() & 1) == 0;
          sub_1BD2EE220(v1021, v368, type metadata accessor for AvailablePass);
          *(v368 + v367[9]) = v279;
          sub_1BD0DE19C(v1022, v368 + v367[10], &qword_1EBD45480, &unk_1BE0B8C30);
          v374 = (v368 + v367[11]);
          v375 = v1069;
          v374[2] = v1068;
          v374[3] = v375;
          v374[4] = v1070;
          v376 = v1067;
          *v374 = v1066;
          v374[1] = v376;
          v377 = swift_getKeyPath();
          v378 = swift_getKeyPath();
          v379 = v988;
          sub_1BE04D8B4(v988);
          v377, v380, v381, v382, v383, v384, v385, v386;
          v378, v387, v388, v389, v390, v391, v392, v393;
          v394 = v985;
          sub_1BD0DE19C(v379, v985, &qword_1EBD4C880, &qword_1BE0CA528);
          v395 = (*(v986 + 48))(v394, 1, v987);
          v396 = v989;
          if (v395 != 1)
          {
            v397 = v973;
            sub_1BD2EE3C8(v394, v973, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
            v398 = v974;
            sub_1BD2EE220(v397, v974, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
            sub_1BD2EE3C8(v398, v396, type metadata accessor for AdditionalInfoView);
            (*(v975 + 56))(v396, 0, 1, v976);
            sub_1BD2EE430(v397, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
            v373 = 0;
          }

          sub_1BD0DE53C(v379, &qword_1EBD4C880, &qword_1BE0CA528);
          sub_1BD2EE430(v1021, type metadata accessor for AvailablePass);
          v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD414F0, &qword_1BE0CA680);
          (*(*(v399 - 8) + 56))(v396, v373, 1, v399);
          v400 = v1024;
          v401 = *(v1024 + 48);
          v402 = v396;
          v403 = v990;
          sub_1BD0DE204(v402, v990, &qword_1EBD413F8, &qword_1BE0CA530);
          v404 = &v1012[v401];
          v405 = v1012;
          sub_1BD0DE204(v403, v404, &qword_1EBD413F8, &qword_1BE0CA530);
          v406 = v405 + v400[13];
          v407 = v1090;
          *v406 = v1089;
          *(v406 + 16) = v407;
          *(v406 + 32) = v1091;
          v408 = (v405 + v400[14]);
          *v408 = v298;
          v408[1] = v300;
          v409 = (v405 + v400[15]);
          *v409 = v318;
          v409[1] = 0;
          v410 = v982;
          sub_1BD0DE204(v1022, v982, &qword_1EBD45480, &unk_1BE0B8C30);
          v411 = v981;
          if (v951(v410, 1, v981) == 1)
          {
            sub_1BD0DE53C(v410, &qword_1EBD45480, &unk_1BE0B8C30);
          }

          else
          {
            v412 = (v410 + v411[6]);
            v413 = v412[3];
            v1113 = v412[2];
            v1114 = v413;
            v414 = v412[5];
            v1115 = v412[4];
            v1116 = v414;
            v415 = v412[1];
            v1111 = *v412;
            v1112 = v415;
            sub_1BD0DE19C(&v1111, &v1097, &unk_1EBD521D0, qword_1BE0BEDC0);
            sub_1BD2EE430(v410, type metadata accessor for PeerPaymentModel);
            if (v1111 != 1)
            {
              v416 = *(&v1112 + 1);
              v417 = v1116;
              sub_1BD0DE53C(&v1111, &unk_1EBD521D0, qword_1BE0BEDC0);
              if (v416 || (v417 & 1) != 0)
              {
                *(v405 + v1039) = 1;
              }
            }
          }

          sub_1BD0DE204(v405, v1013, &qword_1EBD41400, &qword_1BE0CA538);
          v418 = v1023 + *(v1030 + 52);
          v420 = *(v418 + 8);
          v422 = *(v418 + 16);
          v421 = *(v418 + 24);
          v423 = *(v418 + 32);
          *&v1111 = *v418;
          v419 = v1111;
          *(&v1111 + 1) = v420;
          *&v1112 = v422;
          *(&v1112 + 1) = v421;
          LOBYTE(v1113) = v423;
          v424 = v984;
          sub_1BD2EE220(v1023, v984, type metadata accessor for AvailablePass);
          v425 = (*(v1029 + 80) + 16) & ~*(v1029 + 80);
          v426 = swift_allocObject();
          sub_1BD2EE3C8(v424, v426 + v425, type metadata accessor for AvailablePass);
          sub_1BD2EE178(v419, v420, v422, v421);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD414A8, &qword_1BE0CA5F0);
          sub_1BD0DE4F4(&qword_1EBD414B0, &qword_1EBD41400, &qword_1BE0CA538, &unk_1BE0B9C48);
          sub_1BD2EDF3C();
          v427 = v992;
          v428 = v1013;
          sub_1BE051074();
          v426, v429, v430, v431, v432, v433, v434, v435;
          v436 = v422;
          v437 = v421;
          sub_1BD2EE1C0(v419, v420, v436, v421);
          sub_1BD0DE53C(v428, &qword_1EBD41400, &qword_1BE0CA538);
          v438 = sub_1BE051D94();
          v439 = swift_getKeyPath();
          v440 = swift_getKeyPath();
          v441 = v1014;
          v442 = (v1014 + *(v991 + 36));
          v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD414D0, &qword_1BE0CA5F8);
          sub_1BE04D8B4((v442 + *(v443 + 36)));
          v439, v444, v445, v446, v447, v448, v449, v450;
          v440, v451, v452, v453, v454, v455, v456, v457;
          *v442 = v438;
          (*(v993 + 32))(v441, v427, v994);
          v1039 = sub_1BE051D94();
          v458 = 0;
          v459 = 0;
          if (v419)
          {
            v200 = v1065;
            if (v437)
            {
              v460 = [v437 primaryTitle];
              if (v460)
              {
                v461 = v460;
                v458 = sub_1BE052434();
                v459 = v462;
              }

              else
              {
                v458 = 0;
                v459 = 0;
              }
            }
          }

          else
          {
            v200 = v1065;
          }

          v463 = v1014;
          v464 = v995;
          sub_1BD0DE19C(v1014, v995, &qword_1EBD41410, &qword_1BE0CA548);
          v465 = (v464 + *(v1000 + 36));
          *v465 = v1039;
          v465[1] = v458;
          v465[2] = v459;
          sub_1BD0DE53C(v463, &qword_1EBD41410, &qword_1BE0CA548);
          v466 = v996;
          sub_1BD0DE204(v464, v996, &qword_1EBD41418, &qword_1BE0CA550);
          sub_1BD0DE19C(v466, v1002, &qword_1EBD41418, &qword_1BE0CA550);
          swift_storeEnumTagMultiPayload();
          sub_1BD2EDD30();
          sub_1BD2EE014();
          v245 = v1015;
          v173 = v1053;
          sub_1BE04F9A4();
          sub_1BD0DE53C(&v1066, &qword_1EBD395E0, &qword_1BE0B8830);

          sub_1BD0DE53C(v466, &qword_1EBD41418, &qword_1BE0CA550);
          v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41480, &qword_1BE0CA5E8);
          (*(*(v467 - 8) + 56))(v245, 0, 1, v467);
          sub_1BD2EE430(v1023, type metadata accessor for AvailablePass);
          goto LABEL_62;
        }

LABEL_34:
        v318 = 0;
        goto LABEL_35;
      }

      v308 = v1054;
      sub_1BD2EE220(v297, v1054, type metadata accessor for PaymentSheet);
      v309 = (*(v1055 + 80) + 16) & ~*(v1055 + 80);
      v300 = swift_allocObject();
      sub_1BD2EE3C8(v308, v300 + v309, type metadata accessor for PaymentSheet);
      v298 = sub_1BD2EE214;
    }

    v310 = sub_1BD2E4D24();
    if (!v310)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

LABEL_63:
  (*(v1041 + 56))(v1063, v182, 1, *(&v1041 + 1));
  v488 = swift_getKeyPath();
  v489 = swift_getKeyPath();
  sub_1BE04D8B4(&v1111);
  v488, v490, v491, v492, v493, v494, v495, v496;
  v489, v497, v498, v499, v500, v501, v502, v503;
  if (v1111 == 2)
  {
    v504 = swift_getKeyPath();
    v505 = swift_getKeyPath();
    sub_1BE04D8B4(&v1111);
    v504, v506, v507, v508, v509, v510, v511, v512;
    v505, v513, v514, v515, v516, v517, v518, v519;
    v520 = v1111;
    if (v1111)
    {
      if ([v1111 type] == 1)
      {
        objc_opt_self();
        v521 = swift_dynamicCastObjCClass();
        if (v521)
        {
          v522 = v521;
          v523 = swift_getKeyPath();
          v524 = swift_getKeyPath();
          sub_1BE04D8B4(&v1111);
          v523, v525, v526, v527, v528, v529, v530, v531;
          v524, v532, v533, v534, v535, v536, v537, v538;
          v539 = v1111;
          if (v1111)
          {
            v540 = [v522 selectedInstallmentOffer];
            if (v540)
            {
              v541 = v540;
              *(&v1041 + 1) = v540;
              v542 = [v539 selectedOfferDetails];
              v543 = swift_getKeyPath();
              v544 = swift_getKeyPath();
              sub_1BE04D8B4(&v1111);
              v543, v545, v546, v547, v548, v549, v550, v551;
              v544, v552, v553, v554, v555, v556, v557, v558;
              v559 = v1111;
              v560 = v1054;
              sub_1BD2EE220(v200, v1054, type metadata accessor for PaymentSheet);
              v561 = (*(v1055 + 80) + 16) & ~*(v1055 + 80);
              v562 = swift_allocObject();
              v563 = v562 + v561;
              v173 = v1053;
              sub_1BD2EE3C8(v560, v563, type metadata accessor for PaymentSheet);
              v1125[0] = v541;
              v1125[1] = v542;
              v1125[2] = v559;
              v1125[3] = sub_1BD2EDC1C;
              v1125[4] = v562;
              v1126 = 0;
              v564 = v962;
              sub_1BD62DDD0(v1125, v962);
              sub_1BD2EE220(v564, v961, type metadata accessor for PaymentOfferInstallmentSummaryView);
              swift_storeEnumTagMultiPayload();
              sub_1BD2EE53C(&qword_1EBD41478, type metadata accessor for PaymentOfferInstallmentSummaryView, &unk_1BE0E9528);
              sub_1BE04F9A4();

              v565 = v564;
LABEL_80:
              sub_1BD2EE430(v565, type metadata accessor for PaymentOfferInstallmentSummaryView);
              v651 = 0;
              goto LABEL_84;
            }

            v520 = v539;
          }
        }
      }
    }
  }

  v566 = swift_getKeyPath();
  v567 = swift_getKeyPath();
  sub_1BE04D8B4(&v1111);
  v566, v568, v569, v570, v571, v572, v573, v574;
  v567, v575, v576, v577, v578, v579, v580, v581;
  if (!v1111)
  {
    v582 = swift_getKeyPath();
    v583 = swift_getKeyPath();
    sub_1BE04D8B4(&v1111);
    v582, v584, v585, v586, v587, v588, v589, v590;
    v583, v591, v592, v593, v594, v595, v596, v597;
    if (v1111 == 20)
    {
      v598 = swift_getKeyPath();
      v599 = swift_getKeyPath();
      sub_1BE04D8B4(&v1111);
      v598, v600, v601, v602, v603, v604, v605, v606;
      v599, v607, v608, v609, v610, v611, v612, v613;
      v614 = v1111;
      if (v1111)
      {
        v615 = swift_getKeyPath();
        v616 = swift_getKeyPath();
        v617 = v971;
        sub_1BE04D8B4(v971);
        v615, v618, v619, v620, v621, v622, v623, v624;
        v616, v625, v626, v627, v628, v629, v630, v631;
        v632 = v972;
        sub_1BD0DE19C(v617, v972, &qword_1EBD520A0, &qword_1BE0B9840);
        sub_1BD2EE430(v617, type metadata accessor for Passes);
        if ((*(v1029 + 48))(v632, 1, v1030) == 1)
        {

          sub_1BD0DE53C(v632, &qword_1EBD520A0, &qword_1BE0B9840);
        }

        else
        {
          sub_1BD49C81C();
          v634 = v633;
          sub_1BD2EE430(v632, type metadata accessor for AvailablePass);
          v635 = sub_1BE052404();
          v634, v636, v637, v638, v639, v640, v641, v642;
          v643 = [v614 eligiblePaymentOfferCriteriaForPassUniqueID:v635 type:1];

          if (v643)
          {
            objc_opt_self();
            v644 = swift_dynamicCastObjCClass();
            if (v644)
            {
              v645 = v644;
              v646 = *(v966 + 32);
              v647 = *MEMORY[0x1E69BC950];
              v648 = sub_1BE04C744();
              v649 = v962;
              (*(*(v648 - 8) + 104))(v962 + v646, v647, v648);
              *v649 = v645;
              *(v649 + 8) = 0u;
              *(v649 + 24) = 0u;
              *(v649 + 40) = 1;
              *(v649 + 48) = 0;
              *(v649 + 56) = 0;
              sub_1BD2EE220(v649, v961, type metadata accessor for PaymentOfferInstallmentSummaryView);
              swift_storeEnumTagMultiPayload();
              sub_1BD2EE53C(&qword_1EBD41478, type metadata accessor for PaymentOfferInstallmentSummaryView, &unk_1BE0E9528);
              v650 = v643;
              sub_1BE04F9A4();

              v565 = v649;
              goto LABEL_80;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v651 = 1;
LABEL_84:
  v652 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41440, &qword_1BE0CA578);
  v653 = 1;
  (*(*(v652 - 8) + 56))(v1059, v651, 1, v652);
  if (sub_1BD2E5488())
  {
    v654 = sub_1BD2E4D24();
    v656 = v655;
    sub_1BD256A50(v654, v655, v1064);
    sub_1BD0D4744(v654, v656, v657, v658, v659, v660, v661, v662);
    v653 = 0;
  }

  v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41448, &qword_1BE0CA580);
  (*(*(v663 - 8) + 56))(v1064, v653, 1, v663);
  v664 = swift_getKeyPath();
  v665 = swift_getKeyPath();
  v666 = v1043;
  sub_1BE04D8B4(v1043);
  v664, v667, v668, v669, v670, v671, v672, v673;
  v665, v674, v675, v676, v677, v678, v679, v680;
  v681 = &v666[v173[9]];
  v682 = *(v681 + 1);
  v1085 = *v681;
  v1086 = v682;
  v683 = *(v681 + 3);
  v1087 = *(v681 + 2);
  v1088 = v683;
  sub_1BD0DE19C(&v1085, &v1111, &qword_1EBD41378, &qword_1BE10B430);
  sub_1BD2EE430(v666, _s14PaymentSummaryVMa);
  v684 = *(&v1085 + 1);
  v1043 = *(&v1086 + 1);
  v685 = v1086;
  v1041 = v1087;
  v686 = *(&v1088 + 1);
  v687 = v1088;
  v688 = swift_getKeyPath();
  v689 = swift_getKeyPath();
  if (v684)
  {
    v690 = v1018;
    sub_1BE04D8B4(v1018);
    v688, v691, v692, v693, v694, v695, v696, v697;
    v689, v698, v699, v700, v701, v702, v703, v704;
    v705 = v1019;
    sub_1BD2EE220(v690, v1019, _s11TotalAmountVMa);
    sub_1BD2EE430(v690, _s14PaymentSummaryVMa);
    v706 = *(v705 + *(v1020 + 48));
    sub_1BD2EE430(v705, _s11TotalAmountVMa);
    v707 = swift_getKeyPath();
    v708 = swift_getKeyPath();
    v709 = v686;
    v710 = v687;
    sub_1BE048C84();
    sub_1BE04D8B4(v1042);
    v707, v711, v712, v713, v714, v715, v716, v717;
    v708, v718, v719, v720, v721, v722, v723, v724;
    v1040 = v709;
    v1039 = v710;
    if (v706)
    {
      v726 = v997;
      v725 = v998;
      v727 = v999;
      (*(v998 + 104))(v997, *MEMORY[0x1E69B8068], v999);
      sub_1BE048C84();
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v729 = result;
      v730 = sub_1BE04B6F4();
      v732 = v731;

      (*(v725 + 8))(v726, v727);
      v733 = 0;
      v734 = 0;
      v686 = 0;
      v735 = 0;
      v685 = 0;
      v736 = 0;
      v737 = 0;
      v738 = *(&v1041 + 1);
    }

    else
    {
      v798 = v1054;
      sub_1BD2EE220(v1065, v1054, type metadata accessor for PaymentSheet);
      v799 = (*(v1055 + 80) + 16) & ~*(v1055 + 80);
      v734 = swift_allocObject();
      sub_1BD2EE3C8(v798, v734 + v799, type metadata accessor for PaymentSheet);
      v800 = v710;
      v738 = *(&v1041 + 1);
      sub_1BE048C84();
      v801 = v709;
      v802 = v800;
      v803 = sub_1BE048C84();
      v730 = 0;
      v732 = 0;
      v737 = 0x4030000000000000;
      v733 = sub_1BD2EDC10;
      v735 = v800;
      v736 = v803;
    }

    v804 = v1025;
    v805 = v1016;
    v806 = &v1016[*(v1025 + 36)];
    *v806 = v686;
    *(v806 + 1) = v735;
    *(v806 + 2) = v685;
    *(v806 + 3) = v736;
    *(v806 + 4) = 0;
    *(v806 + 5) = v737;
    *(v806 + 6) = 0;
    v807 = (v805 + v804[12]);
    *(v805 + v804[13]) = 0;
    v808 = v805 + v804[14];
    LOBYTE(v1097) = 0;
    sub_1BE051694();
    v809 = *(&v1111 + 1);
    *v808 = v1111;
    *(v808 + 8) = v809;
    sub_1BD2EE3C8(v1042, v805, _s8MerchantVMa);
    v810 = (v805 + v804[10]);
    *v810 = v1041;
    v810[1] = v738;
    *v807 = v730;
    v807[1] = v732;
    v811 = (v805 + v804[11]);
    *v811 = v733;
    v811[1] = v734;
    v812 = v1017;
    sub_1BD0DE204(v805, v1017, &qword_1EBD413B8, &qword_1BE0CA4E8);
    sub_1BD0DE19C(v812, v1027, &qword_1EBD413B8, &qword_1BE0CA4E8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD41468, &qword_1EBD413B8, &qword_1BE0CA4E8, &unk_1BE0B96C0);
    sub_1BD0DE4F4(&qword_1EBD41470, &qword_1EBD413A8, &qword_1BE0CA4D8, &unk_1BE0B96C0);
    v794 = v1057;
    sub_1BE04F9A4();
    sub_1BD0DE53C(&v1085, &qword_1EBD41378, &qword_1BE10B430);
    v1043, v813, v814, v815, v816, v817, v818, v819;

    sub_1BD0DE53C(v812, &qword_1EBD413B8, &qword_1BE0CA4E8);
    v796 = 0;
    v797 = v1062;
    v173 = v1053;
  }

  else
  {
    v739 = v1004;
    sub_1BE04D8B4(v1004);
    v688, v740, v741, v742, v743, v744, v745, v746;
    v689, v747, v748, v749, v750, v751, v752, v753;
    v754 = (v739 + v173[10]);
    v755 = *v754;
    v756 = v754[1];
    v758 = v754[2];
    v757 = v754[3];
    v759 = v754[5];
    v760 = v754[6];
    v761 = *v754;
    v1042 = v754[4];
    sub_1BD2ED8B0(v761, v756, v758, v757, v1042, v759, v760);
    sub_1BD2EE430(v739, _s14PaymentSummaryVMa);
    if (v756)
    {
      v762 = swift_getKeyPath();
      v763 = swift_getKeyPath();
      v1043 = v759;
      v764 = v758;
      v1040 = v758;
      v765 = v763;
      v766 = v760;
      v1039 = v757;
      sub_1BE048C84();
      v767 = v977;
      sub_1BE04D8B4(v977);
      v762, v768, v769, v770, v771, v772, v773, v774;
      v765, v775, v776, v777, v778, v779, v780, v781;
      *(&v1041 + 1) = v755;
      v782 = v1054;
      sub_1BD2EE220(v1065, v1054, type metadata accessor for PaymentSheet);
      v783 = (*(v1055 + 80) + 16) & ~*(v1055 + 80);
      v784 = swift_allocObject();
      sub_1BD2EE3C8(v782, v784 + v783, type metadata accessor for PaymentSheet);
      *&v1041 = v756;
      v785 = v1028;
      v786 = v767 + *(v1028 + 36);
      *v786 = 0x4030000000000000;
      *(v786 + 1) = v760;
      *(v786 + 2) = v764;
      *(v786 + 3) = v757;
      v786[32] = 0;
      v787 = (v767 + v785[12]);
      *(v767 + v785[13]) = 0;
      v788 = v767 + v785[14];
      LOBYTE(v1097) = 0;
      v789 = v1043;
      sub_1BE048C84();
      sub_1BE051694();
      v790 = *(&v1111 + 1);
      *v788 = v1111;
      *(v788 + 1) = v790;
      v791 = (v767 + v785[10]);
      v792 = v1042;
      *v791 = v1042;
      v791[1] = v789;
      *v787 = 0;
      v787[1] = 0;
      v793 = (v767 + v785[11]);
      *v793 = sub_1BD2EDC04;
      v793[1] = v784;
      sub_1BD0DE19C(v767, v1027, &qword_1EBD413A8, &qword_1BE0CA4D8);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD41468, &qword_1EBD413B8, &qword_1BE0CA4E8, &unk_1BE0B96C0);
      sub_1BD0DE4F4(&qword_1EBD41470, &qword_1EBD413A8, &qword_1BE0CA4D8, &unk_1BE0B96C0);
      v794 = v1057;
      sub_1BE04F9A4();
      sub_1BD2ED910(*(&v1041 + 1), v1041, v1040, v1039, v792, v1043, v760, v795);
      v173 = v1053;
      sub_1BD0DE53C(v767, &qword_1EBD413A8, &qword_1BE0CA4D8);
      v796 = 0;
      v797 = v1062;
    }

    else
    {
      v796 = 1;
      v797 = v1062;
      v794 = v1057;
    }
  }

  v820 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41450, &qword_1BE0CA588);
  (*(*(v820 - 8) + 56))(v794, v796, 1, v820);
  v821 = swift_getKeyPath();
  v822 = swift_getKeyPath();
  v823 = v1031;
  v824 = v1060;
  sub_1BE04D8B4(v1031);
  v821, v825, v826, v827, v828, v829, v830, v831;
  v822, v832, v833, v834, v835, v836, v837, v838;
  v839 = v1033;
  sub_1BD0DE19C(v823 + v173[11], v1033, &qword_1EBD41380, &qword_1BE10B380);
  sub_1BD2EE430(v823, _s14PaymentSummaryVMa);
  v840 = v1034;
  if ((*(v1032 + 48))(v839, 1, v1034) == 1)
  {
    sub_1BD0DE53C(v839, &qword_1EBD41380, &qword_1BE10B380);
    v841 = 1;
    v842 = v1065;
    v843 = v824;
    v844 = v1036;
  }

  else
  {
    v845 = v1007;
    sub_1BD2EE3C8(v839, v1007, type metadata accessor for DeferredPaymentRequest);
    v846 = *(v845 + v840[9]);
    v847 = v1006;
    v848 = v1008;
    sub_1BD0DE19C(v845 + v840[7], &v1008[v1006[7]], &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BD0DE19C(v845 + v840[8], v848 + v847[8], &unk_1EBD3D260, &unk_1BE0C0F20);
    v849 = v845[2];
    v850 = v845[3];
    *v848 = xmmword_1BE0C9FB0;
    *(v848 + 16) = v846;
    v851 = (v848 + v847[9]);
    *v851 = v849;
    v851[1] = v850;
    *(v848 + v847[10]) = 0;
    v852 = swift_getKeyPath();
    v853 = swift_getKeyPath();
    v854 = v846;
    sub_1BE048C84();
    v855 = v1009;
    sub_1BE04D8B4(v1009);
    v852, v856, v857, v858, v859, v860, v861, v862;
    v853, v863, v864, v865, v866, v867, v868, v869;
    v843 = v824;
    v844 = v1036;
    v870 = *(v1036 + 36);
    sub_1BD2EE220(v848, &v855[v870], type metadata accessor for DeferredPaymentRequestSummaryRows);
    (*(v1005 + 56))(&v855[v870], 0, 1, v847);
    v871 = v845[5];
    v1053 = v845[4];
    v872 = v1054;
    sub_1BD2EE220(v1065, v1054, type metadata accessor for PaymentSheet);
    v873 = (*(v1055 + 80) + 16) & ~*(v1055 + 80);
    v874 = swift_allocObject();
    sub_1BD2EE3C8(v872, v874 + v873, type metadata accessor for PaymentSheet);
    v875 = &v855[v844[12]];
    v855[v844[13]] = 0;
    v876 = &v855[v844[14]];
    LOBYTE(v1097) = 0;
    sub_1BE048C84();
    sub_1BE051694();
    sub_1BD2EE430(v848, type metadata accessor for DeferredPaymentRequestSummaryRows);
    sub_1BD2EE430(v845, type metadata accessor for DeferredPaymentRequest);
    v877 = *(&v1111 + 1);
    *v876 = v1111;
    *(v876 + 1) = v877;
    v878 = &v855[v844[10]];
    *v878 = v1053;
    v878[1] = v871;
    *v875 = 0;
    *(v875 + 1) = 0;
    v797 = v1062;
    v879 = &v855[v844[11]];
    *v879 = sub_1BD2EDBF8;
    v879[1] = v874;
    v880 = v855;
    v842 = v1065;
    sub_1BD0DE204(v880, v797, &qword_1EBD41398, &qword_1BE0CA4C8);
    v841 = 0;
  }

  (*(v1035 + 56))(v797, v841, 1, v844);
  v881 = *(v843 + qword_1EBDAB300);
  if (v881)
  {
    v882 = *(v843 + qword_1EBDAB308);
    v883 = v1054;
    sub_1BD2EE220(v842, v1054, type metadata accessor for PaymentSheet);
    v884 = v1055;
    v885 = (*(v1055 + 80) + 16) & ~*(v1055 + 80);
    v886 = swift_allocObject();
    sub_1BD2EE3C8(v883, v886 + v885, type metadata accessor for PaymentSheet);
    sub_1BE048964();
    sub_1BD1C7824(v882, v881, sub_1BD2EDBEC, v886, &v1089);
    v1039 = *(&v1089 + 1);
    v1040 = v1089;
    v1060 = *(&v1090 + 1);
    v1038 = v1090;
    v1053 = v1091;
    v1043 = v1092;
    v1036 = v1093;
    v1042 = v1094;
    *(&v1041 + 1) = v1095;
    *&v1041 = v1096;
    v881, v887, v888, v889, v890, v891, v892, v893;
  }

  else
  {
    v1040 = 0;
    v1039 = 0;
    v1038 = 0;
    v1060 = 0;
    v1053 = 0;
    v1043 = 0;
    v1036 = 0;
    v1042 = 0;
    v1041 = 0uLL;
    v883 = v1054;
    v884 = v1055;
  }

  v894 = swift_getKeyPath();
  v895 = swift_getKeyPath();
  sub_1BE04D8B4(&v1097);
  v894, v896, v897, v898, v899, v900, v901, v902;
  v895, v903, v904, v905, v906, v907, v908, v909;
  v1121 = v1107;
  v1122 = v1108;
  v1123 = v1109;
  v1124 = v1110;
  v1117 = v1103;
  v1118 = v1104;
  v1119 = v1105;
  v1120 = v1106;
  v1113 = v1099;
  v1114 = v1100;
  v1115 = v1101;
  v1116 = v1102;
  v1111 = v1097;
  v1112 = v1098;
  v1055 = type metadata accessor for PaymentSheet;
  sub_1BD2EE220(v842, v883, type metadata accessor for PaymentSheet);
  v910 = (*(v884 + 80) + 16) & ~*(v884 + 80);
  v911 = swift_allocObject();
  sub_1BD2EE3C8(v883, v911 + v910, type metadata accessor for PaymentSheet);
  sub_1BD35DD80(&v1111, sub_1BD2EDB70, v911, v1058);
  v912 = swift_getKeyPath();
  v913 = swift_getKeyPath();
  sub_1BE04D8B4(&v1066);
  v912, v914, v915, v916, v917, v918, v919, v920;
  v913, v921, v922, v923, v924, v925, v926, v927;
  v1107 = v1076;
  v1108 = v1077;
  v1109 = v1078;
  v1110 = v1079;
  v1103 = v1072;
  v1104 = v1073;
  v1105 = v1074;
  v1106 = v1075;
  v1099 = v1068;
  v1100 = v1069;
  v1101 = v1070;
  v1102 = v1071;
  v1097 = v1066;
  v1098 = v1067;
  sub_1BD2EE220(v1065, v883, v1055);
  v928 = swift_allocObject();
  sub_1BD2EE3C8(v883, v928 + v910, type metadata accessor for PaymentSheet);
  v929 = v1050;
  sub_1BD89BF6C(&v1097, sub_1BD2EDB7C, v928, v1050);
  v930 = v1044;
  sub_1BD0DE19C(v1061, v1044, &qword_1EBD41438, &qword_1BE0CA570);
  v931 = v1045;
  sub_1BD0DE19C(v1063, v1045, &qword_1EBD41428, &qword_1BE0CA560);
  v932 = v1046;
  sub_1BD0DE19C(v1059, v1046, &qword_1EBD413D8, &qword_1BE0CA508);
  v933 = v1047;
  sub_1BD0DE19C(v1064, v1047, &qword_1EBD413C8, &qword_1BE0CA4F8);
  v934 = v1048;
  sub_1BD0DE19C(v1057, v1048, &qword_1EBD413C0, &qword_1BE0CA4F0);
  v935 = v1049;
  sub_1BD0DE19C(v1062, v1049, &qword_1EBD413A0, &qword_1BE0CA4D0);
  v936 = v1051;
  sub_1BD0DE19C(v1058, v1051, &qword_1EBD41390, &qword_1BE0CA4C0);
  sub_1BD0DE19C(v929, v1052, &qword_1EBD41388, &qword_1BE0CA4B8);
  v937 = v1037;
  sub_1BD0DE19C(v930, v1037, &qword_1EBD41438, &qword_1BE0CA570);
  v938 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41458, &qword_1BE0CA590);
  sub_1BD0DE19C(v931, v937 + v938[12], &qword_1EBD41428, &qword_1BE0CA560);
  sub_1BD0DE19C(v932, v937 + v938[16], &qword_1EBD413D8, &qword_1BE0CA508);
  sub_1BD0DE19C(v933, v937 + v938[20], &qword_1EBD413C8, &qword_1BE0CA4F8);
  sub_1BD0DE19C(v934, v937 + v938[24], &qword_1EBD413C0, &qword_1BE0CA4F0);
  sub_1BD0DE19C(v935, v937 + v938[28], &qword_1EBD413A0, &qword_1BE0CA4D0);
  v939 = (v937 + v938[32]);
  v940 = v1040;
  *&v1080 = v1040;
  v941 = v1039;
  *(&v1080 + 1) = v1039;
  v942 = v1038;
  *&v1081 = v1038;
  *(&v1081 + 1) = v1060;
  *&v1082 = v1053;
  *(&v1082 + 1) = v1043;
  v943 = v1036;
  *&v1083 = v1036;
  *(&v1083 + 1) = v1042;
  *&v1084 = *(&v1041 + 1);
  *(&v1084 + 1) = v1041;
  v944 = v1083;
  v939[2] = v1082;
  v939[3] = v944;
  v939[4] = v1084;
  v945 = v1081;
  *v939 = v1080;
  v939[1] = v945;
  sub_1BD0DE19C(v936, v937 + v938[36], &qword_1EBD41390, &qword_1BE0CA4C0);
  v946 = v1052;
  sub_1BD0DE19C(v1052, v937 + v938[40], &qword_1EBD41388, &qword_1BE0CA4B8);
  sub_1BD0DE19C(&v1080, &v1066, &qword_1EBD41460, &qword_1BE0CA598);
  sub_1BD0DE53C(v1050, &qword_1EBD41388, &qword_1BE0CA4B8);
  sub_1BD0DE53C(v1058, &qword_1EBD41390, &qword_1BE0CA4C0);
  sub_1BD0DE53C(v1062, &qword_1EBD413A0, &qword_1BE0CA4D0);
  sub_1BD0DE53C(v1057, &qword_1EBD413C0, &qword_1BE0CA4F0);
  sub_1BD0DE53C(v1064, &qword_1EBD413C8, &qword_1BE0CA4F8);
  sub_1BD0DE53C(v1059, &qword_1EBD413D8, &qword_1BE0CA508);
  sub_1BD0DE53C(v1063, &qword_1EBD41428, &qword_1BE0CA560);
  sub_1BD0DE53C(v1061, &qword_1EBD41438, &qword_1BE0CA570);
  sub_1BD0DE53C(v946, &qword_1EBD41388, &qword_1BE0CA4B8);
  sub_1BD0DE53C(v1051, &qword_1EBD41390, &qword_1BE0CA4C0);
  *&v1066 = v940;
  *(&v1066 + 1) = v941;
  *&v1067 = v942;
  *(&v1067 + 1) = v1060;
  *&v1068 = v1053;
  *(&v1068 + 1) = v1043;
  *&v1069 = v943;
  *(&v1069 + 1) = v1042;
  *&v1070 = *(&v1041 + 1);
  *(&v1070 + 1) = v1041;
  sub_1BD0DE53C(&v1066, &qword_1EBD41460, &qword_1BE0CA598);
  sub_1BD0DE53C(v1049, &qword_1EBD413A0, &qword_1BE0CA4D0);
  sub_1BD0DE53C(v1048, &qword_1EBD413C0, &qword_1BE0CA4F0);
  sub_1BD0DE53C(v1047, &qword_1EBD413C8, &qword_1BE0CA4F8);
  sub_1BD0DE53C(v1046, &qword_1EBD413D8, &qword_1BE0CA508);
  sub_1BD0DE53C(v1045, &qword_1EBD41428, &qword_1BE0CA560);
  return sub_1BD0DE53C(v1044, &qword_1EBD41438, &qword_1BE0CA570);
}

void sub_1BD2E4300(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for PeerPaymentModel(0) + 24);
  v9 = *v8;
  if (*v8 < 2uLL)
  {
    v10 = 0uLL;
    if (v9 == 1 || (*(v8 + 80) & 1) == 0)
    {
      v39 = 0;
      v40 = -256;
      v41 = 0uLL;
      v42 = 0uLL;
LABEL_18:
      *a2 = v10;
      *(a2 + 16) = v41;
      *(a2 + 32) = v42;
      *(a2 + 48) = v39;
      *(a2 + 56) = v40;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0B98D0;
    v12 = sub_1BE0501E4();
    *(v11 + 32) = v12;
    v13 = sub_1BE0501F4();
    *(v11 + 33) = v13;
    v14 = sub_1BE050224();
    *(v11 + 34) = v14;
    v15 = sub_1BE050214();
    sub_1BE050214();
    if (sub_1BE050214() != v12)
    {
      v15 = sub_1BE050214();
    }

    sub_1BE050214();
    if (sub_1BE050214() != v13)
    {
      v15 = sub_1BE050214();
    }

    v11, v16, v17, v18, v19, v20, v21, v22;
    sub_1BE050214();
    if (sub_1BE050214() != v14)
    {
      v15 = sub_1BE050214();
    }

    sub_1BE04E1F4();
    v57 = 0;
    v56 = 1;
    v43 = 1;
    LOWORD(v44) = 1;
    LOBYTE(v45) = v15;
    v46 = v23;
    v47 = v24;
    v48 = v25;
    v49 = v26;
    v50 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD414F8, qword_1BE100A50);
    sub_1BD2EE288();
    sub_1BD2EE2DC();
    sub_1BE04F9A4();
LABEL_17:
    v10 = v51;
    v41 = v52;
    v42 = v53;
    v39 = v54;
    v40 = v55;
    goto LABEL_18;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69B8050], v4);
  v27 = v9;
  v28 = PKPassKitBundle();
  if (v28)
  {
    v29 = v28;
    v30 = sub_1BE04B6F4();
    v32 = v31;

    (*(v5 + 8))(v7, v4);
    v33 = [v27 fees];
    v34 = [v27 feesCurrency];
    v35 = PKFormattedCurrencyStringFromNumber();

    if (v35)
    {
      v36 = sub_1BE052434();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0xE000000000000000;
    }

    v57 = 0;
    v43 = v30;
    v44 = v32;
    v45 = v36;
    v46 = v38;
    HIBYTE(v50) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD414F8, qword_1BE100A50);
    sub_1BD2EE288();
    sub_1BD2EE2DC();
    sub_1BE04F9A4();

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t (*sub_1BD2E46D8())()
{
  v1 = type metadata accessor for PaymentSheet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v50 - v8);
  v10 = type metadata accessor for PeerPaymentModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((PKOslo2024UIUpdatesEnabled() & 1) == 0)
  {
    v51 = v2;
    v52 = v0;
    v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    KeyPath = swift_getKeyPath();
    v15 = swift_getKeyPath();
    sub_1BE04D8B4(v9);
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
    v15, v23, v24, v25, v26, v27, v28, v29;
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1BD0DE53C(v9, &qword_1EBD45480, &unk_1BE0B8C30);
    }

    else
    {
      sub_1BD2EE3C8(v9, v13, type metadata accessor for PeerPaymentModel);
      if (v13[*(v10 + 52)] == 1 && v13[*(v10 + 44)] == 1)
      {
        v30 = swift_getKeyPath();
        v31 = swift_getKeyPath();
        sub_1BE04D8B4(v6);
        v30, v32, v33, v34, v35, v36, v37, v38;
        v31, v39, v40, v41, v42, v43, v44, v45;
        sub_1BD2EE430(v13, type metadata accessor for PeerPaymentModel);
        LOBYTE(v30) = *(v6 + *(v4 + 24));
        sub_1BD2EE430(v6, type metadata accessor for Passes);
        if ((v30 & 1) == 0)
        {
          v46 = v53;
          sub_1BD2EE220(v52, v53, type metadata accessor for PaymentSheet);
          v47 = (*(v51 + 80) + 16) & ~*(v51 + 80);
          v48 = swift_allocObject();
          sub_1BD2EE3C8(v46, v48 + v47, type metadata accessor for PaymentSheet);
          return sub_1BD2EE3BC;
        }
      }

      else
      {
        sub_1BD2EE430(v13, type metadata accessor for PeerPaymentModel);
      }
    }
  }

  return 0;
}

void sub_1BD2E4AA4(uint64_t a1)
{
  v2 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD2EE220(a1, v10, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = type metadata accessor for WrappedPass;
      v13 = v10;
LABEL_12:
      sub_1BD2EE430(v13, v12);
      return;
    }

    sub_1BD2EE3C8(v10, v7, type metadata accessor for PlaceholderPass);
    v15 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v15 setCardType_];
    sub_1BD2EE430(v7, type metadata accessor for PlaceholderPass);
LABEL_7:
    v16 = [v15 paymentPass];

    if (!v16)
    {
      return;
    }

    v17 = (a1 + *(type metadata accessor for AvailablePass(0) + 52));
    if (*v17)
    {
      v18 = v17[3];
      v19 = v18;
    }

    else
    {
      v18 = 0;
    }

    *v4 = v16;
    v4[1] = v18;
    swift_storeEnumTagMultiPayload();
    sub_1BD6B56B4(v4, 1);
    v12 = type metadata accessor for Analytics.StateChange;
    v13 = v4;
    goto LABEL_12;
  }

  v14 = *v10;
  v15 = [*v10 secureElementPass];

  if (v15)
  {
    goto LABEL_7;
  }
}

uint64_t (*sub_1BD2E4D24())()
{
  v1 = type metadata accessor for PaymentSheet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*(v0 + 8) + qword_1EBDAB308) == 4)
  {
    return 0;
  }

  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(v6);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  v24 = *(v6 + *(v4 + 28));
  sub_1BE048C84();
  sub_1BD2EE430(v6, type metadata accessor for Passes);
  v25 = v24[2];
  v24, v26, v27, v28, v29, v30, v31, v32;
  if (!v25)
  {
    v33 = swift_getKeyPath();
    v34 = swift_getKeyPath();
    sub_1BE04D8B4(v6);
    v33, v35, v36, v37, v38, v39, v40, v41;
    v34, v42, v43, v44, v45, v46, v47, v48;
    v49 = *(v6 + *(v4 + 32));
    sub_1BD2EE430(v6, type metadata accessor for Passes);
    if (v49 != 1)
    {
      return 0;
    }
  }

  sub_1BD2EE220(v0, &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentSheet);
  v50 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v51 = swift_allocObject();
  sub_1BD2EE3C8(&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v50, type metadata accessor for PaymentSheet);
  return sub_1BD2EE510;
}

void sub_1BD2E4FB4()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentSheet(0);
  v83 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v84 = v3;
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v82);
  v6 = (&v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (v0 + *(v2 + 72));
  v9 = *v7;
  v8 = v7[1];
  aBlock = *v7;
  v86 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41370, &qword_1BE0CA480);
  sub_1BE0516A4();
  v10 = v91;
  if (v91)
  {
    goto LABEL_9;
  }

  v81 = v4;
  v11 = [objc_opt_self() sharedService];
  v12 = *(v1 + 8);
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  sub_1BE04D8B4(&aBlock);
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  v29 = aBlock;
  v30 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService:v11 paymentOffersController:aBlock];

  aBlock = v9;
  v86 = v8;
  v91 = v30;
  sub_1BE0516B4();
  aBlock = v9;
  v86 = v8;
  sub_1BE0516A4();
  v31 = v91;
  if (v91)
  {
    v32 = *(v12 + qword_1EBDAB310 + 8);
    if (v32)
    {
      sub_1BE048C84();
      v33 = sub_1BE052404();
      v32, v34, v35, v36, v37, v38, v39, v40;
    }

    else
    {
      v33 = 0;
    }

    [v31 setReferrerIdentifier_];
  }

  aBlock = v9;
  v86 = v8;
  sub_1BE0516A4();
  v10 = v91;
  v4 = v81;
  if (v91)
  {
    [v91 setIncludePendingVerificationCredentials_];
LABEL_9:
  }

  aBlock = v9;
  v86 = v8;
  sub_1BE0516A4();
  v41 = v91;
  if (v91)
  {
    v42 = v1 + *(v2 + 76);
    v43 = *v42;
    v44 = *(v42 + 8);
    LOBYTE(aBlock) = v43;
    v86 = v44;
    LOBYTE(v91) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
    sub_1BD6B2184(4, 1u, 0);
    v45 = swift_getKeyPath();
    v46 = swift_getKeyPath();
    sub_1BE04D8B4(v6);
    v45, v47, v48, v49, v50, v51, v52, v53;
    v46, v54, v55, v56, v57, v58, v59, v60;
    v61 = *(v6 + *(v82 + 44));
    sub_1BE048C84();
    sub_1BD2EE430(v6, type metadata accessor for Passes);
    if (v61)
    {
      type metadata accessor for PKPaymentNetwork(0);
      v62 = sub_1BE052724();
      v61, v63, v64, v65, v66, v67, v68, v69;
    }

    else
    {
      v62 = 0;
    }

    [v41 setAllowedPaymentNetworks_];

    sub_1BD2EE220(v1, v4, type metadata accessor for PaymentSheet);
    v70 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v71 = swift_allocObject();
    sub_1BD2EE3C8(v4, v71 + v70, type metadata accessor for PaymentSheet);
    v89 = sub_1BD2EE490;
    v90 = v71;
    aBlock = MEMORY[0x1E69E9820];
    v86 = 1107296256;
    v87 = sub_1BD3CC8C0;
    v88 = &block_descriptor_47;
    v72 = _Block_copy(&aBlock);
    v90, v73, v74, v75, v76, v77, v78, v79;
    [v41 preflightWithCompletion_];
    _Block_release(v72);
  }
}

uint64_t sub_1BD2E5488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v143 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v143 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v143 - v7;
  v148 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v148);
  v10 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v143 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v143 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v143 - v18);
  v20 = type metadata accessor for PeerPaymentModel(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKOslo2024UIUpdatesEnabled();
  if (result)
  {
    v144 = v5;
    v145 = v16;
    v146 = v10;
    v25 = *(v149 + 8);
    KeyPath = swift_getKeyPath();
    v27 = swift_getKeyPath();
    v147 = v25;
    sub_1BE04D8B4(v19);
    KeyPath, v28, v29, v30, v31, v32, v33, v34;
    v27, v35, v36, v37, v38, v39, v40, v41;
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1BD0DE53C(v19, &qword_1EBD45480, &unk_1BE0B8C30);
    }

    else
    {
      sub_1BD2EE3C8(v19, v23, type metadata accessor for PeerPaymentModel);
      if (v23[*(v20 + 52)] == 1)
      {
        v42 = swift_getKeyPath();
        v43 = swift_getKeyPath();
        v44 = v145;
        sub_1BE04D8B4(v145);
        v42, v45, v46, v47, v48, v49, v50, v51;
        v43, v52, v53, v54, v55, v56, v57, v58;
        LOBYTE(v42) = *(v44 + *(v148 + 24));
        sub_1BD2EE430(v44, type metadata accessor for Passes);
        v59 = v2;
        v60 = v146;
        if (v42)
        {
          sub_1BD2EE430(v23, type metadata accessor for PeerPaymentModel);
        }

        else
        {
          v123 = v23[*(v20 + 44)];
          sub_1BD2EE430(v23, type metadata accessor for PeerPaymentModel);
          if ((v123 & 1) == 0)
          {
            return 0;
          }
        }

LABEL_9:
        v61 = swift_getKeyPath();
        v62 = swift_getKeyPath();
        sub_1BE04D8B4(v13);
        v61, v63, v64, v65, v66, v67, v68, v69;
        v62, v70, v71, v72, v73, v74, v75, v76;
        v77 = v148;
        if (*(v13 + *(v148 + 24)) == 1 && (sub_1BD0DE19C(v13, v8, &qword_1EBD520A0, &qword_1BE0B9840), v78 = type metadata accessor for AvailablePass(0), v79 = (*(*(v78 - 8) + 48))(v8, 1, v78), sub_1BD0DE53C(v8, &qword_1EBD520A0, &qword_1BE0B9840), v79 == 1) && !*(*(v13 + *(v77 + 28)) + 16))
        {
          v124 = v144;
          sub_1BD4941F8(v144);
          v125 = type metadata accessor for UnavailablePass(0);
          v126 = (*(*(v125 - 8) + 48))(v124, 1, v125);
          sub_1BD0DE53C(v124, &qword_1EBD3C3F8, &qword_1BE0DB080);
          sub_1BD2EE430(v13, type metadata accessor for Passes);
          if (v126 == 1)
          {
            v127 = swift_getKeyPath();
            v128 = swift_getKeyPath();
            sub_1BE04D8B4(&v150);
            v127, v129, v130, v131, v132, v133, v134, v135;
            v128, v136, v137, v138, v139, v140, v141, v142;
            if (v150 != 1)
            {
              return 0;
            }
          }
        }

        else
        {
          sub_1BD2EE430(v13, type metadata accessor for Passes);
        }

        if ((sub_1BD2DF874() & 1) == 0)
        {
          return 1;
        }

        v80 = swift_getKeyPath();
        v81 = swift_getKeyPath();
        v82 = v145;
        sub_1BE04D8B4(v145);
        v80, v83, v84, v85, v86, v87, v88, v89;
        v81, v90, v91, v92, v93, v94, v95, v96;
        v97 = *(v82 + *(v77 + 28));
        sub_1BE048C84();
        sub_1BD2EE430(v82, type metadata accessor for Passes);
        v98 = v97[2];
        v97, v99, v100, v101, v102, v103, v104, v105;
        if (v98)
        {
          return 1;
        }

        v106 = swift_getKeyPath();
        v107 = swift_getKeyPath();
        sub_1BE04D8B4(v60);
        v106, v108, v109, v110, v111, v112, v113, v114;
        v107, v115, v116, v117, v118, v119, v120, v121;
        sub_1BD49404C(v59);
        sub_1BD2EE430(v60, type metadata accessor for Passes);
        v122 = type metadata accessor for UnavailablePass(0);
        LODWORD(v106) = (*(*(v122 - 8) + 48))(v59, 1, v122);
        sub_1BD0DE53C(v59, &qword_1EBD3C3F8, &qword_1BE0DB080);
        return v106 == 1;
      }

      sub_1BD2EE430(v23, type metadata accessor for PeerPaymentModel);
    }

    v59 = v2;
    v60 = v146;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1BD2E5BDC@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v249 = &v218 - v4;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20, &unk_1BE0DAD80);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v218 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v238 = &v218 - v7;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v250);
  v243 = &v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v242 = &v218 - v10;
  v221 = sub_1BE04BD74();
  v220 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v219 = &v218 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PaymentSheet(0);
  v234 = *(v12 - 8);
  v13 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v229 = &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v225 = &v218 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v227 = &v218 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v228 = &v218 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v230 = &v218 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v231 = &v218 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v218 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30, &qword_1BE0B8530);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = (&v218 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = (&v218 - v31);
  v245 = type metadata accessor for Passes(0);
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v34 = (&v218 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v1 + 8);
  v224 = qword_1EBDAB308;
  v237 = *(v35 + qword_1EBDAB308);
  KeyPath = swift_getKeyPath();
  v37 = swift_getKeyPath();
  sub_1BE04D8B4(&v257);
  KeyPath, v38, v39, v40, v41, v42, v43, v44;
  v37, v45, v46, v47, v48, v49, v50, v51;
  v236 = v257;
  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v246 = v34;
  sub_1BE04D8B4(v34);
  v52, v54, v55, v56, v57, v58, v59, v60;
  v53, v61, v62, v63, v64, v65, v66, v67;
  v68 = swift_getKeyPath();
  v69 = swift_getKeyPath();
  sub_1BE04D8B4(&v252);
  v68, v70, v71, v72, v73, v74, v75, v76;
  v69, v77, v78, v79, v80, v81, v82, v83;
  v259 = v254;
  v260 = v255;
  v261 = v256;
  v257 = v252;
  v258 = v253;
  v84 = swift_getKeyPath();
  v85 = swift_getKeyPath();
  v247 = v32;
  sub_1BE04D8B4(v32);
  v84, v86, v87, v88, v89, v90, v91, v92;
  v85, v93, v94, v95, v96, v97, v98, v99;
  v100 = swift_getKeyPath();
  v101 = swift_getKeyPath();
  sub_1BE04D8B4(v29);
  v100, v102, v103, v104, v105, v106, v107, v108;
  v101, v109, v110, v111, v112, v113, v114, v115;
  v116 = _s14PaymentSummaryVMa(0);
  v117 = *(*(v116 - 8) + 56);
  v248 = v29;
  v117(v29, 0, 1, v116);
  v241 = [*(v35 + qword_1EBDAAD68 + 32) paymentOffersController];
  v118 = swift_getKeyPath();
  v119 = swift_getKeyPath();
  sub_1BE04D8B4(&v252);
  v118, v120, v121, v122, v123, v124, v125, v126;
  v119, v127, v128, v129, v130, v131, v132, v133;
  v235 = v252;
  sub_1BD2EE220(v1, v26, type metadata accessor for PaymentSheet);
  v134 = (*(v234 + 80) + 16) & ~*(v234 + 80);
  v234 = swift_allocObject();
  sub_1BD2EE3C8(v26, v234 + v134, type metadata accessor for PaymentSheet);
  sub_1BD2EE220(v1, v26, type metadata accessor for PaymentSheet);
  v233 = swift_allocObject();
  v222 = v26;
  sub_1BD2EE3C8(v26, v233 + v134, type metadata accessor for PaymentSheet);
  v135 = v231;
  sub_1BD2EE220(v1, v231, type metadata accessor for PaymentSheet);
  v232 = swift_allocObject();
  sub_1BD2EE3C8(v135, v232 + v134, type metadata accessor for PaymentSheet);
  v136 = v230;
  sub_1BD2EE220(v1, v230, type metadata accessor for PaymentSheet);
  v231 = swift_allocObject();
  sub_1BD2EE3C8(v136, v231 + v134, type metadata accessor for PaymentSheet);
  v137 = v228;
  sub_1BD2EE220(v1, v228, type metadata accessor for PaymentSheet);
  v230 = swift_allocObject();
  sub_1BD2EE3C8(v137, v230 + v134, type metadata accessor for PaymentSheet);
  v138 = v227;
  sub_1BD2EE220(v1, v227, type metadata accessor for PaymentSheet);
  v228 = swift_allocObject();
  sub_1BD2EE3C8(v138, v228 + v134, type metadata accessor for PaymentSheet);
  v227 = sub_1BD2EB210();
  v226 = v139;
  if (*(v35 + v224) == 10)
  {
    v140 = v220;
    v141 = v219;
    v142 = v221;
    (*(v220 + 104))(v219, *MEMORY[0x1E69B8070], v221);
    v224 = sub_1BE04B714();
    v223 = v143;
    (*(v140 + 8))(v141, v142);
  }

  else
  {
    if (qword_1EBD36C30 != -1)
    {
      swift_once();
    }

    v224 = qword_1EBDAB188;
    v223 = unk_1EBDAB190;
    sub_1BE048C84();
  }

  v144 = v225;
  sub_1BD2EE220(v1, v225, type metadata accessor for PaymentSheet);
  v221 = swift_allocObject();
  sub_1BD2EE3C8(v144, v221 + v134, type metadata accessor for PaymentSheet);
  v145 = v222;
  sub_1BD2EE220(v1, v222, type metadata accessor for PaymentSheet);
  v220 = swift_allocObject();
  sub_1BD2EE3C8(v145, v220 + v134, type metadata accessor for PaymentSheet);
  v146 = v229;
  sub_1BD2EE220(v1, v229, type metadata accessor for PaymentSheet);
  v222 = swift_allocObject();
  sub_1BD2EE3C8(v146, &v222[v134], type metadata accessor for PaymentSheet);
  LODWORD(v225) = sub_1BD2DF874();
  v147 = *(v1 + 80);
  v148 = type metadata accessor for PaymentPassMethodSheet(0);
  v149 = a1 + v148[27];
  memset(v251, 0, sizeof(v251));
  v229 = v147;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41368, &unk_1BE0DAD70);
  sub_1BE051694();
  v150 = v255;
  v151 = v253;
  *v149 = v252;
  *(v149 + 1) = v151;
  *(v149 + 2) = v254;
  *(v149 + 6) = v150;
  v152 = (a1 + v148[28]);
  type metadata accessor for PresentationContext(0);
  sub_1BD2EE53C(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
  *v152 = sub_1BE04EEC4();
  v152[1] = v153;
  v154 = v148[29];
  *&v251[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
  sub_1BE051694();
  *(a1 + v154) = v252;
  v155 = type metadata accessor for AvailablePass(0);
  v156 = *(v155 - 8);
  v218 = *(v156 + 56);
  v219 = (v156 + 56);
  v157 = v242;
  v218(v242, 1, 1, v155);
  v158 = v243;
  sub_1BD0DE19C(v157, v243, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BE051694();
  sub_1BD0DE53C(v157, &qword_1EBD520A0, &qword_1BE0B9840);
  v159 = v148[31];
  *&v251[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50, &qword_1BE102360);
  sub_1BE051694();
  *(a1 + v159) = v252;
  v160 = _s11DetailSheetOMa(0);
  v161 = v238;
  (*(*(v160 - 8) + 56))(v238, 1, 1, v160);
  sub_1BD0DE19C(v161, v239, &unk_1EBD43B20, &unk_1BE0DAD80);
  sub_1BE051694();
  sub_1BD0DE53C(v161, &unk_1EBD43B20, &unk_1BE0DAD80);
  v162 = a1 + v148[33];
  LOBYTE(v251[0]) = 0;
  sub_1BE051694();
  v163 = *(&v252 + 1);
  *v162 = v252;
  *(v162 + 1) = v163;
  *&v254 = 0;
  v252 = 0u;
  v253 = 0u;
  sub_1BD0DE19C(&v252, v251, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(&v252, &qword_1EBD51EC0, &qword_1BE0B7120);
  v218(v157, 1, 1, v155);
  sub_1BD0DE19C(v157, v158, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BE051694();
  sub_1BD0DE53C(v157, &qword_1EBD520A0, &qword_1BE0B9840);
  v164 = (a1 + v148[36]);
  v165 = MEMORY[0x1E69E7CC0];
  *&v251[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B60, &unk_1BE0DAD90);
  sub_1BE051694();
  v166 = *(&v252 + 1);
  *v164 = v252;
  v164[1] = v166;
  v167 = a1 + v148[37];
  v251[0] = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BE051694();
  v168 = v253;
  *v167 = v252;
  *(v167 + 2) = v168;
  v169 = a1 + v148[38];
  LOBYTE(v251[0]) = 0;
  sub_1BE051694();
  v170 = *(&v252 + 1);
  *v169 = v252;
  *(v169 + 1) = v170;
  v171 = a1 + v148[39];
  LOBYTE(v251[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250, &qword_1BE0DADA0);
  sub_1BE051694();
  v172 = *(&v252 + 1);
  *v171 = v252;
  *(v171 + 1) = v172;
  v173 = v148[40];
  *(a1 + v173) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v174 = v236;
  *a1 = v237;
  a1[1] = v174;
  v175 = v246;
  sub_1BD2EE220(v246, a1 + v148[6], type metadata accessor for Passes);
  v176 = (a1 + v148[7]);
  v177 = v260;
  v176[2] = v259;
  v176[3] = v177;
  v176[4] = v261;
  v178 = v258;
  *v176 = v257;
  v176[1] = v178;
  v179 = v247;
  sub_1BD0DE19C(v247, a1 + v148[8], &qword_1EBD45480, &unk_1BE0B8C30);
  v180 = v248;
  sub_1BD0DE19C(v248, a1 + v148[9], &unk_1EBD43B30, &qword_1BE0B8530);
  v181 = v241;
  *(a1 + v148[10]) = v241;
  *(a1 + v148[11]) = v235;
  v182 = (a1 + v148[12]);
  v183 = v234;
  *v182 = sub_1BD2EE58C;
  v182[1] = v183;
  v184 = (a1 + v148[13]);
  v185 = v233;
  *v184 = sub_1BD2EE584;
  v184[1] = v185;
  v186 = (a1 + v148[14]);
  v187 = v232;
  *v186 = sub_1BD2EE598;
  v186[1] = v187;
  v188 = (a1 + v148[15]);
  v189 = v231;
  *v188 = sub_1BD2EE590;
  v188[1] = v189;
  v190 = (a1 + v148[16]);
  v191 = v230;
  *v190 = sub_1BD2EE594;
  v190[1] = v191;
  v192 = (a1 + v148[17]);
  v193 = v228;
  *v192 = sub_1BD2ED6E0;
  v192[1] = v193;
  v194 = (a1 + v148[18]);
  v195 = v226;
  *v194 = v227;
  v194[1] = v195;
  v196 = (a1 + v148[19]);
  v197 = v223;
  *v196 = v224;
  v196[1] = v197;
  v198 = (a1 + v148[20]);
  v199 = v221;
  *v198 = sub_1BD2ED740;
  v198[1] = v199;
  v200 = (a1 + v148[23]);
  v201 = v220;
  *v200 = sub_1BD2EE588;
  v200[1] = v201;
  v202 = (a1 + v148[24]);
  v203 = v222;
  *v202 = sub_1BD2ED7D4;
  v202[1] = v203;
  *&v252 = v165;
  v204 = v181;
  sub_1BD71580C(v181);
  if (v205)
  {
    sub_1BDA7A810(v205);
    v165 = v252;
  }

  *&v251[0] = v165;
  sub_1BE048C84();
  sub_1BD394CD0(v251);
  v165, v206, v207, v208, v209, v210, v211, v212;
  v213 = v148[26];
  *(a1 + v148[21]) = *&v251[0];
  v214 = v249;
  sub_1BD2EE220(v175, v249, type metadata accessor for Passes);
  (*(v244 + 56))(v214, 0, 1, v245);
  v252 = 1uLL;
  v253 = 0uLL;
  LOBYTE(v254) = 0;
  *(a1 + v148[22]) = sub_1BD7D51F4(v214, &v252, v181);
  *(a1 + v148[25]) = v225 & 1;
  *(a1 + v213) = v229;
  sub_1BD0E5E8C(0, &qword_1EBD43B70, 0x1E69DD020);
  v215 = [swift_getObjCClassFromMetadata() appearance];
  v216 = [objc_opt_self() clearColor];
  [v215 setBackgroundColor_];

  sub_1BD0DE53C(v180, &unk_1EBD43B30, &qword_1BE0B8530);
  sub_1BD0DE53C(v179, &qword_1EBD45480, &unk_1BE0B8C30);
  return sub_1BD2EE430(v175, type metadata accessor for Passes);
}