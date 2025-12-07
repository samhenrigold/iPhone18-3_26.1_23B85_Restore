uint64_t sub_1BD24174C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1BE051F54();
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE051FA4();
  v14 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v31 = sub_1BE052D54();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  aBlock[4] = sub_1BD242F38;
  v35 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_61;
  v18 = _Block_copy(aBlock);
  v19 = v35;
  v20 = a2;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048964();
  v19, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD242ED4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v28 = v31;
  MEMORY[0x1BFB3FDF0](0, v16, v13, v18);
  _Block_release(v18);

  (*(v33 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v32);
}

void sub_1BD241A48(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    sub_1BE04D194();
    v14 = a1;
    sub_1BE048C84();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C34();
    a3, v17, v18, v19, v20, v21, v22, v23;

    if (os_log_type_enabled(v15, v16))
    {
      v24 = swift_slowAlloc();
      v42 = a2;
      v25 = v24;
      v26 = swift_slowAlloc();
      v43 = v9;
      v27 = v26;
      v28 = swift_slowAlloc();
      v44 = a5;
      v45[0] = v28;
      v29 = v28;
      *v25 = 136315394;
      *(v25 + 4) = sub_1BD123690(v42, a3, v45);
      *(v25 + 12) = 2112;
      v30 = a1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v31;
      *v27 = v31;
      _os_log_impl(&dword_1BD026000, v15, v16, "Failed to update account with identifier %s with error: %@", v25, 0x16u);
      sub_1BD0DE53C(v27, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29, v32, v33, v34, v35, v36, v37, v38);
      v39 = v29;
      a5 = v44;
      MEMORY[0x1BFB45F20](v39, -1, -1);
      MEMORY[0x1BFB45F20](v25, -1, -1);

      (*(v10 + 8))(v12, v43);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!a5)
    {
      v41 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
      Strong = v41;
    }
  }
}

uint64_t sub_1BD241CE4(char a1, void *a2, uint64_t (*a3)(double))
{
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return a3(v12);
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  aBlock[4] = sub_1BD242EA0;
  v29 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_38;
  v18 = _Block_copy(aBlock);
  v19 = v29;
  v20 = a2;
  v19, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD242ED4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v9, v18);
  _Block_release(v18);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD24200C()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v8 = sub_1BE052D54();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD242734;
  v20 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_35;
  v10 = _Block_copy(aBlock);
  v20, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD242ED4(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1BD2422D4(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v28 = sub_1BD24273C;
  v29 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1BD126964;
  v27 = &block_descriptor_19_1;
  v3 = _Block_copy(&aBlock);
  v29, v4, v5, v6, v7, v8, v9, v10;
  v11 = swift_allocObject();
  v12 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v28 = sub_1BD242744;
  v29 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1BD126964;
  v27 = &block_descriptor_23_1;
  v13 = _Block_copy(&aBlock);
  v29, v14, v15, v16, v17, v18, v19, v20;
  v21 = PKCreateAlertControllerForAppleAccountTopUpUnavailable(v3, v13);
  _Block_release(v13);
  _Block_release(v3);
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    [v22 presentViewController:v21 animated:1 completion:0];
  }
}

void sub_1BD2424C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_uiManager);

    sub_1BD713C50();
  }
}

void sub_1BD242530(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1BD242650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleBalanceDirectTopUpViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD242760(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_1BE052244();
  }

  else
  {
    v8 = 0;
  }

  sub_1BE048964();
  v9 = a4;
  v7(a2, v8, a4);
  v6, v10, v11, v12, v13, v14, v15, v16;

  v8, v17, v18, v19, v20, v21, v22, v23;
}

char *sub_1BD242814(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v126 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ECC0, &qword_1BE0C47D0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v124 - v15;
  v17 = type metadata accessor for AppleBalanceDirectTopUpView(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v124 - v22;
  *&v5[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_addItem] = 0;
  v24 = &v5[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_amount];
  *v24 = MEMORY[0x1BFB403C0](0, v21);
  *(v24 + 1) = v25;
  v124 = v24;
  *(v24 + 4) = v26;
  v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_biometricsUnavailable] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_account] = a1;
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_context] = a2;
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_uiManager] = a3;
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_dtuModel] = a4;
  v27 = objc_allocWithZone(type metadata accessor for AccountModel(0));
  v28 = a1;
  v29 = a3;
  v30 = a4;
  v31 = sub_1BD1DF0D8(v28, 0);
  v32 = v30;
  v127 = v31;
  sub_1BD33A180(a2, v127, v32, v23);
  v128 = v23;
  sub_1BD243118(v23, v19, v33);
  v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ECC8, &qword_1BE0C47D8));
  type metadata accessor for ObservableHostingController();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v34 + *((*MEMORY[0x1E69E7D40] & *v34) + class metadata base offset for WrapperHostingController + 16)) = v35;
  sub_1BD243118(v19, v16, v36);
  *&v16[*(v12 + 44)] = v35;
  sub_1BD24317C(v16, v125);
  sub_1BE048964();
  v37 = sub_1BE04F894();
  sub_1BD0DE53C(v16, &qword_1EBD3ECC0, &qword_1BE0C47D0);
  sub_1BD2431EC(v19, v38);
  v39 = v126;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC] = v37;
  *&v6[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_setupController] = v39;
  if (a2 == 3)
  {
    KeyPath = swift_getKeyPath();
    v129 = v32;
    sub_1BD242ED4(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel, &unk_1BE0F8478);
    v41 = v39;
    sub_1BE04B594();
    KeyPath, v42, v43, v44, v45, v46, v47, v48;
    v49 = *&v32[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion];
    if (v49 && (v50 = [v49 bonusMinAmount]) != 0 && (v129 = 0, v130 = 0, v131 = 0, v132 = 1, v51 = v50, sub_1BE0533E4(), v51, (v132 & 1) == 0))
    {
      v54 = v131;
      v52 = v129;
      v53 = v130;
    }

    else
    {
      v52 = MEMORY[0x1BFB403C0](0);
    }

    v55 = v124;
    *v124 = v52;
    v55[1] = v53;
    *(v55 + 4) = v54;
  }

  else
  {
    v41 = v39;
  }

  v56 = type metadata accessor for AppleBalanceDirectTopUpViewController();
  v133.receiver = v6;
  v133.super_class = v56;
  v57 = objc_msgSendSuper2(&v133, sel_initWithNibName_bundle_, 0, 0);
  v58 = OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC;
  v59 = *&v57[OBJC_IVAR____TtC9PassKitUI37AppleBalanceDirectTopUpViewController_hostingVC];
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = v57;
  v62 = v59;
  sub_1BE048964();
  v63 = sub_1BE04F8A4();
  v65 = *(v64 + 16);
  v66 = *(v64 + 24);
  *(v64 + 16) = sub_1BD243248;
  *(v64 + 24) = v60;
  sub_1BD0D4744(v65, v66, v67, v68, v69, v70, v71, v72);
  v63(&v129, 0);

  v60, v73, v74, v75, v76, v77, v78, v79;
  v80 = *&v57[v58];
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = v80;
  sub_1BE048964();
  v83 = sub_1BE04F8A4();
  v85 = *(v84 + 32);
  v86 = *(v84 + 40);
  *(v84 + 32) = sub_1BD243250;
  *(v84 + 40) = v81;
  sub_1BD0D4744(v85, v86, v87, v88, v89, v90, v91, v92);
  v83(&v129, 0);

  v81, v93, v94, v95, v96, v97, v98, v99;
  v100 = *&v57[v58];
  v101 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = v100;

  sub_1BE048964();
  v103 = sub_1BE04F8A4();
  v105 = *(v104 + 48);
  v106 = *(v104 + 56);
  *(v104 + 48) = sub_1BD243278;
  *(v104 + 56) = v101;
  sub_1BD0D4744(v105, v106, v107, v108, v109, v110, v111, v112);
  v103(&v129, 0);

  v101, v113, v114, v115, v116, v117, v118, v119;
  v120 = *&v57[v58];
  v121 = v61;
  [v121 addChildViewController_];
  [v121 setModalInPresentation_];

  sub_1BD2431EC(v128, v122);
  return v121;
}

uint64_t sub_1BD242ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD242F48(uint64_t a1, void *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    sub_1BE04D194();
    v8 = a2;
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      if (a2)
      {
        v13 = a2;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v11 + 4) = v14;
      *v12 = v15;
      _os_log_impl(&dword_1BD026000, v9, v10, "Gift card redemption purchase failed with error %@", v11, 0xCu);
      sub_1BD0DE53C(v12, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v12, -1, -1);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BD243118(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for AppleBalanceDirectTopUpView(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD24317C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ECC0, &qword_1BE0C47D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD2431EC(uint64_t a1, double a2)
{
  v3 = type metadata accessor for AppleBalanceDirectTopUpView(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1BD2432C0()
{
  v0 = objc_allocWithZone(PKDashboardMessageView);

  return [v0 init];
}

uint64_t sub_1BD2432F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2435B0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD24335C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2435B0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD2433C0(uint64_t a1)
{
  sub_1BD2435B0();
  sub_1BE04F964();
  __break(1u);
}

id sub_1BD2433E8()
{
  v0 = objc_allocWithZone(PKDashboardMessageActionView);

  return [v0 init];
}

double sub_1BD243420(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id a5)
{
  if (a2)
  {
    *&a1 = 0.0;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t sub_1BD243468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD243604();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD2434CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD243604();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD243530(uint64_t a1)
{
  sub_1BD243604();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD24355C()
{
  result = qword_1EBD3ECD0;
  if (!qword_1EBD3ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ECD0);
  }

  return result;
}

unint64_t sub_1BD2435B0()
{
  result = qword_1EBD3ECD8;
  if (!qword_1EBD3ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ECD8);
  }

  return result;
}

unint64_t sub_1BD243604()
{
  result = qword_1EBD3ECE0;
  if (!qword_1EBD3ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ECE0);
  }

  return result;
}

uint64_t type metadata accessor for DocumentsView(uint64_t a1)
{
  result = qword_1EBD3ECE8;
  if (!qword_1EBD3ECE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD2436F4(uint64_t a1)
{
  sub_1BD2437A8(319);
  if (v1 <= 0x3F)
  {
    sub_1BD24383C(319);
    if (v2 <= 0x3F)
    {
      sub_1BD2438D0(319);
      if (v3 <= 0x3F)
      {
        sub_1BD243964(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD2437A8(uint64_t a1)
{
  if (!qword_1EBD3ECF8)
  {
    type metadata accessor for SavingsStatementsModel(255);
    sub_1BD247874(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3ECF8);
    }
  }
}

void sub_1BD24383C(uint64_t a1)
{
  if (!qword_1EBD3ED00)
  {
    type metadata accessor for TaxFormsModel(255);
    sub_1BD247874(&qword_1EBD3B320, type metadata accessor for TaxFormsModel, &unk_1BE0F01A8);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3ED00);
    }
  }
}

void sub_1BD2438D0(uint64_t a1)
{
  if (!qword_1EBD3ED08)
  {
    type metadata accessor for DeviceAuthenticationModel(255);
    sub_1BD247874(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3ED08);
    }
  }
}

void sub_1BD243964(uint64_t a1)
{
  if (!qword_1EBD3E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3E9B0);
    }
  }
}

id sub_1BD2439E4@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v69 - v2;
  v81 = type metadata accessor for DocumentsView(0);
  v89 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v90 = v3;
  v84 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04F434();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED10, &qword_1BE0C4A58);
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED18, &qword_1BE0C4A60);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v69 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED20, &qword_1BE0C4A68);
  MEMORY[0x1EEE9AC00](v69);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED28, &qword_1BE0C4A70);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v74 = &v69 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED30, &qword_1BE0C4A78);
  MEMORY[0x1EEE9AC00](v73);
  v80 = &v69 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED38, &qword_1BE0C4A80);
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v69 - v20;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED40, &qword_1BE0C4A88);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v69 - v21;
  v71 = v1;
  v91 = v1;
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED48, &qword_1BE0C4A90);
  sub_1BD247350();
  sub_1BE0504E4();
  (*(v8 + 104))(v10, *MEMORY[0x1E69B80E0], v7);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    (*(v8 + 8))(v10, v22);
    v92 = v25;
    v93 = v27;
    v29 = v77;
    v28 = v78;
    (*(v77 + 104))(v6, *MEMORY[0x1E697C438], v78);
    sub_1BD0DE4F4(&qword_1EBD3ED68, &qword_1EBD3ED10, &qword_1BE0C4A58, MEMORY[0x1E697CD20]);
    sub_1BD0DDEBC();
    v30 = v72;
    sub_1BE050C94();
    (*(v29 + 8))(v6, v28);
    v27, v31, v32, v33, v34, v35, v36, v37;
    (*(v70 + 8))(v13, v11);
    v81 = *(v81 + 28);
    v38 = &v16[*(v69 + 36)];
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    v39 = v71;
    sub_1BE0516C4();
    v40 = v39;
    v41 = v84;
    sub_1BD247B90(v39, v84, type metadata accessor for DocumentsView);
    v42 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v89 = *(v89 + 80);
    v43 = swift_allocObject();
    sub_1BD247B28(v41, v43 + v42, type metadata accessor for DocumentsView);
    (*(v75 + 32))(v16, v30, v76);
    v44 = &v38[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
    *v44 = sub_1BD247414;
    v44[1] = v43;
    v45 = v74;
    sub_1BD0DE204(v16, v74, &qword_1EBD3ED20, &qword_1BE0C4A68);
    sub_1BD247B90(v39, v41, type metadata accessor for DocumentsView);
    v46 = swift_allocObject();
    sub_1BD247B28(v41, v46 + v42, type metadata accessor for DocumentsView);
    v47 = v80;
    sub_1BD0DE204(v45, v80, &qword_1EBD3ED28, &qword_1BE0C4A70);
    v48 = (v47 + *(v73 + 36));
    *v48 = sub_1BD24742C;
    v48[1] = v46;
    v48[2] = 0;
    v48[3] = 0;
    v49 = v40;
    swift_beginAccess();
    v50 = v79;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0, &qword_1BE0CB0E0);
    v51 = v82;
    sub_1BE04D884();
    swift_endAccess();
    sub_1BD247B90(v49, v41, type metadata accessor for DocumentsView);
    v52 = swift_allocObject();
    sub_1BD247B28(v41, v52 + v42, type metadata accessor for DocumentsView);
    sub_1BD0DE204(v47, v51, &qword_1EBD3ED30, &qword_1BE0C4A78);
    v53 = (v51 + *(v50 + 56));
    *v53 = sub_1BD24751C;
    v53[1] = v52;
    v54 = v49;
    swift_beginAccess();
    v55 = v83;
    v56 = v85;
    sub_1BE04D884();
    swift_endAccess();
    v57 = v54;
    sub_1BD247B90(v54, v41, type metadata accessor for DocumentsView);
    v58 = swift_allocObject();
    sub_1BD247B28(v41, v58 + v42, type metadata accessor for DocumentsView);
    sub_1BD0DE204(v51, v56, &qword_1EBD3ED38, &qword_1BE0C4A80);
    v59 = (v56 + *(v55 + 56));
    *v59 = sub_1BD248098;
    v59[1] = v58;
    v60 = v88;
    sub_1BE0516A4();
    sub_1BD247B90(v57, v41, type metadata accessor for DocumentsView);
    v61 = swift_allocObject();
    sub_1BD247B28(v41, v61 + v42, type metadata accessor for DocumentsView);
    sub_1BD0DE4F4(&qword_1EBD3ED70, &qword_1EBD3ED40, &qword_1BE0C4A88, MEMORY[0x1E697C278]);
    sub_1BD2477C0();
    sub_1BE051074();
    v61, v62, v63, v64, v65, v66, v67, v68;
    sub_1BD0DE53C(v60, &qword_1EBD416C0, &unk_1BE0BC2A0);
    return sub_1BD0DE53C(v56, &qword_1EBD3ED40, &qword_1BE0C4A88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2444B4(uint64_t a1)
{
  sub_1BD244900(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED60, &qword_1BE0C4A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD0DE4F4(&qword_1EBD3ED58, &qword_1EBD3ED60, &qword_1BE0C4A98, MEMORY[0x1E6981F48]);
  sub_1BD12E194();
  return sub_1BE051A54();
}

uint64_t sub_1BD244594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED88, &qword_1BE0C4B30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v74 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED90, &qword_1BE0C4B38);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v74 - v14);
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  sub_1BE04D8B4(&v75);
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v17, v25, v26, v27, v28, v29, v30, v31;
  v39 = v75;
  if (v75 >> 62)
  {
    v72 = v75;
    v40 = sub_1BE053704();
    v39 = v72;
  }

  else
  {
    v40 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39, v32, v33, v34, v35, v36, v37, v38;
  *v15 = sub_1BE051CD4();
  v15[1] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ED98, &qword_1BE0C4B88);
  sub_1BD2454CC(a1, v40 > 0, v15 + *(v42 + 44));
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  sub_1BE04D8B4(&v75);
  v43, v45, v46, v47, v48, v49, v50, v51;
  v44, v52, v53, v54, v55, v56, v57, v58;
  v66 = v75;
  if (v75 >> 62)
  {
    v73 = v75;
    v67 = sub_1BE053704();
    v66 = v73;
  }

  else
  {
    v67 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66, v59, v60, v61, v62, v63, v64, v65;
  *v9 = sub_1BE051CD4();
  v9[1] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDA0, &qword_1BE0C4BD8);
  sub_1BD246408(a1, v67 > 0, v9 + *(v69 + 44));
  sub_1BD0DE19C(v15, v12, &qword_1EBD3ED90, &qword_1BE0C4B38);
  sub_1BD0DE19C(v9, v6, &qword_1EBD3ED88, &qword_1BE0C4B30);
  sub_1BD0DE19C(v12, a2, &qword_1EBD3ED90, &qword_1BE0C4B38);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDA8, &qword_1BE0C4BE0);
  sub_1BD0DE19C(v6, a2 + *(v70 + 48), &qword_1EBD3ED88, &qword_1BE0C4B30);
  sub_1BD0DE53C(v9, &qword_1EBD3ED88, &qword_1BE0C4B30);
  sub_1BD0DE53C(v15, &qword_1EBD3ED90, &qword_1BE0C4B38);
  sub_1BD0DE53C(v6, &qword_1EBD3ED88, &qword_1BE0C4B30);
  return sub_1BD0DE53C(v12, &qword_1EBD3ED90, &qword_1BE0C4B38);
}

id sub_1BD244900@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(a1 + 8) + OBJC_IVAR____TtC9PassKitUI22SavingsStatementsModel_accounts);
  v39 = v8;
  v40 = v7;
  v9 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    goto LABEL_31;
  }

  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_1BE048C84();
  v18 = 0;
  do
  {
    if (v10 == v18)
    {
      v6, v11, v12, v13, v14, v15, v16, v17;
      v6 = *(*(a1 + 24) + OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accounts);
      if (v6 >> 62)
      {
        a1 = sub_1BE053704();
      }

      else
      {
        a1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1BE048C84();
      v22 = 0;
      while (a1 != v22)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1BFB40900](v22, v6);
        }

        else
        {
          if (v22 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v23 = *(v6 + 8 * v22 + 32);
        }

        v24 = v23;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_29;
        }

        v25 = [v23 state];

        ++v22;
        if (v25 == 4)
        {
          goto LABEL_23;
        }
      }

      v6, v11, v12, v13, v14, v15, v16, v17;
      result = 0;
      v33 = 0;
      v36 = 0;
      v34 = 0;
      goto LABEL_26;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1BFB40900](v18, v6);
    }

    else
    {
      if (v18 >= *(v9 + 16))
      {
        goto LABEL_28;
      }

      v19 = *(v6 + 8 * v18 + 32);
    }

    v20 = v19;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v10 = sub_1BE053704();
      goto LABEL_3;
    }

    v21 = [v19 state];

    ++v18;
  }

  while (v21 != 4);
LABEL_23:
  v6, v11, v12, v13, v14, v15, v16, v17;
  v27 = v39;
  v26 = v40;
  (*(v39 + 104))(v5, *MEMORY[0x1E69B80E0], v40);
  result = PKPassKitBundle();
  if (result)
  {
    v29 = result;
    v30 = sub_1BE04B6F4();
    v32 = v31;

    (*(v27 + 8))(v5, v26);
    v42 = v30;
    v43 = v32;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    v36 = v35 & 1;
LABEL_26:
    v37 = v41;
    *v41 = result;
    v37[1] = v33;
    v37[2] = v36;
    v37[3] = v34;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD244C0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for FeatureError(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DocumentsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  sub_1BE0516A4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1BD0DE53C(v2, &qword_1EBD416C0, &unk_1BE0BC2A0);
  }

  sub_1BD247B28(v2, v6, type metadata accessor for FeatureError);
  sub_1BD2F50D4(v6);
  sub_1BD6D2170(v6);
  return sub_1BD230994(v6);
}

uint64_t sub_1BD244DB0(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21[0] = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = type metadata accessor for FeatureError(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v18 = *(v15 + 48);
  if (v18(v13, 1, v14) == 1)
  {
    v19 = v13;
  }

  else
  {
    sub_1BD247B28(v13, v17, type metadata accessor for FeatureError);
    type metadata accessor for DocumentsView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
    sub_1BE0516A4();
    if (v18(v10, 1, v14) == 1)
    {
      sub_1BD0DE53C(v10, &qword_1EBD416C0, &unk_1BE0BC2A0);
      sub_1BD247B90(v17, v7, type metadata accessor for FeatureError);
      (*(v15 + 56))(v7, 0, 1, v14);
      sub_1BD0DE19C(v7, v21[0], &qword_1EBD416C0, &unk_1BE0BC2A0);
      sub_1BE0516B4();
      sub_1BD0DE53C(v7, &qword_1EBD416C0, &unk_1BE0BC2A0);
      return sub_1BD230994(v17);
    }

    sub_1BD230994(v17);
    v19 = v10;
  }

  return sub_1BD0DE53C(v19, &qword_1EBD416C0, &unk_1BE0BC2A0);
}

uint64_t sub_1BD2450C0(uint64_t a1)
{
  v1 = type metadata accessor for FeatureError(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v59 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v58 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v19 = *(type metadata accessor for DocumentsView(0) + 28);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  v62 = v19;
  sub_1BE0516A4();
  v65 = v2;
  v20 = *(v2 + 48);
  v21 = v20(v18, 1, v1);
  result = sub_1BD0DE53C(v18, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v21 == 1)
  {
    KeyPath = swift_getKeyPath();
    v24 = swift_getKeyPath();
    sub_1BE04D8B4(v15);
    KeyPath, v25, v26, v27, v28, v29, v30, v31;
    v24, v32, v33, v34, v35, v36, v37, v38;
    if (v20(v15, 1, v1) == 1)
    {
      sub_1BD0DE53C(v15, &qword_1EBD416C0, &unk_1BE0BC2A0);
      v39 = swift_getKeyPath();
      v40 = swift_getKeyPath();
      sub_1BE04D8B4(v12);
      v39, v41, v42, v43, v44, v45, v46, v47;
      v40, v48, v49, v50, v51, v52, v53, v54;
      if (v20(v12, 1, v1) == 1)
      {
        return sub_1BD0DE53C(v12, &qword_1EBD416C0, &unk_1BE0BC2A0);
      }

      v55 = v12;
      v56 = v59;
    }

    else
    {
      v55 = v15;
      v56 = v60;
    }

    sub_1BD247B28(v55, v56, type metadata accessor for FeatureError);
    v57 = v64;
    sub_1BD247B90(v56, v64, type metadata accessor for FeatureError);
    (*(v65 + 56))(v57, 0, 1, v1);
    sub_1BD0DE19C(v57, v63, &qword_1EBD416C0, &unk_1BE0BC2A0);
    sub_1BE0516B4();
    sub_1BD0DE53C(v57, &qword_1EBD416C0, &unk_1BE0BC2A0);
    return sub_1BD230994(v56);
  }

  return result;
}

uint64_t sub_1BD2454CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v62 = a3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE68, &qword_1BE0C4CB0);
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v54 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE70, &qword_1BE0C4CB8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v53 - v9;
  v58 = sub_1BE04FF64();
  v55 = *(v58 - 1);
  MEMORY[0x1EEE9AC00](v58);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDC0, &qword_1BE0C4BF8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDC8, &qword_1BE0C4C00);
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDD0, &qword_1BE0C4C08);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v59 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  *v14 = sub_1BE04F504();
  *(v14 + 1) = 0;
  v23 = 1;
  v14[16] = 1;
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDD8, &qword_1BE0C4C10) + 44)];
  v53 = a1;
  sub_1BD245B88(a1, v3, v24);
  sub_1BE04FF44();
  v25 = sub_1BD0DE4F4(&qword_1EBD3EDE0, &qword_1EBD3EDC0, &qword_1BE0C4BF8, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v55 + 8))(v11, v58);
  sub_1BD0DE53C(v14, &qword_1EBD3EDC0, &qword_1BE0C4BF8);
  sub_1BE052434();
  v27 = v26;
  v65 = v12;
  v66 = v25;
  swift_getOpaqueTypeConformance2();
  v58 = v22;
  v28 = v57;
  sub_1BE050DE4();
  v27, v29, v30, v31, v32, v33, v34, v35;
  (*(v56 + 8))(v17, v28);
  if (v3)
  {
    type metadata accessor for SavingsStatementsModel(0);
    sub_1BD247874(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
    v36 = sub_1BE04EEC4();
    v38 = v37;
    v39 = *(v53 + 8);
    v40 = sub_1BE04D804();
    type metadata accessor for DeviceAuthenticationModel(0);
    sub_1BD247874(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
    v41 = v39;
    v42 = sub_1BE04E3C4();
    v43 = sub_1BE04D804();
    v65 = v36;
    v66 = v38;
    v67 = v40;
    v68 = v39;
    v69 = v43;
    v70 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE80, &unk_1BE0E6170);
    sub_1BD247ED4();
    v44 = v54;
    sub_1BE04E8B4();
    v45 = v64;
    *(v44 + *(v63 + 36)) = 0;
    sub_1BD0DE204(v44, v45, &qword_1EBD3EE68, &qword_1BE0C4CB0);
    v23 = 0;
  }

  v46 = v64;
  (*(v60 + 56))(v64, v23, 1, v63);
  v48 = v58;
  v47 = v59;
  sub_1BD0DE19C(v58, v59, &qword_1EBD3EDD0, &qword_1BE0C4C08);
  v49 = v61;
  sub_1BD0DE19C(v46, v61, &qword_1EBD3EE70, &qword_1BE0C4CB8);
  v50 = v62;
  sub_1BD0DE19C(v47, v62, &qword_1EBD3EDD0, &qword_1BE0C4C08);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE78, &qword_1BE0C4CC0);
  sub_1BD0DE19C(v49, v50 + *(v51 + 48), &qword_1EBD3EE70, &qword_1BE0C4CB8);
  sub_1BD0DE53C(v46, &qword_1EBD3EE70, &qword_1BE0C4CB8);
  sub_1BD0DE53C(v48, &qword_1EBD3EDD0, &qword_1BE0C4C08);
  sub_1BD0DE53C(v49, &qword_1EBD3EE70, &qword_1BE0C4CB8);
  return sub_1BD0DE53C(v47, &qword_1EBD3EDD0, &qword_1BE0C4C08);
}

void sub_1BD245B88(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v126 = a2;
  v127 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE38, &qword_1BE0C4C40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v117 - v8);
  v10 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x1E69B80E0], v11, v13);
  v16 = PKPassKitBundle();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v12 + 8))(v15, v11);
    v128[0] = v18;
    v128[1] = v20;
    sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v121 = v22;
    v122 = v21;
    v120 = v23;
    v123 = v24;
    sub_1BE04F604();
    sub_1BE04F5F4();
    KeyPath = swift_getKeyPath();
    v26 = swift_getKeyPath();
    sub_1BE04D8B4(v128);
    KeyPath, v27, v28, v29, v30, v31, v32, v33;
    v26, v34, v35, v36, v37, v38, v39, v40;
    v48 = v128[0];
    v124 = v9;
    v125 = v6;
    if (v128[0] >> 62)
    {
      v116 = v128[0];
      v49 = sub_1BE053704();
      v48 = v116;
    }

    else
    {
      v49 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48, v41, v42, v43, v44, v45, v46, v47;
    v128[0] = v49;
    sub_1BE04F5C4();
    sub_1BE04F5F4();
    sub_1BE04F634();
    v50 = sub_1BE050694();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = sub_1BE051234();
    v58 = sub_1BE050564();
    v60 = v59;
    v118 = v59;
    v119 = v61;
    v63 = v62;
    v57, v59, v62, v61, v64, v65, v66, v67;
    sub_1BD0DDF10(v50, v52, (v54 & 1), v68, v69, v70, v71, v72);
    v56, v73, v74, v75, v76, v77, v78, v79;
    v80 = sub_1BE051CD4();
    v81 = v124;
    *v124 = v80;
    *(v81 + 8) = v82;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE40, &qword_1BE0C4C48);
    sub_1BD246080(v126 & 1, v81 + *(v83 + 44));
    LOBYTE(v57) = v120 & 1;
    LOBYTE(v128[0]) = v120 & 1;
    v84 = v125;
    sub_1BD0DE19C(v81, v125, &qword_1EBD3EE38, &qword_1BE0C4C40);
    v86 = v121;
    v85 = v122;
    *a3 = v122;
    *(a3 + 8) = v86;
    *(a3 + 16) = v57;
    v87 = v123;
    *(a3 + 24) = v123;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = v58;
    *(a3 + 56) = v60;
    v88 = (v63 & 1);
    *(a3 + 64) = v88;
    v89 = v119;
    *(a3 + 72) = v119;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE48, &qword_1BE0C4C50);
    sub_1BD0DE19C(v84, a3 + *(v90 + 80), &qword_1EBD3EE38, &qword_1BE0C4C40);
    sub_1BD0D7F18(v85, v86, v57);
    sub_1BE048C84();
    v91 = v118;
    sub_1BD0D7F18(v58, v118, v88);
    sub_1BE048C84();
    sub_1BD0DE53C(v81, &qword_1EBD3EE38, &qword_1BE0C4C40);
    sub_1BD0DE53C(v84, &qword_1EBD3EE38, &qword_1BE0C4C40);
    sub_1BD0DDF10(v58, v91, v88, v92, v93, v94, v95, v96);
    v89, v97, v98, v99, v100, v101, v102, v103;
    sub_1BD0DDF10(v85, v86, LOBYTE(v128[0]), v104, v105, v106, v107, v108);
    v87, v109, v110, v111, v112, v113, v114, v115;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD246080@<X0>(int a2@<W1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v53 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE50, &qword_1BE0C4C58);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  v50 = sub_1BE04C744();
  v9 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2D8, &unk_1BE0BC460);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  sub_1BE04D8B4(&v54);
  KeyPath, v21, v22, v23, v24, v25, v26, v27;
  v20, v28, v29, v30, v31, v32, v33, v34;
  LOBYTE(v20) = v54;
  (*(v9 + 104))(v11, *MEMORY[0x1E69BC950], v50);
  sub_1BE04C724();
  v18[*(v13 + 44)] = v20 & 1 | ((v51 & 1) == 0);
  sub_1BE04E4F4();
  v35 = sub_1BE050204();
  sub_1BE04E1F4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE58, &unk_1BE0F8CF0) + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v8[*(v4 + 44)] = (v20 & 1) == 0;
  sub_1BD0DE19C(v18, v15, &qword_1EBD3B2D8, &unk_1BE0BC460);
  v45 = v52;
  sub_1BD0DE19C(v8, v52, &qword_1EBD3EE50, &qword_1BE0C4C58);
  v46 = v53;
  sub_1BD0DE19C(v15, v53, &qword_1EBD3B2D8, &unk_1BE0BC460);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE60, &qword_1BE0C4CA8);
  sub_1BD0DE19C(v45, v46 + *(v47 + 48), &qword_1EBD3EE50, &qword_1BE0C4C58);
  sub_1BD0DE53C(v8, &qword_1EBD3EE50, &qword_1BE0C4C58);
  sub_1BD0DE53C(v18, &qword_1EBD3B2D8, &unk_1BE0BC460);
  sub_1BD0DE53C(v45, &qword_1EBD3EE50, &qword_1BE0C4C58);
  return sub_1BD0DE53C(v15, &qword_1EBD3B2D8, &unk_1BE0BC460);
}

