uint64_t sub_1BA440078(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v8 = sub_1BA4A3EA8();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F428(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SummarySharingOnboardingError(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v45 - v22;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v45 - v27;
  v29 = *(a5 + 56);
  v47 = a4;
  v29(a4, a5, v26);
  sub_1BA44446C(a1, v14, sub_1BA02F428);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v30 = sub_1BA02F428;
    v31 = v14;
  }

  else
  {
    sub_1BA2CDF68(v14, v28);
    v32 = v48;
    sub_1BA4A3DD8();
    sub_1BA44446C(v28, v23, type metadata accessor for SummarySharingOnboardingError);
    v33 = sub_1BA4A3E88();
    v34 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52 = v46;
      *v35 = 136315394;
      v36 = sub_1BA4A85D8();
      v38 = sub_1B9F0B82C(v36, v37, &v52);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      sub_1BA44446C(v23, v19, type metadata accessor for SummarySharingOnboardingError);
      v39 = sub_1BA4A6828();
      v41 = v40;
      sub_1BA444404(v23, type metadata accessor for SummarySharingOnboardingError);
      v42 = sub_1B9F0B82C(v39, v41, &v52);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_1B9F07000, v33, v34, "[%s] Received error when presenting onboarding flow: %s", v35, 0x16u);
      v43 = v46;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
    }

    else
    {

      sub_1BA444404(v23, type metadata accessor for SummarySharingOnboardingError);
    }

    (*(v49 + 8))(v32, v50);
    sub_1BA0C6BA4(v51, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);
    v30 = type metadata accessor for SummarySharingOnboardingError;
    v31 = v28;
  }

  return sub_1BA444404(v31, v30);
}

double sub_1BA4404D8(int a1, int a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, int a8, char a9, uint64_t a10, uint64_t a11)
{
  v40 = a8;
  v41 = a6;
  v42 = a3;
  v43 = a1;
  v44 = a2;
  v13 = a11;
  v14 = sub_1BA4A3EA8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FC8();
  v21 = os_log_type_enabled(v19, v20);
  v45 = a10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v38 = a7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v39 = a4;
    v25 = v24;
    v46 = v24;
    *v23 = 136315650;
    v26 = sub_1BA4A85D8();
    v28 = sub_1B9F0B82C(v26, v27, &v46);
    v37 = v14;
    v29 = v28;

    *(v23 + 4) = v29;
    v13 = a11;
    *(v23 + 12) = 1024;
    v31 = v43;
    v30 = v44;
    *(v23 + 14) = v43 & 1;
    *(v23 + 18) = 1024;
    *(v23 + 20) = v30 & 1;
    _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] iCloud sync eligible: %{BOOL}d, less than sharing limit: %{BOOL}d", v23, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v32 = v25;
    a4 = v39;
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    v33 = v23;
    a7 = v38;
    MEMORY[0x1BFAF43A0](v33, -1, -1);

    (*(v15 + 8))(v18, v37);
    v34 = v30;
    if ((v31 & 1) == 0)
    {
      return static SummarySharingOnboardingErrorHandling.displayGenericError(on:title:completion:)(a4, 0xD00000000000001ALL, 0x80000001BA4FB630, 0, 0, v45);
    }
  }

  else
  {

    (*(v15 + 8))(v18, v14);
    v34 = v44;
    if ((v43 & 1) == 0)
    {
      return static SummarySharingOnboardingErrorHandling.displayGenericError(on:title:completion:)(a4, 0xD00000000000001ALL, 0x80000001BA4FB630, 0, 0, v45);
    }
  }

  if (v34)
  {
    SummarySharingOnboardingPresenting.presentOnboardingVC(on:healthStore:healthExperienceStore:isInfoTile:needsOnboardingSetup:isPresentedViaLink:)(a4, v41, a7, v40 & 1, v42 & 1, a9 & 1, v45, v13);
    return result;
  }

  return static SummarySharingOnboardingErrorHandling.displayGenericError(on:title:completion:)(a4, 0xD00000000000001ALL, 0x80000001BA4FB630, 0, 0, v45);
}

void SummarySharingOnboardingPresenting.presentOnboardingVC(on:healthStore:healthExperienceStore:isInfoTile:needsOnboardingSetup:isPresentedViaLink:)(void *a1, void *a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 16))(&v32, a7, a8);
  if (a6)
  {
    v15 = 2;
    LOBYTE(v32) = 2;
  }

  else
  {
    v15 = v32;
  }

  v16 = (*(a8 + 64))(a2, a7, a8);
  v17 = (*(a8 + 72))(a2, a7, a8);
  v29 = a3;
  v18 = (*(a8 + 88))(a2, a3, a7, a8);
  v19 = (*(a8 + 80))(a7, a8);
  LOBYTE(v31[0]) = v15;
  type metadata accessor for SummarySharingSelectionFlowContext();
  swift_allocObject();
  v20 = sub_1B9FF2A10(v16, v17, v18, v19, v31, a4 & 1, a4 & 1u & a5);

  if (a5)
  {
    if (a4)
    {
      sub_1B9F0A534(v29, v31);
      v21 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingSettingUpViewController());

      v22 = a2;
      v23 = sub_1BA2B2378(v31, v22, v20);
      goto LABEL_11;
    }

LABEL_10:
    sub_1B9F0A534(v29, v31);
    v25 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingInfoViewController());

    v22 = a2;
    v23 = sub_1BA294B44(v31, v22, v20);
    goto LABEL_11;
  }

  *(v20 + 72) = 1;
  if ((a4 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
  if (sub_1BA4A7028())
  {
    sub_1B9F0A534(v29, v31);
    v24 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController(0));

    v22 = a2;
    v23 = sub_1BA202D18(v22, v31, v20);
  }

  else
  {
    sub_1B9F0A534(v29, v31);
    v28 = objc_allocWithZone(type metadata accessor for SummarySharingSystemContactsPickerViewController());

    v22 = a2;
    v23 = sub_1BA1F1518(v22, v31, v20);
  }

LABEL_11:
  v26 = v23;

  v27 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v27 setModalInPresentation_];
  [a1 presentViewController:v27 animated:1 completion:0];
}

uint64_t sub_1BA440AA8()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = ObjectType;
  sub_1BA2CDCF0(0);
  swift_allocObject();
  v3 = v0;
  return sub_1BA4A4EA8();
}

uint64_t sub_1BA440B30@<X0>(void **a1@<X0>, uint64_t *a3@<X8>)
{
  sub_1BA2CDE2C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BA4A3EA8();
  v11 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1BA4A3DD8();
  v16 = v15;
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = v7;
    v22 = v21;
    v40 = v21;
    *v20 = 136315394;
    v23 = sub_1BA4A85D8();
    v25 = sub_1B9F0B82C(v23, v24, &v40);
    v37 = a3;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v39 = v15;
    v27 = v15;
    sub_1B9FED358();
    v28 = sub_1BA4A6828();
    v30 = sub_1B9F0B82C(v28, v29, &v40);

    *(v20 + 14) = v30;
    a3 = v37;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Received error when fetching suggested categories: %s", v20, 0x16u);
    swift_arrayDestroy();
    v31 = v22;
    v7 = v35;
    MEMORY[0x1BFAF43A0](v31, -1, -1);
    v32 = v20;
    v6 = v36;
    MEMORY[0x1BFAF43A0](v32, -1, -1);
  }

  (*(v11 + 8))(v14, v38);
  v40 = &unk_1F37FDB78;
  sub_1BA4444E4(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  sub_1BA4A4E78();
  sub_1BA44350C(&qword_1EBBF0160, sub_1BA2CDE2C, MEMORY[0x1E695C008]);
  v33 = sub_1BA4A4F98();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v33;
  return result;
}

void *sub_1BA440E84@<X0>(char **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  sub_1BA43ED80(&v4);
  result = v4;
  if (!*(v4 + 2))
  {

    result = &unk_1F37FDBA0;
  }

  *a2 = result;
  return result;
}

void sub_1BA440F00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a4;
  v11[4] = sub_1BA4443F8;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BA454240;
  v11[3] = &block_descriptor_122;
  v9 = _Block_copy(v11);
  v10 = a3;

  [v10 fetchSharingEntriesWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1BA440FF4(char a1, void *a2, void *a3, char **a4, uint64_t a5, uint64_t a6)
{
  v50 = a5;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v10, v12).n128_u64[0];
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_1BA4A3E58();
    v24 = a2;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49 = a4;
      v29 = v28;
      v52 = v28;
      *v27 = 136315394;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, &v52);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v51 = a2;
      v33 = a2;
      sub_1B9F3D7EC(0, &qword_1EDC6B3E0, sub_1B9FED358, MEMORY[0x1E69E6720]);
      v34 = sub_1BA4A6828();
      v36 = sub_1B9F0B82C(v34, v35, &v52);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%s] Failed to get analytics data for sharing entries: %s", v27, 0x16u);
      swift_arrayDestroy();
      v37 = v29;
      a4 = v49;
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    v52 = 0;
    v53 = 2;
    return (a4)(&v52);
  }

  v16 = [a3 sharingEntries];
  sub_1B9F0ADF8(0, &qword_1EBBE9FC0, 0x1E696C4E8);
  v17 = sub_1BA4A6B08();

  v52 = MEMORY[0x1E69E7CC0];
  if (v17 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
  {
    v19 = MEMORY[0x1E69E7CC0];
    v49 = a4;
    if (i)
    {
      v20 = 0;
      a4 = (v17 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1BFAF2860](v20, v17);
        }

        else
        {
          if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v21 = *(v17 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if ([v21 direction])
        {
        }

        else
        {
          sub_1BA4A7ED8();
          sub_1BA4A7F18();
          sub_1BA4A7F28();
          sub_1BA4A7EE8();
        }

        ++v20;
        if (v23 == i)
        {
          v38 = v52;
          a4 = v49;
          v19 = MEMORY[0x1E69E7CC0];
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v38 = MEMORY[0x1E69E7CC0];
LABEL_20:

    v52 = v19;
    v39 = v38 < 0 || (v38 & 0x4000000000000000) != 0;
    if (!v39)
    {
      v17 = *(v38 + 16);
      if (!v17)
      {
        break;
      }

      goto LABEL_25;
    }

    v17 = sub_1BA4A7CC8();
    if (!v17)
    {
      break;
    }

LABEL_25:
    v40 = 0;
    a4 = &selRef_preferredContentSizeCategory;
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1BFAF2860](v40, v38);
      }

      else
      {
        if (v40 >= *(v38 + 16))
        {
          goto LABEL_41;
        }

        v41 = *(v38 + 8 * v40 + 32);
      }

      v42 = v41;
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ([v41 status] == 1 || !objc_msgSend(v42, sel_status))
      {
        sub_1BA4A7ED8();
        sub_1BA4A7F18();
        sub_1BA4A7F28();
        sub_1BA4A7EE8();
      }

      else
      {
      }

      ++v40;
      if (v43 == v17)
      {
        v44 = v52;
        a4 = v49;
        if ((v52 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_48;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v44 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_45:
    if ((v44 & 0x4000000000000000) == 0)
    {
      v45 = *(v44 + 16);

      if (v39)
      {
        goto LABEL_47;
      }

LABEL_49:
      v46 = *(v38 + 16);
      goto LABEL_50;
    }
  }

LABEL_48:
  v45 = sub_1BA4A7CC8();

  if (!v39)
  {
    goto LABEL_49;
  }

LABEL_47:
  v46 = sub_1BA4A7CC8();
LABEL_50:

  v52 = v45;
  v53 = v46 == 0;
  return (a4)(&v52);
}

void sub_1BA441510(void (*a1)(__int128 *), uint64_t a2, void *a3)
{
  if (HKImproveHealthAndActivityAnalyticsAllowed())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11 = sub_1BA444464;
    v12 = v6;
    *&v8 = MEMORY[0x1E69E9820];
    *(&v8 + 1) = 1107296256;
    v9 = sub_1BA0B06D4;
    v10 = &block_descriptor_18;
    v7 = _Block_copy(&v8);

    [a3 hk:v7 fetchExistingDemographicInformationWithCompletion:?];
    _Block_release(v7);
  }

  else
  {
    v8 = xmmword_1BA4BC920;
    v9 = 0;
    LOWORD(v10) = 1;
    BYTE2(v10) = 0;
    a1(&v8);
  }
}

uint64_t sub_1BA441628(void *a1, uint64_t (*a2)(void *))
{
  v4 = sub_1BA4A1148();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v4, v6).n128_u64[0];
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 dateOfBirthComponents];
  sub_1BA4A1108();

  v11 = [a1 biologicalSexObject];
  v12 = [v11 biologicalSex];

  v13 = sub_1BA3C58A4(v9);
  v15 = v14;
  (*(v5 + 8))(v9, v4);
  v17[0] = v13;
  v17[1] = v15 & 1;
  v17[2] = v12;
  v18 = 256;
  v19 = 0;
  return a2(v17);
}

void sub_1BA44178C(void (*a1)(__int128 *))
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 getActivePairedDevice];

    if (v4)
    {
      if ([v4 valueForProperty_])
      {
        sub_1BA4A7BF8();
        swift_unknownObjectRelease();
      }

      else
      {
        v6 = 0u;
        v7 = 0u;
      }

      v8 = v6;
      v9 = v7;
      if (*(&v7 + 1))
      {
        if (swift_dynamicCast())
        {
          v8 = v5;
          LOBYTE(v9) = 0;
          a1(&v8);

          return;
        }
      }

      else
      {

        sub_1B9F0E040(&v8, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA4444E4);
      }
    }

    v8 = xmmword_1BA4DBFF0;
    LOBYTE(v9) = 0;
    a1(&v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA441920(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BA4A82B8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1BA441CC0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BA441A18(0, v2, 1, a1);
  }
}

void sub_1BA441A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v7 = *a4;
    if (qword_1EBBE8700 != -1)
    {
      swift_once();
    }

    do
    {
      swift_beginAccess();
      v8 = *(v7 + v4);
      v9 = v4;
LABEL_7:
      v10 = *(off_1EBBEFA40 + 2);
      if (v10)
      {
        v11 = 0;
        v12 = v9 - 1;
        v13 = *(v7 + v9 - 1);
        v14 = off_1EBBEFA40 + 32;
        do
        {
          v15 = v14[v11];
          v16 = v15 >> 6;
          if (v15 >> 6 > 1)
          {
            if (v16 == 3)
            {
              if (v15 == 192)
              {
                if (v8 == 192)
                {
                  goto LABEL_36;
                }
              }

              else if (v15 == 193)
              {
                if (v8 == 193)
                {
                  goto LABEL_36;
                }
              }

              else if (v8 == 194)
              {
                goto LABEL_36;
              }
            }

            else if (v14[v11] > 0x81u)
            {
              if (v15 == 130)
              {
                if (v8 == 130)
                {
                  goto LABEL_36;
                }
              }

              else if (v8 == 131)
              {
                goto LABEL_36;
              }
            }

            else if (v15 == 128)
            {
              if (v8 == 128)
              {
                goto LABEL_36;
              }
            }

            else if (v8 == 129)
            {
              goto LABEL_36;
            }
          }

          else if (v16)
          {
            if ((v8 & 0xC0) == 0x40 && ((v15 ^ v8) & 0x3F) == 0)
            {
LABEL_36:
              v17 = 0;
              while (v10 != v17)
              {
                v18 = v14[v17];
                v19 = v18 >> 6;
                if (v18 >> 6 > 1)
                {
                  if (v19 == 3)
                  {
                    if (v18 == 192)
                    {
                      if (v13 == 192)
                      {
                        goto LABEL_65;
                      }
                    }

                    else if (v18 == 193)
                    {
                      if (v13 == 193)
                      {
                        goto LABEL_65;
                      }
                    }

                    else if (v13 == 194)
                    {
                      goto LABEL_65;
                    }
                  }

                  else if (v14[v17] > 0x81u)
                  {
                    if (v18 == 130)
                    {
                      if (v13 == 130)
                      {
                        goto LABEL_65;
                      }
                    }

                    else if (v13 == 131)
                    {
                      goto LABEL_65;
                    }
                  }

                  else if (v18 == 128)
                  {
                    if (v13 == 128)
                    {
                      goto LABEL_65;
                    }
                  }

                  else if (v13 == 129)
                  {
                    goto LABEL_65;
                  }
                }

                else if (v19)
                {
                  if ((v13 & 0xC0) == 0x40 && ((v18 ^ v13) & 0x3F) == 0)
                  {
LABEL_65:
                    if (v11 >= v17)
                    {
                      goto LABEL_5;
                    }

                    if (v7)
                    {
                      *(v7 + v9) = v13;
                      *(v7 + v12) = v8;
                      --v9;
                      if (v12 != a1)
                      {
                        goto LABEL_7;
                      }

                      goto LABEL_5;
                    }

LABEL_70:
                    __break(1u);
                    return;
                  }
                }

                else if (v13 <= 0x3F && v18 == v13)
                {
                  goto LABEL_65;
                }

                if (v10 == ++v17)
                {
                  goto LABEL_5;
                }
              }

              __break(1u);
              goto LABEL_70;
            }
          }

          else if (v8 <= 0x3F && v15 == v8)
          {
            goto LABEL_36;
          }

          ++v11;
        }

        while (v10 != v11);
      }

LABEL_5:
      ++v4;
    }

    while (v4 != a2);
  }
}

