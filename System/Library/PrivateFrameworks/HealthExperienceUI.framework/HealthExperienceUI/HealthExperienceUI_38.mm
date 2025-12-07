uint64_t sub_1BA308C88(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 40))(a1, v9);
  a2(v11);
  return sub_1BA30A8C0(v11, type metadata accessor for SummarySharingSelectableDataTypeItem);
}

char *sub_1BA308D5C(unint64_t a1, uint64_t a2)
{
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A27B8();
  v42 = MEMORY[0x1BFAED110]();
  v7 = MEMORY[0x1E69E6F90];
  sub_1BA30A78C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5470;
  sub_1BA30A728(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v9 = sub_1BA4A1C68();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v43 = xmmword_1BA4B5480;
  *(v12 + 16) = xmmword_1BA4B5480;
  v13 = v12 + v11;
  v14 = a1;
  (*(v10 + 104))(v13, *MEMORY[0x1E69A3B68], v9);
  sub_1BA4A21D8();
  v15 = sub_1BA4A0FA8();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_1BA30A78C(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], v7);
  v16 = swift_allocObject();
  *(v16 + 16) = v43;
  *(v16 + 32) = sub_1BA4A1D78();
  v17 = sub_1BA4A25F8();

  sub_1BA30A8C0(v6, sub_1BA170230);
  *(v8 + 32) = v17;
  v45 = v8;

  sub_1B9F33948(v18);
  if (!a1)
  {
LABEL_16:
    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    v38 = sub_1BA4A6AE8();

    v39 = [objc_opt_self() andPredicateWithSubpredicates_];

    v40 = v42;
    [v42 setPredicate_];

    return v40;
  }

  if (a1 >> 62)
  {
    v19 = sub_1BA4A7CC8();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x1E69E7CC0];
  if (!v19)
  {
LABEL_13:
    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    sub_1BA309A30(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BA4B5460;
    v36 = MEMORY[0x1E69E6158];
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1B9F1BE20();
    *(v35 + 32) = 0xD000000000000012;
    *(v35 + 40) = 0x80000001BA4FCD80;
    sub_1BA30A78C(0, &qword_1EDC6B670, v36, MEMORY[0x1E69E62F8]);
    *(v35 + 96) = v37;
    *(v35 + 104) = sub_1BA30A7DC();
    *(v35 + 72) = v20;
    sub_1BA4A6EE8();
    MEMORY[0x1BFAF1510]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    goto LABEL_16;
  }

  v44 = MEMORY[0x1E69E7CC0];
  result = sub_1B9F1C360(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v20 = v44;
    v23 = a1;
    v24 = a1 & 0xC000000000000001;
    v25 = v14;
    do
    {
      if (v24)
      {
        v26 = MEMORY[0x1BFAF2860](v22, v23);
      }

      else
      {
        v26 = *(v23 + 8 * v22 + 32);
      }

      v27 = v26;
      v28 = [v26 categoryName];
      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v31 = v30;

      v44 = v20;
      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B9F1C360((v32 > 1), v33 + 1, 1);
        v20 = v44;
      }

      ++v22;
      *(v20 + 16) = v33 + 1;
      v34 = v20 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v23 = v25;
    }

    while (v19 != v22);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA3092F0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5, char a6, __n128 a7)
{
  sub_1BA30A61C(0, a7);
  v13 = swift_allocObject();
  v14 = v13 + qword_1EDC64EB0;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = a6;
  *(v13 + qword_1EDC84BB8) = a1;
  *(v13 + *(*v13 + 512)) = a2;
  *(v13 + *(*v13 + 520)) = a3;
  sub_1B9F17BE8(a4, a5, a6);
  v15 = a1;

  sub_1BA1E433C(v15, a2, a3, a4, a5, a6);
  v17 = v16;

  sub_1B9F18460(a4, a5, a6);
  v18 = *&v15[qword_1EDC84AD0];
  v19 = *&v15[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v18, v19);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v20 = MutableArrayDataSource.init(arrangedSections:identifier:)(v17, 0x534464657070614DLL, 0xE90000000000003CLL);
  v21 = *(v20 + qword_1EDC84BB8);
  v22 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v21 + v22) registerObserver_];
  return v20;
}

uint64_t sub_1BA3094BC(void *a1, void *a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v56 = a5;
  v52 = a4;
  v55 = a11;
  v53 = a9;
  v54 = a8;
  v59 = *v11;
  v58 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v58, v16);
  v18 = &v51[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v51[-v21];

  sub_1B9F0A534(a1, v60);
  v57 = type metadata accessor for SummarySharingSelectionFlow;
  sub_1BA30A858(a6, v22, type metadata accessor for SummarySharingSelectionFlow);
  type metadata accessor for SummarySharingDataTypeSelectionDataSource.Configuration(0);
  v23 = swift_allocObject();
  v24 = a2;
  sub_1BA4A1788();
  *(v23 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F1134C(v60, v23 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_healthExperienceStore);
  *(v23 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_healthStore) = v24;
  v25 = a1;
  *(v23 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_shouldOnlyFetchProminentDataTypes) = v52;
  sub_1BA309BDC(v22, v23 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);
  v26 = (v23 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeader);
  v27 = v53;
  *v26 = v54;
  v26[1] = v27;
  v28 = v23 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig;
  *(v28 + 64) = *(a10 + 64);
  v29 = *(a10 + 48);
  *(v28 + 32) = *(a10 + 32);
  *(v28 + 48) = v29;
  v30 = *(a10 + 16);
  *v28 = *a10;
  *(v28 + 16) = v30;
  *(v23 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_hasShowAllButton) = v55;
  *(v23 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(v11 + qword_1EBBF0538) = v23;

  v31 = sub_1BA308D5C(v56, a7);

  sub_1BA2FED78();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v32 = sub_1BA4A6AE8();

  [v31 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v33 = sub_1BA4A1B68();
  sub_1BA30A858(a6, v18, v57);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA30A8C0(v18, type metadata accessor for SummarySharingSelectionFlow);
    }

    v35 = v31;
    v36 = sub_1BA4A6758();
  }

  else
  {
    v37 = v31;
    v36 = 0;
  }

  v38 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v31 managedObjectContext:v33 sectionNameKeyPath:v36 cacheName:0];

  sub_1BA30AAC0(0, qword_1EDC61B00, MEMORY[0x1E69A3DD0], sub_1B9F15730, type metadata accessor for FetchedResultsControllerDataSource);
  v40 = objc_allocWithZone(v39);
  v41 = v38;
  v42 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v41);
  type metadata accessor for SummarySharingSelectionContextDelegate();
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v43 + 24) = 0;
  swift_unknownObjectWeakAssign();
  v44 = swift_allocObject();
  v45 = v59;
  *(v44 + 16) = v23;
  *(v44 + 24) = v45;

  v47 = sub_1BA3092F0(v42, v43, 0, sub_1BA3099E4, v44, 1, v46);
  v48 = swift_allocObject();
  *(v48 + 16) = v23;
  *(v48 + 24) = v45;

  v49 = sub_1BA2718A0(v47, sub_1BA309A28, v48, 1);

  sub_1BA30A8C0(a6, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v49;
}

void sub_1BA3099E4(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v8;
  v10 = v5;
  v11 = v6;
  sub_1BA2FF03C(v9, v7, v4, a3);
}

void sub_1BA309A30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA309B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA309BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA309C54(uint64_t a1, uint64_t a2)
{
  sub_1BA30A78C(0, &qword_1EBBEB258, &type metadata for CollectionViewHeaderItem.IconConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA309D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v66[1] = a5;
  v69 = a4;
  v68 = a3;
  v71 = a2;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v75 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA172538(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v66 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v77 = v66 - v21;
  sub_1BA17256C(0);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22, v24);
  v73 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v72 = v66 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v66 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v66 - v35;
  v37 = *(a1 + 16);
  v74 = v37 + 32;
  v38 = *(v37 + 16);
  v79 = (v8 + 56);
  v82 = (v39 + 56);
  v81 = (v39 + 48);
  v78 = (v8 + 48);
  v70 = v37;

  v40 = 0;
  v76 = v14;
  while (1)
  {
    if (v40 == v38)
    {
      v89 = 0;
      v40 = v38;
      v87 = 0u;
      v88 = 0u;
      goto LABEL_7;
    }

    if (v40 >= v38)
    {
      break;
    }

    sub_1B9F0A534(v74 + 40 * v40, &v87);
    if (__OFADD__(v40++, 1))
    {
      goto LABEL_24;
    }

LABEL_7:
    v85[0] = v87;
    v85[1] = v88;
    v86 = v89;
    if (*(&v88 + 1))
    {
      sub_1B9F1134C(v85, v84);
      sub_1B9F0A534(v84, v83);
      sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
      v42 = swift_dynamicCast();
      (*v79)(v18, v42 ^ 1u, 1, v7);
      __swift_destroy_boxed_opaque_existential_1(v84);
      v43 = *v82;
      (*v82)(v18, 0, 1, v23);
    }

    else
    {
      v43 = *v82;
      (*v82)(v18, 1, 1, v23);
    }

    v44 = *v81;
    if ((*v81)(v18, 1, v23) == 1)
    {
      v80 = v40;
      sub_1BA30A8C0(v18, sub_1BA172538);
      v45 = 1;
      goto LABEL_14;
    }

    sub_1BA309BDC(v18, v32, sub_1BA17256C);
    if ((*v78)(v32, 1, v7) == 1)
    {
      sub_1BA30A8C0(v32, sub_1BA17256C);
    }

    else
    {
      v80 = v40;
      sub_1BA309BDC(v32, v77, sub_1BA17256C);
      v45 = 0;
LABEL_14:
      v46 = v77;
      v43(v77, v45, 1, v23);
      v47 = v46;
      v48 = v76;
      sub_1BA309BDC(v47, v76, sub_1BA172538);
      v49 = v44(v48, 1, v23);
      v50 = v78;
      if (v49 == 1)
      {
        (*v79)(v36, 1, 1, v7);
        v51 = *v50;
      }

      else
      {
        v52 = v38;
        v53 = v18;
        v54 = v23;
        v55 = v32;
        v56 = v72;
        sub_1BA309BDC(v48, v72, sub_1BA17256C);
        v57 = v73;
        sub_1BA30A858(v56, v73, sub_1BA17256C);
        v51 = *v50;
        if (v51(v57, 1, v7) == 1)
        {
          goto LABEL_25;
        }

        sub_1BA309BDC(v57, v36, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA30A8C0(v56, sub_1BA17256C);
        (*v79)(v36, 0, 1, v7);
        v32 = v55;
        v23 = v54;
        v18 = v53;
        v38 = v52;
      }

      v40 = v80;
      if (v51(v36, 1, v7) == 1)
      {
        v63 = swift_allocObject();
        v63[2] = sub_1BA2777A8;
        v63[3] = 0;
        v64 = v70;
        v63[4] = v70;
        v63[5] = sub_1BA2777D4;
        v63[6] = 0;
        v63[7] = sub_1BA3080A0;
        v63[8] = 0;
        v63[9] = sub_1BA308104;
        v63[10] = 0;
        *&v87 = v64;
        *(&v87 + 1) = sub_1BA2777D4;
        *&v88 = 0;
        *(&v88 + 1) = sub_1BA3080A0;
        v89 = 0;
        v90 = v69;
        v91 = v63;

        sub_1BA30836C(&v87);
        sub_1BA0E17CC(v65);
        goto LABEL_22;
      }

      v58 = v75;
      sub_1BA309BDC(v36, v75, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v59 = *(v58 + 49);
      sub_1BA30A8C0(v58, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if ((v59 & 1) == 0)
      {
        v60 = swift_allocObject();
        v60[2] = sub_1BA2776D8;
        v60[3] = 0;
        v61 = v70;
        v60[4] = v70;
        v60[5] = sub_1BA2777D4;
        v60[6] = 0;
        v60[7] = sub_1BA3080A0;
        v60[8] = 0;
        v60[9] = sub_1BA308104;
        v60[10] = 0;
        *&v87 = v61;
        *(&v87 + 1) = sub_1BA2777D4;
        *&v88 = 0;
        *(&v88 + 1) = sub_1BA3080A0;
        v89 = 0;
        v90 = v67;
        v91 = v60;

        sub_1BA30836C(&v87);
        sub_1BA0E159C(v62);
LABEL_22:

        return;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1BA30A59C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1BA309A30(0, a3, &qword_1EDC6AD50, MEMORY[0x1E69A3310], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA30A61C(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF05B8)
  {
    sub_1BA30AAC0(255, qword_1EDC61B00, MEMORY[0x1E69A3DD0], sub_1B9F15730, type metadata accessor for FetchedResultsControllerDataSource);
    v4 = v3;
    v5 = type metadata accessor for SummarySharingSelectionContextDelegate();
    v6 = type metadata accessor for MappedDataSourceWithContext(a1, v4, v5, &protocol witness table for FetchedResultsControllerDataSource<A>);
    if (!v7)
    {
      atomic_store(v6, &qword_1EBBF05B8);
    }
  }
}

uint64_t sub_1BA30A6D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  result = *a2;
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3, a4, a5 & 1);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BA30A728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA30A78C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BA30A7DC()
{
  result = qword_1EBBF05C8;
  if (!qword_1EBBF05C8)
  {
    sub_1BA30A78C(255, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF05C8);
  }

  return result;
}

uint64_t sub_1BA30A858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA30A8C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_48Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void sub_1BA30A978(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

void sub_1BA30AAC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1BA30AB74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1BA309A30(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA30ABD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1BA4A7DA8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BA30AC30()
{
  result = qword_1EBBF0638;
  if (!qword_1EBBF0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0638);
  }

  return result;
}

void (*sub_1BA30ACC0(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA30AD60;
}

uint64_t sub_1BA30ADC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA30AE30(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA30D77C;
}

uint64_t sub_1BA30AED0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA30AF3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA30AF94(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA30B05C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  sub_1B9F0A534(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 8))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void *ThresholdSpecifierViewControllerDataSource.__allocating_init(featureName:source:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v11 = *a3;
  v10 = a3[1];
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(a4, &v9[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration]);
  v14[0] = v11;
  v14[1] = v10;
  v12 = HealthChecklistDataSource.init(featureName:source:sendAnalyticsEvent:)(a1, a2, v14, 1);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v12;
}

void *ThresholdSpecifierViewControllerDataSource.init(featureName:source:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1];
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(a4, v4 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration);
  v12[0] = v8;
  v12[1] = v9;
  v10 = HealthChecklistDataSource.init(featureName:source:sendAnalyticsEvent:)(a1, a2, v12, 1);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v10;
}

uint64_t sub_1BA30B260()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  sub_1B9F0A534(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 16))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

unint64_t sub_1BA30B2F4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
  v3 = objc_opt_self();
  v4 = sub_1BA4A6758();
  v72 = v3;
  v5 = [v3 groupSpecifierWithID_];

  if (v5)
  {
    v6 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
    swift_beginAccess();
    sub_1B9F0A534(v1 + v6, v73);
    v7 = v74;
    v8 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(v8 + 24))(v7, v8);
    if (v9)
    {
      v10 = sub_1BA4A6758();
    }

    else
    {
      v10 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v73);
    [v5 setName_];

    v12 = sub_1BA4A6C18();
    [v5 setProperty:v12 forKey:*MEMORY[0x1E69C5938]];

    v13 = v5;
    MEMORY[0x1BFAF1510]();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v11 = v76;
    sub_1B9F0A534(v1 + v6, v73);
    v14 = v74;
    v15 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(v15 + 32))(v14, v15);
    v16 = sub_1BA4A6758();

    __swift_destroy_boxed_opaque_existential_1(v73);
    v17 = [v72 preferenceSpecifierNamed:v16 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    if (v17)
    {
      v18 = sub_1BA4A6758();
      [v17 setIdentifier_];

      v19 = v17;
      MEMORY[0x1BFAF1510]();
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v20 = v76;
      sub_1B9F0A534(v1 + v6, v73);
      v21 = v74;
      v22 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v23 = (*(v22 + 48))(v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v73);
      v69 = v23;
      if (v23 >> 62)
      {
        v24 = sub_1BA4A7CC8();
        v66 = v19;
        v67 = v13;
        if (!v24)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v66 = v19;
        v67 = v13;
        if (!v24)
        {
          goto LABEL_38;
        }
      }

      if (v24 >= 1)
      {
        v25 = 0;
        v26 = v23;
        v70 = v23 & 0xC000000000000001;
        v68 = *MEMORY[0x1E69C5860];
        v71 = v24;
        do
        {
          if (v70)
          {
            v27 = MEMORY[0x1BFAF2860](v25, v26);
          }

          else
          {
            v27 = *(v26 + 8 * v25 + 32);
          }

          v28 = v27;
          sub_1B9F0A534(v1 + v6, v73);
          v29 = v74;
          v30 = v75;
          __swift_project_boxed_opaque_existential_1(v73, v74);
          (*(v30 + 72))(v28, v29, v30);
          __swift_destroy_boxed_opaque_existential_1(v73);
          v31 = sub_1BA4A6758();
          v32 = [v72 preferenceSpecifierNamed:v31 target:0 set:0 get:0 detail:0 cell:3 edit:{0, v66}];

          if (v32)
          {
            sub_1B9F0A534(v1 + v6, v73);
            v33 = v74;
            v34 = v75;
            __swift_project_boxed_opaque_existential_1(v73, v74);
            (*(v34 + 64))(v28, v33, v34);
            v35 = sub_1BA4A6758();

            __swift_destroy_boxed_opaque_existential_1(v73);
            [v32 setIdentifier_];

            v73[0] = type metadata accessor for ThresholdSpecifierViewControllerCell();
            sub_1BA30BE6C();
            [v32 setProperty:sub_1BA4A8398() forKey:v68];
            swift_unknownObjectRelease();
            v36 = sub_1BA4A6758();

            v37 = sub_1BA4A6758();
            [v32 setProperty:v36 forKey:v37];

            sub_1B9F0A534(v1 + v6, v73);
            v38 = v74;
            v39 = v75;
            __swift_project_boxed_opaque_existential_1(v73, v74);
            (*(v39 + 80))(v28, v38, v39);
            if (v40)
            {
              __swift_destroy_boxed_opaque_existential_1(v73);
              v41 = sub_1BA4A6758();

              v42 = sub_1BA4A6758();
              [v32 setProperty:v41 forKey:v42];
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v73);
            }

            v43 = v32;
            MEMORY[0x1BFAF1510]();
            v26 = v69;
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();

            v20 = v76;
          }

          else
          {
          }

          ++v25;
        }

        while (v71 != v25);
LABEL_38:

        sub_1B9F0A534(v1 + v6, v73);
        v47 = v74;
        v48 = v75;
        __swift_project_boxed_opaque_existential_1(v73, v74);
        v49 = *(v48 + 56);
        v50 = v66;
        v51 = v49(v47, v48);
        if (v51)
        {
          v52 = v51;
          __swift_destroy_boxed_opaque_existential_1(v73);
          sub_1B9F0A534(v1 + v6, v73);
          v53 = v74;
          v54 = v75;
          __swift_project_boxed_opaque_existential_1(v73, v74);
          v55 = (*(v54 + 64))(v52, v53, v54);
          v13 = sub_1BA30BD08(v55, v56, v20);

          __swift_destroy_boxed_opaque_existential_1(v73);
          v57 = v67;
          if (v13)
          {
          }

          else
          {
            v13 = v50;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v73);
          v13 = v50;
          v57 = v67;
        }

        [v57 setProperty:v13 forKey:*MEMORY[0x1E69C5958]];
        sub_1B9F0A534(v1 + v6, v73);
        v58 = v74;
        v59 = v75;
        __swift_project_boxed_opaque_existential_1(v73, v74);
        (*(v59 + 40))(v58, v59);
        v60 = sub_1BA4A6758();

        __swift_destroy_boxed_opaque_existential_1(v73);
        [v57 setProperty:v60 forKey:*MEMORY[0x1E69C5900]];

        if (v20 >> 62)
        {

          v11 = sub_1BA4A8028();
        }

        else
        {
          v61 = v20 & 0xFFFFFFFFFFFFFF8;

          sub_1BA4A8358();
          if (swift_dynamicCastMetatype() || (v63 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
          {
LABEL_45:

            v11 = v20;
          }

          else
          {
            v64 = (v61 + 32);
            while (*v64)
            {
              ++v64;
              if (!--v63)
              {
                goto LABEL_45;
              }
            }

            v11 = v61 | 1;
          }
        }

LABEL_46:

        return v11;
      }

      __break(1u);
    }

    else if (!(v11 >> 62))
    {
      v44 = v11 & 0xFFFFFFFFFFFFFF8;

      sub_1BA4A8358();
      if (!swift_dynamicCastMetatype())
      {
        v45 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v45)
        {
          v46 = (v44 + 32);
          while (*v46)
          {
            ++v46;
            if (!--v45)
            {
              goto LABEL_46;
            }
          }

          return v44 | 1;
        }
      }

      goto LABEL_46;
    }

    v65 = sub_1BA4A8028();

    swift_bridgeObjectRelease_n();
    return v65;
  }

  if (!(v2 >> 62))
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1BA4A80B8();
    return v11;
  }

  return sub_1BA4A8028();
}

void *sub_1BA30BD08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFAF2860](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      if (v11)
      {
        v12 = v11;
        v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {

          return v9;
        }

        v17 = sub_1BA4A8338();

        if (v17)
        {
          return v9;
        }
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

unint64_t sub_1BA30BE6C()
{
  result = qword_1EBBF0658;
  if (!qword_1EBBF0658)
  {
    type metadata accessor for ThresholdSpecifierViewControllerCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0658);
  }

  return result;
}

uint64_t sub_1BA30BEE4()
{
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext);
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

void (*sub_1BA30BFE4(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA30D77C;
}

uint64_t sub_1BA30C0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5 + *a5;
  swift_beginAccess();
  *(v7 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA30C150(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA30D77C;
}

uint64_t ThresholdSpecifierViewControllerDelegate.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F1134C(a1, v2 + 16);
  return v2;
}

uint64_t ThresholdSpecifierViewControllerDelegate.init(configuration:)(__int128 *a1)
{
  *(v1 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F1134C(a1, v1 + 16);
  return v1;
}

uint64_t ThresholdSpecifierViewControllerDelegate.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1B9FAB600(v0 + 56);
  return v0;
}

uint64_t ThresholdSpecifierViewControllerDelegate.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1B9FAB600(v0 + 56);

  return swift_deallocClassInstance();
}

char *ThresholdSpecifierViewController.__allocating_init(featureName:configuration:source:shouldHaveDoneButton:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = *a4;
  v14 = a4[1];
  sub_1B9F0A534(a3, v26);
  v15 = objc_allocWithZone(type metadata accessor for ThresholdSpecifierViewControllerDataSource());
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v26, &v15[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration]);
  v25[0] = v13;
  v25[1] = v14;
  v16 = HealthChecklistDataSource.init(featureName:source:sendAnalyticsEvent:)(a1, a2, v25, 1);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource;
  *&v12[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource] = v16;
  sub_1B9F0A534(a3, v26);
  type metadata accessor for ThresholdSpecifierViewControllerDelegate();
  v18 = swift_allocObject();
  *(v18 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F1134C(v26, v18 + 16);
  *&v12[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDelegate] = v18;
  v19 = *&v12[v17];

  v20 = sub_1BA30C928(v19, v18, &protocol witness table for ThresholdSpecifierViewControllerDelegate, a5, v12);
  *(*&v20[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] + OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersAfterSelection) = 1;
  v21 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDelegate];
  v22 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource] + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v23 = *(v22 + 8);

  __swift_destroy_boxed_opaque_existential_1(a3);
  *(v21 + 64) = v23;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v20;
}

char *ThresholdSpecifierViewController.init(featureName:configuration:source:shouldHaveDoneButton:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a4;
  v12 = a4[1];
  sub_1B9F0A534(a3, v24);
  v13 = objc_allocWithZone(type metadata accessor for ThresholdSpecifierViewControllerDataSource());
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v24, &v13[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration]);
  v23[0] = v11;
  v23[1] = v12;
  v14 = HealthChecklistDataSource.init(featureName:source:sendAnalyticsEvent:)(a1, a2, v23, 1);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v15 = OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource] = v14;
  sub_1B9F0A534(a3, v24);
  type metadata accessor for ThresholdSpecifierViewControllerDelegate();
  v16 = swift_allocObject();
  *(v16 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F1134C(v24, v16 + 16);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDelegate] = v16;
  v17 = *&v6[v15];

  v18 = sub_1BA30C928(v17, v16, &protocol witness table for ThresholdSpecifierViewControllerDelegate, a5, v6);
  *(*&v18[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] + OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersAfterSelection) = 1;
  v19 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDelegate];
  v20 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource] + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v21 = *(v20 + 8);

  __swift_destroy_boxed_opaque_existential_1(a3);
  *(v19 + 64) = v21;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v18;
}

id ThresholdSpecifierViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

double sub_1BA30C84C()
{

  return result;
}

id sub_1BA30C8A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1BA30C928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = a4;
  v10 = objc_allocWithZone(type metadata accessor for SpecifierViewController());
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] = sub_1BA30D5C8(a1, a2, a3, v6, v10);
  v35.receiver = a5;
  v35.super_class = type metadata accessor for HostedSpecifierViewController();
  v11 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController;
  v13 = *&v11[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController];
  v14 = v11;
  v15 = v13;
  [v14 addChildViewController_];
  result = [v14 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  result = [v15 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = result;
  [v17 addSubview_];

  result = [v15 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = result;
  result = [v14 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = result;
  [result bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v19 setFrame_];
  result = [v15 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v29 = result;

  [v29 setAutoresizingMask_];
  [v15 didMoveToParentViewController_];
  v30 = [v14 title];
  if (!v30)
  {
    v31 = [*&v11[v12] title];
    [v14 setTitle_];
    v30 = v31;
  }

  v32 = [v14 navigationItem];
  v33 = [*&v11[v12] navigationItem];
  v34 = [v33 rightBarButtonItem];

  [v32 setRightBarButtonItem_];
  swift_unknownObjectRelease();
  return v14;
}

void sub_1BA30CC18(unint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    sub_1BA4A7DF8();

    swift_unknownObjectRetain();
    v41 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v41);

    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v9 = v8;

    if (v7 == 4605519 && v9 == 0xE300000000000000)
    {
    }

    else
    {
      v11 = sub_1BA4A8338();

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_1B9F0A534(v2 + 16, &v44);
    v32 = v45;
    v33 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    (*(v33 + 96))(v32, v33);
    __swift_destroy_boxed_opaque_existential_1(&v44);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = *(v2 + 64);
      ObjectType = swift_getObjectType();
      (*(v34 + 8))(ObjectType, v34);
      swift_unknownObjectRelease();
    }

    goto LABEL_41;
  }

LABEL_8:
  sub_1B9F0A534(v2 + 16, &v44);
  v12 = v45;
  v13 = v46;
  __swift_project_boxed_opaque_existential_1(&v44, v45);
  v14 = (*(v13 + 48))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  if (v14 >> 62)
  {
LABEL_39:
    v15 = sub_1BA4A7CC8();
    if (v15)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_40:

LABEL_41:
    swift_unknownObjectRelease();
    return;
  }

LABEL_10:
  v16 = 0;
  v43 = v4;
  v42 = v15;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1BFAF2860](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v20 = [v4 identifier];
    if (v20)
    {
      v21 = v20;
      v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = v2;
    sub_1B9F0A534(v2 + 16, &v44);
    v26 = v45;
    v27 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    v28 = (*(v27 + 64))(v18, v26, v27);
    if (v24)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v44);
    v2 = v25;
LABEL_12:
    ++v16;
    v4 = v43;
    if (v19 == v42)
    {
      goto LABEL_40;
    }
  }

  if (v22 == v28 && v24 == v29)
  {

    __swift_destroy_boxed_opaque_existential_1(&v44);

    v2 = v25;
    goto LABEL_34;
  }

  v31 = sub_1BA4A8338();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  v2 = v25;
  if ((v31 & 1) == 0)
  {

    goto LABEL_12;
  }

LABEL_34:
  sub_1B9F0A534(v2 + 16, &v44);
  v36 = v2;
  v37 = v45;
  v38 = v46;
  __swift_project_boxed_opaque_existential_1(&v44, v45);
  (*(v38 + 88))(v18, v37, v38);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v36 + 64);
    v40 = swift_getObjectType();
    (*(v39 + 8))(v40, v39);
    swift_unknownObjectRelease();

    goto LABEL_41;
  }

  swift_unknownObjectRelease();
}

uint64_t keypath_getTm_2@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

char *sub_1BA30D5C8(void *a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_delegate + 8] = 0;
  v9 = swift_unknownObjectWeakInit();
  a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersAfterSelection] = 0;
  a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersOnViewWillAppear] = 1;
  v10 = &a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  *v10 = a1;
  v10[1] = &protocol witness table for ThresholdSpecifierViewControllerDataSource;
  *(v9 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v26.receiver = a5;
  v26.super_class = type metadata accessor for SpecifierViewController();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  v13 = &v12[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  v15 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource + 8];
  ObjectType = swift_getObjectType();
  v17 = *(v15 + 16);
  v18 = v12;
  v19 = v14;
  v17(v12, &off_1F37FEA68, ObjectType, v15);

  v20 = *v13;
  v21 = *(v13 + 1);
  v22 = swift_getObjectType();
  v23 = *(v21 + 40);
  v24 = v20;
  v23(v12, &off_1F37FEA58, v22, v21);

  if (a4)
  {
    sub_1B9FCE184();
  }

  return v18;
}

uint64_t sub_1BA30D790()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0670 = result;
  *algn_1EBBF0678 = v1;
  return result;
}

uint64_t sub_1BA30D83C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0680 = result;
  *algn_1EBBF0688 = v1;
  return result;
}

uint64_t sub_1BA30D8E8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0690 = result;
  *algn_1EBBF0698 = v1;
  return result;
}

uint64_t sub_1BA30D994()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF06A0 = result;
  *algn_1EBBF06A8 = v1;
  return result;
}

uint64_t sub_1BA30DA40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF06B0 = result;
  *algn_1EBBF06B8 = v1;
  return result;
}

void sub_1BA30DAEC()
{
  sub_1BA312914(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v45 - v3;
  v5 = sub_1BA4A1C68();
  v61 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v63 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  v58 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v15 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v16);
  v59 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v62 = &v45 - v20;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedDataTypesContext;
  swift_beginAccess();
  v22 = *(v0 + v21);
  swift_beginAccess();
  v23 = *(v22 + 24);
  v24 = v23[2];
  if (!v24)
  {
    goto LABEL_4;
  }

  v25 = sub_1BA0219CC(v23[2], 0);
  sub_1BA023688(v67, v25 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v24, v23);
  v27 = v26;
  v28 = v67[0];
  v60 = v67[2];
  v57 = v67[3];
  v56 = v67[4];

  sub_1B9F52E48(v28);
  if (v27 != v24)
  {
    __break(1u);
LABEL_4:
    v25 = MEMORY[0x1E69E7CC0];
  }

  v57 = v25[2];
  if (!v57)
  {
LABEL_22:

    return;
  }

  v29 = 0;
  v47 = (v61 + 16);
  v46 = (v61 + 32);
  v30 = *MEMORY[0x1E69A3B68];
  v52 = (v61 + 8);
  v31 = MEMORY[0x1E69E7CC0];
  v53 = (v61 + 104);
  v49 = (v61 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v56 = v14;
  v55 = v25;
  v54 = v30;
  v51 = v15;
  v50 = v4;
  while (v29 < v25[2])
  {
    v61 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v32 = v25 + v61;
    v33 = *(v15 + 72);
    v34 = v62;
    sub_1BA312978(&v32[v33 * v29], v62, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA3147F8(v34 + *(v58 + 40), v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1BA312914);
    v35 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    if ((*(*(v35 - 8) + 48))(v4, 1, v35) == 1)
    {
      sub_1B9F0DEC0(v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1BA312914);
      v36 = *v53;
      (*v53)(v14, v30, v5);
    }

    else
    {
      v37 = &v4[*(v35 + 40)];
      v38 = v48;
      (*v47)(v48, v37, v5);
      sub_1BA3129E0(v4, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      (*v46)(v14, v38, v5);
      v36 = *v53;
    }

    v36(v63, v30, v5);
    sub_1BA312C8C(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C20]);
    sub_1BA4A6A58();
    sub_1BA4A6A58();
    v60 = v33;
    if (v67[0] == v64 && v67[1] == v65)
    {
      v39 = *v52;
      (*v52)(v63, v5);
      v39(v14, v5);

LABEL_17:
      sub_1BA025350(v62, v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BA066E50(0, *(v31 + 16) + 1, 1);
        v31 = v66;
      }

      v4 = v50;
      v15 = v51;
      v44 = *(v31 + 16);
      v43 = *(v31 + 24);
      v25 = v55;
      if (v44 >= v43 >> 1)
      {
        sub_1BA066E50((v43 > 1), v44 + 1, 1);
        v31 = v66;
      }

      *(v31 + 16) = v44 + 1;
      sub_1BA025350(v59, v31 + v61 + v44 * v60);
      goto LABEL_8;
    }

    v40 = sub_1BA4A8338();
    v41 = *v52;
    (*v52)(v63, v5);
    v41(v14, v5);

    if (v40)
    {
      goto LABEL_17;
    }

    sub_1BA3129E0(v62, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v4 = v50;
    v15 = v51;
    v25 = v55;
LABEL_8:
    v30 = v54;
    ++v29;
    v14 = v56;
    if (v57 == v29)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_1BA30E280()
{
  sub_1BA312914(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v44[-v3];
  v5 = sub_1BA4A1C68();
  v61 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v63 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v44[-v10];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44[-v13];
  v58 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v15 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v16);
  v59 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v19);
  v62 = &v44[-v20];
  v21 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedDataTypesContext;
  swift_beginAccess();
  v22 = *(v0 + v21);
  swift_beginAccess();
  v23 = *(v22 + 24);
  v24 = v23[2];
  if (!v24)
  {
    goto LABEL_4;
  }

  v25 = sub_1BA0219CC(v23[2], 0);
  sub_1BA023688(v67, v25 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v24, v23);
  v27 = v26;
  v28 = v67[0];
  v60 = v67[2];
  v57 = v67[3];
  v56 = v67[4];

  sub_1B9F52E48(v28);
  if (v27 != v24)
  {
    __break(1u);
LABEL_4:
    v25 = MEMORY[0x1E69E7CC0];
  }

  v57 = v25[2];
  if (!v57)
  {
LABEL_22:

    return;
  }

  v29 = 0;
  v47 = (v61 + 16);
  v46 = (v61 + 32);
  v45 = *MEMORY[0x1E69A3B68];
  v53 = *MEMORY[0x1E69A3B90];
  v52 = (v61 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v54 = (v61 + 104);
  v49 = (v61 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v56 = v14;
  v55 = v25;
  v51 = v15;
  v50 = v4;
  while (v29 < v25[2])
  {
    v61 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v31 = v25 + v61;
    v32 = *(v15 + 72);
    v33 = v62;
    sub_1BA312978(&v31[v32 * v29], v62, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA3147F8(&v33[*(v58 + 40)], v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1BA312914);
    v34 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    if ((*(*(v34 - 8) + 48))(v4, 1, v34) == 1)
    {
      sub_1B9F0DEC0(v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1BA312914);
      v35 = *v54;
      (*v54)(v14, v45, v5);
    }

    else
    {
      v36 = &v4[*(v34 + 40)];
      v37 = v48;
      (*v47)(v48, v36, v5);
      sub_1BA3129E0(v4, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      (*v46)(v14, v37, v5);
      v35 = *v54;
    }

    v35(v63, v53, v5);
    sub_1BA312C8C(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C20]);
    sub_1BA4A6A58();
    sub_1BA4A6A58();
    v60 = v32;
    if (v67[0] == v64 && v67[1] == v65)
    {
      v38 = *v52;
      (*v52)(v63, v5);
      v38(v14, v5);

LABEL_17:
      sub_1BA025350(v62, v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BA066E50(0, *(v30 + 16) + 1, 1);
        v30 = v66;
      }

      v4 = v50;
      v15 = v51;
      v43 = *(v30 + 16);
      v42 = *(v30 + 24);
      v25 = v55;
      if (v43 >= v42 >> 1)
      {
        sub_1BA066E50((v42 > 1), v43 + 1, 1);
        v30 = v66;
      }

      *(v30 + 16) = v43 + 1;
      sub_1BA025350(v59, v30 + v61 + v43 * v60);
      goto LABEL_8;
    }

    v39 = sub_1BA4A8338();
    v40 = *v52;
    (*v52)(v63, v5);
    v40(v14, v5);

    if (v39)
    {
      goto LABEL_17;
    }

    sub_1BA3129E0(v62, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v4 = v50;
    v15 = v51;
    v25 = v55;
LABEL_8:
    ++v29;
    v14 = v56;
    if (v57 == v29)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

double sub_1BA30EA28(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_1BA146CA4();

    sub_1BA146CA4();
  }

  return result;
}

double sub_1BA30EAD0()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v181 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA312914(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v204 = &v181 - v7;
  sub_1BA312A40(0);
  v199 = *(v8 - 8);
  v200 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v198 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA312D54(0);
  v202 = *(v11 - 8);
  v203 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v201 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA312F34(0);
  v206 = *(v14 - 8);
  v207 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v205 = &v181 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3130FC(0, &qword_1EBBED7D8, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, sub_1BA1B466C);
  v194 = v17;
  v192 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v189 = &v181 - v20;
  sub_1BA313000(0, v19);
  v196 = v21;
  v193 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v190 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA313230(0, v23);
  v197 = v25;
  v195 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v191 = &v181 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BA4A3EA8();
  v29 = *(v28 - 8);
  v210 = v28;
  v211 = v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v187 = &v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v188 = &v181 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v209 = &v181 - v37;
  v38 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v208 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = &v181 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v181 - v44;
  sub_1BA3132F0(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v47 = v46;
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v49);
  v51 = &v181 - v50;
  sub_1BA30E280();
  v53 = v52;
  sub_1BA30DAEC();
  *&v215 = v53;
  sub_1B9FE23E8(v54);
  v55 = *(v215 + 16);

  v213 = v0;
  v56 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectionFlowContext];
  if (v55)
  {
    v186 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectionFlowContext;
    swift_beginAccess();
    v57 = *(*(v56 + 32) + 80);
    v58 = qword_1EBBE8328;
    v59 = v57;
    if (v58 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v47, qword_1EBBEB818);
    (*(v48 + 16))(v51, v60, v47);
    sub_1BA4A1CA8();
    (*(v48 + 8))(v51, v47);
    v61 = v214;
    v62 = [v59 integerValue];
    v63 = ObjectType;
    if (v62 >= v61)
    {
      v89 = v213;

      sub_1B9FF0EE8();

      static SummarySharingOnboardingErrorHandling.displayMaxNumberRelationshipsError(on:for:completion:)(v89, 0, 0, 0, v63);
    }

    else
    {
      v64 = v213;
      if (!*&v213[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sendInviteCancellable])
      {
        v185 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sendInviteCancellable;
        sub_1BA311504();
        v65 = *&v64[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactICloudIdentifier + 8];
        if (v65)
        {
          v187 = *&v64[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactICloudIdentifier];
          v183 = v65;

          sub_1BA30DAEC();
          v67 = v66;
          v68 = *(v66 + 16);
          v69 = MEMORY[0x1E69E7CC0];
          v184 = v59;
          if (v68)
          {
            v214 = MEMORY[0x1E69E7CC0];
            sub_1B9F1C360(0, v68, 0);
            v70 = v214;
            v71 = (*(v208 + 80) + 32) & ~*(v208 + 80);
            v182 = v67;
            v72 = v67 + v71;
            v73 = *(v208 + 72);
            do
            {
              sub_1BA312978(v72, v45, type metadata accessor for SummarySharingSelectableDataTypeItem);
              if (*(v45 + 8))
              {
                v74 = *(v45 + 7);
                v75 = *(v45 + 8);
              }

              else
              {
                v75 = 0xE300000000000000;
                v74 = 6369134;
              }

              sub_1BA3129E0(v45, type metadata accessor for SummarySharingSelectableDataTypeItem);
              v214 = v70;
              v77 = *(v70 + 16);
              v76 = *(v70 + 24);
              if (v77 >= v76 >> 1)
              {
                sub_1B9F1C360((v76 > 1), v77 + 1, 1);
                v70 = v214;
              }

              *(v70 + 16) = v77 + 1;
              v78 = v70 + 16 * v77;
              *(v78 + 32) = v74;
              *(v78 + 40) = v75;
              v72 += v73;
              --v68;
            }

            while (v68);

            v64 = v213;
            v69 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v70 = MEMORY[0x1E69E7CC0];
          }

          v182 = MEMORY[0x1BFAF15B0](v70, MEMORY[0x1E69E6158]);
          v99 = v98;

          sub_1BA30E280();
          v101 = v100;
          v102 = *(v100 + 16);
          if (v102)
          {
            v181 = v99;
            v214 = v69;
            sub_1B9F1C360(0, v102, 0);
            v103 = v214;
            v104 = v101 + ((*(v208 + 80) + 32) & ~*(v208 + 80));
            v105 = *(v208 + 72);
            do
            {
              sub_1BA312978(v104, v41, type metadata accessor for SummarySharingSelectableDataTypeItem);
              if (*(v41 + 8))
              {
                v106 = *(v41 + 7);
                v107 = *(v41 + 8);
              }

              else
              {
                v107 = 0xE300000000000000;
                v106 = 6369134;
              }

              sub_1BA3129E0(v41, type metadata accessor for SummarySharingSelectableDataTypeItem);
              v214 = v103;
              v109 = *(v103 + 16);
              v108 = *(v103 + 24);
              if (v109 >= v108 >> 1)
              {
                sub_1B9F1C360((v108 > 1), v109 + 1, 1);
                v103 = v214;
              }

              *(v103 + 16) = v109 + 1;
              v110 = v103 + 16 * v109;
              *(v110 + 32) = v106;
              *(v110 + 40) = v107;
              v104 += v105;
              --v102;
            }

            while (v102);

            v64 = v213;
            v99 = v181;
          }

          else
          {

            v103 = MEMORY[0x1E69E7CC0];
          }

          v111 = MEMORY[0x1BFAF15B0](v103, MEMORY[0x1E69E6158]);
          v113 = v112;

          v114 = v209;
          sub_1BA4A3DD8();
          v115 = v64;

          v116 = sub_1BA4A3E88();
          v117 = sub_1BA4A6F98();

          v118 = os_log_type_enabled(v116, v117);
          v208 = v111;
          if (v118)
          {
            v119 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            v214 = v120;
            *v119 = 136315650;
            v121 = sub_1BA4A85D8();
            v123 = sub_1B9F0B82C(v121, v122, &v214);

            *(v119 + 4) = v123;
            *(v119 + 12) = 2048;
            sub_1BA30DAEC();
            v125 = *(v124 + 16);

            *(v119 + 14) = v125;

            *(v119 + 22) = 2080;
            v126 = sub_1B9F0B82C(v182, v99, &v214);

            *(v119 + 24) = v126;
            _os_log_impl(&dword_1B9F07000, v116, v117, "[%s] Fetching authorization identifiers for %ld topics: %s", v119, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v120, -1, -1);
            MEMORY[0x1BFAF43A0](v119, -1, -1);

            v127 = *(v211 + 8);
            v128 = v209;
          }

          else
          {

            v127 = *(v211 + 8);
            v128 = v114;
          }

          v129 = v210;
          v127(v128, v210);
          v130 = v188;
          sub_1BA4A3DD8();
          v131 = v115;

          v132 = sub_1BA4A3E88();
          v133 = sub_1BA4A6F98();

          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v210 = v127;
            v135 = v134;
            v136 = swift_slowAlloc();
            v214 = v136;
            *v135 = 136315650;
            v137 = sub_1BA4A85D8();
            v139 = sub_1B9F0B82C(v137, v138, &v214);

            *(v135 + 4) = v139;
            *(v135 + 12) = 2048;
            sub_1BA30E280();
            v140 = v130;
            v142 = *(v141 + 16);

            *(v135 + 14) = v142;

            *(v135 + 22) = 2080;
            v143 = sub_1B9F0B82C(v208, v113, &v214);

            *(v135 + 24) = v143;
            _os_log_impl(&dword_1B9F07000, v132, v133, "[%s] Fetching authorization identifiers for %ld alerts: %s", v135, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v136, -1, -1);
            MEMORY[0x1BFAF43A0](v135, -1, -1);

            v210(v140, v129);
          }

          else
          {

            v127(v130, v129);
          }

          v144 = v197;
          v145 = v196;
          v146 = v195;
          v147 = v194;
          v148 = v193;
          sub_1BA30DAEC();
          v209 = v131;
          v150 = v149;
          sub_1BA30E280();
          v214 = v150;
          sub_1B9FE23E8(v151);
          sub_1BA312914(0, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
          sub_1BA1B466C();
          v152 = v189;
          sub_1BA4A6A18();

          sub_1BA4A4D08();
          sub_1BA3130FC(0, &qword_1EBBEB0B0, &qword_1EBBEA900, MEMORY[0x1E69A3910], sub_1BA090BD8);
          sub_1BA3131A0();
          sub_1BA090C60();
          v153 = v190;
          sub_1BA4A5178();
          (*(v192 + 8))(v152, v147);
          v211 = MEMORY[0x1E695BE40];
          sub_1BA312C8C(&qword_1EBBF0798, sub_1BA313000, MEMORY[0x1E695BE40]);
          v154 = v191;
          sub_1BA4A5068();
          (*(v148 + 8))(v153, v145);
          sub_1BA312C8C(&qword_1EBBF07A0, sub_1BA313230, MEMORY[0x1E695BE38]);
          v155 = sub_1BA4A4F98();
          (*(v146 + 8))(v154, v144);

          v156 = sub_1B9FF07A8();

          v214 = v156;
          v157 = swift_allocObject();
          v210 = v155;
          v158 = ObjectType;
          *(v157 + 16) = v155;
          *(v157 + 24) = v158;

          sub_1BA4A4D08();
          v159 = MEMORY[0x1E695BED0];
          sub_1BA312E34(0, &qword_1EBBEA138, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BED0]);
          sub_1BA312BF4(0);
          sub_1BA312CD4();
          sub_1BA312C8C(&qword_1EBBF0750, sub_1BA312BF4, MEMORY[0x1E695BED8]);
          v160 = v198;
          sub_1BA4A5078();

          v161 = swift_allocObject();
          v162 = v209;
          v163 = v187;
          v161[2] = v209;
          v161[3] = v163;
          v164 = v183;
          v161[4] = v183;
          v161[5] = v158;

          v165 = v162;
          sub_1BA4A4D08();
          sub_1BA312E34(0, &qword_1EDC5F4B0, MEMORY[0x1E69E6370], v159);
          sub_1BA312C8C(&qword_1EBBF0768, sub_1BA312A40, v211);
          sub_1BA312EB8();
          v166 = v200;
          v167 = v201;
          sub_1BA4A5088();

          (*(v199 + 8))(v160, v166);
          sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
          v168 = sub_1BA4A7308();
          v214 = v168;
          v169 = sub_1BA4A72A8();
          v170 = v204;
          (*(*(v169 - 8) + 56))(v204, 1, 1, v169);
          sub_1BA312C8C(&qword_1EBBF0778, sub_1BA312D54, v211);
          sub_1B9F3DC80();
          v171 = v205;
          v172 = v203;
          sub_1BA4A50A8();
          sub_1B9F0DEC0(v170, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1BA312914);

          (*(v202 + 8))(v167, v172);
          v173 = swift_allocObject();
          v174 = v187;
          v173[2] = v165;
          v173[3] = v174;
          v175 = ObjectType;
          v173[4] = v164;
          v173[5] = v175;
          v176 = swift_allocObject();
          v176[2] = v165;
          v176[3] = v174;
          v176[4] = v164;
          v176[5] = v175;
          sub_1BA312C8C(&qword_1EBBF07A8, sub_1BA312F34, MEMORY[0x1E695BE98]);
          v177 = v165;

          v178 = v177;
          v179 = v207;
          v180 = sub_1BA4A5008();

          (*(v206 + 8))(v171, v179);
          *&v213[v185] = v180;

          return result;
        }

        v90 = v187;
        sub_1BA4A3DD8();
        v91 = sub_1BA4A3E88();
        v92 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v214 = v94;
          *v93 = 136315138;
          v95 = sub_1BA4A85D8();
          v97 = sub_1B9F0B82C(v95, v96, &v214);

          *(v93 + 4) = v97;
          _os_log_impl(&dword_1B9F07000, v91, v92, "[%s] Could not find iCloud identifier for user", v93, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v94);
          MEMORY[0x1BFAF43A0](v94, -1, -1);
          MEMORY[0x1BFAF43A0](v93, -1, -1);
        }

        (*(v211 + 8))(v90, v210);
        sub_1BA31151C();
      }
    }

    return result;
  }

  sub_1B9FF0EE8();

  if (qword_1EBBE8800 != -1)
  {
    swift_once();
  }

  sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], 1);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1BA4B5480;
  v80 = v213;
  v81 = *&v213[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 16];
  v215 = *&v213[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact];
  v216 = v81;
  v217 = *&v213[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 32];
  v82 = sub_1BA1FAFCC(v79);
  v84 = v83;
  *(v79 + 56) = MEMORY[0x1E69E6158];
  *(v79 + 64) = sub_1B9F1BE20();
  *(v79 + 32) = v82;
  *(v79 + 40) = v84;
  v85 = sub_1BA4A6768();
  v87 = v86;

  *v4 = 0;
  swift_storeEnumTagMultiPayload();
  if (qword_1EBBE8808 != -1)
  {
    swift_once();
  }

  sub_1BA0C6BA4(v80, v85, v87, qword_1EBBF06B0, *algn_1EBBF06B8, MEMORY[0x1E69E7CC0], 0, 0);

  sub_1BA3129E0(v4, type metadata accessor for SummarySharingOnboardingError);
  return result;
}

double sub_1BA310218(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1BA312914(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v11 - v5;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA3147F8(a1 + *(v7 + 40), v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, v2, sub_1BA312914);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1B9F0DEC0(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1BA312914);
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v9 = *&v6[*(v8 + 44)];

    sub_1BA3129E0(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  v11[1] = v9;
  sub_1BA312914(0, &qword_1EBBEA900, MEMORY[0x1E69A3910], MEMORY[0x1E69E62F8]);
  sub_1BA090BD8();
  sub_1BA4A6A18();

  return result;
}

double sub_1BA310434@<D0>(uint64_t a1@<X1>, void *a3@<X8>)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B9F07000, v10, v11, "[%{public}s] Background generation completed. Fetching authorization identifiers.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    v18 = v13;
    a3 = v20;
    MEMORY[0x1BFAF43A0](v18, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  *a3 = a1;

  return result;
}

void sub_1BA3105F8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a6@<X8>)
{
  v47 = a3;
  v48 = a4;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1BA4A3DD8();

  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = a6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v49 = v19;
    *v18 = 136315394;
    v20 = sub_1BA4A85D8();
    v22 = sub_1B9F0B82C(v20, v21, &v49);
    v45 = v9;
    v23 = v22;

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = sub_1BA4A3A28();
    v25 = MEMORY[0x1BFAF1560](v14, v24);
    v27 = sub_1B9F0B82C(v25, v26, &v49);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] Received authorization identifiers: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v19, -1, -1);
    v28 = v18;
    a6 = v46;
    MEMORY[0x1BFAF43A0](v28, -1, -1);

    (*(v10 + 8))(v13, v45);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v29 = sub_1BA311180();
  v30 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sharingEntryStore);
  v31 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact);
  v32 = [v31 givenName];
  v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v35 = v34;

  v36 = [v31 familyName];
  v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v39 = v38;

  v40 = swift_allocObject();
  v40[2] = v14;
  v40[3] = v30;
  v41 = v48;
  v40[4] = v47;
  v40[5] = v41;
  v40[6] = v33;
  v40[7] = v35;
  v40[8] = v37;
  v40[9] = v39;
  v40[10] = v29;
  sub_1BA312E34(0, &qword_1EBBEB028, MEMORY[0x1E69E6370], MEMORY[0x1E695C028]);
  swift_allocObject();

  v42 = v30;

  v49 = sub_1BA4A4EA8();
  sub_1BA31337C();
  v43 = sub_1BA4A4F98();

  *a6 = v43;
}

double sub_1BA310978(id *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v56 = a3;
  v57 = a4;
  v59 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v59, v7);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = (&v54 - v11);
  v12 = sub_1BA4A3EA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v54 - v19;
  v61 = *a1;
  sub_1BA4A3DD8();
  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v63 = v54;
    *v23 = 136315138;
    v24 = sub_1BA4A85D8();
    v58 = a2;
    v26 = v16;
    v27 = v13;
    v28 = v12;
    v29 = sub_1B9F0B82C(v24, v25, &v63);
    a2 = v58;

    *(v23 + 4) = v29;
    v12 = v28;
    v13 = v27;
    v16 = v26;
    _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] Send invitation stream completed", v23, 0xCu);
    v30 = v54;
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  v31 = *(v13 + 8);
  v31(v20, v12);
  if (v61)
  {
    v32 = v61;
    v33 = v61;
    sub_1BA4A3DD8();
    v34 = v32;
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v63 = v38;
      *v37 = 136446466;
      v39 = sub_1BA4A85D8();
      v58 = a2;
      v41 = v12;
      v42 = sub_1B9F0B82C(v39, v40, &v63);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v62 = v61;
      v43 = v61;
      sub_1B9F0D9AC(0, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
      v44 = sub_1BA4A6828();
      v46 = sub_1B9F0B82C(v44, v45, &v63);
      a2 = v58;

      *(v37 + 14) = v46;
      _os_log_impl(&dword_1B9F07000, v35, v36, "[%{public}s] Failed to send invite: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);

      v47 = v16;
      v48 = v41;
    }

    else
    {

      v47 = v16;
      v48 = v12;
    }

    v31(v47, v48);
    v49 = v61;
    v50 = v61;
    v51 = v55;
    SummarySharingOnboardingError.init(error:)(v49, v55);
    sub_1BA311674(v51, v56, v57);
    sub_1BA3129E0(v51, type metadata accessor for SummarySharingOnboardingError);
    v63 = v49;
    v52 = v49;
    sub_1B9F0D9AC(0, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() - 5 <= 1)
      {

        sub_1B9FEFF28(1);

        goto LABEL_13;
      }

      sub_1BA3129E0(v60, type metadata accessor for SummarySharingOnboardingError);
    }

    else
    {
    }
  }