uint64_t sub_1BD246408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v62 = a3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDB0, &qword_1BE0C4BE8);
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v54 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDB8, &qword_1BE0C4BF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v53 - v9;
  v58 = sub_1BE04FF64();
  v55 = *(v58 - 1);
  MEMORY[0x1EEE9AC00](v58);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDC0, &qword_1BE0C4BF8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDC8, &qword_1BE0C4C00);
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDD0, &qword_1BE0C4C08);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v59 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  *v14 = sub_1BE04F504();
  *(v14 + 1) = 0;
  v23 = 1;
  v14[16] = 1;
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDD8, &qword_1BE0C4C10) + 44)];
  v53 = a1;
  sub_1BD246AC4(a1, v3, v24);
  sub_1BE04FF44();
  v25 = sub_1BD0DE4F4(&qword_1EBD3EDE0, &qword_1EBD3EDC0, &qword_1BE0C4BF8, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v55 + 8))(v11, v58);
  sub_1BD0DE53C(v14, &qword_1EBD3EDC0, &qword_1BE0C4BF8);
  sub_1BE052434();
  v27 = v26;
  v65 = v12;
  v66 = v25;
  swift_getOpaqueTypeConformance2();
  v58 = v22;
  v28 = v57;
  sub_1BE050DE4();
  v27, v29, v30, v31, v32, v33, v34, v35;
  (*(v56 + 8))(v17, v28);
  if (v3)
  {
    type metadata accessor for TaxFormsModel(0);
    sub_1BD247874(&qword_1EBD3B320, type metadata accessor for TaxFormsModel, &unk_1BE0F01A8);
    v36 = sub_1BE04EEC4();
    v38 = v37;
    v39 = *(v53 + 24);
    v40 = sub_1BE04D804();
    type metadata accessor for DeviceAuthenticationModel(0);
    sub_1BD247874(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
    v41 = v39;
    v42 = sub_1BE04E3C4();
    v43 = sub_1BE04D804();
    v65 = v36;
    v66 = v38;
    v67 = v40;
    v68 = v39;
    v69 = v43;
    v70 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDF0, &qword_1BE0C4C20);
    sub_1BD247D10();
    v44 = v54;
    sub_1BE04E8B4();
    v45 = v64;
    *(v44 + *(v63 + 36)) = 0;
    sub_1BD0DE204(v44, v45, &qword_1EBD3EDB0, &qword_1BE0C4BE8);
    v23 = 0;
  }

  v46 = v64;
  (*(v60 + 56))(v64, v23, 1, v63);
  v48 = v58;
  v47 = v59;
  sub_1BD0DE19C(v58, v59, &qword_1EBD3EDD0, &qword_1BE0C4C08);
  v49 = v61;
  sub_1BD0DE19C(v46, v61, &qword_1EBD3EDB8, &qword_1BE0C4BF0);
  v50 = v62;
  sub_1BD0DE19C(v47, v62, &qword_1EBD3EDD0, &qword_1BE0C4C08);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EDE8, &qword_1BE0C4C18);
  sub_1BD0DE19C(v49, v50 + *(v51 + 48), &qword_1EBD3EDB8, &qword_1BE0C4BF0);
  sub_1BD0DE53C(v46, &qword_1EBD3EDB8, &qword_1BE0C4BF0);
  sub_1BD0DE53C(v48, &qword_1EBD3EDD0, &qword_1BE0C4C08);
  sub_1BD0DE53C(v49, &qword_1EBD3EDB8, &qword_1BE0C4BF0);
  return sub_1BD0DE53C(v47, &qword_1EBD3EDD0, &qword_1BE0C4C08);
}

void sub_1BD246AC4(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v126 = a2;
  v127 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE38, &qword_1BE0C4C40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v117 - v8);
  v10 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x1E69B80E0], v11, v13);
  v16 = PKPassKitBundle();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v12 + 8))(v15, v11);
    v128[0] = v18;
    v128[1] = v20;
    sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v121 = v22;
    v122 = v21;
    v120 = v23;
    v123 = v24;
    sub_1BE04F604();
    sub_1BE04F5F4();
    KeyPath = swift_getKeyPath();
    v26 = swift_getKeyPath();
    sub_1BE04D8B4(v128);
    KeyPath, v27, v28, v29, v30, v31, v32, v33;
    v26, v34, v35, v36, v37, v38, v39, v40;
    v48 = v128[0];
    v124 = v9;
    v125 = v6;
    if (v128[0] >> 62)
    {
      v116 = v128[0];
      v49 = sub_1BE053704();
      v48 = v116;
    }

    else
    {
      v49 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48, v41, v42, v43, v44, v45, v46, v47;
    v128[0] = v49;
    sub_1BE04F5C4();
    sub_1BE04F5F4();
    sub_1BE04F634();
    v50 = sub_1BE050694();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = sub_1BE051234();
    v58 = sub_1BE050564();
    v60 = v59;
    v118 = v59;
    v119 = v61;
    v63 = v62;
    v57, v59, v62, v61, v64, v65, v66, v67;
    sub_1BD0DDF10(v50, v52, (v54 & 1), v68, v69, v70, v71, v72);
    v56, v73, v74, v75, v76, v77, v78, v79;
    v80 = sub_1BE051CD4();
    v81 = v124;
    *v124 = v80;
    *(v81 + 8) = v82;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE40, &qword_1BE0C4C48);
    sub_1BD246FBC(v126 & 1, v81 + *(v83 + 44));
    LOBYTE(v57) = v120 & 1;
    LOBYTE(v128[0]) = v120 & 1;
    v84 = v125;
    sub_1BD0DE19C(v81, v125, &qword_1EBD3EE38, &qword_1BE0C4C40);
    v86 = v121;
    v85 = v122;
    *a3 = v122;
    *(a3 + 8) = v86;
    *(a3 + 16) = v57;
    v87 = v123;
    *(a3 + 24) = v123;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = v58;
    *(a3 + 56) = v60;
    v88 = (v63 & 1);
    *(a3 + 64) = v88;
    v89 = v119;
    *(a3 + 72) = v119;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE48, &qword_1BE0C4C50);
    sub_1BD0DE19C(v84, a3 + *(v90 + 80), &qword_1EBD3EE38, &qword_1BE0C4C40);
    sub_1BD0D7F18(v85, v86, v57);
    sub_1BE048C84();
    v91 = v118;
    sub_1BD0D7F18(v58, v118, v88);
    sub_1BE048C84();
    sub_1BD0DE53C(v81, &qword_1EBD3EE38, &qword_1BE0C4C40);
    sub_1BD0DE53C(v84, &qword_1EBD3EE38, &qword_1BE0C4C40);
    sub_1BD0DDF10(v58, v91, v88, v92, v93, v94, v95, v96);
    v89, v97, v98, v99, v100, v101, v102, v103;
    sub_1BD0DDF10(v85, v86, LOBYTE(v128[0]), v104, v105, v106, v107, v108);
    v87, v109, v110, v111, v112, v113, v114, v115;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD246FBC@<X0>(int a2@<W1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v53 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE50, &qword_1BE0C4C58);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  v50 = sub_1BE04C744();
  v9 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2D8, &unk_1BE0BC460);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  sub_1BE04D8B4(&v54);
  KeyPath, v21, v22, v23, v24, v25, v26, v27;
  v20, v28, v29, v30, v31, v32, v33, v34;
  LOBYTE(v20) = v54;
  (*(v9 + 104))(v11, *MEMORY[0x1E69BC950], v50);
  sub_1BE04C724();
  v18[*(v13 + 44)] = v20 & 1 | ((v51 & 1) == 0);
  sub_1BE04E4F4();
  v35 = sub_1BE050204();
  sub_1BE04E1F4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE58, &unk_1BE0F8CF0) + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v8[*(v4 + 44)] = (v20 & 1) == 0;
  sub_1BD0DE19C(v18, v15, &qword_1EBD3B2D8, &unk_1BE0BC460);
  v45 = v52;
  sub_1BD0DE19C(v8, v52, &qword_1EBD3EE50, &qword_1BE0C4C58);
  v46 = v53;
  sub_1BD0DE19C(v15, v53, &qword_1EBD3B2D8, &unk_1BE0BC460);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE60, &qword_1BE0C4CA8);
  sub_1BD0DE19C(v45, v46 + *(v47 + 48), &qword_1EBD3EE50, &qword_1BE0C4C58);
  sub_1BD0DE53C(v8, &qword_1EBD3EE50, &qword_1BE0C4C58);
  sub_1BD0DE53C(v18, &qword_1EBD3B2D8, &unk_1BE0BC460);
  sub_1BD0DE53C(v45, &qword_1EBD3EE50, &qword_1BE0C4C58);
  return sub_1BD0DE53C(v15, &qword_1EBD3B2D8, &unk_1BE0BC460);
}

unint64_t sub_1BD247350()
{
  result = qword_1EBD3ED50;
  if (!qword_1EBD3ED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ED48, &qword_1BE0C4A90);
    sub_1BD0DE4F4(&qword_1EBD3ED58, &qword_1EBD3ED60, &qword_1BE0C4A98, MEMORY[0x1E6981F48]);
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ED50);
  }

  return result;
}

uint64_t sub_1BD24742C()
{
  v1 = *(type metadata accessor for DocumentsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 8)) + 0x170))();
  return (*((*v3 & **(v2 + 24)) + 0x170))(v4);
}

uint64_t objectdestroyTm_15()
{
  v1 = (type metadata accessor for DocumentsView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1BD185AB4(*(v2 + 32), *(v2 + 40));
  v3 = (v2 + v1[9]);
  v4 = type metadata accessor for FeatureError(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v4 + 20);
    v6 = sub_1BE04B824();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  *(v3 + *(v8 + 28)), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD24774C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DocumentsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD2477C0()
{
  result = qword_1EBD3ED78;
  if (!qword_1EBD3ED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
    sub_1BD247874(&qword_1EBD3ED80, type metadata accessor for FeatureError, &protocol conformance descriptor for FeatureError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ED78);
  }

  return result;
}

uint64_t sub_1BD247874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1BD247970@<D0>(void *a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(a4);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;

  v6, v14, v15, v16, v17, v18, v19, v20;
  return result;
}

uint64_t sub_1BD2479FC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1BD0DE19C(a1, &v17 - v12, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v13, v10, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v15 = v14;
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
}

uint64_t sub_1BD247B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD247B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BD247C14(_BYTE *a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v21);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  *a4 = v21;
}

uint64_t sub_1BD247CA4(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_1BE04D8C4();
}

unint64_t sub_1BD247D10()
{
  result = qword_1EBD3EDF8;
  if (!qword_1EBD3EDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EDF0, &qword_1BE0C4C20);
    sub_1BD247DC8();
    sub_1BD0DE4F4(&qword_1EBD3EE28, &qword_1EBD3EE30, &qword_1BE0C4C38, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EDF8);
  }

  return result;
}

unint64_t sub_1BD247DC8()
{
  result = qword_1EBD3EE00;
  if (!qword_1EBD3EE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EE08, &qword_1BE0C4C28);
    sub_1BD247E80();
    sub_1BD0DE4F4(&qword_1EBD3EE18, &qword_1EBD3EE20, &qword_1BE0C4C30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EE00);
  }

  return result;
}

unint64_t sub_1BD247E80()
{
  result = qword_1EBD3EE10;
  if (!qword_1EBD3EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EE10);
  }

  return result;
}

unint64_t sub_1BD247ED4()
{
  result = qword_1EBD3EE88;
  if (!qword_1EBD3EE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EE80, &unk_1BE0E6170);
    sub_1BD247F8C();
    sub_1BD0DE4F4(&qword_1EBD3EE28, &qword_1EBD3EE30, &qword_1BE0C4C38, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EE88);
  }

  return result;
}

unint64_t sub_1BD247F8C()
{
  result = qword_1EBD3EE90;
  if (!qword_1EBD3EE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EE98, &qword_1BE0C4CC8);
    sub_1BD248044();
    sub_1BD0DE4F4(&qword_1EBD3EEA8, &qword_1EBD3EEB0, &unk_1BE0E6180, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EE90);
  }

  return result;
}

unint64_t sub_1BD248044()
{
  result = qword_1EBD3EEA0;
  if (!qword_1EBD3EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EEA0);
  }

  return result;
}

id sub_1BD2480AC()
{
  v1 = *v0;
  v2 = objc_allocWithZone(PKNavigationController);

  return [v2 initWithRootViewController_];
}

id sub_1BD2480F4@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1BD248100()
{
  sub_1BE053D04();
  sub_1BE053084();
  return sub_1BE053D64();
}

uint64_t sub_1BD248168(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE053084();
  return sub_1BE053D64();
}

uint64_t sub_1BD2481A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2483E4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD24820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2483E4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD248270(uint64_t a1)
{
  sub_1BD2483E4();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD2482E0()
{
  result = qword_1EBD3EEB8;
  if (!qword_1EBD3EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EEB8);
  }

  return result;
}

unint64_t sub_1BD248338()
{
  result = qword_1EBD3EEC0;
  if (!qword_1EBD3EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EEC0);
  }

  return result;
}

unint64_t sub_1BD248390()
{
  result = qword_1EBD3EEC8;
  if (!qword_1EBD3EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EEC8);
  }

  return result;
}

unint64_t sub_1BD2483E4()
{
  result = qword_1EBD3EED0;
  if (!qword_1EBD3EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EED0);
  }

  return result;
}

uint64_t sub_1BD248438@<X0>(uint64_t a2@<X8>)
{
  v10[1] = a2;
  v2 = type metadata accessor for CloseButton.NavigationCircularButtonStyle(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49860, &unk_1BE0C4F70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1BE048964();
  sub_1BE051704();
  type metadata accessor for CloseButton(0);
  sub_1BD70A078(v4);
  *(v4 + *(v2 + 20)) = 0x4046000000000000;
  sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860, &unk_1BE0C4F70, MEMORY[0x1E697D680]);
  sub_1BD249838(&qword_1EBD3EF18, type metadata accessor for CloseButton.NavigationCircularButtonStyle, &unk_1BE0C5088);
  sub_1BE0508A4();
  sub_1BD249CE0(v4, type metadata accessor for CloseButton.NavigationCircularButtonStyle);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BD248674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v115 = sub_1BE051DC4();
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1BE04E354();
  v119 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF50, &qword_1BE0C50C0);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v94 - v5;
  v114 = sub_1BE04EB24();
  v104 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v102 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF58, &qword_1BE0C50C8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v94 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF60, &qword_1BE0C50D0);
  v10 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v12 = &v94 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF68, &qword_1BE0C50D8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v94 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF70, &qword_1BE0C50E0);
  MEMORY[0x1EEE9AC00](v95);
  v18 = &v94 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF78, &qword_1BE0C50E8);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v96 = &v94 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF80, &qword_1BE0C50F0) - 8;
  MEMORY[0x1EEE9AC00](v98);
  v21 = &v94 - v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF88, &qword_1BE0C50F8);
  MEMORY[0x1EEE9AC00](v103);
  v107 = &v94 - v22;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF90, &qword_1BE0C5100);
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v94 - v23;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF98, &qword_1BE0C5108);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v94 - v24;
  sub_1BE04FE14();
  v25 = sub_1BE050324();
  KeyPath = swift_getKeyPath();
  v27 = &v9[*(v7 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_1BE050384();
  sub_1BD24A110();
  sub_1BE050854();
  sub_1BD24A1F8(v9);
  v101 = objc_opt_self();
  v28 = [v101 labelColor];
  v29 = sub_1BE0511C4();
  sub_1BE04FE24();
  v30 = sub_1BE051454();
  v29, v31, v32, v33, v34, v35, v36, v37;
  (*(v10 + 32))(v16, v12, v97);
  *&v16[*(v14 + 44)] = v30;
  v38 = &v18[*(v95 + 36)];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFB0, &qword_1BE0F32E0) + 28);
  v40 = *MEMORY[0x1E69816C0];
  v41 = sub_1BE0515D4();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = swift_getKeyPath();
  sub_1BD0DE204(v16, v18, &qword_1EBD3EF68, &qword_1BE0C50D8);
  v42 = v104;
  v43 = v102;
  v44 = v114;
  (*(v104 + 13))(v102, *MEMORY[0x1E697E6E8], v114);
  sub_1BD24A260();
  v45 = v96;
  sub_1BE050B24();
  (*(v42 + 8))(v43, v44);
  sub_1BD056C98(v18);
  type metadata accessor for CloseButton.NavigationCircularButtonStyle(0);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  (*(v99 + 32))(v21, v45, v100);
  v46 = *(v98 + 44);
  v104 = v21;
  v47 = &v21[v46];
  v48 = v121;
  *v47 = v120;
  *(v47 + 1) = v48;
  *(v47 + 2) = v122;
  v49 = sub_1BE051424();
  v114 = a1;
  v50 = sub_1BE04FE24();
  v51 = *MEMORY[0x1E697DBA8];
  if (v50)
  {
    v52 = v118;
    v53 = v119;
    v54 = v117;
    (*(v119 + 104))(v118, *MEMORY[0x1E697DBA8], v117, 0.0);
    sub_1BE04E344();
    (*(v53 + 8))(v52, v54);
  }

  v100 = sub_1BE051454();
  v49, v55, v56, v57, v58, v59, v60, v61;
  v62 = v119;
  v102 = *(v119 + 104);
  v63 = v117;
  v64 = v118;
  (v102)(v118, v51, v117);
  v65 = sub_1BE04E344();
  v66 = *(v62 + 8);
  v66(v64, v63);
  LODWORD(v119) = v51;
  v68 = v112;
  v67 = v113;
  v69 = MEMORY[0x1E6981DB8];
  if ((v65 & 1) == 0)
  {
    v69 = MEMORY[0x1E6981DA0];
  }

  v70 = v115;
  (*(v113 + 104))(v112, *v69, v115);
  v71 = v111;
  (*(v67 + 32))(&v111[*(v110 + 36)], v68, v70);
  *v71 = v100;
  v72 = v107;
  v73 = &v107[*(v103 + 36)];
  sub_1BD24A40C(v71, v73);
  *(v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFD0, &qword_1BE0C5188) + 56)) = 256;
  sub_1BD0DE204(v104, v72, &qword_1EBD3EF80, &qword_1BE0C50F0);
  (v102)(v64, v119, v63);
  LOBYTE(v71) = sub_1BE04E344();
  v66(v64, v63);
  v74 = &selRef_quaternarySystemFillColor;
  if ((v71 & 1) == 0)
  {
    v74 = &selRef__vibrantLightFillDarkeningColor;
  }

  v75 = [v101 *v74];
  v76 = sub_1BE0511C4();
  v77 = v108;
  sub_1BD0DE204(v72, v108, &qword_1EBD3EF88, &qword_1BE0C50F8);
  v78 = v77 + *(v105 + 36);
  *v78 = v76;
  *(v78 + 8) = 256;
  if (sub_1BE04FE24())
  {
    v79 = 1.375;
  }

  else
  {
    v79 = 1.0;
  }

  sub_1BE051EA4();
  v81 = v80;
  v83 = v82;
  v84 = v109;
  sub_1BD0DE204(v77, v109, &qword_1EBD3EF90, &qword_1BE0C5100);
  v85 = v84 + *(v106 + 36);
  *v85 = v79;
  *(v85 + 8) = v79;
  *(v85 + 16) = v81;
  *(v85 + 24) = v83;
  v86 = sub_1BE04FE24();
  v87.n128_u64[0] = 0x3FE55810624DD2F2;
  if ((v86 & 1) == 0)
  {
    v87.n128_f64[0] = 0.333;
  }

  v88 = MEMORY[0x1BFB3EDF0](0.35, v87, 0.0);
  v89 = sub_1BE04FE24();
  v90 = v84;
  v91 = v116;
  sub_1BD0DE204(v90, v116, &qword_1EBD3EF98, &qword_1BE0C5108);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFD8, &qword_1BE0C5190);
  v93 = v91 + *(result + 36);
  *v93 = v88;
  *(v93 + 8) = v89 & 1;
  return result;
}

uint64_t sub_1BD249240(uint64_t a1)
{
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF00, &qword_1BE0C4F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF08, &qword_1BE0C4F68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49860, &unk_1BE0C4F70);
  type metadata accessor for CloseButton.NavigationCircularButtonStyle(255);
  sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860, &unk_1BE0C4F70, MEMORY[0x1E697D680]);
  sub_1BD249838(&qword_1EBD3EF18, type metadata accessor for CloseButton.NavigationCircularButtonStyle, &unk_1BE0C5088);
  swift_getOpaqueTypeConformance2();
  sub_1BD24977C();
  return sub_1BE051C74();
}

id sub_1BD2494A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _CloseButton.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD249538(uint64_t a1)
{
  result = type metadata accessor for CloseButton(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1BD249610(uint64_t a1)
{
  sub_1BD1030A8();
  if (v1 <= 0x3F)
  {
    sub_1BD249694(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD249694(uint64_t a1)
{
  if (!qword_1EBD393A8)
  {
    sub_1BE04E354();
    v1 = sub_1BE04E3A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD393A8);
    }
  }
}

uint64_t sub_1BD249710@<X0>(uint64_t a1@<X8>)
{
  sub_1BD2498A0(*(v1 + 16), a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF08, &qword_1BE0C4F68);
  *(a1 + *(result + 36)) = 257;
  return result;
}

unint64_t sub_1BD24977C()
{
  result = qword_1EBD36860;
  if (!qword_1EBD36860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF08, &qword_1BE0C4F68);
    sub_1BD249838(&qword_1EBD365B8, type metadata accessor for _CloseButton, &unk_1BE0C5038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36860);
  }

  return result;
}

uint64_t sub_1BD249838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD2498A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BD249904()
{
  v0 = [objc_opt_self() buttonWithType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFE0, &qword_1BE0C5198);
  sub_1BE04FF74();
  [v0 addTarget:v2 action:sel_doAction_ forControlEvents:64];

  return v0;
}

void sub_1BD2499A8()
{
  v1 = v0;
  v2 = type metadata accessor for CloseButton(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFE0, &qword_1BE0C5198);
  sub_1BE04FF74();
  v5 = v8;
  sub_1BD2498A0(v1, v4);
  v6 = OBJC_IVAR____TtCV9PassKitUIP33_B35F9F0AABC5170B961BBCB25164B78512_CloseButton11Coordinator_configuration;
  swift_beginAccess();
  sub_1BD24A47C(v4, v5 + v6);
  swift_endAccess();
}

uint64_t sub_1BD249A80@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for CloseButton(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD2498A0(v1, v5);
  v6 = type metadata accessor for _CloseButton.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1BD2498A0(v5, v7 + OBJC_IVAR____TtCV9PassKitUIP33_B35F9F0AABC5170B961BBCB25164B78512_CloseButton11Coordinator_configuration);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1BD249CE0(v5, type metadata accessor for CloseButton);
  *a1 = v8;
  return result;
}

uint64_t sub_1BD249B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD249838(&unk_1EBD365C0, type metadata accessor for _CloseButton, &unk_1BE0C4FA8);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD249BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD249838(&unk_1EBD365C0, type metadata accessor for _CloseButton, &unk_1BE0C4FA8);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD249C88(uint64_t a1)
{
  sub_1BD249838(&unk_1EBD365C0, type metadata accessor for _CloseButton, &unk_1BE0C4FA8);
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD249CE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD249D68(uint64_t a1)
{
  result = type metadata accessor for CloseButton(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1BD249EE0(uint64_t a1)
{
  result = sub_1BE04E354();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD249F54()
{
  result = qword_1EBD3EF40;
  if (!qword_1EBD3EF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF48, &qword_1BE0C4FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49860, &unk_1BE0C4F70);
    type metadata accessor for CloseButton.NavigationCircularButtonStyle(255);
    sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860, &unk_1BE0C4F70, MEMORY[0x1E697D680]);
    sub_1BD249838(&qword_1EBD3EF18, type metadata accessor for CloseButton.NavigationCircularButtonStyle, &unk_1BE0C5088);
    swift_getOpaqueTypeConformance2();
    sub_1BD24977C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EF40);
  }

  return result;
}

unint64_t sub_1BD24A110()
{
  result = qword_1EBD3EFA0;
  if (!qword_1EBD3EFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF58, &qword_1BE0C50C8);
    sub_1BD249838(&qword_1EBD3EFA8, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFA0);
  }

  return result;
}

uint64_t sub_1BD24A1F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF58, &qword_1BE0C50C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD24A260()
{
  result = qword_1EBD3EFB8;
  if (!qword_1EBD3EFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF70, &qword_1BE0C50E0);
    sub_1BD24A318();
    sub_1BD0DE4F4(&qword_1EBD3EFC8, &qword_1EBD3EFB0, &qword_1BE0F32E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFB8);
  }

  return result;
}

unint64_t sub_1BD24A318()
{
  result = qword_1EBD3EFC0;
  if (!qword_1EBD3EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF68, &qword_1BE0C50D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF58, &qword_1BE0C50C8);
    sub_1BD24A110();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFC0);
  }

  return result;
}

uint64_t sub_1BD24A40C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EF50, &qword_1BE0C50C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD24A47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButton(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD24A4E0()
{
  result = qword_1EBD3EFE8;
  if (!qword_1EBD3EFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EFD8, &qword_1BE0C5190);
    sub_1BD24A598();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFE8);
  }

  return result;
}

unint64_t sub_1BD24A598()
{
  result = qword_1EBD3EFF0;
  if (!qword_1EBD3EFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF98, &qword_1BE0C5108);
    sub_1BD24A624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFF0);
  }

  return result;
}

unint64_t sub_1BD24A624()
{
  result = qword_1EBD3EFF8;
  if (!qword_1EBD3EFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF90, &qword_1BE0C5100);
    sub_1BD24A6DC();
    sub_1BD0DE4F4(&qword_1EBD3F018, &qword_1EBD3F020, &qword_1BE0C51A0, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3EFF8);
  }

  return result;
}

unint64_t sub_1BD24A6DC()
{
  result = qword_1EBD3F000;
  if (!qword_1EBD3F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF88, &qword_1BE0C50F8);
    sub_1BD24A794();
    sub_1BD0DE4F4(&qword_1EBD3F010, &qword_1EBD3EFD0, &qword_1BE0C5188, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F000);
  }

  return result;
}

unint64_t sub_1BD24A794()
{
  result = qword_1EBD3F008;
  if (!qword_1EBD3F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF80, &qword_1BE0C50F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3EF70, &qword_1BE0C50E0);
    sub_1BD24A260();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F008);
  }

  return result;
}

void sub_1BD24A91C(uint64_t (*a1)(void, double), void (*a2)(void), void (*a3)(void))
{
  v7 = v3;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BD026000, v12, v13, "startAuthenticatorEvaluation", v14, 2u);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  v15 = (*(v9 + 8))(v11, v8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = a1(0, v16);
  *(&v144 - 2) = v17;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v144 - 2) = v17;
  v19 = swift_getKeyPath();
  sub_1BE04D8B4(&v145);
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  v19, v27, v28, v29, v30, v31, v32, v33;
  v34 = v145;
  LOBYTE(v19) = sub_1BE04CA64();
  v34, v35, v36, v37, v38, v39, v40, v41;
  if (v19)
  {
    MEMORY[0x1EEE9AC00](v42);
    *(&v144 - 2) = v17;
    v43 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v43);
    *(&v144 - 2) = v17;
    v44 = swift_getKeyPath();
    sub_1BE04D8B4(&v145);
    v43, v45, v46, v47, v48, v49, v50, v51;
    v44, v52, v53, v54, v55, v56, v57, v58;
    v59 = v145;
    LOBYTE(v44) = sub_1BE04CB34();
    v59, v60, v61, v62, v63, v64, v65, v66;
    if (v44)
    {
      a2();
      return;
    }
  }

  MEMORY[0x1EEE9AC00](v42);
  *(&v144 - 2) = v17;
  v67 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v67);
  *(&v144 - 2) = v17;
  v68 = swift_getKeyPath();
  sub_1BE04D8B4(&v145);
  v67, v69, v70, v71, v72, v73, v74, v75;
  v68, v76, v77, v78, v79, v80, v81, v82;
  v83 = v145;
  LOBYTE(v68) = sub_1BE04CA44();
  v83, v84, v85, v86, v87, v88, v89, v90;
  MEMORY[0x1EEE9AC00](v91);
  *(&v144 - 2) = v17;
  v92 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v92);
  *(&v144 - 2) = v17;
  v93 = swift_getKeyPath();
  v94 = &v145;
  if (v68)
  {
    sub_1BE04D8B4(&v145);
    v92, v95, v96, v97, v98, v99, v100, v101;
    v93, v102, v103, v104, v105, v106, v107, v108;
    v109 = v145;
    a3 = sub_1BE04C984();
    v109, v110, v111, v112, v113, v114, v115, v116;
    v93 = MEMORY[0x1E69E7D40];
    v92 = *(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x70));
    if ((a3 & 1) == 0)
    {
      [*&v92[OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator] fallbackToSystemPasscodeUI];
      return;
    }

    sub_1BD7F2C38();
    v7 = *(v7 + *((*v93 & *v7) + 0xD0));
    v117 = [v7 paymentRequest];
    if (v117)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  sub_1BE04D8B4(v94);
  v92, v118, v119, v120, v121, v122, v123, v124;
  v93, v125, v126, v127, v128, v129, v130, v131;
  v132 = v145;
  v133 = sub_1BE04C984();
  v132, v134, v135, v136, v137, v138, v139, v140;
  if ((v133 & 1) == 0)
  {
    a3();
    return;
  }

  v141 = MEMORY[0x1E69E7D40];
  sub_1BD7F2C38();
  v7 = *(v7 + *((*v141 & *v7) + 0xD0));
  v117 = [v7 paymentRequest];
  if (!v117)
  {
    __break(1u);
    return;
  }

LABEL_12:
  v142 = v117;
  if ([v117 _isAMPPayment])
  {
    v143 = [v7 mode];

    if (v143 == 1)
    {
      [v7 fallbackToBypassMode];
    }
  }

  else
  {
  }
}

void sub_1BD24AEE4(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE04CDA4();
  sub_1BD2512E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a2 + 32) = sub_1BE04EEC4();
  *(a2 + 40) = v4;
  v43[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F028, &qword_1BE0C51A8);
  sub_1BE051694();
  v5 = *(&v44[0] + 1);
  *(a2 + 56) = v44[0];
  *(a2 + 64) = v5;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_1BD0DE19C(v44, v43, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(v44, &qword_1EBD51EC0, &qword_1BE0B7120);
  *(a2 + 120) = sub_1BD24B1AC;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 152) = 0;
  *(a2 + 160) = 0x4052800000000000;
  *(a2 + 48) = a1;
  type metadata accessor for IdentityAuthorizationModel(0);
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = a1;
  sub_1BE04D8B4(v44);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v7, v16, v17, v18, v19, v20, v21, v22;
  sub_1BD2512E0(&qword_1EBD3F030, type metadata accessor for IdentityAuthorizationModel, MEMORY[0x1E69BCA10]);
  *a2 = sub_1BE04E954();
  *(a2 + 8) = v23;
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  sub_1BE04D8B4(v44);
  v24, v26, v27, v28, v29, v30, v31, v32;
  v25, v33, v34, v35, v36, v37, v38, v39;
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD2512E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v40 = sub_1BE04E954();
  v42 = v41;

  *(a2 + 16) = v40;
  *(a2 + 24) = v42;
}