void sub_1BA441CC0(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v5 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_215;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore;
LABEL_4:
  v11 = v8++;
  if (v8 >= v7)
  {
    goto LABEL_88;
  }

  v12 = *a3;
  v13 = v11;
  v14 = v8[*a3];
  v106 = v13;
  v15 = *(*a3 + v13);
  if (qword_1EBBE8700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = off_1EBBEFA40;
  v17 = sub_1B9FEE484(v14, off_1EBBEFA40);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v20 = v17 < sub_1B9FEE484(v15, v16);
    v19 = (v21 & 1) == 0 && v20;
  }

  v10 = &OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore;
  v11 = v106;
  v22 = (v106 + 2);
  if (v106 + 2 >= v7)
  {
LABEL_75:
    v8 = v22;
    if (v19)
    {
      goto LABEL_78;
    }

    goto LABEL_88;
  }

  v23 = v16[2];
  v24 = (v16 + 4);
  v25 = v8[v12];
LABEL_16:
  v26 = v22[v12];
  if (v23)
  {
    for (i = 0; v23 != i; ++i)
    {
      v28 = v24[i];
      v29 = v28 >> 6;
      if (v28 >> 6 > 1)
      {
        if (v29 == 3)
        {
          if (v28 == 192)
          {
            if (v26 == 192)
            {
              goto LABEL_45;
            }
          }

          else if (v28 == 193)
          {
            if (v26 == 193)
            {
              goto LABEL_45;
            }
          }

          else if (v26 == 194)
          {
            goto LABEL_45;
          }
        }

        else if (v24[i] > 0x81u)
        {
          if (v28 == 130)
          {
            if (v26 == 130)
            {
              goto LABEL_45;
            }
          }

          else if (v26 == 131)
          {
            goto LABEL_45;
          }
        }

        else if (v28 == 128)
        {
          if (v26 == 128)
          {
            goto LABEL_45;
          }
        }

        else if (v26 == 129)
        {
          goto LABEL_45;
        }
      }

      else if (v29)
      {
        if ((v26 & 0xC0) == 0x40 && ((v28 ^ v26) & 0x3F) == 0)
        {
LABEL_45:
          v30 = 0;
          while (1)
          {
            if (v23 == v30)
            {
LABEL_227:
              __break(1u);
LABEL_228:
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
              goto LABEL_244;
            }

            v31 = v24[v30];
            v32 = v31 >> 6;
            if (v31 >> 6 > 1)
            {
              if (v32 == 3)
              {
                if (v31 == 192)
                {
                  if (v25 == 192)
                  {
                    goto LABEL_74;
                  }
                }

                else if (v31 == 193)
                {
                  if (v25 == 193)
                  {
                    goto LABEL_74;
                  }
                }

                else if (v25 == 194)
                {
                  goto LABEL_74;
                }
              }

              else if (v24[v30] > 0x81u)
              {
                if (v31 == 130)
                {
                  if (v25 == 130)
                  {
                    goto LABEL_74;
                  }
                }

                else if (v25 == 131)
                {
                  goto LABEL_74;
                }
              }

              else if (v31 == 128)
              {
                if (v25 == 128)
                {
                  goto LABEL_74;
                }
              }

              else if (v25 == 129)
              {
                goto LABEL_74;
              }
            }

            else if (v32)
            {
              if ((v25 & 0xC0) == 0x40 && ((v31 ^ v25) & 0x3F) == 0)
              {
LABEL_74:
                if (((v19 ^ (i >= v30)) & 1) == 0)
                {
                  goto LABEL_75;
                }

LABEL_15:
                ++v22;
                v25 = v26;
                if (v22 != v7)
                {
                  goto LABEL_16;
                }

                v22 = v7;
                v8 = v7;
                if (v19)
                {
                  goto LABEL_78;
                }

LABEL_88:
                v38 = a3[1];
                if (v8 >= v38)
                {
                  goto LABEL_164;
                }

                if (__OFSUB__(v8, v11))
                {
                  goto LABEL_245;
                }

                if (&v8[-v11] >= a4)
                {
                  goto LABEL_164;
                }

                if (__OFADD__(v11, a4))
                {
                  goto LABEL_247;
                }

                if (v11 + a4 >= v38)
                {
                  v39 = a3[1];
                }

                else
                {
                  v39 = v11 + a4;
                }

                if (v39 < v11)
                {
LABEL_248:
                  __break(1u);
                  goto LABEL_249;
                }

                if (v8 == v39)
                {
                  goto LABEL_164;
                }

                v40 = *a3;
                if (qword_1EBBE8700 != -1)
                {
                  swift_once();
                }

LABEL_100:
                swift_beginAccess();
                v41 = v8[v40];
                v42 = v8;
LABEL_101:
                v43 = v10[328];
                v44 = *(v43 + 16);
                if (!v44)
                {
                  goto LABEL_99;
                }

                v45 = 0;
                v46 = v42 - 1;
                v47 = v42[v40 - 1];
                v48 = v43 + 32;
                while (1)
                {
                  v49 = *(v48 + v45);
                  v50 = v49 >> 6;
                  if (v49 >> 6 > 1)
                  {
                    if (v50 == 3)
                    {
                      if (v49 == 192)
                      {
                        if (v41 == 192)
                        {
                          goto LABEL_130;
                        }
                      }

                      else if (v49 == 193)
                      {
                        if (v41 == 193)
                        {
                          goto LABEL_130;
                        }
                      }

                      else if (v41 == 194)
                      {
                        goto LABEL_130;
                      }
                    }

                    else if (*(v48 + v45) > 0x81u)
                    {
                      if (v49 == 130)
                      {
                        if (v41 == 130)
                        {
                          goto LABEL_130;
                        }
                      }

                      else if (v41 == 131)
                      {
                        goto LABEL_130;
                      }
                    }

                    else if (v49 == 128)
                    {
                      if (v41 == 128)
                      {
                        goto LABEL_130;
                      }
                    }

                    else if (v41 == 129)
                    {
                      goto LABEL_130;
                    }
                  }

                  else if (v50)
                  {
                    if ((v41 & 0xC0) == 0x40 && ((v49 ^ v41) & 0x3F) == 0)
                    {
LABEL_130:
                      v51 = 0;
                      while (1)
                      {
                        if (v44 == v51)
                        {
                          __break(1u);
                          goto LABEL_227;
                        }

                        v52 = *(v48 + v51);
                        v53 = v52 >> 6;
                        if (v52 >> 6 > 1)
                        {
                          if (v53 == 3)
                          {
                            if (v52 == 192)
                            {
                              if (v47 == 192)
                              {
                                goto LABEL_159;
                              }
                            }

                            else if (v52 == 193)
                            {
                              if (v47 == 193)
                              {
                                goto LABEL_159;
                              }
                            }

                            else if (v47 == 194)
                            {
                              goto LABEL_159;
                            }
                          }

                          else if (*(v48 + v51) > 0x81u)
                          {
                            if (v52 == 130)
                            {
                              if (v47 == 130)
                              {
                                goto LABEL_159;
                              }
                            }

                            else if (v47 == 131)
                            {
                              goto LABEL_159;
                            }
                          }

                          else if (v52 == 128)
                          {
                            if (v47 == 128)
                            {
                              goto LABEL_159;
                            }
                          }

                          else if (v47 == 129)
                          {
                            goto LABEL_159;
                          }
                        }

                        else if (v53)
                        {
                          if ((v47 & 0xC0) == 0x40 && ((v52 ^ v47) & 0x3F) == 0)
                          {
LABEL_159:
                            if (v45 >= v51)
                            {
                              goto LABEL_99;
                            }

                            if (!v40)
                            {
                              goto LABEL_253;
                            }

                            v42[v40] = v47;
                            v46[v40] = v41;
                            --v42;
                            if (v46 == v11)
                            {
LABEL_99:
                              if (++v8 != v39)
                              {
                                goto LABEL_100;
                              }

                              v8 = v39;
LABEL_164:
                              if (v8 >= v11)
                              {
                                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                {
                                  v9 = sub_1BA27F470(0, *(v9 + 2) + 1, 1, v9);
                                }

                                v55 = *(v9 + 2);
                                v54 = *(v9 + 3);
                                v56 = v55 + 1;
                                if (v55 >= v54 >> 1)
                                {
                                  v9 = sub_1BA27F470((v54 > 1), v55 + 1, 1, v9);
                                }

                                *(v9 + 2) = v56;
                                v57 = &v9[16 * v55];
                                *(v57 + 4) = v11;
                                *(v57 + 5) = v8;
                                v58 = *a1;
                                if (!*a1)
                                {
                                  goto LABEL_254;
                                }

                                if (v55)
                                {
                                  while (2)
                                  {
                                    v59 = v56 - 1;
                                    if (v56 >= 4)
                                    {
                                      v64 = &v9[16 * v56 + 32];
                                      v65 = *(v64 - 64);
                                      v66 = *(v64 - 56);
                                      v70 = __OFSUB__(v66, v65);
                                      v67 = v66 - v65;
                                      if (v70)
                                      {
                                        goto LABEL_231;
                                      }

                                      v69 = *(v64 - 48);
                                      v68 = *(v64 - 40);
                                      v70 = __OFSUB__(v68, v69);
                                      v62 = v68 - v69;
                                      v63 = v70;
                                      if (v70)
                                      {
                                        goto LABEL_232;
                                      }

                                      v71 = &v9[16 * v56];
                                      v73 = *v71;
                                      v72 = *(v71 + 1);
                                      v70 = __OFSUB__(v72, v73);
                                      v74 = v72 - v73;
                                      if (v70)
                                      {
                                        goto LABEL_234;
                                      }

                                      v70 = __OFADD__(v62, v74);
                                      v75 = v62 + v74;
                                      if (v70)
                                      {
                                        goto LABEL_237;
                                      }

                                      if (v75 >= v67)
                                      {
                                        v93 = &v9[16 * v59 + 32];
                                        v95 = *v93;
                                        v94 = *(v93 + 1);
                                        v70 = __OFSUB__(v94, v95);
                                        v96 = v94 - v95;
                                        if (v70)
                                        {
                                          goto LABEL_241;
                                        }

                                        if (v62 < v96)
                                        {
                                          v59 = v56 - 2;
                                        }
                                      }

                                      else
                                      {
LABEL_184:
                                        if (v63)
                                        {
                                          goto LABEL_233;
                                        }

                                        v76 = &v9[16 * v56];
                                        v78 = *v76;
                                        v77 = *(v76 + 1);
                                        v79 = __OFSUB__(v77, v78);
                                        v80 = v77 - v78;
                                        v81 = v79;
                                        if (v79)
                                        {
                                          goto LABEL_236;
                                        }

                                        v82 = &v9[16 * v59 + 32];
                                        v84 = *v82;
                                        v83 = *(v82 + 1);
                                        v70 = __OFSUB__(v83, v84);
                                        v85 = v83 - v84;
                                        if (v70)
                                        {
                                          goto LABEL_239;
                                        }

                                        if (__OFADD__(v80, v85))
                                        {
                                          goto LABEL_240;
                                        }

                                        if (v80 + v85 < v62)
                                        {
                                          goto LABEL_198;
                                        }

                                        if (v62 < v85)
                                        {
                                          v59 = v56 - 2;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      if (v56 == 3)
                                      {
                                        v60 = *(v9 + 4);
                                        v61 = *(v9 + 5);
                                        v70 = __OFSUB__(v61, v60);
                                        v62 = v61 - v60;
                                        v63 = v70;
                                        goto LABEL_184;
                                      }

                                      v86 = &v9[16 * v56];
                                      v88 = *v86;
                                      v87 = *(v86 + 1);
                                      v70 = __OFSUB__(v87, v88);
                                      v80 = v87 - v88;
                                      v81 = v70;
LABEL_198:
                                      if (v81)
                                      {
                                        goto LABEL_235;
                                      }

                                      v89 = &v9[16 * v59];
                                      v91 = *(v89 + 4);
                                      v90 = *(v89 + 5);
                                      v70 = __OFSUB__(v90, v91);
                                      v92 = v90 - v91;
                                      if (v70)
                                      {
                                        goto LABEL_238;
                                      }

                                      if (v92 < v80)
                                      {
                                        break;
                                      }
                                    }

                                    v97 = v59 - 1;
                                    if (v59 - 1 >= v56)
                                    {
                                      goto LABEL_228;
                                    }

                                    if (!*a3)
                                    {
                                      __break(1u);
                                      goto LABEL_251;
                                    }

                                    v98 = *&v9[16 * v97 + 32];
                                    v99 = *&v9[16 * v59 + 40];
                                    sub_1BA442688((*a3 + v98), (*a3 + *&v9[16 * v59 + 32]), *a3 + v99, v58);
                                    if (v5)
                                    {
                                      goto LABEL_225;
                                    }

                                    if (v99 < v98)
                                    {
                                      goto LABEL_229;
                                    }

                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v9 = sub_1BA442D80(v9);
                                    }

                                    if (v97 >= *(v9 + 2))
                                    {
                                      goto LABEL_230;
                                    }

                                    v100 = &v9[16 * v97];
                                    *(v100 + 4) = v98;
                                    *(v100 + 5) = v99;
                                    sub_1BA442CF4(v59);
                                    v56 = *(v9 + 2);
                                    if (v56 <= 1)
                                    {
                                      break;
                                    }

                                    continue;
                                  }
                                }

                                v7 = a3[1];
                                v10 = &OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore;
                                if (v8 < v7)
                                {
                                  goto LABEL_4;
                                }

LABEL_215:
                                v8 = *a1;
                                if (!*a1)
                                {
                                  goto LABEL_255;
                                }

                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
LABEL_217:
                                  v101 = *(v9 + 2);
                                  if (v101 >= 2)
                                  {
                                    while (*a3)
                                    {
                                      v102 = *&v9[16 * v101];
                                      v103 = *&v9[16 * v101 + 24];
                                      sub_1BA442688((*a3 + v102), (*a3 + *&v9[16 * v101 + 16]), *a3 + v103, v8);
                                      if (v5)
                                      {
                                        goto LABEL_225;
                                      }

                                      if (v103 < v102)
                                      {
                                        goto LABEL_242;
                                      }

                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v9 = sub_1BA442D80(v9);
                                      }

                                      if (v101 - 2 >= *(v9 + 2))
                                      {
                                        goto LABEL_243;
                                      }

                                      v104 = &v9[16 * v101];
                                      *v104 = v102;
                                      *(v104 + 1) = v103;
                                      sub_1BA442CF4(v101 - 1);
                                      v101 = *(v9 + 2);
                                      if (v101 <= 1)
                                      {
                                        goto LABEL_225;
                                      }
                                    }

                                    goto LABEL_252;
                                  }

LABEL_225:

                                  return;
                                }

LABEL_249:
                                v9 = sub_1BA442D80(v9);
                                goto LABEL_217;
                              }

LABEL_244:
                              __break(1u);
LABEL_245:
                              __break(1u);
LABEL_246:
                              __break(1u);
LABEL_247:
                              __break(1u);
                              goto LABEL_248;
                            }

                            goto LABEL_101;
                          }
                        }

                        else if (v47 <= 0x3F && v52 == v47)
                        {
                          goto LABEL_159;
                        }

                        if (v44 == ++v51)
                        {
                          goto LABEL_99;
                        }
                      }
                    }
                  }

                  else if (v41 <= 0x3F && v49 == v41)
                  {
                    goto LABEL_130;
                  }

                  if (v44 == ++v45)
                  {
                    goto LABEL_99;
                  }
                }
              }
            }

            else if (v25 <= 0x3F && v31 == v25)
            {
              goto LABEL_74;
            }

            if (v23 == ++v30)
            {
              goto LABEL_14;
            }
          }
        }
      }

      else if (v26 <= 0x3F && v28 == v26)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_14:
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_78:
  if (v22 < v106)
  {
    goto LABEL_246;
  }

  if (v106 >= v22)
  {
LABEL_87:
    v8 = v22;
    goto LABEL_88;
  }

  v33 = v22 - 1;
  v34 = v106;
  while (1)
  {
    if (v34 == v33)
    {
      goto LABEL_82;
    }

    v37 = *a3;
    if (!*a3)
    {
      break;
    }

    v35 = v34[v37];
    v34[v37] = v33[v37];
    v33[v37] = v35;
LABEL_82:
    if (++v34 >= v33--)
    {
      goto LABEL_87;
    }
  }

LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
}

void sub_1BA442688(unsigned __int8 *__src, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < (a3 - a2))
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        do
        {
          v11 = *v6;
          v12 = *v4;
          if (qword_1EBBE8700 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v13 = *(off_1EBBEFA40 + 2);
          if (v13)
          {
            v14 = 0;
            v15 = off_1EBBEFA40 + 32;
            do
            {
              v16 = v15[v14];
              v17 = v16 >> 6;
              if (v16 >> 6 > 1)
              {
                if (v17 == 3)
                {
                  if (v16 == 192)
                  {
                    if (v11 == 192)
                    {
                      goto LABEL_38;
                    }
                  }

                  else if (v16 == 193)
                  {
                    if (v11 == 193)
                    {
                      goto LABEL_38;
                    }
                  }

                  else if (v11 == 194)
                  {
                    goto LABEL_38;
                  }
                }

                else if (v15[v14] > 0x81u)
                {
                  if (v16 == 130)
                  {
                    if (v11 == 130)
                    {
                      goto LABEL_38;
                    }
                  }

                  else if (v11 == 131)
                  {
                    goto LABEL_38;
                  }
                }

                else if (v16 == 128)
                {
                  if (v11 == 128)
                  {
                    goto LABEL_38;
                  }
                }

                else if (v11 == 129)
                {
                  goto LABEL_38;
                }
              }

              else if (v17)
              {
                if ((v11 & 0xC0) == 0x40 && ((v16 ^ v11) & 0x3F) == 0)
                {
LABEL_38:
                  v18 = 0;
                  while (1)
                  {
                    if (v13 == v18)
                    {
                      __break(1u);
                      goto LABEL_171;
                    }

                    v19 = v15[v18];
                    v20 = v19 >> 6;
                    if (v19 >> 6 > 1)
                    {
                      if (v20 == 3)
                      {
                        if (v19 == 192)
                        {
                          if (v12 == 192)
                          {
                            goto LABEL_67;
                          }
                        }

                        else if (v19 == 193)
                        {
                          if (v12 == 193)
                          {
                            goto LABEL_67;
                          }
                        }

                        else if (v12 == 194)
                        {
                          goto LABEL_67;
                        }
                      }

                      else if (v15[v18] > 0x81u)
                      {
                        if (v19 == 130)
                        {
                          if (v12 == 130)
                          {
                            goto LABEL_67;
                          }
                        }

                        else if (v12 == 131)
                        {
                          goto LABEL_67;
                        }
                      }

                      else if (v19 == 128)
                      {
                        if (v12 == 128)
                        {
                          goto LABEL_67;
                        }
                      }

                      else if (v12 == 129)
                      {
                        goto LABEL_67;
                      }
                    }

                    else if (v20)
                    {
                      if ((v12 & 0xC0) == 0x40 && ((v19 ^ v12) & 0x3F) == 0)
                      {
LABEL_67:
                        if (v14 >= v18)
                        {
                          goto LABEL_71;
                        }

                        v21 = v6 + 1;
                        v22 = v6;
                        if (v7 < v6 || v7 >= v21)
                        {
                          goto LABEL_75;
                        }

                        goto LABEL_76;
                      }
                    }

                    else if (v12 <= 0x3F && v19 == v12)
                    {
                      goto LABEL_67;
                    }

                    if (v13 == ++v18)
                    {
                      goto LABEL_71;
                    }
                  }
                }
              }

              else if (v11 <= 0x3F && v16 == v11)
              {
                goto LABEL_38;
              }

              ++v14;
            }

            while (v13 != v14);
          }

LABEL_71:
          v23 = v4 + 1;
          v22 = v4;
          v21 = v6;
          if (v7 < v4)
          {
            ++v4;
            goto LABEL_75;
          }

          ++v4;
          if (v7 >= v23)
          {
LABEL_75:
            *v7 = *v22;
          }

LABEL_76:
          ++v7;
          if (v4 >= v10)
          {
            break;
          }

          v6 = v21;
        }

        while (v21 < v5);
        v6 = v7;
        goto LABEL_161;
      }

      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_168;
      }

LABEL_167:
      if (v6 >= v10)
      {
        goto LABEL_168;
      }

      return;
    }

    v6 = v7;
