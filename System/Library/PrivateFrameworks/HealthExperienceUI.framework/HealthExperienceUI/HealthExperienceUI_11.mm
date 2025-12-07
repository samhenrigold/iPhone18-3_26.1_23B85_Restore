uint64_t Supplementary<>.registerCells(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

uint64_t Supplementary<>.applyReorder(sectionTransactions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

void sub_1BA03B8FC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD20]) init];
  [v0 setForPersonMassUse_];
  v1 = [v0 numberFormatter];
  if (v1)
  {
    v2 = v1;
    [v1 setRoundingMode_];

    qword_1EBC093D8 = v0;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA03B984()
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (*v0)
  {
    result = [objc_opt_self() sharedFormatter];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = [result usesImperialUnits];

    v4 = objc_opt_self();
    if (v3)
    {
      v5 = [v4 inchUnit];
    }

    else
    {
      v5 = [v4 meterUnitWithMetricPrefix_];
    }
  }

  else
  {
    v6[0] = 14;
    if (qword_1EBBE8288 != -1)
    {
      swift_once();
    }

    v5 = [objc_opt_self() unitFromMassFormatterUnit_];
  }

  return v5;
}

void sub_1BA03BAEC(id a1)
{
  if (*v1 == 1)
  {
    v3 = [objc_opt_self() sharedFormatter];
    if (!v3)
    {
      __break(1u);
      goto LABEL_9;
    }

    v4 = v3;
    v5 = [objc_opt_self() meterUnitWithMetricPrefix_];
    [a1 doubleValueForUnit_];

    v6 = sub_1BA4A1A08();
    a1 = [v4 localizedStringFromHeightInCentimeters_];

    if (a1)
    {
LABEL_7:
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return;
    }

    __break(1u);
  }

  v7 = [objc_opt_self() sharedFormatter];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [objc_opt_self() gramUnitWithMetricPrefix_];
  [a1 doubleValueForUnit_];

  v10 = sub_1BA4A1A08();
  a1 = [v8 stringFromWeightInKilograms_];

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t ConfirmDetailsValueFormatterImpl.ValueType.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

id sub_1BA03BD28()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [*(v0 + 16) displayTypeController];
  if (result)
  {
    v4 = *(v0 + 32);
    *(v0 + 32) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *ConfirmDetailsValueFormatterImpl.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v6 = [v5 createHKUnitPreferenceController];

  v2[3] = v6;
  return v2;
}

void *ConfirmDetailsValueFormatterImpl.init(healthStore:)(void *a1)
{
  v1[4] = 0;
  v1[5] = 0;
  v1[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v6 = [v5 createHKUnitPreferenceController];

  v1[3] = v6;
  return v1;
}

id sub_1BA03BED0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1B9F0ADF8(0, &qword_1EDC5E538, 0x1E696C370);
  v10 = MEMORY[0x1E696BD40];
  if (!v9)
  {
    v10 = MEMORY[0x1E696BC98];
  }

  v11 = MEMORY[0x1BFAF1AC0](*v10);
  v12 = sub_1BA03BD28();
  v13 = [v12 displayTypeForObjectType_];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [*(v2 + 24) unitForDisplayType_];
  if (!v14)
  {

LABEL_10:
    sub_1BA4A3DE8();
    v21 = v11;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v4;
      v37 = v35;
      *v24 = 136446722;
      v25 = sub_1BA4A85D8();
      v27 = v5;
      v28 = sub_1B9F0B82C(v25, v26, &v37);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_1B9F0B82C(0xD000000000000013, 0x80000001BA4E52E0, &v37);
      *(v24 + 22) = 2082;
      v29 = [v21 identifier];
      v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v32 = v31;

      v33 = sub_1B9F0B82C(v30, v32, &v37);

      *(v24 + 24) = v33;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%{public}s.%{public}s]: Unable to determine preferred unit for type %{public}s", v24, 0x20u);
      v34 = v35;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      (*(v27 + 8))(v8, v36);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v38 = v9;
    v15 = sub_1BA03B984();

    return v15;
  }

  v15 = v14;
  if (v9)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
    v16 = objc_opt_self();
    v17 = [v16 meterUnit];
    v18 = sub_1BA4A7798();

    if (v18)
    {
      v19 = [v16 meterUnitWithMetricPrefix_];

      return v19;
    }
  }

  return v15;
}

id sub_1BA03C2C0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E696ACF8]) init];
  [v3 setForPersonHeightUse_];
  [v3 setUnitStyle_];
  result = [v3 numberFormatter];
  if (result)
  {
    v5 = result;
    [result setMaximumFractionDigits_];

    v6 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA03C38C(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v49 = a2;
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *a1;
  v10 = v52;
  v11 = sub_1BA03BED0(&v52);
  sub_1B9F0ADF8(0, &qword_1EDC5E538, 0x1E696C370);
  v12 = MEMORY[0x1E696BD40];
  if (!v10)
  {
    v12 = MEMORY[0x1E696BC98];
  }

  v13 = MEMORY[0x1BFAF1AC0](*v12);
  v14 = sub_1BA03BD28();
  v15 = [v14 displayTypeForObjectType_];

  if (!v15)
  {
    v48 = v6;
    sub_1BA4A3DE8();
    v22 = v13;
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50 = v47;
      *v25 = 136446722;
      v26 = sub_1BA4A85D8();
      v28 = sub_1B9F0B82C(v26, v27, &v50);
      HIDWORD(v46) = v24;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E5300, &v50);
      *(v25 + 22) = 2082;
      v30 = [v22 identifier];
      v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v32 = v11;
      v34 = v33;

      v35 = sub_1B9F0B82C(v31, v34, &v50);
      v11 = v32;

      *(v25 + 24) = v35;
      _os_log_impl(&dword_1B9F07000, v23, BYTE4(v46), "[%{public}s.%{public}s]: Unable to determine display type for type %{public}s", v25, 0x20u);
      v36 = v47;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v48 + 8))(v9, v5);
    v51 = v10;
    sub_1BA03BAEC(v49);
    v38 = v37;

    return v38;
  }

  if (!v10)
  {
    v39 = [v15 hk:v11 valueFormatterForUnit:?];
    [v49 doubleValueForUnit_];
    v40 = sub_1BA4A1A08();
    v41 = [v39 stringFromValue:v40 displayType:v15 unitController:*(v3 + 24)];

    if (v41)
    {
      v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }

    else
    {

      return 0;
    }

    return v38;
  }

  v16 = objc_opt_self();
  v17 = v11;
  v18 = [v16 footUnit];
  sub_1B9F0ADF8(0, &qword_1EDC6B4D0, 0x1E696C510);
  v19 = sub_1BA4A7798();

  if (v19)
  {
    [v49 doubleValueForUnit_];
    v20 = HKFormattedFeetAndInches();
    if (v20)
    {
      v21 = v20;
LABEL_15:
      v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return v38;
    }

    __break(1u);
  }

  else
  {
    v17 = v17;
    v42 = [v16 meterUnitWithMetricPrefix_];
    v43 = sub_1BA4A7798();

    if (v43)
    {
      v44 = sub_1BA03C2C0();
      [v49 doubleValueForUnit_];
      v21 = [v44 stringFromValue:9 unit:?];

      goto LABEL_15;
    }
  }

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t ConfirmDetailsValueFormatterImpl.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BA03C9F8()
{
  result = qword_1EBBEA8D0;
  if (!qword_1EBBEA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA8D0);
  }

  return result;
}

void __swiftcall UICollectionViewController.scrollViewToTest()(UIScrollView_optional *__return_ptr retstr)
{
  v2 = [v1 collectionView];

  v3 = v2;
}

id sub_1BA03CB54()
{
  v1 = [*v0 collectionView];

  return v1;
}

void sub_1BA03CBC8(uint64_t *a1, void *a2)
{
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v3 = sub_1BA4A6AE8();
  v4 = [objc_opt_self() orPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  v5 = v4;
  v6 = sub_1BA4A26C8();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = sub_1BA4A1B78();
  sub_1BA03D024(0, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0]);
  sub_1BA4A7588();
}

void sub_1BA03CD14(void *a1@<X0>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1BA4A1B78();
  sub_1BA4A27B8();
  v6 = sub_1BA4A7598();

  if (!v3)
  {
    *a3 = v6;
  }
}

uint64_t sub_1BA03CDC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4)
{
  sub_1BA03D024(0, a2, a3);
  sub_1BA03D078(a4, a2, a3);
  return sub_1BA4A6A18();
}

uint64_t sub_1BA03CE44()
{
  sub_1BA03CEA0(0);
  sub_1BA03CFB0();
  return sub_1BA4A6A18();
}

void sub_1BA03CEA0(uint64_t a1)
{
  if (!qword_1EBBEA8D8)
  {
    sub_1B9F0ADF8(255, &unk_1EBBEE680, 0x1E696AAE8);
    sub_1BA03D024(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA03CF48();
    v1 = sub_1BA4A6688();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA8D8);
    }
  }
}

unint64_t sub_1BA03CF48()
{
  result = qword_1EBBEA8E0;
  if (!qword_1EBBEA8E0)
  {
    sub_1B9F0ADF8(255, &unk_1EBBEE680, 0x1E696AAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA8E0);
  }

  return result;
}

unint64_t sub_1BA03CFB0()
{
  result = qword_1EBBEA8E8;
  if (!qword_1EBBEA8E8)
  {
    sub_1BA03CEA0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA8E8);
  }

  return result;
}

void sub_1BA03D024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A6BF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA03D078(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BA03D024(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static AnalyticsSubmitting.getDataTypeDetailViewControllerIdentifier(of:)(uint64_t a1)
{
  type metadata accessor for DataTypeDetailViewController();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  v3 = v1;
  swift_beginAccess();
  sub_1B9F0A534(v3 + v2, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 24))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

double sub_1BA03D1A0(uint64_t a1)
{
  v2 = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(*(a1 + 168));
  return v2;
}

uint64_t FeedItemViewControllerContext.cachedObject<A>(using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v25 = sub_1BA4A3EA8();
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v10);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v24 - v14;
  v16 = (*(a3 + 8))(a1, a3, v13);
  if (v17 >> 60 == 15)
  {
    sub_1BA4A3DD8();
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to decode cached user data because there isn't anything stored.", v20, 2u);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v9 + 8))(v15, v25);
    return (*(*(a2 - 8) + 56))(a5, 1, 1, a2);
  }

  else
  {
    v21 = v16;
    v22 = v17;
    sub_1BA4A0E98();
    (*(*(a2 - 8) + 56))(a5, 0, 1, a2);

    return sub_1B9F6AC8C(v21, v22);
  }
}

void sub_1BA03D5DC()
{
  v1 = v0;
  sub_1BA27D1B8();
  v2 = sub_1BA27A7D4();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v3, v13);
  if (v14)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &unk_1EBBEA918, &protocol descriptor for ProfileButtonCellItem);
    if (swift_dynamicCast())
    {
      v4 = *(&v16 + 1);
      if (*(&v16 + 1))
      {
        v5 = v17;
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        v6 = (*(v5 + 16))(v4, v5);
        __swift_destroy_boxed_opaque_existential_1(&v15);
        goto LABEL_8;
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_1B9F43A50(&v15, &qword_1EBBEA910, &unk_1EBBEA918, &protocol descriptor for ProfileButtonCellItem);
  v6 = [objc_opt_self() systemBlueColor];
LABEL_8:
  [v2 setTextColor_];

  sub_1B9F68124(v1 + v3, v13);
  if (v14)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &unk_1EBBEA918, &protocol descriptor for ProfileButtonCellItem);
    if (swift_dynamicCast())
    {
      v7 = *(&v16 + 1);
      if (*(&v16 + 1))
      {
        v8 = v17;
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        v9 = (*(v8 + 24))(v7, v8);
        __swift_destroy_boxed_opaque_existential_1(&v15);
        goto LABEL_15;
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_1B9F43A50(&v15, &qword_1EBBEA910, &unk_1EBBEA918, &protocol descriptor for ProfileButtonCellItem);
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
LABEL_15:
  [v1 setBackgroundColor_];

  sub_1B9F68124(v1 + v3, v13);
  if (!v14)
  {
    sub_1B9F43A50(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    goto LABEL_21;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &unk_1EBBEA918, &protocol descriptor for ProfileButtonCellItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_21;
  }

  v10 = *(&v16 + 1);
  if (!*(&v16 + 1))
  {
LABEL_21:
    sub_1B9F43A50(&v15, &qword_1EBBEA910, &unk_1EBBEA918, &protocol descriptor for ProfileButtonCellItem);
    v12 = 1;
    goto LABEL_22;
  }

  v11 = v17;
  __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
  v12 = (*(v11 + 40))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v15);
LABEL_22:
  [v1 setUserInteractionEnabled_];
  sub_1BA27AE60();
}

uint64_t sub_1BA03D9F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA03DA54(uint64_t a1)
{
  sub_1B9F68124(a1, v6);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v1 + v3);
  swift_endAccess();
  sub_1BA27D72C();
  v4 = MEMORY[0x1E69A3348];
  sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1BA03D5DC();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v4);
}

uint64_t (*sub_1BA03DB10(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1BA27A5B4(v3);
  return sub_1BA03DB84;
}

void sub_1BA03DB84(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1BA03D5DC();
  }

  free(v3);
}

void sub_1BA03DBE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1BA001B68(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v31 - v8;
  v10 = sub_1BA4A3FD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A3F98();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA27B2E0(a1, a2);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F68124(v3 + v20, v34);
  if (!v35)
  {
    sub_1B9F43A50(v34, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &unk_1EBBEA918, &protocol descriptor for ProfileButtonCellItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    goto LABEL_8;
  }

  v21 = *(&v37 + 1);
  if (!*(&v37 + 1))
  {
LABEL_8:
    sub_1B9F43A50(&v36, &qword_1EBBEA910, &unk_1EBBEA918, &protocol descriptor for ProfileButtonCellItem);
    return;
  }

  v33 = v16;
  v22 = v38;
  __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  v23 = (*(v22 + 32))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(&v36);
  if (v23)
  {
    v32 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithFrame_];
    sub_1BA001B68(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    v24 = *(sub_1BA4A3FE8() - 8);
    v31[1] = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_1BA4B5480;
    sub_1B9FD7EE0(0);
    v26 = &v14[*(v25 + 48)];
    v27 = *MEMORY[0x1E69DBF28];
    v28 = sub_1BA4A3F18();
    (*(*(v28 - 8) + 104))(v14, v27, v28);
    *v26 = sub_1B9FF87F0;
    v26[1] = 0;
    (*(v11 + 104))(v14, *MEMORY[0x1E69DBF60], v10);
    v29 = sub_1BA4A3F48();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    v30 = v32;
    sub_1BA4A3F88();
    sub_1BA4A3EE8();
    (*(v33 + 8))(v19, v15);
    sub_1BA4A75F8();
    [v30 startAnimating];
  }
}

id ProfileButtonCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ProfileButtonCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ProfileButtonCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id ProfileButtonCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ProfileButtonCell.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ProfileButtonCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id ProfileButtonCell.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ProfileButtonCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1BA03E384()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

uint64_t static SectionedAdaptorCell<>.makeCellRegistration()(uint64_t a1, uint64_t a2)
{
  sub_1B9F0D950(255, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  v4 = sub_1BA4A71D8();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1BA4A71C8();
  return sub_1BA4A3478();
}

uint64_t sub_1BA03E4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a3, v27);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (swift_dynamicCast())
  {
    sub_1B9F25598(v25, v28);
    sub_1B9F0A534(v28, v27);
    (*(a5 + 16))(v27, a4, a5);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1B9F7B644(v25);
    sub_1BA4A3D88();
    sub_1B9F0A534(a3, v28);
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v25[0] = v17;
      *v16 = 136315394;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      sub_1B9F0A534(v28, v27);
      v21 = sub_1BA4A6808();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1(v28);
      v24 = sub_1B9F0B82C(v21, v23, v25);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%s]: Cell registration using existing path but type does not conform to legacy protocol: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    return (*(v9 + 8))(v12, v8);
  }
}

double sub_1BA03E804@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B9F24A34(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 48 * v6;
    v9 = *(v8 + 8);
    v10 = *(v8 + 32);
    v11 = *(v8 + 40);
    *a4 = *v8;
    *(a4 + 8) = v9;
    *(a4 + 16) = *(v8 + 16);
    *(a4 + 32) = v10;
    *(a4 + 40) = v11;
  }

  else
  {
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  return result;
}

void *sub_1BA03E8F0(void *a1, uint64_t a2, uint64_t (*a3)(void *), unint64_t *a4, void *a5)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = a1;
    v8 = sub_1BA4A7FF8();

    if (v8)
    {
      sub_1B9F0ADF8(0, a4, a5);
      swift_dynamicCast();
      return v15;
    }
  }

  else if (*(a2 + 16))
  {
    v11 = a3(a1);
    if (v12)
    {
      v13 = *(*(a2 + 56) + 8 * v11);
      v14 = v13;
      return v13;
    }
  }

  return 0;
}

uint64_t FeedSection.typeGroup.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC6EA18 != -1)
  {
    swift_once();
  }

  v3 = off_1EDC6EA20;
  v4 = [v1 identifier];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  sub_1BA03E804(v5, v7, v3, a1);
}

id ShareFileActivityItemSource.init(data:filename:contentType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v100 = a2;
  v103 = a1;
  v114 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v105 = sub_1BA4A3EA8();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v8);
  v10 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v95 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v97 = v95 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v96 = v95 - v20;
  v107 = sub_1BA4A15D8();
  v21 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v22);
  v102 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v95 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v108 = v95 - v30;
  v110 = a3;
  v111 = a4;
  v101 = a5;
  v31 = sub_1BA4A3C68();
  if (v32)
  {
    v112 = 46;
    v113 = 0xE100000000000000;
    MEMORY[0x1BFAF1350](v31);

    v33 = v112;
    v34 = v113;
    if ((sub_1BA4A6998() & 1) == 0)
    {
      MEMORY[0x1BFAF1350](v33, v34);
    }
  }

  v95[3] = v10;
  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  v37 = [v36 temporaryDirectory];

  sub_1BA4A1588();
  sub_1BA4A1558();
  v38 = (v21 + 8);
  v39 = *(v21 + 8);
  v98 = v21;
  v40 = v107;
  v39(v27, v107);
  v41 = [v35 defaultManager];
  v42 = sub_1BA4A1548();
  v112 = 0;
  v43 = [v41 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:&v112];

  if (v43)
  {
    v44 = v112;
    v45 = v102;
    sub_1BA4A1568();

    v46 = *(v98 + 16);
    v47 = v106;
    v98 = OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_fileURL;
    v46(&v106[OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_fileURL], v45, v40);
    sub_1BA4A1508();
    v48 = sub_1BA4A15B8();
    v50 = v49;
    v39(v27, v40);
    v51 = &v47[OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_filePath];
    *v51 = v48;
    v51[1] = v50;

    sub_1BA040384(v48, v50);
    v52 = v39;
    v97 = v38;

    v72 = v96;
    sub_1BA4A3E08();
    v73 = v47;
    v74 = sub_1BA4A3E88();
    v75 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = v39;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v112 = v78;
      *v77 = 136446466;
      v79 = sub_1BA4A85D8();
      v81 = sub_1B9F0B82C(v79, v80, &v112);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      v82 = *v51;
      v83 = v51[1];

      v84 = sub_1B9F0B82C(v82, v83, &v112);

      *(v77 + 14) = v84;
      _os_log_impl(&dword_1B9F07000, v74, v75, "[%{public}s] Writing %s to disk", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v78, -1, -1);
      v85 = v77;
      v52 = v76;
      MEMORY[0x1BFAF43A0](v85, -1, -1);

      (*(v104 + 8))(v96, v105);
    }

    else
    {

      (*(v104 + 8))(v72, v105);
    }

    v86 = v108;
    v87 = v100;
    v88 = v102;
    v89 = v103;
    sub_1BA4A1618();
    v90 = v107;
    v52(v88, v107);
    v52(v86, v90);
    v91 = type metadata accessor for ShareFileActivityItemSource(0);
    v109.receiver = v73;
    v109.super_class = v91;
    v92 = objc_msgSendSuper2(&v109, sel_init);
    sub_1B9F2BB4C(v89, v87);
    v93 = sub_1BA4A3C98();
    (*(*(v93 - 8) + 8))(v101, v93);
    return v92;
  }

  else
  {
    v53 = v40;
    v54 = v39;
    v55 = v112;

    v56 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3E08();
    v57 = v56;
    v58 = sub_1BA4A3E88();
    v59 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v112 = v61;
      *v60 = 136446466;
      v62 = sub_1BA4A85D8();
      v64 = sub_1B9F0B82C(v62, v63, &v112);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      swift_getErrorValue();
      v65 = sub_1BA4A8418();
      v67 = sub_1B9F0B82C(v65, v66, &v112);

      *(v60 + 14) = v67;
      _os_log_impl(&dword_1B9F07000, v58, v59, "[%{public}s] Error creating temporary directory with error: %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      sub_1B9F2BB4C(v103, v100);

      v68 = sub_1BA4A3C98();
      (*(*(v68 - 8) + 8))(v101, v68);
      (*(v104 + 8))(v14, v105);
      v69 = v108;
      v70 = v107;
    }

    else
    {
      sub_1B9F2BB4C(v103, v100);

      v71 = sub_1BA4A3C98();
      (*(*(v71 - 8) + 8))(v101, v71);
      (*(v104 + 8))(v14, v105);
      v69 = v108;
      v70 = v53;
    }

    v54(v69, v70);
    type metadata accessor for ShareFileActivityItemSource(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for ShareFileActivityItemSource(uint64_t a1)
{
  result = qword_1EBBEA928;
  if (!qword_1EBBEA928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ShareFileActivityItemSource.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v32 - v10;
  sub_1BA4A3E08();
  v12 = v1;
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();

  v15 = os_log_type_enabled(v13, v14);
  v16 = &unk_1EBC09000;
  v32[4] = v4;
  v32[5] = v3;
  v32[2] = ObjectType;
  if (v15)
  {
    v17 = swift_slowAlloc();
    v32[3] = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136446466;
    v20 = sub_1BA4A85D8();
    v22 = sub_1B9F0B82C(v20, v21, &v33);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_filePath];
    v24 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_filePath + 8];

    v25 = sub_1B9F0B82C(v23, v24, &v33);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_1B9F07000, v13, v14, "[%{public}s] Removing %s", v18, 0x16u);
    swift_arrayDestroy();
    v26 = v19;
    v16 = &unk_1EBC09000;
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
  }

  (*(v4 + 8))(v11, v3);
  v27 = &v12[v16[125]];
  v29 = *v27;
  v28 = v27[1];

  sub_1BA040384(v29, v28);

  v30 = type metadata accessor for ShareFileActivityItemSource(0);
  v34.receiver = v12;
  v34.super_class = v30;
  return objc_msgSendSuper2(&v34, sel_dealloc);
}

uint64_t sub_1BA0400A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_fileURL;
  v4 = sub_1BA4A15D8();
  a1[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, v1 + v3, v4);
}

id ShareFileActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1BA040384(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  v4 = sub_1BA4A6758();
  v5 = [v3 fileExistsAtPath_];

  if (v5)
  {
    v6 = [v2 defaultManager];
    v7 = sub_1BA4A6758();
    v11[0] = 0;
    v8 = [v6 removeItemAtPath:v7 error:v11];

    if (v8)
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_1BA4A1488();

      swift_willThrow();
    }
  }
}

