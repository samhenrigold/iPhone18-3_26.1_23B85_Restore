id sub_25BDBC87C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s21WrapperViewControllerCMa();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_25BDBC8C0()
{
  v1 = *v0;
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](v1);
  return sub_25BDE0258();
}

uint64_t sub_25BDBC934(uint64_t a1)
{
  v2 = *v1;
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](v2);
  return sub_25BDE0258();
}

unint64_t sub_25BDBC98C(uint64_t a1)
{
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](a1);
  v2 = sub_25BDE0258();

  return sub_25BDBC9F8(a1, v2);
}

unint64_t sub_25BDBC9F8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_25BDBCA64(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD608, "Jl");
  v3 = sub_25BDE0198();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_25BDBC98C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_25BDBC98C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BDBCB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a3;
  v36 = a1;
  v37 = a2;
  v7 = sub_25BDDFDC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BDDFDE8();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NDOSignpost(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  if ([objc_opt_self() isSignedIntoAppleAccount])
  {
    v21 = a5;
    v22 = 0x6E776F6E6B6E55;
    sub_25BDA23D4(v20, 1u);
    v23 = sub_25BDBCA64(qword_286D704F8);
    sub_25BDBD124(&qword_286D704F8[4]);
    if (v23[2])
    {
      v24 = v40;
      v25 = sub_25BDBC98C(v40);
      if (v26)
      {
        v27 = (v23[7] + 16 * v25);
        v22 = *v27;
        v28 = v27[1];
      }

      else
      {
        v28 = 0xE700000000000000;
      }
    }

    else
    {
      v28 = 0xE700000000000000;
      v24 = v40;
    }

    sub_25BDAB79C(v20, v18);
    v33 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = a4;
    *(v34 + 24) = v21;
    sub_25BDAB800(v18, v34 + v33);

    sub_25BDA2664(v36, v37, v22, v28, sub_25BDBD18C, v34);

    if (v24 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_25BDC07B4(v24, 1);
      return sub_25BDAB92C(v20);
    }
  }

  else
  {
    sub_25BDABD64(0, &qword_27FBDD170, 0x277D85C78);
    v29 = sub_25BDE0018();
    v30 = swift_allocObject();
    *(v30 + 16) = a4;
    *(v30 + 24) = a5;
    aBlock[4] = sub_25BDBD058;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA2E38;
    aBlock[3] = &block_descriptor_2;
    v31 = _Block_copy(aBlock);

    sub_25BDDFDD8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25BDBD388(&qword_27FBDD178, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
    sub_25BDA7F8C();
    sub_25BDE00C8();
    MEMORY[0x25F87BDC0](0, v13, v10, v31);
    _Block_release(v31);

    (*(v8 + 8))(v10, v7);
    return (*(v38 + 8))(v13, v39);
  }

  return result;
}

void sub_25BDBD058()
{
  v1 = *(v0 + 16);
  type metadata accessor for NDOErrors(0);
  sub_25BDBD388(&qword_27FBDD168, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
  v2 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v1(0, v2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BDBD124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD600, "Hl");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25BDBD18C(void *a1)
{
  type metadata accessor for NDOSignpost(0);
  v3 = *(v1 + 16);
  if (a1)
  {
    v4 = _s21WrapperViewControllerCMa();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtCE19NewDeviceOutreachUICSo26NDODeviceCoverageDetailsUIP33_7AEC11C85262A7495351F90F23CAE37121WrapperViewController_childViewController] = a1;
    v9.receiver = v5;
    v9.super_class = v4;
    v6 = a1;
    v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
    v3(v7, 0);
  }

  else
  {
    type metadata accessor for NDOErrors(0);
    sub_25BDBD388(&qword_27FBDD168, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v8 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v3(0, v8);
  }

  sub_25BDB4990();
}

void type metadata accessor for NDODeviceCoverageDetailsFlowSource()
{
  if (!qword_27FBDD610)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FBDD610);
    }
  }
}

uint64_t sub_25BDBD388(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BDBD4D0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_25BDBD570(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_25BDDFE38();

  return v3;
}

uint64_t sub_25BDBD5D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25BDDFE48();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

id sub_25BDBD728(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_25BDDFDF8();

  return v3;
}

uint64_t sub_25BDBD798(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = sub_25BDDFE08();
}

uint64_t NDOAppleCareViewController.supportedInterfaceOrientations.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

id sub_25BDBD8CC(void *a1)
{
  v2 = sub_25BDBFBA8(a1);

  return v2;
}

id sub_25BDBD934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_25BDDFE38();

  if (a6)
  {
    v10 = sub_25BDDFE38();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDeviceInfo:a1 presentationType:a2 source:v9 deeplinkParams:v10];

  return v11;
}

id sub_25BDBD9F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_25BDBFE20(a1, a3, a4, a5, a6);

  return v7;
}

id sub_25BDBDAC4(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWarranty_];

  return v2;
}

void sub_25BDBDB0C()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___NDOAppleCareViewController_source);
  *v1 = 0x4174726F70707553;
  v1[1] = 0xEA00000000007070;
  v2 = (v0 + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v2 = 0;
  v2[1] = 0;
  sub_25BDE0158();
  __break(1u);
}

id sub_25BDBDC70(void *a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a3];

  return v4;
}

void sub_25BDBDCC8()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___NDOAppleCareViewController_source);
  *v1 = 0x4174726F70707553;
  v1[1] = 0xEA00000000007070;
  v2 = (v0 + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v2 = 0;
  v2[1] = 0;
  sub_25BDE0158();
  __break(1u);
}

id sub_25BDBDE20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = sub_25BDDFE38();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWarranty:a1 presentationType:a2 serialNumber:v6];

  return v7;
}

void sub_25BDBDEB4()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___NDOAppleCareViewController_source);
  *v1 = 0x4174726F70707553;
  v1[1] = 0xEA00000000007070;
  v2 = (v0 + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v2 = 0;
  v2[1] = 0;
  sub_25BDE0158();
  __break(1u);
}

id NDOAppleCareViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void NDOAppleCareViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___NDOAppleCareViewController_source);
  *v1 = 0x4174726F70707553;
  v1[1] = 0xEA00000000007070;
  v2 = (v0 + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v2 = 0;
  v2[1] = 0;
  sub_25BDE0158();
  __break(1u);
}

Swift::Void __swiftcall NDOAppleCareViewController.loadView()()
{
  v4.super_class = NDOAppleCareViewController;
  objc_msgSendSuper2(&v4, sel_loadView);
  v1 = [v0 navigationItem];
  sub_25BDABD64(0, &qword_27FBDD358, 0x277D751E0);
  sub_25BDABD64(0, &qword_27FBDD360, 0x277D750C8);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_25BDE0058();
  v3 = sub_25BDDFFF8();
  [v1 setRightBarButtonItem_];
}

void sub_25BDBE2EC()
{
  v0 = sub_25BDDF668();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25BDB7ADC();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_25BDDF648();
  v6 = sub_25BDDFFE8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25BD8D000, v5, v6, "Cancel button tapped", v7, 2u);
    MEMORY[0x25F87C8F0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25BDBF24C(0);
}

Swift::Void __swiftcall NDOAppleCareViewController.viewDidLoad()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-1] - v2;
  v4 = sub_25BDDF408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v0;
  v12.super_class = NDOAppleCareViewController;
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v11[3] = sub_25BDDFB58();
  v11[4] = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_25BDDFB48();
  sub_25BDE0008();
  v8 = [v0 urlString];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  sub_25BDDFE48();

  sub_25BDDF3F8();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25BDA8554(v3, &unk_27FBDD9A0, &unk_25BDE2670);
LABEL_4:
    sub_25BDBEDA0();
    return;
  }

  (*(v5 + 32))(v7, v3, v4);
  sub_25BDBE6B4(v7);
  (*(v5 + 8))(v7, v4);
}

void sub_25BDBE6B4(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_25BDDF408();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v7 = [v1 presentingViewController];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = sub_25BDA25C8(v6, v7, sub_25BDC0120, v8);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v57, v3);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v4 + 32))(v12 + v11, &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v13 = objc_allocWithZone(NDOAMSUILoadingViewController);
  v60 = sub_25BDC019C;
  v61 = v12;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v59 = sub_25BDA6394;
  *(&v59 + 1) = &block_descriptor_3;
  v14 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();
  v15 = [v13 initWithCreateAMSViewController_];
  _Block_release(v14);

  v57 = v9;
  [v15 setPresenter_];
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  [v2 addChildViewController_];
  v18 = [v2 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v15 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  [v19 addSubview_];

  v60 = 0;
  aBlock = 0u;
  v59 = 0u;
  v22 = v2;
  sub_25BDE0008();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25BDE2440;
  v24 = [v15 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v2 view];
  if (!v27)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v23 + 32) = v30;
  v31 = [v15 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v2 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v23 + 40) = v37;
  v38 = [v15 view];
  if (!v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v2 view];
  if (!v41)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 leadingAnchor];
  v45 = [v40 constraintEqualToAnchor_];

  *(v23 + 48) = v45;
  v46 = [v15 view];
  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = v46;
  v48 = [v46 trailingAnchor];

  v49 = [v2 view];
  if (v49)
  {
    v50 = v49;
    v51 = objc_opt_self();
    v52 = [v50 safeAreaLayoutGuide];

    v53 = [v52 trailingAnchor];
    v54 = [v48 constraintEqualToAnchor_];

    *(v23 + 56) = v54;
    sub_25BDABD64(0, &qword_27FBDD280, 0x277CCAAD0);
    v55 = sub_25BDDFEC8();

    [v51 activateConstraints_];

    [v15 didMoveToParentViewController_];
    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_25BDBEDA0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v2 = [v0 serialNumber];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_25BDC0744;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_25BDB688C;
  v5[3] = &block_descriptor_15;
  v4 = _Block_copy(v5);

  [v1 getDeviceInfoForSerialNumber:v2 usingPolicy:0 withReply:v4];
  _Block_release(v4);
}

Swift::Void __swiftcall NDOAppleCareViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
    [v5 configureWithTransparentBackground];
    v6 = [v1 navigationItem];
    v7 = v5;
    [v6 setScrollEdgeAppearance_];

    v8 = [v1 navigationItem];
    [v8 setStandardAppearance_];

    v9 = [v1 navigationItem];
    [v9 setCompactAppearance_];
  }

  else
  {
    __break(1u);
  }
}

id NDOAppleCareViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_25BDDFE38();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

void sub_25BDBF24C(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 presentor];
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      if ([v5 respondsToSelector_])
      {
        [v5 outreachFinishedWithCompletion_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v6 = [v2 serialNumber];
      [v5 outreachFinishedForDeviceWithSerialNumber:v6 withCompletion:a1];
      swift_unknownObjectRelease();
    }
  }
}

void *sub_25BDBF378(void *a1, uint64_t a2)
{
  v3 = sub_25BDDFDC8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BDDFDE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_25BDABD64(0, &qword_27FBDD170, 0x277D85C78);
    v13 = sub_25BDE0018();
    v19 = v7;
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v12;
    aBlock[4] = sub_25BDC074C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA2E38;
    aBlock[3] = &block_descriptor_21;
    v16 = _Block_copy(aBlock);
    v17 = a1;
    v18 = v12;

    sub_25BDDFDD8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25BDAC8B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
    sub_25BDA7F8C();
    sub_25BDE00C8();
    MEMORY[0x25F87BDC0](0, v10, v6, v16);
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v19);
  }

  return result;
}

uint64_t sub_25BDBF644(void *a1, void *a2)
{
  v4 = sub_25BDDF668();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_25BDDF408();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
LABEL_8:
    v23 = sub_25BDB7ADC();
    (*(v5 + 16))(v7, v23, v4);
    v24 = sub_25BDDF648();
    v25 = sub_25BDDFFC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_25BD8D000, v24, v25, "Fetched device info is missing fields, unable to load purchase flow, displaying error state", v26, 2u);
      MEMORY[0x25F87C8F0](v26, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40[3] = sub_25BDDFB58();
    v40[4] = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(v40);

    sub_25BDC4414(sub_25BDC0754, v27);

    return sub_25BDE0008();
  }

  v15 = a1;
  v16 = [v15 warranty];
  if (!v16)
  {

    goto LABEL_8;
  }

  v17 = v16;
  v39 = v14;
  v18 = [v16 agsURL];
  if (!v18)
  {

    goto LABEL_8;
  }

  v19 = v18;
  v38 = a2;
  sub_25BDDFE48();
  sub_25BDDF3F8();

  v20 = v12;
  v21 = *(v12 + 48);
  v22 = v11;
  if (v21(v10, 1, v11) == 1)
  {

    sub_25BDA8554(v10, &unk_27FBDD9A0, &unk_25BDE2670);
    goto LABEL_8;
  }

  (*(v20 + 32))(v39, v10, v11);
  v29 = v38;
  [v38 setUrlString_];

  v30 = [v17 additionalPurchaseFlowHeaders];
  if (v30)
  {
    v31 = v30;
    sub_25BDDFE08();
  }

  else
  {
    sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  v32 = sub_25BDDFDF8();

  [v29 setAdditionalHeaders_];

  v33 = [v17 additionalPurchaseFlowData];
  v34 = v39;
  if (v33)
  {
    v35 = v33;
    sub_25BDDFE08();
  }

  else
  {
    sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  v36 = sub_25BDDFDF8();

  [v29 setAdditionalBody_];

  sub_25BDBE6B4(v34);
  return (*(v20 + 8))(v34, v22);
}

uint64_t sub_25BDBFB60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

id sub_25BDBFBA8(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR___NDOAppleCareViewController_source];
  *v3 = 0x4174726F70707553;
  *(v3 + 1) = 0xEA00000000007070;
  v4 = &v1[OBJC_IVAR___NDOAppleCareViewController_urlString];
  *v4 = 0;
  v4[1] = 0;
  v5 = [a1 device];
  v6 = [v5 serialNumber];

  v7 = sub_25BDDFE48();
  v9 = v8;

  v10 = &v1[OBJC_IVAR___NDOAppleCareViewController_serialNumber];
  *v10 = v7;
  v10[1] = v9;
  v11 = [a1 warranty];
  if (v11 && (v12 = v11, v13 = [v11 agsURL], v12, v13))
  {
    v14 = sub_25BDDFE48();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *v4 = v14;
  v4[1] = v16;

  v17 = [a1 warranty];
  if (v17 && (v18 = v17, v19 = [v17 additionalPurchaseFlowHeaders], v18, v19))
  {
    v20 = sub_25BDDFE08();
  }

  else
  {
    v20 = sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  *&v1[OBJC_IVAR___NDOAppleCareViewController_additionalHeaders] = v20;
  v21 = [a1 warranty];
  if (v21 && (v22 = v21, v23 = [v21 additionalPurchaseFlowData], v22, v23))
  {
    v24 = sub_25BDDFE08();
  }

  else
  {
    v24 = sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  *&v1[OBJC_IVAR___NDOAppleCareViewController_additionalBody] = v24;
  v26.receiver = v1;
  v26.super_class = NDOAppleCareViewController;
  return objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
}

id sub_25BDBFE20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  swift_unknownObjectWeakInit();
  v9 = &v5[OBJC_IVAR___NDOAppleCareViewController_source];
  *v9 = 0x4174726F70707553;
  *(v9 + 1) = 0xEA00000000007070;
  v10 = &v5[OBJC_IVAR___NDOAppleCareViewController_urlString];
  *v10 = 0;
  v10[1] = 0;
  v11 = [a1 device];
  v12 = [v11 serialNumber];

  v13 = sub_25BDDFE48();
  v15 = v14;

  v16 = &v5[OBJC_IVAR___NDOAppleCareViewController_serialNumber];
  *v16 = v13;
  v16[1] = v15;
  v17 = [a1 warranty];
  if (v17 && (v18 = v17, v19 = [v17 agsURL], v18, v19))
  {
    v20 = sub_25BDDFE48();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *v10 = v20;
  v10[1] = v22;

  v23 = [a1 warranty];
  if (v23 && (v24 = v23, v25 = [v23 additionalPurchaseFlowHeaders], v24, v25))
  {
    v26 = sub_25BDDFE08();
  }

  else
  {
    v26 = sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  *&v5[OBJC_IVAR___NDOAppleCareViewController_additionalHeaders] = v26;
  v27 = [a1 warranty];
  if (v27 && (v28 = v27, v29 = [v27 additionalPurchaseFlowData], v28, v29))
  {
    v30 = sub_25BDDFE08();
  }

  else
  {
    v30 = sub_25BDA6C28(MEMORY[0x277D84F90]);
  }

  *&v5[OBJC_IVAR___NDOAppleCareViewController_additionalBody] = v30;
  *v9 = a2;
  *(v9 + 1) = a3;

  v32.receiver = v5;
  v32.super_class = NDOAppleCareViewController;
  return objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
}

void sub_25BDC00BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25BDBE2EC();
  }
}

void sub_25BDC0120(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_25BDBF24C(2 * (a2 != 0));
  }

  if (a2)
  {
    a2();
  }
}

void sub_25BDC019C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_25BDDF408() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v25 = v7;
    v26 = v6;
    v10 = [Strong additionalHeaders];
    v11 = sub_25BDDFE08();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD070, &qword_25BDE2210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BDE21F0;
    strcpy((inited + 32), "X-source-type");
    *(inited + 46) = -4864;
    v13 = [v9 source];
    v14 = sub_25BDDFE48();
    v16 = v15;

    *(inited + 48) = v14;
    *(inited + 56) = v16;
    v17 = sub_25BDA6C28(inited);
    swift_setDeallocating();
    sub_25BDA8554(inited + 32, &qword_27FBDD078, qword_25BDE2218);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v11;
    sub_25BDC049C(v17, sub_25BDBFB60, 0, isUniquelyReferenced_nonNull_native, &v27);

    v19 = v27;
    v20 = [v9 additionalBody];
    v21 = sub_25BDDFE08();

    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = a2;

    v23 = sub_25BDA4DBC();
    v24 = sub_25BDA4DF4();
    sub_25BDA4E34(v23, v2 + v26, v19, v21, v24, v25, sub_25BDA83B4, v22);
    swift_unknownObjectRelease();
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BDC049C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
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
    v28 = sub_25BDA69EC(v47, v48);
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
        sub_25BDAB988();
      }
    }

    else
    {
      sub_25BDAAFC0(v31, v46 & 1);
      v33 = sub_25BDA69EC(v22, v23);
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
      sub_25BDC073C(a1);
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
  result = sub_25BDE01E8();
  __break(1u);
  return result;
}

void sub_25BDC0754()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25BDBEDA0();
  }
}

uint64_t sub_25BDC07B4(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_25BDDFF68();
  v7 = sub_25BDDFF88();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  sub_25BDAFA6C(0, 0, v6, &unk_25BDE2CB0, v8);
}

uint64_t sub_25BDC08C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 64) = a4;
  v6 = sub_25BDDF668();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25BDC0988, 0, 0);
}

