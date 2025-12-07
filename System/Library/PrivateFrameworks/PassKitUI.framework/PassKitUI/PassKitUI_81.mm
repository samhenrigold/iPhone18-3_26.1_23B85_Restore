uint64_t sub_1BD889688(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = v1 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    memset(v6, 0, sizeof(v6));
    v7 = 2;
    sub_1BD865A00(v1, &off_1F3BC1A80, v6, ObjectType, v4);
    swift_unknownObjectRelease();
    return sub_1BD0DE53C(v6, &unk_1EBD3F510, &unk_1BE0B9B30);
  }

  return result;
}

void sub_1BD889BEC()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 hideActivitySpinner];
  [v0 setHidesBackButton:1 animated:0];
  v7 = [v0 navigationItem];
  v8 = [v7 leftBarButtonItem];

  if (!v8)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
    sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
    *(swift_allocObject() + 16) = v1;
    v9 = v1;
    sub_1BE0530B4();
    v10 = sub_1BE052C74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0B7020;
    *(v11 + 32) = v10;
    v12 = v10;
    v8 = sub_1BE052724();
    v11, v13, v14, v15, v16, v17, v18, v19;
    [v9 _setLeftBarButtonItems_animated_];
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2);
    sub_1BE04B714();
    v21 = v20;
    (*(v3 + 8))(v6, v2);
    v22 = sub_1BE052404();
    v21, v23, v24, v25, v26, v27, v28, v29;
    [v1 setPrimaryButtonTitleText_];
  }

  else
  {
    [v1 setShowPrimaryButton_];
    sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
    sub_1BD0E5E8C(0, &qword_1EBD3ECB0, 0x1E69DC628);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE0530B4();
    v30 = sub_1BE052C74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BE0B7020;
    *(v31 + 32) = v30;
    v32 = v30;
    v42 = sub_1BE052724();
    v31, v33, v34, v35, v36, v37, v38, v39;
    [v1 _setRightBarButtonItems_animated_];

    v40 = v42;
  }
}

uint64_t sub_1BD88A058(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong addAutoFillCardCancelled_];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD88A0DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BD88A130();
  }
}

void sub_1BD88A130()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_fields];
    v4 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_primaryAccountIdentifier + 8];
    v5 = v3;
    if (v4)
    {
      sub_1BE048C84();
      v6 = sub_1BE052404();
      v4, v7, v8, v9, v10, v11, v12, v13;
    }

    else
    {
      v6 = 0;
    }

    v14 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_passUniqueIdentifier + 8];
    if (v14)
    {
      sub_1BE048C84();
      v15 = sub_1BE052404();
      v14, v16, v17, v18, v19, v20, v21, v22;
    }

    else
    {
      v15 = 0;
    }

    v23 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_displayablePaymentCredentialType + 8];
    if (v23)
    {
      sub_1BE048C84();
      v24 = sub_1BE052404();
      v23, v25, v26, v27, v28, v29, v30, v31;
    }

    else
    {
      v24 = 0;
    }

    v35 = PKAutoFillCardDescriptorPairFrom();

    if (v35)
    {
      [v0 showActivitySpinnerWithTitle:0 subtitle:0];
      v32 = [v35 descriptor];
      v33 = [v35 credential];
      v34 = swift_unknownObjectWeakLoadStrong();
      if (v34)
      {
        [v34 addAutoFillCardFinishedWith:v32 credential:v33 viewController:v2];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1BD88A73C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(v2 + OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel);
    v6 = sub_1BD9F46CC(a2, v4, v5);
    v6, v7, v8, v9, v10, v11, v12, v13;

    sub_1BD88AA80(v14, v15);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1BD88A898()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result addAutoFillCardCancelled_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD88A8FC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result addAutoFillCardCancelled_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD88A964()
{
  v1 = [v0 topViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for AutofillManualEntryViewController();
    if (swift_dynamicCastClass())
    {
      sub_1BD889BEC();
    }
  }
}

void sub_1BD88AA80(uint64_t a1, uint64_t a2)
{
  v49 = *&v2[OBJC_IVAR___PKAddAutoFillCardViewController_webService];
  v50 = *&v2[OBJC_IVAR___PKAddAutoFillCardViewController_context];
  v3 = *&v2[OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel];
  v5 = *&v2[OBJC_IVAR___PKAddAutoFillCardViewController_primaryAccountIdentifier];
  v4 = *&v2[OBJC_IVAR___PKAddAutoFillCardViewController_primaryAccountIdentifier + 8];
  v7 = *&v2[OBJC_IVAR___PKAddAutoFillCardViewController_passUniqueIdentifier];
  v6 = *&v2[OBJC_IVAR___PKAddAutoFillCardViewController_passUniqueIdentifier + 8];
  v9 = *&v2[OBJC_IVAR___PKAddAutoFillCardViewController_displayablePaymentCredentialType];
  v8 = *&v2[OBJC_IVAR___PKAddAutoFillCardViewController_displayablePaymentCredentialType + 8];
  v10 = type metadata accessor for AutofillManualEntryViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_primaryAccountIdentifier];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v11[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_passUniqueIdentifier];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v11[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_displayablePaymentCredentialType];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_fields] = v3;
  *v12 = v5;
  *(v12 + 1) = v4;
  *v13 = v7;
  *(v13 + 1) = v6;
  v15 = *(v14 + 1);
  *v14 = v9;
  *(v14 + 1) = v8;
  v16 = v3;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v17 = v16;
  v18 = v49;
  v15, v19, v20, v21, v22, v23, v24, v25;
  v51.receiver = v11;
  v51.super_class = v10;
  v26 = objc_msgSendSuper2(&v51, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v18, v50, 0, v17);
  if (v26)
  {
    v27 = v26;

    v4, v28, v29, v30, v31, v32, v33, v34;
    v6, v35, v36, v37, v38, v39, v40, v41;
    v8, v42, v43, v44, v45, v46, v47, v48;
    *&v27[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate + 8] = &off_1F3BC1BF0;
    swift_unknownObjectWeakAssign();
    [v2 pushViewController:v27 animated:1];
  }

  else
  {
    __break(1u);
  }
}

id AddAutoFillCardViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id AddAutoFillCardViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id AddAutoFillCardViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_1BE052404();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithNibName:v7 bundle:a3];

  return v15;
}

id sub_1BD88AED4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BD88AFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v20 = objc_allocWithZone(type metadata accessor for AddAutoFillCardViewController());

  sub_1BD88B048(a1, a2, a3, a4, a5, a6, a7, a8, a9, v20);
}

void sub_1BD88B048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, char *a10)
{
  v13 = OBJC_IVAR___PKAddAutoFillCardViewController_context;
  *&a10[OBJC_IVAR___PKAddAutoFillCardViewController_context] = 0;
  swift_unknownObjectWeakInit();
  v14 = &a10[OBJC_IVAR___PKAddAutoFillCardViewController_primaryAccountIdentifier];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &a10[OBJC_IVAR___PKAddAutoFillCardViewController_passUniqueIdentifier];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &a10[OBJC_IVAR___PKAddAutoFillCardViewController_displayablePaymentCredentialType];
  *v16 = 0;
  *(v16 + 1) = 0;
  swift_unknownObjectWeakAssign();
  *&a10[OBJC_IVAR___PKAddAutoFillCardViewController_webService] = a1;
  v137 = a2;
  *&a10[v13] = a2;
  v17 = a1;
  v18 = sub_1BD88B610();
  v26 = sub_1BD3F0574(v18, v19, v20, v21, v22, v23, v24, v25);
  v18, v27, v28, v29, v30, v31, v32, v33;
  v34 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
  v35 = sub_1BE052724();
  v26, v36, v37, v38, v39, v40, v41, v42;
  v43 = [v34 initWithPaymentSetupFields_];

  if (v43)
  {
    v44 = OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel;
    *&a10[OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel] = v43;
    v45 = *(v14 + 1);
    *v14 = a4;
    *(v14 + 1) = a5;
    sub_1BE048C84();
    v45, v46, v47, v48, v49, v50, v51, v52;
    v53 = *(v15 + 1);
    *v15 = a6;
    *(v15 + 1) = a7;
    sub_1BE048C84();
    v53, v54, v55, v56, v57, v58, v59, v60;
    v61 = *(v16 + 1);
    *v16 = a8;
    *(v16 + 1) = a9;
    sub_1BE048C84();
    v61, v62, v63, v64, v65, v66, v67, v68;
    v69 = objc_allocWithZone(PKPaymentCameraCaptureViewController);
    v70 = v17;
    v71 = [v69 initWithWebService:v70 context:v137];
    if (v71)
    {
      v79 = v71;
      a5, v72, v73, v74, v75, v76, v77, v78;
      a7, v80, v81, v82, v83, v84, v85, v86;
      a9, v87, v88, v89, v90, v91, v92, v93;

      swift_unknownObjectRelease();
      [v79 configureForModalPresentation];
      [v79 setShowTypeCardNumberButton_];
      v138.receiver = a10;
      v138.super_class = type metadata accessor for AddAutoFillCardViewController();
      v94 = objc_msgSendSuper2(&v138, sel_initWithRootViewController_, v79);
      [v79 setFlowItemDelegate_];

LABEL_6:
      return;
    }

    v95 = *&a10[v44];
    v96 = type metadata accessor for AutofillManualEntryViewController();
    v97 = objc_allocWithZone(v96);
    *&v97[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v98 = &v97[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_primaryAccountIdentifier];
    *v98 = 0;
    *(v98 + 1) = 0;
    v99 = &v97[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_passUniqueIdentifier];
    *v99 = 0;
    *(v99 + 1) = 0;
    v100 = &v97[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_displayablePaymentCredentialType];
    *v100 = 0;
    *(v100 + 1) = 0;
    *&v97[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_fields] = v95;
    *v98 = a4;
    *(v98 + 1) = a5;
    *v99 = a6;
    *(v99 + 1) = a7;
    v101 = *(v100 + 1);
    *v100 = a8;
    *(v100 + 1) = a9;
    v102 = v95;
    v103 = v70;
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
    v104 = v102;
    v101, v105, v106, v107, v108, v109, v110, v111;
    v140.receiver = v97;
    v140.super_class = v96;
    v70 = objc_msgSendSuper2(&v140, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v103, v137, 0, v104);

    if (v70)
    {

      a5, v112, v113, v114, v115, v116, v117, v118;
      a7, v119, v120, v121, v122, v123, v124, v125;
      a9, v126, v127, v128, v129, v130, v131, v132;
      swift_unknownObjectRelease();
      v139.receiver = a10;
      v139.super_class = type metadata accessor for AddAutoFillCardViewController();
      objc_msgSendSuper2(&v139, sel_initWithRootViewController_, v70);

      *&v70[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate + 8] = &off_1F3BC1BF0;
      swift_unknownObjectWeakAssign();
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD88B610()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1E69E7CC0];
  v4 = [objc_allocWithZone(MEMORY[0x1E69B8DF8]) init];
  MEMORY[0x1BFB3F7A0]([v4 setOptional_]);
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v5 = [objc_allocWithZone(MEMORY[0x1E69B8E18]) init];

  v6 = v5;
  MEMORY[0x1BFB3F7A0]();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v7 = [objc_allocWithZone(MEMORY[0x1E69B8DE0]) init];

  v8 = v7;
  MEMORY[0x1BFB3F7A0]([v8 setOptional_]);
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v9 = [objc_allocWithZone(MEMORY[0x1E69B8DF0]) init];

  v10 = v9;
  MEMORY[0x1BFB3F7A0]([v10 setOptional_]);
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v11 = [objc_allocWithZone(MEMORY[0x1E69B8E08]) init];

  (*(v1 + 104))(v3, *MEMORY[0x1E69B80D8], v0);
  v12 = v11;
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    sub_1BE04B6F4();
    v16 = v15;

    (*(v1 + 8))(v3, v0);
    v17 = sub_1BE052404();
    v16, v18, v19, v20, v21, v22, v23, v24;
    [v12 setLocalizedDisplayName_];

    MEMORY[0x1BFB3F7A0]([v12 setOptional_]);
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UIProvisioningStep.RadioActivityStep.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

void *sub_1BD88BB00(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v3 - 4;
    if ((v3 - 4) >= 9)
    {
      v5 = 5;
    }

    [result didTransitionTo:v5 loading:a2 & 1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD88BB8C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didUpdateFieldModel];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD88BBF0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result showWithProvisioningError_];

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL _s9PassKitUI18UIProvisioningStepO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 7)
  {
    if (*a1 > 5u)
    {
      if (v2 == 6)
      {
        return v3 == 6;
      }

      if (v2 == 7)
      {
        return v3 == 7;
      }
    }

    else
    {
      if (v2 == 4)
      {
        return v3 == 4;
      }

      if (v2 == 5)
      {
        return v3 == 5;
      }
    }
  }

  else if (*a1 <= 9u)
  {
    if (v2 == 8)
    {
      return v3 == 8;
    }

    if (v2 == 9)
    {
      return v3 == 9;
    }
  }

  else
  {
    switch(v2)
    {
      case 0xAu:
        return v3 == 10;
      case 0xBu:
        return v3 == 11;
      case 0xCu:
        return v3 == 12;
    }
  }

  if ((v3 - 4) < 9)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1BD88BD74()
{
  result = qword_1EBD568E0;
  if (!qword_1EBD568E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD568E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIProvisioningStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_20;
  }

  v2 = a2 + 12;
  if (a2 + 12 >= 0xFFFF00)
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
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 12;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 12;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xA)
  {
    return v8 - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UIProvisioningStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 12;
  if (a3 + 12 >= 0xFFFF00)
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

  if (a3 < 0xF4)
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BD88BF20(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BD88BF34(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t type metadata accessor for AccountInformationView(uint64_t a1)
{
  result = qword_1EBD568F0;
  if (!qword_1EBD568F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD88C038(uint64_t a1)
{
  sub_1BD2D63D4(319);
  if (v1 <= 0x3F)
  {
    sub_1BD3C9E00(319);
    if (v2 <= 0x3F)
    {
      sub_1BD10EE48();
      if (v3 <= 0x3F)
      {
        sub_1BD7A8880(319, &qword_1EBD3E9B0, &qword_1EBD416C0, &unk_1BE0BC2A0, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1BD7A8880(319, &qword_1EBD449E0, &qword_1EBD449E8, &qword_1BE0FF9D0, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD88C178@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8, &unk_1BE0BC2E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for AccountInformationView(0);
  sub_1BD0DE19C(v1 + *(v10 + 32), v9, &qword_1EBD3B1A8, &unk_1BE0BC2E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BD0DE204(v9, a1, &qword_1EBD449E8, &qword_1BE0FF9D0);
  }

  v12 = *v9;
  sub_1BE052C44();
  v13 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();
  v12, v14, v15, v16, v17, v18, v19, v20;
  return (*(v4 + 8))(v6, v3);
}

int *sub_1BD88C360@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v86 = type metadata accessor for AccountInformationView(0);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v89 = v2;
  v82 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1BE04F434();
  v3 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56900, &qword_1BE0FFA28);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v69 - v11);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56908, &qword_1BE0FFA30);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = v69 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56910, &qword_1BE0FFA38);
  MEMORY[0x1EEE9AC00](v71);
  v77 = v69 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56918, &qword_1BE0FFA40);
  MEMORY[0x1EEE9AC00](v75);
  v70 = v69 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56920, &qword_1BE0FFA48);
  MEMORY[0x1EEE9AC00](v79);
  v78 = v69 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56928, &qword_1BE0FFA50);
  MEMORY[0x1EEE9AC00](v81);
  v83 = v69 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56930, &qword_1BE0FFA58);
  MEMORY[0x1EEE9AC00](v80);
  v84 = v69 - v18;
  sub_1BD88CDE4(v12);
  v87 = v1;
  v19 = *(v1 + 24);
  type metadata accessor for AccountUserInfoModel(0);
  sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
  v20 = sub_1BE04D804();
  v21 = (v12 + *(v10 + 36));
  *v21 = v20;
  v21[1] = v19;
  v22 = v6;
  (*(v7 + 104))(v9, *MEMORY[0x1E69B80E0], v6);
  v69[1] = v19;
  sub_1BE048964();
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    (*(v7 + 8))(v9, v22);
    *&v90 = v25;
    *(&v90 + 1) = v27;
    v28 = v76;
    (*(v3 + 104))(v5, *MEMORY[0x1E697C438], v76);
    sub_1BD88EF78();
    sub_1BD0DDEBC();
    v29 = v72;
    sub_1BE050C94();
    (*(v3 + 8))(v5, v28);
    v27, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD0DE53C(v12, &qword_1EBD56900, &qword_1BE0FFA28);
    sub_1BE051CD4();
    sub_1BE04EE54();
    v37 = v77;
    (*(v73 + 32))(v77, v29, v74);
    v38 = (v37 + *(v71 + 36));
    v39 = v95;
    v38[4] = v94;
    v38[5] = v39;
    v38[6] = v96;
    v40 = v91;
    *v38 = v90;
    v38[1] = v40;
    v41 = v93;
    v38[2] = v92;
    v38[3] = v41;
    v42 = [objc_opt_self() systemGroupedBackgroundColor];
    v43 = sub_1BE0511C4();
    v44 = sub_1BE0501D4();
    v45 = sub_1BE051CD4();
    v47 = v46;
    v48 = v70;
    sub_1BD0DE204(v37, v70, &qword_1EBD56910, &qword_1BE0FFA38);
    v49 = v48 + *(v75 + 36);
    *v49 = v43;
    *(v49 + 8) = v44;
    *(v49 + 16) = v45;
    *(v49 + 24) = v47;
    swift_beginAccess();
    v50 = v79;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0, &qword_1BE0CB0E0);
    v51 = v78;
    sub_1BE04D884();
    swift_endAccess();
    v52 = v87;
    v53 = v82;
    sub_1BD88F1D8(v87, v82);
    v54 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v55 = swift_allocObject();
    v85 = type metadata accessor for AccountInformationView;
    sub_1BD890840(v53, v55 + v54, type metadata accessor for AccountInformationView);
    sub_1BD0DE204(v48, v51, &qword_1EBD56918, &qword_1BE0FFA40);
    v56 = (v51 + *(v50 + 56));
    *v56 = sub_1BD890F0C;
    v56[1] = v55;
    swift_beginAccess();
    v57 = v81;
    v58 = v83;
    sub_1BE04D884();
    swift_endAccess();
    sub_1BD88F1D8(v52, v53);
    v59 = swift_allocObject();
    sub_1BD890840(v53, v59 + v54, type metadata accessor for AccountInformationView);
    sub_1BD0DE204(v51, v58, &qword_1EBD56920, &qword_1BE0FFA48);
    v60 = (v58 + *(v57 + 56));
    *v60 = sub_1BD88F23C;
    v60[1] = v59;
    v61 = v84;
    v62 = &v84[*(v80 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    sub_1BE0516C4();
    sub_1BD88F1D8(v52, v53);
    v63 = swift_allocObject();
    v64 = v85;
    sub_1BD890840(v53, v63 + v54, v85);
    sub_1BD0DE204(v58, v61, &qword_1EBD56928, &qword_1BE0FFA50);
    v65 = &v62[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
    *v65 = sub_1BD88F2A4;
    v65[1] = v63;
    sub_1BD88F1D8(v52, v53);
    v66 = swift_allocObject();
    sub_1BD890840(v53, v66 + v54, v64);
    v67 = v88;
    sub_1BD0DE204(v61, v88, &qword_1EBD56930, &qword_1BE0FFA58);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56980, &qword_1BE0FFA88);
    v68 = (v67 + result[9]);
    *v68 = sub_1BD88F508;
    v68[1] = v66;
    v68[2] = 0;
    v68[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD88CDE4@<X0>(void *a1@<X8>)
{
  v86 = a1;
  v2 = sub_1BE04FB94();
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v77 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56960, &qword_1BE0FFA78);
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v71 - v4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56958, &qword_1BE0FFA70);
  MEMORY[0x1EEE9AC00](v85);
  v75 = &v71 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56988, &qword_1BE0FFB70);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v71 - v6;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A98, &unk_1BE0D2A20);
  v80 = *(v11 - 8);
  v81 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A88, &unk_1BE0ECF10);
  MEMORY[0x1EEE9AC00](v82);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (&v71 - v20);
  v72 = v1;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  sub_1BE04D8B4(v87);
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v23, v31, v32, v33, v34, v35, v36, v37;
  if ((v87[0] & 1) != 0 || (v38 = swift_getKeyPath(), v39 = swift_getKeyPath(), sub_1BE04D8B4(v21), v38, v40, v41, v42, v43, v44, v45, v46, v39, v47, v48, v49, v50, v51, v52, v53, v54 = type metadata accessor for FeatureError(0), v55 = (*(*(v54 - 8) + 48))(v21, 1, v54), v56 = sub_1BD0DE53C(v21, &qword_1EBD416C0, &unk_1BE0BC2A0), v55 != 1))
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69B80E0], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v63 = result;
      v64 = sub_1BE04B6F4();
      v66 = v65;

      (*(v8 + 8))(v10, v7);
      v87[0] = v64;
      v87[1] = v66;
      sub_1BD0DDEBC();
      sub_1BE04E504();
      v67 = &v15[*(v82 + 36)];
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0, &qword_1BE0BB6F8) + 28);
      v69 = *MEMORY[0x1E697DC10];
      v70 = sub_1BE04E364();
      (*(*(v70 - 8) + 104))(v67 + v68, v69, v70);
      *v67 = swift_getKeyPath();
      (*(v80 + 32))(v15, v13, v81);
      sub_1BD0DE204(v15, v18, &qword_1EBD44A88, &unk_1BE0ECF10);
      sub_1BD0DE19C(v18, v84, &qword_1EBD44A88, &unk_1BE0ECF10);
      swift_storeEnumTagMultiPayload();
      sub_1BD3CA07C();
      sub_1BD88F0BC();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v18, &qword_1EBD44A88, &unk_1BE0ECF10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v56);
    *(&v71 - 2) = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56990, &qword_1BE0FFBC0);
    sub_1BD0DE4F4(&qword_1EBD56998, &qword_1EBD56990, &qword_1BE0FFBC0, MEMORY[0x1E6981F48]);
    v57 = v73;
    sub_1BE0504E4();
    v58 = v77;
    sub_1BE04FB84();
    sub_1BD0DE4F4(&qword_1EBD56968, &qword_1EBD56960, &qword_1BE0FFA78, MEMORY[0x1E697CD20]);
    v60 = v75;
    v59 = v76;
    v61 = v79;
    sub_1BE051144();
    (*(v78 + 8))(v58, v61);
    (*(v74 + 8))(v57, v59);
    sub_1BD0BD8FC(v60, v84);
    swift_storeEnumTagMultiPayload();
    sub_1BD3CA07C();
    sub_1BD88F0BC();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v60, &qword_1EBD56958, &qword_1BE0FFA70);
  }

  return result;
}

