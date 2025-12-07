uint64_t sub_1D783E530()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D783E774()
{
  result = sub_1D78B5C44();
  qword_1EC9CAD20 = result;
  return result;
}

uint64_t sub_1D783E7AC()
{
  result = sub_1D78B5C44();
  qword_1EC9CAD28 = result;
  return result;
}

uint64_t sub_1D783E7E4()
{
  v1 = sub_1D78B5C44();
  v2 = sub_1D78B5C44();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  *(v0 + 16) = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E698CA40]) init];
  if (qword_1EC9C8498 != -1)
  {
    swift_once();
  }

  [v4 addBagKey:qword_1EC9CAD20 valueType:4];
  if (qword_1EC9C84A0 != -1)
  {
    swift_once();
  }

  [v4 addBagKey:qword_1EC9CAD28 valueType:0];
  v5 = objc_opt_self();
  v6 = sub_1D78B5C44();
  v7 = sub_1D78B5C44();
  [v5 registerBagKeySet:v4 forProfile:v6 profileVersion:v7];

  return v0;
}

uint64_t FinanceURLHandler.__allocating_init(patterns:router:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1D77476F4(a2, v4 + 24);
  return v4;
}

uint64_t FinanceURLHandler.init(patterns:router:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1D77476F4(a2, v2 + 24);
  return v2;
}

uint64_t FinanceURLHandler.handleURL(for:)()
{
  v34 = *v0;
  v1 = sub_1D78B3BD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77405E0(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v31 - v8;
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v35 = &v31 - v17;
  sub_1D77405E0(0, &qword_1EE08F248, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);
  sub_1D78B3D24();
  sub_1D78B3B94();
  (*(v2 + 8))(v5, v1);
  sub_1D78B31E4();
  v18 = *(v11 + 8);
  v18(v15, v10);
  sub_1D78B3274();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D7840EF4(v9, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    v36 = 0;
    sub_1D78411D4(0, &qword_1EE095240, MEMORY[0x1E69E6370]);
    swift_allocObject();
    return sub_1D78B4104();
  }

  else
  {
    v33 = v18;
    v32 = *(v11 + 32);
    v20 = v35;
    v21 = v32();
    MEMORY[0x1EEE9AC00](v21, v22);
    *(&v31 - 2) = v20;
    sub_1D78B41F4();
    v23 = sub_1D78B4014();
    sub_1D783F728(0);
    sub_1D78B40A4();

    v24 = v35;
    (*(v11 + 16))(v15, v35, v10);
    v25 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v0;
    (v32)(v26 + v25, v15, v10);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1D783F814;
    *(v27 + 24) = v26;

    v28 = sub_1D78B4014();
    sub_1D78B4084();

    v29 = sub_1D78B4014();
    v30 = sub_1D78B4134();

    v33(v24, v10);
    return v30;
  }
}

uint64_t sub_1D783EF30(uint64_t a1)
{
  v1 = [objc_opt_self() bag];
  v2 = objc_allocWithZone(MEMORY[0x1E698C820]);
  v3 = sub_1D78B3214();
  v4 = [v2 initWithURL:v3 bag:v1];
  swift_unknownObjectRelease();

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_1D78B5C74();
  }

  v7 = objc_allocWithZone(MEMORY[0x1E698CAC8]);
  v8 = sub_1D78B5C44();

  v9 = [v7 initWithBundleIdentifier_];

  [v4 setClientInfo_];
  v10 = [objc_opt_self() sharedAccount];
  v11 = [v10 activeiTunesAccount];

  [v4 setAccount_];
  v12 = [v4 perform];
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1D77405E0(0, &qword_1EC9CAD50, MEMORY[0x1E6968FB0], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v14 = sub_1D78B4174();

  return v14;
}

void sub_1D783F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  (*(v11 + 16))(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  (*(v11 + 32))(v15 + v14, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1D7841628;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7780F60;
  aBlock[3] = &block_descriptor_60;
  v16 = _Block_copy(aBlock);

  [a5 addFinishBlock_];
  _Block_release(v16);
}

void sub_1D783F394(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = sub_1D78B3294();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a2;
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v16 = sub_1D78B4304();
    __swift_project_value_buffer(v16, qword_1EE09C1F0);
    v17 = a2;
    v18 = sub_1D78B42E4();
    v19 = sub_1D78B6094();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_1D78B67B4();
      v24 = sub_1D77AD82C(v22, v23, &v30);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1D7739000, v18, v19, "AMSCampaignAttributionTask error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1DA7043F0](v21, -1, -1);
      MEMORY[0x1DA7043F0](v20, -1, -1);
    }

    a3(a5);
  }

  else
  {
    if (a1)
    {
      v25 = v12;
      v26 = a1;
      v27 = [v26 redirectURL];
      if (v27)
      {
        v28 = v27;
        sub_1D78B3254();

        a3(v14);
        (*(v10 + 8))(v14, v25);
        return;
      }
    }

    a3(a5);
  }
}

uint64_t sub_1D783F634(uint64_t a1)
{
  sub_1D78411D4(0, &qword_1EE08F220, MEMORY[0x1E69E6158]);
  swift_allocObject();
  sub_1D78B4174();
  sub_1D7841488(0);
  swift_allocObject();
  sub_1D78B4174();
  v1 = sub_1D78B4014();
  v2 = sub_1D78B4004();

  return v2;
}

void sub_1D783F728(uint64_t a1)
{
  if (!qword_1EC9CAD30)
  {
    sub_1D773F004(255, &qword_1EE08FBD0, 0x1E696AD98);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9CAD30);
    }
  }
}

