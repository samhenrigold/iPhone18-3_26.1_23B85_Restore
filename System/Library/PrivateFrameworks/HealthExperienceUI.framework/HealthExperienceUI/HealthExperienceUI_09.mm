BOOL sub_1BA00495C(void *a1)
{
  v2 = sub_1BA4A37B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v12, v13).n128_u64[0];
  v16 = &v21 - v15;
  v17 = [a1 UUID];
  sub_1BA4A1778();

  sub_1BA4A3748();
  sub_1BA4A3798();
  (*(v3 + 8))(v6, v2);
  v18 = _s18HealthExperienceUI18DirectSearchResultV2eeoiySbAC_ACtFZ_0();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v19(v16, v7);
  return (v18 & 1) != 0 && [a1 direction] == 0;
}

uint64_t sub_1BA004B68(uint64_t a1, uint64_t a2)
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
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] restoreUserActivityState stream completed", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BA004D10(id *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v71 = a2;
  v72 = a4;
  v76 = a3;
  v5 = sub_1BA4A1798();
  v70 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A37B8();
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A3778();
  v77 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A33C8();
  v74 = *(v17 - 8);
  v75 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v73 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v69 - v22;
  v24 = sub_1BA4A3EA8();
  v25 = *(v24 - 8);
  v78 = v24;
  v79 = v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v69 - v31;
  if (*a1)
  {
    v33 = *a1;
    sub_1BA4A3DD8();
    v34 = v33;
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80[0] = v77;
      *v37 = 136315394;
      v38 = sub_1BA4A85D8();
      v40 = sub_1B9F0B82C(v38, v39, v80);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v41 = v34;
      v42 = [v41 description];
      v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v45 = v44;

      v46 = sub_1B9F0B82C(v43, v45, v80);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_1B9F07000, v35, v36, "[%s] restoreUserActivityState fetched entry: %s", v37, 0x16u);
      v47 = v77;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v47, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    (*(v79 + 8))(v32, v78);
    v48 = v34;
    sub_1BA4A3288();
    v50 = v73;
    v49 = v74;
    v51 = v75;
    (*(v74 + 16))(v73, v23, v75);
    v52 = v76;
    sub_1B9F0A534(&v76[OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthExperienceStore], v80);
    v53 = *&v52[OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthStore];
    v54 = objc_allocWithZone(type metadata accessor for SummarySharingRelationshipDetailsViewController(0));
    v55 = sub_1BA0854CC(v50, v80, v53);
    v56 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    [v52 presentViewController:v56 animated:1 completion:0];

    return (*(v49 + 8))(v23, v51);
  }

  else
  {
    v75 = v9;
    v76 = v5;
    sub_1BA4A3DD8();
    (*(v77 + 16))(v16, v71, v13);
    v58 = sub_1BA4A3E88();
    v59 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v80[0] = v74;
      *v60 = 136315394;
      v61 = sub_1BA4A85D8();
      LODWORD(v73) = v59;
      v63 = sub_1B9F0B82C(v61, v62, v80);

      *(v60 + 4) = v63;
      *(v60 + 12) = 2080;
      sub_1BA4A3748();
      sub_1BA4A3798();
      (*(v69 + 8))(v12, v75);
      v64 = sub_1BA4A1748();
      v66 = v65;
      (*(v70 + 8))(v8, v76);
      (*(v77 + 8))(v16, v13);
      v67 = sub_1B9F0B82C(v64, v66, v80);

      *(v60 + 14) = v67;
      _os_log_impl(&dword_1B9F07000, v58, v73, "[%s] No entry exists for user activity sharing uuid: %s", v60, 0x16u);
      v68 = v74;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v68, -1, -1);
      MEMORY[0x1BFAF43A0](v60, -1, -1);
    }

    else
    {

      (*(v77 + 8))(v16, v13);
    }

    return (*(v79 + 8))(v28, v78);
  }
}

uint64_t sub_1BA0054AC()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3358();
  v7 = objc_allocWithZone(MEMORY[0x1E696C438]);
  v8 = sub_1BA4A1758();
  v9 = [v7 initForInvitationUUID_];

  (*(v3 + 8))(v6, v2);
  v10 = [objc_allocWithZone(MEMORY[0x1E696C430]) initWithHealthStore:*(v1 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthStore) recipientIdentifier:v9];
  *(swift_allocObject() + 16) = v10;
  sub_1BA00CC04(0, &qword_1EBBEA178, MEMORY[0x1E695C028]);
  swift_allocObject();
  v11 = v10;
  v14[1] = sub_1BA4A4EA8();
  sub_1BA00CCBC();
  v12 = sub_1BA4A4F98();

  return v12;
}

void sub_1BA005698(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BA00CD30;
  *(v7 + 24) = v6;
  v9[4] = sub_1BA00CD70;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA112CEC;
  v9[3] = &block_descriptor_74;
  v8 = _Block_copy(v9);

  [a3 fetchSharingAuthorizationsWithCompletion_];
  _Block_release(v8);
}

void sub_1BA0057A8(unint64_t a1, void *a2, void (*a3)(void, void))
{
  sub_1BA00ADAC(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v26 - v14;
  if (!a2)
  {
    if (!a1)
    {
      (a3)(MEMORY[0x1E69E7CC0], 0, v13);
      return;
    }

    if (a1 >> 62)
    {
      v17 = sub_1BA4A7CC8();
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v27 = MEMORY[0x1E69E7CC0];
      sub_1BA066E00(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        __break(1u);
        return;
      }

      v26 = a3;
      v18 = v27;
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v17; ++i)
        {
          MEMORY[0x1BFAF2860](i, a1);
          sub_1BA4A3A38();
          v27 = v18;
          v21 = *(v18 + 16);
          v20 = *(v18 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1BA066E00((v20 > 1), v21 + 1, 1);
            v18 = v27;
          }

          *(v18 + 16) = v21 + 1;
          sub_1BA00B508(v15, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, sub_1BA00ADAC);
        }
      }

      else
      {
        v22 = (a1 + 32);
        do
        {
          v23 = *v22;
          sub_1BA4A3A38();
          v27 = v18;
          v25 = *(v18 + 16);
          v24 = *(v18 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1BA066E00((v24 > 1), v25 + 1, 1);
            v18 = v27;
          }

          *(v18 + 16) = v25 + 1;
          sub_1BA00B508(v10, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, sub_1BA00ADAC);
          ++v22;
          --v17;
        }

        while (v17);
      }

      a3 = v26;
    }

    (a3)(v18, 0, v13);

    return;
  }

  v16 = a2;
  a3(a2, 1);
}

uint64_t sub_1BA005AA4()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3C48();
  sub_1BA4A3C38();
  sub_1BA4154C8();
  v6 = sub_1BA4A3B58();
  if (v0)
  {
  }

  else
  {
    v7 = v6;

    sub_1BA4A3D88();
    v8 = v7;
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v28 = v10;
      v12 = v11;
      v29 = swift_slowAlloc();
      v31 = v29;
      *v12 = 136315394;
      v13 = sub_1BA4A85D8();
      v15 = sub_1B9F0B82C(v13, v14, &v31);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = v8;
      v17 = [v16 description];
      v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = v8;
      v19 = v2;
      v20 = v18;
      v27 = v9;
      v22 = v21;

      v23 = sub_1B9F0B82C(v20, v22, &v31);

      *(v12 + 14) = v23;
      v24 = v27;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] Fetched bundle: %s", v12, 0x16u);
      v25 = v29;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);

      (*(v19 + 8))(v5, v1);
      v8 = v30;
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }

    v1 = sub_1BA2FD9C4();
  }

  return v1;
}

char *sub_1BA005D94(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D424(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v40 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  v18 = sub_1BA4A33C8();
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v41 = v22;
  v24(v20);
  v25 = *(a1 + 16);
  v42 = a1;
  if (v25)
  {
    v26 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v27 = *(v7 + 72);
    v28 = MEMORY[0x1E69E7CC0];
    v44 = v2;
    do
    {
      sub_1BA00CA40(v26, v17);
      sub_1BA00CAD4(v17, v10);
      if ((*(v3 + 48))(v10, 1, v2) == 1)
      {
        sub_1BA00A89C(v10, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1B9F3D424);
      }

      else
      {
        sub_1BA00B508(v10, v45, type metadata accessor for SummarySharingSelectableDataTypeItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1BA27F5C8(0, v28[2] + 1, 1, v28);
        }

        v30 = v28[2];
        v29 = v28[3];
        if (v30 >= v29 >> 1)
        {
          v28 = sub_1BA27F5C8((v29 > 1), v30 + 1, 1, v28);
        }

        v28[2] = v30 + 1;
        sub_1BA00B508(v45, v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v30, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v2 = v44;
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v31 = v40;
  (*(v3 + 56))(v40, 1, 1, v2);
  v32 = sub_1BA006240(v31, v42);
  sub_1BA00A89C(v31, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1B9F3D424);
  v33 = v43;
  sub_1B9F0A534(v43 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthExperienceStore, v46);
  v34 = *(v33 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthStore);
  v35 = objc_allocWithZone(type metadata accessor for OBKSummarySharingInvitationTopicsViewController(0));
  v36 = v34;
  v37 = sub_1BA242B14(v41, v28, v32 & 1, v46, v36);

  return v37;
}

uint64_t sub_1BA006240(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D424(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v29 - v10;
  sub_1BA00CB68(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  if (!v17)
  {
    return 0;
  }

  v18 = (v4 + 48);
  v19 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v20 = *(v8 + 72);
  while (1)
  {
    v21 = *(v13 + 48);
    sub_1BA00CA40(v19, v16);
    sub_1BA00CA40(v32, &v16[v21]);
    v22 = *v18;
    if ((*v18)(v16, 1, v3) == 1)
    {
      break;
    }

    sub_1BA00CA40(v16, v11);
    if (v22(&v16[v21], 1, v3) == 1)
    {
      sub_1BA00B360(v11, type metadata accessor for SummarySharingSelectableDataTypeItem);
      goto LABEL_4;
    }

    v23 = &v16[v21];
    v24 = v20;
    v25 = v13;
    v26 = v30;
    sub_1BA00B508(v23, v30, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v31 = _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV2eeoiySbAC_ACtFZ_0(v11, v26);
    v27 = v26;
    v13 = v25;
    v20 = v24;
    sub_1BA00B360(v27, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA00B360(v11, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA00A89C(v16, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1B9F3D424);
    if (v31)
    {
      return 1;
    }

LABEL_5:
    v19 += v20;
    if (!--v17)
    {
      return 0;
    }
  }

  if (v22(&v16[v21], 1, v3) != 1)
  {
LABEL_4:
    sub_1BA00B360(v16, sub_1BA00CB68);
    goto LABEL_5;
  }

  sub_1BA00A89C(v16, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1B9F3D424);
  return 1;
}

BOOL sub_1BA006608(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1BA006668()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthExperienceStore));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_pinnedContentManager));
}

id SharingOverviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA00681C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_1BA0068DC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v77 = MEMORY[0x1E69E8050];
  v80 = MEMORY[0x1E69E6720];
  v81 = ObjectType;
  sub_1B9F3D424(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v74 = &v57 - v7;
  v79 = sub_1BA4A33C8();
  v82 = *(v79 - 8);
  v8 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v79, v9);
  v78 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00AB24(0);
  v67 = v10;
  v69 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00AEAC(0);
  v66 = v14;
  v68 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00C4B0(0, &qword_1EBBEA0C0, sub_1BA00AEAC, sub_1BA00AF88, MEMORY[0x1E695BE30]);
  v18 = *(v17 - 8);
  v71 = v17;
  v72 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v63 = &v57 - v20;
  sub_1BA00AFBC(0);
  v22 = *(v21 - 8);
  v75 = v21;
  v76 = v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v65 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v70 = v25;
  *(v25 + 16) = 0;
  v73 = (v25 + 16);
  v62 = a1;
  v83 = sub_1BA0054AC();
  sub_1BA4A4D08();
  sub_1BA00CC04(0, &qword_1EBBEA090, MEMORY[0x1E695BED0]);
  sub_1BA00ACC8(0);
  sub_1BA00AE38();
  sub_1B9F114D4(&qword_1EBBEA088, sub_1BA00ACC8, MEMORY[0x1E695BE60]);
  sub_1BA4A5078();

  v26 = v82;
  v61 = *(v82 + 16);
  v28 = v78;
  v27 = v79;
  v61(v78, a1, v79);
  v29 = *(v26 + 80);
  v60 = v29;
  v30 = (v29 + 24) & ~v29;
  v58 = v30;
  v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  v33 = *(v26 + 32);
  v82 = v26 + 32;
  v59 = v33;
  v33(v32 + v30, v28, v27);
  v34 = v80;
  *(v32 + v31) = v81;
  sub_1B9F3D424(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, v34);
  sub_1B9F114D4(&qword_1EBBEA0B8, sub_1BA00AB24, MEMORY[0x1E695BE40]);
  v35 = v2;
  v36 = v64;
  v37 = v67;
  sub_1BA4A5058();

  (*(v69 + 8))(v13, v37);
  sub_1BA00AF88();
  v38 = v63;
  v39 = v66;
  sub_1BA4A5068();
  (*(v68 + 8))(v36, v39);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v40 = sub_1BA4A7308();
  v83 = v40;
  v41 = sub_1BA4A72A8();
  v42 = v74;
  (*(*(v41 - 8) + 56))(v74, 1, 1, v41);
  sub_1BA00B09C();
  sub_1B9F3DC80();
  v43 = v65;
  v44 = v71;
  sub_1BA4A50A8();
  sub_1BA00A89C(v42, &qword_1EDC6B5B8, v77, v80, sub_1B9F3D424);

  (*(v72 + 8))(v38, v44);
  v45 = swift_allocObject();
  v46 = v70;
  v45[2] = v35;
  v45[3] = v46;
  v47 = v81;
  v45[4] = v81;
  v49 = v78;
  v48 = v79;
  v61(v78, v62, v79);
  v50 = v57;
  v51 = swift_allocObject();
  *(v51 + 16) = v35;
  v59(v51 + v58, v49, v48);
  *(v51 + v50) = v47;
  sub_1B9F114D4(&qword_1EBBEA0E0, sub_1BA00AFBC, MEMORY[0x1E695BE98]);
  v52 = v35;

  v53 = v75;
  v54 = sub_1BA4A5008();

  (*(v76 + 8))(v43, v53);
  v55 = v73;
  swift_beginAccess();
  *v55 = v54;
}

uint64_t sub_1BA007190()
{
  sub_1B9F3D424(0, &qword_1EBBEA070, sub_1BA00ADAC, MEMORY[0x1E69E62F8]);
  sub_1BA00ADE0(&qword_1EBBEA080, &qword_1EBBEA070, sub_1BA00ADAC, MEMORY[0x1E69E6328]);
  return sub_1BA4A6A18();
}

uint64_t sub_1BA007248@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v135 = a4;
  v136 = a2;
  v132 = a3;
  v140 = a5;
  v6 = sub_1BA4A3EA8();
  v137 = *(v6 - 8);
  v138 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v134 = &v121 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v130 = &v121 - v15;
  v16 = sub_1BA4A1798();
  v126 = *(v16 - 8);
  v127 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v125 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v19);
  v123 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v128 = &v121 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v133 = &v121 - v26;
  sub_1B9F3D424(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v124 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v121 - v32;
  v34 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v131 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v129 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00ADAC(0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BA4A3A28();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v121 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v121 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v121 - v52;
  v54 = a1;
  v56 = v55;
  sub_1BA00B3C0(v54, v40, sub_1BA00ADAC);
  if ((*(v42 + 48))(v40, 1, v56) == 1)
  {
    sub_1BA00B360(v40, sub_1BA00ADAC);
    sub_1BA4A3D88();
    v57 = sub_1BA4A3E88();
    v58 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v142 = v60;
      *v59 = 136315138;
      v61 = sub_1BA4A85D8();
      v63 = sub_1B9F0B82C(v61, v62, &v142);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1B9F07000, v57, v58, "[%s] Received a nil auth identifier", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      MEMORY[0x1BFAF43A0](v59, -1, -1);
    }

    (*(v137 + 8))(v9, v138);
    v64 = 1;
    goto LABEL_5;
  }

  (*(v42 + 32))(v53, v40, v56);
  v68 = v144;
  v69 = sub_1BA005AA4();
  if (!v68)
  {
    v144 = 0;
    v71 = v136;
    v122 = v42;
    v121 = v56;
    if (v69)
    {
      v72 = v69;
      v73 = v70;
      ObjectType = swift_getObjectType();
      (*(v73 + 32))(v53, *&v71[OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthStore], v132, ObjectType, v73);
      v75 = v131;
      if ((*(v131 + 48))(v33, 1, v34) != 1)
      {
        v134 = v72;
        v136 = v53;
        v94 = v129;
        sub_1BA00B508(v33, v129, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v95 = v124;
        sub_1BA00B3C0(v94, v124, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v96 = *(v75 + 56);
        v96(v95, 0, 1, v34);
        v142 = type metadata accessor for SummarySharingSelectableDataTypeCell();
        sub_1BA00B428(0, &qword_1EBBE9DF8, type metadata accessor for SummarySharingSelectableDataTypeCell);
        v97 = sub_1BA4A6808();
        v99 = v98;
        v100 = v133;
        *(v133 + 40) = 0;
        swift_unknownObjectWeakInit();
        v101 = *(v141 + 40);
        v96(v100 + v101, 1, 1, v34);
        *v100 = v97;
        *(v100 + 8) = v99;
        v142 = 0xD000000000000025;
        v143 = 0x80000001BA4E3640;
        v102 = v125;
        sub_1BA4A1788();
        v103 = sub_1BA4A1748();
        v105 = v104;
        (*(v126 + 8))(v102, v127);
        MEMORY[0x1BFAF1350](v103, v105);

        v106 = v143;
        *(v100 + 16) = v142;
        *(v100 + 24) = v106;
        *(v100 + 48) = 0;
        *(v100 + 40) = 0;
        *(v100 + 56) = 0;
        *(v100 + 64) = 0;
        swift_unknownObjectWeakAssign();
        sub_1BA00B474(v95, v100 + v101);
        v107 = v130;
        sub_1BA4A3D88();
        v108 = v128;
        sub_1BA00B3C0(v100, v128, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v109 = sub_1BA4A3E88();
        v110 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v142 = v112;
          *v111 = 136315394;
          v113 = sub_1BA4A85D8();
          v115 = sub_1B9F0B82C(v113, v114, &v142);

          *(v111 + 4) = v115;
          *(v111 + 12) = 2080;
          sub_1BA00B3C0(v108, v123, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v116 = sub_1BA4A6808();
          v118 = v117;
          sub_1BA00B360(v108, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v119 = sub_1B9F0B82C(v116, v118, &v142);

          *(v111 + 14) = v119;
          _os_log_impl(&dword_1B9F07000, v109, v110, "[%s] Fetched item to be shared: %s", v111, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v112, -1, -1);
          MEMORY[0x1BFAF43A0](v111, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          sub_1BA00B360(v108, type metadata accessor for SummarySharingSelectableDataTypeItem);
        }

        (*(v137 + 8))(v107, v138);
        sub_1BA00B360(v94, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        (*(v122 + 8))(v136, v121);
        v120 = v140;
        sub_1BA00B508(v133, v140, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v65 = v120;
        v64 = 0;
        v66 = v141;
        return (*(v139 + 56))(v65, v64, 1, v66);
      }

      swift_unknownObjectRelease();
      sub_1BA00A89C(v33, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1B9F3D424);
    }

    v76 = v134;
    sub_1BA4A3D88();
    v77 = v122;
    v78 = *(v122 + 16);
    v79 = v121;
    v78(v49, v53, v121);
    v80 = v53;
    v81 = sub_1BA4A3E88();
    LODWORD(v133) = sub_1BA4A6FA8();
    if (!os_log_type_enabled(v81, v133))
    {

      v93 = *(v77 + 8);
      v93(v49, v79);
      (*(v137 + 8))(v76, v138);
      v93(v80, v79);
      v64 = 1;
      v65 = v140;
      v66 = v141;
      return (*(v139 + 56))(v65, v64, 1, v66);
    }

    v82 = swift_slowAlloc();
    v136 = v80;
    v83 = v82;
    v132 = swift_slowAlloc();
    v142 = v132;
    *v83 = 136315394;
    v84 = sub_1BA4A85D8();
    v86 = sub_1B9F0B82C(v84, v85, &v142);

    *(v83 + 4) = v86;
    *(v83 + 12) = 2080;
    v78(v45, v49, v79);
    v87 = sub_1BA4A6808();
    v89 = v88;
    v90 = *(v122 + 8);
    v90(v49, v79);
    v91 = sub_1B9F0B82C(v87, v89, &v142);

    *(v83 + 14) = v91;
    _os_log_impl(&dword_1B9F07000, v81, v133, "[%s] Could not get bundle app delegate class as PluginSharingAuthorizationDelegate: %s", v83, 0x16u);
    v92 = v132;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v92, -1, -1);
    MEMORY[0x1BFAF43A0](v83, -1, -1);

    (*(v137 + 8))(v134, v138);
    v90(v136, v79);
    v64 = 1;
LABEL_5:
    v65 = v140;
    v66 = v141;
    return (*(v139 + 56))(v65, v64, 1, v66);
  }

  return (*(v42 + 8))(v53, v56);
}

uint64_t sub_1BA007F4C(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v60 = a2;
  v7 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v56 - v18;
  v20 = *a1;
  sub_1BA4A3DD8();
  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FC8();
  v23 = os_log_type_enabled(v21, v22);
  v59 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v58 = v10;
    v61 = a3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v63[0] = v26;
    *v25 = 136315138;
    v27 = sub_1BA4A85D8();
    v57 = v20;
    v29 = v11;
    v30 = sub_1B9F0B82C(v27, v28, v63);
    v20 = v57;

    *(v25 + 4) = v30;
    v11 = v29;
    _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] Stream completed", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    v31 = v25;
    a3 = v61;
    v10 = v58;
    MEMORY[0x1BFAF43A0](v31, -1, -1);
  }

  v32 = v12[1];
  v32(v19, v11);
  if (v20)
  {
    v33 = v20;
    sub_1BA4A3DD8();
    v34 = v20;
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v61 = a3;
      v39 = v38;
      v63[0] = v38;
      *v37 = 136315394;
      v40 = sub_1BA4A85D8();
      v59 = v11;
      v42 = sub_1B9F0B82C(v40, v41, v63);
      v58 = v12;
      v43 = v42;

      *(v37 + 4) = v43;
      *(v37 + 12) = 2080;
      v62 = v20;
      v44 = v20;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v45 = sub_1BA4A6828();
      v47 = sub_1B9F0B82C(v45, v46, v63);

      *(v37 + 14) = v47;
      _os_log_impl(&dword_1B9F07000, v35, v36, "[%s] Error when opening invite: %s", v37, 0x16u);
      swift_arrayDestroy();
      v48 = v39;
      a3 = v61;
      MEMORY[0x1BFAF43A0](v48, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);

      v49 = v59;
      v50 = v15;
    }

    else
    {

      v50 = v15;
      v49 = v11;
    }

    v32(v50, v49);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v51 = sub_1BA4A1318();
    v53 = v52;
    v54 = v20;
    SummarySharingOnboardingError.init(error:)(v20, v10);
    sub_1BA0C6BA4(v60, v51, v53, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);

    sub_1BA00B360(v10, type metadata accessor for SummarySharingOnboardingError);
  }

  swift_beginAccess();
  swift_beginAccess();
  *(a3 + 16) = 0;
}

void sub_1BA008464(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1BA4A3DD8();

  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = a3;
    v18 = v17;
    v31 = v17;
    *v16 = 136315394;
    v19 = sub_1BA4A85D8();
    v21 = sub_1B9F0B82C(v19, v20, &v31);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v30 = *(v12 + 16);
    v22 = sub_1BA4A82D8();
    v24 = sub_1B9F0B82C(v22, v23, &v31);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Fetched selected items with count: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v18, -1, -1);
    v25 = v16;
    a2 = v29;
    MEMORY[0x1BFAF43A0](v25, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v26 = sub_1BA005D94(v12);
  v27 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v27 setModalInPresentation_];
  [a2 presentViewController:v27 animated:1 completion:0];
}

uint64_t sub_1BA0086FC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_1BA4A33C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EBBEA128, 0x1E696C2C8);
  sub_1BA4A75A8();
  v9 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v10 = objc_allocWithZone(MEMORY[0x1E696C2C8]);
  v11 = v9;
  v12 = sub_1BA4A6758();

  v13 = [v10 initWithClientIdentifier:v12 healthStore:v11];

  (*(v5 + 16))(v8, a2 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation, v4);
  sub_1BA4A1BC8();
  sub_1BA4A1BB8();
  v14 = sub_1BA0098AC(v3, v8, v13);

  (*(v5 + 8))(v8, v4);
  v17[1] = v14;
  sub_1BA00C890(0, &qword_1EBBEA0F0, MEMORY[0x1E695BED0]);
  sub_1BA00C330();
  v15 = sub_1BA4A4F98();

  return v15;
}

uint64_t sub_1BA008928(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v101 = a6;
  v102 = a7;
  v104 = a4;
  v105 = a2;
  v10 = sub_1BA4A33C8();
  v98 = *(v10 - 8);
  v99 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v97 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D424(0, &qword_1EBBEA118, MEMORY[0x1E69686D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v93 = &v91 - v15;
  v16 = sub_1BA4A11C8();
  v95 = *(v16 - 8);
  v96 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v94 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SummarySharingOnboardingError(0);
  v108 = *(v19 - 8);
  v109 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v103 = (&v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v106 = &v91 - v24;
  sub_1BA00C4B0(0, &qword_1EBBEA120, type metadata accessor for SummarySharingOnboardingError, sub_1BA00C2FC, MEMORY[0x1E695BEB0]);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v91 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v91 - v35;
  v107 = sub_1BA4A3EA8();
  v37 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v38);
  v40 = &v91 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v110 = a1;
  sub_1BA00C530(a1, v36);
  v41 = sub_1BA4A3E88();
  v42 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v92 = a3;
    v44 = v43;
    v45 = swift_slowAlloc();
    v100 = a5;
    v46 = v45;
    v111[0] = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, v111);
    *(v44 + 12) = 2080;
    sub_1BA00C530(v36, v32);
    v47 = sub_1BA4A6808();
    v49 = v48;
    sub_1BA00C5D8(v36);
    v50 = sub_1B9F0B82C(v47, v49, v111);

    *(v44 + 14) = v50;
    _os_log_impl(&dword_1B9F07000, v41, v42, "[%s] Update sharing invite stream completed: %s", v44, 0x16u);
    swift_arrayDestroy();
    v51 = v46;
    a5 = v100;
    MEMORY[0x1BFAF43A0](v51, -1, -1);
    v52 = v44;
    a3 = v92;
    MEMORY[0x1BFAF43A0](v52, -1, -1);
  }

  else
  {

    sub_1BA00C5D8(v36);
  }

  (*(v37 + 8))(v40, v107);
  sub_1BA00C530(v110, v28);
  if ((*(v108 + 48))(v28, 1, v109) == 1)
  {
    sub_1BA00C5D8(v28);
    goto LABEL_15;
  }

  v53 = v106;
  sub_1BA00B508(v28, v106, type metadata accessor for SummarySharingOnboardingError);
  v54 = v105;
  if (!v105)
  {
LABEL_14:
    sub_1BA00B360(v53, type metadata accessor for SummarySharingOnboardingError);
    goto LABEL_15;
  }

  v55 = v103;
  sub_1BA00B3C0(v53, v103, type metadata accessor for SummarySharingOnboardingError);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v70 = v54;
    sub_1BA00B360(v55, type metadata accessor for SummarySharingOnboardingError);
LABEL_13:
    v72 = swift_allocObject();
    *(v72 + 16) = v104;
    *(v72 + 24) = a5;

    sub_1BA0C6BA4(v54, v101, v102, 0, 0, MEMORY[0x1E69E7CC0], sub_1BA00C678, v72);

    goto LABEL_14;
  }

  if (*v55 != 707)
  {
    v71 = v54;
    goto LABEL_13;
  }

  v100 = a5;
  sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
  v56 = a3;
  v57 = v54;
  v58 = sub_1BA4A7068();
  v59 = v99;
  v111[3] = v99;
  v111[4] = MEMORY[0x1E69A3410];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v111);
  v61 = OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation;
  v62 = *(v98 + 16);
  v63 = v56;
  v62(boxed_opaque_existential_1, v56 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_profileInformation, v59);
  sub_1BA4A7008();
  v64 = sub_1BA4A6FE8();

  __swift_destroy_boxed_opaque_existential_1(v111);
  if (v64)
  {
    v65 = v64;
    v66 = v93;
    sub_1BA4A7A18();

    v68 = v95;
    v67 = v96;
    (*(v95 + 56))(v66, 0, 1, v96);
    v69 = v94;
    (*(v68 + 32))(v94, v66, v67);
  }

  else
  {
    v68 = v95;
    v67 = v96;
    v74 = v93;
    (*(v95 + 56))(v93, 1, 1, v96);
    v69 = v94;
    sub_1BA4A11B8();
    if ((*(v68 + 48))(v74, 1, v67) != 1)
    {
      sub_1BA00A89C(v74, &qword_1EBBEA118, MEMORY[0x1E69686D8], MEMORY[0x1E69E6720], sub_1B9F3D424);
    }
  }

  LocalizedGeminiString(_:defaultValue:comment:options:)("SUMMARY_SHARING_ERROR_PARTICIPANT_NOT_FOUND_MESSAGE", 51, 2u, 0, 0xE000000000000000, "", 0, 2, v69);
  (*(v68 + 8))(v69, v67);
  sub_1B9F2EAC0(0);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1BA4B5480;
  v76 = v63 + v61;
  v77 = v97;
  v78 = v99;
  v62(v97, v76, v99);
  v79 = sub_1BA4A33A8();
  v81 = v80;
  (*(v98 + 8))(v77, v78);
  *(v75 + 56) = MEMORY[0x1E69E6158];
  *(v75 + 64) = sub_1B9F1BE20();
  *(v75 + 32) = v79;
  *(v75 + 40) = v81;
  v82 = sub_1BA4A6768();
  v84 = v83;

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v85 = sub_1BA4A1318();
  v87 = v86;
  v88 = swift_allocObject();
  v89 = v104;
  v88[2] = v57;
  v88[3] = v89;
  v88[4] = v100;
  v90 = v57;

  sub_1BA2C91F8(v90, v85, v87, v82, v84, MEMORY[0x1E69E7CC0], sub_1BA00C6A4, v88);

  sub_1BA00B360(v106, type metadata accessor for SummarySharingOnboardingError);
  a3 = v63;
LABEL_15:
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable) = 0;
}

void sub_1BA0093DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_1BA00CDA4;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F0B040;
  v8[3] = &block_descriptor_5;
  v7 = _Block_copy(v8);

  [a1 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

uint64_t sub_1BA0094C4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v30 = a3;
  v31 = a4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = a2;
    v19 = a6;
    v20 = a5;
    v21 = v18;
    v32 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v32);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a1 & 1;
    _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] Update sharing invite stream completed with success: %{BOOL}d", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    a5 = v20;
    a6 = v19;
    a2 = v29;
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  if ((a1 & 1) == 0 && a2)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;
    v24 = qword_1EDC5E100;
    v25 = a2;

    if (v24 != -1)
    {
      swift_once();
    }

    v26 = sub_1BA4A1318();
    sub_1BA2C91F8(v25, v30, v31, v26, v27, MEMORY[0x1E69E7CC0], sub_1BA00CDA4, v23);
  }

  return a5(a1 & 1);
}

