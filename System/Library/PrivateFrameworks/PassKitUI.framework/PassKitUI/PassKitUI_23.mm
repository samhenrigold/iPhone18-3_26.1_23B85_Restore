uint64_t sub_1BD29A4C4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 104);
  if (v9)
  {
    v10 = *(*(v8 + 16) + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_pass);
    if (v10)
    {
      v11 = v9;
      v12 = [v10 primaryAccountIdentifier];
      sub_1BE052434();

      sub_1BE049864();
      v13 = sub_1BE049854();
      sub_1BE049844();
      v13, v14, v15, v16, v17, v18, v19, v20;
      sub_1BE049924();
      sub_1BE049914();
      sub_1BE049EE4();
      v21 = swift_task_alloc();
      *(v8 + 120) = v21;
      *v21 = v8;
      v21[1] = sub_1BD29A6B8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEDC1CF0]();
  }

  else
  {
    v22 = *(v8 + 16);
    *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;
    v23 = (v22 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
    v24 = *(v22 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
    v25 = *(v22 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState + 8);
    v26 = *(v22 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState + 16);
    v23[1] = 0;
    v23[2] = 0;
    *v23 = 0;
    sub_1BD29C438(v24, v25, v26, v27, v28, v29, v30, v31);
    Strong = swift_unknownObjectWeakLoadStrong();
    v33 = *(v8 + 104);
    if (Strong)
    {
      [Strong didReloadBankConnectAccountCredentials];
      swift_unknownObjectRelease();
    }

    v34 = *(v8 + 8);

    return v34();
  }
}

uint64_t sub_1BD29A6B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {

    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_1BD29AAC4;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_1BD29A7E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD29A7E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 136);
  v10 = *(v8 + 104);
  v11 = *(v8 + 64);
  v12 = *(v8 + 48);
  v13 = *(v8 + 56);
  v14 = *(v8 + 16);
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE048C84();
  v15 = [v10 account];
  v16 = [v10 consentStatus];
  v17 = (v14 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
  v19 = *(v14 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
  v18 = *(v14 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState + 8);
  v20 = *(v14 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState + 16);
  *v17 = v9;
  v17[1] = v15;
  v17[2] = v16;
  sub_1BD29C438(v19, v18, v20, v21, v22, v23, v24, v25);
  sub_1BD29C478(v9);

  v9, v26, v27, v28, v29, v30, v31, v32;
  (*(v13 + 8))(v11, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  v34 = *(v8 + 104);
  if (Strong)
  {
    [Strong didReloadBankConnectAccountCredentials];
    swift_unknownObjectRelease();
  }

  v35 = *(v8 + 8);

  return v35();
}

uint64_t sub_1BD29A93C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 112);
  sub_1BE04D114();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1BD026000, v11, v12, "Unable to obtain account payment information: %@", v13, 0xCu);
    sub_1BD1E236C(v14);
    MEMORY[0x1BFB45F20](v14, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 32) + 8))(*(v8 + 40), *(v8 + 24));

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD29AAC4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 104);
  v10 = *(v8 + 64);
  v11 = *(v8 + 48);
  v12 = *(v8 + 56);
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;

  (*(v12 + 8))(v10, v11);
  v13 = *(v8 + 128);
  sub_1BE04D114();
  v14 = v13;
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C34();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v13;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1BD026000, v15, v16, "Unable to obtain account payment information: %@", v17, 0xCu);
    sub_1BD1E236C(v18);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 32) + 8))(*(v8 + 40), *(v8 + 24));

  v21 = *(v8 + 8);

  return v21();
}

uint64_t sub_1BD29ADE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1BE0528A4();
  v2[4] = sub_1BE052894();
  v4 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD29AE7C, v4, v3);
}

uint64_t sub_1BD29AE7C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 24);
  v10 = *(v8 + 16);
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40) = _Block_copy(v10);
  v11 = v9;
  v12 = swift_task_alloc();
  *(v8 + 48) = v12;
  *v12 = v8;
  v12[1] = sub_1BD29AF2C;

  return PKPassDetailAccountCredentialsSectionController.fetchPaymentInformation()();
}

uint64_t sub_1BD29AF2C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

Swift::Void __swiftcall PKPassDetailAccountCredentialsSectionController.update(pass:)(PKPaymentPass pass)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_pass;
  v8 = *&v1[OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_pass];
  if (v8)
  {
    sub_1BD0E5E8C(0, &unk_1EBD40340, 0x1E69B8D08);
    v9 = pass.super.super.super.super.isa;
    v10 = v8;
    v11 = sub_1BE053074();

    if (v11)
    {
      return;
    }

    v12 = *&v2[v7];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v7] = pass;

  v13 = sub_1BE0528D4();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_1BE0528A4();
  v14 = pass.super.super.super.super.isa;
  v15 = v2;
  v16 = sub_1BE052894();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v19 = sub_1BD122C00(0, 0, v6, &unk_1BE0C7E30, v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
}

uint64_t sub_1BD29B22C()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD16DB04;

  return PKPassDetailAccountCredentialsSectionController.fetchPaymentInformation()();
}

id PKPassDetailAccountCredentialsSectionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKPassDetailAccountCredentialsSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PKPassDetailAccountCredentialsSectionController.tableView(_:cellForRowAt:sectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 != 0xD000000000000019 || 0x80000001BE117570 != a4) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  sub_1BD29B57C();
  v7 = v6;
  v8 = sub_1BE052404();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16 = [v4 infoCellWithPrimaryText:v8 detailText:0 cellStyle:0 forTableView:a1];

  if (v16)
  {
    [v16 setAccessoryType_];
  }

  v17 = *MEMORY[0x1E69B93B8];
  v18 = v16;
  PKAccessibilityIDSet(v18, v17);

  return v16;
}

void sub_1BD29B57C()
{
  v2 = sub_1BE049D04();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v15 = &v28 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
  if (v16)
  {
    sub_1BE048C84();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v29 = v16[2];
  if (v29)
  {
    v17 = 0;
    v28 = v3 + 16;
    v18 = *MEMORY[0x1E6967BD0];
    v1 = (v3 + 8);
    while (v17 < v16[2])
    {
      (*(v3 + 16))(v15, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);
      (*(v3 + 32))(v5, v15, v2);
      if ((*(v3 + 88))(v5, v2) == v18)
      {
        goto LABEL_11;
      }

      ++v17;
      (*v1)(v5, v2);
      if (v29 == v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v16, v7, v8, v9, v10, v11, v12, v13;
    v26 = sub_1BE052404();
    v2 = PKLocalizedBankConnectString(v26);

    if (v2)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    v16, v19, v20, v21, v22, v23, v24, v25;
    (*v1)(v5, v2);
    v27 = sub_1BE052404();
    v2 = PKLocalizedBankConnectString(v27);

    if (v2)
    {
LABEL_12:
      sub_1BE052434();

      return;
    }
  }

  __break(1u);
}

Swift::Int __swiftcall PKPassDetailAccountCredentialsSectionController.tableView(_:numberOfRowsInSectionIdentifier:)(UITableView *_, Swift::String numberOfRowsInSectionIdentifier)
{
  if (numberOfRowsInSectionIdentifier._countAndFlagsBits == 0xD000000000000019 && 0x80000001BE117570 == numberOfRowsInSectionIdentifier._object)
  {
    return 1;
  }

  else
  {
    return sub_1BE053B84() & 1;
  }
}

NSObject *sub_1BD29BA3C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051F54();
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    if (a2)
    {
      v17 = a2;
      sub_1BE04D114();
      v18 = a2;
      v19 = sub_1BE04D204();
      v20 = sub_1BE052C34();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = a2;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_1BD026000, v19, v20, "Policy evaluation for showing account credentials has failed: %@", v21, 0xCu);
        sub_1BD1E236C(v22);
        MEMORY[0x1BFB45F20](v22, -1, -1);
        MEMORY[0x1BFB45F20](v21, -1, -1);
        v25 = v19;
      }

      else
      {
        v25 = v16;
        v16 = v19;
      }

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v26 = sub_1BE052D54();
      v27 = swift_allocObject();
      *(v27 + 16) = v16;
      aBlock[4] = sub_1BD29D3F0;
      v40 = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_28_0;
      v28 = _Block_copy(aBlock);
      v29 = v40;
      v30 = v16;
      v29, v31, v32, v33, v34, v35, v36, v37;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v14, v10, v28);
      _Block_release(v28);

      (*(v38 + 8))(v10, v8);
      return (*(v12 + 8))(v14, v11);
    }
  }

  return result;
}

void *sub_1BD29BEBC(uint64_t a1)
{
  v2 = sub_1BE049D04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(a1 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      sub_1BE048C84();
      v17 = v15[2];
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      v17 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v17)
      {
LABEL_4:
        v51 = a1;
        v52 = v14;
        v54 = v16;
        sub_1BE0538E4();
        v19 = *(v3 + 16);
        v18 = v3 + 16;
        v53 = v19;
        v20 = *(v18 + 64);
        v50 = v15;
        v21 = v15 + ((v20 + 32) & ~v20);
        v22 = *(v18 + 56);
        do
        {
          v53(v5, v21, v2);
          sub_1BE049CF4();
          (*(v18 - 8))(v5, v2);
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
          v21 += v22;
          --v17;
        }

        while (v17);
        v50, v23, v24, v25, v26, v27, v28, v29;
        v30 = v54;
        v14 = v52;
        goto LABEL_9;
      }
    }

    v15, v7, v8, v9, v10, v11, v12, v13;
    v30 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1BD0E5E8C(0, &qword_1EBD3CE98, 0x1E6967D70);
    v31 = sub_1BE052724();
    v30, v32, v33, v34, v35, v36, v37, v38;
    sub_1BD29B57C();
    v40 = v39;
    v41 = sub_1BE052404();
    v40, v42, v43, v44, v45, v46, v47, v48;
    [v14 didEvaluatePolicyToOpenBankConnectAccountCredentials:v31 accountCredentialsTitle:v41];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *PKPassDetailAccountCredentialsSectionController.accountDidChange(to:)(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
  result = *(v1 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
  if (result)
  {
    v5 = v3[2];
    v6 = sub_1BE048C84();
    if (a1)
    {
      v14 = *v3;
      v15 = v3[1];
      v16 = v3[2];
      *v3 = v6;
      v3[1] = a1;
      v3[2] = v5;
      v17 = a1;
      v23 = v14;
      v24 = v15;
      v25 = v16;
    }

    else
    {
      v6, v7, v8, v9, v10, v11, v12, v13;
      v23 = *v3;
      v24 = v3[1];
      v25 = v3[2];
      v3[1] = 0;
      v3[2] = 0;
      *v3 = 0;
    }

    sub_1BD29C438(v23, v24, v25, v18, v19, v20, v21, v22);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result didReloadBankConnectAccountCredentials];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *PKPassDetailAccountCredentialsSectionController.consentStatusDidChange(to:)(void *result)
{
  v2 = v1 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState;
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState))
  {
    if (*(v2 + 16) != result)
    {
      *(v2 + 16) = result;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result didReloadBankConnectAccountCredentials];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1BD29C438(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a1)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_1BD29C478(uint64_t a1)
{
  v2 = sub_1BE049D04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v60 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v11 = v13;
    LODWORD(v62) = *MEMORY[0x1E6967BD0];
    v58 = *MEMORY[0x1E6967BE0];
    v55 = *MEMORY[0x1E6967BD8];
    v14 = (v12 - 8);
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v61 = *(v12 + 56);
    (v13)(v9, v15, v2, v7);
    while (1)
    {
      v11(v5, v9, v2);
      v20 = (*(v12 + 72))(v5, v2);
      if (v20 == v62)
      {
        break;
      }

      if (v20 == v58)
      {
        v16 = &v65 + 4;
        goto LABEL_4;
      }

      if (v20 != v55)
      {
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1BE053834();
        MEMORY[0x1BFB3F610](0xD00000000000001DLL, 0x80000001BE1211C0);
        sub_1BE053974();
        sub_1BE053994();
        __break(1u);
        return;
      }

      v17 = &v66;
LABEL_5:
      *(v17 - 64) = 1;
      v18 = *v14;
      (*v14)(v9, v2);
      v18(v5, v2);
      v15 += v61;
      if (!--v10)
      {
        goto LABEL_13;
      }

      (v11)(v9, v15, v2, v19);
    }

    v16 = &v67;
LABEL_4:
    *(v16 - 64) = 1;
    v17 = &v67 + 4;
    goto LABEL_5;
  }

  v57 = 0;
  v56 = 0;
  v59 = 0;
  v60 = 0;
LABEL_13:
  v62 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA740;
  v22 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v23 = sub_1BE052434();
  v24 = MEMORY[0x1E69BA680];
  *(inited + 40) = v23;
  *(inited + 48) = v25;
  v26 = *v24;
  *(inited + 56) = *v24;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v27;
  v28 = *MEMORY[0x1E69BA2A0];
  if (v60)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v60)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  *(inited + 80) = v28;
  *(inited + 88) = v29;
  v31 = *MEMORY[0x1E69BB168];
  *(inited + 96) = v30;
  *(inited + 104) = v31;
  if (v59)
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (v59)
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  *(inited + 112) = v32;
  *(inited + 120) = v33;
  v34 = *MEMORY[0x1E69BB2A0];
  if (v56)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v56)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  *(inited + 128) = v34;
  *(inited + 136) = v35;
  v37 = *MEMORY[0x1E69BA8D8];
  *(inited + 144) = v36;
  *(inited + 152) = v37;
  if (v57)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v57)
  {
    v39 = 0xE400000000000000;
  }

  else
  {
    v39 = 0xE500000000000000;
  }

  v61 = objc_opt_self();
  *(inited + 160) = v38;
  *(inited + 168) = v39;
  v40 = v22;
  v41 = v26;
  v42 = v28;
  v43 = v31;
  v44 = v34;
  v45 = v37;
  v46 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD29D3F8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v47 = sub_1BE052224();
  v46, v48, v49, v50, v51, v52, v53, v54;
  [v61 subject:v62 sendEvent:v47];
}

uint64_t sub_1BD29C9B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD29B22C();
}