uint64_t sub_1D783F7A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1D783F8A0(a5, a1, a2, a3);
  sub_1D78411D4(0, &qword_1EE095240, MEMORY[0x1E69E6370]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D783F814(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(sub_1D78B3294() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_1D783F7A0(a1, a2, a3, v8, v9);
}

uint64_t sub_1D783F8A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41 = a3;
  v40 = a2;
  v6 = sub_1D78B5254();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D78B52A4();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B3294();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v16 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D78B5FB4();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE09C268;
  sub_1D77405E0(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D78BCAB0;
  *(v19 + 56) = sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
  *(v19 + 64) = sub_1D7840C28();
  *(v19 + 32) = a4;
  v20 = a4;
  v21 = sub_1D78B60A4();
  sub_1D78B42C4("Finance URL is matched with parser type=%{public}@", 50, 2, &dword_1D7739000, v18, v21, v19);

  switch(v17)
  {
    case 0:
      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v22 = sub_1D78B6104();
      (*(v13 + 16))(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
      v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v33 = (v14 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      (*(v13 + 32))(v34 + v32, v16, v12);
      v35 = (v34 + v33);
      v36 = v41;
      *v35 = v40;
      v35[1] = v36;
      *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v42;
      v52 = sub_1D7840D64;
      v53 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v28 = &block_descriptor_18_0;
      goto LABEL_9;
    case 2:
      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v22 = sub_1D78B6104();
      (*(v13 + 16))(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
      v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v30 = swift_allocObject();
      (*(v13 + 32))(v30 + v29, &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
      *(v30 + ((v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v42;
      v52 = sub_1D7840C90;
      v53 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = sub_1D775FB6C;
      v51 = &block_descriptor_27;
      v31 = _Block_copy(&aBlock);
LABEL_10:

      sub_1D78B5274();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1D7840D1C(&qword_1EE090300, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1D77405E0(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D775F4A4();
      v37 = v44;
      v38 = v47;
      sub_1D78B6324();
      MEMORY[0x1DA7033B0](0, v11, v37, v31);
      _Block_release(v31);

      (*(v46 + 8))(v37, v38);
      (*(v43 + 8))(v11, v45);
      return 1;
    case 1:
      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v22 = sub_1D78B6104();
      (*(v13 + 16))(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
      v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      (*(v13 + 32))(v25 + v23, v16, v12);
      v26 = (v25 + v24);
      v27 = v41;
      *v26 = v40;
      v26[1] = v27;
      *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v42;
      v52 = sub_1D7840E2C;
      v53 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v28 = &block_descriptor_24_1;
LABEL_9:
      v50 = sub_1D775FB6C;
      v51 = v28;
      v31 = _Block_copy(&aBlock);

      goto LABEL_10;
  }

  return 1;
}

uint64_t sub_1D783FFF0()
{
  sub_1D78411D4(0, &qword_1EE095240, MEMORY[0x1E69E6370]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D7840050(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43 = a4;
  v6 = MEMORY[0x1E69E6720];
  sub_1D77405E0(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v41 - v9;
  v11 = sub_1D78B3294();
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77405E0(0, &unk_1EE095698, MEMORY[0x1E69681B8], v6);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v41 - v16;
  v18 = sub_1D78B3124();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v41 - v25;
  sub_1D78B3094();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v27 = &unk_1EE095698;
    v28 = MEMORY[0x1E69681B8];
    v29 = v17;
    return sub_1D7840EF4(v29, v27, v28);
  }

  (*(v19 + 32))(v26, v17, v18);
  v30 = sub_1D7840494(v26, a2, a3);
  v32 = v31;
  sub_1D78B3114();
  sub_1D78B3104();
  MEMORY[0x1DA700360](v30, v32);
  v33 = sub_1D78B30D4();
  MEMORY[0x1DA700380](v33);
  sub_1D78B3074();
  sub_1D78B3084();
  sub_1D78B30A4();
  v34 = v44;
  if ((*(v44 + 48))(v10, 1, v11) == 1)
  {
    v35 = *(v19 + 8);
    v35(v23, v18);
    v35(v26, v18);
    v27 = &unk_1EE096460;
    v28 = MEMORY[0x1E6968FB0];
    v29 = v10;
    return sub_1D7840EF4(v29, v27, v28);
  }

  v37 = v42;
  (*(v34 + 32))(v42, v10, v11);
  v38 = v43[6];
  v39 = v43[7];
  __swift_project_boxed_opaque_existential_1(v43 + 3, v38);
  (*(v39 + 64))(v37, v38, v39);
  (*(v34 + 8))(v37, v11);
  v40 = *(v19 + 8);
  v40(v23, v18);
  return (v40)(v26, v18);
}

uint64_t sub_1D7840494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D78B30B4();
  if (v5)
  {
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6 && (v4 != 0x656E2E656C707061 || v5 != 0xEA00000000007377))
    {
      v7 = v4;
      v8 = v5;
      if ((sub_1D78B6724() & 1) == 0 && (v7 != 0x7070612E7377656ELL || v8 != 0xEE006D6F632E656CLL) && (sub_1D78B6724() & 1) == 0)
      {
        return v7;
      }
    }
  }

  return a2;
}

uint64_t sub_1D7840590(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = MEMORY[0x1E69681B8];
  sub_1D77405E0(0, &unk_1EE095698, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v16 - v11;
  sub_1D78B3094();
  v13 = sub_1D78B3124();
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  result = sub_1D7840EF4(v12, &unk_1EE095698, v8);
  if (v14 != 1)
  {
    return sub_1D7840050(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1D78406CC(uint64_t a1, void *a2)
{
  v37 = a2;
  v34 = a1;
  v38 = type metadata accessor for PurchaseContext;
  v3 = MEMORY[0x1E69E6720];
  sub_1D77405E0(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34 - v6;
  v8 = sub_1D78B33C4();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77405E0(0, &unk_1EE096460, MEMORY[0x1E6968FB0], v3);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for PurchaseContext(0);
  v17 = *(v16 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 52);
  v23 = type metadata accessor for PostPurchaseDestination(0);
  (*(*(v23 - 8) + 56))(&v21[v22], 1, 1, v23);
  v24 = sub_1D78B3294();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v15, a1, v24);
  v26 = *(v25 + 56);
  v26(v15, 0, 1, v24);
  v27 = v16[16];
  v26(&v21[v27], 1, 1, v24);
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  *(v21 + 2) = 1;
  sub_1D78B33B4();
  v28 = sub_1D78B33A4();
  v30 = v29;
  (*(v35 + 8))(v11, v36);
  *(v21 + 3) = v28;
  *(v21 + 4) = v30;
  *(v21 + 5) = 0;
  *(v21 + 6) = 0xE000000000000000;
  *(v21 + 28) = 0;
  *(v21 + 8) = MEMORY[0x1E69E7CC0];
  v21[58] = 0;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = 0u;
  v21[120] = 2;
  v21[v16[14]] = 0;
  v21[v16[15]] = 0;
  sub_1D77B44C4(v15, &v21[v27]);
  v31 = v37[6];
  v32 = v37[7];
  __swift_project_boxed_opaque_existential_1(v37 + 3, v31);
  v39 = 13;
  sub_1D7770378(v21, v7);
  (*(v17 + 56))(v7, 0, 1, v16);
  (*(v32 + 72))(v34, &v39, v7, v31, v32);
  sub_1D7840EF4(v7, qword_1EE096030, v38);
  return sub_1D7791954(v21);
}

uint64_t FinanceURLHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t FinanceURLHandler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_1D7840C28()
{
  result = qword_1EC9CAD40;
  if (!qword_1EC9CAD40)
  {
    sub_1D773F004(255, &qword_1EE08FBD0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAD40);
  }

  return result;
}

uint64_t sub_1D7840C90()
{
  v1 = *(sub_1D78B3294() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D78406CC(v0 + v2, v3);
}

uint64_t sub_1D7840D1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D7840E44(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1D78B3294() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);

  return a1(v1 + v3, v7, v8, v9);
}

uint64_t sub_1D7840EF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D77405E0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7840F64(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for FinanceURLHandler.Contract();
  swift_initStackObject();

  v5 = *(sub_1D783E7E4() + 16);

  if (qword_1EC9C8498 != -1)
  {
    swift_once();
  }

  v6 = [v5 stringForKey_];

  v7 = [v6 valuePromise];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D7841584;
  *(v8 + 24) = v4;
  v16 = sub_1D784158C;
  v17 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1D78416E4;
  v15 = &block_descriptor_48_1;
  v9 = _Block_copy(&aBlock);

  [v7 addSuccessBlock_];
  _Block_release(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D7841584;
  *(v10 + 24) = v4;
  v16 = sub_1D78415D8;
  v17 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1D7841220;
  v15 = &block_descriptor_54_0;
  v11 = _Block_copy(&aBlock);

  [v7 addErrorBlock_];
  _Block_release(v11);
}

void sub_1D78411D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D78B4184();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7841228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  type metadata accessor for FinanceURLHandler.Contract();
  swift_initStackObject();

  v9 = *(sub_1D783E7E4() + 16);

  v10 = [objc_allocWithZone(MEMORY[0x1E698CB70]) initWithBag_];

  v11 = sub_1D78B3214();
  v12 = [v10 typeForURL_];

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1D7752FB0;
  *(v13 + 24) = v8;
  v21 = sub_1D78414F0;
  v22 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D78416E4;
  v20 = &block_descriptor_33_0;
  v14 = _Block_copy(&aBlock);

  [v12 addSuccessBlock_];
  _Block_release(v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v21 = sub_1D77E5850;
  v22 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D7841220;
  v20 = &block_descriptor_39_0;
  v16 = _Block_copy(&aBlock);

  [v12 addErrorBlock_];
  _Block_release(v16);
}

void sub_1D7841488(uint64_t a1)
{
  if (!qword_1EC9CAD48)
  {
    sub_1D773F004(255, &qword_1EE08FBD0, 0x1E696AD98);
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CAD48);
    }
  }
}

void sub_1D7841518(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double sub_1D784158C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1D78B5C74();
  v2(v3);

  return result;
}

void sub_1D7841628(void *a1, void *a2)
{
  v5 = *(sub_1D78B3294() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1D783F394(a1, a2, v6, v7, v8);
}

unint64_t sub_1D78416FC()
{
  result = qword_1EC9CAD58;
  if (!qword_1EC9CAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAD58);
  }

  return result;
}

id PaywallFactory.createPaywall(for:articleAccess:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  v8 = [objc_msgSend(*(v3 + 120) appConfiguration)];
  result = swift_unknownObjectRelease();
  if ((v8 & 1) != 0 || !a1)
  {
    goto LABEL_9;
  }

  v10 = [swift_unknownObjectRetain() sourceChannel];
  if (!v10)
  {
    result = swift_unknownObjectRelease();
LABEL_9:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = 2;
    return result;
  }

  v11 = v10;
  v12 = *(v3 + 88);
  v13 = *(v3 + 96);
  __swift_project_boxed_opaque_existential_1((v3 + 64), v12);
  LOBYTE(v67) = v7;
  v14 = *(v13 + 16);
  v15 = swift_unknownObjectRetain();
  v14(&v83, v15, &v67, 0, v12, v13);
  swift_unknownObjectRelease();
  v16 = v83;
  if (v83 == 96 || ((v17 = v83 >> 4, v17 > 4) || ((1 << v17) & 0x19) == 0) && v7 != 2 && (v7 & 1) != 0)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = 2;
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  v64 = v83 >> 4;
  v18 = *(v3 + 248);
  v67 = *(v4 + 232);
  *&v68 = v18;
  v87[0] = v83;
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  PaywallPurchaseModelFactory.purchaseModel(for:tag:)(v87, v11, &v83);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v88[10] = *&v84[144];
  v88[11] = *&v84[160];
  v88[6] = *&v84[80];
  v88[7] = *&v84[96];
  v88[8] = *&v84[112];
  v88[9] = *&v84[128];
  v88[2] = *&v84[16];
  v88[3] = *&v84[32];
  v88[4] = *&v84[48];
  v88[5] = *&v84[64];
  v88[0] = v83;
  v88[1] = *v84;
  v100 = *&v84[144];
  v101 = *&v84[160];
  v96 = *&v84[80];
  v97 = *&v84[96];
  v98 = *&v84[112];
  v99 = *&v84[128];
  v92 = *&v84[16];
  v93 = *&v84[32];
  v94 = *&v84[48];
  v95 = *&v84[64];
  v89 = v84[176];
  v102 = v84[176];
  v90 = v83;
  v91 = *v84;
  if (sub_1D784225C(&v90) == 1)
  {
    swift_unknownObjectRelease();
LABEL_14:
    result = swift_unknownObjectRelease();
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = 2;
    return result;
  }

  v63 = v11;
  LOBYTE(v83) = v16;
  v19 = Paywall.PaywallType.fcPaywallType.getter();
  v57 = a1;
  if ((v19 - 3) >= 2)
  {
    if ((v19 - 1) > 1)
    {
      sub_1D7845344(v88, qword_1EE094A20, &type metadata for PurchaseModel);
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    v20 = qword_1D78C6E28[v64];
    LOBYTE(v65) = v16;
    v21 = Paywall.PaywallType.fcPaywallType.getter();
    if (v64 <= 3 || (v64 - 6) >= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 0;
    }

    v47 = *(v4 + 112);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7845100(v88, &v83);
    result = [v47 configuration];
    if (!result)
    {
      goto LABEL_87;
    }

    v48 = result;
    if ([result respondsToSelector_])
    {
      v49 = [v48 paidBundleConfig];
      swift_unknownObjectRelease();
      v50 = [v49 offeredBundlePurchaseIDsMap];

      if (v50)
      {
        v51 = sub_1D78B5BC4();

        v52 = v51;
LABEL_85:
        *&v87[151] = v99;
        *&v87[167] = v100;
        *&v87[183] = v101;
        v87[199] = v102;
        *&v87[87] = v95;
        *&v87[103] = v96;
        *&v87[119] = v97;
        *&v87[135] = v98;
        *&v87[23] = v91;
        *&v87[39] = v92;
        *&v87[55] = v93;
        *&v87[71] = v94;
        *&v87[7] = v90;
        *&v83 = v57;
        *(&v83 + 1) = v63;
        v84[0] = 0;
        *&v84[145] = *&v87[144];
        *&v84[161] = *&v87[160];
        *&v84[177] = *&v87[176];
        *&v84[193] = *&v87[192];
        *&v84[81] = *&v87[80];
        *&v84[97] = *&v87[96];
        *&v84[113] = *&v87[112];
        *&v84[129] = *&v87[128];
        *&v84[17] = *&v87[16];
        *&v84[33] = *&v87[32];
        *&v84[49] = *&v87[48];
        *&v84[65] = *&v87[64];
        *&v84[1] = *v87;
        *&v85 = v20;
        *(&v85 + 1) = v21;
        LOBYTE(v86) = v22 & 1;
        *(&v86 + 1) = 0;
        *(&v86 + 1) = v52;
        v80 = *&v84[192];
        v81 = v85;
        v82 = v86;
        v76 = *&v84[128];
        v77 = *&v84[144];
        v78 = *&v84[160];
        v79 = *&v84[176];
        v72 = *&v84[64];
        v73 = *&v84[80];
        v74 = *&v84[96];
        v75 = *&v84[112];
        v67 = v83;
        v68 = *v84;
        v69 = *&v84[16];
        v70 = *&v84[32];
        v71 = *&v84[48];
        v53 = Paywall.PaywallType.fcPaywallType.getter();
        sub_1D7842270(&v67, v53, a3);
        sub_1D7845344(v88, qword_1EE094A20, &type metadata for PurchaseModel);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        result = sub_1D7772B44(&v83);
        *(a3 + 40) = 0;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v52 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
    goto LABEL_85;
  }

  *&v84[144] = v100;
  *&v84[160] = v101;
  v84[176] = v102;
  *&v84[80] = v96;
  *&v84[96] = v97;
  *&v84[112] = v98;
  *&v84[128] = v99;
  *&v84[16] = v92;
  *&v84[32] = v93;
  *&v84[48] = v94;
  *&v84[64] = v95;
  v83 = v90;
  *v84 = v91;
  swift_unknownObjectRetain();
  v23 = sub_1D7844BBC(&v83, v11, v4);
  swift_unknownObjectRelease();
  v24 = v23;
  v25 = v23[2];
  if (!v25)
  {
    swift_unknownObjectRelease();

    v31 = MEMORY[0x1E69E7CC0];
LABEL_77:
    sub_1D7845344(v88, qword_1EE094A20, &type metadata for PurchaseModel);
    result = swift_unknownObjectRelease();
    *a3 = v31;
    *(a3 + 40) = 1;
    return result;
  }

  v26 = 0;
  v61 = *(v4 + 112);
  v27 = 12;
  if (v16 == 112)
  {
    v27 = 6;
  }

  v54 = v27;
  v28 = 1;
  if (v16)
  {
    v28 = 2;
  }

  v56 = v28;
  v29 = 3;
  if (v16)
  {
    v29 = 4;
  }

  v55 = v29;
  v30 = v64;
  v58 = v25 - 1;
  v59 = qword_1D78C6E28[v64];
  v31 = MEMORY[0x1E69E7CC0];
  v60 = v24;
  do
  {
    if (v30 <= 3)
    {
      if (v30 > 1)
      {
        if (v30 != 2)
        {
LABEL_38:
          v32 = v16;
          v33 = v56;
          goto LABEL_46;
        }
      }

      else if (!v30)
      {
        goto LABEL_38;
      }

      v32 = v16;
      v33 = v55;
    }

    else if (v30 <= 5)
    {
      v32 = v16;
      if (v30 == 4)
      {
        v33 = 17;
      }

      else
      {
        v33 = 18;
      }
    }

    else if (v30 == 8)
    {
      v32 = 0;
      v33 = 19;
    }

    else
    {
      v32 = 0;
      if (v30 == 7)
      {
        v33 = v54;
      }

      else
      {
        v33 = 5;
      }
    }

LABEL_46:
    v62 = v33;
    v34 = *(v24 + v26 + 32);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7845100(v88, &v83);
    result = [v61 configuration];
    if (!result)
    {
      goto LABEL_86;
    }

    v35 = result;
    if ([result respondsToSelector_])
    {
      v36 = [v35 paidBundleConfig];
      swift_unknownObjectRelease();
      v37 = [v36 offeredBundlePurchaseIDsMap];

      a1 = v57;
      if (v37)
      {
        v38 = sub_1D78B5BC4();

        v39 = v38;
        a1 = v57;
        goto LABEL_52;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v39 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
LABEL_52:
    *&v87[39] = v92;
    *&v87[55] = v93;
    *&v87[103] = v96;
    *&v87[119] = v97;
    *&v87[71] = v94;
    *&v87[87] = v95;
    v87[199] = v102;
    *&v87[167] = v100;
    *&v87[183] = v101;
    *&v87[135] = v98;
    *&v87[151] = v99;
    *&v87[7] = v90;
    *&v87[23] = v91;
    v84[0] = 0;
    *&v84[1] = *v87;
    *&v84[65] = *&v87[64];
    *&v84[49] = *&v87[48];
    *&v84[33] = *&v87[32];
    *&v84[17] = *&v87[16];
    *&v84[129] = *&v87[128];
    *&v84[113] = *&v87[112];
    *&v84[97] = *&v87[96];
    *&v84[81] = *&v87[80];
    *&v84[177] = *&v87[176];
    *&v84[161] = *&v87[160];
    *&v84[145] = *&v87[144];
    *&v84[193] = *&v87[192];
    *&v85 = v59;
    *(&v85 + 1) = v62;
    LOWORD(v86) = v32 & 1;
    BYTE2(v86) = v34;
    *(&v86 + 1) = v39;
    v80 = *&v84[192];
    v81 = v85;
    v82 = v86;
    v76 = *&v84[128];
    v77 = *&v84[144];
    v78 = *&v84[160];
    v79 = *&v84[176];
    v72 = *&v84[64];
    v73 = *&v84[80];
    *&v83 = a1;
    *(&v83 + 1) = v63;
    v74 = *&v84[96];
    v75 = *&v84[112];
    v67 = v83;
    v68 = *v84;
    v69 = *&v84[16];
    v70 = *&v84[32];
    v71 = *&v84[48];
    if (v64 <= 3)
    {
      if (v64 > 1)
      {
        v40 = v56;
        if (v64 != 2)
        {
          goto LABEL_66;
        }

LABEL_61:
        v40 = v55;
        goto LABEL_66;
      }

      v40 = v56;
      if (v64)
      {
        goto LABEL_61;
      }
    }

    else if (v64 <= 5)
    {
      if (v64 == 4)
      {
        v40 = 17;
      }

      else
      {
        v40 = 18;
      }
    }

    else if (v64 == 8)
    {
      v40 = 19;
    }

    else
    {
      v40 = v54;
      if (v64 != 7)
      {
        v40 = 5;
      }
    }

LABEL_66:
    sub_1D784290C(&v67, v40, &v65);
    sub_1D7741E34(&v65, &v67);
    BYTE8(v69) = v34;
    sub_1D7845188(&v67, &v65);
    v41 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D777B5E8(0, *(v31 + 2) + 1, 1, v31);
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    v31 = v41;
    if (v43 >= v42 >> 1)
    {
      v31 = sub_1D777B5E8((v42 > 1), v43 + 1, 1, v41);
    }

    sub_1D7772B44(&v83);
    result = sub_1D78451E4(&v67);
    *(v31 + 2) = v43 + 1;
    v44 = &v31[48 * v43];
    v45 = *&v66[9];
    v46 = *v66;
    *(v44 + 2) = v65;
    *(v44 + 3) = v46;
    *(v44 + 57) = v45;
    if (v58 == v26)
    {
      swift_unknownObjectRelease();

      goto LABEL_77;
    }

    ++v26;
    v24 = v60;
    v30 = v64;
  }

  while (v26 < v60[2]);
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_1D784225C(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7842270@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v78 = a3;
  v7 = type metadata accessor for AlacartePaywallViewModel(0);
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v75 - v13;
  v15 = type metadata accessor for BundlePaywallViewModel(0);
  v77 = *(v15 - 8);
  v16 = *(v77 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v75 - v21;
  v23 = a1[13];
  v24 = a1[11];
  v123 = a1[12];
  v124 = v23;
  v25 = a1[13];
  v26 = a1[15];
  v125 = a1[14];
  v126 = v26;
  v27 = a1[9];
  v28 = a1[7];
  v119 = a1[8];
  v120 = v27;
  v29 = a1[9];
  v30 = a1[11];
  v121 = a1[10];
  v122 = v30;
  v31 = a1[5];
  v32 = a1[3];
  v115 = a1[4];
  v116 = v31;
  v33 = a1[5];
  v34 = a1[7];
  v117 = a1[6];
  v118 = v34;
  v35 = a1[1];
  v111 = *a1;
  v112 = v35;
  v36 = a1[3];
  v38 = *a1;
  v37 = a1[1];
  v113 = a1[2];
  v114 = v36;
  v107 = v123;
  v108 = v25;
  v39 = a1[15];
  v109 = v125;
  v110 = v39;
  v103 = v119;
  v104 = v29;
  v105 = v121;
  v106 = v24;
  v99 = v115;
  v100 = v33;
  v101 = v117;
  v102 = v28;
  v95 = v38;
  v96 = v37;
  v97 = v113;
  v98 = v32;
  v40 = PaywallModel.purchaseType.getter();
  if ((v40 - 1) < 5)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 17, v4[20]);
    v107 = v123;
    v108 = v124;
    v109 = v125;
    v110 = v126;
    v103 = v119;
    v104 = v120;
    v105 = v121;
    v106 = v122;
    v99 = v115;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v41 = a2;
    v42 = v4[28];
    ObjectType = swift_getObjectType();
    v44 = (*(v42 + 48))(ObjectType, v42);
    sub_1D77D0C34(v41, &v95, v44 & 1, v22);
    v45 = v4[5];
    v76 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v45);
    sub_1D78453B4();
    v46 = swift_allocObject();
    swift_weakInit();
    sub_1D7845418(v22, v19, type metadata accessor for BundlePaywallViewModel);
    v47 = (*(v77 + 80) + 24) & ~*(v77 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    sub_1D784554C(v19, v48 + v47, type metadata accessor for BundlePaywallViewModel);
    v49 = (v48 + ((v16 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
    v50 = v124;
    v49[12] = v123;
    v49[13] = v50;
    v51 = v126;
    v49[14] = v125;
    v49[15] = v51;
    v52 = v120;
    v49[8] = v119;
    v49[9] = v52;
    v53 = v122;
    v49[10] = v121;
    v49[11] = v53;
    v54 = v116;
    v49[4] = v115;
    v49[5] = v54;
    v55 = v118;
    v49[6] = v117;
    v49[7] = v55;
    v56 = v112;
    *v49 = v111;
    v49[1] = v56;
    v57 = v114;
    v49[2] = v113;
    v49[3] = v57;

    sub_1D7772AE8(&v111, &v95);
    sub_1D78B3994();

    if (*(&v96 + 1))
    {
      sub_1D78454EC(v22, type metadata accessor for BundlePaywallViewModel);
      v58 = &v95;
      return sub_1D7741E34(v58, v78);
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v40)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 22, v4[25]);
    v91 = v123;
    v92 = v124;
    v93 = v125;
    v94 = v126;
    v87 = v119;
    v88 = v120;
    v89 = v121;
    v90 = v122;
    v83 = v115;
    v84 = v116;
    v85 = v117;
    v86 = v118;
    v79 = v111;
    v80 = v112;
    v81 = v113;
    v82 = v114;
    v60 = v4[28];
    v61 = swift_getObjectType();
    (*(v60 + 48))(v61, v60);
    sub_1D77919B0(a2, &v79, v14);
    v62 = v4[5];
    v77 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v62);
    sub_1D78453B4();
    v63 = swift_allocObject();
    swift_weakInit();
    sub_1D7845418(v14, v11, type metadata accessor for AlacartePaywallViewModel);
    v64 = (*(v76 + 80) + 24) & ~*(v76 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    sub_1D784554C(v11, v65 + v64, type metadata accessor for AlacartePaywallViewModel);
    v66 = (v65 + ((v8 + v64 + 7) & 0xFFFFFFFFFFFFFFF8));
    v67 = v124;
    v66[12] = v123;
    v66[13] = v67;
    v68 = v126;
    v66[14] = v125;
    v66[15] = v68;
    v69 = v120;
    v66[8] = v119;
    v66[9] = v69;
    v70 = v122;
    v66[10] = v121;
    v66[11] = v70;
    v71 = v116;
    v66[4] = v115;
    v66[5] = v71;
    v72 = v118;
    v66[6] = v117;
    v66[7] = v72;
    v73 = v112;
    *v66 = v111;
    v66[1] = v73;
    v74 = v114;
    v66[2] = v113;
    v66[3] = v74;
    sub_1D7772AE8(&v111, &v79);

    sub_1D78B3994();

    if (*(&v80 + 1))
    {
      sub_1D78454EC(v14, type metadata accessor for AlacartePaywallViewModel);
      v58 = &v79;
      return sub_1D7741E34(v58, v78);
    }

    goto LABEL_9;
  }

LABEL_10:
  *&v79 = v40;
  result = sub_1D78B6764();
  __break(1u);
  return result;
}

uint64_t sub_1D784290C@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v78 = a3;
  v7 = type metadata accessor for AlacartePaywallViewModel(0);
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v75 - v13;
  v15 = type metadata accessor for BundlePaywallViewModel(0);
  v77 = *(v15 - 8);
  v16 = *(v77 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v75 - v21;
  v23 = a1[13];
  v24 = a1[11];
  v123 = a1[12];
  v124 = v23;
  v25 = a1[13];
  v26 = a1[15];
  v125 = a1[14];
  v126 = v26;
  v27 = a1[9];
  v28 = a1[7];
  v119 = a1[8];
  v120 = v27;
  v29 = a1[9];
  v30 = a1[11];
  v121 = a1[10];
  v122 = v30;
  v31 = a1[5];
  v32 = a1[3];
  v115 = a1[4];
  v116 = v31;
  v33 = a1[5];
  v34 = a1[7];
  v117 = a1[6];
  v118 = v34;
  v35 = a1[1];
  v111 = *a1;
  v112 = v35;
  v36 = a1[3];
  v38 = *a1;
  v37 = a1[1];
  v113 = a1[2];
  v114 = v36;
  v107 = v123;
  v108 = v25;
  v39 = a1[15];
  v109 = v125;
  v110 = v39;
  v103 = v119;
  v104 = v29;
  v105 = v121;
  v106 = v24;
  v99 = v115;
  v100 = v33;
  v101 = v117;
  v102 = v28;
  v95 = v38;
  v96 = v37;
  v97 = v113;
  v98 = v32;
  v40 = PaywallModel.purchaseType.getter();
  if ((v40 - 1) < 5)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 17, v4[20]);
    v107 = v123;
    v108 = v124;
    v109 = v125;
    v110 = v126;
    v103 = v119;
    v104 = v120;
    v105 = v121;
    v106 = v122;
    v99 = v115;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v41 = a2;
    v42 = v4[28];
    ObjectType = swift_getObjectType();
    v44 = (*(v42 + 48))(ObjectType, v42);
    sub_1D77D0C34(v41, &v95, v44 & 1, v22);
    v45 = v4[5];
    v76 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v45);
    sub_1D78453B4();
    v46 = swift_allocObject();
    swift_weakInit();
    sub_1D7845418(v22, v19, type metadata accessor for BundlePaywallViewModel);
    v47 = (*(v77 + 80) + 24) & ~*(v77 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    sub_1D784554C(v19, v48 + v47, type metadata accessor for BundlePaywallViewModel);
    v49 = (v48 + ((v16 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
    v50 = v124;
    v49[12] = v123;
    v49[13] = v50;
    v51 = v126;
    v49[14] = v125;
    v49[15] = v51;
    v52 = v120;
    v49[8] = v119;
    v49[9] = v52;
    v53 = v122;
    v49[10] = v121;
    v49[11] = v53;
    v54 = v116;
    v49[4] = v115;
    v49[5] = v54;
    v55 = v118;
    v49[6] = v117;
    v49[7] = v55;
    v56 = v112;
    *v49 = v111;
    v49[1] = v56;
    v57 = v114;
    v49[2] = v113;
    v49[3] = v57;

    sub_1D7772AE8(&v111, &v95);
    sub_1D78B3994();

    if (*(&v96 + 1))
    {
      sub_1D78454EC(v22, type metadata accessor for BundlePaywallViewModel);
      v58 = &v95;
      return sub_1D7741E34(v58, v78);
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v40)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 22, v4[25]);
    v91 = v123;
    v92 = v124;
    v93 = v125;
    v94 = v126;
    v87 = v119;
    v88 = v120;
    v89 = v121;
    v90 = v122;
    v83 = v115;
    v84 = v116;
    v85 = v117;
    v86 = v118;
    v79 = v111;
    v80 = v112;
    v81 = v113;
    v82 = v114;
    v60 = v4[28];
    v61 = swift_getObjectType();
    (*(v60 + 48))(v61, v60);
    sub_1D77919B0(a2, &v79, v14);
    v62 = v4[5];
    v77 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v62);
    sub_1D78453B4();
    v63 = swift_allocObject();
    swift_weakInit();
    sub_1D7845418(v14, v11, type metadata accessor for AlacartePaywallViewModel);
    v64 = (*(v76 + 80) + 24) & ~*(v76 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    sub_1D784554C(v11, v65 + v64, type metadata accessor for AlacartePaywallViewModel);
    v66 = (v65 + ((v8 + v64 + 7) & 0xFFFFFFFFFFFFFFF8));
    v67 = v124;
    v66[12] = v123;
    v66[13] = v67;
    v68 = v126;
    v66[14] = v125;
    v66[15] = v68;
    v69 = v120;
    v66[8] = v119;
    v66[9] = v69;
    v70 = v122;
    v66[10] = v121;
    v66[11] = v70;
    v71 = v116;
    v66[4] = v115;
    v66[5] = v71;
    v72 = v118;
    v66[6] = v117;
    v66[7] = v72;
    v73 = v112;
    *v66 = v111;
    v66[1] = v73;
    v74 = v114;
    v66[2] = v113;
    v66[3] = v74;
    sub_1D7772AE8(&v111, &v79);

    sub_1D78B3994();

    if (*(&v80 + 1))
    {
      sub_1D78454EC(v14, type metadata accessor for AlacartePaywallViewModel);
      v58 = &v79;
      return sub_1D7741E34(v58, v78);
    }

    goto LABEL_9;
  }

LABEL_10:
  *&v79 = v40;
  result = sub_1D78B6764();
  __break(1u);
  return result;
}

uint64_t sub_1D7842FA8(void *a1)
{
  result = [*(v1 + 112) configuration];
  if (result)
  {
    v4 = result;
    if (([result respondsToSelector_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v5 = [v4 paidBundleConfig];
    swift_unknownObjectRelease();
    if (![v5 areMagazinesEnabled])
    {
      goto LABEL_35;
    }

    if (qword_1EE095550 != -1)
    {
      swift_once();
    }

    sub_1D78452F0();
    sub_1D78B3574();
    if (v52)
    {
      goto LABEL_35;
    }

    v6 = [*(v1 + 104) cachedSubscription];
    if (objc_getAssociatedObject(v6, v6 + 1))
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v39 = 0u;
    }

    v52 = v39;
    v53 = v40;
    v7 = MEMORY[0x1E69E7CA0];
    if (*(&v40 + 1))
    {
      sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v8 = v26[0];
        v9 = [v26[0] integerValue];
        if (v9 == -1)
        {

          goto LABEL_35;
        }

        v10 = v9;
LABEL_17:
        if (objc_getAssociatedObject(v6, ~v10))
        {
          sub_1D78B6304();
          swift_unknownObjectRelease();
        }

        else
        {
          v40 = 0u;
          v39 = 0u;
        }

        v52 = v39;
        v53 = v40;
        if (*(&v40 + 1))
        {
          sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v11 = v26[0];
            v12 = [v11 integerValue];

            if ((v12 ^ v10))
            {
              goto LABEL_35;
            }

LABEL_26:
            v13 = *(v1 + 56);
            v14 = [a1 sourceChannel];
            if ([swift_unknownObjectRetain() tagType] == 3)
            {
              v15 = [v14 asSection];
              if (!v15 || (v16 = [v15 parentID], swift_unknownObjectRelease(), !v16))
              {
                swift_unknownObjectRelease_n();
                goto LABEL_32;
              }
            }

            else
            {
              v16 = [v14 identifier];
            }

            v17 = sub_1D78B5C74();
            v19 = v18;

            v20 = [v13 purchasedTagIDs];
            v21 = sub_1D78B5F64();

            LOBYTE(v20) = sub_1D7832E64(v17, v19, v21);

            swift_unknownObjectRelease_n();
            if ((v20 & 1) == 0)
            {
LABEL_32:
              v22 = *(v1 + 248);
              v24 = *(v1 + 232);
              v25 = v22;
              v23 = 0;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              PaywallPurchaseModelFactory.purchaseModel(for:tag:)(&v23, [a1 sourceChannel], v26);

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v49 = v36;
              v50 = v37;
              v45 = v32;
              v46 = v33;
              v47 = v34;
              v48 = v35;
              v41 = v28;
              v42 = v29;
              v43 = v30;
              v44 = v31;
              v39 = *v26;
              v40 = v27;
              v62 = v36;
              v63 = v37;
              v58 = v32;
              v59 = v33;
              v60 = v34;
              v61 = v35;
              v54 = v28;
              v55 = v29;
              v56 = v30;
              v57 = v31;
              v51 = v38;
              v64 = v38;
              v52 = *v26;
              v53 = v27;
              if (sub_1D784225C(&v52) != 1)
              {
                sub_1D7845344(&v39, qword_1EE094A20, &type metadata for PurchaseModel);
                return 1;
              }

              return 0;
            }

LABEL_35:

            return 0;
          }
        }

        else
        {
          sub_1D7845344(&v52, &qword_1EE08F9C0, v7 + 8);
        }

        if (v10)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_1D7845344(&v52, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
    }

    v8 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7843524@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_1D7842FA8(a1);
  if ((result & 1) == 0 || (v7 = *(v2 + 248), v17 = *(v3 + 232), *v18 = v7, LOBYTE(v15[0]) = 0, swift_unknownObjectRetain(), swift_unknownObjectRetain(), PaywallPurchaseModelFactory.purchaseModel(for:tag:)(v15, [a1 sourceChannel], v22), swift_unknownObjectRelease(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v34 = v22[10], v35 = v22[11], v36 = v23, v30 = v22[6], v31 = v22[7], v33 = v22[9], v32 = v22[8], v26 = v22[2], v27 = v22[3], v29 = v22[5], v28 = v22[4], v24 = v22[0], v25 = v22[1], result = sub_1D784225C(&v24), result == 1))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 2;
    return result;
  }

  v8 = *(v3 + 112);
  v9 = a1;
  sub_1D7845100(v22, &v17);
  result = [v8 configuration];
  if (result)
  {
    v10 = result;
    if ([result respondsToSelector_])
    {
      v11 = [v10 paidBundleConfig];
      swift_unknownObjectRelease();
      v12 = [v11 offeredBundlePurchaseIDsMap];

      if (v12)
      {
        v13 = sub_1D78B5BC4();

        v14 = v13;
LABEL_10:
        *&v21[151] = v33;
        *&v21[167] = v34;
        *&v21[183] = v35;
        *&v21[87] = v29;
        *&v21[103] = v30;
        *&v21[119] = v31;
        *&v21[135] = v32;
        *&v21[23] = v25;
        *&v21[39] = v26;
        *&v21[55] = v27;
        *&v21[71] = v28;
        *&v21[7] = v24;
        *&v18[145] = *&v21[144];
        *&v18[161] = *&v21[160];
        *&v18[177] = *&v21[176];
        *&v18[81] = *&v21[80];
        *&v18[97] = *&v21[96];
        *&v18[113] = *&v21[112];
        *&v18[129] = *&v21[128];
        *&v18[17] = *&v21[16];
        *&v18[33] = *&v21[32];
        *&v18[49] = *&v21[48];
        v21[199] = v36;
        v17 = v9;
        v18[0] = 1;
        *&v18[193] = *&v21[192];
        *&v18[65] = *&v21[64];
        *&v18[1] = *v21;
        v19 = xmmword_1D78C6D30;
        LOWORD(v20) = 0;
        BYTE2(v20) = 0;
        *(&v20 + 1) = v14;
        v15[12] = *&v18[176];
        v15[13] = *&v18[192];
        v15[14] = xmmword_1D78C6D30;
        v15[15] = v20;
        v15[8] = *&v18[112];
        v15[9] = *&v18[128];
        v15[10] = *&v18[144];
        v15[11] = *&v18[160];
        v15[4] = *&v18[48];
        v15[5] = *&v18[64];
        v15[6] = *&v18[80];
        v15[7] = *&v18[96];
        v15[0] = v9;
        v15[1] = *v18;
        v15[2] = *&v18[16];
        v15[3] = *&v18[32];
        sub_1D7842270(v15, 0xBuLL, v16);
        sub_1D7845344(v22, qword_1EE094A20, &type metadata for PurchaseModel);
        sub_1D7772B44(&v17);
        result = sub_1D7741E34(v16, a2);
        *(a2 + 40) = 0;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v14 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id PaywallFactory.createPaywall(for:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [objc_msgSend(*(v2 + 120) appConfiguration)];
  result = swift_unknownObjectRelease();
  if ((v6 & 1) != 0 || (v8 = *(v2 + 88), v9 = *(v2 + 96), __swift_project_boxed_opaque_existential_1((v2 + 64), v8), (*(v9 + 32))(&v22, a1, v8, v9), v10 = v22, v11 = *(v2 + 248), v22 = *(v3 + 232), *v23 = v11, LOBYTE(v21[0]) = v10, swift_unknownObjectRetain(), swift_unknownObjectRetain(), PaywallPurchaseModelFactory.purchaseModel(for:tag:)(v21, 0, v28), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v40 = v28[10], v41 = v28[11], v42 = v29, v37 = v28[7], v39 = v28[9], v38 = v28[8], v32 = v28[2], v33 = v28[3], v35 = v28[5], v36 = v28[6], v34 = v28[4], v30 = v28[0], v31 = v28[1], result = sub_1D784225C(&v30), result == 1))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 2;
    return result;
  }

  v12 = 2;
  v13 = 1 << (v10 >> 4);
  if ((v13 & 0x1A6) == 0)
  {
    if ((v13 & 0x19) == 0)
    {
      v12 = 2 * (v10 != 96);
      v26 = v10;
      v14 = Paywall.PaywallType.fcPaywallType.getter();
LABEL_12:
      LOBYTE(v10) = 0;
      goto LABEL_13;
    }

    v12 = 1;
  }

  v26 = v10;
  v14 = Paywall.PaywallType.fcPaywallType.getter();
  if (v10 >> 4 > 3 && (v10 >> 4) - 6 < 3)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = *(v3 + 112);
  swift_unknownObjectRetain();
  sub_1D7845100(v28, &v22);
  result = [v15 configuration];
  if (result)
  {
    v16 = result;
    if ([result respondsToSelector_])
    {
      v17 = [v16 paidBundleConfig];
      swift_unknownObjectRelease();
      v18 = [v17 offeredBundlePurchaseIDsMap];

      if (v18)
      {
        v19 = sub_1D78B5BC4();

        v20 = v19;
LABEL_19:
        *&v27[151] = v39;
        *&v27[167] = v40;
        *&v27[183] = v41;
        *&v27[87] = v35;
        *&v27[103] = v36;
        *&v27[119] = v37;
        *&v27[135] = v38;
        *&v27[23] = v31;
        *&v27[39] = v32;
        *&v27[55] = v33;
        *&v27[71] = v34;
        *&v27[7] = v30;
        *&v23[145] = *&v27[144];
        *&v23[161] = *&v27[160];
        *&v23[177] = *&v27[176];
        *&v23[81] = *&v27[80];
        *&v23[97] = *&v27[96];
        *&v23[113] = *&v27[112];
        *&v23[129] = *&v27[128];
        *&v23[17] = *&v27[16];
        *&v23[33] = *&v27[32];
        *&v23[49] = *&v27[48];
        v27[199] = v42;
        v22 = a1;
        v23[0] = 5;
        *&v23[193] = *&v27[192];
        *&v23[65] = *&v27[64];
        *&v23[1] = *v27;
        *&v24 = v12;
        *(&v24 + 1) = v14;
        LOBYTE(v25) = v10 & 1;
        *(&v25 + 1) = 0;
        *(&v25 + 1) = v20;
        v21[12] = *&v23[176];
        v21[13] = *&v23[192];
        v21[14] = v24;
        v21[15] = v25;
        v21[8] = *&v23[112];
        v21[9] = *&v23[128];
        v21[10] = *&v23[144];
        v21[11] = *&v23[160];
        v21[4] = *&v23[48];
        v21[5] = *&v23[64];
        v21[6] = *&v23[80];
        v21[7] = *&v23[96];
        v21[0] = a1;
        v21[1] = *v23;
        v21[2] = *&v23[16];
        v21[3] = *&v23[32];
        sub_1D7842270(v21, 0x10uLL, a2);
        sub_1D7845344(v28, qword_1EE094A20, &type metadata for PurchaseModel);
        result = sub_1D7772B44(&v22);
        *(a2 + 40) = 0;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v20 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

id PaywallFactory.createPaywall(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [objc_msgSend(*(v2 + 120) appConfiguration)];
  result = swift_unknownObjectRelease();
  if ((v6 & 1) != 0 || (v8 = *(v2 + 88), v9 = *(v2 + 96), __swift_project_boxed_opaque_existential_1((v2 + 64), v8), (*(v9 + 40))(&v24, a1, v8, v9), v10 = v24, v11 = *(v2 + 248), v24 = *(v3 + 232), *v25 = v11, LOBYTE(v23[0]) = v10, swift_unknownObjectRetain(), swift_unknownObjectRetain(), PaywallPurchaseModelFactory.purchaseModel(for:tag:)(v23, 0, &v32), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v55 = v42, v56 = v43, v57 = v44, v51 = v38, v52 = v39, v54 = v41, v53 = v40, v47 = v34, v48 = v35, v50 = v37, v49 = v36, v46 = v33, v45 = v32, result = sub_1D784225C(&v45), result == 1))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 2;
    return result;
  }

  v12 = a1;
  v22 = [v12 sourceChannel];
  v13 = 2;
  v14 = 1 << (v10 >> 4);
  if ((v14 & 0x1A6) == 0)
  {
    if ((v14 & 0x19) == 0)
    {
      v13 = 2 * (v10 != 96);
      v30 = v10;
      v15 = Paywall.PaywallType.fcPaywallType.getter();
LABEL_12:
      LOBYTE(v10) = 0;
      goto LABEL_13;
    }

    v13 = 1;
  }

  v30 = v10;
  v15 = Paywall.PaywallType.fcPaywallType.getter();
  if (v10 >> 4 > 3 && (v10 >> 4) - 6 < 3)
  {
    goto LABEL_12;
  }

LABEL_13:
  v16 = *(v3 + 112);
  v28[10] = v42;
  v28[11] = v43;
  v29 = v44;
  v28[6] = v38;
  v28[7] = v39;
  v28[8] = v40;
  v28[9] = v41;
  v28[2] = v34;
  v28[3] = v35;
  v28[4] = v36;
  v28[5] = v37;
  v28[0] = v32;
  v28[1] = v33;
  sub_1D77C20B0(v28, &v24);
  result = [v16 configuration];
  if (result)
  {
    v17 = result;
    if ([result respondsToSelector_])
    {
      v18 = [v17 paidBundleConfig];
      swift_unknownObjectRelease();
      v19 = [v18 offeredBundlePurchaseIDsMap];

      if (v19)
      {
        v20 = sub_1D78B5BC4();

        v21 = v20;
LABEL_19:
        *&v31[151] = v54;
        *&v31[167] = v55;
        *&v31[183] = v56;
        *&v31[87] = v50;
        *&v31[103] = v51;
        *&v31[119] = v52;
        *&v31[135] = v53;
        *&v31[23] = v46;
        *&v31[39] = v47;
        *&v31[55] = v48;
        *&v31[71] = v49;
        *&v31[7] = v45;
        *&v25[145] = *&v31[144];
        *&v25[161] = *&v31[160];
        *&v25[177] = *&v31[176];
        *&v25[81] = *&v31[80];
        *&v25[97] = *&v31[96];
        *&v25[113] = *&v31[112];
        *&v25[129] = *&v31[128];
        *&v25[17] = *&v31[16];
        *&v25[33] = *&v31[32];
        *&v25[49] = *&v31[48];
        v31[199] = v57;
        *&v24 = v12;
        *(&v24 + 1) = v22;
        v25[0] = 8;
        *&v25[193] = *&v31[192];
        *&v25[65] = *&v31[64];
        *&v25[1] = *v31;
        *&v26 = v13;
        *(&v26 + 1) = v15;
        LOBYTE(v27) = v10 & 1;
        *(&v27 + 1) = 0;
        *(&v27 + 1) = v21;
        v23[12] = *&v25[176];
        v23[13] = *&v25[192];
        v23[14] = v26;
        v23[15] = v27;
        v23[8] = *&v25[112];
        v23[9] = *&v25[128];
        v23[10] = *&v25[144];
        v23[11] = *&v25[160];
        v23[4] = *&v25[48];
        v23[5] = *&v25[64];
        v23[6] = *&v25[80];
        v23[7] = *&v25[96];
        v23[0] = v24;
        v23[1] = *v25;
        v23[2] = *&v25[16];
        v23[3] = *&v25[32];
        sub_1D7842270(v23, 0x11uLL, a2);
        sub_1D7845344(&v32, qword_1EE094A20, &type metadata for PurchaseModel);
        result = sub_1D7772B44(&v24);
        *(a2 + 40) = 0;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v21 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void PaywallFactory.createFeedPaywall(for:contentType:)(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2;
  sub_1D7844714(*a1, v6, &v52);
  v8 = v53[0];
  if (LOBYTE(v53[0]) == 255)
  {
    goto LABEL_18;
  }

  v33 = v52;
  if (v6)
  {
    if (v6 == 1)
    {
      v31 = v7;
      v9 = 128;
      goto LABEL_15;
    }

    if (v6 == 2)
    {
      if (v5 == 2)
      {
        v31 = v7;
        v9 = 112;
        goto LABEL_15;
      }

      if (v5 == 3)
      {
        v31 = v7;
        v9 = 113;
LABEL_15:
        sub_1D77C1F0C(v52, *(&v52 + 1), v53[0]);
        goto LABEL_16;
      }
    }

    sub_1D77C1F0C(v52, *(&v52 + 1), v53[0]);
LABEL_11:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = 2;
    sub_1D7845238(v33, *(&v33 + 1), v8);

    sub_1D7845238(v33, *(&v33 + 1), v8);
    return;
  }

  v31 = v7;
  v10 = *(v4 + 88);
  v11 = *(v4 + 96);
  __swift_project_boxed_opaque_existential_1((v4 + 64), v10);
  v12 = *(v11 + 8);
  sub_1D77C1F0C(v33, *(&v33 + 1), v8);
  v12(&v52, v5, v10, v11);
  v9 = v52;
  if (v52 == 96)
  {
    goto LABEL_11;
  }

LABEL_16:
  v13 = *(v4 + 248);
  v52 = *(v4 + 232);
  *&v53[0] = v13;
  v57[0] = v9;
  v34 = v33;
  LOBYTE(v35) = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = sub_1D77C1D1C();
  sub_1D7845238(v33, *(&v33 + 1), v8);
  PaywallPurchaseModelFactory.purchaseModel(for:tag:)(v57, v14, v58);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v70 = v58[10];
  v71 = v58[11];
  v72 = v59;
  v66 = v58[6];
  v67 = v58[7];
  v68 = v58[8];
  v69 = v58[9];
  v62 = v58[2];
  v63 = v58[3];
  v64 = v58[4];
  v65 = v58[5];
  v60 = v58[0];
  v61 = v58[1];
  if (sub_1D784225C(&v60) == 1)
  {
    sub_1D7845238(v33, *(&v33 + 1), v8);
LABEL_18:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = 2;
    return;
  }

  v15 = v9 >> 4;
  v16 = qword_1D78C6E28[v9 >> 4];
  v30 = v9;
  v56 = v9;
  v17 = Paywall.PaywallType.fcPaywallType.getter();
  if (v15 <= 3 || (v15 - 6) >= 3)
  {
    v29 = v30;
  }

  else
  {
    v29 = 0;
  }

  v18 = *(v4 + 112);
  sub_1D784524C(v33, *(&v33 + 1), v8);
  sub_1D7845100(v58, &v52);
  v19 = [v18 configuration];
  if (v19)
  {
    v20 = v19;
    if ([v19 respondsToSelector_])
    {
      v21 = [v20 paidBundleConfig];
      swift_unknownObjectRelease();
      v22 = [v21 offeredBundlePurchaseIDsMap];

      if (v22)
      {
        v23 = sub_1D78B5BC4();

        v24 = v23;
LABEL_29:
        *&v57[151] = v69;
        *&v57[167] = v70;
        *&v57[183] = v71;
        v57[199] = v72;
        *&v57[87] = v65;
        *&v57[103] = v66;
        *&v57[119] = v67;
        *&v57[135] = v68;
        *&v57[23] = v61;
        *&v57[39] = v62;
        *&v57[55] = v63;
        *&v57[71] = v64;
        *&v57[7] = v60;
        *(&v53[9] + 1) = *&v57[144];
        *(&v53[10] + 1) = *&v57[160];
        *(&v53[11] + 1) = *&v57[176];
        *(&v53[5] + 1) = *&v57[80];
        *(&v53[6] + 1) = *&v57[96];
        *(&v53[7] + 1) = *&v57[112];
        *(&v53[8] + 1) = *&v57[128];
        *(&v53[1] + 1) = *&v57[16];
        *(&v53[2] + 1) = *&v57[32];
        *(&v53[3] + 1) = *&v57[48];
        v52 = v33;
        LOBYTE(v53[0]) = v8;
        *(&v53[12] + 1) = *&v57[192];
        *(&v53[4] + 1) = *&v57[64];
        *(v53 + 1) = *v57;
        *&v54 = v16;
        *(&v54 + 1) = v17;
        LOBYTE(v55) = v29 & 1;
        *(&v55 + 1) = v31;
        *(&v55 + 1) = v24;
        v46 = v53[11];
        v47 = v53[12];
        v48 = v54;
        v49 = v55;
        v42 = v53[7];
        v43 = v53[8];
        v44 = v53[9];
        v45 = v53[10];
        v38 = v53[3];
        v39 = v53[4];
        v40 = v53[5];
        v41 = v53[6];
        v34 = v33;
        v35 = v53[0];
        v36 = v53[1];
        v37 = v53[2];
        v25 = Paywall.PaywallType.fcPaywallType.getter();
        sub_1D784290C(&v34, v25, &v50);
        v51[24] = 1;
        sub_1D7845480(0, &qword_1EE08FA70, &type metadata for Paywall.SoftPaywallModule, MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        v27 = v50;
        v28 = *v51;
        v26[1] = xmmword_1D78BCAB0;
        v26[2] = v27;
        v26[3] = v28;
        *(v26 + 57) = *&v51[9];
        sub_1D7845238(v33, *(&v33 + 1), v8);
        sub_1D7845344(v58, qword_1EE094A20, &type metadata for PurchaseModel);
        sub_1D7772B44(&v52);
        *a3 = v26;
        *(a3 + 40) = 1;
        return;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v24 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
    goto LABEL_29;
  }

  __break(1u);
}

void sub_1D7844714(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        if (a1 == 2)
        {
          sub_1D78B5C74();
          v10 = objc_allocWithZone(MEMORY[0x1E69B5628]);
          v11 = sub_1D78B5C44();

          v12 = sub_1D78B5C44();
          v13 = [v10 initWithTagType:0 identifier:v11 name:v12];

          if (v13)
          {
            *a3 = v13;
            *(a3 + 8) = 0;
            *(a3 + 16) = 4;
            return;
          }

          goto LABEL_17;
        }

        if (a1 == 3)
        {
          sub_1D78B5C74();
          v4 = objc_allocWithZone(MEMORY[0x1E69B5628]);
          v5 = sub_1D78B5C44();

          v6 = sub_1D78B5C44();
          v7 = [v4 initWithTagType:0 identifier:v5 name:v6];

          if (v7)
          {
            *a3 = v7;
            *(a3 + 8) = 0;
            *(a3 + 16) = 2;
            return;
          }

          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }
      }

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = -1;
      return;
    }

    *a3 = a1;
    *(a3 + 8) = 0;
    v8 = 7;
  }

  else
  {
    *a3 = a1;
    *(a3 + 8) = 0;
    v8 = 3;
  }

  *(a3 + 16) = v8;

  swift_unknownObjectRetain();
}

void *PaywallFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PaywallFactory.__deallocating_deinit()
{
  PaywallFactory.deinit();

  return swift_deallocClassInstance();
}

double sub_1D7844A44(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t (*a5)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a5(0);
    sub_1D78B38D4();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D78B38D4();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D78B37D4();

    sub_1D78B38C4();
  }

  return result;
}

id sub_1D7844BBC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 176);
  v46[10] = *(a1 + 160);
  v46[11] = v5;
  v47 = *(a1 + 192);
  v6 = *(a1 + 112);
  v46[6] = *(a1 + 96);
  v46[7] = v6;
  v7 = *(a1 + 144);
  v46[8] = *(a1 + 128);
  v46[9] = v7;
  v8 = *(a1 + 48);
  v46[2] = *(a1 + 32);
  v46[3] = v8;
  v9 = *(a1 + 80);
  v46[4] = *(a1 + 64);
  v46[5] = v9;
  v10 = *(a1 + 16);
  v46[0] = *a1;
  v46[1] = v10;
  if (sub_1D77C19C8(v46) != 1)
  {
    result = [*(a3 + 112) configuration];
    if (result)
    {
      v25 = result;
      if (([result respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();
        return &unk_1F5265600;
      }

      v26 = [v25 paidBundleConfig];
      swift_unknownObjectRelease();
      v27 = [v26 articleSoftPaywallPosition];

      v28 = v27 - 1;
      if ((v27 - 1) >= 4)
      {
        return &unk_1F52656C8;
      }

      v29 = &off_1E84E2038;
      return v29[v28];
    }

    goto LABEL_49;
  }

  nullsub_1();
  v11 = *(a3 + 112);
  result = [v11 configuration];
  if (!result)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v13 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v14 = [v13 channelPaywallConfigsByChannelID];
  swift_unknownObjectRelease();
  sub_1D773F004(0, &qword_1EE08E578, 0x1E69B5200);
  v15 = sub_1D78B5BC4();

  v16 = [a2 identifier];
  v17 = sub_1D78B5C74();
  v19 = v18;

  if (!*(v15 + 16))
  {

    goto LABEL_16;
  }

  v20 = sub_1D777BBB4(v17, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_16:

LABEL_17:
    result = [v11 configuration];
    if (result)
    {
      v30 = result;
      if (([result respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();
        return &unk_1F52653F8;
      }

      v31 = [v30 paidBundleConfig];
      swift_unknownObjectRelease();
      v32 = [v31 aLaCarteArticleSoftPaywallPosition];

      v28 = v32 - 1;
      if ((v32 - 1) >= 3)
      {
        return &unk_1F5265498;
      }

      v29 = &off_1E84E1FF0;
      return v29[v28];
    }

LABEL_50:
    __break(1u);
    return result;
  }

  v23 = *(*(v15 + 56) + 8 * v20);

  v24 = [*(a3 + 104) cachedSubscription];
  if (objc_getAssociatedObject(v24, v24 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  v33 = MEMORY[0x1E69E7CA0];
  if (!*(&v43 + 1))
  {
    sub_1D7845344(&v44, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_31;
  }

  sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v34 = 0;
    v36 = 0;
    goto LABEL_32;
  }

  v34 = v41;
  v35 = [v41 integerValue];
  if (v35 == -1)
  {

    goto LABEL_45;
  }

  v36 = v35;
LABEL_32:
  if (objc_getAssociatedObject(v24, ~v36))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (*(&v43 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v37 = v41;
      v38 = [v37 integerValue];

      if ((v38 ^ v36))
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }
  }

  else
  {
    sub_1D7845344(&v44, &qword_1EE08F9C0, v33 + 8);
  }

  if ((v36 & 1) == 0)
  {
LABEL_41:
    v39 = [v23 articleSoftPaywallPosition];

    v28 = v39 - 1;
    if ((v39 - 1) >= 3)
    {
      return &unk_1F52655D8;
    }

    v29 = &off_1E84E2020;
    return v29[v28];
  }

LABEL_45:
  v40 = [v23 articleSoftPaywallPositionForPaidBundleSubscribers];

  v28 = v40 - 1;
  if ((v40 - 1) < 3)
  {
    v29 = &off_1E84E2008;
    return v29[v28];
  }

  return &unk_1F5265538;
}

uint64_t sub_1D7845100(uint64_t a1, uint64_t a2)
{
  sub_1D7845480(0, qword_1EE094A20, &type metadata for PurchaseModel, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7845238(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1D77CA6AC(a1, a2, a3);
  }
}

id sub_1D784524C(id result, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D77C1F0C(result, a2, a3);
  }

  return result;
}

uint64_t dispatch thunk of PaywallFactoryType.createPaywall(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))(a1, a2);
}

{
  return (*(a3 + 32))(a1, a2);
}

{
  return (*(a3 + 40))(a1, a2);
}

unint64_t sub_1D78452F0()
{
  result = qword_1EC9CAD60;
  if (!qword_1EC9CAD60)
  {
    type metadata accessor for PaywallFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAD60);
  }

  return result;
}

uint64_t sub_1D7845344(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7845480(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D78453B4()
{
  result = qword_1EE095DC8[0];
  if (!qword_1EE095DC8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE095DC8);
  }

  return result;
}

uint64_t sub_1D7845418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7845480(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D78454EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D784554C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D78455D0(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  return sub_1D7844A44(a1, *(v3 + 16), v3 + v7, (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for AlacartePaywallViewModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v17 = *(*(v1 - 8) + 64);

  v4 = *(v1 + 28);
  v5 = sub_1D78B3294();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);

  v7 = v0 + v3 + *(v1 + 40);
  type metadata accessor for SubscribeButtonDestination(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    sub_1D7740094(0, v10);
    v9 = *(v11 + 80);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v9 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
  }

  v12 = v7 + v9;
  v13 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13) && swift_getEnumCaseMultiPayload() == 1)
  {
    v6(v12, v5);
  }

LABEL_8:
  v14 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v15 = v0 + v14;
  sub_1D77CA6AC(*(v0 + v14), *(v0 + v14 + 8), *(v0 + v14 + 16));
  sub_1D77CA77C(*(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64), *(v15 + 72), *(v15 + 80), *(v15 + 88), *(v15 + 96), *(v15 + 104), *(v15 + 112), *(v15 + 120), *(v15 + 128), *(v15 + 136), *(v15 + 144), *(v15 + 152), *(v15 + 160), *(v15 + 168), *(v15 + 176), *(v15 + 184), *(v15 + 192), *(v15 + 200), *(v15 + 208), *(v15 + 216));

  return MEMORY[0x1EEE6BDD0](v0, v14 + 256, v2 | 7);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = type metadata accessor for BundlePaywallViewModel(0);
  v2 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);

  v29 = (v2 + 24) & ~v2;
  v3 = v0 + v29;

  v4 = v1[9];
  v5 = sub_1D78B3294();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v29 + v4, v5);

  v8 = v0 + v29 + v1[11];
  type metadata accessor for SubscribeButtonDestination(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    sub_1D7740094(0, v11);
    v10 = *(v12 + 80);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v10 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
  }

  v13 = v8 + v10;
  v14 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14) && swift_getEnumCaseMultiPayload() == 1)
  {
    v7(v13, v5);
  }

LABEL_8:

  v15 = v1[13];
  v16 = *(v6 + 48);
  if (!v16(v3 + v15, 1, v5))
  {
    v7(v3 + v15, v5);
  }

  v17 = v1[14];
  v18 = type metadata accessor for OffersButtonDestination(0);
  if (!(*(*(v18 - 8) + 48))(v3 + v17, 1, v18))
  {
    v7(v3 + v17, v5);
  }

  v19 = v1[17];
  if (!v16(v3 + v19, 1, v5))
  {
    v7(v3 + v19, v5);
  }

  v20 = v1[18];
  if (!v16(v3 + v20, 1, v5))
  {
    v7(v3 + v20, v5);
  }

  v21 = v1[19];
  if (!v16(v3 + v21, 1, v5))
  {
    v7(v3 + v21, v5);
  }

  v22 = v1[20];
  if (!v16(v3 + v22, 1, v5))
  {
    v7(v3 + v22, v5);
  }

  v23 = v1[21];
  if (!v16(v3 + v23, 1, v5))
  {
    v7(v3 + v23, v5);
  }

  v24 = v1[22];
  if (!v16(v3 + v24, 1, v5))
  {
    v7(v3 + v24, v5);
  }

  v25 = (v28 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;

  v26 = v0 + v25;
  sub_1D77CA6AC(*(v0 + v25), *(v0 + v25 + 8), *(v0 + v25 + 16));
  sub_1D77CA77C(*(v26 + 24), *(v26 + 32), *(v26 + 40), *(v26 + 48), *(v26 + 56), *(v26 + 64), *(v26 + 72), *(v26 + 80), *(v26 + 88), *(v26 + 96), *(v26 + 104), *(v26 + 112), *(v26 + 120), *(v26 + 128), *(v26 + 136), *(v26 + 144), *(v26 + 152), *(v26 + 160), *(v26 + 168), *(v26 + 176), *(v26 + 184), *(v26 + 192), *(v26 + 200), *(v26 + 208), *(v26 + 216));

  return MEMORY[0x1EEE6BDD0](v0, v25 + 256, v2 | 7);
}

uint64_t PaywallEventHandler.__allocating_init(interactor:router:urlHandler:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_allocObject();
  v8 = sub_1D77591C4(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t PaywallEventHandler.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PaywallEventHandler.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D7845F64;
}

uint64_t PaywallEventHandler.requestStartViewSession(paywallModel:)(__int128 *a1)
{
  result = swift_beginAccess();
  if (v1[7])
  {
    sub_1D774584C((v1 + 4), v42);
    v4 = v43;
    v5 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v7 = v1[21];
    v6 = v1[22];
    v8 = a1[13];
    v38 = a1[12];
    v39 = v8;
    v9 = a1[15];
    v40 = a1[14];
    v41 = v9;
    v10 = a1[9];
    v34 = a1[8];
    v35 = v10;
    v11 = a1[11];
    v36 = a1[10];
    v37 = v11;
    v12 = a1[5];
    v30 = a1[4];
    v31 = v12;
    v13 = a1[7];
    v32 = a1[6];
    v33 = v13;
    v14 = a1[1];
    v26 = *a1;
    v27 = v14;
    v15 = a1[3];
    v28 = a1[2];
    v29 = v15;

    PaywallModel.conversionLocation.getter(&v25);
    v16 = a1[13];
    v24[12] = a1[12];
    v24[13] = v16;
    v17 = a1[15];
    v24[14] = a1[14];
    v24[15] = v17;
    v18 = a1[9];
    v24[8] = a1[8];
    v24[9] = v18;
    v19 = a1[11];
    v24[10] = a1[10];
    v24[11] = v19;
    v20 = a1[5];
    v24[4] = a1[4];
    v24[5] = v20;
    v21 = a1[7];
    v24[6] = a1[6];
    v24[7] = v21;
    v22 = a1[1];
    v24[0] = *a1;
    v24[1] = v22;
    v23 = a1[3];
    v24[2] = a1[2];
    v24[3] = v23;
    (*(v5 + 24))(v7, v6, &v25, v24, v4, v5);

    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return result;
}

Swift::Void __swiftcall PaywallEventHandler.requestEndViewSession()()
{
  v1 = v0;
  v2 = sub_1D78B33C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B33B4();
  v7 = sub_1D78B33A4();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v1[21] = v7;
  v1[22] = v9;

  swift_beginAccess();
  if (v1[7])
  {
    sub_1D774584C((v1 + 4), v12);
    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v11 + 32))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }
}

uint64_t PaywallEventHandler.requestEndViewSession(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D78B33C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B33B4();
  v11 = sub_1D78B33A4();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v3[21] = v11;
  v3[22] = v13;

  result = swift_beginAccess();
  if (v3[7])
  {
    sub_1D774584C((v3 + 4), v17);
    v15 = v18;
    v16 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v16 + 40))(a1, a2, v15, v16);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return result;
}

void PaywallEventHandler.requestSubscribeButtonPressed(with:paywallModel:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  sub_1D7759010(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  *&v192 = &v186 - v8;
  v188 = type metadata accessor for OsloSheetPurchaseDataModel(0);
  MEMORY[0x1EEE9AC00](v188, v9);
  *&v191 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SubscribeButtonDestination(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 + 29);
  swift_beginAccess();
  if (v3[7])
  {
    sub_1D774584C((v3 + 4), &v226);
    v16 = *(&v227 + 1);
    v17 = v228;
    v189 = __swift_project_boxed_opaque_existential_1(&v226, *(&v227 + 1));
    *&v190 = a1;
    sub_1D7847680(a1, v193);
    LOBYTE(v218[0]) = v193[0];
    *(v218 + 8) = *(v193 + 8);
    *(&v218[1] + 8) = *(&v193[1] + 8);
    v18 = a2[13];
    v213 = a2[12];
    v214 = v18;
    v19 = *(a2 + 28);
    v20 = a2[9];
    v209 = a2[8];
    v210 = v20;
    v21 = a2[11];
    v211 = a2[10];
    v212 = v21;
    v22 = a2[5];
    v205 = a2[4];
    v206 = v22;
    v23 = a2[7];
    v207 = a2[6];
    v208 = v23;
    v24 = a2[1];
    v201 = *a2;
    v202 = v24;
    v25 = a2[3];
    v203 = a2[2];
    v204 = v25;
    v215 = v19;
    v216 = v15;
    v217 = a2[15];
    (*(v17 + 80))(v218, &v201, v16, v17);

    a1 = v190;

    __swift_destroy_boxed_opaque_existential_1(&v226);
  }

  sub_1D7849148(a1, v14, type metadata accessor for SubscribeButtonDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v14[1];
      *&v191 = *v14;
      v29 = v14[2];
      v30 = v14[3];
      v31 = v14[5];
      v189 = v14[4];
      *&v190 = v29;
      v187 = v28;
      v188 = v31;
      sub_1D7740094(0, v27);
      v33 = v192;
      sub_1D774BED0(v14 + *(v32 + 80), v192);
      v35 = v3[14];
      v34 = v3[15];
      v186 = __swift_project_boxed_opaque_existential_1(v3 + 11, v35);
      v36 = v3[21];
      v37 = v3[22];
      v38 = *(v34 + 16);

      v38(v191, v187, v190, v30, v189, v188, v36, v37, v15, v33, v35, v34);

      v39 = v33;
LABEL_6:
      sub_1D784945C(v39, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      return;
    }

    v66 = *(a2 + 168);
    v67 = *(a2 + 200);
    v236 = *(a2 + 184);
    v237 = v67;
    v238 = *(a2 + 216);
    v68 = *(a2 + 104);
    v69 = *(a2 + 136);
    v232 = *(a2 + 120);
    v233 = v69;
    v234 = *(a2 + 152);
    v235 = v66;
    v70 = *(a2 + 40);
    v71 = *(a2 + 72);
    v228 = *(a2 + 56);
    v229 = v71;
    v230 = *(a2 + 88);
    v231 = v68;
    v226 = *(a2 + 24);
    v227 = v70;
    v72 = sub_1D77C19C8(&v226);
    if (v72 > 1)
    {
      v73 = v15;
      v74 = v3;
      if (v72 == 2)
      {
        nullsub_1();
        v98 = v97;
        v99 = *(v97 + 16);
        v100 = *(a2 + 24);
        v101 = *(a2 + 88);
        v102 = *(a2 + 72);
        v203 = *(a2 + 56);
        v204 = v102;
        v103 = *(a2 + 40);
        v201 = v100;
        v202 = v103;
        v104 = *(a2 + 152);
        v105 = *(a2 + 136);
        v207 = *(a2 + 120);
        v208 = v105;
        v106 = *(a2 + 104);
        v205 = v101;
        v206 = v106;
        LOBYTE(v213) = *(a2 + 216);
        v107 = *(a2 + 200);
        v211 = *(a2 + 184);
        v212 = v107;
        v108 = *(a2 + 168);
        v209 = v104;
        v210 = v108;
        nullsub_1();
        sub_1D7849148(v109, v193, sub_1D77C33E0);

        v87 = *(v98 + 96);
        v88 = *(v98 + 72);
        v89 = *(v98 + 80);
        v90 = *(v98 + 64);
        v91 = *(v98 + 56);
        v92 = *(v98 + 40);
        v93 = *(v98 + 24);
        v110 = *(v98 + 152);
        v222 = *(v98 + 136);
        v223 = v110;
        v224 = *(v98 + 168);
        v225 = *(v98 + 184);
        v95 = *(v98 + 104);
        v96 = *(v98 + 120);
      }

      else
      {
        nullsub_1();
        v160 = v159;
        v87 = *(v159 + 9);
        v88 = *(v159 + 48);
        v161 = *(v159 + 56);
        v90 = *(v159 + 40);
        v91 = *(v159 + 4);
        v162 = *v159;
        v191 = v159[1];
        v192 = v161;
        v190 = v162;
        v163 = *(a2 + 88);
        v164 = *(a2 + 152);
        v165 = *(a2 + 136);
        v207 = *(a2 + 120);
        v208 = v165;
        v166 = *(a2 + 104);
        v205 = v163;
        v206 = v166;
        LOBYTE(v213) = *(a2 + 216);
        v167 = *(a2 + 200);
        v211 = *(a2 + 184);
        v212 = v167;
        v168 = *(a2 + 72);
        v203 = *(a2 + 56);
        v204 = v168;
        v169 = *(a2 + 40);
        v170 = *(a2 + 168);
        v209 = v164;
        v210 = v170;
        v201 = *(a2 + 24);
        v202 = v169;
        nullsub_1();
        sub_1D7849148(v171, v193, sub_1D77C3318);
        v93 = v190;
        v92 = v191;
        v89 = v192;
        v172 = v160[8];
        v222 = v160[7];
        v223 = v172;
        v224 = v160[9];
        v225 = *(v160 + 20);
        v95 = v160[5];
        v96 = v160[6];
      }
    }

    else
    {
      if (v72)
      {
        nullsub_1();
        v144 = v3[10];
        ObjectType = swift_getObjectType();
        v146 = a2[13];
        v213 = a2[12];
        v214 = v146;
        v147 = *(a2 + 28);
        v148 = a2[9];
        v209 = a2[8];
        v210 = v148;
        v149 = a2[11];
        v211 = a2[10];
        v212 = v149;
        v150 = a2[5];
        v205 = a2[4];
        v206 = v150;
        v151 = a2[7];
        v207 = a2[6];
        v208 = v151;
        v152 = a2[1];
        v201 = *a2;
        v202 = v152;
        v153 = a2[3];
        v203 = a2[2];
        v204 = v153;
        v215 = v147;
        v216 = v15;
        v217 = a2[15];
        v193[0] = 0uLL;
        v154 = v192;
        *v192 = 0;
        v155 = type metadata accessor for PostPurchaseDestination(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v155 - 8) + 56))(v154, 0, 1, v155);
        v157 = v3[21];
        v156 = v3[22];
        v158 = *(v144 + 48);

        v158(&v201, v193, v154, v157, v156, 0, ObjectType, v144);

        v39 = v154;
        goto LABEL_6;
      }

      v73 = v15;
      v74 = v3;
      nullsub_1();
      v76 = v75;
      v77 = *(a2 + 24);
      v78 = *(a2 + 88);
      v79 = *(a2 + 72);
      v203 = *(a2 + 56);
      v204 = v79;
      v80 = *(a2 + 40);
      v201 = v77;
      v202 = v80;
      v81 = *(a2 + 152);
      v82 = *(a2 + 136);
      v207 = *(a2 + 120);
      v208 = v82;
      v83 = *(a2 + 104);
      v205 = v78;
      v206 = v83;
      LOBYTE(v213) = *(a2 + 216);
      v84 = *(a2 + 200);
      v211 = *(a2 + 184);
      v212 = v84;
      v85 = *(a2 + 168);
      v209 = v81;
      v210 = v85;
      nullsub_1();
      sub_1D7849148(v86, v193, sub_1D77C34F8);

      v87 = *(v76 + 88);
      v88 = *(v76 + 64);
      v89 = *(v76 + 72);
      v90 = *(v76 + 56);
      v91 = *(v76 + 48);
      v93 = *(v76 + 16);
      v92 = *(v76 + 32);
      v94 = *(v76 + 144);
      v222 = *(v76 + 128);
      v223 = v94;
      v224 = *(v76 + 160);
      v225 = *(v76 + 176);
      v95 = *(v76 + 96);
      v96 = *(v76 + 112);
    }

    v220 = v95;
    v221 = v96;
    v193[0] = v93;
    v193[1] = v92;
    *&v193[2] = v91;
    BYTE8(v193[2]) = v90;
    LOBYTE(v194[0]) = v88;
    *(v194 + 8) = v89;
    *(&v194[1] + 1) = v87;
    v197 = v222;
    v198 = v223;
    v199 = v224;
    v200 = v225;
    v195 = v95;
    v196 = v96;
    v173 = v74[10];
    v174 = swift_getObjectType();
    v218[8] = v198;
    v218[9] = v199;
    v219 = v200;
    v218[4] = v194[1];
    v218[5] = v195;
    v218[6] = v196;
    v218[7] = v197;
    v218[0] = v193[0];
    v218[1] = v193[1];
    v218[2] = v193[2];
    v218[3] = v194[0];
    v176 = v74[21];
    v175 = v74[22];
    v177 = a2[13];
    v213 = a2[12];
    v214 = v177;
    v178 = *(a2 + 28);
    v179 = a2[9];
    v209 = a2[8];
    v210 = v179;
    v180 = a2[11];
    v211 = a2[10];
    v212 = v180;
    v181 = a2[5];
    v205 = a2[4];
    v206 = v181;
    v182 = a2[7];
    v207 = a2[6];
    v208 = v182;
    v183 = a2[1];
    v201 = *a2;
    v202 = v183;
    v184 = a2[3];
    v203 = a2[2];
    v204 = v184;
    v215 = v178;
    v216 = v73;
    v217 = a2[15];
    v185 = *(v173 + 56);

    v185(v218, v176, v175, &v201, v174, v173);

    sub_1D778D0B0(v193);
  }

  else
  {
    v40 = v191;
    sub_1D78490E0(v14, v191, type metadata accessor for OsloSheetPurchaseDataModel);
    v41 = a2[13];
    v213 = a2[12];
    v214 = v41;
    v42 = *(a2 + 28);
    v43 = a2[9];
    v209 = a2[8];
    v210 = v43;
    v44 = a2[11];
    v211 = a2[10];
    v212 = v44;
    v45 = a2[5];
    v205 = a2[4];
    v206 = v45;
    v46 = a2[7];
    v207 = a2[6];
    v208 = v46;
    v47 = a2[1];
    v201 = *a2;
    v202 = v47;
    v48 = a2[3];
    v203 = a2[2];
    v204 = v48;
    v215 = v42;
    v216 = v15;
    v217 = a2[15];
    if (PaywallModel.purchaseType.getter() || (v111 = a2[13], v213 = a2[12], v214 = v111, v112 = *(a2 + 28), v113 = a2[9], v209 = a2[8], v210 = v113, v114 = a2[11], v211 = a2[10], v212 = v114, v115 = a2[5], v205 = a2[4], v206 = v115, v116 = a2[7], v207 = a2[6], v208 = v116, v117 = a2[1], v201 = *a2, v202 = v117, v118 = a2[3], v203 = a2[2], v204 = v118, v215 = v112, v216 = v15, v217 = a2[15], PaywallModel.purchaseIDs.getter()) && (, v119 = a2[13], v213 = a2[12], v214 = v119, v120 = *(a2 + 28), v121 = a2[9], v209 = a2[8], v210 = v121, v122 = a2[11], v211 = a2[10], v212 = v122, v123 = a2[5], v205 = a2[4], v206 = v123, v124 = a2[7], v207 = a2[6], v208 = v124, v125 = a2[1], v201 = *a2, v202 = v125, v126 = a2[3], v203 = a2[2], v204 = v126, v215 = v120, v216 = v15, v217 = a2[15], (v127 = PaywallModel.purchaseIDs.getter()) != 0) && (v128 = *(v127 + 16), , v128))
    {
      v49 = v15;
      v50 = v3;
      v51 = v3[10];
      v52 = swift_getObjectType();
      v53 = a2[13];
      v213 = a2[12];
      v214 = v53;
      v54 = *(a2 + 28);
      v55 = a2[9];
      v209 = a2[8];
      v210 = v55;
      v56 = a2[11];
      v211 = a2[10];
      v212 = v56;
      v57 = a2[5];
      v205 = a2[4];
      v206 = v57;
      v58 = a2[7];
      v207 = a2[6];
      v208 = v58;
      v59 = a2[1];
      v201 = *a2;
      v202 = v59;
      v60 = a2[3];
      v203 = a2[2];
      v204 = v60;
      v215 = v54;
      v216 = v49;
      v217 = a2[15];
      v61 = *(v40 + 1);
      *&v226 = *v40;
      *(&v226 + 1) = v61;
      v62 = *(v188 + 20);
      v64 = v50[21];
      v63 = v50[22];
      v65 = *(v51 + 48);

      v65(&v201, &v226, &v40[v62], v64, v63, 1, v52, v51);

      sub_1D78491B0(v40, type metadata accessor for OsloSheetPurchaseDataModel);
    }

    else
    {
      v129 = a2[13];
      v213 = a2[12];
      v214 = v129;
      v130 = *(a2 + 28);
      v131 = a2[9];
      v209 = a2[8];
      v210 = v131;
      v132 = a2[11];
      v211 = a2[10];
      v212 = v132;
      v133 = a2[5];
      v205 = a2[4];
      v206 = v133;
      v134 = a2[7];
      v207 = a2[6];
      v208 = v134;
      v135 = a2[1];
      v201 = *a2;
      v202 = v135;
      v136 = a2[3];
      v203 = a2[2];
      v204 = v136;
      v215 = v130;
      v216 = v15;
      v217 = a2[15];
      v137 = [PaywallModel.tag.getter() identifier];
      swift_unknownObjectRelease();
      v138 = sub_1D78B5C74();
      v140 = v139;

      v141 = v3;
      v142 = v3[14];
      v143 = v3[15];
      __swift_project_boxed_opaque_existential_1(v141 + 11, v142);
      *&v201 = v138;
      *(&v201 + 1) = v140;
      *&v203 = 0;
      v202 = MEMORY[0x1E69E7CC0];
      (*(v143 + 48))(&v201, v142, v143);
      sub_1D78491B0(v40, type metadata accessor for OsloSheetPurchaseDataModel);
      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t PaywallEventHandler.requestLearnMoreLinkTapped(with:)(uint64_t a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t PaywallEventHandler.requestOffersButtonPressed(from:destination:paywallModel:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = sub_1D78B3294();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759010(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &ObjectType - v11;
  v13 = type metadata accessor for OffersButtonDestination(0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &ObjectType - v20;
  v22 = a3[13];
  v57 = a3[12];
  v58 = v22;
  v23 = a3[15];
  v59 = a3[14];
  v60 = v23;
  v24 = a3[9];
  v53 = a3[8];
  v54 = v24;
  v25 = a3[11];
  v55 = a3[10];
  v56 = v25;
  v26 = a3[5];
  v49 = a3[4];
  v50 = v26;
  v27 = a3[7];
  v51 = a3[6];
  v52 = v27;
  v28 = a3[1];
  v45 = *a3;
  v46 = v28;
  v29 = a3[3];
  v47 = a3[2];
  v48 = v29;
  sub_1D77590E8(a2, v12, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1D784945C(v12, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  }

  sub_1D78490E0(v12, v21, type metadata accessor for OffersButtonDestination);
  sub_1D7849148(v21, v18, type metadata accessor for OffersButtonDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v42 + 32))(v41, v18, v43);
  if (EnumCaseMultiPayload == 1)
  {
    v32 = v3[10];
    ObjectType = swift_getObjectType();
    v34 = v3[21];
    v33 = v3[22];
    v44[12] = v57;
    v44[13] = v58;
    v44[14] = v59;
    v44[15] = v60;
    v44[8] = v53;
    v44[9] = v54;
    v44[10] = v55;
    v44[11] = v56;
    v44[4] = v49;
    v44[5] = v50;
    v44[6] = v51;
    v44[7] = v52;
    v44[0] = v45;
    v44[1] = v46;
    v44[2] = v47;
    v44[3] = v48;
    v35 = *(v32 + 64);

    v36 = v41;
    v35(v41, v34, v33, v44, ObjectType, v32);

    (*(v42 + 8))(v36, v43);
  }

  else
  {
    v37 = v3[14];
    v38 = v3[15];
    __swift_project_boxed_opaque_existential_1(v3 + 11, v37);
    v39 = v41;
    (*(v38 + 24))(v41, v37, v38);
    (*(v42 + 8))(v39, v43);
  }

  return sub_1D78491B0(v21, type metadata accessor for OffersButtonDestination);
}

uint64_t PaywallEventHandler.requestWebAuthButtonPressed(for:)(_OWORD *a1)
{
  v2 = a1[13];
  v13[12] = a1[12];
  v13[13] = v2;
  v3 = a1[15];
  v13[14] = a1[14];
  v13[15] = v3;
  v4 = a1[9];
  v13[8] = a1[8];
  v13[9] = v4;
  v5 = a1[11];
  v13[10] = a1[10];
  v13[11] = v5;
  v6 = a1[5];
  v13[4] = a1[4];
  v13[5] = v6;
  v7 = a1[7];
  v13[6] = a1[6];
  v13[7] = v7;
  v8 = a1[1];
  v13[0] = *a1;
  v13[1] = v8;
  v9 = a1[3];
  v13[2] = a1[2];
  v13[3] = v9;
  v10 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  return (*(v10 + 32))(v13, ObjectType, v10);
}

uint64_t PaywallEventHandler.requestVerifyAccessToken(for:paywallModel:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = a3[13];
  v17[12] = a3[12];
  v17[13] = v6;
  v7 = a3[15];
  v17[14] = a3[14];
  v17[15] = v7;
  v8 = a3[9];
  v17[8] = a3[8];
  v17[9] = v8;
  v9 = a3[11];
  v17[10] = a3[10];
  v17[11] = v9;
  v10 = a3[5];
  v17[4] = a3[4];
  v17[5] = v10;
  v11 = a3[7];
  v17[6] = a3[6];
  v17[7] = v11;
  v12 = a3[1];
  v17[0] = *a3;
  v17[1] = v12;
  v13 = a3[3];
  v17[2] = a3[2];
  v17[3] = v13;
  v14 = *(v3 + 80);
  ObjectType = swift_getObjectType();
  return (*(v14 + 40))(a1, a2, v17, ObjectType, v14);
}

uint64_t PaywallEventHandler.subscribeButtonShown(with:paywallModel:)(uint64_t a1, _OWORD *a2)
{
  result = swift_beginAccess();
  if (*(v2 + 56))
  {
    sub_1D774584C(v2 + 32, v23);
    v6 = v24;
    v7 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_1D7847680(a1, &v20);
    v17[0] = v20;
    v18 = v21;
    v19 = v22;
    v8 = a2[13];
    v16[12] = a2[12];
    v16[13] = v8;
    v9 = a2[15];
    v16[14] = a2[14];
    v16[15] = v9;
    v10 = a2[9];
    v16[8] = a2[8];
    v16[9] = v10;
    v11 = a2[11];
    v16[10] = a2[10];
    v16[11] = v11;
    v12 = a2[5];
    v16[4] = a2[4];
    v16[5] = v12;
    v13 = a2[7];
    v16[6] = a2[6];
    v16[7] = v13;
    v14 = a2[1];
    v16[0] = *a2;
    v16[1] = v14;
    v15 = a2[3];
    v16[2] = a2[2];
    v16[3] = v15;
    (*(v7 + 64))(v17, v16, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t sub_1D7847680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for OsloSheetPurchaseDataModel(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SubscribeButtonDestination(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7849148(a1, v12, type metadata accessor for SubscribeButtonDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D7740094(0, v14);
      sub_1D784945C(&v12[*(v15 + 80)], qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      v16 = 0;
      v17 = 0;
      v18 = 3;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 2;
    }
  }

  else
  {
    sub_1D78490E0(v12, v8, type metadata accessor for OsloSheetPurchaseDataModel);
    v19 = *v8;
    v17 = v8[1];

    sub_1D78491B0(v8, type metadata accessor for OsloSheetPurchaseDataModel);
    if (v17)
    {
      v16 = v19;
    }

    else
    {
      v16 = 0;
    }

    v18 = 1;
  }

  v21 = *(v2 + 168);
  v20 = *(v2 + 176);
  *a2 = v18;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v21;
  *(a2 + 32) = v20;
}

uint64_t PaywallEventHandler.subscribeButtonHidden(with:paywallModel:)(uint64_t a1, _OWORD *a2)
{
  result = swift_beginAccess();
  if (*(v2 + 56))
  {
    sub_1D774584C(v2 + 32, v23);
    v6 = v24;
    v7 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_1D7847680(a1, v20);
    v17[0] = v20[0];
    v18 = v21;
    v19 = v22;
    v8 = a2[13];
    v16[12] = a2[12];
    v16[13] = v8;
    v9 = a2[15];
    v16[14] = a2[14];
    v16[15] = v9;
    v10 = a2[9];
    v16[8] = a2[8];
    v16[9] = v10;
    v11 = a2[11];
    v16[10] = a2[10];
    v16[11] = v11;
    v12 = a2[5];
    v16[4] = a2[4];
    v16[5] = v12;
    v13 = a2[7];
    v16[6] = a2[6];
    v16[7] = v13;
    v14 = a2[1];
    v16[0] = *a2;
    v16[1] = v14;
    v15 = a2[3];
    v16[2] = a2[2];
    v16[3] = v15;
    (*(v7 + 72))(v17, v16, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t PaywallEventHandler.requestTopChannelsClause(paywallModel:)(_OWORD *a1)
{
  v2 = a1[13];
  v15[12] = a1[12];
  v15[13] = v2;
  v3 = a1[15];
  v15[14] = a1[14];
  v15[15] = v3;
  v4 = a1[9];
  v15[8] = a1[8];
  v15[9] = v4;
  v5 = a1[11];
  v15[10] = a1[10];
  v15[11] = v5;
  v6 = a1[5];
  v15[4] = a1[4];
  v15[5] = v6;
  v7 = a1[7];
  v15[6] = a1[6];
  v15[7] = v7;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v9 = a1[3];
  v15[2] = a1[2];
  v15[3] = v9;
  v10 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  (*(v10 + 72))(v15, ObjectType, v10);

  v12 = sub_1D78B4014();
  sub_1D784940C(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v13 = sub_1D78B4084();

  return v13;
}

uint64_t sub_1D7847A94(uint64_t a1, uint64_t a2)
{
  sub_1D7759010(0, &qword_1EE090508, MEMORY[0x1E69B6A10]);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v24 - v11;
  swift_beginAccess();
  if (*(a2 + 56))
  {
    v27 = v2;
    sub_1D774584C(a2 + 32, v24);
    v13 = v25;
    v14 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1D77590E8(a1, v12, &qword_1EE090508, MEMORY[0x1E69B6A10]);
    v15 = sub_1D78B42B4();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v12, 1, v15) == 1)
    {
      sub_1D784945C(v12, &qword_1EE090508, MEMORY[0x1E69B6A10]);
      v17 = 0;
    }

    else
    {
      v17 = sub_1D78B4294();
      (*(v16 + 8))(v12, v15);
    }

    (*(v14 + 88))(v17, v13, v14);

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  sub_1D77590E8(a1, v9, &qword_1EE090508, MEMORY[0x1E69B6A10]);
  v18 = sub_1D78B42B4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    sub_1D784945C(v9, &qword_1EE090508, MEMORY[0x1E69B6A10]);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = sub_1D78B42A4();
    v21 = v22;
    (*(v19 + 8))(v9, v18);
  }

  v24[0] = v20;
  v24[1] = v21;
  sub_1D78494B8(0);
  swift_allocObject();
  return sub_1D78B4104();
}

void *PaywallEventHandler.deinit()
{
  sub_1D776ABA8(v0 + 16);
  sub_1D784945C(v0 + 32, &unk_1EE094000, sub_1D784907C);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  return v0;
}

uint64_t PaywallEventHandler.__deallocating_deinit()
{
  sub_1D776ABA8(v0 + 16);
  sub_1D784945C(v0 + 32, &unk_1EE094000, sub_1D784907C);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D7847ECC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D7849534;
}

void sub_1D7847F60(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D7848000(_OWORD *a1)
{
  v2 = a1[13];
  v13[12] = a1[12];
  v13[13] = v2;
  v3 = a1[15];
  v13[14] = a1[14];
  v13[15] = v3;
  v4 = a1[9];
  v13[8] = a1[8];
  v13[9] = v4;
  v5 = a1[11];
  v13[10] = a1[10];
  v13[11] = v5;
  v6 = a1[5];
  v13[4] = a1[4];
  v13[5] = v6;
  v7 = a1[7];
  v13[6] = a1[6];
  v13[7] = v7;
  v8 = a1[1];
  v13[0] = *a1;
  v13[1] = v8;
  v9 = a1[3];
  v13[2] = a1[2];
  v13[3] = v9;
  v10 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  return (*(v10 + 32))(v13, ObjectType, v10);
}

uint64_t sub_1D784809C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = a3[13];
  v17[12] = a3[12];
  v17[13] = v6;
  v7 = a3[15];
  v17[14] = a3[14];
  v17[15] = v7;
  v8 = a3[9];
  v17[8] = a3[8];
  v17[9] = v8;
  v9 = a3[11];
  v17[10] = a3[10];
  v17[11] = v9;
  v10 = a3[5];
  v17[4] = a3[4];
  v17[5] = v10;
  v11 = a3[7];
  v17[6] = a3[6];
  v17[7] = v11;
  v12 = a3[1];
  v17[0] = *a3;
  v17[1] = v12;
  v13 = a3[3];
  v17[2] = a3[2];
  v17[3] = v13;
  v14 = *(v3 + 80);
  ObjectType = swift_getObjectType();
  return (*(v14 + 40))(a1, a2, v17, ObjectType, v14);
}

uint64_t sub_1D7848150(uint64_t a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_1D78481AC(_OWORD *a1)
{
  v2 = a1[13];
  v15[12] = a1[12];
  v15[13] = v2;
  v3 = a1[15];
  v15[14] = a1[14];
  v15[15] = v3;
  v4 = a1[9];
  v15[8] = a1[8];
  v15[9] = v4;
  v5 = a1[11];
  v15[10] = a1[10];
  v15[11] = v5;
  v6 = a1[5];
  v15[4] = a1[4];
  v15[5] = v6;
  v7 = a1[7];
  v15[6] = a1[6];
  v15[7] = v7;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v9 = a1[3];
  v15[2] = a1[2];
  v15[3] = v9;
  v10 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  (*(v10 + 72))(v15, ObjectType, v10);

  v12 = sub_1D78B4014();
  sub_1D784940C(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v13 = sub_1D78B4084();

  return v13;
}

uint64_t PaywallEventHandler.presentPurchase(with:paywallType:purchaseType:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v12 = v8;
    (*(v10 + 24))(v4, &protocol witness table for PaywallEventHandler, a1, a2, a3, &v12, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallEventHandler.presentAMSSheet(with:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = v2[14];
  v7 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v6);
  v9 = v4;
  return (*(v7 + 40))(v5, &v9, a2, v6, v7);
}

uint64_t PaywallEventHandler.presentAMSSheet(with:context:paywallModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D774584C(v3 + 88, v86);
  v7 = v87;
  v8 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v9 = *(a3 + 168);
  v10 = *(a3 + 200);
  v89[10] = *(a3 + 184);
  v89[11] = v10;
  v90 = *(a3 + 216);
  v11 = *(a3 + 104);
  v12 = *(a3 + 136);
  v89[6] = *(a3 + 120);
  v89[7] = v12;
  v89[8] = *(a3 + 152);
  v89[9] = v9;
  v13 = *(a3 + 40);
  v14 = *(a3 + 72);
  v89[2] = *(a3 + 56);
  v89[3] = v14;
  v89[4] = *(a3 + 88);
  v89[5] = v11;
  v89[0] = *(a3 + 24);
  v89[1] = v13;
  v15 = sub_1D77C19C8(v89);
  if (v15 > 1)
  {
    v68 = a2;
    if (v15 == 2)
    {
      nullsub_1();
      v39 = v38;
      v40 = *(v38 + 16);
      v41 = *(a3 + 24);
      v42 = *(a3 + 88);
      v43 = *(a3 + 72);
      v76 = *(a3 + 56);
      *v77 = v43;
      v44 = *(a3 + 40);
      v74 = v41;
      v75 = v44;
      v45 = *(a3 + 152);
      v46 = *(a3 + 136);
      v79 = *(a3 + 120);
      v80 = v46;
      v47 = *(a3 + 104);
      *&v77[16] = v42;
      v78 = v47;
      v85 = *(a3 + 216);
      v48 = *(a3 + 200);
      v83 = *(a3 + 184);
      v84 = v48;
      v49 = *(a3 + 168);
      v81 = v45;
      v82 = v49;
      nullsub_1();
      sub_1D7849148(v50, v69, sub_1D77C33E0);

      v28 = *(v39 + 96);
      v29 = *(v39 + 72);
      v30 = *(v39 + 80);
      v31 = *(v39 + 64);
      v32 = *(v39 + 56);
      v33 = *(v39 + 40);
      v34 = *(v39 + 24);
      v51 = *(v39 + 152);
      v70 = *(v39 + 136);
      v71 = v51;
      v72 = *(v39 + 168);
      v73 = *(v39 + 184);
      v36 = *(v39 + 104);
      v37 = *(v39 + 120);
    }

    else
    {
      nullsub_1();
      v53 = v52;
      v28 = *(v52 + 9);
      v29 = *(v52 + 48);
      v31 = *(v52 + 40);
      v32 = *(v52 + 4);
      v66 = v52[1];
      v67 = *(v52 + 56);
      v65 = *v52;
      v54 = *(a3 + 88);
      v55 = *(a3 + 152);
      v56 = *(a3 + 136);
      v79 = *(a3 + 120);
      v80 = v56;
      v57 = *(a3 + 104);
      *&v77[16] = v54;
      v78 = v57;
      v85 = *(a3 + 216);
      v58 = *(a3 + 200);
      v83 = *(a3 + 184);
      v84 = v58;
      v59 = *(a3 + 72);
      v76 = *(a3 + 56);
      *v77 = v59;
      v60 = *(a3 + 40);
      v61 = *(a3 + 168);
      v81 = v55;
      v82 = v61;
      v74 = *(a3 + 24);
      v75 = v60;
      nullsub_1();
      sub_1D7849148(v62, v69, sub_1D77C3318);
      v34 = v65;
      v33 = v66;
      v30 = v67;
      v63 = v53[8];
      v70 = v53[7];
      v71 = v63;
      v72 = v53[9];
      v73 = *(v53 + 20);
      v36 = v53[5];
      v37 = v53[6];
    }

    goto LABEL_8;
  }

  if (!v15)
  {
    v68 = a2;
    nullsub_1();
    v17 = v16;
    v18 = *(a3 + 24);
    v19 = *(a3 + 88);
    v20 = *(a3 + 72);
    v76 = *(a3 + 56);
    *v77 = v20;
    v21 = *(a3 + 40);
    v74 = v18;
    v75 = v21;
    v22 = *(a3 + 152);
    v23 = *(a3 + 136);
    v79 = *(a3 + 120);
    v80 = v23;
    v24 = *(a3 + 104);
    *&v77[16] = v19;
    v78 = v24;
    v85 = *(a3 + 216);
    v25 = *(a3 + 200);
    v83 = *(a3 + 184);
    v84 = v25;
    v26 = *(a3 + 168);
    v81 = v22;
    v82 = v26;
    nullsub_1();
    sub_1D7849148(v27, v69, sub_1D77C34F8);

    v28 = *(v17 + 88);
    v29 = *(v17 + 64);
    v30 = *(v17 + 72);
    v31 = *(v17 + 56);
    v32 = *(v17 + 48);
    v34 = *(v17 + 16);
    v33 = *(v17 + 32);
    v35 = *(v17 + 144);
    v70 = *(v17 + 128);
    v71 = v35;
    v72 = *(v17 + 160);
    v73 = *(v17 + 176);
    v36 = *(v17 + 96);
    v37 = *(v17 + 112);
LABEL_8:
    v69[0] = v36;
    v69[1] = v37;
    v74 = v34;
    v75 = v33;
    *&v76 = v32;
    BYTE8(v76) = v31;
    v77[0] = v29;
    *&v77[8] = v30;
    *&v77[24] = v28;
    v80 = v70;
    v81 = v71;
    v82 = v72;
    *&v83 = v73;
    v78 = v36;
    v79 = v37;
    sub_1D778D0B0(&v74);
    a2 = v68;
    goto LABEL_9;
  }

  nullsub_1();
  v29 = 13;
LABEL_9:
  LOBYTE(v74) = v29;
  (*(v8 + 32))(a1, &v74, a2, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1(v86);
}

Swift::Void __swiftcall PaywallEventHandler.bundleSubscriptionDidSubscribe()()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(v0, &protocol witness table for PaywallEventHandler, ObjectType, v1);
    swift_unknownObjectRelease();
  }
}

uint64_t PaywallEventHandler.interactor(_:webAccessAuthenticationDidObtainAccessToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(v4, &protocol witness table for PaywallEventHandler, a3, a4, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallEventHandler.interactor(_:webAccessAuthenticationDidComplete:from:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v10 = v6;
    (*(v8 + 48))(v4, &protocol witness table for PaywallEventHandler, &v10, a4, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallEventHandler.interactor(_:webAccessAuthenticationDidFail:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(v3, &protocol witness table for PaywallEventHandler, a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallEventHandler.presentPreBuyEmailSignup(with:)(uint64_t a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t sub_1D7848AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v12 = v8;
    (*(v10 + 24))(v4, &protocol witness table for PaywallEventHandler, a1, a2, a3, &v12, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7848B78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = v2[14];
  v7 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v6);
  v9 = v4;
  return (*(v7 + 40))(v5, &v9, a2, v6, v7);
}

uint64_t sub_1D7848BFC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(v0, &protocol witness table for PaywallEventHandler, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7848C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(v4, &protocol witness table for PaywallEventHandler, a3, a4, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7848D2C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v10 = v6;
    (*(v8 + 48))(v4, &protocol witness table for PaywallEventHandler, &v10, a4, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7848DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(v3, &protocol witness table for PaywallEventHandler, a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7848E68(uint64_t a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t _s16NewsSubscription19PaywallEventHandlerC33interactorWillBeginLoadingHMEDatay13TeaFoundation7PromiseCyytGAA0C14InteractorType_pF_0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 8))(v0, &protocol witness table for PaywallEventHandler, ObjectType, v1);
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    sub_1D784940C(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

uint64_t _s16NewsSubscription19PaywallEventHandlerC33interactorDidFinishLoadingHMEDatay13TeaFoundation7PromiseCyytGAA0C14InteractorType_pF_0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 16))(v0, &protocol witness table for PaywallEventHandler, ObjectType, v1);
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    sub_1D784940C(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

unint64_t sub_1D784907C()
{
  result = qword_1EE094010;
  if (!qword_1EE094010)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE094010);
  }

  return result;
}

uint64_t sub_1D78490E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7849148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D78491B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D784940C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D784945C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7759010(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D78494B8(uint64_t a1)
{
  if (!qword_1EE095250)
  {
    sub_1D784940C(255, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE095250);
    }
  }
}

uint64_t SubscriptionNotSupportedAlert.title.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B5C94();

  return v9;
}

uint64_t SubscriptionNotSupportedAlert.message.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B5C94();

  return v9;
}

uint64_t SubscriptionNotSupportedAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SubscriptionNotSupportedAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

void sub_1D78499E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v100 = sub_1D78B4D24();
  v92 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v3);
  v99 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B5654();
  v98 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v108 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69B5D18];
  sub_1D784AF18(0, &qword_1EE08FF70, MEMORY[0x1E69B5D18]);
  v109 = v9;
  v91 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v93 = (&v90 - v11);
  sub_1D784AF80(0, &qword_1EE08FF68, &qword_1EE08FF70, v8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v117 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v107 = &v90 - v17;
  v18 = sub_1D78B34F4();
  v118 = *(v18 - 8);
  v119 = v18;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v97 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v90 - v23;
  v25 = sub_1D78B5624();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v115 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1E69B5C98];
  sub_1D784AF18(0, &qword_1EE08FF80, MEMORY[0x1E69B5C98]);
  v116 = v30;
  v112 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v95 = (&v90 - v32);
  sub_1D784AF80(0, &qword_1EE08FF78, &qword_1EE08FF80, v29);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v37 = &v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v38);
  v113 = &v90 - v39;
  v122.receiver = v1;
  v122.super_class = ObjectType;
  objc_msgSendSuper2(&v122, sel_prepareLayout);
  v40 = OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_itemAttributes;
  swift_beginAccess();
  v41 = MEMORY[0x1E69E7CC0];
  v106 = v40;
  *&v1[v40] = MEMORY[0x1E69E7CC0];

  v42 = OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_supplementaryItemAttributes;
  swift_beginAccess();
  v101 = v42;
  *&v1[v42] = v41;
  v43 = v24;

  v114 = v1;
  v44 = *&v1[OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_layoutProvider + 24];
  v90 = &v1[OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_layoutProvider];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_layoutProvider], v44);

  sub_1D78B3AF4();

  v45 = v120;

  v46 = 0;
  v94 = v26 + 16;
  v47 = v45[2];
  v111 = (v112 + 7);
  v110 = (v112 + 6);
  v103 = (v26 + 32);
  ++v118;
  v96 = v26;
  v102 = (v26 + 8);
  v112 = v45;
  v104 = v47;
  v105 = v37;
  while (1)
  {
    v48 = v116;
    if (v46 == v47)
    {
      v49 = 1;
      v46 = v47;
      v50 = v115;
    }

    else
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v50 = v115;
      if (v46 >= v45[2])
      {
        goto LABEL_23;
      }

      v51 = v96;
      v52 = v45 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v46;
      v53 = *(v116 + 48);
      v54 = v95;
      *v95 = v46;
      (*(v51 + 16))(v54 + v53, v52, v25);
      sub_1D784B048(v54, v37, &qword_1EE08FF80, MEMORY[0x1E69B5C98]);
      v49 = 0;
      ++v46;
    }

    v55 = v113;
    (*v111)(v37, v49, 1, v48);
    sub_1D784AFD8(v37, v55, &qword_1EE08FF78, &qword_1EE08FF80, MEMORY[0x1E69B5C98]);
    if ((*v110)(v55, 1, v48) == 1)
    {
      break;
    }

    v56 = v5;
    v57 = v55;
    v58 = *v55;
    (*v103)(v50, &v57[*(v48 + 48)], v25);
    MEMORY[0x1DA700770](v58, 0);
    v59 = sub_1D78B34B4();
    v60 = v25;
    v61 = v43;
    v62 = [objc_opt_self() layoutAttributesForCellWithIndexPath_];

    sub_1D78B5614();
    [v62 setFrame_];
    v63 = v114;
    v64 = v106;
    swift_beginAccess();
    v65 = v62;
    MEMORY[0x1DA703120]();
    if (*((*&v63[v64] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v63[v64] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D78B5F04();
    }

    sub_1D78B5F24();
    swift_endAccess();

    (*v118)(v61, v119);
    (*v102)(v50, v60);
    v5 = v56;
    v43 = v61;
    v25 = v60;
    v37 = v105;
    v45 = v112;
    v47 = v104;
  }

  __swift_project_boxed_opaque_existential_1(v90, *(v90 + 3));

  sub_1D78B3AF4();

  v66 = v121;

  v67 = 0;
  v106 = v98 + 16;
  v110 = v66;
  v68 = *(v66 + 16);
  v115 = (v91 + 48);
  v116 = v91 + 56;
  v113 = (v98 + 32);
  v112 = (v92 + 8);
  v111 = (v98 + 8);
  v69 = v97;
  v70 = v114;
  while (1)
  {
    v71 = v109;
    v72 = v117;
    if (v67 == v68)
    {
      v73 = 1;
      v67 = v68;
      v74 = v108;
    }

    else
    {
      if ((v67 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v74 = v108;
      if (v67 >= v110[2])
      {
        goto LABEL_25;
      }

      v75 = v98;
      v76 = v110 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v67;
      v77 = *(v109 + 48);
      v78 = v93;
      *v93 = v67;
      (*(v75 + 16))(&v78[v77], v76, v5);
      v79 = v78;
      v72 = v117;
      sub_1D784B048(v79, v117, &qword_1EE08FF70, MEMORY[0x1E69B5D18]);
      v73 = 0;
      ++v67;
      v69 = v97;
    }

    (*v116)(v72, v73, 1, v71);
    v80 = v72;
    v81 = v107;
    sub_1D784AFD8(v80, v107, &qword_1EE08FF68, &qword_1EE08FF70, MEMORY[0x1E69B5D18]);
    if ((*v115)(v81, 1, v71) == 1)
    {
      break;
    }

    v82 = *v81;
    (*v113)(v74, &v81[*(v71 + 48)], v5);
    MEMORY[0x1DA700770](v82, 0);
    v83 = v5;
    v84 = v99;
    sub_1D78B5634();
    sub_1D78B4D14();
    (*v112)(v84, v100);
    v85 = sub_1D78B5C44();

    v86 = sub_1D78B34B4();
    v87 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v85 withIndexPath:v86];

    sub_1D78B5644();
    [v87 setFrame_];
    v88 = v101;
    swift_beginAccess();
    v89 = v87;
    MEMORY[0x1DA703120]();
    if (*((*&v70[v88] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v70[v88] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D78B5F04();
    }

    sub_1D78B5F24();
    swift_endAccess();

    (*v118)(v69, v119);
    (*v111)(v74, v83);
    v5 = v83;
  }
}

uint64_t sub_1D784A994(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v26 = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_itemAttributes;
  result = swift_beginAccess();
  v12 = *(v4 + v10);
  if (v12 >> 62)
  {
    result = sub_1D78B6534();
    v13 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_35;
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1DA703700](v14, v12);
    }

    else
    {
      v16 = *(v12 + 8 * v14 + 32);
    }

    v17 = v16;
    [v16 frame];
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    if (CGRectIntersectsRect(v27, v29))
    {
      v18 = v17;
      MEMORY[0x1DA703120]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D78B5F04();
      }

      sub_1D78B5F24();

      v15 = v26;
    }

    else
    {
    }

    ++v14;
  }

  while (v13 != v14);

LABEL_17:
  v19 = OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_supplementaryItemAttributes;
  result = swift_beginAccess();
  v20 = *(v5 + v19);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_19;
    }

    return v15;
  }

  result = sub_1D78B6534();
  v21 = result;
  if (!result)
  {
    return v15;
  }

LABEL_19:
  if (v21 >= 1)
  {

    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA703700](i, v20);
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      [v23 frame];
      v30.origin.x = a1;
      v30.origin.y = a2;
      v30.size.width = a3;
      v30.size.height = a4;
      if (CGRectIntersectsRect(v28, v30))
      {
        v25 = v24;
        MEMORY[0x1DA703120]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D78B5F04();
        }

        sub_1D78B5F24();

        v15 = v26;
      }

      else
      {
      }
    }

    return v15;
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1D784ADD4()
{
  result = qword_1EE08FC38;
  if (!qword_1EE08FC38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FC38);
  }

  return result;
}

id sub_1D784AE20(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    v6 = sub_1D78B6534();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < sub_1D78B34E4())
  {
    return 0;
  }

  v8 = sub_1D78B34E4();
  result = swift_beginAccess();
  v9 = *(v3 + v4);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1DA703700](v8);
    goto LABEL_9;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = *(v9 + 8 * v8 + 32);
LABEL_9:
  v11 = v10;
  swift_endAccess();
  return v11;
}

void sub_1D784AF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D784AF80(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D784AF18(255, a3, a4);
    v5 = sub_1D78B62A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D784AFD8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1D784AF80(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D784B048(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D784AF18(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D784B0B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D7757008;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D776AC18(v4, v5);
}

uint64_t sub_1D784B148(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D784BA44;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1D776AC18(v3, v4);
  return sub_1D7744A7C(v8, v9);
}

uint64_t AppActivationURLHandler.onProcessing.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1D776AC18(v1, *(v0 + 24));
  return v1;
}

uint64_t AppActivationURLHandler.onProcessing.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1D7744A7C(v5, v6);
}

uint64_t AppActivationURLHandler.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t AppActivationURLHandler.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t AppActivationURLHandler.__deallocating_deinit()
{
  sub_1D7744A7C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t AppActivationURLHandler.patterns.getter()
{
  sub_1D7744758(0, &qword_1EE08FAA8, MEMORY[0x1E69D6718], MEMORY[0x1E69E6F90]);
  sub_1D78B3DA4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D78B3D94();
  return v0;
}

uint64_t AppActivationURLHandler.processURL(for:)()
{
  v1 = sub_1D78B3BD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7744758(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - v8;
  result = swift_beginAccess();
  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = *(v0 + 24);
    sub_1D7744758(0, &qword_1EE08F248, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);

    sub_1D78B3D24();
    sub_1D78B3B94();
    (*(v2 + 8))(v5, v1);
    v13 = sub_1D78B3294();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    v11(v9);
    sub_1D7744A7C(v11, v12);
    return sub_1D77C12C8(v9);
  }

  return result;
}

unint64_t sub_1D784B6A4()
{
  result = qword_1EC9CAD80;
  if (!qword_1EC9CAD80)
  {
    type metadata accessor for AppActivationURLHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAD80);
  }

  return result;
}

uint64_t sub_1D784B6F8()
{
  sub_1D7744758(0, &qword_1EE08FAA8, MEMORY[0x1E69D6718], MEMORY[0x1E69E6F90]);
  sub_1D78B3DA4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D78B3D94();
  return v0;
}

uint64_t sub_1D784B7F0()
{
  v1 = sub_1D78B3BD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7744758(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *v0;
  result = swift_beginAccess();
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = *(v10 + 24);
    sub_1D7744758(0, &qword_1EE08F248, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);

    sub_1D78B3D24();
    sub_1D78B3B94();
    (*(v2 + 8))(v5, v1);
    v14 = sub_1D78B3294();
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
    v12(v9);
    sub_1D7744A7C(v12, v13);
    return sub_1D77C12C8(v9);
  }

  return result;
}

id sub_1D784BA6C()
{
  v1 = v0;
  v23 = sub_1D78B48D4();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7851D38(0, &qword_1EE090408, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallCollectionView);
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAlwaysBounceVertical_];
  [v10 setTu:1 deriveVisibleBoundsFromContainingScrollView:?];
  sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  v11 = sub_1D78B61E4();
  [v10 setBackgroundColor_];

  [v10 _setPocketsEnabled_];
  v12 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallView);
  v13 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_hardPaywallGradientView);
  [v12 addSubview_];
  [v12 addSubview_];
  sub_1D775C038(0, &qword_1EE08FA00, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D78BCCA0;
  v15 = objc_opt_self();
  v16 = [v15 blackColor];
  v17 = [v16 colorWithAlphaComponent_];

  *(v14 + 32) = v17;
  v18 = [v15 blackColor];
  v19 = [v18 colorWithAlphaComponent_];

  *(v14 + 40) = v19;
  (*(v2 + 104))(v5, *MEMORY[0x1E69D7B60], v23);
  sub_1D78B48C4();
  v20 = sub_1D78B48E4();
  (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
  sub_1D78B4554();
  return [v13 setHidden_];
}

uint64_t sub_1D784BDE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallCollectionView);
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_dataSource);
  [v1 setDataSource_];
  [v1 setDelegate_];
  swift_getObjectType();
  sub_1D78B54C4();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemSupplementaryRenderer), *(v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemSupplementaryRenderer + 24));
  return sub_1D78B5674();
}

uint64_t sub_1D784BEA4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[7];
  v37 = a1[6];
  v38 = v4;
  v39 = *(a1 + 16);
  v5 = a1[1];
  v31 = *a1;
  v32 = v5;
  v6 = a1[3];
  v33 = a1[2];
  v34 = v6;
  v7 = a1[5];
  v35 = a1[4];
  v36 = v7;
  if (*&v31 == 0.0)
  {
    sub_1D7851D38(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
    v30[0] = 0;
    v30[1] = 0;
    swift_allocObject();
    return sub_1D78B4104();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D78B57A4();
    sub_1D78B41F4();
    *(swift_allocObject() + 16) = v3;
    v11 = v3;
    v12 = sub_1D78B4014();
    type metadata accessor for PurchaseMetaDataFetchResult(0);
    sub_1D78B4084();

    v13 = swift_allocObject();
    v14 = v35;
    *(v13 + 104) = v36;
    v15 = v38;
    *(v13 + 120) = v37;
    *(v13 + 136) = v15;
    v16 = v31;
    *(v13 + 40) = v32;
    v17 = v34;
    *(v13 + 56) = v33;
    *(v13 + 72) = v17;
    *(v13 + 88) = v14;
    *(v13 + 16) = v11;
    v18 = v39;
    *(v13 + 24) = v16;
    *(v13 + 152) = v18;
    *(v13 + 160) = a2;
    *(v13 + 168) = a3;
    v19 = v11;
    sub_1D77CB0EC(&v31, v30);
    sub_1D78B53C4();

    sub_1D78B4084();

    sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
    v20 = sub_1D78B6104();
    v21 = swift_allocObject();
    v22 = v35;
    *(v21 + 104) = v36;
    v23 = v38;
    *(v21 + 120) = v37;
    *(v21 + 136) = v23;
    v24 = v31;
    *(v21 + 40) = v32;
    v25 = v34;
    *(v21 + 56) = v33;
    *(v21 + 72) = v25;
    *(v21 + 88) = v22;
    *(v21 + 16) = v19;
    *(v21 + 152) = v39;
    *(v21 + 24) = v24;
    v26 = v19;
    sub_1D77CB0EC(&v31, v30);
    type metadata accessor for CGSize(0);
    sub_1D78B4084();

    *(swift_allocObject() + 16) = v26;
    v27 = v26;
    v28 = sub_1D78B4014();
    v29 = sub_1D78B40D4();

    return v29;
  }
}

uint64_t sub_1D784C248(uint64_t a1)
{
  v2 = MEMORY[0x1E69B6118];
  sub_1D7851D38(0, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v36 - v5;
  v7 = sub_1D78B57A4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v36 - v14;
  v16 = OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_resolvedContent;
  swift_beginAccess();
  sub_1D785450C(a1 + v16, v6, &qword_1EE090290, v2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D785449C(v6, &qword_1EE090290, MEMORY[0x1E69B6118]);
    v17 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 208);
    v18 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 176);
    v63 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 192);
    v64 = v17;
    v19 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 208);
    v20 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 240);
    v65 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 224);
    v66 = v20;
    v21 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 144);
    v22 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 112);
    v59 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 128);
    v60 = v21;
    v23 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 144);
    v24 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 176);
    v61 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 160);
    v62 = v24;
    v25 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 80);
    v26 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 48);
    v55 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 64);
    v56 = v25;
    v27 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 80);
    v28 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 112);
    v57 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 96);
    v58 = v28;
    v29 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16);
    v52[0] = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
    v52[1] = v29;
    v30 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 48);
    v32 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
    v31 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16);
    v53 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 32);
    v54 = v30;
    v48 = v63;
    v49 = v19;
    v33 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 240);
    v50 = v65;
    v51 = v33;
    v44 = v59;
    v45 = v23;
    v46 = v61;
    v47 = v18;
    v40 = v55;
    v41 = v27;
    v42 = v57;
    v43 = v22;
    v36 = v32;
    v37 = v31;
    v38 = v53;
    v39 = v26;
    sub_1D7772AE8(v52, v67);
    v34 = sub_1D77E9558(&v36);
    v67[12] = v48;
    v67[13] = v49;
    v67[14] = v50;
    v67[15] = v51;
    v67[8] = v44;
    v67[9] = v45;
    v67[10] = v46;
    v67[11] = v47;
    v67[4] = v40;
    v67[5] = v41;
    v67[6] = v42;
    v67[7] = v43;
    v67[0] = v36;
    v67[1] = v37;
    v67[2] = v38;
    v67[3] = v39;
    sub_1D7772B44(v67);
  }

  else
  {
    (*(v8 + 32))(v15, v6, v7);
    (*(v8 + 16))(v12, v15, v7);
    sub_1D7851D38(0, &unk_1EE095260, MEMORY[0x1E69B6118], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v34 = sub_1D78B4104();
    (*(v8 + 8))(v15, v7);
  }

  return v34;
}

uint64_t sub_1D784C5D8(uint64_t a1, uint64_t a2)
{
  sub_1D7851D38(0, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_1D78B57A4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_resolvedContent;
  swift_beginAccess();
  sub_1D78534B0(v7, a2 + v10);
  swift_endAccess();
  return sub_1D784C738(a1);
}

uint64_t sub_1D784C738(uint64_t a1)
{
  v49 = a1;
  v2 = type metadata accessor for PurchaseMetaDataFetchResult(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B57A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel];
  v11 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 208];
  v78 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 192];
  v79 = v11;
  v12 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 240];
  v80 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 224];
  v81 = v12;
  v13 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 144];
  v74 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 128];
  v75 = v13;
  v14 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 176];
  v76 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 160];
  v77 = v14;
  v15 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 80];
  v70 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 64];
  v71 = v15;
  v16 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 112];
  v72 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 96];
  v73 = v16;
  v17 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16];
  v66 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel];
  v67 = v17;
  v18 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 48];
  v68 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 32];
  v69 = v18;
  if (PaywallModel.purchaseType.getter())
  {
    (*(v7 + 16))(v5, v49, v6);
    v19 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_bundlePurchasePrewarmer + 8];
    ObjectType = swift_getObjectType();
    *&v5[*(v2 + 20)] = (*(v19 + 8))(ObjectType, v19);
  }

  else
  {
    v48 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v10 + 13);
    v62 = *(v10 + 12);
    v63 = v21;
    v22 = *(v10 + 15);
    v64 = *(v10 + 14);
    v65 = v22;
    v23 = *(v10 + 9);
    v58 = *(v10 + 8);
    v59 = v23;
    v24 = *(v10 + 11);
    v60 = *(v10 + 10);
    v61 = v24;
    v25 = *(v10 + 5);
    v54 = *(v10 + 4);
    v55 = v25;
    v26 = *(v10 + 7);
    v56 = *(v10 + 6);
    v57 = v26;
    v27 = *(v10 + 1);
    v50 = *v10;
    v51 = v27;
    v28 = *(v10 + 3);
    v52 = *(v10 + 2);
    v53 = v28;
    v29 = PaywallModel.purchaseIDs.getter();
    if (v29)
    {
      if (v29[2])
      {
        v30 = v29[4];
        v31 = v29[5];

        MEMORY[0x1EEE9AC00](v32, v33);
        v44[-4] = v1;
        v44[-3] = v30;
        v44[-2] = v31;
        sub_1D773F004(0, &qword_1EE08FF20, 0x1E69B54D0);
        v44[2] = sub_1D78B41F4();

        v34 = *(v7 + 16);
        v46 = v7 + 16;
        v47 = v34;
        v44[1] = v2;
        v35 = v48;
        v34(v48, v49, v6);
        v36 = *(v7 + 80);
        v37 = swift_allocObject();
        *(v37 + 16) = v1;
        v45 = *(v7 + 32);
        v45(v37 + ((v36 + 24) & ~v36), v35, v6);
        v38 = v1;
        v39 = sub_1D78B4014();
        sub_1D78B4084();

        v47(v35, v49, v6);
        v40 = swift_allocObject();
        v45(v40 + ((v36 + 16) & ~v36), v35, v6);
        v41 = sub_1D78B4014();
        v42 = sub_1D78B4134();

        return v42;
      }
    }

    (*(v7 + 16))(v5, v49, v6);
    *&v5[*(v2 + 20)] = 0;
  }

  sub_1D7851D38(0, &qword_1EE0952A8, type metadata accessor for PurchaseMetaDataFetchResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D784CBB0(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PurchaseMetaDataFetchResult(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  sub_1D7851D38(0, &qword_1EE095270, MEMORY[0x1E69B5990], MEMORY[0x1E69D6B18]);
  sub_1D78543D4(a1, &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for PurchaseMetaDataFetchResult);
  v14 = (*(v11 + 80) + 160) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v16 = a3[4];
  *(v15 + 104) = a3[5];
  v17 = a3[7];
  *(v15 + 120) = a3[6];
  *(v15 + 136) = v17;
  v18 = *a3;
  *(v15 + 40) = a3[1];
  v19 = a3[3];
  *(v15 + 56) = a3[2];
  *(v15 + 72) = v19;
  *(v15 + 88) = v16;
  *(v15 + 16) = a2;
  *(v15 + 152) = *(a3 + 16);
  *(v15 + 24) = v18;
  sub_1D7851E40(&v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v15 + v14);
  v20 = (v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a4;
  v20[1] = a5;
  v21 = a2;
  sub_1D77CB0EC(a3, v24);

  return sub_1D78B40C4();
}

uint64_t sub_1D784CD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 112);
  v10[6] = *(a3 + 96);
  v10[7] = v3;
  v11 = *(a3 + 128);
  v4 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v4;
  v5 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v5;
  v6 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v6;
  sub_1D784CE5C(a1, v10);
  sub_1D78B53B4();
  *&v10[0] = v7;
  *(&v10[0] + 1) = v8;
  sub_1D7851D38(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

id sub_1D784CE5C(uint64_t a1, double *a2)
{
  v3 = v2;
  v4 = *a2;
  Height = a2[1];
  v6 = a2[6];
  v7 = a2[8];
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallLayoutProvider), *(v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallLayoutProvider + 24));

  sub_1D78B53B4();
  sub_1D78B5384();
  sub_1D78B53A4();
  sub_1D78B5394();
  sub_1D78B3AD4();

  v8 = *(v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallView);
  if (*(v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 224) == 1)
  {
    [*(v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallView) setFrame_];
    if (sub_1D78B5244())
    {
      [v8 frame];
      Height = CGRectGetHeight(v18);
    }

    v9 = Height - v6 - v7;
    sub_1D78B53B4();
    v10 = CGRectGetHeight(v19);
    if (v9 < v10)
    {
      v10 = v9 * 80.0 / 100.0;
    }

    v11 = sub_1D78B5244();
    [v8 frame];
    v12 = CGRectGetHeight(v20) - v10;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 - v7;
    }

    v14 = *(v3 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallCollectionView);
    [v14 setFrame_];
    v15 = sub_1D78B5244();
    v16 = *(v3 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_hardPaywallGradientView);
    if (v15)
    {
      [v16 setFrame_];
    }

    else
    {
      [v16 setFrame_];
    }

    [v16 setHidden_];
  }

  else
  {
    sub_1D78B53B4();
    [v8 setFrame_];
    v14 = *(v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallCollectionView);
    [v8 bounds];
    [v14 setFrame_];
    [*(v3 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_hardPaywallGradientView) setHidden_];
  }

  return [v14 reloadData];
}