uint64_t sub_1BD24B1AC()
{
  type metadata accessor for KeyboardObserver(0);
  swift_allocObject();
  return sub_1BD4D8F0C();
}

uint64_t sub_1BD24B1E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v315 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F038, &qword_1BE0C5408);
  v313 = *(v3 - 8);
  v314 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v312 = &v286 - v4;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F040, &qword_1BE0C5410);
  MEMORY[0x1EEE9AC00](v310);
  v311 = &v286 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F048, &qword_1BE0C5418);
  v308 = *(v6 - 8);
  v309 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v318 = &v286 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F050, &qword_1BE0C5420);
  v306 = *(v8 - 8);
  v307 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v286 - v9;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37180, &qword_1BE0B11A0);
  MEMORY[0x1EEE9AC00](v317);
  v316 = &v286 - v11;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F058, &qword_1BE0C5428);
  MEMORY[0x1EEE9AC00](v300);
  v303 = (&v286 - v12);
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F060, &qword_1BE0C5430);
  MEMORY[0x1EEE9AC00](v298);
  v299 = &v286 - v13;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F068, &qword_1BE0C5438);
  MEMORY[0x1EEE9AC00](v296);
  v297 = &v286 - v14;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F070, &qword_1BE0C5440);
  v302 = *(*(v288 - 8) + 64);
  MEMORY[0x1EEE9AC00](v288);
  v295 = &v286 - v15;
  v16 = *(v1 + 24);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000, &qword_1BE0BA2B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v286 - v18;
  v320 = v16;
  sub_1BE04CB14();
  v20 = sub_1BE04CB04();
  LODWORD(v16) = (*(*(v20 - 8) + 48))(v19, 1, v20);
  sub_1BD0DE53C(v19, &unk_1EBD52000, &qword_1BE0BA2B0);
  v305 = v10;
  sub_1BD250A68(v2, &v349);
  v21 = swift_allocObject();
  v22 = v358;
  *(v21 + 144) = v357;
  *(v21 + 160) = v22;
  *(v21 + 176) = v359;
  v23 = v354;
  *(v21 + 80) = v353;
  *(v21 + 96) = v23;
  v24 = v356;
  *(v21 + 112) = v355;
  *(v21 + 128) = v24;
  v25 = v350;
  *(v21 + 16) = v349;
  *(v21 + 32) = v25;
  v26 = v352;
  *(v21 + 48) = v351;
  *(v21 + 64) = v26;
  if (v16 == 1)
  {
    v27 = sub_1BD251498;
  }

  else
  {
    v27 = sub_1BD2510B4;
  }

  v293 = v27;
  v304 = *(v2 + 8);
  v28 = sub_1BE04C8C4();
  v291 = v29;
  v292 = v28;
  v30 = sub_1BE04CAE4();
  if (sub_1BE051C54())
  {
    v31 = 10.0;
  }

  else
  {
    v31 = 18.0;
  }

  v290 = v30 & 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F078, &qword_1BE0C5448);
  v294 = &v286;
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v286 - v33;
  sub_1BD250A68(v2, &v349);
  v35 = swift_allocObject();
  v36 = v358;
  *(v35 + 144) = v357;
  *(v35 + 160) = v36;
  *(v35 + 176) = v359;
  v37 = v354;
  *(v35 + 80) = v353;
  *(v35 + 96) = v37;
  v38 = v356;
  *(v35 + 112) = v355;
  *(v35 + 128) = v38;
  v39 = v350;
  *(v35 + 16) = v349;
  *(v35 + 32) = v39;
  v40 = v352;
  *(v35 + 48) = v351;
  *(v35 + 64) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F080, &qword_1BE0C5450);
  sub_1BD0DE4F4(&qword_1EBD3F088, &qword_1EBD3F080, &qword_1BE0C5450, MEMORY[0x1E6981F48]);
  sub_1BE04C664();
  v41 = sub_1BE04E8A4();
  v42 = *(v41 - 8);
  v319 = v2;
  v43 = v42;
  v44 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = sub_1BE04E894();
  v47 = MEMORY[0x1EEE9AC00](v46);
  (*(v43 + 16))(&v286 - v45, &v286 - v45, v41, v47);
  sub_1BD2512E0(&unk_1EBD36878, MEMORY[0x1E697E410], MEMORY[0x1E697E408]);
  v48 = sub_1BE04E644();
  (*(v43 + 8))(&v286 - v45, v41);
  v49 = v319;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F090, &qword_1BE0C5458);
  v51 = *(v50 + 36);
  v287 = v34;
  *&v34[v51] = v48;
  (*(*(v50 - 8) + 56))(v34, 0, 1, v50);
  sub_1BD24CC08(&v321);
  v346 = v327;
  v347 = v328;
  v348 = v329;
  v342 = v323;
  v343 = v324;
  v344 = v325;
  v345 = v326;
  v340 = v321;
  v341 = v322;
  v52 = *(v49 + 48);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4B8, &qword_1BE0C12B8);
  v338 = sub_1BD0DE4F4(&qword_1EBD3F098, &qword_1EBD3D4B8, &qword_1BE0C12B8, &unk_1BE0D59B8);
  *&v335 = v52;
  sub_1BD250A68(v49, &v349);
  v53 = swift_allocObject();
  v289 = &v286;
  *(v53 + 176) = v359;
  v54 = v358;
  *(v53 + 144) = v357;
  *(v53 + 160) = v54;
  v55 = v354;
  *(v53 + 80) = v353;
  *(v53 + 96) = v55;
  v56 = v356;
  *(v53 + 112) = v355;
  *(v53 + 128) = v56;
  v57 = v350;
  *(v53 + 16) = v349;
  *(v53 + 32) = v57;
  v58 = v352;
  *(v53 + 48) = v351;
  *(v53 + 64) = v58;
  MEMORY[0x1EEE9AC00](v53);
  v60 = &v286 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v288;
  v62 = &v60[*(v288 + 104)];
  v63 = sub_1BD250AA8();
  v64 = sub_1BD2512E0(&qword_1EBD35E40, sub_1BD250AA8, &protocol conformance descriptor for PKPaymentSheetExperiment);
  sub_1BE048964();
  v65 = v52;
  v301 = v64;
  v302 = v63;
  v66 = v287;
  *v62 = sub_1BE04EEC4();
  v62[1] = v67;
  v68 = &v60[v61[27]];
  sub_1BE04CDA4();
  sub_1BD2512E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *v68 = sub_1BE04EEC4();
  v68[1] = v69;
  v70 = &v60[v61[28]];
  LOBYTE(v334[0]) = 0;
  sub_1BE051694();
  v71 = *(&v349 + 1);
  *v70 = v349;
  *(v70 + 1) = v71;
  v72 = &v60[v61[29]];
  *v72 = swift_getKeyPath();
  v72[8] = 0;
  v73 = v291;
  *v60 = v292;
  *(v60 + 1) = v73;
  *(v60 + 2) = 0;
  *(v60 + 3) = 0xE000000000000000;
  *(v60 + 4) = v293;
  *(v60 + 5) = v21;
  v60[48] = v290;
  *(v60 + 13) = *&v339[3];
  *(v60 + 49) = *v339;
  *(v60 + 7) = sub_1BD24E154;
  *(v60 + 8) = 0;
  *(v60 + 9) = 0x4032000000000000;
  *(v60 + 10) = v31;
  *(v60 + 88) = xmmword_1BE0B7110;
  sub_1BD0DE19C(v66, &v60[v61[17]], &qword_1EBD3F078, &qword_1BE0C5448);
  v74 = &v60[v61[18]];
  v75 = v347;
  *(v74 + 6) = v346;
  *(v74 + 7) = v75;
  *(v74 + 8) = v348;
  v76 = v343;
  *(v74 + 2) = v342;
  *(v74 + 3) = v76;
  v77 = v345;
  *(v74 + 4) = v344;
  *(v74 + 5) = v77;
  v78 = v341;
  *v74 = v340;
  *(v74 + 1) = v78;
  *&v60[v61[19]] = 0;
  v60[v61[20]] = 0;
  *&v60[v61[21]] = v320;
  sub_1BD0EE8CC(&v335, &v60[v61[22]]);
  v60[v61[23]] = 1;
  v79 = &v60[v61[25]];
  *v79 = sub_1BD251498;
  *(v79 + 1) = v53;
  sub_1BD0EE8CC(&v335, v334);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998, &unk_1BE0F7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0, &unk_1BE0B74C0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v332, &v349);
    v80 = *(&v350 + 1);
    v81 = v351;
    __swift_project_boxed_opaque_existential_1(&v349, *(&v350 + 1));
    (*(v81 + 56))(v334, v80, v81);
    sub_1BD0DE53C(v66, &qword_1EBD3F078, &qword_1BE0C5448);
    __swift_destroy_boxed_opaque_existential_0(&v335, v82, v83, v84, v85, v86, v87, v88);
    v60[v61[24]] = v334[0];
    __swift_destroy_boxed_opaque_existential_0(&v349, v89, v90, v91, v92, v93, v94, v95);
  }

  else
  {
    sub_1BD0DE53C(v66, &qword_1EBD3F078, &qword_1BE0C5448);
    __swift_destroy_boxed_opaque_existential_0(&v335, v96, v97, v98, v99, v100, v101, v102);
    v333 = 0;
    memset(v332, 0, sizeof(v332));
    sub_1BD0DE53C(v332, &qword_1EBD389A0, &qword_1BE0F7D40);
    v60[v61[24]] = 2;
  }

  v103 = v295;
  sub_1BD0DE204(v60, v295, &qword_1EBD3F070, &qword_1BE0C5440);
  v104 = v319;
  v105 = *(v319 + 32);
  v106 = v316;
  if (v105)
  {
    sub_1BE048964();
    sub_1BE04CD14();
    v105, v107, v108, v109, v110, v111, v112, v113;
    v114 = sub_1BE051D94();
    v115 = v297;
    v116 = &v297[*(v296 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A0, &qword_1BE0C5490);
    sub_1BE04CB14();
    *v116 = v114;
    sub_1BD0DE204(v103, v115, &qword_1EBD3F070, &qword_1BE0C5440);
    sub_1BE048964();
    sub_1BE04CD14();
    v105, v117, v118, v119, v120, v121, v122, v123;
    v124 = sub_1BE051D94();
    v125 = sub_1BE04CB54();
    v126 = v299;
    sub_1BD0DE19C(v115, v299, &qword_1EBD3F068, &qword_1BE0C5438);
    v127 = v126 + *(v298 + 36);
    *v127 = v124;
    *(v127 + 8) = v125 & 1;
    sub_1BD0DE53C(v115, &qword_1EBD3F068, &qword_1BE0C5438);
    sub_1BE048964();
    sub_1BE04CD14();
    v105, v128, v129, v130, v131, v132, v133, v134;
    v135 = sub_1BE051D94();
    type metadata accessor for KeyboardObserver(0);
    sub_1BD2512E0(&qword_1EBD36500, type metadata accessor for KeyboardObserver, &unk_1BE0DB430);
    v136 = sub_1BE04E3C4();
    KeyPath = swift_getKeyPath();
    v138 = swift_getKeyPath();
    sub_1BE04D8B4(&v349);
    KeyPath, v139, v140, v141, v142, v143, v144, v145;
    v138, v146, v147, v148, v149, v150, v151, v152;
    v136, v153, v154, v155, v156, v157, v158, v159;
    v160 = v349;
    LOBYTE(KeyPath) = BYTE8(v349);
    v161 = v303;
    sub_1BD0DE204(v126, v303, &qword_1EBD3F060, &qword_1BE0C5430);
    v162 = v161 + *(v300 + 9);
    *v162 = v135;
    *(v162 + 8) = v160;
    *(v162 + 16) = KeyPath;
    sub_1BD250A68(v104, &v349);
    v163 = swift_allocObject();
    v164 = v358;
    *(v163 + 144) = v357;
    *(v163 + 160) = v164;
    *(v163 + 176) = v359;
    v165 = v354;
    *(v163 + 80) = v353;
    *(v163 + 96) = v165;
    v166 = v356;
    *(v163 + 112) = v355;
    *(v163 + 128) = v166;
    v167 = v350;
    *(v163 + 16) = v349;
    *(v163 + 32) = v167;
    v168 = v352;
    *(v163 + 48) = v351;
    *(v163 + 64) = v168;
    sub_1BD0DE204(v161, v106, &qword_1EBD3F058, &qword_1BE0C5428);
    v169 = (v106 + *(v317 + 36));
    *v169 = sub_1BD250AF4;
    v169[1] = v163;
    v169[2] = 0;
    v169[3] = 0;
    sub_1BD250A68(v104, &v349);
    sub_1BE0528A4();
    v170 = sub_1BE052894();
    v171 = swift_allocObject();
    v172 = MEMORY[0x1E69E85E0];
    *(v171 + 16) = v170;
    *(v171 + 24) = v172;
    v173 = v358;
    *(v171 + 160) = v357;
    *(v171 + 176) = v173;
    *(v171 + 192) = v359;
    v174 = v354;
    *(v171 + 96) = v353;
    *(v171 + 112) = v174;
    v175 = v356;
    *(v171 + 128) = v355;
    *(v171 + 144) = v175;
    v176 = v350;
    *(v171 + 32) = v349;
    *(v171 + 48) = v176;
    v177 = v352;
    *(v171 + 64) = v351;
    *(v171 + 80) = v177;
    v178 = sub_1BE0528D4();
    v303 = &v286;
    v179 = *(v178 - 8);
    v180 = *(v179 + 64);
    MEMORY[0x1EEE9AC00](v178);
    v181 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
    v182 = &v286 - v181;
    sub_1BE0528B4();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v299 = sub_1BE04EAA4();
      v300 = &v286;
      v298 = *(v299 - 8);
      MEMORY[0x1EEE9AC00](v299);
      v297 = &v286 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
      *&v321 = 0;
      *(&v321 + 1) = 0xE000000000000000;
      sub_1BE053834();
      *(&v321 + 1), v184, v185, v186, v187, v188, v189, v190;
      *&v321 = 0xD00000000000002ALL;
      *(&v321 + 1) = 0x80000001BE11F670;
      *&v335 = 81;
      v191 = sub_1BE053B24();
      v192 = v178;
      v194 = v193;
      MEMORY[0x1BFB3F610](v191);
      v194, v195, v196, v197, v198, v199, v200, v201;
      v203 = MEMORY[0x1EEE9AC00](v202);
      (*(v179 + 16))(&v286 - v181, &v286 - v181, v192, v203);
      v204 = v297;
      sub_1BE04EA94();
      (*(v179 + 8))(v182, v192);
      v205 = v305;
      sub_1BD0DE204(v316, v305, &qword_1EBD37180, &qword_1BE0B11A0);
      v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37188, &qword_1BE0B11A8);
      (*(v298 + 32))(v205 + *(v206 + 36), v204, v299);
    }

    else
    {
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37190, &unk_1BE0B11B0);
      v205 = v305;
      v208 = &v305[*(v207 + 36)];
      v209 = sub_1BE04E7B4();
      (*(v179 + 32))(&v208[*(v209 + 20)], &v286 - v181, v178);
      *v208 = &unk_1BE0C54E8;
      *(v208 + 1) = v171;
      sub_1BD0DE204(v106, v205, &qword_1EBD37180, &qword_1BE0B11A0);
    }

    v210 = v319;
    v211 = *(v319 + 64);
    LOBYTE(v335) = *(v319 + 56);
    *(&v335 + 1) = v211;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A8, &unk_1BE0DC870);
    sub_1BE0516C4();
    v212 = v321;
    v335 = v321;
    v336 = v322;
    sub_1BD250A68(v210, &v321);
    v213 = swift_allocObject();
    v214 = v330;
    *(v213 + 144) = v329;
    *(v213 + 160) = v214;
    *(v213 + 176) = v331;
    v215 = v326;
    *(v213 + 80) = v325;
    *(v213 + 96) = v215;
    v216 = v328;
    *(v213 + 112) = v327;
    *(v213 + 128) = v216;
    v217 = v322;
    *(v213 + 16) = v321;
    *(v213 + 32) = v217;
    v218 = v324;
    *(v213 + 48) = v323;
    *(v213 + 64) = v218;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0B0, &qword_1BE0C54F0);
    v219 = sub_1BD250BC4();
    *&v321 = v317;
    *(&v321 + 1) = v219;
    swift_getOpaqueTypeConformance2();
    sub_1BD250EA4();
    sub_1BD0DE4F4(&qword_1EBD3F0E8, &qword_1EBD3F0B0, &qword_1BE0C54F0, MEMORY[0x1E697C278]);
    v220 = v307;
    sub_1BE051124();
    *(&v212 + 1), v221, v222, v223, v224, v225, v226, v227;
    v213, v228, v229, v230, v231, v232, v233, v234;
    v212, v235, v236, v237, v238, v239, v240, v241;
    (*(v306 + 8))(v205, v220);
    v242 = v319;
    type metadata accessor for AuthenticatorModel(0);
    sub_1BD2512E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
    v243 = sub_1BE04E964();
    v244 = swift_getKeyPath();
    sub_1BE04E974();
    v244, v245, v246, v247, v248, v249, v250, v251;
    v243, v252, v253, v254, v255, v256, v257, v258;
    v320 = *(&v335 + 1);
    v259 = v335;
    LODWORD(v317) = v336;
    sub_1BD250A68(v242, &v321);
    v260 = swift_allocObject();
    v261 = v330;
    *(v260 + 144) = v329;
    *(v260 + 160) = v261;
    *(v260 + 176) = v331;
    v262 = v326;
    *(v260 + 80) = v325;
    *(v260 + 96) = v262;
    v263 = v328;
    *(v260 + 112) = v327;
    *(v260 + 128) = v263;
    v264 = v322;
    *(v260 + 16) = v321;
    *(v260 + 32) = v264;
    v265 = v324;
    *(v260 + 48) = v323;
    *(v260 + 64) = v265;
    v266 = sub_1BE04EEC4();
    v268 = v267;
    type metadata accessor for PresentationContext(0);
    sub_1BD2512E0(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
    v269 = sub_1BE04EEC4();
    v271 = v270;
    LOBYTE(v332[0]) = 0;
    v272 = v311;
    (*(v308 + 32))(v311, v318, v309);
    v273 = v272 + *(v310 + 36);
    v274 = v320;
    *v273 = v259;
    *(v273 + 8) = v274;
    *(v273 + 16) = v317;
    *(v273 + 17) = v334[0];
    *(v273 + 20) = *(v334 + 3);
    *(v273 + 24) = sub_1BD250EF8;
    *(v273 + 32) = v260;
    *(v273 + 40) = v266;
    *(v273 + 48) = v268;
    *(v273 + 56) = v269;
    *(v273 + 64) = v271;
    *(v273 + 72) = sub_1BD644BF8;
    *(v273 + 80) = 0;
    *(v273 + 88) = v332[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
    sub_1BE0516C4();
    sub_1BD250F00();
    v275 = v312;
    sub_1BE050704();
    sub_1BD0DE53C(&v321, &qword_1EBD51FA0, &unk_1BE0BA2A0);
    sub_1BD0DE53C(v272, &qword_1EBD3F040, &qword_1BE0C5410);
    v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F108, &qword_1BE0C5538);
    v277 = v315;
    sub_1BE04C924();
    sub_1BD250A68(v242, &v321);
    v278 = swift_allocObject();
    v279 = v330;
    *(v278 + 144) = v329;
    *(v278 + 160) = v279;
    *(v278 + 176) = v331;
    v280 = v326;
    *(v278 + 80) = v325;
    *(v278 + 96) = v280;
    v281 = v328;
    *(v278 + 112) = v327;
    *(v278 + 128) = v281;
    v282 = v322;
    *(v278 + 16) = v321;
    *(v278 + 32) = v282;
    v283 = v324;
    *(v278 + 48) = v323;
    *(v278 + 64) = v283;
    result = (*(v313 + 32))(v277, v275, v314);
    v285 = (v277 + *(v276 + 56));
    *v285 = sub_1BD2510AC;
    v285[1] = v278;
  }

  else
  {
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

__n128 sub_1BD24CC08@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04E8A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000, &qword_1BE0BA2B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22[-v12];
  sub_1BE04CB14();
  v14 = sub_1BE04CB04();
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_1BD0DE53C(v13, &unk_1EBD52000, &qword_1BE0BA2B0);
    v15 = sub_1BE04F7B4();
    v23 = 0;
    sub_1BD250728(v2, &v34);
    v28 = v38;
    v29 = v39;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v31[1] = v35;
    v31[2] = v36;
    v30 = v40;
    v31[0] = v34;
    v31[3] = v37;
    v31[4] = v38;
    v31[5] = v39;
    v31[6] = v40;
    sub_1BD0DE19C(&v24, &v32, &qword_1EBD3F128, &qword_1BE0C55A0);
    sub_1BD0DE53C(v31, &qword_1EBD3F128, &qword_1BE0C55A0);
    *&v22[55] = v27;
    *&v22[71] = v28;
    *&v22[87] = v29;
    *&v22[103] = v30;
    *&v22[7] = v24;
    *&v22[23] = v25;
    *&v22[39] = v26;
    v16 = v23;
    sub_1BE04E894();
    (*(v5 + 16))(v7, v10, v4);
    sub_1BD2512E0(&unk_1EBD36878, MEMORY[0x1E697E410], MEMORY[0x1E697E408]);
    v17 = sub_1BE04E644();
    (*(v5 + 8))(v10, v4);
    *(&v33[4] + 1) = *&v22[64];
    *(&v33[5] + 1) = *&v22[80];
    *(&v33[6] + 1) = *&v22[96];
    *(v33 + 1) = *v22;
    *(&v33[1] + 1) = *&v22[16];
    *(&v33[2] + 1) = *&v22[32];
    v32 = v15;
    LOBYTE(v33[0]) = v16;
    *(&v33[3] + 1) = *&v22[48];
    *&v33[7] = *&v22[111];
    *(&v33[7] + 1) = v17;
    PKEdgeInsetsMake();
    v40 = v33[5];
    v41 = v33[6];
    v42 = v33[7];
    v36 = v33[1];
    v37 = v33[2];
    v38 = v33[3];
    v39 = v33[4];
    v34 = v32;
    v35 = v33[0];
  }

  else
  {
    sub_1BD0DE53C(v13, &unk_1EBD52000, &qword_1BE0BA2B0);
    sub_1BD251114(&v34);
  }

  v18 = v41;
  *(a1 + 96) = v40;
  *(a1 + 112) = v18;
  *(a1 + 128) = v42;
  v19 = v37;
  *(a1 + 32) = v36;
  *(a1 + 48) = v19;
  v20 = v39;
  *(a1 + 64) = v38;
  *(a1 + 80) = v20;
  result = v35;
  *a1 = v34;
  *(a1 + 16) = result;
  return result;
}

id sub_1BD24CF94()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*(v1 + 24) + qword_1EBDAADA8 + 32) paymentRequest];
  if (v7)
  {
    v8 = v7;
    sub_1BD6B50F8(1, v7);
  }

  else
  {
    sub_1BE04D084();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, v10, "paymentRequest was nil when trying to call trackButtonTag for dismiss.", v11, 2u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return sub_1BD7423B4();
}

uint64_t sub_1BD24D124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_1BE0528A4();
  v3[3] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD24D1BC, v5, v4);
}

uint64_t sub_1BD24D1BC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1BD24D250;

  return sub_1BD693EF8();
}

uint64_t sub_1BD24D250()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1BD16DC40, v3, v2);
}

id sub_1BD24D370@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F110, &qword_1BE0C5540);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F118, &qword_1BE0C5548);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F120, &qword_1BE0C5550);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  result = [*(*(a1 + 48) + *((*MEMORY[0x1E69E7D40] & **(a1 + 48)) + 0xD0)) paymentRequest];
  if (result)
  {
    v15 = result;
    v16 = [result requestType];

    sub_1BD4EC960(v16, v6);
    sub_1BD250A68(a1, &v40);
    v17 = swift_allocObject();
    v18 = v49;
    *(v17 + 144) = v48;
    *(v17 + 160) = v18;
    *(v17 + 176) = v50;
    v19 = v45;
    *(v17 + 80) = v44;
    *(v17 + 96) = v19;
    v20 = v47;
    *(v17 + 112) = v46;
    *(v17 + 128) = v20;
    v21 = v41;
    *(v17 + 16) = v40;
    *(v17 + 32) = v21;
    v22 = v43;
    *(v17 + 48) = v42;
    *(v17 + 64) = v22;
    sub_1BD0DE204(v6, v9, &qword_1EBD3F110, &qword_1BE0C5540);
    v23 = &v9[*(v7 + 36)];
    *v23 = sub_1BD2510E0;
    v23[1] = v17;
    v23[2] = 0;
    v23[3] = 0;
    sub_1BD250A68(a1, &v40);
    v24 = swift_allocObject();
    v25 = v49;
    *(v24 + 144) = v48;
    *(v24 + 160) = v25;
    *(v24 + 176) = v50;
    v26 = v45;
    *(v24 + 80) = v44;
    *(v24 + 96) = v26;
    v27 = v47;
    *(v24 + 112) = v46;
    *(v24 + 128) = v27;
    v28 = v41;
    *(v24 + 16) = v40;
    *(v24 + 32) = v28;
    v29 = v43;
    *(v24 + 48) = v42;
    *(v24 + 64) = v29;
    sub_1BD0DE204(v9, v13, &qword_1EBD3F118, &qword_1BE0C5548);
    v30 = &v13[*(v10 + 36)];
    *v30 = 0;
    *(v30 + 1) = 0;
    *(v30 + 2) = sub_1BD251104;
    *(v30 + 3) = v24;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0B0, &qword_1BE0C54F0);
    sub_1BE04CA34();
    sub_1BD250A68(a1, &v40);
    v32 = swift_allocObject();
    v33 = v49;
    *(v32 + 144) = v48;
    *(v32 + 160) = v33;
    *(v32 + 176) = v50;
    v34 = v45;
    *(v32 + 80) = v44;
    *(v32 + 96) = v34;
    v35 = v47;
    *(v32 + 112) = v46;
    *(v32 + 128) = v35;
    v36 = v41;
    *(v32 + 16) = v40;
    *(v32 + 32) = v36;
    v37 = v43;
    *(v32 + 48) = v42;
    *(v32 + 64) = v37;
    result = sub_1BD0DE204(v13, a2, &qword_1EBD3F120, &qword_1BE0C5550);
    v38 = (a2 + *(v31 + 56));
    *v38 = sub_1BD25110C;
    v38[1] = v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD24D730(uint64_t a1)
{
  sub_1BD742DCC();
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(v27);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v28[4] = v27[4];
  v28[5] = v27[5];
  v28[6] = v27[6];
  v28[0] = v27[0];
  v28[1] = v27[1];
  v28[2] = v27[2];
  v28[3] = v27[3];
  v17 = *(&v27[0] + 1);
  sub_1BE048C84();
  sub_1BD146D0C(v28);
  if (v17)
  {
    v18 = *MEMORY[0x1E69DD888];
    v19 = sub_1BE052404();
    v17, v20, v21, v22, v23, v24, v25, v26;
    UIAccessibilityPostNotification(v18, v19);
  }
}

uint64_t sub_1BD24D81C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04CA04();
  result = (*(*(v3 - 8) + 48))(a1, 1, v3);
  if (result != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A8, &unk_1BE0DC870);
    return sub_1BE0516B4();
  }

  return result;
}

void sub_1BD24D8D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000, &qword_1BE0BA2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v61 - v5;
  v7 = *(a1 + 24);
  sub_1BE04CB14();
  v8 = sub_1BE04CB04();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_1BD0DE53C(v6, &unk_1EBD52000, &qword_1BE0BA2B0);
  sub_1BD250A68(a1, &v80);
  v10 = swift_allocObject();
  v11 = v89;
  *(v10 + 144) = v88;
  *(v10 + 160) = v11;
  *(v10 + 176) = v90;
  v12 = v85;
  *(v10 + 80) = v84;
  *(v10 + 96) = v12;
  v13 = v87;
  *(v10 + 112) = v86;
  *(v10 + 128) = v13;
  v14 = v81;
  *(v10 + 16) = v80;
  *(v10 + 32) = v14;
  v15 = v83;
  *(v10 + 48) = v82;
  *(v10 + 64) = v15;
  if (v9 == 1)
  {
    v16 = sub_1BD251498;
  }

  else
  {
    v16 = sub_1BD25149C;
  }

  v64 = v16;
  v17 = sub_1BE04C8C4();
  v62 = v18;
  v63 = v17;
  v19 = sub_1BE04CAE4();
  if (sub_1BE051C54())
  {
    v20 = 10.0;
  }

  else
  {
    v20 = 18.0;
  }

  v21 = v19 & 1;
  sub_1BD24CC08(v69);
  v77 = v69[6];
  v78 = v69[7];
  v79 = v69[8];
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  v22 = *(a1 + 48);
  v68[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4B8, &qword_1BE0C12B8);
  v68[4] = sub_1BD0DE4F4(&qword_1EBD3F098, &qword_1EBD3D4B8, &qword_1BE0C12B8, &unk_1BE0D59B8);
  v68[0] = v22;
  sub_1BD250A68(a1, &v80);
  v23 = swift_allocObject();
  v24 = v89;
  *(v23 + 144) = v88;
  *(v23 + 160) = v24;
  *(v23 + 176) = v90;
  v25 = v85;
  *(v23 + 80) = v84;
  *(v23 + 96) = v25;
  v26 = v87;
  *(v23 + 112) = v86;
  *(v23 + 128) = v26;
  v27 = v81;
  *(v23 + 16) = v80;
  *(v23 + 32) = v27;
  v28 = v83;
  *(v23 + 48) = v82;
  *(v23 + 64) = v28;
  sub_1BD250AA8();
  sub_1BD2512E0(&qword_1EBD35E40, sub_1BD250AA8, &protocol conformance descriptor for PKPaymentSheetExperiment);
  sub_1BE048964();
  v29 = v22;
  *(a2 + 344) = sub_1BE04EEC4();
  *(a2 + 352) = v30;
  sub_1BE04CDA4();
  sub_1BD2512E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a2 + 360) = sub_1BE04EEC4();
  *(a2 + 368) = v31;
  LOBYTE(v67[0]) = 0;
  sub_1BE051694();
  v32 = *(&v80 + 1);
  *(a2 + 376) = v80;
  *(a2 + 384) = v32;
  *(a2 + 392) = swift_getKeyPath();
  *(a2 + 400) = 0;
  v33 = v62;
  *a2 = v63;
  *(a2 + 8) = v33;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = v64;
  *(a2 + 40) = v10;
  *(a2 + 48) = v21;
  *(a2 + 49) = *v70;
  *(a2 + 52) = *&v70[3];
  *(a2 + 56) = sub_1BD24E154;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4032000000000000;
  *(a2 + 80) = v20;
  *(a2 + 88) = xmmword_1BE0B7110;
  *(a2 + 104) = 0;
  v34 = v78;
  *(a2 + 208) = v77;
  *(a2 + 224) = v34;
  *(a2 + 240) = v79;
  v35 = v74;
  *(a2 + 144) = v73;
  *(a2 + 160) = v35;
  v36 = v76;
  *(a2 + 176) = v75;
  *(a2 + 192) = v36;
  v37 = v72;
  *(a2 + 112) = v71;
  *(a2 + 128) = v37;
  *(a2 + 256) = 0;
  *(a2 + 264) = 1;
  *(a2 + 272) = v7;
  sub_1BD0EE8CC(v68, a2 + 280);
  *(a2 + 320) = 1;
  *(a2 + 328) = sub_1BD2510BC;
  *(a2 + 336) = v23;
  sub_1BD0EE8CC(v68, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998, &unk_1BE0F7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0, &unk_1BE0B74C0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v65, &v80);
    v45 = *(&v81 + 1);
    v46 = v82;
    __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
    (*(v46 + 56))(v67, v45, v46);
    __swift_destroy_boxed_opaque_existential_0(v68, v47, v48, v49, v50, v51, v52, v53);
    *(a2 + 321) = v67[0];
    __swift_destroy_boxed_opaque_existential_0(&v80, v54, v55, v56, v57, v58, v59, v60);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v68, v38, v39, v40, v41, v42, v43, v44);
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    sub_1BD0DE53C(v65, &qword_1EBD389A0, &qword_1BE0F7D40);
    *(a2 + 321) = 2;
  }
}