void _s9PassKitUI47PKPassDetailAccountCredentialsSectionControllerC9tableView_14didSelectRowAt17sectionIdentifierySo07UITableK0C_10Foundation9IndexPathVSStF_0(void *a1, uint64_t a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v77 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v71 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v71 - v15;
  v76 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  if (![v76 canEvaluatePolicy:1025 error:0])
  {
    sub_1BE04D114();
    v67 = sub_1BE04D204();
    v68 = sub_1BE052C34();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1BD026000, v67, v68, "Can't evaluate policy to show account credentials", v69, 2u);
      MEMORY[0x1BFB45F20](v69, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_9;
  }

  v71[0] = v2;
  v71[1] = a2;
  v72 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8, &unk_1BE0BD960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v78[0] = 2;
  sub_1BE0537C4();
  v18 = *MEMORY[0x1E69B8040];
  v73 = *(v77 + 104);
  v73(v16, v18, v9);
  v19 = PKPassKitBundle();
  if (!v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v19;
  v21 = sub_1BE04B6F4();
  v23 = v22;

  v24 = *(v77 + 8);
  v77 += 8;
  v74 = v24;
  v24(v16, v9);
  *(inited + 96) = MEMORY[0x1E69E6158];
  *(inited + 72) = v21;
  *(inited + 80) = v23;
  v78[0] = 1037;
  sub_1BE0537C4();
  v25 = v73;
  v73(v13, v18, v9);
  v26 = PKPassKitBundle();
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = v26;
  v28 = sub_1BE04B6F4();
  v30 = v29;

  v74(v13, v9);
  *(inited + 168) = MEMORY[0x1E69E6158];
  *(inited + 144) = v28;
  *(inited + 152) = v30;
  v78[0] = 1031;
  sub_1BE0537C4();
  v31 = v75;
  v25(v75, v18, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BE0B69E0;
  v33 = PKDeviceName();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1BE052434();
    v37 = v36;

    v38 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1BD110550();
    *(v32 + 32) = v35;
    *(v32 + 40) = v37;
    v39 = sub_1BE04B714();
    v41 = v40;
    v32, v40, v42, v43, v44, v45, v46, v47;
    v74(v31, v9);
    *(inited + 240) = v38;
    *(inited + 216) = v39;
    *(inited + 224) = v41;
    v48 = sub_1BD1AB16C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD403B0, &unk_1BE0D5150);
    swift_arrayDestroy();
    v49 = sub_1BE052224();
    v48, v50, v51, v52, v53, v54, v55, v56;
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v78[4] = sub_1BD29D3E8;
    v79 = v57;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 1107296256;
    v78[2] = sub_1BD1AA864;
    v78[3] = &block_descriptor_44;
    v58 = _Block_copy(v78);
    v79, v59, v60, v61, v62, v63, v64, v65;
    v66 = v76;
    [v76 evaluatePolicy:1025 options:v49 reply:v58];
    _Block_release(v58);

    a1 = v72;
LABEL_9:
    v70 = sub_1BE04B3C4();
    [a1 deselectRowAtIndexPath:v70 animated:1];

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI47PKPassDetailAccountCredentialsSectionControllerC15ConnectionState33_A4B27A7D513261998825FF2A94BF63CELLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD29D158(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD29D1A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

void *sub_1BD29D200(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1BD29D230()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD29ADE4(v2, v3);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD29D31C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD992C1C(a1, v4, v5, v6);
}

uint64_t sub_1BD29D3F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD29D45C()
{
  result = qword_1EBD403B8[0];
  if (!qword_1EBD403B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBD403B8);
  }

  return result;
}

uint64_t sub_1BD29D4B0()
{
  v1 = sub_1BE051AD4();
  v31 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528, &unk_1BE0CE330);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450, &qword_1BE0D7250);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v30 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530, &unk_1BE0C80F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  if ((*(v0 + 17) & 1) == 0 && (*(v0 + 16) & 1) == 0)
  {
    sub_1BD70A2C8(v9);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if ((*(*(v21 - 8) + 48))(v9, 1, v21) == 1)
    {
      sub_1BD0DE53C(v9, &qword_1EBD40450, &qword_1BE0D7250);
      v22 = 1;
    }

    else
    {
      MEMORY[0x1BFB3E970](v21);
      sub_1BD0DE53C(v9, &qword_1EBD40520, &qword_1BE0D70B0);
      v22 = 0;
    }

    v23 = v31;
    v24 = *(v31 + 56);
    v24(v18, v22, 1, v1);
    (*(v23 + 104))(v15, *MEMORY[0x1E697D710], v1);
    v24(v15, 0, 1, v1);
    v25 = *(v4 + 48);
    sub_1BD0DE19C(v18, v6, &qword_1EBD40530, &unk_1BE0C80F0);
    sub_1BD0DE19C(v15, &v6[v25], &qword_1EBD40530, &unk_1BE0C80F0);
    v26 = *(v23 + 48);
    if (v26(v6, 1, v1) == 1)
    {
      sub_1BD0DE53C(v15, &qword_1EBD40530, &unk_1BE0C80F0);
      sub_1BD0DE53C(v18, &qword_1EBD40530, &unk_1BE0C80F0);
      if (v26(&v6[v25], 1, v1) == 1)
      {
        sub_1BD0DE53C(v6, &qword_1EBD40530, &unk_1BE0C80F0);
        v19 = 0;
        return v19 & 1;
      }
    }

    else
    {
      sub_1BD0DE19C(v6, v12, &qword_1EBD40530, &unk_1BE0C80F0);
      if (v26(&v6[v25], 1, v1) != 1)
      {
        v27 = v31;
        (*(v31 + 32))(v3, &v6[v25], v1);
        sub_1BD2A27E0(&qword_1EBD40538, MEMORY[0x1E697D718], MEMORY[0x1E697D720]);
        v28 = sub_1BE052334();
        v29 = *(v27 + 8);
        v29(v3, v1);
        sub_1BD0DE53C(v15, &qword_1EBD40530, &unk_1BE0C80F0);
        sub_1BD0DE53C(v18, &qword_1EBD40530, &unk_1BE0C80F0);
        v29(v12, v1);
        sub_1BD0DE53C(v6, &qword_1EBD40530, &unk_1BE0C80F0);
        v19 = v28 ^ 1;
        return v19 & 1;
      }

      sub_1BD0DE53C(v15, &qword_1EBD40530, &unk_1BE0C80F0);
      sub_1BD0DE53C(v18, &qword_1EBD40530, &unk_1BE0C80F0);
      (*(v31 + 8))(v12, v1);
    }

    sub_1BD0DE53C(v6, &qword_1EBD40528, &unk_1BE0CE330);
    v19 = 1;
    return v19 & 1;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1BD29DA24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE051AD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528, &unk_1BE0CE330);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450, &qword_1BE0D7250);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v47 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530, &unk_1BE0C80F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  if (*(v2 + 16) != 1)
  {
    goto LABEL_11;
  }

  v47 = v7;
  v48 = v19;
  v49 = v5;
  v22 = (v2 + *(a1 + 68));
  v23 = *v22;
  v24 = *(v22 + 2);
  v52 = v23;
  v53 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  v26 = v50;
  v25 = v51;
  v51, v27, v28, v29, v30, v31, v32, v33;
  v34 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v34 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    sub_1BD70A2C8(v13);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if ((*(*(v35 - 8) + 48))(v13, 1, v35) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD40450, &qword_1BE0D7250);
      v36 = 1;
    }

    else
    {
      MEMORY[0x1BFB3E970](v35);
      sub_1BD0DE53C(v13, &qword_1EBD40520, &qword_1BE0D70B0);
      v36 = 0;
    }

    v37 = v49;
    v38 = *(v49 + 56);
    v38(v21, v36, 1, v4);
    (*(v37 + 104))(v17, *MEMORY[0x1E697D708], v4);
    v38(v17, 0, 1, v4);
    v39 = *(v8 + 48);
    sub_1BD0DE19C(v21, v10, &qword_1EBD40530, &unk_1BE0C80F0);
    sub_1BD0DE19C(v17, &v10[v39], &qword_1EBD40530, &unk_1BE0C80F0);
    v40 = *(v37 + 48);
    if (v40(v10, 1, v4) == 1)
    {
      sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
      sub_1BD0DE53C(v21, &qword_1EBD40530, &unk_1BE0C80F0);
      if (v40(&v10[v39], 1, v4) == 1)
      {
        sub_1BD0DE53C(v10, &qword_1EBD40530, &unk_1BE0C80F0);
LABEL_11:
        LOBYTE(v34) = 0;
        return v34 & 1;
      }
    }

    else
    {
      v41 = v48;
      sub_1BD0DE19C(v10, v48, &qword_1EBD40530, &unk_1BE0C80F0);
      if (v40(&v10[v39], 1, v4) != 1)
      {
        v42 = v47;
        (*(v37 + 32))(v47, &v10[v39], v4);
        sub_1BD2A27E0(&qword_1EBD40538, MEMORY[0x1E697D718], MEMORY[0x1E697D720]);
        v43 = v41;
        v44 = sub_1BE052334();
        v45 = *(v37 + 8);
        v45(v42, v4);
        sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
        sub_1BD0DE53C(v21, &qword_1EBD40530, &unk_1BE0C80F0);
        v45(v43, v4);
        sub_1BD0DE53C(v10, &qword_1EBD40530, &unk_1BE0C80F0);
        LOBYTE(v34) = v44 ^ 1;
        return v34 & 1;
      }

      sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
      sub_1BD0DE53C(v21, &qword_1EBD40530, &unk_1BE0C80F0);
      (*(v37 + 8))(v41, v4);
    }

    sub_1BD0DE53C(v10, &qword_1EBD40528, &unk_1BE0CE330);
    LOBYTE(v34) = 1;
  }

  return v34 & 1;
}

uint64_t sub_1BD29DFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v33 = a4;
  v21 = type metadata accessor for ContactFormItemRow(0, a16, a17, a4);
  v22 = v21[16];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v21[17];
  sub_1BE051694();
  *v23 = v38;
  *(v23 + 16) = v39;
  v24 = a9 + v21[18];
  sub_1BE051694();
  *v24 = v38;
  *(v24 + 16) = v39;
  v25 = a9 + v21[19];
  sub_1BE051694();
  *v25 = v38;
  *(v25 + 8) = *(&v38 + 1);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = v33;
  *(a9 + 18) = a7;
  v26 = v21[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v26, a10, AssociatedTypeWitness);
  v28 = v21[20];
  sub_1BE0534B4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v29 = sub_1BE04E264();
  result = (*(*(v29 - 8) + 32))(a9 + v28, a11, v29);
  v31 = (a9 + v21[14]);
  *v31 = a12;
  v31[1] = a13;
  v32 = (a9 + v21[15]);
  *v32 = a14;
  v32[1] = a15;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  return result;
}

uint64_t sub_1BD29E2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v121 = *(a1 - 8);
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v120 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1BE04FF64();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40460, &qword_1BE0C8070);
  v7 = *(a1 + 16);
  v124 = *(a1 + 24);
  v8 = a1;
  v96 = a1;
  swift_getAssociatedTypeWitness();
  v9 = sub_1BE0534B4();
  v10 = sub_1BD2A28D8(&qword_1EBD40468, &qword_1EBD40460, &qword_1BE0C8070, sub_1BD2A1FE8);
  v11 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  *&v143 = v6;
  *(&v143 + 1) = v9;
  v144 = v10;
  v145 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C0, &qword_1BE0C80A0);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C8, &qword_1BE0C80A8);
  swift_getTupleTypeMetadata2();
  v98 = sub_1BE051E34();
  v97 = swift_getWitnessTable();
  v13 = sub_1BE051854();
  v112 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v91 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404D0, &unk_1BE0C80B0);
  v103 = v13;
  v15 = sub_1BE04EBD4();
  v110 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v91 - v16;
  v17 = swift_getWitnessTable();
  v99 = v17;
  v18 = sub_1BD0DE4F4(&qword_1EBD404D8, &qword_1EBD404D0, &unk_1BE0C80B0, MEMORY[0x1E697F940]);
  v141 = v17;
  v142 = v18;
  v114 = MEMORY[0x1E697E858];
  v100 = swift_getWitnessTable();
  *&v143 = v15;
  *(&v143 + 1) = v100;
  v106 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v107 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v93 = &v91 - v19;
  sub_1BE0500D4();
  v105 = sub_1BE04EBD4();
  v109 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v95 = &v91 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60, &qword_1BE0C3580);
  v111 = sub_1BE04EBD4();
  v115 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v101 = &v91 - v21;
  v22 = sub_1BE04EBD4();
  v116 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v113 = &v91 - v25;
  v26 = *(v2 + 32);
  v27 = *(v2 + 40);
  v28 = *(v2 + 48);
  v29 = (v2 + *(v8 + 68));
  v30 = *v29;
  v31 = *(v29 + 2);
  v32 = *(v2 + 24);
  v33 = v2;
  v143 = v30;
  v144 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  v34 = v140;
  LOBYTE(v26) = sub_1BD53ED28(v139, v140, v32, v26, v27, v28);
  v34, v35, v36, v37, v38, v39, v40, v41;
  sub_1BE04F7C4();
  v42 = v11;
  v92 = v11;
  v129 = v11;
  v43 = v124;
  v130 = v124;
  v131 = v33;
  v132 = v26 & 1;
  v44 = v94;
  sub_1BE051844();
  v125 = v42;
  v126 = v43;
  v127 = v33;
  v128 = v26 & 1;
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404E0, &qword_1BE0C80C8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404E8, &qword_1BE0C80D0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404F0, &qword_1BE0C80D8);
  v47 = sub_1BD2A2304();
  v48 = sub_1BD2A23EC();
  *&v143 = v45;
  *(&v143 + 1) = v46;
  v144 = v47;
  v145 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v104;
  v50 = v103;
  sub_1BE050814();
  (*(v112 + 8))(v44, v50);
  v51 = v117;
  sub_1BE04FF44();
  v52 = v93;
  v53 = v100;
  sub_1BE050D14();
  (*(v118 + 8))(v51, v119);
  (*(v110 + 8))(v49, v15);
  sub_1BE052434();
  v55 = v54;
  *&v143 = v15;
  *(&v143 + 1) = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v95;
  v58 = OpaqueTypeMetadata2;
  sub_1BE050DE4();
  v55, v59, v60, v61, v62, v63, v64, v65;
  (*(v107 + 8))(v52, v58);
  LOBYTE(v143) = *(v33 + 16);
  v66 = sub_1BD2A27E0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v137 = OpaqueTypeConformance2;
  v138 = v66;
  v67 = v105;
  v68 = swift_getWitnessTable();
  v69 = v101;
  sub_1BE0510E4();
  (*(v109 + 8))(v57, v67);
  v70 = v121;
  v71 = v120;
  v72 = v96;
  (*(v121 + 16))(v120, v33, v96);
  v73 = v70;
  v74 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v75 = swift_allocObject();
  v76 = v124;
  *(v75 + 2) = v92;
  *(v75 + 3) = v76;
  (*(v73 + 32))(&v75[v74], v71, v72);
  v77 = sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
  v135 = v68;
  v136 = v77;
  v78 = v111;
  v79 = swift_getWitnessTable();
  v80 = v108;
  sub_1BE051054();
  v75, v81, v82, v83, v84, v85, v86, v87;
  (*(v115 + 8))(v69, v78);
  v133 = v79;
  v134 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  v88 = v113;
  sub_1BD147308();
  v89 = *(v116 + 8);
  v89(v80, v22);
  sub_1BD147308();
  return (v89)(v88, v22);
}

uint64_t sub_1BD29EFEC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a4;
  LODWORD(v80) = a2;
  v87 = a5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40540, &unk_1BE0DC3A0);
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v79 = &v74 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404C8, &qword_1BE0C80A8);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40460, &qword_1BE0C8070);
  swift_getAssociatedTypeWitness();
  v12 = sub_1BE0534B4();
  v13 = sub_1BD2A28D8(&qword_1EBD40468, &qword_1EBD40460, &qword_1BE0C8070, sub_1BD2A1FE8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  *&v96 = v11;
  *(&v96 + 1) = v12;
  *&v97 = v13;
  *(&v97 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C0, &qword_1BE0C80A0);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v15 = sub_1BE051774();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - v20;
  v88 = a3;
  v89 = v81;
  v90 = a1;
  sub_1BE04F504();
  v22 = v16;
  sub_1BE051764();
  v81 = swift_getWitnessTable();
  sub_1BD147308();
  v23 = *(v16 + 8);
  v23(v18, v15);
  if (*(a1 + 16) != 1 || (v80 & 1) != 0)
  {
    v71 = v85;
    (*(v82 + 56))(v85, 1, 1, v84);
  }

  else
  {
    *&v96 = sub_1BD53EE80(*(a1 + 24), *(a1 + 40), *(a1 + 48));
    *(&v96 + 1) = v24;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v78 = v16;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = sub_1BE051264();
    v77 = v23;
    v33 = v32;
    v34 = sub_1BE050564();
    v75 = v35;
    v76 = v34;
    v80 = v21;
    v37 = v36;
    v74 = v38;
    v33, v35, v36, v38, v39, v40, v41, v42;
    sub_1BD0DDF10(v25, v27, (v29 & 1), v43, v44, v45, v46, v47);
    v31, v48, v49, v50, v51, v52, v53, v54;
    LOBYTE(v25) = sub_1BE0501E4();
    sub_1BE04E1F4();
    LOBYTE(v100) = v37 & 1;
    v95 = 0;
    *&v91 = v76;
    *(&v91 + 1) = v75;
    LOBYTE(v92) = v37 & 1;
    *(&v92 + 1) = v74;
    LOBYTE(v93) = v25;
    *(&v93 + 1) = v55;
    *&v94[0] = v56;
    *(&v94[0] + 1) = v57;
    *&v94[1] = v58;
    BYTE8(v94[1]) = 0;
    sub_1BE052434();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD2A275C();
    v61 = v79;
    v21 = v80;
    sub_1BE050DE4();
    v62 = v60;
    v22 = v78;
    v62, v63, v64, v65, v66, v67, v68, v69;
    v98 = v93;
    v99[0] = v94[0];
    *(v99 + 9) = *(v94 + 9);
    v96 = v91;
    v97 = v92;
    v23 = v77;
    sub_1BD0DE53C(&v96, &unk_1EBD3DF90, &qword_1BE0C2E90);
    v70 = v61;
    v71 = v85;
    sub_1BD0DE204(v70, v85, &qword_1EBD40540, &unk_1BE0DC3A0);
    (*(v82 + 56))(v71, 0, 1, v84);
  }

  (*(v22 + 16))(v18, v21, v15);
  *&v96 = v18;
  v72 = v86;
  sub_1BD0DE19C(v71, v86, &qword_1EBD404C8, &qword_1BE0C80A8);
  *(&v96 + 1) = v72;
  *&v91 = v15;
  *(&v91 + 1) = v83;
  v100 = v81;
  v101 = sub_1BD2A26AC();
  sub_1BD13A4C4(&v96, 2uLL, &v91);
  sub_1BD0DE53C(v71, &qword_1EBD404C8, &qword_1BE0C80A8);
  v23(v21, v15);
  sub_1BD0DE53C(v72, &qword_1EBD404C8, &qword_1BE0C80A8);
  return (v23)(v18, v15);
}

uint64_t sub_1BD29F674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v112 = a4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40558, &qword_1BE0FE400);
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v95 = &v94 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404C0, &qword_1BE0C80A0);
  MEMORY[0x1EEE9AC00](v109);
  v111 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v94 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1BE0534B4();
  v106 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v94 - v13;
  v98 = sub_1BE04F6E4();
  v101 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40478, &qword_1BE0C8078);
  MEMORY[0x1EEE9AC00](v97);
  v16 = &v94 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40460, &qword_1BE0C8070);
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v94 - v18;
  v19 = sub_1BD2A28D8(&qword_1EBD40468, &qword_1EBD40460, &qword_1BE0C8070, sub_1BD2A1FE8);
  v105 = AssociatedTypeWitness;
  v126[2] = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v103 = v17;
  v117 = v17;
  v118 = v12;
  v96 = v12;
  v100 = v19;
  v119 = v19;
  v120 = WitnessTable;
  v21 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v116 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v107 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v94 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v115 = &v94 - v27;
  v29 = type metadata accessor for ContactFormItemRow(0, a2, a3, v28);
  sub_1BD2A0000(v29, v16);
  v30 = a1;
  if (sub_1BD29DA24(v29))
  {
    v31 = v99;
    sub_1BE04F6B4();
    v32 = v98;
  }

  else
  {
    v117 = MEMORY[0x1E69E7CC0];
    sub_1BD2A27E0(&qword_1EBD3E638, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640, &qword_1BE0C8100);
    sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640, &qword_1BE0C8100, MEMORY[0x1E69E6328]);
    v31 = v99;
    v33 = v98;
    sub_1BE053664();
    v32 = v33;
  }

  sub_1BD2A1FE8();
  v34 = v102;
  sub_1BE050DA4();
  (*(v101 + 8))(v31, v32);
  sub_1BD0DE53C(v16, &qword_1EBD40478, &qword_1BE0C8078);
  v35 = v105;
  v36 = *(v105 - 8);
  v37 = v30 + *(v29 + 52);
  v38 = v104;
  (*(v36 + 16))(v104, v37, v105);
  (*(v36 + 56))(v38, 0, 1, v35);
  v39 = v103;
  v40 = v96;
  v41 = v100;
  sub_1BE050FB4();
  (*(v106 + 8))(v38, v40);
  sub_1BD0DE53C(v34, &qword_1EBD40460, &qword_1BE0C8070);
  v117 = v39;
  v118 = v40;
  v119 = v41;
  v120 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = OpaqueTypeMetadata2;
  v106 = OpaqueTypeConformance2;
  sub_1BD147308();
  v44 = *(v116 + 8);
  v44(v25, v43);
  v45 = sub_1BD29DA24(v29);
  v46 = 1;
  if (v45)
  {
    v47 = sub_1BE051574();
    v48 = sub_1BE0502D4();
    KeyPath = swift_getKeyPath();
    v50 = sub_1BE0511E4();
    v51 = swift_getKeyPath();
    v117 = v47;
    v118 = KeyPath;
    v119 = v48;
    v120 = v51;
    v121 = v50;
    v122 = sub_1BD1F3E44;
    v123 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40578, &qword_1BE0C8108);
    sub_1BD2A298C();
    v52 = v95;
    sub_1BE050A24();
    v50, v53, v54, v55, v56, v57, v58, v59;
    v51, v60, v61, v62, v63, v64, v65, v66;
    v48, v67, v68, v69, v70, v71, v72, v73;
    KeyPath, v74, v75, v76, v77, v78, v79, v80;
    v47, v81, v82, v83, v84, v85, v86, v87;
    sub_1BD0DE204(v52, v113, &qword_1EBD40558, &qword_1BE0FE400);
    v46 = 0;
  }

  v88 = v113;
  (*(v108 + 56))(v113, v46, 1, v110);
  v89 = v115;
  v90 = v107;
  v91 = OpaqueTypeMetadata2;
  (*(v116 + 16))(v107, v115, OpaqueTypeMetadata2);
  v117 = v90;
  v92 = v111;
  sub_1BD0DE19C(v88, v111, &qword_1EBD404C0, &qword_1BE0C80A0);
  v118 = v92;
  v126[0] = v91;
  v126[1] = v109;
  v124 = v106;
  v125 = sub_1BD2A2828();
  sub_1BD13A4C4(&v117, 2uLL, v126);
  sub_1BD0DE53C(v88, &qword_1EBD404C0, &qword_1BE0C80A0);
  v44(v89, v91);
  sub_1BD0DE53C(v92, &qword_1EBD404C0, &qword_1BE0C80A0);
  return (v44)(v90, v91);
}

