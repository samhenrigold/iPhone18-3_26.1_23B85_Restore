uint64_t sub_1BA1CB730(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56) & 0x1FFFFFFFFLL | (a2 << 61);
  *(result + 48) &= 0x1FFFFFFFFuLL;
  *(result + 56) = v2;
  return result;
}

unint64_t sub_1BA1CB7B4()
{
  result = qword_1EBBEDAC0;
  if (!qword_1EBBEDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDAC0);
  }

  return result;
}

uint64_t sub_1BA1CB808(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F40DD8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA1CB864()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_enabled) = 1;
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_separatorInset;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___disclosureImageView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessorySpace) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView) = 0;
  sub_1BA4A8018();
  __break(1u);
}

double sub_1BA1CB93C(void *result, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, unint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  if (a7 < 0xFFFFFFFE00000000 || (a8 & 0xFFFFFFFE00000000) != 0x200000000)
  {
    return sub_1BA1CB970(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return v11;
}

double sub_1BA1CB970(void *a1, id a2, void *a3, void *a4, void *a5, void *a6, int a7, unint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v11 = a8 >> 61;
  if ((a8 >> 61) <= 2)
  {
    if (v11 < 2)
    {
    }

    else if (v11 != 2)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v11 == 3 || v11 == 4)
  {
LABEL_13:

    return result;
  }

  if (v11 == 5)
  {
  }

  return result;
}

void sub_1BA1CBA68(uint64_t a1)
{
  if (!qword_1EBBEDAD0)
  {
    sub_1B9F23348(255, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEDAD0);
    }
  }
}

uint64_t sub_1BA1CBBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA1CBC0C()
{
  if (!qword_1EBBEDAD8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEDAD8);
    }
  }
}

uint64_t SummarySharingSetupAnalyticsBaseEvent.OnboardingLocation.rawValue.getter()
{
  v1 = *v0;
  sub_1BA0B2740();
  if (v1)
  {
    if (v1 != 1)
    {
      v2 = "requestLink";
      v3 = 11;
      return sub_1BA4A77C8(v2, v3, 2);
    }

    v2 = "sharingTab";
  }

  else
  {
    v2 = "summaryTab";
  }

  v3 = 10;
  return sub_1BA4A77C8(v2, v3, 2);
}

uint64_t SummarySharingSetupAnalyticsBaseEvent.__allocating_init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:activeWatchProductType:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  SummarySharingSetupAnalyticsBaseEvent.init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:activeWatchProductType:)(a1, a2, a3, v14, a5, a6, a7);
  return v13;
}

void *SummarySharingSetupAnalyticsBaseEvent.init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:activeWatchProductType:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 25);
  v26 = *a3;
  v7[4] = 0;
  v7[5] = 0;
  v25 = v10;
  v14 = 0;
  v7[3] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if ((v12 & 1) == 0)
  {
    sub_1BA4A70F8();
    v14 = sub_1BA4A6758();
  }

  v15 = v7[5];
  v7[5] = v14;

  v16 = UserDemographicsAnalytics.ageValueForAnalytics()();
  v17 = v7[4];
  v7[4] = v16;

  if (v11 == 2)
  {
    sub_1BA1CBF94(v18, v19);
    v20 = sub_1BA4A2CA8();
    v21 = &selRef_createHKUnitPreferenceController;
  }

  else
  {
    v21 = &selRef_createHKUnitPreferenceController;
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v7[2] = v20;
  v22 = sub_1BA4A6758();

  v8[9] = v22;
  sub_1BA0B2740();
  if (v26)
  {
    if (v26 == 1)
    {
      v23 = sub_1BA4A77C8("sharingTab", 10, 2, v25);
    }

    else
    {
      v23 = sub_1BA4A77C8("requestLink", 11, 2, v25);
    }
  }

  else
  {
    v23 = sub_1BA4A77C8("summaryTab", 10, 2, v25);
  }

  v8[6] = v23;
  v8[7] = sub_1BA4A77C8("1.0", 3, 2);
  v8[8] = [objc_allocWithZone(MEMORY[0x1E696AD98]) v21[101]];
  return v8;
}

unint64_t sub_1BA1CBF94(uint64_t a1, uint64_t a2)
{
  result = qword_1EBBEDAE0;
  if (!qword_1EBBEDAE0)
  {
    type metadata accessor for SummarySharingSetupAnalyticsBaseEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDAE0);
  }

  return result;
}

void *SummarySharingSetupAnalyticsBaseEvent.__allocating_init(isFirstShare:isImproveHealthAndActivityAllowed:age:userSex:provenance:version:usedDataSelectionWizard:activeWatchProductType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  return result;
}

void *SummarySharingSetupAnalyticsBaseEvent.init(isFirstShare:isImproveHealthAndActivityAllowed:age:userSex:provenance:version:usedDataSelectionWizard:activeWatchProductType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t SummarySharingSetupAnalyticsBaseEvent.__deallocating_deinit()
{
  SummarySharingSetupAnalyticsBaseEvent.deinit();

  return swift_deallocClassInstance();
}

HealthExperienceUI::SummarySharingSetupAnalyticsBaseEvent::OnboardingLocation_optional __swiftcall SummarySharingSetupAnalyticsBaseEvent.OnboardingLocation.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  sub_1BA0B2740();
  v4 = rawValue;
  v5 = sub_1BA4A77C8("summaryTab", 10, 2);
  v6 = sub_1BA4A7798();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = sub_1BA4A77C8("sharingTab", 10, 2);
    v11 = sub_1BA4A7798();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = sub_1BA4A77C8("requestLink", 11, 2);
      v13 = sub_1BA4A7798();

      if (v13)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }
  }

  *v3 = v8;
  return result;
}

void sub_1BA1CC248(uint64_t a1)
{
  v2 = *v1;
  sub_1BA0B2740();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = sub_1BA4A77C8("sharingTab", 10, 2);
    }

    else
    {
      v3 = sub_1BA4A77C8("requestLink", 11, 2);
    }
  }

  else
  {
    v3 = sub_1BA4A77C8("summaryTab", 10, 2);
  }

  v4 = v3;
  sub_1BA4A77A8();
}

uint64_t sub_1BA1CC300@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_1BA0B2740();
  if (v3)
  {
    if (v3 == 1)
    {
      result = sub_1BA4A77C8("sharingTab", 10, 2);
    }

    else
    {
      result = sub_1BA4A77C8("requestLink", 11, 2);
    }
  }

  else
  {
    result = sub_1BA4A77C8("summaryTab", 10, 2);
  }

  *a1 = result;
  return result;
}

void SummarySharingSetupAnalyticsBaseEvent.OnboardingVersion.init(rawValue:)(void *a1@<X0>, BOOL *a2@<X8>)
{
  sub_1BA0B2740();
  v4 = sub_1BA4A77C8("1.0", 3, 2);
  v5 = sub_1BA4A7798();

  *a2 = (v5 & 1) == 0;
}

unint64_t sub_1BA1CC3F0()
{
  result = qword_1EBBEDAE8;
  if (!qword_1EBBEDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDAE8);
  }

  return result;
}

uint64_t sub_1BA1CC444()
{
  sub_1BA0B2740();
  v0 = sub_1BA4A77C8("1.0", 3, 2);
  v1 = sub_1BA4A77C8("1.0", 3, 2);
  v2 = sub_1BA4A7798();

  return v2 & 1;
}

unint64_t sub_1BA1CC4C4()
{
  result = qword_1EBBEDAF0;
  if (!qword_1EBBEDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDAF0);
  }

  return result;
}

uint64_t sub_1BA1CC518()
{
  sub_1BA4A8488();
  sub_1BA0B2740();
  v0 = sub_1BA4A77C8("1.0", 3, 2);
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

void sub_1BA1CC580(uint64_t a1)
{
  sub_1BA0B2740();
  v1 = sub_1BA4A77C8("1.0", 3, 2);
  sub_1BA4A77A8();
}

uint64_t sub_1BA1CC5F0(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA0B2740();
  v1 = sub_1BA4A77C8("1.0", 3, 2);
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

void sub_1BA1CC654(void **a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  sub_1BA0B2740();
  v4 = sub_1BA4A77C8("1.0", 3, 2);
  v5 = sub_1BA4A7798();

  *a2 = (v5 & 1) == 0;
}

uint64_t sub_1BA1CC6C4@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA0B2740();
  result = sub_1BA4A77C8("1.0", 3, 2);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SummarySharingSetupAnalyticsBaseEvent.SharingEntriesAnalytics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SummarySharingSetupAnalyticsBaseEvent.SharingEntriesAnalytics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t AudiogramSnidgetCurrentValueDataView.$viewModel.getter()
{
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
  sub_1BA1D37F8(&qword_1EDC61060, v0, type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel, &protocol conformance descriptor for AudiogramSnidgetCurrentValueDataView.ViewModel);

  return sub_1BA4A5358();
}

uint64_t sub_1BA1CC960()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v7, v6, 0);
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  return v7;
}

void AudiogramSnidgetCurrentValueDataView.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v4 = type metadata accessor for AudiogramSnidgetCurrentValueDataView(0);
  v5 = *(v4 + 28);
  *(a2 + v5) = swift_getKeyPath();
  sub_1BA1D32EC(0, &qword_1EDC5F358, 255, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 32);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
  sub_1BA1D37F8(&qword_1EDC61060, v7, type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel, &protocol conformance descriptor for AudiogramSnidgetCurrentValueDataView.ViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v8;

  *(a2 + 16) = v3;
}

uint64_t AudiogramSnidgetCurrentValueDataView.body.getter@<X0>(uint64_t a9@<X8>)
{
  *a9 = sub_1BA4A5868();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  sub_1BA1D313C(0, v11);
  return sub_1BA1CCC6C(v9, a9 + *(v12 + 44));
}