LABEL_166:
    if (v6 != v4)
    {
      goto LABEL_168;
    }

    goto LABEL_167;
  }

  if (__dst != a2 || __dst >= a3)
  {
    memmove(__dst, a2, a3 - a2);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
    goto LABEL_166;
  }

  do
  {
    v24 = v6 - 1;
    v25 = v5;
    v26 = v10;
    __dsta = v6 - 1;
    while (1)
    {
      v28 = *--v26;
      v27 = v28;
      v29 = *v24;
      if (qword_1EBBE8700 != -1)
      {
        swift_once();
      }

      v40 = (v25 - 1);
      swift_beginAccess();
      v30 = *(off_1EBBEFA40 + 2);
      if (v30)
      {
        break;
      }

LABEL_148:
      v38 = v25-- >= v10;
      if (!v38 || v40 >= v10)
      {
        *v40 = *v26;
      }

      v10 = v26;
      v24 = v6 - 1;
      if (v26 <= v4)
      {
        v10 = v26;
LABEL_161:
        if (v6 != v4)
        {
          goto LABEL_168;
        }

        goto LABEL_167;
      }
    }

    v31 = 0;
    v32 = off_1EBBEFA40 + 32;
    while (1)
    {
      v33 = v32[v31];
      v34 = v33 >> 6;
      if (v33 >> 6 > 1)
      {
        if (v34 == 3)
        {
          if (v33 == 192)
          {
            if (v27 == 192)
            {
              goto LABEL_118;
            }
          }

          else if (v33 == 193)
          {
            if (v27 == 193)
            {
              goto LABEL_118;
            }
          }

          else if (v27 == 194)
          {
            goto LABEL_118;
          }
        }

        else if (v32[v31] > 0x81u)
        {
          if (v33 == 130)
          {
            if (v27 == 130)
            {
              goto LABEL_118;
            }
          }

          else if (v27 == 131)
          {
            goto LABEL_118;
          }
        }

        else if (v33 == 128)
        {
          if (v27 == 128)
          {
            goto LABEL_118;
          }
        }

        else if (v27 == 129)
        {
          goto LABEL_118;
        }

        goto LABEL_92;
      }

      if (v34)
      {
        break;
      }

      if (v27 <= 0x3F && v33 == v27)
      {
        goto LABEL_118;
      }

LABEL_92:
      if (v30 == ++v31)
      {
        goto LABEL_148;
      }
    }

    if ((v27 & 0xC0) != 0x40 || ((v33 ^ v27) & 0x3F) != 0)
    {
      goto LABEL_92;
    }

LABEL_118:
    v35 = 0;
    while (2)
    {
      if (v30 == v35)
      {
LABEL_171:
        __break(1u);
        return;
      }

      v36 = v32[v35];
      v37 = v36 >> 6;
      if (v36 >> 6 > 1)
      {
        if (v37 == 3)
        {
          if (v36 == 192)
          {
            if (v29 == 192)
            {
              goto LABEL_147;
            }
          }

          else if (v36 == 193)
          {
            if (v29 == 193)
            {
              goto LABEL_147;
            }
          }

          else if (v29 == 194)
          {
            goto LABEL_147;
          }
        }

        else if (v32[v35] > 0x81u)
        {
          if (v36 == 130)
          {
            if (v29 == 130)
            {
              goto LABEL_147;
            }
          }

          else if (v29 == 131)
          {
            goto LABEL_147;
          }
        }

        else if (v36 == 128)
        {
          if (v29 == 128)
          {
            goto LABEL_147;
          }
        }

        else if (v29 == 129)
        {
          goto LABEL_147;
        }

LABEL_120:
        if (v30 == ++v35)
        {
          goto LABEL_148;
        }

        continue;
      }

      break;
    }

    if (!v37)
    {
      if (v29 <= 0x3F && v36 == v29)
      {
        goto LABEL_147;
      }

      goto LABEL_120;
    }

    if ((v29 & 0xC0) != 0x40 || ((v36 ^ v29) & 0x3F) != 0)
    {
      goto LABEL_120;
    }

LABEL_147:
    if (v31 >= v35)
    {
      goto LABEL_148;
    }

    v5 = v25 - 1;
    if (v25 < v6 || v40 >= v6)
    {
      *v40 = *__dsta;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (__dsta > v7);
  v6 = __dsta;
  if (__dsta == v4)
  {
    goto LABEL_167;
  }

LABEL_168:
  memmove(v6, v4, v10 - v4);
}

uint64_t sub_1BA442CF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BA442D80(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1BA442D94(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F3D7EC(0, &qword_1EBBEF678, sub_1BA28155C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t _s18HealthExperienceUI34SummarySharingOnboardingPresentingPAAE25sharingAnalyticsPublisher3for7Combine03AnyJ0VyAA0de5SetupI9BaseEventC0e7EntriesI0VSgs5NeverOGSo13HKHealthStoreC_tF_0(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
  sub_1BA440AA8();
  sub_1BA2CDCF0(0);
  sub_1BA44350C(&qword_1EBBF0148, sub_1BA2CDCF0, MEMORY[0x1E695C038]);
  v2 = sub_1BA4A4F98();

  return v2;
}

uint64_t _s18HealthExperienceUI34SummarySharingOnboardingPresentingPAAE25userDemographicsPublisher3for7Combine03AnyJ0VyAA04UserI9AnalyticsVs5NeverOGSo13HKHealthStoreC_tF_0(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_1BA2CDDCC(0, &qword_1EBBEB540, &type metadata for UserDemographicsAnalytics);
  swift_allocObject();
  v2 = a1;
  sub_1BA4A4EA8();
  sub_1BA2CDD7C(&qword_1EBBEB548, &qword_1EBBEB540, &type metadata for UserDemographicsAnalytics);
  v3 = sub_1BA4A4F98();

  return v3;
}

uint64_t _s18HealthExperienceUI34SummarySharingOnboardingPresentingPAAE25pairedDeviceNamePublisher7Combine03AnyK0VySSs5NeverOGyF_0()
{
  v0 = MEMORY[0x1E69E6158];
  sub_1BA2CDDCC(0, &qword_1EDC5F400, MEMORY[0x1E69E6158]);
  swift_allocObject();
  sub_1BA4A4EA8();
  sub_1BA2CDD7C(&qword_1EDC5F408, &qword_1EDC5F400, v0);
  v1 = sub_1BA4A4F98();

  return v1;
}

uint64_t _s18HealthExperienceUI34SummarySharingOnboardingPresentingPAAE28suggestedCategoriesPublisher11healthStore0kbL07Combine03AnyJ0VySayAA0dE26SelectionSuggestedCategoryOGs5NeverOGSo08HKHealthL0C_0A8Platform0abL0_ptF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA2CD9FC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2CDC1C(0);
  v15 = *(v14 - 8);
  v25 = v14;
  v26 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BA2896CC(a1, a2);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  sub_1BA2CDAEC(0);
  sub_1BA2CDB90(0);
  v20 = MEMORY[0x1E695BED8];
  sub_1BA44350C(&qword_1EBBF0128, sub_1BA2CDAEC, MEMORY[0x1E695BED8]);
  sub_1BA44350C(&qword_1EBBE9D08, sub_1BA2CDB90, v20);
  sub_1BA4A5018();

  sub_1BA4444E4(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  sub_1BA44350C(&qword_1EBBF0138, sub_1BA2CD9FC, MEMORY[0x1E695BDA0]);
  sub_1BA4A4FE8();
  (*(v10 + 8))(v13, v9);
  sub_1BA44350C(&qword_1EBBF0150, sub_1BA2CDC1C, MEMORY[0x1E695BD60]);
  v21 = v25;
  v22 = sub_1BA4A4F98();
  (*(v26 + 8))(v18, v21);
  return v22;
}

uint64_t sub_1BA44350C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA443554(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v74 = a2;
  v2 = MEMORY[0x1E69E6370];
  sub_1BA4444E4(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v56 - v5;
  sub_1BA02F280(0);
  v71 = v7;
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F344(0);
  v72 = v11;
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1BA02EF20(0);
  v61 = v17;
  v59 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v57 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02EF40(0);
  v62 = v20;
  v60 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v58 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02EFD4(0);
  v63 = *(v23 - 8);
  v64 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F068(0);
  v65 = *(v27 - 8);
  v66 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4444E4(0, &qword_1EDC6ADF0, v2, MEMORY[0x1E69A3C40]);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v56 - v35;
  if (qword_1EDC63A50 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v32, qword_1EDC63A58);
  (*(v33 + 16))(v36, v37, v32);
  sub_1BA4A1CA8();
  (*(v33 + 8))(v36, v32);
  if (v77)
  {
    v75 = 1;
    sub_1BA4A4E78();
    sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
    v38 = v68;
    sub_1BA4A4E48();
    (*(v67 + 8))(v6, v38);
    v39 = swift_allocObject();
    v40 = v74;
    *(v39 + 16) = v73;
    *(v39 + 24) = v40;
    sub_1BA44350C(&qword_1EBBEA810, sub_1BA02F280, MEMORY[0x1E695C0C8]);
    v41 = v71;
    sub_1BA4A4FB8();

    (*(v69 + 8))(v10, v41);
    sub_1BA44350C(&qword_1EBBEA828, sub_1BA02F344, MEMORY[0x1E695BCC0]);
    v42 = v72;
    v43 = sub_1BA4A4F98();
    (*(v70 + 8))(v14, v42);
  }

  else
  {
    v45 = v73;
    v44 = v74;
    v46 = (*(v74 + 24))(v73, v74);
    if (v46)
    {
      v76 = v46;
      sub_1B9F1146C(0);
      v47 = MEMORY[0x1E695BED8];
      sub_1BA44350C(&qword_1EDC5F478, sub_1B9F1146C, MEMORY[0x1E695BED8]);
      sub_1BA4A4FB8();
      sub_1BA4A4D08();
      sub_1BA02DF60(0);
      sub_1BA44350C(&qword_1EBBEA7F0, sub_1BA02EFD4, MEMORY[0x1E695BCC0]);
      sub_1BA44350C(&qword_1EBBEA0F8, sub_1BA02DF60, v47);
      v48 = v64;
      sub_1BA4A5168();
      (*(v63 + 8))(v26, v48);
      sub_1BA44350C(&qword_1EBBEA820, sub_1BA02F068, MEMORY[0x1E695BE40]);
      v49 = v66;
      v43 = sub_1BA4A4F98();

      (*(v65 + 8))(v30, v49);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
      v50 = v57;
      sub_1BA4A4E38();
      v51 = swift_allocObject();
      *(v51 + 16) = v45;
      *(v51 + 24) = v44;
      sub_1BA44350C(&qword_1EBBEA7D0, sub_1BA02EF20, MEMORY[0x1E695BFF8]);
      v52 = v61;
      v53 = v58;
      sub_1BA4A4FB8();

      (*(v59 + 8))(v50, v52);
      sub_1BA44350C(&qword_1EBBEA818, sub_1BA02EF40, MEMORY[0x1E695BCC0]);
      v54 = v62;
      v43 = sub_1BA4A4F98();
      (*(v60 + 8))(v53, v54);
    }
  }

  return v43;
}

uint64_t sub_1BA443FAC(uint64_t a1)
{
  sub_1BA4444E4(0, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v16 - v6;
  sub_1BA02DF24(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = a1;
  sub_1BA4A4E78();
  sub_1BA4A4D08();
  sub_1BA02DF60(0);
  sub_1BA02E060();
  sub_1BA44350C(&qword_1EBBEA0F8, sub_1BA02DF60, MEMORY[0x1E695BED8]);
  sub_1BA4A5168();
  (*(v4 + 8))(v7, v3);
  sub_1BA44350C(&qword_1EBBEA7B0, sub_1BA02DF24, MEMORY[0x1E695BE40]);
  v14 = sub_1BA4A4F98();
  (*(v10 + 8))(v13, v9);
  return v14;
}

double sub_1BA444284(int a1, int a2, int a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 40) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1BA4404D8(a1, a2, a3, *(v3 + 32), v3 + v4, *(v3 + v5), v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 40), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 41), *(v3 + 16), *(v3 + 24));
}

uint64_t sub_1BA444404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA44446C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA4444E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t SectionsPublisherDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA444624@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA4446AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_1BA44479C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA4447F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA4448A8(uint64_t a1)
{
  sub_1B9F12538();
  v3 = v2;
  v39 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  v7 = *(a1 + 16);
  v40 = a1;
  if (v7)
  {
    v43 = v6;
    v44 = v3;
    v50[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v7, 0);
    v8 = v50[0];
    v45 = a1 + 32;
    v9 = (a1 + 72);
    v42 = v7;
    v10 = v7;
    do
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      v50[0] = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);

      if (v14 >= v13 >> 1)
      {
        sub_1B9F1C360((v13 > 1), v14 + 1, 1);
        v8 = v50[0];
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v9 += 6;
      --v10;
    }

    while (v10);
    v6 = v43;
    v3 = v44;
    sub_1BA4A44C8();

    v16 = 0;
    v17 = v42;
    do
    {
      v18 = (v45 + 48 * v16);
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      v49 = v18[4];
      v22 = v18[5];
      v23 = *(v20 + 16);
      if (v23)
      {
        v51 = MEMORY[0x1E69E7CC0];
        v48 = v19;

        v46 = v21;

        sub_1B9F1C360(0, v23, 0);
        v24 = v51;
        v47 = v20;
        v25 = v20 + 32;
        do
        {
          sub_1B9F0A534(v25, v50);
          __swift_project_boxed_opaque_existential_1(v50, v50[3]);
          v26 = sub_1BA4A2D58();
          v28 = v27;
          __swift_destroy_boxed_opaque_existential_1(v50);
          v51 = v24;
          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1B9F1C360((v29 > 1), v30 + 1, 1);
            v24 = v51;
          }

          *(v24 + 16) = v30 + 1;
          v31 = v24 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
          v25 += 40;
          --v23;
        }

        while (v23);
        v6 = v43;
        v3 = v44;
        v17 = v42;
      }

      else
      {
      }

      ++v16;
      v50[0] = v49;
      v50[1] = v22;

      sub_1BA4A4448();
      swift_bridgeObjectRelease_n();
    }

    while (v16 != v17);
  }

  else
  {
    sub_1BA4A44C8();
  }

  v32 = v40;
  v33 = Array<A>.identifierToIndexDict()(v40);
  v34 = v41;
  *(v41 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSectionsIdentifierToIndexMap) = v33;

  *(v34 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSections) = v32;

  v35 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  v36 = *(v39 + 40);

  v36(v34 + v35, v6, v3);
  return swift_endAccess();
}

void sub_1BA444C90(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1B9F12538();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  (*(v10 + 16))(v13, v4 + v14, v9);
  v36 = a1;
  v37 = a2;
  sub_1BA4A4568();
  (*(v10 + 8))(v13, v9);
  v15 = v31;
  if (!v31)
  {
    goto LABEL_8;
  }

  v16 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSectionsIdentifierToIndexMap);
  if (!*(v16 + 16) || (v17 = v30, , v18 = sub_1B9F24A34(v17, v15), v20 = v19, , (v20 & 1) == 0))
  {

LABEL_8:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v21 = *(*(v16 + 56) + 8 * v18);

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSections);
    if (v21 < *(v22 + 16))
    {
      v23 = (v22 + 48 * v21);
      v24 = v23[5];
      v25 = v23[6];
      v26 = v23[7];
      v27 = v23[8];
      v28 = v23[9];
      v30 = v23[4];
      v31 = v24;
      v32 = v25;
      v33 = v26;
      v34 = v27;
      v35 = v28;

      ArrayDataSourceSection.item(for:)(a1, a2, a3);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1BA444EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a4(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t sub_1BA444FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA44502C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5, v8);
  v11 = *a2;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 40))(v11 + v12, v10, v5);
  return swift_endAccess();
}

void sub_1BA445144(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t SectionsPublisherDataSource.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);

  return v1;
}

uint64_t sub_1BA4451E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%{public}s] Sections publisher data source completed", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1BA445388(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1BA4A6C68();
  v4[2] = a2;
  v4[3] = v3;
  sub_1BA1E0AA4(sub_1BA445C2C, v4, "HealthExperienceUI/SectionsPublisherDataSource.swift", 52, 2u, 38);
}

void sub_1BA445400(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BA4448A8(a2);
    v5 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
    swift_beginAccess();
    v6 = *(v4 + v5);
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = 1;
    v10[4] = sub_1BA445C48;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B9F8A254;
    v10[3] = &block_descriptor_123;
    v8 = _Block_copy(v10);
    v9 = v6;

    [v9 notifyObservers_];
    _Block_release(v8);
  }
}

uint64_t SectionsPublisherDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA445648()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);

  return v1;
}

void *sub_1BA445688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a3;
  v5 = *v3;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  v11 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  sub_1B9F15B38();
  v12 = sub_1BA4A7A78();
  v13 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v14 = sub_1BA4A6758();
  v15 = [v13 initWithName:v14 loggingCategory:{v12, v26, v27}];

  *(v4 + v11) = v15;
  v16 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v28 = 0x627550736D657449;
  v29 = 0xEF3C72656873696CLL;
  sub_1BA4A1788();
  v17 = sub_1BA4A1748();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x1BFAF1350](v17, v19);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v20 = v29;
  *v16 = v28;
  v16[1] = v20;
  v21 = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSections) = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSectionsIdentifierToIndexMap;
  *(v4 + v22) = sub_1B9F1C5F0(v21);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable) = 0;
  *(swift_allocObject() + 16) = v5;
  swift_allocObject();
  swift_weakInit();
  v24 = sub_1BA4A5008();

  *(v4 + v23) = v24;

  return v4;
}

void *sub_1BA44598C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SectionsPublisherDataSource(0);
  swift_allocObject();
  return sub_1BA445688(a1, a2, a3);
}

uint64_t type metadata accessor for SectionsPublisherDataSource(uint64_t a1)
{
  result = qword_1EBBF2B60;
  if (!qword_1EBBF2B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA445A3C(uint64_t a1)
{
  sub_1B9F12538();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void static PluginFeedItem.makeOnboardingPromotionalFeedItem<A>(uniqueIdentifier:actionHandlerType:actionHandlerUserData:configuration:sourceProfile:associatedHKTypes:additionalKeywords:featureAutomationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v42 = a5;
  v43 = a8;
  v37 = a3;
  v38 = a7;
  v40 = a4;
  v41 = a2;
  v39 = a1;
  v44 = a10;
  v45 = a11;
  v36 = a12;
  v14 = sub_1BA4A1C68();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA445FB0(0, v17);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PromotionTileView();
  v25 = sub_1BA4A3258();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v23, a6, v25);
  (*(v26 + 56))(v23, 0, 1, v25);
  (*(v15 + 104))(v19, *MEMORY[0x1E69A3C00], v14);
  static PluginFeedItem.platformFeedItem<A, B>(viewType:actionHandlerType:actionHandlerUserData:uniqueIdentifier:userDataObject:contentKind:sourceProfile:)(v24, v37, v40, v42, v39, v41, v23, v19, v38, v24, v36, *(a13 + 8));
  v27.n128_f64[0] = (*(v15 + 8))(v19, v14);
  sub_1BA446008(v23, v27);
  sub_1BA4A3238();
  sub_1BA4A1E18();
  v28 = sub_1BA4A2028();
  v30 = v29;
  v31 = sub_1BA4A1EE8();
  sub_1BA0E1C3C(&v47, v28, v30);

  v31(v46, 0);
  sub_1BA4A1E08();

  sub_1BA4A1E48();
  sub_1B9F25350();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BA4B5460;
  *(v32 + 32) = 0x6574736567677553;
  *(v32 + 40) = 0xEF6E6F6974634164;
  *(v32 + 48) = v44;
  *(v32 + 56) = v45;

  v33 = sub_1BA4A6AE8();

  v34 = HKUIJoinStringsForAutomationIdentifier();

  if (v34)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A1ED8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA445FB0(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC6E198)
  {
    sub_1BA4A3258();
    v2 = sub_1BA4A7AA8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC6E198);
    }
  }
}

uint64_t sub_1BA446008(uint64_t a1, __n128 a2)
{
  sub_1BA445FB0(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id ListStyleAccessoryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

double sub_1BA4460C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1BA446134()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA44618C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

char *ListStyleAccessoryView.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label] = 0;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for ListStyleAccessoryView();
  v11 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a2, a3, a4, a5);
  v12 = sub_1BA446508();
  [v11 addSubview_];

  v13 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView;
  v14 = *&v11[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView];
  v15 = sub_1BA446590();
  [v14 addSubview_];

  v16 = *&v11[v13];
  v17 = sub_1BA44666C();
  [v16 addSubview_];

  v18 = sub_1BA446B1C();
  sub_1B9F73B50(v18);
  v19 = sub_1BA446CFC();
  sub_1B9F73B50(v19);
  v20 = sub_1BA446EE0();
  sub_1B9F73B50(v20);
  v21 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v22 = sub_1BA4A6AE8();

  [v21 activateConstraints_];

  return v11;
}

id sub_1BA446508()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA446590()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A44A8]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1BA44666C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  }

  else
  {
    v41 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = [objc_opt_self() systemBlueColor];
    [v10 setTextColor_];

    v12 = *MEMORY[0x1E69DDCF8];
    v13 = objc_opt_self();
    v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
    }

    else
    {
      v40 = v0;
      sub_1BA4A3DD8();
      v17 = v12;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v39 = v17;
        v23 = sub_1B9F0B82C(v21, v22, &v44);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v42 = 0;
        v43 = 1;
        sub_1BA1508E8(0);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v44);

        *(v20 + 14) = v26;
        *(v20 + 22) = 2080;
        LODWORD(v42) = 0;
        type metadata accessor for SymbolicTraits(0);
        v27 = sub_1BA4A6808();
        v29 = sub_1B9F0B82C(v27, v28, &v44);
        v17 = v39;

        *(v20 + 24) = v29;
        *(v20 + 32) = 2112;
        v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v30;
        v31 = v37;
        *v37 = v30;
        _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1B9F8C6C8(v31);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        v32 = v38;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
      }

      (*(v2 + 8))(v6, v41);
      v0 = v40;
      v33 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
    }

    [v10 setFont_];

    [v10 setAdjustsFontForContentSizeCategory_];
    v34 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v35 = v8;
  return v9;
}

void sub_1BA446AA8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label) = a1;
}

void (*sub_1BA446ABC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA44666C();
  return sub_1BA446B04;
}

void sub_1BA446B04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label) = v2;
}

uint64_t sub_1BA446B1C()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA446508();
  v3 = [v2 leadingAnchor];

  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView] trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  return v1;
}

uint64_t sub_1BA446CFC()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA446590();
  v3 = [v2 topAnchor];

  v4 = sub_1BA446508();
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator;
  v8 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___separator) leadingAnchor];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView;
  v10 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView) leadingAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  *(v1 + 40) = v11;
  v12 = [*(v0 + v7) trailingAnchor];
  v13 = [*(v0 + v9) trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v1 + 48) = v14;
  v15 = [*(v0 + v7) heightAnchor];
  [*(v0 + v7) separatorThickness];
  v16 = [v15 constraintEqualToConstant_];

  *(v1 + 56) = v16;
  return v1;
}

uint64_t sub_1BA446EE0()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA44666C();
  v3 = [v2 topAnchor];

  v4 = sub_1BA446508();
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:11.0];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView;
  v8 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___containerView) bottomAnchor];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label;
  v10 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label) bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:11.0];

  *(v1 + 40) = v11;
  v12 = [*(v0 + v9) leadingAnchor];
  v13 = [*(v0 + v7) leadingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v1 + 48) = v14;
  v15 = [*(v0 + v9) trailingAnchor];
  v16 = [*(v0 + v7) trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:13.0];

  *(v1 + 56) = v17;
  return v1;
}

void sub_1BA4470E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA44666C();
  v12 = a2;
  v13 = v11;
  if (v12)
  {
    v14 = sub_1BA4A6758();
  }

  else
  {
    v14 = 0;
  }

  [v13 setText_];

  v15 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label);
  v16 = *MEMORY[0x1E69DDCF8];
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
  v20 = v19;
  if (a3)
  {
    v21 = [v19 fontDescriptorWithSymbolicTraits_];

    v20 = v21;
  }

  if (v20)
  {
    v22 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v23 = v16;
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v44 = v25;
      v27 = v26;
      v43 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49 = v45;
      *v27 = 136315906;
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = sub_1B9F0B82C(v28, v29, &v49);
      v46 = v23;
      v31 = v30;

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v47 = 0;
      v48 = 1;
      sub_1BA1508E8(0);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v49);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2080;
      LODWORD(v47) = a3;
      type metadata accessor for SymbolicTraits(0);
      v35 = sub_1BA4A6808();
      v37 = sub_1B9F0B82C(v35, v36, &v49);

      *(v27 + 24) = v37;
      v23 = v46;
      *(v27 + 32) = 2112;
      v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v27 + 34) = v38;
      v39 = v43;
      *v43 = v38;
      _os_log_impl(&dword_1B9F07000, v24, v44, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v27, 0x2Au);
      sub_1B9F8C6C8(v39);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      v40 = v45;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v41 = [v17 preferredFontDescriptorWithTextStyle_];
    v22 = [objc_opt_self() fontWithDescriptor:v41 size:0.0];
  }

  [v18 setFont_];
}