void sub_1BD24DE44(uint64_t a1)
{
  sub_1BD0DE19C(a1, &v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  if (v17)
  {
    sub_1BD043990(&v16, &v18);
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    if (sub_1BE04C714())
    {
      sub_1BD0EE8CC(&v18, &v16);
      sub_1BD0DE19C(&v16, &v15, &qword_1EBD51EC0, &qword_1BE0B7120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
      sub_1BE0516B4();
      sub_1BD0DE53C(&v16, &qword_1EBD51EC0, &qword_1BE0B7120);
      __swift_destroy_boxed_opaque_existential_0(&v18, v8, v9, v10, v11, v12, v13, v14);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(&v18, v1, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    sub_1BD0DE53C(&v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_1BD0DE19C(&v18, &v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
  sub_1BE0516B4();
  sub_1BD0DE53C(&v18, &qword_1EBD51EC0, &qword_1BE0B7120);
}

uint64_t sub_1BD24DFBC()
{
  v0 = sub_1BE04C974();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000, &qword_1BE0BA2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1BE04CB04();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1BE04CB24();
  (*(v1 + 104))(v3, *MEMORY[0x1E69BCA70], v0);
  sub_1BD741B28(v3);
  v8 = (*(v1 + 8))(v3, v0);
  sub_1BD741FB8(v8);
  return sub_1BD742234();
}

void sub_1BD24E154(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1D0, &qword_1BE0C5898);
  sub_1BD24E1A4(a2 + *(v3 + 44));
}

void sub_1BD24E1A4(uint64_t a1@<X8>)
{
  v76 = a1;
  v77 = sub_1BE04EB24();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v2 = &v74 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3, v5);
  v8 = PKPassKitBundle();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v4 + 8))(v7, v3);
    v78 = v10;
    v79 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    v18 = v17;
    v19 = sub_1BE0503D4();
    v20 = sub_1BE0505F4();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v19, v21, v23, v25, v27, v28, v29, v30;
    sub_1BD0DDF10(v13, v15, (v9 & 1), v31, v32, v33, v34, v35);
    v18, v36, v37, v38, v39, v40, v41, v42;
    sub_1BE050384();
    v43 = sub_1BE050544();
    v45 = v44;
    LOBYTE(v13) = v46;
    v48 = v47;
    sub_1BD0DDF10(v20, v22, (v24 & 1), v47, v49, v50, v51, v52);
    v26, v53, v54, v55, v56, v57, v58, v59;
    v78 = v43;
    v79 = v45;
    v80 = v13 & 1;
    v81 = v48;
    v60 = v75;
    v61 = v77;
    (*(v75 + 104))(v2, *MEMORY[0x1E697E6E8], v77);
    sub_1BE050B24();
    (*(v60 + 8))(v2, v61);
    sub_1BD0DDF10(v43, v45, (v13 & 1), v62, v63, v64, v65, v66);
    v48, v67, v68, v69, v70, v71, v72, v73;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD24E4AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v166 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v166);
  v167 = (v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F130, &qword_1BE0C55A8);
  MEMORY[0x1EEE9AC00](v164[0]);
  v172 = (v164 - v5);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F138, &qword_1BE0C55B0);
  v6 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v165 = v164 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v170 = v164 - v9;
  v10 = type metadata accessor for AvailablePass(0);
  v168 = *(v10 - 8);
  v169 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v171 = v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140, &qword_1BE0C55B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v185 = (v164 - v13);
  v14 = type metadata accessor for IdentityPassVendor(0);
  v183 = *(v14 - 8);
  v184 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F148, &qword_1BE0C55C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v164 - v21;
  v164[1] = a1;
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  sub_1BE04D8B4(v200);
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  v24, v32, v33, v34, v35, v36, v37, v38;
  v39 = *(&v200[0] + 1);
  if (*(&v200[0] + 1) || (v40 = swift_getKeyPath(), v41 = swift_getKeyPath(), sub_1BE04D8B4(v200), v40, v42, v43, v44, v45, v46, v47, v48, v41, v49, v50, v51, v52, v53, v54, v55, (v39 = *(&v200[0] + 1)) != 0))
  {
    v177 = v39;
    v176 = *&v200[0];
    v56 = swift_getKeyPath();
    v57 = swift_getKeyPath();
    sub_1BE04D8B4(v200);
    v56, v58, v59, v60, v61, v62, v63, v64;
    v57, v65, v66, v67, v68, v69, v70, v71;
    v182 = a2;
    if (*(&v200[0] + 1))
    {
      *(&v200[0] + 1), v72, v73, v74, v75, v76, v77, v78;
      v79 = swift_getKeyPath();
      v80 = swift_getKeyPath();
      sub_1BE04D8B4(v200);
      v79, v81, v82, v83, v84, v85, v86, v87;
      v80, v88, v89, v90, v91, v92, v93, v94;
      v174 = *(&v200[0] + 1);
      v175 = *&v200[0];
    }

    else
    {
      v174 = 0;
      v175 = *&v200[0];
    }

    v95 = swift_getKeyPath();
    v96 = swift_getKeyPath();
    sub_1BE04D8B4(v200);
    v95, v97, v98, v99, v100, v101, v102, v103;
    v96, v104, v105, v106, v107, v108, v109, v110;
    v180 = v19;
    v181 = v6;
    v178 = v16;
    v179 = v22;
    if (*&v200[0])
    {
      v173 = sub_1BE051544();
    }

    else
    {
      v173 = 0;
    }

    v111 = swift_getKeyPath();
    v112 = swift_getKeyPath();
    v188 = 0;
    v187 = 0;
    v113 = sub_1BE050204();
    sub_1BE04E1F4();
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v122 = v188;
    v123 = v187;
    v190[0] = 0;
    v124 = sub_1BE0501F4();
    v191[0] = 1;
    sub_1BE051CE4();
    sub_1BE04EE54();
    *&v189[55] = v196;
    *&v189[71] = v197;
    *&v189[87] = v198;
    *&v189[103] = v199;
    *&v189[7] = v193;
    *&v189[23] = v194;
    *&v189[39] = v195;
    v192[0] = v111;
    LOBYTE(v192[1]) = v122;
    v192[2] = v112;
    LOBYTE(v192[3]) = v123;
    v192[4] = v176;
    v192[5] = v177;
    v192[6] = v175;
    v192[7] = v174;
    v192[8] = v173;
    LOBYTE(v192[9]) = 1;
    LOBYTE(v192[10]) = v113;
    v192[11] = v115;
    v192[12] = v117;
    v192[13] = v119;
    v192[14] = v121;
    LOBYTE(v192[15]) = 0;
    LOBYTE(v192[16]) = v124;
    memset(&v192[17], 0, 32);
    LOBYTE(v192[21]) = 1;
    *(&v192[33] + 1) = *&v189[96];
    *(&v192[29] + 1) = *&v189[64];
    *(&v192[31] + 1) = *&v189[80];
    v192[35] = *(&v199 + 1);
    *(&v192[21] + 1) = *v189;
    *(&v192[23] + 1) = *&v189[16];
    *(&v192[25] + 1) = *&v189[32];
    *(&v192[27] + 1) = *&v189[48];
    PKEdgeInsetsMake();
    memcpy(v200, v192, sizeof(v200));
    v6 = v181;
    a2 = v182;
    v22 = v179;
    v19 = v180;
    v16 = v178;
  }

  else
  {
    sub_1BD251190(v200);
  }

  v125 = swift_getKeyPath();
  v126 = swift_getKeyPath();
  v127 = v185;
  sub_1BE04D8B4(v185);
  v125, v128, v129, v130, v131, v132, v133, v134;
  v126, v135, v136, v137, v138, v139, v140, v141;
  if ((*(v183 + 48))(v127, 1, v184) == 1)
  {
    sub_1BD0DE53C(v127, &qword_1EBD3F140, &qword_1BE0C55B8);
LABEL_14:
    v143 = a2;
    (*(v6 + 56))(v22, 1, 1, v186);
    goto LABEL_18;
  }

  sub_1BD2511BC(v127, v16, type metadata accessor for IdentityPassVendor);
  v142 = v170;
  sub_1BD0DE19C(v16, v170, &qword_1EBD520A0, &qword_1BE0B9840);
  if ((*(v168 + 48))(v142, 1, v169) == 1)
  {
    sub_1BD0DE53C(v142, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD25138C(v16, type metadata accessor for IdentityPassVendor);
    goto LABEL_14;
  }

  v144 = v142;
  v145 = v171;
  sub_1BD2511BC(v144, v171, type metadata accessor for AvailablePass);
  v146 = sub_1BE04F7B4();
  v147 = v172;
  *v172 = v146;
  v147[1] = 0;
  *(v147 + 16) = 0;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F160, &qword_1BE0C56B0);
  sub_1BD24EFAC(v145, v16, v147 + *(v148 + 44));
  v149 = sub_1BE051254();
  v150 = sub_1BE051CD4();
  v151 = (v147 + *(v164[0] + 36));
  *v151 = v149;
  v151[1] = v150;
  v151[2] = v152;
  v153 = 26.0;
  v143 = a2;
  if ((sub_1BE051C54() & 1) == 0)
  {
    sub_1BE04C7E4();
    v153 = v154;
  }

  v155 = *(v166 + 20);
  v156 = *MEMORY[0x1E697F468];
  v157 = sub_1BE04F684();
  v158 = v167;
  (*(*(v157 - 8) + 104))(v167 + v155, v156, v157);
  *v158 = v153;
  v158[1] = v153;
  v159 = v186;
  v160 = v165;
  v161 = &v165[*(v186 + 36)];
  sub_1BD2511BC(v158, v161, MEMORY[0x1E697EAF0]);
  *(v161 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)) = 256;
  sub_1BD0DE204(v172, v160, &qword_1EBD3F130, &qword_1BE0C55A8);
  sub_1BD0DE204(v160, v22, &qword_1EBD3F138, &qword_1BE0C55B0);
  (*(v6 + 56))(v22, 0, 1, v159);
  sub_1BD25138C(v171, type metadata accessor for AvailablePass);
  sub_1BD25138C(v16, type metadata accessor for IdentityPassVendor);
LABEL_18:
  memcpy(v190, v200, sizeof(v190));
  sub_1BD0DE19C(v22, v19, &qword_1EBD3F148, &qword_1BE0C55C0);
  memcpy(v191, v190, sizeof(v191));
  memcpy(v143, v190, 0x120uLL);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F150, &qword_1BE0C56A0);
  sub_1BD0DE19C(v19, v143 + *(v162 + 48), &qword_1EBD3F148, &qword_1BE0C55C0);
  sub_1BD0DE19C(v191, v192, &qword_1EBD3F158, &qword_1BE0C56A8);
  sub_1BD0DE53C(v22, &qword_1EBD3F148, &qword_1BE0C55C0);
  sub_1BD0DE53C(v19, &qword_1EBD3F148, &qword_1BE0C55C0);
  memcpy(v192, v190, sizeof(v192));
  return sub_1BD0DE53C(v192, &qword_1EBD3F158, &qword_1BE0C56A8);
}

uint64_t sub_1BD24EFAC@<X0>(uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v161 = a3;
  v158 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F168, &qword_1BE0C5760);
  v154 = *(v5 - 8);
  v155 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v149 = &v133 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F170, &qword_1BE0C5768);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v157 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v156 = &v133 - v10;
  v147 = sub_1BE04FF64();
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v143 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1BE04DA24();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04DA84();
  v133 = *(v13 - 8);
  v134 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F178, &qword_1BE0C5770);
  MEMORY[0x1EEE9AC00](v139);
  v16 = &v133 - v15;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F180, &qword_1BE0C5778);
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v138 = &v133 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F188, &qword_1BE0C5780);
  v151 = *(v18 - 8);
  v152 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v141 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v142 = &v133 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190, &qword_1BE0C5788);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v133 - v23;
  v25 = type metadata accessor for IdentityCredential(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v150 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F198, &qword_1BE0C5790);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v153 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v163 = &v133 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700);
  MEMORY[0x1EEE9AC00](v32);
  v164 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v159 = &v133 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v133 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52180, &qword_1BE0C5798);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v162 = &v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v133 - v42;
  v44 = *&v161[*(type metadata accessor for Passes(0) + 20)];
  v160 = v43;
  sub_1BD24FFB8(a2, v44, v43);
  sub_1BE051984();
  v45 = sub_1BE0501C4();
  v148 = v32;
  v46 = *(v32 + 36);
  v161 = v38;
  v47 = &v38[v46];
  *v47 = v45;
  *(v47 + 8) = 0u;
  *(v47 + 24) = 0u;
  v47[40] = 1;
  v48 = type metadata accessor for AvailablePass(0);
  sub_1BD0DE19C(a2 + *(v48 + 24), v24, &qword_1EBD3F190, &qword_1BE0C5788);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1BD0DE53C(v24, &qword_1EBD3F190, &qword_1BE0C5788);
    v49 = 1;
    v50 = v163;
    v51 = v152;
  }

  else
  {
    v52 = v150;
    sub_1BD2511BC(v24, v150, type metadata accessor for IdentityCredential);
    (*(v133 + 16))(v136, v52 + *(v25 + 20), v134);
    (*(v135 + 104))(v140, *MEMORY[0x1E6997D18], v137);
    KeyPath = swift_getKeyPath();
    v54 = swift_getKeyPath();
    sub_1BE04D8B4(&v169);
    KeyPath, v55, v56, v57, v58, v59, v60, v61;
    v54, v62, v63, v64, v65, v66, v67, v68;
    sub_1BE0520A4();
    v69 = sub_1BE0501D4();
    v70 = &v16[*(v139 + 36)];
    *v70 = v69;
    *(v70 + 8) = 0u;
    *(v70 + 24) = 0u;
    v70[40] = 1;
    v71 = v143;
    sub_1BE04FF44();
    sub_1BD251224();
    v72 = v138;
    sub_1BE050D14();
    (*(v145 + 8))(v71, v147);
    sub_1BD0DE53C(v16, &qword_1EBD3F178, &qword_1BE0C5770);
    sub_1BE051CD4();
    sub_1BE04EE54();
    sub_1BD25138C(v150, type metadata accessor for IdentityCredential);
    v73 = v141;
    (*(v144 + 32))(v141, v72, v146);
    v51 = v152;
    v74 = &v73[*(v152 + 36)];
    v75 = *(&v187[10] + 8);
    v76 = *(&v187[12] + 8);
    *(v74 + 4) = *(&v187[11] + 8);
    *(v74 + 5) = v76;
    *(v74 + 6) = *(&v187[13] + 8);
    v77 = *(&v187[8] + 8);
    *v74 = *(&v187[7] + 8);
    *(v74 + 1) = v77;
    *(v74 + 2) = *(&v187[9] + 8);
    *(v74 + 3) = v75;
    v78 = v73;
    v79 = v142;
    sub_1BD0DE204(v78, v142, &qword_1EBD3F188, &qword_1BE0C5780);
    v80 = v79;
    v50 = v163;
    sub_1BD0DE204(v80, v163, &qword_1EBD3F188, &qword_1BE0C5780);
    v49 = 0;
  }

  (*(v151 + 56))(v50, v49, 1, v51);
  v81 = swift_getKeyPath();
  v82 = swift_getKeyPath();
  sub_1BE04D8B4(&v169);
  v81, v83, v84, v85, v86, v87, v88, v89;
  v82, v90, v91, v92, v93, v94, v95, v96;
  v97 = v170;
  if (v170)
  {
    v98 = v169;
    v99 = v159;
    sub_1BE051984();
    v100 = sub_1BE0501C4();
    v101 = v99 + *(v148 + 36);
    *v101 = v100;
    *(v101 + 8) = 0u;
    *(v101 + 24) = 0u;
    *(v101 + 40) = 1;
    v169 = v98;
    v170 = v97;
    sub_1BD0DDEBC();
    v102 = sub_1BE0506C4();
    v150 = v103;
    v151 = v102;
    v105 = v104;
    v148 = v106;
    LODWORD(v147) = sub_1BE0501D4();
    LOBYTE(v169) = v105 & 1;
    v107 = v105 & 1;
    LODWORD(v152) = v107;
    LOBYTE(v165) = 1;
    sub_1BE051CE4();
    sub_1BE04EE54();
    *(&v187[3] + 5) = *(&v187[17] + 8);
    *(&v187[4] + 5) = *(&v187[18] + 8);
    *(&v187[5] + 5) = *(&v187[19] + 8);
    *(&v187[6] + 5) = *(&v187[20] + 8);
    *(v187 + 5) = *(&v187[14] + 8);
    *(&v187[1] + 5) = *(&v187[15] + 8);
    *(&v187[2] + 5) = *(&v187[16] + 8);
    v108 = sub_1BE050454();
    v146 = v108;
    v109 = swift_getKeyPath();
    v145 = v109;
    v110 = v99;
    v111 = v164;
    sub_1BD0DE19C(v110, v164, &qword_1EBD390F8, &qword_1BE0BA700);
    v112 = v149;
    sub_1BD0DE19C(v111, v149, &qword_1EBD390F8, &qword_1BE0BA700);
    v113 = (v112 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1A8, &qword_1BE0C5820) + 48));
    v114 = v150;
    *&v165 = v102;
    *(&v165 + 1) = v150;
    LOBYTE(v166) = v107;
    v115 = v148;
    *(&v166 + 1) = v148;
    LOBYTE(v107) = v147;
    LOBYTE(v167[0]) = v147;
    *(v167 + 8) = 0u;
    *(&v167[1] + 8) = 0u;
    BYTE8(v167[2]) = 1;
    *(&v167[2] + 9) = 256;
    *(&v167[6] + 11) = v187[4];
    *(&v167[7] + 11) = v187[5];
    *(&v167[8] + 11) = v187[6];
    *(&v167[2] + 11) = v187[0];
    *(&v167[3] + 11) = v187[1];
    *(&v167[4] + 11) = v187[2];
    *(&v167[5] + 11) = v187[3];
    *(&v167[9] + 1) = *(&v187[6] + 13);
    *&v168 = v109;
    *(&v168 + 1) = v108;
    v116 = v167[9];
    v113[10] = v167[8];
    v113[11] = v116;
    v117 = v167[5];
    v113[6] = v167[4];
    v113[7] = v117;
    v118 = v167[7];
    v113[8] = v167[6];
    v113[9] = v118;
    v119 = v167[1];
    v113[2] = v167[0];
    v113[3] = v119;
    v120 = v167[3];
    v113[4] = v167[2];
    v113[5] = v120;
    v121 = v166;
    *v113 = v165;
    v113[1] = v121;
    v113[12] = v168;
    sub_1BD0DE19C(&v165, &v169, &qword_1EBD3F1B0, &qword_1BE0C5828);
    sub_1BD0DE53C(v159, &qword_1EBD390F8, &qword_1BE0BA700);
    v174 = 0u;
    v175 = 0u;
    v182 = v187[4];
    v183 = v187[5];
    *v184 = v187[6];
    v178 = v187[0];
    v179 = v187[1];
    v180 = v187[2];
    v169 = v151;
    v170 = v114;
    v171 = v152;
    v172 = v115;
    v173 = v107;
    v176 = 1;
    v177 = 256;
    v181 = v187[3];
    *&v184[13] = *(&v187[6] + 13);
    v185 = v145;
    v186 = v146;
    v122 = v111;
    sub_1BD0DE53C(&v169, &qword_1EBD3F1B0, &qword_1BE0C5828);
    sub_1BD0DE53C(v111, &qword_1EBD390F8, &qword_1BE0BA700);
    v123 = v156;
    sub_1BD0DE204(v112, v156, &qword_1EBD3F168, &qword_1BE0C5760);
    (*(v154 + 56))(v123, 0, 1, v155);
  }

  else
  {
    v123 = v156;
    (*(v154 + 56))(v156, 1, 1, v155);
    v122 = v164;
  }

  v124 = v162;
  sub_1BD0DE19C(v160, v162, &qword_1EBD52180, &qword_1BE0C5798);
  sub_1BD0DE19C(v161, v122, &qword_1EBD390F8, &qword_1BE0BA700);
  v125 = v163;
  v126 = v153;
  sub_1BD0DE19C(v163, v153, &qword_1EBD3F198, &qword_1BE0C5790);
  v127 = v157;
  sub_1BD0DE19C(v123, v157, &qword_1EBD3F170, &qword_1BE0C5768);
  v128 = v124;
  v129 = v123;
  v130 = v158;
  sub_1BD0DE19C(v128, v158, &qword_1EBD52180, &qword_1BE0C5798);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1A0, &qword_1BE0C57E8);
  sub_1BD0DE19C(v122, v130 + v131[12], &qword_1EBD390F8, &qword_1BE0BA700);
  sub_1BD0DE19C(v126, v130 + v131[16], &qword_1EBD3F198, &qword_1BE0C5790);
  sub_1BD0DE19C(v127, v130 + v131[20], &qword_1EBD3F170, &qword_1BE0C5768);
  sub_1BD0DE53C(v129, &qword_1EBD3F170, &qword_1BE0C5768);
  sub_1BD0DE53C(v125, &qword_1EBD3F198, &qword_1BE0C5790);
  sub_1BD0DE53C(v161, &qword_1EBD390F8, &qword_1BE0BA700);
  sub_1BD0DE53C(v160, &qword_1EBD52180, &qword_1BE0C5798);
  sub_1BD0DE53C(v127, &qword_1EBD3F170, &qword_1BE0C5768);
  sub_1BD0DE53C(v126, &qword_1EBD3F198, &qword_1BE0C5790);
  sub_1BD0DE53C(v164, &qword_1EBD390F8, &qword_1BE0BA700);
  return sub_1BD0DE53C(v162, &qword_1EBD52180, &qword_1BE0C5798);
}

uint64_t sub_1BD24FFB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v52 = a2;
  v55 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1C8, &qword_1BE0C5830);
  v16 = (v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v50 - v20;
  sub_1BD251328(a1, v14);
  v21 = type metadata accessor for PeerPaymentModel(0);
  v22 = *(v21 - 8);
  (*(v22 + 56))(v11, 1, 1, v21);
  sub_1BE04C8E4();
  v54 = v4;
  v51 = sub_1BD2504C0();
  v24 = v23;
  v50 = v16[18];
  v18[v50] = 0;
  v25 = v16[19];
  *&v18[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  v26 = sub_1BE051C54();
  v27 = 40.0;
  if (v26)
  {
    v27 = 36.0;
  }

  *&v18[v16[20]] = v27;
  v28 = v16[21];
  v18[v28] = (sub_1BE051C54() & 1) == 0;
  v29 = v52;
  sub_1BD2511BC(v14, v18, type metadata accessor for AvailablePass);
  *&v18[v16[11]] = v29;
  sub_1BD0DE19C(v11, &v18[v16[12]], &qword_1EBD45480, &unk_1BE0B8C30);
  v30 = &v18[v16[13]];
  *(v30 + 3) = 0u;
  *(v30 + 4) = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 2) = 0u;
  *v30 = 0u;
  v18[v16[14]] = 1;
  v31 = &v18[v16[15]];
  v32 = v64;
  *v31 = v63;
  *(v31 + 1) = v32;
  *(v31 + 4) = v65;
  v33 = &v18[v16[16]];
  *v33 = v51;
  v33[1] = v24;
  v34 = &v18[v16[17]];
  *v34 = 0;
  *(v34 + 1) = 0;
  sub_1BD0DE204(v11, v8, &qword_1EBD45480, &unk_1BE0B8C30);
  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {
    v35 = v29;
    sub_1BD0DE53C(v8, &qword_1EBD45480, &unk_1BE0B8C30);
  }

  else
  {
    v36 = &v8[*(v21 + 24)];
    v37 = *(v36 + 3);
    v59 = *(v36 + 2);
    v60 = v37;
    v38 = *(v36 + 5);
    v61 = *(v36 + 4);
    v62 = v38;
    v39 = *(v36 + 1);
    v57 = *v36;
    v58 = v39;
    v40 = v29;
    sub_1BD0DE19C(&v57, v56, &unk_1EBD521D0, qword_1BE0BEDC0);
    sub_1BD25138C(v8, type metadata accessor for PeerPaymentModel);
    if (v57 != 1)
    {
      v41 = *(&v58 + 1);
      v42 = v62;
      sub_1BD0DE53C(&v57, &unk_1EBD521D0, qword_1BE0BEDC0);
      if (v41 || (v42 & 1) != 0)
      {
        v18[v50] = 1;
      }
    }
  }

  v43 = v53;
  sub_1BD0DE204(v18, v53, &qword_1EBD3F1C8, &qword_1BE0C5830);
  v44 = sub_1BE04CAE4();
  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44 & 1;
  v47 = v55;
  sub_1BD0DE204(v43, v55, &qword_1EBD3F1C8, &qword_1BE0C5830);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52180, &qword_1BE0C5798);
  v49 = (v47 + *(result + 36));
  *v49 = KeyPath;
  v49[1] = sub_1BD10DF54;
  v49[2] = v46;
  return result;
}

void (*sub_1BD2504C0())()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140, &qword_1BE0C55B8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (v40 - v2);
  v4 = type metadata accessor for IdentityPassVendor(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(v3);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1BD0DE53C(v3, &qword_1EBD3F140, &qword_1BE0C55B8);
    return 0;
  }

  else
  {
    sub_1BD2511BC(v3, v7, type metadata accessor for IdentityPassVendor);
    v25 = *&v7[*(type metadata accessor for Passes(0) + 28)];
    sub_1BE048C84();
    sub_1BD25138C(v7, type metadata accessor for IdentityPassVendor);
    v26 = v25[2];
    v25, v27, v28, v29, v30, v31, v32, v33;
    result = 0;
    if (v26 >= 2)
    {
      sub_1BD250A68(v0, v40);
      v34 = swift_allocObject();
      v35 = v40[9];
      *(v34 + 144) = v40[8];
      *(v34 + 160) = v35;
      *(v34 + 176) = v41;
      v36 = v40[5];
      *(v34 + 80) = v40[4];
      *(v34 + 96) = v36;
      v37 = v40[7];
      *(v34 + 112) = v40[6];
      *(v34 + 128) = v37;
      v38 = v40[1];
      *(v34 + 16) = v40[0];
      *(v34 + 32) = v38;
      v39 = v40[3];
      *(v34 + 48) = v40[2];
      *(v34 + 64) = v39;
      return sub_1BD251474;
    }
  }

  return result;
}

uint64_t sub_1BD250728@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_1BE04C8A4())
  {
    sub_1BD250A68(a1, v19);
    v4 = swift_allocObject();
    v5 = v19[9];
    *(v4 + 144) = v19[8];
    *(v4 + 160) = v5;
    *(v4 + 176) = v20;
    v6 = v19[5];
    *(v4 + 80) = v19[4];
    *(v4 + 96) = v6;
    v7 = v19[7];
    *(v4 + 112) = v19[6];
    *(v4 + 128) = v7;
    v8 = v19[1];
    *(v4 + 16) = v19[0];
    *(v4 + 32) = v8;
    v9 = v19[3];
    *(v4 + 48) = v19[2];
    *(v4 + 64) = v9;
    KeyPath = swift_getKeyPath();
    sub_1BE04CDA4();
    sub_1BD2512E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    sub_1BE048964();
    v11 = sub_1BE04EEC4();
    v13 = v12;
    type metadata accessor for AuthenticatorModel(0);
    sub_1BD2512E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
    result = sub_1BE04E954();
    v16 = 0x4014000000000000;
    v17 = sub_1BD251130;
    v18 = sub_1BD31FF5C;
  }

  else
  {
    result = 0;
    v15 = 0;
    v18 = 0;
    KeyPath = 0;
    v11 = 0;
    v13 = 0;
    v17 = 0;
    v4 = 0;
    v16 = 0;
  }

  *a2 = result;
  a2[1] = v15;
  a2[2] = v18;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = KeyPath;
  a2[6] = 0;
  a2[7] = v11;
  a2[8] = v13;
  a2[9] = v17;
  a2[10] = v4;
  a2[11] = 0;
  a2[12] = 0;
  a2[13] = v16;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13PaymentUIBase10AlertError_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BD25098C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1BD2509D4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1BD250AA8()
{
  result = qword_1EBD35E30;
  if (!qword_1EBD35E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD35E30);
  }

  return result;
}

uint64_t sub_1BD250B18()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD24D124(v2, v3, v0 + 32);
}

unint64_t sub_1BD250BC4()
{
  result = qword_1EBD3F0B8;
  if (!qword_1EBD3F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37180, &qword_1BE0B11A0);
    sub_1BD250C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0B8);
  }

  return result;
}

unint64_t sub_1BD250C50()
{
  result = qword_1EBD3F0C0;
  if (!qword_1EBD3F0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F058, &qword_1BE0C5428);
    sub_1BD250D08();
    sub_1BD0DE4F4(&qword_1EBD36798, &unk_1EBD51F70, &qword_1BE0C54F8, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0C0);
  }

  return result;
}

unint64_t sub_1BD250D08()
{
  result = qword_1EBD3F0C8;
  if (!qword_1EBD3F0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F060, &qword_1BE0C5430);
    sub_1BD250DC0();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0C8);
  }

  return result;
}

unint64_t sub_1BD250DC0()
{
  result = qword_1EBD3F0D0;
  if (!qword_1EBD3F0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F068, &qword_1BE0C5438);
    sub_1BD0DE4F4(&qword_1EBD3F0D8, &qword_1EBD3F070, &qword_1BE0C5440, &unk_1BE10CBC8);
    sub_1BD0DE4F4(&qword_1EBD36790, &qword_1EBD3F0A0, &qword_1BE0C5490, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0D0);
  }

  return result;
}

unint64_t sub_1BD250EA4()
{
  result = qword_1EBD3F0E0;
  if (!qword_1EBD3F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0E0);
  }

  return result;
}

unint64_t sub_1BD250F00()
{
  result = qword_1EBD3F0F0;
  if (!qword_1EBD3F0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F040, &qword_1BE0C5410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F050, &qword_1BE0C5420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F0B0, &qword_1BE0C54F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37180, &qword_1BE0B11A0);
    sub_1BD250BC4();
    swift_getOpaqueTypeConformance2();
    sub_1BD250EA4();
    sub_1BD0DE4F4(&qword_1EBD3F0E8, &qword_1EBD3F0B0, &qword_1BE0C54F0, MEMORY[0x1E697C278]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3F0F8, &qword_1EBD3F100, &qword_1BE0C5530, &unk_1BE0EA648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F0F0);
  }

  return result;
}