uint64_t sub_1BA1CCC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = MEMORY[0x1E697F948];
  sub_1BA1D5118(0, &qword_1EBBEDC80, sub_1BA1D3954, MEMORY[0x1E697F948]);
  v50[1] = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v50 - v6;
  sub_1BA1D3920(0);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v51 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1D3954(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1D33CC(0, &qword_1EBBEDC88, sub_1BA1D31E8, sub_1BA1D3920, MEMORY[0x1E697F948]);
  v52 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v54 = v50 - v18;
  sub_1BA1D5118(0, &qword_1EBBEDC90, sub_1BA1D321C, v3);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v50 - v21;
  sub_1BA1D31E8(0);
  v53 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v50[0] = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1D321C(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  v31 = *(*(a1 + 8) + 16);
  if (v30)
  {
    v32 = *(v30 + 16);
  }

  else
  {
    v32 = 0xF000000000000007;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    if ((~v32 & 0xF000000000000007) != 0)
    {

      if ((v32 & 0x8000000000000000) == 0)
      {
        *v15 = sub_1BA4A5878();
        *(v15 + 1) = 0x4000000000000000;
        v15[16] = 0;
        sub_1BA1D5320(0, &qword_1EDC5F2F8, sub_1B9F52B4C, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
        sub_1BA1CD4F0(v31, a1, v32, &v15[*(v33 + 44)]);
        v34 = sub_1BA4A60A8();
        v35 = sub_1BA4A5B78();
        v36 = &v15[*(v12 + 36)];
        *v36 = v34;
        v36[8] = v35;
        sub_1BA1D5180(v15, v7, sub_1BA1D3954);
        swift_storeEnumTagMultiPayload();
        sub_1B9F52970();
        v37 = v51;
        sub_1BA4A58E8();
        sub_1BA1D5180(v37, v54, sub_1BA1D3920);
        swift_storeEnumTagMultiPayload();
        sub_1BA1D4714();
        sub_1BA1D47C0();
        sub_1BA4A58E8();

        sub_1BA1D5248(v32);
        v38 = v37;
LABEL_18:
        sub_1BA1D51E8(v38, sub_1BA1D3920);
        v41 = sub_1BA1D3954;
        v42 = v15;
        return sub_1BA1D51E8(v42, v41);
      }

      sub_1BA1D5248(v32);
    }

    else
    {
    }

    *v15 = sub_1BA4A5878();
    *(v15 + 1) = 0x4000000000000000;
    v15[16] = 0;
    sub_1BA1D5320(0, &qword_1EDC5F2F8, sub_1B9F52B4C, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1BA1CD4F0(v31, a1, 0, &v15[*(v43 + 44)]);
    v44 = sub_1BA4A60A8();
    v45 = sub_1BA4A5B78();
    v46 = &v15[*(v12 + 36)];
    *v46 = v44;
    v46[8] = v45;
    sub_1BA1D5180(v15, v7, sub_1BA1D3954);
    swift_storeEnumTagMultiPayload();
    sub_1B9F52970();
    v47 = v51;
    sub_1BA4A58E8();
    sub_1BA1D5180(v47, v54, sub_1BA1D3920);
    swift_storeEnumTagMultiPayload();
    sub_1BA1D4714();
    sub_1BA1D47C0();
    sub_1BA4A58E8();

    v38 = v47;
    goto LABEL_18;
  }

  if ((~v32 & 0xF000000000000007) != 0)
  {
    if (v32 < 0)
    {

      *v29 = sub_1BA4A5B38();
      sub_1BA1D5260(0);
      sub_1BA1CE250(v31 & 0x7FFFFFFFFFFFFFFFLL, a1, (v32 & 0x7FFFFFFFFFFFFFFFLL), &v29[*(v49 + 44)]);
      sub_1BA1D5180(v29, v22, sub_1BA1D321C);
      swift_storeEnumTagMultiPayload();
      sub_1BA1D37F8(&qword_1EBBEDC40, 255, sub_1BA1D321C, MEMORY[0x1E697BF80]);
      v40 = v50[0];
      sub_1BA4A58E8();
      sub_1BA1D5180(v40, v54, sub_1BA1D31E8);
      swift_storeEnumTagMultiPayload();
      sub_1BA1D4714();
      sub_1BA1D47C0();
      sub_1BA4A58E8();

      sub_1BA1D5248(v32);
      goto LABEL_15;
    }

    sub_1BA1D5248(v32);
  }

  else
  {
  }

  *v29 = sub_1BA4A5B38();
  sub_1BA1D5260(0);
  sub_1BA1CE250(v31 & 0x7FFFFFFFFFFFFFFFLL, a1, 0, &v29[*(v39 + 44)]);
  sub_1BA1D5180(v29, v22, sub_1BA1D321C);
  swift_storeEnumTagMultiPayload();
  sub_1BA1D37F8(&qword_1EBBEDC40, 255, sub_1BA1D321C, MEMORY[0x1E697BF80]);
  v40 = v50[0];
  sub_1BA4A58E8();
  sub_1BA1D5180(v40, v54, sub_1BA1D31E8);
  swift_storeEnumTagMultiPayload();
  sub_1BA1D4714();
  sub_1BA1D47C0();
  sub_1BA4A58E8();

LABEL_15:
  sub_1BA1D51E8(v40, sub_1BA1D31E8);
  v41 = sub_1BA1D321C;
  v42 = v29;
  return sub_1BA1D51E8(v42, v41);
}

uint64_t sub_1BA1CD4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v139 = a3;
  v155 = a2;
  v152 = a4;
  v140 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  MEMORY[0x1EEE9AC00](v140, v5);
  v143 = v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F532BC(0);
  v141 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v142 = v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5323C(0);
  v145 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v146 = v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F530BC(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v151 = v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v130 - v18;
  sub_1B9F5305C(0);
  v160 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v148 = v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F51474(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v144 = v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v130 - v29;
  v31 = sub_1BA4A12C8();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v132 = v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v157 = v130 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v130 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v130 - v44;
  sub_1B9F52ED4(0);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v149 = v130 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v150 = v130 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v147 = v130 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = v130 - v57;
  v59 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  swift_beginAccess();
  v158 = a1;
  sub_1BA1D5180(a1 + v59, v30, sub_1B9F51474);
  v60 = *(v32 + 48);
  v138 = v32 + 48;
  v137 = v60;
  v61 = v60(v30, 1, v31);
  v154 = v58;
  v153 = v31;
  v156 = v19;
  v131 = v41;
  if (v61 == 1)
  {
    sub_1BA1D51E8(v30, sub_1B9F51474);
    v62 = 1;
  }

  else
  {
    (*(v32 + 32))(v45, v30, v31);
    (*(v32 + 16))(v41, v45, v31);
    v63 = sub_1BA4A5E08();
    v159 = v21;
    v64 = v63;
    v66 = v65;
    v163 = v63;
    v164 = v65;
    v68 = v67 & 1;
    v165 = v67 & 1;
    v166 = v69;
    v167 = 0;
    v168 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v70 = sub_1BA1CC960();
    v72 = v71;
    v73 = v148;

    v167 = v70;
    v168 = v72;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    sub_1BA4A5F18();

    v74 = v64;
    v21 = v159;
    v75 = v68;
    v31 = v153;
    sub_1BA102AF4(v74, v66, v75);

    (*(v32 + 8))(v45, v31);
    v58 = v154;
    sub_1BA1D538C(v73, v154, sub_1B9F5305C);
    v62 = 0;
  }

  v76 = *(v21 + 56);
  v159 = v21 + 56;
  v136 = v76;
  v76(v58, v62, 1, v160);
  v77 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  v78 = v158;
  swift_beginAccess();
  v79 = *(v32 + 16);
  v130[1] = v32 + 16;
  v130[0] = v79;
  v79(v157, v78 + v77, v31);
  v80 = v78 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v81 = *(v80 + 8);
  v135 = *v80;
  v134 = *(v80 + 16);
  v133 = *(v80 + 24);
  v82 = v32;
  if (v139)
  {
    v83 = v139 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
    swift_beginAccess();
    v84 = *(v83 + 8);
    v139 = *v83;
    v85 = *(v83 + 16);
    v86 = *(v83 + 24);
  }

  else
  {
    v139 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
  }

  v87 = v140;
  v88 = v143;
  v89 = &v143[*(v140 + 20)];
  *v89 = 0;
  *(v89 + 1) = 0;
  v89[24] = 0;
  *(v89 + 2) = 0;
  v90 = v88 + *(v87 + 24);
  v140 = v82;
  v91 = *(v82 + 32);
  *v90 = 0;
  *(v90 + 8) = 0;
  *(v90 + 24) = 0;
  *(v90 + 16) = 0;
  v92 = v157;
  v93 = v153;
  v157 = v91;
  (v91)(v88, v92, v153);

  *v89 = v135;
  *(v89 + 1) = v81;
  *(v89 + 2) = v134;
  v89[24] = v133;

  *v90 = v139;
  *(v90 + 8) = v84;
  *(v90 + 16) = v85;
  *(v90 + 24) = v86;
  KeyPath = swift_getKeyPath();
  v95 = v142;
  sub_1BA1D5180(v88, v142, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v96 = v95 + *(v141 + 36);
  *v96 = KeyPath;
  *(v96 + 8) = 0;
  sub_1BA1D51E8(v88, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v97 = swift_getKeyPath();
  v98 = v146;
  sub_1BA1D538C(v95, v146, sub_1B9F532BC);
  v99 = v98 + *(v145 + 36);
  *v99 = v97;
  *(v99 + 8) = 0;
  *(v99 + 16) = 1;
  v163 = sub_1BA1CC960();
  v164 = v100;
  MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
  sub_1B9F5D988();
  v101 = v156;
  sub_1BA4A5F18();

  sub_1BA1D51E8(v98, sub_1B9F5323C);
  v102 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
  v103 = v158;
  swift_beginAccess();
  v104 = v103 + v102;
  v105 = v144;
  sub_1BA1D5180(v104, v144, sub_1B9F51474);
  v106 = v93;
  if (v137(v105, 1, v93) == 1)
  {
    sub_1BA1D51E8(v105, sub_1B9F51474);
    v107 = 1;
    v108 = v160;
    v109 = v154;
    v110 = v147;
  }

  else
  {
    v111 = v132;
    (v157)(v132, v105, v93);
    (v130[0])(v131, v111, v93);
    v112 = sub_1BA4A5E08();
    v114 = v113;
    v163 = v112;
    v164 = v113;
    v116 = v115 & 1;
    v165 = v115 & 1;
    v166 = v117;
    v161 = 0;
    v162 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v118 = sub_1BA1CC960();
    v120 = v119;

    v161 = v118;
    v162 = v120;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v121 = v148;
    sub_1BA4A5F18();

    sub_1BA102AF4(v112, v114, v116);

    v122 = v111;
    v101 = v156;
    (*(v140 + 8))(v122, v106);
    v110 = v147;
    sub_1BA1D538C(v121, v147, sub_1B9F5305C);
    v107 = 0;
    v108 = v160;
    v109 = v154;
  }

  v136(v110, v107, 1, v108);
  v123 = v150;
  sub_1BA1D5180(v109, v150, sub_1B9F52ED4);
  v124 = v151;
  sub_1BA1D5180(v101, v151, sub_1B9F530BC);
  v125 = v149;
  sub_1BA1D5180(v110, v149, sub_1B9F52ED4);
  v126 = v152;
  sub_1BA1D5180(v123, v152, sub_1B9F52ED4);
  sub_1B9F528CC(0);
  v128 = v127;
  sub_1BA1D5180(v124, v126 + *(v127 + 48), sub_1B9F530BC);
  sub_1BA1D5180(v125, v126 + *(v128 + 64), sub_1B9F52ED4);
  sub_1BA1D51E8(v110, sub_1B9F52ED4);
  sub_1BA1D51E8(v101, sub_1B9F530BC);
  sub_1BA1D51E8(v109, sub_1B9F52ED4);
  sub_1BA1D51E8(v125, sub_1B9F52ED4);
  sub_1BA1D51E8(v124, sub_1B9F530BC);
  return sub_1BA1D51E8(v123, sub_1B9F52ED4);
}

uint64_t sub_1BA1CE250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  sub_1BA1D3840(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v40 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v40 - v14;
  sub_1BA1D3384(0, v13);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v40 - v23;
  *v24 = sub_1BA4A5788();
  *(v24 + 1) = 0x4028000000000000;
  v24[16] = 0;
  sub_1BA1D5320(0, &qword_1EBBEDCA8, sub_1BA1D34E8, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  v26 = a2;
  v27 = a2;
  v28 = a3;
  sub_1BA1CE534(a1, v26, a3, &v24[*(v25 + 44)]);
  v29 = sub_1BA4A60A8();
  v30 = sub_1BA4A5B78();
  v31 = &v24[*(v17 + 44)];
  *v31 = v29;
  v31[8] = v30;
  *v15 = sub_1BA4A5878();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_1BA1D5320(0, &qword_1EBBEDCB0, sub_1BA1D34E8, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1BA1CE534(a1, v27, v28, &v15[*(v32 + 44)]);
  v33 = sub_1BA4A60A8();
  v34 = sub_1BA4A5B78();
  v35 = &v15[*(v8 + 44)];
  *v35 = v33;
  v35[8] = v34;
  sub_1BA1D5180(v24, v20, sub_1BA1D3384);
  v36 = v40;
  sub_1BA1D5180(v15, v40, sub_1BA1D3840);
  v37 = v41;
  sub_1BA1D5180(v20, v41, sub_1BA1D3384);
  sub_1BA1D3350(0);
  sub_1BA1D5180(v36, v37 + *(v38 + 48), sub_1BA1D3840);
  sub_1BA1D51E8(v15, sub_1BA1D3840);
  sub_1BA1D51E8(v24, sub_1BA1D3384);
  sub_1BA1D51E8(v36, sub_1BA1D3840);
  return sub_1BA1D51E8(v20, sub_1BA1D3384);
}

uint64_t sub_1BA1CE534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v216 = a3;
  v227 = a2;
  v213 = a4;
  v217 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  MEMORY[0x1EEE9AC00](v217, v5);
  v205 = &v190[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v200 = &v190[-v9];
  sub_1B9F532BC(0);
  v222 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v204 = &v190[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v199 = &v190[-v15];
  sub_1B9F5323C(0);
  v224 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v206 = &v190[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v201 = &v190[-v21];
  sub_1B9F530BC(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v207 = &v190[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25, v26);
  v225 = &v190[-v27];
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v190[-v30];
  v229 = sub_1BA4A12C8();
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229, v32);
  v202 = &v190[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34, v35);
  v198 = &v190[-v36];
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v190[-v39];
  sub_1B9F5305C(0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v215 = &v190[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v44, v45);
  v214 = &v190[-v46];
  sub_1BA1D36C0(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v218 = &v190[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v50, v51);
  v219 = &v190[-v52];
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v190[-v55];
  sub_1BA1D35BC(0);
  v58 = v57;
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v60);
  v226 = &v190[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v62, v63);
  v203 = &v190[-v64];
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v190[-v67];
  sub_1BA1D3584(0);
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v212 = &v190[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v72, v73);
  v211 = &v190[-v74];
  MEMORY[0x1EEE9AC00](v75, v76);
  v210 = &v190[-v77];
  v81 = MEMORY[0x1EEE9AC00](v78, v79);
  v82 = &v190[-v80];
  v83 = a1;
  v84 = *(a1 + 16);
  v223 = v58;
  v221 = v59;
  v220 = &v190[-v80];
  if (v84)
  {
    v196 = v31;
    v85 = v84;

    *v68 = sub_1BA4A5878();
    *(v68 + 1) = 0;
    v208 = v68;
    v68[16] = 0;
    *v56 = sub_1BA4A5798();
    *(v56 + 1) = 0x4010000000000000;
    v56[16] = 0;
    sub_1BA1D5320(0, &qword_1EBBEDCB8, sub_1BA1D3758, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    v87 = *(v86 + 44);
    v195 = v56;
    v194 = &v56[v87];
    sub_1BA1CFA5C(1uLL, v85, &v234);
    v192 = v234;
    v88 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString;
    swift_beginAccess();
    v193 = *(v228 + 16);
    v193(v40, v85 + v88, v229);
    v197 = v40;
    v89 = sub_1BA4A5E08();
    v209 = v83;
    v90 = v89;
    v92 = v91;
    v234 = v89;
    v235 = v91;
    v94 = v93 & 1;
    v236 = v93 & 1;
    v237 = v95;
    v238 = 0;
    v239 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v96 = sub_1BA1CC960();
    v98 = v97;

    v238 = v96;
    v239 = v98;
    MEMORY[0x1BFAF1350](1952867660, 0xE400000000000000);
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v99 = v214;
    sub_1BA4A5F18();

    v100 = v209;
    sub_1BA102AF4(v90, v92, v94);

    v101 = v215;
    sub_1BA1D5180(v99, v215, sub_1B9F5305C);
    v102 = v194;
    *v194 = v192;
    sub_1BA1D3790(0);
    sub_1BA1D5180(v101, v102 + *(v103 + 48), sub_1B9F5305C);

    sub_1BA1D51E8(v99, sub_1B9F5305C);
    sub_1BA1D51E8(v101, sub_1B9F5305C);

    v104 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
    swift_beginAccess();
    v194 = v85;
    v105 = v85 + v104;
    v106 = v198;
    v107 = v229;
    v193(v198, v105, v229);
    v108 = v216;
    swift_beginAccess();
    v109 = v100[5];
    v193 = v100[4];
    v192 = v100[6];
    v191 = *(v100 + 56);
    if (v108)
    {
      swift_beginAccess();
      v111 = *(v108 + 4);
      v110 = *(v108 + 5);
      v112 = *(v108 + 6);
      v113 = v108[56];
    }

    else
    {
      v111 = 0;
      v110 = 0;
      v112 = 0;
      v113 = 0;
    }

    sub_1BA1D5320(0, &unk_1EBBEDCC0, sub_1BA1D3654, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    v198 = &v208[*(v116 + 44)];
    v117 = v217;
    v118 = v200;
    v119 = &v200[*(v217 + 20)];
    *v119 = 0;
    *(v119 + 1) = 0;
    v119[24] = 0;
    *(v119 + 2) = 0;
    v120 = v118 + *(v117 + 24);
    *v120 = 0;
    *(v120 + 8) = 0;
    *(v120 + 24) = 0;
    *(v120 + 16) = 0;
    (*(v228 + 32))(v118, v106, v107);

    *v119 = v193;
    *(v119 + 1) = v109;
    *(v119 + 2) = v192;
    v119[24] = v191;

    *v120 = v111;
    *(v120 + 8) = v110;
    *(v120 + 16) = v112;
    *(v120 + 24) = v113;
    KeyPath = swift_getKeyPath();
    v122 = v199;
    sub_1BA1D5180(v118, v199, type metadata accessor for AnimatedSnidgetCurrentValueText);
    v123 = &v122[*(v222 + 36)];
    *v123 = KeyPath;
    v123[8] = 0;
    sub_1BA1D51E8(v118, type metadata accessor for AnimatedSnidgetCurrentValueText);
    v124 = swift_getKeyPath();
    v125 = v201;
    sub_1BA1D538C(v122, v201, sub_1B9F532BC);
    v126 = v125 + *(v224 + 36);
    *v126 = v124;
    *(v126 + 1) = 1;
    v126[16] = 0;
    v234 = sub_1BA1CC960();
    v235 = v127;
    MEMORY[0x1BFAF1350](46, 0xE100000000000000);
    MEMORY[0x1BFAF1350](1952867660, 0xE400000000000000);
    MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
    sub_1B9F5D988();
    v128 = v196;
    sub_1BA4A5F18();

    sub_1BA1D51E8(v125, sub_1B9F5323C);
    v129 = v195;
    v130 = v219;
    sub_1BA1D5180(v195, v219, sub_1BA1D36C0);
    v131 = v225;
    sub_1BA1D5180(v128, v225, sub_1B9F530BC);
    v132 = v198;
    sub_1BA1D5180(v130, v198, sub_1BA1D36C0);
    sub_1BA1D368C(0);
    sub_1BA1D5180(v131, &v132[*(v133 + 48)], sub_1B9F530BC);
    sub_1BA1D51E8(v128, sub_1B9F530BC);
    sub_1BA1D51E8(v129, sub_1BA1D36C0);
    sub_1BA1D51E8(v131, sub_1B9F530BC);
    sub_1BA1D51E8(v130, sub_1BA1D36C0);

    v82 = v220;
    sub_1BA1D538C(v208, v220, sub_1BA1D35BC);
    v114 = *(v221 + 56);
    v58 = v223;
    (v114)(v82, 0, 1, v223);
    v115 = v209;
    v40 = v197;
  }

  else
  {
    v114 = *(v59 + 56);
    v114(&v190[-v80], 1, 1, v58, v81);
    v115 = a1;
  }

  if (*(v115 + 24))
  {
    v134 = *(v115 + 24);

    v135 = sub_1BA4A5878();
    v136 = v226;
    *v226 = v135;
    v136[1] = 0;
    *(v136 + 16) = 0;
    v137 = sub_1BA4A5798();
    v138 = v218;
    *v218 = v137;
    v138[1] = 0x4010000000000000;
    *(v138 + 16) = 0;
    sub_1BA1D5320(0, &qword_1EBBEDCB8, sub_1BA1D3758, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    v201 = (v138 + *(v139 + 44));
    sub_1BA1CFA5C(2uLL, v134, &v234);
    v200 = v234;
    v140 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString;
    swift_beginAccess();
    v141 = *(v228 + 16);
    v208 = (v228 + 16);
    v209 = v141;
    (v141)(v40, &v134[v140], v229);
    v142 = sub_1BA4A5E08();
    v144 = v143;
    v234 = v142;
    v235 = v143;
    v146 = v145 & 1;
    v236 = v145 & 1;
    v237 = v147;
    v232 = 0;
    v233 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v148 = sub_1BA1CC960();
    v150 = v149;

    v232 = v148;
    v233 = v150;
    MEMORY[0x1BFAF1350](0x7468676952, 0xE500000000000000);
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v151 = v214;
    sub_1BA4A5F18();

    v152 = v142;
    v153 = v229;
    sub_1BA102AF4(v152, v144, v146);

    v154 = v215;
    sub_1BA1D5180(v151, v215, sub_1B9F5305C);
    v155 = v201;
    *v201 = v200;
    sub_1BA1D3790(0);
    sub_1BA1D5180(v154, v155 + *(v156 + 48), sub_1B9F5305C);

    sub_1BA1D51E8(v151, sub_1B9F5305C);
    sub_1BA1D51E8(v154, sub_1B9F5305C);

    v157 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
    swift_beginAccess();
    v215 = v134;
    v158 = v202;
    (v209)(v202, &v134[v157], v153);
    v159 = v216;
    swift_beginAccess();
    v160 = *(v115 + 40);
    v214 = *(v115 + 32);
    v209 = *(v115 + 48);
    LODWORD(v208) = *(v115 + 56);
    if (v159)
    {
      swift_beginAccess();
      v162 = *(v159 + 4);
      v161 = *(v159 + 5);
      v163 = *(v159 + 6);
      LOBYTE(v159) = v159[56];
    }

    else
    {
      v162 = 0;
      v161 = 0;
      v163 = 0;
    }

    sub_1BA1D5320(0, &unk_1EBBEDCC0, sub_1BA1D3654, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    v216 = v226 + *(v165 + 44);
    v166 = v217;
    v167 = v205;
    v168 = &v205[*(v217 + 20)];
    *v168 = 0;
    *(v168 + 1) = 0;
    v168[24] = 0;
    *(v168 + 2) = 0;
    v169 = v167 + *(v166 + 24);
    *v169 = 0;
    *(v169 + 8) = 0;
    *(v169 + 24) = 0;
    *(v169 + 16) = 0;
    (*(v228 + 32))(v167, v158, v153);

    *v168 = v214;
    *(v168 + 1) = v160;
    *(v168 + 2) = v209;
    v168[24] = v208;

    *v169 = v162;
    *(v169 + 8) = v161;
    *(v169 + 16) = v163;
    *(v169 + 24) = v159;
    v170 = swift_getKeyPath();
    v171 = v204;
    sub_1BA1D5180(v167, v204, type metadata accessor for AnimatedSnidgetCurrentValueText);
    v172 = &v171[*(v222 + 36)];
    *v172 = v170;
    v172[8] = 0;
    sub_1BA1D51E8(v167, type metadata accessor for AnimatedSnidgetCurrentValueText);
    v173 = swift_getKeyPath();
    v174 = v206;
    sub_1BA1D538C(v171, v206, sub_1B9F532BC);
    v175 = &v174[*(v224 + 36)];
    *v175 = v173;
    *(v175 + 1) = 1;
    v175[16] = 0;
    v230 = sub_1BA1CC960();
    v231 = v176;
    MEMORY[0x1BFAF1350](46, 0xE100000000000000);
    MEMORY[0x1BFAF1350](0x7468676952, 0xE500000000000000);
    MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
    sub_1B9F5D988();
    v177 = v207;
    sub_1BA4A5F18();

    sub_1BA1D51E8(v174, sub_1B9F5323C);
    v178 = v218;
    v179 = v219;
    sub_1BA1D5180(v218, v219, sub_1BA1D36C0);
    v180 = v225;
    sub_1BA1D5180(v177, v225, sub_1B9F530BC);
    v181 = v216;
    sub_1BA1D5180(v179, v216, sub_1BA1D36C0);
    sub_1BA1D368C(0);
    sub_1BA1D5180(v180, &v181[*(v182 + 48)], sub_1B9F530BC);
    sub_1BA1D51E8(v177, sub_1B9F530BC);
    sub_1BA1D51E8(v178, sub_1BA1D36C0);
    sub_1BA1D51E8(v180, sub_1B9F530BC);
    sub_1BA1D51E8(v179, sub_1BA1D36C0);

    v183 = v203;
    sub_1BA1D538C(v226, v203, sub_1BA1D35BC);
    v164 = v210;
    sub_1BA1D538C(v183, v210, sub_1BA1D35BC);
    (*(v221 + 56))(v164, 0, 1, v223);
    v82 = v220;
  }

  else
  {
    v164 = v210;
    (v114)(v210, 1, 1, v58);
  }

  v184 = v211;
  sub_1BA1D5180(v82, v211, sub_1BA1D3584);
  v185 = v212;
  sub_1BA1D5180(v164, v212, sub_1BA1D3584);
  v186 = v213;
  sub_1BA1D5180(v184, v213, sub_1BA1D3584);
  sub_1BA1D3520(0, v187);
  sub_1BA1D5180(v185, v186 + *(v188 + 48), sub_1BA1D3584);
  sub_1BA1D51E8(v164, sub_1BA1D3584);
  sub_1BA1D51E8(v82, sub_1BA1D3584);
  sub_1BA1D51E8(v185, sub_1BA1D3584);
  return sub_1BA1D51E8(v184, sub_1BA1D3584);
}

void sub_1BA1CFA5C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = sub_1BA4A6568();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BA4A6578();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B9F6B774(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DB980], 0, 0x8000, 0, 0, 1);
  [v14 pointSize];

  v31 = MEMORY[0x1E69E7CC0];
  if (a1 >= 3)
  {
    type metadata accessor for HKAudiogramEar(0);
    v30 = a1;
    sub_1BA4A8388();
    __break(1u);
  }

  else
  {
    v29 = [objc_opt_self() *off_1E7EEC970[a1]];
    v15 = *(a2 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_pointMarkerOptionSets);
    v16 = *(v15 + 16);
    if (v16)
    {
      v24 = a3;
      v18 = *(v6 + 16);
      v17 = v6 + 16;
      v25 = v18;
      v26 = a1;
      v19 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v20 = *(v17 + 56);
      do
      {
        v25(v9, v19, v28);
        v21 = v29;
        sub_1BA4A6558();
        sub_1BA4A6538();
        MEMORY[0x1BFAF1510]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        (*(v10 + 8))(v13, v27);
        v19 += v20;
        --v16;
      }

      while (v16);
      v22 = v31;
      a3 = v24;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1BFAF0F80](v22);

    v23 = sub_1BA4A6118();

    *a3 = v23;
  }
}

void sub_1BA1CFD8C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v6 = *(a2 + 28);
  *(a3 + v6) = swift_getKeyPath();
  sub_1BA1D32EC(0, &qword_1EDC5F358, 255, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = a3 + *(a2 + 32);
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
  sub_1BA1D37F8(&qword_1EDC61060, v8, type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel, &protocol conformance descriptor for AudiogramSnidgetCurrentValueDataView.ViewModel);

  *a3 = sub_1BA4A5348();
  *(a3 + 8) = v9;

  *(a3 + 16) = v5;
}

uint64_t sub_1BA1CFEC4@<X0>(uint64_t a9@<X8>)
{
  *a9 = sub_1BA4A5868();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  sub_1BA1D313C(0, v11);
  return sub_1BA1CCC6C(v9, a9 + *(v12 + 44));
}

uint64_t sub_1BA1CFF0C(uint64_t a1)
{
  v2 = sub_1BA1D399C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1CFF48(uint64_t a1)
{
  v2 = sub_1BA1D399C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA1CFF84()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x647261646E617473;
  }
}

void sub_1BA1CFFC4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4F30A0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1BA1D00A8(uint64_t a1)
{
  v2 = sub_1BA1D3A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1D00E4(uint64_t a1)
{
  v2 = sub_1BA1D3A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA1D0120(uint64_t a1)
{
  v2 = sub_1BA1D39F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1D015C(uint64_t a1)
{
  v2 = sub_1BA1D39F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1BA1D3E0C(0, &qword_1EDC5DCD8, sub_1BA1D399C, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.AudiogramAverageCodingKeys, MEMORY[0x1E69E6F58]);
  v27 = v4;
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v26 = &v24 - v6;
  sub_1BA1D3E0C(0, &qword_1EDC5DCC8, sub_1BA1D39F0, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.StandardCodingKeys, v3);
  v8 = v7;
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - v10;
  sub_1BA1D3E0C(0, &qword_1EDC5DCD0, sub_1BA1D3A44, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.CodingKeys, v3);
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1D3A44();
  sub_1BA4A8548();
  if (v16 < 0)
  {
    v18 = v25;
    v19 = v16 & 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v31) = 1;
    sub_1BA1D399C();
    v20 = v26;
    v17 = v30;
    sub_1BA4A81F8();
    v31 = v19;
    type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel();
    sub_1BA1D37F8(&qword_1EDC611D8, v21, type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel, &protocol conformance descriptor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel);
    v22 = v27;
    sub_1BA4A8288();
    (*(v18 + 8))(v20, v22);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_1BA1D39F0();
    v17 = v30;
    sub_1BA4A81F8();
    v31 = v16;
    type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel(0);
    sub_1BA1D37F8(&qword_1EBBEDBB8, 255, type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel, &protocol conformance descriptor for StandardSnidgetCurrentValueDataView.ViewModel);
    sub_1BA4A8288();
    (*(v28 + 8))(v11, v8);
  }

  return (*(v29 + 8))(v15, v17);
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1BA1D3E0C(0, &qword_1EBBEDBC0, sub_1BA1D399C, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.AudiogramAverageCodingKeys, MEMORY[0x1E69E6F48]);
  v39 = v4;
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v38 = &v36 - v6;
  sub_1BA1D3E0C(0, &qword_1EBBEDBC8, sub_1BA1D39F0, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.StandardCodingKeys, v3);
  v8 = v7;
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v36 - v10;
  sub_1BA1D3E0C(0, &qword_1EBBEDBD0, sub_1BA1D3A44, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.CodingKeys, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v16 = a1[3];
  v43 = a1;
  v17 = a1;
  v19 = &v36 - v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_1BA1D3A44();
  v41 = v19;
  v20 = v42;
  sub_1BA4A8528();
  if (!v20)
  {
    v21 = v11;
    v42 = v8;
    v22 = v38;
    v23 = v39;
    v24 = v40;
    v25 = sub_1BA4A81D8();
    v26 = (2 * *(v25 + 16)) | 1;
    v44 = v25;
    v45 = v25 + 32;
    v46 = 0;
    v47 = v26;
    v27 = sub_1B9F4BD44();
    if (v27 == 2 || v46 != v47 >> 1)
    {
      v29 = sub_1BA4A7E68();
      swift_allocError();
      v31 = v30;
      sub_1BA1D3ABC(0, &qword_1EBBE9EF8, sub_1B9FFFE00, MEMORY[0x1E69E6B18]);
      *v31 = &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType;
      v32 = v41;
      sub_1BA4A8128();
      sub_1BA4A7E48();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v14 + 8))(v32, v13);
      swift_unknownObjectRelease();
    }

    else if (v27)
    {
      LOBYTE(v48) = 1;
      sub_1BA1D399C();
      sub_1BA4A8118();
      type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel();
      sub_1BA1D37F8(&qword_1EBBEDBD8, v28, type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel, &protocol conformance descriptor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel);
      sub_1BA4A81C8();
      (*(v37 + 8))(v22, v23);
      (*(v14 + 8))(v41, v13);
      swift_unknownObjectRelease();
      *v24 = v48 | 0x8000000000000000;
    }

    else
    {
      LOBYTE(v48) = 0;
      sub_1BA1D39F0();
      sub_1BA4A8118();
      v34 = v14;
      type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel(0);
      sub_1BA1D37F8(&qword_1EBBEDBE0, 255, type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel, &protocol conformance descriptor for StandardSnidgetCurrentValueDataView.ViewModel);
      v35 = v42;
      sub_1BA4A81C8();
      (*(v36 + 8))(v21, v35);
      (*(v34 + 8))(v41, v13);
      swift_unknownObjectRelease();
      *v24 = v48;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

double AudiogramSnidgetCurrentValueDataView.ViewModel.viewModelType.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.__allocating_init(viewModelType:)(void *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

void sub_1BA1D0C7C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65646F4D77656976 && a2 == 0xED0000657079546CLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1BA1D0D0C(uint64_t a1)
{
  v2 = sub_1BA1D3B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1D0D48(uint64_t a1)
{
  v2 = sub_1BA1D3B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1D0DE4(void *a1)
{
  v2 = v1;
  sub_1BA1D3E0C(0, &qword_1EDC5DCC0, sub_1BA1D3B38, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1D3B38();
  sub_1BA4A8548();
  v11[1] = *(v2 + 16);
  sub_1BA1D3B8C();

  sub_1BA4A8288();

  return (*(v6 + 8))(v9, v5);
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  AudiogramSnidgetCurrentValueDataView.ViewModel.init(from:)(a1);
  return v2;
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.init(from:)(void *a1)
{
  sub_1BA1D3E0C(0, &qword_1EBBEDBE8, sub_1BA1D3B38, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1D3B38();
  sub_1BA4A8528();
  if (v1)
  {
    v10 = v12;
    type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1BA1D3BE0();
    sub_1BA4A81C8();
    (*(v5 + 8))(v8, v4);
    v10 = v12;
    *(v12 + 16) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1BA1D11A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
  result = sub_1BA4A4D78();
  *a2 = result;
  return result;
}

uint64_t sub_1BA1D12C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_1BA4A12C8();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_1BA1D134C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_1BA4A12C8();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8, v11);
  v14 = *a2;
  v15 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v14 + v15, v13, v8);
  return swift_endAccess();
}

uint64_t sub_1BA1D1470@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_1BA4A12C8();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_1BA1D1500(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_1BA4A12C8();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.__allocating_init(primaryString:supratitleString:pointMarkerOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
  v8 = sub_1BA4A12C8();
  v9 = *(*(v8 - 8) + 32);
  v9(v6 + v7, a1, v8);
  v9(v6 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString, a2, v8);
  *(v6 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_pointMarkerOptionSets) = a3;
  return v6;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.init(primaryString:supratitleString:pointMarkerOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
  v8 = sub_1BA4A12C8();
  v9 = *(*(v8 - 8) + 32);
  v9(v3 + v7, a1, v8);
  v9(v3 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString, a2, v8);
  *(v3 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_pointMarkerOptionSets) = a3;
  return v3;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.init(from:)(a1);
  return v2;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.init(from:)(void *a1)
{
  v2 = sub_1BA4A1278();
  v3 = *(v2 - 8);
  v50 = v2;
  v51 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1BA4A12C8();
  v52 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v54 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v44 - v18;
  sub_1BA1D3E0C(0, &qword_1EBBEDBF8, sub_1BA1D3C34, &type metadata for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v56 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v44 - v23;
  v25 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1BA1D3C34();
  v55 = v24;
  v26 = v58;
  sub_1BA4A8528();
  if (v26)
  {
    v27 = v59;
    type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v12;
    v49 = v8;
    v28 = v52;
    v29 = v53;
    v58 = v21;
    v64 = 0;
    v30 = sub_1BA1D37F8(&qword_1EDC6AEA8, 255, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
    v31 = v54;
    sub_1BA4A81C8();
    v32 = v28[2];
    v33 = v19;
    v46 = v28 + 2;
    v47 = v30;
    v34 = v57;
    v45 = v32;
    v32(v19, v31, v57);
    v35 = v29;
    sub_1BA4A1288();
    sub_1B9F4D364(v29, v19);
    v36 = *(v51 + 8);
    v51 += 8;
    v44 = v36;
    v36(v29, v50);
    v54 = v28[1];
    (v54)(v31, v34);
    v27 = v59;
    v37 = v33;
    v38 = v28[4];
    v38(v59 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString, v37, v34);
    v63 = 1;
    v39 = v49;
    sub_1BA4A81C8();
    v52 = v28 + 1;
    v40 = v48;
    v41 = v57;
    v45(v48, v39, v57);
    sub_1BA4A1288();
    sub_1B9F4D364(v35, v40);
    v44(v35, v50);
    (v54)(v39, v41);
    v38(v27 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString, v40, v41);
    sub_1BA1D32EC(0, &unk_1EDC5E690, 255, MEMORY[0x1E69A4060], MEMORY[0x1E69E62F8]);
    v62 = 2;
    sub_1BA1D3CE0(&qword_1EBBEDC00, sub_1BA1D3CA8, MEMORY[0x1E69E6330]);
    v42 = v56;
    sub_1BA4A81C8();
    (*(v58 + 8))(v55, v42);
    *(v27 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_pointMarkerOptionSets) = v61;
  }

  __swift_destroy_boxed_opaque_existential_1(v60);
  return v27;
}

unint64_t sub_1BA1D1E64()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x537972616D697270;
  }
}

uint64_t sub_1BA1D1ED4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA1D4EC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA1D1EFC(uint64_t a1)
{
  v2 = sub_1BA1D3C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1D1F38(uint64_t a1)
{
  v2 = sub_1BA1D3C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
  v2 = sub_1BA4A12C8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString, v2);

  return v0;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
  v2 = sub_1BA4A12C8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1D20F0(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A12C8();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1BA1D3E0C(0, &qword_1EDC5DCE8, sub_1BA1D3C34, &type metadata for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v28 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1D3C34();
  sub_1BA4A8548();
  v16 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
  swift_beginAccess();
  v17 = v34;
  v18 = *(v34 + 16);
  v29 = v2;
  v19 = v2 + v16;
  v20 = v18;
  v18(v10, v19, v4);
  v36 = 0;
  sub_1BA1D37F8(&qword_1EDC6AEB8, 255, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
  v33 = v12;
  v21 = v32;
  sub_1BA4A8288();
  if (v21)
  {
    (*(v17 + 8))(v10, v4);
    return (*(v31 + 8))(v15, v33);
  }

  else
  {
    v23 = *(v17 + 8);
    v34 = v17 + 8;
    v24 = v23;
    v23(v10, v4);
    v25 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString;
    v26 = v29;
    swift_beginAccess();
    v20(v30, v26 + v25, v4);
    LOBYTE(v37) = 1;
    v27 = v33;
    sub_1BA4A8288();
    v24(v30, v4);
    v37 = *(v26 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_pointMarkerOptionSets);
    v35 = 2;
    sub_1BA1D32EC(0, &unk_1EDC5E690, 255, MEMORY[0x1E69A4060], MEMORY[0x1E69E62F8]);
    sub_1BA1D3CE0(&qword_1EDC5E688, sub_1BA1D3D80, MEMORY[0x1E69E6300]);
    sub_1BA4A8288();
    return (*(v31 + 8))(0, v27);
  }
}

uint64_t sub_1BA1D2544@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel(0);
  result = sub_1BA4A4D78();
  *a2 = result;
  return result;
}

uint64_t sub_1BA1D2584@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel(0);
  v5 = swift_allocObject();
  result = AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

double sub_1BA1D2604@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 32);
  *(a2 + 8) = *(v3 + 40);
  *(a2 + 24) = v4;

  return result;
}

double sub_1BA1D2664(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = v4;
  *(v6 + 56) = v5;

  return result;
}

double sub_1BA1D26DC@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
  *(a1 + 24) = v3;

  return result;
}

double sub_1BA1D2738(__int128 *a1)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;

  return result;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.__allocating_init(leftEarViewModel:rightEarViewModel:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 56) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.init(leftEarViewModel:rightEarViewModel:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 56) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

unint64_t sub_1BA1D2804()
{
  v1 = 0xD000000000000016;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1BA1D2858@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA1D4FF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA1D2880(uint64_t a1)
{
  v2 = sub_1BA1D3DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1D28BC(uint64_t a1)
{
  v2 = sub_1BA1D3DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.deinit()
{

  return v0;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1D2970(void *a1)
{
  v3 = v1;
  sub_1BA1D3E0C(0, &qword_1EDC5DCE0, sub_1BA1D3DB8, &type metadata for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1D3DB8();
  sub_1BA4A8548();
  v14 = *(v3 + 16);
  v17 = 0;
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel(0);
  sub_1BA1D37F8(&qword_1EDC612F8, 255, type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel, &protocol conformance descriptor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel);
  sub_1BA4A8238();
  if (!v2)
  {
    v14 = *(v3 + 24);
    v17 = 1;
    sub_1BA4A8238();
    swift_beginAccess();
    v11 = *(v3 + 56);
    v14 = *(v3 + 32);
    v15 = *(v3 + 40);
    v16 = v11;
    v18 = 2;
    sub_1BA102B04();

    sub_1BA4A8238();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.init(from:)(a1);
  return v2;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.init(from:)(void *a1)
{
  v3 = v1;
  sub_1BA1D3E0C(0, &qword_1EBBEDC10, sub_1BA1D3DB8, &type metadata for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = *(v5 - 8);
  *&v17 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v14 - v7;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 41) = 0u;
  v9 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1BA1D3DB8();
  v15 = v8;
  sub_1BA4A8528();
  if (v2)
  {
  }

  else
  {
    v14[1] = v3 + 32;
    type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel(0);
    v18 = 0;
    sub_1BA1D37F8(&qword_1EBBEDC18, 255, type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel, &protocol conformance descriptor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel);
    v10 = v17;
    v11 = v15;
    sub_1BA4A8178();
    *(v3 + 16) = v19;

    v18 = 1;
    sub_1BA4A8178();
    *(v3 + 24) = v19;

    v18 = 2;
    sub_1B9F73860();
    sub_1BA4A8178();
    (*(v16 + 8))(v11, v10);
    v17 = v19;
    v13 = v20;
    LOBYTE(v11) = v21;
    swift_beginAccess();
    *(v3 + 32) = v17;
    *(v3 + 48) = v13;
    *(v3 + 56) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v3;
}

uint64_t sub_1BA1D2F60@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel();
  result = sub_1BA4A4D78();
  *a3 = result;
  return result;
}

uint64_t sub_1BA1D2FE0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_1BA1D3074(uint64_t a1)
{
  v2 = sub_1BA4A5858();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BA4A5558();
}

void sub_1BA1D313C(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBEDAF8)
  {
    sub_1BA1D33CC(255, &qword_1EBBEDB00, sub_1BA1D31E8, sub_1BA1D3920, MEMORY[0x1E697F960]);
    v2 = sub_1BA4A52C8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEDAF8);
    }
  }
}

void sub_1BA1D321C(uint64_t a1)
{
  if (!qword_1EBBEDB10)
  {
    sub_1BA1D32B4(255);
    sub_1BA1D37F8(&qword_1EBBEDBA8, 255, sub_1BA1D32B4, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A5268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDB10);
    }
  }
}

void sub_1BA1D32EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA1D33CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1BA1D3450(uint64_t a1)
{
  if (!qword_1EBBEDB30)
  {
    sub_1BA1D34E8(255);
    sub_1BA1D37F8(&qword_1EBBEDB90, 255, sub_1BA1D34E8, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDB30);
    }
  }
}

void sub_1BA1D3520(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBEDB40)
  {
    sub_1BA1D3584(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEDB40);
    }
  }
}

void sub_1BA1D35BC(uint64_t a1)
{
  if (!qword_1EBBEDB50)
  {
    sub_1BA1D3654(255);
    sub_1BA1D37F8(&qword_1EBBEDB88, 255, sub_1BA1D3654, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDB50);
    }
  }
}

void sub_1BA1D36C0(uint64_t a1)
{
  if (!qword_1EBBEDB68)
  {
    sub_1BA1D3758(255);
    sub_1BA1D37F8(&qword_1EBBEDB80, 255, sub_1BA1D3758, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDB68);
    }
  }
}

void sub_1BA1D3790(uint64_t a1)
{
  if (!qword_1EBBEDB78)
  {
    sub_1B9F5305C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEDB78);
    }
  }
}

uint64_t sub_1BA1D37F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1BA1D3888(uint64_t a1)
{
  if (!qword_1EBBEDBA0)
  {
    sub_1BA1D34E8(255);
    sub_1BA1D37F8(&qword_1EBBEDB90, 255, sub_1BA1D34E8, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDBA0);
    }
  }
}

unint64_t sub_1BA1D399C()
{
  result = qword_1EDC610C8[0];
  if (!qword_1EDC610C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC610C8);
  }

  return result;
}

unint64_t sub_1BA1D39F0()
{
  result = qword_1EDC61098;
  if (!qword_1EDC61098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61098);
  }

  return result;
}

unint64_t sub_1BA1D3A44()
{
  result = qword_1EDC610B0;
  if (!qword_1EDC610B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC610B0);
  }

  return result;
}

void sub_1BA1D3ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1BA1D3B38()
{
  result = qword_1EDC61078;
  if (!qword_1EDC61078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61078);
  }

  return result;
}

unint64_t sub_1BA1D3B8C()
{
  result = qword_1EDC61080;
  if (!qword_1EDC61080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61080);
  }

  return result;
}

unint64_t sub_1BA1D3BE0()
{
  result = qword_1EBBEDBF0;
  if (!qword_1EBBEDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDBF0);
  }

  return result;
}

unint64_t sub_1BA1D3C34()
{
  result = qword_1EDC61310;
  if (!qword_1EDC61310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61310);
  }

  return result;
}

uint64_t sub_1BA1D3CE0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BA1D32EC(255, &unk_1EDC5E690, 255, MEMORY[0x1E69A4060], MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA1D3DB8()
{
  result = qword_1EDC611F0;
  if (!qword_1EDC611F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC611F0);
  }

  return result;
}

void sub_1BA1D3E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1BA1D3E74(uint64_t a1)
{
  result = sub_1BA1D37F8(&qword_1EDC60FA0, 255, type metadata accessor for AudiogramSnidgetCurrentValueDataView, &protocol conformance descriptor for AudiogramSnidgetCurrentValueDataView);
  *(a1 + 8) = result;
  return result;
}

void sub_1BA1D3F14(uint64_t a1)
{
  sub_1BA1D409C(319);
  if (v2 <= 0x3F)
  {
    sub_1BA1D32EC(319, qword_1EDC60FA8, v1, type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1B9F5366C(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        sub_1BA1D32EC(319, &qword_1EDC5F348, 255, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          sub_1BA1D32EC(319, &qword_1EDC5F340, 255, type metadata accessor for HKWidthDesignation, MEMORY[0x1E697DCC0]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BA1D409C(uint64_t a1)
{
  if (!qword_1EDC5F2D0)
  {
    type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
    sub_1BA1D37F8(&qword_1EDC61060, v1, type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel, &protocol conformance descriptor for AudiogramSnidgetCurrentValueDataView.ViewModel);
    v2 = sub_1BA4A5378();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC5F2D0);
    }
  }
}

uint64_t sub_1BA1D41C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BA1D4220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1BA1D43A4(uint64_t a1)
{
  result = sub_1BA4A12C8();
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

void sub_1BA1D45A8(uint64_t a1)
{
  if (!qword_1EBBEDC28)
  {
    sub_1BA1D33CC(255, &qword_1EBBEDB00, sub_1BA1D31E8, sub_1BA1D3920, MEMORY[0x1E697F960]);
    sub_1BA1D4650();
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDC28);
    }
  }
}

unint64_t sub_1BA1D4650()
{
  result = qword_1EBBEDC30;
  if (!qword_1EBBEDC30)
  {
    sub_1BA1D33CC(255, &qword_1EBBEDB00, sub_1BA1D31E8, sub_1BA1D3920, MEMORY[0x1E697F960]);
    sub_1BA1D4714();
    sub_1BA1D47C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC30);
  }

  return result;
}

unint64_t sub_1BA1D4714()
{
  result = qword_1EBBEDC38;
  if (!qword_1EBBEDC38)
  {
    sub_1BA1D31E8(255);
    sub_1BA1D37F8(&qword_1EBBEDC40, 255, sub_1BA1D321C, MEMORY[0x1E697BF80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC38);
  }

  return result;
}

unint64_t sub_1BA1D47C0()
{
  result = qword_1EBBEDC48;
  if (!qword_1EBBEDC48)
  {
    sub_1BA1D3920(255);
    sub_1B9F52970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC48);
  }

  return result;
}

unint64_t sub_1BA1D489C()
{
  result = qword_1EBBEDC50;
  if (!qword_1EBBEDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC50);
  }

  return result;
}

unint64_t sub_1BA1D48F4()
{
  result = qword_1EBBEDC58;
  if (!qword_1EBBEDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC58);
  }

  return result;
}

unint64_t sub_1BA1D494C()
{
  result = qword_1EBBEDC60;
  if (!qword_1EBBEDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC60);
  }

  return result;
}

unint64_t sub_1BA1D49A4()
{
  result = qword_1EBBEDC68;
  if (!qword_1EBBEDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC68);
  }

  return result;
}

unint64_t sub_1BA1D49FC()
{
  result = qword_1EBBEDC70;
  if (!qword_1EBBEDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC70);
  }

  return result;
}

unint64_t sub_1BA1D4A54()
{
  result = qword_1EBBEDC78;
  if (!qword_1EBBEDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC78);
  }

  return result;
}

unint64_t sub_1BA1D4AAC()
{
  result = qword_1EDC611E0;
  if (!qword_1EDC611E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC611E0);
  }

  return result;
}

unint64_t sub_1BA1D4B04()
{
  result = qword_1EDC611E8;
  if (!qword_1EDC611E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC611E8);
  }

  return result;
}

unint64_t sub_1BA1D4B5C()
{
  result = qword_1EDC61300;
  if (!qword_1EDC61300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61300);
  }

  return result;
}

unint64_t sub_1BA1D4BB4()
{
  result = qword_1EDC61308;
  if (!qword_1EDC61308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61308);
  }

  return result;
}

unint64_t sub_1BA1D4C0C()
{
  result = qword_1EDC61068;
  if (!qword_1EDC61068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61068);
  }

  return result;
}

unint64_t sub_1BA1D4C64()
{
  result = qword_1EDC61070;
  if (!qword_1EDC61070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61070);
  }

  return result;
}

unint64_t sub_1BA1D4CBC()
{
  result = qword_1EDC610A0;
  if (!qword_1EDC610A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC610A0);
  }

  return result;
}