uint64_t sub_25BDC0988()
{
  v32 = v0;
  if (qword_27FBDE1B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = __swift_project_value_buffer(v3, qword_27FBDE1C0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_25BDDF648();
  v6 = sub_25BDDFFB8();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  if (v7)
  {
    v11 = *(v0 + 64);
    v12 = *(v0 + 96);
    v30 = *(v0 + 72);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315394;
    v15 = sub_25BDB5E1C(v11, v12);
    v29 = v8;
    v17 = sub_25BDA6444(v15, v16, &v31);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_25BDB5ECC(v11, v12);
    sub_25BDC0F78();
    v18 = sub_25BDDFE18();
    v20 = v19;

    v21 = sub_25BDA6444(v18, v20, &v31);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_25BD8D000, v5, v6, "Sending analytic event: %s with payload %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F87C8F0](v14, -1, -1);
    MEMORY[0x25F87C8F0](v13, -1, -1);

    (*(v9 + 8))(v29, v30);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v22 = *(v0 + 64);
  v23 = *(v0 + 96);
  sub_25BDB5E1C(v22, v23);
  v24 = sub_25BDDFE38();

  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v23;
  *(v0 + 48) = sub_25BDC0F54;
  *(v0 + 56) = v25;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_25BDC0D58;
  *(v0 + 40) = &block_descriptor_4;
  v26 = _Block_copy((v0 + 16));

  AnalyticsSendEventLazy();
  _Block_release(v26);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_25BDC0CBC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25BDAFE88;

  return sub_25BDC08C4(v4, v5, v6, v2, v3);
}

id sub_25BDC0D58(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_25BDC0F78();
    v4 = sub_25BDDFDF8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_25BDC0DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDC0E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BDC0ECC()
{
  v0 = sub_25BDDF668();
  __swift_allocate_value_buffer(v0, qword_27FBDE1C0);
  __swift_project_value_buffer(v0, qword_27FBDE1C0);
  sub_25BDB7AD0();

  return sub_25BDDF658();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25BDC0F78()
{
  result = qword_27FBDD650;
  if (!qword_27FBDD650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDD650);
  }

  return result;
}

uint64_t sub_25BDC0FC4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD658, &unk_25BDE2D40);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25BDC1048(uint64_t a1)
{
  type metadata accessor for CoverageCentralViewModel(0);
  sub_25BDC41C0(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel, &protocol conformance descriptor for CoverageCentralViewModel);

  return sub_25BDDFD88();
}

uint64_t sub_25BDC10D4()
{
  type metadata accessor for CoverageCentralMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  return v1;
}

uint64_t type metadata accessor for CoverageCentralMainView(uint64_t a1)
{
  result = qword_27FBDE270;
  if (!qword_27FBDE270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDC1174(uint64_t a1)
{
  type metadata accessor for CoverageCentralMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  return sub_25BDDFD68();
}

void (*sub_25BDC11CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CoverageCentralMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  *(v3 + 32) = sub_25BDDFD48();
  return sub_25BDB7E44;
}

uint64_t sub_25BDC1268()
{
  type metadata accessor for CoverageCentralMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  return sub_25BDDFD78();
}

uint64_t sub_25BDC12BC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CoverageCentralMainView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_25BDC13DC(v1, a1);
  sub_25BDC32B8(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_25BDC331C(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD660, qword_25BDE2D50);
  v9 = (a1 + *(result + 36));
  *v9 = sub_25BDC3380;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_25BDC13DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v90 = sub_25BDDF668();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6F0, &qword_25BDE2E30);
  MEMORY[0x28223BE20](v95);
  v96 = &v83 - v4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6E0, &unk_25BDE2E20);
  MEMORY[0x28223BE20](v119);
  v98 = &v83 - v5;
  v97 = sub_25BDDF798();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_25BDDF9A8();
  v92 = *(v104 - 8);
  v7 = MEMORY[0x28223BE20](v104);
  v91 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = &v83 - v9;
  v10 = type metadata accessor for CoverageCentralMainView(0);
  v113 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v114 = v11;
  v115 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6B8, &qword_25BDE2E10);
  MEMORY[0x28223BE20](v109);
  v13 = &v83 - v12;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6B0, &qword_25BDE2E08);
  v100 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v99 = &v83 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6F8, &qword_25BDE2E38);
  v103 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v102 = &v83 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD700, &qword_25BDE2E40);
  MEMORY[0x28223BE20](v117);
  v17 = (&v83 - v16);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD708, &unk_25BDE2E48);
  MEMORY[0x28223BE20](v106);
  v107 = &v83 - v18;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6A8, &qword_25BDE2DF8);
  MEMORY[0x28223BE20](v118);
  v110 = &v83 - v19;
  v105 = sub_25BDDFC38();
  v85 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B0, &qword_25BDE2E00);
  v84 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B8, &unk_25BDE2B10);
  v87 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v86 = &v83 - v25;
  v26 = sub_25BDDF6F8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (&v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  v30 = sub_25BDDFD58();
  (*(*v120 + 192))(v30);

  v31 = (v27)[11](v29, v26);
  if (v31 == *MEMORY[0x277D2B668])
  {
    v32 = (v27)[12](v29, v26);
    v33 = *v29;
    MEMORY[0x28223BE20](v32);
    *(&v83 - 2) = v33;
    *(&v83 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD710, &qword_25BDE2E58);
    sub_25BDC3E64();
    sub_25BDDFC78();

    LOBYTE(v33) = sub_25BDDFC58();
    sub_25BDDFB68();
    v34 = v109;
    v35 = &v13[*(v109 + 36)];
    *v35 = v33;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    v40 = sub_25BDC3A5C();
    v41 = v99;
    sub_25BDDFCA8();
    sub_25BDA8554(v13, &qword_27FBDD6B8, &qword_25BDE2E10);
    v42 = v115;
    sub_25BDC32B8(a1, v115);
    v43 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    v44 = swift_allocObject();
    sub_25BDC331C(v42, v44 + v43);
    v120 = v34;
    v121 = v40;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v102;
    v47 = v111;
    sub_25BDDFCE8();

    (*(v100 + 8))(v41, v47);
    v48 = v103;
    v49 = v112;
    v103[2](v107, v46, v112);
    swift_storeEnumTagMultiPayload();
    v50 = sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00, MEMORY[0x277CDD7F8]);
    v51 = sub_25BDC41C0(&qword_27FBDD5E0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v120 = v22;
    v121 = v105;
    v122 = v50;
    v123 = v51;
    swift_getOpaqueTypeConformance2();
    v120 = v47;
    v121 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v52 = v110;
    sub_25BDDFC18();
    sub_25BD90814(v52, v17);
    swift_storeEnumTagMultiPayload();
    sub_25BDC3898();
    sub_25BDC3B14();
    sub_25BDDFC18();
    sub_25BD90884(v52);
    return (*(v48 + 8))(v46, v49);
  }

  else
  {
    v102 = v22;
    v54 = v113;
    v55 = v115;
    v103 = v17;
    if (v31 == *MEMORY[0x277D2B660])
    {
      (v27)[12](v29, v26);
      v56 = v92;
      v57 = v101;
      v58 = v104;
      (*(v92 + 32))(v101, v29, v104);
      (*(v56 + 16))(v91, v57, v58);
      sub_25BDC32B8(a1, v55);
      v59 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v60 = swift_allocObject();
      sub_25BDC331C(v55, v60 + v59);
      v61 = v93;
      sub_25BDDF788();
      v62 = v94;
      v63 = v97;
      (*(v94 + 16))(v96, v61, v97);
      swift_storeEnumTagMultiPayload();
      sub_25BDC41C0(&qword_27FBDD6E8, MEMORY[0x277D2B6A8], MEMORY[0x277D2B6A0]);
      v64 = v98;
      sub_25BDDFC18();
      sub_25BDA84EC(v64, v103, &qword_27FBDD6E0, &unk_25BDE2E20);
      swift_storeEnumTagMultiPayload();
      sub_25BDC3898();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BDA8554(v64, &qword_27FBDD6E0, &unk_25BDE2E20);
      (*(v62 + 8))(v61, v63);
      return (*(v56 + 8))(v101, v104);
    }

    else if (v31 == *MEMORY[0x277D2B670])
    {
      sub_25BDDFB78();
      sub_25BDDFC28();
      v65 = sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00, MEMORY[0x277CDD7F8]);
      v66 = sub_25BDC41C0(&qword_27FBDD5E0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
      v67 = v86;
      v68 = v102;
      v69 = v105;
      sub_25BDDFCD8();
      (*(v85 + 8))(v21, v69);
      (*(v84 + 8))(v24, v68);
      v70 = v87;
      v71 = v108;
      (*(v87 + 16))(v107, v67, v108);
      swift_storeEnumTagMultiPayload();
      v120 = v68;
      v121 = v69;
      v122 = v65;
      v123 = v66;
      swift_getOpaqueTypeConformance2();
      v72 = sub_25BDC3A5C();
      v120 = v109;
      v121 = v72;
      v73 = swift_getOpaqueTypeConformance2();
      v120 = v111;
      v121 = v73;
      swift_getOpaqueTypeConformance2();
      v74 = v110;
      sub_25BDDFC18();
      sub_25BD90814(v74, v103);
      swift_storeEnumTagMultiPayload();
      sub_25BDC3898();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BD90884(v74);
      return (*(v70 + 8))(v67, v71);
    }

    else
    {
      v75 = sub_25BDB7ADC();
      v76 = v89;
      v77 = v88;
      v78 = v90;
      (*(v89 + 16))(v88, v75, v90);
      v79 = sub_25BDDF648();
      v80 = sub_25BDDFFC8();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_25BD8D000, v79, v80, "Should not hit unknown default case", v81, 2u);
        MEMORY[0x25F87C8F0](v81, -1, -1);
      }

      (*(v76 + 8))(v77, v78);
      swift_storeEnumTagMultiPayload();
      sub_25BDC41C0(&qword_27FBDD6E8, MEMORY[0x277D2B6A8], MEMORY[0x277D2B6A0]);
      v82 = v98;
      sub_25BDDFC18();
      sub_25BDA84EC(v82, v103, &qword_27FBDD6E0, &unk_25BDE2E20);
      swift_storeEnumTagMultiPayload();
      sub_25BDC3898();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BDA8554(v82, &qword_27FBDD6E0, &unk_25BDE2E20);
      return (v27)[1](v29, v26);
    }
  }
}

uint64_t sub_25BDC25C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverageCentralMainView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  sub_25BDC32B8(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25BDC331C(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD728, &unk_25BDE2E70);
  type metadata accessor for CoverageCentralSectionView(0);
  sub_25BDBC1A0(&qword_27FBDD730, &qword_27FBDD728, &unk_25BDE2E70, MEMORY[0x277D83980]);
  sub_25BDC41C0(&qword_27FBDD720, type metadata accessor for CoverageCentralSectionView, &unk_25BDE2A30);
  sub_25BDC41C0(&qword_27FBDD738, MEMORY[0x277D2B648], MEMORY[0x277D2B658]);
  return sub_25BDDFD28();
}

uint64_t sub_25BDC27C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BDDF6E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoverageCentralMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  (*(v5 + 16))(v7, a1, v4);
  return sub_25BDBB314(v7, a2);
}

uint64_t sub_25BDC28E0(uint64_t a1)
{
  v1[3] = a1;
  sub_25BDDFF48();
  v1[4] = sub_25BDDFF38();
  v3 = sub_25BDDFF28();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_25BDC2978, v3, v2);
}

uint64_t sub_25BDC2978()
{
  type metadata accessor for CoverageCentralMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  v1 = v0[2];
  v0[7] = v1;
  v4 = (*(*v1 + 520) + **(*v1 + 520));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_25BDC2ADC;

  return v4();
}

uint64_t sub_25BDC2ADC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_25BDC2C20, v3, v2);
}

uint64_t sub_25BDC2C20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25BDC2C80(uint64_t a1)
{
  v2 = type metadata accessor for CoverageCentralMainView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_25BDDFF88();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_25BDC32B8(a1, v5);
  sub_25BDDFF48();
  v10 = sub_25BDDFF38();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_25BDC331C(v5, v12 + v11);
  sub_25BDAFA6C(0, 0, v8, &unk_25BDE2E88, v12);
}

uint64_t sub_25BDC2E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_25BDDFF48();
  v4[4] = sub_25BDDFF38();
  v6 = sub_25BDDFF28();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_25BDC2ED0, v6, v5);
}

uint64_t sub_25BDC2ED0()
{
  type metadata accessor for CoverageCentralMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  v1 = v0[2];
  v0[7] = v1;
  v4 = (*(*v1 + 512) + **(*v1 + 512));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_25BDC3034;

  return v4();
}

uint64_t sub_25BDC3034()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_25BDC42D4, v3, v2);
}

uint64_t sub_25BDC3178()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v6 - v1;
  type metadata accessor for CoverageCentralMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  v3 = v6[1];
  sub_25BDC3BD0(v2);
  v4 = sub_25BDDF5D8();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  (*(*v3 + 392))(v2);
}

uint64_t sub_25BDC32B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverageCentralMainView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDC331C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverageCentralMainView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDC3398@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD658, &unk_25BDE2D40);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CoverageCentralMainView(0);
  type metadata accessor for CoverageCentralViewModel(0);
  sub_25BDC41C0(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel, &protocol conformance descriptor for CoverageCentralViewModel);
  return sub_25BDDFD88();
}

uint64_t sub_25BDC3474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_25BDC13DC(v2, a2);
  sub_25BDC32B8(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_25BDC331C(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD660, qword_25BDE2D50);
  v9 = (a2 + *(result + 36));
  *v9 = sub_25BDC42D0;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

void sub_25BDC35B4(uint64_t a1)
{
  sub_25BDC3698(319, &qword_27FBDD670, MEMORY[0x277D402D0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_25BDC3698(319, &qword_27FBDD588, type metadata accessor for CoverageCentralViewModel, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BDC3698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25BDC36FC()
{
  result = qword_27FBDD678;
  if (!qword_27FBDD678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD660, qword_25BDE2D50);
    sub_25BDC3788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD678);
  }

  return result;
}

unint64_t sub_25BDC3788()
{
  result = qword_27FBDD680;
  if (!qword_27FBDD680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD688, &qword_25BDE2DE8);
    sub_25BDC380C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD680);
  }

  return result;
}

unint64_t sub_25BDC380C()
{
  result = qword_27FBDD690;
  if (!qword_27FBDD690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD698, &qword_25BDE2DF0);
    sub_25BDC3898();
    sub_25BDC3B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD690);
  }

  return result;
}

unint64_t sub_25BDC3898()
{
  result = qword_27FBDD6A0;
  if (!qword_27FBDD6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD6A8, &qword_25BDE2DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD5B0, &qword_25BDE2E00);
    sub_25BDDFC38();
    sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00, MEMORY[0x277CDD7F8]);
    sub_25BDC41C0(&qword_27FBDD5E0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD6B0, &qword_25BDE2E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD6B8, &qword_25BDE2E10);
    sub_25BDC3A5C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD6A0);
  }

  return result;
}

unint64_t sub_25BDC3A5C()
{
  result = qword_27FBDD6C0;
  if (!qword_27FBDD6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD6B8, &qword_25BDE2E10);
    sub_25BDBC1A0(&qword_27FBDD6C8, &qword_27FBDD6D0, &qword_25BDE2E18, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD6C0);
  }

  return result;
}

unint64_t sub_25BDC3B14()
{
  result = qword_27FBDD6D8;
  if (!qword_27FBDD6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD6E0, &unk_25BDE2E20);
    sub_25BDC41C0(&qword_27FBDD6E8, MEMORY[0x277D2B6A8], MEMORY[0x277D2B6A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD6D8);
  }

  return result;
}

uint64_t sub_25BDC3BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25BDDFBE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD658, &unk_25BDE2D40);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25BDA84EC(v2, &v14 - v9, &qword_27FBDD658, &unk_25BDE2D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25BDDF5D8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_25BDDFFD8();
    v13 = sub_25BDDFC48();
    sub_25BDDF608();

    sub_25BDDFBD8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_25BDC3DE8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CoverageCentralMainView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_25BDC3E64()
{
  result = qword_27FBDD718;
  if (!qword_27FBDD718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD710, &qword_25BDE2E58);
    sub_25BDC41C0(&qword_27FBDD720, type metadata accessor for CoverageCentralSectionView, &unk_25BDE2A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD718);
  }

  return result;
}

uint64_t sub_25BDC3F18()
{
  v2 = *(type metadata accessor for CoverageCentralMainView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25BDAFE88;

  return sub_25BDC28E0(v0 + v3);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for CoverageCentralMainView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD658, &unk_25BDE2D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25BDDF5D8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BDC4140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CoverageCentralMainView(0);

  return sub_25BDC27C4(a1, a2);
}

uint64_t sub_25BDC41C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BDC4208()
{
  v2 = *(type metadata accessor for CoverageCentralMainView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25BDB45AC;

  return sub_25BDC2E38(v4, v5, v6, v0 + v3);
}

uint64_t sub_25BDC42D8()
{
  sub_25BDDFB18();
  v0 = sub_25BDC4770(0xD000000000000019, 0x800000025BDE5EB0);
  v1 = [v0 localize];

  sub_25BDDFE48();
  sub_25BDDFB08();
  v2 = sub_25BDC4770(0xD00000000000001CLL, 0x800000025BDE5ED0);
  v3 = [v2 localize];

  sub_25BDDFE48();
  sub_25BDDFAD8();
  v4 = sub_25BDDFE38();
  v5 = [objc_opt_self() systemImageNamed_];

  return sub_25BDDFB28();
}

uint64_t sub_25BDC4414(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_25BDE0088();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  sub_25BDDFB18();
  v9 = sub_25BDC4770(0xD000000000000014, 0x800000025BDE5F10);
  v10 = [v9 localize];

  sub_25BDDFE48();
  sub_25BDDFB08();
  v11 = sub_25BDC4770(0xD000000000000017, 0x800000025BDE5F30);
  v12 = [v11 localize];

  sub_25BDDFE48();
  sub_25BDDFAD8();
  v13 = sub_25BDDFE38();
  v14 = [objc_opt_self() systemImageNamed_];

  sub_25BDDFB28();
  sub_25BDE0068();
  v15 = sub_25BDC4770(0x59525445525F4343, 0xE800000000000000);
  v16 = [v15 localize];

  sub_25BDDFE48();
  sub_25BDE0078();
  (*(v3 + 16))(v6, v8, v2);
  sub_25BDDFB38();
  sub_25BDC49D8();
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  *(v17 + 24) = v21;

  sub_25BDE0058();
  v18 = sub_25BDDFAF8();
  sub_25BDDFAE8();
  v18(v22, 0);
  return (*(v3 + 8))(v8, v2);
}

id sub_25BDC4770(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BDDF408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25BDDF468();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentLocale];
  sub_25BDDF458();

  type metadata accessor for NDOCoverageCentralViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = [v12 bundleURL];

  sub_25BDDF3E8();
  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v15 = sub_25BDDFE38();
  v16 = sub_25BDDF448();
  v17 = sub_25BDDF3C8();
  v18 = [v14 initWithKey:v15 table:0 locale:v16 bundleURL:v17];

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  return v18;
}

unint64_t sub_25BDC49D8()
{
  result = qword_27FBDD360;
  if (!qword_27FBDD360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDD360);
  }

  return result;
}

uint64_t sub_25BDC4C04(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_25BDC4C68(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

id sub_25BDC4D6C()
{
  v1 = OBJC_IVAR___NDOSpecifierDataSource_ndoManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_25BDC4E20(uint64_t a1)
{
  v3 = OBJC_IVAR___NDOSpecifierDataSource_ndoManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_25BDC4F04()
{
  v1 = (v0 + OBJC_IVAR___NDOSpecifierDataSource_serialNumber);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25BDC4FD8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NDOSpecifierDataSource_serialNumber);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25BDC51A4(uint64_t a1)
{
  v3 = OBJC_IVAR___NDOSpecifierDataSource_ndoSpecifiers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_25BDC52D8()
{
  v1 = (v0 + OBJC_IVAR___NDOSpecifierDataSource_updateHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_25BDA6D70(*v1, v1[1]);
  return v2;
}

uint64_t sub_25BDC53F4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NDOSpecifierDataSource_updateHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_25BDA8480(v6, v7);
}

void sub_25BDC5554(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

id NDOSpecifierDataSource.init(defaultDevice:)(char a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithDefaultDevice_];
}

id NDOSpecifierDataSource.init(defaultDevice:)()
{
  v1 = OBJC_IVAR___NDOSpecifierDataSource_ndoManager;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v2 = &v0[OBJC_IVAR___NDOSpecifierDataSource_serialNumber];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR___NDOSpecifierDataSource_ndoSpecifiers] = MEMORY[0x277D84F90];
  v3 = &v0[OBJC_IVAR___NDOSpecifierDataSource_updateHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v0;
  v5.super_class = NDOSpecifierDataSource;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall NDOSpecifierDataSource.loadSpecifiers()()
{
  v1 = v0;
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 updateHandler];
  if (v6)
  {
    _Block_release(v6);
    v7 = sub_25BDB7ADC();
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_25BDDF648();
    v9 = sub_25BDDFFE8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25BD8D000, v8, v9, "Loading specifiers", v10, 2u);
      MEMORY[0x25F87C8F0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_25BDC8DA0(2, v1, v11, 0, 0);
  }
}

uint64_t sub_25BDC5964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_25BDC8DA0(2, v3, v6, a2, a3);
}

id NDOSpecifierDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_25BDC5BDC()
{
  v1 = [v0 serialNumber];
  if (v1)
  {
    v2 = v1;
LABEL_8:
    sub_25BDDFE48();

    return;
  }

  if ([objc_opt_self() isInternal])
  {
    v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v4 = sub_25BDDFE38();
    v5 = [v3 initWithSuiteName_];

    if (v5)
    {
      v6 = sub_25BDDFE38();
      v2 = [v5 stringForKey_];

      if (v2)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v2 = MobileGestalt_copy_serialNumber_obj();

    if (v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25BDC5D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v42 = a1;
  v5 = sub_25BDDFDC8();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25BDDFDE8();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BDDF668();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [Strong updateHandler];
    if (v20)
    {
      v21 = v20;
      v22 = sub_25BDB7ADC();
      (*(v12 + 16))(v15, v22, v11);
      v23 = sub_25BDDF648();
      v24 = sub_25BDDFFE8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_25BD8D000, v23, v24, "Update handler present, updating specifiers and calling update handler", v25, 2u);
        MEMORY[0x25F87C8F0](v25, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
      sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
      v26 = sub_25BDDFEC8();
      [v19 setNdoSpecifiers_];

      v21[2](v21);
      _Block_release(v21);
    }

    else
    {
      sub_25BDABD64(0, &qword_27FBDD170, 0x277D85C78);
      v38 = sub_25BDE0018();
      v31 = swift_allocObject();
      v31[2] = v19;
      v31[3] = a3;
      v32 = a3;
      v33 = v39;
      v34 = v42;
      v31[4] = v39;
      v31[5] = v34;
      aBlock[4] = sub_25BDC93FC;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BDA2E38;
      aBlock[3] = &block_descriptor_50;
      v35 = _Block_copy(aBlock);
      v36 = v19;
      sub_25BDA6D70(v32, v33);

      sub_25BDDFDD8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_25BDC9408(&qword_27FBDD178, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
      sub_25BDA7F8C();
      sub_25BDE00C8();
      v37 = v38;
      MEMORY[0x25F87BDC0](0, v10, v7, v35);
      _Block_release(v35);

      (*(v41 + 8))(v7, v5);
      (*(v40 + 8))(v10, v8);
    }
  }

  else
  {
    v27 = sub_25BDB7ADC();
    (*(v12 + 16))(v17, v27, v11);
    v28 = sub_25BDDF648();
    v29 = sub_25BDDFFC8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_25BD8D000, v28, v29, "Unable to update specifiers, self is nil", v30, 2u);
      MEMORY[0x25F87C8F0](v30, -1, -1);
    }

    (*(v12 + 8))(v17, v11);
  }
}

void sub_25BDC62C0(void *a1, void (*a2)(uint64_t), uint64_t a3, unint64_t a4)
{
  v8 = sub_25BDDF668();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v91 = &v89 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v89 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v89 - v18;
  v20 = [a1 hostingController];
  if (!v20)
  {
    v48 = sub_25BDB7ADC();
    (*(v9 + 16))(v19, v48, v8);
    v49 = sub_25BDDF648();
    v50 = sub_25BDDFFC8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v8;
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_25BD8D000, v49, v50, "Unable to update specifiers, missing specifier id to insert after", v52, 2u);
      v53 = v52;
      v8 = v51;
      MEMORY[0x25F87C8F0](v53, -1, -1);
    }

    v54 = (*(v9 + 8))(v19, v8);
    if (a2)
    {
      a2(v54);
    }

    return;
  }

  v89 = a4;
  v92 = v8;
  v93 = a2;
  v21 = v20;
  v22 = [v20 specifierIDToInsertAfter];

  v23 = v22;
  v24 = v22;
  if (!v22)
  {
    sub_25BDDFE48();
    v24 = sub_25BDDFE38();

    sub_25BDDFE48();
    v23 = sub_25BDDFE38();
  }

  v90 = sub_25BDDFE48();
  v26 = v25;
  v27 = v22;
  v28 = [a1 hostingController];
  v94 = a3;
  if (v28 && (v29 = v28, v30 = [v28 parentViewController], v29, v30) && (v31 = objc_msgSend(v30, sel_specifierDataSource), v30, v31))
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = v32;
      swift_unknownObjectRetain();

      v34 = [v33 specifierForID_];
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = v34;

        if (v89 >> 62)
        {
          v36 = sub_25BDE0168();
        }

        else
        {
          v36 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = v93;
        v38 = [a1 ndoSpecifiers];
        sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
        v39 = sub_25BDDFED8();

        if (v39 >> 62)
        {
          v40 = sub_25BDE0168();
        }

        else
        {
          v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v41 = v36 != v40;
        v42 = swift_allocObject();
        v43 = v89;
        v42[2] = a1;
        v42[3] = v43;
        v42[4] = v35;
        v42[5] = v37;
        v44 = v94;
        v42[6] = v94;
        aBlock[4] = sub_25BDC9450;
        aBlock[5] = v42;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25BDB688C;
        aBlock[3] = &block_descriptor_56;
        v45 = _Block_copy(aBlock);
        v46 = v35;
        v47 = a1;

        sub_25BDA6D70(v37, v44);

        [v33 performUpdatesAnimated:v41 usingBlock:v45];

        _Block_release(v45);
        return;
      }

      goto LABEL_33;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v55 = [a1 hostingController];
  if (!v55 || (v56 = v55, v57 = [v55 parentViewController], v56, !v57))
  {

    goto LABEL_32;
  }

  v58 = [v57 specifierForID_];

  if (!v58)
  {
LABEL_32:
    v33 = 0;
LABEL_33:
    v76 = v92;
    v77 = sub_25BDB7ADC();
    (*(v9 + 16))(v12, v77, v76);

    v78 = sub_25BDDF648();
    v79 = sub_25BDDFFC8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v80 = 136315138;
      v82 = sub_25BDA6444(v90, v26, aBlock);

      *(v80 + 4) = v82;
      _os_log_impl(&dword_25BD8D000, v78, v79, "Unable to update specifiers, missing specifier to insert after for specifier id: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x25F87C8F0](v81, -1, -1);
      MEMORY[0x25F87C8F0](v80, -1, -1);
    }

    else
    {
    }

    v83 = (*(v9 + 8))(v12, v76);
    if (v93)
    {
      v93(v83);
    }

    return;
  }

  v59 = v58;
  v60 = [a1 hostingController];
  v61 = v92;
  if (v60 && (v62 = v60, v63 = [v60 parentViewController], v62, v63) && (v64 = objc_msgSend(v63, sel_specifiers), v63, v64))
  {
    v65 = [objc_allocWithZone(MEMORY[0x277D3FAE8]) initWithSpecifiers_];

    if (!v65)
    {
      __break(1u);
      return;
    }

    v66 = v65;
    sub_25BDC6DD4(v89, v59, v65);
    v67 = [a1 hostingController];
    v68 = [v67 parentViewController];

    [v68 performSpecifierUpdates_];
    v69 = sub_25BDB7ADC();
    v70 = v91;
    (*(v9 + 16))(v91, v69, v61);
    v71 = sub_25BDDF648();
    v72 = sub_25BDDFFE8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_25BD8D000, v71, v72, "Finished updating specifiers", v73, 2u);
      v74 = v73;
      v61 = v92;
      MEMORY[0x25F87C8F0](v74, -1, -1);
    }

    v75 = (*(v9 + 8))(v70, v61);
    if (v93)
    {
      v93(v75);
    }
  }

  else
  {

    v84 = sub_25BDB7ADC();
    (*(v9 + 16))(v17, v84, v61);
    v85 = sub_25BDDF648();
    v86 = sub_25BDDFFC8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_25BD8D000, v85, v86, "Unable to update specifiers, current specifiers is nil", v87, 2u);
      MEMORY[0x25F87C8F0](v87, -1, -1);
    }

    v88 = (*(v9 + 8))(v17, v61);
    if (v93)
    {
      v93(v88);
    }
  }
}

