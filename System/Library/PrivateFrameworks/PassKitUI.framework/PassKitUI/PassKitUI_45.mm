void sub_1BD4D7F98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddBankCredentialSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BD4D8480(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BD4D84E4(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  static BankCredentialListView.invalidInputErrorAlert(action:)(sub_1BD4D8548, a2);
  v8, v9, v10, v11, v12, v13, v14, v15;
}

double sub_1BD4D80C8(uint64_t a1)
{
  type metadata accessor for AddBankCredentialSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD4D8138(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FB0, &qword_1BE0DB280);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27[-v5];
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FB8, &qword_1BE0DB288);
  sub_1BD4D63F0();
  sub_1BE0504A4();
  v7 = (v1 + *(a1 + 36));
  v8 = *v7;
  v9 = *(v7 + 1);
  v32 = v8;
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v10 = v30;
  v11 = v31;
  v28 = v1;
  sub_1BD0DE4F4(&qword_1EBD47FD8, &qword_1EBD47FB0, &qword_1BE0DB280, MEMORY[0x1E697CCF0]);
  sub_1BE050EE4();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v10, v19, v20, v21, v22, v23, v24, v25;
  return (*(v4 + 8))(v6, v3);
}

void sub_1BD4D834C(uint64_t a1)
{
  sub_1BD327B74(319);
  if (v1 <= 0x3F)
  {
    sub_1BD327BD8(319, &qword_1EBD40458, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1BD4D8428(319);
      if (v3 <= 0x3F)
      {
        sub_1BD327BD8(319, &qword_1EBD496E0, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD4D8428(uint64_t a1)
{
  if (!qword_1EBD47FF8)
  {
    sub_1BE0492B4();
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD47FF8);
    }
  }
}

uint64_t sub_1BD4D8480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddBankCredentialSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4D84E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddBankCredentialSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_49()
{
  v1 = (type metadata accessor for AddBankCredentialSheet(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;
  v2[4], v17, v18, v19, v20, v21, v22, v23;
  v2[6], v24, v25, v26, v27, v28, v29, v30;
  v2[7], v31, v32, v33, v34, v35, v36, v37;
  v2[9], v38, v39, v40, v41, v42, v43, v44;
  v2[10], v45, v46, v47, v48, v49, v50, v51;
  v52 = v2 + v1[10];
  v53 = sub_1BE0492B4();
  (*(*(v53 - 8) + 8))(v52, v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0, &qword_1BE0DB2F8);
  *&v52[*(v54 + 28)], v55, v56, v57, v58, v59, v60, v61;
  *(v2 + v1[11] + 8), v62, v63, v64, v65, v66, v67, v68;

  return swift_deallocObject();
}

uint64_t sub_1BD4D86D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddBankCredentialSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD4D8748(uint64_t a1)
{
  v4 = *(type metadata accessor for AddBankCredentialSheet(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD4D721C(a1, v6, v7, v1 + v5);
}

unint64_t sub_1BD4D8838()
{
  result = qword_1EBD48030;
  if (!qword_1EBD48030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48030);
  }

  return result;
}

uint64_t sub_1BD4D888C(uint64_t a1)
{
  v2 = type metadata accessor for CredentialCenterPathIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1BD4D89B4(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for ProvisioningAppleBalanceHeroFlowItem();
    if (swift_dynamicCastClass())
    {
      v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_context);
      v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_setupController);
      v4 = objc_allocWithZone(type metadata accessor for ProvisioningAppleBalanceCredentialFlowItem());
      sub_1BE048964();
      v5 = sub_1BD410858(v2, v3);
      type metadata accessor for UIFlowModifier();
      v6 = swift_allocObject();
      v7 = byte_1EBDAB281;
      *(v6 + 32) = byte_1EBDAB280;
      *(v6 + 33) = v7;
      *(v6 + 48) = 0;
      swift_unknownObjectWeakInit();
      result = v6;
      *(v6 + 16) = v5;
      *(v6 + 24) = &off_1F3BA5A60;
      *(v6 + 32) = 1;
    }

    else
    {
      type metadata accessor for ProvisioningAppleBalanceCredentialFlowItem();
      result = swift_dynamicCastClass();
      if (result)
      {
        v15 = *&result[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_provisionedPasses];
        if (v15)
        {
          v16 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_context);
          v17 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
          v18 = v15;
          v19 = sub_1BE048964();
          v20 = sub_1BD989980(v19, v18);
          v16, v21, v22, v23, v24, v25, v26, v27;

          return v20;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_context);
    v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_setupController);
    v11 = type metadata accessor for ProvisioningAppleBalanceHeroFlowItem();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v13 = &v12[OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_identifier];
    *v13 = 0xD000000000000018;
    *(v13 + 1) = 0x80000001BE12C210;
    *&v12[OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_context] = v9;
    *&v12[OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_setupController] = v10;
    v28.receiver = v12;
    v28.super_class = v11;
    sub_1BE048964();
    v14 = v10;
    return objc_msgSendSuper2(&v28, sel_init);
  }

  return result;
}

uint64_t sub_1BD4D8BF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4D8C2C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD4D8C78(uint64_t a1, void *a2)
{
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v5 + 8))(v7, v4);
  v9 = [objc_allocWithZone(PKAppleBalanceSetupController) initWithProduct:a2 setupContext:v8];
  v10 = type metadata accessor for ProvisioningAppleBalanceFlowSection();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_identifier];
  *v12 = 0xD000000000000017;
  *(v12 + 1) = 0x80000001BE12C230;
  *&v11[OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_context] = a1;
  *&v11[OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_setupController] = v9;
  v16.receiver = v11;
  v16.super_class = v10;
  sub_1BE048964();
  v13 = v9;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

uint64_t sub_1BD4D8E20()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD4D8E98()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD4D8F0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48060, &unk_1BE0DB4F8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC9PassKitUI16KeyboardObserver__isVisible;
  v19 = 0;
  sub_1BE04D874();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC9PassKitUI16KeyboardObserver__keyboardHeight;
  v17 = 0;
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48058, &unk_1BE0F47A0);
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v10, v4, v1);
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  [v12 addObserver:v0 selector:sel_keyboardWillShowWithNotification_ name:*MEMORY[0x1E69DE080] object:0];

  v13 = [v11 defaultCenter];
  [v13 addObserver:v0 selector:sel_keyboardDidHideWithNotification_ name:*MEMORY[0x1E69DDF70] object:0];

  v14 = [v11 defaultCenter];
  [v14 addObserver:v0 selector:sel_keyboardWillHideWithNotification_ name:*MEMORY[0x1E69DE078] object:0];

  v15 = [v11 defaultCenter];
  [v15 addObserver:v0 selector:sel_keyboardWillChangeFrameWithNotification_ name:*MEMORY[0x1E69DE068] object:0];

  return v0;
}

uint64_t sub_1BD4D91F0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC9PassKitUI16KeyboardObserver__isVisible;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC9PassKitUI16KeyboardObserver__keyboardHeight;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48060, &unk_1BE0DB4F8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KeyboardObserver(uint64_t a1)
{
  result = qword_1EBD364F0;
  if (!qword_1EBD364F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD4D9370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068, &qword_1BE0DB508);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  sub_1BD4D9D28(a1, &v26 - v3);
  v5 = sub_1BE04A2E4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BD4D9CC0(v4);
    goto LABEL_9;
  }

  v7 = sub_1BE04A2D4();
  (*(v6 + 8))(v4, v5);
  if (!v7)
  {
    goto LABEL_9;
  }

  *&v27.origin.x = sub_1BE052434();
  v27.origin.y = v8;
  sub_1BE0537C4();
  if (!v7[2] || (v16 = sub_1BD149040(&v28), (v9 & 1) == 0))
  {
    v7, v9, v10, v11, v12, v13, v14, v15;
    sub_1BD149CE8(&v28);
    goto LABEL_9;
  }

  sub_1BD038CD0(v7[7] + 32 * v16, v30);
  sub_1BD149CE8(&v28);
  v7, v17, v18, v19, v20, v21, v22, v23;
  type metadata accessor for CGRect(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = 0.0;
    v29 = 1;
    goto LABEL_10;
  }

  Height = CGRectGetHeight(v27);
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = Height;
  v29 = 0;
LABEL_10:
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD4D9B90(uint64_t a1)
{
  sub_1BD1E1120();
  if (v1 <= 0x3F)
  {
    sub_1BD4D9C5C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD4D9C5C(uint64_t a1)
{
  if (!qword_1EBD36930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48058, &unk_1BE0F47A0);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD36930);
    }
  }
}

uint64_t sub_1BD4D9CC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068, &qword_1BE0DB508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD4D9D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068, &qword_1BE0DB508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4D9D98(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD480B0, &qword_1BE0DB678);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD480B8, &qword_1BE0DB680);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD480C0, &qword_1BE0DB688);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD4DAC1C();
  sub_1BE053DA4();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1BD4DAC70();
    sub_1BE053AC4();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1BD4DACC4();
    sub_1BE053AC4();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1BD4DA054()
{
  if (*v0)
  {
    return 0x64656B636F6C6E75;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

void sub_1BD4DA08C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x64656B636F6CLL && a2 == 0xE600000000000000;
  if (v12 || (sub_1BE053B84() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x64656B636F6C6E75 && a2 == 0xE800000000000000)
  {
    0xE800000000000000, a2, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1BE053B84();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_1BD4DA164(uint64_t a1)
{
  v2 = sub_1BD4DAC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD4DA1A0(uint64_t a1)
{
  v2 = sub_1BD4DAC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BD4DA1E8(uint64_t a1)
{
  v2 = sub_1BD4DACC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD4DA224(uint64_t a1)
{
  v2 = sub_1BD4DACC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BD4DA260(uint64_t a1)
{
  v2 = sub_1BD4DAC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD4DA29C(uint64_t a1)
{
  v2 = sub_1BD4DAC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BD4DA2D8(_BYTE *a1@<X8>, id *a2@<X0>)
{
  sub_1BD4DA7E0(a2);
  if (!v2)
  {
    *a1 = v4 & 1;
  }
}

uint64_t sub_1BD4DA324()
{
  if (*v0)
  {
    return 0x656B636F6C6E752ELL;
  }

  else
  {
    return 0x64656B636F6C2ELL;
  }
}

uint64_t sub_1BD4DA364()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE052224();
  v5 = MKBGetDeviceLockState();

  if (v5 >= 8)
  {
    sub_1BE04D1E4();
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C34();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v5;
      _os_log_impl(&dword_1BD026000, v7, v8, "Unknown keybag state: %d", v9, 8u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0x89u >> v5;
  }

  return v6 & 1;
}

uint64_t sub_1BD4DA4FC()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v2 = (v0 + 32);
  v3 = sub_1BD1ABED0(&unk_1F3B8D4A8);
  sub_1BD4DAD18(&unk_1F3B8D4C8);
  *(v0 + 40) = v3;
  sub_1BD14BE3C();
  v4 = sub_1BE052D54();
  v5 = swift_allocObject();
  swift_weakInit();
  v15[4] = sub_1BD4DAD80;
  v16 = v5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1BD8457EC;
  v15[3] = &block_descriptor_107;
  v6 = _Block_copy(v15);
  v16, v7, v8, v9, v10, v11, v12, v13;
  swift_beginAccess();
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v2, v4, v6);
  swift_endAccess();
  _Block_release(v6);

  return v1;
}

void sub_1BD4DA64C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = v3[3];
      ObjectType = swift_getObjectType();
      v13 = sub_1BD4DA364();
      (*(v11 + 8))(v13, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    v3, v4, v5, v6, v7, v8, v9, v10;
  }
}

uint64_t sub_1BD4DA6FC()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  sub_1BD0D4534(v0 + 16);
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  return swift_deallocClassInstance();
}

unint64_t sub_1BD4DA78C()
{
  result = qword_1EBD48070;
  if (!qword_1EBD48070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48070);
  }

  return result;
}

void sub_1BD4DA7E0(id *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48078, &qword_1BE0DB658);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v3 = v33 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48080, &qword_1BE0DB660);
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48088, &qword_1BE0DB668);
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD4DAC1C();
  v10 = v39;
  sub_1BE053D94();
  if (v10)
  {
    goto LABEL_7;
  }

  v34 = v4;
  v39 = a1;
  v19 = v36;
  v18 = v37;
  v20 = v9;
  v21 = sub_1BE053AB4();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1BE0538A4();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48098, &qword_1BE0DB670);
    *v25 = &type metadata for DeviceLockState;
    sub_1BE053A74();
    sub_1BE053894();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v38 + 8))(v20, v7);
    swift_unknownObjectRelease();
    a1 = v39;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(a1, v11, v12, v13, v14, v15, v16, v17);
    return;
  }

  v33[1] = v21;
  v40 = *(v21 + 32);
  if (v40)
  {
    v42 = 1;
    sub_1BD4DAC70();
    sub_1BE053A64();
    v22 = v38;
    (*(v35 + 8))(v3, v18);
  }

  else
  {
    v41 = 0;
    sub_1BD4DACC4();
    sub_1BE053A64();
    v22 = v38;
    (*(v19 + 8))(v6, v34);
  }

  (*(v22 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v39, v26, v27, v28, v29, v30, v31, v32);
}

unint64_t sub_1BD4DAC1C()
{
  result = qword_1EBD48090;
  if (!qword_1EBD48090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48090);
  }

  return result;
}

unint64_t sub_1BD4DAC70()
{
  result = qword_1EBD480A0;
  if (!qword_1EBD480A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480A0);
  }

  return result;
}

unint64_t sub_1BD4DACC4()
{
  result = qword_1EBD480A8;
  if (!qword_1EBD480A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480A8);
  }

  return result;
}

uint64_t sub_1BD4DAD18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40050, &qword_1BE0DB690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD4DADBC()
{
  result = qword_1EBD480C8;
  if (!qword_1EBD480C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480C8);
  }

  return result;
}

unint64_t sub_1BD4DAE14()
{
  result = qword_1EBD480D0;
  if (!qword_1EBD480D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480D0);
  }

  return result;
}

unint64_t sub_1BD4DAE6C()
{
  result = qword_1EBD480D8;
  if (!qword_1EBD480D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480D8);
  }

  return result;
}

unint64_t sub_1BD4DAEC4()
{
  result = qword_1EBD480E0;
  if (!qword_1EBD480E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480E0);
  }

  return result;
}

unint64_t sub_1BD4DAF1C()
{
  result = qword_1EBD480E8;
  if (!qword_1EBD480E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480E8);
  }

  return result;
}

unint64_t sub_1BD4DAF74()
{
  result = qword_1EBD480F0;
  if (!qword_1EBD480F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480F0);
  }

  return result;
}

unint64_t sub_1BD4DAFCC()
{
  result = qword_1EBD480F8;
  if (!qword_1EBD480F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480F8);
  }

  return result;
}

unint64_t sub_1BD4DB02C()
{
  result = qword_1EBD48100;
  if (!qword_1EBD48100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48100);
  }

  return result;
}

unint64_t sub_1BD4DB084()
{
  result = qword_1EBD48108;
  if (!qword_1EBD48108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48108);
  }

  return result;
}

uint64_t sub_1BD4DB110()
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
  __swift_allocate_value_buffer(v6, qword_1EBDAB198);
  __swift_project_value_buffer(v6, qword_1EBDAB198);
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

uint64_t sub_1BD4DB324(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v3 = sub_1BE04D214();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v2[43] = v5;
  v2[44] = *(v5 - 8);
  v2[45] = swift_task_alloc();
  sub_1BE0528A4();
  v2[46] = sub_1BE052894();
  v7 = sub_1BE052844();
  v2[47] = v7;
  v2[48] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD4DB4DC, v7, v6);
}

uint64_t sub_1BD4DB4DC(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:SharePassIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = *(v1 + 352);
  v6 = *(v1 + 360);
  v9 = *(v1 + 336);
  v8 = *(v1 + 344);
  v11 = *(v1 + 320);
  v10 = *(v1 + 328);
  v12 = *(v1 + 312);

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v13 = sub_1BE04D014();
  *(v1 + 392) = v13;
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  sub_1BE048874();
  v14 = *(v1 + 96);
  sub_1BD030458(v1 + 80);
  LOBYTE(v6) = sub_1BD99DC00(v14);

  if (v6)
  {
    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 coordinator];
    *(v1 + 400) = v23;

    if (v23)
    {
      v31 = swift_task_alloc();
      *(v1 + 408) = v31;
      *v31 = v1;
      v31[1] = sub_1BD4DB8CC;

      return sub_1BD0D7278();
    }

    *(v1 + 368), v24, v25, v26, v27, v28, v29, v30;
    sub_1BE04D074();
    v33 = sub_1BE04D204();
    v34 = sub_1BE052C34();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BD026000, v33, v34, "SharePassIntent: PKAppIntentCoordinator was nil", v35, 2u);
      MEMORY[0x1BFB45F20](v35, -1, -1);
    }

    v37 = *(v1 + 296);
    v36 = *(v1 + 304);
    v38 = *(v1 + 288);

    (*(v37 + 8))(v36, v38);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
  }

  else
  {
    *(v1 + 368), v15, v16, v17, v18, v19, v20, v21;
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484C4();
  }

  swift_willThrow();
  sub_1BD4DBE8C(v13);
  v13, v39, v40, v41, v42, v43, v44, v45;

  v46 = *(v1 + 8);

  return v46();
}

uint64_t sub_1BD4DB8CC(char a1)
{
  v2 = *v1;
  *(*v1 + 425) = a1;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1BD4DB9F4, v4, v3);
}

uint64_t sub_1BD4DB9F4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 425) == 1)
  {
    v9 = *(v8 + 400);
    sub_1BE048874();
    v10 = *(v8 + 152);
    sub_1BE048C84();
    sub_1BD030458(v8 + 144);
    v11 = sub_1BE052404();
    *(v8 + 416) = v11;
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v8 + 16) = v8;
    *(v8 + 56) = v8 + 424;
    *(v8 + 24) = sub_1BD4DBC24;
    v19 = swift_continuation_init();
    *(v8 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980, &unk_1BE0ED700);
    *(v8 + 208) = MEMORY[0x1E69E9820];
    *(v8 + 216) = 1107296256;
    *(v8 + 224) = sub_1BD68F38C;
    *(v8 + 232) = &block_descriptor_108;
    *(v8 + 240) = v19;
    [v9 sharePassWithUniqueID:v11 completion:v8 + 208];

    return MEMORY[0x1EEE6DEC8](v8 + 16);
  }

  else
  {
    v20 = *(v8 + 392);
    *(v8 + 368), a2, a3, a4, a5, a6, a7, a8;
    sub_1BD135218();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1BD4DBE8C(v20);
    v20, v22, v23, v24, v25, v26, v27, v28;

    v29 = *(v8 + 8);

    return v29();
  }
}

uint64_t sub_1BD4DBC24()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1BD4DBD2C, v2, v1);
}

uint64_t sub_1BD4DBD2C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 416);
  *(v8 + 368), a2, a3, a4, a5, a6, a7, a8;
  v10 = *(v8 + 424);

  v11 = *(v8 + 392);
  if (v10 == 1)
  {
    sub_1BE048774();
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  sub_1BD4DBE8C(v11);
  v11, v12, v13, v14, v15, v16, v17, v18;

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_1BD4DBE8C(void *a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:SharePassIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD4DC178@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36C38 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB198);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD4DC220(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48128, &qword_1BE0DBA60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48130, &qword_1BE0DBA68);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48138, &qword_1BE0DBA98);
  sub_1BE048CC4();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BD4DC3B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD4DB324(a1, v4);
}

uint64_t sub_1BD4DC450@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BD4DC4C4();
  *a2 = result;
  return result;
}

uint64_t sub_1BD4DC478(uint64_t a1)
{
  v2 = sub_1BD15D0A4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD4DC4C4()
{
  v0 = sub_1BE048D74();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v31 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v27 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = v25 - v7;
  v8 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BE04A874();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v25[0] = sub_1BE04A884();
  v14 = *(v25[0] - 8);
  MEMORY[0x1EEE9AC00](v25[0]);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  v25[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298, &qword_1BE0FE830);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_1EBDAB400);
  v19 = *(v10 + 16);
  v19(v12, v18, v9);
  sub_1BE04B0A4();
  v25[1] = v17;
  sub_1BE04A894();
  sub_1BE052354();
  v19(v12, v18, v9);
  sub_1BE04B0A4();
  v20 = v26;
  sub_1BE04A894();
  (*(v14 + 56))(v20, 0, 1, v25[0]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  sub_1BE052354();
  v19(v12, v18, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v21 = v27;
  sub_1BE048664();
  v22 = sub_1BE048654();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 0, 1, v22);
  v23(v28, 1, 1, v22);
  (*(v29 + 104))(v31, *MEMORY[0x1E695A500], v30);
  sub_1BD4DCA8C();
  sub_1BD0304AC();
  return sub_1BE0488B4();
}

unint64_t sub_1BD4DCA8C()
{
  result = qword_1EBD48120;
  if (!qword_1EBD48120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48120);
  }

  return result;
}

id sub_1BD4DCAE0(void *a1, uint64_t a2)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_verificationType + 8))
  {
    return 0;
  }

  v18 = *(v2 + OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_fundingSource);
  if (!v18)
  {
    return 0;
  }

  v44 = a1;
  v46 = v6;
  v19 = *(v2 + OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_verificationType);
  v20 = objc_opt_self();
  v47 = v18;
  v21 = [v20 sharedService];
  v22 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

  v23 = objc_allocWithZone(PKApplyControllerConfiguration);
  v45 = v22;
  v24 = [v23 initWithSetupDelegate:v2 context:0 provisioningController:v22];
  [v24 setApplicationType_];
  [v24 setVerificationType_];

  if (v24)
  {
    v25 = v24;
    v26 = v44;
    [v25 setFeature_];

    [v25 setAccount_];
    [v25 setFundingSource_];
  }

  v27 = [objc_allocWithZone(PKApplyController) initWithApplyConfiguration_];
  if (!v27)
  {

    return 0;
  }

  v43 = v27;
  v42 = v27;
  v28 = PKApplyServiceOverrideURL();
  if (v28)
  {
    v29 = v28;
    sub_1BE04A9F4();

    v30 = v46;
    v31 = *(v46 + 32);
    v31(v14, v8, v5);
    v32 = *(v30 + 56);
    v32(v14, 0, 1, v5);
    v31(v17, v14, v5);
    v32(v17, 0, 1, v5);
    v33 = (*(v30 + 48))(v17, 1, v5);
  }

  else
  {
    v35 = *(v46 + 56);
    v36 = 1;
    v35(v14, 1, 1, v5);
    v37 = [v44 applyServiceURL];
    if (v37)
    {
      v38 = v37;
      sub_1BE04A9F4();

      v36 = 0;
    }

    v35(v11, v36, 1, v5);
    sub_1BD226B4C(v11, v17);
    v39 = *(v46 + 48);
    if (v39(v14, 1, v5) != 1)
    {
      sub_1BD226BBC(v14);
    }

    v33 = v39(v17, 1, v5);
  }

  if (v33 == 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_1BE04A9C4();
    (*(v46 + 8))(v17, v5);
  }

  v41 = v42;
  [v42 setApplyServiceURL_];

  return v43;
}

id sub_1BD4DD018(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FundingSourceVerificationController(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for FundingSourceVerificationController(uint64_t a1)
{
  result = qword_1EBD48140;
  if (!qword_1EBD48140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MerchantTokenFeatureAvailability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MerchantTokenFeatureAvailability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MerchantTokenFeatureAvailability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD4DD220(char a1)
{
  if (!PKMPANsUnifiedViewEnabled())
  {
    return;
  }

  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = [v2 appleAccountInformation];

  if (!v4)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v5 = [v4 aidaAccountAvailable];

  if (PKSecureElementIsAvailable() && (PKCurrentUserIsGuestUser() & 1) == 0 && (PKCurrentUserIsInSharingMode() & 1) == 0 && ((v5 ^ 1) & 1) == 0)
  {
    v6 = [objc_opt_self() sharedService];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 paymentSetupSupportedInRegion];

      if (v8 == 1 || (a1 & 1) != 0)
      {
        return;
      }
    }

    else if (a1)
    {
      return;
    }

    v9 = [objc_allocWithZone(type metadata accessor for PKMerchantTokenDataStorageWrapper()) init];
    sub_1BD9AE674();
  }
}

uint64_t _s9PassKitUI32MerchantTokenFeatureAvailabilityC02isdeF9Available24paymentPassesProvisionedS2b_tFZ_0(char a1)
{
  v24[3] = &type metadata for DefaultMerchantTokenDependencies;
  v24[4] = &off_1F3BAA4E8;
  v2 = type metadata accessor for MerchantTokenFeatureAvailability();
  v3 = objc_allocWithZone(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v24, &type metadata for DefaultMerchantTokenDependencies);
  v23[3] = &type metadata for DefaultMerchantTokenDependencies;
  v23[4] = &off_1F3BAA4E8;
  sub_1BD0EE8CC(v23, v3 + OBJC_IVAR___PKMerchantTokenFeatureAvailability_dependencies);
  v22.receiver = v3;
  v22.super_class = v2;
  v4 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v23, v5, v6, v7, v8, v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_0(v24, v12, v13, v14, v15, v16, v17, v18);
  sub_1BD4DD220(a1);
  v20 = v19;

  return v20 & 1;
}

void sub_1BD4DD4F4(uint64_t a1)
{
  sub_1BD4DD628(319, &qword_1EBD3D2B8, sub_1BD1F2290);
  if (v1 <= 0x3F)
  {
    sub_1BD4DD628(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      sub_1BD127BD0(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD4DD628(319, &qword_1EBD45CD8, MEMORY[0x1E69676E0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD4DD628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1BD4DD6C4(uint64_t a1)
{
  type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1BD4DD788@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48178, &qword_1BE0DBC30);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v70 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48180, &qword_1BE0DBC38);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48188, &qword_1BE0DBC40);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v70 - v11;
  *v6 = sub_1BE04F7B4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48190, &qword_1BE0DBC48);
  sub_1BD4DDC3C(v2, &v6[*(v13 + 44)]);
  v14 = sub_1BE051CD4();
  v16 = v15;
  v17 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48198, &qword_1BE0DBC50) + 36)];
  sub_1BD4DF468(v17);
  v18 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481A0, &qword_1BE0DBC58) + 36));
  *v18 = v14;
  v18[1] = v16;
  LOBYTE(v17) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481A8, &qword_1BE0DBC60) + 36)];
  *v27 = v17;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481B0, &unk_1BE0DBC68) + 36)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v30 = sub_1BE0505C4();
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  *v28 = swift_getKeyPath();
  v31 = sub_1BE051424();
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481B8, &unk_1BE0DBCA8) + 36)] = v31;
  LOBYTE(v31) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v32 = &v6[*(v4 + 44)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  LOBYTE(v16) = sub_1BE050224();
  *(inited + 32) = v16;
  v38 = sub_1BE050204();
  *(inited + 33) = v38;
  v39 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v16)
  {
    v39 = sub_1BE050214();
  }

  inited, v40, v41, v42, v43, v44, v45, v46;
  sub_1BE050214();
  if (sub_1BE050214() != v38)
  {
    v39 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_1BD0DE204(v6, v9, &qword_1EBD48178, &qword_1BE0DBC30);
  v55 = &v9[*(v7 + 36)];
  *v55 = v39;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  v56 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_1BD0DE204(v9, v12, &qword_1EBD48180, &qword_1BE0DBC38);
  v65 = &v12[*(v10 + 36)];
  *v65 = v56;
  *(v65 + 1) = v58;
  *(v65 + 2) = v60;
  *(v65 + 3) = v62;
  *(v65 + 4) = v64;
  v65[40] = 0;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v66 = v70;
  sub_1BD0DE204(v12, v70, &qword_1EBD48188, &qword_1BE0DBC40);
  v67 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481C0, &qword_1BE0DBCB8) + 36));
  v68 = v72;
  *v67 = v71;
  v67[1] = v68;
  result = *&v73;
  v67[2] = v73;
  return result;
}