uint64_t sub_1BA0097BC(char a1, void *a2, void (*a3)(uint64_t *))
{
  sub_1BA00C890(0, &qword_1EBBEA168, MEMORY[0x1E69E75F0]);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v12 - v8);
  if (a2)
  {
    v10 = a2;
    SummarySharingOnboardingError.init(error:)(a2, v9);
  }

  else
  {
    *v9 = a1 & 1;
  }

  swift_storeEnumTagMultiPayload();
  a3(v9);
  return sub_1BA00C904(v9);
}

uint64_t sub_1BA0098AC(int a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v46 = a1;
  sub_1BA00C6B0(0);
  v53 = v3;
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00C7C8(0);
  v54 = v6;
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BA4A3EA8();
  v9 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1728();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v42 - v19;
  v21 = sub_1BA4A3318();
  v23 = v22;
  sub_1B9F25350();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5480;
  *(v24 + 32) = v21;
  *(v24 + 40) = v23;

  sub_1BA4A1BA8();

  sub_1BA4A1718();
  sub_1BA4A6CE8();
  sub_1BA4A16A8();
  v25 = objc_allocWithZone(MEMORY[0x1E696C2B8]);
  v26 = sub_1BA4A6758();
  v27 = sub_1BA4A16B8();
  v44 = [v25 initWithAction:2 categoryIdentifier:v26 expirationDate:v27];

  sub_1BA4A3E28();

  v28 = sub_1BA4A3E88();
  v29 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v55 = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v55);
    *(v30 + 12) = 2080;
    v32 = sub_1B9F0B82C(v21, v23, &v55);

    *(v30 + 14) = v32;
    _os_log_impl(&dword_1B9F07000, v28, v29, "%{public}s Sending dismiss instruction for %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v31, -1, -1);
    MEMORY[0x1BFAF43A0](v30, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v12, v43);
  v33 = v44;
  v55 = sub_1BA4A75B8();
  *(swift_allocObject() + 16) = v46 & 1;
  sub_1BA00C74C(0);
  sub_1B9F114D4(&qword_1EBBEA140, sub_1BA00C74C, MEMORY[0x1E695BED8]);
  v34 = v49;
  sub_1BA4A4FE8();

  type metadata accessor for SummarySharingOnboardingError(0);
  sub_1B9F114D4(&qword_1EBBEA150, sub_1BA00C6B0, MEMORY[0x1E695BD60]);
  sub_1BA00C2FC();
  v35 = v50;
  v36 = v53;
  sub_1BA4A50D8();
  (*(v51 + 8))(v34, v36);
  sub_1B9F114D4(&qword_1EBBEA158, sub_1BA00C7C8, MEMORY[0x1E695BE58]);
  v37 = v54;
  v38 = sub_1BA4A4F98();

  (*(v52 + 8))(v35, v37);
  v39 = v48;
  v40 = *(v47 + 8);
  v40(v16, v48);
  v40(v20, v39);
  return v38;
}

uint64_t sub_1BA009F00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D424(0, &qword_1EBBEA160, type metadata accessor for SummarySharingOnboardingError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v28 - v11;
  v29 = a1;
  v13 = a1;
  sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
  v14 = type metadata accessor for SummarySharingOnboardingError(0);
  v15 = swift_dynamicCast();
  v16 = *(*(v14 - 8) + 56);
  if (v15)
  {
    v16(v12, 0, 1, v14);
    return sub_1BA00B508(v12, a2, type metadata accessor for SummarySharingOnboardingError);
  }

  else
  {
    v16(v12, 1, 1, v14);
    sub_1BA00A89C(v12, &qword_1EBBEA160, type metadata accessor for SummarySharingOnboardingError, MEMORY[0x1E69E6720], sub_1B9F3D424);
    sub_1BA4A3E28();
    v18 = a1;
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28[1] = a2;
      v22 = v21;
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v29);
      *(v22 + 12) = 2082;
      v28[2] = a1;
      v24 = a1;
      v25 = sub_1BA4A6828();
      v27 = sub_1B9F0B82C(v25, v26, &v29);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v19, v20, "%{public}s Could not send notification instruction %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v23, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1BA00A2A0(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v27 = *(a1 + 16);
  if (!v27)
  {
    return v1;
  }

  v2 = 0;
  v26 = a1 + 32;
  v3 = MEMORY[0x1E69A3310];
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v29 = v2;
    v5 = *(v26 + 48 * v2 + 16);
    v34 = v1;
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;

      do
      {
        sub_1B9F0A534(v7, v33);
        sub_1B9F1134C(v33, v31);
        sub_1B9F0D950(0, &qword_1EDC6AD50, v3);
        type metadata accessor for YouAreSharingWithItem(0);
        if ((swift_dynamicCast() & 1) != 0 && v32)
        {
          MEMORY[0x1BFAF1510]();
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v1 = v34;
        }

        v7 += 40;
        --v6;
      }

      while (v6);
    }

    v8 = v1 >> 62;
    if (v1 >> 62)
    {
      v9 = sub_1BA4A7CC8();
    }

    else
    {
      v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v30 >> 62;
    if (v30 >> 62)
    {
      v25 = sub_1BA4A7CC8();
      v12 = v25 + v9;
      if (__OFADD__(v25, v9))
      {
LABEL_41:
        __break(1u);
        return v1;
      }
    }

    else
    {
      v11 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v10)
      {
        v13 = v30 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_1BA4A7CC8();
      goto LABEL_24;
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_1BA4A7E38();
    v30 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v15 >> 1) - v14) < v9)
    {
      goto LABEL_45;
    }

    v17 = v13 + 8 * v14 + 32;
    v28 = v9;
    if (v8)
    {
      if (v16 < 1)
      {
        goto LABEL_47;
      }

      sub_1B9F3D424(0, &qword_1EBBEA188, type metadata accessor for YouAreSharingWithItem, MEMORY[0x1E69E62F8]);
      sub_1BA00ADE0(&unk_1EBBEA190, &qword_1EBBEA188, type metadata accessor for YouAreSharingWithItem, MEMORY[0x1E69E6340]);
      for (i = 0; i != v16; ++i)
      {
        v19 = sub_1BA0CA918(v33, i, v1);
        v21 = *v20;

        (v19)(v33, 0);
        *(v17 + 8 * i) = v21;
      }
    }

    else
    {
      type metadata accessor for YouAreSharingWithItem(0);
      swift_arrayInitWithCopy();
    }

    v1 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69A3310];
    if (v28 >= 1)
    {
      v22 = *(v13 + 16);
      v23 = __OFADD__(v22, v28);
      v24 = v22 + v28;
      if (v23)
      {
        goto LABEL_46;
      }

      *(v13 + 16) = v24;
    }

LABEL_4:
    v2 = v29 + 1;
    if (v29 + 1 == v27)
    {
      return v30;
    }
  }

  result = sub_1BA4A7CC8();
  v16 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_3:

  v1 = MEMORY[0x1E69E7CC0];
  if (v9 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_1BA00A6C8(uint64_t a1)
{
  if (!qword_1EBBE9FA8)
  {
    sub_1BA00A794(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1B9F114D4(&qword_1EBBE9FC8, sub_1BA00A794, MEMORY[0x1E695BED8]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9FA8);
    }
  }
}

void sub_1BA00A794(uint64_t a1)
{
  if (!qword_1EBBE9FB0)
  {
    sub_1B9F6A804(255, &qword_1EBBE9FB8, &qword_1EBBE9FC0, 0x1E696C4E8);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9FB0);
    }
  }
}

BOOL sub_1BA00A82C(void *a1)
{
  sub_1BA4A3778();

  return sub_1BA00495C(a1);
}

uint64_t sub_1BA00A89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA00A904(id *a1)
{
  v3 = *(sub_1BA4A3778() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BA004D10(a1, v1 + v4, v6, v7);
}

void sub_1BA00AB24(uint64_t a1)
{
  if (!qword_1EBBEA058)
  {
    sub_1BA00ABFC(255);
    sub_1BA00CC04(255, &qword_1EBBEA090, MEMORY[0x1E695BED0]);
    sub_1B9F114D4(&qword_1EBBEA098, sub_1BA00ABFC, MEMORY[0x1E695BCF8]);
    sub_1BA00AE38();
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA058);
    }
  }
}

void sub_1BA00ABFC(uint64_t a1)
{
  if (!qword_1EBBEA060)
  {
    sub_1BA00ACC8(255);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    sub_1B9F114D4(&qword_1EBBEA088, sub_1BA00ACC8, MEMORY[0x1E695BE60]);
    v1 = sub_1BA4A4B38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA060);
    }
  }
}

void sub_1BA00ACC8(uint64_t a1)
{
  if (!qword_1EBBEA068)
  {
    sub_1B9F3D424(255, &qword_1EBBEA070, sub_1BA00ADAC, MEMORY[0x1E69E62F8]);
    sub_1BA00ADE0(&qword_1EBBEA080, &qword_1EBBEA070, sub_1BA00ADAC, MEMORY[0x1E69E6328]);
    v1 = sub_1BA4A4C98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA068);
    }
  }
}

uint64_t sub_1BA00ADE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3D424(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA00AE38()
{
  result = qword_1EBBEA0A0;
  if (!qword_1EBBEA0A0)
  {
    sub_1BA00CC04(255, &qword_1EBBEA090, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA0A0);
  }

  return result;
}

void sub_1BA00AEAC(uint64_t a1)
{
  if (!qword_1EBBEA0A8)
  {
    sub_1BA00AB24(255);
    sub_1B9F3D424(255, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
    sub_1B9F114D4(&qword_1EBBEA0B8, sub_1BA00AB24, MEMORY[0x1E695BE40]);
    v1 = sub_1BA4A4C08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA0A8);
    }
  }
}