double sub_1BD88D5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for AccountInformationView(0);
  sub_1BD0DE19C(a1, v4, &qword_1EBD416C0, &unk_1BE0BC2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD88D6B8(uint64_t a1)
{
  v2 = sub_1BE04ED94();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v92 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449E8, &qword_1BE0FF9D0);
  MEMORY[0x1EEE9AC00](v91);
  v90 = (&v89 - v4);
  v5 = type metadata accessor for FeatureError(0);
  v102 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v93 = (&v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5D400, &qword_1BE0D2B80);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v89 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = (&v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v99 = (&v89 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v89 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v89 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v89 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v89 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v89 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v89 - v29;
  v31 = *(type metadata accessor for AccountInformationView(0) + 28);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  v97 = v31;
  sub_1BE0516A4();
  v101 = a1;
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = v7;
  sub_1BE04D8B4(v27);
  KeyPath, v35, v36, v37, v38, v39, v40, v41;
  v33, v42, v43, v44, v45, v46, v47, v48;
  v49 = *(v7 + 48);
  v50 = v30;
  v51 = v5;
  sub_1BD0DE204(v50, v11, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BD0DE204(v27, &v11[v49], &qword_1EBD416C0, &unk_1BE0BC2A0);
  v52 = *(v102 + 48);
  if (v52(v11, 1, v5) == 1)
  {
    if (v52(&v11[v49], 1, v5) == 1)
    {
      sub_1BD0DE53C(v11, &qword_1EBD416C0, &unk_1BE0BC2A0);
LABEL_11:
      v78 = v90;
      sub_1BD88C178(v90);
      MEMORY[0x1BFB3E970](v91);
      sub_1BE04ED84();
      sub_1BE0518F4();
      sub_1BD0DE53C(v78, &qword_1EBD449E8, &qword_1BE0FF9D0);
      v79 = v95;
      (*(v102 + 56))(v95, 1, 1, v51);
      swift_getKeyPath();
LABEL_17:
      swift_getKeyPath();
      sub_1BD0DE19C(v79, v94, &qword_1EBD416C0, &unk_1BE0BC2A0);
      sub_1BE048964();
      sub_1BE04D8C4();
      v83 = v79;
      v81 = &qword_1EBD416C0;
      v82 = &unk_1BE0BC2A0;
      return sub_1BD0DE53C(v83, v81, v82);
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v11, v24, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v52(&v11[v49], 1, v5) == 1)
  {
    sub_1BD230994(v24);
LABEL_6:
    sub_1BD0DE53C(v11, &unk_1EBD5D400, &qword_1BE0D2B80);
    goto LABEL_8;
  }

  v53 = v93;
  sub_1BD890840(&v11[v49], v93, type metadata accessor for FeatureError);
  v54 = *v24;
  v55 = *v53;
  v56 = v53;
  v34 = v7;
  sub_1BD230994(v56);

  sub_1BD230994(v24);
  sub_1BD0DE53C(v11, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v54 == v55)
  {
    goto LABEL_11;
  }

LABEL_8:
  v57 = v98;
  sub_1BE0516A4();
  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v60 = v99;
  sub_1BE04D8B4(v99);
  v58, v61, v62, v63, v64, v65, v66, v67;
  v59, v68, v69, v70, v71, v72, v73, v74;
  v75 = *(v34 + 48);
  v76 = v57;
  v77 = v100;
  sub_1BD0DE204(v76, v100, &qword_1EBD416C0, &unk_1BE0BC2A0);
  sub_1BD0DE204(v60, v77 + v75, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v52(v77, 1, v5) == 1)
  {
    if (v52((v77 + v75), 1, v5) == 1)
    {
      sub_1BD0DE53C(v77, &qword_1EBD416C0, &unk_1BE0BC2A0);
LABEL_16:
      v79 = v95;
      (*(v102 + 56))(v95, 1, 1, v5);
      swift_getKeyPath();
      goto LABEL_17;
    }
  }

  else
  {
    v80 = v89;
    sub_1BD0DE19C(v77, v89, &qword_1EBD416C0, &unk_1BE0BC2A0);
    if (v52((v77 + v75), 1, v5) != 1)
    {
      v84 = v77 + v75;
      v85 = v93;
      sub_1BD890840(v84, v93, type metadata accessor for FeatureError);
      v86 = *v80;
      v87 = *v85;
      sub_1BD230994(v85);

      sub_1BD230994(v80);
      result = sub_1BD0DE53C(v77, &qword_1EBD416C0, &unk_1BE0BC2A0);
      if (v86 != v87)
      {
        return result;
      }

      goto LABEL_16;
    }

    sub_1BD230994(v80);
  }

  v81 = &unk_1EBD5D400;
  v82 = &qword_1BE0D2B80;
  v83 = v77;
  return sub_1BD0DE53C(v83, v81, v82);
}

double sub_1BD88DED8(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(v18);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  if (!v18[0])
  {
    return sub_1BD2FAF00();
  }

  sub_1BD0D468C(v18[0], v18[1]);
  return result;
}

uint64_t sub_1BD88DF64@<X0>(uint64_t a2@<X8>)
{
  v56 = a2;
  v2 = sub_1BE04F5B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569A0, &qword_1BE0FFBF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569A8, &qword_1BE0FFC00);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569B0, &qword_1BE0FFC08);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  sub_1BD88E3E0(&v51 - v18);
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  sub_1BE04D8B4(v57);
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v21, v29, v30, v31, v32, v33, v34, v35;
  v37 = v57[0];
  v36 = v57[1];
  if (v57[0])
  {
    v38 = v57[0];
  }

  sub_1BD0D468C(v37, v36);
  sub_1BD88E7C8(v37, v8);

  sub_1BE04F594();
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569B8, &qword_1BE0FFC10) + 36);
  (*(v3 + 16))(&v12[v39], v5, v2);
  v40 = *(v3 + 56);
  v40(&v12[v39], 0, 1, v2);
  sub_1BD0DE204(v8, v12, &qword_1EBD569A0, &qword_1BE0FFBF8);
  v41 = swift_getKeyPath();
  v42 = &v12[*(v52 + 36)];
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580, &qword_1BE0D8820) + 28);
  (*(v3 + 32))(v42 + v43, v5, v2);
  v40(v42 + v43, 0, 1, v2);
  *v42 = v41;
  v44 = v12;
  v45 = v54;
  sub_1BD0DE204(v44, v54, &qword_1EBD569A8, &qword_1BE0FFC00);
  v46 = v53;
  sub_1BD0DE19C(v19, v53, &qword_1EBD569B0, &qword_1BE0FFC08);
  v47 = v55;
  sub_1BD0DE19C(v45, v55, &qword_1EBD569A8, &qword_1BE0FFC00);
  v48 = v56;
  sub_1BD0DE19C(v46, v56, &qword_1EBD569B0, &qword_1BE0FFC08);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569C0, &qword_1BE0FFC50);
  sub_1BD0DE19C(v47, v48 + *(v49 + 48), &qword_1EBD569A8, &qword_1BE0FFC00);
  sub_1BD0DE53C(v45, &qword_1EBD569A8, &qword_1BE0FFC00);
  sub_1BD0DE53C(v19, &qword_1EBD569B0, &qword_1BE0FFC08);
  sub_1BD0DE53C(v47, &qword_1EBD569A8, &qword_1BE0FFC00);
  return sub_1BD0DE53C(v46, &qword_1EBD569B0, &qword_1BE0FFC08);
}

id sub_1BD88E3E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569F0, &qword_1BE0FFC70);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - v8;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(&v58);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  v26 = v58;
  if (!v58)
  {
    goto LABEL_11;
  }

  v27 = v59;
  v28 = v58;
  sub_1BD0D468C(v26, v27);
  v29 = [v28 emailAddresses];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v30 = sub_1BE052744();

  if (!(v30 >> 62))
  {
    result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_10:
    v30, v31, v32, v33, v34, v35, v36, v37;
LABEL_11:
    v55 = 1;
    return (*(v7 + 56))(a1, v55, 1, v6);
  }

LABEL_4:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1BFB40900](0, v30);
  }

  else
  {
    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v39 = *(v30 + 32);
  }

  v47 = v39;
  v57 = a1;
  v30, v40, v41, v42, v43, v44, v45, v46;
  (*(v3 + 104))(v5, *MEMORY[0x1E69B80E0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v48 = result;
    v49 = sub_1BE04B6F4();
    v51 = v50;

    (*(v3 + 8))(v5, v2);
    v58 = v49;
    v59 = v51;
    sub_1BD0DDEBC();
    v58 = sub_1BE0506C4();
    v59 = v52;
    v60 = v53 & 1;
    v61 = v54;
    MEMORY[0x1EEE9AC00](v58);
    *(&v56 - 2) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD1103C8();
    sub_1BE051A54();

    a1 = v57;
    (*(v7 + 32))(v57, v9, v6);
    v55 = 0;
    return (*(v7 + 56))(a1, v55, 1, v6);
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1BD88E7C8@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X8>)
{
  v57 = a1;
  v53 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569C8, &qword_1BE0FFC58);
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v48 - v5;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569D0, &qword_1BE0FFC60);
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v59 = &v48 - v17;
  v18 = *MEMORY[0x1E69B80E0];
  v56 = *(v7 + 104);
  v56(v12, v18, v6, v16);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    v24 = *(v7 + 8);
    v24(v12, v6);
    v60 = v21;
    v61 = v23;
    sub_1BD0DDEBC();
    v60 = sub_1BE0506C4();
    v61 = v25;
    v62 = v26 & 1;
    v63 = v27;
    MEMORY[0x1EEE9AC00](v60);
    *(&v48 - 2) = v57;
    sub_1BD8908B8();
    sub_1BE051A24();
    (v56)(v9, v18, v6);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_1BE04B6F4();
      v31 = v30;

      v24(v9, v6);
      v60 = v29;
      v61 = v31;
      v60 = sub_1BE0506C4();
      v61 = v32;
      v62 = v33 & 1;
      v63 = v34;
      sub_1BD89090C();
      v35 = v58;
      sub_1BE051A54();
      v36 = v49;
      v37 = v50;
      v38 = *(v50 + 16);
      v39 = v51;
      v38(v49, v59, v51);
      v40 = v54;
      v57 = *(v54 + 16);
      v41 = v52;
      v42 = v35;
      v43 = v55;
      v57(v52, v42, v55);
      v44 = v53;
      v38(v53, v36, v39);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569E8, &qword_1BE0FFC68);
      v57(&v44[*(v45 + 48)], v41, v43);
      v46 = *(v40 + 8);
      v46(v58, v43);
      v47 = *(v37 + 8);
      v47(v59, v39);
      v46(v41, v43);
      return (v47)(v36, v39);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD88ED18(void *a1)
{
  v1 = [a1 value];
  sub_1BE052434();

  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  v8 = (v7 & 1);
  sub_1BE052434();
  v10 = v9;
  sub_1BE050DE4();
  v10, v11, v12, v13, v14, v15, v16, v17;
  sub_1BD0DDF10(v2, v4, v8, v18, v19, v20, v21, v22);
  v6, v23, v24, v25, v26, v27, v28, v29;
}

id sub_1BD88EE08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AccountUserInfoModel(0);
  sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
  v3 = sub_1BE04EEC4();
  *a2 = a1;
  a2[1] = v3;
  a2[2] = v4;

  return a1;
}

uint64_t sub_1BD88EE9C@<X0>(uint64_t a1@<X8>)
{
  sub_1BE051694();
  sub_1BE051694();
  type metadata accessor for AccountUserInfoModel(0);
  sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
  result = sub_1BE04EEC4();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

unint64_t sub_1BD88EF78()
{
  result = qword_1EBD56938;
  if (!qword_1EBD56938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56900, &qword_1BE0FFA28);
    sub_1BD88F030();
    sub_1BD0DE4F4(&qword_1EBD56970, &qword_1EBD56978, &qword_1BE0FFA80, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56938);
  }

  return result;
}

unint64_t sub_1BD88F030()
{
  result = qword_1EBD56940;
  if (!qword_1EBD56940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56948, &unk_1BE0FFA60);
    sub_1BD3CA07C();
    sub_1BD88F0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56940);
  }

  return result;
}

unint64_t sub_1BD88F0BC()
{
  result = qword_1EBD56950;
  if (!qword_1EBD56950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56958, &qword_1BE0FFA70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56960, &qword_1BE0FFA78);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD56968, &qword_1EBD56960, &qword_1BE0FFA78, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56950);
  }

  return result;
}

uint64_t sub_1BD88F1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountInformationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_102()
{
  v1 = type metadata accessor for AccountInformationView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v2[3], v3, v4, v5, v6, v7, v8, v9;
  v2[5], v10, v11, v12, v13, v14, v15, v16;
  v17 = (v2 + *(v1 + 28));
  v18 = type metadata accessor for FeatureError(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {

    v19 = *(v18 + 20);
    v20 = sub_1BE04B824();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v17 + v19, 1, v20))
    {
      (*(v21 + 8))(v17 + v19, v20);
    }
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  *(v17 + *(v22 + 28)), v23, v24, v25, v26, v27, v28, v29;
  v30 = (v2 + *(v1 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8, &unk_1BE0BC2E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *v30, v32, v33, v34, v35, v36, v37, v38;
  if (EnumCaseMultiPayload == 1)
  {
    v30[1], v39, v40, v41, v42, v43, v44, v45;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449E8, &qword_1BE0FF9D0) + 32);
    v47 = sub_1BE04ED94();
    (*(*(v47 - 8) + 8))(v30 + v46, v47);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD88F520(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccountInformationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD88F594@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v106 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v97 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E0, &unk_1BE0D2030);
  MEMORY[0x1EEE9AC00](v104);
  v108 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v97 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v97 - v14;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v103);
  v16 = &v97 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56A18, &qword_1BE0FFDC0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v97 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56A20, &qword_1BE0FFDC8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v97 - v24;
  if (a1)
  {
    v102 = a4;
    v26 = a1;
    v27 = [v26 pkFormattedContactAddressWithoutName];
    if (v27)
    {
      v28 = v27;
      v99 = v7;
      v100 = v16;
      v29 = sub_1BE052434();
      v31 = v30;

      v32 = sub_1BE052534();
      if (v32 > 0)
      {
        v109 = v29;
        v110 = v31;
        sub_1BD0DDEBC();
        v97 = sub_1BE0506C4();
        v98 = v40;
        v42 = v41;
        v109 = v97;
        v110 = v41;
        v44 = (v43 & 1);
        v111 = v43 & 1;
        v112 = v40;
        sub_1BE052434();
        v46 = v45;
        sub_1BE050DE4();
        v46, v47, v48, v49, v50, v51, v52, v53;
        sub_1BD0DDF10(v97, v42, v44, v54, v55, v56, v57, v58);
        v98, v59, v60, v61, v62, v63, v64, v65;
        v66 = v100;
        sub_1BD0DE19C(v100, v19, &qword_1EBD452C0, &qword_1BE0B7620);
        swift_storeEnumTagMultiPayload();
        sub_1BD1103C8();
        sub_1BD890C5C();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v66, &qword_1EBD452C0, &qword_1BE0B7620);
        a4 = v102;
        v7 = v99;
        goto LABEL_8;
      }

      v31, v33, v34, v35, v36, v37, v38, v39;
      a4 = v102;
      v7 = v99;
    }

    else
    {

      a4 = v102;
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1BD1103C8();
  sub_1BD890C5C();
  sub_1BE04F9A4();
LABEL_8:
  v67 = v105;
  sub_1BE04E4F4();
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    v69 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(&v109);
    KeyPath, v70, v71, v72, v73, v74, v75, v76;
    v69, v77, v78, v79, v80, v81, v82, v83;
    a2, v84, v85, v86, v87, v88, v89, v90;
    LOBYTE(KeyPath) = v109;
    (*(v106 + 32))(v12, v67, v7);
    v12[*(v104 + 36)] = (KeyPath & 1) == 0;
    v91 = v12;
    v92 = v107;
    sub_1BD0DE204(v91, v107, &qword_1EBD3B2E0, &unk_1BE0D2030);
    sub_1BD0DE19C(v25, v22, &qword_1EBD56A20, &qword_1BE0FFDC8);
    v93 = v108;
    sub_1BD0DE19C(v92, v108, &qword_1EBD3B2E0, &unk_1BE0D2030);
    sub_1BD0DE19C(v22, a4, &qword_1EBD56A20, &qword_1BE0FFDC8);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56A30, &unk_1BE0FFE18);
    v95 = a4 + *(v94 + 48);
    *v95 = 0;
    *(v95 + 8) = 1;
    sub_1BD0DE19C(v93, a4 + *(v94 + 64), &qword_1EBD3B2E0, &unk_1BE0D2030);
    sub_1BD0DE53C(v92, &qword_1EBD3B2E0, &unk_1BE0D2030);
    sub_1BD0DE53C(v25, &qword_1EBD56A20, &qword_1BE0FFDC8);
    sub_1BD0DE53C(v93, &qword_1EBD3B2E0, &unk_1BE0D2030);
    return sub_1BD0DE53C(v22, &qword_1EBD56A20, &qword_1BE0FFDC8);
  }

  else
  {
    type metadata accessor for AccountUserInfoModel(0);
    sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD88FBC0@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56A10, &qword_1BE0FFDB8);
  return sub_1BD88F594(v4, v5, v6, a2 + *(v7 + 44));
}

uint64_t sub_1BD88FC2C@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DF8, &qword_1BE0FDDC0);
  MEMORY[0x1EEE9AC00](v31[0]);
  v3 = v31 - v2;
  *v3 = sub_1BE04F504();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55E10, &qword_1BE0FDE80);
  sub_1BD88FEA4(v1, &v3[*(v4 + 44)]);
  v34 = *v1;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v5 = v33;
  v6 = v1[2];
  v33 = v1[1];
  v34 = v6;
  v7 = swift_allocObject();
  v8 = v1[1];
  v7[1] = *v1;
  v7[2] = v8;
  v7[3] = v1[2];
  sub_1BD0DE19C(&v35, v32, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE19C(&v33, v32, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE19C(&v34, v32, &qword_1EBD56A38, &qword_1BE0FFE28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56A40, &qword_1BE0FFE30);
  sub_1BD0DE4F4(&qword_1EBD55E08, &qword_1EBD55DF8, &qword_1BE0FDDC0, MEMORY[0x1E69817F8]);
  sub_1BD890CB8(&qword_1EBD56A48, &qword_1EBD56A40, &qword_1BE0FFE30, sub_1BD890D3C);
  sub_1BE050F64();
  *(&v5 + 1), v9, v10, v11, v12, v13, v14, v15;
  v7, v16, v17, v18, v19, v20, v21, v22;
  v5, v23, v24, v25, v26, v27, v28, v29;
  return sub_1BD0DE53C(v3, &qword_1EBD55DF8, &qword_1BE0FDDC0);
}

id sub_1BD88FEA4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v29 - v10;
  (*(v4 + 104))(v6, *MEMORY[0x1E69B80E0], v3, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v4 + 8))(v6, v3);
    v31 = v14;
    v32 = v16;
    v17 = *a1;
    v34 = a1[1];
    v35 = v17;
    v33 = a1[2];
    v18 = swift_allocObject();
    v19 = a1[1];
    v18[1] = *a1;
    v18[2] = v19;
    v18[3] = a1[2];
    sub_1BD0DE19C(&v35, v30, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BD0DE19C(&v34, v30, &qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BD0DE19C(&v33, v30, &qword_1EBD56A38, &qword_1BE0FFE28);
    sub_1BD0DDEBC();
    sub_1BE051744();
    sub_1BE052434();
    v21 = v20;
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BE050DE4();
    v21, v22, v23, v24, v25, v26, v27, v28;
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8901B4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BD890D90();
  v5 = *a1;
  v13 = a1[1];
  v14 = v5;
  v12 = a1[2];
  v6 = swift_allocObject();
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = a1[2];
  v8 = swift_allocObject();
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  *a2 = 0;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = sub_1BD890E30;
  *(a2 + 32) = v6;
  *(a2 + 40) = sub_1BD890E38;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_1BD0DE19C(&v14, v11, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE19C(&v13, v11, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE19C(&v12, v11, &qword_1EBD56A38, &qword_1BE0FFE28);
  sub_1BD0DE19C(&v14, v11, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE19C(&v13, v11, &qword_1EBD54350, &unk_1BE0B8D00);
  return sub_1BD0DE19C(&v12, v11, &qword_1EBD56A38, &qword_1BE0FFE28);
}

void sub_1BD890318(void *a1, __int128 *a2)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v2 = *(a2 + 4);
  if (v2)
  {
    v3 = a1;
    sub_1BE048964();
    sub_1BD2FB688(v3);

    v2, v4, v5, v6, v7, v8, v9, v10;
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
    return;
  }

  type metadata accessor for AccountUserInfoModel(0);
  sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
  v12 = a1;
  sub_1BE04EEB4();
  __break(1u);
}

void sub_1BD890410(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69B9178]);
    swift_retain_n();
    v3 = [v2 initWithType_];
    v4 = *&v1[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager];
    *&v1[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager] = v3;
    v1, v5, v6, v7, v8, v9, v10, v11;

    v19 = *&v1[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_paymentWebService];
    if (v19)
    {
      v20 = [*&v1[OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_paymentWebService] targetDevice];
      if (v20)
      {
        v21 = v20;
        if ([v20 respondsToSelector_] & 1) != 0 && (objc_msgSend(v21, sel_respondsToSelector_, sel_paymentWebService_deviceMetadataWithFields_completion_))
        {
          v38[4] = PKEdgeInsetsMake;
          v39 = 0;
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 1107296256;
          v38[2] = sub_1BD20815C;
          v38[3] = &block_descriptor_198;
          v22 = _Block_copy(v38);
          v23 = v39;
          swift_unknownObjectRetain();
          v23, v24, v25, v26, v27, v28, v29, v30;
          [v21 paymentWebService:v19 deviceMetadataWithFields:128 completion:v22];
          _Block_release(v22);
          v1, v31, v32, v33, v34, v35, v36, v37;
          swift_unknownObjectRelease_n();
          return;
        }

        swift_unknownObjectRelease();
      }
    }

    v1, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    type metadata accessor for AccountUserInfoModel(0);
    sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BD89066C(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2, v4);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v42[2] = v9;
    v42[3] = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    v17 = v16;
    v18 = sub_1BE051234();
    v19 = sub_1BE050564();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v18, v20, v22, v24, v26, v27, v28, v29;
    sub_1BD0DDF10(v12, v14, (v8 & 1), v30, v31, v32, v33, v34);
    v17, v35, v36, v37, v38, v39, v40, v41;
    *a1 = v19;
    *(a1 + 8) = v21;
    *(a1 + 16) = v23 & 1;
    *(a1 + 24) = v25;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD890840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD8908B8()
{
  result = qword_1EBD569D8;
  if (!qword_1EBD569D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD569D8);
  }

  return result;
}

unint64_t sub_1BD89090C()
{
  result = qword_1EBD569E0;
  if (!qword_1EBD569E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD569E0);
  }

  return result;
}

uint64_t sub_1BD890968(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BD8909C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BD890A34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BD890A90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1BD890AF4()
{
  result = qword_1EBD56A00;
  if (!qword_1EBD56A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56930, &qword_1BE0FFA58);
    sub_1BD0DE4F4(&qword_1EBD56A08, &qword_1EBD56928, &qword_1BE0FFA50, MEMORY[0x1E697C278]);
    sub_1BD890BDC(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56A00);
  }

  return result;
}

uint64_t sub_1BD890BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD890C5C()
{
  result = qword_1EBD56A28;
  if (!qword_1EBD56A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56A28);
  }

  return result;
}

uint64_t sub_1BD890CB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD890D3C()
{
  result = qword_1EBD56A50;
  if (!qword_1EBD56A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56A50);
  }

  return result;
}

uint64_t sub_1BD890D90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0B98E0;
  *(v0 + 32) = sub_1BE052434();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1BE052434();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1BE052434();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1BE052434();
  *(v0 + 88) = v4;
  return v0;
}

uint64_t objectdestroy_58Tm_1(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

double sub_1BD890E88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD890FD4()
{
  v207 = sub_1BE04BD74();
  v214 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v206 = &v203 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v205 = &v203 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v204 = &v203 - v5;
  v6 = sub_1BE04BAC4();
  v212 = *(v6 - 8);
  v213 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v211 = &v203 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D214();
  v209 = *(v8 - 8);
  v210 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v208 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04C384();
  v218 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v215 = &v203 - v14;
  v15 = sub_1BE04B8D4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v203 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v203 - v20;
  v22 = sub_1BE04B944();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v216 = &v203 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v217 = &v203 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v203 - v28;
  v219 = v0;
  v222 = *&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_context];
  sub_1BE04BB94();
  sub_1BE04B924();
  v30 = *(v23 + 8);
  v220 = v23 + 8;
  v221 = v22;
  v30(v29, v22);
  v31 = v30;
  (*(v16 + 104))(v18, *MEMORY[0x1E69B7F80], v15);
  LOBYTE(v30) = sub_1BE04B8C4();
  v33 = *(v16 + 8);
  v32 = v16 + 8;
  v33(v18, v15);
  v33(v21, v15);
  if ((v30 & 1) == 0)
  {
    v34 = sub_1BE04C3A4();
    if (v34[2])
    {
      v42 = v218;
      v43 = v34;
      v44 = v215;
      (*(v218 + 2))(v215, v34 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v10);
      v43, v45, v46, v47, v48, v49, v50, v51;
      v52 = sub_1BE04C304();
      v42[1](v44, v10);
      if (!v52)
      {
        goto LABEL_14;
      }

      v53 = [v52 metadataProviders];
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56E10, &unk_1BE0FFEE0);
      v54 = sub_1BE052744();

      if (v54 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_6;
        }
      }

      else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        if ((v54 & 0xC000000000000001) != 0)
        {
          goto LABEL_70;
        }

        if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_72;
        }

        v55 = *(v54 + 32);
        swift_unknownObjectRetain();
        while (1)
        {
          v54, v56, v57, v58, v59, v60, v61, v62;
          v63 = [v55 provisioningTarget];
          v64 = [v63 targetDevice];

          swift_unknownObjectRelease();
          if (v64 != 1)
          {
            return 2;
          }

LABEL_14:
          sub_1BE04BB94();
          v65 = v217;
          sub_1BE04BB04();
          sub_1BD892104();
          v66 = v221;
          v67 = sub_1BE052334();
          v31(v65, v66);
          v31(v29, v66);
          if ((v67 & 1) == 0)
          {
            return 2;
          }

          v68 = sub_1BE04C3A4();
          v76 = *(v68 + 2);
          v203 = v31;
          if (v76)
          {
            v29 = 0;
            v77 = v218 + 16;
            v31 = *(v218 + 2);
            v78 = (v218[80] + 32) & ~v218[80];
            v218 = v68;
            v32 = &v68[v78];
            v79 = *(v77 + 7);
            v54 = (v77 - 8);
            while (1)
            {
              (v31)(v12, v32, v10);
              v80 = sub_1BE04C374();
              (*v54)(v12, v10);
              v88 = __OFADD__(v29, v80);
              v29 += v80;
              if (v88)
              {
                break;
              }

              v32 += v79;
              if (!--v76)
              {
                v218, v81, v82, v83, v84, v85, v86, v87;
                v31 = v203;
                goto LABEL_21;
              }
            }

            __break(1u);
            goto LABEL_65;
          }

          v68, v69, v70, v71, v72, v73, v74, v75;
          v29 = 0;
LABEL_21:
          v79 = v216;
          sub_1BE04BB94();
          v10 = sub_1BE04B8E4();
          v89 = sub_1BE04B934();
          if (([v89 respondsToSelector_] & 1) == 0)
          {
            break;
          }

          v54 = v10;
          v90 = [v89 paymentWebService:v54 passesOfType:1];
          swift_unknownObjectRelease();
          if (!v90)
          {

            goto LABEL_38;
          }

          sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
          v91 = sub_1BE052744();

          v32 = sub_1BD3FCF30(v91);
          v91, v92, v93, v94, v95, v96, v97, v98;
          v12 = MEMORY[0x1E69E7CC0];
          if (v32)
          {
            v223 = MEMORY[0x1E69E7CC0];
            v18 = (v32 & 0xFFFFFFFFFFFFFF8);
            if (v32 >> 62)
            {
LABEL_72:
              v79 = sub_1BE053704();
              if (v79)
              {
LABEL_26:
                v217 = v10;
                v10 = 0;
                v12 = v32 & 0xC000000000000001;
                v80 = &selRef_metricsForTextStyle_;
                v218 = (v32 & 0xC000000000000001);
                while (1)
                {
                  if (v12)
                  {
                    v106 = MEMORY[0x1BFB40900](v10, v32);
                  }

                  else
                  {
                    if (v10 >= *(v18 + 2))
                    {
                      goto LABEL_66;
                    }

                    v106 = *(v32 + 8 * v10 + 32);
                  }

                  v54 = v106;
                  v107 = v10 + 1;
                  if (__OFADD__(v10, 1))
                  {
                    break;
                  }

                  if ([v106 passActivationState] == 4)
                  {
                  }

                  else
                  {
                    sub_1BE0538C4();
                    v31 = v32;
                    sub_1BE0538F4();
                    sub_1BE053904();
                    sub_1BE0538D4();
                    v12 = v218;
                  }

                  ++v10;
                  if (v107 == v79)
                  {
                    v12 = v223;
                    v10 = v217;
                    goto LABEL_40;
                  }
                }

LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }
            }

            else
            {
              v79 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v79)
              {
                goto LABEL_26;
              }
            }

LABEL_40:
            v32, v99, v100, v101, v102, v103, v104, v105;
            v79 = v216;
            v31 = v203;
          }