uint64_t sub_1BD4DDC3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482A0, &qword_1BE0DBD70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v55 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482A8, &qword_1BE0DBD78);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482B0, &unk_1BE0DBD80);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = (a1 + *(type metadata accessor for FinanceKitMerchantHeaderView(0) + 24));
  v18 = *v17;
  v19 = *(v17 + 1);
  v59 = v18;
  v60 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v58 == 1)
  {
    v20 = sub_1BE04F4F4();
  }

  else
  {
    v20 = sub_1BE04F504();
  }

  *v5 = v20;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482B8, &qword_1BE0DBD90);
  sub_1BD4DE034(a1, &v5[*(v21 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v23 = sub_1BE050204();
  *(inited + 32) = v23;
  v24 = sub_1BE050224();
  *(inited + 33) = v24;
  v25 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v23)
  {
    v25 = sub_1BE050214();
  }

  inited, v26, v27, v28, v29, v30, v31, v32;
  sub_1BE050214();
  if (sub_1BE050214() != v24)
  {
    v25 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1BD0DE204(v5, v8, &qword_1EBD482A0, &qword_1BE0DBD70);
  v41 = &v8[*(v6 + 36)];
  *v41 = v25;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1BD0DE204(v8, v13, &qword_1EBD482A8, &qword_1BE0DBD78);
  v51 = &v13[*(v56 + 36)];
  *v51 = v42;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  sub_1BD0DE204(v13, v16, &qword_1EBD482B0, &unk_1BE0DBD80);
  sub_1BD0DE19C(v16, v10, &qword_1EBD482B0, &unk_1BE0DBD80);
  v52 = v57;
  *v57 = 0;
  *(v52 + 8) = 1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482C0, &qword_1BE0DBD98);
  sub_1BD0DE19C(v10, v52 + *(v53 + 48), &qword_1EBD482B0, &unk_1BE0DBD80);
  sub_1BD0DE53C(v16, &qword_1EBD482B0, &unk_1BE0DBD80);
  return sub_1BD0DE53C(v10, &qword_1EBD482B0, &unk_1BE0DBD80);
}

uint64_t sub_1BD4DE034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482C8, &qword_1BE0DBDA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for FinanceKitTransactionIcon(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = *(type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0) + 40);
  v17 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  sub_1BD0DE19C(a1 + v16, &v15[*(v17 + 20)], &qword_1EBD45CC0, &qword_1BE0D5630);
  *v15 = 1;
  *v9 = sub_1BE04F7D4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482D0, &qword_1BE0DBDA8);
  sub_1BD4DE294(a1, &v9[*(v18 + 44)]);
  sub_1BD4E2A8C(v15, v12, type metadata accessor for FinanceKitTransactionIcon);
  sub_1BD0DE19C(v9, v6, &qword_1EBD482C8, &qword_1BE0DBDA0);
  sub_1BD4E2A8C(v12, a2, type metadata accessor for FinanceKitTransactionIcon);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482D8, &qword_1BE0DBDB0);
  v20 = a2 + *(v19 + 48);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1BD0DE19C(v6, a2 + *(v19 + 64), &qword_1EBD482C8, &qword_1BE0DBDA0);
  sub_1BD0DE53C(v9, &qword_1EBD482C8, &qword_1BE0DBDA0);
  sub_1BD4E3190(v15, type metadata accessor for FinanceKitTransactionIcon);
  sub_1BD0DE53C(v6, &qword_1EBD482C8, &qword_1BE0DBDA0);
  return sub_1BD4E3190(v12, type metadata accessor for FinanceKitTransactionIcon);
}

uint64_t sub_1BD4DE294@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v265 = a2;
  v241 = sub_1BE04BD74();
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v239 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482E0, &qword_1BE0DBDB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v242 = &v239 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482E8, &qword_1BE0DBDC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v264 = &v239 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v239 - v10;
  v12 = type metadata accessor for FinanceKitMerchantHeaderView(0);
  v254 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v255 = v13;
  v256 = &v239 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482F0, &qword_1BE0DBDC8);
  v245 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v244 = &v239 - v14;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482F8, &qword_1BE0DBDD0);
  MEMORY[0x1EEE9AC00](v246);
  v247 = &v239 - v15;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48300, &qword_1BE0DBDD8);
  v252 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v251 = &v239 - v16;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48308, &unk_1BE0DBDE0);
  MEMORY[0x1EEE9AC00](v250);
  v260 = &v239 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v249 = &v239 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v272 = &v239 - v21;
  v274 = sub_1BE04EB24();
  v22 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v274);
  v273 = &v239 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
  MEMORY[0x1EEE9AC00](v268);
  v25 = &v239 - v24;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48310, &qword_1BE0DBDF0);
  MEMORY[0x1EEE9AC00](v266);
  v243 = &v239 - v26;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48318, &qword_1BE0DBDF8);
  v258 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v257 = &v239 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v275 = &v239 - v29;
  v270 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v30 = v270[7];
  v271 = a1;
  v31 = (a1 + v30);
  v32 = v31[1];
  v263 = v11;
  v262 = v4;
  v261 = v5;
  v276 = v22;
  if (v32)
  {
    v33 = *v31;
    v34 = v32;
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  *&v281[0] = v33;
  *(&v281[0] + 1) = v34;
  v35 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v269 = v35;
  v36 = sub_1BE0506C4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = sub_1BE050454();
  v44 = sub_1BE0505F4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v43, v45, v47, v49, v51, v52, v53, v54;
  sub_1BD0DDF10(v36, v38, (v40 & 1), v55, v56, v57, v58, v59);
  v42, v60, v61, v62, v63, v64, v65, v66;
  v67 = sub_1BE0505D4();
  v69 = v68;
  LOBYTE(v42) = v70;
  v72 = v71;
  sub_1BD0DDF10(v44, v46, (v48 & 1), v71, v73, v74, v75, v76);
  v50, v77, v78, v79, v80, v81, v82, v83;
  v84 = &v25[*(v268 + 36)];
  v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v86 = *MEMORY[0x1E6980FD8];
  v87 = sub_1BE0505C4();
  v88 = *(v87 - 8);
  (*(v88 + 104))(v84 + v85, v86, v87);
  (*(v88 + 56))(v84 + v85, 0, 1, v87);
  *v84 = swift_getKeyPath();
  *v25 = v67;
  *(v25 + 1) = v69;
  v25[16] = v42 & 1;
  *(v25 + 3) = v72;
  KeyPath = swift_getKeyPath();
  v90 = v243;
  sub_1BD0DE204(v25, v243, &qword_1EBD386A0, &qword_1BE0B6C30);
  v91 = v90 + *(v266 + 36);
  *v91 = KeyPath;
  *(v91 + 8) = 1;
  *(v91 + 16) = 0;
  LODWORD(v72) = *MEMORY[0x1E697E6F8];
  v92 = v276;
  v93 = *(v276 + 104);
  v94 = v273;
  v95 = v274;
  v93(v273, *MEMORY[0x1E697E6F8], v274);
  sub_1BD4E2AF4();
  sub_1BE050B24();
  v96 = *(v92 + 8);
  v96(v94, v95);
  sub_1BD0DE53C(v90, &qword_1EBD48310, &qword_1BE0DBDF0);
  v97 = (v271 + v270[8]);
  v98 = v97[1];
  v276 = v92 + 8;
  LODWORD(v268) = v72;
  v267 = v93;
  v266 = v96;
  if (v98)
  {
    v99 = *v97;
    v100 = v98;
  }

  else
  {
    v99 = 0;
    v100 = 0xE000000000000000;
  }

  *&v281[0] = v99;
  *(&v281[0] + 1) = v100;
  sub_1BE048C84();
  v101 = sub_1BE0506C4();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = sub_1BE050344();
  v109 = sub_1BE0505F4();
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v108, v110, v112, v114, v116, v117, v118, v119;
  sub_1BD0DDF10(v101, v103, (v105 & 1), v120, v121, v122, v123, v124);
  v107, v125, v126, v127, v128, v129, v130, v131;
  v132 = swift_getKeyPath();
  v283 = v113 & 1;
  *&v277 = v109;
  *(&v277 + 1) = v111;
  LOBYTE(v278) = v113 & 1;
  *(&v278 + 1) = v115;
  LOWORD(v279) = 256;
  *(&v279 + 1) = v132;
  v280 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48328, &qword_1BE0DBE68);
  sub_1BD4E2BAC();
  v133 = 1;
  v134 = v244;
  sub_1BE050EA4();
  v281[0] = v277;
  v281[1] = v278;
  v281[2] = v279;
  v282 = v280;
  sub_1BD0DE53C(v281, &qword_1EBD48328, &qword_1BE0DBE68);
  v135 = swift_getKeyPath();
  v136 = v247;
  (*(v245 + 32))(v247, v134, v248);
  v137 = v136 + *(v246 + 36);
  *v137 = v135;
  *(v137 + 8) = 2;
  *(v137 + 16) = 0;
  v138 = v273;
  v139 = v274;
  v267(v273, v268, v274);
  sub_1BD4E2CE8();
  v140 = v251;
  sub_1BE050B24();
  (v266)(v138, v139);
  sub_1BD0DE53C(v136, &qword_1EBD482F8, &qword_1BE0DBDD0);
  v141 = v271;
  v142 = v256;
  sub_1BD4E2A8C(v271, v256, type metadata accessor for FinanceKitMerchantHeaderView);
  v143 = (*(v254 + 80) + 16) & ~*(v254 + 80);
  v144 = swift_allocObject();
  sub_1BD4E26AC(v142, v144 + v143);
  v145 = v249;
  (*(v252 + 32))(v249, v140, v253);
  v146 = (v145 + *(v250 + 36));
  *v146 = sub_1BD4DF3B4;
  v146[1] = 0;
  v146[2] = sub_1BD4E3040;
  v146[3] = v144;
  sub_1BD0DE204(v145, v272, &qword_1EBD48308, &unk_1BE0DBDE0);
  v147 = (v141 + v270[6]);
  v148 = v147[1];
  if (v148)
  {
    v149 = *v147;
    v150 = v240;
    v151 = v239;
    v152 = v241;
    (*(v240 + 104))(v239, *MEMORY[0x1E69B80B0], v241);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v153 = swift_allocObject();
    *(v153 + 16) = xmmword_1BE0B69E0;
    *(v153 + 56) = MEMORY[0x1E69E6158];
    *(v153 + 64) = sub_1BD110550();
    *(v153 + 32) = v149;
    *(v153 + 40) = v148;
    sub_1BE048C84();
    v154 = sub_1BE04B714();
    v156 = v155;
    v153, v155, v157, v158, v159, v160, v161, v162;
    (*(v150 + 8))(v151, v152);
    *&v277 = v154;
    *(&v277 + 1) = v156;
    v163 = sub_1BE0506C4();
    v165 = v164;
    LOBYTE(v156) = v166;
    v168 = v167;
    v169 = sub_1BE050444();
    v170 = sub_1BE0505F4();
    v172 = v171;
    v174 = v173;
    v176 = v175;
    v169, v171, v173, v175, v177, v178, v179, v180;
    sub_1BD0DDF10(v163, v165, (v156 & 1), v181, v182, v183, v184, v185);
    v168, v186, v187, v188, v189, v190, v191, v192;
    LODWORD(v277) = sub_1BE04FC94();
    v193 = sub_1BE050574();
    v195 = v194;
    LOBYTE(v165) = v196;
    v198 = v197;
    sub_1BD0DDF10(v170, v172, (v174 & 1), v197, v199, v200, v201, v202);
    v176, v203, v204, v205, v206, v207, v208, v209;
    *&v277 = v193;
    *(&v277 + 1) = v195;
    LOBYTE(v278) = v165 & 1;
    *(&v278 + 1) = v198;
    v210 = v273;
    v211 = v274;
    v267(v273, v268, v274);
    v212 = v242;
    sub_1BE050B24();
    (v266)(v210, v211);
    sub_1BD0DDF10(v193, v195, (v165 & 1), v213, v214, v215, v216, v217);
    v198, v218, v219, v220, v221, v222, v223, v224;
    v225 = v261;
    v226 = v263;
    v227 = v262;
    (*(v261 + 32))(v263, v212, v262);
    v133 = 0;
  }

  else
  {
    v226 = v263;
    v227 = v262;
    v225 = v261;
  }

  (*(v225 + 56))(v226, v133, 1, v227);
  v228 = v258;
  v229 = *(v258 + 16);
  v230 = v257;
  v231 = v259;
  v229(v257, v275, v259);
  v232 = v272;
  v233 = v260;
  sub_1BD0DE19C(v272, v260, &qword_1EBD48308, &unk_1BE0DBDE0);
  v234 = v264;
  sub_1BD0DE19C(v226, v264, &qword_1EBD482E8, &qword_1BE0DBDC0);
  v235 = v265;
  v229(v265, v230, v231);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48350, &unk_1BE0DBE80);
  sub_1BD0DE19C(v233, &v235[*(v236 + 48)], &qword_1EBD48308, &unk_1BE0DBDE0);
  sub_1BD0DE19C(v234, &v235[*(v236 + 64)], &qword_1EBD482E8, &qword_1BE0DBDC0);
  sub_1BD0DE53C(v226, &qword_1EBD482E8, &qword_1BE0DBDC0);
  sub_1BD0DE53C(v232, &qword_1EBD48308, &unk_1BE0DBDE0);
  v237 = *(v228 + 8);
  v237(v275, v231);
  sub_1BD0DE53C(v234, &qword_1EBD482E8, &qword_1BE0DBDC0);
  sub_1BD0DE53C(v233, &qword_1EBD48308, &unk_1BE0DBDE0);
  return (v237)(v230, v231);
}

double sub_1BD4DF3F4(char *a1, uint64_t a2)
{
  type metadata accessor for FinanceKitMerchantHeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD4DF468@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481C8, &qword_1BE0DBCC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (v26 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481D0, &qword_1BE0DBCC8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481D8, &qword_1BE0DBCD0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  *v3 = sub_1BE051CA4();
  v3[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481E0, &qword_1BE0DBCD8);
  sub_1BD4DF76C(v3 + *(v12 + 44));
  sub_1BE051CC4();
  sub_1BE04EE54();
  sub_1BD0DE204(v3, v7, &qword_1EBD481C8, &qword_1BE0DBCC0);
  v13 = &v7[*(v5 + 44)];
  v14 = v32;
  *(v13 + 4) = v31;
  *(v13 + 5) = v14;
  *(v13 + 6) = v33;
  v15 = v28;
  *v13 = v27;
  *(v13 + 1) = v15;
  v16 = v30;
  *(v13 + 2) = v29;
  *(v13 + 3) = v16;
  v17 = sub_1BD4E0170();
  v18 = sub_1BE0501D4();
  sub_1BD0DE204(v7, v10, &qword_1EBD481D0, &qword_1BE0DBCC8);
  v19 = &v10[*(v8 + 36)];
  *v19 = v17;
  v19[8] = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481E8, &unk_1BE0DBCE0);
  v21 = sub_1BD4E253C();
  v22 = sub_1BE04EEA4();
  v23 = sub_1BD4E2A44(&qword_1EBD48208, MEMORY[0x1E697ED30], MEMORY[0x1E697ED28]);
  v26[2] = v22;
  v26[3] = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3DA90](sub_1BD4E035C, 0, v8, v20, v21, OpaqueTypeConformance2);
  return sub_1BD0DE53C(v10, &qword_1EBD481D8, &qword_1BE0DBCD0);
}

uint64_t sub_1BD4DF76C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720, &qword_1BE0DBCF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74 = &v64 - v4;
  v5 = type metadata accessor for FinanceKitMerchantHeaderView(0);
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = v6;
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48210, &qword_1BE0DBCF8);
  MEMORY[0x1EEE9AC00](v73);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v64 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48218, &qword_1BE0DBD00);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48220, &unk_1BE0DBD08);
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v70 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  v27 = sub_1BE04AA64();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v68 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v69 = &v64 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v80 = &v64 - v33;
  v34 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  sub_1BD0DE19C(v2 + *(v34 + 20), v23, &unk_1EBD3CF70, &qword_1BE0BA000);
  v35 = *(v28 + 48);
  if (v35(v23, 1, v27) == 1)
  {
    sub_1BD0DE19C(v2 + *(v34 + 36), v26, &unk_1EBD3CF70, &qword_1BE0BA000);
    if (v35(v23, 1, v27) != 1)
    {
      sub_1BD0DE53C(v23, &unk_1EBD3CF70, &qword_1BE0BA000);
    }
  }

  else
  {
    (*(v28 + 32))(v26, v23, v27);
    (*(v28 + 56))(v26, 0, 1, v27);
  }

  if (v35(v26, 1, v27) == 1)
  {
    sub_1BD0DE53C(v26, &unk_1EBD3CF70, &qword_1BE0BA000);
    v36 = 1;
    v37 = v83;
    v38 = v84;
  }

  else
  {
    v67 = v9;
    v39 = v80;
    v65 = *(v28 + 32);
    v65(v80, v26, v27);
    v40 = v81;
    v64 = *(v28 + 16);
    v64(v81, v39, v27);
    (*(v28 + 56))(v40, 0, 1, v27);
    MEMORY[0x1BFB3EDF0](0.3, 1.0, 0.0);
    v66 = sub_1BE04E494();
    sub_1BD4E2A8C(v2, v7, type metadata accessor for FinanceKitMerchantHeaderView);
    v41 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v42 = swift_allocObject();
    sub_1BD4E26AC(v7, v42 + v41);
    v43 = [objc_opt_self() sharedURLCache];
    v44 = v40;
    v45 = v70;
    sub_1BD0DE19C(v44, v70, &unk_1EBD3CF70, &qword_1BE0BA000);
    if (v35(v45, 1, v27) == 1)
    {
      sub_1BD0DE53C(v45, &unk_1EBD3CF70, &qword_1BE0BA000);
      v46 = 1;
      v47 = v74;
    }

    else
    {
      v48 = v69;
      v65(v69, v45, v27);
      v64(v68, v48, v27);
      v47 = v74;
      sub_1BE04A114();
      (*(v28 + 8))(v48, v27);
      v46 = 0;
    }

    v49 = v67;
    v50 = sub_1BE04A134();
    (*(*(v50 - 8) + 56))(v47, v46, 1, v50);
    v51 = v73;
    sub_1BD0DE204(v47, v49 + *(v73 + 40), &qword_1EBD45720, &qword_1BE0DBCF0);
    *(v49 + 16) = sub_1BD4E2710;
    *(v49 + 24) = v42;
    *(v49 + v51[12]) = v66;
    v52 = v49 + v51[13];
    *v52 = 0;
    *(v52 + 8) = 0;
    *(v52 + 16) = 0;
    *(v52 + 24) = 1;
    *(v49 + v51[11]) = v43;
    v85 = 0x8000000000000000;
    sub_1BE051694();
    sub_1BD0DE53C(v81, &unk_1EBD3CF70, &qword_1BE0BA000);
    *v49 = v86;
    v53 = v78;
    sub_1BD0DE204(v49, v78, &qword_1EBD48210, &qword_1BE0DBCF8);
    sub_1BE051CD4();
    sub_1BE04EE54();
    (*(v28 + 8))(v80, v27);
    v54 = v79;
    sub_1BD0DE204(v53, v79, &qword_1EBD48210, &qword_1BE0DBCF8);
    v55 = (v54 + *(v77 + 36));
    v56 = v91;
    v55[4] = v90;
    v55[5] = v56;
    v55[6] = v92;
    v57 = v87;
    *v55 = v86;
    v55[1] = v57;
    v58 = v89;
    v55[2] = v88;
    v55[3] = v58;
    v59 = v76;
    sub_1BD0DE204(v54, v76, &qword_1EBD48218, &qword_1BE0DBD00);
    v37 = v83;
    *(v59 + *(v83 + 36)) = 0;
    v60 = v59;
    v61 = v75;
    sub_1BD0DE204(v60, v75, &qword_1EBD48220, &unk_1BE0DBD08);
    v62 = v61;
    v38 = v84;
    sub_1BD0DE204(v62, v84, &qword_1EBD48220, &unk_1BE0DBD08);
    v36 = 0;
  }

  return (*(v82 + 56))(v38, v36, 1, v37);
}

uint64_t sub_1BD4E0170()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  sub_1BD0DE19C(v0 + *(v7 + 20), v6, &unk_1EBD3CF70, &qword_1BE0BA000);
  v8 = sub_1BE04AA64();
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v6, 1, v8);
  sub_1BD0DE53C(v6, &unk_1EBD3CF70, &qword_1BE0BA000);
  if (v10 == 1 && (sub_1BD0DE19C(v0 + *(v7 + 36), v3, &unk_1EBD3CF70, &qword_1BE0BA000), v11 = v9(v3, 1, v8), sub_1BD0DE53C(v3, &unk_1EBD3CF70, &qword_1BE0BA000), v11 == 1))
  {
    v12 = *v0;
    if (!*v0)
    {
      [objc_opt_self() tintColor];
      v12 = 0;
    }

    v14 = v12;
  }

  else
  {
    v13 = [objc_opt_self() quaternarySystemFillColor];
  }

  return sub_1BE0511C4();
}

uint64_t sub_1BD4E035C()
{
  v0 = sub_1BE04FB74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E684();
  v5 = v4;
  sub_1BE04FD34();
  sub_1BE04E694();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v1 + 8))(v3, v0);
  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  v14 = v5 + CGRectGetMinY(v25);
  sub_1BE04E684();
  v16 = fmax(v14 / v15, 1.0);
  sub_1BE051E94();
  v18 = v17;
  v20 = v19;
  v21 = sub_1BE04EEA4();
  v22 = sub_1BD4E2A44(&qword_1EBD48208, MEMORY[0x1E697ED30], MEMORY[0x1E697ED28]);
  return MEMORY[0x1BFB3B650](v21, v22, v16, v18, v20);
}

uint64_t sub_1BD4E0508@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v4 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v38 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48228, &qword_1BE0DBD18);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v38 - v7;
  v9 = sub_1BE04F454();
  v10 = *(v9 - 8);
  v41 = v9;
  v42 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_1BE051584();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48230, &qword_1BE0DBD20);
  v19 = MEMORY[0x1EEE9AC00](v44);
  v21 = &v38 - v20;
  if (a1 >> 62)
  {
    sub_1BE04E4F4();
    v37 = v47;
    (*(v4 + 16))(v8, v6, v47);
    swift_storeEnumTagMultiPayload();
    sub_1BD4E2790();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BE04F9A4();
    return (*(v4 + 8))(v6, v37);
  }

  else
  {
    (*(v16 + 104))(v18, *MEMORY[0x1E6981630], v15, v19);
    v22 = sub_1BE0515E4();
    (*(v16 + 8))(v18, v15);
    v23 = sub_1BE051CD4();
    v25 = v24;
    sub_1BD4E0A6C(&v48);
    v26 = v48;
    v38 = v50;
    v39 = v49;
    LOBYTE(v48) = 1;
    v27 = sub_1BE051CD4();
    v29 = v28;
    v30 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48258, &qword_1BE0DBD30) + 36)];
    sub_1BD4E0CC0(v43, v30);
    v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48288, &unk_1BE0DBD50) + 36));
    *v31 = v27;
    v31[1] = v29;
    *v21 = v22;
    *(v21 + 1) = 0;
    *(v21 + 8) = 257;
    *(v21 + 3) = v26;
    v32 = v38;
    *(v21 + 2) = v39;
    *(v21 + 3) = v32;
    *(v21 + 8) = v23;
    *(v21 + 9) = v25;
    sub_1BE04F444();
    v34 = v41;
    v33 = v42;
    (*(v42 + 16))(v40, v14, v41);
    sub_1BD4E2A44(&unk_1EBD367A0, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v35 = sub_1BE04E644();
    (*(v33 + 8))(v14, v34);
    *&v21[*(v44 + 36)] = v35;
    sub_1BD0DE19C(v21, v8, &qword_1EBD48230, &qword_1BE0DBD20);
    swift_storeEnumTagMultiPayload();
    sub_1BD4E2790();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v21, &qword_1EBD48230, &qword_1BE0DBD20);
  }
}

double sub_1BD4E0A6C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48298, &qword_1BE113B40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B98E0;
  v7 = *MEMORY[0x1E69814D8];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  sub_1BE0514B4();
  *(v6 + 32) = sub_1BE051B04();
  *(v6 + 40) = v9;
  v8(v5, v7, v2);
  sub_1BE0514B4();
  *(v6 + 48) = sub_1BE051B04();
  *(v6 + 56) = v10;
  v8(v5, v7, v2);
  sub_1BE0514B4();
  *(v6 + 64) = sub_1BE051B04();
  *(v6 + 72) = v11;
  v8(v5, v7, v2);
  sub_1BE0514B4();
  *(v6 + 80) = sub_1BE051B04();
  *(v6 + 88) = v12;
  sub_1BE051E84();
  sub_1BE051E94();
  sub_1BE051B14();
  sub_1BE04E874();
  result = *&v16;
  v14 = v17;
  *a1 = v16;
  *(a1 + 16) = v14;
  *(a1 + 32) = v18;
  return result;
}

uint64_t sub_1BD4E0CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48290, &unk_1BE0DBD60);
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v12 = *(v11 + 20);
  v24 = a1;
  sub_1BD0DE19C(a1 + v12, v10, &unk_1EBD3CF70, &qword_1BE0BA000);
  v13 = sub_1BE04AA64();
  v14 = *(*(v13 - 8) + 48);
  v15 = 1;
  LODWORD(a1) = v14(v10, 1, v13);
  v16 = v10;
  v17 = v25;
  sub_1BD0DE53C(v16, &unk_1EBD3CF70, &qword_1BE0BA000);
  if (a1 == 1)
  {
    sub_1BD0DE19C(v24 + *(v11 + 36), v7, &unk_1EBD3CF70, &qword_1BE0BA000);
    v18 = v14(v7, 1, v13);
    sub_1BD0DE53C(v7, &unk_1EBD3CF70, &qword_1BE0BA000);
    if (v18 != 1)
    {
      v19 = sub_1BE051404();
      v20 = sub_1BE0501D4();
      v21 = v23;
      sub_1BE051BE4();
      *v21 = v19;
      *(v21 + 8) = v20;
      sub_1BD0DE204(v21, v17, &qword_1EBD48290, &unk_1BE0DBD60);
      v15 = 0;
    }
  }

  return (*(v26 + 56))(v17, v15, 1, v3);
}

uint64_t sub_1BD4E0F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1BE04AFE4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358, &qword_1BE0DBE98);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48360, &unk_1BE0DF0B0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v5 = sub_1BE049B04();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD4E1248, 0, 0);
}

uint64_t sub_1BD4E1248()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 184);
  v111 = *(v0 + 176);
  v112 = *(v0 + 32);
  v114 = *(v0 + 120);
  v5 = v1[5];
  v6 = sub_1BE04AA64();
  v117 = v5;
  v118 = *(v6 - 8);
  v7 = *(v118 + 56);
  v7(v2 + v5, 1, 1, v6);
  v8 = (v2 + v1[6]);
  *v8 = 0;
  v8[1] = 0;
  v110 = v8;
  v115 = v1[9];
  v116 = v6;
  v120 = v7;
  v7(v2 + v115, 1, 1, v6);
  v9 = v1[10];
  *(v0 + 288) = v9;
  v10 = sub_1BE0491F4();
  *(v0 + 224) = v10;
  v11 = *(v10 - 8);
  *(v0 + 232) = v11;
  v12 = *(v11 + 56);
  *(v0 + 240) = v12;
  *(v0 + 248) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v119 = v2;
  v12(v2 + v9, 1, 1, v10);
  sub_1BE0499D4();
  sub_1BE049AB4();
  v13 = *(v4 + 8);
  *(v0 + 256) = v13;
  *(v0 + 264) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v111);
  sub_1BD0DE19C(v112, v114, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v14 = sub_1BE0491B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v114, 1, v14) == 1)
  {
    v17 = *(v0 + 120);
    v18 = &qword_1EBD3F7C0;
    v19 = &unk_1BE0D6570;
LABEL_5:
    sub_1BD0DE53C(v17, v18, v19);
    v24 = v116;
    v120(*(v0 + 168), 1, 1, v116);
    goto LABEL_7;
  }

  v20 = *(v0 + 144);
  v21 = *(v0 + 120);
  sub_1BE049194();
  (*(v15 + 8))(v21, v14);
  v22 = sub_1BE04A0D4();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    v17 = *(v0 + 144);
    v18 = &qword_1EBD48360;
    v19 = &unk_1BE0DF0B0;
    goto LABEL_5;
  }

  v25 = *(v0 + 144);
  sub_1BE04A0C4();
  (*(v23 + 8))(v25, v22);
  v24 = v116;
