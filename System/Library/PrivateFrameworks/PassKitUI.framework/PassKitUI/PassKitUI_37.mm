uint64_t sub_1BD3FFE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 112);
        v16[6] = *(v3 + 96);
        v16[7] = v5;
        v17 = *(v3 + 128);
        v6 = *(v3 + 48);
        v16[2] = *(v3 + 32);
        v16[3] = v6;
        v7 = *(v3 + 80);
        v16[4] = *(v3 + 64);
        v16[5] = v7;
        v8 = *(v3 + 16);
        v16[0] = *v3;
        v16[1] = v8;
        v9 = *(v4 + 112);
        v18[6] = *(v4 + 96);
        v18[7] = v9;
        v19 = *(v4 + 128);
        v10 = *(v4 + 48);
        v18[2] = *(v4 + 32);
        v18[3] = v10;
        v11 = *(v4 + 80);
        v18[4] = *(v4 + 64);
        v18[5] = v11;
        v12 = *(v4 + 16);
        v18[0] = *v4;
        v18[1] = v12;
        sub_1BD31435C(v16, v15);
        sub_1BD31435C(v18, v15);
        v13 = sub_1BD314DA4(v16, v18);
        sub_1BD3143B8(v18);
        sub_1BD3143B8(v16);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v3 += 136;
        v4 += 136;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_1BD3FFF58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    v5 = &selRef_hoursOfDay;
    while (v2)
    {
      v58 = v3;
      v59 = v2;
      v7 = *(v3 - 1);
      v6 = *v3;
      v9 = *(v4 - 1);
      v8 = *v4;
      v57 = v4;
      v61 = *v4;
      v10 = v5[20];
      v11 = v7;
      v12 = v9;
      v60 = v6;
      v13 = [v11 v10];
      if (!v13)
      {
        goto LABEL_24;
      }

      v14 = v13;
      v15 = sub_1BE052434();
      v17 = v16;

      v18 = v5;
      v19 = v12;
      v20 = [v12 v5[20]];
      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20;
      v22 = sub_1BE052434();
      v24 = v23;

      if (v15 == v22 && v17 == v24)
      {
        v17, v25, v26, v27, v28, v29, v30, v31;
        v24, v32, v33, v34, v35, v36, v37, v38;
        v5 = v18;
      }

      else
      {
        v39 = sub_1BE053B84();
        v17, v40, v41, v42, v43, v44, v45, v46;
        v24, v47, v48, v49, v50, v51, v52, v53;
        v5 = v18;
        if ((v39 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v6)
      {
        if (!v8)
        {
LABEL_20:

          return;
        }

        sub_1BD0E5E8C(0, &qword_1EBD43B00, 0x1E69B8780);
        v54 = v60;
        v55 = v61;
        v56 = sub_1BE053074();

        if ((v56 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v8)
        {
          goto LABEL_20;
        }
      }

      v3 = v58 + 2;
      v4 = v57 + 2;
      v2 = v59 - 1;
      if (v59 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1BD4001A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    sub_1BE04AF64();
    v15 = *(v5 + 72);
    while (1)
    {
      sub_1BD40FE9C(v13, v10, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
      sub_1BD40FE9C(v14, v7, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
      sub_1BD40F6B8(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      if ((sub_1BE052334() & 1) == 0)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
      if ((sub_1BE052334() & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
      {
        break;
      }

      sub_1BD40B494(*&v10[*(v4 + 24)], *&v7[*(v4 + 24)]);
      v17 = v16;
      sub_1BD40FF04(v7, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
      sub_1BD40FF04(v10, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1BD40FF04(v7, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
    sub_1BD40FF04(v10, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
    goto LABEL_13;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1BD40043C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45978, &qword_1BE10DE00);
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v38 - v11;
  v44 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown(0);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  if (!v18 || a1 == a2)
  {
    return 1;
  }

  v48 = &v38 - v17;
  v39 = v14;
  v40 = v10;
  v38 = v7;
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v41 = *(v16 + 72);
  v42 = (v5 + 48);
  v22 = &unk_1BE0D39B0;
  while (1)
  {
    v23 = v22;
    v24 = v48;
    result = sub_1BD40FE9C(v20, v48, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    v46 = v21;
    v47 = v20;
    sub_1BD40FE9C(v21, v14, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
    sub_1BE049B04();
    sub_1BD40F6B8(&qword_1EBD45980, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AF0]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v26 = v44;
    if (v50 != v49)
    {
      goto LABEL_19;
    }

    sub_1BD842AA4(*(v24 + *(v44 + 20)), *&v14[*(v44 + 20)]);
    if ((v27 & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
    {
      goto LABEL_19;
    }

    v28 = *(v26 + 28);
    v29 = *(v43 + 48);
    v30 = v24 + v28;
    v22 = v23;
    sub_1BD0DE19C(v30, v12, &qword_1EBD44F98, v23);
    sub_1BD0DE19C(&v14[v28], &v12[v29], &qword_1EBD44F98, v23);
    v31 = *v42;
    if ((*v42)(v12, 1, v4) == 1)
    {
      if (v31(&v12[v29], 1, v4) != 1)
      {
        goto LABEL_18;
      }

      sub_1BD0DE53C(v12, &qword_1EBD44F98, v23);
      sub_1BD40FF04(v14, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
      sub_1BD40FF04(v48, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
    }

    else
    {
      v32 = v40;
      sub_1BD0DE19C(v12, v40, &qword_1EBD44F98, v23);
      if (v31(&v12[v29], 1, v4) == 1)
      {
        sub_1BD40FF04(v32, type metadata accessor for FinanceKitSpendingTrend);
        v14 = v39;
LABEL_18:
        sub_1BD0DE53C(v12, &qword_1EBD45978, &qword_1BE10DE00);
        v24 = v48;
LABEL_19:
        sub_1BD40FF04(v14, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
        sub_1BD40FF04(v24, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
        return 0;
      }

      v33 = &v12[v29];
      v34 = v4;
      v35 = v38;
      sub_1BD40F820(v33, v38, type metadata accessor for FinanceKitSpendingTrend);
      v36 = sub_1BD362DBC(v32, v35);
      v37 = v35;
      v4 = v34;
      sub_1BD40FF04(v37, type metadata accessor for FinanceKitSpendingTrend);
      sub_1BD40FF04(v32, type metadata accessor for FinanceKitSpendingTrend);
      sub_1BD0DE53C(v12, &qword_1EBD44F98, v22);
      v14 = v39;
      sub_1BD40FF04(v39, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
      sub_1BD40FF04(v48, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }

    v21 = v46 + v41;
    v20 = v47 + v41;
    v18 = v45 - 1;
    if (v45 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD400A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    while (v2)
    {
      v38 = v2;
      v39 = v3;
      v37 = v4;
      v20 = sub_1BE052434();
      v40 = v21;
      v23 = sub_1BE052434();
      v29 = v22;
      if (v20 == v23 && v40 == v22)
      {
        v40, v22, v23, v24, v25, v26, v27, v28;
        v29, v30, v31, v32, v33, v34, v35, v36;
      }

      else
      {
        v5 = sub_1BE053B84();
        v40, v6, v7, v8, v9, v10, v11, v12;
        v29, v13, v14, v15, v16, v17, v18, v19;
        if ((v5 & 1) == 0)
        {
          return;
        }
      }

      v3 = v39 + 1;
      v4 = v37 + 1;
      v2 = v38 - 1;
      if (v38 == 1)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BD400D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    sub_1BD40F6B8(v32, v33, v34);
    v26 = sub_1BE052334();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

void *sub_1BD400FE4()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 96);
  v10 = v9;
  return v9;
}

uint64_t WalletSettingsModel.passes.getter()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return sub_1BE048C84();
}

void *sub_1BD401144()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 24);
  v10 = v9;
  return v9;
}

id sub_1BD4011EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 24);
  *a2 = v12;

  return v12;
}

void sub_1BD4012A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD4012D4(v1);
}

void sub_1BD4012D4(void *a1)
{
  v3 = *(v1 + 24);
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD456C0, 0x1E69B91E8);
  v4 = v3;
  v5 = a1;
  v6 = sub_1BE053074();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + 24);
LABEL_8:
  *(v1 + 24) = a1;
  v16 = v5;

  WalletSettingsModel.updateDefaultPassToSelection()();
}

uint64_t sub_1BD401484@<X0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v19 = v1;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = v1[5];
  v12 = v1[6];
  v13 = v19[7];
  v14 = v19[8];
  v15 = v19[9];
  v16 = v19[10];
  *a1 = v11;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v15;
  a1[5] = v16;
  v17 = v11;
  sub_1BE048964();
  sub_1BE048964();
  return sub_1BE048964();
}

void *sub_1BD401558()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 32);
  v10 = v9;
  return v9;
}

uint64_t sub_1BD401600()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD4016B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return sub_1BE048C84();
}

void WalletSettingsModel.passes.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_1BE048C84();
  v5 = sub_1BD3FE328(v4, a1, &qword_1EBD456C0, 0x1E69B91E8);
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
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B584();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    a1, v29, v30, v31, v32, v33, v34, v35;
  }
}

uint64_t (*WalletSettingsModel.passes.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  KeyPath = swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  swift_beginAccess();
  return sub_1BD401A5C;
}

void sub_1BD401A5C(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  KeyPath = swift_getKeyPath();
  sub_1BE04B5A4();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;

  free(v1);
}

Swift::Void __swiftcall WalletSettingsModel.updateDefaultPassToSelection()()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v61 = v0;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v14 = *(v0 + 24);
  if (v14)
  {
    v15 = v14;
    v16 = [v15 uniqueID];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1BE052434();
      v20 = v19;
      sub_1BE04D1E4();
      sub_1BE048C84();
      v21 = sub_1BE04D204();
      v22 = sub_1BE052C54();
      v20, v23, v24, v25, v26, v27, v28, v29;
      if (os_log_type_enabled(v21, v22))
      {
        v30 = swift_slowAlloc();
        v59 = v18;
        v31 = v30;
        v32 = swift_slowAlloc();
        v60 = v3;
        v61 = v32;
        v33 = v32;
        *v31 = 136315138;
        v34 = sub_1BD123690(v59, v20, &v61);
        v59 = v2;
        v35 = v15;
        v36 = v34;
        v20, v37, v38, v39, v40, v41, v42, v43;
        *(v31 + 4) = v36;
        v15 = v35;
        _os_log_impl(&dword_1BD026000, v21, v22, "Updating default pass to pass with unique id: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33, v44, v45, v46, v47, v48, v49, v50);
        MEMORY[0x1BFB45F20](v33, -1, -1);
        MEMORY[0x1BFB45F20](v31, -1, -1);

        (*(v60 + 8))(v5, v59);
      }

      else
      {

        v20, v51, v52, v53, v54, v55, v56, v57;
        (*(v3 + 8))(v5, v2);
      }

      [*(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_paymentService) setDefaultPaymentPassUniqueIdentifier_];
    }

    else
    {
      v17 = v15;
    }
  }
}

uint64_t sub_1BD401D9C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD401E54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  *a2 = *(v3 + 32);
  return sub_1BE048C84();
}

void sub_1BD401F40(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (sub_1BD3FFD98(v3, a1))
  {
    *(v1 + 32) = a1;
    v3, v4, v5, v6, v7, v8, v9, v10;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B584();
    KeyPath, v12, v13, v14, v15, v16, v17, v18;
    a1, v19, v20, v21, v22, v23, v24, v25;
  }
}

void sub_1BD402078(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
  sub_1BE048C84();
  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD4020E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = v3[5];
  v13 = v3[6];
  v14 = v3[7];
  v15 = v3[8];
  v16 = v3[9];
  v17 = v3[10];
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v16;
  a2[5] = v17;
  v18 = v12;
  sub_1BE048964();
  sub_1BE048964();
  return sub_1BE048964();
}

void sub_1BD4021B4(_OWORD *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD402290(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 16);
  v32 = *(a2 + 32);
  v4 = v32;
  v33 = v3;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  *(a1 + 40) = *a2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  v9 = v2;
  sub_1BE048964();
  sub_1BD0DE19C(&v33, v31, &qword_1EBD45928, &qword_1BE0D4AE0);
  sub_1BD0DE19C(&v32, v31, &qword_1EBD45930, &qword_1BE0D4AE8);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v7, v17, v18, v19, v20, v21, v22, v23;
  v5, v24, v25, v26, v27, v28, v29, v30;
}

uint64_t sub_1BD402354()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  return sub_1BE048964();
}

void sub_1BD4023F8(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 88);
  if (v10 == a1)
  {

    v10, a2, a3, a4, a5, a6, a7, a8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B584();
    KeyPath, v12, v13, v14, v15, v16, v17, v18;
    a1, v19, v20, v21, v22, v23, v24, v25;
  }
}

void sub_1BD40252C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E6C8, 0x1E69B8730);
  v5 = v4;
  v6 = a1;
  v7 = sub_1BE053074();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 96);
LABEL_8:
  *(v2 + 96) = a1;
}

uint64_t sub_1BD4026BC()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD402730()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  return sub_1BE048C84();
}

uint64_t sub_1BD4027DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors);
  return sub_1BE048C84();
}

void sub_1BD402890(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors;
  v11 = *(v8 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors);
  if (!v11)
  {
    if (!a1)
    {
      v21 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B584();
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    a1, v30, v31, v32, v33, v34, v35, v36;
    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v12 = sub_1BE048C84();
  v13 = sub_1BD3FE328(v12, a1, &qword_1EBD420C0, 0x1E69B8678);
  v11, v14, v15, v16, v17, v18, v19, v20;
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v21 = *(v8 + v10);
LABEL_8:
  *(v8 + v10) = a1;

  v21, a2, a3, a4, a5, a6, a7, a8;
}

void *sub_1BD402A10()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext);
  v10 = v9;
  return v9;
}

void sub_1BD402AC0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD459C8, 0x1E696EE50);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD402C58(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext);
  *(a1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext) = a2;
  v3 = a2;
}

id sub_1BD402CA8()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults);

  return v9;
}

id sub_1BD402D60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults);
  *a2 = v12;

  return v12;
}

void sub_1BD402E20(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults);
  sub_1BD0E5E8C(0, &qword_1EBD459A8, 0x1E69B8CF8);
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
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
  }
}

uint64_t sub_1BD402FA8(uint64_t a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD403060@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v15);
  return sub_1BE048C84();
}

void sub_1BD40312C(void *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();
  v9 = *(v5 + v8);
  v10 = sub_1BE048C84();
  LOBYTE(a3) = a3(v10, a1);
  v9, v11, v12, v13, v14, v15, v16, v17;
  if (a3)
  {
    v25 = *(v5 + v8);
    *(v5 + v8) = a1;
    v25, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B584();
    KeyPath, v27, v28, v29, v30, v31, v32, v33;
    a1, v34, v35, v36, v37, v38, v39, v40;
  }
}

void sub_1BD40327C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
  sub_1BE048C84();
  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t WalletSettingsModel.__allocating_init()()
{
  v0 = swift_allocObject();
  WalletSettingsModel.init()();
  return v0;
}