uint64_t sub_1BD2A0000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v74 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40490, &qword_1BE0C8088);
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40580, &qword_1BE0C8178);
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v55 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40488, &qword_1BE0C8080);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v55 - v12;
  v13 = *(v2 + 24);
  v14 = sub_1BD53F0A4(*(v2 + 24));
  v62 = v15;
  v63 = v14;
  v16 = v2 + *(a1 + 68);
  v17 = *v16;
  v18 = *(v16 + 16);
  v77 = v17;
  *&v78 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516C4();
  v58 = *(&v86 + 1);
  v59 = v86;
  v60 = *(&v87 + 1);
  v61 = v87;
  v19 = MEMORY[0x1E69B9620];
  v20 = MEMORY[0x1E69B9A98];
  v21 = *(v2 + 18);
  if ((v21 & 1) == 0)
  {
    v20 = MEMORY[0x1E69B9748];
  }

  if (v21 != 2)
  {
    v19 = v20;
  }

  v57 = *v19;
  (*(v5 + 16))(&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  v26 = *(v5 + 32);
  v72 = a1;
  v26(v23 + v22, v7, a1);
  v73 = v3;
  v28 = sub_1BD2A11A0(v3, v24, v25, v27);
  v56 = v29;
  v30 = sub_1BE04E274();
  v55 = v31;
  v33 = v32;
  if (v13 == 2)
  {
    KeyPath = swift_getKeyPath();
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v37 = MEMORY[0x1E69DE578];
    if ((v13 & 1) == 0)
    {
      v37 = MEMORY[0x1E69DE4A0];
    }

    v38 = v28;
    v39 = *v37;
    KeyPath = swift_getKeyPath();
    v35 = sub_1BE052434();
    v36 = v40;

    v28 = v38;
  }

  *&v86 = v63;
  *(&v86 + 1) = v62;
  LODWORD(v63) = v13 == 2;
  *&v87 = v59;
  *(&v87 + 1) = v58;
  *&v88 = v61;
  *(&v88 + 1) = v60;
  v89 = v57;
  *&v90 = sub_1BD2A2A18;
  *(&v90 + 1) = v23;
  *&v91 = v28;
  *(&v91 + 1) = v56;
  LOBYTE(v92) = v30 & 1;
  *(&v92 + 1) = v55;
  LOBYTE(v93) = v33 & 1;
  *(&v93 + 1) = KeyPath;
  *&v94 = v35;
  *(&v94 + 1) = v36;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40498, &unk_1BE0C8090);
  v42 = sub_1BD2A21D8();
  v43 = v67;
  sub_1BE0509B4();
  v83 = v92;
  v84 = v93;
  v85 = v94;
  v79 = v88;
  v80 = v89;
  v81 = v90;
  v82 = v91;
  v77 = v86;
  v78 = v87;
  sub_1BD0DE53C(&v77, &qword_1EBD40498, &unk_1BE0C8090);
  v75 = v41;
  v76 = v42;
  swift_getOpaqueTypeConformance2();
  v44 = v65;
  v45 = v71;
  sub_1BE050C44();
  (*(v70 + 8))(v43, v45);
  v46 = sub_1BE051224();
  v47 = swift_getKeyPath();
  v48 = v66;
  (*(v68 + 32))(v66, v44, v69);
  v49 = (v48 + *(v64 + 36));
  *v49 = v47;
  v49[1] = v46;
  LOBYTE(v46) = sub_1BD29D4B0();
  v50 = swift_getKeyPath();
  v51 = swift_allocObject();
  *(v51 + 16) = (v46 & 1) == 0;
  v52 = v74;
  sub_1BD05A1D0(v48, v74);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40478, &qword_1BE0C8078);
  v54 = (v52 + *(result + 36));
  *v54 = v50;
  v54[1] = sub_1BD10DF54;
  v54[2] = v51;
  return result;
}