LABEL_7:
  v26 = *(v0 + 112);
  v27 = *(v0 + 32);
  sub_1BD4E30B0(*(v0 + 168), v119 + v115);
  sub_1BD0DE19C(v27, v26, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v113 = v15;
  if (v16(v26, 1, v14) == 1)
  {
    v28 = *(v0 + 112);
    v29 = &qword_1EBD3F7C0;
    v30 = &unk_1BE0D6570;
LABEL_11:
    sub_1BD0DE53C(v28, v29, v30);
    v120(*(v0 + 152), 1, 1, v24);
    goto LABEL_12;
  }

  v31 = *(v0 + 136);
  v32 = *(v0 + 112);
  sub_1BE049194();
  (*(v15 + 8))(v32, v14);
  v33 = sub_1BE04A0D4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v31, 1, v33) == 1)
  {
    v28 = *(v0 + 136);
    v29 = &qword_1EBD48360;
    v30 = &unk_1BE0DF0B0;
    goto LABEL_11;
  }

  v44 = *(v0 + 152);
  v45 = *(v0 + 136);
  sub_1BE04A074();
  (*(v34 + 8))(v45, v33);
  if ((*(v118 + 48))(v44, 1, v24) != 1)
  {
    v46 = *(v0 + 160);
    (*(v118 + 32))(v46, *(v0 + 152), v24);
    v120(v46, 0, 1, v24);
    goto LABEL_22;
  }

LABEL_12:
  v35 = *(v0 + 104);
  sub_1BD0DE19C(*(v0 + 32), v35, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v36 = v16(v35, 1, v14);
  v37 = *(v0 + 104);
  if (v36 == 1)
  {
    v38 = &qword_1EBD3F7C0;
    v39 = &unk_1BE0D6570;
    v40 = *(v0 + 104);
LABEL_16:
    sub_1BD0DE53C(v40, v38, v39);
    v120(*(v0 + 160), 1, 1, v24);
    goto LABEL_20;
  }

  v41 = *(v0 + 80);
  sub_1BE0491A4();
  (*(v15 + 8))(v37, v14);
  v42 = sub_1BE049294();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    v40 = *(v0 + 80);
    v38 = &qword_1EBD48358;
    v39 = &qword_1BE0DBE98;
    goto LABEL_16;
  }

  v47 = *(v0 + 80);
  sub_1BE049224();
  (*(v43 + 8))(v47, v42);
LABEL_20:
  v48 = *(v0 + 152);
  if ((*(v118 + 48))(v48, 1, v24) != 1)
  {
    sub_1BD0DE53C(v48, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

LABEL_22:
  v49 = *(v0 + 32);
  sub_1BD4E30B0(*(v0 + 160), v119 + v117);
  sub_1BD736290(v49);
  v51 = v50;
  v52 = sub_1BE052404();
  v51, v53, v54, v55, v56, v57, v58, v59;
  v60 = PKMerchantFormattedDisplayName();

  if (v60)
  {
    v61 = sub_1BE052434();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v64 = *(v0 + 96);
  v65 = *(v0 + 32);
  v66 = (*(v0 + 216) + *(*(v0 + 208) + 32));
  *v66 = v61;
  v66[1] = v63;
  sub_1BD0DE19C(v65, v64, &qword_1EBD3F7C0, &unk_1BE0D6570);
  if (v16(v64, 1, v14) == 1)
  {
    sub_1BD0DE53C(*(v0 + 96), &qword_1EBD3F7C0, &unk_1BE0D6570);
  }

  else
  {
    v67 = *(v0 + 128);
    v68 = *(v0 + 96);
    sub_1BE049194();
    (*(v113 + 8))(v68, v14);
    v69 = sub_1BE04A0D4();
    v70 = *(v69 - 8);
    v71 = (*(v70 + 48))(v67, 1, v69);
    v72 = *(v0 + 128);
    if (v71 == 1)
    {
      sub_1BD0DE53C(*(v0 + 128), &qword_1EBD48360, &unk_1BE0DF0B0);
    }

    else
    {
      v73 = sub_1BE04A0A4();
      v75 = v74;
      (*(v70 + 8))(v72, v69);
      if (v75)
      {
LABEL_40:
        v108 = HIBYTE(v75) & 0xF;
        if ((v75 & 0x2000000000000000) == 0)
        {
          v108 = v73 & 0xFFFFFFFFFFFFLL;
        }

        if (!v108)
        {
          v94 = v75;
          goto LABEL_35;
        }

        *v110 = v73;
        v110[1] = v75;
        goto LABEL_36;
      }
    }
  }

  v83 = *(v0 + 88);
  sub_1BD0DE19C(*(v0 + 32), v83, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v84 = v16(v83, 1, v14);
  v85 = *(v0 + 88);
  if (v84 == 1)
  {
    v86 = &qword_1EBD3F7C0;
    v87 = &unk_1BE0D6570;
    v88 = *(v0 + 88);
LABEL_34:
    sub_1BD0DE53C(v88, v86, v87);
    v94 = 0;
LABEL_35:
    v94, v76, v77, v78, v79, v80, v81, v82;
    goto LABEL_36;
  }

  v89 = *(v0 + 72);
  sub_1BE0491A4();
  (*(v113 + 8))(v85, v14);
  v90 = sub_1BE049294();
  v91 = *(v90 - 8);
  v92 = (*(v91 + 48))(v89, 1, v90);
  v93 = *(v0 + 72);
  if (v92 == 1)
  {
    v86 = &qword_1EBD48358;
    v87 = &qword_1BE0DBE98;
    v88 = *(v0 + 72);
    goto LABEL_34;
  }

  v73 = sub_1BE049254();
  v75 = v100;
  (*(v91 + 8))(v93, v90);
  0, v101, v102, v103, v104, v105, v106, v107;
  if (v75)
  {
    goto LABEL_40;
  }

LABEL_36:
  v95 = (*(v0 + 216) + *(*(v0 + 208) + 28));
  *v95 = sub_1BE049AE4();
  v95[1] = v96;
  sub_1BE0490F4();
  *(v0 + 272) = sub_1BE0490B4();
  sub_1BE049A14();
  v97 = swift_task_alloc();
  *(v0 + 280) = v97;
  *v97 = v0;
  v97[1] = sub_1BD4E1C98;
  v99 = *(v0 + 56);
  v98 = *(v0 + 64);

  return MEMORY[0x1EEDC14C0](v98, v99, 1, 0);
}

uint64_t sub_1BD4E1C98()
{
  v2 = *v1;

  v3 = v2[34];
  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    v3, v7, v8, v9, v10, v11, v12, v13;
    (*(v5 + 8))(v4, v6);
    v14 = sub_1BD4E21BC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v3, v15, v16, v17, v18, v19, v20, v21;
    v14 = sub_1BD4E1E54;
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

uint64_t sub_1BD4E1E54()
{
  v1 = *(*(v0 + 232) + 48);
  if (!v1(*(v0 + 64), 1, *(v0 + 224)))
  {
    v13 = sub_1BE0491C4();
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 216);
      *v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      v16 = sub_1BE052BA4();
      if (!v16)
      {
        (*(v0 + 256))(*(v0 + 200), *(v0 + 176));

        goto LABEL_3;
      }

      v17 = v16;
      if (CGColorGetNumberOfComponents(v14) <= 2 || (result = v1(*(v0 + 64), 1, *(v0 + 224)), result))
      {
        (*(v0 + 256))(*(v0 + 200), *(v0 + 176));

        v17, v25, v26, v27, v28, v29, v30, v31;
        goto LABEL_3;
      }

      v32 = *(v17 + 16);
      if (v32)
      {
        if (v32 != 1)
        {
          if (v32 >= 3)
          {
            v33 = *(v17 + 32) * 0.9;
            v34 = *(v0 + 256);
            v35 = *(v0 + 200);
            v36 = *(v0 + 176);
            v37 = *(v17 + 40) * 0.9;
            v38 = *(v17 + 48);
            v17, v18, v19, v20, v21, v22, v23, v24;
            CGColorCreateGenericRGB(v33, v37, v38 * 0.9, 1.0);
            sub_1BE0491D4();

            v34(v35, v36);
            goto LABEL_3;
          }

LABEL_18:
          __break(1u);
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  v2 = *(v0 + 256);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  (*(*(v0 + 184) + 16))(v4, v5, v6);
  MEMORY[0x1BFB3FF90](v4);
  PKScreenScale();
  v7 = PKColorForFKCategory();
  v2(v5, v6);
  *v3 = v7;
LABEL_3:
  v8 = *(v0 + 216);
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);
  sub_1BD4E3120(v9, v8 + *(v0 + 288));
  sub_1BD4E2A8C(v8, v10, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v9, &qword_1EBD45CC0, &qword_1BE0D5630);
  sub_1BD4E3190(v8, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1BD4E21BC()
{
  (*(v0 + 240))(*(v0 + 64), 1, 1, *(v0 + 224));
  v1 = *(*(v0 + 232) + 48);
  if (!v1(*(v0 + 64), 1, *(v0 + 224)))
  {
    v13 = sub_1BE0491C4();
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 216);
      *v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      v16 = sub_1BE052BA4();
      if (!v16)
      {
        (*(v0 + 256))(*(v0 + 200), *(v0 + 176));

        goto LABEL_3;
      }

      v17 = v16;
      if (CGColorGetNumberOfComponents(v14) <= 2 || (result = v1(*(v0 + 64), 1, *(v0 + 224)), result))
      {
        (*(v0 + 256))(*(v0 + 200), *(v0 + 176));

        v17, v25, v26, v27, v28, v29, v30, v31;
        goto LABEL_3;
      }

      v32 = *(v17 + 16);
      if (v32)
      {
        if (v32 != 1)
        {
          if (v32 >= 3)
          {
            v33 = *(v17 + 32) * 0.9;
            v34 = *(v0 + 256);
            v35 = *(v0 + 200);
            v36 = *(v0 + 176);
            v37 = *(v17 + 40) * 0.9;
            v38 = *(v17 + 48);
            v17, v18, v19, v20, v21, v22, v23, v24;
            CGColorCreateGenericRGB(v33, v37, v38 * 0.9, 1.0);
            sub_1BE0491D4();

            v34(v35, v36);
            goto LABEL_3;
          }

LABEL_18:
          __break(1u);
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  v2 = *(v0 + 256);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  (*(*(v0 + 184) + 16))(v4, v5, v6);
  MEMORY[0x1BFB3FF90](v4);
  PKScreenScale();
  v7 = PKColorForFKCategory();
  v2(v5, v6);
  *v3 = v7;
LABEL_3:
  v8 = *(v0 + 216);
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);
  sub_1BD4E3120(v9, v8 + *(v0 + 288));
  sub_1BD4E2A8C(v8, v10, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v9, &qword_1EBD45CC0, &qword_1BE0D5630);
  sub_1BD4E3190(v8, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_1BD4E253C()
{
  result = qword_1EBD481F0;
  if (!qword_1EBD481F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481D8, &qword_1BE0DBCD0);
    sub_1BD4E25F4();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD481F0);
  }

  return result;
}

unint64_t sub_1BD4E25F4()
{
  result = qword_1EBD481F8;
  if (!qword_1EBD481F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481D0, &qword_1BE0DBCC8);
    sub_1BD0DE4F4(&qword_1EBD48200, &qword_1EBD481C8, &qword_1BE0DBCC0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD481F8);
  }

  return result;
}

uint64_t sub_1BD4E26AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitMerchantHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4E2710@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitMerchantHeaderView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD4E0508(a1, v6, a2);
}

unint64_t sub_1BD4E2790()
{
  result = qword_1EBD48238;
  if (!qword_1EBD48238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48230, &qword_1BE0DBD20);
    sub_1BD4E2848();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0, &unk_1BE0C9F40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48238);
  }

  return result;
}

unint64_t sub_1BD4E2848()
{
  result = qword_1EBD48240;
  if (!qword_1EBD48240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48248, &qword_1BE0DBD28);
    sub_1BD4E28D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48240);
  }

  return result;
}

unint64_t sub_1BD4E28D4()
{
  result = qword_1EBD48250;
  if (!qword_1EBD48250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48258, &qword_1BE0DBD30);
    sub_1BD4E298C();
    sub_1BD0DE4F4(&qword_1EBD48280, &qword_1EBD48288, &unk_1BE0DBD50, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48250);
  }

  return result;
}

unint64_t sub_1BD4E298C()
{
  result = qword_1EBD48260;
  if (!qword_1EBD48260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48268, &unk_1BE0DBD38);
    sub_1BD223C50();
    sub_1BD0DE4F4(&qword_1EBD48270, &qword_1EBD48278, &qword_1BE0DBD48, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48260);
  }

  return result;
}

uint64_t sub_1BD4E2A44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD4E2A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD4E2AF4()
{
  result = qword_1EBD48320;
  if (!qword_1EBD48320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48310, &qword_1BE0DBDF0);
    sub_1BD0DE43C();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48320);
  }

  return result;
}

unint64_t sub_1BD4E2BAC()
{
  result = qword_1EBD48330;
  if (!qword_1EBD48330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48328, &qword_1BE0DBE68);
    sub_1BD4E2C64();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48330);
  }

  return result;
}

unint64_t sub_1BD4E2C64()
{
  result = qword_1EBD48338;
  if (!qword_1EBD48338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48340, &unk_1BE0DBE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48338);
  }

  return result;
}

unint64_t sub_1BD4E2CE8()
{
  result = qword_1EBD48348;
  if (!qword_1EBD48348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD482F8, &qword_1BE0DBDD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48328, &qword_1BE0DBE68);
    sub_1BD4E2BAC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48348);
  }

  return result;
}

uint64_t objectdestroyTm_50()
{
  v1 = type metadata accessor for FinanceKitMerchantHeaderView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v4 = v3[5];
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  *(v2 + v3[6] + 8), v8, v9, v10, v11, v12, v13, v14;
  *(v2 + v3[7] + 8), v15, v16, v17, v18, v19, v20, v21;
  *(v2 + v3[8] + 8), v22, v23, v24, v25, v26, v27, v28;
  v29 = v3[9];
  if (!v7(v2 + v29, 1, v5))
  {
    (*(v6 + 8))(v2 + v29, v5);
  }

  v30 = v3[10];
  v31 = sub_1BE0491F4();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v2 + v30, 1, v31))
  {
    (*(v32 + 8))(v2 + v30, v31);
  }

  *(v2 + *(v1 + 20) + 8), v33, v34, v35, v36, v37, v38, v39;
  *(v2 + *(v1 + 24) + 8), v40, v41, v42, v43, v44, v45, v46;

  return swift_deallocObject();
}

double sub_1BD4E3040(char *a1)
{
  v3 = *(type metadata accessor for FinanceKitMerchantHeaderView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD4DF3F4(a1, v4);
}

uint64_t sub_1BD4E30B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4E3120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4E3190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD4E31F0()
{
  result = qword_1EBD48368;
  if (!qword_1EBD48368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481C0, &qword_1BE0DBCB8);
    sub_1BD4E327C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48368);
  }

  return result;
}

unint64_t sub_1BD4E327C()
{
  result = qword_1EBD48370;
  if (!qword_1EBD48370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48188, &qword_1BE0DBC40);
    sub_1BD4E3308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48370);
  }

  return result;
}

unint64_t sub_1BD4E3308()
{
  result = qword_1EBD48378;
  if (!qword_1EBD48378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48180, &qword_1BE0DBC38);
    sub_1BD4E3394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48378);
  }

  return result;
}

unint64_t sub_1BD4E3394()
{
  result = qword_1EBD48380;
  if (!qword_1EBD48380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48178, &qword_1BE0DBC30);
    sub_1BD4E3420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48380);
  }

  return result;
}

unint64_t sub_1BD4E3420()
{
  result = qword_1EBD48388;
  if (!qword_1EBD48388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481B8, &unk_1BE0DBCA8);
    sub_1BD4E34D8();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48388);
  }

  return result;
}

unint64_t sub_1BD4E34D8()
{
  result = qword_1EBD48390;
  if (!qword_1EBD48390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481B0, &unk_1BE0DBC68);
    sub_1BD4E3590();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48390);
  }

  return result;
}

unint64_t sub_1BD4E3590()
{
  result = qword_1EBD48398;
  if (!qword_1EBD48398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481A8, &qword_1BE0DBC60);
    sub_1BD4E361C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48398);
  }

  return result;
}

unint64_t sub_1BD4E361C()
{
  result = qword_1EBD483A0;
  if (!qword_1EBD483A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48198, &qword_1BE0DBC50);
    sub_1BD0DE4F4(&qword_1EBD483A8, &qword_1EBD483B0, &unk_1BE0DBEA0, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD483B8, &qword_1EBD481A0, &qword_1BE0DBC58, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD483A0);
  }

  return result;
}

uint64_t sub_1BD4E3724(uint64_t a1)
{
  v2 = sub_1BE04E354();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BE04EF04();
}

uint64_t sub_1BD4E37EC(SEL *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48448, &qword_1BE0F18A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A090, &unk_1BE0DC030);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = [*v1 *a1];
  sub_1BD0E5E8C(0, &qword_1EBD48450, 0x1E696B080);
  sub_1BE04A1D4();

  sub_1BE04B054();
  sub_1BE04A8F4();
  v14 = sub_1BE052CC4();
  sub_1BE04A1F4();

  if (qword_1EBD36C40 != -1)
  {
    swift_once();
  }

  v15 = sub_1BE052EB4();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v12, v5);
  return v15;
}

id sub_1BD4E3A5C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  result = [v0 numberFormatter];
  if (result)
  {
    v2 = result;
    [result setMaximumFractionDigits_];

    result = [v0 setUnitOptions_];
    qword_1EBD483C0 = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD4E3AE4()
{
  v0 = sub_1BE04AF64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = sub_1BE04B2D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE04B2F4();
  v11 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B2A4();
  (*(v8 + 104))(v10, *MEMORY[0x1E6969AB0], v7);
  sub_1BE04AF54();
  sub_1BE04B2E4();
  v14 = *(v1 + 8);
  v27 = v0;
  v15 = v0;
  v16 = v3;
  v17 = v14;
  v14(v6, v15);
  (*(v8 + 8))(v10, v7);
  sub_1BE04B134();
  v18 = *v25;
  v19 = [*v25 date];
  sub_1BE04AEE4();

  if (![v18 isHistoricalEstimate])
  {
    if ([v18 isForPastDate] & 1) != 0 || (sub_1BE04B164())
    {
      goto LABEL_6;
    }

    v21 = [v18 weatherDescription];
LABEL_8:
    v22 = sub_1BE052434();

    goto LABEL_9;
  }

  v20 = sub_1BE052404();
  v21 = PKLocalizedTicketingString(v20);

  if (v21)
  {
    goto LABEL_8;
  }

LABEL_6:
  v22 = 0;
LABEL_9:
  v17(v16, v27);
  (*(v11 + 8))(v13, v26);
  return v22;
}

void sub_1BD4E3E50()
{
  v1 = sub_1BE04B0F4();
  v120 = *(v1 - 8);
  v121 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v119 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04A474();
  v122 = *(v3 - 8);
  v123 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v125 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v124 = &v106 - v6;
  v7 = sub_1BE04B2D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1BE04B2F4();
  v11 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1BE04AF64();
  v14 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v106 - v19;
  v21 = *v0;
  v22 = [*v0 date];
  sub_1BE04AEE4();

  sub_1BE04B2A4();
  if ([v21 isHistoricalEstimate])
  {
    v23 = sub_1BE052404();
    v24 = PKLocalizedTicketingString(v23);

    if (v24)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_20;
  }

  if ([v21 isForPastDate] & 1) != 0 || (sub_1BE04B164())
  {
    v24 = [v21 weatherDescription];
LABEL_7:
    sub_1BE052434();

    (*(v11 + 8))(v13, v126);
    (*(v14 + 8))(v20, v127);
    return;
  }

  if (sub_1BE04B1B4())
  {
    v25 = sub_1BE052404();
    v24 = PKLocalizedTicketingString(v25);

    if (v24)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v26 = *MEMORY[0x1E6969AB0];
  v27 = *(v8 + 104);
  v117 = v8 + 104;
  v118 = v27;
  (v27)(v10, v26, v7);
  sub_1BE04AF54();
  sub_1BE04B2E4();
  v115 = *(v14 + 8);
  v115(v16, v127);
  v29 = *(v8 + 8);
  v28 = v8 + 8;
  v116 = v29;
  v29(v10, v7);
  sub_1BE04B134();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800, &unk_1BE0B8D20);
  v112 = *(v28 + 64);
  v113 = v30;
  v111 = *(v28 + 72);
  v31 = (v111 + 32) & ~v111;
  v32 = swift_allocObject();
  v110 = xmmword_1BE0B69E0;
  *(v32 + 16) = xmmword_1BE0B69E0;
  v109 = *MEMORY[0x1E6969A10];
  v108 = v31;
  v118(v32 + v31);
  v33 = sub_1BD111674(v32);
  swift_setDeallocating();
  v116(v32 + v31, v7);
  swift_deallocClassInstance();
  sub_1BE04AF54();
  sub_1BE04B194();
  v33, v34, v35, v36, v37, v38, v39, v40;
  v115(v16, v127);
  v107 = sub_1BE04A3F4();
  v114 = v41;
  v42 = v108;
  v43 = swift_allocObject();
  *(v43 + 16) = v110;
  (v118)(v43 + v42, v109, v7);
  v44 = sub_1BD111674(v43);
  swift_setDeallocating();
  v116(v43 + v42, v7);
  swift_deallocClassInstance();
  sub_1BE04B194();
  v44, v45, v46, v47, v48, v49, v50, v51;
  v117 = sub_1BE04A3F4();
  LODWORD(v118) = v52;
  v53 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v53 setFormattingContext_];
  v54 = sub_1BE052404();
  [v53 setDateFormat_];

  v55 = v119;
  sub_1BE04AFF4();
  v56 = sub_1BE04B044();
  (*(v120 + 8))(v55, v121);
  [v53 setLocale_];

  v57 = sub_1BE04AE64();
  v58 = [v53 stringFromDate_];

  sub_1BE052434();
  v60 = v59;

  v61 = sub_1BE0524C4();
  v63 = v62;
  v60, v62, v64, v65, v66, v67, v68, v69;
  if (v114)
  {
    v70 = 1397311572;
    if (v118)
    {
      goto LABEL_17;
    }

LABEL_16:
    v70 = 1415071054;
    goto LABEL_17;
  }

  v70 = 1397311572;
  if ((v118 & 1) != 0 || v107 != v117)
  {
    goto LABEL_16;
  }

LABEL_17:
  strcpy(v128, "TILE_WEATHER_");
  HIWORD(v128[1]) = -4864;
  MEMORY[0x1BFB3F610](v70, 0xE400000000000000);
  v71 = v128[1];
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](95, 0xE100000000000000);
  v71, v72, v73, v74, v75, v76, v77, v78;
  v79 = v128[1];
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v61, v63);
  v79, v80, v81, v82, v83, v84, v85, v86;
  v87 = v128[1];
  v88 = sub_1BE052404();
  v87, v89, v90, v91, v92, v93, v94, v95;
  v96 = PKLocalizedTicketingString(v88);

  if (v96)
  {
    v63, v97, v98, v99, v100, v101, v102, v103;
    sub_1BE052434();

    v104 = v123;
    v105 = *(v122 + 8);
    v105(v125, v123);
    v105(v124, v104);
    (*(v11 + 8))(v13, v126);
    v115(v20, v127);
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1BD4E4758()
{
  v1 = v0;
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04F7B4();
  v20 = 0;
  sub_1BD4E49A0(v1, v24);
  memcpy(v22, v24, 0x181uLL);
  memcpy(v23, v24, 0x181uLL);
  sub_1BD0DE19C(v22, v18, &qword_1EBD483E8, &qword_1BE0DBFB0);
  sub_1BD0DE53C(v23, &qword_1EBD483E8, &qword_1BE0DBFB0);
  memcpy(&v19[7], v22, 0x181uLL);
  v7 = v20;
  [objc_opt_self() defaultHorizontalInset];
  LOBYTE(v1) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v21 = 0;
  v18[0] = v6;
  v18[1] = 0x4010000000000000;
  LOBYTE(v18[2]) = v7;
  memcpy(&v18[2] + 1, v19, 0x188uLL);
  LOBYTE(v18[52]) = v1;
  v18[53] = v9;
  v18[54] = v11;
  v18[55] = v13;
  v18[56] = v15;
  LOBYTE(v18[57]) = 0;
  sub_1BE04FF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD483F0, &qword_1BE0DBFB8);
  sub_1BD4E7480();
  sub_1BE050D14();
  (*(v3 + 8))(v5, v2);
  memcpy(v24, v18, 0x1C9uLL);
  return sub_1BD0DE53C(v24, &qword_1EBD483F0, &qword_1BE0DBFB8);
}

uint64_t sub_1BD4E49A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1BE04F504();
  sub_1BD4E4EB8(a1, &v46);
  v22 = *&v47[48];
  v23 = *&v47[64];
  v24 = *&v47[80];
  v18 = v46;
  v19 = *v47;
  v20 = *&v47[16];
  v21 = *&v47[32];
  v25[0] = v46;
  v25[1] = *v47;
  v25[2] = *&v47[16];
  v25[3] = *&v47[32];
  v25[4] = *&v47[48];
  v25[5] = *&v47[64];
  v26 = *&v47[80];
  sub_1BD0DE19C(&v18, __src, &qword_1EBD48410, &qword_1BE0DBFC8);
  sub_1BD0DE53C(v25, &qword_1EBD48410, &qword_1BE0DBFC8);
  *(&v17[3] + 7) = v21;
  *(&v17[4] + 7) = v22;
  *(&v17[5] + 7) = v23;
  *(v17 + 7) = v18;
  *(&v17[1] + 7) = v19;
  *(&v17[6] + 7) = v24;
  *(&v17[2] + 7) = v20;
  v4 = sub_1BE04F4B4();
  LOBYTE(v7[0]) = 1;
  sub_1BD4E6124(a1, &v46);
  v38 = *&v47[160];
  v39 = *&v47[176];
  v40[0] = *&v47[192];
  *(v40 + 9) = *&v47[201];
  v35 = *&v47[112];
  v36 = *&v47[128];
  v37 = *&v47[144];
  v31 = *&v47[48];
  v32 = *&v47[64];
  v33 = *&v47[80];
  v34 = *&v47[96];
  v27 = v46;
  v28 = *v47;
  v29 = *&v47[16];
  v30 = *&v47[32];
  v41[11] = *&v47[160];
  v41[12] = *&v47[176];
  v42[0] = *&v47[192];
  *(v42 + 9) = *&v47[201];
  v41[8] = *&v47[112];
  v41[9] = *&v47[128];
  v41[10] = *&v47[144];
  v41[4] = *&v47[48];
  v41[5] = *&v47[64];
  v41[6] = *&v47[80];
  v41[7] = *&v47[96];
  v41[0] = v46;
  v41[1] = *v47;
  v41[2] = *&v47[16];
  v41[3] = *&v47[32];
  sub_1BD0DE19C(&v27, __src, &qword_1EBD48418, &qword_1BE0DBFD0);
  sub_1BD0DE53C(v41, &qword_1EBD48418, &qword_1BE0DBFD0);
  *(&v16[11] + 7) = v38;
  *(&v16[12] + 7) = v39;
  *(&v16[13] + 7) = v40[0];
  v16[14] = *(v40 + 9);
  *(&v16[7] + 7) = v34;
  *(&v16[8] + 7) = v35;
  *(&v16[9] + 7) = v36;
  *(&v16[10] + 7) = v37;
  *(&v16[3] + 7) = v30;
  *(&v16[4] + 7) = v31;
  *(&v16[5] + 7) = v32;
  *(&v16[6] + 7) = v33;
  *(v16 + 7) = v27;
  *(&v16[1] + 7) = v28;
  *(&v16[2] + 7) = v29;
  v43[0] = v5;
  v43[1] = 0;
  LOBYTE(v44[0]) = 1;
  *(&v44[5] + 10) = *(&v17[5] + 9);
  *(&v44[5] + 1) = v17[5];
  *(&v44[4] + 1) = v17[4];
  *(&v44[1] + 1) = v17[1];
  *(v44 + 1) = v17[0];
  *(&v44[3] + 1) = v17[3];
  *(&v44[2] + 1) = v17[2];
  v15[4] = v44[3];
  v15[5] = v44[4];
  v15[6] = v44[5];
  *(&v15[6] + 10) = *(&v44[5] + 10);
  v15[0] = v5;
  v15[1] = v44[0];
  v15[2] = v44[1];
  v15[3] = v44[2];
  __src[0] = v4;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  *(&__src[6] + 1) = v16[2];
  *(&__src[4] + 1) = v16[1];
  *(&__src[2] + 1) = v16[0];
  *(&__src[14] + 1) = v16[6];
  *(&__src[12] + 1) = v16[5];
  *(&__src[10] + 1) = v16[4];
  *(&__src[8] + 1) = v16[3];
  *(&__src[22] + 1) = v16[10];
  *(&__src[20] + 1) = v16[9];
  *(&__src[18] + 1) = v16[8];
  *(&__src[16] + 1) = v16[7];
  *(&__src[30] + 1) = *(v40 + 9);
  *(&__src[28] + 1) = v16[13];
  *(&__src[26] + 1) = v16[12];
  *(&__src[24] + 1) = v16[11];
  memcpy(&v15[8], __src, 0x101uLL);
  memcpy(a2, v15, 0x181uLL);
  *&v47[177] = v16[11];
  *&v47[193] = v16[12];
  *&v47[209] = v16[13];
  v48 = v16[14];
  *&v47[113] = v16[7];
  *&v47[129] = v16[8];
  *&v47[145] = v16[9];
  *&v47[161] = v16[10];
  *&v47[49] = v16[3];
  *&v47[65] = v16[4];
  *&v47[81] = v16[5];
  *&v47[97] = v16[6];
  *&v47[1] = v16[0];
  *&v47[17] = v16[1];
  v46 = v4;
  v47[0] = 1;
  *&v47[33] = v16[2];
  sub_1BD0DE19C(v43, v7, &qword_1EBD48420, &qword_1BE0DBFD8);
  sub_1BD0DE19C(__src, v7, &qword_1EBD48428, &qword_1BE0DBFE0);
  sub_1BD0DE53C(&v46, &qword_1EBD48428, &qword_1BE0DBFE0);
  v12 = v17[3];
  v13 = v17[4];
  v14[0] = v17[5];
  *(v14 + 9) = *(&v17[5] + 9);
  v9 = v17[0];
  v10 = v17[1];
  v7[0] = v5;
  v7[1] = 0;
  v8 = 1;
  v11 = v17[2];
  return sub_1BD0DE53C(v7, &qword_1EBD48420, &qword_1BE0DBFD8);
}