uint64_t sub_25BDC6C34(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = sub_25BDDF668();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BDC6DD4(a3, a4, a1);
  v13 = sub_25BDB7ADC();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_25BDDF648();
  v15 = sub_25BDDFFE8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_25BD8D000, v14, v15, "Finished updating specifiers", v16, 2u);
    MEMORY[0x25F87C8F0](v16, -1, -1);
  }

  result = (*(v10 + 8))(v12, v9);
  if (a5)
  {
    return a5(result);
  }

  return result;
}

void sub_25BDC6DD4(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
  v8 = sub_25BDDFEC8();
  [v4 setNdoSpecifiers_];

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D0, &qword_25BDE2F28);
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D837D0];
    *(v9 + 16) = xmmword_25BDE2F00;
    strcpy((v9 + 32), "WARRANTY_GROUP");
    *(v9 + 47) = -18;
    *(v9 + 56) = v10;
    *(v9 + 64) = 0xD000000000000014;
    *(v9 + 72) = 0x800000025BDE6180;
    *(v9 + 120) = v10;
    *(v9 + 88) = v10;
    strcpy((v9 + 96), "WARRANTY_OFFER");
    *(v9 + 111) = -18;
    v11 = sub_25BDDFEC8();

    [a3 removeSpecifiersWithIDs_];

    sub_25BDC6F8C(a1);
    v12 = sub_25BDDFEC8();

    [a3 insertContiguousSpecifiers:v12 afterSpecifier:a2];
  }
}

char *sub_25BDC6F8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_25BDE0168();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_25BDC8C70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x25F87BED0](i, a1);
        sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_25BDC8C70((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_25BDA818C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_25BDC8C70((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_25BDA818C(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BDC7188(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v58 = a6;
  v60 = a5;
  v61 = a4;
  v9 = sub_25BDDF668();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v59 = &v53 - v15;
  v16 = sub_25BDDF508();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v53 - v21;
  if (a2 >> 60 == 15)
  {
    v23 = sub_25BDB7ADC();
    (*(v10 + 16))(v14, v23, v9);
    v24 = a3;
    v25 = sub_25BDDF648();
    v26 = sub_25BDDFFC8();

    v27 = v9;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v62 = a3;
      v63 = v29;
      *v28 = 136315138;
      v30 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD190, &unk_25BDE23D0);
      v31 = sub_25BDDFE68();
      v33 = sub_25BDA6444(v31, v32, &v63);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_25BD8D000, v25, v26, "Failed to load coverage info, error: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F87C8F0](v29, -1, -1);
      MEMORY[0x25F87C8F0](v28, -1, -1);
    }

    (*(v10 + 8))(v14, v27);
    return v61(MEMORY[0x277D84F90]);
  }

  else
  {
    v55 = v20;
    sub_25BDDF358();
    swift_allocObject();
    sub_25BDB3C24(a1, a2);
    sub_25BDDF348();
    sub_25BDC9408(&qword_27FBDD7B0, MEMORY[0x277D2D090], MEMORY[0x277D2D098]);
    v56 = a1;
    v57 = a2;
    sub_25BDDF338();

    (*(v55 + 32))(v22, v19, v16);
    sub_25BDC782C();
    v36 = v35;
    v37 = sub_25BDB7ADC();
    v38 = v10;
    v39 = *(v10 + 16);
    v40 = v59;
    v39(v59, v37, v9);

    v41 = sub_25BDDF648();
    v42 = sub_25BDDFFE8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v63 = v58;
      *v43 = 136315138;
      v44 = sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
      v45 = MEMORY[0x25F87BC80](v36, v44);
      v47 = sub_25BDA6444(v45, v46, &v63);
      v54 = v9;
      v48 = v42;
      v49 = v47;

      *(v43 + 4) = v49;
      _os_log_impl(&dword_25BD8D000, v41, v48, "specifiers: %s", v43, 0xCu);
      v50 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x25F87C8F0](v50, -1, -1);
      MEMORY[0x25F87C8F0](v43, -1, -1);

      (*(v38 + 8))(v40, v54);
    }

    else
    {

      (*(v38 + 8))(v40, v9);
    }

    v52 = v56;
    v51 = v57;
    v61(v36);
    sub_25BDA7298(v52, v51);

    return (*(v55 + 8))(v22, v16);
  }
}

void sub_25BDC782C()
{
  v1 = v0;
  v2 = sub_25BDDF558();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v67 = &v65 - v7;
  MEMORY[0x28223BE20](v6);
  v68 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7B8, &qword_25BDE2F10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - v10;
  v12 = sub_25BDDF598();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x277D84F90];
  v16 = objc_opt_self();
  v17 = sub_25BDDFE38();
  v18 = [v16 groupSpecifierWithID_];

  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v72 = v13;
  v73 = v12;
  v19 = v18;
  MEMORY[0x25F87BC50]();
  if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25BDDFEF8();
  }

  sub_25BDDFF08();
  v20 = objc_opt_self();
  sub_25BDDF4E8();
  v21 = sub_25BDDFE38();

  type metadata accessor for NDODeviceDetailsViewController(0);
  v22 = [v20 preferenceSpecifierNamed:v21 target:v1 set:0 get:sel_coverageDetailText_ detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  if (!v22)
  {
    goto LABEL_24;
  }

  v23 = sub_25BDDFE38();
  v24 = NSClassFromString(v23);

  v71 = v19;
  v66 = v5;
  if (v24)
  {
    v74[0] = swift_getObjCClassMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7C8, &qword_25BDE2F20);
    v25 = sub_25BDE01D8();
  }

  else
  {
    v25 = 0;
  }

  [v22 setProperty:v25 forKey:*MEMORY[0x277D3FE58]];
  swift_unknownObjectRelease();
  v26 = sub_25BDDFE38();
  v27 = *MEMORY[0x277D3FFB8];
  [v22 setProperty:v26 forKey:*MEMORY[0x277D3FFB8]];

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_25BDC936C;
  *(v29 + 24) = v28;
  v74[0] = sub_25BDC4A24;
  v74[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7C0, &qword_25BDE2F18);
  v30 = sub_25BDE01D8();
  swift_beginAccess();

  v31 = sub_25BDDFE38();

  [v22 setProperty:v30 forKey:v31];

  swift_unknownObjectRelease();
  sub_25BDDF4F8();
  v32 = sub_25BDDFE38();

  [v22 setProperty:v32 forKey:*MEMORY[0x277D401A8]];

  sub_25BDC5BDC();
  v33 = sub_25BDDFE38();

  swift_beginAccess();

  v34 = sub_25BDDFE38();

  [v22 setProperty:v33 forKey:v34];

  v35 = [objc_opt_self() mainBundle];
  v36 = [v35 bundleIdentifier];

  swift_beginAccess();

  v37 = sub_25BDDFE38();

  [v22 setProperty:v36 forKey:v37];

  MEMORY[0x25F87BC50]();
  if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25BDDFEF8();
  }

  sub_25BDDFF08();
  sub_25BDDF4D8();
  v39 = v72;
  v38 = v73;
  if ((*(v72 + 48))(v11, 1, v73) == 1)
  {

    sub_25BDA8554(v11, &qword_27FBDD7B8, &qword_25BDE2F10);
    return;
  }

  (*(v39 + 32))(v15, v11, v38);
  if ((sub_25BDDF588() & 1) == 0)
  {
    (*(v39 + 8))(v15, v38);

    return;
  }

  v40 = v68;
  sub_25BDDF568();
  sub_25BDDF548();
  v41 = *(v69 + 8);
  v42 = v41(v40, v70);
  v75 = type metadata accessor for NDOSpecifierDataSource(v42);
  v74[0] = v1;
  v43 = v1;
  v44 = sub_25BDDFE38();

  v45 = v75;
  if (v75)
  {
    v46 = __swift_project_boxed_opaque_existential_0(v74, v75);
    v68 = &v65;
    v47 = v15;
    v48 = v27;
    v49 = v41;
    v50 = *(v45 - 8);
    MEMORY[0x28223BE20](v46);
    v52 = &v65 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v52);
    v53 = sub_25BDE01B8();
    (*(v50 + 8))(v52, v45);
    v41 = v49;
    v27 = v48;
    v15 = v47;
    __swift_destroy_boxed_opaque_existential_0(v74);
  }

  else
  {
    v53 = 0;
  }

  v54 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) initWithName:v44 target:v53 set:0 get:0 detail:0 cell:13 edit:0];

  swift_unknownObjectRelease();
  if (!v54)
  {
    goto LABEL_25;
  }

  v55 = sub_25BDDFE38();
  [v54 setProperty:v55 forKey:v27];

  v56 = v67;
  sub_25BDDF568();
  v57 = v70;
  (*(v69 + 16))(v66, v56, v70);
  v58 = sub_25BDE01D8();
  v41(v56, v57);
  swift_beginAccess();

  v59 = sub_25BDDFE38();

  [v54 setProperty:v58 forKey:v59];
  swift_unknownObjectRelease();

  [v54 setButtonAction_];
  v60 = sub_25BDDFF18();
  [v54 setProperty:v60 forKey:*MEMORY[0x277D3FD80]];

  v61 = v54;
  MEMORY[0x25F87BC50]();
  if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25BDDFEF8();
  }

  sub_25BDDFF08();
  sub_25BDDF578();
  v62 = v71;
  if (v63)
  {
    v64 = sub_25BDDFE38();

    [v62 setProperty:v64 forKey:*MEMORY[0x277D3FF88]];

    (*(v72 + 8))(v15, v73);
  }

  else
  {
    (*(v72 + 8))(v15, v73);
  }
}

uint64_t sub_25BDC832C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_25BDDF428();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_25BDA7298(v4, v8);
}

void sub_25BDC83D8(void *a1)
{
  v3 = sub_25BDDF668();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BDDF558();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  swift_beginAccess();

  v12 = sub_25BDDFE38();

  v13 = [a1 propertyForKey_];

  if (v13)
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
    sub_25BDA818C(&v49, &aBlock);
    v42 = v11;
    swift_dynamicCast();
    v14 = [v1 hostingController];
    v15 = v7;
    if (v14 && (v16 = v14, v17 = [v14 parentViewController], v16, v17))
    {
      v18 = [v1 ndoManager];
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = v17;

      v21 = sub_25BDA25C8(v18, v17, sub_25BDC9184, v19);

      v15 = v7;
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = v42;
      v23 = v43;
      v25 = v41;
      (*(v43 + 16))(v41, v42, v15);
      v26 = (*(v23 + 80) + 24) & ~*(v23 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      (*(v23 + 32))(v27 + v26, v25, v15);
      *(v27 + ((v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
      v28 = objc_allocWithZone(NDOAMSUILoadingViewController);
      v47 = sub_25BDC928C;
      v48 = v27;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v45 = sub_25BDA6394;
      v46 = &block_descriptor_5;
      v29 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      v30 = [v28 initWithCreateAMSViewController_];
      _Block_release(v29);

      [v30 setPresenter_];
      v31 = [objc_opt_self() currentDevice];
      v32 = [v31 userInterfaceIdiom];

      if (v32 == 1 || v32 == 6)
      {
        v34 = 2;
      }

      else
      {
        v34 = 0;
      }

      v35 = v30;
      [v35 setModalInPresentation_];
      [v35 setModalPresentationStyle_];
      v36 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

      [v20 presentViewController:v36 animated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = sub_25BDB7ADC();
      (*(v4 + 16))(v6, v37, v3);
      v38 = sub_25BDDF648();
      v39 = sub_25BDDFFC8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_25BD8D000, v38, v39, "Failed to present AMSUI view controller, parent view controller is nil", v40, 2u);
        MEMORY[0x25F87C8F0](v40, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      v24 = v42;
      v23 = v43;
    }

    (*(v23 + 8))(v24, v15);
  }

  else
  {
    __break(1u);
  }
}

void *sub_25BDC89C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_25BDDF408();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = [result ndoManager];
    v21 = v8;
    v15 = a5;
    v16 = v14;
    sub_25BDDF538();
    v17 = sub_25BDDF528();
    v18 = sub_25BDDF518();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;

    v20 = sub_25BDA4DF4();
    sub_25BDA4E34(v16, v11, v17, v18, v20, v15, sub_25BDA83B4, v19);

    swift_unknownObjectRelease();
    return (*(v9 + 8))(v11, v21);
  }

  return result;
}

char *sub_25BDC8C70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BDC8C90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25BDC8C90(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D0, &qword_25BDE2F28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25BDC8DA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_25BDDF668();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v15 = objc_opt_self();

  sub_25BDA6D70(a4, a5);
  if ([v15 isSignedIntoAppleAccount])
  {
    v16 = [a2 ndoManager];
    sub_25BDC5BDC();
    v17 = sub_25BDDFE38();

    v18 = swift_allocObject();
    v18[2] = sub_25BDC9354;
    v18[3] = v14;
    v18[4] = a2;
    aBlock[4] = sub_25BDC9360;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDC832C;
    aBlock[3] = &block_descriptor_39;
    v19 = _Block_copy(aBlock);

    v20 = a2;

    [v16 getCoverageInfoForSerialNumber:v17 usingPolicy:a1 withReply:v19];
    _Block_release(v19);
  }

  else
  {
    v21 = sub_25BDB7ADC();
    (*(v11 + 16))(v13, v21, v10);
    v22 = sub_25BDDF648();
    v23 = sub_25BDDFFE8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25BD8D000, v22, v23, "Not creating specifiers, user not logged in.", v24, 2u);
      MEMORY[0x25F87C8F0](v24, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    sub_25BDC5D30(MEMORY[0x277D84F90], a3, a4, a5);
  }
}

uint64_t sub_25BDC90BC(void *a1)
{
  if ([a1 propertyForKey_])
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_25BDA8554(v5, &qword_27FBDD1B0, &qword_25BDE23F0);
  }

  return 0;
}

void sub_25BDC9184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_allocObject();
      *(v7 + 16) = a2;
      *(v7 + 24) = a3;
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_25BDA6D70(a2, a3);
      sub_25BDC8DA0(4, v6, v8, sub_25BDC4A24, v7);
    }
  }
}

void *sub_25BDC928C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_25BDDF558() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_25BDC89C0(a1, a2, v8, v2 + v6, v7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BDC936C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_25BDC8DA0(4, v1, v2, 0, 0);
  }
}

uint64_t sub_25BDC9408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BDC9488()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  return v1;
}

void (*sub_25BDC9504(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  *(v3 + 32) = sub_25BDDFD48();
  return sub_25BDB7E44;
}

uint64_t sub_25BDC9590()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);

  return sub_25BDDFD78();
}