unint64_t sub_1BA1D4D14()
{
  result = qword_1EDC610A8;
  if (!qword_1EDC610A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC610A8);
  }

  return result;
}

unint64_t sub_1BA1D4D6C()
{
  result = qword_1EDC61088;
  if (!qword_1EDC61088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61088);
  }

  return result;
}

unint64_t sub_1BA1D4DC4()
{
  result = qword_1EDC61090;
  if (!qword_1EDC61090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61090);
  }

  return result;
}

unint64_t sub_1BA1D4E1C()
{
  result = qword_1EDC610B8;
  if (!qword_1EDC610B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC610B8);
  }

  return result;
}

unint64_t sub_1BA1D4E74()
{
  result = qword_1EDC610C0;
  if (!qword_1EDC610C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC610C0);
  }

  return result;
}

uint64_t sub_1BA1D4EC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x537972616D697270 && a2 == 0xED0000676E697274;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4EAEC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001BA4F3080 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BA1D4FF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001BA4F2FC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BA4F2FE0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA4EAEF0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1BA4A8338();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1BA1D5118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BA1D5180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA1D51E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1BA1D5248(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1BA1D5260(uint64_t a1)
{
  if (!qword_1EBBEDC98)
  {
    sub_1BA1D32B4(255);
    sub_1BA1D52CC();
    v1 = sub_1BA4A52C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDC98);
    }
  }
}