double sub_1D784D12C(uint64_t a1, uint64_t a2)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE09C268;
  v3 = sub_1D78B6094();
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCB50;
  v5 = PaywallModel.description.getter();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D775ABD4();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *&v11 = 0;
  *(&v11 + 1) = 0xE000000000000000;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = v11;
  sub_1D78B42C4("Loading flexible paywall format content failed with %{public}@ error: %{public}@", 80, 2, &dword_1D7739000, v2, v3, v4);

  return result;
}

void sub_1D784D304(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a5;
  v78 = a4;
  v76 = a3;
  v92 = a6;
  v8 = MEMORY[0x1E69E6720];
  sub_1D7851D38(0, &qword_1EE095428, MEMORY[0x1E69D7318], MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v81 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v80 = v58 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v77 = v58 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v75 = v58 - v20;
  v83 = sub_1D78B37A4();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v21);
  v74 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D78B5604();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v23);
  v70 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D78B3784();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v67 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D78B3774();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v28);
  v65 = v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D78B3754();
  v61 = v30;
  v62 = *(v30 - 8);
  v31 = v62;
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1E69B5FB0];
  sub_1D7851D38(0, &qword_1EE0902B0, MEMORY[0x1E69B5FB0], v8);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = v58 - v37;
  v64 = sub_1D78B5684();
  v39 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v40);
  v42 = v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v63 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_feedLayoutSolver);
  (*(v39 + 104))(v42, **(&unk_1E84E2078 + *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16)));
  v43 = sub_1D78B56C4();
  (*(*(v43 - 8) + 56))(v38, 1, 1, v43);
  (*(v31 + 104))(v34, *MEMORY[0x1E69D7110], v30);
  sub_1D78B6194();
  v44 = *(a2 + 24);
  v60 = *(a2 + 16);
  v59 = v44;
  v45 = *(a2 + 80);
  v58[2] = *(a2 + 88);
  v46 = *(a2 + 128);
  v47 = *(a2 + 48);
  v58[1] = *(a2 + 32);
  v58[0] = v47;
  sub_1D78B5474();
  v48 = v45;
  v49 = v46;
  sub_1D78B5464();
  sub_1D78B5454();

  v50 = v65;
  sub_1D78B3764();
  v51 = v70;
  sub_1D784DC78(v70);
  v67 = sub_1D78B53F4();
  (*(v72 + 8))(v51, v73);
  (*(v69 + 8))(v50, v71);
  (*(v62 + 8))(v34, v61);
  sub_1D785449C(v38, &qword_1EE0902B0, v68);
  (*(v39 + 8))(v42, v64);
  v52 = *(v76 + *(type metadata accessor for PurchaseMetaDataFetchResult(0) + 20));
  v53 = v76;
  v54 = sub_1D78B5794();
  v85 = v53;
  v86 = v66;
  v87 = v52;
  v88 = v78;
  v89 = v79;
  sub_1D78A3294(sub_1D7851F48, v84, v54);

  v55 = sub_1D78B37B4();
  memset(v90, 0, sizeof(v90));
  v91 = 0;
  v56 = *(*(v55 - 8) + 56);
  v56(v75, 1, 1, v55);
  v56(v77, 1, 1, v55);
  v56(v80, 1, 1, v55);
  v56(v81, 1, 1, v55);
  v57 = v74;
  sub_1D78B3794();
  sub_1D78B53D4();

  (*(v82 + 8))(v57, v83);
  sub_1D7851F6C(v90);
  sub_1D78B53E4();
}