double sub_1BD251114(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1BD251190(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
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

uint64_t sub_1BD2511BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD251224()
{
  result = qword_1EBD3F1B8;
  if (!qword_1EBD3F1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F178, &qword_1BE0C5770);
    sub_1BD2512E0(&qword_1EBD3F1C0, MEMORY[0x1E6997E38], MEMORY[0x1E6997E30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F1B8);
  }

  return result;
}

uint64_t sub_1BD2512E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD251328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD25138C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_16(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 48), v16, v17, v18, v19, v20, v21, v22;

  *(v8 + 80), v23, v24, v25, v26, v27, v28, v29;
  if (*(v8 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 88), v30, v31, v32, v33, v34, v35, v36);
  }

  *(v8 + 128), v30, v31, v32, v33, v34, v35, v36;
  sub_1BD0D45CC(*(v8 + 136), *(v8 + 144), *(v8 + 152), v37, v38, v39, v40, v41);
  sub_1BD0D4604(*(v8 + 160), *(v8 + 168), v42, v43, v44, v45, v46, v47);

  return swift_deallocObject();
}

uint64_t sub_1BD2514B0(char a1)
{
  v2 = [v1 *off_1E800F8D8[a1]];
  v3 = sub_1BE052434();

  return v3;
}

uint64_t sub_1BD25152C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BD251514(*a1);
  v5 = v4;
  v6 = sub_1BD251514(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1BE053B84();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

uint64_t sub_1BD2515B4()
{
  v1 = *v0;
  sub_1BE053D04();
  sub_1BD251514(v1);
  v3 = v2;
  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD251618(uint64_t a1)
{
  sub_1BD251514(*v1);
  v3 = v2;
  sub_1BE052524();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD25166C(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  sub_1BD251514(v2);
  v4 = v3;
  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

uint64_t sub_1BD2516CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD251780(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BD2516FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD251514(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BD25172C()
{
  result = qword_1EBD3F1E0;
  if (!qword_1EBD3F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F1E0);
  }

  return result;
}

uint64_t sub_1BD251780(uint64_t a1, char *a2)
{
  v4 = sub_1BE052434();
  v12 = v5;
  if (v4 == a1 && v5 == a2)
  {
    a2, v5, v6, v7, v8, v9, v10, v11;
    v29 = v12;
    goto LABEL_8;
  }

  v14 = sub_1BE053B84();
  v12, v15, v16, v17, v18, v19, v20, v21;
  if (v14)
  {
    v29 = a2;
LABEL_8:
    v29, v22, v23, v24, v25, v26, v27, v28;
    return 0;
  }

  v31 = sub_1BE052434();
  v39 = v32;
  if (v31 == a1 && v32 == a2)
  {
    a2, v32, v33, v34, v35, v36, v37, v38;
    v56 = v39;
    goto LABEL_16;
  }

  v41 = sub_1BE053B84();
  v39, v42, v43, v44, v45, v46, v47, v48;
  if (v41)
  {
    v56 = a2;
LABEL_16:
    v56, v49, v50, v51, v52, v53, v54, v55;
    return 1;
  }

  v57 = sub_1BE052434();
  v65 = v58;
  if (v57 == a1 && v58 == a2)
  {
    a2, v58, v59, v60, v61, v62, v63, v64;
    v82 = v65;
    goto LABEL_24;
  }

  v67 = sub_1BE053B84();
  v65, v68, v69, v70, v71, v72, v73, v74;
  if (v67)
  {
    v82 = a2;
LABEL_24:
    v82, v75, v76, v77, v78, v79, v80, v81;
    return 2;
  }

  v83 = sub_1BE052434();
  v91 = v84;
  if (v83 == a1 && v84 == a2)
  {
    a2, v84, v85, v86, v87, v88, v89, v90;
    v99 = v91;
LABEL_30:
    v99, v92, v93, v94, v95, v96, v97, v98;
    return 3;
  }

  v100 = sub_1BE053B84();
  v91, v101, v102, v103, v104, v105, v106, v107;
  if (v100)
  {
    v99 = a2;
    goto LABEL_30;
  }

  v108 = sub_1BE052434();
  v116 = v109;
  if (v108 == a1 && v109 == a2)
  {
    a2, v109, v110, v111, v112, v113, v114, v115;
    v124 = v116;
LABEL_36:
    v124, v117, v118, v119, v120, v121, v122, v123;
    return 4;
  }

  v125 = sub_1BE053B84();
  v116, v126, v127, v128, v129, v130, v131, v132;
  if (v125)
  {
    v124 = a2;
    goto LABEL_36;
  }

  v133 = sub_1BE052434();
  v141 = v134;
  if (v133 == a1 && v134 == a2)
  {
    a2, v134, v135, v136, v137, v138, v139, v140;
    v149 = v141;
LABEL_42:
    v149, v142, v143, v144, v145, v146, v147, v148;
    return 5;
  }

  v150 = sub_1BE053B84();
  v141, v151, v152, v153, v154, v155, v156, v157;
  if (v150)
  {
    v149 = a2;
    goto LABEL_42;
  }

  v158 = sub_1BE052434();
  v166 = v159;
  if (v158 == a1 && v159 == a2)
  {
    a2, v159, v160, v161, v162, v163, v164, v165;
    v174 = v166;
LABEL_48:
    v174, v167, v168, v169, v170, v171, v172, v173;
    return 6;
  }

  v175 = sub_1BE053B84();
  v166, v176, v177, v178, v179, v180, v181, v182;
  if (v175)
  {
    v174 = a2;
    goto LABEL_48;
  }

  if (sub_1BE052434() == a1 && v183 == a2)
  {
    v190 = a2;
    v191 = v183;
    v190, v183, v184, v185, v186, v187, v188, v189;
    v191, v192, v193, v194, v195, v196, v197, v198;
    return 7;
  }

  else
  {
    v199 = v183;
    v200 = sub_1BE053B84();
    a2, v201, v202, v203, v204, v205, v206, v207;
    v199, v208, v209, v210, v211, v212, v213, v214;
    if (v200)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_1BD251AE8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v99 = a4;
  v98 = a3;
  v96 = a2;
  v97 = a1;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v95);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v94 - v9;
  sub_1BE04CDA4();
  sub_1BD25AAB4(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a5 + 32) = sub_1BE04EEC4();
  *(a5 + 40) = v11;
  *(a5 + 80) = 0;
  *&v107 = 0;
  v105 = 0u;
  v106 = 0u;
  sub_1BD0DE19C(&v105, v104, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(&v105, &qword_1EBD51EC0, &qword_1BE0B7120);
  memset(v104, 0, sizeof(v104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55590, &qword_1BE0B7128);
  sub_1BE051694();
  v12 = v108;
  v13 = v106;
  v14 = v107;
  *(a5 + 136) = v105;
  *(a5 + 152) = v13;
  *(a5 + 168) = v14;
  *(a5 + 184) = v12;
  v15 = type metadata accessor for PaymentSheet(0);
  v16 = sub_1BE04C614();
  v17 = *(*(v16 - 8) + 56);
  v17(v10, 1, 1, v16);
  sub_1BD0DE19C(v10, v7, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BE051694();
  sub_1BD0DE53C(v10, &qword_1EBD3D520, &qword_1BE0C12E0);
  v18 = a5 + v15[14];
  LOBYTE(v104[0]) = 0;
  sub_1BE051694();
  v19 = *(&v105 + 1);
  *v18 = v105;
  *(v18 + 8) = v19;
  v17(v10, 1, 1, v16);
  sub_1BD0DE19C(v10, v7, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BE051694();
  sub_1BD0DE53C(v10, &qword_1EBD3D520, &qword_1BE0C12E0);
  v20 = (a5 + v15[16]);
  *&v104[0] = 0;
  sub_1BE051694();
  v21 = *(&v105 + 1);
  *v20 = v105;
  v20[1] = v21;
  v22 = a5 + v15[17];
  LOBYTE(v104[0]) = 0;
  sub_1BE051694();
  v23 = *(&v105 + 1);
  *v22 = v105;
  *(v22 + 8) = v23;
  v24 = v15[18];
  *&v104[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1E8, &qword_1BE0C5958);
  sub_1BE051694();
  *(a5 + v24) = v105;
  v25 = a5 + v15[19];
  LOBYTE(v104[0]) = 0;
  sub_1BE051694();
  v26 = *(&v105 + 1);
  *v25 = v105;
  *(v25 + 8) = v26;
  v27 = v15[20];
  *&v104[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
  sub_1BE051694();
  *(a5 + v27) = v105;
  v28 = v15[21];
  *&v104[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50, &qword_1BE102360);
  sub_1BE051694();
  *(a5 + v28) = v105;
  v29 = (a5 + v15[22]);
  type metadata accessor for PresentationContext(0);
  sub_1BD25AAB4(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
  *v29 = sub_1BE04EEC4();
  v29[1] = v30;
  v31 = a5 + v15[23];
  *v31 = sub_1BD2522E4;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  v32 = (a5 + v15[24]);
  sub_1BD250AA8();
  sub_1BD25AAB4(&qword_1EBD35E40, sub_1BD250AA8, &protocol conformance descriptor for PKPaymentSheetExperiment);
  *v32 = sub_1BE04EEC4();
  v32[1] = v33;
  v34 = v96;
  v35 = v15[25];
  *(a5 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  swift_storeEnumTagMultiPayload();
  v36 = a5 + v15[26];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  v37 = v15[27];
  *(a5 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  v38 = v15[28];
  *(a5 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888, &qword_1BE0B7208);
  swift_storeEnumTagMultiPayload();
  v39 = a5 + v15[29];
  *v39 = swift_getKeyPath();
  *(v39 + 8) = 0;
  v40 = v97;
  *(a5 + 48) = v97;
  v41 = type metadata accessor for PaymentAuthorizationModel(0);
  v103 = v41;
  KeyPath = swift_getKeyPath();
  v102 = v41;
  v43 = swift_getKeyPath();
  v44 = v40;
  sub_1BE04D8B4(&v105);
  KeyPath, v45, v46, v47, v48, v49, v50, v51;
  v43, v52, v53, v54, v55, v56, v57, v58;
  sub_1BD25AAB4(&qword_1EBD3F1F0, type metadata accessor for PaymentAuthorizationModel, MEMORY[0x1E69BCA10]);
  *a5 = sub_1BE04E954();
  *(a5 + 8) = v59;
  v101 = v41;
  v60 = swift_getKeyPath();
  v100 = v41;
  v61 = swift_getKeyPath();
  sub_1BE04D8B4(&v105);
  v62 = v60;
  v63 = v98;
  v62, v64, v65, v66, v67, v68, v69, v70;
  v61, v71, v72, v73, v74, v75, v76, v77;

  type metadata accessor for AuthenticatorModel(0);
  sub_1BD25AAB4(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  *(a5 + 16) = sub_1BE04E954();
  *(a5 + 24) = v78;
  *(a5 + 56) = v34;
  *(a5 + 64) = v63;
  v79 = v99 & 1;
  *(a5 + 72) = v99 & 1;
  *(&v106 + 1) = &type metadata for PaymentSheetFeatureFlag.Wallet;
  *&v107 = sub_1BD259180();
  LOBYTE(v105) = 0;
  sub_1BE048C84();
  LOBYTE(v61) = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(&v105, v80, v81, v82, v83, v84, v85, v86);
  if (v61)
  {
    if (!v34)
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for ProvisioningAvailableCredentialsProvider();
    swift_allocObject();
    *(a5 + 80) = ProvisioningAvailableCredentialsProvider.init(networks:capabilities:)(v34, v63, v79);
    ProvisioningAvailableCredentialsProvider.preflightAvailableCredentials()();
  }

  else
  {
    v34, v87, v88, v89, v90, v91, v92, v93;
  }
}

uint64_t sub_1BD2522E4()
{
  type metadata accessor for BankConnectInterface();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t type metadata accessor for PaymentSheet(uint64_t a1)
{
  result = qword_1EBD3F200;
  if (!qword_1EBD3F200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD252360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v350 = a1;
  v3 = sub_1BE04FF64();
  v348 = *(v3 - 8);
  v349 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v347 = &v314 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A228, &unk_1BE0BA220);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v327 = &v314 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v322 = &v314 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F260, &qword_1BE0C5B68);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v320 = (&v314 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F268, &qword_1BE0C5B70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v357 = (&v314 - v12);
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F270, &qword_1BE0C5B78);
  MEMORY[0x1EEE9AC00](v321);
  v315 = &v314 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v351 = &v314 - v15;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F278, &qword_1BE0C5B80);
  MEMORY[0x1EEE9AC00](v323);
  v324 = &v314 - v16;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F280, &qword_1BE0C5B88);
  v326 = *(v328 - 8);
  MEMORY[0x1EEE9AC00](v328);
  v352 = &v314 - v17;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F288, &qword_1BE0C5B90);
  MEMORY[0x1EEE9AC00](v325);
  v330 = &v314 - v18;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F290, &qword_1BE0C5B98);
  MEMORY[0x1EEE9AC00](v329);
  v332 = &v314 - v19;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F298, &qword_1BE0C5BA0);
  MEMORY[0x1EEE9AC00](v331);
  v334 = &v314 - v20;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2A0, &qword_1BE0C5BA8);
  MEMORY[0x1EEE9AC00](v333);
  v335 = &v314 - v21;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2A8, &qword_1BE0C5BB0);
  MEMORY[0x1EEE9AC00](v353);
  v336 = &v314 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2B0, &qword_1BE0C5BB8);
  v338 = *(v23 - 8);
  v339 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v354 = &v314 - v24;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2B8, &qword_1BE0C5BC0);
  MEMORY[0x1EEE9AC00](v337);
  v355 = &v314 - v25;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2C0, &qword_1BE0C5BC8);
  MEMORY[0x1EEE9AC00](v340);
  v341 = &v314 - v26;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2C8, &qword_1BE0C5BD0);
  MEMORY[0x1EEE9AC00](v343);
  v342 = &v314 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2D0, &qword_1BE0C5BD8);
  v345 = *(v28 - 8);
  v346 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v344 = &v314 - v29;
  v30 = type metadata accessor for PaymentSheet(0);
  v31 = *(v30 - 8);
  v319 = v30 - 8;
  v32 = v31;
  v33 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = *(v2 + 8);
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v358 = v34;
  sub_1BE04D8B4(v385);
  KeyPath, v37, v38, v39, v40, v41, v42, v43;
  v36, v44, v45, v46, v47, v48, v49, v50;
  if (LOBYTE(v385[0]))
  {
    v51 = 0x736143656C707041;
  }

  else
  {
    v51 = 0x796150656C707041;
  }

  if (LOBYTE(v385[0]))
  {
    v52 = 0xED00006F676F4C68;
  }

  else
  {
    v52 = 0xEC0000006F676F4CLL;
  }

  v356 = type metadata accessor for PaymentSheet;
  v53 = v2;
  v364 = &v314 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD25A3E0(v2, v364, type metadata accessor for PaymentSheet);
  v54 = *(v32 + 80);
  v362 = v54;
  v363 = (v54 + 16) & ~v54;
  v361 = v363 + v33;
  v55 = swift_allocObject();
  v314 = type metadata accessor for PaymentSheet;
  sub_1BD25AAFC(&v314 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v55 + ((v54 + 16) & ~v54), type metadata accessor for PaymentSheet);
  v359 = *(v2 + 24);
  v56 = sub_1BE04CAE4();
  v57 = sub_1BE051C54();
  v58 = 18.0;
  v379 = 0uLL;
  if (v57)
  {
    v58 = 10.0;
  }

  *&v380 = v51;
  *(&v380 + 1) = v52;
  *&v381 = sub_1BD25AC90;
  *(&v381 + 1) = v55;
  LOBYTE(v382) = v56 & 1;
  *&v383 = 0;
  *(&v382 + 1) = 0;
  *(&v383 + 1) = 0x4032000000000000;
  *v384 = v58;
  *&v384[8] = xmmword_1BE0B7110;
  v385[0] = 0;
  v385[1] = 0;
  v385[2] = v51;
  v385[3] = v52;
  v385[4] = sub_1BD25AC90;
  v385[5] = v55;
  v386 = v56 & 1;
  v387 = 0;
  v388 = 0;
  v389 = 0x4032000000000000;
  v390 = v58;
  v391 = xmmword_1BE0B7110;
  sub_1BD0DE19C(&v379, v378, &qword_1EBD38AC8, &qword_1BE0EB100);
  sub_1BD0DE53C(v385, &qword_1EBD38AC8, &qword_1BE0EB100);
  v59 = v364;
  sub_1BD25A3E0(v2, v364, v356);
  v60 = swift_allocObject() + v363;
  v61 = v59;
  v62 = v59;
  v63 = v315;
  sub_1BD25AAFC(v61, v60, type metadata accessor for PaymentSheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F2D8, &qword_1BE0C5C28);
  sub_1BD259AB8();
  v64 = v357;
  sub_1BE04C664();
  v65 = sub_1BE04CAE4();
  v66 = swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = v65 & 1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F328, &qword_1BE0C5C78);
  v69 = (v64 + *(v68 + 36));
  *v69 = v66;
  v69[1] = sub_1BD10DF54;
  v69[2] = v67;
  (*(*(v68 - 8) + 56))(v64, 0, 1, v68);
  v70 = sub_1BE04F7B4();
  v71 = v320;
  *v320 = v70;
  *(v71 + 8) = 0;
  *(v71 + 16) = 0;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F330, &qword_1BE0C5C80);
  v73 = v53;
  sub_1BD257B2C(v53, v71 + *(v72 + 44));
  v74 = *(v53 + 48);
  *(&v376[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4D0, &qword_1BE0C12C0);
  *&v376[2] = sub_1BD0DE4F4(&qword_1EBD3F338, &qword_1EBD3D4D0, &qword_1BE0C12C0, &unk_1BE0D59B8);
  *&v376[0] = v74;
  v75 = v73 + *(v319 + 60);
  sub_1BE048964();
  v76 = v74;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  v78 = v322;
  v316 = v77;
  v317 = v75;
  sub_1BE0516A4();
  v79 = sub_1BE04C614();
  v80 = *(*(v79 - 8) + 48);
  v81 = v78;
  v318 = v79;
  LOBYTE(v78) = v80(v78, 1) == 1;
  sub_1BD0DE53C(v81, &qword_1EBD3D520, &qword_1BE0C12E0);
  v360 = v73;
  sub_1BD25A3E0(v73, v62, v356);
  v82 = swift_allocObject();
  v83 = v62;
  v84 = v357;
  sub_1BD25AAFC(v83, v82 + v363, v314);
  v85 = v321;
  v86 = (v63 + *(v321 + 104));
  sub_1BD0DE19C(&v379, v378, &qword_1EBD38AC8, &qword_1BE0EB100);
  v87 = sub_1BD250AA8();
  v88 = sub_1BD25AAB4(&qword_1EBD35E40, sub_1BD250AA8, &protocol conformance descriptor for PKPaymentSheetExperiment);
  v322 = v87;
  v319 = v88;
  *v86 = sub_1BE04EEC4();
  v86[1] = v89;
  v90 = (v63 + v85[27]);
  sub_1BE04CDA4();
  sub_1BD25AAB4(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *v90 = sub_1BE04EEC4();
  v90[1] = v91;
  v92 = v63 + v85[28];
  LOBYTE(v365[0]) = 0;
  sub_1BE051694();
  v93 = v378[1];
  *v92 = v378[0];
  *(v92 + 8) = v93;
  v94 = v63 + v85[29];
  *v94 = swift_getKeyPath();
  *(v94 + 8) = 0;
  *(v63 + 96) = *&v384[16];
  v95 = *v384;
  *(v63 + 64) = v383;
  *(v63 + 80) = v95;
  v96 = v380;
  *v63 = v379;
  *(v63 + 16) = v96;
  v97 = v382;
  *(v63 + 32) = v381;
  *(v63 + 48) = v97;
  sub_1BD0DE19C(v84, v63 + v85[17], &qword_1EBD3F268, &qword_1BE0C5B70);
  sub_1BD0DE19C(v71, v63 + v85[18], &qword_1EBD3F260, &qword_1BE0C5B68);
  *(v63 + v85[19]) = 0;
  *(v63 + v85[20]) = 1;
  *(v63 + v85[21]) = v359;
  sub_1BD0EE8CC(v376, v63 + v85[22]);
  *(v63 + v85[23]) = v78;
  v98 = v85;
  v99 = (v63 + v85[25]);
  *v99 = sub_1BD259D0C;
  v99[1] = v82;
  sub_1BD0EE8CC(v376, v365);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998, &unk_1BE0F7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0, &unk_1BE0B74C0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(&v372, v378);
    v100 = v378[3];
    v101 = v378[4];
    __swift_project_boxed_opaque_existential_1(v378, v378[3]);
    (*(v101 + 56))(v365, v100, v101);
    sub_1BD0DE53C(v71, &qword_1EBD3F260, &qword_1BE0C5B68);
    sub_1BD0DE53C(v84, &qword_1EBD3F268, &qword_1BE0C5B70);
    __swift_destroy_boxed_opaque_existential_0(v376, v102, v103, v104, v105, v106, v107, v108);
    *(v63 + v98[24]) = v365[0];
    __swift_destroy_boxed_opaque_existential_0(v378, v109, v110, v111, v112, v113, v114, v115);
  }

  else
  {
    sub_1BD0DE53C(v71, &qword_1EBD3F260, &qword_1BE0C5B68);
    sub_1BD0DE53C(v84, &qword_1EBD3F268, &qword_1BE0C5B70);
    __swift_destroy_boxed_opaque_existential_0(v376, v116, v117, v118, v119, v120, v121, v122);
    *&v374 = 0;
    v372 = 0u;
    v373 = 0u;
    sub_1BD0DE53C(&v372, &qword_1EBD389A0, &qword_1BE0F7D40);
    *(v63 + v85[24]) = 2;
  }

  v123 = v351;
  sub_1BD0DE204(v63, v351, &qword_1EBD3F270, &qword_1BE0C5B78);
  v124 = v360;
  v125 = *(v360 + 32);
  if (v125)
  {
    sub_1BE048964();
    sub_1BE04CD44();
    v127 = v126;
    v125, v128, v129, v130, v131, v132, v133, v134;
    v135 = MEMORY[0x1BFB3EDF0](v127, 0.825, 0.0);
    v136 = swift_getKeyPath();
    v137 = swift_getKeyPath();
    sub_1BE04D8B4(v378);
    v136, v138, v139, v140, v141, v142, v143, v144;
    v137, v145, v146, v147, v148, v149, v150, v151;
    v152 = v378[0];
    v153 = v324;
    sub_1BD0DE204(v123, v324, &qword_1EBD3F270, &qword_1BE0C5B78);
    v154 = (v153 + *(v323 + 36));
    *v154 = v135;
    v154[1] = v152;
    v155 = v327;
    sub_1BE0516C4();
    v357 = type metadata accessor for PaymentSheet;
    v156 = v364;
    sub_1BD25A3E0(v124, v364, type metadata accessor for PaymentSheet);
    v157 = swift_allocObject();
    v356 = type metadata accessor for PaymentSheet;
    sub_1BD25AAFC(v156, v157 + v363, type metadata accessor for PaymentSheet);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F340, &qword_1BE0C5CD0);
    sub_1BD259DEC();
    sub_1BD25AAB4(&qword_1EBD3A238, MEMORY[0x1E69BC8F0], MEMORY[0x1E69BC900]);
    v351 = MEMORY[0x1E697C278];
    sub_1BD0DE4F4(&qword_1EBD3F368, &qword_1EBD3F340, &qword_1BE0C5CD0, MEMORY[0x1E697C278]);
    sub_1BE051124();
    v157, v158, v159, v160, v161, v162, v163, v164;
    sub_1BD0DE53C(v155, &qword_1EBD3A228, &unk_1BE0BA220);
    sub_1BD0DE53C(v153, &qword_1EBD3F278, &qword_1BE0C5B80);
    v165 = v360;
    type metadata accessor for AuthenticatorModel(0);
    sub_1BD25AAB4(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
    v166 = sub_1BE04E964();
    v167 = swift_getKeyPath();
    sub_1BE04E974();
    v167, v168, v169, v170, v171, v172, v173, v174;
    v166, v175, v176, v177, v178, v179, v180, v181;
    v182 = v378[0];
    v183 = v378[1];
    LOBYTE(v153) = v378[2];
    v184 = v364;
    sub_1BD25A3E0(v165, v364, v357);
    v185 = swift_allocObject();
    sub_1BD25AAFC(v184, v185 + v363, v356);
    v186 = sub_1BE04EEC4();
    v188 = v187;
    type metadata accessor for PresentationContext(0);
    sub_1BD25AAB4(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
    v189 = sub_1BE04EEC4();
    v191 = v190;
    v370 = 0;
    v192 = v330;
    (*(v326 + 32))(v330, v352, v328);
    v193 = v192 + *(v325 + 36);
    *v193 = v182;
    *(v193 + 8) = v183;
    *(v193 + 16) = v153;
    *(v193 + 17) = *v371;
    *(v193 + 20) = *&v371[3];
    *(v193 + 24) = sub_1BD259ED0;
    *(v193 + 32) = v185;
    *(v193 + 40) = v186;
    *(v193 + 48) = v188;
    *(v193 + 56) = v189;
    *(v193 + 64) = v191;
    *(v193 + 72) = sub_1BD644BF8;
    *(v193 + 80) = 0;
    *(v193 + 88) = v370;
    v194 = sub_1BE051404();
    *&v376[0] = v194;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
    v195 = v360;
    sub_1BE0516C4();
    v196 = v332;
    v197 = &v332[*(v329 + 36)];
    sub_1BE050704();
    sub_1BD0DE53C(v378, &qword_1EBD51FA0, &unk_1BE0BA2A0);
    v194, v198, v199, v200, v201, v202, v203, v204;
    v205 = sub_1BE051CD4();
    v207 = v206;
    v208 = &v197[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F370, &qword_1BE0C5D10) + 36)];
    *v208 = v205;
    v208[1] = v207;
    sub_1BD0DE204(v192, v196, &qword_1EBD3F288, &qword_1BE0C5B90);
    v209 = sub_1BE051404();
    v210 = v195;
    v211 = *(v195 + 184);
    v212 = *(v195 + 152);
    *v378 = *(v195 + 136);
    *&v378[2] = v212;
    *&v378[4] = *(v195 + 168);
    v378[6] = v211;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389E8, &qword_1BE0B7520);
    sub_1BE0516C4();
    v366 = v372;
    v367 = v373;
    v368 = v374;
    v369 = v375;
    v213 = sub_1BE051CD4();
    v215 = v214;
    *(v376 + 8) = v366;
    *(&v376[1] + 8) = v367;
    *(&v376[2] + 8) = v368;
    *(&v376[3] + 8) = v369;
    *&v376[0] = v209;
    *(&v376[4] + 1) = v213;
    v377 = v214;
    v216 = v334;
    sub_1BD0DE204(v196, v334, &qword_1EBD3F290, &qword_1BE0C5B98);
    v217 = v216 + *(v331 + 36);
    v218 = v376[3];
    *(v217 + 32) = v376[2];
    *(v217 + 48) = v218;
    *(v217 + 64) = v376[4];
    v219 = v376[1];
    *v217 = v376[0];
    *(v217 + 16) = v219;
    v220 = v366;
    *&v378[3] = v367;
    *&v378[5] = v368;
    *&v378[7] = v369;
    *(v217 + 80) = v377;
    *&v378[1] = v220;
    v378[0] = v209;
    v378[9] = v213;
    v378[10] = v215;
    sub_1BD0DE19C(v376, v365, &qword_1EBD3F378, &qword_1BE0C5D18);
    sub_1BD0DE53C(v378, &qword_1EBD3F378, &qword_1BE0C5D18);
    v221 = v210;
    v222 = v364;
    v223 = v357;
    sub_1BD25A3E0(v210, v364, v357);
    v224 = swift_allocObject();
    v225 = v363;
    v226 = v356;
    sub_1BD25AAFC(v222, v224 + v363, v356);
    v227 = v335;
    sub_1BD0DE204(v216, v335, &qword_1EBD3F298, &qword_1BE0C5BA0);
    v228 = (v227 + *(v333 + 36));
    *v228 = sub_1BD259F40;
    v228[1] = v224;
    v228[2] = 0;
    v228[3] = 0;
    v229 = v336;
    sub_1BE04C924();
    v230 = v221;
    v231 = v364;
    sub_1BD25A3E0(v230, v364, v223);
    v232 = swift_allocObject();
    sub_1BD25AAFC(v231, v232 + v225, v226);
    sub_1BD0DE204(v227, v229, &qword_1EBD3F2A0, &qword_1BE0C5BA8);
    v233 = (v229 + *(v353 + 56));
    *v233 = sub_1BD259F58;
    v233[1] = v232;
    LOBYTE(v365[0]) = sub_1BE04CAE4() & 1;
    sub_1BD0DE4F4(&qword_1EBD3F380, &qword_1EBD3F2A8, &qword_1BE0C5BB0, v351);
    sub_1BE051064();
    sub_1BD0DE53C(v229, &qword_1EBD3F2A8, &qword_1BE0C5BB0);
    v234 = swift_getKeyPath();
    v235 = swift_getKeyPath();
    sub_1BE04D8B4(v365);
    v234, v236, v237, v238, v239, v240, v241, v242;
    v235, v243, v244, v245, v246, v247, v248, v249;
    v250 = v365[0];
    swift_beginAccess();
    v251 = v337;
    v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
    v252 = v355;
    sub_1BE04D884();
    swift_endAccess();
    v250, v253, v254, v255, v256, v257, v258, v259;
    v260 = v360;
    v261 = v357;
    sub_1BD25A3E0(v360, v231, v357);
    v262 = swift_allocObject();
    v263 = v363;
    v264 = v356;
    sub_1BD25AAFC(v231, v262 + v363, v356);
    (*(v338 + 32))(v252, v354, v339);
    v265 = (v252 + *(v251 + 56));
    *v265 = sub_1BD259FC8;
    v265[1] = v262;
    swift_beginAccess();
    v266 = v340;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555C0, &qword_1BE0B7530);
    v267 = v341;
    sub_1BE04D884();
    swift_endAccess();
    v268 = v260;
    v269 = v364;
    sub_1BD25A3E0(v268, v364, v261);
    v270 = swift_allocObject();
    sub_1BD25AAFC(v269, v270 + v263, v264);
    sub_1BD0DE204(v355, v267, &qword_1EBD3F2B8, &qword_1BE0C5BC0);
    v271 = (v267 + *(v266 + 56));
    *v271 = sub_1BD259FE0;
    v271[1] = v270;
    v272 = swift_getKeyPath();
    v273 = swift_getKeyPath();
    sub_1BE04D8B4(v365);
    v272, v274, v275, v276, v277, v278, v279, v280;
    v273, v281, v282, v283, v284, v285, v286, v287;
    v288 = v365[0];
    swift_beginAccess();
    v290 = v342;
    v289 = v343;
    sub_1BE04D884();
    swift_endAccess();
    v288, v291, v292, v293, v294, v295, v296, v297;
    sub_1BD25A3E0(v360, v269, v357);
    v298 = swift_allocObject();
    sub_1BD25AAFC(v269, v298 + v263, v356);
    sub_1BD0DE204(v267, v290, &qword_1EBD3F2C0, &qword_1BE0C5BC8);
    v299 = (v290 + *(v289 + 56));
    *v299 = sub_1BD25A050;
    v299[1] = v298;
    v300 = v347;
    sub_1BE04FF54();
    v301 = sub_1BD0DE4F4(&qword_1EBD3F388, &qword_1EBD3F2C8, &qword_1BE0C5BD0, v351);
    v302 = v344;
    sub_1BE050D14();
    (*(v348 + 8))(v300, v349);
    sub_1BD0DE53C(v290, &qword_1EBD3F2C8, &qword_1BE0C5BD0);
    sub_1BE052434();
    v304 = v303;
    v365[0] = v289;
    v365[1] = v301;
    swift_getOpaqueTypeConformance2();
    v305 = v346;
    sub_1BE050DE4();
    v304, v306, v307, v308, v309, v310, v311, v312;
    sub_1BD0DE53C(&v379, &qword_1EBD38AC8, &qword_1BE0EB100);
    return (*(v345 + 8))(v302, v305);
  }

  else
  {
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

id sub_1BD253EE4()
{
  sub_1BD6B2184(1, 1u, 0);
  result = [*(*(v0 + 48) + *((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0xD0)) paymentRequest];
  if (result)
  {
    v2 = result;
    v3 = [result peerPaymentRequest];

    if (v3)
    {
      if ([v3 isP2P])
      {
        [v3 isDeviceTap];
        v4 = sub_1BE052434();
        v6 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BE0B98D0;
        v8 = *MEMORY[0x1E69BABE8];
        *(inited + 32) = *MEMORY[0x1E69BABE8];
        v9 = sub_1BE052434();
        v10 = MEMORY[0x1E69BA440];
        *(inited + 40) = v9;
        *(inited + 48) = v11;
        v12 = *v10;
        *(inited + 56) = *v10;
        *(inited + 64) = sub_1BE052434();
        *(inited + 72) = v13;
        v14 = *MEMORY[0x1E69BAF60];
        *(inited + 80) = *MEMORY[0x1E69BAF60];
        *(inited + 88) = v4;
        *(inited + 96) = v6;
        v15 = v8;
        v16 = v12;
        v17 = v14;
        v18 = sub_1BD1AAF50(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
        swift_arrayDestroy();
        _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v18);

        v18, v19, v20, v21, v22, v23, v24, v25;
      }

      else
      {
      }
    }

    return sub_1BD7429CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2540E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v46 = a3;
  v6 = sub_1BE04C614();
  v35 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v37 = v8;
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PaymentSheet(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v12;
  v41 = v12;
  v42 = a2;
  v14 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  sub_1BD2DC3A0(a1, a3);
  v47 = type metadata accessor for PaymentSheet;
  sub_1BD25A3E0(a2, v14, type metadata accessor for PaymentSheet);
  v38 = *(v7 + 16);
  v38(v9, a1, v6);
  v15 = *(v11 + 80);
  v43 = (v15 + 16) & ~v15;
  v44 = v15 | 7;
  v45 = v43 + v13;
  v16 = *(v7 + 80);
  v17 = (v43 + v13 + v16) & ~v16;
  v18 = swift_allocObject();
  v40 = type metadata accessor for PaymentSheet;
  sub_1BD25AAFC(v14, v18 + ((v15 + 16) & ~v15), type metadata accessor for PaymentSheet);
  v36 = *(v7 + 32);
  v19 = v35;
  v36(v18 + v17, v9, v35);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3A0, &qword_1BE0C5EE8);
  v21 = (v46 + *(v20 + 36));
  *v21 = sub_1BD25A104;
  v21[1] = v18;
  v21[2] = 0;
  v21[3] = 0;
  v38(v9, v39, v19);
  v22 = v42;
  sub_1BD25A3E0(v42, v14, v47);
  v23 = (v16 + 16) & ~v16;
  v24 = (v37 + v15 + v23) & ~v15;
  v25 = swift_allocObject();
  v36(v25 + v23, v9, v19);
  v26 = v40;
  sub_1BD25AAFC(v14, v25 + v24, v40);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3A8, &qword_1BE0C5EF0);
  v28 = v46;
  v29 = (v46 + *(v27 + 36));
  *v29 = 0;
  v29[1] = 0;
  v29[2] = sub_1BD25A144;
  v29[3] = v25;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F340, &qword_1BE0C5CD0);
  sub_1BE04CA34();
  sub_1BD25A3E0(v22, v14, v47);
  v31 = swift_allocObject();
  result = sub_1BD25AAFC(v14, v31 + v43, v26);
  v33 = (v28 + *(v30 + 56));
  *v33 = sub_1BD25A274;
  v33[1] = v31;
  return result;
}

uint64_t sub_1BD254498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-v8];
  v10 = sub_1BE04C614();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for PaymentSheet(0);
  sub_1BD0DE19C(v9, v6, &qword_1EBD3D520, &qword_1BE0C12E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  sub_1BE0516B4();
  sub_1BD0DE53C(v9, &qword_1EBD3D520, &qword_1BE0C12E0);
  v12 = (a1 + *(v11 + 56));
  v13 = *v12;
  v14 = *(v12 + 1);
  v21[16] = v13;
  v22 = v14;
  v21[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v15 = *(*(a1 + 24) + qword_1EBDAADA8 + 32);
  v16 = 0;
  if ([v15 mode] == 1)
  {
    v16 = [v15 pass];
  }

  v17 = [v15 fundingMode];
  v18 = [v15 paymentOffersController];
  v19 = [v15 selectedPaymentOffer];
  sub_1BD6B39C8(a2, v17, v18, v19, v16);

  result = sub_1BE04C5F4();
  if (result)
  {
    return sub_1BD742D88();
  }

  return result;
}

uint64_t sub_1BD254708(uint64_t a1, uint64_t a2)
{
  v53 = sub_1BE04D214();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_1BE04C614();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 + 24) + qword_1EBDAADA8 + 32);
  v12 = [v11 fundingMode];
  v13 = [v11 selectedPaymentOffer];
  sub_1BD6B4058(a1, v12, v13);

  if (sub_1BE04C5F4())
  {
    sub_1BD743154();
  }

  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(v55);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  v56[0] = v55[0];
  v56[3] = v55[3];
  v56[4] = v55[4];
  v56[5] = v55[5];
  v56[6] = v55[6];
  v56[1] = v55[1];
  v56[2] = v55[2];
  v30 = *(&v55[0] + 1);
  sub_1BE048C84();
  sub_1BD146D0C(v56);
  if (v30)
  {
    v31 = *MEMORY[0x1E69DD888];
    v32 = sub_1BE052404();
    v30, v33, v34, v35, v36, v37, v38, v39;
    UIAccessibilityPostNotification(v31, v32);
  }

  v40 = (a2 + *(type metadata accessor for PaymentSheet(0) + 56));
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v55[0]) = v41;
  *(&v55[0] + 1) = v42;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  sub_1BE0516A4();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1BD0DE53C(v7, &qword_1EBD3D520, &qword_1BE0C12E0);
  }

  v44 = v50;
  (*(v9 + 32))(v50, v7, v8);
  v45 = v51;
  sub_1BE04D084();
  v46 = sub_1BE04D204();
  v47 = sub_1BE052C54();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1BD026000, v46, v47, "Presenting the nextWaitingDetailSheet", v48, 2u);
    MEMORY[0x1BFB45F20](v48, -1, -1);
  }

  (*(v52 + 8))(v45, v53);
  sub_1BD254B98(v44);
  return (*(v9 + 8))(v44, v8);
}