void sub_1BA00AFBC(uint64_t a1)
{
  if (!qword_1EBBEA0D0)
  {
    sub_1BA00C4B0(255, &qword_1EBBEA0C0, sub_1BA00AEAC, sub_1BA00AF88, MEMORY[0x1E695BE30]);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA00B09C();
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA0D0);
    }
  }
}

unint64_t sub_1BA00B09C()
{
  result = qword_1EBBEA0D8;
  if (!qword_1EBBEA0D8)
  {
    sub_1BA00C4B0(255, &qword_1EBBEA0C0, sub_1BA00AEAC, sub_1BA00AF88, MEMORY[0x1E695BE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA0D8);
  }

  return result;
}

uint64_t sub_1BA00B138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1BA4A33C8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_1BA007248(a1, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_1BA4A33C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void sub_1BA00B2C0(uint64_t *a1)
{
  v3 = *(sub_1BA4A33C8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA008464(a1, v5, v1 + v4, v6);
}

uint64_t sub_1BA00B360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA00B3C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA00B428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1BA00B474(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D424(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA00B508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA00B570(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v53 = a2;
  v54 = a4;
  v50 = a3;
  sub_1B9F3D424(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v46 - v11;
  sub_1BA00C270(0);
  v14 = v13;
  v49 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00C3A4(0);
  v51 = *(v18 - 8);
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A3EA8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a5[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable])
  {

    sub_1BA4A3DD8();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v55);
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] Could not update invite because there is already an invite stream in progress", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v23 + 8))(v26, v22);
    sub_1BA24024C(0, a6);
  }

  else
  {
    v55 = a1;
    v48 = OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable;
    *(swift_allocObject() + 16) = a5;

    v47 = a5;
    sub_1BA4A4D08();
    sub_1BA00C890(0, &qword_1EBBEA0F0, MEMORY[0x1E695BED0]);
    v31 = a5;
    sub_1BA00C330();
    sub_1BA4A5088();

    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v32 = sub_1BA4A7308();
    v55 = v32;
    v33 = sub_1BA4A72A8();
    (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
    sub_1B9F114D4(&qword_1EBBEA108, sub_1BA00C270, MEMORY[0x1E695BE40]);
    sub_1B9F3DC80();
    sub_1BA4A50A8();
    sub_1BA00A89C(v12, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1B9F3D424);

    (*(v49 + 8))(v17, v14);
    v34 = swift_allocObject();
    v35 = v53;
    v36 = v54;
    v37 = v47;
    v34[2] = v53;
    v34[3] = v37;
    v34[4] = sub_1BA00C97C;
    v34[5] = a6;
    v38 = v50;
    v34[6] = v50;
    v34[7] = v36;
    v39 = swift_allocObject();
    v39[2] = v35;
    v39[3] = v38;
    v39[4] = v36;
    v39[5] = sub_1BA00C97C;
    v39[6] = a6;
    sub_1B9F114D4(&qword_1EBBEA110, sub_1BA00C3A4, MEMORY[0x1E695BE98]);
    v40 = v35;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v41 = v37;
    v42 = v40;
    v43 = v52;
    v44 = sub_1BA4A5008();

    (*(v51 + 8))(v21, v43);
    *&v31[v48] = v44;
  }
}

uint64_t sub_1BA00BBF0(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v53 = a2;
  v54 = a4;
  v50 = a3;
  sub_1B9F3D424(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v46 - v11;
  sub_1BA00C270(0);
  v14 = v13;
  v49 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA00C3A4(0);
  v51 = *(v18 - 8);
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A3EA8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a5[OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable])
  {

    sub_1BA4A3DD8();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v55);
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] Could not update invite because there is already an invite stream in progress", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v23 + 8))(v26, v22);
    sub_1BA2406C8(0, a6);
  }

  else
  {
    v55 = a1;
    v48 = OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_inviteStreamCancellable;
    *(swift_allocObject() + 16) = a5;

    v47 = a5;
    sub_1BA4A4D08();
    sub_1BA00C890(0, &qword_1EBBEA0F0, MEMORY[0x1E695BED0]);
    v31 = a5;
    sub_1BA00C330();
    sub_1BA4A5088();

    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v32 = sub_1BA4A7308();
    v55 = v32;
    v33 = sub_1BA4A72A8();
    (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
    sub_1B9F114D4(&qword_1EBBEA108, sub_1BA00C270, MEMORY[0x1E695BE40]);
    sub_1B9F3DC80();
    sub_1BA4A50A8();
    sub_1BA00A89C(v12, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1B9F3D424);

    (*(v49 + 8))(v17, v14);
    v34 = swift_allocObject();
    v35 = v53;
    v36 = v54;
    v37 = v47;
    v34[2] = v53;
    v34[3] = v37;
    v34[4] = sub_1BA00C470;
    v34[5] = a6;
    v38 = v50;
    v34[6] = v50;
    v34[7] = v36;
    v39 = swift_allocObject();
    v39[2] = v35;
    v39[3] = v38;
    v39[4] = v36;
    v39[5] = sub_1BA00C470;
    v39[6] = a6;
    sub_1B9F114D4(&qword_1EBBEA110, sub_1BA00C3A4, MEMORY[0x1E695BE98]);
    v40 = v35;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v41 = v37;
    v42 = v40;
    v43 = v52;
    v44 = sub_1BA4A5008();

    (*(v51 + 8))(v21, v43);
    *&v31[v48] = v44;
  }
}

void sub_1BA00C270(uint64_t a1)
{
  if (!qword_1EBBEA0E8)
  {
    sub_1BA00C890(255, &qword_1EBBEA0F0, MEMORY[0x1E695BED0]);
    sub_1BA00C330();
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA0E8);
    }
  }
}

unint64_t sub_1BA00C330()
{
  result = qword_1EBBEA0F8;
  if (!qword_1EBBEA0F8)
  {
    sub_1BA00C890(255, &qword_1EBBEA0F0, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA0F8);
  }

  return result;
}

void sub_1BA00C3A4(uint64_t a1)
{
  if (!qword_1EBBEA100)
  {
    sub_1BA00C270(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1B9F114D4(&qword_1EBBEA108, sub_1BA00C270, MEMORY[0x1E695BE40]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA100);
    }
  }
}

uint64_t sub_1BA00C478@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA0086FC(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

void sub_1BA00C4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1BA00C530(uint64_t a1, uint64_t a2)
{
  sub_1BA00C4B0(0, &qword_1EBBEA120, type metadata accessor for SummarySharingOnboardingError, sub_1BA00C2FC, MEMORY[0x1E695BEB0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA00C5D8(uint64_t a1)
{
  sub_1BA00C4B0(0, &qword_1EBBEA120, type metadata accessor for SummarySharingOnboardingError, sub_1BA00C2FC, MEMORY[0x1E695BEB0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA00C6B0(uint64_t a1)
{
  if (!qword_1EBBEA130)
  {
    sub_1BA00C74C(255);
    sub_1B9F114D4(&qword_1EBBEA140, sub_1BA00C74C, MEMORY[0x1E695BED8]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA130);
    }
  }
}

void sub_1BA00C74C(uint64_t a1)
{
  if (!qword_1EBBEA138)
  {
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA138);
    }
  }
}

void sub_1BA00C7C8(uint64_t a1)
{
  if (!qword_1EBBEA148)
  {
    sub_1BA00C6B0(255);
    type metadata accessor for SummarySharingOnboardingError(255);
    sub_1B9F114D4(&qword_1EBBEA150, sub_1BA00C6B0, MEMORY[0x1E695BD60]);
    sub_1BA00C2FC();
    v1 = sub_1BA4A4C58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA148);
    }
  }
}

void sub_1BA00C890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SummarySharingOnboardingError(255);
    v7 = sub_1BA00C2FC();
    v8 = a3(a1, MEMORY[0x1E69E6370], v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BA00C904(uint64_t a1)
{
  sub_1BA00C890(0, &qword_1EBBEA168, MEMORY[0x1E69E75F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_34Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BA00CA40(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D424(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA00CAD4(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D424(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA00CB68(uint64_t a1)
{
  if (!qword_1EBBEA170)
  {
    sub_1B9F3D424(255, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEA170);
    }
  }
}

void sub_1BA00CC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1B9F3D424(255, &qword_1EBBEA070, sub_1BA00ADAC, MEMORY[0x1E69E62F8]);
    v7 = v6;
    v8 = sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA00CCBC()
{
  result = qword_1EBBEA180;
  if (!qword_1EBBEA180)
  {
    sub_1BA00CC04(255, &qword_1EBBEA178, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA180);
  }

  return result;
}

uint64_t sub_1BA00CD30(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t CodablePluginViewModel.encode()(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  v9 = sub_1BA4A0EC8();
  if (v2)
  {
    v29 = v8;

    sub_1BA4A3E28();
    v10 = v2;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = v3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v28 = v9;
      v16 = v15;
      v30 = v15;
      *v14 = 136315394;
      v17 = sub_1BA4A85D8();
      v19 = sub_1B9F0B82C(v17, v18, &v30);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v20 = sub_1BA4A8418();
      v22 = sub_1B9F0B82C(v20, v21, &v30);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to encode data for %s with error: %s", v14, 0x16u);
      swift_arrayDestroy();
      v23 = v16;
      v9 = v28;
      MEMORY[0x1BFAF43A0](v23, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);

      (*(v4 + 8))(v7, v27);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    sub_1B9F21374();
    swift_allocError();
    *v24 = v2;
    swift_willThrow();
  }

  else
  {
  }

  return v9;
}

uint64_t sub_1BA00D0B8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_1BA4A7DF8();
    v1 = 0x676E69646F636E65;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_1BA4A7DF8();
    v1 = 0x676E69646F636564;
LABEL_5:
    MEMORY[0x1BFAF1350](v1, 0xED00002861746144);
    sub_1B9FED358();
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](41, 0xE100000000000000);
    return 0;
  }

  return 0x7473614365707974;
}

uint64_t PluginView.actionHandler.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))(v5);
  if (*&v5[0])
  {
    v6[2] = v5[2];
    v6[3] = v5[3];
    v6[4] = v5[4];
    v6[0] = v5[0];
    v6[1] = v5[1];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1BA00D78C(v6, v5);
    v3 = (*(AssociatedTypeWitness + 88))(v5);
    sub_1BA00D7E8(v6);
  }

  else
  {
    sub_1B9F8051C(v5);
    return 0;
  }

  return v3;
}

uint64_t ProtobufPluginViewModel.init(userData:)(uint64_t a1, unint64_t a2)
{
  sub_1BA00D83C(a1, a2);
  v5 = v4;
  sub_1B9F2BB4C(a1, a2);
  return v5;
}

id ProtobufPluginViewModel.encode()()
{
  result = [v0 data];
  if (result)
  {
    v2 = result;
    v3 = sub_1BA4A1608();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA00D360@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  sub_1BA00D83C(a1, a2);
  v8 = v7;
  result = sub_1B9F2BB4C(a1, a2);
  *a4 = v8;
  return result;
}

void sub_1BA00D83C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BA4A15F8();
  v4 = [v2 initWithData_];

  if (!v4)
  {
    __break(1u);
  }
}

uint64_t sub_1BA00D948(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BA00D9A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1BA00DA04(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1BA00DA40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEA1A0 = result;
  *algn_1EBBEA1A8 = v1;
  return result;
}

uint64_t sub_1BA00DAF4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEA1B0 = result;
  unk_1EBBEA1B8 = v1;
  return result;
}

id sub_1BA00DBC0@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() *a1];
  *a2 = result;
  return result;
}

uint64_t DataTypeChartMessageItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_uniqueIdentifier);

  return v1;
}

uint64_t DataTypeChartMessageItem.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_reuseIdentifier);

  return v1;
}

uint64_t sub_1BA00DD24@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem____lazy_storage___cnCapabilitiesManager;
  swift_beginAccess();
  sub_1BA0110E8(v1 + v3, &v8);
  if (v9)
  {
    return sub_1B9F1134C(&v8, a1);
  }

  sub_1BA011178(&v8, &qword_1EBBEA290, &qword_1EBBED6D0, &protocol descriptor for CNCapabilitiesManaging);
  if (HKIsUnitTesting())
  {
    v5 = &off_1F380D908;
    v6 = &type metadata for NoOpCNCapabilitiesManager;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E695D0F8]) init];
    v6 = sub_1B9F0ADF8(0, &qword_1EBBEA2A0, 0x1E695D0F8);
    *a1 = v7;
    v5 = &protocol witness table for CNCapabilitiesManager;
  }

  a1[3] = v6;
  a1[4] = v5;
  sub_1B9F0A534(a1, &v8);
  swift_beginAccess();
  sub_1BA0111E8(&v8, v1 + v3);
  return swift_endAccess();
}

id sub_1BA00DE50()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA00DEA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA00DF5C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_viewConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_1BA00DFC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_viewConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

id sub_1BA00E078()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_hkType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA00E0CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_hkType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DataTypeChartMessageItem.profileInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_profileInformation;
  v4 = sub_1BA4A33C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BA00E1FC(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v67 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1BA4A3EA8();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v63 - v13;
  v15 = sub_1BA4A28B8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v20, v21);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  if (*a1)
  {
    sub_1BA4A3DD8();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v71 = v30;
      *v29 = 136315394;
      v72 = ObjectType;
      swift_getMetatypeMetadata();
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v71);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2048;
      *(v29 + 14) = v26;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] unsupported contact type %ld", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    return (*(v69 + 8))(v10, v70);
  }

  else
  {
    v65 = a2;
    v66 = v16;
    if (a3)
    {
      v69 = v23;
      v70 = v22;
      v64 = a3;
      v35 = v25;

      sub_1BA4A1718();
      sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
      v36 = sub_1BA4A70E8();
      ObjectType = v35;
      sub_1BA4A1628();
      v37 = sub_1BA4A1A08();
      [v36 setValue:v37 forKey:*MEMORY[0x1E696C898]];

      v38 = v66;
      v39 = *(v66 + 104);
      v39(v19, *MEMORY[0x1E69A3128], v15);
      LOBYTE(v36) = sub_1BA4A2898();
      v40 = *(v38 + 8);
      v40(v19, v15);
      if (v36)
      {
        v41 = v67;
        v42 = sub_1BA00FC6C(v67);
        v39(v19, *MEMORY[0x1E69A3120], v15);
        v43 = sub_1BA4A2898();
        v40(v19, v15);
        if (v43)
        {

          if (v42)
          {
            sub_1B9F232F8(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
            v44 = swift_allocObject();
            *(v44 + 16) = xmmword_1BA4B5480;
            *(v44 + 56) = type metadata accessor for HealthURLActivityItemProvider(0);
            *(v44 + 32) = v42;
            v45 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
            v46 = v42;
            v47 = sub_1BA4A6AE8();

            v48 = [v45 initWithActivityItems:v47 applicationActivities:0];

            sub_1BA2593F4();
            type metadata accessor for ActivityType(0);
            v49 = sub_1BA4A6AE8();

            [v48 setExcludedActivityTypes_];

            v50 = sub_1BA05984C();
            [v48 setPhotosHeaderMetadata_];

            if (v67)
            {
              [v67 presentViewController:v48 animated:1 completion:0];
            }
          }
        }

        else
        {
          sub_1B9F232F8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_1BA4B5480;
          v60 = v64;
          *(v59 + 32) = v65;
          *(v59 + 40) = v60;
          sub_1BA00E9A0(v41, v42, v59);
        }
      }

      else
      {
        v39(v19, *MEMORY[0x1E69A3120], v15);
        v58 = sub_1BA4A2898();
        v40(v19, v15);
        if (v58)
        {

          sub_1BA00F5C0(v67);
        }

        else
        {
          sub_1B9F232F8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_1BA4B5480;
          v62 = v64;
          *(v61 + 32) = v65;
          *(v61 + 40) = v62;
          sub_1BA00ECB8(v67, v61);
        }
      }

      return (*(v69 + 8))(ObjectType, v70);
    }

    else
    {
      sub_1BA4A3DD8();
      v51 = sub_1BA4A3E88();
      v52 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v71 = v54;
        *v53 = 136315138;
        v72 = ObjectType;
        swift_getMetatypeMetadata();
        v55 = sub_1BA4A6808();
        v57 = sub_1B9F0B82C(v55, v56, &v71);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_1B9F07000, v51, v52, "[%s] invalid recipient", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x1BFAF43A0](v54, -1, -1);
        MEMORY[0x1BFAF43A0](v53, -1, -1);
      }

      return (*(v69 + 8))(v14, v70);
    }
  }
}

void sub_1BA00E9A0(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E6973F10]);
    v7 = a2;
    v8 = [v6 init];
    [v8 setMessageComposeDelegate_];
    [v8 setModalPresentationStyle_];
    v9 = MEMORY[0x1E69E6158];
    v10 = sub_1BA4A6AE8();
    [v8 setRecipients_];

    sub_1B9F232F8(0, &qword_1EDC6E330, v9, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BA4B5480;
    *(v11 + 32) = sub_1BA4A1518();
    *(v11 + 40) = v12;
    v13 = sub_1BA4A6AE8();

    [v8 setContentURLs_];

    v14 = [objc_allocWithZone(MEMORY[0x1E696ED00]) init];
    [v14 setHasFetchedSubresources_];
    v27 = sub_1BA05984C();
    v15 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image];
    if (v15)
    {
      v16 = objc_allocWithZone(MEMORY[0x1E696EC68]);
      v17 = v15;
      v18 = [v16 initWithPlatformImage_];
      [v27 setImage_];
    }

    v19 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
    v20 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];

    [v27 setIcon_];
    [v14 setMetadata_];
    v21 = [v14 dataRepresentation];
    v22 = sub_1BA4A1608();
    v24 = v23;

    v25 = sub_1BA4A15F8();
    sub_1B9F2BB4C(v22, v24);
    v26 = sub_1BA4A1548();
    [v8 addRichLinkData:v25 withWebpageURL:v26];

    if (a1)
    {
      [a1 presentViewController:v8 animated:1 completion:0];
    }
  }
}