LABEL_41:
          v108 = sub_1BE04B934();
          if ([v108 respondsToSelector_])
          {
            v54 = [v108 maximumPaymentCards];
          }

          else
          {
            v54 = 0x7FFFFFFFFFFFFFFFLL;
          }

          swift_unknownObjectRelease();
          LODWORD(v32) = PKPaymentSetupMockInAppProvisioningDeleteUIEnabled();
          if (v29 < 1)
          {
            goto LABEL_50;
          }

          v80 = v12 >> 62;
          if (!(v12 >> 62))
          {
            v109 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v110 = v29 + v109;
            if (!__OFADD__(v29, v109))
            {
              goto LABEL_47;
            }

            goto LABEL_69;
          }

LABEL_67:
          v202 = sub_1BE053704();
          v110 = v29 + v202;
          if (!__OFADD__(v29, v202))
          {
LABEL_47:
            if (v54 >= v110)
            {
LABEL_50:
              v112 = v214;
              if ((v32 & 1) == 0)
              {
                v31(v79, v221);

                v12, v113, v114, v115, v116, v117, v118, v119;
                return 2;
              }

              v111 = 2;
              goto LABEL_57;
            }

            if (v32)
            {
              v111 = 2;
              v112 = v214;
              goto LABEL_57;
            }

            if (!v80)
            {
              result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v121 = v29 + result;
              if (!__OFADD__(v29, result))
              {
                goto LABEL_56;
              }

LABEL_76:
              __break(1u);
              goto LABEL_77;
            }

            result = sub_1BE053704();
            v121 = v29 + result;
            if (__OFADD__(v29, result))
            {
              goto LABEL_76;
            }

LABEL_56:
            v111 = v121 - v54;
            v112 = v214;
            if (__OFSUB__(v121, v54))
            {
LABEL_77:
              __break(1u);
            }

            else
            {
LABEL_57:
              v122 = v208;
              sub_1BE04D0F4();
              v123 = sub_1BE04D204();
              v124 = sub_1BE052C54();
              if (os_log_type_enabled(v123, v124))
              {
                v125 = swift_slowAlloc();
                *v125 = 134218240;
                *(v125 + 4) = v111;
                *(v125 + 12) = 1024;
                *(v125 + 14) = v32;
                _os_log_impl(&dword_1BD026000, v123, v124, "Prompting user to delete %ld passes. Mocking UI: %{BOOL}d", v125, 0x12u);
                MEMORY[0x1BFB45F20](v125, -1, -1);
              }

              (*(v209 + 8))(v122, v210);
              sub_1BE052434();
              v127 = v126;
              v128 = sub_1BE04BB74();
              v127, v129, v130, v131, v132, v133, v134, v135;
              v136 = v211;
              sub_1BE04BC34();
              v137 = sub_1BE04B9A4();
              (*(v212 + 8))(v136, v213);
              v138 = objc_allocWithZone(PKPaymentSelectPassesViewController);
              sub_1BD0E5E8C(0, &qword_1EBD456C0, 0x1E69B91E8);
              v139 = v128;
              v140 = sub_1BE052724();
              v12, v141, v142, v143, v144, v145, v146, v147;
              v148 = [v138 initWithSecureElementPasses:v140 context:v137 delegate:v219 peerPaymentAccount:0 reporter:v139];

              [v148 setMinimumSelectionCount_];
              if (!v148)
              {
                v203(v79, v221);

                return 0;
              }

              v222 = v111;
              v217 = v10;
              v218 = v139;
              v149 = v148;
              v150 = v204;
              v151 = *MEMORY[0x1E69B80F8];
              v152 = v207;
              v153 = *(v112 + 104);
              v153(v204);
              v219 = v149;
              v154 = v149;
              result = PKPassKitBundle();
              if (result)
              {
                v155 = result;
                sub_1BE04B6F4();
                v157 = v156;

                v215 = *(v112 + 8);
                (v215)(v150, v152);
                v158 = sub_1BE052404();
                v157, v159, v160, v161, v162, v163, v164, v165;
                [v154 setHeaderTitle_];

                v166 = v205;
                (v153)(v205, v151, v152);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
                v167 = swift_allocObject();
                v168 = MEMORY[0x1E69E6530];
                *(v167 + 16) = xmmword_1BE0B69E0;
                v169 = MEMORY[0x1E69E65A8];
                *(v167 + 56) = v168;
                *(v167 + 64) = v169;
                *(v167 + 32) = v222;
                v170 = v154;
                sub_1BE04B714();
                v172 = v171;
                v167, v171, v173, v174, v175, v176, v177, v178;
                v179 = v166;
                v180 = v215;
                (v215)(v179, v152);
                v181 = sub_1BE052404();
                v172, v182, v183, v184, v185, v186, v187, v188;
                [v170 setHeaderSubtitle_];

                v189 = v206;
                (v153)(v206, v151, v152);
                v190 = v170;
                result = PKPassKitBundle();
                if (result)
                {
                  v191 = result;
                  sub_1BE04B6F4();
                  v193 = v192;

                  (v180)(v189, v152);
                  v194 = sub_1BE052404();
                  v193, v195, v196, v197, v198, v199, v200, v201;
                  [v190 setButtonText_];

                  [v190 setShowCancelButton_];
                  [v190 setConfirmIntentToDelete_];

                  v203(v216, v221);
                  return v219;
                }

                goto LABEL_79;
              }
            }

            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          v55 = MEMORY[0x1BFB40900](0, v54);
        }

        swift_unknownObjectRelease();
LABEL_38:
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_41;
      }

      v34 = v54;
    }

    v34, v35, v36, v37, v38, v39, v40, v41;
    goto LABEL_14;
  }

  return 2;
}

uint64_t sub_1BD891EAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD891EE8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD891F34(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  if (PKDisableDynamicSEAllocation())
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x80000001BE13E130;
    v2 = 0xD000000000000012;
    v4 = 1;
  }

  return a1(v2, v3, 0, v4);
}

unint64_t sub_1BD892104()
{
  result = qword_1EBD56B08;
  if (!qword_1EBD56B08)
  {
    sub_1BE04B944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56B08);
  }

  return result;
}

void sub_1BD89215C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - v13;
  v15 = OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete;
  if ((*(v4 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete) & 1) == 0)
  {
    if (PKPaymentSetupMockInAppProvisioningDeleteUIEnabled())
    {
      sub_1BE04D0F4();
      sub_1BE048C84();
      v16 = sub_1BE04D204();
      v17 = sub_1BE052C54();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        if (!a1)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v79 = a3;
        if (a1 >> 62)
        {
          v77 = v18;
          v26 = sub_1BE053704();
          v18 = v77;
        }

        else
        {
          v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v18 + 4) = v26;
        v27 = v18;
        a1, v19, v20, v21, v22, v23, v24, v25;
        _os_log_impl(&dword_1BD026000, v16, v17, "Skipping delete of %ld passes because device is mocking UI", v27, 0xCu);
        MEMORY[0x1BFB45F20](v27, -1, -1);
      }

      else
      {

        a1, v41, v42, v43, v44, v45, v46, v47;
      }

      v48 = (*(v9 + 8))(v14, v8);
    }

    else
    {
      sub_1BE04D0F4();
      sub_1BE048C84();
      v28 = sub_1BE04D204();
      v29 = sub_1BE052C54();
      v30 = os_log_type_enabled(v28, v29);
      v80 = a1 >> 62;
      if (v30)
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        if (!a1)
        {
LABEL_32:
          __break(1u);
          return;
        }

        v79 = a3;
        if (v80)
        {
          v78 = v31;
          v39 = sub_1BE053704();
          v31 = v78;
        }

        else
        {
          v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v31 + 4) = v39;
        v40 = v31;
        a1, v32, v33, v34, v35, v36, v37, v38;
        _os_log_impl(&dword_1BD026000, v28, v29, "Deleting %ld passes to make room for new passes!", v40, 0xCu);
        MEMORY[0x1BFB45F20](v40, -1, -1);
      }

      else
      {

        a1, v49, v50, v51, v52, v53, v54, v55;
      }

      (*(v9 + 8))(v11, v8);
      v56 = [objc_opt_self() sharedInstance];
      if (!v56)
      {
        goto LABEL_29;
      }

      if (!a1)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v57 = v56;
      if (v80)
      {
        sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
        sub_1BE048C84();
        v58 = sub_1BE0539A4();
        a1, v70, v71, v72, v73, v74, v75, v76;
      }

      else
      {
        sub_1BE048C84();
        sub_1BE053BA4();
        sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
        v58 = a1;
      }

      sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
      v59 = sub_1BE052724();
      v58, v60, v61, v62, v63, v64, v65, v66;
      [v57 removePasses_];
    }

    if (a2)
    {
      a2(v48);
      *(v4 + v15) = 1;
      v67 = v4 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v68 = *(v67 + 8);
        ObjectType = swift_getObjectType();
        sub_1BD8659A4(v4, &off_1F3BC2038, ObjectType, v68);
        swift_unknownObjectRelease();
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

void sub_1BD8925C0()
{
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_didComplete) = 1;
    v5 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
    v1 = v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      v6[0] = v5;
      v7 = 1;
      v4 = v5;
      sub_1BD865A00(v0, &off_1F3BC2038, v6, ObjectType, v2);

      swift_unknownObjectRelease();
      sub_1BD12FF7C(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD8927C0(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55100, &qword_1BE0F85D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_1BE04BDF4();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BAC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v2;
  sub_1BE04BC34();
  v14 = sub_1BE04BA54();
  v15 = *(v11 + 8);
  v15(v13, v10);
  if (v14)
  {
    return a1(0xD00000000000001BLL, 0x80000001BE134050, 0, 1);
  }

  v40 = a2;
  v41 = a1;
  v45 = *(v43 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_requirements);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F500, &unk_1BE0C62D0);
  sub_1BD126024(&qword_1EBD55110, &unk_1EBD3F500, &unk_1BE0C62D0);
  sub_1BE052684();
  v17 = v44;
  if ((*(v44 + 48))(v7, 1, v8) == 1)
  {
    sub_1BD0DE53C(v7, &unk_1EBD55100, &qword_1BE0F85D0);
    return v41(0xD000000000000011, 0x80000001BE13E1B0, 0, 1);
  }

  v18 = v7;
  v19 = v8;
  (*(v17 + 32))(v42, v18, v8);
  v20 = sub_1BE04BDC4();
  v21 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_isRequirementOptional;
  v22 = v43;
  *(v43 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_isRequirementOptional) = v20 & 1;
  if (*(v22 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_feature + 8))
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v22 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_feature);
  }

  sub_1BE04BC34();
  v24 = sub_1BE04B9A4();
  v15(v13, v10);
  v25 = [objc_allocWithZone(PKSecurityCapabilitiesController) initWithRequirements:4 feature:v23 context:v24];
  v26 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_securityController;
  v27 = *(v22 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_securityController);
  *(v22 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_securityController) = v25;

  v28 = *(v22 + v26);
  if (v28 && [v28 isHSA2Enabled])
  {
    v29 = 0xD000000000000014;
    v30 = 0x80000001BE13E1D0;
    v31 = 1;
LABEL_14:
    v41(v29, v30, 0, v31);
    return (*(v44 + 8))(v42, v19);
  }

  if (*(v22 + v21) != 1)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_14;
  }

  v32 = swift_allocObject();
  v32[2] = v41;
  v32[3] = v40;
  sub_1BE048964();
  sub_1BD892C38(sub_1BD8941A0, v32);
  v32, v33, v34, v35, v36, v37, v38, v39;
  return (*(v44 + 8))(v42, v19);
}

void sub_1BD892C38(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v102 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v105 = v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v100 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v100 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v100 - v13;
  v15 = *MEMORY[0x1E69B80D8];
  v16 = *(v3 + 104);
  v16(v100 - v13, v15, v2, v12);
  v17 = PKPassKitBundle();
  if (!v17)
  {
    __break(1u);
    goto LABEL_8;
  }

  v18 = v17;
  v100[4] = sub_1BE04B6F4();
  v101 = v19;

  v20 = *(v3 + 8);
  v20(v14, v2);
  (v16)(v10, v15, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BE0B69E0;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1BD110550();
  *(v21 + 32) = 0;
  *(v21 + 40) = 0xE000000000000000;
  v100[3] = sub_1BE04B714();
  v23 = v22;
  v21, v22, v24, v25, v26, v27, v28, v29;
  v20(v10, v2);
  (v16)(v7, v15, v2);
  v30 = PKPassKitBundle();
  if (!v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v31 = v30;
  v100[2] = sub_1BE04B6F4();
  v33 = v32;

  v20(v7, v2);
  v34 = v105;
  (v16)(v105, v15, v2);
  v35 = PKPassKitBundle();
  if (!v35)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v36 = v35;
  v100[1] = sub_1BE04B6F4();
  v38 = v37;

  v20(v34, v2);
  v39 = v101;
  v40 = sub_1BE052404();
  v39, v41, v42, v43, v44, v45, v46, v47;
  v48 = sub_1BE052404();
  v23, v49, v50, v51, v52, v53, v54, v55;
  v56 = [objc_opt_self() alertControllerWithTitle:v40 message:v48 preferredStyle:1];

  v57 = swift_allocObject();
  v59 = v102;
  v58 = v103;
  v57[2] = v102;
  v57[3] = v58;
  sub_1BE048964();
  v60 = v33;
  v61 = sub_1BE052404();
  v60, v62, v63, v64, v65, v66, v67, v68;
  v110 = sub_1BD19E0B8;
  v111 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v107 = 1107296256;
  v108 = sub_1BD198918;
  v109 = &block_descriptor_31_1;
  v69 = _Block_copy(&aBlock);
  v111, v70, v71, v72, v73, v74, v75, v76;
  v77 = objc_opt_self();
  v78 = [v77 actionWithTitle:v61 style:0 handler:v69];
  _Block_release(v69);

  [v56 addAction_];
  [v56 setPreferredAction_];
  PKApplyDefaultIconToAlertController();
  v79 = swift_allocObject();
  v79[2] = v59;
  v79[3] = v58;
  sub_1BE048964();
  v80 = sub_1BE052404();
  v38, v81, v82, v83, v84, v85, v86, v87;
  v110 = sub_1BD1B5F6C;
  v111 = v79;
  aBlock = MEMORY[0x1E69E9820];
  v107 = 1107296256;
  v108 = sub_1BD198918;
  v109 = &block_descriptor_37_1;
  v88 = _Block_copy(&aBlock);
  v111, v89, v90, v91, v92, v93, v94, v95;
  v96 = [v77 actionWithTitle:v80 style:0 handler:v88];
  _Block_release(v88);

  [v56 addAction_];
  v97 = v104 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v98 = *(v97 + 8);
    ObjectType = swift_getObjectType();
    (*(v98 + 24))(v56, ObjectType, v98);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD893258()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 32))(v0, &off_1F3BC20B8, ObjectType, v3);
    v7 = v6;
    swift_unknownObjectRelease();
    if (v5)
    {
      v8 = swift_getObjectType();
      v9 = (*(v7 + 56))(v8, v7);
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_securityController);
        if (v10)
        {
          v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_promptedUserToUpgrade);
          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v25[4] = sub_1BD8940C8;
          v26 = v12;
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 1107296256;
          v25[2] = sub_1BD68F010;
          v25[3] = &block_descriptor_199;
          v13 = _Block_copy(v25);
          v14 = v26;
          v15 = v10;
          v16 = v9;
          v14, v17, v18, v19, v20, v21, v22, v23;
          [v15 presentSecurityRepairFlowWithPresentingViewController:v16 suppressHSA2Alert:v11 completion:v13];
          _Block_release(v13);

          return 1;
        }
      }
    }
  }

  return 2;
}

uint64_t sub_1BD893424(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1BE051F54();
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BE051FA4();
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1BD8940D0;
  v30 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_10_4;
  v15 = _Block_copy(aBlock);
  v16 = v30;
  v17 = a2;
  v16, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v7, v15);
  _Block_release(v15);

  (*(v28 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v27);
}

void sub_1BD89371C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [*(Strong + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_reporter) reportViewAppeared];
    if (a2 != 3)
    {
      if (!a2)
      {
        v9 = 0u;
        v10 = 0u;
        v7 = -1;
LABEL_8:
        v11 = v7;
        sub_1BD893808(&v9);

        sub_1BD0DE53C(&v9, &unk_1EBD3F510, &unk_1BE0B9B30);
        return;
      }

      if (a3)
      {
        v8 = a3;
        sub_1BD8938F4(a3, a2);

        return;
      }
    }

    v9 = 0u;
    v10 = 0u;
    v7 = 2;
    goto LABEL_8;
  }
}

uint64_t sub_1BD893808(uint64_t a1)
{
  sub_1BD39F6D4(a1, v9);
  if (v10)
  {
    if (v10 == 255)
    {
      sub_1BD0DE53C(v9, &unk_1EBD3F510, &unk_1BE0B9B30);
    }

    else
    {
      sub_1BD39F670(v9);
    }

    v3 = 0;
  }

  else
  {
    sub_1BD39F670(v9);
    v3 = 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_reporter);
  if (v4)
  {
    [v4 reportPageCompleted:v3 context:0];
  }

  v5 = v1 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865A00(v1, &off_1F3BC20B8, a1, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD8938F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v83 - v9;
  v11 = *&v2[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_reporter];
  if (v11)
  {
    v12 = sub_1BE04A844();
    [v11 reportError:v12 context:0];
  }

  if (v2[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_feature + 8])
  {
    v13 = sub_1BE04A844();
    v14 = PKTitleForDisplayableError();

    if (v14)
    {
      v84 = sub_1BE052434();
      v16 = v15;
    }

    else
    {
      v84 = 0;
      v16 = 0;
    }

    v21 = sub_1BE04A844();
    v22 = MEMORY[0x1BFB42D10]();

    if (v22)
    {
      v83 = sub_1BE052434();
      v24 = v23;

      goto LABEL_15;
    }
  }

  else
  {
    v17 = *&v2[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_feature];
    v18 = objc_opt_self();
    v19 = sub_1BE04A844();
    v4 = [v18 displayableErrorForError:v19 featureIdentifier:v17 genericErrorTitle:0 genericErrorMessage:0];

    if (v4)
    {
      v20 = v4;
      v10 = sub_1BE04A844();
    }

    else
    {
      v10 = 0;
    }

    v25 = swift_allocObject();
    v25[2] = v2;
    v89 = sub_1BD894148;
    v90 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v86 = 1107296256;
    v87 = sub_1BD126964;
    v88 = &block_descriptor_22_10;
    v16 = _Block_copy(&aBlock);
    v26 = v90;
    v27 = v2;
    v26, v28, v29, v30, v31, v32, v33, v34;
    v7 = PKAlertForDisplayableErrorWithCancelHandler(v10, 0, v16);
    _Block_release(v16);

    if (v7)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v83 = 0;
  v24 = 0;
LABEL_15:
  v35 = *MEMORY[0x1E69B80D8];
  v36 = *(v5 + 104);
  if (v2[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_isRequirementOptional] != 1 || a2 == 4)
  {
    v36(v7, v35, v4);
    v38 = PKPassKitBundle();
    if (v38)
    {
      v39 = v38;
      sub_1BE04B6F4();
      v41 = v40;
      v10 = v7;
      goto LABEL_24;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v36(v10, v35, v4);
  v42 = PKPassKitBundle();
  if (!v42)
  {
    goto LABEL_35;
  }

  v39 = v42;
  sub_1BE04B6F4();
  v41 = v43;
LABEL_24:

  (*(v5 + 8))(v10, v4);
  if (!v16)
  {
    v44 = 0;
    if (v24)
    {
      goto LABEL_26;
    }

LABEL_28:
    v52 = 0;
    goto LABEL_29;
  }

  v44 = sub_1BE052404();
  v16, v45, v46, v47, v48, v49, v50, v51;
  if (!v24)
  {
    goto LABEL_28;
  }

LABEL_26:
  v52 = sub_1BE052404();
  v24, v53, v54, v55, v56, v57, v58, v59;
LABEL_29:
  v60 = [objc_opt_self() alertControllerWithTitle:v44 message:v52 preferredStyle:1];

  v4 = v60;
  PKApplyDefaultIconToAlertController();
  v61 = swift_allocObject();
  v61[2] = v2;
  v62 = v2;
  v63 = sub_1BE052404();
  v41, v64, v65, v66, v67, v68, v69, v70;
  v89 = sub_1BD8940DC;
  v90 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v86 = 1107296256;
  v87 = sub_1BD198918;
  v88 = &block_descriptor_16_6;
  v71 = _Block_copy(&aBlock);
  v90, v72, v73, v74, v75, v76, v77, v78;
  v79 = [objc_opt_self() actionWithTitle:v63 style:1 handler:v71];
  _Block_release(v71);

  [v4 addAction_];
  v7 = v4;
LABEL_30:

  v80 = &v2[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v81 = *(v80 + 1);
    ObjectType = swift_getObjectType();
    (*(v81 + 24))(v7, ObjectType, v81);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD893EC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD893F00(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD893F64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_securityController] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_promptedUserToUpgrade] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_isRequirementOptional] = 1;
  *&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_identifier];
  strcpy(&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_identifier], "HSA2FlowItem");
  v11[13] = 0;
  *(v11 + 7) = -5120;
  v12 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_dismissalConfiguration;
  v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_dismissalConfiguration] = 2;
  *&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_context] = a1;
  *&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_requirements] = a2;
  v13 = &v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_feature];
  *v13 = a3;
  v13[8] = a4 & 1;
  v5[v12] = 1;
  sub_1BE052434();
  v15 = v14;
  sub_1BE048964();
  v16 = sub_1BE04BB74();
  v15, v17, v18, v19, v20, v21, v22, v23;
  *&v5[OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_reporter] = v16;
  v25.receiver = v5;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_1BD8940DC()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC9PassKitUI24ProvisioningHSA2FlowItem_isRequirementOptional))
  {
    v1 = -1;
  }

  else
  {
    v1 = 2;
  }

  memset(v3, 0, sizeof(v3));
  v4 = v1;
  sub_1BD893808(v3);
  return sub_1BD0DE53C(v3, &unk_1EBD3F510, &unk_1BE0B9B30);
}

uint64_t sub_1BD894148()
{
  memset(v1, 0, sizeof(v1));
  v2 = 2;
  sub_1BD893808(v1);
  return sub_1BD0DE53C(v1, &unk_1EBD3F510, &unk_1BE0B9B30);
}

void sub_1BD894258(uint64_t a1)
{
  sub_1BD894384(319, &qword_1EBD4DE60, type metadata accessor for AccountAutomaticPaymentsModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1BD894384(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1BD894384(319, &qword_1EBD56B70, MEMORY[0x1E697D750], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD894384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD894404@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE051B34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE051694();
  v8 = v20;
  *a2 = v19;
  a2[1] = v8;
  v9 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v10 = *(v9 + 20);
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  v16 = *(v9 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CA8, &qword_1BE100128);
  sub_1BE051B44();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0BA750;
  v17 = xmmword_1BE0FFF20;
  *v7 = xmmword_1BE0FFF20;
  v12 = *MEMORY[0x1E697D748];
  v13 = *(v5 + 104);
  v13(v7, v12, v4);
  sub_1BE051B54();
  *v7 = v17;
  v13(v7, v12, v4);
  sub_1BE051B54();
  *v7 = v17;
  v13(v7, v12, v4);
  sub_1BE051B54();
  *v7 = v17;
  v13(v7, v12, v4);
  sub_1BE051B54();
  *v7 = v17;
  v13(v7, v12, v4);
  sub_1BE051B54();
  *v7 = v17;
  v13(v7, v12, v4);
  sub_1BE051B54();
  *v7 = v17;
  v13(v7, v12, v4);
  result = sub_1BE051B54();
  *(a2 + v16) = v11;
  return result;
}

uint64_t sub_1BD8947C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56B78, &qword_1BE0FFFB8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56B80, &qword_1BE0FFFC0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56B88, &qword_1BE0FFFC8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  if (PKIsVision())
  {
    *v9 = sub_1BE04F504();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BB0, &qword_1BE0FFFD8);
    sub_1BD894A68(&v9[*(v10 + 44)]);
    sub_1BD0DE19C(v9, v6, &qword_1EBD56B88, &qword_1BE0FFFC8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD56B90, &qword_1EBD56B88, &qword_1BE0FFFC8, MEMORY[0x1E69817F8]);
    sub_1BD896CDC();
    sub_1BE04F9A4();
    v11 = v9;
    v12 = &qword_1EBD56B88;
    v13 = &qword_1BE0FFFC8;
  }

  else
  {
    sub_1BD894CC8(v3);
    sub_1BD0DE19C(v3, v6, &qword_1EBD56B78, &qword_1BE0FFFB8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD56B90, &qword_1EBD56B88, &qword_1BE0FFFC8, MEMORY[0x1E69817F8]);
    sub_1BD896CDC();
    sub_1BE04F9A4();
    v11 = v3;
    v12 = &qword_1EBD56B78;
    v13 = &qword_1BE0FFFB8;
  }

  return sub_1BD0DE53C(v11, v12, v13);
}

uint64_t sub_1BD894A68@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56B78, &qword_1BE0FFFB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BB8, &qword_1BE0FFFE0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  sub_1BD894CC8(v4);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v4, v11, &qword_1EBD56B78, &qword_1BE0FFFB8);
  v15 = &v11[*(v6 + 44)];
  v16 = v22[5];
  *(v15 + 4) = v22[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v22[6];
  v17 = v22[1];
  *v15 = v22[0];
  *(v15 + 1) = v17;
  v18 = v22[3];
  *(v15 + 2) = v22[2];
  *(v15 + 3) = v18;
  sub_1BD0DE204(v11, v14, &qword_1EBD56BB8, &qword_1BE0FFFE0);
  sub_1BD0DE19C(v14, v8, &qword_1EBD56BB8, &qword_1BE0FFFE0);
  *a1 = 0;
  *(a1 + 8) = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BC0, &qword_1BE0FFFE8);
  sub_1BD0DE19C(v8, a1 + *(v19 + 48), &qword_1EBD56BB8, &qword_1BE0FFFE0);
  v20 = a1 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1BD0DE53C(v14, &qword_1EBD56BB8, &qword_1BE0FFFE0);
  return sub_1BD0DE53C(v8, &qword_1EBD56BB8, &qword_1BE0FFFE0);
}