uint64_t sub_1BD254B98(uint64_t a1)
{
  v2 = v1;
  v173 = a1;
  v174 = sub_1BE04D214();
  v3 = *(v174 - 1);
  MEMORY[0x1EEE9AC00](v174);
  v166 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v165 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v165 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v165 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v171 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v172 = &v165 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v165 - v19;
  v169 = type metadata accessor for PaymentSheet(0);
  v21 = *(v169 + 52);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  v167 = v21;
  v170 = v22;
  sub_1BE0516A4();
  v23 = sub_1BE04C614();
  v168 = *(v23 - 8);
  LODWORD(v21) = (*(v168 + 48))(v20, 1, v23);
  sub_1BD0DE53C(v20, &qword_1EBD3D520, &qword_1BE0C12E0);
  if (v21 != 1)
  {
    sub_1BE04D084();
    v123 = sub_1BE04D204();
    v124 = sub_1BE052C34();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_1BD026000, v123, v124, "Detail sheet already set, ignoring", v125, 2u);
      MEMORY[0x1BFB45F20](v125, -1, -1);
    }

    (*(v3 + 8))(v13, v174);
    return 0;
  }

  if ((sub_1BE04C904() & 1) == 0)
  {
    sub_1BE04D084();
    v126 = sub_1BE04D204();
    v127 = sub_1BE052C34();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_1BD026000, v126, v127, "Authorizing payment, ignoring detail sheet", v128, 2u);
      MEMORY[0x1BFB45F20](v128, -1, -1);
    }

    (*(v3 + 8))(v10, v174);
    return 0;
  }

  v177 = MEMORY[0x1E69E7CD0];
  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  sub_1BE04D8B4(v176);
  KeyPath, v26, v27, v28, v29, v30, v31, v32;
  v25, v33, v34, v35, v36, v37, v38, v39;
  if (v176[0] == 2)
  {
    v40 = swift_getKeyPath();
    v41 = swift_getKeyPath();
    sub_1BE04D8B4(v176);
    v40, v42, v43, v44, v45, v46, v47, v48;
    v41, v49, v50, v51, v52, v53, v54, v55;
    v56 = v176[0];
    v57 = swift_getKeyPath();
    v58 = swift_getKeyPath();
    sub_1BE04D8B4(v176);
    v57, v59, v60, v61, v62, v63, v64, v65;
    v58, v66, v67, v68, v69, v70, v71, v72;
    v56, v73, v74, v75, v76, v77, v78, v79;
    if ((v176[0] & 1) == 0)
    {
      sub_1BD2A59C8(v176, 18);
      sub_1BD2A59C8(v176, 7);
    }
  }

  v80 = swift_getKeyPath();
  v81 = swift_getKeyPath();
  sub_1BE04D8B4(v176);
  v80, v82, v83, v84, v85, v86, v87, v88;
  v81, v89, v90, v91, v92, v93, v94, v95;
  if (!v176[0])
  {
    sub_1BD2A59C8(v176, 20);
  }

  v96 = v177;
  v97 = swift_getKeyPath();
  v98 = swift_getKeyPath();
  sub_1BE04D8B4(v176);
  v97, v99, v100, v101, v102, v103, v104, v105;
  v98, v106, v107, v108, v109, v110, v111, v112;
  if (sub_1BD6CF234() & 1) != 0 || (sub_1BD6CF234())
  {
    sub_1BE04D084();
    v113 = sub_1BE04D204();
    v114 = sub_1BE052C34();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_1BD026000, v113, v114, "Loading data, ignoring detail sheet", v115, 2u);
      MEMORY[0x1BFB45F20](v115, -1, -1);
    }

    (*(v3 + 8))(v7, v174);
LABEL_13:
    v96, v116, v117, v118, v119, v120, v121, v122;
    return 0;
  }

  v130 = (v2 + *(v169 + 56));
  v131 = *v130;
  v132 = *(v130 + 1);
  LOBYTE(v176[0]) = v131;
  v176[1] = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v175 == 1)
  {
    v133 = v166;
    sub_1BE04D084();
    v134 = sub_1BE04D204();
    v135 = sub_1BE052C34();
    v136 = os_log_type_enabled(v134, v135);
    v137 = v173;
    if (v136)
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_1BD026000, v134, v135, "Currently dismissing a detail sheet. Waiting on presenting the next sheet until the current one is dismissed", v138, 2u);
      MEMORY[0x1BFB45F20](v138, -1, -1);
    }

    (*(v3 + 8))(v133, v174);
    v139 = v168;
    v140 = v172;
    (*(v168 + 16))(v172, v137, v23);
    (*(v139 + 56))(v140, 0, 1, v23);
    sub_1BD0DE19C(v140, v171, &qword_1EBD3D520, &qword_1BE0C12E0);
    sub_1BE0516B4();
    sub_1BD0DE53C(v140, &qword_1EBD3D520, &qword_1BE0C12E0);
    goto LABEL_13;
  }

  v141 = v173;
  sub_1BD6B528C(v173);
  result = [*(*(v2 + 48) + *((*MEMORY[0x1E69E7D40] & **(v2 + 48)) + 0xD0)) paymentRequest];
  if (result)
  {
    v142 = result;
    v174 = v96;
    v143 = [result peerPaymentRequest];

    if (v143)
    {
      if ([v143 isP2P])
      {
        [v143 isDeviceTap];
        v144 = sub_1BE052434();
        v146 = v145;
        _s9PassKitUI9AnalyticsO27trackPeerPaymentSheetRowTap3for10p2pContexty0G6UIBase0g6DetailH0O_SStFZ_0(v141, v144, v145);

        v146, v147, v148, v149, v150, v151, v152, v153;
      }

      else
      {
      }
    }

    v154 = v168;
    v155 = *(v168 + 56);
    v156 = v172;
    v155(v172, 1, 1, v23);
    v157 = v171;
    sub_1BD0DE19C(v156, v171, &qword_1EBD3D520, &qword_1BE0C12E0);
    sub_1BE0516B4();
    sub_1BD0DE53C(v156, &qword_1EBD3D520, &qword_1BE0C12E0);
    (*(v154 + 16))(v156, v141, v23);
    v155(v156, 0, 1, v23);
    sub_1BD0DE19C(v156, v157, &qword_1EBD3D520, &qword_1BE0C12E0);
    sub_1BE0516B4();
    sub_1BD0DE53C(v156, &qword_1EBD3D520, &qword_1BE0C12E0);
    v174, v158, v159, v160, v161, v162, v163, v164;
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD255528(uint64_t a1)
{
  v2 = sub_1BE04CA04();
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (result != 1)
  {
    return sub_1BD258CE4(1);
  }

  return result;
}

uint64_t sub_1BD255598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4D0, &qword_1BE0C12C0);
  sub_1BD0DE4F4(&qword_1EBD3F398, &qword_1EBD3D4D0, &qword_1BE0C12C0, &unk_1BE0D5A54);
  v7 = sub_1BE04E954();
  v9 = v8;
  type metadata accessor for PaymentAuthorizationModel(0);
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(&v28);
  v10, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  sub_1BD25AAB4(&qword_1EBD3F1F0, type metadata accessor for PaymentAuthorizationModel, MEMORY[0x1E69BCA10]);
  result = sub_1BE04E954();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 9) = v28;
  *(a2 + 12) = *(&v28 + 3);
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 25) = *v29;
  *(a2 + 28) = *&v29[3];
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = result;
  *(a2 + 56) = v27;
  return result;
}