void sub_1BA4474FC(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  if (a2)
  {
    v6 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v7 = sub_1BA44666C();

    MEMORY[0x1BFAF1350](0x7972616D6972502ELL, 0xEE006E6F74747542);
    v8 = sub_1BA4A6758();

    [v7 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v8 = sub_1BA44666C();
    [v8 setAccessibilityIdentifier_];
  }
}

id ListStyleAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListStyleAccessoryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA4476FC()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA447758(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id NSBundle.mainStoryboardFile.getter()
{
  result = [v0 infoDictionary];
  if (result)
  {
    v2 = result;
    v3 = sub_1BA4A6628();

    if (*(v3 + 16) && (v4 = sub_1B9F24A34(0xD000000000000014, 0x80000001BA508DD0), (v5 & 1) != 0))
    {
      sub_1B9F0AD9C(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BA447ACC(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1B9F374E8(a1, v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v4 + v5);
  swift_endAccess();
  sub_1BA447D30();
  return sub_1B9F44700(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0CDE8);
}

uint64_t sub_1BA447B90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA447C00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA447D30();
  return sub_1B9F44700(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

void (*sub_1BA447C98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA447CFC;
}

void sub_1BA447CFC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA447D30();
  }
}

void sub_1BA447D30()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1BA448B2C(0, &qword_1EBBF2B98, MEMORY[0x1E69A3C48], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = &v70 - v5;
  sub_1BA448B2C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v2);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v70 - v8;
  v10 = sub_1BA4A3FB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A3F18();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BA4A4428();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v20);
  v73 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4418();
  sub_1BA448B2C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v22 = swift_allocObject();
  v72 = xmmword_1BA4B5480;
  *(v22 + 16) = xmmword_1BA4B5480;
  (*(v16 + 104))(v19, *MEMORY[0x1E69DBF28], v15);
  v23 = sub_1BA4A3F48();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v11 + 8))(v14, v10);
  (*(v16 + 8))(v19, v15);
  sub_1BA4A75F8();
  v24 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v1 + v24, v81, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v82)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
    }
  }

  else
  {
    sub_1B9F44700(v81, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
  }

  sub_1B9F374E8(&v84, v81, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
  v25 = v82;
  if (v82)
  {
    v26 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v27 = (*(v26 + 8))(v25, v26);
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_1(v81);
    if (v29)
    {
      sub_1B9F25350();
      v30 = swift_allocObject();
      *(v30 + 16) = v72;
      *(v30 + 32) = v27;
      *(v30 + 40) = v29;
      v31 = sub_1BA4A6AE8();

      v32 = HKUIJoinStringsForAutomationIdentifier();

      [v1 setAccessibilityIdentifier_];
      goto LABEL_10;
    }
  }

  else
  {
    sub_1B9F44700(v81, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
  }

  [v1 setAccessibilityIdentifier_];
LABEL_10:
  sub_1B9F374E8(v1 + v24, v76, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v77)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBF1780, &protocol descriptor for SectionedDataSourceItemTitleProviding);
    if (swift_dynamicCast())
    {
      if (*(&v79 + 1))
      {
        sub_1B9F1134C(&v78, v81);
        v33 = v82;
        v34 = v83;
        __swift_project_boxed_opaque_existential_1(v81, v82);
        (*(v34 + 8))(v33, v34);
        v35 = v73;
        sub_1BA4A43B8();
        v36 = v82;
        v37 = v83;
        __swift_project_boxed_opaque_existential_1(v81, v82);
        (*(v37 + 16))(v36, v37);
        sub_1BA4A41A8();
        __swift_destroy_boxed_opaque_existential_1(v81);
        sub_1B9F44700(&v84, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
        v38 = v75;
        *(&v85 + 1) = v75;
        v86 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v84);
        v40 = v74;
        (*(v74 + 16))(boxed_opaque_existential_1, v35, v38);
        MEMORY[0x1BFAF1EF0](&v84);
        (*(v40 + 8))(v35, v38);
        return;
      }
    }

    else
    {
      v80 = 0;
      v78 = 0u;
      v79 = 0u;
    }
  }

  else
  {
    sub_1B9F44700(v76, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    v78 = 0u;
    v79 = 0u;
    v80 = 0;
  }

  sub_1B9F44700(&v78, &qword_1EBBF1778, &qword_1EBBF1780, &protocol descriptor for SectionedDataSourceItemTitleProviding, sub_1B9F0CDE8);
  sub_1B9F374E8(v1 + v24, v81, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!v82)
  {
    v49 = &qword_1EDC6E1A0;
    v50 = &qword_1EDC6E1B0;
    v51 = MEMORY[0x1E69A3348];
    v52 = sub_1B9F0CDE8;
    v53 = v81;
    goto LABEL_22;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v41 = v78;
  v42 = sub_1BA4A2758();
  v43 = sub_1BA1591A8(v42);

  if (!v43)
  {

LABEL_23:
    sub_1B9F374E8(v1 + v24, v76, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    if (v77)
    {
      sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      sub_1B9F0D950(0, &qword_1EBBF2BA8, MEMORY[0x1E69E6F68]);
      if (swift_dynamicCast())
      {
        if (*(&v79 + 1))
        {
          sub_1B9F1134C(&v78, v81);
          __swift_project_boxed_opaque_existential_1(v81, v82);
          sub_1BA4A82D8();
          v54 = v73;
          sub_1BA4A43B8();
          __swift_destroy_boxed_opaque_existential_1(v81);
          sub_1B9F44700(&v84, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
          v55 = v75;
          *(&v85 + 1) = v75;
          v86 = MEMORY[0x1E69DC110];
          v56 = __swift_allocate_boxed_opaque_existential_1(&v84);
          v57 = v74;
          (*(v74 + 16))(v56, v54, v55);
LABEL_30:
          MEMORY[0x1BFAF1EF0](&v84);
          (*(v57 + 8))(v54, v55);
          return;
        }
      }

      else
      {
        v80 = 0;
        v78 = 0u;
        v79 = 0u;
      }
    }

    else
    {
      sub_1B9F44700(v76, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
      v78 = 0u;
      v79 = 0u;
      v80 = 0;
    }

    sub_1B9F44700(&v78, &unk_1EBBF2BA0, &qword_1EBBF2BA8, MEMORY[0x1E69E6F68], sub_1B9F0CDE8);
    sub_1B9F44700(&v84, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
    v55 = v75;
    *(&v85 + 1) = v75;
    v86 = MEMORY[0x1E69DC110];
    v58 = __swift_allocate_boxed_opaque_existential_1(&v84);
    v57 = v74;
    v54 = v73;
    (*(v74 + 16))(v58, v73, v55);
    goto LABEL_30;
  }

  v44 = sub_1BA4A2778();
  v45 = v71;
  sub_1BA1591BC(v44, v71);
  v46 = v45;

  v47 = sub_1BA4A1D08();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {

    v49 = &qword_1EBBF2B98;
    v50 = MEMORY[0x1E69A3C48];
    v51 = MEMORY[0x1E69E6720];
    v52 = sub_1BA448B2C;
    v53 = v46;
LABEL_22:
    sub_1B9F44700(v53, v49, v50, v51, v52);
    goto LABEL_23;
  }

  v59 = sub_1BA4A1CF8();
  (*(v48 + 8))(v46, v47);
  v60 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  [v60 setProfileIdentifier_];
  [v60 resume];
  v61 = [v60 displayTypeController];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 displayTypeForObjectType_];

    if (v63)
    {
      v64 = [v63 localization];

      v65 = [v64 displayName];
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      v66 = v73;
      sub_1BA4A43B8();

      sub_1B9F44700(&v84, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0CDE8);
      v67 = v75;
      *(&v85 + 1) = v75;
      v86 = MEMORY[0x1E69DC110];
      v68 = __swift_allocate_boxed_opaque_existential_1(&v84);
      v69 = v74;
      (*(v74 + 16))(v68, v66, v67);
      MEMORY[0x1BFAF1EF0](&v84);
      (*(v69 + 8))(v66, v67);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA448B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id DataTypeDetailDisclosureCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DataTypeDetailDisclosureCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item];
  v10 = type metadata accessor for DataTypeDetailDisclosureCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id DataTypeDetailDisclosureCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DataTypeDetailDisclosureCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item];
  v4 = type metadata accessor for DataTypeDetailDisclosureCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id DataTypeDetailDisclosureCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailDisclosureCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EmbeddedDataSourceCollectionViewCell.Item.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmbeddedDataSourceCollectionViewCell.Item.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_1BA449020(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  type metadata accessor for CompoundSectionedDataSource(0);
  sub_1B9F1DEA0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  swift_unknownObjectRetain();
  v7 = CompoundSectionedDataSource.__allocating_init(_:)(inited);
  v8 = objc_allocWithZone(type metadata accessor for CompoundDataSourceCollectionViewController());
  v9 = CompoundDataSourceCollectionViewController.init(dataSource:)(v7);
  v10 = [objc_opt_self() clearColor];
  v11 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v12 = *&v9[v11];
  *&v9[v11] = v10;

  *a3 = v9;
}

uint64_t sub_1BA44911C(uint64_t a1)
{
  v2 = sub_1BA44AB60();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA4491B0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA44920C(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

double sub_1BA4492A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1BA44930C()
{
  swift_beginAccess();

  return result;
}

double sub_1BA449354(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1BA44940C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 view];
    if (!v3)
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = v3;
    [v3 removeFromSuperview];

    [v2 willMoveToParentViewController_];
    [v2 removeFromParentViewController];
    [v2 didMoveToParentViewController_];
  }

  v5 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController];
  if (v5)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = v5;
      v9 = v7;
      [v8 willMoveToParentViewController_];
      [v9 addChildViewController_];
      [v8 didMoveToParentViewController_];

      v10 = [v1 contentView];
      v11 = [v8 view];
      if (v11)
      {
        v12 = v11;
        [v10 addSubview_];

        v13 = [v8 view];
        if (v13)
        {
          v14 = [v1 contentView];
          [v13 hk:v14 alignConstraintsWithView:?];

          return;
        }

LABEL_12:
        __break(1u);
        return;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }
}

double sub_1BA449600@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v5);
  if (v6)
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(a1 + 64) = 0;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    sub_1B9F44760(v5, sub_1B9F7B6F8);
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t sub_1BA4496DC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v3 + v4, v6);
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  swift_endAccess();
  sub_1BA449794(v6);
  sub_1B9F44760(v6, sub_1B9F7B6F8);
  return sub_1B9F44760(v7, sub_1B9F7B6F8);
}

void sub_1BA449794(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v2 + v4, &v18);
  if (*(&v19 + 1))
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
    }
  }

  else
  {
    sub_1B9F44760(&v18, sub_1B9F7B6F8);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
  }

  v18 = v23;
  v19 = v24;
  v20 = v25;
  v21 = v26;
  v22 = v27;
  if (*(&v23 + 1))
  {
    v5 = *(&v20 + 1);
    swift_unknownObjectRetain();
    sub_1B9F44760(&v18, sub_1BA44AB10);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(ObjectType, v5);
    v9 = v8;
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  sub_1B9F68124(a1, v16);
  if (!v17)
  {
    sub_1B9F44760(v16, sub_1B9F7B6F8);
LABEL_16:
    if (!v9)
    {
      return;
    }

    goto LABEL_17;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = swift_getObjectType();
  v11 = (*(v15 + 8))(v10);
  v13 = v12;
  swift_unknownObjectRelease();
  if (!v9)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!v13)
  {
LABEL_17:

LABEL_18:
    sub_1BA44A2E0();
    return;
  }

  if (v7 == v11 && v9 == v13)
  {

    return;
  }

  v14 = sub_1BA4A8338();

  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }
}

uint64_t sub_1BA449A4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA449AA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v5);
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA449794(v5);
  sub_1B9F44760(a1, sub_1B9F7B6F8);
  return sub_1B9F44760(v5, sub_1B9F7B6F8);
}

void (*sub_1BA449B58(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_1B9F68124(v1 + v5, v4);
  return sub_1BA449BF0;
}

void sub_1BA449BF0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_1B9F68124(*a1, v2 + 40);
    sub_1B9F68124(v3 + v4, v2 + 80);
    swift_beginAccess();
    sub_1B9F63E74(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_1BA449794(v2 + 80);
    sub_1B9F44760(v2 + 80, sub_1B9F7B6F8);
  }

  else
  {
    sub_1B9F68124(v3 + v4, v2 + 40);
    swift_beginAccess();
    sub_1B9F63E74(v2, v3 + v4);
    swift_endAccess();
    sub_1BA449794(v2 + 40);
  }

  sub_1B9F44760(v2 + 40, sub_1B9F7B6F8);
  sub_1B9F44760(v2, sub_1B9F7B6F8);

  free(v2);
}

id EmbeddedDataSourceCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EmbeddedDataSourceCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item];
  v10 = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id EmbeddedDataSourceCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void EmbeddedDataSourceCollectionViewCell.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController) = 0;
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA44A174(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
  v3 = objc_msgSendSuper2(&v13, sel_preferredLayoutAttributesFittingAttributes_, a1);
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 collectionView];
    if (v6)
    {
      v7 = v6;
      [v6 layoutIfNeeded];

      v8 = [v5 collectionView];
      if (v8)
      {
        [v8 contentSize];
        v10 = v9;
        v12 = v11;

        [v3 setSize_];
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

void sub_1BA44A2E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v2, &v19);
  if (*(&v20 + 1))
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    sub_1B9F44760(&v19, sub_1B9F7B6F8);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  v19 = v24;
  v20 = v25;
  v21 = v26;
  v22 = v27;
  v3 = v28;
  v23 = v28;
  if (*(&v24 + 1))
  {
    v4 = (v22)();
    v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController);
    *(v1 + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController) = v4;
    v6 = v4;
    sub_1BA44940C(v5);

    v7 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
    swift_beginAccess();
    *(v6 + v7) = 0;
    v8 = v6;
    v9 = [v8 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setLayoutMargins_];

      v11 = [v8 collectionView];
      if (v11)
      {
        v12 = v11;
        v13 = [objc_opt_self() clearColor];
        [v12 setBackgroundColor_];

        v14 = [v8 collectionView];
        if (v14)
        {
          v15 = v14;
          [v14 setClipsToBounds_];

          v16 = [v8 collectionView];
          if (v16)
          {
            [v16 setScrollEnabled_];

            v17 = sub_1B9F23FB0();
            swift_beginAccess();
            v18 = *(v17 + 16);

            [v18 registerObserver_];

            sub_1B9F44760(&v19, sub_1BA44AB10);
            return;
          }

LABEL_15:
          __break(1u);
          return;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

id EmbeddedDataSourceCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA44A674(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1BA449B58(v2);
  return sub_1B9FCDD98;
}

void (*sub_1BA44A6E4(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

unint64_t sub_1BA44A790()
{
  result = qword_1EDC60EC0;
  if (!qword_1EDC60EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC60EC0);
  }

  return result;
}

void sub_1BA44AB10()
{
  if (!qword_1EBBF2BD0)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2BD0);
    }
  }
}

unint64_t sub_1BA44AB60()
{
  result = qword_1EDC60EB8;
  if (!qword_1EDC60EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC60EB8);
  }

  return result;
}

void sub_1BA44ABB4(BOOL *a2@<X8>)
{
  v3 = sub_1BA4A8108();

  *a2 = v3 != 0;
}

uint64_t sub_1BA44AC28()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA44AC9C(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

id sub_1BA44ACF0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController____lazy_storage___tableViewHeightLayoutConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController____lazy_storage___tableViewHeightLayoutConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController____lazy_storage___tableViewHeightLayoutConstraint];
LABEL_6:
    v12 = v2;
    return v3;
  }

  result = [v0 tableView];
  if (result)
  {
    v5 = result;
    v6 = [result heightAnchor];

    result = [v0 tableView];
    if (result)
    {
      v7 = result;
      [result contentSize];
      v9 = v8;

      v10 = [v6 constraintEqualToConstant_];
      [v10 setActive_];
      v11 = *&v0[v1];
      *&v0[v1] = v10;
      v3 = v10;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1BA44AED0()
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
  [v0 dismissViewControllerAnimated:1 completion:{0, v14}];
  v18 = &v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow];
  v19 = v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow + 8];
  if (v19 <= 1)
  {
    v26 = v7;
    v20 = *v18;
    sub_1B9F38BF4();
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
    aBlock[3] = &block_descriptor_124;
    v23 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F3F378(0);
    sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v10, v5, v23);
    _Block_release(v23);

    (*(v2 + 8))(v5, v1);
    (*(v26 + 8))(v10, v25);
  }

  return result;
}

void sub_1BA44B2BC()
{
  v1 = v0;
  v2 = type metadata accessor for EmergencyAccessUserStatus(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
  v10 = v42 - v9;
  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_switchCell];
  if (v11)
  {
    v12 = [*(v11 + OBJC_IVAR____TtC18HealthExperienceUI19SwitchTableViewCell_toggleSwitch) isOn];
    v13 = sub_1BA4A2958();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    sub_1BA2058E0(sub_1BA44C2C8, v14, 0, 0);

    v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_healthStore];
    v16 = &v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow];
    v18 = v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow + 8];
    v47 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow];
    v17 = v47;
    v48 = v18;
    v19 = &v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_emergencyStatus];
    sub_1BA020470(&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_emergencyStatus], v10);
    objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyDoneViewController(0));
    v20 = v15;
    sub_1BA02040C(v17, v18);
    sub_1BA337850(v20, &v47, v10);
    v22 = v21;
    if (!HAFeatureFlagStewieEnabled() || v16[8] < 2u || *(v19 + *(v2 + 20)) != 1)
    {
      [v1 showViewController:v22 sender:v1];
      goto LABEL_10;
    }

    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v1;
    v45 = "eview_medical_id_later_button";
    v24 = qword_1EDC5E100;
    v44 = v22;
    v43 = v1;
    if (v24 != -1)
    {
      swift_once();
    }

    v42[1] = sub_1BA4A1318();
    v42[2] = v25;
    v26 = *v16;
    v27 = v16[8];
    sub_1BA020470(v19, v5);
    v28 = type metadata accessor for EmergencyAccessBuddyStewieViewController(0);
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_healthStore] = v20;
    v30 = &v29[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow];
    *v30 = v26;
    v30[8] = v27;
    sub_1BA020470(v5, &v29[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_emergencyStatus]);
    v31 = &v29[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_nextVCHandler];
    *v31 = sub_1BA2B7514;
    v31[1] = v23;
    type metadata accessor for EmergencyAccessBuddyStartViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = objc_opt_self();
    swift_retain_n();
    v34 = v20;
    sub_1BA02040C(v26, v27);
    v35 = [v33 bundleForClass_];
    v36 = sub_1BA4A6758();
    v37 = [objc_opt_self() imageNamed:v36 inBundle:v35];

    if (v37)
    {
      sub_1BA4A1318();
      v38 = sub_1BA4A6758();

      v39 = sub_1BA4A6758();

      v46.receiver = v29;
      v46.super_class = v28;
      v40 = objc_msgSendSuper2(&v46, sel_initWithTitle_detailText_icon_contentLayout_, v38, v39, v37, 2);

      v22 = v40;
      v41 = [v22 headerView];
      [v41 setAllowFullWidthIcon_];

      sub_1BA0204E8(v5);
      [v43 showViewController:v22 sender:v43];

LABEL_10:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA44B7FC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1BA4A7BF8();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void sub_1BA44B870()
{
  v1 = v0;
  sub_1BA44C244(0, &qword_1EBBF2C30, MEMORY[0x1E69DC168]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v29 - v6;
  v8 = [objc_allocWithZone(type metadata accessor for SwitchTableViewCell()) initWithStyle:0 reuseIdentifier:0];
  [*&v8[OBJC_IVAR____TtC18HealthExperienceUI19SwitchTableViewCell_toggleSwitch] setOn_];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 tertiarySystemGroupedBackgroundColor];
  [v10 setBackgroundColor_];

  v12 = v10;
  v13 = [v12 textLabel];
  if (v13)
  {
    v14 = v13;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v15 = sub_1BA4A6758();

    [v14 setText_];
  }

  v16 = [v12 textLabel];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() preferredFontForTextStyle_];
    [v17 setFont_];
  }

  v19 = [v12 textLabel];

  if (v19)
  {
    [v19 setNumberOfLines_];
  }

  v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_switchCell];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_switchCell] = v12;
  v21 = v12;

  v22 = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v22 hk_onboardingListEdgeInsets];
  [v22 _setSectionContentInset_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setScrollEnabled_];
  v23 = [v9 clearColor];
  [v22 setBackgroundColor_];

  [v1 setTableView_];
  sub_1BA44C1F0();
  sub_1BA4A45D8();
  sub_1BA4A44C8();
  v29 = 0;
  v30 = 0;
  sub_1BA4A4448();
  *(swift_allocObject() + 16) = v21;
  sub_1BA44C244(0, &qword_1EBBF2C40, MEMORY[0x1E69DC1A0]);
  objc_allocWithZone(v24);
  v25 = v21;
  v26 = v22;
  v27 = sub_1BA4A4658();
  sub_1BA4A4678();

  (*(v4 + 8))(v7, v3);
  v28 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_diffableDataSource] = v27;
}