uint64_t sub_1BD894CC8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_1BE04EB24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = sub_1BE04FBA4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BA8, &qword_1BE0FFFD0);
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v26 - v11;
  type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v27 = v1;
  sub_1BE048C84();
  sub_1BE04F7B4();
  v32 = v1;
  v33 = 0;
  sub_1BD8973E8(&qword_1EBD3FDB8, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1BE053DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BC8, &qword_1BE0FFFF0);
  sub_1BD896D9C();
  v12 = v28;
  sub_1BE051DE4();
  sub_1BD70A2A0(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E697E728], v2);
  sub_1BD8973E8(&qword_1EBD56C70, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  sub_1BE0522F4();
  v13 = *(v3 + 8);
  v13(v5, v2);
  v13(v8, v2);
  v14 = sub_1BE0501D4();
  sub_1BE04E1F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v31;
  (*(v29 + 32))(v31, v12, v30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56B78, &qword_1BE0FFFB8);
  v25 = v23 + *(result + 36);
  *v25 = v14;
  *(v25 + 8) = v16;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_1BD895094(void *a1)
{
  v2 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  v17[0], v5, v6, v7, v8, v9, v10, v11;
  v18 = xmmword_1BE0FFF30;
  swift_getKeyPath();
  sub_1BD7E90E4(a1, v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_1BD858964(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C78, &qword_1BE100078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C80, &unk_1BE100080);
  sub_1BD8975A8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BD8, &qword_1BE0FFFF8);
  v15 = sub_1BD896E5C();
  v17[0] = v14;
  v17[1] = v15;
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

uint64_t sub_1BD89528C@<X0>(void **a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  v298 = a3;
  v5 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v294 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v295 = v6;
  v296 = &v271 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_1BE04FF64();
  v292 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v291 = &v271 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_1BE04F9C4();
  v289 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v288 = &v271 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0, &qword_1BE0CC5C0);
  MEMORY[0x1EEE9AC00](v276);
  v302 = &v271 - v9;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C90, &qword_1BE100090);
  v277 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v274 = &v271 - v10;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C28, &qword_1BE100020);
  MEMORY[0x1EEE9AC00](v300);
  v12 = (&v271 - v11);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C18, &qword_1BE100018);
  MEMORY[0x1EEE9AC00](v301);
  v304 = &v271 - v13;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C00, &qword_1BE100010);
  MEMORY[0x1EEE9AC00](v305);
  v275 = &v271 - v14;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BF8, &qword_1BE100008);
  v280 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v279 = &v271 - v15;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C98, &qword_1BE100098);
  v284 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v282 = &v271 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BF0, &qword_1BE100000);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v281 = &v271 - v18;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56BD8, &qword_1BE0FFFF8);
  MEMORY[0x1EEE9AC00](v286);
  v287 = &v271 - v19;
  v307 = *a1;
  v20 = *a2;
  v309 = a2[1];
  v310 = v20;
  v316 = v20;
  v317 = v309;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  v21 = v311;
  KeyPath = swift_getKeyPath();
  v316 = v21;
  sub_1BD8973E8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v23, v24, v25, v26, v27, v28, v29;
  if (*(v21 + 3) == 2)
  {
    v21, v30, v31, v32, v33, v34, v35, v36;
    v37 = 11;
  }

  else
  {
    v38 = swift_getKeyPath();
    v316 = v21;
    sub_1BE04B594();
    v38, v39, v40, v41, v42, v43, v44, v45;
    v46 = *(v21 + 3);
    v21, v47, v48, v49, v50, v51, v52, v53;
    v37 = 11;
    if (v46 != 3)
    {
      v37 = 1;
    }
  }

  v303 = v37;
  v55 = v309;
  v54 = v310;
  v316 = v310;
  v317 = v309;
  sub_1BE0516A4();
  v56 = v311;
  v57 = swift_getKeyPath();
  v316 = v56;
  sub_1BE04B594();
  v57, v58, v59, v60, v61, v62, v63, v64;
  v65 = *&v56[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay];
  v56, v66, v67, v68, v69, v70, v71, v72;
  v73 = v307;
  v306 = v65;
  LOBYTE(v56) = v307 == v65;
  v316 = v54;
  v317 = v55;
  sub_1BE0516A4();
  v74 = v311;
  v75 = sub_1BDA24684(v73);
  v74, v76, v77, v78, v79, v80, v81, v82;
  v83 = a2;
  sub_1BD8962E4(v75 & 1, v56, v12);
  v84 = *(v300 + 36);
  *(v12 + v84) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  if (PKIsVision())
  {
    v85 = sub_1BE04E624();
  }

  else
  {
    v86 = sub_1BE04E614();
    v87 = sub_1BE04E624();
    v85 = sub_1BE04E604();
    v86, v88, v89, v90, v91, v92, v93, v94;
    v87, v95, v96, v97, v98, v99, v100, v101;
  }

  v102 = v304;
  sub_1BD0DE204(v12, v304, &qword_1EBD56C28, &qword_1BE100020);
  *(v102 + *(v301 + 36)) = v85;
  v273 = sub_1BE051CD4();
  v272 = v103;
  if (v73 == v306)
  {
    v104 = PKIsVision();
    if (v75)
    {
      if (v104)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (v104)
    {
      v106 = sub_1BE0513F4();
LABEL_20:
      v319 = MEMORY[0x1E69815C0];
      v320 = MEMORY[0x1E6981568];
      v316 = v106;
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (v73 >= v303)
  {
    if (v75)
    {
      if (PKIsVision())
      {
LABEL_19:
        v106 = sub_1BE051424();
        goto LABEL_20;
      }

LABEL_21:
      v319 = sub_1BE04EA44();
      v320 = MEMORY[0x1E697E558];
      __swift_allocate_boxed_opaque_existential_1(&v316);
      sub_1BE04EA34();
      goto LABEL_25;
    }

    v105 = sub_1BE04FC74();
  }

  else if (PKIsVision())
  {
    v105 = sub_1BE04FC84();
  }

  else
  {
    v105 = sub_1BE04FC94();
  }

  v319 = MEMORY[0x1E697FE80];
  v320 = MEMORY[0x1E697FE70];
  LODWORD(v316) = v105;
LABEL_25:
  v300 = v320;
  v301 = v319;
  v299 = __swift_project_boxed_opaque_existential_1(&v316, v319);
  v311 = v310;
  v312 = v309;
  sub_1BE0516A4();
  v107 = v315;
  v108 = sub_1BDA1DDE0();
  v109 = sub_1BE052A94();
  v110 = [v108 stringFromNumber_];

  v297 = v83;
  if (v110)
  {
    v111 = sub_1BE052434();
    v113 = v112;
    v107, v112, v114, v115, v116, v117, v118, v119;
  }

  else
  {
    v311 = v73;
    v111 = sub_1BE053B24();
    v113 = v120;
    v107, v120, v121, v122, v123, v124, v125, v126;
  }

  v127 = v73;
  v311 = v111;
  v312 = v113;
  v271 = sub_1BD0DDEBC();
  v128 = sub_1BE0506C4();
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v135 = sub_1BE0503E4();
  v136 = sub_1BE0505F4();
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v135, v137, v139, v141, v143, v144, v145, v146;
  sub_1BD0DDF10(v128, v130, (v132 & 1), v147, v148, v149, v150, v151);
  v134, v152, v153, v154, v155, v156, v157, v158;
  if (v127 == v306)
  {
    sub_1BE0503A4();
  }

  else
  {
    sub_1BE050394();
  }

  v159 = *(v305 + 36);
  v160 = sub_1BE050544();
  v162 = v161;
  v164 = v163;
  v166 = v165;
  sub_1BD0DDF10(v136, v138, (v140 & 1), v165, v167, v168, v169, v170);
  v142, v171, v172, v173, v174, v175, v176, v177;
  v178 = sub_1BE050574();
  v180 = v179;
  v182 = v181;
  v184 = v183;
  sub_1BD0DDF10(v160, v162, (v164 & 1), v183, v185, v186, v187, v188);
  v166, v189, v190, v191, v192, v193, v194, v195;
  v306 = v178;
  v311 = v178;
  v312 = v180;
  v196 = (v182 & 1);
  v313 = v196;
  v314 = v184;
  v197 = *MEMORY[0x1E697E728];
  v198 = sub_1BE04EB24();
  v199 = v302;
  (*(*(v198 - 8) + 104))(v302, v197, v198);
  sub_1BD8973E8(&qword_1EBD3C218, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1BE052334();
  if (result)
  {
    v201 = v307 < v303;
    LODWORD(v303) = v307 < v303;
    v202 = !v201;
    LODWORD(v301) = v202;
    v203 = v275;
    v204 = &v275[v159];
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0, &qword_1BE0CC5C0, MEMORY[0x1E69E6ED8]);
    v205 = v184;
    v206 = v274;
    sub_1BE050B34();
    sub_1BD0DE53C(v199, &qword_1EBD3C1D0, &qword_1BE0CC5C0);
    sub_1BD0DDF10(v306, v180, v196, v207, v208, v209, v210, v211);
    v205, v212, v213, v214, v215, v216, v217, v218;
    __swift_destroy_boxed_opaque_existential_0(&v316, v219, v220, v221, v222, v223, v224, v225);
    (*(v277 + 32))(v204, v206, v278);
    v226 = &v204[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C60, qword_1BE100040) + 36)];
    v227 = v272;
    *v226 = v273;
    v226[1] = v227;
    sub_1BD0DE204(v304, v203, &qword_1EBD56C18, &qword_1BE100018);
    v228 = v288;
    sub_1BE04EE94();
    v229 = sub_1BD897074();
    v230 = sub_1BD8973E8(&qword_1EBD56C68, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    v231 = v279;
    v232 = v305;
    v233 = v290;
    sub_1BE0508E4();
    (*(v289 + 8))(v228, v233);
    sub_1BD0DE53C(v203, &qword_1EBD56C00, &qword_1BE100010);
    v234 = v291;
    sub_1BE04FF44();
    v316 = v232;
    v317 = v233;
    v318 = v229;
    v319 = v230;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v236 = v282;
    v237 = v283;
    sub_1BE050D14();
    (*(v292 + 8))(v234, v293);
    (*(v280 + 8))(v231, v237);
    v316 = v310;
    v317 = v309;
    sub_1BE0516A4();
    v238 = v311;
    v239 = v307;
    v240 = sub_1BDA2391C(v307);
    v242 = v241;
    v238, v241, v243, v244, v245, v246, v247, v248;
    v316 = v240;
    v317 = v242;
    v311 = v237;
    v312 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v249 = v281;
    v250 = v285;
    sub_1BE050C34();
    v242, v251, v252, v253, v254, v255, v256, v257;
    (*(v284 + 8))(v236, v250);
    v258 = v287;
    sub_1BD0DE204(v249, v287, &qword_1EBD56BF0, &qword_1BE100000);
    v259 = v258 + *(v286 + 36);
    *v259 = 0x3FF0000000000000;
    *(v259 + 8) = 256;
    v260 = v296;
    sub_1BD7E90E4(v297, v296);
    v261 = (*(v294 + 80) + 17) & ~*(v294 + 80);
    v262 = (v295 + v261 + 7) & 0xFFFFFFFFFFFFFFF8;
    v263 = swift_allocObject();
    v263[16] = v303;
    sub_1BD858964(v260, &v263[v261]);
    *&v263[v262] = v239;
    sub_1BD896E5C();
    sub_1BE0509D4();
    v263, v264, v265, v266, v267, v268, v269, v270;
    return sub_1BD0DE53C(v258, &qword_1EBD56BD8, &qword_1BE0FFFF8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD8962E4@<X0>(int a1@<W0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CA0, &qword_1BE100120);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v35 - v7);
  v9 = sub_1BE04F6E4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56C48, &unk_1BE100030);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v16 = PKIsVision();
  if (a2)
  {
    v35[0] = a3;
    if (v16)
    {
      v17 = sub_1BE051424();
    }

    else
    {
      v19 = sub_1BE0513C4();
      v17 = sub_1BE051454();
      v19, v20, v21, v22, v23, v24, v25, v26;
    }

    v35[1] = v17;
    sub_1BE04F6B4();
    sub_1BE050DA4();
    (*(v10 + 8))(v12, v9);
    v17, v27, v28, v29, v30, v31, v32, v33;
    sub_1BD0DE19C(v15, v8, &qword_1EBD56C48, &unk_1BE100030);
    swift_storeEnumTagMultiPayload();
    sub_1BD89732C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v15, &qword_1EBD56C48, &unk_1BE100030);
  }

  else
  {
    if ((v16 & a1) == 1)
    {
      v18 = sub_1BE0513C4();
    }

    else
    {
      v18 = sub_1BE051404();
    }

    *v8 = v18;
    swift_storeEnumTagMultiPayload();
    sub_1BD89732C();
    return sub_1BE04F9A4();
  }
}

void sub_1BD8965AC(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = MEMORY[0x1BFB3EDF0](0.1, 1.0, 0.0);
    MEMORY[0x1EEE9AC00](v3);
    sub_1BE04E7D4();
    v3, v4, v5, v6, v7, v8, v9, v10;
  }
}

void sub_1BD896664(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  if (*&v25[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay] == a2)
  {
    sub_1BDA217C4();
    sub_1BDA21BE0();
    v25, v3, v4, v5, v6, v7, v8, v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD8973E8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    v25, v11, v12, v13, v14, v15, v16, v17;
    KeyPath, v18, v19, v20, v21, v22, v23, v24;
  }
}

uint64_t sub_1BD8967D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a1;
  v40 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CD0, &qword_1BE1001A0);
  MEMORY[0x1EEE9AC00](v39);
  v3 = &v36 - v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CD8, &qword_1BE1001A8);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CE0, &qword_1BE1001B0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = sub_1BE04EB24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  sub_1BD70A2A0((&v36 - v14));
  (*(v10 + 104))(v12, *MEMORY[0x1E697E728], v9);
  sub_1BD8973E8(&qword_1EBD56C70, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v16 = sub_1BE0522F4();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v17(v15, v9);
  if (v16)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CF0, &qword_1BE1001C8);
    (*(*(v18 - 8) + 16))(v3, v37, v18);
    *&v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56D30, &qword_1BE1001D8) + 36)] = 256;
    v3[*(v39 + 36)] = 0;
    v19 = &qword_1EBD56CD0;
    v20 = &qword_1BE1001A0;
    sub_1BD0DE19C(v3, v5, &qword_1EBD56CD0, &qword_1BE1001A0);
    swift_storeEnumTagMultiPayload();
    sub_1BD897894();
    sub_1BD897A30();
    sub_1BE04F9A4();
    v21 = v3;
  }

  else
  {
    v22 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CE8, &unk_1BE1001B8) + 36)];
    v23 = sub_1BE04EDE4();
    v24 = *(v23 + 20);
    v25 = *MEMORY[0x1E697F468];
    v26 = sub_1BE04F684();
    v27 = *(*(v26 - 8) + 104);
    v27(&v22[v24], v25, v26);
    __asm { FMOV            V0.2D, #7.0 }

    v36 = _Q0;
    *v22 = _Q0;
    *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CF0, &qword_1BE1001C8);
    (*(*(v33 - 8) + 16))(v8, v37, v33);
    v34 = &v8[*(v6 + 36)];
    v27(&v34[*(v23 + 20)], v25, v26);
    *v34 = v36;
    v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56CF8, &qword_1BE1001D0) + 36)] = 0;
    v19 = &qword_1EBD56CE0;
    v20 = &qword_1BE1001B0;
    sub_1BD0DE19C(v8, v5, &qword_1EBD56CE0, &qword_1BE1001B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD897894();
    sub_1BD897A30();
    sub_1BE04F9A4();
    v21 = v8;
  }

  return sub_1BD0DE53C(v21, v19, v20);
}

unint64_t sub_1BD896CDC()
{
  result = qword_1EBD56B98;
  if (!qword_1EBD56B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56B78, &qword_1BE0FFFB8);
    sub_1BD0DE4F4(&qword_1EBD56BA0, &qword_1EBD56BA8, &qword_1BE0FFFD0, MEMORY[0x1E697D7B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56B98);
  }

  return result;
}

unint64_t sub_1BD896D9C()
{
  result = qword_1EBD56BD0;
  if (!qword_1EBD56BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BC8, &qword_1BE0FFFF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BD8, &qword_1BE0FFFF8);
    sub_1BD896E5C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56BD0);
  }

  return result;
}

unint64_t sub_1BD896E5C()
{
  result = qword_1EBD56BE0;
  if (!qword_1EBD56BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BD8, &qword_1BE0FFFF8);
    sub_1BD896EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56BE0);
  }

  return result;
}

unint64_t sub_1BD896EE8()
{
  result = qword_1EBD56BE8;
  if (!qword_1EBD56BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BF0, &qword_1BE100000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56BF8, &qword_1BE100008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C00, &qword_1BE100010);
    sub_1BE04F9C4();
    sub_1BD897074();
    sub_1BD8973E8(&qword_1EBD56C68, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD8973E8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56BE8);
  }

  return result;
}

unint64_t sub_1BD897074()
{
  result = qword_1EBD56C08;
  if (!qword_1EBD56C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C00, &qword_1BE100010);
    sub_1BD89712C();
    sub_1BD0DE4F4(&qword_1EBD56C58, &qword_1EBD56C60, qword_1BE100040, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C08);
  }

  return result;
}

unint64_t sub_1BD89712C()
{
  result = qword_1EBD56C10;
  if (!qword_1EBD56C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C18, &qword_1BE100018);
    sub_1BD8971E4();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0, &unk_1BE0C9F40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C10);
  }

  return result;
}

unint64_t sub_1BD8971E4()
{
  result = qword_1EBD56C20;
  if (!qword_1EBD56C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C28, &qword_1BE100020);
    sub_1BD8972A0();
    sub_1BD8973E8(&qword_1EBD56C50, type metadata accessor for AccountAutomaticPaymentsDayPickerView.DayShapeModifier, &unk_1BE100150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C20);
  }

  return result;
}

unint64_t sub_1BD8972A0()
{
  result = qword_1EBD56C30;
  if (!qword_1EBD56C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C38, &qword_1BE100028);
    sub_1BD89732C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C30);
  }

  return result;
}

unint64_t sub_1BD89732C()
{
  result = qword_1EBD56C40;
  if (!qword_1EBD56C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C48, &unk_1BE100030);
    sub_1BD8973E8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C40);
  }

  return result;
}

uint64_t sub_1BD8973E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD897450(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD8973E8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__selectedDay);
}

uint64_t sub_1BD897528@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountAutomaticPaymentsDayPickerView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1BD89528C(a1, v6, a2);
}

unint64_t sub_1BD8975A8()
{
  result = qword_1EBD56C88;
  if (!qword_1EBD56C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56C78, &qword_1BE100078);
    sub_1BD2D5420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56C88);
  }

  return result;
}

void sub_1BD897634()
{
  v1 = *(type metadata accessor for AccountAutomaticPaymentsDayPickerView(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD8965AC(v3, v0 + v2, v4);
}

void sub_1BD897724(uint64_t a1)
{
  sub_1BD894384(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BD8977C0()
{
  result = qword_1EBD56CC0;
  if (!qword_1EBD56CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56CC8, &qword_1BE100148);
    sub_1BD0DE4F4(&qword_1EBD56B90, &qword_1EBD56B88, &qword_1BE0FFFC8, MEMORY[0x1E69817F8]);
    sub_1BD896CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56CC0);
  }

  return result;
}

unint64_t sub_1BD897894()
{
  result = qword_1EBD56D00;
  if (!qword_1EBD56D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56CE0, &qword_1BE1001B0);
    sub_1BD89794C();
    sub_1BD0DE4F4(&qword_1EBD56D18, &qword_1EBD56CF8, &qword_1BE1001D0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56D00);
  }

  return result;
}

unint64_t sub_1BD89794C()
{
  result = qword_1EBD56D08;
  if (!qword_1EBD56D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56CE8, &unk_1BE1001B8);
    sub_1BD0DE4F4(&qword_1EBD56D10, &qword_1EBD56CF0, &qword_1BE1001C8, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56D08);
  }

  return result;
}

unint64_t sub_1BD897A30()
{
  result = qword_1EBD56D20;
  if (!qword_1EBD56D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56CD0, &qword_1BE1001A0);
    sub_1BD897AE8();
    sub_1BD0DE4F4(&qword_1EBD56D38, &qword_1EBD56D40, &qword_1BE1001E8, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56D20);
  }

  return result;
}

unint64_t sub_1BD897AE8()
{
  result = qword_1EBD56D28;
  if (!qword_1EBD56D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56D30, &qword_1BE1001D8);
    sub_1BD0DE4F4(&qword_1EBD56D10, &qword_1EBD56CF0, &qword_1BE1001C8, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD491B8, &unk_1EBD491C0, &qword_1BE1001E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56D28);
  }

  return result;
}

unint64_t sub_1BD897BCC()
{
  result = qword_1EBD56D48;
  if (!qword_1EBD56D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD56D50, qword_1BE1001F0);
    sub_1BD897894();
    sub_1BD897A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56D48);
  }

  return result;
}