void sub_1BA00ECB8(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v85 = sub_1BA4A3EA8();
  v4 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v5);
  v83 = (v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v78 - v9;
  v84 = sub_1BA4A3C98();
  v11 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v12);
  v14 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x1E6973F10]) init];
  [v15 setMessageComposeDelegate_];
  [v15 setModalPresentationStyle_];
  v16 = sub_1BA4A6AE8();
  [v15 setRecipients_];

  v17 = objc_opt_self();
  if ([v17 canSendText])
  {
    if ([v17 canSendAttachments])
    {
      sub_1BA4A3C88();
      sub_1BA4A3C58();
      v82 = a1;
      v80 = *(v11 + 8);
      v81 = v11 + 8;
      v80(v14, v84);
      v18 = sub_1BA4A6758();
      a1 = v82;

      v19 = [v17 isSupportedAttachmentUTI_];

      if (v19)
      {
        if (a1 && (v86 = a1, sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258), sub_1B9F0D950(0, &qword_1EDC65130, &protocol descriptor for ChartImageProviderProviding), v79 = a1, (swift_dynamicCast() & 1) != 0))
        {
          v20 = *(&v88 + 1);
          if (*(&v88 + 1))
          {
            v21 = v89;
            __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
            v22 = *(v21 + 8);
            v23 = v21;
            a1 = v82;
            v24 = v22(v20, v23);
            v26 = v25;
            __swift_destroy_boxed_opaque_existential_1(&v87);
            if (v24)
            {
              ObjectType = swift_getObjectType();
              v28 = v26[1](ObjectType, v26);
              if (v28)
              {
                v29 = v28;
                v30 = UIImagePNGRepresentation(v28);

                if (v30)
                {
                  v82 = ObjectType;
                  v83 = v26;
                  v31 = sub_1BA4A1608();
                  v33 = v32;

                  sub_1B9F40D10(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
                  v78[1] = v34;
                  v35 = swift_allocObject();
                  *(v35 + 16) = xmmword_1BA4B5480;
                  v36 = [v79 title];
                  if (v36)
                  {
                    v37 = v33;
                    v38 = v31;
                    v39 = v36;
                    v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
                    v42 = v41;

                    v31 = v38;
                    v33 = v37;
                  }

                  else
                  {
                    v40 = 0;
                    v42 = 0;
                  }

                  *(v35 + 56) = MEMORY[0x1E69E6158];
                  v78[0] = sub_1B9F1BE20();
                  *(v35 + 64) = v78[0];
                  if (v42)
                  {
                    *(v35 + 32) = v40;
                    *(v35 + 40) = v42;
                  }

                  else
                  {
                    if (qword_1EBBE8258 != -1)
                    {
                      swift_once();
                    }

                    v61 = *algn_1EBBEA1A8;
                    *(v35 + 32) = qword_1EBBEA1A0;
                    *(v35 + 40) = v61;
                  }

                  sub_1BA4A67D8();
                  v62 = sub_1BA4A15F8();
                  v85 = v33;
                  v63 = v31;
                  v64 = v62;
                  sub_1BA4A3C88();
                  sub_1BA4A3C58();
                  v80(v14, v84);
                  v65 = sub_1BA4A6758();

                  v66 = sub_1BA4A6758();

                  [v15 addAttachmentData:v64 typeIdentifier:v65 filename:v66];

                  v67 = v83[2](v82);
                  if (v68)
                  {
                    v69 = v67;
                    v70 = v68;
                    v71 = sub_1BA4A3348();
                    v73 = v72;
                    if (qword_1EBBE8260 != -1)
                    {
                      swift_once();
                    }

                    v74 = swift_allocObject();
                    *(v74 + 16) = xmmword_1BA4B5460;
                    v75 = MEMORY[0x1E69E6158];
                    v76 = v78[0];
                    *(v74 + 56) = MEMORY[0x1E69E6158];
                    *(v74 + 64) = v76;
                    *(v74 + 32) = v71;
                    *(v74 + 40) = v73;
                    *(v74 + 96) = v75;
                    *(v74 + 104) = v76;
                    *(v74 + 72) = v69;
                    *(v74 + 80) = v70;
                    sub_1BA4A6768();

                    v77 = sub_1BA4A6758();

                    [v15 setBody_];
                    sub_1B9F2BB4C(v63, v85);
                  }

                  else
                  {
                    sub_1B9F2BB4C(v63, v85);
                  }

                  swift_unknownObjectRelease();
                  v50 = v79;
                  goto LABEL_17;
                }
              }

              swift_unknownObjectRelease();
            }

            goto LABEL_21;
          }
        }

        else
        {
          v89 = 0;
          v87 = 0u;
          v88 = 0u;
        }

        sub_1BA011178(&v87, &qword_1EBBEA288, &qword_1EDC65130, &protocol descriptor for ChartImageProviderProviding);
LABEL_21:
        v51 = v83;
        sub_1BA4A3DD8();
        v52 = a1;
        v53 = sub_1BA4A3E88();
        v54 = sub_1BA4A6FA8();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v86 = a1;
          *&v87 = v56;
          *v55 = 136315138;
          sub_1B9F6A804(0, &qword_1EDC5E4D8, &qword_1EDC6B5D0, 0x1E69DD258);
          v57 = v52;
          v58 = sub_1BA4A6828();
          v60 = sub_1B9F0B82C(v58, v59, &v87);

          *(v55 + 4) = v60;
          a1 = v82;
          _os_log_impl(&dword_1B9F07000, v53, v54, "[%s] Could not create chart image, initiating message without attachment", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v56);
          MEMORY[0x1BFAF43A0](v56, -1, -1);
          MEMORY[0x1BFAF43A0](v55, -1, -1);
        }

        (*(v4 + 8))(v51, v85);
        goto LABEL_15;
      }
    }
  }

  sub_1BA4A3DD8();
  v43 = sub_1BA4A3E88();
  v44 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v87 = v46;
    *v45 = 136315138;
    v47 = sub_1BA4A85D8();
    v49 = sub_1B9F0B82C(v47, v48, &v87);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_1B9F07000, v43, v44, "[%s]: MFMessageComposeViewController cannot send attachment.", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1BFAF43A0](v46, -1, -1);
    MEMORY[0x1BFAF43A0](v45, -1, -1);
  }

  (*(v4 + 8))(v10, v85);
LABEL_15:
  if (a1)
  {
    v50 = a1;
LABEL_17:
    [v50 presentViewController:v15 animated:1 completion:{0, v78[0]}];
  }
}

void sub_1BA00F5C0(void *a1)
{
  if (a1 && (type metadata accessor for DataTypeDetailViewController(), (v2 = swift_dynamicCastClass()) != 0) && (v3 = v2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    v8 = swift_getObjectType();
    v9 = *(v4 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, v4);
    v12 = v11;
    swift_unknownObjectRelease();
    if (v12)
    {
      v43 = v10;
      v13 = sub_1BA4A3348();
      v15 = v14;
      if (qword_1EBBE8260 != -1)
      {
        swift_once();
      }

      sub_1B9F40D10(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BA4B5460;
      v17 = MEMORY[0x1E69E6158];
      *(v16 + 56) = MEMORY[0x1E69E6158];
      v18 = sub_1B9F1BE20();
      *(v16 + 32) = v13;
      *(v16 + 40) = v15;
      *(v16 + 96) = v17;
      *(v16 + 104) = v18;
      *(v16 + 64) = v18;
      *(v16 + 72) = v43;
      *(v16 + 80) = v12;
      v19 = sub_1BA4A6768();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    if (v7)
    {
      v44 = 0;
      v51 = sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
      v50[0] = v7;
      if (!v21)
      {
        goto LABEL_14;
      }

LABEL_10:
      v22 = MEMORY[0x1E69E6158];
      v23 = v21;
      v24 = v19;
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
    v19 = 0;
  }

  v7 = 0;
  memset(v50, 0, sizeof(v50));
  v44 = 1;
  v51 = 0;
  if (v21)
  {
    goto LABEL_10;
  }

LABEL_14:
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v52[2] = 0;
LABEL_15:
  v52[0] = v24;
  v52[1] = v23;
  v52[3] = v22;
  v25 = v7;

  sub_1B9FF168C(v50, &v48);
  v45 = v48;
  v46 = v49;
  v26 = MEMORY[0x1E69E7CA0];
  if (*(&v49 + 1))
  {
    sub_1B9F46920(&v45, v47);
    v27 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1BA27F708(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1BA27F708((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    sub_1B9F46920(v47, &v27[32 * v29 + 32]);
  }

  else
  {
    sub_1B9F0DB54(&v45, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F232F8);
    v27 = MEMORY[0x1E69E7CC0];
  }

  sub_1B9FF168C(v52, &v48);
  v45 = v48;
  v46 = v49;
  if (*(&v49 + 1))
  {
    sub_1B9F46920(&v45, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1BA27F708(0, *(v27 + 2) + 1, 1, v27);
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = sub_1BA27F708((v30 > 1), v31 + 1, 1, v27);
    }

    *(v27 + 2) = v31 + 1;
    sub_1B9F46920(v47, &v27[32 * v31 + 32]);
  }

  else
  {
    sub_1B9F0DB54(&v45, &qword_1EDC6E300, v26 + 8, MEMORY[0x1E69E6720], sub_1B9F232F8);
  }

  sub_1B9F232F8(0, &qword_1EDC6E300, v26 + 8, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v33 = sub_1BA4A6AE8();

  v34 = [v32 initWithActivityItems:v33 applicationActivities:0];

  sub_1BA2593F4();
  type metadata accessor for ActivityType(0);
  v35 = sub_1BA4A6AE8();

  [v34 setExcludedActivityTypes_];

  v36 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  if (v21)
  {
    v37 = sub_1BA4A6758();
  }

  else
  {
    v37 = 0;
  }

  [v36 setTitle_];

  v38 = v25;
  if (v44)
  {
    v38 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
  }

  v39 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
  v40 = v25;
  v41 = [v39 initWithObject_];

  [v36 setImageProvider_];
  if (qword_1EBBE8588 != -1)
  {
    swift_once();
  }

  v42 = sub_1BA4A6758();
  [v36 setSummary_];

  [v34 setPhotosHeaderMetadata_];
  if (a1)
  {
    [a1 presentViewController:v34 animated:1 completion:0];
  }

  swift_unknownObjectRelease();
}

id sub_1BA00FC6C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v135 = v4;
  v136 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v123 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v123 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v123 - v19;
  sub_1BA011090(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BA4A15D8();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v36 = &v123 - v35;
  if (!a1)
  {
    goto LABEL_16;
  }

  v131 = v33;
  v132 = v34;
  v130 = v20;
  v37 = a1;
  v38 = UIViewController.resolvedHealthStore.getter();
  if (!v38)
  {

LABEL_16:
    sub_1BA4A3DD8();
    v85 = a1;
    v86 = sub_1BA4A3E88();
    v87 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v140[0] = v90;
      *v88 = 136315650;
      v91 = sub_1BA4A85D8();
      v93 = sub_1B9F0B82C(v91, v92, v140);

      *(v88 + 4) = v93;
      *(v88 + 12) = 2080;
      *(v88 + 14) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4E38E0, v140);
      *(v88 + 22) = 2112;
      *(v88 + 24) = v85;
      *v89 = a1;
      v94 = v85;
      _os_log_impl(&dword_1B9F07000, v86, v87, "%s %s Can not access view controller or health store: %@", v88, 0x20u);
      sub_1B9F0DB54(v89, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v89, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v90, -1, -1);
      MEMORY[0x1BFAF43A0](v88, -1, -1);
    }

    v136[1](v8, v135);
    return 0;
  }

  v133 = v38;
  type metadata accessor for DataTypeDetailViewController();
  v39 = swift_dynamicCastClass();
  v40 = v37;
  if (!v39 || (v41 = v39 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider, swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    sub_1BA4A3DD8();
    v78 = sub_1BA4A3E88();
    v79 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v139[0] = v81;
      *v80 = 136315394;
      v82 = sub_1BA4A85D8();
      v84 = sub_1B9F0B82C(v82, v83, v139);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2080;
      *(v80 + 14) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4E38E0, v139);
      _os_log_impl(&dword_1B9F07000, v78, v79, "%s %s Unable to get chart image provider from presenting view controller", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v81, -1, -1);
      MEMORY[0x1BFAF43A0](v80, -1, -1);
    }

    else
    {
    }

    v136[1](v12, v135);
    return 0;
  }

  v43 = *(v41 + 8);
  v44 = Strong;
  v45 = swift_getObjectType();
  v46 = *(v43 + 2);
  v128 = v43;
  v129 = v44;
  v127 = v45;
  v47 = v46(v45, v43);
  if (!v48)
  {
    sub_1BA4A3DD8();
    v95 = sub_1BA4A3E88();
    v96 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v139[0] = v98;
      *v97 = 136315394;
      v99 = sub_1BA4A85D8();
      v101 = sub_1B9F0B82C(v99, v100, v139);

      *(v97 + 4) = v101;
      *(v97 + 12) = 2080;
      *(v97 + 14) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4E38E0, v139);
      _os_log_impl(&dword_1B9F07000, v95, v96, "%s %s Unable to get chartDataTypeDisplayName from imageProvider", v97, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v98, -1, -1);
      MEMORY[0x1BFAF43A0](v97, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v136[1](v16, v135);
    return 0;
  }

  v49 = v48;
  v126 = v47;
  v123 = v37;
  v125 = sub_1BA4A3348();
  v124 = v50;
  if (qword_1EBBE8260 != -1)
  {
    swift_once();
  }

  sub_1B9F40D10(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BA4B5460;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 56) = MEMORY[0x1E69E6158];
  v53 = sub_1B9F1BE20();
  v54 = v124;
  *(v51 + 32) = v125;
  *(v51 + 40) = v54;
  *(v51 + 96) = v52;
  *(v51 + 104) = v53;
  v55 = v126;
  *(v51 + 64) = v53;
  *(v51 + 72) = v55;
  *(v51 + 80) = v49;
  v126 = sub_1BA4A6768();
  v57 = v56;

  v58 = v133;
  v59 = [v133 profileIdentifier];
  v60 = [objc_allocWithZone(MEMORY[0x1E69A2D80]) initWithProfileIdentifier:v59 useExternalURLScheme:1];

  v61 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_hkType;
  swift_beginAccess();
  v62 = [v60 URLForDataTypeDetailWithObjectType_];
  if (!v62)
  {

    v102 = v130;
    sub_1BA4A3DD8();
    v103 = v2;
    v104 = v58;
    v105 = sub_1BA4A3E88();
    v106 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v138 = v133;
      *v107 = 136315907;
      v108 = sub_1BA4A85D8();
      v110 = sub_1B9F0B82C(v108, v109, &v138);
      ObjectType = v60;
      v111 = v110;

      *(v107 + 4) = v111;
      *(v107 + 12) = 2080;
      *(v107 + 14) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4E38E0, &v138);
      *(v107 + 22) = 2081;
      v112 = [*&v2[v61] identifier];
      v113 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v115 = v114;

      v116 = sub_1B9F0B82C(v113, v115, &v138);

      *(v107 + 24) = v116;
      *(v107 + 32) = 2080;
      v117 = sub_1BA4A6F38();
      v118 = sub_1BA4A1D48();
      v120 = v119;

      v121 = sub_1B9F0B82C(v118, v120, &v138);

      *(v107 + 34) = v121;
      _os_log_impl(&dword_1B9F07000, v105, v106, "%s %s Could not create URL for %{private}s for profile %s", v107, 0x2Au);
      v122 = v133;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v122, -1, -1);
      MEMORY[0x1BFAF43A0](v107, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v136[1](v102, v135);
    return 0;
  }

  v136 = v57;
  ObjectType = v60;
  v63 = v62;
  sub_1BA4A1588();

  v135 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
  v64 = v131;
  v65 = *(v131 + 16);
  v65(v132, v36, v25);
  v66 = (*(v128 + 1))(v127);
  if (qword_1EBBE8298 != -1)
  {
    swift_once();
  }

  v67 = unk_1EBBEAB20;
  v130 = qword_1EBBEAB18;
  v128 = type metadata accessor for HealthURLActivityItemProvider(0);
  v68 = objc_allocWithZone(v128);
  v69 = &v68[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_title];
  v70 = v136;
  *v69 = v126;
  v69[1] = v70;
  v65(&v68[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_url], v132, v25);
  *&v68[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image] = v66;
  v71 = v135;
  *&v68[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_thumbnailImage] = v135;
  v72 = &v68[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_subtitle];
  *v72 = v130;
  v72[1] = v67;
  v136 = v66;
  v73 = v71;

  sub_1BA4A15C8();
  result = (*(v64 + 48))(v24, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v64 + 32))(v28, v24, v25);
    v75 = sub_1BA4A1548();
    v76 = *(v64 + 8);
    v76(v28, v25);
    v137.receiver = v68;
    v137.super_class = v128;
    v77 = objc_msgSendSuper2(&v137, sel_initWithPlaceholderItem_, v75);

    swift_unknownObjectRelease();
    v76(v132, v25);
    v76(v36, v25);
    return v77;
  }

  return result;
}

id DataTypeChartMessageItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DataTypeChartMessageItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeChartMessageItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DataTypeChartMessageItem(uint64_t a1)
{
  result = qword_1EBBEA270;
  if (!qword_1EBBEA270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA010B8C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_reuseIdentifier);

  return v1;
}

uint64_t sub_1BA010BD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_defaultICloudAccount);

  return v1;
}

uint64_t sub_1BA010C10()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_uniqueIdentifier);

  return v1;
}

uint64_t sub_1BA010C50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1BA010CCC()
{
  result = qword_1EBBEA1F0;
  if (!qword_1EBBEA1F0)
  {
    type metadata accessor for DataTypeChartMessageItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA1F0);
  }

  return result;
}

uint64_t sub_1BA010D2C(uint64_t a1)
{
  result = sub_1BA4A33C8();
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

uint64_t sub_1BA010FE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1BA01102C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA011090(uint64_t a1)
{
  if (!qword_1EDC6AE90)
  {
    sub_1BA4A15D8();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6AE90);
    }
  }
}