void sub_1BD4E4EB8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v249 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00, &qword_1BE0CC620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v241 = v237 - v4;
  *&v250 = sub_1BE04E354();
  v244 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v243 = v237 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v242 = v237 - v8;
  *&v251 = a1;
  v9 = *a1;
  v10 = [*a1 cityName];
  v11 = sub_1BE052434();
  v13 = v12;

  *&v260 = v11;
  *(&v260 + 1) = v13;
  sub_1BD0DDEBC();
  v14 = sub_1BE0506C4();
  v16 = v15;
  LOBYTE(v13) = v17;
  v19 = v18;
  v20 = sub_1BE050324();
  v21 = sub_1BE0505F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v20, v22, v24, v26, v28, v29, v30, v31;
  sub_1BD0DDF10(v14, v16, (v13 & 1), v32, v33, v34, v35, v36);
  v19, v37, v38, v39, v40, v41, v42, v43;
  sub_1BE0503A4();
  v44 = sub_1BE050544();
  v46 = v45;
  LOBYTE(v19) = v47;
  v49 = v48;
  sub_1BD0DDF10(v21, v23, (v25 & 1), v48, v50, v51, v52, v53);
  v27, v54, v55, v56, v57, v58, v59, v60;
  v61 = [objc_opt_self() labelColor];
  v62 = sub_1BE0511C4();
  *&v260 = v62;
  v247 = sub_1BE050574();
  v246 = v63;
  v245 = v64;
  v248 = v65;
  sub_1BD0DDF10(v44, v46, (v19 & 1), v65, v66, v67, v68, v69);
  v62, v70, v71, v72, v73, v74, v75, v76;
  v49, v77, v78, v79, v80, v81, v82, v83;
  v84 = [v9 lightSymbol];
  if (!v84)
  {
    goto LABEL_22;
  }

  v85 = v84;
  v86 = [v9 darkSymbol];
  if (!v86)
  {

LABEL_22:
    v113 = 0uLL;
    v252 = 0u;
    v114 = 65024;
LABEL_23:
    v251 = v113;
    v250 = v113;
LABEL_61:
    v245 &= 1u;
    LOBYTE(v260) = v245;
    LOBYTE(v255) = 1;
    v208 = v247;
    v209 = v246;
    sub_1BD0D7F18(v247, v246, v245);
    v210 = v248;
    sub_1BE048C84();
    v211 = v252;
    v212 = v251;
    v213 = v250;
    sub_1BD4E7538(v252, *(&v252 + 1), v251, *(&v251 + 1), v250, *(&v250 + 1), v114);
    sub_1BD4E7670(v211, *(&v211 + 1), v212, *(&v212 + 1), v213, *(&v213 + 1), v114);
    v214 = v260;
    v215 = v255;
    v216 = v249;
    *v249 = v208;
    v216[1] = v209;
    *(v216 + 16) = v214;
    v216[3] = v210;
    v216[4] = 0;
    *(v216 + 40) = v215;
    v217 = v251;
    *(v216 + 3) = v252;
    *(v216 + 4) = v217;
    *(v216 + 5) = v250;
    *(v216 + 48) = v114;
    sub_1BD4E7670(v211, *(&v211 + 1), v212, *(&v212 + 1), v213, *(&v213 + 1), v114);
    sub_1BD0DDF10(v208, v209, v245, v218, v219, v220, v221, v222);
    v210, v223, v224, v225, v226, v227, v228, v229;
    return;
  }

  v87 = v86;
  v240 = *(type metadata accessor for TileContextWeatherView(0) + 20);
  *&v252 = v87;
  v88 = v242;
  sub_1BD70A078(v242);
  v239 = *MEMORY[0x1E697DBB8];
  v89 = v244;
  v238 = v244[13];
  v90 = v243;
  v91 = v250;
  v238(v243);
  LOBYTE(v87) = sub_1BE04E344();
  v92 = v89[1];
  v92(v90, v91);
  v92(v88, v91);
  if (v87)
  {
    v93 = v85;
  }

  else
  {
    v93 = v252;
  }

  v94 = [v93 symbolName];
  v237[1] = sub_1BE052434();
  v244 = v95;

  sub_1BD70A078(v88);
  (v238)(v90, v239, v91);
  LOBYTE(v94) = sub_1BE04E344();
  v92(v90, v91);
  v96 = v88;
  v97 = v252;
  v92(v96, v91);
  if (v94)
  {
    v98 = [v85 colorPalette];
    if (!v98)
    {
      goto LABEL_69;
    }

    v99 = v98;
    v100 = v85;
    sub_1BD0E5E8C(0, &qword_1EBD43100, 0x1E69DC888);
    v101 = sub_1BE052744();

    *&v260 = MEMORY[0x1E69E7CC0];
    if (v101 >> 62)
    {
      goto LABEL_43;
    }

    v109 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v109)
    {
      goto LABEL_46;
    }

LABEL_10:
    v110 = 0;
    while (1)
    {
      if ((v101 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB40900](v110, v101);
        v112 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v110 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v111 = *(v101 + 8 * v110 + 32);
        v112 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      v97 = sub_1BE0511C4();
      MEMORY[0x1BFB3F7A0]();
      if (*(v260 + 16) >= *(v260 + 24) >> 1)
      {
        *&v251 = v100;
        sub_1BE052774();
        v100 = v251;
      }

      sub_1BE0527C4();
      ++v110;
      if (v112 == v109)
      {
        goto LABEL_38;
      }
    }
  }

  v115 = [v97 colorPalette];
  if (!v115)
  {
    goto LABEL_70;
  }

  v116 = v115;
  sub_1BD0E5E8C(0, &qword_1EBD43100, 0x1E69DC888);
  v101 = sub_1BE052744();

  *&v260 = MEMORY[0x1E69E7CC0];
  v100 = v85;
  if (v101 >> 62)
  {
    v117 = sub_1BE053704();
    if (!v117)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v117 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v117)
    {
      goto LABEL_46;
    }
  }

  v118 = 0;
  while ((v101 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1BFB40900](v118, v101);
    v120 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      goto LABEL_40;
    }

LABEL_31:
    v97 = sub_1BE0511C4();
    MEMORY[0x1BFB3F7A0]();
    if (*(v260 + 16) >= *(v260 + 24) >> 1)
    {
      *&v251 = v100;
      sub_1BE052774();
      v100 = v251;
    }

    sub_1BE0527C4();
    ++v118;
    if (v120 == v117)
    {
LABEL_38:
      v121 = v260;
      v97 = v252;
      goto LABEL_47;
    }
  }

  if (v118 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

  v119 = *(v101 + 8 * v118 + 32);
  v120 = v118 + 1;
  if (!__OFADD__(v118, 1))
  {
    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  v109 = sub_1BE053704();
  if (v109)
  {
    goto LABEL_10;
  }

LABEL_46:
  v121 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v101, v102, v103, v104, v105, v106, v107, v108;
  v129 = v121[2];
  if (v129 >= 3)
  {
    v158 = sub_1BE051574();
    v159 = v241;
    sub_1BE04F814();
    v160 = sub_1BE04F824();
    (*(*(v160 - 8) + 56))(v159, 0, 1, v160);
    v161 = sub_1BE0515B4();
    v158, v162, v163, v164, v165, v166, v167, v168;
    sub_1BD0DE53C(v159, &qword_1EBD41F00, &qword_1BE0CC620);
    v169 = v121[2];
    if (v169)
    {
      if (v169 != 1)
      {
        *&v251 = v100;
        if (v169 >= 3)
        {
          v170 = v121[4];
          v171 = v121[5];
          v172 = v121[6];
          sub_1BE048964();
          v244 = v171;
          sub_1BE048964();
          sub_1BE048964();
          v121, v173, v174, v175, v176, v177, v178, v179;
          v180 = sub_1BE050324();
          KeyPath = swift_getKeyPath();
          *&v255 = v161;
          *(&v255 + 1) = v170;
          v243 = v161;
          *&v250 = v170;
          *&v256 = v171;
          *(&v256 + 1) = v172;
          v242 = v172;
          *&v257 = KeyPath;
          *(&v257 + 1) = v180;
          v241 = KeyPath;
          v240 = v180;
          LOBYTE(v258) = 0;
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48458, &qword_1BE0DC070);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48460, &qword_1BE0DC078);
          sub_1BD4E7940(&qword_1EBD48468, &qword_1EBD48458, &qword_1BE0DC070, sub_1BD4E77A4);
          sub_1BD4E7940(&qword_1EBD48480, &qword_1EBD48460, &qword_1BE0DC078, sub_1BD324274);
          sub_1BE04F9A4();
          v182 = v260;
          v183 = v261;
          v184 = v262;
          v185 = v263;
          LOBYTE(v253) = v263;
          v259 = 0;
          v263 = v263;
          sub_1BD4E75DC(v260, *(&v260 + 1), v261, *(&v261 + 1), v262, *(&v262 + 1), v263);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48488, &qword_1BE0DC088);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48490, &qword_1BE0DC090);
          sub_1BD4E785C();
          sub_1BD4E7940(&qword_1EBD484A0, &qword_1EBD48490, &qword_1BE0DC090, sub_1BD4E79F0);
          sub_1BE04F9A4();

          sub_1BD4E7710(v182, *(&v182 + 1), v183, *(&v183 + 1), v184, *(&v184 + 1), v185, v186);

LABEL_57:

LABEL_60:
          v114 = v258;
          v263 = v258;
          v261 = v256;
          v262 = v257;
          v260 = v255;
          v251 = v256;
          v252 = v255;
          v250 = v257;
          sub_1BD0DE19C(&v260, &v255, &unk_1EBD484B0, qword_1BE0DC098);
          goto LABEL_61;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_65;
  }

  if (v129 == 1)
  {
    *&v251 = v100;
    v187 = sub_1BE051574();
    v188 = v241;
    sub_1BE04F814();
    v189 = sub_1BE04F824();
    (*(*(v189 - 8) + 56))(v188, 0, 1, v189);
    v190 = sub_1BE0515B4();
    v187, v191, v192, v193, v194, v195, v196, v197;
    sub_1BD0DE53C(v188, &qword_1EBD41F00, &qword_1BE0CC620);
    if (!v121[2])
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v198 = v121[4];
    sub_1BE048964();
    v121, v199, v200, v201, v202, v203, v204, v205;
    v206 = sub_1BE050324();
    v207 = swift_getKeyPath();
    v259 = 1;
    *&v260 = v190;
    *(&v260 + 1) = v198;
    *&v261 = v207;
    *(&v261 + 1) = v206;
    v262 = v253;
    LOBYTE(v263) = v254;
    HIBYTE(v263) = 1;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48488, &qword_1BE0DC088);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48490, &qword_1BE0DC090);
    sub_1BD4E785C();
    sub_1BD4E7940(&qword_1EBD484A0, &qword_1EBD48490, &qword_1BE0DC090, sub_1BD4E79F0);
    sub_1BE04F9A4();

    goto LABEL_60;
  }

  if (v129 != 2)
  {
    v121, v122, v123, v124, v125, v126, v127, v128;
    v244, v230, v231, v232, v233, v234, v235, v236;

    v113 = 0uLL;
    v252 = 0u;
    v114 = 65280;
    goto LABEL_23;
  }

  v130 = sub_1BE051574();
  v131 = v241;
  sub_1BE04F814();
  v132 = sub_1BE04F824();
  (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
  v133 = sub_1BE0515B4();
  v130, v134, v135, v136, v137, v138, v139, v140;
  sub_1BD0DE53C(v131, &qword_1EBD41F00, &qword_1BE0CC620);
  v141 = v121[2];
  if (!v141)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  *&v251 = v100;
  if (v141 != 1)
  {
    v142 = v121[4];
    v143 = v121[5];
    sub_1BE048964();
    sub_1BE048964();
    v121, v144, v145, v146, v147, v148, v149, v150;
    v151 = sub_1BE050324();
    v152 = swift_getKeyPath();
    *&v255 = v133;
    *(&v255 + 1) = v142;
    *&v250 = v142;
    v244 = v143;
    *&v256 = v143;
    *(&v256 + 1) = v152;
    v243 = v152;
    v257 = v151;
    v241 = v151;
    LOBYTE(v258) = 1;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48458, &qword_1BE0DC070);
    v242 = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48460, &qword_1BE0DC078);
    sub_1BD4E7940(&qword_1EBD48468, &qword_1EBD48458, &qword_1BE0DC070, sub_1BD4E77A4);
    sub_1BD4E7940(&qword_1EBD48480, &qword_1EBD48460, &qword_1BE0DC078, sub_1BD324274);
    sub_1BE04F9A4();
    v240 = *(&v260 + 1);
    v153 = v260;
    v154 = v261;
    v155 = v262;
    v156 = v263;
    LOBYTE(v253) = v263;
    v259 = 0;
    v263 = v263;
    sub_1BD4E75DC(v260, *(&v260 + 1), v261, *(&v261 + 1), v262, *(&v262 + 1), v263);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48488, &qword_1BE0DC088);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48490, &qword_1BE0DC090);
    sub_1BD4E785C();
    sub_1BD4E7940(&qword_1EBD484A0, &qword_1EBD48490, &qword_1BE0DC090, sub_1BD4E79F0);
    sub_1BE04F9A4();

    sub_1BD4E7710(v153, v240, v154, *(&v154 + 1), v155, *(&v155 + 1), v156, v157);

    goto LABEL_57;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_1BD4E6124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  LOBYTE(v43) = 0;
  sub_1BD4E6448(a1, v30);
  *&v29[7] = v30[0];
  *&v29[23] = v30[1];
  *&v29[39] = v30[2];
  *&v29[55] = v30[3];
  v5 = v43;
  v6 = sub_1BE04F7D4();
  LOBYTE(v20[0]) = 1;
  sub_1BD4E6AA0(&v43);
  v35 = v44[3];
  v36[0] = v44[4];
  *(v36 + 9) = *(&v44[4] + 9);
  v31 = v43;
  v32 = v44[0];
  v33 = v44[1];
  v34 = v44[2];
  v37[0] = v43;
  v37[1] = v44[0];
  v37[2] = v44[1];
  v37[3] = v44[2];
  v37[4] = v44[3];
  v38[0] = v44[4];
  *(v38 + 9) = *(&v44[4] + 9);
  sub_1BD0DE19C(&v31, &v41, &qword_1EBD48430, &qword_1BE0DBFE8);
  sub_1BD0DE53C(v37, &qword_1EBD48430, &qword_1BE0DBFE8);
  *(&v28[3] + 7) = v34;
  *(&v28[4] + 7) = v35;
  *(&v28[5] + 7) = v36[0];
  v28[6] = *(v36 + 9);
  *(v28 + 7) = v31;
  *(&v28[1] + 7) = v32;
  *(&v28[2] + 7) = v33;
  *&v39 = v4;
  *(&v39 + 1) = 0x4010000000000000;
  v40[0] = v5;
  *&v40[1] = *v29;
  *&v40[64] = *&v29[63];
  *&v40[49] = *&v29[48];
  *&v40[33] = *&v29[32];
  *&v40[17] = *&v29[16];
  v41 = v6;
  v42[0] = 1;
  v7 = v28[1];
  *&v42[33] = v28[2];
  v8 = v28[0];
  *&v42[17] = v28[1];
  *&v42[1] = v28[0];
  v9 = v28[5];
  *&v42[97] = *(v36 + 9);
  v10 = v28[4];
  *&v42[81] = v28[5];
  v11 = v28[3];
  *&v42[65] = v28[4];
  v12 = v28[2];
  *&v42[49] = v28[3];
  *&v26[7] = v6;
  *&v26[71] = *&v42[48];
  *&v26[55] = *&v42[32];
  *&v26[39] = *&v42[16];
  *&v26[23] = *v42;
  v26[135] = BYTE8(v36[1]);
  *&v26[119] = *&v42[96];
  *&v26[103] = *&v42[80];
  *&v26[87] = *&v42[64];
  v13 = *&v40[32];
  *(a2 + 32) = *&v40[16];
  *(a2 + 48) = v13;
  *(a2 + 64) = *&v40[48];
  v14 = *v40;
  *a2 = v39;
  *(a2 + 16) = v14;
  v15 = *&v26[16];
  *(a2 + 97) = *v26;
  v16 = *&v26[80];
  *(a2 + 161) = *&v26[64];
  v17 = *&v26[32];
  *(a2 + 145) = *&v26[48];
  *(a2 + 129) = v17;
  *(a2 + 113) = v15;
  v18 = *&v26[96];
  *(a2 + 209) = *&v26[112];
  *(a2 + 193) = v18;
  *(a2 + 177) = v16;
  *(&v44[3] + 1) = v11;
  *(&v44[4] + 1) = v10;
  v27 = 1;
  *(a2 + 80) = *&v40[64];
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 225) = *&v26[128];
  v43 = v6;
  LOBYTE(v44[0]) = 1;
  *(&v44[5] + 1) = v9;
  *(&v44[6] + 1) = v28[6];
  *(v44 + 1) = v8;
  *(&v44[1] + 1) = v7;
  *(&v44[2] + 1) = v12;
  sub_1BD0DE19C(&v39, v20, &qword_1EBD48438, &qword_1BE0DBFF0);
  sub_1BD0DE19C(&v41, v20, &qword_1EBD48440, &qword_1BE0DBFF8);
  sub_1BD0DE53C(&v43, &qword_1EBD48440, &qword_1BE0DBFF8);
  v20[0] = v4;
  v20[1] = 0x4010000000000000;
  v21 = v5;
  v23 = *&v29[16];
  v24 = *&v29[32];
  v25[0] = *&v29[48];
  *(v25 + 15) = *&v29[63];
  v22 = *v29;
  return sub_1BD0DE53C(v20, &qword_1EBD48438, &qword_1BE0DBFF0);
}

void sub_1BD4E6448(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v273 = a2;
  v3 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v272 = &v264 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v274 = a1;
  v277 = sub_1BD4E37EC(&selRef_highTemperature);
  v278 = v6;
  v267 = sub_1BD0DDEBC();
  v7 = sub_1BE0506C4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1BE050294();
  v15 = sub_1BE0505F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v14, v16, v18, v20, v22, v23, v24, v25;
  sub_1BD0DDF10(v7, v9, (v11 & 1), v26, v27, v28, v29, v30);
  v13, v31, v32, v33, v34, v35, v36, v37;
  v266 = objc_opt_self();
  v38 = [v266 labelColor];
  v39 = sub_1BE0511C4();
  v277 = v39;
  v40 = sub_1BE050574();
  v42 = v41;
  v44 = v43;
  v265 = v45;
  sub_1BD0DDF10(v15, v17, (v19 & 1), v45, v46, v47, v48, v49);
  v39, v50, v51, v52, v53, v54, v55, v56;
  v21, v57, v58, v59, v60, v61, v62, v63;
  sub_1BE04F604();
  v64 = 0xE000000000000000;
  sub_1BE04F5F4();
  v65 = sub_1BE052404();
  v66 = PKLocalizedTicketingString(v65);

  if (v66)
  {
    sub_1BE052434();
    v64 = v67;
  }

  sub_1BE04F5E4();
  v64, v68, v69, v70, v71, v72, v73, v74;
  sub_1BE04F5F4();
  sub_1BD4E37EC(&selRef_highTemperature);
  v76 = v75;
  sub_1BE04F5E4();
  v76, v77, v78, v79, v80, v81, v82, v83;
  sub_1BE04F5F4();
  sub_1BE04F634();
  v84 = sub_1BE050694();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v265;
  v92 = sub_1BE050584();
  v269 = v93;
  v270 = v92;
  v268 = v94;
  v271 = v95;
  sub_1BD0DDF10(v84, v86, (v88 & 1), v95, v96, v97, v98, v99);
  v90, v100, v101, v102, v103, v104, v105, v106;
  sub_1BD0DDF10(v40, v42, (v44 & 1), v107, v108, v109, v110, v111);
  v91, v112, v113, v114, v115, v116, v117, v118;
  v277 = sub_1BD4E37EC(&selRef_lowTemperature);
  v278 = v119;
  v120 = sub_1BE0506C4();
  v122 = v121;
  LOBYTE(v90) = v123;
  v125 = v124;
  v126 = sub_1BE050294();
  v127 = sub_1BE0505F4();
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v126, v128, v130, v132, v134, v135, v136, v137;
  sub_1BD0DDF10(v120, v122, (v90 & 1), v138, v139, v140, v141, v142);
  v125, v143, v144, v145, v146, v147, v148, v149;
  v150 = [v266 secondaryLabelColor];
  v151 = sub_1BE0511C4();
  v277 = v151;
  v266 = sub_1BE050574();
  v153 = v152;
  LODWORD(v267) = v154;
  v156 = v155;
  sub_1BD0DDF10(v127, v129, (v131 & 1), v155, v157, v158, v159, v160);
  v151, v161, v162, v163, v164, v165, v166, v167;
  v133, v168, v169, v170, v171, v172, v173, v174;
  sub_1BE04F604();
  sub_1BE04F5F4();
  v175 = sub_1BE052404();
  v176 = PKLocalizedTicketingString(v175);

  if (v176)
  {
    sub_1BE052434();
    v178 = v177;
  }

  else
  {
    v178 = 0xE000000000000000;
  }

  sub_1BE04F5E4();
  v178, v179, v180, v181, v182, v183, v184, v185;
  sub_1BE04F5F4();
  sub_1BD4E37EC(&selRef_lowTemperature);
  v187 = v186;
  sub_1BE04F5E4();
  v187, v188, v189, v190, v191, v192, v193, v194;
  sub_1BE04F5F4();
  sub_1BE04F634();
  v195 = sub_1BE050694();
  v197 = v196;
  v199 = v198;
  v201 = v200;
  v202 = v267;
  v203 = v266;
  v204 = sub_1BE050584();
  v206 = v205;
  v272 = v156;
  v207 = v203;
  LODWORD(v274) = v208;
  v210 = v209;
  sub_1BD0DDF10(v195, v197, (v199 & 1), v209, v211, v212, v213, v214);
  v201, v215, v216, v217, v218, v219, v220, v221;
  sub_1BD0DDF10(v207, v153, (v202 & 1), v222, v223, v224, v225, v226);
  v272, v227, v228, v229, v230, v231, v232, v233;
  v234 = v268 & 1;
  v275 = v268 & 1;
  LOBYTE(v277) = v268 & 1;
  v235 = (v274 & 1);
  v276 = v274 & 1;
  v236 = v273;
  v238 = v269;
  v237 = v270;
  *v273 = v270;
  v236[1] = v238;
  *(v236 + 16) = v234;
  v239 = v271;
  v236[3] = v271;
  v236[4] = v204;
  v236[5] = v206;
  *(v236 + 48) = v235;
  v236[7] = v210;
  sub_1BD0D7F18(v237, v238, v234);
  sub_1BE048C84();
  sub_1BD0D7F18(v204, v206, v235);
  sub_1BE048C84();
  sub_1BD0DDF10(v204, v206, v235, v240, v241, v242, v243, v244);
  v210, v245, v246, v247, v248, v249, v250, v251;
  sub_1BD0DDF10(v237, v238, v275, v252, v253, v254, v255, v256);
  v239, v257, v258, v259, v260, v261, v262, v263;
}

void sub_1BD4E6AA0(uint64_t a1@<X8>)
{
  sub_1BD4E3AE4();
  if (v1)
  {
    sub_1BD0DDEBC();
    v2 = sub_1BE0506C4();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v9 = sub_1BE050454();
    v10 = sub_1BE0505F4();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v9, v11, v13, v15, v17, v18, v19, v20;
    sub_1BD0DDF10(v2, v4, (v6 & 1), v21, v22, v23, v24, v25);
    v8, v26, v27, v28, v29, v30, v31, v32;
    sub_1BE050384();
    v33 = sub_1BE050544();
    v35 = v34;
    LOBYTE(v4) = v36;
    v38 = v37;
    sub_1BD0DDF10(v10, v12, (v14 & 1), v37, v39, v40, v41, v42);
    v16, v43, v44, v45, v46, v47, v48, v49;
    v50 = [objc_opt_self() secondaryLabelColor];
    v181 = sub_1BE0511C4();
    v51 = sub_1BE050574();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_1BD0DDF10(v33, v35, (v4 & 1), v56, v58, v59, v60, v61);
    v181, v62, v63, v64, v65, v66, v67, v68;
    v38, v69, v70, v71, v72, v73, v74, v75;
    KeyPath = swift_getKeyPath();
    v179 = v53;
    v180 = v51;
    v175 = v55 & 1;
    sub_1BD0D7F18(v51, v53, v55 & 1);
    v178 = v57;
    sub_1BE048C84();
    v177 = KeyPath;
    sub_1BE048964();
    v174 = 1;
  }

  else
  {
    v179 = 0;
    v180 = 0;
    v174 = 0;
    v175 = 0;
    v177 = 0;
    v178 = 0;
  }

  sub_1BD4E3E50();
  sub_1BD0DDEBC();
  v77 = sub_1BE0506C4();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = sub_1BE050454();
  v85 = sub_1BE0505F4();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v84, v86, v88, v90, v92, v93, v94, v95;
  sub_1BD0DDF10(v77, v79, (v81 & 1), v96, v97, v98, v99, v100);
  v83, v101, v102, v103, v104, v105, v106, v107;
  sub_1BE050384();
  v108 = sub_1BE050544();
  v110 = v109;
  LOBYTE(v84) = v111;
  v113 = v112;
  sub_1BD0DDF10(v85, v87, (v89 & 1), v112, v114, v115, v116, v117);
  v91, v118, v119, v120, v121, v122, v123, v124;
  v125 = [objc_opt_self() secondaryLabelColor];
  v182 = sub_1BE0511C4();
  v172 = sub_1BE050574();
  v173 = v126;
  v128 = v127;
  v130 = v129;
  sub_1BD0DDF10(v108, v110, (v84 & 1), v126, v131, v132, v133, v134);
  v182, v135, v136, v137, v138, v139, v140, v141;
  v113, v142, v143, v144, v145, v146, v147, v148;
  v149 = swift_getKeyPath();
  sub_1BD2B5270(v180, v179, v175, v178);
  v150 = (v130 & 1);
  sub_1BD0D7F18(v172, v128, v150);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD2B52C0(v180, v179, v175, v178, v177, v174, 0, v151);
  *a1 = v180;
  *(a1 + 8) = v179;
  *(a1 + 16) = v175;
  *(a1 + 24) = v178;
  *(a1 + 32) = v177;
  *(a1 + 40) = v174;
  *(a1 + 48) = 0;
  *(a1 + 56) = v172;
  *(a1 + 64) = v128;
  *(a1 + 72) = v150;
  *(a1 + 80) = v173;
  *(a1 + 88) = v149;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  sub_1BD0DDF10(v172, v128, v150, v152, v153, v154, v155, v156);
  v149, v157, v158, v159, v160, v161, v162, v163;
  v173, v164, v165, v166, v167, v168, v169, v170;
  sub_1BD2B52C0(v180, v179, v175, v178, v177, v174, 0, v171);
}