LABEL_13:
  sub_1BA31151C();
  *(a2 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sendInviteCancellable) = 0;

  return result;
}

void sub_1BA310EB8(_BYTE *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v10, v10);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == 1)
  {
    v13 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectionFlowContext;
    memset(v23, 0, sizeof(v23));
    v24 = 0uLL;
    *&v25 = 0;
    *(&v25 + 1) = 10;
    LOBYTE(v26) = 7;

    sub_1B9FEEC64(a5, v23, 0, &v24);

    sub_1B9FF3BFC(v24, *(&v24 + 1), v25, *(&v25 + 1));
    v14 = MEMORY[0x1E69E6720];
    sub_1B9F0DEC0(v23, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA3132F0);
    v15 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 16];
    v24 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact];
    v25 = v15;
    v26 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 32];
    v16 = v24;
    v27 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 8];
    v23[0] = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 24];
    v17 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactPhotoPublisher];
    v18 = *&a2[v13];
    objc_allocWithZone(type metadata accessor for SummarySharingOnboardingInvitationSentViewController());
    v19 = v16;
    v20 = MEMORY[0x1E69E6158];
    sub_1BA3147F8(&v27, v22, &qword_1EDC6E410, MEMORY[0x1E69E6158], v14, sub_1BA3132F0);
    sub_1BA3147F8(v23, v22, &qword_1EDC6E410, v20, v14, sub_1BA3132F0);

    v21 = sub_1BA10F908(&v24, v17, v18);
    [a2 showViewController:v21 sender:0];
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BA311674(v12, a3, a4);
    sub_1BA3129E0(v12, type metadata accessor for SummarySharingOnboardingError);
  }
}

uint64_t sub_1BA311180()
{
  v1 = v0;
  v29[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_healthStore);
  v29[0] = 0;
  v9 = [v8 wheelchairUseWithError_];
  if (v9)
  {
    v10 = v9;
    v11 = v29[0];
    v12 = [v10 wheelchairUse] == 2;

    return 2 * v12;
  }

  else
  {
    v14 = v29[0];
    v15 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3DD8();
    v16 = v15;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = v20;
      *v19 = 136315394;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, v29);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v28 = v15;
      v24 = v15;
      sub_1B9F0D9AC(0, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v29);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Failed to get wheelchair use: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }
}

void sub_1BA311534(SEL *a1, char a2, SEL *a3)
{
  v7 = [v3 buttonTray];
  [v7 *a1];

  v8 = [v3 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    [v10 setUserInteractionEnabled_];
  }

  v11 = [v3 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 navigationBar];

    v14 = [objc_opt_self() *a3];
    [v13 setTintColor_];
  }

  sub_1BA312588(a2 & 1);
}

void sub_1BA311674(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v57 = a2;
  v61 = a1;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v54 - v13;
  v15 = sub_1BA4A3EA8();
  *&v60 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();

  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FA8();
  v58 = a3;

  v21 = os_log_type_enabled(v19, v20);
  v56 = ObjectType;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v59 = v4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v55 = v10;
    v25 = v24;
    *&v62[0] = v24;
    *v23 = 136315394;
    v26 = sub_1BA4A85D8();
    v28 = sub_1B9F0B82C(v26, v27, v62);
    v54 = v15;
    v29 = v28;

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1B9F0B82C(v57, v58, v62);
    _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] Received an error when sending invite to user with identifier %s", v23, 0x16u);
    swift_arrayDestroy();
    v30 = v25;
    v10 = v55;
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    v31 = v23;
    v4 = v59;
    MEMORY[0x1BFAF43A0](v31, -1, -1);

    (*(v60 + 8))(v18, v54);
  }

  else
  {

    (*(v60 + 8))(v18, v15);
  }

  sub_1B9FF0EE8();

  sub_1BA312978(v61, v14, type metadata accessor for SummarySharingOnboardingError);
  if (swift_getEnumCaseMultiPayload() != 1 || ((sub_1BA312978(v14, v10, type metadata accessor for SummarySharingOnboardingError), (*v10 - 727) <= 6) ? (v32 = ((1 << (*v10 + 41)) & 0x51) == 0) : (v32 = 1), v32))
  {
    if (qword_1EBBE87F8 != -1)
    {
      swift_once();
    }

    v50 = qword_1EBBF0690;
    v51 = *algn_1EBBF0698;
    v52 = swift_allocObject();
    *(v52 + 16) = v4;
    v53 = v4;
    sub_1BA0C6BA4(v53, v50, v51, 0, 0, MEMORY[0x1E69E7CC0], sub_1BA3128F0, v52);

    sub_1BA3129E0(v14, type metadata accessor for SummarySharingOnboardingError);
  }

  else
  {
    v33 = sub_1BA3129E0(v14, type metadata accessor for SummarySharingOnboardingError);
    v34 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 16];
    v62[0] = *&v4[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact];
    v62[1] = v34;
    v63 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 32];
    v35 = sub_1BA1FAFCC(v33);
    v59 = v4;
    v37 = v36;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], 1);
    v38 = swift_allocObject();
    v60 = xmmword_1BA4B5480;
    *(v38 + 16) = xmmword_1BA4B5480;
    v39 = MEMORY[0x1E69E6158];
    *(v38 + 56) = MEMORY[0x1E69E6158];
    v40 = sub_1B9F1BE20();
    *(v38 + 64) = v40;
    *(v38 + 32) = v35;
    *(v38 + 40) = v37;

    v61 = sub_1BA4A6768();
    v42 = v41;

    sub_1BA4A1318();
    v43 = swift_allocObject();
    *(v43 + 16) = v60;
    *(v43 + 56) = v39;
    *(v43 + 64) = v40;
    *(v43 + 32) = v35;
    *(v43 + 40) = v37;
    v44 = sub_1BA4A6768();
    v46 = v45;

    v47 = swift_allocObject();
    v48 = v59;
    *(v47 + 16) = v59;
    v49 = v48;
    static SummarySharingOnboardingErrorHandling.displayError(on:title:message:customActions:completion:)(v49, v61, v42, v44, v46, MEMORY[0x1E69E7CC0], sub_1BA31486C, v47, v56);
  }
}

double sub_1BA311D3C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_healthExperienceStore));

  return result;
}

double sub_1BA311F7C()
{
  swift_beginAccess();

  return result;
}

double sub_1BA311FC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *sub_1BA31207C()
{
  swift_beginAccess();
  swift_beginAccess();

  return sub_1BA0DF61C(v0);
}

void sub_1BA3120E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = a6;
  v39 = a8;
  v36 = a7;
  v37 = a5;
  v15 = a11;
  v16 = sub_1BA4A3A28();
  v40 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = v20;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v22 = *(a3 + 16);
  if (v22)
  {
    v32[0] = a9;
    v32[1] = a10;
    v33 = v20;
    v34 = a4;
    v35 = a11;
    aBlock[0] = MEMORY[0x1E69E7CC0];

    sub_1BA4A7F08();
    v23 = v40 + 16;
    v40 = *(v40 + 16);
    v24 = a3 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v25 = *(v23 + 56);
    do
    {
      (v40)(v19, v24, v16);
      sub_1BA4A3A18();
      (*(v23 - 8))(v19, v16);
      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      v24 += v25;
      --v22;
    }

    while (v22);
    a4 = v34;
    v15 = v35;
    v21 = v33;
  }

  else
  {
  }

  v26 = sub_1BA4A6758();
  if (v39)
  {
    v27 = sub_1BA4A6758();
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_1BA4A6758();
  sub_1B9F0ADF8(0, &qword_1EBBEB060, 0x1E696C428);
  v29 = sub_1BA4A6AE8();

  v30 = swift_allocObject();
  *(v30 + 16) = sub_1BA00CD30;
  *(v30 + 24) = v21;
  aBlock[4] = sub_1BA08FD48;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = &block_descriptor_85;
  v31 = _Block_copy(aBlock);

  [a4 inviteSharingDataWithIdentifier:v26 firstName:v27 lastName:v28 sharingAuthorizations:v29 userWheelchairMode:v15 completion:v31];
  _Block_release(v31);
}

void sub_1BA312464()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SummarySharingOnboardingSharingConfirmationViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setPreservesSuperviewLayoutMargins_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA312588(char a1)
{
  sub_1B9F12538();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(*(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_previewDataSource) + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingPreviewButtonDataSource_previewItem) + 136) = a1;
  *(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_alertsDataSource) + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = a1;
  *(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_topicsDataSource) + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = a1;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource);

    v12 = v11;
    sub_1BA4A4738();

    (*(*v10 + 296))(v8, 1, 1, 0, 0);

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BA3127B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_healthExperienceStore));

  return result;
}

id sub_1BA312828(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA312914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA312978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA3129E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA312A40(uint64_t a1)
{
  if (!qword_1EBBF0738)
  {
    sub_1BA312B24(255);
    sub_1BA312E34(255, &qword_1EBBEA138, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BED0]);
    sub_1BA312C8C(&qword_1EBBF0758, sub_1BA312B24, MEMORY[0x1E695BCF8]);
    sub_1BA312CD4();
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0738);
    }
  }
}

void sub_1BA312B24(uint64_t a1)
{
  if (!qword_1EBBF0740)
  {
    sub_1BA312BF4(255);
    sub_1B9F0D9AC(255, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    sub_1BA312C8C(&qword_1EBBF0750, sub_1BA312BF4, MEMORY[0x1E695BED8]);
    v1 = sub_1BA4A4B38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0740);
    }
  }
}

void sub_1BA312BF4(uint64_t a1)
{
  if (!qword_1EBBF0748)
  {
    sub_1BA312914(255, &qword_1EBBEA900, MEMORY[0x1E69A3910], MEMORY[0x1E69E62F8]);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0748);
    }
  }
}

uint64_t sub_1BA312C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BA312CD4()
{
  result = qword_1EBBEA140;
  if (!qword_1EBBEA140)
  {
    sub_1BA312E34(255, &qword_1EBBEA138, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA140);
  }

  return result;
}

void sub_1BA312D54(uint64_t a1)
{
  if (!qword_1EBBF0760)
  {
    sub_1BA312E34(255, &qword_1EDC5F4B0, MEMORY[0x1E69E6370], MEMORY[0x1E695BED0]);
    sub_1BA312A40(255);
    sub_1BA312EB8();
    sub_1BA312C8C(&qword_1EBBF0768, sub_1BA312A40, MEMORY[0x1E695BE40]);
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0760);
    }
  }
}

void sub_1BA312E34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    v9 = a4(a1, a3, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA312EB8()
{
  result = qword_1EDC5F4B8;
  if (!qword_1EDC5F4B8)
  {
    sub_1BA312E34(255, &qword_1EDC5F4B0, MEMORY[0x1E69E6370], MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F4B8);
  }

  return result;
}

void sub_1BA312F34(uint64_t a1)
{
  if (!qword_1EBBF0770)
  {
    sub_1BA312D54(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA312C8C(&qword_1EBBF0778, sub_1BA312D54, MEMORY[0x1E695BE40]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0770);
    }
  }
}

void sub_1BA313000(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF0780)
  {
    sub_1BA3130FC(255, &qword_1EBBEB0B0, &qword_1EBBEA900, MEMORY[0x1E69A3910], sub_1BA090BD8);
    sub_1BA3130FC(255, &qword_1EBBED7D8, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, sub_1BA1B466C);
    sub_1BA090C60();
    sub_1BA3131A0();
    v2 = sub_1BA4A4C28();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF0780);
    }
  }
}

void sub_1BA3130FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1BA312914(255, a3, a4, MEMORY[0x1E69E62F8]);
    a5();
    v7 = sub_1BA4A4C98();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA3131A0()
{
  result = qword_1EBBF0788;
  if (!qword_1EBBF0788)
  {
    sub_1BA3130FC(255, &qword_1EBBED7D8, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, sub_1BA1B466C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0788);
  }

  return result;
}

void sub_1BA313230(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF0790)
  {
    sub_1BA313000(255, a2);
    sub_1BA312C8C(&qword_1EBBF0798, sub_1BA313000, MEMORY[0x1E695BE40]);
    v2 = sub_1BA4A4C18();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF0790);
    }
  }
}

void sub_1BA3132F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BA31337C()
{
  result = qword_1EBBEB030;
  if (!qword_1EBBEB030)
  {
    sub_1BA312E34(255, &qword_1EBBEB028, MEMORY[0x1E69E6370], MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB030);
  }

  return result;
}