uint64_t sub_1BD897D3C()
{
  key[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BE04D214();
  v206 = *(v1 - 8);
  v207 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v208 = &v197 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v198 = &v197 - v4;
  v5 = sub_1BE04BAC4();
  v203 = *(v5 - 1);
  v204 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v202 = &v197 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56DF8, qword_1BE100258);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v200 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v205 = &v197 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v197 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v197 - v15;
  v17 = sub_1BE04C384();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v0;
  v21 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_configuration);
  v22 = sub_1BE04C3A4();
  key[0] = MEMORY[0x1E69E7CC0];
  v30 = v22[2];
  v210 = v18;
  v211 = v21;
  v212 = v16;
  if (v30)
  {
    v201 = v13;
    v31 = v18 + 16;
    v32 = *(v18 + 16);
    v33 = (*(v31 + 64) + 32) & ~*(v31 + 64);
    v199 = v22;
    v34 = v22 + v33;
    v35 = *(v31 + 56);
    v213 = MEMORY[0x1E69E7CC0];
    v32(v20, v22 + v33, v17);
    while (1)
    {
      v43 = sub_1BE04C2F4();
      (*(v31 - 8))(v20, v17);
      if (v43)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x1BFB3F7A0]();
          if (*((key[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((key[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v213 = *((key[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BE052774();
          }

          sub_1BE0527C4();
          v213 = key[0];
        }

        else
        {
        }
      }

      v34 += v35;
      if (!--v30)
      {
        break;
      }

      v32(v20, v34, v17);
    }

    v199, v36, v37, v38, v39, v40, v41, v42;
    v16 = v212;
    v18 = v210;
    v13 = v201;
  }

  else
  {
    v22, v23, v24, v25, v26, v27, v28, v29;
    v213 = MEMORY[0x1E69E7CC0];
  }

  v44 = sub_1BE04C3A4();
  if (v44[2])
  {
    v52 = v44;
    (*(v18 + 16))(v16, v44 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);
    v44 = v52;
    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v44, v45, v46, v47, v48, v49, v50, v51;
  (*(v18 + 56))(v16, v53, 1, v17);
  sub_1BD89A318(v16, v13);
  v54 = *(v18 + 48);
  if (v54(v13, 1, v17) == 1)
  {
    sub_1BD0DE53C(v13, &qword_1EBD56DF8, qword_1BE100258);
    v62 = 0;
  }

  else
  {
    v63 = sub_1BE04C304();
    v64 = v13;
    v62 = v63;
    (*(v18 + 8))(v64, v17);
  }

  v65 = v213;
  if (!(v213 >> 62))
  {
    v66 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v66 | v62))
    {
      goto LABEL_21;
    }

LABEL_25:
    v74 = *(v209 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_context);
    sub_1BE052434();
    v76 = v75;
    v208 = sub_1BE04BB74();
    v76, v77, v78, v79, v80, v81, v82, v83;
    v84 = v202;
    v201 = v74;
    sub_1BE04BC34();
    v85 = sub_1BE04B9A4();
    (*(v203 + 8))(v84, v204);
    if (v62)
    {
      v86 = [v62 shareablePassConfiguration];
    }

    else
    {
      v86 = 0;
    }

    v87 = v205;
    sub_1BD89A318(v16, v205);
    v88 = v54(v87, 1, v17);
    v204 = v86;
    v205 = v62;
    if (v88 == 1)
    {
      sub_1BD0DE53C(v87, &qword_1EBD56DF8, qword_1BE100258);
    }

    else
    {
      v96 = sub_1BE04C2F4();
      (*(v210 + 8))(v87, v17);
      if (v96)
      {
        objc_opt_self();
        v97 = swift_dynamicCastObjCClass();
        if (v97)
        {
          v105 = v97;
          v213, v98, v99, v100, v101, v102, v103, v104;
          v106 = objc_allocWithZone(PKPushableExternalOfferCredentialProvisioningViewController);
          v107 = [v106 initWithContext:v85 credential:v105 reporter:v208];
          sub_1BE04BB14();
          if (v108)
          {
            v109 = v108;
            v110 = sub_1BE052404();
            v109, v111, v112, v113, v114, v115, v116, v117;
          }

          else
          {
            v110 = 0;
          }

          v134 = v209;
          [v107 setReferralSource_];

          [v107 setCoordinator_];
          v179 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
          v180 = objc_allocWithZone(v179);
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v214.receiver = v180;
          v214.super_class = v179;
          v70 = v107;
          v181 = objc_msgSendSuper2(&v214, sel_init);
          LOBYTE(key[0]) = 0;
          objc_setAssociatedObject(v70, key, v181, 1);

          goto LABEL_59;
        }

        v86 = v204;
      }
    }

    if (v86 | v66)
    {
      v118 = v86;
      v119 = objc_allocWithZone(PKShareableCredentialProvisioningViewController);
      sub_1BD0E5E8C(0, &unk_1EBD56E00, 0x1E69B8E78);
      v120 = v118;
      v121 = v208;
      v122 = v213;
      v123 = sub_1BE052724();
      v122, v124, v125, v126, v127, v128, v129, v130;
      v131 = [v119 initWithContext:v85 credentials:v123 configuration:v120 reporter:v121];

      v208 = v121;
      v132 = v200;
      sub_1BD89A318(v212, v200);
      if (v54(v132, 1, v17) == 1)
      {
        sub_1BD0DE53C(v132, &qword_1EBD56DF8, qword_1BE100258);
        v133 = 0;
        v134 = v209;
      }

      else
      {
        v163 = sub_1BE04C314();
        (*(v210 + 8))(v132, v17);
        v134 = v209;
        if (v163)
        {
          objc_opt_self();
          v133 = swift_dynamicCastObjCClass();
          if (!v133)
          {
          }
        }

        else
        {
          v133 = 0;
        }
      }

      [v131 setInvitation_];
      v165 = v131;
      sub_1BE04BB14();
      if (v166)
      {
        v167 = v166;
        v168 = sub_1BE052404();
        v167, v169, v170, v171, v172, v173, v174, v175;
      }

      else
      {
        v168 = 0;
      }

      [v165 setReferralSource_];

      [v165 setCoordinator_];
      v176 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
      v177 = objc_allocWithZone(v176);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v217.receiver = v177;
      v217.super_class = v176;
      v70 = v165;
      v178 = objc_msgSendSuper2(&v217, sel_init);
      LOBYTE(key[0]) = 0;
      objc_setAssociatedObject(v70, key, v178, 1);

      goto LABEL_59;
    }

    v135 = v212;
    v136 = v209;
    if (v62)
    {
      objc_opt_self();
      v137 = swift_dynamicCastObjCClass();
      v138 = v198;
      if (v137)
      {
        v139 = v137;
        v140 = objc_allocWithZone(PKPushableIdentityCredentialProvisioningViewController);
        sub_1BD0E5E8C(0, &unk_1EBD56E00, 0x1E69B8E78);
        swift_unknownObjectRetain_n();
        v141 = v208;
        v142 = v213;
        v143 = sub_1BE052724();
        v142, v144, v145, v146, v147, v148, v149, v150;
        v151 = [v140 initWithContext:v85 credentials:v143 configuration:v139 reporter:v141];

        swift_unknownObjectRelease();
        v208 = v141;

        v152 = v151;
        sub_1BE04BB14();
        if (v153)
        {
          v154 = v153;
          v155 = sub_1BE052404();
          v154, v156, v157, v158, v159, v160, v161, v162;
        }

        else
        {
          v155 = 0;
        }

        [v152 setReferralSource_];

        [v152 setCoordinator_];
        v188 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
        v189 = objc_allocWithZone(v188);
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        v215.receiver = v189;
        v215.super_class = v188;
        v70 = v152;
        v190 = objc_msgSendSuper2(&v215, sel_init);
        LOBYTE(key[0]) = 0;
        objc_setAssociatedObject(v70, key, v190, 1);
        swift_unknownObjectRelease();

        v134 = v136;
LABEL_59:
        v191 = type metadata accessor for ProvisioningUICoordinator();
        v192 = objc_allocWithZone(v191);
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        v193 = &v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
        v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v201;
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v211;
        swift_unknownObjectWeakAssign();
        *(v193 + 1) = &off_1F3BC1D90;
        swift_unknownObjectWeakAssign();
        v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
        swift_unknownObjectRetain();
        sub_1BE048964();
        sub_1BE048964();
        *&v192[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
        v216.receiver = v192;
        v216.super_class = v191;
        v194 = objc_msgSendSuper2(&v216, sel_init);

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        sub_1BD0DE53C(v212, &qword_1EBD56DF8, qword_1BE100258);
        *&v194[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BC2368;
        swift_unknownObjectWeakAssign();
        v195 = *(v134 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
        *(v134 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator) = v194;

        return v70;
      }

      v164 = v62;
    }

    else
    {
      v164 = 0;
      v138 = v198;
    }

    v213, v89, v90, v91, v92, v93, v94, v95;
    sub_1BE04D0E4();
    swift_unknownObjectRetain();
    v182 = sub_1BE04D204();
    v183 = sub_1BE052C34();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      *v184 = 138412290;
      v186 = v205;
      if (v205)
      {
        v187 = [v164 secureElementPassConfiguration];
        v186 = v187;
      }

      else
      {
        v187 = 0;
      }

      *(v184 + 4) = v187;
      *v185 = v186;
      _os_log_impl(&dword_1BD026000, v182, v183, "Unable to create push controller with configuration %@", v184, 0xCu);
      sub_1BD0DE53C(v185, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v185, -1, -1);
      MEMORY[0x1BFB45F20](v184, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v206 + 8))(v138, v207);
    v72 = v135;
    goto LABEL_63;
  }

  v73 = v213;
  v66 = sub_1BE053704();
  v65 = v73;
  if (v66 | v62)
  {
    goto LABEL_25;
  }

LABEL_21:
  v65, v55, v56, v57, v58, v59, v60, v61;
  v67 = v208;
  sub_1BE04D0E4();
  v68 = sub_1BE04D204();
  v69 = sub_1BE052C54();
  if (!os_log_type_enabled(v68, v69))
  {

    (*(v206 + 8))(v67, v207);
    v72 = v16;
LABEL_63:
    sub_1BD0DE53C(v72, &qword_1EBD56DF8, qword_1BE100258);
    return 2;
  }

  v70 = 2;
  v71 = swift_slowAlloc();
  *v71 = 0;
  _os_log_impl(&dword_1BD026000, v68, v69, "Unable to find pushable configuration or pushable credentials", v71, 2u);
  MEMORY[0x1BFB45F20](v71, -1, -1);

  (*(v206 + 8))(v67, v207);
  sub_1BD0DE53C(v16, &qword_1EBD56DF8, qword_1BE100258);
  return v70;
}

uint64_t sub_1BD898D30()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD898D6C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD898DBC(void *a1)
{
  v2 = v1;
  v44 = sub_1BE04C384();
  v4 = *(v44 - 8);
  v5 = MEMORY[0x1EEE9AC00](v44);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_configuration);
  v45 = a1;
  v9 = [a1 metadataProviders];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56E10, &unk_1BE0FFEE0);
  v10 = sub_1BE052744();

  if (v10 >> 62)
  {
    goto LABEL_16;
  }

  v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    while (1)
    {
      v19 = v10;
      v47 = MEMORY[0x1E69E7CC0];
      sub_1BD531FF4(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        break;
      }

      v39 = v8;
      v40 = v2;
      v8 = 0;
      v2 = 0;
      v10 = v47;
      v20 = v19;
      v41 = v19 & 0xFFFFFFFFFFFFFF8;
      v42 = v4 + 32;
      v43 = v19 & 0xC000000000000001;
      v21 = v19;
      while (1)
      {
        v22 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v43)
        {
          v23 = MEMORY[0x1BFB40900](v8, v20);
        }

        else
        {
          if (v8 >= *(v41 + 16))
          {
            goto LABEL_15;
          }

          v23 = v20[v8 + 4];
          swift_unknownObjectRetain();
        }

        v46 = v23;
        sub_1BD8990CC(v45, v7);
        swift_unknownObjectRelease();
        v47 = v10;
        v25 = *(v10 + 16);
        v24 = *(v10 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1BD531FF4((v24 > 1), v25 + 1, 1);
          v10 = v47;
        }

        *(v10 + 16) = v25 + 1;
        (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v7, v44);
        ++v8;
        v20 = v21;
        if (v22 == v18)
        {
          v21, v21, v26, v27, v28, v29, v30, v31;
          v8 = v39;
          v2 = v40;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v18 = sub_1BE053704();
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v10, v11, v12, v13, v14, v15, v16, v17;
LABEL_18:
    sub_1BE04C3B4();
    v32 = OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator;
    v33 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
    if (v33)
    {
      v34 = v33;
      sub_1BD81412C(v8);

      v35 = *(v2 + v32);
      if (v35)
      {
        v36 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
        v37 = v35;
        v38 = [v36 init];
        sub_1BD8145A8(v38);
      }
    }
  }
}

uint64_t sub_1BD8990CC@<X0>(void *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 shareablePassConfiguration];
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BE0B7020;
      *(v14 + 32) = v13;
      v15 = objc_allocWithZone(MEMORY[0x1E69B8520]);
      sub_1BD0E5E8C(0, &unk_1EBD56E20, 0x1E69B9260);
      swift_unknownObjectRetain_n();
      v16 = sub_1BE052724();
      v14, v17, v18, v19, v20, v21, v22, v23;
      v24 = [v15 initWithPrimaryAction:0 credentialsMetadata:v16];

      [v24 updateAllowManagedAppleIDWithConfiguration_];
      swift_unknownObjectRelease();
      *a3 = v24;
      goto LABEL_11;
    }
  }

  v25 = [a2 identityDocumentConfiguration];
  if (v25 && (v25, objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) != 0))
  {
    *a3 = [objc_allocWithZone(MEMORY[0x1E69B8500]) initWithMetadata_];
  }

  else
  {
    sub_1BE04D0E4();
    v27 = sub_1BE04D204();
    v28 = sub_1BE052C34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BD026000, v27, v28, "ProvisioningPushProvAddPassFlowItem is unable to determine the proper PKPushablePassConfigurationProvider adopter. Defaulting to pass through unmapped configuration, which may have undetermined behavioral consequences.", v29, 2u);
      MEMORY[0x1BFB45F20](v29, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    *a3 = a2;
    swift_unknownObjectRetain();
  }

LABEL_11:
  v30 = *MEMORY[0x1E69B82B0];
  v31 = sub_1BE04C384();
  return (*(*(v31 - 8) + 104))(a3, v30, v31);
}

void sub_1BD89945C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04C384();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v31 - v9);
  v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_configuration);
  if (a1 >> 62)
  {
    v12 = sub_1BE053704();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1BD531FF4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v32 = v11;
    v33 = v1;
    v13 = v38;
    v14 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v37 = *MEMORY[0x1E69B82A8];
      v36 = v5 + 32;
      do
      {
        v16 = v14;
        *v10 = MEMORY[0x1BFB40900](v15);
        (*(v5 + 104))(v10, v37, v4);
        v38 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1BD531FF4((v17 > 1), v18 + 1, 1);
          v13 = v38;
        }

        ++v15;
        *(v13 + 16) = v18 + 1;
        (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v10, v4);
        v14 = v16;
      }

      while (v12 != v15);
    }

    else
    {
      v19 = (a1 + 32);
      v37 = *MEMORY[0x1E69B82A8];
      v35 = *(v5 + 104);
      v36 = v5 + 104;
      v34 = v5 + 32;
      do
      {
        v20 = *v19;
        *v7 = *v19;
        v35(v7, v37, v4);
        v38 = v13;
        v21 = *(v13 + 16);
        v22 = *(v13 + 24);
        v23 = v20;
        if (v21 >= v22 >> 1)
        {
          sub_1BD531FF4((v22 > 1), v21 + 1, 1);
          v13 = v38;
        }

        *(v13 + 16) = v21 + 1;
        (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v4);
        ++v19;
        --v12;
      }

      while (v12);
    }

    v11 = v32;
    v2 = v33;
  }

  sub_1BE04C3B4();
  v24 = OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator;
  v25 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
  if (v25)
  {
    v26 = v25;
    sub_1BD81412C(v11);

    v27 = *(v2 + v24);
    if (v27)
    {
      v28 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
      v29 = v27;
      v30 = [v28 init];
      sub_1BD8145A8(v30);
    }
  }
}

void sub_1BD8999C8(uint64_t a1)
{
  v1 = sub_1BE04B944();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v162 - v6;
  v8 = sub_1BE04C384();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1BE04C3A4();
  if (v12[2])
  {
    v20 = v12;
    (*(v9 + 16))(v11, v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);
    v20, v21, v22, v23, v24, v25, v26, v27;
    if ((*(v9 + 88))(v11, v8) != *MEMORY[0x1E69B8288])
    {
      (*(v9 + 8))(v11, v8);
      return;
    }

    (*(v9 + 96))(v11, v8);
    v28 = *v11;
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (!v29)
    {

      return;
    }

    v163 = v29;
    v164 = v2;
    v30 = sub_1BE04A844();
    v31 = [v30 code];
    v32 = [v30 domain];
    v33 = sub_1BE052434();
    v35 = v34;

    v162[1] = *MEMORY[0x1E69B9E70];
    v37 = sub_1BE052434();
    v43 = v36;
    if (v33 == v37 && v35 == v36)
    {
      v35, v36, v37, v38, v39, v40, v41, v42;
      v43, v44, v45, v46, v47, v48, v49, v50;

      v51 = v164;
    }

    else
    {
      v52 = sub_1BE053B84();
      v35, v53, v54, v55, v56, v57, v58, v59;
      v43, v60, v61, v62, v63, v64, v65, v66;

      v51 = v164;
      if ((v52 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (v31 <= 6 && ((1 << v31) & 0x52) != 0)
    {
LABEL_15:
      sub_1BE04BB94();
      v67 = sub_1BE04B934();
      (*(v51 + 8))(v7, v1);
      if ([v67 respondsToSelector_])
      {
        v68 = v28;
        [v67 relinquishInvitation:v163 completion:0];
LABEL_34:
        swift_unknownObjectRelease();

        return;
      }

LABEL_35:

      swift_unknownObjectRelease();
      return;
    }

LABEL_17:
    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (v69)
    {
      v70 = [v69 underlyingError];
      if (v70)
      {
        v166 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
        if (swift_dynamicCast())
        {
          v71 = v165;
          v162[0] = [v71 code];
          v72 = [v71 domain];
          v73 = sub_1BE052434();
          v75 = v74;

          v77 = sub_1BE052434();
          v83 = v76;
          if (v73 == v77 && v75 == v76)
          {
            v75, v76, v77, v78, v79, v80, v81, v82;
            v83, v84, v85, v86, v87, v88, v89, v90;

            v51 = v164;
            v91 = v162[0];
          }

          else
          {
            v92 = sub_1BE053B84();
            v75, v93, v94, v95, v96, v97, v98, v99;
            v83, v100, v101, v102, v103, v104, v105, v106;

            v51 = v164;
            v91 = v162[0];
            if ((v92 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          if (v91 <= 6 && ((1 << v91) & 0x52) != 0)
          {
            goto LABEL_15;
          }
        }
      }
    }

LABEL_26:
    v107 = [v30 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v108 = sub_1BE052744();

    if (!v108[2])
    {
      v108, v109, v110, v111, v112, v113, v114, v115;
      goto LABEL_32;
    }

    v116 = v108[4];
    v117 = v116;
    v108, v118, v119, v120, v121, v122, v123, v124;
    v166 = v116;
    sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_32;
    }

    v125 = v165;
    v162[0] = [v125 code];
    v126 = [v125 domain];
    v127 = sub_1BE052434();
    v129 = v128;

    v131 = sub_1BE052434();
    v137 = v130;
    if (v127 == v131 && v129 == v130)
    {
      v129, v130, v131, v132, v133, v134, v135, v136;
      v137, v138, v139, v140, v141, v142, v143, v144;

      v51 = v164;
      v145 = v162[0];
    }

    else
    {
      v147 = sub_1BE053B84();
      v129, v148, v149, v150, v151, v152, v153, v154;
      v137, v155, v156, v157, v158, v159, v160, v161;

      v51 = v164;
      v145 = v162[0];
      if ((v147 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (v145 <= 6 && ((1 << v145) & 0x52) != 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    sub_1BE04BB94();
    v146 = sub_1BE04B934();
    (*(v51 + 8))(v4, v1);
    if ([v146 respondsToSelector_])
    {
      v68 = v28;
      [v146 deleteInvitation:v163 completion:0];
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v12, v13, v14, v15, v16, v17, v18, v19;
}

id sub_1BD89A118(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 64);
  *(a3 + 64) = a2;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a3 + 40);
    ObjectType = swift_getObjectType();
    v8 = a2;
    v9 = sub_1BE04BD44();
    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70, &unk_1BE0D6840);
    v12[0] = v9;
    v13 = 0;
    sub_1BD865A00(a1, &off_1F3BC2378, v12, ObjectType, v6);
    swift_unknownObjectRelease();
    return sub_1BD0DE53C(v12, &unk_1EBD3F510, &unk_1BE0B9B30);
  }

  else
  {

    return a2;
  }
}

id sub_1BD89A220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator] = 0;
  swift_weakInit();
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_identifier];
  *v7 = 0xD000000000000017;
  *(v7 + 1) = 0x80000001BE13E2E0;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_configuration] = a2;
  swift_weakAssign();
  v9.receiver = v3;
  v9.super_class = ObjectType;
  sub_1BE048964();
  sub_1BE048964();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1BD89A318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56DF8, qword_1BE100258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD89A388(void *a1, char a2)
{
  if (a2)
  {
    v16 = a1;
    sub_1BD8999C8(v16);
    v4 = v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v17[0] = v16;
      v18 = 1;
      sub_1BD865A00(v2, &off_1F3BC2378, v17, ObjectType, v5);
      swift_unknownObjectRelease();
      sub_1BD0DE53C(v17, &unk_1EBD3F510, &unk_1BE0B9B30);
    }

    else
    {
    }
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_1BD89A118(v2, a1, Strong);

      v8, v9, v10, v11, v12, v13, v14, v15;
    }
  }
}

void sub_1BD89A4B8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
  if (v2)
  {
    v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_coordinator);
    if (a1)
    {
      v3 = v2;
      v4 = sub_1BE04A844();
    }

    else
    {
      v5 = v2;
      v4 = 0;
    }

    v6 = [objc_opt_self() errorWithUnderlyingError:v4 defaultSeverity:5];

    v7 = v6;
    sub_1BD8999C8(v7);
    v8 = v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningPushProvAddPassFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v12[0] = v7;
      v13 = 1;
      sub_1BD865A00(v1, &off_1F3BC2378, v12, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_1BD0DE53C(v12, &unk_1EBD3F510, &unk_1BE0B9B30);
    }

    else
    {
    }
  }
}

id NearbyPeerPaymentAppearancePreferenceCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v7];

  return v15;
}

void sub_1BD89A68C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView);
  if (v2 == 1)
  {
    v6 = sub_1BD89B974();
  }

  else
  {
    v6 = sub_1BD89BB38();
  }

  v7 = v6;
  [v5 setImage_];
}

uint64_t sub_1BD89A71C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BD89A760(char a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView);
  if (a1)
  {
    v5 = sub_1BD89B974();
  }

  else
  {
    v5 = sub_1BD89BB38();
  }

  v6 = v5;
  [v4 setImage_];
}

uint64_t (*sub_1BD89A7E8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BD89A870;
}

void sub_1BD89A870(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView);
    if (*(v4 + v3[4]) == 1)
    {
      v6 = sub_1BD89B974();
    }

    else
    {
      v6 = sub_1BD89BB38();
    }

    v7 = v6;
    [v5 setImage_];
  }

  free(v3);
}

char *NearbyPeerPaymentAppearancePreferenceCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v7 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v8 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled] = 0;
  if (a3)
  {
    v10 = sub_1BE052404();
    a3, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v10 = 0;
  }

  v38.receiver = v3;
  v38.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  v18 = objc_msgSendSuper2(&v38, sel_initWithStyle_reuseIdentifier_, a1, v10);

  v19 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView;
  v20 = *&v18[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView];
  v21 = v18;
  [v20 setContentMode_];
  [v21 addSubview_];
  v22 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView;
  [*&v21[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView] setContentMode_];
  [*&v21[v22] setAlpha_];
  [v21 &selRef:*&v21[v22] analyticsEventReportWithPreSelect:?];
  v23 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel;
  v24 = *&v21[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 secondaryLabelColor];
  [v26 setTextColor_];

  v28 = *&v21[v23];
  v29 = objc_opt_self();
  v30 = *MEMORY[0x1E69DDD08];
  v31 = v28;
  v32 = [v29 preferredFontForTextStyle_];
  [v31 setFont_];

  [*&v21[v23] setNumberOfLines_];
  [*&v21[v23] setAlpha_];
  [*&v21[v23] setAccessibilityIdentifier_];
  [v21 addSubview_];
  v33 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel;
  v34 = *MEMORY[0x1E69DDCF8];
  v35 = *&v21[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel];
  v36 = [v29 preferredFontForTextStyle_];
  [v35 setFont_];

  [*&v21[v33] setNumberOfLines_];
  [*&v21[v33] setAlpha_];
  [*&v21[v33] setAccessibilityIdentifier_];
  [v21 addSubview_];
  [v21 setAccessibilityIdentifier_];

  return v21;
}

id sub_1BD89AD14(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v71.receiver = v1;
  v71.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  objc_msgSendSuper2(&v71, sel_layoutSubviews);
  [v1 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v73, &slice, &remainder, 16.0, CGRectMinXEdge);
  v74 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v74, &slice, &remainder, 16.0, CGRectMaxXEdge);
  v75 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v75, &slice, &remainder, 8.0, CGRectMinYEdge);
  v76 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v76, &slice, &remainder, 8.0, CGRectMaxYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  v6 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView];
  [v6 sizeThatFits_];
  v8 = v7.n128_f64[0];
  v9.n128_f64[0] = x;
  v10.n128_f64[0] = y;
  v11.n128_f64[0] = width;
  v12.n128_f64[0] = height;
  PKSizeAlignedInRect(0x100000000, v13, v7, v9, v10, v11, v12, v14);
  [v6 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  CGRectDivide(v77, &slice, &remainder, v8 + 16.0, CGRectMinXEdge);
  v15 = remainder.origin.x;
  v16 = remainder.origin.y;
  v17 = remainder.size.width;
  v18 = remainder.size.height;
  v19 = [v1 traitCollection];
  v20 = [v19 preferredContentSizeCategory];

  LOBYTE(v19) = sub_1BE052E84();
  v27.n128_u64[0] = 0x4044000000000000;
  if (v19)
  {
    v27.n128_f64[0] = 60.0;
  }

  v21.n128_u64[0] = v27.n128_u64[0];
  v22.n128_f64[0] = v15;
  v23.n128_f64[0] = v16;
  v24.n128_f64[0] = v17;
  v25.n128_f64[0] = v18;
  PKSizeAlignedInRect(0x100000000, v27, v21, v22, v23, v24, v25, v26);
  [*&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView] setFrame_];
  v28 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel];
  [v28 sizeThatFits_];
  v30 = v29;
  v32 = v31;
  v33 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel];
  [v33 sizeThatFits_];
  v67 = *&v35;
  v68 = v34;
  v36 = v32 + v35;
  v78.origin.x = v15;
  v78.origin.y = v16;
  v78.size.width = v17;
  v78.size.height = v18;
  v37 = CGRectGetHeight(v78);
  memset(&slice, 0, sizeof(slice));
  v38 = (v37 - v36) * 0.5;
  memset(&remainder, 0, sizeof(remainder));
  v79.origin.x = v15;
  v79.origin.y = v16;
  v79.size.width = v17;
  v79.size.height = v18;
  CGRectDivide(v79, &slice, &remainder, v38, CGRectMinYEdge);
  v80 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v80, &slice, &remainder, v38, CGRectMaxYEdge);
  v39 = remainder.origin.x;
  v40 = remainder.origin.y;
  v41 = remainder.size.width;
  v42 = remainder.size.height;
  v43.n128_u64[0] = v30;
  v44.n128_f64[0] = v32;
  v45.n128_u64[0] = *&remainder.origin.x;
  v46.n128_u64[0] = *&remainder.origin.y;
  v47.n128_u64[0] = *&remainder.size.width;
  v48.n128_u64[0] = *&remainder.size.height;
  PKSizeAlignedInRect(0, v43, v44, v45, v46, v47, v48, v49);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  [v28 setFrame_];
  v81.origin.x = v51;
  v81.origin.y = v53;
  v81.size.width = v55;
  v81.size.height = v57;
  v58 = CGRectGetHeight(v81);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v82.origin.x = v39;
  v82.origin.y = v40;
  v82.size.width = v41;
  v82.size.height = v42;
  CGRectDivide(v82, &slice, &remainder, v58, CGRectMinYEdge);
  v59.n128_u64[0] = *&remainder.origin.x;
  v60.n128_u64[0] = *&remainder.origin.y;
  v61.n128_u64[0] = *&remainder.size.width;
  v62.n128_u64[0] = *&remainder.size.height;
  v64.n128_u64[0] = v67;
  v63.n128_u64[0] = v68;
  PKSizeAlignedInRect(0, v63, v64, v59, v60, v61, v62, v65);
  return [v33 setFrame_];
}