uint64_t sub_1BA0110E8(uint64_t a1, uint64_t a2)
{
  sub_1B9F40D10(0, &qword_1EBBEA290, &qword_1EBBED6D0, &protocol descriptor for CNCapabilitiesManaging, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA011178(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F40D10(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1BA0111E8(uint64_t a1, uint64_t a2)
{
  sub_1B9F40D10(0, &qword_1EBBEA290, &qword_1EBBED6D0, &protocol descriptor for CNCapabilitiesManaging, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1BA011278()
{
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v23[4] = xmmword_1EDC6D458;
  v23[5] = *&qword_1EDC6D468;
  v23[6] = xmmword_1EDC6D478;
  v23[7] = xmmword_1EDC6D488;
  v23[0] = xmmword_1EDC6D418;
  v23[1] = *&qword_1EDC6D428;
  v23[2] = xmmword_1EDC6D438;
  v23[3] = xmmword_1EDC6D448;
  v22 = qword_1EDC6D428;
  v21 = xmmword_1EDC6D418;
  v1 = unk_1EDC6D430;
  v3 = *(&xmmword_1EDC6D438 + 1);
  v4 = xmmword_1EDC6D438;
  v2 = xmmword_1EDC6D448;
  v18 = *&qword_1EDC6D470;
  v19 = *(&xmmword_1EDC6D478 + 8);
  v20 = *(&xmmword_1EDC6D488 + 1);
  v16 = *(&xmmword_1EDC6D448 + 8);
  v17 = *(&xmmword_1EDC6D458 + 8);
  if (*(v0 + qword_1EDC84BB0))
  {
    sub_1B9F1D9A4(v23, &v12);
  }

  else
  {
    sub_1B9F1D9A4(v23, &v12);
    sub_1B9F1DA18(v1, v4, v3, v2);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v1 = 0;
  }

  v8 = v21;
  *&v11[24] = v17;
  *&v11[40] = v18;
  *&v11[56] = v19;
  *&v9 = v22;
  *(&v9 + 1) = v1;
  *&v10 = v4;
  *(&v10 + 1) = v3;
  *v11 = v2;
  *&v11[72] = v20;
  *&v11[8] = v16;
  sub_1BA0117AC();
  *&v15[16] = *&v11[16];
  *&v15[32] = *&v11[32];
  *&v15[48] = *&v11[48];
  *&v15[64] = *&v11[64];
  v12 = v8;
  v13 = v9;
  v14 = v10;
  *v15 = *v11;
  sub_1B9F1D9A4(&v8, &v7);
  v5 = sub_1B9F293A8(&v12);
  v12 = v21;
  *&v15[24] = v17;
  *&v15[40] = v18;
  *&v15[56] = v19;
  *&v13 = v22;
  *(&v13 + 1) = v1;
  *&v14 = v4;
  *(&v14 + 1) = v3;
  *v15 = v2;
  *&v15[72] = v20;
  *&v15[8] = v16;
  sub_1B9F1DA58(&v12);
  return v5;
}

id sub_1BA01148C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingOnboardingDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharingOnboardingDataSource(uint64_t a1)
{
  result = qword_1EDC64C78;
  if (!qword_1EDC64C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA011580@<X0>(void *a1@<X8>)
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
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_1BA011708()
{
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830(v0, v1);
}

unint64_t sub_1BA011754()
{
  result = qword_1EDC69800;
  if (!qword_1EDC69800)
  {
    type metadata accessor for HeaderItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69800);
  }

  return result;
}

unint64_t sub_1BA0117AC()
{
  result = qword_1EDC6B530;
  if (!qword_1EDC6B530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B530);
  }

  return result;
}

uint64_t sub_1BA0117F8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1BFAF2860](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1BA4A7CC8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1BA011920(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v10 = v7[3];
      v27 = v7[2];
      v28 = v10;
      v11 = v7[3];
      v29 = v7[4];
      v12 = v7[1];
      v26[0] = *v7;
      v26[1] = v12;
      v23 = v27;
      v24 = v11;
      v25 = v7[4];
      v21 = v26[0];
      v22 = v9;
      sub_1B9FF3650(v26, &v16);
      v13 = a1(&v21);
      if (v3)
      {
        break;
      }

      v4 = v13;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = v21;
      v17 = v22;
      sub_1B9FF3768(&v16);
      v14 = v8-- == 0;
      v7 += 5;
      if ((v4 | v14))
      {
        return v4 & 1;
      }
    }

    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_1B9FF3768(&v16);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1BA011A3C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v13 = *(v7 - 3);
      v14 = v8;
      v15 = v9;

      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 4;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

unint64_t sub_1BA011AF0()
{
  result = qword_1EDC6DDE0;
  if (!qword_1EDC6DDE0)
  {
    type metadata accessor for HostViewCell(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC6DDE0);
  }

  return result;
}

id DataTypeDetailConfiguration.MessageButtonComponent.viewConfiguration.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

void DataTypeDetailConfiguration.MessageButtonComponent.viewConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

uint64_t DataTypeDetailConfiguration.MessageButtonComponent.init(hkType:viewConfiguration:contactStore:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

uint64_t DataTypeDetailConfiguration.MessageButtonComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *v1;
  v13 = *(v1 + 8);
  v4 = objc_opt_self();
  v5 = v13;
  v6 = [v4 hk_chartBackgroundColor];
  sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
  LOBYTE(v4) = sub_1BA4A7798();

  if ((v4 & 1) != 0 && (*(a1 + 48) & 0xFE) == 2)
  {
    v14[0] = v5;
    v14[1] = v3;
    v15 = v13;
    v7 = v5;
    v8 = sub_1BA011DE0(a1, v14);

    v9 = 0;
  }

  else
  {
    type metadata accessor for EmptyDataSource(0);
    swift_allocObject();
    v8 = EmptyDataSource.init()();
    v9 = 1;
  }

  sub_1BA012DAC(0);
  v10 = swift_allocObject();
  v11 = *(v8 + 24);
  *(v10 + 16) = *(v8 + 16);
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;

  return v10;
}

void *sub_1BA011DE0(void *a1, void **a2)
{
  v5 = sub_1BA4A1798();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v11 = *v2;
  v10 = *(v2 + 8);
  v12 = *(v2 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1BA4A1B68();
  v14 = a1[5];
  v15 = v13;
  v16 = [v14 profileIdentifier];
  v17 = [v16 identifier];

  sub_1BA4A1778();
  type metadata accessor for SharingEntryProfileInformationDataSource(0);
  swift_allocObject();
  v18 = sub_1BA19BEB8(v15, v8, 0, 0, 0, 0);
  v19 = swift_allocObject();
  v19[2] = v11;
  v19[3] = v10;
  v19[4] = v12;
  v19[5] = v9;
  sub_1BA012F10(0);
  swift_allocObject();
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v23 = v9;
  v24 = sub_1BA271888(v18, sub_1BA013030, v19, 0);

  v25 = swift_allocObject();
  v25[2] = sub_1BA012A44;
  v25[3] = 0;
  v25[4] = v24;
  sub_1BA012E68(0);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v28 = *(v24 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v27 = *(v24 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  *(v26 + 24) = v28;
  *(v26 + 32) = v27;
  *(v26 + 40) = 0;
  *(v26 + 48) = sub_1BA01303C;
  *(v26 + 56) = v25;
  sub_1BA012EA4(0, &unk_1EDC69060, sub_1BA012E68, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
  v29 = swift_allocObject();
  v29[4] = v26;
  v29[5] = sub_1BA012D60;
  v29[6] = 0;
  v29[2] = v28;
  v29[3] = v27;
  swift_bridgeObjectRetain_n();

  return v29;
}

uint64_t sub_1BA0120A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v106 = a6;
  v107 = a3;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  v108 = v7;
  v109 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v103 - v14;
  sub_1BA01313C(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v103 - v18;
  v20 = sub_1BA4A33C8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v103 - v27;
  sub_1B9F0A534(a1, v111);
  sub_1B9F32244();
  v29 = swift_dynamicCast();
  v30 = *(v21 + 56);
  if (v29)
  {
    v104 = v15;
    v30(v19, 0, 1, v20);
    (*(v21 + 32))(v28, v19, v20);
    sub_1B9F109F8();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BA4B7510;
    v32 = *MEMORY[0x1E695C208];
    v33 = *MEMORY[0x1E695C330];
    v34 = MEMORY[0x1E69A3410];
    *(v31 + 32) = *MEMORY[0x1E695C208];
    *(v31 + 40) = v33;
    v111[3] = v20;
    v111[4] = v34;
    v111[5] = MEMORY[0x1E69A3418];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v111);
    v36 = v28;
    v37 = v28;
    v38 = *(v21 + 16);
    v38(boxed_opaque_existential_1, v37, v20);
    v39 = v32;
    v40 = v33;
    v41 = sub_1BA4A7018();

    __swift_destroy_boxed_opaque_existential_1(v111);
    v42 = [v41 phoneNumbers];
    sub_1B9F0ADF8(0, &unk_1EBBEE300, 0x1E695CEE0);
    v43 = sub_1BA4A6B08();

    if (v43 >> 62)
    {
      v44 = sub_1BA4A7CC8();
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = v36;
    v105 = v36;
    if (v44)
    {
      goto LABEL_7;
    }

    v46 = [v41 emailAddresses];
    v47 = sub_1BA4A6B08();

    if (v47 >> 62)
    {
      v87 = sub_1BA4A7CC8();

      if (v87)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v48)
      {
LABEL_7:
        sub_1BA01313C(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1BA4B5480;
        v50 = v24;
        v51 = v20;
        v108 = v20;
        v52 = v24;
        v53 = v21;
        v54 = v38;
        v38(v50, v36, v51);
        v109 = type metadata accessor for DataTypeChartMessageItem(0);
        v55 = objc_allocWithZone(v109);
        v56 = &v55[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_uniqueIdentifier];
        *v56 = 0xD000000000000018;
        *(v56 + 1) = 0x80000001BA4E3AB0;
        v57 = &v55[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_reuseIdentifier];
        v111[0] = type metadata accessor for DataTypeDetailMessageCell();
        sub_1BA0131A0();
        v58 = v41;
        *v57 = sub_1BA4A6808();
        v57[1] = v59;
        v60 = &v55[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem____lazy_storage___cnCapabilitiesManager];
        *(v60 + 4) = 0;
        *v60 = 0u;
        *(v60 + 1) = 0u;
        v61 = &v55[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_defaultICloudAccount];
        *v61 = 0;
        *(v61 + 1) = 0;
        *&v55[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact] = v58;
        v62 = v52;
        v63 = v52;
        v64 = v108;
        v54(&v55[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_profileInformation], v63, v108);
        v65 = v58;
        v66 = v62;
        *v61 = MEMORY[0x1BFAEDD10]();
        *(v61 + 1) = v67;

        v68 = v106;
        v69 = v107;
        *&v55[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_viewConfiguration] = v106;
        *&v55[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_hkType] = v69;
        v110.receiver = v55;
        v70 = v109;
        v110.super_class = v109;
        v71 = v68;
        v72 = v69;
        v73 = objc_msgSendSuper2(&v110, sel_init);

        v74 = *(v53 + 8);
        v74(v66, v64);
        *(v49 + 56) = v70;
        *(v49 + 64) = sub_1BA010CCC();
        *(v49 + 32) = v73;

        v74(v105, v64);
        return v49;
      }
    }

    v88 = v104;
    sub_1BA4A3E28();
    v89 = v41;
    v90 = sub_1BA4A3E88();
    v91 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v111[0] = v107;
      *v92 = 136315395;
      v112 = &type metadata for DataTypeDetailConfiguration.MessageButtonComponent;
      sub_1BA0130F4();
      v93 = sub_1BA4A6808();
      v95 = sub_1B9F0B82C(v93, v94, v111);

      *(v92 + 4) = v95;
      *(v92 + 12) = 2081;
      v96 = v89;
      v97 = [v96 description];
      v98 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v100 = v99;

      v101 = sub_1B9F0B82C(v98, v100, v111);

      *(v92 + 14) = v101;
      _os_log_impl(&dword_1B9F07000, v90, v91, "[%s]: Contact %{private}s is not reachable by message.", v92, 0x16u);
      v102 = v107;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v102, -1, -1);
      MEMORY[0x1BFAF43A0](v92, -1, -1);

      (*(v109 + 1))(v88, v108);
      (*(v21 + 8))(v105, v20);
    }

    else
    {

      (*(v109 + 1))(v88, v108);
      (*(v21 + 8))(v45, v20);
    }
  }

  else
  {
    v30(v19, 1, 1, v20);
    sub_1BA013068(v19);
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v111);
    v76 = sub_1BA4A3E88();
    v77 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v113[0] = v79;
      *v78 = 136315394;
      v112 = &type metadata for DataTypeDetailConfiguration.MessageButtonComponent;
      sub_1BA0130F4();
      v80 = sub_1BA4A6808();
      v82 = sub_1B9F0B82C(v80, v81, v113);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2080;
      sub_1B9F0A534(v111, &v112);
      v83 = sub_1BA4A6808();
      v85 = v84;
      __swift_destroy_boxed_opaque_existential_1(v111);
      v86 = sub_1B9F0B82C(v83, v85, v113);

      *(v78 + 14) = v86;
      _os_log_impl(&dword_1B9F07000, v76, v77, "[%s]: Unexpected type to map: %s", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v79, -1, -1);
      MEMORY[0x1BFAF43A0](v78, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v111);
    }

    (*(v109 + 1))(v11, v108);
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1BA012A44()
{
  sub_1BA4A6598();
  v36 = v0;
  v1 = objc_opt_self();
  v2 = [v1 estimatedDimension_];
  v3 = [v1 fractionalWidthDimension_];
  if (qword_1EDC6D4A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC6D4A8;
  v5 = qword_1EDC6D4B0;
  v6 = qword_1EDC6D4A8;
  v7 = v5;
  sub_1BA4A75C8();
  v35 = v8;
  v10 = v9;
  v12 = v11;
  v13 = [v1 estimatedDimension_];

  sub_1B9F1DA18(2, 1, v4, v5);
  sub_1BA4A6598();
  v15 = v14;
  v16 = [v1 estimatedDimension_];
  v17 = [v1 fractionalWidthDimension_];
  v18 = qword_1EDC6D4A8;
  v19 = qword_1EDC6D4B0;
  v20 = qword_1EDC6D4A8;
  v21 = v19;
  sub_1BA4A75C8();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v1 estimatedDimension_];

  sub_1B9F1DA18(2, 1, v18, v19);
  v38[0] = v15;
  v38[1] = v30;
  v38[2] = v17;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 2;
  v44 = v23;
  v45 = v25;
  v46 = v27;
  v47 = v29;
  sub_1B9F1DA58(v38);
  v31 = -v46;
  v32 = [v1 estimatedDimension_];

  *&v48 = v36;
  *(&v48 + 1) = v32;
  *v49 = v3;
  memset(&v49[8], 0, 64);
  *&v49[72] = 2;
  *&v50 = v31;
  *(&v50 + 1) = v35;
  *&v51 = v10;
  *(&v51 + 1) = v12;
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  *&v53[48] = *&v49[48];
  *&v53[64] = *&v49[64];
  v54 = v50;
  v55 = v51;
  v52 = v48;
  *v53 = *v49;
  *&v53[16] = *&v49[16];
  *&v53[32] = *&v49[32];
  sub_1B9F1D9A4(&v48, v37);
  v33 = sub_1B9F293A8(&v52);
  *&v52 = v36;
  *(&v52 + 1) = v32;
  *v53 = v3;
  memset(&v53[8], 0, 64);
  *&v53[72] = 2;
  *&v54 = v31;
  *(&v54 + 1) = v35;
  *&v55 = v10;
  *(&v55 + 1) = v12;
  sub_1B9F1DA58(&v52);
  return v33;
}

void sub_1BA012DAC(uint64_t a1)
{
  if (!qword_1EDC66CB8)
  {
    sub_1BA012EA4(255, &unk_1EDC69060, sub_1BA012E68, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
    v5[0] = v2;
    v5[1] = type metadata accessor for EmptyDataSource(255);
    v5[2] = &protocol witness table for CellRegistering<A>;
    v5[3] = &protocol witness table for EmptyDataSource;
    v3 = type metadata accessor for _ConditionalDataSource(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDC66CB8);
    }
  }
}

void sub_1BA012EA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1BA012F68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BA012FB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA013068(uint64_t a1)
{
  sub_1BA01313C(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA0130F4()
{
  result = qword_1EBBEA328[0];
  if (!qword_1EBBEA328[0])
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EBBEA328);
  }

  return result;
}

void sub_1BA01313C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA0131A0()
{
  result = qword_1EBBE9E70;
  if (!qword_1EBBE9E70)
  {
    type metadata accessor for DataTypeDetailMessageCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E70);
  }

  return result;
}

uint64_t HostedPromptTileView.Padding.init(imageTopPadding:imageWidth:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  return result;
}

void static HostedPromptTileView.Padding.defaultConfiguration.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1BA01320C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F546567616D69 && a2 == 0xEF676E6964646150;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469576567616D69 && a2 == 0xEA00000000006874)
  {

    return 1;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BA013320(char a1)
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a1 & 1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA013368(char a1)
{
  if (a1)
  {
    return 0x6469576567616D69;
  }

  else
  {
    return 0x706F546567616D69;
  }
}

uint64_t sub_1BA0133E4(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA0132F8(v3, *v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA01343C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA01320C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA01346C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1BA0146B0();
  *a2 = result;
  return result;
}

uint64_t sub_1BA013498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA0134EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t HostedPromptTileView.Padding.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HostedPromptTileView.Padding.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = sub_1BA4A8298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  v11 = *v4;
  v16 = v4[1];
  v15 = *(v4 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8548();
  v18 = v11;
  v20 = 0;
  sub_1BA013730();
  v12 = v17;
  sub_1BA4A8288();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_1BA4A8238();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1BA013730()
{
  result = qword_1EDC6AE18;
  if (!qword_1EDC6AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AE18);
  }

  return result;
}

uint64_t HostedPromptTileView.Padding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  type metadata accessor for HostedPromptTileView.Padding.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = sub_1BA4A81E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8528();
  if (!v5)
  {
    v12 = v18;
    v21 = 0;
    sub_1BA013994();
    sub_1BA4A81C8();
    v13 = v19;
    v21 = 1;
    sub_1BA4A8178();
    (*(v8 + 8))(v11, v7);
    v15 = v19;
    v16 = v20;
    *v12 = v13;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BA013994()
{
  result = qword_1EDC6AE10;
  if (!qword_1EDC6AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AE10);
  }

  return result;
}

uint64_t sub_1BA013A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA013B00(uint64_t a1, uint64_t a2)
{
  sub_1B9F80148();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HostedPromptTileView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = (a4 + *(type metadata accessor for HostedPromptTileView(0, a2, a3, a5) + 36));
  sub_1BA014368(0, &unk_1EDC69248, type metadata accessor for PromptTileViewModel, type metadata accessor for ViewModelState);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  sub_1BA013A8C(a1 + *(v8 + 28), a4, type metadata accessor for PromptTileViewModel);

  return sub_1BA013C5C(a1);
}

uint64_t sub_1BA013C5C(uint64_t a1)
{
  sub_1BA014368(0, &unk_1EDC69248, type metadata accessor for PromptTileViewModel, type metadata accessor for ViewModelState);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HostedPromptTileView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - v10;
  v30 = type metadata accessor for PromptTileView(0);
  v12 = a3 + *(v30 + 28);
  v27 = v3;
  sub_1BA013A8C(v3, v12, type metadata accessor for PromptTileViewModel);
  v26 = *(v6 + 16);
  v26(v11, v3, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v29 = v14;
  v15 = *(a1 + 24);
  v25 = *(a1 + 16);
  *(v14 + 16) = v25;
  *(v14 + 24) = v15;
  v16 = *(v6 + 32);
  v16(v14 + v13, v11, a1);
  v17 = v28;
  v26(v28, v27, a1);
  v18 = swift_allocObject();
  *(v18 + 16) = v25;
  *(v18 + 24) = v15;
  v16(v18 + v13, v17, a1);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v19 = v30;
  v20 = *(v30 + 24);
  *(a3 + v20) = swift_getKeyPath();
  sub_1BA014368(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  v22 = (a3 + *(v19 + 32));
  v23 = v29;
  *v22 = sub_1BA0140D8;
  v22[1] = v23;
  v24 = (a3 + *(v19 + 36));
  *v24 = sub_1BA0140F0;
  v24[1] = v18;
  return result;
}

uint64_t sub_1BA013F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HostedPromptTileView(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  result = PluginView.actionHandler.getter(v6, WitnessTable);
  if (result)
  {
    (*(a3 + 24))(a2, a3);
  }

  return result;
}

uint64_t sub_1BA01402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HostedPromptTileView(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  result = PluginView.actionHandler.getter(v6, WitnessTable);
  if (result)
  {
    (*(*(a3 + 8) + 24))(a2);
  }

  return result;
}

uint64_t sub_1BA014108(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for HostedPromptTileView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

void (*sub_1BA0141B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = HostedPromptTileView.actionHandlerContent.modify();
  return sub_1B9FCDD98;
}

uint64_t sub_1BA014254(uint64_t a1)
{
  v2 = sub_1BA4A53C8();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BA4A5578();
}

void sub_1BA014368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA0143E8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA014424(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1BA0144B8(uint64_t a1)
{
  type metadata accessor for PromptTileViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1B9F80148();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BA014564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BA0145A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA0145C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_1BA014604()
{
  result = qword_1EDC69318;
  if (!qword_1EDC69318)
  {
    type metadata accessor for PromptTileView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69318);
  }

  return result;
}

void sub_1BA0146DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8))(a4, a5);
  v8 = v7;
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 backgroundColor];

    if (!v11)
    {
      v11 = a3;
    }

    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v11, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA0147D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 48))(v8, a3, a4);
  v5 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = [a1 traitCollection];
  (*(v5 + 16))();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1BA0148C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BA014910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UIImage.Symbol.imageName.getter()
{
  v1 = *v0;
  v2 = 0x73656C6B72617073;
  v3 = 0x696C666F72617473;
  v4 = 1918989427;
  if (v1)
  {
    v4 = 0x6C69662E72617473;
  }

  if (v1 != 4)
  {
    v3 = v4;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0x2E6E6F7276656863;
  }

  else
  {
    return v2;
  }
}

id static UIImage.systemImage(named:size:textStyle:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() configurationWithTextStyle:a3 scale:a2];
  v4 = sub_1BA4A6758();

  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  return v5;
}

id static UIImage.systemImage(named:size:textStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [objc_opt_self() configurationWithTextStyle:a4 scale:a3];
  v5 = sub_1BA4A6758();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  return v6;
}

id static UIImage.systemImage(named:size:textStyle:weight:traits:rounded:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v9 = sub_1B9F6B774(a4, a5, a6 & 1, a7, a8, 0, 1);
  v10 = [objc_opt_self() configurationWithFont:v9 scale:a3];
  v11 = sub_1BA4A6758();
  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  return v12;
}

id sub_1BA014D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = [v9 configurationWithFont:a1 scale:-1];
  v11 = [v9 configurationWithWeight_];
  v12 = [v10 configurationByApplyingConfiguration_];

  v13 = [v9 configurationWithHierarchicalColor_];
  v14 = [v12 configurationByApplyingConfiguration_];

  v15 = [v9 configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
  v16 = sub_1BA4A6758();
  v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

  if (v17 && (v18 = [v17 imageWithConfiguration_], v17, v18))
  {
  }

  else
  {
    sub_1BA4A3DD8();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B9F07000, v19, v20, "Unable to create symbol xmark", v21, 2u);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  return v18;
}

id _sSo7UIImageC18HealthExperienceUIE9makeXMark4fontABSgSo6UIFontC_tFZ_0(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 configurationWithFont:a1 scale:-1];
  v9 = [v7 configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
  v10 = sub_1BA4A6758();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  if (v11 && (v12 = [v11 imageWithConfiguration_], v11, v12))
  {
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Unable to create symbol xmark", v15, 2u);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v12;
}

uint64_t _s6SymbolOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t _s6SymbolOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BA0153F8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA015470(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA0154DC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA015534(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1BA0155F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  v6 = sub_1BA015F08();
  sub_1BA016818(a1, a2);
}

uint64_t sub_1BA01568C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA0156FC();
  return sub_1B9F7B644(v6);
}

void sub_1BA0156FC()
{
  v1 = v0;
  swift_getObjectType();
  v43 = sub_1BA4A3EA8();
  v2 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A2B48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v43 - v13;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v15], &v45);
  if (v47)
  {
    sub_1B9FCD918();
    sub_1BA4A2EE8();
    if (swift_dynamicCast())
    {
      v16 = 0xD000000000000011;
      v17 = v44;
      v18 = sub_1BA015F08();
      *&v18[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel] = v17;
      swift_retain_n();

      sub_1BA016ECC();

      v45 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v46 = v19;

      MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4E3D00);

      v21 = v45;
      v20 = v46;
      sub_1BA4A2E98();
      (*(v7 + 16))(v10, v14, v6);
      v22 = (*(v7 + 88))(v10, v6);
      if (v22 == *MEMORY[0x1E69A3228])
      {
        (*(v7 + 8))(v14, v6);
        v23 = 0xED00007373656E74;
        v16 = 0x69466F6964726143;
      }

      else if (v22 == *MEMORY[0x1E69A3220])
      {
        (*(v7 + 8))(v14, v6);
        v23 = 0xED00006574615274;
        v16 = 0x7261654868676948;
      }

      else if (v22 == *MEMORY[0x1E69A3218])
      {
        (*(v7 + 8))(v14, v6);
        v23 = 0xEC00000065746152;
        v16 = 0x7472616548776F4CLL;
      }

      else if (v22 == *MEMORY[0x1E69A3210])
      {
        (*(v7 + 8))(v14, v6);
        v23 = 0xE500000000000000;
        v16 = 0x646E657254;
      }

      else
      {
        v36 = *(v7 + 8);
        if (v22 == *MEMORY[0x1E69A3230])
        {
          v23 = 0x80000001BA4E3D20;
          v36(v14, v6);
        }

        else
        {
          LODWORD(v43) = *MEMORY[0x1E69A3238];
          v37 = v22;
          v36(v14, v6);
          if (v37 == v43)
          {
            v23 = 0xE500000000000000;
            v16 = 0x6573696F4ELL;
          }

          else
          {
            v36(v10, v6);
            v23 = 0xE700000000000000;
            v16 = 0x6E776F6E6B6E55;
          }
        }
      }

      v45 = v21;
      v46 = v20;

      MEMORY[0x1BFAF1350](v16, v23);

      v38 = v45;
      v39 = v46;
      v40 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier];
      swift_beginAccess();
      *v40 = v38;
      v40[1] = v39;

      v41 = sub_1BA4A6758();
      [v1 setAccessibilityIdentifier_];

      v42 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView];
      sub_1BA016818(v38, v39);

      return;
    }
  }

  else
  {
    sub_1B9F7B644(&v45);
  }

  sub_1BA4A3DD8();
  v24 = v0;
  v25 = sub_1BA4A3E88();
  v26 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v44 = v28;
    *v27 = 136446466;
    v29 = sub_1BA4A85D8();
    v31 = sub_1B9F0B82C(v29, v30, &v44);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    sub_1B9F68124(&v0[v15], &v45);
    sub_1B9F7B6F8(0);
    v32 = sub_1BA4A7A98();
    v34 = v33;
    sub_1B9F7B644(&v45);
    v35 = sub_1B9F0B82C(v32, v34, &v44);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_1B9F07000, v25, v26, "[%{public}s] item isn't AdvertisableFeatureModel %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    MEMORY[0x1BFAF43A0](v27, -1, -1);
  }

  (*(v2 + 8))(v5, v43);
}

uint64_t sub_1BA015DAC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA015E04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA0156FC();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA015E70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA015ED4;
}