void *static TileContextWeatherViewHost.create(weatherInformation:)(void *a1)
{
  v2 = type metadata accessor for TileContextWeatherView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  *(&v13 - v6) = a1;
  v9 = *(v8 + 28);
  *&v7[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD483C8, &qword_1BE0DBEE8));
  sub_1BD4E70A4(v7, v4);
  v10 = a1;
  v11 = sub_1BE04EAC4();
  sub_1BD4E7108(v7);
  [v11 setUserInteractionEnabled_];
  return v11;
}

uint64_t type metadata accessor for TileContextWeatherView(uint64_t a1)
{
  result = qword_1EBD483D0;
  if (!qword_1EBD483D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD4E70A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileContextWeatherView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4E7108(uint64_t a1)
{
  v2 = type metadata accessor for TileContextWeatherView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TileContextWeatherViewHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TileContextWeatherViewHost.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextWeatherViewHost();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TileContextWeatherViewHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextWeatherViewHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD4E73D0(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD483E0, off_1E80058B0);
  if (v1 <= 0x3F)
  {
    sub_1BD249694(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD4E7480()
{
  result = qword_1EBD483F8;
  if (!qword_1EBD483F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD483F0, &qword_1BE0DBFB8);
    sub_1BD0DE4F4(&qword_1EBD48400, &qword_1EBD48408, &qword_1BE0DBFC0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD483F8);
  }

  return result;
}

uint64_t sub_1BD4E7538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a7 & 0xFF00) != 0xFE00)
  {
    return sub_1BD4E7550(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_1BD4E7550(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE1(a7) != 255)
  {
    return sub_1BD4E7568(result, a2, a3, a4, a5, a6, a7, BYTE1(a7) & 1);
  }

  return result;
}

uint64_t sub_1BD4E7568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  if (a8)
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();

    return sub_1BE048964();
  }

  else
  {
    v10 = a7 & 1;

    return sub_1BD4E75DC(a1, a2, a3, a4, a5, a6, v10);
  }
}

uint64_t sub_1BD4E75DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_1BE048964();
  }

  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();

  return sub_1BE048964();
}

void sub_1BD4E7670(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if ((a7 & 0xFF00) != 0xFE00)
  {
    sub_1BD4E7688(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1BD4E7688(void *result, char *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (BYTE1(a7) != 255)
  {
    sub_1BD4E76A0(result, a2, a3, a4, a5, a6, a7, ((a7 >> 8) & 1));
  }
}

void sub_1BD4E76A0(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a8)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
    a2, v12, v13, v14, v15, v16, v17, v18;
    a3, v19, v20, v21, v22, v23, v24, v25;

    a4, v26, v27, v28, v29, v30, v31, v32;
  }

  else
  {
    v33 = (a7 & 1);

    sub_1BD4E7710(a1, a2, a3, a4, a5, a6, v33, a8);
  }
}

void sub_1BD4E7710(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a7;
  a1, a2, a3, a4, a5, a6, a7, a8;
  a2, v14, v15, v16, v17, v18, v19, v20;
  a3, v21, v22, v23, v24, v25, v26, v27;
  a4, v28, v29, v30, v31, v32, v33, v34;
  a5, v35, v36, v37, v38, v39, v40, v41;
  if ((v8 & 1) == 0)
  {

    a6, v42, v43, v44, v45, v46, v47, v48;
  }
}

unint64_t sub_1BD4E77A4()
{
  result = qword_1EBD48470;
  if (!qword_1EBD48470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48478, &qword_1BE0DC080);
    sub_1BD0DE4F4(&qword_1EBD43E30, &qword_1EBD43E38, &qword_1BE0D0F10, MEMORY[0x1E6980608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48470);
  }

  return result;
}

unint64_t sub_1BD4E785C()
{
  result = qword_1EBD48498;
  if (!qword_1EBD48498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48488, &qword_1BE0DC088);
    sub_1BD4E7940(&qword_1EBD48468, &qword_1EBD48458, &qword_1BE0DC070, sub_1BD4E77A4);
    sub_1BD4E7940(&qword_1EBD48480, &qword_1EBD48460, &qword_1BE0DC078, sub_1BD324274);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48498);
  }

  return result;
}

uint64_t sub_1BD4E7940(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD4E79F0()
{
  result = qword_1EBD484A8;
  if (!qword_1EBD484A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51200, &unk_1BE0F2970);
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD484A8);
  }

  return result;
}

void sub_1BD4E7B7C(void (*a1)(void), void *a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v11 = sub_1BE04B9A4();
  (*(v7 + 8))(v9, v6);
  v12 = [objc_allocWithZone(PKPaymentSetupPurchaseServiceProviderProductsViewController) initWithProvisioningController:v10 context:v11 setupDelegate:0 product:*(v3 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_product)];

  v13 = *(v3 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_viewController);
  *(v3 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_viewController) = v12;
  v14 = v12;

  if (v14)
  {
    [v14 setFlowDelegate_];
    sub_1BE052434();
    v16 = v15;
    v17 = sub_1BE04BB74();
    v16, v18, v19, v20, v21, v22, v23, v24;
    [v14 setReporter_];

    aBlock[4] = a1;
    v35 = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD976224;
    aBlock[3] = &block_descriptor_109;
    v25 = _Block_copy(aBlock);
    v26 = v35;
    sub_1BE048964();
    v26, v27, v28, v29, v30, v31, v32, v33;
    [v14 preflightWithCompletion_];
    _Block_release(v25);
  }

  else
  {
    a1(0);
  }
}

uint64_t sub_1BD4E7DD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4E7E10(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD4E7E60()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_viewController);
  v2 = v1;
  return v1;
}

void sub_1BD4E7F08(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_context);
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_product);
  objc_allocWithZone(type metadata accessor for PaymentSetupPurchaseServiceProductFlowItem());
  sub_1BE048964();
  v9 = sub_1BD4FC05C(v4, v5, a1);
  v6 = v2 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3BAA578, v9, &off_1F3BAB238, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD4E8028(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1BD4E8084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1BD4E80E4(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) init];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BE0B7020;
    *(v4 + 32) = a2;
    sub_1BD0E8CBC();
    v5 = a2;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
    [v6 setContactType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BE0B7020;
    *(v4 + 32) = v6;
    sub_1BD0E8CBC();
    v5 = v6;
  }

  v7 = v5;
  v8 = sub_1BE052724();
  v4, v9, v10, v11, v12, v13, v14, v15;
  [v3 setContacts_];

  return v3;
}

void sub_1BD4E8228(void *a1)
{
  v2 = *v1;
  if (*v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BE0B7020;
    *(v4 + 32) = v2;
    sub_1BD0E8CBC();
    v5 = v2;
    v13 = sub_1BE052724();
    v4, v6, v7, v8, v9, v10, v11, v12;
    [a1 setContacts_];
  }
}

uint64_t sub_1BD4E8304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4E844C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD4E8368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4E844C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD4E83CC(uint64_t a1)
{
  sub_1BD4E844C();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD4E83F8()
{
  result = qword_1EBD48550;
  if (!qword_1EBD48550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48550);
  }

  return result;
}

unint64_t sub_1BD4E844C()
{
  result = qword_1EBD48558;
  if (!qword_1EBD48558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48558);
  }

  return result;
}

void sub_1BD4E84A0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2, v4);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    sub_1BE04B6F4();
    v10 = v9;

    (*(v3 + 8))(v6, v2);
    v37 = ObjectType;
    v36[0] = v0;
    v11 = v0;
    v12 = sub_1BE052404();
    v10, v13, v14, v15, v16, v17, v18, v19;
    v20 = v37;
    if (v37)
    {
      v21 = __swift_project_boxed_opaque_existential_1(v36, v37);
      v22 = *(v20 - 8);
      v23 = MEMORY[0x1EEE9AC00](v21);
      v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25, v23);
      v26 = sub_1BE053B74();
      (*(v22 + 8))(v25, v20);
      __swift_destroy_boxed_opaque_existential_0(v36, v27, v28, v29, v30, v31, v32, v33);
    }

    else
    {
      v26 = 0;
    }

    v34 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v12 style:0 target:v26 action:sel_doneButtonPressed];

    swift_unknownObjectRelease();
    [v34 setEnabled_];
    v35 = [v11 navigationItem];
    [v35 setRightBarButtonItem:v34 animated:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD4E87B8(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter];
  if (v3)
  {
    [v3 reportViewAppeared];
  }

  result = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_pinCodeView];
  if (result)
  {
    return [result becomeFirstResponder];
  }

  return result;
}

void sub_1BD4E888C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04B944();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116.receiver = v1;
  v116.super_class = ObjectType;
  objc_msgSendSuper2(&v116, sel_loadView, v5);
  v8 = [v1 explanationView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [objc_opt_self() sharedInstance];
  v11 = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_credential];
  v12 = [v11 configuration];
  if (!v12)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  v114 = v9;
  v14 = [v12 provisioningTemplateIdentifier];

  if (v14)
  {
    v15 = sub_1BE052434();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v112 = sub_1BD4E8F48(0xD000000000000029, 0x80000001BE12C760, v10, v15, v17);
  v113 = v10;
  v19 = v18;
  v20 = [v11 configuration];
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = v20;
  v22 = [v20 issuerIdentifier];

  sub_1BE04BB94();
  v23 = sub_1BE04B8E4();
  (*(v4 + 8))(v7, v3);
  v24 = PKLocalizedCarIssuerNameFromIssuerIdentifier();

  v25 = sub_1BE052434();
  v27 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BE0B69E0;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1BD110550();
  *(v28 + 32) = v25;
  *(v28 + 40) = v27;
  sub_1BE048C84();
  sub_1BE052454();
  v30 = v29;
  v31 = sub_1BE052404();
  v30, v32, v33, v34, v35, v36, v37, v38;
  v39 = v114;
  [v114 setTitleText_];

  [v39 setTitleHyphenationFactor_];
  v40 = v113;
  v111 = v15;
  v112 = v17;
  v41 = v15;
  v42 = v39;
  sub_1BD4E8F48(0xD000000000000028, 0x80000001BE12C790, v113, v41, v17);
  v44 = v43;
  v45 = sub_1BE052404();
  v44, v46, v47, v48, v49, v50, v51, v52;
  [v39 setBodyText_];

  v53 = [v39 dockView];
  if (!v53)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v54 = v53;
  v110 = v19;
  v55 = v40;
  [v53 setPrimaryButton_];

  [v1 setPrivacyLinkController_];
  v56 = PKCredentialPairingPincodeLengthOverride();
  if (v56)
  {
    v57 = v56;
  }

  else
  {
    v57 = 8;
  }

  v58 = [objc_allocWithZone(PKPinCodeField) initWithPinCodeLength:v57 delegate:v1];
  if (!v58)
  {
    goto LABEL_20;
  }

  v59 = v58;
  [v58 setHyphenatePinCode_];
  [v39 setBodyView_];
  [v39 setBodyViewPadding_];
  aBlock[4] = sub_1BD4E9108;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD4E9164;
  aBlock[3] = &block_descriptor_110;
  v60 = _Block_copy(aBlock);
  [v39 setBodyViewThatFitsOverride_];
  _Block_release(v60);
  v61 = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_pinCodeView];
  *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_pinCodeView] = v59;
  v62 = v59;

  v63 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_helpLabel;
  [*&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_helpLabel] setNumberOfLines_];
  v64 = *MEMORY[0x1E69DDD10];
  v65 = *MEMORY[0x1E69DDC70];
  v66 = *&v1[v63];
  v67 = PKFontForDefaultDesign(v64, v65);
  [v66 setFont_];

  v68 = *&v1[v63];
  v69 = objc_opt_self();
  v70 = v68;
  v71 = [v69 systemGrayColor];
  [v70 setTextColor_];

  [*&v1[v63] setTextAlignment_];
  v72 = *&v1[v63];
  v73 = v112;
  sub_1BD4E8F48(0xD000000000000028, 0x80000001BE12C7F0, v55, v111, v112);
  v75 = v74;
  v76 = sub_1BE052404();
  v75, v77, v78, v79, v80, v81, v82, v83;
  [v72 setText_];

  v84 = [v1 view];
  if (!v84)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v92 = v84;
  v27, v85, v86, v87, v88, v89, v90, v91;
  v110, v93, v94, v95, v96, v97, v98, v99;
  v73, v100, v101, v102, v103, v104, v105, v106;
  [v92 addSubview_];

  v107 = [v1 sheetPresentationController];
  if (v107)
  {
    v108 = v107;
    [v107 setDelegate_];
  }
}

id sub_1BD4E8F48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE052404();
  if (a5)
  {
    a5 = sub_1BE052404();
  }

  v12 = [a3 provisioningString:v11 templateIdentifier:a5];

  if (v12)
  {
    v13 = sub_1BE052434();

    return v13;
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69B8038], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();

      (*(v8 + 8))(v10, v7);
      return v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double sub_1BD4E9108(void *a1, __n128 a2, __n128 a3)
{
  if (!a1)
  {
    return 0.0;
  }

  a3.n128_u64[0] = 0x3FECCCCCCCCCCCCDLL;
  a2.n128_f64[0] = a2.n128_f64[0] * 0.9;
  PKFloatRoundToPixel(a2, a3);
  [a1 sizeThatFits_];
  return result;
}

double sub_1BD4E9164(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BE048964();
  v9 = a2;
  v10 = v8(a2, a3, a4);
  v7, v11, v12, v13, v14, v15, v16, v17;

  return v10;
}

void sub_1BD4E9228()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 readableContentGuide];
    [v3 layoutFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v29.origin.x = v5;
    v29.origin.y = v7;
    v29.size.width = v9;
    v29.size.height = v11;
    Width = CGRectGetWidth(v29);
    v13 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_helpLabel;
    [*&v0[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_helpLabel] sizeThatFits_];
    v15 = v14;
    v16 = [v2 keyboardLayoutGuide];
    [v16 layoutFrame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v30.origin.x = v18;
    v30.origin.y = v20;
    v30.size.width = v22;
    v30.size.height = v24;
    MinY = CGRectGetMinY(v30);
    v31.origin.y = 0.0;
    v31.origin.x = v5;
    v31.size.width = Width;
    v31.size.height = v15;
    v26 = MinY - CGRectGetHeight(v31) + -24.0;
    v27 = *&v0[v13];
    [v27 setFrame_];
  }
}

void sub_1BD4E96EC(void *a1, char a2)
{
  v5 = [v2 navigationItem];
  v6 = [v5 rightBarButtonItem];

  [v6 setEnabled_];
  v7 = [*&v2[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_credential] configuration];
  if (!v7)
  {
    return;
  }

  v10 = v7;
  if (!a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = [a1 pinCode];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  [v10 setPassword_];

  [v10 setPasswordEnteredManually_];
}

id sub_1BD4E9AC4()
{
  v1 = [objc_allocWithZone(PKRewardsSummaryChartBarConfiguration) initWithSummary_];
  v2 = [objc_allocWithZone(PKSegmentedBarView) init];
  v3 = [objc_allocWithZone(PKRewardsSummaryBarViewWrapper) initWithBarView:v2 configuration:v1];

  return v3;
}

uint64_t sub_1BD4E9B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4EBEB0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD4E9BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4EBEB0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD4E9C20(uint64_t a1)
{
  sub_1BD4EBEB0();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD4E9C48(uint64_t a1)
{
  result = sub_1BE051C54();
  v2 = 10.0;
  if (result)
  {
    v2 = 12.0;
  }

  qword_1EBDAB1C0 = *&v2;
  return result;
}

uint64_t sub_1BD4E9C78(uint64_t a1)
{
  result = sub_1BE051C54();
  v2 = 12.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_1EBDAB1C8 = *&v2;
  return result;
}

uint64_t sub_1BD4E9CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48660, &qword_1BE0DC318);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v57[-v3 - 8];
  *v4 = sub_1BE04F7C4();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48668, &qword_1BE0DC320);
  sub_1BD4E9FB8(v1, &v4[*(v5 + 44)]);
  v6 = sub_1BE0501E4();
  if (qword_1EBD36C48 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48670, &qword_1BE0DC328) + 36)];
  *v15 = v6;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  v16 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48678, &qword_1BE0DC330) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_1BE050204();
  if (qword_1EBD36C50 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48680, &qword_1BE0DC338) + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_1BE050224();
  sub_1BE04E1F4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48688, &qword_1BE0DC340) + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v4[*(v2 + 36)] = 0;
  v46 = swift_allocObject();
  v47 = *(v1 + 16);
  *(v46 + 16) = *v1;
  *(v46 + 32) = v47;
  *(v46 + 48) = *(v1 + 32);
  *(v46 + 64) = *(v1 + 48);
  sub_1BD4EB7F4(v1, v57);
  sub_1BD4EB82C();
  sub_1BE0509D4();
  v46, v48, v49, v50, v51, v52, v53, v54;
  return sub_1BD08214C(v4);
}

uint64_t sub_1BD4E9FB8@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD486D0, &qword_1BE0DC358);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v45 - v6;
  v7 = sub_1BE04FF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD486D8, &qword_1BE0DC360);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD486E0, &qword_1BE0DC368);
  v46 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v45 - v16;
  sub_1BD4EA604(a1, v13);
  sub_1BE04FF44();
  sub_1BD4EBAAC();
  sub_1BE050D14();
  (*(v8 + 8))(v10, v7);
  sub_1BD0DE53C(v13, &qword_1EBD486D8, &qword_1BE0DC360);
  sub_1BE051CD4();
  v17 = *a1;
  sub_1BE04EE54();
  v18 = v17;
  v47 = v18;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v48 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v78 = 0;
  v27 = sub_1BE04F504();
  LOBYTE(v67[0]) = 0;
  sub_1BD4EADCC(a1, &v71[7]);
  LOBYTE(v71[0]) = 1;
  v71[1] = v27;
  v71[2] = 0x4028000000000000;
  LOBYTE(v71[3]) = v67[0];
  *&v71[4] = xmmword_1BE0DC270;
  v71[6] = 0x4024000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48700, &qword_1BE0DC378);
  sub_1BD4EBB5C();
  v28 = v53;
  sub_1BE050A24();
  v65[6] = *&v71[12];
  v65[7] = *&v71[14];
  v65[8] = *&v71[16];
  v66 = v71[18];
  v65[2] = *&v71[4];
  v65[3] = *&v71[6];
  v65[4] = *&v71[8];
  v65[5] = *&v71[10];
  v65[0] = *v71;
  v65[1] = *&v71[2];
  sub_1BD0DE53C(v65, &qword_1EBD48700, &qword_1BE0DC378);
  v29 = v46;
  v30 = *(v46 + 16);
  v31 = v52;
  v32 = v49;
  v30(v52, v54, v49);
  v33 = v50;
  sub_1BD0DE19C(v28, v50, &qword_1EBD486D0, &qword_1BE0DC358);
  v34 = v51;
  v30(v51, v31, v32);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48730, &qword_1BE0DC390);
  v36 = &v34[*(v35 + 48)];
  *&v67[0] = v18;
  *(&v67[3] + 8) = v61;
  *(&v67[4] + 8) = v62;
  *(&v67[5] + 8) = v63;
  *(&v67[6] + 8) = v64;
  *(&v67[2] + 8) = v60;
  *(v67 + 8) = v58;
  *(&v67[1] + 8) = v59;
  *(&v67[9] + 8) = v57;
  *(&v67[8] + 8) = v56;
  *(&v67[7] + 8) = v55;
  LOBYTE(v18) = v48;
  BYTE8(v67[10]) = v48;
  *&v68 = v20;
  *(&v68 + 1) = v22;
  *&v69 = v24;
  *(&v69 + 1) = v26;
  v70 = 0;
  v36[208] = 0;
  v37 = v67[1];
  *v36 = v67[0];
  *(v36 + 1) = v37;
  v38 = v67[5];
  *(v36 + 4) = v67[4];
  *(v36 + 5) = v38;
  v39 = v67[3];
  *(v36 + 2) = v67[2];
  *(v36 + 3) = v39;
  v40 = v67[9];
  *(v36 + 8) = v67[8];
  *(v36 + 9) = v40;
  v41 = v67[7];
  *(v36 + 6) = v67[6];
  *(v36 + 7) = v41;
  v42 = v68;
  *(v36 + 10) = v67[10];
  *(v36 + 11) = v42;
  *(v36 + 12) = v69;
  sub_1BD0DE19C(v33, &v34[*(v35 + 64)], &qword_1EBD486D0, &qword_1BE0DC358);
  sub_1BD0DE19C(v67, v71, &qword_1EBD48738, &qword_1BE0DC398);
  sub_1BD0DE53C(v53, &qword_1EBD486D0, &qword_1BE0DC358);
  v43 = *(v29 + 8);
  v43(v54, v32);
  sub_1BD0DE53C(v33, &qword_1EBD486D0, &qword_1BE0DC358);
  v71[0] = v47;
  *&v71[7] = v61;
  *&v71[9] = v62;
  *&v71[11] = v63;
  *&v71[13] = v64;
  *&v71[1] = v58;
  *&v71[3] = v59;
  *&v71[5] = v60;
  *&v71[19] = v57;
  *&v71[17] = v56;
  *&v71[15] = v55;
  v72 = v18;
  v73 = v20;
  v74 = v22;
  v75 = v24;
  v76 = v26;
  v77 = 0;
  sub_1BD0DE53C(v71, &qword_1EBD48738, &qword_1BE0DC398);
  return (v43)(v52, v32);
}

void sub_1BD4EA604(id *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a1;
  v107 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40540, &unk_1BE0DC3A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v108 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v104 - v5;
  v113 = sub_1BE050404();
  v6 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v111 = &v104 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48740, &qword_1BE0DC3B0);
  MEMORY[0x1EEE9AC00](v109);
  v16 = &v104 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48748, &qword_1BE0DC3B8);
  MEMORY[0x1EEE9AC00](v110);
  v105 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v104 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v112 = &v104 - v23;
  (*(v10 + 104))(v12, *MEMORY[0x1E69B80B0], v9, v22);
  v24 = PKPassKitBundle();
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  v25 = v24;
  v26 = sub_1BE04B6F4();
  v28 = v27;

  (*(v10 + 8))(v12, v9);
  *&v119 = v26;
  *(&v119 + 1) = v28;
  LOBYTE(v120) = 0;
  *(&v120 + 1) = MEMORY[0x1E69E7CC0];
  sub_1BE052434();
  v30 = v29;
  v31 = v111;
  sub_1BE050DE4();
  v28, v32, v33, v34, v35, v36, v37, v38;
  v30, v39, v40, v41, v42, v43, v44, v45;
  v46 = sub_1BE050324();
  v47 = v113;
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v113);
  v48 = sub_1BE050434();
  v46, v49, v50, v51, v52, v53, v54, v55;
  (*(v6 + 8))(v8, v47);
  KeyPath = swift_getKeyPath();
  sub_1BD0DE204(v31, v16, &qword_1EBD452C0, &qword_1BE0B7620);
  v57 = &v16[*(v109 + 36)];
  *v57 = KeyPath;
  v57[1] = v48;
  v58 = sub_1BE051494();
  v59 = swift_getKeyPath();
  sub_1BD0DE204(v16, v20, &qword_1EBD48740, &qword_1BE0DC3B0);
  v60 = &v20[*(v110 + 36)];
  *v60 = v59;
  v60[1] = v58;
  v61 = v112;
  sub_1BD0DE204(v20, v112, &qword_1EBD48748, &qword_1BE0DC3B8);
  v62 = [*v114 totalCurrencyAmount];
  v63 = [v62 formattedStringValue];

  if (!v63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1BE052434();
  v65 = v64;

  if (PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]))
  {
    v66 = sub_1BE050484();
    v67 = sub_1BE0505F4();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v65, v68, v70, v72, v74, v75, v76, v77;
    v66, v78, v79, v80, v81, v82, v83, v84;
    v85 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v124 = v71 & 1;
    v123 = 0;
    *&v115 = v67;
    *(&v115 + 1) = v69;
    LOBYTE(v116) = v71 & 1;
    *(&v116 + 1) = v73;
    LOBYTE(v117) = v85;
    *(&v117 + 1) = v86;
    *v118 = v87;
    *&v118[8] = v88;
    *&v118[16] = v89;
    v118[24] = 0;
    sub_1BE052434();
    v91 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD2A275C();
    v92 = v106;
    sub_1BE050DE4();
    v91, v93, v94, v95, v96, v97, v98, v99;
    v122[0] = *v118;
    *(v122 + 9) = *&v118[9];
    v120 = v116;
    v121 = v117;
    v119 = v115;
    sub_1BD0DE53C(&v119, &unk_1EBD3DF90, &qword_1BE0C2E90);
    v100 = v105;
    sub_1BD0DE19C(v61, v105, &qword_1EBD48748, &qword_1BE0DC3B8);
    v101 = v108;
    sub_1BD0DE19C(v92, v108, &qword_1EBD40540, &unk_1BE0DC3A0);
    v102 = v107;
    sub_1BD0DE19C(v100, v107, &qword_1EBD48748, &qword_1BE0DC3B8);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48750, &qword_1BE0DC428);
    sub_1BD0DE19C(v101, v102 + *(v103 + 48), &qword_1EBD40540, &unk_1BE0DC3A0);
    sub_1BD0DE53C(v92, &qword_1EBD40540, &unk_1BE0DC3A0);
    sub_1BD0DE53C(v61, &qword_1EBD48748, &qword_1BE0DC3B8);
    sub_1BD0DE53C(v101, &qword_1EBD40540, &unk_1BE0DC3A0);
    sub_1BD0DE53C(v100, &qword_1EBD48748, &qword_1BE0DC3B8);
    return;
  }

LABEL_7:
  __break(1u);
}

void *sub_1BD4EADCC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  sub_1BE0516A4();
  sub_1BE0516A4();
  result = sub_1BE0516A4();
  *a2 = v3;
  *(a2 + 8) = 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = 2;
  *(a2 + 40) = v5;
  *(a2 + 48) = v3;
  *(a2 + 56) = 3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v3;
  *(a2 + 80) = 4;
  *(a2 + 88) = v5;
  return result;
}

uint64_t sub_1BD4EAEDC(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2[1] = *(a1 + 40);
  v4 = *(&v3 + 1);
  sub_1BD0DE19C(&v4, v2, &unk_1EBD4EF10, &qword_1BE0C2670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v2[0] = v3;
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v3, &qword_1EBD54350, &unk_1BE0B8D00);
}