uint64_t sub_1BD255754(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v32 - v2;
  v4 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PaymentSheet(0);
  type metadata accessor for BankConnectInterface();
  sub_1BD25AAB4(&qword_1EBD3F258, type metadata accessor for BankConnectInterface, &unk_1BE104908);
  v7 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(v6);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  sub_1BD0DE19C(v6, v3, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD25A968(v6, type metadata accessor for Passes);
  sub_1BD8FE0E0(v3);
  v7, v24, v25, v26, v27, v28, v29, v30;
  return sub_1BD0DE53C(v3, &qword_1EBD520A0, &qword_1BE0B9840);
}

void sub_1BD25593C(uint64_t a1)
{
  sub_1BD0DE19C(a1, &v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  if (v17)
  {
    sub_1BD043990(&v16, &v18);
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    if (sub_1BE04C714())
    {
      sub_1BD0EE8CC(&v18, &v16);
      sub_1BD0DE19C(&v16, &v15, &qword_1EBD51EC0, &qword_1BE0B7120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
      sub_1BE0516B4();
      sub_1BD0DE53C(&v16, &qword_1EBD51EC0, &qword_1BE0B7120);
      __swift_destroy_boxed_opaque_existential_0(&v18, v8, v9, v10, v11, v12, v13, v14);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(&v18, v1, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    sub_1BD0DE53C(&v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_1BD0DE19C(&v18, &v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
  sub_1BE0516B4();
  sub_1BD0DE53C(&v18, &qword_1EBD51EC0, &qword_1BE0B7120);
}

void sub_1BD255AB4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *a2;
  if (v8 != v9)
  {
    sub_1BE04D084();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109376;
      *(v12 + 4) = v8;
      *(v12 + 8) = 1024;
      *(v12 + 10) = v9;
      _os_log_impl(&dword_1BD026000, v10, v11, "disableInteractivity changed from %{BOOL}d to %{BOOL}d", v12, 0xEu);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1BD255C20(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentSheet(0);
  v92[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v92[1] = v5;
  v93 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v92 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v92 - v16;
  v18 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  sub_1BE0516A4();
  v19 = sub_1BE04C614();
  LODWORD(a1) = (*(*(v19 - 8) + 48))(v17, 1, v19);
  sub_1BD0DE53C(v17, &qword_1EBD3D520, &qword_1BE0C12E0);
  if (a1 == 1 && v18 != 0)
  {
    KeyPath = swift_getKeyPath();
    v22 = swift_getKeyPath();
    sub_1BE04D8B4(&v95);
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    v22, v30, v31, v32, v33, v34, v35, v36;
    v37 = v95;
    if (v95)
    {
      v38 = swift_getKeyPath();
      v39 = swift_getKeyPath();
      sub_1BE04D8B4(v11);
      v38, v40, v41, v42, v43, v44, v45, v46;
      v39, v47, v48, v49, v50, v51, v52, v53;
      sub_1BD0DE19C(v11, v14, &qword_1EBD520A0, &qword_1BE0B9840);
      sub_1BD25A968(v11, type metadata accessor for Passes);
      v54 = type metadata accessor for AvailablePass(0);
      if ((*(*(v54 - 8) + 48))(v14, 1, v54) == 1)
      {

        sub_1BD0DE53C(v14, &qword_1EBD520A0, &qword_1BE0B9840);
        return;
      }

      sub_1BD25A3E0(v14, v8, type metadata accessor for WrappedPass);
      sub_1BD25A968(v14, type metadata accessor for AvailablePass);
      v55 = WrappedPass.secureElementPass.getter();
      sub_1BD25A968(v8, type metadata accessor for WrappedPass);
      if (v55)
      {
        v56 = v55;
        v57 = [v56 uniqueID];
        if (!v57)
        {
          __break(1u);
LABEL_21:
          type metadata accessor for PresentationContext(0);
          sub_1BD25AAB4(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
          sub_1BE04EEB4();
          __break(1u);
          return;
        }

        v58 = v57;

        v59 = [v37 paymentOfferCriteriaForPassUniqueID:v58 type:1];
        if (v59)
        {
          objc_opt_self();
          v60 = swift_dynamicCastObjCClass();
          if (!v60)
          {

            return;
          }

          v61 = v60;
          v95 = v55;
          LOBYTE(v96) = 0x80;
          v62 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
          v63 = v56;
          v64 = v59;
          v65 = v37;
          v66 = v61;
          v67 = v65;
          v68 = sub_1BD8D1EE0(&v95, v37, v66);

          v69 = a2 + *(v4 + 84);
          v71 = *(v69 + 8);
          v95 = *v69;
          v70 = v95;
          v96 = v71;
          v94 = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390, &qword_1BE0F2820);
          sub_1BE0516B4();
          v95 = v70;
          v96 = v71;
          sub_1BE0516A4();
          v72 = v94;
          if (!v94)
          {
LABEL_15:

            return;
          }

          v73 = *(a2 + *(v4 + 88));
          if (v73)
          {
            v74 = v93;
            sub_1BD25A3E0(a2, v93, type metadata accessor for PaymentSheet);
            v75 = (*(v92[0] + 80) + 16) & ~*(v92[0] + 80);
            v76 = swift_allocObject();
            sub_1BD25AAFC(v74, v76 + v75, type metadata accessor for PaymentSheet);
            v77 = sub_1BE048964();
            sub_1BD8C1B80(v77, 0, sub_1BD25A0EC, v76);
            v76, v78, v79, v80, v81, v82, v83, v84;

            v73, v85, v86, v87, v88, v89, v90, v91;
            goto LABEL_15;
          }

          goto LABEL_21;
        }
      }
    }
  }
}

void sub_1BD256290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50, &qword_1BE0F2290);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v29 - v8);
  sub_1BD0DE19C(a1, v29 - v8, &unk_1EBD57C50, &qword_1BE0F2290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    if (*v9)
    {
      v11 = v10;
      v12 = sub_1BE04A844();

      v13 = (a2 + *(type metadata accessor for PaymentSheet(0) + 80));
      v14 = v13[1];
      v30 = *v13;
      v15 = v30;
      v31 = v14;
      v29[1] = v12;
      sub_1BE048964();
      v16 = v12;
      v17 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
      sub_1BE0516B4();

      v14, v18, v19, v20, v21, v22, v23, v24;
    }
  }

  else
  {
    sub_1BD25AAFC(v9, v6, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    v25 = *(v6 + 1);
    if (v25)
    {
      v26 = v25;
      sub_1BD3918A4(v25);
      v27 = [v26 type];
      if (v27 != 2)
      {
        if (v27 != 1 || (objc_opt_self(), (v28 = swift_dynamicCastObjCClass()) == 0) || ([v28 isPreconfiguredOffer] & 1) == 0)
        {
          sub_1BD258CE4(1);
        }
      }
    }

    sub_1BD25A968(v6, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
  }
}

uint64_t sub_1BD2564E8(uint64_t *a1, uint64_t a2)
{
  sub_1BD0EE87C(*a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD389E8, &qword_1BE0B7520);
  return sub_1BE0516B4();
}

uint64_t sub_1BD256570(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A258, &qword_1BE0BA2B8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  v16 = sub_1BE04C614();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    (*(v17 + 104))(v20, *MEMORY[0x1E69BC8D8], v16, v18);
    sub_1BD254B98(v20);
    return (*(v17 + 8))(v20, v16);
  }

  type metadata accessor for PaymentSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  v26[1] = a2;
  sub_1BE0516A4();
  (*(v17 + 104))(v12, *MEMORY[0x1E69BC8D8], v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  v22 = *(v4 + 48);
  sub_1BD0DE19C(v15, v6, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BD0DE19C(v12, &v6[v22], &qword_1EBD3D520, &qword_1BE0C12E0);
  v23 = *(v17 + 48);
  if (v23(v6, 1, v16) != 1)
  {
    sub_1BD0DE19C(v6, v9, &qword_1EBD3D520, &qword_1BE0C12E0);
    if (v23(&v6[v22], 1, v16) != 1)
    {
      (*(v17 + 32))(v20, &v6[v22], v16);
      sub_1BD25AAB4(&qword_1EBD3A260, MEMORY[0x1E69BC8F0], MEMORY[0x1E69BC8F8]);
      v24 = sub_1BE052334();
      v25 = *(v17 + 8);
      v25(v20, v16);
      sub_1BD0DE53C(v12, &qword_1EBD3D520, &qword_1BE0C12E0);
      sub_1BD0DE53C(v15, &qword_1EBD3D520, &qword_1BE0C12E0);
      v25(v9, v16);
      result = sub_1BD0DE53C(v6, &qword_1EBD3D520, &qword_1BE0C12E0);
      if ((v24 & 1) == 0)
      {
        return result;
      }

      return sub_1BD258CE4(1);
    }

    sub_1BD0DE53C(v12, &qword_1EBD3D520, &qword_1BE0C12E0);
    sub_1BD0DE53C(v15, &qword_1EBD3D520, &qword_1BE0C12E0);
    (*(v17 + 8))(v9, v16);
    return sub_1BD0DE53C(v6, &qword_1EBD3A258, &qword_1BE0BA2B8);
  }

  sub_1BD0DE53C(v12, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BD0DE53C(v15, &qword_1EBD3D520, &qword_1BE0C12E0);
  if (v23(&v6[v22], 1, v16) != 1)
  {
    return sub_1BD0DE53C(v6, &qword_1EBD3A258, &qword_1BE0BA2B8);
  }

  sub_1BD0DE53C(v6, &qword_1EBD3D520, &qword_1BE0C12E0);
  return sub_1BD258CE4(1);
}

uint64_t sub_1BD256A50@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v184 = &v176[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v176[-v11];
  v12 = sub_1BE04FB64();
  v201 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v200 = &v176[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v185 = &v176[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v188 = &v176[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v176[-v19];
  v20 = type metadata accessor for Passes(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v195 = &v176[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v176[-v24];
  v203 = type metadata accessor for SheetButton(0);
  MEMORY[0x1EEE9AC00](v203);
  v26 = &v176[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v197 = &v176[-v28];
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521E0, &qword_1BE0C5FF0);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v176[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v189 = &v176[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v196 = &v176[-v33];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v176[-v35];
  MEMORY[0x1EEE9AC00](v37);
  v202 = &v176[-v38];
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v176[-v40];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3D0, &qword_1BE0C5FF8);
  MEMORY[0x1EEE9AC00](v42);
  v204 = &v176[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48.n128_f64[0] = MEMORY[0x1EEE9AC00](v44);
  if (a1)
  {
    v190 = &v176[-v47];
    v191 = v46;
    v192 = v45;
    v181 = v12;
    v193 = a1;
    v194 = a3;
    v49 = a2;
    v180 = *(*(v4 + 8) + qword_1EBDAB308);
    KeyPath = swift_getKeyPath();
    v51 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(v41);
    KeyPath, v52, v53, v54, v55, v56, v57, v58;
    v51, v59, v60, v61, v62, v63, v64, v65;
    (*(v21 + 56))(v41, 0, 1, v20);
    sub_1BE04C8E4();
    v66 = swift_getKeyPath();
    v67 = swift_getKeyPath();
    sub_1BE04D8B4(&v208);
    v66, v68, v69, v70, v71, v72, v73, v74;
    v67, v75, v76, v77, v78, v79, v80, v81;
    v182 = v208;
    v82 = swift_getKeyPath();
    v83 = swift_getKeyPath();
    sub_1BE04D8B4(&v208);
    v82, v84, v85, v86, v87, v88, v89, v90;
    v83, v91, v92, v93, v94, v95, v96, v97;
    v98 = v208;
    v99 = sub_1BD2DF874();
    if (!PKOslo2024UIUpdatesEnabled())
    {

      sub_1BD0D4744(v193, v49, v106, v107, v108, v109, v110, v111);
      v112 = 1;
      v113 = v204;
LABEL_40:
      sub_1BD0DE53C(&v209, &qword_1EBD51EC0, &qword_1BE0B7120);
      sub_1BD0DE53C(v41, &unk_1EBD43B40, &qword_1BE0D42C0);
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521F0, &qword_1BE0C6048);
      (*(*(v166 - 8) + 56))(v113, v112, 1, v166);
      v167 = v190;
      sub_1BD0DE204(v113, v190, &qword_1EBD3F3D0, &qword_1BE0C5FF8);
      v168 = v167;
      v169 = v194;
      sub_1BD0DE204(v168, v194, &qword_1EBD3F3D0, &qword_1BE0C5FF8);
      return (*(v191 + 56))(v169, 0, 1, v192);
    }

    v178 = v98;
    v179 = v49;
    v177 = v99 & 1;
    v100 = v41;
    v101 = v202;
    sub_1BD0DE19C(v41, v202, &unk_1EBD43B40, &qword_1BE0D42C0);
    sub_1BD0DE19C(&v209, &v208, &qword_1EBD51EC0, &qword_1BE0B7120);
    v102 = *(v203 + 40);
    *&v26[v102] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE19C(v101, v36, &unk_1EBD43B40, &qword_1BE0D42C0);
    v103 = *(v21 + 48);
    if (v103(v36, 1, v20) == 1)
    {
      sub_1BD0DE53C(v36, &unk_1EBD43B40, &qword_1BE0D42C0);
    }

    else
    {
      v114 = v36;
      v115 = v187;
      sub_1BD25AAFC(v114, v187, type metadata accessor for Passes);
      if (v115[*(v20 + 24)])
      {
        v116 = v186;
        sub_1BD0DE19C(v115, v186, &qword_1EBD520A0, &qword_1BE0B9840);
        v117 = type metadata accessor for AvailablePass(0);
        v118 = (*(*(v117 - 8) + 48))(v116, 1, v117);
        sub_1BD0DE53C(v116, &qword_1EBD520A0, &qword_1BE0B9840);
        if (v118 == 1 && !*(*&v115[*(v20 + 28)] + 16))
        {
          v170 = v184;
          sub_1BD4941F8(v184);
          v171 = type metadata accessor for UnavailablePass(0);
          v172 = (*(*(v171 - 8) + 48))(v170, 1, v171);
          sub_1BD0DE53C(v170, &qword_1EBD3C3F8, &qword_1BE0DB080);
          sub_1BD25A968(v115, type metadata accessor for Passes);
          v119 = v202;
          if (v172 == 1 && (v182 & 1) != 0)
          {
            v129 = 6;
            goto LABEL_17;
          }

LABEL_14:
          sub_1BD0DE19C(&v208, &v205, &qword_1EBD51EC0, &qword_1BE0B7120);
          if (v206)
          {
            sub_1BD043990(&v205, v207);
            __swift_project_boxed_opaque_existential_1(v207, v207[3]);
            v120 = sub_1BE04C704();
            __swift_destroy_boxed_opaque_existential_0(v207, v121, v122, v123, v124, v125, v126, v127);
            v128 = v195;
            if (v120)
            {
              v129 = 5;
LABEL_17:
              v41 = v100;
LABEL_18:
              v130 = v196;
              v131 = v182;
LABEL_34:
              *v26 = v129;
              sub_1BD0DE19C(v119, v130, &unk_1EBD43B40, &qword_1BE0D42C0);
              if (v103(v130, 1, v20) == 1)
              {
                sub_1BD0DE53C(&v208, &qword_1EBD51EC0, &qword_1BE0B7120);
                sub_1BD0DE53C(v119, &unk_1EBD43B40, &qword_1BE0D42C0);
                sub_1BD0DE53C(v130, &unk_1EBD43B40, &qword_1BE0D42C0);
                v136 = 0;
                v137 = 0;
                v113 = v204;
              }

              else
              {
                v138 = v188;
                sub_1BD0DE19C(v130, v188, &qword_1EBD520A0, &qword_1BE0B9840);
                sub_1BD25A968(v130, type metadata accessor for Passes);
                v139 = type metadata accessor for AvailablePass(0);
                v140 = (*(*(v139 - 8) + 48))(v138, 1, v139);
                v113 = v204;
                if (v140 == 1)
                {
                  sub_1BD0DE53C(&v208, &qword_1EBD51EC0, &qword_1BE0B7120);
                  sub_1BD0DE53C(v119, &unk_1EBD43B40, &qword_1BE0D42C0);
                  sub_1BD0DE53C(v138, &qword_1EBD520A0, &qword_1BE0B9840);
                  v136 = 0;
                  v137 = 0;
                }

                else
                {
                  v136 = sub_1BD49C81C();
                  v137 = v141;
                  sub_1BD0DE53C(&v208, &qword_1EBD51EC0, &qword_1BE0B7120);
                  sub_1BD0DE53C(v119, &unk_1EBD43B40, &qword_1BE0D42C0);
                  sub_1BD25A968(v138, type metadata accessor for AvailablePass);
                }
              }

              *(v26 + 4) = v136;
              *(v26 + 5) = v137;
              v26[24] = v131;
              v142 = v178;
              *(v26 + 6) = v178;
              v143 = v193;
              v144 = v179;
              *(v26 + 1) = v193;
              *(v26 + 2) = v144;
              v26[56] = v177;
              v145 = v26;
              v146 = v197;
              sub_1BD25AAFC(v145, v197, type metadata accessor for SheetButton);
              sub_1BE052434();
              v148 = v147;
              sub_1BD0D44B8(v143, v144);
              sub_1BD25AAB4(&unk_1EBD52200, type metadata accessor for SheetButton, &unk_1BE0BE708);
              v149 = v142;
              v150 = v199;
              sub_1BE050DE4();
              v148, v151, v152, v153, v154, v155, v156, v157;
              sub_1BD25A968(v146, type metadata accessor for SheetButton);
              v158 = v200;
              sub_1BE04FB54();
              sub_1BD25A9C8();
              sub_1BD25AAB4(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
              v159 = v181;
              sub_1BE050894();

              sub_1BD0D4744(v143, v144, v160, v161, v162, v163, v164, v165);
              (*(v201 + 8))(v158, v159);
              sub_1BD0DE53C(v150, &unk_1EBD521E0, &qword_1BE0C5FF0);
              v112 = 0;
              goto LABEL_40;
            }
          }

          else
          {
            sub_1BD0DE53C(&v205, &qword_1EBD51EC0, &qword_1BE0B7120);
            v128 = v195;
          }

          v132 = v189;
          sub_1BD0DE19C(v119, v189, &unk_1EBD43B40, &qword_1BE0D42C0);
          if (v103(v132, 1, v20) == 1)
          {
            sub_1BD0DE53C(v132, &unk_1EBD43B40, &qword_1BE0D42C0);
          }

          else
          {
            sub_1BD25AAFC(v132, v128, type metadata accessor for Passes);
            if (*(v128 + *(v20 + 24)))
            {
              v133 = v185;
              sub_1BD0DE19C(v128, v185, &qword_1EBD520A0, &qword_1BE0B9840);
              v134 = type metadata accessor for AvailablePass(0);
              v135 = (*(*(v134 - 8) + 48))(v133, 1, v134);
              sub_1BD0DE53C(v133, &qword_1EBD520A0, &qword_1BE0B9840);
              if (v135 == 1 && !*(*(v128 + *(v20 + 28)) + 16))
              {
                v173 = v183;
                sub_1BD4941F8(v183);
                v174 = type metadata accessor for UnavailablePass(0);
                v175 = (*(*(v174 - 8) + 48))(v173, 1, v174);
                sub_1BD0DE53C(v173, &qword_1EBD3C3F8, &qword_1BE0DB080);
                sub_1BD25A968(v128, type metadata accessor for Passes);
                v41 = v100;
                if (v175 != 1)
                {
                  v129 = 4;
                  goto LABEL_18;
                }

LABEL_27:
                v129 = v180;
                v130 = v196;
                v131 = v182;
                if (v180 != 2)
                {
                  if (v180 || (v182 & 1) == 0)
                  {
                    if (v180 == 13)
                    {
                      v129 = 7;
                    }

                    else
                    {
                      v129 = 0;
                    }
                  }

                  else
                  {
                    v129 = 3;
                  }
                }

                goto LABEL_34;
              }
            }

            sub_1BD25A968(v128, type metadata accessor for Passes);
          }

          v41 = v100;
          goto LABEL_27;
        }
      }

      sub_1BD25A968(v115, type metadata accessor for Passes);
    }

    v119 = v202;
    goto LABEL_14;
  }

  v104 = *(v46 + 56);

  return v104(a3, 1, 1, v48);
}

uint64_t sub_1BD257B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3B0, &qword_1BE0C5F40);
  v128 = *(v3 - 8);
  v129 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v127 = &v113 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030, &qword_1BE0B7570);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v113 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A48, &qword_1BE0B7578);
  v125 = *(v6 - 8);
  v126 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v123 = &v113 - v9;
  v114 = type metadata accessor for PeerPaymentModel(0);
  v10 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v113 - v13);
  v15 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s14PaymentSummaryVMa(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = (&v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for PaymentTotalAmountItem(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3B8, &qword_1BE0C5F48);
  v119 = *(v24 - 8);
  v120 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v115 = &v113 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3C0, &qword_1BE0C5F50);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v132 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v131 = &v113 - v32;
  v117 = a1;
  v33 = *(a1 + 8) + qword_1EBDAAD68;
  [*(v33 + 32) fundingMode];
  [*(v33 + 32) fundingMode];
  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  sub_1BE04D8B4(v20);
  KeyPath, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v118 = v17;
  sub_1BD25A3E0(v20, v17, _s11TotalAmountVMa);
  sub_1BD25A968(v20, _s14PaymentSummaryVMa);
  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  sub_1BE04D8B4(v14);
  v50, v52, v53, v54, v55, v56, v57, v58;
  v59 = v51;
  v60 = v114;
  v59, v61, v62, v63, v64, v65, v66, v67;
  if ((*(v10 + 48))(v14, 1, v60))
  {
    sub_1BD0DE53C(v14, &qword_1EBD45480, &unk_1BE0B8C30);
  }

  else
  {
    v68 = v113;
    sub_1BD25A3E0(v14, v113, type metadata accessor for PeerPaymentModel);
    sub_1BD0DE53C(v14, &qword_1EBD45480, &unk_1BE0B8C30);
    v69 = (v68 + *(v60 + 24));
    v70 = v69[3];
    v143 = v69[2];
    v144 = v70;
    v71 = v69[5];
    v145 = v69[4];
    v146 = v71;
    v72 = v69[1];
    v141 = *v69;
    v142 = v72;
    sub_1BD0DE19C(&v141, v140, &unk_1EBD521D0, qword_1BE0BEDC0);
    sub_1BD25A968(v68, type metadata accessor for PeerPaymentModel);
    if (v141 != 1)
    {
      v73 = *(&v146 + 1);
      v110 = *(&v146 + 1);
      sub_1BD0DE53C(&v141, &unk_1EBD521D0, qword_1BE0BEDC0);
      if (!v73)
      {
        goto LABEL_5;
      }

      v111 = [v110 title];

      if (v111)
      {
        v73 = sub_1BE052434();
        v74 = v112;

        goto LABEL_6;
      }
    }
  }

  v73 = 0;
LABEL_5:
  v74 = 0;
LABEL_6:
  v75 = sub_1BD258594();
  v77 = v76;
  v78 = &v23[v21[6]];
  v79 = &v23[v21[7]];
  *&v140[0] = 0x7FEFFFFFFFFFFFFFLL;
  sub_1BE051694();
  v80 = *(&v141 + 1);
  *v79 = v141;
  *(v79 + 1) = v80;
  sub_1BD25AAFC(v118, v23, _s11TotalAmountVMa);
  v81 = &v23[v21[5]];
  *v81 = v73;
  v81[1] = v74;
  *v78 = v75;
  *(v78 + 1) = v77;
  LOBYTE(v75) = sub_1BE04CAE4();
  v82 = swift_getKeyPath();
  v83 = swift_allocObject();
  *(v83 + 16) = v75 & 1;
  v84 = v116;
  sub_1BD25A3E0(v23, v116, type metadata accessor for PaymentTotalAmountItem);
  v85 = v120;
  v86 = (v84 + *(v120 + 36));
  *v86 = v82;
  v86[1] = sub_1BD185ABC;
  v86[2] = v83;
  sub_1BD25A968(v23, type metadata accessor for PaymentTotalAmountItem);
  v87 = v115;
  sub_1BD25A370(v84, v115);
  v88 = v131;
  sub_1BD25A370(v87, v131);
  (*(v119 + 56))(v88, 0, 1, v85);
  sub_1BE051C64();
  v89 = MEMORY[0x1E6981CD0];
  v90 = MEMORY[0x1E6981CD8];
  sub_1BE04F694();
  *&v141 = v90;
  *(&v141 + 1) = v89;
  swift_getOpaqueTypeConformance2();
  sub_1BD0EEEE0();
  v91 = v123;
  sub_1BE051C84();
  sub_1BD2589C8(&v133);
  v92 = v132;
  sub_1BD0DE19C(v88, v132, &qword_1EBD3F3C0, &qword_1BE0C5F50);
  v94 = v124;
  v93 = v125;
  v95 = *(v125 + 16);
  v96 = v126;
  v95(v124, v91, v126);
  v97 = v92;
  v98 = v127;
  sub_1BD0DE19C(v97, v127, &qword_1EBD3F3C0, &qword_1BE0C5F50);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3C8, &qword_1BE0C5FE8);
  v95((v98 + *(v99 + 48)), v94, v96);
  v100 = (v98 + *(v99 + 64));
  v101 = v137;
  v102 = v138;
  v140[4] = v137;
  v140[5] = v138;
  v103 = v139;
  v140[6] = v139;
  v104 = v134;
  v140[0] = v133;
  v140[1] = v134;
  v106 = v135;
  v105 = v136;
  v140[2] = v135;
  v140[3] = v136;
  *v100 = v133;
  v100[1] = v104;
  v100[4] = v101;
  v100[5] = v102;
  v100[2] = v106;
  v100[3] = v105;
  v100[6] = v103;
  sub_1BD0EEF94(v140, &v141);
  v107 = *(v93 + 8);
  v107(v91, v96);
  sub_1BD0DE53C(v131, &qword_1EBD3F3C0, &qword_1BE0C5F50);
  v145 = v137;
  v146 = v138;
  v147 = v139;
  v141 = v133;
  v142 = v134;
  v143 = v135;
  v144 = v136;
  sub_1BD0EEFF0(&v141);
  v107(v94, v96);
  sub_1BD0DE53C(v132, &qword_1EBD3F3C0, &qword_1BE0C5F50);
  v108 = v130;
  sub_1BD0DE204(v98, v130, &qword_1EBD3F3B0, &qword_1BE0C5F40);
  return (*(v128 + 56))(v108, 0, 1, v129);
}

uint64_t (*sub_1BD258594())()
{
  v1 = type metadata accessor for PaymentSheet(0);
  v53 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v54 = v2;
  v56 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _s11TotalAmountVMa(0);
  MEMORY[0x1EEE9AC00](v57);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s14PaymentSummaryVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PeerPaymentModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v52 - v13);
  v55 = v0;
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(v14);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1BD0DE53C(v14, &qword_1EBD45480, &unk_1BE0B8C30);
  }

  else
  {
    sub_1BD25A3E0(v14, v11, type metadata accessor for PeerPaymentModel);
    sub_1BD0DE53C(v14, &qword_1EBD45480, &unk_1BE0B8C30);
    v31 = v11[*(v8 + 64)];
    sub_1BD25A968(v11, type metadata accessor for PeerPaymentModel);
    if (v31)
    {
      return 0;
    }
  }

  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  sub_1BE04D8B4(v7);
  v32, v34, v35, v36, v37, v38, v39, v40;
  v33, v41, v42, v43, v44, v45, v46, v47;
  sub_1BD25A3E0(v7, v4, _s11TotalAmountVMa);
  sub_1BD25A968(v7, _s14PaymentSummaryVMa);
  LOBYTE(v32) = v4[*(v57 + 48)];
  sub_1BD25A968(v4, _s11TotalAmountVMa);
  if (v32)
  {
    return 0;
  }

  v49 = v56;
  sub_1BD25A3E0(v55, v56, type metadata accessor for PaymentSheet);
  v50 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v51 = swift_allocObject();
  sub_1BD25AAFC(v49, v51 + v50, type metadata accessor for PaymentSheet);
  return sub_1BD25A8DC;
}

uint64_t sub_1BD2589C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1BD25A3E0(v1, &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentSheet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1BD25AAFC(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for PaymentSheet);
  v17 = 0;
  KeyPath = swift_getKeyPath();
  v16[0] = 0;
  sub_1BE04CDA4();
  sub_1BD25AAB4(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  sub_1BE048964();
  v9 = sub_1BE04EEC4();
  v11 = v10;
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD25AAB4(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  result = sub_1BE04E954();
  v13 = v17;
  v14 = v16[0];
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = sub_1BD31FF5C;
  *(a1 + 24) = 0;
  *(a1 + 32) = v13;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v14;
  *(a1 + 56) = v9;
  *(a1 + 64) = v11;
  *(a1 + 72) = sub_1BD25A310;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x4014000000000000;
  return result;
}

uint64_t sub_1BD258BF8()
{
  v0 = sub_1BE04C614();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BC8B8], v0, v2);
  sub_1BD254B98(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BD258CE4(int a1)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-v5];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = sub_1BE04C614();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25[-v15];
  v17 = type metadata accessor for PaymentSheet(0);
  v18 = *(v17 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  v28 = v18;
  v29 = v1;
  sub_1BE0516A4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1BD0DE53C(v9, &qword_1EBD3D520, &qword_1BE0C12E0);
  }

  (*(v11 + 32))(v16, v9, v10);
  if (v26)
  {
    (*(v11 + 16))(v13, v16, v10);
    v20 = (*(v11 + 88))(v13, v10);
    if (v20 == *MEMORY[0x1E69BC8B8])
    {
      v21 = 3;
    }

    else if (v20 == *MEMORY[0x1E69BC8E0])
    {
      v21 = 7;
    }

    else if (v20 == *MEMORY[0x1E69BC8B0])
    {
      v21 = 6;
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      v21 = 2;
    }

    sub_1BD6B2184(1, v21, 0);
  }

  v22 = (v29 + *(v17 + 56));
  v23 = *v22;
  v24 = *(v22 + 1);
  v31 = v23;
  v32 = v24;
  v30 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  (*(v11 + 56))(v6, 1, 1, v10);
  sub_1BD0DE19C(v6, v27, &qword_1EBD3D520, &qword_1BE0C12E0);
  sub_1BE0516B4();
  sub_1BD0DE53C(v6, &qword_1EBD3D520, &qword_1BE0C12E0);
  return (*(v11 + 8))(v16, v10);
}

void sub_1BD25908C(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD25910C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

unint64_t sub_1BD259180()
{
  result = qword_1EBD3F1F8;
  if (!qword_1EBD3F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F1F8);
  }

  return result;
}

void sub_1BD2591FC(uint64_t a1)
{
  sub_1BD259758(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0EDF50(319);
    if (v2 <= 0x3F)
    {
      sub_1BD0EDFE4(319);
      if (v3 <= 0x3F)
      {
        sub_1BD259964(319, &qword_1EBD3F218, type metadata accessor for PaymentAuthorizationModel, type metadata accessor for PaymentAuthorizationStateMachineWrapper);
        if (v4 <= 0x3F)
        {
          sub_1BD2599C8(319, &qword_1EBD3F220, &qword_1EBD3F228, &qword_1BE0C5B10, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1BD259964(319, &qword_1EBD3F230, type metadata accessor for PKMerchantCapability, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1BD259964(319, &qword_1EBD3F238, type metadata accessor for ProvisioningAvailableCredentialsProvider, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1BD2599C8(319, &qword_1EBD388E0, &qword_1EBD51EC0, &qword_1BE0B7120, MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  sub_1BD2599C8(319, &qword_1EBD388E8, &qword_1EBD55590, &qword_1BE0B7128, MEMORY[0x1E6981790]);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD2599C8(319, &qword_1EBD3A210, &qword_1EBD3D520, &qword_1BE0C12E0, MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      sub_1BD259914(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                      if (v11 <= 0x3F)
                      {
                        sub_1BD259914(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                        if (v12 <= 0x3F)
                        {
                          sub_1BD2599C8(319, &qword_1EBD3F240, &qword_1EBD3F1E8, &qword_1BE0C5958, MEMORY[0x1E6981790]);
                          if (v13 <= 0x3F)
                          {
                            sub_1BD2599C8(319, &qword_1EBD39360, &qword_1EBD49710, &qword_1BE0B8580, MEMORY[0x1E6981790]);
                            if (v14 <= 0x3F)
                            {
                              sub_1BD2599C8(319, &qword_1EBD3F248, &unk_1EBD43B50, &qword_1BE102360, MEMORY[0x1E6981790]);
                              if (v15 <= 0x3F)
                              {
                                sub_1BD1031B4(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_1BD2597EC(319);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1BD259880(319);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1BD259964(319, &qword_1EBD388F8, MEMORY[0x1E69BC9D0], MEMORY[0x1E697DCC0]);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1BD259914(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1BD259964(319, &qword_1EBD38900, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1BD2599C8(319, &qword_1EBD38908, &qword_1EBD38898, &unk_1BE0B72C0, MEMORY[0x1E697DCC0]);
                                            if (v22 <= 0x3F)
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
    }
  }
}

void sub_1BD259758(uint64_t a1)
{
  if (!qword_1EBD3F210)
  {
    type metadata accessor for PaymentAuthorizationModel(255);
    sub_1BD25AAB4(&qword_1EBD3F1F0, type metadata accessor for PaymentAuthorizationModel, MEMORY[0x1E69BCA10]);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3F210);
    }
  }
}

void sub_1BD2597EC(uint64_t a1)
{
  if (!qword_1EBD3F250)
  {
    type metadata accessor for BankConnectInterface();
    sub_1BD25AAB4(&qword_1EBD3F258, type metadata accessor for BankConnectInterface, &unk_1BE104908);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3F250);
    }
  }
}

void sub_1BD259880(uint64_t a1)
{
  if (!qword_1EBD59630)
  {
    sub_1BD250AA8();
    sub_1BD25AAB4(&qword_1EBD35E40, sub_1BD250AA8, &protocol conformance descriptor for PKPaymentSheetExperiment);
    v1 = sub_1BE04EED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD59630);
    }
  }
}

void sub_1BD259914(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BD259964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD2599C8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

double sub_1BD259A48@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD2DFA44(v4, a1);
}

unint64_t sub_1BD259AB8()
{
  result = qword_1EBD3F2E0;
  if (!qword_1EBD3F2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F2D8, &qword_1BE0C5C28);
    sub_1BD259B44();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F2E0);
  }

  return result;
}

unint64_t sub_1BD259B44()
{
  result = qword_1EBD3F2E8;
  if (!qword_1EBD3F2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F2F0, &qword_1BE0C5C30);
    sub_1BD259BD0();
    sub_1BD259C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F2E8);
  }

  return result;
}

unint64_t sub_1BD259BD0()
{
  result = qword_1EBD3F2F8;
  if (!qword_1EBD3F2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F300, &qword_1BE0C5C38);
    sub_1BD259C5C();
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F2F8);
  }

  return result;
}

unint64_t sub_1BD259C5C()
{
  result = qword_1EBD3F308;
  if (!qword_1EBD3F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F310, &unk_1BE0F2320);
    sub_1BD0DE4F4(&qword_1EBD3F318, &qword_1EBD3F320, &qword_1BE0C5C40, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F308);
  }

  return result;
}

uint64_t sub_1BD259D6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD2540E0(a1, v6, a2);
}

unint64_t sub_1BD259DEC()
{
  result = qword_1EBD3F348;
  if (!qword_1EBD3F348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F278, &qword_1BE0C5B80);
    sub_1BD0DE4F4(&qword_1EBD3F350, &qword_1EBD3F270, &qword_1BE0C5B78, &unk_1BE10CBC8);
    sub_1BD0DE4F4(&qword_1EBD3F358, &qword_1EBD3F360, &qword_1BE0C5CD8, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F348);
  }

  return result;
}

uint64_t sub_1BD259ED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD255598(v4, a1);
}

void sub_1BD259F58(uint64_t a1)
{
  type metadata accessor for PaymentSheet(0);

  sub_1BD25593C(a1);
}

uint64_t sub_1BD259FE0(uint64_t *a1)
{
  v3 = *(type metadata accessor for PaymentSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD2564E8(a1, v4);
}

uint64_t sub_1BD25A068(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PaymentSheet(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1BD25A184(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

uint64_t sub_1BD25A28C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PaymentSheet(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1BD25A370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3B8, &qword_1BE0C5F48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD25A3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for PaymentSheet(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 24), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + 32), v17, v18, v19, v20, v21, v22, v23;

  *(v2 + 56), v24, v25, v26, v27, v28, v29, v30;
  *(v2 + 80), v31, v32, v33, v34, v35, v36, v37;
  if (*(v2 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 88), v38, v39, v40, v41, v42, v43, v44);
  }

  *(v2 + 128), v38, v39, v40, v41, v42, v43, v44;
  v52 = *(v2 + 144);
  if (v52)
  {
    v52, v45, v46, v47, v48, v49, v50, v51;
    *(v2 + 160), v53, v54, v55, v56, v57, v58, v59;
    *(v2 + 176), v60, v61, v62, v63, v64, v65, v66;
  }

  *(v2 + 184), v45, v46, v47, v48, v49, v50, v51;
  v67 = v2 + v1[13];
  v68 = sub_1BE04C614();
  v69 = *(v68 - 8);
  v70 = *(v69 + 48);
  if (!v70(v67, 1, v68))
  {
    (*(v69 + 8))(v67, v68);
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3A180, &qword_1BE0BA0C8);
  *(v67 + *(v71 + 28)), v72, v73, v74, v75, v76, v77, v78;
  *(v2 + v1[14] + 8), v79, v80, v81, v82, v83, v84, v85;
  v86 = v2 + v1[15];
  if (!v70(v86, 1, v68))
  {
    (*(v69 + 8))(v86, v68);
  }

  *(v86 + *(v71 + 28)), v87, v88, v89, v90, v91, v92, v93;
  *(v2 + v1[16] + 8), v94, v95, v96, v97, v98, v99, v100;
  *(v2 + v1[17] + 8), v101, v102, v103, v104, v105, v106, v107;
  v108 = (v2 + v1[18]);

  v108[1], v109, v110, v111, v112, v113, v114, v115;
  *(v2 + v1[19] + 8), v116, v117, v118, v119, v120, v121, v122;
  v123 = (v2 + v1[20]);

  v123[1], v124, v125, v126, v127, v128, v129, v130;
  v131 = (v2 + v1[21]);

  v131[1], v132, v133, v134, v135, v136, v137, v138;
  *(v2 + v1[22]), v139, v140, v141, v142, v143, v144, v145;
  sub_1BD0D45CC(*(v2 + v1[23]), *(v2 + v1[23] + 8), *(v2 + v1[23] + 16), v146, v147, v148, v149, v150);

  v151 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v159 = sub_1BE04C884();
    (*(*(v159 - 8) + 8))(v2 + v151, v159);
  }

  else
  {
    *(v2 + v151), v152, v153, v154, v155, v156, v157, v158;
  }

  sub_1BD0D4604(*(v2 + v1[26]), *(v2 + v1[26] + 8), v160, v161, v162, v163, v164, v165);
  v166 = v1[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v174 = sub_1BE04EB24();
    (*(*(v174 - 8) + 8))(v2 + v166, v174);
  }

  else
  {
    *(v2 + v166), v167, v168, v169, v170, v171, v172, v173;
  }

  v175 = v1[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888, &qword_1BE0B7208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v183 = sub_1BE04FD04();
    v184 = *(v183 - 8);
    if (!(*(v184 + 48))(v2 + v175, 1, v183))
    {
      (*(v184 + 8))(v2 + v175, v183);
    }
  }

  else
  {
    *(v2 + v175), v176, v177, v178, v179, v180, v181, v182;
  }

  sub_1BD0D4604(*(v2 + v1[29]), *(v2 + v1[29] + 8), v185, v186, v187, v188, v189, v190);

  return swift_deallocObject();
}

uint64_t sub_1BD25A8F4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD25A968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD25A9C8()
{
  result = qword_1EBD3F3D8;
  if (!qword_1EBD3F3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD521E0, &qword_1BE0C5FF0);
    sub_1BD25AAB4(&unk_1EBD52200, type metadata accessor for SheetButton, &unk_1BE0BE708);
    sub_1BD25AAB4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F3D8);
  }

  return result;
}

uint64_t sub_1BD25AAB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD25AAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD25AB64()
{
  result = qword_1EBD3F3E8;
  if (!qword_1EBD3F3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F3F0, &unk_1BE0C6080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F2C8, &qword_1BE0C5BD0);
    sub_1BD0DE4F4(&qword_1EBD3F388, &qword_1EBD3F2C8, &qword_1BE0C5BD0, MEMORY[0x1E697C278]);
    swift_getOpaqueTypeConformance2();
    sub_1BD25AAB4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F3E8);
  }

  return result;
}

uint64_t type metadata accessor for PaymentPassUnavailableItem(uint64_t a1)
{
  result = qword_1EBD3F3F8;
  if (!qword_1EBD3F3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD25AD08(uint64_t a1)
{
  type metadata accessor for UnavailablePass(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0FA9D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD25ADA8@<X0>(void *a1@<X8>)
{
  v79 = a1;
  v2 = sub_1BE04C744();
  v74 = *(v2 - 8);
  v75 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v73 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F408, &qword_1BE0C6108);
  v76 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v72 = v65 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F410, &qword_1BE0C6110);
  v71 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v7 = v65 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F418, &qword_1BE0C6118);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F420, &qword_1BE0C6120);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v65 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F428, &qword_1BE0C6128);
  MEMORY[0x1EEE9AC00](v82);
  v13 = v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F430, &qword_1BE0C6130);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v65 - v16;
  v18 = type metadata accessor for PaymentPassUnavailableItem(0);
  v19 = (v1 + *(v18 + 20));
  v20 = *v19;
  v77 = v9;
  if (v20)
  {
    v76 = v65;
    v21 = v19[1];
    MEMORY[0x1EEE9AC00](v18);
    sub_1BD0D44B8(v20, v21);
    v22 = sub_1BD0DE4F4(&qword_1EBD3F468, &qword_1EBD3F408, &qword_1BE0C6108, MEMORY[0x1E69BC928]);
    sub_1BE048964();
    sub_1BE051704();
    (*(v15 + 16))(v11, v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3F460, &qword_1EBD3F430, &qword_1BE0C6130, MEMORY[0x1E697D680]);
    v83 = v4;
    v84 = v22;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    sub_1BD057F64(v13, v80);
    swift_storeEnumTagMultiPayload();
    sub_1BD25BFE4();
    sub_1BE04F9A4();
    sub_1BD0D4744(v20, v21, v23, v24, v25, v26, v27, v28);
    sub_1BD057FD4(v13);
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v66 = v11;
    v67 = v7;
    v68 = v14;
    v69 = v13;
    v30 = v72;
    v31 = v73;
    v70 = v4;
    v32 = (v1 + *(v18 + 24));
    v33 = *v32;
    if (*v32)
    {
      v65[1] = v65;
      v34 = v32[1];
      MEMORY[0x1EEE9AC00](v18);
      v36 = MEMORY[0x1EEE9AC00](v35);
      (*(v37 + 104))(v31, *MEMORY[0x1E69BC940], v36);
      type metadata accessor for PassImage(0);
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F438, &qword_1BE0C6138);
      sub_1BD25BEA8();
      sub_1BD25BF00();
      v38 = v30;
      sub_1BE04C6A4();
      v39 = swift_allocObject();
      v40 = v33;
      v39[2] = v33;
      v39[3] = v34;
      v41 = sub_1BD0DE4F4(&qword_1EBD3F468, &qword_1EBD3F408, &qword_1BE0C6108, MEMORY[0x1E69BC928]);
      sub_1BE048964();
      v42 = v67;
      v43 = v70;
      sub_1BE0509D4();
      v39, v44, v45, v46, v47, v48, v49, v50;
      (v76[1])(v38, v43);
      v51 = v71;
      v52 = v78;
      (*(v71 + 16))(v66, v42, v78);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD3F460, &qword_1EBD3F430, &qword_1BE0C6130, MEMORY[0x1E697D680]);
      v83 = v43;
      v84 = v41;
      swift_getOpaqueTypeConformance2();
      v53 = v69;
      sub_1BE04F9A4();
      sub_1BD057F64(v53, v80);
      swift_storeEnumTagMultiPayload();
      sub_1BD25BFE4();
      sub_1BE04F9A4();
      sub_1BD0D4744(v40, v34, v54, v55, v56, v57, v58, v59);
      sub_1BD057FD4(v53);
      return (*(v51 + 8))(v42, v52);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v18);
      v61 = MEMORY[0x1EEE9AC00](v60);
      (*(v62 + 104))(v31, *MEMORY[0x1E69BC940], v61);
      type metadata accessor for PassImage(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F438, &qword_1BE0C6138);
      sub_1BD25BEA8();
      sub_1BD25BF00();
      sub_1BE04C6A4();
      v63 = v76;
      v64 = v70;
      (v76[2])(v80, v30, v70);
      swift_storeEnumTagMultiPayload();
      sub_1BD25BFE4();
      sub_1BD0DE4F4(&qword_1EBD3F468, &qword_1EBD3F408, &qword_1BE0C6108, MEMORY[0x1E69BC928]);
      sub_1BE04F9A4();
      return (v63[1])(v30, v64);
    }
  }
}

uint64_t sub_1BD25B76C(uint64_t a1)
{
  v2 = sub_1BE04C744();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1;
  v9 = a1;
  if (*(a1 + *(type metadata accessor for PaymentPassUnavailableItem(0) + 20)))
  {
    v6 = MEMORY[0x1E69BC950];
  }

  else
  {
    v6 = MEMORY[0x1E69BC940];
  }

  (*(v3 + 104))(v5, *v6, v2);
  type metadata accessor for PassImage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F438, &qword_1BE0C6138);
  sub_1BD25BEA8();
  sub_1BD25BF00();
  return sub_1BE04C6A4();
}

double sub_1BD25B8EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PassImage(0);
  sub_1BD0E8EA0(a1, a2 + v4[6]);
  PKPassFrontFaceContentSize();
  *(a2 + 24) = 0x4044000000000000;
  result = v6 / v5 * 40.0;
  *(a2 + 32) = result;
  *a2 = sub_1BD70C870;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + v4[7]) = 1;
  *(a2 + v4[8]) = 1911;
  return result;
}

double sub_1BD25B984@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F7C4();
  v17 = 1;
  sub_1BD25BA9C(&v10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v18 = v10;
  v19 = v11;
  v25 = v15;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[0] = v10;
  v24[1] = v11;
  sub_1BD25C11C(&v18, v9);
  sub_1BD25C18C(v24);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v4 = v17;
  KeyPath = swift_getKeyPath();
  v6 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v6;
  *(a2 + 81) = *&v16[64];
  *(a2 + 96) = *&v16[79];
  result = *v16;
  v8 = *&v16[16];
  *(a2 + 17) = *v16;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 33) = v8;
  *(a2 + 112) = KeyPath;
  *(a2 + 120) = 0;
  return result;
}