id sub_1BA44BD48()
{
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 contentSize];
    v4 = v3;

    v5 = &v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_tableViewHeight];
    if (v4 == *&v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_tableViewHeight])
    {
LABEL_8:
      v12.receiver = v0;
      v12.super_class = type metadata accessor for EmergencyAccessBuddyLockScreenMedicalIDViewController(0);
      return objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
    }
  }

  else
  {
    v5 = &v0[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_tableViewHeight];
  }

  result = [v0 view];
  if (result)
  {
    v7 = result;
    [result layoutIfNeeded];

    result = [v0 tableView];
    if (result)
    {
      v8 = result;
      [result contentSize];
      v10 = v9;

      *v5 = v10;
      v11 = sub_1BA44ACF0();
      [v11 setConstant_];

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BA44BF88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyLockScreenMedicalIDViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmergencyAccessBuddyLockScreenMedicalIDViewController(uint64_t a1)
{
  result = qword_1EBBF2C18;
  if (!qword_1EBBF2C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA44C0B8(uint64_t a1)
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

unint64_t sub_1BA44C19C()
{
  result = qword_1EBBF2C28;
  if (!qword_1EBBF2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2C28);
  }

  return result;
}

unint64_t sub_1BA44C1F0()
{
  result = qword_1EBBF2C38;
  if (!qword_1EBBF2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2C38);
  }

  return result;
}

void sub_1BA44C244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1BA44C1F0();
    v9[0] = MEMORY[0x1E69E6530];
    v9[1] = &type metadata for EmergencyAccessBuddyLockScreenMedicalIDViewController.RowIdentifiers;
    v9[2] = MEMORY[0x1E69E6540];
    v9[3] = v6;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t HADataTypeDetailTrendOverlay.trendActive.getter(unint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 3)
  {
    sub_1BA4A3E28();
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1B9F0B82C(0xD00000000000001CLL, 0x80000001BA509040, &v16);
      *(v9 + 12) = 2080;
      v15 = a1;
      type metadata accessor for TrendOverlay(0);
      v11 = sub_1BA4A6808();
      v13 = sub_1B9F0B82C(v11, v12, &v16);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_1B9F07000, v7, v8, "Unexpected %s type: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v10, -1, -1);
      MEMORY[0x1BFAF43A0](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return a1;
}

unint64_t HKOverlayRoomTrendActive.trendForURL.getter(unint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 3)
  {
    sub_1BA4A3E28();
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA509060, &v16);
      *(v9 + 12) = 2080;
      v15 = a1;
      type metadata accessor for HKOverlayRoomTrendActive(0);
      v11 = sub_1BA4A6808();
      v13 = sub_1B9F0B82C(v11, v12, &v16);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_1B9F07000, v7, v8, "Unexpected %s type: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v10, -1, -1);
      MEMORY[0x1BFAF43A0](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return a1;
}

char *HKTDataTypeDetailFactory.createViewController(userActivity:context:)(void *a1, uint64_t a2)
{
  v200 = a2;
  v232 = sub_1BA4A3EA8();
  v209 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232, v4);
  v6 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v205 = &v181 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v192 = &v181 - v12;
  sub_1B9F0CC94(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v203 = &v181 - v19;
  sub_1B9F0CC94(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v199 = &v181 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v197 = &v181 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v204 = &v181 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v195 = &v181 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v201 = &v181 - v34;
  v206 = sub_1BA4A1728();
  v208 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206, v35);
  v198 = &v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v194 = &v181 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v193 = &v181 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v196 = &v181 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v202 = &v181 - v48;
  v49 = sub_1BA4A35F8();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v51);
  v207 = &v181 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55 = MEMORY[0x1EEE9AC00](v53, v54).n128_u64[0];
  v57 = &v181 - v56;
  v58 = [a1 userInfo];
  v59 = MEMORY[0x1E69E7CA0];
  if (!v58)
  {
    v215 = 0u;
    v216 = 0u;
    goto LABEL_11;
  }

  v60 = v58;
  v185 = v16;
  v186 = v2;
  v188 = a1;
  v61 = sub_1BA4A6628();

  v62 = *MEMORY[0x1E69A2B88];
  v190 = *(v50 + 104);
  v191 = v50 + 104;
  v190(v57, v62, v49);
  v63 = sub_1BA4A35E8();
  v65 = v64;
  v66 = *(v50 + 8);
  v187 = v49;
  v189 = v50 + 8;
  v66(v57, v49);
  v222 = v63;
  v223 = v65;
  sub_1BA4A7D58();
  if (!*(v61 + 16) || (v67 = sub_1B9FDA8E4(&v224), (v68 & 1) == 0))
  {

    sub_1B9FDC768(&v224);
    v215 = 0u;
    v216 = 0u;
    v59 = MEMORY[0x1E69E7CA0];
    goto LABEL_11;
  }

  sub_1B9F0AD9C(*(v61 + 56) + 32 * v67, &v215);
  sub_1B9FDC768(&v224);

  v59 = MEMORY[0x1E69E7CA0];
  if (!*(&v216 + 1))
  {
LABEL_11:
    sub_1B9F0E0A0(&v215, &qword_1EDC6E300, v59 + 8, sub_1B9F23398);
    goto LABEL_12;
  }

  sub_1BA0B5A7C();
  if (swift_dynamicCast())
  {
    v69 = v224;
    v70 = [objc_opt_self() dataTypeWithCode_];
    if (v70)
    {
      v182 = v70;
      v183 = v69;
      v71 = v207;
      v72 = v187;
      v190(v207, *MEMORY[0x1E69A2BB8], v187);
      v73 = v201;
      sub_1BA4A70D8();
      v66(v71, v72);
      v74 = *(v208 + 6);
      v75 = v206;
      v76 = v74(v73, 1, v206);
      v184 = v66;
      if (v76 == 1)
      {
        v77 = v73;
        v78 = v75;
        v79 = v208;
      }

      else
      {
        v89 = *(v208 + 4);
        v201 = v208 + 32;
        v181 = v89;
        v89(v202, v73, v75);
        v190(v71, *MEMORY[0x1E69A2BB0], v72);
        v90 = v195;
        sub_1BA4A70D8();
        v91 = v71;
        v77 = v90;
        v66(v91, v72);
        v92 = v74(v90, 1, v75);
        v78 = v75;
        if (v92 != 1)
        {
          v111 = v196;
          v181(v196, v77, v75);
          v112 = v208;
          v113 = *(v208 + 2);
          v113(v193, v202, v78);
          v113(v194, v111, v78);
          v114 = v203;
          sub_1BA4A0F68();
          v115 = sub_1BA4A0FA8();
          (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
          (*(v112 + 7))(v204, 1, 1, v78);
          v116 = MEMORY[0x1E6968130];
          v117 = v185;
          sub_1BA41F398(v114, v185, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
          v118 = type metadata accessor for ChartContext(0);
          v119 = objc_allocWithZone(v118);
          v120 = &v119[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
          *v120 = 0;
          v120[8] = 1;
          v121 = &v119[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
          *v121 = 0;
          v121[8] = 1;
          v122 = &v119[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
          *v122 = 0;
          v122[8] = 1;
          v201 = MEMORY[0x1E6969530];
          v123 = v204;
          sub_1BA41F398(v204, &v119[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, MEMORY[0x1E6969530]);
          sub_1BA41F398(v117, &v119[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, v116);
          *v120 = 0;
          v120[8] = 1;
          *v121 = 0;
          v121[8] = 0;
          *v122 = 0;
          v122[8] = 0;
          v210.receiver = v119;
          v210.super_class = v118;
          v97 = objc_msgSendSuper2(&v210, sel_init);
          sub_1B9F0E0A0(v117, &qword_1EDC6E2A0, v116, sub_1B9F0CC94);
          sub_1B9F0E0A0(v123, &qword_1EDC6E440, v201, sub_1B9F0CC94);
          sub_1B9F0E0A0(v203, &qword_1EDC6E2A0, v116, sub_1B9F0CC94);
          v124 = *(v208 + 1);
          v125 = v206;
          v124(v196, v206);
          v124(v202, v125);
          v98 = v183;
          v94 = v187;
          v96 = v207;
          goto LABEL_23;
        }

        v79 = v208;
        (*(v208 + 1))(v202, v75);
      }

      sub_1B9F0E0A0(v77, &qword_1EDC6E440, MEMORY[0x1E6969530], sub_1B9F0CC94);
      v93 = v207;
      v94 = v187;
      v190(v207, *MEMORY[0x1E69A2BA0], v187);
      v95 = v197;
      sub_1BA4A70D8();
      v96 = v93;
      v184(v93, v94);
      if (v74(v95, 1, v78) == 1)
      {
        sub_1B9F0E0A0(v95, &qword_1EDC6E440, MEMORY[0x1E6969530], sub_1B9F0CC94);
        v97 = 0;
        v98 = v183;
      }

      else
      {
        v99 = v198;
        (*(v79 + 4))(v198, v95, v78);
        v100 = v204;
        (*(v79 + 2))(v204, v99, v78);
        (*(v79 + 7))(v100, 0, 1, v78);
        v101 = MEMORY[0x1E6969530];
        v102 = v199;
        sub_1BA41F398(v100, v199, &qword_1EDC6E440, MEMORY[0x1E6969530]);
        v103 = sub_1BA4A0FA8();
        (*(*(v103 - 8) + 56))(v203, 1, 1, v103);
        v104 = type metadata accessor for ChartContext(0);
        v105 = objc_allocWithZone(v104);
        v106 = &v105[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
        *v106 = 0;
        v106[8] = 1;
        v107 = &v105[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
        *v107 = 0;
        v107[8] = 1;
        v108 = &v105[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
        *v108 = 0;
        v108[8] = 1;
        sub_1BA41F398(v102, &v105[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, v101);
        v202 = MEMORY[0x1E6968130];
        v109 = v203;
        sub_1BA41F398(v203, &v105[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
        *v106 = 0;
        v106[8] = 1;
        v98 = v183;
        *v107 = 0;
        v107[8] = 0;
        v96 = v207;
        *v108 = 0;
        v108[8] = 0;
        v211.receiver = v105;
        v211.super_class = v104;
        v97 = objc_msgSendSuper2(&v211, sel_init);
        sub_1B9F0E0A0(v204, &qword_1EDC6E440, v101, sub_1B9F0CC94);
        (*(v208 + 1))(v198, v206);
        v110 = v109;
        v94 = v187;
        sub_1B9F0E0A0(v110, &qword_1EDC6E2A0, v202, sub_1B9F0CC94);
        sub_1B9F0E0A0(v199, &qword_1EDC6E440, v101, sub_1B9F0CC94);
      }

LABEL_23:
      v190(v96, *MEMORY[0x1E69A2B90], v94);
      v126 = sub_1BA4A35E8();
      v128 = v127;
      v184(v96, v94);
      v129 = v188;
      v130 = [v188 userInfo];
      if (v130)
      {
        v131 = v130;
        v132 = sub_1BA4A6628();

        v222 = v126;
        v223 = v128;

        sub_1BA4A7D58();
        v133 = v97;
        if (*(v132 + 16) && (v134 = sub_1B9FDA8E4(&v224), (v135 & 1) != 0))
        {
          sub_1B9F0AD9C(*(v132 + 56) + 32 * v134, &v215);
          sub_1B9FDC768(&v224);

          if (*(&v216 + 1))
          {
            if (swift_dynamicCast())
            {
              v207 = sub_1BA44ED94(v224, *(&v224 + 1));
              if (v136)
              {
                *&v224 = 0;
                *(&v224 + 1) = 0xE000000000000000;
                sub_1BA4A7DF8();

                *&v224 = 0xD000000000000012;
                *(&v224 + 1) = 0x80000001BA5090E0;
                MEMORY[0x1BFAF1350](v126, v128);

                MEMORY[0x1BFAF1350](0xD000000000000012, 0x80000001BA509100);
                v137 = v224;
                v6 = v192;
                sub_1BA4A3DD8();

                v138 = sub_1BA4A3E88();
                v139 = sub_1BA4A6FA8();

                if (os_log_type_enabled(v138, v139))
                {
                  v6 = swift_slowAlloc();
                  v208 = swift_slowAlloc();
                  *&v215 = v208;
                  *v6 = 136315394;
                  *(v6 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v215);
                  *(v6 + 6) = 2082;
                  v224 = v137;
                  LOBYTE(v225) = 1;

                  v140 = sub_1BA4A6808();
                  v142 = sub_1B9F0B82C(v140, v141, &v215);

                  *(v6 + 14) = v142;
                  _os_log_impl(&dword_1B9F07000, v138, v139, "[%s]: %{public}s", v6, 0x16u);
                  v143 = v208;
                  swift_arrayDestroy();
                  MEMORY[0x1BFAF43A0](v143, -1, -1);
                  MEMORY[0x1BFAF43A0](v6, -1, -1);

                  (*(v209 + 8))(v192, v232);
                }

                else
                {

                  (*(v209 + 8))(v6, v232);
                }

                sub_1B9FCB51C();
                swift_allocError();
                *v167 = v137;
                *(v167 + 16) = 1;
                swift_willThrow();

                return v6;
              }

              if (v97)
              {
              }

              else
              {
                v168 = v204;
                (*(v208 + 7))(v204, 1, 1, v206);
                v208 = MEMORY[0x1E6969530];
                v169 = v199;
                sub_1BA41F398(v168, v199, &qword_1EDC6E440, MEMORY[0x1E6969530]);
                v170 = sub_1BA4A0FA8();
                v171 = v203;
                (*(*(v170 - 8) + 56))(v203, 1, 1, v170);
                v172 = type metadata accessor for ChartContext(0);
                v173 = objc_allocWithZone(v172);
                v174 = &v173[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
                *v174 = 0;
                v174[8] = 1;
                v175 = &v173[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
                *v175 = 0;
                v175[8] = 1;
                v176 = &v173[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
                *v176 = 0;
                v176[8] = 1;

                v177 = v208;
                sub_1BA41F398(v169, &v173[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, v208);
                v178 = MEMORY[0x1E6968130];
                sub_1BA41F398(v171, &v173[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
                *v174 = 0;
                v174[8] = 1;
                *v175 = 0;
                v175[8] = 0;
                v98 = v183;
                *v176 = 0;
                v176[8] = 0;
                v212.receiver = v173;
                v212.super_class = v172;
                v133 = objc_msgSendSuper2(&v212, sel_init);
                sub_1B9F0E0A0(v204, &qword_1EDC6E440, v177, sub_1B9F0CC94);
                v179 = v178;
                v129 = v188;
                sub_1B9F0E0A0(v171, &qword_1EDC6E2A0, v179, sub_1B9F0CC94);
                sub_1B9F0E0A0(v199, &qword_1EDC6E440, v177, sub_1B9F0CC94);
              }

              v180 = &v133[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
              *v180 = v207;
              v180[8] = 0;
            }

            else
            {
            }

            goto LABEL_35;
          }
        }

        else
        {

          sub_1B9FDC768(&v224);
          v215 = 0u;
          v216 = 0u;
        }
      }

      else
      {

        v215 = 0u;
        v216 = 0u;
        v133 = v97;
      }

      sub_1B9F0E0A0(&v215, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, sub_1B9F23398);
LABEL_35:
      v144 = v205;
      sub_1BA4A3DD8();
      v145 = sub_1BA4A3E88();
      v146 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *&v215 = v148;
        *v147 = 136315138;
        if (v133)
        {
          v149 = v133;
          v150 = [v133 description];
          v151 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v133 = v152;

          v129 = v188;
        }

        else
        {
          v149 = 0;
          v151 = 0;
        }

        *&v224 = v151;
        *(&v224 + 1) = v133;
        sub_1B9F23398(0, &qword_1EDC6E410, MEMORY[0x1E69E6158]);
        v153 = sub_1BA4A6808();
        v155 = sub_1B9F0B82C(v153, v154, &v215);

        *(v147 + 4) = v155;
        _os_log_impl(&dword_1B9F07000, v145, v146, "[User Activity] Creating chart context %s", v147, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v148);
        MEMORY[0x1BFAF43A0](v148, -1, -1);
        MEMORY[0x1BFAF43A0](v147, -1, -1);

        (*(v209 + 8))(v205, v232);
        v133 = v149;
        v98 = v183;
      }

      else
      {

        (*(v209 + 8))(v144, v232);
      }

      v156 = v200;
      v157 = *(v200 + 40);
      sub_1B9F0A534(v200, &v222);
      v158 = v157;
      v159 = [v158 profileIdentifier];
      LOBYTE(v224) = 15;
      v160 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v159, &v224);

      sub_1B9F0A534(v156 + 64, v221);
      sub_1B9F0A534(&v222, &v215);
      *(&v217 + 1) = v158;
      LOBYTE(v218) = v160;
      sub_1BA4A2488();
      swift_allocObject();
      v161 = v133;
      v162 = v129;
      v163 = v158;
      *(&v218 + 1) = sub_1BA4A2468();
      sub_1BA10F7B4(v221, &v213);
      if (v214)
      {

        sub_1B9F43A50(v221, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
        __swift_destroy_boxed_opaque_existential_1(&v222);
        sub_1B9F1134C(&v213, &v224);
      }

      else
      {
        v164 = sub_1BA4A22B8();
        v165 = sub_1BA4A22A8();
        *(&v225 + 1) = v164;
        *&v226 = MEMORY[0x1E69A3CF8];
        *&v224 = v165;
        sub_1B9F43A50(v221, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
        __swift_destroy_boxed_opaque_existential_1(&v222);
        if (v214)
        {
          sub_1B9F43A50(&v213, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
        }
      }

      sub_1B9F1134C(&v224, v219);
      *(&v220 + 1) = v133;
      v228 = v219[0];
      v229 = v219[1];
      v224 = v215;
      v225 = v216;
      v226 = v217;
      v227 = v218;
      v231 = v129;
      v230 = v220;
      v166 = v182;
      v6 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)(v182, &v224);

      sub_1BA114E30(&v224);
      return v6;
    }
  }

LABEL_12:
  sub_1BA4A3DD8();
  v80 = sub_1BA4A3E88();
  v81 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v215 = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v215);
    *(v82 + 12) = 2082;
    *&v224 = 0xD000000000000033;
    *(&v224 + 1) = 0x80000001BA509080;
    LOBYTE(v225) = 1;
    v84 = sub_1BA4A6808();
    v86 = sub_1B9F0B82C(v84, v85, &v215);

    *(v82 + 14) = v86;
    _os_log_impl(&dword_1B9F07000, v80, v81, "[%s]: %{public}s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v83, -1, -1);
    MEMORY[0x1BFAF43A0](v82, -1, -1);
  }

  (*(v209 + 8))(v6, v232);
  sub_1B9FCB51C();
  swift_allocError();
  *v87 = 0xD000000000000033;
  *(v87 + 8) = 0x80000001BA509080;
  *(v87 + 16) = 1;
  swift_willThrow();
  return v6;
}

uint64_t HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA44E2F0(a2, a3, v31);
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
        *(v20 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v34);
        *(v20 + 12) = 2082;
        v28 = a2;
        v29 = a3;
        v30 = 0;

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
      sub_1B9FCB51C();
      a4 = swift_allocError();
      *v25 = a2;
      *(v25 + 8) = a3;
      *(v25 + 16) = 0;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  return a4;
}

void *HKTDataTypeDetailFactory.createViewController(hkType:configurationProvider:context:)(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 8))(v13, a1, v6, v7);
  if (!v3)
  {
    v8 = DataTypeDetailConfiguration.makeDataSource(context:)(a3);

    sub_1BA114D9C(a3, v13);
    v9 = objc_allocWithZone(type metadata accessor for DataTypeDetailViewController());
    v10 = a1;
    sub_1BA32A8A0(v8, v13, v10);
    a1 = v11;
  }

  return a1;
}

double sub_1BA44E2F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    sub_1BA2FCEE4(&v32);

    if (v34)
    {
      sub_1B9F1134C(&v32, v30);
    }

    else
    {
      sub_1B9F43A50(&v32, &qword_1EBBF0610, &qword_1EDC65730, &protocol descriptor for PluginDetailViewProviding);
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
        *(v21 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v35);
        *(v21 + 12) = 2082;
        *&v32 = v14;
        *(&v32 + 1) = v18;
        v33 = 2;

        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v35);

        *(v21 + 14) = v25;
        _os_log_impl(&dword_1B9F07000, v19, v20, "[%s]: PluginDetailViewProviding Error: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v22, -1, -1);
        MEMORY[0x1BFAF43A0](v21, -1, -1);
      }

      (*(v28 + 8))(v8, v29);
      sub_1B9FCB51C();
      swift_allocError();
      *v26 = v14;
      *(v26 + 8) = v18;
      *(v26 + 16) = 2;
      swift_willThrow();
    }
  }

  return result;
}

double sub_1BA44E67C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    sub_1BA2FD600(&v32);

    if (v34)
    {
      sub_1B9F1134C(&v32, v30);
    }

    else
    {
      sub_1B9F43A50(&v32, &qword_1EBBF05F0, &qword_1EBBF05E8, &protocol descriptor for PluginCategoryViewProviding);
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
        *(v21 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA5048D0, &v35);
        *(v21 + 12) = 2082;
        *&v32 = v14;
        *(&v32 + 1) = v18;
        v33 = 2;

        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v35);

        *(v21 + 14) = v25;
        _os_log_impl(&dword_1B9F07000, v19, v20, "[%s]: PluginDetailViewProviding Error: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v22, -1, -1);
        MEMORY[0x1BFAF43A0](v21, -1, -1);
      }

      (*(v28 + 8))(v8, v29);
      sub_1B9FCB51C();
      swift_allocError();
      *v26 = v14;
      *(v26 + 8) = v18;
      *(v26 + 16) = 2;
      swift_willThrow();
    }
  }

  return result;
}

double sub_1BA44EA08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    sub_1BA2FE438(&v32);

    if (v34)
    {
      sub_1B9F1134C(&v32, v30);
    }

    else
    {
      sub_1B9F43A50(&v32, &qword_1EBBF05D8, &qword_1EBBF05D0, &protocol descriptor for PluginMeasureDetailViewProviding);
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
        *(v21 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v35);
        *(v21 + 12) = 2082;
        *&v32 = v14;
        *(&v32 + 1) = v18;
        v33 = 2;

        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v35);

        *(v21 + 14) = v25;
        _os_log_impl(&dword_1B9F07000, v19, v20, "[%s]: PluginDetailViewProviding Error: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v22, -1, -1);
        MEMORY[0x1BFAF43A0](v21, -1, -1);
      }

      (*(v28 + 8))(v8, v29);
      sub_1B9FCB51C();
      swift_allocError();
      *v26 = v14;
      *(v26 + 8) = v18;
      *(v26 + 16) = 2;
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1BA44ED94(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1BA4A7EB8();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_1BA3BA4C0(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *HKTDataTypeDetailFactory.createViewController(measure:configurationProvider:context:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  result = (*(v7 + 16))(v11, a1, v6, v7);
  if (!v3)
  {
    v9 = DataTypeDetailConfiguration.makeDataSource(context:)(a3);

    type metadata accessor for DataTypeDetailViewController();
    sub_1BA114D9C(a3, v11);
    sub_1B9F0A534(a1, v10);
    return DataTypeDetailViewController.__allocating_init(dataSource:context:measure:)(v9, v11, v10);
  }

  return result;
}

uint64_t HKTDataTypeDetailFactory.createViewController(measure:pluginName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA44EA08(a2, a3, v31);
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
        *(v20 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA5090C0, &v34);
        *(v20 + 12) = 2082;
        v28 = a2;
        v29 = a3;
        v30 = 0;

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
      sub_1B9FCB51C();
      a4 = swift_allocError();
      *v25 = a2;
      *(v25 + 8) = a3;
      *(v25 + 16) = 0;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  return a4;
}

void *HealthChecklistDataSource.init(featureName:source:sendAnalyticsEvent:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v50 = a1;
  v8 = sub_1BA4A2A88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v51 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - v18;
  v21 = *a3;
  v20 = a3[1];
  v22 = &v4[OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent];
  v23 = type metadata accessor for HealthChecklistDataSource();
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  v53.receiver = v4;
  v53.super_class = v23;
  v24 = objc_msgSendSuper2(&v53, sel_init);
  v25 = v24;
  if (v20 == 4)
  {
  }

  else
  {
    v49 = a2;
    if (a4)
    {
      v26 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x58);
      v46 = v9;
      v48 = v24;
      v26();
      sub_1BA4A2F48();
      v45 = sub_1BA4A2F38();
      v43 = sub_1BA4A2F28();
      v27 = *(v9 + 16);
      v27(v15, v19, v8);
      v28 = v51;
      v27(v51, v19, v8);
      sub_1BA1DBD2C(v21, v20);
      sub_1BA4A2A68();
      v47 = sub_1BA4A6758();

      sub_1BA4A2A68();
      v44 = sub_1BA4A6758();

      sub_1BA1DBD44();
      v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LOBYTE(v26) = v43;
      v41 = [v29 initWithBool_];
      v50 = sub_1BA4A6758();

      *&v52[0] = v21;
      *(&v52[0] + 1) = v20;
      sub_1BA1DB8CC(v26 & 1);
      sub_1BA44F84C(v21, v20);
      v30 = sub_1BA4A6758();

      v31 = *(v46 + 8);
      v31(v28, v8);
      v31(v15, v8);
      v31(v19, v8);
      v32 = v48;
      v33 = (v48 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent);
      v34 = *(v48 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 32);
      v35 = *(v48 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 48);
      v36 = *(v48 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 16);
      v52[0] = *(v48 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent);
      v52[1] = v36;
      v52[2] = v34;
      v52[3] = v35;
      *v33 = v50;
      v33[1] = v30;
      v37 = v44;
      v33[2] = v47;
      v33[3] = v37;
      v38 = v41;
      v33[4] = v42;
      v33[5] = v38;
      v33[6] = v21;
      v33[7] = v20;
      sub_1BA44F85C(v52);
    }

    else
    {

      sub_1BA44F84C(v21, v20);
    }
  }

  return v25;
}

double sub_1BA44F84C(uint64_t a1, uint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1BA1DBD9C(a1, a2);
  }

  return result;
}

uint64_t sub_1BA44F85C(uint64_t a1)
{
  sub_1BA44F8B8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA44F8B8()
{
  if (!qword_1EBBF2C50)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2C50);
    }
  }
}

void sub_1BA44F908()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A2A88();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 16);
  v63 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent);
  v64 = v12;
  v13 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 48);
  v65 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25HealthChecklistDataSource_analyticsEvent + 32);
  v66 = v13;
  if (v63)
  {
    v48 = v3;
    v49 = v2;
    v50 = v63;
    v51 = *(&v66 + 1);
    v52 = v66;
    v43 = ObjectType;
    v44 = v65;
    v14 = v64;
    v46 = *(&v65 + 1);
    v47 = *(&v64 + 1);
    v45 = *(&v63 + 1);
    v15 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
    sub_1BA45011C(&v63, &v59);
    v16 = v14;
    v15();
    v17 = v6;
    v18 = v51;
    sub_1BA4A2A68();
    (*(v8 + 8))(v11, v7);
    v19 = sub_1BA4A6758();

    v20 = v19;

    sub_1BA0B2740();
    LOBYTE(v19) = sub_1BA4A7798();
    v47 = v16;

    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    sub_1BA4A2F48();
    sub_1BA4A2F38();
    v22 = sub_1BA4A2F28();

    v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];

    *&v59 = v52;
    *(&v59 + 1) = v18;
    v24 = [v23 BOOLValue];
    sub_1BA1DB8CC(v24);
    sub_1BA1DBD9C(v59, *(&v59 + 1));
    v46 = sub_1BA4A6758();

    sub_1BA4A3E58();
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v59 = v28;
      *v27 = 136315394;
      v29 = sub_1BA4A85D8();
      v45 = v17;
      v31 = v21;
      v32 = sub_1B9F0B82C(v29, v30, &v59);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      swift_beginAccess();
      v34 = qword_1EBBEDEA0;
      v33 = off_1EBBEDEA8;

      v35 = sub_1B9F0B82C(v34, v33, &v59);
      v21 = v31;

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%s]: Submitting %s analytics event (in|active)", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);

      (*(v48 + 8))(v45, v49);
    }

    else
    {

      (*(v48 + 8))(v17, v49);
    }

    v36 = v50;
    v37 = v51;
    v39 = v46;
    v38 = v47;
    *&v54 = v50;
    *(&v54 + 1) = v46;
    *&v55 = v47;
    *(&v55 + 1) = v20;
    *&v56 = v21;
    *(&v56 + 1) = v23;
    v40 = v52;
    *&v57 = v52;
    *(&v57 + 1) = v51;
    v59 = v54;
    v60 = v55;
    v61 = v56;
    v62 = v57;
    v41 = sub_1BA4A29B8();
    sub_1BA450180(&v54, v58);
    v42 = sub_1BA4A29A8();
    v53[3] = v41;
    v53[4] = MEMORY[0x1E69A3198];
    v53[0] = v42;
    sub_1BA0C33E0();
    sub_1BA4A2B58();
    v58[0] = v59;
    v58[1] = v60;
    v58[2] = v61;
    v58[3] = v62;
    sub_1BA0C3434(v58);
    __swift_destroy_boxed_opaque_existential_1(v53);
    *&v59 = v36;
    *(&v59 + 1) = v39;
    *&v60 = v38;
    *(&v60 + 1) = v20;
    *&v61 = v21;
    *(&v61 + 1) = v23;
    *&v62 = v40;
    *(&v62 + 1) = v37;
    sub_1BA0C3434(&v59);
  }
}

id HealthChecklistDataSource.__deallocating_deinit()
{
  sub_1BA44F908();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthChecklistDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id HealthChecklistDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double sub_1BA450094(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {

    return sub_1BA1DBD9C(a7, a8);
  }

  return result;
}

uint64_t sub_1BA45011C(uint64_t a1, uint64_t a2)
{
  sub_1BA44F8B8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA4501DC(uint64_t a1, CGContext *a2)
{
  v35.receiver = v2;
  v35.super_class = type metadata accessor for PDFWithCustomFooterTextPage();
  objc_msgSendSuper2(&v35, sel_drawWithBox_toContext_, a1, a2);
  UIGraphicsPushContext(a2);
  CGContextSaveGState(a2);
  [v2 boundsForBox_];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  CGContextTranslateCTM(a2, 0.0, v11);
  CGContextScaleCTM(a2, 1.0, -1.0);
  v13 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EBBEE758, 0x1E69C5A28);
  v14 = sub_1BA4A6AE8();
  v15 = [v13 bestPaperForPageSize:v14 withPapersFromArray:{612.0, 792.0}];

  [v15 paperSize];
  v36.origin.x = v6;
  v36.origin.y = v8;
  v36.size.width = v10;
  v36.size.height = v12;
  v16 = CGRectGetMinX(v36) + 36.0;
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  MaxX = CGRectGetMaxX(v37);
  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  v18 = CGRectGetMaxY(v38) + -36.0;
  _s18HealthExperienceUI11PDFDefaultsO6FooterO05appleA6StringSo012NSAttributedG0CvgZ_0();
  v20 = v19;
  [v19 size];
  [v20 drawAtPoint_];
  v22 = [v2 pageRef];
  if (v22)
  {
    v23 = v22;
    PageNumber = CGPDFPageGetPageNumber(v22);

    v25 = [v2 document];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 pageCount];

      v28 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x50))(PageNumber, v27);
      type metadata accessor for Key(0);
      sub_1BA4515D8(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
      v29 = sub_1BA4A6618();
      [v28 sizeWithAttributes_];
      v31 = v30;
      v33 = v32;

      v34 = sub_1BA4A6618();

      [v28 drawAtPoint:v34 withAttributes:{MaxX + -36.0 - v31, v18 - v33}];
    }
  }

  CGContextRestoreGState(a2);
  UIGraphicsPopContext();
}