uint64_t sub_1BA3133F8(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1BA066E50(0, v11, 0);
    v13 = type metadata accessor for SummarySharingSelectableDataTypeCell();
    v12 = v24;
    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = a1 + v14;
    v16 = *(v3 + 72);
    do
    {
      sub_1BA312978(v15, v6, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA312978(v6, v10, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v23 = v13;
      sub_1BA091918();
      v17 = sub_1BA4A6808();
      v19 = v18;
      sub_1BA3129E0(v6, type metadata accessor for SummarySharingSelectableDataTypeItem);

      *v10 = v17;
      *(v10 + 1) = v19;
      v10[48] = 0;
      v24 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1BA066E50((v20 > 1), v21 + 1, 1);
        v12 = v24;
      }

      *(v12 + 16) = v21 + 1;
      sub_1BA025350(v10, v12 + v14 + v21 * v16);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return v12;
}

char *sub_1BA3135F8(uint64_t a1, void *a2, void *a3)
{
  sub_1BA312914(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v52 - v13;
  sub_1B9F0A534(a2, v3 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_healthExperienceStore);
  sub_1B9F0A534(a2, v69);
  type metadata accessor for SummarySharingPreviewButtonDataSource(0);
  swift_allocObject();
  v15 = sub_1BA093594(v69, a3);
  v67 = v3;
  v64 = a1;
  v65 = OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_previewDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_previewDataSource) = v15;
  sub_1BA3133F8(a1);

  v16 = type metadata accessor for SummarySharingSelectionFlow(0);
  swift_storeEnumTagMultiPayload();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v53 = v16;
  v61 = v17 + 56;
  v62 = v18;
  v18(v14, 0, 1, v16);
  v68 = a2;
  sub_1B9F0A534(a2, v69);
  if (qword_1EBBE83D8 != -1)
  {
    swift_once();
  }

  v19 = unk_1EBBECA00;
  v63 = qword_1EBBEC9F8;
  v20 = MEMORY[0x1E69E6720];
  v58 = sub_1BA312914;
  sub_1BA3147F8(v14, v10, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720], sub_1BA312914);
  sub_1BA312914(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v22 = v21;
  v23 = sub_1BA4A1C68();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v66 = v14;
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v52 = *(v24 + 80);
  v59 = v22;
  v56 = v26 + v25;
  v27 = swift_allocObject();
  v54 = xmmword_1BA4B5480;
  *(v27 + 16) = xmmword_1BA4B5480;
  v28 = *MEMORY[0x1E69A3B68];
  v29 = *(v24 + 104);
  v57 = v26;
  v60 = v23;
  v55 = v29;
  v29(v27 + v26, v28, v23);
  type metadata accessor for SummarySharingSelectedDataTypesDataSource(0);
  v30 = swift_allocObject();
  *(v30 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = 1;
  *(v30 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v69, v30 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);
  *(v30 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isEditable) = 0;
  v31 = (v30 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  *v31 = v63;
  v31[1] = v19;
  sub_1BA3147F8(v10, v30 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v20, v58);
  *(v30 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds) = v27;
  *(v30 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) = 1;
  v32 = (v30 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter);
  *v32 = 0;
  v32[1] = 0;

  v33 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA146B8C, 0);
  v63 = v10;
  sub_1B9F0DEC0(v10, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v20, sub_1BA312914);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v34 = v20;
  v35 = v66;
  sub_1B9F0DEC0(v66, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v34, sub_1BA312914);
  v58 = OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_topicsDataSource;
  *(v67 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_topicsDataSource) = v33;
  sub_1BA3133F8(v64);

  v36 = v53;
  swift_storeEnumTagMultiPayload();
  v62(v35, 0, 1, v36);
  sub_1B9F0A534(v68, v69);
  if (qword_1EBBE83E0 != -1)
  {
    swift_once();
  }

  v38 = qword_1EBBECA08;
  v37 = unk_1EBBECA10;
  v39 = MEMORY[0x1E69E6720];
  v40 = v35;
  v41 = v63;
  sub_1BA3147F8(v40, v63, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720], sub_1BA312914);
  v42 = swift_allocObject();
  *(v42 + 16) = v54;
  v55(v42 + v57, *MEMORY[0x1E69A3B90], v60);
  v43 = swift_allocObject();
  *(v43 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = 1;
  *(v43 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v69, v43 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);
  *(v43 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isEditable) = 0;
  v44 = (v43 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  *v44 = v38;
  v44[1] = v37;
  sub_1BA3147F8(v41, v43 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v39, sub_1BA312914);
  *(v43 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds) = v42;
  *(v43 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) = 1;
  v45 = (v43 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter);
  *v45 = 0;
  v45[1] = 0;

  v46 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA146B8C, 0);
  sub_1B9F0DEC0(v41, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v39, sub_1BA312914);
  __swift_destroy_boxed_opaque_existential_1(v69);
  sub_1B9F0DEC0(v66, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v39, sub_1BA312914);
  v47 = v67;
  *(v67 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_alertsDataSource) = v46;
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1BA4B9FD0;
  *(v48 + 32) = *(v47 + v65);
  *(v48 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v48 + 48) = v46;
  *(v48 + 56) = &protocol witness table for MutableArrayDataSource;
  *(v48 + 64) = *(v58 + v47);
  *(v48 + 72) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();

  v49 = CompoundSectionedDataSource.init(_:)(v48);
  v50 = CompoundDataSourceCollectionViewController.init(dataSource:)(v49);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return v50;
}

char *sub_1BA313E58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v77 = sub_1BA4A11C8();
  v14 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v15);
  v76 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sendInviteCancellable] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_cancellables] = MEMORY[0x1E69E7CC0];
  v82 = a4;
  sub_1B9F0A534(a4, &v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_healthExperienceStore]);
  v17 = *a1;
  v85[0] = *(a1 + 8);
  v18 = *(a1 + 32);
  v78 = *(a1 + 24);
  v19 = &v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact];
  v20 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 1) = v20;
  *(v19 + 4) = v18;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactPhotoPublisher] = a2;
  v21 = objc_allocWithZone(MEMORY[0x1E696C4F0]);
  v75 = v17;
  sub_1BA3147F8(v85, &v84, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1BA3132F0);
  v79 = v18;

  v22 = a5;

  v23 = [v21 initWithHealthStore_];
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sharingEntryStore] = v23;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_healthStore] = a5;
  v80 = a6;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectionFlowContext] = a6;
  swift_beginAccess();
  v81 = a3;
  v24 = *(a3 + 24);
  v25 = v24[2];
  if (v25)
  {
    v73 = v14;
    v74 = a1;
    v26 = sub_1BA0219CC(v25, 0);
    v27 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v72 = v26;
    sub_1BA023688(&v84, v26 + v28, v25, v24);
    v30 = v29;
    v31 = v84;
    v32 = v22;

    result = sub_1B9F52E48(v31);
    if (v30 != v25)
    {
      __break(1u);
      return result;
    }

    v14 = v73;
    v34 = v72;
  }

  else
  {
    v35 = v22;

    v34 = MEMORY[0x1E69E7CC0];
  }

  sub_1B9F0A534(v82, &v84);
  v36 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingSharingConfirmationViewController());
  v37 = v22;
  v38 = sub_1BA3135F8(v34, &v84, v37);

  v39 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_confirmationVC;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_confirmationVC] = v38;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedDataTypesContext] = v81;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactICloudIdentifier] = v85[0];
  sub_1BA3147F8(v85, &v84, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1BA3132F0);

  v40 = v76;
  sub_1BA4A7A18();
  LocalizedGeminiString(_:defaultValue:comment:options:)("SHARING_INVITATION_CONFIRMATION_SUBTITLE_%1$@_%2$@", 50, 2u, 0, 0xE000000000000000, "", 0, 2, v40);
  (*(v14 + 8))(v40, v77);
  v41 = qword_1EBBE87E8;
  v42 = *&v7[v39];
  if (v41 != -1)
  {
    swift_once();
  }

  sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], 1);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BA4B5460;
  v44 = sub_1BA1FAFCC(v43);
  v46 = v45;
  v47 = MEMORY[0x1E69E6158];
  *(v43 + 56) = MEMORY[0x1E69E6158];
  v48 = sub_1B9F1BE20();
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  *(v43 + 96) = v47;
  *(v43 + 104) = v48;
  v49 = v78;
  if (!v79)
  {
    v49 = 0;
  }

  v50 = 0xE000000000000000;
  if (v79)
  {
    v50 = v79;
  }

  *(v43 + 64) = v48;
  *(v43 + 72) = v49;
  *(v43 + 80) = v50;

  sub_1BA4A6768();

  *&v7[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v51 = &v7[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v51 = 0;
  v51[8] = 1;
  v52 = &v7[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v52 = 0;
  v52[8] = 1;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = v42;
  v53 = v42;
  v54 = sub_1BA4A6758();
  v55 = sub_1BA4A6758();

  v56 = type metadata accessor for OnboardingCollectionViewController();
  v83.receiver = v7;
  v83.super_class = v56;
  v57 = objc_msgSendSuper2(&v83, sel_initWithTitle_detailText_icon_contentLayout_, v54, v55, 0, 3);

  v58 = qword_1EBBE87F0;
  v59 = v57;
  if (v58 != -1)
  {
    swift_once();
  }

  v60 = sub_1BA4A6758();
  v61 = sub_1BA4A6758();

  sub_1BA200CB8();
  v84 = *(v81 + 48);
  v62 = MEMORY[0x1E695BF70];
  sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
  sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v62, MEMORY[0x1E695BF88]);
  v84 = sub_1BA4A4F98();
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1BA3147F0;
  *(v64 + 24) = v63;
  v65 = MEMORY[0x1E695BED0];
  sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
  sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v65, MEMORY[0x1E695BED8]);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1BA312914(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1BA091D04();
  sub_1BA4A4D38();
  swift_endAccess();

  v66 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_confirmationVC;
  *(*(*&v59[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_confirmationVC] + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_topicsDataSource) + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = &off_1F3816500;
  swift_unknownObjectWeakAssign();
  v67 = v59;

  sub_1BA146CA4();

  *(*(*&v59[v66] + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_alertsDataSource) + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = &off_1F3816500;
  swift_unknownObjectWeakAssign();
  v68 = v67;

  sub_1BA146CA4();

  *(*(*(*&v59[v66] + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_previewDataSource) + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingPreviewButtonDataSource_previewItem) + 152) = &off_1F38164F0;
  swift_unknownObjectWeakAssign();
  v69 = [v68 navigationItem];

  v70 = sub_1BA35FD3C();
  [v69 setTitleView_];

  __swift_destroy_boxed_opaque_existential_1(v82);
  return v68;
}

uint64_t sub_1BA3147F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t PlatformFeedItemActionContext.init(view:viewController:feedItemContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_1B9F1134C(a3, (a4 + 2));
}

uint64_t static PluginFeedItem.platformFeedItem<A, B>(viewType:actionHandlerType:actionHandlerUserData:uniqueIdentifier:userDataObject:contentKind:sourceProfile:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = a7;
  v33 = a8;
  v34 = a6;
  v35 = a5;
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v12 = sub_1BA4A1C68();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(ObjCClassFromMetadata);
  v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v31[1] = v20;
  v31[2] = v19;

  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v24 = sub_1BA314FE4(v32, AssociatedTypeWitness, AssociatedConformanceWitness, v23);
  v26 = v25;
  (*(v13 + 16))(v16, v33, v12);

  sub_1B9F6AD84(v24, v26);
  v27 = a9;
  sub_1BA4A1E28();
  sub_1BA4A1DA8();
  sub_1B9F6AD84(v36, v37);
  sub_1BA4A1E78();
  v28 = swift_getObjCClassFromMetadata();
  v29 = NSStringFromClass(v28);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A1EB8();
  return sub_1B9F6AC8C(v24, v26);
}

uint64_t PlatformFeedItemActionContext.feedItemContext.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_1B9F1134C(a1, v1 + 16);
}

uint64_t PlatformFeedItemActionContext.actionHandlerUserDataObject<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = v4[5];
  v10 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v9);
  v11 = (*(v10 + 16))(v9, v10);
  if (v12 >> 60 == 15)
  {
    v13 = *(*(a2 - 8) + 56);
    v14 = a4;
    v15 = 1;
  }

  else
  {
    v16 = v11;
    v17 = v12;
    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1BA4A0EA8();
    sub_1BA4A0E98();
    sub_1B9F6AC8C(v16, v17);

    v13 = *(*(a2 - 8) + 56);
    v14 = a4;
    v15 = 0;
  }

  return v13(v14, v15, 1, a2);
}

uint64_t sub_1BA314FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BA4A7AA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - v9;
  v11 = *(a2 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v14);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v16, v10, a2);
    sub_1BA4A0EE8();
    swift_allocObject();
    sub_1BA4A0ED8();
    v18 = sub_1BA4A0EC8();
    (*(v11 + 8))(v16, a2);

    return v18;
  }
}

uint64_t sub_1BA3152D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA31531C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1BA31539C(uint64_t a1)
{
  *(*v1 + 16) = a1;

  return result;
}

void *sub_1BA3153B0(uint64_t a1, void *a2)
{
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_project_value_buffer(v3, qword_1EDC6CBB8);
  return ListLayoutConfiguration.layout(for:)(a2);
}

uint64_t sub_1BA315420@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  v8 = v7;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v9 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v6, v8, 0, 0, 0, 0, v5, 0, 0);
  v11 = v10;
  a1[3] = v9;
  result = sub_1B9F0AF60(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v11;
  return result;
}

double sub_1BA3155E0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E48();

  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FC8();

  v10 = &OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    v27 = v2;
    *v11 = 136446467;
    swift_getMetatypeMetadata();
    v13 = sub_1BA4A6808();
    v15 = sub_1B9F0B82C(v13, v14, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2081;
    v16 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_resultsCache);
    swift_beginAccess();
    v27 = *(*__swift_project_boxed_opaque_existential_1(v16, v16[3]) + 16);
    sub_1BA31738C(0);

    v17 = sub_1BA4A6808();
    v19 = sub_1B9F0B82C(v17, v18, &v26);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1B9F07000, v8, v9, "[%{public}s]: Cached participants: %{private}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    v20 = v11;
    v10 = &OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore;
    MEMORY[0x1BFAF43A0](v20, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v21 = (v1 + v10[250]);
  swift_beginAccess();
  if (*(*__swift_project_boxed_opaque_existential_1(v21, v21[3]) + 16))
  {

    v24 = sub_1BA3158C8(v23);

    if (v24)
    {
      sub_1BA0E7F10(v24, 1);
    }
  }

  return result;
}

uint64_t sub_1BA3158C8(uint64_t a1)
{
  v44 = sub_1BA4A1798();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v38 = v1;
  v41 = 0x80000001BA4FD730;
  v40 = type metadata accessor for ProfileCollectionViewListCell();
  v7 = type metadata accessor for SharingParticipantDataSourceItem();
  v42 = (v3 + 8);
  v8 = (a1 + 40);
  v9 = MEMORY[0x1E69E7CC0];
  v39 = v7;
  do
  {
    v11 = *(v8 - 1);
    v10 = *v8;
    v12 = swift_allocObject();
    *&v45 = 0xD000000000000021;
    *(&v45 + 1) = v41;

    v13 = v43;
    sub_1BA4A1788();
    sub_1B9F0AF60(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = v44;
    v15 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v15);

    v16 = *v42;
    (*v42)(v13, v14);
    v17 = *(&v45 + 1);
    *(v12 + 16) = v45;
    *(v12 + 24) = v17;
    *(v12 + 48) = 0u;
    *(v12 + 32) = 0u;
    *&v45 = v40;
    sub_1B9F2E5DC(0, &qword_1EBBE9DA0, type metadata accessor for ProfileCollectionViewListCell);
    *(v12 + 64) = sub_1BA4A6808();
    *(v12 + 72) = v18;
    swift_beginAccess();
    *(v12 + 32) = v11;
    *(v12 + 40) = v10;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1BA27EFB4(0, v9[2] + 1, 1, v9);
    }

    v20 = v9[2];
    v19 = v9[3];
    v21 = v39;
    if (v20 >= v19 >> 1)
    {
      v9 = sub_1BA27EFB4((v19 > 1), v20 + 1, 1, v9);
    }

    v46 = v21;
    v47 = sub_1B9F0AF60(&qword_1EBBEFED8, type metadata accessor for SharingParticipantDataSourceItem, &protocol conformance descriptor for SharingParticipantDataSourceItem);
    *&v45 = v12;
    v9[2] = v20 + 1;
    sub_1B9F25598(&v45, &v9[5 * v20 + 4]);
    v8 += 2;
    --v6;
  }

  while (v6);
  v22 = type metadata accessor for RevokeSharingDataSourceItem();
  swift_allocObject();
  v23 = sub_1BA2AB780(0);
  swift_beginAccess();
  v24 = *(v23 + 96);
  v25 = *(v23 + 104);
  v26 = v38;
  *(v23 + 96) = sub_1BA3170B8;
  *(v23 + 104) = v26;

  sub_1B9F0E310(v24, v25);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1BA27EFB4(0, v9[2] + 1, 1, v9);
  }

  v28 = v9[2];
  v27 = v9[3];
  if (v28 >= v27 >> 1)
  {
    v9 = sub_1BA27EFB4((v27 > 1), v28 + 1, 1, v9);
  }

  v46 = v22;
  v47 = sub_1B9F0AF60(&qword_1EBBEFEF0, type metadata accessor for RevokeSharingDataSourceItem, &protocol conformance descriptor for RevokeSharingDataSourceItem);
  *&v45 = v23;
  v9[2] = v28 + 1;
  sub_1B9F25598(&v45, &v9[5 * v28 + 4]);
  sub_1BA0CF80C(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5480;
  v30 = sub_1B9FE4F98(v9);

  v31 = v43;
  sub_1BA4A1788();
  v32 = sub_1BA4A1748();
  v34 = v33;
  v16(v31, v44);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = v30;

  v36 = Array<A>.identifierToIndexDict()(v35);

  *(v29 + 56) = v36;
  *(v29 + 64) = v32;
  *(v29 + 72) = v34;

  return v29;
}

void sub_1BA315DDC(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_cloudShareSyncManager);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v8[4] = sub_1BA3170C0;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1BA454240;
  v8[3] = &block_descriptor_42_0;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v3 revokeAccessForAllShareParticipantsForSharingType:1 completion:v6];
  _Block_release(v6);
}

double sub_1BA315EEC(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_sharingParticipants) = a1;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BA315FB4(a1, a2);
  }

  return result;
}

uint64_t sub_1BA315FB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BA4A6478();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A64C8();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A1798();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v44 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_resultsCache;
  swift_beginAccess();
  v18 = *(v17 + 24);
  v19 = *(v17 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v20 = *(v19 + 16);

  v20(v21, v18, v19);
  swift_endAccess();
  if (a1 && (v22 = sub_1BA3158C8(a1)) != 0)
  {
    v23 = v22;
  }

  else if (*(v3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_lastKnownSharingState) != 1 || a2 == 0)
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (sub_1BA316FCC(a2))
    {
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v43 = sub_1BA4A1318();
      v26 = v25;
    }

    else
    {
      [objc_opt_self() wapiCapability];
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      sub_1BA4A1318();
      v43 = sub_1BA4A6768();
      v26 = v27;
    }

    sub_1BA0CF80C(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    v42 = xmmword_1BA4B5480;
    *(v23 + 16) = xmmword_1BA4B5480;
    sub_1B9F28360(0);
    v28 = swift_allocObject();
    *(v28 + 16) = v42;
    *(v28 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
    *(v28 + 64) = sub_1BA02090C();
    v29 = swift_allocObject();
    *(v28 + 32) = v29;
    aBlock[0] = type metadata accessor for EmptyStateCollectionViewCell();
    sub_1B9F2E5DC(0, &qword_1EDC6C3D0, type metadata accessor for EmptyStateCollectionViewCell);
    *(v29 + 16) = sub_1BA4A6808();
    *(v29 + 24) = v30;
    v31 = v44;
    *(v29 + 32) = v43;
    *(v29 + 40) = v26;
    *(v29 + 48) = 0;
    sub_1BA4A1788();
    v32 = sub_1BA4A1748();
    v34 = v33;
    (*(v45 + 8))(v31, v46);
    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

    v36 = Array<A>.identifierToIndexDict()(v35);

    *(v23 + 32) = 0;
    *(v23 + 40) = 0;
    *(v23 + 48) = v28;
    *(v23 + 56) = v36;
    *(v23 + 64) = v32;
    *(v23 + 72) = v34;
  }

  sub_1B9F38BF4();
  v37 = sub_1BA4A7308();
  v38 = swift_allocObject();
  *(v38 + 16) = v3;
  *(v38 + 24) = v23;
  aBlock[4] = sub_1BA316FC4;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_86;
  v39 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AF60(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F3F378(0);
  sub_1B9F0AF60(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
  v40 = v50;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v13, v9, v39);
  _Block_release(v39);

  (*(v49 + 8))(v9, v40);
  return (*(v47 + 8))(v13, v48);
}

uint64_t sub_1BA316698(uint64_t a1, uint64_t a2)
{
  result = sub_1BA0E7F10(a2, 1);
  v4 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler);
  if (v4)
  {
    v5 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler + 8);

    v4(v6);

    return sub_1B9F0E310(v4, v5);
  }

  return result;
}

