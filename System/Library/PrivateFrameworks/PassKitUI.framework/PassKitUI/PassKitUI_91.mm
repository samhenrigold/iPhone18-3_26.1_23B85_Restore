void sub_1BD99EEF0(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a2;
    sub_1BE04D0E4();
    v15 = a2;
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C54();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = a4;
      v19 = v18;
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = a2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1BD026000, v16, v17, "Terminating flow because failed to validate preflight with error: \n%@", v19, 0xCu);
      sub_1BD1E236C(v20);
      MEMORY[0x1BFB45F20](v20, -1, -1);
      v23 = v19;
      a4 = v36;
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v24 = swift_allocObject();
    v24[2] = a4;
    v24[3] = a5;
    sub_1BE048964();
    sub_1BD99ED5C(a2, sub_1BD1B5F6C, v24);
    v24, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    sub_1BD99EA4C();
    v33 = v32;

    *(a3 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_allowManualEntry) = v33 & 1;
    a4(a1 & 1);
  }
}

id sub_1BD99F148(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a1)
  {
    return result;
  }

  v9 = *(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_context);
  v10 = sub_1BE04BBD4();
  v11 = [v10 associatedCredentials];

  if (v11)
  {
    sub_1BD0E5E8C(0, &qword_1EBD444C0, 0x1E69B8BC8);
    v19 = sub_1BE052744();

    if (!(v19 >> 62))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_4:
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v20 = *(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_allowManualEntry);
        v21 = type metadata accessor for PaymentSetupCredentialsFlowItem();
        v22 = objc_allocWithZone(v21);
        *&v22[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
        *&v22[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v23 = &v22[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
        *v23 = 0xD00000000000001FLL;
        v23[1] = 0x80000001BE1229B0;
        *&v22[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v9;
        *&v22[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v19;
        v22[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = v20;
        *&v22[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
        v29.receiver = v22;
        v29.super_class = v21;
        sub_1BE048964();
        return objc_msgSendSuper2(&v29, sel_init);
      }

      goto LABEL_8;
    }
  }

  if (sub_1BE053704())
  {
    goto LABEL_5;
  }

LABEL_8:
  v19, v12, v13, v14, v15, v16, v17, v18;
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_allowManualEntry) == 1)
  {
    v24 = *(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_showBrowseBanks);
    objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
    v25 = sub_1BE048964();
    return sub_1BD87126C(v25, v24, 0);
  }

  else
  {
    sub_1BE04D0E4();
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C54();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BD026000, v26, v27, "No cards on file and manual entry disabled", v28, 2u);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

uint64_t sub_1BD99F478()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD99F4B4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD99F510(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for PaymentSetupCredentialsOrManualEntryFlowSection();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_allowManualEntry] = 0;
  *&v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_identifier];
  *v8 = 0xD000000000000023;
  v8[1] = 0x80000001BE144110;
  *&v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_context] = a1;
  v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_skipPreflight] = a2;
  v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_showBrowseBanks] = a3;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1BD99F5F8(void *a1)
{
  v1 = [a1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v2 = sub_1BE052744();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    v2, v3, v4, v5, v6, v7, v8, v9;
    return 0;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1BFB40900](0, v2);
LABEL_6:
    v19 = v11;
    v2, v12, v13, v14, v15, v16, v17, v18;
    v20 = [v19 value];

    v21 = [v20 pkFormattedStringValue];
    if (v21)
    {
      v22 = sub_1BE052434();

      return v22;
    }

    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_1BD99F734(uint64_t a1, uint64_t a2, char a3, id a4)
{
  [a4 mutableCopy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD4DF70, 0x1E695CF18);
  swift_dynamicCast();
  v5 = objc_allocWithZone(MEMORY[0x1E695CF50]);
  v6 = sub_1BE052404();
  v7 = [v5 initWithStringValue_];

  v8 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B7020;
  *(v9 + 32) = v8;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v11 = sub_1BE052724();
  v9, v12, v13, v14, v15, v16, v17, v18;
  [v31 setPhoneNumbers_];

  sub_1BD6B04D8(a3);
  v20 = v19;
  v21 = v31;
  v22 = sub_1BE052404();
  v20, v23, v24, v25, v26, v27, v28, v29;
  [v21 setValueSource_];

  return v21;
}

id sub_1BD99F93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  result = sub_1BD99F734(a1, a2, a3, *v4);
  *a4 = result;
  return result;
}

uint64_t sub_1BD99F968(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identifier];
  v4 = sub_1BE052434();
  v6 = v5;

  v7 = [v2 identifier];
  v8 = sub_1BE052434();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v6, v11, v12, v13, v14, v15, v16, v17;
    v10, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    v19 = sub_1BE053B84();
    v6, v20, v21, v22, v23, v24, v25, v26;
    v10, v27, v28, v29, v30, v31, v32, v33;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  return sub_1BE053074() & 1;
}

uint64_t sub_1BD99FA7C()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = [v1 identifier];
  sub_1BE052434();
  v4 = v3;

  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

void sub_1BD99FB04(uint64_t a1)
{
  v2 = [*v1 identifier];
  sub_1BE052434();
  v4 = v3;

  sub_1BE052524();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD99FB7C(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  v3 = [v2 identifier];
  sub_1BE052434();
  v5 = v4;

  sub_1BE052524();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1BE053D64();
}

unint64_t sub_1BD99FC00(uint64_t a1)
{
  *(a1 + 8) = sub_1BD99FC30();
  result = sub_1BD99FC84();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BD99FC30()
{
  result = qword_1EBD5A558;
  if (!qword_1EBD5A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A558);
  }

  return result;
}

unint64_t sub_1BD99FC84()
{
  result = qword_1EBD5A560;
  if (!qword_1EBD5A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A560);
  }

  return result;
}

void sub_1BD99FCD8(uint64_t a1, void *a2, char a3)
{
  v4 = objc_opt_self();
  v5 = sub_1BE052724();
  v6 = sub_1BE052724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0B69E0;
  sub_1BE052434();
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x1E695CF50]);
  v11 = sub_1BE052404();
  v12 = [v10 initWithStringValue_];

  v13 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
  v14 = sub_1BE052404();
  v9, v15, v16, v17, v18, v19, v20, v21;
  v22 = [v13 initWithLabel:v14 value:v12];

  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  *(v7 + 32) = v22;
  v23 = sub_1BE052724();
  v7, v24, v25, v26, v27, v28, v29, v30;
  v31 = [v4 pkContactWithNameComponents:0 postalAddresses:v5 emailAddresses:v6 phoneNumbers:v23];

  if (v31)
  {
    a2, v32, v33, v34, v35, v36, v37, v38;
    sub_1BD6B04D8(a3);
    v40 = v39;
    v41 = v31;
    v42 = sub_1BE052404();
    v40, v43, v44, v45, v46, v47, v48, v49;
    [v41 setValueSource_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD99FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();

  return sub_1BE051704();
}

void sub_1BD99FFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v49 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - v7;
  v9 = objc_opt_self();
  v10 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v12 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v13 = sub_1BE052434();
  v14 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v13;
  *(inited + 48) = v15;
  v16 = *v14;
  *(inited + 56) = *v14;
  v17 = sub_1BE052434();
  v18 = MEMORY[0x1E69BA440];
  *(inited + 64) = v17;
  *(inited + 72) = v19;
  v20 = *v18;
  *(inited + 80) = *v18;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v21;
  v22 = v12;
  v23 = v16;
  v24 = v20;
  v25 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1105AC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v26 = sub_1BE052224();
  v25, v27, v28, v29, v30, v31, v32, v33;
  [v9 subject:v10 sendEvent:v26];

  v34 = sub_1BE0528D4();
  (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
  sub_1BE0528A4();
  sub_1BE048964();
  v35 = v48;
  sub_1BE048964();
  sub_1BE048964();
  v36 = sub_1BE052894();
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E69E85E0];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = a1;
  v37[5] = a2;
  v37[6] = v49;
  v37[7] = v35;
  v39 = sub_1BDA543A4(0, 0, v8, &unk_1BE109C08, v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
}

uint64_t sub_1BD9A02B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_1BE0528A4();
  v7[9] = sub_1BE052894();
  v9 = sub_1BE052844();
  v7[10] = v9;
  v7[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD9A034C, v9, v8);
}

uint64_t sub_1BD9A034C()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A598, &unk_1BE109C10);
  sub_1BE0516A4();
  v0[12] = v0[4];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1BD9A040C;

  return sub_1BD9A1054();
}

uint64_t sub_1BD9A040C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v11 = *(v3 + 80);
    v12 = *(v3 + 88);
    v13 = sub_1BD9A05AC;
  }

  else
  {
    *(v3 + 96), v4, v5, v6, v7, v8, v9, v10;
    v11 = *(v3 + 80);
    v12 = *(v3 + 88);
    v13 = sub_1BD9A0528;
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

uint64_t sub_1BD9A0528(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 112);
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;
  if (v9)
  {
    v10 = *(v8 + 112);
    (*(v8 + 56))(v10);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1BD9A05AC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 72);
  *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(v8 + 8);

  return v17();
}

id sub_1BD9A061C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2, v4);
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

id sub_1BD9A0788()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[1];
  v15 = *v0;
  v16 = v5;
  v17 = *(v0 + 1);
  (*(v2 + 104))(v4, *MEMORY[0x1E69B80D8], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v2 + 8))(v4, v1);
    v18 = v8;
    v19 = v10;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v19 = v11;
    v20 = v12 & 1;
    v21 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    sub_1BD9A1D4C();
    return sub_1BE051A54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD9A095C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD1105AC(&qword_1EBD5A590, type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel, &unk_1BE109B68);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading);
}

void sub_1BD9A0A04(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD1105AC(&qword_1EBD5A590, type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel, &unk_1BE109B68);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading);
}

void sub_1BD9A0AB4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD1105AC(&qword_1EBD5A590, type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel, &unk_1BE109B68);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD9A0BCC(uint64_t a1)
{
  v3 = sub_1BE049A94();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v32 - v6;
  v7 = sub_1BE049184();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TransactionContext(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__sheet) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading) = 0;
  v38 = v1;
  sub_1BE04B5C4();
  v19 = a1;
  sub_1BD0DE19C(a1, v18, &qword_1EBD3F790, &qword_1BE0D6710);
  v20 = *(v10 + 48);
  v21 = 0;
  if (v20(v18, 1, v9) != 1)
  {
    sub_1BD5C3BD4(v18, v12);
    sub_1BD9A1CB0();
    (*(v33 + 16))(v32, &v12[*(v9 + 24)], v34);
    v21 = sub_1BE052BF4();
    sub_1BD442180(v12);
  }

  v22 = v38;
  *(v38 + 16) = v21;
  v23 = v22;
  v24 = v19;
  sub_1BD0DE19C(v19, v15, &qword_1EBD3F790, &qword_1BE0D6710);
  if (v20(v15, 1, v9) == 1)
  {
    sub_1BD0DE53C(v19, &qword_1EBD3F790, &qword_1BE0D6710);
    sub_1BD0DE53C(v15, &qword_1EBD3F790, &qword_1BE0D6710);
    v25 = 1;
    v26 = v39;
  }

  else
  {
    v27 = v35;
    v28 = v36;
    v29 = v37;
    (*(v36 + 16))(v35, v15, v37);
    sub_1BD442180(v15);
    v26 = v39;
    sub_1BE049A14();
    sub_1BD0DE53C(v24, &qword_1EBD3F790, &qword_1BE0D6710);
    (*(v28 + 8))(v27, v29);
    v25 = 0;
  }

  v30 = sub_1BE04AFE4();
  (*(*(v30 - 8) + 56))(v26, v25, 1, v30);
  sub_1BD124200(v26, v23 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel_transactionId);
  return v23;
}

uint64_t sub_1BD9A1054()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v1[8] = swift_task_alloc();
  v2 = sub_1BE04AFE4();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_1BE0528A4();
  v1[12] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD9A1180, v4, v3);
}

uint64_t sub_1BD9A1180()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_1BD0DE19C(*(v0 + 56) + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel_transactionId, v3, &qword_1EBD39980, &qword_1BE0BF3C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v11 = *(v0 + 64);
    *(v0 + 96), v4, v5, v6, v7, v8, v9, v10;
    sub_1BD0DE53C(v11, &qword_1EBD39980, &qword_1BE0BF3C0);
LABEL_8:

    v33 = *(v0 + 8);

    return v33(0);
  }

  v12 = *(v0 + 56);
  (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
  v13 = *(v12 + 16);
  *(v0 + 120) = v13;
  if (!v13)
  {
    v25 = *(v0 + 96);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    goto LABEL_7;
  }

  v14 = *(v0 + 56);
  KeyPath = swift_getKeyPath();
  *(v0 + 128) = OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel___observationRegistrar;
  *(v0 + 16) = v14;
  *(v0 + 136) = sub_1BD1105AC(&qword_1EBD5A590, type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel, &unk_1BE109B68);
  v16 = v13;
  sub_1BE04B594();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v24 = OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading;
  *(v0 + 144) = OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading;
  if (*(v14 + v24))
  {
    v25 = *(v0 + 96);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

LABEL_7:
    v25, v26, v27, v28, v29, v30, v31, v32;
    goto LABEL_8;
  }

  v35 = *(v0 + 56);
  v36 = swift_getKeyPath();
  v37 = swift_task_alloc();
  *(v37 + 16) = v35;
  *(v37 + 24) = 1;
  *(v0 + 24) = v35;
  sub_1BE04B584();
  v36, v38, v39, v40, v41, v42, v43, v44;

  sub_1BE0490F4();
  *(v0 + 152) = sub_1BE0490B4();
  v45 = swift_task_alloc();
  *(v0 + 160) = v45;
  *v45 = v0;
  v45[1] = sub_1BD9A1494;
  v46 = *(v0 + 88);

  return MEMORY[0x1EEDC1478](v46);
}

uint64_t sub_1BD9A1494(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v11 = *(v3 + 104);
    v12 = *(v3 + 112);
    v13 = sub_1BD9A1914;
  }

  else
  {
    *(v3 + 152), v4, v5, v6, v7, v8, v9, v10;
    v11 = *(v3 + 104);
    v12 = *(v3 + 112);
    v13 = sub_1BD9A15B0;
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

void sub_1BD9A15B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 168);
  if (v9)
  {
    v10 = *(v8 + 120);
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 transactionFromFKPaymentTransaction:v9 institution:v12];
    v14 = objc_allocWithZone(PKReportIssueViewController);
    v15 = v13;
    v16 = [v14 initWithTransaction:v15 transactionSourceCollection:0 paymentPass:0 familyCollection:0 account:0 accountUserCollection:0 bankConnectInstitution:v12 physicalCards:0 detailViewStyle:0 context:0];

    if (!v16)
    {
      __break(1u);
      return;
    }

    v24 = *(v8 + 144);
    v25 = *(v8 + 56);
    *(v8 + 96), v17, v18, v19, v20, v21, v22, v23;
    v26 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];

    if (*(v25 + v24) == 1)
    {
      v27 = *(v8 + 120);
      v28 = *(v8 + 80);
      v65 = *(v8 + 72);
      v66 = *(v8 + 88);
      v29 = *(v8 + 56);
      KeyPath = swift_getKeyPath();
      v31 = swift_task_alloc();
      *(v31 + 16) = v29;
      *(v31 + 24) = 0;
      *(v8 + 48) = v29;
      sub_1BE04B584();
      KeyPath, v32, v33, v34, v35, v36, v37, v38;

      (*(v28 + 8))(v66, v65);
    }

    else
    {
      v54 = *(v8 + 144);
      v56 = *(v8 + 80);
      v55 = *(v8 + 88);
      v57 = *(v8 + 72);
      v58 = *(v8 + 56);

      (*(v56 + 8))(v55, v57);
      *(v58 + v54) = 0;
    }
  }

  else
  {
    v39 = *(v8 + 144);
    v40 = *(v8 + 56);
    *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
    if (*(v40 + v39) == 1)
    {
      v41 = *(v8 + 120);
      v42 = *(v8 + 80);
      v67 = *(v8 + 88);
      v43 = *(v8 + 72);
      v44 = *(v8 + 56);
      v45 = swift_getKeyPath();
      v46 = swift_task_alloc();
      *(v46 + 16) = v44;
      *(v46 + 24) = 0;
      *(v8 + 40) = v44;
      sub_1BE04B584();
      v45, v47, v48, v49, v50, v51, v52, v53;

      (*(v42 + 8))(v67, v43);

      v26 = 0;
    }

    else
    {
      v59 = *(v8 + 144);
      v61 = *(v8 + 80);
      v60 = *(v8 + 88);
      v62 = *(v8 + 72);
      v63 = *(v8 + 56);

      (*(v61 + 8))(v60, v62);
      v26 = 0;
      *(v63 + v59) = 0;
    }
  }

  v64 = *(v8 + 8);

  v64(v26);
}

uint64_t sub_1BD9A1914(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 144);
  v10 = *(v8 + 152);
  v11 = *(v8 + 56);
  *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
  v10, v12, v13, v14, v15, v16, v17, v18;
  if (*(v11 + v9) == 1)
  {
    v19 = *(v8 + 120);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    v22 = *(v8 + 72);
    v23 = *(v8 + 56);
    KeyPath = swift_getKeyPath();
    v25 = swift_task_alloc();
    *(v25 + 16) = v23;
    *(v25 + 24) = 0;
    *(v8 + 32) = v23;
    sub_1BE04B584();
    KeyPath, v26, v27, v28, v29, v30, v31, v32;

    (*(v21 + 8))(v20, v22);
  }

  else
  {
    v33 = *(v8 + 144);
    v35 = *(v8 + 80);
    v34 = *(v8 + 88);
    v36 = *(v8 + 72);
    v37 = *(v8 + 56);

    (*(v35 + 8))(v34, v36);
    *(v37 + v33) = 0;
  }

  v38 = *(v8 + 8);

  return v38();
}

uint64_t sub_1BD9A1AA4()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel_transactionId, &qword_1EBD39980, &qword_1BE0BF3C0);

  v1 = OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel(uint64_t a1)
{
  result = qword_1EBD5A580;
  if (!qword_1EBD5A580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9A1BCC(uint64_t a1)
{
  sub_1BD12513C(319);
  if (v1 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1BD9A1CB0()
{
  result = qword_1EBD498E8;
  if (!qword_1EBD498E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD498E8);
  }

  return result;
}

unint64_t sub_1BD9A1D4C()
{
  result = qword_1EBD3FBA0;
  if (!qword_1EBD3FBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FBA0);
  }

  return result;
}

uint64_t sub_1BD9A1DBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD0F985C;

  return sub_1BD9A02B0(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1BD9A1E90()
{
  result = qword_1EBD5A5A0;
  if (!qword_1EBD5A5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C138, &unk_1BE0E57D8);
    sub_1BD9A1D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A5A0);
  }

  return result;
}

id PKDashboardFinanceKitTransactionPresenter.init()()
{
  *&v0[OBJC_IVAR____TtC9PassKitUI41PKDashboardFinanceKitTransactionPresenter_sampleCell] = [objc_allocWithZone(type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell(0)) initWithFrame_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardFinanceKitTransactionPresenter();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for PKDashboardFinanceKitTransactionItem(uint64_t a1)
{
  result = qword_1EBD5A698;
  if (!qword_1EBD5A698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD9A211C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A5B8, &qword_1BE109C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x80000001BE109C00;
  *(inited + 48) = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell(0);
  v1 = sub_1BD1AE91C(inited);
  swift_setDeallocating();
  sub_1BD9A2954(inited + 32);
  return v1;
}

id PKDashboardFinanceKitTransactionItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1BD9A2870(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD9A2954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A5C0, &qword_1BE109C58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD9A29BC(uint64_t a1, void *a2)
{
  v3 = sub_1BE052404();
  v4 = sub_1BE04B3C4();
  v5 = [a2 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:v4];

  type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell(0);
  v6 = swift_dynamicCastClass();
  if (v6 && (v7 = v6, type metadata accessor for PKDashboardFinanceKitTransactionItem(0), (v8 = swift_dynamicCastClass()) != 0))
  {
    v9 = v8;
    swift_unknownObjectRetain();
    sub_1BD444474(v9);
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {

    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

void sub_1BD9A2AFC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v40 = a3;
  v6 = sub_1BE049184();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v34 - v10;
  v11 = sub_1BE049A94();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  type metadata accessor for PKDashboardFinanceKitTransactionItem(0);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  if (!a4)
  {
    swift_unknownObjectRetain();
    goto LABEL_8;
  }

  v20 = swift_unknownObjectRetain();
  if (a4(v20))
  {
LABEL_8:
    v21 = OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_institution;
    v38 = a1;
    v22 = *(v12 + 16);
    v22(v17, v19 + OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_transaction, v11);
    v37 = v7;
    v23 = *(v7 + 16);
    v24 = v19 + v21;
    v25 = v41;
    v23(v41, v24);
    type metadata accessor for NavigationController();
    v26 = swift_allocObject();
    v35 = v11;
    v36 = v26;
    v27 = v11;
    v28 = v40;
    *(v26 + 16) = v40;
    v22(v14, v17, v27);
    v29 = v39;
    (v23)(v39, v25, v6);
    _s9ViewModelCMa_3(0);
    swift_allocObject();
    v30 = v28;
    v45 = sub_1BD737C08(v14, v29, 0);
    sub_1BE051694();
    (*(v37 + 8))(v41, v6);
    (*(v12 + 8))(v17, v35);
    v42 = sub_1BD628CF0;
    v43 = v36;
    v44 = 0;
    v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A6B0, &unk_1BE1098A0));
    v32 = sub_1BE04F894();
    v33 = [v32 navigationItem];
    [v33 setLargeTitleDisplayMode_];

    [v30 pushViewController:v32 animated:1];
    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1BD9A3014(uint64_t a1)
{
  result = sub_1BE049184();
  if (v2 <= 0x3F)
  {
    result = sub_1BE049A94();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BD9A3124()
{
  result = qword_1EBD5A6C0;
  if (!qword_1EBD5A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A6C0);
  }

  return result;
}

unint64_t sub_1BD9A317C()
{
  result = qword_1EBD5A6C8;
  if (!qword_1EBD5A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A6C8);
  }

  return result;
}

uint64_t sub_1BD9A3208()
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
  __swift_allocate_value_buffer(v6, qword_1EBDAB800);
  __swift_project_value_buffer(v6, qword_1EBDAB800);
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

uint64_t sub_1BD9A3440@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A708, &qword_1BE109E58);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A710, &qword_1BE109E60);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v19 - v10;
  v30 = 2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A718, &qword_1BE109E68);
  v21 = sub_1BD9A79D4();
  sub_1BD63B7E0();
  sub_1BD0DE4F4(&qword_1EBD5A720, &qword_1EBD5A718, &qword_1BE109E68, MEMORY[0x1E695A498]);
  v22 = v11;
  sub_1BE048F04();
  sub_1BD0DE4F4(&qword_1EBD5A728, &qword_1EBD5A710, &qword_1BE109E60, MEMORY[0x1E695A670]);
  v12 = v6;
  sub_1BE048ED4();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v8, v6);
  v13 = v24;
  sub_1BE048F24();
  sub_1BD0DE4F4(&qword_1EBD5A730, &qword_1EBD5A708, &qword_1BE109E58, MEMORY[0x1E695A710]);
  v14 = v25;
  v15 = v26;
  sub_1BE048ED4();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_1BE048EB4();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_1BD9A3824@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A738, &qword_1BE109E70);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A740, &qword_1BE109E78);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A718, &qword_1BE109E68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - v8;
  sub_1BD9A79D4();
  sub_1BE048CE4();
  sub_1BE048CD4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A748, &qword_1BE109E80);
  sub_1BE048CC4();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE048CD4();
  v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A750, &unk_1BE109EB0);
  sub_1BE048CC4();
  v18, v19, v20, v21, v22, v23, v24, v25;
  sub_1BE048CD4();
  sub_1BE048D04();
  sub_1BE048CA4();
  v26 = sub_1BD0DE4F4(&qword_1EBD5A720, &qword_1EBD5A718, &qword_1BE109E68, MEMORY[0x1E695A498]);
  MEMORY[0x1BFB35E60](v6, &type metadata for AppleCardBillPayIntent, v3, v26);
  v27 = *(v4 + 8);
  v27(v6, v3);
  MEMORY[0x1BFB35E50](v9, &type metadata for AppleCardBillPayIntent, v3, v26);
  return (v27)(v9, v3);
}