unint64_t sub_1BA1D52CC()
{
  result = qword_1EBBEDCA0;
  if (!qword_1EBBEDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDCA0);
  }

  return result;
}

void sub_1BA1D5320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1BA4A52C8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA1D538C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double static UIPluginBundleProvider.sharedInstance.getter()
{
  if (qword_1EDC6CBD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static UIPluginBundleProvider.sharedInstance.setter(uint64_t a1)
{
  if (qword_1EDC6CBD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC6CBD8 = a1;

  return result;
}

uint64_t (*static UIPluginBundleProvider.sharedInstance.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDC6CBD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1BA1D55DC@<D0>(void *a1@<X8>)
{
  if (qword_1EDC6CBD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDC6CBD8;

  return result;
}

double sub_1BA1D565C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EDC6CBD0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC6CBD8 = v1;

  return result;
}

id sub_1BA1D56FC()
{
  v1 = v0;
  v2 = qword_1EDC6DC48;
  v3 = *(v0 + qword_1EDC6DC48);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = sub_1BA4A3AD8();
    [v5 load];

    v6 = sub_1BA4A3AD8();
    NSBundle.mainStoryboardFile.getter();
    v8 = v7;

    if (v8)
    {
      v9 = sub_1BA4A3AD8();
      v10 = sub_1BA4A6758();

      v4 = [objc_opt_self() storyboardWithName:v10 bundle:v9];
    }

    else
    {
      v4 = 0;
    }

    v11 = *(v1 + v2);
    *(v1 + v2) = v4;
    v12 = v4;
    sub_1B9F49114(v11);
  }

  sub_1BA028194(v3);
  return v4;
}

uint64_t UIPluginInfo.deinit()
{
  v0 = sub_1BA4A3AF8();
  sub_1B9F49114(*(v0 + qword_1EDC6DC48));
  return v0;
}

uint64_t ViewModelState.id.getter()
{
  v1 = *v0;

  return v1;
}

void ViewModelState.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ViewModelState.previousViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1BA4A7AA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ViewModelState.previousViewModel.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1BA4A7AA8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1BA1D5B48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (v6)
  {
    v10 = *(v4 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_29;
  }

  v12 = v10 + ((v9 + v8 + ((v8 + 16) & ~v8)) & ~v8);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      if ((v6 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((a1 + v8 + 16) & ~v8);
      }

      v18 = *(a1 + 1);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v7 + (v12 | v17) + 1;
}

void sub_1BA1D5CE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = (v10 + v9 + ((v9 + 16) & ~v9)) & ~v9;
  if (!v7)
  {
    ++v10;
  }

  v12 = v10 + v11;
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 < a2)
  {
    v16 = ~v8 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_48:
              if (v15 == 2)
              {
                *&a1[v12] = v17;
              }

              else
              {
                *&a1[v12] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v15)
    {
      a1[v12] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v12] = 0;
  }

  else if (v15)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);
    v22 = &a1[v9 + 16] & ~v9;

    v21(v22);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

id static HKDateCache.shared.getter()
{
  if (qword_1EDC6E3F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC6E400;

  return v1;
}

void *UnusedModelsVersionMismatchAlertDataSource.init(context:healthStore:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v47 = sub_1BA4A1E88();
  v7 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_healthStore) = a2;
  v11 = a2;
  v12 = sub_1BA4A6F38();
  v13 = sub_1BA1D9D24(a1, v12);

  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_cachedModelReferencesDataSource) = v13;
  v14 = [*&v13[qword_1EDC84A68] fetchedObjects];
  v15 = MEMORY[0x1E69E7CC0];
  v44 = v6;
  v45 = v11;
  if (!v14)
  {
    goto LABEL_15;
  }

  v16 = v14;
  v42 = v3;
  v43 = a1;
  sub_1BA4A23C8();
  v17 = sub_1BA4A6B08();

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_14:

    v3 = v42;
    a1 = v43;
LABEL_15:
    v48 = v15;
    v28 = MEMORY[0x1E695BF98];
    sub_1BA1DA2A0(0, &qword_1EBBEDCE0, MEMORY[0x1E695BF98]);
    swift_allocObject();
    v29 = sub_1BA4A4DF8();
    v30 = OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_cachedSharableModelReferencesPublisher;
    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_cachedSharableModelReferencesPublisher) = v29;
    v31 = v45;
    v32 = static UnusedModelsVersionMismatchAlertDataSource.makeCommittedSharableModelReferencesPublisher(healthStore:)(v45);
    v48 = *(v3 + v30);
    sub_1BA1DB148(&unk_1EBBEDCF0, &qword_1EBBEDCE0, v28, MEMORY[0x1E695BFB0]);
    v33 = sub_1BA4A4F98();
    v35 = sub_1BA1D6ACC(v33, v32, v31, v34);

    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_sectionsPublisher) = v35;

    v37 = sub_1BA1D72D0(v36);
    v38 = *(v37 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_cachedModelReferencesDataSource);
    v39 = qword_1EDC84A70;
    swift_beginAccess();
    v40 = *(v38 + v39);

    [v40 registerObserver_];

    return v37;
  }

  v18 = sub_1BA4A7CC8();
  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_4:
  v48 = v15;
  result = sub_1BA066CC4(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v15 = v48;
    v21 = v17;
    v46 = v17 & 0xC000000000000001;
    v22 = v17;
    v23 = v18;
    do
    {
      if (v46)
      {
        v24 = MEMORY[0x1BFAF2860](v20);
      }

      else
      {
        v24 = *(v21 + 8 * v20 + 32);
      }

      v25 = v24;
      sub_1BA4A2398();

      v48 = v15;
      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1BA066CC4((v26 > 1), v27 + 1, 1);
        v15 = v48;
      }

      ++v20;
      *(v15 + 16) = v27 + 1;
      (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27, v10, v47);
      v21 = v22;
    }

    while (v23 != v20);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t static UnusedModelsVersionMismatchAlertDataSource.makeCommittedSharableModelReferencesPublisher(healthStore:)(void *a1)
{
  v2 = v1;
  v62 = MEMORY[0x1E69E8050];
  sub_1BA1D9F78(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v61 = &v46 - v6;
  v7 = MEMORY[0x1E69A3CF0];
  sub_1BA1DA0D0(0, &qword_1EBBEDD00, &qword_1EBBEDD28, MEMORY[0x1E69A3CF0]);
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v46 - v11;
  v48 = MEMORY[0x1E69A3C80];
  sub_1BA1DA0D0(0, &qword_1EBBEDD38, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80]);
  v14 = *(v13 - 8);
  v53 = v13;
  v54 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v47 = &v46 - v16;
  sub_1BA1DA1A0(0);
  v58 = v17;
  v60 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v49 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BA1DA1A0;
  v55 = sub_1BA1DA3BC;
  sub_1BA1DABB4(0, &unk_1EBBEDD60, sub_1BA1DA1A0, sub_1BA1DA3BC);
  v57 = v20;
  v59 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v52 = &v46 - v22;
  v63 = sub_1BA4A6F78();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v2;
  sub_1BA1D9FDC(0);
  v24 = MEMORY[0x1E69E62F8];
  sub_1BA1D9F78(0, &qword_1EBBEDD28, v7, MEMORY[0x1E69E62F8]);
  v25 = MEMORY[0x1E695BED8];
  sub_1BA1DA088(&qword_1EBBEDD30, sub_1BA1D9FDC, MEMORY[0x1E695BED8]);
  v26 = a1;
  sub_1BA4A4FE8();

  v27 = swift_allocObject();
  v28 = v46;
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  sub_1BA1D9F78(0, &qword_1EBBEDCE8, v48, v24);
  v29 = v26;
  v30 = v47;
  v31 = v50;
  sub_1BA4A4B68();

  (*(v51 + 8))(v12, v31);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v28;
  v33 = MEMORY[0x1E695BED0];
  sub_1BA1DA2A0(0, &qword_1EBBEDD48, MEMORY[0x1E695BED0]);
  sub_1BA1DA340();
  sub_1BA1DB148(&qword_1EBBEDD58, &qword_1EBBEDD48, v33, v25);
  v34 = v29;
  v35 = v49;
  v36 = v53;
  sub_1BA4A5018();

  (*(v54 + 8))(v30, v36);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v37 = sub_1BA4A7308();
  v63 = v37;
  v38 = sub_1BA4A72A8();
  v39 = v61;
  (*(*(v38 - 8) + 56))(v61, 1, 1, v38);
  sub_1BA1DA3BC();
  sub_1B9F3DC80();
  v40 = v52;
  v41 = v58;
  sub_1BA4A50A8();
  sub_1BA1DB18C(v39, &qword_1EDC6B5B8, v62);

  v42.n128_f64[0] = (*(v60 + 8))(v35, v41);
  sub_1BA1DA408(&qword_1EBBEDD80, &unk_1EBBEDD60, v56, v55, v42);
  v43 = v57;
  v44 = sub_1BA4A4F98();
  (*(v59 + 8))(v40, v43);
  return v44;
}

uint64_t sub_1BA1D6ACC(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = v4;
  sub_1BA1DB288(0, a4);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1DB358(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1DB418(0);
  v21 = *(v20 - 8);
  v35 = v20;
  v36 = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  v40 = a1;
  v25 = MEMORY[0x1E695BED0];
  sub_1BA1DA2A0(0, &qword_1EBBEDD48, MEMORY[0x1E695BED0]);
  sub_1BA1DB148(&qword_1EBBEDD58, &qword_1EBBEDD48, v25, MEMORY[0x1E695BED8]);
  sub_1BA4A4FC8();
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = v5;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1BA1DB4F4;
  *(v27 + 24) = v26;
  sub_1BA1D9F78(0, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80], MEMORY[0x1E69E62F8]);
  sub_1BA1DA088(&qword_1EBBEDE68, sub_1BA1DB358, MEMORY[0x1E695BC68]);
  v28 = a3;
  sub_1BA4A4FE8();

  (*(v16 + 8))(v19, v15);
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v5;
  sub_1B9F14628(0, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
  v30 = v28;
  v31 = v35;
  sub_1BA4A4B68();

  sub_1BA1DA088(&unk_1EBBEDE78, sub_1BA1DB288, MEMORY[0x1E695BD60]);
  v32 = v37;
  v33 = sub_1BA4A4F98();
  (*(v38 + 8))(v13, v32);
  (*(v36 + 8))(v24, v31);
  return v33;
}

void *sub_1BA1D6F20(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  v10 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v11 = sub_1BA4A7A78();
  v12 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v13 = sub_1BA4A6758();
  v14 = [v12 initWithName:v13 loggingCategory:v11];

  *(v2 + v10) = v14;
  v15 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v28 = 0x627550736D657449;
  v29 = 0xEF3C72656873696CLL;
  sub_1BA4A1788();
  v16 = sub_1BA4A1748();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  MEMORY[0x1BFAF1350](v16, v18);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v19 = v29;
  *v15 = v28;
  v15[1] = v19;
  v20 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSections) = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSectionsIdentifierToIndexMap;
  *(v2 + v21) = sub_1B9F1C5F0(v20);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable) = 0;
  *(swift_allocObject() + 16) = v4;
  swift_allocObject();
  swift_weakInit();
  sub_1BA1DABB4(0, &qword_1EBBEDDA8, sub_1BA1DAC5C, sub_1BA1DB114);
  v24 = v23;
  sub_1BA1DA408(&qword_1EBBEDE28, &qword_1EBBEDDA8, sub_1BA1DAC5C, sub_1BA1DB114, v25);
  v26 = sub_1BA4A5008();

  (*(*(v24 - 8) + 8))(a1, v24);
  *(v2 + v22) = v26;

  return v2;
}

void *sub_1BA1D72D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_1BA4A45D8();
  v10 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v11 = sub_1BA4A7A78();
  v12 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v13 = sub_1BA4A6758();
  v14 = [v12 initWithName:v13 loggingCategory:v11];

  *(v2 + v10) = v14;
  v15 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v26 = 0x627550736D657449;
  v27 = 0xEF3C72656873696CLL;
  sub_1BA4A1788();
  v16 = sub_1BA4A1748();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  MEMORY[0x1BFAF1350](v16, v18);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v19 = v27;
  *v15 = v26;
  v15[1] = v19;
  v20 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSections) = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSectionsIdentifierToIndexMap;
  *(v2 + v21) = sub_1B9F1C5F0(v20);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable) = 0;
  *(swift_allocObject() + 16) = v4;
  swift_allocObject();
  swift_weakInit();
  sub_1BA1DB1FC(0);
  sub_1BA1DA088(&qword_1EBBEDE50, sub_1BA1DB1FC, MEMORY[0x1E695BED8]);
  v23 = sub_1BA4A5008();

  *(v2 + v22) = v23;

  return v2;
}

uint64_t sub_1BA1D7644(uint64_t a1)
{
  v1 = sub_1BA4A6F38();
  v2 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)(v1);

  return v2;
}

uint64_t static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)(uint64_t a1)
{
  v1 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v1);

  MEMORY[0x1BFAF1350](24413, 0xE200000000000000);
  v2 = sub_1BA4A1D58();
  MEMORY[0x1BFAF1350](v2);

  return 91;
}

char *sub_1BA1D782C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_1BA024754(v9);

  v12 = sub_1BA024754(v11);

  if (*(v12 + 16) <= *(v10 + 16) >> 3)
  {
    v37 = v10;
    sub_1BA08BCE0(v13, v12);

    v14 = v37;
  }

  else
  {
    v14 = sub_1BA08D058(v12, v10);
  }

  sub_1BA4A3D88();
  swift_bridgeObjectRetain_n();
  v15 = a3;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v4;
    v37 = v19;
    v20 = v19;
    *v18 = 136315650;
    v21 = sub_1BA4A6F38();
    v22 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)(v21);
    v24 = v23;

    v25 = sub_1B9F0B82C(v22, v24, &v37);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2048;
    v26 = *(v14 + 16);

    *(v18 + 14) = v26;

    *(v18 + 22) = 2080;
    sub_1BA4A1E88();
    sub_1BA1DA088(&qword_1EBBEA650, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C88]);
    v27 = sub_1BA4A6D88();
    v29 = sub_1B9F0B82C(v27, v28, &v37);

    *(v18 + 24) = v29;
    _os_log_impl(&dword_1B9F07000, v16, v17, "%s: Computed that there are %ld unclaimed models in this transaction. %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v18, -1, -1);

    (*(v5 + 8))(v8, v36);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v5 + 8))(v8, v4);
  }

  v30 = *(v14 + 16);
  if (!v30)
  {
    goto LABEL_10;
  }

  v31 = sub_1BA021C58(*(v14 + 16), 0);
  v32 = *(sub_1BA4A1E88() - 8);
  sub_1BA023BBC(&v37, &v31[(*(v32 + 80) + 32) & ~*(v32 + 80)], v30, v14);
  v34 = v33;
  sub_1B9F52E48(v37);
  if (v34 != v30)
  {
    __break(1u);
LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  return v31;
}

void sub_1BA1D7BE8(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v64 = a3;
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A3EA8();
  v65 = *(v12 - 8);
  *&v66 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v60 - v18;
  v20 = *a1;
  if (*(*a1 + 16))
  {
    v62 = v7;
    v63 = a4;
    sub_1BA4A3D88();
    swift_bridgeObjectRetain_n();
    v21 = a2;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v61 = v8;
      v26 = v25;
      v67 = v25;
      *v24 = 136315394;
      v27 = sub_1BA4A6F38();
      v28 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)(v27);
      v30 = v29;

      v31 = sub_1B9F0B82C(v28, v30, &v67);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2048;
      v32 = *(v20 + 16);

      *(v24 + 14) = v32;

      _os_log_impl(&dword_1B9F07000, v22, v23, "%s: Returning version mismatch tile because there are %ld unclaimed models", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v33 = v26;
      v8 = v61;
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v65 + 8))(v19, v66);
    v67 = 0x65646F4D77656956;
    v68 = 0xEA00000000005F6CLL;
    sub_1BA4A1788();
    v45 = sub_1BA4A1748();
    v47 = v46;
    v48 = *(v8 + 8);
    v49 = v62;
    v48(v11, v62);
    MEMORY[0x1BFAF1350](v45, v47);

    v50 = v67;
    v51 = v68;
    sub_1B9F14628(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    v66 = xmmword_1BA4B5480;
    *(v44 + 16) = xmmword_1BA4B5480;
    sub_1B9F28360(0);
    v52 = swift_allocObject();
    *(v52 + 16) = v66;
    *(v52 + 56) = &type metadata for PlatformSharingVersionMismatchTileCell.ViewModel;
    *(v52 + 64) = sub_1BA1DB53C();
    v53 = swift_allocObject();
    *(v52 + 32) = v53;
    v53[2] = v50;
    v53[3] = v51;
    v53[4] = 0;
    v53[5] = 0;
    sub_1BA4A1788();
    v54 = sub_1BA4A1748();
    v56 = v55;
    v48(v11, v49);
    v57 = MEMORY[0x1E69E7CC0];
    *(v44 + 48) = MEMORY[0x1E69E7CC0];
    v58 = sub_1B9F1C5F0(v57);
    *(v44 + 32) = 0;
    *(v44 + 40) = 0;
    *(v44 + 48) = v52;
    *(v44 + 56) = v58;

    v59 = Array<A>.identifierToIndexDict()(v52);

    *(v44 + 56) = v59;

    *(v44 + 64) = v54;
    *(v44 + 72) = v56;
    a4 = v63;
  }

  else
  {
    sub_1BA4A3D88();
    v34 = a2;
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v67 = v38;
      *v37 = 136315138;
      v39 = sub_1BA4A6F38();
      v40 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)(v39);
      v42 = v41;

      v43 = sub_1B9F0B82C(v40, v42, &v67);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_1B9F07000, v35, v36, "%s: Returning empty section because there are no unclaimed models", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    (*(v65 + 8))(v15, v66);
    v44 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v44;
}