uint64_t sub_1BA0404E0(uint64_t a1)
{
  result = sub_1BA4A15D8();
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

char *NoticesDataSource.__allocating_init(healthExperienceStore:associatedProfileIdentifier:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1BA4A1B68();
  v7 = sub_1BA4A7578();

  v8 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1BA0406A4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for EmptyHeaderItem;
  a1[4] = sub_1B9FDA1B0();
  *a1 = swift_allocObject();
  return EmptyHeaderItem.init()();
}

id NoticesDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoticesDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA0407B0()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v25[4] = xmmword_1EDC6D3C8;
  v25[5] = unk_1EDC6D3D8;
  v25[6] = xmmword_1EDC6D3E8;
  v25[7] = unk_1EDC6D3F8;
  v25[0] = xmmword_1EDC6D388;
  v25[1] = xmmword_1EDC6D398;
  v25[2] = xmmword_1EDC6D3A8;
  v25[3] = xmmword_1EDC6D3B8;
  v0 = xmmword_1EDC6D388;
  v24 = xmmword_1EDC6D3A8;
  v23 = xmmword_1EDC6D398;
  v1 = *(&xmmword_1EDC6D3A8 + 1);
  v2 = xmmword_1EDC6D3B8;
  v22 = qword_1EDC6D400;
  v20 = *&qword_1EDC6D3E0;
  v21 = *(&xmmword_1EDC6D3E8 + 8);
  v18 = *(&xmmword_1EDC6D3B8 + 8);
  v19 = *(&xmmword_1EDC6D3C8 + 8);
  if (*(&xmmword_1EDC6D3A8 + 1))
  {
    v3 = objc_opt_self();
    sub_1B9F1D9A4(v25, &v14);
    v4 = [v3 absoluteDimension_];

    v2 = v4;
  }

  else
  {
    sub_1B9F1D9A4(v25, &v14);
  }

  v5 = *(&v25[0] + 1);
  v6 = [objc_opt_self() estimatedDimension_];

  v11 = v23;
  *&v13[24] = v19;
  *&v13[40] = v20;
  *&v13[56] = v21;
  *&v10 = v0;
  *(&v10 + 1) = v6;
  *&v12 = v24;
  *(&v12 + 1) = v1;
  *v13 = v2;
  *&v13[72] = v22;
  *&v13[8] = v18;
  sub_1BA0117AC();
  *&v17[16] = *&v13[16];
  *&v17[32] = *&v13[32];
  *&v17[48] = *&v13[48];
  *&v17[64] = *&v13[64];
  v14 = v10;
  v15 = v11;
  v16 = v12;
  *v17 = *v13;
  sub_1B9F1D9A4(&v10, &v9);
  v7 = sub_1B9F293A8(&v14);
  *&v14 = v0;
  v15 = v23;
  *&v17[24] = v19;
  *&v17[40] = v20;
  *&v17[56] = v21;
  *(&v14 + 1) = v6;
  *&v16 = v24;
  *(&v16 + 1) = v1;
  *v17 = v2;
  *&v17[72] = v22;
  *&v17[8] = v18;
  sub_1B9F1DA58(&v14);
  return v7;
}

uint64_t sub_1BA040A54(void *a1, void *a2)
{
  v5 = *v2;
  v6 = sub_1BA041AC8(a1, a2, &unk_1F3801B58, sub_1BA0392BC);
  v8 = v7;
  v10 = v9;
  v52 = v11;
  if (!v6)
  {
    *&v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_5;
  }

  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  SnapshotDataSource.firstItem.getter(ObjectType, v8, &v59);
  swift_unknownObjectRelease();
  if (!*(&v60 + 1))
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = 1;
LABEL_6:
  sub_1B9F43AAC(&v59, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  v14 = swift_allocObject();
  swift_weakInit();
  sub_1B9F0A534(a2, &v59);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  sub_1B9F1134C(&v59, v15 + 32);
  *(v15 + 72) = v13;
  *(v15 + 80) = v5;
  sub_1BA043C5C(0);
  swift_allocObject();
  v16 = a1;

  v18 = sub_1BA271A84(v17, sub_1BA043C44, v15, 2);

  sub_1BA043DC8(0);
  v19 = swift_allocObject();
  v19[4] = v18;
  v19[5] = sub_1BA03721C;
  v19[6] = 0;
  v20 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v21 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v19[2] = v20;
  v19[3] = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v5;
  v24 = swift_allocObject();
  v24[2] = sub_1BA043E04;
  v24[3] = v23;
  v24[4] = v19;
  sub_1BA043AA4(0, &qword_1EBBEA9E0, sub_1BA043DC8, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  *(v25 + 24) = v20;
  *(v25 + 32) = v21;
  *(v25 + 40) = 0;
  *(v25 + 48) = sub_1BA043E48;
  *(v25 + 56) = v24;
  if (v6 && v10)
  {
    v26 = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
    *&v59 = v26;
    sub_1BA038E58();
    swift_unknownObjectRetain();
    swift_bridgeObjectRetain_n();

    swift_unknownObjectRetain();

    v27 = sub_1BA4A6808();
    v29 = v28;
    v51 = v10;
    v31 = *(v25 + 24);
    v30 = *(v25 + 32);
    *&v59 = 0x6465646465626D45;
    *(&v59 + 1) = 0xE90000000000005FLL;

    MEMORY[0x1BFAF1350](v31, v30);

    v32 = v59;
    v33 = swift_allocObject();
    *(v33 + 16) = v25;
    *(v33 + 24) = &protocol witness table for DataSourceWithLayout<A>;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1BA038EA0;
    *(v34 + 24) = v33;
    v54 = v32;
    *&v55 = v27;
    *(&v55 + 1) = v29;
    *&v56 = v25;
    *(&v56 + 1) = &protocol witness table for DataSourceWithLayout<A>;
    *&v57 = sub_1BA043E74;
    *(&v57 + 1) = v34;
    v58 = 0;
    v35 = swift_allocObject();
    v35[2] = v6;
    v35[3] = v8;
    v35[4] = v51;
    v35[5] = v52;
    *&v59 = v26;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v36 = sub_1BA4A6808();
    v38 = v37;
    v39 = swift_getObjectType();
    v40 = *(v8 + 8);
    swift_unknownObjectRetain();
    v41 = v40(v39, v8);
    *&v59 = 0x6465646465626D45;
    *(&v59 + 1) = 0xE90000000000005FLL;
    MEMORY[0x1BFAF1350](v41);
    swift_unknownObjectRelease();

    *&v60 = v36;
    *(&v60 + 1) = v38;
    *&v61 = v6;
    *(&v61 + 1) = v8;
    *&v62 = sub_1BA038EE0;
    *(&v62 + 1) = v35;
    v63 = 1;
    type metadata accessor for CollapsibleMultiColumnDataSource(0);
    sub_1B9F1C048(0, &qword_1EDC5DC50, &type metadata for EmbeddedDataSourceCollectionViewCell.Item);
    v42 = swift_allocObject();
    v43 = v56;
    v44 = v57;
    v45 = v54;
    *(v42 + 48) = v55;
    *(v42 + 64) = v43;
    *(v42 + 80) = v44;
    *(v42 + 16) = xmmword_1BA4B5460;
    *(v42 + 32) = v45;
    v46 = v59;
    *(v42 + 120) = v60;
    v47 = v62;
    *(v42 + 136) = v61;
    *(v42 + 152) = v47;
    *(v42 + 96) = v58;
    *(v42 + 168) = v63;
    *(v42 + 104) = v46;
    sub_1BA038EEC(&v54, v53);
    sub_1BA038EEC(&v59, v53);
    v48 = sub_1BA49E264(v42);

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease_n();
    sub_1BA038F48(&v54);
    sub_1BA038F48(&v59);
  }

  else
  {
    type metadata accessor for MultiColumnDataSource(0);
    sub_1B9F1DEA0(0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1BA4B5480;
    *(v49 + 32) = v25;
    *(v49 + 40) = &protocol witness table for DataSourceWithLayout<A>;
    swift_bridgeObjectRetain_n();

    v48 = MultiColumnDataSource.__allocating_init(_:)(v49);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v48;
}

uint64_t sub_1BA0410CC(void *a1, void *a2)
{
  v5 = *v2;
  v6 = sub_1BA041AC8(a1, a2, &unk_1F3801C98, sub_1BA0448AC);
  v8 = v7;
  v10 = v9;
  v52 = v11;
  if (!v6)
  {
    *&v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_5;
  }

  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  SnapshotDataSource.firstItem.getter(ObjectType, v8, &v59);
  swift_unknownObjectRelease();
  if (!*(&v60 + 1))
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = 1;
LABEL_6:
  sub_1B9F43AAC(&v59, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  v14 = swift_allocObject();
  swift_weakInit();
  sub_1B9F0A534(a2, &v59);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  sub_1B9F1134C(&v59, v15 + 32);
  *(v15 + 72) = v13;
  *(v15 + 80) = v5;
  sub_1BA043EF8(0);
  swift_allocObject();
  v16 = a1;

  v18 = sub_1BA271A84(v17, sub_1BA043EC4, v15, 2);

  sub_1BA04401C(0);
  v19 = swift_allocObject();
  v19[4] = v18;
  v19[5] = sub_1BA03721C;
  v19[6] = 0;
  v20 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v21 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v19[2] = v20;
  v19[3] = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v5;
  v24 = swift_allocObject();
  v24[2] = sub_1BA044058;
  v24[3] = v23;
  v24[4] = v19;
  sub_1BA043AA4(0, &qword_1EBBEAA10, sub_1BA04401C, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  *(v25 + 24) = v20;
  *(v25 + 32) = v21;
  *(v25 + 40) = 0;
  *(v25 + 48) = sub_1BA0440DC;
  *(v25 + 56) = v24;
  if (v6 && v10)
  {
    v26 = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
    *&v59 = v26;
    sub_1BA038E58();
    swift_unknownObjectRetain();
    swift_bridgeObjectRetain_n();

    swift_unknownObjectRetain();

    v27 = sub_1BA4A6808();
    v29 = v28;
    v51 = v10;
    v31 = *(v25 + 24);
    v30 = *(v25 + 32);
    *&v59 = 0x6465646465626D45;
    *(&v59 + 1) = 0xE90000000000005FLL;

    MEMORY[0x1BFAF1350](v31, v30);

    v32 = v59;
    v33 = swift_allocObject();
    *(v33 + 16) = v25;
    *(v33 + 24) = &protocol witness table for DataSourceWithLayout<A>;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1BA0448B4;
    *(v34 + 24) = v33;
    v54 = v32;
    *&v55 = v27;
    *(&v55 + 1) = v29;
    *&v56 = v25;
    *(&v56 + 1) = &protocol witness table for DataSourceWithLayout<A>;
    *&v57 = sub_1BA0448A8;
    *(&v57 + 1) = v34;
    v58 = 0;
    v35 = swift_allocObject();
    v35[2] = v6;
    v35[3] = v8;
    v35[4] = v51;
    v35[5] = v52;
    *&v59 = v26;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v36 = sub_1BA4A6808();
    v38 = v37;
    v39 = swift_getObjectType();
    v40 = *(v8 + 8);
    swift_unknownObjectRetain();
    v41 = v40(v39, v8);
    *&v59 = 0x6465646465626D45;
    *(&v59 + 1) = 0xE90000000000005FLL;
    MEMORY[0x1BFAF1350](v41);
    swift_unknownObjectRelease();

    *&v60 = v36;
    *(&v60 + 1) = v38;
    *&v61 = v6;
    *(&v61 + 1) = v8;
    *&v62 = sub_1BA0448B0;
    *(&v62 + 1) = v35;
    v63 = 1;
    type metadata accessor for CollapsibleMultiColumnDataSource(0);
    sub_1B9F1C048(0, &qword_1EDC5DC50, &type metadata for EmbeddedDataSourceCollectionViewCell.Item);
    v42 = swift_allocObject();
    v43 = v56;
    v44 = v57;
    v45 = v54;
    *(v42 + 48) = v55;
    *(v42 + 64) = v43;
    *(v42 + 80) = v44;
    *(v42 + 16) = xmmword_1BA4B5460;
    *(v42 + 32) = v45;
    v46 = v59;
    *(v42 + 120) = v60;
    v47 = v62;
    *(v42 + 136) = v61;
    *(v42 + 152) = v47;
    *(v42 + 96) = v58;
    *(v42 + 168) = v63;
    *(v42 + 104) = v46;
    sub_1BA038EEC(&v54, v53);
    sub_1BA038EEC(&v59, v53);
    v48 = sub_1BA49E264(v42);

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease_n();
    sub_1BA038F48(&v54);
    sub_1BA038F48(&v59);
  }

  else
  {
    type metadata accessor for MultiColumnDataSource(0);
    sub_1B9F1DEA0(0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1BA4B5480;
    *(v49 + 32) = v25;
    *(v49 + 40) = &protocol witness table for DataSourceWithLayout<A>;
    swift_bridgeObjectRetain_n();

    v48 = MultiColumnDataSource.__allocating_init(_:)(v49);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v48;
}

id sub_1BA04179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(__int128 *__return_ptr))
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a5();
    a6(&v26);

    if (*(&v27 + 1))
    {
      sub_1B9F1134C(&v26, &v34);
      v14 = *(&v35 + 1);
      v15 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
      v16 = (*(v15 + 32))(a2, v14, v15);

      __swift_destroy_boxed_opaque_existential_1(&v34);
      return v16;
    }

    sub_1B9F43AAC(&v26, &unk_1EBBEA890, qword_1EDC63A78, &protocol descriptor for SummaryProfileHeaderProviding);
  }

  sub_1BA4A3D88();
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v34 = v21;
    *v20 = 136315138;
    v22 = sub_1BA4A85D8();
    v24 = sub_1B9F0B82C(v22, v23, &v34);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_1B9F07000, v18, v19, "[%s] Could not find the header provider to create a profile header", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1BFAF43A0](v21, -1, -1);
    MEMORY[0x1BFAF43A0](v20, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v38 = xmmword_1EDC6D3C8;
  v39 = unk_1EDC6D3D8;
  v40 = xmmword_1EDC6D3E8;
  v41 = unk_1EDC6D3F8;
  v34 = xmmword_1EDC6D388;
  v35 = xmmword_1EDC6D398;
  v36 = xmmword_1EDC6D3A8;
  v37 = xmmword_1EDC6D3B8;
  sub_1BA0117AC();
  v30 = xmmword_1EDC6D3C8;
  v31 = unk_1EDC6D3D8;
  v32 = xmmword_1EDC6D3E8;
  v33 = unk_1EDC6D3F8;
  v26 = xmmword_1EDC6D388;
  v27 = xmmword_1EDC6D398;
  v28 = xmmword_1EDC6D3A8;
  v29 = xmmword_1EDC6D3B8;
  sub_1B9F1D9A4(&v34, v25);
  return sub_1B9F293A8(&v26);
}

uint64_t sub_1BA041AC8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = sub_1BA4A6F38();
  v10 = v9;
  v11 = sub_1BA4A1D78();
  v12 = sub_1BA4A1D68();

  if (v12)
  {
    v50 = a4;

    sub_1B9F0A534(a2, &v51);
    v13 = [a1 profileIdentifier];
    v14 = type metadata accessor for NoticesDataSource(0);
    objc_allocWithZone(v14);
    __swift_project_boxed_opaque_existential_1(&v51, v53);
    v15 = sub_1BA4A1B68();
    v16 = sub_1BA4A7578();

    v17 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v16);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    sub_1B9F0A534(a2, &v51);
    v17;
    v18 = [a1 profileIdentifier];
    v19 = objc_allocWithZone(v14);
    __swift_project_boxed_opaque_existential_1(&v51, v53);
    v20 = sub_1BA4A1B68();
    v21 = sub_1BA4A7578();

    v22 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v21);
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    if (!v9)
    {
      return 0;
    }

    v50 = a4;

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v23 = sub_1BA4A1B68();
    v24 = sub_1BA4A6F38();
    v25 = type metadata accessor for SharedProfileNoticesDataSource(0);
    v26 = objc_allocWithZone(v25);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = sub_1BA26C5A4(v23, v24, MEMORY[0x1E69E7CC0]);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v28;
    v29 = sub_1BA4A1B68();
    v30 = sub_1BA4A6F38();
    v31 = objc_allocWithZone(v25);
    v22 = sub_1BA26C5A4(v29, v30, v27);
  }

  ObjectType = swift_getObjectType();
  v33 = off_1F3800AF8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = v33();
  [v34 registerObserver_];

  v35 = SnapshotDataSource.numberOfSections.getter(ObjectType, &protocol witness table for FetchedResultsControllerDataSource<A>);
  swift_unknownObjectRelease();
  if (v35 >= 1)
  {
    v36 = v6 + qword_1EDC84CE8;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 8);
      v38 = swift_getObjectType();
      (*(v37 + 8))(v38, v37);
      swift_unknownObjectRelease();
    }
  }

  if (qword_1EBBE83F0 != -1)
  {
    swift_once();
  }

  v40 = qword_1EBBECB08;
  v39 = unk_1EBBECB10;
  v41 = qword_1EDC5E838;

  if (v41 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDC5E840;
  v42 = *algn_1EDC5E848;
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *&v51 = v40;
  *(&v51 + 1) = v39;
  v52 = v43;
  v53 = v42;
  v54 = v50;
  v55 = v44;

  v45 = a1;
  v46 = SnapshotDataSource.asCardStack(config:showAllDataSource:)(&v51, v22, &protocol witness table for FetchedResultsControllerDataSource<A>, ObjectType, &protocol witness table for FetchedResultsControllerDataSource<A>);
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  v47 = v54;
  v48 = v55;

  sub_1B9F0E310(v47, v48);
  return v46;
}

void sub_1BA041FD4(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a5;
  v32 = a6;
  sub_1BA0437C4(0, a2, a3, MEMORY[0x1E69E6720]);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v29 - v13;
  v15 = (a4)(0, v12);
  v33 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v30 = &v29 - v17;
  v34 = *(a1 + 16);
  if (v34)
  {
    v18 = 0;
    v35 = a1 + 32;
    v19 = (v33 + 56);
    while (1)
    {
      v20 = *(v35 + 48 * v18 + 16);
      v21 = *(v20 + 16);

      if (v21)
      {
        break;
      }

LABEL_3:
      ++v18;

      if (v18 == v34)
      {
        goto LABEL_11;
      }
    }

    v22 = 0;
    v23 = v20 + 32;
    while (v22 < *(v20 + 16))
    {
      sub_1B9F0A534(v23, &v36);
      sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
      if (swift_dynamicCast())
      {

        v24 = v33;
        (*(v33 + 56))(v14, 0, 1, v15);
        v25 = *(v24 + 32);
        v26 = v30;
        v25(v30, v14, v15);
        v37 = v15;
        v38 = v31;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
        v25(boxed_opaque_existential_1, v26, v15);
        sub_1B9F1134C(&v36, v32);
        return;
      }

      ++v22;
      (*v19)(v14, 1, 1, v15);
      sub_1BA04417C(v14, a2, a3);
      v23 += 40;
      if (v21 == v22)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v28 = v32;
    *(v32 + 32) = 0;
    *v28 = 0u;
    v28[1] = 0u;
  }
}

char *sub_1BA042298(void *a1)
{
  v4[3] = &type metadata for DefaultCloudSyncStateStore;
  v4[4] = &protocol witness table for DefaultCloudSyncStateStore;
  v4[0] = [objc_opt_self() standardUserDefaults];
  v2 = objc_allocWithZone(type metadata accessor for CloudSyncStateObserver());
  return CloudSyncStateObserver.init(healthStore:store:)(a1, v4);
}

uint64_t (*static ProfileAllDataDataSource.cloudSyncStateObserverFactory.getter())()
{
  swift_beginAccess();
  v0 = off_1EE8F7660;

  return v0;
}

uint64_t static ProfileAllDataDataSource.cloudSyncStateObserverFactory.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_1EE8F7660 = a1;
  qword_1EE8F7668 = a2;
}

double sub_1BA04241C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = off_1EE8F7660;
  v2 = qword_1EE8F7668;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_1BA043A9C;
  a1[1] = v4;

  return result;
}

uint64_t sub_1BA0424A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  off_1EE8F7660 = sub_1BA043A94;
  qword_1EE8F7668 = v3;
}

uint64_t sub_1BA042530@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1BA0437C4(0, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource____lazy_storage___firstRestoreState;
  swift_beginAccess();
  sub_1BA04398C(v1 + v12, v11, &qword_1EBBEA950, sub_1BA043790, v3, sub_1BA0437C4);
  sub_1BA043790(0);
  v14 = v13;
  v15 = *(v13 - 8);
  if ((*(v15 + 48))(v11, 1, v13) != 1)
  {
    return (*(v15 + 32))(a1, v11, v14);
  }

  sub_1BA04417C(v11, &qword_1EBBEA950, sub_1BA043790);
  v16 = sub_1BA4A2D28();
  v17 = MEMORY[0x1BFAED490](a1, v16);
  v19 = v18;
  v20 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_cloudSyncStateObserver);
  v21 = *MEMORY[0x1E69E7D40] & *v20;
  v26 = a1;
  v22 = *(v21 + 160);

  v23 = v22(v17, v19);
  (*((*MEMORY[0x1E69E7D40] & *v20) + 0x118))(v23);

  (*(v15 + 16))(v7, v26, v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  swift_beginAccess();
  sub_1BA043A00(v7, v1 + v12);
  return swift_endAccess();
}

uint64_t ProfileAllDataDataSource.__allocating_init(context:healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3, void *a4)
{
  swift_allocObject();
  v8 = sub_1BA042DF0(a1, a2, a3, a4);

  return v8;
}

uint64_t ProfileAllDataDataSource.init(context:healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3, void *a4)
{
  v5 = sub_1BA042DF0(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_1BA0428F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA042950(a1);
  }

  return result;
}

void sub_1BA042950(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A2D28();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  if (sub_1BA4A2D18())
  {
    sub_1BA1EC5C4(1);
    v10 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_allDataHideableDataSource);
    v11 = *(*v10 + 112);
    swift_beginAccess();
    v12 = *(v10 + v11);
    v13 = *(*v12 + 176);

    v15 = v13(v14);
    swift_beginAccess();
    v16 = v12[7];
    swift_beginAccess();
    v17 = v12[8];

    LOBYTE(v15) = (v15)(v16, v17);

    sub_1BA1EC7FC(v15 & 1);
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    (*(v5 + 8))(v9, v4);
    sub_1BA1EC5C4(0);
    sub_1BA1EC7FC(1);
  }
}

uint64_t sub_1BA042BD0()
{

  sub_1BA04417C(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource____lazy_storage___firstRestoreState, &qword_1EBBEA950, sub_1BA043790);
}

uint64_t ProfileAllDataDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BA04417C(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource____lazy_storage___firstRestoreState, &qword_1EBBEA950, sub_1BA043790);

  return v0;
}