uint64_t sub_1D784DC78@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1D78B55F4();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D78B5524();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B5544();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D78B5564();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1D78B5594();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1D78B55B4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = sub_1D78B55C4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7851D38(0, &qword_1EE0902E0, MEMORY[0x1E69B5BB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v27 - v23;
  v25 = sub_1D78B5574();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  (*(v17 + 104))(v20, *MEMORY[0x1E69B5BC0], v16);
  sub_1D78B55A4();
  sub_1D78B5554();
  sub_1D78B5554();
  (*(v4 + 104))(v7, *MEMORY[0x1E69B5BA8], v28);
  sub_1D78B5534();
  sub_1D78B55E4();
  return sub_1D78B55D4();
}

uint64_t sub_1D784E070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v274 = a3;
  v245 = a6;
  v246 = a5;
  v251 = a4;
  v278 = a2;
  v9 = MEMORY[0x1E69E6720];
  sub_1D7851D38(0, &qword_1EE0902E8, MEMORY[0x1E69B5B80], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v247 = &v239 - v12;
  v13 = sub_1D78B5364();
  v256 = *(v13 - 8);
  v257 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v273 = &v239 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_1D78B57A4();
  v259 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268, v16);
  v258 = v17;
  v267 = &v239 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D78B5704();
  v254 = *(v18 - 8);
  v255 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v272 = &v239 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7851D38(0, &unk_1EE090210, MEMORY[0x1E69B6808], v9);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v264 = &v239 - v23;
  v24 = sub_1D78B5444();
  v265 = *(v24 - 8);
  v266 = v24;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v263 = &v239 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v277 = &v239 - v29;
  v30 = sub_1D78B56E4();
  v270 = *(v30 - 8);
  v271 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v269 = &v239 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D78B33C4();
  v249 = *(v33 - 8);
  v250 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v248 = &v239 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_1D78B56F4();
  v276 = *(v262 - 8);
  v37 = MEMORY[0x1EEE9AC00](v262, v36);
  v261 = &v239 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v39);
  v260 = &v239 - v40;
  v298 = sub_1D78B5A54();
  v279 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298, v41);
  v297 = &v239 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_1D78B5824();
  v288 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294, v43);
  v293 = &v239 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v286 = sub_1D78B56A4();
  v287 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286, v45);
  v292 = &v239 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D78B5954();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v239 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1D78B59A4();
  v53 = *(v52 - 8);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v252 = v56;
  v253 = &v239 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = &v239 - v58;
  (*(v48 + 16))(v51, a1, v47);
  if ((*(v48 + 88))(v51, v47) != *MEMORY[0x1E69B6408])
  {
    result = (*(v48 + 8))(v51, v47);
    *a7 = 0;
    return result;
  }

  v242 = a7;
  (*(v48 + 96))(v51, v47);
  v240 = *(v53 + 32);
  v241 = v53 + 32;
  v240(v59, v51, v52);
  v275 = v59;
  v60 = sub_1D78B5984();
  v61 = *(v60 + 16);
  v243 = v53;
  v244 = v52;
  if (v61)
  {
    v62 = MEMORY[0x1E69E7CC0];
    *&v317 = MEMORY[0x1E69E7CC0];
    v63 = v60;
    sub_1D77D9A04(0, v61, 0);
    v64 = v63;
    v65 = 0;
    v283 = v63 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
    *&v284 = v61;
    v66 = v317;
    v295 = (v279 + 8);
    v296 = (v279 + 16);
    v281 = (v288 + 8);
    v282 = v288 + 16;
    v280 = v287 + 32;
    *&v285 = v63;
    while (v65 < *(v64 + 16))
    {
      v290 = v65;
      v291 = v66;
      (*(v288 + 16))(v293, v283 + *(v288 + 72) * v65, v294);
      v67 = sub_1D78B57F4();
      v68 = *(v67 + 16);
      if (v68)
      {
        *&v301 = v62;
        sub_1D77D9874(0, v68, 0);
        v69 = v301;
        v70 = *(v279 + 80);
        v289 = v67;
        v71 = v67 + ((v70 + 32) & ~v70);
        v300 = *(v279 + 72);
        v299 = *(v279 + 16);
        do
        {
          v72 = v297;
          v73 = v298;
          v299(v297, v71, v298);
          v74 = sub_1D78B5A44();
          v76 = v75;
          (*v295)(v72, v73);
          *&v301 = v69;
          v78 = *(v69 + 16);
          v77 = *(v69 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_1D77D9874((v77 > 1), v78 + 1, 1);
            v69 = v301;
          }

          *(v69 + 16) = v78 + 1;
          v79 = v69 + 16 * v78;
          *(v79 + 32) = v74;
          *(v79 + 40) = v76;
          v71 += v300;
          --v68;
        }

        while (v68);

        v80 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v69 = v62;
        v80 = v62;
      }

      v300 = sub_1D77E58E8(v69);

      v81 = v293;
      sub_1D78B57E4();
      sub_1D78B5804();
      sub_1D78B5814();
      sub_1D7852D58(v80);
      sub_1D7852E6C(v80);
      sub_1D7852F64(v80);
      sub_1D78B5694();
      (*v281)(v81, v294);
      v66 = v291;
      *&v317 = v291;
      v83 = *(v291 + 16);
      v82 = *(v291 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_1D77D9A04((v82 > 1), v83 + 1, 1);
        v66 = v317;
      }

      v65 = v290 + 1;
      *(v66 + 16) = v83 + 1;
      (*(v287 + 32))(v66 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v83, v292, v286);
      v64 = v285;
      v62 = MEMORY[0x1E69E7CC0];
      if (v65 == v284)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_62:
    swift_once();
    goto LABEL_22;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v353 = MEMORY[0x1E69E7CD0];
  sub_1D78B5774();
  sub_1D78B5974();
  v85 = v261;
  sub_1D78B5334();
  v86 = *MEMORY[0x1E69B5FF0];
  v87 = v276;
  v88 = v262;
  v296 = *(v276 + 104);
  v297 = (v276 + 104);
  v296(v85, v86, v262);
  v89 = v260;
  sub_1D78A6DDC(v260, v85);
  v90 = *(v87 + 8);
  v276 = v87 + 8;
  v295 = v90;
  (v90)(v89, v88);
  v91 = v274;
  v62 = (v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerOverrideProvider);
  v92 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerOverrideProvider + 24);
  v93 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerOverrideProvider + 32);
  __swift_project_boxed_opaque_existential_1((v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerOverrideProvider), v92);
  LOBYTE(v317) = 13;
  LODWORD(v294) = (*(v93 + 72))(&v317, v92, v93);
  v94 = v62[3];
  v95 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v94);
  LOBYTE(v317) = 13;
  v96 = (*(v95 + 80))(&v317, v94, v95);
  v292 = v97;
  v293 = v96;
  v98 = v62[3];
  v99 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v98);
  LOBYTE(v317) = 13;
  v100 = (*(v99 + 56))(&v317, v98, v99);
  v289 = v101;
  v290 = v100;
  v102 = v62[3];
  v103 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v102);
  LOBYTE(v317) = 13;
  v104 = (*(v103 + 64))(&v317, v102, v103);
  v287 = v105;
  v288 = v104;
  v106 = v248;
  sub_1D78B33B4();
  v300 = sub_1D78B33A4();
  v299 = v107;
  (*(v249 + 8))(v106, v250);
  v108 = *(v91 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerManager + 8);
  ObjectType = swift_getObjectType();
  LODWORD(v298) = (*(v108 + 48))(ObjectType, v108);
  v110 = v251;
  if (v251)
  {
    v111 = *(v91 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_subscribeButtonTextProvider + 32);
    __swift_project_boxed_opaque_existential_1((v91 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_subscribeButtonTextProvider), *(v91 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_subscribeButtonTextProvider + 24));
    v112 = *(v111 + 8);
    v113 = v110;
    v112();
    sub_1D78B5434();
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v115 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D78B5434();
  }

  if (qword_1EE08FB90 != -1)
  {
    goto LABEL_62;
  }