uint64_t sub_1BD9A3B50@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A738, &qword_1BE109E70);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A740, &qword_1BE109E78);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A718, &qword_1BE109E68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  sub_1BD9A79D4();
  sub_1BE048CE4();
  sub_1BE048CD4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A748, &qword_1BE109E80);
  sub_1BE048CC4();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE048CD4();
  sub_1BE048D04();
  sub_1BE048CA4();
  v18 = sub_1BD0DE4F4(&qword_1EBD5A720, &qword_1EBD5A718, &qword_1BE109E68, MEMORY[0x1E695A498]);
  MEMORY[0x1BFB35E60](v6, &type metadata for AppleCardBillPayIntent, v3, v18);
  v19 = *(v4 + 8);
  v19(v6, v3);
  MEMORY[0x1BFB35E50](v9, &type metadata for AppleCardBillPayIntent, v3, v18);
  return (v19)(v9, v3);
}

uint64_t sub_1BD9A3E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[41] = a2;
  v3[42] = a3;
  v3[40] = a1;
  v4 = sub_1BE04D214();
  v3[43] = v4;
  v3[44] = *(v4 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v5 = sub_1BE048C44();
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v6 = sub_1BE048C54();
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v7 = sub_1BE048654();
  v3[53] = v7;
  v3[54] = *(v7 - 8);
  v3[55] = swift_task_alloc();
  v8 = sub_1BE0523B4();
  v3[56] = v8;
  v3[57] = *(v8 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v9 = sub_1BE048B74();
  v3[60] = v9;
  v3[61] = *(v9 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  v3[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0, &unk_1BE0DED20);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v10 = sub_1BE04CFC4();
  v3[70] = v10;
  v3[71] = *(v10 - 8);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v11 = sub_1BE04CFE4();
  v3[74] = v11;
  v3[75] = *(v11 - 8);
  v3[76] = swift_task_alloc();
  sub_1BE0528A4();
  v3[77] = sub_1BE052894();
  v13 = sub_1BE052844();
  v3[78] = v13;
  v3[79] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1BD9A4280, v13, v12);
}

uint64_t sub_1BD9A4280()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 coordinator];
  *(v0 + 640) = v2;

  if (!v2)
  {
    *(v0 + 616), v3, v4, v5, v6, v7, v8, v9;
    sub_1BE04D074();
    v60 = sub_1BE04D204();
    v61 = sub_1BE052C34();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1BD026000, v60, v61, "AppleCardBillPayIntent: PKAppIntentCoordinator was nil", v62, 2u);
      MEMORY[0x1BFB45F20](v62, -1, -1);
    }

    v64 = *(v0 + 352);
    v63 = *(v0 + 360);
    v65 = *(v0 + 344);

    (*(v64 + 8))(v63, v65);
    sub_1BE0484F4();
    sub_1BD9A80CC(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    goto LABEL_35;
  }

  sub_1BE04B684();
  sub_1BE04CFB4();
  v10 = sub_1BE04CFD4();
  v11 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v10, v11, v13, "perform:AppleCardBillPayIntent", "", v12, 2u);
    MEMORY[0x1BFB45F20](v12, -1, -1);
  }

  v14 = *(v0 + 608);
  v15 = *(v0 + 600);
  v16 = *(v0 + 592);
  v17 = *(v0 + 584);
  v18 = *(v0 + 576);
  v19 = *(v0 + 568);
  v20 = *(v0 + 560);

  (*(v19 + 16))(v18, v17, v20);
  sub_1BE04D024();
  swift_allocObject();
  *(v0 + 648) = sub_1BE04D014();
  (*(v19 + 8))(v17, v20);
  (*(v15 + 8))(v14, v16);
  v21 = [objc_opt_self() sharedInstance];
  *(v0 + 656) = v21;
  if (!v21)
  {
    v66 = *(v0 + 616);
LABEL_33:
    v66, v22, v23, v24, v25, v26, v27, v28;
    v36 = 0;
    goto LABEL_34;
  }

  v36 = [v21 passesOfStyles_];
  if (!v36)
  {
    *(v0 + 616), v29, v30, v31, v32, v33, v34, v35;
LABEL_34:
    v81 = *(v0 + 656);
    v82 = *(v0 + 648);
    sub_1BD135218();
    swift_allocError();
    *v83 = 0;
    swift_willThrow();

    sub_1BD9A7458(v82);
    v82, v84, v85, v86, v87, v88, v89, v90;
    swift_unknownObjectRelease();
LABEL_35:

    v91 = *(v0 + 8);

    return v91();
  }

  sub_1BD102A4C();
  v37 = sub_1BE052744();

  if (!(v37 >> 62))
  {
    v45 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v45 = sub_1BE053704();
  if (!v45)
  {
LABEL_32:
    v80 = *(v0 + 616);
    v37, v38, v39, v40, v41, v42, v43, v44;
    v66 = v80;
    goto LABEL_33;
  }

LABEL_8:
  v46 = 0;
  while (1)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x1BFB40900](v46, v37);
    }

    else
    {
      if (v46 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v47 = *(v37 + 8 * v46 + 32);
    }

    v48 = v47;
    *(v0 + 664) = v47;
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v50 = [v47 secureElementPass];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 isAppleCardPass];

      if (v52)
      {
        break;
      }
    }

    ++v46;
    if (v49 == v45)
    {
      goto LABEL_32;
    }
  }

  v37, v53, v54, v55, v56, v57, v58, v59;
  v36 = v48;
  v67 = [v36 uniqueID];
  *(v0 + 672) = v67;
  if (!v67)
  {
    *(v0 + 616), v68, v69, v70, v71, v72, v73, v74;

    goto LABEL_34;
  }

  v75 = v67;
  v76 = [objc_opt_self() sharedInstance];
  *(v0 + 680) = v76;
  if (v76)
  {
    v77 = v76;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 304;
    *(v0 + 24) = sub_1BD9A4978;
    v78 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58578, &qword_1BE103FE8);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1BD1F07A8;
    *(v0 + 168) = &block_descriptor_231;
    *(v0 + 176) = v78;
    [v77 accountForPassWithUniqueID:v75 completion:v0 + 144];
    v79 = v0 + 16;
  }

  else
  {

    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v79);
}

uint64_t sub_1BD9A4978()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1BD9A4A80, v2, v1);
}

uint64_t sub_1BD9A4A80()
{
  v1 = *(v0 + 304);
  *(v0 + 688) = v1;
  v2 = *(v0 + 680);
  if (v1)
  {

    v3 = [v1 creditDetails];
    if (v3)
    {
      v11 = v3;
      v12 = [v3 currencyCode];
      *(v0 + 696) = v12;

      if (v12)
      {
        *(v0 + 704) = sub_1BE052434();
        *(v0 + 712) = v13;
        v14 = swift_task_alloc();
        *(v0 + 720) = v14;
        *v14 = v0;
        v14[1] = sub_1BD9A4D68;
        v15 = *(v0 + 664);

        return sub_1BD99DCA0(v15);
      }
    }

    v17 = *(v0 + 672);
    v18 = *(v0 + 664);
    *(v0 + 616), v4, v5, v6, v7, v8, v9, v10;
  }

  else
  {
    v19 = *(v0 + 672);
    v20 = *(v0 + 616);

    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = *(v0 + 664);
  v29 = *(v0 + 656);
  v30 = *(v0 + 648);
  sub_1BD135218();
  swift_allocError();
  *v31 = 0;
  swift_willThrow();

  sub_1BD9A7458(v30);
  v30, v32, v33, v34, v35, v36, v37, v38;
  swift_unknownObjectRelease();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1BD9A4D68(char a1)
{
  v4 = *v2;
  *(*v2 + 728) = v1;

  if (v1)
  {
    v5 = *(v4 + 712);
    v6 = *(v4 + 672);

    v5, v7, v8, v9, v10, v11, v12, v13;
    v14 = *(v4 + 632);
    v15 = *(v4 + 624);
    v16 = sub_1BD9A58E4;
  }

  else
  {
    *(v4 + 827) = a1 & 1;
    v14 = *(v4 + 632);
    v15 = *(v4 + 624);
    v16 = sub_1BD9A4EB4;
  }

  return MEMORY[0x1EEE6DFA0](v16, v15, v14);
}

uint64_t sub_1BD9A4EB4()
{
  if (*(v0 + 827) != 1)
  {
    v9 = *(v0 + 712);
    v10 = *(v0 + 688);
    v11 = *(v0 + 672);
    v12 = *(v0 + 664);
    v13 = *(v0 + 656);
    v14 = *(v0 + 648);
    v15 = *(v0 + 616);

    v15, v16, v17, v18, v19, v20, v21, v22;
    v9, v23, v24, v25, v26, v27, v28, v29;
    sub_1BE0484F4();
    sub_1BD9A80CC(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
    swift_allocError();
    sub_1BE0484C4();
    swift_willThrow();

    goto LABEL_6;
  }

  sub_1BE048874();
  if (!*(v0 + 824))
  {
    v8 = 0x80000001BE117CF0;
LABEL_10:
    v39 = sub_1BE053B84();
    v8, v40, v41, v42, v43, v44, v45, v46;
    if ((v39 & 1) == 0)
    {
      v47 = *(v0 + 712);

LABEL_24:
      v47, v48, v49, v50, v51, v52, v53, v54;
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (*(v0 + 824) == 1)
  {
    v8 = 0xEE00746E656D7961;
    goto LABEL_10;
  }

  0xEC000000746E656DLL, v1, v2, v3, v4, v5, v6, v7;
LABEL_13:
  v55 = *(v0 + 552);
  v56 = *(v0 + 480);
  v57 = *(v0 + 488);
  sub_1BE048874();
  v58 = *(v57 + 48);
  *(v0 + 736) = v58;
  *(v0 + 744) = (v57 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v59 = v58(v55, 1, v56);
  sub_1BD0DE53C(v55, &qword_1EBD493E0, &unk_1BE0DED20);
  if (v59 == 1)
  {
    v60 = *(v0 + 512);
    v61 = *(v0 + 424);
    v62 = *(v0 + 432);
    *(v0 + 752) = sub_1BE048894();
    (*(v62 + 56))(v60, 1, 1, v61);
    v63 = swift_task_alloc();
    *(v0 + 760) = v63;
    *v63 = v0;
    v63[1] = sub_1BD9A5A84;
    v64 = *(v0 + 544);
    v65 = *(v0 + 512);

    return MEMORY[0x1EEDB33A8](v64, v65);
  }

  v66 = *(v0 + 736);
  v67 = *(v0 + 528);
  v68 = *(v0 + 480);
  sub_1BE048874();
  v69 = v66(v67, 1, v68);
  v70 = *(v0 + 712);
  v71 = *(v0 + 528);
  if (v69 == 1)
  {

    v70, v72, v73, v74, v75, v76, v77, v78;
    sub_1BD0DE53C(v71, &qword_1EBD493E0, &unk_1BE0DED20);
LABEL_25:
    v97 = *(v0 + 520);
    v98 = *(v0 + 480);
    v99 = *(v0 + 488);
    sub_1BE048874();
    v100 = (*(v99 + 48))(v97, 1, v98);
    v101 = *(v0 + 520);
    if (v100)
    {
      sub_1BD0DE53C(*(v0 + 520), &qword_1EBD493E0, &unk_1BE0DED20);
      v102 = 0;
    }

    else
    {
      v104 = *(v0 + 488);
      v103 = *(v0 + 496);
      v105 = *(v0 + 480);
      (*(v104 + 16))(v103, *(v0 + 520), v105);
      sub_1BD0DE53C(v101, &qword_1EBD493E0, &unk_1BE0DED20);
      sub_1BE048B64();
      (*(v104 + 8))(v103, v105);
      v102 = sub_1BE053344();
    }

    *(v0 + 808) = 0;
    *(v0 + 800) = v102;
    v106 = swift_task_alloc();
    *(v0 + 816) = v106;
    *v106 = v0;
    v106[1] = sub_1BD9A67CC;

    return sub_1BD0D7278();
  }

  v79 = *(v0 + 704);
  (*(*(v0 + 488) + 32))(*(v0 + 504), *(v0 + 528), *(v0 + 480));
  if (sub_1BE048B44() == v79 && v80 == v70)
  {
    v80, v80, v81, v82, v83, v84, v85, v86;
LABEL_23:
    v47 = *(v0 + 712);
    v96 = *(v0 + 696);
    (*(*(v0 + 488) + 8))(*(v0 + 504), *(v0 + 480));

    goto LABEL_24;
  }

  v87 = v80;
  v88 = sub_1BE053B84();
  v87, v89, v90, v91, v92, v93, v94, v95;
  if (v88)
  {
    goto LABEL_23;
  }

  v107 = *(v0 + 696);
  sub_1BE048B64();
  v108 = sub_1BE053344();
  v109 = [objc_allocWithZone(MEMORY[0x1E69B8780]) initWithAmount:v108 currency:v107 exponent:0];
  *(v0 + 776) = v109;

  v110 = *(v0 + 712);
  if (v109)
  {
    *(v0 + 272) = *(v0 + 328);
    sub_1BE0523A4();
    sub_1BE052394();
    sub_1BE052374();
    sub_1BE052394();
    v111 = [v109 formattedStringValue];
    if (v111)
    {
      v112 = v111;
      v113 = sub_1BE052434();
      v115 = v114;
    }

    else
    {
      v113 = 0;
      v115 = 0;
    }

    v136 = *(v0 + 712);
    v138 = *(v0 + 464);
    v137 = *(v0 + 472);
    v140 = *(v0 + 448);
    v139 = *(v0 + 456);
    *(v0 + 288) = v113;
    *(v0 + 296) = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    sub_1BE0524A4();
    v142 = v141;
    sub_1BE052374();
    v142, v143, v144, v145, v146, v147, v148, v149;
    sub_1BE052394();
    sub_1BE052374();
    v136, v150, v151, v152, v153, v154, v155, v156;
    sub_1BE052394();
    (*(v139 + 32))(v138, v137, v140);
    sub_1BE048644();
    *(v0 + 312) = MEMORY[0x1E69E7CC0];
    sub_1BD9A80CC(&qword_1EBD528F0, MEMORY[0x1E695A448], MEMORY[0x1E695A450]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD528F8, &qword_1BE109E20);
    sub_1BD0DE4F4(&qword_1EBD52900, &qword_1EBD528F8, &qword_1BE109E20, MEMORY[0x1E69E6328]);
    sub_1BE053664();
    sub_1BE048C34();
    v157 = swift_task_alloc();
    *(v0 + 784) = v157;
    v158 = sub_1BD9A79D4();
    *v157 = v0;
    v157[1] = sub_1BD9A6404;
    v159 = *(v0 + 440);
    v160 = *(v0 + 416);
    v161 = *(v0 + 392);

    return MEMORY[0x1EEDB2D60](v160, v161, v159, &type metadata for AppleCardBillPayIntent, v158);
  }

  v116 = *(v0 + 688);
  v117 = *(v0 + 664);
  v162 = *(v0 + 656);
  v14 = *(v0 + 648);
  v118 = *(v0 + 616);
  v119 = *(v0 + 504);
  v120 = *(v0 + 480);
  v121 = *(v0 + 488);

  v118, v122, v123, v124, v125, v126, v127, v128;
  v110, v129, v130, v131, v132, v133, v134, v135;
  sub_1BE0484F4();
  sub_1BD9A80CC(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
  swift_allocError();
  sub_1BE0484E4();
  swift_willThrow();

  (*(v121 + 8))(v119, v120);
LABEL_6:
  sub_1BD9A7458(v14);
  v14, v30, v31, v32, v33, v34, v35, v36;
  swift_unknownObjectRelease();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1BD9A58E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 688);
  v10 = *(v8 + 664);
  v11 = *(v8 + 656);
  v12 = *(v8 + 648);
  *(v8 + 616), a2, a3, a4, a5, a6, a7, a8;

  sub_1BD9A7458(v12);
  v12, v13, v14, v15, v16, v17, v18, v19;
  swift_unknownObjectRelease();

  v20 = *(v8 + 8);

  return v20();
}

uint64_t sub_1BD9A5A84()
{
  v2 = *v1;
  v2[96] = v0;

  v3 = v2[94];
  if (v0)
  {
    v4 = v2[89];
    v5 = v2[87];
    v6 = v2[84];
    sub_1BD0DE53C(v2[64], &qword_1EBD39290, &unk_1BE0D9740);

    v3, v7, v8, v9, v10, v11, v12, v13;
    v4, v14, v15, v16, v17, v18, v19, v20;
    v21 = v2[79];
    v22 = v2[78];
    v23 = sub_1BD9A70F4;
  }

  else
  {
    sub_1BD0DE53C(v2[64], &qword_1EBD39290, &unk_1BE0D9740);
    v3, v24, v25, v26, v27, v28, v29, v30;
    v21 = v2[79];
    v22 = v2[78];
    v23 = sub_1BD9A5C20;
  }

  return MEMORY[0x1EEE6DFA0](v23, v22, v21);
}

uint64_t sub_1BD9A5C20()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  (*(*(v0 + 488) + 56))(v1, 0, 1, *(v0 + 480));
  sub_1BD9A805C(v1, v2);
  sub_1BE048884();
  sub_1BD0DE53C(v1, &qword_1EBD493E0, &unk_1BE0DED20);
  v3 = *(v0 + 736);
  v4 = *(v0 + 528);
  v5 = *(v0 + 480);
  sub_1BE048874();
  v6 = v3(v4, 1, v5);
  v7 = *(v0 + 712);
  v8 = *(v0 + 528);
  if (v6 == 1)
  {

    v7, v9, v10, v11, v12, v13, v14, v15;
    sub_1BD0DE53C(v8, &qword_1EBD493E0, &unk_1BE0DED20);
LABEL_8:
    v42 = *(v0 + 520);
    v43 = *(v0 + 480);
    v44 = *(v0 + 488);
    sub_1BE048874();
    v45 = (*(v44 + 48))(v42, 1, v43);
    v46 = *(v0 + 520);
    if (v45)
    {
      sub_1BD0DE53C(*(v0 + 520), &qword_1EBD493E0, &unk_1BE0DED20);
      v47 = 0;
    }

    else
    {
      v49 = *(v0 + 488);
      v48 = *(v0 + 496);
      v50 = *(v0 + 480);
      (*(v49 + 16))(v48, *(v0 + 520), v50);
      sub_1BD0DE53C(v46, &qword_1EBD493E0, &unk_1BE0DED20);
      sub_1BE048B64();
      (*(v49 + 8))(v48, v50);
      v47 = sub_1BE053344();
    }

    *(v0 + 808) = 0;
    *(v0 + 800) = v47;
    v51 = swift_task_alloc();
    *(v0 + 816) = v51;
    *v51 = v0;
    v51[1] = sub_1BD9A67CC;

    return sub_1BD0D7278();
  }

  v16 = *(v0 + 704);
  (*(*(v0 + 488) + 32))(*(v0 + 504), *(v0 + 528), *(v0 + 480));
  if (sub_1BE048B44() == v16 && v17 == v7)
  {
    v17, v17, v18, v19, v20, v21, v22, v23;
LABEL_7:
    v33 = *(v0 + 712);
    v34 = *(v0 + 696);
    (*(*(v0 + 488) + 8))(*(v0 + 504), *(v0 + 480));

    v33, v35, v36, v37, v38, v39, v40, v41;
    goto LABEL_8;
  }

  v24 = v17;
  v25 = sub_1BE053B84();
  v24, v26, v27, v28, v29, v30, v31, v32;
  if (v25)
  {
    goto LABEL_7;
  }

  v53 = *(v0 + 696);
  sub_1BE048B64();
  v54 = sub_1BE053344();
  v55 = [objc_allocWithZone(MEMORY[0x1E69B8780]) initWithAmount:v54 currency:v53 exponent:0];
  *(v0 + 776) = v55;

  v56 = *(v0 + 712);
  if (v55)
  {
    *(v0 + 272) = *(v0 + 328);
    sub_1BE0523A4();
    sub_1BE052394();
    sub_1BE052374();
    sub_1BE052394();
    v57 = [v55 formattedStringValue];
    if (v57)
    {
      v58 = v57;
      v59 = sub_1BE052434();
      v61 = v60;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v92 = *(v0 + 712);
    v94 = *(v0 + 464);
    v93 = *(v0 + 472);
    v96 = *(v0 + 448);
    v95 = *(v0 + 456);
    *(v0 + 288) = v59;
    *(v0 + 296) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    sub_1BE0524A4();
    v98 = v97;
    sub_1BE052374();
    v98, v99, v100, v101, v102, v103, v104, v105;
    sub_1BE052394();
    sub_1BE052374();
    v92, v106, v107, v108, v109, v110, v111, v112;
    sub_1BE052394();
    (*(v95 + 32))(v94, v93, v96);
    sub_1BE048644();
    *(v0 + 312) = MEMORY[0x1E69E7CC0];
    sub_1BD9A80CC(&qword_1EBD528F0, MEMORY[0x1E695A448], MEMORY[0x1E695A450]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD528F8, &qword_1BE109E20);
    sub_1BD0DE4F4(&qword_1EBD52900, &qword_1EBD528F8, &qword_1BE109E20, MEMORY[0x1E69E6328]);
    sub_1BE053664();
    sub_1BE048C34();
    v113 = swift_task_alloc();
    *(v0 + 784) = v113;
    v114 = sub_1BD9A79D4();
    *v113 = v0;
    v113[1] = sub_1BD9A6404;
    v115 = *(v0 + 440);
    v116 = *(v0 + 416);
    v117 = *(v0 + 392);

    return MEMORY[0x1EEDB2D60](v116, v117, v115, &type metadata for AppleCardBillPayIntent, v114);
  }

  else
  {
    v62 = *(v0 + 688);
    v63 = *(v0 + 664);
    v64 = *(v0 + 656);
    v65 = *(v0 + 648);
    v66 = *(v0 + 616);
    v67 = *(v0 + 504);
    v68 = *(v0 + 480);
    v69 = *(v0 + 488);

    v66, v70, v71, v72, v73, v74, v75, v76;
    v56, v77, v78, v79, v80, v81, v82, v83;
    sub_1BE0484F4();
    sub_1BD9A80CC(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v69 + 8))(v67, v68);
    sub_1BD9A7458(v65);
    v65, v84, v85, v86, v87, v88, v89, v90;
    swift_unknownObjectRelease();

    v91 = *(v0 + 8);

    return v91();
  }
}

uint64_t sub_1BD9A6404()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = *(v2 + 432);
    v21 = *(v2 + 440);
    v5 = *(v2 + 416);
    v4 = *(v2 + 424);
    v6 = *(v2 + 400);
    v7 = *(v2 + 408);
    v8 = *(v2 + 384);
    v9 = *(v2 + 392);
    v10 = *(v2 + 376);

    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v21, v4);
    v11 = *(v2 + 632);
    v12 = *(v2 + 624);
    v13 = sub_1BD9A7294;
  }

  else
  {
    v15 = *(v2 + 432);
    v14 = *(v2 + 440);
    v17 = *(v2 + 416);
    v16 = *(v2 + 424);
    v18 = *(v2 + 400);
    v19 = *(v2 + 408);
    (*(*(v2 + 384) + 8))(*(v2 + 392), *(v2 + 376));
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    v11 = *(v2 + 632);
    v12 = *(v2 + 624);
    v13 = sub_1BD9A65FC;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1BD9A65FC()
{
  v1 = v0[97];
  (*(v0[61] + 8))(v0[63], v0[60]);
  v2 = [v1 amount];
  v3 = v0[97];
  if (!v2)
  {
    v4 = v0[65];
    v5 = v0[60];
    v6 = v0[61];
    sub_1BE048874();
    v7 = (*(v6 + 48))(v4, 1, v5);
    v8 = v0[65];
    if (v7)
    {
      sub_1BD0DE53C(v0[65], &qword_1EBD493E0, &unk_1BE0DED20);
      v2 = 0;
    }

    else
    {
      v10 = v0[61];
      v9 = v0[62];
      v11 = v0[60];
      (*(v10 + 16))(v9, v0[65], v11);
      sub_1BD0DE53C(v8, &qword_1EBD493E0, &unk_1BE0DED20);
      sub_1BE048B64();
      (*(v10 + 8))(v9, v11);
      v2 = sub_1BE053344();
    }
  }

  v0[101] = v3;
  v0[100] = v2;
  v12 = swift_task_alloc();
  v0[102] = v12;
  *v12 = v0;
  v12[1] = sub_1BD9A67CC;

  return sub_1BD0D7278();
}

uint64_t sub_1BD9A67CC(char a1)
{
  v2 = *v1;
  *(*v1 + 828) = a1;

  v3 = *(v2 + 632);
  v4 = *(v2 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1BD9A68F4, v4, v3);
}

uint64_t sub_1BD9A68F4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 828) == 1)
  {
    sub_1BE048874();
    v9 = *(v8 + 826);
    v10 = *(v8 + 800);
    v11 = *(v8 + 672);
    v12 = *(v8 + 640);
    *(v8 + 80) = v8;
    *(v8 + 120) = v8 + 825;
    *(v8 + 88) = sub_1BD9A6CD0;
    v13 = swift_continuation_init();
    *(v8 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980, &unk_1BE0ED700);
    *(v8 + 208) = MEMORY[0x1E69E9820];
    *(v8 + 216) = 1107296256;
    *(v8 + 224) = sub_1BD68F38C;
    *(v8 + 232) = &block_descriptor_9_9;
    *(v8 + 240) = v13;
    [v12 presentAccountServiceSchedulePaymentWithUniqueID:v11 billPayAmountType:v9 + 1 billPayAmount:v10 completion:v8 + 208];

    return MEMORY[0x1EEE6DEC8](v8 + 80);
  }

  else
  {
    v14 = *(v8 + 672);
    *(v8 + 616), a2, a3, a4, a5, a6, a7, a8;

    sub_1BE04D074();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C34();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "AppleCardBillPayIntent: Failed to open Wallet", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    v18 = *(v8 + 800);
    v19 = *(v8 + 688);
    v20 = *(v8 + 664);
    v21 = *(v8 + 656);
    v22 = *(v8 + 648);
    v35 = *(v8 + 808);
    v23 = *(v8 + 368);
    v24 = *(v8 + 344);
    v25 = *(v8 + 352);

    (*(v25 + 8))(v23, v24);
    sub_1BE0484F4();
    sub_1BD9A80CC(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    sub_1BD9A7458(v22);
    v22, v26, v27, v28, v29, v30, v31, v32;
    swift_unknownObjectRelease();

    v33 = *(v8 + 8);

    return v33();
  }
}

uint64_t sub_1BD9A6CD0()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1BD9A6DD8, v2, v1);
}