uint64_t *WalletSettingsModel.init()()
{
  v1 = v0;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v205 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v204 = &v198 - v2;
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = v3;
  type metadata accessor for HardwareConfigurationModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  sub_1BE04B5C4();
  *(v1 + 88) = v4;
  *(v1 + 96) = 0;
  *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors) = 0;
  *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext) = 0;
  v5 = (v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath);
  *v5 = 0xD000000000000018;
  v5[1] = 0x80000001BE128370;
  v6 = (v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath);
  *v6 = 0xD000000000000014;
  v6[1] = 0x80000001BE128390;
  v7 = &OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel__selectedQuantity;
  v8 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_paymentService;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__publishers) = MEMORY[0x1E69E7CD0];
  v9 = &OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel__selectedQuantity;
  sub_1BE04B5C4();
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = [result passesOfType_];

  sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
  v13 = sub_1BE052744();

  v14 = sub_1BD3FCF3C(v13, 0x1E69B91E8);
  v13, v15, v16, v17, v18, v19, v20, v21;
  if (v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = v3;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults) = v23;
  *(v1 + 16) = v22;
  v24 = objc_opt_self();
  v25 = v23;
  sub_1BE048C84();
  result = [v24 defaultInstance];
  if (!result)
  {
    goto LABEL_62;
  }

  v26 = result;
  sub_1BD40DD40(v25, result, v22, v214);

  v27 = v214[1];
  *(v1 + 40) = v214[0];
  *(v1 + 56) = v27;
  *(v1 + 72) = v214[2];
  v28 = [objc_opt_self() sharedService];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 context];
    if (v30 && (v31 = v30, v32 = [v30 configuration], v31, v32) && (v33 = objc_msgSend(v32, sel_contactFormatConfiguration), v32, v33))
    {
      v34 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];

      *(v1 + 96) = v34;
    }

    else
    {
    }
  }

  v203 = v25;
  v35 = PKOrderManagementDisabled() ^ 1;
  v36 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__orderTrackingEnabled;
  swift_beginAccess();
  LOBYTE(v212) = v35;
  v202 = v36;
  sub_1BE04D874();
  swift_endAccess();
  v207 = v22 >> 62;
  if (v22 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v38 = type metadata accessor for TransactionsModel(0);
    v39 = MEMORY[0x1BFB3F2F0](i, MEMORY[0x1E69E6158], v38, MEMORY[0x1E69E6168]);
    v210 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__cachedTransactionModelsByUniqueID;
    *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__cachedTransactionModelsByUniqueID) = v39;
    v40 = [*(v1 + v7[286]) defaultPaymentPassUniqueIdentifier];
    v211 = v1;
    if (!v40)
    {
      break;
    }

    v41 = v40;
    v208 = sub_1BE052434();
    v43 = v42;

    KeyPath = swift_getKeyPath();
    v213 = v1;
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    KeyPath, v45, v46, v47, v48, v49, v50, v51;
    swift_beginAccess();
    v52 = *(v1 + 16);
    v199 = v22;
    if (v52 >> 62)
    {
      v53 = sub_1BE053704();
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1BE048C84();
    if (!v53)
    {
LABEL_32:
      v43, v54, v55, v56, v57, v58, v59, v60;
      v52, v90, v91, v92, v93, v94, v95, v96;
      v7 = 0;
LABEL_35:
      v1 = v211;
      sub_1BD4012D4(v7);
      v22 = v199;
      v9 = &OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel__selectedQuantity;
      break;
    }

    v61 = 0;
    v209 = v52 & 0xC000000000000001;
    v9 = (v52 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v209)
      {
        v62 = MEMORY[0x1BFB40900](v61, v52);
      }

      else
      {
        if (v61 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v62 = *(v52 + 8 * v61 + 32);
      }

      v7 = v62;
      v22 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      v63 = [v62 uniqueID];
      if (v63)
      {
        v64 = v43;
        v65 = v63;
        v66 = sub_1BE052434();
        v68 = v67;

        v43 = v64;
        if (v66 == v208 && v68 == v64)
        {
          v64, v69, v208, v70, v71, v72, v73, v74;
          v52, v97, v98, v99, v100, v101, v102, v103;
          v111 = v68;
          goto LABEL_34;
        }

        v1 = sub_1BE053B84();
        v68, v76, v77, v78, v79, v80, v81, v82;
        if (v1)
        {
          v64, v83, v84, v85, v86, v87, v88, v89;
          v111 = v52;
LABEL_34:
          v111, v104, v105, v106, v107, v108, v109, v110;
          goto LABEL_35;
        }
      }

      ++v61;
      if (v22 == v53)
      {
        goto LABEL_32;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  v112 = *MEMORY[0x1E69BBBD8];
  v113 = *MEMORY[0x1E69BC0C8];
  v114 = objc_opt_self();
  v115 = v112;
  v116 = v113;
  v117 = [v114 defaultCenter];
  [v117 addObserver:v1 selector:sel_passLibraryDidChangeWithNotification_ name:v115 object:0];

  v118 = [v114 defaultCenter];
  [v118 addObserver:v1 selector:sel_paymentOptionsDidChange name:v116 object:0];

  v201 = v115;
  v200 = v116;
  if (v207)
  {
    v7 = sub_1BE053704();
  }

  else
  {
    v7 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v209 = v9[285];
  swift_beginAccess();
  if (v7)
  {
    v126 = 0;
    v207 = v22 & 0xFFFFFFFFFFFFFF8;
    v208 = (v22 & 0xC000000000000001);
    v9 = v211;
    do
    {
      if (v208)
      {
        v127 = MEMORY[0x1BFB40900](v126, v22);
      }

      else
      {
        if (v126 >= *(v207 + 16))
        {
          goto LABEL_55;
        }

        v127 = *(v22 + 8 * v126 + 32);
      }

      v128 = v127;
      v129 = (v126 + 1);
      if (__OFADD__(v126, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      result = [v127 uniqueID];
      if (!result)
      {
        __break(1u);
        goto LABEL_61;
      }

      v130 = result;
      v131 = sub_1BE052434();
      v133 = v132;

      v1 = swift_getKeyPath();
      v212 = v9;
      sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
      sub_1BE04B594();
      v1, v134, v135, v136, v137, v138, v139, v140;
      v148 = *(v9 + v210);
      if (v148[2])
      {
        sub_1BE048C84();
        sub_1BD148F70(v131, v133);
        v1 = v149;
        v133, v149, v150, v151, v152, v153, v154, v155;
        v148, v156, v157, v158, v159, v160, v161, v162;
        if (v1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v133, v141, v142, v143, v144, v145, v146, v147;
      }

LABEL_43:
      ++v126;
    }

    while (v129 != v7);
  }

  v22, v119, v120, v121, v122, v123, v124, v125;
  v163 = v211;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v164 = v204;
  sub_1BE04D884();
  swift_endAccess();
  sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600, &qword_1BE0D4A30, MEMORY[0x1E695C068]);
  v165 = v206;
  v166 = sub_1BE04D954();
  (*(v205 + 8))(v164, v165);
  v167 = swift_getKeyPath();
  v212 = v163;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  v167, v168, v169, v170, v171, v172, v173, v174;
  v212 = v163;
  v175 = swift_getKeyPath();
  sub_1BE04B5B4();
  v175, v176, v177, v178, v179, v180, v181, v182;
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();
  v166, v183, v184, v185, v186, v187, v188, v189;
  v212 = v163;
  v190 = swift_getKeyPath();
  sub_1BE04B5A4();
  v190, v191, v192, v193, v194, v195, v196, v197;

  return v163;
}

id WalletSettingsModel.transactionsModelForPass(pass:)(void *a1)
{
  v2 = v1;
  result = [a1 uniqueID];
  if (result)
  {
    v5 = result;
    v6 = sub_1BE052434();
    v8 = v7;

    KeyPath = swift_getKeyPath();
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
    v17 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__cachedTransactionModelsByUniqueID;
    swift_beginAccess();
    v25 = *(v2 + v17);
    if (v25[2])
    {
      sub_1BE048C84();
      v26 = sub_1BD148F70(v6, v8);
      v28 = v27;
      v8, v27, v29, v30, v31, v32, v33, v34;
      if (v28)
      {
        v35 = *(v25[7] + 8 * v26);
        v25, v36, v37, v38, v39, v40, v41, v42;
        return v35;
      }

      v43 = v25;
    }

    else
    {
      v43 = v8;
    }

    v43, v18, v19, v20, v21, v22, v23, v24;
    return sub_1BD4041A8(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

PKSecureElementPass_optional __swiftcall WalletSettingsModel.passForUniqueID(uniqueID:)(Swift::String uniqueID)
{
  object = uniqueID._object;
  countAndFlagsBits = uniqueID._countAndFlagsBits;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  swift_beginAccess();
  v11 = *(v1 + 16);
  if (v11 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    sub_1BE048C84();
    if (!i)
    {
      break;
    }

    v20 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFB40900](v20, v11);
      }

      else
      {
        if (v20 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v21 = *(v11 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 uniqueID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1BE052434();
        v28 = v27;

        if (v26 == countAndFlagsBits && v28 == object)
        {
          v11, v29, countAndFlagsBits, v30, v31, v32, v33, v34;
          v52 = v28;
          goto LABEL_20;
        }

        v36 = sub_1BE053B84();
        v28, v37, v38, v39, v40, v41, v42, v43;
        if (v36)
        {
          v52 = v11;
LABEL_20:
          v52, v44, v45, v46, v47, v48, v49, v50;
          goto LABEL_21;
        }
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_18:
  v11, v13, v14, v15, v16, v17, v18, v19;
  v22 = 0;
LABEL_21:
  v53 = v22;
  result.value.super.super.super.isa = v53;
  result.is_nil = v51;
  return result;
}

id sub_1BD4041A8(void *a1)
{
  v2 = v1;
  objc_allocWithZone(type metadata accessor for TransactionsModel(0));
  v4 = a1;
  sub_1BE048964();
  sub_1BD96BBF4(v4, v2, 0);
  v6 = v5;

  v2, v7, v8, v9, v10, v11, v12, v13;
  result = [v4 uniqueID];
  if (result)
  {
    v15 = result;
    v16 = sub_1BE052434();
    v18 = v17;

    KeyPath = swift_getKeyPath();
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    v20 = v6;
    sub_1BE04B594();
    KeyPath, v21, v22, v23, v24, v25, v26, v27;
    aBlock[0] = v2;
    v28 = swift_getKeyPath();
    sub_1BE04B5B4();
    v28, v29, v30, v31, v32, v33, v34, v35;
    v36 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__cachedTransactionModelsByUniqueID;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *&v2[v36];
    *&v2[v36] = 0x8000000000000000;
    sub_1BD1DB498(v20, v16, v18, isUniquelyReferenced_nonNull_native);
    v18, v38, v39, v40, v41, v42, v43, v44;
    *&v2[v36] = v68;
    swift_endAccess();
    aBlock[0] = v2;
    v45 = swift_getKeyPath();
    sub_1BE04B5A4();
    v45, v46, v47, v48, v49, v50, v51, v52;
    if (![v4 isAppleCardPass])
    {
      return v20;
    }

    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v53 = result;
      v54 = [v4 associatedAccountServiceAccountIdentifier];
      v55 = swift_allocObject();
      *(v55 + 16) = v2;
      *(v55 + 24) = v4;
      aBlock[4] = sub_1BD40FB24;
      v67 = v55;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_94_1;
      v56 = _Block_copy(aBlock);
      v57 = v67;
      v58 = v4;
      sub_1BE048964();
      v57, v59, v60, v61, v62, v63, v64, v65;
      [v53 accountWithIdentifier:v54 completion:v56];
      _Block_release(v56);

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4044C0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_1BE051F54();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v30 = sub_1BE052D54();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_1BD40FB2C;
  v34 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_100;
  v15 = _Block_copy(aBlock);
  v16 = v34;
  v17 = a2;
  v18 = a1;
  sub_1BE048964();
  v19 = a4;
  v16, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD40F6B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  v27 = v30;
  MEMORY[0x1BFB3FDF0](0, v13, v10, v15);
  _Block_release(v15);

  (*(v32 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v31);
}

void sub_1BD4047D8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1BE04D1E4();
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
      _os_log_impl(&dword_1BD026000, v12, v13, "Account fetch in WalletSettingsModel failed with error: %@", v14, 0xCu);
      sub_1BD0DE53C(v15, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v15, -1, -1);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  else if (a2)
  {
    v18 = a2;
    v21 = WalletSettingsModel.transactionsModelForPass(pass:)(a4);
    TransactionsModel.updateModelWithAccount(updatedAccount:)(v18);

    v19 = v21;
  }
}

Swift::Void __swiftcall WalletSettingsModel.refreshPaymentDefaults()()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  v46[0] = v0;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 defaultInstance];
  if (v13)
  {
    v14 = v13;
    v15 = swift_getKeyPath();
    v46[0] = v1;
    sub_1BE04B594();
    v15, v16, v17, v18, v19, v20, v21, v22;
    swift_beginAccess();
    v23 = v1[2];
    sub_1BE048C84();
    sub_1BD40DD40(v12, v14, v23, v46);

    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v31);
    sub_1BE04B584();

    v46[1], v32, v33, v34, v35, v36, v37, v38;
    v50 = v47;
    sub_1BD0DE53C(&v50, &qword_1EBD45928, &qword_1BE0D4AE0);
    v49 = v48;
    sub_1BD0DE53C(&v49, &qword_1EBD45930, &qword_1BE0D4AE8);
    v31, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD404C34(unint64_t a1, void *a2)
{
  v3 = a2;
  sub_1BD409EE4(v3);
  v34 = v3;
  v4 = [v3 defaultShippingAddress];
  if (v4)
  {
    v5 = v4;
    v6 = v4;
    sub_1BD40566C(v5);
    sub_1BD40AFAC(v6);
  }

  if (a1 >> 62)
  {
LABEL_19:
    v7 = sub_1BE053704();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_5:
      v8 = 0;
      v9 = a1 & 0xC000000000000001;
      v31 = a1 & 0xFFFFFFFFFFFFFF8;
      v32 = a1 & 0xC000000000000001;
      v10 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      v33 = v7;
      do
      {
        if (v9)
        {
          v11 = MEMORY[0x1BFB40900](v8, a1);
        }

        else
        {
          if (v8 >= *(v31 + 16))
          {
            goto LABEL_18;
          }

          v11 = *(a1 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v14 = [v11 v10[51]];
        if (v14)
        {
          v15 = v14;
          v16 = [v34 defaultBillingAddressForPaymentPass_];
          if (v16)
          {
            v17 = v16;
            v18 = a1;
            v19 = [v15 uniqueID];
            if (!v19)
            {
              __break(1u);
              return;
            }

            v20 = v19;
            v21 = sub_1BE052434();
            v23 = v22;

            sub_1BD40A3EC(v21, v23, v17);
            v23, v24, v25, v26, v27, v28, v29, v30;
            a1 = v18;
            v9 = v32;
            v7 = v33;
            v10 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
          }

          else
          {
          }
        }

        ++v8;
      }

      while (v13 != v7);
    }
  }
}

uint64_t WalletSettingsModel.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  *(v0 + 16), v2, v3, v4, v5, v6, v7, v8;
  *(v0 + 32), v9, v10, v11, v12, v13, v14, v15;
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v18 = *(v0 + 64);
  *(v0 + 80), v19, v20, v21, v22, v23, v24, v25;
  v18, v26, v27, v28, v29, v30, v31, v32;
  v16, v33, v34, v35, v36, v37, v38, v39;

  *(v0 + 88), v40, v41, v42, v43, v44, v45, v46;
  v47 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__orderTrackingEnabled;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  (*(*(v48 - 8) + 8))(v0 + v47, v48);
  *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors), v49, v50, v51, v52, v53, v54, v55;

  *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath + 8), v56, v57, v58, v59, v60, v61, v62;
  *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath + 8), v63, v64, v65, v66, v67, v68, v69;
  *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__cachedTransactionModelsByUniqueID), v70, v71, v72, v73, v74, v75, v76;

  *(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__publishers), v77, v78, v79, v80, v81, v82, v83;
  v84 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel___observationRegistrar;
  v85 = sub_1BE04B5D4();
  (*(*(v85 - 8) + 8))(v0 + v84, v85);
  return v0;
}

uint64_t WalletSettingsModel.__deallocating_deinit()
{
  WalletSettingsModel.deinit();

  return swift_deallocClassInstance();
}

void sub_1BD405028()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69B8680]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0C63C0;
  sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
  *(inited + 32) = sub_1BE053054();
  *(inited + 40) = sub_1BE053054();
  *(inited + 48) = sub_1BE053054();
  sub_1BD112388(inited);
  v5 = v4;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BD22CFF8();
  v6 = sub_1BE052A24();
  v5, v7, v8, v9, v10, v11, v12, v13;
  aBlock[4] = sub_1BD40F8DC;
  v24 = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3293A4;
  aBlock[3] = &block_descriptor_87;
  v14 = _Block_copy(aBlock);
  v15 = v24;
  sub_1BE048964();
  v15, v16, v17, v18, v19, v20, v21, v22;
  [v2 activeFPANCardsWithOptions:7 allowedCardTypes:v6 sortType:1 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1BD4051E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1BD40F8E4;
  v25 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_48_0;
  v12 = _Block_copy(aBlock);
  v13 = v25;
  sub_1BE048C84();
  sub_1BE048964();
  v13, v14, v15, v16, v17, v18, v19, v20;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD40F6B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v23 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v22);
}

void sub_1BD4054E4(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors;
  v5 = *(a1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors);
  if (!v5)
  {
    if (!a2)
    {
      v15 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B584();
    KeyPath, v17, v18, v19, v20, v21, v22, v23;
    return;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v6 = sub_1BE048C84();
  v7 = sub_1BD3FE328(v6, a2, &qword_1EBD420C0, 0x1E69B8678);
  v5, v8, v9, v10, v11, v12, v13, v14;
  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = *(a1 + v4);
LABEL_8:
  *(a1 + v4) = a2;
  sub_1BE048C84();

  v15, v24, v25, v26, v27, v28, v29, v30;
}

void sub_1BD40566C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
  v5 = v4;
  v6 = a1;
  v7 = sub_1BE053074();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

Swift::Bool __swiftcall WalletSettingsModel.isDefaultPass(uniqueID:)(Swift::String uniqueID)
{
  object = uniqueID._object;
  countAndFlagsBits = uniqueID._countAndFlagsBits;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v1 + 24);
  if (v12 && (v13 = [v12 uniqueID]) != 0)
  {
    v14 = v13;
    v15 = sub_1BE052434();
    v17 = v16;

    if (v15 == countAndFlagsBits && v17 == object)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_1BE053B84();
    }

    v17, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

void sub_1BD405920(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v83 - v11;
  if (a2)
  {
    sub_1BE04D1E4();
    sub_1BE048C84();
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();
    a2, v15, v16, v17, v18, v19, v20, v21;
    v22 = os_log_type_enabled(v13, v14);
    v84 = a1;
    v85 = a2;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v86[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1BD123690(a1, a2, v86);
      _os_log_impl(&dword_1BD026000, v13, v14, "Updating default pass to pass with unique id: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24, v25, v26, v27, v28, v29, v30, v31);
      MEMORY[0x1BFB45F20](v24, -1, -1);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    KeyPath = swift_getKeyPath();
    v86[0] = v3;
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    KeyPath, v33, v34, v35, v36, v37, v38, v39;
    swift_beginAccess();
    v40 = *(v3 + 16);
    v83 = v3;
    if (v40 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      sub_1BE048C84();
      if (!i)
      {
        break;
      }

      v49 = 0;
      while (1)
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x1BFB40900](v49, v40);
        }

        else
        {
          if (v49 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v50 = *(v40 + 8 * v49 + 32);
        }

        v51 = v50;
        v52 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        v53 = [v50 uniqueID];
        if (v53)
        {
          v54 = v53;
          v55 = sub_1BE052434();
          v57 = v56;

          if (v55 == v84 && v57 == v85)
          {
            v40, v58, v84, v85, v59, v60, v61, v62;
            v82 = v57;
            goto LABEL_26;
          }

          v64 = sub_1BE053B84();
          v57, v65, v66, v67, v68, v69, v70, v71;
          if (v64)
          {
            v82 = v40;
LABEL_26:
            v82, v72, v73, v74, v75, v76, v77, v78;
            goto LABEL_27;
          }
        }

        ++v49;
        if (v52 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_21:
    v40, v42, v43, v44, v45, v46, v47, v48;
    v51 = 0;
LABEL_27:
    sub_1BD4012D4(v51);
  }

  else
  {
    sub_1BE04D1E4();
    v79 = sub_1BE04D204();
    v80 = sub_1BE052C54();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_1BD026000, v79, v80, "Attempted to update default pass with nil unique id, skipping", v81, 2u);
      MEMORY[0x1BFB45F20](v81, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

id WalletSettingsModel.setAutomaticPresentationPassSetting(for:with:newSettings:)(void *a1, char a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    a3 = [a1 settings];
    a1 = v5;
  }

  v6 = 16;
  if ((a2 & 1) == 0)
  {
    v6 = 0;
  }

  return [a1 setSettings_];
}

id WalletSettingsModel.setNotifictionServiceUpdatesPassSetting(for:with:newSettings:)(void *a1, char a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    a3 = [a1 settings];
    a1 = v5;
  }

  v6 = 8;
  if ((a2 & 1) == 0)
  {
    v6 = 0;
  }

  return [a1 setSettings_];
}

void sub_1BD405E54()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  KeyPath = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel___observationRegistrar;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v192 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults;
  v12 = [*(v0 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults) defaultContactEmail];
  if (v12)
  {
    v13 = v12;
    v14 = [v2 defaultContactEmail];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1BD4065CC(v13, v14);

      if ((v16 & 1) == 0)
      {
LABEL_51:
        v118 = v2;
        sub_1BD402E20(v118);
        v119 = v1;
        v120 = swift_getKeyPath();
        v121 = v118;
        sub_1BE04B594();
        v120, v122, v123, v124, v125, v126, v127, v128;
        v129 = swift_getKeyPath();
        sub_1BE04B5B4();
        v129, v130, v131, v132, v133, v134, v135, v136;
        v137 = v1[5];
        v1[5] = v121;

        v138 = swift_getKeyPath();
        sub_1BE04B5A4();
        v138, v139, v140, v141, v142, v143, v144, v145;
        v146 = swift_getKeyPath();
        sub_1BE04B594();
        v146, v147, v148, v149, v150, v151, v152, v153;
        v154 = v1[6];
        v155 = swift_getKeyPath();
        sub_1BE048964();
        sub_1BE04B594();
        v155, v156, v157, v158, v159, v160, v161, v162;
        swift_beginAccess();
        v163 = v119[2];
        v164 = sub_1BE048C84();
        sub_1BD404C34(v164, v121);
        v154, v165, v166, v167, v168, v169, v170, v171;
        v163, v172, v173, v174, v175, v176, v177, v178;

        return;
      }
    }

    else
    {
    }
  }

  v17 = swift_getKeyPath();
  sub_1BE04B594();
  v17, v18, v19, v20, v21, v22, v23, v24;
  v25 = [*(v1 + v192) defaultContactPhone];
  if (v25)
  {
    v26 = v25;
    v27 = [v2 defaultContactPhone];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1BD4065CC(v26, v27);

      if ((v29 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

  v30 = swift_getKeyPath();
  sub_1BE04B594();
  v30, v31, v32, v33, v34, v35, v36, v37;
  v38 = [*(v1 + v192) defaultContactName];
  if (v38)
  {
    v39 = v38;
    v40 = [v2 defaultContactName];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1BD4065CC(v39, v40);

      if ((v42 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

  v43 = swift_getKeyPath();
  sub_1BE04B594();
  v43, v44, v45, v46, v47, v48, v49, v50;
  v51 = [*(v1 + v192) defaultShippingAddress];
  if (v51)
  {
    v52 = v51;
    v53 = [v2 defaultShippingAddress];
    if (v53)
    {
      v54 = v53;
      v55 = sub_1BD4065CC(v52, v53);

      if ((v55 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

  v56 = swift_getKeyPath();
  sub_1BE04B594();
  v56, v57, v58, v59, v60, v61, v62, v63;
  swift_beginAccess();
  v64 = v1[2];
  if (v64 >> 62)
  {
    goto LABEL_55;
  }

  v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v65)
  {
LABEL_23:
    v193 = v64 & 0xC000000000000001;
    v188 = v64 & 0xFFFFFFFFFFFFFF8;
    v189 = v2;
    sub_1BE048C84();
    v2 = 0;
    v66 = &selRef_currentPassbookState;
    v186 = v4;
    v187 = v1;
    v190 = v65;
    v191 = v64;
    while (1)
    {
      if (v193)
      {
        v71 = MEMORY[0x1BFB40900](v2, v64);
      }

      else
      {
        if (v2 >= *(v188 + 16))
        {
          goto LABEL_54;
        }

        v71 = *(v64 + 8 * v2 + 32);
      }

      v70 = v71;
      v72 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v65 = sub_1BE053704();
        if (!v65)
        {
          break;
        }

        goto LABEL_23;
      }

      v73 = [v71 paymentPass];
      if (v73)
      {
        v74 = v73;
        v75 = swift_getKeyPath();
        sub_1BE04B594();
        v75, v76, v77, v78, v79, v80, v81, v82;
        v83 = *(v1 + v192);
        v84 = v74;
        v85 = [v83 v66[148]];
        if (v85)
        {
          v69 = v85;
          v68 = [v189 v66[148]];

          if (v68)
          {
            v86 = [v69 identifier];
            if (!v86)
            {
              sub_1BE052434();
              v88 = v87;
              v86 = sub_1BE052404();
              v88, v89, v90, v91, v92, v93, v94, v95;
            }

            v96 = [v68 identifier];
            if (!v96)
            {
              sub_1BE052434();
              v98 = v97;
              v96 = sub_1BE052404();
              v98, v99, v100, v101, v102, v103, v104, v105;
            }

            v106 = v86;
            v107 = v96;
            v108 = v107;
            if (v86 == v96)
            {

              v1 = v187;
            }

            else
            {
              v1 = v187;
              if (!v106 || !v107)
              {

LABEL_49:
                v110 = [v69 isEqualIgnoringIdentifiers_];

                v4 = v186;
                v65 = v190;
                v64 = v191;
                v66 = &selRef_currentPassbookState;
                if ((v110 & 1) == 0)
                {
                  v191, v111, v112, v113, v114, v115, v116, v117;
                  v2 = v189;
                  goto LABEL_51;
                }

                goto LABEL_27;
              }

              v109 = [v106 isEqualToString:v107];

              if ((v109 & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            v67 = v84;
            v4 = v186;
          }

          else
          {
            v67 = v84;
            v68 = v69;
            v69 = v70;
          }
        }

        else
        {
          v67 = v70;
          v68 = v84;
          v69 = v84;
        }

        v70 = v69;
        v65 = v190;
        v64 = v191;
        v66 = &selRef_currentPassbookState;
      }

LABEL_27:
      ++v2;
      if (v72 == v65)
      {

        v64, v179, v180, v181, v182, v183, v184, v185;
        return;
      }
    }
  }
}

uint64_t sub_1BD4065CC(void *a1, void *a2)
{
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_1BE052434();
    v6 = v5;
    v4 = sub_1BE052404();
    v6, v7, v8, v9, v10, v11, v12, v13;
  }

  v14 = [a2 identifier];
  if (!v14)
  {
    sub_1BE052434();
    v16 = v15;
    v14 = sub_1BE052404();
    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  v24 = v4;
  v25 = v14;
  v26 = v25;
  if (v4 == v14)
  {

    return 1;
  }

  if (v24)
  {
    v27 = v25 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
  }

  else
  {
    v28 = [v24 isEqualToString:v25];

    if (v28)
    {
      return 1;
    }
  }

  return [a1 isEqualIgnoringIdentifiers_];
}

void *sub_1BD406730()
{
  v0 = sub_1BE051F54();
  v110 = *(v0 - 8);
  v111 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = v107 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE051FA4();
  v108 = *(v3 - 8);
  v109 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1BE04D214();
  v6 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v8 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v107 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v107[0] = v107 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v107 - v15;
  sub_1BE04D1E4();
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BD026000, v17, v18, "Pass library did change notification received", v19, 2u);
    MEMORY[0x1BFB45F20](v19, -1, -1);
  }

  v20 = *(v6 + 8);
  v20(v16, v112);
  result = sub_1BE04A2D4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v22 = result;
  v115 = *MEMORY[0x1E69BBC00];
  v23 = v115;
  type metadata accessor for PKPassLibraryNotificationKey(0);
  sub_1BD40F6B8(&qword_1EBD38298, type metadata accessor for PKPassLibraryNotificationKey, &unk_1BE0B62D8);
  v24 = v23;
  sub_1BE0537C4();
  if (v22[2] && (v25 = sub_1BD149040(aBlock), (v26 & 1) != 0))
  {
    sub_1BD038CD0(v22[7] + 32 * v25, v116);
    sub_1BD149CE8(aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C738, &qword_1BE0BF330);
    if (!swift_dynamicCast())
    {
      v22, v27, v28, v29, v30, v31, v32, v33;
      sub_1BE04D1E4();
      v82 = sub_1BE04D204();
      v83 = sub_1BE052C54();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_1BD026000, v82, v83, "Failed to retrieve replacement passes from user info", v84, 2u);
        MEMORY[0x1BFB45F20](v84, -1, -1);
      }

      v85 = v8;
      return (v20)(v85, v112);
    }

    v34 = v115;
  }

  else
  {
    sub_1BD149CE8(aBlock);
    v34 = 0;
  }

  v115 = *MEMORY[0x1E69BBBD0];
  v35 = v115;
  sub_1BE0537C4();
  if (!v22[2] || (v36 = sub_1BD149040(aBlock), (v37 & 1) == 0))
  {
    sub_1BD149CE8(aBlock);
    v45 = 0;
LABEL_14:
    v115 = *MEMORY[0x1E69BBBF8];
    v46 = v115;
    sub_1BE0537C4();
    if (!v22[2] || (v54 = sub_1BD149040(aBlock), (v47 & 1) == 0))
    {
      v22, v47, v48, v49, v50, v51, v52, v53;
      sub_1BD149CE8(aBlock);
      v69 = 0;
      goto LABEL_19;
    }

    sub_1BD038CD0(v22[7] + 32 * v54, v116);
    sub_1BD149CE8(aBlock);
    v22, v55, v56, v57, v58, v59, v60, v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459A0, &unk_1BE0D4DB8);
    if (swift_dynamicCast())
    {
      v69 = v115;
LABEL_19:
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v70 = sub_1BE052D54();
      v71 = swift_allocObject();
      v71[2] = v107[1];
      v71[3] = v34;
      v71[4] = v45;
      v71[5] = v69;
      aBlock[4] = sub_1BD40F948;
      v114 = v71;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_63_0;
      v72 = _Block_copy(aBlock);
      v73 = v114;
      sub_1BE048964();
      v73, v74, v75, v76, v77, v78, v79, v80;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD40F6B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
      v81 = v111;
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v5, v2, v72);
      _Block_release(v72);

      (*(v110 + 8))(v2, v81);
      return (*(v108 + 8))(v5, v109);
    }

    v34, v62, v63, v64, v65, v66, v67, v68;
    v45, v96, v97, v98, v99, v100, v101, v102;
    v103 = v107[0];
    sub_1BE04D1E4();
    v104 = sub_1BE04D204();
    v105 = sub_1BE052C54();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_1BD026000, v104, v105, "Failed to retrieve removed passes from user info", v106, 2u);
      MEMORY[0x1BFB45F20](v106, -1, -1);
    }

    v85 = v103;
    return (v20)(v85, v112);
  }

  sub_1BD038CD0(v22[7] + 32 * v36, v116);
  sub_1BD149CE8(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C738, &qword_1BE0BF330);
  if (swift_dynamicCast())
  {
    v45 = v115;
    goto LABEL_14;
  }

  v22, v38, v39, v40, v41, v42, v43, v44;
  v34, v86, v87, v88, v89, v90, v91, v92;
  sub_1BE04D1E4();
  v93 = sub_1BE04D204();
  v94 = sub_1BE052C54();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_1BD026000, v93, v94, "Failed to retrieve added passes from user info", v95, 2u);
    MEMORY[0x1BFB45F20](v95, -1, -1);
  }

  v85 = v11;
  return (v20)(v85, v112);
}

void sub_1BD406F9C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD4072B0(a2);
  sub_1BD40790C(a3);
  sub_1BD407C64(a4);
  v12 = [*(a1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_paymentService) defaultPaymentPassUniqueIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE052434();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  KeyPath = swift_getKeyPath();
  v65[1] = a1;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v25 = *(a1 + 24);
  if (!v25)
  {
    sub_1BE04D1E4();
    v47 = sub_1BE04D204();
    v48 = sub_1BE052C54();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1BD026000, v47, v48, "Nil default pass, attempting to update", v49, 2u);
      MEMORY[0x1BFB45F20](v49, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    sub_1BD405920(v14, v16);
    goto LABEL_19;
  }

  v26 = v25;
  v27 = [v26 uniqueID];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1BE052434();
    v31 = v30;

    if (v16)
    {
      if (v29 == v14 && v16 == v31)
      {
        v16, v32, v33, v34, v35, v36, v37, v38;

        v46 = v31;
LABEL_20:
        v46, v39, v40, v41, v42, v43, v44, v45;
        goto LABEL_21;
      }

      v50 = sub_1BE053B84();
      v31, v51, v52, v53, v54, v55, v56, v57;
      if (v50)
      {
        v16, v58, v59, v60, v61, v62, v63, v64;

        goto LABEL_21;
      }
    }

    else
    {
      v31, v32, v33, v34, v35, v36, v37, v38;
    }

    goto LABEL_18;
  }

  if (v16)
  {
LABEL_18:
    sub_1BD405920(v14, v16);

LABEL_19:
    v46 = v16;
    goto LABEL_20;
  }

LABEL_21:
  sub_1BD405028();
}

void sub_1BD4072B0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_1BE04D1E4();
    v139 = sub_1BE04D204();
    v140 = sub_1BE052C54();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_1BD026000, v139, v140, "Attempted to replace nil array of passes, skipping", v141, 2u);
      MEMORY[0x1BFB45F20](v141, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return;
  }

  v8 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v10 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel___observationRegistrar;
    v11 = a1 & 0xC000000000000001;
    swift_beginAccess();
    v12 = 0;
    v142 = a1 + 32;
    v143 = a1 & 0xC000000000000001;
    v147 = a1;
    v148 = v2;
    v145 = i;
    v146 = v8;
    v144 = v10;
    while (1)
    {
      if (v11)
      {
        v13 = MEMORY[0x1BFB40900](v12, a1);
      }

      else
      {
        if (v12 >= v8[2])
        {
          goto LABEL_52;
        }

        v13 = *(v142 + 8 * v12);
      }

      v14 = v13;
      if (__OFADD__(v12++, 1))
      {
        break;
      }

      v153 = [v13 secureElementPass];
      if (!v153)
      {

        goto LABEL_6;
      }

      v151 = v14;
      KeyPath = swift_getKeyPath();
      v154 = v2;
      v150 = sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
      sub_1BE04B594();
      KeyPath, v17, v18, v19, v20, v21, v22, v23;
      v24 = v2[2];
      if (v24 >> 62)
      {
        v25 = sub_1BE053704();
        if (!v25)
        {
LABEL_44:

          goto LABEL_6;
        }
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v25)
        {
          goto LABEL_44;
        }
      }

      v149 = v12;
      v152 = v24 & 0xFFFFFFFFFFFFFF8;
      sub_1BE048C84();
      v26 = 0;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1BFB40900](v26, v24);
        }

        else
        {
          if (v26 >= *(v152 + 16))
          {
            goto LABEL_50;
          }

          v27 = *(v24 + 8 * v26 + 32);
        }

        v8 = v27;
        v28 = [v153 uniqueID];
        if (v28)
        {
          v29 = v28;
          v30 = sub_1BE052434();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        v33 = [v8 uniqueID];
        if (!v33)
        {
          if (!v32)
          {

LABEL_38:
            v24, v58, v59, v60, v61, v62, v63, v64;
            goto LABEL_40;
          }

LABEL_31:

          v2 = v32;
LABEL_33:
          v2, v58, v59, v60, v61, v62, v63, v64;
          goto LABEL_34;
        }

        a1 = v33;
        v34 = sub_1BE052434();
        v2 = v35;

        if (!v32)
        {

          if (!v2)
          {
            goto LABEL_38;
          }

          goto LABEL_33;
        }

        if (!v2)
        {
          goto LABEL_31;
        }

        if (v30 == v34 && v32 == v2)
        {
          break;
        }

        v43 = sub_1BE053B84();
        v32, v44, v45, v46, v47, v48, v49, v50;
        v2, v51, v52, v53, v54, v55, v56, v57;

        if (v43)
        {
          goto LABEL_38;
        }

LABEL_34:
        v65 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        ++v26;
        if (v65 == v25)
        {

          v24, v66, v67, v68, v69, v70, v71, v72;
          a1 = v147;
          v2 = v148;
          i = v145;
          v8 = v146;
          v11 = v143;
          v12 = v149;
          goto LABEL_6;
        }
      }

      v24, v36, v37, v38, v39, v40, v41, v42;
      v32, v73, v74, v75, v76, v77, v78, v79;
      v2, v80, v81, v82, v83, v84, v85, v86;

LABEL_40:
      v87 = swift_getKeyPath();
      v2 = v148;
      v154 = v148;
      sub_1BE04B594();
      v87, v88, v89, v90, v91, v92, v93, v94;
      v154 = v2;
      v95 = swift_getKeyPath();
      sub_1BE04B5B4();
      v95, v96, v97, v98, v99, v100, v101, v102;
      swift_beginAccess();
      v104 = sub_1BD3B371C(v26, v103);
      swift_endAccess();

      v154 = v2;
      v105 = swift_getKeyPath();
      sub_1BE04B5A4();
      v105, v106, v107, v108, v109, v110, v111, v112;
      v113 = swift_getKeyPath();
      v154 = v2;
      v114 = v153;
      sub_1BE04B594();
      v113, v115, v116, v117, v118, v119, v120, v121;
      v154 = v2;
      v122 = swift_getKeyPath();
      sub_1BE04B5B4();
      v122, v123, v124, v125, v126, v127, v128, v129;
      v130 = swift_beginAccess();
      MEMORY[0x1BFB3F7A0](v130);
      v11 = v143;
      v12 = v149;
      if (*((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      swift_endAccess();
      v154 = v2;
      v131 = swift_getKeyPath();
      sub_1BE04B5A4();
      v131, v132, v133, v134, v135, v136, v137, v138;

      v8 = v146;
      a1 = v147;
      i = v145;
LABEL_6:
      if (v12 == i)
      {
        return;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }
}

void sub_1BD40790C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v43 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
LABEL_21:
      v9 = sub_1BE053704();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    while (v9 != v10)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB40900](v10, a1, v6);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v14 = [v11 secureElementPass];

      ++v10;
      if (v14)
      {
        MEMORY[0x1BFB3F7A0]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v42 = v43;
        v10 = v13;
      }
    }

    KeyPath = swift_getKeyPath();
    v43 = v2;
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
    v43 = v2;
    v23 = swift_getKeyPath();
    sub_1BE04B5B4();
    v23, v24, v25, v26, v27, v28, v29, v30;
    swift_beginAccess();
    sub_1BDA7AAF8(v42);
    swift_endAccess();
    v43 = v2;
    v31 = swift_getKeyPath();
    sub_1BE04B5A4();
    v31, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    sub_1BE04D1E4();
    v39 = sub_1BE04D204();
    v40 = sub_1BE052C54();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1BD026000, v39, v40, "Attempted to add nil array of passes, skipping", v41, 2u);
      MEMORY[0x1BFB45F20](v41, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_1BD407C64(unint64_t a1)
{
  v115 = sub_1BE04D214();
  v3 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v107 - v7;
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  if (!a1)
  {
    sub_1BE04D1E4();
    v104 = sub_1BE04D204();
    v105 = sub_1BE052C54();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_1BD026000, v104, v105, "Attempted to remove nil array of pass dictionaries, skipping", v106, 2u);
      MEMORY[0x1BFB45F20](v106, -1, -1);
    }

    (*(v3 + 8))(v5, v115);
    return;
  }

  v108 = &v107 - v10;
  v109 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v13 = 0;
    v121 = 0;
    v122 = *MEMORY[0x1E69BBBE8];
    v123 = a1 & 0xC000000000000001;
    v117 = *MEMORY[0x1E69BBC08];
    v120 = OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel___observationRegistrar;
    v114 = (v3 + 8);
    v111 = 0x80000001BE1286D0;
    v112 = a1;
    v110 = v8;
    v116 = i;
    v113 = v1;
    while (1)
    {
      if (v123)
      {
        v14 = MEMORY[0x1BFB40900](v13, a1, v11);
      }

      else
      {
        if (v13 >= *(v109 + 16))
        {
          goto LABEL_71;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v125 = v14;
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = v122;
      *&v127 = v122;
      type metadata accessor for PKPassLibraryNotificationKey(0);
      v17 = v16;
      v3 = sub_1BE053BF4();
      v18 = [v125 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v18)
      {
        sub_1BE053624();
        swift_unknownObjectRelease();
      }

      else
      {
        v127 = 0u;
        v128 = 0u;
      }

      v129 = v127;
      v130 = v128;
      if (*(&v128 + 1))
      {
        if (!swift_dynamicCast())
        {
          sub_1BE04D1E4();
          v23 = sub_1BE04D204();
          v1 = sub_1BE052C54();
          if (os_log_type_enabled(v23, v1))
          {
            v3 = swift_slowAlloc();
            *v3 = 0;
            _os_log_impl(&dword_1BD026000, v23, v1, "Unable to retrieve passTypeIdentifier from pass dictionary, skipping", v3, 2u);
            MEMORY[0x1BFB45F20](v3, -1, -1);
          }

          (*v114)(v8, v115);
          goto LABEL_6;
        }

        v124 = v13 + 1;
        countAndFlagsBits = v126._countAndFlagsBits;
        object = v126._object;
      }

      else
      {
        v124 = v13 + 1;
        sub_1BD0DE53C(&v129, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        countAndFlagsBits = 0;
        object = 0;
      }

      *&v127 = v117;
      v21 = v117;
      v22 = [v125 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v22)
      {
        sub_1BE053624();
        swift_unknownObjectRelease();
      }

      else
      {
        v127 = 0u;
        v128 = 0u;
      }

      v129 = v127;
      v130 = v128;
      if (*(&v128 + 1))
      {
        if (!swift_dynamicCast())
        {
          object, v24, v25, v26, v27, v28, v29, v30;
          v71 = v108;
          sub_1BE04D1E4();
          v72 = sub_1BE04D204();
          v1 = sub_1BE052C54();
          if (os_log_type_enabled(v72, v1))
          {
            v3 = swift_slowAlloc();
            *v3 = 0;
            _os_log_impl(&dword_1BD026000, v72, v1, "Unable to retrieve serialNumber from pass dictionary, skipping", v3, 2u);
            MEMORY[0x1BFB45F20](v3, -1, -1);
          }

          (*v114)(v71, v115);
          i = v116;
          v15 = v124;
          goto LABEL_6;
        }

        v119 = countAndFlagsBits;
        v32 = v126._countAndFlagsBits;
        v31 = v126._object;
      }

      else
      {
        v119 = countAndFlagsBits;
        sub_1BD0DE53C(&v129, &qword_1EBD3EC90, &unk_1BE0BC6B0);
        v32 = 0;
        v31 = 0;
      }

      KeyPath = swift_getKeyPath();
      v34 = v113;
      *&v129 = v113;
      v35 = sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE04B594();
      KeyPath, v36, v37, v38, v39, v40, v41, v42;
      *&v129 = v34;
      v43 = swift_getKeyPath();
      v118 = v35;
      sub_1BE04B5B4();
      v43, v44, v45, v46, v47, v48, v49, v50;
      swift_beginAccess();
      v51 = v121;
      v52 = sub_1BD40EF7C((v34 + 16), v119, object, v32, v31);
      object, v53, v54, v55, v56, v57, v58, v59;
      v119 = v31;
      v31, v60, v61, v62, v63, v64, v65, v66;
      v3 = *(v34 + 16);
      v1 = v3 >> 62;
      v121 = v51;
      if (v3 >> 62)
      {
        v8 = sub_1BE053704();
      }

      else
      {
        v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = &v8[-v52];
      v15 = v124;
      if (v8 < v52)
      {
        goto LABEL_66;
      }

      if (v52 < 0)
      {
        goto LABEL_67;
      }

      if (v1)
      {
        v67 = sub_1BE053704();
      }

      else
      {
        v67 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v67 < v8)
      {
        goto LABEL_68;
      }

      v68 = __OFSUB__(0, a1);
      a1 = v52 - v8;
      if (v68)
      {
        goto LABEL_69;
      }

      if (v1)
      {
        v69 = sub_1BE053704();
      }

      else
      {
        v69 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v68 = __OFADD__(v69, a1);
      a1 += v69;
      if (v68)
      {
        goto LABEL_70;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v34 + 16) = v3;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v1)
        {
LABEL_50:
          sub_1BE053704();
        }

LABEL_51:
        v3 = sub_1BE053884();
        *(v34 + 16) = v3;
        goto LABEL_52;
      }

      if (v1)
      {
        goto LABEL_50;
      }

      if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_51;
      }

LABEL_52:
      sub_1BD1DE5E8(v52, v8, 0);
      *(v34 + 16) = v3;
      swift_endAccess();
      v119, v73, v74, v75, v76, v77, v78, v79;
      object, v80, v81, v82, v83, v84, v85, v86;
      *&v129 = v34;
      v87 = swift_getKeyPath();
      sub_1BE04B5A4();
      v87, v88, v89, v90, v91, v92, v93, v94;
      *&v127 = 0xD000000000000014;
      *(&v127 + 1) = v111;
      v1 = sub_1BE053BF4();
      v95 = [v125 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      a1 = v112;
      if (v95)
      {
        sub_1BE053624();
        swift_unknownObjectRelease();
      }

      else
      {
        v127 = 0u;
        v128 = 0u;
      }

      v8 = v110;
      i = v116;
      v129 = v127;
      v130 = v128;
      if (*(&v128 + 1))
      {
        if (swift_dynamicCast())
        {
          v96 = v126._object;
          v1 = v34;
          WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v126);
          v96, v97, v98, v99, v100, v101, v102, v103;
        }
      }

      else
      {

        sub_1BD0DE53C(&v129, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      }

LABEL_6:
      ++v13;
      if (v15 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }
}

Swift::Void __swiftcall WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(Swift::String uniqueID)
{
  v2 = v1;
  object = uniqueID._object;
  countAndFlagsBits = uniqueID._countAndFlagsBits;
  v46 = sub_1BE04D214();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v47 = v1;
  sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE048C84();
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v47 = v1;
  v16 = swift_getKeyPath();
  sub_1BE04B5B4();
  v16, v17, v18, v19, v20, v21, v22, v23;
  swift_beginAccess();
  sub_1BD40F2D8((v1 + 32), countAndFlagsBits, object);
  v25 = v24;
  object, v26, v27, v28, v29, v30, v31, v32;
  v33 = *(*(v2 + 32) + 16);
  if (v33 < v25)
  {
    __break(1u);
  }

  else
  {
    sub_1BD1DE6BC(v25, v33);
    swift_endAccess();
    v47 = v2;
    v34 = swift_getKeyPath();
    sub_1BE04B5A4();
    v34, v35, v36, v37, v38, v39, v40, v41;
    sub_1BE04D1E4();
    v42 = sub_1BE04D204();
    v43 = sub_1BE052C54();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1BD026000, v42, v43, "Invalidating navigation paths is not supported on this device, skipping", v44, 2u);
      MEMORY[0x1BFB45F20](v44, -1, -1);
    }

    (*(v5 + 8))(v7, v46);
  }
}

Swift::Void __swiftcall WalletSettingsModel.removePass(pass:)(PKSecureElementPass pass)
{
  v2 = [(objc_class *)pass.super.super.super.isa uniqueID];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1BE052434();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v7);
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15 = [objc_opt_self() sharedInstance];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 removePass_];
}

void sub_1BD4089F0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1BE04A264();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE052404();
  v14 = [a1 localizedValueForFieldKey_];

  if (v14)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  v72[0] = v70;
  v72[1] = v71;
  if (!*(&v71 + 1))
  {
    sub_1BD0DE53C(v72, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v36 = sub_1BE04AA64();
    (*(*(v36 - 8) + 56))(a4, 1, 1, v36);
    return;
  }

  sub_1BD0DE19C(v72, &v70, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  if (!*(&v71 + 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = sub_1BE0524A4();
  v17 = v16;
  v18 = sub_1BE052434();
  v26 = v19;
  if (v18 == a2 && v19 == a3)
  {
    v19, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    v28 = sub_1BE053B84();
    v26, v29, v30, v31, v32, v33, v34, v35;
    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  *&v70 = v15;
  *(&v70 + 1) = v17;
  v37 = objc_opt_self();
  sub_1BE048C84();
  v38 = [v37 URLPathAllowedCharacterSet];
  sub_1BE04A234();

  sub_1BD0DDEBC();
  v39 = sub_1BE053594();
  v41 = v40;
  (*(v10 + 8))(v12, v9);
  v17, v42, v43, v44, v45, v46, v47, v48;
  if (!v41)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v17, v49, v50, v51, v52, v53, v54, v55;
  *&v70 = 0x2F2F3A6C6574;
  *(&v70 + 1) = 0xE600000000000000;
  MEMORY[0x1BFB3F610](v39, v41);
  v41, v56, v57, v58, v59, v60, v61, v62;
  v17 = *(&v70 + 1);
LABEL_16:
  sub_1BE04AA54();
  v17, v63, v64, v65, v66, v67, v68, v69;
  sub_1BD0DE53C(v72, &qword_1EBD3EC90, &unk_1BE0BC6B0);
}

id sub_1BD408D0C(void *a1)
{
  v2 = v1;
  v143 = sub_1BE04BD74();
  v4 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v141 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v141 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v141 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v141 - v17;
  if ([a1 isAppleCardPass])
  {
    v19 = WalletSettingsModel.transactionsModelForPass(pass:)(a1);
    KeyPath = swift_getKeyPath();
    v144 = v19;
    sub_1BD40F6B8(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel);
    sub_1BE04B594();
    KeyPath, v21, v22, v23, v24, v25, v26, v27;
    v28 = *&v19[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account];
    v29 = v28;

    if (v28)
    {
      v30 = [v29 state];
      if (v30 == 4 || v30 == 3 || v30 == 2)
      {
        v31 = sub_1BE052404();
        v32 = PKLocalizedFeatureString();

        if (v32)
        {
          v33 = sub_1BE052434();

          return v33;
        }

        else
        {

          return 0;
        }
      }
    }
  }

  v35 = [a1 devicePrimaryPaymentApplication];
  v36 = v35;
  if (v35)
  {
    v37 = [v35 state];

    if (PKPaymentApplicationStateIsSuspended())
    {
      v38 = v4;
      v39 = *(v4 + 104);
      v40 = v143;
      v39(v18, *MEMORY[0x1E69B80F0], v143);
      result = PKPassKitBundle();
      if (result)
      {
        v41 = result;
        v42 = sub_1BE04B6F4();
        v44 = v43;

        (*(v38 + 8))(v18, v40);
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v37 = 0;
  }

  if ([a1 passActivationState] == 1)
  {
    v38 = v4;
    v45 = *(v4 + 104);
    v40 = v143;
    v45(v14, *MEMORY[0x1E69B80F0], v143);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v46 = result;
    v42 = sub_1BE04B6F4();
    v44 = v47;

    (*(v38 + 8))(v14, v40);
  }

  else if (!v36 || v37 == 10)
  {
    v38 = v4;
    v94 = *(v4 + 104);
    v40 = v143;
    v94(v11, *MEMORY[0x1E69B80F0], v143);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v95 = result;
    v42 = sub_1BE04B6F4();
    v44 = v96;

    (*(v38 + 8))(v11, v40);
  }

  else
  {
    result = [a1 uniqueID];
    if (!result)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v48 = result;
    v49 = sub_1BE052434();
    v51 = v50;

    v52 = swift_getKeyPath();
    v144 = v2;
    sub_1BD40F6B8(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    v52, v53, v54, v55, v56, v57, v58, v59;
    v67 = *(v2 + 3);
    if (!v67)
    {
      v51, v60, v61, v62, v63, v64, v65, v66;
      v42 = 0;
      v44 = 0;
      v38 = v4;
      v40 = v143;
      goto LABEL_33;
    }

    v68 = [v67 uniqueID];
    v38 = v4;
    if (!v68)
    {
      v51, v69, v70, v71, v72, v73, v74, v75;
      v42 = 0;
      v44 = 0;
      v40 = v143;
      goto LABEL_33;
    }

    v76 = v68;
    v77 = sub_1BE052434();
    v79 = v78;

    v40 = v143;
    if (v49 == v77 && v51 == v79)
    {
      v51, v80, v81, v82, v83, v84, v85, v86;
      v79, v87, v88, v89, v90, v91, v92, v93;
    }

    else
    {
      v97 = sub_1BE053B84();
      v51, v98, v99, v100, v101, v102, v103, v104;
      v79, v105, v106, v107, v108, v109, v110, v111;
      if ((v97 & 1) == 0)
      {
        v42 = 0;
        v44 = 0;
        goto LABEL_33;
      }
    }

    (*(v38 + 104))(v8, *MEMORY[0x1E69B80F0], v40);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_51:
      __break(1u);
      return result;
    }

    v112 = result;
    v42 = sub_1BE04B6F4();
    v44 = v113;

    (*(v38 + 8))(v8, v40);
  }

LABEL_33:
  v114 = [a1 paymentPass];
  if (!v114)
  {
    goto LABEL_42;
  }

  v115 = v114;
  v116 = PKSanitizedPrimaryAccountRepresentationForPass();
  if (!v116)
  {

    goto LABEL_42;
  }

  v117 = v116;
  v118 = sub_1BE052434();
  v120 = v119;

  v128 = HIBYTE(v120) & 0xF;
  if ((v120 & 0x2000000000000000) == 0)
  {
    v128 = v118 & 0xFFFFFFFFFFFFLL;
  }

  if (!v128)
  {
    v120, v121, v122, v123, v124, v125, v126, v127;
LABEL_42:
    if (v44)
    {
      return v42;
    }

    else
    {
      return 0;
    }
  }

  result = v118;
  if (v44)
  {
    v129 = v142;
    (*(v38 + 104))(v142, *MEMORY[0x1E69B80F0], v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_1BE0B6CA0;
    v131 = MEMORY[0x1E69E6158];
    *(v130 + 56) = MEMORY[0x1E69E6158];
    v132 = sub_1BD110550();
    *(v130 + 32) = v118;
    *(v130 + 40) = v120;
    *(v130 + 96) = v131;
    *(v130 + 104) = v132;
    *(v130 + 64) = v132;
    *(v130 + 72) = v42;
    *(v130 + 80) = v44;
    v133 = sub_1BE04B714();
    v130, v134, v135, v136, v137, v138, v139, v140;
    (*(v38 + 8))(v129, v40);
    return v133;
  }

  return result;
}

uint64_t sub_1BD40956C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD409624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return sub_1BE048C84();
}

void sub_1BD409710(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_1BE048C84();
  v5 = sub_1BD3FE328(v4, a1, &qword_1EBD406E0, 0x1E695CD58);
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
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
    sub_1BE04B584();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    a1, v29, v30, v31, v32, v33, v34, v35;
  }
}

void sub_1BD409868(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
  sub_1BE048C84();
  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD4098D0()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t sub_1BD409988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  *a2 = *(v3 + 24);
  return sub_1BE048C84();
}

void sub_1BD409A48(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = sub_1BE048C84();
  v5 = sub_1BD40BC38(v4, a1);
  v3, v6, v7, v8, v9, v10, v11, v12;
  if (v5)
  {
    v20 = *(v1 + 24);
    *(v1 + 24) = a1;
    v20, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
    sub_1BE04B584();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    a1, v29, v30, v31, v32, v33, v34, v35;
  }
}

void sub_1BD409B90(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = sub_1BE048C84();
  v5 = sub_1BD3FE328(v4, a1, &qword_1EBD406E0, 0x1E695CD58);
  v3, v6, v7, v8, v9, v10, v11, v12;
  if (v5)
  {
    v20 = *(v1 + 40);
    *(v1 + 40) = a1;
    v20, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
    sub_1BE04B584();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    a1, v29, v30, v31, v32, v33, v34, v35;
  }
}

void sub_1BD409CE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
  sub_1BE048C84();
  v4, v5, v6, v7, v8, v9, v10, v11;
}

id sub_1BD409D50()
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 48);

  return v9;
}

id sub_1BD409E00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 48);
  *a2 = v12;

  return v12;
}

void sub_1BD409EE4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  sub_1BD0E5E8C(0, &qword_1EBD459A8, 0x1E69B8CF8);
  v5 = v4;
  v6 = sub_1BE053074();

  if (v6)
  {
    v7 = *(v2 + 48);
    *(v2 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }
}

void sub_1BD40A050(void *a1)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = *(v1 + 16);
  v75 = v2;
  if (v12 >> 62)
  {
LABEL_29:
    v76 = v12 & 0xFFFFFFFFFFFFFF8;
    v77 = sub_1BE053704();
  }

  else
  {
    v76 = v12 & 0xFFFFFFFFFFFFFF8;
    v77 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  v20 = 0;
  v21 = &selRef_hoursOfDay;
  while (v77 != v20)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1BFB40900](v20, v12);
    }

    else
    {
      if (v20 >= *(v76 + 16))
      {
        goto LABEL_28;
      }

      v23 = *(v12 + 8 * v20 + 32);
    }

    v24 = v23;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v25 = [a1 v21[20]];
    if (!v25)
    {
      sub_1BE052434();
      v27 = v26;
      v25 = sub_1BE052404();
      v27, v28, v29, v30, v31, v32, v33, v34;
    }

    v35 = v21;
    v36 = [v24 v21[20]];
    if (!v36)
    {
      sub_1BE052434();
      v38 = v37;
      v36 = sub_1BE052404();
      v38, v39, v40, v41, v42, v43, v44, v45;
    }

    v46 = v25;
    v47 = v36;
    v48 = v47;
    if (v25 == v36)
    {

LABEL_25:
LABEL_26:
      v12, v13, v14, v15, v16, v17, v18, v19;
      return;
    }

    if (v46 && v47)
    {
      v49 = [v46 isEqualToString:v47];

      if (v49)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v22 = [v24 isEqualIgnoringIdentifiers_];

    ++v20;
    v21 = v35;
    if (v22)
    {
      goto LABEL_26;
    }
  }

  v12, v13, v14, v15, v16, v17, v18, v19;
  v50 = swift_getKeyPath();
  sub_1BE04B594();
  v50, v51, v52, v53, v54, v55, v56, v57;
  v58 = swift_getKeyPath();
  sub_1BE04B5B4();
  v58, v59, v60, v61, v62, v63, v64, v65;
  swift_beginAccess();
  v66 = a1;
  MEMORY[0x1BFB3F7A0]();
  if (*((*(v75 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v75 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  swift_endAccess();
  v67 = swift_getKeyPath();
  sub_1BE04B5A4();
  v67, v68, v69, v70, v71, v72, v73, v74;
}

void sub_1BD40A3EC(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  KeyPath = swift_getKeyPath();
  v88 = v3;
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  swift_beginAccess();
  v16 = v3[2];
  v87 = a3;
  v85[2] = &v87;
  sub_1BE048C84();
  LOBYTE(KeyPath) = sub_1BD30114C(sub_1BD2ED65C, v85, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  if ((KeyPath & 1) == 0)
  {
    v24 = swift_getKeyPath();
    v87 = v4;
    sub_1BE04B594();
    v24, v25, v26, v27, v28, v29, v30, v31;
    v87 = v4;
    v32 = swift_getKeyPath();
    sub_1BE04B5B4();
    v32, v33, v34, v35, v36, v37, v38, v39;
    swift_beginAccess();
    v40 = a3;
    MEMORY[0x1BFB3F7A0]();
    if (*((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
    v87 = v4;
    v41 = swift_getKeyPath();
    sub_1BE04B5A4();
    v41, v42, v43, v44, v45, v46, v47, v48;
  }

  sub_1BE048C84();
  v49 = [a3 identifier];
  v50 = sub_1BE052434();
  v52 = v51;

  v53 = swift_getKeyPath();
  v87 = v4;
  sub_1BE04B594();
  v53, v54, v55, v56, v57, v58, v59, v60;
  v87 = v4;
  v61 = swift_getKeyPath();
  sub_1BE04B5B4();
  v61, v62, v63, v64, v65, v66, v67, v68;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = v4[3];
  v4[3] = 0x8000000000000000;
  sub_1BD1DB308(v50, v52, a1, a2, isUniquelyReferenced_nonNull_native);
  a2, v70, v71, v72, v73, v74, v75, v76;
  v4[3] = v86;
  swift_endAccess();
  v87 = v4;
  v77 = swift_getKeyPath();
  sub_1BE04B5A4();
  v77, v78, v79, v80, v81, v82, v83, v84;
}

uint64_t sub_1BD40A734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_1BE051F54();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_1BE051FA4();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD40A850, 0, 0);
}

uint64_t sub_1BD40A850()
{
  v1 = v0[16];
  v2 = v0[13];
  v32 = v0[15];
  v33 = v0[14];
  v30 = v0[11];
  v31 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = sub_1BE052434();
  v7 = v6;
  v8 = [v3 defaultShippingAddress];
  v9 = sub_1BD51D758(v5, v7, v8);

  v7, v10, v11, v12, v13, v14, v15, v16;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v17 = sub_1BE052D54();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v9;
  v0[6] = sub_1BD40FE94;
  v0[7] = v18;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BD126964;
  v0[5] = &block_descriptor_118;
  v19 = _Block_copy(v0 + 2);
  v20 = v0[7];
  sub_1BE048964();
  v20, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1BD40F6B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v2, v19);
  _Block_release(v19);

  (*(v31 + 8))(v2, v30);
  (*(v32 + 8))(v1, v33);

  v28 = v0[1];

  return v28();
}

void sub_1BD40AB0C(uint64_t a1, unint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE048C84();
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = swift_getKeyPath();
  sub_1BE04B5B4();
  v11, v12, v13, v14, v15, v16, v17, v18;
  swift_beginAccess();
  sub_1BDA7A2A8(a2);
  swift_endAccess();
  v19 = swift_getKeyPath();
  sub_1BE04B5A4();
  v19, v20, v21, v22, v23, v24, v25, v26;
  v27 = swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();
  v27, v28, v29, v30, v31, v32, v33, v34;
  v35 = swift_getKeyPath();
  sub_1BE04B5B4();
  v35, v36, v37, v38, v39, v40, v41, v42;
  swift_beginAccess();
  sub_1BDA7A2A8(a2);
  swift_endAccess();
  v43 = swift_getKeyPath();
  sub_1BE04B5A4();
  v43, v44, v45, v46, v47, v48, v49, v50;
}

void *sub_1BD40AD08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  swift_beginAccess();
  v14 = *(v2 + 24);
  if (*(v14 + 16))
  {
    sub_1BE048C84();
    v15 = sub_1BD148F70(a1, a2);
    if (v16)
    {
      v23 = (*(v14 + 56) + 16 * v15);
      v25 = *v23;
      v24 = v23[1];
      sub_1BE048C84();
      v14, v26, v27, v28, v29, v30, v31, v32;
      v33 = swift_getKeyPath();
      sub_1BE04B594();
      v33, v34, v35, v36, v37, v38, v39, v40;
      swift_beginAccess();
      v14 = *(v3 + 16);
      if (v14 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
      {
        sub_1BE048C84();
        if (!i)
        {
          break;
        }

        v49 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x1BFB40900](v49, v14);
          }

          else
          {
            if (v49 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v50 = *(v14 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          v53 = [v50 identifier];
          v54 = sub_1BE052434();
          v56 = v55;

          if (v54 == v25 && v56 == v24)
          {
            v24, v57, v58, v59, v60, v61, v62, v63;
            v14, v81, v82, v83, v84, v85, v86, v87;
            v56, v88, v89, v90, v91, v92, v93, v94;
            return v51;
          }

          v65 = sub_1BE053B84();
          v56, v66, v67, v68, v69, v70, v71, v72;
          if (v65)
          {
            v24, v73, v74, v75, v76, v77, v78, v79;
            v14, v95, v96, v97, v98, v99, v100, v101;
            return v51;
          }

          ++v49;
          if (v52 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

LABEL_19:
      v24, v42, v43, v44, v45, v46, v47, v48;
    }

    v14, v16, v17, v18, v19, v20, v21, v22;
  }

  return 0;
}

void sub_1BD40AFAC(void *a1)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = *(v1 + 40);
  v75 = v2;
  if (v12 >> 62)
  {
LABEL_29:
    v76 = v12 & 0xFFFFFFFFFFFFFF8;
    v77 = sub_1BE053704();
  }

  else
  {
    v76 = v12 & 0xFFFFFFFFFFFFFF8;
    v77 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  v20 = 0;
  v21 = &selRef_hoursOfDay;
  while (v77 != v20)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1BFB40900](v20, v12);
    }

    else
    {
      if (v20 >= *(v76 + 16))
      {
        goto LABEL_28;
      }

      v23 = *(v12 + 8 * v20 + 32);
    }

    v24 = v23;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v25 = [a1 v21[20]];
    if (!v25)
    {
      sub_1BE052434();
      v27 = v26;
      v25 = sub_1BE052404();
      v27, v28, v29, v30, v31, v32, v33, v34;
    }

    v35 = v21;
    v36 = [v24 v21[20]];
    if (!v36)
    {
      sub_1BE052434();
      v38 = v37;
      v36 = sub_1BE052404();
      v38, v39, v40, v41, v42, v43, v44, v45;
    }

    v46 = v25;
    v47 = v36;
    v48 = v47;
    if (v25 == v36)
    {

LABEL_25:
LABEL_26:
      v12, v13, v14, v15, v16, v17, v18, v19;
      return;
    }

    if (v46 && v47)
    {
      v49 = [v46 isEqualToString:v47];

      if (v49)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v22 = [v24 isEqualIgnoringIdentifiers_];

    ++v20;
    v21 = v35;
    if (v22)
    {
      goto LABEL_26;
    }
  }

  v12, v13, v14, v15, v16, v17, v18, v19;
  v50 = swift_getKeyPath();
  sub_1BE04B594();
  v50, v51, v52, v53, v54, v55, v56, v57;
  v58 = swift_getKeyPath();
  sub_1BE04B5B4();
  v58, v59, v60, v61, v62, v63, v64, v65;
  swift_beginAccess();
  v66 = a1;
  MEMORY[0x1BFB3F7A0]();
  if (*((*(v75 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v75 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  swift_endAccess();
  v67 = swift_getKeyPath();
  sub_1BE04B5A4();
  v67, v68, v69, v70, v71, v72, v73, v74;
}

id *AddressInformation.deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC9PassKitUI18AddressInformation___observationRegistrar;
  v24 = sub_1BE04B5D4();
  (*(*(v24 - 8) + 8))(v8 + v23, v24);
  return v8;
}

uint64_t AddressInformation.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC9PassKitUI18AddressInformation___observationRegistrar;
  v24 = sub_1BE04B5D4();
  (*(*(v24 - 8) + 8))(v8 + v23, v24);

  return swift_deallocClassInstance();
}

void sub_1BD40B494(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0493F4();
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v57 - v8;
  v76 = sub_1BE049B04();
  v67 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45960, &qword_1BE0D4C98);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v70 = &v57 - v16;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v69 = v14;
    v64 = v6;
    v65 = a2;
    v17 = 0;
    v61 = a1;
    v20 = *(a1 + 64);
    v19 = a1 + 64;
    v18 = v20;
    v21 = 1 << *(v19 - 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v58 = (v21 + 63) >> 6;
    v59 = v19;
    v60 = v67 + 16;
    v74 = (v67 + 32);
    v72 = v77 + 16;
    v73 = (v77 + 32);
    v62 = (v67 + 8);
    v63 = (v77 + 8);
    while (v23)
    {
      v71 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
      v31 = v61;
      v33 = v66;
      v32 = v67;
      v34 = v76;
      (*(v67 + 16))(v66, *(v61 + 48) + *(v67 + 72) * v24, v76, v15);
      v35 = *(v31 + 56);
      v36 = v77;
      v37 = v75;
      (*(v77 + 16))(v75, v35 + *(v77 + 72) * v24, v4);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4B880, &unk_1BE0D4CA0);
      v39 = *(v38 + 48);
      v40 = *(v32 + 32);
      v28 = v69;
      v40(v69, v33, v34);
      (*(v36 + 32))(v28 + v39, v37, v4);
      (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
      v27 = v70;
      v23 = v71;
LABEL_17:
      sub_1BD40F700(v28, v27);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4B880, &unk_1BE0D4CA0);
      if ((*(*(v41 - 8) + 48))(v27, 1, v41) == 1)
      {
        return;
      }

      v42 = *(v41 + 48);
      v43 = v4;
      v44 = v68;
      v45 = v76;
      (*v74)(v68, v27, v76);
      v46 = v64;
      (*v73)(v64, v27 + v42, v43);
      v47 = v65;
      v48 = sub_1BD148E9C(v44);
      v50 = v49;
      (*v62)(v44, v45);
      if ((v50 & 1) == 0)
      {
        (*v63)(v46, v43);
        return;
      }

      v51 = v77;
      v52 = *(v47 + 56) + *(v77 + 72) * v48;
      v53 = v75;
      (*(v77 + 16))(v75, v52, v43);
      sub_1BD40F6B8(&qword_1EBD44EA8, MEMORY[0x1E6967790], MEMORY[0x1E69677A8]);
      v54 = sub_1BE052334();
      v55 = *(v51 + 8);
      v55(v53, v43);
      v55(v46, v43);
      v4 = v43;
      if ((v54 & 1) == 0)
      {
        return;
      }
    }

    if (v58 <= v17 + 1)
    {
      v25 = v17 + 1;
    }

    else
    {
      v25 = v58;
    }

    v26 = v25 - 1;
    v28 = v69;
    v27 = v70;
    while (1)
    {
      v29 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v29 >= v58)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4B880, &unk_1BE0D4CA0);
        (*(*(v56 - 8) + 56))(v28, 1, 1, v56);
        v23 = 0;
        v17 = v26;
        goto LABEL_17;
      }

      v30 = *(v59 + 8 * v29);
      ++v17;
      if (v30)
      {
        v71 = (v30 - 1) & v30;
        v24 = __clz(__rbit64(v30)) | (v29 << 6);
        v17 = v29;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1BD40BAC8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);
      sub_1BE048C84();
      v17 = v16;
      v18 = sub_1BD148F70(v14, v15);
      v20 = v19;
      v15, v19, v21, v22, v23, v24, v25, v26;
      if ((v20 & 1) == 0)
      {

        return;
      }

      type metadata accessor for TransactionsModel(0);
      v27 = *(*(a2 + 56) + 8 * v18);
      v28 = sub_1BE053074();

      if ((v28 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BD40BC38(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v47 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];
    sub_1BE048C84();
    sub_1BE048C84();
    v20 = sub_1BD148F70(v15, v16);
    v22 = v21;
    v16, v21, v23, v24, v25, v26, v27, v28;
    if ((v22 & 1) == 0)
    {
      v18, v29, v30, v31, v32, v33, v34, v35;
      return 0;
    }

    v36 = (*(a2 + 56) + 16 * v20);
    v37 = v36[1];
    if (*v36 == v19 && v37 == v18)
    {
      v18, v37, v30, v31, v32, v33, v34, v35;
      result = v13;
      v7 = v47;
    }

    else
    {
      v39 = sub_1BE053B84();
      v18, v40, v41, v42, v43, v44, v45, v46;
      result = v13;
      v7 = v47;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD40BDDC(unint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_29:
    v60 = sub_1BE053704();
  }

  else
  {
    v60 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v60 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1BFB40900](v8, a1);
    }

    else
    {
      if (v8 >= *(v7 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v17 = *(a1 + 8 * v8 + 32);
    }

    v18 = v17;
    v19 = [v17 passTypeIdentifier];
    v20 = sub_1BE052434();
    v22 = v21;

    if (a3)
    {
      if (v20 == a2 && v22 == a3)
      {
        v22, v23, a2, v24, v25, v26, v27, v28;
      }

      else
      {
        v30 = sub_1BE053B84();
        v22, v31, v32, v33, v34, v35, v36, v37;
        if ((v30 & 1) == 0)
        {

          goto LABEL_5;
        }
      }

      v38 = [v18 serialNumber];
      v39 = sub_1BE052434();
      v22 = v40;

      if (a5)
      {
        break;
      }
    }

    v22, v9, v10, v11, v12, v13, v14, v15;
LABEL_5:
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_28;
    }
  }

  if (v39 != a4 || v22 != a5)
  {
    v41 = sub_1BE053B84();

    v22, v42, v43, v44, v45, v46, v47, v48;
    if (v41)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v22, v50, v51, v52, v53, v54, v55, v56;
  return v8;
}

uint64_t sub_1BD40BFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_1BE053B84() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_1BD40C070(void *a1, void *a2, char *a3)
{
  v138 = a2;
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v134 - v10;
  if (!a1)
  {
    return;
  }

  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE048964();
  v136 = a1;
  v14 = a1;
  sub_1BE04D8B4(&v139);
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v13, v22, v23, v24, v25, v26, v27, v28;
  v135 = v139;
  if (v139)
  {
    v134 = v6;
    v137 = v5;
    v29 = v139;
    v30 = [v14 identifier];
    v31 = sub_1BE052434();
    v33 = v32;

    v34 = [v29 identifier];
    v35 = sub_1BE052434();
    v37 = v36;

    if (v31 == v35 && v33 == v37)
    {
      a3, v38, v39, v40, v41, v42, v43, v44;

      v33, v45, v46, v47, v48, v49, v50, v51;
      v37, v52, v53, v54, v55, v56, v57, v58;
      v5 = v137;
      v6 = v134;
LABEL_8:
      sub_1BE04D1E4();
      v81 = sub_1BE04D204();
      v82 = sub_1BE052C54();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_1BD026000, v81, v82, "Default email already set to value, returning", v83, 2u);
        MEMORY[0x1BFB45F20](v83, -1, -1);
      }

      else
      {
      }

      (v6[1])(v11, v5);
      return;
    }

    v59 = sub_1BE053B84();

    v33, v60, v61, v62, v63, v64, v65, v66;
    v37, v67, v68, v69, v70, v71, v72, v73;
    v5 = v137;
    v6 = v134;
    if (v59)
    {
      a3, v74, v75, v76, v77, v78, v79, v80;
      goto LABEL_8;
    }
  }

  v84 = v14;
  sub_1BE04D1E4();
  v85 = v84;
  v86 = sub_1BE04D204();
  v87 = sub_1BE052C54();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v137 = v5;
    v89 = v88;
    v134 = swift_slowAlloc();
    v139 = v134;
    *v89 = 136315138;
    v90 = [v85 description];
    v91 = sub_1BE052434();
    v92 = v6;
    v94 = v93;

    v95 = sub_1BD123690(v91, v94, &v139);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v89 + 4) = v95;
    _os_log_impl(&dword_1BD026000, v86, v87, "Setting default email address to existing contact:%s", v89, 0xCu);
    v103 = v134;
    __swift_destroy_boxed_opaque_existential_0(v134, v104, v105, v106, v107, v108, v109, v110);
    MEMORY[0x1BFB45F20](v103, -1, -1);
    MEMORY[0x1BFB45F20](v89, -1, -1);

    (v92[1])(v8, v137);
  }

  else
  {

    (v6[1])(v8, v5);
  }

  v111 = &a3[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context];
  v112 = *&a3[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context];
  if (v112)
  {
    v114 = *(v111 + 4);
    v113 = *(v111 + 5);
    v116 = *(v111 + 2);
    v115 = *(v111 + 3);
    v117 = *(v111 + 1);
    v118 = v85;
    sub_1BD36A5EC(v112, v117, v116, v115, v114);
    sub_1BD785FE0(v136, v112, v114);
    v113, v119, v120, v121, v122, v123, v124, v125;

    a3, v126, v127, v128, v129, v130, v131, v132;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v139 = v136;
    v133 = v85;
    sub_1BE04D8C4();
  }

  [v138 setDefaultContactEmail_];
}

void sub_1BD40C574(void *a1, void *a2, char *a3)
{
  v138 = a2;
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v134 - v10;
  if (!a1)
  {
    return;
  }

  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE048964();
  v136 = a1;
  v14 = a1;
  sub_1BE04D8B4(&v139);
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v13, v22, v23, v24, v25, v26, v27, v28;
  v135 = v139;
  if (v139)
  {
    v134 = v6;
    v137 = v5;
    v29 = v139;
    v30 = [v14 identifier];
    v31 = sub_1BE052434();
    v33 = v32;

    v34 = [v29 identifier];
    v35 = sub_1BE052434();
    v37 = v36;

    if (v31 == v35 && v33 == v37)
    {
      a3, v38, v39, v40, v41, v42, v43, v44;

      v33, v45, v46, v47, v48, v49, v50, v51;
      v37, v52, v53, v54, v55, v56, v57, v58;
      v5 = v137;
      v6 = v134;
LABEL_8:
      sub_1BE04D1E4();
      v81 = sub_1BE04D204();
      v82 = sub_1BE052C54();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_1BD026000, v81, v82, "Default phone number already set to value, returning", v83, 2u);
        MEMORY[0x1BFB45F20](v83, -1, -1);
      }

      else
      {
      }

      (v6[1])(v11, v5);
      return;
    }

    v59 = sub_1BE053B84();

    v33, v60, v61, v62, v63, v64, v65, v66;
    v37, v67, v68, v69, v70, v71, v72, v73;
    v5 = v137;
    v6 = v134;
    if (v59)
    {
      a3, v74, v75, v76, v77, v78, v79, v80;
      goto LABEL_8;
    }
  }

  v84 = v14;
  sub_1BE04D1E4();
  v85 = v84;
  v86 = sub_1BE04D204();
  v87 = sub_1BE052C54();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v137 = v5;
    v89 = v88;
    v134 = swift_slowAlloc();
    v139 = v134;
    *v89 = 136315138;
    v90 = [v85 description];
    v91 = sub_1BE052434();
    v92 = v6;
    v94 = v93;

    v95 = sub_1BD123690(v91, v94, &v139);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v89 + 4) = v95;
    _os_log_impl(&dword_1BD026000, v86, v87, "Setting default phone number to existing contact:%s", v89, 0xCu);
    v103 = v134;
    __swift_destroy_boxed_opaque_existential_0(v134, v104, v105, v106, v107, v108, v109, v110);
    MEMORY[0x1BFB45F20](v103, -1, -1);
    MEMORY[0x1BFB45F20](v89, -1, -1);

    (v92[1])(v8, v137);
  }

  else
  {

    (v6[1])(v8, v5);
  }

  v111 = &a3[OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context];
  v112 = *&a3[OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context];
  if (v112)
  {
    v114 = *(v111 + 4);
    v113 = *(v111 + 5);
    v116 = *(v111 + 2);
    v115 = *(v111 + 3);
    v117 = *(v111 + 1);
    v118 = v85;
    sub_1BD36A5EC(v112, v117, v116, v115, v114);
    sub_1BD91A048(v136, v112, v114);
    v113, v119, v120, v121, v122, v123, v124, v125;

    a3, v126, v127, v128, v129, v130, v131, v132;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v139 = v136;
    v133 = v85;
    sub_1BE04D8C4();
  }

  [v138 setDefaultContactPhone_];
}