uint64_t sub_1BA4505E8()
{
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
  v0 = sub_1BA4A77C8("", 0, 2);
  sub_1B9FDB1C4(MEMORY[0x1E69E7CC0]);
  return v0;
}

Swift::tuple_NSString_OpaquePointer __swiftcall PDFPageNumberedPage.footerString(pageNumber:pageCount:)(Swift::Int pageNumber, Swift::Int pageCount)
{
  _s18HealthExperienceUI11PDFDefaultsO6FooterO19pageIndicatorString0F6Number0F5CountSSSi_SitFZ_0(pageNumber, pageCount);
  v2 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v3 = sub_1BA4A6758();

  v4 = [v2 initWithString_];

  v5 = _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
  v6 = v4;
  result._1._rawValue = v5;
  result._0 = v6;
  return result;
}

id PDFPageNumberedPage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PDFPageNumberedPage.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1BA4507F4(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  type metadata accessor for ImageInitializationOption(0);
  sub_1BA4515D8(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption, &unk_1BA4B43C4);
  v5 = sub_1BA4A6618();

  v6 = [v4 initWithImage:a1 options:v5];

  return v6;
}

id PDFPageNumberedPage.init(image:options:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for ImageInitializationOption(0);
  sub_1BA4515D8(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption, &unk_1BA4B43C4);
  v5 = sub_1BA4A6618();

  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithImage_options_, a1, v5);

  if (v6)
  {
  }

  return v6;
}

id PDFPageNumberedPage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA450AF8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
  v0 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v1 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA4515D8(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
  v2 = sub_1BA4A6618();

  v3 = [v0 initWithString:v1 attributes:{v2, 0xE000000000000000}];

  return v3;
}

id sub_1BA450CA4(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for ImageInitializationOption(0);
  sub_1BA4515D8(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption, &unk_1BA4B43C4);
  v6 = sub_1BA4A6618();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithImage_options_, a1, v6);

  if (v8)
  {
  }

  return v8;
}

id sub_1BA450DA8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for ImageInitializationOption(0);
  sub_1BA4515D8(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption, &unk_1BA4B43C4);
  sub_1BA4A6628();
  v8 = a3;
  v9 = sub_1BA4A6618();

  v13.receiver = a1;
  v13.super_class = a5(v10);
  v11 = objc_msgSendSuper2(&v13, sel_initWithImage_options_, v8, v9);

  if (v11)
  {
  }

  return v11;
}

id sub_1BA450EDC()
{
  v1 = [v0 pageRef];
  if (v1 && (v2 = v1, PageNumber = CGPDFPageGetPageNumber(v1), v2, (v4 = [v0 document]) != 0))
  {
    v5 = v4;
    v6 = [v4 pageCount];

    _s18HealthExperienceUI11PDFDefaultsO6FooterO19pageIndicatorString0F6Number0F5CountSSSi_SitFZ_0(PageNumber, v6);
    _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
    v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v8 = sub_1BA4A6758();
  }

  else
  {
    _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
    v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v8 = sub_1BA4A6758();
  }

  type metadata accessor for Key(0);
  sub_1BA4515D8(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
  v9 = sub_1BA4A6618();

  v10 = [v7 initWithString:v8 attributes:v9];

  return v10;
}

void sub_1BA4510BC(uint64_t a1, CGContext *a2)
{
  v41.receiver = v2;
  v41.super_class = type metadata accessor for PDFPageAlignedNumberedPageWithCustomNotice();
  objc_msgSendSuper2(&v41, sel_drawWithBox_toContext_, a1, a2);
  v5 = sub_1BA450EDC();
  [v5 size];
  rect_8 = v6;
  rect_24 = v7;
  _s18HealthExperienceUI11PDFDefaultsO6FooterO05appleA6StringSo012NSAttributedG0CvgZ_0();
  v9 = v8;
  v10 = [v8 size];
  rect_16 = v11;
  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x50))(v10);
  UIGraphicsPushContext(a2);
  CGContextSaveGState(a2);
  [v2 boundsForBox_];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  CGContextTranslateCTM(a2, 0.0, v20);
  CGContextScaleCTM(a2, 1.0, -1.0);
  v22 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EBBEE758, 0x1E69C5A28);
  v23 = sub_1BA4A6AE8();
  v24 = [v22 bestPaperForPageSize:v23 withPapersFromArray:{612.0, 792.0}];

  [v24 paperSize];
  v42.origin.x = v15;
  v42.origin.y = v17;
  v42.size.width = v19;
  v42.size.height = v21;
  MinX = CGRectGetMinX(v42);
  v43.origin.x = v15;
  v43.origin.y = v17;
  v43.size.width = v19;
  v43.size.height = v21;
  v26 = CGRectGetHeight(v43) + -36.0;
  v27 = *((*v12 & *v2) + 0x58);
  rect = v15;
  if (v27())
  {
    v44.origin.x = v15;
    v44.origin.y = v17;
    v44.size.width = v19;
    v44.size.height = v21;
    v28 = [v13 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v44) + -36.0 + -36.0, 1.79769313e308}];
    v30 = v29;
    v32 = v31;
  }

  else
  {
    v28 = [v13 size];
    v30 = v33;
    v32 = v34;
  }

  v35 = MinX + 36.0;
  if ((v27)(v28))
  {
    [v13 drawWithRect:1 options:0 context:{v35, v26 - v32, v30, v32}];
  }

  else
  {
    [v13 drawAtPoint_];
  }

  v36 = v26 - (v32 + 4.0);
  v45.origin.x = rect;
  v45.origin.y = v17;
  v45.size.width = v19;
  v45.size.height = v21;
  [v5 drawAtPoint_];
  [v9 drawAtPoint_];
  CGContextRestoreGState(a2);
  UIGraphicsPopContext();
}

id sub_1BA4514C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1BA451514(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1BA4515A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA4515D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id PDFArticle.title.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  return v2;
}

uint64_t PDFArticle.image.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 80);
  v10 = *(v1 + 64);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 96);
  v6 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1BA4517E8(v9, v8);
}

uint64_t sub_1BA4517E8(uint64_t a1, uint64_t a2)
{
  sub_1BA45184C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA45184C()
{
  if (!qword_1EBBF2C58)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2C58);
    }
  }
}