void sub_1BA015ED4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA0156FC();
  }
}

char *sub_1BA015F08()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for AdvertisableFeatureContentView());
    v6 = sub_1BA016C38(0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id AdvertisableFeatureTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void AdvertisableFeatureTableViewCell.init(reuseIdentifier:)()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id AdvertisableFeatureTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void AdvertisableFeatureTableViewCell.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA016290()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = sub_1BA015F08();
  [v2 addSubview_];

  v4 = objc_opt_self();
  sub_1B9F109F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5880;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView;
  v7 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView] leadingAnchor];
  v8 = [v1 layoutMarginsGuide];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [*&v1[v6] trailingAnchor];
  v12 = [v1 layoutMarginsGuide];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v14;
  v15 = [*&v1[v6] topAnchor];
  v16 = [v1 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:10.0];
  *(v5 + 48) = v18;
  v19 = [*&v1[v6] bottomAnchor];
  v20 = [v1 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:-10.0];
  *(v5 + 56) = v22;
  v23 = [v1 contentView];
  v24 = [v23 heightAnchor];

  v25 = [v24 constraintGreaterThanOrEqualToConstant_];
  *(v5 + 64) = v25;
  sub_1B9F740B0();
  v26 = sub_1BA4A6AE8();

  [v4 activateConstraints_];
}

uint64_t sub_1BA016658()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA0166B4(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1BA01677C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  [v5 setAccessibilityIdentifier_];

  v7 = sub_1BA015F08();
  sub_1BA016818(a1, a2);
}

void sub_1BA016818(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1BA016A68();

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v3 = sub_1BA4A6758();

    [v2 setAccessibilityIdentifier_];

    v4 = sub_1BA016A88();

    MEMORY[0x1BFAF1350](0x706972637365442ELL, 0xEC0000006E6F6974);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];

    v6 = sub_1BA016B08();

    MEMORY[0x1BFAF1350](0x6E6F63492ELL, 0xE500000000000000);
    v7 = sub_1BA4A6758();

    [v6 setAccessibilityIdentifier_];

    v8 = sub_1BA016BB0();

    MEMORY[0x1BFAF1350](0x6863746977532ELL, 0xE700000000000000);
    v12 = sub_1BA4A6758();

    [v8 setAccessibilityIdentifier_];
  }

  else
  {
    v9 = sub_1BA016A68();
    [v9 setAccessibilityIdentifier_];

    v10 = sub_1BA016A88();
    [v10 setAccessibilityIdentifier_];

    v11 = sub_1BA016B08();
    [v11 setAccessibilityIdentifier_];

    v12 = sub_1BA016BB0();
    [v12 setAccessibilityIdentifier_];
  }
}

id sub_1BA016AA8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1BA016B08()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setContentMode_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA016BB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1BA016C38(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___descriptionLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint] = 0;
  *&v1[v2] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AdvertisableFeatureContentView();

  v3 = objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA016D5C();
  if (*&v3[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel])
  {

    sub_1BA016ECC();
  }

  return v3;
}

id sub_1BA016D5C()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = sub_1BA016B08();
  [v0 addSubview_];

  v2 = sub_1BA016A68();
  [v0 addSubview_];

  v3 = sub_1BA016A88();
  [v0 addSubview_];

  v4 = sub_1BA016BB0();
  [v0 addSubview_];

  v5 = objc_opt_self();
  v6 = [v0 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  sub_1BA0171C4(v7);
  sub_1B9F740B0();
  v8 = sub_1BA4A6AE8();

  [v5 activateConstraints_];

  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch];

  return [v9 addTarget:v0 action:sel_switchValueChangedWithSender_ forControlEvents:4096];
}

id sub_1BA016ECC()
{
  v1 = v0;
  v2 = sub_1BA4A3408();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = sub_1BA016A68();
  sub_1BA4A2EC8();
  sub_1BA4A33F8();
  v12 = *(v3 + 8);
  v12(v10, v2);
  v13 = sub_1BA4A6758();

  [v11 setText_];

  v14 = sub_1BA016A88();
  sub_1BA4A2EC8();
  sub_1BA4A33D8();
  v12(v10, v2);
  v15 = sub_1BA4A6758();

  [v14 setText_];

  v16 = sub_1BA016B08();
  sub_1BA4A2EC8();
  v17 = sub_1BA4A33E8();
  v12(v10, v2);
  [v16 setImage_];

  v18 = sub_1BA016BB0();
  [v18 setOn_];

  sub_1BA4A2EC8();
  v19 = sub_1BA4A33E8();
  v12(v6, v2);
  if (v19 && ([v19 size], v21 = v20, v23 = v22, v19, v21 > 0.0) && v23 > 0.0)
  {
    result = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint);
    if (result)
    {
      return [result setConstant_];
    }
  }

  else
  {
    result = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint);
    if (result)
    {
      return [result setConstant_];
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA0171C4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for UILayoutPriority(0);
  sub_1B9F7A62C();
  sub_1BA4A3EB8();
  sub_1BA4A3EB8();
  v3 = sub_1BA016A68();
  LODWORD(v4) = v84;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];

  v5 = sub_1BA016A88();
  LODWORD(v6) = v84;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];

  v7 = sub_1BA016B08();
  v8 = [v7 heightAnchor];

  v9 = [v8 constraintEqualToConstant_];
  LODWORD(v10) = v84;
  [v9 setPriority_];
  v11 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint] = v9;
  v12 = v9;

  sub_1B9F109F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B79D0;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView;
  v15 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView] leadingAnchor];
  v16 = [v2 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(inited + 32) = v17;
  v18 = [*&v2[v14] widthAnchor];
  v19 = [v18 constraintEqualToConstant_];

  *(inited + 40) = v19;
  *(inited + 48) = v12;
  v20 = *&v2[v14];
  v83 = v12;
  v21 = [v20 heightAnchor];
  v22 = [v21 constraintLessThanOrEqualToConstant_];

  *(inited + 56) = v22;
  v23 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___titleLabel;
  v24 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___titleLabel] trailingAnchor];
  v25 = sub_1BA016BB0();
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:-10.0];
  *(inited + 64) = v27;
  v28 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___descriptionLabel;
  v29 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___descriptionLabel] leadingAnchor];
  v30 = [*&v2[v23] leadingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(inited + 72) = v31;
  v32 = [*&v2[v28] topAnchor];
  v33 = [*&v2[v23] bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:3.0];

  *(inited + 80) = v34;
  v35 = [*&v2[v28] bottomAnchor];
  v36 = [v2 bottomAnchor];
  v37 = [v35 constraintLessThanOrEqualToAnchor_];

  *(inited + 88) = v37;
  v38 = [*&v2[v28] trailingAnchor];
  v39 = [*&v2[v23] trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(inited + 96) = v40;
  v41 = OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch;
  v42 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch] trailingAnchor];
  v43 = [v2 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(inited + 104) = v44;
  v82 = v41;
  v45 = [*&v2[v41] bottomAnchor];
  v46 = [v2 bottomAnchor];
  v47 = [v45 constraintLessThanOrEqualToAnchor_];

  *(inited + 112) = v47;
  if (sub_1BA4A74F8())
  {
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1BA4B5880;
    v49 = [*&v2[v14] topAnchor];
    v50 = [v2 topAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    *(v48 + 32) = v51;
    v52 = [*&v2[v14] trailingAnchor];
    v53 = [v2 trailingAnchor];
    v54 = [v52 constraintLessThanOrEqualToAnchor_];

    *(v48 + 40) = v54;
    v55 = [*&v2[v23] topAnchor];
    v56 = [*&v2[v14] bottomAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:14.0];

    *(v48 + 48) = v57;
    v58 = [*&v2[v23] leadingAnchor];
    v59 = [v2 leadingAnchor];
    v60 = [v58 constraintEqualToAnchor_];

    *(v48 + 56) = v60;
    v61 = (v48 + 64);
    v62 = [*&v2[v82] centerYAnchor];
    v63 = [*&v2[v23] centerYAnchor];
  }

  else
  {
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1BA4B79E0;
    v64 = [*&v2[v14] topAnchor];
    v65 = [v2 topAnchor];
    v66 = [v64 constraintGreaterThanOrEqualToAnchor_];

    *(v48 + 32) = v66;
    v67 = [*&v2[v14] centerYAnchor];
    v68 = [v2 centerYAnchor];
    v69 = [v67 constraintEqualToAnchor_];

    *(v48 + 40) = v69;
    v70 = [*&v2[v14] bottomAnchor];
    v71 = [v2 bottomAnchor];
    v72 = [v70 constraintLessThanOrEqualToAnchor_];

    *(v48 + 48) = v72;
    v73 = [*&v2[v23] leadingAnchor];
    v74 = [*&v2[v14] trailingAnchor];
    v75 = [v73 constraintEqualToAnchor:v74 constant:14.0];

    *(v48 + 56) = v75;
    v76 = [*&v2[v23] topAnchor];
    v77 = [v2 topAnchor];
    v78 = [v76 constraintEqualToAnchor_];

    *(v48 + 64) = v78;
    v61 = (v48 + 72);
    v62 = [*&v2[v82] centerYAnchor];
    v63 = [v2 centerYAnchor];
  }

  v79 = v63;
  v80 = [v62 constraintEqualToAnchor_];

  *v61 = v80;
  sub_1B9F73B50(inited);

  return v48;
}

id sub_1BA017C7C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BA017D64()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  LODWORD(v1) = 1036831949;
  [v0 _setHyphenationFactor_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v4 = result;
    v5 = [result hk:0x8000 fontByAddingSymbolicTraits:?];

    [v0 setFont_];
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BA017EAC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  LODWORD(v1) = 1036831949;
  [v0 _setHyphenationFactor_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  v3 = [objc_opt_self() hk:*MEMORY[0x1E69DDD80] preferredFontForTextStyle:?];
  [v0 setFont_];

  return v0;
}

id sub_1BA017FC0(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v2[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell____lazy_storage___featureContentView] = 0;
  if (a2)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for AdvertisableFeatureTableViewCell();
  v6 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, 0, v5);

  v7 = v6;
  sub_1BA016290();

  return v7;
}

void sub_1BA01825C()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_advertisableFeatureModel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___iconView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView____lazy_storage___enabledSwitch) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30AdvertisableFeatureContentView_iconHeightConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA018354()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [v0 dateOfBirthComponentsWithError_];
  v2 = v6[0];
  if (v1)
  {
    v3 = v1;
    sub_1BA4A1108();
    v4 = v2;
  }

  else
  {
    v5 = v6[0];
    sub_1BA4A1488();

    swift_willThrow();
  }
}

id sub_1BA01849C(SEL *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [v1 *a1];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1BA4A1488();

    swift_willThrow();
  }

  return v2;
}

id sub_1BA0185A0(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v14 - v6;
  sub_1BA018958(a1, v14 - v6);
  v8 = sub_1BA4A1148();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v10 = sub_1BA4A10F8();
    (*(v9 + 8))(v7, v8);
  }

  v14[0] = 0;
  v11 = [v2 _setDateOfBirthComponents_error_];

  if (v11)
  {
    return v14[0];
  }

  v13 = v14[0];
  sub_1BA4A1488();

  return swift_willThrow();
}

id sub_1BA0187B8(uint64_t a1, SEL *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([v2 *a2])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1BA4A1488();

  return swift_willThrow();
}

uint64_t ConfirmDetailsProvider.Details.biologicalSex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ConfirmDetailsProvider.Details.dateOfBirthComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ConfirmDetailsProvider.Details(0) + 20);

  return sub_1BA018958(v3, a1);
}

uint64_t type metadata accessor for ConfirmDetailsProvider.Details(uint64_t a1)
{
  result = qword_1EBBEA498;
  if (!qword_1EBBEA498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA018958(uint64_t a1, uint64_t a2)
{
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmDetailsProvider.Details.dateOfBirthComponents.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ConfirmDetailsProvider.Details(0) + 20);

  return sub_1BA018A30(a1, v3);
}

uint64_t sub_1BA018A30(uint64_t a1, uint64_t a2)
{
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *ConfirmDetailsProvider.Details.weight.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfirmDetailsProvider.Details(0) + 24));
  v2 = v1;
  return v1;
}

void ConfirmDetailsProvider.Details.weight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConfirmDetailsProvider.Details(0) + 24);

  *(v1 + v3) = a1;
}

void *ConfirmDetailsProvider.Details.height.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfirmDetailsProvider.Details(0) + 28));
  v2 = v1;
  return v1;
}

void ConfirmDetailsProvider.Details.height.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConfirmDetailsProvider.Details(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t ConfirmDetailsProvider.Details.usesCalciumChannelBlockers.setter(char a1)
{
  result = type metadata accessor for ConfirmDetailsProvider.Details(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ConfirmDetailsProvider.Details.usesBetaBlockers.setter(char a1)
{
  result = type metadata accessor for ConfirmDetailsProvider.Details(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ConfirmDetailsProvider.Details.init(biologicalSex:dateOfBirthComponents:weight:height:usesCalciumChannelBlockers:usesBetaBlockers:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v14 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v15 = v14[5];
  v16 = sub_1BA4A1148();
  (*(*(v16 - 8) + 56))(a8 + v15, 1, 1, v16);
  v17 = v14[6];
  v18 = v14[7];
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  result = sub_1BA018A30(a3, a8 + v15);
  *(a8 + v17) = a4;
  *(a8 + v18) = a5;
  *(a8 + v14[8]) = a6;
  *(a8 + v14[9]) = a7;
  return result;
}

uint64_t sub_1BA018EE4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2 & 1;
  return result;
}

BOOL sub_1BA018F88()
{
  v1 = v0;
  v70 = *v0;
  v2 = sub_1BA4A3EA8();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v68 = &v63 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v67 = &v63 - v11;
  v12 = sub_1BA4A1728();
  v13 = *(v12 - 8);
  v65 = v12;
  v66 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E6720];
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v63 - v20;
  v22 = sub_1BA4A1148();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA01C6A0(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, v17);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v63 - v29;
  v31 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v69 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[11])
  {
    sub_1BA4A3DD8();
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v73 = v38;
      *v37 = 136446466;
      v39 = sub_1BA4A85D8();
      v41 = sub_1B9F0B82C(v39, v40, &v73);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA4E3D40, &v73);
      _os_log_impl(&dword_1B9F07000, v35, v36, "[%{public}s.%{public}s]: Asked for aboveAgeThreshold when no threshold is set", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    (*(v71 + 8))(v5, v72);
    return 1;
  }

  else
  {
    v64 = v1[10];

    sub_1BA4A4DB8();

    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      sub_1BA01C768(v30, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
      v43 = v68;
      sub_1BA4A3DD8();
      v44 = sub_1BA4A3E88();
      v45 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v73 = v47;
        *v46 = 136446466;
        v48 = sub_1BA4A85D8();
        v50 = sub_1B9F0B82C(v48, v49, &v73);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2082;
        *(v46 + 14) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA4E3D40, &v73);
        _os_log_impl(&dword_1B9F07000, v44, v45, "[%{public}s.%{public}s]: Asked for current details before we were able to query them", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v47, -1, -1);
        MEMORY[0x1BFAF43A0](v46, -1, -1);
      }

      (*(v71 + 8))(v43, v72);
      return 0;
    }

    else
    {
      v51 = v69;
      sub_1BA01C704(v30, v69);
      sub_1BA018958(v51 + *(v31 + 20), v21);
      if ((*(v23 + 48))(v21, 1, v22) == 1)
      {
        sub_1BA01C768(v21, &qword_1EBBEA478, MEMORY[0x1E6968278]);
        v52 = v67;
        sub_1BA4A3DD8();
        v53 = sub_1BA4A3E88();
        v54 = sub_1BA4A6FB8();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v73 = v56;
          *v55 = 136446466;
          v57 = sub_1BA4A85D8();
          v59 = sub_1B9F0B82C(v57, v58, &v73);

          *(v55 + 4) = v59;
          *(v55 + 12) = 2082;
          *(v55 + 14) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA4E3D40, &v73);
          _os_log_impl(&dword_1B9F07000, v53, v54, "[%{public}s.%{public}s]: Asked for date of birth but it was not set on details", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v56, -1, -1);
          MEMORY[0x1BFAF43A0](v55, -1, -1);
        }

        (*(v71 + 8))(v52, v72);
        sub_1BA01D4B4(v69, type metadata accessor for ConfirmDetailsProvider.Details);
        return 0;
      }

      else
      {
        (*(v23 + 32))(v26, v21, v22);
        v60 = sub_1BA4A10F8();
        (v1[7])();
        v61 = sub_1BA4A16B8();
        (*(v66 + 8))(v16, v65);
        v62 = [v60 hk:v61 ageWithCurrentDate:?];

        (*(v23 + 8))(v26, v22);
        sub_1BA01D4B4(v51, type metadata accessor for ConfirmDetailsProvider.Details);
        return v62 >= v64;
      }
    }
  }
}

uint64_t sub_1BA019854()
{
  sub_1BA01C7D8(0);
  sub_1BA01D5D4(&qword_1EBBEA490, sub_1BA01C7D8, MEMORY[0x1E695BFB0]);
  return sub_1BA4A4F98();
}

uint64_t ConfirmDetailsProvider.__allocating_init(source:ageThreshold:dateGenerator:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = sub_1BA01CC88(v13, a2, a3 & 1, a4, a5, v5, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t ConfirmDetailsProvider.init(source:ageThreshold:dateGenerator:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_1BA01C870(v16, a2, a3 & 1, a4, a5, v5, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

uint64_t sub_1BA019A84()
{
  v1 = *v0;
  v2 = sub_1BA4A6478();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A64C8();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = v0[9];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = v1;
  aBlock[4] = sub_1BA01D318;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_20;
  v12 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1BA01D5D4(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v13 = MEMORY[0x1E69E7F60];
  sub_1BA01C6A0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BA01D61C(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v13);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v10, v6, v12);
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v16);
}

uint64_t sub_1BA019D88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, __n128))
{
  v4 = sub_1BA4A3EA8();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  a3(&v8, v6);
  return v8;
}

uint64_t sub_1BA01A050(uint64_t a1, uint64_t a2, uint64_t (*a3)(__n128))
{
  v4 = sub_1BA4A3EA8();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  return a3(v6);
}

uint64_t sub_1BA01A340(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, __n128))
{
  v4 = sub_1BA4A3EA8();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  a3(&v8, v6);
  return v8;
}