uint64_t sub_1BD9A6DD8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 672);
  *(v8 + 616), a2, a3, a4, a5, a6, a7, a8;
  v10 = *(v8 + 825);

  v11 = *(v8 + 808);
  v12 = *(v8 + 800);
  v13 = *(v8 + 688);
  v14 = *(v8 + 664);
  v15 = *(v8 + 656);
  v16 = *(v8 + 648);
  if (v10 == 1)
  {
    sub_1BE048774();
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v25 = 4;
    swift_willThrow();
  }

  sub_1BD9A7458(v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  swift_unknownObjectRelease();

  v24 = *(v8 + 8);

  return v24();
}

uint64_t sub_1BD9A70F4()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 664);
  v3 = *(v0 + 648);
  v4 = *(v0 + 616);

  v4, v5, v6, v7, v8, v9, v10, v11;
  sub_1BD9A7458(v3);
  v3, v12, v13, v14, v15, v16, v17, v18;
  swift_unknownObjectRelease();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1BD9A7294(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 776);
  v10 = *(v8 + 688);
  v11 = *(v8 + 664);
  v12 = *(v8 + 656);
  v13 = *(v8 + 648);
  v14 = *(v8 + 504);
  v15 = *(v8 + 480);
  v16 = *(v8 + 488);
  *(v8 + 616), a2, a3, a4, a5, a6, a7, a8;

  (*(v16 + 8))(v14, v15);
  sub_1BD9A7458(v13);
  v13, v17, v18, v19, v20, v21, v22, v23;
  swift_unknownObjectRelease();

  v24 = *(v8 + 8);

  return v24();
}

uint64_t sub_1BD9A7458(void *a1)
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:AppleCardBillPayIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD9A7744@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB800);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD9A77EC(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A6F8, &qword_1BE109E50);
  v5 = sub_1BD0DE4F4(&qword_1EBD5A700, &qword_1EBD5A6F8, &qword_1BE109E50, MEMORY[0x1E695A700]);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1BD9A3440, 0, v4, a2, v5);
}

uint64_t sub_1BD9A78B4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BD0F985C;

  return sub_1BD9A3E30(a1, v5, v4);
}

char *sub_1BD9A7960@<X0>(char **a1@<X8>)
{
  result = sub_1BD9A7A28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD9A7988(uint64_t a1, double a2)
{
  v3 = sub_1BD9A79D4();

  return MEMORY[0x1EEDB2D90](a1, v3);
}

unint64_t sub_1BD9A79D4()
{
  result = qword_1EBD5A6E0;
  if (!qword_1EBD5A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A6E0);
  }

  return result;
}

char *sub_1BD9A7A28()
{
  v47 = sub_1BE048D74();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v29 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v44 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04A874();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1BE04A884();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A6E8, &qword_1BE109E08);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v11, qword_1EBDAB400);
  v20 = *(v12 + 16);
  v33 = v12 + 16;
  v40 = v20;
  v20(v14, v41, v11);
  sub_1BE04B0A4();
  v32 = v19;
  sub_1BE04A894();
  v21 = *(v17 + 56);
  v38 = v16;
  v39 = v21;
  v21(v7, 1, 1, v16);
  LOBYTE(v48) = 3;
  v22 = sub_1BE048654();
  v34 = v14;
  v35 = v10;
  v23 = v22;
  v24 = *(v22 - 8);
  v30 = v7;
  v25 = *(v24 + 56);
  v37 = v25;
  v31 = v11;
  v26 = v43;
  v25(v43, 1, 1, v22);
  v25(v44, 1, 1, v23);
  v36 = *MEMORY[0x1E695A500];
  v27 = v46;
  v45 = *(v45 + 104);
  (v45)(v46);
  sub_1BD63C178();
  v44 = sub_1BE0488A4();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A6F0, &qword_1BE109E10);
  sub_1BE052354();
  v40(v34, v41, v31);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v39(v30, 1, 1, v38);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v51 = 1;
  v37(v26, 1, 1, v23);
  (v45)(v27, v36, v47);
  sub_1BE0488D4();
  return v44;
}

uint64_t sub_1BD9A805C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0, &unk_1BE0DED20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9A80CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SettingsOptionsSection(uint64_t a1)
{
  result = qword_1EBD5A758;
  if (!qword_1EBD5A758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9A8190(uint64_t a1)
{
  sub_1BD9A8214();
  if (v1 <= 0x3F)
  {
    sub_1BD8636A0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD9A8214()
{
  if (!qword_1EBD53A50)
  {
    v0 = sub_1BE04E174();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD53A50);
    }
  }
}

uint64_t sub_1BD9A8280@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A768, &qword_1BE109F38);
  v84 = *(v1 - 8);
  v85 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v81 = &v79 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A770, &qword_1BE109F40);
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v79 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A778, &qword_1BE109F48);
  v5 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v79 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A780, &qword_1BE109F50);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  v91 = &type metadata for SettingsFeatureFlag.Wallet;
  v20 = sub_1BD5F5818();
  v92 = v20;
  LOBYTE(v90[0]) = 3;
  v21 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v90, v22, v23, v24, v25, v26, v27, v28);
  v29 = 1;
  if ((v21 & 1) == 0)
  {
    v91 = &type metadata for SettingsFeatureFlag.Wallet;
    v92 = v20;
    LOBYTE(v90[0]) = 1;
    v30 = sub_1BE04C584();
    __swift_destroy_boxed_opaque_existential_0(v90, v31, v32, v33, v34, v35, v36, v37);
    if (v30)
    {
      v80 = &v79;
      MEMORY[0x1EEE9AC00](v38);
      *(&v79 - 2) = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A790, &unk_1BE109F60);
      sub_1BD0DE4F4(&qword_1EBD5A798, &qword_1EBD5A790, &unk_1BE109F60, MEMORY[0x1E697D6A8]);
      v39 = v81;
      sub_1BE051A44();
      sub_1BE052434();
      v41 = v40;
      sub_1BD9A95E4();
      v80 = v7;
      v42 = v83;
      v43 = v85;
      sub_1BE050DE4();
      v41, v44, v45, v46, v47, v48, v49, v50;
      (*(v84 + 8))(v39, v43);
      v51 = v42;
      v7 = v80;
      sub_1BD0DE204(v51, v13, &qword_1EBD5A770, &qword_1BE109F40);
      v29 = 0;
    }

    (*(v88 + 56))(v13, v29, 1, v89);
    sub_1BD0DE204(v13, v19, &qword_1EBD5A778, &qword_1BE109F48);
    v29 = 0;
  }

  v52 = 1;
  (*(v5 + 56))(v19, v29, 1, v86);
  v91 = &type metadata for SettingsFeatureFlag.Wallet;
  v92 = v20;
  LOBYTE(v90[0]) = 2;
  v53 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v90, v54, v55, v56, v57, v58, v59, v60);
  if (v53)
  {
    MEMORY[0x1EEE9AC00](v61);
    *(&v79 - 2) = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A790, &unk_1BE109F60);
    sub_1BD0DE4F4(&qword_1EBD5A798, &qword_1EBD5A790, &unk_1BE109F60, MEMORY[0x1E697D6A8]);
    v62 = v81;
    sub_1BE051A44();
    sub_1BE052434();
    v64 = v63;
    sub_1BD9A95E4();
    v65 = v7;
    v66 = v83;
    v67 = v85;
    sub_1BE050DE4();
    v64, v68, v69, v70, v71, v72, v73, v74;
    (*(v84 + 8))(v62, v67);
    v75 = v66;
    v7 = v65;
    sub_1BD0DE204(v75, v10, &qword_1EBD5A770, &qword_1BE109F40);
    v52 = 0;
  }

  (*(v88 + 56))(v10, v52, 1, v89);
  sub_1BD0DE19C(v19, v16, &qword_1EBD5A780, &qword_1BE109F50);
  sub_1BD0DE19C(v10, v7, &qword_1EBD5A778, &qword_1BE109F48);
  v76 = v87;
  sub_1BD0DE19C(v16, v87, &qword_1EBD5A780, &qword_1BE109F50);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A788, &qword_1BE109F58);
  sub_1BD0DE19C(v7, v76 + *(v77 + 48), &qword_1EBD5A778, &qword_1BE109F48);
  sub_1BD0DE53C(v10, &qword_1EBD5A778, &qword_1BE109F48);
  sub_1BD0DE53C(v19, &qword_1EBD5A780, &qword_1BE109F50);
  sub_1BD0DE53C(v7, &qword_1EBD5A778, &qword_1BE109F48);
  return sub_1BD0DE53C(v16, &qword_1EBD5A780, &qword_1BE109F50);
}

uint64_t sub_1BD9A8938(void *a1, double a2)
{
  sub_1BE04E154();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BE8, &qword_1BE0C9050);
  sub_1BD0DE4F4(&qword_1EBD40BF0, &qword_1EBD40BE8, &qword_1BE0C9050, MEMORY[0x1E6981F48]);
  return sub_1BE051814();
}

id sub_1BD9A8A10@<X0>(uint64_t a1@<X8>)
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
  v96 = *MEMORY[0x1E69B8058];
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

uint64_t sub_1BD9A8EA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - v2;
  type metadata accessor for SettingsOptionsSection(0);
  sub_1BE051A84();
  KeyPath = swift_getKeyPath();
  sub_1BE051AA4();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BE8, &qword_1BE0C9050);
  sub_1BD0DE4F4(&qword_1EBD40BF0, &qword_1EBD40BE8, &qword_1BE0C9050, MEMORY[0x1E6981F48]);
  return sub_1BE051814();
}

void sub_1BD9A904C(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD9A90CC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD9A9140@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_1BD9A95E4()
{
  result = qword_1EBD5A7A0;
  if (!qword_1EBD5A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A768, &qword_1BE109F38);
    sub_1BD0DE4F4(&qword_1EBD5A798, &qword_1EBD5A790, &unk_1BE109F60, MEMORY[0x1E697D6A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A7A0);
  }

  return result;
}

id sub_1BD9A96F4(void *a1)
{
  v3 = [a1 panGestureRecognizer];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9 = v3;
  sub_1BD9AC8E0(v8, &v1[OBJC_IVAR___PKPassViewGestureCollector_groupStackView]);
  *&v1[OBJC_IVAR___PKPassViewGestureCollector_groups] = sub_1BD1AEA18(MEMORY[0x1E69E7CC0]);
  v7.receiver = v1;
  v7.super_class = PKPassViewGestureCollector;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  v5 = [a1 panGestureRecognizer];
  [v5 addTarget:v4 action:sel__groupStackViewPanned_];

  return v4;
}

uint64_t sub_1BD9A9814(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v106 = a4;
  v107 = a2;
  v108 = a3;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  v103 = a4;
  v101 = a2;
  v102 = a3;
  swift_unknownObjectRelease();
  v10 = swift_allocObject();
  v99 = v8;
  v100 = v7;
  *(v10 + 2) = v7;
  *(v10 + 3) = v8;
  v98 = v9;
  *(v10 + 4) = v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  swift_unknownObjectRelease();
  v95 = swift_allocObject();
  v96 = v12;
  v97 = v11;
  *(v95 + 16) = v11;
  *(v95 + 24) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE048964();
  swift_unknownObjectRelease();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE048964();
  swift_unknownObjectRelease();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE048964();
  swift_unknownObjectRelease();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v22 = _s15GestureDelegateCMa();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_shouldBegin];
  *v24 = sub_1BD9AC8A8;
  v24[1] = v10;
  v25 = &v23[OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_shouldRecognizeSimultaneouslyWith];
  *v25 = sub_1BD9AC8B4;
  v25[1] = v95;
  v26 = &v23[OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_shouldRequireFailureOf];
  *v26 = sub_1BD9AC8BC;
  v26[1] = v15;
  v27 = &v23[OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_shouldBeRequiredToFailBy];
  *v27 = sub_1BD9AC8C4;
  v27[1] = v18;
  v28 = &v23[OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_action];
  *v28 = sub_1BD9AC8CC;
  v28[1] = v21;
  v104.receiver = v23;
  v104.super_class = v22;
  v29 = objc_msgSendSuper2(&v104, sel_init);
  v100, v30, v31, v32, v33, v34, v35, v36;
  v99, v37, v38, v39, v40, v41, v42, v43;
  v98, v44, v45, v46, v47, v48, v49, v50;
  v97, v51, v52, v53, v54, v55, v56, v57;
  v96, v58, v59, v60, v61, v62, v63, v64;
  v13, v65, v66, v67, v68, v69, v70, v71;
  v14, v72, v73, v74, v75, v76, v77, v78;
  v16, v79, v80, v81, v82, v83, v84, v85;
  v17, v86, v87, v88, v89, v90, v91, v92;
  v109 = v29;
  v93 = v29;
  [v101 setDelegate_];
  [v102 setDelegate_];
  [v103 setDelegate_];
  [v101 addTarget:v93 action:sel__gestureRecognizerActed_];
  [v103 addTarget:v93 action:sel__gestureRecognizerActed_];

  sub_1BD9A9D28(v105);
  return sub_1BD9AC7A0(v105);
}

uint64_t sub_1BD9A9D28(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v4 = Strong;
  v5 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16) || (v7 = sub_1BD149084(v4), (v8 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_7;
  }

  sub_1BD509500(*(v6 + 56) + 40 * v7, v10);
  sub_1BD1B6150(v10, v11);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
LABEL_8:
    while (1)
    {
      sub_1BE053994();
      __break(1u);
    }
  }

  sub_1BD9AC7A0(v11);
LABEL_7:
  sub_1BD509500(a1, v11);
  swift_beginAccess();
  sub_1BD6B0DF0(v11, v4);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD9A9FCC(uint64_t a1)
{
  v3 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = sub_1BD149084(a1);
    if (v6)
    {
      v7 = v5;
      v8 = *(v4 + 36);
      v13 = sub_1BD9AA474(&v14, v5, v8, 0, v4);
      sub_1BD0DE19C(&v13, v11, &qword_1EBD5A878, &unk_1BE10A028);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1BD9AC7A0(&v12);
      if (!Strong)
      {
LABEL_6:
        swift_beginAccess();
        sub_1BD9AC7D0(v11, v7, v8);
        swift_endAccess();
        sub_1BD9AC7A0(v11);
        return sub_1BD0DE53C(&v13, &qword_1EBD5A878, &unk_1BE10A028);
      }

      if (Strong == a1)
      {
        swift_unknownObjectRelease();
        goto LABEL_6;
      }
    }
  }

  result = sub_1BE053994();
  __break(1u);
  return result;
}