uint64_t sub_25BDC95D8@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v86 = sub_25BDDF668();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6F0, &qword_25BDE2E30);
  MEMORY[0x28223BE20](v91);
  v92 = &v79 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6E0, &unk_25BDE2E20);
  MEMORY[0x28223BE20](v115);
  v94 = &v79 - v4;
  v93 = sub_25BDDF798();
  v90 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v89 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_25BDDF9A8();
  v88 = *(v101 - 8);
  v6 = MEMORY[0x28223BE20](v101);
  v87 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v79 - v8;
  v9 = type metadata accessor for DeviceWarrantyMainView(0);
  v109 = *(v9 - 8);
  v10 = *(v109 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7E0, &qword_25BDE2F38);
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v12 = &v79 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7E8, &qword_25BDE2F40);
  v98 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v96 = &v79 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7F0, &qword_25BDE2F48);
  MEMORY[0x28223BE20](v107);
  v100 = &v79 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7F8, &qword_25BDE2F50);
  MEMORY[0x28223BE20](v112);
  v114 = &v79 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD800, &qword_25BDE2F58);
  MEMORY[0x28223BE20](v104);
  v103 = &v79 - v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD808, &qword_25BDE2F60);
  MEMORY[0x28223BE20](v113);
  v106 = &v79 - v18;
  v102 = sub_25BDDFC38();
  v81 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B0, &qword_25BDE2E00);
  v80 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v22 = &v79 - v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B8, &unk_25BDE2B10);
  v83 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v82 = &v79 - v23;
  v24 = sub_25BDDF7D8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v28 = v1;
  v29 = sub_25BDDFD58();
  (*(*v116 + 200))(v29);

  v30 = (v25)[11](v27, v24);
  if (v30 == *MEMORY[0x277D2B6C8])
  {
    v31 = (v25)[12](v27, v24);
    v32 = *v27;
    MEMORY[0x28223BE20](v31);
    v33 = v13;
    *(&v79 - 2) = v32;
    *(&v79 - 1) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD828, &qword_25BDE2F68);
    sub_25BDCB4C0();
    sub_25BDDFC78();

    v34 = sub_25BDBC1A0(&qword_27FBDD820, &qword_27FBDD7E0, &qword_25BDE2F38, MEMORY[0x277CDE5A0]);
    v35 = v96;
    v36 = v97;
    sub_25BDDFCA8();
    (*(v95 + 8))(v12, v36);
    v37 = v110;
    sub_25BDCB390(v28, v110);
    v38 = (*(v109 + 80) + 16) & ~*(v109 + 80);
    v39 = swift_allocObject();
    sub_25BDCB3F4(v37, v39 + v38);
    v116 = v36;
    v117 = v34;
    swift_getOpaqueTypeConformance2();
    v40 = v100;
    sub_25BDDFCE8();

    (*(v98 + 8))(v35, v33);
    v41 = sub_25BDDFC58();
    sub_25BDDFB68();
    v42 = v40 + *(v107 + 36);
    *v42 = v41;
    *(v42 + 8) = v43;
    *(v42 + 16) = v44;
    *(v42 + 24) = v45;
    *(v42 + 32) = v46;
    *(v42 + 40) = 0;
    sub_25BDA84EC(v40, v103, &qword_27FBDD7F0, &qword_25BDE2F48);
    swift_storeEnumTagMultiPayload();
    v47 = sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00, MEMORY[0x277CDD7F8]);
    v48 = sub_25BDCB92C(&qword_27FBDD5E0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v116 = v108;
    v117 = v102;
    v118 = v47;
    v119 = v48;
    swift_getOpaqueTypeConformance2();
    sub_25BDCA93C();
    v49 = v106;
    sub_25BDDFC18();
    sub_25BDA84EC(v49, v114, &qword_27FBDD808, &qword_25BDE2F60);
    swift_storeEnumTagMultiPayload();
    sub_25BDCA7F0();
    sub_25BDC3B14();
    sub_25BDDFC18();
    sub_25BDA8554(v49, &qword_27FBDD808, &qword_25BDE2F60);
    return sub_25BDA8554(v40, &qword_27FBDD7F0, &qword_25BDE2F48);
  }

  else
  {
    v51 = v108;
    v52 = v109;
    v53 = v110;
    if (v30 == *MEMORY[0x277D2B6C0])
    {
      (v25)[12](v27, v24);
      v54 = v88;
      v55 = v99;
      v56 = v101;
      (*(v88 + 32))(v99, v27, v101);
      (*(v54 + 16))(v87, v55, v56);
      v57 = v53;
      sub_25BDCB390(v28, v53);
      v58 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v59 = swift_allocObject();
      sub_25BDCB3F4(v57, v59 + v58);
      v60 = v89;
      sub_25BDDF788();
      v61 = v90;
      v62 = v93;
      (*(v90 + 16))(v92, v60, v93);
      swift_storeEnumTagMultiPayload();
      sub_25BDCB92C(&qword_27FBDD6E8, MEMORY[0x277D2B6A8], MEMORY[0x277D2B6A0]);
      v63 = v94;
      sub_25BDDFC18();
      sub_25BDA84EC(v63, v114, &qword_27FBDD6E0, &unk_25BDE2E20);
      swift_storeEnumTagMultiPayload();
      sub_25BDCA7F0();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BDA8554(v63, &qword_27FBDD6E0, &unk_25BDE2E20);
      (*(v61 + 8))(v60, v62);
      return (*(v54 + 8))(v99, v101);
    }

    else if (v30 == *MEMORY[0x277D2B6D0])
    {
      sub_25BDDFB78();
      sub_25BDDFC28();
      v64 = sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00, MEMORY[0x277CDD7F8]);
      v65 = sub_25BDCB92C(&qword_27FBDD5E0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
      v66 = v82;
      v67 = v102;
      sub_25BDDFCD8();
      (*(v81 + 8))(v20, v67);
      (*(v80 + 8))(v22, v51);
      v68 = v83;
      v69 = v105;
      (*(v83 + 16))(v103, v66, v105);
      swift_storeEnumTagMultiPayload();
      v116 = v51;
      v117 = v67;
      v118 = v64;
      v119 = v65;
      swift_getOpaqueTypeConformance2();
      sub_25BDCA93C();
      v70 = v106;
      sub_25BDDFC18();
      sub_25BDA84EC(v70, v114, &qword_27FBDD808, &qword_25BDE2F60);
      swift_storeEnumTagMultiPayload();
      sub_25BDCA7F0();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BDA8554(v70, &qword_27FBDD808, &qword_25BDE2F60);
      return (*(v68 + 8))(v66, v69);
    }

    else
    {
      v71 = sub_25BDB7ADC();
      v72 = v85;
      v73 = v84;
      v74 = v86;
      (*(v85 + 16))(v84, v71, v86);
      v75 = sub_25BDDF648();
      v76 = sub_25BDDFFC8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_25BD8D000, v75, v76, "Should not hit unknown default case", v77, 2u);
        MEMORY[0x25F87C8F0](v77, -1, -1);
      }

      (*(v72 + 8))(v73, v74);
      swift_storeEnumTagMultiPayload();
      sub_25BDCB92C(&qword_27FBDD6E8, MEMORY[0x277D2B6A8], MEMORY[0x277D2B6A0]);
      v78 = v94;
      sub_25BDDFC18();
      sub_25BDA84EC(v78, v114, &qword_27FBDD6E0, &unk_25BDE2E20);
      swift_storeEnumTagMultiPayload();
      sub_25BDCA7F0();
      sub_25BDC3B14();
      sub_25BDDFC18();
      sub_25BDA8554(v78, &qword_27FBDD6E0, &unk_25BDE2E20);
      return (v25)[1](v27, v24);
    }
  }
}

uint64_t type metadata accessor for DeviceWarrantyMainView(uint64_t a1)
{
  result = qword_27FBDE310;
  if (!qword_27FBDE310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25BDCA7F0()
{
  result = qword_27FBDD810;
  if (!qword_27FBDD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD808, &qword_25BDE2F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD5B0, &qword_25BDE2E00);
    sub_25BDDFC38();
    sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00, MEMORY[0x277CDD7F8]);
    sub_25BDCB92C(&qword_27FBDD5E0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    swift_getOpaqueTypeConformance2();
    sub_25BDCA93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD810);
  }

  return result;
}

unint64_t sub_25BDCA93C()
{
  result = qword_27FBDD818;
  if (!qword_27FBDD818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD7F0, &qword_25BDE2F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD7E8, &qword_25BDE2F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD7E0, &qword_25BDE2F38);
    sub_25BDBC1A0(&qword_27FBDD820, &qword_27FBDD7E0, &qword_25BDE2F38, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD818);
  }

  return result;
}

uint64_t sub_25BDCAA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWarrantyMainView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  sub_25BDCB390(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25BDCB3F4(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2C0, &unk_25BDE3010);
  type metadata accessor for DeviceWarrantySectionView(0);
  sub_25BDBC1A0(&qword_27FBDD858, &qword_27FBDD2C0, &unk_25BDE3010, MEMORY[0x277D83980]);
  sub_25BDCB92C(&qword_27FBDD838, type metadata accessor for DeviceWarrantySectionView, &unk_25BDE30D8);
  sub_25BDCB92C(&qword_27FBDD860, MEMORY[0x277D2B688], MEMORY[0x277D2B698]);
  return sub_25BDDFD28();
}

uint64_t sub_25BDCAC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BDDF778();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  (*(v5 + 16))(v7, a1, v4);
  return sub_25BDCF210(v7, a2);
}

uint64_t sub_25BDCAD80(uint64_t a1)
{
  v1[3] = a1;
  sub_25BDDFF48();
  v1[4] = sub_25BDDFF38();
  v3 = sub_25BDDFF28();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_25BDCAE18, v3, v2);
}

uint64_t sub_25BDCAE18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  v1 = v0[2];
  v0[7] = v1;
  v4 = (*(*v1 + 624) + **(*v1 + 624));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_25BDC2ADC;

  return v4();
}

uint64_t sub_25BDCAF64(uint64_t a1)
{
  v2 = type metadata accessor for DeviceWarrantyMainView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_25BDDFF88();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_25BDCB390(a1, v5);
  sub_25BDDFF48();
  v10 = sub_25BDDFF38();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_25BDCB3F4(v5, v12 + v11);
  sub_25BDAFA6C(0, 0, v8, &unk_25BDE3028, v12);
}

uint64_t sub_25BDCB11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_25BDDFF48();
  v4[4] = sub_25BDDFF38();
  v6 = sub_25BDDFF28();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_25BDCB1B4, v6, v5);
}

uint64_t sub_25BDCB1B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  v1 = v0[2];
  v0[7] = v1;
  v4 = (*(*v1 + 616) + **(*v1 + 616));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_25BDC3034;

  return v4();
}

uint64_t sub_25BDCB300(uint64_t a1)
{
  type metadata accessor for DeviceWarrantyViewModel(0);
  sub_25BDCB92C(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel, &protocol conformance descriptor for DeviceWarrantyViewModel);

  return sub_25BDDFD88();
}

uint64_t sub_25BDCB390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWarrantyMainView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDCB3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWarrantyMainView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDCB458()
{
  v1 = *(type metadata accessor for DeviceWarrantyMainView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25BDCAF64(v2);
}

unint64_t sub_25BDCB4C0()
{
  result = qword_27FBDD830;
  if (!qword_27FBDD830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD828, &qword_25BDE2F68);
    sub_25BDCB92C(&qword_27FBDD838, type metadata accessor for DeviceWarrantySectionView, &unk_25BDE30D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD830);
  }

  return result;
}

uint64_t sub_25BDCB574()
{
  v2 = *(type metadata accessor for DeviceWarrantyMainView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25BDAFE88;

  return sub_25BDCAD80(v0 + v3);
}

void sub_25BDCB684(uint64_t a1)
{
  sub_25BDCB6F0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25BDCB6F0(uint64_t a1)
{
  if (!qword_27FBDD840)
  {
    type metadata accessor for DeviceWarrantyViewModel(255);
    v1 = sub_25BDDFD98();
    if (!v2)
    {
      atomic_store(v1, &qword_27FBDD840);
    }
  }
}

unint64_t sub_25BDCB748()
{
  result = qword_27FBDD848;
  if (!qword_27FBDD848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD850, &qword_25BDE3008);
    sub_25BDCA7F0();
    sub_25BDC3B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD848);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for DeviceWarrantyMainView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BDCB8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DeviceWarrantyMainView(0);

  return sub_25BDCAC7C(a1, a2);
}

uint64_t sub_25BDCB92C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BDCB974()
{
  v2 = *(type metadata accessor for DeviceWarrantyMainView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25BDB45AC;

  return sub_25BDCB11C(v4, v5, v6, v0 + v3);
}

uint64_t sub_25BDCBA40(uint64_t a1)
{
  type metadata accessor for DeviceWarrantyViewModel(0);
  sub_25BDCFC90(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel, &protocol conformance descriptor for DeviceWarrantyViewModel);

  return sub_25BDDFD88();
}

void (*sub_25BDCBACC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  *(v3 + 32) = sub_25BDDFD48();
  return sub_25BDB7E44;
}

uint64_t sub_25BDCBB58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceWarrantySectionView(0) + 20);
  v4 = sub_25BDDF778();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeviceWarrantySectionView(uint64_t a1)
{
  result = qword_27FBDE3A0;
  if (!qword_27FBDE3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDCBC20(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceWarrantySectionView(0) + 20);
  v4 = sub_25BDDF778();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25BDCBCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v125 = sub_25BDDF668();
  v128 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v126 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD868, &qword_25BDE3048);
  MEMORY[0x28223BE20](v130);
  v131 = &v118 - v4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD870, &qword_25BDE3050);
  MEMORY[0x28223BE20](v172);
  v133 = &v118 - v5;
  v132 = sub_25BDDF938();
  v124 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v122 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_25BDDF968();
  v121 = *(v123 - 8);
  v7 = MEMORY[0x28223BE20](v123);
  v119 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v120 = &v118 - v9;
  v144 = sub_25BDDF878();
  v129 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v127 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_25BDDF8E8();
  v138 = *(v139 - 8);
  v11 = MEMORY[0x28223BE20](v139);
  v134 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v137 = &v118 - v13;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD878, &qword_25BDE3058);
  MEMORY[0x28223BE20](v140);
  v141 = &v118 - v14;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD880, &qword_25BDE3060);
  MEMORY[0x28223BE20](v158);
  v142 = &v118 - v15;
  v143 = sub_25BDDF718();
  v136 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v135 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_25BDDF7A8();
  v147 = *(v148 - 8);
  v17 = MEMORY[0x28223BE20](v148);
  v145 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v146 = &v118 - v19;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD888, &qword_25BDE3068);
  MEMORY[0x28223BE20](v170);
  v168 = &v118 - v20;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD890, &qword_25BDE3070);
  MEMORY[0x28223BE20](v155);
  v154 = &v118 - v21;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD898, &qword_25BDE3078);
  MEMORY[0x28223BE20](v164);
  v162 = &v118 - v22;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8A0, &qword_25BDE3080);
  MEMORY[0x28223BE20](v156);
  v166 = &v118 - v23;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8A8, &qword_25BDE3088);
  MEMORY[0x28223BE20](v169);
  v157 = &v118 - v24;
  v25 = type metadata accessor for DeviceWarrantySectionView(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v153 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_25BDDF958();
  v151 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v150 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_25BDDF998();
  v161 = *(v163 - 8);
  v29 = MEMORY[0x28223BE20](v163);
  v149 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v160 = &v118 - v31;
  v32 = sub_25BDDFAC8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v36 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v118 - v37;
  v39 = *(v33 + 16);
  v159 = a1;
  (v39)(&v118 - v37, a1, v32);
  v40 = (*(v33 + 88))(v38, v32);
  v41 = *MEMORY[0x277D2B818];
  v152 = v26;
  if (v40 == v41)
  {
    (*(v33 + 96))(v38, v32);
    v42 = v161;
    v43 = *(v161 + 4);
    v148 = v27;
    v44 = v153;
    v45 = v160;
    v46 = v163;
    v43();
    (*(v42 + 2))(v149, v45, v46);
    sub_25BDCF460(v167, v44);
    (v39)(v36, v159, v32);
    v47 = (*(v152 + 80) + 16) & ~*(v152 + 80);
    v48 = (v148 + *(v33 + 80) + v47) & ~*(v33 + 80);
    v49 = swift_allocObject();
    sub_25BDCF4C4(v44, v49 + v47);
    (*(v33 + 32))(v49 + v48, v36, v32);
    v50 = v150;
    sub_25BDDF948();
    v51 = v151;
    v52 = v165;
    v151[2](v162, v50, v165);
    swift_storeEnumTagMultiPayload();
    sub_25BDCFC90(&qword_27FBDD8C8, MEMORY[0x277D2B748], MEMORY[0x277D2B740]);
    v53 = v166;
    sub_25BDDFC18();
    sub_25BDA84EC(v53, v154, &qword_27FBDD8A0, &qword_25BDE3080);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD67C();
    sub_25BDCD738();
    v54 = v157;
    sub_25BDDFC18();
    sub_25BDA8554(v53, &qword_27FBDD8A0, &qword_25BDE3080);
    sub_25BDA84EC(v54, v168, &qword_27FBDD8A8, &qword_25BDE3088);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD5F0();
    sub_25BDCD824();
    sub_25BDDFC18();
    sub_25BDA8554(v54, &qword_27FBDD8A8, &qword_25BDE3088);
    (v51[1])(v50, v52);
    return (*(v161 + 1))(v160, v163);
  }

  v151 = v39;
  v160 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v38;
  v56 = v27;
  v163 = v32;
  v58 = v166;
  v57 = v167;
  v59 = v159;
  if (v40 == *MEMORY[0x277D2B808])
  {
    swift_storeEnumTagMultiPayload();
    sub_25BDCFC90(&qword_27FBDD8C8, MEMORY[0x277D2B748], MEMORY[0x277D2B740]);
    sub_25BDDFC18();
    sub_25BDA84EC(v58, v154, &qword_27FBDD8A0, &qword_25BDE3080);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD67C();
    sub_25BDCD738();
    v60 = v157;
    sub_25BDDFC18();
    sub_25BDA8554(v58, &qword_27FBDD8A0, &qword_25BDE3080);
    sub_25BDA84EC(v60, v168, &qword_27FBDD8A8, &qword_25BDE3088);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD5F0();
    sub_25BDCD824();
    sub_25BDDFC18();
    sub_25BDA8554(v60, &qword_27FBDD8A8, &qword_25BDE3088);
    v61 = *(v33 + 8);
    v62 = v161;
    return v61(v62, v163);
  }

  if (v40 == *MEMORY[0x277D2B7F8])
  {
    v63 = v161;
    v64 = v163;
    (*(v33 + 96))(v161, v163);
    v65 = v147;
    v66 = v146;
    v67 = v63;
    v68 = v148;
    (*(v147 + 32))(v146, v67, v148);
    (*(v65 + 16))(v145, v66, v68);
    v69 = v153;
    sub_25BDCF460(v57, v153);
    v70 = v160;
    (v151)(v160, v59, v64);
    v71 = (*(v152 + 80) + 16) & ~*(v152 + 80);
    v72 = (v56 + *(v33 + 80) + v71) & ~*(v33 + 80);
    v73 = swift_allocObject();
    sub_25BDCF4C4(v69, v73 + v71);
    (*(v33 + 32))(v73 + v72, v70, v64);
    v74 = v135;
    sub_25BDDF708();
    v75 = v136;
    v76 = v143;
    (*(v136 + 16))(v141, v74, v143);
    swift_storeEnumTagMultiPayload();
    sub_25BDCFC90(&qword_27FBDD4C8, MEMORY[0x277D2B680], MEMORY[0x277D2B678]);
    sub_25BDCFC90(&qword_27FBDD8D8, MEMORY[0x277D2B700], MEMORY[0x277D2B6F8]);
    v77 = v142;
    sub_25BDDFC18();
    sub_25BDA84EC(v77, v154, &qword_27FBDD880, &qword_25BDE3060);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD67C();
    sub_25BDCD738();
    v78 = v157;
    sub_25BDDFC18();
    sub_25BDA8554(v77, &qword_27FBDD880, &qword_25BDE3060);
    sub_25BDA84EC(v78, v168, &qword_27FBDD8A8, &qword_25BDE3088);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD5F0();
    sub_25BDCD824();
    sub_25BDDFC18();
    sub_25BDA8554(v78, &qword_27FBDD8A8, &qword_25BDE3088);
    (*(v75 + 8))(v74, v76);
    v79 = *(v147 + 8);
    v80 = v146;
    v81 = &v173;
  }

  else
  {
    v82 = v153;
    if (v40 != *MEMORY[0x277D2B800])
    {
      if (v40 == *MEMORY[0x277D2B810])
      {
        v101 = v161;
        (*(v33 + 96))(v161, v163);
        v102 = v121;
        v103 = v120;
        v104 = v123;
        (*(v121 + 32))(v120, v101, v123);
        (*(v102 + 16))(v119, v103, v104);
        v105 = v122;
        sub_25BDDF928();
        v106 = v124;
        v107 = v132;
        (*(v124 + 16))(v131, v105, v132);
        swift_storeEnumTagMultiPayload();
        sub_25BDCFC90(&qword_27FBDD8B0, MEMORY[0x277D2B738], MEMORY[0x277D2B730]);
        v108 = v133;
        sub_25BDDFC18();
        sub_25BDA84EC(v108, v168, &qword_27FBDD870, &qword_25BDE3050);
        swift_storeEnumTagMultiPayload();
        sub_25BDCD5F0();
        sub_25BDCD824();
        sub_25BDDFC18();
        sub_25BDA8554(v108, &qword_27FBDD870, &qword_25BDE3050);
        (*(v106 + 8))(v105, v107);
        return (*(v102 + 8))(v103, v104);
      }

      v109 = sub_25BDB7ADC();
      v110 = v125;
      (*(v128 + 16))(v126, v109, v125);
      v111 = sub_25BDDF648();
      v112 = sub_25BDDFFC8();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v168;
      v115 = v161;
      if (v113)
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_25BD8D000, v111, v112, "Should not hit unknown default case", v116, 2u);
        MEMORY[0x25F87C8F0](v116, -1, -1);
      }

      (*(v128 + 8))(v126, v110);
      swift_storeEnumTagMultiPayload();
      sub_25BDCFC90(&qword_27FBDD8B0, MEMORY[0x277D2B738], MEMORY[0x277D2B730]);
      v117 = v133;
      sub_25BDDFC18();
      sub_25BDA84EC(v117, v114, &qword_27FBDD870, &qword_25BDE3050);
      swift_storeEnumTagMultiPayload();
      sub_25BDCD5F0();
      sub_25BDCD824();
      sub_25BDDFC18();
      sub_25BDA8554(v117, &qword_27FBDD870, &qword_25BDE3050);
      v61 = *(v33 + 8);
      v62 = v115;
      return v61(v62, v163);
    }

    v83 = v167;
    v84 = v33;
    v85 = *(v33 + 96);
    v86 = v161;
    v166 = v34;
    v87 = v163;
    v85(v161);
    v88 = v138;
    v89 = v137;
    v90 = v86;
    v91 = v139;
    (*(v138 + 32))(v137, v90, v139);
    (*(v88 + 16))(v134, v89, v91);
    sub_25BDCF460(v83, v82);
    v92 = v160;
    (v151)(v160, v59, v87);
    v93 = (*(v152 + 80) + 16) & ~*(v152 + 80);
    v94 = (v56 + *(v84 + 80) + v93) & ~*(v84 + 80);
    v95 = swift_allocObject();
    sub_25BDCF4C4(v82, v95 + v93);
    (*(v84 + 32))(v95 + v94, v92, v87);
    v96 = v127;
    sub_25BDDF868();
    v97 = v129;
    v98 = v144;
    (*(v129 + 16))(v141, v96, v144);
    swift_storeEnumTagMultiPayload();
    sub_25BDCFC90(&qword_27FBDD4C8, MEMORY[0x277D2B680], MEMORY[0x277D2B678]);
    sub_25BDCFC90(&qword_27FBDD8D8, MEMORY[0x277D2B700], MEMORY[0x277D2B6F8]);
    v99 = v142;
    sub_25BDDFC18();
    sub_25BDA84EC(v99, v154, &qword_27FBDD880, &qword_25BDE3060);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD67C();
    sub_25BDCD738();
    v100 = v157;
    sub_25BDDFC18();
    sub_25BDA8554(v99, &qword_27FBDD880, &qword_25BDE3060);
    sub_25BDA84EC(v100, v168, &qword_27FBDD8A8, &qword_25BDE3088);
    swift_storeEnumTagMultiPayload();
    sub_25BDCD5F0();
    sub_25BDCD824();
    sub_25BDDFC18();
    sub_25BDA8554(v100, &qword_27FBDD8A8, &qword_25BDE3088);
    (*(v97 + 8))(v96, v98);
    v79 = *(v138 + 8);
    v80 = v137;
    v81 = &v171;
  }

  return v79(v80, *(v81 - 32));
}