uint64_t sub_1BA01A600(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1BA01C6A0(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v31 - v5;
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], v2);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v31 - v13;
  v15 = sub_1BA019D88(0x6369676F6C6F6962, 0xEE00786573206C61, sub_1BA01D320);
  v33 = v16;
  sub_1BA01A050(0x20666F2065746164, 0xED00006874726962, sub_1BA01D33C);
  v32 = sub_1BA01A340(0x746867696568, 0xE600000000000000, sub_1BA01D358);
  v17 = sub_1BA01A340(0x746867696577, 0xE600000000000000, sub_1BA01D374);
  v18 = sub_1BA01A340(0xD00000000000001ALL, 0x80000001BA4E3DC0, sub_1BA01D390);
  v19 = *(a1 + 96);
  v34 = v10;
  v35 = v14;
  sub_1BA018958(v14, v10);
  v31[1] = v19;

  if (v18)
  {
    HIDWORD(v31[0]) = [v18 takingCalciumChannelBlockers];
    LODWORD(v31[0]) = [v18 takingBetaBlockers];
  }

  else
  {
    v31[0] = 0;
  }

  v20 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v21 = v20[5];
  v22 = sub_1BA4A1148();
  (*(*(v22 - 8) + 56))(&v6[v21], 1, 1, v22);
  v23 = v20[6];
  v24 = v20[7];
  *v6 = v15;
  v6[8] = v33 & 1;
  v25 = v17;
  v26 = v17;
  v27 = v32;
  v28 = v32;
  sub_1BA018A30(v34, &v6[v21]);
  *&v6[v23] = v26;
  *&v6[v24] = v27;
  v29 = v31[0];
  v6[v20[8]] = BYTE4(v31[0]);
  v6[v20[9]] = v29;
  (*(*(v20 - 1) + 56))(v6, 0, 1, v20);
  sub_1BA4A4DA8();

  sub_1BA01C768(v35, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  return sub_1BA01C768(v6, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
}

void sub_1BA01AA10(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (!v2)
  {
    v7 = v6;
    v8 = [v6 biologicalSex];

    *a2 = v8;
    *(a2 + 8) = 0;
  }
}

uint64_t sub_1BA01AAA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 16))(v4, v5);
  if (!v2)
  {
    v7 = sub_1BA4A1148();
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  return result;
}

uint64_t sub_1BA01AB5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 24))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BA01ABCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 32))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BA01AC3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  result = (*(v5 + 40))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BA01ACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v28 = a2;
  v29 = v6;
  v31 = sub_1BA4A6478();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A64C8();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v17);
  v18 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v30 = v3[9];
  sub_1BA01CDA4(a1, v18);
  v21 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = v28;
  v23[3] = a3;
  v23[4] = v20;
  v23[5] = v19;
  v23[6] = v3;
  sub_1BA01C704(v18, v23 + v21);
  *(v23 + v22) = v29;
  aBlock[4] = sub_1BA01CE08;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_6;
  v24 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1BA01D5D4(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v25 = MEMORY[0x1E69E7F60];
  sub_1BA01C6A0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BA01D61C(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v25);
  v26 = v31;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v13, v9, v24);
  _Block_release(v24);
  (*(v34 + 8))(v9, v26);
  (*(v32 + 8))(v13, v33);
}

uint64_t sub_1BA01B0D8(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a5;
  v37 = a4;
  v38 = a3;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v34 - v17;
  sub_1BA4A3DD8();

  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FC8();

  v21 = os_log_type_enabled(v19, v20);
  v39 = v11;
  v34[2] = a7;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v36 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v34[1] = v14;
    v25 = v24;
    v40[0] = v24;
    *v23 = 136446722;
    v26 = sub_1BA4A85D8();
    v28 = sub_1B9F0B82C(v26, v27, v40);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_1B9F0B82C(0xD00000000000001FLL, 0x80000001BA4E3E70, v40);
    *(v23 + 22) = 2082;
    *(v23 + 24) = sub_1B9F0B82C(a1, a2, v40);
    _os_log_impl(&dword_1B9F07000, v19, v20, "[%{public}s.%{public}s]: Saving changes to characteristic %{public}s", v23, 0x20u);
    swift_arrayDestroy();
    v29 = v25;
    v11 = v39;
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    v30 = v23;
    v10 = v36;
    MEMORY[0x1BFAF43A0](v30, -1, -1);
  }

  v31 = (*(v11 + 8))(v18, v10);
  v38(v31);
  v32 = v35;
  result = swift_beginAccess();
  *(v32 + 16) = 1;
  return result;
}

void sub_1BA01B578(void (*a1)(unint64_t, BOOL), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v93 = a7;
  v94 = a4;
  v98 = a3;
  v95 = a2;
  v96 = a1;
  v97 = sub_1BA4A3EA8();
  v91 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v9);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A1148();
  v89 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v87 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E6720];
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v88 = &v87 - v17;
  sub_1BA01D3AC(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA01C6A0(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, v14);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v87 - v25;
  v27 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v28 = *(v27 - 1);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a5;

  sub_1BA4A4DB8();

  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1BA01C768(v26, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    v32 = v90;
    sub_1BA4A3DD8();
    v33 = sub_1BA4A3E88();
    v34 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v99[0] = v36;
      *v35 = 136446466;
      v37 = sub_1BA4A85D8();
      v39 = sub_1B9F0B82C(v37, v38, v99);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_1B9F0B82C(0xD000000000000021, 0x80000001BA4E3E20, v99);
      _os_log_impl(&dword_1B9F07000, v33, v34, "[%{public}s.%{public}s]: Attempted to save new deatils before we received our first set of details.", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
    }

    (*(v91 + 8))(v32, v97);
    v40 = v98;
    swift_beginAccess();
    v41 = *(v40 + 16);
    v42 = v41;
    v43 = v94;
    if (!v41)
    {
      swift_beginAccess();
      v42 = *(v43 + 16);
    }

    goto LABEL_43;
  }

  v44 = sub_1BA01C704(v26, v31);
  v46 = v31[8];
  v47 = *a6;
  v48 = *(a6 + 8);
  v97 = a6;
  if ((v46 & 1) == 0 && *v31 == v47)
  {
    v48 = 1;
  }

  v49 = v94;
  v50 = v89;
  if ((v48 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v44, v45);
    v51 = v93;
    *(&v87 - 2) = v92;
    *(&v87 - 1) = v52;
    sub_1BA01B0D8(0x6369676F6C6F6942, 0xEE00786553206C61, sub_1BA01D44C, (&v87 - 4), v49, v98, v51);
  }

  v53 = v27[5];
  v54 = *(v19 + 48);
  sub_1BA018958(&v31[v53], v22);
  sub_1BA018958(v97 + v53, &v22[v54]);
  v55 = *(v50 + 48);
  if (v55(v22, 1, v11) == 1)
  {
    if (v55(&v22[v54], 1, v11) == 1)
    {
      v56 = sub_1BA01C768(v22, &qword_1EBBEA478, MEMORY[0x1E6968278]);
      v59 = v92;
      v58 = v93;
      v60 = v97;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v61 = v88;
  sub_1BA018958(v22, v88);
  if (v55(&v22[v54], 1, v11) == 1)
  {
    (*(v50 + 8))(v61, v11);
LABEL_16:
    v56 = sub_1BA01D4B4(v22, sub_1BA01D3AC);
    v59 = v92;
    v58 = v93;
    v60 = v97;
LABEL_17:
    MEMORY[0x1EEE9AC00](v56, v57);
    *(&v87 - 2) = v59;
    *(&v87 - 1) = v60;
    v56 = sub_1BA01B0D8(0x20666F2065746144, 0xED00006874726942, sub_1BA01D514, (&v87 - 4), v49, v98, v58);
    goto LABEL_18;
  }

  v84 = v87;
  (*(v50 + 32))(v87, &v22[v54], v11);
  sub_1BA01D5D4(&qword_1EBBEA4C8, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
  v85 = sub_1BA4A6728();
  v86 = *(v50 + 8);
  v86(v84, v11);
  v86(v61, v11);
  v56 = sub_1BA01C768(v22, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  v59 = v92;
  v58 = v93;
  v60 = v97;
  if ((v85 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v62 = v27[6];
  v63 = *&v31[v62];
  v64 = *&v60[v62];
  v65 = v60;
  if (!v63)
  {
    if (!v64)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!v64 || (sub_1B9F0ADF8(0, &qword_1EBBEA4B8, 0x1E696C348), v66 = v64, v67 = v63, v68 = sub_1BA4A7798(), v67, v66, v65 = v97, (v68 & 1) == 0))
  {
LABEL_23:
    MEMORY[0x1EEE9AC00](v56, v57);
    *(&v87 - 2) = v59;
    *(&v87 - 1) = v69;
    v56 = sub_1BA01B0D8(0x746867696557, 0xE600000000000000, sub_1BA01D530, (&v87 - 4), v49, v98, v58);
    v65 = v97;
  }

LABEL_24:
  v70 = v27[7];
  v71 = *&v31[v70];
  v72 = *(v65 + v70);
  if (!v71)
  {
    if (!v72)
    {
      goto LABEL_30;
    }

LABEL_29:
    MEMORY[0x1EEE9AC00](v56, v57);
    *(&v87 - 2) = v59;
    *(&v87 - 1) = v76;
    v56 = sub_1BA01B0D8(0x746867696548, 0xE600000000000000, sub_1BA01D54C, (&v87 - 4), v49, v98, v58);
    v65 = v97;
    goto LABEL_30;
  }

  if (!v72)
  {
    goto LABEL_29;
  }

  sub_1B9F0ADF8(0, &qword_1EBBEA4B8, 0x1E696C348);
  v73 = v72;
  v74 = v71;
  v75 = sub_1BA4A7798();

  v65 = v97;
  if ((v75 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v77 = v27[9];
  v78 = v31[v77];
  v79 = *(v65 + v77);
  if (v78 == v79 && v31[v27[8]] == *(v65 + v27[8]))
  {
    goto LABEL_39;
  }

  v99[0] = 0;
  if (v79)
  {
    v99[0] = 2;
    if (*(v65 + v27[8]))
    {
      v80 = 3;
LABEL_37:
      v99[0] = v80;
    }
  }

  else if (*(v65 + v27[8]) == 1)
  {
    v80 = 1;
    goto LABEL_37;
  }

  MEMORY[0x1EEE9AC00](v56, v57);
  *(&v87 - 2) = v59;
  *(&v87 - 1) = v99;
  sub_1BA01B0D8(0xD00000000000001ALL, v81 | 0x8000000000000000, sub_1BA01D568, (&v87 - 4), v49, v98, v58);
LABEL_39:
  swift_beginAccess();
  if (*(v49 + 16) == 1)
  {
    sub_1BA019A84();
  }

  sub_1BA01D4B4(v31, type metadata accessor for ConfirmDetailsProvider.Details);
  v82 = v98;
  swift_beginAccess();
  v41 = *(v82 + 16);
  v42 = v41;
  if (!v41)
  {
    swift_beginAccess();
    v42 = *(v49 + 16);
  }

LABEL_43:
  v83 = v41;
  v96(v42, v41 != 0);
  sub_1BA01D440(v42, v41 != 0);
}

uint64_t sub_1BA01C048(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v5 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  return (*(v4 + 56))(a2 + *(v5 + 20), v3, v4);
}

uint64_t sub_1BA01C0C4(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v5 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  return (*(v4 + 64))(*(a2 + *(v5 + 24)), v3, v4);
}

uint64_t sub_1BA01C140(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v5 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  return (*(v4 + 72))(*(a2 + *(v5 + 28)), v3, v4);
}

uint64_t ConfirmDetailsProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ConfirmDetailsProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t _s18HealthExperienceUI22ConfirmDetailsProviderC0E0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1148();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v38 - v11;
  sub_1BA01D3AC(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v18 & 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_13;
    }
  }

  v39 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v19 = *(v39 + 20);
  v20 = *(v14 + 48);
  sub_1BA018958(a1 + v19, v17);
  sub_1BA018958(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_1BA018958(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v20], v4);
      sub_1BA01D5D4(&qword_1EBBEA4C8, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
      v23 = sub_1BA4A6728();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      sub_1BA01C768(v17, &qword_1EBBEA478, MEMORY[0x1E6968278]);
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v12, v4);
LABEL_12:
    sub_1BA01D4B4(v17, sub_1BA01D3AC);
    goto LABEL_13;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1BA01C768(v17, &qword_1EBBEA478, MEMORY[0x1E6968278]);
LABEL_16:
  v25 = v39;
  v26 = *(v39 + 24);
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27)
  {
    if (!v28)
    {
      goto LABEL_13;
    }

    sub_1B9F0ADF8(0, &qword_1EBBEA4B8, 0x1E696C348);
    v29 = v28;
    v30 = v27;
    v31 = sub_1BA4A7798();

    if ((v31 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v28)
  {
    goto LABEL_13;
  }

  v32 = v25[7];
  v33 = *(a1 + v32);
  v34 = *(a2 + v32);
  if (v33)
  {
    if (!v34)
    {
      goto LABEL_13;
    }

    sub_1B9F0ADF8(0, &qword_1EBBEA4B8, 0x1E696C348);
    v35 = v34;
    v36 = v33;
    v37 = sub_1BA4A7798();

    if ((v37 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v34)
  {
    goto LABEL_13;
  }

  if (*(a1 + v25[8]) == *(a2 + v25[8]))
  {
    v18 = *(a1 + v25[9]) ^ *(a2 + v25[9]) ^ 1;
    return v18 & 1;
  }

LABEL_13:
  v18 = 0;
  return v18 & 1;
}

void sub_1BA01C6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA01C704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA01C768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA01C6A0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA01C7D8(uint64_t a1)
{
  if (!qword_1EBBEA488)
  {
    sub_1BA01C6A0(255, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A4DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA488);
    }
  }
}

uint64_t sub_1BA01C870(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v32 = a2;
  sub_1BA01C6A0(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v31 = v29 - v14;
  v30 = sub_1BA4A72F8();
  v15 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v37[3] = a7;
  v37[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v24 = sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v29[0] = "setOrLog(characteristic:block:)";
  v29[1] = v24;
  sub_1BA4A64A8();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1BA01D5D4(&unk_1EDC5E480, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v25 = MEMORY[0x1E69E8030];
  sub_1BA01C6A0(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1BA01D61C(&qword_1EDC5E660, &qword_1EDC5E670, v25);
  sub_1BA4A7C38();
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8090], v30);
  *(a6 + 72) = sub_1BA4A7328();
  *(a6 + 80) = 0;
  *(a6 + 88) = 1;
  v26 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
  sub_1BA01C7D8(0);
  swift_allocObject();
  *(a6 + 96) = sub_1BA4A4DF8();
  sub_1B9F0A534(v37, a6 + 16);
  swift_beginAccess();
  *(a6 + 80) = v32;
  *(a6 + 88) = v33 & 1;
  v27 = v35;
  *(a6 + 56) = v34;
  *(a6 + 64) = v27;

  sub_1BA019A84();
  __swift_destroy_boxed_opaque_existential_1(v37);
  return a6;
}

uint64_t sub_1BA01CC88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConfirmDetailsProvider();
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a1, a7);
  return sub_1BA01C870(v17, a2, a3 & 1, a4, a5, v18, a7, a8);
}

uint64_t sub_1BA01CDA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA01CE08()
{
  v1 = *(type metadata accessor for ConfirmDetailsProvider.Details(0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA01B578(v3, v4, v5, v6, v7, (v0 + v2), v8);
}

void sub_1BA01D1A8(uint64_t a1)
{
  sub_1BA01C6A0(319, &qword_1EBBEA4A8, type metadata accessor for HKBiologicalSex, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BA01C6A0(319, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BA01D2B0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BA01D2B0(uint64_t a1)
{
  if (!qword_1EBBEA4B0)
  {
    sub_1B9F0ADF8(255, &qword_1EBBEA4B8, 0x1E696C348);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA4B0);
    }
  }
}

void sub_1BA01D3AC(uint64_t a1)
{
  if (!qword_1EBBEA4C0)
  {
    sub_1BA01C6A0(255, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEA4C0);
    }
  }
}

void sub_1BA01D440(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1BA01D44C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 48))(v2, v3, v4);
}

uint64_t sub_1BA01D4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA01D568()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 80))(*v2, v3, v4);
}

uint64_t sub_1BA01D5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA01D61C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BA01C6A0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ContentConfigurationItem.makeDisclosureItem(text:automationIdentifier:cellSelectionHandler:deselectionBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a6;
  v46 = a5;
  v47 = a3;
  v48 = a4;
  v49 = a2;
  v43 = a1;
  sub_1B9F1D158(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v40 = &v38 - v12;
  v44 = sub_1BA4A3FB8();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A3F18();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A4428();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a7;
  sub_1BA4A43A8();

  sub_1BA4A43B8();
  v26 = MEMORY[0x1E69DC110];
  v39 = v21;
  *(a8 + 96) = v21;
  *(a8 + 104) = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a8 + 72));
  (*(v22 + 16))(boxed_opaque_existential_1, v25, v21);
  sub_1B9F1D158(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5480;
  (*(v17 + 104))(v20, *MEMORY[0x1E69DBF28], v16);
  v29 = sub_1BA4A3F48();
  (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v42 + 8))(v15, v44);
  (*(v17 + 8))(v20, v16);
  v30 = type metadata accessor for ContentConfigurationItem(0);
  v31 = v30[10];
  v32 = sub_1BA4A4168();
  (*(*(v32 - 8) + 56))(a8 + v31, 1, 1, v32);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v33 = v45;

  sub_1B9F2F610(&v50);
  *(&v51 + 1) = &type metadata for BasicCellSelectionHandler;
  v52 = &off_1F381BCC8;
  *&v50 = v46;
  *(&v50 + 1) = v33;
  LOBYTE(v51) = v41;
  (*(v22 + 8))(v25, v39);
  sub_1B9F2F698(&v50, a8 + 16);
  *(a8 + v30[12]) = 0;
  *(a8 + v30[13]) = 0;
  v34 = v48;
  v35 = v49;
  *a8 = v43;
  *(a8 + 8) = v35;
  *(a8 + 112) = 0;
  *(a8 + 120) = v28;
  *(a8 + 56) = v47;
  *(a8 + 64) = v34;
  v36 = (a8 + v30[11]);
  *v36 = 0;
  v36[1] = 0;

  return sub_1B9F2F610(&v50);
}

uint64_t static ContentConfigurationItem.makeDisclosureItem(text:automationIdentifier:makeViewControllerToShow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a3;
  v46 = a4;
  v47 = a2;
  v48 = a1;
  sub_1B9F1D158(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v42 = &v39 - v12;
  v13 = sub_1BA4A3FB8();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1BA4A3F18();
  v17 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A4428();
  v41 = *(v21 - 8);
  v22 = v41;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;

  sub_1BA4A43A8();

  sub_1BA4A43B8();
  v27 = MEMORY[0x1E69DC110];
  v40 = v21;
  *(a7 + 96) = v21;
  *(a7 + 104) = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a7 + 72));
  (*(v22 + 16))(boxed_opaque_existential_1, v25, v21);
  sub_1B9F1D158(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5480;
  v30 = v39;
  (*(v17 + 104))(v20, *MEMORY[0x1E69DBF28], v39);
  v31 = sub_1BA4A3F48();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v43 + 8))(v16, v44);
  (*(v17 + 8))(v20, v30);
  v32 = type metadata accessor for ContentConfigurationItem(0);
  v33 = v32[10];
  v34 = sub_1BA4A4168();
  (*(*(v34 - 8) + 56))(a7 + v33, 1, 1, v34);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;

  sub_1B9F2F610(&v49);
  *(&v50 + 1) = &type metadata for BasicCellSelectionHandler;
  v51 = &off_1F381BCC8;

  *&v49 = sub_1BA01E3E0;
  *(&v49 + 1) = v26;
  LOBYTE(v50) = 2;
  (*(v41 + 8))(v25, v40);
  sub_1B9F2F698(&v49, a7 + 16);
  *(a7 + v32[12]) = 0;
  *(a7 + v32[13]) = 0;
  v35 = v47;
  *a7 = v48;
  *(a7 + 8) = v35;
  *(a7 + 112) = 0;
  *(a7 + 120) = v29;
  v36 = v46;
  *(a7 + 56) = v45;
  *(a7 + 64) = v36;
  v37 = (a7 + v32[11]);
  *v37 = 0;
  v37[1] = 0;

  return sub_1B9F2F610(&v49);
}

uint64_t sub_1BA01E0CC(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  memset(v4, 0, sizeof(v4));
  sub_1BA4A7238();

  return sub_1B9F23224(v4);
}

uint64_t static ContentConfigurationItem.makeListHeaderConfiguration(text:automationIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v30 = sub_1BA4A1798();
  v8 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A4428();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A43F8();

  sub_1BA4A43B8();
  sub_1BA4A1788();
  v17 = sub_1BA4A1748();
  v19 = v18;
  (*(v8 + 8))(v11, v30);
  *&v33[0] = v17;
  *(&v33[0] + 1) = v19;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](a1, a2);
  v20 = v33[0];
  v21 = MEMORY[0x1E69DC110];
  *(a5 + 96) = v12;
  *(a5 + 104) = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a5 + 72));
  (*(v13 + 16))(boxed_opaque_existential_1, v16, v12);
  v23 = type metadata accessor for ContentConfigurationItem(0);
  v24 = v23[10];
  sub_1BA4A4128();
  v25 = sub_1BA4A4168();
  (*(*(v25 - 8) + 56))(a5 + v24, 0, 1, v25);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  (*(v13 + 8))(v16, v12);
  sub_1B9F2F698(v33, a5 + 16);
  *(a5 + v23[12]) = 0;
  *(a5 + v23[13]) = 0;
  *a5 = v20;
  *(a5 + 112) = 0;
  *(a5 + 120) = MEMORY[0x1E69E7CC0];
  v26 = v32;
  *(a5 + 56) = v31;
  *(a5 + 64) = v26;
  v27 = (a5 + v23[11]);
  *v27 = 0;
  v27[1] = 0;

  return sub_1B9F2F610(v33);
}