id sub_1BD40CA78(void *a1, char a2, void *a3, uint64_t a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v169 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v169 - v16;
  if (a2)
  {
    sub_1BE04D1E4();
    v18 = a1;
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C54();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v172 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      v173 = a1;
      v174[0] = v23;
      v24 = v23;
      *v22 = 136315138;
      v25 = [v18 description];
      v26 = sub_1BE052434();
      v170 = v18;
      v171 = v8;
      v27 = v9;
      v28 = v26;
      v30 = v29;

      v31 = sub_1BD123690(v28, v30, v174);
      v30, v32, v33, v34, v35, v36, v37, v38;
      *(v22 + 4) = v31;
      _os_log_impl(&dword_1BD026000, v19, v20, "Added new default shipping address:%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24, v39, v40, v41, v42, v43, v44, v45);
      v46 = v24;
      a1 = v173;
      MEMORY[0x1BFB45F20](v46, -1, -1);
      v47 = v22;
      a3 = v172;
      MEMORY[0x1BFB45F20](v47, -1, -1);

      (*(v27 + 8))(v17, v171);
      v18 = v170;
    }

    else
    {

      (*(v9 + 8))(v17, v8);
    }

    v81 = sub_1BE052434();
    v83 = v82;
    sub_1BD51D5B4(v18, v81, v82, v84, v85, v86, v87, v88);
    v83, v89, v90, v91, v92, v93, v94, v95;
    KeyPath = swift_getKeyPath();
    v174[0] = a4;
    sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
    sub_1BE04B594();
    KeyPath, v97, v98, v99, v100, v101, v102, v103;
    v174[0] = a4;
    v104 = swift_getKeyPath();
    sub_1BE04B5B4();
    v104, v105, v106, v107, v108, v109, v110, v111;
    swift_beginAccess();
    v112 = v18;
    MEMORY[0x1BFB3F7A0]();
    if (*((*(a4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
    v174[0] = a4;
    v113 = swift_getKeyPath();
    sub_1BE04B5A4();
    v113, v114, v115, v116, v117, v118, v119, v120;
LABEL_21:
    v168 = a1;
    sub_1BD40566C(a1);
    return [a3 setDefaultShippingAddress_];
  }

  v48 = swift_getKeyPath();
  v174[0] = a4;
  sub_1BD40F6B8(&qword_1EBD40C38, type metadata accessor for AddressInformation, &protocol conformance descriptor for AddressInformation);
  sub_1BE04B594();
  v48, v49, v50, v51, v52, v53, v54, v55;
  v56 = *(a4 + 32);
  v173 = a1;
  if (!v56)
  {
    goto LABEL_17;
  }

  v171 = v9;
  v172 = a3;
  v57 = v8;
  v58 = v56;
  v59 = [a1 identifier];
  v60 = sub_1BE052434();
  v62 = v61;

  v170 = v58;
  v63 = [v58 identifier];
  v64 = sub_1BE052434();
  v66 = v65;

  if (v60 != v64 || v62 != v66)
  {
    v121 = sub_1BE053B84();
    v62, v122, v123, v124, v125, v126, v127, v128;
    v66, v129, v130, v131, v132, v133, v134, v135;
    v8 = v57;
    v9 = v171;
    if (v121)
    {
      goto LABEL_13;
    }

    a3 = v172;
    a1 = v173;
LABEL_17:
    sub_1BE04D1E4();
    v140 = a1;
    v141 = sub_1BE04D204();
    v142 = sub_1BE052C54();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v172 = a3;
      v145 = v144;
      v174[0] = v144;
      *v143 = 136315138;
      v146 = [v140 description];
      v147 = sub_1BE052434();
      v171 = v8;
      v148 = v147;
      v149 = v9;
      v151 = v150;

      v152 = sub_1BD123690(v148, v151, v174);
      v151, v153, v154, v155, v156, v157, v158, v159;
      *(v143 + 4) = v152;
      _os_log_impl(&dword_1BD026000, v141, v142, "Setting default shipping address to existing contact:%s", v143, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v145, v160, v161, v162, v163, v164, v165, v166);
      v167 = v145;
      a3 = v172;
      MEMORY[0x1BFB45F20](v167, -1, -1);
      MEMORY[0x1BFB45F20](v143, -1, -1);

      (*(v149 + 8))(v11, v171);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    a1 = v173;
    goto LABEL_21;
  }

  v62, v67, v68, v69, v70, v71, v72, v73;
  v66, v74, v75, v76, v77, v78, v79, v80;
  v8 = v57;
  v9 = v171;
LABEL_13:
  sub_1BE04D1E4();
  v136 = sub_1BE04D204();
  v137 = sub_1BE052C54();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    *v138 = 0;
    _os_log_impl(&dword_1BD026000, v136, v137, "Default shipping address already set to value, returning", v138, 2u);
    MEMORY[0x1BFB45F20](v138, -1, -1);
  }

  return (*(v9 + 8))(v14, v8);
}

void sub_1BD40D1B4(void *a1, void *a2, char *a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D1E4();
  v10 = a1;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v123 = a2;
    v121 = v14;
    v125 = v14;
    *v13 = 136315138;
    v15 = a3;
    v16 = [v10 description];
    v17 = sub_1BE052434();
    v122 = v6;
    v18 = v17;
    v19 = v10;
    v21 = v20;

    a3 = v15;
    v22 = sub_1BD123690(v18, v21, &v125);
    v23 = v21;
    v10 = v19;
    v23, v24, v25, v26, v27, v28, v29, v30;
    *(v13 + 4) = v22;
    _os_log_impl(&dword_1BD026000, v11, v12, "Added new default email:%s", v13, 0xCu);
    v31 = v121;
    __swift_destroy_boxed_opaque_existential_0(v121, v32, v33, v34, v35, v36, v37, v38);
    a2 = v123;
    MEMORY[0x1BFB45F20](v31, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);

    (*(v7 + 8))(v9, v122);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v39 = sub_1BE052434();
  v41 = v40;
  v42 = v10;
  sub_1BD51D5B4(v42, v39, v41, v43, v44, v45, v46, v47);
  v41, v48, v49, v50, v51, v52, v53, v54;
  KeyPath = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v57 = v42;
  sub_1BE048964();
  sub_1BE04D8B4(&v125);
  KeyPath, v58, v59, v60, v61, v62, v63, v64;
  v56, v65, v66, v67, v68, v69, v70, v71;
  MEMORY[0x1BFB3F7A0]();
  if (v125[2] >= v125[3] >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v72 = v125;
  v73 = swift_getKeyPath();
  v74 = swift_getKeyPath();
  sub_1BE04D8B4(&v124);
  v73, v75, v76, v77, v78, v79, v80, v81;
  v74, v82, v83, v84, v85, v86, v87, v88;
  v89 = v124;
  swift_getKeyPath();
  swift_getKeyPath();
  v124 = v72;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD77C960(v89);
  v89, v90, v91, v92, v93, v94, v95, v96;
  v97 = &a3[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context];
  v98 = *&a3[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context];
  if (v98)
  {
    v100 = *(v97 + 4);
    v99 = *(v97 + 5);
    v102 = *(v97 + 2);
    v101 = *(v97 + 3);
    v103 = *(v97 + 1);
    v104 = v57;
    sub_1BD36A5EC(v98, v103, v102, v101, v100);
    sub_1BD785FE0(v57, v98, v100);
    v99, v105, v106, v107, v108, v109, v110, v111;

    a3, v112, v113, v114, v115, v116, v117, v118;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v125 = v57;
    v119 = v57;
    sub_1BE04D8C4();
  }

  [a2 setDefaultContactEmail_];
}

void sub_1BD40D604(void *a1, void *a2, char *a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D1E4();
  v10 = a1;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v123 = a2;
    v121 = v14;
    v125 = v14;
    *v13 = 136315138;
    v15 = a3;
    v16 = [v10 description];
    v17 = sub_1BE052434();
    v122 = v6;
    v18 = v17;
    v19 = v10;
    v21 = v20;

    a3 = v15;
    v22 = sub_1BD123690(v18, v21, &v125);
    v23 = v21;
    v10 = v19;
    v23, v24, v25, v26, v27, v28, v29, v30;
    *(v13 + 4) = v22;
    _os_log_impl(&dword_1BD026000, v11, v12, "Added new default phone number:%s", v13, 0xCu);
    v31 = v121;
    __swift_destroy_boxed_opaque_existential_0(v121, v32, v33, v34, v35, v36, v37, v38);
    a2 = v123;
    MEMORY[0x1BFB45F20](v31, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);

    (*(v7 + 8))(v9, v122);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v39 = sub_1BE052434();
  v41 = v40;
  v42 = v10;
  sub_1BD51D5B4(v42, v39, v41, v43, v44, v45, v46, v47);
  v41, v48, v49, v50, v51, v52, v53, v54;
  KeyPath = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v57 = v42;
  sub_1BE048964();
  sub_1BE04D8B4(&v125);
  KeyPath, v58, v59, v60, v61, v62, v63, v64;
  v56, v65, v66, v67, v68, v69, v70, v71;
  MEMORY[0x1BFB3F7A0]();
  if (v125[2] >= v125[3] >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v72 = v125;
  v73 = swift_getKeyPath();
  v74 = swift_getKeyPath();
  sub_1BE04D8B4(&v124);
  v73, v75, v76, v77, v78, v79, v80, v81;
  v74, v82, v83, v84, v85, v86, v87, v88;
  v89 = v124;
  swift_getKeyPath();
  swift_getKeyPath();
  v124 = v72;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD917E9C(v89);
  v89, v90, v91, v92, v93, v94, v95, v96;
  v97 = &a3[OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context];
  v98 = *&a3[OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context];
  if (v98)
  {
    v100 = *(v97 + 4);
    v99 = *(v97 + 5);
    v102 = *(v97 + 2);
    v101 = *(v97 + 3);
    v103 = *(v97 + 1);
    v104 = v57;
    sub_1BD36A5EC(v98, v103, v102, v101, v100);
    sub_1BD91A048(v57, v98, v100);
    v99, v105, v106, v107, v108, v109, v110, v111;

    a3, v112, v113, v114, v115, v116, v117, v118;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v125 = v57;
    v119 = v57;
    sub_1BE04D8C4();
  }

  [a2 setDefaultContactPhone_];
}

id sub_1BD40DA54(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v55 - v6;
  *(v2 + 32) = 0;
  sub_1BE04B5C4();
  *(v2 + 48) = a1;
  v60 = a1;
  v8 = [v60 defaultShippingAddress];

  v16 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = v8;
  *(v2 + 40) = v16;
  v17 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = v16;
  *(v2 + 24) = v17;
  v56 = v7;
  if (a2 >> 62)
  {
LABEL_17:
    v18 = sub_1BE053704();
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_18:
    a2, v9, v10, v11, v12, v13, v14, v15;
    v42 = sub_1BE0528D4();
    v43 = v56;
    (*(*(v42 - 8) + 56))(v56, 1, 1, v42);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v45 = v60;
    v44[4] = v60;
    v44[5] = v2;
    v46 = v45;
    sub_1BE048964();
    v47 = sub_1BD122C00(0, 0, v43, &unk_1BE0D4F08, v44);
    v47, v48, v49, v50, v51, v52, v53, v54;
    return v2;
  }

  v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_3:
  v19 = 0;
  v20 = a2 & 0xC000000000000001;
  v57 = a2 & 0xFFFFFFFFFFFFFF8;
  v58 = a2 & 0xC000000000000001;
  v21 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
  v59 = v18;
  while (1)
  {
    if (v20)
    {
      v22 = MEMORY[0x1BFB40900](v19, a2);
    }

    else
    {
      if (v19 >= *(v57 + 16))
      {
        goto LABEL_16;
      }

      v22 = *(a2 + 8 * v19 + 32);
    }

    v23 = v22;
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v25 = [v22 v21[51]];
    if (v25)
    {
      break;
    }

LABEL_5:

    ++v19;
    if (v24 == v18)
    {
      goto LABEL_18;
    }
  }

  v26 = v25;
  v27 = [v60 defaultBillingAddressForPaymentPass_];
  if (!v27)
  {

    goto LABEL_5;
  }

  v28 = v27;
  v29 = a2;
  sub_1BD40A050(v27);
  result = [v23 uniqueID];
  if (result)
  {
    v31 = result;
    v32 = sub_1BE052434();
    v34 = v33;

    sub_1BD40A3EC(v32, v34, v28);
    v34, v35, v36, v37, v38, v39, v40, v41;
    a2 = v29;
    v20 = v58;
    v18 = v59;
    v21 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1BD40DD40(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v197 = a2;
  v199 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v198 = &v194 - v7;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D0, &unk_1BE0D4EC0);
  v8 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v201 = &v194 - v9;
  v10 = sub_1BE04D214();
  v203 = *(v10 - 1);
  v204 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v194 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v196 = &v194 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v195 = &v194 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v194 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v194 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v194 - v23;
  type metadata accessor for AddressInformation(0);
  swift_allocObject();
  sub_1BE048C84();
  v25 = a1;
  v206 = sub_1BD40DA54(v25, a3);

  v205 = v25;
  v26 = [v25 defaultContactEmail];
  v27 = v26 == 0;
  v200 = v8;
  if (v26)
  {
    sub_1BE052434();
    v29 = v28;
    v30 = v26;
    v31 = sub_1BE052404();
    v29, v32, v33, v34, v35, v36, v37, v38;
    [v30 setValueSource_];

    v207 = v26;
  }

  else
  {
    sub_1BE04D1E4();
    v39 = sub_1BE04D204();
    v40 = sub_1BE052C54();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1BD026000, v39, v40, "No defaults for default email, will attempt to fall back on me card", v41, 2u);
      MEMORY[0x1BFB45F20](v41, -1, -1);
    }

    v203[1](v24, v204);
    v207 = 0;
  }

  v42 = v205;
  v43 = [v205 defaultContactPhone];
  if (v43)
  {
    sub_1BE052434();
    v45 = v44;
    v46 = v43;
    v47 = sub_1BE052404();
    v45, v48, v49, v50, v51, v52, v53, v54;
    [v46 setValueSource_];

    v55 = v43;
  }

  else
  {
    sub_1BE04D1E4();
    v56 = sub_1BE04D204();
    v57 = sub_1BE052C54();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1BD026000, v56, v57, "No defaults for default phone number, will attempt to fall back on me card", v58, 2u);
      MEMORY[0x1BFB45F20](v58, -1, -1);
    }

    v203[1](v21, v204);
    v55 = 0;
    v27 = 1;
  }

  v59 = [v42 defaultShippingAddress];
  v60 = v59;
  if (v59)
  {
    v61 = v59;
    if (!v27)
    {
      v62 = v55;
      v61 = v59;
      v63 = v207;
      goto LABEL_32;
    }
  }

  else
  {
    v64 = a3;
    v65 = v55;
    sub_1BE04D1E4();
    v66 = sub_1BE04D204();
    v67 = sub_1BE052C54();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1BD026000, v66, v67, "No defaults for default shipping address, will attempt to fall back on me card", v68, 2u);
      MEMORY[0x1BFB45F20](v68, -1, -1);
    }

    v203[1](v18, v204);
    v61 = 0;
    v55 = v65;
    a3 = v64;
  }

  v69 = [v197 meCard];
  if (!v69)
  {
    v62 = v55;
    v63 = v207;
    goto LABEL_32;
  }

  v70 = v69;
  v63 = v207;
  if (v207)
  {
    if (v55)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v207 = a3;
    v71 = v61;
    v72 = v55;
    sub_1BE04D1E4();
    v73 = sub_1BE04D204();
    v74 = sub_1BE052C54();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1BD026000, v73, v74, "Falling back on meCard for default email address", v75, 2u);
      MEMORY[0x1BFB45F20](v75, -1, -1);
    }

    v203[1](v195, v204);
    sub_1BE052434();
    v77 = v76;
    v78 = v70;
    v79 = sub_1BE052404();
    v77, v80, v81, v82, v83, v84, v85, v86;
    [v78 setValueSource_];

    v63 = v70;
    v55 = v72;
    v61 = v71;
    a3 = v207;
    if (v55)
    {
LABEL_20:
      v62 = v55;
      if (v61)
      {
LABEL_21:

        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  v87 = a3;
  v88 = v61;
  sub_1BE04D1E4();
  v89 = sub_1BE04D204();
  v90 = sub_1BE052C54();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_1BD026000, v89, v90, "Falling back on meCard for default phone number", v91, 2u);
    MEMORY[0x1BFB45F20](v91, -1, -1);
  }

  v203[1](v196, v204);
  sub_1BE052434();
  v93 = v92;
  v94 = v70;
  v95 = sub_1BE052404();
  v93, v96, v97, v98, v99, v100, v101, v102;
  [v94 setValueSource_];

  v61 = v88;
  a3 = v87;
  v62 = v70;
  if (v61)
  {
    goto LABEL_21;
  }