uint64_t sub_1BA316710(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1BA4A6478();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A64C8();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A1798();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v40 = v7;
    if (a1)
    {
      sub_1BA0CF80C(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      v38 = xmmword_1BA4B5480;
      *(v22 + 16) = xmmword_1BA4B5480;
      sub_1B9F28360(0);
      v23 = swift_allocObject();
      v39 = v6;
      v24 = v23;
      *(v23 + 16) = v38;
      v25 = type metadata accessor for RevokeSharingDataSourceItem();
      swift_allocObject();
      v26 = sub_1BA2AB780(1);
      v24[7] = v25;
      v24[8] = sub_1B9F0AF60(&qword_1EBBEFEE0, type metadata accessor for RevokeSharingDataSourceItem, &protocol conformance descriptor for RevokeSharingDataSourceItem);
      v24[4] = v26;
      sub_1BA4A1788();
      v27 = sub_1BA4A1748();
      v29 = v28;
      (*(v16 + 8))(v19, v15);
      v30 = MEMORY[0x1E69E7CC0];
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v32 = Array<A>.identifierToIndexDict()(v31);

      *(v22 + 32) = 0;
      *(v22 + 40) = 0;
      *(v22 + 48) = v24;
      *(v22 + 56) = v32;
      v6 = v39;
      *(v22 + 64) = v27;
      *(v22 + 72) = v29;
      sub_1B9F38BF4();
      v33 = sub_1BA4A7308();
      v34 = swift_allocObject();
      *(v34 + 16) = v21;
      *(v34 + 24) = v22;
      v47 = sub_1BA3170D0;
      v48 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v45 = sub_1B9F0B040;
      v46 = &block_descriptor_54;
      v35 = _Block_copy(&aBlock);

      sub_1BA4A64A8();
      aBlock = v30;
    }

    else
    {
      sub_1B9F38BF4();
      v33 = sub_1BA4A7308();
      v36 = swift_allocObject();
      *(v36 + 16) = v21;
      *(v36 + 24) = a4;
      v47 = sub_1BA3170C8;
      v48 = v36;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v45 = sub_1B9F0B040;
      v46 = &block_descriptor_48;
      v35 = _Block_copy(&aBlock);

      v37 = a4;

      sub_1BA4A64A8();
      aBlock = MEMORY[0x1E69E7CC0];
    }

    sub_1B9F0AF60(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F3F378(0);
    sub_1B9F0AF60(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v14, v10, v35);
    _Block_release(v35);

    (*(v40 + 8))(v10, v6);
    return (*(v41 + 8))(v14, v42);
  }

  return result;
}

uint64_t sub_1BA316D04()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_resultsCache));
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler);
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler + 8);

  return sub_1B9F0E310(v1, v2);
}

uint64_t sub_1BA316D78()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_resultsCache));
  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler + 8));
  return v0;
}

uint64_t sub_1BA316E8C()
{
  sub_1BA316D78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharingParticipantDataSource(uint64_t a1)
{
  result = qword_1EBBF07D8;
  if (!qword_1EBBF07D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1BA316FCC(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1;
  sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
  type metadata accessor for HKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  sub_1B9F0AF60(&qword_1EBBE9090, type metadata accessor for HKError, &unk_1BA4B450C);
  v2 = sub_1BA4A1468();

  return v2 != 704;
}

void sub_1BA3170FC(void *a1)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A1318();
  sub_1BA4A1318();
  v2 = sub_1BA4A6758();

  v3 = [objc_opt_self() actionWithTitle:v2 style:0 handler:{0, 0x80000001BA4FD8F0}];

  v4 = sub_1BA4A6758();

  v5 = sub_1BA4A6758();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  [v6 addAction_];
  [a1 presentViewController:v6 animated:1 completion:0];
}

void sub_1BA31738C(uint64_t a1)
{
  if (!qword_1EBBF07E8)
  {
    sub_1BA0CF80C(255, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF07E8);
    }
  }
}

uint64_t PDFHorizontalSeparator.init(lineWidth:topMargin:bottomMargin:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = result;
  return result;
}

double PDFHorizontalSeparator.render(context:document:)(void *a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v27 = *v2;
  v28 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = [a1 CGContext];
  CGContextSaveGState(v6);
  v29.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v11 = CGRectGetMinX(v29) + 0.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v12 = v4 + CGRectGetMinY(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v13 = CGRectGetWidth(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v14 = CGRectGetHeight(v32);
  *(a2 + 168) = v11;
  *(a2 + 176) = v12;
  *(a2 + 184) = v13;
  *(a2 + 192) = v14 - v4;
  *(a2 + 200) = 0;
  CGContextSetLineWidth(v6, v27);
  sub_1BA069EC4(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  v33 = *(a2 + 168);
  *(v15 + 32) = v33.origin.x;
  *(v15 + 40) = v33.origin.y;
  MaxX = CGRectGetMaxX(v33);
  v17 = *(a2 + 176);
  *(v15 + 48) = MaxX;
  *(v15 + 56) = v17;
  sub_1BA4A6F08();

  CGContextSetStrokeColorWithColor(v6, v5);
  CGContextStrokePath(v6);
  CGContextRestoreGState(v6);
  v18 = *(a2 + 168);
  v19 = *(a2 + 176);
  v20 = *(a2 + 184);
  v21 = *(a2 + 192);
  v34.origin.x = v18;
  v34.origin.y = v19;
  v34.size.width = v20;
  v34.size.height = v21;
  v22 = CGRectGetMinX(v34) + 0.0;
  v35.origin.x = v18;
  v35.origin.y = v19;
  v35.size.width = v20;
  v35.size.height = v21;
  v23 = v27 + v28 + CGRectGetMinY(v35);
  v36.origin.x = v18;
  v36.origin.y = v19;
  v36.size.width = v20;
  v36.size.height = v21;
  v24 = CGRectGetWidth(v36);
  v37.origin.x = v18;
  v37.origin.y = v19;
  v37.size.width = v20;
  v37.size.height = v21;
  v25 = CGRectGetHeight(v37);

  result = v25 - (v27 + v28);
  *(a2 + 168) = v22;
  *(a2 + 176) = v23;
  *(a2 + 184) = v24;
  *(a2 + 192) = result;
  *(a2 + 200) = 0;
  return result;
}

uint64_t sub_1BA3176B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BA317700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL UIViewController.containsViewController<A>(ofType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 presentedViewController];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BA317998(a1, a2);

    if (v8)
    {
      return 1;
    }
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = v3;
    v13 = [v11 viewControllers];
    if (v13)
    {
      v14 = v13;
      sub_1B9F21ADC();
      v15 = sub_1BA4A6B08();

      v12 = v14;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = v3;
      v12 = [v17 viewControllers];
      sub_1B9F21ADC();
      v15 = sub_1BA4A6B08();
    }

    else
    {
      v12 = [v3 childViewControllers];
      sub_1B9F21ADC();
      v15 = sub_1BA4A6B08();
    }
  }

  if (v15 >> 62)
  {
LABEL_26:
    v19 = sub_1BA4A7CC8();
  }

  else
  {
    v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  do
  {
    v9 = v19 != v20;
    if (v19 == v20)
    {
      break;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1BFAF2860](v20, v15);
    }

    else
    {
      if (v20 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v21 = *(v15 + 8 * v20 + 32);
    }

    v22 = v21;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v23 = sub_1BA317998(a1, a2);

    ++v20;
  }

  while ((v23 & 1) == 0);

  return v9;
}

uint64_t sub_1BA317998(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BA4A7AA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - v8;
  v16 = v2;
  sub_1B9F21ADC();
  v2;
  v10 = swift_dynamicCast();
  v11 = *(*(a2 - 8) + 56);
  v12 = (v6 + 8);
  if (v10)
  {
    v13 = 1;
    v11(v9, 0, 1, a2);
    (*v12)(v9, v5);
  }

  else
  {
    v11(v9, 1, 1, a2);
    (*v12)(v9, v5);
    v13 = UIViewController.containsViewController<A>(ofType:)(a1, a2);
  }

  return v13 & 1;
}

UIImage *sub_1BA317B2C(void *a1, void *a2, double a3, double a4, CGFloat a5)
{
  if (!a2)
  {
    return 0;
  }

  v9 = a3 + a4;
  v10 = a3 + a4 + a5;
  v11 = a2;
  [v11 scale];
  v13 = v12;
  v16.width = v10;
  v16.height = a5;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v13);
  if (HKUILocaleIsRightToLeft())
  {
    [a1 drawInRect_];
    [v11 drawInRect:0 blendMode:a4 + a5 alpha:{0.0, a3, a5, 1.0}];
  }

  else
  {
    [v11 drawInRect_];
    [a1 drawInRect:0 blendMode:v9 alpha:{0.0, a5, a5, 1.0}];
  }

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

uint64_t sub_1BA317C48()
{
  v1 = *(v0 + 32);
  MEMORY[0x1BFAF1350](1835365449, 0xE400000000000000);
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  [v1 displayTypeIdentifier];
  type metadata accessor for HKDisplayTypeIdentifier(0);
  sub_1BA4A7FB8();
  return 0;
}

uint64_t sub_1BA317CDC(uint64_t a1)
{
  v2 = sub_1BA1B71E8();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA317D70(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA317DCC(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA095C04;
}

uint64_t sub_1BA317E64(uint64_t a1, void **a2)
{
  sub_1BA0CBC80(a1, v7, &qword_1EDC6E1A0, sub_1B9FCD918);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xA8))(v5);
  return sub_1B9F443A8(v7, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F0D08C);
}

uint64_t sub_1BA317F60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  return sub_1BA0CBC80(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA317FD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v4);
  return sub_1B9F443A8(a1, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F0D08C);
}

uint64_t (*sub_1BA3180B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA318118;
}

uint64_t sub_1BA318118(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0xA8))(result);
  }

  return result;
}

BOOL sub_1BA31817C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  sub_1BA0CBC80(v0 + v1, v7, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v8)
  {
    sub_1B9F443A8(v7, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F0D08C);
    return 0;
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = HKUnitPreferenceControllerAvailableUnitsForDisplayType();
  sub_1BA1B75A0();
  sub_1BA319C2C(&qword_1EDC6B4C8, sub_1BA1B75A0, MEMORY[0x1E69E81B8]);
  v3 = sub_1BA4A6D78();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1BA4A7CC8();
  }

  else
  {

    v4 = *(v3 + 16);
  }

  return v4 > 1;
}

id DataTypeDetailUnitCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DataTypeDetailUnitCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item];
  v10 = type metadata accessor for DataTypeDetailUnitCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v16.receiver = v4;
  v16.super_class = v10;
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  [v14 addObserver:v13 selector:sel_configureCell name:*MEMORY[0x1E696BE70] object:0];

  return v13;
}

id DataTypeDetailUnitCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DataTypeDetailUnitCell.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA318658()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v75 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1B9F0D08C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v72 = &v61 - v9;
  v10 = sub_1BA4A3FB8();
  v73 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A3F18();
  v70 = *(v14 - 8);
  v71 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D08C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], v6);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v61 - v20;
  v22 = sub_1BA4A4428();
  v76 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  sub_1BA0CBC80(v1 + v26, v78, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v79)
  {
    return sub_1B9F443A8(v78, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F0D08C);
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if (result)
  {
    v65 = v13;
    v63 = v10;
    v66 = v3;
    v67 = v2;
    v28 = v77[2];
    v64 = v77[1];
    v29 = v77[3];
    v68 = v77[4];
    sub_1BA4A4418();
    if (v29)
    {
      sub_1B9F216C8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1BA4B5480;
      *(v30 + 32) = v28;
      *(v30 + 40) = v29;

      v31 = sub_1BA4A6AE8();

      v32 = HKUIJoinStringsForAutomationIdentifier();

      [v1 setAccessibilityIdentifier_];
    }

    else
    {
      v33 = [v1 setAccessibilityIdentifier_];
    }

    v34 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))(v33);
    v69 = v22;
    if (v34)
    {
      v35 = v34;
      v36 = [v34 resolvedHealthToolbox];
    }

    else
    {
      v36 = 0;
    }

    v37 = v65;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v65 = v29;
    sub_1BA4A1318();
    sub_1BA4A43B8();
    v62 = v36;
    if (v36)
    {
      v38 = [v36 localizedUnitDisplayNameForDisplayType:v68 nameContext:2];
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }

    v39 = v63;
    sub_1BA4A41A8();
    v40 = v69;
    v79 = v69;
    v80 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
    (*(v76 + 16))(boxed_opaque_existential_1, v25, v40);
    MEMORY[0x1BFAF1EF0](v78);
    sub_1BA4A4158();
    v42 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_1BA4A4118();
    v43 = sub_1BA4A4168();
    (*(*(v43 - 8) + 56))(v21, 0, 1, v43);
    MEMORY[0x1BFAF1F10](v21);
    if (sub_1BA31817C())
    {
      sub_1B9F0D08C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
      sub_1BA4A3FE8();
      *(swift_allocObject() + 16) = xmmword_1BA4B5480;
      v45 = v70;
      v44 = v71;
      (*(v70 + 104))(v17, *MEMORY[0x1E69DBF28], v71);
      v46 = sub_1BA4A3F48();
      (*(*(v46 - 8) + 56))(v72, 1, 1, v46);
      sub_1BA4A3FA8();
      sub_1BA4A3F78();
      (*(v73 + 8))(v37, v39);
      (*(v45 + 8))(v17, v44);
    }

    sub_1BA4A75F8();
    v47 = v67;
    v48 = v75;
    v49 = v62;
    sub_1BA4A3DD8();
    v50 = sub_1BA4A3E88();
    v51 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v77[0] = v53;
      *v52 = 136315394;
      v54 = sub_1BA4A85D8();
      v56 = sub_1B9F0B82C(v54, v55, v77);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      swift_beginAccess();
      sub_1BA319C2C(&qword_1EDC5F8A8, MEMORY[0x1E69DC118], MEMORY[0x1E69DC120]);
      v57 = v69;
      v58 = sub_1BA4A82D8();
      v60 = sub_1B9F0B82C(v58, v59, v77);

      *(v52 + 14) = v60;
      _os_log_impl(&dword_1B9F07000, v50, v51, "[%s]: itemUpdated() to text %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v53, -1, -1);
      MEMORY[0x1BFAF43A0](v52, -1, -1);

      (*(v66 + 8))(v75, v47);
      return (*(v76 + 8))(v25, v57);
    }

    else
    {

      (*(v66 + 8))(v48, v47);
      return (*(v76 + 8))(v25, v69);
    }
  }

  return result;
}

uint64_t sub_1BA31917C()
{
  v1 = v0;
  sub_1B9F0D08C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16[-v8];
  v10 = sub_1BA4A40A8();
  v11 = type metadata accessor for DataTypeDetailUnitCell();
  v17.receiver = v1;
  v17.super_class = v11;
  objc_msgSendSuper2(&v17, sel__bridgedUpdateConfigurationUsingState_, v10);

  MEMORY[0x1BFAF1F00]();
  v12 = sub_1BA4A4168();
  if ((*(*(v12 - 8) + 48))(v9, 1, v12))
  {
    v13 = MEMORY[0x1E69DC0D8];
    sub_1BA0CBC80(v9, v5, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v5);
    return sub_1B9F443A8(v9, &qword_1EDC6B770, v13, MEMORY[0x1E69E6720], sub_1B9F0D08C);
  }

  else
  {
    v15 = [v1 traitCollection];
    sub_1B9F3AEE8();
    sub_1BA4A7358();

    v16[14] = v16[15];
    Presentation.cellBackgroundColor(for:)();
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v9);
  }
}

id DataTypeDetailUnitCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailUnitCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA3195A8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  return sub_1B9FCDD98;
}

void sub_1BA319698(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  sub_1BA0CBC80(v1 + v3, &v15, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!*(&v16 + 1))
  {
    goto LABEL_10;
  }

  sub_1B9FCD918();
  if (swift_dynamicCast())
  {
    v4 = HKUnitPreferenceControllerAvailableUnitsForDisplayType();
    sub_1BA1B75A0();
    sub_1BA319C2C(&qword_1EDC6B4C8, sub_1BA1B75A0, MEMORY[0x1E69E81B8]);
    v5 = sub_1BA4A6D78();

    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = sub_1BA4A7CC8();
    }

    else
    {

      v6 = *(v5 + 16);
    }

    if (v6 > 1)
    {
      sub_1BA0CBC80(v1 + v3, &v15, &qword_1EDC6E1A0, sub_1B9FCD918);
      if (*(&v16 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v7 = [a1 resolvedHealthToolbox];
        v8 = [v14 objectType];
        v9 = [v7 createUnitPreferencesController_];

        v15 = 0u;
        v16 = 0u;
        sub_1BA4A7238();

        v10 = &qword_1EDC6E300;
        v11 = MEMORY[0x1E69E6720];
        v12 = sub_1B9F216C8;
        v13 = (MEMORY[0x1E69E7CA0] + 8);
        goto LABEL_11;
      }

LABEL_10:
      v10 = &qword_1EDC6E1A0;
      v13 = sub_1B9FCD918;
      v11 = MEMORY[0x1E69E6720];
      v12 = sub_1B9F0D08C;
LABEL_11:
      sub_1B9F443A8(&v15, v10, v13, v11, v12);
    }
  }
}

unint64_t sub_1BA319BD8()
{
  result = qword_1EDC67260;
  if (!qword_1EDC67260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67260);
  }

  return result;
}

uint64_t sub_1BA319C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BA319C74()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v30 - v8;
  sub_1BA4A3DD8();
  v10 = v0;
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v1;
    v14 = v5;
    v15 = v2;
    v16 = v13;
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136446210;
    v18 = UIViewController.resolutionDebugDescription.getter();
    v20 = sub_1B9F0B82C(v18, v19, &v31);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1B9F07000, v11, v12, "View Controller is NOT in a hierarchy, sourcing from the window's root view controller, %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    v21 = v16;
    v2 = v15;
    v5 = v14;
    v1 = v30;
    MEMORY[0x1BFAF43A0](v21, -1, -1);
  }

  v22 = *(v2 + 8);
  v22(v9, v1);
  result = [v10 tabBarController];
  if (!result)
  {
    result = [v10 view];
    if (result)
    {
      v24 = result;
      v25 = [result window];

      v26 = [v25 rootViewController];
      if (v26)
      {
        return v26;
      }

      else
      {
        sub_1BA4A3DD8();
        v27 = sub_1BA4A3E88();
        v28 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1B9F07000, v27, v28, "No Root View Controller could be found, view is not in window", v29, 2u);
          MEMORY[0x1BFAF43A0](v29, -1, -1);
        }

        v22(v5, v1);
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BA319F7C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9F600B4();
  if (!result)
  {
    sub_1BA4A3DD8();
    v7 = v0;
    v8 = sub_1BA4A3E88();
    v9 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      v12 = UIViewController.resolutionDebugDescription.getter();
      v14 = sub_1B9F0B82C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1B9F07000, v8, v9, "resolvedHealthStore requested, but none found in hierarchy: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return result;
}

double sub_1BA31A13C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F60C24(&v18);
  if (v19)
  {
    sub_1B9F25598(&v18, a1);
  }

  else
  {
    sub_1B9F43A50(&v18, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    sub_1BA4A3DD8();
    v9 = v1;
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v18 = v13;
      *v12 = 136446210;
      v14 = UIViewController.resolutionDebugDescription.getter();
      v16 = sub_1B9F0B82C(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1B9F07000, v10, v11, "resolvedPinnedContentManager requested, but none found in hierarchy: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t DeviceSourcesDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *sub_1BA31A394(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0xD00000000000001CLL;
  v22 = 0x80000001BA4FDAE0;
  sub_1BA4A1788();
  sub_1BA31AC10(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v9 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v9);

  (*(v5 + 8))(v8, v4);
  v10 = v22;
  *(v1 + 16) = v21;
  *(v1 + 24) = v10;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = sub_1BA4A1318();
  *(v1 + 40) = v11;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  v21 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v1 + 80) = sub_1BA4A6808();
  *(v1 + 88) = v12;
  sub_1B9F25350();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v13 + 40) = v14;
  *(v13 + 48) = 0xD000000000000011;
  *(v13 + 56) = 0x80000001BA4FDB60;
  v15 = sub_1BA4A6AE8();

  v16 = HKUIJoinStringsForAutomationIdentifier();

  if (v16)
  {
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v2[12] = v17;
  v2[13] = v19;
  v2[9] = a1;
  return v2;
}

uint64_t DeviceSourcesDataSourceItem.deinit()
{

  return v0;
}

uint64_t DeviceSourcesDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA31A710(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void sub_1BA31A774(void *a1)
{
  type metadata accessor for ProfileViewController();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    v11 = [a1 navigationController];
    if (!v11)
    {
      return;
    }

    v10 = v11;
    v15 = 2;
    v12 = objc_allocWithZone(type metadata accessor for SourcesViewController());
    v13 = SourcesViewController.init(sourceType:profileName:)(&v15, 0, 0);
    [v10 pushViewController_animated_];
    goto LABEL_6;
  }

  v3 = v2;
  v13 = a1;
  v4 = [v3 navigationController];
  if (v4)
  {
    v5 = v4;
    v14 = 2;
    v6 = sub_1BA388464();
    v8 = v7;
    v9 = objc_allocWithZone(type metadata accessor for SourcesViewController());
    v10 = SourcesViewController.init(sourceType:profileName:)(&v14, v6, v8);
    [v5 pushViewController:v10 animated:1];

LABEL_6:
  }
}

uint64_t sub_1BA31A940(uint64_t a1, uint64_t a2)
{
  result = sub_1BA31AC10(&qword_1EBBEAF50, a2, type metadata accessor for DeviceSourcesDataSourceItem, &protocol conformance descriptor for DeviceSourcesDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA31AC10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *TitleWithSubHeadingView.__allocating_init(frame:headingLabelText:subHeadingLabelText:textColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v14 = [objc_allocWithZone(v10) initWithFrame_];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
  v16 = *&v14[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel];
  v17 = v14;
  v18 = v16;
  if (a2)
  {
    v19 = sub_1BA4A6758();
  }

  else
  {
    v19 = 0;
  }

  [v16 setText_];

  v20 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
  v21 = *&v14[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel];
  v22 = v21;
  if (a4)
  {
    v23 = sub_1BA4A6758();
  }

  else
  {
    v23 = 0;
  }

  [v21 setText_];

  v24 = *&v14[v15];
  v25 = a5;
  [v24 setTextColor_];
  v26 = *&v14[v20];

  [v26 setTextColor_];
  return v14;
}

id TitleWithSubHeadingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TitleWithSubHeadingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for TitleWithSubHeadingView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA31B1C4();

  return v11;
}

id TitleWithSubHeadingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TitleWithSubHeadingView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1BA4A8018();
  __break(1u);
}

id sub_1BA31B1C4()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v100 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v99 = &v93[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v93[-v7];
  v9 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel];
  v11 = *MEMORY[0x1E69DDD80];
  v12 = *MEMORY[0x1E69DDC70];
  v13 = objc_opt_self();
  v14 = [v13 traitCollectionWithPreferredContentSizeCategory_];
  v101 = objc_opt_self();
  v15 = [v101 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:v14];
  v16 = [v15 fontDescriptorWithSymbolicTraits_];

  if (v16)
  {
    v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];

    v18 = v101;
  }

  else
  {
    sub_1BA4A3DD8();
    v19 = v11;
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v98 = v19;
      v23 = v22;
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v104 = v96;
      *v23 = 136315906;
      v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v94 = v21;
      v26 = sub_1B9F0B82C(v24, v25, &v104);
      v97 = v2;
      v27 = v26;

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v102 = 0;
      v103 = 1;
      sub_1BA1508E8(0);
      v28 = sub_1BA4A6808();
      v30 = sub_1B9F0B82C(v28, v29, &v104);

      *(v23 + 14) = v30;
      *(v23 + 22) = 2080;
      LODWORD(v102) = 2;
      type metadata accessor for SymbolicTraits(0);
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v104);
      v2 = v97;

      *(v23 + 24) = v33;
      *(v23 + 32) = 2112;
      v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v23 + 34) = v34;
      v35 = v95;
      *v95 = v34;
      _os_log_impl(&dword_1B9F07000, v20, v94, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v23, 0x2Au);
      sub_1B9F8C6C8(v35);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      v36 = v96;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      v37 = v23;
      v19 = v98;
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    (*(v100 + 8))(v8, v2);
    v18 = v101;
    v38 = [v101 preferredFontDescriptorWithTextStyle_];
    v17 = [objc_opt_self() fontWithDescriptor:v38 size:0.0];
  }

  [v10 setFont_];

  [v10 setTextAlignment_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v39 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel];
  v40 = *MEMORY[0x1E69DDD28];
  v41 = [v13 traitCollectionWithPreferredContentSizeCategory_];
  v42 = [v18 preferredFontDescriptorWithTextStyle:v40 compatibleWithTraitCollection:v41];
  if (v42)
  {
    v43 = v42;
    v44 = v10;
    v45 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
  }

  else
  {
    v46 = v99;
    sub_1BA4A3DD8();
    v47 = v40;
    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FB8();
    v98 = v47;

    v44 = v10;
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v104 = v96;
      *v50 = 136315906;
      v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v97 = v2;
      v53 = sub_1B9F0B82C(v51, v52, &v104);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v102 = 0;
      v103 = 1;
      sub_1BA1508E8(0);
      v54 = sub_1BA4A6808();
      v56 = sub_1B9F0B82C(v54, v55, &v104);

      *(v50 + 14) = v56;
      *(v50 + 22) = 2080;
      LODWORD(v102) = 0;
      type metadata accessor for SymbolicTraits(0);
      v57 = sub_1BA4A6808();
      v59 = sub_1B9F0B82C(v57, v58, &v104);

      *(v50 + 24) = v59;
      v18 = v101;
      *(v50 + 32) = 2112;
      v60 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v50 + 34) = v60;
      v61 = v95;
      *v95 = v60;
      _os_log_impl(&dword_1B9F07000, v48, v49, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v50, 0x2Au);
      sub_1B9F8C6C8(v61);
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      v62 = v96;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v62, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);

      (*(v100 + 8))(v99, v97);
    }

    else
    {

      (*(v100 + 8))(v46, v2);
    }

    v63 = [v18 preferredFontDescriptorWithTextStyle_];
    v45 = [objc_opt_self() fontWithDescriptor:v63 size:0.0];
    v43 = v41;
    v41 = v63;
  }

  v64 = v45;

  [v39 setFont_];
  [v39 setTextAlignment_];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  sub_1B9F109F8();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1BA4B8B60;
  v66 = [v44 topAnchor];
  v67 = [v1 topAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v65 + 32) = v68;
  v69 = [v44 leadingAnchor];
  v70 = [v1 &selRef__totalDistance + 1];
  v71 = [v69 &selRef:v70 numberWithInteger:? + 5];

  *(v65 + 40) = v71;
  v72 = [v44 trailingAnchor];
  v73 = [v1 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v74 = [v72 &selRef:v73 numberWithInteger:? + 5];

  *(v65 + 48) = v74;
  v75 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v76 = sub_1BA4A6AE8();

  [v75 activateConstraints_];

  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1BA4B5890;
  v78 = [v39 topAnchor];
  v79 = [v44 bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:2.0];

  *(v77 + 32) = v80;
  v81 = [v1 bottomAnchor];
  v82 = [v39 bottomAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:2.0];

  *(v77 + 40) = v83;
  v84 = [v39 leadingAnchor];
  v85 = [v1 leadingAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v77 + 48) = v86;
  v87 = [v39 trailingAnchor];
  v88 = [v1 trailingAnchor];
  v89 = [v87 constraintEqualToAnchor_];

  *(v77 + 56) = v89;
  v90 = sub_1BA4A6AE8();

  [v75 activateConstraints_];

  LODWORD(v91) = 1144750080;
  return [v1 setContentHuggingPriority:0 forAxis:v91];
}