unint64_t sub_25BDCD5F0()
{
  result = qword_27FBDD8B8;
  if (!qword_27FBDD8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD8A8, &qword_25BDE3088);
    sub_25BDCD67C();
    sub_25BDCD738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD8B8);
  }

  return result;
}

unint64_t sub_25BDCD67C()
{
  result = qword_27FBDD8C0;
  if (!qword_27FBDD8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD8A0, &qword_25BDE3080);
    sub_25BDCFC90(&qword_27FBDD8C8, MEMORY[0x277D2B748], MEMORY[0x277D2B740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD8C0);
  }

  return result;
}

unint64_t sub_25BDCD738()
{
  result = qword_27FBDD8D0;
  if (!qword_27FBDD8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD880, &qword_25BDE3060);
    sub_25BDCFC90(&qword_27FBDD4C8, MEMORY[0x277D2B680], MEMORY[0x277D2B678]);
    sub_25BDCFC90(&qword_27FBDD8D8, MEMORY[0x277D2B700], MEMORY[0x277D2B6F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD8D0);
  }

  return result;
}

unint64_t sub_25BDCD824()
{
  result = qword_27FBDD8E0;
  if (!qword_27FBDD8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD870, &qword_25BDE3050);
    sub_25BDCFC90(&qword_27FBDD8B0, MEMORY[0x277D2B738], MEMORY[0x277D2B730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD8E0);
  }

  return result;
}

uint64_t sub_25BDCD8E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2D8, &qword_25BDE2990);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v5 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  v3 = v5[1];
  sub_25BDDFAA8();
  (*(*v3 + 632))(v2);

  return sub_25BDA8554(v2, &qword_27FBDD2D8, &qword_25BDE2990);
}

uint64_t sub_25BDCD9F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8E8, &unk_25BDE3090);
  MEMORY[0x28223BE20](v1);
  v3 = &v11[-v2];
  v12 = v0;
  type metadata accessor for DeviceWarrantySectionView(0);
  v4 = sub_25BDDF768();
  if (v5)
  {
    v13 = v4;
    v14 = v5;
    sub_25BDBBE6C();
    v6 = sub_25BDDFC98();
    v9 = v8 & 1;
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v7 = 0;
  }

  v13 = v6;
  v14 = v5;
  v15 = v9;
  v16 = v7;
  sub_25BDCDD58(v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F8, &qword_25BDE29F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8F0, &qword_25BDE30A0);
  sub_25BDBBA68();
  sub_25BDCF7A4();
  sub_25BDCF8B4();
  return sub_25BDDFD38();
}

uint64_t sub_25BDCDB70(uint64_t a1)
{
  v2 = type metadata accessor for DeviceWarrantySectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_25BDDF738();
  swift_getKeyPath();
  sub_25BDCF460(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25BDCF4C4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD988, &qword_25BDE3248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD908, &qword_25BDE30A8);
  sub_25BDBC1A0(&qword_27FBDD990, &qword_27FBDD988, &qword_25BDE3248, MEMORY[0x277D83980]);
  sub_25BDCF828();
  return sub_25BDDFD18();
}

uint64_t sub_25BDCDD2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BDDFAB8();
  *a1 = result;
  return result;
}

uint64_t sub_25BDCDD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD578, &qword_25BDE30D0);
  MEMORY[0x28223BE20](v58);
  v4 = &v51 - v3;
  v5 = type metadata accessor for DeviceWarrantySectionView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD940, &qword_25BDE30C8);
  MEMORY[0x28223BE20](v53);
  v9 = &v51 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD958, &qword_25BDE3178);
  MEMORY[0x28223BE20](v55);
  v57 = &v51 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD960, &qword_25BDE3180);
  MEMORY[0x28223BE20](v52);
  v12 = (&v51 - v11);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD930, &unk_25BDE30B8);
  MEMORY[0x28223BE20](v56);
  v54 = &v51 - v13;
  v14 = sub_25BDDF758();
  if (v15)
  {
    *&v61 = v14;
    *(&v61 + 1) = v15;
    sub_25BDBBE6C();
    v16 = sub_25BDDFC98();
    v18 = v17;
    v20 = v19;
    sub_25BDDFC68();
    v51 = sub_25BDDFC88();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    sub_25BDBC080(v16, v18, v20 & 1);

    sub_25BDDFDA8();
    sub_25BDDFB98();
    v24 &= 1u;
    v70 = v24;
    KeyPath = swift_getKeyPath();
    *&v61 = v51;
    *(&v61 + 1) = v22;
    LOBYTE(v62) = v24;
    *(&v62 + 1) = v26;
    v67 = v75;
    v68 = v76;
    v69[0] = v77;
    v63 = v71;
    v64 = v72;
    v66 = v74;
    v65 = v73;
    *&v69[1] = KeyPath;
    BYTE8(v69[1]) = 0;
    v28 = v62;
    *v12 = v61;
    v12[1] = v28;
    v29 = v63;
    v30 = v64;
    v31 = v66;
    v12[4] = v65;
    v12[5] = v31;
    v12[2] = v29;
    v12[3] = v30;
    v32 = v67;
    v33 = v68;
    v34 = v69[0];
    *(v12 + 137) = *(v69 + 9);
    v12[7] = v33;
    v12[8] = v34;
    v12[6] = v32;
    swift_storeEnumTagMultiPayload();
    sub_25BDA84EC(&v61, &v60, &qword_27FBDD548, &qword_25BDE2A10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD548, &qword_25BDE2A10);
    sub_25BDBBD30();
    sub_25BDBC1A0(&qword_27FBDD938, &qword_27FBDD940, &qword_25BDE30C8, MEMORY[0x277CE1198]);
    v35 = v54;
    sub_25BDDFC18();
    sub_25BDA84EC(v35, v57, &qword_27FBDD930, &unk_25BDE30B8);
    swift_storeEnumTagMultiPayload();
    sub_25BDCF9F0();
    sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0, MEMORY[0x277CE1138]);
    v36 = v59;
    sub_25BDDFC18();
    sub_25BDA8554(&v61, &qword_27FBDD548, &qword_25BDE2A10);
    sub_25BDA8554(v35, &qword_27FBDD930, &unk_25BDE30B8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD920, &qword_25BDE30B0);
    return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  }

  else
  {
    v39 = *(sub_25BDDF728() + 16);

    if (v39)
    {
      *v9 = sub_25BDDFC08();
      *(v9 + 1) = 0;
      v9[16] = 1;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD968, &qword_25BDE3188) + 44);
      *&v61 = sub_25BDDF728();
      swift_getKeyPath();
      sub_25BDCF460(a1, &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v40 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v41 = swift_allocObject();
      sub_25BDCF4C4(&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD970, &unk_25BDE31C0);
      sub_25BDDF8D8();
      sub_25BDBC1A0(&qword_27FBDD978, &qword_27FBDD970, &unk_25BDE31C0, MEMORY[0x277D83980]);
      sub_25BDCFC90(&qword_27FBDD980, MEMORY[0x277D2B720], MEMORY[0x277D2B718]);
      sub_25BDDFD18();
      sub_25BDA84EC(v9, v12, &qword_27FBDD940, &qword_25BDE30C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD548, &qword_25BDE2A10);
      sub_25BDBBD30();
      sub_25BDBC1A0(&qword_27FBDD938, &qword_27FBDD940, &qword_25BDE30C8, MEMORY[0x277CE1198]);
      v42 = v54;
      sub_25BDDFC18();
      sub_25BDA84EC(v42, v57, &qword_27FBDD930, &unk_25BDE30B8);
      swift_storeEnumTagMultiPayload();
      sub_25BDCF9F0();
      sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0, MEMORY[0x277CE1138]);
      v43 = v59;
      sub_25BDDFC18();
      sub_25BDA8554(v42, &qword_27FBDD930, &unk_25BDE30B8);
      sub_25BDA8554(v9, &qword_27FBDD940, &qword_25BDE30C8);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD920, &qword_25BDE30B0);
      return (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    }

    else if (sub_25BDDF748() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30), v45 = sub_25BDDFD58(), v46 = (*(*v61 + 296))(v45), , (v46))
    {
      *v4 = sub_25BDDFBF8();
      *(v4 + 1) = 0;
      v4[16] = 1;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5A8, &qword_25BDE2AD0);
      sub_25BDCEA44(a1, &v4[*(v47 + 44)]);
      sub_25BDA84EC(v4, v57, &qword_27FBDD578, &qword_25BDE30D0);
      swift_storeEnumTagMultiPayload();
      sub_25BDCF9F0();
      sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0, MEMORY[0x277CE1138]);
      v48 = v59;
      sub_25BDDFC18();
      sub_25BDA8554(v4, &qword_27FBDD578, &qword_25BDE30D0);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD920, &qword_25BDE30B0);
      return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    }

    else
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD920, &qword_25BDE30B0);
      return (*(*(v50 - 8) + 56))(v59, 1, 1, v50);
    }
  }
}

uint64_t sub_25BDCE7BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BDDF908();
  *a1 = result;
  return result;
}

uint64_t sub_25BDCE7E8(uint64_t a1)
{
  v2 = sub_25BDDF918();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  sub_25BDDFD58();
  v5 = v8[1];
  v6 = swift_allocObject();
  *(v6 + 16) = sub_25BDCFCD8;
  *(v6 + 24) = v5;
  return sub_25BDDF8C8();
}

uint64_t sub_25BDCE91C(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2D8, &qword_25BDE2990);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_25BDDFA98();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_25BDA8554(v6, &qword_27FBDD2D8, &qword_25BDE2990);
}

uint64_t sub_25BDCEA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_25BDDFC38();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B0, &qword_25BDE2E00);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B8, &unk_25BDE2B10);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5C0, &unk_25BDE3200);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v65 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v52 - v12;
  v59 = sub_25BDDF988();
  v13 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - v17;
  v19 = sub_25BDDF438();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5C8, &qword_25BDE3210);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v60 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v52 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v61 = a1;
  v31 = sub_25BDDFD58();
  (*(*v67 + 248))(v31);

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_25BDA8554(v18, &qword_27FBDD298, &unk_25BDE2B20);
    v32 = 1;
    v33 = v59;
  }

  else
  {
    (*(v20 + 32))(v25, v18, v19);
    (*(v20 + 16))(v23, v25, v19);
    sub_25BDDF978();
    (*(v20 + 8))(v25, v19);
    v34 = v59;
    (*(v13 + 32))(v30, v15, v59);
    v32 = 0;
    v33 = v34;
  }

  (*(v13 + 56))(v30, v32, 1, v33);
  v35 = sub_25BDDFD58();
  v36 = (*(*v67 + 344))(v35);

  v37 = 1;
  v38 = v63;
  v39 = v64;
  v40 = v62;
  if (v36)
  {
    v41 = v53;
    sub_25BDDFB78();
    v42 = v56;
    sub_25BDDFC28();
    sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00, MEMORY[0x277CDD7F8]);
    sub_25BDCFC90(&qword_27FBDD5E0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v43 = v52;
    v44 = v55;
    v45 = v58;
    sub_25BDDFCD8();
    (*(v57 + 8))(v42, v45);
    (*(v54 + 8))(v41, v44);
    (*(v40 + 32))(v39, v43, v38);
    v37 = 0;
  }

  (*(v40 + 56))(v39, v37, 1, v38);
  v46 = v60;
  sub_25BDA84EC(v30, v60, &qword_27FBDD5C8, &qword_25BDE3210);
  v47 = v65;
  sub_25BDA84EC(v39, v65, &qword_27FBDD5C0, &unk_25BDE3200);
  v48 = v66;
  sub_25BDA84EC(v46, v66, &qword_27FBDD5C8, &qword_25BDE3210);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5D0, &qword_25BDE2B30);
  v50 = v48 + *(v49 + 48);
  *v50 = 0;
  *(v50 + 8) = 1;
  sub_25BDA84EC(v47, v48 + *(v49 + 64), &qword_27FBDD5C0, &unk_25BDE3200);
  sub_25BDA8554(v39, &qword_27FBDD5C0, &unk_25BDE3200);
  sub_25BDA8554(v30, &qword_27FBDD5C8, &qword_25BDE3210);
  sub_25BDA8554(v47, &qword_27FBDD5C0, &unk_25BDE3200);
  return sub_25BDA8554(v46, &qword_27FBDD5C8, &qword_25BDE3210);
}

uint64_t sub_25BDCF210@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for DeviceWarrantyViewModel(0);
  sub_25BDCFC90(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel, &protocol conformance descriptor for DeviceWarrantyViewModel);
  sub_25BDDFD88();
  v5 = *(type metadata accessor for DeviceWarrantySectionView(0) + 20);
  v6 = sub_25BDDF778();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_25BDCF2E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8E8, &unk_25BDE3090);
  MEMORY[0x28223BE20](v1);
  v3 = &v11[-v2];
  v12 = v0;
  v4 = sub_25BDDF768();
  if (v5)
  {
    v13 = v4;
    v14 = v5;
    sub_25BDBBE6C();
    v6 = sub_25BDDFC98();
    v9 = v8 & 1;
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v7 = 0;
  }

  v13 = v6;
  v14 = v5;
  v15 = v9;
  v16 = v7;
  sub_25BDCDD58(v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F8, &qword_25BDE29F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD8F0, &qword_25BDE30A0);
  sub_25BDBBA68();
  sub_25BDCF7A4();
  sub_25BDCF8B4();
  return sub_25BDDFD38();
}

uint64_t sub_25BDCF460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWarrantySectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDCF4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceWarrantySectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for DeviceWarrantySectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25BDDFAC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  v12 = v1[7];
  v13 = sub_25BDDF778();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25BDCF6DC()
{
  type metadata accessor for DeviceWarrantySectionView(0);
  sub_25BDDFAC8();
  return sub_25BDCD8E0();
}

unint64_t sub_25BDCF7A4()
{
  result = qword_27FBDD8F8;
  if (!qword_27FBDD8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD8F0, &qword_25BDE30A0);
    sub_25BDCF828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD8F8);
  }

  return result;
}

unint64_t sub_25BDCF828()
{
  result = qword_27FBDD900;
  if (!qword_27FBDD900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD908, &qword_25BDE30A8);
    sub_25BDCD5F0();
    sub_25BDCD824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD900);
  }

  return result;
}

unint64_t sub_25BDCF8B4()
{
  result = qword_27FBDD910;
  if (!qword_27FBDD910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD8E8, &unk_25BDE3090);
    sub_25BDCF938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD910);
  }

  return result;
}

unint64_t sub_25BDCF938()
{
  result = qword_27FBDD918;
  if (!qword_27FBDD918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD920, &qword_25BDE30B0);
    sub_25BDCF9F0();
    sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD918);
  }

  return result;
}

unint64_t sub_25BDCF9F0()
{
  result = qword_27FBDD928;
  if (!qword_27FBDD928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD930, &unk_25BDE30B8);
    sub_25BDBBD30();
    sub_25BDBC1A0(&qword_27FBDD938, &qword_27FBDD940, &qword_25BDE30C8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD928);
  }

  return result;
}

void sub_25BDCFAEC(uint64_t a1)
{
  sub_25BDCB6F0(319);
  if (v1 <= 0x3F)
  {
    sub_25BDDF778();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_25BDCFB70()
{
  result = qword_27FBDD948;
  if (!qword_27FBDD948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD950, &qword_25BDE3170);
    sub_25BDBBA68();
    sub_25BDCF7A4();
    sub_25BDCF8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD948);
  }

  return result;
}

uint64_t sub_25BDCFC10(uint64_t a1)
{
  type metadata accessor for DeviceWarrantySectionView(0);

  return sub_25BDCE7E8(a1);
}

uint64_t sub_25BDCFC90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for DeviceWarrantySectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_25BDDF778();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BDCFF74(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_25BDA8148, v4);
}

uint64_t sub_25BDD00B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_25BDB688C;
  v7[3] = &block_descriptor_27;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t (*sub_25BDD022C())()
{
  v1 = [v0 specifier];
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_25BDD1CE4(&v8);
    return 0;
  }

  v2 = v1;
  sub_25BDC4A5C();
  swift_beginAccess();

  v3 = sub_25BDDFE38();

  v4 = [v2 propertyForKey_];

  if (v4)
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7C0, &qword_25BDE2F18);
  if (swift_dynamicCast())
  {
    *(swift_allocObject() + 16) = v6;
    return sub_25BDD1D4C;
  }

  return 0;
}

id sub_25BDD03CC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  sub_25BDD044C(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_25BDDFE38();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_25BDD044C(uint64_t (*a1)(void))
{
  v3 = [v1 specifier];
  if (!v3)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_11:
    sub_25BDD1CE4(&v10);
    return 0;
  }

  v4 = v3;
  a1();
  swift_beginAccess();

  v5 = sub_25BDDFE38();

  v6 = [v4 propertyForKey_];

  if (v6)
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

id sub_25BDD058C()
{
  v1 = v0;
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = [v1 refreshSpecifiers];
  v10 = sub_25BDB7ADC();
  v11 = *(v3 + 16);
  if (v9)
  {
    v11(v6, v10, v2);
    v12 = sub_25BDDF648();
    v13 = sub_25BDDFFE8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25BD8D000, v12, v13, "Device details exiting, refreshing specifiers", v14, 2u);
      MEMORY[0x25F87C8F0](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v9[2](v9);
    _Block_release(v9);
  }

  else
  {
    v11(v8, v10, v2);
    v15 = sub_25BDDF648();
    v16 = sub_25BDDFFE8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25BD8D000, v15, v16, "Device details exiting, unable to refresh specifiers", v17, 2u);
      MEMORY[0x25F87C8F0](v17, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }

  v19.receiver = v1;
  v19.super_class = NDODeviceDetailsViewController;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

Swift::Void __swiftcall NDODeviceDetailsViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [objc_opt_self() systemGroupedBackgroundColor];
  [v7 setBackgroundColor_];

  v9 = [objc_opt_self() defaultStore];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 aida_accountForPrimaryiCloudAccount];

  if (v11)
  {

    [v1 loadCoverageDetailsContentViewController];
    v12 = sub_25BDB5E14();

    sub_25BDC07B4(v12, 1);
  }

  else
  {
    v13 = sub_25BDB7ADC();
    (*(v3 + 16))(v5, v13, v2);
    v14 = sub_25BDDF648();
    v15 = sub_25BDDFFC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_25BD8D000, v14, v15, "Not loading device details due to no signed in account", v16, 2u);
      MEMORY[0x25F87C8F0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v18[3] = sub_25BDDFB58();
    v18[4] = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(v18);
    sub_25BDC42D8();
    sub_25BDE0008();
  }
}

id NDODeviceDetailsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_25BDDFE38();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