LABEL_29:
  v103 = v194;
  sub_1BE04D1E4();
  v104 = sub_1BE04D204();
  v105 = sub_1BE052C54();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_1BD026000, v104, v105, "Falling back on meCard for default shipping address", v106, 2u);
    MEMORY[0x1BFB45F20](v106, -1, -1);
  }

  v203[1](v103, v204);
  v61 = v70;
LABEL_32:
  v204 = v61;
  [v42 setDefaultShippingAddress_];
  sub_1BD404C34(a3, v42);
  v107 = v202;
  if (v63)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459E8, &qword_1BE0D4EF8);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1BE0B69E0;
    *(v108 + 32) = v63;
  }

  else
  {
    v108 = MEMORY[0x1E69E7CC0];
  }

  v197 = type metadata accessor for EmailAddresses(0);
  swift_allocObject();
  v203 = v63;
  v196 = sub_1BD77FD44(v63, v108, MEMORY[0x1E69E7CC0], 1);
  v109 = v62;
  v207 = v63;
  if (v62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459E0, &qword_1BE0D4EF0);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_1BE0B69E0;
    *(v110 + 32) = v62;
  }

  else
  {
    v110 = MEMORY[0x1E69E7CC0];
  }

  v195 = type metadata accessor for PhoneNumbers(0);
  v111 = swift_allocObject();
  v112 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__internalSelectedPhoneNumber;
  v210[0] = 0;
  v113 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FC8, &qword_1BE0CF180);
  v114 = v201;
  sub_1BE04D874();
  v115 = v200;
  (*(v200 + 32))(v111 + v112, v114, v107);
  v116 = (v111 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  *v116 = 0u;
  v116[1] = 0u;
  v116[2] = 0u;
  v117 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_defaults;
  *(v111 + v117) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  v118 = [objc_opt_self() defaultInstance];
  if (v118)
  {
    *(v111 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_recents) = v118;
    v119 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__internalSelectedPhoneNumber;
    swift_beginAccess();
    v120 = *(v115 + 8);
    v121 = v113;
    v120(v111 + v119, v107);
    v202 = v109;
    v209 = v109;
    sub_1BE04D874();
    swift_endAccess();
    v129 = MEMORY[0x1E69E7CD0];
    v209 = MEMORY[0x1E69E7CD0];
    v130 = MEMORY[0x1E69E7CC0];
    v208 = MEMORY[0x1E69E7CC0];
    v131 = *(v110 + 16);
    if (v131)
    {
      v132 = (v110 + 32);
      v133 = v203;
      v134 = v196;
      do
      {
        v135 = *v132;
        v136 = sub_1BD99F5F8(v135);
        v138 = sub_1BD2A5644(v210, v136, v137);
        v210[1], v139, v140, v141, v142, v143, v144, v145;
        if (v138)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v132;
        --v131;
      }

      while (v131);
      v146 = v208;
      v129 = v209;
      v130 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v146 = MEMORY[0x1E69E7CC0];
      v133 = v203;
      v134 = v196;
    }

    v110, v122, v123, v124, v125, v126, v127, v128;
    v129, v147, v148, v149, v150, v151, v152, v153;
    swift_beginAccess();
    v209 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FB8, &unk_1BE0D4ED0);
    sub_1BE04D874();
    swift_endAccess();
    swift_beginAccess();
    v209 = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D8, &qword_1BE0F5B50);
    sub_1BE04D874();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v209) = 1;
    sub_1BE04D874();
    swift_endAccess();

    v154 = (v111 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
    v155 = *(v111 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
    v156 = *(v111 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 8);
    v157 = *(v111 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 16);
    v158 = *(v111 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 24);
    v159 = *(v111 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 32);
    v160 = *(v111 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 40);
    *v154 = 0u;
    v154[1] = 0u;
    v154[2] = 0u;
    sub_1BD40FB5C(v155, v156, v157, v158, v159, v160);
    v161 = v198;
    if (v207)
    {
      v162 = v133;
    }

    v163 = sub_1BE0528D4();
    v164 = *(*(v163 - 8) + 56);
    v164(v161, 1, 1, v163);
    v165 = swift_allocObject();
    v165[2] = 0;
    v165[3] = 0;
    v165[4] = v207;
    v165[5] = v134;
    sub_1BE048964();
    v166 = sub_1BD122C00(0, 0, v161, &unk_1BE0D4EE0, v165);
    v166, v167, v168, v169, v170, v171, v172, v173;
    v174 = v202;
    if (v202)
    {
      v175 = v121;
    }

    v164(v161, 1, 1, v163);
    v176 = swift_allocObject();
    v176[2] = 0;
    v176[3] = 0;
    v176[4] = v174;
    v176[5] = v111;
    sub_1BE048964();
    v177 = sub_1BD122C00(0, 0, v161, &unk_1BE0D4EE8, v176);
    v177, v178, v179, v180, v181, v182, v183, v184;
    sub_1BD40F6B8(&qword_1EBD3A6F8, type metadata accessor for EmailAddresses, &unk_1BE0F5E64);
    v185 = sub_1BE04E954();
    v187 = v186;
    sub_1BD40F6B8(&qword_1EBD3A700, type metadata accessor for PhoneNumbers, &unk_1BE105790);
    v188 = sub_1BE04E954();
    v190 = v189;
    v191 = v205;

    v192 = v199;
    v193 = v206;
    *v199 = v191;
    v192[1] = v193;
    v192[2] = v185;
    v192[3] = v187;
    v192[4] = v188;
    v192[5] = v190;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD40EC88()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D1E4();
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v4, v5, "FMDFMMM lost mode exit is not supported on this device", v6, 2u);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BD40EDBC()
{
  v1 = sub_1BE04D214();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD40EE78, 0, 0);
}