void sub_1BD9AA200()
{
  v1 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1BE048C84();
  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_15:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(*(v2 + 48) + 8 * v12);
    sub_1BD509500(*(v2 + 56) + 40 * v12, v23);
    *&v24[0] = v13;
    sub_1BD1B6150(v23, v24 + 8);
LABEL_16:
    sub_1BD0DE204(v24, v25, &qword_1EBD5A870, &qword_1BE10A020);
    if (!v26[1])
    {
      v2, v14, v15, v16, v17, v18, v19, v20;
      return;
    }

    v21 = v26[2];
    sub_1BD9AC7A0(v26);
    v22 = v21;
    if ([v22 isEnabled])
    {
      if ([v22 state] - 1 < 2)
      {
        [v22 setEnabled_];
        [v22 setEnabled_];
      }
    }
  }

  if (v6 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 - 1;
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      v5 = 0;
      v7 = v10;
      memset(v24, 0, sizeof(v24));
      goto LABEL_16;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1BD9AA474(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    sub_1BD509500(*(a5 + 56) + 40 * a2, result);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1BD9AA4F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a3;
  v64[0] = a1;
  v64[1] = a2;
  v8 = a3 & 1;
  v65 = a3 & 1;
  sub_1BD509500(a4, &v66);
  v9 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v59 = v9;
  v60 = v4;
  v10 = *(v4 + v9);
  swift_bridgeObjectRetain_n();
  sub_1BD9AC8D4(a1, a2, v8);
  v11 = sub_1BE053674();
  v12 = *(v10 + 36);
  v13 = *(v10 + 32);
  v10, v14, v15, v16, v17, v18, v19, v20;
  v28 = (1 << v13);
  v57 = v11;
  if (v11 == 1 << v13)
  {
LABEL_2:
    v10, v21, v22, v23, v24, v25, v26, v27;
    sub_1BD20DE9C(v57, v12, 0, v29, v30, v31, v32, v33);
    sub_1BD20DE9C(v28, v12, 0, v34, v35, v36, v37, v38);
    sub_1BD20DE9C(v28, v12, 0, v39, v40, v41, v42, v43);
    sub_1BD0DE53C(v64, &qword_1EBD5A8E8, &qword_1BE10A040);
  }

  else
  {
    v44 = v11;
    v58 = v5;
    while ((v44 & 0x8000000000000000) == 0)
    {
      v45 = 1 << *(v10 + 32);
      if (v44 >= v45)
      {
        break;
      }

      v46 = v44 >> 6;
      v47 = *(v10 + 64 + 8 * (v44 >> 6));
      if ((v47 & (1 << v44)) == 0)
      {
        goto LABEL_29;
      }

      if (v12 != *(v10 + 36))
      {
        goto LABEL_30;
      }

      v48 = v47 & (-2 << (v44 & 0x3F));
      if (v48)
      {
        v45 = __clz(__rbit64(v48)) | v44 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = v46 << 6;
        v50 = v46 + 1;
        v51 = (v10 + 72 + 8 * v46);
        while (v50 < (v45 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            v45 = __clz(__rbit64(v52)) + v49;
            break;
          }
        }
      }

      if (v5)
      {
        goto LABEL_35;
      }

      if (v12 != a2)
      {
        goto LABEL_31;
      }

      if (v44 != a1)
      {
        v54 = *(v60 + v59);
        if (v44 >= 1 << *(v54 + 32))
        {
          goto LABEL_32;
        }

        if ((*(v54 + 8 * v46 + 64) & (1 << v44)) == 0)
        {
          goto LABEL_33;
        }

        if (v12 != *(v54 + 36))
        {
          goto LABEL_34;
        }

        sub_1BD509500(*(v54 + 56) + 40 * v44, v61);
        v55 = v63;
        if ([v63 isEnabled] && objc_msgSend(v55, sel_state) <= 2)
        {
          [v55 setEnabled_];
          v5 = v58;
          [v55 setEnabled_];
        }

        v56 = v62;
        if ([v62 isEnabled])
        {
          if ([v56 state] <= 2)
          {
            [v56 setEnabled_];
            v5 = v58;
            [v56 setEnabled_];
          }
        }

        sub_1BD9AC7A0(v61);
      }

      v44 = v45;
      if (v45 == v28)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void sub_1BD9AA82C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v100[0] = a3;
  v100[1] = a4;
  v11 = a5 & 1;
  v101 = a5 & 1;
  sub_1BD509500(a6, &v102);
  if (!a2)
  {
    sub_1BD9AC8D4(a3, a4, v11);
    goto LABEL_37;
  }

  if (a2 == 1)
  {
    v12 = sub_1BD9AC8D4(a3, a4, v7 & 1);
  }

  else
  {
    sub_1BD0DE19C(v100, &v96, &qword_1EBD5A8E8, &qword_1BE10A040);
    v48 = v96;
    v49 = v97;
    v50 = v98;
    sub_1BD9AC8D4(a3, a4, v7 & 1);
    sub_1BD20DE9C(v48, v49, v50, v51, v52, v53, v54, v55);
    v56 = v99[3];
    sub_1BD9AC7A0(v99);
    if (![v56 isEnabled])
    {

      goto LABEL_37;
    }

    v57 = [v56 state];

    if ((v57 - 1) >= 2)
    {
      goto LABEL_37;
    }
  }

  v13 = *(v6 + OBJC_IVAR___PKPassViewGestureCollector_groupStackView + 8);
  if ([v13 isEnabled] && objc_msgSend(v13, sel_state) - 1 < 2)
  {
    goto LABEL_37;
  }

  v14 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v95 = v14;
  v15 = *(v6 + v14);
  swift_bridgeObjectRetain_n();
  v16 = sub_1BE053674();
  v17 = *(v15 + 36);
  LOBYTE(v14) = *(v15 + 32);
  v15, v18, v19, v20, v21, v22, v23, v24;
  v32 = (1 << v14);
  v94 = v16;
  if (v16 == 1 << v14)
  {
LABEL_7:
    v15, v25, v26, v27, v28, v29, v30, v31;
    sub_1BD20DE9C(v94, v17, 0, v33, v34, v35, v36, v37);
    sub_1BD20DE9C(v32, v17, 0, v38, v39, v40, v41, v42);
    sub_1BD20DE9C(v32, v17, 0, v43, v44, v45, v46, v47);
LABEL_37:
    sub_1BD0DE53C(v100, &qword_1EBD5A8E8, &qword_1BE10A040);
    return;
  }

  v58 = v16;
  while ((v58 & 0x8000000000000000) == 0)
  {
    v59 = (1 << *(v15 + 32));
    if (v58 >= v59)
    {
      break;
    }

    v60 = v58 >> 6;
    v61 = *(v15 + 64 + 8 * (v58 >> 6));
    if ((v61 & (1 << v58)) == 0)
    {
      goto LABEL_39;
    }

    if (v17 != *(v15 + 36))
    {
      goto LABEL_40;
    }

    v62 = v61 & (-2 << (v58 & 0x3F));
    if (v62)
    {
      v59 = (__clz(__rbit64(v62)) | v58 & 0x7FFFFFFFFFFFFFC0);
    }

    else
    {
      v63 = v60 << 6;
      v64 = v60 + 1;
      v65 = (v15 + 72 + 8 * v60);
      while (v64 < (v59 + 63) >> 6)
      {
        v67 = *v65++;
        v66 = v67;
        v63 += 64;
        ++v64;
        if (v67)
        {
          v59 = (__clz(__rbit64(v66)) + v63);
          break;
        }
      }
    }

    if (v7)
    {
      goto LABEL_45;
    }

    if (v17 != a4)
    {
      goto LABEL_41;
    }

    if (v58 != a3)
    {
      v68 = *(v6 + v95);
      if (v58 >= 1 << *(v68 + 32))
      {
        goto LABEL_42;
      }

      if ((*(v68 + 8 * v60 + 64) & (1 << v58)) == 0)
      {
        goto LABEL_43;
      }

      if (v17 != *(v68 + 36))
      {
        goto LABEL_44;
      }

      v69 = v7;
      sub_1BD509500(*(v68 + 56) + 40 * v58, &v96);
      v70 = v99[0];
      if ([v99[0] isEnabled] && objc_msgSend(v70, sel_state) - 1 <= 1 || (v78 = v97, objc_msgSend(v97, sel_isEnabled, v94)) && objc_msgSend(v78, sel_state) - 1 <= 1)
      {
        v15, v71, v72, v73, v74, v75, v76, v77;
        sub_1BD20DE9C(v94, v17, 0, v79, v80, v81, v82, v83);
        sub_1BD20DE9C(v32, v17, 0, v84, v85, v86, v87, v88);
        sub_1BD20DE9C(v59, v17, 0, v89, v90, v91, v92, v93);
        sub_1BD9AC7A0(&v96);
        goto LABEL_37;
      }

      sub_1BD9AC7A0(&v96);
      v7 = v69;
    }

    v58 = v59;
    if (v59 == v32)
    {
      goto LABEL_7;
    }
  }

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
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1BD9AAC78(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v24[0] = a3;
  v24[1] = a4;
  v10 = a5 & 1;
  v25 = a5 & 1;
  sub_1BD509500(a6, &v26);
  if ([a1 state] < 3)
  {
    if (!a2)
    {
      sub_1BD0DE19C(v24, &v20, &qword_1EBD5A8E8, &qword_1BE10A040);
      v12 = v20;
      v13 = v21;
      v14 = v22;
      sub_1BD9AA4F4(v20, v21, v22, v23);
      sub_1BD20DE9C(v12, v13, v14, v15, v16, v17, v18, v19);
      sub_1BD0DE53C(v24, &qword_1EBD5A8E8, &qword_1BE10A040);
      return sub_1BD9AC7A0(v23);
    }

    if (a2 != 1)
    {
      sub_1BD9AA200();
    }
  }

  return sub_1BD0DE53C(v24, &qword_1EBD5A8E8, &qword_1BE10A040);
}

uint64_t sub_1BD9AADAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v6 = Strong;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {

LABEL_16:
    v26 = 0;
    return v26 & 1;
  }

  v8 = v7;
  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {

LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v10 = v9;
  if (([v8 gestureCollector:v6 recognizerShouldBegin:a1] & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v11 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v12 = *&v6[v11];
  if (!*(v12 + 16) || (v13 = sub_1BD149084(v10), (v14 & 1) == 0))
  {
    memset(v87, 0, sizeof(v87));
    sub_1BD0DE19C(v87, &v81, &qword_1EBD5A8E0, &qword_1BE10A038);
    if (v85)
    {
      sub_1BD0DE204(&v81, v86, &qword_1EBD5A8E8, &qword_1BE10A040);
      sub_1BD0DE19C(v86, &v81, &qword_1EBD5A8E8, &qword_1BE10A040);
      v28 = v81;
      v29 = v82;
      v30 = v83;
      sub_1BE048C84();
      sub_1BD20DE9C(v28, v29, v30, v31, v32, v33, v34, v35);
      sub_1BD1B6150(&v84, v77);
      v36 = v78;
      if (v78 == a1)
      {
        v37 = 2;
      }

      else
      {
        v36 = v79;
        if (v79 == a1)
        {
          v37 = 0;
        }

        else
        {
          v36 = v80;
          if (v80 != a1)
          {
            goto LABEL_31;
          }

          v37 = 1;
        }
      }

      v38 = v36;
      sub_1BD0DE19C(v86, &v81, &qword_1EBD5A8E8, &qword_1BE10A040);
      v40 = v81;
      v39 = v82;
      v41 = v83;
      sub_1BD9AA82C(a1, v37, v81, v82, v83, &v84);
      v26 = v42;
      swift_unknownObjectRelease();
      sub_1BD20DE9C(v40, v39, v41, v43, v44, v45, v46, v47);
      sub_1BD585394(a1, v37);
      v12, v48, v49, v50, v51, v52, v53, v54;

      swift_unknownObjectRelease();
      v55 = v77;
LABEL_30:
      sub_1BD9AC7A0(v55);
      sub_1BD0DE53C(v86, &qword_1EBD5A8E8, &qword_1BE10A040);
      sub_1BD0DE53C(v87, &qword_1EBD5A8E0, &qword_1BE10A038);
      sub_1BD9AC7A0(&v84);
      return v26 & 1;
    }

    goto LABEL_23;
  }

  v15 = *(v12 + 36);
  *&v87[0] = v13;
  *(&v87[0] + 1) = v15;
  LOBYTE(v87[1]) = 0;
  sub_1BD9AA474(v77, v13, v15, 0, v12);
  sub_1BD1B6150(v77, &v87[1] + 8);
  sub_1BD0DE19C(v87, &v81, &qword_1EBD5A8E0, &qword_1BE10A038);
  if (!v85)
  {
LABEL_23:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1BD0DE53C(v87, &qword_1EBD5A8E0, &qword_1BE10A038);
    sub_1BD0DE53C(&v81, &qword_1EBD5A8E0, &qword_1BE10A038);
    goto LABEL_16;
  }

  sub_1BD0DE204(&v81, v86, &qword_1EBD5A8E8, &qword_1BE10A040);
  sub_1BD0DE19C(v86, &v81, &qword_1EBD5A8E8, &qword_1BE10A040);
  v16 = v81;
  v17 = v82;
  v18 = v83;
  sub_1BE048C84();
  sub_1BD20DE9C(v16, v17, v18, v19, v20, v21, v22, v23);
  sub_1BD1B6150(&v84, v73);
  v24 = v74;
  if (v74 == a1)
  {
    v25 = 2;
    goto LABEL_29;
  }

  v24 = v75;
  if (v75 == a1)
  {
    v25 = 0;
    goto LABEL_29;
  }

  v24 = v76;
  if (v76 == a1)
  {
    v25 = 1;
LABEL_29:
    v56 = v24;
    sub_1BD0DE19C(v86, &v81, &qword_1EBD5A8E8, &qword_1BE10A040);
    v58 = v81;
    v57 = v82;
    v59 = v83;
    sub_1BD9AA82C(a1, v25, v81, v82, v83, &v84);
    v26 = v60;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1BD20DE9C(v58, v57, v59, v61, v62, v63, v64, v65);
    sub_1BD585394(a1, v25);
    v12, v66, v67, v68, v69, v70, v71, v72;

    v55 = v73;
    goto LABEL_30;
  }

LABEL_31:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

char *sub_1BD9AB2B0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 0;
  }

  v9 = Strong;
  v10 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v11 = *&v7[v10];
  if (*(v11 + 16))
  {
    v12 = sub_1BD149084(v9);
    if (v13)
    {
      v14 = *(v11 + 36);
      v77[0] = v12;
      v77[1] = v14;
      LOBYTE(v77[2]) = 0;
      sub_1BD9AA474(v68, v12, v14, 0, v11);
      sub_1BD1B6150(v68, &v77[3]);
      sub_1BD0DE19C(v77, &v72, &qword_1EBD5A8E0, &qword_1BE10A038);
      if (v75)
      {
        sub_1BD0DE204(&v72, v76, &qword_1EBD5A8E8, &qword_1BE10A040);
        sub_1BD0DE19C(v76, &v72, &qword_1EBD5A8E8, &qword_1BE10A040);
        v15 = v72;
        v16 = v73;
        sub_1BE048C84();
        sub_1BD20DE9C(v15, *(&v15 + 1), v16, v17, v18, v19, v20, v21);
        sub_1BD1B6150(&v74, v58);
        v22 = v59;
        if (v59 == a1)
        {
          v23 = 2;
        }

        else
        {
          v22 = v60;
          if (v60 != a1)
          {
            v22 = v61;
            if (v61 == a1)
            {
              v23 = 1;
              goto LABEL_31;
            }

LABEL_50:
            result = sub_1BE053994();
            __break(1u);
            return result;
          }

          v23 = 0;
        }

LABEL_31:
        v45 = v22;
        v11, v46, v47, v48, v49, v50, v51, v52;
        swift_unknownObjectRelease();
        sub_1BD0DE19C(v76, &v72, &qword_1EBD5A8E8, &qword_1BE10A040);
        v62 = v72;
        v63 = v73;
        sub_1BD509500(&v74, &v64);
        v53 = v65;
        if (v65 == a2)
        {
          v42 = 2;
        }

        else
        {
          v53 = v66;
          if (v66 == a2)
          {
            v42 = 0;
          }

          else
          {
            v53 = v67;
            if (v67 != a2)
            {
              v41 = 0;
              v42 = 255;
LABEL_39:
              sub_1BD0DE53C(&v62, &qword_1EBD5A8E8, &qword_1BE10A040);
              v44 = v58;
              goto LABEL_40;
            }

            v42 = 1;
          }
        }

        v54 = v53;
        v41 = a2;
        goto LABEL_39;
      }

      goto LABEL_16;
    }
  }

  memset(v77, 0, 64);
  sub_1BD0DE19C(v77, &v72, &qword_1EBD5A8E0, &qword_1BE10A038);
  if (!v75)
  {
LABEL_16:

    swift_unknownObjectRelease();
    sub_1BD0DE53C(v77, &qword_1EBD5A8E0, &qword_1BE10A038);
    sub_1BD0DE53C(&v72, &qword_1EBD5A8E0, &qword_1BE10A038);
    return 0;
  }

  sub_1BD0DE204(&v72, v76, &qword_1EBD5A8E8, &qword_1BE10A040);
  sub_1BD0DE19C(v76, &v72, &qword_1EBD5A8E8, &qword_1BE10A040);
  v24 = v72;
  v25 = v73;
  sub_1BE048C84();
  sub_1BD20DE9C(v24, *(&v24 + 1), v25, v26, v27, v28, v29, v30);
  sub_1BD1B6150(&v74, v68);
  v31 = v69;
  if (v69 == a1)
  {
    v23 = 2;
  }

  else
  {
    v31 = v70;
    if (v70 == a1)
    {
      v23 = 0;
    }

    else
    {
      v31 = v71;
      if (v71 != a1)
      {
        goto LABEL_50;
      }

      v23 = 1;
    }
  }

  v32 = v31;
  v11, v33, v34, v35, v36, v37, v38, v39;
  swift_unknownObjectRelease();
  sub_1BD0DE19C(v76, &v72, &qword_1EBD5A8E8, &qword_1BE10A040);
  v62 = v72;
  v63 = v73;
  sub_1BD509500(&v74, &v64);
  v40 = v65;
  if (v65 == a2)
  {
    v42 = 2;
LABEL_28:
    v43 = v40;
    v41 = a2;
    goto LABEL_29;
  }

  v40 = v66;
  if (v66 == a2)
  {
    v42 = 0;
    goto LABEL_28;
  }

  v40 = v67;
  if (v67 == a2)
  {
    v42 = 1;
    goto LABEL_28;
  }

  v41 = 0;
  v42 = 255;
LABEL_29:
  sub_1BD0DE53C(&v62, &qword_1EBD5A8E8, &qword_1BE10A040);
  v44 = v68;
LABEL_40:
  sub_1BD9AC7A0(v44);
  sub_1BD0DE53C(v76, &qword_1EBD5A8E8, &qword_1BE10A040);
  sub_1BD0DE53C(v77, &qword_1EBD5A8E0, &qword_1BE10A038);
  if (v42 == 255)
  {
    if (v23)
    {
      if (v23 == 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 2;
      }

      sub_1BD585394(a1, v56);

      v55 = 0;
    }

    else
    {
      sub_1BD585394(a1, 0);
      v57 = *&v7[OBJC_IVAR___PKPassViewGestureCollector_groupStackView + 8];

      v55 = v57 == a2;
    }
  }

  else
  {
    sub_1BD585394(v41, v42);
    sub_1BD585394(a1, v23);

    v55 = 1;
  }

  sub_1BD9AC7A0(&v74);
  return v55;
}

uint64_t sub_1BD9AB824(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {

    return 0;
  }

  v8 = v7;
  v9 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v10 = *&v6[v9];
  if (!*(v10 + 16) || (v11 = sub_1BD149084(v8), (v12 & 1) == 0))
  {
    memset(v65, 0, 64);
    sub_1BD0DE19C(v65, &v60, &qword_1EBD5A8E0, &qword_1BE10A038);
    if (v63)
    {
      sub_1BD0DE204(&v60, v64, &qword_1EBD5A8E8, &qword_1BE10A040);
      sub_1BD0DE19C(v64, &v60, &qword_1EBD5A8E8, &qword_1BE10A040);
      v23 = v60;
      v24 = v61;
      sub_1BE048C84();
      sub_1BD20DE9C(v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29);
      sub_1BD1B6150(&v62, v56);
      v30 = v57;
      if (v57 == a1)
      {
        v22 = 2;
      }

      else
      {
        v30 = v58;
        if (v58 == a1)
        {
          v22 = 0;
        }

        else
        {
          v30 = v59;
          if (v59 != a1)
          {
            goto LABEL_25;
          }

          v22 = 1;
        }
      }

      v31 = v30;

      v10, v32, v33, v34, v35, v36, v37, v38;
      swift_unknownObjectRelease();
      v39 = v56;
LABEL_23:
      sub_1BD9AC7A0(v39);
      sub_1BD0DE53C(v65, &qword_1EBD5A8E0, &qword_1BE10A038);
      sub_1BD585394(a1, v22);
      sub_1BD0DE204(v64, &v60, &qword_1EBD5A8E8, &qword_1BE10A040);
      v53 = v60;
      v54 = v61;
      sub_1BD509500(&v62, &v55);
      sub_1BD0DE53C(&v53, &qword_1EBD5A8E8, &qword_1BE10A040);
      sub_1BD9AC7A0(&v62);
      return 0;
    }

    goto LABEL_16;
  }

  v13 = *(v10 + 36);
  v65[0] = v11;
  v65[1] = v13;
  LOBYTE(v65[2]) = 0;
  sub_1BD9AA474(v56, v11, v13, 0, v10);
  sub_1BD1B6150(v56, &v65[3]);
  sub_1BD0DE19C(v65, &v60, &qword_1EBD5A8E0, &qword_1BE10A038);
  if (!v63)
  {
LABEL_16:

    swift_unknownObjectRelease();
    sub_1BD0DE53C(v65, &qword_1EBD5A8E0, &qword_1BE10A038);
    sub_1BD0DE53C(&v60, &qword_1EBD5A8E0, &qword_1BE10A038);
    return 0;
  }

  sub_1BD0DE204(&v60, v64, &qword_1EBD5A8E8, &qword_1BE10A040);
  sub_1BD0DE19C(v64, &v60, &qword_1EBD5A8E8, &qword_1BE10A040);
  v14 = v60;
  v15 = v61;
  sub_1BE048C84();
  sub_1BD20DE9C(v14, *(&v14 + 1), v15, v16, v17, v18, v19, v20);
  sub_1BD1B6150(&v62, v49);
  v21 = v50;
  if (v50 == a1)
  {
    v22 = 2;
    goto LABEL_22;
  }

  v21 = v51;
  if (v51 == a1)
  {
    v22 = 0;
    goto LABEL_22;
  }

  v21 = v52;
  if (v52 == a1)
  {
    v22 = 1;
LABEL_22:
    v40 = v21;

    v10, v41, v42, v43, v44, v45, v46, v47;
    swift_unknownObjectRelease();
    v39 = v49;
    goto LABEL_23;
  }

LABEL_25:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD9ABC18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v6 = Strong;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {

    return 1;
  }

  v8 = v7;
  v9 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v10 = *&v6[v9];
  if (!*(v10 + 16) || (v11 = sub_1BD149084(v8), (v12 & 1) == 0))
  {
    memset(v66, 0, 64);
    sub_1BD0DE19C(v66, &v61, &qword_1EBD5A8E0, &qword_1BE10A038);
    v14 = v64 == 0;
    if (v64)
    {
      sub_1BD0DE204(&v61, v65, &qword_1EBD5A8E8, &qword_1BE10A040);
      sub_1BD0DE19C(v65, &v61, &qword_1EBD5A8E8, &qword_1BE10A040);
      v24 = v61;
      v25 = v62;
      sub_1BE048C84();
      sub_1BD20DE9C(v24, *(&v24 + 1), v25, v26, v27, v28, v29, v30);
      sub_1BD1B6150(&v63, v57);
      v31 = v58;
      if (v58 == a1)
      {
        v23 = 2;
      }

      else
      {
        v31 = v59;
        if (v59 == a1)
        {
          v23 = 0;
        }

        else
        {
          v31 = v60;
          if (v60 != a1)
          {
            goto LABEL_26;
          }

          v23 = 1;
        }
      }

      v32 = v31;

      v10, v33, v34, v35, v36, v37, v38, v39;
      swift_unknownObjectRelease();
      v40 = v57;
LABEL_24:
      sub_1BD9AC7A0(v40);
      sub_1BD0DE53C(v66, &qword_1EBD5A8E0, &qword_1BE10A038);
      sub_1BD585394(a1, v23);
      sub_1BD0DE204(v65, &v61, &qword_1EBD5A8E8, &qword_1BE10A040);
      v54 = v61;
      v55 = v62;
      sub_1BD509500(&v63, &v56);
      sub_1BD0DE53C(&v54, &qword_1EBD5A8E8, &qword_1BE10A040);
      sub_1BD9AC7A0(&v63);
      return v14;
    }

    goto LABEL_17;
  }

  v13 = *(v10 + 36);
  v66[0] = v11;
  v66[1] = v13;
  LOBYTE(v66[2]) = 0;
  sub_1BD9AA474(v57, v11, v13, 0, v10);
  sub_1BD1B6150(v57, &v66[3]);
  sub_1BD0DE19C(v66, &v61, &qword_1EBD5A8E0, &qword_1BE10A038);
  v14 = v64 == 0;
  if (!v64)
  {
LABEL_17:

    swift_unknownObjectRelease();
    sub_1BD0DE53C(v66, &qword_1EBD5A8E0, &qword_1BE10A038);
    sub_1BD0DE53C(&v61, &qword_1EBD5A8E0, &qword_1BE10A038);
    return v14;
  }

  sub_1BD0DE204(&v61, v65, &qword_1EBD5A8E8, &qword_1BE10A040);
  sub_1BD0DE19C(v65, &v61, &qword_1EBD5A8E8, &qword_1BE10A040);
  v15 = v61;
  v16 = v62;
  sub_1BE048C84();
  sub_1BD20DE9C(v15, *(&v15 + 1), v16, v17, v18, v19, v20, v21);
  sub_1BD1B6150(&v63, v50);
  v22 = v51;
  if (v51 == a1)
  {
    v23 = 2;
    goto LABEL_23;
  }

  v22 = v52;
  if (v52 == a1)
  {
    v23 = 0;
    goto LABEL_23;
  }

  v22 = v53;
  if (v53 == a1)
  {
    v23 = 1;
LABEL_23:
    v41 = v22;

    v10, v42, v43, v44, v45, v46, v47, v48;
    swift_unknownObjectRelease();
    v40 = v50;
    goto LABEL_24;
  }

LABEL_26:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

void sub_1BD9AC020(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {

      return;
    }

    v7 = v6;
    v8 = OBJC_IVAR___PKPassViewGestureCollector_groups;
    swift_beginAccess();
    v9 = *&v5[v8];
    if (*(v9 + 16) && (v10 = sub_1BD149084(v7), (v11 & 1) != 0))
    {
      v12 = *(v9 + 36);
      *&v80[0] = v10;
      *(&v80[0] + 1) = v12;
      LOBYTE(v80[1]) = 0;
      sub_1BD9AA474(v70, v10, v12, 0, v9);
      sub_1BD1B6150(v70, &v80[1] + 8);
      sub_1BD0DE19C(v80, &v74, &qword_1EBD5A8E0, &qword_1BE10A038);
      if (v78)
      {
        sub_1BD0DE204(&v74, v79, &qword_1EBD5A8E8, &qword_1BE10A040);
        sub_1BD0DE19C(v79, &v74, &qword_1EBD5A8E8, &qword_1BE10A040);
        v13 = v74;
        v14 = v75;
        v15 = v76;
        sub_1BE048C84();
        sub_1BD20DE9C(v13, v14, v15, v16, v17, v18, v19, v20);
        sub_1BD1B6150(&v77, v66);
        v21 = v67;
        if (v67 == a1)
        {
          v22 = 2;
          goto LABEL_22;
        }

        v21 = v68;
        if (v68 == a1)
        {
          v22 = 0;
          goto LABEL_22;
        }

        v21 = v69;
        if (v69 == a1)
        {
          v22 = 1;
LABEL_22:
          v50 = v21;
          sub_1BD0DE19C(v79, &v74, &qword_1EBD5A8E8, &qword_1BE10A040);
          v51 = v74;
          v52 = v75;
          v53 = v76;
          sub_1BD9AAC78(a1, v22, v74, v75, v76, &v77);
          swift_unknownObjectRelease();
          sub_1BD20DE9C(v51, v52, v53, v54, v55, v56, v57, v58);
          sub_1BD585394(a1, v22);
          v9, v59, v60, v61, v62, v63, v64, v65;

          v49 = v66;
          goto LABEL_23;
        }

LABEL_25:
        sub_1BE053994();
        __break(1u);
        return;
      }
    }

    else
    {
      memset(v80, 0, sizeof(v80));
      sub_1BD0DE19C(v80, &v74, &qword_1EBD5A8E0, &qword_1BE10A038);
      if (v78)
      {
        sub_1BD0DE204(&v74, v79, &qword_1EBD5A8E8, &qword_1BE10A040);
        sub_1BD0DE19C(v79, &v74, &qword_1EBD5A8E8, &qword_1BE10A040);
        v23 = v74;
        v24 = v75;
        v25 = v76;
        sub_1BE048C84();
        sub_1BD20DE9C(v23, v24, v25, v26, v27, v28, v29, v30);
        sub_1BD1B6150(&v77, v70);
        v31 = v71;
        if (v71 == a1)
        {
          v32 = 2;
        }

        else
        {
          v31 = v72;
          if (v72 == a1)
          {
            v32 = 0;
          }

          else
          {
            v31 = v73;
            if (v73 != a1)
            {
              goto LABEL_25;
            }

            v32 = 1;
          }
        }

        v33 = v31;
        sub_1BD0DE19C(v79, &v74, &qword_1EBD5A8E8, &qword_1BE10A040);
        v34 = v74;
        v35 = v75;
        v36 = v76;
        sub_1BD9AAC78(a1, v32, v74, v75, v76, &v77);
        sub_1BD20DE9C(v34, v35, v36, v37, v38, v39, v40, v41);
        sub_1BD585394(a1, v32);
        v9, v42, v43, v44, v45, v46, v47, v48;

        swift_unknownObjectRelease();
        v49 = v70;
LABEL_23:
        sub_1BD9AC7A0(v49);
        sub_1BD0DE53C(v79, &qword_1EBD5A8E8, &qword_1BE10A040);
        sub_1BD0DE53C(v80, &qword_1EBD5A8E0, &qword_1BE10A038);
        sub_1BD9AC7A0(&v77);
        return;
      }
    }

    swift_unknownObjectRelease();
    sub_1BD0DE53C(v80, &qword_1EBD5A8E0, &qword_1BE10A038);
    sub_1BD0DE53C(&v74, &qword_1EBD5A8E0, &qword_1BE10A038);
  }
}

uint64_t sub_1BD9AC564(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = *&a1[*a5];
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = v7(v8, v9);

  return v11 & 1;
}

unint64_t type metadata accessor for PKPassViewGestureCollector()
{
  result = qword_1EBD5A868;
  if (!qword_1EBD5A868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD5A868);
  }

  return result;
}

void sub_1BD9AC7D0(uint64_t a1, int64_t a2, int a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BD508850();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    sub_1BD1B6150(*(v9 + 56) + 40 * a2, a1);
    sub_1BD505F38(a2, v9);
    *v4 = v9;
    return;
  }

LABEL_10:
  __break(1u);
}

double sub_1BD9AC8D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1BE048C84();
  }

  return result;
}

char *PeerPaymentGroupedPaymentsViewController.__allocating_init(request:transactionSourceCollection:context:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BD9ACE4C(a1, a2, a3);

  return v8;
}

char *PeerPaymentGroupedPaymentsViewController.init(request:transactionSourceCollection:context:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1BD9ACE4C(a1, a2, a3);

  return v5;
}

Swift::Void __swiftcall PeerPaymentGroupedPaymentsViewController.loadView()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = *&v0[OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 didMoveToParentViewController_];
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

Swift::Void __swiftcall PeerPaymentGroupedPaymentsViewController.viewWillLayoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *&v0[OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC];
    if (v11)
    {
      v12 = [v11 view];
    }

    else
    {
      v12 = 0;
    }

    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id PeerPaymentGroupedPaymentsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
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

id PeerPaymentGroupedPaymentsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BD9ACE4C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for PeerPaymentGroupedPaymentsView(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (v27 - v15);
  *&v4[OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC] = 0;
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0, v14);
  *v16 = 0x4040000000000000;
  v18 = *(v10 + 32);
  *(v16 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(type metadata accessor for PeerPaymentGroupedPaymentsModel(0));
  v19 = v17;
  PeerPaymentGroupedPaymentsModel.init(request:transactionSourceCollection:context:)(a1, a2, a3);
  v27[1] = v20;
  sub_1BE051694();
  v21 = v27[3];
  v16[1] = v27[2];
  v16[2] = v21;
  sub_1BD27A628(v16, v12);
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A8F8, &qword_1BE10A148));
  v23 = sub_1BE04F894();
  v24 = *&v19[OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC];
  *&v19[OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC] = v23;
  v25 = v23;

  [v19 addChildViewController_];
  sub_1BD9AD098(v16);
  return v19;
}