uint64_t sub_1BA4518A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void PDFArticle.init(title:titleAttributes:image:body:bodyAttributes:spacing:spaceBelowArticleTitle:addLineOfSpaceBelowArticle:)(uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, char a7@<W7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{

  v17 = a5(v16);
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v20 = sub_1BA4A6618();

  v21 = [v18 initWithString:v19 attributes:v20];

  *a8 = v21;
  *(a8 + 8) = 0;
  v22 = *(a4 + 48);
  *(a8 + 48) = *(a4 + 32);
  *(a8 + 64) = v22;
  *(a8 + 80) = *(a4 + 64);
  *(a8 + 96) = *(a4 + 80);
  v23 = *(a4 + 16);
  *(a8 + 16) = *a4;
  *(a8 + 32) = v23;
  v24 = 0;
  *(a8 + 128) = &type metadata for PDFAttributedStrings;
  *(a8 + 136) = &protocol witness table for PDFAttributedStrings;
  *(a8 + 144) = &protocol witness table for PDFAttributedStrings;
  PDFAttributedStrings.init(alignment:lineSplit:items:)(&v24, 1, v17, a8 + 104);
  *(a8 + 152) = a9;
  *(a8 + 160) = a10;
  *(a8 + 168) = a7;
}

void PDFArticle.init(title:titleAttributes:image:body:bodyAttributes:spacing:spaceBelowArticleTitle:addLineOfSpaceBelowArticle:)(uint64_t a4@<X3>, uint64_t a5@<X4>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{

  v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v17 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v18 = sub_1BA4A6618();

  v19 = [v16 initWithString:v17 attributes:v18];

  *a8 = v19;
  *(a8 + 8) = 0;
  v20 = *(a4 + 48);
  *(a8 + 48) = *(a4 + 32);
  *(a8 + 64) = v20;
  *(a8 + 80) = *(a4 + 64);
  *(a8 + 96) = *(a4 + 80);
  v21 = *(a4 + 16);
  *(a8 + 16) = *a4;
  *(a8 + 32) = v21;
  v22 = 0;
  *(a8 + 128) = &type metadata for PDFAttributedStrings;
  *(a8 + 136) = &protocol witness table for PDFAttributedStrings;
  *(a8 + 144) = &protocol witness table for PDFAttributedStrings;
  PDFAttributedStrings.init(alignment:lineSplit:items:)(&v22, 1, a5, a8 + 104);
  *(a8 + 152) = a9;
  *(a8 + 160) = a10;
  *(a8 + 168) = a7;
}

void PDFArticle.render(context:document:)(objc_class *a1, uint64_t a2)
{
  sub_1BA3265EC();
  v5 = *(v2 + 160);
  v55.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  v10 = CGRectGetMinX(v55) + 0.0;
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v11 = v5 + CGRectGetMinY(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v12 = CGRectGetWidth(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v13 = CGRectGetHeight(v58);
  *(a2 + 168) = v10;
  *(a2 + 176) = v11;
  *(a2 + 184) = v12;
  *(a2 + 192) = v13 - v5;
  *(a2 + 200) = 0;
  v14 = *(v2 + 64);
  v53[2] = *(v2 + 48);
  v53[3] = v14;
  v53[4] = *(v2 + 80);
  v54 = *(v2 + 96);
  v15 = *(v2 + 32);
  v53[0] = *(v2 + 16);
  v53[1] = v15;
  if (v15)
  {
    v47 = *(v2 + 40);
    v48 = *(v2 + 56);
    v49 = *(v2 + 72);
    v50 = *(v2 + 88);
    v16 = *(v2 + 64);
    v51[2] = *(v2 + 48);
    v51[3] = v16;
    v51[4] = *(v2 + 80);
    v17 = *(v2 + 32);
    v45 = *(v2 + 16);
    v46 = v15;
    v52 = *(v2 + 96);
    v51[0] = v45;
    v51[1] = v17;
    sub_1BA326508(v51, v44);
    PDFImage.render(context:document:)(a1, a2);
    v18 = *(v2 + 152);
    v19 = *(a2 + 168);
    v20 = *(a2 + 176);
    v21 = *(a2 + 184);
    v22 = *(a2 + 192);
    v59.origin.x = v19;
    v59.origin.y = v20;
    v59.size.width = v21;
    v59.size.height = v22;
    v23 = CGRectGetMinX(v59) + 0.0;
    v60.origin.x = v19;
    v60.origin.y = v20;
    v60.size.width = v21;
    v60.size.height = v22;
    v24 = v18 + CGRectGetMinY(v60);
    v61.origin.x = v19;
    v61.origin.y = v20;
    v61.size.width = v21;
    v61.size.height = v22;
    v25 = CGRectGetWidth(v61);
    v62.origin.x = v19;
    v62.origin.y = v20;
    v62.size.width = v21;
    v62.size.height = v22;
    v26 = CGRectGetHeight(v62);
    sub_1BA451F28(v53);
    *(a2 + 168) = v23;
    *(a2 + 176) = v24;
    *(a2 + 184) = v25;
    *(a2 + 192) = v26 - v18;
    *(a2 + 200) = 0;
  }

  v27 = *(v2 + 128);
  v28 = *(v2 + 144);
  __swift_project_boxed_opaque_existential_1((v2 + 104), v27);
  (*(v28 + 16))(a1, a2, v27, v28);
  if (*(v2 + 168) == 1)
  {
    v29 = *(v2 + 128);
    v30 = *(v2 + 136);
    __swift_project_boxed_opaque_existential_1((v2 + 104), v29);
    v31 = (*(v30 + 8))(v29, v30);
    NSAttributedString.font.getter();
    v33 = v32;

    if (v33)
    {
      [v33 lineHeight];
      v35 = v34;

      v36 = *(a2 + 168);
      v37 = *(a2 + 176);
      v38 = *(a2 + 184);
      v39 = *(a2 + 192);
      v63.origin.x = v36;
      v63.origin.y = v37;
      v63.size.width = v38;
      v63.size.height = v39;
      v40 = CGRectGetMinX(v63) + 0.0;
      v64.origin.x = v36;
      v64.origin.y = v37;
      v64.size.width = v38;
      v64.size.height = v39;
      v41 = v35 + CGRectGetMinY(v64);
      v65.origin.x = v36;
      v65.origin.y = v37;
      v65.size.width = v38;
      v65.size.height = v39;
      v42 = CGRectGetWidth(v65);
      v66.origin.x = v36;
      v66.origin.y = v37;
      v66.size.width = v38;
      v66.size.height = v39;
      v43 = CGRectGetHeight(v66);
      *(a2 + 168) = v40;
      *(a2 + 176) = v41;
      *(a2 + 184) = v42;
      *(a2 + 192) = v43 - v35;
      *(a2 + 200) = 0;
    }
  }
}

uint64_t sub_1BA451F28(uint64_t a1)
{
  sub_1BA45184C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double PDFArticle.boundingRectForContent(in:)(uint64_t a1)
{
  v2 = v1;
  v44 = *MEMORY[0x1E69E9840];
  sub_1BA281A54(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  *(inited + 56) = &type metadata for PDFArticleTitle;
  *(inited + 64) = &protocol witness table for PDFArticleTitle;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 41) = v7;
  v8 = *(v1 + 128);
  v9 = *(v2 + 144);
  v10 = __swift_project_boxed_opaque_existential_1((v2 + 104), v8);
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  v12 = *(v2 + 64);
  v37[2] = *(v2 + 48);
  v37[3] = v12;
  v37[4] = *(v2 + 80);
  v38 = *(v2 + 96);
  v13 = *(v2 + 32);
  v37[0] = *(v2 + 16);
  v37[1] = v13;
  v14 = v13;
  v15 = *(v2 + 40);
  v16 = *(v2 + 56);
  v17 = *(v2 + 72);
  v42 = *(v2 + 88);
  v43 = v37[0];
  v40 = v16;
  v41 = v17;
  v39 = v15;
  v18 = v5;
  if (v14)
  {
    sub_1BA4517E8(v37, &v34);
    inited = sub_1BA27FAAC(1, 3, 1, inited);
    v35 = &type metadata for PDFImage;
    v36 = &protocol witness table for PDFImage;
    v19 = swift_allocObject();
    *&v34 = v19;
    *(v19 + 16) = v43;
    *(v19 + 32) = v14;
    v20 = v40;
    *(v19 + 40) = v39;
    *(v19 + 56) = v20;
    v21 = v42;
    *(v19 + 72) = v41;
    *(v19 + 88) = v21;
    *(inited + 16) = 3;
    sub_1B9F25598(&v34, inited + 112);
  }

  v22 = *(inited + 16);
  if (v22)
  {
    v23 = inited + 32;
    v24 = 0.0;
    do
    {
      sub_1B9F0A534(v23, &v34);
      v25 = v35;
      v26 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v45.origin.x = (v26[3])(a1, v25, v26);
      v24 = v24 + CGRectGetHeight(v45);
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v23 += 40;
      --v22;
    }

    while (v22);

    if ((*(v2 + 168) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if ((*(v2 + 168) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v27 = *(v2 + 128);
  v28 = *(v2 + 136);
  __swift_project_boxed_opaque_existential_1((v2 + 104), v27);
  v29 = (*(v28 + 8))(v27, v28);
  NSAttributedString.font.getter();
  v31 = v30;

  if (v31)
  {
    [v31 lineHeight];
  }

LABEL_11:
  v32 = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(*(a1 + 168));
  return v32;
}

double PDFArticle.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  v2 = v1;
  v29 = *MEMORY[0x1E69E9840];
  sub_1BA281A54(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  *(inited + 56) = &type metadata for PDFArticleTitle;
  *(inited + 64) = &protocol witness table for PDFArticleTitle;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 41) = v7;
  v8 = *(v1 + 32);
  v23 = *(v1 + 16);
  v24 = v8;
  v28 = *(v1 + 96);
  v9 = *(v1 + 80);
  v26 = *(v1 + 64);
  v27 = v9;
  v25 = *(v1 + 48);
  v10 = v24;
  v11 = v5;
  if (v24)
  {
    sub_1BA4517E8(&v23, &v20);
    inited = sub_1BA27FAAC(1, 2, 1, inited);
    v21 = &type metadata for PDFImage;
    v22 = &protocol witness table for PDFImage;
    v12 = swift_allocObject();
    *&v20 = v12;
    *(v12 + 16) = v2[1];
    *(v12 + 32) = v10;
    *(v12 + 40) = *(v2 + 40);
    *(v12 + 56) = *(v2 + 56);
    *(v12 + 72) = *(v2 + 72);
    *(v12 + 88) = *(v2 + 88);
    *(inited + 16) = 2;
    sub_1B9F25598(&v20, inited + 72);
    v13 = *(inited + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = inited + 32;
  v15 = 0.0;
  do
  {
    sub_1B9F0A534(v14, &v20);
    v16 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    v30.origin.x = (v17[4])(a1, v16, v17);
    v15 = v15 + CGRectGetHeight(v30);
    __swift_destroy_boxed_opaque_existential_1(&v20);
    v14 += 40;
    --v13;
  }

  while (v13);
LABEL_7:

  v18 = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(*(a1 + 168));
  return v18;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI8PDFImageVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BA452550(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t sub_1BA452598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA452614(uint64_t a1)
{
  v51 = a1;
  v1 = sub_1BA4A1798();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA452CC0(0);
  v47 = v4;
  *&v45 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - v10;
  v12 = sub_1BA4A33C8();
  v52 = *(v12 - 8);
  v13 = v52;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SummarySharingProfileHeaderCell.Item(0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v13 + 16);
  v22(v16, v51, v12, v19);
  *v21 = 0xD000000000000019;
  v21[1] = 0x80000001BA509460;
  type metadata accessor for SummarySharingProfileHeaderCell();
  sub_1BA4A71C8();
  v23 = v21 + *(v17 + 20);
  v46 = v12;
  (v22)(v23, v16, v12);
  v24 = v45;
  v25 = v47;
  (*(v45 + 16))(v7, v11, v47);
  v26 = sub_1BA452D28();
  sub_1BA4A3468();
  (*(v24 + 8))(v11, v25);
  v27 = *(v52 + 8);
  v52 += 8;
  v47 = v27;
  v27(v16, v12);
  sub_1BA4A3428();
  swift_storeEnumTagMultiPayload();
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v45 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360(0);
  v29 = swift_allocObject();
  *(v29 + 16) = v45;
  *(v29 + 56) = v17;
  *(v29 + 64) = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v29 + 32));
  v31 = v21;
  sub_1BA452D80(v21, boxed_opaque_existential_1);
  v32 = v48;
  sub_1BA4A1788();
  v33 = sub_1BA4A1748();
  v35 = v34;
  v36 = v50;
  v37 = *(v49 + 8);
  v37(v32, v50);
  v38 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v38);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v29;
  v39 = Array<A>.identifierToIndexDict()(v29);

  *(inited + 56) = v39;
  *(inited + 64) = v33;
  *(inited + 72) = v35;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v53, "MutableArray<");
  HIWORD(v53[1]) = -4864;
  sub_1BA4A1788();
  v40 = sub_1BA4A1748();
  v42 = v41;
  v37(v32, v36);
  MEMORY[0x1BFAF1350](v40, v42);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v43 = MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v53[0], v53[1]);
  v47(v51, v46);
  sub_1BA452DE4(v31);
  return v43;
}

uint64_t sub_1BA452B50()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingProfileHeaderDataSource(uint64_t a1)
{
  result = qword_1EBBF2C60;
  if (!qword_1EBBF2C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA452CC0(uint64_t a1)
{
  if (!qword_1EBBF2C70)
  {
    type metadata accessor for SummarySharingProfileHeaderCell();
    type metadata accessor for SummarySharingProfileHeaderCell.Item(255);
    v1 = sub_1BA4A71D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF2C70);
    }
  }
}

unint64_t sub_1BA452D28()
{
  result = qword_1EBBF2C78;
  if (!qword_1EBBF2C78)
  {
    type metadata accessor for SummarySharingProfileHeaderCell.Item(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2C78);
  }

  return result;
}

uint64_t sub_1BA452D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingProfileHeaderCell.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA452DE4(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingProfileHeaderCell.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA452E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  result = a4(a1, a2, a3);
  if (!result)
  {
    sub_1BA4A7DF8();

    v7 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v7);

    MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4EAFF0);
    sub_1B9FF806C();
    swift_allocError();
    *v8 = 91;
    *(v8 + 8) = 0xE100000000000000;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

char *sub_1BA452F28(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  sub_1BA15E094();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 32) = a2;
  v7 = a2;
  v8 = _s18HealthExperienceUI31SearchSectionDataSourceProviderC38makeCategoriesFetchedResultsController7context14sourceProfilesSo09NSFetchedlM0Cy0A8Platform8FeedItemCGSo22NSManagedObjectContextC_SayAI0G7ProfileOGtFZ_0(a1, v6);

  v9 = swift_allocObject();
  *(v9 + 2) = sub_1BA3153B0;
  *(v9 + 3) = 0;
  *(v9 + 4) = ObjectType;
  v10 = (v2 + qword_1EDC61AF0);
  *v10 = sub_1BA4531C8;
  v10[1] = v9;
  v11 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v8);

  return v11;
}

id sub_1BA4530A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileFetchedCategoriesDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProfileFetchedCategoriesDataSource(uint64_t a1)
{
  result = qword_1EBBF2C88;
  if (!qword_1EBBF2C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BA453130@<D0>(uint64_t *a1@<X8>)
{
  if (qword_1EBBE84F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EBBEE338;
  a1[3] = type metadata accessor for HeaderItem(0);
  a1[4] = sub_1BA011754();
  *a1 = v2;

  return result;
}

double sub_1BA453224()
{

  return result;
}

uint64_t sub_1BA4532A4()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA4533B4()
{
  sub_1BA4532A4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedProfileOverviewDataSource(uint64_t a1)
{
  result = qword_1EBBF2CC0;
  if (!qword_1EBBF2CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA4534BC(void *a1, char *a2, void *a3)
{
  v4 = v3;
  v110 = *v4;
  v8 = sub_1BA4A3EA8();
  v115 = *(v8 - 8);
  v116 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v117 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA454158(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v122 = &v110 - v13;
  v14 = sub_1BA4A1798();
  v113 = *(v14 - 8);
  v114 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v111 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v112 = &v110 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v110 - v22;
  type metadata accessor for SharedProfileHeaderDataSource(0);
  v24 = a1;
  v127 = v24;
  v119 = a2;
  v25 = [a2 profileIdentifier];
  v26 = [v25 identifier];

  sub_1BA4A1778();
  v27 = sub_1BA0CDA8C(v24, v23);
  v28 = OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_sharedProfileHeaderDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_sharedProfileHeaderDataSource) = v27;

  v126 = a3;
  v29 = sub_1BA0410CC(a2, a3);
  v31 = v30;
  v33 = v32;

  v129 = MEMORY[0x1E69E6F90];
  sub_1BA454158(0, &qword_1EDC5DB98, sub_1B9F1ABA4, MEMORY[0x1E69E6F90]);
  v123 = v34;
  inited = swift_initStackObject();
  v130 = xmmword_1BA4B5460;
  *(inited + 16) = xmmword_1BA4B5460;
  *(inited + 32) = 1;
  *(inited + 40) = *(v4 + v28);
  *(inited + 48) = &protocol witness table for SingleUserDataDataSource<A>;
  *(inited + 56) = &protocol witness table for MutableArrayDataSource;
  *(inited + 64) = 2;
  *(inited + 72) = v29;
  *(inited + 80) = v31;
  *(inited + 88) = v33;
  v36 = sub_1B9F28D90(inited);
  swift_setDeallocating();
  sub_1B9F1ABA4(0);
  v128 = v37;

  v125 = v29;
  swift_unknownObjectRetain();
  swift_arrayDestroy();
  v121 = v28;
  v38 = *(v4 + v28);
  v120 = type metadata accessor for SizeClassResponsiveDataSource();
  swift_allocObject();

  v124 = sub_1B9F1D348(v36, v38, &protocol witness table for SingleUserDataDataSource<A>, &protocol witness table for MutableArrayDataSource);

  type metadata accessor for UnusedModelsVersionMismatchAlertDataSource(0);
  swift_allocObject();
  v39 = v127;
  v40 = v119;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_platformVersionMismatchDataSource) = UnusedModelsVersionMismatchAlertDataSource.init(context:healthStore:)(v39, v40);
  v41 = v39;
  v42 = sub_1BA4A6F38();
  type metadata accessor for PluginVersionMismatchAlertDataSource(0);
  swift_allocObject();
  v43 = sub_1BA247544(v41, v42);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_pluginVersionMismatchDataSource) = v43;
  sub_1BA4540D4(0);
  swift_allocObject();

  v45 = sub_1BA063F2C(v44, v43);

  v46 = v41;
  v47 = sub_1BA4A6F38();
  v48 = objc_allocWithZone(type metadata accessor for SharedProfileNoticesDataSource(0));
  v49 = MEMORY[0x1E69E7CC0];
  v50 = sub_1BA26C5A4(v46, v47, MEMORY[0x1E69E7CC0]);
  v51 = OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_noticesDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_noticesDataSource) = v50;
  v52 = v46;
  v53 = [v40 profileIdentifier];
  type metadata accessor for SummaryFeedTrendsSectionDataSource(0);
  swift_allocObject();
  v54 = SummaryFeedTrendsSectionDataSource.init(context:sourceProfile:additionalPredicates:significantTrendsDataSourceLoadingCompletion:)(v52, v53, v49, 0, 0);
  v119 = OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_trendsDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_trendsDataSource) = v54;
  v55 = objc_allocWithZone(type metadata accessor for SharedSummariesDataSource(0));
  v56 = v52;
  v57 = v40;
  v58 = sub_1BA20F6B4(v57, v49, v56);
  v118 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v58);

  v127 = v57;
  sub_1BA454158(0, &qword_1EDC5DC70, sub_1BA03A7DC, v129);
  v129 = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1BA4B5480;
  v61 = v45;
  *(v60 + 32) = v45;
  *(v60 + 40) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  v62 = swift_initStackObject();
  *(v62 + 16) = v130;
  *(v62 + 32) = 1;
  v63 = *(v4 + v51);
  *(v62 + 40) = v63;
  *(v62 + 48) = &protocol witness table for FetchedResultsWithLayoutDataSource<A>;
  *(v62 + 56) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  *(v62 + 64) = 2;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();
  v123 = v61;

  v64 = v63;
  *(v62 + 72) = CompoundSectionedDataSource.init(_:)(MEMORY[0x1E69E7CC0]);
  *(v62 + 80) = &protocol witness table for CompoundSectionedDataSource;
  *(v62 + 88) = &protocol witness table for CompoundSectionedDataSource;
  v65 = sub_1B9F28D90(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  v128 = v4;
  v66 = *(v4 + v51);
  swift_allocObject();
  v67 = v66;
  v68 = sub_1B9F1D348(v65, v66, &protocol witness table for FetchedResultsWithLayoutDataSource<A>, &protocol witness table for FetchedResultsControllerDataSource<A>);

  v69 = *(v60 + 16);
  v70 = *(v60 + 24);

  if (v69 >= v70 >> 1)
  {
    v60 = sub_1B9F1E00C();
  }

  *(v60 + 16) = v69 + 1;
  v71 = v60 + 16 * v69;
  *(v71 + 32) = v68;
  *(v71 + 40) = &protocol witness table for SizeClassResponsiveDataSource;
  v132 = v60;
  v72 = swift_initStackObject();
  *(v72 + 16) = v130;
  v73 = v118;
  *(v72 + 32) = *&v119[v128];
  *(v72 + 40) = &protocol witness table for HideableDataSource<A>;
  *(v72 + 48) = v73;
  *(v72 + 56) = &protocol witness table for FetchedResultsControllerDataSource<A>;

  v120 = v73;
  sub_1B9FE20B8(v72);
  v74 = v132;
  swift_allocObject();
  v75 = CompoundSectionedDataSource.init(_:)(v74);
  type metadata accessor for NoDataDataSource(0);
  swift_allocObject();
  v76 = NoDataDataSource.init()();

  v77 = v122;
  sub_1BA0CE620(v122);

  v78 = sub_1BA4A33C8();
  v79 = *(v78 - 8);
  if ((*(v79 + 48))(v77, 1, v78) == 1)
  {
    sub_1BA013068(v77);
    v80 = v117;
    sub_1BA4A3D88();
    v81 = v127;
    v82 = sub_1BA4A3E88();
    v83 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v131[0] = v122;
      *v84 = 136315394;
      v85 = sub_1BA4A85D8();
      v87 = sub_1B9F0B82C(v85, v86, v131);
      LODWORD(v121) = v83;
      v88 = v87;

      *(v84 + 4) = v88;
      *(v84 + 12) = 2080;
      v89 = [v81 profileIdentifier];
      v90 = [v89 description];
      v91 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v93 = v92;

      v94 = sub_1B9F0B82C(v91, v93, v131);

      *(v84 + 14) = v94;
      _os_log_impl(&dword_1B9F07000, v82, v121, "%s Could not fetch sharingEntryProfileInformation for health store %s", v84, 0x16u);
      v95 = v122;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v95, -1, -1);
      MEMORY[0x1BFAF43A0](v84, -1, -1);

      (*(v115 + 8))(v117, v116);
    }

    else
    {

      (*(v115 + 8))(v80, v116);
    }

    v103 = v127;
  }

  else
  {
    v96 = v111;
    sub_1BA4A3358();
    (*(v79 + 8))(v77, v78);
    v98 = v113;
    v97 = v114;
    v99 = v112;
    (*(v113 + 32))(v112, v96, v114);
    v100 = objc_allocWithZone(MEMORY[0x1E696C438]);
    v101 = sub_1BA4A1758();
    v102 = [v100 initForInvitationUUID_];

    type metadata accessor for SettingUpSharingDataSource(0);
    swift_allocObject();
    v103 = v127;
    v104 = sub_1BA112ED4(v127, v102);

    (*(v98 + 8))(v99, v97);
    v76 = v104;
  }

  sub_1BA4541BC(0);
  swift_allocObject();

  v106 = sub_1BA063C54(v105, v75, v76);

  *(v128 + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_sharedContentOrNoDataDataSource) = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = v130;
  *(v107 + 32) = v124;
  *(v107 + 40) = &protocol witness table for SizeClassResponsiveDataSource;
  *(v107 + 48) = v106;
  *(v107 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;

  v108 = CompoundSectionedDataSource.init(_:)(v107);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v126);
  return v108;
}

void sub_1BA4540D4(uint64_t a1)
{
  if (!qword_1EBBF2CD0)
  {
    v4[0] = type metadata accessor for UnusedModelsVersionMismatchAlertDataSource(255);
    v4[1] = type metadata accessor for PluginVersionMismatchAlertDataSource(255);
    v4[2] = &protocol witness table for SectionsPublisherDataSource;
    v4[3] = &protocol witness table for DataSourceWithSectionItemLimit<A>;
    v2 = type metadata accessor for PrimarySecondaryDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF2CD0);
    }
  }
}

void sub_1BA454158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA4541BC(uint64_t a1)
{
  if (!qword_1EBBF2CD8)
  {
    v4[0] = type metadata accessor for CompoundSectionedDataSource(255);
    v4[1] = type metadata accessor for PlaceholderTextDataSource(255);
    v4[2] = &protocol witness table for CompoundSectionedDataSource;
    v4[3] = &protocol witness table for MutableArrayDataSource;
    v2 = type metadata accessor for PrimarySecondaryDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF2CD8);
    }
  }
}

void sub_1BA454240(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void static HKKeyValueDomain.saveOnboardingStatus(_:healthStore:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v6 = [objc_opt_self() emergencyDefaultsDomainWithHealthStore_];
  v7 = *MEMORY[0x1E696C840];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v2;
  v12[4] = sub_1BA454788;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1BA454240;
  v12[3] = &block_descriptor_125;
  v9 = _Block_copy(v12);
  v10 = v5;
  v11 = v7;

  [v6 setNumber:v10 forKey:v11 completion:v9];
  _Block_release(v9);
}

uint64_t sub_1BA454414(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v39 - v14;
  if (a2)
  {
    sub_1BA4A3E08();
    v16 = a2;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      v40 = a4;
      *v19 = 136446466;
      swift_getMetatypeMetadata();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v39);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v40 = a2;
      v24 = a2;
      sub_1BA34AC04(0);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v39);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%{public}s] error while saving onboarding status: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_1BA4A3E08();
    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      v40 = a4;
      *v31 = 136446466;
      swift_getMetatypeMetadata();
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v39);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v40 = a3;
      type metadata accessor for HKEmergencyOnboardingStatus(0);
      v36 = sub_1BA4A6808();
      v38 = sub_1B9F0B82C(v36, v37, &v39);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v29, v30, "[%{public}s] Saved onboarding status: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    return (*(v8 + 8))(v15, v7);
  }
}