uint64_t sub_1BD40EE78(uint64_t a1)
{
  sub_1BE04D1E4();
  v2 = sub_1BE04D204();
  v3 = sub_1BE052C54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, v3, "Checking FMDFMMM lost mode exit requirement is not supported on this device,\nskipping and setting to false", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8(0);
}

uint64_t sub_1BD40EF7C(unint64_t *a1, void *a2, id a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = a4;
  v11 = *a1;
  v12 = sub_1BD40BDDC(*a1, a2, a3, a4, a5);
  v14 = v12;
  if (v5)
  {
    return v14;
  }

  v74 = a2;
  v72 = v7;
  v73 = v6;
  if (v13)
  {
    if (v11 >> 62)
    {
      return sub_1BE053704();
    }

    return *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = 0;
  v15 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v11 >> 62)
    {
      if (v15 == sub_1BE053704())
      {
        return v14;
      }
    }

    else if (v15 == *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v14;
    }

    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x1BFB40900](v15, v11);
LABEL_17:
    v20 = v19;
    v21 = [v19 passTypeIdentifier];
    v22 = sub_1BE052434();
    v24 = v23;

    if (!a3)
    {
      goto LABEL_26;
    }

    if (v22 == v74 && v24 == a3)
    {
      v24, v25, v74, v26, v27, v28, v29, v30;
    }

    else
    {
      v31 = sub_1BE053B84();
      v24, v32, v33, v34, v35, v36, v37, v38;
      if ((v31 & 1) == 0)
      {

        goto LABEL_29;
      }
    }

    v39 = [v20 serialNumber];
    v40 = sub_1BE052434();
    v24 = v41;

    if (v73)
    {
      if (v40 == v72 && v24 == v73)
      {

        v24, v42, v43, v44, v45, v46, v47, v48;
        goto LABEL_10;
      }

      v56 = sub_1BE053B84();

      v24, v57, v58, v59, v60, v61, v62, v63;
      if (v56)
      {
        goto LABEL_10;
      }
    }

    else
    {
LABEL_26:

      v24, v49, v50, v51, v52, v53, v54, v55;
    }