void sub_1BA01E3E8()
{
  if (!qword_1EDC6E300)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E300);
    }
  }
}

uint64_t sub_1BA01E43C()
{
  result = sub_1B9FE2518(&unk_1F37FC080);
  qword_1EBBEA4D0 = &unk_1F37FC040;
  return result;
}

double static EmergencyAccessBuddyFlow.allCases.getter()
{
  if (qword_1EBBE8268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static EmergencyAccessBuddyFlow.allCases.setter(uint64_t a1)
{
  if (qword_1EBBE8268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBBEA4D0 = a1;
}

uint64_t (*static EmergencyAccessBuddyFlow.allCases.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EBBE8268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1BA01E608@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE8268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EBBEA4D0;

  return result;
}

uint64_t sub_1BA01E688(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EBBE8268;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBBEA4D0 = v1;
}

uint64_t EmergencyAccessBuddyStartViewController.__allocating_init(healthStore:flow:emergencyStatus:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1BA01FEB8(a1, a2, a3);
  v9 = v8;

  return v9;
}

uint64_t EmergencyAccessBuddyStartViewController.init(healthStore:flow:emergencyStatus:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BA01FEB8(a1, a2, a3);
  v5 = v4;

  return v5;
}

id sub_1BA01E8A0()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A6488();
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 dismissViewControllerAnimated:1 completion:{0, v14}];
  v18 = &v0[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow];
  v19 = v0[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow + 8];
  if (v19 <= 1)
  {
    v26 = v7;
    v20 = *v18;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v25 = v6;
    (*(v12 + 104))(v16, *MEMORY[0x1E69E7F88], v11);
    sub_1BA02040C(v20, v19);
    v21 = sub_1BA4A7338();
    (*(v12 + 8))(v16, v11);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    aBlock[4] = sub_1BA020420;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_11;
    v23 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1BA020428(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F22468(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B9F31534();
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v10, v5, v23);
    _Block_release(v23);

    (*(v2 + 8))(v5, v1);
    (*(v26 + 8))(v10, v25);
  }

  return result;
}

void sub_1BA01ECE4()
{
  sub_1BA01F324();
  v1 = sub_1BA4A6758();

  v2 = sub_1BA4A6758();
  type metadata accessor for EmergencyAccessBuddyStartViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  v6 = sub_1BA4A6758();
  v7 = objc_opt_self();
  v8 = [v7 imageNamed:v6 inBundle:v5];

  if (!v8)
  {
    __break(1u);
    goto LABEL_25;
  }

  [v0 addBulletedListItemWithTitle:v1 description:v2 image:v8];

  v9 = &v0[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow];
  v10 = v0[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow + 8];
  if (v10 != 1 && (v10 != 2 || *v9 != 1))
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v11 = sub_1BA4A6758();

    v12 = sub_1BA4A6758();
    v13 = [v4 bundleForClass_];
    v14 = sub_1BA4A6758();
    v15 = [v7 imageNamed:v14 inBundle:v13];

    if (v15)
    {
      [v0 addBulletedListItemWithTitle:v11 description:v12 image:v15];

      goto LABEL_9;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_9:
  if (!HAFeatureFlagStewieEnabled())
  {
    goto LABEL_17;
  }

  v16 = &v0[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_emergencyStatus];
  if (v16[*(type metadata accessor for EmergencyAccessUserStatus(0) + 20)] != 1 || v9[8] != 2 || *v9 > 1uLL)
  {
    goto LABEL_17;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v17 = sub_1BA4A6758();

  v18 = sub_1BA4A6758();
  v19 = [v4 bundleForClass_];
  v20 = sub_1BA4A6758();
  v21 = [v7 imageNamed:v20 inBundle:v19];

  if (!v21)
  {
LABEL_26:
    __break(1u);
    return;
  }

  [v0 addBulletedListItemWithTitle:v17 description:v18 image:v21];

LABEL_17:
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v27 = [objc_opt_self() boldButton];
  v22 = sub_1BA4A6758();

  [v27 setTitle:v22 forState:0];

  [v27 addTarget:v0 action:sel_didTapNext_ forControlEvents:64];
  v23 = [v0 buttonTray];
  [v23 addButton_];

  if (v9[8] <= 1u)
  {
    sub_1BA4A1318();
    v24 = [objc_opt_self() linkButton];
    v25 = sub_1BA4A6758();

    [v24 setTitle:v25 forState:0];

    [v24 addTarget:v0 action:sel_didTapReviewLater forControlEvents:64];
    v26 = [v0 buttonTray];
    [v26 addButton_];
  }
}

uint64_t sub_1BA01F324()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow);
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow + 8);
  if (v2 == 2 && v1 == 0)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_17;
  }

  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_medicalIDStatus) != 2 && v2 != 1 && (v2 != 2 || v1 != 1))
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_17;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_17:
    swift_once();
  }

  return sub_1BA4A1318();
}

double sub_1BA01F4AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v3 = objc_allocWithZone(MEMORY[0x1E6997AC8]);
  v4 = sub_1BA4A6758();

  v5 = [v3 initWithClientIdentifier_];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = ObjectType;
    v9[4] = sub_1BA020404;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1BA454240;
    v9[3] = &block_descriptor_7;
    v7 = _Block_copy(v9);

    [v5 clearPendingFollowUpItemsWithCompletion_];
    _Block_release(v7);
  }

  sub_1B9F0ADF8(0, &qword_1EDC5E500, 0x1E696C210);
  static HKKeyValueDomain.saveOnboardingStatus(_:healthStore:)(3, *&v1[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_healthStore]);
  [v1 dismissViewControllerAnimated:1 completion:0];
  return sub_1BA33652C();
}

uint64_t sub_1BA01F644(char a1, void *a2, uint64_t a3)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v10 = a2;
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315650;
    v16 = sub_1BA4A85D8();
    v18 = sub_1B9F0B82C(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a1 & 1;
    *(v14 + 18) = 2080;
    v26 = a2;
    v19 = a2;
    sub_1B9F22468(0, &qword_1EDC6B3E0, sub_1B9FED358, MEMORY[0x1E69E6720]);
    v20 = sub_1BA4A6828();
    v22 = sub_1B9F0B82C(v20, v21, &v27);

    *(v14 + 20) = v22;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Cleared pending followup items with success %{BOOL}d and error %s", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);

    return (*(v6 + 8))(v9, v25);
  }

  else
  {

    return (*(v6 + 8))(v9, v5);
  }
}

id EmergencyAccessBuddyStartViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id EmergencyAccessBuddyStartViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id EmergencyAccessBuddyStartViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EmergencyAccessBuddyStartViewController(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BA01FD34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == 2 && v2 == 0)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_17;
  }

  if (a2 != 2 && v3 != 1 && (v3 != 2 || v2 != 1))
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_17;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_17:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA01FEB8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = &v3[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_flow];
  *v8 = *a2;
  v8[8] = v7;
  sub_1BA020470(a3, &v3[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_emergencyStatus]);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_healthStore] = a1;
  started = type metadata accessor for EmergencyAccessBuddyStartViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = a1;
  sub_1BA02040C(v6, v7);
  v13 = [v11 bundleForClass_];
  v14 = sub_1BA4A6758();
  v15 = [objc_opt_self() imageNamed:v14 inBundle:v13];

  if (v15)
  {
    if (v7 >= 2)
    {
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v22 = 0xE000000000000000;
      sub_1BA4A1318();
      v16 = v17;
    }

    else
    {
      v16 = 0;
    }

    v18 = [objc_allocWithZone(MEMORY[0x1E696C248]) initWithHealthStore_];
    v19 = [v18 medicalIDSetUpStatus];

    *&v3[OBJC_IVAR____TtC18HealthExperienceUI39EmergencyAccessBuddyStartViewController_medicalIDStatus] = v19;
    v24 = v6;
    v25 = v7;
    sub_1BA01FD34(&v24, v19);
    sub_1BA0204D4(v6, v7);
    v20 = sub_1BA4A6758();

    if (v16)
    {
      v21 = sub_1BA4A6758();
    }

    else
    {
      v21 = 0;
    }

    v23.receiver = v3;
    v23.super_class = started;
    objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_contentLayout_, v20, v21, v15, 2, v22);

    sub_1BA0204E8(a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for EmergencyAccessBuddyStartViewController(uint64_t a1)
{
  result = qword_1EBBEA500;
  if (!qword_1EBBEA500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA0201FC()
{
  if (!qword_1EBBEA4E0)
  {
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA4E0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI24EmergencyAccessBuddyFlowO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for TextViewItem.AccessoryImageAlignment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TextViewItem.AccessoryImageAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BA0202F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1BA020324(uint64_t a1)
{
  result = type metadata accessor for EmergencyAccessUserStatus(319);
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

uint64_t sub_1BA02040C(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t sub_1BA020428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA020470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyAccessUserStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA0204D4(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_1BA0204E8(uint64_t a1)
{
  v2 = type metadata accessor for EmergencyAccessUserStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA02054C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEA510 = result;
  *algn_1EBBEA518 = v1;
  return result;
}

uint64_t sub_1BA020614()
{
  if (qword_1EBBE8848 != -1)
  {
    swift_once();
  }

  v27[4] = xmmword_1EDC67D78;
  v27[5] = *&qword_1EDC67D88;
  v27[6] = xmmword_1EDC67D98;
  v27[7] = unk_1EDC67DA8;
  v27[0] = xmmword_1EDC67D38;
  v27[1] = *&qword_1EDC67D48;
  v27[2] = xmmword_1EDC67D58;
  v27[3] = *&qword_1EDC67D68;
  v17 = xmmword_1EDC67D38;
  v18 = qword_1EDC67D48;
  v0 = unk_1EDC67D50;
  v1 = xmmword_1EDC67D58;
  v2 = *&qword_1EDC67D68;
  v4 = xmmword_1EDC67D78;
  v3 = qword_1EDC67D88;
  v19 = unk_1EDC67D90;
  v20 = *(&xmmword_1EDC67D98 + 8);
  *&v21 = qword_1EDC67DB0;
  sub_1B9F1D9A4(v27, &v28);
  sub_1B9F1DA18(v0, v1, *(&v1 + 1), v2);
  sub_1B9F1DA18(*(&v2 + 1), v4, *(&v4 + 1), v3);
  v28 = v17;
  memset(&v29[8], 0, 64);
  *&v29[72] = v19;
  *&v29[88] = v20;
  *v29 = v18;
  *&v29[104] = v21;
  if (qword_1EBBE8270 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBBEA510;
  v5 = *algn_1EBBEA518;
  type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F34708();

  v7 = sub_1BA4A6808();
  v9 = v8;
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  v10 = MEMORY[0x1E69E6F90];
  sub_1B9F3217C(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F3217C(0, &qword_1EDC5DCA0, sub_1B9F32244, v10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5480;
  *(v12 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
  *(v12 + 64) = sub_1BA02090C();
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v6;
  *(v13 + 40) = v5;
  *(v13 + 48) = 1;
  *(inited + 32) = v12;
  sub_1BA0117AC();
  v23 = *&v29[48];
  v24 = *&v29[64];
  v25 = *&v29[80];
  v26 = *&v29[96];
  v19 = v28;
  v20 = *v29;
  v21 = *&v29[16];
  v22 = *&v29[32];
  sub_1B9F1D9A4(&v28, &v17);
  v14 = sub_1B9F293A8(&v19);
  v15 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:sectionLayout:)(inited, 1, v14);
  sub_1B9F1DA58(&v28);
  return v15;
}

unint64_t sub_1BA02090C()
{
  result = qword_1EBBEA520;
  if (!qword_1EBBEA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA520);
  }

  return result;
}

void sub_1BA020960(uint64_t a1)
{
  v3 = qword_1EBBEA528;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA020A78(uint64_t a1)
{
  v3 = qword_1EDC61B88;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1BA020AD0()
{
  v0 = sub_1BA024240();

  return v0;
}

void sub_1BA020AFC(uint64_t a1)
{
  v3 = qword_1EDC84AD8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA020BB4()
{
  v1 = qword_1EDC84AD8;
  swift_beginAccess();
  v2 = [*(v0 + v1) fetchRequest];
  v3 = [v2 predicate];

  return v3;
}

void sub_1BA020C30(void *a1)
{
  sub_1BA024C28(a1);
}

void (*sub_1BA020C68(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1BA020BB4();
  return sub_1BA020CB0;
}

void sub_1BA020CB0(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_1BA024C28(v4);

    v3 = v2;
  }

  else
  {
    sub_1BA024C28(*a1);
    v3 = v4;
  }
}

unint64_t sub_1BA020D24(uint64_t a1, uint64_t a2)
{
  v5 = qword_1EDC84AD8;
  swift_beginAccess();
  v6 = [*(v2 + v5) sections];
  if (v6)
  {
    sub_1BA024D28();
    v7 = sub_1BA4A6B08();

    if (v7 >> 62)
    {
LABEL_25:
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
      v18 = sub_1BA4A7CC8();
    }

    else
    {
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
      v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (1)
    {
      if (v18 == v6)
      {
        v6 = 0;
        goto LABEL_21;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFAF2860](v6, v7);
      }

      else
      {
        if (v6 >= *(v17 + 16))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v8 = *(v7 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [v8 name];
      v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v12 = v11;

      if (v10 == a1 && v12 == a2)
      {
        break;
      }

      v14 = sub_1BA4A8338();
      swift_unknownObjectRelease();

      if (v14)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v6++, 1))
      {
        goto LABEL_24;
      }
    }

    swift_unknownObjectRelease();
LABEL_21:
  }

  return v6;
}

void sub_1BA020F00()
{
  v1 = qword_1EDC84AD8;
  swift_beginAccess();
  v2 = [*(v0 + v1) sections];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_1BA024D28();
  v4 = sub_1BA4A6B08();

  if (v4 >> 62)
  {
    v5 = sub_1BA4A7CC8();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_13:

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFAF2860](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      ++v6;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0x6E6F69746365733CLL, 0xEA0000000000203ALL);
      sub_1BA4A7FB8();
      MEMORY[0x1BFAF1350](0x203A746E756F6320, 0xE800000000000000);
      [v7 numberOfObjects];
      v8 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v8);

      MEMORY[0x1BFAF1350](62, 0xE100000000000000);
      MEMORY[0x1BFAF1350](0, 0xE000000000000000);
      swift_unknownObjectRelease();
    }

    while (v5 != v6);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1BA021158(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v18, v21);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v3 = sub_1BA4A2D58();
    v5 = v4;
    v6 = qword_1EDC61B88;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if (*(v7 + 16) && (, v8 = sub_1B9F24A34(v3, v5), v10 = v9, , (v10 & 1) != 0))
    {
      v11 = (*(v7 + 56) + 16 * v8);
      v13 = *v11;
      v12 = v11[1];
    }

    else
    {

      v13 = 0;
      v12 = 0;
    }

    __swift_project_boxed_opaque_existential_1(v21, v22);
    v15 = sub_1BA4A2E58();
    if (v12)
    {
      if (v13 == v15 && v12 == v16)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_1BA4A8338();
      }
    }

    else
    {
      v14 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B9F7B644(v18);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1BA021354(uint64_t a1)
{
  sub_1B9F12538();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return sub_1B9F17734(v6);
}

uint64_t FetchedResultsControllerDataSource.identifier.getter()
{
  v0 = sub_1B9F37B3C();

  return v0;
}

id sub_1BA02148C(void *a1)
{
  v1 = a1;
  sub_1BA0214F4();

  v2 = sub_1BA4A6758();

  return v2;
}

uint64_t sub_1BA0214F4()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000024, 0x80000001BA4E4380);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4E43B0);
  v6 = type metadata accessor for FetchedResultsControllerDataSource(0, *((v4 & v2) + 0x50), *((v4 & v2) + 0x58), v5);
  SnapshotDataSource.numberOfSections.getter(v6, &protocol witness table for FetchedResultsControllerDataSource<A>);
  v7 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v7);

  MEMORY[0x1BFAF1350](0x6669746E65644920, 0xED0000203A726569);
  MEMORY[0x1BFAF1350](*(v1 + qword_1EDC84AD0), *(v1 + qword_1EDC84AD0 + 8));
  MEMORY[0x1BFAF1350](0x6163696465727020, 0xEC000000203A6574);
  v8 = qword_1EDC84AD8;
  swift_beginAccess();
  v9 = [*(v1 + v8) fetchRequest];
  [v9 predicate];

  sub_1BA0253B4(0, &qword_1EDC6B628, &qword_1EDC6B630, 0x1E696AE18, sub_1B9F0ADF8);
  v10 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v10);

  v11 = MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  v12 = (*((*v3 & *v1) + 0x140))(v11);
  MEMORY[0x1BFAF1350](v12);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

id FetchedResultsControllerDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FetchedResultsControllerDataSource.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FetchedResultsControllerDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1BA0218E0(uint64_t a1)
{
  v2 = qword_1EDC84AC8;
  sub_1B9F12538();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

void *sub_1BA021A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  a6(0, a3, a4, a5);
  v8 = swift_allocObject();
  v9 = _swift_stdlib_malloc_size(v8);
  result = v8;
  v12 = v9 - 32;
  v11 = v9 < 32;
  v13 = v9 - 17;
  if (!v11)
  {
    v13 = v12;
  }

  v8[2] = a1;
  v8[3] = 2 * (v13 >> 4);
  return result;
}

void *sub_1BA021AD0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B9F1C094(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1BA021B74(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BA025234(0, &qword_1EBBEA600, &qword_1EBBEAAE0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1BA021C8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B9F25C90(0, a3, a4, MEMORY[0x1E69E6F90]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BA021DA0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BA025234(0, &qword_1EBBEA698, &qword_1EBBEA6A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_1BA021E7C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BA4A8488();
  sub_1BA4A68C8();
  v6 = sub_1BA4A84D8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1BA4A8338() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BA0E4A50();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1BA022A90(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1BA021FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BA4A3A28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B9F51E1C(&qword_1EBBEA610, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
  v32 = a1;
  v11 = sub_1BA4A6698();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      sub_1B9F51E1C(&qword_1EBBEA620, MEMORY[0x1E69A3910], MEMORY[0x1E69A3920]);
      v20 = sub_1BA4A6728();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BA0E4EA8();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    sub_1BA022F1C(v14, MEMORY[0x1E69A3910], &qword_1EBBEA610, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_1BA0222A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BA4A8488();
  if (*(a1 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  v11 = sub_1BA4A84D8();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v24 = v2;
    v25 = v5;
    v26 = a2;
    v14 = ~v12;
    v15 = *(v6 + 72);
    while (1)
    {
      v16 = v15 * v13;
      sub_1BA025290(*(v10 + 48) + v15 * v13, v9);
      v17 = _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV2eeoiySbAC_ACtFZ_0(v9, a1);
      sub_1BA0252F4(v9);
      if (v17)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v18 = 1;
        v5 = v25;
        a2 = v26;
        return (*(v6 + 56))(a2, v18, 1, v5);
      }
    }

    v19 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v27 = *v19;
    v5 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BA0E4BA0();
      v21 = v27;
    }

    v22 = *(v21 + 48) + v16;
    a2 = v26;
    sub_1BA025350(v22, v26);
    sub_1BA022C54(v13);
    v18 = 0;
    *v19 = v27;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}