uint64_t sub_1BD4EAFA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v8 = PKColorForRewardsTier(a2);
  v9 = sub_1BE0511C4();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v35[3] = *&v35[27];
  *&v35[11] = *&v35[35];
  *&v35[19] = v36;
  v10 = sub_1BE050224();
  sub_1BE04E1F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v57) = 0;
  v19 = sub_1BE051CE4();
  v21 = v20;
  sub_1BD4EB3E4(&v57, a1, a2, v4);
  v49 = v69;
  v50 = v70;
  v51 = v71;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v48 = v68;
  v41 = v61;
  v42 = v62;
  v43 = v63;
  v44 = v64;
  v37 = v57;
  v38 = v58;
  v39 = v59;
  v40 = v60;
  v52[12] = v69;
  v52[13] = v70;
  v52[14] = v71;
  v52[8] = v65;
  v52[9] = v66;
  v52[11] = v68;
  v52[10] = v67;
  v52[4] = v61;
  v52[5] = v62;
  v52[7] = v64;
  v52[6] = v63;
  v52[0] = v57;
  v52[1] = v58;
  v52[2] = v59;
  v52[3] = v60;
  sub_1BD0DE19C(&v37, v56, &qword_1EBD48768, &qword_1BE0DC5D0);
  sub_1BD0DE53C(v52, &qword_1EBD48768, &qword_1BE0DC5D0);
  v70 = v49;
  v71 = v50;
  v72 = v51;
  v66 = v45;
  v67 = v46;
  v69 = v48;
  v68 = v47;
  v62 = v41;
  v63 = v42;
  v65 = v44;
  v64 = v43;
  v58 = v37;
  v59 = v38;
  v61 = v40;
  v60 = v39;
  *v53 = v9;
  *&v53[8] = 256;
  *&v53[10] = *v35;
  *&v53[26] = *&v35[8];
  *&v53[42] = *&v35[16];
  *&v53[56] = *(&v36 + 1);
  LOBYTE(v54) = v10;
  *(&v54 + 1) = v12;
  *v55 = v14;
  *&v55[8] = v16;
  *&v55[16] = v18;
  v55[24] = 0;
  __src[0] = *v53;
  __src[1] = *&v53[16];
  *(&__src[5] + 9) = *&v55[9];
  __src[4] = v54;
  __src[5] = *v55;
  __src[2] = *&v53[32];
  __src[3] = *&v53[48];
  v56[2] = v38;
  v56[1] = v37;
  v56[6] = v42;
  v56[5] = v41;
  v56[3] = v39;
  v56[4] = v40;
  v56[10] = v46;
  v56[9] = v45;
  v56[7] = v43;
  v56[8] = v44;
  v56[15] = v51;
  *&v56[0] = v19;
  *(&v56[0] + 1) = v21;
  v56[14] = v50;
  v56[13] = v49;
  v56[11] = v47;
  v56[12] = v48;
  __src[19] = v48;
  __src[20] = v49;
  __src[21] = v50;
  __src[22] = v51;
  __src[15] = v44;
  __src[16] = v45;
  __src[17] = v46;
  __src[18] = v47;
  __src[11] = v40;
  __src[12] = v41;
  __src[13] = v42;
  __src[14] = v43;
  __src[7] = v56[0];
  __src[8] = v37;
  __src[9] = v38;
  __src[10] = v39;
  memcpy(a4, __src, 0x170uLL);
  *&v57 = v19;
  *(&v57 + 1) = v21;
  sub_1BD0DE19C(v53, &v23, &qword_1EBD48770, &qword_1BE0DC5D8);
  sub_1BD0DE19C(v56, &v23, &qword_1EBD48778, &qword_1BE0DC5E0);
  sub_1BD0DE53C(&v57, &qword_1EBD48778, &qword_1BE0DC5E0);
  v25 = *v35;
  v23 = v9;
  v24 = 256;
  v26 = *&v35[8];
  *v27 = *&v35[16];
  *&v27[14] = *&v35[23];
  v28 = v10;
  v29 = v12;
  v30 = v14;
  v31 = v16;
  v32 = v18;
  v33 = 0;
  return sub_1BD0DE53C(&v23, &qword_1EBD48770, &qword_1BE0DC5D8);
}

double sub_1BD4EB3E4@<D0>(uint64_t a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, char a4@<W2>)
{
  sub_1BD4EB55C(a2, a3, a4, v18);
  v5 = sub_1BE050454();
  KeyPath = swift_getKeyPath();
  v7 = sub_1BE051494();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE051CE4();
  sub_1BE04EE54();
  *&v19[55] = v20[3];
  *&v19[71] = v20[4];
  *&v19[87] = v20[5];
  *&v19[103] = v20[6];
  *&v19[7] = v20[0];
  *&v19[23] = v20[1];
  *&v19[39] = v20[2];
  v10 = v18[0];
  v11 = v18[1];
  v12 = v18[4];
  v13 = v18[2];
  *(a1 + 48) = v18[3];
  *(a1 + 64) = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v13;
  *a1 = v10;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v5;
  *(a1 + 96) = v8;
  *(a1 + 104) = v7;
  *(a1 + 112) = v9;
  *(a1 + 120) = 0;
  *(a1 + 232) = *&v19[111];
  *(a1 + 217) = *&v19[96];
  v14 = *&v19[64];
  *(a1 + 201) = *&v19[80];
  *(a1 + 185) = v14;
  v15 = *&v19[32];
  *(a1 + 169) = *&v19[48];
  *(a1 + 153) = v15;
  result = *&v19[16];
  v17 = *v19;
  *(a1 + 137) = *&v19[16];
  *(a1 + 121) = v17;
  return result;
}

void sub_1BD4EB55C(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1BD4EBCD4(a2);
  v10 = v9;
  v11 = [a1 currencyAmountForRewardsTier_];
  v12 = [v11 formattedStringValue];

  if (v12)
  {
    v13 = sub_1BE052434();
    v15 = v14;

    v16 = 1.0;
    if (a3)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = 1.0;
    }

    if ((a3 & 1) == 0)
    {
      v16 = 0.0;
    }

    *a4 = v8;
    *(a4 + 8) = v10;
    *(a4 + 16) = 0;
    v18 = MEMORY[0x1E69E7CC0];
    *(a4 + 24) = MEMORY[0x1E69E7CC0];
    *(a4 + 32) = v17;
    *(a4 + 40) = v13;
    *(a4 + 48) = v15;
    *(a4 + 56) = 0;
    *(a4 + 64) = v18;
    *(a4 + 72) = v16;
    sub_1BD0D7F18(v8, v10, 0);
    sub_1BE048C84();
    sub_1BD0D7F18(v13, v15, 0);
    sub_1BE048C84();
    sub_1BD0DDF10(v13, v15, 0, v19, v20, v21, v22, v23);
    v18, v24, v25, v26, v27, v28, v29, v30;
    sub_1BD0DDF10(v8, v10, 0, v31, v32, v33, v34, v35);

    v18, v36, v37, v38, v39, v40, v41, v42;
  }

  else
  {
    __break(1u);
  }
}

void *sub_1BD4EB6C4@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = sub_1BE04F504();
  v13 = 0;
  sub_1BD4EAFA0(v4, v5, v6, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_1BD0DE19C(__dst, &v10, &qword_1EBD48760, &qword_1BE0DC5C8);
  sub_1BD0DE53C(v15, &qword_1EBD48760, &qword_1BE0DC5C8);
  memcpy(&v12[7], __dst, 0x170uLL);
  v8 = v13;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  return memcpy((a2 + 17), v12, 0x177uLL);
}

unint64_t sub_1BD4EB82C()
{
  result = qword_1EBD48690;
  if (!qword_1EBD48690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48660, &qword_1BE0DC318);
    sub_1BD4EB940(&qword_1EBD48698, &qword_1EBD48688, &qword_1BE0DC340, sub_1BD4EB910);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8, &qword_1BE0DC350, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48690);
  }

  return result;
}

uint64_t sub_1BD4EB940(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD4EB9F4()
{
  result = qword_1EBD486B0;
  if (!qword_1EBD486B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48670, &qword_1BE0DC328);
    sub_1BD0DE4F4(&qword_1EBD486B8, &qword_1EBD486C0, &qword_1BE0DC348, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD486B0);
  }

  return result;
}

unint64_t sub_1BD4EBAAC()
{
  result = qword_1EBD486E8;
  if (!qword_1EBD486E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD486D8, &qword_1BE0DC360);
    sub_1BD0DE4F4(&qword_1EBD486F0, &qword_1EBD486F8, &qword_1BE0DC370, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD486E8);
  }

  return result;
}

unint64_t sub_1BD4EBB5C()
{
  result = qword_1EBD48708;
  if (!qword_1EBD48708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48700, &qword_1BE0DC378);
    sub_1BD0DE4F4(&qword_1EBD48710, &qword_1EBD48718, &qword_1BE0DC380, MEMORY[0x1E697DDD0]);
    sub_1BD0DE4F4(&qword_1EBD48720, &qword_1EBD48728, &qword_1BE0DC388, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48708);
  }

  return result;
}

unint64_t sub_1BD4EBC64()
{
  result = qword_1EBD48758;
  if (!qword_1EBD48758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48758);
  }

  return result;
}

id sub_1BD4EBCD4(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0xE000000000000000;
  v8 = 0x80000001BE12C880;
  v9 = 0x80000001BE12C850;
  if (a1 != 4)
  {
    v9 = 0xE000000000000000;
  }

  if (a1 != 3)
  {
    v8 = v9;
  }

  if (a1 == 2)
  {
    v7 = 0x80000001BE12C8B0;
  }

  if (a1 == 1)
  {
    v7 = 0x80000001BE12C8E0;
  }

  if (a1 <= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E69B80B0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v10, v14, v15, v16, v17, v18, v19, v20;

    (*(v3 + 8))(v6, v2);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD4EBEB0()
{
  result = qword_1EBD48780;
  if (!qword_1EBD48780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48780);
  }

  return result;
}

uint64_t sub_1BD4EBF04()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD4EBF78()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController;
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account);

      [v3 setAccount_];
      return;
    }

    v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_webService);
    v7 = objc_allocWithZone(MEMORY[0x1E69B8A60]);
    v8 = v1;
    v9 = [v7 init];
    v10 = [objc_allocWithZone(PKPeerPaymentAccountResolutionController) initWithAccount:v8 webService:v6 context:0 delegate:v0 passLibraryDataProvider:v9];

    v5 = *(v0 + v2);
    *(v0 + v2) = v10;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController);
    *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController) = 0;
  }
}

id sub_1BD4EC170()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD487E8, &qword_1BE0DC728);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel__currentView;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD487E0, &qword_1BE0DC650);
  sub_1BE04D874();
  (*(v6 + 32))(&v0[v9], v8, v5);
  v10 = OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel__loading;
  LOBYTE(v18) = 0;
  sub_1BE04D874();
  (*(v2 + 32))(&v0[v10], v4, v1);
  v11 = &v0[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_updateAccountAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account] = 0;
  v12 = &v0[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_verificationContext];
  *v12 = 0;
  v12[8] = 1;
  *&v0[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController] = 0;
  v13 = OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_webService;
  *&v0[v13] = [objc_opt_self() sharedService];
  v14 = type metadata accessor for PeerPaymentAccountResolutionControllerModel(0);
  v17.receiver = v0;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1BD4EC3E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentAccountResolutionControllerModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PeerPaymentAccountResolutionControllerModel(uint64_t a1)
{
  result = qword_1EBD487C8;
  if (!qword_1EBD487C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD4EC574(uint64_t a1)
{
  sub_1BD4EC660(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1E1120();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD4EC660(uint64_t a1)
{
  if (!qword_1EBD487D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD487E0, &qword_1BE0DC650);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD487D8);
    }
  }
}

uint64_t sub_1BD4EC6C4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PeerPaymentAccountResolutionControllerModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD4EC704(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD4EC784(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BE04D8C4();
}

void sub_1BD4EC7F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_1BE04D8C4();
  v2 = [*&v1[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController] account];
  v3 = OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account;
  v4 = *&v1[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account];
  *&v1[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account] = v2;
  v5 = v2;

  sub_1BD4EBF78();
  v6 = *&v1[v3];
  if (v6)
  {
    v7 = *&v1[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_updateAccountAction];
    if (v7)
    {
      v8 = *&v1[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_updateAccountAction + 8];
      v9 = v6;
      sub_1BD0D44B8(v7, v8);
      v7(v9);
      sub_1BD0D4744(v7, v8, v10, v11, v12, v13, v14, v15);
    }
  }
}

unint64_t sub_1BD4EC90C()
{
  result = qword_1EBD487F0;
  if (!qword_1EBD487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD487F0);
  }

  return result;
}

id sub_1BD4EC960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v84 = &v78 - v4;
  v5 = sub_1BE04BD74();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Passes(0);
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v90 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for IdentityPassMethodSheet(0);
  v91 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v9 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140, &qword_1BE0C55B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v78 - v13);
  v15 = type metadata accessor for IdentityPassVendor(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  sub_1BE04D8B4(v14);
  KeyPath, v21, v22, v23, v24, v25, v26, v27;
  v20, v28, v29, v30, v31, v32, v33, v34;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BD0DE53C(v14, &qword_1EBD3F140, &qword_1BE0C55B8);
    v35 = 1;
    v36 = v92;
    v37 = v89;
    return (*(v91 + 56))(v36, v35, 1, v37);
  }

  sub_1BD4EDC8C(v14, v18, type metadata accessor for IdentityPassVendor);
  sub_1BD395DD4(v18, v90, type metadata accessor for Passes);
  sub_1BD250A68(v2, v107);
  v38 = swift_allocObject();
  v39 = v107[9];
  *(v38 + 144) = v107[8];
  *(v38 + 160) = v39;
  *(v38 + 176) = v108;
  v40 = v107[5];
  *(v38 + 80) = v107[4];
  *(v38 + 96) = v40;
  v41 = v107[7];
  *(v38 + 112) = v107[6];
  *(v38 + 128) = v41;
  v42 = v107[1];
  *(v38 + 16) = v107[0];
  *(v38 + 32) = v42;
  v43 = v107[3];
  *(v38 + 48) = v107[2];
  *(v38 + 64) = v43;
  sub_1BD250A68(v2, v105);
  v44 = swift_allocObject();
  v45 = v105[9];
  *(v44 + 144) = v105[8];
  *(v44 + 160) = v45;
  *(v44 + 176) = v106;
  v46 = v105[5];
  *(v44 + 80) = v105[4];
  *(v44 + 96) = v46;
  v47 = v105[7];
  *(v44 + 112) = v105[6];
  *(v44 + 128) = v47;
  v48 = v105[1];
  *(v44 + 16) = v105[0];
  *(v44 + 32) = v48;
  v49 = v105[3];
  *(v44 + 48) = v105[2];
  *(v44 + 64) = v49;
  sub_1BD250A68(v2, &v94);
  v50 = swift_allocObject();
  v51 = v103;
  *(v50 + 144) = v102;
  *(v50 + 160) = v51;
  *(v50 + 176) = v104;
  v52 = v99;
  *(v50 + 80) = v98;
  *(v50 + 96) = v52;
  v53 = v101;
  *(v50 + 112) = v100;
  *(v50 + 128) = v53;
  v54 = v95;
  *(v50 + 16) = v94;
  *(v50 + 32) = v54;
  v55 = v97;
  *(v50 + 48) = v96;
  *(v50 + 64) = v55;
  v57 = v86;
  v56 = v87;
  v58 = v88;
  (*(v87 + 104))(v86, *MEMORY[0x1E69B8068], v88);
  result = PKPassKitBundle();
  if (result)
  {
    v60 = result;
    v80 = v18;
    v61 = sub_1BE04B6F4();
    v78 = v62;
    v79 = v61;

    (*(v56 + 8))(v57, v58);
    if (qword_1EBD36CB0 != -1)
    {
      swift_once();
    }

    v63 = unk_1EBDAB330;
    v88 = qword_1EBDAB328;
    v37 = v89;
    *&v96 = 0;
    v94 = 0u;
    v95 = 0u;
    sub_1BD0DE19C(&v94, &v93, &qword_1EBD51EC0, &qword_1BE0B7120);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
    sub_1BE051694();
    sub_1BD0DE53C(&v94, &qword_1EBD51EC0, &qword_1BE0B7120);
    *v9 = v82;
    v64 = v90;
    sub_1BD395DD4(v90, v9 + v37[5], type metadata accessor for Passes);
    v65 = (v9 + v37[6]);
    *v65 = sub_1BD4EDC0C;
    v65[1] = v38;
    v66 = (v9 + v37[7]);
    *v66 = sub_1BD4EDC14;
    v66[1] = v44;
    v67 = (v9 + v37[8]);
    v68 = v78;
    *v67 = v79;
    v67[1] = v68;
    v69 = (v9 + v37[9]);
    *v69 = v88;
    v69[1] = v63;
    v70 = (v9 + v37[11]);
    *v70 = sub_1BD4EDC38;
    v70[1] = v50;
    v71 = v84;
    sub_1BD395DD4(v64, v84, type metadata accessor for Passes);
    v72 = (*(v81 + 56))(v71, 0, 1, v83);
    *&v94 = MEMORY[0x1E69E7CC0];
    v73 = sub_1BD69175C(v71, v72);
    sub_1BDA7A7E4(v73);
    sub_1BD0DE53C(v71, &unk_1EBD43B40, &qword_1BE0D42C0);
    *(v9 + v37[10]) = v94;
    sub_1BD4EDC40();
    v74 = [swift_getObjCClassFromMetadata() appearance];
    v75 = [objc_opt_self() clearColor];
    [v74 setBackgroundColor_];

    sub_1BD4EDCF4(v64, type metadata accessor for Passes);
    sub_1BD4EDCF4(v80, type metadata accessor for IdentityPassVendor);
    v76 = v85;
    sub_1BD4EDC8C(v9, v85, type metadata accessor for IdentityPassMethodSheet);
    v77 = v76;
    v36 = v92;
    sub_1BD4EDC8C(v77, v92, type metadata accessor for IdentityPassMethodSheet);
    v35 = 0;
    return (*(v91 + 56))(v36, v35, 1, v37);
  }

  __break(1u);
  return result;
}

void sub_1BD4ED1BC()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41[-v6];
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v43 = v8;
  v44 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A8, &unk_1BE0DC870);
  sub_1BE0516A4();
  if (v42)
  {
    if (sub_1BE04C904())
    {
      v43 = v8;
      v44 = v9;
      v42 = 0;
      sub_1BE0516B4();
      v10 = objc_opt_self();
      v11 = *MEMORY[0x1E69BB6D8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B98D0;
      v13 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      v14 = sub_1BE052434();
      v15 = MEMORY[0x1E69BABE8];
      *(inited + 40) = v14;
      *(inited + 48) = v16;
      v17 = *v15;
      *(inited + 56) = *v15;
      v18 = sub_1BE052434();
      v19 = MEMORY[0x1E69BA440];
      *(inited + 64) = v18;
      *(inited + 72) = v20;
      v21 = *v19;
      *(inited + 80) = *v19;
      *(inited + 88) = sub_1BE052434();
      *(inited + 96) = v22;
      v23 = v13;
      v24 = v17;
      v25 = v21;
      v26 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD1F0E18();
      v27 = sub_1BE052224();
      v26, v28, v29, v30, v31, v32, v33, v34;
      [v10 subject:v11 sendEvent:v27];
    }

    else
    {
      sub_1BE04D084();
      v38 = sub_1BE04D204();
      v39 = sub_1BE052C34();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1BD026000, v38, v39, "Authorizing identity presentment, ignoring detail sheet", v40, 2u);
        MEMORY[0x1BFB45F20](v40, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    sub_1BE04D084();
    v35 = sub_1BE04D204();
    v36 = sub_1BE052C34();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1BD026000, v35, v36, "Detail sheet already set, ignoring", v37, 2u);
      MEMORY[0x1BFB45F20](v37, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
  }
}

uint64_t sub_1BD4ED564()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD4ED5E0(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

void sub_1BD4ED638(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1BE053A44();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4 != 0;
}

void sub_1BD4ED68C(uint64_t a1@<X8>)
{
  strcpy(a1, "identityPass");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_1BD4ED6B4()
{
  result = qword_1EBD487F8;
  if (!qword_1EBD487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD487F8);
  }

  return result;
}

uint64_t sub_1BD4ED708(uint64_t a1, void *a2, uint64_t a3)
{
  v28[1] = a3;
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190, &qword_1BE0C5788);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v28 - v5;
  v30 = type metadata accessor for IdentityCredential(0);
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v28[0] = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  v15 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v28 - v19;
  sub_1BD0DE19C(a1, v14, &qword_1EBD520A0, &qword_1BE0B9840);
  v21 = type metadata accessor for AvailablePass(0);
  v22 = *(*(v21 - 8) + 48);
  if (v22(v14, 1, v21) == 1)
  {
    return sub_1BD0DE53C(v14, &qword_1EBD520A0, &qword_1BE0B9840);
  }

  sub_1BD395DD4(v14, v17, type metadata accessor for WrappedPass);
  sub_1BD4EDCF4(v14, type metadata accessor for AvailablePass);
  sub_1BD4EDC8C(v17, v20, type metadata accessor for WrappedPass);
  sub_1BD0DE19C(a1, v11, &qword_1EBD520A0, &qword_1BE0B9840);
  if (v22(v11, 1, v21) == 1)
  {
    sub_1BD4EDCF4(v20, type metadata accessor for WrappedPass);
    sub_1BD0DE53C(v11, &qword_1EBD520A0, &qword_1BE0B9840);
    (*(v7 + 56))(v6, 1, 1, v30);
    return sub_1BD0DE53C(v6, &qword_1EBD3F190, &qword_1BE0C5788);
  }

  sub_1BD0DE19C(&v11[*(v21 + 24)], v6, &qword_1EBD3F190, &qword_1BE0C5788);
  sub_1BD4EDCF4(v11, type metadata accessor for AvailablePass);
  if ((*(v7 + 48))(v6, 1, v30) == 1)
  {
    sub_1BD4EDCF4(v20, type metadata accessor for WrappedPass);
    return sub_1BD0DE53C(v6, &qword_1EBD3F190, &qword_1BE0C5788);
  }

  v24 = v28[0];
  sub_1BD4EDC8C(v6, v28[0], type metadata accessor for IdentityCredential);
  v25 = objc_allocWithZone(MEMORY[0x1E69B85A0]);
  v26 = sub_1BE052404();
  v27 = [v25 initWithIdentifier_];

  sub_1BD390F88(v20, v29, v27);
  sub_1BD4EDCF4(v24, type metadata accessor for IdentityCredential);
  return sub_1BD4EDCF4(v20, type metadata accessor for WrappedPass);
}

double sub_1BD4EDBAC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A8, &unk_1BE0DC870);
  sub_1BE0516B4();
  return result;
}

unint64_t sub_1BD4EDC40()
{
  result = qword_1EBD43B70;
  if (!qword_1EBD43B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43B70);
  }

  return result;
}

uint64_t sub_1BD4EDC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD4EDCF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI18ContactInformationVIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD4EDD80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1BD4EDDC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD4EDE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v8, 0, a4, a5, a6, a7, a8);
    v11 = (a1 + 32);
    v9 = v38;
    v12 = 0x31746565727473;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = v14 == 6;
      if (v14 == 6)
      {
        v16 = 0x6F436C6174736F70;
      }

      else
      {
        v16 = 0x7972746E756F63;
      }

      if (v15)
      {
        v17 = 0xEA00000000006564;
      }

      else
      {
        v17 = 0xE700000000000000;
      }

      if (v13 == 4)
      {
        v18 = 0xD000000000000015;
      }

      else
      {
        v18 = 0x6574617473;
      }

      if (v13 == 4)
      {
        v19 = 0x80000001BE1173C0;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v13 <= 5)
      {
        v16 = v18;
        v17 = v19;
      }

      if (v13 == 2)
      {
        v20 = 0x6C61636F4C627573;
      }

      else
      {
        v20 = 2037672291;
      }

      if (v13 == 2)
      {
        v21 = 0xEB00000000797469;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (v13)
      {
        v22 = 0x32746565727473;
      }

      else
      {
        v22 = v12;
      }

      if (v13 <= 1)
      {
        v20 = v22;
        v21 = 0xE700000000000000;
      }

      if (v13 <= 3)
      {
        v23 = v20;
      }

      else
      {
        v23 = v16;
      }

      if (v13 <= 3)
      {
        v24 = v21;
      }

      else
      {
        v24 = v17;
      }

      v39 = v9;
      v26 = v9[2];
      v25 = v9[3];
      if (v26 >= v25 >> 1)
      {
        v28 = v12;
        sub_1BD03B254((v25 > 1), v26 + 1, 1, 0x6574617473, 0xEB00000000797469, 0x6C61636F4C627573, 0xE400000000000000, 0x79746963);
        v12 = v28;
        v9 = v39;
      }

      v9[2] = v26 + 1;
      v27 = &v9[2 * v26];
      v27[4] = v23;
      v27[5] = v24;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
  sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0, &qword_1BE0C1E30, MEMORY[0x1E69E6310]);
  v29 = sub_1BE0522E4();
  v9, v30, v31, v32, v33, v34, v35, v36;
  return v29;
}

uint64_t sub_1BD4EE0F0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48800, &qword_1BE0DC940);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v22 - v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48808, &qword_1BE0DC948);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48810, &qword_1BE0DC950);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v27 = *v1;
  v11 = sub_1BD20C578();
  v12 = v11;
  if (v2[2])
  {
    v26 = v11;
    swift_getKeyPath();
    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    v15 = swift_allocObject();
    v16 = v2[1];
    *(v15 + 16) = *v2;
    *(v15 + 32) = v16;
    *(v15 + 47) = *(v2 + 31);
    sub_1BD0DE19C(&v27, v25, &qword_1EBD48820, &qword_1BE0DC988);
    sub_1BD0D44B8(v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48828, &qword_1BE0DC990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48830, &qword_1BE0DC998);
    sub_1BD0DE4F4(&qword_1EBD48838, &qword_1EBD48828, &qword_1BE0DC990, MEMORY[0x1E69E6338]);
    sub_1BD4F083C();
    sub_1BE0519C4();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F1064(&qword_1EBD48918, &qword_1EBD48810, &qword_1BE0DC950, sub_1BD4F083C);
    sub_1BD0DE4F4(&qword_1EBD48920, &qword_1EBD48800, &qword_1BE0DC940, MEMORY[0x1E6981870]);
    sub_1BE04F9A4();
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    *v4 = sub_1BE04F7C4();
    *(v4 + 1) = 0x4020000000000000;
    v4[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48818, &qword_1BE0DC958);
    v26 = v12;
    swift_getKeyPath();
    v18 = *(v2 + 2);
    v19 = *(v2 + 3);
    v20 = swift_allocObject();
    v21 = v2[1];
    *(v20 + 16) = *v2;
    *(v20 + 32) = v21;
    *(v20 + 47) = *(v2 + 31);
    sub_1BD0DE19C(&v27, v25, &qword_1EBD48820, &qword_1BE0DC988);
    sub_1BD0D44B8(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48828, &qword_1BE0DC990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48830, &qword_1BE0DC998);
    sub_1BD0DE4F4(&qword_1EBD48838, &qword_1EBD48828, &qword_1BE0DC990, MEMORY[0x1E69E6338]);
    sub_1BD4F083C();
    sub_1BE0519C4();
    sub_1BD0DE19C(v4, v6, &qword_1EBD48800, &qword_1BE0DC940);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F1064(&qword_1EBD48918, &qword_1EBD48810, &qword_1BE0DC950, sub_1BD4F083C);
    sub_1BD0DE4F4(&qword_1EBD48920, &qword_1EBD48800, &qword_1BE0DC940, MEMORY[0x1E6981870]);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v4, &qword_1EBD48800, &qword_1BE0DC940);
  }
}