uint64_t sub_1BD9AD098(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentGroupedPaymentsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *NearbyEntryCollectionViewHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewHeaderView_lineView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for NearbyEntryCollectionViewHeaderView();
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewHeaderView_lineView;
  v12 = *&v10[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewHeaderView_lineView];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 tertiarySystemBackgroundColor];
  [v15 setBackgroundColor_];

  [v14 addSubview_];
  return v14;
}

id _s9PassKitUI031NearbyEntryCollectionViewHeaderG0C5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *NearbyPeerPaymentEntryCollectionViewCell.init(frame:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v14 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v15 = type metadata accessor for NearbyPeerPaymentEntryCollectionViewCell();
  v40.receiver = v4;
  v40.super_class = v15;
  v16 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  Width = CGRectGetWidth(v41);
  sub_1BD9ADAC8(Width);
  v18 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView;
  [*&v16[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView] setContentMode_];
  v19 = [v16 contentView];
  [v19 addSubview_];

  v20 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel;
  v21 = *&v16[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel];
  (*(v10 + 104))(v12, *MEMORY[0x1E69B8050], v9);
  v22 = v21;
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    sub_1BE04B6F4();
    v26 = v25;

    (*(v10 + 8))(v12, v9);
    v27 = sub_1BE052404();
    v26, v28, v29, v30, v31, v32, v33, v34;
    [v22 setText_];

    [*&v16[v20] setTextAlignment_];
    v35 = *MEMORY[0x1E69DDD28];
    v36 = *MEMORY[0x1E69DDC58];
    v37 = *&v16[v20];
    v38 = PKFontForDefaultDesign(v35, v36);
    [v37 setFont_];

    [*&v16[v20] setNumberOfLines_];
    v39 = [v16 contentView];

    [v39 addSubview_];
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD9AD898()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for NearbyPeerPaymentEntryCollectionViewCell();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v15);
  [v0 bounds];
  v3 = v2;
  [v0 bounds];
  v5 = v4;
  [*&v0[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView] setFrame_];
  [v0 bounds];
  v6 = CGRectGetWidth(v16);
  [v0 bounds];
  Height = CGRectGetHeight(v17);
  v8 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel];
  [v8 sizeThatFits_];
  v10 = v9;
  [v0 bounds];
  v12 = v11;
  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = Width;
  v18.size.height = Width;
  return [v8 setFrame_];
}

void sub_1BD9ADAC8(double a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BE051FA4();
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = PKUIScreenScale();
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F88], v9);
  v14 = sub_1BE052D84();
  (*(v10 + 8))(v12, v9);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  aBlock[4] = sub_1BD9AE5C4;
  v37 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_232;
  v17 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE051F74();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v8, v5, v17);
  _Block_release(v17);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v34);
  v18 = v37;
  v15, v19, v20, v21, v22, v23, v24, v25;
  v18, v26, v27, v28, v29, v30, v31, v32;
}

void sub_1BD9ADE60(uint64_t a1, double a2, double a3)
{
  v62 = a1;
  v5 = sub_1BE051F54();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v60 - v11;
  v13 = sub_1BE04AA64();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  v15 = sub_1BE052404();
  v16 = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v16 = sub_1BE04A9C4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69A89B0]) initWithSymbolName:v15 bundleURL:v16];

  v18 = [objc_allocWithZone(MEMORY[0x1E69A8968]) initWithSystemColor_];
  v19 = [objc_allocWithZone(MEMORY[0x1E69A8968]) initWithSystemColor_];
  v20 = [objc_allocWithZone(MEMORY[0x1E69A8970]) init];
  [v20 setSize_];
  [v20 setScale_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
  v21 = swift_allocObject();
  v68 = xmmword_1BE0B69E0;
  *(v21 + 16) = xmmword_1BE0B69E0;
  v22 = sub_1BD0E5E8C(0, &qword_1EBD5A918, 0x1E69A8968);
  *(v21 + 56) = v22;
  *(v21 + 32) = v18;
  v23 = v18;
  v24 = sub_1BE052724();
  v21, v25, v26, v27, v28, v29, v30, v31;
  [v20 setSymbolColors_];

  v32 = swift_allocObject();
  *(v32 + 16) = v68;
  *(v32 + 56) = v22;
  *(v32 + 32) = v19;
  v33 = v19;
  v34 = sub_1BE052724();
  v32, v35, v36, v37, v38, v39, v40, v41;
  [v20 setEnclosureColors_];

  *&v68 = v17;
  v42 = [v17 imageForGraphicSymbolDescriptor_];
  if (v42)
  {
    v43 = v42;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v44 = sub_1BE052D54();
    v61 = v33;
    v45 = v44;
    v46 = swift_allocObject();
    *(v46 + 16) = v62;
    *(v46 + 24) = v43;
    aBlock[4] = sub_1BD9AE5D0;
    v70 = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_12_9;
    v47 = _Block_copy(aBlock);
    v48 = v70;
    sub_1BE048964();
    v49 = v43;
    v48, v50, v51, v52, v53, v54, v55, v56;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v57 = v63;
    v58 = v23;
    v59 = v67;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v9, v57, v47);

    _Block_release(v47);
    (*(v66 + 8))(v57, v59);
    (*(v64 + 8))(v9, v65);
  }

  else
  {
  }
}

void sub_1BD9AE43C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView);

    v6 = [a2 CGImage];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

      [v5 setImage_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BD9AE528(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD9AE674()
{
  v0 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v0);
  sub_1BE052E94();
  return v2;
}

void sub_1BD9AE878(BOOL *a1@<X8>)
{
  sub_1BE049EC4();
  v3 = sub_1BE049EA4();
  v4 = sub_1BE052EA4();

  if (!v1)
  {
    *a1 = v4 > 0;
  }
}

id sub_1BD9AE900(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PKMerchantTokenDataStorageWrapper();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1BD9AEA34(void *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v19.receiver = v1;
  v19.super_class = type metadata accessor for NearbyPeerPaymentStateLabelsView();
  v5 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = *&v5[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
    v8 = *MEMORY[0x1E69DDDC0];
    v9 = *MEMORY[0x1E69DDC20];
    v10 = *MEMORY[0x1E69DB980];
    v11 = v5;
    v12 = PKFontForDefaultDesign(v8, v9, 0x8000, 0, v10);
    [v7 setFont_];

    v13 = objc_opt_self();
    v14 = [v13 labelColor];
    [v7 setTextColor_];

    [v7 setTextAlignment_];
    [v7 setNumberOfLines_];
    [v7 setAccessibilityIdentifier_];
    [v11 addSubview_];
    v15 = *&v11[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v9, 0x8000, 0);
    [v15 setFont_];

    v17 = [v13 secondaryLabelColor];
    [v15 setTextColor_];

    [v15 setTextAlignment_];
    [v15 setNumberOfLines_];
    [v15 setAccessibilityIdentifier_];
    [v11 addSubview_];
  }

  return v6;
}

id sub_1BD9AECEC()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
  v2 = *MEMORY[0x1E69DDC20];
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DDC20], 0x8000, 0, *MEMORY[0x1E69DB980]);
  [v1 setFont_];

  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  [v1 setTextColor_];

  [v1 setTextAlignment_];
  [v1 setNumberOfLines_];
  [v1 setAccessibilityIdentifier_];
  [v0 addSubview_];
  v6 = *&v0[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v2, 0x8000, 0);
  [v6 setFont_];

  v8 = [v4 secondaryLabelColor];
  [v6 setTextColor_];

  [v6 setTextAlignment_];
  [v6 setNumberOfLines_];
  [v6 setAccessibilityIdentifier_];

  return [v0 addSubview_];
}

void sub_1BD9AEEF0(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v36.receiver = v1;
  v36.super_class = type metadata accessor for NearbyPeerPaymentStateLabelsView();
  objc_msgSendSuper2(&v36, sel_layoutSubviews);
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v1[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
  [v1 bounds];
  [v10 sizeThatFits_];
  v14 = v13.n128_f64[0];
  v15.n128_f64[0] = v3;
  v16.n128_f64[0] = v5;
  v17.n128_f64[0] = v7;
  v18.n128_f64[0] = v9;
  PKSizeAlignedInRect(1, v19, v13, v15, v16, v17, v18, v20);
  [v10 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v34, 0, sizeof(v34));
  v38.origin.x = v3;
  v38.origin.y = v5;
  v38.size.width = v7;
  v38.size.height = v9;
  CGRectDivide(v38, &slice, &v34, v14 + 4.0, CGRectMinYEdge);
  origin = v34.origin;
  size = v34.size;
  v23 = *&v1[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
  [v1 bounds];
  [v23 sizeThatFits_];
  v27 = v26.n128_f64[0];
  v29.n128_u64[0] = *&origin.y;
  v28.n128_u64[0] = *&origin;
  v31.n128_u64[0] = *&size.height;
  v30.n128_u64[0] = *&size;
  PKSizeAlignedInRect(1, v32, v26, v28, v29, v30, v31, v33);
  [v23 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v34, 0, sizeof(v34));
  v39.origin = origin;
  v39.size = size;
  CGRectDivide(v39, &slice, &v34, v27, CGRectMinYEdge);
}

id sub_1BD9AF1C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *&v4[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
  v7 = sub_1BE052404();
  [v6 setText_];

  v8 = *&v4[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
  if (a4)
  {
    a4 = sub_1BE052404();
  }

  [v8 setText_];

  return [v4 setNeedsLayout];
}

id NearbyPeerPaymentStateLabelsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentStateLabelsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentStateLabelsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD9AF408(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A960, &qword_1BE10A3F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1BE04B7D4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B7EF0], v4, v6);
  sub_1BE052434();
  (*(v5 + 16))(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_1BE04B804();
  return (*(v5 + 8))(v8, v4);
}

id sub_1BD9AF5C4(char a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v16;
  if (!a1)
  {
    (*(v3 + 104))(&v28 - v16, *MEMORY[0x1E69B8050], v2, v17);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      goto LABEL_15;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a1 == 1)
  {
    v19 = PKUseWLAN();
    v20 = *MEMORY[0x1E69B8050];
    v21 = *(v3 + 104);
    if (!v19)
    {
      v21(v11, v20, v2);
      result = PKPassKitBundle();
      if (result)
      {
        v23 = result;
        v24 = sub_1BE04B6F4();
        v18 = v11;
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v21(v14, v20, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v18 = v14;
LABEL_15:

      (*(v3 + 8))(v18, v2);
      return v24;
    }

    goto LABEL_17;
  }

  v25 = PKUseWLAN();
  v26 = *MEMORY[0x1E69B8050];
  v27 = *(v3 + 104);
  if (v25)
  {
    v27(v8, v26, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v18 = v8;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v27(v5, v26, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v18 = v5;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

id sub_1BD9AF964(char a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v16;
  if (!a1)
  {
    (*(v3 + 104))(&v28 - v16, *MEMORY[0x1E69B8050], v2, v17);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      goto LABEL_15;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a1 == 1)
  {
    v19 = PKUseWLAN();
    v20 = *MEMORY[0x1E69B8050];
    v21 = *(v3 + 104);
    if (!v19)
    {
      v21(v11, v20, v2);
      result = PKPassKitBundle();
      if (result)
      {
        v23 = result;
        v24 = sub_1BE04B6F4();
        v18 = v11;
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v21(v14, v20, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v18 = v14;
LABEL_15:

      (*(v3 + 8))(v18, v2);
      return v24;
    }

    goto LABEL_17;
  }

  v25 = PKUseWLAN();
  v26 = *MEMORY[0x1E69B8050];
  v27 = *(v3 + 104);
  if (v25)
  {
    v27(v8, v26, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v18 = v8;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v27(v5, v26, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v18 = v5;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BD9AFD1C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD9B0EC4();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 24);
}

void sub_1BD9AFD8C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9B0EC4();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 24);
}

void sub_1BD9AFE04(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD9B0EC4();
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD9AFEE4()
{
  KeyPath = swift_getKeyPath();
  sub_1BD9B0EC4();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 25);
}

void sub_1BD9AFF54(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9B0EC4();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 25);
}

void sub_1BD9AFFCC(char a1)
{
  if (*(v1 + 25) == (a1 & 1))
  {
    *(v1 + 25) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD9B0EC4();
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD9B00AC()
{
  KeyPath = swift_getKeyPath();
  sub_1BD9B0EC4();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 26);
}

void sub_1BD9B011C(unsigned __int8 a1)
{
  v2 = *(v1 + 26);
  if (v2 == 3)
  {
    if (a1 != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1BD9B0EC4();
      sub_1BE04B584();
      KeyPath, v4, v5, v6, v7, v8, v9, v10;
      return;
    }
  }

  else if (v2 != a1)
  {
    goto LABEL_3;
  }

  *(v1 + 26) = a1;
}

uint64_t sub_1BD9B0214()
{
  v1 = v0;
  v106 = sub_1BE04D214();
  v2 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v4 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() nearFieldSharingEnabled];
  v6 = v5;
  if (v5 == *(v1 + 24))
  {
    *(v1 + 24) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v104 - 2) = v1;
    *(&v104 - 8) = v6;
    v108 = v1;
    sub_1BD9B0EC4();
    sub_1BE04B584();
    KeyPath, v8, v9, v10, v11, v12, v13, v14;
  }

  v15 = [*(v1 + 16) powerOn];
  v16 = v15;
  if (v15 == *(v1 + 25))
  {
    *(v1 + 25) = v15;
  }

  else
  {
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    *(&v104 - 2) = v1;
    *(&v104 - 8) = v16;
    v108 = v1;
    sub_1BD9B0EC4();
    sub_1BE04B584();
    v17, v18, v19, v20, v21, v22, v23, v24;
  }

  v25 = swift_getKeyPath();
  v108 = v1;
  sub_1BD9B0EC4();
  sub_1BE04B594();
  v25, v26, v27, v28, v29, v30, v31, v32;
  v33 = *(v1 + 24);
  v34 = swift_getKeyPath();
  v108 = v1;
  sub_1BE04B594();
  v34, v35, v36, v37, v38, v39, v40, v41;
  if (*(v1 + 25))
  {
    v42 = 3;
  }

  else
  {
    v42 = 1;
  }

  if (*(v1 + 25))
  {
    v43 = 0;
  }

  else
  {
    v43 = 2;
  }

  if (v33)
  {
    v44 = v42;
  }

  else
  {
    v44 = v43;
  }

  v45 = *(v1 + 26);
  if (v45 == 3)
  {
    if ((v33 & *(v1 + 25)) != 1)
    {
LABEL_18:
      v46 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v46);
      *(&v104 - 2) = v1;
      *(&v104 - 8) = v44;
      v108 = v1;
      sub_1BE04B584();
      v46, v47, v48, v49, v50, v51, v52, v53;
      goto LABEL_21;
    }
  }

  else if (v45 != v44)
  {
    goto LABEL_18;
  }

  *(v1 + 26) = v44;
LABEL_21:
  sub_1BE04D094();
  sub_1BE048964();
  v54 = sub_1BE04D204();
  v55 = sub_1BE052C54();
  v1, v56, v57, v58, v59, v60, v61, v62;
  if (os_log_type_enabled(v54, v55))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v108 = v64;
    *v63 = 136315394;
    v65 = swift_getKeyPath();
    v105 = v4;
    v66 = v2;
    v67 = v65;
    v107 = v1;
    sub_1BE04B594();
    v67, v68, v69, v70, v71, v72, v73, v74;
    if (*(v1 + 24))
    {
      v75 = 1702195828;
    }

    else
    {
      v75 = 0x65736C6166;
    }

    if (*(v1 + 24))
    {
      v76 = 0xE400000000000000;
    }

    else
    {
      v76 = 0xE500000000000000;
    }

    v77 = sub_1BD123690(v75, v76, &v108);
    v76, v78, v79, v80, v81, v82, v83, v84;
    *(v63 + 4) = v77;
    *(v63 + 12) = 2080;
    v85 = swift_getKeyPath();
    v107 = v1;
    sub_1BE04B594();
    v85, v86, v87, v88, v89, v90, v91, v92;
    if (*(v1 + 25))
    {
      v93 = 1702195828;
    }

    else
    {
      v93 = 0x65736C6166;
    }

    if (*(v1 + 25))
    {
      v94 = 0xE400000000000000;
    }

    else
    {
      v94 = 0xE500000000000000;
    }

    v95 = sub_1BD123690(v93, v94, &v108);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v63 + 14) = v95;
    _os_log_impl(&dword_1BD026000, v54, v55, "NearbyPeerPayment: AirDrop settings checked. bringingNearbyEnabled: %s; wifiEnabled: %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v64, -1, -1);
    MEMORY[0x1BFB45F20](v63, -1, -1);

    return (*(v66 + 8))(v105, v106);
  }

  else
  {

    return (*(v2 + 8))(v4, v106);
  }
}

void sub_1BD9B0774()
{
  v1 = v0;
  v52[1] = *MEMORY[0x1E69E9840];
  v51[0] = sub_1BE04D214();
  v2 = *(v51[0] - 8);
  MEMORY[0x1EEE9AC00](v51[0]);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() setNearFieldSharingEnabled_];
  if (*(v0 + 24) == 1)
  {
    *(v0 + 24) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v51[-2] = v0;
    LOBYTE(v51[-1]) = 1;
    v52[0] = v0;
    sub_1BD9B0EC4();
    sub_1BE04B584();
    KeyPath, v6, v7, v8, v9, v10, v11, v12;
  }

  v13 = *(v0 + 16);
  v52[0] = 0;
  v14 = [v13 setPower:1 error:{v52, v51[0]}];
  v15 = v52[0];
  if (v14)
  {
    if (v1[25] == 1)
    {
      v1[25] = 1;
      v16 = v15;
    }

    else
    {
      v34 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v34);
      v51[-2] = v1;
      LOBYTE(v51[-1]) = 1;
      v52[0] = v1;
      sub_1BD9B0EC4();
      v35 = v15;
      sub_1BE04B584();
      v34, v36, v37, v38, v39, v40, v41, v42;
    }
  }

  else
  {
    v17 = v52[0];
    v18 = sub_1BE04A854();

    swift_willThrow();
    sub_1BE04D094();
    v19 = v18;
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v18;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1BD026000, v20, v21, "NearbyPeerPayment: Error enabling Wi-Fi: %@", v22, 0xCu);
      sub_1BD1E236C(v23);
      MEMORY[0x1BFB45F20](v23, -1, -1);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v2 + 8))(v4, v51[0]);
    if (v1[25])
    {
      v26 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v26);
      v51[-2] = v1;
      LOBYTE(v51[-1]) = 0;
      v52[0] = v1;
      sub_1BD9B0EC4();
      sub_1BE04B584();

      v26, v27, v28, v29, v30, v31, v32, v33;
    }

    else
    {

      v1[25] = 0;
    }
  }

  if (v1[26] != 3)
  {
    v43 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v43);
    v51[-2] = v1;
    LOBYTE(v51[-1]) = 3;
    v52[0] = v1;
    sub_1BD9B0EC4();
    sub_1BE04B584();
    v43, v44, v45, v46, v47, v48, v49, v50;
  }
}