LABEL_29:
    if (v14 != v15)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB40900](v14, v11);
        v64 = MEMORY[0x1BFB40900](v15, v11);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        v65 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14 >= v65)
        {
          goto LABEL_58;
        }

        if (v15 >= v65)
        {
          goto LABEL_59;
        }

        v66 = *(v11 + 32 + 8 * v15);
        v6 = *(v11 + 32 + 8 * v14);
        v64 = v66;
      }

      v67 = v64;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
      {
        v11 = sub_1BD509758();
        v68 = (v11 >> 62) & 1;
      }

      else
      {
        LODWORD(v68) = 0;
      }

      v7 = v11 & 0xFFFFFFFFFFFFFF8;
      v69 = *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20);
      *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20) = v67;

      if ((v11 & 0x8000000000000000) != 0 || v68)
      {
        v11 = sub_1BD509758();
        v7 = v11 & 0xFFFFFFFFFFFFFF8;
        if ((v15 & 0x8000000000000000) != 0)
        {
LABEL_50:
          __break(1u);
          return v14;
        }
      }

      else if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (v15 >= *(v7 + 16))
      {
        goto LABEL_56;
      }

LABEL_8:
      v16 = v7 + 8 * v15;
      v17 = *(v16 + 32);
      *(v16 + 32) = v6;

      *a1 = v11;
    }

    v18 = __OFADD__(v14++, 1);
    if (v18)
    {
      goto LABEL_55;
    }

LABEL_10:
    v18 = __OFADD__(v15++, 1);
    if (v18)
    {
      goto LABEL_54;
    }
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v19 = *(v11 + 8 * v15 + 32);
    goto LABEL_17;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return sub_1BE053704();
}

void sub_1BD40F2D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = sub_1BD40BFD0(*a1, a2, a3);
  v9 = v7;
  if (!v3 && (v8 & 1) == 0)
  {
    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      v11 = *(v6 + 16);
      if (v10 == v11)
      {
        return;
      }

      v12 = 16 * v7;
      while (v10 < v11)
      {
        v15 = *(v6 + v12 + 48);
        v16 = *(v6 + v12 + 56);
        v17 = v15 == a2 && v16 == a3;
        if (!v17 && (sub_1BE053B84() & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_23;
            }

            v18 = (v6 + 32 + 16 * v9);
            v19 = v18[1];
            v36 = *v18;
            sub_1BE048C84();
            sub_1BE048C84();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1BD4FFFA4(v6, v20, v21, v22, v23, v24, v25, v26);
            }

            v27 = v6 + 16 * v9;
            v28 = *(v27 + 40);
            *(v27 + 32) = v15;
            *(v27 + 40) = v16;
            v28, v20, v21, v22, v23, v24, v25, v26;
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_24;
            }

            v13 = v6 + v12;
            v14 = *(v6 + v12 + 56);
            *(v13 + 48) = v36;
            *(v13 + 56) = v19;
            v14, v29, v30, v31, v32, v33, v34, v35;
            *a1 = v6;
          }

          ++v9;
        }

        ++v10;
        v11 = *(v6 + 16);
        v12 += 16;
        if (v10 == v11)
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BD40F458(uint64_t a1)
{
  sub_1BD1E1120();
  if (v1 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1BD40F5D4(uint64_t a1)
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

uint64_t sub_1BD40F6B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD40F700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45960, &qword_1BE0D4C98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD40F820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD40F8A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

void sub_1BD40F904()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors);
  *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__autofillCardDescriptors) = *(v0 + 24);
  sub_1BE048C84();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD40F970()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

void sub_1BD40F9A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults);
  *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__defaults) = v2;
  v4 = v2;
}

void sub_1BD40F9E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 88);
  *(v1 + 88) = *(v0 + 24);
  sub_1BE048964();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD40FA24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext);
  *(v1 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext) = v2;
  v4 = v2;
}

void sub_1BD40FA64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
  v4 = v2;
}

void sub_1BD40FAB8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;

  WalletSettingsModel.updateDefaultPassToSelection()();
}

void sub_1BD40FB5C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {

    a6, v8, v9, v10, v11, v12, v13, v14;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD40FBCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD781CD8(a1, v4, v5, v7, v6);
}

uint64_t sub_1BD40FC8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD9189E8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_102Tm()
{
  swift_unknownObjectRelease();

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD40FD94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD40A734(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_38(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD40FE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD40FF04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD40FFD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD41001C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD410088(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v32 = MEMORY[0x1EEE9AC00](v27);
  v33 = &v49 - v28;
  v49 = v30;
  v50 = v34;
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 != 5)
      {
        (*(v30 + 104))(v11, *MEMORY[0x1E69B8068], v29, v32);
        v47 = PKPassKitBundle();
        if (v47)
        {
          v36 = v47;
          v37 = sub_1BE04B6F4();
          v33 = v11;
          goto LABEL_33;
        }

        goto LABEL_43;
      }

      (*(v30 + 104))(v14, *MEMORY[0x1E69B8068], v29, v32);
      v40 = PKPassKitBundle();
      if (v40)
      {
        v36 = v40;
        v37 = sub_1BE04B6F4();
        v33 = v14;
        goto LABEL_33;
      }

      goto LABEL_39;
    }

    switch(a1)
    {
      case 7:
        (*(v30 + 104))(v8, *MEMORY[0x1E69B8068], v29, v32);
        v42 = PKPassKitBundle();
        if (v42)
        {
          v36 = v42;
          v37 = sub_1BE04B6F4();
          v33 = v8;
          goto LABEL_33;
        }

        goto LABEL_35;
      case 8:
        v33 = v31;
        (*(v30 + 104))(v31, *MEMORY[0x1E69B8068], v29, v32);
        v38 = PKPassKitBundle();
        if (!v38)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v36 = v38;
LABEL_15:
        v37 = sub_1BE04B6F4();
        goto LABEL_33;
      case 9:
        (*(v30 + 104))(v4, *MEMORY[0x1E69B80E0], v29, v32);
        v44 = PKPassKitBundle();
        if (v44)
        {
          v36 = v44;
          v37 = sub_1BE04B6F4();
          v33 = v4;
          goto LABEL_33;
        }

        goto LABEL_41;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          (*(v30 + 104))(v17, *MEMORY[0x1E69B8068], v29, v32);
          v43 = PKPassKitBundle();
          if (v43)
          {
            v36 = v43;
            v37 = sub_1BE04B6F4();
            v33 = v17;
            goto LABEL_33;
          }

          goto LABEL_40;
        }

        (*(v30 + 104))(v20, *MEMORY[0x1E69B8068], v29, v32);
        v35 = PKPassKitBundle();
        if (v35)
        {
          v36 = v35;
          v37 = sub_1BE04B6F4();
          v33 = v20;
LABEL_33:

          (*(v49 + 8))(v33, v50);
          return v37;
        }

        goto LABEL_36;
      }

      (*(v30 + 104))(v26, *MEMORY[0x1E69B8068], v29, v32);
      v41 = PKPassKitBundle();
      if (v41)
      {
        v36 = v41;
        v37 = sub_1BE04B6F4();
        v33 = v26;
        goto LABEL_33;
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!a1)
    {
      (*(v30 + 104))(&v49 - v28, *MEMORY[0x1E69B8068], v29, v32);
      v39 = PKPassKitBundle();
      if (!v39)
      {
LABEL_38:
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
        goto LABEL_44;
      }

      v36 = v39;
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      (*(v30 + 104))(v23, *MEMORY[0x1E69B8068], v29, v32);
      v45 = PKPassKitBundle();
      if (v45)
      {
        v46 = v45;
        v37 = sub_1BE04B6F4();
        v33 = v23;
        v36 = v46;
        goto LABEL_33;
      }

      goto LABEL_42;
    }
  }