uint64_t ProfileAllDataDataSource.__deallocating_deinit()
{
  ProfileAllDataDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA042DF0(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v91 = a4;
  sub_1BA043790(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v87 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v86 = &v78 - v15;
  v88 = v17;
  v89 = v16;
  (*(v17 + 56))(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource____lazy_storage___firstRestoreState, 1, 1, v14);
  v18 = a1;
  v19 = [a2 profileIdentifier];
  type metadata accessor for ProfileAvatarDataSource(0);
  swift_allocObject();
  v20 = ProfileAvatarDataSource.init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(v18, v19, sub_1BA03A208, 0, 1);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) = v20;
  swift_beginAccess();
  v22 = off_1EE8F7660;

  v23 = (v22)(a2);

  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_cloudSyncStateObserver) = v23;
  sub_1BA0437C4(0, &qword_1EDC5DB98, sub_1B9F1ABA4, MEMORY[0x1E69E6F90]);
  v80 = v24;
  inited = swift_initStackObject();
  *(inited + 32) = 1;
  v90 = xmmword_1BA4B5460;
  *(inited + 16) = xmmword_1BA4B5460;
  *(inited + 40) = *(v5 + v21);
  *(inited + 48) = &protocol witness table for SingleUserDataDataSource<A>;
  *(inited + 56) = &protocol witness table for MutableArrayDataSource;
  *(inited + 64) = 2;
  swift_retain_n();
  v83 = a2;
  v93 = a3;
  v26 = sub_1BA040A54(a2, a3);
  v28 = v27;
  v30 = v29;

  *(inited + 72) = v26;
  *(inited + 80) = v28;
  *(inited + 88) = v30;
  v31 = sub_1B9F28D90(inited);
  swift_setDeallocating();
  sub_1B9F1ABA4(0);
  v82 = v32;
  swift_arrayDestroy();
  v92 = v5;
  v33 = *(v5 + v21);
  v81 = type metadata accessor for SizeClassResponsiveDataSource();
  swift_allocObject();

  v34 = sub_1B9F1D348(v31, v33, &protocol witness table for SingleUserDataDataSource<A>, &protocol witness table for MutableArrayDataSource);

  v35 = sub_1B9F1E00C();
  v36 = *(v35 + 16);
  if (v36 >= *(v35 + 24) >> 1)
  {
    v35 = sub_1B9F1E00C();
  }

  *(v35 + 16) = v36 + 1;
  v37 = v35 + 16 * v36;
  v85 = v34;
  *(v37 + 32) = v34;
  *(v37 + 40) = &protocol witness table for SizeClassResponsiveDataSource;
  v38 = sub_1BA020614();
  sub_1BA043AA4(0, &unk_1EBBEA980, type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, type metadata accessor for HideableDataSource);
  swift_allocObject();
  v39 = sub_1BA2AE300(v38, 0);

  v40 = v93;
  v84 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_downloadingDataDataSource;
  *(v92 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_downloadingDataDataSource) = v39;
  sub_1B9F0A534(v40, v94);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BA4B5480;
  v42 = v83;
  *(v41 + 32) = [v42 profileIdentifier];
  v43 = objc_allocWithZone(type metadata accessor for PlatformAlertsDataSource(0));
  v44 = sub_1BA2DFC4C(v94, v41);

  v79 = v42;
  v45 = _s18HealthExperienceUI014ProfileAllDataF6SourceC014makeNavigationfG011healthStore0jbK020pinnedContentManagerAA0fG10WithLayoutCyAA05ArrayfG0CGSo08HKHealthK0C_0A8Platform0abK0_pAO06PinnedM8Managing_ptFZ_0(v42, v40, v91);
  v46 = *(v35 + 16);
  if (v46 >= *(v35 + 24) >> 1)
  {
    v77 = v45;
    v35 = sub_1B9F1E00C();
    v45 = v77;
  }

  *(v35 + 16) = v46 + 1;
  v47 = v35 + 16 * v46;
  *(v47 + 32) = v45;
  *(v47 + 40) = &protocol witness table for DataSourceWithLayout<A>;
  sub_1BA043AA4(0, &qword_1EBBEA990, type metadata accessor for PlatformAlertsDataSource, &protocol witness table for FetchedResultsControllerDataSource<A>, type metadata accessor for HideableDataSource);
  swift_allocObject();
  v48 = v44;
  v49 = sub_1BA2AE320(v48, 1);
  v83 = v48;

  v50 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_alertsDataSource;
  v51 = v92;
  *(v92 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_alertsDataSource) = v49;
  v52 = swift_initStackObject();
  *(v52 + 16) = v90;
  *(v52 + 32) = 1;
  v53 = sub_1BA043B10();
  *(v52 + 40) = v49;
  *(v52 + 48) = v53;
  *(v52 + 56) = &protocol witness table for HideableDataSource<A>;
  *(v52 + 64) = 2;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();

  *(v52 + 72) = CompoundSectionedDataSource.init(_:)(MEMORY[0x1E69E7CC0]);
  *(v52 + 80) = &protocol witness table for CompoundSectionedDataSource;
  *(v52 + 88) = &protocol witness table for CompoundSectionedDataSource;
  v54 = sub_1B9F28D90(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  v55 = *(v51 + v50);
  swift_allocObject();

  v56 = sub_1B9F1D348(v54, v55, v53, &protocol witness table for HideableDataSource<A>);

  v57 = *(v35 + 16);
  v58 = *(v35 + 24);

  if (v57 >= v58 >> 1)
  {
    v35 = sub_1B9F1E00C();
  }

  *(v35 + 16) = v57 + 1;
  v59 = v35 + 16 * v57;
  *(v59 + 32) = v56;
  *(v59 + 40) = &protocol witness table for SizeClassResponsiveDataSource;
  sub_1B9F0A534(v93, v94);
  v60 = v79;
  v82 = v56;
  v61 = v60;
  v62 = sub_1BA4A3BB8();
  type metadata accessor for SnippetAllDataDataSource(0);
  swift_allocObject();
  v63 = sub_1BA28ED0C(v61, v94, v62, MEMORY[0x1E69E7CC0]);

  type metadata accessor for NoDataDataSource(0);
  swift_allocObject();

  v64 = NoDataDataSource.init()();
  sub_1BA043BB8(0);
  swift_allocObject();
  v66 = sub_1BA063C54(v65, v63, v64);

  sub_1BA043AA4(0, &qword_1EBBEA9A8, sub_1BA043BB8, &protocol witness table for PrimarySecondaryDataSource<A, B>, type metadata accessor for HideableDataSource);
  swift_allocObject();
  v67 = sub_1BA2AE338(v66, 1);

  v68 = v92;
  *(v92 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_allDataHideableDataSource) = v67;
  sub_1B9F1DEA0(0);
  v69 = swift_initStackObject();
  *(v69 + 16) = v90;
  *(v69 + 32) = *(v68 + v84);
  *(v69 + 40) = &protocol witness table for HideableDataSource<A>;
  *(v69 + 48) = v67;
  *(v69 + 56) = &protocol witness table for HideableDataSource<A>;
  v94[0] = v35;

  sub_1B9FE20B8(v69);
  v70 = CompoundSectionedDataSource.init(_:)(v94[0]);

  v71 = v87;
  sub_1BA042530(v87);
  v72 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_weakInit();
  sub_1BA043D80(&qword_1EBBEA9B0, sub_1BA043790, MEMORY[0x1E69A31B0]);
  v73 = v86;
  v74 = v89;
  sub_1BA4A2D38();

  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v93);
  v75 = *(v88 + 8);
  v75(v71, v74);
  v75(v73, v74);
  return v70;
}

void sub_1BA0437C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ProfileAllDataDataSource(uint64_t a1)
{
  result = qword_1EBBEA968;
  if (!qword_1EBBEA968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA04387C(uint64_t a1)
{
  sub_1BA0437C4(319, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA04398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA043A00(uint64_t a1, uint64_t a2)
{
  sub_1BA0437C4(0, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BA043AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1BA043B10()
{
  result = qword_1EBBEA998;
  if (!qword_1EBBEA998)
  {
    sub_1BA043AA4(255, &qword_1EBBEA990, type metadata accessor for PlatformAlertsDataSource, &protocol witness table for FetchedResultsControllerDataSource<A>, type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA998);
  }

  return result;
}

void sub_1BA043BB8(uint64_t a1)
{
  if (!qword_1EBBEA9A0)
  {
    v4[0] = type metadata accessor for SnippetAllDataDataSource(255);
    v4[1] = type metadata accessor for MutableArrayDataSourceWithLayout(255);
    v4[2] = &protocol witness table for CompoundSectionedDataSource;
    v4[3] = &protocol witness table for MutableArrayDataSource;
    v2 = type metadata accessor for PrimarySecondaryDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEA9A0);
    }
  }
}

void sub_1BA043C98(uint64_t a1)
{
  if (!qword_1EBBEA9C0)
  {
    v2 = sub_1BA4A2888();
    v3 = MEMORY[0x1E69A3108];
    v4 = sub_1BA043D80(&qword_1EBBEA9C8, MEMORY[0x1E69A3108], MEMORY[0x1E69A3118]);
    v5 = sub_1BA043D80(&qword_1EBBEA9D0, v3, MEMORY[0x1E69A3110]);
    v8[0] = v2;
    v8[1] = MEMORY[0x1E69A3100];
    v8[2] = &protocol witness table for HealthKitProfileInformation;
    v8[3] = v4;
    v8[4] = v5;
    v6 = type metadata accessor for SingleUserDataDataSource(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1EBBEA9C0);
    }
  }
}

uint64_t sub_1BA043D80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_14Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void sub_1BA043F34(uint64_t a1)
{
  if (!qword_1EBBEA9F0)
  {
    v2 = sub_1BA4A33C8();
    v3 = MEMORY[0x1E69A3430];
    v4 = sub_1BA043D80(&qword_1EBBEA9F8, MEMORY[0x1E69A3430], MEMORY[0x1E69A3440]);
    v5 = sub_1BA043D80(&qword_1EBBEAA00, v3, MEMORY[0x1E69A3438]);
    v8[0] = v2;
    v8[1] = MEMORY[0x1E69A3428];
    v8[2] = &protocol witness table for SharingEntryProfileInformation;
    v8[3] = v4;
    v8[4] = v5;
    v6 = type metadata accessor for SingleUserDataDataSource(a1, v8);
    if (!v7)
    {
      atomic_store(v6, &qword_1EBBEA9F0);
    }
  }
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_30Tm_0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA04417C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA0437C4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA0441EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(__int128 *__return_ptr, uint64_t))
{
  *&v55 = sub_1BA4A3EA8();
  v12 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v13);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a7(&v67, a1);

    if (*(&v68 + 1))
    {
      sub_1B9F1134C(&v67, v70);
      v16 = v71;
      v17 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      (*(v17 + 16))(&v67, a3, a4, v16, v17);
      v18 = v71;
      v19 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      (*(v19 + 8))(v66, a3, a4, v18, v19);
      v20 = v71;
      v21 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      v22 = (*(v21 + 24))(a5 & 1, v20, v21);
      sub_1BA039238(0);
      inited = swift_initStackObject();
      v55 = xmmword_1BA4B5480;
      *(inited + 16) = xmmword_1BA4B5480;
      v24 = MEMORY[0x1E69A3348];
      sub_1BA04398C(&v67, inited + 32, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CE40);
      v25 = swift_initStackObject();
      *(v25 + 16) = v55;
      sub_1BA04398C(v66, v25 + 32, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v24, sub_1B9F0CE40);
      v65 = inited;
      sub_1B9FE21C4(v25);
      v26 = sub_1B9FE4FF4(v22);

      sub_1B9FE21C4(v26);
      v27 = *(v65 + 16);
      if (v27)
      {
        v54[1] = v65;
        v28 = v65 + 32;
        v29 = MEMORY[0x1E69E7CC0];
        v30 = MEMORY[0x1E69A3348];
        do
        {
          sub_1BA04398C(v28, &v61, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v30, sub_1B9F0CE40);
          v56[0] = v61;
          v56[1] = v62;
          v57 = v63;
          if (*(&v62 + 1))
          {
            sub_1B9F1134C(v56, v58);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v64 = v29;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v29 = sub_1BA27EFB4(0, v29[2] + 1, 1, v29);
              v64 = v29;
            }

            v33 = v29[2];
            v32 = v29[3];
            if (v33 >= v32 >> 1)
            {
              v29 = sub_1BA27EFB4((v32 > 1), v33 + 1, 1, v29);
              v64 = v29;
            }

            v34 = v59;
            v35 = v60;
            v36 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
            v37 = MEMORY[0x1EEE9AC00](v36, v36);
            v39 = v54 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v40 + 16))(v39, v37);
            sub_1B9F1C4F4(v33, v39, &v64, v34, v35);
            __swift_destroy_boxed_opaque_existential_1(v58);
            v30 = MEMORY[0x1E69A3348];
          }

          else
          {
            sub_1B9F43AAC(v56, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v30);
          }

          v28 += 40;
          --v27;
        }

        while (v27);
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
      }

      sub_1B9F1C048(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection);
      v49 = swift_allocObject();
      *(v49 + 16) = v55;
      v50 = sub_1B9FE4F98(v29);

      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
      *(v49 + 32) = 0;
      *(v49 + 40) = 0;
      *(v49 + 48) = v50;

      v52 = Array<A>.identifierToIndexDict()(v51);

      *(v49 + 56) = v52;
      *(v49 + 64) = 0xD000000000000014;
      *(v49 + 72) = 0x80000001BA4E5030;
      v53 = MEMORY[0x1E69A3348];
      sub_1B9F43AAC(v66, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      sub_1B9F43AAC(&v67, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v53);
      __swift_destroy_boxed_opaque_existential_1(v70);
      return v49;
    }
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
  }

  sub_1B9F43AAC(&v67, &unk_1EBBEA890, qword_1EDC63A78, &protocol descriptor for SummaryProfileHeaderProviding);
  sub_1BA4A3D88();
  v41 = sub_1BA4A3E88();
  v42 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v70[0] = v44;
    *v43 = 136315138;
    v45 = sub_1BA4A85D8();
    v47 = sub_1B9F0B82C(v45, v46, v70);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_1B9F07000, v41, v42, "[%s] Could not find the header provider to create a profile header", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1BFAF43A0](v44, -1, -1);
    MEMORY[0x1BFAF43A0](v43, -1, -1);
  }

  (*(v12 + 8))(v15, v55);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BA0448D0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BA4A3428();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0449E0(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution;
  swift_beginAccess();
  sub_1BA044AA4(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1BA044988@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution;
  swift_beginAccess();
  return sub_1BA0449E0(v1 + v3, a1);
}

uint64_t sub_1BA0449E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3428();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA044A44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution;
  swift_beginAccess();
  sub_1BA044AA4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA044AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3428();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA044B68(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_1B9F25598(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA044BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA044C2C(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1B9F25598(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SnapshotDataSourceItemSwizzler.__allocating_init<A>(realSnapshotDataSourceItem:swizzledCellTypeClass:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  SnapshotDataSourceItemSwizzler.init<A>(realSnapshotDataSourceItem:swizzledCellTypeClass:)(a1, v6, a3);
  return v5;
}

uint64_t SnapshotDataSourceItemSwizzler.init<A>(realSnapshotDataSourceItem:swizzledCellTypeClass:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B9F32244();
  v7 = sub_1BA4A71D8();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BA4A3488();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = a3;
  sub_1BA4A71C8();
  sub_1BA4A3478();
  (*(v10 + 16))(v4 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution, v13, v9);
  sub_1BA4A3428();
  swift_storeEnumTagMultiPayload();
  sub_1B9F0A534(a1, v4 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1BA4A2D58();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  *(v4 + 16) = v14;
  *(v4 + 24) = v16;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

void sub_1BA044F48(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5 && a1)
  {
    v6 = v5;
    sub_1B9F0A534(a3, v11);
    sub_1B9F32244();
    type metadata accessor for SnapshotDataSourceItemSwizzler(0);
    v7 = a1;
    if (swift_dynamicCast())
    {
      ObjectType = swift_getObjectType();
      v9 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
      swift_beginAccess();
      sub_1B9F0A534(v10 + v9, v11);
      (*(v6 + 16))(v11, ObjectType, v6);
    }
  }
}

uint64_t SnapshotDataSourceItemSwizzler.deinit()
{

  sub_1BA0450A0(v0 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem));
  return v0;
}

uint64_t sub_1BA0450A0(uint64_t a1)
{
  v2 = sub_1BA4A3428();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SnapshotDataSourceItemSwizzler.__deallocating_deinit()
{

  sub_1BA0450A0(v0 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem));

  return swift_deallocClassInstance();
}

unint64_t sub_1BA045178(uint64_t a1)
{
  result = sub_1BA0451A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA0451A0()
{
  result = qword_1EDC63588;
  if (!qword_1EDC63588)
  {
    type metadata accessor for SnapshotDataSourceItemSwizzler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63588);
  }

  return result;
}

uint64_t type metadata accessor for SnapshotDataSourceItemSwizzler(uint64_t a1)
{
  result = qword_1EDC63578;
  if (!qword_1EDC63578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA045244()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1BA045294@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution;
  swift_beginAccess();
  return sub_1BA0449E0(v3 + v4, a1);
}

uint64_t sub_1BA04530C(uint64_t a1)
{
  result = sub_1BA4A3428();
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

unint64_t HKTAlertDetailFactory.AlertDetailFactoryFailure.localizedDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    sub_1BA4A7DF8();

    v6 = 0xD00000000000001DLL;
    v3 = v1;
    v4 = v2;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_1BA4A7DF8();

    v6 = 0x20656C646E7542;
    MEMORY[0x1BFAF1350](v1, v2);
    v3 = 0xD000000000000029;
    v4 = 0x80000001BA4E5720;
LABEL_5:
    MEMORY[0x1BFAF1350](v3, v4);
    return v6;
  }

  return 0xD00000000000004BLL;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI21HKTAlertDetailFactoryV05AlerteF7FailureO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BA045650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BA045698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BA0456DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1BA045704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0459F0(a2, a3, v31);
  if (!v4)
  {
    v27 = v10;
    v14 = v32;
    v15 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v16 = (*(v15 + 8))(a1, a4, v14, v15);
    if (v16)
    {
      a4 = v16;
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      sub_1BA4A3E08();

      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v34 = v26;
        *v20 = 136315394;
        *(v20 + 4) = sub_1B9F0B82C(0xD000000000000015, 0x80000001BA4E57C0, &v34);
        *(v20 + 12) = 2082;
        v28 = a2;
        v29 = a3;
        v30 = 1;

        v21 = sub_1BA4A6808();
        v23 = sub_1B9F0B82C(v21, v22, &v34);

        *(v20 + 14) = v23;
        _os_log_impl(&dword_1B9F07000, v18, v19, "[%s]: %{public}s", v20, 0x16u);
        v24 = v26;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v24, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
      }

      (*(v27 + 8))(v13, v9);
      sub_1BA045D5C();
      a4 = swift_allocError();
      *v25 = a2;
      *(v25 + 8) = a3;
      *(v25 + 16) = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  return a4;
}

double sub_1BA0459F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_1BA4A3EA8();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A1B28();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1B58();
  sub_1BA4A1B48();
  v14 = a1;
  v15 = v31;
  sub_1BA4A1B38();
  if (v15)
  {
  }

  else
  {
    v17 = sub_1BA4A1B18();
    (*(v10 + 8))(v13, v9);
    sub_1BA2FDD1C(&v32);

    if (v34)
    {
      sub_1B9F1134C(&v32, v30);
    }

    else
    {
      sub_1BA045DB0(&v32);
      sub_1BA4A3E08();
      v18 = a2;

      v19 = sub_1BA4A3E88();
      v20 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v35 = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_1B9F0B82C(0xD000000000000015, 0x80000001BA4E57C0, &v35);
        *(v21 + 12) = 2082;
        *&v32 = v14;
        *(&v32 + 1) = v18;
        v33 = 0;

        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v35);

        *(v21 + 14) = v25;
        _os_log_impl(&dword_1B9F07000, v19, v20, "[%s]: PluginDetailViewProviding Error: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v22, -1, -1);
        MEMORY[0x1BFAF43A0](v21, -1, -1);
      }

      (*(v28 + 8))(v8, v29);
      sub_1BA045D5C();
      swift_allocError();
      *v26 = v14;
      *(v26 + 8) = v18;
      *(v26 + 16) = 0;
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1BA045D5C()
{
  result = qword_1EBBEAA18;
  if (!qword_1EBBEAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAA18);
  }

  return result;
}

uint64_t sub_1BA045DB0(uint64_t a1)
{
  sub_1BA045E0C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA045E0C(uint64_t a1)
{
  if (!qword_1EBBEAA20)
  {
    sub_1BA045E64();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAA20);
    }
  }
}

unint64_t sub_1BA045E64()
{
  result = qword_1EBBEAA28;
  if (!qword_1EBBEAA28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEAA28);
  }

  return result;
}

uint64_t sub_1BA045EC8(uint64_t a1)
{
  sub_1BA047740(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v39 = v29 - v5;
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v29[1] = v1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    v8 = a1 + 56;
    v9 = sub_1BA4A7C48();
    v10 = *(a1 + 36);
    result = sub_1BA4A27B8();
    v37 = result;
    v11 = 0;
    v36 = *MEMORY[0x1E69A3B70];
    v30 = a1 + 64;
    v35 = xmmword_1BA4B5480;
    v34 = xmmword_1BA4B5460;
    v38 = a1;
    v32 = a1 + 56;
    v33 = v6;
    v31 = v10;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v40 = v11;
      v41 = *(*(a1 + 48) + 16 * v9);
      sub_1BA047740(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
      v14 = sub_1BA4A1C68();
      v15 = *(v14 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v35;
      (*(v15 + 104))(v17 + v16, v36, v14);
      v18 = sub_1BA4A0FA8();
      v19 = v39;
      (*(*(v18 - 8) + 56))(v39, 1, 1, v18);
      sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
      v20 = swift_allocObject();
      *(v20 + 16) = v34;

      *(v20 + 32) = sub_1BA4A1D78();
      *(v20 + 40) = 0;
      sub_1BA4A25F8();

      sub_1B9F1C1B0(v19);

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      a1 = v38;
      sub_1BA4A7F28();
      result = sub_1BA4A7EE8();
      v12 = 1 << *(a1 + 32);
      if (v9 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v32;
      v21 = v33;
      v22 = *(v32 + 8 * v13);
      if ((v22 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v10) = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v9 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1BA0477A4(v9, v31, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1BA0477A4(v9, v31, 0);
      }

LABEL_4:
      v11 = v40 + 1;
      v9 = v12;
      if (v40 + 1 == v21)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA046320(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v57 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v57 - v10;
  v12 = sub_1BA4A33C8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v57 - v23;
  sub_1B9F0A534(a1, v62);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v25 = v60[0];
    v26 = [v60[0] userData];
    if (v26)
    {
      v27 = v26;
      v57 = v25;
      v28 = sub_1BA4A1608();
      v30 = v29;

      sub_1BA4A3378();
      (*(v13 + 32))(v24, v20, v12);
      sub_1B9F28360(0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1BA4B5480;
      (*(v13 + 16))(v16, v24, v12);
      *(v54 + 56) = type metadata accessor for NotificationSettingsSharingItem(0);
      *(v54 + 64) = sub_1BA0476F8(&qword_1EBBEAA48, type metadata accessor for NotificationSettingsSharingItem, &unk_1BA4BA840);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v54 + 32));
      sub_1BA0755A0(v16, boxed_opaque_existential_1);
      sub_1B9F2BB4C(v28, v30);

      (*(v13 + 8))(v24, v12);
      return v54;
    }

    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v62);
    v42 = sub_1BA4A3E88();
    v43 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v25;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v60[0] = v46;
      *v45 = 136446466;
      v47 = sub_1BA4A85D8();
      v49 = sub_1B9F0B82C(v47, v48, v60);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(v62, v62[3]);
      v50 = sub_1BA4A2D58();
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_1(v62);
      v53 = sub_1B9F0B82C(v50, v52, v60);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_1B9F07000, v42, v43, "%{public}s Could not access feed item user data: %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v45, -1, -1);

      (*(v58 + 8))(v11, v59);
    }

    else
    {

      (*(v58 + 8))(v11, v59);
      __swift_destroy_boxed_opaque_existential_1(v62);
    }
  }

  else
  {
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v62);
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61 = v34;
      *v33 = 136446466;
      v35 = sub_1BA4A85D8();
      v37 = sub_1B9F0B82C(v35, v36, &v61);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      sub_1B9F0A534(v62, v60);
      v38 = sub_1BA4A6808();
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_1(v62);
      v41 = sub_1B9F0B82C(v38, v40, &v61);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_1B9F07000, v31, v32, "%{public}s: Incorrect view model; expected FeedItem, got: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v62);
    }

    (*(v58 + 8))(v7, v59);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BA046B28()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotificationSettingsSharingDataSource(uint64_t a1)
{
  result = qword_1EBBEAA30;
  if (!qword_1EBBEAA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA046CBC(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  if (qword_1EDC6CBB0 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  __swift_project_value_buffer(v4, qword_1EDC6CBB8);
  ListLayoutConfiguration.withFooter.getter(v6);
  v8 = ListLayoutConfiguration.layout(for:)(v7);
  sub_1BA047354(v6);
  return v8;
}

void sub_1BA046DAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v11 == a2)
  {

    goto LABEL_13;
  }

  v13 = sub_1BA4A8338();

  if (v13)
  {
LABEL_13:
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v17 = sub_1BA4A1318();
    v19 = v18;
    a3[3] = &type metadata for CollectionViewHeaderItem;
    a3[4] = sub_1BA0473B0();
    v20 = swift_allocObject();
    *a3 = v20;
    v46 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA047404(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v20 + 16) = sub_1BA4A6808();
    *(v20 + 24) = v21;
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
    *(v20 + 48) = sub_1BA047338;
    *(v20 + 56) = 0;
    *(v20 + 64) = 1;
    *(v20 + 72) = 1;
    *(v20 + 144) = 0;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
    *(v20 + 121) = 0u;
    v46 = v17;
    v47 = v19;
    v45[2] = 32;
    v45[3] = 0xE100000000000000;
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_1B9F252FC();
    v22 = MEMORY[0x1E69E6158];
    v23 = sub_1BA4A7B58();
    v25 = v24;
    sub_1B9F1C048(0, &qword_1EDC6E330, v22);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BA4B5480;
    *(v26 + 32) = v23;
    *(v26 + 40) = v25;

    v27 = sub_1BA4A6AE8();

    v28 = HKUIJoinStringsForAutomationIdentifier();

    if (v28)
    {

      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v31 = v30;

      *(v20 + 152) = v29;
      *(v20 + 160) = v31;
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v14 == a2)
  {
  }

  else
  {
    v16 = sub_1BA4A8338();

    if ((v16 & 1) == 0)
    {
      a3[3] = &type metadata for EmptyHeaderItem;
      a3[4] = sub_1B9FDA1B0();
      *a3 = swift_allocObject();
      EmptyHeaderItem.init()();
      return;
    }
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v32 = sub_1BA4A1318();
  v34 = v33;
  v46 = 0x74497265746F6F46;
  v47 = 0xEB000000005F6D65;
  sub_1BA4A1788();
  v35 = sub_1BA4A1748();
  v37 = v36;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x1BFAF1350](v35, v37);

  v38 = v46;
  v39 = v47;
  v40 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  a3[3] = v40;
  a3[4] = sub_1BA0476F8(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem, &protocol conformance descriptor for CollectionViewGroupedFooterItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v46 = type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA047404(0, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);
  *boxed_opaque_existential_1 = sub_1BA4A6808();
  boxed_opaque_existential_1[1] = v42;
  v43 = boxed_opaque_existential_1 + *(v40 + 32);
  *v43 = 0u;
  *(v43 + 1) = 0u;
  v43[32] = 1;
  v44 = (boxed_opaque_existential_1 + *(v40 + 28));
  *v44 = v32;
  v44[1] = v34;
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  swift_storeEnumTagMultiPayload();
  boxed_opaque_existential_1[2] = v38;
  boxed_opaque_existential_1[3] = v39;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0;
}

uint64_t sub_1BA047354(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA0473B0()
{
  result = qword_1EBBEAA40;
  if (!qword_1EBBEAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAA40);
  }

  return result;
}

uint64_t sub_1BA047404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA047450()
{
  v1 = *v0;
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  *(inited + 32) = sub_1BA4A2128();
  *(inited + 40) = v3;
  *(inited + 48) = sub_1BA4A2148();
  *(inited + 56) = v4;
  v5 = sub_1B9F12EB8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BA045EC8(v5);

  sub_1B9F1BFFC();
  v6 = sub_1BA4A6AE8();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5470;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithKey:v10 ascending:1 selector:sel_localizedStandardCompare_];

  *(v8 + 32) = v11;
  v12 = v7;
  v13 = sub_1BA4A7558();

  sub_1B9F126E0(0);
  v15 = objc_allocWithZone(v14);
  v16 = v13;
  v17 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = sub_1B9F17A68(v17, sub_1BA0476D4, v18, 0);

  return v19;
}

uint64_t sub_1BA0476F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA047740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA0477A4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

id sub_1BA047800()
{
  v0 = [objc_opt_self() hk_appTintColor];

  return v0;
}

id TextCellItem.textColor.getter()
{
  v0 = [objc_opt_self() hk_appTintColor];

  return v0;
}

uint64_t CellItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1BA047948()
{
  sub_1B9F12538();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19[-v9];
  v11 = qword_1EBBEA528;
  swift_beginAccess();
  v12 = *&v0[v11];
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = 1;
  aBlock[4] = sub_1BA048764;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  v16 = v0;

  [v15 notifyObservers_];
  _Block_release(v14);

  v17 = qword_1EDC84AC8;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v16[v17], v2);
  sub_1B9F177C4(v10);
  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  (*(v3 + 40))(&v16[v17], v10, v2);
  return swift_endAccess();
}

id DataTypeDetailConfiguration.HideablePregnancyArticlesComponent.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

__n128 DataTypeDetailConfiguration.HideablePregnancyArticlesComponent.init(predicate:maximumNumberOfArticles:header:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  result = *a3;
  *(a4 + 24) = *a3;
  return result;
}

void *DataTypeDetailConfiguration.HideablePregnancyArticlesComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v39 = *(v1 + 16);
  v6 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v7 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 32) = 0;
  if (*(a1 + 48) == 2)
  {
  }

  else
  {
    v9 = sub_1BA4A8338();

    if ((v9 & 1) == 0)
    {
      v10 = [*(a1 + 40) profileIdentifier];
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v38 = v10;
        v8 = sub_1BA27EFDC((v11 > 1), v12 + 1, 1, v8);
        v10 = v38;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
    }
  }

  v13 = *(a1 + 40);
  v14 = objc_allocWithZone(MEMORY[0x1E69A3B30]);
  v15 = v3;
  v16 = v7;
  v17 = [v14 initWithHealthStore_];
  v18 = objc_allocWithZone(type metadata accessor for HideablePregnancyArticlesFRCDataSource(0));
  v19 = &v18[qword_1EBBED908];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v18[qword_1EBBED900] = v17;
  v20 = &v18[qword_1EBBED910];
  *v20 = v3;
  v20[8] = v4;
  *&v18[qword_1EBBED918] = v8;
  v21 = &v18[qword_1EBBED920];
  *v21 = 0;
  *(v21 + 1) = 0;
  v41 = v3;
  v42 = v4;
  v40[0] = v5;
  v40[1] = v6;
  v22 = v16;
  v23 = v15;

  v24 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v22, v8, &v41, v40);
  v25 = qword_1EBBED900;
  v26 = *&v24[qword_1EBBED900];
  v27 = v24;
  v28 = [v26 getCurrentPregnancyModel];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 state];
  }

  else
  {
    v30 = 0;
  }

  v31 = *&v27[qword_1EBBED920];
  if (v31)
  {
    v32 = *&v27[qword_1EBBED920 + 8];

    v33 = v31(v30, v29 == 0);
    sub_1B9F0E310(v31, v32);
  }

  else
  {
    v33 = sub_1BA1BACA0(v30, v29 == 0);
  }

  v34 = qword_1EDC84AD8;
  swift_beginAccess();
  v35 = [*&v27[v34] fetchRequest];
  [v35 setPredicate_];

  sub_1B9F12964();
  sub_1BA047948();

  [*&v24[v25] registerObserver:v27 isUserInitiated:1];
  sub_1BA0484A8(0);
  swift_allocObject();
  v36 = sub_1BA048770(v27, v39);

  return v36;
}

uint64_t sub_1BA048048(uint64_t *a1)
{
  v3 = v1;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v43 - v15;
  v17 = *(v1 + 32);
  v18 = *a1;
  swift_beginAccess();
  v47 = v6;
  v44 = *(v6 + 16);
  v45 = v6 + 16;
  v44(v16, v17 + v18, v5);
  sub_1BA4A45D8();
  sub_1BA4A4578();
  sub_1BA4A44C8();
  v19 = v16;

  v50 = sub_1BA4A4578();
  v20 = *(v50 + 16);
  result = swift_beginAccess();
  v49 = v20;
  if (v20)
  {
    v22 = 0;
    v23 = (v50 + 40);
    v48 = v5;
    while (v22 < *(v50 + 16))
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v51 = v24;
      v52 = v25;

      result = sub_1BA4A4528();
      v26 = *(v3 + 24);
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      v27 = *(result + 16);
      if (v27 >= v26)
      {
        v28 = *(v3 + 24);
      }

      else
      {
        v28 = *(result + 16);
      }

      if (v26)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      if (v27 != v29)
      {
        v30 = v19;
        v31 = v12;
        v32 = v3;
        if (v29)
        {
          sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
          v33 = swift_allocObject();
          v34 = _swift_stdlib_malloc_size(v33);
          v35 = v34 - 32;
          if (v34 < 32)
          {
            v35 = v34 - 17;
          }

          v33[2] = v29;
          v33[3] = 2 * (v35 >> 4);
          swift_arrayInitWithCopy();
        }

        v3 = v32;
        v12 = v31;
        v19 = v30;
        v5 = v48;
      }

      ++v22;
      v51 = v24;
      v52 = v25;
      sub_1BA4A4448();

      v23 += 2;
      if (v49 == v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    v36 = sub_1BA4A45B8();
    v37 = v19;
    sub_1BA2A2800(v36, v12);

    sub_1BA4A4558();

    sub_1BA4A45A8();
    sub_1BA4A4518();

    v38 = sub_1BA4A4598();
    sub_1BA2A2800(v38, v12);

    sub_1BA4A4498();

    v39 = v47;
    v40 = *(v47 + 8);
    v40(v37, v5);
    v41 = v46;
    v44(v46, v12, v5);
    v42 = qword_1EDC84B68;
    swift_beginAccess();
    (*(v39 + 40))(v3 + v42, v41, v5);
    swift_endAccess();
    return (v40)(v12, v5);
  }

  return result;
}

double sub_1BA048494(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_1BA0484A8(uint64_t a1)
{
  if (!qword_1EDC63980)
  {
    v2 = type metadata accessor for HideablePregnancyArticlesFRCDataSource(255);
    v4 = type metadata accessor for DataSourceWithSectionItemLimit(a1, v2, &protocol witness table for FetchedResultsControllerDataSource<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDC63980);
    }
  }
}

void *sub_1BA048508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F15B38();
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  sub_1BA4A45D8();
  v3[3] = a2;
  v3[4] = a1;
  v10 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v3[5] = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v3[6] = v10;
  swift_beginAccess();
  v11 = *(a1 + 16);

  [v11 registerObserver_];
  sub_1BA048048(&OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot);
  return v3;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI42ArticlesFetchedResultsControllerDataSourceC6HeaderO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BA0486A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BA0486FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

void *sub_1BA048770(char *a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F15B38();
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  sub_1BA4A45D8();
  v3[3] = a2;
  v3[4] = a1;
  v10 = *&a1[qword_1EDC84AD0 + 8];
  v3[5] = *&a1[qword_1EDC84AD0];
  v3[6] = v10;
  v11 = qword_1EBBEA528;
  swift_beginAccess();
  v12 = *&a1[v11];
  v13 = a1;

  [v12 registerObserver_];
  sub_1BA048048(&qword_1EDC84AC8);
  return v3;
}

id OBWelcomeController.hxui_addContinueButton(accessibilityIdentifier:)(uint64_t a1, void *a2)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v4 = sub_1BA4A6758();

  if (a2)
  {
    a2 = sub_1BA4A6758();
  }

  v5 = [v2 hxui:v4 addPrimaryFooterButtonWithTitle:a2 accessibilityIdentifier:0xE000000000000000];

  return v5;
}

id sub_1BA048A28(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  v8 = OBWelcomeController.hxui_addContinueButton(accessibilityIdentifier:)(v4, v6);

  return v8;
}

id sub_1BA048ABC(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v5 = sub_1BA4A6758();

  if (a2)
  {
    a2 = sub_1BA4A6758();
  }

  v6 = [v3 hxui:v5 addPrimaryFooterButtonWithTitle:a2 accessibilityIdentifier:0xE000000000000000];

  return v6;
}

id sub_1BA048BD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = qword_1EDC5E100;
  v8 = a1;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v9 = sub_1BA4A6758();

  if (v6)
  {
    v10 = sub_1BA4A6758();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v8 hxui:v9 addPrimaryFooterButtonWithTitle:v10 accessibilityIdentifier:0xE000000000000000];

  return v11;
}

id OBWelcomeController.hxui_addSkipButton(accessibilityIdentifier:)(uint64_t a1, void *a2)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v4 = sub_1BA4A6758();

  if (a2)
  {
    a2 = sub_1BA4A6758();
  }

  v5 = [v2 hxui:v4 addSecondaryFooterButtonWithTitle:0 bold:a2 accessibilityIdentifier:0xE000000000000000];

  return v5;
}