uint64_t sub_1BD4EE650@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48910, &qword_1BE0DCA00);
  MEMORY[0x1EEE9AC00](v46);
  v5 = v40 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48928, &qword_1BE0DCA08);
  MEMORY[0x1EEE9AC00](v42);
  v43 = v40 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48900, &qword_1BE0DC9F8);
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v8 = v40 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488F0, &qword_1BE0DC9F0);
  MEMORY[0x1EEE9AC00](v48);
  v45 = v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48860, &qword_1BE0DC9A8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v40 - v11);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48930, &qword_1BE0DCA10);
  MEMORY[0x1EEE9AC00](v47);
  v14 = v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48938, &qword_1BE0DCA18);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48850, &qword_1BE0DC9A0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v40 - v20;
  v22 = *(a1 + 16);
  if (v22 == 1)
  {
    sub_1BD4EEF44(*(a1 + 32), v12);
    sub_1BD0DE19C(v12, v17, &qword_1EBD48860, &qword_1BE0DC9A8);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F0954();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v21, v14, &qword_1EBD48850, &qword_1BE0DC9A0);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F08C8();
    sub_1BD4F0F80();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v21, &qword_1EBD48850, &qword_1BE0DC9A0);
    v25 = v12;
    v26 = &qword_1EBD48860;
    v27 = &qword_1BE0DC9A8;
  }

  else
  {
    if (v22)
    {
      v40[1] = v19;
      if (v2[2])
      {
        v51 = a1;
        swift_getKeyPath();
        v52 = *v2;
        v28 = *(v2 + 2);
        v29 = *(v2 + 3);
        v30 = swift_allocObject();
        v31 = v2[1];
        *(v30 + 16) = *v2;
        *(v30 + 32) = v31;
        *(v30 + 47) = *(v2 + 31);
        sub_1BE048C84();
        sub_1BD0DE19C(&v52, v50, &qword_1EBD48820, &qword_1BE0DC988);
        sub_1BD0D44B8(v28, v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA30, &qword_1BE0DCA50);
        sub_1BD0DE4F4(&qword_1EBD48948, &qword_1EBD3CA30, &qword_1BE0DCA50, MEMORY[0x1E69E6338]);
        sub_1BD4F0954();
        sub_1BE0519C4();
        v32 = v41;
        v33 = v44;
        (*(v41 + 16))(v43, v8, v44);
        swift_storeEnumTagMultiPayload();
        sub_1BD4F1064(&qword_1EBD488F8, &qword_1EBD48900, &qword_1BE0DC9F8, sub_1BD4F0954);
        sub_1BD0DE4F4(&qword_1EBD48908, &qword_1EBD48910, &qword_1BE0DCA00, MEMORY[0x1E69817F8]);
        v34 = v45;
        sub_1BE04F9A4();
        (*(v32 + 8))(v8, v33);
      }

      else
      {
        *v5 = sub_1BE04F504();
        *(v5 + 1) = 0x4020000000000000;
        v5[16] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48940, &qword_1BE0DCA20);
        v51 = a1;
        swift_getKeyPath();
        v52 = *v2;
        v35 = *(v2 + 2);
        v36 = *(v2 + 3);
        v37 = swift_allocObject();
        v38 = v2[1];
        *(v37 + 16) = *v2;
        *(v37 + 32) = v38;
        *(v37 + 47) = *(v2 + 31);
        sub_1BE048C84();
        sub_1BD0DE19C(&v52, v50, &qword_1EBD48820, &qword_1BE0DC988);
        sub_1BD0D44B8(v35, v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA30, &qword_1BE0DCA50);
        sub_1BD0DE4F4(&qword_1EBD48948, &qword_1EBD3CA30, &qword_1BE0DCA50, MEMORY[0x1E69E6338]);
        sub_1BD4F0954();
        sub_1BE0519C4();
        sub_1BD0DE19C(v5, v43, &qword_1EBD48910, &qword_1BE0DCA00);
        swift_storeEnumTagMultiPayload();
        sub_1BD4F1064(&qword_1EBD488F8, &qword_1EBD48900, &qword_1BE0DC9F8, sub_1BD4F0954);
        sub_1BD0DE4F4(&qword_1EBD48908, &qword_1EBD48910, &qword_1BE0DCA00, MEMORY[0x1E69817F8]);
        v34 = v45;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v5, &qword_1EBD48910, &qword_1BE0DCA00);
      }

      v23 = &qword_1EBD488F0;
      v24 = &qword_1BE0DC9F0;
      sub_1BD0DE19C(v34, v14, &qword_1EBD488F0, &qword_1BE0DC9F0);
      swift_storeEnumTagMultiPayload();
      sub_1BD4F08C8();
      sub_1BD4F0F80();
      sub_1BE04F9A4();
      v25 = v34;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD4F0954();
      sub_1BE04F9A4();
      v23 = &qword_1EBD48850;
      v24 = &qword_1BE0DC9A0;
      sub_1BD0DE19C(v21, v14, &qword_1EBD48850, &qword_1BE0DC9A0);
      swift_storeEnumTagMultiPayload();
      sub_1BD4F08C8();
      sub_1BD4F0F80();
      sub_1BE04F9A4();
      v25 = v21;
    }

    v26 = v23;
    v27 = v24;
  }

  return sub_1BD0DE53C(v25, v26, v27);
}

uint64_t sub_1BD4EEF44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v255 = a2;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590, &qword_1BE0CA980);
  v234 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v248 = &v216 - v4;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D8, &unk_1BE0DC9E0);
  MEMORY[0x1EEE9AC00](v237);
  v233 = &v216 - v5;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48950, &qword_1BE0DCA58);
  v238 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v235 = &v216 - v6;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D0, &unk_1BE10A910);
  MEMORY[0x1EEE9AC00](v254);
  v8 = &v216 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v239 = &v216 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v216 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48958, &qword_1BE0DCA60);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v216 - v15;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48960, &qword_1BE0DCA68);
  MEMORY[0x1EEE9AC00](v227);
  v231 = &v216 - v17;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488B8, &qword_1BE0DC9D8);
  MEMORY[0x1EEE9AC00](v230);
  v226 = &v216 - v18;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48968, &qword_1BE0DCA70);
  v221 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v220 = &v216 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488B0, &qword_1BE0DC9D0);
  MEMORY[0x1EEE9AC00](v20);
  v229 = &v216 - v21;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48970, &qword_1BE0DCA78);
  MEMORY[0x1EEE9AC00](v246);
  v247 = &v216 - v22;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48978, &qword_1BE0DCA80);
  MEMORY[0x1EEE9AC00](v223);
  v224 = &v216 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48980, &qword_1BE0DCA88);
  v219 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v218 = &v216 - v25;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48880, &qword_1BE0DC9B8);
  MEMORY[0x1EEE9AC00](v244);
  v225 = &v216 - v26;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48870, &qword_1BE0DC9B0);
  MEMORY[0x1EEE9AC00](v251);
  v245 = &v216 - v27;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488A0, &qword_1BE0DC9C8);
  v241 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v240 = &v216 - v28;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48888, &qword_1BE0DC9C0);
  MEMORY[0x1EEE9AC00](v222);
  v256 = &v216 - v29;
  v249 = *v2;
  v243 = v2;
  *&v257 = sub_1BD20D008(a1);
  *(&v257 + 1) = v30;
  v31 = sub_1BD20D69C(a1);
  v250 = **(&unk_1E800FFA8 + a1);
  v32 = sub_1BD20D60C(a1);
  v258 = a1;
  v252 = v14;
  v253 = v16;
  if (v32)
  {
    v33 = v32;
    LODWORD(v238) = v31;
    v248 = v20;
    *&v263 = v32;
    sub_1BE048C84();
    sub_1BD4F1198(&v263);
    v33, v34, v35, v36, v37, v38, v39, v40;
    v41 = v263;
    v42 = sub_1BD20B2EC(v258);
    v49 = v42;
    v50 = v43;
    v51 = *(v41 + 2);
    v52 = MEMORY[0x1E69E7CC0];
    v217 = v24;
    v239 = v41;
    if (v51)
    {
      v236 = v42;
      v237 = v43;
      *&v263 = MEMORY[0x1E69E7CC0];
      sub_1BD03B254(0, v51, 0, v44, v45, v46, v47, v48);
      v52 = v263;
      v53 = (v41 + 40);
      do
      {
        v54 = *(v53 - 1);
        v55 = *v53;
        *&v263 = v52;
        v56 = v52[2];
        v57 = v52[3];
        v42 = sub_1BE048C84();
        if (v56 >= v57 >> 1)
        {
          v42 = sub_1BD03B254((v57 > 1), v56 + 1, 1, v58, v59, v60, v61, v62);
          v52 = v263;
        }

        v52[2] = v56 + 1;
        v63 = &v52[2 * v56];
        v63[4] = v54;
        v63[5] = v55;
        v53 += 4;
        --v51;
      }

      while (v51);
      v50 = v237;
      v49 = v236;
    }

    *&v263 = v49;
    *(&v263 + 1) = v50;
    MEMORY[0x1EEE9AC00](v42);
    v214 = &v263;
    v64 = sub_1BD2FF084(sub_1BD20DFC4, &v212, v52);
    v52, v65, v66, v67, v68, v69, v70, v71;
    v72 = v256;
    if (v238)
    {
      v73 = 1;
    }

    else
    {
      v85 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v85 = v49 & 0xFFFFFFFFFFFFLL;
      }

      v73 = (v85 == 0) | v64 ^ 1;
    }

    v262 = v257;
    type metadata accessor for PostalAddressEditingModel(0);
    sub_1BD4F1150(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel, &unk_1BE0C1D08);
    v86 = sub_1BE04E964();
    MEMORY[0x1EEE9AC00](v86);
    KeyPath = swift_getKeyPath();
    sub_1BE04E974();
    KeyPath, v88, v89, v90, v91, v92, v93, v94;
    v86, v95, v96, v97, v98, v99, v100, v101;
    v259 = v263;
    v260 = v264;
    v261 = v265;
    MEMORY[0x1EEE9AC00](v102);
    v103 = v239;
    v212 = v239;
    LOBYTE(v213) = v73 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48988, &qword_1BE0DCAF8);
    v104 = sub_1BD4F1064(&qword_1EBD48990, &qword_1EBD48988, &qword_1BE0DCAF8, sub_1BD4F2614);
    v105 = sub_1BD0DDEBC();
    v214 = v104;
    v215 = v105;
    v106 = v240;
    sub_1BE051804();
    v50, v107, v108, v109, v110, v111, v112, v113;
    v103, v114, v115, v116, v117, v118, v119, v120;
    sub_1BE052434();
    v122 = v121;
    sub_1BD0DE4F4(&qword_1EBD48898, &qword_1EBD488A0, &qword_1BE0DC9C8, MEMORY[0x1E697D690]);
    v123 = v242;
    sub_1BE050DE4();
    v122, v124, v125, v126, v127, v128, v129, v130;
    (*(v241 + 8))(v106, v123);
    v131 = *(v243 + 33);
    if (v73)
    {
      if (*(v243 + 33))
      {
        sub_1BD0DE19C(v72, v224, &qword_1EBD48888, &qword_1BE0DC9C0);
        swift_storeEnumTagMultiPayload();
        v132 = sub_1BD4F0B38();
        *&v263 = v222;
        *(&v263 + 1) = v132;
        swift_getOpaqueTypeConformance2();
        v133 = v225;
        sub_1BE04F9A4();
      }

      else
      {
        v198 = sub_1BD4F0B38();
        v199 = v218;
        v200 = v222;
        sub_1BE0509C4();
        v201 = v219;
        v202 = v217;
        (*(v219 + 16))(v224, v199, v217);
        swift_storeEnumTagMultiPayload();
        *&v263 = v200;
        *(&v263 + 1) = v198;
        swift_getOpaqueTypeConformance2();
        v133 = v225;
        sub_1BE04F9A4();
        (*(v201 + 8))(v199, v202);
      }

      v203 = v253;
      v204 = v250;
      v205 = &qword_1EBD48880;
      v206 = &qword_1BE0DC9B8;
      sub_1BD0DE19C(v133, v247, &qword_1EBD48880, &qword_1BE0DC9B8);
    }

    else
    {
      v134 = sub_1BE051264();
      v135 = swift_getKeyPath();
      v136 = v226;
      sub_1BD0DE19C(v72, v226, &qword_1EBD48888, &qword_1BE0DC9C0);
      v137 = v230;
      v138 = (v136 + *(v230 + 36));
      *v138 = v135;
      v138[1] = v134;
      if (v131)
      {
        sub_1BD0DE19C(v136, v231, &qword_1EBD488B8, &qword_1BE0DC9D8);
        swift_storeEnumTagMultiPayload();
        v139 = sub_1BD4F0CEC();
        *&v263 = v137;
        *(&v263 + 1) = v139;
        swift_getOpaqueTypeConformance2();
        v133 = v229;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v136, &qword_1EBD488B8, &qword_1BE0DC9D8);
      }

      else
      {
        v207 = sub_1BD4F0CEC();
        v208 = v220;
        sub_1BE0509C4();
        sub_1BD0DE53C(v136, &qword_1EBD488B8, &qword_1BE0DC9D8);
        v209 = v221;
        v210 = v228;
        (*(v221 + 16))(v231, v208, v228);
        swift_storeEnumTagMultiPayload();
        *&v263 = v137;
        *(&v263 + 1) = v207;
        swift_getOpaqueTypeConformance2();
        v133 = v229;
        sub_1BE04F9A4();
        (*(v209 + 8))(v208, v210);
      }

      v203 = v253;
      v204 = v250;
      v205 = &qword_1EBD488B0;
      v206 = &qword_1BE0DC9D0;
      sub_1BD0DE19C(v133, v247, &qword_1EBD488B0, &qword_1BE0DC9D0);
    }

    swift_storeEnumTagMultiPayload();
    sub_1BD4F0A6C();
    sub_1BD4F0C20();
    v211 = v245;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v133, v205, v206);
    sub_1BD0DE19C(v211, v203, &qword_1EBD48870, &qword_1BE0DC9B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F09E0();
    sub_1BD4F0DA4();
    sub_1BE04F9A4();

    sub_1BD0DE53C(v211, &qword_1EBD48870, &qword_1BE0DC9B0);
    return sub_1BD0DE53C(v256, &qword_1EBD48888, &qword_1BE0DC9C0);
  }

  else
  {
    v256 = v8;
    v74 = v232;
    v75 = sub_1BD20B2EC(a1);
    v77 = v76;
    v76, v76, v78, v79, v80, v81, v82, v83;
    if (v31)
    {
      v84 = 1;
    }

    else
    {
      v140 = HIBYTE(v77) & 0xF;
      if ((v77 & 0x2000000000000000) == 0)
      {
        v140 = v75 & 0xFFFFFFFFFFFFLL;
      }

      v84 = v140 == 0;
    }

    v141 = v74;
    type metadata accessor for PostalAddressEditingModel(0);
    sub_1BD4F1150(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel, &unk_1BE0C1D08);
    v142 = *(&v257 + 1);
    sub_1BE048C84();
    v143 = sub_1BE04E964();
    MEMORY[0x1EEE9AC00](v143);
    v144 = swift_getKeyPath();
    sub_1BE04E974();
    v144, v145, v146, v147, v148, v149, v150, v151;
    v143, v152, v153, v154, v155, v156, v157, v158;
    *&v259 = v257;
    *(&v259 + 1) = v142;
    v214 = sub_1BD0DDEBC();
    v212 = 0;
    v213 = MEMORY[0x1E69E6158];
    sub_1BE051E14();
    v159 = 0;
    v160 = v13;
    v161 = v256;
    if (!v84)
    {
      v159 = sub_1BE051264();
    }

    v162 = swift_getKeyPath();
    v163 = v233;
    (*(v234 + 32))(v233, v248, v236);
    v164 = v237;
    v165 = (v163 + *(v237 + 36));
    *v165 = v162;
    v165[1] = v159;
    v166 = sub_1BD4F0E9C();
    v167 = v235;
    MEMORY[0x1BFB3DDE0](1, v164, v166);
    sub_1BD0DE53C(v163, &qword_1EBD488D8, &unk_1BE0DC9E0);
    v168 = *(&v257 + 1);
    v263 = v257;
    *&v259 = v164;
    *(&v259 + 1) = v166;
    swift_getOpaqueTypeConformance2();
    sub_1BE050C34();
    (*(v238 + 8))(v167, v141);
    v168, v169, v170, v171, v172, v173, v174, v175;
    v176 = sub_1BD20B2EC(v258);
    v178 = v177;
    *&v263 = v176;
    *(&v263 + 1) = v177;
    v179 = v239;
    sub_1BE04EB94();
    v178, v180, v181, v182, v183, v184, v185, v186;
    sub_1BD0DE53C(v161, &qword_1EBD488D0, &unk_1BE10A910);
    v187 = v250;
    sub_1BE052434();
    v189 = v188;
    sub_1BE04EBB4();
    v189, v190, v191, v192, v193, v194, v195, v196;
    sub_1BD0DE53C(v179, &qword_1EBD488D0, &unk_1BE10A910);
    sub_1BD0DE19C(v160, v253, &qword_1EBD488D0, &unk_1BE10A910);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F09E0();
    sub_1BD4F0DA4();
    sub_1BE04F9A4();

    return sub_1BD0DE53C(v160, &qword_1EBD488D0, &unk_1BE10A910);
  }
}

uint64_t sub_1BD4F03A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  sub_1BE048C84();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489B8, &unk_1BE10EF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489A0, &qword_1BE0DCB00);
  sub_1BD0DE4F4(&qword_1EBD489C0, &qword_1EBD489B8, &unk_1BE10EF20, MEMORY[0x1E69E6338]);
  sub_1BD4F2614();
  sub_1BD4F2764();
  return sub_1BE0519D4();
}

uint64_t sub_1BD4F04D0@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v48 = a4;
  v49 = a3;
  v50 = a2;
  v54 = a5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489D0, &qword_1BE0DCB10);
  MEMORY[0x1EEE9AC00](v52);
  v7 = &v47 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489B0, &qword_1BE0DCB08);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v47 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v47 - v10;
  v12 = *a1;
  v47 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v55 = v13;
  v56 = v14;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v15 = sub_1BE0506C4();
  v17 = v16;
  v19 = v18;
  v55 = v15;
  v56 = v16;
  v21 = (v20 & 1);
  v57 = v20 & 1;
  v58 = v18;
  sub_1BE052434();
  v23 = v22;
  sub_1BE050DE4();
  v23, v24, v25, v26, v27, v28, v29, v30;
  sub_1BD0DDF10(v15, v17, v21, v31, v32, v33, v34, v35);
  v19, v36, v37, v38, v39, v40, v41, v42;
  if (v50 & 1) == 0 && (v12 == v49 && v47 == v48 || (sub_1BE053B84()))
  {
    v43 = sub_1BE051264();
    KeyPath = swift_getKeyPath();
    sub_1BD0DE19C(v11, v9, &qword_1EBD452C0, &qword_1BE0B7620);
    v45 = &v9[*(v53 + 36)];
    *v45 = KeyPath;
    v45[1] = v43;
    sub_1BD0DE19C(v9, v7, &qword_1EBD489B0, &qword_1BE0DCB08);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F26A0();
    sub_1BD1103C8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v9, &qword_1EBD489B0, &qword_1BE0DCB08);
  }

  else
  {
    sub_1BD0DE19C(v11, v7, &qword_1EBD452C0, &qword_1BE0B7620);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F26A0();
    sub_1BD1103C8();
    sub_1BE04F9A4();
  }

  return sub_1BD0DE53C(v11, &qword_1EBD452C0, &qword_1BE0B7620);
}

unint64_t sub_1BD4F083C()
{
  result = qword_1EBD48840;
  if (!qword_1EBD48840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48830, &qword_1BE0DC998);
    sub_1BD4F08C8();
    sub_1BD4F0F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48840);
  }

  return result;
}

unint64_t sub_1BD4F08C8()
{
  result = qword_1EBD48848;
  if (!qword_1EBD48848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48850, &qword_1BE0DC9A0);
    sub_1BD4F0954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48848);
  }

  return result;
}

unint64_t sub_1BD4F0954()
{
  result = qword_1EBD48858;
  if (!qword_1EBD48858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48860, &qword_1BE0DC9A8);
    sub_1BD4F09E0();
    sub_1BD4F0DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48858);
  }

  return result;
}

unint64_t sub_1BD4F09E0()
{
  result = qword_1EBD48868;
  if (!qword_1EBD48868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48870, &qword_1BE0DC9B0);
    sub_1BD4F0A6C();
    sub_1BD4F0C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48868);
  }

  return result;
}

unint64_t sub_1BD4F0A6C()
{
  result = qword_1EBD48878;
  if (!qword_1EBD48878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48880, &qword_1BE0DC9B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48888, &qword_1BE0DC9C0);
    sub_1BD4F0B38();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48878);
  }

  return result;
}

unint64_t sub_1BD4F0B38()
{
  result = qword_1EBD48890;
  if (!qword_1EBD48890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48888, &qword_1BE0DC9C0);
    sub_1BD0DE4F4(&qword_1EBD48898, &qword_1EBD488A0, &qword_1BE0DC9C8, MEMORY[0x1E697D690]);
    sub_1BD4F1150(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48890);
  }

  return result;
}

unint64_t sub_1BD4F0C20()
{
  result = qword_1EBD488A8;
  if (!qword_1EBD488A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488B0, &qword_1BE0DC9D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488B8, &qword_1BE0DC9D8);
    sub_1BD4F0CEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD488A8);
  }

  return result;
}

unint64_t sub_1BD4F0CEC()
{
  result = qword_1EBD488C0;
  if (!qword_1EBD488C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488B8, &qword_1BE0DC9D8);
    sub_1BD4F0B38();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD488C0);
  }

  return result;
}

unint64_t sub_1BD4F0DA4()
{
  result = qword_1EBD488C8;
  if (!qword_1EBD488C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488D0, &unk_1BE10A910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488D8, &unk_1BE0DC9E0);
    sub_1BD4F0E9C();
    swift_getOpaqueTypeConformance2();
    sub_1BD4F1150(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD488C8);
  }

  return result;
}

unint64_t sub_1BD4F0E9C()
{
  result = qword_1EBD488E0;
  if (!qword_1EBD488E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488D8, &unk_1BE0DC9E0);
    sub_1BD0DE4F4(&qword_1EBD415D8, &qword_1EBD41590, &qword_1BE0CA980, MEMORY[0x1E697D7E0]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD488E0);
  }

  return result;
}

unint64_t sub_1BD4F0F80()
{
  result = qword_1EBD488E8;
  if (!qword_1EBD488E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488F0, &qword_1BE0DC9F0);
    sub_1BD4F1064(&qword_1EBD488F8, &qword_1EBD48900, &qword_1BE0DC9F8, sub_1BD4F0954);
    sub_1BD0DE4F4(&qword_1EBD48908, &qword_1EBD48910, &qword_1BE0DCA00, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD488E8);
  }

  return result;
}

uint64_t sub_1BD4F1064(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t objectdestroyTm_51(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 32))
  {
    *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD4F1150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD4F1198(char **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v72 - v4;
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1BD5ED77C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = *(v6 + 2);
  v85[0] = v6 + 32;
  v85[1] = v14;
  v15 = sub_1BE053B14();
  if (v15 >= v14)
  {
    if (v14 >= 2)
    {
      v74 = a1;
      v75 = v1;
      v86 = sub_1BE04B0F4();
      v18 = *(v86 - 8);
      v19 = *(v18 + 56);
      v80 = v18 + 56;
      v81 = v19;
      v73 = v6;
      v20 = v6 + 48;
      v21 = -1;
      v22 = 1;
      v76 = v14;
      do
      {
        v77 = v22;
        v78 = v21;
        v79 = v20;
        v23 = v20;
        do
        {
          v24 = *(v23 + 3);
          v25 = *(v23 + 5);
          v27 = *(v23 - 1);
          v26 = *v23;
          v28 = *(v23 + 1);
          v83 = *(v23 + 4);
          v84 = v25;
          v82[0] = v26;
          v82[1] = v28;
          v81(v5, 1, 1, v86);
          sub_1BD0DDEBC();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          v29 = sub_1BE0535E4();
          sub_1BD0DE53C(v5, &qword_1EBD450F0, &unk_1BE0B8510);
          v25, v30, v31, v32, v33, v34, v35, v36;
          v24, v37, v38, v39, v40, v41, v42, v43;
          v28, v44, v45, v46, v47, v48, v49, v50;
          v27, v51, v52, v53, v54, v55, v56, v57;
          if (v29 != -1)
          {
            break;
          }

          v58 = *(v23 + 2);
          v59 = *(v23 + 3);
          v60 = *(v23 + 4);
          v61 = *(v23 + 5);
          v62 = *v23;
          *(v23 + 1) = *(v23 - 1);
          *(v23 + 2) = v62;
          *(v23 - 2) = v58;
          *(v23 - 1) = v59;
          *v23 = v60;
          *(v23 + 1) = v61;
          v23 -= 32;
        }

        while (!__CFADD__(v21++, 1));
        v22 = v77 + 1;
        v20 = v79 + 32;
        v21 = v78 - 1;
      }

      while (v77 + 1 != v76);
      a1 = v74;
      v6 = v73;
    }
  }

  else
  {
    v16 = v15;
    if (v14 >= 2)
    {
      v17 = sub_1BE0527B4();
      *(v17 + 16) = v14 >> 1;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v83 = v17 + 32;
    v84 = v14 >> 1;
    v64 = v17;
    sub_1BD4F145C(&v83, v82, v85, v16);
    v64[2] = 0;
    v64, v65, v66, v67, v68, v69, v70, v71;
  }

  *a1 = v6;
}

void sub_1BD4F145C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v309 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v324 = &v308 - v14;
  v312 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_129:
    a3 = *v309;
    if (*v309)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_131;
    }

LABEL_167:
    __break(1u);
    return;
  }

  v308 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    if (v16 + 1 < v15)
    {
      v317 = v17;
      v20 = *v312;
      v21 = (*v312 + 32 * v19);
      v23 = v21[1];
      v22 = v21[2];
      v24 = v21[3];
      v315 = 32 * v18;
      v25 = (v20 + 32 * v18);
      v27 = v25[1];
      v26 = v25[2];
      v28 = v25[3];
      v327 = v22;
      v328 = v24;
      v325 = v26;
      v326 = v28;
      v29 = sub_1BE04B0F4();
      v30 = *(v29 - 1);
      v31 = v324;
      v320 = *(v30 + 56);
      v321 = v29;
      v319 = (v30 + 56);
      v320(v324, 1, 1);
      v32 = sub_1BD0DDEBC();
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      v318 = v32;
      v322 = sub_1BE0535E4();
      sub_1BD0DE53C(v31, &qword_1EBD450F0, &unk_1BE0B8510);
      v23, v33, v34, v35, v36, v37, v38, v39;
      v28, v40, v41, v42, v43, v44, v45, v46;
      v27, v47, v48, v49, v50, v51, v52, v53;
      v24, v54, v55, v56, v57, v58, v59, v60;
      v316 = v18;
      v61 = v18 + 2;
      a3 = (v25 + 11);
      while (v15 != v61)
      {
        LODWORD(v323) = v322 == -1;
        v62 = v15;
        v63 = *(a3 - 16);
        v64 = *a3;
        v66 = *(a3 - 48);
        v65 = *(a3 - 40);
        v67 = *(a3 - 32);
        v327 = *(a3 - 8);
        v328 = v64;
        v325 = v65;
        v326 = v67;
        v68 = v324;
        (v320)(v324, 1, 1, v321);
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v69 = sub_1BE0535E4();
        sub_1BD0DE53C(v68, &qword_1EBD450F0, &unk_1BE0B8510);
        v70 = v63;
        v15 = v62;
        v70, v71, v72, v73, v74, v75, v76, v77;
        v67, v78, v79, v80, v81, v82, v83, v84;
        v66, v85, v86, v87, v88, v89, v90, v91;
        v64, v92, v93, v94, v95, v96, v97, v98;
        ++v61;
        a3 += 32;
        if (((v323 ^ (v69 != -1)) & 1) == 0)
        {
          v15 = v61 - 1;
          break;
        }
      }

      v18 = v316;
      v17 = v317;
      if (v322 == -1)
      {
        if (v15 < v316)
        {
          goto LABEL_160;
        }

        if (v316 < v15)
        {
          v99 = 32 * v15 - 16;
          v100 = v315 + 24;
          v101 = v15;
          v102 = v316;
          do
          {
            if (v102 != --v101)
            {
              v109 = *v312;
              if (!*v312)
              {
                goto LABEL_164;
              }

              v103 = (v109 + v100);
              v104 = (v109 + v99);
              v105 = *(v103 - 3);
              v106 = *(v103 - 1);
              v107 = *v103;
              v108 = *v104;
              *(v103 - 3) = *(v104 - 1);
              *(v103 - 1) = v108;
              *(v104 - 1) = v105;
              *v104 = v106;
              *(v104 + 1) = v107;
            }

            ++v102;
            v99 -= 32;
            v100 += 32;
          }

          while (v102 < v101);
        }
      }

      v19 = v15;
    }

    v110 = v312[1];
    if (v19 >= v110)
    {
      goto LABEL_29;
    }

    a3 = v19;
    v129 = __OFSUB__(v19, v18);
    v111 = v19 - v18;
    if (v129)
    {
      goto LABEL_157;
    }

    if (v111 >= v308)
    {
      goto LABEL_28;
    }

    if (__OFADD__(v18, v308))
    {
      goto LABEL_158;
    }

    if (v18 + v308 >= v110)
    {
      v112 = v312[1];
    }

    else
    {
      v112 = v18 + v308;
    }

    if (v112 < v18)
    {
      goto LABEL_159;
    }

    if (a3 == v112)
    {
LABEL_28:
      v19 = a3;
LABEL_29:
      if (v19 < v18)
      {
        goto LABEL_154;
      }

      goto LABEL_30;
    }

    v317 = v17;
    v258 = *v312;
    v323 = sub_1BE04B0F4();
    v259 = *(v323 - 8);
    v260 = *(v259 + 56);
    v321 = (v259 + 56);
    v322 = v260;
    v261 = v258;
    v262 = v258 + 32 * a3 - 32;
    v316 = v18;
    v263 = (v18 - a3);
    v318 = v112;
    do
    {
      v311 = a3;
      v264 = (v261 + 32 * a3);
      a3 = v262;
      v266 = v264[1];
      v265 = v264[2];
      v267 = v264[3];
      v319 = v263;
      v320 = a3;
      do
      {
        v269 = *(a3 + 8);
        v268 = *(a3 + 16);
        v17 = *(a3 + 24);
        v327 = v265;
        v328 = v267;
        v325 = v268;
        v326 = v17;
        v270 = v324;
        v322(v324, 1, 1, v323);
        sub_1BD0DDEBC();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v271 = sub_1BE0535E4();
        sub_1BD0DE53C(v270, &qword_1EBD450F0, &unk_1BE0B8510);
        v266, v272, v273, v274, v275, v276, v277, v278;
        v17, v279, v280, v281, v282, v283, v284, v285;
        v269, v286, v287, v288, v289, v290, v291, v292;
        v267, v293, v294, v295, v296, v297, v298, v299;
        if (v271 != -1)
        {
          break;
        }

        if (!v261)
        {
          goto LABEL_161;
        }

        v300 = *(a3 + 32);
        v266 = *(a3 + 40);
        v265 = *(a3 + 48);
        v267 = *(a3 + 56);
        v301 = *(a3 + 16);
        *(a3 + 32) = *a3;
        *(a3 + 48) = v301;
        *a3 = v300;
        *(a3 + 8) = v266;
        *(a3 + 16) = v265;
        *(a3 + 24) = v267;
        a3 -= 32;
      }

      while (!__CFADD__(v263++, 1));
      a3 = v311 + 1;
      v262 = v320 + 32;
      v263 = v319 - 1;
    }

    while (v311 + 1 != v318);
    v19 = v318;
    v18 = v316;
    v17 = v317;
    if (v318 < v316)
    {
      goto LABEL_154;
    }