uint64_t sub_1BD9B0C58()
{
  v1 = OBJC_IVAR____TtC9PassKitUI19AirDropRequirements___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirDropRequirements(uint64_t a1)
{
  result = qword_1EBD5A940;
  if (!qword_1EBD5A940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD9B0D50(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

unint64_t sub_1BD9B0E18()
{
  result = qword_1EBD5A950;
  if (!qword_1EBD5A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A950);
  }

  return result;
}

unint64_t sub_1BD9B0E70()
{
  result = qword_1EBD5A958;
  if (!qword_1EBD5A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A958);
  }

  return result;
}

unint64_t sub_1BD9B0EC4()
{
  result = qword_1EBD5A450;
  if (!qword_1EBD5A450)
  {
    type metadata accessor for AirDropRequirements(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A450);
  }

  return result;
}

uint64_t sub_1BD9B0F44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AA30, &qword_1BE10A618);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  if ([*v1 isAppAvailable] && (type metadata accessor for FinanceKitTransactionFoundInMailView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8, &unk_1BE10A4D0), sub_1BE051A74(), v12 = v41, KeyPath = swift_getKeyPath(), v41 = v12, sub_1BD9B5728(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel, &unk_1BE10A5F0), sub_1BE04B594(), KeyPath, v14, v15, v16, v17, v18, v19, v20, v21 = v12[2], sub_1BE048C84(), v12, v22, v23, v24, v25, v26, v27, v28, v29 = v21[2], v21, v30, v31, v32, v33, v34, v35, v36, v29))
  {
    v40 = &v40;
    MEMORY[0x1EEE9AC00](v37);
    *(&v40 - 2) = v2;
    sub_1BD9B1E5C(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AA40, &unk_1BE10A648);
    sub_1BD0DE43C();
    sub_1BD9B5538(&qword_1EBD5AA50, &unk_1EBD5AA40, &unk_1BE10A648, sub_1BD9B53F4);
    sub_1BE051A24();
    (*(v8 + 32))(a1, v11, v7);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  return (*(v8 + 56))(a1, v38, 1, v7);
}

uint64_t sub_1BD9B1248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FinanceKitTransactionFoundInMailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BD9B13E0();
  sub_1BD9B61E0(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitTransactionFoundInMailView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BD9B6270(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FinanceKitTransactionFoundInMailView);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AA60, &qword_1BE10A658) + 36));
  *v9 = sub_1BD9B5C68;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
  LOBYTE(v8) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AA40, &unk_1BE10A648);
  v19 = a2 + *(result + 36);
  *v19 = v8;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

void *sub_1BD9B13E0()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAB0, &qword_1BE10A680);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAC8, &qword_1BE10A6D8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = *(v1 + 16);
  *&v49[0] = *(v1 + 8);
  *(&v49[0] + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAC0, &qword_1BE10A6D0);
  sub_1BE0516A4();
  v11 = v50;
  KeyPath = swift_getKeyPath();
  *&v49[0] = v11;
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v20 = v11[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive];

  if (v20 == 1)
  {
    v21 = *v2;
    LOBYTE(v49[0]) = 1;
    objc_allocWithZone(type metadata accessor for ShieldModel(0));
    v22 = v21;
    v23 = sub_1BD653D84(v21, v49);

    sub_1BE051CD4();
    sub_1BE04E5E4();
    v24 = sub_1BE0501E4();
    sub_1BE04E1F4();
    LOBYTE(v50) = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = 0;
    *v9 = v23;
    v9[24] = 0;
    *(v9 + 40) = xmmword_1BE0CB9B0;
    v25 = v49[1];
    *(v9 + 56) = v49[0];
    *(v9 + 4) = PKEdgeInsetsMake;
    *(v9 + 72) = v25;
    *(v9 + 88) = v49[2];
    v9[104] = v24;
    *(v9 + 14) = v26;
    *(v9 + 15) = v27;
    *(v9 + 16) = v28;
    *(v9 + 17) = v29;
    v9[144] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AA80, &qword_1BE10A668);
    sub_1BD9B5538(&qword_1EBD5AA78, &qword_1EBD5AA80, &qword_1BE10A668, sub_1BD9B55BC);
    sub_1BD9B5674();
    return sub_1BE04F9A4();
  }

  else
  {
    type metadata accessor for FinanceKitTransactionFoundInMailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8, &unk_1BE10A4D0);
    sub_1BE051A74();
    v31 = *&v49[0];
    v32 = swift_getKeyPath();
    *&v49[0] = v31;
    sub_1BD9B5728(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel, &unk_1BE10A5F0);
    sub_1BE04B594();
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = v31[2];
    sub_1BE048C84();
    v31, v41, v42, v43, v44, v45, v46, v47;
    *&v49[0] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAD8, &qword_1BE10A708);
    type metadata accessor for FinanceKitFoundInMailRowView(0);
    sub_1BD0DE4F4(&qword_1EBD5AAE0, &qword_1EBD5AAD8, &qword_1BE10A708, MEMORY[0x1E69E6338]);
    sub_1BD9B5728(&qword_1EBD5AAB8, type metadata accessor for FinanceKitFoundInMailRowView, &unk_1BE0CB458);
    sub_1BD9B5728(&qword_1EBD5AAE8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel, &unk_1BE10A54C);
    sub_1BE0519D4();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AA80, &qword_1BE10A668);
    sub_1BD9B5538(&qword_1EBD5AA78, &qword_1EBD5AA80, &qword_1BE10A668, sub_1BD9B55BC);
    sub_1BD9B5674();
    sub_1BE04F9A4();
    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1BD9B1970(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitTransactionFoundInMailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1BE0528D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BD9B61E0(a1, v5, type metadata accessor for FinanceKitTransactionFoundInMailView);
  sub_1BE0528A4();
  v10 = sub_1BE052894();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v10;
  v12[3] = v13;
  sub_1BD9B6270(v5, v12 + v11, type metadata accessor for FinanceKitTransactionFoundInMailView);
  v14 = sub_1BD122C00(0, 0, v8, &unk_1BE10A6C8, v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
}

uint64_t sub_1BD9B1B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1BE0528A4();
  v4[6] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD9B1BDC, v6, v5);
}

uint64_t sub_1BD9B1BDC()
{
  v1 = v0[5];
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAC0, &qword_1BE10A6D0);
  sub_1BE0516A4();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1BD9B1CA0;

  return sub_1BD9B45A0();
}

uint64_t sub_1BD9B1CA0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1BD9B1DE0, v4, v3);
}

uint64_t sub_1BD9B1DE0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 40);
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  v10 = (v9 + *(type metadata accessor for FinanceKitTransactionFoundInMailView(0) + 28));
  (*v10)();
  v11 = *(v8 + 8);

  return v11();
}

id sub_1BD9B1E5C@<X0>(uint64_t a1@<X8>)
{
  v86[0] = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v2 + 8))(v5, v1);
    v86[4] = v8;
    v86[5] = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    LOBYTE(v7) = v14;
    v16 = v15;
    v17 = sub_1BE051464();
    v18 = sub_1BE050564();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v17, v19, v21, v23, v25, v26, v27, v28;
    sub_1BD0DDF10(v11, v13, (v7 & 1), v29, v30, v31, v32, v33);
    v16, v34, v35, v36, v37, v38, v39, v40;
    v41 = sub_1BE0503E4();
    v42 = sub_1BE0505F4();
    v44 = v43;
    LOBYTE(v13) = v45;
    v47 = v46;
    v41, v43, v45, v46, v48, v49, v50, v51;
    sub_1BD0DDF10(v18, v20, (v22 & 1), v52, v53, v54, v55, v56);
    v24, v57, v58, v59, v60, v61, v62, v63;
    sub_1BE0503A4();
    v64 = sub_1BE050544();
    v66 = v65;
    LOBYTE(v16) = v67;
    v69 = v68;
    sub_1BD0DDF10(v42, v44, (v13 & 1), v68, v70, v71, v72, v73);
    v47, v74, v75, v76, v77, v78, v79, v80;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
    v82 = v86[0];
    v83 = (v86[0] + *(v81 + 36));
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v85 = sub_1BE0505C4();
    (*(*(v85 - 8) + 56))(&v83[v84], 1, 1, v85);
    result = swift_getKeyPath();
    *v83 = result;
    *v82 = v64;
    *(v82 + 8) = v66;
    *(v82 + 16) = v16 & 1;
    *(v82 + 24) = v69;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD9B2148@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD9B61E0(a1, v7, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel);
  v31 = *v7;
  v8 = *(v7 + 3);
  v30 = *(v7 + 2);
  v9 = type metadata accessor for FinanceKitFoundInMailRowView(0);
  v10 = v9[6];
  v11 = v5[8];
  v12 = sub_1BE04AF64();
  v13 = *(v12 - 8);
  (*(v13 + 32))(a2 + v10, &v7[v11], v12);
  (*(v13 + 56))(a2 + v10, 0, 1, v12);
  v14 = &v7[v5[9]];
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = &v7[v5[10]];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = v5[12];
  v21 = &v7[v5[11]];
  v22 = *v21;
  v23 = *(v21 + 1);
  sub_1BD226B4C(&v7[v20], a2 + v9[10]);
  result = *&v31;
  *a2 = v31;
  *(a2 + 16) = v30;
  *(a2 + 24) = v8;
  v25 = (a2 + v9[7]);
  *v25 = v15;
  v25[1] = v16;
  v26 = (a2 + v9[8]);
  *v26 = v18;
  v26[1] = v19;
  v27 = (a2 + v9[9]);
  *v27 = v22;
  v27[1] = v23;
  v28 = (a2 + v9[11]);
  *v28 = sub_1BD9B5770;
  v28[1] = 0;
  return result;
}

double sub_1BD9B2314()
{
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel, &unk_1BE10A5F0);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  sub_1BE048C84();
  return result;
}

double sub_1BD9B23B8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel, &unk_1BE10A5F0);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 16);
  sub_1BE048C84();
  return result;
}

void sub_1BD9B2464(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1BE048C84();
  v5 = sub_1BD400F90(v4, a1);
  v3, v6, v7, v8, v9, v10, v11, v12;
  if (v5)
  {
    v20 = *(v1 + 16);
    *(v1 + 16) = a1;

    v20, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD9B5728(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel, &unk_1BE10A5F0);
    sub_1BE04B584();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    a1, v29, v30, v31, v32, v33, v34, v35;
  }
}

uint64_t sub_1BD9B25B8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAF8, &qword_1BE10A738);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v47 - v5);
  v7 = type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE049514();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  sub_1BE04B5C4();
  v16 = sub_1BE049D14();
  v24 = v16[2];
  if (v24)
  {
    v47 = a1;
    v48 = v2;
    v26 = *(v11 + 16);
    v25 = v11 + 16;
    v55 = v6;
    v56 = v26;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v49 = v16;
    v28 = v16 + v27;
    v29 = *(v25 + 56);
    v53 = (v25 - 8);
    v54 = v29;
    v51 = v8;
    v30 = (v8 + 48);
    v31 = MEMORY[0x1E69E7CC0];
    v32 = v7;
    v52 = v7;
    v50 = v25;
    do
    {
      v40 = v56;
      v56(v15, v28, v10);
      v41 = v57;
      v40(v57, v15, v10);
      v42 = v55;
      sub_1BD9B29A0(v41, v55);
      (*v53)(v15, v10);
      if ((*v30)(v42, 1, v32) == 1)
      {
        sub_1BD0DE53C(v42, &qword_1EBD5AAF8, &qword_1BE10A738);
      }

      else
      {
        sub_1BD9B6270(v42, v58, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1BD1D99C4(0, v31[2] + 1, 1, v31);
        }

        v44 = v31[2];
        v43 = v31[3];
        if (v44 >= v43 >> 1)
        {
          v31 = sub_1BD1D99C4((v43 > 1), v44 + 1, 1, v31);
        }

        v31[2] = v44 + 1;
        sub_1BD9B6270(v58, v31 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v44, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel);
        v32 = v52;
      }

      v28 += v54;
      --v24;
    }

    while (v24);
    v49, v33, v34, v35, v36, v37, v38, v39;
    a1 = v47;
    v2 = v48;
  }

  else
  {
    v16, v17, v18, v19, v20, v21, v22, v23;
    v31 = MEMORY[0x1E69E7CC0];
  }

  v45 = sub_1BE049D24();
  (*(*(v45 - 8) + 8))(a1, v45);
  *(v2 + 16) = v31;
  return v2;
}

void sub_1BD9B29A0(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v216 - v5;
  v226 = sub_1BE04AF64();
  v225 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v8 = &v216 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_1BE04BD74();
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v220 = &v216 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v224 = (&v216 - v11);
  v244 = sub_1BE049484();
  v12 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v243 = &v216 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v242 = &v216 - v15;
  v16 = sub_1BE0494A4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v223 = &v216 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v240 = (&v216 - v20);
  v21 = sub_1BE0494E4();
  v23 = v22;
  v24 = sub_1BE0494B4();
  v25 = v24[2];
  v24, v26, v27, v28, v29, v30, v31, v32;
  v228 = v8;
  if (v25)
  {
    v219 = v6;
    v227 = a2;
    v23, v33, v34, v35, v36, v37, v38, v39;
    v231 = a1;
    v40 = sub_1BE0494B4();
    v41 = *(v40 + 56);
    v230 = (v40 + 56);
    v42 = 1 << *(v40 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & v41;
    v229 = (v42 + 63) >> 6;
    v239 = v17 + 2;
    v237 = *MEMORY[0x1E69677C0];
    v235 = (v12 + 8);
    v236 = (v12 + 104);
    v238 = v17 + 1;
    v245 = v40;
    sub_1BE048C84();
    v45 = 0;
    v46 = v17;
    v241 = v16;
    v234 = v17;
    while (v44)
    {
      v47 = v45;
LABEL_12:
      v49 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v50 = v46[9];
      v51 = v245[6] + v50 * (v49 | (v47 << 6));
      v25 = v240;
      v232 = v46[2];
      v233 = v50;
      v232(v240, v51, v16);
      v52 = v242;
      sub_1BE049494();
      v53 = *v236;
      v54 = v243;
      v55 = v244;
      (*v236)(v243, v237, v244);
      v56 = sub_1BD9B5728(&qword_1EBD5AB00, MEMORY[0x1E69677C8], MEMORY[0x1E69677D0]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      v57 = *v235;
      v58 = v54;
      v16 = v241;
      (*v235)(v58, v55);
      v59 = v52;
      v46 = v234;
      v57(v59, v55);
      v60 = v46[1];
      v60(v25, v16);
      if (v246 == v247)
      {
        v218 = v57;
        v229 = v56;
        v230 = v53;
        v68 = v245;
        v245, v61, v62, v63, v64, v65, v66, v67;
        v68, v69, v70, v71, v72, v73, v74, v75;
        v76 = sub_1BE0494B4();
        v77 = v76 + 56;
        v78 = 1 << *(v76 + 32);
        v79 = -1;
        if (v78 < 64)
        {
          v79 = ~(-1 << v78);
        }

        v80 = v79 & *(v76 + 56);
        v81 = (v78 + 63) >> 6;
        v245 = v76;
        sub_1BE048C84();
        v89 = 0;
        v216 = MEMORY[0x1E69E7CC0];
        v90 = v223;
        v91 = v233;
        v234 = v77;
LABEL_16:
        v92 = v89;
        a2 = v227;
        v25 = v224;
        while (v80)
        {
          v89 = v92;
LABEL_24:
          v93 = __clz(__rbit64(v80));
          v80 &= v80 - 1;
          v94 = v241;
          v232(v90, v245[6] + (v93 | (v89 << 6)) * v91, v241);
          v95 = sub_1BE049474();
          if (v96)
          {
            v240 = v96;
            v217 = v95;
            v97 = v242;
            sub_1BE049494();
            v98 = v243;
            v99 = v244;
            (v230)(v243, v237, v244);
            sub_1BE0526E4();
            sub_1BE0526E4();
            v100 = v98;
            v101 = v218;
            v218(v100, v99);
            v101(v97, v99);
            if (v246 == v247)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v91 = v233;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v216 = sub_1BD03B038(0, *(v216 + 2) + 1, 1, v216, v110, v111, v112, v113);
              }

              v90 = v223;
              v115 = *(v216 + 2);
              v114 = *(v216 + 3);
              if (v115 >= v114 >> 1)
              {
                v216 = sub_1BD03B038((v114 > 1), v115 + 1, 1, v216, v110, v111, v112, v113);
              }

              v60(v90, v241);
              v116 = v216;
              *(v216 + 2) = v115 + 1;
              v117 = &v116[16 * v115];
              v118 = v240;
              *(v117 + 4) = v217;
              *(v117 + 5) = v118;
              v77 = v234;
              goto LABEL_16;
            }

            v60(v90, v241);
            v240, v102, v103, v104, v105, v106, v107, v108;
            v92 = v89;
            v25 = v224;
            a2 = v227;
          }

          else
          {
            v60(v90, v94);
            v92 = v89;
          }

          v91 = v233;
          v77 = v234;
        }

        while (1)
        {
          v89 = v92 + 1;
          if (__OFADD__(v92, 1))
          {
            goto LABEL_43;
          }

          if (v89 >= v81)
          {
            v155 = v245;
            v245, v82, v83, v84, v85, v86, v87, v88;
            v155, v156, v157, v158, v159, v160, v161, v162;
            v170 = v216;
            if (*(v216 + 2))
            {
              v171 = v221;
              v172 = v221[13];
              LODWORD(v245) = *MEMORY[0x1E69B8090];
              v173 = v222;
              v244 = v172;
              (v172)(v25);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
              v174 = swift_allocObject();
              *(v174 + 16) = xmmword_1BE0B69E0;
              v246 = v170;
              sub_1BE048C84();
              v175 = v25;
              sub_1BD5A9C58(&v246);
              v170, v176, v177, v178, v179, v180, v181, v182;
              v183 = v246;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
              sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0, &qword_1BE0C1E30, MEMORY[0x1E69E6310]);
              v184 = sub_1BE0522E4();
              v186 = v185;
              v183, v185, v187, v188, v189, v190, v191, v192;
              *(v174 + 56) = MEMORY[0x1E69E6158];
              *(v174 + 64) = sub_1BD110550();
              *(v174 + 32) = v184;
              *(v174 + 40) = v186;
              v193 = sub_1BE04B714();
              v195 = v194;
              v174, v194, v196, v197, v198, v199, v200, v201;
              v171[1](v175, v173);
              a2 = v227;
              v202 = v173;
              v25 = v171;
              v203 = v245;
              v204 = v244;
            }

            else
            {
              v216, v163, v164, v165, v166, v167, v168, v169;
              v193 = 0;
              v195 = 0;
              v203 = *MEMORY[0x1E69B8090];
              v25 = v221;
              v204 = v221[13];
              v202 = v222;
            }

            v205 = v220;
            (v204)(v220, v203, v202);
            v206 = PKPassKitBundle();
            if (v206)
            {
              v207 = v206;
              v244 = v195;
              v245 = v193;
              v21 = sub_1BE04B6F4();
              v23 = v208;

              v25[1](v205, v202);
              v6 = v219;
              a1 = v231;
              goto LABEL_34;
            }

            goto LABEL_44;
          }

          v80 = *(v77 + 8 * v89);
          ++v92;
          if (v80)
          {
            goto LABEL_24;
          }
        }
      }
    }

    v48 = v231;
    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v47 >= v229)
      {
        v119 = sub_1BE049514();
        (*(*(v119 - 8) + 8))(v48, v119);
        v120 = v245;
        v245, v121, v122, v123, v124, v125, v126, v127;
        v120, v128, v129, v130, v131, v132, v133, v134;
        v135 = type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel(0);
        (*(*(v135 - 8) + 56))(v227, 1, 1, v135);
        return;
      }

      v44 = v230[v47];
      ++v45;
      if (v44)
      {
        v45 = v47;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);

    v246, v209, v210, v211, v212, v213, v214, v215;
    __break(1u);
  }

  else
  {
    v244 = 0;
    v245 = 0;
LABEL_34:
    v136 = sub_1BE049504();
    v242 = v137;
    v243 = v136;
    v138 = sub_1BE0494D4();
    v240 = v139;
    v241 = v138;
    sub_1BE0494F4();
    v140 = sub_1BE0494C4();
    if (!v141)
    {
      v140 = sub_1BE0494D4();
    }

    v142 = v140;
    v143 = v141;
    sub_1BE049464();
    v144 = sub_1BE049514();
    (*(*(v144 - 8) + 8))(a1, v144);
    v145 = type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel(0);
    v146 = (a2 + v145[8]);
    v147 = (a2 + v145[9]);
    v148 = v6;
    v149 = v145[10];
    v150 = sub_1BE04AA64();
    (*(*(v150 - 8) + 56))(a2 + v149, 1, 1, v150);
    v151 = v242;
    *a2 = v243;
    a2[1] = v151;
    v152 = v240;
    a2[2] = v241;
    a2[3] = v152;
    v153 = (a2 + v145[7]);
    *v153 = v142;
    v153[1] = v143;
    *v146 = v21;
    v146[1] = v23;
    v154 = v244;
    *v147 = v245;
    v147[1] = v154;
    (*(v225 + 32))(a2 + v145[6], v228, v226);
    sub_1BD4E30B0(v148, a2 + v149);
    (*(*(v145 - 1) + 56))(a2, 0, 1, v145);
  }
}

uint64_t sub_1BD9B3650(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView9ViewModel___observationRegistrar;
  v10 = sub_1BE04B5D4();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD9B371C(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BD9B37F8()
{
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh);
  sub_1BE048964();
  return v9;
}

uint64_t sub_1BD9B38B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v13 = *(v3 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh);
  v12 = *(v3 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh + 8);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  *a2 = sub_1BD1839E8;
  a2[1] = v14;
  return sub_1BE048964();
}

void sub_1BD9B3998(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE048964();
  sub_1BE04B584();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v4, v13, v14, v15, v16, v17, v18, v19;
}

id sub_1BD9B3AB4()
{
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);

  return v9;
}

id sub_1BD9B3B6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  *a2 = v12;

  return v12;
}

void sub_1BD9B3C2C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  sub_1BE04BE74();
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
  }
}

uint64_t sub_1BD9B3DA4(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  return *(v2 + *a2);
}

void sub_1BD9B3E44(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  *a4 = *(v6 + *a3);
}

void sub_1BD9B3F20(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
    sub_1BE04B584();
    KeyPath, v6, v7, v8, v9, v10, v11, v12;
  }
}