id sub_1BA048E30(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = qword_1EDC5E100;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v8 = sub_1BA4A6758();

  if (v5)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 hxui:v8 addSecondaryFooterButtonWithTitle:0 bold:v9 accessibilityIdentifier:0xE000000000000000];

  return v10;
}

id OBWelcomeController.hxui_addPrimaryFooterButton(title:accessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() boldButton];
  [v6 addTarget:v4 action:sel_hxui_primaryFooterButtonTapped forControlEvents:64];
  v7 = sub_1BA4A6758();
  [v6 setTitle:v7 forState:0];

  v8 = v6;
  if (a4)
  {
    a4 = sub_1BA4A6758();
  }

  [v6 setAccessibilityIdentifier_];

  v9 = [v4 buttonTray];
  [v9 addButton_];

  return v6;
}

id sub_1BA0490F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  if (a3)
  {
    v9 = &selRef_boldButton;
  }

  else
  {
    v9 = &selRef_linkButton;
  }

  v10 = [objc_opt_self() *v9];
  [v10 addTarget:v6 action:*a6 forControlEvents:64];
  v11 = sub_1BA4A6758();
  [v10 setTitle:v11 forState:0];

  v12 = v10;
  if (a5)
  {
    a5 = sub_1BA4A6758();
  }

  [v10 setAccessibilityIdentifier_];

  v13 = [v6 buttonTray];
  [v13 addButton_];

  return v10;
}

id sub_1BA04924C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;
  if (a5)
  {
    v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    a5 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = a1;
  v16 = a6(v10, v12, a4, v13, a5);

  return v16;
}

UIBarButtonItem __swiftcall OBWelcomeController.hxui_addCancelButton()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_hxui_cancelButtonTapped];
  v2 = [v0 navigationItem];
  [v2 setRightBarButtonItem_];

  return v1;
}

id sub_1BA049398(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v3 = a1;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:sel_hxui_cancelButtonTapped];
  v5 = [v3 navigationItem];
  [v5 setRightBarButtonItem_];

  return v4;
}

id OBWelcomeController.hxui_addHeaderAccessoryButton(text:accessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() accessoryButton];
  v7 = sub_1BA4A6758();
  [v6 setTitle:v7 forState:0];

  v8 = [v6 titleLabel];
  if (v8)
  {
    [v8 setNumberOfLines_];
  }

  v9 = v6;
  if (a4)
  {
    a4 = sub_1BA4A6758();
  }

  [v6 setAccessibilityIdentifier_];

  [v6 addTarget:v4 action:sel_hxui_headerAccessoryButtonTapped forControlEvents:64];
  v10 = [v4 headerView];
  [v10 addAccessoryButton_];

  return v6;
}

id sub_1BA0495C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;
  if (a4)
  {
    v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a1;
  v14 = a5(v8, v10, v11, a4);

  return v14;
}

void OBWelcomeController.hxui_addCustomImageIconView(imageView:accessibilityIdentifier:height:)(void *a1, uint64_t a2, void *a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1BA4A3EA8();
  v48 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v4 headerView];
  v14 = [v13 customIconContainerView];

  [v14 addSubview_];
  v15 = [v4 headerView];
  v16 = [v15 customIconContainerView];

  if (v16)
  {
    if (a3)
    {
      a3 = sub_1BA4A6758();
    }

    [v16 setAccessibilityIdentifier_];
  }

  v17 = [v4 headerView];
  v18 = [v17 customIconContainerView];

  if (v18)
  {
    v19 = [a1 leadingAnchor];
    v20 = [v18 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    LODWORD(v22) = 1132068864;
    [v21 setPriority_];
    v23 = [a1 trailingAnchor];
    v24 = [v18 trailingAnchor];
    v25 = [v23 &selRef:v24 numberWithInteger:? + 5];

    LODWORD(v26) = 1132068864;
    [v25 setPriority_];
    v27 = objc_opt_self();
    sub_1B9F109F8();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BA4B5880;
    v29 = [a1 centerXAnchor];
    v30 = [v18 centerXAnchor];
    v31 = [v29 &selRef:v30 numberWithInteger:? + 5];

    *(v28 + 32) = v31;
    v32 = [a1 centerYAnchor];
    v33 = [v18 centerYAnchor];
    v34 = [v32 &selRef:v33 numberWithInteger:? + 5];

    *(v28 + 40) = v34;
    v35 = [a1 heightAnchor];
    v36 = [v35 constraintEqualToConstant_];

    *(v28 + 48) = v36;
    *(v28 + 56) = v21;
    *(v28 + 64) = v25;
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v37 = v21;
    v38 = v25;
    v48 = sub_1BA4A6AE8();

    [v27 activateConstraints_];

    v39 = v48;
  }

  else
  {
    sub_1BA4A3DD8();
    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49[0] = v43;
      *v42 = 136315138;
      v49[1] = ObjectType;
      swift_getMetatypeMetadata();
      v44 = sub_1BA4A6808();
      v46 = sub_1B9F0B82C(v44, v45, v49);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_1B9F07000, v40, v41, "%s: unable to access the header view's custom icon container view. This view is lazy loaded, so please call on viewDidLoad, and make sure you aren't setting a symbol or image on the HeaderView that will also cause it to be nil", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
    }

    (*(v48 + 8))(v12, v8);
  }
}

uint64_t sub_1BA049C10(void *a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a4;
  v12 = a1;
  OBWelcomeController.hxui_addCustomImageIconView(imageView:accessibilityIdentifier:height:)(v11, v8, v10, a2);
}

Swift::Void __swiftcall OBWelcomeController.removeOBContentViewHeightConstraints()()
{
  v1 = [v0 contentView];
  v2 = [v1 constraints];

  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v3 = sub_1BA4A6B08();

  if (v3 >> 62)
  {
    v4 = sub_1BA4A7CC8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFAF2860](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if ([v6 firstItem])
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          swift_unknownObjectRelease();
          goto LABEL_7;
        }

        sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
        v8 = [v10 contentView];
        v9 = sub_1BA4A7798();

        if ((v9 & 1) != 0 && [v7 firstAttribute] == 8)
        {
          [v7 setActive_];
        }

        swift_unknownObjectRelease();
      }

LABEL_7:
      if (v4 == ++v5)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1BA049F1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BA4A1728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(v10, v11);
  v12 = sub_1BA4A16B8();
  (*(v6 + 8))(v9, v5);
  v13 = HKLocalizedStringForDateAndTemplate();

  if (!v13)
  {
    return 0;
  }

  v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v14;
}

id sub_1BA04A074(void *a1)
{
  v2 = sub_1BA4A1728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
  if (result)
  {
    v8 = result;
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 16))(v9, v10);
    v11 = sub_1BA4A16B8();
    v12 = *(v3 + 8);
    v12(v6, v2);
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    (*(v14 + 24))(v13, v14);
    v15 = sub_1BA4A16B8();
    v12(v6, v2);
    v16 = [v8 stringFromDate:v11 toDate:v15];

    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA04A254(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 32))(v1, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  if (!*(v4 + 16))
  {

    goto LABEL_8;
  }

  v7 = sub_1B9F24A34(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  sub_1B9F0AD9C(*(v4 + 56) + 32 * v7, v16);

  if (swift_dynamicCast())
  {
    v10 = sub_1BA4A6758();
    v11 = HKUILocalizedString();

    v12 = sub_1BA4A6758();

    v13 = HKFormatValueAndUnit();

    if (v13)
    {
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return v14;
    }
  }

  return 0;
}

void *sub_1BA04A3E0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 40))(v2, v3);
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    result = (*(v8 + 8))(v7, v8);
    if (!result)
    {
      return result;
    }

    v10 = result;
    if ([result code] == 250)
    {
      v11 = [objc_opt_self() localizedTitleForWalkingSteadinessEventCategoryValue_];
      v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return v12;
    }
  }

  return 0;
}

uint64_t PDFFloatingImage.Corner.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t PDFFloatingImage.init(image:pinnedCorner:verticalSpacing:horizontalSpacing:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *a2;
  *(a3 + 8) = result;
  *a3 = v5;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

id sub_1BA04A5E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  if (*(a1 + 96) != 1)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    [v3 size];
    v12 = v15;
    if (v2 <= 1)
    {
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    v17 = v14;
    if (v2 == 2)
    {
      goto LABEL_10;
    }

LABEL_12:
    v27.origin.x = v7;
    v27.origin.y = v6;
    v27.size.width = v9;
    v27.size.height = v8;
    MinX = CGRectGetMinX(v27);
    goto LABEL_13;
  }

  v5 = -v5;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v3 size];
  v12 = v11;
  if (v2 <= 1)
  {
    if (v2)
    {
LABEL_4:
      v23.origin.x = v7;
      v23.origin.y = v6;
      v23.size.width = v9;
      v23.size.height = v8;
      MinX = CGRectGetMinX(v23);
LABEL_8:
      v25.origin.x = v7;
      v25.origin.y = v6;
      v25.size.width = v9;
      v25.size.height = v8;
      MinY = CGRectGetMinY(v25);
      goto LABEL_14;
    }

LABEL_7:
    v24.origin.x = v7;
    v24.origin.y = v6;
    v24.size.width = v9;
    v24.size.height = v8;
    MinX = CGRectGetMaxX(v24) - v12;
    goto LABEL_8;
  }

  v17 = v10;
  if (v2 == 2)
  {
    goto LABEL_12;
  }

LABEL_10:
  v26.origin.x = v7;
  v26.origin.y = v6;
  v26.size.width = v9;
  v26.size.height = v8;
  MinX = CGRectGetMaxX(v26) - v12;
LABEL_13:
  v28.origin.x = v7;
  v28.origin.y = v6;
  v28.size.width = v9;
  v28.size.height = v8;
  MinY = CGRectGetMaxY(v28) - v17;
LABEL_14:
  v18 = v4 + MinY;
  [v3 size];

  return [v3 drawInRect_];
}

unint64_t sub_1BA04A784()
{
  result = qword_1EBBEAA50;
  if (!qword_1EBBEAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAA50);
  }

  return result;
}

void sub_1BA04A850(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA04A8B8(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA04A958;
}

void sub_1BA04A958(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_1BA04A9DC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___switchView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___switchView);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 addTarget:v0 action:sel_switchTapped forControlEvents:0x2000];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1B9F49114(v4);
  }

  sub_1BA028194(v2);
  return v3;
}

char *sub_1BA04AA8C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView);
  }

  else
  {
    v4 = v0;
    v5 = sub_1BA04A9DC();
    v6 = objc_allocWithZone(type metadata accessor for CellWithAccessoryView());
    v7 = sub_1BA33F3C8(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1BA04AC58()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
  swift_beginAccess();
  sub_1BA04B338(v1 + v5, v14);
  if (!v14[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1BA33FB50(v14);

  v6 = __swift_destroy_boxed_opaque_existential_1(v14);
  v7 = (*((*v2 & *v1) + 0xF0))(v6);
  if (!v7)
  {
    return;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1BA04A9DC();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v12 = v11;
  ObjectType = swift_getObjectType();
  [v12 setOn:(*(v10 + 8))(ObjectType animated:{v10) & 1, 1}];
}

void sub_1BA04ADA8()
{
  v1 = [v0 setAccessibilityTraits_];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))(v1);
  (*((*v2 & *v0) + 0xD0))(v3);

  v4 = sub_1BA04A9DC();
  if (v4)
  {
    v5 = v4;
    [v4 setIsAccessibilityElement_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA04AE90(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {

    MEMORY[0x1BFAF1350](0x6863746977532ELL, 0xE700000000000000);
    v3 = a1;
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);

  v7 = v6(v3, v4);
  v8 = (*((*v5 & *v2) + 0x80))(v7);
  if (v8)
  {
    v9 = v8;
    v10.value._countAndFlagsBits = v3;
    v10.value._object = v4;
    v11 = v9;
    CellWithAccessoryView.updateAutomationIdentifiers(with:)(v10);
  }

  else
  {
    __break(1u);
  }
}

id SwitchCellViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SwitchCellViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___switchView] = 1;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView] = 0;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for SwitchCellViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id SwitchCellViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SwitchCellViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___switchView] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SwitchCellViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1BA04B258()
{
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController_delegate);
  sub_1B9F49114(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___switchView));
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView);
}

id SwitchCellViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SwitchCellViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA04B338(uint64_t a1, uint64_t a2)
{
  sub_1BA04B39C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA04B39C(uint64_t a1)
{
  if (!qword_1EDC6C130)
  {
    sub_1BA04B3F4();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6C130);
    }
  }
}

unint64_t sub_1BA04B3F4()
{
  result = qword_1EDC6C140;
  if (!qword_1EDC6C140)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6C140);
  }

  return result;
}