void sub_1BD25BA9C(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v159 = *(v2 - 8);
  v160 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v158 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1BD4930A8(v3);
  v164 = v5;
  v157 = sub_1BD0DDEBC();
  v6 = sub_1BE0506C4();
  v40 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_1BE050324();
  v13 = sub_1BE0505F4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v12, v14, v16, v18, v20, v21, v22, v23;
  sub_1BD0DDF10(v6, v40, (v9 & 1), v24, v25, v26, v27, v28);
  v11, v29, v30, v31, v32, v33, v34, v35;
  v36 = sub_1BE051224();
  v37 = sub_1BE050564();
  v161 = v38;
  LODWORD(v40) = v39;
  v42 = v41;
  v36, v38, v39, v41, v43, v44, v45, v46;
  sub_1BD0DDF10(v13, v15, (v17 & 1), v47, v48, v49, v50, v51);
  v19, v52, v53, v54, v55, v56, v57, v58;
  KeyPath = swift_getKeyPath();
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  if (PKOslo2024UIUpdatesEnabled())
  {
    goto LABEL_4;
  }

  HIDWORD(v153) = v40;
  v154 = KeyPath;
  v155 = v37;
  v156 = v42;
  v65 = v158;
  v64 = v159;
  v66 = v160;
  (*(v159 + 104))(v158, *MEMORY[0x1E69B8068], v160);
  v67 = PKPassKitBundle();
  if (v67)
  {
    v68 = v67;
    v69 = sub_1BE04B6F4();
    v71 = v70;

    (*(v64 + 8))(v65, v66);
    v163 = v69;
    v164 = v71;
    v72 = sub_1BE0506C4();
    v74 = v73;
    LOBYTE(v71) = v75;
    v77 = v76;
    v78 = sub_1BE0502F4();
    v40 = sub_1BE0505F4();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v78, v79, v81, v83, v85, v86, v87, v88;
    sub_1BD0DDF10(v72, v74, (v71 & 1), v89, v90, v91, v92, v93);
    v77, v94, v95, v96, v97, v98, v99, v100;
    v101 = sub_1BE051264();
    v102 = v84;
    v60 = sub_1BE050564();
    v61 = v103;
    LOBYTE(v71) = v104;
    v63 = v105;
    v101, v103, v104, v105, v106, v107, v108, v109;
    sub_1BD0DDF10(v40, v80, (v82 & 1), v110, v111, v112, v113, v114);
    v102, v115, v116, v117, v118, v119, v120, v121;
    v62 = v71 & 1;
    sub_1BD0D7F18(v60, v61, v71 & 1);
    sub_1BE048C84();
    v37 = v155;
    v42 = v156;
    KeyPath = v154;
    LOBYTE(v40) = BYTE4(v153);
LABEL_4:
    v122 = (v40 & 1);
    LOBYTE(v163) = v122;
    v162 = 0;
    v123 = v161;
    sub_1BD0D7F18(v37, v161, v122);
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BD1969AC(v60, v61, v62, v63);
    sub_1BD1969F0(v60, v61, v62, v63, v124, v125, v126, v127);
    v128 = v163;
    v129 = v162;
    *a1 = v37;
    *(a1 + 8) = v123;
    *(a1 + 16) = v128;
    *(a1 + 24) = v42;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 1;
    *(a1 + 48) = v129;
    *(a1 + 56) = v60;
    *(a1 + 64) = v61;
    *(a1 + 72) = v62;
    *(a1 + 80) = v63;
    sub_1BD1969F0(v60, v61, v62, v63, v130, v131, v132, v133);
    sub_1BD0DDF10(v37, v123, v122, v134, v135, v136, v137, v138);
    KeyPath, v139, v140, v141, v142, v143, v144, v145;
    v42, v146, v147, v148, v149, v150, v151, v152;
    return;
  }

  __break(1u);
}

unint64_t sub_1BD25BEA8()
{
  result = qword_1EBD39FE0;
  if (!qword_1EBD39FE0)
  {
    type metadata accessor for PassImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39FE0);
  }

  return result;
}

unint64_t sub_1BD25BF00()
{
  result = qword_1EBD3F440;
  if (!qword_1EBD3F440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F438, &qword_1BE0C6138);
    sub_1BD0DE4F4(&qword_1EBD3F448, &qword_1EBD3F450, &unk_1BE0C6140, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F440);
  }

  return result;
}

unint64_t sub_1BD25BFE4()
{
  result = qword_1EBD3F458;
  if (!qword_1EBD3F458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F428, &qword_1BE0C6128);
    sub_1BD0DE4F4(&qword_1EBD3F460, &qword_1EBD3F430, &qword_1BE0C6130, MEMORY[0x1E697D680]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F408, &qword_1BE0C6108);
    sub_1BD0DE4F4(&qword_1EBD3F468, &qword_1EBD3F408, &qword_1BE0C6108, MEMORY[0x1E69BC928]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F458);
  }

  return result;
}

uint64_t sub_1BD25C11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F470, &qword_1BE0C6150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD25C18C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F470, &qword_1BE0C6150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD25C1F4()
{
  result = qword_1EBD3F478;
  if (!qword_1EBD3F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F480, &qword_1BE0C61B8);
    sub_1BD25BFE4();
    sub_1BD0DE4F4(&qword_1EBD3F468, &qword_1EBD3F408, &qword_1BE0C6108, MEMORY[0x1E69BC928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIFlowItemDismissalConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BD25C380(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F488, &qword_1BE0C6250);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  if (*v1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F490, &qword_1BE0C6258);
  (*(*(v7 - 8) + 16))(v5, a1, v7);
  *&v5[*(v3 + 36)] = v6;
  sub_1BD25C49C();
  sub_1BE050A24();
  return sub_1BD25C58C(v5);
}

unint64_t sub_1BD25C49C()
{
  result = qword_1EBD3F498;
  if (!qword_1EBD3F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F488, &qword_1BE0C6250);
    sub_1BD25C528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F498);
  }

  return result;
}

unint64_t sub_1BD25C528()
{
  result = qword_1EBD3F4A0;
  if (!qword_1EBD3F4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F490, &qword_1BE0C6258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F4A0);
  }

  return result;
}

uint64_t sub_1BD25C58C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F488, &qword_1BE0C6250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD25C5F4()
{
  result = qword_1EBD3F4A8;
  if (!qword_1EBD3F4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3F4B0, qword_1BE0C6260);
    sub_1BD25C49C();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F4A8);
  }

  return result;
}

id sub_1BD25C680()
{
  ObjectType = swift_getObjectType();
  sub_1BD25C6C8(ObjectType, v2, v3, v4, v5, v6, v7, v8);
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void sub_1BD25C6C8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_isActive;
  if (*(v8 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_isActive) == 1)
  {
    v10 = OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion;
    if (*(v8 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_ownsPasscodeAssertion) == 1)
    {
      v11 = *(v8 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion);
      if (v11)
      {
        sub_1BE048964();
        sub_1BE04C244();
        v11, v12, v13, v14, v15, v16, v17, v18;
        v10 = OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion;
      }
    }

    v19 = *(v8 + v10);
    *(v8 + v10) = 0;
    v19, a2, a3, a4, a5, a6, a7, a8;
    *(v8 + v9) = 0;
  }

  v20 = [objc_opt_self() sharedInstance];
  if (v20)
  {
    v21 = v20;
    [v20 unregisterObserver_];
  }
}

double sub_1BD25C8F8(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04B944();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55100, &qword_1BE0F85D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v40 = *&v2[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_requirements];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F500, &unk_1BE0C62D0);
  sub_1BD126024(&qword_1EBD55110, &unk_1EBD3F500, &unk_1BE0C62D0);
  sub_1BE052674();
  v12 = sub_1BE04BDF4();
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_1BD0DE53C(v11, &unk_1EBD55100, &qword_1BE0F85D0);
  if (v13 == 1)
  {
    a1(0xD00000000000001CLL, 0x80000001BE11F740, 0, 1);
  }

  else
  {
    v15 = *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion];
    if (v15 && (v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_ownsPasscodeAssertion] & 1) == 0)
    {
      sub_1BE048964();
      if (sub_1BE04C224())
      {
        v27 = 0xD000000000000017;
        v28 = 0x80000001BE11F780;
        v29 = 1;
      }

      else
      {
        v28 = 0x80000001BE11F760;
        v27 = 0xD000000000000013;
        v29 = 0;
      }

      a1(v27, v28, 0, v29);
      v15, v30, v31, v32, v33, v34, v35, v36;
    }

    else
    {
      v16 = [objc_opt_self() sharedInstance];
      if (v16)
      {
        v17 = v16;
        [v16 registerObserver_];
      }

      sub_1BE04C264();
      sub_1BE04BB94();
      v18 = swift_allocObject();
      v18[2] = a1;
      v18[3] = a2;
      v18[4] = v3;
      sub_1BE048964();
      v19 = v3;
      MEMORY[0x1BFB392E0](v8, sub_1BD25D6C4, v18);
      v18, v20, v21, v22, v23, v24, v25, v26;
      (*(v38 + 8))(v8, v39);
    }
  }

  return result;
}

uint64_t sub_1BD25CC54(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1BE051F54();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE051FA4();
  v13 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v31 = sub_1BE052D54();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = a2 & 1;
  *(v16 + 24) = a2 & 1;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  aBlock[4] = sub_1BD25D6E0;
  v35 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_36;
  v18 = _Block_copy(aBlock);
  v19 = v35;
  sub_1BD25D6F4(a1, v17);
  sub_1BE048964();
  v20 = a5;
  v19, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  v28 = v31;
  MEMORY[0x1BFB3FDF0](0, v15, v12, v18);
  _Block_release(v18);

  (*(v33 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v32);
}

void sub_1BD25CF38(void *a1, char a2, void (*a3)(id, unint64_t, unint64_t, uint64_t), void *a4, uint64_t a5)
{
  if (a2)
  {
    sub_1BD25D6F4(a1, 1);
    sub_1BE048964();
    sub_1BD25D700(a1, a5, a3, a4, a1);
    sub_1BD25D6D4(a1, 1, v9, v10, v11, v12, v13, v14);

    a4, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    if (sub_1BE04C224())
    {
      sub_1BE04C244();
      v22 = 0xD000000000000017;
      v23 = 0x80000001BE11F780;
      v24 = 1;
    }

    else
    {
      *(a5 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_isActive) = 1;
      v25 = *(a5 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion);
      *(a5 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion) = a1;
      sub_1BE048964();
      v25, v26, v27, v28, v29, v30, v31, v32;
      v23 = 0x80000001BE11F760;
      v22 = 0xD000000000000013;
      v24 = 0;
    }

    a3(v22, v23, 0, v24);
  }
}

id sub_1BD25D068(uint64_t a1)
{
  v3 = sub_1BE04BAC4();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B8D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  v13 = sub_1BE04B944();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for ProvisioningPasscodeUpgradeExplanationFlowItem();
    if (swift_dynamicCastClass())
    {
      v66 = v5;
      v17 = v1;
      v18 = *&v1[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_context];
      sub_1BE04BB94();
      sub_1BE04B924();
      (*(v14 + 8))(v16, v13);
      (*(v7 + 104))(v9, *MEMORY[0x1E69B7F80], v6);
      v19 = sub_1BE04B8C4();
      v20 = *(v7 + 8);
      v20(v9, v6);
      v20(v12, v6);
      if (v19)
      {
        v21 = objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeWatchChangeFlowItem());
        v22 = v17;
        v23 = sub_1BE048964();
        v24 = sub_1BD3CC938(v23, v22);
        v18, v25, v26, v27, v28, v29, v30, v31;
      }

      else if (PKIsChinaSKU() & 1) != 0 || (PKUsePasscodeUpgradeFlow() & 1) != 0 || (v42 = v66, sub_1BE04BC34(), v43 = sub_1BE04BA54(), (*(v67 + 8))(v42, v68), (v43))
      {
        v44 = objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeCurrentPasscodeFlowItem());
        v45 = v17;
        v46 = sub_1BE048964();
        v24 = sub_1BD9DD35C(v46, v45);
        v18, v47, v48, v49, v50, v51, v52, v53;
      }

      else
      {
        v55 = objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeChangeFlowItem());
        v56 = v17;
        v57 = sub_1BE048964();
        v24 = sub_1BD25EC70(v57, v56);
        v18, v58, v59, v60, v61, v62, v63, v64;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v32 = *&v1[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_context];
    v33 = *&v1[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_requirements];
    objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeExplanationFlowItem());
    sub_1BE048964();
    sub_1BE048C84();
    v34 = v1;
    v24 = sub_1BD7B49A4(v32, v33, v34);
    v32, v35, v36, v37, v38, v39, v40, v41;
  }

  return v24;
}

uint64_t sub_1BD25D490()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD25D4CC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD25D5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_isActive] = 0;
  v8 = OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_identifier];
  *v9 = 0xD000000000000026;
  v9[1] = 0x80000001BE0C6260;
  v10 = OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_dismissalConfiguration;
  v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_dismissalConfiguration] = 2;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_requirements] = a2;
  v3[v10] = 1;
  v11 = *&v3[v8];
  *&v3[v8] = a3;
  sub_1BE048964();
  sub_1BE048964();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_ownsPasscodeAssertion] = a3 == 0;
  v20.receiver = v3;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

double sub_1BD25D6D4(id a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2)
  {
  }

  else
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
  }

  return result;
}

id sub_1BD25D6F4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1BE048964();
  }
}

void sub_1BD25D700(id a1, uint64_t a2, void (*a3)(id, unint64_t, unint64_t, uint64_t), void *a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  aBlock[0] = a1;
  sub_1BE048964();
  v11 = a5;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  sub_1BD0E5E8C(0, qword_1EBD45AD0, 0x1E69B90E8);
  if (swift_dynamicCast())
  {
    if ([v98 hasLocalizedTitleAndMessage])
    {
      a1 = [v98 displayableError];

      goto LABEL_14;
    }
  }

  v13 = sub_1BE04A844();
  v14 = [v13 domain];

  v15 = sub_1BE052434();
  v17 = v16;

  v18 = sub_1BE052434();
  v26 = v19;
  if (v15 == v18 && v17 == v19)
  {
LABEL_12:
    v17, v19, v20, v21, v22, v23, v24, v25;
    v26, v50, v51, v52, v53, v54, v55, v56;
    goto LABEL_13;
  }

  v28 = sub_1BE053B84();
  v17, v29, v30, v31, v32, v33, v34, v35;
  v26, v36, v37, v38, v39, v40, v41, v42;
  if ((v28 & 1) == 0)
  {
    a1 = PKDisplayableErrorForCommonType();
    if (a1)
    {
      goto LABEL_14;
    }

    a4, v43, v44, v45, v46, v47, v48, v49;
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  v57 = a1;
LABEL_14:
  v58 = a1;
  v59 = sub_1BE04A844();

  v60 = swift_allocObject();
  *(v60 + 16) = sub_1BD25DAD8;
  *(v60 + 24) = v10;
  aBlock[4] = sub_1BD214190;
  v97 = v60;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_15_1;
  v61 = _Block_copy(aBlock);
  v62 = v97;
  sub_1BE048964();
  v62, v63, v64, v65, v66, v67, v68, v69;
  v70 = PKAlertForDisplayableErrorWithCancelHandler(v59, 0, v61);
  _Block_release(v61);

  if (v70)
  {
    v71 = a2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v72 = *(v71 + 8);
      ObjectType = swift_getObjectType();
      (*(v72 + 24))(v70, ObjectType, v72);

      v10, v74, v75, v76, v77, v78, v79, v80;
      swift_unknownObjectRelease();
    }

    else
    {

      v10, v89, v90, v91, v92, v93, v94, v95;
    }
  }

  else
  {
    v81 = v11;
    a3(v11, 0xD00000000000001ELL, 0x80000001BE11F7A0, 4);

    v10, v82, v83, v84, v85, v86, v87, v88;
  }
}

uint64_t objectdestroyTm_18(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

void sub_1BD25DAD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = v2;
  v1(v2, 0xD00000000000001ELL, 0x80000001BE11F7A0, 4);
}

uint64_t sub_1BD25DB54(uint64_t result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((result & 1) == 0 && *(v8 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_isActive) == 1)
  {
    sub_1BD25C6C8(result, a2, a3, a4, a5, a6, a7, a8);
    v9 = v8 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      memset(v12, 0, sizeof(v12));
      v13 = 2;
      sub_1BD865A00(v8, &off_1F3B99F60, v12, ObjectType, v10);
      swift_unknownObjectRelease();
      return sub_1BD0DE53C(v12, &unk_1EBD3F510, &unk_1BE0B9B30);
    }
  }

  return result;
}

void sub_1BD25DCFC()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v102 - v7;
  v9 = sub_1BE04BD74();
  v109 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v102 - v12;
  v14 = v0 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong() && (v15 = *(v14 + 8), ObjectType = swift_getObjectType(), v17 = (*(v15 + 32))(v0, &off_1F3B9A0C8, ObjectType, v15), v19 = v18, swift_unknownObjectRelease(), v17) && (v20 = swift_getObjectType(), v21 = (*(v19 + 56))(v20, v19), swift_unknownObjectRelease(), v21))
  {
    v105 = v21;
    v107 = v1;
    v106 = [objc_allocWithZone(MEMORY[0x1E696EEA8]) init];
    v22 = objc_opt_self();
    v23 = sub_1BE052A94();
    v24 = [v22 localizedStringFromNumber:v23 numberStyle:5];

    v25 = sub_1BE052434();
    v27 = v26;

    v28 = sub_1BE052404();
    v29 = PKDeviceSpecificLocalizedStringKeyForKey(v28, 0);

    if (v29)
    {
      sub_1BE052434();
      v31 = v30;

      v32 = v109;
      v33 = *(v109 + 104);
      v104 = *MEMORY[0x1E69B80D8];
      v103 = v33;
      v33(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1BE0B69E0;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = sub_1BD110550();
      *(v34 + 32) = v25;
      *(v34 + 40) = v27;
      sub_1BE04B714();
      v36 = v35;
      v31, v35, v37, v38, v39, v40, v41, v42;
      v34, v43, v44, v45, v46, v47, v48, v49;
      v50 = *(v32 + 8);
      v50(v13, v9);
      v51 = sub_1BE052404();
      v36, v52, v53, v54, v55, v56, v57, v58;
      v59 = v106;
      [v106 setPasscodePrompt_];

      [v59 setHidePasscodeRecoveryMessage_];
      aBlock = sub_1BE052434();
      v111 = v60;
      MEMORY[0x1BFB3F610](0x70757465732F2F3ALL, 0xE800000000000000);
      v61 = v111;
      sub_1BE04AA54();
      v61, v62, v63, v64, v65, v66, v67, v68;
      v69 = sub_1BE04AA64();
      v70 = *(v69 - 8);
      v71 = 0;
      if ((*(v70 + 48))(v8, 1, v69) != 1)
      {
        v71 = sub_1BE04A9C4();
        (*(v70 + 8))(v8, v69);
      }

      [v59 setCalloutURL_];

      v72 = v108;
      v103(v108, v104, v9);
      v73 = PKPassKitBundle();
      v74 = v107;
      if (v73)
      {
        v75 = v73;
        sub_1BE04B6F4();
        v77 = v76;

        v50(v72, v9);
        v78 = sub_1BE052404();
        v77, v79, v80, v81, v82, v83, v84, v85;
        [v59 setCalloutReason_];

        v86 = [objc_allocWithZone(MEMORY[0x1E696EEA0]) init];
        v87 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v114 = sub_1BD25ED90;
        v115 = v87;
        aBlock = MEMORY[0x1E69E9820];
        v111 = 1107296256;
        v112 = sub_1BD14E1D8;
        v113 = &block_descriptor_37;
        v88 = _Block_copy(&aBlock);
        v115, v89, v90, v91, v92, v93, v94, v95;
        v96 = v105;
        [v86 startInParentVC:v105 options:v59 completion:v88];
        _Block_release(v88);
        v97 = *(v74 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_service);
        *(v74 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_service) = v86;
        v98 = v86;

        [*(v74 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_reporter) reportViewAppeared];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1BE04D0E4();
    v99 = sub_1BE04D204();
    v100 = sub_1BE052C54();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_1BD026000, v99, v100, "Unable to fetch renderer to show passcode upgrade", v101, 2u);
      MEMORY[0x1BFB45F20](v101, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BD25E48C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v13;
  aBlock[4] = sub_1BD25ED98;
  v29 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_10_1;
  v16 = _Block_copy(aBlock);
  v17 = v29;
  v18 = a2;
  v17, v19, v20, v21, v22, v23, v24, v25;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v16);
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1BD25E760(void *a1, uint64_t a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  if (a1)
  {
    v10 = a1;
    sub_1BE04D0E4();
    v11 = a1;
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C54();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1BD026000, v12, v13, "Failed with error: %@", v14, 0xCu);
      sub_1BD0DE53C(v15, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v15, -1, -1);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1BE04D0E4();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C54();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BD026000, v18, v19, "Successfully changed passcode", v20, 2u);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    v6 = v9;
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *(Strong + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_service);
    *(Strong + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_service) = 0;

    if (a1)
    {
      v24 = *&v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_reporter];
      v25 = a1;
      if (v24)
      {
        v26 = v24;
        v27 = sub_1BE04A844();
        [v26 reportError:v27 context:0];
      }

      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        v34 = v22;
        sub_1BD25EDA0(v33);
      }

      else
      {
      }
    }

    else
    {
      v28 = *&v22[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_reporter];
      if (v28)
      {
        [v28 reportPageCompleted:1 context:0];
      }

      v29 = swift_unknownObjectWeakLoadStrong();
      if (v29)
      {
        v30 = v29;
        v31 = v22;
        sub_1BD25EBB8(v31, v30, &off_1F3B9A0C8);
      }
    }
  }
}

uint64_t sub_1BD25EB14()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD25EB50(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD25EBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_passcodeAssertion);
  if (v6)
  {
    sub_1BE048964();
    sub_1BE04C234();
    v6, v7, v8, v9, v10, v11, v12, v13;
  }

  v14 = a2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(a1, a3, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD25EC70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_service] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_identifier];
  *v6 = 0xD000000000000029;
  *(v6 + 1) = 0x80000001BE0C62C0;
  *&v2[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_context] = a1;
  swift_unknownObjectWeakAssign();
  sub_1BE052434();
  v8 = v7;
  sub_1BE048964();
  v9 = sub_1BE04BB74();
  v8, v10, v11, v12, v13, v14, v15, v16;
  *&v3[OBJC_IVAR____TtC9PassKitUI41ProvisioningPasscodeUpgradeChangeFlowItem_reporter] = v9;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

void sub_1BD25EDA0(uint64_t a1)
{
  v7 = [objc_opt_self() errorWithSeverity_];
  v2 = sub_1BE052404();
  [v7 addInternalDebugDescription_];

  v3 = a1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v8[0] = v7;
    v9 = 1;
    v6 = v7;
    sub_1BD865A00(a1, &off_1F3B99F60, v8, ObjectType, v4);

    swift_unknownObjectRelease();
    sub_1BD0DE53C(v8, &unk_1EBD3F510, &unk_1BE0B9B30);
  }

  else
  {
  }
}

uint64_t type metadata accessor for AccessibilityAdaptivePadding(uint64_t a1)
{
  result = qword_1EBD3F550;
  if (!qword_1EBD3F550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD25EF68(uint64_t a1)
{
  sub_1BD25EFF4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD25EFF4(uint64_t a1)
{
  if (!qword_1EBD38900)
  {
    sub_1BE04EB24();
    v1 = sub_1BE04E3A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD38900);
    }
  }
}

uint64_t sub_1BD25F068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE04EB24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  sub_1BD70A2A0(v8);
  sub_1BE04EB14();
  (*(v6 + 8))(v8, v5);
  sub_1BE04E1F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F560, &qword_1BE0C63A0);
  (*(*(v18 - 8) + 16))(a2, a1, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F568, &qword_1BE0C63A8);
  v20 = a2 + *(result + 36);
  *v20 = v9;
  *(v20 + 8) = v11;
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = 0;
  return result;
}

unint64_t sub_1BD25F214()
{
  result = qword_1EBD3F570;
  if (!qword_1EBD3F570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F568, &qword_1BE0C63A8);
    sub_1BD25F2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F570);
  }

  return result;
}

unint64_t sub_1BD25F2A0()
{
  result = qword_1EBD3F578;
  if (!qword_1EBD3F578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F560, &qword_1BE0C63A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F578);
  }

  return result;
}

double sub_1BD25F304(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v210 = &v201 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0, &qword_1BE0DA790);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v207 = &v201 - v6;
  v206 = sub_1BE04B824();
  v7 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v203 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0, &qword_1BE0B9180);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v204 = &v201 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F660, &qword_1BE0C64A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v214 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v213 = &v201 - v14;
  v215 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  v212 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v216 = (&v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v201 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v201 - v20;
  v22 = sub_1BE04D214();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v209 = &v201 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v201 - v26;
  sub_1BE04D094();
  v217 = a1;
  sub_1BD26681C(a1, v21);
  v28 = v1;
  v29 = sub_1BE04D204();
  v30 = sub_1BE052C54();

  v31 = os_log_type_enabled(v29, v30);
  v211 = v23;
  v205 = v7;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v201 = v18;
    v33 = v32;
    v208 = swift_slowAlloc();
    v225[0] = v208;
    *v33 = 136315394;
    v202 = v30;
    v34 = NearbyPeerPaymentReceiverState.description.getter();
    v35 = v22;
    v37 = v36;
    sub_1BD266EB0(v21, type metadata accessor for NearbyPeerPaymentReceiverState);
    v38 = sub_1BD123690(v34, v37, v225);
    v39 = v37;
    v22 = v35;
    v39, v40, v41, v42, v43, v44, v45, v46;
    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v47 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
    swift_beginAccess();
    v48 = v201;
    sub_1BD26681C(v28 + v47, v201);
    v49 = NearbyPeerPaymentReceiverState.description.getter();
    v51 = v50;
    sub_1BD266EB0(v48, type metadata accessor for NearbyPeerPaymentReceiverState);
    v52 = sub_1BD123690(v49, v51, v225);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v33 + 14) = v52;
    _os_log_impl(&dword_1BD026000, v29, v202, "NearbyPeerPayment: ReceiverView: State changed from: %s to: %s", v33, 0x16u);
    v60 = v208;
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v60, -1, -1);
    MEMORY[0x1BFB45F20](v33, -1, -1);

    v208 = *(v211 + 8);
    (v208)(v27, v22);
  }

  else
  {

    sub_1BD266EB0(v21, type metadata accessor for NearbyPeerPaymentReceiverState);
    v208 = *(v23 + 8);
    (v208)(v27, v22);
    v48 = v18;
  }

  v61 = v213;
  sub_1BD26681C(v217, v213);
  v62 = *(v212 + 56);
  v63 = v215;
  v62(v61, 0, 1, v215);
  v64 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_state;
  swift_beginAccess();
  v65 = v214;
  sub_1BD26681C(v28 + v64, v214);
  v62(v65, 0, 1, v63);
  sub_1BD261084(v61, v65);
  sub_1BD0DE53C(v65, &qword_1EBD3F660, &qword_1BE0C64A8);
  sub_1BD0DE53C(v61, &qword_1EBD3F660, &qword_1BE0C64A8);
  v66 = v216;
  sub_1BD26681C(v28 + v64, v216);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v68 = &qword_1EBD3F000;
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      sub_1BD043990(v66, v225);
      sub_1BD0EE8CC(v225, v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0, &qword_1BE0B9060);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6D0, &unk_1BE10A7A0);
      if (swift_dynamicCast())
      {
        v217 = v22;
        sub_1BD043990(&v218, v224);
        v69 = OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_transferMonitor;
        swift_beginAccess();
        sub_1BD0EE8CC(v28 + v69, v221);
        v70 = v222;
        v71 = v223;
        __swift_project_boxed_opaque_existential_1(v221, v222);
        v72 = v204;
        (*(v71 + 40))(v70, v71);
        v73 = v72;
        v74 = sub_1BE04C4C4();
        v75 = *(v74 - 8);
        if ((*(v75 + 48))(v73, 1, v74) == 1)
        {
          __swift_destroy_boxed_opaque_existential_0(v221, v76, v77, v78, v79, v80, v81, v82);
          sub_1BD0DE53C(v73, &unk_1EBD476F0, &qword_1BE0B9180);
          v83 = 0;
        }

        else
        {
          v145 = v73;
          sub_1BE04C454();
          v83 = v146;
          v147 = v145;
          v68 = &qword_1EBD3F000;
          (*(v75 + 8))(v147, v74);
          __swift_destroy_boxed_opaque_existential_0(v221, v148, v149, v150, v151, v152, v153, v154);
        }

        sub_1BE04B8B4();
        v83, v155, v156, v157, v158, v159, v160, v161;
        __swift_destroy_boxed_opaque_existential_0(v224, v162, v163, v164, v165, v166, v167, v168);
        v22 = v217;
      }

      else
      {
        v220 = 0;
        v218 = 0u;
        v219 = 0u;
        sub_1BD0DE53C(&v218, &unk_1EBD47840, &unk_1BE0C6500);
      }

      sub_1BD0EE8CC(v225, v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F6E0, &unk_1BE10A7B0);
      if (swift_dynamicCast())
      {
        sub_1BD043990(&v218, v224);
        __swift_project_boxed_opaque_existential_1(v224, v224[3]);
        v176 = v207;
        sub_1BE04B854();
        v178 = v205;
        v177 = v206;
        if ((*(v205 + 48))(v176, 1, v206) == 1)
        {
          __swift_destroy_boxed_opaque_existential_0(v225, v179, v180, v181, v182, v183, v184, v185);
          sub_1BD0DE53C(v176, &unk_1EBD3F6C0, &qword_1BE0DA790);
        }

        else
        {
          v193 = v203;
          (*(v178 + 32))(v203, v176, v177);
          _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
          (*(v178 + 8))(v193, v177);
          __swift_destroy_boxed_opaque_existential_0(v225, v194, v195, v196, v197, v198, v199, v200);
        }

        __swift_destroy_boxed_opaque_existential_0(v224, v186, v187, v188, v189, v190, v191, v192);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v225, v169, v170, v171, v172, v173, v174, v175);
        v220 = 0;
        v218 = 0u;
        v219 = 0u;
        sub_1BD0DE53C(&v218, &qword_1EBD3F6E8, qword_1BE0C6510);
      }

      goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v105 = v66;
      goto LABEL_14;
    }

    sub_1BD266EB0(v66, type metadata accessor for NearbyPeerPaymentReceiverState);
  }

  else
  {
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680, &unk_1BE0CCB00);
    *(v66 + *(v84 + 48) + 8), v85, v86, v87, v88, v89, v90, v91;
    sub_1BD0DE53C(v66, &unk_1EBD3F690, &unk_1BE0DA4D0);
  }

  sub_1BD26681C(v28 + v64, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v93 = v48;
  v94 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v95;
  v96 = v94;
  v97 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v93, v97);
  v97, v98, v99, v100, v101, v102, v103, v104;
  v105 = v93;
LABEL_14:
  sub_1BD266EB0(v105, type metadata accessor for NearbyPeerPaymentReceiverState);
LABEL_15:
  v106 = v68[179];
  swift_beginAccess();
  sub_1BD0EE8CC(v28 + v106, v225);
  v107 = v226;
  v108 = v227;
  __swift_project_boxed_opaque_existential_1(v225, v226);
  v109 = (*(v108 + 48))(v107, v108);
  __swift_destroy_boxed_opaque_existential_0(v225, v110, v111, v112, v113, v114, v115, v116);
  if (v109)
  {
    if (*(v28 + OBJC_IVAR___PKNearbyPeerPaymentReceiverViewController_currentLockState))
    {
      sub_1BD0EE8CC(v28 + v106, v225);
      v118 = v226;
      v119 = v227;
      __swift_project_boxed_opaque_existential_1(v225, v226);
      (*(v119 + 112))(v118, v119);
      __swift_destroy_boxed_opaque_existential_0(v225, v120, v121, v122, v123, v124, v125, v126);
    }

    else
    {
      v127 = v209;
      sub_1BE04D094();
      v128 = sub_1BE04D204();
      v129 = sub_1BE052C54();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_1BD026000, v128, v129, "NearbyPeerPayment: ReceiverView: prompting for auth before auto accept", v130, 2u);
        MEMORY[0x1BFB45F20](v130, -1, -1);
      }

      (v208)(v127, v22);
      v131 = sub_1BE0528D4();
      v132 = v210;
      (*(*(v131 - 8) + 56))(v210, 1, 1, v131);
      sub_1BE0528A4();
      v133 = v28;
      v134 = sub_1BE052894();
      v135 = swift_allocObject();
      v136 = MEMORY[0x1E69E85E0];
      v135[2] = v134;
      v135[3] = v136;
      v135[4] = v133;
      v137 = sub_1BD122C00(0, 0, v132, &unk_1BE0C64F8, v135);
      v137, v138, v139, v140, v141, v142, v143, v144;
    }
  }

  return result;
}