void sub_1BA31BD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel);
  if (a2)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];

  v8 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel);
  if (a4)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v8 setText_];
}

id TitleWithSubHeadingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleWithSubHeadingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA31BF2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.resolvedDataSource.getter(a1, WitnessTable);
}

BOOL sub_1BA31BF80(uint64_t a1)
{
  swift_getWitnessTable();

  return DataSourceWrapper.isReorderable()();
}

uint64_t sub_1BA31BFD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.changeObservers.getter(a1, WitnessTable);
}

uint64_t sub_1BA31C040(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.resolvedDataSource.getter(a1, WitnessTable);
}

BOOL sub_1BA31C0A0(uint64_t a1)
{
  swift_getWitnessTable();

  return DataSourceWrapper.isReorderable()();
}

uint64_t sub_1BA31C0F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.resolvedDataSource.getter(a1, WitnessTable);
}

BOOL sub_1BA31C160(uint64_t a1)
{
  swift_getWitnessTable();

  return DataSourceWrapper.isReorderable()();
}

uint64_t sub_1BA31C1B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.changeObservers.getter(a1, WitnessTable);
}

uint64_t sub_1BA31C22C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A2888();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A2FF8();
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v40 = &v36 - v13;
  v14 = UIViewController.resolvedHealthStore.getter();
  if (v14)
  {
    v15 = v14;
    v16 = v40;
    sub_1BA4A2FE8();
    UIViewController.resolvedHealthExperienceStore.getter(&v42);
    v17 = *(v3 + 16);
    v17(v6, &v0[OBJC_IVAR____TtC18HealthExperienceUI41ProfileSharingYouShouldKnowViewController_profileBeingShared], v2);
    v38 = v0;
    v36 = v3;
    v18 = *(v39 + 16);
    v19 = v16;
    v20 = v2;
    v18(v10, v19, v7);
    v21 = objc_allocWithZone(type metadata accessor for ProfileSharingInvitationSentViewController(0));
    v37 = v6;
    v17(&v21[OBJC_IVAR____TtC18HealthExperienceUI42ProfileSharingInvitationSentViewController_profileBeingShared], v6, v2);
    v18(&v21[OBJC_IVAR____TtC18HealthExperienceUI42ProfileSharingInvitationSentViewController_profileReceivingSharedProfile], v10, v7);
    v22 = qword_1EBBE8238;
    v23 = v15;
    if (v22 != -1)
    {
      swift_once();
    }

    *&v21[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
    *&v21[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
    *&v21[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
    v24 = sub_1BA4A6758();
    v25 = sub_1BA4A6758();
    Button = type metadata accessor for OnboardingViewControllerWithNextButton();
    v41.receiver = v21;
    v41.super_class = Button;
    v27 = objc_msgSendSuper2(&v41, sel_initWithTitle_detailText_icon_contentLayout_, v24, v25, 0, 3);

    v28 = v27;
    v29 = [v28 headerView];
    LODWORD(v30) = 1036831949;
    [v29 setTitleHyphenationFactor_];

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0xB8))(1);
    v31 = *(v39 + 8);
    v31(v10, v7);
    (*(v36 + 8))(v37, v20);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    [v38 showViewController:v28 sender:0];

    return (v31)(v40, v7);
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v42 = ObjectType;
    swift_getMetatypeMetadata();
    v33 = sub_1BA4A6808();
    v35 = v34;

    v42 = v33;
    v43 = v35;
    MEMORY[0x1BFAF1350](0xD000000000000020, 0x80000001BA4EC310);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

double sub_1BA31C734()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI41ProfileSharingYouShouldKnowViewController_profileBeingShared;
  v2 = sub_1BA4A2888();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

id sub_1BA31C7AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSharingYouShouldKnowViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProfileSharingYouShouldKnowViewController(uint64_t a1)
{
  result = qword_1EBBF0818;
  if (!qword_1EBBF0818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA31C8B4(uint64_t a1)
{
  result = sub_1BA4A2888();
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

void *sub_1BA31C950(void *a1, uint64_t a2)
{
  sub_1BA31CEB0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B9FD0;
  if (qword_1EBBE8208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBC09300;
  v5 = *algn_1EBC09308;
  v7 = qword_1EBBE8210;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBC09310;
  v9 = *algn_1EBC09318;

  v10 = sub_1BA4A6AE8();
  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  *(v4 + 48) = v8;
  *(v4 + 56) = v9;
  *(v4 + 64) = v12;
  *(v4 + 72) = v14;
  if (qword_1EBBE8218 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBC09320;
  v15 = *algn_1EBC09328;
  v17 = qword_1EBBE8220;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBC09330;
  v19 = *algn_1EBC09338;

  v20 = sub_1BA4A6AE8();
  v21 = HKUIJoinStringsForAutomationIdentifier();

  if (v21)
  {
    v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  *(v4 + 80) = v16;
  *(v4 + 88) = v15;
  *(v4 + 96) = v18;
  *(v4 + 104) = v19;
  *(v4 + 112) = v22;
  *(v4 + 120) = v24;
  if (qword_1EBBE8228 != -1)
  {
    swift_once();
  }

  v26 = qword_1EBC09340;
  v25 = *algn_1EBC09348;
  v27 = qword_1EBBE8230;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_1EBC09350;
  v29 = *algn_1EBC09358;

  v30 = sub_1BA4A6AE8();
  v31 = HKUIJoinStringsForAutomationIdentifier();

  if (v31)
  {
    v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = OBJC_IVAR____TtC18HealthExperienceUI41ProfileSharingYouShouldKnowViewController_profileSharingStackedItems;
  *(v4 + 128) = v26;
  *(v4 + 136) = v25;
  *(v4 + 144) = v28;
  *(v4 + 152) = v29;
  *(v4 + 160) = v32;
  *(v4 + 168) = v34;
  *&v2[v35] = v4;
  v36 = OBJC_IVAR____TtC18HealthExperienceUI41ProfileSharingYouShouldKnowViewController_profileBeingShared;
  v37 = sub_1BA4A2888();
  v38 = *(v37 - 8);
  (*(v38 + 16))(&v2[v36], a2, v37);
  if (qword_1EBBE8200 != -1)
  {
    swift_once();
  }

  v39 = *&v2[v35];
  v40 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate] = 1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_isAnimating] = 0;
  v41 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_backgroundViews] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_titleToItemsTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_horizontalConstraints] = v41;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_stackedItems] = v39;
  v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldNextButtonDisplayContinueOnLastItem] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldUseDynamicHorizontalMargins] = 0;
  *&v2[v40] = *(v39 + 16) != 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;

  v42 = sub_1BA4A6758();
  v49.receiver = v2;
  v49.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v43 = objc_msgSendSuper2(&v49, sel_initWithTitle_detailText_icon_contentLayout_, v42, 0, 0, 3);

  v44 = v43;
  v45 = [v44 headerView];
  LODWORD(v46) = 1036831949;
  [v45 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v44) + 0xB8))(0);
  (*(v38 + 8))(a2, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v44;
}

void sub_1BA31CEB0()
{
  if (!qword_1EBBF0828)
  {
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0828);
    }
  }
}

uint64_t PluginFeedItem.ContentConfigurationCellType.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

void static PluginFeedItem.makeContentConfigurationFeedItem<A, B>(cellType:configurationProvider:viewModel:actionHandlerType:actionHandlerUserData:uniqueIdentifier:contentKind:sourceProfile:baseAutomationIdentifier:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36 = a5;
  v37 = a6;
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v41 = a7;
  v16 = sub_1BA4A1C68();
  v34 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  type metadata accessor for PlatformConfigurationProvider(0, a12, a14, v20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = NSStringFromClass(ObjCClassFromMetadata);
  v33[2] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = *(AssociatedConformanceWitness + 16);
  v25 = swift_checkMetadataState();
  v26 = v24(v25, AssociatedConformanceWitness);
  if (v14)
  {
  }

  else
  {
    v28 = v26;
    v29 = v27;
    v33[1] = a10;
    (*(v34 + 16))(v19, a8, v16);
    sub_1B9F206D4(v28, v29);
    v30 = a9;

    sub_1BA4A1E28();
    v31 = swift_getObjCClassFromMetadata();
    v32 = NSStringFromClass(v31);
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A1EB8();
    sub_1B9F6AD84(v39, v40);
    sub_1BA4A1E78();

    sub_1BA4A1ED8();
    sub_1B9F2BB4C(v28, v29);
  }
}

void static PluginFeedItem.makePlatformHostingConfigurationFeedItem<A>(cellType:pluginView:viewModel:actionHandlerUserData:uniqueIdentifier:contentKind:sourceProfile:baseAutomationIdentifier:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a6;
  v38 = a4;
  v39 = a5;
  v40 = a2;
  v41 = a3;
  v42 = a7;
  v36 = sub_1BA4A1C68();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  v17 = type metadata accessor for PlatformCellHostingConfiguration(255, a11, a12, v16);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for PlatformConfigurationProvider(0, v17, WitnessTable, v19);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = NSStringFromClass(ObjCClassFromMetadata);
  v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = *(AssociatedConformanceWitness + 16);
  v24 = swift_checkMetadataState();
  v25 = v43;
  v26 = v23(v24, AssociatedConformanceWitness);
  if (v25)
  {
  }

  else
  {
    v28 = v26;
    v29 = v27;
    v43 = a9;
    (*(v34 + 16))(v15, v37, v36);
    sub_1B9F206D4(v28, v29);
    v30 = a8;

    sub_1BA4A1E28();
    swift_getAssociatedTypeWitness();
    v31 = swift_getObjCClassFromMetadata();
    v32 = NSStringFromClass(v31);
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A1EB8();
    sub_1B9F6AD84(v40, v41);
    sub_1BA4A1E78();

    sub_1BA4A1ED8();
    sub_1B9F2BB4C(v28, v29);
  }
}

unint64_t sub_1BA31D550()
{
  result = qword_1EBBF0830;
  if (!qword_1EBBF0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0830);
  }

  return result;
}

uint64_t sub_1BA31D5B4()
{
  sub_1B9F65DE4(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v15[-1] - v8;
  MEMORY[0x1BFAF1F00](v7);
  v10 = sub_1BA4A4168();
  if ((*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    sub_1B9F66128(v9, v4);
    MEMORY[0x1BFAF1F10](v4);
    sub_1B9F66560(v9);
  }

  else
  {
    v11 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v9);
  }

  v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v15[3] = sub_1BA4A4428();
  v15[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v15);
  v12();
  return MEMORY[0x1BFAF1EF0](v15);
}

uint64_t sub_1BA31D748@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA31D7A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v4);
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA31D854(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA31D8B8;
}

uint64_t sub_1BA31D8B8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x80))(result);
  }

  return result;
}

uint64_t sub_1BA31D91C()
{
  MEMORY[0x1BFAF2040]();
  sub_1BA4A43B8();
  [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  return sub_1BA4A43D8();
}

uint64_t sub_1BA31D96C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BA4A4428();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAF2040](v7);

  sub_1BA4A43B8();
  v10 = a3;
  sub_1BA4A43D8();
  v11 = sub_1BA4A42D8();
  sub_1BA4A4268();
  v11(v15, 0);
  sub_1BA4A4348();
  v15[3] = v4;
  v15[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(v5 + 16))(boxed_opaque_existential_1, v9, v4);
  MEMORY[0x1BFAF1EF0](v15);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1BA31DB1C(uint64_t a1, void **a2)
{
  sub_1B9F68124(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(v5);
  return sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

id IconWithNameCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void *IconWithNameCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item];
  v10 = type metadata accessor for IconWithNameCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v15.receiver = v4;
  v15.super_class = v10;
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x70);
  v13 = v11;
  v12();

  return v13;
}

id IconWithNameCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void IconWithNameCell.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA31DFC0()
{
  v1 = v0;
  sub_1B9F65DE4(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v26 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v26 - v12;
  v14 = sub_1BA4A40A8();
  v15 = type metadata accessor for IconWithNameCell();
  v32.receiver = v1;
  v32.super_class = v15;
  objc_msgSendSuper2(&v32, sel__bridgedUpdateConfigurationUsingState_, v14);

  v28 = v1;
  sub_1B9F0D950(0, &qword_1EBBED448, &protocol descriptor for HighlightColorProviding);
  v16 = v1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    return sub_1B9F43A50(v26, &qword_1EBBED450, &qword_1EBBED448, &protocol descriptor for HighlightColorProviding);
  }

  sub_1B9F25598(v26, v29);
  if (![v16 isHighlighted])
  {
    MEMORY[0x1BFAF1F00]();
    v20 = sub_1BA4A4168();
    if ((*(*(v20 - 8) + 48))(v5, 1, v20))
    {
      sub_1B9F66128(v5, v9);
      MEMORY[0x1BFAF1F10](v9);
      v18 = v5;
      goto LABEL_8;
    }

    v24 = v30;
    v25 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v25 + 16))(v24, v25);
    sub_1BA4A4118();
    v23 = v5;
LABEL_11:
    MEMORY[0x1BFAF1F10](v23);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  MEMORY[0x1BFAF1F00]();
  v17 = sub_1BA4A4168();
  if (!(*(*(v17 - 8) + 48))(v13, 1, v17))
  {
    v21 = v30;
    v22 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v22 + 8))(v21, v22);
    sub_1BA4A4118();
    v23 = v13;
    goto LABEL_11;
  }

  sub_1B9F66128(v13, v9);
  MEMORY[0x1BFAF1F10](v9);
  v18 = v13;
LABEL_8:
  sub_1B9F66560(v18);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

id IconWithNameCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconWithNameCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BiologicalSexPickerItem.__allocating_init(initialValue:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue];
  *v6 = a1;
  v6[8] = a2 & 1;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1BA31E608(unint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 4)
  {
    return qword_1BA4D1690[a1];
  }

  sub_1BA4A3DD8();
  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B9F07000, v8, v9, "Unhandled case of HKBiologicalSex", v10, 2u);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 2;
}

uint64_t sub_1BA31E75C()
{
  type metadata accessor for PickerTableViewCell();
  sub_1BA31E9E8(0, &qword_1EBBF0850, 255, type metadata accessor for PickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA31E7B8()
{
  swift_getObjectType();
  sub_1BA31E9E8(0, &qword_1EBBF0858, v0, type metadata accessor for BiologicalSexPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA31E860(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA31E8CC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

id BiologicalSexPickerItem.init(initialValue:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue];
  *v5 = a1;
  v5[8] = a2 & 1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BiologicalSexPickerItem();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1BA31E9E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id BiologicalSexPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiologicalSexPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiologicalSexPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA31EB30()
{
  swift_getObjectType();
  sub_1BA31E9E8(0, &qword_1EBBF0858, v0, type metadata accessor for BiologicalSexPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA31EB88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t BiologicalSexPickerItem.initialSelections.getter()
{
  sub_1BA31EC5C(0);
  result = swift_allocObject();
  v2 = 0;
  *(result + 16) = xmmword_1BA4B5480;
  if ((*(v0 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue + 8) & 1) == 0)
  {
    v3 = result;
    v2 = sub_1BA31E608(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue));
    result = v3;
  }

  *(result + 32) = v2;
  *(result + 40) = 0;
  return result;
}

void sub_1BA31EC5C(uint64_t a1)
{
  if (!qword_1EBBF0860)
  {
    sub_1BA31ECB4();
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0860);
    }
  }
}

void sub_1BA31ECB4()
{
  if (!qword_1EBBF1F60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1F60);
    }
  }
}

Swift::Int __swiftcall BiologicalSexPickerItem.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  if (numberOfRowsInComponent)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

Swift::String_optional __swiftcall BiologicalSexPickerItem.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  v3 = sub_1BA31EE9C(titleForRow, forComponent);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1BA31EE2C()
{
  sub_1BA31EC5C(0);
  result = swift_allocObject();
  v2 = 0;
  *(result + 16) = xmmword_1BA4B5480;
  if ((*(v0 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue + 8) & 1) == 0)
  {
    v3 = result;
    v2 = sub_1BA31E608(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue));
    result = v3;
  }

  *(result + 32) = v2;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1BA31EE9C(unint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  if (a1 > 2)
  {
    return 0;
  }

  v3 = sub_1BA4A6758();
  v4 = HKUILocalizedString();

  if (!v4)
  {
    return 0;
  }

  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v5;
}

uint64_t sub_1BA31EF90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (a2)
    {
      goto LABEL_9;
    }

    v11 = 3;
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    if (a2)
    {
      goto LABEL_9;
    }

    v11 = 2;
LABEL_14:
    v20 = v3 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue;
    *v20 = v11;
    *(v20 + 8) = 0;
    v21 = v3 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v22 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 8))(v3, v11, ObjectType, v22);
      return swift_unknownObjectRelease();
    }

    return result;
  }

  if (!a1 && !a2)
  {
    v11 = 1;
    goto LABEL_14;
  }

LABEL_9:
  sub_1BA4A3DE8();
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136446723;
    v16 = sub_1BA4A85D8();
    v18 = sub_1B9F0B82C(v16, v17, v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1B9F0B82C(0xD000000000000027, 0x80000001BA4FDF40, v25);
    *(v14 + 22) = 2049;
    *(v14 + 24) = a1;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%{public}s.%{public}s]: Unable to construct biological sex from row: : %{private}ld", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1BA31F248()
{
  result = qword_1EBBF0870;
  if (!qword_1EBBF0870)
  {
    type metadata accessor for BiologicalSexPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0870);
  }

  return result;
}

uint64_t BiologicalSexItem.init(biologicalSex:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t BiologicalSexItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA2253B4();
  return sub_1BA4A6808();
}

ValueMetadata *BiologicalSexItem.uniqueIdentifier.getter()
{
  sub_1BA31F4F0();
  v0 = sub_1BA4A6808();
  sub_1BA23F070();
  v1 = sub_1BA4A6808();
  v3 = v2;

  MEMORY[0x1BFAF1350](v1, v3);

  return v0;
}

unint64_t sub_1BA31F4F0()
{
  result = qword_1EBBF0940;
  if (!qword_1EBBF0940)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0940);
  }

  return result;
}