LABEL_44:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD4107D4()
{
  v1 = *(v0 + 24);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD410814()
{
  v1 = *(v0 + 96);
  sub_1BD0D44B8(v1, *(v0 + 104));
  return v1;
}

id sub_1BD410858(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_viewController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_provisionedPasses] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_identifier];
  *v6 = 0xD00000000000001ELL;
  *(v6 + 1) = 0x80000001BE128980;
  *&v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_setupController] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD410A00(void (*a1)(void, void, void, void), uint64_t a2)
{
  if ([*(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_setupController) uiOnly])
  {
    a1(0, 0, 0, 0);
  }

  else
  {
    v5 = [objc_opt_self() sharedInstance];
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v8[2] = v7;
      v8[3] = a1;
      v8[4] = a2;
      v18[4] = sub_1BD412554;
      v19 = v8;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1BD3F08C0;
      v18[3] = &block_descriptor_88;
      v9 = _Block_copy(v18);
      v10 = v19;
      sub_1BE048964();
      v10, v11, v12, v13, v14, v15, v16, v17;
      [v6 backgroundProvisionInProgressForFeature:4 withCompletion:v9];
      _Block_release(v9);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD410B80(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BE051FA4();
  v10 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a1;
  *(v16 + 32) = v28;
  *(v16 + 40) = a4;
  aBlock[4] = sub_1BD412560;
  v31 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_23_5;
  v17 = _Block_copy(aBlock);
  v18 = v31;
  sub_1BE048964();
  v18, v19, v20, v21, v22, v23, v24, v25;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v17);
  _Block_release(v17);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v29);
}

void sub_1BD410E78(uint64_t a1, char a2, void (*a3)(void, void, void, void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v9 = sub_1BE052404();
      v10 = PKLocalizedFeatureString();

      if (v10)
      {
        v11 = sub_1BE052404();
        v12 = PKLocalizedFeatureString();

        if (v12)
        {
          v13 = [objc_opt_self() errorWithTitle:v10 message:v12 severity:5];

          v14 = swift_allocObject();
          v14[2] = a3;
          v14[3] = a4;
          sub_1BE048964();
          sub_1BD411018(v13, sub_1BD412570, v14);

          v14, v15, v16, v17, v18, v19, v20, v21;
LABEL_7:

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    a3(0, 0, 0, 0);
    goto LABEL_7;
  }
}

void sub_1BD411018(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B80D0], v6, v8);
  v11 = PKPassKitBundle();
  if (v11)
  {
    v12 = v11;
    sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v7 + 8))(v10, v6);
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a3;
    swift_retain_n();
    v18 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, v13, v15, sub_1BD1B6F78, v16, sub_1BD1B5F6C, v17, 0, 0);
    v15, v19, v20, v21, v22, v23, v24, v25;
    v16, v26, v27, v28, v29, v30, v31, v32;
    v17, v33, v34, v35, v36, v37, v38, v39;
    v40 = v43[1] + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v41 = *(v40 + 8);
      ObjectType = swift_getObjectType();
      (*(v41 + 24))(v18, ObjectType, v41);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD4112A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = a1;
  v75 = a2;
  v79 = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04BAC4();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1BE04B944();
  v6 = *(v70 - 8);
  v7 = MEMORY[0x1EEE9AC00](v70);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_setupController);
  v68 = v2;
  v11 = [v10 credential];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v12 = sub_1BE04C384();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v73 = xmmword_1BE0B69E0;
  *(v15 + 16) = xmmword_1BE0B69E0;
  *(v15 + v14) = v11;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x1E69B82A8], v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0, &unk_1BE0FF0F0);
  *(swift_allocObject() + 16) = v73;
  v16 = *(v3 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_context);
  v17 = v11;
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  v18 = sub_1BE04C394();
  v19 = type metadata accessor for ProvisioningUICoordinator();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v21 = &v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v16;
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v18;
  swift_unknownObjectWeakAssign();
  *(v21 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
  *&v73 = v18;
  sub_1BE048964();
  sub_1BE048964();
  *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v78.receiver = v20;
  v78.super_class = v19;
  v22 = objc_msgSendSuper2(&v78, sel_init);
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BA5A50;
  v23 = v68;
  swift_unknownObjectWeakAssign();
  v24 = sub_1BE04BBD4();
  sub_1BE04BB04();
  v25 = sub_1BE04B8E4();
  (*(v6 + 8))(v9, v70);
  v26 = v69;
  sub_1BE04BC34();
  v27 = sub_1BE04B9A4();
  (*(v71 + 8))(v26, v72);
  v28 = [v17 product];
  v29 = [objc_allocWithZone(PKNewPaymentCredentialProvisioningViewController) initWithProvisioningController:v24 webService:v25 context:v27 paymentCredential:v17 setupProduct:v28 allowsManualEntry:0 reporter:0];

  v30 = v23;
  [v29 setFlowItemDelegate_];
  v31 = PKAccountHeroImageName();
  v32 = PKUIImageNamed(v31);

  if (v32)
  {
    [v29 setPassSnapshot:v32 needsCorners:1];
  }

  swift_unknownObjectWeakAssign();
  v33 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
  v34 = objc_allocWithZone(v33);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v77.receiver = v34;
  v77.super_class = v33;
  v35 = v29;
  v36 = objc_msgSendSuper2(&v77, sel_init);
  key = 0;
  objc_setAssociatedObject(v35, &key, v36, 1);

  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = &off_1F3BC1D90;
  swift_unknownObjectWeakAssign();

  [v35 setCoordinator_];
  v37 = *(v23 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_viewController);
  *(v30 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_viewController) = v29;
  v38 = v35;

  v39 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v42 = v74;
  v43 = v75;
  v41[2] = v40;
  v41[3] = v42;
  v41[4] = v43;
  v41[5] = v17;
  v41[6] = v38;
  v44 = v17;
  v45 = v38;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD814B5C(v39, 11, sub_1BD4124DC, v41);

  v73, v46, v47, v48, v49, v50, v51, v52;
  v40, v53, v54, v55, v56, v57, v58, v59;
  v41, v60, v61, v62, v63, v64, v65, v66;
}

void sub_1BD411A1C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      v13 = a1;
      sub_1BD411018(v13, a3, a4);
LABEL_14:

      return;
    }

    sub_1BD411C9C(a5);
    v13 = v14;
    [a6 setFieldsModel_];
    v15 = [v13 paymentSetupFields];
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    sub_1BD0E5E8C(0, &qword_1EBD4E6C0, 0x1E69B8DD0);
    v17 = sub_1BE052744();

    if (v17 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_7;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1BFB40900](0, v17);
        goto LABEL_10;
      }

      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v25 = *(v17 + 32);
LABEL_10:
        v33 = v25;
        v48 = v25;
        v17, v26, v27, v28, v29, v30, v31, v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45A90, &qword_1BE0BA7F0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1BE0B69E0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1BE0B69E0;
        v36 = [v33 identifier];
        v37 = sub_1BE052434();
        v39 = v38;

        *(v35 + 32) = v37;
        *(v35 + 40) = v39;
        *(v34 + 32) = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
        v40 = sub_1BE052724();
        v34, v41, v42, v43, v44, v45, v46, v47;
        [a6 setSectionIdentifiers_];

LABEL_13:
        a3(1);
        goto LABEL_14;
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v17, v18, v19, v20, v21, v22, v23, v24;
    goto LABEL_13;
  }
}

void sub_1BD411C9C(void *a1)
{
  v3 = sub_1BE04B944();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 state];
  if (!v8)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = v8;
  v10 = [v8 eligibilityResponse];

  if (v10)
  {
    v11 = [v10 supplementaryData];

    v12 = [v11 lightweightAccount];
    if (v12)
    {
      v13 = v12;
      v14 = v13;
      goto LABEL_7;
    }
  }

  v15 = [*(v1 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_setupController) account];
  if (v15)
  {
    v13 = v15;
    v14 = 0;
LABEL_7:
    v16 = sub_1BD0E5E8C(0, &unk_1EBD45AB0, 0x1E69B8DD8);
    v17 = [swift_getObjCClassFromMetadata() paymentSetupFieldWithIdentifier_];
    if (v17)
    {
      v18 = v17;
      v88 = v1;
      v89 = v3;
      v19 = [v13 appleBalanceDetails];
      if (v19)
      {
        v20 = v19;
        v21 = v13;
        v22 = v16;
        v23 = v14;
        v24 = [v19 accountSummary];
        if (!v24)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v25 = v24;
        v26 = [v24 currentBalance];

        v27 = [v20 currencyCode];
        v28 = PKCurrencyAmountMake();

        if (v28)
        {
          v29 = v18;
          v30 = [v28 formattedStringValue];
          if (!v30)
          {
LABEL_27:
            __break(1u);
            return;
          }

          v31 = v30;
          [v29 setCurrentValue_];

          v20 = v31;
        }

        v14 = v23;
        v16 = v22;
        v13 = v21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8, &unk_1BE0BD960);
      inited = swift_initStackObject();
      v87 = xmmword_1BE0B69E0;
      *(inited + 16) = xmmword_1BE0B69E0;
      v90 = sub_1BE052434();
      v91 = v33;
      v34 = v18;
      sub_1BE0537C4();
      *(inited + 96) = MEMORY[0x1E69E6370];
      *(inited + 72) = 1;
      v35 = sub_1BD1AB16C(inited);
      swift_setDeallocating();
      sub_1BD4124EC(inited + 32);
      v36 = sub_1BE052224();
      v35, v37, v38, v39, v40, v41, v42, v43;
      [v34 updateWithConfiguration_];

      sub_1BE04BB94();
      v44 = sub_1BE04B934();
      (*(v4 + 8))(v7, v89);
      v45 = [v44 appleAccountInformation];
      swift_unknownObjectRelease();
      if (v45 && (v46 = [v45 appleID], v45, v46))
      {
        v47 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

        v48 = objc_allocWithZone(MEMORY[0x1E69B8E28]);
        v49 = sub_1BE052404();
        v50 = [v48 initWithIdentifier:v49 body:v47];

        [v50 setPosition_];
        [v50 setAlingment_];
        [v50 setFontScale_];
        v51 = [v34 identifier];

        v52 = sub_1BE052434();
        v54 = v53;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1BE0B7020;
        *(v55 + 32) = v50;
        v56 = MEMORY[0x1E69E7CC8];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v56;
        sub_1BD1DB4D8(v55, v52, v54, isUniquelyReferenced_nonNull_native);
        v54, v58, v59, v60, v61, v62, v63, v64;
        v65 = v90;
      }

      else
      {

        v65 = MEMORY[0x1E69E7CC8];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
      v66 = swift_allocObject();
      *(v66 + 16) = v87;
      *(v66 + 56) = v16;
      *(v66 + 32) = v34;
      v67 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
      v68 = v34;
      v69 = sub_1BE052724();
      v66, v70, v71, v72, v73, v74, v75, v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AC0, &qword_1BE0D5160);
      v77 = sub_1BE052224();
      v78 = [v67 initWithPaymentSetupFields:v69 footerFields:v77];

      if (v78)
      {

        v65, v79, v80, v81, v82, v83, v84, v85;
        return;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v86 = objc_allocWithZone(MEMORY[0x1E69B8E38]);

  [v86 init];
}

uint64_t sub_1BD41236C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4123A8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD4123FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1BD4124EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD403B0, &unk_1BE0D5150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD4125B8(void *a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    sub_1BD0E5E8C(0, qword_1EBD45AD0, 0x1E69B90E8);
    sub_1BD412688();
    swift_willThrowTypedImpl();
    v3 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_provisionedPasses);
  *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_provisionedPasses) = v3;

  v6 = v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v2, &off_1F3BA5A60, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1BD412688()
{
  result = qword_1EBD56500;
  if (!qword_1EBD56500)
  {
    sub_1BD0E5E8C(255, qword_1EBD45AD0, 0x1E69B90E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56500);
  }

  return result;
}

void sub_1BD4126F8(uint64_t a1)
{
  sub_1BD4130E0(319, &qword_1EBD59660, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1BD4130E0(319, &qword_1EBD496E0, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1BD131ACC(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r");
        if (v4 <= 0x3F)
        {
          sub_1BD131ACC(319, &qword_1EBD45B58, &qword_1EBD3C3C8, &qword_1BE0BE5D8);
          if (v5 <= 0x3F)
          {
            sub_1BE04C894();
            if (v6 <= 0x3F)
            {
              sub_1BE04EDE4();
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

uint64_t sub_1BD412868(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1BE04C894();
  v9 = *(v8 - 8);
  v39 = v8;
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  v12 = sub_1BE04F684();
  v13 = *(v12 - 8);
  v14 = *(v6 + 80);
  v15 = *(v9 + 80);
  v16 = *(v13 + 80);
  if (v11 <= *(v13 + 84))
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v11;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v6 + 64) + 7;
  v20 = v16 | 7;
  v21 = (v16 | 7) + *(v9 + 64);
  if (a2 > v18)
  {
    v22 = *(*(v12 - 8) + 64) - ((-17 - v16) | v16) - ((((-25 - v15 - ((((v19 + ((v14 + 64) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v15) - v21) | v20) - 2;
    v23 = 8 * v22;
    if (v22 > 3)
    {
      goto LABEL_13;
    }

    v26 = ((a2 - v18 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 >= 2)
    {
LABEL_13:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

LABEL_21:
      v27 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v27 = 0;
      }

      if (v22)
      {
        if (v22 <= 3)
        {
          v28 = v22;
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v29 = *a1;
          }
        }

        else if (v28 == 1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }
      }

      else
      {
        v29 = 0;
      }

      v32 = v18 + (v29 | v27);
      return (v32 + 1);
    }
  }

LABEL_34:
  v30 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v17 <= 0x7FFFFFFE)
  {
    v31 = *(v30 + 56);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 - 1;
    if (v32 < 0)
    {
      v32 = -1;
    }

    return (v32 + 1);
  }

  v33 = (v30 + v14 + 64) & ~v14;
  if (v7 == v18)
  {
    v34 = *(v6 + 48);
    v35 = v7;
    v36 = v5;

    return v34(v33, v35, v36);
  }

  v33 = (v15 + ((((v19 + v33) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v15;
  if (v10 == v18)
  {
    v34 = *(v9 + 48);
    v35 = v10;
    v36 = v39;

    return v34(v33, v35, v36);
  }

  v37 = *(v13 + 48);
  v38 = (v16 + ((v21 + v33) & ~v20) + 16) & ~v16;

  return v37(v38);
}

void sub_1BD412C54(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v37 = *(a4 + 16);
  v7 = *(v37 - 8);
  v38 = v7;
  v8 = *(v7 + 84);
  v36 = sub_1BE04C894();
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = sub_1BE04F684();
  v13 = *(v12 - 8);
  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v9 + 80);
  v17 = *(v13 + 80);
  if (v11 <= *(v13 + 84))
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v17 | 7) + *(v9 + 64);
  v21 = -2 - (((-17 - v17) | v17) - *(*(v12 - 8) + 64)) - ((((((((-65 - v14) | v14) - (v15 + 7)) | 7) - (v16 + 24) - 16) | v16) - v20) | v17 | 7);
  if (a3 <= v19)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v19 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v19 < a2)
  {
    v23 = ~v19 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_57:
              if (v22 == 2)
              {
                *(a1 + v21) = v24;
              }

              else
              {
                *(a1 + v21) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v22)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v21) = 0;
  }

  else if (v22)
  {
    *(a1 + v21) = 0;
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
  v28 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v18 <= 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFE)
    {
      *(v28 + 48) = (a2 - 0x7FFFFFFF);
      *(v28 + 56) = 0;
    }

    else
    {
      *(v28 + 56) = a2;
    }

    return;
  }

  v29 = (v28 + v14 + 64) & ~v14;
  if (v8 == v19)
  {
    v30 = *(v38 + 56);
    v31 = a2;
    v32 = v8;
    v33 = v37;

LABEL_43:
    v30(v29, v31, v32, v33);
    return;
  }

  v29 = (v16 + 24 + ((((v15 + 7 + v29) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
  if (v10 == v19)
  {
    v30 = *(v9 + 56);
    v31 = a2;
    v32 = v10;
    v33 = v36;

    goto LABEL_43;
  }

  v34 = *(v13 + 56);
  v35 = (v17 + ((v20 + v29) & ~(v17 | 7)) + 16) & ~v17;

  v34(v35, a2);
}

void sub_1BD4130E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD413178()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v6 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v5, 0, v7, v8, v9, v10, v11, v12);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v14[15];
  }

  return v5 & 1;
}

uint64_t sub_1BD4132C0()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v6 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v5, 0, v7, v8, v9, v10, v11, v12);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v14[15];
  }

  return v5 & 1;
}

uint64_t sub_1BD413408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = a1;
  v12[2] = a2;
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04F9B4();
  sub_1BE051534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  v12[14] = swift_getWitnessTable();
  v12[15] = MEMORY[0x1E697EBF8];
  v12[12] = swift_getWitnessTable();
  v12[13] = MEMORY[0x1E697EBE0];
  v12[10] = swift_getWitnessTable();
  v12[11] = swift_getWitnessTable();
  v12[9] = swift_getWitnessTable();
  v12[7] = swift_getWitnessTable();
  v12[8] = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v12[5] = swift_getWitnessTable();
  v12[6] = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  sub_1BE051754();
  v3 = sub_1BE04F9B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1BD41381C(v12[0], v6);
  v12[3] = swift_getWitnessTable();
  v12[4] = WitnessTable;
  swift_getWitnessTable();
  sub_1BD147308();
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_1BD147308();
  return (v10)(v9, v3);
}

uint64_t sub_1BD41381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v46 = a2;
  v2 = *(a1 + 16);
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  v41 = v2;
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04F9B4();
  sub_1BE051534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  sub_1BE04EBD4();
  v3 = sub_1BE04EBD4();
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v40 - v7;
  WitnessTable = swift_getWitnessTable();
  v60 = MEMORY[0x1E697EBF8];
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x1E697EBE0];
  v8 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v55 = v8;
  v56 = v9;
  v54 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v11 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v52 = v10;
  v53 = v11;
  v50 = swift_getWitnessTable();
  v51 = MEMORY[0x1E697E5D8];
  v12 = swift_getWitnessTable();
  v13 = sub_1BE051754();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = sub_1BE04F9B4();
  v21 = v45;
  v43 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v40 - v23;
  v24 = &v21[*(v22 + 52)];
  v25 = *v24;
  if (*v24)
  {
    v40 = &v40;
    v26 = v24[1];
    MEMORY[0x1EEE9AC00](v22);
    v42 = v12;
    v28 = *(v27 + 24);
    *(&v40 - 4) = v41;
    *(&v40 - 3) = v28;
    *(&v40 - 2) = v21;
    sub_1BD0D44B8(v25, v26);
    sub_1BE048964();
    sub_1BE051704();
    swift_getWitnessTable();
    sub_1BD147308();
    v29 = *(v14 + 8);
    v29(v16, v13);
    sub_1BD147308();
    v12 = v42;
    sub_1BD13A700(v16, v13);
    sub_1BD0D4744(v25, v26, v30, v31, v32, v33, v34, v35);
    v29(v16, v13);
    v29(v19, v13);
  }

  else
  {
    sub_1BD4142E4(v22, v5);
    v36 = v40;
    sub_1BD147308();
    v37 = *(v42 + 8);
    v37(v5, v3);
    sub_1BD147308();
    swift_getWitnessTable();
    sub_1BD13A7F8(v5, v13, v3);
    v37(v5, v3);
    v37(v36, v3);
  }

  v48 = swift_getWitnessTable();
  v49 = v12;
  swift_getWitnessTable();
  v38 = v47;
  sub_1BD147308();
  return (*(v43 + 8))(v38, v20);
}

uint64_t sub_1BD413F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[3] = a1;
  v21[4] = a4;
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04EBD4();
  v21[0] = sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04F9B4();
  v21[1] = sub_1BE051534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v21[2] = sub_1BE04EBD4();
  v6 = sub_1BE04EBD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v14 = type metadata accessor for PaymentChinItem(0, a2, a3, v13);
  sub_1BD4142E4(v14, v9);
  v21[14] = swift_getWitnessTable();
  v21[15] = MEMORY[0x1E697EBF8];
  v21[12] = swift_getWitnessTable();
  v21[13] = MEMORY[0x1E697EBE0];
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v21[10] = WitnessTable;
  v21[11] = v16;
  v21[9] = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v21[7] = v17;
  v21[8] = v18;
  v21[5] = swift_getWitnessTable();
  v21[6] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1BD147308();
  v19 = *(v7 + 8);
  v19(v9, v6);
  sub_1BD147308();
  return (v19)(v12, v6);
}

uint64_t sub_1BD4142E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = *(a1 - 8);
  v55 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v52 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  v44 = sub_1BE04EBD4();
  v43 = sub_1BE04EBD4();
  v42 = v7;
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  sub_1BE04F9B4();
  v8 = sub_1BE051534();
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v48 = sub_1BE04EBD4();
  v53 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v39 - v10;
  v51 = sub_1BE04EBD4();
  v54 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v39 - v13;
  v14 = *(a1 + 24);
  v57 = v7;
  v58 = v14;
  v41 = v2;
  v59 = v2;
  WitnessTable = swift_getWitnessTable();
  v72 = MEMORY[0x1E697EBF8];
  v45 = MEMORY[0x1E697E858];
  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x1E697EBE0];
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v67 = v15;
  v68 = v16;
  v17 = swift_getWitnessTable();
  sub_1BE051524();
  v18 = v52;
  (*(v4 + 16))(v52, v2, a1);
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v42;
  *(v20 + 3) = v14;
  (*(v4 + 32))(&v20[v19], v18, a1);
  v65 = sub_1BD415FC4;
  v66 = v20;
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B70, qword_1BE0E16C0);
  v64 = v17;
  v21 = swift_getWitnessTable();
  sub_1BD0DE4F4(&qword_1EBD45B78, &qword_1EBD45B70, qword_1BE0E16C0, MEMORY[0x1E697E378]);
  v22 = v46;
  v23 = v40;
  sub_1BE050834();
  v20, v24, v25, v26, v27, v28, v29, v30;
  (*(v50 + 8))(v23, v8);
  sub_1BD415C9C();
  v31 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v62 = v21;
  v63 = v31;
  v32 = v48;
  v33 = swift_getWitnessTable();
  v34 = v47;
  sub_1BE051004();
  (*(v53 + 8))(v22, v32);
  v60 = v33;
  v61 = MEMORY[0x1E697E5D8];
  v35 = v51;
  swift_getWitnessTable();
  v36 = v49;
  sub_1BD147308();
  v37 = *(v54 + 8);
  v37(v34, v35);
  sub_1BD147308();
  return (v37)(v36, v35);
}

uint64_t sub_1BD414A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a1;
  v56 = a4;
  swift_getTupleTypeMetadata2();
  v42[2] = sub_1BE051E34();
  v42[1] = swift_getWitnessTable();
  v6 = sub_1BE051774();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = v42 - v9;
  sub_1BE04C764();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1BE051774();
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v42 - v11;
  v57 = v13;
  v14 = sub_1BE04EBD4();
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - v15;
  v54 = v17;
  v18 = sub_1BE04EBD4();
  v49 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v42 - v22;
  v55 = v6;
  v53 = sub_1BE04F9B4();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = v42 - v24;
  v26 = type metadata accessor for PaymentChinItem(0, a2, a3, v25);
  v27 = *(v50 + *(v26 + 52));
  v58 = a2;
  v59 = a3;
  v60 = v50;
  sub_1BE04F504();
  if (v27)
  {
    sub_1BE051764();
    sub_1BE051CD4();
    v50 = MEMORY[0x1E69817F8];
    v40 = v57;
    v41 = swift_getWitnessTable();
    sub_1BE050F54();
    (*(v47 + 8))(v12, v40);
    v63 = v41;
    v64 = MEMORY[0x1E697EBF8];
    v28 = v54;
    v29 = swift_getWitnessTable();
    sub_1BE051104();
    (*(v48 + 8))(v16, v28);
    v61 = v29;
    v62 = MEMORY[0x1E697EBE0];
    swift_getWitnessTable();
    sub_1BD147308();
    v30 = *(v49 + 8);
    v30(v20, v18);
    sub_1BD147308();
    swift_getWitnessTable();
    v31 = v51;
    sub_1BD13A700(v20, v18);
    v30(v20, v18);
    v30(v23, v18);
  }

  else
  {
    v32 = v44;
    sub_1BE051764();
    v33 = v55;
    swift_getWitnessTable();
    v34 = v43;
    sub_1BD147308();
    v35 = *(v45 + 8);
    v35(v32, v33);
    sub_1BD147308();
    v73 = swift_getWitnessTable();
    v74 = MEMORY[0x1E697EBF8];
    v71 = swift_getWitnessTable();
    v72 = MEMORY[0x1E697EBE0];
    swift_getWitnessTable();
    v31 = v51;
    sub_1BD13A7F8(v32, v18, v33);
    v35(v32, v33);
    v35(v34, v33);
  }

  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x1E697EBF8];
  v67 = swift_getWitnessTable();
  v68 = MEMORY[0x1E697EBE0];
  v36 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v65 = v36;
  v66 = v37;
  v38 = v53;
  swift_getWitnessTable();
  sub_1BD147308();
  return (*(v52 + 8))(v31, v38);
}