double sub_1BD89B130(double a1, double a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  sub_1BE052E84();
  [*&v2[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView] sizeThatFits_];
  v8 = a1 + -48.0 - v7;
  [*&v2[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel] sizeThatFits_];
  [*&v2[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel] sizeThatFits_];
  return a1;
}

id sub_1BD89B2C8(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v78 - v8;
  v10 = type metadata accessor for NearbyPeerPaymentAppearanceSetting(0);
  v11 = *(a1 + *(v10 + 24));
  v12 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
  swift_beginAccess();
  v1[v12] = v11;
  v13 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView];
  v82 = v3;
  if (v11 == 1)
  {
    v14 = sub_1BD89B974();
  }

  else
  {
    v14 = sub_1BD89BB38();
  }

  v15 = v14;
  [v13 setImage_];

  v16 = a1 + *(v10 + 20);
  v18 = *v16;
  v17 = *(v16 + 8);
  v19 = *(v16 + 16);
  if (!*(v16 + 16))
  {
    if (v17 >> 60 != 15)
    {
      v40 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView];
      v41 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1BD5096E8(v18, v17, 0);
      sub_1BD5096E8(v18, v17, 0);
      sub_1BD030394(v18, v17);
      v42 = sub_1BE04AAB4();
      v43 = [v41 initWithData_];

      sub_1BD89BD18(v18, v17, 0, v44, v45, v46, v47, v48);
      [v40 setImage_];

      sub_1BD89BD18(v18, v17, 0, v49, v50, v51, v52, v53);
    }

    [*&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView] setAlpha_];
    sub_1BD89BD18(v18, v17, 0, v54, v55, v56, v57, v58);
    goto LABEL_14;
  }

  v81 = v13;
  if (v19 != 1)
  {
    v59 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel];
    sub_1BE048C84();
    v79 = v59;
    [v59 setAlpha_];
    v80 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel];
    [v80 setAlpha_];
    v60 = v82;
    (*(v4 + 104))(v6, *MEMORY[0x1E69B8050], v82);
    result = PKPassKitBundle();
    if (result)
    {
      v61 = result;
      sub_1BE04B6F4();
      v63 = v62;

      (*(v4 + 8))(v6, v60);
      v64 = sub_1BE052404();
      v63, v65, v66, v67, v68, v69, v70, v71;
      [v79 setText_];

      v34 = sub_1BE052404();
      sub_1BD89BD18(v18, v17, 2, v72, v73, v74, v75, v76);
      [v80 setText_];
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v20 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel];
  sub_1BE048C84();
  v79 = v20;
  [v20 setAlpha_];
  v80 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel];
  [v80 setAlpha_];
  v21 = v82;
  (*(v4 + 104))(v9, *MEMORY[0x1E69B8050], v82);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v23 = result;
  sub_1BE04B6F4();
  v25 = v24;

  (*(v4 + 8))(v9, v21);
  v26 = sub_1BE052404();
  v25, v27, v28, v29, v30, v31, v32, v33;
  [v79 setText_];

  v34 = sub_1BE052404();
  sub_1BD89BD18(v18, v17, 1, v35, v36, v37, v38, v39);
  [v80 setText_];
LABEL_13:

  v13 = v81;
LABEL_14:
  v77 = 0.5;
  if (v19 != 1)
  {
    v77 = 1.0;
  }

  [v13 setAlpha_];
  return [v1 setUserInteractionEnabled_];
}

id sub_1BD89B7B8(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  objc_msgSendSuper2(&v6, sel_prepareForReuse);
  v2 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView];
  [v2 setImage_];
  [v2 setAlpha_];
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel];
  [v3 setText_];
  [v3 setAlpha_];
  v4 = *&v1[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel];
  [v4 setText_];
  return [v4 setAlpha_];
}

id NearbyPeerPaymentAppearancePreferenceCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BD89B974()
{
  v0 = *MEMORY[0x1E69DDDC8];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B7020;
  v4 = objc_opt_self();
  v5 = v2;
  *(v3 + 32) = [v4 systemBlueColor];
  sub_1BD1F2290();
  v6 = sub_1BE052724();
  v3, v7, v8, v9, v10, v11, v12, v13;
  v14 = [v1 configurationWithPaletteColors_];

  v15 = [v5 configurationByApplyingConfiguration_];
  v16 = v15;
  v17 = sub_1BE052404();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  if (v18)
  {
    v19 = v18;
    v18 = [v19 imageWithRenderingMode_];
  }

  return v18;
}

id sub_1BD89BB38()
{
  v0 = *MEMORY[0x1E69DDDC8];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B7020;
  v4 = objc_opt_self();
  v5 = v2;
  *(v3 + 32) = [v4 systemBlueColor];
  sub_1BD1F2290();
  v6 = sub_1BE052724();
  v3, v7, v8, v9, v10, v11, v12, v13;
  v14 = [v1 configurationWithPaletteColors_];

  v15 = [v5 configurationByApplyingConfiguration_];
  v16 = v15;
  v17 = sub_1BE052404();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  if (v18)
  {
    v19 = v18;
    v18 = [v19 imageWithRenderingMode_];
  }

  return v18;
}

void sub_1BD89BD18(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 == 2 || a3 == 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }

  else if (!a3)
  {
    sub_1BD030220(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1BD89BE5C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v2 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_profileImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v3 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameSettingLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_nameLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v0 + OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled) = 0;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD89BF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v59 = a3;
  v57 = a2;
  v5 = type metadata accessor for PaymentShippingMethodItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *(v8 + 47) = KeyPath;
  v8[384] = 0;
  v10 = *(v5 + 44);
  v11 = *MEMORY[0x1E69BCA00];
  v12 = sub_1BE04C894();
  v13 = *(v12 - 8);
  (*(v13 + 104))(&v8[v10], v11, v12);
  v21 = *(a1 + 48);
  v62[2] = *(a1 + 32);
  v62[3] = v21;
  v22 = *(a1 + 80);
  v62[4] = *(a1 + 64);
  v62[5] = v22;
  v23 = *(a1 + 16);
  v62[0] = *a1;
  v62[1] = v23;
  v24 = *&v62[0];
  if (*&v62[0])
  {
    v25 = v6;
    v26 = v58;
    v27 = *(a1 + 56);
    v63[2] = *(a1 + 40);
    *v64 = v27;
    *&v64[16] = *(a1 + 72);
    v65 = *(a1 + 88);
    v28 = *(a1 + 24);
    v63[0] = *(a1 + 8);
    v63[1] = v28;
    v29 = *(a1 + 208);
    *(v8 + 12) = *(a1 + 192);
    *(v8 + 13) = v29;
    v30 = *(a1 + 176);
    *(v8 + 10) = *(a1 + 160);
    *(v8 + 11) = v30;
    v31 = *(a1 + 144);
    *(v8 + 8) = *(a1 + 128);
    *(v8 + 9) = v31;
    v32 = *(a1 + 112);
    *(v8 + 6) = *(a1 + 96);
    *(v8 + 7) = v32;
    v33 = *(a1 + 80);
    *(v8 + 4) = *(a1 + 64);
    *(v8 + 5) = v33;
    v34 = *(a1 + 48);
    *(v8 + 2) = *(a1 + 32);
    *(v8 + 3) = v34;
    v35 = *(a1 + 16);
    *v8 = *a1;
    *(v8 + 1) = v35;
    v36 = v59;
    *(v8 + 28) = v57;
    *(v8 + 29) = v36;
    *(v8 + 30) = v24;
    v37 = *(a1 + 40);
    v38 = *(a1 + 72);
    *(v8 + 296) = *(a1 + 56);
    *(v8 + 312) = v38;
    *(v8 + 41) = *(a1 + 88);
    *(v8 + 248) = *(a1 + 8);
    *(v8 + 264) = *(a1 + 24);
    *(v8 + 280) = v37;
    v39 = *&v63[0];
    sub_1BD0DE19C(v62, v61, &qword_1EBD45FA8, &unk_1BE1002F0);
    sub_1BD40F770(v63, v61);
    v40 = [v39 label];
    v41 = sub_1BE052434();
    v43 = v42;

    v61[0] = *&v64[8];
    sub_1BD0DE19C(v61, &v60, &qword_1EBD3A5C8, &qword_1BE0BAA50);
    v44 = [v39 dateComponentsRange];
    sub_1BD40F7CC(v63);
    if (!v44)
    {
      goto LABEL_8;
    }

    v45 = *(&v61[0] + 1);
    if (!*(&v61[0] + 1))
    {
      goto LABEL_8;
    }

    v46 = HIBYTE(*(&v61[0] + 1)) & 0xFLL;
    if ((*(&v61[0] + 1) & 0x2000000000000000) == 0)
    {
      v46 = *&v61[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      *(v8 + 42) = *&v61[0];
      *(v8 + 43) = v45;
      v47 = 1;
      *(v8 + 44) = v41;
      *(v8 + 45) = v43;
    }

    else
    {
LABEL_8:
      v47 = 0;
      *(v8 + 42) = v41;
      *(v8 + 43) = v43;
      *(v8 + 22) = v61[0];
    }

    v8[368] = v47;
    sub_1BD89C338(v8, v26);
    (*(v25 + 56))(v26, 0, 1, v5);
    return sub_1BD89C39C(v8);
  }

  else
  {
    v59, v14, v15, v16, v17, v18, v19, v20;
    sub_1BD2ED540(a1);
    KeyPath, v49, v50, v51, v52, v53, v54, v55;
    (*(v13 + 8))(&v8[v10], v12);
    return (*(v6 + 56))(v58, 1, 1, v5);
  }
}

uint64_t type metadata accessor for PaymentShippingMethodItem(uint64_t a1)
{
  result = qword_1EBD56E58;
  if (!qword_1EBD56E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD89C338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentShippingMethodItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD89C39C(uint64_t a1)
{
  v2 = type metadata accessor for PaymentShippingMethodItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD89C420(uint64_t a1)
{
  sub_1BD1030A8();
  if (v1 <= 0x3F)
  {
    sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD238A58(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1BE04C894();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD89C558@<X0>(uint64_t a1@<X8>)
{
  v55[1] = a1;
  v2 = sub_1BE04C894();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56E88, &qword_1BE100380);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v55 - v7;
  v56 = v1;
  v9 = type metadata accessor for PaymentShippingMethodItem(0);
  (*(v3 + 16))(v5, v1 + *(v9 + 44), v2);
  sub_1BE04C784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56EB8, &qword_1BE100398);
  sub_1BD89E66C(&qword_1EBD3C5D8, MEMORY[0x1E69BC970], MEMORY[0x1E69BC968]);
  sub_1BD89E6B4();
  sub_1BE04C6B4();
  v11 = v1[11];
  v12 = v1[9];
  v67 = v1[10];
  v10 = v67;
  v68 = v11;
  v13 = v1[11];
  v15 = v1[13];
  v69 = v1[12];
  v14 = v69;
  v70 = v15;
  v17 = v1[7];
  v18 = v1[5];
  v63 = v1[6];
  v16 = v63;
  v64 = v17;
  v19 = v1[7];
  v21 = v1[9];
  v65 = v1[8];
  v20 = v65;
  v66 = v21;
  v23 = v1[3];
  v24 = v1[1];
  v59 = v1[2];
  v22 = v59;
  v60 = v23;
  v25 = v1[3];
  v27 = v1[5];
  v61 = v1[4];
  v26 = v61;
  v62 = v27;
  v28 = v1[1];
  v58[0] = *v1;
  v29 = v58[0];
  v58[1] = v28;
  *v71 = 0;
  v30 = v1[4];
  *&v71[88] = v1[5];
  *&v71[72] = v30;
  v31 = v1[2];
  *&v71[56] = v1[3];
  *&v71[40] = v31;
  v32 = v1[8];
  *&v71[152] = v1[9];
  *&v71[136] = v32;
  v33 = v1[6];
  *&v71[120] = v1[7];
  *&v71[104] = v33;
  v34 = v1[12];
  *&v71[216] = v1[13];
  *&v71[200] = v34;
  v35 = v1[10];
  *&v71[184] = v1[11];
  *&v71[168] = v35;
  v36 = *v1;
  *&v71[24] = v1[1];
  *&v71[8] = v36;
  v37 = &v8[*(v6 + 36)];
  v38 = *&v71[208];
  *(v37 + 12) = *&v71[192];
  *(v37 + 13) = v38;
  v39 = *&v71[144];
  *(v37 + 8) = *&v71[128];
  *(v37 + 9) = v39;
  v40 = *&v71[176];
  *(v37 + 10) = *&v71[160];
  *(v37 + 11) = v40;
  v41 = *&v71[80];
  *(v37 + 4) = *&v71[64];
  *(v37 + 5) = v41;
  v42 = *&v71[112];
  *(v37 + 6) = *&v71[96];
  *(v37 + 7) = v42;
  v43 = *&v71[16];
  *v37 = *v71;
  *(v37 + 1) = v43;
  v44 = *&v71[48];
  *(v37 + 2) = *&v71[32];
  *(v37 + 3) = v44;
  v83 = v10;
  v84 = v13;
  v85 = v14;
  v86 = v1[13];
  v79 = v16;
  v80 = v19;
  v81 = v20;
  v82 = v12;
  v75 = v22;
  v76 = v25;
  v77 = v26;
  v78 = v18;
  v73 = v29;
  *(v37 + 28) = *&v71[224];
  v72 = 0;
  v74 = v24;
  sub_1BD5D7E20(v58, v57);
  sub_1BD0DE19C(v71, v57, &qword_1EBD56EA8, &qword_1BE100390);
  sub_1BD0DE53C(&v72, &qword_1EBD56EA8, &qword_1BE100390);
  sub_1BE052434();
  v46 = v45;
  sub_1BD89E580();
  sub_1BE050DE4();
  v46, v47, v48, v49, v50, v51, v52, v53;
  return sub_1BD0DE53C(v8, &qword_1EBD56E88, &qword_1BE100380);
}

uint64_t sub_1BD89C920(uint64_t a1)
{
  sub_1BE0512B4();

  return sub_1BE04C774();
}

uint64_t sub_1BD89C974@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  sub_1BD89C9CC(a2, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56EB8, &qword_1BE100398);
  v5 = a1 + *(result + 36);
  *v5 = KeyPath;
  v5[8] = 0;
  return result;
}

uint64_t sub_1BD89C9CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56F00, &unk_1BE1003B8);
  v26 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v26 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56F08, &unk_1BE1003F8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v26 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56EF0, &qword_1BE1003B0);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v26 - v7;
  v9 = sub_1BE04F3D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 376);
  if (*(a1 + 384) == 1)
  {
    if ((v13 & 1) == 0)
    {
LABEL_3:
      v14 = sub_1BD89DBF8();
      MEMORY[0x1EEE9AC00](v14);
      *(&v26 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E670, &qword_1BE0C36A0);
      sub_1BD0DE4F4(&qword_1EBD56F10, &qword_1EBD3E670, &qword_1BE0C36A0, MEMORY[0x1E69817F8]);
      sub_1BE04C634();
      v15 = v26;
      v16 = v30;
      (*(v26 + 16))(v6, v4, v30);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD56EE8, &qword_1EBD56EF0, &qword_1BE1003B0, MEMORY[0x1E6981870]);
      sub_1BD0DE4F4(&qword_1EBD56EF8, &qword_1EBD56F00, &unk_1BE1003B8, MEMORY[0x1E69BC918]);
      sub_1BE04F9A4();
      return (*(v15 + 8))(v4, v16);
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v18 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v13, 0, v19, v20, v21, v22, v23, v24);
    (*(v10 + 8))(v12, v9);
    if (v31 != 1)
    {
      goto LABEL_3;
    }
  }

  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56F18, &qword_1BE100408);
  sub_1BD89CEC8(&v8[*(v25 + 44)]);
  sub_1BD0DE19C(v8, v6, &qword_1EBD56EF0, &qword_1BE1003B0);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD56EE8, &qword_1EBD56EF0, &qword_1BE1003B0, MEMORY[0x1E6981870]);
  sub_1BD0DE4F4(&qword_1EBD56EF8, &qword_1EBD56F00, &unk_1BE1003B8, MEMORY[0x1E69BC918]);
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v8, &qword_1EBD56EF0, &qword_1BE1003B0);
}

uint64_t sub_1BD89CEC8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660, &unk_1BE0C3640);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v24 = &v29 - v23;
  sub_1BD89D2C8(v22);
  sub_1BD89D438();
  v31 = v11;
  sub_1BD89D5F4(v11);
  sub_1BD89D8DC(v5);
  v32 = v20;
  sub_1BD0DE19C(v24, v20, &qword_1EBD452C0, &qword_1BE0B7620);
  v30 = v14;
  sub_1BD0DE19C(v17, v14, &qword_1EBD38A98, &unk_1BE0C3CC0);
  v29 = v8;
  sub_1BD0DE19C(v11, v8, &qword_1EBD3E660, &unk_1BE0C3640);
  v25 = v33;
  sub_1BD0DE19C(v5, v33, &unk_1EBD5BB60, &qword_1BE0C4580);
  v26 = v34;
  sub_1BD0DE19C(v20, v34, &qword_1EBD452C0, &qword_1BE0B7620);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56F20, &qword_1BE100410);
  sub_1BD0DE19C(v14, v26 + v27[12], &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE19C(v8, v26 + v27[16], &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE19C(v25, v26 + v27[20], &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v5, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v31, &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE53C(v17, &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE53C(v24, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v25, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v29, &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE53C(v30, &qword_1EBD38A98, &unk_1BE0C3CC0);
  return sub_1BD0DE53C(v32, &qword_1EBD452C0, &qword_1BE0B7620);
}

void sub_1BD89D2C8(__n128 a1)
{
  sub_1BD89DBF8();
  sub_1BD0DDEBC();
  v1 = sub_1BE0506C4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BE0502C4();
  v9 = sub_1BE0505F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v8, v10, v12, v14, v16, v17, v18, v19;
  sub_1BD0DDF10(v1, v3, (v5 & 1), v20, v21, v22, v23, v24);
  v7, v25, v26, v27, v28, v29, v30, v31;
  v32 = sub_1BE051234();
  v33 = sub_1BE050564();
  v35 = v34;
  LOBYTE(v7) = v36;
  v38 = v37;
  v32, v34, v36, v37, v39, v40, v41, v42;
  sub_1BD0DDF10(v9, v11, (v13 & 1), v43, v44, v45, v46, v47);
  v15, v48, v49, v50, v51, v52, v53, v54;
  sub_1BE052434();
  v56 = v55;
  sub_1BE050DE4();
  v56, v57, v58, v59, v60, v61, v62, v63;
  sub_1BD0DDF10(v33, v35, (v7 & 1), v64, v65, v66, v67, v68);
  v38, v69, v70, v71, v72, v73, v74, v75;
}

void sub_1BD89D438()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1BE050324();
  v8 = sub_1BE0505F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v7, v9, v11, v13, v15, v16, v17, v18;
  sub_1BD0DDF10(v0, v2, (v4 & 1), v19, v20, v21, v22, v23);
  v6, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_1BE051224();
  v32 = sub_1BE050564();
  v34 = v33;
  LOBYTE(v7) = v35;
  v37 = v36;
  v31, v33, v35, v36, v38, v39, v40, v41;
  sub_1BD0DDF10(v8, v10, (v12 & 1), v42, v43, v44, v45, v46);
  v14, v47, v48, v49, v50, v51, v52, v53;
  KeyPath = swift_getKeyPath();
  sub_1BE052434();
  v55 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
  sub_1BD0EF0FC();
  sub_1BE050DE4();
  v55, v56, v57, v58, v59, v60, v61, v62;
  sub_1BD0DDF10(v32, v34, (v7 & 1), v63, v64, v65, v66, v67);
  KeyPath, v68, v69, v70, v71, v72, v73, v74;
  v37, v75, v76, v77, v78, v79, v80, v81;
}

uint64_t sub_1BD89D5F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v8 = &v97 - v7;
  v9 = *(v1 + 360);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = (v9 >> 56) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(v1 + 352) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v101 = *(v1 + 352);
    v102 = v9;
    v99 = v5;
    v100 = v4;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = sub_1BE050324();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v98 = a1;
    v23 = v22;
    v25 = v24;
    v18, v20, v22, v24, v26, v27, v28, v29;
    sub_1BD0DDF10(v11, v13, (v15 & 1), v30, v31, v32, v33, v34);
    v17, v35, v36, v37, v38, v39, v40, v41;
    v42 = sub_1BE051224();
    v43 = sub_1BE050564();
    v45 = v44;
    LOBYTE(v18) = v46;
    v48 = v47;
    v42, v44, v46, v47, v49, v50, v51, v52;
    sub_1BD0DDF10(v19, v21, (v23 & 1), v53, v54, v55, v56, v57);
    v25, v58, v59, v60, v61, v62, v63, v64;
    KeyPath = swift_getKeyPath();
    v101 = v43;
    v102 = v45;
    v103 = v18 & 1;
    v104 = v48;
    v105 = KeyPath;
    v106 = 1;
    sub_1BE052434();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
    sub_1BD0EF0FC();
    sub_1BE050DE4();
    v67, v68, v69, v70, v71, v72, v73, v74;
    sub_1BD0DDF10(v43, v45, (v18 & 1), v75, v76, v77, v78, v79);
    KeyPath, v80, v81, v82, v83, v84, v85, v86;
    v48, v87, v88, v89, v90, v91, v92, v93;
    v94 = v98;
    sub_1BD0DE204(v8, v98, &qword_1EBD38A98, &unk_1BE0C3CC0);
    return (*(v99 + 56))(v94, 0, 1, v100);
  }

  else
  {
LABEL_6:
    v96 = *(v5 + 56);

    return v96(a1, 1, 1, v6);
  }
}

uint64_t sub_1BD89D8DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v92 - v4;
  v6 = *(v1 + 320);
  v7 = *(v1 + 328);
  if (*(v1 + 280) & 1) == 0 && (*(v1 + 272) & 0xFFFFFFFFFFFFFFFELL) == 2 && (v8 = *(v1 + 248), sub_1BD22F42C(), v9 = [v8 amount], v10 = objc_msgSend(objc_opt_self(), sel_zero), LOBYTE(v8) = sub_1BE053074(), v9, v10, (v8))
  {
    v11 = *(v95 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    v96 = v6;
    v97 = v7;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v13 = sub_1BE0506C4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = sub_1BE050324();
    v21 = sub_1BE0505F4();
    v93 = v5;
    v94 = v3;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = a1;
    v29 = v28;
    v20, v23, v25, v28, v30, v31, v32, v33;
    sub_1BD0DDF10(v13, v15, (v17 & 1), v34, v35, v36, v37, v38);
    v19, v39, v40, v41, v42, v43, v44, v45;
    v46 = sub_1BE051224();
    v47 = sub_1BE050564();
    v49 = v48;
    LOBYTE(v19) = v50;
    v52 = v51;
    v46, v48, v50, v51, v53, v54, v55, v56;
    sub_1BD0DDF10(v22, v24, (v26 & 1), v57, v58, v59, v60, v61);
    v29, v62, v63, v64, v65, v66, v67, v68;
    v96 = v47;
    v97 = v49;
    v69 = (v19 & 1);
    v98 = v19 & 1;
    v99 = v52;
    sub_1BE052434();
    v71 = v70;
    v72 = v93;
    sub_1BE050DE4();
    v71, v73, v74, v75, v76, v77, v78, v79;
    sub_1BD0DDF10(v47, v49, v69, v80, v81, v82, v83, v84);
    v52, v85, v86, v87, v88, v89, v90, v91;
    sub_1BD0DE204(v72, v27, &qword_1EBD452C0, &qword_1BE0B7620);
    return (*(v95 + 56))(v27, 0, 1, v94);
  }
}

id sub_1BD89DBF8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v9;
  if ((*(v0 + 280) & 1) == 0 && (*(v0 + 272) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    (*(v2 + 104))(&v17 - v9, *MEMORY[0x1E69B8068], v1, v10.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
LABEL_10:

      (*(v2 + 8))(v11, v1);
      return v14;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = *MEMORY[0x1E69B8068];
  v16 = *(v2 + 104);
  if (*(v0 + 368) == 1)
  {
    v16(v7, v15, v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
      v11 = v7;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v16(v4, v15, v1, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v11 = v4;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1BD89DE80@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F4E4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E678, &qword_1BE0C36A8);
  return sub_1BD89DED8(a2 + *(v3 + 44));
}

uint64_t sub_1BD89DED8@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E688, &unk_1BE100450);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  *v14 = sub_1BE04F7C4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E690, &unk_1BE0C36C0);
  sub_1BD89E108(&v14[*(v15 + 44)]);
  sub_1BD89D8DC(v8);
  sub_1BD0DE19C(v14, v11, &qword_1EBD3E688, &unk_1BE100450);
  sub_1BD0DE19C(v8, v5, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE19C(v11, a2, &qword_1EBD3E688, &unk_1BE100450);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E698, &unk_1BE100460);
  v17 = a2 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1BD0DE19C(v5, a2 + *(v16 + 64), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v8, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v14, &qword_1EBD3E688, &unk_1BE100450);
  sub_1BD0DE53C(v5, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v11, &qword_1EBD3E688, &unk_1BE100450);
}

uint64_t sub_1BD89E108@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660, &unk_1BE0C3640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1BD89D438();
  sub_1BD89D5F4(v7);
  sub_1BD0DE19C(v13, v10, &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE19C(v7, v4, &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE19C(v10, a1, &qword_1EBD38A98, &unk_1BE0C3CC0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E6A0, &qword_1BE0C36D0);
  sub_1BD0DE19C(v4, a1 + *(v14 + 48), &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE53C(v7, &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE53C(v13, &qword_1EBD38A98, &unk_1BE0C3CC0);
  sub_1BD0DE53C(v4, &qword_1EBD3E660, &unk_1BE0C3640);
  return sub_1BD0DE53C(v10, &qword_1EBD38A98, &unk_1BE0C3CC0);
}

uint64_t sub_1BD89E2F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56E68, &qword_1BE100370);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-v3];
  v16 = v0;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56E70, &qword_1BE100378);
  sub_1BD89E4C4();
  sub_1BE051704();
  sub_1BE052434();
  v6 = v5;
  sub_1BD0DE4F4(&qword_1EBD56EB0, &qword_1EBD56E68, &qword_1BE100370, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_1BD89E4C4()
{
  result = qword_1EBD56E78;
  if (!qword_1EBD56E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56E70, &qword_1BE100378);
    sub_1BD89E580();
    sub_1BD89E66C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56E78);
  }

  return result;
}

unint64_t sub_1BD89E580()
{
  result = qword_1EBD56E80;
  if (!qword_1EBD56E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56E88, &qword_1BE100380);
    sub_1BD0DE4F4(&qword_1EBD56E90, &qword_1EBD56E98, &qword_1BE100388, MEMORY[0x1E69BC928]);
    sub_1BD0DE4F4(&qword_1EBD56EA0, &qword_1EBD56EA8, &qword_1BE100390, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56E80);
  }

  return result;
}