id sub_1BD2A060C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v121 = a4;
  LODWORD(v119) = a2;
  v114 = a5;
  v117 = sub_1BE04BD74();
  v120 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactFormItemRow(0, a3, a4, v9);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v101 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40508, &unk_1BE0C80E0);
  v16 = *(v15 - 8);
  v115 = v15;
  v116 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v101 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404E8, &qword_1BE0C80D0);
  MEMORY[0x1EEE9AC00](v110);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v101 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v109 = &v101 - v25;
  v26 = *(v11 + 16);
  v107 = v11 + 16;
  v106 = v26;
  (v26)(v14, a1, v10, v24);
  v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v105 = *(v11 + 80);
  v28 = swift_allocObject();
  v113 = a3;
  *(v28 + 16) = a3;
  v29 = v117;
  *(v28 + 24) = v121;
  v30 = *(v11 + 32);
  v108 = v27;
  v111 = v14;
  v112 = v11 + 32;
  v104 = v30;
  v30((v28 + v27), v14, v10);
  *(v28 + v27 + v12) = v119;
  sub_1BE051704();
  v119 = v10;
  v31 = v118;
  v102 = a1;
  v32 = v120;
  sub_1BD29D4B0();
  sub_1BD0DE4F4(&qword_1EBD40500, &qword_1EBD40508, &unk_1BE0C80E0, MEMORY[0x1E697D680]);
  v33 = v20;
  v34 = v115;
  sub_1BE050A24();
  (*(v116 + 8))(v18, v34);
  v35 = v29;
  (*(v32 + 104))(v31, *MEMORY[0x1E69B8068], v29);
  result = PKPassKitBundle();
  if (result)
  {
    v37 = result;
    v38 = sub_1BE04B6F4();
    v40 = v39;

    (*(v32 + 8))(v31, v35);
    v122 = v38;
    v123 = v40;
    sub_1BD0DDEBC();
    v41 = sub_1BE0506C4();
    v43 = v42;
    LOBYTE(v40) = v44;
    v46 = v45;
    v47 = v103;
    sub_1BE04EB74();
    sub_1BD0DDF10(v41, v43, (v40 & 1), v48, v49, v50, v51, v52);
    v46, v53, v54, v55, v56, v57, v58, v59;
    sub_1BD0DE53C(v33, &qword_1EBD404E8, &qword_1BE0C80D0);
    sub_1BE052434();
    v61 = v60;
    v62 = v109;
    sub_1BE04EBB4();
    v61, v63, v64, v65, v66, v67, v68, v69;
    sub_1BD0DE53C(v47, &qword_1EBD404E8, &qword_1BE0C80D0);
    v70 = v119;
    v71 = v102;
    v72 = v102 + *(v119 + 76);
    v73 = *v72;
    v74 = *(v72 + 8);
    v124 = v73;
    v125 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516C4();
    v75 = v122;
    v76 = v123;
    v77 = v111;
    v106(v111, v71, v70);
    v78 = swift_allocObject();
    v79 = v121;
    *(v78 + 2) = v113;
    *(v78 + 3) = v79;
    v104(&v78[v108], v77, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404F0, &qword_1BE0C80D8);
    sub_1BD2A2304();
    sub_1BD2A23EC();
    sub_1BE051114();
    v76, v80, v81, v82, v83, v84, v85, v86;
    v78, v87, v88, v89, v90, v91, v92, v93;
    v75, v94, v95, v96, v97, v98, v99, v100;
    return sub_1BD0DE53C(v62, &qword_1EBD404E8, &qword_1BE0C80D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2A0CBC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1BE0534B4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v12 = *(a1 + 16);
  v14 = type metadata accessor for ContactFormItemRow(0, a3, a4, v13);
  if (v12 != 1 || (a2 & 1) != 0)
  {
    return (*(a1 + *(v14 + 56)))();
  }

  v15 = *(AssociatedTypeWitness - 8);
  (*(v15 + 16))(v11, a1 + *(v14 + 52), AssociatedTypeWitness);
  (*(v15 + 56))(v11, 0, 1, AssociatedTypeWitness);
  v17[1] = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1BE04E264();
  return sub_1BE04E254();
}

void (*sub_1BD2A0EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ContactFormItemRow(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_1BD2A2624;
}

void sub_1BD2A0FDC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516B4();
  sub_1BD2A1364(3u, a3);
}

uint64_t sub_1BD2A1068(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContactFormItemRow(0, a2, a3, a4);
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516B4();
  return sub_1BE0516B4();
}

uint64_t sub_1BD2A112C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContactFormItemRow(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  return sub_1BE0516B4();
}

void (*sub_1BD2A11A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ContactFormItemRow(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_1BD2A2DC8;
}

void sub_1BD2A12D8(char a1, int *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if ((v4 & 1) == 0 && (a1 & 1) == 0)
  {
    sub_1BD2A1364(6u, a2);
  }
}

void sub_1BD2A1364(unsigned int a1, int *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  sub_1BE0516A4();
  v16, v2, v15, v3, v4, v5, v6, v7;
  v16, v8, v9, v10, v11, v12, v13, v14;
}

uint64_t sub_1BD2A14F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  return sub_1BE048964();
}

void sub_1BD2A1514(uint64_t a1)
{
  sub_1BD2A1F54(319, &qword_1EBD40440, &type metadata for ContactEditingType, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v3 <= 0x3F)
      {
        sub_1BD2A1EF0(319);
        if (v4 <= 0x3F)
        {
          sub_1BD2A1F54(319, &qword_1EBD40458, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1BD2A1F54(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1BE0534B4();
              swift_getAssociatedConformanceWitness();
              swift_getWitnessTable();
              sub_1BE04E264();
              if (v7 <= 0x3F)
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

uint64_t sub_1BD2A1734(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1BE051AD4() - 8);
  v9 = *(v8 + 80);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(v6 + 80);
  if (v10 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v10;
  }

  if (v7)
  {
    v14 = -2;
  }

  else
  {
    v14 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_32;
  }

  v15 = v14 + *(v6 + 64) - ((-17 - v12) | v12) - ((-17 - (v12 | 7) - ((((((v13 + ((v9 + 16 + ((((*(v6 + 64) + ((v12 + 56) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & (v9 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) | v12 | 7);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v19 < 2)
    {
LABEL_32:
      if ((v11 & 0x80000000) != 0)
      {
        v22 = *(v6 + 48);

        return v22((((a1 + 13) & 0xFFFFFFFFFFFFFFF8) + v12 + 32) & ~v12, v7, AssociatedTypeWitness);
      }

      else
      {
        v21 = *(a1 + 1);
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_32;
  }

LABEL_21:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v15) = *a1;
      }
    }

    else if (v15 == 1)
    {
      LODWORD(v15) = *a1;
    }

    else
    {
      LODWORD(v15) = *a1;
    }
  }

  return v11 + (v15 | v20) + 1;
}

void sub_1BD2A1A1C(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v41 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_1BE051AD4() - 8);
  v12 = *(v11 + 80);
  v13 = v12 + 16;
  v14 = (v13 & ~v12) + *(v11 + 64);
  v15 = v9 - 1;
  if (!v9)
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v9 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v9;
  }

  if (v14 <= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = v14;
  }

  v19 = *(v8 + 80);
  v20 = *(v8 + 64);
  v21 = v12 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v22 = v18 + 8;
  v23 = *(v8 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v24 = (v19 + 16) & ~v19;
  if (v9)
  {
    v25 = *(v8 + 64);
  }

  else
  {
    v25 = v20 + 1;
  }

  v26 = v25 + v24 + ((v19 + 16 + ((((((v22 + ((v13 + ((((v20 + 7 + ((v19 + 56) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & v23);
  if (a3 <= v17)
  {
LABEL_29:
    if (v17 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v26 > 3)
  {
    v10 = 1;
    if (v17 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v29 = ~v17 + a2;
    if (v26 >= 4)
    {
      bzero(a1, v26);
      *a1 = v29;
      v30 = 1;
      if (v10 > 1)
      {
        goto LABEL_32;
      }

LABEL_61:
      if (v10)
      {
        *(a1 + v26) = v30;
      }

      return;
    }

    v30 = (v29 >> (8 * v26)) + 1;
    if (v26)
    {
      v31 = v29 & ~(-1 << (8 * v26));
      bzero(a1, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *a1 = v31;
          if (v10 <= 1)
          {
            goto LABEL_61;
          }
        }

        else
        {
          *a1 = v29;
          if (v10 <= 1)
          {
            goto LABEL_61;
          }
        }

LABEL_32:
        if (v10 == 2)
        {
          *(a1 + v26) = v30;
        }

        else
        {
          *(a1 + v26) = v30;
        }

        return;
      }

      *a1 = v31;
      *(a1 + 2) = BYTE2(v31);
    }

    if (v10 <= 1)
    {
      goto LABEL_61;
    }

    goto LABEL_32;
  }

  v27 = ((a3 - v17 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
  if (!HIWORD(v27))
  {
    if (v27 < 0x100)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v27 >= 2)
    {
      v10 = v28;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_29;
  }

  v10 = 4;
  if (v17 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v26) = 0;
  }

  else if (v10)
  {
    *(a1 + v26) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

  v32 = (((a1 + 26) & 0xFFFFFFFFFFFFFFF8) + v19 + 32) & ~v19;
  if (v9 >= 0x7FFFFFFF)
  {
    v35 = *(v41 + 56);
    v36 = a2;
    goto LABEL_56;
  }

  v33 = v19 + 16 + ((((((v22 + ((v13 + ((((v20 + 7 + v32) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v34 = (v33 & v23);
  if (v9)
  {
    if (v16 >= a2)
    {
      goto LABEL_79;
    }
  }

  else
  {
    if (v16 >= a2)
    {
      v20 = (v20 + 1);
LABEL_79:
      v34 = ((v19 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v19);
      if (v15 < a2)
      {
        if (v20 <= 3)
        {
          v40 = ~(-1 << (8 * v20));
        }

        else
        {
          v40 = -1;
        }

        if (v20)
        {
          v38 = v40 & (~v15 + a2);
          if (v20 <= 3)
          {
            v39 = v20;
          }

          else
          {
            v39 = 4;
          }

          bzero(v34, v20);
          if (v39 <= 2)
          {
            if (v39 != 1)
            {
              goto LABEL_89;
            }

            goto LABEL_77;
          }

LABEL_91:
          if (v39 == 3)
          {
            *v34 = v38;
            v34[2] = BYTE2(v38);
          }

          else
          {
            *v34 = v38;
          }

          return;
        }

        return;
      }

      v35 = *(v41 + 56);
      v36 = (a2 + 1);
      v32 = v34;
LABEL_56:

      v35(v32, v36, v9, AssociatedTypeWitness);
      return;
    }

    LODWORD(v20) = v20 + 1;
  }

  v37 = (v20 + v24);
  if (v37 <= 3)
  {
    v38 = a2 & ~(-1 << (8 * v37));
  }

  else
  {
    v38 = a2 ^ 0x80000000;
  }

  if (v37)
  {
    if (v37 <= 3)
    {
      v39 = v37;
    }

    else
    {
      v39 = 4;
    }

    bzero((v33 & v23), v37);
    if (v39 <= 2)
    {
      if (v39 != 1)
      {
LABEL_89:
        *v34 = v38;
        return;
      }

LABEL_77:
      *v34 = v38;
      return;
    }

    goto LABEL_91;
  }
}

void sub_1BD2A1EF0(uint64_t a1)
{
  if (!qword_1EBD40448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40450, &qword_1BE0D7250);
    v1 = sub_1BE04E3A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD40448);
    }
  }
}

void sub_1BD2A1F54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BD2A1FE8()
{
  result = qword_1EBD40470;
  if (!qword_1EBD40470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40478, &qword_1BE0C8078);
    sub_1BD2A20A0();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40470);
  }

  return result;
}

unint64_t sub_1BD2A20A0()
{
  result = qword_1EBD40480;
  if (!qword_1EBD40480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40488, &qword_1BE0C8080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40490, &qword_1BE0C8088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40498, &unk_1BE0C8090);
    sub_1BD2A21D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40480);
  }

  return result;
}

unint64_t sub_1BD2A21D8()
{
  result = qword_1EBD404A0;
  if (!qword_1EBD404A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40498, &unk_1BE0C8090);
    sub_1BD2A2290();
    sub_1BD0DE4F4(&qword_1EBD404B0, &qword_1EBD404B8, &unk_1BE0CED80, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD404A0);
  }

  return result;
}

unint64_t sub_1BD2A2290()
{
  result = qword_1EBD404A8;
  if (!qword_1EBD404A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD404A8);
  }

  return result;
}

unint64_t sub_1BD2A2304()
{
  result = qword_1EBD404F8;
  if (!qword_1EBD404F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404E8, &qword_1BE0C80D0);
    sub_1BD0DE4F4(&qword_1EBD40500, &qword_1EBD40508, &unk_1BE0C80E0, MEMORY[0x1E697D680]);
    sub_1BD2A27E0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD404F8);
  }

  return result;
}

unint64_t sub_1BD2A23EC()
{
  result = qword_1EBD40510;
  if (!qword_1EBD40510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404F0, &qword_1BE0C80D8);
    sub_1BD2A2470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40510);
  }

  return result;
}

unint64_t sub_1BD2A2470()
{
  result = qword_1EBD40518;
  if (!qword_1EBD40518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40518);
  }

  return result;
}

uint64_t sub_1BD2A24DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ContactFormItemRow(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v8 + *(v7 + 64));

  return sub_1BD2A0CBC(v8, v9, v5, v6);
}

void (*sub_1BD2A2580@<X0>(uint64_t a1@<X3>, void *a2@<X8>))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = type metadata accessor for ContactFormItemRow(0, v5, v4, a1);
  v8 = 0;
  result = 0;
  v10 = 0;
  v11 = v2 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
  v12 = *(v11 + 18);
  if (v12 != 2)
  {
    result = sub_1BD2A0EA4(v11, v5, v4, v6);
    v8 = v12 & 1;
  }

  *a2 = v8;
  a2[1] = result;
  a2[2] = v10;
  return result;
}

unint64_t sub_1BD2A26AC()
{
  result = qword_1EBD40548;
  if (!qword_1EBD40548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C8, &qword_1BE0C80A8);
    sub_1BD2A28D8(&qword_1EBD40550, &qword_1EBD40540, &unk_1BE0DC3A0, sub_1BD2A275C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40548);
  }

  return result;
}

unint64_t sub_1BD2A275C()
{
  result = qword_1EBD36820;
  if (!qword_1EBD36820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF90, &qword_1BE0C2E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36820);
  }

  return result;
}

uint64_t sub_1BD2A27E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD2A2828()
{
  result = qword_1EBD40560;
  if (!qword_1EBD40560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C0, &qword_1BE0C80A0);
    sub_1BD2A28D8(&qword_1EBD40568, &qword_1EBD40558, &qword_1BE0FE400, sub_1BD2A298C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40560);
  }

  return result;
}

uint64_t sub_1BD2A28D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD2A27E0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD2A298C()
{
  result = qword_1EBD40570;
  if (!qword_1EBD40570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40578, &qword_1BE0C8108);
    sub_1BD0F1430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40570);
  }

  return result;
}

uint64_t sub_1BD2A2A30(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ContactFormItemRow(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t objectdestroyTm_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ContactFormItemRow(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80)));
  v6[1], v7, v8, v9, v10, v11, v12, v13;

  v6[6], v14, v15, v16, v17, v18, v19, v20;
  v21 = v5[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v110 = *(v23 + 8);
  v110(v6 + v21, AssociatedTypeWitness);
  *(v6 + v5[14] + 8), v24, v25, v26, v27, v28, v29, v30;
  *(v6 + v5[15] + 8), v31, v32, v33, v34, v35, v36, v37;
  v38 = (v6 + v5[16]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if (!(*(*(v46 - 8) + 48))(v38, 1, v46))
    {
      *v38, v47, v48, v49, v50, v51, v52, v53;
      v38[1], v54, v55, v56, v57, v58, v59, v60;
      v61 = *(v46 + 32);
      v62 = sub_1BE051AD4();
      (*(*(v62 - 8) + 8))(v38 + v61, v62);
    }
  }

  else
  {
    *v38, v39, v40, v41, v42, v43, v44, v45;
  }

  v63 = (v6 + v5[17]);
  v63[1], v47, v48, v49, v50, v51, v52, v53;
  v63[2], v64, v65, v66, v67, v68, v69, v70;
  v71 = (v6 + v5[18]);
  v71[1], v72, v73, v74, v75, v76, v77, v78;
  v71[2], v79, v80, v81, v82, v83, v84, v85;
  *(v6 + v5[19] + 8), v86, v87, v88, v89, v90, v91, v92;
  v93 = (v6 + v5[20]);
  *v93, v94, v95, v96, v97, v98, v99, v100;
  v93[1], v101, v102, v103, v104, v105, v106, v107;
  sub_1BE0534B4();
  v108 = *(sub_1BE051964() + 32);
  if (!(*(v23 + 48))(v93 + v108, 1, AssociatedTypeWitness))
  {
    v110(v93 + v108, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

unint64_t sub_1BD2A2E60()
{
  result = qword_1EBD50620;
  if (!qword_1EBD50620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50620);
  }

  return result;
}

void sub_1BD2A2EB4()
{
  v0 = sub_1BE04B944();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v4 = [objc_allocWithZone(sub_1BE04C114()) init];
  v5 = sub_1BE04C104();

  sub_1BD0E5E8C(0, &unk_1EBD444B0, 0x1E69B90F0);
  sub_1BE048C84();
  v6 = sub_1BE052F24();
  v7 = sub_1BE04B934();
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    (*(v1 + 8))(v3, v0);
    swift_unknownObjectRelease();
LABEL_8:
    v5, v20, v21, v22, v23, v24, v25, v26;

    return;
  }

  v8 = [v7 meetsProvisioningRequirements:v6 missingRequirements:0];
  swift_unknownObjectRelease();
  if ((v8 & 1) == 0)
  {
    (*(v1 + 8))(v3, v0);
    goto LABEL_8;
  }

  v9 = [sub_1BE04B934() deviceRegion];
  swift_unknownObjectRelease();
  v10 = sub_1BE04B8E4();
  v11 = [v10 context];

  if (v11)
  {
    v12 = [v11 configuration];

    if (v12)
    {
      v5, v13, v14, v15, v16, v17, v18, v19;
      [v12 manualProvisioningEnabledForRegion_];

      (*(v1 + 8))(v3, v0);
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

void sub_1BD2A320C(void (*a1)(_BOOL8, unint64_t, unint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v119 = sub_1BE04B944();
  v6 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04C384();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_configuration);
  v14 = sub_1BE04C3A4();
  if (!v14[2])
  {
    v14, v15, v16, v17, v18, v19, v20, v21;
    goto LABEL_9;
  }

  v22 = v14;
  (*(v10 + 16))(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = sub_1BE04C2E4();
  (*(v10 + 8))(v12, v9);
  if (!v30)
  {
LABEL_9:
    a1(0xD000000000000018, 0x80000001BE121270, 0, 1);
    return;
  }

  v31 = [v30 style];
  v32 = *(v3 + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_reporter);
  if (!v31)
  {
    if (!v32)
    {
      goto LABEL_15;
    }

    v33 = MEMORY[0x1E69BB1D8];
    goto LABEL_14;
  }

  if (v31 != 1)
  {
    if (!v32)
    {
      goto LABEL_15;
    }

    v33 = MEMORY[0x1E69BB1E0];
LABEL_14:
    [v32 setProductType:*v33 subtype:0];
LABEL_15:
    v118 = v30;
    v34 = [v30 paymentNetwork];
    if (!v34)
    {
      goto LABEL_21;
    }

    v35 = v34;
    v36 = sub_1BE052434();
    v3 = v37;
    v38 = sub_1BE052434();
    v40 = v39;
    if (v36 == v38 && v3 == v39)
    {

      v3, v76, v77, v78, v79, v80, v81, v82;
      v40, v83, v84, v85, v86, v87, v88, v89;
    }

    else
    {
      v42 = sub_1BE053B84();

      v3, v43, v44, v45, v46, v47, v48, v49;
      v40, v50, v51, v52, v53, v54, v55, v56;
      if ((v42 & 1) == 0)
      {
LABEL_21:
        v116 = a2;
        v117 = a1;
        v57 = v13;
        v65 = sub_1BE04C3C4();
        v66 = 0;
        v67 = v65[2];
        v120 = v6 + 16;
        v121 = v67;
        v68 = v119;
        while (1)
        {
          v69 = v66;
          if (v121 == v66)
          {
LABEL_26:
            v72 = v121 == v69;
            v65, v58, v59, v60, v61, v62, v63, v64;
            v73 = 0x80000001BE121290;
            v74 = v72;
            v75 = 0xD000000000000012;
            goto LABEL_43;
          }

          if (v66 >= v65[2])
          {
            break;
          }

          (*(v6 + 16))(v8, v65 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v66, v68);
          v70 = sub_1BE04B8E4();
          v71 = [v70 targetDevice];
          if (!v71)
          {
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          ++v66;
          v57 = v71;
          v3 = [v71 paymentWebService:v70 hasPassesOfType:1];

          swift_unknownObjectRelease();
          (*(v6 + 8))(v8, v68);
          if (v3)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    v90 = [objc_opt_self() sharedInstance];
    if (!v90)
    {
LABEL_52:
      __break(1u);
      return;
    }

    v91 = v90;
    v92 = [v90 passesOfType_];

    sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
    v93 = sub_1BE052744();

    v57 = sub_1BD3FCF30(v93);
    v93, v94, v95, v96, v97, v98, v99, v100;
    if (!v57)
    {
      a1(0, 0, 0, 0);
LABEL_44:

      return;
    }

    v116 = a2;
    v117 = a1;
    v3 = (v57 & 0xFFFFFFFFFFFFFF8);
    if (!(v57 >> 62))
    {
      v108 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
      v109 = 0;
      do
      {
        v110 = v109;
        if (v108 == v109)
        {
          break;
        }

        if ((v57 & 0xC000000000000001) != 0)
        {
          v111 = MEMORY[0x1BFB40900](v109, v57);
        }

        else
        {
          if (v109 >= v3[2])
          {
            goto LABEL_48;
          }

          v111 = *(v57 + 8 * v109 + 32);
        }

        v112 = v111;
        if (__OFADD__(v110, 1))
        {
          goto LABEL_47;
        }

        v113 = [v111 devicePrimaryPaymentApplication];
        if (!v113)
        {
          goto LABEL_51;
        }

        v114 = v113;
        v115 = [v113 paymentNetworkIdentifier];

        v109 = v110 + 1;
      }

      while (v115 != 123);
      v57, v101, v102, v103, v104, v105, v106, v107;
      v75 = 0xD000000000000015;
      v73 = 0x80000001BE1212B0;
      v74 = v108 == v110;
LABEL_43:
      v117(v74, v75, v73, 2);
      goto LABEL_44;
    }

LABEL_49:
    v108 = sub_1BE053704();
    goto LABEL_32;
  }

  if (v32)
  {
    [v32 setProductType:*MEMORY[0x1E69BB1C8] subtype:0];
  }

  a1(0xD00000000000001DLL, 0x80000001BE1212D0, 0, 1);
}

uint64_t sub_1BD2A3834()
{
  v1 = v0;
  v2 = sub_1BE04C384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04C3A4();
  if (!v6[2])
  {
    v6, v7, v8, v9, v10, v11, v12, v13;
    return 2;
  }

  v14 = v6;
  (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
  v14, v15, v16, v17, v18, v19, v20, v21;
  v22 = sub_1BE04C2E4();
  (*(v3 + 8))(v5, v2);
  if (!v22)
  {
    return 2;
  }

  v132 = v22;
  KeyPath = swift_getKeyPath();
  v24 = v1;
  sub_1BD12F724(1, v24, KeyPath);

  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  v131 = swift_getKeyPath();
  v129 = sub_1BD187328(v24, v131);
  v130 = v32;
  v34 = v33;
  sub_1BE053D04();
  sub_1BE052524();
  v35 = sub_1BE053D64();
  v43 = -1 << *(v34 + 32);
  v44 = v35 & ~v43;
  if (((*(v34 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = v34;
    sub_1BD2A9690(0, v44, isUniquelyReferenced_nonNull_native, v57, v58, v59, v60, v61);
    v34 = v133;
    goto LABEL_12;
  }

  v45 = ~v43;
  while (1)
  {
    v46 = *(*(v34 + 48) + v44);
    if (v46 == 1)
    {
      v47 = 0xEE00415049506165;
      goto LABEL_9;
    }

    if (v46 != 2)
    {
      break;
    }

    v47 = 0x80000001BE117610;
LABEL_9:
    v48 = sub_1BE053B84();
    v47, v49, v50, v51, v52, v53, v54, v55;
    if (v48)
    {
      goto LABEL_12;
    }

    v44 = (v44 + 1) & v45;
    if (((*(v34 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  0xE400000000000000, v36, v37, v38, v39, v40, v41, v42;
LABEL_12:
  v62 = v24;
  v64 = v130;
  v63 = v131;
  sub_1BD12F750(v129 & 1, v130, v34, v62, v131);
  v34, v65, v66, v67, v68, v69, v70, v71;
  v64, v72, v73, v74, v75, v76, v77, v78;

  v63, v79, v80, v81, v82, v83, v84, v85;
  v86 = v132;
  v87 = [v132 paymentNetwork];
  if (v87)
  {
    v88 = v87;
    v89 = sub_1BE052434();
    v91 = v90;
    v92 = sub_1BE052434();
    v94 = v93;
    if (v89 == v92 && v91 == v93)
    {

      v91, v113, v114, v115, v116, v117, v118, v119;
      v94, v120, v121, v122, v123, v124, v125, v126;
    }

    else
    {
      v96 = sub_1BE053B84();

      v91, v97, v98, v99, v100, v101, v102, v103;
      v94, v104, v105, v106, v107, v108, v109, v110;
      if ((v96 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v111 = sub_1BD2A3C00(v86);
  }

  else
  {
LABEL_18:
    sub_1BD2A400C(v86);
  }

  v127 = v111;

  return v127;
}

id sub_1BD2A3C00(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 localizedDescription];
  if (v13)
  {
    v14 = v13;
    sub_1BE052434();
    v16 = v15;
  }

  else
  {
    (*(v9 + 104))(v12, *MEMORY[0x1E69B80C8], v8);
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    sub_1BE04B6F4();
    v16 = v19;

    (*(v9 + 8))(v12, v8);
  }

  sub_1BE04BC34();
  v20 = sub_1BE04B9A4();
  (*(v5 + 8))(v7, v4);
  v21 = objc_allocWithZone(PKBarcodePaymentOnboardingViewController);
  v22 = sub_1BE052404();
  v16, v23, v24, v25, v26, v27, v28, v29;
  v30 = [v21 initWithIssuerName:v22 context:v20];

  if (v30)
  {
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = sub_1BD2AF418;
    v58 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = sub_1BD2749B0;
    v56 = &block_descriptor_45;
    v32 = _Block_copy(&aBlock);
    v33 = v58;
    v34 = v30;
    v33, v35, v36, v37, v38, v39, v40, v41;
    [v34 setContinueHandler_];
    _Block_release(v32);

    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = sub_1BD2AF420;
    v58 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = sub_1BD126964;
    v56 = &block_descriptor_9_0;
    v43 = _Block_copy(&aBlock);
    v44 = v58;
    v45 = v34;
    v44, v46, v47, v48, v49, v50, v51, v52;
    [v45 setTerminationHandler_];
    _Block_release(v43);

    [v45 setReporter_];
  }

  return v30;
}

void sub_1BD2A400C(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v243 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_context];
  v9 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v10 = sub_1BE04B9A4();
  (*(v5 + 8))(v7, v4);
  v11 = v1;
  sub_1BD2A2EB4();
  v13 = [objc_allocWithZone(PKPaymentSetupHeroViewController) initWithProvisioningController:v9 context:v10 delegate:0 allowsManualEntry:v12 & 1];

  v14 = [a1 productIdentifiers];
  v15 = sub_1BE052A34();

  v23 = [a1 paymentNetwork];
  v253 = v13;
  if (v23)
  {
    v24 = PKPaymentCredentialTypeForPaymentNetworkName();

    LODWORD(v251) = *(v15 + 16) == 0;
  }

  else
  {
    if (!*(v15 + 16))
    {
      goto LABEL_41;
    }

    v24 = 0;
    LODWORD(v251) = 0;
  }

  v25 = [v13 heroImageController];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 manifest];

    if (v27)
    {
      v28 = [v27 images];

      if (v28)
      {
        v247 = v24;
        v243[2] = v8;
        v244 = v2;
        v243[1] = sub_1BD0E5E8C(0, &qword_1EBD40638, 0x1E69B8C08);
        v29 = sub_1BE052244();

        v37 = 0;
        v245 = MEMORY[0x1E69E7CC0];
        v257 = MEMORY[0x1E69E7CC0];
        v39 = v29 + 64;
        v38 = *(v29 + 64);
        v249 = v23;
        v250 = v29;
        v40 = 1 << *(v29 + 32);
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        else
        {
          v41 = -1;
        }

        v42 = v41 & v38;
        v43 = (v40 + 63) >> 6;
        v248 = v15 + 56;
        if ((v41 & v38) == 0)
        {
          while (1)
          {
LABEL_12:
            v44 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              __break(1u);
              return;
            }

            if (v44 >= v43)
            {
              break;
            }

            v42 = *(v39 + 8 * v44);
            ++v37;
            if (v42)
            {
              v37 = v44;
              goto LABEL_16;
            }
          }

          v250, v30, v31, v32, v33, v34, v35, v36;
          v15, v69, v70, v71, v72, v73, v74, v75;
          v76 = v245;
          v77 = sub_1BE052724();
          v76, v78, v79, v80, v81, v82, v83, v84;
          [v13 setFeaturedHeroImages_];

          v11 = v244;
          goto LABEL_43;
        }

        while (1)
        {
LABEL_16:
          while (1)
          {
            v45 = __clz(__rbit64(v42));
            v42 &= v42 - 1;
            v46 = v45 | (v37 << 6);
            v47 = (*(v250 + 6) + 16 * v46);
            v48 = *v47;
            v49 = v47[1];
            v50 = *(*(v250 + 7) + 8 * v46);
            v252 = v50;
            if (v23)
            {
              break;
            }

            if (v251)
            {
              goto LABEL_37;
            }

            sub_1BE048C84();
            v246 = 1;
LABEL_24:
            v61 = v248;
            if (*(v15 + 16))
            {
              sub_1BE053D04();
              sub_1BE052524();
              v62 = sub_1BE053D64();
              v63 = -1 << *(v15 + 32);
              v64 = v62 & ~v63;
              if ((*(v61 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
              {
                v65 = ~v63;
                while (1)
                {
                  v66 = (*(v15 + 48) + 16 * v64);
                  v52 = v66[1];
                  v67 = *v66 == v48 && v52 == v49;
                  if (v67 || (sub_1BE053B84() & 1) != 0)
                  {
                    break;
                  }

                  v64 = (v64 + 1) & v65;
                  if (((*(v61 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
                  {
                    goto LABEL_33;
                  }
                }

                v49, v52, v53, v54, v55, v56, v57, v58;
                v23 = v249;
                v50 = v252;
                if (!v246)
                {
                  goto LABEL_35;
                }

                goto LABEL_37;
              }
            }

LABEL_33:
            v49, v52, v53, v54, v55, v56, v57, v58;
            v23 = v249;
            v50 = v252;
LABEL_35:

            v13 = v253;
            if (!v42)
            {
              goto LABEL_12;
            }
          }

          sub_1BE048C84();
          v51 = [v50 credentialType];
          v59 = v247;
          if (!v251)
          {
            v246 = v51 == v247;
            goto LABEL_24;
          }

          v60 = v51;
          v49, v52, v53, v54, v55, v56, v57, v58;
          v67 = v60 == v59;
          v50 = v252;
          if (!v67)
          {
            goto LABEL_35;
          }

LABEL_37:
          v68 = v50;
          MEMORY[0x1BFB3F7A0]();
          if (*((v257 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v257 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
            v23 = v249;
          }

          sub_1BE0527C4();

          v245 = v257;
          v13 = v253;
          if (!v42)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

LABEL_41:
  v15, v16, v17, v18, v19, v20, v21, v22;
LABEL_43:
  [v13 setFlowDelegate_];
  [v13 setShowCancelButton_];
  [v13 setReporter_];
  KeyPath = swift_getKeyPath();
  LOBYTE(v254) = sub_1BD187328(v11, KeyPath) & 1;
  v255 = v86;
  v256 = v87;
  sub_1BD4F8958();
  v88 = v255;
  v89 = v256;
  if (v256[2] <= v255[2] >> 3)
  {
    v257 = v255;
    sub_1BE048C84();
    sub_1BD534FE4(v89);
    v96 = v257;
  }

  else
  {
    sub_1BE048C84();
    v96 = sub_1BD2AD830(v89, v88, v90, v91, v92, v93, v94, v95);
  }

  v97 = v254;
  v98 = v11;
  sub_1BD12F750(v97, v88, v89, v98, KeyPath);
  v89, v99, v100, v101, v102, v103, v104, v105;
  v88, v106, v107, v108, v109, v110, v111, v112;

  KeyPath, v113, v114, v115, v116, v117, v118, v119;
  if (*(v96 + 16))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v120 = sub_1BE053D64();
    v128 = -1 << *(v96 + 32);
    v129 = v120 & ~v128;
    if ((*(v96 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129))
    {
      v130 = ~v128;
      while (1)
      {
        if (*(*(v96 + 48) + v129))
        {
          if (*(*(v96 + 48) + v129) != 1)
          {
            0x80000001BE117610, v121, v122, v123, v124, v125, v126, v127;
            v132 = 1;
            goto LABEL_57;
          }

          v131 = 0xEE00415049506165;
        }

        else
        {
          v131 = 0xE400000000000000;
        }

        v132 = sub_1BE053B84();
        v131, v133, v134, v135, v136, v137, v138, v139;
        if ((v132 & 1) == 0)
        {
          v129 = (v129 + 1) & v130;
          if ((*(v96 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129))
          {
            continue;
          }
        }

        goto LABEL_57;
      }
    }
  }

  v132 = 0;
LABEL_57:
  v140 = v253;
  [v253 setShowChinaPrivacyDisclosure_];
  v141 = swift_getKeyPath();
  v142 = sub_1BD187328(v98, v141);
  v144 = v143;
  v254 = v145;
  sub_1BD2A50F4(&v257, 2);
  v146 = v254;
  v147 = v98;
  sub_1BD12F750(v142 & 1, v144, v146, v147, v141);
  v146, v148, v149, v150, v151, v152, v153, v154;
  v144, v155, v156, v157, v158, v159, v160, v161;

  v141, v162, v163, v164, v165, v166, v167, v168;
  v176 = *(v96 + 16);
  v252 = v147;
  if (!v176 || (sub_1BE053D04(), sub_1BE052524(), v177 = sub_1BE053D64(), v178 = -1 << *(v96 + 32), v179 = v177 & ~v178, ((*(v96 + 56 + ((v179 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v179) & 1) == 0))
  {
    v182 = 0;
    goto LABEL_71;
  }

  v180 = ~v178;
  while (!*(*(v96 + 48) + v179))
  {
    v181 = 0xE400000000000000;
LABEL_64:
    v182 = sub_1BE053B84();
    v181, v183, v184, v185, v186, v187, v188, v189;
    if ((v182 & 1) == 0)
    {
      v179 = (v179 + 1) & v180;
      if ((*(v96 + 56 + ((v179 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v179))
      {
        continue;
      }
    }

    goto LABEL_70;
  }

  if (*(*(v96 + 48) + v179) == 2)
  {
    v181 = 0x80000001BE117610;
    goto LABEL_64;
  }

  v96, v169, v170, v171, v172, v173, v174, v175;
  v182 = 1;
  v96 = 0xEE00415049506165;
LABEL_70:
  v147 = v252;
LABEL_71:
  v96, v169, v170, v171, v172, v173, v174, v175;
  [v140 setShowSouthKoreaPrivacyDisclosure_];
  v190 = swift_getKeyPath();
  LODWORD(v250) = sub_1BD187328(v147, v190);
  v251 = v191;
  v193 = v192;
  sub_1BE053D04();
  sub_1BE052524();
  v194 = sub_1BE053D64();
  v202 = -1 << *(v193 + 32);
  v203 = v194 & ~v202;
  if (((*(v193 + 56 + ((v203 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v203) & 1) == 0)
  {
LABEL_79:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v254 = v193;
    sub_1BD2A9690(1, v203, isUniquelyReferenced_nonNull_native, v215, v216, v217, v218, v219);
    v193 = v254;
    goto LABEL_80;
  }

  v204 = ~v202;
  while (2)
  {
    if (!*(*(v193 + 48) + v203))
    {
      v205 = 0xE400000000000000;
LABEL_77:
      v206 = sub_1BE053B84();
      v205, v207, v208, v209, v210, v211, v212, v213;
      if (v206)
      {
        goto LABEL_80;
      }

      v203 = (v203 + 1) & v204;
      if (((*(v193 + 56 + ((v203 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v203) & 1) == 0)
      {
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  if (*(*(v193 + 48) + v203) == 2)
  {
    v205 = 0x80000001BE117610;
    goto LABEL_77;
  }

  0xEE00415049506165, v195, v196, v197, v198, v199, v200, v201;
LABEL_80:
  v220 = v252;
  v221 = v251;
  sub_1BD12F750(v250 & 1, v251, v193, v220, v190);
  v193, v222, v223, v224, v225, v226, v227, v228;
  v221, v229, v230, v231, v232, v233, v234, v235;

  v190, v236, v237, v238, v239, v240, v241, v242;
}

void sub_1BD2A4A7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    if (!a1)
    {
      return;
    }

    goto LABEL_5;
  }

  v5 = Strong;
  v6 = Strong + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = v5;
    sub_1BD8659A4(v9, &off_1F3B9B580, ObjectType, v7);

    Strong = swift_unknownObjectRelease();
    goto LABEL_4;
  }

  if (!a1)
  {
    return;
  }

LABEL_5:
  a1(Strong);
}

void sub_1BD2A4B50(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
    v4 = &v2[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      v9[0] = v3;
      v10 = 1;
      v7 = v2;
      v8 = v3;
      sub_1BD865A00(v7, &off_1F3B9B580, v9, ObjectType, v5);

      swift_unknownObjectRelease();
      sub_1BD12FF7C(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD2A4C68()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2A4CA4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD2A4E40(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BE053D04();
  v59 = v2;
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 0xED00006572757470;
    }

    else
    {
      v6 = 0xEE006E6F69736976;
    }
  }

  else
  {
    v6 = 0xEE007265626D754ELL;
  }

  sub_1BE052524();
  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1BE053D64();
  v21 = -1 << *(v5 + 32);
  v22 = v14 & ~v21;
  if (((*(v5 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_26:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *v59;
    sub_1BD2A939C(a2, v22, isUniquelyReferenced_nonNull_native, v46, v47, v48, v49, v50);
    *v59 = v60;
    result = 1;
    goto LABEL_29;
  }

  v23 = ~v21;
  while (1)
  {
    if (!*(*(v5 + 48) + v22))
    {
      v24 = 0x6472614365707974;
      v29 = 0x7265626D754ELL;
      goto LABEL_15;
    }

    if (*(*(v5 + 48) + v22) != 1)
    {
      break;
    }

    v24 = 0x61436172656D6163;
    v25 = 0xED00006572757470;
    v26 = a2;
    if (a2)
    {
      goto LABEL_16;
    }

LABEL_11:
    v27 = 0x6472614365707974;
    v28 = 0xEE007265626D754ELL;
    if (v24 == 0x6472614365707974)
    {
      goto LABEL_23;
    }

LABEL_24:
    v30 = sub_1BE053B84();
    v25, v31, v32, v33, v34, v35, v36, v37;
    v28, v38, v39, v40, v41, v42, v43, v44;
    if (v30)
    {
      goto LABEL_28;
    }

    v22 = (v22 + 1) & v23;
    if (((*(v5 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v24 = 0x6F72506F54706174;
  v29 = 0x6E6F69736976;
LABEL_15:
  v25 = (v29 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000);
  v26 = a2;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (v26 == 1)
  {
    v27 = 0x61436172656D6163;
  }

  else
  {
    v27 = 0x6F72506F54706174;
  }

  if (v26 == 1)
  {
    v28 = 0xED00006572757470;
  }

  else
  {
    v28 = 0xEE006E6F69736976;
  }

  if (v24 != v27)
  {
    goto LABEL_24;
  }

LABEL_23:
  if (v25 != v28)
  {
    goto LABEL_24;
  }

  v25, v15, v27, v16, v17, v18, v19, v20;
  v28, v52, v53, v54, v55, v56, v57, v58;
LABEL_28:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v22);
LABEL_29:
  *a1 = a2;
  return result;
}

uint64_t sub_1BD2A50F4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BE053D04();
  v58 = v2;
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 0xEE00415049506165;
    }

    else
    {
      v6 = 0x80000001BE117610;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  sub_1BE052524();
  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1BE053D64();
  v21 = -1 << *(v5 + 32);
  v22 = v14 & ~v21;
  if (((*(v5 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_26:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *v58;
    sub_1BD2A9690(a2, v22, isUniquelyReferenced_nonNull_native, v45, v46, v47, v48, v49);
    *v58 = v59;
    result = 1;
    goto LABEL_29;
  }

  v23 = ~v21;
  while (!*(*(v5 + 48) + v22))
  {
    v25 = 0xE400000000000000;
    v24 = 1919968359;
    v26 = a2;
    if (!a2)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v26 == 1)
    {
      v27 = 0x726F4B6874756F73;
    }

    else
    {
      v27 = 0xD000000000000010;
    }

    if (v26 == 1)
    {
      v28 = 0xEE00415049506165;
    }

    else
    {
      v28 = 0x80000001BE117610;
    }

    if (v24 == v27)
    {
      goto LABEL_23;
    }

LABEL_24:
    v29 = sub_1BE053B84();
    v25, v30, v31, v32, v33, v34, v35, v36;
    v28, v37, v38, v39, v40, v41, v42, v43;
    if (v29)
    {
      goto LABEL_28;
    }

    v22 = (v22 + 1) & v23;
    if (((*(v5 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (*(*(v5 + 48) + v22) == 1)
  {
    v24 = 0x726F4B6874756F73;
    v25 = 0xEE00415049506165;
    v26 = a2;
    if (!a2)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v24 = 0xD000000000000010;
  v25 = 0x80000001BE117610;
  v26 = a2;
  if (a2)
  {
    goto LABEL_13;
  }

LABEL_22:
  v28 = 0xE400000000000000;
  v27 = 1919968359;
  if (v24 != 1919968359)
  {
    goto LABEL_24;
  }

LABEL_23:
  if (v25 != v28)
  {
    goto LABEL_24;
  }

  v25, v15, v27, v16, v17, v18, v19, v20;
  v28, v51, v52, v53, v54, v55, v56, v57;
LABEL_28:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v22);
LABEL_29:
  *a1 = a2;
  return result;
}

uint64_t sub_1BD2A5394(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1BE053D04();
  sub_1BD251514(a2);
  v6 = v5;
  sub_1BE052524();
  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1BE053D64();
  v15 = -1 << *(v4 + 32);
  v16 = v14 & ~v15;
  if ((*(v4 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v60 = ~v15;
    while (1)
    {
      v17 = sub_1BE052434();
      v19 = v18;
      v20 = a2;
      v22 = sub_1BE052434();
      v28 = v21;
      if (v17 == v22 && v19 == v21)
      {
        break;
      }

      v29 = sub_1BE053B84();
      v19, v30, v31, v32, v33, v34, v35, v36;
      v28, v37, v38, v39, v40, v41, v42, v43;
      if (v29)
      {
        goto LABEL_9;
      }

      v16 = (v16 + 1) & v60;
      a2 = v20;
      if (((*(v4 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v19, v21, v22, v23, v24, v25, v26, v27;
    v28, v51, v52, v53, v54, v55, v56, v57;
LABEL_9:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v16);
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *v58;
    sub_1BD2A9934(a2, v16, isUniquelyReferenced_nonNull_native, v45, v46, v47, v48, v49);
    *v58 = v61;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BD2A5644(void *a1, uint64_t a2, char *a3)
{
  v7 = *v3;
  sub_1BE053D04();
  sub_1BE052524();
  v8 = sub_1BE053D64();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (sub_1BE053B84() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;
    sub_1BE048C84();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    sub_1BE048C84();
    sub_1BD2A9C18(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1BD2A57D0(void *a1, void *a2, uint64_t *a3, uint64_t *a4, char *a5, uint64_t (*a6)(void))
{
  v7 = v6;
  v10 = *v6;
  sub_1BE052434();
  v12 = v11;
  sub_1BE053D04();
  sub_1BE052524();
  v13 = sub_1BE053D64();
  v12, v14, v15, v16, v17, v18, v19, v20;
  v21 = -1 << *(v10 + 32);
  v22 = v13 & ~v21;
  if ((*(v10 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v23 = ~v21;
    while (1)
    {
      v24 = sub_1BE052434();
      v26 = v25;
      v27 = sub_1BE052434();
      v29 = v28;
      if (v24 == v27 && v26 == v28)
      {

        v26, v50, v51, v52, v53, v54, v55, v56;
        v29, v57, v58, v59, v60, v61, v62, v63;
        goto LABEL_12;
      }

      v31 = sub_1BE053B84();
      v26, v32, v33, v34, v35, v36, v37, v38;
      v29, v39, v40, v41, v42, v43, v44, v45;
      if (v31)
      {
        break;
      }

      v22 = (v22 + 1) & v23;
      if (((*(v10 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v64 = *(*(v10 + 48) + 8 * v22);
    *a1 = v64;
    v65 = v64;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *v7;
    v47 = a2;
    sub_1BD2A9D98(v47, v22, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6, v48);
    *v7 = v70;
    *a1 = v47;
    return 1;
  }
}

uint64_t sub_1BD2A5A04(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v13 = *v6;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](a2);
  v14 = sub_1BE053D64();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (*(*(v13 + 48) + 8 * v16) != a2)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    sub_1BD2A9FA0(a2, v16, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v6 = v20;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BD2A5B2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v5 = type metadata accessor for AvailablePass(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1BE053D04();
  sub_1BD49C81C();
  v11 = v10;
  sub_1BE052524();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = sub_1BE053D64();
  v20 = -1 << *(v9 + 32);
  v21 = v19 & ~v20;
  if ((*(v9 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = ~v20;
    v23 = *(v6 + 72);
    while (1)
    {
      sub_1BD133398(*(v9 + 48) + v23 * v21, v8, type metadata accessor for AvailablePass);
      v24 = sub_1BD498D50(v8, a2);
      sub_1BD2AF4D8(v8, type metadata accessor for AvailablePass);
      if (v24)
      {
        break;
      }

      v21 = (v21 + 1) & v22;
      if (((*(v9 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1BD2AF4D8(a2, type metadata accessor for AvailablePass);
    sub_1BD133398(*(v9 + 48) + v23 * v21, v28, type metadata accessor for AvailablePass);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD133398(a2, v8, type metadata accessor for AvailablePass);
    v29 = *v3;
    sub_1BD2AA124(v8, v21, isUniquelyReferenced_nonNull_native);
    v26 = v28;
    *v3 = v29;
    sub_1BD2AF470(a2, v26, type metadata accessor for AvailablePass);
    return 1;
  }
}

uint64_t sub_1BD2A5D88(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_1BE048C84();
    v9 = sub_1BE053714();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16;

      sub_1BD0E5E8C(0, &unk_1EBD406C0, 0x1E69B92F8);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
      return result;
    }

    result = sub_1BE053704();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_1BD2A6B60(v7, result + 1, &qword_1EBD398A8, &qword_1BE0B8DC0, &unk_1EBD406C0, 0x1E69B92F8);
    v27 = *(v26 + 16);
    if (*(v26 + 24) <= v27)
    {
      sub_1BD2A90F8(v27 + 1, &qword_1EBD398A8, &qword_1BE0B8DC0);
    }

    v25 = v8;
    sub_1BD2A9318(v25, v26);
    v6, v28, v29, v30, v31, v32, v33, v34;
    *v3 = v26;
    goto LABEL_16;
  }

  sub_1BD0E5E8C(0, &unk_1EBD406C0, 0x1E69B92F8);
  v18 = sub_1BE053064();
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v3;
    v25 = a2;
    sub_1BD2AA384(v25, v20, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = sub_1BE053074();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

uint64_t sub_1BD2A5FF0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1BE053CF4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1BD2AA514(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BD2A60D0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BD2AF428(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1BE052284();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BD2AF428(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1BE052334();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BD2AA634(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1BD2A63B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BE049B44();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BD2AF428(&qword_1EBD40688, MEMORY[0x1E6967B20], MEMORY[0x1E6967B30]);
  v33 = a2;
  v11 = sub_1BE052284();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BD2AF428(&qword_1EBD40690, MEMORY[0x1E6967B20], MEMORY[0x1E6967B38]);
      v21 = sub_1BE052334();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BD2AABC4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1BD2A6690(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_1BE048C84();
    v9 = sub_1BE053714();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16;

      sub_1BD0E5E8C(0, &qword_1EBD406D0, 0x1E69B92E8);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
      return result;
    }

    result = sub_1BE053704();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_1BD2A6B60(v7, result + 1, &qword_1EBD406D8, &unk_1BE0C8360, &qword_1EBD406D0, 0x1E69B92E8);
    v27 = *(v26 + 16);
    if (*(v26 + 24) <= v27)
    {
      sub_1BD2A90F8(v27 + 1, &qword_1EBD406D8, &unk_1BE0C8360);
    }

    v25 = v8;
    sub_1BD2A9318(v25, v26);
    v6, v28, v29, v30, v31, v32, v33, v34;
    *v3 = v26;
    goto LABEL_16;
  }

  sub_1BD0E5E8C(0, &qword_1EBD406D0, 0x1E69B92E8);
  v18 = sub_1BE053064();
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v3;
    v25 = a2;
    sub_1BD2AB1E0(v25, v20, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = sub_1BE053074();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

uint64_t sub_1BD2A68F8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_1BE048C84();
    v9 = sub_1BE053714();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16;

      sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
      return result;
    }

    result = sub_1BE053704();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_1BD2A6B60(v7, result + 1, &qword_1EBD406E8, &unk_1BE0DF8B0, &qword_1EBD406E0, 0x1E695CD58);
    v27 = *(v26 + 16);
    if (*(v26 + 24) <= v27)
    {
      sub_1BD2A90F8(v27 + 1, &qword_1EBD406E8, &unk_1BE0DF8B0);
    }

    v25 = v8;
    sub_1BD2A9318(v25, v26);
    v6, v28, v29, v30, v31, v32, v33, v34;
    *v3 = v26;
    goto LABEL_16;
  }

  sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
  v18 = sub_1BE053064();
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v3;
    v25 = a2;
    sub_1BD2AB370(v25, v20, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = sub_1BE053074();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

uint64_t sub_1BD2A6B60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1BE0537F4();
    v31 = v10;
    v11 = sub_1BE0536B4();
    if (sub_1BE053744())
    {
      sub_1BD0E5E8C(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v25 = *(v10 + 16);
        if (*(v10 + 24) <= v25)
        {
          sub_1BD2A90F8(v25 + 1, a3, a4);
        }

        v10 = v31;
        result = sub_1BE053064();
        v20 = v31 + 56;
        v21 = -1 << *(v31 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v31 + 56 + 8 * (v22 >> 6))) != 0)
        {
          v24 = __clz(__rbit64((-1 << v22) & ~*(v31 + 56 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v26 = 0;
          v27 = (63 - v21) >> 6;
          do
          {
            if (++v23 == v27 && (v26 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v28 = v23 == v27;
            if (v23 == v27)
            {
              v23 = 0;
            }

            v26 |= v28;
            v29 = *(v20 + 8 * v23);
          }

          while (v29 == -1);
          v24 = __clz(__rbit64(~v29)) + (v23 << 6);
        }

        *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v31 + 48) + 8 * v24) = v30;
        ++*(v31 + 16);
      }

      while (sub_1BE053744());
    }

    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

void sub_1BD2A6D60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40658, &qword_1BE0C8300);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v43 = v1;
    v13 = 0;
    v14 = (v3 + 56);
    v15 = 1 << *(v3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = v4 + 56;
    while (1)
    {
      if (!v17)
      {
        v22 = v13;
        while (1)
        {
          v13 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (v13 >= v18)
          {
            break;
          }

          v23 = v14[v13];
          ++v22;
          if (v23)
          {
            v21 = __clz(__rbit64(v23));
            v17 = (v23 - 1) & v23;
            goto LABEL_15;
          }
        }

        v42 = 1 << *(v3 + 32);
        if (v42 >= 64)
        {
          bzero((v3 + 56), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v14 = -1 << v42;
        }

        v2 = v43;
        *(v3 + 16) = 0;
        break;
      }

      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(*(v3 + 48) + (v21 | (v13 << 6)));
      sub_1BE053D04();
      if (v24)
      {
        if (v24 == 1)
        {
          v25 = 0xED00006572757470;
          goto LABEL_21;
        }

        v26 = 0x6E6F69736976;
      }

      else
      {
        v26 = 0x7265626D754ELL;
      }

      v25 = (v26 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000);
LABEL_21:
      sub_1BE052524();
      v25, v27, v28, v29, v30, v31, v32, v33;
      v34 = sub_1BE053D64();
      v35 = -1 << *(v12 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v19 + 8 * v37);
          if (v41 != -1)
          {
            v20 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v24;
      ++*(v12 + 16);
    }
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  *v2 = v12;
}

void sub_1BD2A7028(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40640, &qword_1BE0C82F8);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v13 = 0;
    v14 = (v3 + 56);
    v15 = 1 << *(v3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v3 + 56);
    v18 = (v15 + 63) >> 6;
    v42 = v1;
    v19 = v4 + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(*(v3 + 48) + (v21 | (v13 << 6)));
      sub_1BE053D04();
      if (v24)
      {
        if (v24 == 1)
        {
          v25 = 0xEE00415049506165;
        }

        else
        {
          v25 = 0x80000001BE117610;
        }
      }

      else
      {
        v25 = 0xE400000000000000;
      }

      sub_1BE052524();
      v25, v26, v27, v28, v29, v30, v31, v32;
      v33 = sub_1BE053D64();
      v34 = -1 << *(v12 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v36);
          if (v40 != -1)
          {
            v20 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v24;
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    v41 = 1 << *(v3 + 32);
    if (v41 >= 64)
    {
      bzero((v3 + 56), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v41;
    }

    v2 = v42;
    *(v3 + 16) = 0;
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  *v2 = v12;
}

void sub_1BD2A72DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39880, &qword_1BE0C8340);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v43 = v1;
    v13 = 0;
    v14 = (v3 + 56);
    v15 = 1 << *(v3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = v4 + 56;
    while (v17)
    {
      v34 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_16:
      v37 = *(*(v3 + 48) + (v34 | (v13 << 6)));
      sub_1BE053D04();
      sub_1BE052434();
      v21 = v20;
      sub_1BE052524();
      v21, v22, v23, v24, v25, v26, v27, v28;
      v29 = sub_1BE053D64();
      v30 = -1 << *(v12 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v30) >> 6;
        while (++v32 != v39 || (v38 & 1) == 0)
        {
          v40 = v32 == v39;
          if (v32 == v39)
          {
            v32 = 0;
          }

          v38 |= v40;
          v41 = *(v19 + 8 * v32);
          if (v41 != -1)
          {
            v33 = __clz(__rbit64(~v41)) + (v32 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v33 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v19 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      *(*(v12 + 48) + v33) = v37;
      ++*(v12 + 16);
    }

    v35 = v13;
    while (1)
    {
      v13 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v13 >= v18)
      {
        break;
      }

      v36 = v14[v13];
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v17 = (v36 - 1) & v36;
        goto LABEL_16;
      }
    }

    v42 = 1 << *(v3 + 32);
    if (v42 >= 64)
    {
      bzero((v3 + 56), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v42;
    }

    v2 = v43;
    *(v3 + 16) = 0;
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  *v2 = v12;
}

void sub_1BD2A7628(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1BE0537E4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
    v15 = 0;
    v16 = (v5 + 56);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 56);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(*(v5 + 48) + 8 * (v23 | (v15 << 6)));
      sub_1BE052434();
      v28 = v27;
      sub_1BE053D04();
      sub_1BE052524();
      v29 = sub_1BE053D64();
      v28, v30, v31, v32, v33, v34, v35, v36;
      v37 = -1 << *(v14 + 32);
      v38 = v29 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v21 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v21 + 8 * v39);
          if (v43 != -1)
          {
            v22 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v38) & ~*(v21 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v26;
      ++*(v14 + 16);
      v5 = v46;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v44 = 1 << *(v5 + 32);
    if (v44 >= 64)
    {
      bzero(v16, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v44;
    }

    v4 = v45;
    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  *v4 = v14;
}

void sub_1BD2A789C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39888, &unk_1BE0B8DA0);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v13 = 0;
    v14 = (v3 + 56);
    v15 = 1 << *(v3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = v4 + 56;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = (*(v3 + 48) + 16 * (v22 | (v13 << 6)));
      v26 = *v25;
      v27 = v25[1];
      sub_1BE053D04();
      sub_1BE052524();
      v28 = sub_1BE053D64();
      v29 = -1 << *(v12 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v26;
      v21[1] = v27;
      ++*(v12 + 16);
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      bzero((v3 + 56), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  *v2 = v12;
}

void sub_1BD2A7AFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1BE0537E4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 56);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 56);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(*(v5 + 48) + 8 * (v23 | (v15 << 6)));
      sub_1BE053D04();
      MEMORY[0x1BFB40DA0](v26);
      v27 = sub_1BE053D64();
      v28 = -1 << *(v14 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v21 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v21 + 8 * v30);
          if (v34 != -1)
          {
            v22 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v29) & ~*(v21 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v26;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v5 + 32);
    if (v35 >= 64)
    {
      bzero((v5 + 56), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v35;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  *v4 = v14;
}

void sub_1BD2A7D44(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v62);
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AvailablePass(0);
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD406F8, &qword_1BE0C8378);
  v10 = sub_1BE0537E4();
  v18 = v10;
  if (*(v9 + 16))
  {
    v57 = v1;
    v19 = 0;
    v20 = (v9 + 56);
    v21 = 1 << *(v9 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v9 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v10 + 56;
    v59 = v6;
    v60 = v9;
    while (1)
    {
      if (!v23)
      {
        v28 = v19;
        while (1)
        {
          v19 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v19 >= v24)
          {
            break;
          }

          v29 = v20[v19];
          ++v28;
          if (v29)
          {
            v27 = __clz(__rbit64(v29));
            v23 = (v29 - 1) & v29;
            goto LABEL_15;
          }
        }

        v55 = 1 << *(v9 + 32);
        if (v55 >= 64)
        {
          bzero(v20, ((v55 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v20 = -1 << v55;
        }

        v2 = v57;
        *(v9 + 16) = 0;
        goto LABEL_35;
      }

      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = *(v9 + 48);
      v63 = *(v61 + 72);
      v31 = v64;
      sub_1BD2AF470(v30 + v63 * (v27 | (v19 << 6)), v64, type metadata accessor for AvailablePass);
      sub_1BE053D04();
      sub_1BD133398(v31, v6, type metadata accessor for WrappedPass);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v33 = *v6;
        v34 = [v33 passIdentifier];
        if (!v34)
        {
          goto LABEL_38;
        }

LABEL_20:
        v35 = v34;
        sub_1BE052434();
        v37 = v36;

        goto LABEL_22;
      }

      v38 = v6;
      v39 = v58;
      sub_1BD2AF470(v38, v58, type metadata accessor for PlaceholderPass);
      v37 = *(v39 + 24);
      sub_1BE048C84();
      sub_1BD2AF4D8(v39, type metadata accessor for PlaceholderPass);
LABEL_22:
      sub_1BE052524();
      v37, v40, v41, v42, v43, v44, v45, v46;
      v47 = sub_1BE053D64();
      v48 = -1 << *(v18 + 32);
      v49 = v47 & ~v48;
      v50 = v49 >> 6;
      v6 = v59;
      v9 = v60;
      if (((-1 << v49) & ~*(v25 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v25 + 8 * v50);
          if (v54 != -1)
          {
            v26 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      v26 = __clz(__rbit64((-1 << v49) & ~*(v25 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_1BD2AF470(v64, *(v18 + 48) + v26 * v63, type metadata accessor for AvailablePass);
      ++*(v18 + 16);
    }

    v33 = *v6;
    v34 = [v33 uniqueID];
    if (!v34)
    {
      goto LABEL_39;
    }

    goto LABEL_20;
  }

LABEL_35:
  v9, v11, v12, v13, v14, v15, v16, v17;
  *v2 = v18;
}

void sub_1BD2A8204(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD40708, &unk_1BE0DFB20);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v13 = 0;
    v14 = (v3 + 56);
    v15 = 1 << *(v3 + 32);
    v33 = v2;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = v4 + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(*(v3 + 48) + 8 * (v21 | (v13 << 6)));
      v25 = sub_1BE053CF4();
      v26 = -1 << *(v12 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v24;
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v15 >= 64)
    {
      bzero((v3 + 56), 8 * v18);
    }

    else
    {
      *v14 = -1 << v15;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  *v2 = v12;
}

void sub_1BD2A8428(uint64_t a1)
{
  v2 = v1;
  v44 = sub_1BE04AFE4();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD406F0, &qword_1BE0C8370);
  v6 = sub_1BE0537E4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v38 = v1;
    v39 = v5;
    v15 = 0;
    v16 = (v5 + 56);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 56);
    v20 = (v17 + 63) >> 6;
    v42 = v3 + 32;
    v21 = v6 + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v5 + 48) + *(v3 + 72) * (v23 | (v15 << 6));
      v27 = *(v3 + 32);
      v40 = *(v3 + 72);
      v41 = v27;
      v27(v43, v26, v44);
      sub_1BD2AF428(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v28 = sub_1BE052284();
      v29 = -1 << *(v14 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v21 + 8 * v31);
          if (v35 != -1)
          {
            v22 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v41(*(v14 + 48) + v22 * v40, v43, v44);
      ++*(v14 + 16);
      v5 = v39;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v5 + 32);
    if (v36 >= 64)
    {
      bzero(v16, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v36;
    }

    v2 = v38;
    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  *v2 = v14;
}

void sub_1BD2A8784(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40680, &qword_1BE0DF720);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v42 = v1;
    v13 = 0;
    v14 = (v3 + 56);
    v15 = 1 << *(v3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = v4 + 56;
    while (v17)
    {
      v33 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v36 = *(*(v3 + 48) + (v33 | (v13 << 6)));
      sub_1BE053D04();
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v20 = 0xEC00000073746E65;
        }

        else
        {
          v20 = 0xE700000000000000;
        }
      }

      else if (v36)
      {
        v20 = 0xE90000000000006CLL;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      sub_1BE052524();
      v20, v21, v22, v23, v24, v25, v26, v27;
      v28 = sub_1BE053D64();
      v29 = -1 << *(v12 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v29) >> 6;
        while (++v31 != v38 || (v37 & 1) == 0)
        {
          v39 = v31 == v38;
          if (v31 == v38)
          {
            v31 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v31);
          if (v40 != -1)
          {
            v32 = __clz(__rbit64(~v40)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v32 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      *(*(v12 + 48) + v32) = v36;
      ++*(v12 + 16);
    }

    v34 = v13;
    while (1)
    {
      v13 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v35 = v14[v13];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v17 = (v35 - 1) & v35;
        goto LABEL_17;
      }
    }

    v41 = 1 << *(v3 + 32);
    if (v41 >= 64)
    {
      bzero((v3 + 56), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v41;
    }

    v2 = v42;
    *(v3 + 16) = 0;
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  *v2 = v12;
}

void sub_1BD2A8A58(uint64_t a1)
{
  v2 = v1;
  v44 = sub_1BE049B44();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40698, &unk_1BE0C8330);
  v6 = sub_1BE0537E4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v38 = v1;
    v39 = v5;
    v15 = 0;
    v16 = (v5 + 56);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 56);
    v20 = (v17 + 63) >> 6;
    v42 = v3 + 32;
    v21 = v6 + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v5 + 48) + *(v3 + 72) * (v23 | (v15 << 6));
      v27 = *(v3 + 32);
      v40 = *(v3 + 72);
      v41 = v27;
      v27(v43, v26, v44);
      sub_1BD2AF428(&qword_1EBD40688, MEMORY[0x1E6967B20], MEMORY[0x1E6967B30]);
      v28 = sub_1BE052284();
      v29 = -1 << *(v14 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v21 + 8 * v31);
          if (v35 != -1)
          {
            v22 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v41(*(v14 + 48) + v22 * v40, v43, v44);
      ++*(v14 + 16);
      v5 = v39;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v5 + 32);
    if (v36 >= 64)
    {
      bzero(v16, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v36;
    }

    v2 = v38;
    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  *v2 = v14;
}

void sub_1BD2A8DB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40670, &qword_1BE0C8318);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v13 = 0;
    v14 = (v3 + 56);
    v15 = 1 << *(v3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v3 + 56);
    v18 = (v15 + 63) >> 6;
    v42 = v1;
    v19 = v4 + 56;
    while (v17)
    {
      v33 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v36 = *(*(v3 + 48) + (v33 | (v13 << 6)));
      sub_1BE053D04();
      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v20 = 0x80000001BE117FC0;
        }

        else if (v36 == 4)
        {
          v20 = 0x80000001BE117FF0;
        }

        else
        {
          v20 = 0x80000001BE118020;
        }
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          v20 = 0xEF73736150656C62;
        }

        else
        {
          v20 = 0x80000001BE117FA0;
        }
      }

      else
      {
        v20 = 0x80000001BE117F70;
      }

      sub_1BE052524();
      v20, v21, v22, v23, v24, v25, v26, v27;
      v28 = sub_1BE053D64();
      v29 = -1 << *(v12 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v29) >> 6;
        while (++v31 != v38 || (v37 & 1) == 0)
        {
          v39 = v31 == v38;
          if (v31 == v38)
          {
            v31 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v31);
          if (v40 != -1)
          {
            v32 = __clz(__rbit64(~v40)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v32 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      *(*(v12 + 48) + v32) = v36;
      ++*(v12 + 16);
    }

    v34 = v13;
    while (1)
    {
      v13 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v13 >= v18)
      {
        break;
      }

      v35 = v14[v13];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v17 = (v35 - 1) & v35;
        goto LABEL_17;
      }
    }

    v41 = 1 << *(v3 + 32);
    if (v41 >= 64)
    {
      bzero((v3 + 56), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v41;
    }

    v2 = v42;
    *(v3 + 16) = 0;
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  *v2 = v12;
}

void sub_1BD2A90F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1BE0537E4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 56);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 56);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(*(v5 + 48) + 8 * (v23 | (v15 << 6)));
      v27 = sub_1BE053064();
      v28 = -1 << *(v14 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v21 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v21 + 8 * v30);
          if (v34 != -1)
          {
            v22 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v29) & ~*(v21 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v26;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v5 + 32);
    if (v35 >= 64)
    {
      bzero((v5 + 56), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  *v4 = v14;
}

unint64_t sub_1BD2A9318(uint64_t a1, uint64_t a2)
{
  sub_1BE053064();
  result = sub_1BE053694();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1BD2A939C(uint64_t result, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = a2;
  v11 = result;
  v12 = *(*v8 + 16);
  v13 = *(*v8 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BD2A6D60(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        sub_1BD534424();
        goto LABEL_33;
      }

      sub_1BD2AB500(v12 + 1);
    }

    v14 = *v8;
    sub_1BE053D04();
    if (v11)
    {
      if (v11 == 1)
      {
        v15 = 0xED00006572757470;
      }

      else
      {
        v15 = 0xEE006E6F69736976;
      }
    }

    else
    {
      v15 = 0xEE007265626D754ELL;
    }

    sub_1BE052524();
    v15, v16, v17, v18, v19, v20, v21, v22;
    v8 = v56;
    v23 = sub_1BE053D64();
    v24 = -1 << *(v14 + 32);
    v10 = v23 & ~v24;
    if ((*(v14 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v25 = ~v24;
      do
      {
        if (*(*(v14 + 48) + v10))
        {
          if (*(*(v14 + 48) + v10) == 1)
          {
            v26 = 0x61436172656D6163;
            v8 = 0xED00006572757470;
            v27 = v11;
            if (!v11)
            {
              goto LABEL_18;
            }

            goto LABEL_23;
          }

          v26 = 0x6F72506F54706174;
          v28 = 0x6E6F69736976;
        }

        else
        {
          v26 = 0x6472614365707974;
          v28 = 0x7265626D754ELL;
        }

        v8 = (v28 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000);
        v27 = v11;
        if (!v11)
        {
LABEL_18:
          a3 = 0x6472614365707974;
          v9 = 0xEE007265626D754ELL;
          if (v26 == 0x6472614365707974)
          {
            goto LABEL_30;
          }

          goto LABEL_31;
        }

LABEL_23:
        if (v27 == 1)
        {
          a3 = 0x61436172656D6163;
        }

        else
        {
          a3 = 0x6F72506F54706174;
        }

        if (v27 == 1)
        {
          v9 = 0xED00006572757470;
        }

        else
        {
          v9 = 0xEE006E6F69736976;
        }

        if (v26 == a3)
        {
LABEL_30:
          if (v8 == v9)
          {
            goto LABEL_36;
          }
        }

LABEL_31:
        v29 = sub_1BE053B84();
        v8, v30, v31, v32, v33, v34, v35, v36;
        v9, v37, v38, v39, v40, v41, v42, v43;
        if (v29)
        {
          goto LABEL_37;
        }

        v10 = (v10 + 1) & v25;
      }

      while (((*(v14 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }
  }

LABEL_33:
  v44 = *v55;
  *(*v55 + 8 * (v10 >> 6) + 56) |= 1 << v10;
  *(*(v44 + 48) + v10) = v11;
  v45 = *(v44 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
LABEL_36:
    v8, a2, a3, a4, a5, a6, a7, a8;
    v9, v48, v49, v50, v51, v52, v53, v54;
LABEL_37:
    sub_1BE053C04();
    __break(1u);
  }

  else
  {
    *(v44 + 16) = v47;
  }
}

void sub_1BD2A9690(uint64_t result, const char *a2, unint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = a2;
  v11 = result;
  v12 = *(*v8 + 16);
  v13 = *(*v8 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BD2A7028(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        sub_1BD534438();
        goto LABEL_33;
      }

      sub_1BD2AB798(v12 + 1);
    }

    v14 = *v8;
    sub_1BE053D04();
    v9 = "chinaPhoneNumber";
    if (v11)
    {
      if (v11 == 1)
      {
        v15 = 0xEE00415049506165;
      }

      else
      {
        v15 = 0x80000001BE117610;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    sub_1BE052524();
    v15, v16, v17, v18, v19, v20, v21, v22;
    v8 = v55;
    v23 = sub_1BE053D64();
    v24 = -1 << *(v14 + 32);
    v10 = v23 & ~v24;
    if ((*(v14 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v25 = ~v24;
      do
      {
        if (*(*(v14 + 48) + v10))
        {
          if (*(*(v14 + 48) + v10) == 1)
          {
            v26 = 0x726F4B6874756F73;
            v8 = 0xEE00415049506165;
            v27 = v11;
            if (!v11)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v26 = 0xD000000000000010;
            v8 = 0x80000001BE117610;
            v27 = v11;
            if (!v11)
            {
LABEL_29:
              v9 = 0xE400000000000000;
              a3 = 1919968359;
              if (v26 == 1919968359)
              {
                goto LABEL_30;
              }

              goto LABEL_31;
            }
          }
        }

        else
        {
          v8 = 0xE400000000000000;
          v26 = 1919968359;
          v27 = v11;
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        if (v27 == 1)
        {
          a3 = 0x726F4B6874756F73;
        }

        else
        {
          a3 = 0xD000000000000010;
        }

        if (v27 == 1)
        {
          v9 = 0xEE00415049506165;
        }

        else
        {
          v9 = 0x80000001BE117610;
        }

        if (v26 == a3)
        {
LABEL_30:
          if (v8 == v9)
          {
            goto LABEL_36;
          }
        }

LABEL_31:
        v28 = sub_1BE053B84();
        v8, v29, v30, v31, v32, v33, v34, v35;
        v9, v36, v37, v38, v39, v40, v41, v42;
        if (v28)
        {
          goto LABEL_37;
        }

        v10 = (v10 + 1) & v25;
      }

      while (((*(v14 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }
  }

LABEL_33:
  v43 = *v54;
  *(*v54 + 8 * (v10 >> 6) + 56) |= 1 << v10;
  *(*(v43 + 48) + v10) = v11;
  v44 = *(v43 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
LABEL_36:
    v8, a2, a3, a4, a5, a6, a7, a8;
    v9, v47, v48, v49, v50, v51, v52, v53;
LABEL_37:
    sub_1BE053C04();
    __break(1u);
  }

  else
  {
    *(v43 + 16) = v46;
  }
}

void sub_1BD2A9934(uint64_t result, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = a2;
  v55 = result;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    sub_1BD2A72DC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BD534460();
      goto LABEL_14;
    }

    sub_1BD2ABA1C(v11 + 1);
  }

  v13 = *v8;
  sub_1BE053D04();
  sub_1BD251514(v55);
  v15 = v14;
  sub_1BE052524();
  v15, v16, v17, v18, v19, v20, v21, v22;
  v8 = v56;
  v23 = sub_1BE053D64();
  v24 = -1 << *(v13 + 32);
  v10 = v23 & ~v24;
  if ((*(v13 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v54 = ~v24;
    do
    {
      v25 = sub_1BE052434();
      v8 = v26;
      a3 = sub_1BE052434();
      v9 = a2;
      if (v25 == a3 && v8 == a2)
      {
        goto LABEL_17;
      }

      v27 = sub_1BE053B84();
      v8, v28, v29, v30, v31, v32, v33, v34;
      v9, v35, v36, v37, v38, v39, v40, v41;
      if (v27)
      {
        goto LABEL_18;
      }

      v10 = (v10 + 1) & v54;
    }

    while (((*(v13 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

LABEL_14:
  v42 = *v53;
  *(*v53 + 8 * (v10 >> 6) + 56) |= 1 << v10;
  *(*(v42 + 48) + v10) = v55;
  v43 = *(v42 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (!v44)
  {
    *(v42 + 16) = v45;
    return;
  }

  __break(1u);
LABEL_17:
  v8, a2, a3, a4, a5, a6, a7, a8;
  v9, v46, v47, v48, v49, v50, v51, v52;
LABEL_18:
  sub_1BE053C04();
  __break(1u);
}

void sub_1BD2A9C18(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1BD2A789C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1BD5345C8();
      goto LABEL_16;
    }

    sub_1BD2ABF84(v8 + 1);
  }

  v10 = *v4;
  sub_1BE053D04();
  sub_1BE052524();
  v11 = sub_1BE053D64();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1BE053C04();
  __break(1u);
}

void sub_1BD2A9D98(uint64_t result, const char *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, char *a6, uint64_t (*a7)(void), uint64_t a8)
{
  v11 = v8;
  v12 = a2;
  v14 = *(*v8 + 16);
  v15 = *(*v8 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v10 = a6;
    sub_1BD2A7628(v14 + 1, a4, a5);
  }

  else
  {
    if (v15 > v14)
    {
      a7();
      goto LABEL_16;
    }

    v10 = a6;
    sub_1BD2ABD38(v14 + 1, a4, a5);
  }

  v16 = *v8;
  sub_1BE052434();
  v9 = v17;
  sub_1BE053D04();
  sub_1BE052524();
  v18 = sub_1BE053D64();
  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = -1 << *(v16 + 32);
  v12 = v18 & ~v26;
  if ((*(v16 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v27 = ~v26;
    (v10)(0);
    do
    {
      v28 = sub_1BE052434();
      v10 = v29;
      a3 = sub_1BE052434();
      v30 = v28;
      v9 = a2;
      if (v30 == a3 && v10 == a2)
      {
        goto LABEL_19;
      }

      v32 = sub_1BE053B84();
      v10, v33, v34, v35, v36, v37, v38, v39;
      v9, v40, v41, v42, v43, v44, v45, v46;
      if (v32)
      {
        goto LABEL_20;
      }

      v12 = (v12 + 1) & v27;
    }

    while (((*(v16 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

LABEL_16:
  v47 = *v11;
  *(*v11 + 8 * (v12 >> 6) + 56) |= 1 << v12;
  *(*(v47 + 48) + 8 * v12) = result;
  v48 = *(v47 + 16);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (!v49)
  {
    *(v47 + 16) = v50;
    return;
  }

  __break(1u);
LABEL_19:
  v10, a2, a3, a4, a5, a6, a7, a8;
  v9, v51, v52, v53, v54, v55, v56, v57;
LABEL_20:
  sub_1BE053C04();
  __break(1u);
}

uint64_t sub_1BD2A9FA0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v8 = result;
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1BD2A7AFC(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      v12 = a2;
      result = a7();
      a2 = v12;
      goto LABEL_12;
    }

    v11 = a6;
    sub_1BD2AC1BC(v9 + 1, a4, a5);
  }

  v13 = *v7;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v8);
  result = sub_1BE053D64();
  v14 = -1 << *(v13 + 32);
  a2 = result & ~v14;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = result & ~v14;
    result = v11(0);
    a2 = v16;
    while (*(*(v13 + 48) + 8 * a2) != v8)
    {
      a2 = (a2 + 1) & v15;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v8;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

uint64_t sub_1BD2AA124(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AvailablePass(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v35 = v10;
    sub_1BD2A7D44(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1BD53487C();
      goto LABEL_12;
    }

    v35 = v10;
    sub_1BD2AC3D4(v13 + 1);
  }

  v15 = *v4;
  sub_1BE053D04();
  sub_1BD49C81C();
  v17 = v16;
  sub_1BE052524();
  v17, v18, v19, v20, v21, v22, v23, v24;
  v25 = sub_1BE053D64();
  v26 = -1 << *(v15 + 32);
  a2 = v25 & ~v26;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = ~v26;
    v28 = *(v9 + 72);
    do
    {
      sub_1BD133398(*(v15 + 48) + v28 * a2, v12, type metadata accessor for AvailablePass);
      v29 = sub_1BD498D50(v12, a1);
      sub_1BD2AF4D8(v12, type metadata accessor for AvailablePass);
      if (v29)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v27;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v30 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1BD2AF470(a1, *(v30 + 48) + *(v9 + 72) * a2, type metadata accessor for AvailablePass);
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v30 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

void sub_1BD2AA384(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A90F8(v6 + 1, &qword_1EBD398A8, &qword_1BE0B8DC0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BD534A88();
      goto LABEL_12;
    }

    sub_1BD2AD624(v6 + 1, &qword_1EBD398A8, &qword_1BE0B8DC0);
  }

  v8 = *v3;
  v9 = sub_1BE053064();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1BD0E5E8C(0, &unk_1EBD406C0, 0x1E69B92F8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1BE053074();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BE053C04();
  __break(1u);
}

void sub_1BD2AA514(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A8204(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1BD534A9C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BD2AC844(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1BE053CF4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BE053C04();
  __break(1u);
}

uint64_t sub_1BD2AA634(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A8428(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BD534BDC();
      goto LABEL_12;
    }

    sub_1BD2ACA34(v11 + 1);
  }

  v13 = *v3;
  sub_1BD2AF428(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v14 = sub_1BE052284();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1BD2AF428(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = sub_1BE052334();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

void sub_1BD2AA8D8(uint64_t result, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = a2;
  v67 = result;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_57;
  }

  if (a3)
  {
    sub_1BD2A8784(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BD534C04();
      goto LABEL_57;
    }

    sub_1BD2ACD50(v11 + 1);
  }

  v9 = 0x6E776F6E6B6E75;
  v13 = *v8;
  sub_1BE053D04();
  v14 = 0xE700000000000000;
  v15 = 0xEC00000073746E65;
  if (v67 != 2)
  {
    v15 = 0xE700000000000000;
  }

  if (v67)
  {
    v14 = 0xE90000000000006CLL;
  }

  if (v67 <= 1u)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  sub_1BE052524();
  v16, v17, v18, v19, v20, v21, v22, v23;
  v8 = v68;
  v24 = sub_1BE053D64();
  v25 = -1 << *(v13 + 32);
  v10 = v24 & ~v25;
  v66 = v13 + 56;
  if ((*(v13 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v65 = ~v25;
    do
    {
      v26 = *(*(v13 + 48) + v10);
      v27 = v26 == 2 ? 0x6D6C6C6174736E69 : 0x73647261776572;
      v28 = v26 == 2 ? 0xEC00000073746E65 : 0xE700000000000000;
      v29 = *(*(v13 + 48) + v10) ? 0x6C75466E49796170 : v9;
      v30 = *(*(v13 + 48) + v10) ? 0xE90000000000006CLL : 0xE700000000000000;
      v31 = (*(*(v13 + 48) + v10) <= 1u ? v29 : v27);
      v8 = (*(*(v13 + 48) + v10) <= 1u ? v30 : v28);
      v32 = v67 == 2 ? 0x6D6C6C6174736E69 : 0x73647261776572;
      v33 = v67 == 2 ? 0xEC00000073746E65 : 0xE700000000000000;
      v34 = v9;
      v35 = v67 ? 0x6C75466E49796170 : v9;
      v36 = v67 ? 0xE90000000000006CLL : 0xE700000000000000;
      a3 = (v67 <= 1u ? v35 : v32);
      v9 = v67 <= 1u ? v36 : v33;
      v37 = v13;
      if (v31 == a3 && v8 == v9)
      {
        goto LABEL_60;
      }

      v38 = sub_1BE053B84();
      v8, v39, v40, v41, v42, v43, v44, v45;
      v9, v46, v47, v48, v49, v50, v51, v52;
      if (v38)
      {
        goto LABEL_61;
      }

      v10 = (v10 + 1) & v65;
      v9 = v34;
      v13 = v37;
    }

    while (((*(v66 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

LABEL_57:
  v53 = *v64;
  *(*v64 + 8 * (v10 >> 6) + 56) |= 1 << v10;
  *(*(v53 + 48) + v10) = v67;
  v54 = *(v53 + 16);
  v55 = __OFADD__(v54, 1);
  v56 = v54 + 1;
  if (!v55)
  {
    *(v53 + 16) = v56;
    return;
  }

  __break(1u);
LABEL_60:
  v8, a2, a3, a4, a5, a6, a7, a8;
  v9, v57, v58, v59, v60, v61, v62, v63;
LABEL_61:
  sub_1BE053C04();
  __break(1u);
}

uint64_t sub_1BD2AABC4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1BE049B44();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A8A58(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BD534C18();
      goto LABEL_12;
    }

    sub_1BD2ACFF4(v11 + 1);
  }

  v13 = *v3;
  sub_1BD2AF428(&qword_1EBD40688, MEMORY[0x1E6967B20], MEMORY[0x1E6967B30]);
  v14 = sub_1BE052284();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1BD2AF428(&qword_1EBD40690, MEMORY[0x1E6967B20], MEMORY[0x1E6967B38]);
      v22 = sub_1BE052334();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

void sub_1BD2AAE68(uint64_t result, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = a2;
  v63 = result;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_60;
  }

  if (a3)
  {
    sub_1BD2A8DB4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BD534E78();
      goto LABEL_60;
    }

    sub_1BD2AD310(v11 + 1);
  }

  v13 = *v8;
  sub_1BE053D04();
  v14 = 0x80000001BE117FC0;
  v15 = 0x80000001BE117FF0;
  v9 = "hUnavailablePaymentOffer";
  if (v63 != 4)
  {
    v15 = 0x80000001BE118020;
  }

  if (v63 != 3)
  {
    v14 = v15;
  }

  v16 = 0x80000001BE117FA0;
  if (v63 == 1)
  {
    v16 = 0xEF73736150656C62;
  }

  if (!v63)
  {
    v16 = 0x80000001BE117F70;
  }

  if (v63 <= 2u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  sub_1BE052524();
  v17, v18, v19, v20, v21, v22, v23, v24;
  v8 = v64;
  v25 = sub_1BE053D64();
  v26 = -1 << *(v13 + 32);
  v10 = v25 & ~v26;
  if ((*(v13 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v62 = ~v26;
    do
    {
      v27 = *(*(v13 + 48) + v10);
      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = 0xD00000000000002ALL;
          v8 = 0x80000001BE117FC0;
        }

        else
        {
          if (v27 == 4)
          {
            v28 = 0xD000000000000028;
          }

          else
          {
            v28 = 0xD000000000000017;
          }

          if (v27 == 4)
          {
            v8 = 0x80000001BE117FF0;
          }

          else
          {
            v8 = 0x80000001BE118020;
          }
        }
      }

      else if (*(*(v13 + 48) + v10))
      {
        if (v27 == 1)
        {
          v28 = 0x616C696176616E75;
        }

        else
        {
          v28 = 0xD000000000000016;
        }

        if (v27 == 1)
        {
          v8 = 0xEF73736150656C62;
        }

        else
        {
          v8 = 0x80000001BE117FA0;
        }
      }

      else
      {
        v28 = 0xD000000000000015;
        v8 = 0x80000001BE117F70;
      }

      v29 = 0xD00000000000002ALL;
      v30 = 0xD000000000000028;
      if (v63 == 4)
      {
        v31 = 0x80000001BE117FF0;
      }

      else
      {
        v30 = 0xD000000000000017;
        v31 = 0x80000001BE118020;
      }

      if (v63 == 3)
      {
        v32 = 0x80000001BE117FC0;
      }

      else
      {
        v29 = v30;
        v32 = v31;
      }

      v33 = 0x616C696176616E75;
      if (v63 != 1)
      {
        v33 = 0xD000000000000016;
      }

      v34 = 0xEF73736150656C62;
      if (v63 != 1)
      {
        v34 = 0x80000001BE117FA0;
      }

      if (!v63)
      {
        v33 = 0xD000000000000015;
        v34 = 0x80000001BE117F70;
      }

      a3 = (v63 <= 2u ? v33 : v29);
      v9 = (v63 <= 2u ? v34 : v32);
      if (v28 == a3 && v8 == v9)
      {
        goto LABEL_63;
      }

      v35 = sub_1BE053B84();
      v8, v36, v37, v38, v39, v40, v41, v42;
      v9, v43, v44, v45, v46, v47, v48, v49;
      if (v35)
      {
        goto LABEL_64;
      }

      v10 = (v10 + 1) & v62;
    }

    while (((*(v13 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

LABEL_60:
  v50 = *v61;
  *(*v61 + 8 * (v10 >> 6) + 56) |= 1 << v10;
  *(*(v50 + 48) + v10) = v63;
  v51 = *(v50 + 16);
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (!v52)
  {
    *(v50 + 16) = v53;
    return;
  }

  __break(1u);
LABEL_63:
  v8, a2, a3, a4, a5, a6, a7, a8;
  v9, v54, v55, v56, v57, v58, v59, v60;
LABEL_64:
  sub_1BE053C04();
  __break(1u);
}

void sub_1BD2AB1E0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A90F8(v6 + 1, &qword_1EBD406D8, &unk_1BE0C8360);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BD534FBC();
      goto LABEL_12;
    }

    sub_1BD2AD624(v6 + 1, &qword_1EBD406D8, &unk_1BE0C8360);
  }

  v8 = *v3;
  v9 = sub_1BE053064();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1BD0E5E8C(0, &qword_1EBD406D0, 0x1E69B92E8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1BE053074();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BE053C04();
  __break(1u);
}

void sub_1BD2AB370(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A90F8(v6 + 1, &qword_1EBD406E8, &unk_1BE0DF8B0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BD534FD0();
      goto LABEL_12;
    }

    sub_1BD2AD624(v6 + 1, &qword_1EBD406E8, &unk_1BE0DF8B0);
  }

  v8 = *v3;
  v9 = sub_1BE053064();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1BE053074();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BE053C04();
  __break(1u);
}

void sub_1BD2AB500(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40658, &qword_1BE0C8300);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (!*(v3 + 16))
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
LABEL_32:
    *v2 = v12;
    return;
  }

  v41 = v1;
  v13 = 0;
  v14 = 1 << *(v3 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v3 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = v4 + 56;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_15:
    v23 = *(*(v3 + 48) + (v20 | (v13 << 6)));
    sub_1BE053D04();
    if (v23)
    {
      if (v23 == 1)
      {
        v24 = 0xED00006572757470;
        goto LABEL_21;
      }

      v25 = 0x6E6F69736976;
    }

    else
    {
      v25 = 0x7265626D754ELL;
    }

    v24 = (v25 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000);
LABEL_21:
    sub_1BE052524();
    v24, v26, v27, v28, v29, v30, v31, v32;
    v33 = sub_1BE053D64();
    v34 = -1 << *(v12 + 32);
    v35 = v33 & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v34) >> 6;
      while (++v36 != v38 || (v37 & 1) == 0)
      {
        v39 = v36 == v38;
        if (v36 == v38)
        {
          v36 = 0;
        }

        v37 |= v39;
        v40 = *(v18 + 8 * v36);
        if (v40 != -1)
        {
          v19 = __clz(__rbit64(~v40)) + (v36 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_34;
    }

    v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v12 + 48) + v19) = v23;
    ++*(v12 + 16);
  }

  v21 = v13;
  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v17)
    {
      v3, v5, v6, v7, v8, v9, v10, v11;
      v2 = v41;
      goto LABEL_32;
    }

    v22 = *(v3 + 56 + 8 * v13);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v16 = (v22 - 1) & v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1BD2AB798(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40640, &qword_1BE0C82F8);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v3 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v3 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v1;
    v18 = v4 + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(*(v3 + 48) + (v20 | (v13 << 6)));
      sub_1BE053D04();
      if (v23)
      {
        if (v23 == 1)
        {
          v24 = 0xEE00415049506165;
        }

        else
        {
          v24 = 0x80000001BE117610;
        }
      }

      else
      {
        v24 = 0xE400000000000000;
      }

      sub_1BE052524();
      v24, v25, v26, v27, v28, v29, v30, v31;
      v32 = sub_1BE053D64();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v12 + 48) + v19) = v23;
      ++*(v12 + 16);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        v3, v5, v6, v7, v8, v9, v10, v11;
        v2 = v40;
        goto LABEL_31;
      }

      v22 = *(v3 + 56 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
LABEL_31:
    *v2 = v12;
  }
}

void sub_1BD2ABA1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39880, &qword_1BE0C8340);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v41 = v1;
    v13 = 0;
    v14 = 1 << *(v3 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v3 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = v4 + 56;
    while (v16)
    {
      v33 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_16:
      v36 = *(*(v3 + 48) + (v33 | (v13 << 6)));
      sub_1BE053D04();
      sub_1BE052434();
      v20 = v19;
      sub_1BE052524();
      v20, v21, v22, v23, v24, v25, v26, v27;
      v28 = sub_1BE053D64();
      v29 = -1 << *(v12 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v29) >> 6;
        while (++v31 != v38 || (v37 & 1) == 0)
        {
          v39 = v31 == v38;
          if (v31 == v38)
          {
            v31 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v31);
          if (v40 != -1)
          {
            v32 = __clz(__rbit64(~v40)) + (v31 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v32 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v18 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      *(*(v12 + 48) + v32) = v36;
      ++*(v12 + 16);
    }

    v34 = v13;
    while (1)
    {
      v13 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        v3, v5, v6, v7, v8, v9, v10, v11;
        v2 = v41;
        goto LABEL_27;
      }

      v35 = *(v3 + 56 + 8 * v13);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v16 = (v35 - 1) & v35;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
LABEL_27:
    *v2 = v12;
  }
}

void sub_1BD2ABD38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1BE0537E4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
    v15 = 0;
    v16 = v5 + 56;
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 56);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(*(v5 + 48) + 8 * (v23 | (v15 << 6)));
      sub_1BE052434();
      v28 = v27;
      sub_1BE053D04();
      v29 = v26;
      sub_1BE052524();
      v30 = sub_1BE053D64();
      v28, v31, v32, v33, v34, v35, v36, v37;
      v38 = -1 << *(v14 + 32);
      v39 = v30 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v21 + 8 * v40);
          if (v44 != -1)
          {
            v22 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v22 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v29;
      ++*(v14 + 16);
      v5 = v46;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        v5, v7, v8, v9, v10, v11, v12, v13;
        v4 = v45;
        goto LABEL_26;
      }

      v25 = *(v16 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_26:
    *v4 = v14;
  }
}

void sub_1BD2ABF84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39888, &unk_1BE0B8DA0);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v3 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v3 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = v4 + 56;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = (*(v3 + 48) + 16 * (v21 | (v13 << 6)));
      v25 = *v24;
      v26 = v24[1];
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v27 = sub_1BE053D64();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v12 + 48) + 16 * v19);
      *v20 = v25;
      v20[1] = v26;
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        v3, v5, v6, v7, v8, v9, v10, v11;
        v2 = v1;
        goto LABEL_26;
      }

      v23 = *(v3 + 56 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
LABEL_26:
    *v2 = v12;
  }
}

void sub_1BD2AC1BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1BE0537E4();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = 0;
    v16 = 1 << *(v5 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v5 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = v6 + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(*(v5 + 48) + 8 * (v22 | (v15 << 6)));
      sub_1BE053D04();
      MEMORY[0x1BFB40DA0](v25);
      v26 = sub_1BE053D64();
      v27 = -1 << *(v14 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v20 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v20 + 8 * v29);
          if (v33 != -1)
          {
            v21 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v21 = __clz(__rbit64((-1 << v28) & ~*(v20 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v14 + 48) + 8 * v21) = v25;
      ++*(v14 + 16);
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        v5, v7, v8, v9, v10, v11, v12, v13;
        v4 = v3;
        goto LABEL_26;
      }

      v24 = *(v5 + 56 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_26:
    *v4 = v14;
  }
}

void sub_1BD2AC3D4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v61);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AvailablePass(0);
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD406F8, &qword_1BE0C8378);
  v10 = sub_1BE0537E4();
  v18 = v10;
  if (!*(v9 + 16))
  {
    v9, v11, v12, v13, v14, v15, v16, v17;
LABEL_33:
    *v2 = v18;
    return;
  }

  v56 = v1;
  v19 = 0;
  v20 = v9 + 56;
  v21 = 1 << *(v9 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v9 + 56);
  v24 = (v21 + 63) >> 6;
  v25 = v10 + 56;
  v58 = v9;
  v59 = v6;
  while (v23)
  {
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_15:
    v30 = *(v9 + 48);
    v62 = *(v60 + 72);
    v31 = v63;
    sub_1BD133398(v30 + v62 * (v27 | (v19 << 6)), v63, type metadata accessor for AvailablePass);
    sub_1BE053D04();
    sub_1BD133398(v31, v6, type metadata accessor for WrappedPass);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v33 = *v6;
      v34 = [*v6 uniqueID];
      if (!v34)
      {
        goto LABEL_37;
      }

LABEL_20:
      v35 = v34;
      sub_1BE052434();
      v37 = v36;

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v33 = *v6;
      v34 = [*v6 passIdentifier];
      if (!v34)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }

    v38 = v6;
    v39 = v57;
    sub_1BD2AF470(v38, v57, type metadata accessor for PlaceholderPass);
    v37 = *(v39 + 24);
    sub_1BE048C84();
    sub_1BD2AF4D8(v39, type metadata accessor for PlaceholderPass);
LABEL_22:
    sub_1BE052524();
    v37, v40, v41, v42, v43, v44, v45, v46;
    v47 = sub_1BE053D64();
    v48 = -1 << *(v18 + 32);
    v49 = v47 & ~v48;
    v50 = v49 >> 6;
    v6 = v59;
    if (((-1 << v49) & ~*(v25 + 8 * (v49 >> 6))) == 0)
    {
      v51 = 0;
      v52 = (63 - v48) >> 6;
      v9 = v58;
      while (++v50 != v52 || (v51 & 1) == 0)
      {
        v53 = v50 == v52;
        if (v50 == v52)
        {
          v50 = 0;
        }

        v51 |= v53;
        v54 = *(v25 + 8 * v50);
        if (v54 != -1)
        {
          v26 = __clz(__rbit64(~v54)) + (v50 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_35;
    }

    v26 = __clz(__rbit64((-1 << v49) & ~*(v25 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
    v9 = v58;
LABEL_7:
    *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    sub_1BD2AF470(v63, *(v18 + 48) + v26 * v62, type metadata accessor for AvailablePass);
    ++*(v18 + 16);
  }

  v28 = v19;
  while (1)
  {
    v19 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      v9, v11, v12, v13, v14, v15, v16, v17;
      v2 = v56;
      goto LABEL_33;
    }

    v29 = *(v20 + 8 * v19);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v23 = (v29 - 1) & v29;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1BD2AC844(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD40708, &unk_1BE0DFB20);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v3 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v3 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = v4 + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(*(v3 + 48) + 8 * (v20 | (v13 << 6)));
      v24 = sub_1BE053CF4();
      v25 = -1 << *(v12 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v12 + 48) + 8 * v19) = v23;
      ++*(v12 + 16);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        goto LABEL_24;
      }

      v22 = *(v3 + 56 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:
    v3, v5, v6, v7, v8, v9, v10, v11;
    *v2 = v12;
  }
}

void sub_1BD2ACA34(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1BE04AFE4();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD406F0, &qword_1BE0C8370);
  v14 = sub_1BE0537E4();
  v15 = v6;
  if (*(v6 + 16))
  {
    v36 = v1;
    v16 = 0;
    v17 = v6 + 56;
    v18 = 1 << *(v6 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v6 + 56);
    v21 = (v18 + 63) >> 6;
    v39 = v3 + 16;
    v40 = v3;
    v22 = v14 + 56;
    v37 = (v3 + 32);
    v38 = v15;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = *(v40 + 72);
      (*(v40 + 16))(v5, v15[6] + v27 * (v24 | (v16 << 6)), v41);
      sub_1BD2AF428(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v28 = sub_1BE052284();
      v29 = -1 << *(v14 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v22 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v22 + 8 * v31);
          if (v35 != -1)
          {
            v23 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v23 = __clz(__rbit64((-1 << v30) & ~*(v22 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v37)(*(v14 + 48) + v23 * v27, v5, v41);
      ++*(v14 + 16);
      v15 = v38;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        v15, v7, v8, v9, v10, v11, v12, v13;
        v2 = v36;
        goto LABEL_26;
      }

      v26 = *(v17 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v6, v7, v8, v9, v10, v11, v12, v13;
LABEL_26:
    *v2 = v14;
  }
}

void sub_1BD2ACD50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40680, &qword_1BE0DF720);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v40 = v1;
    v13 = 0;
    v14 = 1 << *(v3 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v3 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = v4 + 56;
    while (v16)
    {
      v32 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v35 = *(*(v3 + 48) + (v32 | (v13 << 6)));
      sub_1BE053D04();
      if (v35 > 1)
      {
        if (v35 == 2)
        {
          v19 = 0xEC00000073746E65;
        }

        else
        {
          v19 = 0xE700000000000000;
        }
      }

      else if (v35)
      {
        v19 = 0xE90000000000006CLL;
      }

      else
      {
        v19 = 0xE700000000000000;
      }

      sub_1BE052524();
      v19, v20, v21, v22, v23, v24, v25, v26;
      v27 = sub_1BE053D64();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v28) >> 6;
        while (++v30 != v37 || (v36 & 1) == 0)
        {
          v38 = v30 == v37;
          if (v30 == v37)
          {
            v30 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v30);
          if (v39 != -1)
          {
            v31 = __clz(__rbit64(~v39)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_35;
      }

      v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      *(*(v12 + 48) + v31) = v35;
      ++*(v12 + 16);
    }

    v33 = v13;
    while (1)
    {
      v13 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        v3, v5, v6, v7, v8, v9, v10, v11;
        v2 = v40;
        goto LABEL_33;
      }

      v34 = *(v3 + 56 + 8 * v13);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v16 = (v34 - 1) & v34;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
LABEL_33:
    *v2 = v12;
  }
}

void sub_1BD2ACFF4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1BE049B44();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40698, &unk_1BE0C8330);
  v14 = sub_1BE0537E4();
  v15 = v6;
  if (*(v6 + 16))
  {
    v36 = v1;
    v16 = 0;
    v17 = v6 + 56;
    v18 = 1 << *(v6 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v6 + 56);
    v21 = (v18 + 63) >> 6;
    v39 = v3 + 16;
    v40 = v3;
    v22 = v14 + 56;
    v37 = (v3 + 32);
    v38 = v15;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = *(v40 + 72);
      (*(v40 + 16))(v5, v15[6] + v27 * (v24 | (v16 << 6)), v41);
      sub_1BD2AF428(&qword_1EBD40688, MEMORY[0x1E6967B20], MEMORY[0x1E6967B30]);
      v28 = sub_1BE052284();
      v29 = -1 << *(v14 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v22 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v22 + 8 * v31);
          if (v35 != -1)
          {
            v23 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v23 = __clz(__rbit64((-1 << v30) & ~*(v22 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v37)(*(v14 + 48) + v23 * v27, v5, v41);
      ++*(v14 + 16);
      v15 = v38;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        v15, v7, v8, v9, v10, v11, v12, v13;
        v2 = v36;
        goto LABEL_26;
      }

      v26 = *(v17 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v6, v7, v8, v9, v10, v11, v12, v13;
LABEL_26:
    *v2 = v14;
  }
}

void sub_1BD2AD310(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40670, &qword_1BE0C8318);
  v4 = sub_1BE0537E4();
  v12 = v4;
  if (*(v3 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v3 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v3 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v1;
    v18 = v4 + 56;
    while (v16)
    {
      v32 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v35 = *(*(v3 + 48) + (v32 | (v13 << 6)));
      sub_1BE053D04();
      if (v35 > 2)
      {
        if (v35 == 3)
        {
          v19 = 0x80000001BE117FC0;
        }

        else if (v35 == 4)
        {
          v19 = 0x80000001BE117FF0;
        }

        else
        {
          v19 = 0x80000001BE118020;
        }
      }

      else if (v35)
      {
        if (v35 == 1)
        {
          v19 = 0xEF73736150656C62;
        }

        else
        {
          v19 = 0x80000001BE117FA0;
        }
      }

      else
      {
        v19 = 0x80000001BE117F70;
      }

      sub_1BE052524();
      v19, v20, v21, v22, v23, v24, v25, v26;
      v27 = sub_1BE053D64();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v28) >> 6;
        while (++v30 != v37 || (v36 & 1) == 0)
        {
          v38 = v30 == v37;
          if (v30 == v37)
          {
            v30 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v30);
          if (v39 != -1)
          {
            v31 = __clz(__rbit64(~v39)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_39;
      }

      v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      *(*(v12 + 48) + v31) = v35;
      ++*(v12 + 16);
    }

    v33 = v13;
    while (1)
    {
      v13 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        v3, v5, v6, v7, v8, v9, v10, v11;
        v2 = v40;
        goto LABEL_37;
      }

      v34 = *(v3 + 56 + 8 * v13);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v16 = (v34 - 1) & v34;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
LABEL_37:
    *v2 = v12;
  }
}