LABEL_22:
  v116 = qword_1EE09C260;
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1D78BCAB0;
  v118 = sub_1D775ABD4();
  v119 = (v298 & 1) == 0;
  v120 = 28526;
  if (v298)
  {
    v120 = 7562617;
  }

  v121 = 0xE200000000000000;
  *(v117 + 56) = MEMORY[0x1E69E6158];
  *(v117 + 64) = v118;
  if (!v119)
  {
    v121 = 0xE300000000000000;
  }

  *(v117 + 32) = v120;
  *(v117 + 40) = v121;
  v122 = sub_1D78B60A4();
  sub_1D78B42C4("Flexible FeedPaywall is created with isBundleFreeTrialEligible = %@", 67, 2, &dword_1D7739000, v116, v122, v117);

  v123 = v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel;
  v124 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 168);
  v125 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 200);
  v348 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 184);
  v349 = v125;
  v350 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 216);
  v126 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 104);
  v127 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 136);
  v344 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 120);
  v345 = v127;
  v128 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 152);
  v347 = v124;
  v346 = v128;
  v129 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 40);
  v130 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 72);
  v340 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 56);
  v341 = v130;
  v131 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 88);
  v343 = v126;
  v342 = v131;
  v132 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 24);
  v339 = v129;
  v338 = v132;
  v133 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 168);
  v134 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 200);
  v351[10] = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 184);
  v351[11] = v134;
  v352 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 216);
  v135 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 104);
  v136 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 136);
  v351[6] = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 120);
  v351[7] = v136;
  v137 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 152);
  v351[9] = v133;
  v351[8] = v137;
  v138 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 40);
  v139 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 72);
  v351[2] = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 56);
  v351[3] = v139;
  v140 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 88);
  v351[5] = v135;
  v351[4] = v140;
  v141 = *(v274 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 24);
  v351[1] = v138;
  v351[0] = v141;
  v142 = sub_1D77C19C8(v351);
  if (v142 > 1)
  {
    if (v142 == 2)
    {
      nullsub_1();
      v157 = v156;
      v158 = *(v156 + 16);
      v319 = v340;
      v320[0] = v341;
      v317 = v338;
      v318 = v339;
      v322 = v344;
      v323 = v345;
      v320[1] = v342;
      v321 = v343;
      LOBYTE(v328) = v350;
      v326 = v348;
      v327 = v349;
      v324 = v346;
      v325 = v347;
      nullsub_1();
      sub_1D78543D4(v159, &v301, sub_1D77C33E0);

      v146 = *(v157 + 96);
      v147 = *(v157 + 72);
      v148 = *(v157 + 80);
      v149 = *(v157 + 64);
      v150 = *(v157 + 56);
      v151 = *(v157 + 40);
      v152 = *(v157 + 24);
      v160 = *(v157 + 152);
      v334 = *(v157 + 136);
      v335 = v160;
      v336 = *(v157 + 168);
      v337 = *(v157 + 184);
      v154 = *(v157 + 104);
      v155 = *(v157 + 120);
    }

    else
    {
      nullsub_1();
      v162 = v161;
      v146 = *(v161 + 9);
      v147 = *(v161 + 48);
      v163 = *(v161 + 56);
      v149 = *(v161 + 40);
      v150 = *(v161 + 4);
      v164 = *v161;
      v285 = v161[1];
      v286 = v163;
      v284 = v164;
      v322 = v344;
      v323 = v345;
      v320[1] = v342;
      v321 = v343;
      LOBYTE(v328) = v350;
      v326 = v348;
      v327 = v349;
      v319 = v340;
      v320[0] = v341;
      v324 = v346;
      v325 = v347;
      v317 = v338;
      v318 = v339;
      nullsub_1();
      sub_1D78543D4(v165, &v301, sub_1D77C3318);
      v152 = v284;
      v151 = v285;
      v148 = v286;
      v166 = v162[8];
      v334 = v162[7];
      v335 = v166;
      v336 = v162[9];
      v337 = *(v162 + 20);
      v154 = v162[5];
      v155 = v162[6];
    }
  }

  else
  {
    if (v142)
    {
      nullsub_1();
      goto LABEL_34;
    }

    nullsub_1();
    v144 = v143;
    v319 = v340;
    v320[0] = v341;
    v317 = v338;
    v318 = v339;
    v322 = v344;
    v323 = v345;
    v320[1] = v342;
    v321 = v343;
    LOBYTE(v328) = v350;
    v326 = v348;
    v327 = v349;
    v324 = v346;
    v325 = v347;
    nullsub_1();
    sub_1D78543D4(v145, &v301, sub_1D77C34F8);

    v146 = *(v144 + 88);
    v147 = *(v144 + 64);
    v148 = *(v144 + 72);
    v149 = *(v144 + 56);
    v150 = *(v144 + 48);
    v152 = *(v144 + 16);
    v151 = *(v144 + 32);
    v153 = *(v144 + 144);
    v334 = *(v144 + 128);
    v335 = v153;
    v336 = *(v144 + 160);
    v337 = *(v144 + 176);
    v154 = *(v144 + 96);
    v155 = *(v144 + 112);
  }

  v332 = v154;
  v333 = v155;
  v317 = v152;
  v318 = v151;
  *&v319 = v150;
  BYTE8(v319) = v149;
  LOBYTE(v320[0]) = v147;
  *(v320 + 8) = v148;
  *(&v320[1] + 1) = v146;
  v323 = v334;
  v324 = v335;
  v325 = v336;
  *&v326 = v337;
  v321 = v154;
  v322 = v155;
  v309 = v335;
  v310 = v336;
  *&v311 = v337;
  v305 = v320[1];
  v306 = v154;
  v307 = v155;
  v308 = v334;
  v301 = v152;
  v302 = v151;
  v303 = v319;
  v304 = v320[0];
  sub_1D784FE84();
  sub_1D778D0B0(&v317);