_BYTE *sub_1BD9B4024(void *a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive] = 0;
  v3[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive] = 0;
  sub_1BE04B5C4();
  sub_1BE04BE74();
  *&v3[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator] = sub_1BE04BE14();
  v7 = &v3[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh];
  *v7 = a2;
  v7[1] = a3;
  v49.receiver = v3;
  v49.super_class = type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver(0);
  sub_1BE048964();
  v8 = objc_msgSendSuper2(&v49, sel_init);
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  v10 = v8;
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator;
  v19 = *&v10[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator];
  v20 = sub_1BE04BE54() & 1;

  if (v20 == v10[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive])
  {
    v10[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive] = v20;
  }

  else
  {
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    sub_1BE04B584();
    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  v29 = swift_getKeyPath();
  sub_1BE04B594();
  v29, v30, v31, v32, v33, v34, v35, v36;
  v37 = *&v10[v18];
  v38 = v10;
  v39 = v37;
  sub_1BE04BE34();

  v40 = [objc_opt_self() defaultCenter];
  [v40 addObserver:v38 selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];

  [v40 addObserver:v38 selector:sel_applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
  a3, v41, v42, v43, v44, v45, v46, v47;

  return v38;
}

id sub_1BD9B4310()
{
  KeyPath = swift_getKeyPath();
  v13 = v0;
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *&v0[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator];
  v10 = v13;
  sub_1BE04BE44();

  v12.receiver = v10;
  v12.super_class = type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver(0);
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t sub_1BD9B45C0()
{
  v1 = v0[6];
  KeyPath = swift_getKeyPath();
  v3 = OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver___observationRegistrar;
  v0[2] = v1;
  v0[7] = v3;
  v0[8] = sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive))
  {
    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[6];
    v14 = swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v13;
    *(v15 + 24) = 1;
    v0[3] = v13;
    sub_1BE04B584();
    v0[9] = 0;
    v14, v16, v17, v18, v19, v20, v21, v22;

    v23 = swift_getKeyPath();
    v0[4] = v13;
    sub_1BE04B594();
    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = *(v13 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
    v0[10] = v31;
    v31;
    v32 = swift_task_alloc();
    v0[11] = v32;
    *v32 = v0;
    v32[1] = sub_1BD9B4810;

    return MEMORY[0x1EEE23E78]();
  }
}

uint64_t sub_1BD9B4810(char a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9B492C, 0, 0);
}

uint64_t sub_1BD9B492C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  if (v1 == *(v2 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive))
  {
    *(v2 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    *(v0 + 40) = v2;
    sub_1BE04B584();
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_1BD9B4AF8()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  LOBYTE(KeyPath) = sub_1BE04BE54();

  if (KeyPath)
  {
    if (*(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) == 1)
    {
      *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) = 1;
    }

    else
    {
      v11 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v11);
      sub_1BE04B584();
      v11, v12, v13, v14, v15, v16, v17, v18;
    }

    if (*(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive))
    {
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      sub_1BE04B584();
      v19, v20, v21, v22, v23, v24, v25, v26;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive) = 0;
    }
  }
}

void sub_1BD9B4D48()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  LOBYTE(KeyPath) = sub_1BE04BE54();

  if (KeyPath)
  {
    if (*(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) == 1)
    {
      *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) = 1;
    }

    else
    {
      v11 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v11);
      sub_1BE04B584();
      v11, v12, v13, v14, v15, v16, v17, v18;
    }

    if (*(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive))
    {
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      sub_1BE04B584();
      v19, v20, v21, v22, v23, v24, v25, v26;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive) = 0;
    }
  }

  v27 = swift_getKeyPath();
  sub_1BE04B594();
  v27, v28, v29, v30, v31, v32, v33, v34;
  v35 = v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh;
  v36 = *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh);
  v37 = *(v35 + 8);
  v38 = sub_1BE048964();
  v36(v38);
  v37, v39, v40, v41, v42, v43, v44, v45;
}

uint64_t sub_1BD9B5020(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

void sub_1BD9B5120(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD5A9F8, 0x1E69B8558);
  if (v1 <= 0x3F)
  {
    sub_1BD9B5244(319, &qword_1EBD5AA00, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1BD9B5244(319, &unk_1EBD5AA08, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel, MEMORY[0x1E6981AA0]);
      if (v3 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD9B5244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD9B52F0(uint64_t a1)
{
  sub_1BE04AF64();
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      sub_1BD9B5244(319, &qword_1EBD45140, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD9B53F4()
{
  result = qword_1EBD5AA58;
  if (!qword_1EBD5AA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AA60, &qword_1BE10A658);
    sub_1BD9B5480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AA58);
  }

  return result;
}

unint64_t sub_1BD9B5480()
{
  result = qword_1EBD5AA68;
  if (!qword_1EBD5AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AA70, &qword_1BE10A660);
    sub_1BD9B5538(&qword_1EBD5AA78, &qword_1EBD5AA80, &qword_1BE10A668, sub_1BD9B55BC);
    sub_1BD9B5674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AA68);
  }

  return result;
}

uint64_t sub_1BD9B5538(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD9B55BC()
{
  result = qword_1EBD5AA88;
  if (!qword_1EBD5AA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AA90, &qword_1BE10A670);
    sub_1BD0DE4F4(&qword_1EBD5AA98, &qword_1EBD5AAA0, &qword_1BE10A678, &protocol conformance descriptor for AppProtectionShieldView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AA88);
  }

  return result;
}

unint64_t sub_1BD9B5674()
{
  result = qword_1EBD5AAA8;
  if (!qword_1EBD5AAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AAB0, &qword_1BE10A680);
    sub_1BD9B5728(&qword_1EBD5AAB8, type metadata accessor for FinanceKitFoundInMailRowView, &unk_1BE0CB458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AAA8);
  }

  return result;
}

uint64_t sub_1BD9B5728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD9B5770()
{
  v44 = sub_1BE051F54();
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1BE051FA4();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FC4();
  v42 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 acquireAssertion];

  v13 = [objc_opt_self() sharedApplication];
  v14 = sub_1BE04A9C4();
  v15 = sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD9B5728(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey, &unk_1BE0B3A4C);
  v16 = sub_1BE052224();
  v15, v17, v18, v19, v20, v21, v22, v23;
  [v13 openURL:v14 options:v16 completionHandler:0];

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v24 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v25 = v5 + 8;
  v26 = *(v5 + 8);
  v41[1] = v25;
  v26(v7, v4);
  v27 = swift_allocObject();
  *(v27 + 16) = v12;
  aBlock[4] = sub_1BD9B6248;
  v49 = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_233;
  v28 = _Block_copy(aBlock);
  v29 = v49;
  v30 = v12;
  v29, v31, v32, v33, v34, v35, v36, v37;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD9B5728(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  v38 = v43;
  v39 = v44;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v10, v3, v38, v28);
  _Block_release(v28);

  (*(v47 + 8))(v38, v39);
  (*(v45 + 8))(v3, v46);
  return (v26)(v10, v42);
}

void sub_1BD9B5C68()
{
  v1 = *(type metadata accessor for FinanceKitTransactionFoundInMailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD9B1970(v2);
}

uint64_t sub_1BD9B5CC8(uint64_t a1)
{
  v4 = *(type metadata accessor for FinanceKitTransactionFoundInMailView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD9B1B44(a1, v6, v7, v1 + v5);
}

BOOL sub_1BD9B5DB8(void *a1, void *a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E78, &unk_1BE0E4690);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  if (*a1 != *a2 && (sub_1BE053B84() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel(0);
  if ((sub_1BE04AED4() & 1) == 0)
  {
    return 0;
  }

  v15 = v14[7];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if ((v16 != *v18 || v17 != v18[1]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v19 = v14[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23 || (*v20 != *v22 || v21 != v23) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v24 = v14[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = v14[10];
  v30 = *(v11 + 48);
  sub_1BD38F438(a1 + v29, v13);
  sub_1BD38F438(a2 + v29, &v13[v30]);
  v31 = *(v5 + 48);
  if (v31(v13, 1, v4) != 1)
  {
    sub_1BD38F438(v13, v10);
    if (v31(&v13[v30], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_29;
    }

    (*(v5 + 32))(v7, &v13[v30], v4);
    sub_1BD9B5728(&qword_1EBD5AAF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v33 = sub_1BE052334();
    v34 = *(v5 + 8);
    v34(v7, v4);
    v34(v10, v4);
    sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
    return (v33 & 1) != 0;
  }

  if (v31(&v13[v30], 1, v4) != 1)
  {
LABEL_29:
    sub_1BD0DE53C(v13, &qword_1EBD44E78, &unk_1BE0E4690);
    return 0;
  }

  sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
  return 1;
}

uint64_t sub_1BD9B61E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD9B6270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD9B62F0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
  sub_1BE048964();
  v3, v4, v5, v6, v7, v8, v9, v10;
}

void sub_1BD9B633C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator) = v2;
  v4 = v2;
}

void sub_1BD9B637C()
{
  if (*(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
    sub_1BE04B584();
    KeyPath, v2, v3, v4, v5, v6, v7, v8;
  }

  else
  {
    *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) = 0;
  }

  if (*(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive))
  {
    v9 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v9);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
    sub_1BE04B584();
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive) = 0;
  }
}

void sub_1BD9B6564()
{
  if (*(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) == 1)
  {
    *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
    sub_1BE04B584();
    KeyPath, v2, v3, v4, v5, v6, v7, v8;
  }

  if (*(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive))
  {
    v9 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v9);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
    sub_1BE04B584();
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive) = 0;
  }
}

unint64_t sub_1BD9B6754()
{
  result = qword_1EBD5AB08;
  if (!qword_1EBD5AB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AB10, &unk_1BE10A790);
    sub_1BD9B67D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB08);
  }

  return result;
}

unint64_t sub_1BD9B67D8()
{
  result = qword_1EBD5AB18;
  if (!qword_1EBD5AB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5AA30, &qword_1BE10A618);
    sub_1BD0DE43C();
    sub_1BD9B5538(&qword_1EBD5AA50, &unk_1EBD5AA40, &unk_1BE10A648, sub_1BD9B53F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB18);
  }

  return result;
}

uint64_t sub_1BD9B68CC(uint64_t a1, int a2, uint64_t a3)
{
  v125 = a3;
  v124 = a2;
  v129 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v127 = v3;
  v128 = v4;
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v123 = &v122 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v122 - v11;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v122 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v122 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v122 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v122 - v29;
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  v122 = (&v122 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v122 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v122 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v122 - v42;
  v54 = MEMORY[0x1EEE9AC00](v44);
  v56 = &v122 - v55;
  result = 0;
  switch(v129)
  {
    case 1:
      v74 = v127;
      v73 = v128;
      v12 = v49;
      (*(v128 + 13))(v49, *MEMORY[0x1E69B8068], v127, v54);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_92;
      }

      v75 = result;
      goto LABEL_61;
    case 3:
      if (v125 == 3)
      {
        v74 = v127;
        v73 = v128;
        v12 = v46;
        (*(v128 + 13))(v46, *MEMORY[0x1E69B8068], v127, v54);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_105;
        }

        v75 = result;
        goto LABEL_61;
      }

      v74 = v127;
      v73 = v128;
      if (v125 == 2)
      {
        v12 = v47;
        (*(v128 + 13))(v47, *MEMORY[0x1E69B8068], v127, v54);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_104;
        }

        v75 = result;
LABEL_61:
        v68 = sub_1BE04B6F4();

        v73[1](v12, v74);
        return v68;
      }

      return sub_1BD9B7954();
    case 4:
    case 14:
      return result;
    case 6:
      v74 = v127;
      v73 = v128;
      v12 = v123;
      (*(v128 + 13))(v123, *MEMORY[0x1E69B8068], v127, v54);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_88;
      }

      v75 = result;
      goto LABEL_61;
    case 7:
      v74 = v127;
      v73 = v128;
      v12 = v50;
      (*(v128 + 13))(v50, *MEMORY[0x1E69B8068], v127, v54);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_89;
      }

      v75 = result;
      goto LABEL_61;
    case 8:
      goto LABEL_33;
    case 9:
      if (v124 == 1)
      {
        return 32;
      }

      v102 = v127;
      v101 = v128;
      (*(v128 + 13))(v30, *MEMORY[0x1E69B8068], v127, v54);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_98;
      }

      v103 = result;
      v72 = sub_1BE04B6F4();

      v101[1](v30, v102);
      return v72;
    case 10:
      result = [*(v126 + 264) paymentRequest];
      if (!result)
      {
        goto LABEL_90;
      }

      v76 = result;
      v60 = [result localizedAuthorizingTitle];

      if (v60)
      {
        goto LABEL_51;
      }

      v78 = v127;
      v77 = v128;
      (*(v128 + 13))(v27, *MEMORY[0x1E69B8068], v127);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_102;
      }

      v79 = result;
      v68 = sub_1BE04B6F4();

      v77[1](v27, v78);
      return v68;
    case 11:
      v80 = v45;
      v81 = v52;
      v40 = v51;
      v82 = v126;
      result = [*(v126 + 264) paymentRequest];
      if (!result)
      {
        goto LABEL_91;
      }

      v83 = result;
      v60 = [result localizedAuthorizingTitle];

      if (v60)
      {
        goto LABEL_51;
      }

      result = [*(v82 + 264) paymentRequest];
      v84 = v127;
      v37 = v128;
      if (!result)
      {
        goto LABEL_103;
      }

      v85 = result;
      v86 = [result requestType];

      if (v86 != 12)
      {
        result = [*(v82 + 264) paymentRequest];
        if (!result)
        {
          goto LABEL_109;
        }

        v114 = result;
        v115 = [result requestType];

        v116 = *MEMORY[0x1E69B8068];
        v117 = *(v37 + 13);
        if (v115 != 10)
        {
          v87 = v40;
          v117(v40, v116, v84);
          result = PKPassKitBundle();
          if (!result)
          {
            goto LABEL_112;
          }

          goto LABEL_80;
        }

        v87 = v81;
        v117(v81, v116, v84);
        result = PKPassKitBundle();
        if (result)
        {
LABEL_78:
          v113 = result;
          goto LABEL_81;
        }

        __break(1u);
LABEL_75:
        result = [*(v82 + 264) paymentRequest];
        if (!result)
        {
          goto LABEL_111;
        }

        v118 = result;
        v119 = [result v87[315]];

        if (v119 == 10)
        {
          v87 = v81;
          (*(v37 + 13))(v81, *MEMORY[0x1E69B8068], v84);
          result = PKPassKitBundle();
          if (!result)
          {
            goto LABEL_113;
          }

          goto LABEL_78;
        }

        result = [*(v82 + 264) paymentRequest];
        if (!result)
        {
LABEL_114:
          __break(1u);
          return result;
        }

        v121 = result;
        v60 = [result localizedPhysicalButtonConfirmationTitle];

        if (v60)
        {
LABEL_51:
          v100 = sub_1BE052434();

          return v100;
        }

        v87 = v40;
        (*(v37 + 13))(v40, *MEMORY[0x1E69B8068], v84);
        result = PKPassKitBundle();
        if (!result)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
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
          goto LABEL_114;
        }

LABEL_80:
        v113 = result;
        goto LABEL_81;
      }

      v87 = v80;
      (*(v37 + 13))(v80, *MEMORY[0x1E69B8068], v84);
      result = PKPassKitBundle();
      if (result)
      {
LABEL_70:
        v113 = result;
LABEL_81:
        v120 = sub_1BE04B6F4();

        (*(v37 + 1))(v87, v84);
        return v120;
      }

      __break(1u);
LABEL_33:
      v82 = v126;
      if (*(v126 + 225) != 1)
      {
        v81 = v48;
        v40 = v53;
        result = [*(v126 + 264) paymentRequest];
        v37 = v128;
        if (!result)
        {
          goto LABEL_97;
        }

        v99 = result;
        v60 = [result localizedAuthorizingTitle];

        if (v60)
        {
          goto LABEL_51;
        }

        result = [*(v82 + 264) paymentRequest];
        if (!result)
        {
          goto LABEL_108;
        }

        v111 = result;
        v87 = &selRef_recurringPaymentMemo;
        v112 = [result requestType];

        v84 = v127;
        if (v112 == 12)
        {
          v87 = v122;
          (*(v37 + 13))(v122, *MEMORY[0x1E69B8068], v127);
          result = PKPassKitBundle();
          if (!result)
          {
            goto LABEL_110;
          }

          goto LABEL_70;
        }

        goto LABEL_75;
      }

      IsAvailable = PKSystemApertureIsAvailable();
      v89 = *MEMORY[0x1E69B8068];
      v90 = v128;
      v91 = *(v128 + 13);
      if (IsAvailable)
      {
        v92 = v127;
        v91(v40, v89, v127);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_106;
        }

        v93 = result;
        v68 = sub_1BE04B6F4();

        v90[1](v40, v92);
      }

      else
      {
        v109 = v127;
        v91(v37, v89, v127);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_107;
        }

        v110 = result;
        v68 = sub_1BE04B6F4();

        v90[1](v37, v109);
      }

      return v68;
    case 12:
      v74 = v127;
      v73 = v128;
      (*(v128 + 13))(v12, *MEMORY[0x1E69B8068], v127, v54);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_93;
      }

      v75 = result;
      goto LABEL_61;
    case 13:
      return sub_1BD9B7C04();
    case 15:
      v94 = [*(v126 + 264) selectedPaymentOffer];
      if (v94)
      {

        v96 = v127;
        v95 = v128;
        (*(v128 + 13))(v24, *MEMORY[0x1E69B8078], v127);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_96;
        }

        v97 = result;
        v72 = sub_1BE04B6F4();

        v95[1](v24, v96);
      }

      else
      {
        v107 = v127;
        v106 = v128;
        (*(v128 + 13))(v21, *MEMORY[0x1E69B8078], v127);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_101;
        }

        v108 = result;
        v72 = sub_1BE04B6F4();

        v106[1](v21, v107);
      }

      return v72;
    case 16:
      v70 = v127;
      v69 = v128;
      (*(v128 + 13))(v18, *MEMORY[0x1E69B8078], v127, v54);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_87;
      }

      v71 = result;
      v72 = sub_1BE04B6F4();

      v69[1](v18, v70);
      return v72;
    default:
      v58 = v126;
      if (*(v126 + 60) != 1)
      {
        goto LABEL_8;
      }

      if (*(v126 + 62) != 1)
      {
        goto LABEL_6;
      }

      result = [*(v126 + 264) paymentRequest];
      if (!result)
      {
        goto LABEL_95;
      }

      v59 = result;
      v60 = [result localizedUnboundBiometricMessage];

      if (v60)
      {
        goto LABEL_51;
      }

LABEL_6:
      result = [*(v58 + 264) paymentRequest];
      if (!result)
      {
        goto LABEL_86;
      }

      v61 = result;
      v60 = [result localizedBiometricRetryMessage];

      if (v60)
      {
        goto LABEL_51;
      }

LABEL_8:
      if (*(v58 + 225) != 1)
      {
        result = [*(v58 + 264) paymentRequest];
        if (!result)
        {
          goto LABEL_94;
        }

        v98 = result;
        v60 = [result localizedPhysicalButtonConfirmationTitle];

        if (!v60)
        {
          return sub_1BD9B8A8C([*(v58 + 264) confirmationStyle]);
        }

        goto LABEL_51;
      }

      v62 = PKSystemApertureIsAvailable();
      v63 = *MEMORY[0x1E69B8068];
      v64 = v128;
      v65 = *(v128 + 13);
      if (v62)
      {
        v66 = v127;
        v65(v56, v63, v127);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_99;
        }

        v67 = result;
        v68 = sub_1BE04B6F4();

        v64[1](v56, v66);
      }

      else
      {
        v104 = v127;
        v65(v43, v63, v127);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_100;
        }

        v105 = result;
        v68 = sub_1BE04B6F4();

        v64[1](v43, v104);
      }

      return v68;
  }
}

id sub_1BD9B7954()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04C884();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  sub_1BE04C794();
  (*(v6 + 104))(v8, *MEMORY[0x1E69BC9B8], v5);
  sub_1BD70C564();
  sub_1BE0526E4();
  sub_1BE0526E4();
  v12 = *(v6 + 8);
  v12(v8, v5);
  v12(v11, v5);
  if (v16[1] == v16[0])
  {
    return sub_1BD9B7FD4();
  }

  if (*(v0 + 92) == 1)
  {
    return sub_1BD9B9130([*(v0 + 264) confirmationStyle]);
  }

  (*(v2 + 104))(v4, *MEMORY[0x1E69B8068], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();

    (*(v2 + 8))(v4, v1);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD9B7C04()
{
  v1 = v0;
  v38 = sub_1BE04BD74();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 248);
  if (v12 <= 0x13)
  {
    v13 = *(v0 + 256);
    if (((1 << v12) & 0x8C008) != 0 && v13 != 0)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v17 = v13;
        v18 = sub_1BD9B81A4(v16);
      }

      else
      {
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (!v20)
        {
          goto LABEL_11;
        }

        v21 = v20;
        v22 = v13;
        v18 = sub_1BD9B87A4(v21);
      }

      v23 = v18;
      v24 = v19;

      if (v24)
      {
        return v23;
      }
    }
  }

LABEL_11:
  sub_1BE04D084();
  v25 = sub_1BE04D204();
  v26 = sub_1BE052C34();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1BD026000, v25, v26, "Requested localized error message, but no error available.", v27, 2u);
    MEMORY[0x1BFB45F20](v27, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  result = [*(v1 + 264) paymentRequest];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = result;
  v30 = [result requestType];

  v31 = *MEMORY[0x1E69B8068];
  v32 = *(v2 + 104);
  if (v30 == 10)
  {
    v33 = v38;
    v32(v7, v31, v38);
    result = PKPassKitBundle();
    if (result)
    {
      v34 = result;
      v23 = sub_1BE04B6F4();

      (*(v2 + 8))(v7, v33);
      return v23;
    }

    goto LABEL_21;
  }

  v35 = v38;
  v32(v4, v31, v38);
  result = PKPassKitBundle();
  if (result)
  {
    v36 = result;
    v23 = sub_1BE04B6F4();

    (*(v2 + 8))(v4, v35);
    return v23;
  }

LABEL_22:
  __break(1u);
  return result;
}