uint64_t sub_1BA31F538(uint64_t a1)
{
  sub_1BA31F4F0();
  v1 = sub_1BA4A6808();
  sub_1BA23F070();
  v2 = sub_1BA4A6808();
  v4 = v3;

  MEMORY[0x1BFAF1350](v2, v4);

  return v1;
}

uint64_t sub_1BA31F5F0(uint64_t a1)
{
  v2 = sub_1BA120BB4();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t BiologicalSexItem.title.getter()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

void BiologicalSexItem.value.getter()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 8) & 1) == 0)
  {
    v7 = *v0;
    if (*v0 <= 1)
    {
      if (!v7)
      {
        goto LABEL_2;
      }

      if (v7 != 1)
      {
        goto LABEL_14;
      }

      v8 = sub_1BA4A6758();
      v9 = HKUILocalizedString();

      if (v9)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    if (v7 == 2)
    {
LABEL_18:
      v17 = sub_1BA4A6758();
      v9 = HKUILocalizedString();

      if (!v9)
      {
        __break(1u);
        return;
      }

LABEL_19:
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return;
    }

    if (v7 == 3)
    {
      v10 = sub_1BA4A6758();
      v9 = HKUILocalizedString();

      if (v9)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

LABEL_14:
    v11 = v4;
    sub_1BA4A3DD8();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA4D1690, &v19);
      _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Unhandled case of HKBiologicalSex", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v2 + 8))(v6, v11);
    v16 = sub_1BA4A6758();
    v9 = HKUILocalizedString();

    if (v9)
    {
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_2:
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
}

uint64_t sub_1BA31FA20()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

unint64_t sub_1BA31FAB4()
{
  result = qword_1EBBF0948;
  if (!qword_1EBBF0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0948);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for BiologicalSexItem(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

id PDFBox.fillColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *PDFBox.borderColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t PDFBox.init(fillColor:cornerRadius:roundingCorners:borderWidth:borderColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 32) = a6;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

void PDFBox.render(context:document:)(void *a1)
{
  v3 = sub_1BA4A19F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = v11;
  v14 = [a1 CGContext];
  CGContextSaveGState(v14);
  v15 = PDFBuilder.Document.drawingContext.getter();
  v19 = [objc_opt_self() bezierPathWithRoundedRect:v10 byRoundingCorners:v15 cornerRadii:{v16, v17, v18, v9, v9}];
  v20 = [v19 CGPath];
  CGContextAddPath(v14, v20);

  if (v11)
  {
    CGContextSetLineWidth(v14, v12);
    v21 = [v13 CGColor];
    CGContextSetStrokeColorWithColor(v14, v21);

    CGContextStrokePath(v14);
  }

  if (v8)
  {
    v22 = v8;
    v23 = [v22 CGColor];
    CGContextSetFillColorWithColor(v14, v23);

    (*(v4 + 104))(v7, *MEMORY[0x1E695EEB8], v3);
    sub_1BA4A6F18();

    (*(v4 + 8))(v7, v3);
  }

  CGContextRestoreGState(v14);
}

uint64_t sub_1BA31FE50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1BA31FEAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1BA31FF20()
{
  v0 = sub_1BA4A6758();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EBC098A8 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1BA31FFA0(uint64_t a1)
{
  v2 = v1;
  v66 = *v2;
  v4 = MEMORY[0x1E69E6720];
  sub_1B9F3D724(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v62 = &v54 - v7;
  v58 = sub_1BA4A6488();
  v8 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA243558(0);
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA320A08(0);
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D724(0, &qword_1EDC6E440, MEMORY[0x1E6969530], v4);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v54 - v20;
  *(v2 + 7) = 0u;
  *(v2 + 5) = 0u;
  v2[2] = sub_1BA4A3328();
  v2[3] = v22;
  if (sub_1BA4A33B8())
  {
    sub_1BA4A33C8();
    v23 = sub_1BA4A2AE8();
    v25 = v24;

    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v2[5] = MEMORY[0x1BFAEDD10](v26);
      v2[6] = v28;
    }
  }

  v29 = sub_1BA4A3368();
  if (!v29)
  {
    if (qword_1EBBE8810 != -1)
    {
      swift_once();
    }

    v29 = qword_1EBC098A8;
  }

  v2[4] = v29;
  v30 = sub_1BA4A32B8();
  v32 = v31;
  v33 = a1;
  v57 = a1;
  sub_1BA4A32F8();
  v34 = sub_1BA3216A8(v30, v32 & 1, v21);
  v36 = v35;
  v55 = MEMORY[0x1E69E6720];
  v54 = sub_1B9F3D724;
  sub_1BA3221D0(v21, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B9F3D724);
  v2[7] = v34;
  v2[8] = v36;

  sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
  v37 = sub_1BA4A7068();
  v68 = sub_1BA4A33C8();
  v69 = MEMORY[0x1E69A3410];
  v38 = v68;
  v70 = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v56 = v38;
  v40 = *(v38 - 8);
  (*(v40 + 16))(boxed_opaque_existential_1, v33, v38);
  sub_1BA4A6FF8();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v41 = v11;
  v42 = v11;
  v43 = v58;
  (*(v8 + 104))(v42, *MEMORY[0x1E69E7F88], v58);
  v44 = sub_1BA4A7338();
  (*(v8 + 8))(v41, v43);
  v45 = sub_1BA4A7048();

  __swift_destroy_boxed_opaque_existential_1(v67);
  v67[0] = v45;
  sub_1BA320990(0);
  sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
  sub_1BA322390(&qword_1EBBEF0A8, sub_1BA320990, MEMORY[0x1E695BED8]);
  v46 = v59;
  sub_1BA4A4FE8();

  v47 = sub_1BA4A7308();
  v67[0] = v47;
  v48 = sub_1BA4A72A8();
  v49 = v62;
  (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
  sub_1BA322390(&qword_1EBBEF0B0, sub_1BA243558, MEMORY[0x1E695BD60]);
  sub_1B9F3DC80();
  v50 = v63;
  v51 = v61;
  sub_1BA4A50A8();
  sub_1BA3221D0(v49, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], v55, v54);

  (*(v60 + 8))(v46, v51);
  *(swift_allocObject() + 16) = v66;
  sub_1BA322390(&qword_1EBBF0958, sub_1BA320A08, MEMORY[0x1E695BE98]);

  v52 = v65;
  sub_1BA4A4F88();

  (*(v40 + 8))(v57, v56);
  (*(v64 + 8))(v50, v52);
  return v2;
}

uint64_t sub_1BA320774(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] New photo publisher completed", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BA32091C()
{

  return swift_deallocClassInstance();
}

void sub_1BA320990(uint64_t a1)
{
  if (!qword_1EBBEF0A0)
  {
    sub_1B9F0ADF8(255, &qword_1EBBEE5C8, 0x1E695CD58);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF0A0);
    }
  }
}

void sub_1BA320A08(uint64_t a1)
{
  if (!qword_1EBBF0950)
  {
    sub_1BA243558(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA322390(&qword_1EBBEF0B0, sub_1BA243558, MEMORY[0x1E695BD60]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0950);
    }
  }
}

uint64_t sub_1BA320AD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v3 = sub_1BA4A6138();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_1BA4A6118();
  (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3);
  v14 = sub_1BA4A6198();

  (*(v4 + 8))(v7, v3);
  sub_1BA4A63C8();
  sub_1BA4A5278();
  LOBYTE(v40) = 1;
  *&v23[3] = *&v23[27];
  *&v23[11] = *&v23[35];
  *&v23[19] = *&v23[43];
  v9 = sub_1BA4A5878();
  LOBYTE(v16[0]) = 0;
  sub_1BA320FF8(a1, &v40);
  v32 = v41[7];
  v33[0] = v41[8];
  v28 = v41[3];
  v29 = v41[4];
  v30 = v41[5];
  v31 = v41[6];
  v24 = v40;
  v25 = v41[0];
  v26 = v41[1];
  v27 = v41[2];
  v34[8] = v41[7];
  *v35 = v41[8];
  v34[4] = v41[3];
  v34[5] = v41[4];
  v34[7] = v41[6];
  v34[6] = v41[5];
  v34[0] = v40;
  v34[1] = v41[0];
  *(v33 + 15) = *(&v41[8] + 15);
  *&v35[15] = *(&v41[8] + 15);
  v34[2] = v41[1];
  v34[3] = v41[2];
  v10 = MEMORY[0x1E6981F40];
  sub_1BA32215C(&v24, &v38, &qword_1EBBF0978, sub_1BA321FC4, MEMORY[0x1E6981F40], sub_1B9F3D724);
  sub_1BA3221D0(v34, &qword_1EBBF0978, sub_1BA321FC4, v10, sub_1B9F3D724);
  *&v22[119] = v31;
  *&v22[135] = v32;
  *&v22[151] = v33[0];
  *&v22[166] = *(v33 + 15);
  *&v22[55] = v27;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[7] = v24;
  *&v22[23] = v25;
  *&v22[39] = v26;
  LOBYTE(a1) = v16[0];
  v11 = v14;
  v36[0] = v14;
  v36[1] = 0;
  *v37 = 1;
  *&v37[2] = *v23;
  *&v37[18] = *&v23[8];
  *&v37[34] = *&v23[16];
  *&v37[48] = *&v23[23];
  *&v21[4] = *&v23[23];
  v21[2] = *&v37[16];
  v21[3] = *&v37[32];
  v21[0] = v14;
  v21[1] = *v37;
  *&v38 = v9;
  *(&v38 + 1) = 0x4008000000000000;
  LOBYTE(v39[0]) = v16[0];
  *(&v39[2] + 1) = *&v22[32];
  *(&v39[1] + 1) = *&v22[16];
  *(v39 + 1) = *v22;
  *(&v39[6] + 1) = *&v22[96];
  *(&v39[5] + 1) = *&v22[80];
  *(&v39[4] + 1) = *&v22[64];
  *(&v39[3] + 1) = *&v22[48];
  *(&v39[9] + 11) = *&v22[154];
  *(&v39[9] + 1) = *&v22[144];
  *(&v39[8] + 1) = *&v22[128];
  *(&v39[7] + 1) = *&v22[112];
  *(&v21[12] + 8) = v39[7];
  *(&v21[13] + 8) = v39[8];
  *(&v21[14] + 8) = v39[9];
  *(&v21[15] + 3) = *(&v39[9] + 11);
  *(&v21[8] + 8) = v39[3];
  *(&v21[9] + 8) = v39[4];
  *(&v21[10] + 8) = v39[5];
  *(&v21[11] + 8) = v39[6];
  *(&v21[4] + 8) = v38;
  *(&v21[5] + 8) = v39[0];
  *(&v21[6] + 8) = v39[1];
  *(&v21[7] + 8) = v39[2];
  memcpy(v15, v21, 0x103uLL);
  *(&v41[7] + 1) = *&v22[112];
  *(&v41[8] + 1) = *&v22[128];
  *(&v41[9] + 1) = *&v22[144];
  *(&v41[9] + 11) = *&v22[154];
  *(&v41[3] + 1) = *&v22[48];
  *(&v41[4] + 1) = *&v22[64];
  *(&v41[5] + 1) = *&v22[80];
  *(&v41[6] + 1) = *&v22[96];
  *(v41 + 1) = *v22;
  *(&v41[1] + 1) = *&v22[16];
  *&v40 = v9;
  *(&v40 + 1) = 0x4008000000000000;
  LOBYTE(v41[0]) = a1;
  *(&v41[2] + 1) = *&v22[32];
  v12 = MEMORY[0x1E697E048];
  sub_1BA32215C(v36, v16, &qword_1EDC5F018, sub_1BA321EB8, MEMORY[0x1E697E048], sub_1BA3220F8);
  sub_1BA322230(&v38, v16);
  sub_1BA322294(&v40);
  v16[0] = v11;
  v16[1] = 0;
  v17 = 1;
  v18 = *v23;
  v19 = *&v23[8];
  v20[0] = *&v23[16];
  *(v20 + 14) = *&v23[23];
  return sub_1BA3221D0(v16, &qword_1EDC5F018, sub_1BA321EB8, v12, sub_1BA3220F8);
}

double sub_1BA320FF8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F252FC();

  v2 = sub_1BA4A5E18();
  v4 = v3;
  v6 = v5;
  v7 = sub_1BA4A5DD8();
  v9 = v8;
  v11 = v10;
  sub_1BA102AF4(v2, v4, v6 & 1);

  sub_1BA4A5C18();
  v12 = sub_1BA4A5DE8();
  v14 = v13;
  v16 = v15;

  sub_1BA102AF4(v7, v9, v11 & 1);

  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  sub_1BA4A6048();
  v19 = sub_1BA4A5DB8();
  v74 = v20;
  v75 = v19;
  v65 = v21;
  v76 = v22;

  sub_1BA102AF4(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v61 = v17;
  if (!a1[6])
  {
    v71 = 0;
    v72 = 0;
    v63 = 0;
    v64 = 0;
    v68 = 0;
    v67 = 0;
    if (a1[8])
    {
      goto LABEL_3;
    }

LABEL_5:
    v70 = 0;
    v66 = 0;
    v56 = 0;
    v60 = 0;
    v62 = 0;
    v57 = 0;
    goto LABEL_6;
  }

  v23 = sub_1BA4A5E18();
  v25 = v24;
  v27 = v26;
  sub_1BA4A5C08();
  v28 = sub_1BA4A5DE8();
  v30 = v29;
  v32 = v31;

  sub_1BA102AF4(v23, v25, v27 & 1);

  v33 = [v17 labelColor];
  sub_1BA4A6048();
  v34 = sub_1BA4A5DB8();
  v36 = v35;
  LOBYTE(v23) = v37;
  v39 = v38;

  sub_1BA102AF4(v28, v30, v32 & 1);

  v40 = swift_getKeyPath();
  v71 = v36;
  v72 = v34;
  v63 = v23 & 1;
  sub_1BA1465C0(v34, v36, v23 & 1);
  v64 = v39;

  v68 = v40;

  v67 = 1;
  if (!a1[8])
  {
    goto LABEL_5;
  }

LABEL_3:

  v41 = sub_1BA4A5E18();
  v43 = v42;
  v45 = v44;
  sub_1BA4A5C08();
  v46 = sub_1BA4A5DE8();
  v48 = v47;
  v50 = v49;

  sub_1BA102AF4(v41, v43, v45 & 1);

  v51 = [v61 labelColor];
  sub_1BA4A6048();
  v70 = sub_1BA4A5DB8();
  v66 = v52;
  v54 = v53;
  v62 = v55;

  sub_1BA102AF4(v46, v48, v50 & 1);

  v60 = swift_getKeyPath();
  v56 = v54 & 1;
  v57 = 65537;
LABEL_6:
  sub_1BA1465C0(v75, v74, v65 & 1);

  sub_1BA3222F0(v72, v71, v63, v64, v68);
  sub_1BA3222F0(v70, v66, v56, v62, v60);
  sub_1BA322340(v72, v71, v63, v64, v68);
  *a2 = v75;
  *(a2 + 8) = v74;
  *(a2 + 16) = v65 & 1;
  *(a2 + 24) = v76;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v72;
  *(a2 + 64) = v71;
  *(a2 + 72) = v63;
  *(a2 + 80) = v64;
  *(a2 + 88) = v68;
  *(a2 + 96) = 0;
  *(a2 + 104) = v67;
  *(a2 + 112) = v70;
  *(a2 + 120) = v66;
  *(a2 + 128) = v56;
  *(a2 + 136) = v62;
  *(a2 + 144) = v60;
  *(a2 + 152) = 0;
  *(a2 + 162) = BYTE2(v57);
  *(a2 + 160) = v57;
  sub_1BA322340(v70, v66, v56, v62, v60);
  sub_1BA322340(v72, v71, v63, v64, v68);
  sub_1BA102AF4(v75, v74, v65 & 1);

  return result;
}

void *sub_1BA32157C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = sub_1BA4A5798();
  v12 = 0;
  sub_1BA320AD4(v4, __src);
  memcpy(__dst, __src, 0x103uLL);
  memcpy(v14, __src, 0x103uLL);
  v6 = MEMORY[0x1E6981F40];
  sub_1BA32215C(__dst, v9, &qword_1EBBF0960, sub_1BA321E24, MEMORY[0x1E6981F40], sub_1B9F3D724);
  sub_1BA3221D0(v14, &qword_1EBBF0960, sub_1BA321E24, v6, sub_1B9F3D724);
  memcpy(&v11[7], __dst, 0x103uLL);
  v7 = v12;
  *a1 = v5;
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = v7;
  return memcpy((a1 + 17), v11, 0x10AuLL);
}

uint64_t sub_1BA3216A8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1BA4A18A8();
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A1148();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D724(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v42 - v16;
  v18 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v42 - v25;
  if (a2)
  {
    return 0;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      return sub_1BA4A1318();
    }

    return 0;
  }

  v28 = v24;
  sub_1BA32215C(a3, v17, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B9F3D724);
  if ((*(v28 + 48))(v17, 1, v18) == 1)
  {
    sub_1BA3221D0(v17, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B9F3D724);
    return 0;
  }

  (*(v28 + 32))(v26, v17, v18);
  sub_1BA4A1878();
  sub_1B9F3D724(0, &qword_1EBBEC248, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v29 = sub_1BA4A1898();
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v44 = v28;
  v32 = (v31 + 32) & ~v31;
  v33 = swift_allocObject();
  v42 = xmmword_1BA4B5480;
  *(v33 + 16) = xmmword_1BA4B5480;
  (*(v30 + 104))(v33 + v32, *MEMORY[0x1E6969A48], v29);
  v43 = sub_1B9FF6D00(v33);
  swift_setDeallocating();
  (*(v30 + 8))(v33 + v32, v29);
  swift_deallocClassInstance();
  sub_1BA4A1718();
  sub_1BA4A17F8();

  v34 = *(v44 + 8);
  v34(v21, v18);
  (*(v47 + 8))(v9, v6);
  v35 = sub_1BA4A1118();
  if ((v36 & 1) != 0 || (v37 = v35, v35 < 1))
  {
    (*(v45 + 8))(v13, v46);
    v34(v26, v18);
    return 0;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F3D724(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E6530];
  *(v38 + 16) = v42;
  v40 = MEMORY[0x1E69E65A8];
  *(v38 + 56) = v39;
  *(v38 + 64) = v40;
  *(v38 + 32) = v37;
  v41 = sub_1BA4A6768();

  (*(v45 + 8))(v13, v46);
  v34(v26, v18);
  return v41;
}

void sub_1BA321DB4(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 32);
  *(v1 + 32) = *a1;
  v3 = v2;
}

void sub_1BA321E24(uint64_t a1)
{
  if (!qword_1EBBF0968)
  {
    sub_1BA3220F8(255, &qword_1EDC5F018, sub_1BA321EB8, MEMORY[0x1E697E048]);
    sub_1BA321F10(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF0968);
    }
  }
}

void sub_1BA321EB8()
{
  if (!qword_1EDC5F170)
  {
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F170);
    }
  }
}

void sub_1BA321F10(uint64_t a1)
{
  if (!qword_1EBBF0970)
  {
    sub_1B9F3D724(255, &qword_1EBBF0978, sub_1BA321FC4, MEMORY[0x1E6981F40]);
    sub_1BA32248C(&qword_1EBBF09A0, &qword_1EBBF0978, sub_1BA321FC4);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0970);
    }
  }
}

void sub_1BA321FC4(uint64_t a1)
{
  if (!qword_1EBBF0980)
  {
    sub_1B9F88B28(255);
    sub_1B9F3D724(255, &qword_1EBBF0988, sub_1B9F88B28, MEMORY[0x1E69E6720]);
    sub_1BA32207C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBBF0980);
    }
  }
}

void sub_1BA32207C(uint64_t a1)
{
  if (!qword_1EBBF0990)
  {
    sub_1BA3220F8(255, &qword_1EBBF0998, sub_1B9F88B28, MEMORY[0x1E697EBE8]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0990);
    }
  }
}