{
  v5 = &v3[OBJC_IVAR___NDODeviceDetailsViewController_createViewController];
  *v5 = 0;
  *(v5 + 1) = 0;
  if (a2)
  {
    v6 = sub_25BDDFE38();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = NDODeviceDetailsViewController;
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id NDODeviceDetailsViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = (v1 + OBJC_IVAR___NDODeviceDetailsViewController_createViewController);
  *v3 = 0;
  v3[1] = 0;
  v6.super_class = NDODeviceDetailsViewController;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_25BDD0E20(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25BDCFF74;
  v8[3] = &block_descriptor_6;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithViewControllerCreation_];
  _Block_release(v5);

  return v6;
}

char *sub_25BDD0EE4(uint64_t a1, uint64_t a2)
{
  v5 = [v2 init];
  v6 = &v5[OBJC_IVAR___NDODeviceDetailsViewController_createViewController];
  v7 = *&v5[OBJC_IVAR___NDODeviceDetailsViewController_createViewController];
  v8 = *&v5[OBJC_IVAR___NDODeviceDetailsViewController_createViewController + 8];
  *v6 = a1;
  *(v6 + 1) = a2;
  v9 = v5;
  sub_25BDA8480(v7, v8);

  return v9;
}

id sub_25BDD0FF0()
{
  v1 = v0;
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NDOSignpost(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v38 = sub_25BDDFB58();
  v39 = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(aBlock);
  sub_25BDDFB48();
  sub_25BDE0008();
  v13 = [v0 createViewController];
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = sub_25BDD1C10;
    v40 = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDB688C;
    v38 = &block_descriptor_7_0;
    v16 = _Block_copy(aBlock);
    v17 = v14[2];
    swift_retain_n();
    v17(v14, v16);
    _Block_release(v14);

    _Block_release(v16);
  }

  v19 = [v0 serialNumber];
  if (v19)
  {
    v20 = v19;
    v36 = sub_25BDDFE48();
    v22 = v21;

    v23 = [v1 source];
    if (v23)
    {
      v24 = v23;
      v25 = sub_25BDDFE48();
      v27 = v26;

      sub_25BDA23D4(v12, 1u);
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_25BDAB79C(v12, v10);
      v29 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      sub_25BDAB800(v10, v30 + v29);

      sub_25BDA2664(v36, v22, v25, v27, sub_25BDD1B64, v30);

      sub_25BDAB92C(v12);
    }
  }

  v31 = sub_25BDB7ADC();
  (*(v3 + 16))(v5, v31, v2);
  v32 = sub_25BDDF648();
  v33 = sub_25BDDFFC8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_25BD8D000, v32, v33, "Missing necessary properties to load coverage details", v34, 2u);
    MEMORY[0x25F87C8F0](v34, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return [v1 embedViewControllerWithController_];
}

void sub_25BDD14A4(void *a1)
{
  v2 = v1;
  v4 = sub_25BDDF668();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v54 = a1;
    v8 = [v54 view];
    if (v8)
    {
      v9 = v8;
      [v8 setTranslatesAutoresizingMaskIntoConstraints_];

      [v2 addChildViewController_];
      v10 = [v2 view];
      if (v10)
      {
        v11 = v10;
        v12 = [v54 view];
        if (v12)
        {
          v13 = v12;
          [v11 addSubview_];

          v57 = 0;
          v55 = 0u;
          v56 = 0u;
          sub_25BDE0008();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_25BDE2440;
          v15 = [v54 view];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 topAnchor];

            v18 = [v2 view];
            if (v18)
            {
              v19 = v18;
              v20 = [v18 topAnchor];

              v21 = [v17 constraintEqualToAnchor_];
              *(v14 + 32) = v21;
              v22 = [v54 view];
              if (v22)
              {
                v23 = v22;
                v24 = [v22 bottomAnchor];

                v25 = [v2 view];
                if (v25)
                {
                  v26 = v25;
                  v27 = [v25 bottomAnchor];

                  v28 = [v24 constraintEqualToAnchor_];
                  *(v14 + 40) = v28;
                  v29 = [v54 view];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = [v29 leadingAnchor];

                    v32 = [v2 view];
                    if (v32)
                    {
                      v33 = v32;
                      v34 = [v32 safeAreaLayoutGuide];

                      v35 = [v34 leadingAnchor];
                      v36 = [v31 constraintEqualToAnchor_];

                      *(v14 + 48) = v36;
                      v37 = [v54 view];
                      if (v37)
                      {
                        v38 = v37;
                        v39 = [v37 trailingAnchor];

                        v40 = [v2 view];
                        if (v40)
                        {
                          v41 = v40;
                          v42 = objc_opt_self();
                          v43 = [v41 safeAreaLayoutGuide];

                          v44 = [v43 trailingAnchor];
                          v45 = [v39 constraintEqualToAnchor_];

                          *(v14 + 56) = v45;
                          sub_25BDABD64(0, &qword_27FBDD280, 0x277CCAAD0);
                          v46 = sub_25BDDFEC8();

                          [v42 activateConstraints_];

                          [v54 didMoveToParentViewController_];
                          v47 = v54;

                          return;
                        }

LABEL_29:
                        __break(1u);
                        return;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }

LABEL_27:
                    __break(1u);
                    goto LABEL_28;
                  }

LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v48 = sub_25BDB7ADC();
  (*(v5 + 16))(v7, v48, v4);
  v49 = sub_25BDDF648();
  v50 = sub_25BDDFFC8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_25BD8D000, v49, v50, "Unable to embed nil view controller, displaying error state", v51, 2u);
    MEMORY[0x25F87C8F0](v51, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(&v56 + 1) = sub_25BDDFB58();
  v57 = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(&v55);

  sub_25BDC4414(sub_25BDD1C84, v52);

  sub_25BDE0008();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BDD1B64(uint64_t a1)
{
  type metadata accessor for NDOSignpost(0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong embedViewControllerWithController_];
  }

  sub_25BDB4990();
}

void sub_25BDD1C10(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong embedViewControllerWithController_];
  }
}

void sub_25BDD1C84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong loadCoverageDetailsContentViewController];
  }
}

uint64_t sub_25BDD1CE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD1B0, &qword_25BDE23F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_25BDD1D98()
{
  v0 = objc_allocWithZone(MEMORY[0x277D2D0C8]);

  return [v0 init];
}

uint64_t sub_25BDD1DD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a6;
  v64 = a8;
  v58 = a5;
  v65 = a4;
  v66 = a2;
  v67 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v61 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v62 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v12;
  MEMORY[0x28223BE20](v11);
  v69 = &v53 - v13;
  v14 = sub_25BDDF408();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25BDDF668();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25BDB7ADC();
  v23 = *(v19 + 16);
  v56 = v18;
  v23(v21, v22, v18);
  v68 = v15;
  v24 = *(v15 + 16);
  v59 = a3;
  v57 = v24;
  v24(v17, a3, v14);
  v25 = sub_25BDDF648();
  v26 = sub_25BDDFFE8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v55 = a7;
    v28 = v27;
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v28 = 136315138;
    sub_25BDD4B2C(&unk_27FBDD0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v29 = sub_25BDE01A8();
    v31 = v30;
    (*(v68 + 8))(v17, v14);
    v32 = sub_25BDA6444(v29, v31, aBlock);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_25BD8D000, v25, v26, "Making AMSUI view controller for %s", v28, 0xCu);
    v33 = v54;
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x25F87C8F0](v33, -1, -1);
    v34 = v28;
    a7 = v55;
    MEMORY[0x25F87C8F0](v34, -1, -1);
  }

  else
  {

    (*(v68 + 8))(v17, v14);
  }

  (*(v19 + 8))(v21, v56);
  v35 = objc_allocWithZone(MEMORY[0x277D2D0A8]);
  v36 = sub_25BDDFDF8();
  v58 = [v35 initWithRequestType:3 serialNumber:0 universalLinkPath:0 additionalBody:v36];

  v37 = v69;
  v57(v69, v59, v14);
  (*(v68 + 56))(v37, 0, 1, v14);
  v38 = swift_allocObject();
  v39 = v64;
  *(v38 + 16) = a7;
  *(v38 + 24) = v39;
  v40 = v62;
  sub_25BDA84EC(v37, v62, &unk_27FBDD9A0, &unk_25BDE2670);
  v41 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v42 = (v60 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_25BDD3608(v40, v46 + v41);
  v47 = (v46 + v42);
  *v47 = sub_25BDA83B4;
  v47[1] = v38;
  v48 = v66;
  *(v46 + v43) = v65;
  *(v46 + v44) = v48;
  v49 = v58;
  *(v46 + v45) = v58;
  *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
  aBlock[4] = sub_25BDD3678;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDD4740;
  aBlock[3] = &block_descriptor_7;
  v50 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v51 = v49;

  [v67 getAmsPropertiesForContext:v51 withReply:v50];
  _Block_release(v50);

  return sub_25BDA8554(v69, &unk_27FBDD9A0, &unk_25BDE2670);
}

uint64_t sub_25BDD23E8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a6;
  v50 = a8;
  v48 = a7;
  v51 = a5;
  v52 = a4;
  v53 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v45 - v14;
  v15 = sub_25BDDF668();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25BDB7ADC();
  (*(v16 + 16))(v18, v19, v15);

  v20 = sub_25BDDF648();
  v21 = sub_25BDDFFE8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v46 = v11;
    v23 = v22;
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_25BDA6444(a1, a2, aBlock);
    _os_log_impl(&dword_25BD8D000, v20, v21, "Making universal link AMSUI view controller for path: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x25F87C8F0](v24, -1, -1);
    v25 = v23;
    v11 = v46;
    MEMORY[0x25F87C8F0](v25, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  sub_25BDA6C28(MEMORY[0x277D84F90]);
  v26 = objc_allocWithZone(MEMORY[0x277D2D0A8]);
  v27 = sub_25BDDFE38();
  v28 = sub_25BDDFDF8();

  v29 = [v26 initWithRequestType:2 serialNumber:0 universalLinkPath:v27 additionalBody:v28];

  v30 = sub_25BDDF408();
  v31 = v54;
  (*(*(v30 - 8) + 56))(v54, 1, 1, v30);
  v32 = v47;
  sub_25BDA84EC(v31, v47, &unk_27FBDD9A0, &unk_25BDE2670);
  v33 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v34 = (v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_25BDD3608(v32, v38 + v33);
  v39 = (v38 + v34);
  v40 = v50;
  v41 = v51;
  *v39 = v48;
  v39[1] = v40;
  *(v38 + v35) = v41;
  *(v38 + v36) = v52;
  *(v38 + v37) = v29;
  *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  aBlock[4] = sub_25BDD4BA0;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDD4740;
  aBlock[3] = &block_descriptor_10_0;
  v42 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v43 = v29;

  [v53 getAmsPropertiesForContext:v43 withReply:v42];
  _Block_release(v42);

  return sub_25BDA8554(v54, &unk_27FBDD9A0, &unk_25BDE2670);
}

uint64_t sub_25BDD28A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v40 = a5;
  v41 = a4;
  v42 = a3;
  v43 = a2;
  v44 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = sub_25BDDF668();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25BDB7ADC();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_25BDDF648();
  v19 = sub_25BDDFFE8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_25BD8D000, v18, v19, "Making AMSUI view controller for Coverage Central", v20, 2u);
    MEMORY[0x25F87C8F0](v20, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  sub_25BDA6C28(MEMORY[0x277D84F90]);
  v21 = objc_allocWithZone(MEMORY[0x277D2D0A8]);
  v22 = sub_25BDDFDF8();

  v38 = [v21 initWithRequestType:0 serialNumber:0 universalLinkPath:0 additionalBody:v22];

  v23 = sub_25BDDF408();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = v40;
  *(v24 + 24) = a6;
  sub_25BDA84EC(v12, v10, &unk_27FBDD9A0, &unk_25BDE2670);
  v25 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = v12;
  v30 = swift_allocObject();
  sub_25BDD3608(v10, v30 + v25);
  v31 = (v30 + v26);
  *v31 = sub_25BDD4B84;
  v31[1] = v24;
  v32 = v43;
  *(v30 + v27) = v42;
  *(v30 + v28) = v32;
  v33 = v38;
  *(v30 + v29) = v38;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  aBlock[4] = sub_25BDD4BA0;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDD4740;
  aBlock[3] = &block_descriptor_20;
  v34 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v35 = v33;

  [v44 getAmsPropertiesForContext:v35 withReply:v34];
  _Block_release(v34);

  return sub_25BDA8554(v40, &unk_27FBDD9A0, &unk_25BDE2670);
}

uint64_t sub_25BDD2D24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v49 = a6;
  v50 = a5;
  v51 = a4;
  v52 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v44 - v12;
  v13 = sub_25BDDF668();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25BDB7ADC();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_25BDDF648();
  v19 = sub_25BDDFFE8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = a7;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_25BD8D000, v18, v19, "Making AMSUI view controller for Coverage Details", v21, 2u);
    v22 = v21;
    a7 = v20;
    MEMORY[0x25F87C8F0](v22, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  sub_25BDA6C28(MEMORY[0x277D84F90]);
  v23 = objc_allocWithZone(MEMORY[0x277D2D0A8]);
  v24 = sub_25BDDFE38();
  v25 = sub_25BDDFDF8();

  v45 = [v23 initWithRequestType:1 serialNumber:v24 universalLinkPath:0 additionalBody:v25];

  v26 = sub_25BDDF408();
  v27 = v53;
  (*(*(v26 - 8) + 56))(v53, 1, 1, v26);
  v28 = swift_allocObject();
  v29 = v47;
  *(v28 + 16) = a7;
  *(v28 + 24) = v29;
  v30 = v27;
  v31 = v48;
  sub_25BDA84EC(v30, v48, &unk_27FBDD9A0, &unk_25BDE2670);
  v32 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v33 = (v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_25BDD3608(v31, v37 + v32);
  v38 = (v37 + v33);
  *v38 = sub_25BDD4B84;
  v38[1] = v28;
  v39 = v51;
  *(v37 + v34) = v50;
  *(v37 + v35) = v39;
  v40 = v45;
  *(v37 + v36) = v45;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  aBlock[4] = sub_25BDD4BA0;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDD4740;
  aBlock[3] = &block_descriptor_30_0;
  v41 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v42 = v40;

  [v52 getAmsPropertiesForContext:v42 withReply:v41];
  _Block_release(v41);

  return sub_25BDA8554(v53, &unk_27FBDD9A0, &unk_25BDE2670);
}

uint64_t sub_25BDD31E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v44 = a7;
  v45 = a8;
  v42 = a5;
  v43 = a6;
  v39 = a1;
  v40 = a4;
  v53 = a2;
  v41 = a9;
  v49 = sub_25BDDFDC8();
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25BDDFDE8();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v39 - v17;
  sub_25BDA7EE8();
  v47 = sub_25BDE0018();
  sub_25BDA84EC(a3, v18, &unk_27FBDD9A0, &unk_25BDE2670);
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  sub_25BDD3608(v18, v25 + v19);
  *(v25 + v20) = v53;
  v26 = (v25 + v21);
  v27 = v42;
  v28 = v43;
  *v26 = v40;
  v26[1] = v27;
  *(v25 + v22) = v28;
  v29 = v45;
  *(v25 + v23) = v44;
  *(v25 + v24) = v29;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  aBlock[4] = sub_25BDD4A50;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDA2E38;
  aBlock[3] = &block_descriptor_36;
  v30 = _Block_copy(aBlock);
  v31 = v39;
  v32 = v53;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v33 = v29;

  v34 = v46;
  sub_25BDDFDD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25BDD4B2C(&qword_27FBDD178, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
  sub_25BDA7F8C();
  v36 = v48;
  v35 = v49;
  sub_25BDE00C8();
  v37 = v47;
  MEMORY[0x25F87BDC0](0, v34, v36, v30);
  _Block_release(v30);

  (*(v52 + 8))(v36, v35);
  return (*(v50 + 8))(v34, v51);
}

uint64_t sub_25BDD3608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25BDD367C(void *a1, uint64_t a2, void *a3, void (*a4)(id, id), uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  v116 = a8;
  v112 = a7;
  v111 = a6;
  v118 = a5;
  v119 = a4;
  v12 = sub_25BDDF668();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_25BDDF328();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v109 - v18;
  v20 = sub_25BDDF408();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  if (a1)
  {
    v110 = &v109 - v25;
    v117 = a1;
    v26 = [v117 url];
    if (v26)
    {
      v27 = v26;
      sub_25BDDF3E8();

      (*(v21 + 32))(v19, v24, v20);
      (*(v21 + 56))(v19, 0, 1, v20);
    }

    else
    {
      sub_25BDA84EC(a2, v19, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {

      sub_25BDA8554(v19, &unk_27FBDD9A0, &unk_25BDE2670);
      goto LABEL_9;
    }

    v28 = v110;
    (*(v21 + 32))(v110, v19, v20);
    if (a3)
    {
      (*(v21 + 8))(v28, v20);

      goto LABEL_9;
    }

    v109 = a9;
    v39 = objc_allocWithZone(MEMORY[0x277CCAB70]);
    v40 = sub_25BDDF3C8();
    v41 = [v39 initWithURL_];

    v42 = sub_25BDDFE38();
    [v41 setHTTPMethod_];

    v43 = sub_25BDDFE38();
    v44 = sub_25BDDFE38();
    [v41 setValue:v43 forHTTPHeaderField:v44];

    v45 = sub_25BDDFE38();
    v46 = sub_25BDDFE38();
    [v41 setValue:v45 forHTTPHeaderField:v46];

    v47 = sub_25BDDFE38();
    v48 = sub_25BDDFE38();
    [v41 addValue:v47 forHTTPHeaderField:v48];

    v49 = v117;
    v50 = [v117 bodyData];
    v51 = sub_25BDDF428();
    v53 = v52;

    v54 = sub_25BDDF418();
    sub_25BDA72AC(v51, v53);
    [v41 setHTTPBody_];

    sub_25BDD4478(v111);
    v55 = sub_25BDDFDF8();

    [v41 addAllHeadersFrom_];

    v56 = [v49 signatureHeaders];
    v57 = sub_25BDDFE08();

    sub_25BDD4478(v57);

    v58 = sub_25BDDFDF8();

    [v41 addAllHeadersFrom_];

    v59 = sub_25BDDFE38();
    v60 = v112;
    v61 = [v112 basicHeadersWithBundleID_];

    v62 = sub_25BDDFE08();
    sub_25BDD4478(v62);

    v63 = sub_25BDDFDF8();

    [v41 addAllHeadersFrom_];

    v64 = sub_25BDDFE38();
    v65 = [v60 OASHeadersWithOfferID:v64 serialNumber:0 primarySerialNumber:0 currentStoreLocaleHeader:0];

    v66 = sub_25BDDFE08();
    sub_25BDD4478(v66);

    v67 = sub_25BDDFDF8();

    [v41 &selRef:v67 initWithDefaultDevice:? + 3];

    v68 = [v60 accountHeadersFor:v41 forceReprovisioning:0 avoidUI:0];
    if (v68)
    {
      v69 = v68;
      v70 = sub_25BDDFE08();
    }

    else
    {
      v70 = sub_25BDA6C28(MEMORY[0x277D84F90]);
    }

    v71 = v116;
    sub_25BDD4478(v70);

    v72 = sub_25BDDFDF8();

    [v41 &selRef:v72 initWithDefaultDevice:? + 3];

    v73 = v113;
    sub_25BDDF318();
    v74 = objc_allocWithZone(NDOAppleCareAMSUIViewController);
    v75 = sub_25BDDF308();
    v76 = [v74 initWithRequest_];

    (*(v114 + 8))(v73, v115);
    if (![v71 requestType] || objc_msgSend(v71, sel_requestType) == 1)
    {
      v77 = [v76 appearance];
      if (v77)
      {
        v78 = v77;
        v79 = [objc_opt_self() ams_primaryGroupedBackground];
        [v78 setBackgroundColor_];
      }
    }

    [v76 setPresenter_];
    v80 = [objc_opt_self() appearance];
    v81 = [v80 buttonTextColor];

    if (v81)
    {
      v82 = [v81 CGColor];
      v83 = sub_25BDDFFA8();

      if (!v83)
      {
LABEL_26:

        goto LABEL_27;
      }

      v84 = *(v83 + 16);
      if (v84 < 3)
      {

        goto LABEL_26;
      }

      if (v84 == 3)
      {
        __break(1u);
        return;
      }

      v86 = *(v83 + 32);
      v85 = *(v83 + 40);
      v87 = *(v83 + 48);
      v88 = *(v83 + 56);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9D0, &qword_25BDE32A8);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_25BDE3250;
      v90 = v86 * 255.0;
      v91 = lroundf(v90);
      v92 = MEMORY[0x277D83B88];
      v93 = MEMORY[0x277D83C10];
      *(v89 + 56) = MEMORY[0x277D83B88];
      *(v89 + 64) = v93;
      *(v89 + 32) = v91;
      v94 = v85 * 255.0;
      v95 = lroundf(v94);
      *(v89 + 96) = v92;
      *(v89 + 104) = v93;
      *(v89 + 72) = v95;
      v96 = v87 * 255.0;
      v97 = lroundf(v96);
      *(v89 + 136) = v92;
      *(v89 + 144) = v93;
      *(v89 + 112) = v97;
      v98 = v88 * 255.0;
      v99 = lroundf(v98);
      *(v89 + 176) = v92;
      *(v89 + 184) = v93;
      *(v89 + 152) = v99;
      v100 = sub_25BDDFE58();
      v102 = v101;

      if (v102)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD9B8, "fs");
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25BDE21F0;
        strcpy(v120, "tintColorHex");
        BYTE5(v120[1]) = 0;
        HIWORD(v120[1]) = -5120;
        v104 = v76;
        v105 = MEMORY[0x277D837D0];
        sub_25BDE0108();
        *(inited + 96) = v105;
        *(inited + 72) = v100;
        *(inited + 80) = v102;
        sub_25BDA7300(inited);
        swift_setDeallocating();
        sub_25BDA8554(inited + 32, &unk_27FBDD9C0, &qword_25BDE2408);
        v81 = sub_25BDDFDF8();

        [v104 setClientOptions_];

        goto LABEL_26;
      }
    }

LABEL_27:
    v106 = v76;
    v107 = v117;
    v108 = [v117 presentModally];
    v119(v76, v108);

    (*(v21 + 8))(v110, v20);
    return;
  }

LABEL_9:
  v29 = sub_25BDB7ADC();
  (*(v13 + 16))(v15, v29, v12);
  v30 = a3;
  v31 = sub_25BDDF648();
  v32 = sub_25BDDFFC8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v120[0] = v34;
    *v33 = 136315138;
    v121 = a3;
    v35 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD190, &unk_25BDE23D0);
    v36 = sub_25BDDFE68();
    v38 = sub_25BDA6444(v36, v37, v120);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_25BD8D000, v31, v32, "Cannot get coverage details ams properties from agent, error: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x25F87C8F0](v34, -1, -1);
    MEMORY[0x25F87C8F0](v33, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v119(0, 0);
}

uint64_t sub_25BDD4478(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD1C0, &qword_25BDE2400);
    v2 = sub_25BDE0198();
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
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_25BDA818C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_25BDA818C(v29, v30);
    result = sub_25BDE00E8();
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
    result = sub_25BDA818C(v30, (*(v2 + 56) + 32 * v10));
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

void sub_25BDD4740(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25BDDF408();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_25BDD4954(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_25BDD31E0(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_25BDD4A50()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_25BDD367C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_25BDD4B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BDD4BA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D2B670];
  v3 = sub_25BDDF6F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25BDD4CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF6F8();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 200))(v6);
}