id sub_1BD9B7FD4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v6;
  v9 = *MEMORY[0x1E69B8068];
  v10 = *(v2 + 104);
  if (*(v0 + 88) == 1)
  {
    v10(&v14 - v6, v9, v1, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v8, v1);
      return v13;
    }

    __break(1u);
  }

  else
  {
    v10(v4, v9, v1, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
      v8 = v4;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

id sub_1BD9B81A4(void *a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - v18;
  v20 = [a1 status] - 5;
  result = [a1 error];
  v22 = result;
  if (v20 <= 3)
  {
    if (result)
    {
      v23 = [result localizedFailureReason];

      if (!v23)
      {
        return 0;
      }

      v24 = sub_1BE052434();

      return v24;
    }

    __break(1u);
    goto LABEL_40;
  }

  v54 = v4;
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v25 = sub_1BD9B89AC(result);

  v26 = v25;
  v27 = sub_1BD938BD4(v26);

  if (v27 <= 0xDu)
  {
    if (((1 << v27) & 0x3F9C) != 0)
    {
      v28 = [v26 localizedFailureReason];
      if (v28)
      {
        v29 = v28;
        v24 = sub_1BE052434();
      }

      else
      {

        return 0;
      }

      return v24;
    }

    if (v27 == 5)
    {
      v35 = v54;
      (*(v54 + 104))(v19, *MEMORY[0x1E69B8068], v3);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v36 = result;
      v24 = sub_1BE04B6F4();

      (*(v35 + 8))(v19, v3);
      return v24;
    }

    if (v27 == 6)
    {
      result = [*(v1 + 264) paymentRequest];
      if (!result)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v30 = result;
      v31 = [result requestType];

      v32 = *MEMORY[0x1E69B8068];
      v33 = *(v54 + 104);
      if (v31 == 10)
      {
        v33(v15, v32, v3);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v34 = result;
        v24 = sub_1BE04B6F4();

        (*(v54 + 8))(v15, v3);
      }

      else
      {
        v33(v12, v32, v3);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v42 = result;
        v24 = sub_1BE04B6F4();

        (*(v54 + 8))(v12, v3);
      }

      return v24;
    }
  }

  if ((v27 & 1) == 0)
  {
    v40 = v54;
    (*(v54 + 104))(v6, *MEMORY[0x1E69B8068], v3);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v41 = result;
    v24 = sub_1BE04B6F4();

    (*(v40 + 8))(v6, v3);
    return v24;
  }

  result = [*(v1 + 264) paymentRequest];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v37 = result;
  v38 = [result shippingType];

  if (v38 == 3)
  {
    v39 = "ADD_SERVICEPICKUP_TITLE";
  }

  else
  {
    if (v38 == 2)
    {
      v43 = "ADD_SERVICEPICKUP_TITLE";
      goto LABEL_36;
    }

    if (v38 == 1)
    {
      v39 = "ADD_DELIVERY_TITLE";
    }

    else
    {
      v39 = "ADD_SHIPPING_TITLE";
    }
  }

  v43 = v39 - 32;
LABEL_36:
  v44 = v54;
  (*(v54 + 104))(v9, *MEMORY[0x1E69B8068], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v45 = result;
    v24 = sub_1BE04B6F4();

    (v43 | 0x8000000000000000), v46, v47, v48, v49, v50, v51, v52;
    (*(v44 + 8))(v9, v3);
    return v24;
  }

LABEL_47:
  __break(1u);
  return result;
}

id sub_1BD9B87A4(void *a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 error];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 localizedFailureReason];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BE052434();

    return v12;
  }

  result = [*(v1 + 264) paymentRequest];
  if (result)
  {
    v14 = result;
    v15 = [result localizedErrorMessage];

    if (v15)
    {
      v12 = sub_1BE052434();

      return v12;
    }

    (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v12 = sub_1BE04B6F4();

      (*(v4 + 8))(v7, v3);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD9B89AC(void *a1)
{
  v1 = [a1 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  v2 = sub_1BE052744();

  if (v2[2])
  {
    v10 = v2[4];
    v11 = v10;
    v2, v12, v13, v14, v15, v16, v17, v18;
    v19 = sub_1BE04A844();
    v20 = sub_1BD9B89AC(v19);

    return v20;
  }

  else
  {
    v2, v3, v4, v5, v6, v7, v8, v9;

    return a1;
  }
}

id sub_1BD9B8A8C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - v25;
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v27);
  v32 = &v40 - v28;
  v34 = *(v33 + 104);
  v40 = v33;
  v41 = v35;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        (v34)(v23, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v37 = result;
          v38 = sub_1BE04B6F4();
          v32 = v23;
          goto LABEL_32;
        }

        goto LABEL_37;
      }

      (v34)(v20, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
        v38 = sub_1BE04B6F4();
        v32 = v20;
        goto LABEL_32;
      }
    }

    else
    {
      if (a1 == 1)
      {
        (v34)(&v40 - v28, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v37 = result;
          goto LABEL_21;
        }

        goto LABEL_36;
      }

      if (a1 != 2)
      {
        goto LABEL_30;
      }

      (v34)(v26, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
        v38 = sub_1BE04B6F4();
        v32 = v26;
LABEL_32:

        (*(v40 + 8))(v32, v41);
        return v38;
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
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
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      (v34)(v17, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
        v38 = sub_1BE04B6F4();
        v32 = v17;
        goto LABEL_32;
      }

      goto LABEL_40;
    }

    (v34)(v14, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v37 = result;
      v38 = sub_1BE04B6F4();
      v32 = v14;
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  switch(a1)
  {
    case 7:
      (v34)(v11, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
        v38 = sub_1BE04B6F4();
        v32 = v11;
        goto LABEL_32;
      }

      goto LABEL_38;
    case 8:
      (v34)(v8, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v39 = result;
        v38 = sub_1BE04B6F4();
        v32 = v8;
        v37 = v39;
        goto LABEL_32;
      }

      goto LABEL_41;
    case 9:
      v32 = v30;
      (v34)(v30, *MEMORY[0x1E69B80E0], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
LABEL_21:
        v38 = sub_1BE04B6F4();
        goto LABEL_32;
      }

      goto LABEL_39;
  }

LABEL_30:
  v34(v4, *MEMORY[0x1E69B8068], v29, v31);
  result = PKPassKitBundle();
  if (result)
  {
    v37 = result;
    v38 = sub_1BE04B6F4();
    v32 = v4;
    goto LABEL_32;
  }

LABEL_42:
  __break(1u);
  return result;
}

id sub_1BD9B9130(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - v25;
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v27);
  v32 = &v40 - v28;
  v34 = *(v33 + 104);
  v40 = v33;
  v41 = v35;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        (v34)(v23, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v37 = result;
          v38 = sub_1BE04B6F4();
          v32 = v23;
          goto LABEL_32;
        }

        goto LABEL_37;
      }

      (v34)(v20, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
        v38 = sub_1BE04B6F4();
        v32 = v20;
        goto LABEL_32;
      }
    }

    else
    {
      if (a1 == 1)
      {
        (v34)(&v40 - v28, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v37 = result;
          goto LABEL_21;
        }

        goto LABEL_36;
      }

      if (a1 != 2)
      {
        goto LABEL_30;
      }

      (v34)(v26, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
        v38 = sub_1BE04B6F4();
        v32 = v26;
LABEL_32:

        (*(v40 + 8))(v32, v41);
        return v38;
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
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
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      (v34)(v17, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
        v38 = sub_1BE04B6F4();
        v32 = v17;
        goto LABEL_32;
      }

      goto LABEL_40;
    }

    (v34)(v14, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v37 = result;
      v38 = sub_1BE04B6F4();
      v32 = v14;
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  switch(a1)
  {
    case 7:
      (v34)(v11, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
        v38 = sub_1BE04B6F4();
        v32 = v11;
        goto LABEL_32;
      }

      goto LABEL_38;
    case 8:
      (v34)(v8, *MEMORY[0x1E69B8068], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v39 = result;
        v38 = sub_1BE04B6F4();
        v32 = v8;
        v37 = v39;
        goto LABEL_32;
      }

      goto LABEL_41;
    case 9:
      v32 = v30;
      (v34)(v30, *MEMORY[0x1E69B80E0], v29, v31.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v37 = result;
LABEL_21:
        v38 = sub_1BE04B6F4();
        goto LABEL_32;
      }

      goto LABEL_39;
  }

LABEL_30:
  v34(v4, *MEMORY[0x1E69B8068], v29, v31);
  result = PKPassKitBundle();
  if (result)
  {
    v37 = result;
    v38 = sub_1BE04B6F4();
    v32 = v4;
    goto LABEL_32;
  }

LABEL_42:
  __break(1u);
  return result;
}

void sub_1BD9B97D8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v13[4] = a1;
    v14 = a2;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1BD126964;
    v13[3] = &block_descriptor_234;
    v4 = _Block_copy(v13);
    v5 = v14;
    sub_1BE048964();
    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v4);
  _Block_release(v4);
}

char *NearbyPeerPaymentSenderViewController.__allocating_init(userInfo:screenEdgeSwipeAction:dismissAction:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1BD9BD508(a1, a2, a3, a4, a5);
  a3, v13, v14, v15, v16, v17, v18, v19;
  a5, v20, v21, v22, v23, v24, v25, v26;
  return v12;
}

char *NearbyPeerPaymentSenderViewController.init(userInfo:screenEdgeSwipeAction:dismissAction:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = sub_1BD9BD508(a1, a2, a3, a4, a5);
  a3, v8, v9, v10, v11, v12, v13, v14;
  a5, v15, v16, v17, v18, v19, v20, v21;
  return v7;
}

void sub_1BD9B9A64()
{
  v1 = v0;
  v2 = sub_1BE04C4C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_restartMonitoring;
  if (*(v1 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_restartMonitoring) == 1)
  {
    v55 = v2;
    sub_1BE04D094();
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C54();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v54 = v13;
      v17 = v16;
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v14, v15, "NearbyPeerPayment: should restart device monitoring due to lock state changing", v16, 2u);
      v18 = v17;
      v13 = v54;
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v19 = v1 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v19, v59);
    v20 = v60;
    v21 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    (v21[4])(v20, v21);
    sub_1BD0EE8CC(v19, v56);
    v22 = v57;
    v23 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v24 = (*(v23 + 40))(v22, v23);
    v25 = v55;
    (*(v3 + 16))(v5, v8, v55);
    v26 = type metadata accessor for NearbyPeerPaymentDiscoveryMonitor(0);
    swift_allocObject();
    v27 = sub_1BD1258D4(v5, v24);
    sub_1BD116BC8();

    (*(v3 + 8))(v8, v25);
    __swift_destroy_boxed_opaque_existential_0(v56, v28, v29, v30, v31, v32, v33, v34);
    __swift_destroy_boxed_opaque_existential_0(v59, v35, v36, v37, v38, v39, v40, v41);
    v60 = v26;
    v61 = &protocol witness table for NearbyPeerPaymentDiscoveryMonitor;
    v59[0] = v27;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0(v19, v42, v43, v44, v45, v46, v47, v48);
    sub_1BD043990(v59, v19);
    v49 = *(v19 + 24);
    v50 = *(v19 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v19, v49);
    v51 = *(v50 + 56);
    v52 = swift_unknownObjectRetain();
    v51(v52, &protocol witness table for NearbyPeerPaymentSenderViewController, v49, v50);
    swift_endAccess();
    *(v1 + v13) = 0;
  }
}

void sub_1BD9B9E54(char a1)
{
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_currentLockState;
  v13 = v1[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_currentLockState];
  v14 = a1 & 1;
  if (v13 != (a1 & 1))
  {
    if (!(a1 & 1 | ((v13 & 1) == 0)))
    {
      v71 = v9;
      sub_1BE04D094();
      v70 = v1;
      v15 = v1;
      v16 = sub_1BE04D204();
      v17 = sub_1BE052C54();

      v69 = v17;
      v18 = os_log_type_enabled(v16, v17);
      v19 = &qword_1EBD5A000;
      if (v18)
      {
        v20 = swift_slowAlloc();
        v66 = v20;
        v67 = swift_slowAlloc();
        v72 = v67;
        *v20 = 136315138;
        v21 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
        swift_beginAccess();
        sub_1BD0EE8CC(&v15[v21], v73);
        v68 = v15;
        v22 = v4;
        v65 = v16;
        v23 = v74;
        v24 = v75;
        __swift_project_boxed_opaque_existential_1(v73, v74);
        (*(v24 + 8))(v23, v24);
        __swift_destroy_boxed_opaque_existential_0(v73, v25, v26, v27, v28, v29, v30, v31);
        sub_1BD9BE4B0(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v32 = sub_1BE053B24();
        v34 = v33;
        (*(v22 + 8))(v6, v3);
        v15 = v68;
        v35 = sub_1BD123690(v32, v34, &v72);
        v34, v36, v37, v38, v39, v40, v41, v42;
        v44 = v65;
        v43 = v66;
        *(v66 + 1) = v35;
        v19 = &qword_1EBD5A000;
        _os_log_impl(&dword_1BD026000, v44, v69, "NearbyPeerPayment: device discovery status changed due to lock state. Invalidate monitorID: %s and mark for restart", v43, 0xCu);
        v45 = v67;
        __swift_destroy_boxed_opaque_existential_0(v67, v46, v47, v48, v49, v50, v51, v52);
        MEMORY[0x1BFB45F20](v45, -1, -1);
        MEMORY[0x1BFB45F20](v43, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v11, v71);
      v15[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_restartMonitoring] = 1;
      v53 = &v15[v19[357]];
      swift_beginAccess();
      v54 = *(v53 + 24);
      v55 = *(v53 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
      (*(v55 + 56))(0, 0, v54, v55);
      swift_endAccess();
      sub_1BD0EE8CC(v53, v73);
      v56 = v74;
      v57 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      (*(v57 + 80))(v56, v57);
      __swift_destroy_boxed_opaque_existential_0(v73, v58, v59, v60, v61, v62, v63, v64);
      v1 = v70;
    }

    v1[v12] = v14;
  }
}

void sub_1BD9BA254()
{
  v1 = v0;
  v2 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for NearbyPeerPaymentSenderViewController();
  v40.receiver = v0;
  v40.super_class = v5;
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v6 = *(*&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView] + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v6;
  sub_1BE04AFD4();
  v9 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
  v10 = &v4[*(v9 + 20)];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[*(v9 + 24)];
  *v11 = sub_1BD9BE104;
  v11[1] = v7;
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE2EC(v4, v8 + v12);
  swift_endAccess();
  sub_1BD3BB48C();

  sub_1BD97C9D4(v4);
  v13 = *&v1[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels];
  [v13 setAlpha_];
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  [v14 addSubview_];

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_1BD9BCA40(&v37);
  sub_1BD11326C(&v37);
  v16 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(&v1[v16], &v37);
  v17 = *(&v38 + 1);
  v18 = v39;
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  LOBYTE(v16) = (*(v18 + 72))(v17, v18);
  __swift_destroy_boxed_opaque_existential_0(&v37, v19, v20, v21, v22, v23, v24, v25);
  if ((v16 & 1) == 0)
  {
LABEL_5:
    v29 = *&v1[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController];
    type metadata accessor for NearbyPeerPaymentSenderVFXViewController();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
      swift_beginAccess();
      *(v31 + 8) = &protocol witness table for NearbyPeerPaymentSenderViewController;
      swift_unknownObjectWeakAssign();
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v32 = v29;
      NearbyPeerPaymentSenderVFXViewController.setState(_:completion:)(&v37, PKEdgeInsetsMake, 0);

      sub_1BD11326C(&v37);
    }

    v33 = [objc_allocWithZone(MEMORY[0x1E69B8F40]) init];
    [v33 setEndpoint_];
    [v33 setQuoteRequestDestination_];
    v34 = [objc_opt_self() sharedService];
    if (v34)
    {
      v35 = v34;
      [v34 prewarmDeviceScoreForAttributes_];

      return;
    }

    goto LABEL_10;
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_debugViewTapped];
  v27 = [v1 view];
  if (v27)
  {
    v28 = v27;
    [v27 addGestureRecognizer_];

    goto LABEL_5;
  }

LABEL_11:
  __break(1u);
}

void sub_1BD9BA640(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD9BB6BC();
    v3 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v2 + v3, v31);
    v4 = v32;
    v5 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v5 + 16))(v30, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v7 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v8 = sub_1BE052434();
    v9 = MEMORY[0x1E69BA440];
    *(inited + 40) = v8;
    *(inited + 48) = v10;
    v11 = *v9;
    *(inited + 56) = *v9;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v12;
    v13 = v7;
    v14 = v11;
    v15 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO30trackNearbyPeerPaymentSendFlow5state4withyAA0fgH11SenderStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v30, v15);

    v15, v16, v17, v18, v19, v20, v21, v22;
    sub_1BD11326C(v30);
    __swift_destroy_boxed_opaque_existential_0(v31, v23, v24, v25, v26, v27, v28, v29);
  }
}

void sub_1BD9BA890(char a1, SEL *a2, void *a3, double a4)
{
  v34.receiver = v4;
  v34.super_class = type metadata accessor for NearbyPeerPaymentSenderViewController();
  objc_msgSendSuper2(&v34, *a2, a1 & 1);
  v7 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v4 + v7, v31);
  v8 = v32;
  v9 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v9 + 16))(v30, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  v11 = MEMORY[0x1E69BA680];
  *(inited + 16) = xmmword_1BE0B69E0;
  v12 = *v11;
  *(inited + 32) = *v11;
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v13;
  v14 = v12;
  v15 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  _s9PassKitUI9AnalyticsO30trackNearbyPeerPaymentSendFlow5state4withyAA0fgH11SenderStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v30, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;
  sub_1BD11326C(v30);
  __swift_destroy_boxed_opaque_existential_0(v31, v23, v24, v25, v26, v27, v28, v29);
}

id sub_1BD9BAA40(double a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v47.receiver = v1;
  v47.super_class = type metadata accessor for NearbyPeerPaymentSenderViewController();
  objc_msgSendSuper2(&v47, sel_viewDidLayoutSubviews);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (qword_1EBD36BE8 != -1)
  {
    swift_once();
  }

  v12 = *&qword_1EBD43A60;
  memset(&slice, 0, sizeof(slice));
  memset(&v46, 0, sizeof(v46));
  v50.origin.x = v5;
  v50.origin.y = v7;
  v50.size.width = v9;
  v50.size.height = v11;
  CGRectDivide(v50, &slice, &v46, *&qword_1EBD43A60, CGRectMinXEdge);
  v51 = v46;
  memset(&slice, 0, sizeof(slice));
  memset(&v46, 0, sizeof(v46));
  CGRectDivide(v51, &slice, &v46, v12, CGRectMaxXEdge);
  origin = v46.origin;
  size = v46.size;
  v15 = *&v1[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels];
  [v15 sizeThatFits_];
  v17 = v16;
  v19 = v18;
  memset(&slice, 0, sizeof(slice));
  v20 = (size.height - (v18 + 60.0 + 16.0)) * 0.5;
  memset(&v46, 0, sizeof(v46));
  v52.origin = origin;
  v52.size = size;
  CGRectDivide(v52, &slice, &v46, v20, CGRectMinYEdge);
  v53 = v46;
  memset(&slice, 0, sizeof(slice));
  memset(&v46, 0, sizeof(v46));
  CGRectDivide(v53, &slice, &v46, v20, CGRectMaxYEdge);
  v21 = v46.origin;
  v22 = v46.size;
  v23.n128_u64[0] = v17;
  v24.n128_f64[0] = v19;
  v26.n128_u64[0] = *&v46.origin.y;
  v25.n128_u64[0] = *&v46.origin.x;
  v28.n128_u64[0] = *&v46.size.height;
  v27.n128_u64[0] = *&v46.size.width;
  PKSizeAlignedInRect(0x200000001, v23, v24, v25, v26, v27, v28, v29);
  [v15 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v46, 0, sizeof(v46));
  v54.origin = v21;
  v54.size = v22;
  CGRectDivide(v54, &slice, &v46, v19 + 16.0, CGRectMaxYEdge);
  v31.n128_u64[0] = *&v46.origin.y;
  v30.n128_u64[0] = *&v46.origin.x;
  v33.n128_u64[0] = *&v46.size.height;
  v32.n128_u64[0] = *&v46.size.width;
  v34.n128_u64[0] = 0x404E000000000000;
  v35.n128_u64[0] = 0x404E000000000000;
  PKSizeAlignedInRect(0x100000001, v34, v35, v30, v31, v32, v33, v36);
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  v41 = *&v1[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController];
  MidX = CGRectGetMidX(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  MidY = CGRectGetMidY(v56);
  v44 = v41 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter;
  swift_beginAccess();
  *v44 = MidX;
  *(v44 + 8) = MidY;
  *(v44 + 16) = 0;
  return sub_1BD632A40(MidX, MidY);
}

id sub_1BD9BAE20(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35[-v8 - 8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35[-v11 - 8];
  sub_1BD113234(a1, v35);
  if ((v36 - 1) < 5)
  {
    (*(v4 + 104))(v9, *MEMORY[0x1E69B8050], v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BE0B69E0;
    v14 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
    swift_beginAccess();
    v15 = *(v1 + v14);
    if (v15 && (v16 = [v15 minimalFormattedStringValue]) != 0)
    {
      v17 = v16;
      v18 = sub_1BE052434();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1BD110550();
    if (v20)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0;
    }

    v22 = 0xE000000000000000;
    if (v20)
    {
      v22 = v20;
    }

    *(v13 + 32) = v21;
    *(v13 + 40) = v22;
    v23 = sub_1BE04B714();
    v13, v24, v25, v26, v27, v28, v29, v30;
    (*(v4 + 8))(v9, v3);
    return v23;
  }

  if (v36 == 6)
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E69B8050], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v33 = result;
      v23 = sub_1BE04B6F4();

      (*(v4 + 8))(v6, v3);
      return v23;
    }

    __break(1u);
  }

  else
  {
    if (v36)
    {
      sub_1BD11326C(v35);
      return 0;
    }

    (*(v4 + 104))(v12, *MEMORY[0x1E69B8050], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v32 = result;
      v23 = sub_1BE04B6F4();

      (*(v4 + 8))(v12, v3);
      return v23;
    }
  }

  __break(1u);
  return result;
}

id sub_1BD9BB180(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57[-v17];
  sub_1BD113234(a1, v61);
  if (v62 <= 3)
  {
    if (v62 < 2)
    {
      (*(v4 + 104))(v18, *MEMORY[0x1E69B8050], v3);
      result = PKPassKitBundle();
      if (result)
      {
        v30 = result;
        v20 = sub_1BE04B6F4();

        (*(v4 + 8))(v18, v3);
        return v20;
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if ((v62 - 2) < 2)
    {
      (*(v4 + 104))(v15, *MEMORY[0x1E69B8050], v3);
      result = PKPassKitBundle();
      if (result)
      {
        v19 = result;
        v20 = sub_1BE04B6F4();

        (*(v4 + 8))(v15, v3);
        return v20;
      }

      goto LABEL_36;
    }

LABEL_17:
    sub_1BD11326C(v61);
    return 0;
  }

  if (v62 == 4)
  {
    (*(v4 + 104))(v12, *MEMORY[0x1E69B8050], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v31 = result;
      v20 = sub_1BE04B6F4();

      (*(v4 + 8))(v12, v3);
      return v20;
    }

    goto LABEL_37;
  }

  if (v62 != 5)
  {
    if (v62 == 6)
    {
      (*(v4 + 104))(v6, *MEMORY[0x1E69B8050], v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BE0B6CA0;
      v22 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
      swift_beginAccess();
      v23 = *(v1 + v22);
      if (v23 && (v24 = [v23 minimalFormattedStringValue]) != 0)
      {
        v25 = v24;
        v26 = sub_1BE052434();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v33 = MEMORY[0x1E69E6158];
      *(v21 + 56) = MEMORY[0x1E69E6158];
      v34 = sub_1BD110550();
      *(v21 + 64) = v34;
      if (v28)
      {
        v35 = v26;
      }

      else
      {
        v35 = 0;
      }

      if (v28)
      {
        v36 = v28;
      }

      else
      {
        v36 = 0xE000000000000000;
      }

      *(v21 + 32) = v35;
      *(v21 + 40) = v36;
      v37 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
      swift_beginAccess();
      sub_1BD0EE8CC(v1 + v37, v58);
      v38 = v59;
      v39 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v40 = (*(v39 + 24))(v38, v39);
      *(v21 + 96) = v33;
      *(v21 + 104) = v34;
      if (v41)
      {
        v48 = v40;
      }

      else
      {
        v48 = 0;
      }

      if (v41)
      {
        v49 = v41;
      }

      else
      {
        v49 = 0xE000000000000000;
      }

      *(v21 + 72) = v48;
      *(v21 + 80) = v49;
      __swift_destroy_boxed_opaque_existential_0(v58, v41, v42, v43, v44, v45, v46, v47);
      v20 = sub_1BE04B714();
      v21, v50, v51, v52, v53, v54, v55, v56;
      (*(v4 + 8))(v6, v3);
      return v20;
    }

    goto LABEL_17;
  }

  (*(v4 + 104))(v9, *MEMORY[0x1E69B8050], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v32 = result;
    v20 = sub_1BE04B6F4();

    (*(v4 + 8))(v9, v3);
    return v20;
  }

LABEL_38:
  __break(1u);
  return result;
}