void sub_1BA3220F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1BA4A5418();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA32215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA3221D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA322230(uint64_t a1, uint64_t a2)
{
  sub_1BA321F10(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA322294(uint64_t a1)
{
  sub_1BA321F10(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1BA3222F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1BA1465C0(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1BA322340(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1BA102AF4(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BA322390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA3223D8(uint64_t a1)
{
  if (!qword_1EBBF09B0)
  {
    sub_1B9F3D724(255, &qword_1EBBF0960, sub_1BA321E24, MEMORY[0x1E6981F40]);
    sub_1BA32248C(&qword_1EBBF09B8, &qword_1EBBF0960, sub_1BA321E24);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF09B0);
    }
  }
}

uint64_t sub_1BA32248C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3D724(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *HKTDataTypeDetailFactory.makeViewController(hkType:context:)(void *a1, uint64_t a2)
{
  v5 = [a1 identifier];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  v9 = v6 == 0xD000000000000017 && 0x80000001BA4FE070 == v8;
  if (v9 || (sub_1BA4A8338() & 1) != 0 || (v6 == 0xD00000000000001FLL ? (v10 = 0x80000001BA4FE090 == v8) : (v10 = 0), v10 || (sub_1BA4A8338() & 1) != 0))
  {

    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(a1, 0xD000000000000016, 0x80000001BA500370, a2);
  }

  if (v6 == 0xD000000000000025 && 0x80000001BA4FE0B0 == v8)
  {
    goto LABEL_612;
  }

  if ((sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000029 && 0x80000001BA4FE0E0 == v8)
  {
    goto LABEL_612;
  }

  if (sub_1BA4A8338())
  {
    goto LABEL_612;
  }

  v22 = 0xD00000000000001ELL;
  if (v6 == 0xD00000000000001ELL && 0x80000001BA4FE110 == v8)
  {
    goto LABEL_612;
  }

  if ((sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FE130 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FE160 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FE190 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FE1C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FE1F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ALL && 0x80000001BA4FE220 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FE250 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FE280 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FE2B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FE2E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000030 && 0x80000001BA4FE310 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE350 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000031 && 0x80000001BA4FE380 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000031 && 0x80000001BA4FE3C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FE400 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ALL && 0x80000001BA4FE430 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE460 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FE490 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FE4C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FE4F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002DLL && 0x80000001BA4FE520 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FE550 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE580 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FE5B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FE5E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE610 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE640 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE670 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE6A0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FE6D0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FE700 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FE730 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FE760 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE790 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE7C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE7F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FE820 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FE850 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE880 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FE8B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FE8E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE910 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE940 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FE970 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE9A0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FE9D0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEA00 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FEA30 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FEA60 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002DLL && 0x80000001BA4FEA90 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FEAC0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEAF0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEB20 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FEB50 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FEB80 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002FLL && 0x80000001BA4FEBB0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FEBE0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FEC10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEC40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEC70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FECA0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000022 && 0x80000001BA4FECD0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FED00 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FED30 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FED60 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FED90 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FEDC0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FEDF0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FEE20 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FEE50 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FEE80 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FEEB0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ALL && 0x80000001BA4FEEE0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ALL && 0x80000001BA4FEF10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FEF40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEF70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002FLL && 0x80000001BA4FEFA0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FEFD0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FF010 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000022 && 0x80000001BA4FF040 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF070 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF0A0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000001CLL && 0x80000001BA4FF0D0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FF0F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000022 && 0x80000001BA4FF120 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FF150 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FF180 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF1B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000001FLL && 0x80000001BA4FF1E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == v22 && 0x80000001BA4FF200 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FF220 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FF250 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000022 && 0x80000001BA4FF280 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FF2B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000036 && 0x80000001BA4FF2E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000031 && 0x80000001BA4FF320 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FF360 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FF390 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FF3C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ALL && 0x80000001BA4FF3F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FF420 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FF450 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FF480 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FF4C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FF4F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000003ALL && 0x80000001BA4FF520 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FF560 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000001DLL && 0x80000001BA4FF590 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FF5B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FF5E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF610 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FF640 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF670 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FF6A0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF6D0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF700 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000022 && 0x80000001BA4FF730 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FF760 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FF790 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FF7C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FF7F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == v22 && 0x80000001BA4FF820 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF840 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000001FLL && 0x80000001BA4FF870 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FF890 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FF8C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4F7330 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FF8F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FF920 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FF950 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FF980 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FF9B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FF9E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FFA20 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FFA50 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000030 && 0x80000001BA4FFA90 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FFAD0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FFB10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FFB40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000033 && 0x80000001BA4FFB70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FFBB0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FFBE0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FFC10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FFC40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FFC70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FFCA0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000037 && 0x80000001BA4FFCD0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FFD10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FFD40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FFD70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FFDA0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FFDD0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002DLL && 0x80000001BA4FFE10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FFE40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002FLL && 0x80000001BA4FFE70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FFEA0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002FLL && 0x80000001BA4FFED0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FFF00 == v8
    || (sub_1BA4A8338() & 1) != 0)
  {
    goto LABEL_612;
  }

  if (v6 == 0xD00000000000002ELL && 0x80000001BA4F73E0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000033 && 0x80000001BA4E9340 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v12 = 0x80000001BA4F7490;
    v13 = a1;
    v14 = v22;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD00000000000001DLL && 0x80000001BA4FFF30 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000032 && 0x80000001BA4FFF50 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD00000000000002ELL && 0x80000001BA4FFF90 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD00000000000002ALL && 0x80000001BA4E92A0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000033 && 0x80000001BA4E92D0 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v12 = 0x80000001BA4F74D0;
    v13 = a1;
    v14 = 0xD00000000000001DLL;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD000000000000021 && 0x80000001BA4FFFC0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000028 && 0x80000001BA4FFFF0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == v22 && 0x80000001BA4F7410 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000030 && 0x80000001BA500020 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000025 && 0x80000001BA500060 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000029 && 0x80000001BA4E9230 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000031 && 0x80000001BA4E9260 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD00000000000002DLL && 0x80000001BA4E9310 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000030 && 0x80000001BA4F7430 == v8 || (sub_1BA4A8338() & 1) != 0)
  {
    goto LABEL_616;
  }

  if (v6 == 0xD000000000000021 && 0x80000001BA500090 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000035 && 0x80000001BA4F73A0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000038 && 0x80000001BA4E9380 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000031 && 0x80000001BA4E93C0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000030 && 0x80000001BA4E9400 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000031 && 0x80000001BA4E9440 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v12 = 0x80000001BA4E9510;
    v13 = a1;
    v14 = 0xD000000000000025;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD000000000000025 && 0x80000001BA5000C0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD00000000000003ALL && 0x80000001BA4F7360 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000027 && 0x80000001BA4E9480 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000019 && 0x80000001BA5000F0 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v12 = 0x80000001BA4E94E0;
    v13 = a1;
    v14 = 0xD000000000000021;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD00000000000001DLL && 0x80000001BA500110 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v15 = "lugin.healthplugin";
    v14 = 0xD000000000000029;
LABEL_619:
    v12 = v15 | 0x8000000000000000;
    v13 = a1;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD000000000000015 && 0x80000001BA500130 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000024 && 0x80000001BA500150 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000024 && 0x80000001BA500180 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v16 = "MentalHealthAppPlugin.healthplugin";
LABEL_608:
    v12 = (v16 - 32) | 0x8000000000000000;
    v13 = a1;
    v14 = 0xD000000000000022;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD000000000000036 && 0x80000001BA5001B0 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v17 = "MedicationsHealthAppPlugin.healthplugin";
LABEL_603:
    v12 = (v17 - 32) | 0x8000000000000000;
    v13 = a1;
    v14 = 0xD000000000000027;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD000000000000028 && 0x80000001BA5001F0 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v17 = "RespiratoryHealthAppPlugin.healthplugin";
    goto LABEL_603;
  }

  if (v6 == 0xD000000000000022 && 0x80000001BA500220 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v16 = "VisionHealthAppPlugin.healthplugin";
    goto LABEL_608;
  }

  if ((v6 != 0xD000000000000028 || 0x80000001BA500250 != v8) && (sub_1BA4A8338() & 1) == 0)
  {
    if (v6 != 0xD000000000000029 || 0x80000001BA4E94B0 != v8)
    {
      v19 = sub_1BA4A8338();

      if ((v19 & 1) == 0)
      {
        sub_1B9FCB51C();
        swift_allocError();
        *v20 = 0;
        *(v20 + 8) = 0;
        *(v20 + 16) = 3;
        return swift_willThrow();
      }

      goto LABEL_618;
    }

LABEL_616:

LABEL_618:
    v15 = "brillationBurden";
    v14 = 0xD000000000000012;
    goto LABEL_619;
  }

LABEL_612:

  v21[3] = &type metadata for StandardWithChartDataTypeDetailConfigurationProvider;
  v21[4] = &protocol witness table for StandardWithChartDataTypeDetailConfigurationProvider;
  v18 = HKTDataTypeDetailFactory.createViewController(hkType:configurationProvider:context:)(a1, v21, a2);
  result = __swift_destroy_boxed_opaque_existential_1(v21);
  if (!v2)
  {
    return v18;
  }

  return result;
}

uint64_t HKTDataTypeDetailFactory.makeViewController(measure:context:)(void *a1)
{
  v2 = sub_1BA4A1A48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A1A88();
  (*(v3 + 8))(v6, v2);
  sub_1B9FCB51C();
  swift_allocError();
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 3;
  return swift_willThrow();
}

id PDFImage.caption.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

void *PDFImage.tintColor.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void PDFImage.init(image:caption:isRounded:cornerRadius:maxWidth:padding:tintColor:)(uint64_t a1@<X0>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>)
{
  v21 = a3;
  if (a3)
  {
    v27 = a7;
    _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
    v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v25 = sub_1BA4A6758();

    type metadata accessor for Key(0);
    sub_1BA0262E4();
    v26 = sub_1BA4A6618();

    v21 = [v24 initWithString:v25 attributes:v26];

    a7 = v27;
  }

  *a8 = v21;
  *(a8 + 8) = 0;
  *(a8 + 16) = a1;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6 & 1;
  *(a8 + 33) = a4 & 1;
  *(a8 + 40) = a9;
  *(a8 + 48) = a10;
  *(a8 + 56) = a11;
  *(a8 + 64) = a12;
  *(a8 + 72) = a13;
  *(a8 + 80) = a7;
}

void PDFImage.render(context:document:)(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[4];
  v85 = v2[3];
  v86 = v6;
  v7 = v2[2];
  v83 = v2[1];
  v84 = v7;
  v87 = *(v2 + 10);
  v82 = *v2;
  v75 = v6;
  v77 = *(&v85 + 1);
  v88.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v88.origin.x;
  y = v88.origin.y;
  width = v88.size.width;
  height = v88.size.height;
  v12 = CGRectGetMinX(v88) + 0.0;
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = width;
  v89.size.height = height;
  v13 = *&v85 + CGRectGetMinY(v89);
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = width;
  v90.size.height = height;
  v14 = CGRectGetWidth(v90);
  v91.origin.x = x;
  v15 = v12;
  v91.origin.y = y;
  v91.size.width = width;
  v91.size.height = height;
  v16 = CGRectGetHeight(v91) - *&v85;
  *(a2 + 168) = v12;
  *(a2 + 176) = v13;
  *(a2 + 184) = v14;
  *(a2 + 192) = v16;
  *(a2 + 200) = 0;
  if (v84)
  {
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = CGRectGetWidth(*(&v16 - 3));
  }

  else
  {
    v20 = *(&v83 + 1);
  }

  v21 = v77 + v13;
  v22 = v83;
  v23 = v20 - v77 - *(&v75 + 1);
  [v83 size];
  v25 = v23 / v24;
  [v83 size];
  v27 = v25 * v26;
  v28 = BYTE1(v84);
  v29 = v87;
  if ((BYTE1(v84) & 1) != 0 || v87)
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v32 = swift_allocObject();
    v33 = v3[3];
    *(v32 + 88) = v3[2];
    *(v32 + 104) = v33;
    *(v32 + 120) = v3[4];
    v34 = v3[1];
    *(v32 + 56) = *v3;
    *(v32 + 16) = v28;
    *(v32 + 24) = v15;
    *(v32 + 32) = v21;
    *(v32 + 40) = v23;
    *(v32 + 48) = v27;
    v35 = *(v3 + 10);
    *(v32 + 72) = v34;
    *(v32 + 136) = v35;
    *(v32 + 144) = v29;
    *(v32 + 152) = v22;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1BA3264F0;
    *(v36 + 24) = v32;
    aBlock[4] = sub_1BA1419A0;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA20E308;
    aBlock[3] = &block_descriptor_87;
    v37 = _Block_copy(aBlock);
    sub_1BA326508(&v82, v80);
    v38 = v29;
    v39 = v22;

    v30 = [v31 imageWithActions_];

    _Block_release(v37);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v30 = v83;
  }

  [v30 drawInRect_];
  v92.origin.x = v15;
  v92.origin.y = v21;
  v92.size.width = v23;
  v92.size.height = v27;
  v41 = CGRectGetHeight(v92);
  v76 = v27;
  v78 = v21;
  v73 = v23;
  v74 = v15;
  v42 = *(a2 + 168);
  v43 = *(a2 + 176);
  v44 = *(a2 + 184);
  v45 = *(a2 + 192);
  v93.origin.x = v42;
  v93.origin.y = v43;
  v93.size.width = v44;
  v93.size.height = v45;
  v46 = CGRectGetMinX(v93) + 0.0;
  v94.origin.x = v42;
  v94.origin.y = v43;
  v94.size.width = v44;
  v94.size.height = v45;
  v47 = v41 + CGRectGetMinY(v94);
  v95.origin.x = v42;
  v95.origin.y = v43;
  v95.size.width = v44;
  v95.size.height = v45;
  v48 = CGRectGetWidth(v95);
  v96.origin.x = v42;
  v96.origin.y = v43;
  v96.size.width = v44;
  v96.size.height = v45;
  v49 = CGRectGetHeight(v96) - v41;
  *(a2 + 168) = v46;
  *(a2 + 176) = v47;
  *(a2 + 184) = v48;
  *(a2 + 192) = v49;
  *(a2 + 200) = 0;
  if (v82)
  {
    v50 = WORD4(v82);
    v51 = v82;
    v97.origin.x = v46;
    v97.origin.y = v47;
    v97.size.width = v48;
    v97.size.height = v49;
    v52 = CGRectGetMinX(v97) + 0.0;
    v98.origin.x = v46;
    v98.origin.y = v47;
    v98.size.width = v48;
    v98.size.height = v49;
    v53 = CGRectGetMinY(v98) + 3.0;
    v99.origin.x = v46;
    v99.origin.y = v47;
    v99.size.width = v48;
    v99.size.height = v49;
    v54 = CGRectGetWidth(v99);
    v100.origin.x = v46;
    v100.origin.y = v47;
    v100.size.width = v48;
    v100.size.height = v49;
    v55 = CGRectGetHeight(v100);
    *(a2 + 168) = v52;
    *(a2 + 176) = v53;
    *(a2 + 184) = v54;
    *(a2 + 192) = v55 + -3.0;
    *(a2 + 200) = 0;
    v101.size.width = v73;
    v101.origin.x = v74;
    v101.size.height = v76;
    v101.origin.y = v78;
    v56 = CGRectGetWidth(v101);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v57 = sub_1BA20F244(a2);
    PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, v56, 0);
    v58.super.super.isa = a1;
    sub_1BA325FCC(v58, v57, v51, v50 & 0x101);
    v102.origin.x = PDFBuilder.Document.drawingContext.getter();
    [v51 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v102), INFINITY}];
    v59 = v103.origin.x;
    v60 = v103.origin.y;
    v61 = v103.size.width;
    v62 = v103.size.height;
    v63 = CGRectGetWidth(v103);
    v104.origin.x = v59;
    v104.origin.y = v60;
    v104.size.width = v61;
    v104.size.height = v62;
    v105.size.height = ceil(CGRectGetHeight(v104));
    v105.origin.x = *(v57 + 168);
    v105.origin.y = *(v57 + 176);
    v105.size.width = v63;
    v64 = CGRectGetHeight(v105);
    v65 = *(a2 + 168);
    v66 = *(a2 + 176);
    v67 = *(a2 + 184);
    v68 = *(a2 + 192);
    v106.origin.x = v65;
    v106.origin.y = v66;
    v106.size.width = v67;
    v106.size.height = v68;
    v46 = CGRectGetMinX(v106) + 0.0;
    v107.origin.x = v65;
    v107.origin.y = v66;
    v107.size.width = v67;
    v107.size.height = v68;
    v47 = v64 + CGRectGetMinY(v107);
    v108.origin.x = v65;
    v108.origin.y = v66;
    v108.size.width = v67;
    v108.size.height = v68;
    v48 = CGRectGetWidth(v108);
    v109.origin.x = v65;
    v109.origin.y = v66;
    v109.size.width = v67;
    v109.size.height = v68;
    v69 = CGRectGetHeight(v109);

    v49 = v69 - v64;
    *(a2 + 168) = v46;
    *(a2 + 176) = v47;
    *(a2 + 184) = v48;
    *(a2 + 192) = v69 - v64;
    *(a2 + 200) = 0;
  }

  v110.origin.x = v46;
  v110.origin.y = v47;
  v110.size.width = v48;
  v110.size.height = v49;
  v79 = CGRectGetMinX(v110) + 0.0;
  v111.origin.x = v46;
  v111.origin.y = v47;
  v111.size.width = v48;
  v111.size.height = v49;
  v70 = *&v75 + CGRectGetMinY(v111);
  v112.origin.x = v46;
  v112.origin.y = v47;
  v112.size.width = v48;
  v112.size.height = v49;
  v71 = CGRectGetWidth(v112);
  v113.origin.x = v46;
  v113.origin.y = v47;
  v113.size.width = v48;
  v113.size.height = v49;
  v72 = CGRectGetHeight(v113);

  *(a2 + 168) = v79;
  *(a2 + 176) = v70;
  *(a2 + 184) = v71;
  *(a2 + 192) = v72 - *&v75;
  *(a2 + 200) = 0;
}

double PDFImage.imageSize(for:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  v3 = *(v0 + 72);
  if (*(v0 + 32))
  {
    v7.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v7);
  }

  else
  {
    Width = *(v0 + 24);
  }

  v5 = Width - v2 - v3;
  [v1 size];
  [v1 size];
  return v5;
}

void sub_1BA325FCC(UIGraphicsPDFRendererContext a1, uint64_t a2, void *a3, __int16 a4)
{
  v5 = HIBYTE(a4) & 1;
  if (*(a2 + 96) == (a4 & 1))
  {
    v25 = HIBYTE(a4) & 1;
    sub_1BA49C858(a1, a2, 0, &v25);
  }

  else
  {
    type metadata accessor for PDFBuilder.Document();
    swift_initStackObject();
    v8 = sub_1BA20F244(a2);
    v26.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v26);
    [a3 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(*(v8 + 168)), INFINITY}];
    x = v27.origin.x;
    y = v27.origin.y;
    v12 = v27.size.width;
    height = v27.size.height;
    v14 = CGRectGetWidth(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = v12;
    v28.size.height = height;
    v29.size.height = ceil(CGRectGetHeight(v28));
    v29.origin.x = *(v8 + 168);
    v29.origin.y = *(v8 + 176);
    v29.size.width = v14;
    v15 = Width - CGRectGetWidth(v29) + -1.0;
    v16 = *(v8 + 168);
    v17 = *(v8 + 176);
    v18 = *(v8 + 184);
    v19 = *(v8 + 192);
    v30.origin.x = v16;
    v30.origin.y = v17;
    v30.size.width = v18;
    v30.size.height = v19;
    v20 = v15 + CGRectGetMinX(v30);
    v31.origin.x = v16;
    v31.origin.y = v17;
    v31.size.width = v18;
    v31.size.height = v19;
    v21 = CGRectGetMinY(v31) + 0.0;
    v32.origin.x = v16;
    v32.origin.y = v17;
    v32.size.width = v18;
    v32.size.height = v19;
    v22 = CGRectGetWidth(v32) - v15;
    v33.origin.x = v16;
    v33.origin.y = v17;
    v33.size.width = v18;
    v33.size.height = v19;
    v23 = CGRectGetHeight(v33);
    *(v8 + 168) = v20;
    *(v8 + 176) = v21;
    *(v8 + 184) = v22;
    *(v8 + 192) = v23;
    *(v8 + 200) = 0;
    v25 = v5;
    v24.super.super.isa = a1.super.super.isa;
    sub_1BA49C858(v24, v8, a2, &v25);
  }
}

void sub_1BA3261A4(void *a1, char a2, uint64_t a3, void *a4, id a5, double a6, double a7, CGFloat a8, CGFloat a9)
{
  if (a2)
  {
    v14 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a8, a9, *(a3 + 40)}];
    [v14 addClip];
  }

  if (a4)
  {
    v15 = a4;
    [v15 setFill];
    [a5 drawInRect_];
    v16 = [a1 CGContext];
    CGContextSetBlendMode(v16, kCGBlendModeSourceIn);

    v17 = [a1 CGContext];
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = a8;
    v19.size.height = a9;
    CGContextFillRect(v17, v19);
  }

  else
  {

    [a5 drawInRect_];
  }
}

void PDFImage.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  if (*(v1 + 32))
  {
    v19.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v19);
  }

  else
  {
    Width = *(v1 + 24);
  }

  v8 = Width - v5 - v6;
  [v4 size];
  [v4 size];
  if (v3)
  {
    type metadata accessor for PDFBuilder.Document();
    swift_initStackObject();
    v9 = sub_1BA20F244(a1);
    v10 = v3;
    PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, *&v8, 0);
    v20.origin.x = PDFBuilder.Document.drawingContext.getter();
    [v10 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v20), INFINITY}];
    x = v21.origin.x;
    y = v21.origin.y;
    v13 = v21.size.width;
    height = v21.size.height;
    v15 = CGRectGetWidth(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = v13;
    v22.size.height = height;
    v16 = ceil(CGRectGetHeight(v22));
    v17 = *(v9 + 168);
    v18 = *(v9 + 176);

    v23.origin.x = v17;
    v23.origin.y = v18;
    v23.size.width = v15;
    v23.size.height = v16;
    CGRectGetHeight(v23);
  }

  PDFBuilder.Document.drawingContext.getter();
}

uint64_t sub_1BA326540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BA326588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1BA326634(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_1B9F0A534(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_1B9F0A534(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1BA2F67FC(v1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v1[i]);
    result = sub_1B9F25598(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1((v1 + v6));
    result = sub_1B9F25598(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1BA3267D0(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(unint64_t, uint64_t, uint64_t), uint64_t (*a4)(unint64_t))
{
  if (!(a1 >> 62))
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v22 = a2;
    v23 = a3;
    v24 = a1;
    v25 = sub_1BA4A7CC8();
    if (v25)
    {
      v26 = v25;
      v5 = v22(v25, 0);
      v23(v5 + 32, v26, v24);
      v28 = v27;

      if (v28 != v26)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v5 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
      {
        v6 = *(v5 + 16);
        v7 = v6 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1BA4A7CC8();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v6 = a1;
    v7 = a1 / 2;
LABEL_6:
    if (v6 + 1 < 3)
    {
      return v5;
    }

    v9 = -v7;
    v10 = 4;
    while (1)
    {
      v11 = v6 - (v10 - 3);
      if (__OFSUB__(v6, v10 - 3))
      {
        break;
      }

      a1 = v10 - 4;
      if (v10 - 4 != v11)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1BFAF2860]();
          v15 = MEMORY[0x1BFAF2860](v6 - (v10 - 3), v5);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v12)
          {
            goto LABEL_32;
          }

          if (v11 >= v12)
          {
            goto LABEL_33;
          }

          v13 = *(v5 + 8 * v11 + 32);
          v14 = *(v5 + 8 * v10);
          v15 = v13;
        }

        v16 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = a4(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v16;

        if ((v5 & 0x8000000000000000) != 0 || v17)
        {
          a1 = a4(v5);
          v5 = a1;
          v18 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v11 >= *(v18 + 16))
        {
          goto LABEL_34;
        }

        v20 = v18 + 8 * v11;
        v21 = *(v20 + 32);
        *(v20 + 32) = v14;
      }

      ++v10;
      if (v9 + v10 == 4)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

char *sub_1BA3269FC(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 2);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *&v1[8 * i];
    v8 = *&v1[8 * v4];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BA2F684C(v1);
      v1 = result;
    }

    *&v1[8 * i] = v8;
    *&v1[8 * v4] = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

__n128 PDFHStack.init(config:content:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a1;
  a3->n128_u64[0] = a2;
  a3->n128_u64[1] = v3;
  result = *(a1 + 8);
  a3[1] = result;
  return result;
}

id PDFHStack.Config.separator.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}