uint64_t sub_1BA4547B0(uint64_t a1)
{
  result = type metadata accessor for SummarySharingRelationshipManagementContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BA454864(uint64_t a1)
{
  result = sub_1BA4A33C8();
  if (v2 <= 0x3F)
  {
    result = sub_1BA4548E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BA4548E8()
{
  result = qword_1EBBF2D00;
  if (!qword_1EBBF2D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBF2D00);
  }

  return result;
}

void sub_1BA454934()
{
  v1 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9FF1628(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA10E1EC(v4);
    }

    else
    {
      if (qword_1EBBE83F8 != -1)
      {
        swift_once();
      }

      v6 = qword_1EBC095A8;
      v7 = sub_1BA4A6758();
      [objc_opt_self() imageNamed:v7 inBundle:v6];
    }
  }

  else
  {
    v8[15] = *v4;
    sub_1BA28772C();
  }
}

uint64_t sub_1BA454ACC(uint64_t (*a1)(void), const char *a2, ...)
{
  v5 = v2;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v34 - v21;
  sub_1B9FF1628(v5, &v34 - v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v24 = EnumCaseMultiPayload;
    result = 0;
    if (v24 == 1)
    {
      v35 = a2;
      sub_1BA4A3DD8();
      sub_1B9FF1628(v5, v18);
      v26 = sub_1BA4A3E88();
      v27 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v37 = v34;
        *v28 = 136315394;
        *(v28 + 4) = sub_1B9F0B82C(0xD00000000000001BLL, 0x80000001BA4DC670, &v37);
        *(v28 + 12) = 2080;
        sub_1B9FF1628(v18, v14);
        v29 = sub_1BA4A6808();
        v31 = v30;
        sub_1BA10E1EC(v18);
        v32 = sub_1B9F0B82C(v29, v31, &v37);

        *(v28 + 14) = v32;
        _os_log_impl(&dword_1B9F07000, v26, v27, v35, v28, 0x16u);
        v33 = v34;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v33, -1, -1);
        MEMORY[0x1BFAF43A0](v28, -1, -1);
      }

      else
      {

        sub_1BA10E1EC(v18);
      }

      (*(v7 + 8))(v10, v6);
      sub_1BA10E1EC(v22);
      return 0;
    }
  }

  else
  {
    v36 = *v22;
    return a1();
  }

  return result;
}

id HorizontalCollectionViewLayoutEngine.layout(for:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [*(a1 + 8) traitCollection];
  sub_1BA4A7368();

  sub_1BA4A6598();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension_];
  v9 = [v7 estimatedDimension_];
  v10 = objc_opt_self();
  v11 = [v10 sizeWithWidthDimension:v8 heightDimension:v9];

  v12 = [objc_opt_self() itemWithLayoutSize_];
  v13 = [v7 fractionalWidthDimension_];
  v14 = [v7 uniformAcrossSiblingsWithEstimate_];
  v15 = [v10 sizeWithWidthDimension:v13 heightDimension:v14];

  v16 = objc_opt_self();
  sub_1B9F109F8();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5470;
  *(v17 + 32) = v12;
  sub_1BA45505C();
  v18 = v12;
  v19 = sub_1BA4A6AE8();

  v20 = [v16 horizontalGroupWithLayoutSize:v15 subitems:v19];

  v21 = [objc_opt_self() sectionWithGroup_];
  [v21 setInterGroupSpacing_];
  [v21 setOrthogonalScrollingBehavior_];

  return v21;
}

unint64_t sub_1BA45505C()
{
  result = qword_1EBBF1FB8;
  if (!qword_1EBBF1FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBF1FB8);
  }

  return result;
}

void ProfileButtonDisplaying<>.updateProfileButtonForRegularSizeClass()()
{
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [v0 navigationItem];
  [v2 _setLargeTitleAccessoryView_alignToBaseline_];
}

void HealthChecklistOpenedAnalyticsSource.init(rawValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1 == 0x656C69666F7250 && a2 == 0xE700000000000000;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    *a3 = 0;
    a3[1] = 0;
    return;
  }

  if (a1 == 0x6C616E7265747845 && a2 == 0xEC0000004C525520 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = xmmword_1BA4BC920;
LABEL_11:
    *a3 = v7;
    return;
  }

  if (a1 == 0x6C616E7265746E49 && a2 == 0xEC0000004C525520 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = xmmword_1BA4DC7B0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000018 && 0x80000001BA5096B0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = xmmword_1BA4DC7A0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000014 && 0x80000001BA5096D0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = xmmword_1BA4DC790;
    goto LABEL_11;
  }

  if (a1 == 0x655368746C616548 && a2 == 0xEE0073676E697474 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = xmmword_1BA4DC780;
    goto LABEL_11;
  }

  if (a1 == 0x6163696669746F4ELL && a2 == 0xED0000736E6F6974 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = xmmword_1BA4C2560;
    goto LABEL_11;
  }

  sub_1B9F252FC();
  v8 = sub_1BA4A7B28();

  if (v8[2] != 2 || ((v14 = v8, v10 = v8[4], v9 = v8[5], v10 != 0x6C616E7265747845) || v9 != 0xEC0000004C525520) && (sub_1BA4A8338() & 1) == 0)
  {
LABEL_39:

    v7 = xmmword_1BA4DC770;
    goto LABEL_11;
  }

  v12 = v14[6];
  v11 = v14[7];

  if (v10 == v12 && v9 == v11)
  {

    goto LABEL_39;
  }

  v13 = sub_1BA4A8338();

  if (v13)
  {
    goto LABEL_39;
  }

  *a3 = v12;
  a3[1] = v11;
}

uint64_t HealthChecklistOpenedAnalyticsSource.rawValue.getter()
{
  v1 = v0[1];
  if (v1 <= 2)
  {
    switch(v1)
    {
      case 0:
        return 0x656C69666F7250;
      case 1:
        return 0x6C616E7265747845;
      case 2:
        return 0x6C616E7265746E49;
    }

LABEL_13:
    v3 = *v0;
    sub_1BA4A7DF8();

    strcpy(v4, "External URL: ");
    HIBYTE(v4[1]) = -18;
    MEMORY[0x1BFAF1350](v3, v1);
    return v4[0];
  }

  if (v1 > 4)
  {
    if (v1 == 5)
    {
      return 0x655368746C616548;
    }

    if (v1 == 6)
    {
      return 0x6163696669746F4ELL;
    }

    goto LABEL_13;
  }

  if (v1 == 3)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1BA4556D8@<X0>(uint64_t *a1@<X8>)
{
  result = HealthChecklistOpenedAnalyticsSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static HealthChecklistOpenedAnalyticsEvent.eventName.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBF2D08;

  return v0;
}

double static HealthChecklistOpenedAnalyticsEvent.eventName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBF2D08 = a1;
  off_1EBBF2D10 = a2;

  return result;
}

unint64_t sub_1BA45580C()
{
  result = qword_1EBBF2D18;
  if (!qword_1EBBF2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D18);
  }

  return result;
}

unint64_t sub_1BA455864()
{
  result = qword_1EBBF2D20;
  if (!qword_1EBBF2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D20);
  }

  return result;
}

double sub_1BA4558B8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBF2D08 = v2;
  off_1EBBF2D10 = v1;

  return result;
}

uint64_t sub_1BA45591C()
{
  swift_beginAccess();
  v0 = qword_1EBBF2D08;

  return v0;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI0A30ChecklistOpenedAnalyticsSourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BA455988(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA4559E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

char *AppRecommendationsFetchedResultsControllerDataSource.__allocating_init(managedObjectContext:for:sourceProfiles:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA456148(a1, a2, a3);

  return v8;
}

char *AppRecommendationsFetchedResultsControllerDataSource.init(managedObjectContext:for:sourceProfiles:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1BA456148(a1, a2, a3);

  return v5;
}

uint64_t sub_1BA455AF0()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1 && (v2 = v1, v3 = [v1 displayTypeForObjectType_], v2, v3))
  {
    sub_1B9F1B7C4(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5460;
    v5 = [v3 localization];
    v6 = [v5 titleEmbeddedDisplayName];

    v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v9 = v8;

    v10 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1B9F1BE20();
    *(v4 + 32) = v7;
    *(v4 + 40) = v9;
    v13 = *(v0 + qword_1EDC84A48);
    v12 = *(v0 + qword_1EDC84A48 + 8);
    *(v4 + 96) = v10;
    *(v4 + 104) = v11;
    *(v4 + 64) = v11;
    *(v4 + 72) = v13;
    *(v4 + 80) = v12;

    v14 = sub_1BA4A6768();

    return v14;
  }

  else
  {
    sub_1BA4A7DF8();

    v16 = [*(v0 + qword_1EDC84A58) description];
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;

    MEMORY[0x1BFAF1350](v17, v19);

    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA455D50@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  v11 = sub_1BA455AF0();
  v13 = v12;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  (*(v3 + 16))(v6, v10, v2);
  v14 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v11, v13, 0, 0, 0, 0, v6, 0, 0);
  v16 = v15;
  (*(v3 + 8))(v10, v2);
  a1[3] = v14;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v16;
  return result;
}

double sub_1BA455F00()
{

  return result;
}

id AppRecommendationsFetchedResultsControllerDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppRecommendationsFetchedResultsControllerDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1BA455F90(uint64_t a1)
{

  return result;
}

void *AppRecommendationsFetchedResultsControllerDataSource.layout(for:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CB68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_project_value_buffer(v2, qword_1EDC6CB70);
  return ListLayoutConfiguration.layout(for:)(v1);
}

void *sub_1BA4560CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CB68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_project_value_buffer(v2, qword_1EDC6CB70);
  return ListLayoutConfiguration.layout(for:)(v1);
}

char *sub_1BA456148(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = a3;
  v36 = a1;
  sub_1B9F1B7C4(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v33 - v7;
  v9 = qword_1EDC84A50;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v10 = (v3 + v9);
  *v10 = sub_1BA4A1318();
  v10[1] = v11;
  v12 = (v3 + qword_1EDC84A48);
  *v12 = sub_1BA4A1318();
  v12[1] = v13;
  *(v3 + qword_1EDC84A58) = a2;
  sub_1BA4A27B8();
  v14 = a2;
  v34 = v3;
  v15 = MEMORY[0x1BFAED110]();
  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1BA4A6758();
  v18 = [v16 initWithKey:v17 ascending:1];

  sub_1B9F109F8();
  v19 = swift_allocObject();
  v33 = xmmword_1BA4B5470;
  *(v19 + 16) = xmmword_1BA4B5470;
  *(v19 + 32) = v18;
  sub_1BA0A361C();
  v20 = v18;
  v21 = sub_1BA4A6AE8();

  [v15 setSortDescriptors_];

  sub_1B9F1B7C4(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v22 = sub_1BA4A1C68();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5480;
  (*(v23 + 104))(v25 + v24, *MEMORY[0x1E69A3BA8], v22);
  v26 = swift_allocObject();
  *(v26 + 16) = v33;
  *(v26 + 32) = v14;
  v27 = sub_1BA4A0FA8();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  v28 = v14;
  v29 = MEMORY[0x1BFAED020](v25, v26, v8, v35);

  sub_1B9F1C1B0(v8);
  [v15 setPredicate_];

  v30 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v31 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v30 initWithFetchRequest:v15 managedObjectContext:v36 sectionNameKeyPath:0 cacheName:0]);

  return v31;
}

uint64_t type metadata accessor for AppRecommendationsFetchedResultsControllerDataSource(uint64_t a1)
{
  result = qword_1EDC5FAF0;
  if (!qword_1EDC5FAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *RelatedItemsFetchedResultsControllerDataSource.init(managedObjectContext:objectType:contentKinds:sortDescriptors:sourceProfiles:headerTitle:keyword:relevantDateRange:initialFetchLimit:additionalPredicate:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  v43[1] = a8;
  v47 = a1;
  v48 = a10;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + qword_1EDC84A78) = a2;
  v46 = v13;
  v23 = (v13 + qword_1EDC84A80);
  *v23 = a6;
  v23[1] = a7;
  sub_1BA4A27B8();
  v24 = a2;
  v25 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v26 = sub_1BA4A6AE8();

  [v25 setSortDescriptors_];

  if (a2)
  {
    sub_1B9F109F8();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BA4B5470;
    *(v27 + 32) = v24;
  }

  else
  {
    v27 = 0;
  }

  v45 = a13;
  v44 = v24;
  v28 = MEMORY[0x1BFAED020](a3, v27, v48, a5);

  sub_1B9F109F8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5470;
  *(v29 + 32) = v28;
  v49 = v29;
  if (a9)
  {
    v30 = sub_1BA4A0FA8();
    (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
    v31 = v28;
    v32 = sub_1BA4A25F8();

    sub_1B9F1C1B0(v22);
    v33 = v32;
    MEMORY[0x1BFAF1510]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {
    v34 = v28;
  }

  v35 = v45;
  if (v45)
  {
    v36 = v45;
    MEMORY[0x1BFAF1510]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v37 = sub_1BA4A6AE8();

  v38 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v25 setPredicate_];
  if ((a12 & 1) == 0)
  {
    [v25 setFetchLimit_];
  }

  v39 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v40 = v47;
  v41 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v39 initWithFetchRequest:v25 managedObjectContext:v47 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v48);
  return v41;
}

uint64_t RelatedItemsFetchedResultsControllerDataSource.headerTitle.getter()
{
  v1 = *(v0 + qword_1EDC84A80);

  return v1;
}

char *RelatedItemsFetchedResultsControllerDataSource.__allocating_init(managedObjectContext:objectType:contentKinds:sortDescriptors:sourceProfiles:headerTitle:keyword:relevantDateRange:initialFetchLimit:additionalPredicate:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  v44[1] = a8;
  v48 = a1;
  v49 = a10;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_allocWithZone(v13);
  *&v23[qword_1EDC84A78] = a2;
  v47 = v23;
  v24 = &v23[qword_1EDC84A80];
  *v24 = a6;
  *(v24 + 1) = a7;
  sub_1BA4A27B8();
  v25 = a2;
  v26 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v27 = sub_1BA4A6AE8();

  [v26 setSortDescriptors_];

  if (a2)
  {
    sub_1B9F109F8();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BA4B5470;
    *(v28 + 32) = v25;
  }

  else
  {
    v28 = 0;
  }

  v46 = a13;
  v45 = v25;
  v29 = MEMORY[0x1BFAED020](a3, v28, v49, a5);

  sub_1B9F109F8();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BA4B5470;
  *(v30 + 32) = v29;
  v50 = v30;
  if (a9)
  {
    v31 = sub_1BA4A0FA8();
    (*(*(v31 - 8) + 56))(v22, 1, 1, v31);
    v32 = v29;
    v33 = sub_1BA4A25F8();

    sub_1B9F1C1B0(v22);
    v34 = v33;
    MEMORY[0x1BFAF1510]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {
    v35 = v29;
  }

  v36 = v46;
  if (v46)
  {
    v37 = v46;
    MEMORY[0x1BFAF1510]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v38 = sub_1BA4A6AE8();

  v39 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v26 setPredicate_];
  if ((a12 & 1) == 0)
  {
    [v26 setFetchLimit_];
  }

  v40 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v41 = v48;
  v42 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v40 initWithFetchRequest:v26 managedObjectContext:v48 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v49);
  return v42;
}

unint64_t sub_1BA456FB8@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - v10;
  v12 = v1 + qword_1EDC84A80;
  v13 = *(v1 + qword_1EDC84A80);
  v14 = *(v12 + 8);

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  (*(v4 + 16))(v7, v11, v3);
  v15 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v13, v14, 0, 0, 0, 0, v7, 0, 0);
  v17 = v16;
  (*(v4 + 8))(v11, v3);
  a1[3] = v15;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v17;
  return result;
}

double sub_1BA457144()
{

  return result;
}

id RelatedItemsFetchedResultsControllerDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RelatedItemsFetchedResultsControllerDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1BA4571C0(uint64_t a1)
{

  return result;
}

id sub_1BA45726C(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  static GridLayoutEngine.largeCard.getter(v16);
  v13 = v16[2];
  v14 = v16[3];
  v15 = v16[4];
  v11 = v16[0];
  v12 = v16[1];
  v9 = v8;
  v10 = v2;
  v3 = GridLayoutEngine.layout(for:)(&v9);
  if (v1)
  {
    return sub_1B9F5A690(v16);
  }

  v5 = v3;
  v6 = [objc_opt_self() estimatedDimension_];
  v7 = sub_1B9F5CA58(v6, 2);

  sub_1B9F5A690(v16);
  return v7;
}

uint64_t type metadata accessor for RelatedItemsFetchedResultsControllerDataSource(uint64_t a1)
{
  result = qword_1EDC5FEB0;
  if (!qword_1EDC5FEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA457578()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

double sub_1BA457680@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1BA1AE4BC(v4, v5, v6, v7);
}

double sub_1BA4576E0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_1BA1AE4BC(v2, v3, v4, v5);
  return sub_1BA1AE55C(v7, v8, v9, v10);
}

double sub_1BA457788@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_1BA1AE4BC(v4, v5, v6, v7);
}

double sub_1BA4577E4(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v8;
  return sub_1BA1AE55C(v4, v5, v6, v7);
}

id sub_1BA4578A0()
{
  sub_1BA459780(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v25 - v2;
  v4 = sub_1BA4A7838();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1338();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A79A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_opt_self() systemBlueColor];
  [v17 setTitleColor:v18 forState:0];

  sub_1BA4A7968();
  sub_1BA4A7878();
  v19 = sub_1BA4A78C8();
  v21 = v20;
  v22 = sub_1BA4A12C8();
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    sub_1BA4A1328();
    sub_1BA4A11A8();
    (*(v26 + 8))(v11, v8);
  }

  v19(v29, 0);
  v23 = sub_1BA4A7808();
  sub_1BA4A4108();
  v23(v29, 0);
  (*(v27 + 104))(v7, *MEMORY[0x1E69DC4F0], v28);
  sub_1BA4A7848();
  (*(v13 + 16))(v3, v16, v12);
  (*(v13 + 56))(v3, 0, 1, v12);
  sub_1BA4A79D8();
  (*(v13 + 8))(v16, v12);
  return v17;
}

char *OBKStyleBulletListItemView.init(image:title:description:buttonConfiguration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = *a6;
  v7 = a6[1];
  v10 = a6[2];
  v9 = a6[3];
  v11 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setContentMode_];

  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v14];
  *&v6[v11] = v12;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel;
  *&v6[v15] = sub_1BA1AE0E4();
  v16 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel;
  *&v6[v16] = sub_1BA457578();
  v17 = &v6[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_button;
  *&v6[v18] = sub_1BA4578A0();
  v19 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextStackedConstraints] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextSideBySideConstraints] = v19;
  swift_beginAccess();
  v20 = *v17;
  v21 = v17[1];
  v23 = v17[2];
  v22 = v17[3];
  *v17 = v8;
  v17[1] = v7;
  v17[2] = v10;
  v17[3] = v9;
  v61 = v10;
  v62 = v8;
  v60 = v9;
  sub_1BA1AE4BC(v8, v7, v10, v9);
  sub_1BA1AE55C(v20, v21, v23, v22);
  v65.receiver = v6;
  v65.super_class = type metadata accessor for OBKStyleBulletListItemView();
  v24 = objc_msgSendSuper2(&v65, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v25 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView;
  [*&v24[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView] setImage_];
  v26 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel;
  v27 = *&v24[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel];
  v28 = sub_1BA4A6758();

  [v27 setText_];

  v29 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel;
  v30 = *&v24[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel];
  v31 = v30;
  if (a5)
  {
    v32 = sub_1BA4A6758();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText_];

  [v24 addSubview_];
  [v24 addSubview_];
  [v24 addSubview_];
  v33 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_button;
  [v24 addSubview_];
  sub_1BA458450();
  v34 = [*&v24[v29] text];
  v35 = MEMORY[0x1E69DDD80];
  if (!v34)
  {
    v36 = *&v24[v26];
    v37 = objc_opt_self();
    v38 = *v35;
    v39 = v36;
    v40 = [v37 preferredFontForTextStyle_];
    [v39 setFont_];

    v34 = v40;
  }

  if (v7)
  {
    sub_1BA459780(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    v42 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v43 = objc_opt_self();
    v44 = *v35;
    v45 = v42;
    v46 = [v43 preferredFontForTextStyle_];
    v47 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
    *(inited + 40) = v46;
    v48 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v47;
    *(inited + 72) = v48;
    v49 = objc_opt_self();
    v50 = v48;
    v51 = [v49 systemBlueColor];
    *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
    *(inited + 80) = v51;
    sub_1B9FDB1C4(inited);
    swift_setDeallocating();
    sub_1B9FE9628(0);
    swift_arrayDestroy();
    v52 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v53 = sub_1BA4A6758();
    type metadata accessor for Key(0);
    sub_1BA0262E4();
    v54 = sub_1BA4A6618();

    v55 = [v52 initWithString:v53 attributes:v54];

    [*&v24[v33] setAttributedTitle:v55 forState:0];
    v56 = *&v24[v33];
    [v56 addTarget:v24 action:sel_buttonWasTapped forControlEvents:64];

    sub_1BA1AE55C(v62, v7, v61, v60);
  }

  else
  {
    v57 = [*&v24[v33] heightAnchor];
    v58 = [v57 constraintEqualToConstant_];

    [v58 setActive_];
  }

  return v24;
}