LABEL_30:
    v311 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1BD1D7844(0, *(v17 + 2) + 1, 1, v17, v10, v11, v12, v13);
    }

    a3 = *(v17 + 2);
    v113 = *(v17 + 3);
    v114 = a3 + 1;
    if (a3 >= v113 >> 1)
    {
      v17 = sub_1BD1D7844((v113 > 1), a3 + 1, 1, v17, v10, v11, v12, v13);
    }

    *(v17 + 2) = v114;
    v115 = &v17[16 * a3];
    v116 = v311;
    *(v115 + 4) = v18;
    *(v115 + 5) = v116;
    v117 = *v309;
    if (!*v309)
    {
      goto LABEL_165;
    }

    if (a3)
    {
      break;
    }

LABEL_3:
    v16 = v311;
    v15 = v312[1];
    if (v311 >= v15)
    {
      goto LABEL_129;
    }
  }

  v321 = *v309;
  while (1)
  {
    v118 = v114 - 1;
    if (v114 >= 4)
    {
      v123 = &v17[16 * v114 + 32];
      v124 = *(v123 - 64);
      v125 = *(v123 - 56);
      v129 = __OFSUB__(v125, v124);
      v126 = v125 - v124;
      if (v129)
      {
        goto LABEL_143;
      }

      v128 = *(v123 - 48);
      v127 = *(v123 - 40);
      v129 = __OFSUB__(v127, v128);
      v121 = v127 - v128;
      v122 = v129;
      if (v129)
      {
        goto LABEL_144;
      }

      v130 = &v17[16 * v114];
      v132 = *v130;
      v131 = *(v130 + 1);
      v129 = __OFSUB__(v131, v132);
      v133 = v131 - v132;
      if (v129)
      {
        goto LABEL_146;
      }

      v129 = __OFADD__(v121, v133);
      v134 = v121 + v133;
      if (v129)
      {
        goto LABEL_149;
      }

      if (v134 >= v126)
      {
        v152 = &v17[16 * v118 + 32];
        v154 = *v152;
        v153 = *(v152 + 1);
        v129 = __OFSUB__(v153, v154);
        v155 = v153 - v154;
        if (v129)
        {
          goto LABEL_153;
        }

        if (v121 < v155)
        {
          v118 = v114 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

    if (v114 == 3)
    {
      v119 = *(v17 + 4);
      v120 = *(v17 + 5);
      v129 = __OFSUB__(v120, v119);
      v121 = v120 - v119;
      v122 = v129;
LABEL_50:
      if (v122)
      {
        goto LABEL_145;
      }

      v135 = &v17[16 * v114];
      v137 = *v135;
      v136 = *(v135 + 1);
      v138 = __OFSUB__(v136, v137);
      v139 = v136 - v137;
      v140 = v138;
      if (v138)
      {
        goto LABEL_148;
      }

      v141 = &v17[16 * v118 + 32];
      v143 = *v141;
      v142 = *(v141 + 1);
      v129 = __OFSUB__(v142, v143);
      v144 = v142 - v143;
      if (v129)
      {
        goto LABEL_151;
      }

      if (__OFADD__(v139, v144))
      {
        goto LABEL_152;
      }

      if (v139 + v144 >= v121)
      {
        if (v121 < v144)
        {
          v118 = v114 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v145 = &v17[16 * v114];
    v147 = *v145;
    v146 = *(v145 + 1);
    v129 = __OFSUB__(v146, v147);
    v139 = v146 - v147;
    v140 = v129;
LABEL_64:
    if (v140)
    {
      goto LABEL_147;
    }

    v148 = &v17[16 * v118];
    v150 = *(v148 + 4);
    v149 = *(v148 + 5);
    v129 = __OFSUB__(v149, v150);
    v151 = v149 - v150;
    if (v129)
    {
      goto LABEL_150;
    }

    if (v151 < v139)
    {
      goto LABEL_3;
    }

LABEL_71:
    if (v118 - 1 >= v114)
    {
      break;
    }

    v156 = *v312;
    if (!*v312)
    {
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v317 = v17;
    v313 = v118 - 1;
    v314 = v118;
    v157 = *&v17[16 * v118 + 16];
    v158 = *&v17[16 * v118 + 40];
    v159 = 32 * v157;
    v160 = (v156 + 32 * v157);
    v161 = 32 * *&v17[16 * v118 + 32];
    v162 = (v156 + v161);
    v17 = (32 * v158);
    v322 = (v156 + 32 * v158);
    v163 = v161 - 32 * v157;
    v164 = 32 * v158 - v161;
    v315 = v158;
    v316 = v157;
    if (v163 >= v164)
    {
      v208 = v322;
      if (v162 != v117 || v322 <= v117)
      {
        memmove(v321, v162, 32 * v158 - v161);
        v117 = v321;
      }

      v165 = v117 + v164;
      if (v164 < 1 || v161 <= v159)
      {
        v166 = v117;
LABEL_108:
        v251 = v162;
      }

      else
      {
        v320 = sub_1BE04B0F4();
        v209 = *(v320 - 1);
        v210 = *(v209 + 56);
        v318 = v209 + 56;
        v319 = v210;
        v323 = v160;
        do
        {
          v211 = v208 - 32;
          while (1)
          {
            v212 = v211;
            v213 = (v211 + 32);
            v215 = *(v165 - 24);
            v214 = *(v165 - 16);
            v17 = *(v165 - 8);
            v216 = *(v162 - 2);
            v322 = *(v162 - 3);
            v217 = v162;
            v218 = *(v162 - 1);
            v327 = v214;
            v328 = v17;
            v325 = v216;
            v326 = v218;
            v219 = v324;
            (v319)(v324, 1, 1, v320);
            sub_1BD0DDEBC();
            sub_1BE048C84();
            sub_1BE048C84();
            sub_1BE048C84();
            sub_1BE048C84();
            v220 = sub_1BE0535E4();
            sub_1BD0DE53C(v219, &qword_1EBD450F0, &unk_1BE0B8510);
            v17, v221, v222, v223, v224, v225, v226, v227;
            v215, v228, v229, v230, v231, v232, v233, v234;
            v218, v235, v236, v237, v238, v239, v240, v241;
            v322, v242, v243, v244, v245, v246, v247, v248;
            if (v220 == -1)
            {
              break;
            }

            v249 = (v165 - 32);
            if (v213 != v165)
            {
              v250 = *(v165 - 16);
              *v212 = *v249;
              *(v212 + 1) = v250;
            }

            v211 = v212 - 32;
            v165 -= 32;
            v162 = v217;
            if (v249 <= v321)
            {
              v165 = v249;
              v166 = v321;
              goto LABEL_108;
            }
          }

          v251 = (v217 - 32);
          v252 = v323;
          v208 = v212;
          if (v213 != v217)
          {
            v253 = *(v217 - 1);
            *v212 = *v251;
            *(v212 + 1) = v253;
          }

          v166 = v321;
          if (v165 <= v321)
          {
            break;
          }

          v162 = (v217 - 32);
        }

        while (v252 < v251);
      }
    }

    else
    {
      if (v160 != v117 || v162 <= v117)
      {
        memmove(v321, v160, v161 - 32 * v157);
        v117 = v321;
      }

      v165 = v117 + v163;
      if (v163 >= 1 && v17 > v161)
      {
        v166 = v117;
        v320 = sub_1BE04B0F4();
        v167 = *(v320 - 1);
        v168 = *(v167 + 56);
        v318 = v167 + 56;
        v319 = v168;
        while (1)
        {
          v323 = v160;
          v169 = *(v162 + 1);
          v170 = *(v162 + 3);
          v172 = *(v166 + 1);
          v171 = *(v166 + 2);
          v17 = *(v166 + 3);
          v327 = *(v162 + 2);
          v328 = v170;
          v325 = v171;
          v326 = v17;
          v173 = v162;
          v174 = v324;
          (v319)(v324, 1, 1, v320);
          sub_1BD0DDEBC();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          v175 = sub_1BE0535E4();
          sub_1BD0DE53C(v174, &qword_1EBD450F0, &unk_1BE0B8510);
          v170, v176, v177, v178, v179, v180, v181, v182;
          v169, v183, v184, v185, v186, v187, v188, v189;
          v17, v190, v191, v192, v193, v194, v195, v196;
          v172, v197, v198, v199, v200, v201, v202, v203;
          if (v175 != -1)
          {
            break;
          }

          v204 = v173;
          v162 = (v173 + 32);
          v205 = v323;
          if (v323 != v173)
          {
            goto LABEL_82;
          }

LABEL_83:
          v160 = (v205 + 2);
          if (v166 >= v165 || v162 >= v322)
          {
            goto LABEL_105;
          }
        }

        v204 = v166;
        v205 = v323;
        v206 = v323 == v166;
        v166 = (v166 + 32);
        v162 = v173;
        if (v206)
        {
          goto LABEL_83;
        }

LABEL_82:
        v207 = *(v204 + 1);
        *v205 = *v204;
        v205[1] = v207;
        goto LABEL_83;
      }

      v166 = v117;
LABEL_105:
      v251 = v160;
    }

    if (v251 != v166 || v251 >= v166 + ((v165 - v166 + ((v165 - v166) < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0))
    {
      memmove(v251, v166, 32 * ((v165 - v166) / 32));
    }

    v255 = v315;
    v254 = v316;
    a3 = v317;
    if (v315 < v316)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a3 = sub_1BD5ED6C8(a3, v7, v8, v9, v10, v11, v12, v13);
    }

    v256 = v314;
    if (v314 > *(a3 + 16))
    {
      goto LABEL_142;
    }

    v257 = a3 + 16 * v313;
    *(v257 + 32) = v254;
    *(v257 + 40) = v255;
    v329 = a3;
    sub_1BD5ED63C(v256);
    v17 = v329;
    v114 = *(v329 + 16);
    v117 = v321;
    if (v114 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v17 = sub_1BD5ED6C8(v17, v7, v8, v9, v10, v11, v12, v13);
LABEL_131:
  v329 = v17;
  v303 = *(v17 + 2);
  if (v303 >= 2)
  {
    while (*v312)
    {
      v304 = *&v17[16 * v303];
      v305 = *&v17[16 * v303 + 24];
      v306 = v310;
      sub_1BD4F2168((*v312 + 32 * v304), (*v312 + 32 * *&v17[16 * v303 + 16]), (*v312 + 32 * v305), a3);
      v310 = v306;
      if (v306)
      {
        goto LABEL_139;
      }

      if (v305 < v304)
      {
        goto LABEL_155;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1BD5ED6C8(v17, v7, v8, v9, v10, v11, v12, v13);
      }

      if (v303 - 2 >= *(v17 + 2))
      {
        goto LABEL_156;
      }

      v307 = &v17[16 * v303];
      *v307 = v304;
      *(v307 + 1) = v305;
      v329 = v17;
      sub_1BD5ED63C(v303 - 1);
      v17 = v329;
      v303 = *(v329 + 16);
      if (v303 <= 1)
      {
        goto LABEL_139;
      }
    }

LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

LABEL_139:
  v17, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD4F2168(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v116 = &v105 - v9;
  v10 = a2 - a1 + 31;
  if (a2 - a1 >= 0)
  {
    v10 = a2 - a1;
  }

  v11 = v10 >> 5;
  v12 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 5;
  if (v11 >= v12 >> 5)
  {
    if (a4 != a2 || &a2[32 * v13] <= a4)
    {
      memmove(a4, a2, 32 * v13);
    }

    v15 = &a4[32 * v13];
    v14 = a4;
    if (a3 - a2 >= 32 && a2 > a1)
    {
      v108 = sub_1BE04B0F4();
      v58 = *(v108 - 8);
      v59 = *(v58 + 56);
      v106 = v58 + 56;
      v107 = v59;
      v111 = a1;
      v109 = a4;
LABEL_26:
      v110 = a2;
      v60 = a3 - 32;
      do
      {
        v61 = v60;
        v62 = v60 + 32;
        v63 = *(v15 - 3);
        v64 = *(v15 - 1);
        v66 = *(v110 - 3);
        v65 = *(v110 - 2);
        v67 = *(v110 - 1);
        v114 = *(v15 - 2);
        v115 = v64;
        v112 = v65;
        v113 = v67;
        v68 = v116;
        v107(v116, 1, 1, v108);
        sub_1BD0DDEBC();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v69 = sub_1BE0535E4();
        sub_1BD0DE53C(v68, &qword_1EBD450F0, &unk_1BE0B8510);
        v63, v70, v71, v72, v73, v74, v75, v76;
        v67, v77, v78, v79, v80, v81, v82, v83;
        v66, v84, v85, v86, v87, v88, v89, v90;
        v64, v91, v92, v93, v94, v95, v96, v97;
        if (v69 == -1)
        {
          v100 = v110;
          v101 = v111;
          v102 = v110 - 32;
          a3 = v61;
          if (v62 != v110)
          {
            v103 = *(v110 - 1);
            *v61 = *v102;
            *(v61 + 1) = v103;
          }

          v14 = v109;
          if (v15 <= v109 || (a2 = v100 - 32, v102 <= v101))
          {
            a2 = v100 - 32;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        v98 = v15 - 32;
        if (v62 != v15)
        {
          v99 = *(v15 - 1);
          *v61 = *v98;
          *(v61 + 1) = v99;
        }

        v60 = v61 - 32;
        v15 -= 32;
        v14 = v109;
      }

      while (v98 > v109);
      v15 = v98;
      a2 = v110;
    }
  }

  else
  {
    v14 = a4;
    if (a4 != a1 || &a1[32 * v11] <= a4)
    {
      memmove(a4, a1, 32 * v11);
    }

    v15 = &a4[32 * v11];
    if (a2 - a1 >= 32 && a2 < a3)
    {
      v108 = sub_1BE04B0F4();
      v16 = *(v108 - 8);
      v17 = *(v16 + 56);
      v106 = v16 + 56;
      v107 = v17;
      v110 = v15;
      while (1)
      {
        v111 = a1;
        v18 = *(a2 + 1);
        v19 = *(a2 + 3);
        v21 = *(v14 + 1);
        v20 = *(v14 + 2);
        v22 = *(v14 + 3);
        v114 = *(a2 + 2);
        v115 = v19;
        v112 = v20;
        v113 = v22;
        v23 = a2;
        v24 = v116;
        v107(v116, 1, 1, v108);
        sub_1BD0DDEBC();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v25 = sub_1BE0535E4();
        sub_1BD0DE53C(v24, &qword_1EBD450F0, &unk_1BE0B8510);
        v18, v26, v27, v28, v29, v30, v31, v32;
        v22, v33, v34, v35, v36, v37, v38, v39;
        v21, v40, v41, v42, v43, v44, v45, v46;
        v19, v47, v48, v49, v50, v51, v52, v53;
        if (v25 != -1)
        {
          break;
        }

        v54 = v23;
        a2 = v23 + 32;
        v55 = v111;
        if (v111 != v23)
        {
          goto LABEL_14;
        }

LABEL_15:
        a1 = v55 + 32;
        v15 = v110;
        if (v14 >= v110 || a2 >= a3)
        {
          goto LABEL_36;
        }
      }

      v54 = v14;
      v55 = v111;
      v56 = v111 == v14;
      v14 += 32;
      a2 = v23;
      if (v56)
      {
        goto LABEL_15;
      }

LABEL_14:
      v57 = *(v54 + 1);
      *v55 = *v54;
      *(v55 + 1) = v57;
      goto LABEL_15;
    }

LABEL_36:
    a2 = a1;
  }

LABEL_38:
  if (a2 != v14 || a2 >= &v14[(v15 - v14 + (v15 - v14 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(a2, v14, 32 * ((v15 - v14) / 32));
  }

  return 1;
}

unint64_t sub_1BD4F2614()
{
  result = qword_1EBD48998;
  if (!qword_1EBD48998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD489A0, &qword_1BE0DCB00);
    sub_1BD4F26A0();
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48998);
  }

  return result;
}

unint64_t sub_1BD4F26A0()
{
  result = qword_1EBD489A8;
  if (!qword_1EBD489A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD489B0, &qword_1BE0DCB08);
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD489A8);
  }

  return result;
}

unint64_t sub_1BD4F2764()
{
  result = qword_1EBD489C8;
  if (!qword_1EBD489C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD489C8);
  }

  return result;
}

unint64_t sub_1BD4F27B8()
{
  result = qword_1EBD489D8;
  if (!qword_1EBD489D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD489E0, &qword_1BE0DCB18);
    sub_1BD4F1064(&qword_1EBD48918, &qword_1EBD48810, &qword_1BE0DC950, sub_1BD4F083C);
    sub_1BD0DE4F4(&qword_1EBD48920, &qword_1EBD48800, &qword_1BE0DC940, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD489D8);
  }

  return result;
}

id PeerPaymentRecurringBubbleContentViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentRecurringBubbleContentViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentRecurringBubbleContentViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PeerPaymentRecurringBubbleContentViewProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PeerPaymentRecurringBubbleContentViewProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 sub_1BD4F2AAC@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A10, &qword_1BE0DCC08);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v26 - v6;
  v8 = *(v2 + 8);
  if (v8 && (v9 = [v8 emoji]) != 0)
  {
    v10 = v9;
    sub_1BE052434();
    v12 = v11;

    v12, v13, v14, v15, v16, v17, v18, v19;
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  *v7 = sub_1BE04F504();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A18, &qword_1BE0DCC10);
  sub_1BD4F2C5C(v2, v20 ^ 1, &v7[*(v21 + 44)]);
  if (v20)
  {
    sub_1BE051CD4();
  }

  else
  {
    sub_1BE051CE4();
  }

  sub_1BE04EE54();
  sub_1BD0DE204(v7, a1, &qword_1EBD48A10, &qword_1BE0DCC08);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A20, &unk_1BE0DCC18) + 36);
  v23 = v26[5];
  *(v22 + 64) = v26[4];
  *(v22 + 80) = v23;
  *(v22 + 96) = v26[6];
  v24 = v26[1];
  *v22 = v26[0];
  *(v22 + 16) = v24;
  result = v26[3];
  *(v22 + 32) = v26[2];
  *(v22 + 48) = result;
  return result;
}

id sub_1BD4F2C5C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v117 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v101 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A28, &qword_1BE0DCC28);
  MEMORY[0x1EEE9AC00](v112);
  v8 = &v101 - v7;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A30, &qword_1BE0DCC30);
  v9 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A38, &qword_1BE0DCC38);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v101 - v18;
  v20 = *(a1 + 8);
  if (v20 && (v21 = [*(a1 + 8) emoji]) != 0)
  {
    v106 = v9;
    v107 = v19;
    v108 = v15;
    v110 = a1;
    v22 = v21;
    v23 = sub_1BE052434();
    v25 = v24;

    v111 = [v20 color];
    *&v128 = v23;
    *(&v128 + 1) = v25;
    sub_1BD0DDEBC();
    v105 = v25;
    sub_1BE048C84();
    v26 = sub_1BE0506C4();
    v28 = v27;
    v30 = v29;
    v109 = v31;
    v32 = type metadata accessor for PeerPaymentRecurringBubbleContentView(0);
    v33 = sub_1BE050354();
    (*(*(v33 - 8) + 56))(v6, 1, 1, v33);
    v34 = sub_1BE0503B4();
    sub_1BD0DE53C(v6, &qword_1EBD49130, &qword_1BE0C7180);
    v35 = v109;
    v36 = sub_1BE0505F4();
    v103 = v37;
    v104 = v36;
    v39 = v38;
    v102 = v40;
    v34, v37, v38, v40, v41, v42, v43, v44;
    sub_1BD0DDF10(v26, v28, (v30 & 1), v45, v46, v47, v48, v49);
    v35, v50, v51, v52, v53, v54, v55, v56;
    v57 = v32;
    v58 = v110;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v59 = v39 & 1;
    LOBYTE(v124[0]) = v59;
    result = PKPeerPaymentMessageColorFromSemanticColor(v111);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v105, v61, v62, v63, v64, v65, v66, v67;
    v111 = sub_1BE0511C4();
    v68 = sub_1BE0501D4();
    v127[0] = *v129;
    v127[1] = *&v129[2];
    v126 = v128;
    v69 = v58;
    v70 = *(v58 + *(v57 + 36));
    v71 = &v8[*(v112 + 36)];
    v72 = *(sub_1BE04EDE4() + 20);
    v73 = *MEMORY[0x1E697F468];
    v74 = sub_1BE04F684();
    (*(*(v74 - 8) + 104))(&v71[v72], v73, v74);
    *v71 = v70;
    *(v71 + 1) = v70;
    *&v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    v75 = v103;
    *v8 = v104;
    *(v8 + 1) = v75;
    v8[16] = v59;
    *(v8 + 3) = v102;
    v76 = v127[0];
    *(v8 + 2) = v126;
    *(v8 + 3) = v76;
    *(v8 + 4) = v127[1];
    *(v8 + 10) = v111;
    v8[88] = v68;
    LOBYTE(v73) = sub_1BE050224();
    sub_1BE04E1F4();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = v114;
    sub_1BD0DE204(v8, v114, &qword_1EBD48A28, &qword_1BE0DCC28);
    v86 = v115;
    v87 = v85 + *(v115 + 36);
    *v87 = v73;
    *(v87 + 8) = v78;
    *(v87 + 16) = v80;
    *(v87 + 24) = v82;
    *(v87 + 32) = v84;
    *(v87 + 40) = 0;
    v88 = v85;
    v89 = v113;
    sub_1BD0DE204(v88, v113, &qword_1EBD48A30, &qword_1BE0DCC30);
    v19 = v107;
    sub_1BD0DE204(v89, v107, &qword_1EBD48A30, &qword_1BE0DCC30);
    (*(v106 + 56))(v19, 0, 1, v86);
    v15 = v108;
    a1 = v69;
  }

  else
  {
    (*(v9 + 56))(v19, 1, 1, v115, v17);
  }

  v90 = v19;
  if (v116)
  {
    v91 = sub_1BE04F7C4();
  }

  else
  {
    v91 = sub_1BE04F7B4();
  }

  v92 = v91;
  v131 = 0;
  sub_1BD4F344C(a1, &v128);
  v122 = *&v129[6];
  v123[0] = *&v129[8];
  *(v123 + 9) = *(&v129[9] + 1);
  v118 = v128;
  v119 = *v129;
  v120 = *&v129[2];
  v121 = *&v129[4];
  v124[0] = v128;
  v124[1] = *v129;
  v124[2] = *&v129[2];
  v124[3] = *&v129[4];
  v124[4] = *&v129[6];
  v125[0] = *&v129[8];
  *(v125 + 9) = *(&v129[9] + 1);
  sub_1BD0DE19C(&v118, &v126, &qword_1EBD48A40, &qword_1BE0DCC40);
  sub_1BD0DE53C(v124, &qword_1EBD48A40, &qword_1BE0DCC40);
  *&v130[55] = v121;
  *&v130[71] = v122;
  *&v130[87] = v123[0];
  *&v130[96] = *(v123 + 9);
  *&v130[7] = v118;
  *&v130[23] = v119;
  *&v130[39] = v120;
  v93 = v131;
  sub_1BD0DE19C(v90, v15, &qword_1EBD48A38, &qword_1BE0DCC38);
  v94 = v117;
  sub_1BD0DE19C(v15, v117, &qword_1EBD48A38, &qword_1BE0DCC38);
  v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A48, &qword_1BE0DCC48) + 48);
  *(&v127[3] + 1) = *&v130[48];
  *(&v127[4] + 1) = *&v130[64];
  *(&v127[5] + 1) = *&v130[80];
  *(&v127[6] + 1) = *&v130[96];
  *(v127 + 1) = *v130;
  v96 = v94 + v95;
  v126 = v92;
  LOBYTE(v127[0]) = v93;
  *(&v127[1] + 1) = *&v130[16];
  *(&v127[2] + 1) = *&v130[32];
  *(v96 + 128) = v130[111];
  v97 = v127[4];
  *(v96 + 64) = v127[3];
  *(v96 + 80) = v97;
  v98 = v127[2];
  *(v96 + 32) = v127[1];
  *(v96 + 48) = v98;
  v99 = v127[0];
  *v96 = v126;
  *(v96 + 16) = v99;
  v100 = v127[6];
  *(v96 + 96) = v127[5];
  *(v96 + 112) = v100;
  sub_1BD0DE19C(&v126, &v128, &qword_1EBD48A50, &unk_1BE0DCC50);
  sub_1BD0DE53C(v90, &qword_1EBD48A38, &qword_1BE0DCC38);
  *(&v129[6] + 1) = *&v130[48];
  *(&v129[8] + 1) = *&v130[64];
  *(&v129[10] + 1) = *&v130[80];
  *(&v129[12] + 1) = *&v130[96];
  *(v129 + 1) = *v130;
  *(&v129[2] + 1) = *&v130[16];
  v128 = v92;
  LOBYTE(v129[0]) = v93;
  *(&v129[4] + 1) = *&v130[32];
  sub_1BD0DE53C(&v128, &qword_1EBD48A50, &unk_1BE0DCC50);
  return sub_1BD0DE53C(v15, &qword_1EBD48A38, &qword_1BE0DCC38);
}