LABEL_34:
  v167 = *(v123 + 224);
  if (v167 >= 3)
  {
    *&v317 = *(v123 + 224);
    result = sub_1D78B6764();
    __break(1u);
  }

  else
  {
    v168 = *(v123 + 16);
    v291 = v66;
    if (v168 <= 3)
    {
      v169 = 0xEB00000000646565;
      if (v168 == 2)
      {
        v169 = 0xE900000000000064;
      }

      v171 = 0xE700000000000000;
      if (v168)
      {
        v171 = 0xE800000000000000;
      }

      v172 = v168 <= 1;
    }

    else
    {
      v169 = 0xED00006461656874;
      v170 = 0xE800000000000000;
      if (v168 != 7)
      {
        v170 = 0xE600000000000000;
      }

      if (v168 != 6)
      {
        v169 = v170;
      }

      v171 = 0xEC00000064656546;
      if (v168 != 4)
      {
        v171 = 0xE600000000000000;
      }

      v172 = v168 <= 5;
    }

    if (v172)
    {
      v173 = v171;
    }

    else
    {
      v173 = v169;
    }

    v174 = *&aNone_5[8 * v167];
    LODWORD(v284) = sub_1D78506E8();
    v175 = *(v123 + 208);
    v328 = *(v123 + 192);
    v329 = v175;
    v176 = *(v123 + 240);
    v330 = *(v123 + 224);
    v331 = v176;
    v177 = *(v123 + 144);
    v324 = *(v123 + 128);
    v325 = v177;
    v178 = *(v123 + 176);
    v326 = *(v123 + 160);
    v327 = v178;
    v179 = *(v123 + 80);
    v320[1] = *(v123 + 64);
    v321 = v179;
    v180 = *(v123 + 112);
    v322 = *(v123 + 96);
    v323 = v180;
    v181 = *(v123 + 16);
    v317 = *v123;
    v318 = v181;
    v182 = *(v123 + 48);
    v319 = *(v123 + 32);
    v320[0] = v182;
    v183 = [PaywallModel.tag.getter() name];
    swift_unknownObjectRelease();
    v184 = sub_1D78B5C74();
    v282 = v185;
    v283 = v184;

    v186 = *(v123 + 208);
    v313 = *(v123 + 192);
    v314 = v186;
    v187 = *(v123 + 240);
    v315 = *(v123 + 224);
    v316 = v187;
    v188 = *(v123 + 144);
    v309 = *(v123 + 128);
    v310 = v188;
    v189 = *(v123 + 176);
    v311 = *(v123 + 160);
    v312 = v189;
    v190 = *(v123 + 80);
    v305 = *(v123 + 64);
    v306 = v190;
    v191 = *(v123 + 112);
    v307 = *(v123 + 96);
    v308 = v191;
    v192 = *(v123 + 16);
    v301 = *v123;
    v302 = v192;
    v193 = *(v123 + 48);
    v303 = *(v123 + 32);
    v304 = v193;
    v194 = [PaywallModel.tag.getter() publisherPaidOfferableConfigurations];
    swift_unknownObjectRelease();
    *&v286 = v173;
    *&v285 = v174;
    if (v194)
    {
      sub_1D773F004(0, &qword_1EE08FC48, 0x1E69B54E8);
      v195 = sub_1D78B5EB4();

      if (v195 >> 62)
      {
        sub_1D78B6534();
      }
    }

    (*(v265 + 16))(v263, v277, v266);
    v196 = v62[3];
    v197 = v62[4];
    __swift_project_boxed_opaque_existential_1(v62, v196);
    LOBYTE(v301) = 13;
    (*(v197 + 88))(&v301, v196, v197);
    if (!*(v123 + 16))
    {
      swift_unknownObjectRetain();
    }

    v198 = v269;
    sub_1D78B56D4();
    (*(v265 + 8))(v277, v266);
    v199 = v261;
    (*(v270 + 16))(v261, v198, v271);
    v200 = v262;
    v296(v199, *MEMORY[0x1E69B5FF8], v262);
    v201 = v260;
    sub_1D78A6DDC(v260, v199);
    (v295)(v201, v200);
    v202 = v278;
    v203 = sub_1D78B5764();
    v297 = v204;
    v298 = v203;
    v296 = v353;
    v205 = sub_1D78B5764();
    v207 = v206;
    v208 = v275;
    v209 = sub_1D78B5964();
    v211 = v210;
    *&v317 = v205;
    *(&v317 + 1) = v207;

    MEMORY[0x1DA702FF0](v209, v211);

    v294 = *(&v317 + 1);
    v295 = v317;
    v212 = v259;
    v293 = *(v259 + 16);
    v213 = v267;
    (v293)(v267, v202, v268);
    v214 = v243 + 16;
    v292 = *(v243 + 16);
    v215 = v253;
    (v292)(v253, v208, v244);
    v216 = v272;
    v217 = v213;
    sub_1D78B5A84();
    (*(v254 + 104))(v216, *MEMORY[0x1E69B6018], v255);
    (*(v256 + 104))(v273, *MEMORY[0x1E69B5958], v257);
    v218 = sub_1D78B5764();
    v220 = v219;
    *(&v318 + 1) = &type metadata for FlexiblePaywallFeedGroup;
    *&v319 = sub_1D785315C();
    v221 = swift_allocObject();
    *&v317 = v221;
    v221[2] = v218;
    v221[3] = v220;
    v221[4] = 0x6C6C6177796150;
    v221[5] = 0xE700000000000000;
    v221[6] = 0;
    v221[7] = 0;
    v222 = v268;
    (v293)(v217, v202, v268);
    v223 = v244;
    (v292)(v215, v275, v244);
    v224 = (*(v212 + 80) + 16) & ~*(v212 + 80);
    v225 = (v258 + *(v214 + 64) + v224) & ~*(v214 + 64);
    v226 = swift_allocObject();
    (*(v212 + 32))(v226 + v224, v267, v222);
    v227 = v215;
    v228 = v223;
    v240((v226 + v225), v227, v223);
    v229 = sub_1D78B5324();
    swift_allocObject();
    v230 = sub_1D78B5314();
    if (v230)
    {
      v231 = MEMORY[0x1E69B58F0];
    }

    else
    {
      v229 = 0;
      v231 = 0;
      *&v318 = 0;
      *(&v317 + 1) = 0;
    }

    v232 = v242;
    v233 = v247;
    *&v317 = v230;
    *(&v318 + 1) = v229;
    *&v319 = v231;
    v234 = sub_1D78B5514();
    (*(*(v234 - 8) + 56))(v233, 1, 1, v234);
    v235 = sub_1D78B5784();
    v236 = v275;
    v237 = sub_1D78B5994();
    sub_1D784FD80(v237, v235);
    sub_1D78B5354();
    swift_allocObject();
    v238 = sub_1D78B5344();
    (*(v270 + 8))(v269, v271);
    result = (*(v243 + 8))(v236, v228);
    *v232 = v238;
  }

  return result;
}