void sub_1BA1D8164(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1BA1D81F0(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a4;
  sub_1BA1D9F78(0, &qword_1EBBEDE40, MEMORY[0x1E69A3CF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v33 - v9;
  v11 = sub_1BA4A2298();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v42 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v36 = &v33 - v18;
  v19 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v16 = v32)
  {
    v21 = 0;
    v44 = 0;
    v40 = v19 & 0xFFFFFFFFFFFFFF8;
    v41 = v19 & 0xC000000000000001;
    v38 = (v37 + 32);
    v39 = (v37 + 48);
    v22 = MEMORY[0x1E69E7CC0];
    v34 = a2;
    v35 = a3;
    v43 = v16;
    while (1)
    {
      if (v41)
      {
        v16 = MEMORY[0x1BFAF2860](v21, v19, v17);
      }

      else
      {
        if (v21 >= *(v40 + 16))
        {
          goto LABEL_18;
        }

        v16 = *(v19 + 8 * v21 + 32);
      }

      v23 = v16;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = v19;
      v45 = v16;
      v26 = v44;
      sub_1BA1D8574(&v45, a2, a3, v10);
      v44 = v26;

      v27 = v43;
      if ((*v39)(v10, 1, v43) == 1)
      {
        v16 = sub_1BA1DB18C(v10, &qword_1EBBEDE40, MEMORY[0x1E69A3CF0]);
      }

      else
      {
        v28 = *v38;
        v29 = v36;
        (*v38)(v36, v10, v27);
        v28(v42, v29, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1BA280678(0, v22[2] + 1, 1, v22);
        }

        v31 = v22[2];
        v30 = v22[3];
        if (v31 >= v30 >> 1)
        {
          v22 = sub_1BA280678((v30 > 1), v31 + 1, 1, v22);
        }

        v22[2] = v31 + 1;
        v16 = (v28)(v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, v42, v43);
        a2 = v34;
        a3 = v35;
      }

      v19 = v25;
      ++v21;
      if (v24 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v32 = v16;
    i = sub_1BA4A7CC8();
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_21:
  *v33 = v22;
}

uint64_t sub_1BA1D8574@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1BA4A2288();
  if (v4)
  {
    v44 = a3;
    sub_1BA4A3D88();
    v15 = v14;
    v16 = a2;
    v17 = v4;
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v43 = v9;
      v21 = v20;
      v42 = swift_slowAlloc();
      v46 = v42;
      *v21 = 136315650;
      v41 = v19;
      v22 = sub_1BA4A6F38();
      v23 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)(v22);
      v44 = a4;
      v25 = v24;

      v26 = sub_1B9F0B82C(v23, v25, &v46);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = [v15 name];
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = v29;

      v31 = sub_1B9F0B82C(v28, v30, &v46);

      *(v21 + 14) = v31;
      *(v21 + 22) = 2080;
      v45 = v4;
      v32 = v4;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v46);
      a4 = v44;

      *(v21 + 24) = v35;
      _os_log_impl(&dword_1B9F07000, v18, v41, "%s: Unable to map shared summary %s to sharable model: %s", v21, 0x20u);
      v36 = v42;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);

      (*(v10 + 8))(v13, v43);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    v39 = sub_1BA4A2298();
    return (*(*(v39 - 8) + 56))(a4, 1, 1, v39);
  }

  else
  {
    v37 = sub_1BA4A2298();
    return (*(*(v37 - 8) + 56))(a4, 0, 1, v37);
  }
}

uint64_t sub_1BA1D8914@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v54 = a3;
  v55 = sub_1BA4A2298();
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v9);
  v66 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = &v50 - v13;
  v64 = sub_1BA4A1E88();
  v14 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A3EA8();
  v57 = *(v18 - 8);
  v58 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v56 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = *(*a1 + 16);
  if (v22)
  {
    v51 = a2;
    v53 = a4;
    v67 = MEMORY[0x1E69E7CC0];
    sub_1BA066CC4(0, v22, 0);
    v23 = v67;
    v24 = *(v8 + 16);
    v62 = v8 + 16;
    v63 = v24;
    v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v52 = v21;
    v26 = v21 + v25;
    v27 = *(v8 + 72);
    v60 = (v8 + 8);
    v61 = v27;
    v59 = v14 + 32;
    v28 = v55;
    v29 = v24;
    do
    {
      v30 = v17;
      v31 = v14;
      v32 = v65;
      v29(v65, v26, v28);
      v29(v66, v32, v28);
      sub_1BA4A1E98();
      (*v60)(v32, v28);
      v67 = v23;
      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1BA066CC4((v33 > 1), v34 + 1, 1);
        v28 = v55;
        v23 = v67;
      }

      *(v23 + 16) = v34 + 1;
      v14 = v31;
      (*(v31 + 32))(v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v34, v30, v64);
      v26 += v61;
      --v22;
      v17 = v30;
    }

    while (v22);
    v66 = v23;
    v21 = v52;
    a4 = v53;
    a2 = v51;
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
  }

  v35 = v56;
  sub_1BA4A3D88();
  swift_bridgeObjectRetain_n();
  v36 = a2;
  v37 = sub_1BA4A3E88();
  v38 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = v21;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v67 = v41;
    *v40 = 136315394;
    v42 = a4;
    v43 = sub_1BA4A6F38();
    v44 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)(v43);
    v46 = v45;

    a4 = v42;
    v47 = sub_1B9F0B82C(v44, v46, &v67);

    *(v40 + 4) = v47;
    *(v40 + 12) = 2048;
    v48 = *(v39 + 16);

    *(v40 + 14) = v48;

    _os_log_impl(&dword_1B9F07000, v37, v38, "%s: Received %ld committed models from the latest HealthKit transaction", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1BFAF43A0](v41, -1, -1);
    MEMORY[0x1BFAF43A0](v40, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  result = (*(v57 + 8))(v35, v58);
  *a4 = v66;
  return result;
}

uint64_t sub_1BA1D8DD8@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v39 = a3;
  sub_1BA1DA2A0(0, &qword_1EBBEDE30, MEMORY[0x1E695C010]);
  v8 = v7;
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v41 = &v37 - v10;
  v40 = sub_1BA4A3EA8();
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1BA4A3D88();
  v16 = a2;
  v17 = v15;
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v8;
    v21 = v20;
    v37 = swift_slowAlloc();
    v44 = v37;
    *v21 = 136315394;
    v22 = sub_1BA4A6F38();
    v23 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)(v22);
    v24 = a4;
    v26 = v25;

    v27 = sub_1B9F0B82C(v23, v26, &v44);
    a4 = v24;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v43 = v15;
    v28 = v15;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v29 = sub_1BA4A6808();
    v31 = sub_1B9F0B82C(v29, v30, &v44);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_1B9F07000, v18, v19, "%s: Error when fetching summaries: %s", v21, 0x16u);
    v32 = v37;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    v33 = v21;
    v8 = v38;
    MEMORY[0x1BFAF43A0](v33, -1, -1);
  }

  (*(v11 + 8))(v14, v40);
  sub_1BA1D9F78(0, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80], MEMORY[0x1E69E62F8]);
  v34 = v41;
  sub_1BA4A4E88();
  sub_1BA1DB148(&qword_1EBBEDE38, &qword_1EBBEDE30, MEMORY[0x1E695C010], MEMORY[0x1E695C018]);
  v35 = sub_1BA4A4F98();
  result = (*(v42 + 8))(v34, v8);
  *a4 = v35;
  return result;
}

id sub_1BA1D91C0()
{
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D458;
  v14[5] = *&qword_1EDC6D468;
  v14[6] = xmmword_1EDC6D478;
  v14[7] = xmmword_1EDC6D488;
  v14[0] = xmmword_1EDC6D418;
  v14[1] = *&qword_1EDC6D428;
  v14[2] = xmmword_1EDC6D438;
  v14[3] = xmmword_1EDC6D448;
  v4 = xmmword_1EDC6D418;
  v5 = qword_1EDC6D428;
  v0 = unk_1EDC6D430;
  v2 = xmmword_1EDC6D438;
  v1 = xmmword_1EDC6D448;
  v9 = *(&xmmword_1EDC6D458 + 8);
  v10 = *&qword_1EDC6D470;
  v11 = *(&xmmword_1EDC6D478 + 8);
  v12 = *(&xmmword_1EDC6D488 + 1);
  v8 = *(&xmmword_1EDC6D448 + 8);
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

void sub_1BA1D9344()
{

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_healthStore);
}

uint64_t UnusedModelsVersionMismatchAlertDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t UnusedModelsVersionMismatchAlertDataSource.__deallocating_deinit()
{
  UnusedModelsVersionMismatchAlertDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t JustObservingFetchedResultsControllerDataSource.identifier.getter()
{
  v0 = sub_1B9F35074();

  return v0;
}

uint64_t JustObservingFetchedResultsControllerDataSource.snapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDC84A60;
  sub_1B9F12538();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1BA1D95AC(uint64_t a1)
{
  v3 = qword_1EDC84A70;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA1D9674(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[qword_1EBBEDD88];
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000030, 0x80000001BA4F3190);
  sub_1BA4A1788();
  v10 = sub_1BA4A1748();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  MEMORY[0x1BFAF1350](v10, v12);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v13 = v25;
  *v9 = v24;
  *(v9 + 1) = v13;
  sub_1BA4A45D8();
  v14 = qword_1EDC84A70;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v15 = sub_1BA4A7A78();
  v16 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v17 = sub_1BA4A6758();
  v18 = [v16 initWithName:v17 loggingCategory:v15];

  *&v2[v14] = v18;
  *&v2[qword_1EDC84A68] = a1;
  sub_1BA1D9F78(0, &unk_1EBBEDE90, MEMORY[0x1E69A3D78], type metadata accessor for JustObservingFetchedResultsControllerDataSource);
  v23.receiver = v2;
  v23.super_class = v19;
  v20 = a1;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  [v20 setDelegate_];
  sub_1BA1D991C();

  return v21;
}

id sub_1BA1D991C()
{
  v10[3] = *MEMORY[0x1E69E9840];
  v1 = *&v0[qword_1EDC84A68];
  v10[0] = 0;
  v2 = [v1 performFetch_];
  v3 = v10[0];
  if (v2)
  {

    return v3;
  }

  else
  {
    v5 = v10[0];
    sub_1BA4A1488();

    swift_willThrow();
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_1BA4A7DF8();
    v6 = [v0 description];
    v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v9 = v8;

    MEMORY[0x1BFAF1350](v7, v9);

    MEMORY[0x1BFAF1350](0xD00000000000001BLL, 0x80000001BA4F3390);
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    sub_1BA4A7FB8();
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

void sub_1BA1D9AD0()
{
  swift_getObjectType();
  sub_1BA4A7DF8();

  v0 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v0);

  MEMORY[0x1BFAF1350](0xD000000000000024, 0x80000001BA4F3220);
  sub_1BA4A8018();
  __break(1u);
}

id JustObservingFetchedResultsControllerDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JustObservingFetchedResultsControllerDataSource.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for JustObservingFetchedResultsControllerDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1BA1D9C70(uint64_t a1)
{

  v2 = qword_1EDC84A60;
  sub_1B9F12538();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_1EDC84A68);
}

id sub_1BA1D9D24(uint64_t a1, uint64_t a2)
{
  sub_1BA4A23C8();
  v3 = sub_1BA4A23A8();
  v4 = MEMORY[0x1E69E6F90];
  sub_1B9F14628(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5470;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  swift_getKeyPath();
  *(v5 + 32) = sub_1BA4A71B8();
  v6 = v3;
  v7 = sub_1BA4A23B8();

  v8 = sub_1BA4A6AE8();

  [v7 setSortDescriptors_];

  [v7 setReturnsDistinctResults_];
  sub_1B9F14628(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8, v4);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 16) = xmmword_1BA4B5480;
  *(v9 + 56) = v10;
  *(v9 + 32) = 0x696669746E656469;
  *(v9 + 40) = 0xEA00000000007265;
  v11 = sub_1BA4A6AE8();

  [v7 setPropertiesToFetch_];

  v12 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v7 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  sub_1BA1D9F78(0, &unk_1EBBEDE90, MEMORY[0x1E69A3D78], type metadata accessor for JustObservingFetchedResultsControllerDataSource);
  v14 = objc_allocWithZone(v13);
  v15 = sub_1BA1D9674(v12);

  return v15;
}

void sub_1BA1D9F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA1D9FDC(uint64_t a1)
{
  if (!qword_1EBBEDD08)
  {
    sub_1BA1DB030(255, &qword_1EBBEDD10, &unk_1EBBEDD18, 0x1E696C400, MEMORY[0x1E69E62F8]);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDD08);
    }
  }
}

uint64_t sub_1BA1DA088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA1DA0D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA1D9FDC(255);
    sub_1BA1D9F78(255, a3, a4, MEMORY[0x1E69E62F8]);
    sub_1BA1DA088(&qword_1EBBEDD30, sub_1BA1D9FDC, MEMORY[0x1E695BED8]);
    v7 = sub_1BA4A4B78();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BA1DA1A0(uint64_t a1)
{
  if (!qword_1EBBEDD40)
  {
    sub_1BA1DA0D0(255, &qword_1EBBEDD38, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80]);
    v1 = MEMORY[0x1E695BED0];
    sub_1BA1DA2A0(255, &qword_1EBBEDD48, MEMORY[0x1E695BED0]);
    sub_1BA1DA340();
    sub_1BA1DB148(&qword_1EBBEDD58, &qword_1EBBEDD48, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1BA4A4BB8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEDD40);
    }
  }
}

void sub_1BA1DA2A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA1D9F78(255, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80], MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA1DA340()
{
  result = qword_1EBBEDD50;
  if (!qword_1EBBEDD50)
  {
    sub_1BA1DA0D0(255, &qword_1EBBEDD38, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDD50);
  }

  return result;
}

uint64_t sub_1BA1DA408(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1BA1DABB4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA1DA458()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BA4A1E88();
  v8 = *(v40 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v40, v9).n128_u64[0];
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_cachedModelReferencesDataSource) + qword_1EDC84A68) fetchedObjects];
  v14 = MEMORY[0x1E69E7CC0];
  v37 = v2;
  v38 = v7;
  if (v13)
  {
    v15 = v13;
    sub_1BA4A23C8();
    v16 = sub_1BA4A6B08();

    if (v16 >> 62)
    {
      v17 = sub_1BA4A7CC8();
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_4:
        v41 = v14;
        sub_1BA066CC4(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          __break(1u);
          return;
        }

        v34 = v4;
        v35 = v3;
        v36 = v1;
        v18 = 0;
        v14 = v41;
        v19 = v16;
        v39 = v16 & 0xC000000000000001;
        v20 = v17;
        do
        {
          if (v39)
          {
            v21 = MEMORY[0x1BFAF2860](v18, v19);
          }

          else
          {
            v21 = *(v19 + 8 * v18 + 32);
          }

          v22 = v21;
          sub_1BA4A2398();

          v41 = v14;
          v24 = *(v14 + 16);
          v23 = *(v14 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1BA066CC4((v23 > 1), v24 + 1, 1);
            v14 = v41;
          }

          ++v18;
          *(v14 + 16) = v24 + 1;
          (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, v12, v40);
          v19 = v16;
        }

        while (v20 != v18);

        v3 = v35;
        v1 = v36;
        v4 = v34;
        goto LABEL_15;
      }
    }

LABEL_15:
    v7 = v38;
  }

  sub_1BA4A3D88();
  swift_bridgeObjectRetain_n();

  v25 = sub_1BA4A3E88();
  v26 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = v4;
    v29 = swift_slowAlloc();
    v41 = v29;
    *v27 = 136315394;
    v30 = sub_1BA1D7644(v1);
    v32 = sub_1B9F0B82C(v30, v31, &v41);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2048;
    v33 = *(v14 + 16);

    *(v27 + 14) = v33;

    _os_log_impl(&dword_1B9F07000, v25, v26, "%s: Received %ld claimed cache model references", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v27, -1, -1);

    (*(v28 + 8))(v38, v3);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v4 + 8))(v7, v3);
  }

  v41 = v14;
  sub_1BA4A4DA8();
}

uint64_t type metadata accessor for UnusedModelsVersionMismatchAlertDataSource(uint64_t a1)
{
  result = qword_1EBBEDD90;
  if (!qword_1EBBEDD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA1DABB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    a4();
    sub_1B9F3DC80();
    v6 = sub_1BA4A4CC8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA1DAC5C(uint64_t a1)
{
  if (!qword_1EBBEDDB0)
  {
    sub_1BA1DAD48(255);
    sub_1BA1DB098(255);
    sub_1BA1DA088(&qword_1EBBEDE10, sub_1BA1DAD48, MEMORY[0x1E695BD60]);
    sub_1BA1DA088(&qword_1EBBEDE18, sub_1BA1DB098, MEMORY[0x1E695C008]);
    v1 = sub_1BA4A4BB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDDB0);
    }
  }
}

void sub_1BA1DAD48(uint64_t a1)
{
  if (!qword_1EBBEDDB8)
  {
    sub_1BA1DAE18(255);
    sub_1B9F14628(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    sub_1BA1DA088(&qword_1EBBEDE00, sub_1BA1DAE18, MEMORY[0x1E695BC68]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDDB8);
    }
  }
}

void sub_1BA1DAE18(uint64_t a1)
{
  if (!qword_1EBBEDDC0)
  {
    sub_1BA1DAF04(255);
    sub_1BA1DAF84(255);
    sub_1BA1DA088(&qword_1EBBEC778, sub_1BA1DAF04, MEMORY[0x1E695C038]);
    sub_1BA1DA088(&qword_1EBBEDDF0, sub_1BA1DAF84, MEMORY[0x1E695BED8]);
    v1 = sub_1BA4A4A98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDDC0);
    }
  }
}

void sub_1BA1DAF04(uint64_t a1)
{
  if (!qword_1EBBEC770)
  {
    type metadata accessor for CloudProfileInformation(255);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC770);
    }
  }
}

void sub_1BA1DAF84(uint64_t a1)
{
  if (!qword_1EBBEDDD0)
  {
    sub_1BA1DB030(255, &qword_1EBBEDDD8, &unk_1EBBEDDE0, 0x1E696C418, MEMORY[0x1E69E6720]);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDDD0);
    }
  }
}

void sub_1BA1DB030(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA1DB098(uint64_t a1)
{
  if (!qword_1EBBEDE08)
  {
    sub_1B9F14628(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    v1 = sub_1BA4A4E68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDE08);
    }
  }
}

uint64_t sub_1BA1DB148(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA1DA2A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA1DB18C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA1D9F78(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA1DB1FC(uint64_t a1)
{
  if (!qword_1EBBEDE48)
  {
    sub_1B9F14628(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDE48);
    }
  }
}

void sub_1BA1DB288(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBEDE58)
  {
    sub_1BA1DB358(255);
    sub_1B9F14628(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    sub_1BA1DA088(&qword_1EBBEDE68, sub_1BA1DB358, MEMORY[0x1E695BC68]);
    v2 = sub_1BA4A4B78();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEDE58);
    }
  }
}

void sub_1BA1DB358(uint64_t a1)
{
  if (!qword_1EBBEDE60)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1BA1DA2A0(255, &qword_1EBBEDD48, MEMORY[0x1E695BED0]);
    sub_1BA1DB148(&qword_1EBBEDD58, &qword_1EBBEDD48, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1BA4A4A98();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEDE60);
    }
  }
}

void sub_1BA1DB418(uint64_t a1)
{
  if (!qword_1EBBEDE70)
  {
    sub_1BA1DB358(255);
    sub_1BA1D9F78(255, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80], MEMORY[0x1E69E62F8]);
    sub_1BA1DA088(&qword_1EBBEDE68, sub_1BA1DB358, MEMORY[0x1E695BC68]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDE70);
    }
  }
}

uint64_t sub_1BA1DB4FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1BA1DB53C()
{
  result = qword_1EBBEDE88;
  if (!qword_1EBBEDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDE88);
  }

  return result;
}

uint64_t HealthChecklistFeatureViewedAnalyticsEvent.init(featureName:source:currentState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a1;
  v36 = a2;
  v8 = sub_1BA4A2A88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - v15;
  v17 = *a3;
  v18 = a3[1];
  sub_1BA4A2F48();
  v34 = sub_1BA4A2F38();
  v30 = sub_1BA4A2F28();
  v19 = *(v9 + 16);
  v33 = a4;
  v19(v16, a4, v8);
  v19(v12, a4, v8);
  sub_1BA1DBD2C(v17, v18);
  sub_1BA4A2A68();
  v32 = sub_1BA4A6758();

  sub_1BA4A2A68();
  v31 = sub_1BA4A6758();

  sub_1BA1DBD44();
  v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v20 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LOBYTE(a4) = v30;
  v28 = [v20 initWithBool_];
  v21 = sub_1BA4A6758();

  v37 = v17;
  v38 = v18;
  sub_1BA1DB8CC(a4 & 1);
  sub_1BA1DBD9C(v17, v18);
  v22 = sub_1BA4A6758();

  v23 = *(v9 + 8);
  v23(v33, v8);
  v23(v12, v8);
  result = (v23)(v16, v8);
  *a5 = v21;
  a5[1] = v22;
  v25 = v31;
  a5[2] = v32;
  a5[3] = v25;
  v26 = v28;
  a5[4] = v29;
  a5[5] = v26;
  a5[6] = v17;
  a5[7] = v18;
  return result;
}