uint64_t sub_1BD89E66C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD89E6B4()
{
  result = qword_1EBD56EC0;
  if (!qword_1EBD56EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56EB8, &qword_1BE100398);
    sub_1BD89E76C();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56EC0);
  }

  return result;
}

unint64_t sub_1BD89E76C()
{
  result = qword_1EBD56EC8;
  if (!qword_1EBD56EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56ED0, &qword_1BE1003A0);
    sub_1BD89E7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56EC8);
  }

  return result;
}

unint64_t sub_1BD89E7F0()
{
  result = qword_1EBD56ED8;
  if (!qword_1EBD56ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56EE0, &qword_1BE1003A8);
    sub_1BD0DE4F4(&qword_1EBD56EE8, &qword_1EBD56EF0, &qword_1BE1003B0, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD56EF8, &qword_1EBD56F00, &unk_1BE1003B8, MEMORY[0x1E69BC918]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56ED8);
  }

  return result;
}

unint64_t sub_1BD89E8DC()
{
  result = qword_1EBD56F28;
  if (!qword_1EBD56F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56F30, &unk_1BE100470);
    sub_1BD0DE4F4(&qword_1EBD56EB0, &qword_1EBD56E68, &qword_1BE100370, MEMORY[0x1E697D680]);
    sub_1BD89E66C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56F28);
  }

  return result;
}

char *sub_1BD89E9F4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentStateLabelsView()) init];
  v7 = OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentButtonsView(0)) init];
  *&v3[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_context] = a1;
  objc_allocWithZone(type metadata accessor for NearbyPeerPaymentAppearAsView());
  v8 = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_appearAsView] = sub_1BD373C08(a1, v8);
  v13.receiver = v3;
  v13.super_class = type metadata accessor for NearbyPeerPaymentFooterView();
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = v9;
  if (a1 == 1)
  {
    [v9 addSubview_];
  }

  else
  {
    v11 = v9;
  }

  [v10 addSubview_];
  [v10 addSubview_];

  return v10;
}

void sub_1BD89EBF8(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v42.receiver = v1;
  v42.super_class = type metadata accessor for NearbyPeerPaymentFooterView();
  objc_msgSendSuper2(&v42, sel_layoutSubviews);
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v1[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_appearAsView];
  [v10 sizeThatFits_];
  v12 = v11.n128_f64[0];
  v13.n128_f64[0] = v3;
  v14.n128_f64[0] = v5;
  v15.n128_f64[0] = v7;
  v16.n128_f64[0] = v9;
  PKSizeAlignedInRect(0x200000001, v17, v11, v13, v14, v15, v16, v18);
  [v10 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v40, 0, sizeof(v40));
  v44.origin.x = v3;
  v44.origin.y = v5;
  v44.size.width = v7;
  v44.size.height = v9;
  CGRectDivide(v44, &slice, &v40, v12 + 24.0, CGRectMaxYEdge);
  v45 = v40;
  memset(&slice, 0, sizeof(slice));
  memset(&v40, 0, sizeof(v40));
  CGRectDivide(v45, &slice, &v40, 24.0, CGRectMinXEdge);
  v46 = v40;
  memset(&slice, 0, sizeof(slice));
  memset(&v40, 0, sizeof(v40));
  CGRectDivide(v46, &slice, &v40, 24.0, CGRectMaxXEdge);
  origin = v40.origin;
  size = v40.size;
  v21 = *&v1[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView];
  [v21 sizeThatFits_];
  v23 = v22.n128_f64[0];
  v25.n128_u64[0] = *&origin.y;
  v24.n128_u64[0] = *&origin;
  v27.n128_u64[0] = *&size.height;
  v26.n128_u64[0] = *&size;
  PKSizeAlignedInRect(0x200000001, v28, v22, v24, v25, v26, v27, v29);
  [v21 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v40, 0, sizeof(v40));
  v47.origin = origin;
  v47.size = size;
  CGRectDivide(v47, &slice, &v40, v23 + 24.0, CGRectMaxYEdge);
  if (*&v1[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_context] == 1)
  {
    v30 = v40.origin;
    v31 = v40.size;
    v32 = *&v1[OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView];
    [v32 sizeThatFits_];
    v34.n128_u64[0] = *&v30.y;
    v33.n128_u64[0] = *&v30;
    v36.n128_u64[0] = *&v31.height;
    v35.n128_u64[0] = *&v31;
    PKSizeAlignedInRect(0x200000001, v37, v38, v33, v34, v35, v36, v39);
    [v32 setFrame_];
  }
}

double sub_1BD89EECC(double a1)
{
  [*(v1 + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_appearAsView) sizeThatFits_];
  [*(v1 + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView) sizeThatFits_];
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_context) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView) sizeThatFits_];
  }

  return a1;
}

id NearbyPeerPaymentFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD89F14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_identifier];
  *v8 = 0xD000000000000019;
  *(v8 + 1) = 0x80000001BE13E590;
  *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_style] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD89F2F0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v163 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v158 = v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v154 = v153 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v159 = v153 - v10;
  v11 = sub_1BE04D214();
  v156 = *(v11 - 8);
  v157 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v155 = v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04B944();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153[1] = *&v2[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_context];
  sub_1BE04BB94();
  v17 = sub_1BE04B8E4();
  v153[0] = *(v14 + 8);
  (v153[0])(v16, v13);
  v161 = v17;
  v18 = [v17 context];
  v162 = v3;
  v19 = *&v3[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product];
  v20 = [v19 regionIdentifier];
  if (v20)
  {
    sub_1BE052434();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v18;
  v24 = [v23 regionForIdentifier_];
  v25 = v23;

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a1;
  v160 = a1;
  v28 = v163;
  v27[4] = v163;
  if (v22)
  {
    sub_1BE048964();
    sub_1BE048964();
    v22, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    if (!v24)
    {
      sub_1BE048964();
      v83 = v155;
      sub_1BE04D0E4();
      v84 = sub_1BE04D204();
      v26 = sub_1BE052C54();
      if (os_log_type_enabled(v84, v26))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1BD026000, v84, v26, "Selected a feature product for a region we are not yet registered in, register now", v85, 2u);
        MEMORY[0x1BFB45F20](v85, -1, -1);
      }

      (*(v156 + 8))(v83, v157);
      if (v25)
      {
        v86 = [v25 configuration];
        if (!v86)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v87 = v86;
        sub_1BE04BB94();
        v88 = sub_1BE04B934();
        (v153[0])(v16, v13);
        v89 = [v88 deviceRegion];
        swift_unknownObjectRelease();
        v90 = [v87 brokerURLForRegion_];

        if (v90)
        {
          v91 = v154;
          sub_1BE04A9F4();

          v92 = 0;
          v93 = v163;
          v94 = v158;
          v95 = v159;
        }

        else
        {
          v92 = 1;
          v93 = v163;
          v94 = v158;
          v95 = v159;
          v91 = v154;
        }

        v110 = sub_1BE04AA64();
        (*(*(v110 - 8) + 56))(v91, v92, 1, v110);
        sub_1BD226B4C(v91, v95);
      }

      else
      {
        v109 = sub_1BE04AA64();
        v95 = v159;
        (*(*(v109 - 8) + 56))(v159, 1, 1, v109);
        v93 = v163;
        v94 = v158;
      }

      sub_1BD38F438(v95, v94);
      v111 = sub_1BE04AA64();
      v112 = *(v111 - 8);
      v113 = 0;
      if ((*(v112 + 48))(v94, 1, v111) != 1)
      {
        v113 = sub_1BE04A9C4();
        (*(v112 + 8))(v94, v111);
      }

      v114 = swift_allocObject();
      v115 = v162;
      v116 = v160;
      v114[2] = v162;
      v114[3] = v116;
      v114[4] = v93;
      v114[5] = sub_1BD8A1268;
      v114[6] = v27;
      v168 = sub_1BD8A1274;
      v169 = v114;
      aBlock = MEMORY[0x1E69E9820];
      v165 = 1107296256;
      v166 = sub_1BD8A07F8;
      v167 = &block_descriptor_200;
      v117 = _Block_copy(&aBlock);
      v118 = v169;
      sub_1BE048964();
      sub_1BE048964();
      v119 = v115;
      v118, v120, v121, v122, v123, v124, v125, v126;
      v127 = v161;
      [v161 registerDeviceAtBrokerURL:v113 consistencyCheckResults:0 completion:v117];

      _Block_release(v117);
      v27, v128, v129, v130, v131, v132, v133, v134;

      sub_1BD0DE53C(v95, &unk_1EBD3CF70, &qword_1BE0BA000);
      return;
    }

    sub_1BE048964();
    v28 = v163;
    sub_1BE048964();
  }

  v36 = [v19 configuration];
  if (!v36)
  {
    v26, v37, v38, v39, v40, v41, v42, v43;
    __break(1u);
    goto LABEL_35;
  }

  v44 = v36;
  v45 = v25;
  v46 = [v36 featureIdentifier];

  if (v46 > 5)
  {
LABEL_36:
    v26, v47, v48, v49, v50, v51, v52, v53;
    sub_1BE053994();
    __break(1u);
    return;
  }

  if (((1 << v46) & 0x33) != 0)
  {
LABEL_11:
    sub_1BD89FCDC(1, v26, v160, v28);

    v27, v54, v55, v56, v57, v58, v59, v60;
    v26, v61, v62, v63, v64, v65, v66, v67;
LABEL_12:

    return;
  }

  if (v46 != 2)
  {
    v26, v47, v48, v49, v50, v51, v52, v53;
    v160(1);

    v27, v76, v77, v78, v79, v80, v81, v82;
    goto LABEL_12;
  }

  v68 = [v19 augmentedProduct];
  if (v68)
  {

    goto LABEL_11;
  }

  v26, v69, v70, v71, v72, v73, v74, v75;
  v96 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v97 = [objc_allocWithZone(MEMORY[0x1E69B8590]) init];
  v98 = [v97 experimentDetails];
  if (v98)
  {
    v99 = v98;
    v100 = sub_1BE052244();

    v101 = sub_1BE052224();
    v100, v102, v103, v104, v105, v106, v107, v108;
  }

  else
  {
    v101 = 0;
  }

  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v136 = swift_allocObject();
  v136[2] = v135;
  v136[3] = sub_1BD8A1268;
  v136[4] = v27;
  v168 = sub_1BD8A1284;
  v169 = v136;
  aBlock = MEMORY[0x1E69E9820];
  v165 = 1107296256;
  v166 = sub_1BD20815C;
  v167 = &block_descriptor_16_7;
  v137 = _Block_copy(&aBlock);
  v138 = v169;
  sub_1BE048964();
  v138, v139, v140, v141, v142, v143, v144, v145;
  [v96 augmentedProductForInstallmentConfiguration:0 experimentDetails:v101 withCompletion:v137];

  v27, v146, v147, v148, v149, v150, v151, v152;
  _Block_release(v137);
}

void sub_1BD89FCDC(char a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1BD89FE70();
    v10 = v9;
    v11 = *&v8[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_viewController];
    *&v8[OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_viewController] = v9;
    v12 = v9;

    if (v10 && (v27 = &unk_1F3D131A0, (v13 = swift_dynamicCastObjCProtocolConditional()) != 0))
    {
      v14 = v13;
      v15 = swift_allocObject();
      *(v15 + 16) = a3;
      *(v15 + 24) = a4;
      *(v15 + 32) = a1 & 1;
      v25[4] = sub_1BD8A12AC;
      v26 = v15;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 1107296256;
      v25[2] = sub_1BD3F08C0;
      v25[3] = &block_descriptor_41_1;
      v16 = _Block_copy(v25);
      v17 = v26;
      sub_1BE048964();
      v17, v18, v19, v20, v21, v22, v23, v24;
      [v14 preflightWithCompletion_];

      _Block_release(v16);
    }

    else
    {
      a3(a1 & 1);
    }
  }
}

void sub_1BD89FE70()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product);
  v7 = [v6 configuration];
  if (!v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v7 type];

  v10 = [v6 configuration];
  v11 = v10;
  if (v9 != 7)
  {
    if (v10)
    {
      v13 = [v10 state];

      if (v13 >= 3)
      {
        if ((v13 - 3) <= 1)
        {
          sub_1BD8A0E9C();
          return;
        }

        goto LABEL_22;
      }

      return;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = [v10 featureIdentifier];

  if (v12 <= 2)
  {
    if (v12 < 3)
    {
LABEL_6:
      sub_1BD8A0C3C();
      return;
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      sub_1BE04D0E4();
      v14 = sub_1BE04D204();
      v15 = sub_1BE052C54();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1BD026000, v14, v15, "Apple balance should have been handled earlier", v16, 2u);
        MEMORY[0x1BFB45F20](v16, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
      return;
    }

    if (v12 == 5)
    {
      goto LABEL_6;
    }

LABEL_22:
    sub_1BE053994();
    __break(1u);
  }
}

uint64_t sub_1BD8A00F4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a7;
  v35 = a8;
  v12 = sub_1BE051F54();
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1BE051FA4();
  v15 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v36 = sub_1BE052D54();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v19 = v35;
  v18[6] = v34;
  v18[7] = v19;
  aBlock[4] = sub_1BD8A129C;
  v40 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_29_7;
  v20 = _Block_copy(aBlock);
  v21 = v40;
  v22 = a3;
  v23 = a4;
  sub_1BE048964();
  sub_1BE048964();
  v21, v24, v25, v26, v27, v28, v29, v30;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v31 = v36;
  MEMORY[0x1BFB3FDF0](0, v17, v14, v20);
  _Block_release(v20);

  (*(v38 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v37);
}

void sub_1BD8A03C0(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  if (a1)
  {
    v16 = a1;
    sub_1BE04D0E4();
    v17 = a1;
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C54();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = a3;
      v22 = a4;
      v23 = v21;
      *v20 = 138412290;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1BD026000, v18, v19, "Could not register from product selection with error %@", v20, 0xCu);
      sub_1BD0DE53C(v23, &unk_1EBD3E590, &unk_1BE0B7E50);
      v26 = v23;
      a4 = v22;
      a3 = v31;
      MEMORY[0x1BFB45F20](v26, -1, -1);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    sub_1BD8A068C(a1, a3, a4);
  }

  else
  {
    sub_1BE04D0E4();
    v27 = sub_1BE04D204();
    v28 = sub_1BE052C54();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BD026000, v27, v28, "Registered from product selection", v29, 2u);
      MEMORY[0x1BFB45F20](v29, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    a5(1);
  }
}

void sub_1BD8A068C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_1BE04A844();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v21[4] = sub_1BD1B5F6C;
  v22 = v7;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1BD126964;
  v21[3] = &block_descriptor_35_5;
  v8 = _Block_copy(v21);
  v9 = v22;
  sub_1BE048964();
  v9, v10, v11, v12, v13, v14, v15, v16;
  v17 = PKAlertForDisplayableErrorWithCancelHandler(v6, 0, v8);
  _Block_release(v8);

  if (v17)
  {
    v18 = v3 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v19 + 24))(v17, ObjectType, v19);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    a2(0);
  }
}

void sub_1BD8A07F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BE048964();
  v16 = a4;
  v8(a2, a3, a4);
  v7, v9, v10, v11, v12, v13, v14, v15;
}

uint64_t sub_1BD8A0880(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v10 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = v14;
  v17 = v30;
  v16[4] = a3;
  v16[5] = v17;
  aBlock[4] = sub_1BD8A1290;
  v33 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_23_8;
  v18 = _Block_copy(aBlock);
  v19 = v33;
  v20 = a1;
  sub_1BE048964();
  v19, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v18);
  _Block_release(v18);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v31);
}

uint64_t sub_1BD8A0B78(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = [a1 product];
    if (v4)
    {
      v5 = v4;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = *(Strong + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product);

        [v8 augmentWithProduct_];
      }
    }
  }

  return a3(1, a2);
}

void sub_1BD8A0C3C()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v6 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_style);
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product);
  v9 = [v8 configuration];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v9 featureIdentifier];

  v12 = sub_1BE04BBD4();
  v13 = v8;
  v14 = [v13 onboardingItems];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  sub_1BD0E5E8C(0, &unk_1EBD41C48, 0x1E69B8818);
  v16 = sub_1BE052744();

  if (v16 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_5;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1BFB40900](0, v16);
      goto LABEL_8;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v16 + 32);
LABEL_8:
      v25 = v24;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_15;
  }

  v25 = 0;
LABEL_11:
  v16, v17, v18, v19, v20, v21, v22, v23;
  v26 = [objc_allocWithZone(PKFeatureOnBoardingViewController) initWithParentFlowController:v1 setupDelegate:v1 setupContext:v6 onboardingContext:v7 featureIdentifier:v11 provisioningController:v12 paymentSetupProduct:v13 currentPage:v25];

  if (!v26)
  {
LABEL_17:
    __break(1u);
  }
}

void sub_1BD8A0E9C()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v6 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v7 = sub_1BE04BBD4();
  v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_product);
  v9 = [v8 onboardingItems];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  sub_1BD0E5E8C(0, &unk_1EBD41C48, 0x1E69B8818);
  v11 = sub_1BE052744();

  if (v11 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_4;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v11 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1BFB40900](0, v11);
      goto LABEL_7;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v11 + 32);
LABEL_7:
      v20 = v19;
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = 0;
LABEL_10:
  v11, v12, v13, v14, v15, v16, v17, v18;
  v21 = [objc_allocWithZone(PKOnBoardingViewController) initWithParentFlowController:v1 setupDelegate:v1 context:v6 provisioningController:v7 paymentSetupProduct:v8 currentPage:v20];

  if (!v21)
  {
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1BD8A10B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD8A10EC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD8A113C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupFeatureOnboardingFlowItem_viewController);
  v2 = v1;
  return v1;
}

unint64_t sub_1BD8A1318()
{
  result = qword_1EBD56FF8;
  if (!qword_1EBD56FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56FF8);
  }

  return result;
}

const char *sub_1BD8A136C()
{
  if (*v0 == 4)
  {
    return "Finance";
  }

  else
  {
    return "Wallet";
  }
}

const char *sub_1BD8A1398()
{
  v1 = *v0;
  v2 = "BankConnectPayBill";
  v3 = "FinanceKitFinHealthGrouping";
  v4 = "BankConnectCTAInAppProvisioning";
  if (v1 != 3)
  {
    v4 = "FoundInInsights";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = "BankConnectPaymentDue";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

id sub_1BD8A14A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMSFraudStepUpView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BD8A152C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for SMSFraudStepUpView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV9PassKitUI18SMSFraudStepUpView11Coordinator_dismissAction];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD8A15A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD8A1690();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD8A1604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD8A1690();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD8A1668(uint64_t a1)
{
  sub_1BD8A1690();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD8A1690()
{
  result = qword_1EBD57078;
  if (!qword_1EBD57078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57078);
  }

  return result;
}

void sub_1BD8A16E4(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v63 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v10 = [objc_allocWithZone(PKExplanationViewController) initWithContext_];
  v11 = [v10 explanationView];
  if (!v11)
  {
    goto LABEL_8;
  }

  v64 = v10;
  v65 = a1;
  v12 = *MEMORY[0x1E69B80E0];
  v13 = *(v3 + 104);
  v13(v9, v12, v2);
  v63 = v11;
  v14 = v11;
  v15 = PKPassKitBundle();
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  sub_1BE04B6F4();
  v18 = v17;

  v21 = *(v3 + 8);
  v19 = (v3 + 8);
  v20 = v21;
  v21(v9, v2);
  v22 = sub_1BE052404();
  v18, v23, v24, v25, v26, v27, v28, v29;
  [v14 setTitleText_];

  v30 = v69;
  v66 = v12;
  v67 = v13;
  v13(v69, v12, v2);
  v31 = v14;
  v32 = PKPassKitBundle();
  if (!v32)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v33 = v32;
  v34 = v2;
  sub_1BE04B6F4();
  v36 = v35;

  v69 = v19;
  v20(v30, v2);
  v37 = sub_1BE052404();
  v36, v38, v39, v40, v41, v42, v43, v44;
  [v31 setBodyText_];

  v45 = [v31 dockView];
  if (!v45)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v46 = v45;
  v47 = [v45 primaryButton];

  if (!v47)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v48 = v68;
  v67(v68, v66, v34);
  v49 = PKPassKitBundle();
  if (!v49)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v50 = v49;
  sub_1BE04B6F4();
  v52 = v51;

  v20(v48, v34);
  v53 = sub_1BE052404();
  v52, v54, v55, v56, v57, v58, v59, v60;
  [v47 setTitle:v53 forState:0];

  v61 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57080, &unk_1BE1006C0);
  sub_1BE050154();
  v62 = v70;
  [v61 setDelegate_];

  v11 = v63;
  v10 = v64;
LABEL_8:
  if (v10)
  {
    [v10 setPrivacyLinkController_];
LABEL_11:

    return;
  }

  if ([objc_allocWithZone(PKExplanationViewController) initWithContext_])
  {
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t type metadata accessor for StatementDetailView(uint64_t a1)
{
  result = qword_1EBD57090;
  if (!qword_1EBD57090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD8A1BD8(uint64_t a1)
{
  sub_1BD3B7D94();
  if (v1 <= 0x3F)
  {
    sub_1BD3EC194(319);
    if (v2 <= 0x3F)
    {
      sub_1BD3B7E30(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD8A1C90@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v39 - v3;
  v41 = sub_1BE04F434();
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570A0, &qword_1BE100748);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570A8, &qword_1BE100750);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570B0, &qword_1BE100758);
  v16 = *(v15 - 8);
  v44 = v15;
  v45 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v39 - v17;
  v48 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570B8, &qword_1BE100760);
  sub_1BD0DE4F4(&qword_1EBD570C0, &qword_1EBD570B8, &qword_1BE100760, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  v18 = v41;
  (*(v4 + 104))(v6, *MEMORY[0x1E697C428], v41);
  v19 = sub_1BD0DE4F4(&qword_1EBD570C8, &qword_1EBD570A0, &qword_1BE100748, MEMORY[0x1E697CD20]);
  sub_1BE050E84();
  (*(v4 + 8))(v6, v18);
  (*(v8 + 8))(v10, v7);
  sub_1BD8A36E8();
  v21 = v20;
  v49 = v22;
  v50 = v20;
  v53 = v7;
  v54 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_1BD0DDEBC();
  v25 = MEMORY[0x1E69E6158];
  v26 = v40;
  v27 = v42;
  sub_1BE050B74();
  v21, v28, v29, v30, v31, v32, v33, v34;
  v35 = v27;
  (*(v43 + 8))(v14, v27);
  type metadata accessor for StatementDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  v36 = v46;
  sub_1BE0516C4();
  type metadata accessor for MultiHyperLinkDetailSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0, &qword_1BE0B86F0);
  v49 = v35;
  v50 = v25;
  v51 = OpaqueTypeConformance2;
  v52 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1BD8A5D10(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
  sub_1BD10CC54();
  v37 = v44;
  sub_1BE050F74();
  sub_1BD0DE53C(v36, &qword_1EBD393E8, &qword_1BE0B8680);
  return (*(v45 + 8))(v26, v37);
}

uint64_t sub_1BD8A2218@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570D0, &qword_1BE100768);
  MEMORY[0x1EEE9AC00](v62);
  v67 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v57 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570D8, &qword_1BE100770);
  MEMORY[0x1EEE9AC00](v60);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v57 - v8;
  v9 = sub_1BE04F5B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570E0, &qword_1BE100778);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v73 = a1;
  sub_1BD8A3BD8();
  sub_1BE051A44();
  sub_1BE04F594();
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570F0, &qword_1BE100780) + 36);
  v20 = v10[2];
  v70 = v10 + 2;
  v58 = v20;
  v20(&v18[v19], v12, v9);
  v21 = v10[7];
  v21(&v18[v19], 0, 1, v9);
  KeyPath = swift_getKeyPath();
  v23 = *(v14 + 44);
  v61 = v18;
  v24 = &v18[v23];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580, &qword_1BE0D8820);
  v25 = *(v68 + 28);
  v26 = v10[4];
  v71 = v10 + 4;
  v69 = v26;
  v26(v24 + v25, v12, v9);
  v59 = v10 + 7;
  v21(v24 + v25, 0, 1, v9);
  *v24 = KeyPath;
  v57 = *a1;
  v27 = [v57 identifier];
  if (v27)
  {

    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0uLL;
  }

  else
  {
    v29 = sub_1BE04F7C4();
    sub_1BD8A3A24(&v74);
    v33 = v74;
    v31 = v75;
    v30 = 1;
    v32 = v76;
  }

  v74 = v29;
  v75 = v30;
  v76 = v33;
  v77 = v31;
  v78 = v32;
  MEMORY[0x1EEE9AC00](v28);
  *(&v57 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD570F8, &qword_1BE1007C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57100, &qword_1BE1007C8);
  sub_1BD0DE4F4(&qword_1EBD57108, &qword_1EBD570F8, &qword_1BE1007C0, MEMORY[0x1E6981F48]);
  sub_1BD8A5644();
  v34 = v72;
  sub_1BE051A54();
  sub_1BE04F594();
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57128, &qword_1BE1007D8) + 36);
  v36 = v58;
  v58((v34 + v35), v12, v9);
  v21((v34 + v35), 0, 1, v9);
  v37 = swift_getKeyPath();
  v38 = (v34 + *(v60 + 36));
  v39 = *(v68 + 28);
  v69(v38 + v39, v12, v9);
  v21(v38 + v39, 0, 1, v9);
  *v38 = v37;
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD8A5D10(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  v40 = v57;
  v41 = sub_1BE04EEC4();
  v43 = v42;
  sub_1BE04F594();
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57130, &qword_1BE1007E0) + 36);
  v45 = v64;
  v36(&v64[v44], v12, v9);
  v21(&v45[v44], 0, 1, v9);
  *v45 = v40;
  *(v45 + 1) = v41;
  *(v45 + 2) = v43;
  v46 = swift_getKeyPath();
  v47 = &v45[*(v62 + 36)];
  v48 = *(v68 + 28);
  v69(v47 + v48, v12, v9);
  v21(v47 + v48, 0, 1, v9);
  *v47 = v46;
  v49 = v61;
  v50 = v63;
  sub_1BD0DE19C(v61, v63, &qword_1EBD570E0, &qword_1BE100778);
  v51 = v72;
  v52 = v65;
  sub_1BD0DE19C(v72, v65, &qword_1EBD570D8, &qword_1BE100770);
  v53 = v67;
  sub_1BD0DE19C(v45, v67, &qword_1EBD570D0, &qword_1BE100768);
  v54 = v66;
  sub_1BD0DE19C(v50, v66, &qword_1EBD570E0, &qword_1BE100778);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57138, &qword_1BE1007E8);
  sub_1BD0DE19C(v52, v54 + *(v55 + 48), &qword_1EBD570D8, &qword_1BE100770);
  sub_1BD0DE19C(v53, v54 + *(v55 + 64), &qword_1EBD570D0, &qword_1BE100768);
  sub_1BD0DE53C(v45, &qword_1EBD570D0, &qword_1BE100768);
  sub_1BD0DE53C(v51, &qword_1EBD570D8, &qword_1BE100770);
  sub_1BD0DE53C(v49, &qword_1EBD570E0, &qword_1BE100778);
  sub_1BD0DE53C(v53, &qword_1EBD570D0, &qword_1BE100768);
  sub_1BD0DE53C(v52, &qword_1EBD570D8, &qword_1BE100770);
  return sub_1BD0DE53C(v50, &qword_1EBD570E0, &qword_1BE100778);
}