uint64_t sub_25BDD4DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BDDF6F8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25BDD4E14@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 536))();

  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__state;
  swift_beginAccess();
  v4 = sub_25BDDF6F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_25BDD4EE0(uint64_t a1)
{
  swift_getKeyPath();
  v5 = v1;
  v6 = a1;
  (*(*v1 + 544))();

  v3 = sub_25BDDF6F8();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_25BDD4FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF6F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__state;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t (*sub_25BDD50F8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDDD158(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel, &protocol conformance descriptor for CoverageCentralViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDD4C18(v4);
  return sub_25BDD5248;
}

uint64_t type metadata accessor for CoverageCentralViewModel(uint64_t a1)
{
  result = qword_27FBDE4E0;
  if (!qword_27FBDE4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDD5344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_25BDA84EC(a1, &v8 - v5, &qword_27FBDD298, &unk_25BDE2B20);
  return (*(**a2 + 248))(v6);
}

uint64_t sub_25BDD5434(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataDate;
  swift_beginAccess();
  sub_25BDA84EC(v1 + v6, v5, &qword_27FBDD298, &unk_25BDE2B20);
  v7 = sub_25BDDBEE0(v5, a1);
  sub_25BDA8554(v5, &qword_27FBDD298, &unk_25BDE2B20);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 544))(v9, sub_25BDDC200);
  }

  else
  {
    sub_25BDA84EC(a1, v5, &qword_27FBDD298, &unk_25BDE2B20);
    swift_beginAccess();
    sub_25BDB388C(v5, v1 + v6, &qword_27FBDD298, &unk_25BDE2B20);
    swift_endAccess();
  }

  return sub_25BDA8554(a1, &qword_27FBDD298, &unk_25BDE2B20);
}

uint64_t (*sub_25BDD561C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDDD158(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel, &protocol conformance descriptor for CoverageCentralViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDD52A0(v4);
  return sub_25BDD576C;
}

uint64_t sub_25BDD57D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_25BDD58BC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDDD158(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel, &protocol conformance descriptor for CoverageCentralViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDD5778(v4);
  return sub_25BDD5A0C;
}

uint64_t sub_25BDD5A78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25BDD5B34(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 536))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_25BDD5BE4(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 & 1;
  v7 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v7) == v6)
  {
    *(v4 + v7) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    v11 = v4;
    v12 = v6;
    (*(*v4 + 544))(v10, a4);
  }

  return result;
}

uint64_t (*sub_25BDD5CE0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDDD158(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel, &protocol conformance descriptor for CoverageCentralViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDD5A18(v4);
  return sub_25BDD5E30;
}

uint64_t sub_25BDD5EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_25BDA84EC(a1, &v8 - v5, &qword_27FBDD2A0, &qword_25BDE2548);
  return (*(**a2 + 392))(v6);
}

uint64_t sub_25BDD5FEC@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  (*(*v5 + 536))();

  v10 = *a2;
  swift_beginAccess();
  return sub_25BDA84EC(v5 + v10, a5, a3, a4);
}

uint64_t sub_25BDD6098(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_25BDA84EC(v1 + v6, v5, &qword_27FBDD2A0, &qword_25BDE2548);
  v7 = sub_25BDDC284(v5, a1);
  sub_25BDA8554(v5, &qword_27FBDD2A0, &qword_25BDE2548);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 544))(v9, sub_25BDDC5A4);
  }

  else
  {
    sub_25BDA84EC(a1, v5, &qword_27FBDD2A0, &qword_25BDE2548);
    swift_beginAccess();
    sub_25BDB388C(v5, v1 + v6, &qword_27FBDD2A0, &qword_25BDE2548);
    swift_endAccess();
  }

  return sub_25BDA8554(a1, &qword_27FBDD2A0, &qword_25BDE2548);
}

uint64_t sub_25BDD6280(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_25BDA84EC(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_25BDB388C(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t (*sub_25BDD6354(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDDD158(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel, &protocol conformance descriptor for CoverageCentralViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDD5E3C(v4);
  return sub_25BDD64A4;
}

uint64_t sub_25BDD64B0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 536))();

  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
  swift_beginAccess();
  return sub_25BDB39C4(v1 + v3, a1);
}

uint64_t sub_25BDD654C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 536))();

  v4 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
  swift_beginAccess();
  return sub_25BDB39C4(v3 + v4, a2);
}

uint64_t sub_25BDD65EC(uint64_t a1, uint64_t *a2)
{
  sub_25BDB39C4(a1, v7);
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v7;
  (*(*v3 + 544))(KeyPath, sub_25BDDD0E0, v6, MEMORY[0x277D84F78] + 8);

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_25BDD66B0()
{
  swift_getKeyPath();
  (*(*v0 + 536))();

  v1 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);

  return v1;
}

uint64_t sub_25BDD6730@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 536))();

  v5 = *(v3 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);
  v4 = *(v3 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_25BDDD044;
  a2[1] = v6;
}

uint64_t sub_25BDD67F0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  KeyPath = swift_getKeyPath();
  v10[2] = v6;
  v10[3] = sub_25BDDCFB0;
  v10[4] = v5;
  v8 = *(*v6 + 544);

  v8(KeyPath, sub_25BDDCFF8, v10, MEMORY[0x277D84F78] + 8);
}

uint64_t CoverageCentralViewModel.__allocating_init(_:deviceWarrantyViewModelProvider:openAMS:openPath:startWeb:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v43 = a8;
  v41 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__state;
  v19 = *MEMORY[0x277D2B670];
  v20 = sub_25BDDF6F8();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  v21 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataDate;
  v22 = sub_25BDDF438();
  (*(*(v22 - 8) + 56))(v17 + v21, 1, 1, v22);
  *(v17 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__showLastUpdatedMessage) = 0;
  *(v17 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__showLoadingSpinner) = 0;
  v23 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__appendSettingsNavigationPath;
  v24 = sub_25BDDF5D8();
  (*(*(v24 - 8) + 56))(v17 + v23, 1, 1, v24);
  sub_25BDDF4B8();
  sub_25BDB39C4(a1, v17 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider);
  v25 = (v17 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v17 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openAMSHandler);
  v27 = v42;
  *v26 = v41;
  v26[1] = a5;
  v28 = (v17 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openPathHandler);
  *v28 = v27;
  v28[1] = a7;
  v29 = (v17 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_startWebHandler);
  *v29 = v43;
  v29[1] = a9;
  v30 = objc_opt_self();

  if ([v30 isSignedIntoAppleAccount])
  {
    sub_25BDDFF58();
    v31 = sub_25BDDFF88();
    (*(*(v31 - 8) + 56))(v16, 0, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v17;

    v33 = &unk_25BDE33A8;
    v34 = v16;
    v35 = v32;
  }

  else
  {
    v36 = sub_25BDDFF88();
    (*(*(v36 - 8) + 56))(v16, 1, 1, v36);
    sub_25BDDFF48();

    v37 = sub_25BDDFF38();
    v35 = swift_allocObject();
    v38 = MEMORY[0x277D85700];
    v35[2] = v37;
    v35[3] = v38;
    v35[4] = v17;
    v33 = &unk_25BDE3398;
    v34 = v16;
  }

  sub_25BDAFA6C(0, 0, v34, v33, v35);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v17;
}

uint64_t CoverageCentralViewModel.init(_:deviceWarrantyViewModelProvider:openAMS:openPath:startWeb:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v43 = a6;
  v44 = a8;
  v42 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v41 - v17;
  v19 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__state;
  v20 = *MEMORY[0x277D2B670];
  v21 = sub_25BDDF6F8();
  (*(*(v21 - 8) + 104))(v10 + v19, v20, v21);
  v22 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataDate;
  v23 = sub_25BDDF438();
  (*(*(v23 - 8) + 56))(v10 + v22, 1, 1, v23);
  *(v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__showLastUpdatedMessage) = 0;
  *(v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__showLoadingSpinner) = 0;
  v24 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__appendSettingsNavigationPath;
  v25 = sub_25BDDF5D8();
  (*(*(v25 - 8) + 56))(v10 + v24, 1, 1, v25);
  sub_25BDDF4B8();
  sub_25BDB39C4(a1, v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider);
  v26 = (v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);
  *v26 = a2;
  v26[1] = a3;
  v27 = (v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openAMSHandler);
  v28 = v43;
  *v27 = v42;
  v27[1] = a5;
  v29 = (v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openPathHandler);
  *v29 = v28;
  v29[1] = a7;
  v30 = (v10 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_startWebHandler);
  *v30 = v44;
  v30[1] = a9;
  v31 = objc_opt_self();

  if ([v31 isSignedIntoAppleAccount])
  {
    sub_25BDDFF58();
    v32 = sub_25BDDFF88();
    (*(*(v32 - 8) + 56))(v18, 0, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v10;

    v34 = &unk_25BDE33B8;
    v35 = v18;
    v36 = v33;
  }

  else
  {
    v37 = sub_25BDDFF88();
    (*(*(v37 - 8) + 56))(v18, 1, 1, v37);
    sub_25BDDFF48();

    v38 = sub_25BDDFF38();
    v36 = swift_allocObject();
    v39 = MEMORY[0x277D85700];
    v36[2] = v38;
    v36[3] = v39;
    v36[4] = v10;
    v34 = &unk_25BDE33B0;
    v35 = v18;
  }

  sub_25BDAFA6C(0, 0, v35, v34, v36);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_25BDD70C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25BDDF6F8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_25BDDFF48();
  v4[6] = sub_25BDDFF38();
  v7 = sub_25BDDFF28();

  return MEMORY[0x2822009F8](sub_25BDD71B8, v7, v6);
}

uint64_t sub_25BDD71B8()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v5 = *MEMORY[0x277D2B758];
  v6 = sub_25BDDF9A8();
  (*(*(v6 - 8) + 104))(v1, v5, v6);
  (*(v3 + 104))(v1, *MEMORY[0x277D2B660], v2);
  (*(*v4 + 200))(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25BDD72CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 512) + **(*a4 + 512));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_25BDAFE88;

  return v7();
}

uint64_t sub_25BDD73E8()
{
  v1[10] = v0;
  v2 = sub_25BDDF668();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD9E0, &qword_25BDE33C8);
  v1[14] = swift_task_alloc();
  v3 = sub_25BDDFA58();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_25BDDF6F8();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_25BDDFF48();
  v1[22] = sub_25BDDFF38();
  v6 = sub_25BDDFF28();
  v1[23] = v6;
  v1[24] = v5;

  return MEMORY[0x2822009F8](sub_25BDD75D8, v6, v5);
}

uint64_t sub_25BDD75D8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  (*(**(v0 + 80) + 192))();
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *MEMORY[0x277D2B660];
  (*(v3 + 8))(v1, v2);
  if (v4 == v5)
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 80);
    (*(*(v0 + 152) + 104))(v6, *MEMORY[0x277D2B670], *(v0 + 144));
    (*(*v7 + 200))(v6);
  }

  v8 = *(v0 + 80);
  KeyPath = swift_getKeyPath();
  (*(*v8 + 536))(KeyPath);

  v10 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
  swift_beginAccess();
  sub_25BDB39C4(v8 + v10, v0 + 16);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v11);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_25BDD77E8;

  return MEMORY[0x28218AB78](v11, v12);
}

uint64_t sub_25BDD77E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = a2;

  v5 = *(v3 + 192);
  v6 = *(v3 + 184);

  return MEMORY[0x2822009F8](sub_25BDD7910, v6, v5);
}

uint64_t sub_25BDD7910()
{
  v1 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1 >> 60 != 15)
  {
    v3 = v0[26];
    v2 = v0[27];
    sub_25BDDF358();
    swift_allocObject();
    sub_25BDB3C24(v3, v2);
    sub_25BDDF348();
    sub_25BDDD158(&qword_27FBDD9E8, MEMORY[0x277D2B790], MEMORY[0x277D2B798]);
    sub_25BDDF338();
    v5 = v0[26];
    v4 = v0[27];
    v21 = v0[16];
    v20 = v0[17];
    v23 = v0[14];
    v22 = v0[15];

    (*(v21 + 56))(v23, 0, 1, v22);
    (*(v21 + 32))(v20, v23, v22);
    v24 = *(sub_25BDDFA48() + 16);

    v25 = sub_25BDA7298(v5, v4);
    v26 = v0[17];
    if (v24)
    {
      v27 = v0[10];
      MEMORY[0x25F87BB50](v25, 0.5, 0.85, 0.0);
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      *(v28 + 24) = v26;
      sub_25BDDFB88();

      v29 = (*(*v27 + 520) + **(*v27 + 520));
      v17 = swift_task_alloc();
      v0[28] = v17;
      *v17 = v0;
      v18 = sub_25BDD7DD8;
      goto LABEL_6;
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  v9 = sub_25BDB7ADC();
  (*(v7 + 16))(v6, v9, v8);
  v10 = sub_25BDDF648();
  v11 = sub_25BDDFFC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25BD8D000, v10, v11, "Local device list failed", v12, 2u);
    MEMORY[0x25F87C8F0](v12, -1, -1);
  }

  v14 = v0[12];
  v13 = v0[13];
  v16 = v0[10];
  v15 = v0[11];

  (*(v14 + 8))(v13, v15);
  v29 = (*(*v16 + 520) + **(*v16 + 520));
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v18 = sub_25BDD7FBC;
LABEL_6:
  v17[1] = v18;

  return v29();
}

uint64_t sub_25BDD7DD8()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25BDD7EF8, v3, v2);
}

uint64_t sub_25BDD7EF8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_25BDA7298(v0[26], v0[27]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25BDD7FBC()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25BDD80DC, v3, v2);
}

uint64_t sub_25BDD80DC()
{
  v1 = v0[26];
  v2 = v0[27];

  sub_25BDA7298(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25BDD8184(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_25BDDF6F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = sub_25BDDFA48();
  (*(v6 + 104))(v8, *MEMORY[0x277D2B668], v5);
  (*(*a1 + 200))(v8);
  sub_25BDDFA38();
  (*(*a1 + 248))(v4);
  (*(*a1 + 344))(1);
  return (*(*a1 + 296))(1);
}

uint64_t sub_25BDD8394()
{
  v1[11] = v0;
  v2 = sub_25BDDF6F8();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = sub_25BDDF668();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_25BDDFF48();
  v1[20] = sub_25BDDFF38();
  v5 = sub_25BDDFF28();
  v1[21] = v5;
  v1[22] = v4;

  return MEMORY[0x2822009F8](sub_25BDD84FC, v5, v4);
}

uint64_t sub_25BDD84FC()
{
  v1 = v0[11];
  swift_getKeyPath();
  (*(*v1 + 536))();

  v2 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
  swift_beginAccess();
  sub_25BDB39C4(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_25BDD8620;

  return MEMORY[0x28218AB80](v3, v4);
}

uint64_t sub_25BDD8620(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = a2;

  v5 = *(v3 + 176);
  v6 = *(v3 + 168);

  return MEMORY[0x2822009F8](sub_25BDD8748, v6, v5);
}

uint64_t sub_25BDD8748()
{
  v1 = v0[25];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1 >> 60 != 15)
  {
    v3 = v0[24];
    v2 = v0[25];
    sub_25BDDF358();
    swift_allocObject();
    sub_25BDB3C24(v3, v2);
    sub_25BDDF348();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD728, &unk_25BDE2E70);
    sub_25BDDC73C();
    sub_25BDDF338();

    v35 = v0[10];
    v37 = v0[24];
    v36 = v0[25];
    if (*(v35 + 16))
    {
      v38 = v0[11];
      v39 = sub_25BDA7298(v0[24], v0[25]);
      MEMORY[0x25F87BB50](v39, 0.5, 0.85, 0.0);
      v40 = swift_task_alloc();
      *(v40 + 16) = v38;
      *(v40 + 24) = v35;
      sub_25BDDFB88();
      sub_25BDA7298(v37, v36);

      goto LABEL_10;
    }

    sub_25BDA7298(v37, v36);
  }

  v4 = v0[19];
  v5 = v0[17];
  v6 = sub_25BDB7ADC();
  v41 = *(v5 + 16);
  v42 = v6;
  v41(v4);
  v7 = sub_25BDDF648();
  v8 = sub_25BDDFFC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25BD8D000, v7, v8, "Remote device list failed", v9, 2u);
    MEMORY[0x25F87C8F0](v9, -1, -1);
  }

  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[15];
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[11];

  v17 = *(v12 + 8);
  v18 = v17(v10, v11);
  (*(*v16 + 192))(v18);
  LODWORD(v16) = (*(v14 + 88))(v13, v15);
  LODWORD(v10) = *MEMORY[0x277D2B670];
  (*(v14 + 8))(v13, v15);
  if (v16 == v10)
  {
    (v41)(v0[18], v42, v0[16]);
    v19 = sub_25BDDF648();
    v20 = sub_25BDDFFC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25BD8D000, v19, v20, "Displaying error state", v21, 2u);
      MEMORY[0x25F87C8F0](v21, -1, -1);
    }

    v22 = v0[18];
    v23 = v0[16];
    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[11];
    v27 = v0[12];

    v17(v22, v23);
    v28 = *MEMORY[0x277D2B750];
    v29 = sub_25BDDF9A8();
    (*(*(v29 - 8) + 104))(v24, v28, v29);
    (*(v25 + 104))(v24, *MEMORY[0x277D2B660], v27);
    (*(*v26 + 200))(v24);
  }

  v31 = v0[24];
  v30 = v0[25];
  v32 = v0[11];
  (*(*v32 + 344))(0);
  (*(*v32 + 296))(1);
  sub_25BDA7298(v31, v30);
LABEL_10:

  v33 = v0[1];

  return v33();
}

uint64_t sub_25BDD8C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_25BDDF6F8();
  MEMORY[0x28223BE20](v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = a2;
  (*(v10 + 104))(v9, *MEMORY[0x277D2B668]);
  v11 = *(*a1 + 200);

  v11(v9);
  v12 = sub_25BDDF438();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  (*(*a1 + 248))(v6);
  (*(*a1 + 344))(0);
  return (*(*a1 + 296))(0);
}