uint64_t sub_1BD41531C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = sub_1BE04C894();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE04C764();
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  v23 = type metadata accessor for PaymentChinItem(0, a2, a3, v22);
  sub_1BD147308();
  (*(v30 + 16))(v9, a1 + *(v23 + 60), v31);
  sub_1BE04C754();
  (*(v15 + 16))(v18, v21, a2);
  v38 = 0x4024000000000000;
  v39 = 0;
  v40[0] = v18;
  v40[1] = &v38;
  v24 = v29;
  v25 = v32;
  (*(v10 + 16))(v29, v14, v32);
  v40[2] = v24;
  v37[0] = a2;
  v37[1] = MEMORY[0x1E6981840];
  v37[2] = v25;
  v34 = a3;
  v35 = MEMORY[0x1E6981838];
  v36 = sub_1BD1C32BC();
  sub_1BD13A4C4(v40, 3uLL, v37);
  v26 = *(v10 + 8);
  v26(v14, v25);
  v27 = *(v15 + 8);
  v27(v21, a2);
  v26(v24, v25);
  return (v27)(v18, a2);
}

uint64_t sub_1BD415658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  type metadata accessor for PaymentChinItem(0, v11, v12, v13);
  sub_1BD147308();
  (*(v5 + 16))(v7, v10, a2);
  v18 = 0;
  v19 = 0;
  v20[0] = v7;
  v20[1] = &v18;
  v17[0] = a2;
  v17[1] = MEMORY[0x1E6981840];
  v16[0] = a3;
  v16[1] = MEMORY[0x1E6981838];
  sub_1BD13A4C4(v20, 2uLL, v17);
  v14 = *(v5 + 8);
  v14(v10, a2);
  return (v14)(v7, a2);
}

void sub_1BD4157DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v53 = a1;
  v54 = a3;
  v50 = a2;
  v51 = a5;
  v8 = sub_1BE04E6A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48[0] = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PaymentChinItem(0, a3, a4, v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v48 - v15;
  v55 = sub_1BE051404();
  v49 = *(v13 + 16);
  v49(v16, a2, v12);
  v17 = v8;
  (*(v9 + 16))(v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v8);
  v18 = *(v13 + 80);
  v19 = (v18 + 32) & ~v18;
  v48[1] = v18 | 7;
  v48[2] = v19 + v14;
  v20 = (v19 + v14 + *(v9 + 80)) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v22 = v52;
  *(v21 + 2) = v54;
  *(v21 + 3) = v22;
  v23 = *(v13 + 32);
  v23(&v21[v19], v16, v12);
  (*(v9 + 32))(&v21[v20], v48[0], v17);
  v57 = v55;
  v58 = sub_1BD416060;
  v59 = v21;
  v60 = 0;
  v61 = 0;
  sub_1BE04E684();
  v56 = v24;
  v49(v16, v50, v12);
  v25 = swift_allocObject();
  v26 = v52;
  *(v25 + 2) = v54;
  *(v25 + 3) = v26;
  v23(&v25[v19], v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B80, &unk_1BE0D51E0);
  sub_1BD4163BC();
  sub_1BD0F9764();
  sub_1BE051064();
  v21, v27, v28, v29, v30, v31, v32, v33;
  v55, v34, v35, v36, v37, v38, v39, v40;
  v25, v41, v42, v43, v44, v45, v46, v47;
}

void sub_1BD415AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for PaymentChinItem(0, a3, a4, a4) + 56);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = *v4;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04E684();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3C8, &qword_1BE0BE5D8);
    sub_1BE0518F4();
    v5, v7, v8, v9, v10, v11, v12, v13;
    v6, v14, v15, v16, v17, v18, v19, v20;
  }
}

void sub_1BD415BD4(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 + *(type metadata accessor for PaymentChinItem(0, a4, a5, a4) + 56));
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    sub_1BD416440(*v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3C8, &qword_1BE0BE5D8);
    sub_1BE0518F4();
    v6, v8, v9, v10, v11, v12, v13, v14;
    v7, v15, v16, v17, v18, v19, v20, v21;
  }
}

double sub_1BD415C9C()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BE051C54())
  {
    return 16.0;
  }

  if (sub_1BD413178())
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1BD4132C0();
  }

  v7 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v7)
    {
      v5 = 16.0;
    }

    else
    {
      v5 = 12.0;
    }
  }

  else
  {
    v31[2] = v6;
    sub_1BE048964();
    sub_1BE052C44();
    v8 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v7, 0, v9, v10, v11, v12, v13, v14);
    v15 = *(v2 + 8);
    v15(v4, v1);
    if (v32)
    {
      v5 = 16.0;
    }

    else
    {
      v5 = 12.0;
    }

    sub_1BE048964();
    sub_1BE052C44();
    v16 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v7, 0, v17, v18, v19, v20, v21, v22);
    v15(v4, v1);
    sub_1BE048964();
    sub_1BE052C44();
    v23 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v7, 0, v24, v25, v26, v27, v28, v29);
    v15(v4, v1);
  }

  sub_1BE051C54();
  return v5;
}

void sub_1BD415FC4(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for PaymentChinItem(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_1BD4157DC(a1, v9, v6, v7, a3);
}

void sub_1BD416060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for PaymentChinItem(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1BE04E6A4() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  sub_1BD415AFC(v4 + v8, v11, v5, v6);
}

uint64_t objectdestroyTm_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PaymentChinItem(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  sub_1BD0D4604(*v7, *(v7 + 8), v8, v9, v10, v11, v12, v13);
  sub_1BD0D4604(*(v7 + 16), *(v7 + 24), v14, v15, v16, v17, v18, v19);
  sub_1BD0D4604(*(v7 + 32), *(v7 + 40), v20, v21, v22, v23, v24, v25);
  *(v7 + 56), v26, v27, v28, v29, v30, v31, v32;
  (*(*(v5 - 8) + 8))(v7 + v6[12], v5);
  v40 = v7 + v6[13];
  if (*v40)
  {
    *(v40 + 8), v33, v34, v35, v36, v37, v38, v39;
  }

  v41 = (v7 + v6[14]);
  if (v41[1])
  {
    *v41, v33, v34, v35, v36, v37, v38, v39;
    v41[1], v42, v43, v44, v45, v46, v47, v48;
  }

  v49 = v6[15];
  v50 = sub_1BE04C894();
  (*(*(v50 - 8) + 8))(v7 + v49, v50);
  v51 = v6[16];
  v52 = v51 + *(sub_1BE04EDE4() + 20);
  v53 = sub_1BE04F684();
  (*(*(v53 - 8) + 8))(v7 + v52, v53);

  return swift_deallocObject();
}

void sub_1BD416320(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for PaymentChinItem(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_1BD415BD4(a1, a2, v10, v7, v8);
}

unint64_t sub_1BD4163BC()
{
  result = qword_1EBD45B88;
  if (!qword_1EBD45B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B80, &unk_1BE0D51E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45B88);
  }

  return result;
}

uint64_t sub_1BD416440(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048964();

    return sub_1BE048964();
  }

  return result;
}

uint64_t type metadata accessor for VirtualCardAuthorizationModel(uint64_t a1)
{
  result = qword_1EBD45B90;
  if (!qword_1EBD45B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BD416524(void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[4];
  v35 = a1[3];
  v36 = v2;
  v5 = a1[5];
  v6 = v4;
  v7 = v3;
  sub_1BD0DE19C(&v36, v33, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v35, v33, &qword_1EBD40150, &qword_1BE0C12A0);
  sub_1BE048964();
  v8 = sub_1BD46A578(a1);

  sub_1BD0DE53C(&v36, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(&v35, &qword_1EBD40150, &qword_1BE0C12A0);
  v5, v9, v10, v11, v12, v13, v14, v15;
  v16 = swift_allocObject();
  swift_weakInit();
  v33[4] = sub_1BD416A34;
  v34 = v16;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1107296256;
  v33[2] = sub_1BD126964;
  v33[3] = &block_descriptor_89;
  v17 = _Block_copy(v33);
  v34, v18, v19, v20, v21, v22, v23, v24;
  [v6 setUpdateHandler_];

  sub_1BD0DE53C(&v36, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(&v35, &qword_1EBD40150, &qword_1BE0C12A0);
  v5, v25, v26, v27, v28, v29, v30, v31;

  _Block_release(v17);
  return v8;
}

void sub_1BD4166F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = *(Strong + qword_1EBDAAD68 + 24);
    v3 = *(Strong + qword_1EBDAAD68 + 32);
    v5 = v4;
    v6 = v3;
    sub_1BD2B1238(v6, v4, &v18);
    v7 = v19;
    if (v19)
    {
      v8 = v18;
      sub_1BD1C2B14();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v7;
      v10 = v21;
      *(v9 + 32) = v20;
      *(v9 + 48) = v10;
    }

    sub_1BE04C8F4();

    v2, v11, v12, v13, v14, v15, v16, v17;
  }
}

uint64_t sub_1BD4167F0(uint64_t a1)
{
  v2 = *a1;
  v30 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (v1 + qword_1EBDAAD68);
  v6 = *(v1 + qword_1EBDAAD68);
  v7 = *(v1 + qword_1EBDAAD68 + 24);
  v8 = *(v1 + qword_1EBDAAD68 + 32);
  v9 = *(v1 + qword_1EBDAAD68 + 40);
  v10 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v10;
  v5[2] = *(a1 + 32);
  v11 = v3;
  v12 = v2;
  v13 = v4;
  sub_1BE048964();
  sub_1BD0DE19C(&v30, &v26, &qword_1EBD3D490, &unk_1BE0D42B0);
  v9, v14, v15, v16, v17, v18, v19, v20;

  swift_unknownObjectRelease();
  sub_1BD2B1238(v13, v3, &v26);
  v21 = v27;
  if (v27)
  {
    v22 = v26;
    sub_1BD1C2B14();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    v24 = v29;
    *(v23 + 32) = v28;
    *(v23 + 48) = v24;
  }

  return sub_1BE04C8F4();
}

uint64_t sub_1BD416938()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140, &unk_1BE0D42A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EBDAAD68);
  v4 = *(v0 + qword_1EBDAAD68 + 24);
  v5 = *(v0 + qword_1EBDAAD68 + 32);
  *(v0 + qword_1EBDAAD68 + 40), v6, v7, v8, v9, v10, v11, v12;

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

char *EducationalMessageView.init(with:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____PKEducationalMessageView_actionHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____PKEducationalMessageView_actionButton] = 0;
  *&v1[OBJC_IVAR____PKEducationalMessageView_animationView] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____PKEducationalMessageView_titleLabel;
  *&v1[OBJC_IVAR____PKEducationalMessageView_titleLabel] = v4;
  v6 = *MEMORY[0x1E69DDD80];
  v7 = *MEMORY[0x1E69DDC38];
  v8 = v4;
  v9 = PKFontForDefaultDesign(v6, v7, 32770, 0);
  [v8 setFont_];

  [*&v1[v5] setNumberOfLines_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = OBJC_IVAR____PKEducationalMessageView_messageLabel;
  *&v1[OBJC_IVAR____PKEducationalMessageView_messageLabel] = v10;
  v12 = v10;
  v13 = PKFontForDefaultDesign(v6, v7, 0x8000, 0);
  [v12 setFont_];

  [*&v1[v11] setNumberOfLines_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v1[OBJC_IVAR____PKEducationalMessageView_imageView] = v14;
  [v14 setContentMode_];
  v22.receiver = v1;
  v22.super_class = type metadata accessor for EducationalMessageView();
  v15 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = *&v15[OBJC_IVAR____PKEducationalMessageView_titleLabel];
  v17 = v15;
  [v17 addSubview_];
  [v17 addSubview_];
  [v17 addSubview_];
  v18 = [v17 layer];
  [v18 setMasksToBounds_];

  v19 = [v17 layer];
  [v19 setCornerRadius_];

  v20 = [objc_opt_self() systemGray5Color];
  [v17 setBackgroundColor_];

  sub_1BD416E04(a1);
  return v17;
}

void sub_1BD416E04(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44678, &unk_1BE0D5230);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v79 - v5;
  v7 = sub_1BE053174();
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE053274();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v17 = sub_1BE04D3C4();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v85 = v19;
    v86 = v9;
    v83 = v13;
    v84 = v6;
    v23 = a1;
    v24 = [v23 title];
    if (v24 || (v24 = [v23 message]) != 0 || (v24 = objc_msgSend(v23, sel_image)) != 0)
    {
      v81 = v11;

      v25 = [v23 title];
      v26 = *&v2[OBJC_IVAR____PKEducationalMessageView_titleLabel];
      if (v25)
      {
        v27 = v25;
        v28 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

        [v26 setAttributedText_];
      }

      else
      {
        [*&v2[OBJC_IVAR____PKEducationalMessageView_titleLabel] setAttributedText_];
      }

      v82 = v10;
      v29 = [v23 titleColor];
      if (!v29)
      {
        v29 = [objc_opt_self() labelColor];
      }

      [v26 setTextColor_];

      v30 = *&v2[OBJC_IVAR____PKEducationalMessageView_messageLabel];
      v31 = [v23 &selRef_metrics];
      [v30 setText_];

      v32 = [v23 messageColor];
      if (!v32)
      {
        v32 = [objc_opt_self() secondaryLabelColor];
      }

      [v30 setTextColor_];

      v33 = [v23 actionTitle];
      v34 = &selRef_activateWithCompletionBlock_;
      v35 = v86;
      if (v33)
      {
        v36 = v33;
        v37 = [v23 actionHandler];
        if (v37)
        {
          v38 = v37;
          v39 = swift_allocObject();
          v79 = v22;
          v80 = v39;
          *(v39 + 16) = v38;
          sub_1BE04D3D4();
          sub_1BE053224();
          sub_1BE053164();
          (*(v87 + 104))(v35, *MEMORY[0x1E69DC540], v88);
          sub_1BE053194();
          v40 = v84;
          v41 = v85;
          (*(v18 + 16))(v84, v22, v85);
          (*(v18 + 56))(v40, 0, 1, v41);
          sub_1BE0531F4();
          v42 = sub_1BE0530D4();
          sub_1BE04D244();
          v42(v89, 0);
          sub_1BD418150();
          v44 = v81;
          v43 = v82;
          (*(v81 + 16))(v83, v16, v82);
          v45 = sub_1BE053284();
          [v45 setTitle:v36 forState:0];

          [v45 addTarget:v2 action:sel_handleAction forControlEvents:64];
          [v2 addSubview_];
          (*(v44 + 8))(v16, v43);
          v34 = &selRef_activateWithCompletionBlock_;
          (*(v18 + 8))(v79, v41);
          v46 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton];
          *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton] = v45;

          v53 = &v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
          v54 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
          v55 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionHandler + 8];
          v56 = v80;
          *v53 = sub_1BD418140;
          v53[1] = v56;
LABEL_17:
          sub_1BD0D4744(v54, v55, v47, v48, v49, v50, v51, v52);
          v59 = *&v2[OBJC_IVAR____PKEducationalMessageView_imageView];
          v60 = [v23 image];
          [v59 setImage_];

          v61 = OBJC_IVAR____PKEducationalMessageView_animationView;
          v62 = *&v2[OBJC_IVAR____PKEducationalMessageView_animationView];
          if (v62)
          {
            [v62 removeFromSuperview];
          }

          v63 = [v23 animation];
          v64 = objc_allocWithZone(type metadata accessor for EducationalMessageAnimationView());
          v65 = sub_1BD4FC824(v63);
          if (v65)
          {
            v66 = v65;
            [v2 v34[110]];

            v67 = *&v2[v61];
            *&v2[v61] = v66;
          }

          else
          {
          }

          return;
        }
      }

      v57 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton];
      *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton] = 0;

      v58 = &v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
      v54 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
      v55 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionHandler + 8];
      *v58 = 0;
      *(v58 + 1) = 0;
      goto LABEL_17;
    }
  }

  [*&v2[OBJC_IVAR____PKEducationalMessageView_titleLabel] setAttributedText_];
  [*&v2[OBJC_IVAR____PKEducationalMessageView_messageLabel] setText_];
  v68 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton];
  *&v2[OBJC_IVAR____PKEducationalMessageView_actionButton] = 0;

  v69 = &v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
  v70 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionHandler];
  v71 = *&v2[OBJC_IVAR____PKEducationalMessageView_actionHandler + 8];
  *v69 = 0;
  *(v69 + 1) = 0;
  sub_1BD0D4744(v70, v71, v72, v73, v74, v75, v76, v77);
  [*&v2[OBJC_IVAR____PKEducationalMessageView_imageView] setImage_];
  v78 = *&v2[OBJC_IVAR____PKEducationalMessageView_animationView];
  if (v78)
  {

    [v78 removeFromSuperview];
  }
}