__n128 sub_1BD8A2A2C@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD8A5D10(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  v4 = v3;
  v5 = sub_1BE04EEC4();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BE051694();
  result = v9;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  return result;
}

id sub_1BD8A2B00@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v249 = &v242 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v250 = &v242 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v242 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v242 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57140, &qword_1BE1007F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v247 = &v242 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v246 = &v242 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v245 = &v242 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v252 = &v242 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v244 = &v242 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v253 = &v242 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v254 = &v242 - v28;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v259 = &v242 - v31;
  v32 = *(v5 + 104);
  v261 = *MEMORY[0x1E69B80E0];
  v262 = v5 + 104;
  v260 = v32;
  v32(v14, v30);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v34 = result;
  v35 = sub_1BE04B6F4();
  v37 = v36;

  v38 = *(v5 + 8);
  v251 = v4;
  v257 = v38;
  v258 = v5 + 8;
  v38(v14, v4);
  v39 = *a1;
  v40 = [*a1 openingBalance];
  v41 = [v39 currencyCode];
  sub_1BE052434();
  v43 = v42;

  v44 = v40;
  v45 = sub_1BE052404();
  v46 = PKCurrencyAmountMake();

  v243 = a2;
  v248 = v39;
  if (v46 && (v54 = [v46 formattedStringValue], v46, v54))
  {
    v55 = sub_1BE052434();
    v57 = v56;
    v43, v56, v58, v59, v60, v61, v62, v63;
  }

  else
  {
    v43, v47, v48, v49, v50, v51, v52, v53;

    v37, v64, v65, v66, v67, v68, v69, v70;
    v35 = 0;
    v37 = 0;
    v55 = 0;
    v57 = 0;
  }

  v263 = v35;
  v264 = v37;
  v265 = v55;
  v266 = v57;
  sub_1BE052434();
  v72 = v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57148, &qword_1BE1007F8);
  v255 = sub_1BD8A56F4(&qword_1EBD57150, &qword_1EBD57148, &qword_1BE1007F8, sub_1BD8A5770);
  v256 = v73;
  sub_1BE050DE4();
  v72, v74, v75, v76, v77, v78, v79, v80;
  sub_1BD27273C(v35, v37, v55, v57, v81, v82, v83, v84);
  v85 = v251;
  v260(v11, v261, v251);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_23;
  }

  v86 = result;
  v87 = sub_1BE04B6F4();
  v89 = v88;

  v257(v11, v85);
  v90 = v248;
  v91 = [v248 closingBalance];
  v92 = [v90 currencyCode];
  sub_1BE052434();
  v94 = v93;

  v95 = v91;
  v96 = sub_1BE052404();
  v97 = PKCurrencyAmountMake();

  if (v97 && (v105 = [v97 formattedStringValue], v97, v105))
  {
    v106 = sub_1BE052434();
    v108 = v107;
    v94, v107, v109, v110, v111, v112, v113, v114;
  }

  else
  {
    v94, v98, v99, v100, v101, v102, v103, v104;

    v89, v115, v116, v117, v118, v119, v120, v121;
    v87 = 0;
    v89 = 0;
    v106 = 0;
    v108 = 0;
  }

  v263 = v87;
  v264 = v89;
  v265 = v106;
  v266 = v108;
  sub_1BE052434();
  v123 = v122;
  sub_1BE050DE4();
  v123, v124, v125, v126, v127, v128, v129, v130;
  sub_1BD27273C(v87, v89, v106, v108, v131, v132, v133, v134);
  v135 = v250;
  v260(v250, v261, v85);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_24;
  }

  v136 = result;
  v137 = sub_1BE04B6F4();
  v139 = v138;

  v257(v135, v85);
  v140 = [v90 totalDailyCashDeposits];
  v141 = [v90 currencyCode];
  sub_1BE052434();
  v143 = v142;

  v144 = v140;
  v145 = sub_1BE052404();
  v146 = PKCurrencyAmountMake();

  if (v146 && (v154 = [v146 formattedStringValue], v146, v154))
  {
    v155 = sub_1BE052434();
    v157 = v156;
    v143, v156, v158, v159, v160, v161, v162, v163;
  }

  else
  {
    v143, v147, v148, v149, v150, v151, v152, v153;

    v139, v164, v165, v166, v167, v168, v169, v170;
    v137 = 0;
    v139 = 0;
    v155 = 0;
    v157 = 0;
  }

  v263 = v137;
  v264 = v139;
  v265 = v155;
  v266 = v157;
  sub_1BE052434();
  v172 = v171;
  sub_1BE050DE4();
  v172, v173, v174, v175, v176, v177, v178, v179;
  sub_1BD27273C(v137, v139, v155, v157, v180, v181, v182, v183);
  v184 = v249;
  v260(v249, v261, v85);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_25;
  }

  v185 = result;
  v186 = sub_1BE04B6F4();
  v188 = v187;

  v257(v184, v85);
  v189 = [v90 interestEarned];
  v190 = [v90 currencyCode];
  sub_1BE052434();
  v192 = v191;

  v193 = v189;
  v194 = sub_1BE052404();
  v195 = PKCurrencyAmountMake();

  if (v195 && (v203 = [v195 formattedStringValue], v195, v203))
  {
    v204 = sub_1BE052434();
    v206 = v205;
    v192, v205, v207, v208, v209, v210, v211, v212;
  }

  else
  {
    v192, v196, v197, v198, v199, v200, v201, v202;

    v188, v213, v214, v215, v216, v217, v218, v219;
    v186 = 0;
    v188 = 0;
    v204 = 0;
    v206 = 0;
  }

  v263 = v186;
  v264 = v188;
  v265 = v204;
  v266 = v206;
  sub_1BE052434();
  v221 = v220;
  v222 = v244;
  sub_1BE050DE4();
  v221, v223, v224, v225, v226, v227, v228, v229;
  sub_1BD27273C(v186, v188, v204, v206, v230, v231, v232, v233);
  v234 = v252;
  sub_1BD0DE19C(v259, v252, &qword_1EBD57140, &qword_1BE1007F0);
  v235 = v254;
  v236 = v245;
  sub_1BD0DE19C(v254, v245, &qword_1EBD57140, &qword_1BE1007F0);
  v237 = v253;
  v238 = v246;
  sub_1BD0DE19C(v253, v246, &qword_1EBD57140, &qword_1BE1007F0);
  v239 = v247;
  sub_1BD0DE19C(v222, v247, &qword_1EBD57140, &qword_1BE1007F0);
  v240 = v243;
  sub_1BD0DE19C(v234, v243, &qword_1EBD57140, &qword_1BE1007F0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57160, &unk_1BE100800);
  sub_1BD0DE19C(v236, v240 + v241[12], &qword_1EBD57140, &qword_1BE1007F0);
  sub_1BD0DE19C(v238, v240 + v241[16], &qword_1EBD57140, &qword_1BE1007F0);
  sub_1BD0DE19C(v239, v240 + v241[20], &qword_1EBD57140, &qword_1BE1007F0);
  sub_1BD0DE53C(v222, &qword_1EBD57140, &qword_1BE1007F0);
  sub_1BD0DE53C(v237, &qword_1EBD57140, &qword_1BE1007F0);
  sub_1BD0DE53C(v235, &qword_1EBD57140, &qword_1BE1007F0);
  sub_1BD0DE53C(v259, &qword_1EBD57140, &qword_1BE1007F0);
  sub_1BD0DE53C(v239, &qword_1EBD57140, &qword_1BE1007F0);
  sub_1BD0DE53C(v238, &qword_1EBD57140, &qword_1BE1007F0);
  sub_1BD0DE53C(v236, &qword_1EBD57140, &qword_1BE1007F0);
  return sub_1BD0DE53C(v252, &qword_1EBD57140, &qword_1BE1007F0);
}

void sub_1BD8A36E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = *v0;
  v13 = [*v0 openingDate];
  sub_1BE04AEE4();

  v14 = sub_1BE04AE64();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v16 = [v12 closingDate];
  sub_1BE04AEE4();

  v17 = sub_1BE04AE64();
  v24 = v15;
  v15(v7, v4);
  v18 = PKDatesMidpoint();

  if (v18)
  {
    sub_1BE04AEE4();

    v19 = *(v5 + 32);
    v19(v3, v7, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    v19(v11, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    v20 = [v12 closingDate];
    sub_1BE04AEE4();

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_1BD0DE53C(v3, &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  v21 = sub_1BE04AE64();
  v22 = PKMonthAndYearStringFromDate();

  if (v22)
  {
    sub_1BE052434();

    v24(v11, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD8A3A24(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2, v4);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v31[0] = v9;
    v31[1] = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    v16 = v15;
    *a1 = v12;
    *(a1 + 8) = v13;
    v18 = (v17 & 1);
    *(a1 + 16) = v17 & 1;
    *(a1 + 24) = v15;
    sub_1BD0D7F18(v12, v13, v17 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v12, v14, v18, v19, v20, v21, v22, v23);
    v16, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BD8A3BD8()
{
  result = qword_1EBD570E8;
  if (!qword_1EBD570E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD570E8);
  }

  return result;
}

uint64_t sub_1BD8A3C2C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a4@<X8>)
{
  v7 = [a1 identifier];
  if (v7)
  {

    if (!a2)
    {
      type metadata accessor for SavingsStatementsModel(0);
      sub_1BD8A5D10(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
      result = sub_1BE04EEB4();
      __break(1u);
      return result;
    }

    v8 = a2;
    v9 = sub_1BD2F4DC8(a1);

    if (v9)
    {
      MEMORY[0x1EEE9AC00](v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57188, &qword_1BE1009D0);
      sub_1BD0DE4F4(&qword_1EBD57190, &qword_1EBD57188, &qword_1BE1009D0, MEMORY[0x1E6981F48]);
      sub_1BD8A5A58();
      sub_1BE051A54();

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57180, &qword_1BE1009C8);
      return (*(*(v11 - 8) + 56))(a4, 0, 1, v11);
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57180, &qword_1BE1009C8);
  v14 = *(*(v13 - 8) + 56);

  return v14(a4, 1, 1, v13);
}

void sub_1BD8A3E84(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if ([a1 supportsViewSavingsStatement])
  {
    v6 = a2;
    v7 = &unk_1F3B8F7E8;
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = [a1 exportSavingsTransactionDataFeatureDescriptor];
  if (v9 && (v10 = v9, v11 = [v9 supportedFileFormatsForTransactionData], v10, v11))
  {
    v12 = sub_1BE052744();

    v13 = a2;
    sub_1BE048C84();
  }

  else
  {
    a2 = 0;
    v12 = 0;
  }

  sub_1BD0D4770(v8, v7);
  sub_1BD0D4770(a2, v12);
  sub_1BD0D468C(v8, v7);
  sub_1BD0D468C(a2, v12);
  *a3 = v8;
  a3[1] = v7;
  a3[2] = a2;
  a3[3] = v12;
  sub_1BD0D468C(a2, v12);

  sub_1BD0D468C(v8, v7);
}

void sub_1BD8A3FC8(uint64_t a2@<X8>)
{
  if (PKSavingsFDICSignageEnabled())
  {
    v3 = sub_1BE0501E4();
    sub_1BE04E1F4();
    *(&v5 + 1) = v4;
    *(&v7 + 1) = v6;
    v8 = v3;
    v9 = xmmword_1BE0BBB00;
  }

  else
  {
    v8 = 0;
    v9 = xmmword_1BE0BBAF0;
    v5 = 0uLL;
    v7 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v8;
  *(a2 + 24) = v5;
  *(a2 + 40) = v7;
  *(a2 + 56) = 0;
}

uint64_t sub_1BD8A404C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v110 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v109 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v106 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v106 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v106 - v16;
  v111 = a1;
  v112 = a2;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  v111 = v18;
  v112 = v19;
  v24 = (v23 & 1);
  v113 = v23 & 1;
  v114 = v21;
  sub_1BE052434();
  v26 = v25;
  sub_1BE050DE4();
  v26, v27, v28, v29, v30, v31, v32, v33;
  sub_1BD0DDF10(v18, v20, v24, v34, v35, v36, v37, v38);
  v22, v39, v40, v41, v42, v43, v44, v45;
  v111 = a3;
  v112 = a4;
  sub_1BE048C84();
  v46 = sub_1BE0506C4();
  v48 = v47;
  LOBYTE(v22) = v49;
  v51 = v50;
  v52 = sub_1BE051234();
  v53 = sub_1BE050564();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v52, v54, v56, v58, v60, v61, v62, v63;
  sub_1BD0DDF10(v46, v48, (v22 & 1), v64, v65, v66, v67, v68);
  v51, v69, v70, v71, v72, v73, v74, v75;
  v111 = v53;
  v112 = v55;
  v113 = v57 & 1;
  v114 = v59;
  sub_1BE052434();
  v77 = v76;
  v78 = v107;
  sub_1BE050DE4();
  v77, v79, v80, v81, v82, v83, v84, v85;
  sub_1BD0DDF10(v53, v55, (v57 & 1), v86, v87, v88, v89, v90);
  v59, v91, v92, v93, v94, v95, v96, v97;
  v98 = v108;
  sub_1BD0DE19C(v17, v108, &qword_1EBD452C0, &qword_1BE0B7620);
  v99 = v78;
  v100 = v78;
  v101 = v109;
  sub_1BD0DE19C(v99, v109, &qword_1EBD452C0, &qword_1BE0B7620);
  v102 = v110;
  sub_1BD0DE19C(v98, v110, &qword_1EBD452C0, &qword_1BE0B7620);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45390, &qword_1BE1009C0);
  v104 = v102 + *(v103 + 48);
  *v104 = 0;
  *(v104 + 8) = 1;
  sub_1BD0DE19C(v101, v102 + *(v103 + 64), &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v100, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v17, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v101, &qword_1EBD452C0, &qword_1BE0B7620);
  return sub_1BD0DE53C(v98, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD8A43B0@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45360, &unk_1BE0D4080);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45368, &unk_1BE1009B0);
  sub_1BD8A404C(v9, v10, v12, v11, &v8[*(v13 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD57178, &qword_1EBD45360, &unk_1BE0D4080, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v3 + 8))(v5, v2);
  return sub_1BD0DE53C(v8, &qword_1EBD45360, &unk_1BE0D4080);
}

id sub_1BD8A4588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a1;
  v84 = a3;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v84 - v6;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  v20 = type metadata accessor for DownloadDocumentCell(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v9 + 104);
  v97 = *MEMORY[0x1E69B80E0];
  v93 = v9 + 104;
  v96 = v24;
  v24(v19, v21);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v26 = result;
  v27 = sub_1BE04B6F4();
  v29 = v28;

  v30 = *(v9 + 8);
  v94 = v9 + 8;
  v95 = v30;
  v30(v19, v8);
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD8A5D10(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  v31 = v89;
  sub_1BE048C84();
  v89 = sub_1BE04EEC4();
  v86 = v32;
  type metadata accessor for DeviceAuthenticationModel(0);
  sub_1BD8A5D10(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  v33 = sub_1BE04EEC4();
  v35 = v34;
  *v23 = v27;
  *(v23 + 1) = v29;
  *(v23 + 2) = v31;
  *(v23 + 3) = a2;
  v23[32] = 1;
  LOBYTE(v99) = 0;
  sub_1BE051694();
  v36 = *(&v103 + 1);
  v23[40] = v103;
  *(v23 + 6) = v36;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44520, &unk_1BE100B00);
  sub_1BE051694();
  v37 = v104;
  *(v23 + 56) = v103;
  *(v23 + 72) = v37;
  v38 = v106;
  *(v23 + 88) = v105;
  *(v23 + 104) = v38;
  v98 = 0;
  sub_1BE051694();
  v39 = *(&v99 + 1);
  v23[120] = v99;
  *(v23 + 16) = v39;
  v40 = sub_1BE04AA64();
  (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
  sub_1BD0DE19C(v7, v90, &unk_1EBD3CF70, &qword_1BE0BA000);
  sub_1BE051694();
  sub_1BD0DE53C(v7, &unk_1EBD3CF70, &qword_1BE0BA000);
  v41 = &v23[*(v20 + 48)];
  v42 = v86;
  *v41 = v89;
  *(v41 + 1) = v42;
  v43 = &v23[*(v20 + 52)];
  *v43 = v33;
  v43[1] = v35;
  v44 = v92;
  v96(v92, v97, v8);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v45 = result;
  v46 = v20;
  v91 = sub_1BE04B6F4();
  v90 = v47;

  v95(v44, v8);
  v48 = v87;
  v96(v87, v97, v8);
  result = PKPassKitBundle();
  v49 = v88;
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v50 = result;
  v92 = sub_1BE04B6F4();
  v89 = v51;

  v95(v48, v8);
  v96(v49, v97, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BE0B69E0;
  result = PKDeviceName();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v53 = result;
  v54 = &v23[*(v46 + 56)];
  v55 = sub_1BE052434();
  v57 = v56;

  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1BD110550();
  *(v52 + 32) = v55;
  *(v52 + 40) = v57;
  v58 = sub_1BE04B714();
  v60 = v59;
  v52, v59, v61, v62, v63, v64, v65, v66;
  v95(v49, v8);
  v67 = v90;
  *v54 = v91;
  v54[1] = v67;
  v68 = v89;
  v54[2] = v92;
  v54[3] = v68;
  v54[4] = v58;
  v54[5] = v60;
  v69 = v85;
  v96(v85, v97, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v70 = result;
    v71 = &v23[*(v46 + 60)];
    v72 = sub_1BE04B6F4();
    v74 = v73;

    v95(v69, v8);
    *v71 = v72;
    v71[1] = v74;
    sub_1BE052434();
    v76 = v75;
    sub_1BD8A5D10(&qword_1EBD571C8, type metadata accessor for DownloadDocumentCell, &unk_1BE0D1FB4);
    sub_1BE050DE4();
    v76, v77, v78, v79, v80, v81, v82, v83;
    return sub_1BD8A5BC8(v23);
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_1BD8A4DE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a1;
  v84 = a3;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v84 - v6;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  v20 = type metadata accessor for DownloadDocumentCell(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v9 + 104);
  v97 = *MEMORY[0x1E69B80E0];
  v93 = v9 + 104;
  v96 = v24;
  v24(v19, v21);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v26 = result;
  v27 = sub_1BE04B6F4();
  v29 = v28;

  v30 = *(v9 + 8);
  v94 = v9 + 8;
  v95 = v30;
  v30(v19, v8);
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD8A5D10(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  v31 = v89;
  sub_1BE048C84();
  v89 = sub_1BE04EEC4();
  v86 = v32;
  type metadata accessor for DeviceAuthenticationModel(0);
  sub_1BD8A5D10(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  v33 = sub_1BE04EEC4();
  v35 = v34;
  *v23 = v27;
  *(v23 + 1) = v29;
  *(v23 + 2) = v31;
  *(v23 + 3) = a2;
  v23[32] = 0;
  LOBYTE(v99) = 0;
  sub_1BE051694();
  v36 = *(&v103 + 1);
  v23[40] = v103;
  *(v23 + 6) = v36;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44520, &unk_1BE100B00);
  sub_1BE051694();
  v37 = v104;
  *(v23 + 56) = v103;
  *(v23 + 72) = v37;
  v38 = v106;
  *(v23 + 88) = v105;
  *(v23 + 104) = v38;
  v98 = 0;
  sub_1BE051694();
  v39 = *(&v99 + 1);
  v23[120] = v99;
  *(v23 + 16) = v39;
  v40 = sub_1BE04AA64();
  (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
  sub_1BD0DE19C(v7, v90, &unk_1EBD3CF70, &qword_1BE0BA000);
  sub_1BE051694();
  sub_1BD0DE53C(v7, &unk_1EBD3CF70, &qword_1BE0BA000);
  v41 = &v23[*(v20 + 48)];
  v42 = v86;
  *v41 = v89;
  *(v41 + 1) = v42;
  v43 = &v23[*(v20 + 52)];
  *v43 = v33;
  v43[1] = v35;
  v44 = v92;
  v96(v92, v97, v8);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v45 = result;
  v46 = v20;
  v91 = sub_1BE04B6F4();
  v90 = v47;

  v95(v44, v8);
  v48 = v87;
  v96(v87, v97, v8);
  result = PKPassKitBundle();
  v49 = v88;
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v50 = result;
  v92 = sub_1BE04B6F4();
  v89 = v51;

  v95(v48, v8);
  v96(v49, v97, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BE0B69E0;
  result = PKDeviceName();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v53 = result;
  v54 = &v23[*(v46 + 56)];
  v55 = sub_1BE052434();
  v57 = v56;

  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1BD110550();
  *(v52 + 32) = v55;
  *(v52 + 40) = v57;
  v58 = sub_1BE04B714();
  v60 = v59;
  v52, v59, v61, v62, v63, v64, v65, v66;
  v95(v49, v8);
  v67 = v90;
  *v54 = v91;
  v54[1] = v67;
  v68 = v89;
  v54[2] = v92;
  v54[3] = v68;
  v54[4] = v58;
  v54[5] = v60;
  v69 = v85;
  v96(v85, v97, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v70 = result;
    v71 = &v23[*(v46 + 60)];
    v72 = sub_1BE04B6F4();
    v74 = v73;

    v95(v69, v8);
    *v71 = v72;
    v71[1] = v74;
    sub_1BE052434();
    v76 = v75;
    sub_1BD8A5D10(&qword_1EBD571C8, type metadata accessor for DownloadDocumentCell, &unk_1BE0D1FB4);
    sub_1BE050DE4();
    v76, v77, v78, v79, v80, v81, v82, v83;
    return sub_1BD8A5BC8(v23);
  }

LABEL_11:
  __break(1u);
  return result;
}