uint64_t sub_1D784FBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B59A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B57A4();
  MEMORY[0x1EEE9AC00](v9, v10);
  (*(v12 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v5 + 16))(v8, a2, v4);
  sub_1D78B54B4();
  swift_allocObject();
  return sub_1D78B54A4();
}

void sub_1D784FD80(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v15 = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1D78A6C8C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_1D784FE84()
{
  v1 = sub_1D78B58B4();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = sub_1D78B5754();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x1E69E7CC0];
  v8 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 168);
  v9 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 200);
  v111 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 184);
  v112 = v9;
  v113 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 216);
  v10 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 104);
  v11 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 136);
  v107 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 120);
  v108 = v11;
  v109 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 152);
  v110 = v8;
  v12 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 40);
  v13 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 72);
  v103 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 56);
  v104 = v13;
  v105 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 88);
  v106 = v10;
  v101 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 24);
  v102 = v12;
  v14 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 168);
  v15 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 200);
  v114[10] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 184);
  v114[11] = v15;
  v115 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 216);
  v16 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 104);
  v17 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 136);
  v114[6] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 120);
  v114[7] = v17;
  v114[8] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 152);
  v114[9] = v14;
  v18 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 40);
  v19 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 72);
  v114[2] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 56);
  v114[3] = v19;
  v114[4] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 88);
  v114[5] = v16;
  v114[0] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 24);
  v114[1] = v18;
  v20 = sub_1D77C19C8(v114);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      nullsub_1();
      v35 = v34;
      v36 = *(v34 + 16);
      v90 = v103;
      v91[0] = v104;
      v88 = v101;
      v89 = v102;
      v93 = v107;
      v94 = v108;
      v91[1] = v105;
      v92 = v106;
      v99 = v113;
      v97 = v111;
      v98 = v112;
      v95 = v109;
      v96 = v110;
      nullsub_1();
      sub_1D78543D4(v37, v80, sub_1D77C33E0);

      v24 = *(v35 + 96);
      v25 = *(v35 + 72);
      v26 = *(v35 + 80);
      v27 = *(v35 + 64);
      v28 = *(v35 + 56);
      v29 = *(v35 + 40);
      v30 = *(v35 + 24);
      v38 = *(v35 + 152);
      v81 = *(v35 + 136);
      v82 = v38;
      v83 = *(v35 + 168);
      v84 = *(v35 + 184);
      v32 = *(v35 + 104);
      v33 = *(v35 + 120);
    }

    else
    {
      nullsub_1();
      v40 = v39;
      v24 = *(v39 + 9);
      v25 = *(v39 + 48);
      v41 = *(v39 + 56);
      v27 = *(v39 + 40);
      v28 = *(v39 + 4);
      v42 = *v39;
      v78 = v39[1];
      v79 = v41;
      v77 = v42;
      v93 = v107;
      v94 = v108;
      v91[1] = v105;
      v92 = v106;
      v99 = v113;
      v97 = v111;
      v98 = v112;
      v90 = v103;
      v91[0] = v104;
      v95 = v109;
      v96 = v110;
      v88 = v101;
      v89 = v102;
      nullsub_1();
      sub_1D78543D4(v43, v80, sub_1D77C3318);
      v30 = v77;
      v29 = v78;
      v26 = v79;
      v44 = v40[8];
      v81 = v40[7];
      v82 = v44;
      v83 = v40[9];
      v84 = *(v40 + 20);
      v32 = v40[5];
      v33 = v40[6];
    }
  }

  else
  {
    if (v20)
    {
      nullsub_1();
      return MEMORY[0x1E69E7CC0];
    }

    nullsub_1();
    v22 = v21;
    v90 = v103;
    v91[0] = v104;
    v88 = v101;
    v89 = v102;
    v93 = v107;
    v94 = v108;
    v91[1] = v105;
    v92 = v106;
    v99 = v113;
    v97 = v111;
    v98 = v112;
    v95 = v109;
    v96 = v110;
    nullsub_1();
    sub_1D78543D4(v23, v80, sub_1D77C34F8);

    v24 = *(v22 + 88);
    v25 = *(v22 + 64);
    v26 = *(v22 + 72);
    v27 = *(v22 + 56);
    v28 = *(v22 + 48);
    v30 = *(v22 + 16);
    v29 = *(v22 + 32);
    v31 = *(v22 + 144);
    v81 = *(v22 + 128);
    v82 = v31;
    v83 = *(v22 + 160);
    v84 = *(v22 + 176);
    v32 = *(v22 + 96);
    v33 = *(v22 + 112);
  }

  v80[0] = v32;
  v80[1] = v33;
  v88 = v30;
  v89 = v29;
  *&v90 = v28;
  BYTE8(v90) = v27;
  LOBYTE(v91[0]) = v25;
  *(v91 + 8) = v26;
  *(&v91[1] + 1) = v24;
  v94 = v81;
  v95 = v82;
  v96 = v83;
  *&v97 = v84;
  v92 = v32;
  v93 = v33;
  v45 = v24;
  sub_1D778D0B0(&v88);
  v46 = [v45 rawValues];

  sub_1D778CDF0();
  v47 = sub_1D78B5BC4();

  if (!*(v47 + 16))
  {
    goto LABEL_26;
  }

  v48 = sub_1D777BBB4(0x7475626972747461, 0xEA00000000007365);
  if ((v49 & 1) == 0)
  {
    goto LABEL_26;
  }

  v50 = *(*(v47 + 56) + 8 * v48);
  swift_unknownObjectRetain();

  v85[0] = v50;
  sub_1D777CABC();
  v52 = v51;
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v53 = v87;
  if (!*(v87 + 16) || (v54 = sub_1D777BBB4(0x73726566666FLL, 0xE600000000000000), (v55 & 1) == 0))
  {
LABEL_26:

    return MEMORY[0x1E69E7CC0];
  }

  sub_1D777BE08(*(v53 + 56) + 32 * v54, v85);

  sub_1D775C038(0, &qword_1EE08FF98, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v56 = v87;
  if (*(v87 + 16))
  {
    sub_1D777BE08(v87 + 32, v85);
    if (swift_dynamicCast())
    {
      v76[1] = v56;
      *&v77 = v4;
      *&v78 = "eTrialEligible = %@";
      v57 = v87;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_1D77FEE78(MEMORY[0x1E69E7CC0]);
      v86[1] = v52;
      v85[0] = v57;
      sub_1D7851154(v85, 0, 0xE000000000000000, v58);
      __swift_destroy_boxed_opaque_existential_1(v85);
      swift_beginAccess();
      v59 = *(v58 + 16);

      v60 = v59 + 64;
      v61 = 1 << *(v59 + 32);
      v62 = -1;
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      v4 = v62 & *(v59 + 64);
      v63 = ((v61 + 63) >> 6);
      *&v79 = v59;

      v64 = 0;
      while (v4)
      {
        v65 = v64;
LABEL_24:
        v66 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v67 = v66 | (v65 << 6);
        v68 = (*(v79 + 48) + 16 * v67);
        v69 = *v68;
        v70 = v68[1];
        sub_1D777BE08(*(v79 + 56) + 32 * v67, v86);
        v85[0] = v69;
        v85[1] = v70;

        sub_1D7850900(v69, v70, v86, 0xD000000000000019, v78 | 0x8000000000000000, &v100);
        sub_1D785443C(v85, sub_1D78532E4);
      }

      while (1)
      {
        v65 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          break;
        }

        if (v65 >= v63)
        {

          v4 = v77;
          goto LABEL_29;
        }

        v4 = *(v60 + 8 * v65);
        ++v64;
        if (v4)
        {
          v64 = v65;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_34;
    }
  }

LABEL_29:

  sub_1D78B58A4();
  sub_1D78B5744();
  v63 = v100;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_34:
    v63 = sub_1D777B71C(0, v63[2] + 1, 1, v63);
  }

  v72 = v63;
  v74 = v63[2];
  v73 = v63[3];
  if (v74 >= v73 >> 1)
  {
    v72 = sub_1D777B71C((v73 > 1), v74 + 1, 1, v63);
  }

  v72[2] = v74 + 1;
  v75 = v72;
  (*(v4 + 32))(v72 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v74, v7, v3);
  return v75;
}

BOOL sub_1D78506E8()
{
  v1 = (v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
  v41 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 192);
  v42 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 208);
  v43 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 224);
  v37 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 128);
  v38 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 144);
  v39 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 160);
  v40 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 176);
  v33 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 64);
  v34 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 80);
  v35 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 96);
  v36 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 112);
  v29 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
  v30 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16);
  v31 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 32);
  v32 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 48);
  v2 = [PaywallModel.tag.getter() isAuthenticationSetup];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_purchaseProvider);
  v25 = v1[12];
  v26 = v1[13];
  v27 = v1[14];
  v28 = v1[15];
  v21 = v1[8];
  v22 = v1[9];
  v23 = v1[10];
  v24 = v1[11];
  v17 = v1[4];
  v18 = v1[5];
  v19 = v1[6];
  v20 = v1[7];
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v4 = PaywallModel.tag.getter();
  if ([swift_unknownObjectRetain() tagType] != 3)
  {
    v6 = [v4 identifier];
    goto LABEL_7;
  }

  v5 = [v4 asSection];
  if (v5)
  {
    v6 = [v5 parentID];
    swift_unknownObjectRelease();
    if (v6)
    {
LABEL_7:
      v7 = sub_1D78B5C74();
      v9 = v8;

      v10 = [v3 purchasedTagIDs];
      v11 = sub_1D78B5F64();

      LOBYTE(v10) = sub_1D7832E64(v7, v9, v11);

      swift_unknownObjectRelease_n();
      return (v10 & 1) == 0;
    }
  }

  swift_unknownObjectRelease_n();
  return 1;
}

uint64_t sub_1D7850900(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v89 = a3;
  v90 = a6;
  v87 = a2;
  v88 = a4;
  v79 = sub_1D78B3294();
  v74 = *(v79 - 8);
  v8 = MEMORY[0x1EEE9AC00](v79, v7);
  v73 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v76 = &v72 - v11;
  v82 = sub_1D78B3394();
  v78 = *(v82 - 8);
  v13 = MEMORY[0x1EEE9AC00](v82, v12);
  v77 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v81 = &v72 - v16;
  v17 = sub_1D78B58B4();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v19 = sub_1D78B5754();
  v85 = *(v19 - 8);
  v86 = v19;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v72 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v75 = &v72 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v80 = &v72 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v83 = &v72 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v84 = &v72 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v72 - v36;
  v38 = sub_1D78B2FF4();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v72 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91[0] = &unk_1F52656F0;
  sub_1D775C038(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D77C559C();
  sub_1D78B5C24();
  sub_1D78B2FD4();

  v43 = sub_1D78B5D74();
  v45 = v44;
  (*(v39 + 8))(v42, v38);
  v91[0] = v88;
  v91[1] = a5;

  MEMORY[0x1DA702FF0](v43, v45);

  sub_1D777BE08(v89, v91);
  if (swift_dynamicCast())
  {
    sub_1D78B5884();

    sub_1D78B5744();
    v46 = v90;
    v47 = *v90;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v46 = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = sub_1D777B71C(0, v47[2] + 1, 1, v47);
      *v46 = v47;
    }

    v50 = v47[2];
    v49 = v47[3];
    if (v50 >= v49 >> 1)
    {
      v47 = sub_1D777B71C((v49 > 1), v50 + 1, 1, v47);
      *v46 = v47;
    }

    v47[2] = v50 + 1;
    (*(v85 + 32))(v47 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v50, v37, v86);
    return __swift_destroy_boxed_opaque_existential_1(v91);
  }

  v51 = v90;
  if (swift_dynamicCast())
  {
    sub_1D78B58A4();
    v52 = v84;
LABEL_13:
    sub_1D78B5744();
    v53 = v51;
    v54 = *v51;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *v53 = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_1D777B71C(0, v54[2] + 1, 1, v54);
      *v53 = v54;
    }

    v57 = v54[2];
    v56 = v54[3];
    if (v57 >= v56 >> 1)
    {
      v54 = sub_1D777B71C((v56 > 1), v57 + 1, 1, v54);
      *v53 = v54;
    }

    v54[2] = v57 + 1;
    (*(v85 + 32))(v54 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v57, v52, v86);
    return __swift_destroy_boxed_opaque_existential_1(v91);
  }

  if (swift_dynamicCast())
  {
    sub_1D78B5874();
    v52 = v83;
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    sub_1D78B5894();
    v52 = v80;
    goto LABEL_13;
  }

  v60 = v81;
  v59 = v82;
  if (swift_dynamicCast())
  {
    v62 = v77;
    v61 = v78;
    (*(v78 + 32))(v77, v60, v59);
    sub_1D78B5864();
    v63 = &v93;
  }

  else
  {
    v64 = v76;
    v59 = v79;
    if (!swift_dynamicCast())
    {

      return __swift_destroy_boxed_opaque_existential_1(v91);
    }

    v61 = v74;
    v62 = v73;
    (*(v74 + 32))(v73, v64, v59);
    sub_1D78B5854();
    v63 = &v92;
  }

  v65 = *(v63 - 32);
  sub_1D78B5744();
  v66 = v51;
  v67 = *v51;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *v66 = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_1D777B71C(0, v67[2] + 1, 1, v67);
    *v66 = v67;
  }

  v70 = v67[2];
  v69 = v67[3];
  if (v70 >= v69 >> 1)
  {
    *v66 = sub_1D777B71C((v69 > 1), v70 + 1, 1, v67);
  }

  (*(v61 + 8))(v62, v59);
  v71 = *v66;
  *(v71 + 16) = v70 + 1;
  (*(v85 + 32))(v71 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v70, v65, v86);
  return __swift_destroy_boxed_opaque_existential_1(v91);
}