Swift::Void __swiftcall SwitchCellViewController.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  if ([v2 accessibilityElementIsFocused])
  {
    v9 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))();
    if (v9)
    {
      v4 = v3;
      v5 = sub_1BA04A9DC();
      if (v5)
      {
        v6 = v5;
        ObjectType = swift_getObjectType();
        v8 = [v6 isOn];

        (*(v4 + 16))(v8, ObjectType, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA04B558()
{
  v1 = *v0;
  if ([v1 accessibilityElementIsFocused])
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
    if (v8)
    {
      v3 = v2;
      v4 = sub_1BA04A9DC();
      if (v4)
      {
        v5 = v4;
        ObjectType = swift_getObjectType();
        v7 = [v5 isOn];

        (*(v3 + 16))(v7, ObjectType, v3);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_1BA04B770()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
    [v4 addTarget:v0 action:sel_switchTapped forControlEvents:0x2000];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA04B840()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA04B8F4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a3;
  v46 = a4;
  v41 = a2;
  v47 = a5;
  v7 = MEMORY[0x1E69E6720];
  sub_1B9F0CF08(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v40 - v10;
  v42 = sub_1BA4A3FD8();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A3F98();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69DBF68];
  sub_1B9F0CF08(0, &qword_1EDC6E658, MEMORY[0x1E69DBF68], v7);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v40 - v26;
  v28 = *a1;
  swift_beginAccess();
  sub_1BA04E0A4(v5 + v28, v27, &qword_1EDC6E658, v19);
  v29 = sub_1BA4A3FE8();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v27, 1, v29) != 1)
  {
    return (*(v30 + 32))(v47, v27, v29);
  }

  v31 = sub_1B9F43BD8(v27, &qword_1EDC6E658, MEMORY[0x1E69DBF68]);
  v41 = v41(v31);
  sub_1B9FD7EE0(0);
  v33 = &v14[*(v32 + 48)];
  v34 = *MEMORY[0x1E69DBF28];
  v35 = sub_1BA4A3F18();
  (*(*(v35 - 8) + 104))(v14, v34, v35);
  v36 = v46;
  *v33 = v45;
  v33[1] = 0;
  (*(v40 + 104))(v14, *v36, v42);
  v37 = sub_1BA4A3F48();
  (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
  sub_1BA4A3F88();
  v38 = v47;
  sub_1BA4A3EE8();
  (*(v43 + 8))(v18, v44);
  (*(v30 + 16))(v23, v38, v29);
  (*(v30 + 56))(v23, 0, 1, v29);
  swift_beginAccess();
  sub_1BA04E124(v23, v5 + v28);
  return swift_endAccess();
}

uint64_t sub_1BA04BD80(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA04BDEC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA04BE44(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1BA04BF04(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView] = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchViewAccessory;
  v10 = sub_1BA4A3FE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageView] = 0;
  v12(&v4[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageAccessory], 1, 1, v10);
  v14 = &v4[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier];
  v15 = type metadata accessor for SwitchCollectionViewCell(0);
  *v14 = 0;
  *(v14 + 1) = 0;
  v21.receiver = v4;
  v21.super_class = v15;
  v16 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1B9F0CF08(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  v17 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5480;
  v19 = v16;
  sub_1BA04B804(v18 + v17);
  sub_1BA4A75F8();

  return v19;
}

void sub_1BA04C114()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(v1, ObjectType, v3);
    v6 = sub_1BA04B770();
    v8 = v6;
    if (v5)
    {
      v7 = [v6 isOn];

      (*(v3 + 24))(v7, v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
      [v6 setOn:objc_msgSend(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView) animated:{sel_isOn) ^ 1, 1}];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1BA04C2C4()
{
  v1 = sub_1BA04B770();
  [v1 setOn:objc_msgSend(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView) animated:{sel_isOn) ^ 1, 1}];
}

uint64_t sub_1BA04C32C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA27D1B8();
  v7 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1BA04E0A4(&v1[v7], v29, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v29[3])
  {
    sub_1B9FCD918();
    sub_1BA04D9B0();
    if (swift_dynamicCast())
    {
      v8 = v27;
      v9 = v28;
      v10 = *v27;
      *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_delegate + 8] = v28;
      swift_unknownObjectWeakAssign();
      v11 = sub_1BA04B770();
      v12 = [v11 isOn];

      v13 = *(v9 + 8);
      if (v12 != (v13(v10, v9) & 1))
      {
        v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView];
        [v14 setOn:v13(v10 animated:{v9) & 1, 1}];
      }

      v15 = sub_1BA04B840();
      v16 = (*(*v8 + 160))();
      [v15 setImage_];

      v17 = (*(*v8 + 232))();
      if (v17)
      {
        v18 = v17;
        [v1 setBackgroundColor_];
      }

      sub_1BA04C714();
    }
  }

  else
  {
    sub_1B9F43BD8(v29, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3DD8();
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29[0] = v23;
    *v22 = 136315138;
    v24 = sub_1BA4A85D8();
    v26 = sub_1B9F0B82C(v24, v25, v29);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1B9F07000, v20, v21, "[%s] SwitchCollectionViewItem should conform to SwitchCollectionViewCellDelegate for proper updates to SwitchCollectionViewCell", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BA04C714()
{
  sub_1B9F0CF08(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  v0 = *(sub_1BA4A3FE8() - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  sub_1BA04B804(v2 + v1);
  v3 = sub_1BA04B840();
  v4 = [v3 image];

  if (v4)
  {

    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BA4B5480;
    sub_1BA04B8B8(v5 + v1);
    sub_1B9FE1E48(v5);
  }

  return sub_1BA4A75F8();
}

void sub_1BA04C894()
{
  [v0 setAccessibilityTraits_];
  v1 = sub_1BA04B770();
  [v1 setIsAccessibilityElement_];
}

void sub_1BA04C8F8(uint64_t a1)
{
  v2 = v1;
  sub_1BA27AE60();
  v3 = sub_1BA04B770();
  v4 = [v3 accessibilityTraits];

  [v2 setAccessibilityTraits_];
  v5 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView] accessibilityValue];
  [v2 setAccessibilityValue_];

  v6 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v9 = v8;

  v18 = v7;
  MEMORY[0x1BFAF1350](0x436863746977532ELL, 0xEC0000002E6C6C65);
  v10 = sub_1BA27A7D4();
  v11 = [v10 text];

  if (v11)
  {
    v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v13;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1BFAF1350](v12, v6);

  sub_1BA27AC50(v18, v9);

  v14 = sub_1BA04B770();
  sub_1B9F21718(0, &qword_1EDC6E330, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  *(v15 + 32) = v18;
  *(v15 + 40) = v9;
  *(v15 + 48) = 0x686374697753;
  *(v15 + 56) = 0xE600000000000000;
  v16 = sub_1BA4A6AE8();

  v17 = HKUIJoinStringsForAutomationIdentifier();

  [v14 setAccessibilityIdentifier_];
}

void sub_1BA04CB40(uint64_t a1, uint64_t a2)
{
  sub_1BA27AC50(a1, a2);
  if (a2)
  {

    v4 = sub_1BA04B770();
    sub_1B9F21718(0, &qword_1EDC6E330, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BA4B5460;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    *(v5 + 48) = 0x686374697753;
    *(v5 + 56) = 0xE600000000000000;
    v6 = sub_1BA4A6AE8();

    v7 = HKUIJoinStringsForAutomationIdentifier();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    v7 = sub_1BA04B770();
    [v7 setAccessibilityIdentifier_];
  }
}

void sub_1BA04CC5C(uint64_t a1, uint64_t a2)
{
  sub_1BA27B2E0(a1, a2);
  if ([v2 accessibilityElementIsFocused])
  {

    sub_1BA04C114();
  }
}

uint64_t sub_1BA04CCB8()
{
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_delegate);

  v1 = MEMORY[0x1E69DBF68];
  sub_1B9F43BD8(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchViewAccessory, &qword_1EDC6E658, MEMORY[0x1E69DBF68]);

  sub_1B9F43BD8(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageAccessory, &qword_1EDC6E658, v1);
}

id SwitchCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA04CE74()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA04CED0(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA04CF98()
{
  v2 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  swift_beginAccess();
  sub_1B9F21718(0, &qword_1EDC6E410, MEMORY[0x1E69E6720]);

  v0 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v0);

  return v2;
}

void sub_1BA04D074(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *sub_1BA04D0CC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_1BA04D110(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1BA04D158(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t sub_1BA04D1B8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1BA04D204(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_1BA04D258(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t sub_1BA04D2B8()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1BA04D304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void sub_1BA04D3A8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
  v5 = v2;
}

void *sub_1BA04D400()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void sub_1BA04D444(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_1BA04D510(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t SwitchCollectionViewItem.__allocating_init(image:text:detailText:backgroundColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  type metadata accessor for SwitchCollectionViewCell(0);
  sub_1BA04DA88();
  *(v12 + 16) = sub_1BA4A6808();
  *(v12 + 24) = v13;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0;
  *(v12 + 32) = 0u;
  swift_beginAccess();
  *(v12 + 32) = a1;
  swift_beginAccess();
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  swift_beginAccess();
  *(v12 + 56) = a4;
  *(v12 + 64) = a5;
  swift_beginAccess();
  *(v12 + 72) = a6;
  return v12;
}

uint64_t SwitchCollectionViewItem.init(image:text:detailText:backgroundColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SwitchCollectionViewCell(0);
  sub_1BA04DA88();
  *(v6 + 16) = sub_1BA4A6808();
  *(v6 + 24) = v13;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  *(v6 + 32) = 0u;
  swift_beginAccess();
  *(v6 + 32) = a1;
  swift_beginAccess();
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  swift_beginAccess();
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;

  swift_beginAccess();
  v14 = *(v6 + 72);
  *(v6 + 72) = a6;

  return v6;
}

uint64_t SwitchCollectionViewItem.deinit()
{

  return v0;
}

uint64_t SwitchCollectionViewItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA04D840()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

uint64_t sub_1BA04D890()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);

  return v2;
}

uint64_t sub_1BA04D8E0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_1BA04D944(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1BA04D9B0()
{
  result = qword_1EBBEAA78;
  if (!qword_1EBBEAA78)
  {
    type metadata accessor for SwitchCollectionViewItem();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEAA78);
  }

  return result;
}

uint64_t type metadata accessor for SwitchCollectionViewCell(uint64_t a1)
{
  result = qword_1EDC6E660;
  if (!qword_1EDC6E660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA04DA88()
{
  result = qword_1EBBF0D80;
  if (!qword_1EBBF0D80)
  {
    type metadata accessor for SwitchCollectionViewCell(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0D80);
  }

  return result;
}

uint64_t sub_1BA04DB04(uint64_t a1)
{
  result = sub_1BA04DB48(&qword_1EBBEAA88, &protocol conformance descriptor for SwitchCollectionViewItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA04DB48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SwitchCollectionViewItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA04DBCC(uint64_t a1)
{
  sub_1B9F0CF08(319, &qword_1EDC6E658, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA04E0A4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0CF08(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA04E124(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CF08(0, &qword_1EDC6E658, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BA04E1B8()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView) = 0;
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchViewAccessory;
  v2 = sub_1BA4A3FE8();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageView) = 0;
  v3(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageAccessory, 1, 1, v2);
  v4 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  *v4 = 0;
  v4[1] = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA04E2D0(uint64_t a1)
{
  v2 = v1;
  sub_1BA051C1C(0, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v78 - v6;
  v86 = sub_1BA4A3EA8();
  v8 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v78 - v18;
  sub_1B9FDCAFC();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v78 - v28;
  if (!*(a1 + 16))
  {
    v39 = v8;
    sub_1BA4A3D68();
    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v88 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4E5BE0, &v88);
      _os_log_impl(&dword_1B9F07000, v40, v41, "[%s]: Attempted reordering with empty section transactions", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
    }

    return (*(v39 + 8))(v19, v86);
  }

  sub_1BA0519CC(a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), &v78 - v28);
  v30 = sub_1BA050CCC(&v29[*(v21 + 52)], sub_1BA1F4C60);
  if (v30)
  {
    v31 = v30;
    sub_1BA4A3D68();

    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v88 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4E5BE0, &v88);
      *(v34 + 12) = 2080;
      v36 = MEMORY[0x1BFAF1560](v31, MEMORY[0x1E69A2B70]);
      v85 = v29;
      v38 = sub_1B9F0B82C(v36, v37, &v88);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v32, v33, "[%s]: Pinned reordering occurred, computed these differences: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);

      (*(v8 + 8))(v15, v86);
      v29 = v85;
    }

    else
    {

      (*(v8 + 8))(v15, v86);
    }

    v69 = qword_1EBC096C0;
    swift_beginAccess();
    sub_1B9F0A534(v2 + v69, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
    sub_1BA4A2358();

    sub_1BA051CE4(v29, sub_1B9FDCAFC);
    return __swift_destroy_boxed_opaque_existential_1(&v88);
  }

  sub_1BA4A3D68();
  sub_1BA0519CC(v29, v24);
  v45 = sub_1BA4A3E88();
  v46 = sub_1BA4A6FA8();
  if (!os_log_type_enabled(v45, v46))
  {

    sub_1BA051CE4(v24, sub_1B9FDCAFC);
    (*(v8 + 8))(v11, v86);
    v70 = v29;
    return sub_1BA051CE4(v70, sub_1B9FDCAFC);
  }

  v80 = v46;
  v83 = v11;
  v84 = v8;
  v85 = v29;
  v47 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v94[0] = v79;
  *v47 = 136315394;
  *(v47 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4E5BE0, v94);
  v81 = v47;
  *(v47 + 12) = 2080;
  v48 = *(v21 + 52);
  v49 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v51 = *(*(v50 - 8) + 16);
  v82 = v24;
  v52 = &v24[v48];
  v53 = v7;
  v51(v7, v52, v50);
  sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v49, MEMORY[0x1E69E6F00]);
  v54 = sub_1BA4A6E18();
  if (!v54)
  {
    sub_1BA051B6C(v7, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
    v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v91[0] = v56;
    v71 = MEMORY[0x1E69E62F8];
    sub_1BA051BC8(0, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
    sub_1BA051A30(&qword_1EDC6B660, &qword_1EDC6B670, v71, MEMORY[0x1E69E6310]);
    v72 = sub_1BA4A66D8();
    v74 = v73;

    sub_1BA051CE4(v82, sub_1B9FDCAFC);
    v75 = sub_1B9F0B82C(v72, v74, v94);

    v76 = v81;
    *(v81 + 14) = v75;
    _os_log_impl(&dword_1B9F07000, v45, v80, "[%s]: Failed to apply transaction %s", v76, 0x16u);
    v77 = v79;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v77, -1, -1);
    MEMORY[0x1BFAF43A0](v76, -1, -1);

    (*(v84 + 8))(v83, v86);
    v70 = v85;
    return sub_1BA051CE4(v70, sub_1B9FDCAFC);
  }

  v55 = v54;
  v78 = v45;
  v93 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v54 & ~(v54 >> 63), 0);
  v56 = v93;
  result = sub_1BA4A6DF8();
  if ((v55 & 0x8000000000000000) == 0)
  {
    v57 = 0;
    v58 = v88;
    v87 = v55;
    while (1)
    {
      v92[4] = v58;
      result = sub_1BA4A6DF8();
      if (v58 < v91[0])
      {
        break;
      }

      result = sub_1BA4A6E38();
      if (v58 >= v91[0])
      {
        goto LABEL_25;
      }

      v59 = sub_1BA4A6E88();
      v61 = *(v60 + 16);
      v62 = v60[1];
      v88 = *v60;
      v89 = v62;
      LOWORD(v90) = v61;
      sub_1BA051A74(&v88, v91);
      v59(v92, 0);
      v63 = sub_1BA10A904(v57, &v88);
      v65 = v64;
      sub_1BA051AF4(&v88);
      v93 = v56;
      v67 = *(v56 + 16);
      v66 = *(v56 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1B9F1C360((v66 > 1), v67 + 1, 1);
        v56 = v93;
      }

      ++v57;
      *(v56 + 16) = v67 + 1;
      v68 = v56 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      v92[0] = v58;
      sub_1BA4A6E28();
      v58 = v91[0];
      if (v87 == v57)
      {
        sub_1BA051B6C(v53, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
        v45 = v78;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA04ED40(uint64_t a1)
{
  v2 = v1;
  sub_1BA051C1C(0, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v78 - v6;
  v86 = sub_1BA4A3EA8();
  v8 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v78 - v18;
  sub_1B9FDCAFC();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v78 - v28;
  if (!*(a1 + 16))
  {
    v39 = v8;
    sub_1BA4A3D68();
    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v88 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4E5BC0, &v88);
      _os_log_impl(&dword_1B9F07000, v40, v41, "[%s]: Attempted reordering with empty section transactions", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
    }

    return (*(v39 + 8))(v19, v86);
  }

  sub_1BA0519CC(a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), &v78 - v28);
  v30 = sub_1BA050CCC(&v29[*(v21 + 52)], sub_1BA1F4FF4);
  if (v30)
  {
    v31 = v30;
    sub_1BA4A3D68();

    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v88 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4E5BC0, &v88);
      *(v34 + 12) = 2080;
      v36 = MEMORY[0x1BFAF1560](v31, MEMORY[0x1E69A2B70]);
      v85 = v29;
      v38 = sub_1B9F0B82C(v36, v37, &v88);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v32, v33, "[%s]: Pinned reordering occurred, computed these differences: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);

      (*(v8 + 8))(v15, v86);
      v29 = v85;
    }

    else
    {

      (*(v8 + 8))(v15, v86);
    }

    v69 = qword_1EBC09290;
    swift_beginAccess();
    sub_1B9F0A534(v2 + v69, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
    sub_1BA4A2358();

    sub_1BA051CE4(v29, sub_1B9FDCAFC);
    return __swift_destroy_boxed_opaque_existential_1(&v88);
  }

  sub_1BA4A3D68();
  sub_1BA0519CC(v29, v24);
  v45 = sub_1BA4A3E88();
  v46 = sub_1BA4A6FA8();
  if (!os_log_type_enabled(v45, v46))
  {

    sub_1BA051CE4(v24, sub_1B9FDCAFC);
    (*(v8 + 8))(v11, v86);
    v70 = v29;
    return sub_1BA051CE4(v70, sub_1B9FDCAFC);
  }

  v80 = v46;
  v83 = v11;
  v84 = v8;
  v85 = v29;
  v47 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v94[0] = v79;
  *v47 = 136315394;
  *(v47 + 4) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4E5BC0, v94);
  v81 = v47;
  *(v47 + 12) = 2080;
  v48 = *(v21 + 52);
  v49 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v51 = *(*(v50 - 8) + 16);
  v82 = v24;
  v52 = &v24[v48];
  v53 = v7;
  v51(v7, v52, v50);
  sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v49, MEMORY[0x1E69E6F00]);
  v54 = sub_1BA4A6E18();
  if (!v54)
  {
    sub_1BA051B6C(v7, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
    v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v91[0] = v56;
    v71 = MEMORY[0x1E69E62F8];
    sub_1BA051BC8(0, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
    sub_1BA051A30(&qword_1EDC6B660, &qword_1EDC6B670, v71, MEMORY[0x1E69E6310]);
    v72 = sub_1BA4A66D8();
    v74 = v73;

    sub_1BA051CE4(v82, sub_1B9FDCAFC);
    v75 = sub_1B9F0B82C(v72, v74, v94);

    v76 = v81;
    *(v81 + 14) = v75;
    _os_log_impl(&dword_1B9F07000, v45, v80, "[%s]: Failed to apply transaction %s", v76, 0x16u);
    v77 = v79;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v77, -1, -1);
    MEMORY[0x1BFAF43A0](v76, -1, -1);

    (*(v84 + 8))(v83, v86);
    v70 = v85;
    return sub_1BA051CE4(v70, sub_1B9FDCAFC);
  }

  v55 = v54;
  v78 = v45;
  v93 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v54 & ~(v54 >> 63), 0);
  v56 = v93;
  result = sub_1BA4A6DF8();
  if ((v55 & 0x8000000000000000) == 0)
  {
    v57 = 0;
    v58 = v88;
    v87 = v55;
    while (1)
    {
      v92[4] = v58;
      result = sub_1BA4A6DF8();
      if (v58 < v91[0])
      {
        break;
      }

      result = sub_1BA4A6E38();
      if (v58 >= v91[0])
      {
        goto LABEL_25;
      }

      v59 = sub_1BA4A6E88();
      v61 = *(v60 + 16);
      v62 = v60[1];
      v88 = *v60;
      v89 = v62;
      LOWORD(v90) = v61;
      sub_1BA051A74(&v88, v91);
      v59(v92, 0);
      v63 = sub_1BA10A904(v57, &v88);
      v65 = v64;
      sub_1BA051AF4(&v88);
      v93 = v56;
      v67 = *(v56 + 16);
      v66 = *(v56 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1B9F1C360((v66 > 1), v67 + 1, 1);
        v56 = v93;
      }

      ++v57;
      *(v56 + 16) = v67 + 1;
      v68 = v56 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      v92[0] = v58;
      sub_1BA4A6E28();
      v58 = v91[0];
      if (v87 == v57)
      {
        sub_1BA051B6C(v53, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
        v45 = v78;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA04F7B0(uint64_t a1)
{
  v2 = v1;
  sub_1BA051C1C(0, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v78 - v6;
  v86 = sub_1BA4A3EA8();
  v8 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v78 - v18;
  sub_1B9FDCAFC();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v78 - v28;
  if (!*(a1 + 16))
  {
    v39 = v8;
    sub_1BA4A3D68();
    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v88 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1B9F0B82C(0xD000000000000021, 0x80000001BA4E5C10, &v88);
      _os_log_impl(&dword_1B9F07000, v40, v41, "[%s]: Attempted reordering with empty section transactions", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
    }

    return (*(v39 + 8))(v19, v86);
  }

  sub_1BA0519CC(a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), &v78 - v28);
  v30 = sub_1BA050CCC(&v29[*(v21 + 52)], PinnedPinnableFeedItemsDataSource.getPinnedIdentifier(for:));
  if (v30)
  {
    v31 = v30;
    sub_1BA4A3D68();

    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v88 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_1B9F0B82C(0xD000000000000021, 0x80000001BA4E5C10, &v88);
      *(v34 + 12) = 2080;
      v36 = MEMORY[0x1BFAF1560](v31, MEMORY[0x1E69A2B70]);
      v85 = v29;
      v38 = sub_1B9F0B82C(v36, v37, &v88);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v32, v33, "[%s]: Pinned reordering occurred, computed these differences: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);

      (*(v8 + 8))(v15, v86);
      v29 = v85;
    }

    else
    {

      (*(v8 + 8))(v15, v86);
    }

    v69 = qword_1EBC094D8;
    swift_beginAccess();
    sub_1B9F0A534(v2 + v69, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
    sub_1BA4A2358();

    sub_1BA051CE4(v29, sub_1B9FDCAFC);
    return __swift_destroy_boxed_opaque_existential_1(&v88);
  }

  sub_1BA4A3D68();
  sub_1BA0519CC(v29, v24);
  v45 = sub_1BA4A3E88();
  v46 = sub_1BA4A6FA8();
  if (!os_log_type_enabled(v45, v46))
  {

    sub_1BA051CE4(v24, sub_1B9FDCAFC);
    (*(v8 + 8))(v11, v86);
    v70 = v29;
    return sub_1BA051CE4(v70, sub_1B9FDCAFC);
  }

  v80 = v46;
  v83 = v11;
  v84 = v8;
  v85 = v29;
  v47 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v94[0] = v79;
  *v47 = 136315394;
  *(v47 + 4) = sub_1B9F0B82C(0xD000000000000021, 0x80000001BA4E5C10, v94);
  v81 = v47;
  *(v47 + 12) = 2080;
  v48 = *(v21 + 52);
  v49 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v51 = *(*(v50 - 8) + 16);
  v82 = v24;
  v52 = &v24[v48];
  v53 = v7;
  v51(v7, v52, v50);
  sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v49, MEMORY[0x1E69E6F00]);
  v54 = sub_1BA4A6E18();
  if (!v54)
  {
    sub_1BA051B6C(v7, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
    v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v91[0] = v56;
    v71 = MEMORY[0x1E69E62F8];
    sub_1BA051BC8(0, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
    sub_1BA051A30(&qword_1EDC6B660, &qword_1EDC6B670, v71, MEMORY[0x1E69E6310]);
    v72 = sub_1BA4A66D8();
    v74 = v73;

    sub_1BA051CE4(v82, sub_1B9FDCAFC);
    v75 = sub_1B9F0B82C(v72, v74, v94);

    v76 = v81;
    *(v81 + 14) = v75;
    _os_log_impl(&dword_1B9F07000, v45, v80, "[%s]: Failed to apply transaction %s", v76, 0x16u);
    v77 = v79;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v77, -1, -1);
    MEMORY[0x1BFAF43A0](v76, -1, -1);

    (*(v84 + 8))(v83, v86);
    v70 = v85;
    return sub_1BA051CE4(v70, sub_1B9FDCAFC);
  }

  v55 = v54;
  v78 = v45;
  v93 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v54 & ~(v54 >> 63), 0);
  v56 = v93;
  result = sub_1BA4A6DF8();
  if ((v55 & 0x8000000000000000) == 0)
  {
    v57 = 0;
    v58 = v88;
    v87 = v55;
    while (1)
    {
      v92[4] = v58;
      result = sub_1BA4A6DF8();
      if (v58 < v91[0])
      {
        break;
      }

      result = sub_1BA4A6E38();
      if (v58 >= v91[0])
      {
        goto LABEL_25;
      }

      v59 = sub_1BA4A6E88();
      v61 = *(v60 + 16);
      v62 = v60[1];
      v88 = *v60;
      v89 = v62;
      LOWORD(v90) = v61;
      sub_1BA051A74(&v88, v91);
      v59(v92, 0);
      v63 = sub_1BA10A904(v57, &v88);
      v65 = v64;
      sub_1BA051AF4(&v88);
      v93 = v56;
      v67 = *(v56 + 16);
      v66 = *(v56 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1B9F1C360((v66 > 1), v67 + 1, 1);
        v56 = v93;
      }

      ++v57;
      *(v56 + 16) = v67 + 1;
      v68 = v56 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      v92[0] = v58;
      sub_1BA4A6E28();
      v58 = v91[0];
      if (v87 == v57)
      {
        sub_1BA051B6C(v53, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
        v45 = v78;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PinnedContentDiffableReorderHandling<>.applyReorder(sectionTransactions:)(uint64_t a1, uint64_t a2, void (**a3)(__int128 *__return_ptr, uint64_t))
{
  v4 = v3;
  sub_1BA051C1C(0, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v95 - v10;
  v12 = sub_1BA4A3EA8();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v101 = (&v95 - v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v95 - v21;
  sub_1B9FDCAFC();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v95 - v31;
  if (!*(a1 + 16))
  {
    sub_1BA4A3D68();
    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = v102;
      v52 = v50;
      v53 = swift_slowAlloc();
      *&v105 = v53;
      *v52 = 136315138;
      v54 = sub_1BA4A85D8();
      v56 = sub_1B9F0B82C(v54, v55, &v105);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_1B9F07000, v48, v49, "[%s]: Attempted reordering with empty section transactions", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1BFAF43A0](v53, -1, -1);
      MEMORY[0x1BFAF43A0](v52, -1, -1);

      return (*(v51 + 8))(v15, v103);
    }

    else
    {

      return (*(v102 + 8))(v15, v103);
    }
  }

  sub_1BA0519CC(a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), &v95 - v31);
  v33 = &v32[*(v24 + 52)];
  v104 = a2;
  v34 = PinnedContentDiffableReorderHandling<>.map(difference:)(v33, a2, a3);
  if (v34)
  {
    v35 = v34;
    v100 = v4;
    v101 = a3;
    sub_1BA4A3D68();

    v36 = sub_1BA4A3E88();
    v37 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v105 = v39;
      *v38 = 136315394;
      v40 = v104;
      v41 = sub_1BA4A85D8();
      v99 = v32;
      v42 = v102;
      v44 = sub_1B9F0B82C(v41, v43, &v105);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2080;
      v45 = MEMORY[0x1BFAF1560](v35, MEMORY[0x1E69A2B70]);
      v47 = sub_1B9F0B82C(v45, v46, &v105);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_1B9F07000, v36, v37, "[%s]: Pinned reordering occurred, computed these differences: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v38, -1, -1);

      (*(v42 + 8))(v22, v103);
      v32 = v99;
    }

    else
    {

      (*(v102 + 8))(v22, v103);
      v40 = v104;
    }

    v108[0] = v100;
    v101[2](&v105, v40);
    __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
    sub_1BA4A2358();

    sub_1BA051CE4(v32, sub_1B9FDCAFC);
    return __swift_destroy_boxed_opaque_existential_1(&v105);
  }

  v58 = v27;
  v59 = v101;
  sub_1BA4A3D68();
  sub_1BA0519CC(v32, v58);
  v60 = sub_1BA4A3E88();
  v61 = sub_1BA4A6FA8();
  if (!os_log_type_enabled(v60, v61))
  {

    sub_1BA051CE4(v58, sub_1B9FDCAFC);
LABEL_23:
    (*(v102 + 8))(v59, v103);
    return sub_1BA051CE4(v32, sub_1B9FDCAFC);
  }

  v96 = v61;
  v98 = v60;
  v62 = swift_slowAlloc();
  v95 = swift_slowAlloc();
  v111[0] = v95;
  *v62 = 136315394;
  v63 = sub_1BA4A85D8();
  v65 = sub_1B9F0B82C(v63, v64, v111);

  *(v62 + 4) = v65;
  v97 = v62;
  *(v62 + 12) = 2080;
  v66 = *(v24 + 52);
  v67 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v69 = *(*(v68 - 8) + 16);
  v100 = v58;
  v69(v11, v58 + v66, v68);
  sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v67, MEMORY[0x1E69E6F00]);
  v70 = sub_1BA4A6E18();
  if (!v70)
  {
    sub_1BA051B6C(v11, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
    v86 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v108[0] = v86;
    v87 = MEMORY[0x1E69E62F8];
    sub_1BA051BC8(0, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
    sub_1BA051A30(&qword_1EDC6B660, &qword_1EDC6B670, v87, MEMORY[0x1E69E6310]);
    v88 = sub_1BA4A66D8();
    v90 = v89;

    sub_1BA051CE4(v100, sub_1B9FDCAFC);
    v91 = sub_1B9F0B82C(v88, v90, v111);

    v92 = v97;
    *(v97 + 14) = v91;
    v93 = v98;
    _os_log_impl(&dword_1B9F07000, v98, v96, "[%s]: Failed to apply transaction %s", v92, 0x16u);
    v94 = v95;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v94, -1, -1);
    MEMORY[0x1BFAF43A0](v92, -1, -1);

    goto LABEL_23;
  }

  v71 = v70;
  v99 = v32;
  v110 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v70 & ~(v70 >> 63), 0);
  v72 = v110;
  result = sub_1BA4A6DF8();
  if ((v71 & 0x8000000000000000) == 0)
  {
    v73 = 0;
    v74 = v105;
    v104 = v71;
    while (1)
    {
      v109[4] = v74;
      result = sub_1BA4A6DF8();
      if (v74 < v108[0])
      {
        break;
      }

      result = sub_1BA4A6E38();
      if (v74 >= v108[0])
      {
        goto LABEL_25;
      }

      v75 = sub_1BA4A6E88();
      v77 = *(v76 + 16);
      v78 = v76[1];
      v105 = *v76;
      v106 = v78;
      LOWORD(v107) = v77;
      sub_1BA051A74(&v105, v108);
      v75(v109, 0);
      v79 = sub_1BA10A904(v73, &v105);
      v81 = v80;
      sub_1BA051AF4(&v105);
      v110 = v72;
      v82 = v11;
      v84 = *(v72 + 16);
      v83 = *(v72 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_1B9F1C360((v83 > 1), v84 + 1, 1);
        v72 = v110;
      }

      ++v73;
      *(v72 + 16) = v84 + 1;
      v85 = v72 + 16 * v84;
      *(v85 + 32) = v79;
      *(v85 + 40) = v81;
      v109[0] = v74;
      sub_1BA4A6E28();
      v74 = v108[0];
      v11 = v82;
      if (v104 == v73)
      {
        sub_1BA051B6C(v82, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
        v32 = v99;
        v86 = v72;
        v59 = v101;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1BA050CCC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v41 = a2;
  v3 = MEMORY[0x1E69E6F00];
  sub_1BA051C1C(0, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - v7;
  v9 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v11 = v10;
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v12 = v3;
  v13 = *(v5 + 44);
  v14 = sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v9, v12);
  sub_1BA4A6DF8();
  sub_1BA4A6E38();
  v15 = MEMORY[0x1E69E7CC0];
  if (*&v8[v13] == v45[0])
  {
LABEL_2:
    sub_1BA051B6C(v8, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);
    return v15;
  }

  v39 = v13;
  v40 = v11;
  v38 = v14;
  while (1)
  {
    v18 = sub_1BA4A6E88();
    v21 = *v19;
    v22 = *(v19 + 16);
    v23 = *(v19 + 32);
    v24 = *(v19 + 33);
    v25 = *v19;
    v20 = *(v19 + 8);
    v43 = *(v19 + 24);
    v44 = v23;
    v26 = sub_1BA051CD4(v25, v20, v22);
    v18(v45, 0, v26);
    sub_1BA4A6E48();
    v27 = v41(v20, v22);
    v29 = v28;
    v42 = v27;
    if (v24)
    {
      break;
    }

    if (!v28)
    {
      v34 = v21;
      v35 = v20;
      v36 = v22;
      goto LABEL_20;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1BA27F848(0, *(v15 + 2) + 1, 1, v15);
    }

    v31 = *(v15 + 2);
    v33 = *(v15 + 3);
    v32 = v31 + 1;
    if (v31 >= v33 >> 1)
    {
      v15 = sub_1BA27F848((v33 > 1), v31 + 1, 1, v15);
    }

    v16 = v21;
LABEL_5:
    sub_1BA051CDC(v21, v20, v22);
    *(v15 + 2) = v32;
    v17 = &v15[32 * v31];
    *(v17 + 4) = v42;
    *(v17 + 5) = v29;
    *(v17 + 6) = v16;
    v17[56] = v24 ^ 1;
    sub_1BA4A6E38();
    if (*&v8[v39] == v45[0])
    {
      goto LABEL_2;
    }
  }

  if (v28)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1BA27F848(0, *(v15 + 2) + 1, 1, v15);
    }

    v31 = *(v15 + 2);
    v30 = *(v15 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v15 = sub_1BA27F848((v30 > 1), v31 + 1, 1, v15);
    }

    v16 = 0;
    goto LABEL_5;
  }

  v34 = v21;
  v35 = v20;
  v36 = v22;
LABEL_20:
  sub_1BA051CDC(v34, v35, v36);
  sub_1BA051B6C(v8, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);

  return 0;
}

char *PinnedContentDiffableReorderHandling<>.map(difference:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v5 = MEMORY[0x1E69E6F00];
  sub_1BA051C1C(0, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v43 - v9;
  v11 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v13 = v12;
  (*(*(v12 - 8) + 16))(v10, a1, v12);
  v14 = v5;
  v15 = *(v7 + 44);
  v16 = sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v11, v14);
  sub_1BA4A6DF8();
  sub_1BA4A6E38();
  if (*&v10[v15] == v53[0])
  {
    v52 = MEMORY[0x1E69E7CC0];
LABEL_3:
    sub_1BA051B6C(v10, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);
    return v52;
  }

  v47 = a3 + 40;
  v52 = MEMORY[0x1E69E7CC0];
  v45 = v13;
  v46 = a3;
  v43 = v16;
  v44 = v15;
  while (1)
  {
    v20 = sub_1BA4A6E88();
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 32);
    v26 = *(v21 + 33);
    v27 = *v21;
    v50 = *(v21 + 24);
    v51 = v25;
    v28 = sub_1BA051CD4(v27, v22, v24);
    v20(v53, 0, v28);
    sub_1BA4A6E48();
    if (v26)
    {
      break;
    }

    v53[0] = v49;
    v36 = (*(a3 + 40))(v22, v24, v48, a3);
    if (!v37)
    {
      v39 = v23;
      v40 = v22;
      v41 = v24;
      goto LABEL_21;
    }

    v31 = v36;
    v32 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_1BA27F848(0, *(v52 + 2) + 1, 1, v52);
    }

    v34 = *(v52 + 2);
    v38 = *(v52 + 3);
    v35 = v34 + 1;
    if (v34 >= v38 >> 1)
    {
      v52 = sub_1BA27F848((v38 > 1), v34 + 1, 1, v52);
    }

    v17 = v23;
LABEL_6:
    sub_1BA051CDC(v23, v22, v24);
    v18 = v52;
    *(v52 + 2) = v35;
    v19 = &v18[32 * v34];
    *(v19 + 4) = v31;
    *(v19 + 5) = v32;
    *(v19 + 6) = v17;
    v19[56] = v26 ^ 1;
    sub_1BA4A6E38();
    a3 = v46;
    if (*&v10[v44] == v53[0])
    {
      goto LABEL_3;
    }
  }

  v53[0] = v49;
  v29 = (*(a3 + 40))(v22, v24, v48, a3);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_1BA27F848(0, *(v52 + 2) + 1, 1, v52);
    }

    v34 = *(v52 + 2);
    v33 = *(v52 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v52 = sub_1BA27F848((v33 > 1), v34 + 1, 1, v52);
    }

    v17 = 0;
    goto LABEL_6;
  }

  v39 = v23;
  v40 = v22;
  v41 = v24;
LABEL_21:
  sub_1BA051CDC(v39, v40, v41);
  sub_1BA051B6C(v10, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);

  return 0;
}

uint64_t PinnedContentDiffableReorderHandling<>.pinnedIdentifierFromFeedItem(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 24))(&v38, a1, a2, a3, a5, v12);
  if (v39)
  {
    sub_1B9F25598(&v38, v41);
    sub_1B9F0A534(v41, &v38);
    sub_1B9F32244();
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v15 = v37[0];
      v16 = [v37[0] pinnedContentIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        __swift_destroy_boxed_opaque_existential_1(v41);
        return v18;
      }

      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    else
    {
      sub_1BA4A3D68();
      sub_1B9F0A534(v41, &v38);
      sub_1B9F0A534(v41, v37);
      v20 = sub_1BA4A3E88();
      v21 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v36 = v23;
        *v22 = 136315650;
        v24 = sub_1BA4A85D8();
        v26 = sub_1B9F0B82C(v24, v25, &v36);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v38, v39);
        v35[0] = swift_getDynamicType();
        v35[1] = v40;
        sub_1BA051D44();
        v27 = sub_1BA4A6808();
        v29 = v28;
        __swift_destroy_boxed_opaque_existential_1(&v38);
        v30 = sub_1B9F0B82C(v27, v29, &v36);

        *(v22 + 14) = v30;
        *(v22 + 22) = 2080;
        sub_1B9F0A534(v37, v35);
        v31 = sub_1BA4A6808();
        v33 = v32;
        __swift_destroy_boxed_opaque_existential_1(v37);
        v34 = sub_1B9F0B82C(v31, v33, &v36);

        *(v22 + 24) = v34;
        _os_log_impl(&dword_1B9F07000, v20, v21, "[%s]: Expected FeedItem but got %s. Item: %s", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v23, -1, -1);
        MEMORY[0x1BFAF43A0](v22, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v37);
        __swift_destroy_boxed_opaque_existential_1(&v38);
      }

      (*(v10 + 8))(v14, v9);
      __swift_destroy_boxed_opaque_existential_1(v41);
    }
  }

  else
  {
    sub_1BA051CE4(&v38, sub_1B9FCD694);
  }

  return 0;
}

uint64_t sub_1BA0519CC(uint64_t a1, uint64_t a2)
{
  sub_1B9FDCAFC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA051A30(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA051BC8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA051A74(uint64_t a1, uint64_t a2)
{
  sub_1BA051BC8(0, &qword_1EBBEAAA8, MEMORY[0x1E69E6EE8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA051AF4(uint64_t a1)
{
  sub_1BA051BC8(0, &qword_1EBBEAAA8, MEMORY[0x1E69E6EE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA051B6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1BA051C1C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA051BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA051C1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = MEMORY[0x1E69E6EF0];
    sub_1BA051BC8(255, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
    v12 = v11;
    v13 = sub_1BA051A30(a3, &unk_1EBBED8B0, v9, a4);
    v14 = a5(a1, v12, v13);
    if (!v15)
    {
      atomic_store(v14, a2);
    }
  }
}

uint64_t sub_1BA051CE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BA051D44()
{
  result = qword_1EBBEBB90;
  if (!qword_1EBBEBB90)
  {
    sub_1B9F32244();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBBEBB90);
  }

  return result;
}

id sub_1BA051DDC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setUnitsStyle_];
  result = [v0 setAllowedUnits_];
  qword_1EBBEAAC0 = v0;
  return result;
}

char *sub_1BA051E40(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI36InternalFeedItemDetailViewController_feedItem) = a1;
  v4 = a1;
  v5 = sub_1BA051EA8(v4);
  v6 = CompoundDataSourceCollectionViewController.init(dataSource:)(v5);

  return v6;
}

uint64_t sub_1BA051EA8(void *a1)
{
  v2 = sub_1BA052100(a1);
  v4 = v3;
  sub_1B9F355F0(0, &qword_1EDC5DC70, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  v6 = sub_1BA0564F8(a1);
  v8 = v7;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v10 = sub_1BA058188(a1);
  v12 = v11;
  result = swift_initStackObject();
  *(result + 16) = xmmword_1BA4B5480;
  *(result + 32) = v10;
  *(result + 40) = v12;
  v23 = inited;
  v24 = v9;
  v14 = 32;
  v25 = result;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = *&v22[v14];
    v17 = *(v16 + 16);
    v18 = *(v15 + 16);
    if (__OFADD__(v18, v17))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v18 + v17 <= *(v15 + 24) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = sub_1B9F1E00C();
      v15 = result;
      if (*(v16 + 16))
      {
LABEL_10:
        if ((*(v15 + 24) >> 1) - *(v15 + 16) < v17)
        {
          goto LABEL_17;
        }

        sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v19 = *(v15 + 16);
          v20 = __OFADD__(v19, v17);
          v21 = v19 + v17;
          if (v20)
          {
            goto LABEL_18;
          }

          *(v15 + 16) = v21;
        }

        goto LABEL_3;
      }
    }

    if (v17)
    {
      goto LABEL_16;
    }

LABEL_3:
    v14 += 8;
    if (v14 == 56)
    {
      sub_1B9F355F0(0, &qword_1EBBEAAD8, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      type metadata accessor for CompoundSectionedDataSource(0);
      swift_allocObject();
      return CompoundSectionedDataSource.init(_:)(v15);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BA052100(void *a1)
{
  v221 = a1;
  v228 = *MEMORY[0x1E69E9840];
  v204 = sub_1BA4A1798();
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204, v2);
  v202 = &v188 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for ContentConfigurationItem(0);
  v4 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205, v5);
  v192 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v191 = &v188 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v190 = &v188 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v189 = &v188 - v15;
  sub_1B9F2F7BC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v199 = &v188 - v18;
  v220 = sub_1BA4A4428();
  v222 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220, v19);
  v198 = &v188 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v188 - v23;
  sub_1B9F2F7BC(0, &qword_1EBBEAB08, type metadata accessor for ContentConfigurationItem, MEMORY[0x1E69E6F90]);
  v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v208 = *(v4 + 72);
  v196 = 2 * v208;
  v197 = 3 * v208;
  v188 = 6 * v208;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B9A80;
  v201 = v26;
  v200 = v25;
  v27 = v26 + v25;
  v28 = [a1 pluginPackage];
  v217 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A4198();
  sub_1BA4A43B8();
  v29 = objc_opt_self();
  v218 = *MEMORY[0x1E69DDD80];
  v30 = v29;
  v31 = [v29 preferredFontForTextStyle_];
  v32 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v32(&v225, 0);
  v33 = objc_opt_self();
  v219 = v33;
  v34 = [v33 secondaryLabelColor];
  v35 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v35(&v225, 0);

  sub_1BA4A41A8();
  v217 = *MEMORY[0x1E69DDCF8];
  v36 = v30;
  v37 = [v30 preferredFontForTextStyle_];
  v38 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v38(&v225, 0);
  v39 = [v33 labelColor];
  v40 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v40(&v225, 0);
  v41 = MEMORY[0x1E69DC110];
  v42 = v220;
  *(v27 + 96) = v220;
  *(v27 + 104) = v41;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v27 + 72));
  v44 = v222;
  v215 = *(v222 + 16);
  v216 = v222 + 16;
  v215(boxed_opaque_existential_1, v24, v42);
  v45 = v205;
  v46 = *(v205 + 40);
  v214 = sub_1BA4A4168();
  v47 = *(v214 - 8);
  v213 = *(v47 + 56);
  v212 = v47 + 56;
  v213(v27 + v46, 1, 1, v214);
  v48 = *(v44 + 8);
  v222 = v44 + 8;
  v211 = v48;
  v227 = 0;
  v225 = 0u;
  v226 = 0u;
  v48(v24, v42);
  v210 = sub_1B9F2F31C;
  sub_1BA058FF0(&v225, v27 + 16, sub_1B9F2F31C);
  *(v27 + v45[12]) = 0;
  *(v27 + v45[13]) = 0;
  strcpy(v27, "pluginPackage");
  *(v27 + 14) = -4864;
  *(v27 + 112) = 0;
  *(v27 + 120) = MEMORY[0x1E69E7CC0];
  *(v27 + 56) = 0;
  *(v27 + 64) = 0;
  v49 = (v27 + v45[11]);
  *v49 = 0;
  v49[1] = 0;
  v209 = sub_1B9F2F31C;
  sub_1BA059058(&v225, sub_1B9F2F31C);

  v50 = v27 + v208;
  v195 = 0x80000001BA4E1DC0;
  v51 = [v221 uniqueIdentifier];
  v194 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v193 = v52;

  sub_1BA4A4198();
  sub_1BA4A43B8();
  v53 = v36;
  v206 = v36;
  v54 = [v36 preferredFontForTextStyle_];
  v55 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v55(&v225, 0);
  v56 = v219;
  v57 = [v219 secondaryLabelColor];
  v58 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v58(&v225, 0);

  sub_1BA4A41A8();
  v59 = v27;
  v207 = v27;
  v60 = v205;
  v61 = [v53 preferredFontForTextStyle_];
  v62 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v62(&v225, 0);
  v63 = [v56 labelColor];
  v64 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v64(&v225, 0);
  v65 = v220;
  *(v50 + 96) = v220;
  *(v50 + 104) = MEMORY[0x1E69DC110];
  v66 = __swift_allocate_boxed_opaque_existential_1((v50 + 72));
  v215(v66, v24, v65);
  v213(v50 + v60[10], 1, 1, v214);
  v227 = 0;
  v225 = 0u;
  v226 = 0u;
  v211(v24, v65);
  sub_1BA058FF0(&v225, v50 + 16, v210);
  *(v50 + v60[12]) = 0;
  *(v50 + v60[13]) = 0;
  *v50 = 0xD000000000000010;
  *(v50 + 8) = v195;
  *(v50 + 112) = 0;
  *(v50 + 120) = MEMORY[0x1E69E7CC0];
  *(v50 + 56) = 0;
  *(v50 + 64) = 0;
  v67 = (v50 + v60[11]);
  *v67 = 0;
  v67[1] = 0;
  sub_1BA059058(&v225, v209);

  v68 = v59 + v196;
  v69 = [v221 contentKindRawValue];
  v196 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v195 = v70;

  sub_1BA4A4198();
  sub_1BA4A43B8();
  v71 = v206;
  v72 = [v206 preferredFontForTextStyle_];
  v73 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v73(&v225, 0);
  v74 = v219;
  v75 = [v219 secondaryLabelColor];
  v76 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v76(&v225, 0);

  sub_1BA4A41A8();
  v77 = [v71 preferredFontForTextStyle_];
  v78 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v78(&v225, 0);
  v79 = [v74 labelColor];
  v80 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v80(&v225, 0);
  v81 = v220;
  *(v68 + 96) = v220;
  *(v68 + 104) = MEMORY[0x1E69DC110];
  v82 = __swift_allocate_boxed_opaque_existential_1((v68 + 72));
  v215(v82, v24, v81);
  v213(v68 + v60[10], 1, 1, v214);
  v227 = 0;
  v225 = 0u;
  v226 = 0u;
  v211(v24, v81);
  sub_1BA058FF0(&v225, v68 + 16, v210);
  *(v68 + v60[12]) = 0;
  *(v68 + v60[13]) = 0;
  *v68 = 0x4B746E65746E6F63;
  *(v68 + 8) = 0xEB00000000646E69;
  *(v68 + 112) = 0;
  *(v68 + 120) = MEMORY[0x1E69E7CC0];
  *(v68 + 56) = 0;
  *(v68 + 64) = 0;
  v83 = (v68 + v60[11]);
  *v83 = 0;
  v83[1] = 0;
  sub_1BA059058(&v225, v209);

  v84 = v207 + v197;
  *&v225 = sub_1BA4A2718();
  *(&v225 + 1) = v85;
  LOBYTE(v226) = v86;
  v197 = sub_1BA4A6808();
  sub_1BA4A4198();
  sub_1BA4A43B8();
  v87 = v206;
  v88 = [v206 preferredFontForTextStyle_];
  v89 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v89(&v225, 0);
  v90 = v219;
  v91 = [v219 secondaryLabelColor];
  v92 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v92(&v225, 0);

  sub_1BA4A41A8();
  v93 = [v87 preferredFontForTextStyle_];
  v94 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v94(&v225, 0);
  v95 = [v90 labelColor];
  v96 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v96(&v225, 0);
  v97 = v220;
  *(v84 + 96) = v220;
  *(v84 + 104) = MEMORY[0x1E69DC110];
  v98 = __swift_allocate_boxed_opaque_existential_1((v84 + 72));
  v215(v98, v24, v97);
  v213(v84 + v60[10], 1, 1, v214);
  v227 = 0;
  v225 = 0u;
  v226 = 0u;
  v211(v24, v97);
  sub_1BA058FF0(&v225, v84 + 16, v210);
  *(v84 + v60[12]) = 0;
  *(v84 + v60[13]) = 0;
  strcpy(v84, "userInterface");
  *(v84 + 14) = -4864;
  *(v84 + 112) = 0;
  *(v84 + 120) = MEMORY[0x1E69E7CC0];
  *(v84 + 56) = 0;
  *(v84 + 64) = 0;
  v99 = (v84 + v60[11]);
  *v99 = 0;
  v99[1] = 0;
  sub_1BA059058(&v225, v209);

  v100 = v207 + 4 * v208;
  v101 = [v221 favoriteStatusRawValue];
  v197 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A4198();
  sub_1BA4A43B8();
  v102 = v206;
  v103 = [v206 preferredFontForTextStyle_];
  v104 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v104(&v225, 0);
  v105 = v219;
  v106 = [v219 secondaryLabelColor];
  v107 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v107(&v225, 0);

  sub_1BA4A41A8();
  v108 = [v102 preferredFontForTextStyle_];
  v109 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v109(&v225, 0);
  v110 = [v105 labelColor];
  v111 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v111(&v225, 0);
  v112 = v220;
  *(v100 + 96) = v220;
  *(v100 + 104) = MEMORY[0x1E69DC110];
  v113 = __swift_allocate_boxed_opaque_existential_1((v100 + 72));
  v215(v113, v24, v112);
  v213(v100 + v60[10], 1, 1, v214);
  v227 = 0;
  v225 = 0u;
  v226 = 0u;
  v211(v24, v112);
  sub_1BA058FF0(&v225, v100 + 16, v210);
  *(v100 + v60[12]) = 0;
  *(v100 + v60[13]) = 0;
  strcpy(v100, "favoriteStatus");
  *(v100 + 15) = -18;
  *(v100 + 112) = 0;
  *(v100 + 120) = MEMORY[0x1E69E7CC0];
  *(v100 + 56) = 0;
  *(v100 + 64) = 0;
  v114 = (v100 + v60[11]);
  *v114 = 0;
  v114[1] = 0;
  sub_1BA059058(&v225, v209);

  v115 = [v221 pinnedContentIdentifier];
  if (v115)
  {
    v116 = v115;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  v210 = 0x80000001BA4E5D80;
  v117 = v198;
  sub_1BA4A4198();
  v209 = 0xD000000000000017;
  sub_1BA4A43B8();
  v118 = [v102 preferredFontForTextStyle_];
  v119 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v119(&v225, 0);
  v120 = v219;
  v121 = [v219 secondaryLabelColor];
  v122 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v122(&v225, 0);
  v123 = v207 + 5 * v208;

  sub_1BA4A41A8();
  v124 = [v102 preferredFontForTextStyle_];
  v125 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v125(&v225, 0);
  v126 = [v120 labelColor];
  v127 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v127(&v225, 0);
  v128 = v220;
  *(&v226 + 1) = v220;
  v227 = MEMORY[0x1E69DC110];
  v129 = __swift_allocate_boxed_opaque_existential_1(&v225);
  v215(v129, v117, v128);
  v130 = v199;
  v213(v199, 1, 1, v214);
  v224 = 0;
  memset(v223, 0, sizeof(v223));
  v211(v117, v128);
  sub_1BA058FF0(v223, v123 + 16, sub_1B9F2F31C);
  *(v123 + v60[12]) = 0;
  *(v123 + v60[13]) = 0;
  v131 = v210;
  *v123 = v209;
  *(v123 + 8) = v131;
  sub_1B9F1134C(&v225, v123 + 72);
  *(v123 + 112) = 0;
  *(v123 + 120) = MEMORY[0x1E69E7CC0];
  sub_1B9F2F728(v130, v123 + v60[10]);
  *(v123 + 56) = 0;
  *(v123 + 64) = 0;
  v132 = (v123 + v60[11]);
  *v132 = 0;
  v132[1] = 0;
  sub_1BA059058(v223, sub_1B9F2F31C);

  v133 = v221;
  v134 = [v221 userData];
  if (v134)
  {
    v135 = v134;
    v136 = sub_1BA4A1608();
    v138 = v137;

    sub_1B9F2BB4C(v136, v138);
    v139 = [v133 userData];
    v140 = v201;
    v141 = v200;
    if (v139)
    {
      v142 = v139;
      v143 = sub_1BA4A1608();
      v145 = v144;
    }

    else
    {
      v143 = 0;
      v145 = 0xF000000000000000;
    }

    *&v225 = v143;
    *(&v225 + 1) = v145;
    sub_1B9F216C8(0, &unk_1EDC6E268, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    v147 = sub_1BA4A6808();
    v148 = swift_allocObject();
    *(v148 + 16) = v133;
    v149 = v133;
    v150 = v189;
    sub_1BA053D10(0x6174614472657375, 0xE800000000000000, v147, sub_1BA0590B8, v148, v189);

    v151 = v190;
    sub_1BA058FF0(v150, v190, type metadata accessor for ContentConfigurationItem);
    v146 = sub_1BA27FA78(1, 7, 1, v140);
    sub_1BA059058(v150, type metadata accessor for ContentConfigurationItem);
    v146[2] = 7;
    sub_1BA058CEC(v151, v146 + v141 + v188);
  }

  else
  {
    v146 = v201;
    v141 = v200;
  }

  v152 = [v133 actionHandlerUserData];
  if (v152)
  {
    v153 = v152;
    v154 = sub_1BA4A1608();
    v156 = v155;

    sub_1B9F2BB4C(v154, v156);
    v157 = [v133 actionHandlerUserData];
    if (v157)
    {
      v158 = v157;
      v159 = sub_1BA4A1608();
      v161 = v160;
    }

    else
    {
      v159 = 0;
      v161 = 0xF000000000000000;
    }

    *&v225 = v159;
    *(&v225 + 1) = v161;
    sub_1B9F216C8(0, &unk_1EDC6E268, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    v162 = sub_1BA4A6808();
    v163 = swift_allocObject();
    *(v163 + 16) = v133;
    v164 = v133;
    v165 = v191;
    sub_1BA053D10(0xD000000000000015, 0x80000001BA4E5DA0, v162, sub_1BA058FCC, v163, v191);

    v166 = v192;
    sub_1BA058FF0(v165, v192, type metadata accessor for ContentConfigurationItem);
    v168 = v146[2];
    v167 = v146[3];
    if (v168 >= v167 >> 1)
    {
      v146 = sub_1BA27FA78((v167 > 1), v168 + 1, 1, v146);
    }

    sub_1BA059058(v165, type metadata accessor for ContentConfigurationItem);
    v146[2] = v168 + 1;
    sub_1BA058CEC(v166, v146 + v141 + v168 * v208);
  }

  v169 = sub_1B9FE5788(v146);

  v170 = v202;
  sub_1BA4A1788();
  v171 = sub_1BA4A1748();
  v173 = v172;
  v174 = *(v203 + 8);
  v175 = v204;
  v174(v170, v204);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v177 = Array<A>.identifierToIndexDict()(v176);

  sub_1B9F216C8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_1BA4B5480;
  *(v178 + 32) = 0;
  *(v178 + 40) = 0;
  *(v178 + 48) = v169;
  *(v178 + 56) = v177;
  *(v178 + 64) = v171;
  *(v178 + 72) = v173;
  *&v225 = 0x3C53447961727241;
  *(&v225 + 1) = 0xE800000000000000;
  sub_1BA4A1788();
  v179 = sub_1BA4A1748();
  v181 = v180;
  v174(v170, v175);
  MEMORY[0x1BFAF1350](v179, v181);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v182 = v225;
  type metadata accessor for ArrayDataSource(0);
  swift_allocObject();
  v183 = sub_1B9F348D8(v178, v182, *(&v182 + 1));

  v184 = swift_allocObject();
  v184[2] = sub_1BA05459C;
  v184[3] = 0;
  v184[4] = v183;
  sub_1BA058DE4(0, &qword_1EBBEAB10, type metadata accessor for ArrayDataSource, &protocol witness table for ArrayDataSource, type metadata accessor for DataSourceWithLayout);
  v185 = swift_allocObject();
  *(v185 + 16) = v183;
  v186 = v183[6];
  *(v185 + 24) = v183[5];
  *(v185 + 32) = v186;
  *(v185 + 40) = 0;
  *(v185 + 48) = sub_1BA058F6C;
  *(v185 + 56) = v184;

  return v185;
}

uint64_t sub_1BA053D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a6;
  v65 = a5;
  v61 = a3;
  v10 = MEMORY[0x1E69E6720];
  sub_1B9F2F7BC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v62 = &v52 - v13;
  sub_1B9F2F7BC(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v56 = &v52 - v16;
  v17 = sub_1BA4A3FB8();
  v57 = *(v17 - 8);
  v58 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v54 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1BA4A3F18();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v20);
  v52 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A4428();
  v60 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4198();

  v63 = a1;
  v64 = a2;
  sub_1BA4A43B8();
  v26 = objc_opt_self();
  v27 = [v26 preferredFontForTextStyle_];
  v28 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v28(&v69, 0);
  v29 = objc_opt_self();
  v30 = [v29 secondaryLabelColor];
  v31 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v31(&v69, 0);

  sub_1BA4A41A8();
  v32 = [v26 preferredFontForTextStyle_];
  v33 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v33(&v69, 0);
  v34 = [v29 labelColor];
  v35 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v35(&v69, 0);
  v36 = v60;
  v70 = v22;
  v71 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
  v38 = *(v36 + 16);
  v61 = v22;
  v38(boxed_opaque_existential_1, v25, v22);
  if (v65)
  {
    sub_1B9F2F7BC(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1BA4B5480;
    v40 = v53;
    v41 = v52;
    v42 = v55;
    (*(v53 + 104))(v52, *MEMORY[0x1E69DBF28], v55);
    v43 = sub_1BA4A3F48();
    (*(*(v43 - 8) + 56))(v56, 1, 1, v43);
    v44 = v54;
    sub_1BA4A3FA8();
    sub_1BA4A3F78();
    (*(v57 + 8))(v44, v58);
    (*(v40 + 8))(v41, v42);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v45 = sub_1BA4A4168();
  v46 = v62;
  (*(*(v45 - 8) + 56))(v62, 1, 1, v45);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  if (v65)
  {
    v47 = v59;

    sub_1BA059058(&v66, sub_1B9F2F31C);
    *(&v67 + 1) = &type metadata for BasicCellSelectionHandler;
    v68 = &off_1F381BCC8;
    *&v66 = v65;
    *(&v66 + 1) = v47;
    LOBYTE(v67) = 2;
  }

  (*(v36 + 8))(v25, v61);
  sub_1BA058FF0(&v66, a7 + 16, sub_1B9F2F31C);
  v48 = type metadata accessor for ContentConfigurationItem(0);
  *(a7 + v48[12]) = 0;
  *(a7 + v48[13]) = 0;
  v49 = v64;
  *a7 = v63;
  *(a7 + 8) = v49;
  sub_1B9F1134C(&v69, a7 + 72);
  *(a7 + 112) = 0;
  *(a7 + 120) = v39;
  sub_1B9F2F728(v46, a7 + v48[10]);
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  v50 = (a7 + v48[11]);
  *v50 = 0;
  v50[1] = 0;

  return sub_1BA059058(&v66, sub_1B9F2F31C);
}

void sub_1BA0544B4(void *a1, id a2, SEL *a3)
{
  v4 = [a2 *a3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BA4A1608();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = type metadata accessor for InternalFeedItemDataPropertyViewController();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC18HealthExperienceUI42InternalFeedItemDataPropertyViewController_data];
  *v11 = v6;
  v11[1] = v8;
  v15.receiver = v10;
  v15.super_class = v9;
  v12 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  v13 = [a1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];
  }
}

BOOL sub_1BA0545C0(uint64_t a1, uint64_t a2)
{
  sub_1BA058FF0(a1, v8, sub_1BA058C84);
  sub_1BA4A7D28();
  sub_1B9FDC768(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_1BA058FF0(a2, v8, sub_1BA058C84);
  v3 = sub_1BA4A7D28();
  v5 = v4;
  sub_1B9FDC768(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v8[0] = v3;
  v8[1] = v5;
  sub_1B9F252FC();
  v6 = sub_1BA4A7B78();

  return v6 == -1;
}

uint64_t sub_1BA0546BC()
{
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162FA4(v0, v1);
}

void *sub_1BA054708(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_project_value_buffer(v7, a4);
  return ListLayoutConfiguration.layout(for:)(a2);
}

void sub_1BA0547C0(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for InternalFeedItemDetailViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v2 = sub_1BA4A6758();
  [v1 setTitle_];

  v3 = [v1 navigationItem];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v1 action:sel_didTapDone_];
  [v3 setRightBarButtonItem_];

  sub_1B9F23FB0();
  v5 = [v1 collectionView];
  if (v5)
  {
    v6 = v5;
    CompoundSectionedDataSource.registerCells(for:)(v5);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA054A18(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InternalFeedItemDetailViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA054A80(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BA442ED0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1BA055134(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BA054AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  result = a4(a1, a2, a3);
  if (!result)
  {
    sub_1BA4A7DF8();

    sub_1BA058DE4(0, &qword_1EDC68D60, type metadata accessor for SharingEntryProfileInformationDataSource, &protocol witness table for MutableArrayDataSource, type metadata accessor for MappedDataSource);

    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    sub_1B9FF806C();
    swift_allocError();
    *v8 = 0xD000000000000065;
    *(v8 + 8) = 0x80000001BA4E5F60;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA054C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, void *a6)
{
  result = a4(a1, a2, a3);
  if (!result)
  {
    sub_1BA4A7DF8();

    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    sub_1B9FF806C();
    swift_allocError();
    *v8 = 0xD000000000000083;
    *(v8 + 8) = 0x80000001BA4E5ED0;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA054D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, void *a6)
{
  result = a4(a1, a2, a3);
  if (!result)
  {
    sub_1BA4A7DF8();

    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    sub_1B9FF806C();
    swift_allocError();
    *v8 = 0xD000000000000086;
    *(v8 + 8) = 0x80000001BA4E5FD0;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA054E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, void *a6)
{
  result = a4(a1, a2, a3);
  if (!result)
  {
    sub_1BA4A7DF8();

    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    sub_1B9FF806C();
    swift_allocError();
    *v8 = 0xD00000000000004BLL;
    *(v8 + 8) = 0x80000001BA4E5E80;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA054F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  result = a4(a1, a2, a3);
  if (!result)
  {
    sub_1BA4A7DF8();

    type metadata accessor for ArrayDataSource(0);

    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    sub_1B9FF806C();
    swift_allocError();
    *v8 = 0xD00000000000003ALL;
    *(v8 + 8) = 0x80000001BA4E5DC0;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA055028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, void *a6)
{
  result = a4(a1, a2, a3);
  if (!result)
  {
    sub_1BA4A7DF8();

    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    sub_1B9FF806C();
    swift_allocError();
    *v8 = 0xD00000000000005ALL;
    *(v8 + 8) = 0x80000001BA4E5CA0;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA055134(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BA4A82B8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BA058C84();
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BA05544C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BA055230(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BA055230(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 72 * a3;
    v6 = result - a3;
LABEL_5:
    v29 = a3;
    v19 = v6;
    v20 = v5;
    while (1)
    {
      sub_1BA058FF0(v5, &v24, sub_1BA058C84);
      v7 = (v5 - 72);
      sub_1BA058FF0(v5 - 72, v23, sub_1BA058C84);
      sub_1BA058FF0(&v24, v21, sub_1BA058C84);
      sub_1BA4A7D28();
      sub_1B9FDC768(v21);
      __swift_destroy_boxed_opaque_existential_1(v22);
      sub_1BA058FF0(v23, v21, sub_1BA058C84);
      v8 = sub_1BA4A7D28();
      v10 = v9;
      sub_1B9FDC768(v21);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v21[0] = v8;
      v21[1] = v10;
      sub_1B9F252FC();
      v11 = sub_1BA4A7B78();

      sub_1BA059058(v23, sub_1BA058C84);
      result = sub_1BA059058(&v24, sub_1BA058C84);
      if (v11 != -1)
      {
LABEL_4:
        a3 = v29 + 1;
        v5 = v20 + 72;
        v6 = v19 - 1;
        if (v29 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v25 = *(v5 + 16);
      v26 = *(v5 + 32);
      v27 = *(v5 + 48);
      v28 = *(v5 + 64);
      v24 = *v5;
      v12 = *(v5 - 24);
      *(v5 + 32) = *(v5 - 40);
      *(v5 + 48) = v12;
      *(v5 + 64) = *(v5 - 8);
      v13 = *(v5 - 56);
      *v5 = *v7;
      *(v5 + 16) = v13;
      *v7 = v24;
      v14 = v25;
      v15 = v26;
      v16 = v27;
      *(v5 - 8) = v28;
      *(v5 - 40) = v15;
      *(v5 - 24) = v16;
      *(v5 - 56) = v14;
      v5 -= 72;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA05544C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v103 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v9 = *v103;
    if (!*v103)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_93;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    if ((v9 + 1) >= v7)
    {
      v20 = v9 + 1;
    }

    else
    {
      v108 = v7;
      v12 = *v6;
      sub_1BA058FF0(*v6 + 72 * (v9 + 1), &v114, sub_1BA058C84);
      sub_1BA058FF0(v12 + 72 * v9, v113, sub_1BA058C84);
      v106 = sub_1BA0545C0(&v114, v113);
      if (v5)
      {
        sub_1BA059058(v113, sub_1BA058C84);
        sub_1BA059058(&v114, sub_1BA058C84);
      }

      sub_1BA059058(v113, sub_1BA058C84);
      result = sub_1BA059058(&v114, sub_1BA058C84);
      v13 = v9 + 2;
      v100 = v9;
      v14 = 72 * v9;
      v15 = v12 + 72 * v9 + 144;
      while (v108 != v13)
      {
        sub_1BA058FF0(v15, &v114, sub_1BA058C84);
        sub_1BA058FF0(v15 - 72, v113, sub_1BA058C84);
        sub_1BA058FF0(&v114, &v110, sub_1BA058C84);
        sub_1BA4A7D28();
        sub_1B9FDC768(&v110);
        __swift_destroy_boxed_opaque_existential_1(v112);
        sub_1BA058FF0(v113, &v110, sub_1BA058C84);
        v16 = sub_1BA4A7D28();
        v18 = v17;
        sub_1B9FDC768(&v110);
        __swift_destroy_boxed_opaque_existential_1(v112);
        v110 = v16;
        v111 = v18;
        sub_1B9F252FC();
        v19 = sub_1BA4A7B78();

        v9 = sub_1BA058C84;
        sub_1BA059058(v113, sub_1BA058C84);
        result = sub_1BA059058(&v114, sub_1BA058C84);
        ++v13;
        v15 += 72;
        if (((v106 ^ (v19 != -1)) & 1) == 0)
        {
          v20 = v13 - 1;
          v8 = a4;
          goto LABEL_12;
        }
      }

      v8 = a4;
      v20 = v108;
LABEL_12:
      v6 = a3;
      v11 = v100;
      if (v106)
      {
        if (v20 < v100)
        {
          goto LABEL_125;
        }

        if (v100 < v20)
        {
          v98 = v10;
          v21 = v20;
          v22 = 72 * v20 - 72;
          v9 = v20;
          v23 = v100;
          do
          {
            if (v23 != --v21)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v25 = v24 + v22;
              v115 = *(v24 + v14 + 16);
              v116 = *(v24 + v14 + 32);
              v117 = *(v24 + v14 + 48);
              v118 = *(v24 + v14 + 64);
              v114 = *(v24 + v14);
              result = memmove((v24 + v14), (v24 + v22), 0x48uLL);
              *(v25 + 16) = v115;
              *(v25 + 32) = v116;
              *(v25 + 48) = v117;
              *(v25 + 64) = v118;
              *v25 = v114;
            }

            ++v23;
            v22 -= 72;
            v14 += 72;
          }

          while (v23 < v21);
          v10 = v98;
          v8 = a4;
          v20 = v9;
        }
      }
    }

    v26 = v6[1];
    if (v20 < v26)
    {
      if (__OFSUB__(v20, v11))
      {
        goto LABEL_122;
      }

      if (v20 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_123;
        }

        if (&v11[v8] >= v26)
        {
          v27 = v6[1];
        }

        else
        {
          v27 = &v11[v8];
        }

        if (v27 < v11)
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          result = sub_1BA442D80(v10);
          v10 = result;
LABEL_93:
          v119 = v10;
          v91 = *(v10 + 16);
          if (v91 >= 2)
          {
            while (1)
            {
              v92 = *v6;
              if (!*v6)
              {
                goto LABEL_130;
              }

              v6 = (v91 - 1);
              v93 = *(v10 + 16 * v91);
              v94 = v10;
              v95 = *(v10 + 16 * (v91 - 1) + 32);
              v10 = *(v10 + 16 * (v91 - 1) + 40);
              sub_1BA055D8C((v92 + 72 * v93), (v92 + 72 * v95), (v92 + 72 * v10), v9);
              if (v5)
              {
              }

              if (v10 < v93)
              {
                goto LABEL_119;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = sub_1BA442D80(v94);
              }

              if (v91 - 2 >= *(v94 + 2))
              {
                goto LABEL_120;
              }

              v96 = &v94[16 * v91];
              *v96 = v93;
              *(v96 + 1) = v10;
              v119 = v94;
              result = sub_1BA442CF4(v6);
              v10 = v119;
              v91 = *(v119 + 16);
              v6 = a3;
              if (v91 <= 1)
              {
              }
            }
          }
        }

        if (v20 != v27)
        {
          break;
        }
      }
    }

    v28 = v20;
    if (v20 < v11)
    {
      goto LABEL_121;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BA27F470(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v30 = *(v10 + 16);
    v29 = *(v10 + 24);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_1BA27F470((v29 > 1), v30 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v31;
    v32 = v10 + 16 * v30;
    *(v32 + 32) = v11;
    *(v32 + 40) = v28;
    v33 = *v103;
    if (!*v103)
    {
      goto LABEL_131;
    }

    v9 = v28;
    if (v30)
    {
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v10 + 32);
          v36 = *(v10 + 40);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_50:
          if (v38)
          {
            goto LABEL_110;
          }

          v51 = (v10 + 16 * v31);
          v53 = *v51;
          v52 = v51[1];
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_113;
          }

          v57 = (v10 + 32 + 16 * v34);
          v59 = *v57;
          v58 = v57[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_117;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v61 = (v10 + 16 * v31);
        v63 = *v61;
        v62 = v61[1];
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_64:
        if (v56)
        {
          goto LABEL_112;
        }

        v64 = v10 + 16 * v34;
        v66 = *(v64 + 32);
        v65 = *(v64 + 40);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_115;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_71:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
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
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_128;
        }

        v73 = *(v10 + 32 + 16 * v72);
        v74 = *(v10 + 32 + 16 * v34 + 8);
        sub_1BA055D8C((*v6 + 72 * v73), (*v6 + 72 * *(v10 + 32 + 16 * v34)), (*v6 + 72 * v74), v33);
        if (v5)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BA442D80(v10);
        }

        if (v72 >= *(v10 + 16))
        {
          goto LABEL_107;
        }

        v75 = v10 + 16 * v72;
        *(v75 + 32) = v73;
        *(v75 + 40) = v74;
        v119 = v10;
        result = sub_1BA442CF4(v34);
        v10 = v119;
        v31 = *(v119 + 16);
        if (v31 <= 1)
        {
          goto LABEL_3;
        }
      }

      v39 = v10 + 32 + 16 * v31;
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_108;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_109;
      }

      v46 = (v10 + 16 * v31);
      v48 = *v46;
      v47 = v46[1];
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_111;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_114;
      }

      if (v50 >= v42)
      {
        v68 = (v10 + 32 + 16 * v34);
        v70 = *v68;
        v69 = v68[1];
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_118;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v6[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_91;
    }
  }

  v97 = v5;
  v99 = v10;
  v76 = *v6;
  v77 = *v6 + 72 * v20;
  v101 = v11;
  v109 = v20;
  v78 = v11 - v20;
  v105 = v27;
LABEL_82:
  v79 = v78;
  v107 = v77;
  while (1)
  {
    sub_1BA058FF0(v77, &v114, sub_1BA058C84);
    v80 = (v77 - 72);
    sub_1BA058FF0(v77 - 72, v113, sub_1BA058C84);
    sub_1BA058FF0(&v114, &v110, sub_1BA058C84);
    sub_1BA4A7D28();
    sub_1B9FDC768(&v110);
    __swift_destroy_boxed_opaque_existential_1(v112);
    sub_1BA058FF0(v113, &v110, sub_1BA058C84);
    v81 = sub_1BA4A7D28();
    v83 = v82;
    sub_1B9FDC768(&v110);
    __swift_destroy_boxed_opaque_existential_1(v112);
    v110 = v81;
    v111 = v83;
    sub_1B9F252FC();
    v84 = sub_1BA4A7B78();

    v9 = sub_1BA058C84;
    sub_1BA059058(v113, sub_1BA058C84);
    result = sub_1BA059058(&v114, sub_1BA058C84);
    if (v84 != -1)
    {
LABEL_81:
      v77 = v107 + 72;
      --v78;
      v28 = v105;
      if (++v109 != v105)
      {
        goto LABEL_82;
      }

      v5 = v97;
      v10 = v99;
      v6 = a3;
      v11 = v101;
      if (v105 < v101)
      {
        goto LABEL_121;
      }

      goto LABEL_31;
    }

    if (!v76)
    {
      break;
    }

    v115 = *(v77 + 16);
    v116 = *(v77 + 32);
    v117 = *(v77 + 48);
    v118 = *(v77 + 64);
    v114 = *v77;
    v85 = *(v77 - 24);
    *(v77 + 32) = *(v77 - 40);
    *(v77 + 48) = v85;
    *(v77 + 64) = *(v77 - 8);
    v86 = *(v77 - 56);
    *v77 = *v80;
    *(v77 + 16) = v86;
    *v80 = v114;
    v87 = v115;
    v88 = v116;
    v89 = v117;
    *(v77 - 8) = v118;
    *(v77 - 40) = v88;
    *(v77 - 24) = v89;
    *(v77 - 56) = v87;
    v77 -= 72;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1BA055D8C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[72 * v11] <= a4)
    {
      memmove(a4, __src, 72 * v11);
      v6 = __src;
    }

    v44 = &v4[72 * v11];
    if (v10 >= 72 && v6 > v7)
    {
      v35 = v7;
      v38 = v4;
      do
      {
        v36 = v6;
        v22 = (v6 - 72);
        v23 = v44 - 72;
        v5 -= 72;
        __srca = v6 - 72;
        while (1)
        {
          v26 = v23 + 72;
          v27 = v5 + 72;
          sub_1BA058FF0(v23, v43, sub_1BA058C84);
          sub_1BA058FF0(v22, v42, sub_1BA058C84);
          sub_1BA058FF0(v43, &v39, sub_1BA058C84);
          sub_1BA4A7D28();
          sub_1B9FDC768(&v39);
          __swift_destroy_boxed_opaque_existential_1(v41);
          sub_1BA058FF0(v42, &v39, sub_1BA058C84);
          v28 = sub_1BA4A7D28();
          v30 = v29;
          sub_1B9FDC768(&v39);
          __swift_destroy_boxed_opaque_existential_1(v41);
          v39 = v28;
          v40 = v30;
          sub_1B9F252FC();
          v31 = sub_1BA4A7B78();

          sub_1BA059058(v42, sub_1BA058C84);
          sub_1BA059058(v43, sub_1BA058C84);
          if (v31 == -1)
          {
            break;
          }

          if (v27 != v26)
          {
            memmove(v5, v23, 0x48uLL);
          }

          v24 = v23 - 72;
          v5 -= 72;
          v22 = __srca;
          v25 = v23 > v38;
          v23 -= 72;
          if (!v25)
          {
            v44 = v24 + 72;
            v32 = v36;
LABEL_36:
            v4 = v38;
            goto LABEL_37;
          }
        }

        v32 = __srca;
        if (v27 != v36)
        {
          memmove(v5, __srca, 0x48uLL);
        }

        v44 = v23 + 72;
        if (v26 <= v38)
        {
          break;
        }

        v6 = __srca;
      }

      while (__srca > v35);
      v44 = v23 + 72;
      goto LABEL_36;
    }

    v32 = v6;
  }

  else
  {
    if (a4 != __dst || &__dst[72 * v9] <= a4)
    {
      memmove(a4, __dst, 72 * v9);
      v6 = __src;
    }

    v44 = &v4[72 * v9];
    if (v8 >= 72 && v6 < v5)
    {
      while (1)
      {
        v13 = v6;
        sub_1BA058FF0(v6, v43, sub_1BA058C84);
        sub_1BA058FF0(v4, v42, sub_1BA058C84);
        sub_1BA058FF0(v43, &v39, sub_1BA058C84);
        sub_1BA4A7D28();
        v14 = v4;
        sub_1B9FDC768(&v39);
        __swift_destroy_boxed_opaque_existential_1(v41);
        sub_1BA058FF0(v42, &v39, sub_1BA058C84);
        v15 = sub_1BA4A7D28();
        v17 = v16;
        sub_1B9FDC768(&v39);
        __swift_destroy_boxed_opaque_existential_1(v41);
        v39 = v15;
        v40 = v17;
        sub_1B9F252FC();
        v18 = sub_1BA4A7B78();

        sub_1BA059058(v42, sub_1BA058C84);
        sub_1BA059058(v43, sub_1BA058C84);
        if (v18 != -1)
        {
          break;
        }

        v19 = v13;
        v20 = v7 == v13;
        v13 += 72;
        if (!v20)
        {
          goto LABEL_9;
        }

LABEL_10:
        v7 += 72;
        if (v4 < v44)
        {
          v6 = v13;
          if (v13 < v5)
          {
            continue;
          }
        }

        v32 = v7;
        goto LABEL_37;
      }

      v19 = v4;
      v4 += 72;
      if (v7 == v14)
      {
        goto LABEL_10;
      }

LABEL_9:
      memmove(v7, v19, 0x48uLL);
      goto LABEL_10;
    }

    v32 = v7;
  }

LABEL_37:
  v33 = (v44 - v4) / 72;
  if (v32 != v4 || v32 >= &v4[72 * v33])
  {
    memmove(v32, v4, 72 * v33);
  }

  return 1;
}

uint64_t sub_1BA0562C0(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1B9F2F7BC(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = sub_1BA4A1728();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA058EEC(a1, v6, &qword_1EDC6E440, v2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BA058E7C(v6, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    return 0x3E6C696E3CLL;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v13 = objc_opt_self();
    v14 = sub_1BA4A16B8();
    v15 = [v13 localizedStringFromDate:v14 dateStyle:3 timeStyle:3];

    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    (*(v8 + 8))(v11, v7);
    return v16;
  }
}

uint64_t sub_1BA0564F8(void *a1)
{
  v203 = sub_1BA4A1798();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203, v2);
  v201 = &v189 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for ContentConfigurationItem(0);
  v4 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226, v5);
  v208 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1BA4A0FA8();
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192, v7);
  v190 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_1BA4A4428();
  v227 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225, v9);
  v11 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E6969530];
  v13 = MEMORY[0x1E69E6720];
  sub_1B9F2F7BC(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v197 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v224 = &v189 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v189 - v22;
  v211 = MEMORY[0x1E69A3D00];
  sub_1B9F2F7BC(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00], v13);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v199 = &v189 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v198 = &v189 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v196 = &v189 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v195 = &v189 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v207 = &v189 - v38;
  sub_1BA4A2788();
  sub_1B9F2F7BC(0, &qword_1EBBEAB08, type metadata accessor for ContentConfigurationItem, MEMORY[0x1E69E6F90]);
  v39 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v223 = *(v4 + 72);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BA4B9A90;
  v200 = v40;
  v41 = v40 + v39;
  v213 = a1;
  v42 = [a1 dateSubmitted];
  sub_1BA4A16F8();

  v43 = sub_1BA4A1728();
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v206 = v43;
  v205 = v45;
  v204 = v44 + 56;
  (v45)(v23, 0, 1);
  v220 = sub_1BA0562C0(v23);
  sub_1BA058E7C(v23, &qword_1EDC6E440, v12);
  sub_1BA4A4198();
  sub_1BA4A43B8();
  v46 = objc_opt_self();
  v221 = *MEMORY[0x1E69DDD80];
  v47 = [v46 preferredFontForTextStyle_];
  v48 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v48(&v229, 0);
  v49 = objc_opt_self();
  v50 = [v49 secondaryLabelColor];
  v51 = sub_1BA4A4238();
  v212 = v46;
  sub_1BA4A41F8();
  v51(&v229, 0);

  sub_1BA4A41A8();
  v220 = *MEMORY[0x1E69DDCF8];
  v52 = [v46 preferredFontForTextStyle_];
  v53 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v53(&v229, 0);
  v222 = v49;
  v54 = [v49 labelColor];
  v55 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v56 = v226;
  v55(&v229, 0);
  v57 = v195;
  v58 = MEMORY[0x1E69DC110];
  v59 = v225;
  *(v41 + 96) = v225;
  *(v41 + 104) = v58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v41 + 72));
  v61 = v227;
  v62 = *(v227 + 16);
  v63 = v59;
  v219 = v227 + 16;
  v218 = v62;
  v62(boxed_opaque_existential_1, v11, v59);
  v64 = v56[10];
  v65 = sub_1BA4A4168();
  v66 = *(v65 - 8);
  v67 = *(v66 + 56);
  v217 = v65;
  v216 = v67;
  v215 = v66 + 56;
  (v67)(v41 + v64, 1, 1);
  v68 = *(v61 + 8);
  v231 = 0;
  v229 = 0u;
  v230 = 0u;
  v69 = v63;
  v70 = v41;
  v227 = v61 + 8;
  v214 = v68;
  v68(v11, v69);
  sub_1BA058FF0(&v229, v41 + 16, sub_1B9F2F31C);
  *(v41 + v56[12]) = 0;
  *(v41 + v56[13]) = 0;
  strcpy(v41, "dateSubmitted");
  *(v41 + 14) = -4864;
  *(v41 + 112) = 0;
  *(v41 + 120) = MEMORY[0x1E69E7CC0];
  *(v41 + 56) = 0;
  *(v41 + 64) = 0;
  v71 = (v41 + v56[11]);
  *v71 = 0;
  v71[1] = 0;
  sub_1BA059058(&v229, sub_1B9F2F31C);

  sub_1BA058EEC(v207, v57, &qword_1EDC6E220, v211);
  v72 = sub_1BA4A22F8();
  v73 = *(v72 - 1);
  v74 = *(v73 + 48);
  v210 = v73 + 48;
  v209 = v74;
  v75 = v74(v57, 1, v72);
  v211 = v72;
  if (v75 == 1)
  {
    sub_1BA058E7C(v57, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
    v76 = 1;
    v77 = v224;
  }

  else
  {
    v78 = v190;
    sub_1BA4A22E8();
    (*(v73 + 8))(v57, v72);
    v79 = v224;
    sub_1BA4A0F88();
    (*(v191 + 8))(v78, v192);
    v76 = 0;
    v77 = v79;
  }

  v205(v77, v76, 1, v206);
  v80 = &v70[v223];
  v195 = 0x80000001BA4E5D00;
  v193 = sub_1BA0562C0(v77);
  sub_1BA058E7C(v77, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  sub_1BA4A4198();
  v194 = 0xD000000000000011;
  sub_1BA4A43B8();
  v81 = v212;
  v82 = [v212 preferredFontForTextStyle_];
  v224 = v70;
  v83 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v83(&v229, 0);
  v84 = v222;
  v85 = [v222 secondaryLabelColor];
  v86 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v86(&v229, 0);
  v87 = v81;

  sub_1BA4A41A8();
  v88 = [v81 preferredFontForTextStyle_];
  v89 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v89(&v229, 0);
  v90 = [v84 labelColor];
  v91 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v91(&v229, 0);
  v92 = v225;
  *(v80 + 12) = v225;
  *(v80 + 13) = MEMORY[0x1E69DC110];
  v93 = __swift_allocate_boxed_opaque_existential_1(v80 + 9);
  v218(v93, v11, v92);
  v94 = v226;
  v216(&v80[*(v226 + 40)], 1, 1, v217);
  v231 = 0;
  v229 = 0u;
  v230 = 0u;
  v214(v11, v92);
  sub_1BA058FF0(&v229, (v80 + 16), sub_1B9F2F31C);
  *&v80[v94[12]] = 0;
  *&v80[v94[13]] = 0;
  v95 = v195;
  *v80 = v194;
  *(v80 + 1) = v95;
  v80[112] = 0;
  *(v80 + 15) = MEMORY[0x1E69E7CC0];
  *(v80 + 7) = 0;
  *(v80 + 8) = 0;
  v96 = &v80[v94[11]];
  v97 = 1;
  *v96 = 0;
  *(v96 + 1) = 0;
  sub_1BA059058(&v229, sub_1B9F2F31C);

  v98 = v196;
  sub_1BA4A2788();
  v99 = v209(v98, 1, v211);
  v100 = v197;
  if (!v99)
  {
    v101 = v190;
    sub_1BA4A22E8();
    sub_1BA4A0F58();
    (*(v191 + 8))(v101, v192);
    v97 = 0;
  }

  sub_1BA058E7C(v98, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  v205(v100, v97, 1, v206);
  v102 = &v224[2 * v223];
  v206 = sub_1BA0562C0(v100);
  v205 = v103;
  sub_1BA058E7C(v100, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  sub_1BA4A4198();
  sub_1BA4A43B8();
  v104 = [v87 preferredFontForTextStyle_];
  v105 = v87;
  v106 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v106(&v229, 0);
  v107 = v222;
  v108 = [v222 secondaryLabelColor];
  v109 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v109(&v229, 0);

  sub_1BA4A41A8();
  v110 = [v105 preferredFontForTextStyle_];
  v111 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v111(&v229, 0);
  v112 = [v107 labelColor];
  v113 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v113(&v229, 0);
  *(v102 + 12) = v92;
  *(v102 + 13) = MEMORY[0x1E69DC110];
  v114 = __swift_allocate_boxed_opaque_existential_1(v102 + 9);
  v218(v114, v11, v92);
  v216(&v102[v94[10]], 1, 1, v217);
  v231 = 0;
  v229 = 0u;
  v230 = 0u;
  v214(v11, v92);
  sub_1BA058FF0(&v229, (v102 + 16), sub_1B9F2F31C);
  *&v102[v94[12]] = 0;
  *&v102[v94[13]] = 0;
  *v102 = 0x746E6176656C6572;
  *(v102 + 1) = 0xEF65746144646E45;
  v102[112] = 0;
  *(v102 + 15) = MEMORY[0x1E69E7CC0];
  *(v102 + 7) = 0;
  *(v102 + 8) = 0;
  v115 = &v102[v94[11]];
  *v115 = 0;
  *(v115 + 1) = 0;
  sub_1BA059058(&v229, sub_1B9F2F31C);

  v116 = v198;
  sub_1BA4A2788();
  if (v209(v116, 1, v211))
  {
    sub_1BA058E7C(v116, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
    v117 = v223;
    v118 = v212;
    v119 = v221;
  }

  else
  {
    sub_1BA4A22C8();
    v121 = v120;
    sub_1BA058E7C(v116, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
    if (qword_1EBBE8290 != -1)
    {
      swift_once();
    }

    v122 = [qword_1EBBEAAC0 stringFromTimeInterval_];
    v117 = v223;
    v118 = v212;
    v119 = v221;
    if (v122)
    {
      v123 = v122;
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }
  }

  v124 = &v224[3 * v117];
  v206 = 0x80000001BA4E5D20;
  sub_1BA4A4198();
  sub_1BA4A43B8();
  v125 = [v118 preferredFontForTextStyle_];
  v126 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v126(&v229, 0);
  v127 = v222;
  v128 = [v222 secondaryLabelColor];
  v129 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v129(&v229, 0);
  v130 = v212;

  sub_1BA4A41A8();
  v131 = [v130 preferredFontForTextStyle_];
  v132 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v132(&v229, 0);
  v133 = [v127 labelColor];
  v134 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v134(&v229, 0);
  v135 = v225;
  *(v124 + 12) = v225;
  *(v124 + 13) = MEMORY[0x1E69DC110];
  v136 = __swift_allocate_boxed_opaque_existential_1(v124 + 9);
  v218(v136, v11, v135);
  v137 = v226;
  v216(&v124[*(v226 + 40)], 1, 1, v217);
  v231 = 0;
  v229 = 0u;
  v230 = 0u;
  v214(v11, v135);
  sub_1BA058FF0(&v229, (v124 + 16), sub_1B9F2F31C);
  *&v124[v137[12]] = 0;
  *&v124[v137[13]] = 0;
  v138 = v206;
  *v124 = 0xD000000000000012;
  *(v124 + 1) = v138;
  v124[112] = 0;
  *(v124 + 15) = MEMORY[0x1E69E7CC0];
  *(v124 + 7) = 0;
  *(v124 + 8) = 0;
  v139 = &v124[v137[11]];
  *v139 = 0;
  *(v139 + 1) = 0;
  sub_1BA059058(&v229, sub_1B9F2F31C);

  v140 = v199;
  sub_1BA4A2788();
  if (v209(v140, 1, v211))
  {
    sub_1BA058E7C(v140, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
    v141 = v223;
    v142 = v221;
    v143 = 0x3E6C696E3CLL;
  }

  else
  {
    sub_1BA4A22D8();
    v145 = v144;
    sub_1BA058E7C(v140, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
    if (qword_1EBBE8290 != -1)
    {
      swift_once();
    }

    v146 = [qword_1EBBEAAC0 stringFromTimeInterval_];
    v141 = v223;
    v142 = v221;
    if (v146)
    {
      v147 = v146;
      v213 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      goto LABEL_19;
    }

    v143 = 0xD000000000000012;
  }

  v213 = v143;
LABEL_19:
  v148 = &v224[4 * v141];
  v223 = 0x80000001BA4E5D40;
  sub_1BA4A4198();
  v221 = 0xD000000000000014;
  sub_1BA4A43B8();
  v149 = [v130 preferredFontForTextStyle_];
  v150 = v130;
  v151 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v151(&v229, 0);
  v152 = v222;
  v153 = [v222 secondaryLabelColor];
  v154 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v154(&v229, 0);

  sub_1BA4A41A8();
  v155 = [v150 preferredFontForTextStyle_];
  v156 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v156(&v229, 0);
  v157 = [v152 labelColor];
  v158 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v158(&v229, 0);
  v159 = v225;
  *(v148 + 12) = v225;
  *(v148 + 13) = MEMORY[0x1E69DC110];
  v160 = __swift_allocate_boxed_opaque_existential_1(v148 + 9);
  v218(v160, v11, v159);
  v161 = v226;
  v216(&v148[*(v226 + 40)], 1, 1, v217);
  v231 = 0;
  v229 = 0u;
  v230 = 0u;
  v214(v11, v159);
  sub_1BA058FF0(&v229, (v148 + 16), sub_1B9F2F31C);
  *&v148[v161[12]] = 0;
  *&v148[v161[13]] = 0;
  v162 = v223;
  *v148 = v221;
  *(v148 + 1) = v162;
  v148[112] = 0;
  v163 = MEMORY[0x1E69E7CC0];
  *(v148 + 15) = MEMORY[0x1E69E7CC0];
  *(v148 + 7) = 0;
  *(v148 + 8) = 0;
  v164 = &v148[v161[11]];
  *v164 = 0;
  *(v164 + 1) = 0;
  sub_1BA059058(&v229, sub_1B9F2F31C);

  static ContentConfigurationItem.makeListHeaderConfiguration(text:automationIdentifier:)(0x7365746144, 0xE500000000000000, 0, 0, v208);
  v165 = sub_1B9FE5788(v200);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v166 = v201;
  sub_1BA4A1788();
  v167 = sub_1BA4A1748();
  v169 = v168;
  v170 = *(v202 + 8);
  v171 = v203;
  v170(v166, v203);
  sub_1B9F1C5F0(v163);

  v173 = Array<A>.identifierToIndexDict()(v172);

  sub_1B9F216C8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_1BA4B5480;
  *(v174 + 32) = 0;
  *(v174 + 40) = 0;
  *(v174 + 48) = v165;
  *(v174 + 56) = v173;
  *(v174 + 64) = v167;
  *(v174 + 72) = v169;
  *&v229 = 0x3C53447961727241;
  *(&v229 + 1) = 0xE800000000000000;
  sub_1BA4A1788();
  v175 = sub_1BA4A1748();
  v177 = v176;
  v170(v166, v171);
  MEMORY[0x1BFAF1350](v175, v177);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v178 = v229;
  type metadata accessor for ArrayDataSource(0);
  swift_allocObject();
  v179 = sub_1B9F348D8(v174, v178, *(&v178 + 1));

  *(&v230 + 1) = v161;
  v231 = sub_1BA058D50();
  v180 = __swift_allocate_boxed_opaque_existential_1(&v229);
  sub_1BA058CEC(v208, v180);
  sub_1BA058E7C(v207, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  sub_1B9F0A534(&v229, &v228);
  v181 = swift_allocObject();
  sub_1B9F1134C(&v228, v181 + 16);
  sub_1BA001A4C(0);
  v182 = swift_allocObject();
  v182[4] = v179;
  v182[5] = sub_1BA0590DC;
  v182[6] = v181;
  v184 = v179[5];
  v183 = v179[6];
  v182[2] = v184;
  v182[3] = v183;

  __swift_destroy_boxed_opaque_existential_1(&v229);
  sub_1BA058DA8(0);
  v185 = swift_allocObject();
  v185[4] = v182;
  v185[5] = sub_1BA0590E0;
  v185[6] = 0;
  v185[2] = v184;
  v185[3] = v183;
  v186 = swift_allocObject();
  v186[2] = sub_1BA0590E4;
  v186[3] = 0;
  v186[4] = v185;
  sub_1BA058DE4(0, &qword_1EBBEAAF8, sub_1BA058DA8, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
  v187 = swift_allocObject();
  *(v187 + 16) = v185;
  *(v187 + 24) = v184;
  *(v187 + 32) = v183;
  *(v187 + 40) = 0;
  *(v187 + 48) = sub_1BA0590E8;
  *(v187 + 56) = v186;
  swift_bridgeObjectRetain_n();

  return v187;
}