uint64_t sub_1BA1DB8CC(char a1)
{
  v2 = v1[1];
  switch(v2)
  {
    case 3uLL:
      return 0xD000000000000015;
    case 2uLL:
      return 0x6F69746F6D6F7250;
    case 1uLL:
      return 0xD000000000000010;
  }

  if (a1)
  {
    if (v2)
    {
      v4 = *v1;
    }

    else
    {
      v2 = 0xE300000000000000;
      v4 = 6369134;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v4 = 0x64657474696D6FLL;
  }

  sub_1BA4A7DF8();

  MEMORY[0x1BFAF1350](v4, v2);

  return 0xD000000000000012;
}

uint64_t static HealthChecklistFeatureViewedAnalyticsEvent.eventName.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBEDEA0;

  return v0;
}

double static HealthChecklistFeatureViewedAnalyticsEvent.eventName.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1EBBEDEA0 = a1;
  off_1EBBEDEA8 = a2;

  return result;
}

double sub_1BA1DBB0C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBEDEA0 = v2;
  off_1EBBEDEA8 = v1;

  return result;
}

uint64_t HealthChecklistFeatureViewedAnalyticsEvent.init(featureName:source:startState:endState:isIHAEnabled:)@<X0>(uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  v10 = *a3;
  v11 = a3[1];
  a7[6] = *a3;
  a7[7] = v11;
  sub_1BA1DBD2C(v10, v11);
  sub_1BA4A2A68();
  v12 = sub_1BA4A6758();

  a7[2] = v12;
  sub_1BA4A2A68();
  v13 = sub_1BA4A6758();

  a7[3] = v13;
  v14 = sub_1BA4A2A88();
  sub_1BA1DBD44();
  a7[4] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  a7[5] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v15 = sub_1BA4A6758();

  *a7 = v15;
  sub_1BA1DB8CC(a6);
  sub_1BA1DBD9C(v10, v11);
  v16 = sub_1BA4A6758();

  v17 = *(*(v14 - 8) + 8);
  v17(a5, v14);
  result = (v17)(a4, v14);
  a7[1] = v16;
  return result;
}

double sub_1BA1DBD2C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

unint64_t sub_1BA1DBD44()
{
  result = qword_1EBBE9D90;
  if (!qword_1EBBE9D90)
  {
    sub_1BA4A2A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9D90);
  }

  return result;
}

double sub_1BA1DBD9C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

unint64_t sub_1BA1DBDB8()
{
  result = qword_1EBBEDEB0;
  if (!qword_1EBBEDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDEB0);
  }

  return result;
}

unint64_t sub_1BA1DBE10()
{
  result = qword_1EBBEDEB8;
  if (!qword_1EBBEDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDEB8);
  }

  return result;
}

uint64_t sub_1BA1DBE68()
{
  swift_beginAccess();
  v0 = qword_1EBBEDEA0;

  return v0;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI0A32ChecklistSettingsAnalyticsSourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA1DBEE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA1DBF40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1BA1DBF9C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1BA1DBFD8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1BA1DC020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BA1DC080()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_1EBC09668 = result;
  return result;
}

uint64_t sub_1BA1DC0BC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA1DC148();
  return sub_1B9F44034(v6, &qword_1EDC6E1A0, sub_1B9FCD918);
}

void sub_1BA1DC148()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v37[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v6], v39);
  if (v39[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v7 = v37[6];
      v8 = v37[7];
      v9 = v38;
      v10 = [v0 textLabel];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1BA4A6758();
        [v11 setText_];
      }

      v13 = [v0 detailTextLabel];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1BA4A6758();
        [v14 setText_];
      }

      if (v9)
      {
        v16 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
        v17 = sub_1BA4A6758();
        v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

        if (v18)
        {
          v19 = 1;
LABEL_16:
          v34 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryImage];
          *&v0[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryImage] = v18;

          v0[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryIsSelected] = v19;
          sub_1BA1DCC4C();
          v35.value._countAndFlagsBits = v7;
          v35.value._object = v8;
          MultiselectTableViewCell.updateAutomationIdentifiers(with:)(v35);

          return;
        }

        __break(1u);
      }

      else
      {
        v32 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
        v33 = sub_1BA4A6758();
        v18 = [objc_opt_self() systemImageNamed:v33 withConfiguration:v32];

        if (v18)
        {
          v19 = 0;
          goto LABEL_16;
        }
      }

      __break(1u);
      return;
    }
  }

  else
  {
    sub_1B9F44034(v39, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3DE8();
  v20 = v0;
  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37[0] = v24;
    *v23 = 136446722;
    v25 = sub_1BA4A85D8();
    v27 = sub_1B9F0B82C(v25, v26, v37);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_1B9F0B82C(1835365481, 0xE400000000000000, v37);
    *(v23 + 22) = 2082;
    sub_1B9F0D370(0, &qword_1EDC6E1A0, sub_1B9FCD918);
    v39[0] = v28;
    sub_1BA0928CC();
    v29 = sub_1BA4A6808();
    v31 = sub_1B9F0B82C(v29, v30, v37);

    *(v23 + 24) = v31;
    _os_log_impl(&dword_1B9F07000, v21, v22, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that was not MultiselectItem", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

Swift::Void __swiftcall MultiselectTableViewCell.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  v2 = v1;
  if (!with.value._object)
  {
    [v1 setAccessibilityIdentifier_];
    v12 = [v1 textLabel];
    if (v12)
    {
      v13 = v12;
      [v12 setAccessibilityIdentifier_];
    }

    v14 = [v2 detailTextLabel];
    if (v14)
    {
      v15 = v14;
      [v14 setAccessibilityIdentifier_];
    }

    v16 = [v2 accessoryView];
    [v16 setAccessibilityIdentifier_];
    goto LABEL_13;
  }

  v3 = sub_1BA4A6758();
  [v2 setAccessibilityIdentifier_];

  v4 = [v2 textLabel];
  if (v4)
  {
    v5 = v4;

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v6 = sub_1BA4A6758();

    [v5 setAccessibilityIdentifier_];
  }

  v7 = [v2 detailTextLabel];
  if (v7)
  {
    v8 = v7;

    MEMORY[0x1BFAF1350](0x6C69617465442ELL, 0xE700000000000000);
    v9 = sub_1BA4A6758();

    [v8 setAccessibilityIdentifier_];
  }

  v10 = [v2 accessoryView];
  if (v10)
  {
    v11 = v10;

    MEMORY[0x1BFAF1350](0x6F7373656363412ELL, 0xEA00000000007972);
    v16 = sub_1BA4A6758();

    [v11 setAccessibilityIdentifier_];

LABEL_13:
  }
}

uint64_t sub_1BA1DC8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA1DC948(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA1DC148();
  return sub_1B9F44034(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

void (*sub_1BA1DC9D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1DCA34;
}

void sub_1BA1DCA34(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA1DC148();
  }
}

double sub_1BA1DCA68(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MultiselectTableViewCell();
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v8 == v9)
  {

    return result;
  }

  v11 = sub_1BA4A8338();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_1BA1DCC4C();
  }

  return result;
}

void sub_1BA1DCC4C()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v68 - v9;
  v11 = *MEMORY[0x1E69DDCF8];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v16 = v11;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v72 = v2;
      v20 = v19;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v75 = v70;
      *v20 = 136315906;
      v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v71 = v3;
      v23 = sub_1B9F0B82C(v21, v22, &v75);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v73 = 0;
      v74 = 1;
      sub_1B9F0D370(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v75);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2080;
      LODWORD(v73) = 0;
      type metadata accessor for SymbolicTraits(0);
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, &v75);

      *(v20 + 24) = v29;
      v3 = v71;
      *(v20 + 32) = 2112;
      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v20 + 34) = v30;
      v31 = v69;
      *v69 = v30;
      _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
      sub_1B9F44034(v31, &qword_1EDC6B490, sub_1BA0004FC);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      v32 = v70;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      v33 = v20;
      v2 = v72;
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    (*(v3 + 8))(v10, v2);
    v34 = [v12 preferredFontDescriptorWithTextStyle_];
    v15 = [objc_opt_self() fontWithDescriptor:v34 size:0.0];
  }

  v35 = *MEMORY[0x1E69DDD80];
  v36 = [v12 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
  if (v36)
  {
    v37 = v36;
    v38 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v39 = v35;
    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v72 = v2;
      v43 = v42;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v75 = v70;
      *v43 = 136315906;
      v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v71 = v3;
      v46 = sub_1B9F0B82C(v44, v45, &v75);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      v73 = 0;
      v74 = 1;
      sub_1B9F0D370(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v47 = sub_1BA4A6808();
      v49 = sub_1B9F0B82C(v47, v48, &v75);

      *(v43 + 14) = v49;
      *(v43 + 22) = 2080;
      LODWORD(v73) = 0;
      type metadata accessor for SymbolicTraits(0);
      v50 = sub_1BA4A6808();
      v52 = sub_1B9F0B82C(v50, v51, &v75);

      *(v43 + 24) = v52;
      *(v43 + 32) = 2112;
      v53 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v43 + 34) = v53;
      v54 = v69;
      *v69 = v53;
      _os_log_impl(&dword_1B9F07000, v40, v41, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v43, 0x2Au);
      sub_1B9F44034(v54, &qword_1EDC6B490, sub_1BA0004FC);
      MEMORY[0x1BFAF43A0](v54, -1, -1);
      v55 = v70;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v55, -1, -1);
      MEMORY[0x1BFAF43A0](v43, -1, -1);

      (*(v71 + 8))(v6, v72);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v37 = [v12 preferredFontDescriptorWithTextStyle_];
    v38 = [objc_opt_self() fontWithDescriptor:v37 size:0.0];
  }

  v56 = v38;

  [v15 pointSize];
  v58 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:v57];
  v59 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryImage] imageWithConfiguration_];
  v60 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  if (v1[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryIsSelected] == 1)
  {
    v61 = [v1 tintColor];
  }

  else
  {
    if (qword_1EBBE84D0 != -1)
    {
      swift_once();
    }

    v61 = qword_1EBC09668;
  }

  v62 = v61;
  [v60 setTintColor_];

  [v1 setAccessoryView_];
  v63 = [v1 textLabel];
  if (v63)
  {
    v64 = v63;
    [v63 setFont_];
  }

  v65 = [v1 detailTextLabel];
  if (v65)
  {
    v66 = v65;
    v67 = v56;
    [v66 setFont_];

    v58 = v67;
  }
}

id MultiselectTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

id MultiselectTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiselectTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA1DD680(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
  v5 = sub_1BA4A6758();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    *&v2[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryImage] = v6;
    v2[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryIsSelected] = 0;
    v7 = &v2[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item];
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 4) = 0;
    if (a2)
    {
      v8 = sub_1BA4A6758();
    }

    else
    {
      v8 = 0;
    }

    v17.receiver = v2;
    v17.super_class = type metadata accessor for MultiselectTableViewCell();
    v9 = objc_msgSendSuper2(&v17, sel_initWithStyle_reuseIdentifier_, 3, v8);

    v10 = v9;
    v11 = [v10 textLabel];
    if (v11)
    {
      v12 = v11;
      [v11 setNumberOfLines_];
    }

    v13 = [v10 detailTextLabel];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() secondaryLabelColor];
      [v14 setTextColor_];
    }

    v16 = [v10 detailTextLabel];

    if (v16)
    {
      [v16 setNumberOfLines_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA1DD958()
{
  v1 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
  v2 = sub_1BA4A6758();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryImage) = v3;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryIsSelected) = 0;
  v4 = v0 + OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t LinkButtonItem.init(text:buttonLabelColor:backgroundColor:onTap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = MEMORY[0x1BFAF1350]();
  *a7 = 0x6D6574496B6E694CLL;
  a7[1] = 0xE90000000000005FLL;
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = a3;
  a7[5] = a4;
  a7[6] = a5;
  a7[7] = a6;
  return result;
}

uint64_t LinkButtonItem.reuseIdentifier.getter()
{
  type metadata accessor for ProfileButtonCell();
  sub_1BA071208();
  return sub_1BA4A6808();
}

uint64_t LinkButtonItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LinkButtonItem.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1BA1DDBF8(uint64_t a1)
{
  result = sub_1BA1DDC20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA1DDC20()
{
  result = qword_1EBBEDED8;
  if (!qword_1EBBEDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDED8);
  }

  return result;
}

unint64_t sub_1BA1DDCA0(uint64_t a1)
{
  result = sub_1BA1DDCC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA1DDCC8()
{
  result = qword_1EBBEDEE0;
  if (!qword_1EBBEDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDEE0);
  }

  return result;
}

uint64_t sub_1BA1DDD20()
{
  type metadata accessor for ProfileButtonCell();
  sub_1BA071208();
  return sub_1BA4A6808();
}

uint64_t sub_1BA1DDD5C(uint64_t a1)
{
  v2 = sub_1BA1DDCC8();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id UINavigationItem.setBottomPalette(control:contentMarginsKind:currentPalette:)(void *a1, unsigned __int8 *a2, id a3)
{
  v5 = *a2;
  [a3 removeFromSuperview];
  if (a1)
  {
    v6 = _s20SegmentedContentViewCMa();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView_control] = a1;
    v14.receiver = v7;
    v14.super_class = v6;
    v8 = a1;
    v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v9 addSubview_];
    [v9 setPreservesSuperviewLayoutMargins_];
    [v9 sizeToFit];
    v10 = [objc_allocWithZone(MEMORY[0x1E69DD5E0]) initWithContentView_];
    [v10 _setContentViewMarginType_];
    v11 = v10;
    [v11 setPreservesSuperviewLayoutMargins_];
    v12 = v11;
    [v3 _setBottomPalette_];
  }

  else
  {
    [v3 _setBottomPalette_];
    return 0;
  }

  return v11;
}

uint64_t UINavigationItem.ContentMarginsKind.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA1DDFD0()
{
  result = qword_1EBBEDEF0;
  if (!qword_1EBBEDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDEF0);
  }

  return result;
}

id sub_1BA1DE090()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A82F8();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, sel_layoutSubviews, v5);
  [v0 bounds];
  Width = CGRectGetWidth(v26);
  [v0 directionalLayoutMargins];
  v11 = Width - v9 - v10;
  v12 = OBJC_IVAR____TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView_control;
  [*&v0[OBJC_IVAR____TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView_control] sizeThatFits_];
  v14 = v13;
  v15 = [v0 traitCollection];
  v16 = [v15 layoutDirection];

  [v0 safeAreaInsets];
  if (v16 == 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v20 = (Width - v11 + v19) * 0.5;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E7020], v2);
  v21 = [v0 traitCollection];
  [v21 displayScale];
  v23 = CGFloat.rounded(_:toScale:)(v7, v22, v20);

  (*(v3 + 8))(v7, v2);
  return [*&v0[v12] setFrame_];
}

id sub_1BA1DE438(id result)
{
  if (result)
  {
    return [result finishProcessing];
  }

  return result;
}

void sub_1BA1DE500()
{
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_dismissOptions_];
  v3 = [v0 navigationItem];
  [v3 setRightBarButtonItem_];
}

id sub_1BA1DE6B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProfileSharingWithYouOptionsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t PDFConfigurable.generatePDFData()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a1 - 8);
  v3[6] = swift_task_alloc();
  v8 = (*(a2 + 40) + **(a2 + 40));
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_1BA1DE88C;

  return v8(a1, a2);
}

uint64_t sub_1BA1DE88C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  *(*v3 + 64) = a2;

  if (v2)
  {

    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v5 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1BA1DE9E4, 0, 0);
  }
}

uint64_t sub_1BA1DE9E4()
{
  type metadata accessor for PDFSectionLoader();
  v1 = swift_allocObject();
  v0[5].i64[0] = v1;
  v3 = v0[4];

  swift_defaultActor_initialize();
  v1[7] = vextq_s8(v3, v3, 8uLL);

  return MEMORY[0x1EEE6DFA0](sub_1BA1DEA84, v1, 0);
}

uint64_t sub_1BA1DEA84()
{
  v1 = (*(v0[10] + 112))();
  v0[11] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  v3 = sub_1BA1DF284();
  *v2 = v0;
  v2[1] = sub_1BA1DEB60;

  return MEMORY[0x1EEE0DDC0](&unk_1BA4CC3F8, 0, v1, v3, &type metadata for PDFSection);
}

uint64_t sub_1BA1DEB60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = *(v4 + 80);
    v6 = sub_1BA1DEECC;
  }

  else
  {

    *(v4 + 112) = a1;
    v6 = sub_1BA1DEC9C;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1BA1DEC9C()
{
  v1 = v0[14];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for PDFBuilder();
  (*(v3 + 16))(v2, v4, v6);
  v0[15] = sub_1BA20F1A4(v2, v1, v7, v6, v5);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1BA1DED98;

  return sub_1BA20BD8C();
}

uint64_t sub_1BA1DED98(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_1BA1DF040;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_1BA1DEFAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BA1DEECC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BA1DEF34, 0, 0);
}

uint64_t sub_1BA1DEF34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA1DEFAC()
{

  v1 = v0[1];
  v3 = v0[18];
  v2 = v0[19];

  return v1(v2, v3);
}

uint64_t sub_1BA1DF040()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PDFConfiguration.Orientation.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

double PDFConfiguration.shareButtonBehavior.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1BA1DF2E8(v2, v3, v4, v5, v6, v7);
}

uint64_t PDFConfiguration.sectionProviders.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

__n128 PDFConfiguration.init(orientation:pageNumberFormat:shareButtonBehavior:compactVerticalMargin:sectionProviders:)@<Q0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  *(a7 + 72) = a5;
  *(a7 + 80) = a6;
  *(a7 + 8) = v7;
  v9 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v9;
  result = *(a3 + 32);
  *(a7 + 48) = result;
  *(a7 + 64) = a4;
  *a7 = v8;
  return result;
}

double sub_1BA1DF1E8@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1BA1DF2E8(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BA1DF204()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v1 + 8);

  return v5(v2, v3);
}

unint64_t sub_1BA1DF284()
{
  result = qword_1EBBEDF00;
  if (!qword_1EBBEDF00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEDF00);
  }

  return result;
}