uint64_t sub_1D7851154(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1D777BE08(a1, v37);
  sub_1D777CABC();
  result = swift_dynamicCast();
  if (result)
  {
    v9 = 0;
    v10 = v36;
    v11 = v36 + 64;
    v12 = 1 << *(v36 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = a2;
    v15 = v13 & *(v36 + 64);
    v16 = (v12 + 63) >> 6;
    v17 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    v28 = v14;
    v29 = v17;
    while (v15)
    {
      v18 = v9;
LABEL_18:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v23 = (*(v10 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      sub_1D777BE08(*(v10 + 56) + 32 * v22, v30);
      *&v31 = v25;
      *(&v31 + 1) = v24;
      sub_1D778D0A0(v30, &v32);

LABEL_19:
      v34 = v31;
      v35[0] = v32;
      v35[1] = v33;
      v26 = *(&v31 + 1);
      if (!*(&v31 + 1))
      {

        return __swift_destroy_boxed_opaque_existential_1(v37);
      }

      v27 = v34;
      sub_1D778D0A0(v35, &v31);
      if (v29)
      {
        *&v30[0] = v28;
        *(&v30[0] + 1) = a3;

        MEMORY[0x1DA702FF0](46, 0xE100000000000000);
        MEMORY[0x1DA702FF0](v27, v26);

        v26 = *(&v30[0] + 1);
        v27 = *&v30[0];
      }

      sub_1D7851154(&v31, v27, v26, a4);

      result = __swift_destroy_boxed_opaque_existential_1(&v31);
    }

    if (v16 <= v9 + 1)
    {
      v19 = v9 + 1;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        v15 = 0;
        v32 = 0u;
        v33 = 0u;
        v9 = v20;
        v31 = 0u;
        goto LABEL_19;
      }

      v15 = *(v11 + 8 * v18);
      ++v9;
      if (v15)
      {
        v9 = v18;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1D777BE08(a1, &v34);
    swift_beginAccess();

    sub_1D7827BA8(&v34, a2, a3);
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return result;
}

uint64_t sub_1D78513C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_individualPurchaseMetadata);
  if (v3)
  {
    sub_1D785327C(0, &qword_1EE095230, &qword_1EE08FF20, 0x1E69B54D0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v4 = v3;
    return sub_1D78B4104();
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_purchaseManager + 8);
    ObjectType = swift_getObjectType();
    return sub_1D775F820(a2, a3, ObjectType, v8);
  }
}

uint64_t sub_1D7851494(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PurchaseMetaDataFetchResult(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_individualPurchaseMetadata);
  *(a2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_individualPurchaseMetadata) = v11;
  v13 = v11;

  v14 = sub_1D78B57A4();
  (*(*(v14 - 8) + 16))(v10, a3, v14);
  *&v10[*(v7 + 28)] = v11;
  sub_1D7851D38(0, &qword_1EE0952A8, type metadata accessor for PurchaseMetaDataFetchResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D78515E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseMetaDataFetchResult(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE09C268;
  v9 = sub_1D78B6094();
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCAB0;
  v15 = 0;
  v16 = 0xE000000000000000;
  v17 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  v11 = v15;
  v12 = v16;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D775ABD4();
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1D78B42C4("FlexiblePaywallViewProvider failed to fetch purchase metadata with error: %{public}@", 84, 2, &dword_1D7739000, v8, v9, v10);

  v13 = sub_1D78B57A4();
  (*(*(v13 - 8) + 16))(v7, a2, v13);
  *&v7[*(v4 + 20)] = 0;
  sub_1D7851D38(0, &qword_1EE0952A8, type metadata accessor for PurchaseMetaDataFetchResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

void sub_1D7851A48(uint64_t a1)
{
  sub_1D7851D38(319, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D7851BBC(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1D7851D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7851E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseMetaDataFetchResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7851EA4(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseMetaDataFetchResult(0) - 8);
  v4 = (*(v3 + 80) + 160) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1D784D304(*(v1 + 16), v1 + 24, v1 + v4, *v5, v5[1], a1);
}

uint64_t sub_1D7851F6C(uint64_t a1)
{
  sub_1D775B620(0, &qword_1EE0902C8, &unk_1EE0902D0, MEMORY[0x1E69B5D08], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7851FF4@<X0>(_BYTE *a1@<X8>)
{
  sub_1D7851D38(0, &qword_1EC9CAE08, MEMORY[0x1E69B64A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - v4;
  v6 = sub_1D78B59B4();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v22 - v13;
  sub_1D78B5A14();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D785449C(v5, &qword_1EC9CAE08, MEMORY[0x1E69B64A8]);
LABEL_3:
    v15 = type metadata accessor for PostPurchaseDestination(0);
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  v17 = *(v7 + 32);
  v17(v14, v5, v6);
  v17(v11, v14, v6);
  v18 = (*(v7 + 88))(v11, v6);
  if (v18 == *MEMORY[0x1E69B6498])
  {
    (*(v7 + 96))(v11, v6);
    v19 = sub_1D78B3294();
    (*(*(v19 - 8) + 32))(a1, v11, v19);
    v20 = type metadata accessor for PostPurchaseDestination(0);
  }

  else
  {
    if (v18 == *MEMORY[0x1E69B64A0])
    {
      goto LABEL_3;
    }

    if (v18 != *MEMORY[0x1E69B6490])
    {
      v21 = type metadata accessor for PostPurchaseDestination(0);
      (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
      return (*(v7 + 8))(v11, v6);
    }

    *a1 = 0;
    v20 = type metadata accessor for PostPurchaseDestination(0);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
}

void sub_1D785237C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1D78B5304();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D78B5A24();
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69B5830])
  {
    (*(v5 + 96))(v8, v4);
    v10 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 248);
    if (*(v10 + 16))
    {
      v11 = sub_1D777BBB4(*v8, v8[1]);
      v13 = v12;

      if (v13)
      {
        v14 = (*(v10 + 56) + 16 * v11);
        v15 = v14[1];
        *a2 = *v14;
        a2[1] = v15;

        return;
      }
    }

    else
    {
    }
  }

  else if (v9 != *MEMORY[0x1E69B5828])
  {
    *a2 = 0;
    a2[1] = 0;
    (*(v5 + 8))(v8, v4);
    return;
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t sub_1D7852514(uint64_t a1, uint64_t a2)
{
  sub_1D7851D38(0, &unk_1EC9CADF8, MEMORY[0x1E69B6718], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  if (qword_1EE0955D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FlexiblePaywallViewProvider(0);
  sub_1D785458C();
  sub_1D78B3574();
  if (v20 < 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  if (!v20)
  {
    sub_1D785450C(a2, v7, &unk_1EC9CADF8, MEMORY[0x1E69B6718]);
    v17 = sub_1D78B5AB4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v7, 1, v17) == 1)
    {
      v15 = MEMORY[0x1E69B6718];
      v16 = v7;
      goto LABEL_13;
    }

    v19 = sub_1D78B5AA4();
    (*(v18 + 8))(v7, v17);
    return v19;
  }

  if (qword_1EC9C8668 != -1)
  {
    goto LABEL_19;
  }

LABEL_6:
  sub_1D78B3574();
  result = v20;
  v12 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v12 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    sub_1D785450C(a2, v10, &unk_1EC9CADF8, MEMORY[0x1E69B6718]);
    v13 = sub_1D78B5AB4();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      v15 = MEMORY[0x1E69B6718];
      v16 = v10;
LABEL_13:
      sub_1D785449C(v16, &unk_1EC9CADF8, v15);
      return 0;
    }

    v19 = sub_1D78B5AA4();
    (*(v14 + 8))(v10, v13);
    return v19;
  }

  return result;
}

uint64_t sub_1D7852880@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = MEMORY[0x1E69B6718];
  v5 = MEMORY[0x1E69E6720];
  sub_1D7851D38(0, &unk_1EC9CADF8, MEMORY[0x1E69B6718], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v32 - v8;
  sub_1D7851D38(0, &qword_1EC9CAE08, MEMORY[0x1E69B64A8], v5);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  v14 = sub_1D78B59B4();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v32 - v21;
  sub_1D785450C(a1, v9, &unk_1EC9CADF8, v4);
  v23 = sub_1D78B5AB4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v9, 1, v23) == 1)
  {
    sub_1D785449C(v9, &unk_1EC9CADF8, MEMORY[0x1E69B6718]);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_4:
    sub_1D785449C(v13, &qword_1EC9CAE08, MEMORY[0x1E69B64A8]);
LABEL_5:
    *a2 = 1;
    v25 = type metadata accessor for PostPurchaseDestination(0);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return (*(*(v25 - 8) + 56))(a2, 0, 1, v25);
  }

  sub_1D78B5A94();
  (*(v24 + 8))(v9, v23);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  v27 = *(v15 + 32);
  v27(v22, v13, v14);
  v27(v19, v22, v14);
  v28 = (*(v15 + 88))(v19, v14);
  if (v28 == *MEMORY[0x1E69B6498])
  {
    (*(v15 + 96))(v19, v14);
    v29 = sub_1D78B3294();
    (*(*(v29 - 8) + 32))(a2, v19, v29);
    v25 = type metadata accessor for PostPurchaseDestination(0);
    goto LABEL_6;
  }

  if (v28 == *MEMORY[0x1E69B64A0])
  {
    v30 = type metadata accessor for PostPurchaseDestination(0);
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }

  else
  {
    if (v28 == *MEMORY[0x1E69B6490])
    {
      goto LABEL_5;
    }

    v31 = type metadata accessor for PostPurchaseDestination(0);
    (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
    return (*(v15 + 8))(v19, v14);
  }
}

unint64_t sub_1D7852D58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D785344C(0, &qword_1EC9CADF0, sub_1D7782F60);
    v3 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D777BBB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D7852E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D78533B4(0);
    v3 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D777BBB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D7852F64(uint64_t a1)
{
  sub_1D785334C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D785344C(0, &qword_1EC9CADD8, MEMORY[0x1E69B6750]);
    v9 = sub_1D78B6564();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D78543D4(v11, v7, sub_1D785334C);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D777BBB4(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_1D78B5AF4();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D785315C()
{
  result = qword_1EE092BB0;
  if (!qword_1EE092BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092BB0);
  }

  return result;
}

uint64_t sub_1D78531B0()
{
  v1 = *(sub_1D78B57A4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D78B59A4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D784FBFC(v0 + v2, v5);
}

void sub_1D785327C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773F004(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D78532E4()
{
  if (!qword_1EE090140)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE090140);
    }
  }
}

void sub_1D785334C(uint64_t a1)
{
  if (!qword_1EE090100)
  {
    sub_1D78B5AF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE090100);
    }
  }
}

void sub_1D78533B4(uint64_t a1)
{
  if (!qword_1EC9CADE0)
  {
    sub_1D7851D38(255, &qword_1EC9CADE8, MEMORY[0x1E69B60E0], MEMORY[0x1E69E62F8]);
    v1 = sub_1D78B6574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CADE0);
    }
  }
}

void sub_1D785344C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B6574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D78534B0(uint64_t a1, uint64_t a2)
{
  sub_1D7851D38(0, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7853650(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1D78A6C8C(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1D78536D0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D7851D38(0, &unk_1EC9CADF8, MEMORY[0x1E69B6718], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v164 = &v161 - v6;
  ObjectType = type metadata accessor for SubscribeButtonDestination(0);
  v8 = MEMORY[0x1EEE9AC00](ObjectType, v7);
  v163 = (&v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v10);
  v165 = &v161 - v11;
  v12 = type metadata accessor for OsloSheetPurchaseDataModel(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7851D38(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, v3);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v162 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v161 - v21;
  v23 = sub_1D78B5A34();
  v167 = *(v23 - 8);
  v168 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D78B58E4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31, a1, v27);
  v32 = (*(v28 + 88))(v31, v27);
  if (v32 == *MEMORY[0x1E69B6298])
  {
    (*(v28 + 96))(v31, v27);
    (*(v167 + 32))(v26, v31, v168);
    sub_1D7851FF4(v22);
    sub_1D785237C(v1, &v201);
    v33 = v201;
    sub_1D785450C(v22, v15 + *(v12 + 20), qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    *v15 = v33;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      v36 = v165;
      sub_1D78543D4(v15, v165, type metadata accessor for OsloSheetPurchaseDataModel);
      swift_storeEnumTagMultiPayload();
      v37 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v38 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v40 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v39 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v187 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v188 = v38;
      v185 = v40;
      v186 = v39;
      v41 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v43 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v42 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v191 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v192 = v41;
      v189 = v43;
      v190 = v42;
      v44 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v46 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v45 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v195 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v196 = v44;
      v193 = v46;
      v194 = v45;
      v47 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v49 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v48 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v199 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v200 = v47;
      v197 = v49;
      v198 = v48;
      v50 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v181 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v182 = v50;
      v51 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v183 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v184 = v51;
      v52 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v177 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v178 = v52;
      v53 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v179 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v180 = v53;
      v54 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v173 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v174 = v54;
      v55 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v175 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v176 = v55;
      v56 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v169 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v170 = v56;
      v57 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v171 = *(v35 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v172 = v57;
      v58 = *(v37 + 72);
      sub_1D7772AE8(&v185, &v201);
      v58(v36, &v169, ObjectType, v37);
      sub_1D785443C(v36, type metadata accessor for SubscribeButtonDestination);
      sub_1D785443C(v15, type metadata accessor for OsloSheetPurchaseDataModel);
      sub_1D785449C(v22, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      (*(v167 + 8))(v26, v168);
      v213 = v181;
      v214 = v182;
      v215 = v183;
      v216 = v184;
      v209 = v177;
      v210 = v178;
      v211 = v179;
      v212 = v180;
      v205 = v173;
      v206 = v174;
      v207 = v175;
      v208 = v176;
      v201 = v169;
      v202 = v170;
      v203 = v171;
      v204 = v172;
      sub_1D7772B44(&v201);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1D785443C(v15, type metadata accessor for OsloSheetPurchaseDataModel);
      sub_1D785449C(v22, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      return (*(v167 + 8))(v26, v168);
    }
  }

  if (v32 == *MEMORY[0x1E69B6280])
  {
    (*(v28 + 96))(v31, v27);
    v60 = v164;
    sub_1D7854340(v31, v164);
    v61 = sub_1D7852514(v1, v60);
    v63 = v62;
    v64 = v162;
    sub_1D7852880(v60, v162);
    v65 = v163;
    *v163 = v61;
    v65[1] = v63;
    v66 = v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel;
    v67 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 208);
    v213 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 192);
    v214 = v67;
    v68 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 240);
    v215 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 224);
    v216 = v68;
    v69 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 144);
    v209 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 128);
    v210 = v69;
    v70 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 176);
    v211 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 160);
    v212 = v70;
    v71 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 80);
    v205 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 64);
    v206 = v71;
    v72 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 112);
    v207 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 96);
    v208 = v72;
    v73 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16);
    v201 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
    v202 = v73;
    v74 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 48);
    v203 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 32);
    v204 = v74;
    v75 = [PaywallModel.tag.getter() identifier];
    swift_unknownObjectRelease();
    v76 = sub_1D78B5C74();
    v78 = v77;

    v65[2] = v76;
    v65[3] = v78;
    if (*(v66 + 16))
    {
      v65[4] = 0;
      v65[5] = 0;
    }

    else
    {
      v131 = [swift_unknownObjectRetain() identifier];
      swift_unknownObjectRelease();
      v132 = sub_1D78B5C74();
      v134 = v133;

      v65[4] = v132;
      v65[5] = v134;
    }

    sub_1D7740094(0, v79);
    sub_1D785450C(v64, v65 + *(v135 + 80), qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    swift_storeEnumTagMultiPayload();
    v136 = swift_unknownObjectWeakLoadStrong();
    if (!v136)
    {
      sub_1D785443C(v65, type metadata accessor for SubscribeButtonDestination);
      sub_1D785449C(v64, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      return sub_1D785449C(v60, &unk_1EC9CADF8, MEMORY[0x1E69B6718]);
    }

    v137 = *(v136 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
    v138 = v136;
    v139 = swift_getObjectType();
    v140 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v142 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v141 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v187 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v188 = v140;
    v185 = v142;
    v186 = v141;
    v143 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v145 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v144 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v191 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v192 = v143;
    v189 = v145;
    v190 = v144;
    v146 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v148 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v147 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v195 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v196 = v146;
    v193 = v148;
    v194 = v147;
    v149 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v151 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v150 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v199 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v200 = v149;
    v197 = v151;
    v198 = v150;
    v152 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v181 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v182 = v152;
    v153 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v183 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v184 = v153;
    v154 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v177 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v178 = v154;
    v155 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v179 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v180 = v155;
    v156 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v173 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v174 = v156;
    v157 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v175 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v176 = v157;
    v158 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v169 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v170 = v158;
    v159 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v171 = *(v138 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v172 = v159;
    v160 = *(v137 + 72);
    sub_1D7772AE8(&v185, &v201);
    v160(v65, &v169, v139, v137);
    sub_1D785443C(v65, type metadata accessor for SubscribeButtonDestination);
    sub_1D785449C(v64, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    sub_1D785449C(v60, &unk_1EC9CADF8, MEMORY[0x1E69B6718]);
    goto LABEL_19;
  }

  if (v32 != *MEMORY[0x1E69B6288])
  {
    if (v32 != *MEMORY[0x1E69B6290])
    {
      return (*(v28 + 8))(v31, v27);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v106 = result;
    v107 = v165;
    swift_storeEnumTagMultiPayload();
    v108 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
    v109 = swift_getObjectType();
    v110 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v112 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v111 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v187 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v188 = v110;
    v185 = v112;
    v186 = v111;
    v113 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v115 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v114 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v191 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v192 = v113;
    v189 = v115;
    v190 = v114;
    v116 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v118 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v117 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v195 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v196 = v116;
    v193 = v118;
    v194 = v117;
    v119 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v121 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v120 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v199 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v200 = v119;
    v197 = v121;
    v198 = v120;
    v122 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v181 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v182 = v122;
    v123 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v183 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v184 = v123;
    v124 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v177 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v178 = v124;
    v125 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v179 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v180 = v125;
    v126 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v173 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v174 = v126;
    v127 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v175 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v176 = v127;
    v128 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v169 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v170 = v128;
    v129 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v171 = *(v106 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v172 = v129;
    v130 = *(v108 + 72);
    sub_1D7772AE8(&v185, &v201);
    v130(v107, &v169, v109, v108);
    sub_1D785443C(v107, type metadata accessor for SubscribeButtonDestination);
LABEL_19:
    v213 = v181;
    v214 = v182;
    v215 = v183;
    v216 = v184;
    v209 = v177;
    v210 = v178;
    v211 = v179;
    v212 = v180;
    v205 = v173;
    v206 = v174;
    v207 = v175;
    v208 = v176;
    v201 = v169;
    v202 = v170;
    v203 = v171;
    v204 = v172;
    sub_1D7772B44(&v201);
    return swift_unknownObjectRelease();
  }

  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  v80 = qword_1EE09C260;
  v81 = sub_1D78B60A4();
  sub_1D78B42C4("Flexible paywall already subscriber button onTap", 48, 2, &dword_1D7739000, v80, v81, MEMORY[0x1E69E7CC0]);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v82 = *(result + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
    v83 = result;
    v84 = swift_getObjectType();
    v85 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v87 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v86 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v187 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v188 = v85;
    v185 = v87;
    v186 = v86;
    v88 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v90 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v89 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v191 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v192 = v88;
    v189 = v90;
    v190 = v89;
    v91 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v93 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v92 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v195 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v196 = v91;
    v193 = v93;
    v194 = v92;
    v94 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v96 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v95 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v199 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v200 = v94;
    v197 = v96;
    v198 = v95;
    v97 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v181 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v182 = v97;
    v98 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v183 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v184 = v98;
    v99 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v177 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v178 = v99;
    v100 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v179 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v180 = v100;
    v101 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v173 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v174 = v101;
    v102 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v175 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v176 = v102;
    v103 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v169 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v170 = v103;
    v104 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v171 = *(v83 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v172 = v104;
    v105 = *(v82 + 88);
    sub_1D7772AE8(&v185, &v201);
    v105(&v169, v84, v82);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1D7854340(uint64_t a1, uint64_t a2)
{
  sub_1D7851D38(0, &unk_1EC9CADF8, MEMORY[0x1E69B6718], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D78543D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D785443C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D785449C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7851D38(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D785450C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7851D38(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D785458C()
{
  result = qword_1EC9CAE10;
  if (!qword_1EC9CAE10)
  {
    type metadata accessor for FlexiblePaywallViewProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAE10);
  }

  return result;
}

void sub_1D785461C(uint64_t a1)
{
  sub_1D78B57A4();
  if (v1 <= 0x3F)
  {
    sub_1D785327C(319, &qword_1EE08FF10, &qword_1EE08FF20, 0x1E69B54D0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t AppleAccountSignedOutAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AppleAccountSignedOutAlert.message.getter()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();

  v5 = [v4 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D78BCAB0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D775ABD4();
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = sub_1D78B5C94();

  return v7;
}

uint64_t AppleAccountSignedOutAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D7854978(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D78B3134();

  return v4;
}

uint64_t sub_1D7854A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1D78B3134();

  return v6;
}

uint64_t sub_1D7854B38@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  sub_1D78555AC(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v87 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7855678(0);
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v86 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78157B8(0);
  v10 = v9;
  v96 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78556F4(0);
  v98 = v14;
  v85 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v84 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v79 - v19;
  sub_1D78557C0(&qword_1EC9CAE38, sub_1D78157B8, MEMORY[0x1E69D76B0]);
  sub_1D78557C0(&qword_1EC9CAE40, sub_1D78157B8, MEMORY[0x1E69D76A8]);
  v97 = v20;
  v94 = v10;
  sub_1D78B3C74();
  v92 = a1;
  v21 = *a1;
  HIDWORD(v91) = v21 != 2;
  if (v21 == 2 || (v21 & 1) == 0)
  {
    LODWORD(v91) = 0;
  }

  else
  {
    v91 = 1;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  v24 = [v23 bundleForClass_];
  v25 = sub_1D78B3134();
  v27 = v26;

  v82 = v23;
  v83 = ObjCClassFromMetadata;
  v28 = [v23 bundleForClass_];
  v29 = sub_1D78B3134();
  v31 = v30;

  v32 = v92;
  v33 = *(v92 + 1);
  v34 = *(v92 + 2);
  *&v105 = v25;
  *(&v105 + 1) = v27;
  *&v106 = v29;
  *(&v106 + 1) = v31;
  *&v107 = v33;
  *(&v107 + 1) = v34;
  LOBYTE(v108[0]) = BYTE4(v91);
  v35 = sub_1D77CE220();

  v95 = v35;
  sub_1D78B4584();
  sub_1D78B3C64();
  v36 = *(v96 + 8);
  v96 += 8;
  v93 = v36;
  v36(v13, v94);
  v37 = sub_1D785542C(v32);
  v80 = v38;
  v81 = v37;
  v39 = *(v32 + 24);
  v40 = *(v39 + 16);
  if (v40 >= 2 && v92[96] == 1)
  {
    v41 = (v39 + 40);
    do
    {
      v43 = *(v41 - 1);
      v44 = *v41;
      if (v43 == v33 && v44 == v34)
      {
        v42 = 1;
      }

      else
      {
        v42 = sub_1D78B6724() & 1;
      }

      *&v105 = v43;
      *(&v105 + 1) = v44;
      v106 = v42;
      v107 = 0uLL;
      LOBYTE(v108[0]) = 0x80;

      sub_1D78B4584();
      sub_1D78B3C64();
      v93(v13, v94);
      v41 += 2;
      --v40;
    }

    while (v40);
  }

  v46 = [v82 bundleForClass_];
  v47 = sub_1D78B3134();
  v49 = v48;

  v105 = 0uLL;
  *&v106 = v47;
  *(&v106 + 1) = v49;
  *&v107 = v81;
  *(&v107 + 1) = v80;
  LOBYTE(v108[0]) = v91 | 0x40;
  sub_1D78B4584();
  sub_1D78B3C64();
  v93(v13, v94);
  v50 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v51 = v92;
  v52 = *&v92[*(v50 + 44)];
  v53 = [v52 headline];
  v96 = sub_1D78B5C74();
  v55 = v54;

  v56 = [v52 subheadline];
  v57 = sub_1D78B5C74();
  v59 = v58;

  v60 = [v52 ctaButtonText];
  v61 = sub_1D78B5C74();
  v63 = v62;

  v64 = [v52 policyText];
  v65 = [v64 text];

  v66 = sub_1D78B5C74();
  v68 = v67;

  v69 = *(v51 + 13);
  *&v101 = v96;
  *(&v101 + 1) = v55;
  *&v102 = v57;
  *(&v102 + 1) = v59;
  *&v103 = v61;
  *(&v103 + 1) = v63;
  *v104 = v66;
  *&v104[8] = v68;
  *&v104[16] = v69;
  v104[24] = BYTE4(v91) | v91;
  v107 = v103;
  v108[0] = *v104;
  *(v108 + 9) = *&v104[9];
  v105 = v101;
  v106 = v102;
  sub_1D77CF7F0(&v105, &v100);
  v70 = v85;
  (*(v85 + 16))(v84, v97, v98);
  swift_unknownObjectRetain();
  sub_1D7855808(&v101, &v99);
  sub_1D77CE118();
  v71 = v86;
  sub_1D78B46E4();
  sub_1D78558B8(0, &qword_1EC9CAE48, sub_1D7855678);
  v72 = v88;
  v73 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1D78BCAB0;
  v75 = v89;
  (*(v72 + 16))(v74 + v73, v71, v89);
  v76 = sub_1D78557C0(&qword_1EC9CAE20, sub_1D7855678, MEMORY[0x1E69D7990]);
  v77 = sub_1D78557C0(&qword_1EC9CAE28, sub_1D7855678, MEMORY[0x1E69D7988]);
  MEMORY[0x1DA700EF0](v74, v75, v76, v77);
  sub_1D78B51C4();
  sub_1D7855864(&v101);
  (*(v72 + 8))(v71, v75);
  return (*(v70 + 8))(v97, v98);
}

uint64_t sub_1D785542C(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D78558B8(0, &qword_1EE08FA10, sub_1D778CD10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;

  v7 = sub_1D78B5C94();

  return v7;
}

void sub_1D78555AC(uint64_t a1)
{
  if (!qword_1EC9CAE18)
  {
    sub_1D7855678(255);
    sub_1D78557C0(&qword_1EC9CAE20, sub_1D7855678, MEMORY[0x1E69D7990]);
    sub_1D78557C0(&qword_1EC9CAE28, sub_1D7855678, MEMORY[0x1E69D7988]);
    v1 = sub_1D78B3C84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CAE18);
    }
  }
}

void sub_1D7855678(uint64_t a1)
{
  if (!qword_1EC9CA2A0)
  {
    sub_1D77CE118();
    sub_1D77CE220();
    v1 = sub_1D78B4704();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA2A0);
    }
  }
}

void sub_1D78556F4(uint64_t a1)
{
  if (!qword_1EC9CAE30)
  {
    sub_1D78157B8(255);
    sub_1D78557C0(&qword_1EC9CAE38, sub_1D78157B8, MEMORY[0x1E69D76B0]);
    sub_1D78557C0(&qword_1EC9CAE40, sub_1D78157B8, MEMORY[0x1E69D76A8]);
    v1 = sub_1D78B3C84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CAE30);
    }
  }
}

uint64_t sub_1D78557C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D78558B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B66F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D785590C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PurchaseContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE09C268;
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D78BCAB0;
  sub_1D7859018(a1, &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
  v10 = sub_1D78B5CC4();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D775ABD4();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v13 = sub_1D78B60A4();
  sub_1D78B42C4("AllPurchaseTransactionObserver received purchaseDidSucceed callback from AMSSheet with purchaseContext=%{public}@", 113, 2, &dword_1D7739000, v8, v13, v9);

  v14 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_familySharingLandingPageLauncher + 24];
  v15 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_familySharingLandingPageLauncher + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_familySharingLandingPageLauncher], v14);
  (*(v15 + 8))(v14, v15);
  v16 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24];
  v17 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider], v16);
  (*(v17 + 8))(&aBlock, v16, v17);
  v18 = v41;
  v19 = v42;
  __swift_project_boxed_opaque_existential_1(&aBlock, v41);
  v44 = 0x2000000000000000;
  v19[1](&v44, a1, v18, v19);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v20 = a1[5];
  v21 = a1[6];
  if (v20 == sub_1D78B5C74() && v21 == v22)
  {
  }

  else
  {
    v23 = sub_1D78B6724();

    if ((v23 & 1) == 0)
    {
      v24 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_tagController];
      v25 = sub_1D78B5C44();
      sub_1D7788448();
      v26 = sub_1D78B6104();
      sub_1D7859018(a1, &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
      v27 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v2;
      sub_1D777044C(&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
      v42 = sub_1D7859468;
      v43 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v40 = sub_1D7752E68;
      v41 = &block_descriptor_37_0;
      v29 = _Block_copy(&aBlock);
      v30 = v2;

      [v24 fetchTagForTagID:v25 qualityOfService:25 callbackQueue:v26 completionHandler:v29];
      _Block_release(v29);
    }
  }

  sub_1D7773164(a1[8]);
  if (v31)
  {

    v32 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_entitlementService];
    sub_1D7859018(a1, &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
    v33 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v2;
    sub_1D777044C(&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
    v42 = sub_1D7859518;
    v43 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D781E048;
    v41 = &block_descriptor_43_1;
    v35 = _Block_copy(&aBlock);
    v36 = v2;

    [v32 performEntitlementWithIgnoreCache:0 completion:v35];
    _Block_release(v35);
  }
}

void sub_1D7855E20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v5 = qword_1EE09C268;
    v6 = sub_1D78B6094();
    sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    v8 = a2;
    sub_1D7812D44(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    v9 = sub_1D78B5CC4();
    v11 = v10;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    sub_1D78B42C4("Could not fetch tag when autofollowing channel post services bundle purchase error=%{public}@", 93, 2, &dword_1D7739000, v5, v6, v7);
  }

  else if (a1)
  {
    v13 = swift_unknownObjectRetain();
    sub_1D7855FD0(v13, a4);

    swift_unknownObjectRelease();
  }
}

void sub_1D7855FD0(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(*(v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_appConfigurationManager) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v6 = [v5 preSubscribedNotificationsChannelIDs];

  if (v6)
  {
    v7 = sub_1D78B5EB4();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = [a1 identifier];
  v9 = sub_1D78B5C74();
  v11 = v10;

  v23[0] = v9;
  v23[1] = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v22[2] = v23;
  LOBYTE(v8) = sub_1D781DA18(sub_1D7782F40, v22, v7);

  v14 = *(v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_subscriptionController);
  v23[0] = 0;
  [v14 addSubscriptionToTag:a1 notificationsEnabled:v8 & 1 error:v23];
  v15 = v23[0];
  v16 = *(v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24);
  v17 = *(v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider), v16);
  v18 = *(v17 + 8);
  v19 = v15;
  v18(v23, v16, v17);
  v20 = v24;
  v21 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v21 + 16))(a1, a2, v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v23);
}

void sub_1D7856214(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = [*(a4 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_configurationManager) configuration];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  if ([v8 respondsToSelector_])
  {
    v10 = [v9 paidBundleConfig];
    swift_unknownObjectRelease();
    v11 = [v10 offeredBundlePurchaseIDs];

    if (!v11)
    {
      return;
    }

    v12 = MEMORY[0x1E69E6158];
    v13 = sub_1D78B5EB4();

    if (!a1)
    {
      goto LABEL_19;
    }

    v25 = sub_1D78565A4(a1, v13);

    if (!v25)
    {
      return;
    }

    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager), *(a4 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager + 24));
    sub_1D77F5354(*a5, a5[1]);
    v14 = sub_1D7773164(a5[8]);
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v18 = qword_1EE09C268;
      sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D78BCAB0;
      *(v19 + 56) = v12;
      *(v19 + 64) = sub_1D775ABD4();
      *(v19 + 32) = v16;
      *(v19 + 40) = v17;

      v20 = sub_1D78B60A4();
      sub_1D78B42C4("Reporting purchased subscription event to iAd for qtoken=%@", 59, 2, &dword_1D7739000, v18, v20, v19);

      v21 = [v25 inAppAdamID];
      v22 = [v21 stringValue];

      sub_1D78B5C74();
      v23 = [v25 servicesBundlePurchaseID];
      if (v23)
      {
        v24 = v23;
        sub_1D78B5C74();
      }

      sub_1D78B4244();
      sub_1D78B4234();

LABEL_19:

      return;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void *sub_1D78565A4(unint64_t a1, uint64_t a2)
{
  v18 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D78B6534())
  {
    v4 = 0;
    v17 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v17)
      {
        v5 = MEMORY[0x1DA703700](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 inAppAdamID];
      v9 = [v8 stringValue];

      v10 = sub_1D78B5C74();
      v12 = v11;

      v19[0] = v10;
      v19[1] = v12;
      MEMORY[0x1EEE9AC00](v13, v14);
      v16[2] = v19;
      LOBYTE(v10) = sub_1D781DA18(sub_1D78598B4, v16, v18);

      if (v10)
      {
        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 0;
}

id sub_1D785673C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v59 = a4;
  sub_1D773F0BC(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PurchaseContext(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = (v53 - v20);
  sub_1D7859018(a3, v12, sub_1D773F0BC);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v22 = sub_1D773F0BC;
    v23 = v12;
    return sub_1D7858F9C(v23, v22);
  }

  v55 = v14;
  v56 = a2;
  sub_1D777044C(v12, v21);
  v24 = *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24];
  v25 = *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider], v24);
  (*(v25 + 8))(aBlock, v24, v25);
  v26 = v61;
  v27 = v62;
  __swift_project_boxed_opaque_existential_1(aBlock, v61);
  v64 = 0x2000000000000000;
  (*(v27 + 1))(&v64, v21, v26, v27);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager], *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager + 24]);
  v28 = *v21;
  v57 = v21[1];
  v58 = v28;
  sub_1D77F5354(v28, v57);
  v29 = sub_1D7773164(v21[8]);
  if (!v30)
  {
LABEL_8:
    if (v21[2] == 1)
    {
      v39 = *__swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker], *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker + 24]);
      sub_1D78B41F4();
      sub_1D7788448();
      v40 = sub_1D78B6104();
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      *(v41 + 24) = 0;

      sub_1D78B4094();

      v42 = swift_allocObject();
      *(v42 + 16) = v39;
      *(v42 + 24) = 0;

      v43 = sub_1D78B4014();
      sub_1D78B40D4();
    }

    else
    {
      v44 = *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseController];
      v45 = sub_1D78B5C44();
      v46 = sub_1D78B5C44();
      [v44 addAppStorePurchaseWithTagID:v45 purchaseID:v46];

      v47 = *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_tagController];
      v48 = sub_1D78B5C44();
      sub_1D7788448();
      v43 = sub_1D78B6104();
      sub_1D7859018(v21, v18, type metadata accessor for PurchaseContext);
      v49 = (*(v55 + 80) + 24) & ~*(v55 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = v5;
      sub_1D777044C(v18, v50 + v49);
      v62 = sub_1D7859250;
      v63 = v50;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7752E68;
      v61 = &block_descriptor_13_0;
      v51 = _Block_copy(aBlock);
      v52 = v5;

      [v47 fetchTagForTagID:v48 qualityOfService:25 callbackQueue:v43 completionHandler:v51];
      _Block_release(v51);
    }

    v22 = type metadata accessor for PurchaseContext;
    v23 = v21;
    return sub_1D7858F9C(v23, v22);
  }

  v31 = v29;
  v32 = v30;
  v53[2] = a1;
  v54 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v33 = qword_1EE09C268;
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D78BCAB0;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = sub_1D775ABD4();
  *(v34 + 32) = v31;
  *(v34 + 40) = v32;

  v35 = sub_1D78B60A4();
  sub_1D78B42C4("Reporting purchased subscription event to iAd for qtoken=%@", 59, 2, &dword_1D7739000, v33, v35, v34);

  v53[1] = v21[5];
  result = [v59 price];
  if (result)
  {
    v37 = result;
    sub_1D78B4244();
    v38 = [v37 stringValue];

    sub_1D78B5C74();
    sub_1D78B4234();

    v18 = v54;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}