uint64_t sub_25BDD8E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v218 = a3;
  v236 = a2;
  v250 = a1;
  v227 = sub_25BDDF6E8();
  v220 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v219 = v3;
  v225 = &v203 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  MEMORY[0x28223BE20](v4 - 8);
  v226 = &v203 - v5;
  v222 = sub_25BDDF858();
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v228 = &v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v234 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v243 = &v203 - v11;
  MEMORY[0x28223BE20](v10);
  v241 = &v203 - v12;
  v13 = sub_25BDDF408();
  v246 = *(v13 - 1);
  v247 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v223 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v240 = &v203 - v17;
  MEMORY[0x28223BE20](v16);
  v233 = &v203 - v18;
  v19 = sub_25BDDF668();
  v248 = *(v19 - 8);
  v249 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v212 = &v203 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v211 = &v203 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v239 = &v203 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v244 = &v203 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v242 = &v203 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v217 = &v203 - v31;
  MEMORY[0x28223BE20](v30);
  v208 = &v203 - v32;
  v210 = sub_25BDDF5B8();
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v207 = &v203 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_25BDDFA88();
  v235 = *(v237 - 8);
  v34 = *(v235 + 64);
  v35 = MEMORY[0x28223BE20](v237);
  v204 = &v203 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v35);
  v215 = &v203 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v213 = &v203 - v39;
  MEMORY[0x28223BE20](v38);
  v214 = &v203 - v40;
  v216 = sub_25BDDF898();
  v206 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v205 = &v203 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  MEMORY[0x28223BE20](v42 - 8);
  v229 = &v203 - v43;
  v230 = sub_25BDDF5D8();
  v232 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v224 = &v203 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_25BDDF818();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v231 = &v203 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v238 = &v203 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v203 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v203 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v203 - v57;
  v59 = sub_25BDDFA98();
  v60 = *(v59 - 8);
  v61 = MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](v61);
  v63 = &v203 - v62;
  (*(v60 + 16))(&v203 - v62, v250, v59);
  v64 = (*(v60 + 88))(v63, v59);
  if (v64 == *MEMORY[0x277D2B7F0])
  {
    (*(v60 + 96))(v63, v59);
    (*(v46 + 32))(v53, v63, v45);
    sub_25BDDF808();
    v65 = v46;
    v66 = v45;
    v67 = v248;
    v68 = v249;
    if (v69)
    {
      v70 = v243;
      sub_25BDDF3F8();

      v72 = v246;
      v71 = v247;
      if ((*(v246 + 6))(v70, 1, v247) != 1)
      {
        v108 = v240;
        (*(v72 + 4))(v240, v70, v71);
        (*(v245 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_startWebHandler))(v108);
        (*(v72 + 1))(v108, v71);
        return (*(v65 + 8))(v53, v66);
      }

      sub_25BDA8554(v70, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    v73 = sub_25BDB7ADC();
    v74 = v244;
    (*(v67 + 16))(v244, v73, v68);
    v75 = sub_25BDDF648();
    v76 = sub_25BDDFFC8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_25BD8D000, v75, v76, "Can't start web. No url", v77, 2u);
      MEMORY[0x25F87C8F0](v77, -1, -1);
    }

    (*(v67 + 8))(v74, v68);
    return (*(v65 + 8))(v53, v66);
  }

  if (v64 != *MEMORY[0x277D2B7E8])
  {
    if (v64 != *MEMORY[0x277D2B7E0])
    {
      if (v64 == *MEMORY[0x277D2B7D0])
      {
        (*(v60 + 96))(v63, v59);
        v109 = v58;
        v110 = v45;
        v111 = (*(v46 + 32))(v58, v63, v45);
        v112 = v245;
        v113 = v229;
        (*(*v245 + 384))(v111);
        v114 = v232;
        v115 = v230;
        if ((*(v232 + 48))(v113, 1, v230) == 1)
        {
          sub_25BDA8554(v113, &qword_27FBDD2A0, &qword_25BDE2548);
          v116 = sub_25BDB7ADC();
          v117 = v248;
          v118 = v249;
          v119 = v217;
          (*(v248 + 16))(v217, v116, v249);
          v120 = sub_25BDDF648();
          v121 = sub_25BDDFFC8();
          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            *v122 = 0;
            _os_log_impl(&dword_25BD8D000, v120, v121, "Can't handle device warranty action since appendSettingsNavigationPath is nil", v122, 2u);
            MEMORY[0x25F87C8F0](v122, -1, -1);
          }

          (*(v117 + 8))(v119, v118);
          return (*(v46 + 8))(v109, v110);
        }

        else
        {
          v247 = v109;
          v250 = v110;
          v148 = v224;
          (*(v114 + 32))(v224, v113, v115);
          v149 = v235;
          v150 = v214;
          v151 = v237;
          (*(v235 + 16))(v214, v236, v237);
          v152 = (*(v149 + 88))(v150, v151);
          v153 = v248;
          v154 = v249;
          if (v152 == *MEMORY[0x277D2B7B0])
          {
            (*(v149 + 96))(v150, v151);
            v155 = v206;
            v156 = v205;
            v157 = (*(v206 + 32))(v205, v150, v216);
            v249 = &v203;
            MEMORY[0x28223BE20](v157);
            *(&v203 - 4) = v112;
            *(&v203 - 3) = v156;
            v158 = v247;
            *(&v203 - 2) = v247;
            type metadata accessor for DeviceWarrantyMainView(0);
            sub_25BDDD158(&qword_27FBDDA08, type metadata accessor for DeviceWarrantyMainView, &unk_25BDE2F80);
            v159 = v207;
            sub_25BDDF5A8();
            sub_25BDDD158(&qword_27FBDDA10, MEMORY[0x277D40260], MEMORY[0x277D40268]);
            v160 = v210;
            sub_25BDDF5C8();
            (*(v209 + 8))(v159, v160);
            (*(v114 + 8))(v148, v115);
            (*(v155 + 8))(v156, v216);
            return (*(v46 + 8))(v158, v250);
          }

          else
          {
            (*(v149 + 8))(v150, v151);
            v179 = sub_25BDB7ADC();
            v180 = v208;
            (*(v153 + 16))(v208, v179, v154);
            v181 = sub_25BDDF648();
            v182 = sub_25BDDFFC8();
            if (os_log_type_enabled(v181, v182))
            {
              v183 = swift_slowAlloc();
              *v183 = 0;
              _os_log_impl(&dword_25BD8D000, v181, v182, "Can't handle device warranty action from non device item", v183, 2u);
              MEMORY[0x25F87C8F0](v183, -1, -1);
            }

            (*(v153 + 8))(v180, v154);
            (*(v232 + 8))(v224, v115);
            return (*(v46 + 8))(v247, v250);
          }
        }
      }

      else if (v64 == *MEMORY[0x277D2B7D8])
      {
        (*(v60 + 96))(v63, v59);
        v127 = v46;
        v128 = *(v46 + 32);
        v250 = v45;
        v128(v231, v63, v45);
        v129 = v235;
        v130 = *(v235 + 16);
        v131 = v213;
        v132 = v236;
        v133 = v237;
        v130(v213, v236, v237);
        if ((*(v129 + 88))(v131, v133) == *MEMORY[0x277D2B7A8])
        {
          (*(v129 + 96))(v131, v133);
          (*(v221 + 32))(v228, v131, v222);
          v134 = sub_25BDDFF88();
          (*(*(v134 - 8) + 56))(v226, 1, 1, v134);
          v135 = v133;
          v136 = v129;
          v137 = v220;
          (*(v220 + 16))(v225, v218, v227);
          v130(v215, v132, v135);
          sub_25BDDFF48();
          v138 = v245;

          v139 = sub_25BDDFF38();
          v140 = (*(v137 + 80) + 40) & ~*(v137 + 80);
          v141 = (v219 + *(v136 + 80) + v140) & ~*(v136 + 80);
          v142 = swift_allocObject();
          v143 = MEMORY[0x277D85700];
          *(v142 + 2) = v139;
          *(v142 + 3) = v143;
          *(v142 + 4) = v138;
          (*(v137 + 32))(&v142[v140], v225, v227);
          (*(v136 + 32))(&v142[v141], v215, v237);
          sub_25BDAFA6C(0, 0, v226, &unk_25BDE3418, v142);

          KeyPath = swift_getKeyPath();
          (*(*v138 + 536))(KeyPath);

          v145 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
          swift_beginAccess();
          sub_25BDB39C4(v138 + v145, v251);
          v249 = v251[4];
          __swift_project_boxed_opaque_existential_0(v251, v251[3]);
          sub_25BDDF848();
          sub_25BDDF388();
          swift_allocObject();
          sub_25BDDF378();
          sub_25BDDD158(&qword_27FBDDA00, MEMORY[0x277D2B6D8], MEMORY[0x277D2B6E0]);
          v146 = v231;
          v200 = sub_25BDDF368();
          v202 = v201;

          sub_25BDDF9D8();
          sub_25BDA7298(v200, v202);
          (*(v221 + 8))(v228, v222);
          (*(v46 + 8))(v146, v45);
          return __swift_destroy_boxed_opaque_existential_0(v251);
        }

        else
        {
          v171 = v250;
          (*(v129 + 8))(v131, v133);
          v172 = sub_25BDB7ADC();
          v173 = v248;
          v174 = v249;
          v175 = v211;
          (*(v248 + 16))(v211, v172, v249);
          v176 = sub_25BDDF648();
          v177 = sub_25BDDFFC8();
          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            *v178 = 0;
            _os_log_impl(&dword_25BD8D000, v176, v177, "Can't handle dismiss promo action from non promo item", v178, 2u);
            MEMORY[0x25F87C8F0](v178, -1, -1);
          }

          (*(v173 + 8))(v175, v174);
          return (*(v127 + 8))(v231, v171);
        }
      }

      else if (v64 == *MEMORY[0x277D2B7C8])
      {
        v161 = sub_25BDDFF88();
        v162 = v226;
        (*(*(v161 - 8) + 56))(v226, 1, 1, v161);
        v163 = v220;
        v164 = v225;
        v165 = v227;
        (*(v220 + 16))(v225, v218, v227);
        sub_25BDDFF48();
        v166 = v245;

        v167 = sub_25BDDFF38();
        v168 = (*(v163 + 80) + 40) & ~*(v163 + 80);
        v169 = swift_allocObject();
        v170 = MEMORY[0x277D85700];
        *(v169 + 2) = v167;
        *(v169 + 3) = v170;
        *(v169 + 4) = v166;
        (*(v163 + 32))(&v169[v168], v164, v165);
        sub_25BDAFA6C(0, 0, v162, &unk_25BDE3408, v169);
      }

      else
      {
        v184 = sub_25BDB7ADC();
        v185 = v248;
        v186 = v212;
        (*(v248 + 16))(v212, v184, v249);
        v187 = v235;
        v188 = v204;
        v189 = v237;
        (*(v235 + 16))(v204, v236, v237);
        v190 = sub_25BDDF648();
        LODWORD(v250) = sub_25BDDFFE8();
        if (os_log_type_enabled(v190, v250))
        {
          v191 = v188;
          v192 = swift_slowAlloc();
          v246 = v192;
          v247 = swift_slowAlloc();
          v251[0] = v247;
          *v192 = 136315138;
          sub_25BDDFA68();
          v193 = sub_25BDDFE68();
          v195 = v194;
          (*(v187 + 8))(v191, v189);
          v196 = sub_25BDA6444(v193, v195, v251);

          v197 = v246;
          *(v246 + 1) = v196;
          v198 = v197;
          _os_log_impl(&dword_25BD8D000, v190, v250, "Not handling action: %s", v197, 0xCu);
          v199 = v247;
          __swift_destroy_boxed_opaque_existential_0(v247);
          MEMORY[0x25F87C8F0](v199, -1, -1);
          MEMORY[0x25F87C8F0](v198, -1, -1);

          (*(v185 + 8))(v212, v249);
        }

        else
        {

          (*(v187 + 8))(v188, v189);
          (*(v185 + 8))(v186, v249);
        }

        return (*(v60 + 8))(v63, v59);
      }
    }

    (*(v60 + 96))(v63, v59);
    v93 = v46;
    v94 = *(v46 + 32);
    v95 = v238;
    v96 = v45;
    v94(v238, v63, v45);
    sub_25BDDF808();
    v97 = v248;
    v98 = v249;
    v99 = v239;
    if (v100)
    {
      v101 = v234;
      sub_25BDDF3F8();

      v103 = v246;
      v102 = v247;
      if ((*(v246 + 6))(v101, 1, v247) != 1)
      {
        v147 = v223;
        (*(v103 + 4))(v223, v101, v102);
        (*(v245 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openPathHandler))(v147);
        (*(v103 + 1))(v147, v102);
        return (*(v93 + 8))(v95, v96);
      }

      sub_25BDA8554(v101, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    v104 = sub_25BDB7ADC();
    (*(v97 + 16))(v99, v104, v98);
    v105 = sub_25BDDF648();
    v106 = sub_25BDDFFC8();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_25BD8D000, v105, v106, "Can't open path. No url", v107, 2u);
      MEMORY[0x25F87C8F0](v107, -1, -1);
    }

    (*(v97 + 8))(v99, v98);
    return (*(v93 + 8))(v95, v96);
  }

  (*(v60 + 96))(v63, v59);
  v78 = v46;
  v79 = v63;
  v80 = v45;
  (*(v46 + 32))(v56, v79, v45);
  sub_25BDDF808();
  v81 = v248;
  v82 = v249;
  if (v83)
  {
    v250 = v45;
    v84 = v241;
    sub_25BDDF3F8();

    v86 = v246;
    v85 = v247;
    if ((*(v246 + 6))(v84, 1, v247) != 1)
    {
      v123 = v233;
      (*(v86 + 4))(v233, v84, v85);
      v124 = *(v245 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel_openAMSHandler);
      v125 = sub_25BDDF7F8();
      v126 = sub_25BDDF7E8();
      v124(v123, v125, v126);

      (*(v86 + 1))(v123, v85);
      return (*(v46 + 8))(v56, v250);
    }

    sub_25BDA8554(v84, &unk_27FBDD9A0, &unk_25BDE2670);
    v80 = v250;
  }

  v87 = sub_25BDB7ADC();
  v88 = v242;
  (*(v81 + 16))(v242, v87, v82);
  v89 = sub_25BDDF648();
  v90 = sub_25BDDFFC8();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_25BD8D000, v89, v90, "Can't launch AMS. No url", v91, 2u);
    MEMORY[0x25F87C8F0](v91, -1, -1);
  }

  (*(v81 + 8))(v88, v82);
  return (*(v78 + 8))(v56, v80);
}

uint64_t sub_25BDDAB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_25BDDF668();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_25BDDF6E8();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = sub_25BDDF6F8();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  sub_25BDDFF48();
  v6[16] = sub_25BDDFF38();
  v11 = sub_25BDDFF28();

  return MEMORY[0x2822009F8](sub_25BDDACF0, v11, v10);
}

uint64_t sub_25BDDACF0()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[3];

  v6 = *(*v4 + 192);
  v6(v5);
  v7 = *(v3 + 88);
  v8 = v7(v1, v2);
  v9 = v0[15];
  if (v8 == *MEMORY[0x277D2B668])
  {
    v10 = v8;
    v11 = v0[12];
    v48 = *(v0[13] + 96);
    v49 = v0[14];
    v12 = v48(v0[15], v11);
    v50 = *v9;
    v6(v12);
    v13 = v7(v49, v11);
    v14 = v0[12];
    if (v13 != v10)
    {
      (*(v0[13] + 8))(v0[14], v14);
LABEL_7:

      goto LABEL_8;
    }

    v15 = v50;
    v16 = v0[14];
    v17 = v0[4];
    v48(v16, v14);
    v18 = *v16;
    v19 = swift_task_alloc();
    *(v19 + 16) = v17;
    v20 = sub_25BDDBC08(sub_25BDDD084, v19, v18);
    v22 = v21;

    if (v22)
    {
      goto LABEL_7;
    }

    sub_25BDDFA78();
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = sub_25BDDBECC(v50);
      v15 = result;
      if ((v20 & 0x8000000000000000) == 0)
      {
LABEL_16:
        if (v20 < *(v15 + 16))
        {
          v36 = v15 + ((*(v0[10] + 80) + 32) & ~*(v0[10] + 80)) + *(v0[10] + 72) * v20;
          result = sub_25BDDF688();
          v0[2] = v15;
          if (v20 < *(v15 + 16))
          {
            v38 = v0[10];
            v37 = v0[11];
            v39 = v0[9];
            (*(v38 + 16))(v37, v36, v39);
            v40 = sub_25BDDF6B8();
            v41 = *(v38 + 8);
            v41(v37, v39);
            v42 = *(v40 + 16);

            if (!v42)
            {
              v44 = v0[11];
              v45 = v0[9];
              sub_25BDDB14C(v20, v44);
              v41(v44, v45);
            }

            v46 = v0[3];
            MEMORY[0x25F87BB50](v43, 0.15, 0.85, 0.25);
            v47 = swift_task_alloc();
            *(v47 + 16) = v46;
            *(v47 + 24) = v0 + 2;
            sub_25BDDFB88();

            goto LABEL_11;
          }

LABEL_24:
          __break(1u);
          return result;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  (*(v0[13] + 8))(v0[15], v0[12]);
LABEL_8:
  v24 = v0[7];
  v23 = v0[8];
  v25 = v0[6];
  v26 = sub_25BDB7ADC();
  (*(v24 + 16))(v23, v26, v25);
  v27 = sub_25BDDF648();
  v28 = sub_25BDDFFC8();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];
  if (v29)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_25BD8D000, v27, v28, "Can't handle dismiss promo action due to unknown section index", v33, 2u);
    MEMORY[0x25F87C8F0](v33, -1, -1);
  }

  (*(v31 + 8))(v30, v32);
LABEL_11:

  v34 = v0[1];

  return v34();
}

uint64_t sub_25BDDB14C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25BDDBECC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_25BDDF6E8();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25BDDB254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_25BDDF668();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_25BDDF6F8();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  sub_25BDDFF48();
  v5[12] = sub_25BDDFF38();
  v9 = sub_25BDDFF28();

  return MEMORY[0x2822009F8](sub_25BDDB3B0, v9, v8);
}

uint64_t sub_25BDDB3B0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[3];

  v6 = *(*v4 + 192);
  v6(v5);
  v7 = *(v3 + 88);
  v8 = v7(v1, v2);
  v9 = v0[11];
  if (v8 != *MEMORY[0x277D2B668])
  {
    (*(v0[9] + 8))(v0[11], v0[8]);
LABEL_8:
    v24 = v0[6];
    v23 = v0[7];
    v25 = v0[5];
    v26 = sub_25BDB7ADC();
    (*(v24 + 16))(v23, v26, v25);
    v27 = sub_25BDDF648();
    v28 = sub_25BDDFFC8();
    v29 = os_log_type_enabled(v27, v28);
    v31 = v0[6];
    v30 = v0[7];
    v32 = v0[5];
    if (v29)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_25BD8D000, v27, v28, "Can't handle expand section action due to unknown section index", v33, 2u);
      MEMORY[0x25F87C8F0](v33, -1, -1);
    }

    (*(v31 + 8))(v30, v32);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v0[8];
  v39 = *(v0[9] + 96);
  v40 = v0[10];
  v12 = v39(v0[11], v11);
  v41 = *v9;
  v6(v12);
  v13 = v7(v40, v11);
  v14 = v0[8];
  if (v13 != v10)
  {
    (*(v0[9] + 8))(v0[10], v14);
LABEL_7:

    goto LABEL_8;
  }

  v15 = v41;
  v16 = v0[10];
  v17 = v0[4];
  v39(v16, v14);
  v18 = *v16;
  v19 = swift_task_alloc();
  *(v19 + 16) = v17;
  v20 = sub_25BDDBC08(sub_25BDDD1B8, v19, v18);
  v22 = v21;

  if (v22)
  {
    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_25BDDBECC(v41);
  v15 = result;
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v20 >= *(v15 + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v36 = v0[3];
  sub_25BDDF6E8();
  v37 = sub_25BDDF678();
  v0[2] = v15;
  MEMORY[0x25F87BB50](v37, 0.15, 0.85, 0.25);
  v38 = swift_task_alloc();
  *(v38 + 16) = v36;
  *(v38 + 24) = v0 + 2;
  sub_25BDDFB88();

LABEL_11:

  v34 = v0[1];

  return v34();
}

uint64_t sub_25BDDB79C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_25BDDF6F8();
  MEMORY[0x28223BE20](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = *a2;
  (*(v7 + 104))(v6, *MEMORY[0x277D2B668]);
  v8 = *(*a1 + 200);

  return v8(v6);
}

uint64_t CoverageCentralViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__state;
  v2 = sub_25BDDF6F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_25BDA8554(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataDate, &qword_27FBDD298, &unk_25BDE2B20);
  sub_25BDA8554(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__appendSettingsNavigationPath, &qword_27FBDD2A0, &qword_25BDE2548);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider));

  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel___observationRegistrar;
  v4 = sub_25BDDF4C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CoverageCentralViewModel.__deallocating_deinit()
{
  CoverageCentralViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25BDDBB7C()
{
  v0 = sub_25BDDF6A8();
  v2 = v1;
  if (v0 == sub_25BDDF6A8() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25BDE01C8();
  }

  return v4 & 1;
}

uint64_t sub_25BDDBC08(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_25BDDF6E8() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void *sub_25BDDBCF4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDDA18, qword_25BDE34E8);
  v10 = *(sub_25BDDF6E8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25BDDF6E8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25BDDBEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF438();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD300, &qword_25BDE2758);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_25BDA84EC(a1, &v21 - v13, &qword_27FBDD298, &unk_25BDE2B20);
  sub_25BDA84EC(a2, &v14[v15], &qword_27FBDD298, &unk_25BDE2B20);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_25BDA84EC(v14, v10, &qword_27FBDD298, &unk_25BDE2B20);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_25BDDD158(&qword_27FBDD308, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v18 = sub_25BDDFE28();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_25BDA8554(v14, &qword_27FBDD298, &unk_25BDE2B20);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_25BDA8554(v14, &qword_27FBDD300, &qword_25BDE2758);
    v17 = 1;
    return v17 & 1;
  }

  sub_25BDA8554(v14, &qword_27FBDD298, &unk_25BDE2B20);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_25BDDC284(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF5D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2F0, &qword_25BDE2750);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_25BDA84EC(a1, &v21 - v13, &qword_27FBDD2A0, &qword_25BDE2548);
  sub_25BDA84EC(a2, &v14[v15], &qword_27FBDD2A0, &qword_25BDE2548);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_25BDA84EC(v14, v10, &qword_27FBDD2A0, &qword_25BDE2548);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_25BDDD158(&qword_27FBDD2F8, MEMORY[0x277D402D0], MEMORY[0x277D402D8]);
      v18 = sub_25BDDFE28();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_25BDA8554(v14, &qword_27FBDD2A0, &qword_25BDE2548);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_25BDA8554(v14, &qword_27FBDD2F0, &qword_25BDE2750);
    v17 = 1;
    return v17 & 1;
  }

  sub_25BDA8554(v14, &qword_27FBDD2A0, &qword_25BDE2548);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_25BDDC5E8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25BDB45AC;

  return sub_25BDD70C4(v3, v4, v5, v2);
}

uint64_t sub_25BDDC67C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25BDB45AC;

  return sub_25BDD72CC(v3, v4, v5, v2);
}

unint64_t sub_25BDDC73C()
{
  result = qword_27FBDD9F0;
  if (!qword_27FBDD9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD728, &unk_25BDE2E70);
    sub_25BDDD158(&qword_27FBDD9F8, MEMORY[0x277D2B648], MEMORY[0x277D2B650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD9F0);
  }

  return result;
}

uint64_t sub_25BDDC81C()
{
  v2 = *(sub_25BDDF6E8() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25BDB45AC;

  return sub_25BDDB254(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_25BDDC8F4()
{
  v2 = *(sub_25BDDF6E8() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_25BDDFA88() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_25BDAFE88;

  return sub_25BDDAB34(v8, v9, v10, v7, v0 + v3, v0 + v6);
}

uint64_t sub_25BDDCA28()
{
  v1 = *(v0 + 16);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 536))(KeyPath);

  v3 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);

  v4 = sub_25BDDF888();
  v6 = v5;
  v7 = sub_25BDDF7F8();
  v3(v4, v6, v7);

  return sub_25BDCBA3C();
}

void sub_25BDDCB44(uint64_t a1)
{
  sub_25BDDF6F8();
  if (v1 <= 0x3F)
  {
    sub_25BDB4218(319, &qword_27FBDD2E0, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_25BDB4218(319, &qword_27FBDD2E8, MEMORY[0x277D402D0]);
      if (v3 <= 0x3F)
      {
        sub_25BDDF4C8();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_25BDDCFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v7 = a3;
  v4(&v6, v8, &v7);
  return v6;
}

uint64_t sub_25BDDCFF8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__deviceWarrantyViewModelProvider);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_25BDDD044@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, a1[1], *a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BDDD0E0()
{
  v1 = *(v0 + 16);
  sub_25BDB39C4(*(v0 + 24), v4);
  v2 = OBJC_IVAR____TtC19NewDeviceOutreachUI24CoverageCentralViewModel__dataProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v2));
  sub_25BDB3938(v4, v1 + v2);
  return swift_endAccess();
}

uint64_t sub_25BDDD158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_25BDDD1E4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FBDE500 = result;
  return result;
}

uint64_t sub_25BDDD2D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25BDDF5F8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_27FBDE4F8 != -1)
  {
    swift_once();
  }

  v6 = qword_27FBDE500;
  return sub_25BDDF5E8();
}

uint64_t sub_25BDDD3BC()
{
  v0 = sub_25BDDF5F8();
  __swift_allocate_value_buffer(v0, qword_27FBDE568);
  __swift_project_value_buffer(v0, qword_27FBDE568);
  if (qword_27FBDE4F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27FBDE500;
  return sub_25BDDF5E8();
}

uint64_t sub_25BDDD488(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_25BDDF5F8();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_25BDDD500@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25BDDF5F8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}