double sub_1BA1DF2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_1BA1DF33C()
{
  result = qword_1EBBEDF08;
  if (!qword_1EBBEDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDF08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PDFPageNumberFormat(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PDFPageNumberFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BA1DF440(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI22PDFShareButtonBehaviorO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BA1DF488(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1BA1DF4D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

double sub_1BA1DF534(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 40) = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of PDFConfigurable.sectionProviders.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B9FFA404;

  return v7(a1, a2);
}

uint64_t sub_1BA1DF6DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA1DF724(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_1BA1DF7D8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingManualSelectionNextButtonDataSource(uint64_t a1)
{
  result = qword_1EBBEDF10;
  if (!qword_1EBBEDF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA1DF920(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_project_value_buffer(v2, qword_1EDC6CB90);
  return ListLayoutConfiguration.layout(for:)(v1);
}

char *sub_1BA1DFB90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v98 = a6;
  v97 = a4;
  v94 = *a3;
  v11 = (a3 + 8);
  v95 = *(a3 + 8);
  v93 = *(a3 + 24);
  v12 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v92 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v96 = &v89 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v89 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v89 - v24;
  sub_1B9FF1628(v6 + OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow, &v89 - v24);
  sub_1B9FEE28C(v25, v102);
  sub_1BA1E52C0(v25, type metadata accessor for SummarySharingSelectionFlow);
  v26 = 0;
  v27 = v102[0];
  if (LOBYTE(v102[0]) <= 0xFBu)
  {
    sub_1B9F0A534(a1, v102);
    *v21 = v27;
    v90 = v12;
    swift_storeEnumTagMultiPayload();
    v28 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingDataTypeSelectionViewController(0));
    sub_1B9F0A534(v102, &v28[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthExperienceStore]);
    *&v28[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthStore] = a2;
    v29 = *a3;
    v30 = *v11;
    v103 = *(a3 + 24);
    v104 = v30;
    v31 = &v28[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContact];
    v32 = *(a3 + 16);
    *v31 = *a3;
    *(v31 + 1) = v32;
    *(v31 + 4) = *(a3 + 32);
    v33 = v97;
    *&v28[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContactPhotoPublisher] = v97;
    sub_1B9FF1628(v21, &v28[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow]);
    *&v28[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext] = a5;
    v34 = v98;
    *&v28[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedDataTypesContext] = v98;
    sub_1B9F0A534(v102, v101);
    v91 = v21;
    v35 = v96;
    sub_1B9FF1628(v21, v96);
    v36 = objc_allocWithZone(type metadata accessor for SummarySharingDataTypeSelectionViewController(0));
    *&v36[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v37 = MEMORY[0x1E69E7CC0];
    *&v36[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
    sub_1B9F0A534(v101, &v36[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore]);
    *&v36[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories] = 0;
    sub_1B9FF1628(v35, &v36[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow]);
    v38 = &v36[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact];
    *v38 = v94;
    *(v38 + 24) = v93;
    *(v38 + 8) = v95;
    *&v36[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher] = v33;
    *&v36[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext] = v34;
    v39 = v29;
    sub_1B9F87F44(&v104, v100);
    sub_1B9F87F44(&v103, v100);

    v40 = v39;
    sub_1B9F87F44(&v104, v100);
    sub_1B9F87F44(&v103, v100);

    v41 = a2;

    *&v36[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources] = sub_1BA1E1D2C(v101, v41, 1, 0, v35, a5);

    v42 = sub_1B9FE98D4();

    v100[0] = v42;
    sub_1B9FE20B8(v37);
    v43 = v100[0];
    type metadata accessor for CompoundSectionedDataSource(0);
    swift_allocObject();
    v44 = CompoundSectionedDataSource.init(_:)(v43);
    v45 = CompoundDataSourceCollectionViewController.init(dataSource:)(v44);
    v100[0] = *(v34 + 48);
    v46 = MEMORY[0x1E695BF70];
    sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
    sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v46, MEMORY[0x1E695BF88]);
    v47 = v45;
    v100[0] = sub_1BA4A4F98();
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1BA10E0DC;
    *(v49 + 24) = v48;
    v50 = MEMORY[0x1E695BED0];
    sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
    sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v50, MEMORY[0x1E695BED8]);
    sub_1BA4A5148();

    swift_beginAccess();
    sub_1BA1E541C(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
    sub_1BA091D04();
    sub_1BA4A4D38();
    swift_endAccess();

    v51 = *&v47[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
    v89 = v28;
    if (v51 >> 62)
    {
      goto LABEL_27;
    }

    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v52)
    {
      v53 = 0;
      v98 = v51 & 0xC000000000000001;
      v97 = v51 & 0xFFFFFFFFFFFFFF8;
      v54 = v35;
      do
      {
        if (v98)
        {
          v55 = MEMORY[0x1BFAF2860](v53, v51);
          v35 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v53 >= *(v97 + 16))
          {
            __break(1u);
LABEL_27:
            v52 = sub_1BA4A7CC8();
            goto LABEL_4;
          }

          v55 = *(v51 + 8 * v53 + 32);

          v35 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_14;
          }
        }

        *(*(v55 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
        swift_unknownObjectWeakAssign();
        type metadata accessor for SummarySharingSelectionContextDelegate();
        v56 = swift_allocObject();
        *(v56 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v56 + 24) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
        swift_unknownObjectWeakAssign();
        v57 = v47;
        sub_1BA29AAC4(v56);
        sub_1BA2FE7FC();

        ++v53;
        v58 = v35 == v52;
        v35 = v54;
      }

      while (!v58);
    }

    sub_1BA1E52C0(v35, type metadata accessor for SummarySharingSelectionFlow);
    __swift_destroy_boxed_opaque_existential_1(v101);
    v59 = v89;
    *&v89[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_dataTypeSelectionCVC] = v47;
    v60 = v47;
    sub_1BA454A8C(v60, v61, v62, v63, v64, v65, v66, v67, v89, v90);
    if (!v68)
    {
      if (qword_1EBBE84D8 != -1)
      {
        swift_once();
      }
    }

    sub_1BA454AAC();
    v70 = v69;
    sub_1BA454934();
    v72 = v71;
    *&v59[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
    v73 = &v59[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
    *v73 = 0;
    v73[8] = 1;
    v74 = &v59[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
    *v74 = 0;
    v74[8] = 1;
    *&v59[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
    *&v59[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = v60;
    v75 = v60;
    v76 = sub_1BA4A6758();

    if (v70)
    {
      v77 = sub_1BA4A6758();
    }

    else
    {
      v77 = 0;
    }

    v78 = type metadata accessor for OnboardingCollectionViewController();
    v99.receiver = v59;
    v99.super_class = v78;
    v79 = objc_msgSendSuper2(&v99, sel_initWithTitle_detailText_icon_contentLayout_, v76, v77, v72, 3);

    v26 = v79;
    v80 = [v26 headerView];
    [v80 setAllowFullWidthIcon_];

    v81 = v91;
    v82 = v92;
    sub_1B9FF1628(v91, v92);
    LODWORD(v80) = swift_getEnumCaseMultiPayload();
    sub_1BA1E52C0(v82, type metadata accessor for SummarySharingSelectionFlow);
    if (v80 == 2)
    {
      v101[0] = *&v26[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContactPhotoPublisher];
      *(swift_allocObject() + 16) = v26;
      sub_1BA1107A8(0);
      sub_1BA11085C();
      v83 = v26;

      sub_1BA4A4F88();
    }

    v84 = [v26 navigationItem];
    v85 = sub_1BA35BDD4();
    [v84 setTitleView_];

    v86 = sub_1BA4A6758();
    v87 = [v26 hxui_addCancelButton];

    sub_1BA1E52C0(v81, type metadata accessor for SummarySharingSelectionFlow);
    __swift_destroy_boxed_opaque_existential_1(v102);
  }

  return v26;
}

Swift::Void __swiftcall SummarySharingDataTypeSelectionViewController.reloadAllDataSources()()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources);
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1BA4A7CC8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1 & 0xC000000000000001;
    v23 = v2;
    v24 = v1;
    do
    {
      if (v26)
      {
        v4 = MEMORY[0x1BFAF2860](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_12;
        }
      }

      v27 = v5;
      v6 = *(v4 + qword_1EDC84BB8);
      v7 = *(v6 + qword_1EDC84BB8);
      v8 = *(*v6 + 512);
      swift_beginAccess();
      v9 = *(v6 + v8);
      v10 = *(v6 + *(*v6 + 520));
      v11 = *(v6 + qword_1EDC64EB0);
      v12 = *(v6 + qword_1EDC64EB0 + 8);
      LOBYTE(v8) = *(v6 + qword_1EDC64EB0 + 16);

      v13 = v7;
      sub_1BA1E433C(v13, v9, v10, v11, v12, v8);
      v15 = v14;

      sub_1BA0E7F10(v15, 1);

      LOBYTE(v6) = *(v4 + *(*v4 + 520));
      v16 = *(v4 + qword_1EDC64EB0);
      v17 = *(v4 + qword_1EDC64EB0 + 8);
      LOBYTE(v10) = *(v4 + qword_1EDC64EB0 + 16);

      sub_1BA1E45B0(v18, v6, v16, v17, v10);
      v20 = v19;
      v1 = v24;

      sub_1BA0E7F10(v20, 1);

      ++v3;
    }

    while (v27 != v23);
  }

  v21 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  swift_beginAccess();
  if (*(v22 + v21))
  {

    sub_1BA10BB30(1);
  }
}

void sub_1BA1E091C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1BA4A6C58();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1BA1E5320();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000003FLL, 0x80000001BA4F3930);
    v11 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v11);

    MEMORY[0x1BFAF1350](46, 0xE100000000000000);
    sub_1BA4A8018();
    __break(1u);
  }
}

void sub_1BA1E0AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1BA4A6C58();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1BA1E5320();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000003FLL, 0x80000001BA4F3930);
    v11 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v11);

    MEMORY[0x1BFAF1350](46, 0xE100000000000000);
    sub_1BA4A8018();
    __break(1u);
  }
}

uint64_t sub_1BA1E0C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  sub_1BA4A6C58();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_1BA1E53D8(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v7 & 1;
      }

      __break(1u);
    }

    v7 = v15[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return v7 & 1;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000003FLL, 0x80000001BA4F3930);
  v14 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v14);

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA1E0DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BA4A6C58();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_1BA1E5394(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v15[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000003FLL, 0x80000001BA4F3930);
  v14 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v14);

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA1E0F9C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEDF20 = result;
  *algn_1EBBEDF28 = v1;
  return result;
}

void sub_1BA1E1048()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext;
  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext];
  sub_1B9FF1628(&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow], v6);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1BA1E52C0(v6, type metadata accessor for SummarySharingSelectionFlow);
  }

  else
  {
    v9 = *v6;
    swift_beginAccess();
    v10 = sub_1B9FEE484(v9, *(v8 + 40));
    if ((v11 & 1) == 0)
    {
      if (__OFADD__(v10, 1))
      {
        __break(1u);
      }

      else if (!__OFADD__(v10 + 1, 1))
      {
        *(&v33 + 1) = MEMORY[0x1E69E6530];
        *&v32 = v10 + 2;

        goto LABEL_6;
      }

      __break(1u);
      return;
    }
  }

  v32 = 0u;
  v33 = 0u;
LABEL_6:
  sub_1BA1E14A0(v34);
  v12 = sub_1BA4A6C68();
  v30 = v34[0];
  v29 = v34[1];
  MEMORY[0x1EEE9AC00](v12, v13);
  *(&v29 - 2) = v1;
  sub_1BA1E091C(sub_1BA1E4BC8, (&v29 - 2), "HealthExperienceUI/SummarySharingSetupDetailsAnalyticsEvent.swift", 65, 2u, 154);
  *&v35[16] = v29;
  *v35 = v30;
  sub_1B9FEEC64(ObjectType, &v32, 0, v35);

  sub_1B9FF3BFC(*v35, *&v35[8], *&v35[16], *&v35[24]);
  sub_1BA1E4BE4(&v32, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F23484);
  v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContact + 16];
  *v35 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContact];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthExperienceStore;
  v16 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthStore];
  *&v35[16] = v14;
  *&v35[32] = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContact + 32];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContactPhotoPublisher;
  v18 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContactPhotoPublisher];
  v19 = *&v1[v7];
  v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedDataTypesContext];

  v21 = sub_1BA1DFB90(&v1[v15], v16, v35, v18, v19, v20);

  if (!v21)
  {
    v22 = *v35;
    v34[0] = *&v35[8];
    v36[0] = *&v35[24];
    v23 = *&v1[v17];
    sub_1B9F0A534(&v1[v15], &v32);
    v24 = *&v1[v7];
    objc_allocWithZone(type metadata accessor for SummarySharingOnboardingKitSharingConfirmationViewController());
    v25 = v22;
    sub_1B9F87F44(v34, v31);
    sub_1B9F87F44(v36, v31);

    v26 = v16;

    v21 = sub_1BA313E58(v35, v23, v20, &v32, v26, v24);

    v27 = MEMORY[0x1E69E6158];
    v28 = MEMORY[0x1E69E6720];
    sub_1BA1E4BE4(v34, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1B9F23484);
    sub_1BA1E4BE4(v36, &qword_1EDC6E410, v27, v28, sub_1B9F23484);
  }

  [v1 showViewController:v21 sender:0];
}

void sub_1BA1E14A0(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9FF1628(&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow], v6);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BA1E52C0(v6, type metadata accessor for SummarySharingSelectionFlow);
LABEL_4:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 9;
    return;
  }

  v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext];
  v8 = *v6;
  swift_beginAccess();
  v9 = sub_1B9FEE484(v8, *(v7 + 40));
  if (v10)
  {
    goto LABEL_4;
  }

  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = v9 + 2;
  if (__OFADD__(v9 + 1, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  v12 = *(v7 + 24);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = [v1 title];
  if (v14)
  {
    v15 = v14;
    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *a1 = v11;
  a1[1] = v13;
  a1[2] = v16;
  a1[3] = v18;
}

void sub_1BA1E162C(void *a1@<X8>)
{
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF1628(&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlow], v6);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BA1E52C0(v6, type metadata accessor for SummarySharingSelectionFlow);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 9;
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlowContext];
    swift_beginAccess();
    v8 = *(v7 + 24);
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      v10 = [v1 title];
      if (v10)
      {
        v11 = v10;
        v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      *a1 = 1;
      a1[1] = v9;
      a1[2] = v12;
      a1[3] = v14;
    }
  }
}

double sub_1BA1E188C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthExperienceStore));

  sub_1BA1E52C0(v0 + OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);

  return result;
}

uint64_t sub_1BA1E1AB8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA1E1B24(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate;
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

double sub_1BA1E1BC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1BA1E1C2C()
{
  swift_beginAccess();

  return result;
}

double sub_1BA1E1C74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1BA1E1D2C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v86 = a6;
  v8 = a3;
  v90 = 0;
  v11 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v85 - v17;
  sub_1B9F23484(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5470;
  v89 = a1;
  sub_1B9F0A534(a1, v97);
  v87 = a5;
  sub_1B9FF1628(a5, v18);
  v93 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  v95 = 0u;
  memset(v96, 0, sizeof(v96));
  v94 = 0u;
  swift_allocObject();

  v20 = a2;
  v21 = MEMORY[0x1E69E7CC0];
  v91 = v8;
  v22 = a4;
  v23 = sub_1BA3094BC(v97, v20, MEMORY[0x1E69E7CC0], v8, a4, v18, MEMORY[0x1E69E7CC0], 0, 0, &v93, 1u);
  v88 = v20;

  *(v19 + 32) = v23;
  sub_1B9FF1628(v92, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA1E52C0(v14, type metadata accessor for SummarySharingSelectionFlow);
    }

    if ((v91 & 1) == 0)
    {

      v25 = objc_opt_self();
      v26 = [v25 categoryWithID_];
      v28 = v26;
      if (v26 && a4)
      {
        v93 = v26;
        MEMORY[0x1EEE9AC00](v26, v27);
        v83 = &v93;
        v29 = v28;
        v30 = v90;
        v31 = sub_1BA0117F8(sub_1BA1E54AC, &v81, a4);

        if (v31)
        {
          MEMORY[0x1EEE9AC00](v32, v33);
          v34 = v88;
          *(&v85 - 6) = v89;
          *(&v85 - 5) = v34;
          LOBYTE(v81) = 0;
          v82 = a4;
          v83 = v87;
          sub_1BA24F180(sub_1BA1E5264, (&v85 - 8), &unk_1F37FBED0);
          v19 = v35;

          return v19;
        }

        v90 = v30;
      }

      v49 = [v25 categoryWithID_];
      v51 = v49;
      if (v49 && a4 && (v93 = v49, MEMORY[0x1EEE9AC00](v49, v50), v83 = &v93, v52 = v51, v53 = sub_1BA0117F8(sub_1BA1E5218, &v81, a4), v52, (v53 & 1) != 0))
      {
        MEMORY[0x1EEE9AC00](v54, v55);
        v56 = v88;
        *(&v85 - 6) = v89;
        *(&v85 - 5) = v56;
        LOBYTE(v81) = 0;
        v82 = a4;
        v83 = v87;
        sub_1BA24F180(sub_1BA1E5238, (&v85 - 8), &unk_1F37FBEF8);
        v19 = v57;
      }

      else
      {
        sub_1B9F23484(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BA4B5460;
        *(inited + 32) = sub_1BA4A2178();
        *(inited + 40) = v75;
        v76 = sub_1BA4A2168();
        *(inited + 48) = v76;
        *(inited + 56) = v77;
        MEMORY[0x1EEE9AC00](v76, v77);
        v78 = v88;
        *(&v85 - 6) = v89;
        *(&v85 - 5) = v78;
        LOBYTE(v81) = 0;
        v82 = a4;
        v83 = v87;
        sub_1BA24A670(sub_1BA1E51F0, (&v85 - 8), inited);
        v19 = v79;

        swift_setDeallocating();
        swift_arrayDestroy();
      }
    }
  }

  else
  {
    v36 = v86;
    if (v86)
    {
      v37 = *v14 >> 6;
      if (v37 == 1)
      {

        v93 = v21;
        sub_1BA066CA4(0, 3, 0);
        v58 = v93;
        v60 = *(v93 + 16);
        v59 = *(v93 + 24);
        v61 = v59 >> 1;
        v62 = v60 + 1;
        v38 = v22;
        if (v59 >> 1 <= v60)
        {
          sub_1BA066CA4((v59 > 1), v60 + 1, 1);
          v58 = v93;
          v59 = *(v93 + 24);
          v61 = v59 >> 1;
        }

        *(v58 + 16) = v62;
        *(v58 + v60 + 32) = 64;
        v63 = v60 + 2;
        if (v61 < (v60 + 2))
        {
          sub_1BA066CA4((v59 > 1), v60 + 2, 1);
          v58 = v93;
          v59 = *(v93 + 24);
          v61 = v59 >> 1;
        }

        *(v58 + 16) = v63;
        *(v58 + v62 + 32) = 65;
        v64 = v60 + 3;
        if (v61 < v64)
        {
          sub_1BA066CA4((v59 > 1), v64, 1);
        }

        v45 = v93;
        *(v93 + 16) = v64;
        v47 = v45 + v63;
        v48 = 66;
      }

      else
      {
        if (v37)
        {
          return v19;
        }

        v38 = v22;

        v93 = v21;
        sub_1BA066CA4(0, 4, 0);
        v39 = v93;
        v18 = *(v93 + 16);
        v40 = *(v93 + 24);
        v41 = v40 >> 1;
        v42 = v18 + 1;
        if (v40 >> 1 <= v18)
        {
LABEL_45:
          sub_1BA066CA4((v40 > 1), v42, 1);
          v39 = v93;
          v40 = *(v93 + 24);
          v41 = v40 >> 1;
        }

        *(v39 + 16) = v42;
        *(v39 + v18 + 32) = 0;
        v43 = v18 + 2;
        if (v41 < (v18 + 2))
        {
          sub_1BA066CA4((v40 > 1), v18 + 2, 1);
          v39 = v93;
          v40 = *(v93 + 24);
          v41 = v40 >> 1;
        }

        *(v39 + 16) = v43;
        *(v39 + v42 + 32) = 1;
        v44 = v18 + 3;
        if (v41 < (v18 + 3))
        {
          sub_1BA066CA4((v40 > 1), v18 + 3, 1);
        }

        v45 = v93;
        *(v93 + 16) = v44;
        *(v45 + v43 + 32) = 2;
        v46 = *(v45 + 24);
        if ((v18 + 4) > (v46 >> 1))
        {
          sub_1BA066CA4((v46 > 1), v18 + 4, 1);
          v45 = v93;
        }

        *(v45 + 16) = v18 + 4;
        v47 = v45 + v44;
        v48 = 3;
      }

      *(v47 + 32) = v48;
      swift_beginAccess();
      v42 = *(v36 + 40);

      v65 = sub_1BA0243EC(v45);

      v36 = 0;
      v66 = *(v42 + 16);
      v67 = MEMORY[0x1E69E7CC0];
      while (v66 != v36)
      {
        v40 = *(v42 + 16);
        if (v36 >= v40)
        {
          __break(1u);
          goto LABEL_45;
        }

        v18 = *(v42 + v36++ + 32);
        if (sub_1BA3D31A8(v18, v65))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v97[0] = v67;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BA066CA4(0, *(v67 + 16) + 1, 1);
            v67 = v97[0];
          }

          v70 = *(v67 + 16);
          v69 = *(v67 + 24);
          if (v70 >= v69 >> 1)
          {
            sub_1BA066CA4((v69 > 1), v70 + 1, 1);
            v67 = v97[0];
          }

          *(v67 + 16) = v70 + 1;
          *(v67 + v70 + 32) = v18;
        }
      }

      MEMORY[0x1EEE9AC00](v71, v72);
      v81 = v89;
      v82 = v88;
      LOBYTE(v83) = v91 & 1;
      v84 = v38;
      sub_1BA24A584(sub_1BA1E51C8, (&v85 - 6), v67);
      v19 = v73;
    }
  }

  return v19;
}

void sub_1BA1E2660(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    SummarySharingDataTypeSelectionViewController.reloadAllDataSources()();
  }
}

void sub_1BA1E27A8()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v3 = v2;
  sub_1B9FF5A64();

  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
  if (v4 >> 62)
  {
LABEL_19:
    v5 = sub_1BA4A7CC8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v16 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v16)
      {
        MEMORY[0x1BFAF2860](v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      v8 = [v1 collectionView];
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1B9F43830(v10, v11);

      v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA162EA0(v12, v13);

      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA162E6C(v14, v15);

      sub_1B9FF51C4();
      sub_1B9FF51F8();
      sub_1B9FF522C();
      sub_1B9FF5260();
      sub_1B9FF5294();

      ++v6;
      if (v7 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
}

void sub_1BA1E2988()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 collectionView];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 setPreservesSuperviewLayoutMargins_];

  v6 = [v0 collectionView];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setAlwaysBounceVertical_];
}

void sub_1BA1E2A90()
{
  v1 = [v0 navigationItem];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_done];
  [v1 setRightBarButtonItem_];

  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories];
  if (!v3)
  {
    return;
  }

  if (v3 >> 62)
  {
    if (sub_1BA4A7CC8() != 1)
    {
      return;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return;
  }

  v4 = [v0 navigationItem];
  if (v3 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_6;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFAF2860](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(v3 + 32);
    }

    v6 = v5;
    v8 = [v5 displayName];

    v7 = v8;
    if (!v8)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v9 = sub_1BA4A6758();

      v7 = v9;
    }

    goto LABEL_13;
  }

  v7 = 0;
LABEL_13:
  v10 = v7;
  [v4 setTitle_];
}

id sub_1BA1E2C78()
{
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate];
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return [v0 dismissViewControllerAnimated:1 completion:{0, v13}];
  }

  v2 = *(v1 + 1);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  v4 = *&v0[v3];
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = v5[2];
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_6:
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(v7, ObjectType, v2);

    swift_unknownObjectRelease();
    return [v0 dismissViewControllerAnimated:1 completion:{0, v13}];
  }

  v13 = v2;
  v7 = sub_1BA0219CC(v6, 0);
  v8 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
  sub_1BA023688(&v15, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v5);
  v14 = v9;
  v10 = v15;

  result = sub_1B9F52E48(v10);
  if (v14 == v6)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id SummarySharingDataTypeSelectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

double sub_1BA1E2F50()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore));
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate);

  sub_1BA1E52C0(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);

  sub_1BA1E5348(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact + 8), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact + 16), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact + 24), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact + 32));

  return result;
}

id sub_1BA1E3038(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA1E31B4(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a4;
  v12 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_1B9F0A534(a2, v19);
  *v15 = a1;
  swift_storeEnumTagMultiPayload();
  v20 = a1;

  sub_1BA286428(v18);
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  swift_allocObject();
  v16 = a3;
  v17 = sub_1BA3094BC(v19, v16, MEMORY[0x1E69E7CC0], v7, a5, v15, MEMORY[0x1E69E7CC0], 0, 0, v18, 1u);

  *a6 = v17;
}

void sub_1BA1E330C(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v25 = a7;
  v13 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_1B9F0A534(a2, v30);
  sub_1B9FF1628(a6, v16);
  sub_1B9F23484(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      sub_1BA4A1FC8();
    }

    else
    {
      sub_1BA4A1F98();
    }
  }

  else if (v17)
  {
    sub_1BA4A1FA8();
  }

  else
  {
    sub_1BA4A1FD8();
  }

  sub_1BA4A27B8();
  v19 = sub_1BA4A2628();

  *(inited + 32) = v19;
  v30[63] = v17;
  v20 = sub_1BA286570();
  v22 = v21;
  v26 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  v28 = 0u;
  swift_allocObject();

  v23 = a3;
  v24 = sub_1BA3094BC(v30, v23, MEMORY[0x1E69E7CC0], a4 & 1, a5, v16, inited, v20, v22, &v26, 1u);

  *v25 = v24;
}

void sub_1BA1E351C(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v29 = a4;
  v13 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_1B9F0A534(a2, v28);
  sub_1B9FF1628(a6, v16);
  sub_1B9F23484(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  v26 = a7;
  if (v17)
  {
    if (v17 == 1)
    {
      sub_1BA4A21C8();
    }

    else
    {
      sub_1BA4A21A8();
    }
  }

  else
  {
    sub_1BA4A21B8();
  }

  sub_1BA4A27B8();
  v19 = sub_1BA4A2628();

  *(inited + 32) = v19;
  v31 = v17;
  v20 = sub_1BA2867D8();
  v22 = v21;
  v30 = v17;
  sub_1BA28691C(v27);
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  swift_allocObject();

  v23 = a3;
  v24 = sub_1BA3094BC(v28, v23, MEMORY[0x1E69E7CC0], v29 & 1, a5, v16, inited, v20, v22, v27, 1u);

  *v26 = v24;
}

void sub_1BA1E3724(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = a4;
  v26 = a7;
  v13 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  sub_1B9F0A534(a2, v31);
  sub_1B9FF1628(a6, v16);
  sub_1B9F23484(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  sub_1BA4A27B8();

  *(inited + 32) = sub_1BA4A2628();
  v20 = sub_1BA1E4FCC(v18, v17);
  v22 = v21;
  v27 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  memset(v30, 0, sizeof(v30));
  v28 = 0u;
  v29 = 0u;
  swift_allocObject();
  v23 = a3;
  v24 = sub_1BA3094BC(v31, v23, MEMORY[0x1E69E7CC0], v9, a5, v16, inited, v20, v22, &v27, 1u);

  *v26 = v24;
}

void sub_1BA1E3910(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  sub_1BA1E541C(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v42 - v6;
  v8 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_);
  type metadata accessor for CompoundDataSourceCollectionViewController();
  if (!swift_dynamicCastClass())
  {
    v22 = 7;
    goto LABEL_37;
  }

  v42[1] = v2;
  v42[0] = v8;
  sub_1B9F23FB0();
  v9 = sub_1BA1F6A1C();

  v44 = *(v9 + 16);
  if (!v44)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v23 = v12[2];
    if (v23)
    {
      v24 = 0;
      v25 = (v12 + 4);
      v26 = MEMORY[0x1E69E7CC0];
      v44 = v12[2];
      while (1)
      {
        if (v24 >= v12[2])
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        sub_1B9F0A534(v25, v48);
        sub_1B9F0A534(v48, v45);
        sub_1B9F32244();
        v27 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
        v28 = swift_dynamicCast();
        v29 = *(*(v27 - 8) + 56);
        if (v28)
        {
          v29(v7, 0, 1, v27);
          v30 = v7[49];
          sub_1BA1E52C0(v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
          if (v30)
          {
            sub_1B9F25598(v48, v45);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v49 = v26;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1BA066B80(0, *(v26 + 16) + 1, 1);
              v26 = v49;
            }

            v33 = *(v26 + 16);
            v32 = *(v26 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_1BA066B80((v32 > 1), v33 + 1, 1);
            }

            v34 = v46;
            v35 = v47;
            v36 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
            v37 = MEMORY[0x1EEE9AC00](v36, v36);
            v39 = v42 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v40 + 16))(v39, v37);
            sub_1BA1F2854(v33, v39, &v49, v34, v35);
            __swift_destroy_boxed_opaque_existential_1(v45);
            v26 = v49;
            v23 = v44;
            goto LABEL_26;
          }
        }

        else
        {
          v29(v7, 1, 1, v27);
          sub_1BA1E4BE4(v7, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1BA1E541C);
        }

        __swift_destroy_boxed_opaque_existential_1(v48);
LABEL_26:
        ++v24;
        v25 += 40;
        if (v23 == v24)
        {
          goto LABEL_36;
        }
      }
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_36:

    v41 = *(v26 + 16);

    v22 = v41 == 0;
LABEL_37:
    *v43 = v22;
    return;
  }

  v10 = 0;
  v11 = v9 + 48;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_39;
    }

    v13 = *v11;
    v14 = *(*v11 + 16);
    v15 = v12[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    v17 = swift_isUniquelyReferenced_nonNull_native();
    if (v17 && v16 <= v12[3] >> 1)
    {
      if (!*(v13 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v12 = sub_1B9F281E8(v17, v18, 1, v12);
      if (!*(v13 + 16))
      {
LABEL_4:

        if (v14)
        {
          goto LABEL_41;
        }

        goto LABEL_5;
      }
    }

    if ((v12[3] >> 1) - v12[2] < v14)
    {
      goto LABEL_42;
    }

    sub_1B9F32244();
    swift_arrayInitWithCopy();

    if (v14)
    {
      v19 = v12[2];
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (v20)
      {
        goto LABEL_43;
      }

      v12[2] = v21;
    }

LABEL_5:
    ++v10;
    v11 += 48;
    if (v44 == v10)
    {
      goto LABEL_22;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_1BA1E3E14(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  sub_1BA1E541C(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v40 - v6;
  v8 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_);
  type metadata accessor for CompoundDataSourceCollectionViewController();
  if (!swift_dynamicCastClass())
  {
    v22 = 7;
LABEL_37:
    *v41 = v22;
    return;
  }

  v40[1] = v2;
  v40[0] = v8;
  sub_1B9F23FB0();
  v9 = sub_1BA1F6A1C();

  v42 = *(v9 + 16);
  if (v42)
  {
    v10 = 0;
    v11 = v9 + 48;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_39;
      }

      v13 = *v11;
      v14 = *(*v11 + 16);
      v15 = v12[2];
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_40;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v16 <= v12[3] >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v18 = v15 + v14;
        }

        else
        {
          v18 = v15;
        }

        v12 = sub_1B9F281E8(isUniquelyReferenced_nonNull_native, v18, 1, v12);
        if (!*(v13 + 16))
        {
LABEL_4:

          if (v14)
          {
            goto LABEL_41;
          }

          goto LABEL_5;
        }
      }

      if ((v12[3] >> 1) - v12[2] < v14)
      {
        goto LABEL_42;
      }

      sub_1B9F32244();
      swift_arrayInitWithCopy();

      if (v14)
      {
        v19 = v12[2];
        v20 = __OFADD__(v19, v14);
        v21 = v19 + v14;
        if (v20)
        {
          goto LABEL_43;
        }

        v12[2] = v21;
      }

LABEL_5:
      ++v10;
      v11 += 48;
      if (v42 == v10)
      {
        goto LABEL_22;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_22:

  v23 = v12[2];
  if (!v23)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_36:

    v39 = *(v26 + 16);

    v22 = v39 == 0;
    goto LABEL_37;
  }

  v24 = 0;
  v25 = (v12 + 4);
  v26 = MEMORY[0x1E69E7CC0];
  v42 = v12[2];
  while (v24 < v12[2])
  {
    sub_1B9F0A534(v25, v46);
    sub_1B9F0A534(v46, v43);
    sub_1B9F32244();
    v27 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
    if (swift_dynamicCast())
    {
      (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
      v28 = v7[49];
      sub_1BA1E52C0(v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v28)
      {
        sub_1B9F25598(v46, v43);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v26;
        if ((v29 & 1) == 0)
        {
          sub_1BA066B80(0, *(v26 + 16) + 1, 1);
          v26 = v47;
        }

        v31 = *(v26 + 16);
        v30 = *(v26 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1BA066B80((v30 > 1), v31 + 1, 1);
        }

        v32 = v44;
        v33 = v45;
        v34 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
        v35 = MEMORY[0x1EEE9AC00](v34, v34);
        v37 = v40 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v38 + 16))(v37, v35);
        sub_1BA1F2854(v31, v37, &v47, v32, v33);
        __swift_destroy_boxed_opaque_existential_1(v43);
        v26 = v47;
        v23 = v42;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v46);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v46);
      (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
      sub_1BA1E4BE4(v7, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1BA1E541C);
    }

    ++v24;
    v25 += 40;
    if (v23 == v24)
    {
      goto LABEL_36;
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
}

void sub_1BA1E433C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5, char a6)
{
  v9 = a3;
  v40 = a2;
  v10 = sub_1B9F18214();
  v12 = v10;
  if (a6)
  {
    if (a6 == 1)
    {
      MEMORY[0x1EEE9AC00](v10, v11);
      v31 = a4;
      v32 = a5;
      v33 = &v40;
      v13 = sub_1BA2F4270(sub_1BA15D290, v30, v12);
      v35 = 0;

      v14 = 0;
      v15 = *(v13 + 2);
      v16 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v17 = &v13[48 * v14 + 16];
      while (v15 != v14)
      {
        if (v14 >= *(v13 + 2))
        {
          __break(1u);
          return;
        }

        ++v14;
        v18 = (v17 + 48);
        v19 = *(v17 + 32);
        v17 += 48;
        if (*(v19 + 16))
        {
          v20 = *(v18 - 3);
          v36 = *(v18 - 4);
          v21 = *(v18 - 1);
          v22 = *v18;
          v23 = v18[1];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v21;
          v39 = v16;
          v37 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B9F277B0(0, *(v16 + 16) + 1, 1);
            v16 = v39;
          }

          v26 = *(v16 + 16);
          v25 = *(v16 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1B9F277B0((v25 > 1), v26 + 1, 1);
            v16 = v39;
          }

          *(v16 + 16) = v26 + 1;
          v27 = (v16 + 48 * v26);
          v27[4] = v36;
          v27[5] = v20;
          v28 = v37;
          v29 = v38;
          v27[6] = v19;
          v27[7] = v29;
          v27[8] = v28;
          v27[9] = v23;
          goto LABEL_4;
        }
      }
    }

    else
    {
      a4(v10, &v40);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10, v11);
    v31 = a4;
    v32 = a5;
    v33 = &v40;
    v34 = v9 & 1;
    sub_1BA2F4270(sub_1BA1E5488, v30, v12);
  }
}

void sub_1BA1E45B0(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, char a5)
{
  v7 = sub_1BA1F99B4();
  v67 = v7;
  if (a5)
  {
    if (a5 != 1)
    {
      a3();

      return;
    }

    v65 = *(v7 + 16);
    if (v65)
    {
      v8 = 0;
      v9 = (v7 + 72);
      v10 = MEMORY[0x1E69E7CC0];
      while (v8 < *(v7 + 16))
      {
        v11 = *(v9 - 1);
        v12 = *v9;
        v14 = *(v9 - 3);
        v13 = *(v9 - 2);
        v15 = *(v9 - 4);
        v73[0] = *(v9 - 5);
        v73[1] = v15;
        v73[2] = v14;
        v73[3] = v13;
        v73[4] = v11;
        v73[5] = v12;

        (a3)(v74, v73);

        v16 = v74[0];
        v17 = v74[1];
        v69 = v75;
        v18 = v76;
        v19 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B9F21540(0, *(v10 + 2) + 1, 1, v10);
        }

        v21 = *(v10 + 2);
        v20 = *(v10 + 3);
        if (v21 >= v20 >> 1)
        {
          v10 = sub_1B9F21540((v20 > 1), v21 + 1, 1, v10);
        }

        ++v8;
        *(v10 + 2) = v21 + 1;
        v22 = &v10[48 * v21];
        *(v22 + 4) = v16;
        *(v22 + 5) = v17;
        *(v22 + 3) = v69;
        *(v22 + 8) = v18;
        *(v22 + 9) = v19;
        v9 += 6;
        v7 = v67;
        if (v65 == v8)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_63;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v44 = 0;
    v45 = *(v10 + 2);
    v46 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v47 = &v10[48 * v44 + 16];
    while (v45 != v44)
    {
      if (v44 >= *(v10 + 2))
      {
        goto LABEL_62;
      }

      ++v44;
      v48 = (v47 + 48);
      v49 = *(v47 + 32);
      v47 += 48;
      if (*(v49 + 16))
      {
        v50 = *(v48 - 3);
        v68 = *(v48 - 4);
        v51 = *(v48 - 1);
        v52 = *v48;
        v53 = v48[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74[0] = v46;
        v72 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B9F277B0(0, *(v46 + 16) + 1, 1);
          v46 = v74[0];
        }

        v56 = *(v46 + 16);
        v55 = *(v46 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_1B9F277B0((v55 > 1), v56 + 1, 1);
          v46 = v74[0];
        }

        *(v46 + 16) = v56 + 1;
        v57 = (v46 + 48 * v56);
        v57[4] = v68;
        v57[5] = v50;
        v57[6] = v49;
        v57[7] = v72;
        v57[8] = v52;
        v57[9] = v53;
        goto LABEL_47;
      }
    }

    goto LABEL_56;
  }

  v63 = *(v7 + 16);
  if (!v63)
  {
LABEL_56:

    return;
  }

  v23 = 0;
  v62 = v7 + 32;
  v58 = MEMORY[0x1E69E7CC0];
  v61 = a2;
  while (1)
  {
    if (v23 >= *(v7 + 16))
    {
      goto LABEL_64;
    }

    v66 = v23;
    v24 = (v62 + 48 * v23);
    v25 = v24[2];
    v26 = v24[5];
    v59 = v24[4];
    v60 = *v24;
    v27 = *(v25 + 16);
    v64 = v24[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v70 = v26;
    swift_bridgeObjectRetain_n();
    if (v27)
    {
      break;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v23 = v66 + 1;

    v40 = Array<A>.identifierToIndexDict()(v30);

    if (v30[2] || (v61 & 1) != 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1B9F21540(0, *(v58 + 2) + 1, 1, v58);
      }

      v42 = *(v58 + 2);
      v41 = *(v58 + 3);
      if (v42 >= v41 >> 1)
      {
        v58 = sub_1B9F21540((v41 > 1), v42 + 1, 1, v58);
      }

      v7 = v67;
      *(v58 + 2) = v42 + 1;
      v43 = &v58[48 * v42];
      *(v43 + 4) = v60;
      *(v43 + 5) = v64;
      *(v43 + 6) = v30;
      *(v43 + 7) = v40;
      *(v43 + 8) = v59;
      *(v43 + 9) = v70;
      if (v23 == v63)
      {
        goto LABEL_56;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      v7 = v67;
      if (v23 == v63)
      {
        goto LABEL_56;
      }
    }
  }

  v28 = 0;
  v29 = v25 + 32;
  v30 = MEMORY[0x1E69E7CC0];
  while (v28 < *(v25 + 16))
  {
    sub_1B9F0A534(v29, v74);
    v31 = (a3)(v74);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v32 = *(v31 + 16);
    v33 = v30[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_58;
    }

    v35 = swift_isUniquelyReferenced_nonNull_native();
    if ((v35 & 1) != 0 && v34 <= v30[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v30 = sub_1B9F281E8(v35, v36, 1, v30);
      if (*(v31 + 16))
      {
LABEL_29:
        if ((v30[3] >> 1) - v30[2] < v32)
        {
          goto LABEL_60;
        }

        sub_1B9F32244();
        swift_arrayInitWithCopy();

        if (v32)
        {
          v37 = v30[2];
          v38 = __OFADD__(v37, v32);
          v39 = v37 + v32;
          if (v38)
          {
            goto LABEL_61;
          }

          v30[2] = v39;
        }

        goto LABEL_18;
      }
    }

    if (v32)
    {
      goto LABEL_59;
    }

LABEL_18:
    ++v28;
    v29 += 40;
    if (v27 == v28)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t sub_1BA1E4BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA1E4C8C(uint64_t a1)
{
  result = type metadata accessor for SummarySharingSelectionFlow(319);
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

uint64_t sub_1BA1E4D70(uint64_t a1)
{
  result = type metadata accessor for SummarySharingSelectionFlow(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1BA1E4FCC(uint64_t a1, uint64_t a2)
{
  if (sub_1BA4A2178() == a1 && v4 == a2)
  {

    goto LABEL_5;
  }

  v5 = sub_1BA4A8338();

  if (v5)
  {
LABEL_5:
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

LABEL_14:
    swift_once();
    return sub_1BA4A1318();
  }

  if (sub_1BA4A2168() == a1 && v7 == a2)
  {

    goto LABEL_11;
  }

  v8 = sub_1BA4A8338();

  if (v8)
  {
LABEL_11:
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1BA1E52C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1BA1E5348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  return result;
}

void *sub_1BA1E5394@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_1BA1E53D8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_1BA1E541C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *SharedProfileOverviewViewController.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3)
{
  type metadata accessor for ProfileGradientsProviderFactory();
  swift_initStaticObject();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1BA4A1B68();
  v7 = sub_1B9FE10EC(a1, v6, MEMORY[0x1E69E7CC0]);

  sub_1B9F0A534(a2, v12);
  sub_1B9F0A534(a3, v11);
  v8 = objc_allocWithZone(type metadata accessor for SharedProfileOverviewViewController());
  v9 = sub_1BA1E87F4(a1, v12, v7, v11);

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v9;
}

void sub_1BA1E55E4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA1E5644()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA1E5698(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA1E57DC@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1BA1E5830(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BA1E58E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(_BYTE *, uint64_t))
{
  sub_1B9F0A534(a1, v12);
  v9 = *a2;
  v10 = *a5;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v9 + v10));
  a6(v12, v9 + v10);
  return swift_endAccess();
}